use APP

 
IF NOT EXISTS (SELECT * FROM sys.sysobjects WHERE name='CAMBIO_TRABAJO' AND xtype='U')   
BEGIN  
    CREATE TABLE FARMACIA.CAMBIO_TRABAJO (
      id    INT         primary key IDENTITY,
      id_empleado VARCHAR(18) NOT NULL,
      id_sucursal_anterior int NOT NULL,
      date  DATETIME   DEFAULT GetDate(),
	);
END;

IF NOT EXISTS (SELECT * FROM sys.sysobjects WHERE name='CAMBIO_RESPONSABLE' AND xtype='U')   
BEGIN  
    CREATE TABLE FARMACIA.CAMBIO_RESPONSABLE (
      id    INT         primary key IDENTITY,
      id_sucursal int NOT NULL,
      id_medico_anterior varchar(18) NOT NULL,
	  turno char(10) not null,
      date  DATETIME   DEFAULT GetDate(),
	);
END;

-- Borramos el Trigger si existise
IF OBJECT_ID ('cambioTrabajoDisparador', 'TR') IS NOT NULL
BEGIN
   DROP TRIGGER cambioTrabajoDisparador;
END;
 
GO 
-- Cremamos un Trigger sobre la tabla trabajar
-- El triger cada que un empleado cambie de sucursal se guardara un hisotirco de en que fecha cambio y cual era su sucursal anterior 
-- para asi poder saber un historia de donde ha trabajado ese empliado antes
CREATE TRIGGER cambioTrabajoDisparador
ON Farmacia.TRABAJAR
 AFTER UPDATE AS 
 -- ¿Ha cambiado el estado?
 IF UPDATE(identificador)
 BEGIN
    -- A modo de auditoría, añadimos un registro en la tabla cambio trabajo
	INSERT INTO CAMBIO_TRABAJO (id_empleado , id_sucursal_anterior)
	(SELECT curp, identificador FROM deleted WHERE identificador=deleted.identificador);
 END;

-- Borramos el Trigger si existise
IF OBJECT_ID ('cambioResponsablesDisparador', 'TR') IS NOT NULL
BEGIN
   DROP TRIGGER cambioResponsablesDisparador;
END;
 
GO 
-- Cremamos un Trigger sobre la tabla responsables
-- cada que se cambie al responsable de la sucursal se guarda la fecha en que se hizo el cambio la id de la sucursal y el responsable anterior
-- para llevar un historico y asi si hay un problema saber quien estaba de responsable en ese periodo y no haya malentendidos
CREATE TRIGGER cambioResponsableDisparador
ON Farmacia.RESPONSABLES
 AFTER UPDATE AS 
 -- ¿Ha cambiado el estado?
 IF UPDATE(curp)
 BEGIN
    -- A modo de auditoría, añadimos un registro en la tabla cambio responsable
	INSERT INTO CAMBIO_RESPONSABLE ( id_sucursal , id_medico_anterior , turno)
	(SELECT identificador, curp , turno  FROM deleted WHERE identificador=deleted.identificador);
 END;

 
