SELECT 
*
FROM (
		SELECT 
			dbc.NU_ANO_CENSO,
			dbc.NO_CINE_ROTULO AS CURSO,
			dbi.NO_IES as Nome_univ,
			dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado
			dbi.SG_IES as codigo_fac,
			TP_MODALIDADE_ENSINO as Tipo_ensino --1 Presencial e 2 EAD
		FROM 
			dbo.MICRODADOS_CADASTRO_CURSOS_2013 as dbc
		INNER JOIN 
			dbo.MICRODADOS_CADASTRO_IES_2013 as dbi 
				on dbc.CO_IES = dbi.CO_IES
		WHERE 
			DBC.NO_CINE_ROTULO
				LIKE 'Engenharia portuária'
		UNION
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2014 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2014 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Engenharia portuária'
		union
		SELECT dbc.NU_ANO_CENSO,dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2015 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2015 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Engenharia portuária'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2016 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2016 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Engenharia portuária'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2017 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2017 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Engenharia portuária'
) a

SELECT *
FROM (
		SELECT dbc.NU_ANO_CENSO,dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2010 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2010 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO,
		dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ,
		dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac,
		TP_MODALIDADE_ENSINO as Tipo_ensino, -- 1 Presencial e 2 EAD
		dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2011 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2011 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO,dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2012 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2012 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2013 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2013 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2014 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2014 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2016 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2016 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO,dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2017 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2017 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2018 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2018 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2019 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2019 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2020 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2020 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2021 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2021 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
		union
		SELECT dbc.NU_ANO_CENSO, dbc.NO_CINE_ROTULO AS CURSO, dbi.NO_IES as Nome_univ, dbc.TP_REDE AS Rede_ensi, --1 público e 2 privado--
		dbi.SG_IES as codigo_fac, TP_MODALIDADE_ENSINO as Tipo_ensino, dbc.co_IES AS Cod_univ
		FROM dbo.MICRODADOS_CADASTRO_CURSOS_2022 as dbc
		INNER JOIN dbo.MICRODADOS_CADASTRO_IES_2022 as dbi on dbc.CO_IES = dbi.CO_IES
		WHERE DBC.NO_CINE_ROTULO LIKE 'Rochas Ornamentais'
) a