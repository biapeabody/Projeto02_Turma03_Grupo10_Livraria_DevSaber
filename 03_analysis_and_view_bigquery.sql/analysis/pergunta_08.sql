-- Pergunta 8: Vendas por Estado

SELECT
    C.Estado_Cliente,
    SUM(V.Quantidade * P.Preco_Produto) AS Receita_Total
FROM
    `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` AS V
JOIN
    `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.clientes` AS C
    ON V.ID_Cliente = C.ID_Cliente
JOIN
    `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos` AS P
    ON V.ID_Produto = P.ID_Produto
GROUP BY
    C.Estado_Cliente
ORDER BY
    Receita_Total DESC;