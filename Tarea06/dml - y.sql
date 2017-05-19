
--Las consultas anteriores se encuentran en el archivo dml.sql

--y. Crea una vista con la información de los empleados y compañías en que trabajan, de aquellos
--empleados que lo hagan en al menos tres compañías diferentes.

CREATE VIEW companias_diferentas(curp_empleado, nombre_empleado, paterno_empleado, materno_empleado, fecha_nac_empleado, calle_empleado,
		num_empleado, ciudad_empleado, codigo_postal_empleado, rfc_empresa, razon_social_empresa, calle_empresa, num_empresa, ciudad_empresa,
		codigo_postal_empresa) AS 
(SELECT em2.*, emp.*
FROM (SELECT e.curp
	FROM APP2.EMPRESA.EMPLEADOS e
	INNER JOIN
		(SELECT curp, COUNT(rfc) AS num_companias
		FROM APP2.EMPRESA.TRABAJAR	
		GROUP BY curp
		HAVING COUNT(rfc) >= 3) n ON e.curp = n.curp) em1
		INNER JOIN APP2.EMPRESA.EMPLEADOS em2 ON em1.curp = em2.curp
		INNER JOIN APP2.EMPRESA.TRABAJAR tr ON tr.curp = em2.curp
		INNER JOIN APP2.EMPRESA.EMPRESAS emp ON emp.rfc = tr.rfc);