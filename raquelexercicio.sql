create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id_categoria int not null auto_increment,
produto  varchar (30),
preco int,
quantidade int,
primary key (id_categoria)
);

create table tb_produto(
id_produto int not null auto_increment,
cimento varchar (30),
argamassa varchar (30),
rejunte varchar (30),
piso varchar (30),
ladrilho varchar (30),
id_categoria int,
primary key (id_produto),
constraint fk_curso foreign key (id_categoria) references tb_produto(id_produto)
);


insert into tb_categoria (produto,preco,quantidade) values
						 ('Cimento',100.00,10),
                         ('Argamassa',80.00,15),
                         ('Rejunte',60.00,10),
                         ('Piso',200.00,20),
                         ('Ladrilho',30.00,5);
                         
                         
 insert into tb_produto (cimento,argamassa,rejunte,piso,ladrilho,id_categoria) values       
                         ('Maua','Votomassa','Fortaleza','Ceusa','Portela',1),
                         ('Vipol','Royal','Kerakol','Portinari','Ladrilhado',2),
                         ('Cauê','Kolamassa','Juntalider','Eucatex','Rafaelo',3),
                         ('Lafarge','Precon','Portokoll','Incepa','Paris',1),
                         ('Holcim','Overcoll','Juntamais','Duraflor','Londres',2),
                         ('Tupi','Argaglass','Colatudo','Eucaflor','Urca',3),
                         ('Ciplan','Hipermassa','Axton','Tarkett','Barra',1),
                         ('Cimpor','Vimassa','Bostik','Cecrisa','Copacabana',2);
                         
    
 select * from tb_categoria;
 select * from tb_produto;
 
 select * from tb_produto where preco > 50.00;
 
  select * from tb_produto where preco = 3.00 or preco = 60.00;
 
 select * from tb_produto where marcadacarne like 'c%';
 
 select * from tb_produto 
 inner join tb_categoria 
 where tb_categoria.id_categoria = tb_produto.id_categoria;

 
 select * from tb_categoria where produto = 'Cimento';
 
 
 
 
    
    
    
    
    
 
 
                         
                         