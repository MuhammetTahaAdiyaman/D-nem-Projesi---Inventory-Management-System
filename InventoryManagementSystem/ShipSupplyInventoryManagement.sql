CREATE DATABASE  IF NOT EXISTS `inventorymanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventorymanagement`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: inventorymanagement
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CATEGORY_ID` int NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(50) NOT NULL,
  `CATEGORY_DESC` varchar(100) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Meat/Poultry','Prepared meats'),(7,'Produce','Dried fruit and bean curd'),(8,'Seafood','Seaweed and fish');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `CONTACT_ID` int NOT NULL AUTO_INCREMENT,
  `CONTACT_NAME` varchar(50) NOT NULL,
  `CONTACTTITLE_ID` int DEFAULT NULL,
  `CONTACT_ADDRESS` varchar(100) NOT NULL,
  `CONTACT_CITY` varchar(50) NOT NULL,
  `CONTACT_PHONE` char(11) NOT NULL,
  `CONTACT_EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`CONTACT_ID`),
  UNIQUE KEY `CONTACT_PHONE` (`CONTACT_PHONE`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Mayumi Ohno',1,'92 Setsuko','Osaka','(06) 431-78','mayumi@gmail.com'),(2,'Peter Wilson',5,'29 King\'s Way','Manchester','(161) 555-4','peter@gmail.com'),(3,'Carlos Diaz',8,'Av. das Americanas 12.890','São Paulo','(11) 555 46','carlos@gmail.com'),(4,'Elio Rossi',11,'Hatlevegen 5','Cuxhaven','(503) 555-9','elio@gmail.com'),(5,'Jean-Guy Lauzon',10,'Kaloadagatan 13','Sydney','(514) 555-2','jean@gmail.com'),(6,'Marie Delamare',7,'471 Serangoon Loop, Suite #402','Montréal','(514) 555-9','marie.@gmail.com'),(7,'Niels Petersen',6,'22, rue H. Voiron','Annecy','(12345) 121','niels@gmail.com'),(8,'Michael Björn',3,'Order Processing Dept.','Sandvika','01232132139','michael@gmail.com'),(9,'Beate Vileid',4,'Verkoop sjaklç','Frankfurt','1237894560','beate@gmail.com'),(10,'Antonio del Valle Saavedra ',2,'Bat. Bads klospxc.','Melbourne','1987654320','antonio@gmail.com'),(11,'Regina Murphy',9,'Lyngbysildvvv','Oviedo','1230987654','regina@gmail.com'),(12,'',NULL,'','','1234561239','');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacttitle`
--

DROP TABLE IF EXISTS `contacttitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacttitle` (
  `CONTACTTITLE_ID` int NOT NULL AUTO_INCREMENT,
  `CONTACTTITLE_TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CONTACTTITLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacttitle`
--

LOCK TABLES `contacttitle` WRITE;
/*!40000 ALTER TABLE `contacttitle` DISABLE KEYS */;
INSERT INTO `contacttitle` VALUES (1,'Purchasing Manager'),(2,'Marketing Representative'),(3,'Marketing Manager'),(4,'Sales Representative'),(5,'International Marketing Mgr.'),(6,'Regional Account Rep.'),(7,'Accounting Manager'),(8,'Order Administrator'),(9,'Product Manager'),(10,'Wholesale Account Agent'),(11,'Owner');
/*!40000 ALTER TABLE `contacttitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUSTOMER_ID` int NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` varchar(50) NOT NULL,
  `EMPLOYEE_SURNAME` varchar(50) NOT NULL,
  `CUSTOMER_ADDRESS` varchar(100) NOT NULL,
  `CUSTOMER_CITY` varchar(20) NOT NULL,
  `CUSTOMER_PHONE` char(11) NOT NULL,
  `CUSTOMER_EMAIL` char(50) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `CUSTOMER_PHONE` (`CUSTOMER_PHONE`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Henriette ','Pfalzheim','2817 Milton Dr.','Monaco','1237894560',''),(2,'Catherine ','Dewey','Av. Copacabana, 267','Roma','1112223334',''),(3,'Guillermo ','Fernández','Erling Skakkes gate 78','Venedic','1999203940',''),(4,'Alexander ','Feuer','Vinbæltet 34','Berlin','1827381909',''),(5,'Paula ','Wilson','P.O. Box 555','Hamburg','1237843945','paula@gmail.com'),(6,'Jonas ','Bergulfsen','89 Jefferson Way','Sydney','3249086345','jonads@gmail.com'),(7,'Dominique ','Perrier','Luisenstr. 48','Atina','1892391040','dominiqu@gmail.com'),(8,'Miguel Angel ','Paolino','Av. Inês de Castro, 414','Londra','9023589404','miguel@gmail.com'),(9,'Liz ','Nixon','2, rue du Commerce','Bruksel','4590834502','liz@gmail.com'),(10,'Palle ','Ibsen','59 rue de l\'Abbaye','Moscov','9302413450','a.aaaa@gmail.com'),(11,'Paul ','Henriot','Adenauerallee 900','Amsterdam','1293821040','aaaa@gmail.com'),(12,'Matti ','Karttunen','Torikatu 38','Munich','9340856435','matti@gmail.com'),(13,'Paula ','Parente','305 - 14th Ave. S.','Frankfurt','2349085245','paula@gmail.com'),(14,'Zbyszek ','Piestrzeniewicz','ul. Filtrowa 68','Honnover','4839543593','eeee@gmail.com'),(15,'Liu ','Wong','Ing. Gustavo Moncada 8585','Marseille','9034024459','dddd@gmail.com'),(16,'Jose ','Pavarotti','67, avenue de l\'Europe','Nice','4783534903','cccc@gmail.com'),(17,'Horst ','Kloss','8 Johnstown Road','Cane','5980235454','bbbb@gmail.com'),(18,'Lúcia ','Carvalho','Garden House','Dortmund','8594698546','aaaa@gmail.com'),(19,'Bernardo ','Batista','C/ Romero, 33','Atalanta','5846893049','sadad@gmail.com'),(20,'Georg ','Pipps','Via Monte Bianco 34','Torino','8345894353','gerofsa@gmail.com'),(21,'Yvonne ','Moncada','Åkergatan 24','Juventus','5654645654','yvıone@gmail.com'),(22,'Daniel ','Tonini','C/ Moralzarzal, 86','Istanbul','6576576575','daniel@gmail.com'),(23,'Annette ','Roulet','Walserweg 21','Manchester','7898987987','anette@gmail.com'),(24,'Howard ','Snyder','67, rue des Cinquante Otages','Melbourne','3432423224','howard@gmail.com'),(25,'Aria ','Cruz','Maubelstr. 90','Viana','5600657567','aria@gmail.com'),(26,'Diego ','Roel','1900 Oak St.','Zurich','6459654546','diego@gmail.com'),(27,'Annette ','Roulet','12 Orchestra Terrace','Basel','6786787687','annette@gmail.com'),(28,'Marie ','Bertrand','Magazinweg 7','Donetsk','2344343432','maria@gmail.com'),(29,'Art ','Braunschweiger','89 Chiaroscuro Rd.2213','Dublin','1221121121','art@gmail.com'),(30,'Janete ','Limeira','Mehrheimerstr. 369','Diyarbakir','6905607506','janete@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMPLOYEE_ID` int NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_NAME` varchar(50) NOT NULL,
  `EMPLOYEE_SURNAME` varchar(50) NOT NULL,
  `EMPLOYEE_ADDRESS` varchar(100) NOT NULL,
  `EMPLOYEE_PHONE` char(11) NOT NULL,
  `EMPLOYEE_EMAIL` char(50) NOT NULL,
  `ROLES_ID` int DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  UNIQUE KEY `EMPLOYEE_PHONE` (`EMPLOYEE_PHONE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Muhammet Taha','Adiyaman','Izmır','11122233341','mıuh@gmail.com',1),(2,'Oguzhan','Bozkurt','Izmır','12312312331','ogz@gmail.com',2),(3,'Rıdvan','Guzel','Konya','00000002121','rıd@gmail.com',3),(4,'Hasan','Kefte','Samsun','13124134142','hasa@gmail.com',4),(5,'Cemil','Kal','Hatay','84392474239','cem@gmail.com',5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ORDERS_ID` int NOT NULL AUTO_INCREMENT,
  `ORDERS_DATE` date NOT NULL,
  `ORDERS_ADDRESS` varchar(100) NOT NULL,
  `EMPLOOYE_ID` int DEFAULT NULL,
  `CUSTOMER_ID` int DEFAULT NULL,
  `SHIP_ID` int DEFAULT NULL,
  PRIMARY KEY (`ORDERS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-12-10','2817 Milton Dr.',1,1,2),(2,'2021-12-04','P.O. Box 555',2,5,3),(3,'2021-11-25','Luisenstr. 48',3,7,4),(4,'2021-11-10','2, rue du Commerce',1,9,1),(5,'2021-10-19','Adenauerallee 900',4,11,3),(6,'2021-10-14','67, avenue de l\'Europe',5,16,5),(7,'2021-10-03','Åkergatan 24',2,21,2),(8,'2021-09-24','Magazinweg 7',3,28,3),(9,'2021-09-21','Mehrheimerstr. 369',4,30,4),(10,'2021-09-11','C/ Romero, 33',1,19,3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordersdetails`
--

DROP TABLE IF EXISTS `ordersdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersdetails` (
  `ODS_ID` int NOT NULL AUTO_INCREMENT,
  `ORDERS_ID` int DEFAULT NULL,
  `PRODUCT_ID` int DEFAULT NULL,
  `UNITPRICE` smallint NOT NULL,
  `QUANTITY` int NOT NULL,
  `DISCOUNT` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ODS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersdetails`
--

LOCK TABLES `ordersdetails` WRITE;
/*!40000 ALTER TABLE `ordersdetails` DISABLE KEYS */;
INSERT INTO `ordersdetails` VALUES (1,102,1,0,0,0),(2,102,3,13,10,0),(3,103,4,11,15,0),(4,104,5,20,30,5),(5,105,11,50,50,0),(6,106,15,100,5,0),(7,107,6,12,12,10),(8,107,8,5,23,0),(9,108,3,67,45,0),(10,109,4,32,56,0);
/*!40000 ALTER TABLE `ordersdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `PRODUCT_ID` int NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(50) NOT NULL,
  `SUPPLIER_ID` int DEFAULT NULL,
  `CATEGORY_ID` int DEFAULT NULL,
  `UNIT_PRICE` int NOT NULL,
  `STOCK_QUANTITY` int NOT NULL,
  `QUANTITY_TYPE_PER_UNIT` varchar(100) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Chai',1,1,0,0,'10 boxes x 20 bags'),(2,'Aniseed Syrup',2,2,0,0,'12 - 550 ml bottles'),(3,'Chef Anton\'s Gumbo Mix',3,2,0,0,'36 boxes'),(4,'Uncle Bob\'s Organic Dried Pears',4,7,0,0,'12 - 1 lb pkgs.'),(5,'Mishi Kobe Niku',5,6,12,50,'18 - 500 g pkgs.'),(6,'Queso Manchego La Pastora',3,4,15,70,'1 kg pkg.'),(7,'Konbu',2,8,32,20,'2 kg box'),(8,'Pavlova',1,3,16,10,'32 - 500 g boxes'),(9,'Schoggi Schokolade',4,3,32,5,'100 - 100 g pieces'),(10,'Inlagd Sill',5,8,45,25,'24 - 250 g  jars'),(11,'Røgede sild',2,8,67,32,'1k pkg.'),(12,'Maxilaku',1,3,32,68,'24 - 50 g pkgs.'),(13,'Raclette Courdavault',3,4,120,30,'5 kg pkg.'),(14,'Louisiana Hot Spiced Okra',4,2,44,49,'24 - 8 oz jars'),(15,'Fløtemysost',5,4,231,69,'10 - 500 g pkgs.');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `ROLES_ID` int NOT NULL AUTO_INCREMENT,
  `ROLES_TITLE` varchar(50) NOT NULL,
  `ROLES_DESC` varchar(100) NOT NULL,
  PRIMARY KEY (`ROLES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'IT MANAGER','Relating technology'),(2,'SALES MANAGER','Relating Sales'),(3,'ACCOUNT MANAGER','Relation Balance sheet'),(4,'CTO','Relating technic staff'),(5,'CMO','relating marketing');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship`
--

DROP TABLE IF EXISTS `ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship` (
  `SHIP_ID` int NOT NULL AUTO_INCREMENT,
  `SHIP_COMPANY_NAME` varchar(100) NOT NULL,
  `SHIP_COMPANY_PHONE` char(11) DEFAULT NULL,
  PRIMARY KEY (`SHIP_ID`),
  UNIQUE KEY `SHIP_COMPANY_PHONE` (`SHIP_COMPANY_PHONE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship`
--

LOCK TABLES `ship` WRITE;
/*!40000 ALTER TABLE `ship` DISABLE KEYS */;
INSERT INTO `ship` VALUES (1,'Arkas ','87123456781'),(2,'MSC','17823613123'),(3,'Maersk','32487234924'),(4,'Evergrande','19238213912'),(5,'Simsekler','43583495493'),(6,'Hamburg','23238495042');
/*!40000 ALTER TABLE `ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SUPPLIER_ID` int NOT NULL AUTO_INCREMENT,
  `SUPPLIER_COMPANY_NAME` varchar(50) NOT NULL,
  `CONTACT_ID` int DEFAULT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Bozkus',1),(2,'Ucler',3),(3,'Erdil',4),(4,'Sahin',6),(5,'Izeltas',2),(6,'',0);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `WAREHOUSE_ID` int NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_NAME` varchar(50) NOT NULL,
  `WAREHOUSE_TYPE` varchar(50) NOT NULL,
  `WAREHOUSE_LOCATION` varchar(100) NOT NULL,
  `CATEGORY_ID` int DEFAULT NULL,
  `PRODUCT_ID` int DEFAULT NULL,
  PRIMARY KEY (`WAREHOUSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Bati Bolge','Cold','Izmır',6,5),(2,'Dogu Bolge','Normal','Tuzla',3,12);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02 22:28:48
