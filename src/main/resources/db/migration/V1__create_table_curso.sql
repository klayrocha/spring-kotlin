CREATE TABLE curso
(
    id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    categoria varchar(255) NOT NULL
);

INSERT INTO curso (id,nome,categoria) values(1,'Kotlin','Programação');