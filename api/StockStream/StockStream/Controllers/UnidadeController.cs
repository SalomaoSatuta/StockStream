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
    public class UnidadeController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public UnidadeController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Unidade> Get()
        {
            return Db.Unidade.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Unidade Get(int id)
        {
            return Db.Unidade.FirstOrDefault(e => e.Id == id);
        }



    }
}
