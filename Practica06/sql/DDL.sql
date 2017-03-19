IF EXISTS (select * from sysdatabases where name = 'Pruebas')
DROP DATABASE Pruebas
GO
CREATE DATABASE Pruebas;
GO
USE Pruebas
GO
CREATE SCHEMA Agencia;
GO

CREATE TABLE Pruebas.Agencia.Persona(
	curp 				varchar(18) primary key,
	fecha_ingreso 		date,
	calle 				varchar(255),
	colonia 			varchar(255), 
	delegacion 			varchar(255),
	estado 				varchar(255),
	nombre 				varchar(25),
	materno 			varchar(25), 
	paterno 			varchar(25),
	esta_activo 		varchar(1),
	tarjeta_circulacion tinyint, --5
	rfc 				varchar(13),
	es_chofer 			varchar(1) not null,
	es_dueno 			varchar(1) not null
);

CREATE TABLE Pruebas.Agencia.Persona_Celular(
	celular 			tinyint primary key, --10
	curp 				varchar(18) foreign key references Agencia.Persona(curp)
);

CREATE TABLE Pruebas.Agencia.Persona_Correo(
	correo 				varchar(30) primary key,
	curp 				varchar(18) foreign key references Agencia.Persona(curp)
);

CREATE TABLE Pruebas.Agencia.Agente(
	num_placa			varchar(9) primary key,
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	sector 				varchar(30)
);

CREATE TABLE Pruebas.Agencia.Multa(
	id 					tinyint primary key, --10
	agente_num_placa 	varchar(9) foreign key references Agencia.Agente(num_placa),
	--Falta poner la llave foranea de taxi...
	monto 				decimal(20) not null,
	infraccion 			varchar(255) not null,
	hora 				time(7) not null,
	lugar 				varchar(255) not null
);

CREATE TABLE Pruebas.Agencia.Licencia(
	num_licencia 		tinyint primary key,--10
	fecha_expedicion 	date,
	vigencia 			date
);

CREATE TABLE Pruebas.Agencia.Tener_Licencia(	
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	num_licencia 		tinyint foreign key references Agencia.Licencia(num_licencia),--10 --¿eror?
	fecha_expedicion 	date,
	vigencia 			date,
	fecha_ingreso 		date,
	calle 				varchar(255),
	colonia 			varchar(255), 
	delegacion 			varchar(255),
	estado 				varchar(255),
	nombre 				varchar(25),
	materno 			varchar(25), 
	paterno 			varchar(25),
	esta_activo 		varchar(1),
	tarjeta_circulacion tinyint, ---5
	rfc 				varchar(13),
	es_chofer 			varchar(1) not null,
	es_dueno 			varchar(1) not null
);

CREATE TABLE Pruebas.Agencia.Alumno(
	id_unam 			tinyint primary key, --10
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	--Falta llave foranea de viaje
	hora_entrada 		time(7),
	hora_salida 		time(7),
	facultad			varchar(25)
)

CREATE TABLE Pruebas.Agencia.Academico(
	id_unam 			tinyint primary key, --10
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	--falta llave foranea de viaje.
	hora_entrada 		time(7),
	hora_salida 		time(7),
	instituto			varchar(25)
);

CREATE TABLE Pruebas.Agencia.Trabajador_Universidad(
	id_unam 			tinyint primary key, --10
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	--falta llave foranea de viaje.
	hora_entrada 		time(7),
	hora_salida 		time(7),
	unidad				varchar(25)
);

GO