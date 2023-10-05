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
    public class FuncaoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public FuncaoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Funcao> Get()
        {
            return Db.Funcao.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Funcao Get(int id)
        {
            return Db.Funcao.FirstOrDefault(e => e.Id == id);
        }



    }
}
