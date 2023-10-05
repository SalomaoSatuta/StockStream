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
    public class DepartamnentoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public DepartamnentoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Departamento> Get()
        {
            return Db.Departamento.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Departamento Get(int id)
        {
            return Db.Departamento.FirstOrDefault(e => e.Id == id);
        }



    }
}
