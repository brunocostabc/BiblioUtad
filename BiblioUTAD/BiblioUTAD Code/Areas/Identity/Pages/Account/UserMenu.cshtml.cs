using BiblioUTAD.Data;
using BiblioUTAD.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BiblioUTAD.Areas.Identity.Pages.Account
{
    public class UserMenuModel : PageModel
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly ApplicationDbContext _context;

        public UserMenuModel(UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _context = context;
        }

        [BindProperty]
        [Required(ErrorMessage = "O nome é obrigatório.")]
        [StringLength(100, ErrorMessage = "O nome deve ter no máximo 100 caracteres.")]
        public string UserName { get; set; }

        [BindProperty]
        public string Email { get; set; }

        [BindProperty]
        [Required(ErrorMessage = "A palavra-passe atual é obrigatória.")]
        public string CurrentPassword { get; set; }

        [BindProperty]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "A nova palavra-passe deve ter pelo menos 3 caracteres.")]
        public string NewPassword { get; set; }

        [BindProperty]
        [Phone(ErrorMessage = "O número de telefone não é válido.")]
        public string PhoneNumber { get; set; }

        // Lista para armazenar os empréstimos do utilizador logado
        public List<Emprestimo> Emprestimos { get; set; }

        // Propriedades para paginação
        [BindProperty(SupportsGet = true)]
        public int PageNumber { get; set; } = 1;

        public int PageSize { get; set; } = 3;
        public int TotalPages { get; set; }

        public async Task<IActionResult> OnGetAsync()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return RedirectToPage("/Account/Login");
            }

            UserName = user.UserName;
            Email = user.Email;
            PhoneNumber = user.PhoneNumber;

            var query = _context.Emprestimos
                                .Include(e => e.Livro)
                                .Where(e => e.UserId == user.Id);

            query = query.OrderByDescending(e =>
                !e.Devolvido && e.DataDevolucao.HasValue && e.DataDevolucao.Value < DateTime.Now) // Livros em Atraso
                .ThenByDescending(e => !e.Devolvido && (!e.DataDevolucao.HasValue || e.DataDevolucao.Value >= DateTime.Now)) // Livros em Utilização
                .ThenByDescending(e => e.Devolvido); // Livros Entregues

            // Paginação
            TotalPages = (int)Math.Ceiling(await query.CountAsync() / (double)PageSize);
            Emprestimos = await query
                .Skip((PageNumber - 1) * PageSize)
                .Take(PageSize)
                .ToListAsync();

            return Page();
        }

        public async Task<IActionResult> OnPostDeleteAsync(int id)
        {
            var emprestimo = await _context.Emprestimos.FindAsync(id);

            // Permitir exclusão apenas se o empréstimo tiver uma DataDevolucao (considerado devolvido)
            if (emprestimo != null && emprestimo.DataDevolucao != null)
            {
                _context.Emprestimos.Remove(emprestimo);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage(new { PageNumber });
        }

        public async Task<IActionResult> OnPostAsync()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return RedirectToPage("/Account/Login");
            }

            // Verificar Palavra-Passe Atual para Alterações
            if (string.IsNullOrEmpty(CurrentPassword) || !await _userManager.CheckPasswordAsync(user, CurrentPassword))
            {
                ModelState.AddModelError("CurrentPassword", "A palavra-passe atual está incorreta.");
                return Page();
            }

            bool updated = false;

            // Atualizar Nome
            if (!string.IsNullOrEmpty(UserName) && user.UserName != UserName)
            {
                user.UserName = UserName;
                updated = true;
            }

            // Atualizar Número de Telefone
            if (!string.IsNullOrEmpty(PhoneNumber) && user.PhoneNumber != PhoneNumber)
            {
                user.PhoneNumber = PhoneNumber;
                updated = true;
            }

            // Validar e Atualizar Nova Palavra-Passe
            if (!string.IsNullOrWhiteSpace(NewPassword))
            {
                var passwordValidator = new PasswordValidator<IdentityUser>();
                var passwordValidationResult = await passwordValidator.ValidateAsync(_userManager, user, NewPassword);
                if (!passwordValidationResult.Succeeded)
                {
                    foreach (var error in passwordValidationResult.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }
                    return Page();
                }

                var token = await _userManager.GeneratePasswordResetTokenAsync(user);
                var resetResult = await _userManager.ResetPasswordAsync(user, token, NewPassword);
                if (!resetResult.Succeeded)
                {
                    foreach (var error in resetResult.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }
                    return Page();
                }

                updated = true;
            }

            if (updated)
            {
                var updateResult = await _userManager.UpdateAsync(user);
                if (!updateResult.Succeeded)
                {
                    foreach (var error in updateResult.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }
                    return Page();
                }

                await _signInManager.RefreshSignInAsync(user);
                TempData["SuccessMessage"] = "Alterações salvas com sucesso!";
            }

            return Page();
        }
    }
}
