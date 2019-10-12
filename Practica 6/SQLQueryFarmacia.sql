create database farmacia
use farmacia

create table Turnos(id_turno int primary key identity, horario varchar(20))
create table Empleados(id_empleado int primary key identity, nombre varchar(90), apellidoP varchar(50), apellidoM varchar(50), edad tinyint, turno int foreign key references Turnos(id_turno))
create table Clientes(id_cliente int primary key identity, nombre varchar(50), apellidoP varchar(50), apellidoM varchar(50))
create table Ventas(id_venta int primary key identity, id_empleado int foreign key references Empleados(id_empleado), fecha date default getDate() not null, id_cliente int foreign key references Clientes(id_cliente))
create table Proveedores(id_proveedor int primary key identity, nombre varchar(50), telefono varchar(20), direccion varchar(90))
create table Tipos_Medicamentos(id_tipo int primary key identity, tipo varchar(30))
create table Medicamentos(id_medicamento int primary key identity, nombre varchar(50), precio_actual float, id_proveedor int foreign key references Proveedores(id_proveedor), tipo int foreign key references Tipos_Medicamentos(id_tipo))
create table Compras(id_compra int primary key identity, id_medicamento int foreign key references Medicamentos(id_medicamento), cantidad float, precio_compra float, fecha date default getDate() not null)
create table Almacen(id_medicamento int foreign key references Medicamentos(id_medicamento), cantidad float)
create table Detalle_Ventas(id_venta int foreign key references Ventas(id_venta), id_medicamento int foreign key references Medicamentos(id_medicamento), cantidad_vendida int, precio_venta float)

insert into Turnos values('00:00 - 08:00')
insert into Turnos values('08:00 - 16:00')
insert into Turnos values('16:00 - 24:00')
insert into Empleados values('Juan', 'Rodriguez', 'Aleman', 30, 1)
insert into Empleados values('Ramon', 'Jara', 'Rodriguez', 40, 3)

insert into Empleados values('Jose', 'Mata', 'Garcia', 75, 2)
insert into Empleados values('Nicolas', 'Villa', 'Rodriguez', 26, 2)
insert into Empleados values('Meliza', 'Melendez', 'Cruz', 38, 1)
insert into Empleados values('Alejandra', 'Rodriguez', 'Marroqui', 18, 3)
insert into Empleados values('Roman', 'Smith', 'Perez', 20, 2)
/*10*/
insert into Empleados values('Ruben', 'Martinez', 'Carrera', 33, 1)
insert into Empleados values('Tifani', 'Reyes', 'Sosa', 27, 1)
insert into Empleados values('Ninfa', 'Hernandez', 'Aldana', 50, 2)
insert into Empleados values('America', 'Quiroz', 'Leon', 25, 2)
insert into Empleados values('Emiliano', 'Huerta', 'Sota', 45, 3)

insert into Clientes values('Francis', 'Rodriguez', 'Hernandez')
insert into Clientes values('Andrea', 'Garcia', 'Martinez')
insert into Clientes values('Ana', 'Aguilar', 'Rodriguez')
insert into Clientes values('Karina', 'Perez', 'Moreno')
insert into Clientes values('Yuri', 'Huerta', 'Garcia')
/*20*/
insert into Clientes values('Salvador', 'Rodriguez', 'Miranda')
insert into Clientes values('Maricruz', 'Martinez', 'Guerrero')
insert into Clientes values('Luis', 'Garcia', 'Perez')
insert into Clientes values('Romeo', 'Castillo', 'Rodriguez')
insert into Clientes values('Michel', 'Carrera', 'Garcia')

insert into Clientes values('Vanesa', 'Reyna', 'Gonzales')
insert into Clientes values('Miguel', 'Torres', 'Santillan')
insert into Clientes values('Javier', 'Diaz', 'Cerda')
insert into Proveedores values('Farmacos Rojo','8134569572','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Medicamentos Trino','8146784920','Hacienda la Loma #145, Col. Centro, Monterrey')
/*30*/
insert into Proveedores values('Doctorsin Pastillas','8127492795','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Azulitas','8129035018','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Bayin','5568203816','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Farmaceutica Yuan','5506197482','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Genericos Milagro','5548291289','Hacienda la Loma #145, Col. Centro, Monterrey')

insert into Proveedores values('Inyectables S.D.','8181788966','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Medicinas Curativas','8345679037','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Antibioticos Medina','8356417689','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Pomadas Rosas','8162740955','Hacienda la Loma #145, Col. Centro, Monterrey')
insert into Proveedores values('Pepkominol','5567381902','Hacienda la Loma #145, Col. Centro, Monterrey')
/*40*/
insert into Tipos_Medicamentos values('Analgesicos')
insert into Tipos_Medicamentos values('Antiestaminicos')
insert into Tipos_Medicamentos values('Antibioticos')
insert into Tipos_Medicamentos values('Antivirales')
insert into Tipos_Medicamentos values('Antireflujo')

insert into Tipos_Medicamentos values('Otros')
insert into Tipos_Medicamentos values('Antidepresivos')
insert into Tipos_Medicamentos values('Vitaminas')
insert into Tipos_Medicamentos values('Anticonceptivos')
insert into Tipos_Medicamentos values('Laxantes')
/*50*/
insert into Medicamentos values('XXLL3', 50.5, 2, 4)
insert into Medicamentos values('Crema Dolores', 25.8, 11, 1)
insert into Medicamentos values('Peplimon', 46, 12, 5)
insert into Medicamentos values('Loratadina', 20, 3, 2)
insert into Medicamentos values('Aspirina', 30.6, 5, 1)

insert into Medicamentos values('Kill K', 100, 2, 9)
insert into Medicamentos values('Afloja Todo', 74.5, 6, 10)
insert into Medicamentos values('Mas Feliz', 234, 6, 7)
insert into Medicamentos values('Vitamina B', 49.9, 4, 8)
insert into Medicamentos values('Viagra V', 150, 4, 6)
/*60*/
insert into Ventas values(1, '', 5)
insert into Ventas values(10, '', 2)
insert into Ventas values(4, '', 3)
insert into Ventas values(6, '', 2)
insert into Ventas values(7, '', 6)

insert into Ventas values(2, '', 1)
insert into Ventas values(12, '', 2)
insert into Ventas values(5, '', 5)
insert into Ventas values(5, '', 6)
insert into Ventas values(2, '', 8)
/*70*/
insert into Compras values(1, 500, 5000, '')
insert into Compras values(2, 200, 1000, '')
insert into Compras values(3, 700, 17500, '')
insert into Compras values(4, 350, 3500, '')
insert into Compras values(5, 420, 6000, '')

insert into Compras values(6, 100, 5000, '')
insert into Compras values(7, 200, 3900, '')
insert into Compras values(8, 50, 4000, '')
insert into Compras values(9, 300, 6000, '')
insert into Compras values(10, 15, 900, '')
/*80*/
insert into Almacen values(1, 832)
insert into Almacen values(2, 343)
insert into Almacen values(3, 855)
insert into Almacen values(4, 523)
insert into Almacen values(5, 873)

insert into Almacen values(6, 566)
insert into Almacen values(7, 234)
insert into Almacen values(8, 233)
insert into Almacen values(9, 345)
insert into Almacen values(10, 23)
/*90*/
insert into Detalle_Ventas values(1, 1, 10, 50.5)
insert into Detalle_Ventas values(1, 3, 3, 46)
insert into Detalle_Ventas values(1, 4, 2, 20)
insert into Detalle_Ventas values(2, 7, 1, 74.5)
insert into Detalle_Ventas values(2, 2, 7, 25.8)

insert into Detalle_Ventas values(2, 4, 2, 20)
insert into Detalle_Ventas values(2, 1, 3, 50.5)
insert into Detalle_Ventas values(2, 9, 2, 49.9)
insert into Detalle_Ventas values(3, 7, 1, 74.5)
insert into Detalle_Ventas values(3, 10, 5, 150)
/*100*/
insert into Detalle_Ventas values(4, 3, 1, 46)
insert into Detalle_Ventas values(4, 5, 1, 30.6)
insert into Detalle_Ventas values(4, 7, 2, 74.5)
insert into Detalle_Ventas values(5, 8, 10, 234)
insert into Detalle_Ventas values(5, 2, 1, 25.8)


update Medicamentos set nombre = 'XV6' where id_medicamento = 1
update Proveedores set direccion = 'Rio de la plata #291 Col. Roma, San Nicolas' where id_proveedor = 1
update Proveedores set direccion = 'Guanajuato #48 Col. San Martin, Guadalupe' where id_proveedor = 3
update Proveedores set direccion = '5 Mayo #432 Col. Carmen Romano, Apodaca' where id_proveedor = 10
update Proveedores set direccion = 'Acamapishtli #900 Col. Hacienda los lermas, Juarez' where id_proveedor = 8

delete from Detalle_Ventas where id_medicamento = 5 and id_venta = 4
delete from Detalle_Ventas where id_medicamento = 7 and id_venta = 2
delete from Detalle_Ventas where id_medicamento = 7 and id_venta = 3
delete from Detalle_Ventas where id_medicamento = 3 and id_venta = 1
delete from Detalle_Ventas where id_medicamento = 4 and id_venta = 2

select * from Detalle_Ventas