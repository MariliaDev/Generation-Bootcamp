create database db_escola;

use db_escola;

create table estudantes(
matricula bigint auto_increment,
nome varchar(255) not null,
turma varchar(255),
idade varchar(5),
nota double not null,
primary key (matricula)
);

insert into estudantes (nome, turma, idade, nota) values ("Mariele", "5º ano", 18, 8);
insert into estudantes (nome, turma, idade, nota) values ("Anderson", "7º ano", 15, 8.5);
insert into estudantes (nome, turma, idade, nota) values ("Dandara", "9º ano", 12, 7);
insert into estudantes (nome, turma, idade, nota) values ("Tatiana", "2º ano", 12, 6.8);
insert into estudantes (nome, turma, idade, nota) values ("Josefa", "8º ano", 13, 5);
insert into estudantes (nome, turma, idade, nota) values ("Sidnei", "3º ano", 10, 4);
insert into estudantes (nome, turma, idade, nota) values ("Bekim", "10º ano", 28, 9);
insert into estudantes (nome, turma, idade, nota) values ("Shaba", "4º ano", 11, 10);

select * from estudantes where nota >7;
select * from estudantes where nota <7;

update estudantes set nota = 5 where matricula = 3;

