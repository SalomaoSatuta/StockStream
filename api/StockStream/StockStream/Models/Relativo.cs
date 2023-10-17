using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Relativo
    {
        public Relativo()
        {
            Agregado = new HashSet<Agregado>();
        }

        public int Id { get; set; }
        public string NomeCompleto { get; set; }
        public string Identificacao { get; set; }
        public string DataNascimento { get; set; }
        public int? UsuarioId { get; set; }
        public string DataCriacao { get; set; }

        public virtual Funcionario Usuario { get; set; }
        public virtual ICollection<Agregado> Agregado { get; set; }
    }
}