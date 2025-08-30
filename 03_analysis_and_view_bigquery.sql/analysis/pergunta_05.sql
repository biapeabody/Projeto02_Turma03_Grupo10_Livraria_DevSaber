-- Pergunta 5: Qual o produto mais vendido em termos de quantidade?

SELECT
    P.Nome_Produto,
    SUM(V.Quantidade) AS Total_Quantidade_Vendida
FROM `t1engenhariadados.Grupo_10.Vendas` AS V
JOIN `t1engenhariadados.Grupo_10.Produtos` AS P ON V.ID_Produto = P.ID_Produto
GROUP BY P.Nome_Produto
ORDER BY Total_Quantidade_Vendida DESC
LIMIT 1;
