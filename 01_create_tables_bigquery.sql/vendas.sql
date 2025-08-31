-- Tabela de Vendas
-- Tabela de fatos que relaciona clientes e produtos, registrando cada transação.
-- As relações com Clientes e Produtos são lógicas, mantidas pelos campos de ID.


CREATE OR REPLACE TABLE `t1engenhariadados.Livraria_DevSaber_Turma3_Grupo10.vendas` (
    ID_Venda INT64,
    ID_Cliente INT64,
    ID_Produto INT64,
    Data_Venda DATE,
    Quantidade INT64
);
