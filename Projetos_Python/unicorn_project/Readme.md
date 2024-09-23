# Análise de Startups Unicórnios

Este projeto tem como objetivo analisar o comportamento das startups 
unicórnios (empresas avaliadas em mais de 1 bilhão de dólares) e identificar tendências ao longo dos anos,
especialmente após 2020. A análise foca nos setores mais promissores e na influência de fatores externos, como a pandemia, no crescimento dessas empresas.

## Contexto do Problema

Com o aumento do número de startups unicórnios, principalmente nos últimos anos, surge a necessidade de entender quais setores 
estão se destacando e atraindo mais investimentos. Além disso, é relevante observar 
como o cenário pós-pandemia influenciou o surgimento de novas startups. Este projeto busca responder às seguintes perguntas:

- Quais setores geraram mais unicórnios ao longo dos anos?
- Como o volume de investimentos afetou o crescimento das startups?
- Quais setores geraram maior valor econômico?

## Tecnologias Utilizadas

O projeto foi desenvolvido em **Python**, utilizando as seguintes bibliotecas:

- **Pandas**: Para manipulação e análise de dados.
- **Numpy**: Para cálculos numéricos e tratamento de arrays.
- **Datetime**: Para manipulação de datas.
- **Matplotlib**: Para criação de gráficos e visualizações.
- **Seaborn**: Para gráficos estilizados e análise estatística visual.

### Tratamento de Dados

O dataset utilizado se encontra no repositório com o nome: `unicorns till sep 2022.csv` e pode ser baixado 
no [Kaggle](https://www.kaggle.com/). Os dados foram tratados através das seguintes etapas:

- Verificaçõa de valores nulos [caso eles sejão nocisos para a análise elimina-los] e inconsistentes utilizando gráficos de calor para identificar lacunas.
- Ajuste de tipos de dados corretos para as colunas, como conversão de datas.
- Renomeação de colunas para melhorar a legibilidade e facilitar as análises.

## Análises Realizadas

### Análise 1: Distribuição de Startups ao Longo dos Anos

Foi analisada a distribuição do número de startups unicórnios ao longo dos anos. 
Observou-se um aumento significativo após 2020, especialmente em 2021, quando houve um crescimento de 500%
no número de unicórnios, possivelmente relacionado aos impactos da pandemia.

### Análise 2: Setores com Maior Número de Startups

A análise revelou que os 5 maiores setores em termos de unicórnios são:

- **Fintech**
- **Internet Software & Services**
- **E-commerce**
- **Health**
- **AI**

Esses setores foram os que mais geraram unicórnios nos últimos anos, principalmente durante e após a pandemia.

### Análise 3: Subplots - Distribuição dos 3 Maiores Setores ao Longo do Tempo

Utilizando subplots, foi feita a análise do comportamento dos três principais setores 
(Fintech, Internet Software & Services e E-commerce) ao longo do tempo. 
Notou-se um comportamento similar entre eles, com um crescimento acentuado em 2020 e 2021, seguido de uma desaceleração em 2022.

### Análise 4: Setores com o Maior Número de Investidores

Foi identificado que os setores com o maior número de investidores também foram os mais responsáveis 
pelo crescimento das startups. Setores voltados à tecnologia, como Fintech e AI, 
foram os que mais atraíram capital, impulsionando o surgimento de novos unicórnios.

### Análise Final

Concluiu-se que:

- Empresas envolvidas com tecnologia estão se destacando economicamente.

## Visualizações e Gráficos

As análises foram acompanhadas por diversas visualizações:

- **Gráfico de Calor**: Utilizado para identificar valores nulos nos dados.
- **Gráficos de Barras**: Para visualizar a evolução do número de startups e setores com mais unicórnios.
- **Gráfico de Pizza**: Para representar a distribuição percentual dos unicórnios por setor.
- **Subplots**: Para mostrar a distribuição dos maiores setores ao longo do tempo, facilitando a análise agregada.
- **Gráficos de Dispersão**: Utilizados para analisar a relação entre o número de investidores e o valor econômico gerado por cada setor.

---

Este projeto pode ser expandido para incluir análises adicionais sobre fatores externos que influenciam o 
crescimento das startups, como mudanças econômicas globais e políticas de investimento.

