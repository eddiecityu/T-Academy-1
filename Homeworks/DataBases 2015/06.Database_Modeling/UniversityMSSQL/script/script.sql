USE [master]
GO
/****** Object:  Database [Database Modeling]    Script Date: 06/10/2015 15:23:52 ******/
CREATE DATABASE [Database Modeling]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DatabaseModeling', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DatabaseModeling.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DatabaseModeling_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DatabaseModeling_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Database Modeling] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Database Modeling].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Database Modeling] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Database Modeling] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Database Modeling] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Database Modeling] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Database Modeling] SET ARITHABORT OFF 
GO
ALTER DATABASE [Database Modeling] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Database Modeling] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Database Modeling] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Database Modeling] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Database Modeling] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Database Modeling] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Database Modeling] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Database Modeling] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Database Modeling] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Database Modeling] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Database Modeling] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Database Modeling] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Database Modeling] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Database Modeling] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Database Modeling] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Database Modeling] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Database Modeling] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Database Modeling] SET RECOVERY FULL 
GO
ALTER DATABASE [Database Modeling] SET  MULTI_USER 
GO
ALTER DATABASE [Database Modeling] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Database Modeling] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Database Modeling] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Database Modeling] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Database Modeling] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Database Modeling', N'ON'
GO
USE [Database Modeling]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](30) NOT NULL,
	[ProfessorID] [int] NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](25) NOT NULL,
	[FacultyID] [int] NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyName] [nvarchar](25) NOT NULL,
	[UniversityID] [int] NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Professors]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[ProfessorID] [int] IDENTITY(1,1) NOT NULL,
	[Professor FirstName] [nvarchar](20) NOT NULL,
	[Professor LastName] [nvarchar](20) NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[ProfessorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfessorsWithTitles]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessorsWithTitles](
	[ProfessorID] [int] NOT NULL,
	[TitleID] [int] NOT NULL,
 CONSTRAINT [PK_ProfessorsWithTitles_1] PRIMARY KEY CLUSTERED 
(
	[ProfessorID] ASC,
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[Student FirstName] [nvarchar](10) NOT NULL,
	[Student LastName] [nvarchar](15) NOT NULL,
	[CourseID] [int] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Titles]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[TitleID] [int] IDENTITY(1,1) NOT NULL,
	[TitleName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED 
(
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Universities]    Script Date: 06/10/2015 15:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universities](
	[UniversityID] [int] IDENTITY(1,1) NOT NULL,
	[UniversityName] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Universities] PRIMARY KEY CLUSTERED 
(
	[UniversityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (1, N'C# part 1', 8)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (2, N'C# part 2', 8)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (3, N'C# OOP', 8)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (4, N'C++', 5)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (5, N'JavaScript', 10)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (6, N'Python', 4)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (7, N'HTML + CSS', 4)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (8, N'JavaScript Apps', 11)
INSERT [dbo].[Courses] ([CourseID], [CourseName], [ProfessorID]) VALUES (9, N'Databases', 18)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (1, N'Electronics', 1)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (2, N'Networks', 1)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (3, N'Statistics', 1)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (4, N'Software', 7)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (5, N'National security', 5)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (6, N'Guard security', 5)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (7, N'Budgets', 4)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (8, N'Software applications', 7)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (12, N'Book knowledge', 3)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (13, N'Libraries mangement', 3)
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [FacultyID]) VALUES (14, N'Human rights', 6)
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([FacultyID], [FacultyName], [UniversityID]) VALUES (1, N'Information Technologies', 1)
INSERT [dbo].[Faculties] ([FacultyID], [FacultyName], [UniversityID]) VALUES (3, N'Library Knowledge', 2)
INSERT [dbo].[Faculties] ([FacultyID], [FacultyName], [UniversityID]) VALUES (4, N'Economy', 5)
INSERT [dbo].[Faculties] ([FacultyID], [FacultyName], [UniversityID]) VALUES (5, N'Air Force', 3)
INSERT [dbo].[Faculties] ([FacultyID], [FacultyName], [UniversityID]) VALUES (6, N'Law', 4)
INSERT [dbo].[Faculties] ([FacultyID], [FacultyName], [UniversityID]) VALUES (7, N'Software Engineering', 3)
SET IDENTITY_INSERT [dbo].[Faculties] OFF
SET IDENTITY_INSERT [dbo].[Professors] ON 

INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (4, N'Velina', N'Slavova', 1)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (5, N'Vasil', N'Furnadziev', 1)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (6, N'Dimirar', N'Atanasov', 1)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (7, N'Emil', N'Stoilov', 2)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (8, N'Marin', N'Marinov', 2)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (9, N'Nikolay', N'Krustev', 3)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (10, N'Nikolay', N'Kirov', 3)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (11, N'Petya', N'Asenova', 4)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (12, N'Styan ', N'Maleshkov', 4)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (13, N'Yuliana', N'Peneva', 5)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (14, N'Lasko', N'Laskov', 6)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (15, N'Mariana', N'Raykova', 6)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (16, N'Martin', N'Ivanov', 5)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (17, N'Stoyan', N'Bonev', 7)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (18, N'Lachezar', N'Tomov', 8)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (21, N'Zdravko', N'Karakehaiov', 12)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (22, N'Vesko', N'Marinov', 12)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (23, N'Angel', N'Angelov', 13)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (24, N'Penka', N'Petkoova', 14)
INSERT [dbo].[Professors] ([ProfessorID], [Professor FirstName], [Professor LastName], [DepartmentID]) VALUES (25, N'Claudia', N'Shiffer', 14)
SET IDENTITY_INSERT [dbo].[Professors] OFF
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (4, 3)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (4, 5)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (5, 4)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (5, 5)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (6, 4)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (7, 1)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (8, 2)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (9, 1)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (10, 2)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (11, 3)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (11, 5)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (12, 2)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (12, 5)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (13, 3)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (14, 3)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (15, 1)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (16, 2)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (17, 3)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (18, 4)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (21, 3)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (21, 5)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (22, 1)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (22, 5)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (23, 1)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (23, 4)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (24, 1)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (24, 5)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (25, 2)
INSERT [dbo].[ProfessorsWithTitles] ([ProfessorID], [TitleID]) VALUES (25, 3)
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (1, N'Ivan', N'Petrov', 3)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (2, N'Petar', N'Atanasov', 3)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (3, N'Zahari', N'Petrov', 1)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (4, N'Vasil', N'Veselinov', 2)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (5, N'Vesela', N'Georgieva', 3)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (6, N'Mirela', N'Kamenova', 4)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (7, N'Orlin', N'Kirilov', 3)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (8, N'Klaudio', N'Jesmen', 2)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (9, N'Prodigy', N'Yield', NULL)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (10, N'Aleksandar', N'Charakov', 2)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (11, N'Chavdar', N'Kostov', 6)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (12, N'Plamen', N'Katzarski', 4)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (13, N'Jana', N'Hitova', NULL)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (14, N'Parvan', N'Kamenov', 1)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (15, N'Alex', N'Chilikov', 1)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (16, N'Kiril', N'Despodov', 2)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (17, N'Petar', N'Petkov', 2)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (18, N'Ulian', N'Iliev', NULL)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (19, N'Boris', N'Galchev', 8)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (20, N'Yordan', N'Chunchukov', 7)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (21, N'Chvor', N'Ivanov', 3)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (22, N'Parlen', N'Bob', 9)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (23, N'Hrsto', N'Belchev', 8)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (24, N'Nikolai', N'Minev', 2)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (25, N'Lilia', N'Liubenova', NULL)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (26, N'Kamelia', N'Todorova', 3)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (27, N'Petya', N'Malinova', 7)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (28, N'Plamen', N'Hristov', 6)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (29, N'Ivanka', N'Tikova', NULL)
INSERT [dbo].[Students] ([StudentID], [Student FirstName], [Student LastName], [CourseID]) VALUES (30, N'Magdalena', N'Jekova', 5)
SET IDENTITY_INSERT [dbo].[Students] OFF
SET IDENTITY_INSERT [dbo].[Titles] ON 

INSERT [dbo].[Titles] ([TitleID], [TitleName]) VALUES (1, N'Professor')
INSERT [dbo].[Titles] ([TitleID], [TitleName]) VALUES (2, N'Doctor')
INSERT [dbo].[Titles] ([TitleID], [TitleName]) VALUES (3, N'Chief Assistant ')
INSERT [dbo].[Titles] ([TitleID], [TitleName]) VALUES (4, N'Assoc. Professor')
INSERT [dbo].[Titles] ([TitleID], [TitleName]) VALUES (5, N'PhD.')
SET IDENTITY_INSERT [dbo].[Titles] OFF
SET IDENTITY_INSERT [dbo].[Universities] ON 

INSERT [dbo].[Universities] ([UniversityID], [UniversityName]) VALUES (1, N'Sofia University')
INSERT [dbo].[Universities] ([UniversityID], [UniversityName]) VALUES (2, N'University of Library Studies and Information Technologies')
INSERT [dbo].[Universities] ([UniversityID], [UniversityName]) VALUES (3, N'Technical University of Sofia')
INSERT [dbo].[Universities] ([UniversityID], [UniversityName]) VALUES (4, N'New Bulgarian University')
INSERT [dbo].[Universities] ([UniversityID], [UniversityName]) VALUES (5, N'University of national and world economy')
SET IDENTITY_INSERT [dbo].[Universities] OFF
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Professors] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professors] ([ProfessorID])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Professors]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Faculties] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculties] ([FacultyID])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Faculties]
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD  CONSTRAINT [FK_Faculties_Universities] FOREIGN KEY([UniversityID])
REFERENCES [dbo].[Universities] ([UniversityID])
GO
ALTER TABLE [dbo].[Faculties] CHECK CONSTRAINT [FK_Faculties_Universities]
GO
ALTER TABLE [dbo].[Professors]  WITH CHECK ADD  CONSTRAINT [FK_Professors_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Professors] CHECK CONSTRAINT [FK_Professors_Departments]
GO
ALTER TABLE [dbo].[ProfessorsWithTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorsWithTitles_Professors] FOREIGN KEY([ProfessorID])
REFERENCES [dbo].[Professors] ([ProfessorID])
GO
ALTER TABLE [dbo].[ProfessorsWithTitles] CHECK CONSTRAINT [FK_ProfessorsWithTitles_Professors]
GO
ALTER TABLE [dbo].[ProfessorsWithTitles]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorsWithTitles_Titles] FOREIGN KEY([TitleID])
REFERENCES [dbo].[Titles] ([TitleID])
GO
ALTER TABLE [dbo].[ProfessorsWithTitles] CHECK CONSTRAINT [FK_ProfessorsWithTitles_Titles]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Courses]
GO
USE [master]
GO
ALTER DATABASE [Database Modeling] SET  READ_WRITE 
GO
