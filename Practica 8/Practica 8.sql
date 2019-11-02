use farmacia
go 

drop view Ventas_Empleado
go
create view Ventas_Empleado as select E.nombre + ' ' + E.apellidoP + ' ' + E.apellidoM as Empleado, count(V.id_empleado) as Ventas_por_Empleado from Empleados as E join Ventas as V on V.id_empleado = E.id_empleado group by E.id_empleado, E.nombre, E.apellidoP, E.apellidoM
 go
select * from Ventas_Empleado
go


drop view Mediacamentos_Vendidos
go
create view Mediacamentos_Vendidos as select M.nombre, Sum(DV.cantidad_vendida) as Cantidad_Vendida from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.cantidad_vendida group by M.nombre
go
select * from Mediacamentos_Vendidos
go


drop view Medicamentos_por_Proveedor
go
create view Medicamentos_por_Proveedor as select P.nombre as Proveedor, M.nombre as Medicamentos from Proveedores as P join Medicamentos as M on P.id_proveedor = M.id_proveedor group by P.nombre, M.nombre
go
select * from Medicamentos_por_Proveedor
go


drop view Empleados_Turnos
go
create view Empleados_Turnos as select E.id_empleado, E.nombre + ' ' + E.apellidoP as Empleado, T.horario from  Turnos as T join Empleados as E on T.id_turno = E.turno
go
select * from Empleados_Turnos
go


drop view Med_Almacen
go
create view Med_Almacen as select M.nombre as Medicamento, A.cantidad from Medicamentos as M join Almacen as A on M.id_medicamento = A.id_medicamento
go
select * from Med_Almacen
go