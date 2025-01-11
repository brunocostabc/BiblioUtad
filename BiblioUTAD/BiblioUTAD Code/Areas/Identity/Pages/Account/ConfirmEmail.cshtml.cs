using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.WebUtilities;
using System.Text;

namespace BiblioUTAD.Areas.Identity.Pages.Account
{
    [AllowAnonymous]
    public class ConfirmEmailModel : PageModel
    {
        private readonly UserManager<IdentityUser> _userManager;

        public ConfirmEmailModel(UserManager<IdentityUser> userManager)
        {
            _userManager = userManager;
        }

        [BindProperty]
        public string Email { get; set; }

        public string StatusMessage { get; set; }

        public async Task<IActionResult> OnGetAsync(string userId, string code)
        {
            if (string.IsNullOrEmpty(userId) || string.IsNullOrEmpty(code))
            {
                StatusMessage = "Parâmetros inválidos para confirmação de e-mail.";
                return Page();
            }

            // Decodifica o código de confirmação
            var decodedCode = Encoding.UTF8.GetString(WebEncoders.Base64UrlDecode(code));
            var user = await _userManager.FindByIdAsync(userId);

            if (user == null)
            {
                StatusMessage = "Erro: Utilizador não encontrado.";
                return Page();
            }

            // Confirma o e-mail do Utilizador
            var result = await _userManager.ConfirmEmailAsync(user, decodedCode);

            if (result.Succeeded)
            {
                StatusMessage = "E-mail confirmado com sucesso! Pode fazer login agora.";
                return RedirectToPage("/Account/Login");
            }
            else
            {
                StatusMessage = "Erro ao confirmar o e-mail. O link pode estar expirado ou já utilizado.";
                return Page();
            }
        }
    }
}
