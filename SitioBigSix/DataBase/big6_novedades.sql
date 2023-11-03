-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: big6
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novedades` (
  `id_novedades` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) DEFAULT NULL,
  `subtitulo` text,
  `cuerpo` text,
  PRIMARY KEY (`id_novedades`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novedades`
--

LOCK TABLES `novedades` WRITE;
/*!40000 ALTER TABLE `novedades` DISABLE KEYS */;
INSERT INTO `novedades` VALUES (1,'Sexta victoria al hilo para el Atlético de Simeone en España','Derrotó 2-1 a Alavés y quedó, con un partido menos, a tres del líder Real Madrid. De Paul y Molina fueron titulares, Correa entró en el ST.','El Atlético del Cholo Simeone no para de ganar en la Liga de España. Y se ilusiona. Si bien la temporada es larga, anhela pelear bien arriba. Este domingo venció 2-1 a Alavés y quedó, con un partido menos, a tres puntos del líder Real Madrid. Rodrigo de Paul y Nahuel Molina fueron titulares, Angelito Correa entró en el ST.'),(2,'La lapidaria crítica de Gündogan a sus compañeros del Barcelona','Tras perder el clásico contra el Real Madrid, el alemán fue enfático al señalar que el ánimo en el vestuario estaba un tanto más light de lo que esperaba.','lkay Gündogan sorprendió con sus críticas a sus compañeros del Barcelona luego de la derrota en el clásico disputado en Montjuic ante el Real Madrid. El alemán de 33 años habló con la transmisión oficial y, aunque intentó medirse, no lo consiguió…'),(3,'La terrible agresión de los hinchas del Olympique de Marsella al Lyon de Tagliafico','La hinchada del equipo local apedreó al micro rival y Fabio Grosso, el entrenador, terminó herido. El partido fue suspendido.','Horas antes del inicio del clásico entre el Olympique de Marsella y el Lyon de Nicolás Tagliafico, se dio un incidente dramático: hinchas del conjunto local recibieron al micro del equipo de Taglia con piedrazos. Uno de ellos impactó al entrenador, Fabio Grosso, quien terminó herido y sangrando. El partido, que estaba programado para las 16.45, fue suspendido.'),(6,'Manchester United complicado con el DT','tem hag','12|1');
/*!40000 ALTER TABLE `novedades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 22:28:57
