// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
#nullable disable

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using BiblioUTAD.Data;

namespace BiblioUTAD.Areas.Identity.Pages.Account
{
    public class LoginModel : PageModel
    {
        private readonly SignInManager<IdentityUser> _signInManager;

        public LoginModel(SignInManager<IdentityUser> signInManager)
        {
            _signInManager = signInManager;
        }


        [BindProperty]
        public InputModel Input { get; set; }


        public IList<AuthenticationScheme> ExternalLogins { get; set; }


        public string ReturnUrl { get; set; }


        [TempData]
        public string ErrorMessage { get; set; }


        public class InputModel
        {

            [Required]
            [EmailAddress]
            public string Email { get; set; }


            [Required]
            [DataType(DataType.Password)]
            public string Password { get; set; }


            [Display(Name = "Remember me?")]
            public bool RememberMe { get; set; }
        }

        public async Task OnGetAsync(string returnUrl = null)
        {
            if (!string.IsNullOrEmpty(ErrorMessage))
            {
                ModelState.AddModelError(string.Empty, ErrorMessage);
            }

            returnUrl ??= Url.Content("~/");

            // Clear the existing external cookie to ensure a clean login process
            await HttpContext.SignOutAsync(IdentityConstants.ExternalScheme);

            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();

            ReturnUrl = returnUrl;
        }

        public async Task<IActionResult> OnPostAsync(string returnUrl = null)
        {
            returnUrl ??= Url.Content("~/");

            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();

            if (ModelState.IsValid)
            {
                // Encontra o Utilizador com base no e-mail fornecido
                var user = await _signInManager.UserManager.FindByEmailAsync(Input.Email);
                if (user == null)
                {
                    ModelState.AddModelError(string.Empty, "E-mail não encontrado.");
                    return Page();
                }

                // Verifica se a conta está bloqueada
                if (user.LockoutEnabled && user.LockoutEnd > DateTimeOffset.UtcNow)
                {
                    // Obtém o motivo do bloqueio
                    var dbContext = HttpContext.RequestServices.GetService<ApplicationDbContext>();
                    var blockedReason = dbContext.Entry(user).Property<string>("BlockedReason").CurrentValue;

                    // Redireciona para a página de bloqueio
                    return RedirectToPage("/Account/BlockedReason", new { reason = blockedReason });
                }

                // Verifica se o e-mail foi confirmado
                if (!await _signInManager.UserManager.IsEmailConfirmedAsync(user))
                {
                    return RedirectToPage("/Account/ConfirmEmail", new { email = Input.Email });
                }

                // Tenta realizar o login do Utilizador
                var result = await _signInManager.PasswordSignInAsync(user.UserName, Input.Password, Input.RememberMe, lockoutOnFailure: false);

                if (result.Succeeded)
                {
                    var isAdmin = await _signInManager.UserManager.IsInRoleAsync(user, "Administrador");
                    if (isAdmin)
                    {
                        return RedirectToAction("MenuAdmin", "Admin");
                    }
                    var isBibliotecario = await _signInManager.UserManager.IsInRoleAsync(user, "Bibliotecario");
                    if (isBibliotecario)
                    {
                        return RedirectToAction("MenuBibliotecario", "Bibliotecario");
                    }
                    return LocalRedirect(returnUrl);
                }

                if (result.RequiresTwoFactor)
                {
                    return RedirectToPage("./LoginWith2fa", new { ReturnUrl = returnUrl, RememberMe = Input.RememberMe });
                }
                if (result.IsLockedOut)
                {
                    return RedirectToPage("./Lockout");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Tentativa de login inválida.");
                    return Page();
                }
            }

            // Retorna para a página com os erros do ModelState
            return Page();
        }
    }
}
