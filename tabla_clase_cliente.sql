CREATE TABLE `clase_cliente` (
  `id_cliente` INT,
  `hora` TIME,
  `dia_semana` INT(1),
  PRIMARY KEY (`id_cliente`, `hora`, `dia_semana`),
  FOREIGN KEY (`id_cliente`) REFERENCES cliente(`id`)
);