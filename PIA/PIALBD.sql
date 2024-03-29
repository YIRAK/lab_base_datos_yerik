/*Yerik Ivan Rodriguez Araiza 1808629 Horario: 12:00pm a 2:00pm
Daniel Alejandro Cruz Polo 1795250 Horario: 2:00pm a 4:00pm*/
USE [farmacia]
GO
/****** Object:  Trigger [No_Turnos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TRIGGER [dbo].[No_Turnos]
GO
/****** Object:  Trigger [TR_ProveedorInsertado]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TRIGGER [dbo].[TR_ProveedorInsertado]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK__Ventas__id_emple__2D27B809]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK__Ventas__id_clien__2C3393D0]
GO
ALTER TABLE [dbo].[Medicamentos] DROP CONSTRAINT [FK__Medicament__tipo__2B3F6F97]
GO
ALTER TABLE [dbo].[Medicamentos] DROP CONSTRAINT [FK__Medicamen__id_pr__2A4B4B5E]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK__Empleados__turno__29572725]
GO
ALTER TABLE [dbo].[Detalle_Ventas] DROP CONSTRAINT [FK__Detalle_V__id_ve__286302EC]
GO
ALTER TABLE [dbo].[Detalle_Ventas] DROP CONSTRAINT [FK__Detalle_V__id_me__276EDEB3]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [DF__Ventas__fecha__267ABA7A]
GO
/****** Object:  Index [idx_nombreP]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_nombreP] ON [dbo].[Proveedores]
GO
/****** Object:  Index [idx_direccionP]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_direccionP] ON [dbo].[Proveedores]
GO
/****** Object:  Index [idx_precioM]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_precioM] ON [dbo].[Medicamentos]
GO
/****** Object:  Index [idx_nombreM]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_nombreM] ON [dbo].[Medicamentos]
GO
/****** Object:  Index [idx_ventaPV]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_ventaPV] ON [dbo].[Detalle_Ventas]
GO
/****** Object:  Index [idx_ventaDC]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_ventaDC] ON [dbo].[Detalle_Ventas]
GO
/****** Object:  Index [idx_clientesN]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_clientesN] ON [dbo].[Clientes]
GO
/****** Object:  Index [idx_clientesL]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP INDEX [idx_clientesL] ON [dbo].[Clientes]
GO
/****** Object:  View [dbo].[Ventas_Empleado]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[Ventas_Empleado]
GO
/****** Object:  View [dbo].[Medicamentos_por_Proveedor]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[Medicamentos_por_Proveedor]
GO
/****** Object:  View [dbo].[Mediacamentos_Vendidos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[Mediacamentos_Vendidos]
GO
/****** Object:  View [dbo].[med_antidepresivos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[med_antidepresivos]
GO
/****** Object:  View [dbo].[Empleados_Turnos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[Empleados_Turnos]
GO
/****** Object:  View [dbo].[condonesview]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[condonesview]
GO
/****** Object:  View [dbo].[condonesSaboresview]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[condonesSaboresview]
GO
/****** Object:  View [dbo].[condonesFluoresview]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[condonesFluoresview]
GO
/****** Object:  View [dbo].[anticoncept]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP VIEW [dbo].[anticoncept]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Turnos]
GO
/****** Object:  Table [dbo].[Tipos_Medicamentos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Tipos_Medicamentos]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Medicamentos]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Detalle_Ventas]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Detalle_Ventas]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Compras]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP TABLE [dbo].[Almacen]
GO
/****** Object:  UserDefinedFunction [dbo].[precioConIva]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP FUNCTION [dbo].[precioConIva]
GO
/****** Object:  UserDefinedFunction [dbo].[Ganancias]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP FUNCTION [dbo].[Ganancias]
GO
/****** Object:  StoredProcedure [dbo].[Ventas_por_Empleado]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[Ventas_por_Empleado]
GO
/****** Object:  StoredProcedure [dbo].[Venta_Por_Dia]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[Venta_Por_Dia]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaT]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[sp_consultaT]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaN]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[sp_consultaN]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaEdad]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[sp_consultaEdad]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaAP]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[sp_consultaAP]
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaAM]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[sp_consultaAM]
GO
/****** Object:  StoredProcedure [dbo].[Precios_Compra_Venta]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[Precios_Compra_Venta]
GO
/****** Object:  StoredProcedure [dbo].[Empleadpos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[Empleadpos]
GO
/****** Object:  StoredProcedure [dbo].[Cantidad_Almacen]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP PROCEDURE [dbo].[Cantidad_Almacen]
GO
USE [master]
GO
/****** Object:  Database [farmacia]    Script Date: 02/11/2019 10:49:06 p. m. ******/
DROP DATABASE [farmacia]
GO
/****** Object:  Database [farmacia]    Script Date: 02/11/2019 10:49:06 p. m. ******/
CREATE DATABASE [farmacia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'farmacia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ROOT\MSSQL\DATA\farmacia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'farmacia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ROOT\MSSQL\DATA\farmacia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [farmacia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'farmacia', N'ON'
GO
USE [farmacia]
GO
/****** Object:  StoredProcedure [dbo].[Cantidad_Almacen]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Cantidad_Almacen] @Cantidad int as select M.Nombre, A.cantidad from Medicamentos as M join Almacen as A on M.id_medicamento  = A.id_medicamento where A.cantidad < @Cantidad

GO
/****** Object:  StoredProcedure [dbo].[Empleadpos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Empleadpos] @Id_Empleado int as select E.nombre + ' ' + E.apellidoP +  ' '  + E.apellidoM as Empleado, T.horario from Turnos as T join Empleados as E on T.id_turno = E.turno where E.id_empleado = @Id_Empleado order by E.apellidoP desc

GO
/****** Object:  StoredProcedure [dbo].[Precios_Compra_Venta]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc	[dbo].[Precios_Compra_Venta] @Id_Medicamento int as select M.nombre as Medicamento, C.precio_compra, DV.precio_venta from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento join Compras as C on M.id_medicamento = C.id_medicamento where M.id_medicamento = @Id_Medicamento

GO
/****** Object:  StoredProcedure [dbo].[sp_consultaAM]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultaAM] @nombre nvarchar(20) as
begin 
	select*from empleados where apellidoM=@nombre
end

GO
/****** Object:  StoredProcedure [dbo].[sp_consultaAP]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultaAP] @nombre nvarchar(20) as
begin 
	select*from empleados where apellidoP=@nombre
end

GO
/****** Object:  StoredProcedure [dbo].[sp_consultaEdad]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultaEdad] @Edad int as
begin 
	select*from empleados where edad=@Edad
end

GO
/****** Object:  StoredProcedure [dbo].[sp_consultaN]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultaN] @nombre nvarchar(20) as
begin 
	select*from empleados where nombre=@nombre
end

GO
/****** Object:  StoredProcedure [dbo].[sp_consultaT]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_consultaT] @turno int as
begin 
	select*from empleados where turno=@turno
end

GO
/****** Object:  StoredProcedure [dbo].[Venta_Por_Dia]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Venta_Por_Dia] @Fecha date, @Medicamento int as select M.nombre as Medicamento, sum(DV.cantidad_vendida) as cantidad_vendida from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento join Ventas as V on V.id_venta = DV.id_venta where V.fecha = @Fecha and M.id_medicamento = @Medicamento group by M.nombre

GO
/****** Object:  StoredProcedure [dbo].[Ventas_por_Empleado]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Ventas_por_Empleado] @Id_Empleado int as select E.nombre + ' ' + E.apellidoP + ' ' + E.apellidoM as Empleado, count(V.id_empleado) as Ventas_por_Empleado from Empleados as E join Ventas as V on V.id_empleado = E.id_empleado where E.id_empleado = @Id_Empleado group by E.id_empleado, E.nombre, E.apellidoP, E.apellidoM

GO
/****** Object:  UserDefinedFunction [dbo].[Ganancias]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[Ganancias]
(@ID_Medicamento int)
returns float
begin
declare @P_Compra float, @P_Venta float, @Ganancia float
select @P_Compra = C.precio_compra from Medicamentos as M join Compras as C on M.id_medicamento = C.id_medicamento where M.id_medicamento = @ID_Medicamento
select @P_Venta = DV.precio_venta from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento where M.id_medicamento = @ID_Medicamento
set @Ganancia = @P_Venta - @P_Compra
return @Ganancia
end

GO
/****** Object:  UserDefinedFunction [dbo].[precioConIva]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[precioConIva](@Id_med int)returns float 
as
begin 
declare @promedio float

select @promedio=(precio_actual*1.16) from Medicamentos where id_medicamento=@Id_med
return @promedio

end

GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[id_medicamento] [int] NULL,
	[cantidad] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Compras]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Detalle_Ventas]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Tipos_Medicamentos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Turnos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  Table [dbo].[Ventas]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
/****** Object:  View [dbo].[anticoncept]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[anticoncept]
as
select nombre from Medicamentos where tipo=9

GO
/****** Object:  View [dbo].[condonesFluoresview]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[condonesFluoresview]
as
select nombre from Medicamentos where nombre like '%fluorescentes'

GO
/****** Object:  View [dbo].[condonesSaboresview]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[condonesSaboresview]
as
select nombre from Medicamentos where nombre like '%sabores'

GO
/****** Object:  View [dbo].[condonesview]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[condonesview]
as
select nombre from Medicamentos where nombre like 'Condones%'

GO
/****** Object:  View [dbo].[Empleados_Turnos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Empleados_Turnos] as select E.id_empleado, E.nombre + ' ' + E.apellidoP as Empleado, T.horario from  Turnos as T join Empleados as E on T.id_turno = E.turno

GO
/****** Object:  View [dbo].[med_antidepresivos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[med_antidepresivos] 
as
select nombre from Medicamentos where tipo=4

GO
/****** Object:  View [dbo].[Mediacamentos_Vendidos]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Mediacamentos_Vendidos] as select M.nombre, Sum(DV.cantidad_vendida) as Cantidad_Vendida from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.cantidad_vendida group by M.nombre


GO
/****** Object:  View [dbo].[Medicamentos_por_Proveedor]    Script Date: 02/11/2019 10:49:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Medicamentos_por_Proveedor] as select P.nombre as Proveedor, M.nombre as Medicamentos from Proveedores as P join Medicamentos as M on P.id_proveedor = M.id_proveedor group by P.nombre, M.nombre


GO
/****** Object:  View [dbo].[Ventas_Empleado]    Script Date: 02/11/2019 10:49:06 p. m. ******/
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
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (13, N'Daniel', N'Cruz', N'Polo', 19, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (14, N'Joanna', N'Contreras', N'Alvarado', 22, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (15, N'Esteban', N'Contreras', N'Alvarado', 24, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (16, N'Juan', N'Cruz', N'Miro', 19, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (17, N'Eldelmiro', N'Contreras', N'Alfaro', 22, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (18, N'Esteban', N'Zwingly', N'Alvarado', 24, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (19, N'Tsu', N'Guzman', N'lee', 19, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (20, N'Angela', N'Pedrera', N'Mirano', 22, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (21, N'Paulo', N'Contreras', N'Alfaro', 24, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (22, N'Vanessa', N'Alvarado', N'Estrada', 19, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (23, N'Francin', N'Alvarado', N'Estrada', 22, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (24, N'Timmy', N'Turner', N'Smith', 24, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (25, N'Jhon', N'Smith', N'Ein', 19, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (26, N'Karl', N'Jhonson', N'william', 22, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (27, N'Esteban', N'Williamson', N'Black', 24, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (28, N'John', N'Cuck', N'Black', 19, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (29, N'Joanna', N'Contreras', N'Cuck', 22, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (30, N'Esteban', N'Carrillo', N'Alvarado', 24, 3)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (31, N'Serena', N'Antonieta', N'Polo', 19, 1)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (32, N'Kenau', N'Rie', N'ves', 22, 2)
INSERT [dbo].[Empleados] ([id_empleado], [nombre], [apellidoP], [apellidoM], [edad], [turno]) VALUES (33, N'Oswaldo', N'Contreras', N'Alvarado', 24, 3)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
SET IDENTITY_INSERT [dbo].[Medicamentos] ON 

INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (1, N'XV6', 50.5, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (2, N'Crema Dolores', 25.8, 11, 1)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (3, N'Peplimon', 46, 12, 5)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (4, N'Tristeza 0', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (5, N'Aspirina', 30.6, 5, 1)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (6, N'Kill K', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (7, N'Afloja Todo', 74.5, 6, 10)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (8, N'Mas Feliz', 234, 6, 7)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (9, N'Vitamina B', 49.9, 4, 8)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (10, N'Viagra V', 150, 4, 6)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (11, N'Menos triste', 40, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (22, N'V.E', 49.9, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (23, N'Kill V', 120, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (24, N'Kill P', 90.5, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (25, N'Viagra IV', 98.4, 4, 8)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (26, N'Crema piel', 30, 11, 1)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (27, N'Pepdurazno', 50, 12, 5)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (28, N'Impalaratadina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (29, N'Farmatidina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (30, N'Lorealatadina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (31, N'Lorealatadina II', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (32, N'Lorealatadina III', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (33, N'Lorealatadina IV', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (34, N'Lorealatadina 20mg', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (35, N'Lorealatadina 50mg', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (36, N'Adrenalina ', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (37, N'Carcomalina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (38, N'Esteropolina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (39, N'Alcalina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (40, N'Lorealatadina inyectable', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (41, N'Menos triste', 40, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (42, N'Vitamina A', 50.2, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (43, N'Aprieta todo', 70, 6, 10)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (44, N'Pepfresa', 47, 12, 5)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (45, N'XV7', 52.2, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (46, N'XV8', 55, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (47, N'XV9', 60, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (48, N'XV5', 41, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (49, N'XV4', 42, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (50, N'V.A', 49.9, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (51, N'V.D', 49.9, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (52, N'V.E', 49.9, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (53, N'Kill V', 120, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (54, N'Kill P', 90.5, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (55, N'Viagra IV', 98.4, 4, 8)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (56, N'Crema piel', 30, 11, 1)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (57, N'Pepdurazno', 50, 12, 5)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (58, N'Impalaratadina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (59, N'Farmatidina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (60, N'Lorealatadina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (61, N'Lorealatadina II', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (62, N'Lorealatadina III', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (63, N'Lorealatadina IV', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (64, N'Lorealatadina 20mg', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (65, N'Lorealatadina 50mg', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (66, N'Adrenalina ', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (67, N'Carcomalina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (68, N'Esteropolina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (69, N'Alcalina', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (70, N'Lorealatadina inyectable', 20, 3, 2)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (71, N'Condones Prudence', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (72, N'Condones Trojan', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (73, N'Condones Sico', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (74, N'Condones Greco', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (75, N'Condones BigBoy', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (76, N'Condones M', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (77, N'Condones M Force', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (78, N'Condones M multi-o', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (79, N'Condones Sico(pleasure)', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (80, N'Condones Prudence sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (81, N'Condones Trojan sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (82, N'Condones Sico sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (83, N'Condones Greco sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (84, N'Condones BigBoy sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (85, N'Condones M sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (86, N'Condones M Force sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (87, N'Condones M multi-o sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (88, N'Condones Sico(pleasure) sabores', 180, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (89, N'Condones Do it', 100, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (90, N'Condones Prudence fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (91, N'Condones Trojan fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (92, N'Condones Sico fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (93, N'Condones Greco fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (94, N'Condones BigBoy fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (95, N'Condones M fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (96, N'Condones M Force fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (97, N'Condones M multi-o fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (98, N'Condones Sico(pleasure) fluorescentes', 170, 2, 9)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (99, N'Prozac', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (100, N'Celexa', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (101, N'Paxil', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (102, N'Effexor', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (103, N'Cymbalta', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (104, N'Elavil', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (105, N'Tofranil', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (106, N'Pamelor', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (107, N'Nardil', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (108, N'Parnate', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (109, N'Remeron', 250, 2, 4)
GO
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (110, N'Wellbutrin', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (111, N'Fluoxetina', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (112, N'Citaploma', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (113, N'Paroxetina', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (114, N'Venlafaxina', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (115, N'Duloxetina', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (116, N'Amitriptilina', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (117, N'Trofanil', 250, 2, 4)
INSERT [dbo].[Medicamentos] ([id_medicamento], [nombre], [precio_actual], [id_proveedor], [tipo]) VALUES (118, N'Pamelor', 250, 2, 4)
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
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (13, N'Mediks', N'1810081645', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (14, N'Health Care', N'0045613471', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (15, N'Generics', N'0441456789', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (16, N'Persistence', N'1234567890', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (17, N'Animol', N'0552487751', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (18, N'Molina', N'8125648120', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (19, N'Stable', N'0442569871', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (20, N'Antibiotics Jhon', N'4545659820', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (21, N'Bako', N'1212323265', N'Hacienda la Loma #145, Col. Centro, Monterrey')
INSERT [dbo].[Proveedores] ([id_proveedor], [nombre], [telefono], [direccion]) VALUES (22, N'Piola', N'8128156971', N'Hacienda la Loma #145, Col. Centro, Monterrey')
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
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_clientesL]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_clientesL] ON [dbo].[Clientes]
(
	[apellidoP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_clientesN]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_clientesN] ON [dbo].[Clientes]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_ventaDC]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_ventaDC] ON [dbo].[Detalle_Ventas]
(
	[cantidad_vendida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_ventaPV]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_ventaPV] ON [dbo].[Detalle_Ventas]
(
	[precio_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_nombreM]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_nombreM] ON [dbo].[Medicamentos]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_precioM]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_precioM] ON [dbo].[Medicamentos]
(
	[precio_actual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_direccionP]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_direccionP] ON [dbo].[Proveedores]
(
	[direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [idx_nombreP]    Script Date: 02/11/2019 10:49:07 p. m. ******/
CREATE NONCLUSTERED INDEX [idx_nombreP] ON [dbo].[Proveedores]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT (getdate()) FOR [fecha]
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
/****** Object:  Trigger [dbo].[TR_ProveedorInsertado]    Script Date: 02/11/2019 10:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[TR_ProveedorInsertado]
on [dbo].[Proveedores] for insert
as
select*from Proveedores

GO
/****** Object:  Trigger [dbo].[No_Turnos]    Script Date: 02/11/2019 10:49:07 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[No_Turnos] on [dbo].[Turnos] instead of insert as begin select * from Turnos end

GO
USE [master]
GO
ALTER DATABASE [farmacia] SET  READ_WRITE 
GO
