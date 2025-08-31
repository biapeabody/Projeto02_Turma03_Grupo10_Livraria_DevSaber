%md
# 📊 Pipeline de Dados e Análise com SQL no BigQuery
## 📔 Livraria DevSaber

## 📌 Contexto

No contexto para o mini projeto de de pipeline de dados em SQL, vamos trabalhar com a livraria DevSaber que é uma loja de vendas online onde atualmente os dados como vendas, produtos e de todos os clientes estao armazenados em planilhas distintas. Sabemos que planilhas sao uteis para pequenos volumes de dados, como a livraria tem aumentado o seu volume de vendas, agora precisar cuidar desses dados de maneira mais eficiente e ordenada.

A gestão de vendas da livraria era realizada em **planilhas**, o que gerava:
- Falta de escalabilidade  
- Riscos de integridade dos dados  
- Baixa capacidade analítica  

---

## 🎯 Objetivo
Migrar o processo para um **Data Warehouse no Google BigQuery**, garantindo **qualidade dos dados** e viabilizando **análises estratégicas**.

---

## 🛠️ Solução Implementada

- Criação de um **mini Data Warehouse** no **BigQuery**  
- Sintaxe e Nomenclatura
  - Tipos de dados ((Diferenças Chave))

      - **STRING** → TEXTO
      - **NUMERIC** → NUMEROS DECIMAIS
      - **FLOAT64** → NUMEROS DE PONTOS FLUTUANTES
      - **DATE/ DATETIME / TIMESTAMP** → DATA E HORA
      - **INT64** → NUMEROS INTEIROS

- Desenvolvimento de um **pipeline de dados completo**:  
  - **Modelagem** (definição de tabelas e relacionamentos)  
  - **Ingestão** (carregamento de dados via scripts SQL)  
  - **Análise** (consultas SQL e criação de views analíticas)  

- Estruturação de um **schema relacional** com tabelas de:
  - **clientes**  
  - **produtos**  
  - **vendas**  

---

## 🚀 Stack Tecnológica e Conceitos
- **Cloud & DW:** Google BigQuery  
- **Linguagem:** SQL (DDL, DML)  
- **Princípios aplicados:**  
  - Scripts **idempotentes** (`CREATE OR REPLACE`)  
  - Relacionamentos lógicos (`JOIN`)  
  - Agregações (`SUM`, `GROUP BY`)  
  - Automação via **VIEWs**  

--- 

## Projeto desenvolvido por:

  * _Ana Beatriz Torres Neri_
  * _Denilza Lima da Silva_
  * _Kryssia José de Mendonça_
  * _Raylane Araujo de Sousa_
  * _Rayra Bandeira de Mello Gomes Dias_
  * _Renato Gomes Souza_
  * _Thaís Falcão De Souza_


## Links de acesso ao projeto 


  * Base de dados no BigQuery

     https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1st1engenhariadados!2sLivraria_DevSaber_Turma3_Grupo10

  
---

## 📦 Estrutura do Repositório


```bash
📁 PROJETO02_TURMA03_GRUPO10_LIVRARIA_DEVSABER
 ┣ 📂 01_create_tables_bigquery.sql
 ┃ ┣ 📜 clientes.sql
 ┃ ┣ 📜 produtos.sql
 ┃ ┗ 📜 vendas.sql
 ┣ 📂 02_insert_data_bigquery.sql
 ┃ ┣ 📜 insert_clientes.sql
 ┃ ┣ 📜 insert_produtos.sql
 ┃ ┗ 📜 insert_vendas.sql
 ┣ 📂 03_analysis_and_view_bigquery.sql
 ┃ ┣ 📂 analysis
 ┃ ┃ ┣ 📜 pergunta_01.sql
 ┃ ┃ ┣ 📜 pergunta_02.sql
 ┃ ┃ ┣ 📜 pergunta_03.sql
 ┃ ┃ ┣ 📜 pergunta_04.sql
 ┃ ┃ ┣ 📜 pergunta_05.sql
 ┃ ┃ ┣ 📜 pergunta_06.sql
 ┃ ┃ ┣ 📜 pergunta_07.sql
 ┃ ┃ ┣ 📜 pergunta_08.sql
 ┃ ┃ ┣ 📜 pergunta_09.sql
 ┃ ┃ ┗ 📜 pergunta_10.sql
 ┃ ┣ 📂 views
 ┃ ┃ ┣ 📜 vw01_vendas_detalhadas.sql
 ┃ ┃ ┣ 📜 vw02_receita_mensal.sql
 ┃ ┃ ┣ 📜 vw03_top_10_clientes.sql
 ┃ ┃ ┗ 📜 vw04_vendas_RR.sql
 ┗ 📜 README.md
``` 
 
 
 ---


## 💡 Perguntas respondidas na construção do projeto


- Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?

  **resposta:** 

   _Planilhas sao limitadas quando se tratam de analise do dados. Sua limitação ao conectar e organizar dados com varias tabelas dificulta a automação de consultas, a integração com ferramentas de analise de dados e a outros sistemas se tornam ineficazes. Um ponto de atenção é a segurança das planilhas, a qualquer momento podem sofrer alterações erroenas e inesperadas, aumentando o indice de erro e ineficiencia dos dados._

---

_Perguntas resposndidas com as consultas_

- Que tipo de perguntas vocês acham que o dono da livraria gostaria de responder com esses dados?
  - Pergunta 1: 
      * **Qual o nome dos clientes que moram no estado de 'SP'?**

        Clientes de SP: há 15 clientes residentes em São Paulo (UF = SP).

  - Pergunta 2: 
      *  **Quais produtos pertencem à categoria 'Ficção Científica'?** 

         Ficção Científica: 4 títulos — O Guia do Mochileiro, Duna, Neuromancer e 1984.
  - Pergunta 3: 
      * **Listar todas as vendas, mostrando o nome do cliente, o nome do produto e a data da venda. Ordene pela data.**

        Vendas (ordenadas por data): 30 vendas entre 15/01/2024 e 05/11/2024, envolvendo 10 clientes. Primeira: Thaís Falcão De Souza → “Fundamentos de SQL” (15/01/2024). Mais recente: Ana Beatriz Torres Neri → “Inteligência Artificial Moderna” (05/11/2024). Produtos repetidos: “Duna” e “Fundamentos de SQL”.
  
  - Pergunta 4: 
      * **Qual o valor total de cada venda? (quantidade * preço).**

        30 vendas no total: 25 com quantidade 1 (total = preço) e 5 com quantidade 2 (total ≈ dobro do preço).
      
  - Pergunta 5:   
      * **Qual o produto mais vendido em termos de quantidade?**

          O produto com maior quantidade vendida foi “Fundamentos de SQL”, com 2 unidades no total.

  - Pergunta 6: 
      * **Qual foi o produto mais vendido em 'SP'?**    

          Em SP, o destaque foi “Python para Dados”: 2 unidades vendidas, R$ 75,00 cada, gerando R$ 150,00 de receita total.

  - Pergunta 7: 
      * **Qual o faturamento total por categoria de produto??**   

          Em síntese:Dados lidera o faturamento e Ficção é a menor receita. Dados: R$ 709,90 (maior) e Ficção: R$ 38,00 (menor)

  - Pergunta 8: 
      * **Vendas por Estado.**

          Receita total: R$ 2.549,30. MG lidera a receita; RJ é o menor faturamento.
  

  - Pergunta 9: 
      * **Qual cliente gerou a maior receita para a livraria?**

         O cliente que mais faturou para a livraria foi Renato Gomes, com R$ 512,00 no total.

  - Pergunta 10: 
      * **Valor do ticket medio de compra por cliente.**

         Maior: Renato Gomes — R$ 170,67. Faixa alta: Denilza (R$ 102,63), Kryssia (R$ 97,33), Raylane (R$ 96,00). Menor: Valdemir Ferreira Júnior — R$ 40,67 (seguido de Rayra, R$ 48,45).A maioria dos clientes fica entre R$ 60 e R$ 100.
       
 --- 

  - Com base nos dados brutos, quais outras duas tabelas precisamos criar? Que colunas e tipos de dados elas teriam?

    **resposta:**

    _Se a gente tem dados brutos de vendas, normalmente eles vêm meio misturados, tipo: ID do cliente, nome do cliente, produto comprado, categoria, preço, quantidade, data da compra tudo junto numa tabela só. Pra organizar melhor (e não ficar repetindo informação à toa), a gente costuma separar em tabelas. Além da tabela de vendas, que já existe, faria sentido criar pelo menos mais duas tabelas._

 - Se o BigQuery não tem chaves estrangeiras, como garantimos que um ID_Cliente na tabela de vendas realmente existe na tabela de clientes? (Resposta: A responsabilidade é nossa, na hora de construir a consulta com o JOIN).

   **resposta:**

   _Quem tem que garantir isso somos nós, quando fazemos a consulta. Ou seja, na hora de montar o JOIN, eu junto as duas tabelas pelo ID_Cliente. Se não existir esse cliente na tabela de clientes, ele não aparece no resultado (ou aparece nulo, dependendo do tipo de JOIN que eu usar)._


- Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?

  **resposta:**

  _A tabela Clientes e Produtos sao tabelas que contem as chamadas _primary keys_ que podem ser os pontos de partida para as conexões de relacionamento entre as demais tabelas, principalmente para a tabela de vendas, onde contem as _foreign keys_, onde a chave de identificação de vendas carrega tbm as chaves de produtos e clientes. Sendo assim, a ordem de criação da tabela deve seguir uma ordem logica para que haja nexo na tabela de vendas._

 - Em um cenário com milhões de vendas por dia, o INSERT INTO seria a melhor abordagem?

   **resposta:**

   _Pode ser que nao seja a melhor opção. Para o uso de grandes volumes de dados, é indicado que seja realizada a conexão com servidores de dados._

 - Qual é a principal vantagem de usar uma VIEW em vez de simplesmente salvar o código em um arquivo de texto?

   **resposta:**   
   _Uma view economiza nos dados processados._ 

 - Se o preço de um produto mudar na tabela Produtos, o Valor_Total na VIEW será atualizado automaticamente na próxima vez que a consultarmos?

   **resposta:**
   
   _Sim. Os dados de uma `view` nao serao armazenados. Apenas a consulta. Entao, sempre que for execultada a consulta (view) salva, os dados serao carregados conforme atualização no banco de dados._
      


