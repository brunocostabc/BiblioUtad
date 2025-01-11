using System;
using System.Collections.Generic;

namespace BiblioUTAD.Models
{
    public class Notificacao {
        public int Id { get; set; }
        public string UserId { get; set; }
        public string Mensagem { get; set; }
        public bool Lida { get; set; } = false;
        public DateTime DataCriacao { get; set; } = DateTime.Now;
        public int? LivroId { get; set; }
    }
}