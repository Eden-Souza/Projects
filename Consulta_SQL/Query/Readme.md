# Consultas SQL no Banco de Dados do MEC

Este projeto apresenta uma análise de cursos superiores e institutos utilizando consultas SQL em um banco de dados relacional disponibilizado pelo MEC. As consultas realizadas visam identificar padrões e fornecer insights sobre a oferta de cursos e o perfil dos alunos ao longo dos anos.

## Estrutura do Projeto

### 1. `Cursos_mais_procurados.sql`
**Problema:**  
Analisar se existe um padrão nos cursos mais procurados que possa prever comportamentos futuros de oferta e demanda.

**Análise:**  
Os resultados mostraram que, embora o curso de Administração tenha um alto número de vagas, ingressantes e concluintes, há uma redução gradual na oferta dessas vagas. Contrariamente, o número de concluintes está aumentando, o que pode indicar uma potencial falta de vagas para esses profissionais no futuro.

### 2. `Quantidade_de_Mulheres_no_curso_de_Engenharia.sql`
**Problema:**  
Investigar se os cursos de Engenharia são predominantemente dominados por homens.

**Análise:**  
Foi observado que, em média, cerca de 75% dos alunos nos cursos de Engenharia são homens, com as mulheres representando aproximadamente 25%, dentro de uma margem de erro de 2 pontos percentuais para cima ou para baixo. Não foi verificada uma redução significativa na proporção de mulheres ao longo dos anos.

### 3. `Quantidade_Ingressantes_Curso_Engenharia_Mecânica_diminuindo_tempo.sql`
**Problema:**  
No ambiente de trabalho atual, há um senso comum de que profissionais formados em Engenharia Mecânica estão diminuindo.

**Análise:**  
A análise demonstrou que o número de ingressantes no curso de Engenharia Mecânica aumentou até o ano de 2019, mas começou a cair após esse período. Isso abre espaço para uma investigação mais aprofundada sobre a oferta de cursos de Engenharia Mecânica no Brasil e possíveis razões para essa tendência.

## Tecnologias Utilizadas

- **SQL Server:** Utilizado como o Sistema de Gerenciamento de Banco de Dados Relacional (SGBDR) para acessar e manipular os dados fornecidos pelo MEC. O SQL Server é uma plataforma robusta que oferece funcionalidades avançadas para gerenciamento e análise de dados, facilitando a execução de consultas complexas e o processamento eficiente de grandes volumes de informações.

## Habilidades Demonstradas

Este projeto demonstra minhas habilidades na utilização do SQL para análise de dados, aplicando conceitos básicos e avançados, incluindo:
- **Comandos Básicos:** `SELECT`, `FROM`, `WHERE`.
- **Operações Avançadas:** `JOIN`, `DISTINCT`, `HAVING`, `UNION`, `GROUP BY`.
- **Funções de Agregação:** `SUM`, `COUNT`, `AVG`, e uso do `COALESCE` para lidar com valores nulos.
- **Operadores Lógicos:** `AND`, `ON`, e `AS` para renomear colunas e criar alias.

O projeto destaca minha capacidade de aplicar esses conceitos para resolver problemas reais, identificar padrões e gerar insights valiosos a partir de dados complexos.

## Disclaimer

**Disclaimer:** The database is not included in this repository due to its large size.

## Contato

Para dúvidas, sugestões ou discussões sobre os resultados, fique à vontade para entrar em contato:
