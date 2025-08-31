-- Pergunta 10 - Valor do ticket medio de compra por cliente.

SELECT 
    c.ID_Cliente,
    c.Nome_Cliente,
    ROUND(SUM(v.Quantidade * p.Preco_Produto) /   -- soma a quantidade de produtos vendidos * o preco do produto
    COUNT(DISTINCT v.ID_Venda), 2) AS Ticket_Medio -- count traz a quantidade de linhas no numero de vendas

FROM
   `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` v

JOIN 
  `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.clientes`  c
    ON v.ID_Cliente = c.ID_Cliente  -- ROUND() arredonda as casas decimais da media de idade
   
JOIN 
  `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos`  p
    ON v.ID_Produto = p.ID_Produto

GROUP BY 
    c.ID_Cliente,
    c.Nome_Cliente    

ORDER BY 
      Ticket_Medio DESC;