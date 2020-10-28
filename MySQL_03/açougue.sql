create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(30) not null,
    marca varchar(30) not null,
    primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(30) not null,
    validade date not null,
    estoque boolean not null,
    valor decimal(7,2) not null,
	categoria_id bigint not null,
    primary key(id),
    foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, marca) 
	values ("condimento", "yoki");
insert into tb_categoria (tipo, marca) 
	values ("alimetos", "friboi");
insert into tb_categoria (tipo, marca) 
	values ("alimentos", "seara");
insert into tb_categoria (tipo, marca) 
	values ("bebida", "coca-cola");
insert into tb_categoria (tipo, marca) 
	values ("carvão", "são josé");
    

insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Carvão_5kg", "2021/10/28", true, 16.00, 5);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Carvão_10kg", '2021/10/28', false, 30.00, 5);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Farofa", '2021/01/14', true, 4.50, 1);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Coca-cola_2L", '2021/04/15', true, 10.00, 4);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("H2O", '2021/03/11', true, 6.00, 4);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Coca-cola_350ml", '2021/01/23', true, 5.00, 4);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Patinho", '2020/11/18', true, 30.00, 3);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Costela_Suina", '2020/11/03', true, 50.00, 2);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Filé_Frango", '2020/11/03', true, 19.00, 2);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Linguiça", '2020/11/25', true, 11.00, 3);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Patinho", '2020/11/18', true, 32.00, 2);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Costela_Suina", '2020/11/03', true, 45.00, 3);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Filé_Frango", '2020/11/03', true, 21.00, 3);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Linguiça", '2020/11/25', true, 9.00, 2);
insert into tb_produto(nome, validade, estoque, valor, categoria_id)
	values ("Pipoca", '2021/07/14', true, 1.50, 1);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 40; 
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor > 03 and valor <= 60;
-- Faça um select utilizando LIKE buscando os Produtos com as letras CO..
select nome from tb_produto where nome like '%co%';    
-- Faça um um select com Inner join entre tabela categoria e produto.
select P.id, tb_categoria.marca, P.nome, P.validade, P.estoque, P.valor from tb_categoria
inner join tb_produto as P on tb_categoria.id = P.categoria_id;
-- Faça um select onde traga todos os Produtos de uma categoria específica.
select tb_categoria.marca, tb_produto.* from tb_categoria
inner join tb_produto on tb_categoria.id = tb_produto.categoria_id
where  marca = 'yoki';


