CREATE TABLE `empleado_gimnasio` (
  `id_empleado` INT NOT NULL,
  `id_gimnasio` INT NOT NULL,
  FOREIGN KEY (`id_empleado`) REFERENCES `empleado`(`id`),
  FOREIGN KEY (`id_gimnasio`) REFERENCES `gimnasio`(`id`)
);