using BiblioUTAD.Data;
using BiblioUTAD.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace BiblioUTAD.Controllers
{
    [Authorize]
    public class EmprestimoController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public EmprestimoController(ApplicationDbContext context, UserManager<IdentityUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // Exibe a página de confirmação de requisição
        public async Task<IActionResult> Requisitar(int livroId)
        {
            var livro = await _context.Livros.FindAsync(livroId);
            if (livro == null || livro.NumeroExemplares <= 0)
            {
                TempData["ErrorMessage"] = "Livro não disponível para requisição.";
                return RedirectToAction("Index", "Catalogo");
            }

            return View("~/Views/Home/Catalogo/Requisitar.cshtml", livro);
        }

        [HttpPost]
        public async Task<IActionResult> ConfirmarRequisicao(int livroId)
        {
            var livro = await _context.Livros.FindAsync(livroId);
            var user = await _userManager.GetUserAsync(User);

            if (livro != null && livro.NumeroExemplares > 0 && user != null)
            {
                var dataDevolucao = DateTime.Now.AddDays(15);

                var emprestimo = new Emprestimo
                {
                    LivroId = livroId,
                    UserId = user.Id,
                    UserName = user.UserName,
                    DataEmprestimo = DateTime.Now,
                    DataDevolucao = dataDevolucao,
                    Devolvido = false
                };

                livro.NumeroExemplares--;

                _context.Emprestimos.Add(emprestimo);
                await _context.SaveChangesAsync();

                return View("~/Views/Home/Catalogo/ConfirmacaoRequisicao.cshtml", emprestimo);
            }

            TempData["ErrorMessage"] = "Livro não disponível para requisição.";
            return RedirectToAction("Index", "Catalogo");
        }
    }
}