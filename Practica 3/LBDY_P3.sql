USE [Farmacia_Yek]
GO
ALTER TABLE [dbo].[Medicamentos] DROP CONSTRAINT [CK__Medicamen__preci__108B795B]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK__Ventas__id_vende__25869641]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK__Inventari__id_pr__182C9B23]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK__Inventari__id_me__164452B1]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK__Empleados__id_pu__21B6055D]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK__Empleados__id_de__20C1E124]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [DF__Ventas__fecha__24927208]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [DF__Inventari__canti__173876EA]
GO
/****** Object:  Index [UQ__Puestos__72AFBCC6299F851C]    Script Date: 21/09/2019 01:50:48 a. m. ******/
ALTER TABLE [dbo].[Puestos] DROP CONSTRAINT [UQ__Puestos__72AFBCC6299F851C]
GO
/****** Object:  Index [UQ__Proveedo__72AFBCC61D36C7FE]    Script Date: 21/09/2019 01:50:48 a. m. ******/
ALTER TABLE [dbo].[Proveedor] DROP CONSTRAINT [UQ__Proveedo__72AFBCC61D36C7FE]
GO
/****** Object:  Index [UQ__Proveedo__2A586E0B656EAFDE]    Script Date: 21/09/2019 01:50:48 a. m. ******/
ALTER TABLE [dbo].[Proveedor] DROP CONSTRAINT [UQ__Proveedo__2A586E0B656EAFDE]
GO
/****** Object:  Index [UQ__Departam__72AFBCC62F87ACDA]    Script Date: 21/09/2019 01:50:48 a. m. ******/
ALTER TABLE [dbo].[Departamentos] DROP CONSTRAINT [UQ__Departam__72AFBCC62F87ACDA]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP TABLE [dbo].[Puestos]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP TABLE [dbo].[Medicamentos]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP TABLE [dbo].[Departamentos]
GO
USE [master]
GO
/****** Object:  Database [Farmacia_Yek]    Script Date: 21/09/2019 01:50:48 a. m. ******/
DROP DATABASE [Farmacia_Yek]
GO
/****** Object:  Database [Farmacia_Yek]    Script Date: 21/09/2019 01:50:48 a. m. ******/
CREATE DATABASE [Farmacia_Yek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Farmacia_Yek', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ROOT\MSSQL\DATA\Farmacia_Yek.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Farmacia_Yek_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ROOT\MSSQL\DATA\Farmacia_Yek_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Farmacia_Yek] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Farmacia_Yek].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Farmacia_Yek] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET ARITHABORT OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia_Yek] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia_Yek] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Farmacia_Yek] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Farmacia_Yek] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Farmacia_Yek] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET RECOVERY FULL 
GO
ALTER DATABASE [Farmacia_Yek] SET  MULTI_USER 
GO
ALTER DATABASE [Farmacia_Yek] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Farmacia_Yek] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Farmacia_Yek] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Farmacia_Yek] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Farmacia_Yek', N'ON'
GO
USE [Farmacia_Yek]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 21/09/2019 01:50:48 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[id_departamentos] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_departamentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 21/09/2019 01:50:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoP] [varchar](50) NULL,
	[ApellidoM] [varchar](50) NULL,
	[nombre_completo]  AS (((([nombre]+' ')+[ApellidoP])+' ')+[ApellidoM]),
	[id_departamento] [int] NULL,
	[id_puesto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 21/09/2019 01:50:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[id_medicamento] [int] NULL,
	[cantidad] [int] NULL,
	[precioCompra] [int] NULL,
	[id_proveedor] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 21/09/2019 01:50:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[id_medicamentos] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[precioVenta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicamentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 21/09/2019 01:50:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](150) NULL,
	[correo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 21/09/2019 01:50:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puestos](
	[id_puesto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 21/09/2019 01:50:49 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[id_vendedor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Departam__72AFBCC62F87ACDA]    Script Date: 21/09/2019 01:50:49 a. m. ******/
ALTER TABLE [dbo].[Departamentos] ADD UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Proveedo__2A586E0B656EAFDE]    Script Date: 21/09/2019 01:50:49 a. m. ******/
ALTER TABLE [dbo].[Proveedor] ADD UNIQUE NONCLUSTERED 
(
	[correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Proveedo__72AFBCC61D36C7FE]    Script Date: 21/09/2019 01:50:49 a. m. ******/
ALTER TABLE [dbo].[Proveedor] ADD UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Puestos__72AFBCC6299F851C]    Script Date: 21/09/2019 01:50:49 a. m. ******/
ALTER TABLE [dbo].[Puestos] ADD UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventario] ADD  DEFAULT ((0)) FOR [cantidad]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([id_departamento])
REFERENCES [dbo].[Departamentos] ([id_departamentos])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([id_puesto])
REFERENCES [dbo].[Puestos] ([id_puesto])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([id_medicamento])
REFERENCES [dbo].[Medicamentos] ([id_medicamentos])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Proveedor] ([id_proveedor])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([id_vendedor])
REFERENCES [dbo].[Empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD CHECK  (([precioVenta]>(0)))
GO
USE [master]
GO
ALTER DATABASE [Farmacia_Yek] SET  READ_WRITE 
GO
