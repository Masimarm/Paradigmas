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
	peso_emb varchar(255),
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
	VALUES (1,"nicole martín","$1.000.000");

INSERT INTO CLIENTE(id_cli,nom_cli,sueldo_anual_cli)
	VALUES (2,"vicente hernández","$1.000.000");


-- ========
-- CAMION
-- ========

INSERT INTO CAMION(id_cam,nombre_chofer_cam)
	VALUES(1,"Pedrito");

INSERT INTO CAMION(id_cam,nombre_chofer_cam)
	VALUES(2,"Juanito");

-- ========
-- CIUDAD
-- ========

INSERT INTO CIUDAD(nom_ciu,poblacion_ciu)
	VALUES("Punta Arenas","Alfredo Lorca");

INSERT INTO CIUDAD(nom_ciu,poblacion_ciu)
	VALUES("Santiago","Las Rejas");

-- ======================
-- EMBARQUE (relaciones)
-- ======================

-- INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
-- 	VALUES(1,1,"30.2",1,"PUQ");


-- INSERT INTO EMBARQUE(id_emb,id_cli_emb,peso_emb,id_camion_emb,destino_emb)
-- 	VALUES(2,2,"10.6",2,"SCL");

-- =================================
-- REALIZACIÓN DE CONSULTAS BÁSICAS
-- =================================

SELECT * FROM CLIENTE;

SELECT * FROM CAMION;

SELECT * FROM CIUDAD;

SELECT * FROM EMBARQUE;
