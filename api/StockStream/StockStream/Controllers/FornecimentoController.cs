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
    public class FornecimentoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public FornecimentoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Fornecimento> Get()
        {
            return Db.Fornecimento.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Fornecimento Get(int id)
        {
            return Db.Fornecimento.FirstOrDefault(e => e.Id == id);
        }

        //Post
        [HttpPost]
        public Fornecimento Post([FromBody] Fornecimento fornecimento)
        {
            if (fornecimento == null) return null;

            Db.Fornecimento.Add(fornecimento);

            Db.SaveChanges();

            return fornecimento;
        }

        //Put
        [HttpPut("{id}")]
        public Fornecimento Put(int id, [FromBody] Fornecimento fornecimento)
        {
            var result = Db.Fornecimento.FirstOrDefault(e => e.Id == id);

            if (result == null) return null;

            result.DataCriacao = fornecimento.DataCriacao;
            result.DataFornecimento = fornecimento.DataFornecimento;
            result.FornecedorId = fornecimento.FornecedorId;
            result.ProdutoId = fornecimento.ProdutoId;

            result.QuantidadeFornecimento = fornecimento.QuantidadeFornecimento;
            result.UsuarioId = fornecimento.UsuarioId;
            result.ValoPago = fornecimento.ValoPago;

            Db.SaveChanges();

            return result;
        }


    }
}
