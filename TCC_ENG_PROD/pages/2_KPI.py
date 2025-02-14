import streamlit as st
import pandas as pd
import plotly.express as px


info = st.sidebar.markdown(
    'Desenvolvido por [Eden Souza](https://www.linkedin.com/in/eden-souza-dados/)'
                           )

encerramento= st.sidebar.markdown("""
### Conclusão:
Esta análise comparou quatro métodos de investimento (Barsi, Basin, Graham, Greenblatt)  
                                  
Com base nos indicadores de **Risco**, **Retorno**, **Dividendos** e **Ganho de Capital**.  
                                   
Os gráficos ajudam na escolha do melhor modelo conforme o perfil de risco e retorno desejado.
""")


def importar_analise(modelo):
    file_importado = pd.read_excel(f'Datasets/base_analise_{modelo}.xlsx', engine='openpyxl')
    return file_importado


st.write('''
    # Indicadores de investimento Modelo de Markovitz para risco do portifolio
'''
)

col1, col2 = st.columns(2)
col3, col4 = st.columns(2)


barsi=importar_analise('barsi')
basin = importar_analise('basin')
graham = importar_analise('graham')
greenblatt = importar_analise('greenblatt')

concat_data = pd.concat([barsi,basin,graham,greenblatt],
                        keys=['barsi','basin', 'graham', 'greenblatt'],
                         names=['Modelos'] )

concat_data.reset_index(inplace=True)

color=['#ff0000','#ff5159', '#ff889d', '#ffbcd9']

fig_risco = px.bar(
    concat_data,
    x='Modelos',
    y='risco_portifolio',
    color='Modelos',
    color_discrete_sequence=color, 
    title= 'Risco do portifolio dos metodos analisados'

)
fig_risco.update_layout(
    xaxis_title='',
    xaxis={'showticklabels': False}
)
col1.plotly_chart(fig_risco)


fig_retorno = px.bar(
    concat_data,
    x='Modelos',
    y='Retorno_portifolio',
    color='Modelos',
    color_discrete_sequence=color ,
    title= 'Retorno do portifolio dos metodos analisados'

)
fig_retorno.update_layout(
    xaxis_title='',
    xaxis={'showticklabels': False}
)
col2.plotly_chart(fig_retorno)


fig_dividendos = px.bar(
    concat_data,
    x='Modelos',
    y='Dividendos',
    color='Modelos',
    color_discrete_sequence=color ,
    title= 'Dividendos do último ano do portifolio dos metodos analisados'
)
fig_dividendos.update_layout(
    xaxis_title='',
    xaxis={'showticklabels': False}
)
col3.plotly_chart(fig_dividendos)


fig_ganho_capital = px.bar(
    concat_data,
    x='Modelos',
    y='ganho_capital',
    color='Modelos',
    color_discrete_sequence=color ,
    title= 'Ganho de capital do portifolio dos metodos analisados'

)
fig_ganho_capital.update_layout(
    xaxis_title='',
    xaxis={'showticklabels': False}
)
col4.plotly_chart(fig_ganho_capital)
