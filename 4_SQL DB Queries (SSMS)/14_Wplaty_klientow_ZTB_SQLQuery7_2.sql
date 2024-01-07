USE [14_Wplaty_klientow_ZTB]
GO
CREATE TABLE [Klient]
(ID_Klient int Identity(1,1) PRIMARY KEY NOT NULL,
Nazwisko nvarchar(50) NOT NULL,
Imiona nvarchar(50) NOT NULL,
Plec char(1) NOT NULL DEFAULT 'N',
PESEL char (11) NOT NULL
)
