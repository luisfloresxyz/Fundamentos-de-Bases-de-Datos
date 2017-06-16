--Consultas que se usaran para generar los reportes.

--3- Total de choferes que se han dado de alta en la aplicación mensualmente el último año.
SELECT DATENAME(M, i.fecha) AS mes_ingreso, COUNT(DATEPART(M, i.fecha)) AS num_choferes
FROM APP.AGENCIA.CHOFERES ch INNER JOIN APP.AGENCIA.INGRESAR i ON ch.curp = i.curp
WHERE DATEPART(YYYY, i.fecha) = DATEPART(YYYY, GETDATE())
GROUP BY DATENAME(MONTH, i.fecha);

--2- Cantidad de dueños y choferes que están dados de alta en la aplicación.
SELECT *
FROM (SELECT COUNT(curp) AS num_duenios
FROM APP.AGENCIA.DUENIOS) AS d, (SELECT COUNT(curp) AS num_choferes
FROM APP.AGENCIA.CHOFERES) AS ch;