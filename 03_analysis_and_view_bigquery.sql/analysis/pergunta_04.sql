-- Pergunta 4: Qual o valor total de cada venda? (quantidade * preço)
SELECT
    V.ID_Venda,
    C.Nome_Cliente,
    P.Nome_Produto,
    V.Quantidade,
    P.Preco_Produto,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` AS V
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.clientes` AS C
    ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos` AS P
    ON V.ID_Produto = P.ID_Produto;