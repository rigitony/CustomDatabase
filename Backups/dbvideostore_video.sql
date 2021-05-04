CREATE DATABASE  IF NOT EXISTS `dbvideostore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbvideostore`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbvideostore
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `Video_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `production_date` date DEFAULT NULL,
  `star_actors` varchar(45) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `director` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Scorpion King','2002-04-19','Dwayne Johnson, Steven Brand','Sean Daniel','Chuck Russell'),(2,'Harry Potter and the Sorcerer’s Stone','2001-11-16','Daniel Radcliffe, Rupert Grint','Michael Barnathan','Chris Columbus'),(3,'Lord of the Rings: The Return of the King','2003-12-17','Elijah Wood, Viggo Mortensen','Michael Lynne','Peter Jackson'),(4,'League of Extraordinary Gentleman','2003-07-11','Sean Connery, Stuart Townsend','Trevor Albert','Stephen Norrington'),(5,'Waterworld','1995-07-28','Kevin Costner, Jeanne Tripplehorn','John Davis ','Kevin Reynolds'),(6,'The Matrix','1999-03-31','Keanu Reeves, Laurence Fishburne','Bruce Berman','Lana Wachowski, Lilly Wachowski'),(7,'X-Men','2000-07-14','Patrick Stewart, Hugh Jackman','Avi Arad','Bryan Singer'),(8,'Mulan','1998-06-19','Ming-Na Wen, Eddie Murphy','Pam Coats','Tony Bancroft, Barry Cook'),(9,'The Chronicles of Riddick','2004-06-11','Vin Diesel, Judi Dench','Ted Field','David Twohy'),(10,'Mortal Kombat','1995-08-18','Christopher Lambert, Robin Shou','Robert Engelman','Paul W.S. Anderson');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-06 12:41:16
