# Estoque Central
 BD de um estoque 

Trabalho sobre Banco de Dados que exigia:

1. Desenvolva o script SQL necessário para criar o banco de dados e suas tabelas no bando de dados

2. O script SQL os comandos DDl, além dos comandos para criar o bando de dados e as tabelas, também deve ter os comandos para: 
* Criar as "chaves primárias" de cada tabela;
* Criar as chaves estrageiras necessárias para implementação dos "relacionamentos".

3. Apresente os seguintes scripts SQL:
* Inserir 5 (cinco) registros em cada tabela.
* alterar a quantidade de produtos enviados para determinada loja, que já estava armazenada no banco de dados.
* Excluir um determinado fornecedor da empresa.

4. crie os scripts SQL que extraia os seguintes dados:
* Relação das lojas com a respectiva datas de saidas de produtos do estoque central.
* Relação dos produtos com seus respectivos fornecedores.

Também o caso de uso exigia: 
1. O Sistema deve ter a capacidade de armazenar os produtos contidos no estoque, para que esses possam ser controlados individualmente.

2. Outro detalhe importante no cadastro do produto é armazenar a quantidade minima que deverá ter desse produtos no estoque.

3. Cada produto terá um fornecedor relacionado a ele, sendo possivel controlar os produtos divididos por fornecedores.

4. Os produtos devem ser divididos por categoria, ou seja, cada produto terá uma categoria.

5. As entradas e saídas dos produtos deverão ser registradas no programa, para futuramente obtemos um histórico completo de todos o trajeto do produtos dentro do centro de distribuição.

6. na entrada do produto será necessário armazenar a data do pedido e a data de entrega da mercadori, para depois podermos analisar quanto tempo o pedido demora a chegar ao estoque. 

7. na saída, obrigatoriamente será informada a loja para a qual a mercadoria foi enviada, pois ao final do mês deveremos fazer o fechamento do faturamento para saber qual é a loja que mais obteve vendas.

8. Outra capacidade que o sistema deverá ter é calcular o peso total de uma entrada ou de uma saída.

9. No Programa, devem-se apresentar os produtos nos quais a sua quantidade total em estoque é menor ou igual à igual a quantidade mínima requerida em estoque definida previamente.

10. A transportadora será outra item importante na análise, pois devemos saber qual transportadora é mais ultizada para fazer a entrega dos produtos e qual é a mais utilizada para fazer a saída.

11. Uma questão que o cliente deseja observar é em qual categoria possui umais item no local.