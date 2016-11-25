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
INSERT INTO `usuarios` VALUES (1,'root','root','root@twitteraws2.com',666666666,'root','00/00/00','M');
INSERT INTO `usuarios` VALUES (2,'ian','lopez zamora','ian@twitteraws2.com',666666666,'ian','20/05/94','M');
INSERT INTO `usuarios` VALUES (3,'josemi','tudela perez','josemi@twitteraws2.com',666666666,'josemi','06/09/69','M');
INSERT INTO `usuarios` VALUES (4,'adrian','morales sanagustin','adrian@twitteraws2.com',666666666,'adrian','13/11/95','M');

CREATE TABLE publicacion (
	'ID' int(11) NOT NULL AUTO_INCREMENT,
	'asunto' CHAR(35) NOT NULL DEFAULT '',
	'descripcion' CHAR(300) NOT NULL DEFAULT '',
	'creadorID' INT(11) NOT NULL DEFAULT '',
	'fecha' CHAR(20) NOT NULL DEFAULT '',
	PRIMARY KEY ('ID')
);

CREATE TABLE hastags (
	'nom' CHAR(20) NOT NULL DEFAULT '#',
	PRIMARY KEY ('nom')
);

CREATE TABLE etiquetas(
	'idUsuario' CHAR(21) NOT NULL '@',
	PRIMARY KEY ('idUsuario')
);
COMMIT;
