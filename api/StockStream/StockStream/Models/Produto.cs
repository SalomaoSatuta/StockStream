﻿using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Produto
    {
        public Produto()
        {
            Fornecimento = new HashSet<Fornecimento>();
            Solicitacao = new HashSet<Solicitacao>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public int? QuantidadeStock { get; set; }
        public double? PrecoUnit { get; set; }
        public string DataFabricacao { get; set; }
        public string DataValidade { get; set; }
        public string Localizacao { get; set; }
        public int? CategoriaId { get; set; }
        public int? UnidadeId { get; set; }
        public int? UsuarioId { get; set; }
        public string DataCriacao { get; set; }

        public virtual Categoria Categoria { get; set; }
        public virtual Unidade Unidade { get; set; }
        public virtual Funcionario Usuario { get; set; }
        public virtual ICollection<Fornecimento> Fornecimento { get; set; }
        public virtual ICollection<Solicitacao> Solicitacao { get; set; }
    }
}