﻿using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Agregado
    {
        public int Id { get; set; }
        public int? RelativoId { get; set; }
        public int? FuncionarioId { get; set; }
        public int? GrauParentescoId { get; set; }
        public int? UsuarioId { get; set; }
        public string DataCriacao { get; set; }

        public virtual Funcionario Funcionario { get; set; }
        public virtual GrauParentesco GrauParentesco { get; set; }
        public virtual Relativo Relativo { get; set; }
        public virtual Funcionario Usuario { get; set; }
    }
}