/* Criando database */
CREATE DATABASE projeto;

/* Usando o database */
USE projeto;

/* Criando tabela */
CREATE TABLE CLIENTE;

/* Mostrando as tabelas do banco */
SHOW TABLES;

/* Exbindo a estrutura de uma tabela */
DESC CLIENTE;

/* Formas de adicionar dados em uma tabela */
/* 01 - Excluindo as colunas (os dados devem estar na ordem correta, de acordo com a tabela): */
INSERT INTO CLIENTE VALUES('Victor','M','victor@gmail.com',23456515,'971185030','RUA JACARÉ','Atibaia','SP');
INSERT INTO CLIENTE VALUES('Paulo','M','paulo@gmail.com',51151318,'4414218','RUA PEDRO','Pinhalzinho','SP');
INSERT INTO CLIENTE VALUES('Magda','F','magda@gmail.com',54515184,'8745411','RUA PEDRO SANCHEZ','Bragança Paulista','SP');
INSERT INTO CLIENTE VALUES('Carla','F','carla@gmail.com',98451178,'2411658','RUA DO AMARAL','Extrema','MG');

/* 02 - Colocando as colunas, podemos omitir algumas informações, sem passar o parâmetro NULL: */
INSERT INTO CLIENTE(NOME,SEXO,CPF,TELEFONE,ENDERECO,CIDADE,ESTADO) VALUES('Gabriela','F',54151181,'40028922','RUA PAULISTA','Socorro','SP');

/* 03 - Insert compacto, inserir vários registros com apenas um único comando - somente MySQL */
INSERT INTO CLIENTE VALUES('José','F','jose@gmail.com',8845469,'2928416','RUA PIRITUBA','Socorro','SP'),
                          ('Pintos Valdo','F','pvaldo@gmail.com',44121554,'97462318','RUA SÃO JOSÉ','Socorro','SP');

/* Comandos SELECT */

/* Mostrando o AGORA */
SELECT NOW();

/* ALIAS de Coluna */
SELECT 'VICTOR' AS 'NETWORK ADMDIN';

/* SELECT filtrando conteúdo especifico */
SELECT NOME, TELEFONE, CIDADE FROM CLIENTE;

/* Apenas para fins educativo, o '*' filtra TUDO! */
SELECT * FROM CLIENTE;