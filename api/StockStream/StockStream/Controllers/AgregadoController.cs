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
    public class AgregadoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public AgregadoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Agregado> Get()
        {
            return Db.Agregado.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Agregado Get(int id)
        {
            return Db.Agregado.FirstOrDefault(e => e.Id == id);
        }

        //Post
        [HttpPost]
        public Agregado Post([FromBody] Agregado agregado)
        {
            if (agregado == null) return null;

            Db.Agregado.Add(agregado);

            Db.SaveChanges();

            return agregado;
        }

        //Put
        [HttpPut("{id}")]
        public Agregado Put(int id, [FromBody] Agregado agregado)
        {
            var result = Db.Agregado.FirstOrDefault(e => e.Id == id);

            if (result == null) return null;

            result.FuncionarioId = agregado.FuncionarioId;
            result.RelativoId = agregado.RelativoId;
            result.DataCriacao = agregado.DataCriacao;
            result.UsuarioId = agregado.UsuarioId;

            Db.SaveChanges();

            return result;
        }


    }
}
