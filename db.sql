USE [master]
GO
/****** Object:  Database [tarjetasgraficas]    Script Date: 12/06/2024 8:36:38 p. m. ******/
CREATE DATABASE [tarjetasgraficas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tarjetasgraficas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\tarjetasgraficas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tarjetasgraficas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\tarjetasgraficas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [tarjetasgraficas] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tarjetasgraficas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tarjetasgraficas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET ARITHABORT OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tarjetasgraficas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tarjetasgraficas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tarjetasgraficas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tarjetasgraficas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET RECOVERY FULL 
GO
ALTER DATABASE [tarjetasgraficas] SET  MULTI_USER 
GO
ALTER DATABASE [tarjetasgraficas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tarjetasgraficas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tarjetasgraficas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tarjetasgraficas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tarjetasgraficas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tarjetasgraficas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'tarjetasgraficas', N'ON'
GO
ALTER DATABASE [tarjetasgraficas] SET QUERY_STORE = ON
GO
ALTER DATABASE [tarjetasgraficas] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [tarjetasgraficas]
GO
/****** Object:  Schema [tarjetasgraficas]    Script Date: 12/06/2024 8:36:38 p. m. ******/
CREATE SCHEMA [tarjetasgraficas]
GO
/****** Object:  Table [tarjetasgraficas].[almacen]    Script Date: 12/06/2024 8:36:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tarjetasgraficas].[almacen](
	[referencia] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_almacen_referencia] PRIMARY KEY CLUSTERED 
(
	[referencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tarjetasgraficas].[cupones]    Script Date: 12/06/2024 8:36:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tarjetasgraficas].[cupones](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cupon] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_cupones_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tarjetasgraficas].[facturas]    Script Date: 12/06/2024 8:36:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tarjetasgraficas].[facturas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idProducto] [int] NULL,
	[idCupon] [int] NOT NULL,
	[cantUnidades] [int] NOT NULL,
	[metodoPago] [int] NOT NULL,
 CONSTRAINT [PK_facturas_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tarjetasgraficas].[productos]    Script Date: 12/06/2024 8:36:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tarjetasgraficas].[productos](
	[referencia] [int] IDENTITY(1,1) NOT NULL,
	[producto] [nvarchar](30) NOT NULL,
	[precio] [int] NOT NULL,
	[portada] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_productos_referencia] PRIMARY KEY CLUSTERED 
(
	[referencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tarjetasgraficas].[usuarios]    Script Date: 12/06/2024 8:36:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tarjetasgraficas].[usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [nvarchar](15) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[contrasena] [nvarchar](50) NOT NULL,
	[direccion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_usuarios_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tarjetasgraficas].[facturas] ADD  DEFAULT (NULL) FOR [idProducto]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'tarjetasgraficas.almacen' , @level0type=N'SCHEMA',@level0name=N'tarjetasgraficas', @level1type=N'TABLE',@level1name=N'almacen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'tarjetasgraficas.cupones' , @level0type=N'SCHEMA',@level0name=N'tarjetasgraficas', @level1type=N'TABLE',@level1name=N'cupones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'tarjetasgraficas.facturas' , @level0type=N'SCHEMA',@level0name=N'tarjetasgraficas', @level1type=N'TABLE',@level1name=N'facturas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'tarjetasgraficas.productos' , @level0type=N'SCHEMA',@level0name=N'tarjetasgraficas', @level1type=N'TABLE',@level1name=N'productos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'tarjetasgraficas.usuarios' , @level0type=N'SCHEMA',@level0name=N'tarjetasgraficas', @level1type=N'TABLE',@level1name=N'usuarios'
GO
USE [master]
GO
ALTER DATABASE [tarjetasgraficas] SET  READ_WRITE 
GO
