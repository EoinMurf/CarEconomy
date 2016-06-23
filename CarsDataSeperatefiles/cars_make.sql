-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: cars
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `make` (
  `idmake` int(11) NOT NULL AUTO_INCREMENT,
  `makeName` varchar(45) DEFAULT NULL,
  `idYear` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmake`),
  KEY `yearId_idx` (`idYear`),
  CONSTRAINT `yearId` FOREIGN KEY (`idYear`) REFERENCES `years` (`idyear`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=588 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (1,'Alfa Romeo',1),(2,'Aston Martin Lagonda',1),(3,'Audi',1),(4,'BMW',1),(5,'Cadillac',1),(6,'Chevrolet',1),(7,'Chrysler Jeep',1),(8,'Citroen',1),(9,'Daewoo Cars',1),(10,'Daihatsu',1),(11,'Ferrari',1),(12,'Fiat',1),(13,'Ford',1),(14,'Honda',1),(15,'Hyundai',1),(16,'Isuzu',1),(17,'Jaguar Cars',1),(18,'Kia',1),(19,'Lamborghini',1),(20,'Land Rover',1),(21,'Lexus',1),(22,'Lotus',1),(23,'Maserati',1),(24,'Mazda',1),(25,'Mercedes-Benz',1),(26,'Mitsubishi',1),(27,'Nissan',1),(28,'Peugeot',1),(29,'Porsche',1),(30,'Proton',1),(31,'Renault',1),(32,'Rolls-Royce',1),(33,'Rover Group Limited',1),(34,'Saab',1),(35,'Seat',1),(36,'Skoda',1),(37,'Subaru',1),(38,'Suzuki',1),(39,'Toyota',1),(40,'Vauxhall',1),(41,'Volkswagen',1),(42,'Volvo',1),(43,'Alfa Romeo',1),(44,'Aston Martin Lagonda',1),(45,'Audi',1),(46,'BMW',2),(47,'Cadillac',2),(48,'Chevrolet',2),(49,'Chrysler Jeep',2),(50,'Citroen',2),(51,'Daewoo Cars',2),(52,'Daihatsu',2),(53,'Ferrari',2),(54,'Fiat',2),(55,'Ford',2),(56,'Honda',2),(57,'Hyundai',2),(58,'Isuzu',2),(59,'Jaguar Cars',2),(60,'Kia',2),(61,'Lamborghini',2),(62,'Land Rover',2),(63,'Lexus',2),(64,'Lotus',2),(65,'Maserati',2),(66,'Mazda',2),(67,'Mercedes-Benz',2),(68,'Mitsubishi',2),(69,'Nissan',2),(70,'Peugeot',2),(71,'Porsche',2),(72,'Renault',2),(73,'Rolls-Royce',2),(74,'MG Rover Group',2),(75,'Saab',2),(76,'Seat',2),(77,'Skoda',2),(78,'Subaru',2),(79,'Suzuki',2),(80,'Toyota',2),(81,'Vauxhall',2),(82,'Volkswagen',2),(83,'Volvo',2),(84,'Mini',2),(85,'Alfa Romeo',3),(86,'Aston Martin Lagonda',3),(87,'Audi',3),(88,'BMW',3),(89,'Cadillac',3),(90,'Chevrolet',3),(91,'Chrysler Jeep',3),(92,'Citroen',3),(93,'Daewoo Cars',3),(94,'Daihatsu',3),(95,'Ferrari',3),(96,'Fiat',3),(97,'Ford',3),(98,'Honda',3),(99,'Hyundai',3),(100,'Isuzu',3),(101,'Jaguar Cars',3),(102,'Kia',3),(103,'Lamborghini',3),(104,'Land Rover',3),(105,'Lexus',3),(106,'Lotus',3),(107,'Maserati',3),(108,'Mazda',3),(109,'Mercedes-Benz',3),(110,'Mitsubishi',3),(111,'Nissan',3),(112,'Peugeot',3),(113,'Porsche',3),(114,'Renault',3),(115,'Rolls-Royce',3),(116,'MG Rover Group',3),(117,'Saab',3),(118,'Seat',3),(119,'Skoda',3),(120,'Subaru',3),(121,'Suzuki',3),(122,'Toyota',3),(123,'Vauxhall',3),(124,'Volkswagen',3),(125,'Volvo',3),(126,'Mini',3),(127,'Alfa Romeo',4),(128,'Aston Martin Lagonda',4),(129,'Audi',4),(130,'Bentley Motors',4),(131,'BMW',4),(132,'Cadillac',4),(133,'Chevrolet',4),(134,'Chrysler Jeep',4),(135,'Citroen',4),(136,'Daewoo Cars',4),(137,'Daihatsu',4),(138,'Ferrari',4),(139,'Fiat',4),(140,'Ford',4),(141,'Honda',4),(142,'Hyundai',4),(143,'Isuzu',4),(144,'Jaguar Cars',4),(145,'Kia',4),(146,'Lamborghini',4),(147,'Land Rover',4),(148,'Lexus',4),(149,'Lotus',4),(150,'Maserati',4),(151,'Mazda',4),(152,'Mercedes-Benz',4),(153,'Mitsubishi',4),(154,'Nissan',4),(155,'Peugeot',4),(156,'Porsche',4),(157,'Renault',4),(158,'Rolls-Royce',4),(159,'MG Rover Group',4),(160,'Saab',4),(161,'Seat',4),(162,'Skoda',4),(163,'Subaru',4),(164,'Suzuki',4),(165,'Toyota',4),(166,'Vauxhall',4),(167,'Volkswagen',4),(168,'Volvo',4),(169,'Mini',4),(170,'Alfa Romeo',5),(171,'Aston Martin Lagonda',5),(172,'Audi',5),(173,'Bentley Motors',5),(174,'BMW',5),(175,'Cadillac',5),(176,'Chevrolet',5),(177,'Chrysler Jeep',5),(178,'Citroen',5),(179,'Daewoo Cars',5),(180,'Daihatsu',5),(181,'Ferrari',5),(182,'Fiat',5),(183,'Ford',5),(184,'Honda',5),(185,'Hyundai',5),(186,'Isuzu',5),(187,'Jaguar Cars',5),(188,'Kia',5),(189,'Lamborghini',5),(190,'Land Rover',5),(191,'Lexus',5),(192,'Lotus',5),(193,'Maserati',5),(194,'Mazda',5),(195,'Mercedes-Benz',5),(196,'Mitsubishi',5),(197,'Nissan',5),(198,'Peugeot',5),(199,'Porsche',5),(200,'Renault',5),(201,'Rolls-Royce',5),(202,'MG Rover Group',5),(203,'Saab',5),(204,'Seat',5),(205,'Skoda',5),(206,'Smart',5),(207,'SsangYong',5),(208,'Subaru',5),(209,'Suzuki',5),(210,'Toyota',5),(211,'Vauxhall',5),(212,'Volkswagen',5),(213,'Volvo',5),(214,'Mini',5),(215,'Alfa Romeo',6),(216,'Aston Martin Lagonda',6),(217,'Audi',6),(218,'Bentley Motors',6),(219,'BMW',6),(220,'Cadillac',6),(221,'Chevrolet',6),(222,'Chrysler Jeep',6),(223,'Citroen',6),(224,'Corvette',6),(225,'Daihatsu',6),(226,'Ferrari',6),(227,'Fiat',6),(228,'Ford',6),(229,'Honda',6),(230,'Hyundai',6),(231,'Isuzu',6),(232,'Jaguar Cars',6),(233,'Kia',6),(234,'Lamborghini',6),(235,'Land Rover',6),(236,'Lexus',6),(237,'Lotus',6),(238,'Maserati',6),(239,'Mazda',6),(240,'Mercedes-Benz',6),(241,'Mitsubishi',6),(242,'Nissan',6),(243,'Peugeot',6),(244,'Porsche',6),(245,'Renault',6),(246,'Rolls-Royce',6),(247,'MG Rover Group',6),(248,'Saab',6),(249,'Seat',6),(250,'Skoda',6),(251,'Smart',6),(252,'SsangYong',6),(253,'Subaru',6),(254,'Suzuki',6),(255,'Toyota',6),(256,'Vauxhall',6),(257,'Volkswagen',6),(258,'Volvo',6),(259,'Mini',6),(260,'Alfa Romeo',7),(261,'Aston Martin Lagonda',7),(262,'Audi',7),(263,'Bentley Motors',7),(264,'BMW',7),(265,'Cadillac',7),(266,'Chevrolet',7),(267,'Chrysler Jeep',7),(268,'Citroen',7),(269,'Corvette',7),(270,'Daihatsu',7),(271,'Dodge',7),(272,'Ferrari',7),(273,'Fiat',7),(274,'Ford',7),(275,'Honda',7),(276,'Hummer',7),(277,'Hyundai',7),(278,'Isuzu',7),(279,'Jaguar Cars',7),(280,'Kia',7),(281,'Lamborghini',7),(282,'Land Rover',7),(283,'Lexus',7),(284,'Lotus',7),(285,'Maserati',7),(286,'Mazda',7),(287,'Mercedes-Benz',7),(288,'Mitsubishi',7),(289,'Nissan',7),(290,'Peugeot',7),(291,'Porsche',7),(292,'Renault',7),(293,'Rolls-Royce',7),(294,'MG Rover Group',7),(295,'Saab',7),(296,'Seat',7),(297,'Skoda',7),(298,'Smart',7),(299,'SsangYong',7),(300,'Subaru',7),(301,'Suzuki',7),(302,'Toyota',7),(303,'Vauxhall',7),(304,'Volkswagen',7),(305,'Volvo',7),(306,'Mini',7),(307,'Alfa Romeo',8),(308,'Aston Martin Lagonda',8),(309,'Audi',8),(310,'Bentley Motors',8),(311,'BMW',8),(312,'Cadillac',8),(313,'Chevrolet',8),(314,'Chrysler Jeep',8),(315,'Citroen',8),(316,'Corvette',8),(317,'Daihatsu',8),(318,'Dodge',8),(319,'Ferrari',8),(320,'Fiat',8),(321,'Ford',8),(322,'Honda',8),(323,'Hummer',8),(324,'Hyundai',8),(325,'Isuzu',8),(326,'Jaguar Cars',8),(327,'Kia',8),(328,'Lamborghini',8),(329,'Land Rover',8),(330,'Lexus',8),(331,'Lotus',8),(332,'Maserati',8),(333,'Mazda',8),(334,'Mercedes-Benz',8),(335,'Mitsubishi',8),(336,'Nissan',8),(337,'Peugeot',8),(338,'Porsche',8),(339,'Renault',8),(340,'Rolls-Royce',8),(341,'MG Rover Group',8),(342,'Saab',8),(343,'Seat',8),(344,'Skoda',8),(345,'Smart',8),(346,'SsangYong',8),(347,'Subaru',8),(348,'Suzuki',8),(349,'Toyota',8),(350,'Vauxhall',8),(351,'Volkswagen',8),(352,'Volvo',8),(353,'Mini',8),(354,'Alfa Romeo',9),(355,'Aston Martin Lagonda',9),(356,'Audi',9),(357,'Bentley Motors',9),(358,'BMW',9),(359,'Cadillac',9),(360,'Chevrolet',9),(361,'Chrysler Jeep',9),(362,'Citroen',9),(363,'Corvette',9),(364,'Daihatsu',9),(365,'Dodge',9),(366,'Ferrari',9),(367,'Fiat',9),(368,'Ford',9),(369,'Honda',9),(370,'Hummer',9),(371,'Hyundai',9),(372,'Isuzu',9),(373,'Jaguar Cars',9),(374,'Kia',9),(375,'Lamborghini',9),(376,'Land Rover',9),(377,'Lexus',9),(378,'Lotus',9),(379,'Maserati',9),(380,'Mazda',9),(381,'Mercedes-Benz',9),(382,'Mitsubishi',9),(383,'Nissan',9),(384,'Peugeot',9),(385,'Porsche',9),(386,'Renault',9),(387,'Rolls-Royce',9),(388,'MG Rover Group',9),(389,'Saab',9),(390,'Seat',9),(391,'Skoda',9),(392,'Smart',9),(393,'SsangYong',9),(394,'Subaru',9),(395,'Suzuki',9),(396,'Toyota',9),(397,'Vauxhall',9),(398,'Volkswagen',9),(399,'Volvo',9),(400,'Mini',9),(401,'Alfa Romeo',10),(402,'Aston Martin Lagonda',10),(403,'Audi',10),(404,'Bentley Motors',10),(405,'BMW',10),(406,'Cadillac',10),(407,'Chevrolet',10),(408,'Chrysler Jeep',10),(409,'Citroen',10),(410,'Corvette',10),(411,'Daihatsu',10),(412,'Dodge',10),(413,'Ferrari',10),(414,'Fiat',10),(415,'Ford',10),(416,'Honda',10),(417,'Hummer',10),(418,'Hyundai',10),(419,'Isuzu',10),(420,'Jaguar Cars',10),(421,'Kia',10),(422,'Lamborghini',10),(423,'Land Rover',10),(424,'Lexus',10),(425,'Lotus',10),(426,'Maserati',10),(427,'Mazda',10),(428,'Mercedes-Benz',10),(429,'Mitsubishi',10),(430,'Nissan',10),(431,'Peugeot',10),(432,'Porsche',10),(433,'Renault',10),(434,'Rolls-Royce',10),(435,'MG Rover Group',10),(436,'Saab',10),(437,'Seat',10),(438,'Skoda',10),(439,'Smart',10),(440,'SsangYong',10),(441,'Subaru',10),(442,'Suzuki',10),(443,'Toyota',10),(444,'Vauxhall',10),(445,'Volkswagen',10),(446,'Volvo',10),(447,'Mini',10),(448,'Alfa Romeo',11),(449,'Aston Martin Lagonda',11),(450,'Audi',11),(451,'Bentley Motors',11),(452,'BMW',11),(453,'Cadillac',11),(454,'Chevrolet',11),(455,'Chrysler Jeep',11),(456,'Citroen',11),(457,'Corvette',11),(458,'Daihatsu',11),(459,'Dodge',11),(460,'Ferrari',11),(461,'Fiat',11),(462,'Ford',11),(463,'Honda',11),(464,'Infiniti',11),(465,'Hyundai',11),(466,'Isuzu',11),(467,'Jaguar Cars',11),(468,'Kia',11),(469,'Lamborghini',11),(470,'Land Rover',11),(471,'Lexus',11),(472,'Lotus',11),(473,'Maserati',11),(474,'Mazda',11),(475,'Mercedes-Benz',11),(476,'Mitsubishi',11),(477,'Nissan',11),(478,'Peugeot',11),(479,'Porsche',11),(480,'Renault',11),(481,'Rolls-Royce',11),(482,'MG Rover Group',11),(483,'Saab',11),(484,'Seat',11),(485,'Skoda',11),(486,'Smart',11),(487,'SsangYong',11),(488,'Subaru',11),(489,'Suzuki',11),(490,'Toyota',11),(491,'Vauxhall',11),(492,'Volkswagen',11),(493,'Volvo',11),(494,'Mini',11),(495,'Alfa Romeo',12),(496,'Aston Martin Lagonda',12),(497,'Audi',12),(498,'Bentley Motors',12),(499,'BMW',12),(500,'Cadillac',12),(501,'Chevrolet',12),(502,'Chrysler Jeep',12),(503,'Citroen',12),(504,'Corvette',12),(505,'Daihatsu',12),(506,'Dodge',12),(507,'Ferrari',12),(508,'Fiat',12),(509,'Ford',12),(510,'Honda',12),(511,'Infiniti',12),(512,'Hyundai',12),(513,'Isuzu',12),(514,'Jaguar Cars',12),(515,'Kia',12),(516,'Lamborghini',12),(517,'Land Rover',12),(518,'Lexus',12),(519,'Lotus',12),(520,'Maserati',12),(521,'Mazda',12),(522,'Mercedes-Benz',12),(523,'Mitsubishi',12),(524,'Nissan',12),(525,'Peugeot',12),(526,'Porsche',12),(527,'Renault',12),(528,'Rolls-Royce',12),(529,'MG Rover Group',12),(530,'Saab',12),(531,'Seat',12),(532,'Skoda',12),(533,'Smart',12),(534,'SsangYong',12),(535,'Subaru',12),(536,'Suzuki',12),(537,'Toyota',12),(538,'Vauxhall',12),(539,'Volkswagen',12),(540,'Volvo',12),(541,'Mini',12),(542,'Alfa Romeo',13),(543,'Aston Martin Lagonda',13),(544,'Audi',13),(545,'Bentley Motors',13),(546,'BMW',13),(547,'Cadillac',13),(548,'Chevrolet',13),(549,'Chrysler Jeep',13),(550,'Citroen',13),(551,'Corvette',13),(552,'Dacia',13),(553,'Ferrari',13),(554,'Fiat',13),(555,'Ford',13),(556,'Honda',13),(557,'Infiniti',13),(558,'Hyundai',13),(559,'Isuzu',13),(560,'Jaguar Cars',13),(561,'Kia',13),(562,'Lamborghini',13),(563,'Land Rover',13),(564,'Lexus',13),(565,'Lotus',13),(566,'Maserati',13),(567,'Mazda',13),(568,'Mercedes-Benz',13),(569,'Mitsubishi',13),(570,'Nissan',13),(571,'Peugeot',13),(572,'Porsche',13),(573,'Renault',13),(574,'Rolls-Royce',13),(575,'MG Motors UK',13),(576,'Saab',13),(577,'Seat',13),(578,'Skoda',13),(579,'Smart',13),(580,'SsangYong',13),(581,'Subaru',13),(582,'Suzuki',13),(583,'Toyota',13),(584,'Vauxhall',13),(585,'Volkswagen',13),(586,'Volvo',13),(587,'Mini',13);
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-23 16:46:45