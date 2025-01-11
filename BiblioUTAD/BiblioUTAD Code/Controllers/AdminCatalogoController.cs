using BiblioUTAD.Data;
using BiblioUTAD.Models;
using BiblioUTAD.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.EntityFrameworkCore;
using System.Globalization;
using System.Linq;

namespace BiblioUTAD.Controllers
{
    [Authorize(Roles = "Administrador, Bibliotecario")]
    public class AdminCatalogoController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IEmailSender _emailSender;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public AdminCatalogoController(ApplicationDbContext context, IEmailSender emailSender, IWebHostEnvironment webHostEnvironment)
        {
            _context = context;
            _emailSender = emailSender;
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index(string searchTerm)
        {
            var livros = string.IsNullOrEmpty(searchTerm)
                ? _context.Livros.ToList()
                : _context.Livros.Where(l => l.Titulo.Contains(searchTerm) || l.Autor.Contains(searchTerm)).ToList();

            if (User.IsInRole("Administrador"))
            {
                return View("~/Views/Admin/Catalogo.cshtml", livros);
            }
            else if (User.IsInRole("Bibliotecario"))
            {
                return View("~/Views/Bibliotecario/Catalogo.cshtml", livros);
            }

            return RedirectToAction("AccessDenied", "Shared");
        }

        public IActionResult EditarLivro(int id)
        {
            var livro = _context.Livros.Find(id);
            if (livro == null)
            {
                return NotFound();
            }

            // Verificar papel do Utilizador
            if (User.IsInRole("Administrador"))
            {
                // Administradores podem acessar e editar todos os campos
                var generos = _context.Generos.Select(g => g.Nome).ToList();
                ViewBag.Generos = generos;
                ViewBag.Autores = _context.Autores.Select(a => a.Nome).ToList();
                return View("~/Views/Admin/EditarLivro.cshtml", livro);
            }
            else if (User.IsInRole("Bibliotecario"))
            {
                // Bibliotecários podem editar apenas campos limitados
                ViewBag.Restrito = true; // Envia uma flag para a View
                var generos = _context.Generos.Select(g => g.Nome).ToList();
                ViewBag.Generos = generos;
                ViewBag.Autores = _context.Autores.Select(a => a.Nome).ToList();
                return View("~/Views/Bibliotecario/EditarLivro.cshtml", livro); // View específica para Bibliotecário
            }

            return RedirectToAction("AccessDenied", "Shared");
        }

        [HttpPost]
        public async Task<IActionResult> EditarLivro(Livro livroAtualizado, IFormFile? Imagem)
        {
            try
            {
                var livro = await _context.Livros.FindAsync(livroAtualizado.Id);
                if (livro == null)
                {
                    return NotFound();
                }

                if (Imagem != null && Imagem.Length > 0)
                {
                    // Obter a extensão do ficheiro
                    var extensao = Path.GetExtension(Imagem.FileName).ToLowerInvariant();

                    // Verificar se a extensão é válida
                    var extensoesPermitidas = new[] { ".jpg", ".jpeg", ".png", ".gif" };
                    if (!extensoesPermitidas.Contains(extensao))
                    {
                        ModelState.AddModelError("Imagem", "O ficheiro deve ser uma imagem nos formatos JPG, JPEG, PNG ou GIF.");
                        return RetornarViewEditarLivro(livroAtualizado);
                    }

                    var caminhoPasta = Path.Combine(_webHostEnvironment.WebRootPath, "livros");
                    Directory.CreateDirectory(caminhoPasta); // Garante que a pasta existe

                    var nomeArquivo = Path.GetFileName(Imagem.FileName);
                    var caminhoCompleto = Path.Combine(caminhoPasta, nomeArquivo);

                    int contador = 1;
                    while (System.IO.File.Exists(caminhoCompleto))
                    {
                        nomeArquivo = $"{Path.GetFileNameWithoutExtension(Imagem.FileName)}_{contador}{Path.GetExtension(Imagem.FileName)}";
                        caminhoCompleto = Path.Combine(caminhoPasta, nomeArquivo);
                        contador++;
                    }

                    using (var stream = new FileStream(caminhoCompleto, FileMode.Create))
                    {
                        await Imagem.CopyToAsync(stream);
                    }

                    // Remover a imagem anterior se existir
                    if (!string.IsNullOrEmpty(livro.CaminhoImagem))
                    {
                        var caminhoImagemAnterior = Path.Combine(_webHostEnvironment.WebRootPath, livro.CaminhoImagem.TrimStart('/'));
                        if (System.IO.File.Exists(caminhoImagemAnterior))
                        {
                            System.IO.File.Delete(caminhoImagemAnterior);
                        }
                    }

                    livro.CaminhoImagem = $"/livros/{nomeArquivo}";
                }

                // Atualiza os campos do livro
                livro.Titulo = livroAtualizado.Titulo;
                livro.Autor = livroAtualizado.Autor;
                livro.Genero = livroAtualizado.Genero;
                livro.ISBN = livroAtualizado.ISBN;
                livro.Preco = livroAtualizado.Preco;
                livro.NumeroExemplares = livroAtualizado.NumeroExemplares;
                livro.DataLancamento = livroAtualizado.DataLancamento;
                livro.Descricao = livroAtualizado.Descricao;

                if (ModelState.IsValid)
                {
                    await _context.SaveChangesAsync();
                    return RedirectToAction("Index");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao editar livro: {ex.Message}");
                ModelState.AddModelError("", "Ocorreu um erro ao processar as alterações.");
            }

            return RetornarViewEditarLivro(livroAtualizado);
        }

        private IActionResult RetornarViewEditarLivro(Livro livroAtualizado)
        {
            var generos = _context.Generos.Select(g => g.Nome).ToList();
            ViewBag.Generos = generos;

            if (User.IsInRole("Administrador"))
            {
                return View("~/Views/Admin/EditarLivro.cshtml", livroAtualizado);
            }
            else if (User.IsInRole("Bibliotecario"))
            {
                ViewBag.Restrito = true;
                return View("~/Views/Bibliotecario/EditarLivro.cshtml", livroAtualizado);
            }

            return RedirectToAction("AccessDenied", "Shared");
        }

        [HttpPost]
        public IActionResult EliminarLivro(int id)
        {
            var livro = _context.Livros.Find(id);
            if (livro != null)
            {
                _context.Livros.Remove(livro);
                _context.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        public IActionResult AdicionarLivro()
        {
            var generos = _context.Generos.Select(g => g.Nome).ToList();
            var autores = _context.Autores.Select(a => a.Nome).ToList();
            ViewBag.Generos = generos;
            ViewBag.Autores = autores;

            if (User.IsInRole("Administrador"))
            {
                return View("~/Views/Admin/AdicionarLivro.cshtml");
            }
            else if (User.IsInRole("Bibliotecario"))
            {
                return View("~/Views/Bibliotecario/AdicionarLivro.cshtml");
            }

            return RedirectToAction("AccessDenied", "Shared");
        }

        [HttpPost]
        public async Task<IActionResult> AdicionarLivro(Livro novoLivro, IFormFile Imagem)
        {
            try
            {
                if (Imagem != null && Imagem.Length > 0)
                {
                    // Obter a extensão do ficheiro
                    var extensao = Path.GetExtension(Imagem.FileName).ToLowerInvariant();

                    // Verificar se a extensão é válida
                    var extensoesPermitidas = new[] { ".jpg", ".jpeg", ".png", ".gif" };
                    if (!extensoesPermitidas.Contains(extensao))
                    {
                        ModelState.AddModelError("Imagem", "O ficheiro deve ser uma imagem nos formatos JPG, JPEG, PNG ou GIF.");
                        return RetornarViewAdicionarLivro(novoLivro);
                    }

                    var caminhoPasta = Path.Combine(_webHostEnvironment.WebRootPath, "livros");
                    Directory.CreateDirectory(caminhoPasta); // Garante que a pasta existe

                    var nomeArquivo = Path.GetFileName(Imagem.FileName);
                    var caminhoCompleto = Path.Combine(caminhoPasta, nomeArquivo);

                    int contador = 1;
                    while (System.IO.File.Exists(caminhoCompleto))
                    {
                        nomeArquivo = $"{Path.GetFileNameWithoutExtension(Imagem.FileName)}_{contador}{Path.GetExtension(Imagem.FileName)}";
                        caminhoCompleto = Path.Combine(caminhoPasta, nomeArquivo);
                        contador++;
                    }

                    using (var stream = new FileStream(caminhoCompleto, FileMode.Create))
                    {
                        await Imagem.CopyToAsync(stream);
                    }

                    novoLivro.CaminhoImagem = $"/livros/{nomeArquivo}";
                }

                // Validação do preço
                var precoBruto = Request.Form["Preco"];
                if (decimal.TryParse(precoBruto, NumberStyles.Any, CultureInfo.InvariantCulture, out var precoDecimal))
                {
                    novoLivro.Preco = precoDecimal > 100 ? precoDecimal / 100 : precoDecimal;
                }
                else
                {
                    ModelState.AddModelError("Preco", "O preço fornecido é inválido.");
                }

                if (ModelState.IsValid)
                {
                    _context.Livros.Add(novoLivro);
                    await _context.SaveChangesAsync();

                    // Enviar e-mail para os subscritores
                    var subscribers = _context.Subscribers.ToList();
                    foreach (var subscriber in subscribers)
                    {
                        await _emailSender.SendEmailAsync(
                            subscriber.Email,
                            "Novo Livro Disponível",
                            $"O livro \"{novoLivro.Titulo}\" está agora disponível no catálogo da BiblioUTAD."
                        );
                    }

                    return RedirectToAction("Index");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao adicionar livro: {ex.Message}");
                ModelState.AddModelError("", "Ocorreu um erro ao processar o livro.");
            }

            return RetornarViewAdicionarLivro(novoLivro);
        }

        // Método auxiliar para retornar a view
        private IActionResult RetornarViewAdicionarLivro(Livro novoLivro)
        {
            var generos = _context.Generos.Select(g => g.Nome).ToList();
            ViewBag.Generos = generos;

            if (User.IsInRole("Administrador"))
            {
                return View("~/Views/Admin/AdicionarLivro.cshtml", novoLivro);
            }
            else if (User.IsInRole("Bibliotecario"))
            {
                return View("~/Views/Bibliotecario/AdicionarLivro.cshtml", novoLivro);
            }

            return RedirectToAction("AccessDenied", "Shared");
        }

        [HttpPost]
        public IActionResult AdicionarAutor([FromBody] AutorDto data)
        {
            if (string.IsNullOrWhiteSpace(data.Nome))
            {
                return Json(new { success = false, message = "O nome do autor é obrigatório." });
            }

            if (_context.Autores.Any(a => a.Nome == data.Nome))
            {
                return Json(new { success = false, message = "O autor já existe." });
            }

            var autor = new Autor { Nome = data.Nome };
            _context.Autores.Add(autor);
            _context.SaveChanges();

            return Json(new { success = true, id = autor.Id });
        }

        public class AutorDto
        {
            public string Nome { get; set; }
        }


        [HttpPost]
        public IActionResult AdicionarGenero([FromBody] GeneroDto data)
        {
            if (string.IsNullOrWhiteSpace(data.Nome))
            {
                return Json(new { success = false, message = "O nome do gênero é obrigatório." });
            }

            if (_context.Generos.Any(g => g.Nome == data.Nome))
            {
                return Json(new { success = false, message = "O gênero já existe." });
            }

            var genero = new Genero { Nome = data.Nome };
            _context.Generos.Add(genero);
            _context.SaveChanges();

            return Json(new { success = true, id = genero.Id });
        }
    }

    public class GeneroDto
    {
        public string Nome { get; set; }
    }
}