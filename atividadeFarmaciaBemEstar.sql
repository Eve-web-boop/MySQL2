create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

#Criando tabela categoria + 2 atributos
create table categoria(
id bigint auto_increment,
beleza varchar(255),
fitness varchar(255),
medicamentos varchar(255),
higiene varchar(255),
primary key (id)
);
#Criando tabela produtos + 4 atributos
create table tb_produtos(
id bigint auto_increment,
produto varchar(255),
codigo int not null,
preco double not null,
descricao varchar(1000),
id_beleza bigint,
primary key (id),
foreign key (id_beleza) references tb_categoria(id)
);

#Iserindo 5 registros na tb_categorias
insert into tb_categoria (beleza,fitness,medicamentos,higiene,saude) values
('Hidratação','Energéticos','Antigripais','Desodorante','Vitaminas');
insert into tb_categoria (beleza,fitness,medicamentos,higiene,saude) values
('Esmaltes','Cereais','Digestivos','Absorventes','Vitaminas');
insert into tb_categoria (beleza,fitness,medicamentos,higiene,saude) values
('Maquiagem','Isotônicos','Diabetes','Sabonetes','Vitaminas');
insert into tb_categoria (beleza,fitness,medicamentos,higiene,saude) values
('Limpeza de pele','Shakes','Hipertenção','Escovas de Dentes','Vitaminas');
insert into tb_categoria (beleza,fitness,medicamentos,higiene,saude) values
('Limpeza de pele','Shakes','Hipertenção','Escovas de Dentes','Vitaminas');

#Inserindo 8 registros na tb_produtos
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Hidratação','001',20,'Promove nutrição com rápida absorção do produto na pele.',1);
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Esmalte','002',5,'Ajuda na recuperação da unha, hidratação da unha, fortalecimento e crescimento da unha e nivelamento da unha.',2);
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Maquiagem','003',30,'Serve para realçar a beleza da mulher, além de disfarçar os pontos que incomodam.',3);
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Limpeza de pele',20,'004','Serve parapara manter uma pele purificada, limpa e saudável.',4);
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Energéticos','005',25,'Serve para aumentar o metabolismo do organismo como na prática de exercícios, esportes, desempenho cognitivo, no trabalho e estudos.',5);
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Cereais','006',10,'São ricos em nutrientes, como vitaminas A, C e E.',6);
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Isotônicos','007',40,'Serve para repor água e eletrólitos perdidos na transpiração.',7);
insert into tb_produtos (produto,codigo,preco,descricao,id_categoria) values ('Shakes','008',60,'Contribui não só para a perda de peso (substituindo até duas refeições), mas também para a manutenção (substituindo uma refeição) e até para o ganho (acrescentado à refeição).',8);

#Produtos com valor maior que 50,00
select * from tb_produtos where preco > 50;

#Produtos com valor entre 5,00 e 60,00
select * from tb_produtos where preco > 5 and preco < 60;

#Podutos com a letra c
select * from tb_produtos where produto like '%c%';

#Unindo as tabelas
select * from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_categorias;

#Procurando detalhado
select tb_produtos.produto, tb_categorias.beleza, tb_categorias.beleza from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id_beleza;


