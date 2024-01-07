USE [13_Tworzydlo_NewSQLdb_ZTB]
GO

DECLARE @Wynikowa_liczba int

EXEC	[dbo].[Liczba_aut_z_zadanego_roku]
		@rok = 2018,
		@Liczba_aut = @Wynikowa_liczba OUTPUT

SELECT @Wynikowa_liczba as [Liczba aut z 2018 roku]