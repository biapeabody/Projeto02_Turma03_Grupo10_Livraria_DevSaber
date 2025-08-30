%md
%md
#  Introdução

No contexto para o mini projeto de de pipeline de dados em SQL, vamos trabalhar com a  livraria DevSaber é uma loja de vendas online onde atualmente os dados como vendas, produtos e de todos os clientes estao armazenados em planilhas distintas. Sabemos que planilhas sao uteis para pequenos volumes de dados, como a livraria tem aumentado o seu volume de vendas, agora precisar cuidar desses dados de maneira mais eficiente e ordenada. 

### Objetivo

O projeto tem como objetivo transformar as planilhas de dados da Livraria DevSaber num _mini data warehouse_ inteligente no BigQuery. 
Criaremos um todo o pipeline de dados: estrututura, carregamento, e analise de algumas questões de negócio da livraria.


> 🎯 Objetivo de aprendizagem

Ao final desse projeto sabere estruturar um schema, realizar a ingetsçao de dados, construir consultas SQL analiticas, desenvolver uma view e muito mais. 

**1. Estruturas e armazenamento no Big Query**

* Sintaxe e Nomenclatura
      
 `CREATE TABLE` e `CREATE OR REPLACE`  utilizados para que o script de criação seja executado várias vezes sem gerar erros, substituindo a tabela existente.

* Tipos de dados

_STRING_ → TEXTO

_NUMERIC_ → NUMEROS DECIMAIS 

_FLOAT64_ → NUMEROS DE PONTOS FLUTUANTES

_DATE / DATETIME / TIMESTAMP_ → DATA E HORA 

_INT64_ → NUMEROS INTEIROS


* O Conceito de "Sem Chaves" (Paradigma Fundamental)

O BigQuery não impõe restrições de `PRIMARY KEY` ou `FOREIGN KEY`. Os relacionamentos entre tabelas através da condição na cláusula `JOIN `... `ON`


**2. Carregando Dados**


* Ingestão com `INSERT` e `INSERT INTO `no BigQuery


**3. Analise de Dados**


A sintaxe para consultar dados no BigQuery é em grande parte compatível com o padrão ANSI SQL.

`SELECT`,
`FROM`, 
`JOIN`, 
`WHERE`, 
`GROUP BY`, 
`ORDER BY`
`SUM()` 
`COUNT()`


**4. Automação e Reuso: `VIEW` no BigQuery**


Toda vez que a `VIEW` é consultada, o BigQuery executa a consulta SQL subjacente que a define. O custo de consultar a `VIEW` é o mesmo custo de executar a consulta original.



> 📊 Base de Dados


Os dados utilizados nessa análise foram abtidos das planilhas ficticias da livraria:
https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1st1engenhariadados!2sGrupo_10

No dataset contem informações  sobre compras realizadas na livraria contendo data, quantidade, categorias de livros, linhas de produtos e informações de clientes.


> 🛠️ Ferramentas 


Para o projeto foi utiliazado o BigQuery para desenvolver e estruturar os dados disponibilizados para as consultas. 


> 🔬 Análise Realizada


**💡Contexto**

A livraria precisava utilizar os dados gerados atarves das vendas, produtos e clientes para levantar questões de sobre a segmentação de produtos, perfil de clientes, e principlamente porque agora precisava tomar decisões estrategicas para continuar o crescimento do negócio, totalmente baseado em numeros(dados).

Essas foram algumas perguntas feitas sobre o negocio e foram respondidas como os dados da consulta realizada: 

        1. Rankear vendas por categorias para o exercico de 2024, identificar a categoria mais vendida. 
                 
        2. Identificar o Estado com maior e menor numero de vendas no ano de 2024.

        3. Título de maior interesse pelos clientes no estado de RR no ano de 2023.

        4. Idade média dos clientes por categoria.

        5. Quais produtos tiveram maior saída.

        6. Valor do ticket medio de compra por cliente.

        7. Exibir apenas os titulos correspondentes a uma categoria.

        


Alem disso, alguns questionamentos foram importantes para sintetizar o conteúdo e maximizar a capacidade de aprendizado do grupo. Por isso, vamos responder algumas perguntas: 

### *Perguntas para a turma*



1. _Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?_

    resposta:

            Planilhas sao limitadas quando se tratam de analise do dados. Sua limitação ao conectar e organizar dados com varias tabelas dificulta a automação de consultas, a integração com ferramentas de analise de dados e a outros sistemas se tornam ineficazes. Um ponto de atenção é a segurança das planilhas, a qualquer momento podem sofrer alterações erroenas e inesperadas, aumentando o indice de erro e ineficiencia dos dados.


2.  _Que tipo de perguntas vocês acham que o dono da livraria gostaria de responder com esses dados?_

      resposta: (Sugestão: INSERIR INFORMAÇÕES SOBRE PERGUNTAS ELABORADAS PARA AS CONSULTAS)

            1. Rankear vendas por categorias em cada trimestre do ultimo exercicio para os resultados em cada estado;            

            2. Identificar periodo de menor e maior numero de vendas por estado em cada trimestre:

            3. Título de maior interesse pelos clientes no ultimo ano;

            4. Quantidade de vendas semanal. (view)

       

3. _Com base nos dados brutos, quais outras duas tabelas precisamos criar? Que colunas e tipos de dados elas teriam?_

      resposta:
	  Se a gente tem dados brutos de vendas, normalmente eles vêm meio misturados, tipo: ID do cliente, nome do cliente, produto comprado, categoria, preço, quantidade, data da compra tudo junto numa tabela só.

Pra organizar melhor (e não ficar repetindo informação à toa), a gente costuma separar em tabelas. Além da tabela de vendas, que já existe, faria sentido criar pelo menos mais duas tabelas

4. _Se o BigQuery não tem chaves estrangeiras, como garantimos que um ID_Cliente na tabela de vendas realmente existe na tabela de clientes? (Resposta: A responsabilidade é nossa, na hora de construir a consulta com o JOIN)._

      resposta:
	  Quem tem que garantir isso somos nós, quando fazemos a consulta. Ou seja, na hora de montar o JOIN, eu junto as duas tabelas pelo ID_Cliente. Se não existir esse cliente na tabela de clientes, ele não aparece no resultado (ou aparece nulo, dependendo do tipo de JOIN que eu usar)



5. _Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?_

      resposta: 
      
            A tabela Clientes e Produtos sao tabelas que contem as chamadas _primary keys_ que podem ser os pontos de partida para as conexões de relacionamento entre as demais tabelas, principalmente para a tabela de vendas, onde contem as _foreign keys_, onde a chave de identificação de vendas carrega tbm as chaves de produtos e clientes. Sendo assim, a ordem de criação da tabela deve seguir uma ordem logica para que haja nexo na tabela de vendas.


6. _Em um cenário com milhões de vendas por dia, o `INSERT INTO` seria a melhor abordagem?_

      resposta:

            Pode ser que nao seja a melhor opção. Para o uso de grandes volumes de dados, é indicado que seja realizada a conexão com servidores de dados.


7. _Qual é a principal vantagem de usar uma `VIEW` em vez de simplesmente salvar o código em um arquivo de texto?_

      resposta: 
              
            Uma view economiza nos dados processados. 


8. _Se o preço de um produto mudar na tabela `Produtos`, o `Valor_Total` na `VIEW` será atualizado automaticamente na próxima vez que a consultarmos?_


     resposta: 

            Sim. Os dados de uma view nao serao armazenados. Apenas a consulta. Entao, sempre que for execultada a consulta (view) salva, os dados serao carregados conforme atualização no banco de dados.

