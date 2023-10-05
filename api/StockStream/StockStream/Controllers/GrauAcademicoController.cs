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
    public class GrauAcademicoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public GrauAcademicoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<GrauAcademico> Get()
        {
            return Db.GrauAcademico.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public GrauAcademico Get(int id)
        {
            return Db.GrauAcademico.FirstOrDefault(e => e.Id == id);
        }



    }
}
