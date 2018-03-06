CREATE TABLE clase_cliente (
  id_cliente INTEGER,
  hora TIME,
  dia_semana DATETIME,
  PRIMARY KEY (id_cliente, hora, dia_semana),
  FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);