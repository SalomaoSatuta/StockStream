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
    public class EstadoLoginController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public EstadoLoginController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<EstadoLogin> Get()
        {
            return Db.EstadoLogin.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public EstadoLogin Get(int id)
        {
            return Db.EstadoLogin.FirstOrDefault(e => e.Id == id);
        }



    }
}
