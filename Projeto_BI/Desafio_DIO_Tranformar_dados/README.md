# Transformação de Dados no Power BI

Este README documenta os passos realizados no processo de transformação de dados e modelagem no Power BI, destacando habilidades aplicadas em organização, limpeza e análise de dados.

---

## 🛠️ **Processo de Transformação de Dados**

1. **Limpeza Inicial:**
   - Removidas colunas de relacionamento entre tabelas importadas do SQL Server.
   - Verificados e ajustados os cabeçalhos das tabelas para garantir clareza e consistência.

2. **Tratamento de Tipos de Dados:**
   - O tipo de dados da coluna de salários foi alterado para **Double Precision** para maior precisão nos cálculos.

3. **Tratamento de Valores Nulos:**
   - Um valor nulo foi identificado na linha do funcionário **James**. Por ser o gerente, este dado faz sentido no contexto e não foi removido.
   - Verificado que:
     - **Nenhum departamento está sem gerente.**
     - **Todos os gerentes possuem um departamento.**

4. **Análise de Projetos:**
   - Identificado que os projetos de **Computação** e **Novos Benefícios** possuem mais horas atribuídas.
   - O projeto de **Reorganização** possui o menor número de horas.

5. **Separação e Organização de Dados:**
   - A coluna de endereço foi dividida em **Número** e **Endereço** para facilitar análises específicas.

6. **Mesclagem de Tabelas:**
   - Foi realizada a mesclagem das tabelas com base na relação entre:
     - **Super_ssn** (Supervisor dos trabalhos) na tabela de funcionários.
     - **Mgr_ssn** (Gerente) na tabela de departamentos.
   - Após a mesclagem, as colunas **Department Number** e **Mgr_ssn** foram removidas, pois os dados dessas colunas eram duplicados após a junção.

7. **Adição de Informações Relevantes:**
   - O nome do gerente foi colocado ao lado do nome de cada funcionário utilizando a fórmula DAX:
     ```DAX
     Gerente = LOOKUPVALUE(
         Mesclar1[Employer], 
         Employee[Ssn], 
         Mesclar1[Super_ssn]
     )
     ```

---

## 🚀 **Motivação para a Mesclagem**
- O **"Mesclar"** foi utilizado para criar uma **chave única** que identifica cada combinação de departamento e localização. Isso:
  - **Facilita a organização** do modelo de dados.
  - **Cria relacionamentos claros** no modelo estrela.
  - Melhora a eficiência e a capacidade de análise dos dados.

- O **"Atribuir"** foi descartado, pois apenas replica dados, sem gerar chaves únicas ou melhorar o relacionamento entre as tabelas.

---

## 📊 **Resultados do Modelo de Dados**

1. **Número de Colaboradores por Gerente:**
   - **Franklin**: 9 colaboradores.
   - **James**: 2 colaboradores.
   - **Jennifer**: 2 colaboradores.

---

## ⚡ **Desafio e Implementação**

Este projeto faz parte de um desafio da **DIO (Digital Innovation One)**. A atividade tinha como objetivo conectar o Power BI a um banco de dados na nuvem (**Azure SQL Database**).  
No entanto, não consegui realizar a inportação do banco de dados via nuvem, foi criado um banco de dados local no **SQL Server** para completar a tarefa, que foi conectado ao Power BI para realizar as transformações e análises descritas acima.

---

Se houver dúvidas ou interesse em mais detalhes sobre a implementação, fique à vontade para entrar em contato! 😊
