USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
UPDATE dbo.Pracownik
SET Pensja =
(CASE
	WHEN Imię IN ('Andrzej', 'Marek', 'Maria', 'Martyna') THEN Pensja*1.05
	WHEN Imię IN ('Anna', 'Kinga', 'Zbigniew') THEN Pensja*1.07
	ELSE Pensja*1.1
END
)
