CREATE DATABASE [13_Tworzydlo_NewSQLdb_ZTB]
ON
(NAME = [13_Tworzydlo_NewSQLdb_ZTB],
    FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\13_Tworzydlo_NewSQLdb_ZTB.mdf',
	SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB)
LOG ON
(NAME = [13_Tworzydlo_NewSQLdb_ZTB_log],
    FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\13_Tworzydlo_NewSQLdb_ZTB.ldf',
	SIZE = 5MB,
	MAXSIZE = 25MB,
	FILEGROWTH = 5MB)
