-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: MDMSystem
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `PTNO` int NOT NULL,
  `Contact No` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Appointment Date and Time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Appointment Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DURATION (MINUTES)` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Doctor / Physio Therapist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,566,'971502000850','12/05/2022 18:00:00','','60','PHILIPPE CHOMIER'),(2,942,'971502000850','12/07/2022 17:00:00','Y','60','PHILIPPE CHOMIER'),(3,1275,'971505084666','12/08/2022 17:00:00','','60','PHILIPPE CHOMIER'),(4,938,'971507176677','12/09/2022 17:00:00','Y','60','PHILIPPE CHOMIER'),(5,1090,'971551989276','12/10/2022 17:00:00','Y','60','PHILIPPE CHOMIER'),(6,1268,'971508779090','12/11/2022 16:45:00','Y','15','MOURAD GHRAIRI'),(7,566,'971504511399','12/28/2022 16:15:00','','15','MOURAD GHRAIRI'),(8,1090,'971504511399','12/20/2022 16:00:00','','60','ESTHER ESTEBAN GARCIA'),(9,1358,'971529001713','12/12/2022 16:00:00','','15','MOURAD GHRAIRI'),(10,1436,'971544545033','12/05/2022 16:00:00','','60','PHILIPPE CHOMIER'),(11,573,'971501377731','12/09/2022 15:00:00','','60','PHILIPPE CHOMIER'),(12,1358,'971505646900','12/12/2022 15:00:00','','60','ESTHER ESTEBAN GARCIA'),(13,1440,'971558558835','12/15/2022 15:00:00','','60','PHILIPPE CHOMIER'),(14,1269,'971507447990','12/19/2022 14:00:00','','60','SARI ABDULLAH SHEIKH'),(15,581,'971508833446','12/20/2022 14:00:00','','60','ESTHER ESTEBAN GARCIA'),(16,1436,'971554075757','12/22/2022 14:00:00','','60','RADOUANE AMIRAT'),(17,943,'971502520600','12/21/2022 13:00:00','','60','SARI ABDULLAH SHEIKH'),(18,1269,'971503666636','12/23/2022 13:00:00','','60','RADOUANE AMIRAT'),(19,1274,'971504145516','12/26/2022 13:00:00','','60','ESTHER ESTEBAN GARCIA');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (381,'2014_10_12_000000_create_users_table',1),(382,'2014_10_12_100000_create_password_resets_table',1),(383,'2019_08_19_000000_create_failed_jobs_table',1),(384,'2019_12_14_000001_create_personal_access_tokens_table',1),(385,'2023_02_14_185654_create_patients_table',1),(386,'2023_02_14_201341_create_appointments_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `﻿TYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PTNO` int NOT NULL,
  `SALUTATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PATIENTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GENDER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NATIONALITY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REGION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REGISTREDDATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EDDITDATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'GENERAL',922,'MR.','SHAHAD ABDULLA TENAIJI','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(2,'GENERAL',923,'MR.','SHAHAD SALEH ALZAROUNI','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(3,'GENERAL',924,'MR.','SHAHLI AKRAM JUMA','M','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(4,'GENERAL',925,'MR.','SHAHNAZ SHAMIMI','F','IRANIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(5,'GENERAL',926,'MR.','SHAIKHA AL RAIS ','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(6,'GENERAL',927,'MR.','SHAIKHA MOHAMMED','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(7,'GENERAL',928,'MR.','SHAIMAA ABEDHALIM','F','EGYPTIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(8,'GENERAL',929,'MR.','SHAJAHAN BASHA','M','INDIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(9,'GENERAL',930,'MR.','SHAKEER TAYOOB','M','SRI LANKAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(10,'GENERAL',931,'MR.','SHAKILA ARDAKANI','F','IRANIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(11,'GENERAL',932,'MR.','SHAMSA JAFAR','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(12,'GENERAL',933,'MR.','SHAREEFA ABDULKAREEM','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(13,'GENERAL',934,'MR.','SHAREF SALAH AL DEN','M','EGYPTIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(14,'GENERAL',935,'MR.','SHAWKY AL NASSR','M','JORDANIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(15,'GENERAL',936,'MR.','SHEIKH SHABUDDIN','M','INDIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(16,'GENERAL',937,'MR.','SHEREEN RAGGAD','F','AMERICAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(17,'GENERAL',938,'MR.','SHERJAN QAISRANI','M','PAKISTANI','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(18,'GENERAL',939,'MR.','SHIU LUN FUNG','M','HONG KONG','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(19,'GENERAL',940,'MR.','SHOHIB SALEEM','M','PAKISTANI','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(20,'GENERAL',941,'MR.','SHONKAT ARA','F','PAKISTANI','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(21,'GENERAL',942,'MR.','SI YUN GUAN','F','CHINESE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(22,'GENERAL',943,'MR.','SMIT KOTHARI','M','INDIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(23,'GENERAL',944,'MR.','SNEHANSU MAHAPATRA','M','INDIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(24,'GENERAL',945,'MR.','SOAD MOHD','F','PALESTINIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(25,'GENERAL',946,'MR.','SOFIA GOMEZ MARQUITO','F','FILIPINO','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(26,'GENERAL',947,'MR.','SOPHIE FOUCHERE','F','FRENCH','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(27,'GENERAL',948,'MR.','SOROUSH JIRROUDI','M','AMERICAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(28,'GENERAL',1090,'.','AHMED ABDULLAH','M','EGYPTIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(29,'GENERAL',1267,'MISS','NERMINE GAMAL ELDIN EL SHIMY','F','EGYPTIAN','','4/2/11 11:43','7/8/17 19:21'),(30,'GENERAL',1268,'MR.','DEREK   HELLMONS','M','BRITISH','','4/2/11 13:35','01/19/2017 22:04:02'),(31,'GENERAL',1269,'MRS','GHAZZA   KASSIM','F','BRITISH','','4/2/11 17:10','01/19/2017 22:04:02'),(32,'GENERAL',1270,'MR.','ASKAR   DANAYEVA','M','KAZAKHSTANI','DUBAI','4/2/11 17:38','01/19/2017 22:04:02'),(33,'GENERAL',1271,'MRS','ASSEL   DANAYEVA','F','KAZAKHSTANI','DUBAI','4/2/11 17:41','01/19/2017 22:04:02'),(34,'GENERAL',1272,'MISS','NAJLA   ALI','F','UAE','','4/2/11 17:53','01/19/2017 22:04:02'),(35,'RESIDENT - NATIONAL',1273,'MRS','TAHEYA FUAD HAJ ABBAS','F','UAE','','4/2/11 18:05','01/19/2017 22:04:02'),(36,'GENERAL',1274,'MRS','NATALIE   GRALL','F','FRENCH','','4/2/11 18:10','01/19/2017 22:04:02'),(37,'GENERAL',1275,'MISS','NISREEN HUSSEIN HAWATMEH','F','JORDANIAN','','4/2/11 18:57','01/19/2017 22:04:02'),(38,'GENERAL',1358,'MISS','GIULIA   GORI','F','ITALIAN','','04/21/2011 17:18:35','01/19/2017 22:04:02'),(39,'GENERAL',1359,'MISS','MAITHA AL HAJJ ABDULAH ALWADI','F','OMANI','','04/21/2011 17:53:10','01/19/2017 22:04:02'),(40,'RESIDENT - EXPATS',1360,'MISS','NOURA ALHAJ ABDULLAH ALAWADHI','F','OMANI','','04/21/2011 19:21:14','03/20/2017 18:37:54'),(41,'GENERAL',1436,'MR.','MOHAMMAD BUTI RASHED','M','UAE','','5/9/11 11:24','01/19/2017 22:04:02'),(42,'GENERAL',1440,'MR.','MAGED   FIKRY MIKHAIL YOUSSEF','M','EGYPTIAN','','5/9/11 19:12','01/19/2017 22:04:02'),(43,'GENERAL',566,'MR.','LEILA SALEM CHAHLA','F','LEBANESE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(44,'GENERAL',567,'MR.','LEILA WILKES','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(45,'GENERAL',568,'MR.','568 568','M','TURKISH','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(46,'GENERAL',569,'MR.','LIBERATUS DINIZ','M','INDIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(47,'GENERAL',570,'MR.','LILLY GRACE KELT TWORT','F','NEW ZEALANDER','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(48,'GENERAL',571,'MR.','LOK NEPALI','M','NEPALESE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(49,'GENERAL',572,'MR.','LOUISE LEAH SCHRUBER','F','SOUTH AFRICAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(50,'GENERAL',573,'MR.','LOURDES PAULE PINGUL','F','FILIPINO','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(51,'GENERAL',574,'MR.','LOURDINO CUENCO','M','PHILIPPINES','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(52,'GENERAL',575,'MR.','LUISA GAKAEVA','F','RUSSIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(53,'GENERAL',576,'MR.','LYANNE ZIAD RAFHI','F','LEBANESE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(54,'GENERAL',577,'MR.','MA ROSARIO GIMENA ','F','PHILIPPINES','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(55,'GENERAL',578,'MR.','MAAMOUN ALFARRA','M','LEBANESE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(56,'GENERAL',579,'MR.','MADIYAH ALBALOOSHI','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(57,'GENERAL',580,'MR.','MADONA NASSIF','F','LEBANESE','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(58,'GENERAL',581,'MR.','MAGDY KHALIFA','M','EGYPTIAN','','02/28/2011 00:00:00','01/19/2017 22:04:02'),(59,'GENERAL',582,'MR.','MAHA KHALID SAEED','F','UAE','','02/28/2011 00:00:00','01/19/2017 22:04:02');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15  1:26:36
