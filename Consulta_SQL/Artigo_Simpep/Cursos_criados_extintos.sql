--- Cursos que est�o presentes no banco de dados
SELECT distinct(CURSO_2011)
FROM (
	SELECT DISTINCT db_2011.NO_CINE_ROTULO AS CURSO_2011
	FROM dbo.MICRODADOS_CADASTRO_CURSOS_2011 AS db_2011
	LEFT JOIN dbo.MICRODADOS_CADASTRO_CURSOS_2010 AS db_2010 
	ON db_2010.NO_CINE_ROTULO = db_2011.NO_CINE_ROTULO
	WHERE db_2010.NO_CINE_ROTULO IS NULL 
) AS A

--- Cursos que desapareceram do banco de dados
SELECT distinct(CURSO_2010)  
FROM (
	SELECT DISTINCT db_2010.NO_CINE_ROTULO AS CURSO_2010
	FROM dbo.MICRODADOS_CADASTRO_CURSOS_2010 AS db_2010
	LEFT JOIN dbo.MICRODADOS_CADASTRO_CURSOS_2011 AS db_2011 
	ON db_2010.NO_CINE_ROTULO = db_2011.NO_CINE_ROTULO
	WHERE db_2011.NO_CINE_ROTULO IS NULL 
) AS A

/* Select *
from dbo.MICRODADOS_CADASTRO_CURSOS_2022
where NO_CINE_ROTULO LIKE 'NULL%' */


SELECT DISTINCT db_2011.NO_CINE_ROTULO AS CURSO_2011, db_2010.NO_CINE_ROTULO AS CURSO_2010
FROM dbo.MICRODADOS_CADASTRO_CURSOS_2011 AS db_2011
LEFT JOIN dbo.MICRODADOS_CADASTRO_CURSOS_2010 AS db_2010 ON db_2010.NO_CINE_ROTULO = db_2011.NO_CINE_ROTULO


