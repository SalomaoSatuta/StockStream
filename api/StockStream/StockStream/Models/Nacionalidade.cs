using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Nacionalidade
    {
        public Nacionalidade()
        {
            Funcionario = new HashSet<Funcionario>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Funcionario> Funcionario { get; set; }
    }
}