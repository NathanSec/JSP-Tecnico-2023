create database dbagenda;
show databases;
use dbagenda;
create table contatos(
idcon int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50)
);
show tables;
describe contatos;

/*CRUD CREATE*/
insert into contatos(nome,fone,email) values('Darth Vader','92424-1212','suave@nanave.com');
insert into contatos(nome,fone,email) values('Anakin Skywalker','94848-2424','anakin@thebest.com');
select * from contatos;

