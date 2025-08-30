-- Pergunta 9: Qual cliente gerou a maior receita para a livraria?

SELECT
    C.Nome_Cliente,
    SUM(V.Quantidade * P.Preco_Produto) AS Receita_Total
FROM
    `t1engenhariadados.LivrariaDevSaber_3_10.Vendas` AS V
JOIN
    `t1engenhariadados.LivrariaDevSaber_3_10.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN
    `t1engenhariadados.LivrariaDevSaber_3_10.Produtos` AS P ON V.ID_Produto = P.ID_Produto
GROUP BY
    C.Nome_Cliente
ORDER BY
    Receita_Total DESC
LIMIT 1;
