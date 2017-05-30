IF EXISTS (select * from sysdatabases where name = 'APP')

DROP DATABASE APP;
GO
CREATE DATABASE APP;
GO
USE APP;
GO
CREATE SCHEMA AGENCIA;
GO

CREATE TABLE APP.AGENCIA.PERSONAS(
	curp 				varchar(18) primary key,	
	calle_principal 	varchar(150),
	colonia 			varchar(150), 
	delegacion_municipio varchar(150),
	estado 				varchar(150),
	ciudad				varchar(150),
	calle_1				varchar(150),
	calle_2				varchar(150),
	referencia			varchar(150),
	num_exterior		integer,
	num_interior		integer,
	codigo_postal		integer,
	nombre 				varchar(25),
	materno 			varchar(25), 
	paterno 			varchar(25),
	fecha_nacimiento	date
);

CREATE TABLE APP.AGENCIA.CELULARES(
	celular 			bigint primary key, 
	curp 				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON DELETE CASCADE not null
);

CREATE TABLE APP.AGENCIA.CORREOS(
	correo 				varchar(100) primary key,
	curp 				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON UPDATE CASCADE ON DELETE CASCADE not null
);

CREATE TABLE APP.AGENCIA.AGENTES(
	num_placa			varchar(9) primary key,
	curp 				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON UPDATE CASCADE,
	sector 				varchar(30)
);

CREATE TABLE APP.AGENCIA.LICENCIAS(
	num_licencia 		bigint primary key,
	fecha_expedicion 	date,
	vigencia 			date
);

CREATE TABLE APP.AGENCIA.TENER(	
	curp 				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON UPDATE CASCADE ON DELETE CASCADE not null,
	num_licencia 		bigint foreign key references AGENCIA.LICENCIAS(num_licencia) ON UPDATE CASCADE ON DELETE CASCADE not null 
);

CREATE TABLE  APP.AGENCIA.ASEGURADORAS(
	id_aseguradora		integer primary key IDENTITY(1,1),	
	compania			varchar(15) not null,
	estado 				varchar(150),
	delegacion_municipio varchar(150),
	colonia 			varchar(150),
	calle_principal 	varchar(150),	
	ciudad				varchar(150),
	calle_1				varchar(150),
	calle_2				varchar(150),
	codigo_postal		integer,	
	num_exterior		integer,
	num_interior		integer	
);

CREATE TABLE APP.AGENCIA.CONTADORES(
	curp_contador		varchar(18) primary key, 
	jefe_contador_curp	varchar(18) foreign key references AGENCIA.CONTADORES(curp_contador) not null,
	ganancia			decimal(10,5) not null
);

CREATE TABLE APP.AGENCIA.VIAJES(
	id_viaje			bigint primary key IDENTITY(1,1),
	lugar_comienzo		varchar(150) not null,
	lugar_destino		varchar(255) not null,
	num_personas		tinyint not null,
	hora_inicio			time not null,
	hora_final			time not null,
	fecha 				date not null
);

CREATE TABLE APP.AGENCIA.ALUMNOS(
	id_unam 			bigint primary key, 
	curp 				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON UPDATE CASCADE,	
	hora_entrada 		time(7),
	hora_salida 		time(7),
	facultad			varchar(25)
)

CREATE TABLE APP.AGENCIA.ACADEMICOS(
	id_unam 			bigint primary key, 
	curp 				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON UPDATE CASCADE,	
	hora_entrada 		time(7),
	hora_salida 		time(7),
	instituto			varchar(25)
);

CREATE TABLE APP.AGENCIA.TRABAJADORES(
	id_unam 			bigint primary key, 
	curp 				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON UPDATE CASCADE,	
	hora_entrada 		time(7),
	hora_salida 		time(7),
	unidad				varchar(25)
);

CREATE TABLE APP.AGENCIA.ASOCIACIONES(
	nombre				varchar(150) primary key	
);

CREATE TABLE  APP.AGENCIA.INGRESAR(
	curp				varchar(18) foreign key references AGENCIA.PERSONAS(curp) ON UPDATE CASCADE not null,
	nombre				varchar(150) foreign key references AGENCIA.ASOCIACIONES(nombre) ON UPDATE CASCADE not null,
	fecha 				date
);

CREATE TABLE APP.AGENCIA.AUTOMOVILES(
	num_motor			varchar(17) primary key,
	anio 				date not null,
	marca				varchar(15) not null,
	modelo				varchar(20) not null,
	num_cilindros       tinyint not null,
	llanta_refaccion    varchar(1) not null,
	tipo 				varchar(250) not null,
	esta_activo 		varchar(1) not null,
	fecha_activo		date
);

CREATE TABLE APP.AGENCIA.DUENIOS(
	curp              	varchar(18) primary key,	
	rfc 				varchar(13)
);

CREATE TABLE APP.AGENCIA.CHOFERES(
	curp 				varchar(18) primary key,
	esta_activo			varchar(1) not null,
	fecha_activo 		date,
	tarjeta_circulacion	bigint
);

CREATE TABLE APP.AGENCIA.TAXIS(
	num_motor			varchar(17) foreign key references AGENCIA.AUTOMOVILES(num_motor) ON UPDATE CASCADE ON DELETE CASCADE not null,
	id_aseguradora		integer 	foreign key references AGENCIA.ASEGURADORAS(id_aseguradora),
	curp_contador		varchar(18) foreign key references AGENCIA.CONTADORES(curp_contador) ON UPDATE CASCADE not null,
	curp_chofer			varchar(18) foreign key references AGENCIA.CHOFERES(curp) ON UPDATE CASCADE,
	curp_duenio			varchar(18) foreign key references AGENCIA.DUENIOS(curp) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE APP.AGENCIA.PERTENECER(
	nombre				varchar(150) foreign key references AGENCIA.ASOCIACIONES(nombre) ON UPDATE CASCADE not null,
	num_motor			varchar(17) foreign key references AGENCIA.AUTOMOVILES(num_motor) ON UPDATE CASCADE not null,
	razon				varchar(255),
	fecha				date
);

CREATE TABLE APP.AGENCIA.MULTAS(
	id_multa			integer primary key IDENTITY(1,1), 
	num_placa			varchar(9) foreign key references AGENCIA.AGENTES(num_placa) ON UPDATE CASCADE not null,
	num_motor			varchar(17) foreign key references AGENCIA.AUTOMOVILES(num_motor) ON UPDATE CASCADE not null,	
	monto 				decimal(20) not null,
	infraccion 			text not null,
	hora 				time(7),
	estado				varchar(255),
	delegacion_municipio	varchar(255),
	colonia				varchar(255),
	ciudad				varchar(255),
	calle				varchar(255),
	fecha				date
);

CREATE TABLE APP.AGENCIA.COMENZAR(
	id_viaje			bigint foreign key references AGENCIA.VIAJES(id_viaje) ON UPDATE CASCADE not null,
	num_motor			varchar(17) foreign key references AGENCIA.AUTOMOVILES(num_motor) ON UPDATE CASCADE not null
);

CREATE TABLE APP.AGENCIA.RIESGOS(
	num_motor			varchar(17) foreign key references AGENCIA.AUTOMOVILES(num_motor) ON UPDATE CASCADE ON DELETE CASCADE not null,
	riesgo				varchar(255) NOT NULL
);

CREATE TABLE APP.AGENCIA.PEDIR(
	id_unam_alumno 		bigint foreign key references AGENCIA.ALUMNOS(id_unam),
	id_unam_academico 	bigint foreign key references AGENCIA.ACADEMICOS(id_unam),
	id_unam_trabajador 	bigint foreign key references AGENCIA.TRABAJADORES(id_unam),
	id_viaje 			bigint foreign key references AGENCIA.VIAJES(id_viaje) ON UPDATE CASCADE ON DELETE NO ACTION not null
);

ALTER TABLE AGENCIA.PERSONAS add CONSTRAINT ck_curpper CHECK (curp LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]');
ALTER TABLE AGENCIA.DUENIOS add CONSTRAINT ck_curpdue CHECK (curp LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]');
ALTER TABLE AGENCIA.CHOFERES add CONSTRAINT ck_curpchofi CHECK (curp LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]');
ALTER TABLE AGENCIA.DUENIOS add CONSTRAINT ck_rfc CHECK (rfc LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z]');
ALTER TABLE AGENCIA.CONTADORES add CONSTRAINT ck_curpcont CHECK (curp_contador LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]');
ALTER TABLE AGENCIA.AUTOMOVILES add CONSTRAINT ck_num_cilindros CHECK(num_cilindros = 8 OR num_cilindros = 4 OR num_cilindros = 6);
ALTER TABLE AGENCIA.VIAJES add CONSTRAINT ck_num_personas CHECK(num_personas >=1  AND num_personas <=8);

GO

