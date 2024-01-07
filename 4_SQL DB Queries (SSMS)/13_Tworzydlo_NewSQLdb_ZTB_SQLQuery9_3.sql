CREATE PROCEDURE Pracownik_PESEL
-- Tutaj jest przykład parametru wejściowego
@param_PESEL varchar(11)
AS
BEGIN
SET NOCOUNT ON
SELECT * FROM [dbo].Pracownik WHERE PESEL LIKE @param_PESEL
END
