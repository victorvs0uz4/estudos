## Tipos de dados do MySQL e MariaDB

Tipos de dados são uma forma de classificar as informações que serão armazenados no banco de dados.
Entender os tipos de dados que podem ser armazenados no banco e a que situações se adequam é importante para projetar um banco de dados o mais eficiente possível. Veja, a seguir, alguns dos tipos de dados mais comuns no MySQL, acompanhado de uma breve descrição.

<p align="center">
  <img width="800" height="500" src="https://cdn-images-1.medium.com/max/1200/1*l9ktb4erdPUhKAGjWHH6QA.jpeg">
</p>

Antes de definir exatamente o tipo de dado que você deseja definir, vale a pena prestar atenção nas seguintes diretrizes, para ajudar a ter melhores resultados:

> Os tipos de valores que podem ser usados;
> Quais tamanhos podem ter;
> Operações que podem ser realizadas;
> Seus significados;
> Se podem ou serão indexados;
> Como devem ser armazenados, e etc.

## Tipos de dados numéricos no MySQL

O MySQL tem todos os tipos numéricos possíveis, o que inclui exatos, aproximados, inteiros, de ponto fixo, ponto flutuante etc. A lista, abaixo, mostra um resumo dos tipos de dados possíveis no MySQL:

> - **TINYINT** — número inteiro muito pequeno (tiny);
> - **SMALLINT** — número inteiro pequeno;
> - **MEDIUMINT** — número inteiro de tamanho médio;
> - **INT** — número inteiro de tamanho comum;
> - **BIGINT** — número inteiro de tamanho grande;
> - **DECIMAL** — número decimal, de ponto fixo;
> - **FLOAT** — número de ponto flutuante de precisão simples (32 bits);
> - **DOUBLE** — número de ponto flutuante de precisão dupla (64 bits);
> - **BIT** — um campo de um bit.

## Tipos de dados em strings

Strings são cadeias de caracteres. No MySQL, uma string pode ter qualquer conteúdo, desde texto simples a dados binários – tais como imagens e arquivos. Cadeias de caracteres podem ser comparadas e ser objeto de buscas.

> - **CHAR** — uma cadeia de caracteres (string), de tamanho fixo e não-binária;
> - **VARCHAR** — uma string de tamanho variável e não-binária;
> - **BINARY** — uma string binária de tamanho fixo;
> - **VARBINARY** — uma string binária de tamanho variável;
> - **BLOB** — um BLOB (Binary Large Object – Objeto Grande Binário) pequeno;
> - **TINYBLOB** — um BLOB muito pequeno;
> - **MEDIUMBLOB** — um BLOB de tamanho médio;
> - **LONGBLOB** — um BLOB grande;
> - **TINYTEXT** — uma string não-binária e de tamanho bem reduzido;
> - **TEXT** — uma string não-binária e pequena;
> - **MEDIUMTEXT** — uma string de tamanho comum e não-binária;
> - **LONGTEXT** — uma string não-binária de tamanho grande;
> - **ENUM** — de acordo com o manual do MySQL, é uma string, com um valor que precisa ser selecionado de uma lista predefinida na criação da tabela;
> - **SET** — é um objeto que pode ter zero ou mais valores – cada um dos quais precisa ser escolhido de uma lista de valores predeterminados quando da criação da tabela.

## Armazenamento de data e hora

Há várias opções para armazenar dados relacionados a data e hora. Se você quiser apenas armazenar o ano referente a um evento, pode usar o tipo YEAR. O tipo TIMESTAMP pode ser usado para acompanhar as mudanças ocorridas em um campo de uma tabela. Veja os tipos e suas descrições:

> - **DATE** — o valor referente a uma data no formato 'CCYY-MM-DD'. Por exemplo 1985-11-25 (ano-mês-dia). O 'CC' se refere aos dois dígitos do século (Century, em inglês);
> - **TIME** — um valor horário no formato 'hh:mm:ss' (hora:minutos:segundos);
> - **TIMESTAMP** — timestamp é uma sequência de caracteres ou informação codificada que identifica uma marca temporal ou um dado momento em que um evento ocorreu. No MySQL, ele tem o formato 'CCYY-MM-DD hh:mm:ss' – neste caso, seguem a padronização ISO 8601;
> - **YEAR** — armazena um ano no formato 'CCYY' ou 'YY';

## Dados espaciais

O MySQL tem suporte a tipos de dados que correspondem às classes OpenGIS. Alguns destes carregam valores geométricos simples:

> - **GEOMETRY** - (Pode armazenar qualquer tipo de valor geométrico. Os outros valores simples como: POINT, LINESTRING e POLYGON, têm seus valores restritos aos tipos geométricos a que se referem. )
>
>   #### Os outros, que seguem listados, carregam valores relativos a coleções/coletivos:
>
> - **POINT**
> - **LINESTRING**
> - **POLYGON**
> - **GEOMETRYCOLLECTION**
> - **MULTILINESTRING**
> - **MULTIPOINT**
> - **MULTIPOLYGON**

Assim, **GEOMETRYCOLLECTION** pode armazenar coletâneas de objetos de qualquer tipo. 
Os outros tipos coletivos (**MULTILINESTRING**, **MULTIPOLYGON** e **GEOMETRYCOLLECTION**) restringem-se a cada forma geométrica particular.