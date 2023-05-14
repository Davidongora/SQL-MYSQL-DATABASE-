-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: voting
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `voting`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `voting` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `voting`;

--
-- Table structure for table `category_list`
--

DROP TABLE IF EXISTS `category_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_list`
--

LOCK TABLES `category_list` WRITE;
/*!40000 ALTER TABLE `category_list` DISABLE KEYS */;
INSERT INTO `category_list` VALUES (1,'President'),(3,'Vice Presindent'),(4,'Officer');
/*!40000 ALTER TABLE `category_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1+admin , 2 = users',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dave','dave','dave',1),(2,'dave','dave','dave',1),(3,'dave','dave','dave',2),(5,'dave','dave','dave',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `voting_opt_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,1,1,1,3),(2,1,3,5,3),(3,1,4,6,3),(4,1,4,7,3),(5,1,4,8,3),(6,1,4,9,3),(7,1,1,3,4),(8,1,3,12,4),(9,1,4,6,4),(10,1,4,8,4),(11,1,4,10,4),(12,1,4,11,4),(13,1,1,1,5),(14,1,3,5,5),(15,1,4,6,5);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_cat_settings`
--

DROP TABLE IF EXISTS `voting_cat_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_cat_settings` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `max_selection` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_cat_settings`
--

LOCK TABLES `voting_cat_settings` WRITE;
/*!40000 ALTER TABLE `voting_cat_settings` DISABLE KEYS */;
INSERT INTO `voting_cat_settings` VALUES (1,1,1,1),(2,1,3,1),(3,1,4,4);
/*!40000 ALTER TABLE `voting_cat_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_list`
--

DROP TABLE IF EXISTS `voting_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_list`
--

LOCK TABLES `voting_list` WRITE;
/*!40000 ALTER TABLE `voting_list` DISABLE KEYS */;
INSERT INTO `voting_list` VALUES (4,'SSG Election','For SSG election',1);
/*!40000 ALTER TABLE `voting_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voting_opt`
--

DROP TABLE IF EXISTS `voting_opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voting_opt` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text NOT NULL,
  `opt_txt` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_opt`
--

LOCK TABLES `voting_opt` WRITE;
/*!40000 ALTER TABLE `voting_opt` DISABLE KEYS */;
INSERT INTO `voting_opt` VALUES (1,1,1,'1600398180_no-image-available.png','James Smith'),(3,1,1,'1600415460_avatar2.png','James Wilson'),(5,1,3,'1600415520_avatar.jpg','George Walker'),(6,1,4,'1600400340_no-image-available.png','Cadidate 1'),(7,1,4,'1600400340_no-image-available.png','Cadidate 2'),(8,1,4,'1600400340_no-image-available.png','Cadidate 3'),(9,1,4,'1600400520_no-image-available.png','Cadidate  4'),(10,1,4,'1600400640_no-image-available.png','Cadidate 5'),(11,1,4,'1600400400_no-image-available.png','Cadidate 6'),(12,1,3,'1600415520_no-image-available.png','Claire Blake'),(13,4,1,'1614206040_IMG20210207174817[1].jpg','Adrian Mercurio'),(14,4,1,'1614206100_jude.jpg','Angel Jude Suarez'),(15,4,3,'1614206220_IMG20210223174532[1].jpg','Adones Evangelista'),(16,4,3,'1614206340_IMG20210210175225[1].jpg','Saxon Ong'),(17,4,3,'1614206400_IMG20210219143530[1].jpg','Prince Ly Cesar');
/*!40000 ALTER TABLE `voting_opt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 13:44:07
