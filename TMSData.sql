CREATE DATABASE  IF NOT EXISTS `tms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tms`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: tms
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `uname` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`),
  UNIQUE KEY `uname_UNIQUE` (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `branchID_UNIQUE` (`ID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Allahabad'),(3,'Delhi'),(4,'Farrukhabad'),(2,'Kanpur');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `company_UNIQUE` (`company`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'Bajaj Allianz'),(6,'Birla SunLife'),(3,'Edelweiss'),(2,'Max Life'),(5,'NULL'),(4,'United India');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `uname` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `branch_ID` int(10) unsigned NOT NULL,
  `salary_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uname`),
  UNIQUE KEY `uname_UNIQUE` (`uname`),
  KEY `fk_manager_branch_idx` (`branch_ID`),
  KEY `fk_manager_salary1_idx` (`salary_ID`),
  CONSTRAINT `fk_manager_branch` FOREIGN KEY (`branch_ID`) REFERENCES `branch` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_manager_salary1` FOREIGN KEY (`salary_ID`) REFERENCES `salary` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('akancha','akancha','Akancha Srivastava','1900-12-31','2016-07-14',4,2),('mv','mv','Mradul Verma','1996-02-15','2016-07-14',3,1),('shreya','shreya','Shreya Srivastava','1995-09-14','2016-07-14',2,4),('sudeepti','maurya','Sudeepti Maurya','1996-00-09','2016-00-13',1,1),('vikash','vikash','Vikash Gupta','1995-04-13','2016-07-14',1,3);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `managerdata`
--

DROP TABLE IF EXISTS `managerdata`;
/*!50001 DROP VIEW IF EXISTS `managerdata`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `managerdata` AS SELECT 
 1 AS `name`,
 1 AS `dob`,
 1 AS `doj`,
 1 AS `branch`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `managerlogin`
--

DROP TABLE IF EXISTS `managerlogin`;
/*!50001 DROP VIEW IF EXISTS `managerlogin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `managerlogin` AS SELECT 
 1 AS `uname`,
 1 AS `passwd`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `model_UNIQUE` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (3,'Chevy Silverado'),(4,'Dodge Ram'),(5,'Nissan Rugged'),(1,'Nissan Titan'),(2,'Toyota Thundra');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Aadarsh Kumar','+919452346932'),(2,'Bulbul Sharma','+919463123456'),(3,'Chirag Verma','+913265845632'),(4,'Drishti Srivastava','+913246326623'),(5,'Farukh Khan','+917652346595'),(6,'Gargi Garg','+918856213625'),(7,'Mradul Verma','null');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `msg` longtext,
  `user_email` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_queries_user1_idx` (`user_email`),
  CONSTRAINT `fk_queries_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (1,'Hey.','mohit00fbd@gmail.com'),(2,'Hey.','mohit00fbd@gmail.com'),(3,'Hey.','mohit00fbd@gmail.com'),(4,'Hey.','mohit00fbd@gmail.com'),(5,'hello','mohit00fbd@gmail.com'),(6,'Hi Mridual, Good work done by you. I think it is it is a gud example','dhananjay@gmail.com'),(7,'test message. test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.test message.','jay@gmail.com'),(8,'Hey, Mradul.','mohit00fbd@gmail.com'),(9,'Hey, Mradul. Hi.','mohit00fbd@gmail.com'),(10,'Hey, Mradul. Hi.','mohit00fbd@gmail.com'),(11,'Hey, Mradul. Hi.','mohit00fbd@gmail.com'),(12,'heya :)','mohit00fbd@gmail.com');
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fro` varchar(30) NOT NULL,
  `t` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,'Allahabad','Farrukhabad'),(2,'Allahabad','Delhi'),(3,'Allahabad','Kanpur'),(4,'Farrukhabad','Delhi'),(5,'Farrukhabad','Kanpur'),(6,'Farrukhabad','Allahabad'),(7,'Delhi','Farrukhabad'),(8,'Delhi','Kanpur'),(9,'Delhi','Allahabad'),(10,'Kanpur','Farrukhabad'),(11,'Kanpur','Delhi'),(12,'Kanpur','Allahabad');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `salary` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `salary_UNIQUE` (`salary`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (4,1),(2,10000),(3,10500),(1,50000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `status_UNIQUE` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (3,'Accidental'),(2,'Running'),(1,'Stalled');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truck` (
  `num` varchar(20) NOT NULL,
  `insurance` tinyint(1) NOT NULL,
  `model_ID` int(10) unsigned NOT NULL,
  `insurance_ID` int(11) NOT NULL,
  `owner_ID` int(10) unsigned NOT NULL,
  `routes_ID` int(11) NOT NULL,
  `status_ID` int(11) NOT NULL,
  PRIMARY KEY (`num`),
  UNIQUE KEY `num_UNIQUE` (`num`),
  KEY `fk_truck_model1_idx` (`model_ID`),
  KEY `fk_truck_insurance1_idx` (`insurance_ID`),
  KEY `fk_truck_owner1_idx` (`owner_ID`),
  KEY `fk_truck_routes1_idx` (`routes_ID`),
  KEY `fk_truck_status1_idx` (`status_ID`),
  CONSTRAINT `fk_truck_insurance1` FOREIGN KEY (`insurance_ID`) REFERENCES `insurance` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_truck_model1` FOREIGN KEY (`model_ID`) REFERENCES `model` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_truck_owner1` FOREIGN KEY (`owner_ID`) REFERENCES `owner` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_truck_routes1` FOREIGN KEY (`routes_ID`) REFERENCES `routes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_truck_status1` FOREIGN KEY (`status_ID`) REFERENCES `status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck`
--

LOCK TABLES `truck` WRITE;
/*!40000 ALTER TABLE `truck` DISABLE KEYS */;
INSERT INTO `truck` VALUES ('GW 83 F 8844',1,1,3,5,2,2),('KL 93 F 9932',0,2,5,6,5,3),('RJ 03 B 0934',1,1,2,2,6,2),('TN 43 BC 4920',1,5,6,7,7,1),('UK 49 A 0832',1,3,4,3,3,2),('UP 76 F 0945',0,4,5,1,1,1);
/*!40000 ALTER TABLE `truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `truckdata`
--

DROP TABLE IF EXISTS `truckdata`;
/*!50001 DROP VIEW IF EXISTS `truckdata`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `truckdata` AS SELECT 
 1 AS `num`,
 1 AS `insurance`,
 1 AS `company`,
 1 AS `model`,
 1 AS `name`,
 1 AS `fro`,
 1 AS `t`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Dhananjay','dhananjay@gmail.com','9935957744','http://mradul.me'),('Jay','jay@gmail.com','6677777','http://mradul.me'),('Mradul Verma','mohit00fbd@gmail.com','+919455296154','http://mradul.me'),('Shreya Srivastava','shreyasrivastava1111@gmail.com','9876543210','http://shreya.me');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `managerdata`
--

/*!50001 DROP VIEW IF EXISTS `managerdata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `managerdata` AS select `manager`.`name` AS `name`,`manager`.`dob` AS `dob`,`manager`.`doj` AS `doj`,`branch`.`name` AS `branch`,`salary`.`salary` AS `salary` from ((`manager` join `branch` on((`manager`.`branch_ID` = `branch`.`ID`))) join `salary` on((`salary`.`ID` = `manager`.`salary_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `managerlogin`
--

/*!50001 DROP VIEW IF EXISTS `managerlogin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `managerlogin` AS select `manager`.`uname` AS `uname`,`manager`.`passwd` AS `passwd`,`branch`.`name` AS `name` from (`manager` join `branch` on((`manager`.`branch_ID` = `branch`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `truckdata`
--

/*!50001 DROP VIEW IF EXISTS `truckdata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `truckdata` AS select `truck`.`num` AS `num`,`truck`.`insurance` AS `insurance`,`insurance`.`company` AS `company`,`model`.`model` AS `model`,`owner`.`name` AS `name`,`routes`.`fro` AS `fro`,`routes`.`t` AS `t`,`status`.`status` AS `status` from (((((`truck` join `insurance` on((`truck`.`insurance_ID` = `insurance`.`ID`))) join `model` on((`truck`.`model_ID` = `model`.`ID`))) join `owner` on((`truck`.`owner_ID` = `owner`.`ID`))) join `routes` on((`truck`.`routes_ID` = `routes`.`ID`))) join `status` on((`truck`.`status_ID` = `status`.`ID`))) */;
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

-- Dump completed on 2016-07-14 14:49:22
