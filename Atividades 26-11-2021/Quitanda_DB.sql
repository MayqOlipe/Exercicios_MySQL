-- Criando Bando de Dados
 create database db_cidade_das_frutas;
 
 -- Usando o Banco de Dados
     use db_cidade_das_frutas;

-- Criando Primeira Tabela(Categoria) 

     create table tb_categoria (
		id bigint auto_increment,
		tipo_de_fruta varchar(255) not null,
        Semente boolean not null,
		Agrotoxicos boolean not null,       
               
        primary key (id)
     );     
     
     -- Select pra checar tabela
     select * from tb_categoria;
     
     -- Populando Tabela
    insert into tb_categoria (tipo_de_fruta, Semente, Agrotoxicos) values ("Cítrica",false,true);
	insert into tb_categoria (tipo_de_fruta, Semente, Agrotoxicos) values ("Suave",true,false);
	insert into tb_categoria (tipo_de_fruta, Semente, Agrotoxicos) values ("Pastosa",true,true);
	insert into tb_categoria (tipo_de_fruta, Semente, Agrotoxicos) values ("Casca",false,false);
	insert into tb_categoria (tipo_de_fruta, Semente, Agrotoxicos) values ("teste",true,false);
    
-- Criando segunda tabela(produtos)
 
     create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        estoque_produto int not null,
        validade varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     -- select pra checar tabela
     select *from tb_produto;
     
     -- Populando tabela
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Maça",100,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Banana",60,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Abacaxi",80,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Pêra",60,255,"30 dias",2);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Caqui",80,255,"30 dias",3);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Laranja",60,255,"30 dias",4);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Mexerica",45,255,"15 dias",5);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Mamão",20,255,"15 dias",5);
    
    -- Select de preço maior que 50
    select * from tb_produto where preco > 50;
    
    -- select preço entre 3 e 60 reais
    select * from tb_produto where preco between 3 and 60;
    
    -- Select de produtos começando com C 
    select * from tb_produto where nome like "%C%";
    
	-- Inner join entre  tabela categoria e produto.
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
    -- Select de todos os Produtos de uma categoria 
     
    select * from tb_produto where categoria_id = 5; 