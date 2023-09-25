create Table Perfil(
	Id int identity(1,1) primary key,
	Designacao varchar(35) not null
)

insert into Perfil (Designacao) values ('Admin')

create table Usuario(
	Id int identity(1,1) primary key,
	Nome varchar(32) not null,
	Senha varchar(32) not null,
	Token varchar(16),
	DataCriacao varchar(20) not null,
	PerfilID int foreign key references Perfil(Id)
)

create Table CondicaoPagamento(
	Id int identity(1,1) primary key,
	Designacao varchar(100) not null
)

insert into CondicaoPagamento (Designacao) values ('À vista')
insert into CondicaoPagamento (Designacao) values ('Parcelamento')
insert into CondicaoPagamento (Designacao) values ('À prazo')
insert into CondicaoPagamento (Designacao) values ('Pagamento adiantado')
insert into CondicaoPagamento (Designacao) values ('Pagamento contra entrega (COD - Cash on Delivery)')
insert into CondicaoPagamento (Designacao) values ('Cartão de crédito')
insert into CondicaoPagamento (Designacao) values ('Cartão de débito')
insert into CondicaoPagamento (Designacao) values ('Cheque')
insert into CondicaoPagamento (Designacao) values ('Transferência bancária')
insert into CondicaoPagamento (Designacao) values ('Boleto bancário')
insert into CondicaoPagamento (Designacao) values ('PayPal')
insert into CondicaoPagamento (Designacao) values ('Pagamento recorrente')
insert into CondicaoPagamento (Designacao) values ('Financiamento')
insert into CondicaoPagamento (Designacao) values ('Desconto à vista')
insert into CondicaoPagamento (Designacao) values ('Troca por outro produto ou serviço')
insert into CondicaoPagamento (Designacao) values ('Pagamento em espécie')
insert into CondicaoPagamento (Designacao) values ('Pagamento em ações')
insert into CondicaoPagamento (Designacao) values ('Contrapartida')
insert into CondicaoPagamento (Designacao) values ('Pagamento via aplicativo de pagamento')
insert into CondicaoPagamento (Designacao) values ('Pagamento em criptomoedas')

create table Fornecedor(
	Id int identity(1,1) primary key,
	Nome varchar(70),
	Nif varchar(25),
	Endereco varchar(100),
	Contacto1 varchar(20),
	Contacto2 varchar(20),
	Email varchar(30),
	CondicaoPagamentoID int foreign key references CondicaoPagamento(Id),
	UsuarioID int foreign key references Usuario(Id),
	DataCriacao varchar(20) not null
)

create Table Categoria(
	Id int identity(1,1) primary key,
	Designacao varchar(200) not null
)

insert into Categoria (Designacao) values ('Eletrônicos')
insert into Categoria (Designacao) values ('Vestuário e Moda')
insert into Categoria (Designacao) values ('Alimentos e Bebidas')
insert into Categoria (Designacao) values ('Beleza e Cuidados Pessoais')
insert into Categoria (Designacao) values ('Casa e Decoração')
insert into Categoria (Designacao) values ('Saúde e Bem-Estar')
insert into Categoria (Designacao) values ('Esportes e Fitness')
insert into Categoria (Designacao) values ('Automotivo')
insert into Categoria (Designacao) values ('Livros e Literatura')
insert into Categoria (Designacao) values ('Brinquedos e Jogos')
insert into Categoria (Designacao) values ('Móveis e Decoração de Interiores')
insert into Categoria (Designacao) values ('Eletrônicos de Consumo')
insert into Categoria (Designacao) values ('Joias e Acessórios')
insert into Categoria (Designacao) values ('Ferramentas e Equipamentos')
insert into Categoria (Designacao) values ('Produtos para Bebês e Crianças')
insert into Categoria (Designacao) values ('Eletrônicos para Casa')
insert into Categoria (Designacao) values ('Produtos para Animais de Estimação')
insert into Categoria (Designacao) values ('Instrumentos Musicais')
insert into Categoria (Designacao) values ('Produtos de Limpeza e Lavanderia')
insert into Categoria (Designacao) values ('Equipamentos de Jardinagem')
insert into Categoria (Designacao) values ('Produtos de Escritório e Papelaria')
insert into Categoria (Designacao) values ('Produtos de Arte e Artesanato')
insert into Categoria (Designacao) values ('Produtos de Cozinha e Culinária')
insert into Categoria (Designacao) values ('Produtos de Viagem e Bagagem')
insert into Categoria (Designacao) values ('Produtos de Tecnologia e Informática')
insert into Categoria (Designacao) values ('Produtos de Entretenimento Doméstico')
insert into Categoria (Designacao) values ('Produtos de Camping e Aventura')
insert into Categoria (Designacao) values ('Produtos para Beleza Masculina')
insert into Categoria (Designacao) values ('Produtos para Cabelo')
insert into Categoria (Designacao) values ('Produtos de Limpeza Doméstica')
insert into Categoria (Designacao) values ('Produtos de Fitness em Casa')
insert into Categoria (Designacao) values ('Produtos de Realidade Virtual (VR)')
insert into Categoria (Designacao) values ('Produtos de Áudio e Som')
insert into Categoria (Designacao) values ('Produtos de Iluminação')
insert into Categoria (Designacao) values ('Produtos de Segurança Doméstica')
insert into Categoria (Designacao) values ('Produtos de Arte Corporal')
insert into Categoria (Designacao) values ('Produtos de Higiene Oral')
insert into Categoria (Designacao) values ('Produtos de Acessibilidade')
insert into Categoria (Designacao) values ('Produtos de Aprendizado e Educação')
insert into Categoria (Designacao) values ('Produtos de Lazer ao Ar Livre')


create Table Unidade(
	Id int identity(1,1) primary key,
	Designacao varchar(100) not null
)


insert into Unidade (Designacao) values ('Peça')
insert into Unidade (Designacao) values ('Par') 
insert into Unidade (Designacao) values ('Metro ')
insert into Unidade (Designacao) values ('Centímetro')
insert into Unidade (Designacao) values ('Quilograma')
insert into Unidade (Designacao) values ('Grama')
insert into Unidade (Designacao) values ('Litro')
insert into Unidade (Designacao) values ('Mililitro')
insert into Unidade (Designacao) values ('Unidade de medida')
insert into Unidade (Designacao) values ('Caixa')
insert into Unidade (Designacao) values ('Pacote')
insert into Unidade (Designacao) values ('Rolo')
insert into Unidade (Designacao) values ('Galão')
insert into Unidade (Designacao) values ('Onça')
insert into Unidade (Designacao) values ('Libra')
insert into Unidade (Designacao) values ('Tonelada')
insert into Unidade (Designacao) values ('Dúzia')
insert into Unidade (Designacao) values ('Metro cúbico')
insert into Unidade (Designacao) values ('Pé cúbico')
insert into Unidade (Designacao) values ('Litro por minuto')

create table Produto(
	Id int identity(1,1) primary key,
	Nome varchar(70),
	Descricao varchar(100),
	QuantidadeStock int,
	PrecoUnit float,
	DataFabricacao varchar(20),
	DataValidade varchar(20),
	Localizacao varchar(50),
	CategoriaID int foreign key references Categoria(Id),
	UnidadeID int foreign key references Unidade(Id),
	UsuarioID int foreign key references Usuario(Id),
	DataCriacao varchar(20) not null
)

create table Fornecimento(
	Id int identity(1,1) primary key,
	QuantidadeFornecimento int,
	ValoPago float,
	DataFornecimento varchar(20),
	ProdutoID int foreign key references Produto(Id),
	FornecedorID int foreign key references Fornecedor(Id),
	UsuarioID int foreign key references Usuario(Id),
	DataCriacao varchar(20) not null
)

create table Provincia(
	Id int identity(1,1) primary key,
	Designacao varchar(100) not null
)

INSERT INTO Provincia (Designacao)
VALUES
    ('Luanda'),
    ('Bengo'),
    ('Benguela'),
    ('Bié'),
    ('Cabinda'),
    ('Cunene'),
    ('Huambo'),
    ('Huíla'),
    ('Kuando Kubango'),
    ('Kwanza Norte'),
    ('Kwanza Sul'),
    ('Lunda Norte'),
    ('Lunda Sul'),
    ('Malanje'),
    ('Moxico'),
    ('Namibe'),
    ('Uíge'),
    ('Zaire');

create table Municipio(
	Id int identity(1,1) primary key,
	Designacao varchar(100) not null,
	ProvinciaID int foreign key references Provincia(Id),
)

Create table Departamento(
	Id int identity(1,1) primary key,
	Designacao varchar(100) not null
)

Create table Funcao(
	Id int identity(1,1) primary key,
	Designacao varchar(100) not null
)

Create table EstadoCivil(
	Id int identity(1,1) primary key,
	Designacao varchar(35) not null
)

INSERT INTO EstadoCivil (Designacao)
VALUES
    ('Solteiro(a)'),
    ('Casado(a)'),
    ('Divorciado(a)'),
    ('Viúvo(a)'),
    ('União Estável'),
    ('Separado(a)'),
    ('Outro');

Create table GrauAcademico(
	Id int identity(1,1) primary key,
	Designacao varchar(35) not null
)

INSERT INTO GrauAcademico (Designacao)
VALUES
    ('Ensino Fundamental'),
    ('Ensino Médio'),
    ('Graduação'),
    ('Pós-Graduação'),
    ('Mestrado'),
    ('Doutorado'),
    ('Pós-Doutorado'),
    ('Outro');

Create table Genero(
	Id int identity(1,1) primary key,
	Designacao varchar(35) not null
)

INSERT INTO Genero (Designacao)
VALUES
    ('Masculino'),
    ('Feminino');

Create table Nacionalidade(
	Id int identity(1,1) primary key,
	Designacao varchar(200) not null
)

INSERT INTO Nacionalidade (Designacao)
VALUES
    ('Afeganistão'),
    ('África do Sul'),
    ('Albânia'),
    ('Alemanha'),
    ('Andorra'),
    ('Angola'),
    ('Antígua e Barbuda'),
    ('Arábia Saudita'),
    ('Argélia'),
    ('Argentina'),
    ('Armênia'),
    ('Austrália'),
    ('Áustria'),
    ('Azerbaijão'),
    ('Bahamas'),
    ('Bangladexe'),
    ('Barbados'),
    ('Barém'),
    ('Bélgica'),
    ('Belize'),
    ('Benim'),
    ('Bielorrússia'),
    ('Bolívia'),
    ('Bósnia e Herzegovina'),
    ('Botsuana'),
    ('Brasil'),
    ('Brunei'),
    ('Bulgária'),
    ('Burquina Faso'),
    ('Burundi'),
    ('Butão'),
    ('Cabo Verde'),
    ('Camarões'),
    ('Camboja'),
    ('Canadá'),
    ('Catar'),
    ('Cazaquistão'),
    ('Chade'),
    ('Chile'),
    ('China'),
    ('Chipre'),
    ('Cingapura'),
    ('Colômbia'),
    ('Comores'),
    ('Congo (Brazzaville)'),
    ('Congo (Kinshasa)'),
    ('Coreia do Norte'),
    ('Coreia do Sul'),
    ('Costa do Marfim'),
    ('Costa Rica'),
    ('Croácia'),
    ('Cuba'),
    ('Dinamarca'),
    ('Djibuti'),
    ('Dominica'),
    ('Egito'),
    ('El Salvador'),
    ('Emirados Árabes Unidos'),
    ('Equador'),
    ('Eritreia'),
    ('Eslováquia'),
    ('Eslovênia'),
    ('Espanha'),
    ('Estados Unidos'),
    ('Estônia'),
    ('Eswatini'),
    ('Etiópia'),
    ('Fiji'),
    ('Filipinas'),
    ('Finlândia'),
    ('França'),
    ('Gabão'),
    ('Gâmbia'),
    ('Gana'),
    ('Geórgia'),
    ('Granada'),
    ('Grécia'),
    ('Guatemala'),
    ('Guiana'),
    ('Guiana Francesa'),
    ('Guiné'),
    ('Guiné Equatorial'),
    ('Guiné-Bissau'),
    ('Haiti'),
    ('Holanda'),
    ('Honduras'),
    ('Hungria'),
    ('Iémen'),
    ('Ilhas Cook'),
    ('Ilhas Marshall'),
    ('Ilhas Salomão'),
    ('Índia'),
    ('Indonésia'),
    ('Irã'),
    ('Iraque'),
    ('Irlanda'),
    ('Islândia'),
    ('Israel'),
    ('Itália'),
    ('Jamaica'),
    ('Japão'),
    ('Jordânia'),
    ('Kosovo'),
    ('Kuwait'),
    ('Laos'),
    ('Lesoto'),
    ('Letônia'),
    ('Líbano'),
    ('Libéria'),
    ('Líbia'),
    ('Listenstaine'),
    ('Lituânia'),
    ('Luxemburgo'),
    ('Macedônia do Norte'),
    ('Madagáscar'),
    ('Malásia'),
    ('Malaui'),
    ('Maldivas'),
    ('Mali'),
    ('Malta'),
    ('Marrocos'),
    ('Maurícia'),
    ('Mauritânia'),
    ('México'),
    ('Micronésia'),
    ('Moçambique'),
    ('Moldávia'),
    ('Mónaco'),
    ('Mongólia'),
    ('Montenegro'),
    ('Myanmar (Birmânia)'),
    ('Namíbia'),
    ('Nauru'),
    ('Nepal'),
    ('Nicarágua'),
    ('Níger'),
    ('Nigéria'),
    ('Noruega'),
    ('Nova Zelândia'),
    ('Omã'),
    ('Palau'),
    ('Panamá'),
    ('Papua-Nova Guiné'),
    ('Paquistão'),
    ('Paraguai'),
    ('Peru'),
    ('Polônia'),
    ('Portugal'),
    ('Quênia'),
    ('Quirguistão'),
    ('Quiribáti'),
    ('Reino Unido'),
    ('República Centro-Africana'),
    ('República Dominicana'),
    ('República Checa'),
    ('Romênia'),
    ('Ruanda'),
    ('Rússia'),
    ('Salvação'),
    ('Samoa'),
    ('Santa Lúcia'),
    ('São Cristóvão e Nevis'),
    ('São Marinho'),
    ('São Tomé e Príncipe'),
    ('São Vicente e Granadinas'),
    ('Senegal'),
    ('Serra Leoa'),
    ('Sérvia'),
    ('Síria'),
    ('Somália'),
    ('Sri Lanka'),
    ('Sudão'),
    ('Sudão do Sul'),
    ('Suécia'),
    ('Suíça'),
    ('Suriname'),
    ('Tadjiquistão'),
    ('Tailândia'),
    ('Taiwan'),
    ('Tanzânia'),
    ('Timor-Leste'),
    ('Togo'),
    ('Tonga'),
    ('Trinidad e Tobago'),
    ('Tunísia'),
    ('Turcomenistão'),
    ('Turquia'),
    ('Tuvalu'),
    ('Ucrânia'),
    ('Uganda'),
    ('Uruguai'),
    ('Uzbequistão'),
    ('Vanuatu'),
    ('Vaticano'),
    ('Venezuela'),
    ('Vietnã'),
    ('Zâmbia'),
    ('Zimbábue');


create table Relativo(
	Id int identity(1,1) primary key,
	NomeCompleto varchar(50) not null,
	Identificacao varchar(30) not null,
	DataNascimento varchar(20),
	UsuarioID int foreign key references Usuario(Id),
	DataCriacao varchar(20) not null
)

Create table EstadoLogin(
	Id int identity(1,1) primary key,
	Designacao varchar(200) not null
)

create table Funcionario(
	Id int identity(1,1) primary key,
	NomeCompleto varchar(50) not null,
	NAgente varchar(20) not null,
	Identificacao varchar(30) not null,
	DataNascimento varchar(20) not null,
	Contacto1 varchar(20),
	Contacto2 varchar(20),
	Email varchar(30),
	Iban varchar(22),
	ContaBancaria varchar(15),
	MunicipioID int foreign key references Municipio(Id),
	Bairro varchar(35),
	Rua varchar(35),
	Casa varchar(15),
	Referencia varchar(35),
	EstadoCivilID int foreign key references EstadoCivil(Id),
	GrauAcademicoID int foreign key references GrauAcademico(Id),
	GeneroID int foreign key references Genero(Id),
	NacionalidadeID int foreign key references Nacionalidade(Id),
	EstadoLoginID int foreign key references EstadoLogin(Id),
	Usuario varchar(36),
	Senha varchar(36),
	Token varchar(16),
	UsuarioID int foreign key references Usuario(Id),
	DataCriacao varchar(20) not null
)

Create table GrauParentesco(
	Id int identity(1,1) primary key,
	Designacao varchar(40) not null
)

INSERT INTO GrauParentesco (Designacao)
VALUES
    ('Pai'),
    ('Mãe'),
    ('Filho'),
    ('Filha'),
    ('Avô'),
    ('Avó'),
    ('Neto'),
    ('Neta'),
    ('Irmão'),
    ('Irmã'),
    ('Tio'),
    ('Tia'),
    ('Primo'),
    ('Prima'),
    ('Sobrinho'),
    ('Sobrinha'),
    ('Cunhado'),
    ('Cunhada'),
    ('Padrinho'),
    ('Madrinha'),
    ('Enteado'),
    ('Enteada'),
    ('Genro'),
    ('Nora'),
    ('Pais'),
    ('Avós'),
    ('Irmãos'),
    ('Tios'),
    ('Primos'),
    ('Sobrinhos'),
    ('Cunhados'),
    ('Padrinhos'),
    ('Enteados'),
    ('Outro');

create table Agregado(
	Id int identity(1,1) primary key,
	RelativoID int foreign key references Relativo(Id),
	FuncionarioID int foreign key references Funcionario(Id),
	GrauParentescoID int foreign key references GrauParentesco(Id),
	UsuarioID int foreign key references Usuario(Id),
	DataCriacao varchar(20) not null
)

Create table Solicitacao(
	Id int identity(1,1) primary key,
	QuantidadeSolicitada int not null,
	DataSolicitacao varchar(20) not null,
	FuncionarioID int foreign key references Funcionario(Id),
	ProdutoID int foreign key references Produto(Id)
)