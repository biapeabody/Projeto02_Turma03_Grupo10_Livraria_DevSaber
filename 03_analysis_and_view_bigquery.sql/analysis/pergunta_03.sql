-- Pergunta 3: Listar todas as vendas, mostrando o nome do cliente, o nome do produto e a data da venda. Ordene pela data.

SELECT
    C.Nome_Cliente,
    P.Nome_Produto,
    V.Data_Venda
FROM `t1engenhariadados.Grupo_10.Vendas` AS V
JOIN `t1engenhariadados.Grupo_10.Clientes` AS C ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Grupo_10.Produtos` AS P ON V.ID_Produto = P.ID_Produto
ORDER BY V.Data_Venda;
