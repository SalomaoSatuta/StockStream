using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace StockStream.Models
{
    public partial class ConsumablesContext : DbContext
    {
        public ConsumablesContext()
        {
        }

        public ConsumablesContext(DbContextOptions<ConsumablesContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Agregado> Agregado { get; set; }
        public virtual DbSet<Categoria> Categoria { get; set; }
        public virtual DbSet<CondicaoPagamento> CondicaoPagamento { get; set; }
        public virtual DbSet<Departamento> Departamento { get; set; }
        public virtual DbSet<EstadoCivil> EstadoCivil { get; set; }
        public virtual DbSet<EstadoLogin> EstadoLogin { get; set; }
        public virtual DbSet<Fornecedor> Fornecedor { get; set; }
        public virtual DbSet<Fornecimento> Fornecimento { get; set; }
        public virtual DbSet<Funcao> Funcao { get; set; }
        public virtual DbSet<Funcionario> Funcionario { get; set; }
        public virtual DbSet<Genero> Genero { get; set; }
        public virtual DbSet<GrauAcademico> GrauAcademico { get; set; }
        public virtual DbSet<GrauParentesco> GrauParentesco { get; set; }
        public virtual DbSet<Municipio> Municipio { get; set; }
        public virtual DbSet<Nacionalidade> Nacionalidade { get; set; }
        public virtual DbSet<Perfil> Perfil { get; set; }
        public virtual DbSet<Produto> Produto { get; set; }
        public virtual DbSet<Provincia> Provincia { get; set; }
        public virtual DbSet<Relativo> Relativo { get; set; }
        public virtual DbSet<Solicitacao> Solicitacao { get; set; }
        public virtual DbSet<Unidade> Unidade { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.0-rtm-35687");

            modelBuilder.Entity<Agregado>(entity =>
            {
                entity.Property(e => e.DataCriacao)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.FuncionarioId).HasColumnName("FuncionarioID");

                entity.Property(e => e.GrauParentescoId).HasColumnName("GrauParentescoID");

                entity.Property(e => e.RelativoId).HasColumnName("RelativoID");

                entity.Property(e => e.UsuarioId).HasColumnName("UsuarioID");

                entity.HasOne(d => d.Funcionario)
                    .WithMany(p => p.AgregadoFuncionario)
                    .HasForeignKey(d => d.FuncionarioId)
                    .HasConstraintName("FK__Agregado__Funcio__6E01572D");

                entity.HasOne(d => d.GrauParentesco)
                    .WithMany(p => p.Agregado)
                    .HasForeignKey(d => d.GrauParentescoId)
                    .HasConstraintName("FK__Agregado__GrauPa__6EF57B66");

                entity.HasOne(d => d.Relativo)
                    .WithMany(p => p.Agregado)
                    .HasForeignKey(d => d.RelativoId)
                    .HasConstraintName("FK__Agregado__Relati__6D0D32F4");

                entity.HasOne(d => d.Usuario)
                    .WithMany(p => p.AgregadoUsuario)
                    .HasForeignKey(d => d.UsuarioId)
                    .HasConstraintName("FK__Agregado__Usuari__6FE99F9F");
            });

            modelBuilder.Entity<Categoria>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<CondicaoPagamento>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Departamento>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<EstadoCivil>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(35)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<EstadoLogin>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Fornecedor>(entity =>
            {
                entity.Property(e => e.CondicaoPagamentoId).HasColumnName("CondicaoPagamentoID");

                entity.Property(e => e.Contacto1)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Contacto2)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DataCriacao)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Endereco)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Nif)
                    .HasMaxLength(25)
                    .IsUnicode(false);

                entity.Property(e => e.Nome)
                    .HasMaxLength(70)
                    .IsUnicode(false);

                entity.Property(e => e.UsuarioId).HasColumnName("UsuarioID");

                entity.HasOne(d => d.CondicaoPagamento)
                    .WithMany(p => p.Fornecedor)
                    .HasForeignKey(d => d.CondicaoPagamentoId)
                    .HasConstraintName("FK__Fornecedo__Condi__571DF1D5");

                entity.HasOne(d => d.Usuario)
                    .WithMany(p => p.Fornecedor)
                    .HasForeignKey(d => d.UsuarioId)
                    .HasConstraintName("FK__Fornecedo__Usuar__5812160E");
            });

            modelBuilder.Entity<Fornecimento>(entity =>
            {
                entity.Property(e => e.DataCriacao)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DataFornecimento)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.FornecedorId).HasColumnName("FornecedorID");

                entity.Property(e => e.ProdutoId).HasColumnName("ProdutoID");

                entity.Property(e => e.UsuarioId).HasColumnName("UsuarioID");

                entity.HasOne(d => d.Fornecedor)
                    .WithMany(p => p.Fornecimento)
                    .HasForeignKey(d => d.FornecedorId)
                    .HasConstraintName("FK__Fornecime__Forne__6477ECF3");

                entity.HasOne(d => d.Produto)
                    .WithMany(p => p.Fornecimento)
                    .HasForeignKey(d => d.ProdutoId)
                    .HasConstraintName("FK__Fornecime__Produ__6383C8BA");

                entity.HasOne(d => d.Usuario)
                    .WithMany(p => p.Fornecimento)
                    .HasForeignKey(d => d.UsuarioId)
                    .HasConstraintName("FK__Fornecime__Usuar__656C112C");
            });

            modelBuilder.Entity<Funcao>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Funcionario>(entity =>
            {
                entity.Property(e => e.Bairro)
                    .HasMaxLength(35)
                    .IsUnicode(false);

                entity.Property(e => e.Casa)
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.Property(e => e.ContaBancaria)
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.Property(e => e.Contacto1)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Contacto2)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DataCriacao)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DataNascimento)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.EstadoCivilId).HasColumnName("EstadoCivilID");

                entity.Property(e => e.EstadoLoginId).HasColumnName("EstadoLoginID");

                entity.Property(e => e.GeneroId).HasColumnName("GeneroID");

                entity.Property(e => e.GrauAcademicoId).HasColumnName("GrauAcademicoID");

                entity.Property(e => e.Iban)
                    .HasMaxLength(22)
                    .IsUnicode(false);

                entity.Property(e => e.Identificacao)
                    .IsRequired()
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.MunicipioId).HasColumnName("MunicipioID");

                entity.Property(e => e.NacionalidadeId).HasColumnName("NacionalidadeID");

                entity.Property(e => e.Nagente)
                    .IsRequired()
                    .HasColumnName("NAgente")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.NomeCompleto)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.PerfilId).HasColumnName("PerfilID");

                entity.Property(e => e.Referencia)
                    .HasMaxLength(35)
                    .IsUnicode(false);

                entity.Property(e => e.Rua)
                    .HasMaxLength(35)
                    .IsUnicode(false);

                entity.Property(e => e.Senha)
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.Token)
                    .HasMaxLength(16)
                    .IsUnicode(false);

                entity.Property(e => e.Usuario)
                    .HasMaxLength(36)
                    .IsUnicode(false);

                entity.Property(e => e.UsuarioId).HasColumnName("UsuarioID");

                entity.HasOne(d => d.EstadoCivil)
                    .WithMany(p => p.Funcionario)
                    .HasForeignKey(d => d.EstadoCivilId)
                    .HasConstraintName("FK__Funcionar__Estad__4CA06362");

                entity.HasOne(d => d.EstadoLogin)
                    .WithMany(p => p.Funcionario)
                    .HasForeignKey(d => d.EstadoLoginId)
                    .HasConstraintName("FK__Funcionar__Estad__5070F446");

                entity.HasOne(d => d.Genero)
                    .WithMany(p => p.Funcionario)
                    .HasForeignKey(d => d.GeneroId)
                    .HasConstraintName("FK__Funcionar__Gener__4E88ABD4");

                entity.HasOne(d => d.GrauAcademico)
                    .WithMany(p => p.Funcionario)
                    .HasForeignKey(d => d.GrauAcademicoId)
                    .HasConstraintName("FK__Funcionar__GrauA__4D94879B");

                entity.HasOne(d => d.Municipio)
                    .WithMany(p => p.Funcionario)
                    .HasForeignKey(d => d.MunicipioId)
                    .HasConstraintName("FK__Funcionar__Munic__4BAC3F29");

                entity.HasOne(d => d.Nacionalidade)
                    .WithMany(p => p.Funcionario)
                    .HasForeignKey(d => d.NacionalidadeId)
                    .HasConstraintName("FK__Funcionar__Nacio__4F7CD00D");

                entity.HasOne(d => d.Perfil)
                    .WithMany(p => p.InversePerfil)
                    .HasForeignKey(d => d.PerfilId)
                    .HasConstraintName("FK__Funcionar__Perfi__52593CB8");

                entity.HasOne(d => d.UsuarioNavigation)
                    .WithMany(p => p.InverseUsuarioNavigation)
                    .HasForeignKey(d => d.UsuarioId)
                    .HasConstraintName("FK__Funcionar__Usuar__5165187F");
            });

            modelBuilder.Entity<Genero>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(35)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<GrauAcademico>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(35)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<GrauParentesco>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(40)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Municipio>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.ProvinciaId).HasColumnName("ProvinciaID");

                entity.HasOne(d => d.Provincia)
                    .WithMany(p => p.Municipio)
                    .HasForeignKey(d => d.ProvinciaId)
                    .HasConstraintName("FK__Municipio__Provi__3D5E1FD2");
            });

            modelBuilder.Entity<Nacionalidade>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Perfil>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(35)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Produto>(entity =>
            {
                entity.Property(e => e.CategoriaId).HasColumnName("CategoriaID");

                entity.Property(e => e.DataCriacao)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DataFabricacao)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DataValidade)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Descricao)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Localizacao)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Nome)
                    .HasMaxLength(70)
                    .IsUnicode(false);

                entity.Property(e => e.UnidadeId).HasColumnName("UnidadeID");

                entity.Property(e => e.UsuarioId).HasColumnName("UsuarioID");

                entity.HasOne(d => d.Categoria)
                    .WithMany(p => p.Produto)
                    .HasForeignKey(d => d.CategoriaId)
                    .HasConstraintName("FK__Produto__Categor__5EBF139D");

                entity.HasOne(d => d.Unidade)
                    .WithMany(p => p.Produto)
                    .HasForeignKey(d => d.UnidadeId)
                    .HasConstraintName("FK__Produto__Unidade__5FB337D6");

                entity.HasOne(d => d.Usuario)
                    .WithMany(p => p.Produto)
                    .HasForeignKey(d => d.UsuarioId)
                    .HasConstraintName("FK__Produto__Usuario__60A75C0F");
            });

            modelBuilder.Entity<Provincia>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Relativo>(entity =>
            {
                entity.Property(e => e.DataCriacao)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.DataNascimento)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Identificacao)
                    .IsRequired()
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.NomeCompleto)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.UsuarioId).HasColumnName("UsuarioID");

                entity.HasOne(d => d.Usuario)
                    .WithMany(p => p.Relativo)
                    .HasForeignKey(d => d.UsuarioId)
                    .HasConstraintName("FK__Relativo__Usuari__68487DD7");
            });

            modelBuilder.Entity<Solicitacao>(entity =>
            {
                entity.Property(e => e.DataSolicitacao)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.FuncionarioId).HasColumnName("FuncionarioID");

                entity.Property(e => e.ProdutoId).HasColumnName("ProdutoID");

                entity.HasOne(d => d.Funcionario)
                    .WithMany(p => p.Solicitacao)
                    .HasForeignKey(d => d.FuncionarioId)
                    .HasConstraintName("FK__Solicitac__Funci__72C60C4A");

                entity.HasOne(d => d.Produto)
                    .WithMany(p => p.Solicitacao)
                    .HasForeignKey(d => d.ProdutoId)
                    .HasConstraintName("FK__Solicitac__Produ__73BA3083");
            });

            modelBuilder.Entity<Unidade>(entity =>
            {
                entity.Property(e => e.Designacao)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}