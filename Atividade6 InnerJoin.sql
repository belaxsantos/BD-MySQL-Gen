CREATE DATABASE DB_CURSO_DA_MINHA_VIDA;

USE DB_CURSO_DA_MINHA_VIDA;

CREATE TABLE TB_CATEGORIAS (
ID BIGINT AUTO_INCREMENT,
AREA VARCHAR (255) NOT NULL,
PRIMARY KEY (ID)
);

create TABLE TB_CURSOS(
CODIGO BIGINT AUTO_INCREMENT, 
NOME VARCHAR(255) NOT NULL,
MODALIDADE VARCHAR (255),
PRECO FLOAT (6.2),
CATEGORIA_ID BIGINT,
PRIMARY KEY (CODIGO),
foreign key (CATEGORIA_ID) REFERENCES TB_CATEGORIAS (ID)
);

INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("LINGUAS");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("HUMANAS");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("ESPORTES");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("EXATAS");
INSERT INTO TB_CATEGORIAS (AREA)
VALUES ("TECNOLOGIA");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("INGLES","ONLINE",350,1);
INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("ESPANHOL","ONLINE",450,10);
INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("ENFERMAGEM","PRESENCIAL",800,5);
INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("GINASTICA","PRESENCIAL",850,1);
INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("FUTEBOL","PRESENCIAL",800,1);
INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES("MATEMATICA","HIBRIDO",1200,10);
INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("SCRUM","ONLINE",1200,8);
INSERT INTO TB_CURSOS (NOME,MODALIDADE,PRECO,CATEGORIA_ID)
VALUES ("ANALISE E DESENVOLVIMENTO DE SOFTWARE","PRESENCIAL",2000,9);

SELECT * FROM TB_CURSOS;

SELECT * FROM TB_CURSOS WHERE PRECO > 500;
SELECT * FROM TB_CURSOS WHERE PRECO >=600 AND PRECO <= 1000;
SELECT * FROM TB_CURSOS WHERE NOME LIKE "%J%";
SELECT * FROM TB_CURSOS INNER JOIN TB_CATEGORIA ON TB_CURSOS.CATEGORIA_TB = TB_CATEGORIA.ID; 
SELECT * FROM TB_CURSOS INNER JOIN TB_CATEGORIAS ON TB_CURSOS.CATEGORIA_ID = TB_CATEGORIAS.IDD WHERE ID = 3;
