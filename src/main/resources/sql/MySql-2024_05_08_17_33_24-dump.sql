-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: spring_security_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `description` text,
  `generic_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_id` (`generic_id`),
  KEY `vendor_id` (`vendor_id`),
  CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`generic_id`) REFERENCES `generics` (`id`),
  CONSTRAINT `brands_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Indever','n/a',2,2),(2,'Abetis','n/a',2,2),(3,'Feglo-FZ','n/a',2,2),(4,'Cora-DX','n/a',2,2),(5,'Acical-D','n/a',1,5),(6,'Reversair','n/a',1,5),(7,'Xeldrin','n/a',1,5),(8,'Artica','n/a',1,5),(9,'Hexisol','n/a',1,5),(10,'Paricel','n/a',3,5),(11,'Gabarol-CR','n/a',3,1),(12,'Atasin','n/a',3,1),(13,'Micoral-Gel','n/a',3,1);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `doctor_bmdc` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bmdc_no` (`doctor_bmdc`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Ashraful Islam','6256'),(2,'Dr. Zahid Hossain','2511'),(3,'Dr. Omar Ahmed','1789'),(4,'Dr. Rafi Khan','9413'),(5,'Dr. Anwar Ali','4699'),(6,'Dr. Alam Rahman','3254'),(7,'Dr. Shahid Karim','1175'),(8,'Dr. Rubel Uddin','4113'),(9,'Dr. Reza Miah','7043'),(10,'Dr. Hasan Chowdhury','3873');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generics`
--

DROP TABLE IF EXISTS `generics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generics`
--

LOCK TABLES `generics` WRITE;
/*!40000 ALTER TABLE `generics` DISABLE KEYS */;
INSERT INTO `generics` VALUES (1,'Aceclofenac'),(2,'Ambroxol-Hydrochloride'),(5,'Amlodipine-+-Telmisartan'),(3,'Amlodipine-Besylate'),(4,'Amlodipine-Besylate-+-Atenolol'),(6,'Amoxicillin-+-Clavulanic-Acid'),(7,'Atorvastatin'),(8,'Azithromycin'),(9,'Baclofen'),(10,'Bilastine'),(11,'Bisoprolol'),(12,'Butamirate-Citrate'),(14,'Calcium-(Coral-source)-+-Vitamin-D3'),(13,'Calcium-Carbonate-&-vitamin-D3'),(15,'Calcium-Orotate'),(16,'Carbonyl-Iron_Folic-Acid_Zinc-Sulphate'),(17,'Cefepime'),(18,'Cefixime-Trihydrate'),(19,'Ceftriaxone-Sodium'),(20,'Cefuroxime-Axetil'),(21,'Cefuroxime-Axetil-&&-Clavulanic-Acid'),(22,'Cephradine'),(23,'Cholecalciferol'),(24,'Ciprofloxacin'),(25,'Clindamycin-Phosphate-&&-Tretinoin'),(26,'Clobetasol-Propionate'),(27,'Clonazepam-USP'),(28,'Clopidogrel-Bisufate'),(29,'Clopidogrel-Bisulfate-+-Aspirin'),(30,'Desloratadine'),(31,'Dexlansoprazole'),(32,'Diacerein-and-Glucosamine-Sulfate'),(33,'Domperidone'),(34,'Doxofylline'),(35,'Econazole-Nitrate-&&-Triamcinolone-Acetonide'),(36,'Esomeprazole'),(37,'Etoricoxib-INN'),(38,'Famotidine'),(39,'Fexofenadine-Hydrochloride'),(40,'Finasteride-and-Tadalafil'),(41,'Flucloxacillin'),(42,'Fluconazole'),(43,'Fluocinolone-Acetonide_Hydroquinone-&&-Tretinoin'),(44,'Flupentixol-&&-Melitracen'),(45,'Glycerol'),(48,'Hydrochlorothiazide-+-Telmisartan'),(46,'Hydrocortisone'),(47,'Hydroquinone'),(49,'Iron-Sucrose'),(50,'Ketorolac-Tromethamine'),(51,'Lactulose'),(52,'Levamlodipine'),(53,'Levosalbutamol-Sulphate'),(54,'Linagliptin'),(55,'Losartan-Potassium'),(56,'Losartan-Potassium-+-Hydrochlorothiazide'),(57,'Meropenem'),(59,'Methyl-Salicylate-+-Menthol'),(58,'Methyl-salicylate-BP_Menthol-USP_Thymol-BP_Eucalyptol-USP'),(60,'Methylprednisolone'),(61,'Metronidazole'),(62,'Miconazole'),(63,'Miconazole-Nitrate-&&-Hydrocortison'),(64,'Microgabalin-Besylate'),(65,'Molnupiravir'),(66,'Montelukast'),(67,'Multivitamin-Multimineral'),(68,'Mupirocin'),(69,'Naproxen-&&-Esomeprazole'),(70,'Naproxen-Sodium'),(71,'Nitazoxanide'),(72,'Palonosetron'),(73,'Pantoprazole-BP'),(74,'Paracetamol-BP'),(75,'Paracetamol-BP-500-mg-&&-Caffeine-BP-65-mg'),(76,'Permethrin'),(77,'Povidone-Iodine'),(78,'Pregabalin-INN'),(79,'Rabeprazole-Sodium'),(80,'Ranitidine-USP'),(81,'Rosuvastatin'),(82,'Rupatadine'),(83,'Silver-Sulphadiazine'),(84,'Sodium-Alginate_Sodium-Bicarbonate_Calcium-Carbonate'),(85,'Sodium-Bicarbonate-+-Citric-Acid-+-Sodium-Carbonate'),(86,'Sodium-Picosulfate'),(87,'Sodium-Picosulfate-BP_Magnesium-Oxide-BP-and-Anhydrous-Citric-Acid-BP'),(88,'Sucralose'),(89,'Telmisartan'),(90,'Tenofovir-Disoproxil-Fumarate'),(91,'Tiemonium-Methylsulphate-INN'),(92,'Triamcinolone-Acetonide'),(93,'Triamcinolone-Acetonide_Neomycin_Gramicidin-&&-Nystatin'),(94,'Vitamin-A-+-Vit-B1-+-Vit-B2-+-Vit-B6-+-Vit-C-+-Vit-D-+-V');
/*!40000 ALTER TABLE `generics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`location_name`),
  UNIQUE KEY `latitude` (`latitude`),
  UNIQUE KEY `longitude` (`longitude`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Gulshan-1',23.7806615,90.4112899),(2,'Banani',23.7947552,90.3954059),(3,'Dhanmondi',23.7470303,90.3655623),(4,'Mirpur-1',23.7945624,90.3435587),(5,'Uttara',23.8766322,90.3576884);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'John Doe','01234567890'),(2,'Alice Smith','09876543210'),(3,'Bob Johnson','05551234567'),(4,'Emily Brown','05559876543'),(5,'Michael Wilson','09998887776'),(6,'Emma Lee','01239874560'),(7,'William Taylor','07894561230'),(8,'Olivia Martinez','09517534680'),(9,'James Anderson','04561237890'),(10,'Sophia Garcia','03692581470'),(11,'Alexander Hernandez','07539518520'),(12,'Mia Lopez','03216549870'),(13,'Ethan Perez','06543219870'),(14,'Charlotte Gonzalez','02589631470'),(15,'Daniel Ramirez','07896541230'),(16,'Amelia Torres','09638527410'),(17,'Matthew Flores','01472583690'),(18,'Harper Diaz','01593578520'),(19,'Henry Rivera','03579514560'),(20,'Ava Cruz','08529637410');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_brands`
--

DROP TABLE IF EXISTS `prescription_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prescription_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prescription_id` (`prescription_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `prescription_brands_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`),
  CONSTRAINT `prescription_brands_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_brands`
--

LOCK TABLES `prescription_brands` WRITE;
/*!40000 ALTER TABLE `prescription_brands` DISABLE KEYS */;
INSERT INTO `prescription_brands` VALUES (35,1,1),(36,1,2),(37,1,3),(38,2,4),(39,2,3),(40,3,4),(41,3,7),(42,3,3),(43,4,3),(44,4,4),(45,5,9),(46,5,4),(47,5,3),(48,5,2),(49,5,1),(50,5,7),(51,6,3),(52,6,4),(53,6,12),(54,7,3),(55,7,5),(56,7,11),(57,8,1),(58,8,2),(59,8,3),(60,8,4),(61,9,3),(62,9,7),(63,10,5),(64,10,4),(65,10,3),(66,10,2),(67,10,9),(68,10,11),(69,11,1),(70,11,2),(71,11,3),(72,11,4),(73,12,1),(74,12,2),(75,12,3),(76,12,4),(77,13,1),(78,13,2),(79,13,3),(80,13,4),(81,14,1),(82,14,5),(83,14,6),(84,14,4),(85,15,1),(86,15,7),(87,15,8),(88,16,3),(89,16,1),(90,16,9),(91,16,3),(92,17,13),(93,17,12),(94,17,11),(95,18,1),(96,18,3),(97,19,7),(98,19,8),(99,20,13),(100,20,1),(101,20,2),(102,20,3),(103,20,4),(104,20,5),(105,20,6);
/*!40000 ALTER TABLE `prescription_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_id` (`patient_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,1,1,1),(2,2,2,1),(3,5,3,2),(4,6,5,4),(5,4,17,3),(6,1,10,1),(7,3,4,5),(8,2,5,3),(9,1,20,3),(10,3,15,5),(11,9,20,1),(12,9,19,1),(13,9,18,1),(14,1,5,1),(15,1,6,1),(16,1,7,1),(17,1,8,1),(18,1,9,1),(19,3,11,3),(20,3,2,3);
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'farhan','jack','farhanjack','$2a$10$U5.TUCJjxbrhXwP4dN8JAu1cEM8/yNZ9N7LYvlPNvWk9xPGxUE.gy','USER'),(2,'roney','jack','roneyjack','$2a$10$c/YuwVlKVbn0lQfrxLVM1.zdR.yrEyrbRYWDh2oLY64ZWbGxogqha','USER'),(3,'jack','pritom','jackpritom','$2a$10$AWmBUDpnjIF/T2IVBMXE..xYTTl3c0hWdlZ9iYw6/eR2irY0Xo1H2','USER'),(4,'rana','pritom','ranapritom','$2a$10$uRVSkTECv/a.nl6CHErpM.DRQQWS9Q.KHoBTc582L1PA01M7tRfp.','USER'),(5,'rana','pritom','raom','$2a$10$tJiXA2MqWBH4uWCrrjmSuOJeAQF/J6t6rn4SF1F4oPnoQIkmCpgWm','USER'),(6,'rana','pritom','kolla1234','$2a$10$.vJyfImlJjelCPg0Cb1rneP5U0/rYEB8VuXvGl6g3F2W2chsbCJ3m','USER'),(7,'kala','pritom','kolla','$2a$10$Ed7KwO7XT1C2An5GsHWNr.E6HWxo5RSuUUMy9eLKRrUKCQU0mssti','USER'),(8,'kala','pritom','kallks3','$2a$10$xRk1gCPwOnrVactC.gZU4O0dJN5dBoLimcg73CBOA3UekPC.K4dey','USER'),(9,'kala','pritom','gfgfg','$2a$10$/UAylFNcwVNyAkkvH6/rDuZLxPc9Q8ogreSinABb2locToICJ34sa','USER'),(10,'kala','pritom','jfjfjf','$2a$10$gWWazAf3DNWgx/I5sm6bIuPvmnH1k5s1rcpxgyNGvkr5d/1h8Db2u','USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'ACI-Limited'),(2,'ACME-Laboratories-Ltd'),(3,'Ad-din-Pharmaceuticals-Ltd'),(4,'Aexim-Pharmaceuticals-Ltd'),(5,'Al-Madina-Pharmaceuticals-Ltd'),(6,'Albion-Laboratories-Limited'),(7,'Alco-Pharma-Ltd'),(8,'Alien-Pharma'),(9,'Alkad-Laboratories'),(10,'Allied-Pharmaceuticals-Ltd'),(11,'Ambee-Pharmaceuticals-Ltd'),(12,'Amico-Laboratories-Ltd'),(13,'Amulet-Pharmaceuticals-Ltd'),(14,'APC-Pharma-Ltd'),(15,'Apex-Pharmaceuticals-Ltd'),(16,'Apollo-Pharmaceutical-Ltd'),(17,'AqVida-bangladesh'),(18,'Arges-Life-Science-Limited'),(19,'Aristopharma-Ltd'),(20,'Asiatic-Laboratories-Ltd'),(21,'Astra-Biopharmaceuticals-Ltd'),(22,'Aztec-Pharmaceuticals-Ltd'),(23,'Beacon-Pharmaceuticals-PLC'),(24,'Beximco-Pharmaceuticals-Ltd'),(25,'BOTS-Pvt-Limited'),(26,'C2C-Pharma-Ltd'),(27,'City-Overseas-Ltd'),(28,'Cosmo-Pharma-Laboratories-Ltd'),(29,'DBL-Pharmaceuticals-Ltd'),(30,'Desh-Pharmaceuticals-Ltd'),(31,'Doctor’s-Chemical-Works-Ltd'),(32,'Edruc-Limited'),(33,'Empiric-Laboratories-Ltd'),(34,'Euro-Pharma-Ltd'),(35,'Gaco-Pharmaceuticals-Ltd'),(36,'Globe-Pharmaceuticals-Ltd'),(37,'Greenland-Pharmaceuticals-Ltd'),(38,'Hallmark-Pharmaceuticals-Ltd'),(39,'Healthcare-Pharmaceuticals-Ltd'),(40,'Hudson-Pharmaceuticals-Ltd'),(41,'Ibn-Sina-Pharmaceuticals-Ltd'),(42,'Indo-Bangla-Pharmaceutical'),(43,'International-Agencies-(Bd)-Limited'),(44,'Janata-Traders'),(45,'Jayson-Pharmaceuticals-Ltd'),(46,'JMI-Syringes-&-Medical-Devices-Ltd'),(47,'Kawsar-Chemicals'),(48,'Kemiko-Pharmaceuticals-Ltd'),(49,'Kumudini-Pharma-Ltd'),(50,'Labaid-Pharma-Ltd'),(51,'Leon-Pharmaceuticals-Ltd'),(52,'Libra-Infusions-Ltd'),(53,'Maks-Drug-Limited'),(54,'MedRx-Life-Science-Ltd'),(55,'Momotaz-Pharmaceuticals-Ltd'),(56,'Medicon-Pharmaceuticals-Ltd'),(57,'Medimet-Pharmaceuticals-Ltd'),(58,'Naafco-Pharma-Ltd'),(59,'Novartis-(Bangladesh)-Ltd'),(60,'Novo-Nordisk-Pharma-(Pvt)-Ltd'),(61,'One-Pharma-Ltd'),(62,'Orbit-Pharmaceuticals-Ltd'),(63,'OSL-Pharma-Limited'),(64,'Pacific-Pharmaceuticals-Ltd'),(65,'Pharmadesh-Laboratories-Ltd'),(66,'Premier-Pharmaceuticals-Ltd'),(67,'Radiant-Export-Import-Enterprise'),(68,'Reckitt-&-Benckiser-Ltd'),(69,'River-Pharma'),(70,'SN-Pharmaceutical-Ltd'),(71,'Shuvro-Limited'),(72,'Square-Pharmaceuticals-PLC'),(73,'Team-Pharmaceuticals-Ltd'),(74,'The-White-Horse-Pharmaceuticals-Ltd'),(75,'Total-Natural-Company-(Unani)'),(76,'Ultra-Pharma-Ltd'),(77,'UniMed-UniHealth-Pharmaceuticals-Ltd'),(78,'Unique-Pharmaceuticals-Ltd'),(79,'ZAS-Corporation'),(80,'Zenith-Pharmaceuticals-Ltd'),(81,'Ziska-Pharmaceuticals-Ltd'),(82,'Beauty-Formulas'),(83,'Bexter-(Ay)-Laboratories'),(84,'Bright-HealthCare'),(85,'Centeon-Pharma-Ltd'),(86,'Concord-Pharmaceuticals-Ltd'),(87,'Credence-Pharmaceuticals-Ltd'),(88,'Decent-Pharma-Laboratories-Ltd'),(89,'Divas-Secret'),(90,'Dr-Rhazes'),(91,'EMCS-Pharma-Limited-(An-enterprise-of-ICDDRB)'),(92,'Eskayef-Pharmaceuticals-Ltd'),(93,'Everest-Pharmaceuticals-Ltd'),(94,'General-Pharmaceuticals-Ltd'),(95,'Globex-Pharmaceuticals-Ltd'),(96,'GSK-Bangladesh-Limited'),(97,'Incepta-Pharmaceuticals-Ltd'),(98,'Institute-of-Public-Health-(IPH)'),(99,'Jayson-Natural-Products-Ltd'),(100,'Jenphar-Bangladesh-Ltd'),(101,'Legends-Pharma'),(102,'Lexicon-Pharma'),(103,'Libra-Pharmaceuticls-Ltd'),(104,'Marie-Stopes-Bangladesh'),(105,'MGH-Healthcare-Limited'),(106,'Monicopharma-Ltd'),(107,'Navana-Pharmaceuticals-Ltd'),(108,'Novatek-Pharmaceuticals-Ltd'),(109,'Novus-Pharmaceuticals-Ltd'),(110,'Opsonin-Herbal-&-Nutraceuticals-Ltd'),(111,'Orion-Infusion-Ltd'),(112,'Oyster-Pharmaceuticals-Ltd'),(113,'Peoples-Pharma-Ltd'),(114,'Pharmasia-Limited'),(115,'Prime-Pharmaceuticals-Ltd'),(116,'Radiant-Nutraceuticals-Ltd'),(117,'Reliance-Pharmaceuticals-Ltd'),(118,'RN-Pharmaceuticals'),(119,'Salton-Pharmaceuticals-Ltd'),(120,'Silco-Pharmaceutical-Ltd'),(121,'Square-Toiletries-Limited'),(122,'Techno-Drugs-Ltd'),(123,'Total-Herbal-&-Nutraceuticals'),(124,'UNIDO-Pharmaceuticals-Ltd'),(125,'Union-Pharmaceuticals-Ltd'),(126,'United-Pharmaceuticals-Ltd'),(127,'Belsen-Pharmaceuticals-Ltd'),(128,'Biogen-Pharmaceuticals-Ltd'),(129,'Bristol-Pharmaceuticals-Ltd'),(130,'Central-Pharmaceuticals-Ltd'),(131,'Cosmic-Pharma-Ltd'),(132,'CuRx'),(133,'Delta-Pharma-Ltd'),(134,'Doctor-TIMS-Pharmaceuticals-Ltd'),(135,'Drug-International-Ltd'),(136,'EMPECS-Medical-Device-Co-Ltd'),(137,'Ethical-Drugs-Limited'),(138,'Genvio-Pharma-Ltd'),(139,'Gonoshasthaya-Pharma-Ltd'),(140,'Guardian-Healthcare-Ltd'),(141,'Marker-Pharma-Ltd'),(142,'MicroMed'),(143,'MST-Pharma'),(144,'NEMUS-Pharmaceutical-Pvt-Ltd'),(145,'Novelta-Bestway-Pharma-Ltd'),(146,'Nutrilife-Pharma'),(147,'Opsonin-Pharma-Ltd'),(148,'Orion-Pharma-Ltd'),(149,'Pfizer'),(150,'Pharmik-Laboratories-Ltd'),(151,'Pristine-Pharmaceuticals-Ltd'),(152,'Radiant-Pharmaceuticals-Ltd'),(153,'Reman-Drug-Laboratories-Ltd'),(154,'Roche-Bangladesh-Ltd'),(155,'SANDOZ-(A-Novartis-Division)'),(156,'Silva-Pharmaceuticals-Ltd'),(157,'Sun-Pharmaceutical-(Bangladesh)-Ltd'),(158,'Unilever-Bangladesh-Limited'),(159,'Bengal-drugs-Ltd'),(160,'Biopharma-Limited'),(161,'Bronson--Laboratories-(BD)-Ltd'),(162,'Chemist-Laboratories--Ltd'),(163,'Derma-Health-Care'),(164,'Get-Well-Limited'),(165,'Goodman-Pharmaceuticals-Ltd'),(166,'Marksman-Pharmaceuticals-Ltd'),(167,'Millat-Pharmaceuticals-Ltd'),(168,'Mundipharma-(BD)-Pvt-Ltd'),(169,'Nipa-Pharmaceuticals-Ltd'),(170,'Novo-Healthcare-and-Pharma-Ltd'),(171,'Nuvista-Pharma-Ltd'),(172,'Pharmacil-Limited'),(173,'Popular-Pharmaceuticals-Ltd'),(174,'Purnava-Limited'),(175,'Radius-Pharmaceuticals-Ltd'),(176,'Renata-Limited'),(177,'Royal-Pharmaceutical-Ltd'),(178,'Seema-Pharmaceuticals-Ltd'),(179,'Skylab-Pharmaceuticals-Ltd'),(180,'Sunman-Birdem-Pharma-Ltd'),(181,'Benham-Pharmaceuticals-Ltd'),(182,'Modern-Pharmaceuticals-Ltd'),(183,'Mystic-Pharmaceuticals-Ltd'),(184,'NIPRO-JMI-Pharma-Ltd'),(185,'Rangs-Pharmaceuticals-Ltd'),(186,'Rephco-Pharmaceuticals-Ltd'),(187,'Servier-Bangladesh-Operation'),(188,'Social-Marketing-Company'),(189,'Supreme-Pharmaceutical-Ltd'),(190,'Sharif-Pharmaceuticals-Ltd'),(191,'Somatec-Pharmaceuticals-Ltd'),(192,'Synovia-Pharma-PLC');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-08 17:33:24
