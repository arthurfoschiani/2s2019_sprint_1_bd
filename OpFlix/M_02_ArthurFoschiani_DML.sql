use M_OpFlix

insert into Diretor(Diretor)
values ('David Crane'), ('George Lucas'), ('Adam Horowitz')

insert into TipoMidia(TipoMidia)
values ('Série'), ('Filme'), ('Anime'), ('Desenho')

insert into Categoria(Categoria)
values ('Ação'), ('Comédia'), ('Ficção')

insert into TipoUsuario(TipoUsuario)
values ('Administrador'), ('Comum')

insert into Plataforma(Plataforma)
values ('Netflix'), ('Amazon Prime'), ('Cinema')

insert into Lancamento(IdTipoMidia, NomeMidia, Descricao, TempoDuracao, IdCategoria, IdDiretor, DataLancamento, IdPlataforma)
values (1,'Once Upon a Time','Junção de todas as histórias que conhecemos dos contos de fadas.','40min/ep',3,3,'2016-08-17',1)
, (2,'Indiana Jone','Um aventureiro que não quer nada com a vida.','1h35min',1,2,'2005-08-04',2)
, (1,'Friends','História de seis amigos que vivem a vida juntos.','25min/ep',2,1,'1999-08-24',1)

insert into Usuario (NomeUsuario, EmailUsuario, SenhaUsuario, Telefone, CPF, DataDeNascimento, TipoUsuario)
values ('Erik','erik@email.com','123456','5 5555-5555','546123789','2003-12-21', 1)
, ('Cassiana','cassiana@email.com','123456','7 7777-7777','987654321','1999-08-27',1)
, ('Helena','helena@email.com','123456','8 8888-8888','654987123','1997-07-08',2)
, ('Roberto','ro@email.com','123456','2 2222-2222','123456789','1998-06-05',2)

insert into Favorito (IdUsuario, IdLancamento)
values (1,1), (1,3), (2,2), (3,3), (3,2)