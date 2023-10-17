using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Genero
    {
        public Genero()
        {
            Funcionario = new HashSet<Funcionario>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Funcionario> Funcionario { get; set; }
    }
}