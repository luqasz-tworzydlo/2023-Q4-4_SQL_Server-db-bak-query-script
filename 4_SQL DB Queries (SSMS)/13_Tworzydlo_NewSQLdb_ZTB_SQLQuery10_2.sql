USE [13_Tworzydlo_NewSQLdb_ZTB];
GO

DECLARE @kod_powrotny int,
        @wynik int;

EXEC @kod_powrotny = [dbo].[Rok_produkcji_auta]
    @IDPracownik = 2,
    @Rok_produkcji = @wynik OUTPUT;

IF @kod_powrotny = 0
BEGIN
    SELECT @wynik as [Rok_produkcji];
END
ELSE IF @kod_powrotny = 1
BEGIN
    PRINT 'Brak numeru ID pracownika';
END
ELSE IF @kod_powrotny = 2
BEGIN
    PRINT 'Pracownik o takim numerze nie jest przypisany do żadnego auta';
END
ELSE
BEGIN
    PRINT 'Brak informacji o roku produkcji auta';
END
GO
