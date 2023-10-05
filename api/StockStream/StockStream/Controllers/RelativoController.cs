using StockStream.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockStream.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class RelativoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public RelativoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Relativo> Get()
        {
            return Db.Relativo.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Relativo Get(int id)
        {
            return Db.Relativo.FirstOrDefault(e => e.Id == id);
        }

        //Post
        [HttpPost]
        public Relativo Post([FromBody] Relativo relativo)
        {
            if (relativo == null) return null;

            Db.Relativo.Add(relativo);

            Db.SaveChanges();

            return relativo;
        }

        //Put
        [HttpPut("{id}")]
        public Relativo Put(int id, [FromBody] Relativo relativo)
        {
            var result = Db.Relativo.FirstOrDefault(e => e.Id == id);

            if (result == null) return null;

            result.DataNascimento = relativo.DataNascimento;
            result.Identificacao = relativo.Identificacao;
            result.NomeCompleto = relativo.NomeCompleto;
            result.UsuarioId = relativo.UsuarioId;
            result.DataCriacao = relativo.DataCriacao;

            Db.SaveChanges();

            return result;
        }


    }
}
