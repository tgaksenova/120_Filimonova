USE [master]
GO
/****** Object:  Database [osago]    Script Date: 27.12.2023 12:46:08 ******/
CREATE DATABASE [osago]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'osago', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\osago.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'osago_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\osago_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [osago] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [osago].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [osago] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [osago] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [osago] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [osago] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [osago] SET ARITHABORT OFF 
GO
ALTER DATABASE [osago] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [osago] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [osago] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [osago] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [osago] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [osago] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [osago] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [osago] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [osago] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [osago] SET  DISABLE_BROKER 
GO
ALTER DATABASE [osago] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [osago] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [osago] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [osago] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [osago] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [osago] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [osago] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [osago] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [osago] SET  MULTI_USER 
GO
ALTER DATABASE [osago] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [osago] SET DB_CHAINING OFF 
GO
ALTER DATABASE [osago] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [osago] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [osago] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [osago] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [osago] SET QUERY_STORE = OFF
GO
USE [osago]
GO
/****** Object:  Table [dbo].[CarBrands]    Script Date: 27.12.2023 12:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarBrands](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfBrand] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarBrands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarCategories]    Script Date: 27.12.2023 12:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfCategory] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 27.12.2023 12:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[Model] [nvarchar](max) NULL,
	[YearOfIssue] [date] NULL,
	[GovernmentNumber] [nvarchar](9) NULL,
	[VRCSeries] [varchar](4) NULL,
	[VRCNumber] [varchar](6) NULL,
	[VPSeries] [varchar](4) NULL,
	[VPNumber] [varchar](6) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drivers]    Script Date: 27.12.2023 12:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drivers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[DateOfBirth] [date] NULL,
	[PassportSeries] [varchar](4) NULL,
	[PassportNumber] [varchar](6) NULL,
	[PassportIssueDate] [date] NULL,
	[DriverLicenseSeries] [varchar](4) NULL,
	[DriverLicenseNumber] [varchar](6) NULL,
	[DriverLicenseIssueDate] [date] NULL,
 CONSTRAINT [PK_Drivers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceAgents]    Script Date: 27.12.2023 12:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceAgents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[DateOfBirth] [date] NULL,
	[PassportSeries] [varchar](4) NULL,
	[PassportNumber] [varchar](6) NULL,
	[PassportIssueDate] [date] NULL,
 CONSTRAINT [PK_InsuranceAgents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCompanies]    Script Date: 27.12.2023 12:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompanies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameOfCompany] [nvarchar](max) NULL,
 CONSTRAINT [PK_InsuranceCompanies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policies]    Script Date: 27.12.2023 12:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Policies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PoliceNumber] [varchar](10) NULL,
	[InsuranceCompanyID] [int] NOT NULL,
	[DateOfRegistration] [date] NULL,
	[ValidityPeriod] [date] NULL,
	[InsuranceAgentID] [int] NOT NULL,
	[DriverID] [int] NOT NULL,
	[DriverLicenseSeries] [varchar](4) NULL,
	[DriverLicenseNumber] [varchar](6) NULL,
	[CarID] [int] NOT NULL,
	[GovernmentNumber] [nvarchar](9) NULL,
	[Cost] [money] NULL,
 CONSTRAINT [PK_Policies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_CarBrands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[CarBrands] ([ID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_CarBrands]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_CarCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CarCategories] ([ID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_CarCategories]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_Cars] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([ID])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_Cars]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_Drivers] FOREIGN KEY([DriverID])
REFERENCES [dbo].[Drivers] ([ID])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_Drivers]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_InsuranceAgents] FOREIGN KEY([InsuranceAgentID])
REFERENCES [dbo].[InsuranceAgents] ([ID])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_InsuranceAgents]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_InsuranceCompanies] FOREIGN KEY([InsuranceCompanyID])
REFERENCES [dbo].[InsuranceCompanies] ([ID])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_InsuranceCompanies]
GO
USE [master]
GO
ALTER DATABASE [osago] SET  READ_WRITE 
GO
