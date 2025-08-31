SELECT
    C.Nome_Cliente, 
    C.Estado_Cliente,
    V.ID_Venda,
    P.Nome_Produto,
    P.Categoria_Produto,
    P.Preco_Produto,
    V.Quantidade,   
    V.Data_Venda,
    (P.Preco_Produto * V.Quantidade) AS Total_Compra -- calcula o valor total da compra 
    
FROM 
  `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` AS V    -- tabela principal 

JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.clientes` AS C  -- junta vendas ao cadastro do cliente
  ON V.ID_Cliente = C.ID_Cliente
  
JOIN `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos` AS P  -- junta vendas ao cadastro do produto
  ON V.ID_Produto = P.ID_Produto

WHERE 
  C.Estado_Cliente = 'RR'
ORDER BY 
  V.Data_Venda DESC; 