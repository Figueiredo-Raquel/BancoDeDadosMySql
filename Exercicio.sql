create database db_cursoDaMinhaVida;
use db_cursoDaminhaVida;

create table tb_categoria(
id_categoria int not null auto_increment,
nome varchar (30),
preco int,
tipodecurso varchar (30),
primary key(id_categoria)
);

create table tb_produto(
id_produto int not null auto_increment,
inicio date,
estagio varchar (30),
diploma varchar (30),
materia varchar (30),
termino date,
id_categoria int,
primary key (id_produto),
constraint fk_curso foreign key (id_categoria) references tb_produto(id_produto)
);

insert into tb_categoria (nome,preco,tipodecurso) values
						 ('Universal',100.00,'Manicure'),
						 ('Faetec',300.00,'Cabeleireira'),
						 ('CuidaMais',60.00,'Cuidadora'),
						 ('Senac',80.00,'Enfermeira'),
						 ('Sesi',30.00,'Tec.enfermagem');
                         
insert into tb_produto (inicio,estagio,diploma,materia,termino,id_categoria)values
					   ('2020-01-01','Salao Flor','Manicure','Sobreunhas','2020-11-01',1),
				       ('2019-10-06','Centro Comunitario','Cabeleireira','Tipo de Cabelo','2020-08-11',2),
                       ('2020-09-10','Asilo','Cuidadora','Higiene do Paciente','2021-01-01',3),
                       ('2018-05-01','Hospital Posse','Enfermeira','6 certos','2020-01-05',4),
                       ('2020-12-01','Hospita Cruz Vermelha','Tec.enfermagem','Pulsionar','2021-06-07',5),
                       ('2018-09-15','Salao Divas','Cabeleireira','Escovar','2019-12-09',6),
                       ('2020-06-08','Asilo quer Bem','Cuidadora','Alimentaçao','2020-06-05',7),
                       ('2019-12-01','Hospital Psiquiatrico','Enfermeira','Medicaçao','2020-01-09',8);
                        
                    
select * from tb_categoria;
select * from tb_produto;                    
                    
 select * from tb_categoria where preco > 50.00;
 
 select * from tb_categoria where preco = 3.00 or preco = 60.00;
 
 select * from tb_categoria where nome like 'c%';
 
 select * from tb_produto 
 inner join tb_categoria 
 where tb_categoria.id_categoria = tb_produto.id_categoria;

 
 select * from tb_categoria where tipodecurso = 'Cabeleireira';
 















