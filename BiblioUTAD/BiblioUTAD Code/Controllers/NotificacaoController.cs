using BiblioUTAD.Data;
using BiblioUTAD.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

[Authorize]
public class NotificacaoController : Controller
{
    private readonly ApplicationDbContext _context;
    private readonly UserManager<IdentityUser> _userManager;

    public NotificacaoController(ApplicationDbContext context, UserManager<IdentityUser> userManager)
    {
        _context = context;
        _userManager = userManager;
    }

    public async Task<IActionResult> Index()
    {
        var user = await _userManager.GetUserAsync(User);
        var notificacoes = await _context.Notificacoes
            .Where(n => n.UserId == user.Id)
            .OrderByDescending(n => n.DataCriacao)
            .ToListAsync();

        return View(notificacoes);
    }

    public async Task<IActionResult> MarcarComoLida(int id)
    {
        var notificacao = await _context.Notificacoes.FindAsync(id);
        if (notificacao != null)
        {
            notificacao.Lida = true;
            await _context.SaveChangesAsync();
        }

        return RedirectToAction("Index");
    }

    [HttpPost]
    public async Task<IActionResult> MarcarTodasComoLidas()
    {
        var user = await _userManager.GetUserAsync(User);
        var notificacoes = await _context.Notificacoes
            .Where(n => n.UserId == user.Id && !n.Lida)
            .ToListAsync();

        foreach (var notificacao in notificacoes)
        {
            notificacao.Lida = true;
        }
        await _context.SaveChangesAsync();

        return RedirectToAction("Index");
    }

    [HttpPost]
    public async Task<IActionResult> Eliminar(int id)
    {
        var notificacao = await _context.Notificacoes.FindAsync(id);
        if (notificacao != null)
        {
            _context.Notificacoes.Remove(notificacao);
            await _context.SaveChangesAsync();
        }

        return RedirectToAction("Index");
    }

    [HttpPost]
    public async Task<IActionResult> EliminarTodas()
    {
        var user = await _userManager.GetUserAsync(User);
        var notificacoes = await _context.Notificacoes
            .Where(n => n.UserId == user.Id)
            .ToListAsync();

        _context.Notificacoes.RemoveRange(notificacoes);
        await _context.SaveChangesAsync();

        return RedirectToAction("Index");
    }
}
