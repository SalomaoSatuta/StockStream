﻿using System;
using System.Collections.Generic;

namespace StockStream.Models
{
    public partial class Provincia
    {
        public Provincia()
        {
            Municipio = new HashSet<Municipio>();
        }

        public int Id { get; set; }
        public string Designacao { get; set; }

        public virtual ICollection<Municipio> Municipio { get; set; }
    }
}