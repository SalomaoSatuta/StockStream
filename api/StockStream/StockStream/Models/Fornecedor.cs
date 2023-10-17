using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Fornecedor
    {
        public Fornecedor()
        {
            Fornecimento = new HashSet<Fornecimento>();
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Nif { get; set; }
        public string Endereco { get; set; }
        public string Contacto1 { get; set; }
        public string Contacto2 { get; set; }
        public string Email { get; set; }
        public int? CondicaoPagamentoId { get; set; }
        public int? UsuarioId { get; set; }
        public string DataCriacao { get; set; }

        public virtual CondicaoPagamento CondicaoPagamento { get; set; }
        public virtual Funcionario Usuario { get; set; }
        public virtual ICollection<Fornecimento> Fornecimento { get; set; }
    }
}