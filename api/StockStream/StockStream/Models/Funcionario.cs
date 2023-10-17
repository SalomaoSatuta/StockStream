using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Funcionario
    {
        public Funcionario()
        {
            AgregadoFuncionario = new HashSet<Agregado>();
            AgregadoUsuario = new HashSet<Agregado>();
            Fornecedor = new HashSet<Fornecedor>();
            Fornecimento = new HashSet<Fornecimento>();
            InversePerfil = new HashSet<Funcionario>();
            InverseUsuarioNavigation = new HashSet<Funcionario>();
            Produto = new HashSet<Produto>();
            Relativo = new HashSet<Relativo>();
            Solicitacao = new HashSet<Solicitacao>();
        }

        public int Id { get; set; }
        public string NomeCompleto { get; set; }
        public string Nagente { get; set; }
        public string Identificacao { get; set; }
        public string DataNascimento { get; set; }
        public string Contacto1 { get; set; }
        public string Contacto2 { get; set; }
        public string Email { get; set; }
        public string Iban { get; set; }
        public string ContaBancaria { get; set; }
        public int? MunicipioId { get; set; }
        public string Bairro { get; set; }
        public string Rua { get; set; }
        public string Casa { get; set; }
        public string Referencia { get; set; }
        public int? EstadoCivilId { get; set; }
        public int? GrauAcademicoId { get; set; }
        public int? GeneroId { get; set; }
        public int? NacionalidadeId { get; set; }
        public int? EstadoLoginId { get; set; }
        public string Usuario { get; set; }
        public string Senha { get; set; }
        public string Token { get; set; }
        public int? UsuarioId { get; set; }
        public string DataCriacao { get; set; }
        public int? PerfilId { get; set; }

        public virtual EstadoCivil EstadoCivil { get; set; }
        public virtual EstadoLogin EstadoLogin { get; set; }
        public virtual Genero Genero { get; set; }
        public virtual GrauAcademico GrauAcademico { get; set; }
        public virtual Municipio Municipio { get; set; }
        public virtual Nacionalidade Nacionalidade { get; set; }
        public virtual Funcionario Perfil { get; set; }
        public virtual Funcionario UsuarioNavigation { get; set; }
        public virtual ICollection<Agregado> AgregadoFuncionario { get; set; }
        public virtual ICollection<Agregado> AgregadoUsuario { get; set; }
        public virtual ICollection<Fornecedor> Fornecedor { get; set; }
        public virtual ICollection<Fornecimento> Fornecimento { get; set; }
        public virtual ICollection<Funcionario> InversePerfil { get; set; }
        public virtual ICollection<Funcionario> InverseUsuarioNavigation { get; set; }
        public virtual ICollection<Produto> Produto { get; set; }
        public virtual ICollection<Relativo> Relativo { get; set; }
        public virtual ICollection<Solicitacao> Solicitacao { get; set; }
    }
}