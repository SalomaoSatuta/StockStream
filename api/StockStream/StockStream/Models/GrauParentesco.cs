using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class GrauParentesco
    {
        public GrauParentesco()
        {
            Agregado = new HashSet<Agregado>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Agregado> Agregado { get; set; }
    }
}