USE M_SStop;

INSERT INTO EstilosMusicais(Nome)
	VALUES	('POP')
			,('MPB')
			,('FUNK');

INSERT INTO Artistas(Nome, IdEstilosMusicais)
	VALUES	('sw', 1)
			, ('CL', 2)
			, ('AN', 3)

DELETE FROM Artistas
	WHERE IdArtista = 1;

DELETE FROM Artistas
	WHERE IdArtista = 2;

DELETE FROM Artistas
	WHERE IdArtista = 3;

SELECT *
	FROM EstilosMusicais

SELECT *
	FROM Artistas