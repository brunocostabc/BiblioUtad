using BiblioUTAD.Data;
using BiblioUTAD.Models;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace BiblioUTAD.Controllers
{
    public class CatalogoController : Controller
    {
        private readonly ApplicationDbContext _context;
        private const int PageSizeGridView = 10;
        private const int PageSizeListView = 5;

        public CatalogoController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index(string searchTerm, int page = 1, string sortCriteria = "titulo", string viewMode = "grid")
        {
            // Determinar o tamanho da página com base no modo de visualização
            int pageSize = viewMode == "list" ? PageSizeListView : PageSizeGridView;

            // Filtrar os livros com base no termo de pesquisa, se fornecido
            var query = string.IsNullOrEmpty(searchTerm)
                ? _context.Livros
                : _context.Livros.Where(l => l.Titulo.Contains(searchTerm) || l.Autor.Contains(searchTerm));

            // Ordenar os livros com base no critério selecionado
            query = sortCriteria switch
            {
                "autor" => query.OrderBy(l => l.Autor),
                "preco" => query.OrderBy(l => l.Preco),
                _ => query.OrderBy(l => l.Titulo), // Ordenar por título por padrão
            };

            // Paginar os livros
            var totalLivros = query.Count();
            var livros = query
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();

            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalLivros / pageSize);
            ViewBag.SearchTerm = searchTerm;
            ViewBag.SortCriteria = sortCriteria;
            ViewBag.ViewMode = viewMode;

            return View("~/Views/Home/Catalogo/Catalogo.cshtml", livros);
        }

        public IActionResult Detalhes(int id)
        {
            var livro = _context.Livros.FirstOrDefault(l => l.Id == id);

            if (livro == null)
            {
                return NotFound();
            }

            return View("~/Views/Home/Catalogo/Detalhes.cshtml", livro);
        }
    }
}