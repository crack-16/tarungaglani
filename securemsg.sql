-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: securemsg
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addcontact`
--

DROP TABLE IF EXISTS `addcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `addcontact` (
  `adder` varchar(10) DEFAULT NULL,
  `mobno` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addcontact`
--

LOCK TABLES `addcontact` WRITE;
/*!40000 ALTER TABLE `addcontact` DISABLE KEYS */;
INSERT INTO `addcontact` VALUES ('8928566633','8149995883','Vandan  Karwa'),('8928566633','8793034801','Tejas Pokale'),('8928566633','9403621961','Rutvik Agrawal'),('8149995883','8928566633','Tarun Gaglani'),('8149995883','8793034801','Tejas Pokale'),('8149995883','9403621961','Rutvik Agrawal'),('8928566633','8888222200','Deepika  Padukone'),('8928566633','8080808080','Narendra Modi'),('8928566633','7744000022','Sardar Khan'),('8928566633','9404105512','Kabir  Singh'),('8928566633','9988776655','Katrina  Kaif'),('8928566633','7030715545','Faizal  Khan');
/*!40000 ALTER TABLE `addcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addgroup`
--

DROP TABLE IF EXISTS `addgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `addgroup` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `grpname` varchar(50) DEFAULT NULL,
  `adminn` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addgroup`
--

LOCK TABLES `addgroup` WRITE;
/*!40000 ALTER TABLE `addgroup` DISABLE KEYS */;
INSERT INTO `addgroup` VALUES (3,'Crack','8928566633','active'),(4,'Family','8928566633','active');
/*!40000 ALTER TABLE `addgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupinfo`
--

DROP TABLE IF EXISTS `groupinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `groupinfo` (
  `msgno` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) DEFAULT NULL,
  `sender` varchar(10) DEFAULT NULL,
  `datee` varchar(15) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `message` varbinary(500) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  PRIMARY KEY (`msgno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupinfo`
--

LOCK TABLES `groupinfo` WRITE;
/*!40000 ALTER TABLE `groupinfo` DISABLE KEYS */;
INSERT INTO `groupinfo` VALUES (3,'Crack','8149995883','13/07/2019','18:16:39',']á\ˆYº~KŒèózGŒ∑ó_',3),(4,'Crack','8928566633','13/07/2019','19:51:50','%\Ztrd266[#ˇmàF',3);
/*!40000 ALTER TABLE `groupinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grpcontact`
--

DROP TABLE IF EXISTS `grpcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grpcontact` (
  `groupid` int(11) DEFAULT NULL,
  `addedbyadmin` varchar(10) DEFAULT NULL,
  `adder` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grpcontact`
--

LOCK TABLES `grpcontact` WRITE;
/*!40000 ALTER TABLE `grpcontact` DISABLE KEYS */;
INSERT INTO `grpcontact` VALUES (3,'8928566633','8928566633'),(3,'8149995883','8928566633'),(3,'8793034801','8928566633'),(4,'8928566633','8928566633'),(4,'8888222200','8928566633');
/*!40000 ALTER TABLE `grpcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `info` (
  `msgno` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) DEFAULT NULL,
  `receiver` varchar(10) DEFAULT NULL,
  `datee` varchar(15) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `message` varbinary(500) DEFAULT NULL,
  PRIMARY KEY (`msgno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'8149995883','8928566633','11/07/2019','14:15:56','\\RQæ¿47µ˘\ˆµC ub'),(2,'8928566633','8149995883','11/07/2019','14:16:45','=häNhH]o)øw\Ó‘é•'),(3,'8928566633','8888222200','13/07/2019','16:57:44','A@X?ˇUO\‡˚\‡\"\Œ6\Õ'),(4,'8928566633','8888222200','13/07/2019','16:57:51','-a†öB\ÃˇÕëO\ \ÿN\n4\Â'),(5,'8149995883','8928566633','13/07/2019','18:16:17','\\\Ã\·k©˛ç™™å\Ì\ƒ^ç'),(6,'8928566633','8149995883','13/07/2019','19:51:42','\ \ﬁ2\À(O*(`¡\Ú\∆U\ƒ\˜');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `mobno` varchar(10) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `Ques` varchar(50) DEFAULT NULL,
  `Ans` varchar(50) DEFAULT NULL,
  `loginas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('8928566633','Tarun@123','active','Which is your favourite tourist destination?','goa','user'),('8149995883','Vandan@123','active','What is your pet name?','vinay','user'),('8793034801','Tejas@123','active','Which is your favourite colour?','red','user'),('9403621961','Rutvik@123','active','Which is your favourite colour?','blue','user'),('9988776655','Katrina@123','active','Which is your favourite colour?','red','user'),('8888222200','Deepika@123','deactive','Which is your favourite colour?','cv','user'),('8080808080','Modi@123','active','Which is your birth place?','college','user'),('7744000022','Sardar@123','active','Which is your favourite tourist destination?','amt','user'),('9404105512','Kabir@123','active','Which is your favourite colour?','Yellow','user'),('123','1010','active','no','no','admin'),('7030715545','Faizal@123','active','Which is your birth place?','up','user'),('9876543210','Guddu@123','active','Which is your favourite colour?','black','user'),('8585858585','Guddu@123','active','Which is your favourite colour?','black','user'),('9876543210','Guduu@123','active','Which is your favourite colour?','black','user');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profile` (
  `name` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `dobirth` varchar(30) DEFAULT NULL,
  `mobno` varchar(10) NOT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mobno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES ('Faizal ','Khan','2000-12-02','7030715545','f@gmail.com','Chhattisgarh','Wasseypur','2015_9image_11_13_204617096gangsofwassepur-ll.jpg'),('Sardar','Khan','2008-12-01','7744000022','s@gmail.com','Haryana','Wassseypur','Sardar_Khan.png'),('Narendra','Modi','2008-01-31','8080808080','n@gmail.com','Gujarat','Ahmedabad','High1.jpg'),('Vandan ','Karwa','2007-12-05','8149995883','vandankarwa@gmail.com','Maharashtra','Amravati','salman_5.jpeg'),('Tejas','Pokale','1998-11-08','8793034801','tejpokale88@gmail.com','Maharashtra','Aurangabad','tom_and_jerry_PNG56.png'),('Deepika ','Padukone','2006-12-01','8888222200','d@gmail.com','Delhi','Delhi','MAIN_0.jpg'),('Tarun','Gaglani','1993-12-03','8928566633','tarungaglani1@gmail.com','Maharashtra','Aurangabad','IMG_20180816_135502_917.jpg'),('Rutvik','Agrawal','2000-02-03','9403621961','rutviksagrawal@gmail.com','Bihar','Badlapur','unnamed.jpg'),('Kabir ','Singh','2006-01-31','9404105512','k@gmail.com','Goa','Madgaon','kabir_singh_660_062119102403.jpg'),('Guddu ','Bhaiya','2008-12-31','9876543210','g@gmail.com','Bihar','Bhopal','Ali-Fazal-866x956.jpg'),('Katrina ','Kaif','2005-12-03','9988776655','kat@gmail.com','Maharashtra','Mumbai','23TH-KATRINA.AR+23TH_KATRINA.jpg.jpg');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `testdecrypt`
--

DROP TABLE IF EXISTS `testdecrypt`;
/*!50001 DROP VIEW IF EXISTS `testdecrypt`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `testdecrypt` AS SELECT 
 1 AS `sender`,
 1 AS `receiver`,
 1 AS `message`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `testdecrypt1`
--

DROP TABLE IF EXISTS `testdecrypt1`;
/*!50001 DROP VIEW IF EXISTS `testdecrypt1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `testdecrypt1` AS SELECT 
 1 AS `groupname`,
 1 AS `sender`,
 1 AS `message`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `testdecrypt`
--

/*!50001 DROP VIEW IF EXISTS `testdecrypt`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `testdecrypt` AS select `info`.`sender` AS `sender`,`info`.`receiver` AS `receiver`,aes_decrypt(`info`.`message`,'usa2010') AS `message` from `info` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `testdecrypt1`
--

/*!50001 DROP VIEW IF EXISTS `testdecrypt1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `testdecrypt1` AS select `groupinfo`.`groupname` AS `groupname`,`groupinfo`.`sender` AS `sender`,aes_decrypt(`groupinfo`.`message`,'usa2010') AS `message` from `groupinfo` */;
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

-- Dump completed on 2019-07-24 13:18:44
