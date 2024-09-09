/* Qual a porcentagem de pessoas que estão se formando no curso de engenharia mecanica
objetivo: Na usina ouvi falar que cada vez mais estão tendo dificuldade de encontrar esse tipo de profissional em especifico
logo pretendo ver com a analise se o numero de pessoas que se formam estão realmente diminuindo, porém seriam interessante ver como
a oferta de curso desse tipo vem sendo dedicada para o público */
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2010
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2011
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2012
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2013
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2014
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2015
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2016
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2017
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2018
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2019
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2020
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2021
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO
UNION
SELECT NU_ANO_CENSO, NO_CINE_ROTULO AS Curso, SUM(COALESCE([QT_ING],0)) AS 'Total Ingresante', SUM(COALESCE([QT_CONC],0)) AS 'Total Concluintes'
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2022
WHERE NO_CINE_ROTULO LIKE 'Engenharia Mecâ%'
GROUP BY NU_ANO_CENSO, NO_CINE_ROTULO

/* foi visto que até o ano de 2019 ele foi aumentando porém apartir disso
começou a cair, deixando em aberto uma pesquisa interessate sobre a oferta de cursos de engenharia mecanica no brasil,
para ver se há alguma relação */
