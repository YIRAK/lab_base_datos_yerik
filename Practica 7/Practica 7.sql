use farmacia
go

select * from Almacen
select * from Clientes
select * from Compras
select * from Medicamentos
select * from Tipos_Medicamentos
select * from Proveedores
select * from Empleados
select * from Turnos
select * from Ventas
select * from Detalle_Ventas

/*Selects basicos*/
select M.Nombre, A.cantidad from Medicamentos as M join Almacen as A on M.id_medicamento  = A.id_medicamento where A.cantidad < 300
select E.nombre + ' ' + E.apellidoP +  ' '  + E.apellidoM as Empleado, T.horario from Turnos as T join Empleados as E on T.id_turno = E.turno order by E.apellidoP desc
select M.nombre, TM.tipo from Tipos_Medicamentos as TM join Medicamentos as M on TM.id_tipo = M.tipo where TM.id_tipo = 1
select M.nombre, TM.tipo, P.nombre from Proveedores as P join Medicamentos as M on P.id_proveedor = M.id_proveedor join Tipos_Medicamentos as TM on  TM.id_tipo = M.tipo
select E.nombre + ' ' + E.apellidoP + ' ' + E.apellidoM as Empleado, E.edad from Empleados as E where E.edad < 28

select P.nombre as Proveedor, P.direccion from Proveedores as P
select E.nombre, V.id_venta from Empleados as E join Ventas as V on E.id_empleado = V.id_empleado order by V.id_venta asc
select M.nombre, DV.cantidad_vendida from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.cantidad_vendida order by M.nombre asc
select M.nombre, C.precio_compra, DV.precio_venta from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento join Compras as C on M.id_medicamento = C.id_medicamento
select E.nombre, V.fecha as Fecha_de_Venta from Empleados as E join Ventas as V on E.id_empleado = V.id_empleado

/*Selects avanzados*/
select E.nombre + ' ' + E.apellidoP + ' ' + E.apellidoM as Empleado, count(V.id_empleado) as Ventas_por_Empleado from Empleados as E join Ventas as V on V.id_empleado = E.id_empleado group by E.id_empleado, E.nombre, E.apellidoP, E.apellidoM having count(V.id_empleado) > 1
select M.nombre as Medicamento, sum(DV.cantidad_vendida) as Cantidad_Vendida from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento group by M.nombre order by M.nombre asc
select P.nombre, count(M.id_proveedor) as Cantidad_de_Medicamentos_por_Proveedor from Proveedores as P join Medicamentos as M on P.id_proveedor = M.id_proveedor group by P.nombre
select TM.tipo as Tipo_Medicamento, count(M.tipo) as Cantidad from Tipos_Medicamentos as TM join Medicamentos as M on TM.id_tipo = M.tipo group by TM.tipo
select C.nombre as Cliente, count(V.id_cliente) as Ventas_POR_Cliente from Clientes as C join Ventas as V on C.id_cliente = V.id_cliente group by C.id_cliente, C.nombre 

select V.fecha, count(V.id_venta) as Ventas_por_Fecha from Ventas as V group by V.fecha
select M.nombre as Medicamento, AVG(DV.precio_venta) as precio_de_venta_promedio from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento group by M.nombre 
select M.nombre as Medicamento, max(DV.cantidad_vendida) as Mayor_venta from Medicamentos as M join Detalle_Ventas as DV on M.id_medicamento = DV.id_medicamento group by M.nombre order by M.nombre desc
select C.fecha, count(C.id_compra) as Compras_por_Fecha from Compras as C group by C.fecha
select P.nombre, COUNT(TM.tipo) as Tipos_de_Medicamentos_por_Proveedor from Proveedores as P join Medicamentos as M on P.id_proveedor = M.id_proveedor join Tipos_Medicamentos as TM on Tm.id_tipo = M.tipo group by P.nombre
go


