create database db_DP;

use db_DP;

create table funcionarios(
matricula bigint auto_increment,
nome varchar(255) not null,
cargo varchar (255),
setor varchar (255),
salario double not null,
primary key(matricula)
);

insert into funcionarios (nome, cargo, setor, salario) values ("Gustavo", "Programador", "TI", 2500);
insert into funcionarios (nome, cargo, setor, salario) values ("Tatiana", "Vendedora", "Comercial", 1800);
insert into funcionarios (nome, cargo, setor, salario) values ("Josefa", "Analista", "RH", 1500);
insert into funcionarios (nome, cargo, setor, salario) values ("Tassia", "Analista", "Comercial", 800);
insert into funcionarios (nome, cargo, setor, salario) values ("Wesley", "Assistente", "Atendimento ao Cliente", 3800);

select * from funcionarios where salario >2000;
select * from funcionarios where salario <2000;

update funcionarios set salario = 1200 where matricula = 4;




