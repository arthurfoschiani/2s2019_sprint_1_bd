USE M_MModa

insert into Marca (Marca)
	values ('Nike')
			, ('Adidas')

insert into Modelo (Modelo, IdMarca)
	values ('SB', 1)
			, ('Jaqueta', 2)
			, ('Moletom', 1)

insert into Cor (Cor)
	values ('Azul')
			,('Preto')

insert into Tamanho (Tamanho)
	values ('P')
			, ('M')
			, ('G')

insert into Roupa (IdModelo, IdCor, IdTamanho)
	values (1,2,2)
			, (2,1,2)
			, (1,1,3)

select Roupa.IdRoupa, Marca.Marca, Modelo.Modelo, Cor.Cor, Tamanho.Tamanho
	from Roupa
	inner join Modelo
	on Roupa.IdModelo = Modelo.IdModelo
	inner join Cor
	on Roupa.IdCor = Cor.IdCor
	inner join Tamanho
	on Roupa.IdTamanho = Tamanho.IdTamanho
	inner join Marca
	on Modelo.IdMarca = Marca.IdMarca