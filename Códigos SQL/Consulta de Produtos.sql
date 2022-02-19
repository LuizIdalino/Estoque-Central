use Estoque_Central;

/* Consulta de produtos*/
SELECT Produto_codproduto,
((SELECT SUM(qtde) FROM ItemEntrada as itme
WHERE itms.Produto_codproduto=itme.Produto_codproduto)-SUM(qtde))
FROM ItemSaida as itms
GROUP BY Produto_codproduto;

/*Produtos abaixo do minimo*/
SELECT Produto_codproduto, p.descricao
FROM ItemSaida as itms
INNER JOIN Produto p ON p.codproduto=itms.Produto_codproduto
GROUP BY p.descricao, itms.Produto_codproduto, p.qtdemin
HAVING p.qtdemin<=((SELECT SUM(qtde)
FROM ItemEntrada as itme
WHERE itms.Produto_codproduto=itme.Produto_codproduto)-SUM(qtde));

/*Tempo médio de chegada de do pedido.*/

SELECT AVG(dataentr-dataped) FROM Entrada;

/*Listagem dos pesos de entrada e saída.*/
SELECT ie.Entrada_codentrada, SUM(p.peso*ie.qtde), 'Entrada'
FROM ItemEntrada ie
INNER JOIN produto p ON p.codproduto=ie.Produto_codproduto
GROUP BY ie.Entrada_codentrada
union
SELECT itms.Saida_codsaida, SUM(p.peso*itms.qtde), 'Saída'
FROM ItemSaida itms
INNER JOIN produto p ON p.codproduto=itms.Produto_codproduto
GROUP BY itms.Saida_codsaida;

/*Total de frete gasto na entrada e saída.*/
SELECT t.transportadora, SUM(e.frete), 'Entrada'
FROM transportadora t
INNER JOIN entrada e ON e.Transportadora_codtransportadora=t.codtransportadora
GROUP BY t.transportadora
union
SELECT t.transportadora, SUM(s.frete), 'Saída'
FROM transportadora t
INNER JOIN saida s ON s.Transportadora_codtransportadora=t.codtransportadora
GROUP BY t.transportadora;

/*quantidade de produtos por categoria*/
SELECT c.categoria, COUNT(*) 
FROM produto p 
INNER JOIN Categoria c ON p.Categoria_codcategoria=c.codcategoria 
GROUP BY c.categoria;

/*Produtos separados por fornecedor.*/
SELECT Produto_codproduto, p.descricao
FROM ItemSaida as itms
INNER JOIN Produto p ON p.codproduto=itms.Produto_codproduto
GROUP BY p.descricao, itms.Produto_codproduto, p.qtdemin
HAVING p.qtdemin<=((SELECT SUM(qtde)
FROM ItemEntrada as itme
WHERE itms.Produto_codproduto=itme.Produto_codproduto)-SUM(qtde));