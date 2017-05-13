--a. Encontrar el nombre y la ciudad de todos los empleados que trabajan en PEMEX
--SELECT distinct e.nombre, e.ciudad
--FROM APP2.EMPRESA.EMPLEADOS e INNER JOIN APP2.EMPRESA.TRABAJAR t ON e.curp = t.curp
--	INNER JOIN APP2.EMPRESA.EMPRESAS m ON m.rfc = t.rfc AND m.razon_social = 'PEMEX';

--b. Encontrar todos los empleados que viven en la misma ciudad en la que trabajan.
--SELECT distinct *
--FROM APP2.EMPRESA.EMPLEADOS e INNER JOIN APP2.EMPRESA.TRABAJAR t ON e.curp = t.curp
--	INNER JOIN APP2.EMPRESA.EMPRESAS m ON m.rfc = t.rfc AND e.ciudad = m.ciudad;

--c. Calcular el salario de todos los directores.
--SELECT distinct t.curp, t.rfc, t.salario
--FROM APP2.EMPRESA.SUPERVISAR s INNER JOIN APP2.EMPRESA.TRABAJAR t ON s.curp_supervisor = t.curp;

--d. Obtener la información de los directores y empresas que comenzaron a dirigir dicha empresa
--en el primer y tercer trimestre del año que tú elijas.
--SELECT distinct e.nombre, e.paterno, e.materno, e.fecha_nac, e.calle, e.num, e.ciudad, e.codigo_postal,
		--m.rfc, m.razon_social, m.calle, m.num, m.ciudad, m.codigo_postal
--FROM APP2.EMPRESA.EMPLEADOS e INNER JOIN APP2.EMPRESA.SUPERVISAR s ON e.curp = s.curp_supervisor
--	INNER JOIN APP2.EMPRESA.DIRIGIR d ON d.curp = s.curp_supervisor
--	INNER JOIN APP2.EMPRESA.EMPRESAS m ON d.rfc = m.rfc
--WHERE (DATEPART(QUARTER, d.fecha_inicio) = 1 OR  DATEPART(QUARTER, d.fecha_inicio) = 3) 
--		AND DATEPART(YEAR, d.fecha_inicio) IN (2012);

--e. Encontrar a todos los empleados que viven en la misma ciudad y en la misma calle que su
--supervisor.
--SELECT e2.curp, e2.nombre, e2.paterno, e2.materno, e2.fecha_nac, e2.calle, e2.num, e2.ciudad, e2.codigo_postal
--FROM APP2.EMPRESA.SUPERVISAR s INNER JOIN APP2.EMPRESA.EMPLEADOS e ON s.curp_supervisor = e.curp
--	INNER JOIN APP2.EMPRESA.EMPLEADOS e2 ON s.curp_empleado = e2.curp
--WHERE e.calle = e2.calle AND e.ciudad = e2.ciudad;

--f. Obtener una lista de cada compañía y el salario promedio que paga.
--SELECT e.rfc, AVG(t.salario) AS  salario_promedio
--FROM APP2.EMPRESA.EMPRESAS e INNER JOIN APP2.EMPRESA.TRABAJAR t ON e.rfc = t.rfc
--GROUP BY e.rfc;

--g. Empleados que colaboran en proyectos que controlan empresas para las que no trabajan.
--(SELECT e.curp, m.rfc
--FROM (((APP2.EMPRESA.EMPLEADOS e INNER JOIN APP2.EMPRESA.COLABORAR c ON e.curp = c.curp)
--	INNER JOIN APP2.EMPRESA.PROYECTOS p ON p.num_proy = c.num_proy)
--	INNER JOIN APP2.EMPRESA.EMPRESAS m ON m.rfc = p.rfc))
--EXCEPT
--(SELECT curp, rfc
--FROM APP2.EMPRESA.TRABAJAR);

--h. Encontrar el total de salarios pagados por cada compañía.
--SELECT rfc, COUNT(salario) AS total_salarios_pagados
--FROM APP2.EMPRESA.TRABAJAR
--GROUP BY rfc;

--i. Encontrar información de los empleados y número de horas que dedican a los proyectos, para
--aquellos empleados que colaboran en al menos dos proyectos y en donde el número de horas
--que dediquen a algún proyecto sea mayor a 20.
--SELECT *
--FROM APP2.EMPRESA.EMPLEADOS e INNER JOIN (SELECT curp, COUNT(num_proy) AS  numero_proyectos, SUM(num_horas) AS num_horas
	--FROM APP2.EMPRESA.COLABORAR 
	--WHERE num_horas > 20
	--GROUP BY curp
	--HAVING COUNT(num_proy) >= 2) g ON e.curp = g.curp;

--j. Encontrar la cantidad de empleados en cada compañía
--SELECT rfc, COUNT(curp)
--FROM APP2.EMPRESA.TRABAJAR t
--GROUP BY rfc;

--k. Encontrar el nombre del empleado que gana más dinero en cada compañía.
--SELECT n.nombre, n.rfc
--FROM (SELECT rfc, MAX(salario) AS salario
--	FROM APP2.EMPRESA.TRABAJAR t
--	GROUP BY rfc) m INNER JOIN (SELECT rfc, nombre, salario
--	FROM APP2.EMPRESA.EMPLEADOS e INNER JOIN APP2.EMPRESA.TRABAJAR t ON e.curp = t.curp) n 
--	ON m.rfc = n.rfc AND m.salario = n.salario;

--l. Obtener una lista de los empleados que ganan más del salario promedio que pagan las
--compañías.--Crear una vista, ya que se usa el ejercicio f
--SELECT curp
--FROM APP2.EMPRESA.TRABAJAR
--WHERE salario > (SELECT AVG(p.salario_promedio) AS salario_promedio
--FROM (SELECT e.rfc, AVG(t.salario) AS  salario_promedio
--	FROM APP2.EMPRESA.EMPRESAS e INNER JOIN APP2.EMPRESA.TRABAJAR t ON e.rfc = t.rfc
--	GROUP BY e.rfc) p)

--m. Encontrar la compañía que tiene menos empleados y listar toda la información de los mismos.

