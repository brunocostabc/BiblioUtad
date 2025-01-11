using BiblioUTAD.Data;
using BiblioUTAD.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

public class NotificacaoService
{
    private readonly ApplicationDbContext _context;

    public NotificacaoService(ApplicationDbContext context)
    {
        _context = context;
    }

    // Verifica empréstimos atrasados e cria notificações
    public async Task VerificarEmprestimosAtrasados()
    {
        var emprestimosAtrasados = await _context.Emprestimos
            .Include(e => e.Livro) // Inclui informações do livro
            .Where(e => !e.Devolvido && e.DataEmprestimo.AddDays(15) < DateTime.Now) // Verifica se passaram 15 dias
            .ToListAsync();

        if (!emprestimosAtrasados.Any())
            return;

        // Procura todos os administradores e bibliotecários
        var adminsEBibliotecarios = await _context.Users
            .Where(u => _context.UserRoles.Any(ur => ur.UserId == u.Id &&
                (_context.Roles.Any(r => r.Id == ur.RoleId && (r.Name == "Administrador" || r.Name == "Bibliotecario")))))
            .ToListAsync();

        foreach (var emprestimo in emprestimosAtrasados)
        {
            var mensagemUsuario = $"O livro '{emprestimo.Livro.Titulo}' ultrapassou o prazo de devolução.";
            var mensagemAdminBibliotecario = $"O utilizador '{emprestimo.UserName}' tem um empréstimo atrasado para o livro '{emprestimo.Livro.Titulo}'.";

            // Notificar o utilizador
            _context.Notificacoes.Add(new Notificacao
            {
                UserId = emprestimo.UserId,
                LivroId = emprestimo.LivroId,
                Mensagem = mensagemUsuario,
                DataCriacao = DateTime.Now,
                Lida = false
            });

            // Notificar todos os administradores e bibliotecários
            foreach (var adminOuBibliotecario in adminsEBibliotecarios)
            {
                _context.Notificacoes.Add(new Notificacao
                {
                    UserId = adminOuBibliotecario.Id,
                    LivroId = emprestimo.LivroId,
                    Mensagem = mensagemAdminBibliotecario,
                    DataCriacao = DateTime.Now,
                    Lida = false
                });
            }
        }

        await _context.SaveChangesAsync();
    }

    // Obtém notificações não lidas de um utilizador
    public async Task<List<Notificacao>> ObterNotificacoesNaoLidas(string userId)
    {
        return await _context.Notificacoes
            .Where(n => n.UserId == userId && !n.Lida)
            .ToListAsync();
    }

    public async Task RemoverNotificacoesPorLivro(int livroId)
    {
        var notificacoes = await _context.Notificacoes
            .Where(n => n.LivroId == livroId)
            .ToListAsync();

        if (notificacoes.Any())
        {
            _context.Notificacoes.RemoveRange(notificacoes);
            await _context.SaveChangesAsync();
        }
    }
}