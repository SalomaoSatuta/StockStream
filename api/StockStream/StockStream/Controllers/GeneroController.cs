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
    public class GeneroController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public GeneroController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Genero> Get()
        {
            return Db.Genero.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Genero Get(int id)
        {
            return Db.Genero.FirstOrDefault(e => e.Id == id);
        }



    }
}
