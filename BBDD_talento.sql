-- MySQL dump 10.13  Distrib 8.0.45, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: proyecto_talento_team_1
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '1d0610b6-1955-11f1-a4d3-febfc3918e15:1-3832';

--
-- Table structure for table `Compensacion_Satisfaccion`
--

DROP TABLE IF EXISTS `Compensacion_Satisfaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compensacion_Satisfaccion` (
  `EmployeeNumber` int NOT NULL,
  `MonthlyIncome` int DEFAULT NULL,
  `DailyRate` int DEFAULT NULL,
  `HourlyRate` int DEFAULT NULL,
  `MonthlyRate` int DEFAULT NULL,
  `PercentSalaryHike` int DEFAULT NULL,
  `StockOptionLevel` int DEFAULT NULL,
  `OverTime` varchar(5) DEFAULT NULL,
  `EnvironmentSatisfaction` int DEFAULT NULL,
  `JobInvolvement` int DEFAULT NULL,
  `JobSatisfaction` int DEFAULT NULL,
  `RelationshipSatisfaction` int DEFAULT NULL,
  `PerformanceRating` int DEFAULT NULL,
  `WorkLifeBalance` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeNumber`),
  CONSTRAINT `compensacion_satisfaccion_ibfk_1` FOREIGN KEY (`EmployeeNumber`) REFERENCES `Empleados` (`EmployeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compensacion_Satisfaccion`
--

LOCK TABLES `Compensacion_Satisfaccion` WRITE;
/*!40000 ALTER TABLE `Compensacion_Satisfaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compensacion_Satisfaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `EmployeeNumber` int NOT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `MaritalStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EmployeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historial_Laboral`
--

DROP TABLE IF EXISTS `Historial_Laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historial_Laboral` (
  `EmployeeNumber` int NOT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `JobRole` varchar(100) DEFAULT NULL,
  `JobLevel` int DEFAULT NULL,
  `Attrition` varchar(5) DEFAULT NULL,
  `BusinessTravel` varchar(50) DEFAULT NULL,
  `DistanceFromHome` int DEFAULT NULL,
  `NumCompaniesWorked` int DEFAULT NULL,
  `TotalWorkingYears` int DEFAULT NULL,
  `YearsAtCompany` int DEFAULT NULL,
  `YearsInCurrentRole` int DEFAULT NULL,
  `YearsSinceLastPromotion` int DEFAULT NULL,
  `YearsWithCurrentManager` int DEFAULT NULL,
  `TrainingTimesLastYear` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeNumber`),
  CONSTRAINT `historial_laboral_ibfk_1` FOREIGN KEY (`EmployeeNumber`) REFERENCES `Empleados` (`EmployeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historial_Laboral`
--

LOCK TABLES `Historial_Laboral` WRITE;
/*!40000 ALTER TABLE `Historial_Laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `Historial_Laboral` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-06 18:36:23
