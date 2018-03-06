CREATE TABLE aula (
  id INTEGER,
  id_gimnasio INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (id_gim) REFERENCES gimnasio(id)
);
