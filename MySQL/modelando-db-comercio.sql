/* Modelando Banco de Dados de um comércio */
CREATE DATABASE COMERCIO;

USE COMERCIO;

/* Tabela Cliente */
CREATE TABLE CLIENTE(
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO ENUM('M','F') NOT NULL,
    EMAIL VARCHAR(50) UNIQUE,
    CPF VARCHAR(15) UNIQUE
);

/* Tabela Telefone */
CREATE TABLE TELEFONE(
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('COM','RES','CEL'),
    NUMERO VARCHAR(10),
    ID_CLIENTE INT,
    FOREIGN KEY(ID_CLIENTE)
    REFERENCES CLIENTE(IDCLIENTE)
);

/* Tabela Endereço */
CREATE TABLE ENDERECO(
    IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    FOREIGN KEY(ID_CLIENTE)
    REFERENCES CLIENTE (IDCLIENTE)
);

/* FOREIGN KEY - CHAVE ESTRANGEIRA - FK */
/* É a chave primeria de uma tabela, que vai até outra tabela fazer referencia.
Em relacionamentos 1 x 1, a chave estrangeira fica na tabela mais fraca.
Em relacionamentos 1 x N, a chave estrangeira ficara sempre na tabela N */