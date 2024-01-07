USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
SELECT Numer_rejestracyjny, Rocznik,
	CASE [Rocznik]
		WHEN (SELECT MAX([Rocznik]) FROM dbo.Auto_p) THEN 'Najnowszy'
		WHEN (SELECT MIN([Rocznik]) FROM dbo.Auto_p) THEN 'Najstarszy'
		ELSE 'Przeciętny'
	END
FROM Auto_p
ORDER BY Numer_rejestracyjny