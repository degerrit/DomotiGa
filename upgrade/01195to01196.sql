-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: domotiga
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.8

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
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `db` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (1,'0.1.166'),(2,'0.1.167'),(3,'0.1.168'),(4,'0.1.169'),(5,'0.1.170'),(6,'0.1.171'),(7,'0.1.172'),(8,'0.1.173'),(9,'0.1.174'),(10,'0.1.175'),(11,'0.1.176'),(12,'0.1.177'),(13,'0.1.178'),(14,'0.1.179'),(15,'0.1.180'),(16,'0.1.181'),(17,'0.1.182'),(18,'0.1.183'),(19,'0.1.184'),(20,'0.1.185'),(21,'0.1.186'),(22,'0.1.187'),(23,'0.1.188'),(24,'0.1.189'),(25,'0.1.190'),(26,'0.1.191'),(27,'0.1.192'),(28,'0.1.193'),(29,'0.1.194'),(30,'0.1.195'),(31,'0.1.196');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_rrdtool`
--

ALTER TABLE settings_rrdtool ADD rra varchar(256);

--
-- Dumping data for table `settings_rrdtool`
--

UPDATE settings_rrdtool SET rra = "RRA:AVERAGE:0.5:1:600 RRA:AVERAGE:0.5:2:600 RRA:AVERAGE:0.5:7:600 RRA:AVERAGE:0.5:30:600 RRA:AVERAGE:0.5:365:600" WHERE id = 0; 
UPDATE settings_rrdtool SET rra = "RRA:AVERAGE:0.5:1:600 RRA:AVERAGE:0.5:2:600 RRA:AVERAGE:0.5:7:600 RRA:AVERAGE:0.5:30:600 RRA:AVERAGE:0.5:365:600" WHERE id = 1; 

--
-- Converting data for table `triggers` and `actions`
--

UPDATE actions SET Param2 = REPLACE(Param2, "Value","") WHERE type = 1;

UPDATE triggers SET Param2 = REPLACE(Param2, "Value2","2") WHERE type = 3;
UPDATE triggers SET Param2 = REPLACE(Param2, "Value3","3") WHERE type = 3;
UPDATE triggers SET Param2 = REPLACE(Param2, "Value4","4") WHERE type = 3;
UPDATE triggers SET Param2 = REPLACE(Param2, "LastSeen","5") WHERE type = 3;
UPDATE triggers SET Param2 = REPLACE(Param2, "Value","1") WHERE type = 3;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-12 14:56:48
