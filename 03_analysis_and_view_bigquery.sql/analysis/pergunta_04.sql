-- Pergunta 4: Qual o valor total de cada venda? (quantidade * preço)

SELECT
    V.ID_Venda,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.Grupo_10.Vendas` AS V
JOIN `t1engenhariadados.Grupo_10.Produtos` AS P ON V.ID_Produto = P.ID_Produto;
