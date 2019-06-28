## Filtrando resultados mais apurados

Relatório com o **NOME**, **EMAIL**, e **TELEFONE** **CELULAR** das **mulheres** que moram no **estado** de **SP**.

```mysql
SELECT C.NOME, C.EMAIL, T.NUMERO AS "CELULAR"
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO = 'F' AND TIPO = 'CEL' AND ESTADO = 'SP'

+----------+-----------------+----------+
| NOME     | EMAIL           | CELULAR  |
+----------+-----------------+----------+
| Carla    | carla@uol.com   | 99983217 |
| Gabriela | gabriela@ig.com | 5713204  |
+----------+-----------------+----------+
```



**Filtrando colunas com resultado NULL, e fazendo utilização de ALIAS**

```mysql
SELECT C.NOME, IFNULL(C.EMAIL,'SEM EMAIL') AS "EMAIL", T.NUMERO AS "CELULAR"
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE TIPO = 'CEL' AND ESTADO = 'RJ';

/* Resultado: */

+-------+-----------+----------+
| NOME  | EMAIL     | CELULAR  |
+-------+-----------+----------+
| Valdo | SEM EMAIL | 99886542 |
+-------+-----------+----------+
```



**SELEÇÃO, PROJEÇÃO E JUNÇÃO**

* PROJEÇÃO - Tudo o que queremos projetar na tela.

```mysql
SELECT NOW() AS "DATA";

SELECT NOME, NOW() AS "DATA" FROM CLIENTE; /* PROJEÇÃO */
```



**WHERE é a CLAUSULA de SELEÇÃO - Teoria dos conjuntos**

* CONJUNTO INTEIRO = Conteúdo de uma tabela.

```mysql
SELECT NOME, SEXO FROM CLIENTE WHERE SEXO = 'F';
```

* SELEÇÃO de um subconjunto, do conjunto inteiro (TABELA).



**JOIN - JUNÇÃO**

```mysql
SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJEÇÃO */
FROM CLIENTE 
INNER JOIN ENDERECO /* JUNÇÃO */
ON IDCLIENTE = ID_CLIENTE /* Chave primária de um, seja igual a chave estrangeira de outro */
WHERE BAIRRO = 'CENTRO'; /* SELEÇÃO */
```

* Método com mais tabelas, utilizando ponteiros

```mysql
SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
```

* Método com mais tabelas, utilizando apelidos (devemos colocar o apelido na frente do nome da tabela)

```mysql
SELECT CLI.NOME, CLI.SEXO, EN.BAIRRO, EN.CIDADE, TEL.TIPO, TEL.NUMERO
FROM CLIENTE CLI
INNER JOIN ENDERECO EN
ON CLI.IDCLIENTE = EN.ID_CLIENTE
INNER JOIN TELEFONE TEL
ON CLI.IDCLIENTE = TEL.ID_CLIENTE;
```



**Atualizando um registro errado, passando a ID do Cliente (PK).**

```mysql
UPDATE CLIENTE SET SEXO = 'F' WHERE IDCLIENTE = 4; /* SELECÃO */
```

