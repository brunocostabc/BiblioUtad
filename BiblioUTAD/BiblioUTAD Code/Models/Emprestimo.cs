using System;
using System.Collections.Generic;

namespace BiblioUTAD.Models;

public partial class Emprestimo
{
    public int Id { get; set; }

    public int LivroId { get; set; }

    public string UserId { get; set; } = null!;

    public string UserName { get; set; } = null!;

    public DateTime DataEmprestimo { get; set; }

    public DateTime? DataDevolucao { get; set; }

    public bool Devolvido { get; set; }

    public virtual Livro Livro { get; set; } = null!;
}
