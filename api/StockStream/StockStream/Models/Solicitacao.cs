using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Solicitacao
    {
        public int Id { get; set; }
        public int QuantidadeSolicitada { get; set; }
        public string DataSolicitacao { get; set; }
        public int? FuncionarioId { get; set; }
        public int? ProdutoId { get; set; }

        public virtual Funcionario Funcionario { get; set; }
        public virtual Produto Produto { get; set; }
    }
}