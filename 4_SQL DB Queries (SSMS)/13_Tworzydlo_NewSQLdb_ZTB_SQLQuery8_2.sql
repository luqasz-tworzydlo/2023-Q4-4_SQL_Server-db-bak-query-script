USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
DECLARE @max_Rocznik int, @min_Rocznik int
SELECT	@max_Rocznik = max (Rocznik),
		@min_Rocznik = min(Rocznik)
FROM Auto_p WHERE Rocznik IS NOT NULL
SELECT	'Maksymalna wartość pola Rocznik' = @max_Rocznik,
		'Minimalna wartość pola Rocznik' = @min_Rocznik