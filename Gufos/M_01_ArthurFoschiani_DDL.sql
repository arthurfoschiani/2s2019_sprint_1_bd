create database M_Gufos
use M_Gufos

create table Usuarios (
	IdUsuario int identity not null primary key
	, Nome varchar (255) not null
	, Email varchar (255) unique not null
	, Senha varchar (255) not null
	, Permissao varchar(255) not null
);
create table Categorias (
	IdCategoria int primary key identity not null
	, Nome varchar (255) not null unique
);
create table Eventos (
	IdEvento int primary key not null identity
	, Titulo varchar (255) not null
	, Descricao text
	, DataEvento datetime not null
	, Localizacao varchar (255) null
	, Ativo bit not null Default (1)
	, IdCategoria int foreign key references Categorias(IdCategoria)
);
create table Presencas (
	IdUsuario int foreign key references Usuarios(IdUsuario)
	, IdEvento int foreign key references Eventos(IdEvento)
);
