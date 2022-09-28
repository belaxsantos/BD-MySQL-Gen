CREATE DATABASE DB_ECOMMERCE;

USE DB_ECOMMERCE;

CREATE TABLE TB_PRODUTOS(ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
PRECO INT,
TAMANHO VARCHAR(255) NOT NULL,
MATERIAL VARCHAR(255) NOT NULL,
DESCRICAO VARCHAR(255),
PRIMARY KEY (ID));

INSERT INTO TB_PRODUTOS (NOME,PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("CALCA",310,"P,M,G,GG","JEANS","CALCA JEANS NO MODELO MON JEANS");
INSERT INTO TB_PRODUTOS (NOME,PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("VESTIDO",100,"P,M,G","VISCOLINHO","VESTIDO TUBINHO");
INSERT INTO TB_PRODUTOS (NOME,PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("BLAZER",499,"P,M,G","LINHO","BLAZER CORTE RETO");
INSERT INTO TB_PRODUTOS (NOME,PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("CAMISETA",150,"P,M,G","ALGODAO","CAMISETA GOLA V");
INSERT INTO TB_PRODUTOS (NOME,PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("TOP DE ACADEMIA",120,"P,M,G","BERGALINE","TOP ALCA FINA");
VALUES("TOP DE ACADEMIA",120,"P,M,G","BERGALINE","TOP ALCA FINA");
INSERT INTO TB_PRODUTOS (NOME,PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("CONJUNTO MOLETOM",350,"P,M,G","ALGODAO","CONJUNTO DE MOLETOM");
INSERT INTO TB_PRODUTOS (NOME, PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("MINI SAIA",50,"P,M,G","VISCOSE","MINI SAIA");
INSERT INTO TB_PRODUTOS (NOME,PRECO,TAMANHO,MATERIAL,DESCRICAO)
VALUES("CALCA LEGGING",200,"P,M,G","ALGODAO","CALCA LEGGING PARA TREINAR");

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 500;

SELECT * FROM TB_PRODUTOS WHERE PRECO <500;

UPDATE TB_PRODUTOS SET DESCRICAO="VESTIDO LONGO" WHERE ID = 2;

SELECT * FROM TB_PRODUTOS;


