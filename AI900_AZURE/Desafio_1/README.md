# 🚴‍♂️ Desafio 1 - Bootcamp Microsoft - Fundamentos de IA  <img src="https://github.com/user-attachments/assets/a2620d26-e8a8-421d-a2f5-ea9d7729d2da" alt="image" width="50" style="vertical-align:middle; margin-right:10px;"> 
> **Trabalhando com Machine Learning na Prática no Azure ML**

---

## 📘 **Descrição Geral**
Este repositório documenta o passo a passo da criação de um modelo de previsão de aluguel de bicicletas utilizando **Azure Machine Learning** e **Python** com foco na implementação técnica e análise de resultados.
---

## 🛠️ **Configuração do Ambiente no Azure ML**

1. **Criação do Ambiente:**
   - A conta foi configurada no **Azure** para utilizar recursos do **Azure Machine Learning** no grupo de recurso `LABAI-900` com o workspace `laboratorioai900`.
   - Acesse o workspace clicando em **Launch Studio**.

2. **Início do Trabalho com ML Automatizado:**
   - No menu principal, acesse **ML Automatizado** e inicie um novo trabalho.
   - Configure os seguintes campos:
     - **Nome do Trabalho**: `mslearn-bike-rental`
     - **Descrição**: *Aprendizado de máquina automatizado para predição de aluguel de bicicletas.*
     - **Tipo da Tarefa**: Regressão
     - **Conjunto de Dados**:
       - Nome: `aluguel-de-bicicleta`
       - Descrição: *Dados históricos de aluguel de bicicletas.*
       - Tipo: Tabela
       - Fonte de Dados: URL - [`https://aka.ms/bike-rentals`](https://aka.ms/bike-rentals)

3. **Upload Manual do Dataset**:
   - Devido a problemas no upload automático, o arquivo CSV foi carregado manualmente.
   - Os arquivos necessários (CSV e `mltable`) estão disponíveis neste repositório (link acima) para replicação do experimento.

---

## ⚙️ **Configuração do Trabalho de Treinamento**

1. **Coluna de Destino**:
   - Escolha a coluna `rentals` como alvo para a predição.

2. **Exibição de Dados**:
   - Use a opção **Exibir Dados** para verificar se o dataset foi carregado corretamente.

3. **Configurações Adicionais**:
   - Desmarque todos os campos extras e configure:
     - **Métrica**: `NormalizedRootMeanError`
     - **Modelos Permitidos**: 
       - `RandomForest`
       - `LightGBM`

4. **Definição de Limites**:
   - **Máximo de Avaliações**: 3
   - **Máximo de Avaliações Simultâneas**: 3
   - **Máximo de Nós**: 3
   - **Limite de Métrica**: 0.085
   - **Tempo Limite do Experimento e de Interação**: 15 minutos
   - Ative a **Opção de Encerramento Antecipado**.

5. **Tipo de Validação**:
   - Escolha `Divisão de Validação de Treinamento`.

6. **Envio do Trabalho**:
   - Envie o trabalho para iniciar o treinamento do modelo.

---

## 🧪 **Implementação e Testes**

1. **Criação de Modelos**:
   - Após o treinamento, foi necessário criar manualmente um modelo chamado `mslearnbikeauto2` para visualizar a regressão realizada pelo software.

2. **Pontos de Extremidade**:
   - Vá em **Pontos de Extremidade em Tempo Real** e clique em **Criar**.
   - Configure com base no modelo gerado.
   - Clique no modelo na aba de **Saída da Implementação** para acessar métricas e desbloquear a aba.

  ![image](https://github.com/user-attachments/assets/257160ae-ccc8-4ae6-8126-2ed04763bb2c)

3. **Problemas Encontrados**:
   - Devido à limitação de recursos disponíveis na assinatura do Azure (máquina **DS2**, inferior à recomendada **DS3**), não foi possível realizar testes diretos no Azure.

---

## 🐍 **Treinamento com Python (Alternativa)**

1. **Ferramentas Utilizadas**:
   - Biblioteca: `scikit-learn`
   - Modelos testados:
     - `Random Forest`
     - `Regressão Linear`

2. **Resultados**:
   - **Random Forest** obteve o menor erro e previsões mais precisas em comparação à **Regressão Linear**.

3. **Arquivos Incluídos**:
   - O repositório contém o notebook Jupyter (`.ipynb`) com o código utilizado para o treinamento, além de um arquivo JSON responsável por receber o input do usuário e realizar as previsões.

---

## 📊 **Comparação de Modelos: Random Forest vs Regressão Linear**

| Modelo             | Quando Usar                                                                                     | Vantagens                                                                                        | Limitações                                                       |
|--------------------|-------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
| **Random Forest**  | - Dados não lineares<br>- Alta dimensionalidade                                                 | - Lida bem com dados complexos<br>- Menor risco de overfitting<br>- Alta precisão               | - Modelo mais pesado<br>- Tempo de treinamento maior            |
| **Regressão Linear** | - Relações lineares<br>- Interpretação simples<br>- Pequenos datasets                         | - Simplicidade<br>- Rápido para treinar<br>- Fácil de interpretar                               | - Baixa precisão em dados não lineares<br>- Não captura relações complexas |

**Nota**: Para este caso, **Random Forest** foi o modelo mais adequado devido à natureza complexa dos dados e à necessidade de maior precisão nas previsões.

---

## 📂 **Estrutura do Repositório**



```plaintext
/
├── data/link
│   ├── aluguel-de-bicicleta.csv        # Dataset utilizado
│   ├── mltable.yaml                    # Configuração do dataset
├── notebooks/
│   ├── bike_rental_prediction.ipynb    # Código de treinamento e teste em Python
├── endpoints/
│   ├── endpoint_config.json            # Arquivo JSON para integração
├── README.md                           # Documentação do projeto
