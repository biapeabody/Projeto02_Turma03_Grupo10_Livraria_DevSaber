CREATE OR REPLACE VIEW `t1engenhariadados.Grupo_10.vw_receita_mensal` AS
SELECT
    FORMAT_DATE('%Y-%m', Data_Venda) AS Ano_Mes,
    SUM(V.Quantidade * P.Preco_Produto) AS Receita_Mensal
FROM
    `t1engenhariadados.Grupo_10.Vendas` AS V
JOIN
    `t1engenhariadados.Grupo_10.Produtos` AS P ON V.ID_Produto = P.ID_Produto
GROUP BY
    Ano_Mes
ORDER BY
    Ano_Mes;
