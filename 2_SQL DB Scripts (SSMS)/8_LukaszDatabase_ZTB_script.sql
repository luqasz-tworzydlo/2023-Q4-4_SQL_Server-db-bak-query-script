USE [master]
GO
/****** Object:  Database [8_LukaszDatabase_ZTB]    Script Date: 28/12/2023 00:10:20 ******/
CREATE DATABASE [8_LukaszDatabase_ZTB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'8_LukaszDatabase_ZTB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\8_LukaszDatabase_ZTB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'8_LukaszDatabase_ZTB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\8_LukaszDatabase_ZTB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [8_LukaszDatabase_ZTB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET ARITHABORT OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET RECOVERY FULL 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET  MULTI_USER 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'8_LukaszDatabase_ZTB', N'ON'
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET QUERY_STORE = ON
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [8_LukaszDatabase_ZTB]
GO
/****** Object:  Table [dbo].[Datki]    Script Date: 28/12/2023 00:10:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datki](
	[id_datki] [int] IDENTITY(1,1) NOT NULL,
	[data] [date] NOT NULL,
	[kwota] [money] NOT NULL,
	[id_osoba] [int] NOT NULL,
 CONSTRAINT [PK_Datki] PRIMARY KEY CLUSTERED 
(
	[id_datki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kraj]    Script Date: 28/12/2023 00:10:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kraj](
	[id_kraju] [int] IDENTITY(1,1) NOT NULL,
	[kraj] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kraj] PRIMARY KEY CLUSTERED 
(
	[id_kraju] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Miasto]    Script Date: 28/12/2023 00:10:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Miasto](
	[id_miasta] [int] IDENTITY(1,1) NOT NULL,
	[miasto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Miasto] PRIMARY KEY CLUSTERED 
(
	[id_miasta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Osoba]    Script Date: 28/12/2023 00:10:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Osoba](
	[id_osoba] [int] IDENTITY(1,1) NOT NULL,
	[nazwisko] [nvarchar](50) NOT NULL,
	[imiona] [nvarchar](50) NOT NULL,
	[płeć] [nvarchar](9) NULL,
	[pesel] [char](11) NULL,
	[id_m] [int] NULL,
	[id_w] [int] NULL,
	[id_k] [int] NULL,
	[adres] [nvarchar](50) NULL,
	[kod_pocztowy] [varchar](10) NULL,
 CONSTRAINT [PK_Osoba] PRIMARY KEY CLUSTERED 
(
	[id_osoba] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wojew]    Script Date: 28/12/2023 00:10:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wojew](
	[id_wojew] [int] IDENTITY(1,1) NOT NULL,
	[wojew] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Wojew] PRIMARY KEY CLUSTERED 
(
	[id_wojew] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Datki] ON 

INSERT [dbo].[Datki] ([id_datki], [data], [kwota], [id_osoba]) VALUES (1, CAST(N'2023-01-10' AS Date), 100.0000, 1)
INSERT [dbo].[Datki] ([id_datki], [data], [kwota], [id_osoba]) VALUES (2, CAST(N'2023-03-05' AS Date), 50.0000, 3)
INSERT [dbo].[Datki] ([id_datki], [data], [kwota], [id_osoba]) VALUES (4, CAST(N'2023-04-10' AS Date), 100.0000, 5)
INSERT [dbo].[Datki] ([id_datki], [data], [kwota], [id_osoba]) VALUES (7, CAST(N'2023-06-20' AS Date), 200.0000, 6)
INSERT [dbo].[Datki] ([id_datki], [data], [kwota], [id_osoba]) VALUES (9, CAST(N'2023-08-10' AS Date), 100.0000, 11)
INSERT [dbo].[Datki] ([id_datki], [data], [kwota], [id_osoba]) VALUES (10, CAST(N'2023-10-20' AS Date), 200.0000, 17)
INSERT [dbo].[Datki] ([id_datki], [data], [kwota], [id_osoba]) VALUES (11, CAST(N'2023-12-20' AS Date), 200.0000, 20)
SET IDENTITY_INSERT [dbo].[Datki] OFF
GO
SET IDENTITY_INSERT [dbo].[Kraj] ON 

INSERT [dbo].[Kraj] ([id_kraju], [kraj]) VALUES (1, N'Poland')
INSERT [dbo].[Kraj] ([id_kraju], [kraj]) VALUES (2, N'United Kingdom')
INSERT [dbo].[Kraj] ([id_kraju], [kraj]) VALUES (3, N'Singapore')
SET IDENTITY_INSERT [dbo].[Kraj] OFF
GO
SET IDENTITY_INSERT [dbo].[Miasto] ON 

INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (1, N'Gdańsk')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (2, N'Szczecin')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (3, N'Olsztyn')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (4, N'Bydgoszcz')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (5, N'Zielona Góra')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (6, N'Poznań')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (7, N'Łódź')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (8, N'Warszawa')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (9, N'Białystok')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (10, N'Wrocław')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (11, N'Opole')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (12, N'Katowice')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (13, N'Kraków')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (14, N'Kielce')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (15, N'Rzeszów')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (16, N'Lublin')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (17, N'Londyn')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (18, N'Singapur')
INSERT [dbo].[Miasto] ([id_miasta], [miasto]) VALUES (19, N'NN')
SET IDENTITY_INSERT [dbo].[Miasto] OFF
GO
SET IDENTITY_INSERT [dbo].[Osoba] ON 

INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (1, N'Szymański', N'Karol', N'M', N'74080248212', 12, 12, 1, N'Szkolna 78', N'00-003')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (2, N'Kowalski', N'Marcin', N'M', N'97060983451', 8, 8, 1, N'Szkolna 86', N'00-008')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (3, N'Dąbrowska', N'Katarzyna', N'F', N'96052430169', 10, 10, 1, N'Mickiewicza 13', N'00-001')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (4, N'Wiśniewski', N'Michał', N'M', N'93012755072', 13, 13, 1, N'Szkolna 78', N'00-007')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (5, N'Kowalczyk', N'Marek', N'M', N'85052472452', 2, 2, 1, N'Kwiatowa 93', N'00-001')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (6, N'Szymańska', N'Józefina', N'F', N'74061144234', 12, 12, 1, N'Mickiewicza 87', N'00-007')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (7, N'Dąbrowska', N'Krystyna', N'F', N'75110940945', 8, 8, 1, N'Ogrodowa 1', N'00-003')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (8, N'Lewandowska', N'Agnieszka', N'F', N'93071487407', 1, 1, 1, N'Lipowa 23', N'00-009')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (9, N'Kowalczyk', N'Tomasz', N'M', N'70121318534', 6, 6, 1, N'Kwiatowa 78', N'00-010')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (11, N'Dąbrowska', N'Karolina', N'F', N'84062722154', 4, 4, 1, N'Polna 8', N'00-004')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (17, N'Kamiński', N'Adam', N'M', N'70041619513', 17, 17, 2, N'Baker Street 50', N'W1D 2EU')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (20, N'Wiśniewska', N'Zofia', N'F', N'96050202005', 18, 17, 3, N'Raffles Place 7', N'217562')
INSERT [dbo].[Osoba] ([id_osoba], [nazwisko], [imiona], [płeć], [pesel], [id_m], [id_w], [id_k], [adres], [kod_pocztowy]) VALUES (33, N'Kowalska', N'Natalia', N'F', N'99432222222', 19, 17, 2, N'New Street 41', N'W5Q 6TG')
SET IDENTITY_INSERT [dbo].[Osoba] OFF
GO
SET IDENTITY_INSERT [dbo].[Wojew] ON 

INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (1, N'Pomorskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (2, N'Zachodnio-Pomorskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (3, N'Warmińsko-Mazurskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (4, N'Kujawsko-Pomorskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (5, N'Lubuskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (6, N'Wielkopolskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (7, N'Łódzkie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (8, N'Mazowieckie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (9, N'Podlaskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (10, N'Dolnośląskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (11, N'Opolskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (12, N'Śląskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (13, N'Małopolskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (14, N'Świętokrzyskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (15, N'Podkarpackie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (16, N'Lubelskie')
INSERT [dbo].[Wojew] ([id_wojew], [wojew]) VALUES (17, N'NN')
SET IDENTITY_INSERT [dbo].[Wojew] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_nazw]    Script Date: 28/12/2023 00:10:20 ******/
CREATE NONCLUSTERED INDEX [ind_nazw] ON [dbo].[Osoba]
(
	[nazwisko] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_pesel]    Script Date: 28/12/2023 00:10:20 ******/
CREATE UNIQUE NONCLUSTERED INDEX [ind_pesel] ON [dbo].[Osoba]
(
	[pesel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Datki] ADD  CONSTRAINT [DF_Datki_data]  DEFAULT (getdate()) FOR [data]
GO
ALTER TABLE [dbo].[Datki]  WITH CHECK ADD  CONSTRAINT [FK_Datki_Osoba] FOREIGN KEY([id_osoba])
REFERENCES [dbo].[Osoba] ([id_osoba])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Datki] CHECK CONSTRAINT [FK_Datki_Osoba]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [FK_Osoba_Kraj] FOREIGN KEY([id_k])
REFERENCES [dbo].[Kraj] ([id_kraju])
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [FK_Osoba_Kraj]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [FK_Osoba_Miasto] FOREIGN KEY([id_m])
REFERENCES [dbo].[Miasto] ([id_miasta])
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [FK_Osoba_Miasto]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [FK_Osoba_Wojew] FOREIGN KEY([id_w])
REFERENCES [dbo].[Wojew] ([id_wojew])
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [FK_Osoba_Wojew]
GO
ALTER TABLE [dbo].[Datki]  WITH CHECK ADD  CONSTRAINT [CK_Datki] CHECK  ((len([kwota])>(0)))
GO
ALTER TABLE [dbo].[Datki] CHECK CONSTRAINT [CK_Datki]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [CK_Osoba] CHECK  ((len([pesel])=(11)))
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [CK_Osoba]
GO
ALTER TABLE [dbo].[Osoba]  WITH CHECK ADD  CONSTRAINT [CK_Osoba_1] CHECK  ((substring([pesel],(1),(2))>(40) AND substring([pesel],(1),(2))<=(99)))
GO
ALTER TABLE [dbo].[Osoba] CHECK CONSTRAINT [CK_Osoba_1]
GO
USE [master]
GO
ALTER DATABASE [8_LukaszDatabase_ZTB] SET  READ_WRITE 
GO
