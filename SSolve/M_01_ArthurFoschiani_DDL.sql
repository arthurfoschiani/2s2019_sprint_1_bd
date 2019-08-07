create database M_SSolve
use M_SSolve

create table Empresa (
	IdEmpresa int primary key identity not null
	, Empresa varchar (255) not null unique
);
create table Cliente (
	IdCliente int primary key identity not null
	, Cliente varchar (255) not null unique
	, NomeFantasia varchar (255) not null unique
	, CNPJ varchar (200) not null unique
	, RazaoSocial varchar (255) not null unique
	, Endereco varchar (255) not null
);
create table Servico (
	IdServico int primary key identity not null
	, Servico varchar (255) not null unique
	, Preco varchar (100) not null
);
create table Comodo (
	IdComodo int primary key identity not null
	, Comodo varchar (255) unique not null
);
create table Funcionario (
	IdFuncionario int primary key identity not null
	, Funcionario varchar (255) not null
	, IdEmpresa int foreign key references Empresa(IdEmpresa)
);
create table ComodoServico (
	IdComodoServico int primary key identity not null
	, IdServico int foreign key references Servico(IdServico)
	, IdComodo int foreign key references Comodo(IdComodo)
);
create table Atendimento (
	IdAtendimento int primary key identity not null
	, IdCliente int foreign key references Cliente(IdCliente)
	, IdComodoServico int foreign key references ComodoServico(IdComodoServico)
	, Início DateTime not null
	, Final DateTime not null
);
create table FuncionarioAtendimento (
	IdAtendimento int foreign key references Atendimento(IdAtendimento)
	, IdFuncionario int foreign key references Funcionario(IdFUncionario)
);