using BiblioUTAD.Models;
using BiblioUTAD.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using System.Diagnostics;
using System.Threading.Tasks;

namespace BiblioUTAD.Controllers
{
    public class HomeController : Controller
    {
        private readonly NotificacaoService _notificacaoService;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(NotificacaoService notificacaoService, ApplicationDbContext context, UserManager<IdentityUser> userManager)
        {
            _notificacaoService = notificacaoService;
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            var livros = _context.Livros
                .OrderByDescending(l => l.DataLancamento)
                .Take(6)
                .ToList();

            var livrosAleatorios = _context.Livros
                .OrderBy(l => Guid.NewGuid())
                .Take(6)
                .ToList();

            if (User.Identity.IsAuthenticated)
            {
                var user = await _userManager.GetUserAsync(User);
                ViewBag.NotificacoesNaoLidas = await _notificacaoService.ObterNotificacoesNaoLidas(user.Id);
            }

            return View(livrosAleatorios);
        }

        [HttpPost]
        public async Task<IActionResult> Subscribe(string email)
        {
            if (ModelState.IsValid)
            {
                var subscriber = new Subscriber { Email = email };
                _context.Subscribers.Add(subscriber);
                await _context.SaveChangesAsync();
                TempData["Message"] = "Subscreveu com sucesso!";
            }

            return RedirectToAction("Index");
        }

        public IActionResult Catalogo()
        {
            var livros = _context.Livros.ToList();
            return View(livros);
        }

        public IActionResult GetLivrosCatalogo()
        {
            var livrosCatalogo = _context.Livros
                .OrderBy(l => Guid.NewGuid())
                .Take(2)
                .ToList();

            if (!livrosCatalogo.Any())
            {
                return Json(new List<object>
                {
                    new { Titulo = "Nenhum livro disponível", Imagem = "" },
                    new { Titulo = "Nenhum livro disponível", Imagem = "" }
                });
            }

            return Json(livrosCatalogo);
        }

        [HttpPost]
        public async Task<IActionResult> MarcarComoLida(int id)
        {
            var notificacao = await _context.Notificacoes.FindAsync(id);
            if (notificacao != null)
            {
                notificacao.Lida = true;
                await _context.SaveChangesAsync();
            }

            return RedirectToAction("Notificacoes");
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult FAQs()
        {
            return View();
        }

        public IActionResult Condições()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public IActionResult AccessDenied()
        {
            return View("AccessDenied");
        }
    }
}