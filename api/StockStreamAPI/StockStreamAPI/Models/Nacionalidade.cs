﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace StockStreamAPI.Models
{
    public partial class Nacionalidade
    {
        public Nacionalidade()
        {
            Funcionario = new HashSet<Funcionario>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Funcionario> Funcionario { get; set; }
    }
}