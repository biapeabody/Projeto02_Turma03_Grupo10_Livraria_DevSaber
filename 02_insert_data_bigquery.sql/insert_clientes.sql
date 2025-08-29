-- Este script popula as tabelas criadas no BigQuery.
-- A cláusula VALUES é usada para inserir múltiplas linhas de uma vez.

-- Inserção de dados na tabela Clientes (sem duplicatas)
INSERT INTO `t1engenhariadados.Grupo_10.Clientes` (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
    (1, 'Thaís Falcão De Souza', 'thais.falcao@email.com', 'SP'),
    (2, 'Ana Beatriz Torres Neri', 'ana.beatriz.costa@email.com', 'PE'),
    (3, 'Kryssia José de Mendonça', 'kryssia.j@email.com', 'SP'),
    (4, 'Denilza Lima da Silva', 'denilzal.s@email.com', 'GO'),
    (5, 'Renato Gomes', 'renato.go@email.com', 'BA'),
    (6, 'Raylane Araujo de Sousa', 'rayaraujo.s@email.com', 'MG'),
    (7, 'Denis Barbosa Soares', 'denisbarbosa.s@email.com', 'MG'),
    (8, 'Rayra Bandeira de Mello Gomes Dias', 'rayra.b@email.com', 'MG'),
    (9, 'Anelise Azevedo', 'anelise.a@email.com', 'MG'),
    (10, 'Valdemir Ferreira Júnior', 'valdemir.ferreira@email.com', 'SP')