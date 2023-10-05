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
    public class NacionalidadeController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public NacionalidadeController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Nacionalidade> Get()
        {
            return Db.Nacionalidade.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Nacionalidade Get(int id)
        {
            return Db.Nacionalidade.FirstOrDefault(e => e.Id == id);
        }



    }
}
