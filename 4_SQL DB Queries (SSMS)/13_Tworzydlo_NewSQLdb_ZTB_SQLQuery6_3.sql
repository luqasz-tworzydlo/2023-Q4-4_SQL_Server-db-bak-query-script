USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
CREATE TABLE [Pracownik]
(IdPracownik int Identity NOT NULL,
PESEL char (11) NOT NULL,
Imię nvarchar(50) NOT NULL,
Nazwisko nvarchar(50) NOT NULL,
Stanowisko nvarchar(50) NOT NULL,
Pensja Money NOT NULL
)