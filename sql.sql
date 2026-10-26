create database heranca_freitas
default character set utf8mb4
collate utf8mb4_0900_ai_ci;

use heranca_freitas;

create table if not exists usuario(
    id int auto_increment primary key,
    email varchar(50),
    senha varchar(8)
) character set utf8mb4;
insert into usuario (email,senha)
value ('freitas@gmail.com','12345678'),
      ('marcos@gmail.com','98765432');

create table if not exists cliente(
    nome varchar(50),
    cpf varchar(11),
    id_c int primary key,
    foreign key (id_c) references usuario(id)
);
insert into cliente (nome, cpf, id_c)
value ('Freitas','12345678987',1);
select * from cliente;
select cliente.nome, cliente.cpf, usuario.email
from cliente inner join usuario
on cliente.id_c = usuario.id;