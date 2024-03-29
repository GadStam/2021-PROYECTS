USE [master]
GO
/****** Object:  Database [BDPadron]    Script Date: 9/11/2021 11:21:59 ******/
CREATE DATABASE [BDPadron]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDPadron', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDPadron.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDPadron_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDPadron_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BDPadron] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDPadron].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDPadron] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDPadron] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDPadron] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDPadron] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDPadron] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDPadron] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDPadron] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDPadron] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDPadron] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDPadron] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDPadron] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDPadron] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDPadron] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDPadron] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDPadron] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDPadron] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDPadron] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDPadron] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDPadron] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDPadron] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDPadron] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDPadron] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDPadron] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDPadron] SET  MULTI_USER 
GO
ALTER DATABASE [BDPadron] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDPadron] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDPadron] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDPadron] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDPadron] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDPadron', N'ON'
GO
ALTER DATABASE [BDPadron] SET QUERY_STORE = OFF
GO
USE [BDPadron]
GO
/****** Object:  User [alumno]    Script Date: 9/11/2021 11:21:59 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Establecimiento]    Script Date: 9/11/2021 11:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establecimiento](
	[IdEstablecimiento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Localidad] [varchar](50) NULL,
 CONSTRAINT [PK_Establecimiento] PRIMARY KEY CLUSTERED 
(
	[IdEstablecimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 9/11/2021 11:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[DNI] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[IdEstablecimiento] [int] NULL,
	[Voto] [bit] NULL,
	[NumeroTramite] [int] NULL,
	[Fecha_Voto] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Establecimiento] ON 

INSERT [dbo].[Establecimiento] ([IdEstablecimiento], [Nombre], [Direccion], [Localidad]) VALUES (1, N'Escuela Tecnica ORT', N'Yatay 240', N'Almagro')
INSERT [dbo].[Establecimiento] ([IdEstablecimiento], [Nombre], [Direccion], [Localidad]) VALUES (2, N'Colegio Manuel Belgrano', N'Lavalle 759', N'Microcentro')
INSERT [dbo].[Establecimiento] ([IdEstablecimiento], [Nombre], [Direccion], [Localidad]) VALUES (3, N'Escuela Domingo Faustino Sarmiento', N'Nazca 1122', N'Flores')
INSERT [dbo].[Establecimiento] ([IdEstablecimiento], [Nombre], [Direccion], [Localidad]) VALUES (4, N'Colegio Nuestra Sra Misericordia', N'Sanabria 2900', N'Devoto')
SET IDENTITY_INSERT [dbo].[Establecimiento] OFF
GO
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (11111111, N'Lionel Andres', N'Messi', 1, 1, 111111112, NULL)
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (22222222, N'Rodrigo ', N'De Paul', 1, 1, 222222223, CAST(N'2021-11-09' AS Date))
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (33333333, N'Emiliano ', N'Martinez', 2, 1, 333333334, CAST(N'2021-11-09' AS Date))
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (44444444, N'Lautaro ', N'Martinze', 2, 0, 444444445, NULL)
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (55555555, N'Leandro', N'Paredes', 3, 0, 555555556, NULL)
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (66666666, N'Nicolas', N'Otamendi', 1, 0, 666666667, NULL)
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (77777777, N'Angel', N'Di Maria', 3, 0, 777777778, NULL)
INSERT [dbo].[Personas] ([DNI], [Nombre], [Apellido], [IdEstablecimiento], [Voto], [NumeroTramite], [Fecha_Voto]) VALUES (88888888, N'Cristian Cuti', N'Romero', 1, 1, 888888889, NULL)
GO
USE [master]
GO
ALTER DATABASE [BDPadron] SET  READ_WRITE 
GO
