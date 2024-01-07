USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
CREATE VIEW [dbo].[W_Pracownik_Auto_TEST]
AS
SELECT dbo.Pracownik.*, dbo.Auto_p.IDAuto,
		dbo.Auto_p.Numer_rejestracyjny, dbo.Auto_p.Marka,
		dbo.Auto_p.Model, dbo.Auto_p.Rocznik,
		dbo.Auto_p.Od_daty, dbo.Auto_p.Foto
FROM dbo.Auto_p INNER JOIN dbo.Pracownik
ON dbo.Auto_p.IDPracownik = dbo.Pracownik.IdPracownik