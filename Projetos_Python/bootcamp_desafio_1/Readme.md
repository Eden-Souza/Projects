# 🚀 Projeto ETL com IA Generativa: Recomendação de Produtos Bancários

## Desafio Santander Bootcamp de Ciência de Dados 🏆

Este projeto foi desenvolvido como parte do primeiro desafio que recebi na bolsa do **Bootcamp de Ciência de Dados do Santander**. 
O foco do projeto foi criar um pipeline **ETL (Extract, Transform, Load)** utilizando a ferramenta de **IA Generativa (ChatGPT)** 
para geração de um banco de dados fictício, enriquecimento dos dados com recomendações de produtos bancários personalizados e 
aplicação de conceitos de **Data Science**.


## 🔧 Tecnologias Utilizadas

- **Python**: Linguagem principal para o desenvolvimento do projeto.
- **Pandas**: Biblioteca utilizada para manipulação de DataFrames e extração dos dados gerados pela IA.
- **ChatGPT**: Utilizado para a geração de clientes fictícios e para fornecer recomendações de produtos bancários.

## ⚠️ Aviso Importante

Para rodar o projeto corretamente, certifique-se de que os dois arquivos CSV necessários estão disponíveis na aba **dataset**:

- `recomendacoes_financeiras.csv`: Contém as recomendações de produtos bancários geradas pela IA.
- `user_data.csv`: Contém os dados dos usuários, incluindo informações como nome, limite da conta e limite de crédito.

Esses arquivos são essenciais para a execução do pipeline ETL e devem estar no diretório apropriado para que o código funcione corretamente.

## 🧠 IA Generativa: Criação dos Clientes e Recomendações de Produtos

A primeira parte do projeto consistiu na geração de um banco de dados com informações 
bancárias fictícias dos clientes (como nome, limite da conta, limite de crédito, etc.) 
usando o **ChatGPT**. Em seguida, a IA foi usada para gerar recomendações de produtos financeiros 
que poderiam agregar valor a cada cliente e ajudá-los a maximizar seus limites, sempre com o objetivo de aumentar a fidelização.

## 💡 O que é ETL?

ETL é o processo de **Extração, Transformação e Carga** de dados. É uma das etapas centrais no 
fluxo de dados em **Data Science** e **Data Engineering**, e consiste em:

1. **Extract (Extrair)**: Obter dados brutos de diferentes fontes.
2. **Transform (Transformar)**: Limpar, modificar e enriquecer os dados, tornando-os úteis para análise.
3. **Load (Carregar)**: Inserir os dados transformados em um destino final, geralmente um banco de dados.


## 🛠️ Processo ETL

O pipeline foi estruturado em três fases principais:

### 1. **Extract (Extração)**

A primeira etapa do pipeline consistiu na extração de dados fictícios, 
gerados via ChatGPT e armazenados em **DataFrames** com a biblioteca **Pandas**. As informações extraídas incluem:

- Nome do cliente
- Limite da conta corrente
- Limite de crédito

### 2. **Transform (Transformação)**

Na fase de transformação, foi utilizada a IA para analisar os perfis financeiros e recomendar produtos 
bancários personalizados. Para isso, foram aplicados os seguintes passos:

- Interação com o ChatGPT para gerar recomendações baseadas no perfil de cada cliente.
- Aplicação de regras de negócios para assegurar que as recomendações sejam apropriadas ao perfil do 
cliente, levando em conta seu limite de crédito.
- **Uso do método `query`** da biblioteca **Pandas** para filtrar os dados de clientes e descobrir a efetividade da transformação dos dados

### 3. **Load (Carga)**

Na última fase, os dados transformados foram preparados para serem inseridos em um arquivo  `.csv `


## 🧩 Habilidades Desenvolvidas

Durante o desenvolvimento deste projeto, aprofundei meus conhecimentos em:

- **Manipulação de DataFrames** com o **Pandas**.
- Criação e manipulação de **dicionários**.
- Uso de **laços de repetição** para iterar sobre os dados e gerar recomendações.
- Uso do método **`query`** do **Pandas** para realizar filtros eficientes nos dados.

## 📈 Conclusão

Este projeto foi uma ótima oportunidade de aplicar conceitos de **Data Science** e **Data Engineering**, combinando ferramentas poderosas como **IA Generativa** e **ETL**, para criar uma solução que enriquece dados fictícios e agrega valor aos clientes de maneira personalizada. Ao mesmo tempo, consegui consolidar conhecimentos importantes em Python, Pandas e SQL.
