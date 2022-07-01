CREATE DATABASE  IF NOT EXISTS `salon_management_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `salon_management_system`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: salon_management_system
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Temporary view structure for view `address`
--

DROP TABLE IF EXISTS `address`;
/*!50001 DROP VIEW IF EXISTS `address`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `address` AS SELECT 
 1 AS `cust_name`,
 1 AS `address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `bill_id` int NOT NULL,
  `trans_id` int DEFAULT NULL,
  `cust_id` int NOT NULL,
  `amount` int NOT NULL,
  `service_id` int NOT NULL,
  PRIMARY KEY (`bill_id`),
  UNIQUE KEY `cust_id_UNIQUE` (`cust_id`),
  UNIQUE KEY `trans_id_UNIQUE` (`trans_id`),
  KEY `service_id_idx` (`service_id`),
  CONSTRAINT `cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,NULL,101,150,3),(2,NULL,102,195,4),(3,111,103,200,4),(4,NULL,104,150,3),(5,124,105,250,5),(6,NULL,106,200,4),(7,134,107,150,3),(8,154,108,50,1),(9,121,109,50,1),(10,NULL,110,100,2),(11,NULL,111,150,3),(12,NULL,112,200,4),(13,NULL,113,50,1),(14,NULL,114,150,3),(16,NULL,116,100,2),(17,NULL,117,150,3),(18,NULL,118,100,2),(19,NULL,119,200,4),(20,NULL,120,100,2);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL,
  `cust_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `cust_num` varchar(10) NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'Uddeshya','Manoranjitham 822','9452022305',22),(102,'Shyam','Manoranjitham 303','9876543210',20),(103,'Snehal','Manoranjitham 717','9379798653',19),(104,'Likith','Began 715','9245896394',16),(105,'Pranav','Manoranjitham 901','9427757286',13),(106,'Suriya','Nelson 812','9207228675',17),(107,'Varun','Paari 205','9287550695',15),(108,'Uday','Sannasi 704','9401361303',16),(109,'Paras','Began 206','9649162051',17),(110,'Revanth','Manoranjitham 909','9291132977',18),(111,'Saketh','Nelson 211','9934731814',19),(112,'Srinu','Nelson 118','9495157991',20),(113,'Ganesh','Began 206','9128074109',21),(114,'Jaya','Paari 406','9642555683',15),(115,'Prakash','Began 114','9540358008',23),(116,'Prashanth','Nelson 220','9853354225',20),(117,'Raju','Manoranjitham 917','9530811533',20),(118,'Rahul','Manoranjitham 713','9732901498',19),(119,'Ravi','Sannasi 114','9896753840',18),(120,'Raju','Began 303','9542179061',18);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!50001 DROP VIEW IF EXISTS `customer_address`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_address` AS SELECT 
 1 AS `cust_name`,
 1 AS `cust_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employee_address`
--

DROP TABLE IF EXISTS `employee_address`;
/*!50001 DROP VIEW IF EXISTS `employee_address`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_address` AS SELECT 
 1 AS `emp_name`,
 1 AS `emp_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL,
  `emp_name` varchar(45) NOT NULL,
  `emp_num` varchar(10) NOT NULL,
  `address` varchar(45) NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_num_UNIQUE` (`emp_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Vandana','9732422892','Chennai',10500),(2,'Krishna','9405910383','Guduvancherry',16000),(3,'Sohan','9498244539','Guduvancherry',6000),(4,'Ali','9461250550','Potheri',10500),(5,'Anil','9312536560','Vandalur',12500),(6,'Anirudh','9259257012','Potheri',10500),(7,'Ashu','9813392145','Chengalpattu',10500),(8,'Karan','9371278154','Potheri',9000),(9,'Bhargav','9247645320','Chengalpattu',5500),(10,'Hari','9429027125','SRM Nagar',6500);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_id` int NOT NULL,
  `service_name` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`service_id`),
  UNIQUE KEY `service_name_UNIQUE` (`service_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Bronze',50),(2,'Gold',100),(3,'Platinum',150),(4,'Crown',200),(5,'Ace',250);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `address`
--

/*!50001 DROP VIEW IF EXISTS `address`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `address` AS select `customer`.`cust_name` AS `cust_name`,`customer`.`address` AS `address` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_address`
--

/*!50001 DROP VIEW IF EXISTS `customer_address`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_address` AS select `customer`.`cust_name` AS `cust_name`,`customer`.`address` AS `cust_address` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_address`
--

/*!50001 DROP VIEW IF EXISTS `employee_address`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_address` AS select `employees`.`emp_name` AS `emp_name`,`employees`.`address` AS `emp_address` from `employees` where (`employees`.`address` = 'Potheri') */;
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

-- Dump completed on 2022-07-02  0:42:01
