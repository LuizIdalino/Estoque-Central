/*Exlcluindo um fornecer*/
/*Produtos separados por fornecedor*/
SELECT p.codproduto, p.descricao, p.peso, p.qtdemin, f.fornecedor 
FROM Produto p 
INNER JOIN Fornecedor f ON f.codfornecedor=p.Fornecedor_codfornecedor;

set SQL_SAFE_UPDATES = 0;
SELECT * FROM estoque_central.fornecedor;
DELETE FROM estoque_central.fornecedor
WHERE fornecedor = 'LG';

/*alterando a quantidade de produtos para determinada loja*/
/*Total de saida separada por loja*/ 
SELECT Nome, total 
FROM saida s 
INNER JOIN loja l ON s.Loja_codloja=l.codloja 
group by(l.nome);

UPDATE estoque_central.saida
SET total = '600'
WHERE total = '512';
