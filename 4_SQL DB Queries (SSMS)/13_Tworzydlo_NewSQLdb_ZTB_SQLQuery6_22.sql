USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
CREATE VIEW [dbo].[Pracownik_bez_auta]
AS
SELECT p.IDPracownik, p.PESEL, P.Imię, p.Nazwisko,
		p.Nazwisko + ' ' + p.Imię AS Osoba
FROM dbo.Pracownik AS p LEFT OUTER JOIN dbo.Auto_p AS a
		ON p.IDPracownik = a.IDPracownik
WHERE (NOT (p.IDPracownik IN (SELECT IDPracownik FROM dbo.Auto_p)))
