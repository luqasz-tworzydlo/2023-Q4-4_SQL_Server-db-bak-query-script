CREATE DATABASE [14_Wplaty_klientow_ZTB]
ON
(NAME = [14_Wplaty_klientow_ZTB],
    FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\14_Wplaty_klientow_ZTB.mdf',
	SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB)
LOG ON
(NAME = [14_Wplaty_klientow_ZTB_log],
    FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\14_Wplaty_klientow_ZTB_log.ldf',
	SIZE = 5MB,
	MAXSIZE = 25MB,
	FILEGROWTH = 5MB)
