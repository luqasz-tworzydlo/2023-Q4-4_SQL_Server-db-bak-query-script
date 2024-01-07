USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
DECLARE @Wart_IDPracownik nvarchar(50)
INSERT INTO Pracownik ([PESEL],[Imię],[Nazwisko],[Stanowisko],[Pensja])
VALUES ('80122311115', 'Marek', 'Mostowiak', 'dyrektor', 7000.00)
SET @Wart_IDPracownik = @@IDENTITY
SELECT @Wart_IDPracownik