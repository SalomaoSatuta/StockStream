using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class CondicaoPagamento
    {
        public CondicaoPagamento()
        {
            Fornecedor = new HashSet<Fornecedor>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Fornecedor> Fornecedor { get; set; }
    }
}