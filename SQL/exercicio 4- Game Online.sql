	create database db_generation_game_online;
    
    use db_generation_game_online;
    
    create table tb_classe  (
	id bigint auto_increment not null,
	elemento varchar(255) not null,
	Profissao varchar(255) not null,
	primary key(id));
    
    create table tb_personagem(
	id bigint auto_increment not null,
	nome varchar(255) not null,
	ataque int(8) not null,
	defesa int(8) not null,
	vida int(8) not null,
	id_personagem bigint not null,
	primary key(id),
	foreign key (id_personagem)
	references tb_classe(id)
);

insert into tb_classe (profissao, elemento) values("Açougueiro", "Agua");

insert into tb_classe (profissao, elemento) values("Churrasqueiro", "Fogo");

insert into tb_classe (profissao, elemento) values("Guerreiro", "Ar");

insert into tb_classe (profissao, elemento) values("Feiticeiro", "Fogo");

insert into tb_classe (elemento, profissao) values("Marceneiro", "Agua");


insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Tatiana", 1500, 800, 2500, 1);

insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Chico", 4500, 750, 5100, 2);

insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Zezinha", 2500, 1220, 1300, 3);

insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Tassia", 800, 400, 1500, 4);

insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Aimee", 910, 900, 400, 4);

insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Harry", 500, 700, 1300, 1);

insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Hermione", 700, 750, 2300, 2);

insert into tb_personagem (nome, ataque, defesa, vida, id_personagem) values("Ronald", 100, 150, 600, 5);

select nome, ataque, defesa, vida from tb_personagem where ataque >= 2000;
select nome, ataque, defesa, vida from tb_personagem where defesa between 1000 and 2000;
select nome, ataque, defesa, vida from tb_personagem where nome like "%c";

select nome, ataque, defesa, vida, elemento, Profissao from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.id_personagem;

select nome, ataque, defesa, vida, elemento, Profissao from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.id_personagem where profissao like '%feiticeiro%';


    
    