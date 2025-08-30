-- Pergunta 8: Vendas por Estado

SELECT
    C.Estado_Cliente,
    SUM(V.Quantidade * P.Preco_Produto) AS Receita_Total_Por_Estado
FROM
    `t1engenhariadados.LivrariaDevSaber_3_10.Vendas` AS V
JOIN
    `t1engenhariadados.LivrariaDevSaber_3_10.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN
    `t1engenhariadados.LivrariaDevSaber_3_10.Produtos` AS P ON V.ID_Produto = P.ID_Produto
GROUP BY
    C.Estado_Cliente
ORDER BY
    Receita_Total_Por_Estado DESC;
