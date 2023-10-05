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
    public class CondicaoPagamentoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public CondicaoPagamentoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<CondicaoPagamento> Get()
        {
            return Db.CondicaoPagamento.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public CondicaoPagamento Get(int id)
        {
            return Db.CondicaoPagamento.FirstOrDefault(e => e.Id == id);
        }



    }
}
