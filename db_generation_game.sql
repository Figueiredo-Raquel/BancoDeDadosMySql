create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id int not null auto_increment,
nivel int,
funcao varchar(30),
dificuldade varchar(30),
primary key(id)
);

create table tb_personagem(
id int not null auto_increment,
nome varchar(30),
habilidade varchar(30),
forca int,
poder_ataque int,
poder_defesa int,
primary key (id),
classe_id int not null,
foreign key (classe_id)
references tb_classe(id)
);


insert into  tb_classe (id,nivel,funcao,dificuldade)values
                 (default,1,'Mago','Alta'),
                 (default,2,'Lutador','Moderada'),
                 (default,3,'Tanque','Moderado'),
	             (default,4,'Atirador','Alta'),
	             (default,5,'Lutador','Moderado');



insert into tb_personagem (id,nome,habilidade,forca,poder_ataque,poder_defesa,classe_id) values
					(default,'AHRI','Fogo Da Raposa',3000,2000,3000,default),
			        (default,'ANNIE','Desintegrar',3500,5000,1000,default),
                    (default,'CAMILLE','Varredura Tática',6000,4500,1000,default),
                    (default,'JINX','Super Mega Míssil Da Morte',5000,3500,2000,default),
                    (default,'AATROX','A Espada Darkin',5000,6000,4000,default),
                    (default,'ALISTAR','Pulverizar',6000,2000,3000,default),
                    (default,'APHELIOS','Pistol',8000,6000,5000,default),
                    (default,'Azir','Legado da Shurima',4000,3500,1000,default);
                    
                    
select * from tb_classe;
select * from tb_personagem;                   

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa = 1000 and 2000; 

select * from tb_personagem where nome like 'c%';

select * from tb_personagem where nome like '%c';


delete from tb_classe where id=15;







