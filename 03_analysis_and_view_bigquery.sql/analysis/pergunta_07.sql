-- Pergunta 7: Qual o faturamento total por categoria de produto?

SELECT p.Categoria_Produto, SUM(v.Quantidade * p.Preco_Produto) AS Faturamento
FROM `t1engenhariadados.Grupo_10.Vendas` v
JOIN `t1engenhariadados.Grupo_10.Produtos` p ON v.ID_Produto = p.ID_Produto
GROUP BY p.Categoria_Produto
ORDER BY Faturamento DESC;
