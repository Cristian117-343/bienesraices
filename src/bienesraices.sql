CREATE DATABASE BIENESRAICES;

USE BIENESRAICES;

CREATE TABLE USUARIO(
NombreUsuario varchar(10) not null,
ApePatUsuario varchar(10) not null,
ApeMatUsuario varchar(10) not null,
Correo varchar(20) not null,
Telefono int not null,
Mensaje varchar(100),
primary key (Correo)
);

CREATE TABLE PROPIEDAD(
Propiedad int auto_increment,
Tipo varchar(7) not null,
PrecioPresupuesto int not null,
Contacto varchar(10) not null,
Fecha date not null,
Hora time not null,
Correo varchar(20),
primary key(Propiedad),
foreign key (Correo) references USUARIO(Correo)
);
