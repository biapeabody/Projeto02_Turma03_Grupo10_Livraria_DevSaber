SELECT
    FORMAT_DATE('%Y-%m', Data_Venda) AS Ano_Mes,
    SUM(V.Quantidade * P.Preco_Produto) AS Receita_Mensal
FROM
    `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` AS V
JOIN
    `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos` AS P 
    ON V.ID_Produto = P.ID_Produto
GROUP BY
    Ano_Mes
ORDER BY
    Ano_Mes