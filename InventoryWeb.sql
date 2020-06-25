-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: us-cdbr-east-05.cleardb.net    Database: heroku_1f5ff059f1d7813
-- ------------------------------------------------------
-- Server version	5.5.62-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activos`
--

DROP TABLE IF EXISTS `activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activos` (
  `idActivo` int(1) NOT NULL AUTO_INCREMENT,
  `Nserial` varchar(250) NOT NULL,
  `Sede_idSede` int(11) NOT NULL,
  `Proveedor_idProveedor` int(11) NOT NULL,
  `Categoria_idcategoria` int(11) NOT NULL,
  `Estado_idEstado` int(11) NOT NULL,
  `NombreActivo` varchar(250) DEFAULT NULL,
  `Precio` float DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Imagen` text,
  `Fecha_registro` date NOT NULL,
  `Ambiente` int(11) NOT NULL,
  PRIMARY KEY (`idActivo`),
  KEY `Activos_FKIndex2` (`Estado_idEstado`),
  KEY `Activos_FKIndex3` (`Categoria_idcategoria`),
  KEY `Activos_FKIndex4` (`Proveedor_idProveedor`),
  KEY `Activos_FKIndex5` (`Sede_idSede`),
  CONSTRAINT `activos_ibfk_1` FOREIGN KEY (`Proveedor_idProveedor`) REFERENCES `proveedor` (`idProveedor`),
  CONSTRAINT `activos_ibfk_2` FOREIGN KEY (`Categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`),
  CONSTRAINT `activos_ibfk_3` FOREIGN KEY (`Estado_idEstado`) REFERENCES `estado` (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activos`
--

LOCK TABLES `activos` WRITE;
/*!40000 ALTER TABLE `activos` DISABLE KEYS */;
INSERT INTO `activos` VALUES (5,'2-87-u',1,6,1,1,'Monitor Lg',730000,1,'LG.jpg','2020-05-13',108),(6,'123-klÃ±-45',1,3,6,1,'portatil toshiba',12300,3,'audio.jpeg','2020-05-05',0),(15,'MOUSE-3',1,5,3,1,'MOU dell',50000,5,'mou2.jpg','2020-06-03',0),(16,'TEC-2',1,1,4,1,'TECLADO HP',60000,1,'tec2.jpg','2020-06-03',0),(17,'TEC-3',1,6,4,1,'TECLADO LG',34567,3,'tec3.jpg','2020-06-03',0),(18,'Clable-1',1,5,5,1,'UTP cable',45000,1,'utp.jpg','2020-06-03',0),(19,'Cable Energi',1,2,5,1,'cable3.jpg',23456,3,'cable3.jpg','2020-06-03',0),(20,'Mem-78',2,3,6,1,'MEMORIA ',45600,1,'memoria.jpg','2020-06-03',0),(21,'MEM-2',2,5,6,1,'MEMO',56999,1,'memoria2.jpg','2020-06-03',0),(31,'mem-4',2,3,6,1,'memoria 3',12000,3,'memoria2.jpg','2020-06-04',0),(41,'CDF-MN',1,1,5,1,'Cable de Audio ',3400,5,'audio.jpg','2020-06-05',0),(71,'pruebaima',1,1,1,1,'toshiba.jpg',340000,2,'toshiba.jpg','2020-06-07',0),(81,'prueba2',1,1,1,1,'monitor hp',34000,23,'lgg.jpeg','2020-06-07',0),(91,'MNUI-89',1,1,1,3,'Monitor LG',200000,22,'LG.jpg','2020-06-07',0),(101,'RETYU-k',1,3,4,1,'Teclado SSD',230000,23,'teclado.jpg','2020-06-07',0),(111,'TERK-M',1,1,2,3,'Teclado M',34000,1,'','2020-06-07',0),(121,'TWRRE',1,1,2,1,'Torre hp',120000,2,'torre3.jpg','2020-06-07',0),(131,'TRROW-34',1,1,2,1,'Torre LG',340000,4,'torre2.jpg','2020-06-07',0),(141,'MIUG-56',1,1,3,1,'Mouse RX5000',34000,3,'mou3.jpg','2020-06-08',0),(151,'MOUIT-yu',1,1,3,1,'Mouse vx67',34000,4,'mouse.jpg','2020-06-08',0),(161,'hgty-34',1,1,5,1,'cable utp2',12000,3,'audio.jpeg','2020-06-08',0),(171,'ghjkl-l',1,1,1,1,'prueba',1000,1,'acer.jpeg','2020-06-08',0),(181,'FGHTY-78',1,1,1,1,'Monitor HD',230000,2,'monitor20.jpg','2020-06-08',0),(191,'3456789',1,1,1,1,'pantalla lcd',120000,4,'descarga.jpg','2020-06-08',0),(201,'CFGHN-90',1,1,1,1,'Cable imagen',30000,2,'cable de imagen.jpg','2020-06-08',0),(211,'45678',1,1,1,1,'jhkjhajashd',345000,23,'audio.jpeg','2020-06-08',0),(221,'MN44567890',1,1,1,1,'audio',3000,1,'audio.jpeg','2020-06-08',0),(231,'n34578',1,1,1,1,'acer.jpeg',120000,1,'acer.jpeg','2020-06-16',0),(241,'nbvCe-rt',1,1,1,1,'pantalla lg',120000,1,'LG.jpg','2020-06-16',0),(251,'retyuio',1,1,1,1,'prueba 2 pantalla',120000,2,'acer.jpeg','2020-06-16',0),(261,'dfghjklyui',1,1,1,1,'pantalla',123000,2,'cable3.jpg','2020-06-16',0),(271,'34567890',1,1,1,1,'fdghjk',345678,3,'audio.jpeg','2020-06-16',0),(281,'TECRF-KL',1,1,4,1,'Teclado gamer',120000,3,'teclado.jpg','2020-06-16',0),(291,'1234',1,1,5,1,'imagen prueba',12000,2,'datos.jpg','2020-06-16',0),(301,'RECDFT',1,1,4,1,'Teclado tactil',230000,2,'teclado.jpg','2020-06-21',0),(311,'MNBF-56',1,6,3,1,'Mouse New',230000,2,'descarga.jpg','2020-06-22',0),(321,'CDFju78',1,3,5,1,'audio.jpeg',12000,2,'audio.jpeg','2020-06-23',0),(331,'TOPH-67',1,2,1,1,'toshiba.jpg',120000,1,'toshiba.jpg','2020-06-23',100),(341,'NUBN',1,1,1,1,'monitor20.jpg',20000,2,'monitor20.jpg','2020-06-23',100),(351,'MUIY-89',1,4,3,1,'mouse.jpg',50000,1,'mouse.jpg','2020-06-23',300),(361,'123-jkl',1,1,1,1,'teclado master',120000,1,'teclado.jpg','2020-06-23',102),(371,'Monituy',1,1,1,1,'Monitor',120000,1,'monitor20.jpg','2020-06-23',100),(391,'MONYUT',1,1,1,1,'Pantalla 4k',120000,1,'descarga (1).jpg','2020-06-24',100);
/*!40000 ALTER TABLE `activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombrecategoria` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Monitores'),(2,'Torres'),(3,'Mouses'),(4,'Teclados'),(5,'Cableado'),(6,'Accesorios');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `NombreEstado` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Disponible'),(2,'Reparacion'),(3,'De baja'),(4,'Prestado');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo` (
  `idPrestamo` int(11) NOT NULL AUTO_INCREMENT,
  `Activos_idActivo` int(11) NOT NULL,
  `Usuarios_idUsuario` int(11) NOT NULL,
  `Fecha_Entrega` date DEFAULT NULL,
  `Fecha_Devolucion` date DEFAULT NULL,
  PRIMARY KEY (`idPrestamo`),
  KEY `Prestamo_FKIndex2` (`Usuarios_idUsuario`),
  KEY `Prestamo_FKIndex3` (`Activos_idActivo`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`Usuarios_idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`Activos_idActivo`) REFERENCES `activos` (`idActivo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (1,5,1,'2020-06-23','2020-06-26'),(11,181,3,'2020-06-23','2020-06-26');
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `NombreProveedor` varchar(250) DEFAULT NULL,
  `Telefono` varchar(250) DEFAULT NULL,
  `Dirección` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'HP','2147483647','Centro'),(2,'TOSHIBA','2147483647','Unilago'),(3,'Sandiks','45678923','Centro'),(4,'Sandiks','45678923','Centro'),(5,'Dell','345678','Paloquemao'),(6,'Lg','567893','Centro');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba`
--

DROP TABLE IF EXISTS `prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prueba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba`
--

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` VALUES (1,'johan'),(11,'william'),(21,'fredy');
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `NombreRol` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Logistica'),(3,'Instructor'),(4,'Aprendiz');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sede` (
  `idSede` int(11) NOT NULL AUTO_INCREMENT,
  `NombreSede` varchar(250) DEFAULT NULL,
  `Dirección` varchar(250) DEFAULT NULL,
  `Ciudad` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idSede`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'CEET','Calle 30','Bogotá'),(2,'Paloquemao','calle 30','Bogotá');
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoidentificacion`
--

DROP TABLE IF EXISTS `tipoidentificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoidentificacion` (
  `idTipoIdentificacion` int(11) NOT NULL AUTO_INCREMENT,
  `NombreIdentificacion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idTipoIdentificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoidentificacion`
--

LOCK TABLES `tipoidentificacion` WRITE;
/*!40000 ALTER TABLE `tipoidentificacion` DISABLE KEYS */;
INSERT INTO `tipoidentificacion` VALUES (1,'Cedula'),(2,'Tarjeta identidad'),(3,'Pasaporte');
/*!40000 ALTER TABLE `tipoidentificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'cambiotres',
  `Sede_idSede` int(11) NOT NULL,
  `Rol_idRol` int(11) NOT NULL,
  `TipoIdentificacion_idTipoIdentificacion` int(11) NOT NULL,
  `Identificacion` int(11) DEFAULT NULL,
  `Nombres` varchar(250) DEFAULT NULL,
  `Apellidos` varchar(250) DEFAULT NULL,
  `Direccion` varchar(250) DEFAULT NULL,
  `Telefono` varchar(250) DEFAULT NULL,
  `Correo` varchar(250) DEFAULT NULL,
  `Usuario` varchar(250) DEFAULT NULL,
  `Contrasena` varchar(250) DEFAULT NULL,
  `activacion` int(11) DEFAULT '1',
  `token_password` varchar(100) NOT NULL,
  `password_request` int(11) NOT NULL DEFAULT '0',
  `Ambiente` int(11) DEFAULT NULL,
  `Estado` int(11) NOT NULL DEFAULT '1',
  `Fecha_registro` date NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `Usuarios_FKIndex1` (`TipoIdentificacion_idTipoIdentificacion`),
  KEY `Usuarios_FKIndex2` (`Rol_idRol`),
  KEY `Usuarios_FKIndex3` (`Sede_idSede`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1 PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,1,1,1000699052,'Johan Steven','Rodriguez Bermudez','Suba calle 145','3214844312','Johanrodriguezbermudez@gmail.com','johansteven18','$2y$10$GL4QXa9jQvSocY91xpMhR.KhJLf9NROFqli8pvDouA20J4Zp5FMoa',1,'42cbbc2c8a37aef9ad4769846c67926d',1,300,1,'2020-05-29'),(2,1,3,1,1000899076,'Willian','Ramirez Roa','Soacha','3112456789','ramirezw65@gmail.com','william56','$2y$10$TVUssKIzZ4PTXlXaa0hj3eQWGNauTfsPDOylHrDfK0fojrCXAPIFW',1,'',0,100,0,'2020-05-29'),(3,1,3,1,78500889,'Chamel Daniel','Diaz Cardenas','Calle 80','3245678910','Chamel10@gmail.com','chamel10','$2y$10$LLSi0wYS14zYUpBaRwOQQufOwpgbAPO0eH/Rii7UEnG5dEpraM2cC',1,'',0,100,1,'2020-05-29'),(4,1,2,1,1000899765,'Maria Valentina','Ramirez Lopez','Villamaria','3245671890','Maria@gmail.com','valentina21','$2y$10$SSOrpeIgRjO6khRu1v12eeFj1S6A/nimpgX6OnsTQgSTcMkYgNbvO',1,'',0,100,1,'2020-05-29'),(5,2,4,1,544009987,'Angela Liliana','Bermudez Cardenas','Suba Caminos 1','3112114567','Angela@gmail.com','Angela26','$2y$10$/eyBYVZS97x0qxOcnDKiLOqMn1D/D2Zg3yGjPqcg5m92o5ihIx2g2',1,'',0,200,1,'2020-05-30'),(6,2,3,2,78500886,'Pedro Ivan','Rodriguez Herrera','Panama City','57400889','Ivan@gmail.com','ivan18','$2y$10$HAks4mZRiOy/hkmsijEeSO69zmNAY4iLml8g7UeH27eUlncrdGrO6',1,'',0,200,1,'2020-05-30'),(7,1,1,1,199876543,'Nicolle Andrea','Rodriguez Bermudez','Suba Caminos2','6543218907','Nicolle@gmail.com','nicolle14','$2y$10$NMMJO3ZCO7R/gHVkt7H1mO.Nt5F0tm7Sp4ISIhsilfGj2saynQy4m',1,'',0,206,1,'2020-05-30'),(8,2,4,1,4562348,'Danilo','Martinez','Calle 80','3456789013','Danilu@gmail.com','danilu','$2y$10$I40zS/Wg4Lb.CC6D7UQ3BuJ5LUnPKefKy3AzhQQ6QRmvANWFxdPhe',1,'',0,100,1,'2020-06-03'),(9,2,4,1,2147483647,'Danilo','Ricaurte','Calle 80','4567890','Danilu@gmail.com','danilu12','$2y$10$TWghjuAkm0a9YrVAcq4NkuMIcXsSQh48f92gl0GycTHziyZe96JWK',1,'',0,100,1,'2020-06-03'),(10,1,4,1,4567890,'jrwilli','ramirez','soacha','456789','jrwilli@gmail.com','jrwilli','$2y$10$/ojSu6YOGDB6MrI2sh6OQOhGd6ppnNao1AZVM7RhEJV/4Jo6O1GeC',1,'',0,205,1,'2020-06-03'),(11,1,2,1,2147483647,'Miguel Angel','Rodriguez Blanco','El muelle','3456789012','miguel@gmail.com','migue34','$2y$10$gC.WsZH7oqOwnHjG9VZKMuJn.ROeVxfzJTK/j9vMIPciZyHYg4z8q',1,'',0,100,0,'2020-06-03'),(21,1,4,1,1120560095,'Alex','Cano','soacha','12345','willianintel@gmail.com','alexcano23','$2y$10$p8B/e4wri2key82or6a3yOpXLZ9idJqgFKRPUVOUcl3/TEWhAlGGm',1,'',0,304,0,'2020-06-04'),(31,1,2,1,1000456789,'Armando ','Paredes','soacha','3214567890','desarmandoparedes@gmail.com','armando23','$2y$10$ec5CMAFMyiHxVW2jF1GXp.AVpxxg7qoiQwsYhlaOWqqpD2DQRGhiG',1,'',0,105,0,'2020-06-04'),(41,1,4,1,345678,'valentina','ramirez','soacha','456789','valentina@gmail.com','valentina21','$2y$10$uQc2zIyEfJy1gLmN0KLoYOa6wJ4er5pZR84CzLnkVG4XeDO0WZnh6',1,'',0,200,1,'2020-06-06'),(51,2,3,1,1000899754,'Mauricio','Torres','Calle 80','3214567892','MauricioDiaz@gmail.com','mauri22','$2y$10$9n81rNy8mpBIN12Kr3UGAOr7e0RKTx6hKLr7c0j0dBG5gYDje.CEC',1,'',0,100,1,'2020-06-07'),(61,1,3,1,1234567866,'Diana ','Blanco','El muelle','3214563214','diana@gmail.com','diana33','$2y$10$mdZxhSXtjWUyFmo19a/GJOmOvdEK.IbLof4jnzr.VsZgQog30ID1.',1,'',0,230,0,'2020-06-07'),(71,1,3,2,34567890,'willi','roa','soacha','345678','willi','willimaster','$2y$10$x8LKxvAI.84jo1zICJbVsuzmTrxX4Gg657XQ0pzlsFA8nkvq7mPIq',1,'',0,100,1,'2020-06-08'),(81,1,1,1,1239875423,'marcos','dias','soacha','3214567890','marcos@gmail.com','marcos10','$2y$10$s6saqU/SXkKBOFITd6ByGughUi2leZLQ9lbN0PjcL5U7PSahURyky',1,'',0,100,1,'2020-06-08'),(91,2,4,1,2147483647,'alex','cano','soacha','4321678','canoalex@gmail.com','alexcan33','$2y$10$5J43zyBbJFtzKo7HFHVYhO95pdigwTHnrrjhT/ETPOH2kLuxHhqxO',1,'',0,100,1,'2020-06-10'),(101,1,4,1,567831234,'jorge','blanco','muelle','3215670045','jorge@gmail.com','jorge44','$2y$10$KxPc4M66cwJ6SxPbh8pDq.uOjeKJUPtQUun9ZHO2ujSTuzLQdk3hK',1,'',0,100,1,'2020-06-10'),(111,1,4,1,2147483647,'nicol','camaleon','caqueta','3214567098','amdrea@gmail.com','nicol33','$2y$10$1ESvxTEACAvhxiexl7LMx.p8NuSoGsF5EzjrsZdXPmpLPPx9wALD2',1,'',0,300,1,'2020-06-10'),(121,1,1,1,19311874,'Osman','Sanchez','calle 145','3214844313','bermudez@gmail.com','osman18','827ccb0eea8a706c4c34a16891f84e7b',1,'',0,100,1,'2020-06-10'),(131,1,1,1,19313474,'Jhon','Sanchez','calle 145','3214898313','sanchez@gmail.com','jhon18','8cb2237d0679ca88db6464eac60da96345513964',1,'',0,100,1,'2020-06-10'),(141,1,4,1,552345678,'NICOLAS','PRIETO','VILLACINDY','3221345678','nicolas@gmail.com','nico.1414','$2y$10$Ej0c.8OeDMlmH7pTflToI.XKoB2O1u5SAdKEh6ODvh3pMbE5a7sTC',1,'',0,100,1,'2020-06-11'),(151,1,4,1,1015434957,'CAMILO','ORTIZ','SUBA','3107595375','camilo.ortiz.p@icloud.com','camilo23','$2y$10$.vqPbTwIm.bfQW3nfFxWRO.UMaoKehKLkX531q6qKvJRcgVKM7SGq',1,'',0,204,1,'2020-06-14'),(161,1,4,1,1456023,'pepito','vargas','soacha','123456','pepito@gmail.com','pepito10','$2y$10$GVH10.Z99C.Q3QZ7QINSEuNMfCXsFy42TX3A3aEwyhtWn359jUXWm',1,'',0,100,1,'2020-06-19'),(171,1,1,1,2147483647,'johan p','rodriguez p','soacha','321456789','fghjklslksj','johan','$2y$10$8D8Rj4L37jSqPa06OIgZP.gW.hqUGXPKvpoUGapwKnegxw11dLe7u',1,'',0,100,1,'2020-06-21'),(181,1,3,1,1230986435,'miguel','rodriguez','muelle','4567890','fghjkl','migue44','$2y$10$YMPrm0CUvlC4n26oE6E0GOBIAdXuM7C8msf36JxDJEuSFi6ZLj1Xa',1,'',0,123,1,'2020-06-21'),(191,1,3,1,234511789,'juan ','bermudez','la 30','345678911','jikosja','juan55','$2y$10$G5kpq4AUT1xaXC5Ji48xnOBgMBiqhh/2QwsT78Qe5cdYH7TKOFAom',1,'',0,100,1,'2020-06-21'),(201,1,4,2,156789324,'ruben alfredo','rueda ','soacha','3215678923','ruben@gmail.com','ruben12','$2y$10$wO/nSs0SfJQQigP3d647c.tBY2qgheykaMm20vuFmrMAfuqL4Habq',1,'',0,100,1,'2020-06-21'),(211,1,1,1,1000655231,'Enrique Andres','Lozada Ramirez','Villamaria','3156987452','enrique@gmail.com','enrique23','$2y$10$LqCmFj3Diwpd2KEloGj6ce6SStZLEZtJxJ6PH5tQ0Nikl7B6HLrUC',1,'',0,100,1,'2020-06-22'),(221,1,4,1,1118536845,'Alex','Cano','Soacha','3214412006','ramirezw6523@gmail.com','alexcano23','$2y$10$evkXYqJqP4zvOtgvuqdGKOMJrm16RXVzW2EyUGw3f0akJjRlr1hTu',1,'',0,304,1,'2020-06-23'),(231,1,1,1,5467890,'hsjajhkdlsa','kslkaskld','kljslkjasdksa','76890','kjshdaj@jhkskjah','jksajsa','$2y$10$82u1JSrwJd62nF9AJCHysO9xwTO5OOz.tmRqZ0VNixZvKan6PUTGi',1,'',0,100,1,'2020-06-23'),(241,1,1,1,12332456,'Juanito Alejandro','bermudez Narvaes','Venecia','3212115698','Juan@gmail.com','juan11','$2y$10$qqhlw/CVDeBIj3D7lwiK1OthCFRkWUS66DLSPSRTcTpBldXtQwAsi',1,'',0,100,1,'2020-06-24');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 14:43:17
