create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
ativo boolean not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
valor decimal(5,2),
qtdProduto int,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

select * from tb_categoria;

insert into tb_categoria(tipo, ativo) values ("Tempero", "true");
insert into tb_categoria(tipo, ativo) values ("Suco", "true");
insert into tb_categoria(tipo, ativo) values ("Legumes", "true");
insert into tb_categoria(tipo, ativo) values ("Frutas", "true");
insert into tb_categoria(tipo, ativo) values ("Verduras", "true");

select * from tb_produto;

insert into tb_produto(nome, valor, qtdProduto) values ("Suco de Laranja", 18.0, 20);
insert into tb_produto(nome, valor, qtdProduto) values ("Chimichurri", 55.0, 50);
insert into tb_produto(nome, valor, qtdProduto) values ("Brocolis", 90.0, 40);
insert into tb_produto(nome, valor, qtdProduto) values ("Banana", 120.0, 70);
insert into tb_produto(nome, valor, qtdProduto) values ("Limao", 29.9, 20);
insert into tb_produto(nome, valor, qtdProduto) values ("Laranja", 89.9, 20);
insert into tb_produto(nome, valor, qtdProduto) values ("Alface", 129.9, 20);
insert into tb_produto(nome, valor, qtdProduto) values ("Tomate", 59.9, 20);

select * from tb_produto;

select * from tb_produto where valor> 50;
select * from tb_produto where valor <3 and valor> 60;
select * from tb_produto where nome like "%c%";

select nome, tb_categoria.tipo, valor from tb_produto as A inner join tb_categoria on categoria_id = tb_categoria.id;

