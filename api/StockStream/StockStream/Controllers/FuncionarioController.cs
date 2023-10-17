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
    public class FuncionarioController : ControllerBase
    {

        public ConsumablesContext Db { get; set; }
        public FuncionarioController(ConsumablesContext db)
        {
            this.Db = db;
        }

        //GET
        [HttpGet]
        public List<Funcionario> Get()
        {
            return Db.Funcionario.ToList();
        }

        //GET ONE
        [HttpGet("{id}")]
        public Funcionario Get(int id)
        {
            return Db.Funcionario.FirstOrDefault(e => e.Id == id);
        }

        //Post
        [HttpPost]
        public Funcionario Post([FromBody] Funcionario funcionario)
        {
            if (funcionario == null) return null;

            Db.Funcionario.Add(funcionario);

            Db.SaveChanges();

            return funcionario;
        }

        //Put
        [HttpPut("{id}")]
        public Funcionario Put(int id, [FromBody] Funcionario funcionario)
        {
            var result = Db.Funcionario.FirstOrDefault(e => e.Id == id);

            if (result == null) return null;

            //Contact
            result.Email = funcionario.Email;
            result.Contacto1 = funcionario.Contacto1;
            result.Contacto2 = funcionario.Contacto2;

            //Creation
            result.DataCriacao = funcionario.DataCriacao;
            result.UsuarioId = funcionario.UsuarioId;

            //Bank
            result.ContaBancaria = funcionario.ContaBancaria;
            result.Iban = funcionario.Iban;
            
            //Address
            result.MunicipioId = funcionario.MunicipioId;
            result.Bairro = funcionario.Bairro;
            result.Casa = funcionario.Casa;
            result.Rua = funcionario.Rua;
            result.Referencia = funcionario.Referencia;

            //Basic
            result.NomeCompleto = funcionario.NomeCompleto;
            result.Identificacao = funcionario.Identificacao;
            result.DataNascimento = funcionario.DataNascimento;
            result.GrauAcademicoId = funcionario.GrauAcademicoId;
            result.NacionalidadeId = funcionario.NacionalidadeId;
            result.Nagente = funcionario.Nagente;
            result.EstadoCivilId = funcionario.EstadoCivilId;
            result.GeneroId = funcionario.GeneroId;

            //Access
            result.Usuario = funcionario.Usuario;
            result.Senha = funcionario.Senha;
            result.PerfilId = funcionario.PerfilId;
            result.Token = funcionario.Token;
            result.EstadoLoginId = funcionario.EstadoLoginId;

            Db.SaveChanges();

            return result;
        }

        //LOGIN
        [HttpPost("login")]
        public Funcionario Login([FromBody] Funcionario funcionario)
        {
            return Db.Funcionario.FirstOrDefault(e => e.Usuario == funcionario.Usuario && e.Senha == funcionario.Senha);
        }


    }
}
