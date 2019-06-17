#=============
#	CONTROL 2
#=============

DROP TABLE CLIENTE;
CREATE TABLE CLIENTE(
	id_cli varchar(255),
	nom_cli varchar(255),
	sueldo_anual_cli varchar(255),
	PRIMARY KEY (id_cli)
);

DROP TABLE EMBARQUE;
CREATE TABLE EMBARQUE(
	id_emb varchar(255),
	id_cli_emb varchar(255),
	peso_emb integer,
	id_camion_emb varchar(255),
	destino_emb varchar(255),
	PRIMARY KEY (id_emb),
	FOREIGN KEY (id_camion_emb) REFERENCES CLIENTE(id_cli),
	FOREIGN KEY (destino_emb) REFERENCES CIUDAD(nom_ciu),
	FOREIGN KEY (id_camion_emb) REFERENCES CAMION(id_cam)
);

DROP TABLE CAMION;
CREATE TABLE CAMION(
	id_cam varchar(255),
	nombre_chofer_cam varchar(255),
	PRIMARY KEY (id_cam),
);

DROP TABLE CIUDAD;
CREATE TABLE CIUDAD(
	nom_ciu varchar(255),
	nombre_chofer_cam varchar(255),
	PRIMARY KEY (nom_ciu)
);


