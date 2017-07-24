CREATE DATABASE  IF NOT EXISTS `webapde` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webapde`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webapde
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_title` varchar(45) NOT NULL,
  `photo_description` varchar(45) DEFAULT NULL,
  `photo_uploadDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo_url` tinytext NOT NULL,
  `photo_privacy` enum('private','public') NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'Claude\'s Photo','Claude\'s first upload!','2017-07-23 13:13:34','C:\\Users\\Admin\\Desktop','public'),(2,'Jess\' Photo','Jess\' first photo!','2017-07-23 13:15:30','C:\\Users\\Pictures','private'),(3,'Alex\'s Photo','Alex\'s first photo!','2017-07-23 13:16:07','C:\\Users\\Downloads','private');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_user_relation`
--

DROP TABLE IF EXISTS `photo_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_user_relation` (
  `photo_uploader` varchar(20) NOT NULL,
  `photos_id` int(11) NOT NULL,
  PRIMARY KEY (`photo_uploader`,`photos_id`),
  KEY `photos_id_idx` (`photos_id`),
  CONSTRAINT `photos_id` FOREIGN KEY (`photos_id`) REFERENCES `photo` (`photo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `photos_uploader` FOREIGN KEY (`photo_uploader`) REFERENCES `users` (`users_username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_user_relation`
--

LOCK TABLES `photo_user_relation` WRITE;
/*!40000 ALTER TABLE `photo_user_relation` DISABLE KEYS */;
INSERT INTO `photo_user_relation` VALUES ('Claude',1),('Jess',2),('Alex',3);
/*!40000 ALTER TABLE `photo_user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shared_photos`
--

DROP TABLE IF EXISTS `shared_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shared_photos` (
  `photo_id` int(11) NOT NULL,
  `shared_user_username` varchar(20) NOT NULL,
  PRIMARY KEY (`photo_id`,`shared_user_username`),
  KEY `user_username_idx` (`shared_user_username`),
  KEY `shared_photo_username_idx` (`shared_user_username`),
  CONSTRAINT `shared_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `shared_photo_username` FOREIGN KEY (`shared_user_username`) REFERENCES `users` (`users_username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shared_photos`
--

LOCK TABLES `shared_photos` WRITE;
/*!40000 ALTER TABLE `shared_photos` DISABLE KEYS */;
INSERT INTO `shared_photos` VALUES (2,'Alex'),(2,'Claude'),(3,'Claude');
/*!40000 ALTER TABLE `shared_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(20) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'outdoors'),(2,'games'),(3,'family'),(4,'school');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_photo_relation`
--

DROP TABLE IF EXISTS `tag_photo_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_photo_relation` (
  `tag_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`tag_id`,`photo_id`),
  KEY `photo_id_idx` (`photo_id`),
  CONSTRAINT `tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tag_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_photo_relation`
--

LOCK TABLES `tag_photo_relation` WRITE;
/*!40000 ALTER TABLE `tag_photo_relation` DISABLE KEYS */;
INSERT INTO `tag_photo_relation` VALUES (1,1),(2,1),(1,2),(2,2),(3,2),(4,2),(1,3);
/*!40000 ALTER TABLE `tag_photo_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `users_username` varchar(20) NOT NULL,
  `users_password` varchar(30) NOT NULL,
  `users_shortdescription` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`users_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Alex','password','i\'m the second user'),('Claude','password','i\'m the first user'),('Jess','password','i\'m the third user');
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

-- Dump completed on 2017-07-24 20:53:15
