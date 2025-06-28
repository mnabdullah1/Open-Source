DROP DATABASE IF EXISTS `md_water_services`;
CREATE DATABASE IF NOT EXISTS `md_water_services` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `md_water_services`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: md_water_services
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `data_dictionary`
--

DROP TABLE IF EXISTS `data_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_dictionary` (
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `description` text,
  `datatype` varchar(50) DEFAULT NULL,
  `related_to` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_dictionary`
--
LOCK TABLES `data_dictionary` WRITE;
/*!40000 ALTER TABLE `data_dictionary` DISABLE KEYS */;
INSERT INTO `data_dictionary` VALUES ('employee','assigned_employee_id','Unique ID assigned to each employee','INT','visits'),('employee','employee_name','Name of the employee','VARCHAR(255)','');
/*!40000 ALTER TABLE `data_dictionary` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `assigned_employee_id` int NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province_name` varchar(255) DEFAULT NULL,
  `town_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`assigned_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (0,'Amara Jengo','+99637993287 ',NULL,'36 Pwani Mchangani Road','Sokoto','Ilanga','Field Surveyor');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `global_water_access`
--

DROP TABLE IF EXISTS `global_water_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_water_access` (
  `name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `pop_n` float DEFAULT NULL,
  `pop_u` float DEFAULT NULL,
  `wat_bas_n` float DEFAULT NULL,
  `wat_lim_n` float DEFAULT NULL,
  `wat_unimp_n` float DEFAULT NULL,
  `wat_sur_n` float DEFAULT NULL,
  `wat_bas_r` float DEFAULT NULL,
  `wat_lim_r` float DEFAULT NULL,
  `wat_unimp_r` float DEFAULT NULL,
  `wat_sur_r` float DEFAULT NULL,
  `wat_bas_u` float DEFAULT NULL,
  `wat_lim_u` float DEFAULT NULL,
  `wat_unimp_u` float DEFAULT NULL,
  `wat_sur_u` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_water_access`
--

LOCK TABLES `global_water_access` WRITE;
/*!40000 ALTER TABLE `global_water_access` DISABLE KEYS */;
INSERT INTO `global_water_access` VALUES ('Afghanistan','South Asia',2015,34413.6,24.803,61.3398,3.5112,22.1688,12.9802,52.9885,3.86114,26.5533,16.5971,86.6589,2.45027,8.87604,2.01475);
/*!40000 ALTER TABLE `global_water_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province_name` varchar(255) DEFAULT NULL,
  `town_name` varchar(255) DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('AkHa00000','2 Addis Ababa Road','Akatsi','Harare','Urban'),('AkHa00001','10 Addis Ababa Road','Akatsi','Harare','Urban');

