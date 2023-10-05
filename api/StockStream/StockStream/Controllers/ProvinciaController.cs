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
    public class ProvinciaController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public ProvinciaController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Provincia> Get()
        {
            return Db.Provincia.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Provincia Get(int id)
        {
            return Db.Provincia.FirstOrDefault(e => e.Id == id);
        }



    }
}
