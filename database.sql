CREATE TABLE `cliente` (
	`Id` INT(11) NOT NULL,
	`fecha_alta` DATE NOT NULL,
	`fecha_baja` DATE NOT NULL,
	`nombre` VARCHAR(50) NOT NULL,
	`apellidos` VARCHAR(50) NOT NULL,
	`f_nacimineto` DATE NOT NULL,
	`dni` VARCHAR(50) NOT NULL,
	`direccion` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefono` INT(11) NOT NULL,
	PRIMARY KEY (`Id`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
