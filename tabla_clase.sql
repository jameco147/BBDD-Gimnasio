CREATE TABLE `clase` (
    `hora` TIME,
    `dia_semana` INT(1),
    `cod_aula` INT,
    PRIMARY KEY (`hora`, `dia_semana`),
    FOREIGN KEY (`cod_aula`) REFERENCES `aula`(`cod_aula`)
)