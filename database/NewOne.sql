USE [Consumables]
GO
/****** Object:  Table [dbo].[Agregado]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agregado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RelativoID] [int] NULL,
	[FuncionarioID] [int] NULL,
	[GrauParentescoID] [int] NULL,
	[UsuarioID] [int] NULL,
	[DataCriacao] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicaoPagamento]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicaoPagamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](35) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoLogin]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](70) NULL,
	[Nif] [varchar](25) NULL,
	[Endereco] [varchar](100) NULL,
	[Contacto1] [varchar](20) NULL,
	[Contacto2] [varchar](20) NULL,
	[Email] [varchar](30) NULL,
	[CondicaoPagamentoID] [int] NULL,
	[UsuarioID] [int] NULL,
	[DataCriacao] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecimento]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecimento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuantidadeFornecimento] [int] NULL,
	[ValoPago] [float] NULL,
	[DataFornecimento] [varchar](20) NULL,
	[ProdutoID] [int] NULL,
	[FornecedorID] [int] NULL,
	[UsuarioID] [int] NULL,
	[DataCriacao] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcao]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeCompleto] [varchar](50) NOT NULL,
	[NAgente] [varchar](20) NOT NULL,
	[Identificacao] [varchar](30) NOT NULL,
	[DataNascimento] [varchar](20) NOT NULL,
	[Contacto1] [varchar](20) NULL,
	[Contacto2] [varchar](20) NULL,
	[Email] [varchar](30) NULL,
	[Iban] [varchar](22) NULL,
	[ContaBancaria] [varchar](15) NULL,
	[MunicipioID] [int] NULL,
	[Bairro] [varchar](35) NULL,
	[Rua] [varchar](35) NULL,
	[Casa] [varchar](15) NULL,
	[Referencia] [varchar](35) NULL,
	[EstadoCivilID] [int] NULL,
	[GrauAcademicoID] [int] NULL,
	[GeneroID] [int] NULL,
	[NacionalidadeID] [int] NULL,
	[EstadoLoginID] [int] NULL,
	[Usuario] [varchar](36) NULL,
	[Senha] [varchar](36) NULL,
	[Token] [varchar](16) NULL,
	[UsuarioID] [int] NULL,
	[DataCriacao] [varchar](20) NOT NULL,
	[PerfilID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](35) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrauAcademico]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrauAcademico](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](35) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrauParentesco]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrauParentesco](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](100) NOT NULL,
	[ProvinciaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidade]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](35) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](70) NULL,
	[Descricao] [varchar](100) NULL,
	[QuantidadeStock] [int] NULL,
	[PrecoUnit] [float] NULL,
	[DataFabricacao] [varchar](20) NULL,
	[DataValidade] [varchar](20) NULL,
	[Localizacao] [varchar](50) NULL,
	[CategoriaID] [int] NULL,
	[UnidadeID] [int] NULL,
	[UsuarioID] [int] NULL,
	[DataCriacao] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relativo]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relativo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeCompleto] [varchar](50) NOT NULL,
	[Identificacao] [varchar](30) NOT NULL,
	[DataNascimento] [varchar](20) NULL,
	[UsuarioID] [int] NULL,
	[DataCriacao] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitacao]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuantidadeSolicitada] [int] NOT NULL,
	[DataSolicitacao] [varchar](20) NOT NULL,
	[FuncionarioID] [int] NULL,
	[ProdutoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidade]    Script Date: 17/10/2023 15:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designacao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (1, N'Eletrônicos')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (2, N'Vestuário e Moda')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (3, N'Alimentos e Bebidas')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (4, N'Beleza e Cuidados Pessoais')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (5, N'Casa e Decoração')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (6, N'Saúde e Bem-Estar')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (7, N'Esportes e Fitness')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (8, N'Automotivo')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (9, N'Livros e Literatura')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (10, N'Brinquedos e Jogos')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (11, N'Móveis e Decoração de Interiores')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (12, N'Eletrônicos de Consumo')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (13, N'Joias e Acessórios')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (14, N'Ferramentas e Equipamentos')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (15, N'Produtos para Bebês e Crianças')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (16, N'Eletrônicos para Casa')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (17, N'Produtos para Animais de Estimação')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (18, N'Instrumentos Musicais')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (19, N'Produtos de Limpeza e Lavanderia')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (20, N'Equipamentos de Jardinagem')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (21, N'Produtos de Escritório e Papelaria')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (22, N'Produtos de Arte e Artesanato')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (23, N'Produtos de Cozinha e Culinária')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (24, N'Produtos de Viagem e Bagagem')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (25, N'Produtos de Tecnologia e Informática')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (26, N'Produtos de Entretenimento Doméstico')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (27, N'Produtos de Camping e Aventura')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (28, N'Produtos para Beleza Masculina')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (29, N'Produtos para Cabelo')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (30, N'Produtos de Limpeza Doméstica')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (31, N'Produtos de Fitness em Casa')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (32, N'Produtos de Realidade Virtual (VR)')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (33, N'Produtos de Áudio e Som')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (34, N'Produtos de Iluminação')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (35, N'Produtos de Segurança Doméstica')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (36, N'Produtos de Arte Corporal')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (37, N'Produtos de Higiene Oral')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (38, N'Produtos de Acessibilidade')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (39, N'Produtos de Aprendizado e Educação')
INSERT [dbo].[Categoria] ([Id], [Designacao]) VALUES (40, N'Produtos de Lazer ao Ar Livre')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[CondicaoPagamento] ON 

INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (1, N'À vista')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (2, N'Parcelamento')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (3, N'À prazo')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (4, N'Pagamento adiantado')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (5, N'Pagamento contra entrega (COD - Cash on Delivery)')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (6, N'Cartão de crédito')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (7, N'Cartão de débito')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (8, N'Cheque')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (9, N'Transferência bancária')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (10, N'Boleto bancário')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (11, N'PayPal')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (12, N'Pagamento recorrente')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (13, N'Financiamento')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (14, N'Desconto à vista')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (15, N'Troca por outro produto ou serviço')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (16, N'Pagamento em espécie')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (17, N'Pagamento em ações')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (18, N'Contrapartida')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (19, N'Pagamento via aplicativo de pagamento')
INSERT [dbo].[CondicaoPagamento] ([Id], [Designacao]) VALUES (20, N'Pagamento em criptomoedas')
SET IDENTITY_INSERT [dbo].[CondicaoPagamento] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoCivil] ON 

INSERT [dbo].[EstadoCivil] ([Id], [Designacao]) VALUES (1, N'Solteiro(a)')
INSERT [dbo].[EstadoCivil] ([Id], [Designacao]) VALUES (2, N'Casado(a)')
INSERT [dbo].[EstadoCivil] ([Id], [Designacao]) VALUES (3, N'Divorciado(a)')
INSERT [dbo].[EstadoCivil] ([Id], [Designacao]) VALUES (4, N'Viúvo(a)')
INSERT [dbo].[EstadoCivil] ([Id], [Designacao]) VALUES (5, N'União Estável')
INSERT [dbo].[EstadoCivil] ([Id], [Designacao]) VALUES (6, N'Separado(a)')
INSERT [dbo].[EstadoCivil] ([Id], [Designacao]) VALUES (7, N'Outro')
SET IDENTITY_INSERT [dbo].[EstadoCivil] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoLogin] ON 

INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (1, N'Ativo')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (2, N'Inativo')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (3, N'Bloqueado')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (4, N'Desativado')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (5, N'Em espera de confirmação')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (6, N'Expirado')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (7, N'Pendente')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (8, N'Em recuperação de senha')
INSERT [dbo].[EstadoLogin] ([Id], [Designacao]) VALUES (9, N'Autenticação em duas etapas')
SET IDENTITY_INSERT [dbo].[EstadoLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([Id], [NomeCompleto], [NAgente], [Identificacao], [DataNascimento], [Contacto1], [Contacto2], [Email], [Iban], [ContaBancaria], [MunicipioID], [Bairro], [Rua], [Casa], [Referencia], [EstadoCivilID], [GrauAcademicoID], [GeneroID], [NacionalidadeID], [EstadoLoginID], [Usuario], [Senha], [Token], [UsuarioID], [DataCriacao], [PerfilID]) VALUES (5, N'João da Silva', N'12345', N'123-45-6789', N'1980-05-15', N'123-456-7890', N'987-654-3210', N'joao.silva@example.com', N'PT123456789', N'1234567890', 1, N'Centro', N'Avenida Principal', N'123', N'Próximo à escola', 1, 3, 1, 1, 1, N'joao_silva', N'senha_segura', N'token_aleatorio', NULL, N'2023-10-17', 1)
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
GO
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([Id], [Designacao]) VALUES (1, N'Masculino')
INSERT [dbo].[Genero] ([Id], [Designacao]) VALUES (2, N'Feminino')
SET IDENTITY_INSERT [dbo].[Genero] OFF
GO
SET IDENTITY_INSERT [dbo].[GrauAcademico] ON 

INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (1, N'Ensino Fundamental')
INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (2, N'Ensino Médio')
INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (3, N'Graduação')
INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (4, N'Pós-Graduação')
INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (5, N'Mestrado')
INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (6, N'Doutorado')
INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (7, N'Pós-Doutorado')
INSERT [dbo].[GrauAcademico] ([Id], [Designacao]) VALUES (8, N'Outro')
SET IDENTITY_INSERT [dbo].[GrauAcademico] OFF
GO
SET IDENTITY_INSERT [dbo].[GrauParentesco] ON 

INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (1, N'Pai')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (2, N'Mãe')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (3, N'Filho')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (4, N'Filha')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (5, N'Avô')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (6, N'Avó')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (7, N'Neto')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (8, N'Neta')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (9, N'Irmão')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (10, N'Irmã')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (11, N'Tio')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (12, N'Tia')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (13, N'Primo')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (14, N'Prima')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (15, N'Sobrinho')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (16, N'Sobrinha')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (17, N'Cunhado')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (18, N'Cunhada')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (19, N'Padrinho')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (20, N'Madrinha')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (21, N'Enteado')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (22, N'Enteada')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (23, N'Genro')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (24, N'Nora')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (25, N'Pais')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (26, N'Avós')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (27, N'Irmãos')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (28, N'Tios')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (29, N'Primos')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (30, N'Sobrinhos')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (31, N'Cunhados')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (32, N'Padrinhos')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (33, N'Enteados')
INSERT [dbo].[GrauParentesco] ([Id], [Designacao]) VALUES (34, N'Outro')
SET IDENTITY_INSERT [dbo].[GrauParentesco] OFF
GO
SET IDENTITY_INSERT [dbo].[Municipio] ON 

INSERT [dbo].[Municipio] ([Id], [Designacao], [ProvinciaID]) VALUES (1, N'Muni XPTO', 1)
SET IDENTITY_INSERT [dbo].[Municipio] OFF
GO
SET IDENTITY_INSERT [dbo].[Nacionalidade] ON 

INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (1, N'Afeganistão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (2, N'África do Sul')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (3, N'Albânia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (4, N'Alemanha')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (5, N'Andorra')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (6, N'Angola')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (7, N'Antígua e Barbuda')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (8, N'Arábia Saudita')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (9, N'Argélia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (10, N'Argentina')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (11, N'Armênia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (12, N'Austrália')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (13, N'Áustria')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (14, N'Azerbaijão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (15, N'Bahamas')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (16, N'Bangladexe')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (17, N'Barbados')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (18, N'Barém')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (19, N'Bélgica')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (20, N'Belize')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (21, N'Benim')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (22, N'Bielorrússia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (23, N'Bolívia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (24, N'Bósnia e Herzegovina')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (25, N'Botsuana')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (26, N'Brasil')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (27, N'Brunei')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (28, N'Bulgária')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (29, N'Burquina Faso')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (30, N'Burundi')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (31, N'Butão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (32, N'Cabo Verde')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (33, N'Camarões')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (34, N'Camboja')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (35, N'Canadá')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (36, N'Catar')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (37, N'Cazaquistão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (38, N'Chade')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (39, N'Chile')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (40, N'China')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (41, N'Chipre')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (42, N'Cingapura')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (43, N'Colômbia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (44, N'Comores')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (45, N'Congo (Brazzaville)')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (46, N'Congo (Kinshasa)')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (47, N'Coreia do Norte')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (48, N'Coreia do Sul')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (49, N'Costa do Marfim')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (50, N'Costa Rica')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (51, N'Croácia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (52, N'Cuba')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (53, N'Dinamarca')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (54, N'Djibuti')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (55, N'Dominica')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (56, N'Egito')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (57, N'El Salvador')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (58, N'Emirados Árabes Unidos')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (59, N'Equador')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (60, N'Eritreia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (61, N'Eslováquia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (62, N'Eslovênia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (63, N'Espanha')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (64, N'Estados Unidos')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (65, N'Estônia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (66, N'Eswatini')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (67, N'Etiópia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (68, N'Fiji')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (69, N'Filipinas')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (70, N'Finlândia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (71, N'França')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (72, N'Gabão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (73, N'Gâmbia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (74, N'Gana')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (75, N'Geórgia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (76, N'Granada')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (77, N'Grécia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (78, N'Guatemala')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (79, N'Guiana')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (80, N'Guiana Francesa')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (81, N'Guiné')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (82, N'Guiné Equatorial')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (83, N'Guiné-Bissau')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (84, N'Haiti')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (85, N'Holanda')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (86, N'Honduras')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (87, N'Hungria')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (88, N'Iémen')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (89, N'Ilhas Cook')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (90, N'Ilhas Marshall')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (91, N'Ilhas Salomão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (92, N'Índia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (93, N'Indonésia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (94, N'Irã')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (95, N'Iraque')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (96, N'Irlanda')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (97, N'Islândia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (98, N'Israel')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (99, N'Itália')
GO
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (100, N'Jamaica')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (101, N'Japão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (102, N'Jordânia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (103, N'Kosovo')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (104, N'Kuwait')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (105, N'Laos')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (106, N'Lesoto')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (107, N'Letônia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (108, N'Líbano')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (109, N'Libéria')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (110, N'Líbia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (111, N'Listenstaine')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (112, N'Lituânia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (113, N'Luxemburgo')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (114, N'Macedônia do Norte')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (115, N'Madagáscar')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (116, N'Malásia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (117, N'Malaui')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (118, N'Maldivas')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (119, N'Mali')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (120, N'Malta')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (121, N'Marrocos')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (122, N'Maurícia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (123, N'Mauritânia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (124, N'México')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (125, N'Micronésia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (126, N'Moçambique')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (127, N'Moldávia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (128, N'Mónaco')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (129, N'Mongólia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (130, N'Montenegro')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (131, N'Myanmar (Birmânia)')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (132, N'Namíbia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (133, N'Nauru')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (134, N'Nepal')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (135, N'Nicarágua')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (136, N'Níger')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (137, N'Nigéria')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (138, N'Noruega')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (139, N'Nova Zelândia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (140, N'Omã')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (141, N'Palau')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (142, N'Panamá')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (143, N'Papua-Nova Guiné')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (144, N'Paquistão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (145, N'Paraguai')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (146, N'Peru')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (147, N'Polônia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (148, N'Portugal')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (149, N'Quênia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (150, N'Quirguistão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (151, N'Quiribáti')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (152, N'Reino Unido')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (153, N'República Centro-Africana')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (154, N'República Dominicana')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (155, N'República Checa')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (156, N'Romênia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (157, N'Ruanda')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (158, N'Rússia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (159, N'Salvação')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (160, N'Samoa')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (161, N'Santa Lúcia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (162, N'São Cristóvão e Nevis')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (163, N'São Marinho')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (164, N'São Tomé e Príncipe')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (165, N'São Vicente e Granadinas')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (166, N'Senegal')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (167, N'Serra Leoa')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (168, N'Sérvia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (169, N'Síria')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (170, N'Somália')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (171, N'Sri Lanka')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (172, N'Sudão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (173, N'Sudão do Sul')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (174, N'Suécia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (175, N'Suíça')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (176, N'Suriname')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (177, N'Tadjiquistão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (178, N'Tailândia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (179, N'Taiwan')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (180, N'Tanzânia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (181, N'Timor-Leste')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (182, N'Togo')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (183, N'Tonga')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (184, N'Trinidad e Tobago')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (185, N'Tunísia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (186, N'Turcomenistão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (187, N'Turquia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (188, N'Tuvalu')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (189, N'Ucrânia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (190, N'Uganda')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (191, N'Uruguai')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (192, N'Uzbequistão')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (193, N'Vanuatu')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (194, N'Vaticano')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (195, N'Venezuela')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (196, N'Vietnã')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (197, N'Zâmbia')
INSERT [dbo].[Nacionalidade] ([Id], [Designacao]) VALUES (198, N'Zimbábue')
SET IDENTITY_INSERT [dbo].[Nacionalidade] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfil] ON 

INSERT [dbo].[Perfil] ([Id], [Designacao]) VALUES (1, N'Admin')
SET IDENTITY_INSERT [dbo].[Perfil] OFF
GO
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (1, N'Luanda')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (2, N'Bengo')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (3, N'Benguela')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (4, N'Bié')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (5, N'Cabinda')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (6, N'Cunene')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (7, N'Huambo')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (8, N'Huíla')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (9, N'Kuando Kubango')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (10, N'Kwanza Norte')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (11, N'Kwanza Sul')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (12, N'Lunda Norte')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (13, N'Lunda Sul')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (14, N'Malanje')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (15, N'Moxico')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (16, N'Namibe')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (17, N'Uíge')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (18, N'Zaire')
INSERT [dbo].[Provincia] ([Id], [Designacao]) VALUES (19, N'XPTO')
SET IDENTITY_INSERT [dbo].[Provincia] OFF
GO
SET IDENTITY_INSERT [dbo].[Unidade] ON 

INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (1, N'Peça')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (2, N'Par')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (3, N'Metro ')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (4, N'Centímetro')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (5, N'Quilograma')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (6, N'Grama')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (7, N'Litro')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (8, N'Mililitro')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (9, N'Unidade de medida')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (10, N'Caixa')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (11, N'Pacote')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (12, N'Rolo')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (13, N'Galão')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (14, N'Onça')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (15, N'Libra')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (16, N'Tonelada')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (17, N'Dúzia')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (18, N'Metro cúbico')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (19, N'Pé cúbico')
INSERT [dbo].[Unidade] ([Id], [Designacao]) VALUES (20, N'Litro por minuto')
SET IDENTITY_INSERT [dbo].[Unidade] OFF
GO
ALTER TABLE [dbo].[Agregado]  WITH CHECK ADD FOREIGN KEY([FuncionarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Agregado]  WITH CHECK ADD FOREIGN KEY([GrauParentescoID])
REFERENCES [dbo].[GrauParentesco] ([Id])
GO
ALTER TABLE [dbo].[Agregado]  WITH CHECK ADD FOREIGN KEY([RelativoID])
REFERENCES [dbo].[Relativo] ([Id])
GO
ALTER TABLE [dbo].[Agregado]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([CondicaoPagamentoID])
REFERENCES [dbo].[CondicaoPagamento] ([Id])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Fornecimento]  WITH CHECK ADD FOREIGN KEY([FornecedorID])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[Fornecimento]  WITH CHECK ADD FOREIGN KEY([ProdutoID])
REFERENCES [dbo].[Produto] ([Id])
GO
ALTER TABLE [dbo].[Fornecimento]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([EstadoCivilID])
REFERENCES [dbo].[EstadoCivil] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([EstadoLoginID])
REFERENCES [dbo].[EstadoLogin] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([GeneroID])
REFERENCES [dbo].[Genero] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([GrauAcademicoID])
REFERENCES [dbo].[GrauAcademico] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([NacionalidadeID])
REFERENCES [dbo].[Nacionalidade] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([PerfilID])
REFERENCES [dbo].[Perfil] ([Id])
GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([ProvinciaID])
REFERENCES [dbo].[Provincia] ([Id])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([UnidadeID])
REFERENCES [dbo].[Unidade] ([Id])
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Relativo]  WITH CHECK ADD FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Solicitacao]  WITH CHECK ADD FOREIGN KEY([FuncionarioID])
REFERENCES [dbo].[Funcionario] ([Id])
GO
ALTER TABLE [dbo].[Solicitacao]  WITH CHECK ADD FOREIGN KEY([ProdutoID])
REFERENCES [dbo].[Produto] ([Id])
GO
