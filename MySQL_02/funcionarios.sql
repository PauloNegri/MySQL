create database db_RH2;
use db_RH2;

create table tb_cargo(
	id bigint auto_increment,
    cargo varchar(30) not null,
    salario decimal(8,2) not null,
    primary key(id)
);
create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(30) not null,
    tempo_de_empresa varchar(30) not null,
    ferias_vencidas boolean not null,
    atrasos int(2) not null,
    cargo_id bigint not null,
    
    primary key(id),
    foreign key(cargo_id) references tb_cargo (id)
);

insert into tb_cargo (cargo, salario) 
	values ("dev python",9000.00);
insert into tb_cargo (cargo, salario) 
	values ("dev js",7500.00);
insert into tb_cargo (cargo, salario) 
	values ("cientista de dados ",11000.00);
insert into tb_cargo (cargo, salario) 
	values ("desing ux",5000.00);
insert into tb_cargo (cargo, salario) 
	values ("estagiario",1000.00);
    

insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id) 
	values ("Fernando", "3 anos", false,"12", 4);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)   
    values ("Erika", "3 anos", false,"1", 4);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Mauricio", "8 anos", false,"160", 1);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Jonathan", "3 anos", false,"0", 2);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Fernando", "4 anos", false,"7", 3);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Leia", "2 anos", false,"6", 2);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Ricardo", "1 ano", false,"9", 5);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Ribeiro", "1 ano", false,"1", 5);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Elizandra", "6 anos", false,"23", 4);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Carol", "1 ano", false,"0", 5);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Barbara", "3 anos", false,"15", 4);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Paulo", "3 anos", false,"12", 4);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Leonardo", "3 anos", false,"8", 3);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Diana", "3 anos", false,"0", 1);
insert into tb_funcionario (nome, tempo_de_empresa,ferias_vencidas,atrasos, cargo_id)    
    values ("Jaqueline", "3 anos", false,"7", 2);
    
-- Faça um select que retorne os funcionários com o salário maior do que 2000.
select F.*, C.salario from tb_cargo AS C
inner join tb_funcionario AS F on C.id =F.cargo_id 
where salario > 2000; 
-- Faça um select trazendo os funcionários com salário entre 1000 e 2000.
select F.*, C.salario from tb_cargo AS C
inner join tb_funcionario AS F on C.id =F.cargo_id 
where salario > 999 AND salario <=2000 ;
-- Faça um select utilizando LIKE buscando os Funcionários com a letra C.
select *from tb_funcionario where nome like '%c%';