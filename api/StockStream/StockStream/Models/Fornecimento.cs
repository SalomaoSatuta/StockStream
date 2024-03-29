﻿using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Fornecimento
    {
        public int Id { get; set; }
        public int? QuantidadeFornecimento { get; set; }
        public double? ValoPago { get; set; }
        public string DataFornecimento { get; set; }
        public int? ProdutoId { get; set; }
        public int? FornecedorId { get; set; }
        public int? UsuarioId { get; set; }
        public string DataCriacao { get; set; }

        public virtual Fornecedor Fornecedor { get; set; }
        public virtual Produto Produto { get; set; }
        public virtual Funcionario Usuario { get; set; }
    }
}