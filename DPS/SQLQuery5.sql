CREATE DATABASE M_DPS
USE M_DPS

create table Departamentos (
	IdDepartamento INT PRIMARY KEY IDENTITY
	, Departamento VARCHAR (100) UNIQUE NOT NULL
);
create table Habilidades (
	IdHabilidade INT PRIMARY KEY IDENTITY
	, Habilidade VARCHAR (200) UNIQUE NOT NULL
);
create table Funcionários (
	IdFuncionario INT PRIMARY KEY IDENTITY
	, Funcionario VARCHAR (200) UNIQUE NOT NULL
	, IdDepartamento INT FOREIGN KEY REFERENCES Departamentos(IdDepartamento)
);
create table Trabalhadores (
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionários(IdFuncionario)
	, IdHabilidade INT FOREIGN KEY REFERENCES Habilidades(IdHabilidade)
);

-- DDL --

insert into Departamentos(Departamento)
	values ('A')
		, ('B')
select * from Departamentos

insert into Habilidades(Habilidade)
	values ('Escrever Rápido')
		, ('Comunicativo')
		, ('Desenho')
select * from Habilidades

insert into Funcionários(Funcionario, IdDepartamento)
	values ('Arthur', 1)
		, ('Bruna', 1)
		, ('César', 1)
		, ('Danilo', 2)
select * from Funcionários

insert into Trabalhadores(IdFuncionario, IdHabilidade)
	values (1, 1)
		, (2, 3)
		, (1, 2)
select * from Trabalhadores

select Trabalhadores.IdFuncionario, Funcionários.Funcionario, Habilidades.Habilidade, Departamentos.Departamento
	from Trabalhadores
	inner join Funcionários
	on Trabalhadores.IdFuncionario = Funcionários.IdFuncionario
	inner join Habilidades
	on Trabalhadores.IdHabilidade = Habilidades.IdHabilidade
	inner join Departamentos
	on Funcionários.IdDepartamento = Departamentos.IdDepartamento