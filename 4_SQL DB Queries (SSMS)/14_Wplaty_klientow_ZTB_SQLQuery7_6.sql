USE [14_Wplaty_klientow_ZTB]
GO
ALTER TABLE Kwoty ADD CONSTRAINT Relacja_Kwoty_Klient
FOREIGN KEY (ID_Klienta) REFERENCES Klient(ID_Klient)
