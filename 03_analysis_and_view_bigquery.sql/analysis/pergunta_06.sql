
-- Pergunta 6: Qual foi o produto mais vendido em 'SP'?

SELECT p.Nome_Produto, SUM(v.Quantidade) AS Total_Vendido
FROM `t1engenhariadados.Grupo_10.Vendas` v
JOIN `t1engenhariadados.Grupo_10.Clientes` c ON v.ID_Cliente = c.ID_Cliente
JOIN `t1engenhariadados.Grupo_10.Produtos` p ON v.ID_Produto = p.ID_Produto
WHERE c.Estado_Cliente = 'SP'
GROUP BY p.Nome_Produto
ORDER BY Total_Vendido DESC
LIMIT 1;
