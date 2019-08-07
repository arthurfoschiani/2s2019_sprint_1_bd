use M_SSolve

insert into Empresa(Empresa)
values ('SSoulve'), ('AgoraVai')

insert into Cliente (NomeFantasia, CNPJ, RazaoSocial, Endereco)
values ('Pizza Hut', '80.628.125/0001-08', 'American Pizza Restaurantes Eireli', 'Rua Miguel Maia, 690')
, ('Samsung', '13.739.068/0001-39', 'Samsung Electronics Co., Ltd.', 'Rua Luiza Miller, 756')
, ('McDonalds', '72.160.320/0001-10', 'McDonalds Corporation', 'Rua Carlos Martes, 435')

insert into Servico (Servico, Preco)
values ('Arrumar chuveiro','R$ 200'), ('Trocar lampada','R$ 100'), ('Quebrar parede','R$ 2.100'), ('Instalação de ar-condicionado','R$ 1.500')

insert into Comodo (Comodo)
values ('Sala'), ('Cozinha'), ('Banheiro')

insert into Funcionario (Funcionario)
values ('Luciano'), ('Maria')

insert into Atendimento (IdCliente, IdComodoServico, Início, Final)
values (3, 4, '2019-12-12T15:00:00', '2019-12-12T17:00:00'), (2, 3, '2019-08-28T15:00:00', '2019-08-28T19:00:00')

insert into ComodoServico (IdComodoServico, IdServico, IdComodo)
values (1,1,3), (2,2,1), (3,3,1), (4,4,2)

insert into FuncionarioAtendimento (IdFuncionario, IdAtendimento)
values (1,1), (2,1), (1,2), (2,2)