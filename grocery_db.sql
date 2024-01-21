CREATE DATABASE  IF NOT EXISTS `grocery_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `grocery_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: grocery_db
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (53,'Onions',41,17),(54,'Olive oil',400,35),(102,'Garlic',40,42),(104,'Apples',1.99,100),(105,'Bananas',0.99,50),(106,'Milk (1 Gallon)',2.49,75),(107,'Bread',1.75,200),(108,'Eggs (Dozen)',3.99,30),(109,'Chicken Breast (1 lb)',5.99,120),(110,'Spinach (Bag)',2.25,80),(111,'Cheese (Cheddar)',4.5,150),(112,'Rice (2 lb)',2.99,180),(113,'Ground Beef (1 lb)',6.49,60),(114,'Tomatoes',0.75,100),(115,'Pasta (1 lb)',1.25,250),(116,'Orange Juice (1 Quart)',2.99,70),(117,'Potatoes (5 lb)',3.49,110),(118,'Yogurt (Greek, 32 oz)',4.75,40),(119,'Cereal (Box)',3.5,160),(120,'Onions (Bag)',1.99,140),(121,'Butter',2.75,90),(122,'Bottled Water (24 Pack)',5.95,300),(123,'Salmon Fillet (1 lb)',8.99,55),(124,'Carrots (Bag)',1.5,95),(125,'Peanut Butter',3.25,200),(126,'Applesauce (Jar)',2.79,65),(127,'Tuna (Can)',1.25,125),(128,'Broccoli (Bundle)',2.49,400),(129,'Avocados',1.99,85),(130,'Sausages (Pack)',4.25,130),(131,'Green Beans (Bag)',2.99,45),(132,'Pineapple',2.75,105),(133,'Lettuce (Head)',1.5,170),(134,'Bell Peppers (Each)',0.99,75),(135,'Almond Milk (1 Quart)',3.5,140),(136,'Ice Cream (Pint)',4.99,60),(137,'Ground Turkey (1 lb)',5.49,110),(138,'Cucumbers (Each)',0.75,140),(139,'Cottage Cheese (16 oz)',2.99,220),(140,'Strawberries (Pint)',3.99,60),(141,'Pasta Sauce (Jar)',2.5,110),(142,'Chips (Bag)',1.99,80),(143,'Soda (2 Liter)',1.25,150),(144,'Frozen Pizza',5.99,50),(145,'Honey (Bottle)',4.25,120),(146,'Ground Pork (1 lb)',3.75,250),(147,'Canned Soup',1.49,70),(148,'Bacon (1 lb)',6.95,130),(149,'Grapes (1 lb)',2.99,40),(150,'Lemons (Bag)',2.25,160),(151,'Olive Oil (Bottle)',7.5,110),(152,'Hummus (Tub)',3.99,180),(153,'Flour (5 lb)',3.25,65),(154,'Soy Milk (1 Quart)',4.95,100);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_seq`
--

DROP TABLE IF EXISTS `item_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_seq`
--

LOCK TABLES `item_seq` WRITE;
/*!40000 ALTER TABLE `item_seq` DISABLE KEYS */;
INSERT INTO `item_seq` VALUES (201);
/*!40000 ALTER TABLE `item_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-21 19:29:58
