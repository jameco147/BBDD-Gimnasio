CREATE TABLE `recibo` (
    `id` INT AUTO_INCREMENT,
    `id_cliente` INT,
    `fecha` DATETIME,
    `cantidad` DECIMAL(2),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`id_cliente`) REFERENCES `cliente`(`id_cliente`)
)