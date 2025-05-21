CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.19-MariaDB

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
-- Table structure for table `accountant`
--

DROP TABLE IF EXISTS `accountant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountant` (
  `Accountant_ID` int(11) NOT NULL,
  `A_Name` char(15) NOT NULL,
  `CNIC` double NOT NULL,
  `Salary` int(11) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`Accountant_ID`),
  UNIQUE KEY `CNIC` (`CNIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountant`
--

LOCK TABLES `accountant` WRITE;
/*!40000 ALTER TABLE `accountant` DISABLE KEYS */;
INSERT INTO `accountant` VALUES (1,'Ali',3110493297595,15000,19),(2,'Ahmad',3610493296956,34000,56),(3,'Raza',3010493297595,25000,45),(4,'Mohid',3100493274740,19000,35),(5,'Fakhr',3110493264490,55000,39),(6,'Hassan',3110473808795,76000,37),(7,'Hussain',3546793279795,98000,47),(8,'Arshad',3220493296658,45000,21),(9,'Abu Bakar',3550493297595,23000,27),(10,'Allah Ditta',3110493238935,51000,42),(11,'Azhar',3110493294673,150000,42);
/*!40000 ALTER TABLE `accountant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountant_address`
--

DROP TABLE IF EXISTS `accountant_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountant_address` (
  `A_ID` int(11) NOT NULL,
  `House_No` varchar(10) NOT NULL,
  `Town` varchar(15) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Country` varchar(10) NOT NULL,
  KEY `A_ID` (`A_ID`),
  CONSTRAINT `accountant_address_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `accountant` (`Accountant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountant_address`
--

LOCK TABLES `accountant_address` WRITE;
/*!40000 ALTER TABLE `accountant_address` DISABLE KEYS */;
INSERT INTO `accountant_address` VALUES (1,'12E','Bahria Town','Lahore','Pakistan'),(2,'12s','Defence','Lahore','Pakistan'),(3,'12E','PakistanCity','Haroonabad','Pakistan'),(4,'12E','BahriaTown','Karachi','Pakistan'),(5,'13E3','AlbertTown','Barmingum','England'),(6,'13','AnmolCity','Chistian','Pakistan'),(7,'13Paradise','SuperTown','Lahore','Pakistan'),(8,'09','GreenTown','Bahawalnagar','Pakistan'),(9,'54C','BahriaTown','Lahore','Pakistan'),(10,'158F','ShahKhawarTown','Lahore','Pakistan'),(11,'02E','RiazAvenue','Islamabad','Pakistan');
/*!40000 ALTER TABLE `accountant_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountant_email`
--

DROP TABLE IF EXISTS `accountant_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountant_email` (
  `A_ID` int(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  KEY `A_ID` (`A_ID`),
  CONSTRAINT `accountant_email_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `accountant` (`Accountant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountant_email`
--

LOCK TABLES `accountant_email` WRITE;
/*!40000 ALTER TABLE `accountant_email` DISABLE KEYS */;
INSERT INTO `accountant_email` VALUES (1,'ghummanabubakar@gmail.com'),(2,'aliraza@gmail.com'),(3,'ghummanabuzar@gmail.com'),(4,'arshadali@gmail.com'),(5,'rahansarwar@gmail.com'),(6,'abdulquddoss@gmail.com'),(7,'alihassan@gmail.com'),(8,'fakhrshahzad@gmail.com'),(8,'mohisahmad@gmail.com'),(9,'ahmadbilal@gmail.com'),(2,'shakeel@gmail.com');
/*!40000 ALTER TABLE `accountant_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountant_phone`
--

DROP TABLE IF EXISTS `accountant_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountant_phone` (
  `A_ID` int(11) NOT NULL,
  `Phone` double DEFAULT NULL,
  KEY `A_ID` (`A_ID`),
  CONSTRAINT `accountant_phone_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `accountant` (`Accountant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountant_phone`
--

LOCK TABLES `accountant_phone` WRITE;
/*!40000 ALTER TABLE `accountant_phone` DISABLE KEYS */;
INSERT INTO `accountant_phone` VALUES (1,3462695244),(1,3062695243),(2,3164564777),(3,3375675656),(4,3446457508),(5,3176576986),(6,3075063342),(4,3006756777),(8,3004845482),(9,3096575677),(10,3466756837),(11,3086768588),(8,34577388837),(7,34464579877),(3,3462695243);
/*!40000 ALTER TABLE `accountant_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bed` (
  `Bed_No` int(11) NOT NULL,
  `B_Type` varchar(10) NOT NULL,
  `Buying_Date` date NOT NULL,
  `W_No` int(11) NOT NULL,
  PRIMARY KEY (`Bed_No`),
  KEY `W_No` (`W_No`),
  CONSTRAINT `bed_ibfk_1` FOREIGN KEY (`W_No`) REFERENCES `ward` (`Ward_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed`
--

LOCK TABLES `bed` WRITE;
/*!40000 ALTER TABLE `bed` DISABLE KEYS */;
INSERT INTO `bed` VALUES (1,'Operation','2002-12-13',1),(2,'Operation','2018-04-29',5),(3,'Paient','2013-05-14',1),(4,'Rest','2004-12-03',4),(5,'Rest','2021-02-28',8),(6,'Patient','2008-03-10',11),(7,'Patient','2010-11-13',2),(8,'Patient','2016-07-27',10),(9,'Operation','2020-08-03',8),(10,'Operation','2015-01-19',3),(11,'Patient','2019-12-13',1);
/*!40000 ALTER TABLE `bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `Bill_ID` int(11) NOT NULL,
  `P_id` int(11) NOT NULL,
  `R_id` int(11) NOT NULL,
  `Rental_Charges` int(11) DEFAULT NULL,
  `Test_Charges` int(11) DEFAULT NULL,
  PRIMARY KEY (`Bill_ID`),
  KEY `P_id` (`P_id`),
  KEY `R_id` (`R_id`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `patient` (`Patient_ID`),
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`R_id`) REFERENCES `receiptnist` (`Receiptnist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,1,3,34000,1500),(2,2,1,17000,1500),(3,3,9,15000,1500),(4,4,5,1200,1500),(5,5,6,10000,2000),(6,6,8,30000,1500),(7,7,10,12000,1500),(8,8,11,14000,1500),(9,9,5,7000,1500),(10,10,3,12000,4000),(11,11,8,1600,15000),(12,12,9,4500,30000),(13,13,3,3600,13000),(14,14,1,5000,15000),(15,15,9,2000,17000),(16,16,3,1500,9000),(17,17,6,12000,4000),(18,18,8,10000,23000);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_medicinecharges`
--

DROP TABLE IF EXISTS `bill_medicinecharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_medicinecharges` (
  `B_id` int(11) NOT NULL,
  `M_id` int(11) NOT NULL,
  `M_price` int(11) NOT NULL,
  `G_Total` int(11) NOT NULL,
  KEY `B_id` (`B_id`),
  KEY `M_id` (`M_id`),
  KEY `M_price` (`M_price`),
  CONSTRAINT `bill_medicinecharges_ibfk_1` FOREIGN KEY (`B_id`) REFERENCES `bill` (`Bill_ID`),
  CONSTRAINT `bill_medicinecharges_ibfk_2` FOREIGN KEY (`M_id`) REFERENCES `medicine` (`Medicine_ID`),
  CONSTRAINT `bill_medicinecharges_ibfk_3` FOREIGN KEY (`M_price`) REFERENCES `medicine` (`M_Price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_medicinecharges`
--

LOCK TABLES `bill_medicinecharges` WRITE;
/*!40000 ALTER TABLE `bill_medicinecharges` DISABLE KEYS */;
INSERT INTO `bill_medicinecharges` VALUES (1,1,223,1500),(2,2,15,1000),(3,3,500,2000),(4,4,98,1500),(5,5,675,4000),(6,5,675,3500),(7,6,55,1500),(8,7,50,1550),(9,8,100,1150),(10,9,315,15000),(11,10,20,1200),(12,11,25,3000),(13,2,15,6000),(14,6,55,1500),(15,7,50,7000),(16,8,100,700),(17,10,20,1500),(18,4,98,1600);
/*!40000 ALTER TABLE `bill_medicinecharges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `Doctor_ID` int(11) NOT NULL,
  `D_Nmae` char(15) NOT NULL,
  `DOB` date NOT NULL,
  `Joining_Date` date NOT NULL,
  `CNIC` double NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Timing` time NOT NULL,
  `Fee` int(11) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`),
  UNIQUE KEY `CNIC` (`CNIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Rizwan','1987-01-20','2020-01-13',310445456951,36,'12:00:00',2000),(2,'Ardhad Nazir','1979-03-28','2021-07-13',357645463466,44,'18:30:00',4000),(3,'Ishfaq Tahir','2004-11-03','2018-12-29',310535344552,19,'14:45:00',6000),(4,'Ghulam Sarwar','2001-08-08','2015-07-28',310490050973,56,'13:15:00',1000),(5,'Murtaza Rasool','1991-03-29','2022-05-05',310443555354,34,'19:30:00',3000),(6,'Abu zar','1999-12-14','2023-01-09',310435352616,29,'17:00:00',8000),(7,'Mustafa','2000-02-28','2007-07-05',315534526664,61,'09:15:00',9000),(8,'Mateen','1985-06-29','2003-05-23',353456346466,32,'16:45:00',12000),(9,'Shafiq','1987-07-19','2010-09-08',323534634646,58,'01:15:00',2000),(10,'Ali Raza','2001-03-05','2008-10-29',313534666077,36,'14:30:00',5000);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_address`
--

DROP TABLE IF EXISTS `doctor_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_address` (
  `D_ID` int(11) NOT NULL,
  `House_No` varchar(10) NOT NULL,
  `Town` varchar(15) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Country` varchar(10) NOT NULL,
  KEY `D_ID` (`D_ID`),
  CONSTRAINT `doctor_address_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `doctor` (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_address`
--

LOCK TABLES `doctor_address` WRITE;
/*!40000 ALTER TABLE `doctor_address` DISABLE KEYS */;
INSERT INTO `doctor_address` VALUES (1,'12E','Bahria Town','Lahore','Pakistan'),(2,'12s','Defence','Mianwali','Pakistan'),(4,'12E','PakistanCity','FortAbbas','Pakistan'),(5,'13E3','AlbertTown','Rawalpindi','Pakistan'),(9,'13','AnmolCity','Chistian','Pakistan'),(3,'13Paradise','KalaShaKaku','Lahore','Pakistan'),(7,'09','GreenTown','Sialkot','Pakistan'),(10,'54C','Bahria Town','Patokie','Pakistan'),(8,'158F','ShahKhawarTown','Ukara','Pakistan'),(6,'02E','RiazAvenue','Peshawar','Pakistan');
/*!40000 ALTER TABLE `doctor_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_email`
--

DROP TABLE IF EXISTS `doctor_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_email` (
  `D_ID` int(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  KEY `D_ID` (`D_ID`),
  CONSTRAINT `doctor_email_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `doctor` (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_email`
--

LOCK TABLES `doctor_email` WRITE;
/*!40000 ALTER TABLE `doctor_email` DISABLE KEYS */;
INSERT INTO `doctor_email` VALUES (1,'mustafa@gmail.com'),(4,'mateen@gmail.com'),(7,'shaiq@gmail.com'),(2,'aliraza@gmail.com'),(8,'abuzar@gmail.com'),(1,'khalid@gmail.com'),(3,'zaher@gmail.com'),(8,'hamza@gmail.com'),(1,'arshadnazir@gmail.com'),(5,'ghulamsarwar@gmail.com'),(10,'faizulhassan@gmail.com'),(9,'karimhussain@gmail.com'),(6,'mobeentahair@gmail.com'),(9,'rizwanahmad@gmail.com');
/*!40000 ALTER TABLE `doctor_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_phone`
--

DROP TABLE IF EXISTS `doctor_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_phone` (
  `D_ID` int(11) NOT NULL,
  `Phone` double DEFAULT NULL,
  KEY `D_ID` (`D_ID`),
  CONSTRAINT `doctor_phone_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `doctor` (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_phone`
--

LOCK TABLES `doctor_phone` WRITE;
/*!40000 ALTER TABLE `doctor_phone` DISABLE KEYS */;
INSERT INTO `doctor_phone` VALUES (10,304876786),(1,3065764784),(1,3157566588),(3,3435647070),(4,3226457747),(5,3262677457),(6,3093464575),(4,3003456545),(8,3018534764),(9,3246470860),(2,3440658656),(10,3085705686),(8,3244475688),(7,3823959475),(3,3462695242);
/*!40000 ALTER TABLE `doctor_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine` (
  `Medicine_ID` int(11) NOT NULL,
  `M_Name` varchar(15) NOT NULL,
  `M_Price` int(11) NOT NULL,
  `Manufacture_Date` date NOT NULL,
  `Expiry_Date` date NOT NULL,
  `M_type` varchar(10) NOT NULL,
  PRIMARY KEY (`Medicine_ID`),
  UNIQUE KEY `M_Price` (`M_Price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'Desprine',15,'2021-02-20','2024-03-23','Tablet'),(2,'Regixx',200,'2018-03-01','2019-08-15','Seroup'),(3,'Ganaton',500,'2023-03-10','2024-05-14','Tablet'),(4,'Raltus',98,'2019-05-03','2020-12-03','Seroup'),(5,'Selanz',675,'2021-06-30','2024-08-23','Tablet'),(6,'Tenormin',55,'2022-03-16','2026-10-18','Tablet'),(7,'Narobian',50,'2007-03-12','2024-02-01','Injection'),(8,'Sinjobian',100,'2022-12-09','2025-06-16','Capsool'),(9,'Glakofag',315,'2022-09-25','2021-08-10','Tablet'),(10,'Nuberol',20,'2022-11-28','2023-08-23','Tablet'),(11,'Calpol',25,'2022-07-12','2024-02-14','Tablet'),(12,'Panadol',223,'2022-03-12','2024-08-12','Tablet');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse` (
  `Nurse_ID` int(11) NOT NULL,
  `N_Name` char(15) NOT NULL,
  `CNIC` double NOT NULL,
  `Salary` int(11) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `W_no` int(11) NOT NULL,
  PRIMARY KEY (`Nurse_ID`),
  UNIQUE KEY `CNIC` (`CNIC`),
  KEY `W_no` (`W_no`),
  CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`W_no`) REFERENCES `ward` (`Ward_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (1,'Nasreen',3530465789234,25000,26,1),(2,'Firza',3290465675666,22000,24,4),(3,'Maryam',6475746645774,25000,36,3),(4,'Sidra',3536754756567,15000,32,6),(5,'Ruksana',3104656656564,35000,29,4),(6,'Mhnoor',3662367565046,27000,34,11),(7,'Sajal',3484968989234,32000,39,10),(8,'Fatima',3844576876786,50000,41,9),(9,'Nakhla',3530598957987,16000,30,6),(10,'Maheen',3193856467957,19000,37,4),(11,'Aqsa',3530438027654,33000,40,7),(12,'Nabeela',3532047027654,39000,42,3);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_address`
--

DROP TABLE IF EXISTS `nurse_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse_address` (
  `N_ID` int(11) NOT NULL,
  `House_No` varchar(10) NOT NULL,
  `Town` varchar(15) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Country` varchar(10) NOT NULL,
  KEY `N_ID` (`N_ID`),
  CONSTRAINT `nurse_address_ibfk_1` FOREIGN KEY (`N_ID`) REFERENCES `nurse` (`Nurse_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_address`
--

LOCK TABLES `nurse_address` WRITE;
/*!40000 ALTER TABLE `nurse_address` DISABLE KEYS */;
INSERT INTO `nurse_address` VALUES (1,'12E','Bahria Town','Lahore','Pakistan'),(2,'12s','Defence','Mianwali','Pakistan'),(4,'12E','PakistanCity','Haroonabad','Pakistan'),(11,'12E','Bahria Town','Karachi','Pakistan'),(5,'13E3','AlbertTown','Faisalabad','Pakistan'),(9,'13','AnmolCity','Chistian','Pakistan'),(3,'13Paradise','SuperTown','Lahore','Pakistan'),(7,'09','GreenTown','Bahawalnagar','Pakistan'),(10,'54C','Bahria Town','Dahranwala','Pakistan'),(8,'158F','ShahKhawarTown','Arafwala','Pakistan'),(6,'02E','RiazAvenue','Islamabad','Pakistan');
/*!40000 ALTER TABLE `nurse_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_email`
--

DROP TABLE IF EXISTS `nurse_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse_email` (
  `N_ID` int(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  KEY `N_ID` (`N_ID`),
  CONSTRAINT `nurse_email_ibfk_1` FOREIGN KEY (`N_ID`) REFERENCES `nurse` (`Nurse_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_email`
--

LOCK TABLES `nurse_email` WRITE;
/*!40000 ALTER TABLE `nurse_email` DISABLE KEYS */;
INSERT INTO `nurse_email` VALUES (1,'nasreen@gmail.com'),(4,'sajal@gmail.com'),(7,'mahnoor@gmail.com'),(2,'aqsa@gmail.com'),(12,'nabeela@gmail.com'),(1,'nadia@gmail.com'),(3,'razia@gmail.com'),(8,'asma@gmail.com'),(1,'maheen@gmail.com'),(5,'amina@gmail.com'),(10,'aman@gmail.com'),(11,'foozia@gmail.com'),(6,'sidra@gmail.com'),(9,'firza@gmail.com');
/*!40000 ALTER TABLE `nurse_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_phone`
--

DROP TABLE IF EXISTS `nurse_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse_phone` (
  `N_ID` int(11) NOT NULL,
  `Phone` double DEFAULT NULL,
  KEY `N_ID` (`N_ID`),
  CONSTRAINT `nurse_phone_ibfk_1` FOREIGN KEY (`N_ID`) REFERENCES `nurse` (`Nurse_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_phone`
--

LOCK TABLES `nurse_phone` WRITE;
/*!40000 ALTER TABLE `nurse_phone` DISABLE KEYS */;
INSERT INTO `nurse_phone` VALUES (10,3462636844),(1,3036803329),(1,3146645784),(3,3673865686),(4,3274674545),(5,3268658456),(6,3097385745),(4,3003577844),(8,3018487357),(9,3235846866),(2,3457894364),(11,3089759767),(8,34375649665),(7,34935746505),(3,3462695534);
/*!40000 ALTER TABLE `nurse_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `Patient_ID` int(11) NOT NULL,
  `P_Name` varchar(15) NOT NULL,
  `CNIC` double NOT NULL,
  `Admit_Date` date NOT NULL,
  `Discharge_Date` date NOT NULL,
  `DOB` date NOT NULL,
  `Age` int(11) NOT NULL,
  `D_id` int(11) NOT NULL,
  `N_id` int(11) NOT NULL,
  `W_no` int(11) NOT NULL,
  `B_id` int(11) NOT NULL,
  PRIMARY KEY (`Patient_ID`),
  UNIQUE KEY `CNIC` (`CNIC`),
  KEY `D_id` (`D_id`),
  KEY `N_id` (`N_id`),
  KEY `W_no` (`W_no`),
  KEY `B_id` (`B_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`D_id`) REFERENCES `doctor` (`Doctor_ID`),
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`N_id`) REFERENCES `nurse` (`Nurse_ID`),
  CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`W_no`) REFERENCES `ward` (`Ward_No`),
  CONSTRAINT `patient_ibfk_4` FOREIGN KEY (`B_id`) REFERENCES `bed` (`Bed_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'AliRaza',3120567832091,'2022-05-27','2023-12-10','2002-10-04',21,3,1,3,4),(2,'Mushtaq',3309593759753,'2017-10-16','2019-07-14','1957-11-25',51,1,6,5,3),(3,'Habeeb',3129275973953,'2019-05-02','2020-02-21','1980-04-07',30,3,1,2,6),(4,'Fatima',3120568583757,'2020-03-15','2021-04-19','1998-05-28',29,2,6,7,7),(5,'Munawar',3120562090401,'2022-06-24','2023-08-06','2018-09-29',5,3,2,5,9),(6,'Jahangir',3249257957953,'2022-08-04','2023-10-21','1991-01-04',37,4,4,8,3),(7,'Jahanzaib',3129579235793,'2022-05-06','2023-02-11','1972-12-07',42,7,4,2,6),(8,'Mohid',3219949797755,'2015-04-10','2017-05-03','1946-08-12',71,8,10,1,1),(9,'Fakhr',3520593939347,'2022-11-17','2022-08-07','1943-03-14',69,9,9,5,3),(10,'Saam',3125839597490,'2016-09-27','2018-04-26','1945-07-03',51,10,2,3,4),(11,'AbdulSaboor',3129579357757,'2021-02-28','2023-06-10','1972-09-30',65,2,5,9,10),(12,'Iftikhar',3192579359737,'2020-07-06','2021-01-07','1985-01-04',43,6,7,10,3),(13,'Razia',3244294937970,'2019-09-19','2023-08-03','1987-12-15',36,4,4,1,7),(14,'Minahil',3693593793757,'2020-11-17','2022-03-29','1999-11-19',29,7,8,7,4),(15,'Haris',3835923759070,'2022-05-20','2023-09-14','1989-05-17',34,6,2,8,8),(16,'AbuHuraira',3110493297595,'2018-09-07','2023-07-01','1961-02-27',85,8,8,1,5),(17,'Taha',3135993757595,'2021-07-29','2023-05-16','1945-08-04',62,1,3,4,1),(18,'Ayesha',3357755934005,'2021-04-04','2023-04-25','1971-10-08',53,9,6,3,9);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_address`
--

DROP TABLE IF EXISTS `patient_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_address` (
  `P_ID` int(11) NOT NULL,
  `House_No` varchar(10) NOT NULL,
  `Town` varchar(15) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Country` varchar(10) NOT NULL,
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `patient_address_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `patient` (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_address`
--

LOCK TABLES `patient_address` WRITE;
/*!40000 ALTER TABLE `patient_address` DISABLE KEYS */;
INSERT INTO `patient_address` VALUES (1,'12E','Bahria Town','Lahore','Pakistan'),(2,'12s','Defence','Mianwali','Pakistan'),(3,'12E','PakistanCity','FortAbbas','Pakistan'),(4,'13E3','AlbertTown','Rawalpindi','Pakistan'),(5,'13','AnmolCity','Chistian','Pakistan'),(6,'13Paradise','KalaShaKaku','Lahore','Pakistan'),(7,'09','GreenTown','Sialkot','Pakistan'),(8,'54C','Bahria Town','Patokie','Pakistan'),(9,'158F','ShahKhawarTown','Ukara','Pakistan'),(10,'02E','RiazAvenue','Peshawar','Pakistan'),(11,'12E','Bahria Town','Lahore','Pakistan'),(12,'12s','Defence','Peshawar','Pakistan'),(13,'12E','PakistanCity','FortAbbas','Pakistan'),(14,'13E3','AlbertTown','Rawalpindi','Pakistan'),(15,'13','AnmolCity','Chistian','Pakistan'),(16,'13Paradise','KalaShaKaku','Lahore','Pakistan'),(17,'12E','BahriaTown','Lahore','Pakistan'),(18,'12s','Defence','Sargoda','Pakistan');
/*!40000 ALTER TABLE `patient_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_email`
--

DROP TABLE IF EXISTS `patient_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_email` (
  `P_ID` int(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `patient_email_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `patient` (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_email`
--

LOCK TABLES `patient_email` WRITE;
/*!40000 ALTER TABLE `patient_email` DISABLE KEYS */;
INSERT INTO `patient_email` VALUES (1,'aliraza@gmail.com'),(2,'mushtaq@gmail.com'),(3,'habeeb@gmail.com'),(4,'fatima@gmail.com'),(5,'munawar@gmail.com'),(6,'janahangir@gmail.com'),(7,'jahanzaib@gmail.com'),(8,'mohid@gmail.com'),(9,'fakhr@gmail.com'),(10,'saam@gmail.com'),(11,'abdulsboor@gmail.com'),(12,'iftikhar@gmail.com'),(13,'razia@gmail.com'),(14,'minahil@gmail.com'),(15,'haris@gmail.com'),(16,'abuhurairah@gmail.com'),(17,'taha@gmail.com'),(18,'ayesha@gmail.com');
/*!40000 ALTER TABLE `patient_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_phone`
--

DROP TABLE IF EXISTS `patient_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_phone` (
  `P_ID` int(11) NOT NULL,
  `Phone` double DEFAULT NULL,
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `patient_phone_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `patient` (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_phone`
--

LOCK TABLES `patient_phone` WRITE;
/*!40000 ALTER TABLE `patient_phone` DISABLE KEYS */;
INSERT INTO `patient_phone` VALUES (10,304876786),(1,3025756768),(1,3105646666),(3,3456454765),(4,3225475687),(5,3262677457),(6,3007567676),(4,3058850700),(15,3014665827),(9,3064576754),(2,3246456457),(10,3756856886),(8,3244475688),(11,3457675668),(3,3245466457),(10,307457558),(17,3096756856),(1,3157839876),(13,3215756765),(4,3575775786),(15,3685567066),(6,3234644574),(14,3046574756),(8,3015684756),(9,3547657873),(2,3447575478),(15,3757574776),(18,3244556760),(16,3567477587),(3,3466457854);
/*!40000 ALTER TABLE `patient_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptnist`
--

DROP TABLE IF EXISTS `receiptnist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiptnist` (
  `Receiptnist_ID` int(11) NOT NULL,
  `R_Name` char(15) NOT NULL,
  `CNIC` double NOT NULL,
  `Salary` int(11) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`Receiptnist_ID`),
  UNIQUE KEY `CNIC` (`CNIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptnist`
--

LOCK TABLES `receiptnist` WRITE;
/*!40000 ALTER TABLE `receiptnist` DISABLE KEYS */;
INSERT INTO `receiptnist` VALUES (1,'Ali',3110452758942,50000,47),(2,'Waqas',3110493297595,25000,51),(3,'Saud',3220393297595,52000,42),(4,'Abdullah',3110493253795,15000,35),(5,'Umar',3110493638938,63000,25),(6,'Rizwan',3110423759435,39000,29),(7,'Faisal',3567493297595,86000,27),(8,'Abrar',3910493377595,23000,39),(9,'Umair',3110329557595,69000,45),(10,'Danish',3110426390595,76000,36),(11,'Frooq',3635229329759,50000,56);
/*!40000 ALTER TABLE `receiptnist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptnist_address`
--

DROP TABLE IF EXISTS `receiptnist_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiptnist_address` (
  `R_ID` int(11) NOT NULL,
  `House_No` varchar(10) NOT NULL,
  `Town` varchar(14) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Country` varchar(10) NOT NULL,
  KEY `R_ID` (`R_ID`),
  CONSTRAINT `receiptnist_address_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `receiptnist` (`Receiptnist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptnist_address`
--

LOCK TABLES `receiptnist_address` WRITE;
/*!40000 ALTER TABLE `receiptnist_address` DISABLE KEYS */;
INSERT INTO `receiptnist_address` VALUES (1,'12E','Bahria Town','Lahore','Pakistan'),(2,'12s','Defence','Lahore','Pakistan'),(6,'12E','PakistanCity','Haroonabad','Pakistan'),(3,'12E','Bahria Town','Karachi','Pakistan'),(4,'13E3','AlbertTown','Barmingum','England'),(8,'13','AnmolCity','Chistian','Pakistan'),(7,'13Paradise','SuperTown','Lahore','Pakistan'),(5,'09','GreenTown','Bahawalnagar','Pakistan'),(9,'54C','Bahria Town','Lahore','Pakistan'),(11,'158F','ShahKhawarTown','Lahore','Pakistan'),(10,'02E','RiazAvenue','Islamabad','Pakistan');
/*!40000 ALTER TABLE `receiptnist_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptnist_email`
--

DROP TABLE IF EXISTS `receiptnist_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiptnist_email` (
  `R_ID` int(11) NOT NULL,
  `Email` varchar(25) NOT NULL,
  KEY `R_ID` (`R_ID`),
  CONSTRAINT `receiptnist_email_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `receiptnist` (`Receiptnist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptnist_email`
--

LOCK TABLES `receiptnist_email` WRITE;
/*!40000 ALTER TABLE `receiptnist_email` DISABLE KEYS */;
INSERT INTO `receiptnist_email` VALUES (1,'umarfarooq@gmail.com'),(4,'saudahmad@gmail.com'),(7,'ahmadraza@gmail.com'),(2,'alihassan@gmail.com'),(1,'akhtar@gmail.com'),(1,'safdar@gmail.com'),(3,'akmal@gmail.com'),(8,'rizwan@gmail.com'),(1,'danishali@gmail.com'),(5,'jasimmujahid@gmail.com'),(10,'umarakram@gmail.com'),(11,'faisalfarzand@gmail.com'),(6,'ikramhussain@gmail.com'),(9,'manzoor@gmail.com');
/*!40000 ALTER TABLE `receiptnist_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptnist_phone`
--

DROP TABLE IF EXISTS `receiptnist_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiptnist_phone` (
  `R_ID` int(11) NOT NULL,
  `Phone` double DEFAULT NULL,
  KEY `R_ID` (`R_ID`),
  CONSTRAINT `receiptnist_phone_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `receiptnist` (`Receiptnist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptnist_phone`
--

LOCK TABLES `receiptnist_phone` WRITE;
/*!40000 ALTER TABLE `receiptnist_phone` DISABLE KEYS */;
INSERT INTO `receiptnist_phone` VALUES (10,3462695242),(1,3062695243),(1,3164564777),(3,3375675656),(4,3446457508),(5,3176576986),(6,3075063342),(4,3006756777),(8,3004845482),(9,3096575677),(2,3466756837),(11,3086768588),(8,34577388837),(7,34464579877),(3,3462695243);
/*!40000 ALTER TABLE `receiptnist_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transection`
--

DROP TABLE IF EXISTS `transection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transection` (
  `Transection_ID` int(11) NOT NULL,
  `B_id` int(11) NOT NULL,
  `A_id` int(11) NOT NULL,
  `T_Account` varchar(25) NOT NULL,
  `Trans_Date` date NOT NULL,
  `Payment_Method` varchar(15) NOT NULL,
  KEY `B_id` (`B_id`),
  KEY `A_id` (`A_id`),
  CONSTRAINT `transection_ibfk_1` FOREIGN KEY (`B_id`) REFERENCES `bill` (`Bill_ID`),
  CONSTRAINT `transection_ibfk_2` FOREIGN KEY (`A_id`) REFERENCES `accountant` (`Accountant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transection`
--

LOCK TABLES `transection` WRITE;
/*!40000 ALTER TABLE `transection` DISABLE KEYS */;
INSERT INTO `transection` VALUES (1,1,1,'7567992929293','2021-05-07','Cash'),(2,2,2,'757493080939767','2005-05-07','Cash'),(3,3,9,'097656564534224','2015-05-07','Card'),(4,4,10,'6740584544333','2023-05-07','Cash'),(5,5,5,'6280869864553','2001-05-07','Card'),(6,6,6,'245T757867667','2021-05-07','Card'),(7,7,3,'7567089232335','2007-05-07','Card'),(8,8,8,'8978976078970','2015-05-07','Card'),(9,9,5,'9812645665888','2016-05-07','Cash'),(10,10,7,'9789607976537','2019-05-07','Cash'),(11,11,9,'7896715656746','2012-05-07','Card'),(12,12,2,'6756456465544','2023-05-07','Cash'),(13,13,6,'5640124554566','2001-05-07','Cash'),(14,14,3,'7576634897857','2022-05-07','Cash'),(15,15,10,'9675787506756','2023-05-07','Cash'),(16,16,11,'7566454364555','2010-05-07','Cash'),(17,17,5,'7656453784456','2014-05-07','Card'),(18,18,8,'5630986857655','2017-05-07','Cash');
/*!40000 ALTER TABLE `transection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ward` (
  `Ward_No` int(11) NOT NULL,
  `No_Of_Beds` int(11) NOT NULL,
  `W_Location` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Ward_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
INSERT INTO `ward` VALUES (1,24,'A building,1st Floor'),(2,12,'B building,Ground Floor'),(3,6,'C building,3rd Floor'),(4,10,'A building,1st Floor'),(5,15,'C building,5th Floor'),(6,21,'A building,2nd Floor'),(7,9,'E building,6th Floor'),(8,18,'B building,1st Floor'),(9,24,'A building,2nd Floor'),(10,5,'C building,1st Floor'),(11,9,'Main building,3rd Floor');
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospital'
--

--
-- Dumping routines for database 'hospital'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 21:31:20
