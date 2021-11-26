-- Criando meu bando de dados
create database db_generation_game_online;

-- Usando meu Banco de dados pra criar e manipular ele
use db_generation_game_online;

-- Criando Minha Primeira Tabela(Classes)
create table tb_classe(
	id_class bigint(5) auto_increment,
    tipo varchar(30) not null,
    arma varchar(30) not null,
    subarma varchar(30) not null,
    
    primary key(id_class)
);
-- Populando minha Tabela com informações úteis

insert into tb_classe (tipo, arma, subarma) values ("Arqueiro", "Arco", "Flechas");
insert into tb_classe (tipo, arma, subarma) values ("Guerreiro", "Espada Longa", "Escudo");
insert into tb_classe (tipo, arma, subarma) values ("Mago", "Cajado", "Orbe de Energia");
insert into tb_classe (tipo, arma, subarma) values ("Ninja", "Adagas", "Shuriken");
insert into tb_classe (tipo, arma, subarma) values ("Curandeiro", "Livro", "Orbe de Cura");

-- Pesquisando na minha tabela se está tudo certo

select * from tb_classe;

-- Criando minha Segunda Tabela(Personagens)

create table tb_personagem(
	id_pers bigint(5) auto_increment,
    nome varchar(30) not null,
    raça varchar(30) not null,
    cidade_inicial varchar(30) not null,
    altura decimal (3,2),
    peso decimal (3,2),
    fk_id_classe bigint not null,

    primary key(id_pers),
    foreign key(fk_id_classe) references tb_classe(id_class)
);
-- alterando coisas na tabela

alter table tb_personagem modify peso int(5);
alter table tb_personagem change altura Ataque int;
alter table tb_personagem change peso Defesa int;

-- Populando minha segunda tabela

insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Bluue", "Elfo", "Ionia", 2500, 1000, 1);
insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Jorge", "Humano", "Noxus", 3000, 7000, 2);
insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Zero", "Humano", "Ionia", 5000, 1000, 3);
insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Leona", "Anã", "Bandle City", 1000, 10000, 2);
insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Sage", "Ninfa", "Sherwood", 500, 1200, 5);
insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Moira", "Goblin", "Piltover", 11000, 2000, 4);
insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Peudes", "Gnomo", "Bandle City", 2000, 3000, 1);
insert into tb_personagem (nome, raça, cidade_inicial, Ataque, Defesa, fk_id_classe) values ("Zarps", "Minotauro", "Ionia", 15000, 1000, 3);

-- Alterando Valores da minha tabela

update tb_personagem set nome = "Chris"
	where id_pers = 3;

-- Pesquisando na minha segunda tabela pra ver como ficou

select * from tb_personagem;

-- Usando um select que me retorne os personagens com ataque maior que 2000

select * from tb_personagem where Ataque > 2000;

-- Usando um select que me retorne os personagens com defesa entre 1000 e 2000

select * from tb_personagem where Defesa between 1000 and 2000;

-- Usando Like pra buscar personagens com a letra c

select * from tb_personagem where nome like '%c%';

-- inner join pra relacionar as duas tabelas e mostrar

select * from tb_personagem p 
	inner join tb_classe c on p.fk_id_classe = c.id_class;

-- Select com Classe especifica

select *from tb_personagem where fk_id_classe like '2';