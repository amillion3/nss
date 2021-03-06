USE [master]
GO
/****** Object:  Database [nss]    Script Date: 12/31/2018 10:17:53 PM ******/
CREATE DATABASE [nss]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'nss', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\nss.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'nss_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\nss_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [nss] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [nss].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [nss] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [nss] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [nss] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [nss] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [nss] SET ARITHABORT OFF 
GO
ALTER DATABASE [nss] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [nss] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [nss] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [nss] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [nss] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [nss] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [nss] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [nss] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [nss] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [nss] SET  DISABLE_BROKER 
GO
ALTER DATABASE [nss] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [nss] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [nss] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [nss] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [nss] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [nss] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [nss] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [nss] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [nss] SET  MULTI_USER 
GO
ALTER DATABASE [nss] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [nss] SET DB_CHAINING OFF 
GO
ALTER DATABASE [nss] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [nss] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [nss] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [nss] SET QUERY_STORE = OFF
GO
USE [nss]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [nss]
GO
/****** Object:  Table [dbo].[Cohort]    Script Date: 12/31/2018 10:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cohort](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exercises]    Script Date: 12/31/2018 10:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exercises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Language] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 12/31/2018 10:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameFirst] [varchar](255) NULL,
	[NameLast] [varchar](255) NULL,
	[Slack] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PairCohortInstructors]    Script Date: 12/31/2018 10:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PairCohortInstructors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstructorId] [int] NULL,
	[CohortName] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PairCohortStudents]    Script Date: 12/31/2018 10:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PairCohortStudents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[CohortName] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PairStudentExercises]    Script Date: 12/31/2018 10:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PairStudentExercises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[ExerciseId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/31/2018 10:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameFirst] [varchar](255) NULL,
	[NameLast] [varchar](255) NULL,
	[Slack] [varchar](255) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cohort] ON 

INSERT [dbo].[Cohort] ([Id], [Name]) VALUES (1, N'E6')
INSERT [dbo].[Cohort] ([Id], [Name]) VALUES (2, N'E7')
INSERT [dbo].[Cohort] ([Id], [Name]) VALUES (3, N'D26')
INSERT [dbo].[Cohort] ([Id], [Name]) VALUES (4, N'D27')
SET IDENTITY_INSERT [dbo].[Cohort] OFF
SET IDENTITY_INSERT [dbo].[Exercises] ON 

INSERT [dbo].[Exercises] ([Id], [Name], [Language]) VALUES (1, N'FlipFlop', N'C#')
INSERT [dbo].[Exercises] ([Id], [Name], [Language]) VALUES (2, N'GiveAndTake', N'JavaScript')
INSERT [dbo].[Exercises] ([Id], [Name], [Language]) VALUES (3, N'Animals', N'Java')
INSERT [dbo].[Exercises] ([Id], [Name], [Language]) VALUES (4, N'Sheesh', N'ReactNative')
SET IDENTITY_INSERT [dbo].[Exercises] OFF
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (1, N'Michael', N'Jordan', N'michaeljordan')
INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (2, N'Max', N'Biaggi', N'mbiaggi')
INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (3, N'Sete', N'Gibernau', N'sg')
INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (4, N'Dani', N'Pedrosa', N'danip')
INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (5, N'Marc', N'Marquez', N'number1')
INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (6, N'Jorge', N'Lorenzo', N'jl99')
INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (7, N'Valentino', N'Rossi', N'VR46')
INSERT [dbo].[Instructor] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (8, N'Marco', N'Simoncelli', N'ms58')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
SET IDENTITY_INSERT [dbo].[PairCohortInstructors] ON 

INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (1, 1, N'E6')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (2, 2, N'E6')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (3, 3, N'D26')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (4, 4, N'D26')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (5, 5, N'D27')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (6, 6, N'D27')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (7, 7, N'E7')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (8, 8, N'E7')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (9, 1, N'E7')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (10, 2, N'E7')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (11, 7, N'E6')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (12, 8, N'E6')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (13, 3, N'D27')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (14, 4, N'D27')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (15, 5, N'D26')
INSERT [dbo].[PairCohortInstructors] ([Id], [InstructorId], [CohortName]) VALUES (16, 6, N'D26')
SET IDENTITY_INSERT [dbo].[PairCohortInstructors] OFF
SET IDENTITY_INSERT [dbo].[PairCohortStudents] ON 

INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (1, 1, N'E6')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (2, 2, N'E6')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (3, 3, N'E6')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (4, 4, N'E6')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (5, 5, N'E7')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (6, 6, N'E7')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (7, 7, N'E7')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (8, 8, N'E7')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (9, 9, N'D26')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (10, 10, N'D26')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (11, 11, N'D26')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (12, 12, N'D26')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (13, 13, N'D27')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (14, 14, N'D27')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (15, 15, N'D27')
INSERT [dbo].[PairCohortStudents] ([Id], [StudentId], [CohortName]) VALUES (16, 16, N'D27')
SET IDENTITY_INSERT [dbo].[PairCohortStudents] OFF
SET IDENTITY_INSERT [dbo].[PairStudentExercises] ON 

INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (1, 1, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (2, 2, 3)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (3, 3, 2)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (4, 4, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (5, 5, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (6, 6, 3)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (7, 7, 2)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (8, 8, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (9, 9, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (10, 10, 3)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (11, 11, 2)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (12, 12, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (13, 13, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (14, 14, 3)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (15, 15, 2)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (16, 16, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (17, 1, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (18, 2, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (19, 3, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (20, 4, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (21, 5, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (22, 6, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (23, 7, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (24, 8, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (25, 9, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (26, 10, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (27, 11, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (28, 12, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (29, 13, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (30, 14, 1)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (31, 15, 4)
INSERT [dbo].[PairStudentExercises] ([Id], [StudentId], [ExerciseId]) VALUES (32, 16, 4)
SET IDENTITY_INSERT [dbo].[PairStudentExercises] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (1, N'asdf', N'asdf', N'asdf')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (2, N'asdfasf', N'asdfasdf', N'asfsdf3')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (3, N'asdfas', N'asdfasd', N'afsd')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (4, N'asdfasd', N'asdfasd', N'asdfasd')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (5, N'dfghdfgh', N'dfghdfgh', N'dfghdfhg')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (6, N'dfghdfg', N'dfghdfhg', N'dfghdfg')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (7, N'sdfg', N'sdgfsd', N'sdfgsd')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (8, N'sdgfsd', N'fsdgfsd', N'sdgfsdfg4')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (9, N'fghjfgh', N'fghjfgh', N'fghjfgh')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (10, N'fghjfgh', N'fghjfgh', N'ghfjhjjjjjj')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (11, N'fghjfg', N'ffffjy', N'ffjyjfjyjy')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (12, N'fghjfghjjjj', N'fghjgfjfyjys', N'fgjncghj')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (13, N'qwerqwer', N'qwerqwer', N'qwerqwer')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (14, N'qwerqwe', N'eeerqqer', N'qereeee')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (15, N'qerrrrrr', N'qerererere', N'qrwertyyy')
INSERT [dbo].[Student] ([Id], [NameFirst], [NameLast], [Slack]) VALUES (16, N'qqeqqqqq', N'qqerrrqq', N'rqqqqqqqq')
SET IDENTITY_INSERT [dbo].[Student] OFF
USE [master]
GO
ALTER DATABASE [nss] SET  READ_WRITE 
GO
