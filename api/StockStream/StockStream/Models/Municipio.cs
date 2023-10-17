using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Municipio
    {
        public Municipio()
        {
            Funcionario = new HashSet<Funcionario>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }
        public int? ProvinciaId { get; set; }

        public virtual Provincia Provincia { get; set; }
        public virtual ICollection<Funcionario> Funcionario { get; set; }
    }
}