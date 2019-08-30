use M_OpFlix
-- Mostrar Diretores
select * from Diretor order by IdDiretor asc
-- Mostrar TipoMidia
select * from TipoMidia order by IdTipoMidia asc
-- Mostrar Categoria
select * from Categoria order by IdCategoria asc
-- Mostrar TipoUsuario
select * from TipoUsuario order by IdTipoUsuario asc
-- Mostrar Plataforma
select * from Plataforma order by IdPlataforma asc
-- Mostrar Lançamento odenada por data de lançamento
select Lancamento.*, TipoMidia.TipoMidia, Categoria.Categoria, Diretor.Diretor, Plataforma.Plataforma
from Lancamento 
inner join TipoMidia
on Lancamento.IdTipoMidia = TipoMidia.IdTipoMidia
inner join Categoria
on Lancamento.IdCategoria = Categoria.IdCategoria
inner join Diretor
on Lancamento.IdDiretor = Diretor.IdDiretor
inner join Plataforma
on Lancamento.IdPlataforma = Plataforma.IdPlataforma
order by DataLancamento asc
-- Mostrar Usuários
select Usuario.*, TipoUsuario.TipoUsuario
from Usuario
inner join TipoUsuario
on Usuario.TipoUsuario = TipoUsuario.IdTipoUsuario
-- Mostrar Favoritos
select Favorito.*, Usuario.NomeUsuario, Lancamento.NomeMidia
from Favorito
inner join Usuario
on Favorito.IdUsuario = Usuario.IdUsuario
inner join Lancamento
on Favorito.IdLancamento = Lancamento.IdLancamento

-- Buscar por mês
SELECT * FROM Lancamento WHERE MONTH(DataLancamento) = '08'

-- Buscar por Plataforma
select Lancamento.*, TipoMidia.TipoMidia, Categoria.Categoria, Diretor.Diretor, Plataforma.Plataforma
from Lancamento 
inner join TipoMidia
on Lancamento.IdTipoMidia = TipoMidia.IdTipoMidia
inner join Categoria
on Lancamento.IdCategoria = Categoria.IdCategoria
inner join Diretor
on Lancamento.IdDiretor = Diretor.IdDiretor
inner join Plataforma
on Lancamento.IdPlataforma = Plataforma.IdPlataforma
where Plataforma like '%rime'

--Buscar por Midia
select Lancamento.*, TipoMidia.TipoMidia, Categoria.Categoria, Diretor.Diretor, Plataforma.Plataforma
from Lancamento 
inner join TipoMidia
on Lancamento.IdTipoMidia = TipoMidia.IdTipoMidia
inner join Categoria
on Lancamento.IdCategoria = Categoria.IdCategoria
inner join Diretor
on Lancamento.IdDiretor = Diretor.IdDiretor
inner join Plataforma
on Lancamento.IdPlataforma = Plataforma.IdPlataforma
where Lancamento.NomeMidia like '%ime'

--buscar por Gênero
select Lancamento.*, TipoMidia.TipoMidia, Categoria.Categoria, Diretor.Diretor, Plataforma.Plataforma
from Lancamento 
inner join TipoMidia
on Lancamento.IdTipoMidia = TipoMidia.IdTipoMidia
inner join Categoria
on Lancamento.IdCategoria = Categoria.IdCategoria
inner join Diretor
on Lancamento.IdDiretor = Diretor.IdDiretor
inner join Plataforma
on Lancamento.IdPlataforma = Plataforma.IdPlataforma
where Categoria like '%ão'

--buscar a quantidade de Lançamentos
select count (IdLancamento) from Lancamento

--buscar todas  as categorias mesmo as que não estão vinculadas
select * from Categoria

--buscar todas  as plataformas mesmo as que não estão vinculadas
select * from Plataforma order by IdPLataforma asc

--Buscar através da Procedure a quantidade de lançamentos por categoria
create procedure MostrarMidiasCadatradasPorCategoria @Quantidade varchar (255)
as 
select count (IdLancamento) from Lancamento
where Lancamento.IdCategoria = (select IdCategoria from Categoria where Categoria.Categoria = @Quantidade)

exec MostrarMidiasCadatradasPorCategoria @quantidade = 'Ficção'