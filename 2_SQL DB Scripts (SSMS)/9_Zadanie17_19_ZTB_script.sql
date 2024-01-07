USE [master]
GO
/****** Object:  Database [9_Zadanie17_19_ZTB]    Script Date: 29/12/2023 16:05:25 ******/
CREATE DATABASE [9_Zadanie17_19_ZTB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'9_Zadanie17_19_ZTB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\9_Zadanie17_19_ZTB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'9_Zadanie17_19_ZTB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\9_Zadanie17_19_ZTB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [9_Zadanie17_19_ZTB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET ARITHABORT OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET RECOVERY FULL 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET  MULTI_USER 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'9_Zadanie17_19_ZTB', N'ON'
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET QUERY_STORE = ON
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [9_Zadanie17_19_ZTB]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 29/12/2023 16:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[album] [int] IDENTITY(1,1) NOT NULL,
	[pesel] [char](11) NOT NULL,
	[nazwisko] [nvarchar](50) NOT NULL,
	[imiona] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[album] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Wydz]    Script Date: 29/12/2023 16:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Wydz](
	[id_stud_wydz] [int] IDENTITY(1,1) NOT NULL,
	[album_studenta] [int] NOT NULL,
	[id_wydz] [int] NOT NULL,
	[data1] [date] NOT NULL,
	[data2] [date] NULL,
 CONSTRAINT [PK_Student_Wydz] PRIMARY KEY CLUSTERED 
(
	[id_stud_wydz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wydz]    Script Date: 29/12/2023 16:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wydz](
	[id_wydz] [int] IDENTITY(1,1) NOT NULL,
	[nazwa_wydz] [nvarchar](50) NOT NULL,
	[adres_wydz] [nvarchar](50) NULL,
 CONSTRAINT [PK_Wydz] PRIMARY KEY CLUSTERED 
(
	[id_wydz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([album], [pesel], [nazwisko], [imiona]) VALUES (1, N'90010112345', N'Nowak', N'Jan')
INSERT [dbo].[Student] ([album], [pesel], [nazwisko], [imiona]) VALUES (3, N'91020223456', N'Kowalska', N'Anna')
INSERT [dbo].[Student] ([album], [pesel], [nazwisko], [imiona]) VALUES (5, N'92030334567', N'Wiśniewska', N'Maria')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Wydz] ON 

INSERT [dbo].[Student_Wydz] ([id_stud_wydz], [album_studenta], [id_wydz], [data1], [data2]) VALUES (1, 1, 1, CAST(N'2015-09-01' AS Date), CAST(N'2019-06-30' AS Date))
INSERT [dbo].[Student_Wydz] ([id_stud_wydz], [album_studenta], [id_wydz], [data1], [data2]) VALUES (2, 3, 2, CAST(N'2016-09-01' AS Date), CAST(N'2020-06-30' AS Date))
INSERT [dbo].[Student_Wydz] ([id_stud_wydz], [album_studenta], [id_wydz], [data1], [data2]) VALUES (3, 3, 3, CAST(N'2020-09-01' AS Date), CAST(N'2022-06-30' AS Date))
INSERT [dbo].[Student_Wydz] ([id_stud_wydz], [album_studenta], [id_wydz], [data1], [data2]) VALUES (4, 3, 4, CAST(N'2022-09-01' AS Date), NULL)
INSERT [dbo].[Student_Wydz] ([id_stud_wydz], [album_studenta], [id_wydz], [data1], [data2]) VALUES (5, 5, 1, CAST(N'2018-09-01' AS Date), NULL)
INSERT [dbo].[Student_Wydz] ([id_stud_wydz], [album_studenta], [id_wydz], [data1], [data2]) VALUES (7, 5, 3, CAST(N'2018-09-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Student_Wydz] OFF
GO
SET IDENTITY_INSERT [dbo].[Wydz] ON 

INSERT [dbo].[Wydz] ([id_wydz], [nazwa_wydz], [adres_wydz]) VALUES (1, N'Wydział Informatyki', N'ul. Informatyczna 1')
INSERT [dbo].[Wydz] ([id_wydz], [nazwa_wydz], [adres_wydz]) VALUES (2, N'Wydział Matematyki', N'ul. Matematyczna 2')
INSERT [dbo].[Wydz] ([id_wydz], [nazwa_wydz], [adres_wydz]) VALUES (3, N'Wydział Fizyki', N'ul. Fizyczna 3')
INSERT [dbo].[Wydz] ([id_wydz], [nazwa_wydz], [adres_wydz]) VALUES (4, N'Wydział Chemii', N'ul. Chemiczna 4')
SET IDENTITY_INSERT [dbo].[Wydz] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_nazw]    Script Date: 29/12/2023 16:05:25 ******/
CREATE NONCLUSTERED INDEX [ind_nazw] ON [dbo].[Student]
(
	[nazwisko] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_pesel]    Script Date: 29/12/2023 16:05:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [ind_pesel] ON [dbo].[Student]
(
	[pesel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student_Wydz]  WITH CHECK ADD  CONSTRAINT [FK_Student_Wydz_Student] FOREIGN KEY([album_studenta])
REFERENCES [dbo].[Student] ([album])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student_Wydz] CHECK CONSTRAINT [FK_Student_Wydz_Student]
GO
ALTER TABLE [dbo].[Student_Wydz]  WITH CHECK ADD  CONSTRAINT [FK_Student_Wydz_Wydz] FOREIGN KEY([id_wydz])
REFERENCES [dbo].[Wydz] ([id_wydz])
GO
ALTER TABLE [dbo].[Student_Wydz] CHECK CONSTRAINT [FK_Student_Wydz_Wydz]
GO
ALTER TABLE [dbo].[Student_Wydz]  WITH CHECK ADD  CONSTRAINT [CK_Student_Wydz] CHECK  ((datepart(year,[data1])>=(2010)))
GO
ALTER TABLE [dbo].[Student_Wydz] CHECK CONSTRAINT [CK_Student_Wydz]
GO
USE [master]
GO
ALTER DATABASE [9_Zadanie17_19_ZTB] SET  READ_WRITE 
GO
