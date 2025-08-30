-- Pergunta 4: Vendas por Estado

SELECT
    c.Estado_Cliente,
    SUM(v.Quantidade * p.Preco_Produto) AS Receita_Total_Por_Estado
FROM
    `t1engenhariadados.Grupo_10.Vendas` AS v
JOIN
    `t1engenhariadados.Grupo_10.Clientes` AS c ON v.ID_Cliente = c.ID_Cliente
JOIN
    `t1engenhariadados.Grupo_10.Produtos` AS p ON v.ID_Produto = p.ID_Produto
GROUP BY
    c.Estado_Cliente
ORDER BY
    Receita_Total_Por_Estado DESC;