USE [master]
GO
/****** Object:  Database [BD_Diplom_Pisarev]    Script Date: 13.06.2023 9:44:56 ******/
CREATE DATABASE [BD_Diplom_Pisarev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Diplom_Pisarev', FILENAME = N'E:\sql\MSSQL15.SQLEXPRESS\MSSQL\DATA\BD_Diplom_Pisarev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_Diplom_Pisarev_log', FILENAME = N'E:\sql\MSSQL15.SQLEXPRESS\MSSQL\DATA\BD_Diplom_Pisarev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Diplom_Pisarev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET QUERY_STORE = OFF
GO
USE [BD_Diplom_Pisarev]
GO
/****** Object:  Table [dbo].[Complect_oborud]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complect_oborud](
	[Id_complect] [int] IDENTITY(1,1) NOT NULL,
	[Id_oborud] [int] NOT NULL,
	[Id_tipa_complect] [int] NOT NULL,
	[Id_firmi] [int] NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Id_sklad] [int] NOT NULL,
 CONSTRAINT [PK_Complect_oborud] PRIMARY KEY CLUSTERED 
(
	[Id_complect] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doljnosti]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doljnosti](
	[Id_doljnosti] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Doljnosti] PRIMARY KEY CLUSTERED 
(
	[Id_doljnosti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Firmi]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firmi](
	[Id_firmi] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Firmi] PRIMARY KEY CLUSTERED 
(
	[Id_firmi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haracteristiki]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haracteristiki](
	[Id_Haracteristiki] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
	[Id_tipa_complect] [int] NOT NULL,
 CONSTRAINT [PK_Haracteristiki] PRIMARY KEY CLUSTERED 
(
	[Id_Haracteristiki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haracteristiki_Complect]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haracteristiki_Complect](
	[Id_haracter_compl] [int] NOT NULL,
	[Id_complect] [int] NOT NULL,
	[Id_haracteristiki] [int] NOT NULL,
	[Znahenie] [varchar](50) NOT NULL,
	[Id_topa_complect] [int] NOT NULL,
	[Id_Sklad] [int] NOT NULL,
 CONSTRAINT [PK_Haracteristiki_Complect] PRIMARY KEY CLUSTERED 
(
	[Id_haracter_compl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hatacteristiki_PO]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hatacteristiki_PO](
	[Id_harakt_PO] [int] IDENTITY(1,1) NOT NULL,
	[Id_tipa_PO] [int] NOT NULL,
	[Id_PO] [int] NOT NULL,
	[Data_ustanovki] [date] NOT NULL,
	[Data_posled_obnovl] [date] NOT NULL,
	[Id_oborud] [int] NOT NULL,
 CONSTRAINT [PK_Hatacteristiki_PO] PRIMARY KEY CLUSTERED 
(
	[Id_harakt_PO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oborudovanie]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oborudovanie](
	[Id_oborud] [int] IDENTITY(1,1) NOT NULL,
	[Id_tipa_oborud] [int] NOT NULL,
	[Id_Sotrud] [int] NOT NULL,
	[Id_otdela] [int] NOT NULL,
	[imya_oborud] [varchar](50) NOT NULL,
	[Ip_adres] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Oborudovanie] PRIMARY KEY CLUSTERED 
(
	[Id_oborud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odsujd_zayavki]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odsujd_zayavki](
	[Id_obsujd] [int] IDENTITY(1,1) NOT NULL,
	[Id_zayavki] [int] NOT NULL,
	[Data_vramya] [date] NOT NULL,
	[Kommentarij] [varchar](50) NULL,
	[Id_kem_soversh] [int] NOT NULL,
	[Id_komu] [int] NOT NULL,
 CONSTRAINT [PK_Odsujd_zayavki] PRIMARY KEY CLUSTERED 
(
	[Id_obsujd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdeli]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdeli](
	[Id_otdela] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Otdeli] PRIMARY KEY CLUSTERED 
(
	[Id_otdela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PO]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO](
	[Id_PO] [int] IDENTITY(1,1) NOT NULL,
	[Id_tipa_PO] [int] NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
	[Srok_dejstviya] [int] NOT NULL,
 CONSTRAINT [PK_PO] PRIMARY KEY CLUSTERED 
(
	[Id_PO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Sotrudniki]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Sotrudniki](
	[Id_Role] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[Id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sklade]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sklade](
	[Id_Sklad] [int] IDENTITY(1,1) NOT NULL,
	[Id_tipa_complect] [int] NOT NULL,
	[Id_firmi] [int] NOT NULL,
	[model] [varchar](50) NOT NULL,
	[Vsego] [int] NOT NULL,
 CONSTRAINT [PK_Sklade] PRIMARY KEY CLUSTERED 
(
	[Id_Sklad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[Id_sotrud] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](max) NOT NULL,
	[Id_otdela] [int] NOT NULL,
	[Id_doljnosti] [int] NOT NULL,
	[DR] [date] NOT NULL,
	[Adres] [varchar](max) NOT NULL,
	[Telefon] [varchar](50) NOT NULL,
	[e_mail] [varchar](50) NOT NULL,
	[Kommentatij] [varchar](max) NULL,
	[role] [int] NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[Id_sotrud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temi_zayavok]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temi_zayavok](
	[Id_temi_zayavi] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Temi_zayavok] PRIMARY KEY CLUSTERED 
(
	[Id_temi_zayavi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipi_complect]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipi_complect](
	[Id_tipa_complect] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipi_complect] PRIMARY KEY CLUSTERED 
(
	[Id_tipa_complect] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipi_oborud]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipi_oborud](
	[Id_tipa_oborud] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipi_oborud] PRIMARY KEY CLUSTERED 
(
	[Id_tipa_oborud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipi_PO]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipi_PO](
	[Id_tipa_PO] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipi_PO] PRIMARY KEY CLUSTERED 
(
	[Id_tipa_PO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zayavki]    Script Date: 13.06.2023 9:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zayavki](
	[Id_zayavki] [int] IDENTITY(1,1) NOT NULL,
	[Id_sotrud] [int] NOT NULL,
	[Id_otdela] [int] NOT NULL,
	[Data] [date] NOT NULL,
	[Data_zaversh] [date] NOT NULL,
	[Id_sotrud_teh] [int] NOT NULL,
	[Id_temi_zayavki] [int] NOT NULL,
	[Vajnost] [varchar](50) NOT NULL,
	[Statys] [varchar](50) NOT NULL,
	[Sostoyanie] [varchar](50) NOT NULL,
	[Id_tipa_PO] [int] NOT NULL,
	[Id_PO] [int] NOT NULL,
 CONSTRAINT [PK_Zayavki] PRIMARY KEY CLUSTERED 
(
	[Id_zayavki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Doljnosti] ON 

INSERT [dbo].[Doljnosti] ([Id_doljnosti], [Nazvanie]) VALUES (1, N'Администратор')
INSERT [dbo].[Doljnosti] ([Id_doljnosti], [Nazvanie]) VALUES (2, N'Пользователь')
INSERT [dbo].[Doljnosti] ([Id_doljnosti], [Nazvanie]) VALUES (3, N'СисАдминистратор')
SET IDENTITY_INSERT [dbo].[Doljnosti] OFF
GO
SET IDENTITY_INSERT [dbo].[Firmi] ON 

INSERT [dbo].[Firmi] ([Id_firmi], [Nazvanie]) VALUES (1, N'MSI')
INSERT [dbo].[Firmi] ([Id_firmi], [Nazvanie]) VALUES (2, N'Садик')
SET IDENTITY_INSERT [dbo].[Firmi] OFF
GO
SET IDENTITY_INSERT [dbo].[Haracteristiki] ON 

INSERT [dbo].[Haracteristiki] ([Id_Haracteristiki], [Nazvanie], [Id_tipa_complect]) VALUES (1, N'Подсветка', 1)
INSERT [dbo].[Haracteristiki] ([Id_Haracteristiki], [Nazvanie], [Id_tipa_complect]) VALUES (2, N'Цвет', 2)
INSERT [dbo].[Haracteristiki] ([Id_Haracteristiki], [Nazvanie], [Id_tipa_complect]) VALUES (3, N'Длина кабеля', 2)
SET IDENTITY_INSERT [dbo].[Haracteristiki] OFF
GO
INSERT [dbo].[Haracteristiki_Complect] ([Id_haracter_compl], [Id_complect], [Id_haracteristiki], [Znahenie], [Id_topa_complect], [Id_Sklad]) VALUES (1, 1, 1, N'2', 2, 1)
INSERT [dbo].[Haracteristiki_Complect] ([Id_haracter_compl], [Id_complect], [Id_haracteristiki], [Znahenie], [Id_topa_complect], [Id_Sklad]) VALUES (2, 2, 2, N'1', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Hatacteristiki_PO] ON 

INSERT [dbo].[Hatacteristiki_PO] ([Id_harakt_PO], [Id_tipa_PO], [Id_PO], [Data_ustanovki], [Data_posled_obnovl], [Id_oborud]) VALUES (1, 2, 1, CAST(N'2012-04-09' AS Date), CAST(N'2010-04-09' AS Date), 2)
INSERT [dbo].[Hatacteristiki_PO] ([Id_harakt_PO], [Id_tipa_PO], [Id_PO], [Data_ustanovki], [Data_posled_obnovl], [Id_oborud]) VALUES (3, 3, 1, CAST(N'2014-02-12' AS Date), CAST(N'2010-02-12' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Hatacteristiki_PO] OFF
GO
SET IDENTITY_INSERT [dbo].[Oborudovanie] ON 

INSERT [dbo].[Oborudovanie] ([Id_oborud], [Id_tipa_oborud], [Id_Sotrud], [Id_otdela], [imya_oborud], [Ip_adres]) VALUES (8, 1, 2, 1, N'Николай', N'2121')
INSERT [dbo].[Oborudovanie] ([Id_oborud], [Id_tipa_oborud], [Id_Sotrud], [Id_otdela], [imya_oborud], [Ip_adres]) VALUES (9, 2, 2, 1, N'Ваня', N'21112')
SET IDENTITY_INSERT [dbo].[Oborudovanie] OFF
GO
SET IDENTITY_INSERT [dbo].[Odsujd_zayavki] ON 

INSERT [dbo].[Odsujd_zayavki] ([Id_obsujd], [Id_zayavki], [Data_vramya], [Kommentarij], [Id_kem_soversh], [Id_komu]) VALUES (3, 2, CAST(N'2020-08-23' AS Date), N'-', 2, 2)
INSERT [dbo].[Odsujd_zayavki] ([Id_obsujd], [Id_zayavki], [Data_vramya], [Kommentarij], [Id_kem_soversh], [Id_komu]) VALUES (4, 2, CAST(N'2020-09-20' AS Date), N'-', 2, 2)
SET IDENTITY_INSERT [dbo].[Odsujd_zayavki] OFF
GO
SET IDENTITY_INSERT [dbo].[Otdeli] ON 

INSERT [dbo].[Otdeli] ([Id_otdela], [Nazvanie]) VALUES (1, N'Учительская')
INSERT [dbo].[Otdeli] ([Id_otdela], [Nazvanie]) VALUES (2, N'Медицинский кабинет')
INSERT [dbo].[Otdeli] ([Id_otdela], [Nazvanie]) VALUES (3, N'Кабинет трудовика')
INSERT [dbo].[Otdeli] ([Id_otdela], [Nazvanie]) VALUES (4, N'Кабинет физики')
INSERT [dbo].[Otdeli] ([Id_otdela], [Nazvanie]) VALUES (5, N'Кабинет информатики')
INSERT [dbo].[Otdeli] ([Id_otdela], [Nazvanie]) VALUES (6, N'Кабинет Алгебры')
INSERT [dbo].[Otdeli] ([Id_otdela], [Nazvanie]) VALUES (7, N'Кабинет директора')
SET IDENTITY_INSERT [dbo].[Otdeli] OFF
GO
SET IDENTITY_INSERT [dbo].[PO] ON 

INSERT [dbo].[PO] ([Id_PO], [Id_tipa_PO], [Nazvanie], [Srok_dejstviya]) VALUES (1, 1, N'MS Word', 256)
INSERT [dbo].[PO] ([Id_PO], [Id_tipa_PO], [Nazvanie], [Srok_dejstviya]) VALUES (2, 1, N'Exel', 256)
SET IDENTITY_INSERT [dbo].[PO] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_Sotrudniki] ON 

INSERT [dbo].[Role_Sotrudniki] ([Id_Role], [Nazvanie]) VALUES (1, N'Admin')
INSERT [dbo].[Role_Sotrudniki] ([Id_Role], [Nazvanie]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Role_Sotrudniki] OFF
GO
SET IDENTITY_INSERT [dbo].[Sklade] ON 

INSERT [dbo].[Sklade] ([Id_Sklad], [Id_tipa_complect], [Id_firmi], [model], [Vsego]) VALUES (1, 2, 1, N'Gx-3', 2)
INSERT [dbo].[Sklade] ([Id_Sklad], [Id_tipa_complect], [Id_firmi], [model], [Vsego]) VALUES (2, 2, 1, N'MSI', 3)
SET IDENTITY_INSERT [dbo].[Sklade] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudniki] ON 

INSERT [dbo].[Sotrudniki] ([Id_sotrud], [FIO], [Id_otdela], [Id_doljnosti], [DR], [Adres], [Telefon], [e_mail], [Kommentatij], [role], [Login], [Password]) VALUES (2, N'Иванов Иван Иванович', 1, 1, CAST(N'1998-09-12' AS Date), N'г.Амурск пр.Победы 6-3', N'89140987865', N'Degahile@gmail.com', N'-', 1, N'Admin', N'admin')
INSERT [dbo].[Sotrudniki] ([Id_sotrud], [FIO], [Id_otdela], [Id_doljnosti], [DR], [Adres], [Telefon], [e_mail], [Kommentatij], [role], [Login], [Password]) VALUES (3, N'Лапшин Эмиль Артёмович', 2, 2, CAST(N'1984-01-09' AS Date), N'г.Амурск пр.Октябрьский 21-2', N'89233919938', N'Derika@mail.ru', N'-', 2, N'User', N'user')
SET IDENTITY_INSERT [dbo].[Sotrudniki] OFF
GO
SET IDENTITY_INSERT [dbo].[Temi_zayavok] ON 

INSERT [dbo].[Temi_zayavok] ([Id_temi_zayavi], [Nazvanie]) VALUES (1, N'Обновление программы')
INSERT [dbo].[Temi_zayavok] ([Id_temi_zayavi], [Nazvanie]) VALUES (2, N'Очистка от вирусов')
INSERT [dbo].[Temi_zayavok] ([Id_temi_zayavi], [Nazvanie]) VALUES (3, N'Очистка от пыли')
INSERT [dbo].[Temi_zayavok] ([Id_temi_zayavi], [Nazvanie]) VALUES (4, N'Диагностика ПО')
SET IDENTITY_INSERT [dbo].[Temi_zayavok] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipi_complect] ON 

INSERT [dbo].[Tipi_complect] ([Id_tipa_complect], [Nazvanie]) VALUES (1, N'Мышка')
INSERT [dbo].[Tipi_complect] ([Id_tipa_complect], [Nazvanie]) VALUES (2, N'Клавиатура')
INSERT [dbo].[Tipi_complect] ([Id_tipa_complect], [Nazvanie]) VALUES (3, N'Монитор')
INSERT [dbo].[Tipi_complect] ([Id_tipa_complect], [Nazvanie]) VALUES (4, N'Колонки')
SET IDENTITY_INSERT [dbo].[Tipi_complect] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipi_oborud] ON 

INSERT [dbo].[Tipi_oborud] ([Id_tipa_oborud], [Nazvanie]) VALUES (1, N'Ноутбук')
INSERT [dbo].[Tipi_oborud] ([Id_tipa_oborud], [Nazvanie]) VALUES (2, N'Персональный компьютер')
SET IDENTITY_INSERT [dbo].[Tipi_oborud] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipi_PO] ON 

INSERT [dbo].[Tipi_PO] ([Id_tipa_PO], [Nazvanie]) VALUES (1, N'Офисные программы')
INSERT [dbo].[Tipi_PO] ([Id_tipa_PO], [Nazvanie]) VALUES (2, N'Прикладное')
INSERT [dbo].[Tipi_PO] ([Id_tipa_PO], [Nazvanie]) VALUES (3, N'Инструментальное')
SET IDENTITY_INSERT [dbo].[Tipi_PO] OFF
GO
SET IDENTITY_INSERT [dbo].[Zayavki] ON 

INSERT [dbo].[Zayavki] ([Id_zayavki], [Id_sotrud], [Id_otdela], [Data], [Data_zaversh], [Id_sotrud_teh], [Id_temi_zayavki], [Vajnost], [Statys], [Sostoyanie], [Id_tipa_PO], [Id_PO]) VALUES (2, 2, 2, CAST(N'2012-09-12' AS Date), CAST(N'2012-10-13' AS Date), 2, 1, N'2', N'идет ремонт', N'плохое', 2, 1)
INSERT [dbo].[Zayavki] ([Id_zayavki], [Id_sotrud], [Id_otdela], [Data], [Data_zaversh], [Id_sotrud_teh], [Id_temi_zayavki], [Vajnost], [Statys], [Sostoyanie], [Id_tipa_PO], [Id_PO]) VALUES (3, 2, 3, CAST(N'2019-09-20' AS Date), CAST(N'2020-09-12' AS Date), 2, 1, N'3', N'идет ремонт', N'плохое', 1, 2)
INSERT [dbo].[Zayavki] ([Id_zayavki], [Id_sotrud], [Id_otdela], [Data], [Data_zaversh], [Id_sotrud_teh], [Id_temi_zayavki], [Vajnost], [Statys], [Sostoyanie], [Id_tipa_PO], [Id_PO]) VALUES (4, 3, 2, CAST(N'2023-12-09' AS Date), CAST(N'0001-01-01' AS Date), 0, 4, N'неособо важный', N'не критичный', N'отличное', 1, 2)
SET IDENTITY_INSERT [dbo].[Zayavki] OFF
GO
ALTER TABLE [dbo].[Complect_oborud]  WITH CHECK ADD  CONSTRAINT [FK_Complect_oborud_Firmi] FOREIGN KEY([Id_firmi])
REFERENCES [dbo].[Firmi] ([Id_firmi])
GO
ALTER TABLE [dbo].[Complect_oborud] CHECK CONSTRAINT [FK_Complect_oborud_Firmi]
GO
ALTER TABLE [dbo].[Complect_oborud]  WITH CHECK ADD  CONSTRAINT [FK_Complect_oborud_Oborudovanie] FOREIGN KEY([Id_oborud])
REFERENCES [dbo].[Oborudovanie] ([Id_oborud])
GO
ALTER TABLE [dbo].[Complect_oborud] CHECK CONSTRAINT [FK_Complect_oborud_Oborudovanie]
GO
ALTER TABLE [dbo].[Complect_oborud]  WITH CHECK ADD  CONSTRAINT [FK_Complect_oborud_Sklade] FOREIGN KEY([Id_sklad])
REFERENCES [dbo].[Sklade] ([Id_Sklad])
GO
ALTER TABLE [dbo].[Complect_oborud] CHECK CONSTRAINT [FK_Complect_oborud_Sklade]
GO
ALTER TABLE [dbo].[Complect_oborud]  WITH CHECK ADD  CONSTRAINT [FK_Complect_oborud_Tipi_complect] FOREIGN KEY([Id_tipa_complect])
REFERENCES [dbo].[Tipi_complect] ([Id_tipa_complect])
GO
ALTER TABLE [dbo].[Complect_oborud] CHECK CONSTRAINT [FK_Complect_oborud_Tipi_complect]
GO
ALTER TABLE [dbo].[Haracteristiki]  WITH CHECK ADD  CONSTRAINT [FK_Haracteristiki_Tipi_complect] FOREIGN KEY([Id_tipa_complect])
REFERENCES [dbo].[Tipi_complect] ([Id_tipa_complect])
GO
ALTER TABLE [dbo].[Haracteristiki] CHECK CONSTRAINT [FK_Haracteristiki_Tipi_complect]
GO
ALTER TABLE [dbo].[Haracteristiki_Complect]  WITH CHECK ADD  CONSTRAINT [FK_Haracteristiki_Complect_Haracteristiki] FOREIGN KEY([Id_haracteristiki])
REFERENCES [dbo].[Haracteristiki] ([Id_Haracteristiki])
GO
ALTER TABLE [dbo].[Haracteristiki_Complect] CHECK CONSTRAINT [FK_Haracteristiki_Complect_Haracteristiki]
GO
ALTER TABLE [dbo].[Hatacteristiki_PO]  WITH CHECK ADD  CONSTRAINT [FK_Hatacteristiki_PO_PO] FOREIGN KEY([Id_PO])
REFERENCES [dbo].[PO] ([Id_PO])
GO
ALTER TABLE [dbo].[Hatacteristiki_PO] CHECK CONSTRAINT [FK_Hatacteristiki_PO_PO]
GO
ALTER TABLE [dbo].[Hatacteristiki_PO]  WITH CHECK ADD  CONSTRAINT [FK_Hatacteristiki_PO_Tipi_oborud] FOREIGN KEY([Id_oborud])
REFERENCES [dbo].[Tipi_oborud] ([Id_tipa_oborud])
GO
ALTER TABLE [dbo].[Hatacteristiki_PO] CHECK CONSTRAINT [FK_Hatacteristiki_PO_Tipi_oborud]
GO
ALTER TABLE [dbo].[Hatacteristiki_PO]  WITH CHECK ADD  CONSTRAINT [FK_Hatacteristiki_PO_Tipi_PO1] FOREIGN KEY([Id_tipa_PO])
REFERENCES [dbo].[Tipi_PO] ([Id_tipa_PO])
GO
ALTER TABLE [dbo].[Hatacteristiki_PO] CHECK CONSTRAINT [FK_Hatacteristiki_PO_Tipi_PO1]
GO
ALTER TABLE [dbo].[Oborudovanie]  WITH CHECK ADD  CONSTRAINT [FK_Oborudovanie_Otdeli] FOREIGN KEY([Id_otdela])
REFERENCES [dbo].[Otdeli] ([Id_otdela])
GO
ALTER TABLE [dbo].[Oborudovanie] CHECK CONSTRAINT [FK_Oborudovanie_Otdeli]
GO
ALTER TABLE [dbo].[Oborudovanie]  WITH CHECK ADD  CONSTRAINT [FK_Oborudovanie_Sotrudniki] FOREIGN KEY([Id_Sotrud])
REFERENCES [dbo].[Sotrudniki] ([Id_sotrud])
GO
ALTER TABLE [dbo].[Oborudovanie] CHECK CONSTRAINT [FK_Oborudovanie_Sotrudniki]
GO
ALTER TABLE [dbo].[Oborudovanie]  WITH CHECK ADD  CONSTRAINT [FK_Oborudovanie_Tipi_oborud] FOREIGN KEY([Id_tipa_oborud])
REFERENCES [dbo].[Tipi_oborud] ([Id_tipa_oborud])
GO
ALTER TABLE [dbo].[Oborudovanie] CHECK CONSTRAINT [FK_Oborudovanie_Tipi_oborud]
GO
ALTER TABLE [dbo].[Odsujd_zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Odsujd_zayavki_Sotrudniki] FOREIGN KEY([Id_kem_soversh])
REFERENCES [dbo].[Sotrudniki] ([Id_sotrud])
GO
ALTER TABLE [dbo].[Odsujd_zayavki] CHECK CONSTRAINT [FK_Odsujd_zayavki_Sotrudniki]
GO
ALTER TABLE [dbo].[Odsujd_zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Odsujd_zayavki_Sotrudniki1] FOREIGN KEY([Id_komu])
REFERENCES [dbo].[Sotrudniki] ([Id_sotrud])
GO
ALTER TABLE [dbo].[Odsujd_zayavki] CHECK CONSTRAINT [FK_Odsujd_zayavki_Sotrudniki1]
GO
ALTER TABLE [dbo].[Odsujd_zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Odsujd_zayavki_Zayavki] FOREIGN KEY([Id_zayavki])
REFERENCES [dbo].[Zayavki] ([Id_zayavki])
GO
ALTER TABLE [dbo].[Odsujd_zayavki] CHECK CONSTRAINT [FK_Odsujd_zayavki_Zayavki]
GO
ALTER TABLE [dbo].[PO]  WITH CHECK ADD  CONSTRAINT [FK_PO_Tipi_PO1] FOREIGN KEY([Id_tipa_PO])
REFERENCES [dbo].[Tipi_PO] ([Id_tipa_PO])
GO
ALTER TABLE [dbo].[PO] CHECK CONSTRAINT [FK_PO_Tipi_PO1]
GO
ALTER TABLE [dbo].[Sklade]  WITH CHECK ADD  CONSTRAINT [FK_Sklade_Firmi] FOREIGN KEY([Id_firmi])
REFERENCES [dbo].[Firmi] ([Id_firmi])
GO
ALTER TABLE [dbo].[Sklade] CHECK CONSTRAINT [FK_Sklade_Firmi]
GO
ALTER TABLE [dbo].[Sklade]  WITH CHECK ADD  CONSTRAINT [FK_Sklade_Tipi_complect] FOREIGN KEY([Id_tipa_complect])
REFERENCES [dbo].[Tipi_complect] ([Id_tipa_complect])
GO
ALTER TABLE [dbo].[Sklade] CHECK CONSTRAINT [FK_Sklade_Tipi_complect]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Doljnosti] FOREIGN KEY([Id_doljnosti])
REFERENCES [dbo].[Doljnosti] ([Id_doljnosti])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Doljnosti]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Doljnosti1] FOREIGN KEY([role])
REFERENCES [dbo].[Doljnosti] ([Id_doljnosti])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Doljnosti1]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Otdeli] FOREIGN KEY([Id_otdela])
REFERENCES [dbo].[Otdeli] ([Id_otdela])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Otdeli]
GO
ALTER TABLE [dbo].[Zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Zayavki_Otdeli] FOREIGN KEY([Id_otdela])
REFERENCES [dbo].[Otdeli] ([Id_otdela])
GO
ALTER TABLE [dbo].[Zayavki] CHECK CONSTRAINT [FK_Zayavki_Otdeli]
GO
ALTER TABLE [dbo].[Zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Zayavki_PO] FOREIGN KEY([Id_PO])
REFERENCES [dbo].[PO] ([Id_PO])
GO
ALTER TABLE [dbo].[Zayavki] CHECK CONSTRAINT [FK_Zayavki_PO]
GO
ALTER TABLE [dbo].[Zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Zayavki_Sotrudniki] FOREIGN KEY([Id_sotrud])
REFERENCES [dbo].[Sotrudniki] ([Id_sotrud])
GO
ALTER TABLE [dbo].[Zayavki] CHECK CONSTRAINT [FK_Zayavki_Sotrudniki]
GO
ALTER TABLE [dbo].[Zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Zayavki_Temi_zayavok] FOREIGN KEY([Id_temi_zayavki])
REFERENCES [dbo].[Temi_zayavok] ([Id_temi_zayavi])
GO
ALTER TABLE [dbo].[Zayavki] CHECK CONSTRAINT [FK_Zayavki_Temi_zayavok]
GO
ALTER TABLE [dbo].[Zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Zayavki_Tipi_PO] FOREIGN KEY([Id_tipa_PO])
REFERENCES [dbo].[Tipi_PO] ([Id_tipa_PO])
GO
ALTER TABLE [dbo].[Zayavki] CHECK CONSTRAINT [FK_Zayavki_Tipi_PO]
GO
USE [master]
GO
ALTER DATABASE [BD_Diplom_Pisarev] SET  READ_WRITE 
GO
