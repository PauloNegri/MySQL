create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50) not null,
    tipo varchar(50) not null,
    valor decimal(8,2) not null,
    estoque boolean,
    primary key(id)
);

insert into tb_produtos(nome, tipo, valor, estoque)
values("chocolate", "alimento", 10.00, true );
insert into tb_produtos(nome, tipo, valor, estoque)
values("alcool", "limpeza",5.00, true );
insert into tb_produtos(nome, tipo, valor, estoque)
values("tv", "eletrodomesticos",2500.00, true );
insert into tb_produtos(nome, tipo, valor, estoque)
values("Banco Imobiliario", "jogos",110.00, false );
insert into tb_produtos(nome, tipo, valor, estoque)
values("JackDaniel's", "bebidas_alcoolicas",140.00, true );
insert into tb_produtos(nome, tipo, valor, estoque)
values("iphoneXS", "celulares",9000.00, true );
insert into tb_produtos(nome, tipo, valor, estoque)
values("playstation5", "videogame",5000.00, false );
insert into tb_produtos(nome, tipo, valor, estoque)
values("Coca-cola 2L", "bebidas",7.50, true );

select * from tb_produtos;
select * from tb_produtos where valor > 500.00;
select * from tb_produtos where valor > 500.00;

update tb_produtos set estoque = true where id = 7;

