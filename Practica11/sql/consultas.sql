
--1. Conocer el nombre de todos los chóferes que tengan mas de 25 años.
	SELECT p.nombre
	FROM APP.AGENCIA.PERSONAS p INNER JOIN APP.AGENCIA.CHOFERES c ON p.curp = c.curp
	WHERE FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), p.fecha_nacimiento, 112) AS INT))/10000) > 25;	
--2. Conocer el nombre y edad de todos los alumnos que hayan realizado mas
--de un viaje con la asociación.	
	SELECT per.nombre, FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), per.fecha_nacimiento, 112) AS INT))/10000) AS edad
	FROM APP.AGENCIA.ALUMNOS al 
	INNER JOIN
	(SELECT a.id_unam
	FROM APP.AGENCIA.ALUMNOS a INNER JOIN APP.AGENCIA.PERSONAS p ON a.curp = p.curp
	INNER JOIN APP.AGENCIA.PEDIR pe ON a.id_unam = pe.id_unam_alumno
	INNER JOIN APP.AGENCIA.VIAJES v ON v.id_viaje = pe.id_viaje
	GROUP BY a.id_unam
	HAVING COUNT(pe.id_viaje) > 1) mu ON mu.id_unam = al.id_unam
	INNER JOIN 
	APP.AGENCIA.PERSONAS per
	ON per.curp = al.curp;
--3. Conocer los vehículos con mas de diez años de antigüedad.
	SELECT *
	FROM APP.AGENCIA.AUTOMOVILES
	WHERE FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), anio, 112) AS INT))/10000) > 10;
--4. Conocer los dueños de los vehículos con mas de diez años de antigüedad.
	SELECT d.*
	FROM APP.AGENCIA.DUENIOS d INNER JOIN APP.AGENCIA.TAXIS t ON d.curp = t.curp_duenio
	INNER JOIN
	(SELECT *
	FROM APP.AGENCIA.AUTOMOVILES
	WHERE FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), anio, 112) AS INT))/10000) > 10) aut ON aut.num_motor = t.num_motor;

--5. Todos los viajes que hayan costado mas de $100, así como el chófer que lo
--realizó, el dueño del automóvil y el usuario que lo hizo.

--El costo del viaje es un atributo calculado que depende de varias cosas, como la distancia la cuenta se calcula
--con lugar comieno y lugar destino. Y esta distancia no es posible calcularla por el momento.

--6. El promedio de edad de los chóferes que hayan ingresado a la asociación
--entre el 2000 y 2016.
SELECT AVG(FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), per.fecha_nacimiento, 112) AS INT))/10000)) AS promedio_edad
FROM APP.AGENCIA.PERSONAS per INNER JOIN APP.AGENCIA.CHOFERES ch ON ch.curp = per.curp
	INNER JOIN APP.AGENCIA.INGRESAR i ON i.curp = ch.curp
WHERE i.fecha BETWEEN '01-01-2000' AND '31-12-2016';

--7. Saber las personas que son dueños y chóferes al mismo tiempo.
SELECT per.curp, per.nombre, per.materno, per.paterno, per.fecha_nacimiento, per.calle_principal, per.colonia, per.delegacion_municipio, per.ciudad, per.codigo_postal
FROM APP.AGENCIA.PERSONAS per INNER JOIN APP.AGENCIA.CHOFERES ch ON per.curp = ch.curp
	INNER JOIN APP.AGENCIA.DUENIOS due ON due.curp = ch.curp;
		
--8. Conocer el total que gasta al mes cada uno de los académicos en viajes.

--El costo del viaje es un atributo calculado que depende de varias cosas, como la distancia la cuenta se calcula
--con lugar comieno y lugar destino. Y esta distancia no es posible calcularla por el momento.

--9. Conocer las multas que se le hayan aplicado a los automóviles que no
--tengan seguro.
--Una precondición es que es necesario que todo automovil tenga seguro, pero
--suponiendo que tuvieran la consulta sería la siguiente.
SELECT mul.*
FROM APP.AGENCIA.MULTAS mul INNER JOIN
	(SELECT  num_motor
FROM APP.AGENCIA.TAXIS 
WHERE id_aseguradora is NULL) tax ON mul.num_motor = tax.num_motor;

--10. Conocer los choferes que se les haya levantado una multa en la delegación
--Benito Juárez, Coyoacán y Tlalpan.
SELECT ch.*
FROM APP.AGENCIA.TAXIS tax
	INNER JOIN
	(SELECT *
	FROM APP.AGENCIA.MULTAS
	WHERE delegacion_municipio IN ('Benito Juárez', 'Coyoacán', 'Tlahuac')) mul
	ON  tax.num_motor = mul.num_motor
	INNER JOIN 
	APP.AGENCIA.CHOFERES ch 
	ON tax.curp_chofer = ch.curp;

--11. El nombre de los choferes que su seguro no cubre daños a terceros.
SELECT per.nombre
FROM APP.AGENCIA.CHOFERES cho INNER JOIN
	APP.AGENCIA.TAXIS tax ON tax.curp_chofer = cho.curp
	INNER JOIN 
	(SELECT *
	FROM APP.AGENCIA.RIESGOS
	WHERE riesgo NOT LIKE '%Daños a terceros%') ter
	ON ter.num_motor = tax.num_motor
	INNER JOIN
	APP.AGENCIA.PERSONAS per 
	ON per.curp = cho.curp;

--12. El nombre de los usuarios que han realizado viajes con mas de 100 km de
--distancia después de las 6 p.m.
--La distancia es un atributo calculado con la ayuda del lugar destino y lugar comienzo,
--entonces solo se consultara los viajes después de las 6 pm.
SELECT DISTiNCT per.nombre
FROM (SELECT id_unam, curp
FROM APP.AGENCIA.ALUMNOS
UNION 
SELECT id_unam, curp
FROM APP.AGENCIA.ACADEMICOS
UNION
SELECT id_unam, curp
FROM APP.AGENCIA.TRABAJADORES) cli
INNER JOIN
APP.AGENCIA.PEDIR ped
ON ped.id_unam_alumno = cli.id_unam
 	OR ped.id_unam_academico = cli.id_unam
	OR ped.id_unam_trabajador = cli.id_unam
INNER JOIN
(SELECT *
FROM APP.AGENCIA.VIAJES
WHERE hora_inicio > '18:00') se
ON se.id_viaje = ped.id_viaje
INNER JOIN 
APP.AGENCIA.PERSONAS per
ON per.curp = cli.curp;

--13. Conocer el total de multas cometidas por delegación.
SELECT delegacion_municipio, COUNT(id_multa) AS num_multas
FROM APP.AGENCIA.MULTAS
GROUP BY delegacion_municipio;

--14. Saber cual es la delegación en la que se comenten el mayor número de
--multas.
SELECT delegacion_municipio, MAX(id_multa) AS max_multas
FROM APP.AGENCIA.MULTAS
GROUP BY delegacion_municipio;

--15. Nombre de los dueños que tienen mas de un chofer.
--Nota: Para cada chofer hay un taxi.
SELECT * 
FROM (SELECT d.curp, COUNT(tax.num_motor) AS num_choferes
FROM APP.AGENCIA.TAXIS tax INNER JOIN
	APP.AGENCIA.DUENIOS d ON d.curp = tax.curp_duenio
	GROUP BY d.curp) num
WHERE num.num_choferes > 1;

--16. Conocer el número de clientes por edad.
--Nota: No se muestra la edad porque es un campo opcional para los clientes, 
--ya que la privacidad es un punto imporante segun los requerimientos. Pero la consulta es:
SELECT (FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), per.fecha_nacimiento, 112) AS INT))/10000)) AS edad, COUNT((FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), per.fecha_nacimiento, 112) AS INT))/10000))) AS num_clientes
	FROM (SELECT id_unam, curp
	FROM APP.AGENCIA.ALUMNOS
	UNION 
	SELECT id_unam, curp
	FROM APP.AGENCIA.ACADEMICOS
	UNION
	SELECT id_unam, curp
	FROM APP.AGENCIA.TRABAJADORES) clientes
	INNER JOIN
	APP.AGENCIA.PERSONAS per
	ON per.curp = clientes.curp
GROUP BY (FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), per.fecha_nacimiento, 112) AS INT))/10000));

--17. Conocer el total de horas y ganancias han tenido los choferes.
SELECT ganancias.curp_chofer, ganancias.ganancia, horas.num_horas
FROM (SELECT tax.curp_chofer, ganancia
FROM APP.AGENCIA.CONTADORES con INNER JOIN APP.AGENCIA.TAXIS tax ON tax.curp_contador = con.curp_contador
	INNER JOIN APP.AGENCIA.CHOFERES ch ON ch.curp = tax.curp_chofer) ganancias
	INNER JOIN
	(SELECT curp_chofer, SUM(DATEDIFF(n, vi.hora_final, vi.hora_inicio)) AS num_horas
	FROM APP.AGENCIA.VIAJES vi INNER JOIN APP.AGENCIA.COMENZAR com ON vi.id_viaje = com.id_viaje
	INNER JOIN APP.AGENCIA.TAXIS tax  ON tax.num_motor = com.num_motor
	INNER JOIN APP.AGENCIA.CHOFERES ch ON ch.curp = tax.curp_chofer
	GROUP BY curp_chofer) horas
	ON ganancias.curp_chofer = horas.curp_chofer;

--18. Saber el promedio que gastan en viajes en un día alumnos y académicos.

--El atributo es calculado, es decir, se necesita conocer varios detalles como las longitudes de los destinos
--las cuales no se pueden hacer con consultas.

--19. Conocer el chofer con mas multas por delegación.SELECT curp_chofer, mul.delegacion_municipio, MAX(mul.num_multas) AS max_num_multas	FROM (SELECT curp_chofer, mul.delegacion_municipio, COUNT(mul.id_multa) AS num_multas		FROM APP.AGENCIA.MULTAS mul INNER JOIN APP.AGENCIA.TAXIS tax ON mul.num_motor = tax.num_motor		INNER JOIN APP.AGENCIA.CHOFERES ch ON ch.curp = tax.curp_chofer		GROUP BY curp_chofer, mul.delegacion_municipio) mul	GROUP BY curp_chofer, mul.delegacion_municipio;--20-. Cual es el nombre mas común entre los usuarios de la aplicación.SELECT clientes.nombre, MAX(clientes.ocurrencias) AS nombre_mas_comun
FROM (SELECT personas.nombre, COUNT(personas.nombre) AS ocurrenciasFROM APP.AGENCIA.PERSONAS personas 	INNER JOIN	(SELECT clientes.curp
	FROM (SELECT id_unam, curp
	FROM APP.AGENCIA.ALUMNOS
	UNION 
	SELECT id_unam, curp
	FROM APP.AGENCIA.ACADEMICOS
	UNION
	SELECT id_unam, curp
	FROM APP.AGENCIA.TRABAJADORES) clientes)  clientes
	ON clientes.curp = personas.curp
GROUP BY personas.nombre) clientes
GROUP BY clientes.nombre;