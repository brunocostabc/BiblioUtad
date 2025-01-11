using BiblioUTAD.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;

namespace BiblioUTAD.Areas.Identity.Pages.Account
{
    public class LoginBibliotecarioModel : PageModel
    {
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly UserManager<IdentityUser> _userManager;

        public LoginBibliotecarioModel(SignInManager<IdentityUser> signInManager, UserManager<IdentityUser> userManager)
        {
            _signInManager = signInManager;
            _userManager = userManager;
        }

        [BindProperty]
        public InputModel Input { get; set; }

        public string ReturnUrl { get; set; }

        public class InputModel
        {
            [Required]
            [Display(Name = "Nome")]
            public string UserName { get; set; }

            [Required]
            [DataType(DataType.Password)]
            [Display(Name = "Palavra-Passe")]
            public string Password { get; set; }
        }

        public void OnGet(string returnUrl = null)
        {
            ReturnUrl = returnUrl ?? Url.Content("~/");
        }

        public async Task<IActionResult> OnPostAsync(string returnUrl = null)
        {
            returnUrl ??= Url.Content("~/"); // Define a página inicial como padrão para redirecionamento

            if (ModelState.IsValid)
            {
                // Busca o utilizador pelo nome
                var user = await _userManager.FindByNameAsync(Input.UserName);
                if (user == null)
                {
                    ModelState.AddModelError(string.Empty, "Nome de utilizador inválido.");
                    return Page(); // Retorna à mesma página com o erro
                }

                // Verificar se o utilizador está bloqueado
                if (user.LockoutEnabled && user.LockoutEnd > DateTimeOffset.UtcNow)
                {
                    // Buscar o motivo do bloqueio (Shadow Property)
                    var dbContext = HttpContext.RequestServices.GetService<ApplicationDbContext>();
                    var blockedReason = dbContext.Entry(user).Property<string>("BlockedReason").CurrentValue;

                    // Redirecionar para a página BlockedReason
                    return RedirectToPage("/Account/BlockedReason", new { reason = blockedReason });
                }

                // Tenta autenticar o utilizador
                var result = await _signInManager.PasswordSignInAsync(Input.UserName, Input.Password, false, lockoutOnFailure: false);
                if (!result.Succeeded)
                {
                    ModelState.AddModelError(string.Empty, "Palavra-passe incorreta ou conta bloqueada.");
                    return Page(); // Retorna à mesma página com o erro
                }

                // Verifica se o Utilizador tem o papel de Bibliotecário e redireciona para o MenuBibliotecario
                if (await _userManager.IsInRoleAsync(user, "Bibliotecario"))
                {
                    return RedirectToAction("MenuBibliotecario", "Bibliotecario");
                }

                // Login bem-sucedido: Redireciona para a página inicial
                return LocalRedirect(returnUrl);
            }

            // Se houver erros na validação, retorna à página com os erros
            return Page();
        }
    }
}