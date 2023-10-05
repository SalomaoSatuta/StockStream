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
    public class PerfilController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public PerfilController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Perfil> Get()
        {
            return Db.Perfil.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Perfil Get(int id)
        {
            return Db.Perfil.FirstOrDefault(e => e.Id == id);
        }



    }
}
