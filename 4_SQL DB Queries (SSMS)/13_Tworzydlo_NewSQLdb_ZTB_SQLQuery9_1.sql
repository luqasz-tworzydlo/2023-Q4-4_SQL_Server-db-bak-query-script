CREATE PROCEDURE P_Pracownicy_Auto
-- jest to przykład procedury bez parametrów
AS
BEGIN
	SET NOCOUNT ON
	SELECT * FROM W_Pracownik_Auto
END
