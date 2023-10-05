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
    public class EstadoCivilController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public EstadoCivilController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<EstadoCivil> Get()
        {
            return Db.EstadoCivil.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public EstadoCivil Get(int id)
        {
            return Db.EstadoCivil.FirstOrDefault(e => e.Id == id);
        }



    }
}
