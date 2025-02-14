# Conclusão do Projeto do Trabalho de conclusão de curso para o curos de Engenharia de Produção

O objetivo deste projeto foi comparar quatro métodos de investimento — **Barsi**, **Basin**, **Graham** e **Greenblatt** — utilizando dados históricos e métricas relevantes para avaliar o desempenho de cada estratégia em um período de 10 anos. A análise considerou uma abordagem previdenciária, onde o foco foi avaliar a possibilidade de substituir o INSS por uma carteira de ações como alternativa para planejamento de aposentadoria.

## Metodologia

1. **Coleta de Dados**:  
   Utilizou-se a API do **YFinance** para coletar dados das ações disponíveis na bolsa brasileira. Foram extraídos indicadores financeiros e aplicados os filtros necessários para montar as carteiras conforme os critérios de cada método.

2. **Construção das Carteiras**:  
   Cada carteira foi composta por **10 ações** selecionadas de acordo com as regras específicas de cada método. A partir disso, foi realizado um **backtest** simulando investimentos mensais equivalentes a **7,5% do salário mínimo anual** ao longo dos últimos 10 anos.

3. **Métricas de Análise**:  
   Foram analisadas as seguintes métricas para cada método:  
   - **Índice Sharpe**: Avaliou o retorno ajustado ao risco, comparando os métodos com a inflação e a taxa Selic, consideradas como benchmarks.  
   - **Risco do Portfólio**: Calculado pelas equações de Markowitz, utilizando a correlação dos ativos para determinar a volatilidade do portfólio.  
   - **Retorno do Portfólio**: Indicou o desempenho financeiro de cada método ao longo do tempo.  
   - **Ganho de Capital** e **Dividendos**: Avaliaram a contribuição de cada componente para o retorno total do portfólio.
   - 
4. **Criação de Relatórios e Visualizações**:

    Um dashboard interativo no Streamlit foi desenvolvido para facilitar a análise dos dados.
    Elementos implementados no relatório:
    - Gráficos de correlação entre os ativos.
    - Evolução histórica dos preços das ações.
    - Distribuição da carteira (gráfico de treemap).
    - Indicadores financeiros, como retorno do portfólio, dividendos, ganho de capital e risco, apresentados de forma visual e comparativa.
    - Análise do Índice Sharpe por método, destacando suas implicações.

## Resultados

1. **Distribuição dos Ativos**:  
   Foi possível visualizar como cada método distribui os investimentos entre os ativos da carteira, representado por gráficos como o **Treemap** e gráficos de **barras**.

2. **Correlação dos Ativos**:  
   O **Mapa de Calor** demonstrou a correlação entre os ativos de cada método, um aspecto crucial para entender a diversificação e o risco.

3. **Retorno e Risco**:  
   Com os gráficos comparativos, observamos que os métodos apresentaram diferentes níveis de retorno e risco, sendo o Índice Sharpe fundamental para interpretar se os retornos compensavam o risco, refletindo suas filosofias de investimento.

4. **Aposentadoria como Alternativa ao INSS**:  
   A análise demonstrou o potencial de utilizar uma carteira de ações como alternativa previdenciária, destacando que uma gestão disciplinada pode superar os retornos da Selic, com o risco sendo mitigado pela diversificação e seleção criteriosa de ativos.

5. **Importância da Diversificação**:

    As análises reforçaram a relevância de compor carteiras diversificadas para minimizar riscos, utilizando a correlação entre ativos para otimizar essa minimização.

## Conclusão Geral

A análise evidencia que **investir em ações pode ser uma alternativa viável ao INSS**, desde que o investidor entenda os riscos e aplique estratégias consistentes e bem fundamentadas, como as apresentadas pelos métodos analisados. Cada método possui características distintas, e a escolha deve levar em conta o perfil do investidor e os objetivos financeiros.

O uso de métricas como o Índice Sharpe e a aplicação de conceitos de Markowitz foram essenciais para avaliar o equilíbrio entre risco e retorno. Além disso, a comparação com a inflação e a Selic reforça a importância de superar esses benchmarks para preservar e aumentar o valor do dinheiro ao longo do tempo.

---

### Desenvolvido por:  
[**Eden Souza**](https://www.linkedin.com/in/eden-souza-dados/)  
