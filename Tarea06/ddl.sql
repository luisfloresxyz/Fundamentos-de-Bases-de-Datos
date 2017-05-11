
CREATE DATABASE APP2;
GO
USE APP2;
GO
CREATE SCHEMA EMPRESA;
GO

CREATE TABLE APP2.EMPRESA.EMPLEADOS(
	curp 				varchar(18) primary key,	
	nombre			 	varchar(150) NOT NULL,
	paterno 			varchar(150) NOT NULL, 
	materno	      		varchar(150) NOT NULL,
	fecha_nac 			date NOT NULL,
	calle				varchar(255) NOT NULL,
	num					integer NOT NULL,
	ciudad				varchar(255) NOT NULL,
	codigo_postal		integer NOT NULL,	
);

CREATE TABLE APP2.EMPRESA.EMPRESAS(
	rfc					varchar(12) primary key,
	razon_social		varchar(255) NOT NULL,
	calle				varchar(255) NOT NULL,
	num					integer NOT NULL,
	ciudad				varchar(255) NOT NULL,
	codigo_postal		integer NOT NULL
);

CREATE TABLE APP2.EMPRESA.PROYECTOS(
	num_proy			integer primary key IDENTITY(1,1),
	rfc					varchar(12) foreign key references EMPRESA.EMPRESAS(rfc) ON DELETE CASCADE NOT NULL,
	nombre				varchar(255),
	fecha_inicio		date NOT NULL,
	fecha_fin			date
);

CREATE TABLE APP2.EMPRESA.SUPERVISAR(	
	curp_supervisor 	varchar(18) foreign key references EMPRESA.EMPLEADOS(curp) ON DELETE NO ACTION NOT NULL,
	curp_empleado	 	varchar(18) foreign key references EMPRESA.EMPLEADOS(curp) ON DELETE CASCADE NOT NULL
);

CREATE TABLE APP2.EMPRESA.TRABAJAR(
	curp				varchar(18) foreign key references EMPRESA.EMPLEADOS(curp) ON DELETE CASCADE NOT NULL,
	rfc					varchar(12) foreign key references EMPRESA.EMPRESAS(rfc) ON DELETE CASCADE NOT NULL,
	fecha_ingreso		date NOT NULL,
	salario				MONEY NOT NULL
);

CREATE TABLE APP2.EMPRESA.DIRIGIR(
	curp				varchar(18) foreign key references EMPRESA.EMPLEADOS(curp) ON DELETE CASCADE NOT NULL,
	rfc					varchar(12) foreign key references EMPRESA.EMPRESAS(rfc) ON DELETE CASCADE NOT NULL,
	fecha_inicio		date NOT NULL
);

CREATE TABLE APP2.EMPRESA.COLABORAR(
	curp				varchar(18) foreign key references EMPRESA.EMPLEADOS(curp) ON DELETE CASCADE NOT NULL,
	num_proy			integer foreign key references EMPRESA.PROYECTOS(num_proy) ON DELETE CASCADE NOT NULL,
	fecha_inicio		date NOT NULL,
	fecha_fin			date,
	num_horas			integer
);

ALTER TABLE APP2.EMPRESA.EMPLEADOS ADD CONSTRAINT ck_curp CHECK (curp LIKE '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9]');
ALTER TABLE APP2.EMPRESA.EMPRESAS ADD CONSTRAINT ck_rfc CHECK (rfc LIKE '[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z]');
ALTER TABLE APP2.EMPRESA.EMPLEADOS ADD CONSTRAINT ck_cp_empleado CHECK(codigo_postal LIKE '[0-9][0-9][0-9][0-9][0-9]');
ALTER TABLE APP2.EMPRESA.EMPRESAS ADD CONSTRAINT ck_cp_empresa CHECK(codigo_postal LIKE '[0-9][0-9][0-9][0-9][0-9]');

GO

