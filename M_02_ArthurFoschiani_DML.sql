use M_Gufos

insert into Usuarios (Nome, Email, Senha, Permissao)
values ('Administrador','admin@admin.com','123456','Administrador')
		, ('Arthur','a@a.com','123456','Aluno');
select * from Usuarios

insert into Categorias(Nome)
values ('Jogos')
		, ('MeetUp')
		, ('Futebol');
select * from Eventos order by IdEvento asc;

insert into Eventos(Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria)
values ('Ping-Pong','Campeonato de Ping-Pong',getdate(),1,'Alameda Barão de Limeira, 539',1)
		, ('MeetUp','BD Relacionais',getdate(),1,'Alameda Barão de Limeira, 539',2)

insert into Presencas(IdUsuario,IdEvento) 
values (2,3)
select * from Presencas