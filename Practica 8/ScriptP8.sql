USE [farmacia]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK__Ventas__id_emple__173876EA]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK__Ventas__id_clien__1920BF5C]
GO
ALTER TABLE [dbo].[Medicamentos] DROP CONSTRAINT [FK__Medicament__tipo__20C1E124]
GO
ALTER TABLE [dbo].[Medicamentos] DROP CONSTRAINT [FK__Medicamen__id_pr__1FCDBCEB]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK__Empleados__turno__1273C1CD]
GO
ALTER TABLE [dbo].[Detalle_Ventas] DROP CONSTRAINT [FK__Detalle_V__id_ve__286302EC]
GO
ALTER TABLE [dbo].[Detalle_Ventas] DROP CONSTRAINT [FK__Detalle_V__id_me__29572725]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK__Compras__id_medi__239E4DCF]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [FK__Almacen__id_medi__267ABA7A]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [DF__Ventas__fecha__182C9B23]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [DF__Compras__fecha__24927208]
GO
/****** Object:  View [dbo].[Ventas_Empleado]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP VIEW [dbo].[Ventas_Empleado]
GO
/****** Object:  View [dbo].[Medicamentos_por_Proveedor]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP VIEW [dbo].[Medicamentos_por_Proveedor]
GO
/****** Object:  View [dbo].[Mediacamentos_Vendidos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP VIEW [dbo].[Mediacamentos_Vendidos]
GO
/****** Object:  View [dbo].[Med_Almacen]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP VIEW [dbo].[Med_Almacen]
GO
/****** Object:  View [dbo].[Empleados_Turnos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP VIEW [dbo].[Empleados_Turnos]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Turnos]
GO
/****** Object:  Table [dbo].[Tipos_Medicamentos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Tipos_Medicamentos]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Medicamentos]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Detalle_Ventas]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Detalle_Ventas]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Compras]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP TABLE [dbo].[Almacen]
GO
USE [master]
GO
/****** Object:  Database [farmacia]    Script Date: 01/11/2019 11:21:03 p. m. ******/
DROP DATABASE [farmacia]
GO
/****** Object:  Database [farmacia]    Script Date: 01/11/2019 11:21:03 p. m. ******/
CREATE DATABASE [farmacia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'farmacia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ROOT\MSSQL\DATA\farmacia.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'farmacia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ROOT\MSSQL\DATA\farmacia_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [farmacia] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [farmacia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [farmacia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [farmacia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [farmacia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [farmacia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [farmacia] SET ARITHABORT OFF 
GO
ALTER DATABASE [farmacia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [farmacia] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [farmacia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [farmacia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [farmacia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [farmacia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [farmacia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [farmacia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [farmacia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [farmacia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [farmacia] SET  ENABLE_BROKER 
GO
ALTER DATABASE [farmacia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [farmacia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [farmacia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [farmacia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [farmacia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [farmacia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [farmacia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [farmacia] SET RECOVERY FULL 
GO
ALTER DATABASE [farmacia] SET  MULTI_USER 
GO
ALTER DATABASE [farmacia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [farmacia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [farmacia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [farmacia] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'farmacia', N'ON'
GO
USE [farmacia]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[id_medicamento] [int] NULL,
	[cantidad] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellidoP] [varchar](50) NULL,
	[apellidoM] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[id_compra] [int] IDENTITY(1,1) NOT NULL,
	[id_medicamento] [int] NULL,
	[cantidad] [float] NULL,
	[precio_compra] [float] NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalle_Ventas]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Ventas](
	[id_venta] [int] NULL,
	[id_medicamento] [int] NULL,
	[cantidad_vendida] [int] NULL,
	[precio_venta] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](90) NULL,
	[apellidoP] [varchar](50) NULL,
	[apellidoM] [varchar](50) NULL,
	[edad] [tinyint] NULL,
	[turno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[id_medicamento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[precio_actual] [float] NULL,
	[id_proveedor] [int] NULL,
	[tipo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_medicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[telefono] [varchar](20) NULL,
	[direccion] [varchar](90) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipos_Medicamentos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipos_Medicamentos](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Turnos](
	[id_turno] [int] IDENTITY(1,1) NOT NULL,
	[horario] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[id_empleado] [int] NULL,
	[fecha] [date] NOT NULL,
	[id_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Empleados_Turnos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Empleados_Turnos] as select E.id_empleado, E.nombre + ' ' + E.apellidoP as Empleado, T.horario from  Turnos as T join Empleados as E on T.id_turno = E.turno
GO
/****** Object:  View [dbo].[Med_Almacen]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Med_Almacen] as select M.nombre as Medicamento, A.cantidad from Medicamentos as M join Almacen as A on M.id_medicamento = A.id_medicamento

GO
/****** Object:  View [dbo].[Mediacamentos_Vendidos]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Mediacamentos_Vendidos] as select M.nombre, Sum(DV.cantidad_vendida) as Cantidad_Vendida from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.cantidad_vendida group by M.nombre

GO
/****** Object:  View [dbo].[Medicamentos_por_Proveedor]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Medicamentos_por_Proveedor] as select P.nombre as Proveedor, M.nombre as Medicamentos from Proveedores as P join Medicamentos as M on P.id_proveedor = M.id_proveedor group by P.nombre, M.nombre

GO
/****** Object:  View [dbo].[Ventas_Empleado]    Script Date: 01/11/2019 11:21:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[Ventas_Empleado] as select E.nombre + ' ' + E.apellidoP + ' ' + E.apellidoM as Empleado, count(V.id_empleado) as Ventas_por_Empleado from Empleados as E join Ventas as V on V.id_empleado = E.id_empleado group by E.id_empleado, E.nombre, E.apellidoP, E.apellidoM

GO
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (1, 832)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (2, 343)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (3, 855)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (4, 523)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (5, 873)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (6, 566)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (7, 234)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (8, 233)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (9, 345)
INSERT [dbo].[Almacen] ([id_medicamento], [cantidad]) VALUES (10, 23)
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (1, N'Francis', N'Rodriguez', N'Hernandez')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (2, N'Andrea', N'Garcia', N'Martinez')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (3, N'Ana', N'Aguilar', N'Rodriguez')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (4, N'Karina', N'Perez', N'Moreno')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (5, N'Yuri', N'Huerta', N'Garcia')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (6, N'Salvador', N'Rodriguez', N'Miranda')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (7, N'Maricruz', N'Martinez', N'Guerrero')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (8, N'Luis', N'Garcia', N'Perez')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (9, N'Romeo', N'Castillo', N'Rodriguez')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (10, N'Michel', N'Carrera', N'Garcia')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (11, N'Vanesa', N'Reyna', N'Gonzales')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (12, N'Miguel', N'Torres', N'Santillan')
INSERT [dbo].[Clientes] ([id_cliente], [nombre], [apellidoP], [apellidoM]) VALUES (13, N'Javier', N'Diaz', N'Cerda')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Compras] ON 

INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (1, 1, 500, 5000, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (2, 2, 200, 1000, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (3, 3, 700, 17500, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (4, 4, 350, 3500, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (5, 5, 420, 6000, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (6, 6, 100, 5000, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (7, 7, 200, 3900, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (8, 8, 50, 4000, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (9, 9, 300, 6000, CAST(0x5B950A00 AS Date))
INSERT [dbo].[Compras] ([id_compra], [id_medicamento], [cantidad], [precio_compra], [fecha]) VALUES (10, 10, 15, 900, CAST(0x5B950A00 AS Date))
SET IDENTITY_INSERT [dbo].[Compras] OFF
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (1, 1, 10, 50.5)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (1, 4, 2, 20)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (2, 2, 7, 25.8)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (2, 1, 3, 50.5)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (2, 9, 2, 49.9)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (3, 10, 5, 150)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (4, 3, 1, 46)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (4, 7, 2, 74.5)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (5, 8, 10, 234)
INSERT [dbo].[Detalle_Ventas] ([id_venta], [id_medicamento], [cantidad_vendida], [precio_venta]) VALUES (5, 2, 1, 25.8)
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (1, N'Juan', N'Rodriguez', N'Aleman', 30, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (2, N'Ramon', N'Jara', N'Rodriguez', 40, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (3, N'Jose', N'Mata', N'Garcia', 75, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (4, N'Nicolas', N'Villa', N'Rodriguez', 26, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (5, N'Meliza', N'Melendez', N'Cruz', 38, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (6, N'Alejandra', N'Rodriguez', N'Marroqui', 18, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (7, N'Roman', N'Smith', N'Perez', 20, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (8, N'Ruben', N'Martinez', N'Carrera', 33, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (9, N'Tifani', N'Reyes', N'Sosa', 27, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (10, N'Ninfa', N'Hernandez', N'Aldana', 50, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (11, N'America', N'Quiroz', N'Leon', 25, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (12, N'Emiliano', N'Huerta', N'Sota', 45, 3)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
SET IDENTITY_INSERT [dbo].[Medicamentos] ON 

INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (1, N'XV6', 50.5, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (2, N'Crema Dolores', 25.8, 11, 1)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (3, N'Peplimon', 46, 12, 5)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (4, N'Loratadina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (5, N'Aspirina', 30.6, 5, 1)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (6, N'Kill K', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (7, N'Afloja Todo', 74.5, 6, 10)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (8, N'Mas Feliz', 234, 6, 7)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (9, N'Vitamina B', 49.9, 4, 8)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (10, N'Viagra V', 150, 4, 6)
SET IDENTITY_INSERT [dbo].[Medicamentos] OFF
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (1, N'Farmacos Rojo', N'8134569572', N'Rio de la plata #291 Col. Roma, San Nicolas')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (2, N'Medicamentos Trino', N'8146784920', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (3, N'Doctorsin Pastillas', N'8127492795', N'Guanajuato #48 Col. San Martin, Guadalupe')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (4, N'Azulitas', N'8129035018', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (5, N'Bayin', N'5568203816', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (6, N'Farmaceutica Yuan', N'5506197482', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (7, N'Genericos Milagro', N'5548291289', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (8, N'Inyectables S.D.', N'8181788966', N'Acamapishtli #900 Col. Hacienda los lermas, Juarez')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (9, N'Medicinas Curativas', N'8345679037', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (10, N'Antibioticos Medina', N'8356417689', N'5 Mayo #432 Col. Carmen Romano, Apodaca')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (11, N'Pomadas Rosas', N'8162740955', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (12, N'Pepkominol', N'5567381902', N'Hacienda la Loma #145, Col. Centro, Monterrey')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
SET IDENTITY_INSERT [dbo].[Tipos_Medicamentos] ON 

INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (1, N'Analgesicos')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (2, N'Antiestaminicos')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (3, N'Antibioticos')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (4, N'Antivirales')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (5, N'Antireflujo')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (6, N'Otros')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (7, N'Antidepresivos')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (8, N'Vitaminas')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (9, N'Anticonceptivos')
INSERT [dbo].[Tipos_Medicamentos] ([id_tipo], [tipo]) VALUES (10, N'Laxantes')
SET IDENTITY_INSERT [dbo].[Tipos_Medicamentos] OFF
SET IDENTITY_INSERT [dbo].[Turnos] ON 

INSERT [dbo].[Turnos] ([id_turno], [horario]) VALUES (1, N'00:00 - 08:00')
INSERT [dbo].[Turnos] ([id_turno], [horario]) VALUES (2, N'08:00 - 16:00')
INSERT [dbo].[Turnos] ([id_turno], [horario]) VALUES (3, N'16:00 - 24:00')
SET IDENTITY_INSERT [dbo].[Turnos] OFF
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (1, 1, CAST(0x5B950A00 AS Date), 5)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (2, 10, CAST(0x5B950A00 AS Date), 2)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (3, 4, CAST(0x5B950A00 AS Date), 3)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (4, 6, CAST(0x5B950A00 AS Date), 2)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (5, 7, CAST(0x5B950A00 AS Date), 6)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (6, 2, CAST(0x5B950A00 AS Date), 1)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (7, 12, CAST(0x5B950A00 AS Date), 2)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (8, 5, CAST(0x5B950A00 AS Date), 5)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (9, 5, CAST(0x5B950A00 AS Date), 6)
INSERT [dbo].[Ventas] ([id_venta], [id_empleado], [fecha], [id_cliente]) VALUES (10, 2, CAST(0x5B950A00 AS Date), 8)
SET IDENTITY_INSERT [dbo].[Ventas] OFF
ALTER TABLE [dbo].[Compras] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD FOREIGN KEY([id_medicamento])
REFERENCES [dbo].[Medicamentos] ([id_medicamento])
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD FOREIGN KEY([id_medicamento])
REFERENCES [dbo].[Medicamentos] ([id_medicamento])
GO
ALTER TABLE [dbo].[Detalle_Ventas]  WITH CHECK ADD FOREIGN KEY([id_medicamento])
REFERENCES [dbo].[Medicamentos] ([id_medicamento])
GO
ALTER TABLE [dbo].[Detalle_Ventas]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[Ventas] ([id_venta])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([turno])
REFERENCES [dbo].[Turnos] ([id_turno])
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[Proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD FOREIGN KEY([tipo])
REFERENCES [dbo].[Tipos_Medicamentos] ([id_tipo])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
GO
USE [master]
GO
ALTER DATABASE [farmacia] SET  READ_WRITE 
GO
