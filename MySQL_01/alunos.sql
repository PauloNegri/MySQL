create database db_registro_escola;
use db_registro_escola;

create table tb_alunos(
	id bigint auto_increment,
    nome varchar(50) not null,
    sexo char not null,
    nota decimal(4,1) not null,
    aprovado boolean,
    primary key(id)
);

insert into tb_alunos(nome, sexo, nota, aprovado)
values("João", "M", 10.0, true );
insert into tb_alunos(nome, sexo, nota, aprovado)
values("Maria", "F", 10.0, true );
insert into tb_alunos(nome, sexo, nota, aprovado)
values("Estela", "F",7.5, true );
insert into tb_alunos(nome, sexo, nota, aprovado)
values("Henrique", "M",6.2, false );
insert into tb_alunos(nome, sexo, nota, aprovado)
values("Daniel", "M",4.8, false );
insert into tb_alunos(nome, sexo, nota, aprovado)
values("Joanna", "F",7.0, true );
insert into tb_alunos(nome, sexo, nota, aprovado)
values("Mauricio", "F",5.8, false );
insert into tb_alunos(nome, sexo, nota, aprovado)
values("Herique", "M",7.5, true );

select * from tb_alunos;
select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;

update tb_alunos set nota = 7.0, aprovado = true  where id = 4;

