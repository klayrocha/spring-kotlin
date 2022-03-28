CREATE TABLE resposta
(
    id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mensagem varchar(300) NOT NULL,
    data_criacao timestamp NOT NULL,
    topico_id bigint NOT NULL,
    autor_id bigint NOT NULL,
    solucao int(1) NOT NULL,
    FOREIGN KEY (topico_id) REFERENCES topico(id),
    FOREIGN KEY (autor_id) REFERENCES usuario(id)
);