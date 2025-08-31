-- Pergunta 3: Listar todas as vendas, mostrando o nome do cliente, o nome do produto e a data da venda. Ordene pela data.

SELECT
    C.Nome_Cliente,
    P.Nome_Produto,
    V.Data_Venda
FROM `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` AS V
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.clientes` AS C
    ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos` AS P
    ON V.ID_Produto = P.ID_Produto
ORDER BY V.Data_Venda;