# APLICAÇÃO DA CIÊNCIA DE DADOS NA ENGENHARIA DE PRODUÇÃO: TRANSFORMANDO DADOS EM DECISÕES ESTRATÉGICAS

Este repositório contém o artigo publicado no SIMPEP. O projeto visa analisar um banco de 
dados relacional disponibilizado pelo MEC no censo sobre cursos e institutos, com o objetivo de identificar padrões relacionados à criação e extinção de cursos ao longo dos anos.

## Estrutura do Projeto

A pasta principal contém as consultas SQL utilizadas para realizar a análise, divididas da seguinte forma:

### 1. `Cursos_criados_extintos.sql`
Esta consulta identifica cursos que estejam ausentes ou presentes ao comparar os cursos ofertados entre dois anos consecutivos.  
- **Cursos Ausentes:** Cursos presentes em um ano e ausentes no ano seguinte.  
- **Cursos Presentes:** Cursos que começam a ser ofertados no ano seguinte, mas não estavam disponíveis no ano anterior.

### 2. `Distribuição_Curso_ao_anos.sql`
A partir dos cursos identificados como presentes e ausentes, esta consulta analisa a evolução de um curso específico ao longo do tempo, observando o comportamento em termos de:
- Número de inscritos.
- Concluintes.
- Vagas ofertadas.

### 3. `Locais_onde_foram_ofertadas_os_cursos.sql`
Esta consulta explora quais institutos ofertam os cursos identificados anteriormente, ajudando a mapear a distribuição da oferta.

### 4. `QUANTI_DOCENT_TEC-ADMINI.sql`
Visa examinar se houve uma redução no quadro de pessoal, tanto docente quanto técnico-administrativo, que pudesse justificar a descontinuidade na oferta dos cursos.

## Contexto do Problema

Este projeto busca entender se existe um padrão que explique por que certos cursos são criados e posteriormente os tornam ausentes nos institutos. 
A análise visa correlacionar a criação e ausencia dos cursos com variáveis como o número de alunos, vagas ofertadas e o quantitativo de pessoal docente e técnico-administrativo.

### Análise e Resultados
A análise demonstrou que houve uma redução tanto no corpo de pessoal quanto no número de alunos nos institutos, sugerindo que esses fatores podem influenciar na reestruturação das grades de cursos e na continuidade da oferta.

## Tecnologias Utilizadas

- **SQL Server:** Utilizado como o SGBDR (Sistema de Gerenciamento de Banco de Dados Relacional) para acessar e consultar o banco de dados fornecido pelo MEC. O SQL Server é amplamente utilizado devido à sua robustez e funcionalidades avançadas para gerenciamento de dados relacionais, permitindo consultas complexas e análise eficiente dos dados.

## Habilidades Demonstradas

Este projeto demonstra minhas habilidades no uso do SQL, utilizando conceitos básicos e avançados de consulta, incluindo:
- **Comandos Básicos:** `SELECT`, `FROM`, `WHERE`.
- **Operações Avançadas:** `JOIN`, `DISTINCT`, `HAVING`, `UNION`, `GROUP BY`.
- **Funções de Agregação:** `SUM`, `COUNT`, `AVG`, e o uso de `COALESCE` para manipulação de valores nulos.
- **Operadores Lógicos:** `AND`, `ON`, `AS` para renomear colunas e criar alias.

Este projeto destaca minha capacidade de aplicar conceitos de SQL para a resolução de problemas complexos de análise de dados, demonstrando minha proficiência na utilização de SQL Server para explorar e identificar padrões em grandes conjuntos de dados.

**Disclaimer:** O banco de dados não foi incluído no repositorio devido ao seu tamnho, mas pode ser encontrado na base de dados do mec.
