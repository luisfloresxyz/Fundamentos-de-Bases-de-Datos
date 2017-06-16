use APP

-- es una procedimiento de almacenamiento para sabar cuantos doctores tiene una sucursal dada
-- si no se le pasa una sucursal dira cuantos doctores hay en total registrados en la base
-- sirve para saber si una sucursal esta baja de personal o si hay mucha demanda ver de cual sucursal seria mejor transaldar doctores
if OBJECT_ID('Farmacia.DoctoresPorSucursal','P') is not null
drop procedure Farmacia.DoctoresPorSucursal;
go

create procedure Farmacia.DoctoresPorSucursal
	@id_sucursal int = null, 
	@cantidad_doctores int output
as
if @id_sucursal is null
begin 
set @cantidad_doctores=
(select count(curp) as num_doctores
from Farmacia.MEDICOS);
end
else
begin 
set @cantidad_doctores= 
(
select count(curp) as num_medicos
from (
	select MEDICOS.curp
	from Farmacia.MEDICOS join Farmacia.TRABAJAR on MEDICOS.curp = TRABAJAR.curp
	where identificador = @id_sucursal
) as R
);
end 
return;
go

-- es un procedimineto que nos muestra toda la informacion de un empleado dado
if OBJECT_ID('Farmacia.InfromacionEmpleado','P') is not null
drop procedure Farmacia.InfromacionEmpleado;
go

create procedure Farmacia.InfromacionEmpleado
	@curp_empleado char(18)
as
	set NOCOUNT ON;
	select *
	from Farmacia.EMPLEADOS
	where curp = @curp_empleado;
go