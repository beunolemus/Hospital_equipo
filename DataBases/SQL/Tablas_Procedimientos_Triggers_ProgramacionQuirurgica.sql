CREATE DATABASE  IF NOT EXISTS `bd_equipo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_equipo`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_equipo
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areas_medicas`
--

DROP TABLE IF EXISTS `areas_medicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas_medicas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Descripcion` text,
  `Estatus` bit(1) DEFAULT b'1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas_medicas`
--

LOCK TABLES `areas_medicas` WRITE;
/*!40000 ALTER TABLE `areas_medicas` DISABLE KEYS */;
INSERT INTO `areas_medicas` VALUES (1,'Servicios Médicos','Por definir',_binary '','2024-01-19 13:45:45',NULL),(2,'Servicios de Apoyo','Por definir',_binary '','2024-01-19 13:47:14',NULL),(3,'Servicios Médico - Administrativos','Por definir',_binary '','2024-01-19 13:47:14',NULL),(4,'Servicios de Enfermería','Por definir',_binary '','2024-01-19 13:47:14',NULL),(5,'Departamentos Administrativos','Por definir',_binary '','2024-01-19 13:47:14',NULL),(7,'Servicios de Gobierno','Por definir',_binary '\0','2024-02-13 10:55:00','2024-02-13 10:55:12');
/*!40000 ALTER TABLE `areas_medicas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_areas_medicas_insert` AFTER INSERT ON `areas_medicas` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (
   DEFAULT, "areas_medicas", user(), 
   "Insert",
   CONCAT_WS(" ","Se ha agregado una nueva AREA_MEDICA con el ID:",
   NEW.id,", con los siguientes datos; NOMBRE:",
   NEW.nombre,", DESCRIPCION:",NEW.descripcion, 
   ", ESTATUS:", NEW.estatus), 
   now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `areas_medicas_BEFORE_UPDATE` BEFORE UPDATE ON `areas_medicas` FOR EACH ROW BEGIN
     SET NEW.Fecha_Actualizacion = current_timestamp();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_areas_medicas_update` AFTER UPDATE ON `areas_medicas` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (
   DEFAULT, "areas_medicas", user(), 
   "Update",
   CONCAT_WS(" ","Se ha modificado una AREA_MEDICA con  ID:", OLD.id,", con los siguientes cambios: ----",
   "NOMBRE:", OLD.nombre,"-", NEW.nombre, ",",
   "DESCRIPCION:", OLD.descripcion,"-",NEW.descripcion, ",", 
   "ESTATUS:", OLD.estatus,"-",NEW.estatus), 
   now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_areas_medicas_delete` AFTER DELETE ON `areas_medicas` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (
   DEFAULT, "areas_medicas", user(), 
   "Delete",
   CONCAT_WS(" ","Se eliminado los datos del AREA_MEDICA con ID:",
   OLD.id),now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Tabla` varchar(80) NOT NULL,
  `Usuario` varchar(80) NOT NULL,
  `Operacion` enum('Insert','Update','Delete') NOT NULL,
  `Descripcion` text NOT NULL,
  `Fecha_Hora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cirugias`
--

DROP TABLE IF EXISTS `cirugias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cirugias` (
  `id_cirugia` int NOT NULL AUTO_INCREMENT,
  `Persona_id` int unsigned DEFAULT NULL,
  `medico_id` int unsigned DEFAULT NULL,
  `departamento_id` int unsigned DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_cirugia`),
  KEY `cirugias_ibfk_2_idx` (`Persona_id`),
  CONSTRAINT `cirugias_ibfk_1` FOREIGN KEY (`Persona_id`) REFERENCES `personas` (`ID`),
  CONSTRAINT `cirugias_ibfk_2` FOREIGN KEY (`Persona_id`) REFERENCES `personal_medico` (`Persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cirugias`
--

LOCK TABLES `cirugias` WRITE;
/*!40000 ALTER TABLE `cirugias` DISABLE KEYS */;
/*!40000 ALTER TABLE `cirugias` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Hospital_programacion`@`%`*/ /*!50003 TRIGGER `after_insert_cirugias` AFTER INSERT ON `cirugias` FOR EACH ROW BEGIN
    INSERT INTO bitacora (Nombre_Tabla, Usuario, Operacion, Descripcion, Fecha_Hora)
    VALUES ('cirugias', USER(), 'Insert', CONCAT('Se insertó una nueva cirugía de tipo ', NEW.tipo, ' para la persona con ID ', NEW.Persona_id), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_cirugias_update` AFTER UPDATE ON `cirugias` FOR EACH ROW BEGIN
    DECLARE operacion_descripcion VARCHAR(100);
    
    -- Descripción de la operación
    IF OLD.Persona_id != NEW.Persona_id THEN
        SET operacion_descripcion = CONCAT_WS(' ', 'Se ha cambiado el paciente de la cirugía de', OLD.Persona_id, 'a', NEW.Persona_id);
    ELSEIF OLD.medico_id != NEW.medico_id THEN
        SET operacion_descripcion = CONCAT_WS(' ', 'Se ha cambiado el médico de la cirugía de', OLD.medico_id, 'a', NEW.medico_id);
    ELSEIF OLD.departamento_id != NEW.departamento_id THEN
        SET operacion_descripcion = CONCAT_WS(' ', 'Se ha cambiado el departamento de la cirugía de', OLD.departamento_id, 'a', NEW.departamento_id);
    ELSEIF OLD.tipo != NEW.tipo THEN
        SET operacion_descripcion = CONCAT_WS(' ', 'Se ha cambiado el tipo de cirugía de', OLD.tipo, 'a', NEW.tipo);
    ELSEIF OLD.fecha != NEW.fecha THEN
        SET operacion_descripcion = CONCAT_WS(' ', 'Se ha cambiado la fecha de la cirugía de', OLD.fecha, 'a', NEW.fecha);
    ELSEIF OLD.descripcion != NEW.descripcion THEN
        SET operacion_descripcion = CONCAT_WS(' ', 'Se ha cambiado la descripción de la cirugía de', OLD.descripcion, 'a', NEW.descripcion);
    ELSE
        SET operacion_descripcion = 'Se ha actualizado la cirugía';
    END IF;
    
    INSERT INTO bitacora (Nombre_Tabla, Usuario, Operacion, Descripcion, Fecha_Hora)
    VALUES ('cirugias', USER(), 'Update', operacion_descripcion, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Hospital_programacion`@`%`*/ /*!50003 TRIGGER `tr_delete_cirugias` AFTER DELETE ON `cirugias` FOR EACH ROW BEGIN
    
    INSERT INTO bitacora VALUES (
	DEFAULT, "cirugias", user(), 
   "Delete",
   CONCAT_WS(" ","Se eliminado los datos del DEPARTAMENTO con ID:",
   OLD.id_cirugia),now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `AreaMedica_ID` int unsigned DEFAULT NULL,
  `Departamento_Superior_ID` int unsigned DEFAULT NULL,
  `Responsable_ID` int unsigned DEFAULT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_area_medica_1` (`AreaMedica_ID`),
  KEY `fk_departamento_1` (`Departamento_Superior_ID`),
  CONSTRAINT `fk_area_medica_1` FOREIGN KEY (`AreaMedica_ID`) REFERENCES `areas_medicas` (`ID`),
  CONSTRAINT `fk_departamento_1` FOREIGN KEY (`Departamento_Superior_ID`) REFERENCES `departamentos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Dirección General',NULL,NULL,8,_binary '','2024-01-24 00:15:10',NULL),(2,'Junta de Gobierno',NULL,1,NULL,_binary '','2024-01-24 00:15:12',NULL),(3,'Comités Hospitalarios',NULL,1,NULL,_binary '','2024-01-24 00:15:14',NULL),(4,'Comité de Transplante',NULL,1,NULL,_binary '','2024-01-24 00:15:14',NULL),(5,'Departamento de Calidad',NULL,1,NULL,_binary '','2024-01-24 00:15:14',NULL),(6,'Sub-Dirección Médica',NULL,1,NULL,_binary '','2024-01-24 00:15:14',NULL),(7,'Sub-Dirección Administrativa',NULL,1,NULL,_binary '','2024-01-24 00:15:14',NULL),(8,'Atención a Quejas',NULL,5,NULL,_binary '','2024-01-24 00:15:19',NULL),(9,'Seguridad del Paciente',NULL,5,NULL,_binary '','2024-01-24 00:15:19',NULL),(10,'Programación Quirúrgica',NULL,5,NULL,_binary '','2024-01-24 00:15:19',NULL),(11,'División de Medicina Interna',1,6,NULL,_binary '','2024-01-24 00:21:35',NULL),(12,'Terapia Intermedia',1,11,NULL,_binary '','2024-01-24 00:21:35',NULL),(13,'División de Pediatría',1,6,NULL,_binary '','2024-01-24 00:21:35',NULL),(14,'Servicio de Urgencias Pediátricas',1,13,NULL,_binary '','2024-01-24 00:21:35',NULL),(15,'Servicio de Traumatología',1,6,NULL,_binary '','2024-01-24 00:25:44',NULL),(16,'División de Cirugía',1,6,NULL,_binary '','2024-01-24 00:25:44',NULL),(17,'Servicio de Urgencias Adultos',1,6,NULL,_binary '','2024-01-24 00:25:44',NULL),(18,'Terapia Intensiva',1,6,NULL,_binary '','2024-01-24 00:25:44',NULL),(19,'Quirófano y Anestesiología',1,6,NULL,_binary '','2024-01-24 00:25:44',NULL),(20,'Centro de Mezclas',2,6,NULL,_binary '','2024-02-06 10:23:28',NULL),(21,'Radiología e Imagen',2,6,NULL,_binary '','2024-02-06 10:23:30',NULL),(22,'Genética',2,6,NULL,_binary '','2024-02-06 10:23:31',NULL),(23,'Laboratorio de Análisis Clínicos',2,6,NULL,_binary '','2024-02-06 10:23:32',NULL),(24,'Laboratorio de Histocompatibilidad',2,23,NULL,_binary '','2024-02-06 10:23:32',NULL),(25,'Hemodialisis',2,6,NULL,_binary '','2024-02-06 10:23:33',NULL),(26,'Laboratorio de Patología',2,6,NULL,_binary '','2024-02-06 20:23:00',NULL),(27,'Rehabilitación Pulmonar',2,6,NULL,_binary '','2024-02-06 20:23:00',NULL),(28,'Medicina Genómica',2,6,NULL,_binary '','2024-02-06 20:23:00',NULL),(29,'Banco de Sangre',2,6,NULL,_binary '','2024-02-06 20:23:00',NULL),(30,'Aféresis',2,29,NULL,_binary '','2024-02-06 20:23:00',NULL),(31,'Tele-Robótica',NULL,6,NULL,_binary '','2024-02-06 20:24:15',NULL),(32,'Jefatura de Enseñanza Médica',NULL,6,NULL,_binary '','2024-02-06 20:24:15',NULL),(33,'Ética e Investigación',NULL,6,NULL,_binary '','2024-02-06 20:24:15',NULL),(34,'Medicinal Legal',NULL,NULL,NULL,_binary '','2024-02-06 20:59:37',NULL),(35,'Violencia Intrafamiliar',3,34,NULL,_binary '','2024-02-06 20:59:37',NULL),(36,'Trabajo Social',3,6,NULL,_binary '','2024-02-06 20:59:37',NULL),(37,'Unidad de Vigilancia Epidemiológica Hospitalaria',3,6,NULL,_binary '','2024-02-06 20:59:37',NULL),(38,'Centro de Investigación de Estudios de la Salud',3,6,NULL,_binary '','2024-02-06 20:59:37',NULL),(39,'Comunicación Social',3,6,NULL,_binary '','2024-02-06 20:59:37',NULL),(40,'Consulta Externa',NULL,6,NULL,_binary '','2024-02-06 21:00:25',NULL),(41,'Terapia y Rehabilitación Física',NULL,40,NULL,_binary '','2024-02-06 21:00:25',NULL),(42,'Jefatura de Enfermería',4,6,NULL,_binary '','2024-02-06 21:55:48',NULL),(43,'Subjefatura de Enfermeras',4,42,NULL,_binary '','2024-02-06 21:55:48',NULL),(44,'Coordinación Enseñanza Enfermería',4,42,NULL,_binary '','2024-02-06 21:55:48',NULL),(45,'Supervisoras de Turno',4,43,NULL,_binary '','2024-02-06 21:55:48',NULL),(46,'Jefas de Servicio',4,45,NULL,_binary '','2024-02-06 21:55:48',NULL),(47,'Clínicas y Programas',4,45,NULL,_binary '','2024-02-06 21:55:48',NULL),(48,'Recursos Humanos',5,7,NULL,_binary '','2024-02-06 21:57:55',NULL),(49,'Archivo y Correspondencia',5,48,NULL,_binary '','2024-02-06 21:57:55',NULL),(50,'Dietética',5,7,NULL,_binary '','2024-02-06 21:57:55',NULL),(51,'Farmacia Intrahospitalaria',5,7,NULL,_binary '','2024-02-06 21:57:55',NULL),(52,'Coordinación de Asuntos Jurídicos y Administrativos',5,7,NULL,_binary '','2024-02-06 21:57:55',NULL),(53,'Vigilancia',5,52,NULL,_binary '','2024-02-06 21:57:55',NULL),(54,'Biomédica Conservación y Mantenimiento',5,7,NULL,_binary '','2024-02-06 22:04:44',NULL),(55,'Validación ',5,7,NULL,_binary '','2024-02-06 22:04:44',NULL),(56,'Recursos Materiales',5,7,NULL,_binary '','2024-02-06 22:04:44',NULL),(57,'Almacén',5,56,NULL,_binary '','2024-02-06 22:04:44',NULL),(58,'Insumos Especializados',5,56,NULL,_binary '','2024-02-06 22:04:44',NULL),(59,'Servicios Generales',5,7,NULL,_binary '','2024-02-06 22:04:44',NULL),(60,'Intendencia',5,59,NULL,_binary '','2024-02-06 22:04:44',NULL),(61,'Ropería',5,59,NULL,_binary '','2024-02-06 22:04:44',NULL),(62,'Recursos Financieros',5,7,NULL,_binary '','2024-02-13 10:38:19',NULL),(63,'Departamento Administrativo Hemodinamia',5,7,NULL,_binary '','2024-02-13 10:38:19',NULL),(64,'Relaciones Públicas',5,7,NULL,_binary '','2024-02-13 10:38:19',NULL),(65,'Nivel 7',5,64,NULL,_binary '\0','2024-02-13 10:38:19','2024-02-13 10:52:46'),(66,'Farmacia del Seguro Popular',5,7,NULL,_binary '','2024-02-13 10:38:19',NULL),(67,'Enlace Administrativo',5,7,NULL,_binary '','2024-02-13 10:38:19',NULL),(68,'Control de Gastos Catastróficos',5,67,NULL,_binary '','2024-02-13 10:38:19',NULL),(69,'Informática',5,7,NULL,_binary '','2024-02-13 10:38:19',NULL),(70,'Tecnología en la Salud',5,69,NULL,_binary '','2024-02-13 10:38:19',NULL),(71,'Registros Médicos',5,7,NULL,_binary '','2024-02-13 10:38:19',NULL);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_departamentos_insert` AFTER INSERT ON `departamentos` FOR EACH ROW BEGIN
   DECLARE nombre_aream VARCHAR(150) DEFAULT NULL;
   DECLARE nombre_depto VARCHAR(100) DEFAULT NULL;
   DECLARE nombre_resp VARCHAR(50) DEFAULT NULL;
   DECLARE val_estatus VARCHAR(50) DEFAULT NULL;
   
   SET nombre_aream = (SELECT IFNULL((SELECT Nombre FROM areas_medicas WHERE id = NEW.AreaMedica_ID), "Sin Área Médica"));
   SET nombre_depto = (SELECT IFNULL((SELECT Nombre FROM departamentos WHERE id = NEW.Departamento_Superior_ID), "Sin Departamento Superior"));
   SET nombre_resp = (SELECT IFNULL((SELECT p.Nombre FROM personal_medico pm 
   JOIN personas p ON p.id = p.id WHERE pm.persona_id = NEW.Responsable_ID), "Sin Responsable"));
   
   IF NEW.estatus THEN
		SET val_estatus = "Activo";
   ELSE
        SET val_estatus = "Inactivo";
	END IF;
   
INSERT INTO bitacora VALUES (
   DEFAULT, "departamentos", user(), 
   "Insert",
   CONCAT_WS(" ","Se ha agregado un nuevo DEPARTAMENTO con el ID:", NEW.id,",",
   "con los siguientes datos; NOMBRE:", NEW.nombre,",",
   "AREA_MEDICA:", nombre_aream,",",
   "DEPARTAMENTO_SUPERIOR:", nombre_depto,",",
   "RESPONSABLE:", nombre_resp,",",
   "ESTATUS:", val_estatus), 
   now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `departamentos_BEFORE_UPDATE` BEFORE UPDATE ON `departamentos` FOR EACH ROW BEGIN
    SET NEW.Fecha_Actualizacion = current_timestamp();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_departamentos_update` AFTER UPDATE ON `departamentos` FOR EACH ROW BEGIN
   DECLARE nombre_aream VARCHAR(150) DEFAULT NULL;
   DECLARE nombre_depto VARCHAR(100) DEFAULT NULL;
   DECLARE nombre_resp VARCHAR(50) DEFAULT NULL;
   DECLARE val_estatus VARCHAR(50) DEFAULT NULL;
   DECLARE nombre_aream2 VARCHAR(150) DEFAULT NULL;
   DECLARE nombre_depto2 VARCHAR(100) DEFAULT NULL;
   DECLARE nombre_resp2 VARCHAR(50) DEFAULT NULL;
   DECLARE val_estatus2 VARCHAR(50) DEFAULT NULL;
   
   
   SET nombre_aream = (SELECT IFNULL((SELECT Nombre FROM areas_medicas WHERE id = NEW.AreaMedica_ID), "Sin Área Médica"));
   SET nombre_depto = (SELECT IFNULL((SELECT Nombre FROM departamentos WHERE id = NEW.Departamento_Superior_ID), "Sin Departamento Superior"));
   SET nombre_resp = (SELECT IFNULL((SELECT CONCAT_Ws(" ", p.titulo, p.Nombre, p.primer_apellido, p.segundo_apellido) FROM personal_medico pe JOIN personas p ON p.id = pe.persona_id WHERE id = NEW.Responsable_ID), "Sin Responsable"));
   
   SET nombre_aream2= (SELECT IFNULL((SELECT Nombre FROM areas_medicas WHERE id = OLD.AreaMedica_ID), "Sin Área Médica"));
   SET nombre_depto2 = (SELECT IFNULL((SELECT Nombre FROM departamentos WHERE id = OLD.Departamento_Superior_ID), "Sin Departamento Superior"));
   SET nombre_resp2 = (SELECT IFNULL((SELECT CONCAT_Ws(" ", p.titulo, p.Nombre, p.primer_apellido, p.segundo_apellido) FROM personal_medico pe JOIN personas p ON p.id = pe.persona_id WHERE id = OLD.Responsable_ID), "Sin Responsable"));
   
   IF NEW.estatus THEN
		SET val_estatus = "Activo";
   ELSE
        SET val_estatus = "Inactivo";
	END IF;
    
    IF OLD.estatus THEN
		SET val_estatus2 = "Activo";
   ELSE
        SET val_estatus2 = "Inactivo";
	END IF;
   
   
INSERT INTO bitacora VALUES (
   DEFAULT, "departamentos", user(), 
   "Update",
   CONCAT_WS(" ","Se ha modificado el  DEPARTAMENTO con el ID:", NEW.id,",",
   "con los siguientes datos; NOMBRE:", OLD.nombre," - ",  NEW.nombre ,",",
   "AREA_MEDICA:", nombre_aream2," - ", nombre_aream, ",",
   "DEPARTAMENTO_SUPERIOR:", nombre_depto2," - ", nombre_depto ,",",
   "RESPONSABLE:", nombre_resp2," - ", nombre_resp,",",
   "ESTATUS:", val_estatus2," - ", val_estatus), 
   now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_departamentos_delete` AFTER DELETE ON `departamentos` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (
	DEFAULT, "departamentos", user(), 
   "Delete",
   CONCAT_WS(" ","Se eliminado los datos del DEPARTAMENTO con ID:",
   OLD.id),now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `horariosquirofano`
--

DROP TABLE IF EXISTS `horariosquirofano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariosquirofano` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `HoraFin` time DEFAULT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariosquirofano`
--

LOCK TABLES `horariosquirofano` WRITE;
/*!40000 ALTER TABLE `horariosquirofano` DISABLE KEYS */;
/*!40000 ALTER TABLE `horariosquirofano` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Hospital_programacion`@`%`*/ /*!50003 TRIGGER `trg_insertar_horarios_quirofano` AFTER INSERT ON `horariosquirofano` FOR EACH ROW BEGIN
    INSERT INTO bitacora (Nombre_Tabla, Usuario, Operacion, Descripcion, Fecha_Hora)
    VALUES ('horariosquirofano', USER(), 'Insert', CONCAT('Nuevo registro insertado en HorariosQuirofano con ID: ', NEW.Id), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Hospital_programacion`@`%`*/ /*!50003 TRIGGER `trg_actualizar_horarios_quirofano` AFTER UPDATE ON `horariosquirofano` FOR EACH ROW BEGIN

  -- Registrar en la bitácora la actualización del horario_quirofano
    INSERT INTO bitacora VALUES (
       DEFAULT, 'horariosquirofano', USER(), 'UPDATE',
       CONCAT_WS(" ", 'Se ha actualizado los horarios de quirofano con el ID: ', OLD.Id,
                         ', Fecha antigua: ', OLD.Fecha,
                         ', Horario de inicio antiguo: ', OLD.HoraInicio,
                         ', Horario de fin antiguo: ', OLD.HoraFin,
                         ', Tipo de cirugia antigua: ', OLD.Tipo,
                         ', a Fecha nueva: ', NEW.Fecha,
                         ', Horario de inicio nuevo: ', NEW.HoraInicio,
                         ', Horario de fin nuevo: ', NEW.HoraFin,
                         ', Tipo de cirugia nuevo: ', NEW.Tipo
                        ),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_eliminar_horarios_quirofano` AFTER DELETE ON `horariosquirofano` FOR EACH ROW BEGIN

    -- Registrar en la bitácora la eliminación de un de un horario
    INSERT INTO bitacora VALUES (
       DEFAULT, 'horariosquirofano', USER(), 'DELETE',
       CONCAT_WS(" ", 'Se ha eliminado un horario con el ID:', OLD.Id,
						 ', Fecha: ', OLD.Fecha,
                         ', Horario de inicio: ', OLD.HoraInicio,
                         ', Horario de fin: ', OLD.HoraFin,
                         ', Tipo de cirugia: ', OLD.Tipo
       
       ),
       
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre_Comercial` varchar(250) NOT NULL,
  `Nombre_Generico` varchar(250) NOT NULL,
  `Via_Administracion` enum('Oral','Intravenoso','Rectal','Cutáneo','Subcutáneo','Oftálmico','Ótica','Nasal','Tópica','Parental','Vaginal') DEFAULT NULL,
  `Presentacion` enum('Grageas','Suspensión','Pomada','Jabón','Polvo','Supositorios','Solución','Cápsulas','Parche','Jarabe','Gotas','Tabletas') DEFAULT NULL,
  `Estatus` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Tylenol','Acetaminofén','Oral','Tabletas',_binary ''),(2,'Advil','Ibuprofeno','Oral','Tabletas',_binary ''),(3,'Genoprazol','Omeprazol','Oral','Tabletas',_binary ''),(4,'Xanterok','Simvastatina','Oral','Tabletas',_binary ''),(5,'Xigduo','Metformina','Oral','Tabletas',_binary ''),(6,'Glioten','Enalapril','Oral','Tabletas',_binary ''),(7,'Claxin','Amoxicilina','Oral','Tabletas',_binary ''),(8,'Spectrum','Ciprofloxacino','Oral','Tabletas',_binary ''),(9,'Ativan','Lorazepam','Oral','Tabletas',_binary ''),(10,'Internol','Atenolol','Oral','Tabletas',_binary ''),(11,'Neutrac','Ranitidina','Oral','Tabletas',_binary ''),(12,'Valium','Diazepam','Oral','Tabletas',_binary ''),(13,'Nandresto','Escitalopram','Oral','Tabletas',_binary ''),(14,'Euthyrox','Levotiroxina','Oral','Tabletas',_binary ''),(15,'Mezelol','Metoprolol','Oral','Tabletas',_binary ''),(16,'Zatin','Fluoxetina','Oral','Tabletas',_binary ''),(17,'Lasix','Furosemida','Oral','Tabletas',_binary ''),(18,'Alderan','Losartán','Oral','Tabletas',_binary ''),(19,'Perrigo','Warfarina','Oral','Tabletas',_binary ''),(20,'Apotex','Atorvastatina','Oral','Tabletas',_binary ''),(21,'aspirin','Ácido acetilsalicílico','Oral','Tabletas',_binary ''),(22,'Tafil','Alprazolam','Oral','Tabletas',_binary ''),(23,'Amloc','Amlodipino','Oral','Tabletas',_binary ''),(24,'Rivotril','Clonazepam','Oral','Tabletas',_binary ''),(25,'Aerius','Desloratadina','Oral','Tabletas',_binary ''),(26,'Cymbalta','Duloxetina','Oral','Tabletas',_binary ''),(27,'Aprovel','Irbesartan','Oral','Tabletas',_binary ''),(28,'Oretic','Hidroclorotiazida','Oral','Tabletas',_binary ''),(29,'Zoton','Lansoprazol','Oral','Tabletas',_binary ''),(30,'Vizarsin','Sildenafil','Oral','Tabletas',_binary ''),(31,'Vyvanse','Lisdexanfetamina','Oral','Tabletas',_binary ''),(32,'Nidazol','Metronidazol','Oral','Tabletas',_binary ''),(33,'Remeron','Mirtazapina','Oral','Tabletas',_binary ''),(34,'Apronax','Naproxeno','Oral','Tabletas',_binary ''),(35,'Frisium','Pregabalina','Oral','Tabletas',_binary ''),(36,'Virovir','Aciclovir','Oral','Tabletas',_binary ''),(37,'Crestor','Rosuvastatina','Oral','Tabletas',_binary ''),(38,'Riopan','Magaldrato','Oral','Tabletas',_binary ''),(39,'Tramal','Tramadol','Oral','Tabletas',_binary ''),(40,'Diovan','Valsartán','Oral','Tabletas',_binary ''),(41,'Acetaminofeno','Tylenol','Oral','Tabletas',_binary ''),(42,'Celecoxib','Celebrex','Oral','Tabletas',_binary ''),(43,'Memantina','Namenda','Oral','Tabletas',_binary ''),(44,'Galotam','Galotam','Oral','Tabletas',_binary ''),(45,'Cetirizina','Zyrtec','Oral','Tabletas',_binary ''),(46,'Doxazosina','Cardura','Oral','Tabletas',_binary ''),(47,'Metolazona','Zaroxolyn','Oral','Tabletas',_binary ''),(48,'Pemetrexed','Alimta','Oral','Tabletas',_binary ''),(49,'Fluconazol','Diflucan','Oral','Tabletas',_binary ''),(50,'Tioguanina','Tabloid','Oral','Tabletas',_binary ''),(51,'Quinapril','Accupril','Oral','Tabletas',_binary ''),(52,'Lisinopril','Prinivil','Oral','Tabletas',_binary ''),(53,'Loratadina','Claritin','Oral','Tabletas',_binary ''),(54,'Metamizol Sódico','Novalgina','Oral','Tabletas',_binary ''),(55,'Terbinafina','Lamisil','Oral','Tabletas',_binary ''),(56,'Perindopril','Coversyl','Oral','Tabletas',_binary ''),(57,'Nelarabine','Arranon','Oral','Tabletas',_binary ''),(58,'Flufenazina','Modecate','Oral','Tabletas',_binary ''),(59,'Tobrabact','Tobramicina','Oral','Tabletas',_binary ''),(60,'Apixabán','Eliquis','Oral','Tabletas',_binary ''),(61,'Agomelatina','Agomelatina','Oral','Tabletas',_binary ''),(62,'Nortriptilina','Nortriptilina','Oral','Tabletas',_binary ''),(63,'Amitriptilina','Amitriptilina','Oral','Tabletas',_binary ''),(64,'Bupropion','Bupropion','Oral','Tabletas',_binary ''),(65,'Citalopram','Citalopram','Oral','Tabletas',_binary ''),(66,'Desvenlafaxina','Desvenlafaxina','Oral','Tabletas',_binary ''),(67,'Zaleplon','Zaleplon','Oral','Tabletas',_binary ''),(68,'Zidovudina','Zidovudina','Oral','Tabletas',_binary ''),(69,'Fluvoxamina','Fluvoxamina','Oral','Tabletas',_binary ''),(70,'Imipramina','Imipramina','Oral','Tabletas',_binary ''),(71,'Isocarboxazida','Isocarboxazida','Oral','Tabletas',_binary ''),(72,'Maprotilina','Maprotilina','Oral','Tabletas',_binary ''),(73,'Ziprasidona','Ziprasidona','Oral','Tabletas',_binary ''),(74,'Paroxetina','Paroxetina','Oral','Tabletas',_binary ''),(75,'Selegilina','Selegilina','Oral','Tabletas',_binary ''),(76,'Sertralina','Sertralina','Oral','Tabletas',_binary ''),(77,'Tranylcipromina','Tranylcipromina','Oral','Tabletas',_binary ''),(78,'Venlafaxina','Venlafaxina','Oral','Tabletas',_binary ''),(79,'Vilazodona','Vilazodona','Oral','Tabletas',_binary ''),(80,'Valifozdona','Valifozdona','Oral','Tabletas',_binary ''),(81,'Diamox','Acetazolamida','Oral','Tabletas',_binary ''),(82,'Voltaren','Diclofenac','Oral','Tabletas',_binary ''),(83,'Pariet','Rabeprazol','Oral','Tabletas',_binary ''),(84,'Keflex','Cefalexina','Oral','Tabletas',_binary ''),(85,'Tracleer','Bosentan','Oral','Tabletas',_binary ''),(86,'Isentress','Raltegravir','Oral','Tabletas',_binary ''),(87,'Daonil','Glibenclamida','Oral','Tabletas',_binary ''),(88,'Pravachol','Pravastatina','Oral','Tabletas',_binary ''),(89,'Lumigan','Bimatoprost','Oral','Tabletas',_binary ''),(90,'Eritrocin','Eritromicina','Oral','Tabletas',_binary ''),(91,'Cytotec','Misoprostol','Oral','Tabletas',_binary ''),(92,'Noroxin','Norfloxacino','Oral','Tabletas',_binary ''),(93,'Postinor','Levonorgestrel','Oral','Tabletas',_binary ''),(94,'Atacand','Candesartan','Oral','Tabletas',_binary ''),(95,'Adalat','Nifedipino','Oral','Tabletas',_binary ''),(96,'Cytomel','Liotironina','Oral','Tabletas',_binary ''),(97,'Vfend','Voriconazole','Oral','Tabletas',_binary ''),(98,'Codipront','Codeína','Oral','Tabletas',_binary ''),(99,'Victoza','Liraglutide','Oral','Tabletas',_binary ''),(100,'Topamax','Topiramato','Oral','Tabletas',_binary ''),(101,'Nexium','Esomeprazol','Oral','Tabletas',_binary ''),(102,'Isordil','Isosorbide Dinitrate','Oral','Tabletas',_binary ''),(103,'Xyzal','Levocetirizina','Oral','Tabletas',_binary ''),(104,'Singulair','Montelukast','Oral','Tabletas',_binary ''),(105,'Zyprexa','Olanzapine','Oral','Tabletas',_binary ''),(106,'Actonel','Risedronato','Oral','Tabletas',_binary ''),(107,'Spiriva','Tiotopium','Nasal','Solución',_binary ''),(108,'Avelox','Moxifloxacino','Oral','Tabletas',_binary ''),(109,'Bystolic','Nebivolol','Oral','Tabletas',_binary ''),(110,'Neoral','Cyclosporine','Oral','Tabletas',_binary ''),(111,'Dexilant','Dexlansoprozol','Oral','Tabletas',_binary ''),(112,'Fycompa','Perampanel','Oral','Tabletas',_binary ''),(113,'Zontivity','Vorapaxar','Oral','Tabletas',_binary ''),(114,'Flomax','Tamsulosina','Oral','Tabletas',_binary ''),(115,'Abilify','Aripiprazol','Oral','Tabletas',_binary ''),(116,'Plavix','Clopidogrel','Oral','Tabletas',_binary ''),(117,'Ritalin','Metilfenidato','Oral','Tabletas',_binary ''),(118,'Precedex','Dexmedetomidina','Nasal','Solución',_binary ''),(119,'Benicar','Olmesartan','Oral','Tabletas',_binary ''),(120,'Steglatro','Ertugliflozin','Oral','Tabletas',_binary ''),(121,'Rilutek','Riluzol','Oral','Tabletas',_binary ''),(122,'Spinraza','Nusinersen','Oral','Tabletas',_binary ''),(123,'Soliris ','Eculizumab','Oral','Tabletas',_binary ''),(124,'Imbruvica','Ibrutinib','Oral','Tabletas',_binary ''),(125,'Roactemra','Tocilizumab','Oral','Tabletas',_binary ''),(126,'Lixiana','Edoxaban','Oral','Tabletas',_binary ''),(127,'Lojuxta','Lomitapida','Oral','Tabletas',_binary ''),(128,'Xalkori','Crizotinib','Oral','Tabletas',_binary ''),(129,'Kymriah','Tisagenlecleucel','Oral','Tabletas',_binary ''),(130,'Bexaban','Oritavancina','Oral','Tabletas',_binary ''),(131,'Lenvima','Lenvatinib','Oral','Tabletas',_binary ''),(132,'Jakavi','Ruxolitinib','Oral','Tabletas',_binary ''),(133,'Revolade','Eltrombopag','Oral','Tabletas',_binary ''),(134,'Darzalex','Daratumumab','Oral','Tabletas',_binary ''),(135,'Tremfya','Guselkumab','Oral','Tabletas',_binary ''),(136,'Entyvio','Vedolizumab','Oral','Tabletas',_binary ''),(137,'Ocrevus','Ocrelizumab','Oral','Tabletas',_binary ''),(138,'Benlysta','Belimumab','Oral','Tabletas',_binary ''),(139,'Ofev','Nintedanib','Oral','Tabletas',_binary ''),(140,'Imnovid','Pomalidomida','Oral','Tabletas',_binary ''),(141,'Clarityne','Clorfenamina','Oral','Tabletas',_binary ''),(142,'Microgynon','Etinilestradiol','Oral','Tabletas',_binary ''),(143,'Daktarin','Miconazol','Oral','Tabletas',_binary ''),(144,'Enantyum','Dexibuprofeno','Oral','Tabletas',_binary ''),(145,'Levaquin','Levofloxacino','Oral','Tabletas',_binary ''),(146,'Primperan','Metoclopramida','Oral','Tabletas',_binary ''),(147,'Neosinefrina','Fenilefrina','Oral','Tabletas',_binary ''),(148,'Glucobay','Acarbosa','Oral','Tabletas',_binary ''),(149,'Soriatane','Acitretina','Oral','Tabletas',_binary ''),(150,'Ezetrol','Ezetimiba','Oral','Tabletas',_binary ''),(151,'Risperdal','Risperidona','Oral','Tabletas',_binary ''),(152,'Pulmicort','Budesonida','Oral','Tabletas',_binary ''),(153,'Lamisil','Terbinafina','Oral','Tabletas',_binary ''),(154,'Temovate','Clobetasol','Oral','Tabletas',_binary ''),(155,'Lopid','Gemfibrozilo','Oral','Tabletas',_binary ''),(156,'Macrodantina','Nitrofurantoina','Oral','Tabletas',_binary ''),(157,'Neoral','Ciclosporina','Oral','Tabletas',_binary ''),(158,'Norvir','Ritonavir','Oral','Tabletas',_binary ''),(159,'Atrovent','Atropina','Oral','Tabletas',_binary ''),(160,'Xalatan','Latanoprost','Oral','Tabletas',_binary ''),(161,'Flolan','Epoprostenol','Oral','Tabletas',_binary ''),(162,'Spiranxin','Rifaximina','Oral','Tabletas',_binary ''),(163,'Almogran','Almotriptán','Oral','Tabletas',_binary ''),(164,'Plexia','Tapentadol','Oral','Tabletas',_binary ''),(165,'Alphagan','Brimonidina','Oral','Tabletas',_binary ''),(166,'Ditropan','Oxibutinina','Oral','Tabletas',_binary ''),(167,'Nucala','Mepolizumab','Oral','Tabletas',_binary ''),(168,'Avidart','Dutasterida','Oral','Tabletas',_binary ''),(169,'Januvia','Sitagliptina','Oral','Tabletas',_binary ''),(170,'Scabisan','Permetrina','Oral','Tabletas',_binary ''),(171,'Mirapexin','Pramipexol','Oral','Tabletas',_binary ''),(172,'Keppra','Levetiracetam','Oral','Tabletas',_binary ''),(173,'Lamictal','Lamotrigina','Oral','Tabletas',_binary ''),(174,'Detrusitol','Tolterodina','Oral','Tabletas',_binary ''),(175,'Chantix','Vareniclina','Oral','Tabletas',_binary ''),(176,'Tarceva','Erlotinib','Oral','Tabletas',_binary ''),(177,'Sirdalud','Tizanidina','Oral','Tabletas',_binary ''),(178,'Peridex','Clorhexidina','Oral','Tabletas',_binary ''),(179,'Cibacen','Benazepril','Oral','Tabletas',_binary ''),(180,'Neurontin','Gabapentina','Oral','Tabletas',_binary ''),(181,'Ventonil','Salbumatol','Oral','Tabletas',_binary ''),(182,'Humalog','Insulina Lispro','Oral','Tabletas',_binary ''),(183,'Lantus','Insulina glargina','Oral','Tabletas',_binary ''),(184,'Cloxapen','Cloxacilina','Oral','Tabletas',_binary ''),(185,'Glucotrol','Glipizida','Oral','Tabletas',_binary ''),(186,'Actos','Pioglitazona','Oral','Tabletas',_binary ''),(187,'Dilatin','Fenitoína','Oral','Tabletas',_binary ''),(188,'Jardiance','Empagliflozina','Oral','Tabletas',_binary ''),(189,'Farxiga','Dapagliflozina','Oral','Tabletas',_binary ''),(190,'Galvus','Vildagliptina','Oral','Tabletas',_binary ''),(191,'Tradjenta','Linagliptina','Oral','Tabletas',_binary ''),(192,'Invokana','Canagliflozina','Oral','Tabletas',_binary ''),(193,'Onglyza','Saxagliptina','Oral','Tabletas',_binary ''),(194,'Byetta','Exenatida','Oral','Tabletas',_binary ''),(195,'Victoza','Liraglutida','Oral','Tabletas',_binary ''),(196,'NovoLog','Insulina aspart','Oral','Tabletas',_binary ''),(197,'Levemir','Insulina detemir','Oral','Tabletas',_binary ''),(198,'Humulin R','Insulina regular','Oral','Tabletas',_binary ''),(199,'Imodium','Lorepamida','Oral','Tabletas',_binary ''),(200,'Prandin','Repaglinida','Oral','Tabletas',_binary ''),(202,'Xaretol','Rivaroxaban','Oral','Tabletas',_binary ''),(203,'Latuda','Lurasidona','Oral','Tabletas',_binary ''),(204,'Corlanor','Ivabradina','Oral','Tabletas',_binary ''),(205,'Aldara','Imiquimod','Oral','Tabletas',_binary ''),(206,'Movantik','Naloxegol','Oral','Tabletas',_binary ''),(207,'Prezista','Darunavir','Oral','Tabletas',_binary ''),(208,'Trintellix','Vortioxetina','Oral','Tabletas',_binary ''),(209,'Safinamida','Xadago','Oral','Tabletas',_binary ''),(210,'Avonex','Interferon','Oral','Tabletas',_binary ''),(211,'Gilenya','Fingolimod','Oral','Tabletas',_binary ''),(212,'Uloric','Febuxostat','Oral','Tabletas',_binary ''),(213,'Conylox','Podofilox','Oral','Tabletas',_binary ''),(214,'Acido Tricloroacetico','Acido Tricloroacetico','Oral','Tabletas',_binary ''),(215,'Fansera','Benralizumab','Oral','Tabletas',_binary ''),(216,'Alvesco','Ciclesonida','Oral','Tabletas',_binary ''),(217,'Entereg','Alvimopan','Oral','Tabletas',_binary ''),(218,'Esbriet','Pirfenidona','Oral','Tabletas',_binary ''),(219,'Belsomra','Suvorexant','Oral','Tabletas',_binary ''),(220,'Invenga','Paliperidona','Oral','Tabletas',_binary ''),(221,'Spectrobid','Spectinomicina','Oral','Tabletas',_binary ''),(222,'Tygacil','Tigeciclina','Oral','Tabletas',_binary ''),(223,'Uptravi','Selexipag','Oral','Tabletas',_binary ''),(224,'Tasigna','Nilotinib','Oral','Tabletas',_binary ''),(225,'Azilect','Rasagilina','Oral','Tabletas',_binary ''),(226,'Eraxis','Anidulafungina','Oral','Tabletas',_binary ''),(227,'Nuvayo','Belatacept','Oral','Tabletas',_binary ''),(228,'Votrient','Pazopanib','Oral','Tabletas',_binary ''),(229,'Rocephin','Ceftriaxona','Oral','Tabletas',_binary ''),(230,'Ventavis','Iloprost','Oral','Tabletas',_binary ''),(231,'Entyvio','Teduglutida','Oral','Tabletas',_binary ''),(232,'Bosutinib','Bosutinib','Oral','Tabletas',_binary ''),(233,'Bacillocin','Delafloxacina','Oral','Tabletas',_binary ''),(234,'Nuplazid','Pimavanserina','Oral','Tabletas',_binary ''),(235,'Inrebic','Romidepsina','Oral','Tabletas',_binary ''),(236,'Xyrem','Tolvaptán','Oral','Tabletas',_binary ''),(237,'Kaftrio','Lumacaftor','Oral','Tabletas',_binary ''),(238,'Orenitram','Macitentan','Oral','Tabletas',_binary ''),(239,'Sitavig','Sitafloxacina','Oral','Tabletas',_binary ''),(240,'Xenical','Telotristat','Oral','Tabletas',_binary ''),(241,'Degarelix','Firmagon','Oral','Tabletas',_binary ''),(242,'Alendronate','Fosamax','Oral','Tabletas',_binary ''),(243,'Azithromycin','Zithromax,','Oral','Tabletas',_binary ''),(244,'Bisoprolol','Zebeta','Oral','Tabletas',_binary ''),(245,'Carvedilol','Coreg','Oral','Tabletas',_binary ''),(246,'Dexametasona','Decadron','Oral','Tabletas',_binary ''),(247,'Baraclude','Entecavir','Oral','Tabletas',_binary ''),(248,'Fexofenadine','Allegra','Oral','Tabletas',_binary ''),(249,'Glyburride','Micronase','Oral','Tabletas',_binary ''),(250,'Hydroxyzine','Atarax','Oral','Tabletas',_binary ''),(251,'Leuprolide','Leuprolide','Oral','Tabletas',_binary ''),(252,'Methylprednisolone','Medrol','Oral','Tabletas',_binary ''),(253,'Nystatin','Mycostatin','Oral','Tabletas',_binary ''),(254,'Quetiapina','Seroquel','Oral','Tabletas',_binary ''),(255,'Fedratinib','Inrebic','Oral','Tabletas',_binary ''),(256,'Enoxaparin','Lovenox','Oral','Tabletas',_binary ''),(257,'Clobenzorex','Asenlix','Oral','Tabletas',_binary ''),(258,'Leflunomida','Arava','Oral','Tabletas',_binary ''),(259,'Indomethacin','Indocin','Oral','Tabletas',_binary ''),(260,'ketoconazol','Nizoral','Oral','Tabletas',_binary ''),(261,'ranolazina','ranexa','Oral','Tabletas',_binary ''),(262,'clobazam','onfi','Oral','Tabletas',_binary ''),(263,'haloperidol','haldol','Oral','Tabletas',_binary ''),(264,'nabumetona','relafen','Oral','Tabletas',_binary ''),(265,'naltrexona','revia','Oral','Tabletas',_binary ''),(266,'piroxicam','feldene','Oral','Tabletas',_binary ''),(267,'momentasona','nasonex','Oral','Tabletas',_binary ''),(268,'ropinirol','requip','Oral','Tabletas',_binary ''),(269,'atomoxetina','strattera','Oral','Tabletas',_binary ''),(270,'tobramicina','trobex','Oral','Tabletas',_binary ''),(271,'lacosamida','vimpat','Oral','Tabletas',_binary ''),(272,'benzonato','tessalon','Oral','Tabletas',_binary ''),(273,'elagolix','orilissa','Oral','Tabletas',_binary ''),(274,'cereafuxina','ceftin','Oral','Tabletas',_binary ''),(275,'terazosina','hytrin','Oral','Tabletas',_binary ''),(276,'sotalol','betapace','Oral','Tabletas',_binary ''),(277,'clindamicina','cleocin','Oral','Tabletas',_binary ''),(278,'doxorrubicina','doxil','Oral','Tabletas',_binary ''),(279,'fexodanina','allegra','Oral','Tabletas',_binary ''),(280,'gabapentina','gabarone','Oral','Tabletas',_binary ''),(281,'Nor-Bental','Altretamina','Oral','Tabletas',_binary ''),(282,'Ribobustan','Bendamustina','Oral','Tabletas',_binary ''),(283,'Busilbex','Bulsafán','Oral','Tabletas',_binary ''),(284,'Carboplat','Carboplatino','Oral','Tabletas',_binary ''),(285,'Lanactene','Carbustina','Oral','Tabletas',_binary ''),(286,'Leukeran','Clorambucilo','Oral','Tabletas',_binary ''),(287,'Accocit','Cisplatino','Oral','Tabletas',_binary ''),(288,'Mexcikem','Ciclofosmamida','Oral','Tabletas',_binary ''),(289,'Onecobax','Dacarbazina','Oral','Tabletas',_binary ''),(290,'Alquifos','Ifosfamida','Oral','Tabletas',_binary ''),(291,'Lemustatina','Lomustina','Oral','Tabletas',_binary ''),(292,'Mustargen','Mecloretamina','Oral','Tabletas',_binary ''),(293,'Alkeran','Melfalán','Oral','Tabletas',_binary ''),(294,'Tiboquir','Oxaliplatino','Oral','Tabletas',_binary ''),(295,'Temodal','Temozolomida','Oral','Tabletas',_binary ''),(296,'Tepadina','Tiotepa','Oral','Tabletas',_binary ''),(297,'Trabec','Trabectedin','Oral','Tabletas',_binary ''),(298,'Floxiridina','Floxiridina','Oral','Tabletas',_binary ''),(299,'Hydrea','Hidroxiurea','Oral','Tabletas',_binary ''),(300,'Estreptozina','Estreptozina','Oral','Tabletas',_binary ''),(301,'Levodopa','Sinemet','Oral','Tabletas',_binary ''),(302,'Carbidopa','Sinemet','Oral','Tabletas',_binary ''),(303,'Fosfomicina','Monurol','Oral','Tabletas',_binary ''),(304,'Bromocriptina','Parlodel','Oral','Tabletas',_binary ''),(305,'Methotrexato','Mexate','Oral','Tabletas',_binary ''),(306,'Adalimumab','Humira','Oral','Tabletas',_binary ''),(307,'Entacapona','Comtan','Oral','Tabletas',_binary ''),(308,'Tiotixeno','Navane','Oral','Tabletas',_binary ''),(309,'Rosiglitazona','Avandia','Oral','Tabletas',_binary ''),(310,'Isoniazida','Cemidon','Oral','Tabletas',_binary ''),(311,'Amantadina','Gocovri','Oral','Tabletas',_binary ''),(312,'Lopinavir','Kaletra','Oral','Tabletas',_binary ''),(313,'Nitrendipino','Baypresol','Oral','Tabletas',_binary ''),(314,'Doxiciclina','Dosil','Oral','Tabletas',_binary ''),(315,'Clonidina','Catapres','Oral','Tabletas',_binary ''),(316,'Tirotropina','Thyrogen','Oral','Tabletas',_binary ''),(317,'Pantoprazol','Protonix','Oral','Tabletas',_binary ''),(318,'Tenofovir','Viread','Oral','Tabletas',_binary ''),(319,'Anastrozol','Arimidex','Oral','Tabletas',_binary ''),(320,'Bicalutamida','Casedox','Oral','Tabletas',_binary ''),(321,'Libertrim','Polibutin','Oral','Tabletas',_binary ''),(322,'Dimetiona','Valent','Oral','Tabletas',_binary ''),(323,'Dapsona','Remexa','Oral','Tabletas',_binary ''),(324,'Troferit','Dropropizina','Oral','Tabletas',_binary ''),(325,'Azulfidina','Sulfasalazina','Oral','Tabletas',_binary ''),(326,'Plurimen','Anipryl','Oral','Tabletas',_binary ''),(327,'Bactroban','Mupirocina','Oral','Tabletas',_binary ''),(328,'Intuniv','Guanfacina','Oral','Tabletas',_binary ''),(329,'Minirin','Desmopresina','Oral','Tabletas',_binary ''),(330,'Colcrys','Colchicina','Oral','Tabletas',_binary ''),(331,'Alinia','Nitazoxanida','Oral','Tabletas',_binary ''),(332,'Pradaxa','Dabigatrán ','Oral','Tabletas',_binary ''),(333,'Reglan','Reglan ','Oral','Tabletas',_binary ''),(334,'Naloxegol','Movantik','Oral','Tabletas',_binary ''),(335,'Ciclobenzaprina','Flexeril','Oral','Tabletas',_binary ''),(336,'Prograf','Tacrolimus','Oral','Tabletas',_binary ''),(337,'Tizanida','Tizanida','Oral','Tabletas',_binary ''),(338,'Xolair','Omalizumab','Oral','Tabletas',_binary ''),(339,'Hemamina','Cianocobalamina','Oral','Tabletas',_binary ''),(340,'Entresto','Sacubitril','Oral','Tabletas',_binary ''),(341,'Ventolin','Albuterol','Oral','Tabletas',_binary ''),(342,'Xopenex','Levalbuterol','Oral','Tabletas',_binary ''),(343,'Maxair','Pirbuterol','Oral','Tabletas',_binary ''),(344,'Tornalate','Bitolterol','Oral','Tabletas',_binary ''),(345,'Alupent','Metaproterenol','Oral','Tabletas',_binary ''),(346,'Brethine','Terbutalina','Oral','Tabletas',_binary ''),(347,'Foradil','Formoterol','Oral','Tabletas',_binary ''),(348,'Brovana','Arformoterol','Oral','Tabletas',_binary ''),(349,'Arcapta','Indacaterol','Oral','Tabletas',_binary ''),(350,'Clozaril','Clozapina','Oral','Tabletas',_binary ''),(351,'Haldol','Haloperidol','Oral','Tabletas',_binary ''),(352,'Seroquel','Quetiapina','Oral','Tabletas',_binary ''),(353,'Saphris','Asenapina','Oral','Tabletas',_binary ''),(354,'Fanapt','Iloperidona','Oral','Tabletas',_binary ''),(355,'Nozinan','Levomepromazina','Oral','Tabletas',_binary ''),(356,'Mirapex','Pramipexol','Oral','Tabletas',_binary ''),(357,'Desyrel','Trazodona','Oral','Tabletas',_binary ''),(358,'Ergomar','Ergotamina','Oral','Tabletas',_binary ''),(359,'Adriamycin','Doxorrubicina','Oral','Tabletas',_binary ''),(360,'Suprax','Cefixima','Oral','Tabletas',_binary ''),(361,'Dimetapp','Bromfeniramina','Oral','Tabletas',_binary ''),(362,'Blenoxane','Bleomicina','Oral','Tabletas',_binary ''),(363,'bromfeniramina','Butalbital','Oral','Tabletas',_binary ''),(364,'Dostinex','Cabergolina','Oral','Tabletas',_binary ''),(365,'Miacalcin','Calcitonina','Oral','Tabletas',_binary ''),(366,'Daivonex','Calcipotrieno','Oral','Tabletas',_binary ''),(367,'Campral','Campral','Oral','Tabletas',_binary ''),(368,'Capoten','Captopril','Oral','Tabletas',_binary ''),(369,'Miltown','Meprobamato','Oral','Tabletas',_binary ''),(370,'Erbitux','Cetuximab','Oral','Tabletas',_binary ''),(371,'Librium','Clordiazepoxido','Oral','Tabletas',_binary ''),(372,'Clorhexidina','Clorhexidina','Oral','Tabletas',_binary ''),(373,'Aralen','Cloroquina','Oral','Tabletas',_binary ''),(374,'Thalitone','Clortalidona','Oral','Tabletas',_binary ''),(375,'Choline Plus','Colina','Oral','Tabletas',_binary ''),(376,'Loprex','Ciclopirox','Oral','Tabletas',_binary ''),(377,'Vistide','Cidofovir','Oral','Tabletas',_binary ''),(378,'Pletal','Cilostozol','Oral','Tabletas',_binary ''),(379,'Tagamet','Cimetidina','Oral','Tabletas',_binary ''),(380,'Temovate','Clobetasona','Oral','Tabletas',_binary ''),(381,'Trabectedina','Yondelis','Oral','Tabletas',_binary ''),(382,'Cabazitaxel','Jevtana','Oral','Tabletas',_binary ''),(383,'Erdafitinibl','Balversa','Oral','Tabletas',_binary ''),(384,'Lurbinectedina','Zepzelca','Oral','Tabletas',_binary ''),(385,'Ribociclib','Kisqali','Oral','Tabletas',_binary ''),(386,'Inotuzumab Ozogamicina','Besponsa','Oral','Tabletas',_binary ''),(387,'Apalutamida','Erleada','Oral','Tabletas',_binary ''),(388,'Larotrectinib','Vitrakvi','Oral','Tabletas',_binary ''),(389,'Dacomitinib','Vizimpro','Oral','Tabletas',_binary ''),(390,'Elotuzumab','Empliciti','Oral','Tabletas',_binary ''),(391,'Olaparib','Lynparza','Oral','Tabletas',_binary ''),(392,'Pexidartinib','Turalio','Oral','Tabletas',_binary ''),(393,'Tucatinib','Tucaxen','Oral','Tabletas',_binary ''),(394,'Tisotumab Vedotin','Tivdak','Oral','Tabletas',_binary ''),(395,'Belzutifan','Welireg','Oral','Tabletas',_binary ''),(396,'Buspirona','Relax','Oral','Tabletas',_binary ''),(397,'Pralsetinib','Gavreto','Oral','Tabletas',_binary ''),(398,'Capmatinib','Tabrecta','Oral','Tabletas',_binary ''),(399,'Cariprazina','Reagila','Oral','Tabletas',_binary ''),(400,'Pregabalina','Lyrica','Oral','Tabletas',_binary ''),(401,'Amikacina','Amikacina','Oral','Tabletas',_binary ''),(402,'Aminofilina','Aminofilina','Oral','Tabletas',_binary ''),(403,'Clorhidrato de amiodarona','Amiodarona','Oral','Tabletas',_binary ''),(404,'Beclo-Asma','Beclometasona','Oral','Tabletas',_binary ''),(405,'Akineton','Biperideno','Oral','Tabletas',_binary ''),(406,'Dulcolaxo','Bisacodilo','Oral','Tabletas',_binary ''),(407,'Rocaltrol','Calcitriol','Oral','Tabletas',_binary ''),(408,'Tegretol','Carbamazepina','Oral','Tabletas',_binary ''),(409,'Cefalotina','Cefalotina','Oral','Tabletas',_binary ''),(410,'Velocef','Cefradina','Oral','Tabletas',_binary ''),(411,'Cipro','Ciprofloxacina','Oral','Tabletas',_binary ''),(412,'Tavist','Clemastina','Oral','Tabletas',_binary ''),(413,'Clarityne','Clorfeniramina','Oral','Tabletas',_binary ''),(414,'Lonseren','Pipotiazina','Oral','Tabletas',_binary ''),(415,'Inderal','Propranolol','Oral','Tabletas',_binary ''),(416,'Buto Asma','Salbutamol','Oral','Tabletas',_binary ''),(417,'Urbal','Sucralfato','Oral','Tabletas',_binary ''),(418,'Cusimolol','Timolol','Oral','Tabletas',_binary ''),(419,'Deprax','Trazodona','Oral','Tabletas',_binary ''),(420,'Manidon','Verapamilo','Oral','Tabletas',_binary ''),(421,'Acitretina','Acitretina','Oral','Tabletas',_binary ''),(422,'Amantadina','Amantadina','Oral','Tabletas',_binary ''),(423,'Ambrisentán','Ambrisentán','Oral','Tabletas',_binary ''),(424,'Anagrelida','Anagrelida','Oral','Tabletas',_binary ''),(425,'Almotripan','Almotripan','Oral','Tabletas',_binary ''),(426,'Armodafinilo','Armodafinilo','Oral','Tabletas',_binary ''),(427,'Bedaquinila','Bedaquinila','Oral','Tabletas',_binary ''),(428,'Benzidazol','Benzidazol','Oral','Tabletas',_binary ''),(429,'Betrixaban','Betrixaban','Oral','Tabletas',_binary ''),(430,'Bimatoprost','Bimatoprost','Oral','Tabletas',_binary ''),(431,'Bosetan','Bosetan','Oral','Tabletas',_binary ''),(432,'Brexpiprazol','Brexpiprazol','Oral','Tabletas',_binary ''),(433,'Brigatinib','Brigatinib','Oral','Tabletas',_binary ''),(434,'Brivaracetam','Brivaracetam','Oral','Tabletas',_binary ''),(435,'Brodalumab','Brodalumab','Oral','Tabletas',_binary ''),(436,'Cabazitaxel','Cabazitaxel','Oral','Tabletas',_binary ''),(437,'Cannabidiol','Cannabidiol','Oral','Tabletas',_binary ''),(438,'Caplacizumab','Caplacizumab','Oral','Tabletas',_binary ''),(439,'Cariprazina','Cariprazina','Oral','Tabletas',_binary ''),(440,'Ciclesonida','Ciclesonida','Oral','Tabletas',_binary ''),(441,'Arcabosa','Arcabosa','Oral','Tabletas',_binary ''),(442,'Zanaflex','Zanaflex','Oral','Tabletas',_binary ''),(443,'Afatinib','Afatinib','Oral','Tabletas',_binary ''),(444,'Agloteniotol','Agloteniotol','Oral','Tabletas',_binary ''),(445,'Alendronatina','Alendronatina','Oral','Tabletas',_binary ''),(446,'Actimmne','Actimmne','Oral','Tabletas',_binary ''),(447,'Chenodal','Chenodal','Oral','Tabletas',_binary ''),(448,'Vyera','Vyera','Oral','Tabletas',_binary ''),(449,'Mylalept','Mylalept','Oral','Tabletas',_binary ''),(450,'Soliris','Soliris','Oral','Tabletas',_binary ''),(451,'Sofosbuvir','Sofosbuvir','Oral','Tabletas',_binary ''),(452,'Ledipasvir','Ledipasvir','Oral','Tabletas',_binary ''),(453,'Cinryze','Cinryze','Oral','Tabletas',_binary ''),(454,'Naglazyme','Naglazyme','Oral','Tabletas',_binary ''),(455,'Avast in','Avast in','Oral','Tabletas',_binary ''),(456,'Lucentis','Lucentis','Oral','Tabletas',_binary ''),(457,'Adiro','Adiro','Oral','Tabletas',_binary ''),(458,'Nolotil','Nolotil','Oral','Tabletas',_binary ''),(459,'Trankimazin','Trankimazin','Oral','Tabletas',_binary ''),(460,'Benzoclazol','Benzoclazol','Oral','Tabletas',_binary '');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_medicamentos_insert` AFTER INSERT ON `medicamentos` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (
   DEFAULT, "medicamentos", user(), 
   "Insert",
   CONCAT_WS(" ","Se ha agregado un nuevo medicamento con el ID:",
   NEW.id,", con los siguientes datos; NOMBRE_COMERCIAL:",
   NEW.nombre_comercial,", NOMBRE_GENERICO:",NEW.nombre_generico, 
   ",VIA_ADMINISTRACION:", NEW.via_administracion, ", PRESENTACION:",
   NEW.presentacion), 
   now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_medicamentos_update` AFTER UPDATE ON `medicamentos` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (
   DEFAULT, "medicamentos", user(), 
   "Update",
   CONCAT_WS(" ","Se ha modificado el medicamento con  ID:",
   OLD.id,", con los siguientes cambios; NOMBRE_COMERCIAL:",
   OLD.nombre_comercial,"-", NEW.nombre_comercial, ", NOMBRE_GENERICO:",
   OLD.nombre_generico,"-",NEW.nombre_generico, ", VIA_ADMINISTRACION:", 
   OLD.via_administracion,"-",NEW.via_administracion, ", PRESENTACION:",
   OLD.presentacion,"-",NEW.presentacion), 
   now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_medicamentos_delete` AFTER DELETE ON `medicamentos` FOR EACH ROW BEGIN
INSERT INTO bitacora VALUES (
   DEFAULT, "medicamentos", user(), 
   "Delete",
   CONCAT_WS(" ","Se eliminado los datos del medicamento con ID:",
   OLD.id),now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `Persona_ID` int unsigned NOT NULL,
  `NSS` varchar(15) DEFAULT NULL,
  `Tipo_Seguro` varchar(50) NOT NULL,
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_UltimaCita` datetime NOT NULL,
  `Estatus_Medico` varchar(100) DEFAULT 'Normal',
  `Estatus_Vida` enum('Vivo','Finado','Coma','Vegetativo') NOT NULL DEFAULT 'Vivo',
  `Estatus` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Persona_ID`),
  UNIQUE KEY `NSS_UNIQUE` (`NSS`),
  CONSTRAINT `fk_Persona_2` FOREIGN KEY (`Persona_ID`) REFERENCES `personas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pacientes_AFTER_INSERT` AFTER INSERT ON `pacientes` FOR EACH ROW BEGIN
    DECLARE nombre_persona VARCHAR(255);
    DECLARE estatus_vida VARCHAR(15);

    -- Obtener el nombre del paciente recién insertado
    SET nombre_persona = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                         FROM personas p
                         WHERE p.id = NEW.Persona_ID);

    -- Obtener el estado de vida del paciente
    SET estatus_vida = NEW.Estatus_Vida;

    -- Registrar en la bitácora la inserción de un nuevo paciente
    INSERT INTO bitacora VALUES (
       DEFAULT, 'pacientes', USER(), 'INSERT',
       CONCAT_WS(" ", 'Se ha agregado un nuevo PACIENTE con el ID: ', NEW.Persona_ID,
                         ', Nombre: ', nombre_persona,
                         ', NSS: ', NEW.NSS,
                         ', Tipo de Seguro: ', NEW.Tipo_Seguro,
                         ', Fecha de Registro: ', NEW.Fecha_Registro,
                         ', Fecha Última Cita: ', NEW.Fecha_UltimaCita,
                         ', Estatus Médico: ', NEW.Estatus_Medico,
                         ', Estatus Vida: ', estatus_vida),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pacientes_AFTER_UPDATE` AFTER UPDATE ON `pacientes` FOR EACH ROW BEGIN
    DECLARE nombre_persona VARCHAR(255);
    DECLARE estatus_vida VARCHAR(15);

    -- Obtener el nombre del paciente actualizado
    SET nombre_persona = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                         FROM personas p
                         WHERE p.id = NEW.Persona_ID);

    -- Obtener el estado de vida del paciente
    SET estatus_vida = NEW.Estatus_Vida;

    -- Registrar en la bitácora la actualización de un paciente
    INSERT INTO bitacora VALUES (
       DEFAULT, 'pacientes', USER(), 'UPDATE',
       CONCAT_WS(" ", 'Se ha actualizado los datos del PACIENTE con el ID: ', NEW.Persona_ID,
                         ', Nuevo nombre: ', nombre_persona,
                         ', Nuevo NSS: ', NEW.NSS,
                         ', Nuevo Tipo de Seguro: ', NEW.Tipo_Seguro,
                         ', Nueva Fecha de Última Cita: ', NEW.Fecha_UltimaCita,
                         ', Nuevo Estatus Médico: ', NEW.Estatus_Medico,
                         ', Nuevo Estatus Vida: ', estatus_vida),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pacientes_AFTER_DELETE` AFTER DELETE ON `pacientes` FOR EACH ROW BEGIN
    DECLARE nombre_persona VARCHAR(255);

    -- Obtener el nombre del paciente eliminado
    SET nombre_persona = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                         FROM personas p
                         WHERE p.id = OLD.Persona_ID);

    -- Registrar en la bitácora la eliminación de un paciente
    INSERT INTO bitacora VALUES (
       DEFAULT, 'pacientes', USER(), 'DELETE',
       CONCAT_WS(" ", 'Se ha eliminado el PACIENTE con el ID:', OLD.Persona_ID,
                         ', Nombre:', nombre_persona),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personal_medico`
--

DROP TABLE IF EXISTS `personal_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_medico` (
  `Persona_ID` int unsigned NOT NULL,
  `Departamento_ID` int unsigned NOT NULL,
  `Especialidad` varchar(50) DEFAULT NULL,
  `Tipo` enum('Médico','Enfermero','Administrativo','Directivo','Apoyo','Residente','Interno') NOT NULL,
  `Cedula_Profesional` int(8) unsigned zerofill DEFAULT NULL,
  `Estatus` enum('Activo','Inactivo','Jubilado','Permiso') NOT NULL DEFAULT 'Activo',
  `Fecha_Contratacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Terminacion_Contrato` datetime DEFAULT NULL,
  PRIMARY KEY (`Persona_ID`),
  UNIQUE KEY `Cedula_Profesional_UNIQUE` (`Cedula_Profesional`),
  KEY `fk_area_medica` (`Departamento_ID`),
  CONSTRAINT `fk_departamento_2` FOREIGN KEY (`Departamento_ID`) REFERENCES `departamentos` (`ID`),
  CONSTRAINT `fk_personas_1` FOREIGN KEY (`Persona_ID`) REFERENCES `personas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_medico`
--

LOCK TABLES `personal_medico` WRITE;
/*!40000 ALTER TABLE `personal_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_medico` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `personal_medico_AFTER_INSERT` AFTER INSERT ON `personal_medico` FOR EACH ROW BEGIN
    DECLARE nombre_persona VARCHAR(255);
    DECLARE nombre_depto VARCHAR(100);
    
    -- Obtener el nombre del personal médico recién insertado
    SET nombre_persona = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                         FROM personas p
                         WHERE p.id = NEW.Persona_ID);

    -- Obtener el nombre del departamento del personal médico
    SET nombre_depto = (SELECT Nombre
                        FROM departamentos
                        WHERE id = NEW.Departamento_ID);

    -- Registrar en la bitácora la inserción de nuevo personal médico
    INSERT INTO bitacora VALUES (
       DEFAULT, 'personal_medico', USER(), 'INSERT',
       CONCAT_WS(" ", 'Se ha agregado nuevo PERSONAL MÉDICO con el ID: ', NEW.Persona_ID,
                         ', Nombre: ', nombre_persona,
                         ', Departamento: ', nombre_depto,
                         ', Especialidad: ', NEW.Especialidad,
                         ', Tipo: ', NEW.Tipo,
                         ', Cedula Profesional: ', NEW.Cedula_Profesional,
                         ', Estatus: ', NEW.Estatus,
                         ', Fecha Contratación: ', NEW.Fecha_Contratacion,
                         ', Fecha Término Contrato: ', NEW.Fecha_Terminacion_Contrato),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `personal_medico_AFTER_UPDATE` AFTER UPDATE ON `personal_medico` FOR EACH ROW BEGIN
    DECLARE nombre_persona_old VARCHAR(255);
    DECLARE nombre_persona_new VARCHAR(255);
    DECLARE nombre_depto_old VARCHAR(100);
    DECLARE nombre_depto_new VARCHAR(100);
    
    -- Obtener el nombre del personal médico antes del update
    SET nombre_persona_old = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                              FROM personas p
                              WHERE p.id = OLD.Persona_ID);

    -- Obtener el nombre del personal médico después del update
    SET nombre_persona_new = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                              FROM personas p
                              WHERE p.id = NEW.Persona_ID);

    -- Obtener el nombre del departamento antes del update
    SET nombre_depto_old = (SELECT Nombre
                            FROM departamentos
                            WHERE id = OLD.Departamento_ID);

    -- Obtener el nombre del departamento después del update
    SET nombre_depto_new = (SELECT Nombre
                            FROM departamentos
                            WHERE id = NEW.Departamento_ID);

    -- Registrar en la bitácora la actualización del personal médico
    INSERT INTO bitacora VALUES (
       DEFAULT, 'personal_medico', USER(), 'UPDATE',
       CONCAT_WS(" ", 'Se ha actualizado el PERSONAL MÉDICO con el ID: ', NEW.Persona_ID,
                         ', Nuevo nombre: ', nombre_persona_new,
                         ', Nuevo Departamento: ', nombre_depto_new,
                         ', Nueva Especialidad: ', NEW.Especialidad,
                         ', Nuevo Tipo: ', NEW.Tipo,
                         ', Nueva Cedula Profesional: ', NEW.Cedula_Profesional,
                         ', Nuevo Estatus: ', NEW.Estatus,
                         ', Nueva Fecha Contratación: ', NEW.Fecha_Contratacion,
                         ', Nueva Fecha Término Contrato: ', NEW.Fecha_Terminacion_Contrato),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `personal_medico_AFTER_DELETE` AFTER DELETE ON `personal_medico` FOR EACH ROW BEGIN
    DECLARE nombre_persona VARCHAR(255);
    DECLARE nombre_depto VARCHAR(100);
    
    -- Obtener el nombre del personal médico eliminado
    SET nombre_persona = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                         FROM personas p
                         WHERE p.id = OLD.Persona_ID);

    -- Obtener el nombre del departamento del personal médico eliminado
    SET nombre_depto = (SELECT Nombre
                        FROM departamentos
                        WHERE id = OLD.Departamento_ID);

    -- Registrar en la bitácora la eliminación del personal médico
    INSERT INTO bitacora VALUES (
       DEFAULT, 'personal_medico', USER(), 'DELETE',
       CONCAT_WS(" ", 'Se ha eliminado el PERSONAL MÉDICO con el ID:', OLD.Persona_ID,
                         ', Nombre:', nombre_persona,
                         ', Departamento:', nombre_depto),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(20) DEFAULT NULL,
  `Nombre` varchar(80) NOT NULL,
  `Primer_Apellido` varchar(80) NOT NULL,
  `Segundo_Apellido` varchar(80) DEFAULT NULL,
  `CURP` varchar(18) DEFAULT NULL,
  `Genero` enum('M','F','N/B') NOT NULL,
  `Grupo_Sanguineo` enum('A','B','AB','O') NOT NULL,
  `Tipo_Sanguineo` enum('+','-') NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Estatus` bit(1) NOT NULL DEFAULT b'1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CURP_UNIQUE` (`CURP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `personas_AFTER_INSERT` AFTER INSERT ON `personas` FOR EACH ROW BEGIN
    DECLARE nombre_persona VARCHAR(255);

    -- Obtener el nombre de la persona recién insertada
    SET nombre_persona = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                         FROM personas p
                         WHERE p.id = NEW.ID);

    -- Registrar en la bitácora la inserción de una nueva persona
    INSERT INTO bitacora VALUES (
       DEFAULT, 'personas', USER(), 'INSERT',
       CONCAT_WS(" ", 'Se ha agregado una nueva PERSONA con el ID: ', NEW.ID,
                         ', Nombre: ', nombre_persona,
                         ', Titulo: ', NEW.Titulo,
                         ', Primer Apellido: ', NEW.Primer_Apellido,
                         ', Segundo Apellido: ', NEW.Segundo_Apellido,
                         ', CURP: ', NEW.CURP,
                         ', Genero: ', NEW.Genero,
                         ', Grupo Sanguineo: ', NEW.Grupo_Sanguineo,
                         ', Tipo Sanguineo: ', NEW.Tipo_Sanguineo,
                         ', Fecha de Nacimiento: ', NEW.Fecha_Nacimiento,
                         ', Estatus: ', NEW.Estatus),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `personas_AFTER_UPDATE` AFTER UPDATE ON `personas` FOR EACH ROW BEGIN
    DECLARE nombre_persona_old VARCHAR(255);
    DECLARE nombre_persona_new VARCHAR(255);

    -- Obtener el nombre de la persona antes y después de la actualización
    SET nombre_persona_old = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                              FROM personas p
                              WHERE p.id = OLD.ID);
    
    SET nombre_persona_new = (SELECT CONCAT_WS(" ", p.Nombre, p.Primer_Apellido, p.Segundo_Apellido)
                              FROM personas p
                              WHERE p.id = NEW.ID);

    -- Registrar en la bitácora la actualización de una persona
    INSERT INTO bitacora VALUES (
       DEFAULT, 'personas', USER(), 'UPDATE',
       CONCAT_WS(" ", 'Se ha actualizado los datos de la PERSONA con el ID: ', OLD.ID,
                         ', Nombre Antiguo: ', nombre_persona_old,
                         ', Nombre Nuevo: ', nombre_persona_new,
                         ', Titulo: ', NEW.Titulo,
                         ', Primer Apellido: ', NEW.Primer_Apellido,
                         ', Segundo Apellido: ', NEW.Segundo_Apellido,
                         ', CURP: ', NEW.CURP,
                         ', Genero: ', NEW.Genero,
                         ', Grupo Sanguineo: ', NEW.Grupo_Sanguineo,
                         ', Tipo Sanguineo: ', NEW.Tipo_Sanguineo,
                         ', Fecha de Nacimiento: ', NEW.Fecha_Nacimiento,
                         ', Estatus: ', NEW.Estatus),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `personas_AFTER_DELETE` AFTER DELETE ON `personas` FOR EACH ROW BEGIN


    -- Registrar en la bitácora la eliminación de una persona
    INSERT INTO bitacora VALUES (
       DEFAULT, 'personas', USER(), 'DELETE',
       CONCAT_WS(" ", 'Se ha eliminado la PERSONA con el ID:', OLD.ID),
       NOW()
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `receta_medica`
--

DROP TABLE IF EXISTS `receta_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta_medica` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `CITA_ID` int unsigned NOT NULL,
  `FECHA_HORA_REGISTRO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ESTATUS` enum('Solicitada','Subrogada','Abastecida Totalmente','Parcialmente Abastecida','Cancelada') DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_cita_medica` (`CITA_ID`),
  CONSTRAINT `fk_cita_medica` FOREIGN KEY (`CITA_ID`) REFERENCES `citas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_medica`
--

LOCK TABLES `receta_medica` WRITE;
/*!40000 ALTER TABLE `receta_medica` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta_medica_detalle`
--

DROP TABLE IF EXISTS `receta_medica_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta_medica_detalle` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `receta_id` int unsigned NOT NULL,
  `MEDICAMENTO_ID` int unsigned NOT NULL,
  `DOSIS` varchar(1024) NOT NULL,
  `RECOMENDACIONES` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_medicamento` (`MEDICAMENTO_ID`),
  KEY `fk_receta` (`receta_id`),
  CONSTRAINT `fk_medicamento` FOREIGN KEY (`MEDICAMENTO_ID`) REFERENCES `medicamentos` (`ID`),
  CONSTRAINT `fk_receta` FOREIGN KEY (`receta_id`) REFERENCES `receta_medica` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_medica_detalle`
--

LOCK TABLES `receta_medica_detalle` WRITE;
/*!40000 ALTER TABLE `receta_medica_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `receta_medica_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_cirugias`
--

DROP TABLE IF EXISTS `vw_cirugias`;
/*!50001 DROP VIEW IF EXISTS `vw_cirugias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cirugias` AS SELECT 
 1 AS `id_cirugia`,
 1 AS `Persona_id`,
 1 AS `medico_id`,
 1 AS `departamento_id`,
 1 AS `tipo`,
 1 AS `fecha`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cirugias_por_dia`
--

DROP TABLE IF EXISTS `vw_cirugias_por_dia`;
/*!50001 DROP VIEW IF EXISTS `vw_cirugias_por_dia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cirugias_por_dia` AS SELECT 
 1 AS `Fecha_de_cirugia`,
 1 AS `Total_de_cirugias`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_datos_pacientes`
--

DROP TABLE IF EXISTS `vw_datos_pacientes`;
/*!50001 DROP VIEW IF EXISTS `vw_datos_pacientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_datos_pacientes` AS SELECT 
 1 AS `Nombre completo`,
 1 AS `Edad`,
 1 AS `Tipo de Sangre`,
 1 AS `NSS`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_duracion_de_cirugias_por_fecha`
--

DROP TABLE IF EXISTS `vw_duracion_de_cirugias_por_fecha`;
/*!50001 DROP VIEW IF EXISTS `vw_duracion_de_cirugias_por_fecha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_duracion_de_cirugias_por_fecha` AS SELECT 
 1 AS `Fecha`,
 1 AS `Duracion_Operacion`,
 1 AS `Tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pacientes_por_edad`
--

DROP TABLE IF EXISTS `vw_pacientes_por_edad`;
/*!50001 DROP VIEW IF EXISTS `vw_pacientes_por_edad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pacientes_por_edad` AS SELECT 
 1 AS `Edad`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pacientes_por_genero`
--

DROP TABLE IF EXISTS `vw_pacientes_por_genero`;
/*!50001 DROP VIEW IF EXISTS `vw_pacientes_por_genero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pacientes_por_genero` AS SELECT 
 1 AS `genero`,
 1 AS `TotalPacientes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pacientes_por_rango_edad`
--

DROP TABLE IF EXISTS `vw_pacientes_por_rango_edad`;
/*!50001 DROP VIEW IF EXISTS `vw_pacientes_por_rango_edad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pacientes_por_rango_edad` AS SELECT 
 1 AS `Rango`,
 1 AS `F`,
 1 AS `M`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_resumen_horarios_por_tipoyfecha`
--

DROP TABLE IF EXISTS `vw_resumen_horarios_por_tipoyfecha`;
/*!50001 DROP VIEW IF EXISTS `vw_resumen_horarios_por_tipoyfecha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_resumen_horarios_por_tipoyfecha` AS SELECT 
 1 AS `Fecha`,
 1 AS `Tipo`,
 1 AS `NumeroProcedimientos`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'bd_equipo'
--

--
-- Dumping routines for database 'bd_equipo'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_bandera_porcentaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_bandera_porcentaje`(v_porcentaje INT) RETURNS int
    DETERMINISTIC
BEGIN
   /* Declaración de una variable con un valor aleatorio de entre 0 y 100*/
   DECLARE v_valor INT DEFAULT (fn_numero_aleatorio_rangos(0,100));
   /* Declaración de una variable booleana con valor inicial de falso */
   DECLARE v_bandera BOOLEAN DEFAULT false;
   
   IF v_valor <= v_porcentaje THEN 
      SET v_bandera = true;
   END IF;
   RETURN v_bandera;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calcula_edad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcula_edad`(v_fecha_nacimiento DATE) RETURNS int
    DETERMINISTIC
BEGIN
RETURN TIMESTAMPDIFF(YEAR, v_fecha_nacimiento, CURDATE());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calcula_edad_especifica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcula_edad_especifica`(fecha_nacimiento DATE) RETURNS varchar(200) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE fecha_actual DATE;
    DECLARE anios INT;
    DECLARE meses INT;
    DECLARE semanas INT;
    DECLARE dias INT;
    DECLARE edad VARCHAR(200);

    -- Obtenemos la fecha actual
    SET fecha_actual = CURDATE();

    -- Calculamos la diferencia en años, meses, semanas y días
    SET anios = TIMESTAMPDIFF(YEAR, fecha_nacimiento, fecha_actual);
    SET meses = TIMESTAMPDIFF(MONTH, fecha_nacimiento, fecha_actual) - (12 * anios);
    SET dias = DATEDIFF(fecha_actual, DATE_ADD(fecha_nacimiento, INTERVAL anios YEAR) + INTERVAL meses MONTH);
    SET semanas = dias / 7;
    SET dias = dias % 7;

    -- Construimos el mensaje de la edad
    SET edad = CONCAT_WS(" ",anios, 'años, ', meses, 'meses, ', semanas, 'semanas y ', dias, 'días');

	RETURN edad;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_calcula_edad_fecha_especifica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcula_edad_fecha_especifica`(v_fecha_nacimiento DATE, v_fechareferencia DATE) RETURNS int
    DETERMINISTIC
BEGIN
RETURN TIMESTAMPDIFF(YEAR, v_fecha_nacimiento,v_fechareferencia);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_elimina_acentos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_elimina_acentos`(textvalue varchar(100)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
begin
set @textvalue = textvalue;
set @withaccents = 'ŠšŽžÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜÝŸÞàáâãäåæçèéêëìíîïñòóôõöøùúûüýÿþƒ';
set @withoutaccents = 'SsZzAAAAAAACEEEEIIIINOOOOOOUUUUYYBaaaaaaaceeeeiiiinoooooouuuuyybf';
set @count = length(@withaccents);
while @count > 0 do
    set @textvalue = replace(@textvalue, substring(@withaccents, @count, 1), substring(@withoutaccents, @count, 1));
    set @count = @count - 1;
end while;
set @special = '!@#$%¨&*()_+=§¹²³£¢¬"`´{[^~}]<,>.:;?/°ºª+*|\\''';
set @count = length(@special);
while @count > 0 do
    set @textvalue = replace(@textvalue, substring(@special, @count, 1), '');
    set @count = @count - 1;
end while;
return @textvalue;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_fechahora_aleatoria_rangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_fechahora_aleatoria_rangos`( fechaInicio DATE, fechaFin DATE, horaInicio TIME, horaFin TIME) RETURNS datetime
    DETERMINISTIC
BEGIN
    DECLARE fechaAleatoria DATE;
    DECLARE horaEntrada TIME;
    DECLARE horaSalida TIME;
    DECLARE horaRegistro TIME;
    DECLARE fechaHoraGenerada DATETIME;
    
   -- Generar fecha aleatoria dentro del rango dado
    SET fechaAleatoria = DATE_ADD(fechaInicio, INTERVAL FLOOR(RAND() * (DATEDIFF(fechaFin, fechaInicio) + 1)) DAY);

    -- Generar hora de registro aleatoria dentro del rango de hora de entrada y salida
    SET horaRegistro = ADDTIME(horaInicio, SEC_TO_TIME(FLOOR(RAND() * TIME_TO_SEC(TIMEDIFF(horaFin, horaInicio)))));
    
    SET fechaHoraGenerada = CONCAT(fechaAleatoria," ",horaRegistro);
  
RETURN fechaHoraGenerada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_generar_fecha_aleatoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_generar_fecha_aleatoria`(fechaInicio DATE, fechaFin DATE) RETURNS date
    DETERMINISTIC
BEGIN

 DECLARE random_days INT;
    DECLARE fecha_aleatoria DATE;

    -- Calcular el número de días entre las fechas de inicio y fin
    DECLARE days_diff INT;
    SET days_diff = DATEDIFF(fechaFin, fechaInicio);

    -- Generar un número aleatorio entre 0 y la diferencia de días
    SET random_days = FLOOR(RAND() * (days_diff + 1));

    -- Sumar el número aleatorio de días a la fecha de inicio
    SET fecha_aleatoria = DATE_ADD(fechaInicio, INTERVAL random_days DAY);

    RETURN fecha_aleatoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_apellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_apellido`() RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_apellido_generado VARCHAR(50) DEFAULT NULL;
    SET v_apellido_generado = ELT(fn_numero_aleatorio_rangos(1,100), 
			"Álvarez","Briones","Cruz","Díaz","Estrada", "Fuentes","Gayosso","Hernández","Ibarra","Jiménez",
			"Kuno","López","Martínez","Ortíz","Paredes", "Quiróz","Ramírez","Sampayo","Téllez","Urbina",
			"Vargas","Wurtz","Ximénez","Yañez","Zapata", "García","González","Pérez","Rodríguez","Sánchez",
            "Romero","Gómez","Flores","Morales","Vázquez", "Reyes","Torres","Gutiérrez","Ruíz","Mendoza",
            "Aguilar","Moreno","Castillo","Méndez","Chávez", "Rivera","Juárez","Ramos","Domínguez","Herrera",
            "Medina","Castro","Vargas","Guzmán","Velazquez", "Muñoz","Rojas","de la Cruz","Contreras","Salazar",
            "Luna","Ortega","Santiago","Guerrero","Bautista", "Cortés","Soto","Alvarado","Espinoza","Lara",
            "Ávila","Ríos","Cervantes","Silva","Delgado", "Vega","Márquez","Sandoval","Carrillo","León",
            "Mejía","Solís","Rosas","Valdéz","Nuñez", "Campos","Santos","Camacho","Navarro","Peña",
            "Maldonado","Rosales","Acosta","Miranda","Trejo", "Valencia","Nava","Pacheco","Huerta","Padilla");
            
    
RETURN v_apellido_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_cedula_profesional` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_cedula_profesional`() RETURNS int
    DETERMINISTIC
BEGIN
       DECLARE v_cedula_generada INT(8) DEFAULT 0;
       DECLARE v_bandera_cedula_valida BOOLEAN DEFAULT FALSE;
       
       WHILE NOT v_bandera_cedula_valida DO 
			SET v_cedula_generada = fn_numero_aleatorio_rangos(1,99999999);
            IF (SELECT COUNT(*) FROM personal_medico WHERE cedula_profesional = v_cedula_generada) = 0 THEN
				SET v_bandera_cedula_valida = TRUE;
            END IF;
       END WHILE;
RETURN v_cedula_generada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_curp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_curp`(v_nombre VARCHAR(60), v_primer_apellido VARCHAR(45) ,v_segundo_apellido VARCHAR(45), 
															v_fecha_nacimiento DATE, v_genero CHAR(1), v_entidad_federativa VARCHAR(45)) RETURNS char(18) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
     DECLARE v_curp CHAR(18) DEFAULT NULL;
     DECLARE v_sexo CHAR(1) DEFAULT NULL;
     DECLARE v_efn  CHAR(2) DEFAULT NULL;  /*Entidad Federativa de Nacimiento*/
     DECLARE v_dv   CHAR(2) DEFAULT NULL;  /* Dígito Verificador */
     IF v_genero = "M" THEN 
        SET v_sexo = "H";
	 ELSEIF v_genero = "F" THEN 
        SET v_sexo = "M";
	 END IF;
     SET v_nombre = fn_elimina_acentos(v_nombre);
     SET v_primer_apellido = fn_elimina_acentos(v_primer_apellido);
     SET v_segundo_apellido = fn_elimina_acentos(v_segundo_apellido);
     IF v_entidad_federativa = "Aguascalientes" THEN
	    SET v_efn = "AS";
	 ELSEIF v_entidad_federativa = "Baja California" THEN
		SET v_efn = "BC";
	 ELSEIF v_entidad_federativa = "Baja California Sur" THEN
		SET v_efn = "BS";
     ELSEIF v_entidad_federativa = "Campeche" THEN
		SET v_efn = "CC";
	 ELSEIF v_entidad_federativa = "Coahuila" THEN
		SET v_efn = "CL";
	 ELSEIF v_entidad_federativa = "Colima" THEN
		SET v_efn = "CM";
	 ELSEIF v_entidad_federativa = "Chiapas" THEN
		SET v_efn = "CS";
     ELSEIF v_entidad_federativa = "Chihuahua" THEN
		SET v_efn = "CH";
	 ELSEIF v_entidad_federativa = "Distrito Federal" THEN
		SET v_efn = "DF";
     ELSEIF v_entidad_federativa = "Durango" THEN
		SET v_efn = "DG";
	 ELSEIF v_entidad_federativa = "Guanajuato" THEN
		SET v_efn = "GT";
	 ELSEIF v_entidad_federativa = "Guerrero" THEN
		SET v_efn = "GR";
     ELSEIF v_entidad_federativa = "Hidalgo" THEN
		SET v_efn = "HG";
	 ELSEIF v_entidad_federativa = "Jalisco" THEN
		SET v_efn = "JC";
     ELSEIF v_entidad_federativa = "México" THEN
		SET v_efn = "MC";
	 ELSEIF v_entidad_federativa = "Michoacán" THEN
		SET v_efn = "MN";
	 ELSEIF v_entidad_federativa = "Morelos" THEN
		SET v_efn = "MS";
     ELSEIF v_entidad_federativa = "Nayarit" THEN
		SET v_efn = "NT";
	 ELSEIF v_entidad_federativa = "Nuevo León" THEN
		SET v_efn = "NL";
     ELSEIF v_entidad_federativa = "Oaxaca" THEN
		SET v_efn = "OC";
     ELSEIF v_entidad_federativa = "Puebla" THEN
		SET v_efn = "PL";
	 ELSEIF v_entidad_federativa = "Querétaro" THEN
		SET v_efn = "QT";
	 ELSEIF v_entidad_federativa = "Quintana Roo" THEN
		SET v_efn = "QR";
     ELSEIF v_entidad_federativa = "San Luis Potosí" THEN
		SET v_efn = "SP";
	 ELSEIF v_entidad_federativa = "Sinaloa" THEN
		SET v_efn = "SL";
     ELSEIF v_entidad_federativa = "Sonora" THEN
		SET v_efn = "SR";
     ELSEIF v_entidad_federativa = "Tabasco" THEN
		SET v_efn = "TC";
	 ELSEIF v_entidad_federativa = "Tamaulipas" THEN
		SET v_efn = "TS";
     ELSEIF v_entidad_federativa = "Tlaxcala" THEN
		SET v_efn = "TL";
	 ELSEIF v_entidad_federativa = "Veracruz" THEN
		SET v_efn = "VZ";
     ELSEIF v_entidad_federativa = "Yucatán" THEN
		SET v_efn = "YN";   
     ELSEIF v_entidad_federativa = "Zacatecas" THEN
		SET v_efn = "ZS";
     ELSEIF v_entidad_federativa = "Nacido en el Extranjero" THEN
		SET v_efn = "NE"; 
	 END IF;
     SET v_curp = CONCAT(UPPER(SUBSTR(v_primer_apellido,1,1)), fn_primer_vocalinterna(v_primer_apellido),
						 UPPER(SUBSTR(v_segundo_apellido,1,1)), UPPER(SUBSTR(v_nombre,1,1)), SUBSTR(year(v_fecha_nacimiento),3,2), 
                         LPAD(MONTH(v_fecha_nacimiento),2,'0'), LPAD(DAY(v_fecha_nacimiento),2,'0'), v_sexo, v_efn, 
                         fn_primer_consonanteinterna(v_primer_apellido), fn_primer_consonanteinterna(v_segundo_apellido), fn_primer_consonanteinterna(v_nombre));
     SET v_dv =  LPAD((SELECT COUNT(*) FROM personas WHERE curp like CONCAT(v_curp, "%")),2,'0');
     SET v_curp = CONCAT(v_curp, v_dv);
RETURN v_curp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_especialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_especialidad`() RETURNS varchar(60) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
 DECLARE especialidad_generada VARCHAR(60) DEFAULT NULL;
 SET especialidad_generada  = ELT(FLOOR(1 + RAND() * 50), 
            "Alergología", "Anestesiología", "Cardiología", "Gastroenterología", "Endocrinología ", "Geriatría", "Hematología y Hemoterapia",
            "Hidrología Médica", "Infectología", "Medicina Aeroespacial", "Medicina del Deporte", "Medicina del Trabajo", "Medicina de Urgencias",
            "Medicina Familiar y Comunitaria", "Medicina Física y Rehabilitación", "Medicina Intensiva", "Medicina Interna", "Medicina Legal y Forense",
            "Medicina Preventiva y Salud Pública", "Nefrología", "Neumología", "Neurología", "Nutriología", "Odontología", "Oftalmología", "Oncología Médica",
            "Oncología Radioterápica","Otorrinolaringología", "Pediatría", "Proctología", "Psiquiatría", "Rehabilitación", "Reumatología", "Traumatología",
            "Toxicología", "Urología", "Cirugía Cardiovascular", "Cirugía General", "Cirugía Oral y Maxilofacial", "Cirugía Ortopédica","Traumatología",
            "Cirugía Pediátrica", "Cirugía Plástica, Estética y Reparadora", "Cirugía Torácica", "Neurocirugía", "Angiología y Cirugía Vascular", "Dermatología Médico-Quirúrgica y Venereología",
            "Estomatología", "Ginecología y Obstetricia", "Oftalmología", "Urología", "Análisis Clínicos", "Anatomía Patológica",
            "Bioquímica Clínica", "Farmacología Clínica", "Genética Médica", "Inmunología" , "Medicina Nuclear", "Microbiología y Parasitología", "Neurofisiología Clínica",
            "Radiología");
RETURN especialidad_generada ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_fecha_nacimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_fecha_nacimiento`(fecha_inicio DATE, fecha_fin DATE) RETURNS date
    DETERMINISTIC
BEGIN
    DECLARE min_dias INT;
    DECLARE max_dias INT;
    DECLARE dias_aleatorios INT;
    DECLARE fecha_aleatoria DATE;

    SET min_dias = DATEDIFF(fecha_inicio, '1900-01-01');
    SET max_dias = DATEDIFF(fecha_fin, '1900-01-01');
    SET dias_aleatorios = fn_numero_aleatorio_rangos(min_dias, max_dias);
    SET fecha_aleatoria = DATE_ADD('1900-01-01', INTERVAL dias_aleatorios DAY);

    RETURN fecha_aleatoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre`(v_genero CHAR(1)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombre_generado VARCHAR(50) DEFAULT NULL;
    DECLARE v_nombre2_generado VARCHAR(50) DEFAULT NULL;    

    DECLARE v_bandera_nombrecompuesto BOOLEAN DEFAULT (fn_bandera_porcentaje(35));
    
   	SET v_nombre_generado = fn_genera_nombre_simple(v_genero);
    
    IF v_bandera_nombrecompuesto THEN 
		WHILE v_nombre2_generado IS NULL OR v_nombre2_generado = v_nombre_generado DO
             SET v_nombre2_generado = fn_genera_nombre_simple(v_genero);
        END WHILE;
        SET v_nombre_generado = CONCAT(v_nombre_generado," ", v_nombre2_generado);
	END IF;
    
    RETURN v_nombre_generado;
RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre_simple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre_simple`(v_genero CHAR(1)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_nombre_generado VARCHAR(60) DEFAULT NULL;
    IF v_genero = 'M' THEN 
		SET v_nombre_generado = ELT( fn_numero_aleatorio_rangos(1,255), "Aarón", "Abel", "Abelardo", "Abraham", "Adalberto",
		"Adán", "Adolfo","Adrián","Agustín","Alán", "Alberto","Aldo","Alejandro","Alfonso","Alfredo",
        "Alonso","Álvaro","Amado","Andrés","Ángel","Anselmo","Antonio","Apolinar","Ariel","Aristeo",
        "Armando", "Arnoldo","Arnulfo","Artemio","Arturo","Augusto", "Aureliano", "Aurelio", "Baltazar","Benito",
        "Benjamin","Bernabe","Bernardino","Bernardo","Candelario","Candido","Carlos", "Carmelo", "Cecilio", "César",
        "Christian","Cirilo","Claudio","Clemente","Concepción","Constantino","Cristian","Cristobal", "Cruz","Cuauhtémoc",
        "Dagoberto", "Damián","Daniel","Dario","David","Delfino","Demetrio","Diego","Domingo","Edgar",
        "Edgardo","Edmundo","Eduardo","Edwin","Efrain","Efrén","Eleazar","Elías","Eligio","Eliseo",
        "Eloy","Emiliano","Emilio","Emmanuel","Enrique","Erasmo","Eric","Erick","Erik","Ernesto",
        "Esteban","Eugenio","Eusebio","Evaristo","Everardo","Ezequiel","Fabián","Faustino","Fausto","Federico",
        "Feliciano","Felipe","Froylan", "Félix","Fermín","Fernando","Fidel","Filiberto","Florencio","Florentino",
        "Fortino","Francisco","Fredy","Gabino","Gabriel","Gamaliel","Genaro","Gerardo","Germán","Gilberto",
        "Gildardo","Gonzálo","Gregorio","Guadalupe","Guillermo","Gustavo","Héctor","Heriberto","Hernán","Hilario",
        "Hipólito","Homero","Horacio","Hugo","Humberto","Ignacio","Isaac","Irvin", "Isaías","Isidro",
        "Ismael","Israel","Ivan","Jacinto","Jacobo","Jaime","Javier","Jeronimo","Jesús","Joaquín",
        "Joel","Jonathan","Jorge","José","Jose María","Josué", "Juan","Juan de Dios","Julián","Julio",
        "Justino","Juventino","Lázaro","Lenin","Leobardo","Leonardo","Leonel","Leopoldo","Lorenzo","Luciano",
        "Lucio","Luis","Manuel","Matías","Marcelino","Marcelo","Marco","Marcos","Margarito","Tobías",
        "Mariano","Mario","Martín","Mateo","Mauricio","Mauro","Maximíno","Máximo","Miguel","Milton",
        "Misael","Modesto","Moisés","Nestor","Nicolás","Noé","Noel","Norberto","Octavio","Omar",
        "Orlando","Oscar","Osvaldo","Oswaldo","Pablo","Pascual","Patricio","Pedro","Porfirio","Rafael",
        "Ramiro","Ramón","Raúl","Raymundo","Refugio","René","Rey","Reyes","Reynaldo","Ricardo",
        "Rigoberto","Roberto","Rodolfo","Rodrigo","Rogelio","Roger","Rolando","Román","Rosalio","Rosario",
        "Rosendo","Rubén","Sabino","Salomón","Salvador","Samuel","Santiago","Santos","Saúl","Sebastián", 
        "Sergio","Silvestre","Simón","Teodoro","Tomás","Trinidad", "Ubaldo", "Ulises", "Uriel", "Valentin",
        "Vicente","Víctor","Virgilio","Vladimir","Wilbert","Zahid","Zacarías", "Yahir", "Yael", "Yoshua");
    ELSEIF v_genero= 'F' THEN 
        SET v_nombre_generado = ELT( fn_numero_aleatorio_rangos(1,255), "Abigail", "Adela", "Adriana", "Agustina", "Aida", 
        "Aide","Alba","Alejandra","Alejandrina","Alícia","Alma","Amalia","Amelia","América","Ampáro", 
        "Ana","Anabel","Andrea", "Anel","Angela", "Ángeles", "Angélica", "Angelina", "Antonia", "Antonieta", 
        "Araceli","Aracely", "Areli", "Arely", "Asunción","Aurelia", "Aurora","Azucena", "Beatríz", "Berenice", 
        "Bertha","Blanca","Brenda","Candelaria","Carmen","Carolina","Catalina", "Cecilia","Celia", "Clara",
        "Claudia","Concepción","Consuelo","Cristina","Cruz","Cynthia","Dalia","Dalila","Daniela","Delia",
        "Denisse","Diana","Dolores","Dora","Dulce","Edith","Edna","Elba","Elda","Elena",
        "Elia","Elisa","Elizabeth","Eloisa","Elsa","Elva","Elvia","Elvira","Emilia","Emma",
        "Enedina","Enriqueta","Erendira","Erika","Ernestina","Esmeralda","Esperanza","Estela","Esthela","Esther",
        "Eugenia","Eva","Evangelina","Evelia","Evelyn","Fabiola","Fatima","Fernanda","Flor","Francisca",
        "Gabriela","Genoveva","Georgina","Gisela","Gladys","Gloria","Graciela","Griselda","Guadalupe","Guillermina",
        "Herlinda","Hermelinda","Hilda","Hortencia","Idalia","Iliana","Iliria","Imelda","Inés","Irene",
        "Iris","Irma","Isabel","Isela","Itzel","Ivana","Ivette", "Ivonne","Janet","Janeth",
        "Jaqueline","Jazmín","Jessica","María José","Josefina", "Juana","Judith","Julia","Julieta","Karen",
        "Karina","Karla","Laura","Leonor","Leticia","Lidia","Lilia","Liliana","Lizbeth","Lizeth",
        "Lorena","Lourdes","Lucero","Lucia","Lucila","Lucina","Luisa","Luz","Magdalena","Manuela",
        "Marcela","Margarita","María","Mariana","Maribel","Maricela","Mariela","Marina","Marisela","Marisol",
        "Maritza","Marlene","Marta","Martha","Martina","Matilde","Mayra","Mercedes","Micaela","Minerva",
        "Mireya","Miriam","Mirna","Mónica","Monserrat","Nadia","Nallely","Nancy","Natalia","Natividad",
        "Nayeli","Nelly","Nidia","Noemí","Nohemi","Nora","Norma","Ofelia","Olga","Olivia",
        "Oralia","Paola","Patricia","Paula","Paulina","Perla","Petra","Pilar","Ramona","Raquel", 
        "Rebeca","Refugio","Reyna","Rita","Rocío","Rosa","Rosalba","Rosalia","Rosalinda","Rosario", 
        "Rosaura","Rubí","Ruth","Sandra","Santa","Sara","Selene","Silvia","Socorro","Sofía",
        "Soledad","Sonia","Susana","Tania","Tanya","Teresa","Teresita","Tomasa","Trinidad","Valeria",
        "Vanessa","Veronica", "Victoria", "Violeta", "Virginia","Viridiana", "Wendy","Xcaret","Xochitl","Xandra", 
        "Yadira", "Yanet", "Yazmín","Yesenia", "Yolanda","Zara","Zaira", "Zoila","Tamara","Ariel");
	END IF;
RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nss` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nss`() RETURNS varchar(15) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
       DECLARE v_nss_generado VARCHAR(15) DEFAULT '';
       DECLARE v_bandera_nss_valida BOOLEAN DEFAULT FALSE;
       DECLARE characters VARCHAR(100) DEFAULT 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
	   DECLARE i INT DEFAULT 1;
		
	   WHILE NOT v_bandera_nss_valida DO 
		WHILE i <= 15 DO
			SET v_nss_generado = CONCAT(v_nss_generado, SUBSTRING(characters, FLOOR(1 + RAND() * LENGTH(characters)), 1));
			SET i = i + 1;
		END WHILE;
           
		IF (SELECT COUNT(*) FROM pacientes WHERE nss = v_nss_generado) = 0 THEN
			SET v_bandera_nss_valida = TRUE;
        END IF;
       END WHILE;
RETURN v_nss_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numero_aleatorio_entre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Hospital_programacion`@`%` FUNCTION `fn_numero_aleatorio_entre`(minimo INT, maximo INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE resultado INT;
    SET resultado = FLOOR(RAND() * (maximo - minimo + 1)) + minimo;
    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numero_aleatorio_rangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numero_aleatorio_rangos`(v_limite_inferior int, v_limite_superior INT) RETURNS int
    DETERMINISTIC
BEGIN
     DECLARE v_numero_generado INT 
     DEFAULT FLOOR(Rand()* (v_limite_superior-v_limite_inferior+1)+v_limite_inferior);
     SET @numero_generado = v_numero_generado;
RETURN v_numero_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_primer_consonante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_primer_consonante`(v_palabra VARCHAR(100)) RETURNS char(1) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
      DECLARE v_consonante CHAR(1) DEFAULT NULL; 
      DECLARE v_bandera BOOLEAN DEFAULT FALSE;
      DECLARE v_pos INT DEFAULT 1; 
      WHILE v_bandera = FALSE DO
            SET v_consonante = UPPER(substr(v_palabra, v_pos,1));
            IF v_consonante IN ('B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z') THEN
            SET v_bandera = TRUE;
            ELSEIF v_pos = CHAR_LENGTH(v_palabra) THEN
            SET v_consonante = NULL;
            SET v_bandera = TRUE;
            ELSE
            SET v_pos = v_pos + 1;
            END IF;
      END WHILE;
RETURN v_consonante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_primer_consonanteinterna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_primer_consonanteinterna`(v_palabra VARCHAR(100)) RETURNS char(1) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
      DECLARE v_consonante CHAR(1) DEFAULT NULL; 
      DECLARE v_bandera BOOLEAN DEFAULT FALSE;
      DECLARE v_pos INT DEFAULT 1; 
      WHILE v_bandera = FALSE DO
            SET v_consonante = UPPER(substr(v_palabra, v_pos,1));
            IF v_consonante IN ('B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z') AND v_pos > 1 THEN
            SET v_bandera = TRUE;
            ELSEIF v_pos = CHAR_LENGTH(v_palabra) THEN
            SET v_consonante = NULL;
            SET v_bandera = TRUE;
            ELSE
            SET v_pos = v_pos + 1;
            END IF;
      END WHILE;
RETURN v_consonante;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_primer_vocalinterna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_primer_vocalinterna`(v_palabra VARCHAR(100)) RETURNS char(1) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
      DECLARE v_vocal CHAR(1) DEFAULT NULL; 
      DECLARE v_bandera BOOLEAN DEFAULT FALSE;
      DECLARE v_pos INT DEFAULT 1; 
      SET v_palabra = fn_elimina_acentos(v_palabra);
      WHILE v_bandera = FALSE DO
            SET v_vocal = UPPER(substr(v_palabra, v_pos,1));
            IF v_vocal IN ('A','E','I','O','U') AND v_pos > 1 THEN
            SET v_bandera = TRUE;
            ELSEIF v_pos = CHAR_LENGTH(v_palabra) THEN
            SET v_vocal = NULL;
            SET v_bandera = TRUE;
            ELSE
            SET v_pos = v_pos + 1;
            END IF;
      END WHILE;
RETURN v_vocal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_crear_pacientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crear_pacientes`(v_password VARCHAR(20))
BEGIN
IF v_password = "xYz%123" THEN
    -- Insertar personal médico 70 general
	CALL sp_insertar_personal_medico(70, null);
    -- Se insertan 60 empleados del tipo Médico

    CALL sp_insertar_personal_medico(60, 'Médico');
    
    -- Se insertan 80 empleados del tipo Enfermero
    CALL sp_insertar_personal_medico(80, 'Enfermero');
    
    -- Se insertan 25 empleados del tipo Administrativo
    CALL sp_insertar_personal_medico(25, 'Administrativo');
    
    -- Se insertan 15 empleados del tipo Apoyo
    CALL sp_insertar_personal_medico(15, 'Apoyo');
    
    -- Se insertan 10 empleados del tipo Directivo
    CALL sp_insertar_personal_medico(10, 'Directivo');
    
    -- Se insertan 30 empleados del tipo Residente
    CALL sp_insertar_personal_medico(30, 'Residente');
    
    -- Se insertan 10 empleados del tipo Interno
    CALL sp_insertar_personal_medico(10, 'Interno');

    -- Insertar pacientes -----------------------
    -- 1500 general
        CALL sp_insertar_pacientes(1500,NULL, NULL);

    -- Se insertan 300 pacientes mujeres de cualquier edad
    CALL sp_insertar_pacientes(300, 'F', NULL);
    
    -- Se insertan 150 pacientes hombres de cualquier edad
    CALL sp_insertar_pacientes(150, 'M', NULL);
    
    -- Se insertan 15 pacientes neonatales de cualquier género
    CALL sp_insertar_pacientes(15, NULL, 'Neonatal');
    
    -- Se insertan 250 pacientes pediátricos de cualquier género
    CALL sp_insertar_pacientes(250, NULL, 'Pediátrico');
    
    -- Se insertan 450 pacientes adultos de cualquier género
    CALL sp_insertar_pacientes(450, NULL, 'Adulto');
    
    -- Se insertan 40 pacientes geriátricos femeninos
    CALL sp_insertar_pacientes(40, 'F', 'Geriátrico');
    
    -- Se insertan 10 pacientes geriátricos masculinos
    CALL sp_insertar_pacientes(10, 'M', 'Geriátrico');
    ELSE
    		SELECT ("La contraseña es incorrecta.") AS ErrorMessage;

    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_estatus_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_estatus_bd`(v_password VARCHAR(20))
BEGIN  

    IF v_password = "xYz$123" THEN

        (SELECT "TABLAS CATALOGO" as Tabla, "-----------------------------" AS TotalRegistros, "-----------------------------" AS TipoTabla)
        UNION
        SELECT "areas_medicas" as Tabla,
        (SELECT COUNT(*) FROM areas_medicas) as TotalRegistros, "Tabla Fuerte"
        UNION
        SELECT "departamentos" as Tabla,
        (SELECT COUNT(*) FROM departamentos) as TotalRegistros, "Tabla Débil"
        UNION
        SELECT "medicamentos" as Tabla,
        (SELECT COUNT(*) FROM medicamentos) as TotalRegistros, "Tabla Fuerte"
		UNION
        SELECT "cirugias" as Tabla,
        (SELECT COUNT(*) FROM cirugias) as TotalRegistros, "Tabla Débil"
        UNION
		SELECT "horarios de quirófano" as Tabla,
        (SELECT COUNT(*) FROM horariosquirofano) as TotalRegistros, "Tabla Débil"
        UNION
        (SELECT "TABLAS TRANSACCIONALES" as Tabla, "-----------------------------" AS TotalRegistros, "-----------------------------" AS TipoTabla)
        UNION
        SELECT "personas" as Tabla,
        (SELECT COUNT(*) FROM personas) as TotalRegistros, "Tabla Fuerte"
        UNION
        SELECT "pacientes" as Tabla,
        (SELECT COUNT(*) FROM pacientes) as TotalRegistros, "Tabla Débil"
        UNION
        SELECT "personal_medico" as Tabla,
        (SELECT COUNT(*) FROM personal_medico) as TotalRegistros, "Tabla Débil"
        UNION
        SELECT "receta_medica" as Tabla,
        (SELECT COUNT(*) FROM receta_medica) as TotalRegistros, "Tabla Débil"
        UNION
        SELECT "receta_medica_detalle" as Tabla,
        (SELECT COUNT(*) FROM receta_medica_detalle) as TotalRegistros, "Tabla Débil"
        UNION
        (SELECT "TABLAS BITÁCORA" as Tabla, "-----------------------------" AS TotalRegistros, "-----------------------------" AS TipoTabla)
        UNION
        SELECT "bitacora" as Tabla,
        (SELECT COUNT(*) FROM bitacora) as TotalRegistros, "Tabla Isla";

    ELSE
        SELECT "La contraseña es incorrecta, no puedo mostrarte el estatus de la base de datos" AS ErrorMessage;

    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_cirugias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_cirugias`(v_cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE v_fecha_actual DATE;
    DECLARE v_tipo_cirugia VARCHAR(100);
    DECLARE v_persona_id INT;
    DECLARE v_medico_id INT;
    DECLARE v_departamento_id INT;
    DECLARE v_fecha_cirugia DATE;
    DECLARE v_descripcion TEXT;
    
    WHILE (i <= v_cantidad) DO
        -- Generar datos para la cirugía
        SET v_fecha_actual = CURDATE();
        SET v_tipo_cirugia = ELT(fn_numero_aleatorio_rangos(1, 5), "Cirugía de corazón", "Cirugía de rodilla", "Cirugía de cataratas", "Cirugía de apéndice", "Cirugía de columna");
        SET v_persona_id = fn_numero_aleatorio_entre(1, 100); -- Suponiendo que ya existen personas en la base de datos
        SET v_medico_id = fn_numero_aleatorio_entre(1, 50); -- Suponiendo que ya existen médicos en la base de datos
        SET v_departamento_id = fn_numero_aleatorio_entre(1, 10); -- Suponiendo que ya existen departamentos en la base de datos
        SET v_fecha_cirugia = DATE_ADD(v_fecha_actual, INTERVAL fn_numero_aleatorio_entre(1, 30) DAY); -- Fecha de la cirugía en los próximos 30 días
        
        -- Asignar una descripción basada en el tipo de cirugía
        CASE v_tipo_cirugia
            WHEN 'Cirugía de corazón' THEN SET v_descripcion = "Esta es una cirugía de corazón.";
            WHEN 'Cirugía de rodilla' THEN SET v_descripcion = "Esta es una cirugía de rodilla.";
            WHEN 'Cirugía de cataratas' THEN SET v_descripcion = "Esta es una cirugía de cataratas.";
            WHEN 'Cirugía de apéndice' THEN SET v_descripcion = "Esta es una cirugía de apéndice.";
            WHEN 'Cirugía de columna' THEN SET v_descripcion = "Esta es una cirugía de columna.";
            ELSE SET v_descripcion = "Descripción genérica para otro tipo de cirugía.";
        END CASE;
        
        -- Insertar la cirugía en la tabla
        INSERT INTO cirugias (Persona_id, medico_id, departamento_id, tipo, fecha, descripcion) 
        VALUES (v_persona_id, v_medico_id, v_departamento_id, v_tipo_cirugia, v_fecha_cirugia, v_descripcion);
        
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_pacientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_pacientes`(v_cantidad int, v_genero char(1), v_tipo varchar(20))
BEGIN
	DECLARE i INT DEFAULT 1;
    DECLARE v_fecha_nacimiento DATE;
    DECLARE v_fecha_actual DATETIME;
    DECLARE v_efn VARCHAR(500);
    DECLARE v_nombre VARCHAR(100);
    DECLARE v_primer_apellido VARCHAR(100);
    DECLARE v_segundo_apellido VARCHAR(100);
    DECLARE v_curp CHAR(18) DEFAULT NULL;
    DECLARE v_tipo_sangre VARCHAR(50);
    DECLARE v_grupo_sanguineo VARCHAR(50);
    DECLARE v_pivote_sangre INT DEFAULT 0;
    DECLARE v_persona_id INT DEFAULT 0;
    DECLARE v_bandera_titulo BOOLEAN DEFAULT FALSE;
    DECLARE v_titulo VARCHAR(20) DEFAULT NULL;
    DECLARE v_fecha_registro DATETIME DEFAULT NULL;
    DECLARE v_bandera_fechar_valida BOOLEAN DEFAULT FALSE;
    DECLARE v_fecha_inicio_actividades_hospital DATE DEFAULT "2001-01-01";
    DECLARE v_bandera_porcentaje_registro_nocturno BOOLEAN DEFAULT FALSE;
    DECLARE v_fecha_rango_edad_superior DATE DEFAULT NULL;
    DECLARE v_fecha_rango_edad_inferior DATE DEFAULT NULL;
    DECLARE v_bandera_tipo_paciente BOOLEAN DEFAULT NULL;
    DECLARE v_bandera_fecha_ultima_cita_valida BOOLEAN DEFAULT FALSE;
    DECLARE v_fecha_ultima_cita DATETIME DEFAULT NULL;
    DECLARE v_bandera_atencion_nocturna BOOLEAN DEFAULT NULL;
    DECLARE v_nss VARCHAR(15) DEFAULT NULL;
    DECLARE v_pivote_estatus_vida INT DEFAULT NULL;
    DECLARE v_pivote_estatus_medico INT DEFAULT NULL;
    DECLARE v_pivote_tipo_paciente INT DEFAULT NULL;
    DECLARE v_estatus_vida VARCHAR(15) DEFAULT NULL;
    DECLARE v_estatus_medico VARCHAR(15) DEFAULT NULL;
    DECLARE v_tipo_seguro VARCHAR(20) DEFAULT NULL;
    DECLARE v_tipo_paciente VARCHAR(20) DEFAULT NULL;
    DECLARE v_genero_2 CHAR(1) DEFAULT NULL;
    

       
	WHILE(i <= v_cantidad) DO
		/*SELECT CONCAT_WS(" ", "-- Calculando los datos para insertar al paciente No.:", i,"--" ) as WarningMessage;*/
		-- Definimos la Fecha Actual
        SET v_fecha_actual= CURDATE();
        SET v_tipo_paciente = v_tipo;
        SET v_genero_2 = v_genero;
        
        
        SET v_pivote_tipo_paciente = (fn_numero_aleatorio_rangos(0,100));
        
	IF V_pivote_tipo_paciente BETWEEN 0 AND 3 THEN
		SET V_tipo_paciente = "Geriátrico";
	ELSEIF V_pivote_tipo_paciente BETWEEN 4 AND 10 THEN
		SET V_tipo_paciente = "Neonatal";
	ELSEIF V_pivote_tipo_paciente BETWEEN 11 AND 40 THEN
		SET V_tipo_paciente = "Pediátrico";
	ELSEIF V_pivote_tipo_paciente BETWEEN 41 AND 100 THEN
		SET V_tipo_paciente = "Adulto";
	END IF;


    -- Generar el genero de la persona
    IF v_genero IS NULL THEN 
		SET v_genero_2 = ELT(fn_numero_aleatorio_rangos(1,2), "M", "F");
    END IF;
    
    -- Generar Nombre
    SET v_nombre = fn_genera_nombre(v_genero_2);
    SET v_primer_apellido = fn_genera_apellido();
    SET v_segundo_apellido = fn_genera_apellido();
    
   /* SELECT CONCAT_WS(" ", "Insertando a un paciente del tipo:", v_tipo ) as WarningMessage;*/
    -- En base al tipo de paciente definir los rangos límites de fechas de nacimiento.
    CASE v_tipo_paciente 
		WHEN "Neonatal" THEN 
			SET v_fecha_rango_edad_superior = v_fecha_actual;  
			SET v_fecha_rango_edad_inferior = DATE_SUB(v_fecha_actual, INTERVAL 4 WEEK); 
            SET v_nombre = "Bebé";
        WHEN "Pediátrico" THEN 
		  SET v_fecha_rango_edad_superior = DATE_ADD(DATE_SUB(v_fecha_actual, INTERVAL 18 YEAR), INTERVAL -1 DAY); 
		  SET v_fecha_rango_edad_inferior = DATE_ADD(DATE_SUB(v_fecha_actual, INTERVAL 1 MONTH), INTERVAL 1 DAY); 
        WHEN "Adulto" THEN 
		  SET v_fecha_rango_edad_superior = DATE_ADD(DATE_SUB(v_fecha_actual, INTERVAL 80 YEAR), INTERVAL -1 DAY); 
		  SET v_fecha_rango_edad_inferior = DATE_SUB(v_fecha_actual, INTERVAL 18 YEAR); 
        WHEN "Geriátrico" THEN 
		  SET v_fecha_rango_edad_superior = DATE_SUB(v_fecha_actual, INTERVAL 110 YEAR); 
		  SET v_fecha_rango_edad_inferior = DATE_ADD(DATE_SUB(v_fecha_actual, INTERVAL 80 YEAR), INTERVAL 1 DAY); 
    END CASE;
    
    -- Generar el fecha de nacimiento de la persona
    SET v_fecha_nacimiento = fn_genera_fecha_nacimiento(v_fecha_rango_edad_superior, v_fecha_rango_edad_inferior);
	/*SELECT CONCAT_WS(" ", "El paciente nacio:", v_fecha_nacimiento ) as WarningMessage;*/

    
    
    -- Generar la entidad federativa de nacimiento de la persona
    SET v_efn =  ELT(fn_numero_aleatorio_rangos(1,32),
    "Aguascalientes", "Baja California","Baja California Sur", "Campeche", "Coahuila", "Colima", "Chiapas", "Chihuahua",
    "Distrito Federal", "Durango","Guanajuato", "Guerrero", "Hidalgo" , "Jalisco", "México", "Michoacán", "Morelos", 
    "Nayarit", "Nuevo León", "Oaxaca", "Puebla", "Querétaro", "Quintana Roo", "San Luis Potosí", "Sinaloa", "Sonora", 
    "Tabasco", "Tamaulipas", "Tlaxcala", "Veracruz", "Yucatán", "Zacatecas", "Nacido en el Extranjero");
    
    --  Genera CURP si no es un Bebe recién nacido
     IF v_tipo_paciente <> "Neonatal" THEN
		set v_curp= fn_genera_curp(v_nombre, v_primer_apellido,v_segundo_apellido,  v_fecha_nacimiento, v_genero, v_efn) ;
     END IF;
     
     
    -- Generar Grupo y Tipo Sanguíneo 
    SET v_pivote_sangre = fn_numero_aleatorio_rangos(0,1000);
    
    IF v_pivote_sangre BETWEEN 0 AND 3 THEN 
      SET v_grupo_sanguineo = "AB";
      SET v_tipo_sangre = "-";
	ELSEIF v_pivote_sangre BETWEEN 4 AND 10 THEN 
	  SET v_grupo_sanguineo = "B";
      SET v_tipo_sangre = "-";
	ELSEIF v_pivote_sangre BETWEEN 11 AND 21 THEN 
	  SET v_grupo_sanguineo = "A";
      SET v_tipo_sangre = "-";
    ELSEIF v_pivote_sangre BETWEEN 21 AND 34 THEN 
	  SET v_grupo_sanguineo = "O";
      SET v_tipo_sangre = "-";
	ELSEIF v_pivote_sangre BETWEEN 35 AND 106 THEN 
	  SET v_grupo_sanguineo = "AB";
      SET v_tipo_sangre = "+";
    ELSEIF v_pivote_sangre BETWEEN 107 AND 357 THEN 
	  SET v_grupo_sanguineo = "B";
      SET v_tipo_sangre = "+";
	ELSEIF v_pivote_sangre BETWEEN 358 AND 633 THEN 
	  SET v_grupo_sanguineo = "A";
      SET v_tipo_sangre = "+";
	ELSE
	  SET v_grupo_sanguineo = "O";
      SET v_tipo_sangre = "+";
    END IF;
    
    
    -- Calcular la fecha de registro de la persona considernado la regla de negocio que las personas no pueden ser registradas antes de haber nacido  y ninguna 
    -- fecha superior a la fecha actual 
    
    WHILE NOT v_bandera_fechar_valida DO
        -- Determinar si el paciente se registro en horario nocturno (20%)
		SET v_bandera_porcentaje_registro_nocturno = fn_bandera_porcentaje(20);
        
        IF v_bandera_porcentaje_registro_nocturno THEN
			SET v_fecha_registro = fn_fechahora_aleatoria_rangos(v_fecha_inicio_actividades_hospital, v_fecha_actual, "21:00:00", "05:59:59");
		ELSE 
			SET v_fecha_registro = fn_fechahora_aleatoria_rangos(v_fecha_inicio_actividades_hospital, v_fecha_actual, "06:00:00", "20:59:59");
		END IF;
        
		IF v_fecha_registro > v_fecha_nacimiento AND v_fecha_registro < v_fecha_actual  THEN 
           SET v_bandera_fechar_valida = TRUE; 
		END IF;
        
	END WHILE; 
    
    
        
    INSERT INTO personas VALUES (DEFAULT,null, v_nombre , v_primer_apellido , v_segundo_apellido, v_curp, v_genero_2,v_grupo_sanguineo,v_tipo_sangre , v_fecha_nacimiento, DEFAULT, v_fecha_registro, NULL);
    -- Almacenamos el ID asignado a la persona
    SET v_persona_id= last_insert_id();
    
    --  Definir si la ultima cita que recibió el paciente fué en horario nocturno;
    SET v_bandera_atencion_nocturna = fn_bandera_porcentaje(20);
    
    /*SELECT CONCAT_WS(" ", "Calculando la fecha de la última cita para el paciente:",v_genero, v_fecha_nacimiento, v_fecha_registro) as WarningMessage;*/
    
    
      WHILE NOT v_bandera_fecha_ultima_cita_valida DO 
         
		-- Calcular la fecha de la ultima cita que debe ser superior a la fecha de inicio de 
        -- actividades, superior o igual a la fecha de registro del paciente e inferior o igual
        -- a la fecha actual.
        IF v_bandera_atencion_nocturna THEN 
			SET v_fecha_ultima_cita = fn_fechahora_aleatoria_rangos(v_fecha_inicio_actividades_hospital,v_fecha_actual, "08:00:00", "19:59:59" );
		ELSE 
			SET v_fecha_ultima_cita = fn_fechahora_aleatoria_rangos(v_fecha_inicio_actividades_hospital,v_fecha_actual, "20:00:00", "07:59:59");
		END IF;
		IF v_fecha_ultima_cita >= v_fecha_registro THEN
			SET v_bandera_fecha_ultima_cita_valida = TRUE;
        END IF;
       END WHILE;
	/*SELECT CONCAT_WS(" ", "la última cita del paciente fue:", v_fecha_ultima_cita ) as WarningMessage;*/
    
   
    -- Definimos su tipo de Seguro
    SET v_tipo_seguro = ELT(fn_numero_aleatorio_rangos(1,5), 
    "Seguro Privado", "IMSS", "ISSSTE", "Seguro Popular", "Sin Seguro");
    -- En caso de que tenga seguro , generar un código único de seguro
    IF v_tipo_seguro <> "Sin Seguro" THEN 
		-- Definimos el nss del paciente
		SET v_nss= fn_genera_nss();
	END IF;
    
    -- Definimos sus estado de vida, bajo el siguiente esquema:  80% vivo, 15% finado, 4% Vegetativo, 1% Coma
    SET v_pivote_estatus_vida = fn_numero_aleatorio_rangos(0,100);
    
    IF v_pivote_estatus_vida BETWEEN 0 AND 80 THEN 
			SET v_estatus_vida = "Vivo";
	ELSEIF v_pivote_estatus_vida BETWEEN 81 AND 95 THEN 
			SET v_estatus_vida = "Finado";
	ELSEIF v_pivote_estatus_vida BETWEEN 96 AND 99 THEN 
			SET v_estatus_vida = "Vegetativo";
    ELSEIF v_pivote_estatus_vida = 100 THEN
			SET v_estatus_vida = "Coma";
    END IF;
    
    
    
    -- Definimos su estado médico, bajo el siguiente escenario, si el paciente no esta finado será No Aplica, 
    -- En caso de que se encuentre con vida: 75% Bien, 10% Estable, 1% Crítico, 2% Grave, 3% Indeterminado, 2% en Recuperación, 7% En observacion
    
    
    IF v_estatus_vida <> "Finado" THEN
		SET v_pivote_estatus_medico = fn_numero_aleatorio_rangos(0,75);
		IF v_estatus_medico BETWEEN 0 AND 75 THEN 
			SET v_estatus_medico = "Bien";
		ELSEIF v_pivote_estatus_medico BETWEEN 76 AND 85 THEN 
			SET v_estatus_medico = "Estable";
		ELSEIF v_pivote_estatus_medico = 86  THEN 
			SET v_estatus_medico = "Crítico";
		ELSEIF v_pivote_estatus_medico BETWEEN 87 AND 88 THEN 
			SET v_estatus_medico = "Grave";
		ELSEIF v_pivote_estatus_medico BETWEEN 89 AND 91 THEN 
			SET v_estatus_medico = "Indeterminado";
		ELSEIF v_pivote_estatus_medico BETWEEN 92 AND 93 THEN 
			SET v_estatus_medico = "Recuperación";
		ELSEIF v_pivote_estatus_medico BETWEEN 94 AND 100 THEN 
			SET v_estatus_medico = "En Observación";
		END IF;
	ELSE 
		SET v_estatus_medico = "No Aplica";
	END IF; 
    
      
  /*  SET v_estatus_medico = ELT(fn_numero_aleatorio_rangos(1,9), 
    "Crítico", "Estable", "Indeterminado", "Recuperacion", "En Cirugía", "Grave", "No Aplica", "En Observación",  "Bien");*/
    
    -- Insertar los datos del paciente
    INSERT INTO pacientes VALUES(v_persona_id, v_nss, 
    v_tipo_seguro, v_fecha_registro, v_fecha_ultima_cita, v_estatus_medico, v_estatus_vida, DEFAULT);
    
    SET v_tipo_paciente = NULL;
    SET v_titulo = NULL;
    SET v_nss = NULL;
    SET v_bandera_fechar_valida = FALSE;
    SET v_bandera_tipo_paciente = FALSE;
    SET v_bandera_fecha_ultima_cita_valida = FALSE;
    SET v_tipo_seguro = NULL;
    SET v_curp = NULL;
    SET i =i +1;
    
	END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_personal_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_personal_medico`(v_cantidad int, v_tipo VARCHAR(50))
BEGIN

	DECLARE i INT DEFAULT 1;
    DECLARE v_genero CHAR DEFAULT NULL;
    DECLARE v_fecha_actual DATE;
    DECLARE v_fecha_limite_27 DATE;
    DECLARE v_fecha_limite_65 DATE;
    DECLARE v_fecha_nacimiento DATE;
    DECLARE v_efn VARCHAR(500);
    DECLARE v_nombre VARCHAR(100);
    DECLARE v_primer_apellido VARCHAR(100);
    DECLARE v_segundo_apellido VARCHAR(100);
    DECLARE v_tipo_sangre VARCHAR(50);
    DECLARE v_grupo_sanguineo VARCHAR(50);
    DECLARE v_pivote_sangre INT DEFAULT 0;
    DECLARE v_persona_id INT DEFAULT 0;
    DECLARE v_total_departamentos INT DEFAULT (SELECT COUNT(*) FROM departamentos WHERE estatus = b'1');
    DECLARE v_pos_departamento INT DEFAULT NULL;
    DECLARE v_departamento_id INT DEFAULT NULL;
    DECLARE v_fecha_contratacion DATETIME DEFAULT NULL;
    DECLARE v_bandera_tiene_especialidad BOOLEAN DEFAULT NULL;
    DECLARE v_nombre_especialidad VARCHAR(60) DEFAULT NULL;
    DECLARE v_titulo VARCHAR(20) DEFAULT NULL;
    DECLARE v_fecha_registro DATETIME DEFAULT NULL;
    DECLARE v_bandera_fechar_valida BOOLEAN DEFAULT FALSE;
    DECLARE v_fecha_inicio_actividades_hospital DATE DEFAULT "2001-01-01";
    DECLARE v_bandera_fecha_contratacion_valida BOOLEAN DEFAULT FALSE;
    DECLARE v_edad_contratacion INT DEFAULT NULL;
    DECLARE v_edad_registro INT DEFAULT NULL;
    
    -- Obtener la fecha actual
    SET v_fecha_actual = CURDATE();
    
    -- Calcular la fecha límite para 27 años atrás
    SET v_fecha_limite_27 = DATE_SUB(v_fecha_actual, INTERVAL 27 YEAR);
    
    -- Calcular la fecha límite para 65 años atrás
    SET v_fecha_limite_65 = DATE_SUB(v_fecha_actual, INTERVAL 65 YEAR);
            
    WHILE(i <= v_cantidad) DO
	
    --  En caso de que no se defina el tipo de personal médico , elegir uno aleatorio
    IF v_tipo IS NULL THEN 
		SET v_tipo = ELT(fn_numero_aleatorio_rangos(1,7), "Médico", "Enfermero", "Administrativo", 
        "Directivo", "Apoyo", "Residente", "Interno");
    END IF;
    
    -- Generar el genero de la persona
    SET v_genero = ELT(fn_numero_aleatorio_rangos(1,2), "M", "F");
    
    -- Generar el fecha de nacimiento de la persona
    SET v_fecha_nacimiento = fn_genera_fecha_nacimiento(v_fecha_limite_65, v_fecha_limite_27);
    SET v_nombre = fn_genera_nombre(v_genero);
    SET v_primer_apellido = fn_genera_apellido();
    SET v_segundo_apellido = fn_genera_apellido();
    
    
    -- Generar la entidad federativa de nacimiento de la persona
    SET v_efn =  ELT(fn_numero_aleatorio_rangos(1,32),
    "Aguascalientes", "Baja California","Baja California Sur", "Campeche", "Coahuila", "Colima", "Chiapas", "Chihuahua", "Distrito Federal", "Durango",
    "Guanajuato", "Guerrero", "Hidalgo" , "Jalisco", "México", "Michoacán", "Morelos", "Nayarit", "Nuevo León", "Oaxaca", "Puebla", "Querétaro", "Quintana Roo",
    "San Luis Potosí", "Sinaloa", "Sonora", "Tabasco", "Tamaulipas", "Tlaxcala", "Veracruz", "Yucatán", "Zacatecas", "Nacido en el Extranjero");
    
    -- Generar Grupo y Tipo Sanguíneo 
    SET v_pivote_sangre = fn_numero_aleatorio_rangos(0,1000);
    
    IF v_pivote_sangre BETWEEN 0 AND 3 THEN 
      SET v_grupo_sanguineo = "AB";
      SET v_tipo_sangre = "-";
	ELSEIF v_pivote_sangre BETWEEN 4 AND 10 THEN 
	  SET v_grupo_sanguineo = "B";
      SET v_tipo_sangre = "-";
	ELSEIF v_pivote_sangre BETWEEN 11 AND 21 THEN 
	  SET v_grupo_sanguineo = "A";
      SET v_tipo_sangre = "-";
    ELSEIF v_pivote_sangre BETWEEN 21 AND 34 THEN 
	  SET v_grupo_sanguineo = "O";
      SET v_tipo_sangre = "-";
	ELSEIF v_pivote_sangre BETWEEN 35 AND 106 THEN 
	  SET v_grupo_sanguineo = "AB";
      SET v_tipo_sangre = "+";
    ELSEIF v_pivote_sangre BETWEEN 107 AND 357 THEN 
	  SET v_grupo_sanguineo = "B";
      SET v_tipo_sangre = "+";
	ELSEIF v_pivote_sangre BETWEEN 358 AND 633 THEN 
	  SET v_grupo_sanguineo = "A";
      SET v_tipo_sangre = "+";
	ELSE
	  SET v_grupo_sanguineo = "O";
      SET v_tipo_sangre = "+";
    END IF;
    
    
    -- Calcular la fecha de registro de la persona considernado la regla de negocio que las personas no pueden ser registradas antes de haber nacido  y ninguna 
    -- fecha superior a la fecha actual 
    
    WHILE NOT v_bandera_fechar_valida DO
   		SET v_fecha_registro = fn_fechahora_aleatoria_rangos(v_fecha_inicio_actividades_hospital, v_fecha_actual, "08:00:00", "20:00:00");
		SET v_edad_registro = fn_calcula_edad_fecha_especifica(v_fecha_nacimiento, v_fecha_registro);
		IF v_fecha_registro > v_fecha_nacimiento  AND v_edad_registro >= 27 THEN 
           SET v_bandera_fechar_valida = TRUE; 
		END IF;
        
	END WHILE; 
        
    
    
    -- Insertar los datos personales del empleado
    INSERT INTO personas VALUES (DEFAULT,null, v_nombre , v_primer_apellido , v_segundo_apellido, fn_genera_curp(v_nombre, v_primer_apellido,v_segundo_apellido,  v_fecha_nacimiento
    , v_genero, v_efn) , v_genero,v_grupo_sanguineo,v_tipo_sangre , v_fecha_nacimiento, DEFAULT, v_fecha_registro, NULL);
    
    -- Guardamos el ID de la persona insertada para reutilizarlo.
    SET v_persona_id = last_insert_id();
    
    -- Insertar los datos laborales del empleado
    -- Elegimos el id del departamento al que esta adscrito el empleado 
    SET v_pos_departamento = fn_numero_aleatorio_rangos(1, v_total_departamentos)-1;
    SET v_departamento_id = (SELECT id FROM departamentos ORDER BY id LIMIT v_pos_departamento,1);
    
    -- Considerando que el 25% de los Médicos contratados  y el 10% residentes tienen especialidad
    IF v_tipo = "Médico" THEN 
		SET v_bandera_tiene_especialidad = fn_bandera_porcentaje(25);
		IF v_bandera_tiene_especialidad THEN 
            SET v_nombre_especialidad = fn_genera_especialidad();
		ELSE 
			SET v_nombre_especialidad = "Medicina General";
		END IF;
        IF v_genero = "M" THEN
			SET v_titulo = "Dr.";
		ELSE
			SET v_titulo = "Dra.";
		END IF;
	ELSEIF v_tipo ="Residente" THEN   -- Alumnos de Posgrado que ya tiene la carrera de medicina general
        --  y estan en fase de termino de su especialidad
		SET v_bandera_tiene_especialidad = fn_bandera_porcentaje(10);
		IF v_bandera_tiene_especialidad THEN 
            SET v_nombre_especialidad = fn_genera_especialidad();
            IF v_genero = "M" THEN
				SET v_titulo = "Dr.";
			ELSE
				SET v_titulo = "Dra.";
			END IF;
		ELSE 
			SET v_nombre_especialidad = "Medicina General";
		END IF;
	ELSEIF v_tipo ="Interno" THEN 
		SET v_nombre_especialidad ="Medicina General";   -- Los médicos internos son estudiantes sin graduarse
        -- de la carrera de medicina
        SET v_titulo = "Pste.";
    
	ELSE 
		SET v_nombre_especialidad = NULL;
	END IF; 
    
    WHILE NOT v_bandera_fecha_contratacion_valida DO 
		-- Calcular la fecha de contratación
		SET v_fecha_contratacion = fn_fechahora_aleatoria_rangos(v_fecha_inicio_actividades_hospital,v_fecha_actual, "08:00:00", "20:00:00" );
        SET v_edad_contratacion  =  fn_calcula_edad_fecha_especifica(v_fecha_nacimiento, v_fecha_contratacion);
        
        IF (v_edad_contratacion BETWEEN 27 AND 65) AND (v_edad_contratacion >= 27) AND (v_fecha_contratacion >= v_fecha_inicio_actividades_hospital) 
        AND  (v_fecha_contratacion >= v_fecha_registro) THEN
			SET v_bandera_fecha_contratacion_valida=TRUE;
		END IF;
	END WHILE;
    -- Le actualizamos el titulo al médico
    UPDATE personas SET titulo = v_titulo WHERE id = v_persona_id;
    
    INSERT INTO personal_medico VALUES(v_persona_id, v_departamento_id, v_nombre_especialidad,
    v_tipo, fn_genera_cedula_profesional(), DEFAULT, v_fecha_contratacion, NULL);
    SET v_tipo = NULL;
    SET v_titulo = NULL;
    SET v_bandera_fechar_valida = FALSE;
    SET v_bandera_fecha_contratacion_valida=FALSE;
    SET i =i +1;
	END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_limpia_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_limpia_bd`(v_password VARCHAR(20))
BEGIN  IF v_password = "xYz$123" THEN
		
		DELETE FROM cirugias;
        ALTER TABLE cirugias auto_increment = 1;
        DELETE FROM horariosquirofano;
        ALTER TABLE horariosquirofano auto_increment = 1;
        DELETE FROM personal_medico;  -- Tabla Débil
        DELETE FROM pacientes;  -- Tabla Débil
        DELETE FROM personas;  -- Tabla Fuerte 
        ALTER TABLE personas auto_increment = 1;  -- Resetear Autoincremento
        DELETE FROM bitacora;
        ALTER TABLE bitacora auto_increment = 1;

	ELSE 
		SELECT ("La contraseña es incorrecta.") AS ErrorMessage;
        
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_llenar_horarios_quirofano` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Hospital_programacion`@`%` PROCEDURE `sp_llenar_horarios_quirofano`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE v_fecha_actual DATE;
    DECLARE v_hora_inicio TIME;
    DECLARE v_hora_fin TIME;
    DECLARE v_tipo_cirugia VARCHAR(100);
    DECLARE v_fecha DATE;

    WHILE i <= cantidad DO
        -- Generar datos para el horario quirúrgico
        SET v_fecha_actual = CURDATE();
        SET v_fecha = DATE_ADD(v_fecha_actual, INTERVAL fn_numero_aleatorio_entre(1, 30) DAY); -- Fecha de la cirugía en los próximos 30 días

        -- Generar hora de inicio aleatoria entre 1 y 8 horas después de las 00:00:00
        SET v_hora_inicio = SEC_TO_TIME(FLOOR(RAND() * 25200) + 3600); -- 3600 segundos = 1 hora

        -- Generar hora de finalización aleatoria entre 1 y 8 horas después de la hora de inicio
        SET v_hora_fin = ADDTIME(v_hora_inicio, SEC_TO_TIME(FLOOR(RAND() * 25200) + 3600)); -- 3600 segundos = 1 hora

        -- Asegurarse de que la hora de finalización no exceda las 24 horas
        IF TIME_TO_SEC(v_hora_fin) >= TIME_TO_SEC('23:59:59') THEN
            SET v_hora_fin = '23:59:59';
        END IF;

        SET v_tipo_cirugia = (SELECT tipo FROM cirugias ORDER BY RAND() LIMIT 1); -- Seleccionar un tipo de cirugía aleatorio de la tabla cirugias
		
        -- Insertar el horario quirúrgico en la tabla
        INSERT INTO HorariosQuirofano (Fecha, HoraInicio, HoraFin, Tipo) 
        VALUES (v_fecha, v_hora_inicio, v_hora_fin, v_tipo_cirugia);

        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_poblar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Hospital_programacion`@`%` PROCEDURE `sp_poblar`(v_password VARCHAR(20))
BEGIN
IF v_password = "xYz$123" THEN
    -- Insertar personal médico 70 general
	CALL sp_insertar_personal_medico(70, null);
    -- Se insertan 60 empleados del tipo Médico

    CALL sp_insertar_personal_medico(60, 'Médico');
    
    -- Se insertan 80 empleados del tipo Enfermero
    CALL sp_insertar_personal_medico(80, 'Enfermero');
    
    -- Se insertan 25 empleados del tipo Administrativo
    CALL sp_insertar_personal_medico(25, 'Administrativo');
    
    -- Se insertan 15 empleados del tipo Apoyo
    CALL sp_insertar_personal_medico(15, 'Apoyo');
    
    -- Se insertan 10 empleados del tipo Directivo
    CALL sp_insertar_personal_medico(10, 'Directivo');
    
    -- Se insertan 30 empleados del tipo Residente
    CALL sp_insertar_personal_medico(30, 'Residente');
    
    -- Se insertan 10 empleados del tipo Interno
    CALL sp_insertar_personal_medico(10, 'Interno');

    -- Insertar pacientes -----------------------
    -- 1500 general
        CALL sp_insertar_pacientes(1500,NULL, NULL);

    -- Se insertan 300 pacientes mujeres de cualquier edad
    CALL sp_insertar_pacientes(300, 'F', NULL);
    
    -- Se insertan 150 pacientes hombres de cualquier edad
    CALL sp_insertar_pacientes(150, 'M', NULL);
    
    -- Se insertan 15 pacientes neonatales de cualquier género
    CALL sp_insertar_pacientes(15, NULL, 'Neonatal');
    
    -- Se insertan 250 pacientes pediátricos de cualquier género
    CALL sp_insertar_pacientes(250, NULL, 'Pediátrico');
    
    -- Se insertan 450 pacientes adultos de cualquier género
    CALL sp_insertar_pacientes(450, NULL, 'Adulto');
    
    -- Se insertan 40 pacientes geriátricos femeninos
    CALL sp_insertar_pacientes(40, 'F', 'Geriátrico');
    
    -- Se insertan 10 pacientes geriátricos masculinos
    CALL sp_insertar_pacientes(10, 'M', 'Geriátrico');
    
    -- se insertan 200 cirugias en espera:
    CALL sp_insertar_cirugias(200);
    
    -- se inserta el horario de quirofanos
    CALL sp_llenar_horarios_quirofano(200); 
    
    ELSE
    		SELECT ("La contraseña es incorrecta.") AS ErrorMessage;

    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_cirugias`
--

/*!50001 DROP VIEW IF EXISTS `vw_cirugias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Hospital_programacion`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cirugias` AS select `cirugias`.`id_cirugia` AS `id_cirugia`,`cirugias`.`Persona_id` AS `Persona_id`,`cirugias`.`medico_id` AS `medico_id`,`cirugias`.`departamento_id` AS `departamento_id`,`cirugias`.`tipo` AS `tipo`,`cirugias`.`fecha` AS `fecha`,`cirugias`.`descripcion` AS `descripcion` from `cirugias` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cirugias_por_dia`
--

/*!50001 DROP VIEW IF EXISTS `vw_cirugias_por_dia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Hospital_programacion`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cirugias_por_dia` AS select `cirugias`.`fecha` AS `Fecha_de_cirugia`,count(0) AS `Total_de_cirugias` from `cirugias` group by `cirugias`.`fecha` order by `cirugias`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_datos_pacientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_datos_pacientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_datos_pacientes` AS select concat_ws(' ',`p`.`Nombre`,`p`.`Primer_Apellido`,`p`.`Segundo_Apellido`) AS `Nombre completo`,`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) AS `Edad`,concat(`p`.`Grupo_Sanguineo`,`p`.`Tipo_Sanguineo`) AS `Tipo de Sangre`,`pa`.`NSS` AS `NSS` from (`pacientes` `pa` join `personas` `p` on((`p`.`ID` = `pa`.`Persona_ID`))) where (`pa`.`Estatus_Vida` <> 'Finado') order by 'Nombre completo' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_duracion_de_cirugias_por_fecha`
--

/*!50001 DROP VIEW IF EXISTS `vw_duracion_de_cirugias_por_fecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_duracion_de_cirugias_por_fecha` AS select `horariosquirofano`.`Fecha` AS `Fecha`,timediff(`horariosquirofano`.`HoraFin`,`horariosquirofano`.`HoraInicio`) AS `Duracion_Operacion`,`horariosquirofano`.`Tipo` AS `Tipo` from `horariosquirofano` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pacientes_por_edad`
--

/*!50001 DROP VIEW IF EXISTS `vw_pacientes_por_edad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pacientes_por_edad` AS select `FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) AS `Edad`,count(0) AS `Total` from (`pacientes` `pa` join `personas` `p` on((`p`.`ID` = `pa`.`Persona_ID`))) group by `Edad` order by `Edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pacientes_por_genero`
--

/*!50001 DROP VIEW IF EXISTS `vw_pacientes_por_genero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pacientes_por_genero` AS select `p`.`Genero` AS `genero`,count(0) AS `TotalPacientes` from (`personas` `p` join `pacientes` `pa` on((`pa`.`Persona_ID` = `p`.`ID`))) where (`pa`.`Estatus_Vida` <> 'Finadao') group by `p`.`Genero` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pacientes_por_rango_edad`
--

/*!50001 DROP VIEW IF EXISTS `vw_pacientes_por_rango_edad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pacientes_por_rango_edad` AS select '0 a 1 año' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 0 and 1))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 0 and 1))) AS `M` union select '1 a 5 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 1 and 5))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 1 and 5))) AS `M` union select '6 a 15 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 6 and 15))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 6 and 15))) AS `M` union select '16 a 18 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 16 and 18))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 16 and 18))) AS `M` union select '19 a 30 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 19 and 30))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 19 and 30))) AS `M` union select '31 a 40 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 31 and 40))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 31 and 40))) AS `M` union select '41 a 50 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 41 and 50))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 41 and 50))) AS `M` union select '51 a 60 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 51 and 60))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) between 51 and 60))) AS `M` union select '+60 años' AS `Rango`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'F') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) > 60))) AS `F`,(select count(0) from (`personas` `p` join `pacientes` `pa` on((`p`.`ID` = `pa`.`Persona_ID`))) where ((`p`.`Genero` = 'M') and (`FN_CALCULA_EDAD`(`p`.`Fecha_Nacimiento`) > 60))) AS `M` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_resumen_horarios_por_tipoyfecha`
--

/*!50001 DROP VIEW IF EXISTS `vw_resumen_horarios_por_tipoyfecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_resumen_horarios_por_tipoyfecha` AS select `horariosquirofano`.`Fecha` AS `Fecha`,`horariosquirofano`.`Tipo` AS `Tipo`,count(0) AS `NumeroProcedimientos` from `horariosquirofano` group by `horariosquirofano`.`Fecha`,`horariosquirofano`.`Tipo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22 14:24:05
