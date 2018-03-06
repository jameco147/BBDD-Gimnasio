CREATE TABLE `empleado_clase` (
	`id_empleado` INT(11),
	`hora` TIME,
	`dia_semana` INT(11),
	PRIMARY KEY (`id_empleado`, `hora`, `dia_semana`),
	CONSTRAINT `FK_empleado_clase_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
)
