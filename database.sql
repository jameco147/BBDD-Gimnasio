CREATE DATABASE `gimnasios`;
USE `gimnasios`;

CREATE TABLE `gimnasio` (
    `id` INT AUTO_INCREMENT,
    `cod_postal` INT NOT NULL,
    `direccion` VARCHAR(256) NOT NULL,
    `nombre` VARCHAR(256) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `empleado` (
	`id` INT AUTO_INCREMENT,
	`nombre` VARCHAR(50) NOT NULL,
	`apellidos` VARCHAR(50) NOT NULL,
	`f_nacimineto` DATE NOT NULL,
	`dni` VARCHAR(50) NOT NULL,
	`direccion` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefono` INT(11) NOT NULL,
	`sueldo` INT(11) NOT NULL,
	`puesto` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `aula` (
    `id` INT AUTO_INCREMENT,
    `id_gimnasio` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`id_gimnasio`) REFERENCES `gimnasio`(`id`)
);

CREATE TABLE `clase` (
    `hora` TIME,
    `dia_semana` INT(1),
    `cod_aula` INT,
    `cod_materia` INT NOT NULL,
    PRIMARY KEY (`hora`, `dia_semana`, `cod_aula`),
    FOREIGN KEY (`cod_aula`) REFERENCES `aula`(`id`),
    FOREIGN KEY (`cod_materia`) REFERENCES `materia`(`cod_materia`)
);

CREATE TABLE `cliente` (
	`id` INT(11),
	`fecha_alta` DATE NOT NULL,
	`fecha_baja` DATE NOT NULL,
	`nombre` VARCHAR(50) NOT NULL,
	`apellidos` VARCHAR(50) NOT NULL,
	`f_nacimineto` DATE NOT NULL,
	`dni` VARCHAR(50) NOT NULL,
	`direccion` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefono` INT(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `clase_cliente` (
    `id_cliente` INT,
    `hora` TIME,
    `dia_semana` INT(1),
    PRIMARY KEY (`id_cliente`, `hora`, `dia_semana`),
    FOREIGN KEY (`id_cliente`) REFERENCES `cliente`(`id`),
    FOREIGN KEY (`hora`, `dia_semana`) REFERENCES `clase`(`hora`, `dia_semana`)
);

CREATE TABLE `empleado_clase` (
	`id_empleado` INT(11),
	`hora` TIME,
	`dia_semana` INT(11),
	PRIMARY KEY (`id_empleado`, `hora`, `dia_semana`),
	CONSTRAINT `FK_empleado_clase_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `empleado_gimnasio` (
    `id_empleado` INT NOT NULL,
    `id_gimnasio` INT NOT NULL,
    FOREIGN KEY (`id_empleado`) REFERENCES `empleado`(`id`),
    FOREIGN KEY (`id_gimnasio`) REFERENCES `gimnasio`(`id`)
);

CREATE TABLE `materia` (
    `cod_materia` INT AUTO_INCREMENT,
    `nom_materia` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`cod_materia`)
);

CREATE TABLE `recibo` (
    `id` INT AUTO_INCREMENT,
    `id_cliente` INT NOT NULL,
    `fecha` DATETIME NOT NULL,
    `cantidad` DECIMAL(2) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`id_cliente`) REFERENCES `cliente`(`id`)
);