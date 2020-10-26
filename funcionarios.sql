create database db_servicos_rh;
use db_servicos_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(70) not null,
cargo varchar(30) not null,
salario decimal(8,2) not null,
ferias_pendentes boolean not null,
tempo_de_empresa varchar(8),
primary key(id)
);

insert into tb_funcionarios(nome, cargo, salario, ferias_pendentes, tempo_de_empresa)
values("Paulo", "Gerente de TI", 25000.00, false, "10 anos");
insert into tb_funcionarios(nome, cargo, salario, ferias_pendentes, tempo_de_empresa)
values("Antonio", "Dev JR JS", 4000.00, false, "1 anos");
insert into tb_funcionarios(nome, cargo, salario, ferias_pendentes, tempo_de_empresa)
values("Maria", "recepcao", 1950.00, false, "2 anos");
insert into tb_funcionarios(nome, cargo, salario, ferias_pendentes, tempo_de_empresa)
values("Estela", "Dev ESP C#", 9500.00, false, "7 anos");
insert into tb_funcionarios(nome, cargo, salario, ferias_pendentes, tempo_de_empresa)
values("Ricardo", "Dev ESP Philton", 8200.00, false, "6 anos");

select * from  tb_funcionarios where salario > 2000.00 ;
select * from  tb_funcionarios where salario < 2000.00 ;

update tb_funcionarios set cargo = "devjr.", salario = 3000.00 where id = 5