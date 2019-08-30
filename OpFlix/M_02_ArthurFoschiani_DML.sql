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

insert into Lancamento(IdTipoMidia, NomeMidia, Sinopse, TempoDuracao, IdCategoria, IdDiretor, DataLancamento, IdPlataforma, Descricao)
values (1,'Once Upon a Time','Junção de todas as histórias que conhecemos dos contos de fadas.','40min/ep',3,3,'2016-08-17',1, '6 Temporadas')
, (2,'Indiana Jone','Um aventureiro que não quer nada com a vida.','1h35min',1,2,'2005-08-04',2, '2 Volumes')
, (1,'Friends','História de seis amigos que vivem a vida juntos.','25min/ep',2,1,'1999-08-24',1, '11 Temporadas')

insert into Usuario (NomeUsuario, EmailUsuario, SenhaUsuario, Telefone, CPF, DataDeNascimento, TipoUsuario)
values ('Erik','erik@email.com','123456','5 5555-5555','546123789','2003-12-21', 1)
, ('Cassiana','cassiana@email.com','123456','7 7777-7777','987654321','1999-08-27',1)
, ('Helena','helena@email.com','123456','8 8888-8888','654987123','1997-07-08',2)
, ('Roberto','ro@email.com','123456','2 2222-2222','123456789','1998-06-05',2)

insert into Favorito (IdUsuario, IdLancamento)
values (1,1), (1,3), (2,2), (3,3), (3,2)

--Atulizar Helena como adm
update Usuario
set TipoUsuario = 1
where IdUsuario = 3

insert into Lancamento (IdTipoMidia, NomeMidia, Sinopse, TempoDuracao, IdCategoria, IdDiretor, DataLancamento, IdPlataforma, Descricao)
values (1, 'Deuses Americanos', 'Não faço ideia', '50min/ep', 4, 1, '2019-12-02', 2, '1 Volume')

--Deletar Deuses Americanos
delete from Lancamento
where IdLancamento = 4

--Atualizar Descrição de La Casa de Papel
insert into Lancamento (IdTipoMidia, NomeMidia, Sinopse, TempoDuracao, IdCategoria, IdDiretor, DataLancamento, IdPlataforma, Descricao)
values (1, 'La Casa De Papel', 'Não sei', '50 min/ep', 2, 3, '2019-08-17', 1, '3 Temporadas')

update Lancamento
set Descricao = '3º Temporada'
where IdLancamento = 4