## Cardinalidade

A cardinalidade é um conceito importante para ajudar a definir o relacionamento, ela define o número de ocorrências em um relacionamento. Para determinar a cardinalidade, deve-se fazer a pergunta relativa ao relacionamento em ambas as direções.

- Um departamento possui quantos empregados?

– `no mínimo 1 e no máximo n`.

- Um empregado está alocado em quantos departamentos?

– `no mínimo em 1 e no máximo em 1`

Somando-se as cardinalidades, definimos o resultado final do relacionamento, ou seja, **`1:n`**

**n** é uma quantidade indeterminada de registros ou cadastros.


| **1**,1 |
| :-----: |
| **0,1** |
| **1,n** |
| **0,n** |

- Outro exemplo:

– É obrigatório o cadastro de somente um endereço: **`1,1`**

– O telefone não é obrigatório e posso cadastrar mais de um: **`0,n`**

– O cliente precisa de pelo menos um telefone: **`1,1`**

- O primeiro algarismo define obrigatoriedade:

`0 - Não obrigatório`

`1 - Obrigatório`

- Segundo algarismo  - cardinalidade:

`1 - Máximo de um`

`N - Mais de um`

