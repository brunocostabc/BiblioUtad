using BiblioUTAD.Data;
using BiblioUTAD.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;

namespace BiblioUTAD.Controllers
{
    [Authorize]
    public class EmprestimoAdminController : Controller
    {
        private readonly ApplicationDbContext _context;

        public EmprestimoAdminController(ApplicationDbContext context)
        {
            _context = context;
        }

        // Ação para listar os empréstimos com suporte à pesquisa
        public async Task<IActionResult> Index(string searchTerm)
        {
            var emprestimos = string.IsNullOrEmpty(searchTerm)
                ? await _context.Emprestimos.Include(e => e.Livro).ToListAsync()
                : await _context.Emprestimos
                    .Include(e => e.Livro)
                    .Where(e => e.Livro.Titulo.Contains(searchTerm) || e.UserName.Contains(searchTerm))
                    .ToListAsync();

            if (User.IsInRole("Administrador"))
            {
                return View("~/Views/Admin/Emprestimos.cshtml", emprestimos);
            }
            else if (User.IsInRole("Bibliotecario"))
            {
                return View("~/Views/Bibliotecario/Emprestimos.cshtml", emprestimos);
            }

            return RedirectToAction("AccessDenied", "Shared");
        }

        // Ação para devolver um livro
        public async Task<IActionResult> Devolver(int id)
        {
            var emprestimo = await _context.Emprestimos
                .Include(e => e.Livro)
                .FirstOrDefaultAsync(e => e.Id == id);

            if (emprestimo != null && !emprestimo.Devolvido)
            {
                emprestimo.Devolvido = true;
                emprestimo.DataDevolucao = DateTime.Now;

                if (emprestimo.Livro != null)
                {
                    emprestimo.Livro.NumeroExemplares++;
                }

                var notificacaoService = new NotificacaoService(_context);
                await notificacaoService.RemoverNotificacoesPorLivro(emprestimo.LivroId);

                await _context.SaveChangesAsync();
            }

            return RedirectToAction(nameof(Index));
        }

        // Nova ação para eliminar um empréstimo
        public async Task<IActionResult> Eliminar(int id)
        {
            var emprestimo = await _context.Emprestimos.FindAsync(id);

            if (emprestimo != null)
            {
                _context.Emprestimos.Remove(emprestimo);
                await _context.SaveChangesAsync();
            }

            return RedirectToAction(nameof(Index));
        }
    }
}