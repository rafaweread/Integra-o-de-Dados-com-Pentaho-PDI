# Transformação de Dados com Pentaho Data Integration

Este repositório serve como um guia prático e demonstrativo sobre o processo de **Extração, Transformação e Carga (ETL)** utilizando a ferramenta open-source **Pentaho Data Integration (PDI)**. O objetivo é ilustrar um fluxo de trabalho completo, desde a coleta de dados brutos de múltiplas fontes até a sua consolidação em um **Data Warehouse (DW)**, preparando-os para análise e geração de insights.

---
## O Conceito de ETL

ETL é um processo fundamental em Business Intelligence e engenharia de dados. Ele consiste em três etapas distintas:

1.  **Extração (Extract):** A primeira fase envolve a coleta de dados de diversas fontes, que podem ser bancos de dados relacionais (MySQL, PostgreSQL), arquivos de texto (CSV, JSON, XML), planilhas ou APIs de serviços web.

2.  **Transformação (Transform):** Esta é a etapa mais complexa, onde os dados extraídos são convertidos para um formato adequado. As tarefas de transformação incluem:
    * **Limpeza:** Correção de inconsistências, erros e tratamento de valores nulos.
    * **Padronização:** Aplicação de regras para uniformizar os dados (ex: formatos de data, unidades de medida).
    * **Enriquecimento:** Cruzamento de dados com outras fontes para adicionar novas informações.
    * **Agregação:** Sumarização dos dados (ex: total de vendas por região).

3.  **Carga (Load):** Na fase final, os dados já transformados são carregados no destino final, que geralmente é um Data Warehouse ou um Data Mart, onde estarão disponíveis para consulta e análise.

A imagem abaixo ilustra de forma simplificada este fluxo:

![Ilustração do processo ETL](https://imgur.com/a/HLKf7uF)
*Fonte: Diagrama genérico do processo ETL.*

---
## O que é um Data Warehouse?

Um **Data Warehouse (DW)** é um repositório centralizado e otimizado para análise de dados. Diferente de um banco de dados transacional (OLTP), que é projetado para registrar transações do dia a dia, um DW é projetado para consultas analíticas complexas (OLAP).

Ele armazena dados históricos e atuais de forma consolidada, provenientes de diferentes sistemas da organização, servindo como uma **"fonte única da verdade"** para suportar a tomada de decisões estratégicas.

A arquitetura típica de um Data Warehouse é demonstrada abaixo:

![Arquitetura de um Data Warehouse](https://imgur.com/TFfSwXR)
*Fonte: Diagrama genérico da arquitetura de um Data Warehouse.*

---
## 🛠️ Ferramentas e Tecnologias

* **Pentaho Data Integration (PDI / Kettle):** Ferramenta principal para o desenvolvimento visual dos fluxos de ETL.
* **MySQL / PostgreSQL:** Exemplos de Sistemas Gerenciadores de Banco de Dados que podem ser usados como fonte (origem) e destino (DW).
* **Spoon:** A interface gráfica do PDI onde as transformações (`.ktr`) e os jobs (`.kjb`) são criados.

---
## 🚀 Como Executar o Projeto

Para executar os exemplos contidos neste repositório, siga os passos abaixo:

1.  **Instalação:** Certifique-se de ter o [Pentaho Data Integration (Community Edition)](https://www.hitachivantara.com/en-us/products/pentaho-platform/data-integration-analytics/pentaho-community-edition.html) instalado.
2.  **Banco de Dados:** Prepare seu banco de dados de origem e destino. Os scripts para criação das tabelas de exemplo estão na pasta `/scripts_sql`.
3.  **Configuração:** Abra os arquivos de transformação (`.ktr`) ou job (`.kjb`) no Spoon. Acesse a área de "View" e configure as conexões de banco de dados para apontar para o seu ambiente.
4.  **Execução:** Com as conexões configuradas, clique no botão "Play" (Executar) na interface do Spoon para iniciar o processo.

---
## 📂 Estrutura do Repositório