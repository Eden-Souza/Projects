# Análise Comparativa de Métodos de Investimento para o Trabalho de conclusão de curso de engenharia de produção

## Objetivo

Este projeto teve como objetivo comparar quatro métodos de investimento utilizando como base a construção de portfólios com as seguintes metodologias:

- **Barsi**  
- **Basin**  
- **Graham**  
- **Greenblatt**  

A análise foi estruturada para avaliar o retorno dos métodos e seus respectivos riscos utilizando métricas como o **Índice Sharpe**, que relaciona risco e retorno, comparando-os a benchmarks como inflação e taxa Selic. A ideia central foi verificar se os portfólios gerados poderiam ser utilizados como alternativa previdenciária ao INSS, considerando um investimento mensal de **7,5% do salário mínimo anual** ao longo dos últimos 10 anos.

---

## Construção da Base de Dados

As bases de dados foram criadas com o auxílio de um código em **Python** utilizando a **API do YFinance** para coletar as ações listadas na bolsa e seus indicadores financeiros. Após a aplicação de filtros específicos para cada método, foi gerada uma carteira contendo 10 ações para cada modelo de investimento. 

A partir dessas carteiras, foi realizado um **backtest** simulando aportes regulares e analisando os resultados em termos de:

- **Retorno do Portfólio**  
- **Risco do Portfólio**  
- **Ganho de Capital**  
- **Dividendos Acumulados**  

O risco do portfólio foi calculado utilizando as equações de Markowitz, baseando-se na correlação entre os ativos da carteira.

---

## Métricas Avaliadas

1. **Índice Sharpe**  
   Avaliou-se a eficiência do retorno de cada método em relação ao risco associado, considerando:
   - **Inflação Média do Período**: Representa a perda de valor do dinheiro ao longo do tempo.
   - **Taxa Selic Média do Período**: Considerada o menor risco, servindo como benchmark.

2. **Risco e Retorno**  
   Analisou-se a viabilidade dos métodos considerando a relação risco-retorno de cada portfólio, buscando equilibrar os resultados com a diversificação de ativos.

3. **Previdência Alternativa**  
   O estudo foi conduzido para verificar se investir nas ações selecionadas pelos métodos poderia ser uma alternativa viável de previdência privada em relação ao modelo tradicional do INSS.

---

## Ferramenta de Visualização

Foi criado um relatório interativo em **Streamlit**, permitindo explorar os dados gerados e visualizar os resultados de forma clara e intuitiva. O relatório inclui gráficos como:

- Gráficos de linhas para variação de preços dos ativos.
- Mapas de calor para correlações entre ações.
- Treemaps para distribuição de ativos na carteira.
- Gráficos de barras para:
  - Retorno do Portfólio.
  - Risco do Portfólio.
  - Dividendos Acumulados.
  - Ganho de Capital.

---

## Conclusão

Este estudo possibilitou uma avaliação comparativa robusta dos quatro métodos de investimento. Com a aplicação de ferramentas como **YFinance**, **Streamlit**, e as equações de **Markowitz**, foi possível mensurar o desempenho de cada método, oferecendo uma visão abrangente sobre os riscos e retornos associados.

Os resultados apresentados no relatório fornecem uma base sólida para avaliar o uso de ações como alternativa ao INSS e como ferramenta previdenciária a longo prazo.
