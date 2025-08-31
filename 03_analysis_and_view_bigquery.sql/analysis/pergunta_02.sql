-- Pergunta 2: Quais produtos pertencem à categoria 'Ficção Científica'?

SELECT Nome_Produto, Categoria_Produto
FROM `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.produtos`
WHERE Categoria_Produto = 'Ficção Científica';

