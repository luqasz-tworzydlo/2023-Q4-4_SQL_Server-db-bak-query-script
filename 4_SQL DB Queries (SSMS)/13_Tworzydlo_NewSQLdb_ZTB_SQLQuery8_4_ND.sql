DECLARE @aktualna_data date, @aktualny_czas time
SET @aktualna_data = GETDATE()
SET @aktualny_czas = GETDATE()
SELECT @aktualna_data AS 'Aktualna data'
SELECT 'Aktualny czas' = @aktualny_czas
