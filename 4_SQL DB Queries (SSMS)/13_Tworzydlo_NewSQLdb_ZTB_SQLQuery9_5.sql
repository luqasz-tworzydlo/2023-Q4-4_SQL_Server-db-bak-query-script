CREATE PROCEDURE Zmiana_nazwiska
-- Nasze parametry wejściowe
@nazwisko nvarchar(50), @idpracownik int
AS
BEGIN
SET NOCOUNT ON
UPDATE Pracownik SET Nazwisko = @nazwisko
WHERE IdPracownik = @idpracownik
END