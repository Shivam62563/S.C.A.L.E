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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'inactive',
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`course_id`),
  CONSTRAINT `fk_students_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Rahul Sharma','Male','9876543210','rahul@gmail.com','rahul123','inactive',1),(2,'Priya Verma','Female','9876543211','priya@gmail.com','priya123','inactive',1),(3,'Aman Kumar','Male','9876543212','aman@gmail.com','0000','inactive',1),(4,'Neha Singh','Female','9876543213','neha@gmail.com','neha123','inactive',1),(5,'Rohit Gupta','Male','9876543214','rohit@gmail.com','rohit123','inactive',1),(6,'Anjali','Female','9876543215','anjali@gmail.com','0987','inactive',1),(7,'Karan Mehta','Male','9876543216','karan@gmail.com','karan123','inactive',1),(8,'Simran Kaur','Female','9876543217','simran@gmail.com','simran123','inactive',1),(9,'Vikas Yadav','Male','9876543218','vikas@gmail.com','vikas123','inactive',1),(10,'Pooja Gupta','Female','9876543219','pooja@gmail.com','pooja123','inactive',1),(11,'Arjun Kapoor','Male','9876543220','arjun@gmail.com','arjun123','inactive',1),(14,'Kavya Singh','Female','9876543223','kavya@gmail.com','kavya123','inactive',1),(15,'Mohit Jain','Male','9876543224','mohit@gmail.com','mohit123','inactive',1),(16,'Sneha Agarwal','Female','9876543225','sneha@gmail.com','sneha123','inactive',1),(17,'Nikhil Verma','Male','9876543226','nikhil@gmail.com','nikhil123','inactive',1),(18,'Isha Gupta','Female','9876543227','isha@gmail.com','isha123','inactive',1),(19,'Sahil Kumar','Male','9876543228','sahil@gmail.com','sahil123','inactive',1),(20,'Muskan Sharma','Female','9876543229','muskan@gmail.com','muskan123','inactive',1),(21,'Harsh Vardhan','Male','9876543230','harsh@gmail.com','harsh123','inactive',1),(22,'Nisha Kapoor','Female','9876543231','nisha@gmail.com','nisha123','inactive',1),(23,'Yash Mehta','Male','9876543232','yash@gmail.com','yash123','inactive',1),(24,'Tanya Sharma','Female','9876543233','tanya@gmail.com','tanya123','inactive',1),(25,'Varun Singh','Male','9876543234','varun@gmail.com','varun123','inactive',1),(26,'Shreya Verma','Female','9876543235','shreya@gmail.com','shreya123','inactive',1),(27,'Deepak Kumar','Male','9876543236','deepak@gmail.com','deepak123','inactive',1),(28,'Aditi Jain','Female','9876543237','aditi@gmail.com','aditi123','inactive',1),(29,'Manish Gupta','Male','9876543238','manish@gmail.com','manish123','inactive',1),(31,'shivam','Male','0987654321','shivam@gmail.com','4321','active',1),(33,'shivam','Male','9876543210','sharma@gmail.com','1234','active',18),(34,'Aditya','Male','0987654321','aadi@gmail.com','1111','active',25),(35,'test','Male','9876543210','test@gmail.com','123456','active',27);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
