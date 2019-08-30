create database M_OpFlix
use M_OpFlix

create table Diretor (
	IdDiretor int primary key identity
	, Diretor varchar (255) unique not null
);
create table TipoMidia (
	IdTipoMidia int primary key identity
	, TipoMidia varchar (255) unique not null
);
create table Categoria (
	IdCategoria int primary key identity
	, Categoria varchar (255) unique not null
);
create table TipoUsuario (
	IdTipoUsuario int primary key identity
	, TipoUsuario varchar (255) unique not null
);
create table Plataforma (
	IdPlataforma int primary key identity
	, Plataforma varchar (255) unique not null
);
create table Lancamento (
	IdLancamento int primary key identity
	, IdTipoMidia int foreign key references TipoMidia(IdTipoMidia)
	, NomeMidia varchar (255) unique not null
	, Sinopse text
	, TempoDuracao varchar (255)
	, IdCategoria int foreign key references Categoria(IdCategoria)
	, IdDiretor int foreign key references Diretor(IdDiretor)
	, DataLancamento Date
	, IdPlataforma int foreign key references Plataforma(IdPlataforma)
	, Descricao varchar (255)
);
create table Usuario (
	IdUsuario int primary key identity
	, NomeUsuario varchar (255) not null
	, EmailUsuario varchar (255) not null unique
	, SenhaUsuario varchar (255) not null
	, Telefone varchar (255) not null unique
	, CPF varchar (255) not null unique
	, DataDeNascimento Date
	, TipoUsuario int foreign key references TipoUsuario(IdTipoUsuario)
);
create table Favorito (
	IdUsuario int foreign key references Usuario(IdUsuario)
	, IdLancamento int foreign key references Lancamento(IdLancamento)
);