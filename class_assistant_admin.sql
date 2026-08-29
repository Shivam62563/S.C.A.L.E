CREATE DATABASE  IF NOT EXISTS `class_assistant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `class_assistant`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: class_assistant
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(115) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'active',
  `password` varchar(100) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(2,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(3,'shivam','Female','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(4,'jatin','others','5768934560','jatin12@gmail.com','active','123456','Super-Admin'),(5,'vansh','Male','9876543220','vansh12@gmail.com','inactive','1234vansh','Super-Admin'),(6,'aadi','Male','7465768936','aadi123@gmail.com','active','12345','Super-Admin'),(7,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(8,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(11,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(12,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(13,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(15,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(16,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(17,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(18,'harsh','Male','9987654321','harsh123@gmail.com','active','12345','Admin'),(19,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(20,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(21,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(22,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(23,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(24,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(25,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(26,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(27,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(28,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(29,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(30,'shivam','Male','89685438','shivam.h@example.com','active','$2a$12$eImiTXuWVxfM37uY4JANjO','Super-Admin'),(31,'sanchit','Male','89687988','sanchit12@gmail.com','active','sanchit123','Super-Admin'),(32,'arpit','Male','485739492','arpit123@gmail.com','active','123456','Admin'),(33,'laksh','Male','7487625638','lakshay@gmail.com','inactive','12345','Admin'),(34,'Suchreet','Female','9876234578','s@gmail.com','Active','12345678','Super-Admin'),(35,'armaan','Male','7564736798','armaan@gmail','active','123456','Admin'),(37,'aarav','Male','7867876453','aaa@gmail.com','active','111','Admin'),(38,'kartik','Male','7483736783','kar@gmail.com','active','1234','Admin'),(39,'yuvi','Male','0987654321','y@gmail','active','1234','Admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-22 16:43:12
