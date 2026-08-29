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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lecture_id` int NOT NULL,
  `question_type` enum('MCQ','TrueFalse','ShortAnswer') NOT NULL,
  `question_text` text NOT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `correct_answer` varchar(255) NOT NULL,
  `marks` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_question_lecture` (`lecture_id`),
  CONSTRAINT `fk_question_lecture` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'MCQ','Fill in the blank:  A ________ is a mathematical function that maps an input to an output.','task','predicts','model','data','C',1,'2026-08-11 07:31:21'),(2,1,'MCQ','Fill in the blank:  Inverse ________ frequency reduces the weight of words that appear in a very large number of documents.','score','term','important','document','D',1,'2026-08-11 07:31:21'),(3,1,'MCQ','Fill in the blank:  Machine Learning Lecture One Evaluation and Text Processing Overfitting happens when a model memorises the training ________ and therefore performs badly on new unseen data.','pattern','measurable','dataset','data','D',1,'2026-08-11 07:31:21'),(4,1,'MCQ','Fill in the blank:  Tokenization is the process of breaking a document into individual ________ or sentences before any analysis.','words','reduces','term','frequency','A',1,'2026-08-11 07:31:21'),(5,1,'MCQ','Fill in the blank:  Machine ________ Lecture One Introduction Machine learning is a branch of artificial intelligence that allows a computer to learn patterns directly from data instead of being explicitly programmed.','text','discover','Learning','hidden','C',1,'2026-08-11 07:31:21'),(6,1,'TrueFalse','Accuracy is the fraction of predictions that the model got correct out of all the predictions it made.',NULL,NULL,NULL,NULL,'True',1,'2026-08-11 07:31:21'),(7,1,'TrueFalse','TF IDF combines term particular and inverse document frequency to score how important a word is to one document.',NULL,NULL,NULL,NULL,'False',1,'2026-08-11 07:31:21'),(8,1,'TrueFalse','Cosine similarity measures the angle between two vectors and returns a value between zero and one.',NULL,NULL,NULL,NULL,'True',1,'2026-08-11 07:31:21'),(9,1,'ShortAnswer','Explain the term \'training\' in your own words.',NULL,NULL,NULL,NULL,'Training is the process of adjusting the parameters of a model so that its predictions become closer to the correct answers.',2,'2026-08-11 07:31:21'),(10,1,'ShortAnswer','Explain the term \'machine\' in your own words.',NULL,NULL,NULL,NULL,'Machine Learning Lecture One Introduction Machine learning is a branch of artificial intelligence that allows a computer to learn patterns directly from data instead of being explicitly programmed.',2,'2026-08-11 07:31:21'),(11,2,'MCQ','Fill in the blank:  -> Sender must retransmit: ________ 2, Frame 3, Frame 4... 3.','ack','Frame','example','lost','B',1,'2026-08-11 11:45:29'),(12,2,'MCQ','Fill in the blank:  ________ Redundancy & Overhead OSI Model: Defines 7 layers (including Session and Presentation).','Layer','operating','support','transport','A',1,'2026-08-11 11:45:29'),(13,2,'MCQ','Fill in the blank:  This makes replacing ________ theoretically simpler.','maintains','osi','strict','protocols','D',1,'2026-08-11 11:45:29'),(14,2,'MCQ','Fill in the blank:  Computer ________ (Tanenbaum) - Exam Answers Page 3 of 6 Question 3: Compare OSI and TCP/IP Network Architecture models in terms of Protocol Implementation issues.','andrew','discussing','mark','Networks','D',1,'2026-08-11 11:45:29'),(15,2,'MCQ','Fill in the blank:  Each ________ is routed independently; different packets may take different routes.','packet','without','carry','signaling','A',1,'2026-08-11 11:45:29'),(16,2,'TrueFalse','Connection-Oriented vs. Connectionless Support OSI Model: Supports both Connectionless and Connection-Oriented in the Network Layer, but only Connection-Oriented in the Transport Layer.',NULL,NULL,NULL,NULL,'True',1,'2026-08-11 11:45:29'),(17,2,'TrueFalse','Computer Networks (question) - Exam Answers Page 6 of 6',NULL,NULL,NULL,NULL,'False',1,'2026-08-11 11:45:29'),(18,2,'TrueFalse','TCP/IP Model: Supports only Connectionless in the Network Layer (IP), but both modes (TCP and UDP) in the Transport Layer.',NULL,NULL,NULL,NULL,'True',1,'2026-08-11 11:45:29'),(19,2,'ShortAnswer','Explain the term \'computer\' in your own words.',NULL,NULL,NULL,NULL,'Computer Networks (Tanenbaum) - Exam Answers Page 6 of 6',2,'2026-08-11 11:45:29'),(20,2,'ShortAnswer','Explain the term \'router\' in your own words.',NULL,NULL,NULL,NULL,'Routers keep no state information about individual connections.',2,'2026-08-11 11:45:29'),(24,7,'MCQ','Fill in the blank:  ________.','speakers','vs','guide','Python','D',1,'2026-08-20 12:06:35'),(25,7,'MCQ','Fill in the blank:  Python ________.','vs','whiteboard','tuples','lists','A',1,'2026-08-20 12:06:35'),(26,7,'MCQ','Fill in the blank:  ________ context.','requires','Java','low','pseudocodelike','B',1,'2026-08-20 12:06:35'),(27,7,'MCQ','Fill in the blank:  It’s ________ print(\"Hello\") .','paragraph','indentation','just','printhello','C',1,'2026-08-20 12:06:35'),(28,7,'MCQ','Fill in the blank:  ________ vs.','Lists','pop','boxes','lunch','A',1,'2026-08-20 12:06:35'),(29,7,'TrueFalse','It was built for human readability.',NULL,NULL,NULL,NULL,'True',1,'2026-08-20 12:06:35'),(30,7,'TrueFalse','Relational & Logical arithmetic: > , < , >= , <= , == , != , and , or , not .',NULL,NULL,NULL,NULL,'False',1,'2026-08-20 12:06:35'),(31,7,'TrueFalse','Tuples $ ightarrow$ Whiteboard vs.',NULL,NULL,NULL,NULL,'True',1,'2026-08-20 12:06:35'),(32,7,'ShortAnswer','Explain the term \'basic\' in your own words.',NULL,NULL,NULL,NULL,'Basic Math: Arithmetic operators ( + , - , * , / , // , % , ** ).',1,'2026-08-20 12:06:35'),(33,7,'ShortAnswer','Explain the term \'like\' in your own words.',NULL,NULL,NULL,NULL,'Moving from older, rigid languages like Java or C++—or\nstepping into text-based coding for the very first time in Classes 8 through 10—might feel like a\nmassive hurdle.',1,'2026-08-20 12:06:35'),(34,9,'MCQ','Fill in the blank:  Global ________ Functions\nLocalised:  φ(r) → 0  as  r → ∞\ne.g.','radial','rbf','networks','Basis','D',1,'2026-08-21 11:57:17'),(35,9,'MCQ','Fill in the blank:  Radial ________ units\nEach hidden node implements a radial basis function \n(e.g.','mlp','hidden','sigmoid','lines','B',1,'2026-08-21 11:57:17'),(36,9,'MCQ','Fill in the blank:  Radial Basis Function ________\n12\nM A K I N G I T P R A C T I C A L\nImproving RBF Networks: Four Changes\n1\nFewer hidden units\nM basis functions need not equal N data points — in practice \nM ≪N.','vs','interpolation','Networks','exact','C',1,'2026-08-21 11:57:17'),(37,9,'MCQ','Fill in the blank:  Excellent at ________\nBuilt directly from function-approximation / \ninterpolation theory.','exact','interpolation','functionapproximation','networks','B',1,'2026-08-21 11:57:17'),(38,9,'MCQ','Fill in the blank:  2\nLearned centres\nCentres μj no longer have to sit exactly on ________ inputs; a \ntraining algorithm places them.','efficient','needed','training','fast','C',1,'2026-08-21 11:57:17'),(39,9,'MCQ','Fill in the blank:  Two-stage training\nInput→hidden ________ are set first; hidden→output \nweights are solved second.','sum','inputhidden','weights','hiddenoutput','C',1,'2026-08-21 11:57:17'),(40,9,'MCQ','Fill in the blank:  MLP hidden ________: sigmoid (global)\nRBF hidden unit: Gaussian (local)\nRadial Basis Function Networks\n2\nD E F I N I T I O N\nWhat Is a Radial Basis Function Network?','unit','lines','elegant','grey','A',1,'2026-08-21 11:57:17'),(41,9,'TrueFalse','Radial hidden units\nEach hidden node implements a radial basis function \n(e.g.',NULL,NULL,NULL,NULL,'True',1,'2026-08-21 11:57:17'),(42,9,'TrueFalse','nonlinear output\nOutput nodes are simple weighted-sum (linear) units, \nexactly as in an MLP.',NULL,NULL,NULL,NULL,'False',1,'2026-08-21 11:57:17'),(43,9,'TrueFalse','Radial Basis Function Networks\n13\nC O M P A R I S O N\nRBF Network vs.',NULL,NULL,NULL,NULL,'True',1,'2026-08-21 11:57:17'),(44,9,'TrueFalse','Unlike MLPs — where \nmore weight generally helps — here more data means a bigger, slower \nnetwork.',NULL,NULL,NULL,NULL,'False',1,'2026-08-21 11:57:17'),(45,9,'ShortAnswer','Explain the term \'gaussian\' in your own words.',NULL,NULL,NULL,NULL,'Gaussian) of distance from a centre.',1,'2026-08-21 11:57:17');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
