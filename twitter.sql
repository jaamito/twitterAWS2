DROP SCHEMA IF EXISTS twitter;
CREATE SCHEMA twitter;
USE twitter;
SET AUTOCOMMIT=0;
DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(35) NOT NULL DEFAULT '',
  `apellidos` CHAR(35) NOT NULL DEFAULT '',
  `email` CHAR(35) NOT NULL DEFAULT '',
  `tlf` INT(10) NOT NULL,
  `contraseña` CHAR(20) NOT NULL,
  `nacimiento` CHAR(20) NOT NULL DEFAULT '',
  `sexo` CHAR(1) NOT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE comentarios (

	`ID` INT(11) NOT NULL AUTO_INCREMENT,
  	`nombre` CHAR(35) NOT NULL DEFAULT '',
	'publicacion' CHAR (150) NOT NULL DEFAULT '',
	'fecha' CHAR (150) NOT NULL DEFAULT '';



);

INSERT INTO `usuarios` VALUES (1,'root','root','root@twitteraws2.com',666666666,'root','00/00/00','M');
INSERT INTO `usuarios` VALUES (2,'ian','lopez zamora','ian@twitteraws2.com',666666666,'ian','20/05/94','M');
INSERT INTO `usuarios` VALUES (3,'josemi','tudela perez','josemi@twitteraws2.com',666666666,'josemi','06/09/69','M');
INSERT INTO `usuarios` VALUES (4,'adrian','morales sanagustin','adrian@twitteraws2.com',666666666,'adrian','13/11/95','M');
COMMIT;

DROP TABLE IF EXISTS publicacion;
CREATE TABLE publicacion (
	'ID' int(11) NOT NULL AUTO_INCREMENT,
	'asunto' CHAR(35) NOT NULL DEFAULT '',
	'descripcion' CHAR(300) NOT NULL DEFAULT '',
	'creadorID' INT(11) NOT NULL DEFAULT '',
	'fecha' CHAR(20) NOT NULL DEFAULT '',
	PRIMARY KEY ('ID'),
	FOREIGN KEY ('creadorID') REFERENCES usuarios ('ID')
);
DROP TABLE IF EXISTS comentarios;
CREATE TABLE comentarios (

	`ID` INT(11) NOT NULL AUTO_INCREMENT,
  	`nombre` CHAR(35) NOT NULL DEFAULT '',
 	'userID' INT(11) NOT NULL DEFAULT '',
	'publicacion' CHAR (150) NOT NULL DEFAULT '',
	'fecha' CHAR (15) NOT NULL DEFAULT '';
	PRIMARY KEY ('ID'),
	FOREIGN KEY ('userID') REFERENCES usuarios('id')
);

DROP TABLE IF EXISTS mensajes;
CREATE TABLE mensajes (
  `ID` INT(11) NOT NULL,
  `emisorId` INT(11) NOT NULL DEFAULT '',
  `remitenteId` INT(11) NOT NULL DEFAULT '',
  `fecha` CHAR(35) NOT NULL DEFAULT '',
  `Mensaje` CHAR(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  FOREIGN KEY(`emisorId`)REFERENCES usuarios(`ID`),
  FOREIGN KEY(`remitenteId`)REFERENCES usuarios(`ID`)
);
INSERT INTO `mensajes` VALUES (1,1,2,'25/11/16','Hola guapo');
INSERT INTO `mensajes` VALUES (2,1,3,'25/11/16','Hola gañan');
INSERT INTO `mensajes` VALUES (3,1,4,'25/11/16','Hola pichita');

DROP TABLE IF EXISTS hastags;
CREATE TABLE hastags (
	'id'  INT(20) NOT NULL AUTO_INCREMENT,
	'nom' CHAR(20) NOT NULL DEFAULT '#',
	'idcoment' INT(20) NOT NULL DEFAULT '',
	PRIMARY KEY ('id'),
	FOREIGN KEY ('idcoment') REFERENCES comentarios('ID')
);

DROP TABLE IF EXISTS hastagsComents;
CREATE TABLE hastagsComents (
	'id' INT(10) NOT NULL AUTO_INCREMENT,
	'idhast' INT(20) NOT NULL DEFAULT '',
	'idcoment' INT(20) NOT NULL DEFAULT '',
	FOREIGN KEY ('idhast') REFERENCES hastags ('id'),
	FOREIGN KEY ('idcoment') REFERENCES comentarios('id'),
	PRIMARY KEY('id')

);

DROP TABLE IF EXISTS etiquetas;
CREATE TABLE etiquetas(
	'idUsuario' CHAR(21) NOT NULL '@',
	PRIMARY KEY ('idUsuario')
);


DROP TABLE IF EXISTS etiquetasComents;
CREATE TABLE etiquetasComents (
	'id' INT(10) NOT NULL AUTO_INCREMENT,
	'ideti' INT(20) NOT NULL DEFAULT '',
	'idcoment' INT(20) NOT NULL DEFAULT '',
	FOREIGN KEY ('ideti') REFERENCES etiquetas ('id'),
	FOREIGN KEY ('idcoment') REFERENCES comentarios('id'),
	PRIMARY KEY('id')

);
COMMIT;
