USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
DECLARE @Liczba_samochodów int
SELECT @Liczba_samochodów = COUNT(IDAuto)
FROM Auto_p
WHERE
	Rocznik = 2010
IF @Liczba_samochodów > 0
	SELECT 'Liczba samochodów wyprodukowanych w 2010 roku wynosi: ' + CAST(@Liczba_samochodów AS VARCHAR)
ELSE
	SELECT 'Nikt nie jeździ samochodem z 2010 roku.'