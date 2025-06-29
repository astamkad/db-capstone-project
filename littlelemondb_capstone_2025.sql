-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (arm64)
--
-- Host: localhost    Database: LittleLemonDB
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Current Database: `LittleLemonDB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `LittleLemonDB` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `LittleLemonDB`;

--
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bookings` (
  `BookingID` int NOT NULL,
  `BookingDate` datetime NOT NULL,
  `TableNumber` varchar(45) NOT NULL,
  `NumberOfGuests` varchar(45) NOT NULL,
  `CustomerID` int NOT NULL,
  `StaffID` int DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `Bookings-Customer_idx` (`CustomerID`),
  KEY `Booking-Staff_idx` (`StaffID`),
  CONSTRAINT `Booking-Staff` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`) ON DELETE SET NULL,
  CONSTRAINT `Bookings-Customer` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES (1,'2020-07-24 00:00:00','7','4',7,3),(2,'2022-07-10 00:00:00','8','6',10,3),(3,'2021-06-24 00:00:00','9','6',18,3),(4,'2023-02-06 00:00:00','7','6',38,2),(5,'2022-04-20 00:00:00','4','1',18,3),(6,'2021-11-10 00:00:00','8','5',40,3),(7,'2022-05-18 00:00:00','1','4',21,1),(8,'2023-03-24 00:00:00','4','3',17,2),(9,'2022-01-22 00:00:00','10','6',18,NULL),(10,'2023-05-23 00:00:00','4','1',16,3),(11,'2023-03-26 00:00:00','9','2',45,3),(12,'2024-02-11 00:00:00','8','4',2,NULL),(13,'2022-02-21 00:00:00','4','4',45,1),(14,'2022-03-18 00:00:00','10','3',31,2),(15,'2022-11-17 00:00:00','9','3',23,3),(16,'2022-01-04 00:00:00','5','3',15,NULL),(17,'2024-07-15 00:00:00','4','3',8,1),(18,'2021-07-26 00:00:00','4','6',31,2),(19,'2024-07-21 00:00:00','10','5',39,2),(20,'2021-01-20 00:00:00','4','3',15,2),(21,'2021-07-01 00:00:00','5','1',46,1),(22,'2022-01-11 00:00:00','1','1',36,2),(23,'2024-05-27 00:00:00','3','6',49,3),(24,'2021-01-25 00:00:00','1','5',19,3),(25,'2023-03-06 00:00:00','8','3',12,NULL),(26,'2021-11-28 00:00:00','8','1',5,3),(27,'2023-04-02 00:00:00','2','5',41,NULL),(28,'2021-05-05 00:00:00','3','5',20,NULL),(29,'2021-11-19 00:00:00','2','5',49,3),(30,'2023-11-22 00:00:00','10','5',15,3),(31,'2023-01-07 00:00:00','8','3',38,3),(32,'2022-03-16 00:00:00','10','5',4,NULL),(33,'2024-10-08 00:00:00','4','6',14,2),(34,'2024-03-12 00:00:00','2','2',16,1),(35,'2023-08-03 00:00:00','2','2',1,3),(36,'2023-01-07 00:00:00','10','4',19,NULL),(37,'2021-10-16 00:00:00','5','6',19,3),(38,'2020-11-21 00:00:00','4','3',41,1),(39,'2022-11-16 00:00:00','2','5',15,1),(40,'2021-12-25 00:00:00','3','1',4,1),(41,'2024-12-08 00:00:00','5','5',48,2),(42,'2022-12-15 00:00:00','2','4',45,2),(43,'2024-06-01 00:00:00','7','3',33,3),(44,'2022-12-12 00:00:00','2','5',3,3),(45,'2024-08-11 00:00:00','6','5',17,NULL),(46,'2021-01-02 00:00:00','4','6',37,NULL),(47,'2024-10-12 00:00:00','5','5',3,1),(48,'2023-02-17 00:00:00','9','6',29,2),(49,'2021-07-05 00:00:00','10','4',41,3),(50,'2021-01-01 00:00:00','8','3',27,2),(51,'2022-04-17 00:00:00','2','2',22,3),(52,'2024-05-19 00:00:00','8','3',43,3),(53,'2025-01-20 00:00:00','9','1',30,NULL),(54,'2022-04-04 00:00:00','5','3',8,3),(55,'2025-05-05 00:00:00','9','1',43,3),(56,'2022-10-23 00:00:00','1','2',34,2),(57,'2023-12-26 00:00:00','8','6',29,NULL),(58,'2021-08-19 00:00:00','5','5',9,2),(59,'2022-12-13 00:00:00','8','1',2,1),(60,'2024-06-21 00:00:00','3','3',36,NULL),(61,'2023-08-04 00:00:00','7','1',15,NULL),(62,'2023-01-30 00:00:00','2','6',10,3),(63,'2024-07-05 00:00:00','5','5',46,2),(64,'2022-10-27 00:00:00','8','4',16,3),(65,'2023-08-01 00:00:00','3','4',13,1),(66,'2025-05-03 00:00:00','2','3',50,3),(67,'2022-05-26 00:00:00','9','3',1,2),(68,'2024-07-24 00:00:00','5','5',38,3),(69,'2025-05-06 00:00:00','3','4',35,3),(70,'2022-06-05 00:00:00','6','5',49,3),(71,'2023-01-17 00:00:00','6','2',45,1),(72,'2023-09-13 00:00:00','7','2',50,3),(73,'2020-09-26 00:00:00','6','6',31,3),(74,'2022-08-28 00:00:00','3','4',3,1),(75,'2023-04-23 00:00:00','10','3',7,3),(76,'2021-01-19 00:00:00','9','4',1,1),(77,'2022-10-16 00:00:00','3','1',31,2),(78,'2022-05-23 00:00:00','10','2',5,2),(79,'2024-03-29 00:00:00','1','3',12,NULL),(80,'2023-07-15 00:00:00','7','6',6,3),(81,'2025-07-01 00:00:00','5','4',2,NULL);
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerAddresses`
--

DROP TABLE IF EXISTS `CustomerAddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerAddresses` (
  `AddressID` int NOT NULL,
  `Street` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `PostalCode` varchar(45) DEFAULT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`AddressID`),
  KEY `Customer-Addresses_idx` (`CustomerID`),
  CONSTRAINT `Customer-Addresses` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerAddresses`
--

LOCK TABLES `CustomerAddresses` WRITE;
/*!40000 ALTER TABLE `CustomerAddresses` DISABLE KEYS */;
INSERT INTO `CustomerAddresses` VALUES (1,'123 Main St','Boston','02118','MA','USA',1),(2,'456 Maple Ave','Cambridge','02139','MA','USA',2),(3,'789 Elm St','Somerville','02144','MA','USA',3),(4,'321 Oak Dr','Quincy','02169','MA','USA',4),(5,'654 Pine Rd','Worcester','01602','MA','USA',5),(6,'147 Cedar St','Lowell','01850','MA','USA',6),(7,'258 Birch Blvd','Springfield','01103','MA','USA',7),(8,'369 Aspen Ln','Brockton','02301','MA','USA',8),(9,'951 Willow Way','Framingham','01701','MA','USA',9),(10,'753 Walnut Cir','Newton','02458','MA','USA',10),(11,'159 Poplar St','Lynn','01901','MA','USA',11),(12,'357 Chestnut Rd','Revere','02151','MA','USA',12),(13,'258 Maple Ln','Malden','02148','MA','USA',13),(14,'951 Oak Ave','Medford','02155','MA','USA',14),(15,'753 Elm Cir','Peabody','01960','MA','USA',15),(16,'147 Cedar Ct','Taunton','02780','MA','USA',16),(17,'951 Pine Blvd','Chelsea','02150','MA','USA',17),(18,'654 Birch St','Everett','02149','MA','USA',18),(19,'321 Aspen Rd','Lawrence','01840','MA','USA',19),(20,'789 Willow Dr','Haverhill','01830','MA','USA',20),(21,'456 Walnut Ln','Leominster','01453','MA','USA',21),(22,'123 Poplar Ct','Fitchburg','01420','MA','USA',22),(23,'753 Chestnut Cir','Attleboro','02703','MA','USA',23),(24,'159 Maple Dr','Methuen','01844','MA','USA',24),(25,'357 Oak Blvd','Beverly','01915','MA','USA',25),(26,'951 Elm Ave','Waltham','02451','MA','USA',26),(27,'654 Cedar Cir','Westfield','01085','MA','USA',27),(28,'321 Birch Rd','Holyoke','01040','MA','USA',28),(29,'147 Aspen Way','New Bedford','02740','MA','USA',29),(30,'258 Willow Blvd','Fall River','02720','MA','USA',30),(31,'789 Walnut Ave','Chicopee','01020','MA','USA',31),(32,'123 Poplar Ln','Pittsfield','01201','MA','USA',32),(33,'456 Chestnut Ct','Barnstable','02630','MA','USA',33),(34,'951 Maple Cir','Braintree','02184','MA','USA',34),(35,'654 Oak Dr','Woburn','01801','MA','USA',35),(36,'321 Elm Blvd','Randolph','02368','MA','USA',36),(37,'147 Cedar Rd','Milford','01757','MA','USA',37),(38,'258 Birch Ct','Norwood','02062','MA','USA',38),(39,'753 Aspen Ln','Marlborough','01752','MA','USA',39),(40,'159 Willow Cir','Danvers','01923','MA','USA',40),(41,'357 Walnut Rd','Dracut','01826','MA','USA',41),(42,'951 Poplar Blvd','Amherst','01002','MA','USA',42),(43,'654 Chestnut Ave','Lexington','02420','MA','USA',43),(44,'123 Maple St','Concord','01742','MA','USA',44),(45,'456 Oak Ct','Northampton','01060','MA','USA',45),(46,'789 Elm Rd','Wellesley','02482','MA','USA',46),(47,'321 Cedar Ln','Shrewsbury','01545','MA','USA',47),(48,'147 Birch Blvd','Dedham','02026','MA','USA',48),(49,'258 Aspen Cir','Sudbury','01776','MA','USA',49),(50,'951 Willow Ave','Arlington','02474','MA','USA',50);
/*!40000 ALTER TABLE `CustomerAddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL,
  `CustomerFirstName` varchar(45) NOT NULL,
  `CustomerLastName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Danielle','Johnson','danielle.johnson@example.com','332-181-9600x133'),(2,'William','Johnson','william.johnson@example.com','863.794.0265'),(3,'Joshua','Lewis','joshua.lewis@example.com','001-511-615-5940x78161'),(4,'Andrea','Calderon','andrea.calderon@example.com','+1-593-103-4131x647'),(5,'Cynthia','Diaz','cynthia.diaz@example.com','(534)192-8327x648'),(6,'Jeffrey','Nguyen','jeffrey.nguyen@example.com','001-030-564-1395x37672'),(7,'Joseph','Wright','joseph.wright@example.com','+1-849-696-5328'),(8,'Trevor','Campos','trevor.campos@example.com','226-916-6978'),(9,'John','Tran','john.tran@example.com','1845146270'),(10,'Stephanie','Liu','stephanie.liu@example.com','828-148-9325x288'),(11,'Samantha','George','samantha.george@example.com','015.430.3911x7182'),(12,'David','Alvarez','david.alvarez@example.com','+1-248-963-8346'),(13,'Wanda','Santos','wanda.santos@example.com','871.331.5098x393'),(14,'Adrian','Zimmerman','adrian.zimmerman@example.com','3105183473'),(15,'Amber','Cummings','amber.cummings@example.com','001-973-763-1165'),(16,'Rodney','Owens','rodney.owens@example.com','001-010-651-3338x7262'),(17,'Joshua','Wright','joshua.wright@example.com','781-080-1326'),(18,'Todd','Lewis','todd.lewis@example.com','(026)064-7468x7234'),(19,'Jeff','Brown','jeff.brown@example.com','001-805-009-7882x0812'),(20,'Casey','Jones','casey.jones@example.com','619.399.0916'),(21,'Allison','Cook','allison.cook@example.com','001-626-389-8376x053'),(22,'Amy','Stone','amy.stone@example.com','(219)063-4693x022'),(23,'Angela','Howard','angela.howard@example.com','1396614986'),(24,'Ryan','Freeman','ryan.freeman@example.com','415.723.1727'),(25,'Edward','Hicks','edward.hicks@example.com','001-568-776-6463'),(26,'Brian','Nichols','brian.nichols@example.com','722-088-0161x645'),(27,'Ashley','Kelly','ashley.kelly@example.com','001-204-647-7287x77624'),(28,'Kyle','Peterson','kyle.peterson@example.com','+1-647-866-9089x519'),(29,'Christina','Turner','christina.turner@example.com','263.349.7799x483'),(30,'Lauren','Murray','lauren.murray@example.com','001-275-213-1425x5910'),(31,'Charles','Ross','charles.ross@example.com','301.702.3161x027'),(32,'Gary','Bryant','gary.bryant@example.com','206-218-0956'),(33,'Catherine','Morgan','catherine.morgan@example.com','479-747-9385x777'),(34,'Keith','Clark','keith.clark@example.com','1570375826'),(35,'Pamela','Bailey','pamela.bailey@example.com','001-206-228-6007'),(36,'Debra','Martin','debra.martin@example.com','618.395.9054'),(37,'Frank','Jenkins','frank.jenkins@example.com','+1-838-281-8214x727'),(38,'Eric','Berry','eric.berry@example.com','001-828-777-1121x64389'),(39,'Benjamin','Matthews','benjamin.matthews@example.com','(206)520-2893'),(40,'Rachel','Watson','rachel.watson@example.com','491-208-9324'),(41,'Christina','Wood','christina.wood@example.com','847.859.2021x776'),(42,'Sharon','Carter','sharon.carter@example.com','001-862-998-6752x944'),(43,'Anna','Kelly','anna.kelly@example.com','+1-432-983-5731x0872'),(44,'Katherine','Brooks','katherine.brooks@example.com','724-280-7606'),(45,'Ethan','Barnes','ethan.barnes@example.com','913-093-4715x249'),(46,'Russell','Mitchell','russell.mitchell@example.com','001-208-791-2186x4932'),(47,'Emma','James','emma.james@example.com','352.832.2001x657'),(48,'Judy','Perry','judy.perry@example.com','720-285-4795'),(49,'Philip','Richardson','philip.richardson@example.com','001-405-337-2305x1864'),(50,'Jean','Scott','jean.scott@example.com','(870)624-4600x4057');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuItems`
--

DROP TABLE IF EXISTS `MenuItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuItems` (
  `ItemID` int NOT NULL,
  `MenuID` int NOT NULL,
  `ItemName` varchar(45) NOT NULL,
  `CourseType` varchar(45) NOT NULL,
  `SellPrice` decimal(10,2) DEFAULT NULL,
  `BuyPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ItemID`),
  KEY `Menu-MenuItems_idx` (`MenuID`),
  CONSTRAINT `Menu-MenuItems` FOREIGN KEY (`MenuID`) REFERENCES `Menus` (`MenuID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuItems`
--

LOCK TABLES `MenuItems` WRITE;
/*!40000 ALTER TABLE `MenuItems` DISABLE KEYS */;
INSERT INTO `MenuItems` VALUES (1,1,'Classic Pancakes','Main',8.99,3.00),(2,1,'Scrambled Eggs','Main',6.49,2.10),(3,1,'Hash Browns','Side',3.99,1.50),(4,1,'French Toast','Main',7.49,2.80),(5,2,'Chicken Alfredo','Main',13.99,5.50),(6,2,'Caprese Sandwich','Main',10.99,4.00),(7,2,'Garlic Bread','Side',4.99,1.50),(8,2,'Bruschetta','Appetizer',5.99,2.00),(9,3,'Lamb Chops','Main',19.99,9.50),(10,3,'Stuffed Peppers','Main',12.99,4.20),(11,3,'Olive Tapenade','Appetizer',6.99,2.50),(12,3,'Feta Salad','Side',5.49,2.00),(13,4,'Crème Brûlée','Dessert',7.99,3.00),(14,4,'Chocolate Éclair','Dessert',6.49,2.20),(15,4,'Tiramisu','Dessert',7.49,2.80),(16,4,'Fruit Tart','Dessert',6.99,2.50),(17,5,'Quinoa Bowl','Main',10.99,4.20),(18,5,'Vegan Burger','Main',11.49,4.50),(19,5,'Roasted Veggies','Side',5.99,2.30),(20,5,'Chickpea Curry','Main',9.99,3.90),(21,6,'Grilled Salmon','Main',17.99,8.00),(22,6,'Shrimp Skewers','Main',16.49,7.50),(23,6,'Crab Cakes','Appetizer',13.99,6.00),(24,6,'Seafood Paella','Main',18.99,8.90),(25,7,'BBQ Ribs','Main',15.99,6.70),(26,7,'Grilled Chicken','Main',12.99,5.00),(27,7,'Corn on the Cob','Side',3.49,1.20),(28,7,'Baked Beans','Side',4.49,1.60),(29,8,'Spaghetti Bolognese','Main',11.99,4.80),(30,8,'Pesto Pasta','Main',10.49,4.00),(31,8,'Meatballs','Side',6.49,2.60),(32,8,'Lasagna','Main',12.49,5.20),(33,9,'Mango Smoothie','Drink',5.49,2.00),(34,9,'Berry Blast','Drink',5.99,2.30),(35,9,'Pineapple Punch','Drink',4.99,1.80),(36,9,'Green Detox','Drink',5.79,2.10),(37,10,'Mini Burger','Main',6.49,2.30),(38,10,'Kids Pasta','Main',5.99,2.10),(39,10,'Apple Slices','Side',2.99,1.00),(40,10,'Grilled Cheese','Main',4.99,1.80),(41,11,'Tomato Soup','Appetizer',4.99,1.50),(42,11,'Caesar Salad','Side',5.99,2.30),(43,11,'Greek Salad','Side',6.49,2.50),(44,11,'Miso Soup','Appetizer',4.49,1.40),(45,12,'Patatas Bravas','Appetizer',6.49,2.40),(46,12,'Chorizo Bites','Appetizer',7.49,2.90),(47,12,'Olive Platter','Appetizer',5.49,1.80),(48,12,'Garlic Mushrooms','Appetizer',6.29,2.30),(49,13,'Chicken Satay','Appetizer',7.99,3.00),(50,13,'Spring Rolls','Appetizer',5.49,2.00),(51,13,'Beef Bulgogi','Main',14.99,6.50),(52,13,'Pad Thai','Main',12.99,5.00),(53,14,'Margarita','Drink',8.99,3.20),(54,14,'Mojito','Drink',8.49,2.90),(55,14,'Whiskey Sour','Drink',9.49,3.50),(56,14,'Cosmopolitan','Drink',9.99,3.60),(57,15,'Pumpkin Ravioli','Main',13.99,5.20),(58,15,'Butternut Squash Soup','Appetizer',6.99,2.60),(59,15,'Apple Cider Glazed Chicken','Main',14.49,6.00),(60,15,'Spiced Pear Tart','Dessert',7.49,2.80),(61,7,'Pulled Pork Sandwich','Main',11.49,4.50),(62,7,'Grilled Cornbread','Side',4.29,1.70),(63,6,'Fried Calamari','Appetizer',12.49,5.00),(64,5,'Tofu Stir Fry','Main',10.49,4.00),(65,5,'Avocado Toast','Main',9.49,3.70),(66,3,'Roast Chicken with Olives','Main',15.99,7.00),(67,2,'Minestrone Soup','Appetizer',5.99,2.10),(68,4,'Lemon Tart','Dessert',6.49,2.50),(69,9,'Banana Protein Smoothie','Drink',5.79,2.30),(70,8,'Four Cheese Pasta','Main',11.99,4.80),(71,11,'Broccoli Cheddar Soup','Appetizer',5.49,2.10),(72,12,'Manchego Cheese Plate','Appetizer',7.29,2.90),(73,13,'Teriyaki Noodles','Main',12.99,5.00),(74,10,'Mini Corn Dogs','Main',5.49,1.80),(75,6,'Coconut Shrimp','Appetizer',12.99,5.30),(76,14,'Sangria','Drink',8.99,3.20),(77,15,'Seasonal Veggie Risotto','Main',13.49,5.40),(78,2,'Risotto Milanese','Main',13.49,5.20),(79,1,'Omelette Combo','Main',7.99,3.10),(80,5,'Vegan Nachos','Appetizer',8.49,3.20);
/*!40000 ALTER TABLE `MenuItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menus`
--

DROP TABLE IF EXISTS `Menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Menus` (
  `MenuID` int NOT NULL,
  `MenuName` varchar(45) NOT NULL,
  `Cuisine` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menus`
--

LOCK TABLES `Menus` WRITE;
/*!40000 ALTER TABLE `Menus` DISABLE KEYS */;
INSERT INTO `Menus` VALUES (1,'Breakfast Favorites','American'),(2,'Lunch Specials','Italian'),(3,'Dinner Feast','Mediterranean'),(4,'Dessert Delights','French'),(5,'Vegan Options','International'),(6,'Seafood Selections','Caribbean'),(7,'Grill & BBQ','American'),(8,'Pasta & More','Italian'),(9,'Tropical Smoothies','Fusion'),(10,'Kids Menu','Mixed'),(11,'Soups & Salads','Healthy'),(12,'Tapas Bites','Spanish'),(13,'Asian Street Food','Asian'),(14,'Signature Cocktails','Drinks'),(15,'Seasonal Specials','Fusion');
/*!40000 ALTER TABLE `Menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDeliveryStatus`
--

DROP TABLE IF EXISTS `OrderDeliveryStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDeliveryStatus` (
  `DeliveryID` int NOT NULL,
  `OrderID` int NOT NULL,
  `AddressID` int NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryStatus` varchar(45) NOT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `Orders-OrderDeliveryS_idx` (`OrderID`),
  KEY `Address-OrderDeliveryS_idx` (`AddressID`),
  CONSTRAINT `Address-OrderDeliveryS` FOREIGN KEY (`AddressID`) REFERENCES `CustomerAddresses` (`AddressID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Orders-OrderDeliveryS` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDeliveryStatus`
--

LOCK TABLES `OrderDeliveryStatus` WRITE;
/*!40000 ALTER TABLE `OrderDeliveryStatus` DISABLE KEYS */;
INSERT INTO `OrderDeliveryStatus` VALUES (1,1,1,'2024-07-01','Delivered'),(2,2,2,'2024-07-02','In Transit'),(3,3,3,'2024-07-03','Pending'),(4,4,4,'2024-07-04','Delivered'),(5,5,5,'2024-07-05','Cancelled'),(6,6,6,'2024-07-01','Delivered'),(7,7,7,'2024-07-02','In Transit'),(8,8,8,'2024-07-03','Delivered'),(9,9,9,'2024-07-04','Pending'),(10,10,10,'2024-07-05','Delivered'),(11,11,11,'2024-07-01','Delivered'),(12,12,12,'2024-07-02','In Transit'),(13,13,13,'2024-07-03','Cancelled'),(14,14,14,'2024-07-04','Delivered'),(15,15,15,'2024-07-05','Delivered'),(16,16,16,'2024-07-01','In Transit'),(17,17,17,'2024-07-02','Delivered'),(18,18,18,'2024-07-03','Pending'),(19,19,19,'2024-07-04','Delivered'),(20,20,20,'2024-07-05','Delivered'),(21,21,21,'2024-07-01','Cancelled'),(22,22,22,'2024-07-02','Delivered'),(23,23,23,'2024-07-03','In Transit'),(24,24,24,'2024-07-04','Delivered'),(25,25,25,'2024-07-05','Pending'),(26,26,26,'2024-07-01','Delivered'),(27,27,27,'2024-07-02','In Transit'),(28,28,28,'2024-07-03','Delivered'),(29,29,29,'2024-07-04','Pending'),(30,30,30,'2024-07-05','Delivered'),(31,31,31,'2024-07-01','Delivered'),(32,32,32,'2024-07-02','In Transit'),(33,33,33,'2024-07-03','Cancelled'),(34,34,34,'2024-07-04','Delivered'),(35,35,35,'2024-07-05','Delivered'),(36,36,36,'2024-07-01','In Transit'),(37,37,37,'2024-07-02','Delivered'),(38,38,38,'2024-07-03','Pending'),(39,39,39,'2024-07-04','Delivered'),(40,40,40,'2024-07-05','Delivered'),(41,41,41,'2024-07-01','Cancelled'),(42,42,42,'2024-07-02','Delivered'),(43,43,43,'2024-07-03','In Transit'),(44,44,44,'2024-07-04','Delivered'),(45,45,45,'2024-07-05','Delivered'),(46,46,46,'2024-07-01','Pending'),(47,47,47,'2024-07-02','Delivered'),(48,48,48,'2024-07-03','In Transit'),(49,49,49,'2024-07-04','Delivered'),(50,50,50,'2024-07-05','Delivered');
/*!40000 ALTER TABLE `OrderDeliveryStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDetails` (
  `OrderDetailsID` int NOT NULL,
  `OrderID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`OrderDetailsID`),
  KEY `MenuItem-OrderDetails_idx` (`ItemID`),
  KEY `Order-OrderDetails` (`OrderID`),
  CONSTRAINT `MenuItem-OrderDetails` FOREIGN KEY (`ItemID`) REFERENCES `MenuItems` (`ItemID`) ON UPDATE CASCADE,
  CONSTRAINT `Order-OrderDetails` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDetails`
--

LOCK TABLES `OrderDetails` WRITE;
/*!40000 ALTER TABLE `OrderDetails` DISABLE KEYS */;
INSERT INTO `OrderDetails` VALUES (1,60,14,6,63),(2,42,28,2,85),(3,12,9,4,32),(4,60,19,5,70),(5,44,1,4,87),(6,24,16,2,42),(7,34,11,3,89),(8,90,29,3,60),(9,67,7,1,32),(10,53,16,5,78),(11,89,16,6,74),(12,58,26,1,18),(13,29,13,6,32),(14,85,19,3,53),(15,68,12,4,100),(16,71,11,3,73),(17,35,10,3,31),(18,93,7,3,21),(19,69,25,6,27),(20,28,24,4,35),(21,76,25,5,64),(22,13,27,2,37),(23,47,6,3,11),(24,69,5,3,14),(25,7,18,3,73),(26,17,21,4,19),(27,2,19,3,52),(28,57,11,2,97),(29,33,28,4,20),(30,9,13,4,17),(31,81,22,1,24),(32,73,10,1,99),(33,16,18,4,65),(34,80,8,5,44),(35,57,10,5,99),(36,40,19,5,15),(37,95,4,2,66),(38,34,22,1,24),(39,23,18,1,24),(40,53,15,6,63),(41,38,2,2,36),(42,37,23,4,16),(43,30,30,3,81),(44,81,19,6,82),(45,26,14,1,59),(46,83,5,3,84),(47,10,2,2,81),(48,77,24,5,93),(49,57,4,4,72),(50,90,13,3,55),(51,64,15,1,64),(52,56,24,3,64),(53,4,3,2,97),(54,74,19,1,100),(55,87,27,3,62),(56,98,25,2,52),(57,84,15,3,26),(58,75,14,6,83),(59,12,16,3,47),(60,42,22,1,87),(61,43,14,6,55),(62,85,13,5,13),(63,12,11,3,39),(64,99,13,5,84),(65,1,22,5,52),(66,7,7,5,43),(67,97,16,6,50),(68,7,7,3,59),(69,37,15,6,54),(70,4,21,5,82),(71,91,6,3,60),(72,71,14,1,30),(73,15,15,1,68),(74,20,16,6,36),(75,91,9,4,85),(76,61,8,4,60),(77,50,7,5,56),(78,18,28,1,35),(79,54,11,5,34),(80,1,10,6,37),(81,76,19,6,54),(82,20,15,5,54),(83,43,18,5,44),(84,42,28,2,98),(85,31,19,4,31),(86,100,14,1,39),(87,61,23,4,45),(88,85,26,6,98),(89,64,2,2,55),(90,76,11,1,89),(91,57,4,5,92),(92,2,24,2,47),(93,84,5,1,52),(94,34,11,5,72),(95,84,3,3,87),(96,69,13,3,66),(97,98,16,5,13),(98,9,8,6,72),(99,37,8,6,18),(100,13,25,6,73),(101,74,18,5,16),(102,41,36,2,24),(103,4,24,4,18),(104,72,16,3,22),(105,91,58,2,25),(106,37,63,2,12),(107,10,58,2,23),(108,57,12,3,20),(109,91,9,5,18),(110,39,21,2,22),(111,66,29,1,25),(112,18,31,4,10),(113,71,74,3,17),(114,71,17,5,23),(115,9,40,4,25),(116,93,62,5,16),(117,53,74,1,12),(118,41,10,4,17),(119,67,45,2,23),(120,100,71,5,13),(121,17,56,5,24),(122,8,16,5,12),(123,22,21,3,24),(124,29,45,5,23),(125,11,33,2,20),(126,71,36,2,19),(127,79,69,1,18),(128,22,76,5,12),(129,85,80,5,15),(130,73,6,1,11),(131,83,74,3,20),(132,99,74,4,19),(133,4,64,5,14),(134,39,62,2,22),(135,88,52,3,17),(136,89,8,2,17),(137,62,60,2,15),(138,19,41,3,21),(139,45,52,2,21),(140,66,72,1,15),(141,60,16,3,17),(142,19,13,1,14),(143,50,79,4,14),(144,21,42,5,21),(145,25,21,4,25),(146,60,64,3,17),(147,12,51,5,17),(148,31,28,5,15),(149,7,37,4,19),(150,84,61,3,18),(151,14,56,2,23),(152,94,47,4,15),(153,52,7,5,18),(154,47,71,3,11),(155,65,58,5,14),(156,80,79,1,12),(157,13,51,3,22),(158,44,72,3,21),(159,26,78,5,16),(160,6,6,1,12),(161,43,61,5,17),(162,78,66,2,15),(163,79,41,2,16),(164,79,39,5,15),(165,66,69,4,21),(166,39,61,1,16),(167,87,15,4,19),(168,93,4,5,17),(169,84,75,5,13),(170,7,75,4,13),(171,81,80,4,12),(172,88,32,1,19),(173,90,15,2,10),(174,41,54,2,16),(175,27,53,5,22),(176,61,8,2,18),(177,72,42,4,18),(178,41,23,4,24),(179,44,70,3,20),(180,93,34,5,17),(181,32,36,5,14),(182,39,37,2,20),(183,63,41,4,15),(184,93,36,3,12),(185,87,70,4,23),(186,51,45,2,14),(187,37,11,3,24),(188,84,33,4,13),(189,69,35,5,20),(190,18,14,5,21),(191,31,32,1,20),(192,68,29,2,11),(193,53,43,4,12),(194,99,18,1,24),(195,21,53,4,17),(196,26,37,3,14),(197,8,12,5,13),(198,95,5,2,16),(199,23,5,4,22),(200,24,38,1,10),(201,73,78,1,24),(202,43,37,4,25),(203,70,68,4,23),(204,18,65,4,14),(205,15,43,2,21),(206,83,33,2,10),(207,44,38,5,20),(208,25,23,5,23),(209,52,55,5,15),(210,52,13,2,25),(211,62,42,2,10),(212,50,31,4,21),(213,43,39,5,21),(214,2,34,3,20),(215,8,16,4,15),(216,52,65,3,20),(217,82,38,3,19),(218,29,18,4,12),(219,96,78,3,16),(220,71,61,5,22),(221,28,32,5,23),(222,11,68,4,18),(223,47,10,5,12),(224,71,65,2,19),(225,20,22,3,23),(226,57,15,2,21),(227,63,12,5,17),(228,8,59,2,18),(229,59,73,1,18),(230,87,40,1,16),(231,1,28,5,11),(232,55,45,1,18),(233,8,9,4,10),(234,53,24,2,21),(235,94,54,3,25),(236,49,58,4,16),(237,88,70,2,20),(238,45,16,2,25),(239,51,68,2,21),(240,29,1,1,25),(241,60,70,4,18),(242,30,32,4,15),(243,36,25,1,10),(244,85,54,5,21),(245,3,31,2,11),(246,77,5,4,19),(247,91,7,2,21),(248,52,57,2,18),(249,97,8,2,18),(250,38,30,5,15);
/*!40000 ALTER TABLE `OrderDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `BookingID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `TotalCost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `Customers-Orders_idx` (`CustomerID`),
  KEY `Booking-Orders_idx` (`BookingID`),
  CONSTRAINT `Booking-Orders` FOREIGN KEY (`BookingID`) REFERENCES `Bookings` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Customers-Orders` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,1,7,'2020-07-24',65.00),(2,2,10,'2022-07-10',78.00),(3,3,18,'2021-06-24',55.00),(4,4,38,'2023-02-06',120.00),(5,5,18,'2022-04-20',42.50),(6,6,40,'2021-11-10',64.00),(7,7,21,'2022-05-18',93.75),(8,8,17,'2023-03-24',35.00),(9,9,18,'2022-01-22',110.00),(10,10,16,'2023-05-23',47.00),(11,11,45,'2023-03-26',66.00),(12,12,2,'2024-02-11',39.00),(13,13,45,'2022-02-21',60.00),(14,14,31,'2022-03-18',85.25),(15,15,23,'2022-11-17',91.00),(16,16,15,'2022-01-04',59.50),(17,17,8,'2024-07-15',50.00),(18,18,31,'2021-07-26',42.25),(19,19,39,'2024-07-21',100.00),(20,20,15,'2021-01-20',38.50),(21,21,46,'2021-07-01',29.00),(22,22,36,'2022-01-11',70.00),(23,23,49,'2024-05-27',95.00),(24,24,19,'2021-01-25',77.00),(25,25,12,'2023-03-06',61.00),(26,26,5,'2021-11-28',45.00),(27,27,41,'2023-04-02',102.00),(28,28,20,'2021-05-05',56.75),(29,29,49,'2021-11-19',89.25),(30,30,15,'2023-11-22',63.00),(31,31,38,'2023-01-07',48.00),(32,32,4,'2022-03-16',58.00),(33,33,14,'2024-10-08',72.00),(34,34,16,'2024-03-12',39.00),(35,35,1,'2023-08-03',64.50),(36,36,19,'2023-01-07',80.00),(37,37,19,'2021-10-16',67.00),(38,38,41,'2020-11-21',33.00),(39,39,15,'2022-11-16',59.00),(40,40,4,'2021-12-25',44.00),(41,41,48,'2024-12-08',50.00),(42,42,45,'2022-12-15',46.25),(43,43,33,'2024-06-01',88.50),(44,44,3,'2022-12-12',91.00),(45,45,17,'2024-08-11',75.00),(46,46,37,'2021-01-02',34.00),(47,47,3,'2024-10-12',99.00),(48,48,29,'2023-02-17',85.00),(49,49,41,'2021-07-05',92.00),(50,50,27,'2021-01-01',68.00),(51,51,22,'2022-04-17',49.00),(52,52,43,'2024-05-19',78.50),(53,53,30,'2025-01-20',63.00),(54,54,8,'2022-04-04',55.00),(55,55,43,'2025-05-05',70.00),(56,56,34,'2022-10-23',44.00),(57,57,29,'2023-12-26',100.00),(58,58,9,'2021-08-19',88.00),(59,59,2,'2022-12-13',77.00),(60,60,36,'2024-06-21',90.00),(61,61,15,'2023-08-04',85.00),(62,62,10,'2023-01-30',66.00),(63,63,46,'2024-07-05',45.00),(64,64,16,'2022-10-27',55.00),(65,65,13,'2023-08-01',69.00),(66,66,50,'2025-05-03',70.00),(67,67,1,'2022-05-26',53.00),(68,68,38,'2024-07-24',81.00),(69,69,35,'2025-05-06',78.00),(70,70,49,'2022-06-05',92.50),(71,71,45,'2023-01-17',67.00),(72,72,50,'2023-09-13',61.00),(73,73,31,'2020-09-26',44.00),(74,74,3,'2022-08-28',52.00),(75,75,7,'2023-04-23',69.00),(76,76,1,'2021-01-19',39.00),(77,77,31,'2022-10-16',59.00),(78,78,5,'2022-05-23',73.00),(79,79,12,'2024-03-29',64.00),(80,80,6,'2023-07-15',89.00),(81,1,7,'2020-08-01',62.00),(82,2,10,'2022-07-11',91.00),(83,3,18,'2021-06-25',75.00),(84,4,38,'2023-02-07',50.00),(85,5,18,'2022-04-21',65.00),(86,6,40,'2021-11-11',84.00),(87,7,21,'2022-05-19',49.00),(88,8,17,'2023-03-25',59.00),(89,9,18,'2022-01-23',76.00),(90,10,16,'2023-05-24',85.00),(91,11,45,'2023-03-27',38.00),(92,12,2,'2024-02-12',93.00),(93,13,45,'2022-02-22',57.00),(94,14,31,'2022-03-19',49.00),(95,15,23,'2022-11-18',42.00),(96,16,15,'2022-01-05',60.00),(97,17,8,'2024-07-16',58.00),(98,18,31,'2021-07-27',71.00),(99,19,39,'2024-07-22',67.00),(100,20,15,'2021-01-21',62.00);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersview`
--

DROP TABLE IF EXISTS `ordersview`;
/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersview` AS SELECT 
 1 AS `OrderID`,
 1 AS `ItemID`,
 1 AS `ItemName`,
 1 AS `Quantity`,
 1 AS `UnitSellPrice`,
 1 AS `LineTotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `salesreportview`
--

DROP TABLE IF EXISTS `salesreportview`;
/*!50001 DROP VIEW IF EXISTS `salesreportview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salesreportview` AS SELECT 
 1 AS `OrderID`,
 1 AS `CustomerFirstName`,
 1 AS `CustomerLastName`,
 1 AS `OrderDate`,
 1 AS `ItemID`,
 1 AS `ItemName`,
 1 AS `Quantity`,
 1 AS `UnitSellPrice`,
 1 AS `BuyPrice`,
 1 AS `TotalRevenue`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `salessummaryreport`
--

DROP TABLE IF EXISTS `salessummaryreport`;
/*!50001 DROP VIEW IF EXISTS `salessummaryreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salessummaryreport` AS SELECT 
 1 AS `TotalOrders`,
 1 AS `UniqueCustomers`,
 1 AS `TotalItemsSold`,
 1 AS `TotalRevenue`,
 1 AS `TotalProfit`,
 1 AS `AverageOrderValue`,
 1 AS `MaxSingleOrderValue`,
 1 AS `MinSingleOrderValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff` (
  `StaffID` int NOT NULL,
  `StaffFirstName` varchar(45) DEFAULT NULL,
  `StaffLastName` varchar(45) DEFAULT NULL,
  `StaffRole` varchar(45) DEFAULT NULL,
  `StaffSalary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,'Amara','Obi','Manager',75000.00),(2,'John','Mensah','Assistant Manager',65000.00),(3,'Fatima','Yusuf','Chef',60000.00),(4,'Samuel','Karanja','Waiter',35000.00),(5,'Linda','Chilombo','Hostess',32000.00),(6,'Daniel','Okeke','Bartender',40000.00),(7,'Mariam','Diallo','Cashier',38000.00),(8,'James','Mwangi','Dishwasher',28000.00),(9,'Stella','Okoro','Sous Chef',55000.00),(10,'Peter','Njoroge','Cleaner',27000.00);
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'LittleLemonDB'
--

--
-- Dumping routines for database 'LittleLemonDB'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`localhost` PROCEDURE `AddBooking`(
    IN in_BookingID INT,
    IN in_CustomerID INT,
    IN in_BookingDate DATE,
    IN in_TableNumber INT,
    IN in_NumberOfGuests INT
)
BEGIN
    INSERT INTO Bookings (
        BookingID,
        CustomerID,
        BookingDate,
        TableNumber,
        NumberOfGuests
    )
    VALUES (
        in_BookingID,
        in_CustomerID,
        in_BookingDate,
        in_TableNumber,
        in_NumberOfGuests
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddValidBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`localhost` PROCEDURE `AddValidBooking`(
    IN booking_date DATE,
    IN table_no INT,
    IN customer_id INT,
    IN num_guests INT
)
BEGIN
    DECLARE booking_count INT;

    START TRANSACTION;

    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_no;

    IF booking_count > 0 THEN
        ROLLBACK;
        SELECT CONCAT('Booking failed: Table ', table_no, ' is already booked on ', booking_date) AS Status;
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID, NumberOfGuests)
        VALUES (booking_date, table_no, customer_id, num_guests);

        COMMIT;
        SELECT CONCAT('Booking successful for Table ', table_no, ' on ', booking_date) AS Status;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`localhost` PROCEDURE `CancelBooking`(
    IN p_BookingID INT
)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = p_BookingID;

    SELECT CONCAT('Booking ID ', p_BookingID, ' has been cancelled.') AS Message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`localhost` PROCEDURE `CancelOrder`(IN order_id INT)
BEGIN
	DELETE FROM Orders WHERE OrderID = order_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`localhost` PROCEDURE `CheckBooking`(
    IN booking_date DATE,
    IN table_no INT
)
BEGIN
    DECLARE booking_count INT;

    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_no;

    IF booking_count > 0 THEN
        SELECT CONCAT('Table ', table_no, ' is already booked on ', booking_date) AS Status;
    ELSE
        SELECT CONCAT('Table ', table_no, ' is available on ', booking_date) AS Status;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMaxQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN
	SELECT MAX(Quantity) AS MaxOrderQuantity FROM OrderDetails;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SalesSummaryByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin1`@`localhost` PROCEDURE `SalesSummaryByDate`(IN StartDate DATE, IN EndDate DATE)
BEGIN
    -- Use defaults if NULL is passed
    DECLARE EffectiveStart DATE DEFAULT '2000-01-01';
    DECLARE EffectiveEnd DATE DEFAULT CURRENT_DATE();

    SET EffectiveStart = IFNULL(StartDate, EffectiveStart);
    SET EffectiveEnd = IFNULL(EndDate, EffectiveEnd);

    -- Simulate a print statement
    SELECT CONCAT('Generating Sales Report from ', EffectiveStart, ' to ', EffectiveEnd) AS ReportPeriod;

    SELECT
        COUNT(DISTINCT o.OrderID) AS TotalOrders,
        COUNT(DISTINCT o.CustomerID) AS UniqueCustomers,
        SUM(od.Quantity) AS TotalItemsSold,
        ROUND(SUM(od.Price * od.Quantity), 2) AS TotalRevenue,
        ROUND(SUM((od.Price - mi.BuyPrice) * od.Quantity), 2) AS TotalProfit,
        ROUND(AVG(od.Price * od.Quantity), 2) AS AverageOrderValue,
        ROUND(MAX(od.Price * od.Quantity), 2) AS MaxOrderValue,
        ROUND(MIN(od.Price * od.Quantity), 2) AS MinOrderValue
    FROM Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    JOIN MenuItems mi ON od.ItemID = mi.ItemID
    WHERE o.OrderDate BETWEEN EffectiveStart AND EffectiveEnd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `LittleLemonDB`
--

USE `LittleLemonDB`;

--
-- Final view structure for view `ordersview`
--

/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin1`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersview` AS select `od`.`OrderID` AS `OrderID`,`od`.`ItemID` AS `ItemID`,`mi`.`ItemName` AS `ItemName`,`od`.`Quantity` AS `Quantity`,`od`.`Price` AS `UnitSellPrice`,(`od`.`Quantity` * `od`.`Price`) AS `LineTotal` from (`orderdetails` `od` join `menuitems` `mi` on((`od`.`ItemID` = `mi`.`ItemID`))) where (`od`.`Quantity` > 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salesreportview`
--

/*!50001 DROP VIEW IF EXISTS `salesreportview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin1`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salesreportview` AS select `o`.`OrderID` AS `OrderID`,`c`.`CustomerFirstName` AS `CustomerFirstName`,`c`.`CustomerLastName` AS `CustomerLastName`,`o`.`OrderDate` AS `OrderDate`,`od`.`ItemID` AS `ItemID`,`mi`.`ItemName` AS `ItemName`,`od`.`Quantity` AS `Quantity`,`od`.`Price` AS `UnitSellPrice`,`mi`.`BuyPrice` AS `BuyPrice`,(`od`.`Quantity` * `od`.`Price`) AS `TotalRevenue`,(`od`.`Quantity` * (`od`.`Price` - `mi`.`BuyPrice`)) AS `Profit` from (((`orders` `o` join `orderdetails` `od` on((`o`.`OrderID` = `od`.`OrderID`))) join `customers` `c` on((`o`.`CustomerID` = `c`.`CustomerID`))) join `menuitems` `mi` on((`od`.`ItemID` = `mi`.`ItemID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salessummaryreport`
--

/*!50001 DROP VIEW IF EXISTS `salessummaryreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin1`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salessummaryreport` AS select count(distinct `o`.`OrderID`) AS `TotalOrders`,count(distinct `o`.`CustomerID`) AS `UniqueCustomers`,sum(`od`.`Quantity`) AS `TotalItemsSold`,sum((`od`.`Price` * `od`.`Quantity`)) AS `TotalRevenue`,sum(((`od`.`Price` - `mi`.`BuyPrice`) * `od`.`Quantity`)) AS `TotalProfit`,avg((`od`.`Price` * `od`.`Quantity`)) AS `AverageOrderValue`,max((`od`.`Price` * `od`.`Quantity`)) AS `MaxSingleOrderValue`,min((`od`.`Price` * `od`.`Quantity`)) AS `MinSingleOrderValue` from ((`orders` `o` join `orderdetails` `od` on((`o`.`OrderID` = `od`.`OrderID`))) join `menuitems` `mi` on((`od`.`ItemID` = `mi`.`ItemID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-28 20:00:25
