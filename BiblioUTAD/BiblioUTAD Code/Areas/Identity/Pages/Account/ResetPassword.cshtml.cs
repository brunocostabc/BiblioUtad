using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.WebUtilities;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BiblioUTAD.Areas.Identity.Pages.Account
{
    public class ResetPasswordModel : PageModel
    {
        private readonly UserManager<IdentityUser> _userManager;

        public ResetPasswordModel(UserManager<IdentityUser> userManager)
        {
            _userManager = userManager;
        }

        [BindProperty]
        public InputModel Input { get; set; }

        public class InputModel
        {
            [Required]
            public string Code { get; set; } // Código enviado pelo link

            [Required]
            [StringLength(100, MinimumLength = 3, ErrorMessage = "A Palavra-Passe deve ter no mínimo 3 caracteres.")]
            [DataType(DataType.Password)]
            public string Password { get; set; }

            [DataType(DataType.Password)]
            [Compare("Password", ErrorMessage = "As palavras-passe não coincidem.")]
            public string ConfirmPassword { get; set; }
        }


        public async Task<IActionResult> OnPostAsync(string email)
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            var user = await _userManager.FindByEmailAsync(email);
            if (user == null)
            {
                return RedirectToPage("./ResetPasswordConfirmation");
            }

            try
            {
                var decodedCode = Encoding.UTF8.GetString(WebEncoders.Base64UrlDecode(Input.Code));
                var result = await _userManager.ResetPasswordAsync(user, decodedCode, Input.Password);

                if (result.Succeeded)
                {
                    return RedirectToPage("./ResetPasswordConfirmation");
                }

                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, "Invalid token."); // Token inválido ou corrompido
            }

            return Page();
        }


        public IActionResult OnGet(string code = null, string email = null)
        {
            if (string.IsNullOrEmpty(code) || string.IsNullOrEmpty(email))
            {
                return BadRequest("Código e e-mail são obrigatórios para redefinir a Palavra-Passe.");
            }

            Input = new InputModel
            {
                Code = code // Armazena o código para uso posterior
            };

            ViewData["Email"] = email; // Armazena o e-mail para o método OnPostAsync
            return Page();
        }
    }
}
