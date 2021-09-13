create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment not null, 
Tipo varchar(255), 
tamanho varchar (9), 
borda varchar (255),
primary key(id));

create table tb_Pizza(
id bigint auto_increment not null, 
nome varchar(255), 
preco decimal(6,2),  
tipo varchar(30), 
tipoentrega varchar(3), 
id_categoria bigint, 
primary key(id),
foreign key(id_categoria) 
references tb_categoria(id));

insert into tb_categoria (tipo, tamanho) values ("Doce", "Brotinho");
insert into tb_categoria (tipo, tamanho) values ("Salgada", "Familia");
insert into tb_categoria (tipo, tamanho) values ("Vegetariana", "Individual");
insert into tb_categoria (tipo, tamanho) values ("Frutos do mar","Familia");
insert into tb_categoria (tipo, tamanho) values ("Aves", "Individual");

select * from tb_categoria;

insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("Calabreza", 39.00 , "Salgada", "delivery", 1 );
insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("4 Queijos", 49.00 , "Salgada", "delivery", 2 );
insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("Camarao", 58.00, "Frutos do mar", "balcao", 3 );
insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("Frango", 29.00, "Aves", "delivery", 4 );
insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("Banana com doce de leite", 39.00, "Doce", "balcao", 5 );
insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("Prestigio", 41.00, "Doce", "delivery", 4 );
insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("Romeu e Julieta", 48.00, "Doce", "balcao", 3 );
insert into tb_Pizza (nome, preco, tipo, tipoentrega, id_categoria) values ("Nutella", 39.00, "Doce", "balcao", 2 );

select * from tb_Pizza;

select nome, preco, tipo, tipoentrega from tb_pizza where preco > 45;
select nome, preco, tipo, tipoentrega from tb_pizza where preco >= 29 and preco <= 60;
select nome, preco, tipo, tipoentrega from tb_pizza where nome like 'c%';

select tb_pizza.nome, tb_pizza.preco, tb_pizza.tipo, tb_pizza.tipoentrega, tb_categoria.tamanho from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_categoria where tipo = "doce";





