CREATE TABLE usuario
(
    id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    email varchar(255) NOT NULL
);

INSERT INTO usuario (id,nome,email) values(1,'Francis Klay Rocha','klayrocha@gmail.com');