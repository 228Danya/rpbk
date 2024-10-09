-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 172.16.7.85    Database: ryb2
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `AdminClub`
--

DROP TABLE IF EXISTS `AdminClub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdminClub` (
  `#AdminClub` int NOT NULL,
  `Adminname` varchar(45) NOT NULL,
  PRIMARY KEY (`#AdminClub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminClub`
--

LOCK TABLES `AdminClub` WRITE;
/*!40000 ALTER TABLE `AdminClub` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdminClub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Club`
--

DROP TABLE IF EXISTS `Club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Club` (
  `#Club` int NOT NULL AUTO_INCREMENT,
  `ClubName` varchar(45) NOT NULL,
  `Description` varchar(45) NOT NULL,
  PRIMARY KEY (`#Club`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Club`
--

LOCK TABLES `Club` WRITE;
/*!40000 ALTER TABLE `Club` DISABLE KEYS */;
/*!40000 ALTER TABLE `Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Education`
--

DROP TABLE IF EXISTS `Education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Education` (
  `#Education` int NOT NULL,
  `Day` varchar(45) NOT NULL,
  `Audit` int NOT NULL,
  PRIMARY KEY (`#Education`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Education`
--

LOCK TABLES `Education` WRITE;
/*!40000 ALTER TABLE `Education` DISABLE KEYS */;
/*!40000 ALTER TABLE `Education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Education_has_Club`
--

DROP TABLE IF EXISTS `Education_has_Club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Education_has_Club` (
  `Education_#Education` int NOT NULL,
  `Club_#Club` int NOT NULL,
  PRIMARY KEY (`Education_#Education`,`Club_#Club`),
  KEY `fk_Education_has_Club_Club1_idx` (`Club_#Club`),
  KEY `fk_Education_has_Club_Education1_idx` (`Education_#Education`),
  CONSTRAINT `fk_Education_has_Club_Club1` FOREIGN KEY (`Club_#Club`) REFERENCES `Club` (`#Club`),
  CONSTRAINT `fk_Education_has_Club_Education1` FOREIGN KEY (`Education_#Education`) REFERENCES `Education` (`#Education`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Education_has_Club`
--

LOCK TABLES `Education_has_Club` WRITE;
/*!40000 ALTER TABLE `Education_has_Club` DISABLE KEYS */;
/*!40000 ALTER TABLE `Education_has_Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `#Students` int NOT NULL,
  `Studname` varchar(45) NOT NULL,
  PRIMARY KEY (`#Students`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students_has_AdminClub`
--

DROP TABLE IF EXISTS `Students_has_AdminClub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students_has_AdminClub` (
  `Students_#Students` int NOT NULL,
  `AdminClub_#AdminClub` int NOT NULL,
  PRIMARY KEY (`Students_#Students`,`AdminClub_#AdminClub`),
  KEY `fk_Students_has_AdminClub_AdminClub1_idx` (`AdminClub_#AdminClub`),
  KEY `fk_Students_has_AdminClub_Students_idx` (`Students_#Students`),
  CONSTRAINT `fk_Students_has_AdminClub_AdminClub1` FOREIGN KEY (`AdminClub_#AdminClub`) REFERENCES `AdminClub` (`#AdminClub`),
  CONSTRAINT `fk_Students_has_AdminClub_Students` FOREIGN KEY (`Students_#Students`) REFERENCES `Students` (`#Students`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students_has_AdminClub`
--

LOCK TABLES `Students_has_AdminClub` WRITE;
/*!40000 ALTER TABLE `Students_has_AdminClub` DISABLE KEYS */;
/*!40000 ALTER TABLE `Students_has_AdminClub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students_has_Club`
--

DROP TABLE IF EXISTS `Students_has_Club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students_has_Club` (
  `Students_#Students` int NOT NULL,
  `Club_#Club` int NOT NULL,
  PRIMARY KEY (`Students_#Students`,`Club_#Club`),
  KEY `fk_Students_has_Club_Club1_idx` (`Club_#Club`),
  KEY `fk_Students_has_Club_Students1_idx` (`Students_#Students`),
  CONSTRAINT `fk_Students_has_Club_Club1` FOREIGN KEY (`Club_#Club`) REFERENCES `Club` (`#Club`),
  CONSTRAINT `fk_Students_has_Club_Students1` FOREIGN KEY (`Students_#Students`) REFERENCES `Students` (`#Students`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students_has_Club`
--

LOCK TABLES `Students_has_Club` WRITE;
/*!40000 ALTER TABLE `Students_has_Club` DISABLE KEYS */;
/*!40000 ALTER TABLE `Students_has_Club` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 17:51:47
