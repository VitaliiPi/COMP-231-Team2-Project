USE [master]
GO
/****** Object:  Database [ProductsDatabase]    Script Date: 2018-11-07 11:32:15 PM ******/
CREATE DATABASE [ProductsDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductsDatabase', FILENAME = N'C:\CENTENNIAL\Project1\Project\ProductsDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductsDatabase_log', FILENAME = N'C:\CENTENNIAL\Project1\Project\ProductsDatabase.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProductsDatabase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductsDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductsDatabase] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [ProductsDatabase] SET ANSI_NULLS ON 
GO
ALTER DATABASE [ProductsDatabase] SET ANSI_PADDING ON 
GO
ALTER DATABASE [ProductsDatabase] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [ProductsDatabase] SET ARITHABORT ON 
GO
ALTER DATABASE [ProductsDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductsDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductsDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductsDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductsDatabase] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [ProductsDatabase] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [ProductsDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductsDatabase] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [ProductsDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductsDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProductsDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductsDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductsDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductsDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductsDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductsDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductsDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductsDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [ProductsDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [ProductsDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductsDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductsDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductsDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductsDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProductsDatabase] SET QUERY_STORE = OFF
GO
USE [ProductsDatabase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ProductsDatabase]
GO
/****** Object:  Table [dbo].[appetizer]    Script Date: 2018-11-07 11:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appetizer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantit] [int] NULL,
	[Amount] [float] NULL,
	[Category] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[beverage]    Script Date: 2018-11-07 11:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[beverage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantit] [int] NULL,
	[Amount] [float] NULL,
	[Category] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 2018-11-07 11:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NULL,
	[Amount] [float] NULL,
	[Category] [nvarchar](50) NULL,
	[TableNumber] [int] NOT NULL,
	[OrderNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dessert]    Script Date: 2018-11-07 11:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dessert](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantit] [int] NULL,
	[Amount] [float] NULL,
	[Category] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mainCourse]    Script Date: 2018-11-07 11:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mainCourse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantit] [int] NULL,
	[Amount] [float] NULL,
	[Category] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[appetizer] ON 

INSERT [dbo].[appetizer] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (1, N'Buffalo Fingers', 6.95, NULL, NULL, NULL)
INSERT [dbo].[appetizer] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (2, N'Buffalo Wings', 5.95, NULL, NULL, NULL)
INSERT [dbo].[appetizer] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (3, N'Potato Skins', 8.95, NULL, NULL, NULL)
INSERT [dbo].[appetizer] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (4, N'Nachos', 8.95, NULL, NULL, NULL)
INSERT [dbo].[appetizer] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (5, N'Mushroom Caps', 10.95, NULL, NULL, NULL)
INSERT [dbo].[appetizer] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (6, N'Shrimp Cocktail', 12.95, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[appetizer] OFF
SET IDENTITY_INSERT [dbo].[beverage] ON 

INSERT [dbo].[beverage] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (1, N'Soda', 1.95, NULL, NULL, NULL)
INSERT [dbo].[beverage] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (2, N'Tea', 1.5, NULL, NULL, NULL)
INSERT [dbo].[beverage] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (3, N'Coffee', 1.25, NULL, NULL, NULL)
INSERT [dbo].[beverage] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (4, N'Mineral water', 2.25, NULL, NULL, NULL)
INSERT [dbo].[beverage] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (5, N'Juice', 2.5, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[beverage] OFF
SET IDENTITY_INSERT [dbo].[dessert] ON 

INSERT [dbo].[dessert] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (1, N'Apple Pie', 5.95, NULL, NULL, NULL)
INSERT [dbo].[dessert] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (2, N'Sundae', 3.95, NULL, NULL, NULL)
INSERT [dbo].[dessert] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (3, N'Carrot Cake', 5.95, NULL, NULL, NULL)
INSERT [dbo].[dessert] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (4, N'Mud Pie', 4.95, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[dessert] OFF
SET IDENTITY_INSERT [dbo].[mainCourse] ON 

INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (1, N'Seafood Alfredo', 15.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (2, N'Chicken Alfredo', 13.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (3, N'Chicken Picatta', 13.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (4, N'Turkey Club', 11.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (5, N'Lobster Pie', 19.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (6, N'Prime Rib', 20.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (7, N'Shrimp Scampi', 18.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (8, N'Turkey Dinner', 13.95, NULL, NULL, NULL)
INSERT [dbo].[mainCourse] ([Id], [Name], [Price], [Quantit], [Amount], [Category]) VALUES (9, N'Stuffed Chicken', 14.95, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[mainCourse] OFF
USE [master]
GO
ALTER DATABASE [ProductsDatabase] SET  READ_WRITE 
GO
