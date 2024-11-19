CREATE TABLE USERS (
        ID INTEGER PRIMARY KEY AUTO_INCREMENT,  -- Coluna ID é a chave primária, do tipo INTEGER, e será auto-incrementada automaticamente pelo banco de dados.
        NAME VARCHAR(255) ,                     -- Coluna NAME armazena o nome do usuário, com um máximo de 255 caracteres.
        PASSWORD VARCHAR(255),
        IS_ACTIVE BOOLEAN,
        CPF_CNPJ VARCHAR(255)

);
CREATE TABLE PRODUTO (
        ID INTEGER PRIMARY KEY AUTO_INCREMENT,
        NAME VARCHAR(255),
        QUANTIDADE INTEGER,
        PRICE FLOAT
)

CREATE TABLE VENDAS (
    ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    QUANTITY INT NOT NULL,
    PRICE FLOAT NOT NULL,
    PRODUCT_ID BIGINT NOT NULL,
    USER_ID BIGINT NOT NULL,
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUTO(id),
    FOREIGN KEY (user_id) REFERENCES USERS(id)
);