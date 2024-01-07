USE [13_Tworzydlo_NewSQLdb_ZTB]
GO
ALTER TABLE Auto_p ADD CONSTRAINT Relacja_Pracownik_Auto_p
FOREIGN KEY (IdPracownik) REFERENCES Pracownik (IdPracownik)