/* Criando database */
CREATE DATABASE projeto;

/* Usando o database */
USE projeto;

/* Criando tabela */
CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF INT(11),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(30),
    CIDADE VARCHAR(30),
    ESTADO CHAR(2)
);

/* Mostrando as tabelas do banco */
SHOW TABLES;

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

/* Filtrando Clientes pelas cidades de Atibaia e Socorro, com IN. */
SELECT NOME, SEXO, CIDADE, TELEFONE FROM CLIENTE WHERE CIDADE IN ("Atibaia","Socorro");

------------------------------------------------------------------------------------------------------------------

/* OPERADORES LÓGICOS (Tabela verdade colocada em prática) */
/* OR - OU */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE SEXO = 'M' OR ENDERECO LIKE '%Centro';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE SEXO = 'F' OR ENDERECO LIKE '%Ressaca';

/* AND - E */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE SEXO = 'M' AND ENDERECO LIKE '%Centro';

SELECT NOME, SEXO, CIDADE FROM CLIENTE WHERE SEXO = 'F' AND CIDADE LIKE '%Socorro';

------------------------------------------------------------------------------------------------------------------

/* Contando os registros de uma Tabela */
SELECT COUNT(*) FROM CLIENTE;

/* Utilizando o ALIAS de coluna com o COUNT */
SELECT COUNT(*) AS 'TOTAL DE REGISTROS' FROM CLIENTE;

/* Operador GROUP BY (AGRUPE POR) */
SELECT SEXO, COUNT(*) AS 'QUANTIDADE' FROM CLIENTE GROUP BY SEXO;

------------------------------------------------------------------------------------------------------------------

/* Filtrando conteúdo NULL. - NULL é um espaço reservado para indicar a ausência de valor,
é por isso que neste caso deve-se utilizar os predicados IS NULL ou IS NOT NULL */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL IS NULL;

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL IS NOT NULL;

------------------------------------------------------------------------------------------------------------------

/* Utilizando o UPDATE acompanhado da clausula WHERE para atualizar os valores */

UPDATE CLIENTE SET EMAIL = 'gabriela@hotmail.com' WHERE NOME = 'Gabriela';

------------------------------------------------------------------------------------------------------------------

/* SELEÇÃO, PROJEÇÃO E JUNÇÃO */
/* PROJEÇÃO - Tudo o que queremos projetar na tela */

SELECT NOW() AS "DATA";

SELECT NOME, NOW() AS "DATA" FROM CLIENTE; /* PROJEÇÃO */

/* WHERE é a CLAUSULA de SELEÇÃO - Teoria dos conjuntos */
/* CONJUNTO INTEIRO = Conteudo de uma tabela */

SELECT NOME, SEXO FROM CLIENTE WHERE SEXO = 'F';  /* SELEÇÃO de um subconjunto, do conjunto inteiro (TABELA) */

/* Atualizando um registro errado, passando a ID do Cliente (PK) */
UPDATE CLIENTE SET SEXO = 'F' WHERE IDCLIENTE = 4; /* SELECÃO */

/* JOIN - JUNÇÃO */
SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJEÇÃO */
FROM CLIENTE 
INNER JOIN ENDERECO /* JUNÇÃO */
ON IDCLIENTE = ID_CLIENTE /* Chave primária de um, seja igual a chave estrangeira de outro */
WHERE BAIRRO = 'CENTRO'; /* SELEÇÃO */

/* Metodo com mais tabelas, utilizando ponteiros */
SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

/* Metodo com mais tabelas, utilizando apelidos para elas */
SELECT CLI.NOME, CLI.SEXO, EN.BAIRRO, EN.CIDADE, TEL.TIPO, TEL.NUMERO
FROM CLIENTE CLI
INNER JOIN ENDERECO EN
ON CLI.IDCLIENTE = EN.ID_CLIENTE
INNER JOIN TELEFONE TEL
ON CLI.IDCLIENTE = TEL.ID_CLIENTE;
------------------------------------------------------------------------------------------------------------------

