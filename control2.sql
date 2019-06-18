#=============
#	CONTROL 2
#=============
DROP DATABASE IF EXISTS CONTROL;
CREATE DATABASE CONTROL;
USE CONTROL;

CREATE TABLE CLIENTE(
	id_cli integer,
	nom_cli varchar(255),
	sueldo_anual_cli varchar(255),
	PRIMARY KEY (id_cli)
);

CREATE TABLE CAMION(
	id_cam integer,
	nombre_chofer_cam varchar(255),
	PRIMARY KEY (id_cam)
);

CREATE TABLE CIUDAD(
	nom_ciu varchar(255),
	poblacion_ciu varchar(255),
	PRIMARY KEY (nom_ciu)
);

CREATE TABLE EMBARQUE(
	id_emb integer,
	id_cli_emb integer,
	peso_emb float(53),
	id_camion_emb integer,
	destino_emb varchar(255),
	PRIMARY KEY (id_emb),
	FOREIGN KEY (id_cli_emb) REFERENCES CLIENTE(id_cli),
	FOREIGN KEY (destino_emb) REFERENCES CIUDAD(nom_ciu),
	FOREIGN KEY (id_camion_emb) REFERENCES CAMION(id_cam)
);

-- =================================
-- INSERCIÓN DE REGISTROS
-- =================================
-- =======
-- CLIENTE
-- =======

INSERT INTO CLIENTE(id_cli,nom_cli,sueldo_anual_cli)
	VALUES (1,"Nicole Martín","$1.000.000");

INSERT INTO CLIENTE(id_cli,nom_cli,sueldo_anual_cli)
	VALUES (2,"Vicente Hernández","$1.000.000");

INSERT INTO CLIENTE(id_cli,nom_cli,sueldo_anual_cli)
	VALUES (3,"Diego Salazar","$2.500.000");

INSERT INTO CLIENTE(id_cli,nom_cli,sueldo_anual_cli)
	VALUES (4,"Isaías Cárdenas","$2.300.000");

INSERT INTO CLIENTE(id_cli,nom_cli,sueldo_anual_cli)
	VALUES (5,"Bastián Vera","$10.000.000");


-- ========
-- CAMION
-- ========

INSERT INTO CAMION(id_cam,nombre_chofer_cam)
	VALUES(1,"Pedrito");

INSERT INTO CAMION(id_cam,nombre_chofer_cam)
	VALUES(2,"Juanito");

INSERT INTO CAMION(id_cam,nombre_chofer_cam)
	VALUES(3,"Maria");

INSERT INTO CAMION(id_cam,nombre_chofer_cam)
	VALUES(4,"Anita");

INSERT INTO CAMION(id_cam,nombre_chofer_cam)
	VALUES(5,"Dieguito");

-- ========
-- CIUDAD
-- ========

INSERT INTO CIUDAD(nom_ciu,poblacion_ciu)
	VALUES("Punta Arenas","Alfredo Lorca");

INSERT INTO CIUDAD(nom_ciu,poblacion_ciu)
	VALUES("Santiago","Las Rejas");

INSERT INTO CIUDAD(nom_ciu,poblacion_ciu)
	VALUES("Concepcion","18 Septiembre");

INSERT INTO CIUDAD(nom_ciu,poblacion_ciu)
	VALUES("Valparaiso","La Caleta");

INSERT INTO CIUDAD(nom_ciu,poblacion_ciu)
	VALUES("Huilo Huilo","Neltume");

-- ======================
-- EMBARQUE (relaciones)
-- ======================

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(1,1,"30.2",4,"Punta Arenas");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(2,2,"1000.6",4,"Santiago");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(3,2,"10000000.6",4,"Concepcion");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(4,2,"34.6",4,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(5,3,"87.3",4,"Huilo Huilo");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(6,4,"234567890.87",2,"Santiago");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(7,2,"234454.23",2,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(8,2,"76543.23",3,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(9,2,"2.54",2,"Concepcion");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(10,3,"8.32",2,"Huilo Huilo");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(11,5,"200456.25",2,"Punta Arenas");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
	VALUES(12,2,"324.34",1,"Santiago");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(13,1,"3.14",1,"Punta Arenas");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(14,2,"123.76",3,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(15,4,"654.45",5,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(16,4,"2378.54",5,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(17,2,"543.34",2,"Concepcion");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(18,5,"0.34",1,"Concepcion");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(19,5,"3455.23",5,"Punta Arenas");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(20,2,"1000.6",4,"Santiago");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(21,2,"12343.76",3,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(22,4,"5432.45",5,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(23,5,"2378.54",2,"Valparaiso");

INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
 	VALUES(24,5,"232478.54",1,"Valparaiso");


-- =================================
-- REALIZACIÓN DE CONSULTAS BÁSICAS
-- =================================

-- SELECT * FROM CLIENTE;

-- SELECT * FROM CAMION;

-- SELECT * FROM CIUDAD;

-- SELECT * FROM EMBARQUE;

-- ===================================
-- REALIZACIÓN CONSULTAS SOLICITADAS
-- ===================================

-- PREGUNTA 1
SELECT DISTINCT nom_cli
FROM CLIENTE, EMBARQUE
WHERE id_cli = id_cli_emb AND destino_emb = 'Punta Arenas';

-- PREGUNTA 2
SELECT DISTINCT nom_cli, sueldo_anual_cli
FROM CLIENTE, EMBARQUE
WHERE id_cli = id_cli_emb AND peso_emb > 100000; -- en kilogramos, 100 toneladas == 100000

-- PREGUNTA 3
SELECT c.nombre_chofer_cam
FROM CAMION c
WHERE (
	SELECT count(nom_ciu)
	FROM CIUDAD
) = (
    SELECT count(DISTINCT e.destino_emb)
    FROM EMBARQUE e
    WHERE c.id_cam = e.id_camion_emb
);

-- PREGUNTA 4
SELECT c.nom_cli
FROM CLIENTE c
WHERE 1 = (
    SELECT count(DISTINCT e.destino_emb)
    FROM EMBARQUE e
    WHERE c.id_cli = e.id_cli_emb
);

-- PREGUNTA 5

SELECT avg(E.peso_emb)
FROM EMBARQUE E
WHERE E.destino_emb = 
	(SELECT c.nom_ciu
	FROM CIUDAD c
	WHERE 10 <= (
		SELECT count(e.id_emb)
		FROM EMBARQUE e
		WHERE c.nom_ciu = e.destino_emb and e.peso_emb
		));