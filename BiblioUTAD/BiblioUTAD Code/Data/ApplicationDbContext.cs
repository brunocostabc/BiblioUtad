using BiblioUTAD.Models;
using BiblioUTAD.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using BiblioUTAD.Models;

namespace BiblioUTAD.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Livro> Livros { get; set; }
        public DbSet<Autor> Autores { get; set; }
        public DbSet<Genero> Generos { get; set; }
        public DbSet<Emprestimo> Emprestimos { get; set; }
        public DbSet<Notificacao> Notificacoes { get; set; }
        public DbSet<Subscriber> Subscribers { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            // Adicionar shadow property para o campo BlockedReason
            builder.Entity<IdentityUser>()
                .Property<string>("BlockedReason");
        }
    }
}
