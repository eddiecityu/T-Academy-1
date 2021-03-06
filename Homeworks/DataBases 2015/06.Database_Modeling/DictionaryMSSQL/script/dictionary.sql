USE [master]
GO
/****** Object:  Database [WorldDictionary]    Script Date: 06/10/2015 15:34:28 ******/
CREATE DATABASE [WorldDictionary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorldDictionary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WorldDictionary.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WorldDictionary_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WorldDictionary_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WorldDictionary] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorldDictionary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorldDictionary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorldDictionary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorldDictionary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorldDictionary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorldDictionary] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorldDictionary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorldDictionary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorldDictionary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorldDictionary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorldDictionary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorldDictionary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorldDictionary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorldDictionary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorldDictionary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorldDictionary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorldDictionary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorldDictionary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorldDictionary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorldDictionary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorldDictionary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorldDictionary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorldDictionary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorldDictionary] SET RECOVERY FULL 
GO
ALTER DATABASE [WorldDictionary] SET  MULTI_USER 
GO
ALTER DATABASE [WorldDictionary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorldDictionary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorldDictionary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorldDictionary] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WorldDictionary] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WorldDictionary', N'ON'
GO
USE [WorldDictionary]
GO
/****** Object:  Table [dbo].[BulgarianWords]    Script Date: 06/10/2015 15:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BulgarianWords](
	[BulgarianWordID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](30) NOT NULL,
	[SynonimID] [int] NULL,
 CONSTRAINT [PK_BulgarianWords] PRIMARY KEY CLUSTERED 
(
	[BulgarianWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EnglishWords]    Script Date: 06/10/2015 15:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnglishWords](
	[EnglishWordID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](30) NOT NULL,
	[SynonimID] [int] NULL,
 CONSTRAINT [PK_EnglishWords] PRIMARY KEY CLUSTERED 
(
	[EnglishWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FrenchWords]    Script Date: 06/10/2015 15:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FrenchWords](
	[FrenchWordID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](30) NOT NULL,
	[SynonimID] [int] NULL,
 CONSTRAINT [PK_FrenchWords] PRIMARY KEY CLUSTERED 
(
	[FrenchWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GermanWordsID]    Script Date: 06/10/2015 15:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GermanWordsID](
	[GermanWordID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](30) NOT NULL,
	[SynonimID] [int] NULL,
 CONSTRAINT [PK_GermanWordsID] PRIMARY KEY CLUSTERED 
(
	[GermanWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItalianWords]    Script Date: 06/10/2015 15:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItalianWords](
	[ItalianWordID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](30) NOT NULL,
	[SynonimID] [int] NULL,
 CONSTRAINT [PK_ItalianWords] PRIMARY KEY CLUSTERED 
(
	[ItalianWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpanishWords]    Script Date: 06/10/2015 15:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpanishWords](
	[SpanishWordID] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](30) NOT NULL,
	[SynonimID] [int] NULL,
 CONSTRAINT [PK_SpanishWords] PRIMARY KEY CLUSTERED 
(
	[SpanishWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Words]    Script Date: 06/10/2015 15:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[WordID] [int] IDENTITY(1,1) NOT NULL,
	[BulgarianWordID] [nvarchar](50) NOT NULL,
	[EnglishWordID] [nvarchar](50) NULL,
	[GermanWordID] [nvarchar](50) NULL,
	[FrenchWordID] [nvarchar](50) NULL,
	[SpanishWordID] [nvarchar](50) NULL,
	[ItalianWordID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Words] PRIMARY KEY CLUSTERED 
(
	[WordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BulgarianWords] ON 

INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (1, N'кола', NULL)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (2, N'къща', NULL)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (3, N'книга', NULL)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (4, N'четиво', 3)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (5, N'апртамент', 2)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (6, N'красив', 7)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (7, N'хубав', 6)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (8, N'спокойствие', NULL)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (9, N'мир', NULL)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (10, N'цар', NULL)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (11, N'плавателен съд', NULL)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (12, N'лодка', 11)
INSERT [dbo].[BulgarianWords] ([BulgarianWordID], [Word], [SynonimID]) VALUES (13, N'сал', 11)
SET IDENTITY_INSERT [dbo].[BulgarianWords] OFF
SET IDENTITY_INSERT [dbo].[EnglishWords] ON 

INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (1, N'Car', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (2, N'House', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (3, N'Apartement', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (4, N'Boat', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (5, N'raft', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (6, N'book', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (7, N'reading', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (8, N'beautiful', NULL)
INSERT [dbo].[EnglishWords] ([EnglishWordID], [Word], [SynonimID]) VALUES (9, N'nice', NULL)
SET IDENTITY_INSERT [dbo].[EnglishWords] OFF
SET IDENTITY_INSERT [dbo].[FrenchWords] ON 

INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (1, N'maison', NULL)
INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (2, N'appartement', NULL)
INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (3, N'voiture', NULL)
INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (4, N'lecture', NULL)
INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (5, N'livre', NULL)
INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (6, N'beteau', 7)
INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (7, N'radeau', 6)
INSERT [dbo].[FrenchWords] ([FrenchWordID], [Word], [SynonimID]) VALUES (8, N'navire', NULL)
SET IDENTITY_INSERT [dbo].[FrenchWords] OFF
SET IDENTITY_INSERT [dbo].[GermanWordsID] ON 

INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (1, N'auto', NULL)
INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (2, N'haus', NULL)
INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (3, N'Wohnung', NULL)
INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (4, N'lesen', NULL)
INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (5, N'buch', NULL)
INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (6, N'schiff', NULL)
INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (7, N'Floß', NULL)
INSERT [dbo].[GermanWordsID] ([GermanWordID], [Word], [SynonimID]) VALUES (8, N'boot', NULL)
SET IDENTITY_INSERT [dbo].[GermanWordsID] OFF
SET IDENTITY_INSERT [dbo].[ItalianWords] ON 

INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (1, N'auto', NULL)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (2, N'casa', NULL)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (3, N'libro', NULL)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (4, N'lettura', 3)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (5, N'appartamento', 2)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (6, N'bello', NULL)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (8, N'pace', NULL)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (10, N're', NULL)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (11, N'nave', NULL)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (12, N'barca', 11)
INSERT [dbo].[ItalianWords] ([ItalianWordID], [Word], [SynonimID]) VALUES (13, N'zattera', 11)
SET IDENTITY_INSERT [dbo].[ItalianWords] OFF
SET IDENTITY_INSERT [dbo].[SpanishWords] ON 

INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (1, N'coche', NULL)
INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (2, N'casa', NULL)
INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (3, N'apartamento', NULL)
INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (4, N'libro', 5)
INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (5, N'lectura', NULL)
INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (6, N'hermoso', NULL)
INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (7, N'agradble', NULL)
INSERT [dbo].[SpanishWords] ([SpanishWordID], [Word], [SynonimID]) VALUES (8, N'buque', NULL)
SET IDENTITY_INSERT [dbo].[SpanishWords] OFF
SET IDENTITY_INSERT [dbo].[Words] ON 

INSERT [dbo].[Words] ([WordID], [BulgarianWordID], [EnglishWordID], [GermanWordID], [FrenchWordID], [SpanishWordID], [ItalianWordID]) VALUES (1, N'1', N'1', N'1', N'3', N'1', N'1')
INSERT [dbo].[Words] ([WordID], [BulgarianWordID], [EnglishWordID], [GermanWordID], [FrenchWordID], [SpanishWordID], [ItalianWordID]) VALUES (2, N'2', N'2', N'2', N'1', N'2', N'2')
INSERT [dbo].[Words] ([WordID], [BulgarianWordID], [EnglishWordID], [GermanWordID], [FrenchWordID], [SpanishWordID], [ItalianWordID]) VALUES (3, N'3', N'6', N'5', N'5', N'3', N'3')
SET IDENTITY_INSERT [dbo].[Words] OFF
ALTER TABLE [dbo].[BulgarianWords]  WITH CHECK ADD  CONSTRAINT [FK_BulgarianWords_BulgarianWords] FOREIGN KEY([SynonimID])
REFERENCES [dbo].[BulgarianWords] ([BulgarianWordID])
GO
ALTER TABLE [dbo].[BulgarianWords] CHECK CONSTRAINT [FK_BulgarianWords_BulgarianWords]
GO
ALTER TABLE [dbo].[EnglishWords]  WITH CHECK ADD  CONSTRAINT [FK_EnglishWords_EnglishWords] FOREIGN KEY([SynonimID])
REFERENCES [dbo].[EnglishWords] ([EnglishWordID])
GO
ALTER TABLE [dbo].[EnglishWords] CHECK CONSTRAINT [FK_EnglishWords_EnglishWords]
GO
ALTER TABLE [dbo].[FrenchWords]  WITH CHECK ADD  CONSTRAINT [FK_FrenchWords_FrenchWords] FOREIGN KEY([SynonimID])
REFERENCES [dbo].[FrenchWords] ([FrenchWordID])
GO
ALTER TABLE [dbo].[FrenchWords] CHECK CONSTRAINT [FK_FrenchWords_FrenchWords]
GO
ALTER TABLE [dbo].[GermanWordsID]  WITH CHECK ADD  CONSTRAINT [FK_GermanWordsID_GermanWordsID] FOREIGN KEY([SynonimID])
REFERENCES [dbo].[GermanWordsID] ([GermanWordID])
GO
ALTER TABLE [dbo].[GermanWordsID] CHECK CONSTRAINT [FK_GermanWordsID_GermanWordsID]
GO
ALTER TABLE [dbo].[ItalianWords]  WITH CHECK ADD  CONSTRAINT [FK_ItalianWords_ItalianWords] FOREIGN KEY([SynonimID])
REFERENCES [dbo].[ItalianWords] ([ItalianWordID])
GO
ALTER TABLE [dbo].[ItalianWords] CHECK CONSTRAINT [FK_ItalianWords_ItalianWords]
GO
ALTER TABLE [dbo].[SpanishWords]  WITH CHECK ADD  CONSTRAINT [FK_SpanishWords_SpanishWords] FOREIGN KEY([SynonimID])
REFERENCES [dbo].[SpanishWords] ([SpanishWordID])
GO
ALTER TABLE [dbo].[SpanishWords] CHECK CONSTRAINT [FK_SpanishWords_SpanishWords]
GO
USE [master]
GO
ALTER DATABASE [WorldDictionary] SET  READ_WRITE 
GO
