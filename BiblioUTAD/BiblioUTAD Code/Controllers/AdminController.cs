using BiblioUTAD.Models;
using BiblioUTAD.Data;
using MailKit.Search;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BiblioUTAD.Controllers
{
    [Authorize(Roles = "Administrador")]
    public class AdminController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public AdminController(
            UserManager<IdentityUser> userManager,
            RoleManager<IdentityRole> roleManager)
        {
            _userManager = userManager;
            _roleManager = roleManager;
        }

        public IActionResult Requisicoes()
        {
            return View("~/Views/Shared/Requisicoes.cshtml");
        }

        public IActionResult Catalogo()
        {
            return View("~/Views/Shared/Catalogo.cshtml");
        }

        [HttpGet]
        public IActionResult CriarAdministrador()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CriarAdministrador(CriarAdminViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            // Gerar o email automaticamente com base no nome
            var email = $"{model.Nome.ToLower()}@adminbiblioutad.com";
            var user = new IdentityUser
            {
                UserName = model.Nome,
                Email = email,
                EmailConfirmed = true
            };

            var result = await _userManager.CreateAsync(user, model.Password);
            if (result.Succeeded)
            {
                if (!await _roleManager.RoleExistsAsync("Administrador"))
                {
                    await _roleManager.CreateAsync(new IdentityRole("Administrador"));
                }

                await _userManager.AddToRoleAsync(user, "Administrador");
                return RedirectToAction("Utilizadores");
            }

            foreach (var error in result.Errors)
            {
                ModelState.AddModelError(string.Empty, error.Description);
            }

            return View(model);
        }


        // Listar utilizadores e os seus cargos
        public async Task<IActionResult> Utilizadores(string searchTerm, string orderBy)
        {
            var users = _userManager.Users.ToList();

            // Filtrar Utilizador por nome, se o termo de pesquisa for fornecido
            if (!string.IsNullOrEmpty(searchTerm))
            {
                users = users.Where(u => u.UserName.Contains(searchTerm, StringComparison.OrdinalIgnoreCase)).ToList();
            }

            // Ordenar alfabeticamente
            if (orderBy == "asc")
            {
                users = users.OrderBy(u => u.UserName).ToList();
            }
            else if (orderBy == "desc")
            {
                users = users.OrderByDescending(u => u.UserName).ToList();
            }

            var usersWithRoles = new List<UserWithRolesViewModel>();

            foreach (var user in users)
            {
                var roles = await _userManager.GetRolesAsync(user);
                usersWithRoles.Add(new UserWithRolesViewModel
                {
                    User = user,
                    Role = roles.FirstOrDefault(),
                    IsEmailConfirmed = user.EmailConfirmed,
                    PhoneNumber = user.PhoneNumber
                });
            }

            if (Request.Headers["X-Requested-With"] == "XMLHttpRequest")
            {
                return PartialView("_UserTablePartial", usersWithRoles);
            }

            ViewBag.CurrentOrderBy = orderBy;
            return View(usersWithRoles);
        }

        public class UserWithRolesViewModel
        {
            public IdentityUser User { get; set; }
            public string Role { get; set; }
            public bool IsEmailConfirmed { get; set; }
            public string PhoneNumber { get; set; }
        }

        [HttpPost]
        public async Task<IActionResult> Eliminar(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return BadRequest("ID inválido.");
            }

            var user = await _userManager.FindByIdAsync(id);
            if (user == null)
            {
                return NotFound("Utilizador não encontrado.");
            }

            try
            {
                // Obter o contexto da aplicação
                var dbContext = HttpContext.RequestServices.GetService<ApplicationDbContext>();

                // Obter empréstimos do utilizador
                var emprestimos = dbContext.Emprestimos.Where(e => e.UserId == id).ToList();

                foreach (var emprestimo in emprestimos)
                {
                    // Devolver automaticamente os livros emprestados
                    var livro = dbContext.Livros.FirstOrDefault(l => l.Id == emprestimo.LivroId);
                    if (livro != null)
                    {
                        livro.NumeroExemplares++; 
                    }

                    dbContext.Emprestimos.Remove(emprestimo); 
                }

                // Salvar alterações no banco de dados (devolver livros e remover empréstimos)
                await dbContext.SaveChangesAsync();

                // Eliminar o utilizador
                var result = await _userManager.DeleteAsync(user);
                if (!result.Succeeded)
                {
                    foreach (var error in result.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }

                    return RedirectToAction("Utilizadores");
                }

                TempData["SuccessMessage"] = "Utilizador eliminado com sucesso!";
                return RedirectToAction("Utilizadores");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao eliminar utilizador: {ex.Message}");
                ModelState.AddModelError(string.Empty, "Ocorreu um erro ao eliminar o utilizador.");
                return RedirectToAction("Utilizadores");
            }
        }

        [HttpGet]
        public async Task<IActionResult> EditarUtilizador(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return BadRequest("ID inválido.");
            }

            var user = await _userManager.FindByIdAsync(id);
            if (user == null)
            {
                return NotFound("Utilizador não encontrado.");
            }

            // Obter o motivo do bloqueio (Shadow Property)
            var dbContext = HttpContext.RequestServices.GetService<ApplicationDbContext>();
            var blockedReason = dbContext.Entry(user).Property<string>("BlockedReason").CurrentValue;

            var roles = await _userManager.GetRolesAsync(user);

            var model = new EditUserViewModel
            {
                Id = user.Id,
                UserName = user.UserName,
                Email = user.Email,
                Role = roles.FirstOrDefault(),
                IsEmailConfirmed = user.EmailConfirmed,
                PhoneNumber = string.IsNullOrWhiteSpace(user.PhoneNumber) ? "Não Disponível" : user.PhoneNumber,
                BlockedReason = string.IsNullOrWhiteSpace(blockedReason) ? "Foi Bloqueado porque" : blockedReason
            };

            return View(model);
        }

        public class EditUserViewModel
        {
            public string Id { get; set; }
            public string UserName { get; set; }
            public string Email { get; set; }
            public string Role { get; set; }
            public bool IsEmailConfirmed { get; set; }
            public string PhoneNumber { get; set; }

            [Display(Name = "Motivo do Bloqueio")]
            public string BlockedReason { get; set; } = "Foi Bloqueado porque...";
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> EditarUtilizador(EditUserViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            // Procurar o utilizador no banco de dados
            var user = await _userManager.FindByIdAsync(model.Id);
            if (user == null)
            {
                ModelState.AddModelError(string.Empty, "Utilizador não encontrado.");
                return View(model);
            }

            try
            {
                // Atualizar informações básicas
                if (user.UserName != model.UserName)
                {
                    user.UserName = model.UserName;
                }

                // Atualizar cargo (Role)
                var currentRoles = await _userManager.GetRolesAsync(user);
                if (currentRoles.Count > 0)
                {
                    await _userManager.RemoveFromRolesAsync(user, currentRoles); // Remover cargos antigos
                }

                if (!string.IsNullOrWhiteSpace(model.Role))
                {
                    await _userManager.AddToRoleAsync(user, model.Role); // Adicionar novo cargo
                }

                // Obter o DbContext para Shadow Properties
                var dbContext = HttpContext.RequestServices.GetService<ApplicationDbContext>();

                if (model.IsEmailConfirmed != user.EmailConfirmed)
                {
                    if (model.IsEmailConfirmed) // Conta ativa
                    {
                        user.LockoutEnd = null;
                        user.LockoutEnabled = false;
                        user.EmailConfirmed = true;

                        // Limpar motivo do bloqueio
                        dbContext.Entry(user).Property("BlockedReason").CurrentValue = null;
                    }
                    else // Conta bloqueada
                    {
                        user.LockoutEnd = DateTimeOffset.MaxValue;
                        user.LockoutEnabled = true;
                        user.EmailConfirmed = false;

                        // Guardar motivo do bloqueio (permitir nulo)
                        dbContext.Entry(user).Property("BlockedReason").CurrentValue = string.IsNullOrWhiteSpace(model.BlockedReason) ? null : model.BlockedReason;
                    }
                }

                // Atualizar utilizador no banco de dados
                var updateResult = await _userManager.UpdateAsync(user);
                if (!updateResult.Succeeded)
                {
                    foreach (var error in updateResult.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }
                    return View(model);
                }

                // Guardar alterações no banco de dados
                await dbContext.SaveChangesAsync();

                TempData["SuccessMessage"] = "Utilizador atualizado com sucesso!";
                return RedirectToAction("Utilizadores");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, "Ocorreu um erro ao tentar atualizar o utilizador.");
                return View(model);
            }
        }

        // Verifica se o Utilizador atual é administrador
        public bool IsAdmin()
        {
            var userId = _userManager.GetUserId(User);
            var roles = _userManager.GetRolesAsync(_userManager.Users.FirstOrDefault(u => u.Id == userId)).Result;

            return roles.Contains("Administrador");
        }

        public IActionResult MenuAdmin()
        {
            // Obter os dados do ApplicationDbContext
            var dbContext = HttpContext.RequestServices.GetService<ApplicationDbContext>();

            // Total de Livros
            ViewData["TotalLivros"] = dbContext.Livros.Count();

            // Livros Requisitados (ainda não devolvidos)
            ViewData["LivrosRequisitados"] = dbContext.Emprestimos.Count(e => !e.Devolvido);

            // Livros em Atraso (não devolvidos e com data de devolução no passado)
            ViewData["LivrosAtrasados"] = dbContext.Emprestimos.Count(e => !e.Devolvido && e.DataDevolucao < DateTime.Now);

            // Total de Utilizadores
            ViewData["TotalUtilizadores"] = dbContext.Users.Count();

            return View();
        }
    }
}
