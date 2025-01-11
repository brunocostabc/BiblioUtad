using System.ComponentModel.DataAnnotations;

namespace BiblioUTAD.Models
{
    public class CriarAdminViewModel
    {
        [Required(ErrorMessage = "O nome é obrigatório.")]
        [StringLength(50, ErrorMessage = "O nome deve ter no máximo 50 caracteres.")]
        public string Nome { get; set; }

        [Required(ErrorMessage = "A Palavra-Passe é obrigatória.")]
        [StringLength(100, MinimumLength = 6, ErrorMessage = "A Palavra-Passe deve ter no mínimo 6 caracteres.")]
        public string Password { get; set; }
    }

}
