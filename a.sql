-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: siqin
-- ------------------------------------------------------
-- Server version	5.1.73-log

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
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Classes` (
  `ClassID` int(16) NOT NULL DEFAULT '0',
  `class` char(32) DEFAULT NULL,
  `NumofStu` int(16) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,'chinese',10),(2,'math',7),(3,'english',11),(4,'physical',12),(5,'chemistry',31),(6,'biology',27),(7,'politics',27),(8,'history',15);
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coc`
--

DROP TABLE IF EXISTS `coc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coc` (
  `ID` int(8) NOT NULL DEFAULT '0',
  `ClassID` int(8) DEFAULT NULL,
  `CourseID` int(8) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coc`
--

LOCK TABLES `coc` WRITE;
/*!40000 ALTER TABLE `coc` DISABLE KEYS */;
INSERT INTO `coc` VALUES (1,1,2),(2,1,5),(3,2,2),(4,2,6),(5,3,1),(6,3,7),(7,4,5),(8,4,2),(9,5,1),(10,5,9),(11,6,3),(12,6,4),(13,7,4),(14,7,4);
/*!40000 ALTER TABLE `coc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `CourseID` int(8) NOT NULL DEFAULT '0',
  `Course` char(32) DEFAULT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'xie zuowen'),(2,'dai shu'),(3,'bei danci'),(4,'xiangduilun'),(5,'fangchengshi'),(6,'kun chongxue'),(7,'renda dabiao');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `stuID` int(32) NOT NULL DEFAULT '0',
  `Name` char(16) DEFAULT NULL,
  `age` int(16) DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `ClassID` int(16) DEFAULT NULL,
  `teacherID` int(8) DEFAULT NULL,
  PRIMARY KEY (`stuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'zhaoyun',22,'M',2,2),(2,'machao',22,'M',1,7),(3,'guanyu',25,'M',2,16),(4,'masu',32,'M',4,4),(5,'zhangfei',26,'M',3,2),(6,'xuchu',46,'M',5,NULL),(7,'sun shangxiang',19,'F',3,NULL),(8,'xiaoqiao',19,'F',7,NULL),(9,'daqiao',20,'F',6,NULL),(10,'huang yueying',19,'F',3,NULL),(11,'zhouyu',23,'M',6,NULL),(12,'diaochan',19,'F',1,NULL),(13,'lvbu',33,'M',2,NULL),(14,'bu lianshi',17,'F',3,NULL),(15,'guojia',19,'M',4,NULL),(16,'guanxing',21,'M',1,NULL),(17,'caozhi',25,'M',4,NULL),(18,'caozhang',23,'M',7,NULL),(19,'cai wenji',18,'F',6,NULL),(20,'zhurong',19,'F',7,NULL),(21,'zoushi',22,'F',6,NULL),(22,'fanshi',20,'F',1,NULL),(23,'zhangliao',23,'M',4,NULL),(24,'xushu',27,'M',NULL,NULL),(25,'sun wukong',100,'M',NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `TID` int(8) NOT NULL DEFAULT '0',
  `Name` char(16) DEFAULT NULL,
  `Age` int(8) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'caocao',55,'M'),(2,'liubei',53,'M'),(3,'sunquan',50,'M'),(4,'zhu geliang',45,'M');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-07 15:52:12
