create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(30) not null,
    marca varchar(30) not null,
    primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(30) not null,
    estoque boolean not null,
    preço decimal(7,2) not null,
	categoria_id bigint not null,
    primary key(id),
    foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, marca) 
	values ("tintas", "A");
insert into tb_categoria (tipo, marca) 
	values ("madeira", "B");
insert into tb_categoria (tipo, marca) 
	values ("argamassas", "C");

insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("Preto_fosco", true, 55.00, 1);
insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("vermelha", true, 45.00, 1);
insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("branco", true, 45.00, 1);
insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("MDF", true, 65.00, 2);
insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("Compensado", true, 45.00, 2);
insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("Pallet", true, 25.00, 2);
insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("massa_corrida", true, 48.00, 3);
insert into tb_produto(nome, estoque, preço, categoria_id)
	values ("massa_corrida_seca_rapido", true, 71.00, 3);


-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preço > 50; 
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preço > 03 and preço <= 60;
-- Faça um select utilizando LIKE buscando os Produtos com as letras ma.
select nome from tb_produto where nome like '%MA%';    
-- Faça um select com Inner join entre tabela categoria e produto.
select P.id, marca, P.nome, P.estoque, P.preço from tb_categoria
inner join tb_produto as P on tb_categoria.id = P.categoria_id;
-- Faça um select onde traga todos os Produtos de uma categoria específica.
select P.id, tipo, P.nome, P.estoque, P.preço from tb_categoria
inner join tb_produto as P on tb_categoria.id = P.categoria_id
where  tipo = 'madeira';


