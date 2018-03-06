CREATE TABLE `empleado` (
	`Id` INT(11) NOT NULL,
	`nombre` VARCHAR(50) NOT NULL,
	`apellidos` VARCHAR(50) NOT NULL,
	`f_nacimineto` DATE NOT NULL,
	`dni` VARCHAR(50) NOT NULL,
	`direccion` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`telefono` INT(11) NOT NULL,
	`sueldo` INT(11) NOT NULL,
	`puesto` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`Id`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
