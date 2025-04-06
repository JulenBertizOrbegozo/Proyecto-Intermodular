drop database if exists peluqueria;
create database peluqueria;
use peluqueria;

drop table if exists usuarios;
create table usuarios(
	idUsuario int auto_increment primary key,
    nombre varchar(30) not null,
    contrasena varchar(20) not null,
    email varchar(40) not null
);

drop table if exists iniciosSesion;
create table iniciosSesion(
	codigo int auto_increment primary key,
    idUsuario int not null,
    fecha datetime not null default now(),
    foreign key (idUsuario) references usuarios(idUsuario)
);


drop table if exists productos;
create table productos(
	idProducto int auto_increment primary key,
    nombre varchar(30) not null,
    descripcion varchar(200) not null
);

drop table if exists compras;
create table compras(
	codigo int auto_increment primary key,
    usuario int not null,
    producto int not null,
    foreign key (usuario) references usuarios(idUsuario),
    foreign key (producto) references productos(idProducto)
);

insert into usuarios (nombre, contrasena, email) values ("Julen", "1234", "jfjd@dk.dsf");
insert into iniciosSesion (idUsuario) values (1);
select * from iniciosSesion;