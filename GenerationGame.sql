create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id_classe int not null auto_increment,
nivel int,
funcao varchar(30),
dificuldade varchar(30),
primary key(id_classe)
);

create table tb_personagem(
id_personagem int not null auto_increment,
nome varchar(30),
habilidade varchar(30),
forca int,
poder_ataque int,
poder_defesa int,
id_classe int,
primary key (id_personagem),
constraint fk_jogo foreign key (id_classe) references tb_personagem(id_personagem)
);


insert into  tb_classe (nivel,funcao,dificuldade)values
                       (1,'Mago','Alta'),
                       (2,'Lutador','Moderada'),
                       (3,'Tanque','Moderado'),
	                   (4,'Atirador','Alta'),
					   (5,'Lutador','Moderado');



insert into tb_personagem (nome,habilidade,forca,poder_ataque,poder_defesa,id_classe) values
					      ('AHRI','Fogo Da Raposa',3000,2000,3000,1),
			              ('ANNIE','Desintegrar',3500,5000,1000,2),
                          ('CAMILLE','Varredura Tática',6000,4500,1000,3),
                          ('JINX','Super Mega Míssil Da Morte',5000,3500,2000,4),
                          ('AATROX','A Espada Darkin',5000,6000,4000,5),
                          ('ALISTAR','Pulverizar',6000,2000,3000,1),
                          ('APHELIOS','Pistol',8000,6000,5000,2),
                          ('Azir','Legado da Shurima',4000,3500,1000,3);
                    
                    
select * from tb_classe;
select * from tb_personagem;                   

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa = 1000 and 2000; 

select * from tb_personagem where nome like 'c%';

select * from tb_personagem where nome like '%c';

 select * from tb_personagem
 inner join tb_classe 
 where tb_classe.id_classe = tb_personagem.id_classe;
 

 
 
 
 
 
 
