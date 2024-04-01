-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: telefon
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `companie`
--

DROP TABLE IF EXISTS `companie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companie` (
  `idCompanie` int NOT NULL AUTO_INCREMENT,
  `Nume` varchar(45) DEFAULT NULL,
  `Fondator` varchar(45) DEFAULT NULL,
  `An_Infiintare` int DEFAULT NULL,
  `idModelTelefon` int DEFAULT NULL,
  `idLocatieFabrica` int DEFAULT NULL,
  PRIMARY KEY (`idCompanie`),
  KEY `FK1_idx` (`idModelTelefon`),
  KEY `FK2_idx` (`idLocatieFabrica`),
  CONSTRAINT `FK1` FOREIGN KEY (`idModelTelefon`) REFERENCES `modeltelefon` (`idModelTelefon`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2` FOREIGN KEY (`idLocatieFabrica`) REFERENCES `locatiefabrica` (`idLocatieFabrica`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companie`
--

LOCK TABLES `companie` WRITE;
/*!40000 ALTER TABLE `companie` DISABLE KEYS */;
INSERT INTO `companie` VALUES (1,'Apple Inc.','Steve Jobs, Steve Wozniak, și Ronald Wayne',1976,1,1),(2,'Samsung Electronics Co., Ltd.','Lee Byung-chul',1938,2,2),(3,'Google LLC','Larry Page, Sergey Brin',1999,3,1),(11,'wwwww','wwwwwww',555,1,1),(14,'llll','wwwwwww',555,4,5);
/*!40000 ALTER TABLE `companie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locatiefabrica`
--

DROP TABLE IF EXISTS `locatiefabrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locatiefabrica` (
  `idLocatieFabrica` int NOT NULL AUTO_INCREMENT,
  `Oras` varchar(45) DEFAULT NULL,
  `Tara` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLocatieFabrica`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locatiefabrica`
--

LOCK TABLES `locatiefabrica` WRITE;
/*!40000 ALTER TABLE `locatiefabrica` DISABLE KEYS */;
INSERT INTO `locatiefabrica` VALUES (1,'California','SUA'),(2,'Suwon','Coreea de Sud'),(3,'Guangdong','China'),(5,'Beijing','China'),(8,'Bucuresti','Romania'),(10,'Bucuresti','teste');
/*!40000 ALTER TABLE `locatiefabrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeltelefon`
--

DROP TABLE IF EXISTS `modeltelefon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modeltelefon` (
  `idModelTelefon` int NOT NULL AUTO_INCREMENT,
  `Nume` varchar(45) DEFAULT NULL,
  `Memorie_Interna` float DEFAULT NULL,
  `Memorie_RAM` float DEFAULT NULL,
  `Dimensiune_Ecran` float DEFAULT NULL,
  `An_Aparitie` int DEFAULT NULL,
  PRIMARY KEY (`idModelTelefon`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeltelefon`
--

LOCK TABLES `modeltelefon` WRITE;
/*!40000 ALTER TABLE `modeltelefon` DISABLE KEYS */;
INSERT INTO `modeltelefon` VALUES (1,'iPhone 13 Pro',128,6,6.1,2021),(2,'Samsung Galaxy S21',256,8,6.2,2021),(3,'Google Pixel 6',128,8,6.4,2021),(4,'OnePlus 9',256,12,6.55,2021),(7,'Xiaomi Mi 11',128,8,6.81,2020),(19,'zdsd',100,5,10,2020);
/*!40000 ALTER TABLE `modeltelefon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-01 18:14:16
