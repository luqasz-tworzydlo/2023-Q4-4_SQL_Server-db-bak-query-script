USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
DECLARE @nazwisko nvarchar(50), @IDPracownik int
SET @nazwisko = 'Trochimczuk'
SET @IDPracownik = 2

UPDATE Pracownik SET Nazwisko=@nazwisko
WHERE @IDPracownik=@IDPracownik