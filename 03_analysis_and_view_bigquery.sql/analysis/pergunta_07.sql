
-- Pergunta 7: Qual o faturamento total por categoria de produto?

SELECT 
    P.Categoria_Produto, 
    SUM(V.Quantidade * P.Preco_Produto) AS Faturamento
FROM `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` AS V
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos` AS P
    ON V.ID_Produto = P.ID_Produto
GROUP BY P.Categoria_Produto
ORDER BY Faturamento DESC;