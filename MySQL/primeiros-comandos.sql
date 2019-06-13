/* Criando database */
CREATE DATABASE projeto;

/* Usando o database */
USE projeto;

/* Criando tabela */
CREATE TABLE CLIENTE (NOME VARCHAR(30), SEXO CHAR(1), EMAIL VARCHAR(30), CPF INT(11), TELEFONE VARCHAR(30), ENDERECO VARCHAR(30), CIDADE VARCHAR(30), ESTADO CHAR(2));

/* Mostrando as tabelas do banco */
SHOW TABLE;

/* Exbindo a estrutura de uma tabela */
DESC CLIENTE;

/* Formas de adicionar dados em uma tabela */
/* 01 - Excluindo as colunas (os dados devem estar na ordem correta, de acordo com a tabela): */
INSERT INTO CLIENTE VALUES('Victor','M','victor@gmail.com',23456515,'971185030','Rua Jacaré - Caetetuba','Atibaia','SP');
INSERT INTO CLIENTE VALUES('Paulo','M','paulo@gmail.com',51151318,'4414218','Rua Augusta - Centro','Pinhalzinho','SP');
INSERT INTO CLIENTE VALUES('Magda','F','magda@gmail.com',54515184,'8745411','Rua Pedro Sanchez - Caetetuba','Bragança Paulista','SP');
INSERT INTO CLIENTE VALUES('Carla','F','carla@gmail.com',98451178,'2411658','Rua do Amaral - Centro','Extrema','MG');

/* 02 - Colocando as colunas, podemos omitir algumas informações, sem passar o parâmetro NULL: */
INSERT INTO CLIENTE(NOME,SEXO,CPF,TELEFONE,ENDERECO,CIDADE,ESTADO) VALUES('Gabriela','F',54151181,'40028922','Rua Paulista - Imperial','Socorro','SP');

/* 03 - Insert compacto, inserir vários registros com apenas um único comando - somente MySQL */
INSERT INTO CLIENTE VALUES('José','M','jose@gmail.com',8845469,'2928416','Rua Pirituba - Ressaca','Socorro','SP'),
                          ('Pintos Valdo','M','pvaldo@gmail.com',44121554,'97462318','Rua Igarata - Centro','Socorro','SP');

------------------------------------------------------------------------------------------------------------------

/* Comandos SELECT */

/* 01 - Mostrando o AGORA */
SELECT NOW();

/* 02 - ALIAS de Coluna, criando colunas que não existem nas tabelas */
SELECT 'VICTOR' AS 'NETWORK ADMDIN';

/* 03 - SELECT filtrando conteúdo especifico */
SELECT NOME, TELEFONE, CIDADE FROM CLIENTE;

/* 04 - Apenas para fins educativo, o '*' filtra TUDO! */
SELECT * FROM CLIENTE;

/* 05 - Filtrando dados com WHERE (Ao utilizar o '=' o resultado é absoluto), passando as colunas */
SELECT NOME, SEXO FROM CLIENTE WHERE SEXO = 'M';

/* 06 - Trazendo apenas cadastros do sexo masculino sem passar a coluna 'SEXO') */
SELECT NOME FROM CLIENTE WHERE SEXO = 'M';

/* 07 - Utilizando o LIKE (Me traga o resultado que se pareça ou seja como)
Caracter coringa: %, tudo que começa ou tudo que termina */
SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE '%Centro%';
