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
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lecture_id` int NOT NULL,
  `note_text` text NOT NULL,
  `rank_score` float DEFAULT '0',
  `sentence_index` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_note_lecture` (`lecture_id`),
  CONSTRAINT `fk_note_lecture` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (5,7,'COMPLETE SPEAKER\'S GUIDE & SESSION HANDBOOK\nMastering Python for Class 8–10 Educators\nTarget Audience: Middle & High School CS Teachers\nSession Duration: 60 Minutes\nScope: Class 8, 9 & 10 Python Syllabus\nCore Goal: Mindset Shift & Pedagogical Confidence\nSECTION 1: 2-MINUTE OPENING KEYNOTE SCRIPT\nDelivery Tip: Walk to the center of the stage/room without slides visible.',0.262819,0,'2026-08-20 12:06:35'),(6,7,'Python.',0.431008,9,'2026-08-20 12:06:35'),(7,7,'In Python?',0.431008,16,'2026-08-20 12:06:35'),(8,7,'Let’s dive in!\"\nPython Teacher Training Workshop | Speaker\'s Guide\nPage 1 of 4\nSECTION 2: HISTORICAL FACTS & RATIONALE (WHY PYTHON?)\nUse these talking points during your session to help teachers understand why boards and schools are\ntransitioning to Python.',0.335559,26,'2026-08-20 12:06:35'),(9,7,'The Zen of Python: Built right into the language.',0.262163,29,'2026-08-20 12:06:35'),(10,7,'Python vs.',0.415574,31,'2026-08-20 12:06:35'),(11,7,'SECTION 5: LIVE CODE DEMOS TO PRESENT\nShow teachers these classroom-ready code snippets during your technical walkthrough:\n• \n• \n• \n• \n• \n• \n• \n• \n• \n• \n• \n• \n• \n• \n• \nPython Teacher Training Workshop | Speaker\'s Guide\nPage 3 of 4\nDemo 1: Grade Calculator (Class 8 & 9 Level)\n# Demonstrating Input, Type Conversion, and Conditionals\nstudent_name = input(\"Enter Student Name: \")\nmarks = float(input(\"Enter Marks (0-100): \"))\nif marks >= 90:\n    grade = \"A+\"\nelif marks >= 75:\n    grade = \"A\"\nelif marks >= 50:\n    grade = \"B\"\nelse:\n    grade = \"Needs Improvement\"\nprint(f\"Student {student_name} scored Grade: {grade}\")\nDemo 2: Report Card & Dictionary Traversal (Class 10 Level)\n# Demonstrating Dictionaries, Loops, and Built-in Functions\nreport_card = {\n\"Math\": 92,\n\"Science\": 88,\n\"English\": 79,\n\"Computer\": 95\n}\ntotal_marks = sum(report_card.values())\navg_marks = total_marks / len(report_card)\nprint(\"--- Subject Breakdown ---\")\nfor subject, score in report_card.items():\nprint(f\"{subject}: {score}\")\nprint(f\"Average Score: {avg_marks:.2f}%\")\nSECTION 6: RECOMMENDED 60-MINUTE WORKSHOP TIMELINE\nTime\nModule Topic\nKey Focus Area\n00:00–00:10\nOpening & Mindset Shift\nDeliver 2-min script, History, Python vs.',0.255506,59,'2026-08-20 12:06:35'),(12,7,'Python Teacher Training Workshop | Speaker\'s Guide\nPage 4 of 4',0.300949,65,'2026-08-20 12:06:35'),(13,9,'I N T R O D U C T I O N T O N E U R A L N E T W O R K S\nRadial Basis Function\nNetworks\nA local, two-stage alternative to the Multi-Layer Perceptron — built on\nfunction approximation and exact interpolation.',0.409776,0,'2026-08-21 11:57:17'),(14,9,'Radial Basis Function (RBF) Network\nHidden units respond only to inputs near a centre — a local approximator.',0.423704,5,'2026-08-21 11:57:17'),(15,9,'MLP hidden unit: sigmoid (global)\nRBF hidden unit: Gaussian (local)\nRadial Basis Function Networks\n2\nD E F I N I T I O N\nWhat Is a Radial Basis Function Network?',0.572291,8,'2026-08-21 11:57:17'),(16,9,'f(x)  =  sum of all bumps\nindividual weighted bumps  wj · φj(x)\ndata point (exact hit)\nRadial Basis Function Networks\n6\nF O U N D A T I O N S\nFormalising Exact Interpolation\nGiven N data points (xᵖ, tᵖ), the goal is a function f(x) satisfying:\nf(xᵖ) = tᵖ   for  p = 1, ..., N\nRBF places one basis function on every data point, then blends them with a linear \ncombination — exactly what you just saw on the previous slide:\nf(x) = Σₙ wp · φ( ‖x − xᵖ‖ )\nφ(·)  a chosen non-linear function of distance\nwp  the weight on the p-th basis function — solved so f hits every target exactly\nWhy this framing matters\n•  One basis function per data point means N unknown weights \nand N equations — a square, solvable system.',0.426458,24,'2026-08-21 11:57:17'),(17,9,'Φ\nN × N basis-function\nactivations\n×\nw\n=\nt\ntargets\nRadial Basis Function Networks\n8\nF O U N D A T I O N S\nThis Is Also a Neural Network\nRedraw the interpolation equation as a network, and the resemblance to an ANN is exact — just with unusual weights:\nInput → hidden “weights” are simply the training inputs xᵖ themselves — nothing is \nlearned here.',0.420274,29,'2026-08-21 11:57:17'),(18,9,'Radial Basis Function Networks\n12\nM A K I N G I T P R A C T I C A L\nImproving RBF Networks: Four Changes\n1\nFewer hidden units\nM basis functions need not equal N data points — in practice \nM ≪N.',0.428223,46,'2026-08-21 11:57:17'),(19,9,'Radial Basis Function Networks\n13\nC O M P A R I S O N\nRBF Network vs.',0.394284,52,'2026-08-21 11:57:17'),(20,9,'Multi-Layer Perceptron\nAspect\nMLP\nRBF Network\nHidden layers\nOne or more\nExactly one\nHidden activation\nSigmoid / tanh (global)\nGaussian (local)\nDecision regions\nFormed by hyperplanes\nFormed by hyperspheres\nTraining\nAll weights via backprop, jointly\nTwo separate stages\nTypical training speed\nSlower (iterative, thousands of epochs)\nMuch faster (closed-form output stage)\nStrength\nGlobal function approximation, extrapolates reasonably\nFast, accurate local interpolation\nWeakness\nSlower to train\nPoor extrapolation; curse of dimensionality\nRadial Basis Function Networks\n16\nI N P R A C T I C E\nWhere RBF Networks Are Used\nFunction approximation\nModelling smooth continuous \nrelationships from sparse samples.',0.405911,53,'2026-08-21 11:57:17');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-22 16:43:13
