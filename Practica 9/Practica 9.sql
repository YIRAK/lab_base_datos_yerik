use farmacia
go

drop trigger No_Turnos
go

create trigger No_Turnos on Turnos instead of insert as begin select * from Turnos end
go

insert into Turnos values('32')
go


drop function Ganancias
go

create function Ganancias
(@ID_Medicamento int)
returns float
begin
declare @P_Compra float, @P_Venta float, @Ganancia float
select @P_Compra = C.precio_compra from Medicamentos as M join Compras as C on M.id_medicamento = C.id_medicamento where M.id_medicamento = @ID_Medicamento
select @P_Venta = DV.precio_venta from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento where M.id_medicamento = @ID_Medicamento
set @Ganancia = @P_Venta - @P_Compra
return @Ganancia
end
go

select M.nombre as Medicamento, dbo.Ganancias(1) as Ganancias from Medicamentos as M join Compras as C on M.id_medicamento = C.id_medicamento join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento where M.id_medicamento = 1
go

create proc Empleadpos @Id_Empleado int as select E.nombre + ' ' + E.apellidoP +  ' '  + E.apellidoM as Empleado, T.horario from Turnos as T join Empleados as E on T.id_turno = E.turno where E.id_empleado = @Id_Empleado order by E.apellidoP desc
go
exec Empleadpos 3
go
create proc Cantidad_Almacen @Cantidad int as select M.Nombre, A.cantidad from Medicamentos as M join Almacen as A on M.id_medicamento  = A.id_medicamento where A.cantidad < @Cantidad
go
exec Cantidad_Almacen 788
go
create proc Ventas_por_Empleado @Id_Empleado int as select E.nombre + ' ' + E.apellidoP + ' ' + E.apellidoM as Empleado, count(V.id_empleado) as Ventas_por_Empleado from Empleados as E join Ventas as V on V.id_empleado = E.id_empleado where E.id_empleado = @Id_Empleado group by E.id_empleado, E.nombre, E.apellidoP, E.apellidoM
go
exec Ventas_por_Empleado 5
go
create proc	Precios_Compra_Venta @Id_Medicamento int as select M.nombre as Medicamento, C.precio_compra, DV.precio_venta from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento join Compras as C on M.id_medicamento = C.id_medicamento where M.id_medicamento = @Id_Medicamento
go
exec Precios_Compra_Venta 2
go
create procedure Venta_Por_Dia @Fecha date, @Medicamento int as select M.nombre as Medicamento, sum(DV.cantidad_vendida) as cantidad_vendida from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento join Ventas as V on V.id_venta = DV.id_venta where V.fecha = @Fecha and M.id_medicamento = @Medicamento group by M.nombre
go
exec Venta_Por_Dia '1900-01-01', 2
