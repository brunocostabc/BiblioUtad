using BiblioUTAD.Controllers;
using BiblioUTAD.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using static BiblioUTAD.Controllers.AdminController;

namespace BiblioUTAD.Controllers
{
    [Authorize(Roles = "Bibliotecario")]
    public class BibliotecarioController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public BibliotecarioController(
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
                    IsEmailConfirmed = user.EmailConfirmed
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
        }

        public bool IsBibliotecario()
        {
            var userId = _userManager.GetUserId(User);
            var roles = _userManager.GetRolesAsync(_userManager.Users.FirstOrDefault(u => u.Id == userId)).Result;

            return roles.Contains("Bibliotecario");
        }

        public IActionResult MenuBibliotecario()
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
