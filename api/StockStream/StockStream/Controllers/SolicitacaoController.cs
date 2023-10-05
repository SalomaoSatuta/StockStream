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
    public class SolicitacaoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public SolicitacaoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Solicitacao> Get()
        {
            return Db.Solicitacao.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Solicitacao Get(int id)
        {
            return Db.Solicitacao.FirstOrDefault(e => e.Id == id);
        }

        //Post
        [HttpPost]
        public Solicitacao Post([FromBody] Solicitacao solicitacao)
        {
            if (solicitacao == null) return null;

            Db.Solicitacao.Add(solicitacao);

            Db.SaveChanges();

            return solicitacao;
        }

        //Put
        [HttpPut("{id}")]
        public Solicitacao Put(int id, [FromBody] Solicitacao solicitacao)
        {
            var result = Db.Solicitacao.FirstOrDefault(e => e.Id == id);

            if (result == null) return null;

            result.DataSolicitacao = solicitacao.DataSolicitacao;
            result.FuncionarioId = solicitacao.FuncionarioId;
            result.ProdutoId = solicitacao.ProdutoId;
            result.QuantidadeSolicitada = solicitacao.QuantidadeSolicitada;

            Db.SaveChanges();

            return result;
        }


    }
}
