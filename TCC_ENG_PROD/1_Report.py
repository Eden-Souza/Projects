import pandas as pd
import streamlit as st
import plotly.express as px
from datetime import timedelta



#definindo funções
def importar_analise(modelo):
    file_importado = pd.read_excel(f'Datasets/base_analise_{modelo}.xlsx', engine='openpyxl')
    return file_importado

def importar_carteira(modelo,aba):
    file_importado = pd.read_excel(f'Datasets/Arquivo_{modelo}.xlsx', sheet_name= aba, engine='openpyxl')
    return file_importado


st.set_page_config(layout='wide')
info = st.sidebar.markdown(
    'Desenvolvido por [Eden Souza](https://www.linkedin.com/in/eden-souza-dados/)'
                           )
modelos=['Barsi','Basin','Graham','Greenblatt']
selecao=st.sidebar.radio('Modelos',modelos)
st.sidebar.header('Filtros')

#Lendo arquivos dos indicadores de viabilidade de investimento
file_analise= importar_analise(selecao)

#Carteira
file_carteira= importar_carteira(selecao,'Compras')


#lendo os arquivoos dos precos historicos dos ativos
file_history= importar_carteira(selecao,f'Bolsa {selecao}')

# Fazer um grafico de linhas
# Fazer um mapa de calor com as correlações
# fazer um sidebar(com as datas) e um check box com os metodos
# Fazer a capa com essas informações e outra pagina com os indicadoree
# Capa 1[linha 1] - > linhas e corre, pizza carteira
# Capa 1[linha 2] - > Indice sharpie inflação e selic valor que faltou investir
#Capa 2[linha 1] - >Retrono portfolio e risco portifolio g´rafico em barras
#Capa 2[linha2] - > ganho de capital, dividendos{ultimo ano}



# Para fazer o slicer os dados de data devem ser do tipo data
file_history['Date']= pd.to_datetime(file_history['Date'])

max_date = file_history['Date'].max().to_pydatetime()
min_date = file_history['Date'].min().to_pydatetime()

filter_date = st.sidebar.slider("Selecione o periodo desejado",
                                min_value=min_date,
                                 max_value=max_date,
                                 value=(min_date,max_date),
                                 step=timedelta(days=365)
                                 )


df_filtered = file_history.loc[
    (file_history['Date']>= filter_date[0]) & 
    (file_history['Date']<= filter_date[1])

]

enter_data=file_history[file_history.columns[1:]]
col1, col2 = st.columns(2)
col3, col4, col5 = st.columns(3)

correlacao = enter_data.corr()

fig_corr = px.imshow(
    correlacao, # passa os valores que serão usados
    color_continuous_scale= 'Reds',
    title= f"Gráfico das correlações entre as ações para o método {selecao}",
    text_auto= '.2f'
    )

fig_corr.update_traces(
    textfont=dict(size=10)
    )
col1.plotly_chart(fig_corr)

fig_precos = px.line(
    df_filtered, # passa os valores que serão usados
    x="Date",
    y= enter_data.columns, # tenho que passar o nome das colunas e não os valores
    title= f"Gráfico dos precos das ações para o método {selecao}",
    labels={'value':'Precos Ações', 'Date': 'Variação no tempo','variable': 'Ativos'}
)
col2.plotly_chart(fig_precos)

cores = ['#67001f', '#b10026', '#e31a1c', '#fc7561', '#fcbb99', '#fee5d9', '#fcbba1', '#fcd0b1', '#ffdddd', '#ffffff']

fig_carteira = px.treemap(
    file_carteira,
    path=['Acao'],
    values='Qtd_comprada',
    title=f'Distribuição dos ativos na Carteira do metodo {selecao}',
    color= 'Qtd_comprada',
    color_continuous_scale= cores,

)
col3.plotly_chart(fig_carteira)



import pandas as pd
import plotly.express as px
import streamlit as st

# Criando o dicionário com os dados
dicionario_sharp = {
    'Indicador': ['Indice_Sharpe_Inflação', 'Indice_Sharpe_Selic'],
    'Valores': [file_analise['Indice_sharpe_inflacao'].values[0], file_analise['indice_sharpe_selic'].values[0]]
}

# Criando o DataFrame a partir do dicionário
df_sharpe = pd.DataFrame(dicionario_sharp)

# Criando o gráfico de barras
fig_sharpe = px.bar(df_sharpe,
                    x='Indicador',
                    y='Valores',
                    title=f'Índice Sharpe considerando Inflação e Selic do método {selecao}',
                    labels={'Valores': 'Índice Sharpe'},
                    color='Indicador', # O que será usado para diferenciar as cores
                    color_discrete_sequence= ['#e31a1c','#fee5d9'], #Cores utilizadas
                    text_auto= '.2f'
)
fig_sharpe.update_layout(
    xaxis_title='',
    xaxis={'showticklabels': False}
)

col4.plotly_chart(fig_sharpe)


texto_sharpe = """
### Índice Sharpe:

- **Maior que 1**: Considerado ótimo, indicando que o retorno supera o risco de forma significativa.
- **Maior que 0 e menor que 1**: O retorno do investimento não compensa totalmente o risco. 
- **Menor que 0**: O investimento não é atrativo, pois o retorno é pior que a taxa livre de risco.
"""
# Colocando o texto centralizado na coluna 5
with col5:
    st.markdown(texto_sharpe)
