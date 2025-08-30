# 📚 [Mini Projeto] Pipeline de Dados e Análise com SQL no BigQuery

## Estrutura do Projeto

### 1️⃣ Introdução: A Missão da Livraria DevSaber
A Livraria DevSaber é uma nova loja online que fez suas primeiras vendas e anotou tudo em uma planilha. Mas para crescer, eles precisavam de insights. Nossa missão era transformar essa planilha em um mini data warehouse inteligente no Google BigQuery. Construindo todo o pipeline de dados: desde criar a estrutura, carregar os dados, até extrair as respostas que ajudarão a livraria a entender melhor seus negócios.
### 2️⃣ Estruturando o Armazenamento

Para a criação das Tabelas usamos `CREATE OR REPLACE TABLE` para que nosso script possa ser executado várias vezes sem erros.

- Clientes
- Produtos
- Vendas

## Estrutura das Tabelas

### **Tabela Clientes**
| Coluna        | Tipo    |
|---------------|---------|
| ID_Cliente    | INT64   |
| Nome_Cliente  | STRING  |
| Email_Cliente | STRING  |
| Estado_Cliente| STRING  |

### **Tabela Produtos**
| Coluna          | Tipo     |
|-----------------|----------|
| ID_Produto      | INT64    |
| Nome_Produto    | STRING   |
| Categoria_Produto| STRING  |
| Preco_Produto   | NUMERIC  |

### **Tabela Vendas**
| Coluna     | Tipo    |
|------------|---------|
| ID_Venda   | INT64   |
| ID_Cliente | INT64   |
| ID_Produto | INT64   |
| Data_Venda | DATE    |
| Quantidade | INT64   |

### 3️⃣ Inserção dos Dados
Inserimos os dados nas tabelas usando `INSERT INTO`.

### 4️⃣ Análise de Dados
Utilizamos `SELECT` para escolher o que queremos ver, `WHERE` para filtrar, `JOIN` para conectar nossas tabelas e `GROUP BY` para agregar e resumir informações.

### 5️⃣ Automação e Reuso
Criamos uma `VIEW` para simplificar o acesso aos dados toda vez que for necessária a consulta.

VIEWS Criadas:

`v_relatorio_vendas_detalhado`

`v_receita_mensal`

`v_top_10_clientes`


### 6️⃣ Conclusão
Este projeto foi desenvolvido para organizar, analisar e extrair insights dos dados de vendas da **Livraria DevSaber** utilizando **Google BigQuery**.  
Com essa estrutura, conseguimos simular um cenário real de uma empresa que deseja entender melhor seu desempenho de vendas.
Ao separar clientes, produtos e vendas em tabelas diferentes, aplicamos conceitos de modelagem de dados e facilitamos análises futuras.
As views permitem consultas rápidas e sempre atualizadas, sem precisar reescrever SQLs complexos.
Esse tipo de abordagem é escalável e prepara a empresa para trabalhar com volumes muito maiores de dados.

### 💻Tecnologias Utilizadas

- Google BigQuery

- SQL

- Markdown (documentação)
---

## 💬Perguntas e Respostas

**Pergunta 1:**

Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?

**R**: Porque não lida bem com grandes volumes de dados, tem alto risco de erros manuais, pouca integração com sistemas e recursos limitados para análises avançadas.

---

**Pergunta 2:**

Que tipo de perguntas o dono da livraria gostaria de responder com esses dados?

**R**: Quais clientes que mais compram?

Qual categoria que mais vende?

Qual é a melhor época do ano para lançar promoções?

Quais regiões compram mais?

O que está impactando a receita de vendas?

---

**Pergunta 3:**

Com base nos dados brutos, quais outras duas tabelas precisamos criar? Que colunas e tipos de dados elas teriam?

**R:** 
Funcionários: ID_Funcionario (INT64), Nome (STRING), Cargo (STRING), Data_Admissao (DATE)

Fornecedores: ID_Fornecedor (INT64), Nome (STRING), CNPJ (STRING), Contato (STRING)

---

**Pergunta 4:**

Se o BigQuery não tem chaves estrangeiras, como garantimos que um ID_Cliente na tabela de vendas realmente existe na tabela de clientes?

**R:** A responsabilidade é nossa, garantindo isso no momento da inserção e validando com JOIN nas consultas.

---

**Pergunta 5:**

Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?

**R:** Porque evita duplicação de dados, mantém consistência e facilita alterações futuras.

---

**Perunta 6:**

Em um cenário com milhões de vendas por dia, o INSERT INTO seria a melhor abordagem?

**R:** Não. Para um cenário de Big Data, INSERT INTO linha a linha seria extremamente lento e custoso. Seria melhor usar cargas em lote (batch load) via arquivos CSV/Parquet ou integração automática.

---

**Pergunta 7:**

Qual é a principal vantagem de usar uma VIEW em vez de simplesmente salvar o código em um arquivo de texto?

**R:** A view sempre retorna dados atualizados e pode ser utilizada por várias pessoas sem precisar copiar o SQL.

---

**Pergunta 8:**

Se o preço de um produto mudar na tabela Produtos, o Valor_Total na VIEW será atualizado automaticamente na próxima vez que a consultarmos?

**R:** Sim. A view consulta os dados em tempo real sempre que é executada.
