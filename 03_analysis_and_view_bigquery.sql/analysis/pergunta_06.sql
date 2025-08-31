-- Pergunta 6: Qual foi o produto mais vendido em 'SP'?

SELECT 
    C.Estado_Cliente,
    P.Nome_Produto, 
    P.Preco_Produto AS Valor_Unitario,
    SUM(V.Quantidade) AS Total_Vendido,
    SUM(V.Quantidade * P.Preco_Produto) AS Receita_Total
FROM `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` AS V
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.clientes` AS C
    ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos` AS P
    ON V.ID_Produto = P.ID_Produto
WHERE C.Estado_Cliente = 'SP'
GROUP BY C.Estado_Cliente, P.Nome_Produto, P.Preco_Produto
ORDER BY Receita_Total DESC
LIMIT 1;