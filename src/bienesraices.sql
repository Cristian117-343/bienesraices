CREATE DATABASE BIENESRAICES;

USE BIENESRAICES;

CREATE TABLE propiedades (
 id int NOT NULL,
 titulo varchar(45) DEFAULT NULL,
 precio decimal(10,2) DEFAULT NULL,
 imagen varchar(200) DEFAULT NULL,
 descripcion longtext,
 habitaciones int DEFAULT NULL,
 wc int DEFAULT NULL,
 estacionamiento int DEFAULT NULL,
 creado date DEFAULT NULL,
 vendedores_id int NOT NULL,
 PRIMARY KEY (id),
 KEY fk_propiedades_vendedores_idx (vendedores_id),
 CONSTRAINT fk_propiedades_vendedores FOREIGN KEY (vendedores_id) REFERENCES vendedores(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE vendedores(
 id int NOT NULL AUTO_INCREMENT,
 nombre varchar(45) DEFAULT NULL,
 apellido varchar(45) DEFAULT NULL,
 telefono varchar(10) DEFAULT NULL,
 PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3