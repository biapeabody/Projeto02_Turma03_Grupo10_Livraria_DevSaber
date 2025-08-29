-- Este script cria a estrutura do schema no Google BigQuery.
-- Tabelas são criadas com `CREATE OR REPLACE TABLE` para permitir a execução repetida do script.
-- Lembre-se de substituir `t1engenhariadados.Grupo_10` pelo nome do seu projeto e dataset.

-- Tabela de Clientes
-- Armazena informações únicas de cada cliente.
-- No BigQuery, chaves primárias não são impostas, mas ID_Cliente serve como identificador lógico.

CREATE OR REPLACE TABLE `t1engenhariadados.Grupo_10.Clientes` (
    ID_Cliente INT64,
    Nome_Cliente STRING,
    Email_Cliente STRING,
    Estado_Cliente STRING
);
