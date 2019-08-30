USE M_PSales;

INSERT INTO Cursos (Nome)
	VALUES	('Técnico em Dev. Sistemas');

INSERT INTO Cursos
	VALUES	('Técnico em Redes');

INSERT INTO Cursos (Nome)
	VALUES	('Curso A')
			,('Curso B')
			,('Curso C');

SELECT Nome, IdCurso
	FROM Cursos WHERE IdCurso = 1

SELECT Nome
	FROM Cursos

SELECT *
	FROM Cursos 

UPDATE Cursos
	SET Nome = 'Desenvolvimento'
	WHERE IdCurso = 1

/*
UPDATE [TABELA]
	SET COLUNA = 'NOVO VALOR'
	WHERE [CONDICAO]

*/

SELECT *
	FROM Cursos
	WHERE IdCurso = 6;

DELETE FROM Cursos
	WHERE IdCurso = 6;

DELETE FROM Cursos
	WHERE IdCurso = 3
DELETE FROM Cursos
	WHERE IdCurso = 4
DELETE FROM Cursos
	WHERE IdCurso = 5

INSERT INTO Cursos (Nome) VALUES ('Desenvolvimentoss');
INSERT INTO Cursos (Nome) VALUES ('Técnico de Redes');

INSERT INTO Disciplinas (Nome, IdCurso)
	values ('HTML', 1)
			, ('CSS', 1)
			, ('BD', 1)
			, ('HTML', 7);

INSERT INTO Disciplinas (Nome)
	values ('Design')

SELECT Disciplinas.*, Cursos.Nome
	FROM Disciplinas
	FULL JOIN Cursos
	ON Disciplinas.IdCurso = Cursos.IdCurso