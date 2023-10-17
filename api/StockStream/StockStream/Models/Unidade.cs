using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Unidade
    {
        public Unidade()
        {
            Produto = new HashSet<Produto>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Produto> Produto { get; set; }
    }
}