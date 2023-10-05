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
    public class CategoriaController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public CategoriaController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Categoria> Get()
        {
            return Db.Categoria.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Categoria Get(int id)
        {
            return Db.Categoria.FirstOrDefault(e => e.Id == id);
        }



    }
}
