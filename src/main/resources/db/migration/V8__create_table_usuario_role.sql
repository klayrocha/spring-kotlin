CREATE TABLE usuario_role
(
    id bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
    usuario_id bigint NOT NULL,
    role_id bigint NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (role_id) REFERENCES role(id)
);
