--IMPORTANTE: Ejecutar más de una vez este script para que no ocurran errores, esto
--se necesita hacer debido a las sentencías de eliminación que hay y por IDENTITY.
USE APP
DELETE FARMACIA.CLIENTES
--Ya que se esta poblando constantemente la base de datos, el identificador IDENTITY
--cambia constantemente, entonces para evitar conflictos se reinicia con esto.
DBCC CHECKIDENT ('APP.FARMACIA.MONEDEROS_ELECTRONICOS', RESEED, 0);
DELETE FARMACIA.MONEDEROS_ELECTRONICOS
DELETE FARMACIA.MEDICAMENTOS
DELETE FARMACIA.INGREDIENTES_ACTIVOS
DELETE FARMACIA.COMPRAR
DELETE FARMACIA.EMPLEADOS
DELETE FARMACIA.TELEFONOS_CLIENTES
DELETE FARMACIA.TELEFONOS_EMPLEADOS
DELETE FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
DELETE FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
DELETE FARMACIA.MEDICOS
DELETE FARMACIA.ESPECIALIDADES
DELETE FARMACIA.MOSTRADORES
DELETE FARMACIA.GENERALES
DELETE FARMACIA.CHOFERES
--Ya que se esta poblando constantemente la base de datos, el identificador IDENTITY
--cambia constantemente, entonces para evitar conflictos se reinicia con esto.
DBCC CHECKIDENT ('APP.FARMACIA.SUCURSALES', RESEED, 0);
DELETE FARMACIA.SUCURSALES
DELETE FARMACIA.TELEFONOS_SUCURSALES
DELETE FARMACIA.TRABAJAR
DELETE FARMACIA.RESPONSABLES
--Ya que se esta poblando constantemente la base de datos, el identificador IDENTITY
--cambia constantemente, entonces para evitar conflictos se reinicia con esto.
DBCC CHECKIDENT ('APP.FARMACIA.CONSULTAS', RESEED, 0);
DELETE FARMACIA.CONSULTAS
DELETE FARMACIA.SOLICITAR
--Ya que se esta poblando constantemente la base de datos, el identificador IDENTITY
--cambia constantemente, entonces para evitar conflictos se reinicia con esto.
DBCC CHECKIDENT ('APP.FARMACIA.RECETAS', RESEED, 0);
DELETE FARMACIA.RECETAS
DELETE FARMACIA.ESPECIFICACIONES_ADICIONALES
DELETE FARMACIA.VENDER
DELETE FARMACIA.CONTENER

-------------

-- 0
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('QCSZ579843FURYGD80', 'Nadia', 'Barvosa', 'Regla', 'Calle Triana', 'Providencia', 'Alvaro Obregon', 'Nuevo León', 'Monterrey', 'San Pablo', 'San Pablo', 'Ninguna', 99272, 252, 392);

-- 1
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NWGD202887OLPDHK60', 'Xochitl', 'Quenca', 'Olgin', 'Princesse Grace', 'Del maestro', 'Milpa Alta', 'Nayarit', 'Santiago', 'Avenida Paulista', 'Reforma', 'Ninguna', 22764, 159, 387);

-- 2
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DHIG446268BHTWMX13', 'Wanderley', 'Zurita', 'Dorado', 'Plaza Dam', 'San Alvaro', 'Cuajimalpa', 'Durango', 'Berlin', 'Mixcalco', 'Calle Triana', 'Ninguna', 67387, 319, 66);

-- 3
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('YSIJ111384TSRVYY87', 'Raul', 'Umada', 'Dorantes', 'Sunset Boulevard', 'Porvenir', 'Magdalena Contreras', 'Sinaloa', 'Pekin', 'Oxford Street', 'Alvaro Obregon', 'Ninguna', 15569, 11, 11);

-- 4
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('LEQM852390YTKWZF50', 'Ariel', 'Regino', 'Namau', 'Miguel Angel de Quevedo', 'Del recreo', 'Benito Juarez', 'Michoacán', 'Roma', 'Avenida Paulista', 'Calle Triana', 'Ninguna', 54465, 99, 137);

-- 5
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('FOWJ109854WBWVEG15', 'Saruman', 'Xicotencatl', 'Yvanes', 'Larios', 'Obrero Popular', 'Benito Juarez', 'Tlaxcala', 'Barcelona', 'Eje 7', 'Eje 5', 'Ninguna', 41522, 165, 21);

-- 6
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('VSYE675412QGTCPC99', 'Arwen', 'Palasios', 'Dorantes', 'Trafalgar Square', 'El Rosario', 'Iztapalapa', 'Guerrero', 'Rivendell', 'San Pablo', 'Calzada de Tlalpan', 'Ninguna', 13295, 296, 296);

-- 7
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('PRXK278424WTGHEO80', 'Peregrin', 'Najera', 'Yxtlamati', 'Avellaneda', 'Monte Alto', 'Cuauhtemoc', 'Chihuahua', 'Guadalajara', 'Regina', 'Lombard Street', 'Ninguna', 92295, 141, 83);

-- 8
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('CLJN842101XPLOFI94', 'Nestor', 'Dongu', 'Cobarrubias', '16 de Septiembre', 'San Antonio', 'Coyoacan', 'Aguascalientes', 'Leningrado', 'Jirón de la unión', 'La Rambla', 'Ninguna', 90074, 52, 139);

-- 9
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('XFEA747926PACINI45', 'Uriel', 'Pallares', 'Urena', 'Eje 8', 'Cuitlahuac', 'Azcapotzalco', 'Tamaulipas', 'Caracas', 'Regina', 'Avenida Atlantica', 'Ninguna', 57978, 274, 392);

-- 10
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ZXRU235386DUYJTU79', 'Jael', 'Jacobo', 'Lagunas', 'Sunset Boulevard', 'Euzkadi', 'Xochimilco', 'Estado de México', 'Bombay', 'Via Veneto', 'Republica de El Salvador', 'Ninguna', 33262, 155, 110);

-- 11
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('IIZP825881CZOALZ54', 'Xico', 'Cobarrubias', 'Queretano', 'Castellana', 'Industrial Vallejo', 'Azcapotzalco', 'Michoacán', 'Barranquilla', '16 de Septiembre', 'Avenida Atlantica', 'Ninguna', 22747, 96, 306);

-- 12
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('MQCV364855OUITLF37', 'Caeli', 'Coatl', 'Jacoba', '16 de Septiembre', 'Ferrería', 'Tlalpan', 'Guerrero', 'Casterly Rock', 'Unter den Linden', 'Princesse Grace', 'Ninguna', 20557, 254, 12);

-- 13
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NDGI068899XJGSUE87', 'Galadriel', 'Dorado', 'Escalera', 'Las Vegas Strip', 'Liberación', 'Benito Juarez', 'Colima', 'Gondor', 'Bolivar', 'Sunset Boulevard', 'Ninguna', 14842, 380, 102);

-- 14
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('UEZZ110441VXCQLU74', 'Isaac', 'Henrique', 'Queretano', 'Gran vía', 'Patrimonio Familiar', 'Xochimilco', 'Baja California Sur', 'Barcelona', 'Avenida Paulista', 'Copilco', 'Ninguna', 89361, 372, 134);

-- 15
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('JVNS291039KWEXHD62', 'Bilbo', 'Reies', 'Jacobo', 'Castellana', 'Del Gas', 'Alvaro Obregon', 'San Luis Potosí', 'Buenos Aires', 'Paseo de la fama', 'Eje 6', 'Ninguna', 28155, 284, 93);

-- 16
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ZRSC485883AWJDFT78', 'Gaston', 'Quenca', 'Cobarrubias', 'Pennsylvania', 'Libertad', 'Milpa Alta', 'Zacatecas', 'Carabobo', 'Gran vía', 'Sheikh Zayed Road', 'Ninguna', 17470, 254, 73);

-- 17
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('UHRF645445ODUNQS77', 'Isaias', 'Xihuitl', 'Sanchez', 'Avenida 9 de Julio', 'Pantaco', 'Miguel Hidalgo', 'Estado de México', 'Washington', 'Pennsylvania', 'Causeway Bay', 'Ninguna', 99614, 316, 223);

-- 18
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DMHY197734VOZMBX89', 'Efrain', 'Barvosa', 'Zepeda', 'Princesse Grace', 'Pemex prados', 'Venustiano Carranza', 'Chiapas', 'Isildur', 'Colima', 'Eje 3', 'Ninguna', 85022, 344, 94);

-- 19
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('UJNU055386FNKYQE62', 'Yakov', 'Jacoba', 'Idalgo', 'Eje 10', 'Miguel Hidalgo', 'Benito Juarez', 'Veracruz', 'Moscú', 'Princesse Grace', 'La Estafeta', 'Ninguna', 87123, 345, 36);

-- 20
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('QJRR811107SYJPAG18', 'Karla', 'Escalera', 'Macario', 'Calle Triana', 'Aldana', 'Cuauhtemoc', 'Guanajuato', 'Barranquilla', 'Calle Betis', 'Gran vía', 'Ninguna', 83779, 110, 68);

-- 21
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ELFU903602BYRTWF15', 'Vanesa', 'Xicotencatl', 'Regino', 'Avenida 9 de Julio', 'Libertad', 'Miguel Hidalgo', 'Tamaulipas', 'Monterrey', 'Eje 2', 'Reforma', 'Ninguna', 72096, 341, 86);

-- 22
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('UACD278124IMUTCH37', 'Laura', 'Jahuey', 'Ernandes', 'Rodeo Drive', 'La Raza', 'Tlalpan', 'Guanajuato', 'Kiev', 'Constituyentes', 'Larios', 'Ninguna', 48184, 5, 380);

-- 23
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('GFQL161773SSGFRJ56', 'Victor', 'Xicotencatl', 'Ansaldo', 'Avenida Diagonal', 'Miguel Hidalgo', 'Venustiano Carranza', 'Colima', 'Pekin', 'Avenida Paulista', 'Calle Betis', 'Ninguna', 75123, 149, 318);

-- 24
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('FKWS168722RTLZMT52', 'Raul', 'Infante', 'Jacoba', 'Alvaro Obregon', 'San Antonio', 'Milpa Alta', 'Querétaro', 'Ciudad de México', 'Calzada de Tlalpan', 'Calzada del hueso', 'Ninguna', 54109, 312, 301);

-- 25
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('GCAE828154RMJOIR61', 'Uriel', 'Xihuitl', 'Nama', 'Miguel de Cervantes', 'La Raza', 'Cuauhtemoc', 'Veracruz', 'Barcelona', 'Avenida Atlantica', 'Paseo de la fama', 'Ninguna', 43424, 230, 291);

-- 26
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('IGFS766410HEDOOP58', 'Aragorn', 'Infante', 'Heredia', 'Campos Eliseos', 'Aldana', 'Milpa Alta', 'Hidalgo', 'Kiev', 'Vía Montenapoleone', 'Regina', 'Ninguna', 90433, 352, 6);

-- 27
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DQMR531247EEHSXI99', 'Patricio', 'Zedillo', 'Talavera', 'Oxford Street', 'El Rosario', 'Gustavo A. Madero', 'Jalisco', 'Casterly Rock', 'Insurgentes', 'Mixcalco', 'Ninguna', 51495, 282, 29);

-- 28
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('FBEY713141HGABQU48', 'Valar', 'Anna', 'Namau', 'Calle Triana', 'El Rosario', 'Benito Juarez', 'Tamaulipas', 'Valinor', 'Eje 4', 'Viaducto', 'Ninguna', 68640, 385, 332);

-- 29
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DEIF304743NQLSSH27', 'Aragorn', 'Frade', 'Ysaguirre', 'Sheikh Zayed Road', 'Ignacio Allende', 'Venustiano Carranza', 'Coahuila', 'Monterrey', 'Princesse Grace', 'Viaducto', 'Ninguna', 53650, 310, 223);

-- 30
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NKAU724493MTXNSQ78', 'Nagul', 'Zurita', 'Xavier', 'Calzada del hueso', 'Patrimonio Familiar', 'Tlalpan', 'Chiapas', 'Mereen', 'Avenida Paulista', 'Wall Street', 'Ninguna', 95787, 272, 286);

-- 31
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('TOUJ842171ZNANRR47', 'Laura', 'Garrido', 'Sanguino', 'Brooklyn', 'Arenal', 'Iztapalapa', 'Durango', 'Milan', 'Colima', 'Unter den Linden', 'Ninguna', 55602, 364, 32);

-- 32
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('IGLB952897ALSAWZ90', 'Sauron', 'Nama', 'Garivay', 'Lombard Street', 'Pemex prados', 'Milpa Alta', 'Estado de México', 'Mereen', 'Delfin Madrigal', 'Eje 5', 'Ninguna', 81057, 131, 383);

-- 33
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NBHN276128WYQPOL54', 'Quasimodo', 'Anna', 'Ernandes', 'Calzada del hueso', 'Nextengo', 'Iztacalco', 'Hidalgo', 'Cartagena', 'Victoria', 'Ginza', 'Ninguna', 45494, 1, 41);

-- 34
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('KXXP795444AATQZG67', 'Olga', 'Ibarra', 'Garibay', 'Paseo de Gracia', 'Coltongo', 'Gustavo A. Madero', 'Guerrero', 'Lima', 'Rodeo Drive', 'Madero', 'Ninguna', 38481, 159, 12);

-- 35
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DBRQ297671RGZFQG26', 'Nadia', 'Zurita', 'Infante', 'Eje 7', 'Clavería', 'Cuajimalpa', 'Aguascalientes', 'Madrid', '16 de Septiembre', 'La Estafeta', 'Ninguna', 64552, 182, 184);

-- 36
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('HQXI928423JMAVAH55', 'Yuya', 'Queretano', 'Palasios', 'Copilco', 'Petrolera', 'Iztapalapa', 'Campeche', 'Taipei', 'La Alameda', 'Larios', 'Ninguna', 76009, 37, 111);

-- 37
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('IBAN035333PJBPKH72', 'Isaac', 'Tamaio', 'Coba', 'Copilco', 'Petrolera', 'Azcapotzalco', 'Jalisco', 'Oslo', 'Wall Street', 'Calzada de Tlalpan', 'Ninguna', 44731, 221, 189);

-- 38
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('GISQ369274HOTHUK79', 'Fernando', 'Hererra', 'Palafos', 'Larios', 'Industrial Vallejo', 'Iztacalco', 'Guerrero', 'Seul', 'Sheikh Zayed Road', 'Miguel de Cervantes', 'Ninguna', 79864, 391, 332);

-- 39
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('SEQP902720BDHQAF28', 'Valar', 'Olgin', 'Heredia', 'Brooklyn', 'Ferrería', 'Magdalena Contreras', 'Zacatecas', 'Carabobo', 'Altavista', 'Eje 6', 'Ninguna', 84964, 81, 302);

-- 40
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NIXJ217212IGTAUC82', 'Karina', 'Tamaio', 'Duarte', 'Calzada de Guadalupe', 'Liberación', 'Tlahuac', 'Morelos', 'Berlin', 'Khao San', 'Miguel de Cervantes', 'Ninguna', 39428, 82, 15);

-- 41
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('QOQN970590QAKFIJ01', 'Yuya', 'Idalgo', 'Namau', 'Causeway Bay', 'Porvenir', 'Milpa Alta', 'Hidalgo', 'Isildur', 'Brooklyn', 'Princesse Grace', 'Ninguna', 74043, 340, 342);

-- 42
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('CBGO185996UQAMNG31', 'Thorin', 'Quenca', 'Escalante', 'Eje 7', 'San Andres', 'Iztapalapa', 'Morelos', 'Helsinki', 'Victoria', 'Wall Street', 'Ninguna', 23435, 77, 77);

-- 43
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('QPHJ244368OQEABC37', 'Caifas', 'Lagunas', 'Talavera', 'Calzada de Guadalupe', 'San Antonio', 'Venustiano Carranza', 'Tlaxcala', 'Santiago', 'Plaza Dam', 'Chapultepec', 'Ninguna', 74372, 355, 177);

-- 44
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('AJWN037484BPKEKJ95', 'Olga', 'Garnica', 'Lagunas', 'Bolivar', 'El Rosario', 'Iztapalapa', 'Coahuila', 'Leningrado', 'Orchard Road', '16 de Septiembre', 'Ninguna', 58739, 204, 93);

-- 45
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('BYDO324442RGNSZQ44', 'Karla', 'Lagunas', 'Xihuitl', 'Reforma', 'Nueva Santa María', 'Coyoacan', 'Morelos', 'Montevideo', 'Eje 6', 'Princesse Grace', 'Ninguna', 82415, 27, 245);

-- 46
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('YUSK048612LKACLW26', 'Lili', 'Escalante', 'Escalante', 'Delfin Madrigal', 'Coltongo', 'Xochimilco', 'Baja California', 'Rio de Janeiro', 'Abbey Road', 'La Alameda', 'Ninguna', 80524, 174, 274);

-- 47
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NIYG585361ZJJRGH41', 'Isaac', 'Dongu', 'Xaymes', 'Colima', 'Patrimonio Familiar', 'Azcapotzalco', 'Morelos', 'Leningrado', 'Larios', 'Rio San Joaquin', 'Ninguna', 86996, 85, 348);

-- 48
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('OKRC487083LKGTNW41', 'Xochitl', 'Labrador', 'Reies', 'Reforma', 'Del recreo', 'Iztacalco', 'Sinaloa', 'Rio de Janeiro', 'Brooklyn', 'Unter den Linden', 'Ninguna', 79326, 355, 398);

-- 49
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('UCDP810534UAIACV97', 'Yuya', 'Namorado', 'Ysidro', 'Causeway Bay', 'Los Reyes', 'Miguel Hidalgo', 'Morelos', 'Madrid', 'Eje 1', 'Bolivar', 'Ninguna', 17481, 300, 11);

-- 50
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('KBRI418368FHQJZP90', 'Octavio', 'Fonseca', 'Olguin', 'Universidad', 'Monte Alto', 'Iztacalco', 'Zacatecas', 'Carabobo', 'Gran vía', 'Las Vegas Strip', 'Ninguna', 52305, 52, 45);

-- 51
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('UGIA281059KLZCIR39', 'Emanuel', 'Ladino', 'Xihuitl', 'Calle de Preciados', 'Jardin Azpeitia', 'Magdalena Contreras', 'Estado de México', 'Barranquilla', 'Bolivar', 'Venustiano Carranza', 'Ninguna', 16101, 278, 116);

-- 52
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('CYUC904662IWQOFH01', 'Jaime', 'Ladino', 'Regino', 'Miguel de Cervantes', 'Providencia', 'Alvaro Obregon', 'San Luis Potosí', 'Madrid', 'Rodeo Drive', 'Avenida Paulista', 'Ninguna', 76263, 68, 232);

-- 53
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('OQHW025810EJNLNC31', 'Zutano', 'Illescas', 'Cleto', 'Castellana', 'Del recreo', 'Tlalpan', 'Nuevo León', 'Lima', 'Rodeo Drive', 'Downing Street', 'Ninguna', 89380, 392, 175);

-- 54
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ZUYX924485LTLYAS19', 'Sauron', 'Hererra', 'Hererra', 'Venustiano Carranza', 'Miguel Hidalgo', 'Miguel Hidalgo', 'Veracruz', 'Taipei', 'Vía Montenapoleone', 'Lombard Street', 'Ninguna', 52238, 319, 233);

-- 55
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('VYCA082252GGPOGP47', 'Rosa', 'Illescas', 'Fragoso', 'Altavista', 'Centro', 'Azcapotzalco', 'Jalisco', 'Kiev', 'Eje 8', 'La 5° avenida', 'Ninguna', 46081, 63, 178);

-- 56
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('GSXJ684356CSXIYQ34', 'Gaston', 'Donate', 'Urbina', 'Eje 2', 'Porvenir', 'Cuajimalpa', 'Quintana Roo', 'Caracas', 'Calzada de Tlalpan', 'Sheikh Zayed Road', 'Ninguna', 28876, 66, 291);

-- 57
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('CLOH331137CJAGOU27', 'Dennis', 'Cleto', 'Anrriquez', 'Campos Eliseos', 'Miguel Hidalgo', 'Venustiano Carranza', 'Guanajuato', 'Ciudad de México', 'Rio San Joaquin', 'Paseo de Gracia', 'Ninguna', 35110, 92, 180);

-- 58
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('BAIB280357WAKGQC25', 'Pedro', 'Duarte', 'Palencia', 'Eje 9', 'La Raza', 'Magdalena Contreras', 'Baja California', 'Barranquilla', 'Las Vegas Strip', 'Larios', 'Ninguna', 73399, 300, 305);

-- 59
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('FKDV272933SAPSWT81', 'Karla', 'Xihuitl', 'Errera', 'Causeway Bay', 'San Andres', 'Tlalpan', 'Jalisco', 'Madrid', 'La Rambla', 'Eje 4', 'Ninguna', 52016, 59, 76);

-- 60
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('PRNO937038FKKQZS96', 'Magdalena', 'Ysidro', 'Heredia', 'Rio San Joaquin', 'Pemex prados', 'Azcapotzalco', 'Puebla', 'Moscú', 'Rio San Joaquin', 'Pennsylvania', 'Ninguna', 19964, 171, 125);

-- 61
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ECHF567470XNVAGH51', 'Ernesto', 'Henriquez', 'Barvosa', 'Alvaro Obregon', 'Potrero del llano', 'Alvaro Obregon', 'Morelos', 'Lima', 'La Estafeta', 'Larios', 'Ninguna', 42948, 206, 30);

-- 62
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('VAVV911377WPXOWT13', 'Dan', 'Ibarra', 'Duarte', 'Rodeo Drive', 'Obrero Popular', 'Coyoacan', 'Oaxaca', 'Cartagena', 'Viaducto', 'Victoria', 'Ninguna', 21513, 85, 315);

-- 63
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('QRVT835395MKNXRK27', 'Ariel', 'Jahuey', 'Heredia', 'Jirón de la unión', 'Pemex prados', 'Venustiano Carranza', 'Puebla', 'Barranquilla', 'Mixcalco', 'Masaryk', 'Ninguna', 45485, 206, 85);

-- 64
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('STTK784422SSZUZQ09', 'Jael', 'Donate', 'Quenca', 'Avenida Amsterdam', 'Providencia', 'Tlahuac', 'Tlaxcala', 'Pekin', 'Rio San Joaquin', 'Wall Street', 'Ninguna', 89827, 214, 222);

-- 65
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('JIHT365281QNORKX69', 'Umbra', 'Fragoso', 'Cleto', 'Via Dolorosa', 'Industrial Vallejo', 'Tlalpan', 'Guerrero', 'Ciudad de México', 'Iman', 'Paseo de Gracia', 'Ninguna', 51609, 10, 20);

-- 66
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NGYB287322RVGPLI00', 'Quasimodo', 'Sanguino', 'Macedo', 'Lombard Street', 'Pasteros', 'Tlahuac', 'Durango', 'Montevideo', 'Eje 3', 'Unter den Linden', 'Ninguna', 22869, 389, 39);

-- 67
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DGOO872006GMHWRU71', 'Omar', 'Duarte', 'Donate', 'Eje 10', 'Del Gas', 'Cuajimalpa', 'Tabasco', 'Roma', 'Eje 2', 'Delfin Madrigal', 'Ninguna', 76049, 4, 113);

-- 68
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('VDCA926916YGOPLX74', 'Zoe', 'Regino', 'Anna', 'Altavista', 'Del maestro', 'Milpa Alta', 'Tlaxcala', 'Pekin', 'Avellaneda', 'Las Vegas Strip', 'Ninguna', 17098, 233, 328);

-- 69
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('EBRT011874WVQYVC03', 'Aragorn', 'Frade', 'Dorantes', 'Mixcalco', 'Centro', 'Alvaro Obregon', 'Querétaro', 'Lima', 'Paseo de la fama', 'Las Vegas Strip', 'Ninguna', 53205, 164, 50);

-- 70
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('VVJV735129UOTNOW86', 'Fernando', 'Olea', 'Talledos', 'Copilco', 'Liberación', 'Azcapotzalco', 'Morelos', 'Barranquilla', 'Calzada de Tlalpan', 'Miguel Angel de Quevedo', 'Ninguna', 64196, 307, 212);

-- 71
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DZPK779756APIBEM16', 'Emanuel', 'Talledos', 'Machorro', 'Via Dolorosa', 'Ecologica', 'Benito Juarez', 'Hidalgo', 'La Comarca', 'Eje 6', 'Campos Eliseos', 'Ninguna', 69969, 328, 191);

-- 72
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ZMNU711598GSDQJT07', 'Emanuel', 'Ansaldo', 'Quesada', 'Sheikh Zayed Road', 'Obrero Popular', 'Cuauhtemoc', 'Veracruz', 'Rivendell', 'Eje 2', 'Masaryk', 'Ninguna', 60565, 190, 393);

-- 73
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('MPDQ801816ORVGIM66', 'Mabel', 'Talledos', 'Umada', 'Abbey Road', 'Cosmopolita', 'Venustiano Carranza', 'Nuevo León', 'Rivendell', 'Paseo de la fama', 'Venustiano Carranza', 'Ninguna', 35452, 207, 278);

-- 74
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('AFKH790612YANUFL72', 'Valeria', 'Umada', 'Palencia', 'Calle de Uría', 'Los Reyes', 'Iztapalapa', 'Yucatán', 'Londres', 'Lombard Street', 'Masaryk', 'Ninguna', 65963, 282, 143);

-- 75
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('PTMJ213151NXHRBC84', 'Jair', 'Ladron', 'Xicotencatl', 'Khao San', 'Cosmopolita', 'Alvaro Obregon', 'Baja California', 'Taipei', 'Paseo de la fama', 'Via Dolorosa', 'Ninguna', 64026, 75, 372);

-- 76
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NEAM995254MCUWZH62', 'Omar', 'Yxtlamati', 'Lagunillas', 'Eje 3', 'Nextengo', 'Cuajimalpa', 'Tabasco', 'Isildur', 'Eje 8', 'Calle Triana', 'Ninguna', 17167, 202, 191);

-- 77
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('BGNW832327TVNFAK34', 'Dido', 'Ysaguirre', 'Basan', 'Calzada de Tlalpan', 'Euzkadi', 'Venustiano Carranza', 'Durango', 'Santo Domingo', 'Delfin Madrigal', 'Portobello Road', 'Ninguna', 61800, 151, 157);

-- 78
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('WVLE908194LAHKCV69', 'Hector', 'Dorado', 'Ysidro', 'Universidad', 'Coltongo', 'Milpa Alta', 'Aguascalientes', 'Bombay', 'La Estafeta', 'Viaducto', 'Ninguna', 13241, 165, 305);

-- 79
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('DDVA852446EPATEG22', 'Salomon', 'Oliba', 'Santa', 'Eje 2', 'Libertad', 'Xochimilco', 'Tamaulipas', 'Valyria', 'Wall Street', 'Orchard Road', 'Ninguna', 45403, 138, 259);

-- 80
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('OQIW027425DZZJIG38', 'Magdalena', 'Dorantes', 'Olea', 'Mixcalco', 'Pemex prados', 'Alvaro Obregon', 'Chihuahua', 'Brasilia', 'Reforma', 'Iman', 'Ninguna', 45629, 248, 70);

-- 81
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('WGWU309415LUAEDV40', 'Olga', 'Climaco', 'Barzena', 'Miguel de Cervantes', 'Pantaco', 'Iztapalapa', 'Jalisco', 'Oslo', 'Miguel de Cervantes', '16 de Septiembre', 'Ninguna', 61671, 120, 158);

-- 82
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('MNIN775884FNPMRL54', 'Fernando', 'Varron', 'Pallares', 'Miguel Angel de Quevedo', 'Clavería', 'Iztacalco', 'Sonora', 'Casterly Rock', 'Chapultepec', 'La Alameda', 'Ninguna', 23666, 333, 241);

-- 83
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('NPJO985323WRRDAY85', 'Yakov', 'Olguin', 'Machado', 'Victoria', 'Plenitud', 'Iztacalco', 'Chiapas', 'Bombay', 'Khao San', '16 de Septiembre', 'Ninguna', 48246, 49, 122);

-- 84
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('LSIU608830TOYZIX01', 'Nagul', 'Heredia', 'Machado', 'Constituyentes', 'Coltongo', 'Coyoacan', 'Yucatán', 'Leningrado', 'Avenida Diagonal', 'Chapultepec', 'Ninguna', 85308, 150, 34);

-- 85
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('OUBP138055QEQSJA34', 'Galadriel', 'Varrios', 'Lagunillas', 'Jirón de la unión', 'Obrero Popular', 'Milpa Alta', 'Campeche', 'Valyria', 'Pennsylvania', 'Calzada del hueso', 'Ninguna', 96214, 240, 54);

-- 86
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ARZF029384WEMCXP24', 'Valar', 'Jacobo', 'Fragoso', 'Republica de El Salvador', 'Obrero Popular', 'Milpa Alta', 'Durango', 'Santo Domingo', 'La Alameda', 'Republica de El Salvador', 'Ninguna', 15761, 341, 161);

-- 87
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('EKUK250512OWUHAU49', 'Narda', 'Xavier', 'Namorado', 'La Alameda', 'San Antonio', 'Milpa Alta', 'Oaxaca', 'Lima', 'Jirón de la unión', 'Plaza Dam', 'Ninguna', 49323, 266, 308);

-- 88
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('VAQE500534GMXMKF50', 'Olga', 'Queretano', 'Santa', 'Delfin Madrigal', 'Del maestro', 'Magdalena Contreras', 'Sinaloa', 'Seul', 'San Pablo', 'Eje 1', 'Ninguna', 21414, 177, 14);

-- 89
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('VZPU619037BFOEJW93', 'Valar', 'Cleto', 'Ansures', 'Princesse Grace', 'Los Reyes', 'Xochimilco', 'Chihuahua', 'Taipei', 'Brooklyn', 'Insurgentes', 'Ninguna', 85892, 351, 260);

-- 90
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('LKOY942289EVIEOW81', 'Theoden', 'Barva', 'Ibarra', 'Eje 10', 'Industrial Vallejo', 'Cuajimalpa', 'Sonora', 'Bombay', 'Alvaro Obregon', 'Reforma', 'Ninguna', 10209, 42, 169);

-- 91
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('TOJY793949DCGRLL87', 'Elrond', 'Angulo', 'Urbina', 'Castellana', 'Angel Zimbron', 'Coyoacan', 'Baja California', 'Gondor', 'Calle Betis', 'Calzada de Guadalupe', 'Ninguna', 63748, 56, 234);

-- 92
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('FRAA727517FSGMYP25', 'Ernesto', 'Cobarrubias', 'Olea', 'Mixcalco', 'Jardin Azpeitia', 'Venustiano Carranza', 'Chiapas', 'Londres', 'Rodeo Drive', 'Altavista', 'Ninguna', 43443, 53, 239);

-- 93
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('MTRX704880OSONBG84', 'Aragorn', 'Dorado', 'Barva', 'Eje 6', 'Ferrería', 'Iztacalco', 'Tlaxcala', 'Bombay', 'Calle de Uría', 'Rio San Joaquin', 'Ninguna', 20912, 205, 166);

-- 94
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('KXMW127712KFKERE02', 'Sauron', 'Xihuitl', 'Cobarrubias', 'Eje 3', 'Ferrería', 'Miguel Hidalgo', 'Yucatán', 'Ciudad de México', 'Alvaro Obregon', 'Paseo de Gracia', 'Ninguna', 61578, 88, 383);

-- 95
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('UFUZ556413MWQNJN75', 'Tamara', 'Ureste', 'Olguin', 'Eje 4', 'La Raza', 'Cuauhtemoc', 'Hidalgo', 'Cartagena', 'Orchard Road', 'Avellaneda', 'Ninguna', 66725, 263, 328);

-- 96
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('JLBN098470KQEKFF00', 'Bilbo', 'Urena', 'Varron', 'San Pablo', 'Centro', 'Tlahuac', 'Puebla', 'Isildur', 'Rodeo Drive', 'La Rambla', 'Ninguna', 39507, 308, 106);

-- 97
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('RPQU464521SENQOL82', 'Quasimodo', 'Barvosa', 'Illescas', 'San Pablo', 'Patrimonio Familiar', 'Cuauhtemoc', 'Hidalgo', 'Monterrey', 'Pennsylvania', 'Eje 7', 'Ninguna', 27829, 232, 138);

-- 98
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('ULJW732539WGIYVO56', 'Odo', 'Ladron', 'Quebedo', 'Iman', 'Del recreo', 'Azcapotzalco', 'Estado de México', 'Paris', 'Bolivar', 'Eje 3', 'Ninguna', 89096, 302, 92);

-- 99
INSERT INTO FARMACIA.CLIENTES
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior)
VALUES ('YAZU781536ZSOHDT71', 'Theoden', 'Henrique', 'Coatl', 'Calle Triana', 'Providencia', 'Cuauhtemoc', 'Puebla', 'Isildur', 'Avenida Atlantica', 'Calzada de Guadalupe', 'Ninguna', 20624, 256, 399);

-----------------------------------

-- 1
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('QCSZ579843FURYGD80', 434);

-- 2
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('NWGD202887OLPDHK60', 1045);

-- 3
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('DHIG446268BHTWMX13', 1608);

-- 4
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('YSIJ111384TSRVYY87', 1795);

-- 5
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('LEQM852390YTKWZF50', 585);

-- 6
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('FOWJ109854WBWVEG15', 1609);

-- 7
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('VSYE675412QGTCPC99', 1589);

-- 8
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('PRXK278424WTGHEO80', 862);

-- 9
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('CLJN842101XPLOFI94', 733);

-- 10
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('XFEA747926PACINI45', 1981);

-- 11
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('ZXRU235386DUYJTU79', 448);

-- 12
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('IIZP825881CZOALZ54', 1642);

-- 13
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('MQCV364855OUITLF37', 1637);

-- 14
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('NDGI068899XJGSUE87', 1299);

-- 15
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('UEZZ110441VXCQLU74', 973);

-- 16
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('JVNS291039KWEXHD62', 119);

-- 17
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('ZRSC485883AWJDFT78', 1355);

-- 18
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('UHRF645445ODUNQS77', 1261);

-- 19
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('DMHY197734VOZMBX89', 1225);

-- 20
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('UJNU055386FNKYQE62', 113);

-- 21
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('QJRR811107SYJPAG18', 1042);

-- 22
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('ELFU903602BYRTWF15', 1622);

-- 23
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('UACD278124IMUTCH37', 287);

-- 24
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('GFQL161773SSGFRJ56', 428);

-- 25
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('FKWS168722RTLZMT52', 318);

-- 26
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('GCAE828154RMJOIR61', 1528);

-- 27
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('IGFS766410HEDOOP58', 1022);

-- 28
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('DQMR531247EEHSXI99', 1415);

-- 29
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('FBEY713141HGABQU48', 334);

-- 30
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('DEIF304743NQLSSH27', 637);

-- 31
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('NKAU724493MTXNSQ78', 1649);

-- 32
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('TOUJ842171ZNANRR47', 1359);

-- 33
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('IGLB952897ALSAWZ90', 18);

-- 34
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('NBHN276128WYQPOL54', 957);

-- 35
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('KXXP795444AATQZG67', 321);

-- 36
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('DBRQ297671RGZFQG26', 51);

-- 37
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('HQXI928423JMAVAH55', 847);

-- 38
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('IBAN035333PJBPKH72', 1648);

-- 39
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('GISQ369274HOTHUK79', 713);

-- 40
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('SEQP902720BDHQAF28', 184);

-- 41
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('NIXJ217212IGTAUC82', 1340);

-- 42
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('QOQN970590QAKFIJ01', 1980);

-- 43
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('CBGO185996UQAMNG31', 477);

-- 44
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('QPHJ244368OQEABC37', 106);

-- 45
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('AJWN037484BPKEKJ95', 1951);

-- 46
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('BYDO324442RGNSZQ44', 1683);

-- 47
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('YUSK048612LKACLW26', 1468);

-- 48
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('NIYG585361ZJJRGH41', 265);

-- 49
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('OKRC487083LKGTNW41', 1051);

-- 50
INSERT INTO FARMACIA.MONEDEROS_ELECTRONICOS
(curp, saldo)
VALUES ('UCDP810534UAIACV97', 178);

-----------------

-- 0
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (59485109, 62, 'ZIAGEN', 'GlaxoSmithKline', 'Gotas óticas', 's');

-- 1
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (74020477, 2563, 'ORENCIA', 'Gennoma Lab', 'Tintura', 'n');

-- 2
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (19477905, 1563, 'REOPRO', 'Merck', 'Clorio', 's');

-- 3
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (48365017, 716, 'Aspirina', 'Ferring', 'Polvo', 'n');

-- 4
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (73817149, 2082, 'DIDREX', 'Pisa', 'Nebulizante nasal', 's');

-- 5
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (21795449, 1769, 'VASCOR', 'Novartis', 'Perla', 'n');

-- 6
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (53531907, 948, 'COGENTIN', 'Offenbach', 'Supositorio', 's');

-- 7
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (84588551, 53, 'CELESTONE', 'Bonarum', 'Pincelación', 'n');

-- 8
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (50384259, 537, 'KLONOPIN', 'GlaxoSmithKline', 'Gotas nasales', 's');

-- 9
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (96025474, 1358, 'CATAPRES', 'Bonarum', 'Extracto', 'n');

-- 10
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (19055787, 2585, 'PLAVIX', 'Chinoin', 'Solución', 's');

-- 11
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (69780821, 89, 'TRANXENE', 'Allergan', 'Aerosol', 'n');

-- 12
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (30306147, 1826, 'DANTRIUM', 'Merck', 'Supositorio', 's');

-- 13
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (97290480, 2251, 'ACZONE', 'Bonarum', 'Aerosol', 'n');

-- 14
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (54158073, 563, 'CUBICIN', 'Offenbach', 'Supositorio', 's');

-- 15
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (53423089, 1866, 'ARANESP', 'Roche', 'Emulsión', 'n');

-- 16
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (49063501, 922, 'VASOTEC', 'SunPharma', 'Irrigación', 's');

-- 17
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (38656103, 2231, 'FUZEON', 'Novartis', 'Perla', 'n');

-- 18
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (30626464, 1418, 'LOVENOX', 'Pisa', 'Aerosol', 's');

-- 19
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (80711691, 419, 'COMTAN', 'GlaxoSmithKline', 'Trocistos', 'n');

-- 20
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (17877397, 2101, 'TAMBOCOR', 'GlaxoSmithKline', 'Instilación', 's');

-- 21
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (85550311, 1827, 'DIFULCAN', 'Gennoma Lab', 'Tintura', 'n');

-- 22
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (21028829, 889, 'ANCOBON', 'Chinoin', 'Pincelación', 's');

-- 23
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (70411936, 270, 'FLUDARA', 'SunPharma', 'Cataplasma', 'n');

-- 24
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (48599349, 2390, 'ZYMAR', 'Gennoma Lab', 'Pincelación', 's');

-- 25
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (25132189, 2923, 'GEMZAR', 'Allergan', 'Pincelación', 'n');

-- 26
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (45076827, 841, 'LOPID', 'GlaxoSmithKline', 'Pomada', 's');

-- 27
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (74427047, 2573, 'IRESSA', 'Merck', 'Transfusión', 'n');

-- 28
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (14397698, 1784, 'DILAUDID', 'Roche', 'Tópico', 's');

-- 29
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (92471376, 2374, 'TRI-LUMA', 'Ferring', 'Trocistos', 'n');

-- 30
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (60844986, 1122, 'PLAQUENIL', 'Novartis', 'Clorio', 's');

-- 31
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (27924957, 46, 'HYDREA', 'Chinoin', 'Emplasto', 'n');

-- 32
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (86679975, 187, 'TOFRANIL', 'Bayer', 'Glicerina', 's');

-- 33
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (30966237, 180, 'ALDARA', 'Bayer', 'Oblea', 'n');

-- 34
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (83584178, 793, 'CRIXIVAN', 'Novartis', 'Clorio', 's');

-- 35
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (96311763, 111, 'INDOCIN', 'Bonarum', 'Óvulo', 'n');

-- 36
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (88285858, 670, 'NIZORAL', 'Landsteiner Scientific', 'Espítiru', 's');

-- 37
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (36619078, 2560, 'ACULAR', 'Galderma', 'Aerosol', 'n');

-- 38
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (55406906, 913, 'XALATAN', 'Galderma', 'Píldora', 's');

-- 39
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (74791851, 2410, 'ARAVA', 'Ferring', 'Loción', 'n');

-- 40
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (46889626, 2835, 'REVLIMID', 'Merck', 'Pastilla', 's');

-- 41
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (62038007, 2216, 'REFLUDAN', 'GlaxoSmithKline', 'Tableta', 'n');

-- 42
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (62014952, 598, 'MOBIC', 'Galderma', 'Irrigación', 's');

-- 43
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (52270641, 953, 'ALKERAN', 'Bayer', 'Perfusión', 'n');

-- 44
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (13408656, 1795, 'NAMENDA', 'Allergan', 'Aerosol', 's');

-- 45
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (85593550, 1556, 'PURINETHOL', 'I.M.Bruluart', 'Tintura', 'n');

-- 46
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (71513874, 2319, 'SYNAREL', 'SunPharma', 'Clorio', 's');

-- 47
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (82265169, 2312, 'NAFTIN', 'I.M.Bruluart', 'Irrigación', 'n');

-- 48
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (85299504, 186, 'REVIA', 'Bonarum', 'Óvulo', 's');

-- 49
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (16579759, 2177, 'NAPHCON-A', 'Chinoin', 'Elíxir', 'n');

-- 50
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (34408842, 2350, 'ZYPREXA', 'Allergan', 'Oblea', 's');

-- 51
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (62379741, 1086, 'BENICAR', 'SunPharma', 'Gotas nasales', 'n');

-- 52
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (84779291, 2969, 'PATANOL', 'Galderma', 'Candelilla', 's');

-- 53
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (64161128, 1290, 'DIPENTUM', 'I.M.Bruluart', 'Espítiru', 'n');

-- 54
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (32975363, 1763, 'MACUGEN', 'Pisa', 'Clorio', 's');

-- 55
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (30066823, 1152, 'NEULASTA', 'Bonarum', 'Pomada', 'n');

-- 56
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (57726723, 303, 'PEG-INTRON', 'Roche', 'Supositorio', 's');

-- 57
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (46726401, 754, 'SOMAVERT', 'Roche', 'Tintura', 'n');

-- 58
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (60643863, 19, 'SEROQUEL', 'I.M.Bruluart', 'Instilación', 's');

-- 59
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (14727746, 2024, 'ATABRINE', 'SunPharma', 'Gotas óticas', 'n');

-- 60
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (80979837, 1756, 'ACCUPRIL', 'Offenbach', 'Candelilla', 's');

-- 61
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (92751273, 2878, 'QUALAQUIN', 'Roche', 'Pincelación', 'n');

-- 62
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (57600094, 2700, 'EVISTA', 'Merck', 'Loción', 's');

-- 63
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (29781559, 2580, 'ISENTRESS', 'GlaxoSmithKline', 'Elíxir', 'n');

-- 64
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (47834728, 2036, 'ROZEREM', 'Gennoma Lab', 'Gargarismo', 's');

-- 65
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (28571878, 93, 'ALTACE', 'Gennoma Lab', 'Gotas óticas', 'n');

-- 66
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (99000902, 80, 'SELSUN', 'Gennoma Lab', 'Supositorio', 's');

-- 67
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (11032206, 183, 'SENOKOT', 'Hospira', 'Perla', 'n');

-- 68
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (30428869, 2517, 'ZOLOFT', 'Gennoma Lab', 'Cápsula', 's');

-- 69
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (33353236, 2460, 'RENAGEL', 'GlaxoSmithKline', 'Inhalación', 'n');

-- 70
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (29699840, 940, 'CIALIS', 'Hospira', 'Pasta', 's');

-- 71
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (95037105, 1510, 'FLOMAX', 'Roche', 'Pincelación', 'n');

-- 72
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (77872784, 133, 'TAZORAC', 'GlaxoSmithKline', 'Oblea', 's');

-- 73
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (78783293, 1674, 'TYZEKA', 'Merck', 'Inyección', 'n');

-- 74
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (10269021, 2611, 'DESENEX', 'I.M.Bruluart', 'Loción', 's');

-- 75
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (71314118, 1615, 'RESCULA', 'Bonarum', 'Tópico', 'n');

-- 76
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (52697433, 1142, 'ACTIGALL', 'Bonarum', 'Cataplasma', 's');

-- 77
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (84742731, 1560, 'VALCYTE', 'Allergan', 'Comprimido', 'n');

-- 78
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (27831814, 729, 'DEPACON', 'GlaxoSmithKline', 'Colutorio', 's');

-- 79
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (25068895, 307, 'DIOVAN', 'Galderma', 'Emplasto', 'n');

-- 80
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (11913758, 2845, 'VANCOCIN', 'Chinoin', 'Comprimido', 's');

-- 81
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (73020562, 64, 'COUMADIN', 'Allergan', 'Instilación', 'n');

-- 82
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (37480953, 2071, 'OTRIVIN', 'Pisa', 'Pastilla', 's');

-- 83
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (90265471, 669, 'YOCON', 'Landsteiner Scientific', 'Cápsula', 'n');

-- 84
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (16806239, 2663, 'ACCOLATE', 'Hospira', 'Inhalación', 's');

-- 85
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (42522158, 2737, 'SONATA', 'Bayer', 'Pasta', 'n');

-- 86
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (92282456, 2657, 'RELENZA', 'Gennoma Lab', 'Transfusión', 's');

-- 87
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (51251747, 1323, 'RETROVIR', 'Merck', 'Gotas óticas', 'n');

-- 88
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (43328702, 2766, 'ZYFLO', 'Merck', 'Polvo', 's');

-- 89
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (11541426, 83, 'SUMYCIN', 'Chinoin', 'Pincelación', 'n');

-- 90
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (15763088, 1489, 'TYZINE', 'Gennoma Lab', 'Colutorio', 's');

-- 91
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (91454955, 2158, 'THALOMID', 'Offenbach', 'Extracto', 'n');

-- 92
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (97377874, 59, 'THEOLAIR', 'Galderma', 'Enema', 's');

-- 93
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (38125508, 2316, 'STREPTASE', 'Hospira', 'Pomada', 'n');

-- 94
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (47908016, 997, 'ZANOSAR', 'Roche', 'Nebulizante nasal', 's');

-- 95
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (79751861, 2702, 'CHEMET', 'Chinoin', 'Comprimido', 'n');

-- 96
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (26562142, 118, 'QUELICIN', 'Allergan', 'Pastilla', 's');

-- 97
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (81797281, 841, 'CARAFATE', 'I.M.Bruluart', 'Colutorio', 'n');

-- 98
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (85894609, 1666, 'SUFENTA', 'Roche', 'Granulado', 's');

-- 99
INSERT INTO FARMACIA.MEDICAMENTOS
(sku, precio, nombre, marca, presentacion, requiere_receta)
VALUES (37875137, 1678, 'REQUIP', 'Novartis', 'Gotas óticas', 'n');

----------------

-- 0
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Abacavir', 59485109);

-- 1
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Abatacept', 74020477);

-- 2
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Abciximab', 19477905);

-- 3
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Ácido acetil-salicilico', 48365017);

-- 4
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Benzfetamina', 73817149);

-- 5
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Bepridilo', 21795449);

-- 6
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Benzotropina', 53531907);

-- 7
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Betametasona', 84588551);

-- 8
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Clonazepam', 50384259);

-- 9
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Clonidina', 96025474);

-- 10
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Clopidogrel', 19055787);

-- 11
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Clorazepato', 69780821);

-- 12
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Dantroleno', 30306147);

-- 13
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Dapsona', 97290480);

-- 14
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Daptomicina', 54158073);

-- 15
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Darbepoetina', 53423089);

-- 16
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Enalapril', 49063501);

-- 17
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Enfuvirtida', 38656103);

-- 18
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Enoxaparina', 30626464);

-- 19
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Entacapona', 80711691);

-- 20
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Flecainida', 17877397);

-- 21
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Fluconazol', 85550311);

-- 22
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Flucitosina', 21028829);

-- 23
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Fludarabina', 70411936);

-- 24
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Gatifloxacino', 48599349);

-- 25
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Gemcitabina', 25132189);

-- 26
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Gemfibrozilo', 45076827);

-- 27
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Gefitinib', 74427047);

-- 28
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Hidromorfona', 14397698);

-- 29
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Hidroquinona', 92471376);

-- 30
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Hidroxicloroquina', 60844986);

-- 31
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Hidroxiurea', 27924957);

-- 32
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Imipramina', 86679975);

-- 33
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Imiquimod', 30966237);

-- 34
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Indinavir', 83584178);

-- 35
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Indometacina', 96311763);

-- 36
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Ketoconazol', 88285858);

-- 37
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Ketorolaco', 36619078);

-- 38
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Latanoprost', 55406906);

-- 39
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Leflunomida', 74791851);

-- 40
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Lenalidomida', 46889626);

-- 41
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Lepirudina', 62038007);

-- 42
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Meloxicam', 62014952);

-- 43
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Melfalán', 52270641);

-- 44
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Memantina', 13408656);

-- 45
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Mercaptopurina', 85593550);

-- 46
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Nafarelina', 71513874);

-- 47
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Naftifina', 82265169);

-- 48
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Naltrexona', 85299504);

-- 49
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Nafazolina', 16579759);

-- 50
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Olanzapina', 34408842);

-- 51
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Olmesartán', 62379741);

-- 52
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Olopatadina', 84779291);

-- 53
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Olsalazina', 64161128);

-- 54
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Pegaptanib', 32975363);

-- 55
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Pegfilgrastim', 30066823);

-- 56
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Peginterferón alfa-2b', 57726723);

-- 57
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Pegvisomant', 46726401);

-- 58
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Quetiapina', 60643863);

-- 59
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Quinacrine', 14727746);

-- 60
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Quinapril', 80979837);

-- 61
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Quinina', 92751273);

-- 62
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Raloxifeno', 57600094);

-- 63
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Raltegravir', 29781559);

-- 64
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Ramelteón', 47834728);

-- 65
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Ramipril', 28571878);

-- 66
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Sulfuro de selenio', 99000902);

-- 67
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Senna', 11032206);

-- 68
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Sertralina', 30428869);

-- 69
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Sevelamer', 33353236);

-- 70
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Tadalafilo', 29699840);

-- 71
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Tamsulosina', 95037105);

-- 72
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Tazaroteno', 77872784);

-- 73
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Telbivudina', 78783293);

-- 74
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Undecilenato', 10269021);

-- 75
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Unoprostona', 71314118);

-- 76
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Ácido ursodesoxicólico', 52697433);

-- 77
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Valganciclovir', 84742731);

-- 78
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Valproato', 27831814);

-- 79
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Valsartán', 25068895);

-- 80
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Vancomicina', 11913758);

-- 81
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Warfarina', 73020562);

-- 82
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Xilometazolina', 37480953);

-- 83
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Yohimbina', 90265471);

-- 84
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Zafirlukast', 16806239);

-- 85
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Zaleplón', 42522158);

-- 86
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Zanamivir', 92282456);

-- 87
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Zidovudina (AZT)', 51251747);

-- 88
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Zileutón', 43328702);

-- 89
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Tetraciclina', 11541426);

-- 90
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Tetrahidrozolina', 15763088);

-- 91
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Talidomida', 91454955);

-- 92
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Teofilina', 97377874);

-- 93
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Estreptoquinasa', 38125508);

-- 94
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Estreptozocina', 47908016);

-- 95
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Succímero', 79751861);

-- 96
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Succinilcolina', 26562142);

-- 97
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Sucralfato', 81797281);

-- 98
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Sufentanilo', 85894609);

-- 99
INSERT INTO FARMACIA.INGREDIENTES_ACTIVOS
(ingrediente_activo, sku)
VALUES ('Ropinirol', 37875137);

--------------------

-- 0
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('QCSZ579843FURYGD80', 13408656, '2001-08-24', '11:09', 's', 'efectivo', 10);

-- 1
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NWGD202887OLPDHK60', 95037105, '2007-11-11', '10:29', 'n', 'tarjeta de crédito', 2);

-- 2
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DHIG446268BHTWMX13', 10269021, '2009-06-15', '07:04', 's', 'tarjeta de débito', 1);

-- 3
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('YSIJ111384TSRVYY87', 60844986, '2007-07-07', '05:06', 'n', 'monedero electrónico', 5);

-- 4
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('LEQM852390YTKWZF50', 74020477, '2010-05-20', '05:43', 's', 'efectivo', 10);

-- 5
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('FOWJ109854WBWVEG15', 37875137, '2016-12-10', '15:39', 'n', 'tarjeta de crédito', 10);

-- 6
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('VSYE675412QGTCPC99', 10269021, '2013-03-18', '17:27', 's', 'tarjeta de débito', 6);

-- 7
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('PRXK278424WTGHEO80', 47908016, '2006-08-07', '07:22', 'n', 'monedero electrónico', 1);

-- 8
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('CLJN842101XPLOFI94', 30428869, '2017-11-01', '18:49', 's', 'efectivo', 8);

-- 9
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('XFEA747926PACINI45', 92471376, '2008-01-10', '15:10', 'n', 'tarjeta de crédito', 3);

-- 10
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ZXRU235386DUYJTU79', 57600094, '2007-01-06', '14:03', 's', 'tarjeta de débito', 2);

-- 11
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('IIZP825881CZOALZ54', 33353236, '2006-09-24', '08:22', 'n', 'monedero electrónico', 5);

-- 12
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('MQCV364855OUITLF37', 54158073, '2008-10-11', '12:16', 's', 'efectivo', 6);

-- 13
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NDGI068899XJGSUE87', 71513874, '2009-06-19', '05:06', 'n', 'tarjeta de crédito', 4);

-- 14
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('UEZZ110441VXCQLU74', 69780821, '2012-01-16', '14:20', 's', 'tarjeta de débito', 10);

-- 15
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('JVNS291039KWEXHD62', 29699840, '2013-08-23', '16:00', 'n', 'monedero electrónico', 6);

-- 16
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ZRSC485883AWJDFT78', 79751861, '2015-09-22', '14:06', 's', 'efectivo', 3);

-- 17
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('UHRF645445ODUNQS77', 27924957, '2014-11-18', '02:27', 'n', 'tarjeta de crédito', 7);

-- 18
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DMHY197734VOZMBX89', 47908016, '2013-07-08', '07:36', 's', 'tarjeta de débito', 9);

-- 19
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('UJNU055386FNKYQE62', 70411936, '2000-12-14', '00:13', 'n', 'monedero electrónico', 7);

-- 20
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('QJRR811107SYJPAG18', 85593550, '2005-11-21', '14:52', 's', 'efectivo', 3);

-- 21
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ELFU903602BYRTWF15', 17877397, '2013-03-02', '22:33', 'n', 'tarjeta de crédito', 3);

-- 22
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('UACD278124IMUTCH37', 97290480, '2006-09-20', '22:56', 's', 'tarjeta de débito', 1);

-- 23
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('GFQL161773SSGFRJ56', 33353236, '2008-01-15', '13:22', 'n', 'monedero electrónico', 8);

-- 24
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('FKWS168722RTLZMT52', 84588551, '2000-09-20', '11:27', 's', 'efectivo', 2);

-- 25
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('GCAE828154RMJOIR61', 71314118, '2007-04-17', '14:57', 'n', 'tarjeta de crédito', 9);

-- 26
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('IGFS766410HEDOOP58', 25132189, '2003-01-30', '02:01', 's', 'tarjeta de débito', 9);

-- 27
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DQMR531247EEHSXI99', 92471376, '2013-06-11', '03:16', 'n', 'monedero electrónico', 9);

-- 28
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('FBEY713141HGABQU48', 71513874, '2014-09-08', '17:51', 's', 'efectivo', 8);

-- 29
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DEIF304743NQLSSH27', 96025474, '2017-09-29', '18:49', 'n', 'tarjeta de crédito', 4);

-- 30
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NKAU724493MTXNSQ78', 78783293, '2006-04-27', '13:27', 's', 'tarjeta de débito', 5);

-- 31
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('TOUJ842171ZNANRR47', 19477905, '2015-03-18', '17:53', 'n', 'monedero electrónico', 8);

-- 32
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('IGLB952897ALSAWZ90', 36619078, '2015-11-21', '17:23', 's', 'efectivo', 6);

-- 33
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NBHN276128WYQPOL54', 60643863, '2012-03-10', '15:43', 'n', 'tarjeta de crédito', 9);

-- 34
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('KXXP795444AATQZG67', 84779291, '2012-10-13', '19:16', 's', 'tarjeta de débito', 7);

-- 35
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DBRQ297671RGZFQG26', 50384259, '2011-07-30', '10:25', 'n', 'monedero electrónico', 1);

-- 36
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('HQXI928423JMAVAH55', 25132189, '2017-03-20', '10:54', 's', 'efectivo', 5);

-- 37
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('IBAN035333PJBPKH72', 30306147, '2000-07-29', '02:18', 'n', 'tarjeta de crédito', 8);

-- 38
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('GISQ369274HOTHUK79', 84588551, '2013-05-11', '02:02', 's', 'tarjeta de débito', 9);

-- 39
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('SEQP902720BDHQAF28', 64161128, '2014-10-17', '04:37', 'n', 'monedero electrónico', 5);

-- 40
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NIXJ217212IGTAUC82', 50384259, '2006-12-05', '01:14', 's', 'efectivo', 1);

-- 41
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('QOQN970590QAKFIJ01', 88285858, '2003-02-07', '05:32', 'n', 'tarjeta de crédito', 2);

-- 42
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('CBGO185996UQAMNG31', 11032206, '2013-04-12', '14:54', 's', 'tarjeta de débito', 6);

-- 43
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('QPHJ244368OQEABC37', 37480953, '2003-04-09', '08:42', 'n', 'monedero electrónico', 2);

-- 44
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('AJWN037484BPKEKJ95', 86679975, '2003-07-29', '16:46', 's', 'efectivo', 5);

-- 45
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('BYDO324442RGNSZQ44', 99000902, '2008-11-12', '15:52', 'n', 'tarjeta de crédito', 3);

-- 46
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('YUSK048612LKACLW26', 19055787, '2000-08-08', '01:59', 's', 'tarjeta de débito', 10);

-- 47
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NIYG585361ZJJRGH41', 26562142, '2005-03-16', '00:08', 'n', 'monedero electrónico', 1);

-- 48
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('OKRC487083LKGTNW41', 85299504, '2012-06-30', '07:50', 's', 'efectivo', 3);

-- 49
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('UCDP810534UAIACV97', 30306147, '2008-07-24', '22:57', 'n', 'tarjeta de crédito', 9);

-- 50
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('KBRI418368FHQJZP90', 57600094, '2014-02-13', '10:37', 's', 'tarjeta de débito', 2);

-- 51
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('UGIA281059KLZCIR39', 92471376, '2007-02-19', '16:40', 'n', 'monedero electrónico', 10);

-- 52
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('CYUC904662IWQOFH01', 46726401, '2010-01-03', '09:14', 's', 'efectivo', 3);

-- 53
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('OQHW025810EJNLNC31', 99000902, '2011-04-25', '20:20', 'n', 'tarjeta de crédito', 1);

-- 54
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ZUYX924485LTLYAS19', 96025474, '2008-02-04', '05:59', 's', 'tarjeta de débito', 7);

-- 55
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('VYCA082252GGPOGP47', 59485109, '2009-01-26', '11:12', 'n', 'monedero electrónico', 3);

-- 56
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('GSXJ684356CSXIYQ34', 25068895, '2003-09-27', '18:29', 's', 'efectivo', 1);

-- 57
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('CLOH331137CJAGOU27', 79751861, '2009-02-16', '09:46', 'n', 'tarjeta de crédito', 8);

-- 58
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('BAIB280357WAKGQC25', 73817149, '2002-01-14', '10:25', 's', 'tarjeta de débito', 8);

-- 59
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('FKDV272933SAPSWT81', 64161128, '2005-03-13', '04:34', 'n', 'monedero electrónico', 5);

-- 60
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('PRNO937038FKKQZS96', 59485109, '2017-06-04', '02:58', 's', 'efectivo', 9);

-- 61
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ECHF567470XNVAGH51', 30066823, '2017-07-05', '06:41', 'n', 'tarjeta de crédito', 9);

-- 62
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('VAVV911377WPXOWT13', 11032206, '2013-11-01', '19:19', 's', 'tarjeta de débito', 8);

-- 63
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('QRVT835395MKNXRK27', 47834728, '2008-04-09', '00:29', 'n', 'monedero electrónico', 2);

-- 64
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('STTK784422SSZUZQ09', 92282456, '2005-06-19', '18:10', 's', 'efectivo', 7);

-- 65
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('JIHT365281QNORKX69', 91454955, '2002-02-07', '07:36', 'n', 'tarjeta de crédito', 3);

-- 66
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NGYB287322RVGPLI00', 71314118, '2011-09-15', '05:30', 's', 'tarjeta de débito', 10);

-- 67
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DGOO872006GMHWRU71', 62379741, '2007-01-08', '10:02', 'n', 'monedero electrónico', 7);

-- 68
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('VDCA926916YGOPLX74', 11913758, '2011-12-05', '22:47', 's', 'efectivo', 6);

-- 69
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('EBRT011874WVQYVC03', 48599349, '2014-05-23', '21:59', 'n', 'tarjeta de crédito', 8);

-- 70
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('VVJV735129UOTNOW86', 36619078, '2011-04-19', '06:10', 's', 'tarjeta de débito', 2);

-- 71
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DZPK779756APIBEM16', 70411936, '2013-05-06', '18:10', 'n', 'monedero electrónico', 1);

-- 72
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ZMNU711598GSDQJT07', 96311763, '2014-01-26', '07:47', 's', 'efectivo', 3);

-- 73
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('MPDQ801816ORVGIM66', 80979837, '2006-08-17', '09:12', 'n', 'tarjeta de crédito', 9);

-- 74
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('AFKH790612YANUFL72', 71513874, '2008-07-03', '18:59', 's', 'tarjeta de débito', 4);

-- 75
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('PTMJ213151NXHRBC84', 30966237, '2002-02-28', '17:12', 'n', 'monedero electrónico', 6);

-- 76
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NEAM995254MCUWZH62', 90265471, '2009-09-19', '19:22', 's', 'efectivo', 2);

-- 77
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('BGNW832327TVNFAK34', 84588551, '2000-12-08', '08:40', 'n', 'tarjeta de crédito', 7);

-- 78
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('WVLE908194LAHKCV69', 74791851, '2002-09-26', '03:21', 's', 'tarjeta de débito', 6);

-- 79
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('DDVA852446EPATEG22', 80979837, '2014-06-16', '13:51', 'n', 'monedero electrónico', 4);

-- 80
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('OQIW027425DZZJIG38', 71513874, '2003-12-04', '06:17', 's', 'efectivo', 1);

-- 81
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('WGWU309415LUAEDV40', 10269021, '2001-04-02', '20:45', 'n', 'tarjeta de crédito', 3);

-- 82
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('MNIN775884FNPMRL54', 85894609, '2014-03-16', '08:34', 's', 'tarjeta de débito', 5);

-- 83
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('NPJO985323WRRDAY85', 29699840, '2016-01-23', '03:11', 'n', 'monedero electrónico', 2);

-- 84
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('LSIU608830TOYZIX01', 19055787, '2009-05-16', '07:04', 's', 'efectivo', 9);

-- 85
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('OUBP138055QEQSJA34', 11541426, '2003-09-07', '22:15', 'n', 'tarjeta de crédito', 2);

-- 86
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ARZF029384WEMCXP24', 90265471, '2002-07-10', '11:43', 's', 'tarjeta de débito', 7);

-- 87
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('EKUK250512OWUHAU49', 57600094, '2001-05-09', '17:09', 'n', 'monedero electrónico', 6);

-- 88
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('VAQE500534GMXMKF50', 69780821, '2007-10-28', '08:17', 's', 'efectivo', 10);

-- 89
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('VZPU619037BFOEJW93', 53423089, '2001-11-07', '13:00', 'n', 'tarjeta de crédito', 1);

-- 90
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('LKOY942289EVIEOW81', 37875137, '2004-09-15', '00:20', 's', 'tarjeta de débito', 10);

-- 91
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('TOJY793949DCGRLL87', 42522158, '2004-03-28', '14:49', 'n', 'monedero electrónico', 7);

-- 92
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('FRAA727517FSGMYP25', 14727746, '2017-04-04', '01:55', 's', 'efectivo', 6);

-- 93
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('MTRX704880OSONBG84', 36619078, '2013-04-02', '09:31', 'n', 'tarjeta de crédito', 10);

-- 94
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('KXMW127712KFKERE02', 83584178, '2007-04-07', '20:34', 's', 'tarjeta de débito', 1);

-- 95
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('UFUZ556413MWQNJN75', 10269021, '2015-07-23', '13:39', 'n', 'monedero electrónico', 2);

-- 96
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('JLBN098470KQEKFF00', 26562142, '2013-02-28', '13:41', 's', 'efectivo', 10);

-- 97
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('RPQU464521SENQOL82', 33353236, '2004-12-30', '14:43', 'n', 'tarjeta de crédito', 9);

-- 98
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('ULJW732539WGIYVO56', 16806239, '2004-12-29', '11:03', 's', 'tarjeta de débito', 3);

-- 99
INSERT INTO FARMACIA.COMPRAR
(curp, sku, fecha, hora, requiere_domicilio, tipo_pago, cantidad)
VALUES ('YAZU781536ZSOHDT71', 62014952, '2008-06-17', '11:35', 'n', 'monedero electrónico', 5);

------------

-- 0
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DUJT520385WWSSPZ92', 'Damaris', 'Xihuitl', 'Talavera', 'La 5° avenida', 'El Rosario', 'Alvaro Obregon', 'San Luis Potosí', 'Santo Domingo', 'Victoria', 'Rio San Joaquin', 'Ninguna', 21539, 267, 201, 'DDLX3691467P1', 47517411843);

-- 1
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FNBP664860NDTTUA58', 'Elrond', 'Yxtlamati', 'Ureste', 'Eje 3', 'Del Gas', 'Benito Juarez', 'Yucatán', 'Santo Domingo', 'Via Veneto', 'Campos Eliseos', 'Ninguna', 49576, 82, 359, 'MEUE4809978X8', 36865158903);

-- 2
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JXUM191601LNNIRT40', 'Kevin', 'Garrido', 'Namorado', 'Portobello Road', 'La Raza', 'Milpa Alta', 'Nayarit', 'Hatelia', 'Miguel de Cervantes', 'Constituyentes', 'Ninguna', 61322, 394, 400, 'DGCT3052665I1', 75975257744);

-- 3
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RZFQ610211TZYOBB26', 'Roheryn', 'Fragoso', 'Olguin', 'Universidad', 'Arenal', 'Alvaro Obregon', 'Tlaxcala', 'Isildur', 'Sunset Boulevard', 'Eje 10', 'Ninguna', 44353, 316, 292, 'CVRA2238166K8', 78913582300);

-- 4
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PBGM829968NNQNIO68', 'Lili', 'Frade', 'Fraga', 'Altavista', 'Nuevo San Rafael', 'Iztacalco', 'Tlaxcala', 'Guadalajara', 'Eje 10', 'Bolivar', 'Ninguna', 42258, 331, 243, 'IJKE5611302N1', 32043738690);

-- 5
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ABTO310894IGIIPY04', 'Karla', 'Lagunas', 'Yxtlamati', 'Eje 8', 'Clavería', 'Azcapotzalco', 'Guerrero', 'Moscú', '16 de Septiembre', 'Regina', 'Ninguna', 83390, 133, 315, 'PDJR2222664F4', 79292516768);

-- 6
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZKVB944162EQIXJW74', 'Kevin', 'Ysidro', 'Dorantes', 'Calzada de Tlalpan', 'Ferrería', 'Magdalena Contreras', 'Oaxaca', 'Buenos Aires', 'Iman', 'Abbey Road', 'Ninguna', 18079, 61, 202, 'ZOXI0829450M8', 53325603034);

-- 7
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BNEV679820FIYJMS98', 'Fatima', 'Garnica', 'Climaco', 'Eje 7', 'Pantaco', 'Milpa Alta', 'Sinaloa', 'Casterly Rock', 'Colima', 'Copilco', 'Ninguna', 13386, 175, 5, 'TCIM8562725F8', 39921990711);

-- 8
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PNEN694790NDTMFC05', 'Theoden', 'Idalgo', 'Ysidro', 'Plaza Dam', 'San Antonio', 'Alvaro Obregon', 'San Luis Potosí', 'Buenos Aires', 'Reforma', 'Regina', 'Ninguna', 33315, 193, 326, 'NMEW9824986X6', 10334082568);

-- 9
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QOPA743619MZEBLQ57', 'Ernesto', 'Lagunas', 'Namorado', 'Eje 6', 'Del recreo', 'Benito Juarez', 'Nuevo León', 'Lima', 'Miguel Angel de Quevedo', 'Avenida Atlantica', 'Ninguna', 55760, 91, 37, 'VEFU9561613T3', 65792371263);

-- 10
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SDUR546908ZWLSHX31', 'Nagul', 'Barzena', 'Reina', 'Eje 3', 'Industrial Vallejo', 'Coyoacan', 'Tabasco', 'Valyria', 'La Estafeta', 'La Estafeta', 'Ninguna', 78688, 255, 7, 'YCED6315169F2', 48471797623);

-- 11
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('UERO137471MAECIG45', 'Isaac', 'Machorro', 'Anna', 'Eje 2', 'Nueva España', 'Iztacalco', 'Sonora', 'Bogotá', 'Viaducto', 'Eje 5', 'Ninguna', 24078, 379, 391, 'WARM4574910C4', 22110466642);

-- 12
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FWVX382269CGXWIU54', 'Leopoldo', 'Dongu', 'Machorro', 'Brooklyn', 'La Raza', 'Milpa Alta', 'Quintana Roo', 'Seul', 'Bolivar', 'Campos Eliseos', 'Ninguna', 10287, 344, 258, 'ZJOU8615289R3', 47090439678);

-- 13
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PFPE543352VHOYXU21', 'Victor', 'Ladino', 'Idalgo', 'Eje 5', 'Euzkadi', 'Magdalena Contreras', 'Quintana Roo', 'Rivendell', 'Unter den Linden', 'Via Veneto', 'Ninguna', 72571, 42, 159, 'LYFC1014572L2', 62546316411);

-- 14
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('UZTT737905DQAOPG48', 'Laura', 'Umada', 'Talledos', 'Chapultepec', 'Las salinas', 'Coyoacan', 'Quintana Roo', 'Seul', 'Insurgentes', 'Madero', 'Ninguna', 52518, 267, 393, 'MHKA2250624A0', 44691123629);

-- 15
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WDJS323732ELDEIX37', 'Ariel', 'Ysidro', 'Pallares', 'Paseo de la fama', 'Del maestro', 'Gustavo A. Madero', 'Oaxaca', 'Valinor', 'Viaducto', 'Trafalgar Square', 'Ninguna', 23828, 236, 276, 'AZVT9221396K1', 12968679828);

-- 16
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FGFO782944MBPAHX53', 'Nagul', 'Henriquez', 'Varrios', 'Larios', 'Plenitud', 'Coyoacan', 'Campeche', 'Helsinki', 'Orchard Road', 'Sunset Boulevard', 'Ninguna', 98033, 237, 330, 'LZFM9621363D0', 53165678100);

-- 17
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TKWA774276TMERVY27', 'Umbra', 'Namau', 'Vargas', 'Eje 5', 'Las salinas', 'Benito Juarez', 'Chihuahua', 'Leningrado', 'Campos Eliseos', 'Ginza', 'Ninguna', 23241, 399, 399, 'FRZP0161824O6', 94636123757);

-- 18
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZKBN728545PJZVLY57', 'Joel', 'Yvanes', 'Tamaio', 'La Estafeta', 'Nuevo San Rafael', 'Benito Juarez', 'Veracruz', 'Rio de Janeiro', 'Avellaneda', 'Causeway Bay', 'Ninguna', 23999, 346, 69, 'RFPY0166545K4', 53106476271);

-- 19
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OZNF350805GTTMOE80', 'Tamara', 'Sanguino', 'Ibarra', 'Via Dolorosa', 'Ignacio Allende', 'Alvaro Obregon', 'Estado de México', 'Gondor', 'Las Vegas Strip', 'Victoria', 'Ninguna', 14526, 303, 121, 'DYSD3117206Q5', 27457957634);

-- 20
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RKGO879447IOEVJR86', 'Arwen', 'Palasios', 'Garibay', 'Universidad', 'San Alvaro', 'Alvaro Obregon', 'Yucatán', 'Barranquilla', 'Downing Street', '16 de Septiembre', 'Ninguna', 15842, 196, 76, 'RMMC3212401F0', 43304380327);

-- 21
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SVEI182865LICZVM64', 'Irving', 'Jahuey', 'Yxtlamati', 'Colima', 'Obrero Popular', 'Miguel Hidalgo', 'Tlaxcala', 'Moscú', 'Copilco', 'Victoria', 'Ninguna', 17643, 118, 329, 'IRAU8179033I2', 50297526364);

-- 22
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XFBJ045518ITUSFD33', 'Laura', 'Zurita', 'Xaymes', 'Avenida Diagonal', 'Liberación', 'Coyoacan', 'Veracruz', 'Bombay', 'Copilco', 'Castellana', 'Ninguna', 41028, 78, 125, 'EKBH8496986N4', 29608440424);

-- 23
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ODLD869153IQZFQY13', 'Zutano', 'Ansaldo', 'Ansures', 'Unter den Linden', 'Industrial Vallejo', 'Tlalpan', 'Quintana Roo', 'Cartagena', 'Rio San Joaquin', 'Miguel Angel de Quevedo', 'Ninguna', 75208, 53, 395, 'YZLN0636758I7', 99433781304);

-- 24
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JBIU751786FWLQWJ84', 'Karla', 'Palafos', 'Vargas', 'Eje 7', 'La Raza', 'Tlahuac', 'Baja California Sur', 'Kiev', 'Calle Betis', 'La Estafeta', 'Ninguna', 59790, 220, 251, 'QTDW3326578B7', 34970858919);

-- 25
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CMTK580712DEXAEK75', 'Bilbo', 'Ladino', 'Garivay', 'Eje 3', 'San Andres', 'Tlahuac', 'Veracruz', 'Pekin', 'Campos Eliseos', 'Eje 4', 'Ninguna', 48759, 130, 330, 'YDPV6469739D4', 25382466400);

-- 26
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JZGJ536895AARWLR62', 'Ernesto', 'Ansures', 'Infante', 'La 5° avenida', 'Liberación', 'Alvaro Obregon', 'Ciudad de México', 'Kiev', 'Calle Triana', 'Paseo de la fama', 'Ninguna', 48386, 8, 67, 'RDRO8026084D2', 72270416371);

-- 27
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GTMA596214VLNNDA86', 'Ursula', 'Regla', 'Angulo', 'Pennsylvania', 'Clavería', 'Venustiano Carranza', 'Guerrero', 'Guadalajara', 'Calle Triana', 'Mixcalco', 'Ninguna', 78997, 289, 205, 'PPUT2128821E3', 79963950906);

-- 28
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OTLU569091RLWVQX43', 'Dario', 'Ladino', 'Zepeda', 'Eje 2', 'San Antonio', 'Gustavo A. Madero', 'Jalisco', 'Seul', 'Ginza', 'Constituyentes', 'Ninguna', 92855, 113, 170, 'EFQJ0097820I7', 15876088441);

-- 29
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MAQD059011RCEZBY06', 'Xico', 'Vargas', 'Henriquez', 'Downing Street', 'Ecologica', 'Milpa Alta', 'Coahuila', 'Moscú', 'Princesse Grace', 'Castellana', 'Ninguna', 77538, 113, 237, 'KJQN9397605L9', 26180641153);

-- 30
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CUUM204842QGQVJS89', 'Quasimodo', 'Garnica', 'Reina', 'La Estafeta', 'Pantaco', 'Benito Juarez', 'Hidalgo', 'Roma', 'Eje 10', 'Brooklyn', 'Ninguna', 35041, 36, 321, 'VSEX5073911R9', 71196980580);

-- 31
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FZCS843979QEZVTB91', 'Omar', 'Infante', 'Machorro', 'Castellana', 'Liberación', 'Tlahuac', 'Nuevo León', 'Bombay', 'Via Veneto', 'Avenida Diagonal', 'Ninguna', 76331, 398, 33, 'KXUA1241420G6', 30000482693);

-- 32
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WQQR117203ISVLKY43', 'Eunice', 'Palencia', 'Xavier', 'Rio San Joaquin', 'Las salinas', 'Tlahuac', 'Tabasco', 'Valinor', 'Altavista', 'Altavista', 'Ninguna', 85115, 120, 217, 'EAML1519996U2', 80730395482);

-- 33
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YFRN661386JIBPGW84', 'Gaston', 'Zedillo', 'Pallares', 'Wall Street', 'Centro', 'Cuajimalpa', 'Hidalgo', 'Roma', 'Altavista', 'Rodeo Drive', 'Ninguna', 32077, 246, 300, 'ORKH1927112T3', 38772375028);

-- 34
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VDCI372861LMKITO48', 'Eunice', 'Xicotencatl', 'Tamaio', 'La Alameda', 'Nuevo San Rafael', 'Coyoacan', 'Tlaxcala', 'Santiago', 'Victoria', 'La Alameda', 'Ninguna', 95275, 231, 368, 'FIHQ8075862Q2', 50872796563);

-- 35
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FWBR139309AMRPPC29', 'Yuya', 'Henrique', 'Climaco', 'Avenida Diagonal', 'La Raza', 'Coyoacan', 'Morelos', 'Leningrado', 'Abbey Road', 'Mixcalco', 'Ninguna', 31567, 327, 276, 'SMUV4868366F2', 70659994198);

-- 36
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LNAY703886JIOCYX82', 'Pascual', 'Garibaldo', 'Vargas', 'Khao San', 'Nuevo San Rafael', 'Venustiano Carranza', 'Yucatán', 'Oslo', 'Wall Street', 'Las Vegas Strip', 'Ninguna', 16901, 80, 136, 'GBKX8651856M4', 39199729292);

-- 37
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FNCA201324GEFHIE04', 'Vanesa', 'Escalera', 'Urena', 'Miguel Angel de Quevedo', 'Miguel Hidalgo', 'Xochimilco', 'Baja California Sur', 'Moscú', 'Via Veneto', 'Vía Montenapoleone', 'Ninguna', 79564, 321, 44, 'DMIL9189304G4', 27618282910);

-- 38
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SFJO385754ZFKVOK35', 'Umbra', 'Pallares', 'Macario', 'Reforma', 'Aldana', 'Tlahuac', 'Guerrero', 'La Comarca', 'Avellaneda', 'Sunset Boulevard', 'Ninguna', 15535, 194, 183, 'SOME0317667U2', 39139392261);

-- 39
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LNZE966476HKMTEC16', 'Ariel', 'Macario', 'Xaymes', 'Vía Montenapoleone', 'Arenal', 'Milpa Alta', 'Campeche', 'Montevideo', 'Calle de Uría', 'Avenida Amsterdam', 'Ninguna', 12387, 224, 329, 'CEXC9693880Q9', 89883589461);

-- 40
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('UKDX811444LPWWRR74', 'Jael', 'Vargas', 'Urena', 'Lombard Street', 'Liberación', 'Tlahuac', 'Puebla', 'Caracas', 'Universidad', 'Orchard Road', 'Ninguna', 48130, 60, 7, 'QRFS6618117P1', 25041493073);

-- 41
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AOAW637310PIYZHK98', 'Karime', 'Frade', 'Varrientos', 'Eje 3', 'La Raza', 'Venustiano Carranza', 'Michoacán', 'Isildur', 'Miguel de Cervantes', 'Chapultepec', 'Ninguna', 51392, 367, 133, 'DQVW9569243F3', 94287346265);

-- 42
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZRHX143784HEOPGH64', 'Galadriel', 'Zepeda', 'Ladino', 'Portobello Road', 'Nueva Santa María', 'Milpa Alta', 'Aguascalientes', 'Sao Paulo', 'Eje 8', 'Castellana', 'Ninguna', 35775, 165, 385, 'GXKJ2533478R0', 31889714729);

-- 43
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XKRG130875DILYAS34', 'Beatriz', 'Nama', 'Najera', 'Castellana', 'Pantaco', 'Miguel Hidalgo', 'Tabasco', 'Ciudad de México', 'Viaducto', 'Copilco', 'Ninguna', 13897, 215, 342, 'YFKE8354738F8', 78479249930);

-- 44
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YLVW978270FZXYUH89', 'Melkor', 'Escalera', 'Coatl', 'Eje 1', 'Ferrería', 'Gustavo A. Madero', 'Tlaxcala', 'Paris', 'Vía Montenapoleone', 'Castellana', 'Ninguna', 51462, 298, 377, 'SDPG9799876J6', 41681222272);

-- 45
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EJKT747424UNNVNV73', 'Cinderella', 'Idalgo', 'Santa', 'Avenida 9 de Julio', 'Centro', 'Cuajimalpa', 'Guerrero', 'Roma', 'La Rambla', 'Orchard Road', 'Ninguna', 48874, 121, 285, 'EARQ0764624B7', 89802644594);

-- 46
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QUCN868932NDHRHX79', 'Vanesa', 'Urbina', 'Jacoba', 'Avenida 9 de Julio', 'Industrial Vallejo', 'Alvaro Obregon', 'Tlaxcala', 'Rivendell', 'Paseo de la fama', 'Khao San', 'Ninguna', 83994, 360, 56, 'NRTV8427260Z9', 11113763922);

-- 47
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZEIL335005MUNBRB20', 'Ismael', 'Ureste', 'Garivay', 'Venustiano Carranza', 'Pemex prados', 'Azcapotzalco', 'Morelos', 'Oslo', 'Brooklyn', 'Colima', 'Ninguna', 94047, 199, 225, 'WPYM5394636Q5', 68551714584);

-- 48
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OCGM700003KJUHDM89', 'Salomon', 'Macedo', 'Reies', 'Copilco', 'Industrial Vallejo', 'Iztapalapa', 'Campeche', 'Bogotá', 'La Estafeta', 'Downing Street', 'Ninguna', 47575, 256, 119, 'CAMB2537533D0', 58335293670);

-- 49
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZQBS173107IMZKNX50', 'Uriel', 'Jacoba', 'Palencia', 'Avenida Atlantica', 'El Rosario', 'Benito Juarez', 'Hidalgo', 'Paris', 'Campos Eliseos', 'Trafalgar Square', 'Ninguna', 64232, 169, 108, 'YDXW8528459B1', 55763941325);

-- 50
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ELLL931499GGERYX83', 'Rafael', 'Ernandes', 'Machado', 'Alvaro Obregon', 'Pasteros', 'Azcapotzalco', 'Guanajuato', 'Lima', 'Oxford Street', 'Madero', 'Ninguna', 75319, 128, 146, 'CNEW0442739L0', 94789356191);

-- 51
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EOIU037873HUNIWK85', 'Arwen', 'Ansaldo', 'Tamaio', 'Avenida Amsterdam', 'Del recreo', 'Cuajimalpa', 'Sonora', 'Valyria', 'Eje 7', 'Avenida Paulista', 'Ninguna', 98514, 153, 184, 'GKUB1326210J8', 69487033570);

-- 52
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BFPF951082CFHSQI91', 'Narda', 'Oliba', 'Idalgo', 'Avenida Atlantica', 'Petrolera', 'Tlahuac', 'Yucatán', 'Monterrey', 'Calle Triana', 'Eje 7', 'Ninguna', 61186, 345, 12, 'JFRI0526588L4', 42655300726);

-- 53
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CMJR157553ZTIRUJ48', 'Dennis', 'Pallares', 'Palencia', 'Avellaneda', 'Liberación', 'Iztapalapa', 'Durango', 'Gondor', 'Brooklyn', 'Orchard Road', 'Ninguna', 97277, 243, 47, 'RMPD5239567E8', 18652373289);

-- 54
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AMPR882717FWGLER99', 'Nagul', 'Quero', 'Jahuey', 'Calle Betis', 'Ignacio Allende', 'Iztacalco', 'Querétaro', 'Berlin', 'Plaza Dam', 'Las Vegas Strip', 'Ninguna', 19509, 166, 301, 'VXLT6150374C9', 16192734201);

-- 55
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WZYC167831QFXGAK86', 'Efrain', 'Xihuitl', 'Talamantes', 'Princesse Grace', 'Pantaco', 'Tlalpan', 'Colima', 'Rivendell', 'Wall Street', 'Wall Street', 'Ninguna', 21387, 227, 325, 'PCNM3447321J3', 20622277281);

-- 56
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BAGX131028GDKENZ06', 'Dario', 'Henrique', 'Yxtlamati', 'Calle de Uría', 'Cuitlahuac', 'Magdalena Contreras', 'Quintana Roo', 'La Comarca', 'Eje 1', 'Gran vía', 'Ninguna', 70835, 213, 100, 'APYU2441474J6', 25524920497);

-- 57
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IHRS438222IFZKVP68', 'Leopoldo', 'Sandobal', 'Dongu', 'Eje 7', 'Miguel Hidalgo', 'Coyoacan', 'Sinaloa', 'Paris', 'Gran vía', 'Alvaro Obregon', 'Ninguna', 82127, 89, 219, 'SGZH6143445A4', 77988837749);

-- 58
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YOVN837642ZTSDKA94', 'Theoden', 'Regla', 'Ysaguirre', 'Avenida 9 de Julio', 'San Alvaro', 'Venustiano Carranza', 'Durango', 'Paris', 'Eje 8', 'Calle de Uría', 'Ninguna', 62297, 92, 271, 'YBKB8558969D4', 83160166542);

-- 59
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VSAE140040ZOQKTA23', 'Beto', 'Talamantes', 'Garrido', 'La Rambla', 'Ecologica', 'Tlalpan', 'Guerrero', 'Helsinki', 'Calle Betis', 'Iman', 'Ninguna', 58412, 297, 66, 'GUOZ3567987B4', 43780665064);

-- 60
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IBLL249047ODZNMB80', 'Karina', 'Najera', 'Idalgo', 'La 5° avenida', 'Potrero del llano', 'Cuauhtemoc', 'Oaxaca', 'Montevideo', 'Calzada del hueso', 'Pennsylvania', 'Ninguna', 15977, 265, 145, 'WOGB6321589Z6', 46186783564);

-- 61
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JRFP342861MYJNLN59', 'Octavio', 'Dorado', 'Varron', 'Gran vía', 'Nueva España', 'Venustiano Carranza', 'Oaxaca', 'Lima', 'Avenida Paulista', 'Via Dolorosa', 'Ninguna', 63665, 217, 80, 'LMGI6522169H3', 39580123607);

-- 62
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HBIO602680MDMYLB45', 'Jair', 'Olgin', 'Olgin', 'Abbey Road', 'Cuitlahuac', 'Milpa Alta', 'Oaxaca', 'Paris', 'La Rambla', 'Calzada de Guadalupe', 'Ninguna', 37385, 292, 229, 'EDAO8054993R3', 70358266097);

-- 63
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VAGD039713DGLFMY57', 'Nestor', 'Queretano', 'Zarate', 'Plaza Dam', 'Clavería', 'Coyoacan', 'Yucatán', 'Girona', 'Miguel Angel de Quevedo', 'La Rambla', 'Ninguna', 80570, 98, 354, 'CMNX0882138F1', 19871572851);

-- 64
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LMHL092478TJPWLY21', 'Karla', 'Ansures', 'Cleto', 'Paseo de Gracia', 'Nextengo', 'Gustavo A. Madero', 'Michoacán', 'Pekin', 'Ginza', 'Gran vía', 'Ninguna', 88497, 182, 282, 'LHBH1522726J9', 88649682733);

-- 65
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('UNGH686930FYWWKK86', 'Ismael', 'Angulo', 'Macario', 'Avenida Atlantica', 'Angel Zimbron', 'Gustavo A. Madero', 'Michoacán', 'Santiago', 'Eje 4', 'Eje 9', 'Ninguna', 67849, 138, 32, 'QSHE7938173F7', 38739819372);

-- 66
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RCEX464673WSGOVC04', 'Arwen', 'Garibaldo', 'Donate', 'Khao San', 'Cuitlahuac', 'Alvaro Obregon', 'Oaxaca', 'Milan', 'Sunset Boulevard', 'Brooklyn', 'Ninguna', 38217, 135, 396, 'VVLP9495877N6', 89521498541);

-- 67
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('KYPS720853XKRVCC07', 'Jaime', 'Machado', 'Cleto', 'Avenida 9 de Julio', 'Ferrería', 'Cuajimalpa', 'Hidalgo', 'Guadalajara', 'Reforma', 'Constituyentes', 'Ninguna', 62444, 57, 263, 'CLQR8735355X3', 20246874988);

-- 68
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VRAC031361XTDCSC95', 'Rosa', 'Urbana', 'Dongu', 'Calzada del hueso', 'Porvenir', 'Magdalena Contreras', 'Ciudad de México', 'Bogotá', 'Campos Eliseos', 'Universidad', 'Ninguna', 67203, 185, 355, 'PDZQ7831432Z8', 13941195069);

-- 69
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VDHX845651DISSAW73', 'Dennis', 'Ysaguirre', 'Quero', 'Khao San', 'Nextengo', 'Iztacalco', 'Querétaro', 'Oslo', 'Chapultepec', 'Republica de El Salvador', 'Ninguna', 38280, 82, 129, 'TASD5336674W2', 65586376805);

-- 70
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NHMO394616DPLDOI15', 'Eunice', 'Barvosa', 'Quero', 'Eje 3', 'Nueva Santa María', 'Tlalpan', 'Colima', 'Leningrado', 'Eje 1', 'Eje 7', 'Ninguna', 86211, 372, 296, 'XMFH3980228U2', 15370388262);

-- 71
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QJLX852617HFGPBN33', 'Arwen', 'Olea', 'Garibay', 'Sunset Boulevard', 'El Rosario', 'Cuajimalpa', 'Tamaulipas', 'Gondor', 'Downing Street', 'Paseo de la fama', 'Ninguna', 64855, 354, 268, 'TMGI9384714Z5', 79873875867);

-- 72
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NNFS870029LDUZBC50', 'Faramir', 'Regino', 'Angulo', 'Paseo de la fama', 'Ecologica', 'Miguel Hidalgo', 'Morelos', 'Brasilia', 'Lombard Street', 'Causeway Bay', 'Ninguna', 20196, 369, 162, 'JNOZ5810603E2', 81732949058);

-- 73
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GTQN799319OESOGO44', 'Beatriz', 'Reies', 'Ysaguirre', 'Calle Triana', 'Los Reyes', 'Xochimilco', 'Michoacán', 'Londres', 'Eje 6', 'Calle de Preciados', 'Ninguna', 28778, 366, 288, 'QVRR7090556K3', 99121544235);

-- 74
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QVYA617980GPGGEZ23', 'Manuel', 'Fonseca', 'Hererra', 'Masaryk', 'Coltongo', 'Tlahuac', 'Yucatán', 'Taipei', 'Miguel de Cervantes', 'Universidad', 'Ninguna', 98655, 274, 338, 'RVFC1142850J7', 75980734354);

-- 75
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FCOY822521VAZYGN95', 'Xico', 'Urbana', 'Quero', 'Avenida Diagonal', 'Pemex prados', 'Venustiano Carranza', 'Zacatecas', 'Montevideo', 'Eje 5', 'Princesse Grace', 'Ninguna', 56720, 34, 137, 'WVKV5176244U6', 56407309821);

-- 76
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LYDN893450JZCRJU07', 'Patricio', 'Yvanes', 'Jacobo', 'Eje 9', 'Centro', 'Azcapotzalco', 'Puebla', 'Carabobo', 'Constituyentes', 'Chapultepec', 'Ninguna', 13434, 331, 163, 'HVPI6900932L3', 63700814441);

-- 77
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YPOY882577GBAUOD48', 'Rafael', 'Quenca', 'Jacobo', 'Campos Eliseos', 'San Alvaro', 'Alvaro Obregon', 'Nayarit', 'Londres', 'Rodeo Drive', 'Miguel de Cervantes', 'Ninguna', 22138, 70, 357, 'ZLDZ5435658H4', 56081124461);

-- 78
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('KRFI125551FIRHAO86', 'Jair', 'Urena', 'Coba', 'Chapultepec', 'San Alvaro', 'Coyoacan', 'Sinaloa', 'Bogotá', 'Madero', 'La Estafeta', 'Ninguna', 56849, 13, 337, 'UBPH9236236D6', 11426085959);

-- 79
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SWGI088105AMLQOF18', 'Bilbo', 'Ysidro', 'Namorado', 'Sunset Boulevard', 'Potrero del llano', 'Benito Juarez', 'Michoacán', 'Moscú', 'Eje 6', 'Abbey Road', 'Ninguna', 84509, 32, 13, 'QGWH6534923L3', 12029296237);

-- 80
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EGDQ347498QQRPUN80', 'Efrain', 'Reies', 'Errera', 'Gran vía', 'Nuevo San Rafael', 'Miguel Hidalgo', 'Puebla', 'Brasilia', 'Las Vegas Strip', 'Princesse Grace', 'Ninguna', 28190, 184, 273, 'ZHKK3311699G8', 44867795648);

-- 81
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IHGB442064PILXWJ96', 'Omar', 'Pallares', 'Umada', 'Calzada de Guadalupe', 'Providencia', 'Magdalena Contreras', 'Coahuila', 'Moscú', 'Paseo de Gracia', 'Eje 5', 'Ninguna', 32688, 106, 303, 'WQRC4234671H3', 65972834453);

-- 82
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BHCQ424631UOIFIP48', 'Umbra', 'Frade', 'Reina', 'Avellaneda', 'Obrero Popular', 'Iztapalapa', 'San Luis Potosí', 'Buenos Aires', 'Colima', 'Universidad', 'Ninguna', 18804, 363, 2, 'NJIK6767357X8', 67327705610);

-- 83
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EBNU455599MZBNNT21', 'Rafael', 'Henrique', 'Jaen', 'Insurgentes', 'Patrimonio Familiar', 'Venustiano Carranza', 'Yucatán', 'Barranquilla', 'Copilco', 'Eje 4', 'Ninguna', 39088, 259, 268, 'ZFSQ7115469H6', 49208476472);

-- 84
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XYSQ176402ZRMDAI57', 'Peregrin', 'Talavera', 'Frade', 'Alvaro Obregon', 'Nextengo', 'Magdalena Contreras', 'Tamaulipas', 'Brasilia', 'Trafalgar Square', 'Viaducto', 'Ninguna', 12800, 78, 74, 'ROXI5010146Z3', 58146171229);

-- 85
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VMQV653925ALHWDZ19', 'Damaris', 'Dongu', 'Zedillo', 'Eje 7', 'La Raza', 'Magdalena Contreras', 'Veracruz', 'Guadalajara', 'Calle de Uría', 'Calzada de Tlalpan', 'Ninguna', 54553, 64, 388, 'WLHQ9353864V7', 15252970313);

-- 86
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CTGA150693BNGLLD61', 'Valar', 'Talamantes', 'Umada', 'Via Dolorosa', 'San Andres', 'Cuajimalpa', 'Coahuila', 'Ciudad de México', 'Trafalgar Square', 'Reforma', 'Ninguna', 59304, 80, 113, 'RYVD4564662H0', 98310927330);

-- 87
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YYNJ718266YGYPFG62', 'Haldir', 'Sanchez', 'Namorado', 'Orchard Road', 'Coltongo', 'Azcapotzalco', 'Yucatán', 'Hatelia', 'Paseo de la fama', 'Universidad', 'Ninguna', 27252, 73, 6, 'WGUC1303266X9', 15096584501);

-- 88
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BFDO671516EYAOTO44', 'Raul', 'Ladino', 'Palafos', 'La Rambla', 'Potrero del llano', 'Benito Juarez', 'Tlaxcala', 'Ciudad de México', 'Calle Betis', 'Via Veneto', 'Ninguna', 78404, 265, 95, 'GJPA6407338C8', 43933148076);

-- 89
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TCSA375332XZJWVY92', 'Raul', 'Varron', 'Dongu', 'Sheikh Zayed Road', 'Patrimonio Familiar', 'Benito Juarez', 'Sinaloa', 'Lima', 'Calzada del hueso', 'Regina', 'Ninguna', 15096, 45, 32, 'FQCX4641553L6', 61892019463);

-- 90
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PDGI374816NXFMZI47', 'Rafael', 'Sanguino', 'Vargas', 'San Pablo', 'Nextengo', 'Gustavo A. Madero', 'Puebla', 'Leningrado', 'Sheikh Zayed Road', 'Mixcalco', 'Ninguna', 61473, 241, 297, 'HZCO2962542U5', 70864241617);

-- 91
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZUTO686141PSPSQW05', 'Hector', 'Labrador', 'Sanmiguel', 'Calzada de Tlalpan', 'El Rosario', 'Coyoacan', 'Puebla', 'Bogotá', 'Sunset Boulevard', 'Rodeo Drive', 'Ninguna', 98722, 182, 46, 'ADKG5679267S5', 90720381226);

-- 92
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AQDF281375MKZNQY18', 'Nadia', 'Garibay', 'Ladron', 'Rio San Joaquin', 'Petrolera', 'Venustiano Carranza', 'Quintana Roo', 'Guadalajara', 'Brooklyn', 'Eje 5', 'Ninguna', 18600, 238, 77, 'WSTQ7312698T8', 64473735883);

-- 93
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ELSU905133UPCBWR61', 'Octavio', 'Nama', 'Zepeda', 'Avenida Amsterdam', 'Ecologica', 'Milpa Alta', 'Tabasco', 'Rio de Janeiro', 'Delfin Madrigal', 'Viaducto', 'Ninguna', 80258, 330, 134, 'CWKI1176438J7', 28140558047);

-- 94
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FYEG274215PMCEEQ89', 'Dennis', 'Anrriquez', 'Reies', 'Eje 10', 'Del Gas', 'Tlahuac', 'Morelos', 'Buenos Aires', 'Calzada de Guadalupe', 'Avenida 9 de Julio', 'Ninguna', 75490, 299, 49, 'NMME3426099D3', 98550110638);

-- 95
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PRCV782276NSIXMV83', 'Frodo', 'Escalante', 'Xavier', 'Calle Betis', 'Libertad', 'Tlalpan', 'Sonora', 'Pekin', 'Calle de Uría', 'Avenida 9 de Julio', 'Ninguna', 34316, 199, 51, 'FLBM5581554V1', 44396849834);

-- 96
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NLMN741977RKTHGE81', 'Jair', 'Garnica', 'Yvanes', 'Ginza', 'Euzkadi', 'Magdalena Contreras', 'Sinaloa', 'Lima', 'Causeway Bay', 'Abbey Road', 'Ninguna', 14587, 308, 63, 'HAWI2767865F4', 61846006158);

-- 97
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CBRE030342YRPZUS23', 'Pascual', 'Pallares', 'Quero', 'Calzada del hueso', 'La Raza', 'Venustiano Carranza', 'Coahuila', 'Cartagena', 'Rio San Joaquin', 'Larios', 'Ninguna', 79154, 256, 107, 'XAVT1516225W1', 71412423191);

-- 98
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HYCB358062DVRRLI75', 'Wanderley', 'Labrador', 'Basan', 'Regina', 'San Andres', 'Venustiano Carranza', 'Guerrero', 'Sao Paulo', 'Victoria', 'Via Veneto', 'Ninguna', 13424, 215, 277, 'SAJR5000305L9', 28651070900);

-- 99
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZOOW730640LHDAUA14', 'Magdalena', 'Palasios', 'Macedo', 'Plaza Dam', 'Arenal', 'Magdalena Contreras', 'Jalisco', 'Santo Domingo', 'Calzada de Guadalupe', 'Abbey Road', 'Ninguna', 20025, 100, 250, 'WRQE9009961A4', 97048033190);

-- 100
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RRTL708582BHEJNM76', 'Dan', 'Macario', 'Dorado', 'Iman', 'Patrimonio Familiar', 'Iztapalapa', 'Sinaloa', 'Leningrado', 'Paseo de la fama', 'Oxford Street', 'Ninguna', 13914, 64, 115, 'VDJB9273790B7', 20335209667);

-- 101
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZRAF443793HSMMDN46', 'Elrond', 'Reina', 'Olibares', 'Paseo de Gracia', 'La Raza', 'Alvaro Obregon', 'Sinaloa', 'Taipei', 'Iman', 'Via Dolorosa', 'Ninguna', 59411, 196, 277, 'SGIF3795249S4', 19261615356);

-- 102
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RPPN022952YUWJOP76', 'Nadia', 'Sanchez', 'Umada', 'Sunset Boulevard', 'San Antonio', 'Venustiano Carranza', 'Nayarit', 'Sao Paulo', 'Eje 4', 'Iman', 'Ninguna', 11825, 100, 153, 'ILMR2984188T4', 47273008384);

-- 103
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TCAH830502BISURQ68', 'Tadeo', 'Quero', 'Sandobal', 'Pennsylvania', 'Ecologica', 'Coyoacan', 'Morelos', 'Madrid', 'Rio San Joaquin', 'Regina', 'Ninguna', 98421, 312, 338, 'TFGY8514917X2', 93252608130);

-- 104
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('POBD171002WYSITM94', 'Nadia', 'Quero', 'Oliba', 'Republica de El Salvador', 'Angel Zimbron', 'Iztacalco', 'Oaxaca', 'Isildur', 'Avenida Amsterdam', 'Ginza', 'Ninguna', 72136, 43, 172, 'ADOD9296003C0', 38708033131);

-- 105
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HHYG249263JDYHAM92', 'Irving', 'Zurita', 'Urena', 'Vía Montenapoleone', 'Nuevo San Rafael', 'Venustiano Carranza', 'Hidalgo', 'Kiev', 'Constituyentes', 'Paseo de la fama', 'Ninguna', 48272, 120, 87, 'XGXX0495651N2', 73990385800);

-- 106
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EGXI919192UXPDLO79', 'Karina', 'Regino', 'Varrios', 'Constituyentes', 'San Antonio', 'Cuauhtemoc', 'Aguascalientes', 'Londres', 'Eje 8', 'Madero', 'Ninguna', 89254, 288, 239, 'GSZL2566344I1', 99766467016);

-- 107
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CZBI207262KYBIBR69', 'Tadeo', 'Sanchez', 'Cobarrubias', 'Lombard Street', 'Coltongo', 'Cuauhtemoc', 'Querétaro', 'Moscú', 'Brooklyn', 'Calzada de Guadalupe', 'Ninguna', 37907, 329, 133, 'QFYE9376209Y9', 22411624231);

-- 108
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IYPY491461CRGQGB84', 'Arwen', 'Xaymes', 'Cleto', 'Via Dolorosa', 'Cuitlahuac', 'Cuajimalpa', 'San Luis Potosí', 'Oslo', 'Unter den Linden', '16 de Septiembre', 'Ninguna', 40374, 197, 64, 'RZTY6876466Z6', 36371138344);

-- 109
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XAKG280970YHRUMU21', 'Magdalena', 'Palafos', 'Ernandes', 'Calzada de Tlalpan', 'Los Reyes', 'Tlahuac', 'Zacatecas', 'Helsinki', 'Orchard Road', '16 de Septiembre', 'Ninguna', 56865, 50, 44, 'PIZJ2869548M4', 14097844059);

-- 110
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PKNN687285STISKL04', 'Jaime', 'Labrador', 'Olea', 'La Rambla', 'Centro', 'Cuajimalpa', 'Estado de México', 'Seul', 'Orchard Road', 'Lombard Street', 'Ninguna', 41811, 314, 218, 'YRKM1558830N6', 96781801355);

-- 111
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OIWM772957KROVOI54', 'Berta', 'Ibarra', 'Machorro', 'Constituyentes', 'Providencia', 'Miguel Hidalgo', 'Guanajuato', 'Monterrey', 'Orchard Road', 'Colima', 'Ninguna', 13058, 266, 171, 'GNTD1600272S3', 48272426581);

-- 112
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YJNY504968RBNSFX19', 'Bilbo', 'Heredia', 'Xavier', 'Trafalgar Square', 'Ignacio Allende', 'Coyoacan', 'Morelos', 'Rivendell', 'Republica de El Salvador', 'Bolivar', 'Ninguna', 45033, 186, 114, 'AQRO1197949L7', 40420840640);

-- 113
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PXBW439349YKQAEG49', 'Octavio', 'Ysaguirre', 'Urbana', 'Madero', 'Del recreo', 'Cuajimalpa', 'Quintana Roo', 'Moscú', 'Las Vegas Strip', 'Eje 8', 'Ninguna', 15366, 66, 112, 'YJTB1558467O1', 71022321358);

-- 114
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZPVH698791JDBMOT45', 'Nestor', 'Ysidro', 'Barva', 'Eje 4', 'San Andres', 'Milpa Alta', 'Hidalgo', 'Taipei', 'Rodeo Drive', 'Via Dolorosa', 'Ninguna', 62668, 181, 269, 'LJUR2787121O7', 87121263724);

-- 115
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QZGA194111UOKSSR19', 'Yakov', 'Namau', 'Henrique', 'Alvaro Obregon', 'Nueva España', 'Magdalena Contreras', 'Michoacán', 'La Comarca', 'Calle de Uría', 'Las Vegas Strip', 'Ninguna', 35824, 342, 292, 'BNTC3056758B6', 87589376203);

-- 116
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HDBV184909ACXITT24', 'Patricio', 'Varrios', 'Jacobo', 'Mixcalco', 'Pemex prados', 'Miguel Hidalgo', 'Nayarit', 'Montevideo', 'Viaducto', 'Avenida Atlantica', 'Ninguna', 50917, 306, 142, 'CJJW7551582P2', 92815510651);

-- 117
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GPCL653439OBKIKI99', 'Ismael', 'Angulo', 'Jahuey', 'Eje 2', 'El Rosario', 'Miguel Hidalgo', 'Nuevo León', 'Bogotá', 'Ginza', 'Via Dolorosa', 'Ninguna', 98270, 191, 33, 'WVYP6274726K3', 22231859584);

-- 118
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZDVW453583ERDALB68', 'Pascual', 'Olgin', 'Donate', 'Altavista', 'Nextengo', 'Cuauhtemoc', 'Campeche', 'Hatelia', 'Unter den Linden', 'La Estafeta', 'Ninguna', 71958, 141, 229, 'KSFN1796119B3', 26057067621);

-- 119
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HKWF015354IDEEUW45', 'Patricio', 'Xihuitl', 'Quero', 'Eje 5', 'Pemex prados', 'Azcapotzalco', 'Ciudad de México', 'Lima', 'Oxford Street', 'San Pablo', 'Ninguna', 60564, 367, 209, 'EPJS3419527R2', 42299142940);

-- 120
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JOVE801177NBQXUD43', 'Irving', 'Urbina', 'Queretano', 'Brooklyn', 'Del Gas', 'Tlalpan', 'Quintana Roo', 'Berlin', 'Downing Street', 'Altavista', 'Ninguna', 51849, 135, 290, 'TZQI2688152V9', 43189672120);

-- 121
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HSMA707993ILEPIA42', 'Theoden', 'Henriquez', 'Fraga', 'Calzada de Tlalpan', 'Aldana', 'Iztacalco', 'Quintana Roo', 'Casterly Rock', 'Republica de El Salvador', 'Sunset Boulevard', 'Ninguna', 88861, 121, 2, 'WJIF6635130R4', 71593131665);

-- 122
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JVRZ107741BTNNFZ35', 'Walter', 'Xaymes', 'Garivay', 'Masaryk', 'Del maestro', 'Benito Juarez', 'Colima', 'Lima', 'Jirón de la unión', 'San Pablo', 'Ninguna', 83398, 171, 130, 'DDVO4969582Y3', 23121486098);

-- 123
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MYRY376099DLAAHE40', 'Yakov', 'Tamaio', 'Ureste', 'La 5° avenida', 'Angel Zimbron', 'Benito Juarez', 'Yucatán', 'Hatelia', 'Pennsylvania', 'Paseo de la fama', 'Ninguna', 83229, 202, 296, 'TNRM6885854B8', 56127815039);

-- 124
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GTWK917658HDEZOI41', 'Mabel', 'Urbina', 'Palencia', 'Avenida Atlantica', 'Plenitud', 'Miguel Hidalgo', 'Guanajuato', 'La Comarca', 'Rodeo Drive', 'Viaducto', 'Ninguna', 19239, 151, 88, 'TZXO2933491T5', 78077919331);

-- 125
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GCYC219950RBVKGR06', 'Roheryn', 'Varrios', 'Sanmiguel', 'Chapultepec', 'Centro', 'Miguel Hidalgo', 'Durango', 'Londres', 'Constituyentes', 'Eje 6', 'Ninguna', 10116, 210, 134, 'JHBZ1362372E0', 49601230103);

-- 126
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EKXR764337AOOWMS55', 'Fatima', 'Ysaguirre', 'Barva', 'Via Veneto', 'Cuitlahuac', 'Coyoacan', 'Guerrero', 'Montevideo', 'Abbey Road', 'Bolivar', 'Ninguna', 16062, 175, 154, 'RKOT5442458L8', 89667728841);

-- 127
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VCKT321426RPRHRB33', 'Faramir', 'Barva', 'Talamantes', 'Eje 7', 'Pemex prados', 'Gustavo A. Madero', 'Estado de México', 'Kiev', 'Avenida 9 de Julio', 'Eje 3', 'Ninguna', 73779, 100, 111, 'DMON0673415G4', 60407144503);

-- 128
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZVFP283286BMXVIT67', 'Manuel', 'Macedo', 'Duarte', 'Insurgentes', 'Libertad', 'Benito Juarez', 'Sonora', 'Girona', 'Sunset Boulevard', 'Via Veneto', 'Ninguna', 68323, 366, 52, 'OSKL8288242V8', 80305326419);

-- 129
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CETC406189PYOVUY58', 'Efrain', 'Anrriquez', 'Oliba', 'Sheikh Zayed Road', 'Centro', 'Miguel Hidalgo', 'Puebla', 'Pekin', 'Calle de Preciados', 'Eje 10', 'Ninguna', 90431, 137, 283, 'AKJR4285750C0', 74164331903);

-- 130
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YAAU447540MCBXRI33', 'Walter', 'Ysaguirre', 'Ladron', 'Colima', 'Cuitlahuac', 'Azcapotzalco', 'Durango', 'Brasilia', 'Abbey Road', 'Gran vía', 'Ninguna', 99142, 312, 168, 'ILBF4454333R6', 42153606607);

-- 131
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JKWQ400174DBAJKE94', 'Rosa', 'Ernandes', 'Zepeda', 'Delfin Madrigal', 'Pemex prados', 'Tlahuac', 'Sonora', 'Sao Paulo', 'Republica de El Salvador', 'Avenida Atlantica', 'Ninguna', 44074, 41, 59, 'KEZF3055941O0', 57593124514);

-- 132
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WCZX802291IGFYSV17', 'Patricio', 'Urbina', 'Yxtlamati', 'Paseo de Gracia', 'Ignacio Allende', 'Iztacalco', 'Baja California', 'Londres', 'Gran vía', 'Venustiano Carranza', 'Ninguna', 85300, 92, 288, 'PPCV5112568K6', 77477311316);

-- 133
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HZJF442938EHRLJL85', 'Horacio', 'Quesada', 'Duarte', 'Universidad', 'Liberación', 'Benito Juarez', 'Veracruz', 'Bogotá', 'Regina', 'Avenida Atlantica', 'Ninguna', 83425, 15, 204, 'ZYDU6192703I0', 81296253665);

-- 134
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LXGM045447AAUZQJ02', 'Xico', 'Cleto', 'Ibarra', 'Viaducto', 'Cuitlahuac', 'Tlahuac', 'Tlaxcala', 'Buenos Aires', 'Eje 9', 'Pennsylvania', 'Ninguna', 86548, 140, 215, 'XZSF0133100I1', 78788668718);

-- 135
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MYWT820092XOUKSX87', 'Rafael', 'Escalera', 'Sandobal', 'Sheikh Zayed Road', 'Potrero del llano', 'Iztapalapa', 'Colima', 'Monterrey', 'Avellaneda', 'Eje 8', 'Ninguna', 16973, 123, 73, 'OGSL8630920A8', 96101803633);

-- 136
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XWIX832146GBCLAU73', 'Zutano', 'Olguin', 'Talavera', 'Iman', 'Centro', 'Azcapotzalco', 'Nayarit', 'Guadalajara', 'Avenida Diagonal', 'Princesse Grace', 'Ninguna', 51249, 206, 338, 'NBXX6173814M4', 45207412434);

-- 137
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('USVT694115SHCCPU83', 'Tadeo', 'Dorado', 'Olibares', 'Miguel de Cervantes', 'Cuitlahuac', 'Iztapalapa', 'Campeche', 'Bogotá', 'Paseo de la fama', 'Paseo de Gracia', 'Ninguna', 88042, 338, 281, 'GCDJ2473910P1', 74700924510);

-- 138
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RJBQ960298DSABKG94', 'Jaime', 'Jahuey', 'Ibarra', 'Rodeo Drive', 'Industrial Vallejo', 'Venustiano Carranza', 'Yucatán', 'Cartagena', 'Insurgentes', 'Iman', 'Ninguna', 51598, 211, 338, 'OJYM1617499D5', 63654714577);

-- 139
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RTUO329674RXMPDG70', 'Sarah', 'Garibaldo', 'Xavier', 'Calle Triana', 'Cosmopolita', 'Venustiano Carranza', 'Chiapas', 'Taipei', 'Avellaneda', 'Chapultepec', 'Ninguna', 47312, 320, 143, 'BRXZ6245141O9', 82095726014);

-- 140
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DLJK861752UWSHFB27', 'Xico', 'Tamaio', 'Palafos', 'Avenida Diagonal', 'Pemex prados', 'Alvaro Obregon', 'San Luis Potosí', 'Moscú', 'Eje 6', 'Calle Betis', 'Ninguna', 20148, 16, 317, 'YQYJ8330391C2', 75469615281);

-- 141
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FOUV375066FBULQG33', 'Isaias', 'Reina', 'Basan', 'Sunset Boulevard', 'Liberación', 'Coyoacan', 'Tlaxcala', 'Santiago', 'Las Vegas Strip', 'Eje 9', 'Ninguna', 57932, 16, 233, 'PXXX6077665F5', 59440428835);

-- 142
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CEMJ404375BXDFRI14', 'Mabel', 'Dongu', 'Escalera', 'Viaducto', 'Centro', 'Tlalpan', 'Campeche', 'Girona', 'Copilco', 'Eje 7', 'Ninguna', 28741, 299, 28, 'AERF6087700E5', 30896860909);

-- 143
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BWQQ938933IKIXHR97', 'Gabriel', 'Coatl', 'Escamilla', 'Abbey Road', 'San Alvaro', 'Azcapotzalco', 'Baja California', 'Kiev', 'Eje 10', 'Paseo de Gracia', 'Ninguna', 78069, 153, 151, 'STIS7527154Z3', 33778968039);

-- 144
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YNMK058083GPKYDO47', 'Fernando', 'Sanmiguel', 'Henriquez', 'Eje 4', 'Nextengo', 'Venustiano Carranza', 'Baja California', 'Washington', 'Eje 9', 'Princesse Grace', 'Ninguna', 40751, 84, 7, 'COSA0617903B2', 89715619921);

-- 145
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AIZT485557CISQXD32', 'Haldir', 'Regino', 'Henrique', 'Avenida Amsterdam', 'Providencia', 'Iztacalco', 'Sinaloa', 'Rivendell', 'Wall Street', 'Avenida Atlantica', 'Ninguna', 32271, 371, 178, 'PMDW3992719K0', 74520894869);

-- 146
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XEMW261205MUEGJS76', 'Isaias', 'Donate', 'Frade', 'Downing Street', 'San Alvaro', 'Azcapotzalco', 'Jalisco', 'Monterrey', 'Calle de Preciados', 'Viaducto', 'Ninguna', 96511, 194, 257, 'ZCDH1077949G8', 96285523146);

-- 147
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('POEU593586AHZHNV52', 'Boromir', 'Escalera', 'Macario', 'Mixcalco', 'Centro', 'Cuajimalpa', 'Jalisco', 'Monterrey', 'Calle de Uría', 'Calzada de Guadalupe', 'Ninguna', 95124, 186, 46, 'IVQI3027049H8', 82620161037);

-- 148
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GCUP703647PXXCZT02', 'Quasimodo', 'Anrriquez', 'Heredia', 'Regina', 'Jardin Azpeitia', 'Tlalpan', 'Hidalgo', 'Casterly Rock', 'Viaducto', 'Constituyentes', 'Ninguna', 46206, 4, 106, 'CXIW2840728Z4', 96805840499);

-- 149
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TBJK301463TBJWAD46', 'Beto', 'Barvosa', 'Yvanes', 'Sunset Boulevard', 'Ferrería', 'Gustavo A. Madero', 'Zacatecas', 'Paris', 'Trafalgar Square', 'Abbey Road', 'Ninguna', 19875, 66, 346, 'EUIU3436659G8', 17097376406);

-- 150
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NBRQ166554IYHKAG07', 'Quasimodo', 'Regla', 'Sanmiguel', 'Altavista', 'Los Reyes', 'Cuauhtemoc', 'Durango', 'Taipei', 'Brooklyn', 'Downing Street', 'Ninguna', 69926, 334, 336, 'BBPJ7625030U2', 75478671833);

-- 151
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QVSO038951KBDRRX59', 'Ursula', 'Urbina', 'Escalante', 'Calzada del hueso', 'Nextengo', 'Azcapotzalco', 'Michoacán', 'Paris', 'Eje 4', 'La Rambla', 'Ninguna', 74883, 111, 252, 'OKQK2248764X3', 84766370634);

-- 152
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IIUW741877DWGZZL34', 'Karime', 'Machorro', 'Zedillo', 'Wall Street', 'Nuevo San Rafael', 'Tlalpan', 'Chiapas', 'Mereen', 'Bolivar', 'Reforma', 'Ninguna', 74766, 373, 67, 'KBMO2421066F4', 55790449186);

-- 153
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NJAR645650JIGWQZ32', 'Aragorn', 'Xicotencatl', 'Varrios', 'Reforma', 'Nueva España', 'Iztacalco', 'Veracruz', 'Roma', 'Eje 7', 'Eje 9', 'Ninguna', 20123, 264, 14, 'QLJI0475595S0', 39889269932);

-- 154
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MYDG181971URECZL81', 'Salomon', 'Garibaldo', 'Duarte', 'Khao San', 'Centro', 'Magdalena Contreras', 'Chiapas', 'Brasilia', 'Ginza', 'La 5° avenida', 'Ninguna', 95711, 43, 13, 'YGWT6028112W9', 56754017537);

-- 155
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CLEA460756SQUOTW22', 'Nagul', 'Namau', 'Climaco', 'Gran vía', 'Las salinas', 'Tlahuac', 'Tlaxcala', 'Monterrey', 'Gran vía', 'Miguel Angel de Quevedo', 'Ninguna', 10370, 250, 191, 'FHYD2014471V2', 35153067062);

-- 156
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HENU378154GZUUND01', 'Sarah', 'Ladino', 'Macedo', 'Masaryk', 'Petrolera', 'Tlalpan', 'Quintana Roo', 'Gondor', 'Alvaro Obregon', 'Trafalgar Square', 'Ninguna', 97034, 136, 53, 'UUHL6856291L9', 99987501512);

-- 157
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SQTV843259KCEJKV51', 'Octavio', 'Xaymes', 'Regino', 'Madero', 'Nuevo San Rafael', 'Cuajimalpa', 'Jalisco', 'Montevideo', '16 de Septiembre', 'Madero', 'Ninguna', 68269, 179, 282, 'UPRR4711447N2', 51104035528);

-- 158
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZVDX351531FRIXBY22', 'Bilbo', 'Zurita', 'Palasios', 'Altavista', 'Patrimonio Familiar', 'Iztapalapa', 'Sinaloa', 'La Comarca', 'Eje 10', 'Eje 10', 'Ninguna', 60029, 83, 313, 'ORPA9227539W9', 73011075248);

-- 159
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VFIT911730CBFETA69', 'Ernesto', 'Cobarrubias', 'Yvanes', 'La Rambla', 'Pasteros', 'Gustavo A. Madero', 'Ciudad de México', 'La Comarca', 'Calzada de Guadalupe', 'La Estafeta', 'Ninguna', 32429, 178, 9, 'RDRL2951576N6', 15606024739);

-- 160
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DPDO570682HWZCCJ74', 'Salomon', 'Henriquez', 'Errera', 'Portobello Road', 'Pemex prados', 'Alvaro Obregon', 'Colima', 'Rivendell', 'Bolivar', 'Paseo de Gracia', 'Ninguna', 44286, 302, 51, 'RGQO7400273U0', 85361574057);

-- 161
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TCAQ357610WBLUCX40', 'Jair', 'Machado', 'Xaymes', 'Mixcalco', 'Cosmopolita', 'Tlalpan', 'Michoacán', 'Moscú', 'Las Vegas Strip', 'Wall Street', 'Ninguna', 47538, 242, 27, 'WFGD6482116M7', 79892480855);

-- 162
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GCXB230550JFDNOC76', 'Yakov', 'Santa', 'Macedo', 'Colima', 'Monte Alto', 'Milpa Alta', 'Guerrero', 'Montevideo', 'Portobello Road', 'La 5° avenida', 'Ninguna', 65983, 218, 349, 'YTXA5895869T1', 94257854694);

-- 163
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TREC178381ZBEZJC55', 'Jael', 'Varrios', 'Umada', 'Republica de El Salvador', 'El Rosario', 'Milpa Alta', 'Chihuahua', 'Lima', 'Iman', 'Insurgentes', 'Ninguna', 44004, 42, 36, 'UMHI1101270P1', 62593183208);

-- 164
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CJGN141010RKHMRH69', 'Kevin', 'Namorado', 'Frade', 'Causeway Bay', 'Arenal', 'Gustavo A. Madero', 'Baja California', 'Leningrado', 'Larios', 'Insurgentes', 'Ninguna', 67130, 321, 142, 'JSWG4813995I3', 77313878770);

-- 165
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AENN624771GCZIYN27', 'Mabel', 'Olgin', 'Illescas', 'Constituyentes', 'Angel Zimbron', 'Cuajimalpa', 'Quintana Roo', 'Gondor', 'Via Veneto', 'Eje 5', 'Ninguna', 55539, 242, 62, 'HRPW7004137Z2', 44096144092);

-- 166
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EQKK317632ELDGMT33', 'Damaris', 'Donate', 'Escalante', 'Unter den Linden', 'Pasteros', 'Cuajimalpa', 'Yucatán', 'Taipei', 'Calzada de Guadalupe', 'Eje 7', 'Ninguna', 93112, 191, 267, 'FYFN3058745A5', 32959789054);

-- 167
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ANRT843978ABRRUP75', 'Uriel', 'Vargas', 'Pallares', 'Avenida Atlantica', 'Plenitud', 'Coyoacan', 'Chihuahua', 'Ciudad de México', 'Paseo de la fama', 'Chapultepec', 'Ninguna', 19414, 214, 391, 'OYCD2131213F6', 64317438448);

-- 168
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MSMI936618KTYFHJ61', 'Bilbo', 'Machado', 'Escalante', 'Khao San', 'Ferrería', 'Tlahuac', 'Yucatán', 'Monterrey', 'La 5° avenida', 'Calle Betis', 'Ninguna', 99247, 56, 274, 'GXOZ2274045U2', 92491049365);

-- 169
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RBST275248ZLWQBK66', 'Beto', 'Urena', 'Escalera', 'Constituyentes', 'Los Reyes', 'Tlalpan', 'Sonora', 'Caracas', 'Eje 3', 'La 5° avenida', 'Ninguna', 56730, 145, 320, 'OSGU9639819H4', 77152438957);

-- 170
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YIKO514519ISNKDM10', 'Rosa', 'Varrientos', 'Yvanes', 'Eje 5', 'Cuitlahuac', 'Cuajimalpa', 'Quintana Roo', 'Monterrey', 'Pennsylvania', 'Avenida Diagonal', 'Ninguna', 75571, 282, 294, 'HKAI4741662F7', 33730973291);

-- 171
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GDEP392193XCMPNQ38', 'Odo', 'Jacoba', 'Quebedo', 'Abbey Road', 'Jardin Azpeitia', 'Coyoacan', 'Ciudad de México', 'Isildur', 'Eje 8', 'Calle de Preciados', 'Ninguna', 46822, 33, 227, 'POGU7437874S0', 90450903690);

-- 172
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PVCT388680RVCLGD58', 'Raul', 'Xihuitl', 'Ernandes', 'Miguel de Cervantes', 'Pantaco', 'Gustavo A. Madero', 'Oaxaca', 'Madrid', 'La 5° avenida', 'Madero', 'Ninguna', 17388, 361, 338, 'DZVJ4568645T7', 43840752741);

-- 173
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QYFP403555WIPOIC84', 'Sauron', 'Olibares', 'Yvanes', 'Calzada de Tlalpan', 'Pemex prados', 'Benito Juarez', 'Puebla', 'Madrid', 'Eje 1', 'Jirón de la unión', 'Ninguna', 35302, 78, 181, 'PERN2634926M8', 12962349436);

-- 174
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FKBM231726LHAXPT21', 'Umbra', 'Coatl', 'Hererra', 'Larios', 'Plenitud', 'Alvaro Obregon', 'Sinaloa', 'Santo Domingo', 'Avenida Paulista', 'Bolivar', 'Ninguna', 42021, 377, 69, 'GJGB8767266X0', 81715940641);

-- 175
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PVKH699485UVWRSC75', 'Valar', 'Namorado', 'Zarate', 'Campos Eliseos', 'Pantaco', 'Alvaro Obregon', 'Ciudad de México', 'Casterly Rock', 'Eje 10', 'Rio San Joaquin', 'Ninguna', 83551, 15, 58, 'NWFU2310765N9', 99608612496);

-- 176
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TAAQ547340KNSETN48', 'Fatima', 'Ladino', 'Lagunillas', 'Wall Street', 'Los Reyes', 'Alvaro Obregon', 'Guerrero', 'Londres', 'Eje 10', 'Orchard Road', 'Ninguna', 35283, 184, 316, 'VCAG2431130L9', 77786409980);

-- 177
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LVCU261596ISTJXI83', 'Nagul', 'Heredia', 'Yxtlamati', 'Sunset Boulevard', 'La Raza', 'Xochimilco', 'Tabasco', 'Washington', 'Causeway Bay', 'Rio San Joaquin', 'Ninguna', 71487, 366, 202, 'RBQV7514936W9', 49478392031);

-- 178
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VNKT334665ONWYEE04', 'Urko', 'Ibarra', 'Machado', 'Larios', 'Pasteros', 'Tlahuac', 'Sinaloa', 'Madrid', 'Avenida Amsterdam', 'Calzada del hueso', 'Ninguna', 46759, 272, 114, 'IOBQ4333149J0', 59960809509);

-- 179
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IIRD686165RMIUDP94', 'Yuya', 'Dongu', 'Garibay', 'Alvaro Obregon', 'La Raza', 'Coyoacan', 'Ciudad de México', 'Londres', 'Portobello Road', 'Orchard Road', 'Ninguna', 37629, 156, 308, 'INTX9651816W0', 17036474152);

-- 180
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QTQM795489BGQYMU75', 'Urko', 'Fraga', 'Olguin', 'Avenida 9 de Julio', 'Euzkadi', 'Iztapalapa', 'Campeche', 'Girona', 'Eje 4', 'Las Vegas Strip', 'Ninguna', 41270, 163, 16, 'MQZD1497146C7', 76936180749);

-- 181
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FISA775537LLVZFK86', 'Karime', 'Jacoba', 'Zurita', 'Avenida Atlantica', 'Aldana', 'Coyoacan', 'Zacatecas', 'Madrid', 'La 5° avenida', 'Madero', 'Ninguna', 50397, 93, 88, 'RSIL3470783E5', 45547171446);

-- 182
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZXRZ020192KQMWHK48', 'Hernan', 'Urbina', 'Basan', 'Campos Eliseos', 'Pemex prados', 'Iztapalapa', 'Yucatán', 'Rio de Janeiro', 'Khao San', 'Viaducto', 'Ninguna', 65236, 400, 315, 'ZWUF9176077U1', 80738203603);

-- 183
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('POVR857280TCKGHE80', 'Cain', 'Olibares', 'Jahuey', 'Avenida Paulista', 'Ferrería', 'Magdalena Contreras', 'Quintana Roo', 'Oslo', 'Eje 8', 'Gran vía', 'Ninguna', 50433, 294, 234, 'YUSI9603984P9', 67504406731);

-- 184
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BGNK462831VMWCKN72', 'Odo', 'Ladino', 'Jacoba', 'La Alameda', 'Pantaco', 'Cuauhtemoc', 'Jalisco', 'Taipei', 'Las Vegas Strip', 'Rodeo Drive', 'Ninguna', 68943, 283, 316, 'IMAS3897331C2', 85636641412);

-- 185
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ABZO464902GTDFJL32', 'Laura', 'Machorro', 'Zurita', 'Sheikh Zayed Road', 'Coltongo', 'Cuauhtemoc', 'Estado de México', 'Hatelia', 'Sheikh Zayed Road', 'Bolivar', 'Ninguna', 20627, 268, 134, 'JJAO7724693V2', 79230638277);

-- 186
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BPKG168998WKFEHJ59', 'Xochitl', 'Labrador', 'Machorro', 'Gran vía', 'Aldana', 'Miguel Hidalgo', 'Colima', 'Seul', 'Eje 5', 'Reforma', 'Ninguna', 37871, 80, 262, 'UXNX3656063Y2', 33514966779);

-- 187
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SUKY038525SQHAOE00', 'Octavio', 'Talledos', 'Xicotencatl', 'Calle Betis', 'Industrial Vallejo', 'Cuajimalpa', 'Puebla', 'Londres', 'Viaducto', 'Castellana', 'Ninguna', 80507, 219, 112, 'CACE0760937S5', 89846195863);

-- 188
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BBBM513681EQZDJT57', 'Nagul', 'Barva', 'Fragoso', 'Bolivar', 'El Rosario', 'Gustavo A. Madero', 'Zacatecas', 'Bombay', 'Wall Street', 'Lombard Street', 'Ninguna', 14806, 360, 330, 'TGYD1755732U9', 95109109362);

-- 189
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QCIE219210VPQHDZ47', 'Wilfredo', 'Varrios', 'Vargas', 'Reforma', 'Nuevo San Rafael', 'Coyoacan', 'Ciudad de México', 'Seul', 'La Estafeta', 'Colima', 'Ninguna', 43828, 183, 393, 'SFXV4023855Z7', 24379662236);

-- 190
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GXVH053752VUNDOJ80', 'Dennis', 'Jacoba', 'Palasios', 'Copilco', 'Ignacio Allende', 'Azcapotzalco', 'Nayarit', 'Kiev', 'Lombard Street', 'Chapultepec', 'Ninguna', 50867, 113, 129, 'FKZW3237284T0', 24198783453);

-- 191
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ECKB753492KOSBMQ10', 'Yakov', 'Escalera', 'Ysidro', 'Avenida Amsterdam', 'Angel Zimbron', 'Cuajimalpa', 'Veracruz', 'Washington', '16 de Septiembre', 'Trafalgar Square', 'Ninguna', 92574, 156, 208, 'GMBW6361430A8', 76158742257);

-- 192
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XFFE479462QDYIFF86', 'Karime', 'Machorro', 'Coatl', 'Avenida Diagonal', 'Libertad', 'Cuauhtemoc', 'Sinaloa', 'Valyria', 'Universidad', 'Madero', 'Ninguna', 51460, 316, 242, 'XJST1528104Q1', 91972996818);

-- 193
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NGLS472038CYBJCN53', 'Kevin', 'Barva', 'Varron', 'Lombard Street', 'Plenitud', 'Milpa Alta', 'Quintana Roo', 'La Comarca', 'Downing Street', 'Downing Street', 'Ninguna', 52125, 48, 310, 'UXNY7222639B1', 11469222743);

-- 194
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('RPDE993483RPJBZD25', 'Mabel', 'Ladino', 'Zurita', 'Madero', 'Patrimonio Familiar', 'Iztacalco', 'Quintana Roo', 'Barcelona', 'Delfin Madrigal', 'Eje 2', 'Ninguna', 21387, 396, 69, 'SPLB9885426C9', 79437426732);

-- 195
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PPAD243581WDAOTN21', 'Urko', 'Varrios', 'Ladino', 'Avenida Diagonal', 'Nuevo San Rafael', 'Iztacalco', 'Sonora', 'Bombay', 'Altavista', 'Venustiano Carranza', 'Ninguna', 57448, 310, 204, 'WVNG9597944E7', 67741758118);

-- 196
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BTYV363352JKRADE16', 'Xico', 'Sandobal', 'Macario', 'Bolivar', 'Ecologica', 'Iztapalapa', 'Chihuahua', 'Helsinki', 'Iman', 'Calle Triana', 'Ninguna', 42203, 305, 70, 'OVAQ0642549X4', 87111471748);

-- 197
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BYCE307738ZZZUSM80', 'Pedro', 'Talledos', 'Talamantes', 'Calzada de Tlalpan', 'Cosmopolita', 'Iztacalco', 'Baja California Sur', 'Ciudad de México', 'Insurgentes', 'Viaducto', 'Ninguna', 76467, 376, 213, 'TMYG8949010F1', 51428965351);

-- 198
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NDNN821328IVUBXD49', 'Berta', 'Olibares', 'Fonseca', 'Eje 2', 'Los Reyes', 'Miguel Hidalgo', 'Yucatán', 'Valinor', 'Avenida Diagonal', 'La Rambla', 'Ninguna', 77308, 315, 357, 'RYJU9359155H0', 10492127595);

-- 199
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AAII970707NPWAQZ06', 'Quasimodo', 'Jacoba', 'Illescas', 'Via Veneto', 'Nextengo', 'Iztapalapa', 'Querétaro', 'Londres', 'Avenida Paulista', 'Madero', 'Ninguna', 29229, 79, 258, 'MESB5376579D2', 47744495321);

-- 200
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IODW385375CJBFVJ39', 'Karla', 'Queretano', 'Quebedo', 'Jirón de la unión', 'San Antonio', 'Iztapalapa', 'Campeche', 'Barcelona', 'Masaryk', '16 de Septiembre', 'Ninguna', 71445, 117, 126, 'OVEF7044478U3', 96480915846);

-- 201
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CFRC049202PYUUIY74', 'Laura', 'Quebedo', 'Machorro', 'Brooklyn', 'Porvenir', 'Cuauhtemoc', 'Colima', 'Milan', '16 de Septiembre', 'Paseo de Gracia', 'Ninguna', 64675, 193, 184, 'OYHE7675126D3', 36038750933);

-- 202
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NWYH173182ANDLFD12', 'Bilbo', 'Escamilla', 'Cobarrubias', 'Delfin Madrigal', 'San Andres', 'Gustavo A. Madero', 'Jalisco', 'Helsinki', 'Brooklyn', 'Eje 9', 'Ninguna', 72090, 159, 153, 'CPWZ9147272Q7', 86736001882);

-- 203
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HJED307645ZFOBKP14', 'Jaime', 'Xihuitl', 'Varrientos', 'Vía Montenapoleone', 'Nueva España', 'Miguel Hidalgo', 'Baja California', 'Washington', 'Calzada de Tlalpan', 'Eje 9', 'Ninguna', 75426, 158, 297, 'GAQI1358258I7', 77453475941);

-- 204
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HKVO847494YDTOQB16', 'Nestor', 'Quenca', 'Machorro', 'Oxford Street', 'Industrial Vallejo', 'Azcapotzalco', 'Querétaro', 'Casterly Rock', 'Eje 3', 'Castellana', 'Ninguna', 19312, 99, 13, 'PLRZ4657304T3', 77144232884);

-- 205
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VUOY521831YXVEMB13', 'Isaac', 'Zepeda', 'Barvosa', 'Downing Street', 'Plenitud', 'Coyoacan', 'Ciudad de México', 'Moscú', 'Masaryk', 'Calzada del hueso', 'Ninguna', 18811, 260, 399, 'GGPC8605920M2', 18033469062);

-- 206
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FZOS587363NRVKSX31', 'Odo', 'Henriquez', 'Machado', 'Insurgentes', 'Los Reyes', 'Coyoacan', 'Oaxaca', 'Madrid', 'Eje 5', 'Via Veneto', 'Ninguna', 94771, 316, 349, 'DSRQ9602068F7', 66927686807);

-- 207
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DMLV523629QGZSMY25', 'Walter', 'Donate', 'Infante', 'Calle de Preciados', 'Cosmopolita', 'Milpa Alta', 'Tabasco', 'Paris', 'Campos Eliseos', 'Regina', 'Ninguna', 75050, 126, 77, 'UYNE2541709J6', 92115830665);

-- 208
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NZAQ990768HEHOUO72', 'Manuel', 'Palasios', 'Coatl', 'Las Vegas Strip', 'Ecologica', 'Milpa Alta', 'Coahuila', 'Londres', 'Colima', 'Constituyentes', 'Ninguna', 41065, 12, 45, 'BFXT4287219N2', 72748053989);

-- 209
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XOIO603660ESHMMK60', 'Fernando', 'Palencia', 'Dorado', 'Delfin Madrigal', 'Miguel Hidalgo', 'Tlahuac', 'Tamaulipas', 'Lima', 'Vía Montenapoleone', 'Reforma', 'Ninguna', 64603, 61, 314, 'KRHE7992329T6', 48960655210);

-- 210
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('UAZL274413QIKFLN88', 'Leonardo', 'Coatl', 'Zedillo', 'Pennsylvania', 'Cuitlahuac', 'Cuauhtemoc', 'Querétaro', 'Brasilia', 'Venustiano Carranza', 'Chapultepec', 'Ninguna', 18938, 220, 290, 'HOGA5923300K4', 93721499102);

-- 211
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('EUZR374549DQISFW00', 'Melkor', 'Reies', 'Quero', 'Castellana', 'San Andres', 'Iztacalco', 'Colima', 'Caracas', 'Eje 5', 'Brooklyn', 'Ninguna', 50162, 191, 336, 'CUDT6327789W2', 76651511209);

-- 212
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AWYF306074GBJSQY53', 'Faramir', 'Palencia', 'Dorantes', 'Eje 4', 'Ecologica', 'Alvaro Obregon', 'San Luis Potosí', 'Londres', 'Chapultepec', 'Calle de Preciados', 'Ninguna', 20684, 206, 386, 'ATOW3234815Z1', 59705849610);

-- 213
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CDMB904154SMMQEE09', 'Sarah', 'Zedillo', 'Olgin', 'San Pablo', 'Aldana', 'Benito Juarez', 'Jalisco', 'Rio de Janeiro', 'Eje 5', 'Ginza', 'Ninguna', 98069, 4, 326, 'JUFU9579615Z4', 15825459218);

-- 214
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DUJB870324ZGFYCH51', 'Rafael', 'Illescas', 'Quesada', 'Trafalgar Square', 'Obrero Popular', 'Milpa Alta', 'Querétaro', 'Girona', 'Eje 5', 'Causeway Bay', 'Ninguna', 62263, 289, 39, 'OGGZ9103543R6', 23141561341);

-- 215
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FJGL959694QHCBRM70', 'Wanda', 'Talamantes', 'Labrador', 'Jirón de la unión', 'San Antonio', 'Miguel Hidalgo', 'Baja California Sur', 'La Comarca', 'Larios', 'Eje 3', 'Ninguna', 24433, 33, 397, 'KFNL2122564Y5', 18003045150);

-- 216
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OAMG133772SNFLJS03', 'Boromir', 'Garibaldo', 'Dorado', 'Victoria', 'San Andres', 'Gustavo A. Madero', 'Ciudad de México', 'Buenos Aires', 'La Estafeta', 'Eje 7', 'Ninguna', 29023, 92, 243, 'RRJS8106103A4', 52920345908);

-- 217
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VQCU668285BWATRN95', 'Joel', 'Sanmiguel', 'Nama', 'Eje 1', 'Porvenir', 'Xochimilco', 'Michoacán', 'Carabobo', 'Causeway Bay', 'Reforma', 'Ninguna', 94720, 361, 186, 'HGNY1723392U4', 39648331707);

-- 218
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FBJA492561SMXFFM55', 'Roheryn', 'Garnica', 'Garnica', 'Eje 3', 'Plenitud', 'Coyoacan', 'Nuevo León', 'Isildur', 'Orchard Road', 'Constituyentes', 'Ninguna', 64662, 156, 156, 'VXOJ4270598F8', 27430029313);

-- 219
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SLXU964553WUDDCP66', 'Ernesto', 'Quenca', 'Labrador', 'Paseo de Gracia', 'Cosmopolita', 'Cuajimalpa', 'San Luis Potosí', 'Valyria', 'Via Veneto', 'Republica de El Salvador', 'Ninguna', 14916, 19, 381, 'MTWN5009955T0', 76270924911);

-- 220
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ESOM810186YWSOHD80', 'Salomon', 'Olguin', 'Escalante', 'Paseo de la fama', 'Angel Zimbron', 'Milpa Alta', 'Veracruz', 'Cartagena', 'Mixcalco', 'Avenida Paulista', 'Ninguna', 89363, 251, 251, 'BJQT8493936R9', 22276986890);

-- 221
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WHQU509616TVKJLT40', 'Rosa', 'Jahuey', 'Sanmiguel', 'Abbey Road', 'San Antonio', 'Miguel Hidalgo', 'Michoacán', 'Isildur', 'Calzada del hueso', 'Calle Betis', 'Ninguna', 74333, 89, 120, 'BGLY0785746H3', 43301686908);

-- 222
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LHYG168915LPFRFY21', 'Raul', 'Jahuey', 'Fragoso', 'Bolivar', 'Ecologica', 'Xochimilco', 'Oaxaca', 'Valyria', 'Miguel de Cervantes', 'Causeway Bay', 'Ninguna', 58957, 351, 129, 'YOOY7275754I1', 74017570073);

-- 223
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IBGU379166GVBMGO25', 'Kevin', 'Sandobal', 'Garibay', 'Eje 4', 'Porvenir', 'Azcapotzalco', 'Yucatán', 'Barranquilla', 'Reforma', 'Portobello Road', 'Ninguna', 26502, 283, 400, 'LSHV1343397R3', 17461853128);

-- 224
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('JWLA632896FLHOVI00', 'Tamara', 'Lagunas', 'Errera', 'Orchard Road', 'Obrero Popular', 'Cuajimalpa', 'Michoacán', 'Valinor', 'Calzada de Tlalpan', 'Avenida Amsterdam', 'Ninguna', 52360, 391, 310, 'RFGO1968895H0', 93216844210);

-- 225
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('PCJY498066THLGCE83', 'Wanda', 'Errera', 'Nama', 'Alvaro Obregon', 'Clavería', 'Tlahuac', 'Coahuila', 'Moscú', 'Iman', 'Delfin Madrigal', 'Ninguna', 38709, 112, 89, 'ETXC5222090Z2', 85343931873);

-- 226
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DQYE678574MPAGZK36', 'Dario', 'Varrientos', 'Illescas', 'Princesse Grace', 'Liberación', 'Alvaro Obregon', 'Durango', 'Monterrey', 'Orchard Road', 'Avellaneda', 'Ninguna', 48911, 298, 126, 'FZRQ7788000B1', 75853713803);

-- 227
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GVNV382055EYXNDL65', 'Omar', 'Varron', 'Tamaio', 'Wall Street', 'Euzkadi', 'Coyoacan', 'Baja California Sur', 'Brasilia', 'Eje 8', 'Insurgentes', 'Ninguna', 41554, 125, 304, 'QMKB4389970D8', 74086270289);

-- 228
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ROBN299036XKIHTB40', 'Berta', 'Coatl', 'Cleto', 'Iman', 'Angel Zimbron', 'Gustavo A. Madero', 'Guerrero', 'Berlin', 'Castellana', 'Vía Montenapoleone', 'Ninguna', 31792, 214, 2, 'GLBF5722164P9', 55870636568);

-- 229
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YOTC480022YIIEQU99', 'Melkor', 'Dorantes', 'Olgin', 'Bolivar', 'Nuevo San Rafael', 'Alvaro Obregon', 'Morelos', 'Londres', 'Calle Triana', 'Madero', 'Ninguna', 18426, 303, 194, 'ESKJ1001541Y8', 79930591182);

-- 230
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DARF827828IYNKBG41', 'Ursula', 'Garibay', 'Ansaldo', 'Abbey Road', 'Pemex prados', 'Gustavo A. Madero', 'Baja California Sur', 'Carabobo', 'Avenida Paulista', 'Masaryk', 'Ninguna', 21911, 222, 35, 'OKLX6963826K2', 10505471073);

-- 231
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OZPT081473QXSVLQ88', 'Gaston', 'Sandobal', 'Ureste', 'Abbey Road', 'La Raza', 'Alvaro Obregon', 'Hidalgo', 'Ciudad de México', 'Calle de Uría', 'Reforma', 'Ninguna', 39030, 210, 350, 'IZSP9432799A3', 52355573490);

-- 232
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OYWN409553LARZYD51', 'Caifas', 'Garrido', 'Palasios', 'Insurgentes', 'Ferrería', 'Venustiano Carranza', 'Estado de México', 'Bogotá', 'Gran vía', 'Calzada de Guadalupe', 'Ninguna', 81783, 5, 38, 'GIBD4817460G8', 95426410732);

-- 233
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BBGG844394UILLMI67', 'Emanuel', 'Coba', 'Macedo', 'Paseo de Gracia', 'Pantaco', 'Milpa Alta', 'Yucatán', 'Moscú', 'Insurgentes', 'Calle Triana', 'Ninguna', 34368, 146, 305, 'GJGB2858116H9', 75157845474);

-- 234
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BPQF498593KOXTQF12', 'Thorin', 'Santa', 'Olgin', 'Avenida Paulista', 'Arenal', 'Gustavo A. Madero', 'Tabasco', 'Cartagena', 'Khao San', 'Avenida Atlantica', 'Ninguna', 23970, 335, 197, 'KFGE2575044Y2', 98825950855);

-- 235
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AQLR822958OBKJSM09', 'Tadeo', 'Escalera', 'Errera', 'Castellana', 'El Rosario', 'Venustiano Carranza', 'Jalisco', 'Hatelia', 'Mixcalco', 'Constituyentes', 'Ninguna', 27964, 365, 71, 'VWQJ2388698V2', 39212240770);

-- 236
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('IYWW096366LLSOVX87', 'Damaris', 'Ysaguirre', 'Ladino', 'Masaryk', 'Nextengo', 'Cuauhtemoc', 'Oaxaca', 'Milan', 'Brooklyn', 'Las Vegas Strip', 'Ninguna', 81995, 196, 267, 'QIYP3383364T4', 55243714091);

-- 237
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QAAX615703RIWZMO06', 'Umbra', 'Coatl', 'Xihuitl', 'Madero', 'Los Reyes', 'Cuajimalpa', 'Tabasco', 'Sao Paulo', 'Oxford Street', 'Khao San', 'Ninguna', 94719, 329, 48, 'OTHN2555407F7', 61875731001);

-- 238
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MBOO908080JSFFRA58', 'Leonardo', 'Talamantes', 'Varron', 'Eje 2', 'Jardin Azpeitia', 'Iztacalco', 'Tamaulipas', 'Lima', 'Calzada de Guadalupe', 'La Estafeta', 'Ninguna', 50395, 55, 36, 'YFDE6832933V4', 67638947455);

-- 239
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HUXM930630YQCAEP09', 'Theoden', 'Talledos', 'Illescas', 'Sheikh Zayed Road', 'Ignacio Allende', 'Miguel Hidalgo', 'Coahuila', 'Bogotá', 'Paseo de Gracia', 'Chapultepec', 'Ninguna', 80333, 152, 180, 'YCUZ2244563P9', 12972947814);

-- 240
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('AGPE554016LKZQSI92', 'Dido', 'Garibaldo', 'Urbina', 'Sunset Boulevard', 'Obrero Popular', 'Tlahuac', 'Baja California', 'Cartagena', 'Paseo de la fama', 'Calle de Preciados', 'Ninguna', 36971, 178, 238, 'TCVI4046572M3', 15870312406);

-- 241
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('QUFI867711SRQTCU69', 'Pedro', 'Xicotencatl', 'Garrido', 'Constituyentes', 'Obrero Popular', 'Alvaro Obregon', 'Sonora', 'Washington', 'Eje 10', 'Delfin Madrigal', 'Ninguna', 61510, 26, 363, 'MHIO3992084R4', 71650301787);

-- 242
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NHEE121814CJLYVR99', 'Urko', 'Barvosa', 'Lagunillas', 'San Pablo', 'Pantaco', 'Cuajimalpa', 'Puebla', 'Moscú', 'Pennsylvania', 'Castellana', 'Ninguna', 59626, 249, 341, 'HWSP5145043Y2', 50902996735);

-- 243
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MFCH535159OWLFBY27', 'Pascual', 'Duarte', 'Xihuitl', 'Brooklyn', 'Aldana', 'Cuajimalpa', 'Sinaloa', 'Rio de Janeiro', 'Gran vía', 'Constituyentes', 'Ninguna', 97739, 71, 353, 'VTTY7756836E9', 32932711338);

-- 244
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BHIW578642HBWNKN95', 'Dido', 'Quebedo', 'Nama', 'Via Veneto', 'Del Gas', 'Tlalpan', 'Tlaxcala', 'Gondor', 'Sunset Boulevard', 'Avenida 9 de Julio', 'Ninguna', 39205, 158, 61, 'MHOM5852643O0', 56123788915);

-- 245
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LQNV125883XTBFGD42', 'Melkor', 'Zarate', 'Urbina', 'Brooklyn', 'Industrial Vallejo', 'Coyoacan', 'Zacatecas', 'Valinor', 'Larios', 'Orchard Road', 'Ninguna', 24892, 362, 102, 'SMSN0830840Q6', 78960979903);

-- 246
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FHTI479038SAJXTQ33', 'Kevin', 'Machorro', 'Basan', 'Eje 6', 'Potrero del llano', 'Benito Juarez', 'Sonora', 'Mereen', 'Eje 10', 'Lombard Street', 'Ninguna', 70595, 195, 295, 'LQSN6581969I0', 75438669862);

-- 247
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DFYQ709984KRDDQV90', 'Uriel', 'Dongu', 'Ysaguirre', 'Masaryk', 'Arenal', 'Magdalena Contreras', 'Nayarit', 'Washington', 'Victoria', 'La Rambla', 'Ninguna', 47647, 99, 391, 'VQDJ2200175O3', 74814278194);

-- 248
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HEGA984210PRIBQT54', 'Omar', 'Najera', 'Sandobal', 'Lombard Street', 'Plenitud', 'Xochimilco', 'Guerrero', 'Isildur', 'Avenida 9 de Julio', 'Via Veneto', 'Ninguna', 22451, 161, 44, 'FCJF2711376G1', 92351772274);

-- 249
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BKXZ550269SVSUET43', 'Nagul', 'Urbana', 'Pallares', 'La 5° avenida', 'Del maestro', 'Azcapotzalco', 'Guerrero', 'Cartagena', 'Eje 3', 'Portobello Road', 'Ninguna', 92064, 32, 152, 'KYOO1906646M4', 49121177466);

-- 250
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LWUT595597JHGTVH57', 'Zoe', 'Regino', 'Dorantes', 'Iman', 'Angel Zimbron', 'Tlalpan', 'Estado de México', 'Santo Domingo', 'Las Vegas Strip', 'Plaza Dam', 'Ninguna', 47922, 12, 161, 'HGHS9368569N7', 76462659685);

-- 251
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TLKG804689JSDXMY83', 'Eunice', 'Zedillo', 'Sandobal', 'Avellaneda', 'Del maestro', 'Miguel Hidalgo', 'Baja California Sur', 'Rivendell', 'Trafalgar Square', 'Eje 6', 'Ninguna', 91080, 320, 383, 'MCWJ7896696Q1', 23614356659);

-- 252
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SWFI022655BETUIN55', 'Wilfredo', 'Henriquez', 'Escalante', 'Causeway Bay', 'Angel Zimbron', 'Cuajimalpa', 'Baja California Sur', 'Berlin', 'Calzada de Tlalpan', 'Calle de Preciados', 'Ninguna', 66560, 277, 169, 'IVII1893804V5', 76505640449);

-- 253
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WISJ472203MDGBXC42', 'Valeria', 'Fraga', 'Pallares', 'Gran vía', 'Liberación', 'Iztacalco', 'Michoacán', 'Santiago', 'Avenida Paulista', 'Causeway Bay', 'Ninguna', 77834, 75, 344, 'DNSA4941622P4', 79463239877);

-- 254
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('THHQ560155KYMJKU36', 'Irving', 'Lagunas', 'Barvosa', 'Sunset Boulevard', 'Ferrería', 'Cuajimalpa', 'Morelos', 'Caracas', 'Causeway Bay', 'Trafalgar Square', 'Ninguna', 77078, 105, 296, 'RHQN4722706V3', 52415880462);

-- 255
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('GGDP189288NZFDSW42', 'Berta', 'Oliba', 'Ibarra', 'Eje 4', 'Pemex prados', 'Benito Juarez', 'Ciudad de México', 'Rivendell', 'Viaducto', 'Altavista', 'Ninguna', 35531, 322, 72, 'DJSQ9917375A7', 59935396083);

-- 256
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZWGZ563053DWZGDG20', 'Aria', 'Machorro', 'Varron', 'Abbey Road', 'San Antonio', 'Tlalpan', 'Estado de México', 'Carabobo', 'Republica de El Salvador', 'Abbey Road', 'Ninguna', 18381, 236, 388, 'RKIF2828578U7', 53897252547);

-- 257
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('FXZS196818TXNJIC10', 'Karla', 'Quero', 'Cobarrubias', 'Plaza Dam', 'Nueva Santa María', 'Magdalena Contreras', 'Nuevo León', 'Roma', 'Eje 1', 'Paseo de la fama', 'Ninguna', 49998, 52, 239, 'ZIIS4676664K2', 87397555103);

-- 258
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NFMY791341XIXTTQ53', 'Ariel', 'Olguin', 'Labrador', '16 de Septiembre', 'Nueva España', 'Milpa Alta', 'Ciudad de México', 'Taipei', 'Avenida Amsterdam', 'Rio San Joaquin', 'Ninguna', 54755, 69, 3, 'QEZC3181828R7', 53118147622);

-- 259
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TLAC723470WYRQMP79', 'Gabriel', 'Quenca', 'Ansures', 'Via Dolorosa', 'Plenitud', 'Tlahuac', 'Querétaro', 'Girona', 'Eje 4', 'Miguel de Cervantes', 'Ninguna', 17835, 156, 137, 'ZHNC3538406W8', 68089160846);

-- 260
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DXVB047202JUGSFG50', 'Frodo', 'Anna', 'Garibay', 'Eje 3', 'Del recreo', 'Coyoacan', 'Puebla', 'Montevideo', 'Viaducto', 'Sunset Boulevard', 'Ninguna', 82046, 373, 44, 'LNXR8417230W4', 17480265606);

-- 261
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WVRN301494XIMWKQ14', 'Dido', 'Angulo', 'Palencia', 'Avellaneda', 'Petrolera', 'Magdalena Contreras', 'Sonora', 'Berlin', 'Eje 8', 'Jirón de la unión', 'Ninguna', 10992, 183, 146, 'NRON2583243H7', 31009156160);

-- 262
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MOTJ130142WTBDUA83', 'Isaac', 'Jacobo', 'Quesada', 'Mixcalco', 'Del maestro', 'Magdalena Contreras', 'Chihuahua', 'Lima', 'Via Dolorosa', 'Khao San', 'Ninguna', 16364, 20, 107, 'ZYXC9610932I1', 95045992591);

-- 263
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SSVI415926DAMCWL82', 'Mabel', 'Henrique', 'Macedo', 'San Pablo', 'Monte Alto', 'Tlalpan', 'Coahuila', 'Brasilia', 'Avenida Atlantica', 'Madero', 'Ninguna', 39342, 189, 245, 'WYVX9027370H5', 17851547646);

-- 264
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('TRKC445306TTHUMU19', 'Pascual', 'Infante', 'Henriquez', 'Regina', 'La Raza', 'Benito Juarez', 'Tlaxcala', 'Valinor', 'Eje 8', 'Paseo de la fama', 'Ninguna', 41641, 194, 67, 'PGES8099020X9', 75625315488);

-- 265
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WVUC429423DWGMTQ39', 'Fernando', 'Garivay', 'Dongu', 'Calle de Preciados', 'Potrero del llano', 'Miguel Hidalgo', 'Coahuila', 'Roma', 'Brooklyn', '16 de Septiembre', 'Ninguna', 56002, 329, 255, 'VGVE9799255W3', 71124512572);

-- 266
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CBUK009754QTLGOZ78', 'Laura', 'Donate', 'Ladino', 'Eje 6', 'San Alvaro', 'Gustavo A. Madero', 'Baja California', 'Moscú', 'Wall Street', 'Lombard Street', 'Ninguna', 94315, 109, 311, 'MSJL6966836U4', 71377262913);

-- 267
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NUPX391126NOGZVU02', 'Magdalena', 'Varrios', 'Umada', 'Alvaro Obregon', 'La Raza', 'Venustiano Carranza', 'Hidalgo', 'Rivendell', 'Paseo de la fama', 'Chapultepec', 'Ninguna', 36960, 275, 127, 'TOVR9946126P6', 43435055208);

-- 268
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BOQL627689EDBQHK40', 'Jael', 'Regino', 'Labrador', 'Eje 7', 'Pantaco', 'Venustiano Carranza', 'Sinaloa', 'Sao Paulo', 'Miguel de Cervantes', 'Via Dolorosa', 'Ninguna', 26631, 131, 239, 'WFBH4974941I1', 74190911713);

-- 269
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HPBK216583DSQHTJ86', 'Sauron', 'Garibaldo', 'Errera', 'Masaryk', 'Nueva España', 'Coyoacan', 'Aguascalientes', 'Bogotá', 'Eje 8', 'Castellana', 'Ninguna', 33216, 294, 264, 'HUND6685224K7', 13875473568);

-- 270
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YLCF393121WPNRZJ04', 'Berta', 'Jaen', 'Urbana', 'Avenida Diagonal', 'Porvenir', 'Iztapalapa', 'Hidalgo', 'Valyria', 'Pennsylvania', 'Altavista', 'Ninguna', 83295, 301, 376, 'CBBG2632111P0', 93088784266);

-- 271
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('CQDO399235SUZWIY57', 'Magdalena', 'Dorantes', 'Yxtlamati', 'Eje 2', 'Cuitlahuac', 'Cuauhtemoc', 'San Luis Potosí', 'Rivendell', 'Gran vía', 'Mixcalco', 'Ninguna', 81718, 7, 164, 'BBCS2912339A5', 98456670036);

-- 272
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('UJDA507373GPYRUS21', 'Laura', 'Climaco', 'Lagunillas', 'Wall Street', 'Jardin Azpeitia', 'Alvaro Obregon', 'Colima', 'Santo Domingo', 'Masaryk', 'Campos Eliseos', 'Ninguna', 21921, 246, 365, 'HUEE9191606U9', 10827396230);

-- 273
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HKQZ478750RITPXI42', 'Tadeo', 'Pallares', 'Anna', 'Jirón de la unión', 'San Antonio', 'Iztacalco', 'Nuevo León', 'Oslo', 'Abbey Road', 'Eje 2', 'Ninguna', 23247, 212, 282, 'LNZQ5627915C8', 47280584852);

-- 274
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('MAGH576112HCCACU67', 'Patricio', 'Xavier', 'Xaymes', 'Via Dolorosa', 'Las salinas', 'Cuajimalpa', 'San Luis Potosí', 'Buenos Aires', 'Avellaneda', 'Eje 10', 'Ninguna', 15447, 51, 383, 'ULSO0052581D3', 65866603865);

-- 275
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WYOW355744FHPPCZ32', 'Thorin', 'Urbana', 'Quenca', 'San Pablo', 'Del recreo', 'Tlalpan', 'Nayarit', 'Berlin', 'Paseo de Gracia', 'Paseo de Gracia', 'Ninguna', 31249, 85, 389, 'PMDU2065501T8', 39293238770);

-- 276
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BVTB837027YPZWCF95', 'Sauron', 'Lagunillas', 'Olea', 'Via Dolorosa', 'El Rosario', 'Venustiano Carranza', 'Morelos', 'Barranquilla', 'Paseo de la fama', 'Oxford Street', 'Ninguna', 41017, 188, 391, 'XNTM9087373N6', 78484423162);

-- 277
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ADMH476621HQZNXT82', 'Pascual', 'Zepeda', 'Garibay', 'Avenida Paulista', 'Obrero Popular', 'Iztacalco', 'Yucatán', 'Helsinki', 'Miguel Angel de Quevedo', 'Downing Street', 'Ninguna', 95924, 83, 340, 'ZRJL9184875G0', 77024046712);

-- 278
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DRIA308519UOVWFZ01', 'Narda', 'Pallares', 'Henriquez', 'Alvaro Obregon', 'Arenal', 'Xochimilco', 'Tlaxcala', 'Kiev', 'Paseo de la fama', 'Colima', 'Ninguna', 55163, 314, 178, 'XSCH7513018N1', 76988003275);

-- 279
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('KAVA272238MDODTV88', 'Olga', 'Machorro', 'Vargas', 'Alvaro Obregon', 'Ignacio Allende', 'Coyoacan', 'Ciudad de México', 'Sao Paulo', 'Rodeo Drive', 'Insurgentes', 'Ninguna', 46346, 325, 210, 'KVAO2643493F9', 72787965741);

-- 280
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HYXM939623BBVZXG84', 'Yuya', 'Varrientos', 'Nama', 'Eje 8', 'El Rosario', 'Tlalpan', 'Colima', 'Ciudad de México', 'Via Dolorosa', 'Avellaneda', 'Ninguna', 51206, 141, 166, 'PLJS9595057P6', 43668047151);

-- 281
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SXUI558314YTENKR48', 'Wanda', 'Jacobo', 'Varron', 'San Pablo', 'Pantaco', 'Cuajimalpa', 'Sonora', 'Valyria', 'Mixcalco', 'Via Veneto', 'Ninguna', 51166, 209, 31, 'NWOL8334460M9', 72607989628);

-- 282
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XOZD865835CGXAJW73', 'Ursula', 'Varron', 'Dongu', 'Avenida Amsterdam', 'Petrolera', 'Cuauhtemoc', 'Quintana Roo', 'Casterly Rock', 'La 5° avenida', 'Oxford Street', 'Ninguna', 96391, 230, 322, 'FCTI3108676N1', 73738273069);

-- 283
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DRCQ057203PPFPMS08', 'Dido', 'Najera', 'Cobarrubias', 'Victoria', 'Ecologica', 'Miguel Hidalgo', 'Aguascalientes', 'Valyria', 'Universidad', 'Calzada de Tlalpan', 'Ninguna', 46714, 188, 189, 'WOMM4789904F1', 29148099507);

-- 284
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('SLAG599230FQIHAU25', 'Bilbo', 'Ansaldo', 'Barva', 'Trafalgar Square', 'Jardin Azpeitia', 'Venustiano Carranza', 'Tlaxcala', 'Sao Paulo', 'Insurgentes', 'La Rambla', 'Ninguna', 53087, 268, 371, 'GUVV3730737D3', 74861085205);

-- 285
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('XMYC210063XHLEHZ17', 'Xochitl', 'Ysaguirre', 'Palasios', 'Masaryk', 'Nuevo San Rafael', 'Tlahuac', 'Coahuila', 'Bogotá', 'Brooklyn', 'Gran vía', 'Ninguna', 60438, 218, 130, 'AMNY8795872W1', 17325503796);

-- 286
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('YPYH263871UNOSLT15', 'Jaime', 'Olgin', 'Jacoba', 'Alvaro Obregon', 'Nuevo San Rafael', 'Alvaro Obregon', 'Hidalgo', 'Barranquilla', 'Miguel Angel de Quevedo', 'Chapultepec', 'Ninguna', 81900, 269, 110, 'JCZB6953806C8', 62779425354);

-- 287
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BWNU816347SJXKOT21', 'Urko', 'Infante', 'Labrador', 'Sheikh Zayed Road', 'Miguel Hidalgo', 'Benito Juarez', 'Sonora', 'Caracas', 'Madero', 'Eje 6', 'Ninguna', 54451, 200, 2, 'XSRC5999848V7', 44134729506);

-- 288
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LNDV806294HQOLMI33', 'Dido', 'Anna', 'Urbina', 'Reforma', 'Porvenir', 'Tlahuac', 'Quintana Roo', 'Washington', 'Avenida Diagonal', 'Avenida Paulista', 'Ninguna', 29259, 66, 61, 'QNHS3941451A0', 94098804166);

-- 289
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BSWI899010NOEMYL44', 'Valeria', 'Idalgo', 'Lagunillas', 'Viaducto', 'Liberación', 'Venustiano Carranza', 'Querétaro', 'Kiev', 'Insurgentes', 'Universidad', 'Ninguna', 39470, 389, 251, 'TWTY7896512C9', 31607939103);

-- 290
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('BZAE308891OLPIZE92', 'Dan', 'Hererra', 'Reies', 'Calzada de Guadalupe', 'Ignacio Allende', 'Benito Juarez', 'Sonora', 'Isildur', 'Colima', 'Masaryk', 'Ninguna', 70225, 250, 192, 'CFYO4438968Y3', 29222142253);

-- 291
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('VUKL663690GZNKFY48', 'Pascual', 'Garibaldo', 'Zurita', 'Abbey Road', 'Ferrería', 'Azcapotzalco', 'Nayarit', 'Taipei', 'Reforma', 'Rodeo Drive', 'Ninguna', 57438, 75, 32, 'ANJG7790791N3', 69943637344);

-- 292
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('DNRB968995MEQUAW42', 'Quasimodo', 'Ansaldo', 'Ibarra', 'Pennsylvania', 'Ferrería', 'Xochimilco', 'Hidalgo', 'Gondor', 'Oxford Street', 'Eje 8', 'Ninguna', 62315, 256, 73, 'OHRT2051564Q7', 75276913405);

-- 293
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OUUV010586XAREJO18', 'Urko', 'Macario', 'Regla', 'Altavista', 'Liberación', 'Venustiano Carranza', 'Sonora', 'Caracas', 'Venustiano Carranza', 'Sheikh Zayed Road', 'Ninguna', 78598, 152, 309, 'CUZO1215774L3', 49843455330);

-- 294
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('OHOR481019OPDOMA63', 'Omar', 'Palasios', 'Escalante', 'Calle Triana', 'Obrero Popular', 'Gustavo A. Madero', 'Aguascalientes', 'Leningrado', 'Larios', 'Calzada de Tlalpan', 'Ninguna', 96328, 105, 242, 'ZMQU9077770O7', 74342819343);

-- 295
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('WUFJ709188YUXIQV33', 'Elrond', 'Ysidro', 'Urbana', 'Khao San', 'Pantaco', 'Magdalena Contreras', 'Puebla', 'Leningrado', 'Khao San', 'La 5° avenida', 'Ninguna', 87335, 379, 340, 'ZGSB0218370S8', 88205507789);

-- 296
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('NQSQ208506LDGSNZ62', 'Xico', 'Olgin', 'Ureste', 'La 5° avenida', 'Angel Zimbron', 'Venustiano Carranza', 'Yucatán', 'Kiev', 'Via Veneto', 'Eje 1', 'Ninguna', 78812, 60, 309, 'VJWU5915623B7', 33825422265);

-- 297
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('ZWNY658993RUWEZQ90', 'Isaac', 'Xicotencatl', 'Machado', 'Reforma', 'Del maestro', 'Azcapotzalco', 'Chiapas', 'Brasilia', 'Eje 7', 'La Estafeta', 'Ninguna', 44271, 26, 236, 'NFBG1910201B6', 16032726068);

-- 298
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('LLOK259109PSDKJU85', 'Dennis', 'Barvosa', 'Ysaguirre', 'Copilco', 'Ecologica', 'Cuajimalpa', 'Nuevo León', 'Barcelona', 'Venustiano Carranza', 'Sunset Boulevard', 'Ninguna', 75967, 96, 294, 'XATH6105067I8', 74858062572);

-- 299
INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('HCFA667571OQUWPT99', 'Thorin', 'Macario', 'Sanchez', 'La Alameda', 'Clavería', 'Miguel Hidalgo', 'Hidalgo', 'Caracas', 'Mixcalco', 'Abbey Road', 'Ninguna', 72565, 330, 245, 'ANGC9217866Y6', 76678452342);

-------------------

-- 0
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3540783010, 'QCSZ579843FURYGD80');

-- 1
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2740145378, 'NWGD202887OLPDHK60');

-- 2
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8026901649, 'DHIG446268BHTWMX13');

-- 3
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (4602522137, 'YSIJ111384TSRVYY87');

-- 4
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6590990982, 'LEQM852390YTKWZF50');

-- 5
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7447155967, 'FOWJ109854WBWVEG15');

-- 6
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (9930311740, 'VSYE675412QGTCPC99');

-- 7
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6507937066, 'PRXK278424WTGHEO80');

-- 8
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1381747469, 'CLJN842101XPLOFI94');

-- 9
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (9626843410, 'XFEA747926PACINI45');

-- 10
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7194024138, 'ZXRU235386DUYJTU79');

-- 11
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7298640458, 'IIZP825881CZOALZ54');

-- 12
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6391552451, 'MQCV364855OUITLF37');

-- 13
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8721345951, 'NDGI068899XJGSUE87');

-- 14
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7528611113, 'UEZZ110441VXCQLU74');

-- 15
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (4076774846, 'JVNS291039KWEXHD62');

-- 16
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3059152869, 'ZRSC485883AWJDFT78');

-- 17
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (9659415775, 'UHRF645445ODUNQS77');

-- 18
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1057386761, 'DMHY197734VOZMBX89');

-- 19
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1294492000, 'UJNU055386FNKYQE62');

-- 20
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1525411849, 'QJRR811107SYJPAG18');

-- 21
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8701062384, 'ELFU903602BYRTWF15');

-- 22
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6312238901, 'UACD278124IMUTCH37');

-- 23
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8398550468, 'GFQL161773SSGFRJ56');

-- 24
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3835127928, 'FKWS168722RTLZMT52');

-- 25
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7226321629, 'GCAE828154RMJOIR61');

-- 26
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (5761166531, 'IGFS766410HEDOOP58');

-- 27
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7639447931, 'DQMR531247EEHSXI99');

-- 28
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6033380943, 'FBEY713141HGABQU48');

-- 29
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2412817964, 'DEIF304743NQLSSH27');

-- 30
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2882327165, 'NKAU724493MTXNSQ78');

-- 31
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8234831145, 'TOUJ842171ZNANRR47');

-- 32
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7391529416, 'IGLB952897ALSAWZ90');

-- 33
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7152329753, 'NBHN276128WYQPOL54');

-- 34
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2673478931, 'KXXP795444AATQZG67');

-- 35
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6728165271, 'DBRQ297671RGZFQG26');

-- 36
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2186787362, 'HQXI928423JMAVAH55');

-- 37
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (9776619512, 'IBAN035333PJBPKH72');

-- 38
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8653261800, 'GISQ369274HOTHUK79');

-- 39
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2308018061, 'SEQP902720BDHQAF28');

-- 40
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7251985410, 'NIXJ217212IGTAUC82');

-- 41
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (4554819208, 'QOQN970590QAKFIJ01');

-- 42
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3004315054, 'CBGO185996UQAMNG31');

-- 43
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7343386810, 'QPHJ244368OQEABC37');

-- 44
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (4996578449, 'AJWN037484BPKEKJ95');

-- 45
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7910632092, 'BYDO324442RGNSZQ44');

-- 46
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3025497551, 'YUSK048612LKACLW26');

-- 47
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (9832912004, 'NIYG585361ZJJRGH41');

-- 48
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1488497287, 'OKRC487083LKGTNW41');

-- 49
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7762277355, 'UCDP810534UAIACV97');

-- 50
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1426842643, 'KBRI418368FHQJZP90');

-- 51
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7084258152, 'UGIA281059KLZCIR39');

-- 52
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (5023161615, 'CYUC904662IWQOFH01');

-- 53
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (4830265596, 'OQHW025810EJNLNC31');

-- 54
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3155530530, 'ZUYX924485LTLYAS19');

-- 55
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8314420736, 'VYCA082252GGPOGP47');

-- 56
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8863909146, 'GSXJ684356CSXIYQ34');

-- 57
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7912912383, 'CLOH331137CJAGOU27');

-- 58
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3256406725, 'BAIB280357WAKGQC25');

-- 59
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7367298465, 'FKDV272933SAPSWT81');

-- 60
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (5887391133, 'PRNO937038FKKQZS96');

-- 61
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3961012922, 'ECHF567470XNVAGH51');

-- 62
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (9605790675, 'VAVV911377WPXOWT13');

-- 63
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2284778495, 'QRVT835395MKNXRK27');

-- 64
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (4351778057, 'STTK784422SSZUZQ09');

-- 65
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2744002599, 'JIHT365281QNORKX69');

-- 66
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8336600398, 'NGYB287322RVGPLI00');

-- 67
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (5389632835, 'DGOO872006GMHWRU71');

-- 68
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6079283740, 'VDCA926916YGOPLX74');

-- 69
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3647781301, 'EBRT011874WVQYVC03');

-- 70
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3993216567, 'VVJV735129UOTNOW86');

-- 71
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6171278729, 'DZPK779756APIBEM16');

-- 72
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (4951589403, 'ZMNU711598GSDQJT07');

-- 73
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (5087442942, 'MPDQ801816ORVGIM66');

-- 74
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2059375008, 'AFKH790612YANUFL72');

-- 75
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8218313311, 'PTMJ213151NXHRBC84');

-- 76
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2551652163, 'NEAM995254MCUWZH62');

-- 77
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8306328691, 'BGNW832327TVNFAK34');

-- 78
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2244581351, 'WVLE908194LAHKCV69');

-- 79
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7384039123, 'DDVA852446EPATEG22');

-- 80
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (6983171120, 'OQIW027425DZZJIG38');

-- 81
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7352971314, 'WGWU309415LUAEDV40');

-- 82
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2652174656, 'MNIN775884FNPMRL54');

-- 83
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7447841800, 'NPJO985323WRRDAY85');

-- 84
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7541206878, 'LSIU608830TOYZIX01');

-- 85
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7182987515, 'OUBP138055QEQSJA34');

-- 86
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (9317344576, 'ARZF029384WEMCXP24');

-- 87
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1683012397, 'EKUK250512OWUHAU49');

-- 88
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7228625978, 'VAQE500534GMXMKF50');

-- 89
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7986598939, 'VZPU619037BFOEJW93');

-- 90
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1960204264, 'LKOY942289EVIEOW81');

-- 91
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7171262926, 'TOJY793949DCGRLL87');

-- 92
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (2576945251, 'FRAA727517FSGMYP25');

-- 93
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (3855105492, 'MTRX704880OSONBG84');

-- 94
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7866211422, 'KXMW127712KFKERE02');

-- 95
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7978985532, 'UFUZ556413MWQNJN75');

-- 96
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7216862444, 'JLBN098470KQEKFF00');

-- 97
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (7963320222, 'RPQU464521SENQOL82');

-- 98
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (8426496858, 'ULJW732539WGIYVO56');

-- 99
INSERT INTO FARMACIA.TELEFONOS_CLIENTES
(telefono, curp)
VALUES (1496767333, 'YAZU781536ZSOHDT71');

---------------

-- 0
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4737366392, 'DUJT520385WWSSPZ92');

-- 1
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8371689458, 'FNBP664860NDTTUA58');

-- 2
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2939982714, 'JXUM191601LNNIRT40');

-- 3
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7453925893, 'RZFQ610211TZYOBB26');

-- 4
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4346741452, 'PBGM829968NNQNIO68');

-- 5
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2783611671, 'ABTO310894IGIIPY04');

-- 6
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3676808174, 'ZKVB944162EQIXJW74');

-- 7
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8933901660, 'BNEV679820FIYJMS98');

-- 8
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3003388364, 'PNEN694790NDTMFC05');

-- 9
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3617156618, 'QOPA743619MZEBLQ57');

-- 10
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3710649660, 'SDUR546908ZWLSHX31');

-- 11
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5851853139, 'UERO137471MAECIG45');

-- 12
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3014446958, 'FWVX382269CGXWIU54');

-- 13
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4915842165, 'PFPE543352VHOYXU21');

-- 14
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3884473064, 'UZTT737905DQAOPG48');

-- 15
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3128500507, 'WDJS323732ELDEIX37');

-- 16
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5994492737, 'FGFO782944MBPAHX53');

-- 17
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2323190924, 'TKWA774276TMERVY27');

-- 18
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9626828519, 'ZKBN728545PJZVLY57');

-- 19
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9418165575, 'OZNF350805GTTMOE80');

-- 20
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2758360382, 'RKGO879447IOEVJR86');

-- 21
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4123388810, 'SVEI182865LICZVM64');

-- 22
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6726733242, 'XFBJ045518ITUSFD33');

-- 23
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2534857543, 'ODLD869153IQZFQY13');

-- 24
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1158521240, 'JBIU751786FWLQWJ84');

-- 25
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3136287033, 'CMTK580712DEXAEK75');

-- 26
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4216127894, 'JZGJ536895AARWLR62');

-- 27
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4642516443, 'GTMA596214VLNNDA86');

-- 28
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5793281163, 'OTLU569091RLWVQX43');

-- 29
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7359542725, 'MAQD059011RCEZBY06');

-- 30
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5035186563, 'CUUM204842QGQVJS89');

-- 31
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2169228225, 'FZCS843979QEZVTB91');

-- 32
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9520602518, 'WQQR117203ISVLKY43');

-- 33
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1479763962, 'YFRN661386JIBPGW84');

-- 34
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9378238733, 'VDCI372861LMKITO48');

-- 35
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3896429401, 'FWBR139309AMRPPC29');

-- 36
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8069343212, 'LNAY703886JIOCYX82');

-- 37
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1495513095, 'FNCA201324GEFHIE04');

-- 38
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9542443551, 'SFJO385754ZFKVOK35');

-- 39
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1378014865, 'LNZE966476HKMTEC16');

-- 40
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9471719289, 'UKDX811444LPWWRR74');

-- 41
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6809181628, 'AOAW637310PIYZHK98');

-- 42
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3994896003, 'ZRHX143784HEOPGH64');

-- 43
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6957193771, 'XKRG130875DILYAS34');

-- 44
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3884860427, 'YLVW978270FZXYUH89');

-- 45
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3575025337, 'EJKT747424UNNVNV73');

-- 46
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7640418030, 'QUCN868932NDHRHX79');

-- 47
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4802000489, 'ZEIL335005MUNBRB20');

-- 48
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1091496181, 'OCGM700003KJUHDM89');

-- 49
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4769595465, 'ZQBS173107IMZKNX50');

-- 50
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4038088396, 'ELLL931499GGERYX83');

-- 51
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1431011684, 'EOIU037873HUNIWK85');

-- 52
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2271037810, 'BFPF951082CFHSQI91');

-- 53
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3822772356, 'CMJR157553ZTIRUJ48');

-- 54
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4225229490, 'AMPR882717FWGLER99');

-- 55
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9578940640, 'WZYC167831QFXGAK86');

-- 56
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6728519404, 'BAGX131028GDKENZ06');

-- 57
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1558360936, 'IHRS438222IFZKVP68');

-- 58
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2228364430, 'YOVN837642ZTSDKA94');

-- 59
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4826162339, 'VSAE140040ZOQKTA23');

-- 60
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1718859396, 'IBLL249047ODZNMB80');

-- 61
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3636204468, 'JRFP342861MYJNLN59');

-- 62
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9754028962, 'HBIO602680MDMYLB45');

-- 63
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3314948611, 'VAGD039713DGLFMY57');

-- 64
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4983760204, 'LMHL092478TJPWLY21');

-- 65
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5660425303, 'UNGH686930FYWWKK86');

-- 66
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2629452947, 'RCEX464673WSGOVC04');

-- 67
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7717832033, 'KYPS720853XKRVCC07');

-- 68
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4253084142, 'VRAC031361XTDCSC95');

-- 69
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5930176851, 'VDHX845651DISSAW73');

-- 70
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2256350029, 'NHMO394616DPLDOI15');

-- 71
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3854636684, 'QJLX852617HFGPBN33');

-- 72
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3772845994, 'NNFS870029LDUZBC50');

-- 73
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5766027792, 'GTQN799319OESOGO44');

-- 74
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5939108116, 'QVYA617980GPGGEZ23');

-- 75
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4738424535, 'FCOY822521VAZYGN95');

-- 76
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1759613155, 'LYDN893450JZCRJU07');

-- 77
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5807364547, 'YPOY882577GBAUOD48');

-- 78
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3318694704, 'KRFI125551FIRHAO86');

-- 79
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9077037092, 'SWGI088105AMLQOF18');

-- 80
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2717489430, 'EGDQ347498QQRPUN80');

-- 81
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5759562113, 'IHGB442064PILXWJ96');

-- 82
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4555765094, 'BHCQ424631UOIFIP48');

-- 83
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9366414427, 'EBNU455599MZBNNT21');

-- 84
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5838562685, 'XYSQ176402ZRMDAI57');

-- 85
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4310840731, 'VMQV653925ALHWDZ19');

-- 86
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1450994107, 'CTGA150693BNGLLD61');

-- 87
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9355363538, 'YYNJ718266YGYPFG62');

-- 88
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4065237311, 'BFDO671516EYAOTO44');

-- 89
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5736336825, 'TCSA375332XZJWVY92');

-- 90
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9235722141, 'PDGI374816NXFMZI47');

-- 91
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8014284910, 'ZUTO686141PSPSQW05');

-- 92
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6171246764, 'AQDF281375MKZNQY18');

-- 93
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7056194001, 'ELSU905133UPCBWR61');

-- 94
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2896319960, 'FYEG274215PMCEEQ89');

-- 95
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8766174081, 'PRCV782276NSIXMV83');

-- 96
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1249955033, 'NLMN741977RKTHGE81');

-- 97
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8778133226, 'CBRE030342YRPZUS23');

-- 98
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2256876155, 'HYCB358062DVRRLI75');

-- 99
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1236308511, 'ZOOW730640LHDAUA14');

-- 100
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5531064518, 'RRTL708582BHEJNM76');

-- 101
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4369026498, 'ZRAF443793HSMMDN46');

-- 102
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1877505395, 'RPPN022952YUWJOP76');

-- 103
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9695951885, 'TCAH830502BISURQ68');

-- 104
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5331073337, 'POBD171002WYSITM94');

-- 105
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8151929686, 'HHYG249263JDYHAM92');

-- 106
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3393297621, 'EGXI919192UXPDLO79');

-- 107
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9523968552, 'CZBI207262KYBIBR69');

-- 108
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4811047034, 'IYPY491461CRGQGB84');

-- 109
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4575887010, 'XAKG280970YHRUMU21');

-- 110
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2311833292, 'PKNN687285STISKL04');

-- 111
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9552018957, 'OIWM772957KROVOI54');

-- 112
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9082947781, 'YJNY504968RBNSFX19');

-- 113
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1632970871, 'PXBW439349YKQAEG49');

-- 114
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4643714526, 'ZPVH698791JDBMOT45');

-- 115
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2129117044, 'QZGA194111UOKSSR19');

-- 116
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3600510202, 'HDBV184909ACXITT24');

-- 117
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2640446201, 'GPCL653439OBKIKI99');

-- 118
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3518351808, 'ZDVW453583ERDALB68');

-- 119
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7857728892, 'HKWF015354IDEEUW45');

-- 120
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8226219275, 'JOVE801177NBQXUD43');

-- 121
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6167869775, 'HSMA707993ILEPIA42');

-- 122
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8288603311, 'JVRZ107741BTNNFZ35');

-- 123
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9576916121, 'MYRY376099DLAAHE40');

-- 124
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9731550191, 'GTWK917658HDEZOI41');

-- 125
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2200078871, 'GCYC219950RBVKGR06');

-- 126
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9511887985, 'EKXR764337AOOWMS55');

-- 127
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1747279151, 'VCKT321426RPRHRB33');

-- 128
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5484126599, 'ZVFP283286BMXVIT67');

-- 129
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6761143418, 'CETC406189PYOVUY58');

-- 130
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2448501931, 'YAAU447540MCBXRI33');

-- 131
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4973039699, 'JKWQ400174DBAJKE94');

-- 132
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5025365422, 'WCZX802291IGFYSV17');

-- 133
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5183101637, 'HZJF442938EHRLJL85');

-- 134
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4951880482, 'LXGM045447AAUZQJ02');

-- 135
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9692489538, 'MYWT820092XOUKSX87');

-- 136
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8466713457, 'XWIX832146GBCLAU73');

-- 137
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5588455089, 'USVT694115SHCCPU83');

-- 138
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7014457375, 'RJBQ960298DSABKG94');

-- 139
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4018593324, 'RTUO329674RXMPDG70');

-- 140
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5372394016, 'DLJK861752UWSHFB27');

-- 141
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6250635938, 'FOUV375066FBULQG33');

-- 142
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7678450395, 'CEMJ404375BXDFRI14');

-- 143
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2813102625, 'BWQQ938933IKIXHR97');

-- 144
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9130550463, 'YNMK058083GPKYDO47');

-- 145
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4297897219, 'AIZT485557CISQXD32');

-- 146
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1631351718, 'XEMW261205MUEGJS76');

-- 147
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7982039578, 'POEU593586AHZHNV52');

-- 148
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9980684045, 'GCUP703647PXXCZT02');

-- 149
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5480528496, 'TBJK301463TBJWAD46');

-- 150
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5345168205, 'NBRQ166554IYHKAG07');

-- 151
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5010058542, 'QVSO038951KBDRRX59');

-- 152
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1957654777, 'IIUW741877DWGZZL34');

-- 153
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3434795978, 'NJAR645650JIGWQZ32');

-- 154
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4341757507, 'MYDG181971URECZL81');

-- 155
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1668063386, 'CLEA460756SQUOTW22');

-- 156
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4122042578, 'HENU378154GZUUND01');

-- 157
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4583212309, 'SQTV843259KCEJKV51');

-- 158
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1453159131, 'ZVDX351531FRIXBY22');

-- 159
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4870871564, 'VFIT911730CBFETA69');

-- 160
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4080999041, 'DPDO570682HWZCCJ74');

-- 161
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7751058804, 'TCAQ357610WBLUCX40');

-- 162
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2827173674, 'GCXB230550JFDNOC76');

-- 163
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1540572039, 'TREC178381ZBEZJC55');

-- 164
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2381375816, 'CJGN141010RKHMRH69');

-- 165
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7894045756, 'AENN624771GCZIYN27');

-- 166
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8750281296, 'EQKK317632ELDGMT33');

-- 167
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3807366499, 'ANRT843978ABRRUP75');

-- 168
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6125146069, 'MSMI936618KTYFHJ61');

-- 169
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5095509986, 'RBST275248ZLWQBK66');

-- 170
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9275300768, 'YIKO514519ISNKDM10');

-- 171
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9305664902, 'GDEP392193XCMPNQ38');

-- 172
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3484181776, 'PVCT388680RVCLGD58');

-- 173
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3313051364, 'QYFP403555WIPOIC84');

-- 174
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3045160956, 'FKBM231726LHAXPT21');

-- 175
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2627356914, 'PVKH699485UVWRSC75');

-- 176
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2958182262, 'TAAQ547340KNSETN48');

-- 177
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6832535226, 'LVCU261596ISTJXI83');

-- 178
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6442170411, 'VNKT334665ONWYEE04');

-- 179
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4964842645, 'IIRD686165RMIUDP94');

-- 180
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9591657552, 'QTQM795489BGQYMU75');

-- 181
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3303785252, 'FISA775537LLVZFK86');

-- 182
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2330907712, 'ZXRZ020192KQMWHK48');

-- 183
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3605912944, 'POVR857280TCKGHE80');

-- 184
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2335189823, 'BGNK462831VMWCKN72');

-- 185
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4315718775, 'ABZO464902GTDFJL32');

-- 186
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3334416009, 'BPKG168998WKFEHJ59');

-- 187
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7109095234, 'SUKY038525SQHAOE00');

-- 188
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2059171033, 'BBBM513681EQZDJT57');

-- 189
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6189371834, 'QCIE219210VPQHDZ47');

-- 190
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3432713601, 'GXVH053752VUNDOJ80');

-- 191
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7146963864, 'ECKB753492KOSBMQ10');

-- 192
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9198034950, 'XFFE479462QDYIFF86');

-- 193
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5127896860, 'NGLS472038CYBJCN53');

-- 194
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6949791552, 'RPDE993483RPJBZD25');

-- 195
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3374128058, 'PPAD243581WDAOTN21');

-- 196
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4652730516, 'BTYV363352JKRADE16');

-- 197
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4351690383, 'BYCE307738ZZZUSM80');

-- 198
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2978301672, 'NDNN821328IVUBXD49');

-- 199
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6580313000, 'AAII970707NPWAQZ06');

-- 200
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7458672518, 'IODW385375CJBFVJ39');

-- 201
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1553205802, 'CFRC049202PYUUIY74');

-- 202
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4665657595, 'NWYH173182ANDLFD12');

-- 203
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2835562397, 'HJED307645ZFOBKP14');

-- 204
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1649824483, 'HKVO847494YDTOQB16');

-- 205
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1542234077, 'VUOY521831YXVEMB13');

-- 206
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5226889102, 'FZOS587363NRVKSX31');

-- 207
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4079088453, 'DMLV523629QGZSMY25');

-- 208
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3230956294, 'NZAQ990768HEHOUO72');

-- 209
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5690007468, 'XOIO603660ESHMMK60');

-- 210
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7481139004, 'UAZL274413QIKFLN88');

-- 211
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9911158142, 'EUZR374549DQISFW00');

-- 212
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9652485956, 'AWYF306074GBJSQY53');

-- 213
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5120542983, 'CDMB904154SMMQEE09');

-- 214
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6039586306, 'DUJB870324ZGFYCH51');

-- 215
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5726824914, 'FJGL959694QHCBRM70');

-- 216
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4140561374, 'OAMG133772SNFLJS03');

-- 217
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7662890617, 'VQCU668285BWATRN95');

-- 218
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2634143212, 'FBJA492561SMXFFM55');

-- 219
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2107090317, 'SLXU964553WUDDCP66');

-- 220
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6096154110, 'ESOM810186YWSOHD80');

-- 221
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1315458322, 'WHQU509616TVKJLT40');

-- 222
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2647871191, 'LHYG168915LPFRFY21');

-- 223
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5858986311, 'IBGU379166GVBMGO25');

-- 224
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6026530720, 'JWLA632896FLHOVI00');

-- 225
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9275183350, 'PCJY498066THLGCE83');

-- 226
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3432380937, 'DQYE678574MPAGZK36');

-- 227
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5701472718, 'GVNV382055EYXNDL65');

-- 228
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4946966385, 'ROBN299036XKIHTB40');

-- 229
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4235078844, 'YOTC480022YIIEQU99');

-- 230
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6181509948, 'DARF827828IYNKBG41');

-- 231
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7777942978, 'OZPT081473QXSVLQ88');

-- 232
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9001581796, 'OYWN409553LARZYD51');

-- 233
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2221002741, 'BBGG844394UILLMI67');

-- 234
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6835230337, 'BPQF498593KOXTQF12');

-- 235
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7468503976, 'AQLR822958OBKJSM09');

-- 236
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8692643600, 'IYWW096366LLSOVX87');

-- 237
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9852510357, 'QAAX615703RIWZMO06');

-- 238
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8759452869, 'MBOO908080JSFFRA58');

-- 239
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5985877167, 'HUXM930630YQCAEP09');

-- 240
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3536071974, 'AGPE554016LKZQSI92');

-- 241
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9311016327, 'QUFI867711SRQTCU69');

-- 242
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6084098740, 'NHEE121814CJLYVR99');

-- 243
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1758409590, 'MFCH535159OWLFBY27');

-- 244
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3280267740, 'BHIW578642HBWNKN95');

-- 245
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5723701465, 'LQNV125883XTBFGD42');

-- 246
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2057126107, 'FHTI479038SAJXTQ33');

-- 247
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6923751586, 'DFYQ709984KRDDQV90');

-- 248
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5574772777, 'HEGA984210PRIBQT54');

-- 249
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7811130694, 'BKXZ550269SVSUET43');

-- 250
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7213069784, 'LWUT595597JHGTVH57');

-- 251
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3810985454, 'TLKG804689JSDXMY83');

-- 252
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9955792502, 'SWFI022655BETUIN55');

-- 253
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9602515680, 'WISJ472203MDGBXC42');

-- 254
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8781388149, 'THHQ560155KYMJKU36');

-- 255
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4274368695, 'GGDP189288NZFDSW42');

-- 256
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4453940284, 'ZWGZ563053DWZGDG20');

-- 257
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9845986433, 'FXZS196818TXNJIC10');

-- 258
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4076828024, 'NFMY791341XIXTTQ53');

-- 259
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1311400703, 'TLAC723470WYRQMP79');

-- 260
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1694972383, 'DXVB047202JUGSFG50');

-- 261
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4479840301, 'WVRN301494XIMWKQ14');

-- 262
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6917920478, 'MOTJ130142WTBDUA83');

-- 263
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8480194455, 'SSVI415926DAMCWL82');

-- 264
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9434037761, 'TRKC445306TTHUMU19');

-- 265
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5197399880, 'WVUC429423DWGMTQ39');

-- 266
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2679440598, 'CBUK009754QTLGOZ78');

-- 267
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (2264230893, 'NUPX391126NOGZVU02');

-- 268
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7160662448, 'BOQL627689EDBQHK40');

-- 269
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5482275421, 'HPBK216583DSQHTJ86');

-- 270
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5867064872, 'YLCF393121WPNRZJ04');

-- 271
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8938053462, 'CQDO399235SUZWIY57');

-- 272
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7020051405, 'UJDA507373GPYRUS21');

-- 273
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9951584219, 'HKQZ478750RITPXI42');

-- 274
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5753042997, 'MAGH576112HCCACU67');

-- 275
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5065776488, 'WYOW355744FHPPCZ32');

-- 276
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5791113306, 'BVTB837027YPZWCF95');

-- 277
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1059538746, 'ADMH476621HQZNXT82');

-- 278
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7039573015, 'DRIA308519UOVWFZ01');

-- 279
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6961991178, 'KAVA272238MDODTV88');

-- 280
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6958516323, 'HYXM939623BBVZXG84');

-- 281
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7825328626, 'SXUI558314YTENKR48');

-- 282
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3283009202, 'XOZD865835CGXAJW73');

-- 283
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7497187089, 'DRCQ057203PPFPMS08');

-- 284
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4283384757, 'SLAG599230FQIHAU25');

-- 285
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (7243014943, 'XMYC210063XHLEHZ17');

-- 286
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5731159421, 'YPYH263871UNOSLT15');

-- 287
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4527275876, 'BWNU816347SJXKOT21');

-- 288
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9857946977, 'LNDV806294HQOLMI33');

-- 289
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1595306511, 'BSWI899010NOEMYL44');

-- 290
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (8575970521, 'BZAE308891OLPIZE92');

-- 291
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (5694185601, 'VUKL663690GZNKFY48');

-- 292
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (3959930254, 'DNRB968995MEQUAW42');

-- 293
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4193273135, 'OUUV010586XAREJO18');

-- 294
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1693631094, 'OHOR481019OPDOMA63');

-- 295
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9508020068, 'WUFJ709188YUXIQV33');

-- 296
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (6394097861, 'NQSQ208506LDGSNZ62');

-- 297
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (1381010493, 'ZWNY658993RUWEZQ90');

-- 298
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (4818166003, 'LLOK259109PSDKJU85');

-- 299
INSERT INTO FARMACIA.TELEFONOS_EMPLEADOS
(telefono, curp)
VALUES (9735232363, 'HCFA667571OQUWPT99');

--------------------

-- 0
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('QCSZ579843FURYGD80', 'PMSZTXCSHMQEGA@gmail.com');

-- 1
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NWGD202887OLPDHK60', 'VINNIC@gmail.com');

-- 2
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DHIG446268BHTWMX13', 'OJXGIPDO@gmail.com');

-- 3
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('YSIJ111384TSRVYY87', 'NTLRNCGOJUOCND@gmail.com');

-- 4
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('LEQM852390YTKWZF50', 'DWIZTT@gmail.com');

-- 5
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('FOWJ109854WBWVEG15', 'LIVXFSYEYQP@gmail.com');

-- 6
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('VSYE675412QGTCPC99', 'IMFQENJC@gmail.com');

-- 7
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('PRXK278424WTGHEO80', 'ZHJMBZYJQAZU@gmail.com');

-- 8
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('CLJN842101XPLOFI94', 'OKDPIYWCBYVUIT@gmail.com');

-- 9
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('XFEA747926PACINI45', 'TZEYC@gmail.com');

-- 10
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ZXRU235386DUYJTU79', 'QHDUCG@gmail.com');

-- 11
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('IIZP825881CZOALZ54', 'LDMMFLJQG@gmail.com');

-- 12
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('MQCV364855OUITLF37', 'SLYEDI@gmail.com');

-- 13
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NDGI068899XJGSUE87', 'OETHHRPCH@gmail.com');

-- 14
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('UEZZ110441VXCQLU74', 'OTWIRAXLSVZ@gmail.com');

-- 15
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('JVNS291039KWEXHD62', 'EZXVDVXDEEUUOD@gmail.com');

-- 16
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ZRSC485883AWJDFT78', 'SLMIPMYWRTN@gmail.com');

-- 17
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('UHRF645445ODUNQS77', 'YZPKPWTE@gmail.com');

-- 18
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DMHY197734VOZMBX89', 'JNERXQE@gmail.com');

-- 19
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('UJNU055386FNKYQE62', 'QVYWDYIECEEIYX@gmail.com');

-- 20
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('QJRR811107SYJPAG18', 'LDOOSFUOLSC@gmail.com');

-- 21
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ELFU903602BYRTWF15', 'CWWCSOTUPX@gmail.com');

-- 22
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('UACD278124IMUTCH37', 'PEDPIALTFBTO@gmail.com');

-- 23
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('GFQL161773SSGFRJ56', 'PCVGAPZOCEZYR@gmail.com');

-- 24
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('FKWS168722RTLZMT52', 'NVBIESPUDB@gmail.com');

-- 25
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('GCAE828154RMJOIR61', 'NVWKFXHMCMN@gmail.com');

-- 26
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('IGFS766410HEDOOP58', 'ZECXWLJYE@gmail.com');

-- 27
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DQMR531247EEHSXI99', 'ACBCMLTMWCCTN@gmail.com');

-- 28
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('FBEY713141HGABQU48', 'ETTYQJVKHVQCV@gmail.com');

-- 29
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DEIF304743NQLSSH27', 'HFMITRAJA@gmail.com');

-- 30
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NKAU724493MTXNSQ78', 'XLMZRACIEV@gmail.com');

-- 31
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('TOUJ842171ZNANRR47', 'JZGTU@gmail.com');

-- 32
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('IGLB952897ALSAWZ90', 'KOFHIKYJ@gmail.com');

-- 33
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NBHN276128WYQPOL54', 'SDPZBETQWQB@gmail.com');

-- 34
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('KXXP795444AATQZG67', 'UJWKUVYAKH@gmail.com');

-- 35
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DBRQ297671RGZFQG26', 'FUNCYYKMZWH@gmail.com');

-- 36
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('HQXI928423JMAVAH55', 'RBCWNV@gmail.com');

-- 37
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('IBAN035333PJBPKH72', 'RFSTVH@gmail.com');

-- 38
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('GISQ369274HOTHUK79', 'TLFPQEZQNQYTOT@gmail.com');

-- 39
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('SEQP902720BDHQAF28', 'JDETJKUYG@gmail.com');

-- 40
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NIXJ217212IGTAUC82', 'RUUOKTCLA@gmail.com');

-- 41
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('QOQN970590QAKFIJ01', 'DFWYO@gmail.com');

-- 42
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('CBGO185996UQAMNG31', 'NXBEKDSMP@gmail.com');

-- 43
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('QPHJ244368OQEABC37', 'IZTEZBEKJ@gmail.com');

-- 44
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('AJWN037484BPKEKJ95', 'WEYBYKKOPPD@gmail.com');

-- 45
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('BYDO324442RGNSZQ44', 'BHBZQJQWGW@gmail.com');

-- 46
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('YUSK048612LKACLW26', 'GGHEKZGIDDGV@gmail.com');

-- 47
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NIYG585361ZJJRGH41', 'HNZBVQFMF@gmail.com');

-- 48
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('OKRC487083LKGTNW41', 'MVGCRYNTWI@gmail.com');

-- 49
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('UCDP810534UAIACV97', 'KQINSM@gmail.com');

-- 50
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('KBRI418368FHQJZP90', 'MKZKEKETCND@gmail.com');

-- 51
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('UGIA281059KLZCIR39', 'VBMLA@gmail.com');

-- 52
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('CYUC904662IWQOFH01', 'AYOPW@gmail.com');

-- 53
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('OQHW025810EJNLNC31', 'TTNIOWHB@gmail.com');

-- 54
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ZUYX924485LTLYAS19', 'JSNNYPPR@gmail.com');

-- 55
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('VYCA082252GGPOGP47', 'MRRKWN@gmail.com');

-- 56
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('GSXJ684356CSXIYQ34', 'ULMAOOSFDGYO@gmail.com');

-- 57
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('CLOH331137CJAGOU27', 'CRJVI@gmail.com');

-- 58
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('BAIB280357WAKGQC25', 'JXGYMYDSHPVX@gmail.com');

-- 59
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('FKDV272933SAPSWT81', 'BFQLNKRWEHWN@gmail.com');

-- 60
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('PRNO937038FKKQZS96', 'JFSJEEGDBBXR@gmail.com');

-- 61
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ECHF567470XNVAGH51', 'PHRINMHNFM@gmail.com');

-- 62
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('VAVV911377WPXOWT13', 'UBBCUXCVLIBMHB@gmail.com');

-- 63
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('QRVT835395MKNXRK27', 'ZCICRBK@gmail.com');

-- 64
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('STTK784422SSZUZQ09', 'IBFXQSBWFW@gmail.com');

-- 65
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('JIHT365281QNORKX69', 'VWPYENTRXDT@gmail.com');

-- 66
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NGYB287322RVGPLI00', 'FMKPXEIIQJDK@gmail.com');

-- 67
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DGOO872006GMHWRU71', 'NZQUMM@gmail.com');

-- 68
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('VDCA926916YGOPLX74', 'AWSQLNFRLWPQCG@gmail.com');

-- 69
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('EBRT011874WVQYVC03', 'VOEUVNDI@gmail.com');

-- 70
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('VVJV735129UOTNOW86', 'SYRMAOCJWYN@gmail.com');

-- 71
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DZPK779756APIBEM16', 'GJRKLLNAWN@gmail.com');

-- 72
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ZMNU711598GSDQJT07', 'UHNQDKMOSDYH@gmail.com');

-- 73
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('MPDQ801816ORVGIM66', 'ERTEMZHR@gmail.com');

-- 74
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('AFKH790612YANUFL72', 'PFDWF@gmail.com');

-- 75
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('PTMJ213151NXHRBC84', 'ETCSNLWYVIE@gmail.com');

-- 76
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NEAM995254MCUWZH62', 'YUMQXDDEJ@gmail.com');

-- 77
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('BGNW832327TVNFAK34', 'ABTLUXYQPFMYTT@gmail.com');

-- 78
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('WVLE908194LAHKCV69', 'ECSOWRAZI@gmail.com');

-- 79
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('DDVA852446EPATEG22', 'HNZVCKOZLSJA@gmail.com');

-- 80
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('OQIW027425DZZJIG38', 'JLKSWQMBSI@gmail.com');

-- 81
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('WGWU309415LUAEDV40', 'YYMPJUWIGBLNAI@gmail.com');

-- 82
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('MNIN775884FNPMRL54', 'CSEUK@gmail.com');

-- 83
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('NPJO985323WRRDAY85', 'HPBJPA@gmail.com');

-- 84
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('LSIU608830TOYZIX01', 'CMODB@gmail.com');

-- 85
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('OUBP138055QEQSJA34', 'RTMIOQ@gmail.com');

-- 86
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ARZF029384WEMCXP24', 'ZYZXG@gmail.com');

-- 87
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('EKUK250512OWUHAU49', 'NGJSQXOQPJMNLX@gmail.com');

-- 88
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('VAQE500534GMXMKF50', 'HKZBBTE@gmail.com');

-- 89
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('VZPU619037BFOEJW93', 'GKDTJ@gmail.com');

-- 90
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('LKOY942289EVIEOW81', 'OYPKGUXTML@gmail.com');

-- 91
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('TOJY793949DCGRLL87', 'VHUXLWQUMUGUCJ@gmail.com');

-- 92
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('FRAA727517FSGMYP25', 'JYQEB@gmail.com');

-- 93
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('MTRX704880OSONBG84', 'LAQNWMLSNG@gmail.com');

-- 94
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('KXMW127712KFKERE02', 'JWQNWRROH@gmail.com');

-- 95
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('UFUZ556413MWQNJN75', 'FRFNSIACXIR@gmail.com');

-- 96
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('JLBN098470KQEKFF00', 'UMJNCOPXFF@gmail.com');

-- 97
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('RPQU464521SENQOL82', 'ZCJTSKBGD@gmail.com');

-- 98
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('ULJW732539WGIYVO56', 'HHLJOXBN@gmail.com');

-- 99
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_CLIENTES
(curp, correo_electronico)
VALUES ('YAZU781536ZSOHDT71', 'VEDEIQQOSFRI@gmail.com');

--------------

-- 0
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DUJT520385WWSSPZ92', 'XDYJVYGYVHLWBZ@gmail.com');

-- 1
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FNBP664860NDTTUA58', 'LYPWPSQ@gmail.com');

-- 2
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JXUM191601LNNIRT40', 'PRPQPGNLWST@gmail.com');

-- 3
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RZFQ610211TZYOBB26', 'CSIDKP@gmail.com');

-- 4
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PBGM829968NNQNIO68', 'ODRBSLO@gmail.com');

-- 5
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ABTO310894IGIIPY04', 'XDCLYLEQSIC@gmail.com');

-- 6
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZKVB944162EQIXJW74', 'UXHBUMSXU@gmail.com');

-- 7
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BNEV679820FIYJMS98', 'FJNKMBUDRW@gmail.com');

-- 8
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PNEN694790NDTMFC05', 'VQZBFBLBHV@gmail.com');

-- 9
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QOPA743619MZEBLQ57', 'UUITZ@gmail.com');

-- 10
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SDUR546908ZWLSHX31', 'BAVEITISGV@gmail.com');

-- 11
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('UERO137471MAECIG45', 'VLNBCOJYVUJF@gmail.com');

-- 12
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FWVX382269CGXWIU54', 'XDRQTRSKI@gmail.com');

-- 13
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PFPE543352VHOYXU21', 'UUTTACOGHC@gmail.com');

-- 14
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('UZTT737905DQAOPG48', 'YFKHPEPSDOIZPS@gmail.com');

-- 15
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WDJS323732ELDEIX37', 'RYJQVMHNG@gmail.com');

-- 16
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FGFO782944MBPAHX53', 'DVTGOLCYZHW@gmail.com');

-- 17
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TKWA774276TMERVY27', 'FERWXKNDPP@gmail.com');

-- 18
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZKBN728545PJZVLY57', 'IZQHNGKVRFG@gmail.com');

-- 19
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OZNF350805GTTMOE80', 'FMYOMDST@gmail.com');

-- 20
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RKGO879447IOEVJR86', 'JUMLZHC@gmail.com');

-- 21
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SVEI182865LICZVM64', 'YTZEFIQI@gmail.com');

-- 22
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XFBJ045518ITUSFD33', 'UTUHLCANWYYHGB@gmail.com');

-- 23
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ODLD869153IQZFQY13', 'HKVINCKAB@gmail.com');

-- 24
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JBIU751786FWLQWJ84', 'CJHYOMHJG@gmail.com');

-- 25
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CMTK580712DEXAEK75', 'XZNOIVRWJ@gmail.com');

-- 26
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JZGJ536895AARWLR62', 'GOCVKOOOPZM@gmail.com');

-- 27
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GTMA596214VLNNDA86', 'RWKUBTLLDFO@gmail.com');

-- 28
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OTLU569091RLWVQX43', 'HNUNWIIYN@gmail.com');

-- 29
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MAQD059011RCEZBY06', 'YQBMU@gmail.com');

-- 30
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CUUM204842QGQVJS89', 'TOXUYX@gmail.com');

-- 31
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FZCS843979QEZVTB91', 'WIRWKCJEGNK@gmail.com');

-- 32
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WQQR117203ISVLKY43', 'WYFJPBPZLNUWXT@gmail.com');

-- 33
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YFRN661386JIBPGW84', 'OBGHZGEG@gmail.com');

-- 34
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VDCI372861LMKITO48', 'QHBKJR@gmail.com');

-- 35
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FWBR139309AMRPPC29', 'FXIFTLLPWGF@gmail.com');

-- 36
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LNAY703886JIOCYX82', 'PUSZZTYLFRKC@gmail.com');

-- 37
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FNCA201324GEFHIE04', 'ICOBKQFZYGZLOD@gmail.com');

-- 38
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SFJO385754ZFKVOK35', 'ZYIKHPINCWGXSG@gmail.com');

-- 39
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LNZE966476HKMTEC16', 'LAPBLT@gmail.com');

-- 40
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('UKDX811444LPWWRR74', 'ZZDSKXXUKPZODR@gmail.com');

-- 41
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AOAW637310PIYZHK98', 'CLTINC@gmail.com');

-- 42
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZRHX143784HEOPGH64', 'WUDZEWNS@gmail.com');

-- 43
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XKRG130875DILYAS34', 'GMOWLK@gmail.com');

-- 44
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YLVW978270FZXYUH89', 'BIIBEHQCYGX@gmail.com');

-- 45
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EJKT747424UNNVNV73', 'JMRLW@gmail.com');

-- 46
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QUCN868932NDHRHX79', 'DNURVTRMN@gmail.com');

-- 47
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZEIL335005MUNBRB20', 'UPQGG@gmail.com');

-- 48
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OCGM700003KJUHDM89', 'IYHHJN@gmail.com');

-- 49
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZQBS173107IMZKNX50', 'KUADLPTX@gmail.com');

-- 50
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ELLL931499GGERYX83', 'KXTHFXUVSZBMII@gmail.com');

-- 51
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EOIU037873HUNIWK85', 'DQEHRV@gmail.com');

-- 52
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BFPF951082CFHSQI91', 'PIIRZVYHZEXN@gmail.com');

-- 53
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CMJR157553ZTIRUJ48', 'PGGEICSS@gmail.com');

-- 54
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AMPR882717FWGLER99', 'ONJKFCSV@gmail.com');

-- 55
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WZYC167831QFXGAK86', 'FKXJVWNAM@gmail.com');

-- 56
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BAGX131028GDKENZ06', 'IODAAANMS@gmail.com');

-- 57
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IHRS438222IFZKVP68', 'GCVLNZYEGPRSY@gmail.com');

-- 58
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YOVN837642ZTSDKA94', 'RJGTF@gmail.com');

-- 59
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VSAE140040ZOQKTA23', 'SLHFDGZMJAH@gmail.com');

-- 60
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IBLL249047ODZNMB80', 'IFIMPIGCCDWJ@gmail.com');

-- 61
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JRFP342861MYJNLN59', 'RAYWPKS@gmail.com');

-- 62
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HBIO602680MDMYLB45', 'ZZCTSZUAI@gmail.com');

-- 63
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VAGD039713DGLFMY57', 'LCOVTYYR@gmail.com');

-- 64
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LMHL092478TJPWLY21', 'NECUNIZRILQEUH@gmail.com');

-- 65
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('UNGH686930FYWWKK86', 'XALYUEZVXTWJ@gmail.com');

-- 66
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RCEX464673WSGOVC04', 'HOSAIY@gmail.com');

-- 67
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('KYPS720853XKRVCC07', 'GIPVLAOW@gmail.com');

-- 68
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VRAC031361XTDCSC95', 'JREILYPXFBHZIO@gmail.com');

-- 69
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VDHX845651DISSAW73', 'KTKOSJBNPLPF@gmail.com');

-- 70
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NHMO394616DPLDOI15', 'ZEABPNQSWTVDTI@gmail.com');

-- 71
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QJLX852617HFGPBN33', 'ASITGDN@gmail.com');

-- 72
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NNFS870029LDUZBC50', 'RPPZUYUPOQ@gmail.com');

-- 73
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GTQN799319OESOGO44', 'AFJIFTFHU@gmail.com');

-- 74
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QVYA617980GPGGEZ23', 'CBBQNQJK@gmail.com');

-- 75
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FCOY822521VAZYGN95', 'LDNSX@gmail.com');

-- 76
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LYDN893450JZCRJU07', 'PLLTJXCEJ@gmail.com');

-- 77
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YPOY882577GBAUOD48', 'CJTAYWHXQFC@gmail.com');

-- 78
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('KRFI125551FIRHAO86', 'XKCBHGPBUEAMPC@gmail.com');

-- 79
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SWGI088105AMLQOF18', 'OOPAXHONNK@gmail.com');

-- 80
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EGDQ347498QQRPUN80', 'OUQPZQZVBB@gmail.com');

-- 81
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IHGB442064PILXWJ96', 'DNDEXKTEIYM@gmail.com');

-- 82
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BHCQ424631UOIFIP48', 'MIHCFPRDY@gmail.com');

-- 83
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EBNU455599MZBNNT21', 'FIVEOCOZZEACBU@gmail.com');

-- 84
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XYSQ176402ZRMDAI57', 'JJZASZM@gmail.com');

-- 85
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VMQV653925ALHWDZ19', 'FOFVYU@gmail.com');

-- 86
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CTGA150693BNGLLD61', 'GXVAYJSMZ@gmail.com');

-- 87
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YYNJ718266YGYPFG62', 'FCPCV@gmail.com');

-- 88
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BFDO671516EYAOTO44', 'RCOGLBJZY@gmail.com');

-- 89
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TCSA375332XZJWVY92', 'HSCKZJCKJHZNP@gmail.com');

-- 90
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PDGI374816NXFMZI47', 'EAPOW@gmail.com');

-- 91
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZUTO686141PSPSQW05', 'KVDCPHJVEKTY@gmail.com');

-- 92
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AQDF281375MKZNQY18', 'MRPLICEFV@gmail.com');

-- 93
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ELSU905133UPCBWR61', 'RXVFYXIWYPJKF@gmail.com');

-- 94
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FYEG274215PMCEEQ89', 'XRXDSXO@gmail.com');

-- 95
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PRCV782276NSIXMV83', 'JXHTMNOI@gmail.com');

-- 96
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NLMN741977RKTHGE81', 'UYHQDBHFEILRS@gmail.com');

-- 97
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CBRE030342YRPZUS23', 'NUVANV@gmail.com');

-- 98
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HYCB358062DVRRLI75', 'MXECXQ@gmail.com');

-- 99
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZOOW730640LHDAUA14', 'NCYEIXICT@gmail.com');

-- 100
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RRTL708582BHEJNM76', 'PSJNOWN@gmail.com');

-- 101
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZRAF443793HSMMDN46', 'YSWCEVWGVYMEMU@gmail.com');

-- 102
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RPPN022952YUWJOP76', 'TBNNUKTLRL@gmail.com');

-- 103
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TCAH830502BISURQ68', 'YVONITHHFE@gmail.com');

-- 104
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('POBD171002WYSITM94', 'HHDPDOQJL@gmail.com');

-- 105
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HHYG249263JDYHAM92', 'BIMMCAWJ@gmail.com');

-- 106
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EGXI919192UXPDLO79', 'PFXEXJLE@gmail.com');

-- 107
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CZBI207262KYBIBR69', 'GYLFPDVG@gmail.com');

-- 108
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IYPY491461CRGQGB84', 'LZHANXHVEKIPFJ@gmail.com');

-- 109
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XAKG280970YHRUMU21', 'BKZXVWX@gmail.com');

-- 110
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PKNN687285STISKL04', 'GYHRMELIB@gmail.com');

-- 111
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OIWM772957KROVOI54', 'CRFPMHPRVSV@gmail.com');

-- 112
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YJNY504968RBNSFX19', 'ONFCZAOUGMWFV@gmail.com');

-- 113
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PXBW439349YKQAEG49', 'FCUWBEXMWZJXXJ@gmail.com');

-- 114
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZPVH698791JDBMOT45', 'GEQQLHHNLSF@gmail.com');

-- 115
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QZGA194111UOKSSR19', 'UOPQDOBIAJ@gmail.com');

-- 116
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HDBV184909ACXITT24', 'GOGIBWTESQJK@gmail.com');

-- 117
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GPCL653439OBKIKI99', 'HJHLFCMAHAOB@gmail.com');

-- 118
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZDVW453583ERDALB68', 'JLGHJ@gmail.com');

-- 119
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HKWF015354IDEEUW45', 'VSXCL@gmail.com');

-- 120
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JOVE801177NBQXUD43', 'DGYJLRLHW@gmail.com');

-- 121
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HSMA707993ILEPIA42', 'XVFWVQUC@gmail.com');

-- 122
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JVRZ107741BTNNFZ35', 'JZOFQTXXWQBHH@gmail.com');

-- 123
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MYRY376099DLAAHE40', 'PSXDUABRMYWZQ@gmail.com');

-- 124
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GTWK917658HDEZOI41', 'NAGJLZRVA@gmail.com');

-- 125
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GCYC219950RBVKGR06', 'JKHBJR@gmail.com');

-- 126
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EKXR764337AOOWMS55', 'DURXSLPOLQ@gmail.com');

-- 127
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VCKT321426RPRHRB33', 'AWOAH@gmail.com');

-- 128
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZVFP283286BMXVIT67', 'VBWPBDKSNWVX@gmail.com');

-- 129
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CETC406189PYOVUY58', 'GBEZR@gmail.com');

-- 130
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YAAU447540MCBXRI33', 'ATQVPDCAPNU@gmail.com');

-- 131
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JKWQ400174DBAJKE94', 'PRSOKUXFEIUHZ@gmail.com');

-- 132
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WCZX802291IGFYSV17', 'ZLEOHKMY@gmail.com');

-- 133
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HZJF442938EHRLJL85', 'GSFRJEPIF@gmail.com');

-- 134
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LXGM045447AAUZQJ02', 'UYUVPAM@gmail.com');

-- 135
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MYWT820092XOUKSX87', 'BAIYJGSFZVMDCW@gmail.com');

-- 136
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XWIX832146GBCLAU73', 'YQQXX@gmail.com');

-- 137
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('USVT694115SHCCPU83', 'VCSFMJWJ@gmail.com');

-- 138
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RJBQ960298DSABKG94', 'SRLMLC@gmail.com');

-- 139
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RTUO329674RXMPDG70', 'DMXZQ@gmail.com');

-- 140
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DLJK861752UWSHFB27', 'OTDJL@gmail.com');

-- 141
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FOUV375066FBULQG33', 'BWWDRRT@gmail.com');

-- 142
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CEMJ404375BXDFRI14', 'MEPXFLYR@gmail.com');

-- 143
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BWQQ938933IKIXHR97', 'NIGQN@gmail.com');

-- 144
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YNMK058083GPKYDO47', 'OWVXA@gmail.com');

-- 145
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AIZT485557CISQXD32', 'JHZTQ@gmail.com');

-- 146
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XEMW261205MUEGJS76', 'VGZZNHTQUBIFXU@gmail.com');

-- 147
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('POEU593586AHZHNV52', 'YXDCS@gmail.com');

-- 148
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GCUP703647PXXCZT02', 'RRNPOLJH@gmail.com');

-- 149
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TBJK301463TBJWAD46', 'AKXZVSWDCI@gmail.com');

-- 150
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NBRQ166554IYHKAG07', 'QQGWX@gmail.com');

-- 151
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QVSO038951KBDRRX59', 'OJYVREKHJ@gmail.com');

-- 152
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IIUW741877DWGZZL34', 'NDYIKREKJBV@gmail.com');

-- 153
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NJAR645650JIGWQZ32', 'TIPERZPWIP@gmail.com');

-- 154
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MYDG181971URECZL81', 'EXPANZZAALYOGV@gmail.com');

-- 155
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CLEA460756SQUOTW22', 'RHFONQLX@gmail.com');

-- 156
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HENU378154GZUUND01', 'TUWGCAQ@gmail.com');

-- 157
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SQTV843259KCEJKV51', 'DNSNZKETYY@gmail.com');

-- 158
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZVDX351531FRIXBY22', 'FXEZFFHUDVJM@gmail.com');

-- 159
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VFIT911730CBFETA69', 'JKLYNK@gmail.com');

-- 160
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DPDO570682HWZCCJ74', 'IQOHHXHWVCRK@gmail.com');

-- 161
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TCAQ357610WBLUCX40', 'EPNIXDCRRK@gmail.com');

-- 162
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GCXB230550JFDNOC76', 'GTNPIOFL@gmail.com');

-- 163
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TREC178381ZBEZJC55', 'MYLCHGGZDZW@gmail.com');

-- 164
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CJGN141010RKHMRH69', 'MNTXVGNL@gmail.com');

-- 165
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AENN624771GCZIYN27', 'ZQFHBB@gmail.com');

-- 166
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EQKK317632ELDGMT33', 'BOGSE@gmail.com');

-- 167
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ANRT843978ABRRUP75', 'NPTOSTO@gmail.com');

-- 168
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MSMI936618KTYFHJ61', 'BSLMPA@gmail.com');

-- 169
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RBST275248ZLWQBK66', 'GLTTRY@gmail.com');

-- 170
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YIKO514519ISNKDM10', 'AWIFHEP@gmail.com');

-- 171
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GDEP392193XCMPNQ38', 'SXXMPEN@gmail.com');

-- 172
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PVCT388680RVCLGD58', 'DCAZQAZRYFY@gmail.com');

-- 173
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QYFP403555WIPOIC84', 'FDMXQMYKXIMVQ@gmail.com');

-- 174
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FKBM231726LHAXPT21', 'SUOPIQBXVC@gmail.com');

-- 175
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PVKH699485UVWRSC75', 'JJAKB@gmail.com');

-- 176
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TAAQ547340KNSETN48', 'OCKTYSMBNG@gmail.com');

-- 177
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LVCU261596ISTJXI83', 'TXUGKQBRJCDW@gmail.com');

-- 178
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VNKT334665ONWYEE04', 'MEUEAZMMGX@gmail.com');

-- 179
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IIRD686165RMIUDP94', 'LXRXR@gmail.com');

-- 180
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QTQM795489BGQYMU75', 'TBAKLNFCBI@gmail.com');

-- 181
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FISA775537LLVZFK86', 'ZCYFHCXSOXMCU@gmail.com');

-- 182
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZXRZ020192KQMWHK48', 'IVFABOEODZSVJ@gmail.com');

-- 183
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('POVR857280TCKGHE80', 'LBTAOPRSCZQ@gmail.com');

-- 184
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BGNK462831VMWCKN72', 'VZGFEVNLIAD@gmail.com');

-- 185
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ABZO464902GTDFJL32', 'FTXXDWTR@gmail.com');

-- 186
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BPKG168998WKFEHJ59', 'NDKPIERWIXXJJ@gmail.com');

-- 187
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SUKY038525SQHAOE00', 'BKOPEYM@gmail.com');

-- 188
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BBBM513681EQZDJT57', 'WPDHDWPHQW@gmail.com');

-- 189
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QCIE219210VPQHDZ47', 'DEMKXAHJYAIF@gmail.com');

-- 190
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GXVH053752VUNDOJ80', 'DYULGHJHPNJS@gmail.com');

-- 191
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ECKB753492KOSBMQ10', 'KZPDH@gmail.com');

-- 192
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XFFE479462QDYIFF86', 'AMOTHIFGPD@gmail.com');

-- 193
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NGLS472038CYBJCN53', 'YIXMHLSK@gmail.com');

-- 194
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('RPDE993483RPJBZD25', 'WMFVBZGLX@gmail.com');

-- 195
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PPAD243581WDAOTN21', 'SLKNNTQSU@gmail.com');

-- 196
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BTYV363352JKRADE16', 'GGWMFCYC@gmail.com');

-- 197
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BYCE307738ZZZUSM80', 'NPASOM@gmail.com');

-- 198
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NDNN821328IVUBXD49', 'HCZQMN@gmail.com');

-- 199
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AAII970707NPWAQZ06', 'TOGDFLD@gmail.com');

-- 200
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IODW385375CJBFVJ39', 'VXPFDSKUZWBRHP@gmail.com');

-- 201
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CFRC049202PYUUIY74', 'XBFPQMNIQIE@gmail.com');

-- 202
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NWYH173182ANDLFD12', 'ODIWSDALGXTZVK@gmail.com');

-- 203
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HJED307645ZFOBKP14', 'WFYZHNHBCSYMB@gmail.com');

-- 204
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HKVO847494YDTOQB16', 'IHKFZBJRCNB@gmail.com');

-- 205
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VUOY521831YXVEMB13', 'EPWAIZOMM@gmail.com');

-- 206
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FZOS587363NRVKSX31', 'VZNLCN@gmail.com');

-- 207
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DMLV523629QGZSMY25', 'YGZSHGECKI@gmail.com');

-- 208
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NZAQ990768HEHOUO72', 'PFYVNJJOVFUJ@gmail.com');

-- 209
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XOIO603660ESHMMK60', 'SNVPKAHJ@gmail.com');

-- 210
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('UAZL274413QIKFLN88', 'HQCVJBWXDZ@gmail.com');

-- 211
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('EUZR374549DQISFW00', 'UWEEOHIEBJENW@gmail.com');

-- 212
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AWYF306074GBJSQY53', 'ONOGUFZJIAOO@gmail.com');

-- 213
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CDMB904154SMMQEE09', 'TDYCEV@gmail.com');

-- 214
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DUJB870324ZGFYCH51', 'JBEXKEAGOTRQVA@gmail.com');

-- 215
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FJGL959694QHCBRM70', 'FGYVYGDWI@gmail.com');

-- 216
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OAMG133772SNFLJS03', 'KTDPGAWF@gmail.com');

-- 217
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VQCU668285BWATRN95', 'LJWIATUUE@gmail.com');

-- 218
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FBJA492561SMXFFM55', 'IOAWFUUMH@gmail.com');

-- 219
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SLXU964553WUDDCP66', 'MKRFRL@gmail.com');

-- 220
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ESOM810186YWSOHD80', 'CXRQRTEUROFNL@gmail.com');

-- 221
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WHQU509616TVKJLT40', 'HPJKBWQNLKHVG@gmail.com');

-- 222
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LHYG168915LPFRFY21', 'RLTWOBOEW@gmail.com');

-- 223
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IBGU379166GVBMGO25', 'NURRETCRDDKBY@gmail.com');

-- 224
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('JWLA632896FLHOVI00', 'LWPELDPBFFZA@gmail.com');

-- 225
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('PCJY498066THLGCE83', 'EINLOG@gmail.com');

-- 226
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DQYE678574MPAGZK36', 'ANJNDNIQ@gmail.com');

-- 227
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GVNV382055EYXNDL65', 'TAURYHQJEYAINY@gmail.com');

-- 228
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ROBN299036XKIHTB40', 'DYVQUZQSUX@gmail.com');

-- 229
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YOTC480022YIIEQU99', 'LDFLFULCRU@gmail.com');

-- 230
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DARF827828IYNKBG41', 'NYMZNEDYJD@gmail.com');

-- 231
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OZPT081473QXSVLQ88', 'EWWAHNWKNSCPB@gmail.com');

-- 232
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OYWN409553LARZYD51', 'ESFLDFTHFJAA@gmail.com');

-- 233
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BBGG844394UILLMI67', 'TQOFTBJCMMXHR@gmail.com');

-- 234
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BPQF498593KOXTQF12', 'YNCRHMYR@gmail.com');

-- 235
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AQLR822958OBKJSM09', 'TEWZEXJSJWP@gmail.com');

-- 236
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('IYWW096366LLSOVX87', 'HGJCLPP@gmail.com');

-- 237
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QAAX615703RIWZMO06', 'CGCSRRUU@gmail.com');

-- 238
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MBOO908080JSFFRA58', 'KBETZWYHUI@gmail.com');

-- 239
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HUXM930630YQCAEP09', 'LZMNKPYCSDBE@gmail.com');

-- 240
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('AGPE554016LKZQSI92', 'MZDTSEJKCQNXE@gmail.com');

-- 241
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('QUFI867711SRQTCU69', 'QAHPSZAMTDV@gmail.com');

-- 242
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NHEE121814CJLYVR99', 'OLDSQLGRGFGU@gmail.com');

-- 243
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MFCH535159OWLFBY27', 'EWGUFJTVTLJS@gmail.com');

-- 244
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BHIW578642HBWNKN95', 'PIELTYLALS@gmail.com');

-- 245
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LQNV125883XTBFGD42', 'OHWUWFVSQMTXSV@gmail.com');

-- 246
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FHTI479038SAJXTQ33', 'VSZPODMXAG@gmail.com');

-- 247
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DFYQ709984KRDDQV90', 'EVACYNEN@gmail.com');

-- 248
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HEGA984210PRIBQT54', 'JLZFBLUJPQ@gmail.com');

-- 249
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BKXZ550269SVSUET43', 'NYRLHIBVUAJGE@gmail.com');

-- 250
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LWUT595597JHGTVH57', 'JVLDGETFGXQTGS@gmail.com');

-- 251
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TLKG804689JSDXMY83', 'UHTHRKNCV@gmail.com');

-- 252
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SWFI022655BETUIN55', 'TCSJOIIOYUPO@gmail.com');

-- 253
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WISJ472203MDGBXC42', 'DIGSBDYZLUIUC@gmail.com');

-- 254
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('THHQ560155KYMJKU36', 'TBZNSMKU@gmail.com');

-- 255
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('GGDP189288NZFDSW42', 'TEBXIJNM@gmail.com');

-- 256
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZWGZ563053DWZGDG20', 'NGHSTLOGK@gmail.com');

-- 257
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('FXZS196818TXNJIC10', 'WAGLHQJI@gmail.com');

-- 258
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NFMY791341XIXTTQ53', 'TPRQDLGBBCAH@gmail.com');

-- 259
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TLAC723470WYRQMP79', 'JDXYZMINQSGF@gmail.com');

-- 260
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DXVB047202JUGSFG50', 'QTIAVTJISO@gmail.com');

-- 261
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WVRN301494XIMWKQ14', 'UJCELOAFGWSXN@gmail.com');

-- 262
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MOTJ130142WTBDUA83', 'VGKPPKCM@gmail.com');

-- 263
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SSVI415926DAMCWL82', 'ZBAPDSKPCKVGLR@gmail.com');

-- 264
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('TRKC445306TTHUMU19', 'LJKOUCSFFP@gmail.com');

-- 265
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WVUC429423DWGMTQ39', 'YMXINMOM@gmail.com');

-- 266
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CBUK009754QTLGOZ78', 'STFAIUVQY@gmail.com');

-- 267
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NUPX391126NOGZVU02', 'DSLMXGZJOSM@gmail.com');

-- 268
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BOQL627689EDBQHK40', 'PMRCTGIQZMY@gmail.com');

-- 269
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HPBK216583DSQHTJ86', 'RITETWWUZUKYP@gmail.com');

-- 270
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YLCF393121WPNRZJ04', 'LHEYRJCNC@gmail.com');

-- 271
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('CQDO399235SUZWIY57', 'WMSSGFPWBVW@gmail.com');

-- 272
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('UJDA507373GPYRUS21', 'EPYCFEPWM@gmail.com');

-- 273
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HKQZ478750RITPXI42', 'XKLTPNN@gmail.com');

-- 274
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('MAGH576112HCCACU67', 'INOAUVEL@gmail.com');

-- 275
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WYOW355744FHPPCZ32', 'SQPHGBW@gmail.com');

-- 276
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BVTB837027YPZWCF95', 'DTNZAE@gmail.com');

-- 277
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ADMH476621HQZNXT82', 'PSDMPN@gmail.com');

-- 278
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DRIA308519UOVWFZ01', 'ZLGGV@gmail.com');

-- 279
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('KAVA272238MDODTV88', 'NFDNNVXPNC@gmail.com');

-- 280
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HYXM939623BBVZXG84', 'HTSIUYALIN@gmail.com');

-- 281
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SXUI558314YTENKR48', 'LETWNSWFLWDS@gmail.com');

-- 282
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XOZD865835CGXAJW73', 'LAUZYBTYB@gmail.com');

-- 283
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DRCQ057203PPFPMS08', 'NNOXPDHEELPO@gmail.com');

-- 284
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('SLAG599230FQIHAU25', 'DXLWSZAJFD@gmail.com');

-- 285
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('XMYC210063XHLEHZ17', 'XYHPUIBMF@gmail.com');

-- 286
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('YPYH263871UNOSLT15', 'RSKVDTEZYMJW@gmail.com');

-- 287
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BWNU816347SJXKOT21', 'HAMWG@gmail.com');

-- 288
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LNDV806294HQOLMI33', 'OHNJJNQZFHWYXY@gmail.com');

-- 289
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BSWI899010NOEMYL44', 'BGKXHBM@gmail.com');

-- 290
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('BZAE308891OLPIZE92', 'JPLTABKFEUCT@gmail.com');

-- 291
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('VUKL663690GZNKFY48', 'VDMCWCUSRQI@gmail.com');

-- 292
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('DNRB968995MEQUAW42', 'INGAQYVSIDN@gmail.com');

-- 293
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OUUV010586XAREJO18', 'QOIWIBJTL@gmail.com');

-- 294
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('OHOR481019OPDOMA63', 'JNOIM@gmail.com');

-- 295
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('WUFJ709188YUXIQV33', 'MNKNIBLIOW@gmail.com');

-- 296
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('NQSQ208506LDGSNZ62', 'UQSHS@gmail.com');

-- 297
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('ZWNY658993RUWEZQ90', 'WVKECJILPCJLAZ@gmail.com');

-- 298
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('LLOK259109PSDKJU85', 'WXFUVH@gmail.com');

-- 299
INSERT INTO FARMACIA.CORREOS_ELECTRONICOS_EMPLEADOS
(curp, correo_electronico)
VALUES ('HCFA667571OQUWPT99', 'SUHOLFD@gmail.com');

----------------

-- 0
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (74806040, 'DUJT520385WWSSPZ92');

-- 1
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (63797184, 'FNBP664860NDTTUA58');

-- 2
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (75276454, 'JXUM191601LNNIRT40');

-- 3
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (82335815, 'RZFQ610211TZYOBB26');

-- 4
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (55649882, 'PBGM829968NNQNIO68');

-- 5
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (85976107, 'ABTO310894IGIIPY04');

-- 6
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (36862805, 'ZKVB944162EQIXJW74');

-- 7
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (78408167, 'BNEV679820FIYJMS98');

-- 8
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (79937096, 'PNEN694790NDTMFC05');

-- 9
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (42898523, 'QOPA743619MZEBLQ57');

-- 10
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (19115968, 'SDUR546908ZWLSHX31');

-- 11
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (93426230, 'UERO137471MAECIG45');

-- 12
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (93695598, 'FWVX382269CGXWIU54');

-- 13
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (85343714, 'PFPE543352VHOYXU21');

-- 14
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (56049339, 'UZTT737905DQAOPG48');

-- 15
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (87497894, 'WDJS323732ELDEIX37');

-- 16
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (97215835, 'FGFO782944MBPAHX53');

-- 17
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (89495837, 'TKWA774276TMERVY27');

-- 18
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (34288857, 'ZKBN728545PJZVLY57');

-- 19
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (42373237, 'OZNF350805GTTMOE80');

-- 20
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (24884349, 'RKGO879447IOEVJR86');

-- 21
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (27219056, 'SVEI182865LICZVM64');

-- 22
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (54927763, 'XFBJ045518ITUSFD33');

-- 23
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (40388511, 'ODLD869153IQZFQY13');

-- 24
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (25869274, 'JBIU751786FWLQWJ84');

-- 25
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (65200768, 'CMTK580712DEXAEK75');

-- 26
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (83298164, 'JZGJ536895AARWLR62');

-- 27
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (64278079, 'GTMA596214VLNNDA86');

-- 28
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (55779190, 'OTLU569091RLWVQX43');

-- 29
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (45833042, 'MAQD059011RCEZBY06');

-- 30
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (77105202, 'CUUM204842QGQVJS89');

-- 31
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (41775576, 'FZCS843979QEZVTB91');

-- 32
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (70869955, 'WQQR117203ISVLKY43');

-- 33
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (63725936, 'YFRN661386JIBPGW84');

-- 34
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (88795823, 'VDCI372861LMKITO48');

-- 35
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (14636601, 'FWBR139309AMRPPC29');

-- 36
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (36633709, 'LNAY703886JIOCYX82');

-- 37
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (83049479, 'FNCA201324GEFHIE04');

-- 38
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (38029215, 'SFJO385754ZFKVOK35');

-- 39
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (24441607, 'LNZE966476HKMTEC16');

-- 40
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (79541582, 'UKDX811444LPWWRR74');

-- 41
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (59414577, 'AOAW637310PIYZHK98');

-- 42
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (52067029, 'ZRHX143784HEOPGH64');

-- 43
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (12595486, 'XKRG130875DILYAS34');

-- 44
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (80963037, 'YLVW978270FZXYUH89');

-- 45
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (81869754, 'EJKT747424UNNVNV73');

-- 46
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (65689594, 'QUCN868932NDHRHX79');

-- 47
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (72633137, 'ZEIL335005MUNBRB20');

-- 48
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (64520774, 'OCGM700003KJUHDM89');

-- 49
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (61670674, 'ZQBS173107IMZKNX50');

---------------

-- 0
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Alergología', 'DUJT520385WWSSPZ92');

-- 1
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Anestesiología y reanimación', 'FNBP664860NDTTUA58');

-- 2
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cardiología', 'JXUM191601LNNIRT40');

-- 3
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Gastroenterología', 'RZFQ610211TZYOBB26');

-- 4
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Endocrinología', 'PBGM829968NNQNIO68');

-- 5
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Geriatría', 'ABTO310894IGIIPY04');

-- 6
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Hematología y hemoterapia', 'ZKVB944162EQIXJW74');

-- 7
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Hidrología médica', 'BNEV679820FIYJMS98');

-- 8
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Infectología', 'PNEN694790NDTMFC05');

-- 9
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina aeroespacial', 'QOPA743619MZEBLQ57');

-- 10
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina del deporte', 'SDUR546908ZWLSHX31');

-- 11
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina del trabajo', 'UERO137471MAECIG45');

-- 12
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina de urgencias', 'FWVX382269CGXWIU54');

-- 13
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina familiar y comunitaria', 'PFPE543352VHOYXU21');

-- 14
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina física y rehabilitación', 'UZTT737905DQAOPG48');

-- 15
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina intensiva', 'WDJS323732ELDEIX37');

-- 16
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina interna', 'FGFO782944MBPAHX53');

-- 17
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina legal y forense', 'TKWA774276TMERVY27');

-- 18
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina preventiva y salud pública', 'ZKBN728545PJZVLY57');

-- 19
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Nefrología', 'OZNF350805GTTMOE80');

-- 20
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Neumología', 'RKGO879447IOEVJR86');

-- 21
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Neurología', 'SVEI182865LICZVM64');

-- 22
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Nutriología', 'XFBJ045518ITUSFD33');

-- 23
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Oftalmología', 'ODLD869153IQZFQY13');

-- 24
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Oncología médica', 'JBIU751786FWLQWJ84');

-- 25
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Oncología radioterápica', 'CMTK580712DEXAEK75');

-- 26
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Pediatría', 'JZGJ536895AARWLR62');

-- 27
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Psiquiatría', 'GTMA596214VLNNDA86');

-- 28
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Rehabilitación', 'OTLU569091RLWVQX43');

-- 29
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Reumatología', 'MAQD059011RCEZBY06');

-- 30
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Toxicología', 'CUUM204842QGQVJS89');

-- 31
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Urología', 'FZCS843979QEZVTB91');

-- 32
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cirugía cardiovascular', 'WQQR117203ISVLKY43');

-- 33
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cirugía general y del aparato digestivo', 'YFRN661386JIBPGW84');

-- 34
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cirugía oral y maxilofacial', 'VDCI372861LMKITO48');

-- 35
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cirugía ortopédica y traumatología', 'FWBR139309AMRPPC29');

-- 36
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cirugía pediátrica', 'LNAY703886JIOCYX82');

-- 37
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cirugía plástica, estética y reparadora', 'FNCA201324GEFHIE04');

-- 38
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Cirugía torácica', 'SFJO385754ZFKVOK35');

-- 39
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Neurocirugía', 'LNZE966476HKMTEC16');

-- 40
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Proctología', 'UKDX811444LPWWRR74');

-- 41
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Análisis clínicos', 'AOAW637310PIYZHK98');

-- 42
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Anatomía patológica', 'ZRHX143784HEOPGH64');

-- 43
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Bioquímica clínica', 'XKRG130875DILYAS34');

-- 44
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Farmacología clínica', 'YLVW978270FZXYUH89');

-- 45
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Genética médica', 'EJKT747424UNNVNV73');

-- 46
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Inmunología', 'QUCN868932NDHRHX79');

-- 47
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Medicina nuclear', 'ZEIL335005MUNBRB20');

-- 48
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Microbiología y parasitología', 'OCGM700003KJUHDM89');

-- 49
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('Neurofisiología clínica', 'ZQBS173107IMZKNX50');

--50
INSERT INTO FARMACIA.ESPECIALIDADES
(especialidad, curp)
VALUES ('especial', 'ZQBS173107IMZKNX50');

----------------

INSERT INTO FARMACIA.MOSTRADORES
VALUES
('RRTL708582BHEJNM76'),
('ZRAF443793HSMMDN46'),
('RPPN022952YUWJOP76'),
('TCAH830502BISURQ68'),
('POBD171002WYSITM94'),
('HHYG249263JDYHAM92'),
('EGXI919192UXPDLO79'),
('CZBI207262KYBIBR69'),
('IYPY491461CRGQGB84'),
('XAKG280970YHRUMU21'),
('PKNN687285STISKL04'),
('OIWM772957KROVOI54'),
('YJNY504968RBNSFX19'),
('PXBW439349YKQAEG49'),
('ZPVH698791JDBMOT45'),
('QZGA194111UOKSSR19'),
('HDBV184909ACXITT24'),
('GPCL653439OBKIKI99'),
('ZDVW453583ERDALB68'),
('HKWF015354IDEEUW45'),
('JOVE801177NBQXUD43'),
('HSMA707993ILEPIA42'),
('JVRZ107741BTNNFZ35'),
('MYRY376099DLAAHE40'),
('GTWK917658HDEZOI41'),
('GCYC219950RBVKGR06'),
('EKXR764337AOOWMS55'),
('VCKT321426RPRHRB33'),
('ZVFP283286BMXVIT67'),
('CETC406189PYOVUY58'),
('YAAU447540MCBXRI33'),
('JKWQ400174DBAJKE94'),
('WCZX802291IGFYSV17'),
('HZJF442938EHRLJL85'),
('LXGM045447AAUZQJ02'),
('MYWT820092XOUKSX87'),
('XWIX832146GBCLAU73'),
('USVT694115SHCCPU83'),
('RJBQ960298DSABKG94'),
('RTUO329674RXMPDG70'),
('DLJK861752UWSHFB27'),
('FOUV375066FBULQG33'),
('CEMJ404375BXDFRI14'),
('BWQQ938933IKIXHR97'),
('YNMK058083GPKYDO47'),
('AIZT485557CISQXD32'),
('XEMW261205MUEGJS76'),
('POEU593586AHZHNV52'),
('GCUP703647PXXCZT02'),
('TBJK301463TBJWAD46');

-----------------------

INSERT INTO FARMACIA.GENERALES
VALUES
('IODW385375CJBFVJ39'),
('CFRC049202PYUUIY74'),
('NWYH173182ANDLFD12'),
('HJED307645ZFOBKP14'),
('HKVO847494YDTOQB16'),
('VUOY521831YXVEMB13'),
('FZOS587363NRVKSX31'),
('DMLV523629QGZSMY25'),
('NZAQ990768HEHOUO72'),
('XOIO603660ESHMMK60'),
('UAZL274413QIKFLN88'),
('EUZR374549DQISFW00'),
('AWYF306074GBJSQY53'),
('CDMB904154SMMQEE09'),
('DUJB870324ZGFYCH51'),
('FJGL959694QHCBRM70'),
('OAMG133772SNFLJS03'),
('VQCU668285BWATRN95'),
('FBJA492561SMXFFM55'),
('SLXU964553WUDDCP66'),
('ESOM810186YWSOHD80'),
('WHQU509616TVKJLT40'),
('LHYG168915LPFRFY21'),
('IBGU379166GVBMGO25'),
('JWLA632896FLHOVI00'),
('PCJY498066THLGCE83'),
('DQYE678574MPAGZK36'),
('GVNV382055EYXNDL65'),
('ROBN299036XKIHTB40'),
('YOTC480022YIIEQU99'),
('DARF827828IYNKBG41'),
('OZPT081473QXSVLQ88'),
('OYWN409553LARZYD51'),
('BBGG844394UILLMI67'),
('BPQF498593KOXTQF12'),
('AQLR822958OBKJSM09'),
('IYWW096366LLSOVX87'),
('QAAX615703RIWZMO06'),
('MBOO908080JSFFRA58'),
('HUXM930630YQCAEP09'),
('AGPE554016LKZQSI92'),
('QUFI867711SRQTCU69'),
('NHEE121814CJLYVR99'),
('MFCH535159OWLFBY27'),
('BHIW578642HBWNKN95'),
('LQNV125883XTBFGD42'),
('FHTI479038SAJXTQ33'),
('DFYQ709984KRDDQV90'),
('HEGA984210PRIBQT54'),
('BKXZ550269SVSUET43');

----------

INSERT INTO FARMACIA.CHOFERES
(curp, transporte, num_licencia)
VALUES
('LWUT595597JHGTVH57', 'motocicleta', 881384858), -- 0
('TLKG804689JSDXMY83', 'automóvil', 123566627), -- 1
('SWFI022655BETUIN55', 'bicicleta', 179802249), -- 2
('WISJ472203MDGBXC42', 'motocicleta', 988631802), -- 3
('THHQ560155KYMJKU36', 'automóvil', 107837394), -- 4
('GGDP189288NZFDSW42', 'bicicleta', 562850767), -- 5
('ZWGZ563053DWZGDG20', 'motocicleta', 507818746), -- 6
('FXZS196818TXNJIC10', 'automóvil', 114780426), -- 7
('NFMY791341XIXTTQ53', 'bicicleta', 390968295), -- 8
('TLAC723470WYRQMP79', 'motocicleta', 232612138), -- 9
('DXVB047202JUGSFG50', 'automóvil', 555362786), -- 10
('WVRN301494XIMWKQ14', 'bicicleta', 796218642), -- 11
('MOTJ130142WTBDUA83', 'motocicleta', 392600443), -- 12
('SSVI415926DAMCWL82', 'automóvil', 363792690), -- 13
('TRKC445306TTHUMU19', 'bicicleta', 944810168), -- 14
('WVUC429423DWGMTQ39', 'motocicleta', 516942090), -- 15
('CBUK009754QTLGOZ78', 'automóvil', 384296157), -- 16
('NUPX391126NOGZVU02', 'bicicleta', 377953859), -- 17
('BOQL627689EDBQHK40', 'motocicleta', 893008754), -- 18
('HPBK216583DSQHTJ86', 'automóvil', 511220736), -- 19
('YLCF393121WPNRZJ04', 'bicicleta', 520534699), -- 20
('CQDO399235SUZWIY57', 'motocicleta', 622413778), -- 21
('UJDA507373GPYRUS21', 'automóvil', 177348787), -- 22
('HKQZ478750RITPXI42', 'bicicleta', 703063619), -- 23
('MAGH576112HCCACU67', 'motocicleta', 159033361), -- 24
('WYOW355744FHPPCZ32', 'automóvil', 768398480), -- 25
('BVTB837027YPZWCF95', 'bicicleta', 531266971), -- 26
('ADMH476621HQZNXT82', 'motocicleta', 181119516), -- 27
('DRIA308519UOVWFZ01', 'automóvil', 121061334), -- 28
('KAVA272238MDODTV88', 'bicicleta', 572111464), -- 29
('HYXM939623BBVZXG84', 'motocicleta', 361418528), -- 30
('SXUI558314YTENKR48', 'automóvil', 481701635), -- 31
('XOZD865835CGXAJW73', 'bicicleta', 307980965), -- 32
('DRCQ057203PPFPMS08', 'motocicleta', 451056138), -- 33
('SLAG599230FQIHAU25', 'automóvil', 979766067), -- 34
('XMYC210063XHLEHZ17', 'bicicleta', 418306914), -- 35
('YPYH263871UNOSLT15', 'motocicleta', 237318740), -- 36
('BWNU816347SJXKOT21', 'automóvil', 661205264), -- 37
('LNDV806294HQOLMI33', 'bicicleta', 586739680), -- 38
('BSWI899010NOEMYL44', 'motocicleta', 432630356), -- 39
('BZAE308891OLPIZE92', 'automóvil', 998441308), -- 40
('VUKL663690GZNKFY48', 'bicicleta', 982287442), -- 41
('DNRB968995MEQUAW42', 'motocicleta', 158622049), -- 42
('OUUV010586XAREJO18', 'automóvil', 627005383), -- 43
('OHOR481019OPDOMA63', 'bicicleta', 176517446), -- 44
('WUFJ709188YUXIQV33', 'motocicleta', 102767315), -- 45
('NQSQ208506LDGSNZ62', 'automóvil', 680433376), -- 46
('ZWNY658993RUWEZQ90', 'bicicleta', 983718057), -- 47
('LLOK259109PSDKJU85', 'motocicleta', 152771330), -- 48
('HCFA667571OQUWPT99', 'automóvil', 143884561); -- 49

----------

INSERT INTO FARMACIA.SUCURSALES
(calle_1, calle_2, codigo_postal, ciudad, estado, colonia, referencia, num_exterior, num_interior, calle_principal, delegacion_municipio)
VALUES
('Victoria', 'Trafalgar Square', 51456, 'Buenos Aires', 'Aguascalientes', 'San Andres', 'Nunguna', 370, 378, 'Eje 6', 'Coyoacan'),  -- 1
('Eje 2', 'Eje 8', 67212, 'Girona', 'Hidalgo', 'San Andres', 'Nunguna', 96, 144, 'Calzada de Guadalupe', 'Iztapalapa'),  -- 2
('Orchard Road', 'Miguel de Cervantes', 96416, 'Kiev', 'Estado de México', 'Pemex prados', 'Nunguna', 153, 337, 'Mixcalco', 'Benito Juarez'),  -- 3
('Constituyentes', 'Copilco', 94015, 'Guadalajara', 'Nayarit', 'La Raza', 'Nunguna', 302, 45, 'Colima', 'Tlahuac'),  -- 4
('Causeway Bay', 'Abbey Road', 40934, 'Montevideo', 'Quintana Roo', 'Ferrería', 'Nunguna', 386, 185, 'Calle Betis', 'Xochimilco'),  -- 5
('Calle de Uría', 'Downing Street', 46054, 'Helsinki', 'Sonora', 'Obrero Popular', 'Nunguna', 360, 33, 'La Alameda', 'Azcapotzalco'),  -- 6
('Larios', 'Calle Betis', 94984, 'Brasilia', 'Veracruz', 'Pantaco', 'Nunguna', 375, 381, 'Larios', 'Cuajimalpa'),  -- 7
('Madero', 'Avenida Paulista', 79002, 'Washington', 'Tamaulipas', 'Plenitud', 'Nunguna', 172, 168, 'Wall Street', 'Iztacalco'),  -- 8
('Bolivar', 'Avenida Diagonal', 12822, 'Washington', 'Querétaro', 'Los Reyes', 'Nunguna', 260, 376, 'Calzada de Tlalpan', 'Cuauhtemoc'),  -- 9
('Pennsylvania', 'Campos Eliseos', 35248, 'Barranquilla', 'Nayarit', 'Pemex prados', 'Nunguna', 39, 40, 'Lombard Street', 'Xochimilco'),  -- 10
('Colima', 'Brooklyn', 21114, 'Rio de Janeiro', 'Sinaloa', 'Cosmopolita', 'Nunguna', 155, 379, 'Sheikh Zayed Road', 'Miguel Hidalgo'),  -- 11
('Via Dolorosa', 'Avenida Paulista', 25243, 'Bombay', 'Veracruz', 'Miguel Hidalgo', 'Nunguna', 255, 56, 'La Alameda', 'Tlahuac'),  -- 12
('Eje 8', 'Alvaro Obregon', 97917, 'Brasilia', 'Zacatecas', 'San Alvaro', 'Nunguna', 374, 149, 'Khao San', 'Cuauhtemoc'),  -- 13
('Ginza', 'Calle Betis', 51010, 'Taipei', 'Sinaloa', 'El Rosario', 'Nunguna', 268, 294, 'Brooklyn', 'Cuauhtemoc'),  -- 14
('Via Dolorosa', 'San Pablo', 95488, 'Helsinki', 'Querétaro', 'Petrolera', 'Nunguna', 340, 5, 'Abbey Road', 'Tlalpan'),  -- 15
('Downing Street', 'Larios', 14572, 'Santiago', 'Morelos', 'Miguel Hidalgo', 'Nunguna', 179, 328, 'Calle Triana', 'Tlalpan'),  -- 16
('Calle Betis', 'Reforma', 95711, 'Kiev', 'Ciudad de México', 'Cosmopolita', 'Nunguna', 183, 29, 'Miguel de Cervantes', 'Venustiano Carranza'),  -- 17
('Lombard Street', 'Unter den Linden', 96953, 'Kiev', 'Chihuahua', 'Industrial Vallejo', 'Nunguna', 109, 114, 'Mixcalco', 'Benito Juarez'),  -- 18
('Paseo de Gracia', 'Pennsylvania', 41919, 'Valinor', 'Nayarit', 'Ecologica', 'Nunguna', 47, 65, 'Mixcalco', 'Iztacalco'),  -- 19
('Victoria', 'Pennsylvania', 50390, 'Santo Domingo', 'Querétaro', 'Monte Alto', 'Nunguna', 111, 225, 'Eje 9', 'Xochimilco'),  -- 20
('Calzada del hueso', 'Regina', 69969, 'Kiev', 'Estado de México', 'Patrimonio Familiar', 'Nunguna', 183, 113, 'Victoria', 'Magdalena Contreras'),  -- 21
('Chapultepec', 'Mixcalco', 40202, 'Roma', 'Aguascalientes', 'Patrimonio Familiar', 'Nunguna', 276, 272, 'Calzada de Tlalpan', 'Iztapalapa'),  -- 22
('16 de Septiembre', 'Victoria', 71127, 'Brasilia', 'Michoacán', 'Pemex prados', 'Nunguna', 126, 190, 'Sunset Boulevard', 'Xochimilco'),  -- 23
('Plaza Dam', 'Jirón de la unión', 60485, 'Guadalajara', 'Chiapas', 'Pasteros', 'Nunguna', 363, 157, 'Eje 4', 'Gustavo A. Madero'),  -- 24
('Eje 10', 'Avenida Diagonal', 89359, 'Rio de Janeiro', 'Sinaloa', 'Potrero del llano', 'Nunguna', 213, 331, 'Portobello Road', 'Milpa Alta'),  -- 25
('San Pablo', 'Madero', 27091, 'Buenos Aires', 'Baja California Sur', 'Arenal', 'Nunguna', 250, 371, 'Avellaneda', 'Cuauhtemoc'),  -- 26
('Jirón de la unión', 'Jirón de la unión', 56672, 'Seul', 'Aguascalientes', 'Industrial Vallejo', 'Nunguna', 164, 363, 'Chapultepec', 'Gustavo A. Madero'),  -- 27
('Sunset Boulevard', 'Insurgentes', 52371, 'Rivendell', 'Colima', 'Arenal', 'Nunguna', 18, 144, 'Las Vegas Strip', 'Cuauhtemoc'),  -- 28
('Colima', 'Calle Triana', 28524, 'Isildur', 'Chihuahua', 'Arenal', 'Nunguna', 360, 133, 'Plaza Dam', 'Iztacalco'),  -- 29
('Venustiano Carranza', 'Altavista', 18385, 'Girona', 'Michoacán', 'Nuevo San Rafael', 'Nunguna', 23, 48, 'Lombard Street', 'Alvaro Obregon'),  -- 30
('Calle de Uría', 'Eje 4', 97547, 'Barranquilla', 'Nayarit', 'Angel Zimbron', 'Nunguna', 354, 144, 'Avenida Diagonal', 'Coyoacan'),  -- 31
('Regina', 'Downing Street', 11526, 'Gondor', 'Baja California', 'Clavería', 'Nunguna', 38, 377, 'Sunset Boulevard', 'Venustiano Carranza'),  -- 32
('Victoria', 'Eje 2', 66939, 'Valyria', 'Tlaxcala', 'Providencia', 'Nunguna', 247, 71, 'Calle de Uría', 'Benito Juarez'),  -- 33
('Eje 7', 'Delfin Madrigal', 83272, 'Barcelona', 'Sonora', 'Libertad', 'Nunguna', 56, 177, 'Calzada de Tlalpan', 'Iztacalco'),  -- 34
('La Estafeta', 'Avenida Paulista', 95337, 'Barranquilla', 'Morelos', 'Clavería', 'Nunguna', 25, 22, 'Gran vía', 'Gustavo A. Madero'),  -- 35
('Victoria', 'Sunset Boulevard', 54554, 'Washington', 'Jalisco', 'Los Reyes', 'Nunguna', 338, 373, 'Jirón de la unión', 'Cuajimalpa'),  -- 36
('Portobello Road', 'Iman', 53460, 'Lima', 'Jalisco', 'Providencia', 'Nunguna', 143, 336, 'Brooklyn', 'Cuauhtemoc'),  -- 37
('Orchard Road', 'Vía Montenapoleone', 78902, 'Pekin', 'Yucatán', 'Jardin Azpeitia', 'Nunguna', 4, 159, 'Las Vegas Strip', 'Benito Juarez'),  -- 38
('Miguel de Cervantes', 'Altavista', 30751, 'Taipei', 'Querétaro', 'Coltongo', 'Nunguna', 288, 237, 'Copilco', 'Miguel Hidalgo'),  -- 39
('Bolivar', 'La Estafeta', 32537, 'Roma', 'Oaxaca', 'El Rosario', 'Nunguna', 263, 100, 'Insurgentes', 'Miguel Hidalgo'),  -- 40
('Madero', 'Pennsylvania', 37124, 'Isildur', 'Sinaloa', 'Coltongo', 'Nunguna', 253, 43, 'Sheikh Zayed Road', 'Iztacalco'),  -- 41
('Trafalgar Square', 'Copilco', 18523, 'Casterly Rock', 'Campeche', 'San Andres', 'Nunguna', 307, 171, 'Ginza', 'Iztacalco'),  -- 42
('Alvaro Obregon', 'Reforma', 22218, 'Seul', 'Campeche', 'Nextengo', 'Nunguna', 197, 93, 'Oxford Street', 'Tlahuac'),  -- 43
('Altavista', 'Brooklyn', 45175, 'Mereen', 'Chiapas', 'Plenitud', 'Nunguna', 227, 396, 'Calle Triana', 'Benito Juarez'),  -- 44
('Unter den Linden', 'Sheikh Zayed Road', 28919, 'Washington', 'Durango', 'Nextengo', 'Nunguna', 199, 69, 'Pennsylvania', 'Gustavo A. Madero'),  -- 45
('Plaza Dam', 'Las Vegas Strip', 77139, 'Barcelona', 'Tlaxcala', 'Porvenir', 'Nunguna', 203, 355, 'Insurgentes', 'Benito Juarez'),  -- 46
('Via Dolorosa', 'Republica de El Salvador', 86823, 'Kiev', 'Yucatán', 'Nueva España', 'Nunguna', 376, 63, 'Avenida Atlantica', 'Cuajimalpa'),  -- 47
('La Alameda', 'Eje 1', 16417, 'Caracas', 'Morelos', 'Del recreo', 'Nunguna', 189, 322, 'Rodeo Drive', 'Milpa Alta'),  -- 48
('Oxford Street', 'Avenida Paulista', 75721, 'Casterly Rock', 'Campeche', 'Patrimonio Familiar', 'Nunguna', 365, 387, 'Eje 7', 'Alvaro Obregon'),  -- 49
('Rio San Joaquin', 'Eje 5', 65907, 'Caracas', 'Colima', 'Centro', 'Nunguna', 376, 299, 'Constituyentes', 'Magdalena Contreras');  -- 50

-------

INSERT INTO FARMACIA.TELEFONOS_SUCURSALES
(telefono, identificador)
VALUES
(1650097975, 1), -- 1
(1758002192, 2), -- 2
(2717229949, 3), -- 3
(6657698846, 4), -- 4
(1418608357, 5), -- 5
(8715227280, 6), -- 6
(9265341421, 7), -- 7
(2985674989, 8), -- 8
(7353567080, 9), -- 9
(6995392221, 10), -- 10
(9541741514, 11), -- 11
(1746230758, 12), -- 12
(5341525660, 13), -- 13
(4739230114, 14), -- 14
(6202353170, 15), -- 15
(8870486214, 16), -- 16
(6145634204, 17), -- 17
(9521675469, 18), -- 18
(6914586376, 19), -- 19
(3898523705, 20), -- 20
(1524781200, 21), -- 21
(9559774542, 22), -- 22
(1266840859, 23), -- 23
(1609081463, 24), -- 24
(5665905927, 25), -- 25
(8516100853, 26), -- 26
(6268969021, 27), -- 27
(9329902521, 28), -- 28
(6763951958, 29), -- 29
(7151099431, 30), -- 30
(2521563016, 31), -- 31
(4031615370, 32), -- 32
(9055170052, 33), -- 33
(1551864199, 34), -- 34
(4279228006, 35), -- 35
(6420338568, 36), -- 36
(7995046140, 37), -- 37
(9368688511, 38), -- 38
(3365405801, 39), -- 39
(5347821331, 40), -- 40
(6667003383, 41), -- 41
(2104175536, 42), -- 42
(5302074461, 43), -- 43
(9111059603, 44), -- 44
(2804575406, 45), -- 45
(6206669362, 46), -- 46
(6107336817, 47), -- 47
(3933814745, 48), -- 48
(6999996003, 49), -- 49
(7142669846, 50); -- 50

------------------------


-----------



--------------

INSERT INTO FARMACIA.CONSULTAS
(curp, turno, tipo, costo, fecha)
VALUES
('DUJT520385WWSSPZ92', 'vespertino', 'especial', 93, '2011-10-07'), -- 1
('DUJT520385WWSSPZ92', 'matutino', 'especial', 93, '2011-10-07'), -- 1.1
('DUJT520385WWSSPZ92', 'nocturno', 'especial', 93, '2011-10-07'), -- 1.2
('DUJT520385WWSSPZ92', 'nocturno', 'especial', 93, '2011-10-07'), -- 1.3
('FNBP664860NDTTUA58', 'nocturno', 'general', 257, '2012-06-16'), -- 2
('JXUM191601LNNIRT40', 'matutino', 'especial', 312, '2009-05-12'), -- 3
('RZFQ610211TZYOBB26', 'vespertino', 'general', 359, '2000-08-19'), -- 4
('PBGM829968NNQNIO68', 'nocturno', 'especial', 446, '2010-08-09'), -- 5
('ABTO310894IGIIPY04', 'matutino', 'general', 183, '2013-10-30'), -- 6
('ZKVB944162EQIXJW74', 'vespertino', 'especial', 117, '2002-03-01'), -- 7
('BNEV679820FIYJMS98', 'nocturno', 'general', 338, '2007-09-25'), -- 8
('PNEN694790NDTMFC05', 'matutino', 'especial', 434, '2016-10-19'), -- 9
('QOPA743619MZEBLQ57', 'vespertino', 'general', 403, '2005-08-29'), -- 10
('SDUR546908ZWLSHX31', 'nocturno', 'especial', 246, '2003-09-11'), -- 11
('UERO137471MAECIG45', 'matutino', 'general', 526, '2007-10-03'), -- 12
('FWVX382269CGXWIU54', 'vespertino', 'especial', 263, '2004-08-19'), -- 13
('PFPE543352VHOYXU21', 'nocturno', 'general', 175, '2006-11-08'), -- 14
('UZTT737905DQAOPG48', 'matutino', 'especial', 219, '2003-01-14'), -- 15
('WDJS323732ELDEIX37', 'vespertino', 'general', 87, '2015-02-28'), -- 16
('FGFO782944MBPAHX53', 'nocturno', 'especial', 444, '2000-04-25'), -- 17
('TKWA774276TMERVY27', 'matutino', 'general', 157, '2008-10-25'), -- 18
('ZKBN728545PJZVLY57', 'vespertino', 'especial', 524, '2003-01-27'), -- 19
('OZNF350805GTTMOE80', 'nocturno', 'general', 496, '2000-07-13'), -- 20
('RKGO879447IOEVJR86', 'matutino', 'especial', 516, '2009-09-04'), -- 21
('SVEI182865LICZVM64', 'vespertino', 'general', 213, '2015-10-06'), -- 22
('XFBJ045518ITUSFD33', 'nocturno', 'especial', 397, '2005-09-10'), -- 23
('ODLD869153IQZFQY13', 'matutino', 'general', 101, '2008-07-21'), -- 24
('JBIU751786FWLQWJ84', 'vespertino', 'especial', 355, '2016-12-09'), -- 25
('CMTK580712DEXAEK75', 'nocturno', 'general', 375, '2008-01-19'), -- 26
('JZGJ536895AARWLR62', 'matutino', 'especial', 215, '2000-06-21'), -- 27
('GTMA596214VLNNDA86', 'vespertino', 'general', 53, '2002-11-28'), -- 28
('OTLU569091RLWVQX43', 'nocturno', 'especial', 371, '2002-05-16'), -- 29
('MAQD059011RCEZBY06', 'matutino', 'general', 190, '2017-05-15'), -- 30
('CUUM204842QGQVJS89', 'vespertino', 'especial', 33, '2010-03-22'), -- 31
('FZCS843979QEZVTB91', 'nocturno', 'general', 464, '2008-11-12'), -- 32
('WQQR117203ISVLKY43', 'matutino', 'especial', 340, '2011-06-25'), -- 33
('YFRN661386JIBPGW84', 'vespertino', 'general', 361, '2016-10-09'), -- 34
('VDCI372861LMKITO48', 'nocturno', 'especial', 480, '2009-12-20'), -- 35
('FWBR139309AMRPPC29', 'matutino', 'general', 101, '2013-03-22'), -- 36
('LNAY703886JIOCYX82', 'vespertino', 'especial', 272, '2012-05-23'), -- 37
('FNCA201324GEFHIE04', 'nocturno', 'general', 509, '2012-07-18'), -- 38
('SFJO385754ZFKVOK35', 'matutino', 'especial', 315, '2013-03-11'), -- 39
('LNZE966476HKMTEC16', 'vespertino', 'general', 456, '2004-05-01'), -- 40
('UKDX811444LPWWRR74', 'nocturno', 'especial', 266, '2013-09-19'), -- 41
('AOAW637310PIYZHK98', 'matutino', 'general', 0, '2003-11-04'), -- 42
('ZRHX143784HEOPGH64', 'vespertino', 'especial', 100, '2001-09-18'), -- 43
('XKRG130875DILYAS34', 'nocturno', 'general', 135, '2011-10-01'), -- 44
('YLVW978270FZXYUH89', 'matutino', 'especial', 486, '2004-11-04'), -- 45
('EJKT747424UNNVNV73', 'vespertino', 'general', 441, '2015-06-18'), -- 46
('QUCN868932NDHRHX79', 'nocturno', 'especial', 442, '2001-09-09'), -- 47
('ZEIL335005MUNBRB20', 'matutino', 'general', 402, '2007-05-17'), -- 48
('OCGM700003KJUHDM89', 'vespertino', 'especial', 477, '2015-11-25'), -- 49
('ZQBS173107IMZKNX50', 'nocturno', 'general', 519, '2004-12-29'); -- 50

------------

INSERT INTO FARMACIA.SOLICITAR
(curp,identificador)
VALUES
('QCSZ579843FURYGD80',1),
('NWGD202887OLPDHK60',2),
('DHIG446268BHTWMX13',3),
('YSIJ111384TSRVYY87',4),
('LEQM852390YTKWZF50',5),
('FOWJ109854WBWVEG15',6),
('VSYE675412QGTCPC99',7),
('PRXK278424WTGHEO80',8),
('CLJN842101XPLOFI94',9),
('XFEA747926PACINI45',10),
('ZXRU235386DUYJTU79',11),
('IIZP825881CZOALZ54',12),
('MQCV364855OUITLF37',13),
('NDGI068899XJGSUE87',14),
('UEZZ110441VXCQLU74',15),
('JVNS291039KWEXHD62',16),
('ZRSC485883AWJDFT78',17),
('UHRF645445ODUNQS77',18),
('DMHY197734VOZMBX89',19),
('UJNU055386FNKYQE62',20),
('QJRR811107SYJPAG18',21),
('ELFU903602BYRTWF15',22),
('UACD278124IMUTCH37',23),
('GFQL161773SSGFRJ56',24),
('FKWS168722RTLZMT52',25),
('GCAE828154RMJOIR61',26),
('IGFS766410HEDOOP58',27),
('DQMR531247EEHSXI99',28),
('FBEY713141HGABQU48',29),
('DEIF304743NQLSSH27',30),
('NKAU724493MTXNSQ78',31),
('TOUJ842171ZNANRR47',32),
('IGLB952897ALSAWZ90',33),
('NBHN276128WYQPOL54',34),
('KXXP795444AATQZG67',35),
('DBRQ297671RGZFQG26',36),
('HQXI928423JMAVAH55',37),
('IBAN035333PJBPKH72',38),
('GISQ369274HOTHUK79',39),
('SEQP902720BDHQAF28',40),
('NIXJ217212IGTAUC82',41),
('QOQN970590QAKFIJ01',42),
('CBGO185996UQAMNG31',43),
('QPHJ244368OQEABC37',44),
('AJWN037484BPKEKJ95',45),
('BYDO324442RGNSZQ44',46),
('YUSK048612LKACLW26',47),
('NIYG585361ZJJRGH41',48),
('OKRC487083LKGTNW41',49),
('UCDP810534UAIACV97',50);

---------------------

INSERT INTO FARMACIA.RECETAS
(identificador, fecha_siguiente_consulta, firma_digital)
VALUES
(1, '2014-09-28', '0807-2784-6094-7733-1265-8138'),
(2, '2004-11-05', '0445-9766-3955-7936-4371-7496'),
(3, '2007-11-16', '0254-9119-9565-1504-4277-0617'),
(4, '2002-09-02', '2790-9464-8424-3943-0446-0640'),
(5, '2017-04-13', '6309-2841-5641-9806-7985-5745'),
(6, '2013-05-03', '9892-7321-6179-6912-2602-4299'),
(7, '2008-02-11', '7644-9850-0700-8436-9476-7960'),
(8, '2001-05-06', '2908-6098-7327-5665-1410-2021'),
(9, '2015-10-16', '7112-1002-0173-5325-3186-6161'),
(10, '2016-03-30', '8176-9305-1657-0662-5010-8435'),
(11, '2004-06-25', '1997-5994-5404-1063-3493-0812'),
(12, '2007-11-07', '8860-3378-7454-1469-8753-0983'),
(13, '2017-12-25', '8792-2525-6583-0852-4411-9818'),
(14, '2011-05-29', '2993-5643-5124-2766-5473-1634'),
(15, '2003-08-05', '8996-3302-4614-1316-8275-4915'),
(16, '2012-08-09', '7235-3544-6740-7618-7429-7378'),
(17, '2000-10-28', '5152-1190-2384-7953-2236-5873'),
(18, '2008-11-24', '8575-7924-8737-2299-6120-8433'),
(19, '2000-08-30', '6988-7403-4089-5913-8026-6175'),
(20, '2012-06-11', '0178-2235-4511-7518-5858-7880'),
(21, '2005-06-30', '6308-8221-0526-1573-6677-8598'),
(22, '2009-06-17', '0254-5895-5321-0218-5980-1997'),
(23, '2002-02-13', '3209-1652-4592-7578-5276-4114'),
(24, '2014-09-03', '7551-9405-0101-4332-0008-9344'),
(25, '2004-06-14', '2261-4298-6895-6232-4974-9321'),
(26, '2007-06-25', '7180-4047-9886-7688-7745-2814'),
(27, '2009-09-09', '7195-0298-2874-4643-5887-9534'),
(28, '2008-11-02', '3796-4122-1670-2966-0845-6923'),
(29, '2015-04-25', '0106-4745-5970-9184-1430-6167'),
(30, '2005-09-20', '1569-0057-5162-6108-9498-5543'),
(31, '2013-08-09', '7254-7185-1909-5522-9072-3453'),
(32, '2016-09-26', '6245-4321-4464-1073-4301-7139'),
(33, '2001-09-23', '7495-4966-8532-9285-0647-2494'),
(34, '2012-09-12', '4863-6326-2250-2253-3837-7144'),
(35, '2007-03-21', '3699-7449-1872-8888-3413-8645'),
(36, '2006-11-30', '9234-3867-8004-0999-2450-3114'),
(37, '2010-02-28', '3570-8487-5107-9615-1239-9207'),
(38, '2004-01-29', '1764-8674-1438-0589-0487-7539'),
(39, '2001-10-02', '6292-8596-5432-5541-2038-1846'),
(40, '2007-05-11', '6718-3495-7333-4616-5509-0078'),
(41, '2014-12-17', '7357-6710-3971-2283-4351-2175'),
(42, '2007-12-09', '0879-3321-1643-9019-3626-3882'),
(43, '2007-01-27', '0399-0526-9427-2511-9619-2543'),
(44, '2011-06-09', '5315-2357-7219-2506-6671-5054'),
(45, '2001-09-14', '1251-5177-0985-8328-9309-8860'),
(46, '2012-10-26', '0590-9357-3418-9627-5221-0415'),
(47, '2001-09-15', '8898-4119-2754-8268-0053-7622'),
(48, '2001-01-07', '0583-2786-7670-3943-2452-5318'),
(49, '2011-01-10', '9119-9604-7665-3213-0829-2515'),
(50, '2007-07-30', '7994-6503-9809-9850-0952-2036'),
(49, '2011-01-10', '9119-9604-7665-3213-0829-2515'),
(50, '2007-07-30', '7994-6503-9809-9850-0952-2036');

-------------------------

INSERT INTO FARMACIA.ESPECIFICACIONES_ADICIONALES
(especificacion_adicional, num_receta)
VALUES
('3 veces al día',1),
('2 veces al día',2),
('1 cada 8 horas',3),
('2 cada 12 horas',4),
('1 al día por 1 semana',5),
('1 cada 12 horas por 2 semanas',6),
('2 cada 6 horas',7),
('1 al día hasta que se acabe',8),
('ingerir después de comer',9),
('1 a la semana',10);

---------------------------

INSERT INTO FARMACIA.VENDER
(sku, curp)
VALUES
(59485109,'RRTL708582BHEJNM76'),
(74020477,'ZRAF443793HSMMDN46'),
(19477905,'RPPN022952YUWJOP76'),
(48365017,'TCAH830502BISURQ68'),
(73817149,'POBD171002WYSITM94'),
(21795449,'HHYG249263JDYHAM92'),
(53531907,'EGXI919192UXPDLO79'),
(84588551,'CZBI207262KYBIBR69'),
(50384259,'IYPY491461CRGQGB84'),
(96025474,'XAKG280970YHRUMU21'),
(19055787,'PKNN687285STISKL04'),
(69780821,'OIWM772957KROVOI54'),
(30306147,'YJNY504968RBNSFX19'),
(97290480,'PXBW439349YKQAEG49'),
(54158073,'ZPVH698791JDBMOT45'),
(53423089,'QZGA194111UOKSSR19'),
(49063501,'HDBV184909ACXITT24'),
(38656103,'GPCL653439OBKIKI99'),
(30626464,'ZDVW453583ERDALB68'),
(80711691,'HKWF015354IDEEUW45'),
(17877397,'JOVE801177NBQXUD43'),
(85550311,'HSMA707993ILEPIA42'),
(21028829,'JVRZ107741BTNNFZ35'),
(70411936,'MYRY376099DLAAHE40'),
(48599349,'GTWK917658HDEZOI41'),
(25132189,'GCYC219950RBVKGR06'),
(45076827,'EKXR764337AOOWMS55'),
(74427047,'VCKT321426RPRHRB33'),
(14397698,'ZVFP283286BMXVIT67'),
(92471376,'CETC406189PYOVUY58'),
(60844986,'YAAU447540MCBXRI33'),
(27924957,'JKWQ400174DBAJKE94'),
(86679975,'WCZX802291IGFYSV17'),
(30966237,'HZJF442938EHRLJL85'),
(83584178,'LXGM045447AAUZQJ02'),
(96311763,'MYWT820092XOUKSX87'),
(88285858,'XWIX832146GBCLAU73'),
(36619078,'USVT694115SHCCPU83'),
(55406906,'RJBQ960298DSABKG94'),
(74791851,'RTUO329674RXMPDG70'),
(46889626,'DLJK861752UWSHFB27'),
(62038007,'FOUV375066FBULQG33'),
(62014952,'CEMJ404375BXDFRI14'),
(52270641,'BWQQ938933IKIXHR97'),
(13408656,'YNMK058083GPKYDO47'),
(85593550,'AIZT485557CISQXD32'),
(71513874,'XEMW261205MUEGJS76'),
(82265169,'POEU593586AHZHNV52'),
(85299504,'GCUP703647PXXCZT02'),
(16579759,'TBJK301463TBJWAD46');

-------------------

INSERT INTO FARMACIA.CONTENER
(sku, num_receta, dosis)
VALUES
(59485109, 1, '1 al día.'),
(74020477, 2, '2 al día.'),
(19477905, 3, '3 al día.'),
(48365017, 4, '4 al día.'),
(73817149, 5, '5 al día.'),
(21795449, 6, '6 al día.'),
(53531907, 7, '7 al día.'),
(84588551, 8, '8 al día.'),
(50384259, 9, '9 al día.'),
(96025474, 10, '10 al día.'),
(19055787, 11, '11 al día.'),
(69780821, 12, '12 al día.'),
(30306147, 13, '13 al día.'),
(97290480, 14, '14 al día.'),
(54158073, 15, '15 al día.'),
(53423089, 16, '16 al día.'),
(49063501, 17, '17 al día.'),
(38656103, 18, '18 al día.'),
(30626464, 19, '19 al día.'),
(80711691, 20, '20 al día.'),
(17877397, 21, '21 al día.'),
(85550311, 22, '22 al día.'),
(21028829, 23, '23 al día.'),
(70411936, 24, '24 al día.'),
(48599349, 25, '25 al día.'),
(25132189, 26, '26 al día.'),
(45076827, 27, '27 al día.'),
(74427047, 28, '28 al día.'),
(14397698, 29, '29 al día.'),
(92471376, 30, '30 al día.'),
(60844986, 31, '31 al día.'),
(27924957, 32, '32 al día.'),
(86679975, 33, '33 al día.'),
(30966237, 34, '34 al día.'),
(83584178, 35, '35 al día.'),
(96311763, 36, '36 al día.'),
(88285858, 37, '37 al día.'),
(36619078, 38, '38 al día.'),
(55406906, 39, '39 al día.'),
(74791851, 40, '40 al día.'),
(46889626, 41, '41 al día.'),
(62038007, 42, '42 al día.'),
(62014952, 43, '43 al día.'),
(52270641, 44, '44 al día.'),
(13408656, 45, '45 al día.'),
(85593550, 46, '46 al día.'),
(71513874, 47, '47 al día.'),
(82265169, 48, '48 al día.'),
(85299504, 49, '49 al día.'),
(16579759, 50, '50 al día.');


INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('STHX143784HEOPGH64', 'Galadriel', 'Zepeda', 'Ladino', 'Portobello Road', 'Nueva Santa María', 'Milpa Alta', 'Aguascalientes', 'Sao Paulo', 'Eje 8', 'Castellana', 'Ninguna', 35775, 165, 385, 'STKJ2533478R0', 31889794729);


INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('STRG130875DILYAS34', 'Beatriz', 'Nama', 'Najera', 'Castellana', 'Pantaco', 'Miguel Hidalgo', 'Tabasco', 'Ciudad de México', 'Viaducto', 'Copilco', 'Ninguna', 13897, 215, 342, 'STKE8354738F8', 78479259930);

INSERT INTO FARMACIA.EMPLEADOS
(curp, nombre, paterno, materno, calle_principal, colonia, delegacion_municipio, estado, ciudad, calle_1, calle_2, referencia, codigo_postal, num_exterior, num_interior, rfc, num_seguro_social)
VALUES ('STVW978270FZXYUH89', 'Melkor', 'Escalera', 'Coatl', 'Eje 1', 'Ferrería', 'Gustavo A. Madero', 'Tlaxcala', 'Paris', 'Vía Montenapoleone', 'Castellana', 'Ninguna', 51462, 298, 377, 'STPG9799876J6', 41611222272);

-- 40
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (79578582, 'STHX143784HEOPGH64');

-- 41
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (59415677, 'STRG130875DILYAS34');

-- 42
INSERT INTO FARMACIA.MEDICOS
(num_cedula_profesional, curp)
VALUES (52067459, 'STVW978270FZXYUH89');

INSERT INTO FARMACIA.RESPONSABLES
(curp, identificador, turno)
VALUES
('ELLL931499GGERYX83',1,'matutino'),
('EOIU037873HUNIWK85',2,'vespertino'),
('BFPF951082CFHSQI91',3,'nocturno'),
('CMJR157553ZTIRUJ48',4,'matutino'),
('AMPR882717FWGLER99',5,'vespertino'),
('WZYC167831QFXGAK86',6,'nocturno'),
('BAGX131028GDKENZ06',7,'matutino'),
('IHRS438222IFZKVP68',8,'vespertino'),
('YOVN837642ZTSDKA94',9,'nocturno'),
('VSAE140040ZOQKTA23',10,'matutino'),
('IBLL249047ODZNMB80',11,'vespertino'),
('JRFP342861MYJNLN59',12,'nocturno'),
('HBIO602680MDMYLB45',13,'matutino'),
('VAGD039713DGLFMY57',14,'vespertino'),
('LMHL092478TJPWLY21',15,'nocturno'),
('UNGH686930FYWWKK86',16,'matutino'),
('RCEX464673WSGOVC04',17,'vespertino'),
('KYPS720853XKRVCC07',18,'nocturno'),
('VRAC031361XTDCSC95',19,'matutino'),
('VDHX845651DISSAW73',20,'vespertino'),
('NHMO394616DPLDOI15',21,'nocturno'),
('QJLX852617HFGPBN33',22,'matutino'),
('NNFS870029LDUZBC50',23,'vespertino'),
('GTQN799319OESOGO44',24,'nocturno'),
('QVYA617980GPGGEZ23',25,'matutino'),
('FCOY822521VAZYGN95',26,'vespertino'),
('LYDN893450JZCRJU07',27,'nocturno'),
('YPOY882577GBAUOD48',28,'matutino'),
('KRFI125551FIRHAO86',29,'vespertino'),
('SWGI088105AMLQOF18',30,'nocturno'),
('EGDQ347498QQRPUN80',31,'matutino'),
('IHGB442064PILXWJ96',32,'vespertino'),
('BHCQ424631UOIFIP48',33,'nocturno'),
('EBNU455599MZBNNT21',34,'matutino'),
('XYSQ176402ZRMDAI57',35,'vespertino'),
('VMQV653925ALHWDZ19',36,'nocturno'),
('CTGA150693BNGLLD61',37,'matutino'),
('YYNJ718266YGYPFG62',38,'vespertino'),
('BFDO671516EYAOTO44',39,'nocturno'),
('TCSA375332XZJWVY92',40,'matutino'),
('PDGI374816NXFMZI47',41,'vespertino'),
('ZUTO686141PSPSQW05',42,'nocturno'),
('AQDF281375MKZNQY18',43,'matutino'),
('ELSU905133UPCBWR61',44,'vespertino'),
('FYEG274215PMCEEQ89',45,'nocturno'),
('PRCV782276NSIXMV83',46,'matutino'),
('NLMN741977RKTHGE81',47,'vespertino'),
('CBRE030342YRPZUS23',48,'nocturno'),
('HYCB358062DVRRLI75',49,'matutino'),
('ZOOW730640LHDAUA14',50,'vespertino'),
('STHX143784HEOPGH64',1,'nocturno'),
('STRG130875DILYAS34',2,'matutino'),
('STVW978270FZXYUH89',3,'vespertino');

INSERT INTO FARMACIA.TRABAJAR
(curp, identificador)
VALUES
-- 0
('LWUT595597JHGTVH57', 1),
('IODW385375CJBFVJ39', 1),
('NBRQ166554IYHKAG07', 1),
('RRTL708582BHEJNM76', 1),
('ELLL931499GGERYX83', 1),
('DUJT520385WWSSPZ92', 1),
 -- 1
('TLKG804689JSDXMY83', 2),
('CFRC049202PYUUIY74', 2),
('QVSO038951KBDRRX59', 2),
('ZRAF443793HSMMDN46', 2),
('EOIU037873HUNIWK85', 2),
('FNBP664860NDTTUA58', 2),
 -- 2
('SWFI022655BETUIN55', 3),
('NWYH173182ANDLFD12', 3),
('IIUW741877DWGZZL34', 3),
('RPPN022952YUWJOP76', 3),
('BFPF951082CFHSQI91', 3),
('JXUM191601LNNIRT40', 3),
 -- 3
('WISJ472203MDGBXC42', 4),
('HJED307645ZFOBKP14', 4),
('NJAR645650JIGWQZ32', 4),
('TCAH830502BISURQ68', 4),
('CMJR157553ZTIRUJ48', 4),
('RZFQ610211TZYOBB26', 4),
 -- 4
('THHQ560155KYMJKU36', 5),
('HKVO847494YDTOQB16', 5),
('MYDG181971URECZL81', 5),
('POBD171002WYSITM94', 5),
('AMPR882717FWGLER99', 5),
('PBGM829968NNQNIO68', 5),
 -- 5
('GGDP189288NZFDSW42', 6),
('VUOY521831YXVEMB13', 6),
('CLEA460756SQUOTW22', 6),
('HHYG249263JDYHAM92', 6),
('WZYC167831QFXGAK86', 6),
('ABTO310894IGIIPY04', 6),
 -- 6
('ZWGZ563053DWZGDG20', 7),
('FZOS587363NRVKSX31', 7),
('HENU378154GZUUND01', 7),
('EGXI919192UXPDLO79', 7),
('BAGX131028GDKENZ06', 7),
('ZKVB944162EQIXJW74', 7),
 -- 7
('FXZS196818TXNJIC10', 8),
('DMLV523629QGZSMY25', 8),
('SQTV843259KCEJKV51', 8),
('CZBI207262KYBIBR69', 8),
('IHRS438222IFZKVP68', 8),
('BNEV679820FIYJMS98', 8),
 -- 8
('NFMY791341XIXTTQ53', 9),
('NZAQ990768HEHOUO72', 9),
('ZVDX351531FRIXBY22', 9),
('IYPY491461CRGQGB84', 9),
('YOVN837642ZTSDKA94', 9),
('PNEN694790NDTMFC05', 9),
 -- 9
('TLAC723470WYRQMP79', 10),
('XOIO603660ESHMMK60', 10),
('VFIT911730CBFETA69', 10),
('XAKG280970YHRUMU21', 10),
('VSAE140040ZOQKTA23', 10),
('QOPA743619MZEBLQ57', 10),
 -- 10
('DXVB047202JUGSFG50', 11),
('UAZL274413QIKFLN88', 11),
('DPDO570682HWZCCJ74', 11),
('PKNN687285STISKL04', 11),
('IBLL249047ODZNMB80', 11),
('SDUR546908ZWLSHX31', 11),
 -- 11
('WVRN301494XIMWKQ14', 12),
('EUZR374549DQISFW00', 12),
('TCAQ357610WBLUCX40', 12),
('OIWM772957KROVOI54', 12),
('JRFP342861MYJNLN59', 12),
('UERO137471MAECIG45', 12),
 -- 12
('MOTJ130142WTBDUA83', 13),
('AWYF306074GBJSQY53', 13),
('GCXB230550JFDNOC76', 13),
('YJNY504968RBNSFX19', 13),
('HBIO602680MDMYLB45', 13),
('FWVX382269CGXWIU54', 13),
 -- 13
('SSVI415926DAMCWL82', 14),
('CDMB904154SMMQEE09', 14),
('TREC178381ZBEZJC55', 14),
('PXBW439349YKQAEG49', 14),
('VAGD039713DGLFMY57', 14),
('PFPE543352VHOYXU21', 14),
 -- 14
('TRKC445306TTHUMU19', 15),
('DUJB870324ZGFYCH51', 15),
('CJGN141010RKHMRH69', 15),
('ZPVH698791JDBMOT45', 15),
('LMHL092478TJPWLY21', 15),
('UZTT737905DQAOPG48', 15),
 -- 15
('WVUC429423DWGMTQ39', 16),
('FJGL959694QHCBRM70', 16),
('AENN624771GCZIYN27', 16),
('QZGA194111UOKSSR19', 16),
('UNGH686930FYWWKK86', 16),
('WDJS323732ELDEIX37', 16),
 -- 16
('CBUK009754QTLGOZ78', 17),
('OAMG133772SNFLJS03', 17),
('EQKK317632ELDGMT33', 17),
('HDBV184909ACXITT24', 17),
('RCEX464673WSGOVC04', 17),
('FGFO782944MBPAHX53', 17),
 -- 17
('NUPX391126NOGZVU02', 18),
('VQCU668285BWATRN95', 18),
('ANRT843978ABRRUP75', 18),
('GPCL653439OBKIKI99', 18),
('KYPS720853XKRVCC07', 18),
('TKWA774276TMERVY27', 18),
 -- 18
('BOQL627689EDBQHK40', 19),
('FBJA492561SMXFFM55', 19),
('MSMI936618KTYFHJ61', 19),
('ZDVW453583ERDALB68', 19),
('VRAC031361XTDCSC95', 19),
('ZKBN728545PJZVLY57', 19),
 -- 19
('HPBK216583DSQHTJ86', 20),
('SLXU964553WUDDCP66', 20),
('RBST275248ZLWQBK66', 20),
('HKWF015354IDEEUW45', 20),
('VDHX845651DISSAW73', 20),
('OZNF350805GTTMOE80', 20),
 -- 20
('YLCF393121WPNRZJ04', 21),
('ESOM810186YWSOHD80', 21),
('YIKO514519ISNKDM10', 21),
('JOVE801177NBQXUD43', 21),
('NHMO394616DPLDOI15', 21),
('RKGO879447IOEVJR86', 21),
 -- 21
('CQDO399235SUZWIY57', 22),
('WHQU509616TVKJLT40', 22),
('GDEP392193XCMPNQ38', 22),
('HSMA707993ILEPIA42', 22),
('QJLX852617HFGPBN33', 22),
('SVEI182865LICZVM64', 22),
 -- 22
('UJDA507373GPYRUS21', 23),
('LHYG168915LPFRFY21', 23),
('PVCT388680RVCLGD58', 23),
('JVRZ107741BTNNFZ35', 23),
('NNFS870029LDUZBC50', 23),
('XFBJ045518ITUSFD33', 23),
 -- 23
('HKQZ478750RITPXI42', 24),
('IBGU379166GVBMGO25', 24),
('QYFP403555WIPOIC84', 24),
('MYRY376099DLAAHE40', 24),
('GTQN799319OESOGO44', 24),
('ODLD869153IQZFQY13', 24),
 -- 24
('MAGH576112HCCACU67', 25),
('JWLA632896FLHOVI00', 25),
('FKBM231726LHAXPT21', 25),
('GTWK917658HDEZOI41', 25),
('QVYA617980GPGGEZ23', 25),
('JBIU751786FWLQWJ84', 25),
 -- 25
('WYOW355744FHPPCZ32', 26),
('PCJY498066THLGCE83', 26),
('PVKH699485UVWRSC75', 26),
('GCYC219950RBVKGR06', 26),
('FCOY822521VAZYGN95', 26),
('CMTK580712DEXAEK75', 26),
 -- 26
('BVTB837027YPZWCF95', 27),
('DQYE678574MPAGZK36', 27),
('TAAQ547340KNSETN48', 27),
('EKXR764337AOOWMS55', 27),
('LYDN893450JZCRJU07', 27),
('JZGJ536895AARWLR62', 27),
 -- 27
('ADMH476621HQZNXT82', 28),
('GVNV382055EYXNDL65', 28),
('LVCU261596ISTJXI83', 28),
('VCKT321426RPRHRB33', 28),
('YPOY882577GBAUOD48', 28),
('GTMA596214VLNNDA86', 28),
 -- 28
('DRIA308519UOVWFZ01', 29),
('ROBN299036XKIHTB40', 29),
('VNKT334665ONWYEE04', 29),
('ZVFP283286BMXVIT67', 29),
('KRFI125551FIRHAO86', 29),
('OTLU569091RLWVQX43', 29),
 -- 29
('KAVA272238MDODTV88', 30),
('YOTC480022YIIEQU99', 30),
('IIRD686165RMIUDP94', 30),
('CETC406189PYOVUY58', 30),
('SWGI088105AMLQOF18', 30),
('MAQD059011RCEZBY06', 30),
 -- 30
('HYXM939623BBVZXG84', 31),
('DARF827828IYNKBG41', 31),
('QTQM795489BGQYMU75', 31),
('YAAU447540MCBXRI33', 31),
('EGDQ347498QQRPUN80', 31),
('CUUM204842QGQVJS89', 31),
 -- 31
('SXUI558314YTENKR48', 32),
('OZPT081473QXSVLQ88', 32),
('FISA775537LLVZFK86', 32),
('JKWQ400174DBAJKE94', 32),
('IHGB442064PILXWJ96', 32),
('FZCS843979QEZVTB91', 32),
 -- 32
('XOZD865835CGXAJW73', 33),
('OYWN409553LARZYD51', 33),
('ZXRZ020192KQMWHK48', 33),
('WCZX802291IGFYSV17', 33),
('BHCQ424631UOIFIP48', 33),
('WQQR117203ISVLKY43', 33),
 -- 33
('DRCQ057203PPFPMS08', 34),
('BBGG844394UILLMI67', 34),
('POVR857280TCKGHE80', 34),
('HZJF442938EHRLJL85', 34),
('EBNU455599MZBNNT21', 34),
('YFRN661386JIBPGW84', 34),
 -- 34
('SLAG599230FQIHAU25', 35),
('BPQF498593KOXTQF12', 35),
('BGNK462831VMWCKN72', 35),
('LXGM045447AAUZQJ02', 35),
('XYSQ176402ZRMDAI57', 35),
('VDCI372861LMKITO48', 35),
 -- 35
('XMYC210063XHLEHZ17', 36),
('AQLR822958OBKJSM09', 36),
('ABZO464902GTDFJL32', 36),
('MYWT820092XOUKSX87', 36),
('VMQV653925ALHWDZ19', 36),
('FWBR139309AMRPPC29', 36),
 -- 36
('YPYH263871UNOSLT15', 37),
('IYWW096366LLSOVX87', 37),
('BPKG168998WKFEHJ59', 37),
('XWIX832146GBCLAU73', 37),
('CTGA150693BNGLLD61', 37),
('LNAY703886JIOCYX82', 37),
 -- 37
('BWNU816347SJXKOT21', 38),
('QAAX615703RIWZMO06', 38),
('SUKY038525SQHAOE00', 38),
('USVT694115SHCCPU83', 38),
('YYNJ718266YGYPFG62', 38),
('FNCA201324GEFHIE04', 38),
 -- 38
('LNDV806294HQOLMI33', 39),
('MBOO908080JSFFRA58', 39),
('BBBM513681EQZDJT57', 39),
('RJBQ960298DSABKG94', 39),
('BFDO671516EYAOTO44', 39),
('SFJO385754ZFKVOK35', 39),
 -- 39
('BSWI899010NOEMYL44', 40),
('HUXM930630YQCAEP09', 40),
('QCIE219210VPQHDZ47', 40),
('RTUO329674RXMPDG70', 40),
('TCSA375332XZJWVY92', 40),
('LNZE966476HKMTEC16', 40),
 -- 40
('BZAE308891OLPIZE92', 41),
('AGPE554016LKZQSI92', 41),
('GXVH053752VUNDOJ80', 41),
('DLJK861752UWSHFB27', 41),
('PDGI374816NXFMZI47', 41),
('UKDX811444LPWWRR74', 41),
 -- 41
('VUKL663690GZNKFY48', 42),
('QUFI867711SRQTCU69', 42),
('ECKB753492KOSBMQ10', 42),
('FOUV375066FBULQG33', 42),
('ZUTO686141PSPSQW05', 42),
('AOAW637310PIYZHK98', 42),
 -- 42
('DNRB968995MEQUAW42', 43),
('NHEE121814CJLYVR99', 43),
('XFFE479462QDYIFF86', 43),
('CEMJ404375BXDFRI14', 43),
('AQDF281375MKZNQY18', 43),
('ZRHX143784HEOPGH64', 43),
 -- 43
('OUUV010586XAREJO18', 44),
('MFCH535159OWLFBY27', 44),
('NGLS472038CYBJCN53', 44),
('BWQQ938933IKIXHR97', 44),
('ELSU905133UPCBWR61', 44),
('XKRG130875DILYAS34', 44),
 -- 44
('OHOR481019OPDOMA63', 45),
('BHIW578642HBWNKN95', 45),
('RPDE993483RPJBZD25', 45),
('YNMK058083GPKYDO47', 45),
('FYEG274215PMCEEQ89', 45),
('YLVW978270FZXYUH89', 45),
 -- 45
('WUFJ709188YUXIQV33', 46),
('LQNV125883XTBFGD42', 46),
('PPAD243581WDAOTN21', 46),
('AIZT485557CISQXD32', 46),
('PRCV782276NSIXMV83', 46),
('EJKT747424UNNVNV73', 46),
 -- 46
('NQSQ208506LDGSNZ62', 47),
('FHTI479038SAJXTQ33', 47),
('BTYV363352JKRADE16', 47),
('XEMW261205MUEGJS76', 47),
('NLMN741977RKTHGE81', 47),
('QUCN868932NDHRHX79', 47),
 -- 47
('ZWNY658993RUWEZQ90', 48),
('DFYQ709984KRDDQV90', 48),
('BYCE307738ZZZUSM80', 48),
('POEU593586AHZHNV52', 48),
('CBRE030342YRPZUS23', 48),
('ZEIL335005MUNBRB20', 48),
 -- 48
('LLOK259109PSDKJU85', 49),
('HEGA984210PRIBQT54', 49),
('NDNN821328IVUBXD49', 49),
('GCUP703647PXXCZT02', 49),
('HYCB358062DVRRLI75', 49),
('OCGM700003KJUHDM89', 49),
 -- 49
('HCFA667571OQUWPT99', 50),
('BKXZ550269SVSUET43', 50),
('AAII970707NPWAQZ06', 50),
('TBJK301463TBJWAD46', 50),
('ZOOW730640LHDAUA14', 50),
('ZQBS173107IMZKNX50', 50),
('STHX143784HEOPGH64', 1),
('STRG130875DILYAS34', 2),
('STVW978270FZXYUH89', 3);
