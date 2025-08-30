-- Pergunta 2: Quais produtos pertencem à categoria 'Ficção Científica'?

SELECT Nome_Produto
FROM `t1engenhariadados.Grupo_10.Produtos`
WHERE Categoria_Produto = 'Ficção Científica';
