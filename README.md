# 📊 Pipeline de Dados e Análise com SQL no BigQuery
## 📔 Livraria DevSaber

## 📌 Contexto

No contexto para o mini projeto de de pipeline de dados em SQL, vamos trabalhar com a livraria DevSaber é uma loja de vendas online onde atualmente os dados como vendas, produtos e de todos os clientes estao armazenados em planilhas distintas. Sabemos que planilhas sao uteis para pequenos volumes de dados, como a livraria tem aumentado o seu volume de vendas, agora precisar cuidar desses dados de maneira mais eficiente e ordenada.

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


## 💡 Perguntas respondidas 



---
