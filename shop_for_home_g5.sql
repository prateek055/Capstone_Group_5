CREATE DATABASE  IF NOT EXISTS `shopping_cart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopping_cart`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shopping_cart
-- ------------------------------------------------------
-- Server version	8.0.30

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
  `admin_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (18,'prateeksati','1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `discount_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (326,'PELLO','1',3599,20,'prateeksati','https://www.ikea.com/in/en/images/products/pello-armchair-holmby-natural__38296_pe130209_s5.jpg?f=s',2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  `category_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` varchar(45) NOT NULL,
  `stocks` int NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'PELLO','chair',3599,'Armchair, Holmby natural',54,'https://www.ikea.com/in/en/images/products/pello-armchair-holmby-natural__38296_pe130209_s5.jpg?f=s'),(3,'RENBERGET','chair',4999,'Comfy and lightweight.',35,'https://www.ikea.com/in/en/images/products/renberget-swivel-chair-bomstad-black__1025981_pe834276_s5.jpg?f=xxs'),(4,'IKEA PS LÖMSK','chair',5999,'Swivel armchair, white/red.',50,'https://www.ikea.com/in/en/images/products/ikea-ps-loemsk-swivel-armchair-white-red__0876409_pe685398_s5.jpg?f=xxs'),(6,'SKRUVSTA','chair',7999,'Swivel chair, Vissle grey.',45,'https://www.ikea.com/in/en/images/products/skruvsta-swivel-chair-vissle-grey__0923961_pe788457_s5.jpg?f=xxs'),(7,'UTESPELARE','chair',9999,'Gaming chair, Bomstad grey.',45,'https://www.ikea.com/in/en/images/products/utespelare-gaming-chair-bomstad-grey__0997779_pe822756_s5.jpg?f=xxs'),(8,'TEODORES','chair',2399,'Chair, white.',57,'https://www.ikea.com/in/en/images/products/teodores-chair-white__0727344_pe735616_s5.jpg?f=s'),(9,'NISSE','chair',999,'Folding chair, black.',36,'https://www.ikea.com/in/en/images/products/nisse-folding-chair-black__0728163_pe736118_s5.jpg?f=s'),(10,'ODGER','chair',6450,'Chair, anthracite.',35,'https://www.ikea.com/in/en/images/products/odger-chair-anthracite__1070852_pe854755_s5.jpg?f=s'),(11,'GAMMALBYN','sofa',20999,'3-seat sofa, grey.',35,'https://www.ikea.com/in/en/images/products/gammalbyn-3-seat-sofa-grey__0868926_pe781434_s5.jpg?f=s'),(12,'FRIHETEN','sofa',43659,'Comfort sofa',50,'https://www.ikea.com/in/en/images/products/friheten-corner-sofa-bed-with-storage-skiftebo-dark-grey__0175610_pe328883_s5.jpg?f=s'),(13,'HEMLINGBY','sofa',33000,'2-seat sofa.',58,'https://www.ikea.com/in/en/images/products/hemlingby-2-seat-sofa-knisa-dark-grey__0835072_pe736542_s5.jpg?f=xxs'),(14,'ORMARYD','sofa',45999,'3-seat sofa.',63,'https://www.ikea.com/in/en/images/products/ormaryd-3-seat-sofa-dark-blue__0919664_pe786704_s5.jpg?f=xxs'),(15,'HOLMSUND','sofa',37899,'Corner sofa-bed.',58,'https://www.ikea.com/in/en/images/products/holmsund-corner-sofa-bed-nordvalla-medium-grey__0829250_pe600302_s5.jpg?f=xxs'),(16,'GLOSTAD','sofa',40299,'2-seat sofa.',47,'https://www.ikea.com/in/en/images/products/glostad-2-seat-sofa-knisa-medium-blue__0950902_pe800742_s5.jpg?f=xxs'),(17,'EKTORP','sofa',25999,'3-seat sofa.',41,'https://www.ikea.com/in/en/images/products/ektorp-3-seat-sofa-totebo-dark-turquoise__0818570_pe774492_s5.jpg?f=xxs'),(18,'KLIPPAN','sofa',35699,'2-seat sofa.',56,'https://www.ikea.com/in/en/images/products/klippan-2-seat-sofa-vissle-grey__0820948_pe709146_s5.jpg?f=xxs'),(19,'LANDSKRONA','sofa',44999,'3-seat sofa.',42,'https://www.ikea.com/in/en/images/products/landskrona-3-seat-sofa-with-chaise-longue-gunnared-dark-grey-wood__0825455_pe680320_s5.jpg?f=xxs'),(20,'VIMLE','sofa',80999,'4-seat sofa with chaise longue.',51,'https://www.ikea.com/in/en/images/products/vimle-4-seat-sofa-with-chaise-longue-gunnared-medium-grey__0778324_pe758893_s5.jpg?f=xxs'),(21,'LINNMON / ADILS','table',2599,'Table, white, 100x60 cm (39 3/8x23 5/8 \")',52,'https://www.ikea.com/in/en/images/products/linnmon-adils-table-white__0737165_pe740925_s5.jpg?f=xxs'),(22,'SANDSBERG','table',3299,'Table, black, 110x67 cm (43 1/4x26 3/8 \")',48,'https://www.ikea.com/in/en/images/products/sandsberg-table-black__1074348_pe856162_s5.jpg?f=s'),(23,'LACK','table',999,'Side table, 55x55 cm (21 5/8x21 5/8 \")',25,'https://www.ikea.com/in/en/images/products/lack-side-table-black-brown__0836402_pe601418_s5.jpg?f=xxs'),(24,'MICKE','table',7999,'Desk, white, 142x50 cm (55 7/8x19 5/8 \")',45,'https://www.ikea.com/in/en/images/products/micke-desk-white__0736020_pe740347_s5.jpg?f=s'),(25,'RIAN','table',899,'Side table, black, 50x30 cm (19 5/8x11 3/4 \")',40,'https://www.ikea.com/in/en/images/products/rian-side-table-black__0773157_pe756206_s5.jpg?f=s'),(26,'LAGKAPTEN ','table',9599,'Desk,120x60 cm (47 1/4x23 5/8 \")',41,'https://www.ikea.com/in/en/images/products/lagkapten-alex-desk-light-green-white__1079054_pe857387_s5.jpg?f=s'),(27,'MELLTORP','table',4599,'Table, 125x75 cm (49 1/4x29 1/2 \")',46,'https://www.ikea.com/in/en/images/products/melltorp-table-white__1028690_pe835489_s5.jpg?f=xxs'),(28,'MALM','table',11999,'Desk, white, 140x65 cm (55 1/8x25 5/8 \")',57,'https://www.ikea.com/in/en/images/products/malm-desk-white__0735975_pe740309_s5.jpg?f=s'),(29,'VITTSJO','table',3459,'Laptop table, 100x36 cm (39 3/8x14 1/8 \")',46,'https://www.ikea.com/in/en/images/products/vittsjoe-laptop-table-black-brown-glass__1048417_ph158871_s5.jpg?f=xxs'),(30,'NODELAND','table',1299,'Bedside table, 37x39 cm (14 5/8x15 3/8 \")',41,'https://www.ikea.com/in/en/images/products/nodeland-bedside-table-black-brown__0974612_pe812475_s5.jpg?f=s'),(31,'TIPHEDE','carpet',799,'flatwoven, 120x180 cm (3 \' 11 \"x5 \' 11 \")',46,'https://www.ikea.com/in/en/images/products/tiphede-rug-flatwoven-natural-black__0772066_pe755879_s5.jpg?f=s'),(32,'STOENSE','carpet',7240,'low pile, 170x240 cm (5 \' 7 \"x7 \' 10 \")',53,'https://www.ikea.com/in/en/images/products/stoense-rug-low-pile-medium-grey__0624383_pe691798_s5.jpg?f=xxs'),(33,'VONSBAK','carpet',4290,'low pile, 133x195 cm (4 \' 4 \"x6 \' 5 \")',24,'https://www.ikea.com/in/en/images/products/vonsbaek-rug-low-pile-dark-blue__1062215_pe850715_s5.jpg?f=s'),(34,'VINDEBAK','carpet',4299,'high pile, 133x195 cm (4 \' 4 \"x6 \' 5 \")',22,'https://www.ikea.com/in/en/images/products/vindebaek-rug-high-pile-light-beige__0989204_pe818412_s5.jpg?f=s'),(35,'VEDBAK','carpet',4699,'low pile, 133x195 cm (4 \' 4 \"x6 \' 5 \")',46,'https://www.ikea.com/in/en/images/products/vedbaek-rug-low-pile-light-grey__1072491_pe855183_s5.jpg?f=s'),(36,'HODDE','carpet',6599,'In/outdoor, 200x250 cm (6 \' 7 \"x8 \' 2 \")',42,'https://www.ikea.com/in/en/images/products/hodde-rug-flatwoven-in-outdoor-grey-black__0894084_pe560678_s5.jpg?f=xxs'),(37,'LOHALS','carpet',6500,'flatwoven, 200x300 cm (6 \' 7 \"x9 \' 10 \")',51,'https://www.ikea.com/in/en/images/products/lohals-rug-flatwoven-natural__0737684_pe560550_s5.jpg?f=s'),(38,'LANGSTED','carpet',999,'low pile, 80x80 cm (2 \' 7 \"x2 \' 7 \")',60,'https://www.ikea.com/in/en/images/products/langsted-rug-low-pile-light-pink__1074096_pe856094_s5.jpg?f=s'),(39,'VOLLERSLEV','carpet',14999,'high pile, 160x230 cm (5 \' 3 \"x7 \' 7 \")',47,'https://www.ikea.com/in/en/images/products/vollerslev-rug-high-pile-white__0933663_pe792171_s5.jpg?f=s'),(40,'STOENSE','carpet',2209,' low pile, 80x150 cm (2 \' 7 \"x4 \' 11 \")',44,'https://www.ikea.com/in/en/images/products/stoense-rug-low-pile-off-white__0624418_pe691828_s5.jpg?f=xxs'),(41,'BARLAST','lamp',799,'Floor lamp',42,'https://www.ikea.com/in/en/images/products/barlast-floor-lamp-black-white__0957676_pe805130_s5.jpg?f=s'),(42,'TAGARP','lamp',899,'Floor uplighter',45,'https://www.ikea.com/in/en/images/products/tagarp-floor-uplighter-black-white__0810840_pe771436_s5.jpg?f=s'),(43,'SVALLET','lamp',599,'Work lamp',55,'https://www.ikea.com/in/en/images/products/svallet-work-lamp-dark-grey-white__0703502_pe724751_s5.jpg?f=s'),(44,'VICKLEBY','lamp',699,'Floor lamp',56,'https://www.ikea.com/in/en/images/products/vickleby-floor-lamp-beige-handmade__0963285_pe808402_s5.jpg?f=s'),(45,'LERSTA','lamp',999,'Floor/reading lamp',53,'https://www.ikea.com/in/en/images/products/lersta-floor-reading-lamp-aluminium__0606034_pe681992_s5.jpg?f=s'),(46,'TERTIAL','lamp',1299,'Work lamp',41,'https://www.ikea.com/in/en/images/products/tertial-work-lamp-dark-grey__0609306_pe684440_s5.jpg?f=s'),(47,'ARSTID','lamp',1499,'Table lamp',62,'https://www.ikea.com/in/en/images/products/arstid-table-lamp-brass-white__0609329_pe684454_s5.jpg?f=s'),(48,'LAMPAN','lamp',499,'Table lamp',22,'https://www.ikea.com/in/en/images/products/lampan-table-lamp-white__0609346_pe684467_s5.jpg?f=s'),(49,'BARLAST','lamp',589,'Table lamp',39,'https://www.ikea.com/in/en/images/products/barlast-table-lamp-black-white__1032422_pe836908_s5.jpg?f=s'),(50,'HARTE','lamp',1249,'LED work lamp',34,'https://www.ikea.com/in/en/images/products/harte-led-work-lamp-white-silver-colour__0243818_pe383097_s5.jpg?f=s'),(51,'PLUGGLAND','wallpaper',999,'Memo board, black',60,'https://www.ikea.com/in/en/images/products/pluggland-memo-board-black__1047764_pe843513_s5.jpg?f=s'),(52,'SAVSTA','wallpaper',899,'Memo board, black',50,'https://www.ikea.com/in/en/images/products/saevsta-memo-board-black__0916694_pe785345_s5.jpg?f=s'),(53,'SNICKRA','wallpaper',599,'8-piece storage board set',42,'https://www.ikea.com/in/en/images/products/snickra-8-piece-storage-board-set-grey-green__1045574_pe842659_s5.jpg?f=s'),(54,'SVENSAS','wallpaper',699,'Memo board with pins',55,'https://www.ikea.com/in/en/images/products/svensas-memo-board-with-pins-beige__0955383_pe803778_s5.jpg?f=s'),(55,'KVICKSUND','wallpaper',399,'Memo board, white',-1176,'https://www.ikea.com/in/en/images/products/kvicksund-memo-board-white__0836925_pe778607_s5.jpg?f=s'),(56,'SVENSAS','wallpaper',459,'Memo board, white',59,'https://www.ikea.com/in/en/images/products/svensas-memo-board-white__0748934_pe745333_s5.jpg?f=s'),(57,'KANGSLEBODA','wallpaper',1099,'Wall decoration, family',36,'https://www.ikea.com/in/en/images/products/kaengsleboda-wall-decoration-family__1060783_pe850180_s5.jpg?f=s'),(58,'SVENSAS','wallpaper',589,'Pegboard with letters',61,'https://www.ikea.com/in/en/images/products/kaengsleboda-wall-decoration-family__10607https://www.ikea.com/in/en/images/products/svensas-pegboard-with-letters-dark-grey__0799205_pe767595_s5.jpg?f=s83_pe850180_s5.jpg?f=s'),(59,'SKADIS','wallpaper',649,'Pegboard,36x56 cm (14 ¼x22 \")',58,'https://www.ikea.com/in/en/images/products/skadis-pegboard-white__0719667_pe732131_s5.jpg?f=s'),(60,'SKADIS','wallpaper',889,'Pegboard,56x56 cm (22x22 \")',47,'https://www.ikea.com/in/en/images/products/skadis-pegboard-white__1095922_pe864103_s5.jpg?f=xl'),(61,'KOLAX','bedspread',1599,'Bedspread, 230x250 cm (91x98 \")',56,'https://www.ikea.com/in/en/images/products/koelax-bedspread-grey-green__1022881_pe832976_s5.jpg?f=xxs'),(62,'INGABRITTA','bedspread',1299,'pale pink, 130x170 cm (51x67 \")',66,'https://www.ikea.com/in/en/images/products/ingabritta-throw-pale-pink__0890847_pe632013_s5.jpg?f=xxs'),(63,'TJARBLOMSTER','bedspread',1360,'grey, 150x210 cm (59x83 \")',78,'https://www.ikea.com/in/en/images/products/tjaerblomster-bedspread-grey__0885792_pe694782_s5.jpg?f=xxs'),(64,'URSPRUNGLIG','bedspread',1250,'stripe, 230x250 cm (91x98 \")',45,'https://www.ikea.com/in/en/images/products/ursprunglig-bedspread-stripe__0885742_pe687027_s5.jpg?f=xxs'),(65,'SKARMLILJA','bedspread',1399,'light blue, 230x250 cm (91x98 \")',66,'https://www.ikea.com/in/en/images/products/skaermlilja-bedspread-light-blue__1022896_pe832983_s5.jpg?f=xxs'),(66,'BOLLTISTEL','bedspread',1450,'blue, 150x200 cm (59x79 \")',62,'https://www.ikea.com/in/en/images/products/bolltistel-bedspread-blue__0886057_pe717570_s5.jpg?f=xxs'),(67,'TRATTVIVA','bedspread',1249,'grey, 150x250 cm (59x98 \")',42,'https://www.ikea.com/in/en/images/products/trattviva-bedspread-grey__0885423_pe639567_s5.jpg?f=xxs'),(68,'MJUKPLISTER','bedspread',1799,'light pink, 260x250 cm (102x98 \")',57,'https://www.ikea.com/in/en/images/products/mjukplister-bedspread-light-pink__1073233_pe855666_s5.jpg?f=xxs'),(69,'URSPRUNGLIG','bedspread',1699,'white/black, 150x250 cm (59x98 \")',62,'https://www.ikea.com/in/en/images/products/ursprunglig-bedspread-white-black__0885606_pe687028_s5.jpg?f=xxs'),(70,'INDIRA','bedspread',1456,'white, 230x250 cm (91x98 \")',52,'https://www.ikea.com/in/en/images/products/indira-bedspread-white__0885734_pe575972_s5.jpg?f=xxs'),(71,'new ','wallpaper',399,'Memo board, white',37,'https://www.ikea.com/in/en/images/products/kvicksund-memo-board-white__0836925_pe778607_s5.jpg?f=s'),(72,'new product','wallpaper',399,'Memo board, white',43,'https://www.ikea.com/in/en/images/products/kvicksund-memo-board-white__0836925_pe778607_s5.jpg?f=s');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_log`
--

DROP TABLE IF EXISTS `sales_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `quantity` int NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_log`
--

LOCK TABLES `sales_log` WRITE;
/*!40000 ALTER TABLE `sales_log` DISABLE KEYS */;
INSERT INTO `sales_log` VALUES (100,'prateek','LAGKAPTEN ',9599,2,'22/7/2022-21:36:24'),(101,'prateek','LANDSKRONA',44999,1,'22/7/2022-21:36:24'),(102,'prateek','STOENSE',7240,3,'22/7/2022-21:36:24'),(103,'prateek','TIPHEDE',799,4,'22/7/2022-21:36:24'),(104,'prateek','MELLTORP',4599,7,'22/7/2022-21:36:24'),(105,'prateek','VONSBAK',4290,9,'22/7/2022-21:36:24'),(106,'prateek','INDIRA',1456,2,'22/7/2022-21:36:53'),(107,'prateek','MJUKPLISTER',1799,2,'22/7/2022-21:36:53'),(108,'prateek','new ',399,3,'22/7/2022-21:36:53'),(109,'prateek','IKEA PS LÖMSK',5999,2,'22/7/2022-21:47:20'),(110,'prateek','ADDE',999,2,'22/7/2022-21:47:20'),(111,'prateek','PELLO',3599,2,'22/7/2022-21:47:20'),(112,'prateek','SKRUVSTA',7999,2,'22/7/2022-21:47:20'),(113,'prateek','STEFAN',2599,3,'22/7/2022-21:47:20'),(114,'prateek','NISSE',999,5,'22/7/2022-21:47:20'),(115,'prateek','TEODORES',2399,2,'22/7/2022-21:47:20'),(116,'prateek','ADDE',999,2,'22/7/2022-22:6:0'),(117,'prateek','ADDE',999,2,'23/7/2022-0:27:53'),(118,'prateek','PELLO',3599,1,'23/7/2022-0:52:39'),(119,'prateek','PELLO',3599,1,'23/7/2022-0:52:39'),(120,'prateek','PELLO',3599,1,'23/7/2022-0:52:39'),(121,'prateek','PELLO',3599,3,'23/7/2022-0:54:24'),(122,'prateeksati','PELLO',3599,1,'23/7/2022-2:8:58'),(123,'prateeksati','ADDE',999,3,'23/7/2022-2:8:58'),(124,'prateeksati','STEFAN',2599,6,'23/7/2022-2:9:15'),(125,'prateeksati','SKRUVSTA',7999,2,'23/7/2022-2:9:15'),(126,'prateek','PELLO',3599,5,'23/7/2022-9:36:27'),(127,'prateek','ADDE',999,1,'23/7/2022-9:36:27'),(128,'prateek','PELLO',3599,1,'23/7/2022-9:36:27'),(129,'prateek','RENBERGET',4999,3,'23/7/2022-9:36:47'),(130,'prateeksati','STEFAN',2599,3,'23/7/2022-11:4:57'),(131,'prateeksati','ADDE',999,4,'23/7/2022-11:4:57'),(132,'prateeksati','IKEA PS LÖMSK',5999,1,'23/7/2022-11:4:57'),(133,'prateeksati','ADDE',999,4,'23/7/2022-11:5:51');
/*!40000 ALTER TABLE `sales_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (19,'prateeksati','admin','1234'),(20,'prateek','user','qwerty'),(21,'abc','user','asdf'),(22,'xyzuser','user','pass'),(23,'prateekwipro','user','password'),(24,'ps@gmail','user','ps@gmail');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `quantity` int NOT NULL,
  `total_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (17,'PELLO',1,3599,3579,'prateeksati','https://www.ikea.com/in/en/images/products/pello-armchair-holmby-natural__38296_pe130209_s5.jpg?f=s'),(18,'ADDE',1,999,979,'prateeksati','https://www.ikea.com/in/en/images/products/adde-chair-white__0728280_pe736170_s5.jpg?f=s'),(19,'PELLO',1,3599,3579,'prateeksati','https://www.ikea.com/in/en/images/products/pello-armchair-holmby-natural__38296_pe130209_s5.jpg?f=s'),(20,'UTESPELARE',1,9999,9979,'prateeksati','https://www.ikea.com/in/en/images/products/utespelare-gaming-chair-bomstad-grey__0997779_pe822756_s5.jpg?f=xxs'),(21,'PELLO',1,3599,3579,'prateeksati','https://www.ikea.com/in/en/images/products/pello-armchair-holmby-natural__38296_pe130209_s5.jpg?f=s'),(22,'RENBERGET',1,4999,4979,'prateeksati','https://www.ikea.com/in/en/images/products/renberget-swivel-chair-bomstad-black__1025981_pe834276_s5.jpg?f=xxs');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24 10:31:54
