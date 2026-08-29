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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `department_name` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name_idx` (`department_name`),
  CONSTRAINT `name` FOREIGN KEY (`department_name`) REFERENCES `department` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Electronics and communications','hello berozgaars','Electronics & Technology-II','8 Semesters','4 Years'),(3,'Intro to Aerospace Engineering','Fundamentals of flight, aerodynamics, and propulsion.','Aerospace Engineering','Semester 1','4 Years'),(4,'Foundations of AI & Data Science','Introduction to machine learning models and data analysis.','Artificial Intelligence & Data Science','Semester 1','4 Years'),(5,'Automotive Systems Engineering','Study of engine design, dynamics, and vehicle performance.','Automobile Engineering','Semester 2','4 Years'),(6,'Biomedical Instrumentation','Medical equipment operation and physiological measurement.','Biomedical Engineering','Semester 3','4 Years'),(7,'Bioprocess Principles','Fermentation technology and cellular mechanics.','Biotechnology','Semester 2','4 Years'),(8,'Chemical Reaction Engineering','Kinetics, reactor design, and industrial process flows.','Chemical Engineering','Semester 4','4 Years'),(9,'Structural Analysis Basics','Force distribution, material response, and safety factors.','Civil Engineering','Semester 2','4 Years'),(10,'Ethical Hacking & Digital Forensics','Penetration testing, threat detection, and chain of custody.','Cyber Security & Forensics','Semester 3','4 Years'),(11,'Big Data Analytics','Processing large datasets using distributed computing engines.','Data Science Engineering','Semester 5','4 Years'),(12,'Electrical Circuits & Networks','Circuit theory, AC analysis, and magnetic circuits.','Electrical & Electronics Engineering','Semester 1','4 Years'),(13,'Digital Electronics & Microcontrollers','Logic gates, microprocessors, and embedded hardware.','Electronics & Technology-II','Semester 3','4 Years'),(14,'Environmental Impact Assessment','Pollution management, sustainability, and green design.','Environmental Engineering','Semester 4','4 Years'),(15,'Spatial Analysis & GIS','Geographic information systems and mapping technologies.','Geoinformatics Engineering','Semester 5','4 Years'),(16,'Manufacturing Operations & Logistics','Supply chain systems, lean manufacturing, and quality control.','Industrial & Production Engineering','Semester 4','4 Years'),(17,'Database Management Systems','Relational models, SQL query optimization, and normalization.','Information Technology','Semester 3','4 Years'),(18,'Control System Design','Feedback control, transfer functions, and system stability.','Instrumentation & Control Engineering','Semester 4','4 Years'),(19,'Naval Architecture Basics','Ship stability, propulsion systems, and marine structures.','Marine Engineering','Semester 2','4 Years'),(20,'Engineering Mechanics & Statics','Rigid body equilibrium, kinematics, and stress analysis.','Mechanical Engineering','Semester 1','4 Years'),(21,'Sensors & Actuators in Automation','Integration of mechanical systems with electronic control.','Mechatronics Engineering','Semester 3','4 Years'),(22,'Materials Science & Biomaterials','Structure, properties, and processing of metals and ceramics.','Metallurgical & Materials Engineering','Semester 2','4 Years'),(23,'Surface Mining & Rock Mechanics','Excavation methods, slope stability, and safety management.','Mining Engineering','Semester 4','4 Years'),(24,'Nanomaterials Synthesis','Fabrication, characterization, and applications of nanomaterials.','Nanotechnology','Semester 5','4 Years'),(25,'Drilling & Production Operations','Reservoir mechanics, fluid behavior, and drilling technology.','Petroleum Engineering','Semester 3','4 Years'),(26,'Solar & Wind Energy Systems','Photovoltaic design, turbine mechanics, and clean grid integration.','Renewable Energy Engineering','Semester 4','4 Years'),(27,'Industrial Robotics Architecture','Kinematics, path planning, and autonomous robot navigation.','Robotics & Automation','Semester 6','4 Years'),(28,'Agile Software Engineering','Software lifecycle models, version control, and system testing.','Software Engineering','Semester 2','4 Years'),(29,'Advanced Concrete Structures','Reinforced and prestressed concrete structural design.','Structural Engineering','Semester 5','4 Years'),(30,'Textile Fiber & Yarn Production','Synthetic and natural fiber processing techniques.','Textile Technology','Semester 3','4 Years'),(31,'CMOS VLSI Circuit Design','Semiconductor physics, layout design, and HDL synthesis.','VLSI Design & Embedded Systems','Semester 6','4 Years'),(32,'Mobile Networks & 5G Systems','Cellular architecture, RF propagation, and wireless protocols.','Wireless & Mobile Communication','Semester 5','4 Years');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
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
