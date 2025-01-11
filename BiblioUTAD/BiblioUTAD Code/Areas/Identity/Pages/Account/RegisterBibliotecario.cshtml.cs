using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace BiblioUTAD.Areas.Identity.Pages.Account
{
    public class RegisterBibliotecarioModel : PageModel
    {
        private readonly UserManager<IdentityUser> _userManager;

        public RegisterBibliotecarioModel(UserManager<IdentityUser> userManager)
        {
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
            [Phone(ErrorMessage = "Insira um n�mero de telem�vel v�lido.")]
            [Display(Name = "Telem�vel")]
            public string PhoneNumber { get; set; }

            [Required]
            [StringLength(100, ErrorMessage = "A {0} deve ter pelo menos {2} e no m�ximo {1} caracteres.", MinimumLength = 6)]
            [DataType(DataType.Password)]
            [Display(Name = "Palavra-Passe")]
            public string Password { get; set; }

            [DataType(DataType.Password)]
            [Display(Name = "Confirme a Palavra-Passe")]
            [Compare("Password", ErrorMessage = "As palavras-passe n�o coincidem.")]
            public string ConfirmPassword { get; set; }
        }

        public void OnGet(string returnUrl = null)
        {
            ReturnUrl = returnUrl;
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (ModelState.IsValid)
            {
                // Verificar se j� existe um bibliotec�rio com o mesmo nome de utilizador
                var existingUser = await _userManager.FindByNameAsync(Input.UserName);
                if (existingUser != null)
                {
                    ModelState.AddModelError(string.Empty, "J� existe um Bibliotec�rio com este nome de utilizador.");
                    return Page();
                }

                // Gera o email automaticamente com base no nome de utilizador
                var generatedEmail = $"{Input.UserName.ToLower()}@biblioutad.com";

                var user = new IdentityUser
                {
                    UserName = Input.UserName, // Nome de utilizador
                    Email = generatedEmail,   // Email gerado automaticamente
                    PhoneNumber = Input.PhoneNumber // Telem�vel
                };

                var result = await _userManager.CreateAsync(user, Input.Password);
                if (result.Succeeded)
                {
                    // Adiciona o utilizador � role "Bibliotecario"
                    await _userManager.AddToRoleAsync(user, "Bibliotecario");

                    // Redireciona para uma p�gina de sucesso ou login
                    return RedirectToPage("./ConfirmRegisterBibliotecario");
                }

                // Adiciona os erros de cria��o ao ModelState
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }

            // Retorna para a p�gina com mensagens de erro
            return Page();
        }
    }
}
