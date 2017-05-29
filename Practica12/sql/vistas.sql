
--1. Conocer el nombre de todos los chóferes que tengan mas de 25 años.

CREATE VIEW CHOFERES_MAYORES_25(nombre) AS 
(SELECT p.nombre
	FROM APP.AGENCIA.PERSONAS p INNER JOIN APP.AGENCIA.CHOFERES c ON p.curp = c.curp
	WHERE FLOOR(
	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -
	CAST(CONVERT(CHAR(8), p.fecha_nacimiento, 112) AS INT))/10000) > 25);

SELECT * FROM CHOFERES_MAYORES_25;