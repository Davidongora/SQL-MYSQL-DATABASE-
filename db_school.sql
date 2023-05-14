-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: school
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
-- Current Database: `school`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `school` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `school`;

--
-- Table structure for table `tblapplicants`
--

DROP TABLE IF EXISTS `tblapplicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `MNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `SEX` varchar(11) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CONTACTNO` varchar(90) NOT NULL,
  `DEGREE` text NOT NULL,
  `APPLICANTPHOTO` varchar(255) NOT NULL,
  `NATIONALID` varchar(255) NOT NULL,
  PRIMARY KEY (`APPLICANTID`)
) ENGINE=InnoDB AUTO_INCREMENT=2018016 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblapplicants`
--

LOCK TABLES `tblapplicants` WRITE;
/*!40000 ALTER TABLE `tblapplicants` DISABLE KEYS */;
INSERT INTO `tblapplicants` VALUES (2018013,'Kim','Domingo','Enoe','Kab City','Female','none','1991-01-01','Kab Citys',27,'kim','a6312121e15caec74845b7ba5af23330d52d4ac0','kim@y.com','5415456','BSAC','photos/RobloxScreenShot20180406_203758793.png',''),(2018014,'Jake','Zyrus','Ilmba','Kab City','Female','none','1993-01-16','Kab City',25,'jake','c8d99c2f7cd5f432c163abcd422672b9f77550bb','jake@y.com','14655623123123','BSIT','',''),(2018015,'Janry','Tan','Lim','brgy 1 Kab City','Female','Single','1992-01-30','Kab City',26,'janry','1dd4efc811372cd1efe855981a8863d10ddde1ca','jan@gmail.com','0234234','BSIT','','');
/*!40000 ALTER TABLE `tblapplicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblattachmentfile`
--

DROP TABLE IF EXISTS `tblattachmentfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblattachmentfile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILEID` varchar(30) DEFAULT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(90) NOT NULL,
  `FILE_LOCATION` varchar(255) NOT NULL,
  `USERATTACHMENTID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblattachmentfile`
--

LOCK TABLES `tblattachmentfile` WRITE;
/*!40000 ALTER TABLE `tblattachmentfile` DISABLE KEYS */;
INSERT INTO `tblattachmentfile` VALUES (2,'2147483647',2,'Resume','photos/27052018124027PLATENO FE95483.docx',2018013);
/*!40000 ALTER TABLE `tblattachmentfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblautonumbers`
--

DROP TABLE IF EXISTS `tblautonumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL,
  PRIMARY KEY (`AUTOID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblautonumbers`
--

LOCK TABLES `tblautonumbers` WRITE;
/*!40000 ALTER TABLE `tblautonumbers` DISABLE KEYS */;
INSERT INTO `tblautonumbers` VALUES (1,'02983',7,1,'userid'),(2,'000',78,1,'employeeid'),(3,'0',16,1,'APPLICANT'),(4,'69125',29,1,'FILEID');
/*!40000 ALTER TABLE `tblautonumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(250) NOT NULL,
  PRIMARY KEY (`CATEGORYID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategory`
--

LOCK TABLES `tblcategory` WRITE;
/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
INSERT INTO `tblcategory` VALUES (10,'Technology'),(11,'Managerial'),(12,'Engineer'),(13,'IT'),(14,'Civil Engineer'),(15,'HR'),(23,'Sales'),(24,'Banking'),(25,'Finance'),(26,'BPO'),(27,'Degital Marketing'),(28,'Shipping');
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcompany`
--

DROP TABLE IF EXISTS `tblcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANYNAME` varchar(90) NOT NULL,
  `COMPANYADDRESS` varchar(90) NOT NULL,
  `COMPANYCONTACTNO` varchar(30) NOT NULL,
  `COMPANYSTATUS` varchar(90) NOT NULL,
  `COMPANYMISSION` text NOT NULL,
  PRIMARY KEY (`COMPANYID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcompany`
--

LOCK TABLES `tblcompany` WRITE;
/*!40000 ALTER TABLE `tblcompany` DISABLE KEYS */;
INSERT INTO `tblcompany` VALUES (2,'URC','Bry Camugao','023654','','weqwe'),(3,'Copreros','Mabinay\'s','035656','',''),(4,'Quest','Kabankalan City','23165','',''),(6,'Palacios Company','Kabankalan City','0625656899','',''),(7,'IT Company','Kabankalan City','04564123','','');
/*!40000 ALTER TABLE `tblcompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) NOT NULL,
  `CELLNO` varchar(30) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `WORKSTATS` varchar(90) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  PRIMARY KEY (`INCID`),
  UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemployees`
--

LOCK TABLES `tblemployees` WRITE;
/*!40000 ALTER TABLE `tblemployees` DISABLE KEYS */;
INSERT INTO `tblemployees` VALUES (76,'2018001','Chambe','Narciso','Captain','mabinay','1992-01-23','Mabinay',26,'Male','Married','032656','chambe@yahoo.com','','Fuel Tender','','','2018001','f3593fd40c55c33d1788309d4137e82f5eab0dea','2018-05-23',2);
/*!40000 ALTER TABLE `tblemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` text NOT NULL,
  PRIMARY KEY (`FEEDBACKID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfeedback`
--

LOCK TABLES `tblfeedback` WRITE;
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbljob`
--

DROP TABLE IF EXISTS `tbljob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) NOT NULL,
  `OCCUPATIONTITLE` varchar(90) NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` double NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` text NOT NULL,
  `JOBDESCRIPTION` text NOT NULL,
  `PREFEREDSEX` varchar(30) NOT NULL,
  `SECTOR_VACANCY` text NOT NULL,
  `JOBSTATUS` varchar(90) NOT NULL,
  `DATEPOSTED` datetime NOT NULL,
  PRIMARY KEY (`JOBID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbljob`
--

LOCK TABLES `tbljob` WRITE;
/*!40000 ALTER TABLE `tbljob` DISABLE KEYS */;
INSERT INTO `tbljob` VALUES (1,2,'Technology','ISD',6,15000,'jan 30','Two year Experience','We are looking for bachelor of science in information technology.\r\nasdasdasd','Male/Female','yes','','2018-05-20 00:00:00'),(2,2,'Technology','Accounting',1,15000,'may 20','Two years Experience','We are looking for bachelor of science in Acountancy','Female','yes','','2018-05-20 02:33:00');
/*!40000 ALTER TABLE `tbljob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbljobregistration`
--

DROP TABLE IF EXISTS `tbljobregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) NOT NULL DEFAULT 'Pending',
  `FILEID` varchar(30) DEFAULT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT 1,
  `HVIEW` tinyint(1) NOT NULL DEFAULT 1,
  `DATETIMEAPPROVED` datetime NOT NULL,
  PRIMARY KEY (`REGISTRATIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbljobregistration`
--

LOCK TABLES `tbljobregistration` WRITE;
/*!40000 ALTER TABLE `tbljobregistration` DISABLE KEYS */;
INSERT INTO `tbljobregistration` VALUES (1,2,2,2018013,'Kim Domingo','2018-05-27','Ive seen your work and its really interesting','2147483647',0,1,'2018-05-26 16:13:01'),(2,2,2,2018015,'Janry Tan','2018-05-26','aasd','2147483647',0,0,'2018-05-28 14:14:45');
/*!40000 ALTER TABLE `tbljobregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusers` (
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(40) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PICLOCATION` varchar(255) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` VALUES ('00018','Campcodes','admin','d033e22ae348aeb5660fc2140aec35850c4da997','Administrator','photos/Koala.jpg'),('2018001','Chambe Narciso','Narciso','f3593fd40c55c33d1788309d4137e82f5eab0dea','Employee','');
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 13:44:51
