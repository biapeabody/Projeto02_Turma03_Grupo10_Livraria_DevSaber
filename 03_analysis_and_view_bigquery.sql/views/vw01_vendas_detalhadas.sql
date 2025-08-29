CREATE OR REPLACE VIEW `t1engenhariadados.Grupo_10.vw_vendas_detalhadas` AS
SELECT
    V.ID_Venda,
    V.Data_Venda,
    C.Nome_Cliente,
    C.Estado_Cliente,
    P.Nome_Produto,
    P.Categoria_Produto,
    V.Quantidade,
    P.Preco_Produto,
    (V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.Grupo_10.Vendas` AS V
JOIN `t1engenhariadados.Grupo_10.Clientes` AS C 
    ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Grupo_10.Produtos` AS P 
    ON V.ID_Produto = P.ID_Produto;
