create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipoProduto varchar(255),
descricao varchar(255),
receita boolean, 
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255), 
qtdProduto int, 
valor decimal(8,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_categoria;

insert into  tb_categoria(tipoProduto, descricao, receita) values("Remedio", "Indicado para cólicas", false);
insert into  tb_categoria(tipoProduto, descricao, receita) values("Remedio", "Indicado para dores de cabeca", false);
insert into  tb_categoria(tipoProduto, descricao, receita) values("Alimento", "Bala", false);
insert into  tb_categoria(tipoProduto, descricao, receita) values("Cosmetico", "Creme desodorante", false);
insert into  tb_categoria(tipoProduto, descricao, receita) values("Remedio", "Indicado para tratamento de gastrite", true);

select* from tb_produto;

insert into tb_produto(nome, qtdProduto, valor) values ("Ibuprofeno", 100, 19.9);
insert into tb_produto(nome, qtdProduto, valor) values ("Dorflex", 150, 59.90);
insert into tb_produto(nome, qtdProduto, valor) values ("Halls", 80, 2.50);
insert into tb_produto(nome, qtdProduto, valor) values ("Neosaldina", 75, 122.9);
insert into tb_produto(nome, qtdProduto, valor) values ("Herbalife", 10, 29.9);
insert into tb_produto(nome, qtdProduto, valor) values ("Paracetamol", 10, 29.9);
insert into tb_produto(nome, qtdProduto, valor) values ("Tylenol", 110, 48.9);
insert into tb_produto(nome, qtdProduto, valor) values ("Chocolate", 10, 29.9);

select * from tb_produto;

select * from tb_produto where valor > 50;
select * from tb_produto where valor >3 and valor < 60;
select * from tb_produto where nome like "%b%";

select nome, qtdProduto, tb_categoria.tipoProduto,  valor from tb_produto as A inner join tb_categoria on categoria_id = tb_categoria.id;

select nome from tb_produto where categoria_id =2 or categoria_id = 3;