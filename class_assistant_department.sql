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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Aerospace Engineering','The Department of Aerospace Engineering delivers foundational knowledge in aerodynamics, propulsion systems, avionics, flight mechanics, and space vehicle structural desgn'),('Artificial Intelligence & Data Science','The Department of Artificial Intelligence & Data Science trains specialists in big data processing, deep learning models, natural language processing, predictive analytics, and algorithmic optimization.'),('Automobile Engineering','The Department of Automobile Engineering covers vehicle dynamics, electric drivetrain technology, internal combustion efficiency, modern chassis engineering, and automotive safety.'),('Biomedical Engineering','The Department of Biomedical Engineering focuses on medical instrumentation, bio-signal processing, tissue engineering, biomechanics, and therapeutic technology innovation.'),('Biotechnology','The Department of Biotechnology integrates biological sciences with modern technology to drive research in genetic engineering, bioinformatics, bioprocess technology, and industrial diagnostics.'),('Chemical Engineering','The Department of Chemical Engineering provides training in chemical reaction processes, transport phenomena, thermodynamics, process control, and sustainable materials processing.'),('Civil Engineering','The Department of Civil Engineering prepares students in structural design, geotechnical engineering, urban planning, environmental sustainability, and transportation infrastructure manage'),('Cyber Security & Forensics','The Department of Cyber Security & Forensics equips students with expertise in network defense, ethical hacking, digital forensics, cryptography, and risk assessment protocols.'),('Data Science Engineering','The Department of Data Science Engineering centers on statistical modeling, large-scale data architecture, statistical computing, machine learning deployment, and business analytics.'),('Electrical & Electronics Engineering','The Department of Electrical & Electronics Engineering delivers rigorous instruction in power electronics, renewable energy networks, electrical machines, control systems, and smart grid automation.'),('Electronics & Technology-II','The Department of Electronics Technology serves as a premier center of academic excellence and technological innovation, offering dynamic programs including B.Tech in Electronics and Communication Engineering (ECE), B.Tech in Electronics and Computer Engineering (ECM), B.Tech in AI and Robotics, and M.Tech in ECE. Bridging the gap between fundamental hardware design and modern computational intelligence, the department delivers a comprehensive curriculum that spans core semiconductor technology, microelectronics, embedded systems, Internet of Things (IoT), signal processing, autonomous robotics, machine learning, and advanced wireless communication. Supported by state-of-the-art laboratories, high-performance computing infrastructure, and industry-standard simulation software, students engage in hands-on learning and cutting-edge research across fields like VLSI design, edge AI, and industrial automation. Through rigorous academic coursework, collaborative industry partnerships, and project-based experimentation, the department equips graduates with the multidisciplinary skills required to pioneer breakthrough technologies and excel as Embedded Systems Engineers, VLSI Specialists, AI Innovators, Robotics Engineers, and Software Architects in a rapidly evolving global tech landscape.'),('Environmental Engineering','The Department of Environmental Engineering trains engineers in water treatment, air pollution control, waste management systems, climate change mitigation, and ecological restoration.'),('Geoinformatics Engineering','The Department of Geoinformatics Engineering focuses on spatial data analytics, GIS technology, remote sensing, satellite positioning systems, and digital mapping.'),('Industrial & Production Engineering','The Department of Industrial & Production Engineering emphasizes operations research, supply chain systems, quality engineering, lean manufacturing, and human factors engineering.'),('Information Technology','The Department of Information Technology emphasizes enterprise software design, full-stack development, database administration, network engineering, and modern web architectures.'),('Instrumentation & Control Engineering','The Department of Instrumentation & Control Engineering specializes in industrial automation systems, sensor networks, process control loops, and precision measurement technology.'),('Marine Engineering','The Department of Marine Engineering covers naval architecture, ship propulsion systems, maritime machinery, marine power plants, and offshore structural engineering.'),('Mechanical Engineering','The Department of Mechanical Engineering focuses on thermal systems, fluid dynamics, manufacturing technology, material science, and CAD/CAM design to solve complex industrial problems.'),('Mechatronics Engineering','The Department of Mechatronics Engineering combines mechanical design, modern electronics, automated control theory, and embedded computing to build intelligent industrial machinery.'),('Metallurgical & Materials Engineering','The Department of Metallurgical & Materials Engineering provides training in physical metallurgy, advanced nanomaterials, structural failure analysis, polymers, and corrosion control.'),('Mining Engineering','The Department of Mining Engineering focuses on mineral processing, rock mechanics, sustainable resource extraction, mine safety engineering, and geostatistical modeling.'),('Nanotechnology','The Department of Nanotechnology emphasizes nanoscale fabrication, molecular synthesis, nano-electronics, functional nanomaterials, and quantum dot research applications.'),('Petroleum Engineering','The Department of Petroleum Engineering delivers expertise in reservoir simulation, drilling engineering, hydrocarbon extraction, well logging, and refining technologies.'),('Renewable Energy Engineering','The Department of Renewable Energy Engineering centers on solar photovoltaic design, wind energy systems, smart grid integration, energy storage technology, and sustainable power policy.'),('Robotics & Automation','The Department of Robotics & Automation specializes in autonomous motion control, computer vision integration, sensor fusion, spatial kinematically driven software, and factory automation systems.'),('Software Engineering','The Department of Software Engineering concentrates on software lifecycle management, DevOps pipelines, architectural design patterns, testing frameworks, and high-performance computing.'),('Structural Engineering','The Department of Structural Engineering provides advanced studies in concrete structures, earthquake engineering, dynamic loads, steel framework design, and infrastructure diagnostics.'),('Textile Technology','The Department of Textile Technology covers fiber science, textile processing machinery, smart fabrics, dyeing and finishing techniques, and garment manufacturing automation.'),('VLSI Design & Embedded Systems','The Department of VLSI Design & Embedded Systems focuses on integrated circuit layout, microarchitecture development, FPGA programming, hardware description languages, and system-on-chip design.'),('Wireless & Mobile Communication','The Department of Wireless & Mobile Communication specializes in modern cellular networks, antenna design, RF systems engineering, satellite link design, and wireless signal propagation.');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
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
