using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace BiblioUTAD.Areas.Identity.Pages.Account
{
    public class BlockedReasonModel : PageModel
    {
        public string Reason { get; set; }

        public void OnGet(string reason)
        {
            Reason = string.IsNullOrWhiteSpace(reason) ? "Sua conta está bloqueada. Entre em contato com o administrador." : reason;
        }
    }
}