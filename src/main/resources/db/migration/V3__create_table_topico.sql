CREATE TABLE topico
(
    id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo varchar(50) NOT NULL,
    mensagem varchar(300) NOT NULL,
    data_criacao timestamp NOT NULL,
    status varchar(255) NOT NULL,
    curso_id bigint NOT NULL,
    autor_id bigint NOT NULL,
    FOREIGN KEY (curso_id) REFERENCES curso(id),
    FOREIGN KEY (autor_id) REFERENCES usuario(id)
);