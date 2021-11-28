-- Criando Banco de Dados
create database db_cursoDaMinhaVida;

-- Usando Banco de Dados
use db_cursoDaMinhaVida;

-- Criando Primeira Tabela(Categoria)

     create table tb_categoria (
		id bigint auto_increment,
        
        categoria varchar (255) not null, 
		quantidade_cursos int not null,
        Plataforma varchar (255) not null,
               
        primary key (id)
     );     
     
     -- Select pra checar tabela
     select * from tb_categoria;
     
     -- Populando minha tabela
    insert into tb_categoria (categoria, quantidade_cursos, Plataforma) values ("Informática",12,"Hotmart");
	insert into tb_categoria (categoria, quantidade_cursos, Plataforma) values ("Mecatrônica", 12,"Hotmart"); 
	insert into tb_categoria (categoria, quantidade_cursos, Plataforma) values ("Alemão", 6,"Hotmart");
	insert into tb_categoria (categoria, quantidade_cursos, Plataforma) values ("Artesanato", 12,"Hotmart");
    insert into tb_categoria (categoria, quantidade_cursos, Plataforma) values ("Inglês", 6,"Hotmart");

  -- Crianto Segunda Tabela(Curso)
 
     create table tb_curso (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        promocao boolean not null,
		tamanho_desconto varchar (255) not null,
        duração varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
      -- Select pra Checar Tabela
     select *from tb_curso;
     
	-- Populando Tabela
     
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Pacote Office",300,true,"5%","3 meses",1);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Montagem Computadores",300,true,"8%","3 meses",1);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Autocad2017",600,true,"10%","12 meses",2);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Inglês Básico",150,false,"N/A","12 meses",5);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Inglês Avançado",350,true,"20%","12 meses",5);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Alemão básico",300,false,"N/A","4 meses",3);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Alemão Avançado",650,false,"N/A","2 meses",3);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Curso de semijoias",100,true,"25%","6 meses",4);
    
    -- Select de preço maior que 50
    select * from tb_curso where preco > 50;
    
     -- select preço entre 3 e 60 reais
    select * from tb_curso where preco between 3 and 60;
    
     -- Select de produtos começando com J
    select * from tb_curso where nome like "%j%";
    
	-- Inner join entre  tabela categoria e produto.
    select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

	-- Select de todos os Produtos de uma categoria 
    select * from tb_curso where categoria_id = 5; -- Cursos de Inglês 