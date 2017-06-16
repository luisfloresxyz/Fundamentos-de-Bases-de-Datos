use APP

--26. Especialidad que cuesta más y los datos de los médicos que la pueden realizar.
SELECT emp.*, esp.especialidad, esp.num_cedula_profesional
FROM APP.FARMACIA.EMPLEADOS emp
INNER JOIN 
(SELECT m.curp, m.num_cedula_profesional, c.tipo AS especialidad
FROM APP.FARMACIA.MEDICOS m 
INNER JOIN
(SELECT curp, tipo
FROM APP.FARMACIA.ESPECIALIDADES e 
INNER JOIN
(SELECT DISTINCT c.tipo, MAX(costo) AS costo
FROM APP.FARMACIA.CONSULTAS c
GROUP BY tipo) c ON e.especialidad = c.tipo) c
ON c.curp = m.curp) esp
ON esp.curp = emp.curp;


-- 38. Ventas por tipo de medicamento.
select nombre , presentacion , count(sku) as num_unidades_vendidas
from (
	select VENDER.sku , nombre, presentacion
	from Farmacia.VENDER join farmacia.MEDICAMENTOS on VENDER.sku = MEDICAMENTOS.sku
) as R
group by nombre, presentacion 

--39. Ventas por forma de pago.
select tipo_pago , count(curp) as num_compras
from Farmacia.COMPRAR 
group by tipo_pago



--37. Número de consultas por turno y sucursal
select *
from (
select id_sucursales, count(id_consultas) as num_consultas , 'matutino' as turno
from (
	select CONSULTAS.identificador as id_consultas , TRABAJAR.identificador as id_sucursales , turno 
	from  Farmacia.CONSULTAS join Farmacia.TRABAJAR on CONSULTAS.curp = TRABAJAR.curp
	where turno = 'matutino'
) as R
group by id_sucursales) as R
union all
(select id_sucursales, count(id_consultas) as num_consultas , 'vespertino' as turno
from (
	select CONSULTAS.identificador as id_consultas , TRABAJAR.identificador as id_sucursales , turno 
	from  Farmacia.CONSULTAS join Farmacia.TRABAJAR on CONSULTAS.curp = TRABAJAR.curp
	where turno = 'vespertino'
) as R
group by id_sucursales)
union all
(select id_sucursales, count(id_consultas) as num_consultas , 'nocturno' as turno
from (
	select CONSULTAS.identificador as id_consultas , TRABAJAR.identificador as id_sucursales , turno 
	from  Farmacia.CONSULTAS join Farmacia.TRABAJAR on CONSULTAS.curp = TRABAJAR.curp
	where turno = 'nocturno'
) as R
group by id_sucursales)
order by id_sucursales




--2. Clientes que obtuvierón alguna consultas gratis.
select R.curp , nombre , paterno , materno , identificador
from (
	select curp , R.identificador
	from (
		select identificador
		from Farmacia.CONSULTAS
		where costo = 0
	) as R join Farmacia.SOLICITAR on R.identificador = SOLICITAR.identificador
) as R join Farmacia.CLIENTES on R.curp = CLIENTES.curp


--14. Mes en el que se atienden más consultas, tomando como fuente todas las consultas realizadas hasta la fecha.
select mes , maximo
from (
	select max (num_consultas) as maximo
	from (
		select mes , count(identificador) as num_consultas
		from (
			select*, month(fecha) as mes
			from Farmacia.CONSULTAS
		) as R
		group by mes
	) as R 
) as R join 
(select mes , count(identificador) as num_consultas
		from (
			select*, month(fecha) as mes
			from Farmacia.CONSULTAS
		) as R
group by mes) as R1 on R.maximo = R1.num_consultas

--17. Sucursales que cuenten con especialidades.
select identificador , especialidad
from Farmacia.ESPECIALIDADES join Farmacia.TRABAJAR on ESPECIALIDADES.curp = TRABAJAR.curp
order by identificador desc;

--18. Consultas que generarón más de una receta, y el nombre del médico que atendió tal consulta. 
select identificador , turno , fecha , tipo , costo , num_recetas , R.curp as curp_medico , nombre , paterno , materno 
from (
	select R.identificador , curp  , turno , fecha , tipo , costo , num_recetas
	from (
		select identificador , count(num_receta) as num_recetas
		from Farmacia.RECETAS
		group by identificador
	) as R join Farmacia.CONSULTAS on r.identificador = CONSULTAS.identificador
) as R join Farmacia.EMPLEADOS on R.curp = EMPLEADOS.curp
where num_recetas > 1

--41. Número de consultas que hace cada médico.
select R.curp , paterno , materno , num_consultas
from (
	select curp , count(identificador) as num_consultas
	from Farmacia.CONSULTAS
	group by curp
) as R join Farmacia.EMPLEADOS  on R.curp = EMPLEADOS.curp
order by num_consultas desc

--28. Número de consultas generales atendidas cada mes.
SELECT DATENAME(m, fecha) AS mes, COUNT(tipo) AS num_consultas_generales
FROM APP.FARMACIA.CONSULTAS
WHERE LOWER(tipo) = 'general'
GROUP BY DATENAME(m, fecha)


-- 16. Médicos que no cuenten con especialidades pero son responsables de alguna sucursal.
select R.curp , nombre, paterno, materno , identificador as id_sucursal
from (select R.curp , identificador
		from (select curp, num_cedula_profesional
				from Farmacia.MEDICOS except (select Medicos.curp, num_cedula_profesional
												from  Farmacia.MEDICOS join Farmacia.ESPECIALIDADES on MEDICOS.curp = ESPECIALIDADES.curp)) 
												as R join Farmacia.RESPONSABLES on R.curp = RESPONSABLES.curp) 
												as R join Farmacia.EMPLEADOS on R.curp = EMPLEADOS.curp


--11. Número de médicos por cada especialidad.
select especialidad , count(curp) as num_medicos , 'medicos'as medicos
from (select Medicos.curp, especialidad
		from  Farmacia.MEDICOS join Farmacia.ESPECIALIDADES on MEDICOS.curp = ESPECIALIDADES.curp) as R
group by especialidad
order by num_medicos desc;

--4. Médicos que son responsables en el turno matutino.
select R.curp , nombre , paterno , materno 
from (select MEDICOS.curp
		from Farmacia.MEDICOS join Farmacia.RESPONSABLES on MEDICOS.curp = RESPONSABLES.curp
		where turno = 'matutino') as R join Farmacia.EMPLEADOS on R.curp = EMPLEADOS.curp

--10. Datos de los clientes que ya cuentan con su monedero electrónico y tienen saldo de más de $500.
select R.curp , nombre , paterno , materno , saldo , calle_principal , colonia , delegacion_municipio , estado
from (select curp , saldo
		from Farmacia.MONEDEROS_ELECTRONICOS
		where saldo > 500) as R join Farmacia.CLIENTES on R.curp = CLIENTES.curp
		
--8. La especialidad que más es solicitada y el nombre de los médicos que la realizan.
select R.curp , nombre , paterno , materno , especialidad
from (
select curp , R.especialidad
from (
select especialidad
from (
select max(consultas_totales) as maximo
from (
select especialidad , sum(num_consultas) as consultas_totales
from (
select R.curp , especialidad , num_consultas
from (
select curp , count(identificador) as num_consultas
from Farmacia.CONSULTAS
where tipo = 'especial'
group by curp) as R join Farmacia.ESPECIALIDADES on R.curp = ESPECIALIDADES.curp) as R
group by especialidad) as R) as R 
join 
(select especialidad , sum(num_consultas) as consultas_totales
from (
select R.curp , especialidad , num_consultas
from (
select curp , count(identificador) as num_consultas
from Farmacia.CONSULTAS
where tipo = 'especial'
group by curp) as R join Farmacia.ESPECIALIDADES on R.curp = ESPECIALIDADES.curp) as R
group by especialidad) as R1 on R.maximo = R1.consultas_totales) as R join Farmacia.ESPECIALIDADES on r.especialidad = ESPECIALIDADES.especialidad) as R
join Farmacia.EMPLEADOS on R.curp = EMPLEADOS.curp
	
