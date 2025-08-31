-- Pergunta 1: Qual o nome dos clientes que moram no estado de 'SP'?

SELECT Nome_Cliente, Estado_Cliente
FROM `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.clientes`
WHERE Estado_Cliente = 'SP';
