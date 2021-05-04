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
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `Rental_id` int(11) NOT NULL AUTO_INCREMENT,
  `Video_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `checkout_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `checkin_date` date DEFAULT NULL,
  `late_status` enum('LATE','NOT LATE') DEFAULT NULL,
  `rental_fees_accrued` int(10) DEFAULT NULL,
  PRIMARY KEY (`Rental_id`,`Video_id`,`Customer_id`),
  KEY `fk_Video_idx` (`Video_id`),
  KEY `fk_Customer_idx` (`Customer_id`),
  CONSTRAINT `fk_Customer` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Video` FOREIGN KEY (`Video_id`) REFERENCES `video` (`Video_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,2,3,'2019-09-05','2019-10-05','2019-11-05','LATE',15),(2,5,4,'2019-09-14','2019-10-14',NULL,'LATE',15),(3,8,2,'2019-11-01','2019-12-01',NULL,'NOT LATE',NULL),(4,7,5,'2019-10-20','2019-11-20','2019-11-05','NOT LATE',NULL),(5,3,7,'2019-09-22','2019-10-22','2019-11-05','LATE',15);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
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
