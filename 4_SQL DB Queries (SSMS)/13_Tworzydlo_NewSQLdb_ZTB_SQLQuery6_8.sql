USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
CREATE TABLE Auto_p
(
IDAuto int Identity (1,1) NOT NULL CONSTRAINT Klucz_podst_Auto_p PRIMARY KEY,
Numer_rejestracyjny varchar(50) NOT NULL,
Marka nvarchar(50) NOT NULL,
Model nvarchar(50) NOT NULL,
IDPracownik int NOT NULL CONSTRAINT indeks_pracownik UNIQUE
)
