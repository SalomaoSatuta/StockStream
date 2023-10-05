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
    public class FornecedorController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public FornecedorController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Fornecedor> Get()
        {
            return Db.Fornecedor.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Fornecedor Get(int id)
        {
            return Db.Fornecedor.FirstOrDefault(e => e.Id == id);
        }

        //Post
        [HttpPost]
        public Fornecedor Post([FromBody] Fornecedor fornecedor)
        {
            if (fornecedor == null) return null;

            Db.Fornecedor.Add(fornecedor);

            Db.SaveChanges();

            return fornecedor;
        }

        //Put
        [HttpPut("{id}")]
        public Fornecedor Put(int id, [FromBody] Fornecedor fornecedor)
        {
            var result = Db.Fornecedor.FirstOrDefault(e => e.Id == id);

            if (result == null) return null;

            result.CondicaoPagamentoId = fornecedor.CondicaoPagamentoId;
            result.Contacto1 = fornecedor.Contacto1;
            result.Contacto2 = fornecedor.Contacto2;
            result.DataCriacao = fornecedor.DataCriacao;

            result.Email = fornecedor.Email;
            result.Endereco = fornecedor.Endereco;
            result.Nif = fornecedor.Nif;
            result.Nome = fornecedor.Nome;

            Db.SaveChanges();

            return result;
        }


    }
}
