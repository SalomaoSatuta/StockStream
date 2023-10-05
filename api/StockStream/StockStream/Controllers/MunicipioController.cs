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
    public class MunicipioController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public MunicipioController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Municipio> Get()
        {
            return Db.Municipio.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Municipio Get(int id)
        {
            return Db.Municipio.FirstOrDefault(e => e.Id == id);
        }

        [HttpGet("ByProvince/{id}")]
        public List<Municipio> GetByProvince(int id)
        {
            return Db.Municipio.Where(e=>e.ProvinciaId==id).ToList();
        }



    }
}
