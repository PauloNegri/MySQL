create database db_e_commerce;
use db_e_commerce;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(30) not null,
    marca varchar(30) not null,
    primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    categoria_id bigint not null,
    cor varchar(30) not null,
    estoque boolean not null,
    valor decimal(7,2) not null,
        
    primary key(id),
    foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, marca) 
	values ("regata", "rip curl");
insert into tb_categoria (tipo, marca) 
	values ("blusão", "quilksilver");
insert into tb_categoria (tipo, marca) 
	values ("tenis", "vans");
insert into tb_categoria (tipo, marca) 
	values ("calça", "billabong");
insert into tb_categoria (tipo, marca) 
	values ("blusa", "mcd");
    

insert into tb_produto(categoria_id,cor,estoque,valor)
	values (2,"cinza", true,350.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (5,"preta", true,50.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (5,"verde", true,50.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (5,"azul", true,50.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (5,"branca", true,50.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (2,"rosa", true,450.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (1,"cinza", true,75.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (4,"jeans", true,190.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (2,"cinza", true,350.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (1,"verde", true,50.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (4,"preta", true,230.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (2,"cinza", true,350.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (3,"vermelho", true,250.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (1,"laranja", true,60.00);
insert into tb_produto(categoria_id,cor,estoque,valor)
	values (3,"cinza", true,350.00);

-- Faça um select que retorne os Produtos com o valor maior do que 200.
select * from tb_produto where valor > 200; 
-- Faça um select trazendo os Produtos com valor entre 40 e 200.
select * from tb_produto where valor > 40 and valor <= 200;
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select tipo from tb_categoria where tipo like '%c%';    


