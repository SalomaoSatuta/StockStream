﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace StockStreamAPI.Models
{
    public partial class EstadoLogin
    {
        public EstadoLogin()
        {
            Funcionario = new HashSet<Funcionario>();
            Usuario = new HashSet<Usuario>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Funcionario> Funcionario { get; set; }
        public virtual ICollection<Usuario> Usuario { get; set; }
    }
}