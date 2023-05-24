-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: coder_project
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Isabel','Iglesias','159357258','1992-11-07','Mexico','isabel.iglesias@example.com','Low',11000),(2,'Jorge','Jimenez','753951456','1987-12-18','Argentina','jorge.jimenez@example.com','Medium',12000),(3,'Karla','Klein','456159753','1972-01-29','Brazil','karla.klein@example.com','High',13000),(4,'Luis','Lopez','951753456','1997-02-08','Chile','luis.lopez@example.com','Low',14000),(5,'Maria','Martinez','357159258','1982-03-20','Colombia','maria.martinez@example.com','Medium',15000),(6,'Natalia','Nunez','951357456','1977-04-01','Peru','natalia.nunez@example.com','High',16000),(7,'Oscar','Ortiz','159753258','1996-05-13','Venezuela','oscar.ortiz@example.com','Low',17000),(8,'Pedro','Perez','753159456','1981-06-24','Ecuador','pedro.perez@example.com','Medium',18000),(9,'Quinn','Quintana','456753159','1976-07-06','Bolivia','quinn.quintana@example.com','High',19000),(10,'Rosa','Ramirez','357456159','1995-08-17','Paraguay','rosa.ramirez@example.com','Low',20000),(11,'andres','rosal','1234567890','1990-01-01','USA','john.doe@example.com','Low Risk',1000),(12,'julieta','paz','987654321','1985-05-10','Canada','jane.smith@example.com','Medium Risk',2000);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `historic`
--

LOCK TABLES `historic` WRITE;
/*!40000 ALTER TABLE `historic` DISABLE KEYS */;
INSERT INTO `historic` VALUES ('12023',1,1000,5000,10000),('22024',2,2000,6000,11000),('32025',3,3000,7000,12000),('42026',4,4000,8000,13000),('52027',5,5000,9000,14000),('62028',6,6000,10000,15000),('72029',7,7000,11000,16000);
/*!40000 ALTER TABLE `historic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `investment_order`
--

LOCK TABLES `investment_order` WRITE;
/*!40000 ALTER TABLE `investment_order` DISABLE KEYS */;
INSERT INTO `investment_order` VALUES (1,'1234567890',1,'2022-01-01','Completed',1000,'P1',10,100,10),(2,'2345678901',1,'2022-02-01','Completed',2000,'P2',20,100,20),(3,'3456789012',2,'2022-03-01','Completed',3000,'P3',30,100,30),(4,'4567890123',2,'2022-04-01','Completed',4000,'P4',40,100,40),(5,'5678901234',3,'2022-05-01','Completed',5000,'P5',50,100,50),(6,'6789012345',3,'2022-06-01','Pending',6000,'P1',60,100,60),(7,'7890123456',4,'2022-07-01','Pending',7000,'P2',70,100,70),(8,'8901234567',4,'2022-08-01','Pending',8000,'P3',80,100,80),(9,'9012345678',5,'2022-09-01','Pending',9000,'P4',90,100,90),(10,'1234567809',5,'2022-10-01','Pending',10000,'P5',100,100,100),(11,'Portfolio1',1,'2023-05-10','Pending',100,'Product1',10,5,2);
/*!40000 ALTER TABLE `investment_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `investment_order_log`
--

LOCK TABLES `investment_order_log` WRITE;
/*!40000 ALTER TABLE `investment_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `investment_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `investment_order_log_after`
--

LOCK TABLES `investment_order_log_after` WRITE;
/*!40000 ALTER TABLE `investment_order_log_after` DISABLE KEYS */;
INSERT INTO `investment_order_log_after` VALUES (1,1,'UPDATE','root@localhost','2023-05-10','19:30:13');
/*!40000 ALTER TABLE `investment_order_log_after` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `investment_order_log_before`
--

LOCK TABLES `investment_order_log_before` WRITE;
/*!40000 ALTER TABLE `investment_order_log_before` DISABLE KEYS */;
INSERT INTO `investment_order_log_before` VALUES (2,11,'INSERT','root@localhost','2023-05-10','19:28:58');
/*!40000 ALTER TABLE `investment_order_log_before` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` VALUES ('1234567809',5,'Real Estate',100000,'1000'),('1234567890',1,'Stocks',10000,'100'),('2345678901',1,'Bonds',20000,'200'),('3456789012',2,'Mutual Funds',30000,'300'),('4567890123',2,'ETFs',40000,'400'),('5678901234',3,'Real Estate',50000,'500'),('6789012345',3,'Stocks',60000,'600'),('7890123456',4,'Bonds',70000,'700'),('8901234567',4,'Mutual Funds',80000,'800'),('9012345678',5,'ETFs',90000,'900');
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `portfolio_products`
--

LOCK TABLES `portfolio_products` WRITE;
/*!40000 ALTER TABLE `portfolio_products` DISABLE KEYS */;
INSERT INTO `portfolio_products` VALUES ('1234567890','P1'),('2345678901','P2'),('3456789012','P3'),('4567890123','P4'),('5678901234','P5');
/*!40000 ALTER TABLE `portfolio_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P1',1,'Stocks',1,0),('P2',2,'Bonds',2,0),('P3',3,'Mutual Funds',2,0),('P4',1,'ETFs',3,0),('P5',2,'Real Estate',1,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 18:56:15
