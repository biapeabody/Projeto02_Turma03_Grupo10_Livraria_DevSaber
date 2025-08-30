CREATE OR REPLACE VIEW `t1engenhariadados.Grupo_10.vw_top_10_clientes` AS
SELECT
    C.ID_Cliente,
    C.Nome_Cliente,
    SUM(V.Quantidade * P.Preco_Produto) AS Receita_Total_Gerada
FROM
    `t1engenhariadados.Grupo_10.Vendas` AS V
JOIN
    `t1engenhariadados.Grupo_10.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN
    `t1engenhariadados.Grupo_10.Produtos` AS P ON V.ID_Produto = P.ID_Produto
GROUP BY
    C.ID_Cliente,
    C.Nome_Cliente
ORDER BY
    Receita_Total_Gerada DESC
LIMIT 10;
