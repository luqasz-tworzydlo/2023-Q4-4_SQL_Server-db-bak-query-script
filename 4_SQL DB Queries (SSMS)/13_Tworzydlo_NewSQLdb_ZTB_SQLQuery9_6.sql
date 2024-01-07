CREATE PROCEDURE [dbo].[Liczba_aut_z_zadanego_roku]
-- Nasz parametr wejściowy
@rok int,
-- Nasz parametr wyjściowy
@Liczba_aut int output
AS
BEGIN
SET NOCOUNT ON
SELECT @Liczba_aut = COUNT (IDAuto)
FROM dbo.Auto_p
WHERE (Rocznik IS NOT NULL) AND (Rocznik = @rok)
END