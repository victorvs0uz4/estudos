/* CLIENTE */
INSERT INTO CLIENTE VALUES(NULL,'Victor','M','victor@gmail.com','615.152.990-15');
INSERT INTO CLIENTE VALUES(NULL,'Paulo','M','paulo@globo.com','731.148.700-58');
INSERT INTO CLIENTE VALUES(NULL,'Magda','F','magda@terra.com','507.891.220-73');
INSERT INTO CLIENTE VALUES(NULL,'Carla','F','carla@uol.com','762.508.770-02');
INSERT INTO CLIENTE VALUES(NULL,'Gabriela','F','gabriela@ig.com','352.374.640-09');
INSERT INTO CLIENTE VALUES(NULL,'Roberta','F','roberta@bol.com','825.481.710-35');
INSERT INTO CLIENTE VALUES(NULL,'Diego','M','diego@hotmail.com','767.647.630-54');
INSERT INTO CLIENTE VALUES(NULL,'Fábio','M','fabio@gmail.com','460.022.140-03');

/* ENDEREÇO - Devemos referenciar a ID do Cliente, para ser a FK.
Devido nossa regra de negocio, não podemos atribuir mais de um endereço para o mesmo Cliente,
visto que o mesmo também está como UNIQUE na tabela.
*/
INSERT INTO ENDERECO VALUES(NULL,'RUA PEDRO SANCHEZ','JD. Cerejeiras','Atibaia','SP',1);
INSERT INTO ENDERECO VALUES(NULL,'AV. SÃO JOÃO','Centro','Atibaia','SP',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA A','Jardins','São Paulo','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA B','Estácio','Rio de Janeiro','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA C','Cruzeiro','B. HORIZONTE','MG',7);
INSERT INTO ENDERECO VALUES(NULL,'RUA D','Morumbi','São Paulo','SP',5);
INSERT INTO ENDERECO VALUES(NULL,'RUA E','Centro','Extrema','MG',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA F','Castelo','B. HORIZONTE','MG',8);

/* TELEFONE */
INSERT INTO TELEFONE VALUES(NULL,'CEL','99980165',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','5714078',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99913000',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','2080215',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99983217',4);
INSERT INTO TELEFONE VALUES(NULL,'COM','2080057',4);
INSERT INTO TELEFONE VALUES(NULL,'COM','99788373',8);
INSERT INTO TELEFONE VALUES(NULL,'RES','2886299',7);
INSERT INTO TELEFONE VALUES(NULL,'RES','2882688',8);
INSERT INTO TELEFONE VALUES(NULL,'COM','99981713',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','99786464',4);
INSERT INTO TELEFONE VALUES(NULL,'CEL','5713204',5);