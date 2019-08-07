use M_Gufos

select * from Categorias order by IdCategoria asc;
select * from Eventos order by DataEvento desc;
select * from Usuarios;
select * from Presencas;

select Eventos.*, Categorias.*
from Eventos
inner join Categorias
on Eventos.IdCategoria = Categorias.IdCategoria

select Presencas.*, Usuarios.*, Eventos.*
from Presencas 
inner join Usuarios
on Presencas.IdUsuario = Usuarios.IdUsuario
inner join Eventos
on Presencas.IdEvento = Eventos.IdEvento

select Presencas.*, Usuarios.*, Eventos.*, Categorias.*
from Presencas
inner join Usuarios
on Presencas.IdUsuario = Usuarios.IdUsuario
inner join Eventos
on Presencas.IdEvento = Eventos.IdEvento
inner join Categorias
on Eventos.IdCategoria = Categorias.IdCategoria