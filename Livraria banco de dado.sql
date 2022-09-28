CREATE DATABASE DB_LIVRA_DIVAS;
USE DB_LIVRA_DIVAS;

CREATE TABLE TB_CLIENTES (
ID BIGINT(10) AUTO_INCREMENT,
CPF VARCHAR(11) NOT NULL,
EMAIL VARCHAR(50) NOT NULL,
PRIMARY KEY(ID)
);

INSERT INTO DB_LIVRA_DIVAS.TB_CLIENTES (CPF,EMAIL)
VALUES ('40922010101','DIVAS@LIVRA.COM');
INSERT INTO DB_LIVRA_DIVAS.TB_CLIENTES (CPF,EMAIL)
VALUES ('40966780101','DIVASONLINE@LIVRA.COM');
INSERT INTO DB_LIVRA_DIVAS.TB_CLIENTES (CPF,EMAIL)
VALUES ('402255501','DIVAS@LIVLIVRA.COM');

SELECT * FROM db_livra_divas.tb_clientes;

UPDATE db_livra_divas.tb_clientes SET EMAIL = 'TESTE@TESTE' WHERE (ID = '3');

create table tb_livros(
    id_livro bigint(5) auto_increment primary key, 
    nome varchar(30) not null,
    genero varchar(50),
    ano date,
    preco double(4,2) not null,
    ID bigint,
    constraint fk_id_cliente 
    foreign key (ID) references tb_clientes (ID));

    SELECT * FROM db_livra_divas.tb_livros;


    INSERT INTO db_livra_divas.tb_livros(nome, genero, ano, preco, ID)
    values ('Crepúsculo','Romance','2022/09/26','39.22','1');

-- INSERT INTO db_livra_divas.tb_livros (nome, genero, ano, preco, ID) VALUES ('maça', 'ficcao', '2022/09/26', '9.99', '2');

ALTER TABLE tb_livros ADD escritora VARCHAR(40) ;