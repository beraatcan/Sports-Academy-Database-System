-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: academy
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coach_id` int NOT NULL,
  `coach_name` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Murat Akgündüz','Football','murat.akgunduz@sporakademi.com','55087859645'),(2,'Kerem Yalın Şener','Basketball','yalin.sener@sporakademi.com','51618923120'),(3,'Asuman Uğurlu','Swimming','asuman.ugurlu@sporakademi.com','53312577892'),(4,'Ferhat Özçelik','Tennis','ferhat.ozcelik@sporakademi.com','59900122345'),(5,'Melda Koçak','Volleyball','melda.kocak@sporakademi.com','50833991456');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach_address`
--

DROP TABLE IF EXISTS `coach_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach_address` (
  `coach_id` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  KEY `coach_id` (`coach_id`),
  CONSTRAINT `coach_address_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach_address`
--

LOCK TABLES `coach_address` WRITE;
/*!40000 ALTER TABLE `coach_address` DISABLE KEYS */;
INSERT INTO `coach_address` VALUES (NULL,NULL),(1,'Günçiçek Mahallesi Fidan Caddesi, 36077.Sokak Menekşe Apartmanı, Kırıkkale'),(2,'Altgeçit Mahallesi Papatya Caddesi, 873. Sokak Gül Apartmanı, Ankara'),(3,'Altıntepe Mahallesi, 773. Sokak, Ankara'),(3,'Çiçek Mahallesi, 456. Sokak, Kırıkkale'),(4,'Bahçelievler Mahallesi, 447. Sokak, Ankara'),(5,'Kurtuluş Mahallesi, 123. Sokak, Kırıkkale'),(5,'Barış Mahallesi, 888. Sokak, Ankara'),(1,'Günçiçek Mahallesi Fidan Caddesi, 36077.Sokak Menekşe Apartmanı, Kırıkkale,'),(2,'Altgeçit Mahallesi Papatya Caddesi, 873. Sokak Gül Apartmanı, Ankara'),(3,'Altıntepe Mahallesi, 773. Sokak, Ankara'),(3,'Çiçek Mahallesi, 456. Sokak, Kırıkkale'),(4,'Bahçelievler Mahallesi, 447. Sokak, Ankara'),(5,'Kurtuluş Mahallesi, 123. Sokak, Kırıkkale');
/*!40000 ALTER TABLE `coach_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `enrollment_id` int NOT NULL,
  `enrollment_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `program_id` int DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,'2025-04-20','Pending',1,1),(2,'2025-04-22','Completed',2,1),(3,'2025-04-21','Pending',3,2),(4,'2025-04-25','Completed',4,3),(5,'2025-04-23','Completed',5,4),(6,'2025-04-24','Pending',6,2),(7,'2025-04-22','Pending',7,5),(8,'2025-04-21','Completed',8,3),(9,'2025-04-20','Completed',9,4),(10,'2025-04-24','Pending',10,1),(11,'2025-04-25','Pending',11,2),(12,'2025-04-22','Completed',12,1),(13,'2025-04-20','Pending',13,3),(14,'2025-04-23','Pending',14,4),(15,'2025-04-21','Completed',15,5),(16,'2025-04-22','Completed',16,2),(17,'2025-04-24','Pending',17,1),(18,'2025-04-25','Pending',18,3),(19,'2025-04-21','Completed',19,4),(20,'2025-04-22','Pending',20,5),(21,'2025-04-23','Completed',21,1),(22,'2025-04-20','Pending',22,2),(23,'2025-04-25','Completed',23,3),(24,'2025-04-24','Pending',24,4),(25,'2025-04-23','Pending',25,5),(26,'2025-04-22','Completed',26,1),(27,'2025-04-25','Pending',27,2),(28,'2025-04-21','Completed',28,3),(29,'2025-04-20','Pending',29,4),(30,'2025-04-22','Completed',30,5);
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `enrollment_id` int NOT NULL,
  `payment_id` int DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1001,'2025-04-28',1000.00),(2,1002,'2025-04-27',800.00),(3,1003,'2025-04-29',950.00),(4,1004,'2025-04-30',1200.00),(5,1005,'2025-04-26',1100.00),(6,1006,'2025-04-28',1050.00),(7,1007,'2025-04-29',1000.00),(8,1008,'2025-04-27',1150.00),(9,1009,'2025-04-30',900.00),(10,1010,'2025-04-28',1050.00),(11,1011,'2025-04-26',950.00),(12,1012,'2025-04-29',1000.00),(13,1013,'2025-04-30',1200.00),(14,1014,'2025-04-28',1100.00),(15,1015,'2025-04-27',950.00),(16,1016,'2025-04-29',900.00),(17,1017,'2025-04-30',1150.00),(18,1018,'2025-04-28',1000.00),(19,1019,'2025-04-26',1050.00),(20,1020,'2025-04-29',950.00),(21,1021,'2025-04-28',1000.00),(22,1022,'2025-04-30',900.00),(23,1023,'2025-04-28',950.00),(24,1024,'2025-04-27',1150.00),(25,1025,'2025-04-30',1100.00),(26,1026,'2025-04-28',1200.00),(27,1027,'2025-04-29',1000.00),(28,1028,'2025-04-26',950.00),(29,1029,'2025-04-28',1050.00),(30,1030,'2025-04-30',1100.00);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `program_id` int NOT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `coach_id` int DEFAULT NULL,
  `sport_id` int DEFAULT NULL,
  PRIMARY KEY (`program_id`),
  KEY `coach_id` (`coach_id`),
  KEY `sport_id` (`sport_id`),
  CONSTRAINT `program_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`),
  CONSTRAINT `program_ibfk_2` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'Football Development Program','2025-03-01','2025-05-31',1,1),(2,'Basketball Basic Training','2025-04-10','2025-06-10',2,2),(3,'Swimming Technique Development','2025-05-05','2025-07-05',3,4),(4,'Tennis Advanced Program','2025-06-01','2025-08-01',4,5),(5,'Volleyball Skills Enhancement','2025-04-20','2025-06-20',5,3);
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sport` (
  `sport_id` int NOT NULL,
  `sport_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (1,'Football'),(2,'Basketball'),(3,'Volleyball'),(4,'Swimming'),(5,'Tennis'),(6,'Athletics'),(7,'Handball'),(8,'Archery');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Erik Şensoy','2007-06-15','Male','ifirat@yahoo.com','56681499556'),(2,'Sümerya Akçay Yorulmaz','2012-06-17','Male','cangur41@hotmail.com','55515133975'),(3,'Hilal Yurtçu','2007-04-14','Female','lkarabulut@hotmail.com','56500411592'),(4,'Kurt Torun','2011-01-24','Male','azimdemirel@kaplanlar.com','50823967129'),(5,'Fikriye Kula','2012-08-23','Female','umitdemir@hotmail.com','59829347020'),(6,'Yusuf Emre Sütçü','2011-09-19','Male','oktayilhan@yahoo.com','56129740002'),(7,'Turan Kızıltepe','2009-10-24','Male','akarsu.ipek@terlikci.com','54422702139'),(8,'Sevgi Alper','2007-12-05','Female','elifdaglar@hotmail.com','58212539384'),(9,'Gülten Kutluer','2013-02-15','Female','fatmagul@gmail.com','53500639114'),(10,'Hüseyin Şeker','2011-03-21','Male','m.seker@posta.com','53682537845'),(11,'Ahmet Üstün','2008-04-13','Male','ahmetustun@yahoo.com','57099821344'),(12,'Ayşenur Akkaya','2010-08-06','Female','akkaya_aysenur@posta.com','59622374583'),(13,'Mustafa Güler','2009-09-27','Male','mguler@hotmail.com','53219873120'),(14,'Elif Nur Kaya','2008-07-05','Female','elif.kaya@gmail.com','50122467839'),(15,'Emre Uysal','2010-11-30','Male','emreuysal@posta.com','54928460110'),(16,'Meryem Koç','2012-02-12','Female','meryemkoc@hotmail.com','52389071562'),(17,'İsmail Çetin','2007-05-16','Male','ismail.cetin@gmail.com','53087491235'),(18,'Beyza Ekinci','2013-03-09','Female','beyza.ekinci@posta.com','59722340891'),(19,'Kerem Polat','2011-06-01','Male','kerempolat@yahoo.com','58823100759'),(20,'Melike Demir','2009-01-28','Female','melike.demir@hotmail.com','59127592344'),(21,'Okan Yıldız','2008-10-10','Male','okanyildiz@posta.com','56419000287'),(22,'Zeynep Güneş','2009-06-04','Female','zeynepgunes@gmail.com','55190274683'),(23,'Burak Tan','2011-08-11','Male','burak.tan@yahoo.com','50793284566'),(24,'Seda Yılmaz','2007-03-20','Female','seda.yilmaz@hotmail.com','57488930112'),(25,'Halil İbrahim Aslan','2008-09-19','Male','halilaslan@gmail.com','53600717845'),(26,'Ebru Aydın','2010-07-29','Female','ebruaydin@hotmail.com','59233177658'),(27,'Serhat Taş','2001-12-01','Male','serhattas@posta.com','58120399661'),(28,'Duygu Karaca','2002-05-15','Female','duygu.karaca@gmail.com','59918027500'),(29,'Onur Özkan','2004-09-05','Male','onurozkan@hotmail.com','50413982220'),(30,'Gizem Arslan','2007-02-11','Female','gizemarslan@posta.com','59010345678');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `student_id` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_address_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
INSERT INTO `student_address` VALUES (1,'Türk Mahallesi, 979. Sokak, Ankara'),(1,'Ahi Mesut Mahallesi, 456. Sokak, Ankara'),(2,'Soykut Soylu Mahallesi, 49511. Sokak, Ankara'),(3,'Elifce Mahallesi, 636. Sokak, Kırıkkale'),(4,'Avci Kent Mahallesi, 788. Sokak, Ankara'),(4,'Zafer Mahallesi, 222. Sokak, Kırıkkale'),(5,'Sevimli Vadisi Mahallesi, 847. Sokak, Ankara'),(6,'Mertçe Bahçesi Mahallesi, 773. Sokak, Ankara'),(7,'Göksu Yaylası Mahallesi, 609. Sokak, Kırıkkale'),(7,'Kızılırmak Mahallesi, 345. Sokak, Ankara'),(8,'Yeşilkent Mahallesi, 843. Sokak, Ankara'),(9,'Çamlık Tepesi Mahallesi, 231. Sokak, Ankara'),(10,'Gölbaşı Mahallesi, 714. Sokak, Ankara'),(11,'Yenimahalle Mahallesi, 311. Sokak, Kırıkkale'),(12,'Karşıyaka Mahallesi, 111. Sokak, Ankara'),(13,'Atatürk Mahallesi, 989. Sokak, Ankara'),(14,'İncesu Mahallesi, 284. Sokak, Kırıkkale'),(15,'Yıldırım Mahallesi, 685. Sokak, Ankara'),(16,'Demetevler Mahallesi, 558. Sokak, Ankara'),(17,'Bahçelievler Mahallesi, 301. Sokak, Kırıkkale'),(18,'Aşağıyurtçu Mahallesi, 122. Sokak, Ankara'),(19,'Çayyolu Mahallesi, 980. Sokak, Ankara'),(20,'Etimesgut Mahallesi, 444. Sokak, Ankara'),(21,'Kocatepe Mahallesi, 610. Sokak, Kırıkkale'),(22,'Yükseltepe Mahallesi, 820. Sokak, Ankara'),(23,'Karapürçek Mahallesi, 702. Sokak, Ankara'),(24,'Sincan Mahallesi, 903. Sokak, Ankara'),(25,'Gölbaşı Mahallesi, 847. Sokak, Kırıkkale'),(26,'Yenikent Mahallesi, 221. Sokak, Ankara'),(27,'Fatih Mahallesi, 314. Sokak, Ankara'),(28,'Kayaş Mahallesi, 431. Sokak, Ankara'),(29,'Batıkent Mahallesi, 749. Sokak, Ankara'),(30,'Bahçelievler Mahallesi, 123. Sokak, Ankara');
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-06 22:18:17
