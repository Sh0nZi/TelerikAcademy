USE [master]
GO
/****** Object:  Database [Countries]    Script Date: 8/21/2014 11:41:57 AM ******/
CREATE DATABASE [Countries] ON  PRIMARY 
( NAME = N'Countries', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Countries.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Countries_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Countries_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Countries] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Countries].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Countries] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Countries] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Countries] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Countries] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Countries] SET ARITHABORT OFF 
GO
ALTER DATABASE [Countries] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Countries] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Countries] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Countries] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Countries] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Countries] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Countries] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Countries] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Countries] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Countries] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Countries] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Countries] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Countries] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Countries] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Countries] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Countries] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Countries] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Countries] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Countries] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Countries] SET  MULTI_USER 
GO
ALTER DATABASE [Countries] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Countries] SET DB_CHAINING OFF 
GO
USE [Countries]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 8/21/2014 11:41:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[ID] [int] NOT NULL,
	[Address_Text] [text] NULL,
	[Town_ID] [int] NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONTINENT]    Script Date: 8/21/2014 11:41:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTINENT](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CONTINENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 8/21/2014 11:41:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country_ID] [int] NOT NULL,
 CONSTRAINT [PK_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERSON]    Script Date: 8/21/2014 11:41:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSON](
	[ID] [int] NOT NULL,
	[First_name] [nvarchar](50) NOT NULL,
	[Last_name] [nvarchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_PERSON] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TOWN]    Script Date: 8/21/2014 11:41:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOWN](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country_ID] [int] NOT NULL,
 CONSTRAINT [PK_TOWN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (1, N'Botevgradsko Shose 57', 1)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (2, N'Hristo Botev 12', 2)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (3, N'Tsarigradsko Shose 44', 1)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (4, N'Shishi Mishi 10', 3)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (5, N'KeineMeineStrase 10', 4)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (6, N'HabenStrase', 5)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (7, N'Stalin 10', 6)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (8, N'Lenin 15', 7)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (9, N'15 Washington Str', 9)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (10, N'22 8th Avenue', 9)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (11, N'13 Many Casinos Str', 8)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (12, N'111 Big Shit Str', 10)
INSERT [dbo].[ADDRESS] ([ID], [Address_Text], [Town_ID]) VALUES (13, N'Pyramid Lane 150', 11)
INSERT [dbo].[CONTINENT] ([ID], [Name]) VALUES (1, N'North America')
INSERT [dbo].[CONTINENT] ([ID], [Name]) VALUES (2, N'Europe')
INSERT [dbo].[CONTINENT] ([ID], [Name]) VALUES (3, N'Asia')
INSERT [dbo].[CONTINENT] ([ID], [Name]) VALUES (4, N'Africa')
INSERT [dbo].[COUNTRY] ([ID], [Name], [Country_ID]) VALUES (1, N'Germany', 2)
INSERT [dbo].[COUNTRY] ([ID], [Name], [Country_ID]) VALUES (2, N'China', 3)
INSERT [dbo].[COUNTRY] ([ID], [Name], [Country_ID]) VALUES (3, N'Bulgaria', 2)
INSERT [dbo].[COUNTRY] ([ID], [Name], [Country_ID]) VALUES (4, N'Russia', 2)
INSERT [dbo].[COUNTRY] ([ID], [Name], [Country_ID]) VALUES (5, N'USA', 1)
INSERT [dbo].[COUNTRY] ([ID], [Name], [Country_ID]) VALUES (6, N'Egypt', 4)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (1, N'Ivan', N'Ivanov', 1)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (2, N'Petya', N'Ivanova', 1)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (3, N'George', N'Georgiev', 2)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (4, N'Mariya', N'Georgieva', 2)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (5, N'Tsing', N'Yang', 4)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (6, N'Ming', N'Yang', 4)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (7, N'Tsun', N'Kai', 4)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (8, N'KoSha', N'Yam', 4)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (9, N'Adolf', N'Hitler', 6)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (10, N'Frau', N'Hitler', 6)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (11, N'Jr Adolf', N'Hitler', 6)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (12, N'Ivan', N'Gronzii', 7)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (13, N'Maya', N'Groznii', 7)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (14, N'John', N'Corvin', 10)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (15, N'Sarah', N'Corvin', 10)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (16, N'Abdul', N'Muhammad', 13)
INSERT [dbo].[PERSON] ([ID], [First_name], [Last_name], [AddressID]) VALUES (17, N'Shanay', N'Muammad', 13)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (1, N'Sofia', 3)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (2, N'Plovdiv', 3)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (3, N'Beijing', 2)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (4, N'Munich', 1)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (5, N'Berlin', 1)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (6, N'Moscow', 4)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (7, N'Sankt Peterburg', 4)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (8, N'Las Vegas', 5)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (9, N'New York', 5)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (10, N'Washington', 5)
INSERT [dbo].[TOWN] ([ID], [Name], [Country_ID]) VALUES (11, N'Cayro', 6)
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_TOWN] FOREIGN KEY([Town_ID])
REFERENCES [dbo].[TOWN] ([ID])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_TOWN]
GO
ALTER TABLE [dbo].[COUNTRY]  WITH CHECK ADD  CONSTRAINT [FK_COUNTRY_CONTINENT] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[CONTINENT] ([ID])
GO
ALTER TABLE [dbo].[COUNTRY] CHECK CONSTRAINT [FK_COUNTRY_CONTINENT]
GO
ALTER TABLE [dbo].[PERSON]  WITH CHECK ADD  CONSTRAINT [FK_PERSON_ADDRESS] FOREIGN KEY([AddressID])
REFERENCES [dbo].[ADDRESS] ([ID])
GO
ALTER TABLE [dbo].[PERSON] CHECK CONSTRAINT [FK_PERSON_ADDRESS]
GO
ALTER TABLE [dbo].[TOWN]  WITH CHECK ADD  CONSTRAINT [FK_TOWN_COUNTRY] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[COUNTRY] ([ID])
GO
ALTER TABLE [dbo].[TOWN] CHECK CONSTRAINT [FK_TOWN_COUNTRY]
GO
USE [master]
GO
ALTER DATABASE [Countries] SET  READ_WRITE 
GO
