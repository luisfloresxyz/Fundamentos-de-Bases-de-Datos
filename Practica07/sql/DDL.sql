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
	tarjeta_circulacion tinyint, 
	rfc 				varchar(13),
	es_chofer 			tinyint not null,
	es_dueno 			tinyint not null
);

CREATE TABLE Pruebas.Agencia.Persona_Celular(
	celular 			tinyint primary key, 
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

CREATE TABLE Pruebas.Agencia.Licencia(
	num_licencia 		tinyint primary key,
	fecha_expedicion 	date,
	vigencia 			date
);

CREATE TABLE Pruebas.Agencia.Tener_Licencia(	
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	num_licencia 		tinyint foreign key references Agencia.Licencia(num_licencia),
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
	tarjeta_circulacion tinyint, 
	rfc 				varchar(13),
	es_chofer 			varchar(1) not null,
	es_dueno 			varchar(1) not null
);

CREATE TABLE  Pruebas.Agencia.Aseguradora(
	id					tinyint primary key,
	direccion			varchar(255),
	compania			varchar(25)
);

CREATE TABLE Pruebas.Agencia.Contador(
	curp				varchar(18) primary key, 
	contador_curp		varchar(18) foreign key references Agencia.Contador(curp),
	ganancia			decimal(10,5) not null
);

CREATE TABLE Pruebas.Agencia.Taxi(
	num_motor			varchar(17) primary key,
	persona_curp		varchar(18) foreign key references Agencia.Persona(curp),
	persona_curp2		varchar(18) foreign key references Agencia.Persona(curp),
	aseguradora_id		tinyint foreign key references Agencia.Aseguradora(id),
	contador_curp		varchar(18) foreign key references Agencia.Contador(curp),
	ano					tinyint,
	marca				varchar(15),
	modelo				varchar(20),
	num_cilindros		tinyint,
	llanta_refaccion	varchar(1),
	tipo				tinyint not null
);

CREATE TABLE Pruebas.Agencia.Multa(
	id 					tinyint primary key, 
	agente_num_placa 	varchar(9) foreign key references Agencia.Agente(num_placa),
	taxi_num_motor		varchar(17) foreign key references Agencia.Taxi(num_motor),
	monto 				decimal(20) not null,
	infraccion 			varchar(255) not null,
	hora 				time(7) not null,
	lugar 				varchar(255) not null
);

CREATE TABLE Pruebas.Agencia.Riesgo(
	taxi_num_motor		varchar(17) foreign key references Agencia.Taxi(num_motor),
	riesgo				varchar(255)
);

CREATE TABLE Pruebas.Agencia.Viaje(
	viaje_id			tinyint primary key,
	destino				varchar(255) not null,
	num_personas		tinyint not null,
	tiempo 				time not null,
	distancia			tinyint not null
);

CREATE TABLE Pruebas.Agencia.Comenzar(
	taxi_num_motor		varchar(17) foreign key references Agencia.Taxi(num_motor) not null,
	viajeid				tinyint foreign key references Agencia.Viaje(viaje_id) not null
);


CREATE TABLE Pruebas.Agencia.Alumno(
	id_unam 			tinyint primary key, 
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	viaje_id			tinyint foreign key references Agencia.Viaje(viaje_id),
	hora_entrada 		time(7),
	hora_salida 		time(7),
	facultad			varchar(25)
)

CREATE TABLE Pruebas.Agencia.Academico(
	id_unam 			tinyint primary key,
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	viaje_id			tinyint foreign key references Agencia.Viaje(viaje_id),
	hora_entrada 		time(7),
	hora_salida 		time(7),
	instituto			varchar(25)
);

CREATE TABLE Pruebas.Agencia.Trabajador_Universidad(
	id_unam 			tinyint primary key, 
	persona_curp 		varchar(18) foreign key references Agencia.Persona(curp),
	viaje_id			tinyint foreign key references Agencia.Viaje(viaje_id),
	hora_entrada 		time(7),
	hora_salida 		time(7),
	unidad				varchar(25)
);

CREATE TABLE Pruebas.Agencia.Asociacion(
	nombre			varchar(25) primary key	
);

CREATE TABLE Pruebas.Agencia.Pertenecer(
	asociacionnombre		varchar(25) foreign key references Agencia.Asociacion(nombre),
	taxinummotor		varchar(17) foreign key references Agencia.Taxi(num_motor)
);

ALTER TABLE Agencia.Persona add CONSTRAINT ck_curpper CHECK (curp LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]');
ALTER TABLE Agencia.Persona add CONSTRAINT ck_rfc CHECK (rfc LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][0-9][A-Z][0-9][A-Z][0-9]');
ALTER TABLE Agencia.Persona add CONSTRAINT ck_es_dueno CHECK(es_dueno = 0 OR es_dueno = 1);
ALTER TABLE Agencia.Persona add CONSTRAINT ck_es_chofer CHECK(es_chofer = 0 OR es_chofer = 1);
ALTER TABLE Agencia.Tener_Licencia add CONSTRAINT ck_rfcl CHECK (rfc LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][0-9][A-Z][0-9][A-Z][0-9]');
ALTER TABLE Agencia.Contador add CONSTRAINT ck_curp CHECK (curp LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]');
ALTER TABLE Agencia.Taxi add CONSTRAINT ck_num_cilindros CHECK(num_cilindros = 8 OR num_cilindros = 12);
ALTER TABLE Agencia.Taxi add CONSTRAINT ck_llanta_refaccion CHECK(llanta_refaccion = 0 OR llanta_refaccion = 1);
ALTER TABLE Agencia.Viaje add CONSTRAINT ck_num_personas CHECK(num_personas >1  AND num_personas < 6);
--SELECT * FROM sys.key_constraints WHERE type = 'PK';
GO

