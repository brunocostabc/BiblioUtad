using System;
using System.Collections.Generic;

namespace BiblioUTAD.Models;

public partial class Livro
{
    public int Id { get; set; }

    public string Titulo { get; set; } = null!;

    public string Autor { get; set; } = null!;

    public string Genero { get; set; } = null!;

    public string ISBN { get; set; } = null!;

    public decimal Preco { get; set; }

    public int NumeroExemplares { get; set; }

    public string? CaminhoImagem { get; set; }

    public DateTime DataLancamento { get; set; }

    public string Descricao { get; set; } = null!;

    public virtual ICollection<Emprestimo> Emprestimos { get; set; } = new List<Emprestimo>();

}
