USE [14_Wplaty_klientow_ZTB]
GO
CREATE TABLE [Kwoty]
(ID int Identity PRIMARY KEY NOT NULL,
Kwota decimal(19,4) NOT NULL,
Data_wplaty DATE NOT NULL,
ID_Klienta int NOT NULL,
Komentarz nvarchar(50) NOT NULL
)
