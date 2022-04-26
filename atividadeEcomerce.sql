#Criando um banco de dados e-comerce
create database db_ecomerce;

#Iniciando o banco de dados
use db_ecomerce;

#Criando a tabela produtos + 5 atributos
create table tb_produtos(
id bigint auto_increment,
produto char(255) not null,
marca char(255) not null,
codigo int not null,
preco double not null,
tamanho int not null,
tamanho2 char(255)
);

#Adcionando dados dos produtos
insert into tb_produtos (produto,marca,codigo,preco,tamanho2)
values ("Camiseta","Nike",01,85.90,"PP");

insert into tb_produtos (produto,marca,codigo,preco,tamanho)
values ("Tênis","Nike",02,550.00,36);

insert into tb_produtos (produto,marca,codigo,preco,tamanho)
values ("Meia","Nike",03,25.99,36);

insert into tb_produtos (produto,marca,codigo,preco,tamanho2)
values ("Calça","Nike",04,139.90,"M");

insert into tb_produtos (produto,marca,codigo,preco,tamanho2)
values ("Top","Nike",05,49.90,"P");

insert into tb_produtos (produto,marca,codigo,preco,tamanho2)
values ("Boné","Nike",07,34.90,"P");

insert into tb_produtos (produto,marca,codigo,preco,tamanho2)
values ("Short","Nike",08,69.90,"M");

insert into tb_produtos (produto,marca,codigo,preco,tamanho)
values ("Sandália","Nike",09,49.90,36);


#Acessando a tabela
select * from tb_produtos;


#Pesquisando por salarios maior que 500
select * from tb_produtos where preco > 500;
#Pesquisando salarios menor que 500
select * from tb_produtos where preco < 500;



#Atualizando um registro
update tb_produtos set valor =  5300 where id = 5;



