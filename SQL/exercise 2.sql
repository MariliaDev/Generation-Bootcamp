create database db_ecommerce;

use db_ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar(255),
categoria varchar(255),
genero varchar(255),
valor double not null,
primary key(id)
);

insert into produtos (nome, categoria, genero, valor) values ("Bota Coturno", "Calçados", "Feminino", 199.90);
insert into produtos (nome, categoria, genero, valor) values ("Chuteira", "Calçados", "Unissex", 399.90);
insert into produtos (nome, categoria, genero, valor) values ("Mala", "Bolsas e Mochilas", "Viagem", 599.90);
insert into produtos (nome, categoria, genero, valor) values ("Calça Skinny", "Calças", "Unissex", 99.90);
insert into produtos (nome, categoria, genero, valor) values ("Televisao", "Eletrodomestico", "Casa", 4999.90);
insert into produtos (nome, categoria, genero, valor) values ("Edredom", "Cama, Besa e Banho", "Casa", 501.00);
insert into produtos (nome, categoria, genero, valor) values ("Relogio", "Acessorios", "Unissex", 299.90);
insert into produtos (nome, categoria, genero, valor) values ("Sutia", "Underwear", "Feminino", 89.90);

select * from produtos where valor > 500;
select * from produtos where valor <500;

update produtos set valor = 550.00 where id = 2;


