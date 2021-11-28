-- Criando Banco de Dados
create database db_construindo_a_nossa_vida;

-- Usando Banco de Dados
use db_construindo_a_nossa_vida;
     
-- Criando Primeira Tabela(Categoria)
     
     create table tb_categoria (
		id bigint auto_increment,
        
        promocao boolean not null, 
        desconto varchar (255) not null,
        tipo_produto varchar (255) not null,
               
        primary key (id)
     );     
     
     -- Select pra checar tabela
     select * from tb_categoria;
     
     -- Populando minha tabela
    insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "10%","Materiais de Construção");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (false, "0%","Ferramentas de Jardinagem"); 
	insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "50%","Decoração de interiores");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (false, "0%","Tintas");
    insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "20%","Materiais Hidraulicos");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "25%","Paisagismo"); 
 
 -- Crianto Segunda Tabela(Produto)
 
     create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        estoque_produto int not null,
        data_validade date,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     -- Select pra Checar Tabela
     select *from tb_produto;
     
	-- Populando Tabela
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Cimento",14.50,255,"2024-10-25",1);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Telhas",6.50,255,"2025-12-30",1);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Pá",18.90,255,"2025-10-12",2);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Quadros",2.90,255,"2024-11-25",3);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Tinta Azul",99.90,255,"2023-04-03",4);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Torneira",42,255,"2023-03-14",5);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Plantas",30.99,255,"2021-12-25",6);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Gramado",5.90,255,"2022-10-25",6);
    
    -- Select de preço maior que 50
    select * from tb_produto where preco > 50;
    
     -- select preço entre 3 e 60 reais
    select * from tb_produto where preco between 3 and 60;
    
     -- Select de produtos começando com B
    select * from tb_produto where nome like "%B%";
    
	-- Inner join entre  tabela categoria e produto.
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

    -- Select de todos os Produtos de uma categoria 
    select * from tb_produto where categoria_id = 1; 