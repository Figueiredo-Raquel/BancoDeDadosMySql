create database ecommerce1;

create table tb_produto1(
produto varchar (30),
cor varchar (30),
genero char (1),
tamanho int,
valor double,
quantidade int
);

insert into tb_produto1(produto,cor,genero,tamanho,valor,quantidade) values
                       ('Sapato','vermelha','F',36,500.0,30),
                       ('Sandalha','preta','F',35,300.00,60),
					   ('Anabela','verde','F',40,800.00,40),
                       ('Scarpin','braca','F',38,900.00,50),
                       ('oxford','preto','M',44,350.00,45),
                       ('Tenis','branco','M',38,350.00,10),
                       ('Bota','preto','M',35,600.00,4),
					   ('Melissa','azul','F',36,150.00,17);
                       
select * from  tb_produto1;
 
select * from tb_produto1 where valor >500;

desc tb_produtos1;