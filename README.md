# 📊 Projeto: Implantação de DW e BI para Vendas | Livraria DevSaber

## 📌 Contexto
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
- Desenvolvimento de um **pipeline de dados completo**:  
  - **Modelagem** (definição de tabelas e relacionamentos)  
  - **Ingestão** (carregamento de dados via scripts SQL)  
  - **Análise** (consultas SQL e criação de views analíticas)  
- Estruturação de um **schema relacional** com tabelas de:
  - **Clientes**  
  - **Produtos**  
  - **Vendas**  

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

## 📦 Estrutura do Repositório
```bash
📁 livraria-devsaber-dw
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
 ┃ ┃ ┣ 📜 pergunta_1_0.sql
 ┃ ┃ ┣ 📜 pergunta_1_2.sql
 ┃ ┃ ┗ 📜 pergunta_1_3.sql
 ┃ ┣ 📂 views
 ┃ ┃ ┗ 📜 vw01_vendas_detalhadas.sql
 ┗ 📜 README.md
