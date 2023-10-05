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
    public class ProdutoController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public ProdutoController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Produto> Get()
        {
            return Db.Produto.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Produto Get(int id)
        {
            return Db.Produto.FirstOrDefault(e => e.Id == id);
        }

        //Post
        [HttpPost]
        public Produto Post([FromBody] Produto produto)
        {
            if (produto == null) return null;

            Db.Produto.Add(produto);

            Db.SaveChanges();

            return produto;
        }

        //Put
        [HttpPut("{id}")]
        public Produto Put(int id, [FromBody] Produto produto)
        {
            var result = Db.Produto.FirstOrDefault(e => e.Id == id);

            if (result == null) return null;

            result.CategoriaId = produto.CategoriaId;
            result.DataValidade = produto.DataValidade;
            result.DataFabricacao = produto.DataFabricacao;
            result.Descricao = produto.Descricao;

            result.Localizacao = produto.Localizacao;
            result.Nome = produto.Nome;
            result.PrecoUnit = produto.PrecoUnit;
            result.QuantidadeStock = produto.QuantidadeStock;

            result.UnidadeId = produto.UnidadeId;
            result.UsuarioId = produto.UsuarioId;
            result.DataCriacao = produto.DataCriacao;

            Db.SaveChanges();

            return result;
        }


    }
}
