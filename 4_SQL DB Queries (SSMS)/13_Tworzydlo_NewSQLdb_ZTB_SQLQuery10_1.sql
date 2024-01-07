CREATE PROCEDURE [dbo].[Rok_produkcji_auta]
	@IDPracownik int, -- nasz parametr wejściowy
	@Rok_produkcji int OUTPUT -- nasz parametr wyjściowy
AS
BEGIN
	SET NOCOUNT ON
	IF @IDPracownik IS NULL -- Oznacza to brak numeru ID pracownika
		RETURN (1)
	ELSE
	BEGIN
		IF -- Tu oznacza to, że pracownik o tym numerze nie jest przypisany do żadnego samochodu
			(SELECT COUNT(IDPracownik) FROM Auto_p WHERE IDPracownik = @IDPracownik) = 0
			RETURN (2)
		ELSE
		BEGIN
			SET @Rok_produkcji = (SELECT Rocznik FROM Auto_p WHERE IDPracownik = @IDPracownik)
			IF	@Rok_produkcji IS NULL -- Oznacza tutaj brak informacji o produkcji auta
				RETURN (3)
			ELSE
				RETURN (0) -- Oznacza tutaj Sukces :>
		END
	END
END