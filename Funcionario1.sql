create database rh1;

create table funcionarios1(
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum('M','F'),
salario float ,
funcao varchar(20),
primary key(id)
);



insert into funcionario1 (id,nome,nascimento,sexo,salario,funcao) values
(default,'Maria','1990-04-01','F',2000.00,'Analista de Sistema'),
(default,'Eduardo','1987-09-20','M',1500.00,'Faxineiro'),
(default,'Caroline','1991-03-08','F',2300.00,'Contadora'),
(default,'Gustavo','2000-11-23','M',1850.00,'TI'),
(default,'Lara','1980-06-15','F',1560.00,'Secretaria');

select * from funcionarios1;
select * from funcionarios1 where salario < 2000.00;
select * from funcionarios1 where salario >2000.00;

desc funcionarios1;
