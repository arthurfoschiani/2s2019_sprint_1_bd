USE M_Livros

INSERT INTO Generos(Descrição)
	VALUES ('Ação')
		, ('Aventura')
		, ('Romance')
SELECT *
	FROM Generos

INSERT INTO Ativo(Nome)
	VALUES ('Ativo')
		, ('Não Ativo')
SELECT *
	FROM Ativo 

INSERT INTO Autores(Nome, Email, IdAtivo, DataDeNascimento)
	VALUES ('Fernando', 'tes@tes.com', 1, '10/10/1978')
			, ('Helena', 'teste@teste.com', 1, '18/05/2000')
			, ('Roberto', 'test@test.com', 2, '21/12/1976')
SELECT *
	FROM Autores

INSERT INTO Livros(Nome, IdAutores, IdGeneros)
	VALUES ('ATDM', 18, 1)
			, ('ATDC', 18, 2)
			, ('Senhor dos Anéis', 19, 1)
SELECT *
	FROM Livros

SELECT Livros.IdLivros, Livros.Nome, Autores.Nome, Generos.Descrição
	FROM Livros
	JOIN Autores
	ON Livros.IdAutores = Autores.IdAutores
	JOIN Generos
	ON Livros.IdGeneros = Generos.IdGeneros