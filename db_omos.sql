-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: omos
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
-- Current Database: `omos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `omos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `omos`;

--
-- Table structure for table `cart_list`
--

DROP TABLE IF EXISTS `cart_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `customer_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `customer_id_fk_cl` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `product_id_fk_cl` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_list`
--

LOCK TABLES `cart_list` WRITE;
/*!40000 ALTER TABLE `cart_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_list`
--

DROP TABLE IF EXISTS `category_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_list`
--

LOCK TABLES `category_list` WRITE;
/*!40000 ALTER TABLE `category_list` DISABLE KEYS */;
INSERT INTO `category_list` VALUES (1,'Tablet','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nisl neque, tincidunt eu imperdiet eget, fringilla ut magna. Fusce in auctor nisl, a efficitur nisi. Vestibulum venenatis velit pharetra mauris dictum ultrices quis et quam. Donec sollicitudin condimentum lectus, vel convallis ipsum sodales id.',1,0,'2022-05-25 10:14:16','2022-05-25 10:16:27'),(2,'Capsule','Suspendisse accumsan mollis quam. Etiam ut dolor felis. Proin maximus eros tortor, et condimentum massa mollis nec. Fusce gravida posuere purus et tempor. Phasellus commodo auctor justo, tempus pellentesque nunc condimentum id.',1,0,'2022-05-25 10:16:05','2022-05-25 10:16:05'),(3,'Syrup','Sample category 101',1,0,'2022-05-26 10:57:14','2022-05-26 10:57:14'),(4,'Test 123 - updated','Sample Only',1,1,'2022-05-26 10:57:31','2022-05-26 10:58:45');
/*!40000 ALTER TABLE `category_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_list`
--

DROP TABLE IF EXISTS `customer_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_list`
--

LOCK TABLES `customer_list` WRITE;
/*!40000 ALTER TABLE `customer_list` DISABLE KEYS */;
INSERT INTO `customer_list` VALUES (1,'Mark','D','Cooper','Male','09123564789','mcooper@gmail.com','c7162ff89c647f444fcaa5c635dac8c3','uploads/customers/1.png?v=1653530034','2022-05-25 13:21:28','2022-05-26 09:53:54'),(3,'Samantha Jane','C','Miller','Female','09456987123','sam23@gmail.com','b60367cae35de6594b1a09bf44a3a68b','uploads/customers/3.png?v=1653533693','2022-05-26 10:54:53','2022-05-26 10:55:06');
/*!40000 ALTER TABLE `customer_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL DEFAULT 0,
  `price` float(12,2) NOT NULL,
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_id_fk_oi` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `product_id_fk_oi` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,2,4,7.00),(1,4,5,20.00),(1,3,3,25.00),(3,3,2,25.00),(4,3,3,25.00),(4,1,3,10.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `total_amount` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,\r\n1=packed,\r\n2=out for delivery,\r\n3=paid\r\n',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_id_fk_ol` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES (1,'20212165468',1,'Sample Address Only.',203.00,3,'2022-05-25 16:36:09','2022-05-26 09:10:58'),(3,'2022052600001',1,'test',50.00,0,'2022-05-26 09:22:37','2022-05-26 09:22:37'),(4,'2022052600002',3,'Sample Address to deliver',105.00,3,'2022-05-26 10:56:25','2022-05-26 11:03:01');
/*!40000 ALTER TABLE `order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_list`
--

DROP TABLE IF EXISTS `product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `category_id` int(30) NOT NULL,
  `brand` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `dose` varchar(250) NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id_fk_pl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_list`
--

LOCK TABLES `product_list` WRITE;
/*!40000 ALTER TABLE `product_list` DISABLE KEYS */;
INSERT INTO `product_list` VALUES (1,2,'Brand 101','Mefenamic','Proin aliquam mollis erat nec sodales. Integer ipsum ipsum, vulputate a ipsum quis, auctor tincidunt quam. Curabitur ornare nisl interdum sollicitudin lobortis. Curabitur blandit lacinia est, id rutrum mi ultrices sit amet.','500mg',10.00,'uploads/medicines//1_tablet.jpeg?v=1653447989',1,0,'2022-05-25 11:06:29','2022-05-25 11:08:43'),(2,2,'Brand 101','Amoxicillin','Aliquam porttitor diam nunc, eu imperdiet mi vulputate ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean congue commodo tristique. Proin congue consequat fringilla. Cras bibendum consectetur ipsum eu ultrices. Integer aliquet mauris eu pharetra venenatis.','250',7.00,'uploads/medicines//capsule.jpg?v=1653448223',1,0,'2022-05-25 11:10:23','2022-05-25 11:10:23'),(3,1,'Brand 102','Drug 101','Ut tristique felis sit amet nisl malesuada, id rutrum ligula iaculis. Pellentesque posuere urna dapibus semper vehicula. Donec ex massa, vestibulum eu lorem ut, malesuada volutpat eros. Suspendisse efficitur dolor ut nulla aliquet, non blandit ex finibus. Nunc ac justo vitae eros dapibus mattis id ut ante.','25mg',25.00,'uploads/medicines//pill.jfif?v=1653448296',1,0,'2022-05-25 11:11:36','2022-05-25 11:11:36'),(4,1,'Brand 103','Drug 102','Vivamus pretium lectus in enim lobortis, vel scelerisque purus pulvinar. Nam pulvinar blandit ligula sed facilisis. Phasellus venenatis lectus quis euismod vestibulum. Aliquam gravida a risus ut aliquet. Duis rhoncus neque id lectus vestibulum varius. In tristique porta viverra.','50mg',20.00,NULL,1,0,'2022-05-25 14:18:48','2022-05-25 14:18:48'),(5,3,'Brand 103','Medicine #101','This is a sample product only- updated','280ml',375.00,'uploads/medicines//syrup.jpg?v=1653533984',1,0,'2022-05-26 10:59:44','2022-05-26 10:59:56');
/*!40000 ALTER TABLE `product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_list`
--

DROP TABLE IF EXISTS `stock_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `product_id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `quantity` float(12,2) NOT NULL DEFAULT 0.00,
  `expiration` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_id_fk_sl` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_list`
--

LOCK TABLES `stock_list` WRITE;
/*!40000 ALTER TABLE `stock_list` DISABLE KEYS */;
INSERT INTO `stock_list` VALUES (1,2,'1236548',50.00,'2022-05-27','2022-05-25 11:48:05','2022-05-25 11:48:05'),(2,2,'8754665',15.00,'2023-05-25','2022-05-25 11:54:40','2022-05-25 11:58:07'),(3,2,'111',35.00,'2022-05-24','2022-05-25 11:58:24','2022-05-25 11:58:24'),(4,1,'1231',35.00,'2023-05-26','2022-05-25 12:06:04','2022-05-25 12:06:04'),(5,3,'123111',50.00,'2023-05-26','2022-05-25 12:06:19','2022-05-25 12:06:19'),(6,4,'89756452',30.00,'2025-06-23','2022-05-25 14:19:25','2022-05-25 14:19:25'),(7,5,'06231415',50.00,'2023-05-27','2022-05-26 11:01:03','2022-05-26 11:01:03'),(8,5,'9875652',15.00,'2022-05-09','2022-05-26 11:01:21','2022-05-26 11:01:41');
/*!40000 ALTER TABLE `stock_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_out`
--

DROP TABLE IF EXISTS `stock_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_out` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `order_id` int(30) NOT NULL,
  `stock_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `stock_id` (`stock_id`),
  CONSTRAINT `order_id_fk_so` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `stock_id_fk_so` FOREIGN KEY (`stock_id`) REFERENCES `stock_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_out`
--

LOCK TABLES `stock_out` WRITE;
/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_info`
--

DROP TABLE IF EXISTS `system_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_info` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_info`
--

LOCK TABLES `system_info` WRITE;
/*!40000 ALTER TABLE `system_info` DISABLE KEYS */;
INSERT INTO `system_info` VALUES (1,'name','Online Medicine Ordering System'),(6,'short_name','OMOS - PHP'),(11,'logo','uploads/logo.png?v=1653443580'),(13,'user_avatar','uploads/user_avatar.jpg'),(14,'cover','uploads/cover.png?v=1653443581'),(17,'phone','456-987-1231'),(18,'mobile','09123456987 / 094563212222 '),(19,'email','info@sample.com'),(20,'address','7087 Henry St. Clifton Park, NY 12065');
/*!40000 ALTER TABLE `system_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Adminstrator','','Admin','admin','0192023a7bbd73250516f069df18b500','uploads/avatars/1.png?v=1649834664',NULL,1,'2021-01-20 14:02:37','2022-05-16 14:17:49'),(7,'John','D','Smith','jsmith','1254737c076cf867dc53d60a0364f38e',NULL,NULL,2,'2022-05-26 11:04:16','2022-05-26 11:04:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 13:30:28
