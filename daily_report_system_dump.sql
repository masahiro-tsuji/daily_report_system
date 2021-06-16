-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: localhost    Database: daily_report_system
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `daily_report_system.employee`
--

DROP TABLE IF EXISTS `daily_report_system.employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report_system.employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_flag` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3um79qgwg340lpaw7phtwudtc` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_report_system.employee`
--

LOCK TABLES `daily_report_system.employee` WRITE;
/*!40000 ALTER TABLE `daily_report_system.employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_report_system.employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_flag` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3um79qgwg340lpaw7phtwudtc` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,0,'100100','2019-12-18 00:56:42',0,'まさひろ','F3D05EF48C937E37D52457A61A99B65184BBAC357C8913D0EC144A2F47611662','2019-12-22 01:53:39'),(2,1,'100101','2019-12-19 23:40:52',0,'しょうた','F3D05EF48C937E37D52457A61A99B65184BBAC357C8913D0EC144A2F47611662','2020-03-06 22:36:24'),(3,0,'100112','2019-12-19 23:41:19',1,'しょう','F3D05EF48C937E37D52457A61A99B65184BBAC357C8913D0EC144A2F47611662','2019-12-22 02:23:35'),(4,1,'100102','2019-12-24 00:58:17',0,'つじ','F3D05EF48C937E37D52457A61A99B65184BBAC357C8913D0EC144A2F47611662','2019-12-24 00:58:17'),(5,0,'100111','2020-02-14 01:22:02',0,'じょん','F3D05EF48C937E37D52457A61A99B65184BBAC357C8913D0EC144A2F47611662','2020-02-14 01:22:02'),(6,1,'123456','2020-02-16 01:33:25',0,'ま','F3D05EF48C937E37D52457A61A99B65184BBAC357C8913D0EC144A2F47611662','2020-03-06 22:36:17'),(7,1,'10017176','2020-03-06 22:36:51',0,'mt','F3D05EF48C937E37D52457A61A99B65184BBAC357C8913D0EC144A2F47611662','2020-03-06 22:36:51');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `report_date` date NOT NULL,
  `title` varchar(225) NOT NULL,
  `updated_at` datetime NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m58c0h3phjcm6bco7aqikfen` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'あいうえおかきくけこ','2020-01-06 01:00:12','2020-01-06','本日の日報','2020-01-06 01:00:12',1),(2,'1234567891011','2020-01-06 01:00:36','2020-01-06','今日の日報','2020-01-07 01:26:00',1),(3,'昨日は・・・・・・・','2020-01-06 01:02:51','2020-01-05','昨日の日報','2020-01-06 01:02:51',2),(4,'今日は。。。。。。','2020-01-06 01:03:10','2020-01-06','本日の日報','2020-01-06 01:03:10',2),(5,'aiueo\r\n','2020-02-14 01:17:21','2020-02-14','ご前','2020-02-14 01:17:21',1),(6,'あいうえお','2020-02-14 01:17:38','2020-02-14','夜','2020-02-14 01:17:38',1),(7,'本日の日報','2020-02-14 01:17:49','2020-02-14','本日の日報','2020-02-14 01:17:49',1),(8,'JAVA','2020-02-14 01:17:57','2020-02-14','夕方','2020-02-14 01:17:57',1),(9,'エネルギー','2020-02-14 01:18:12','2020-02-14','夕方','2020-02-14 01:18:12',1),(10,'営業','2020-02-14 01:18:19','2020-02-14','ご前','2020-02-14 01:18:19',1),(11,'root','2020-02-14 01:18:29','2020-02-14','ご前','2020-02-14 01:18:29',1),(12,'あささｓ','2020-02-16 02:32:44','2020-02-16','本日の日報','2020-02-16 02:32:44',6),(13,'あささｓ','2020-02-16 02:32:50','2020-02-16','ご前','2020-02-16 02:32:50',6),(14,'ああささ','2020-02-16 02:32:57','2020-02-16','本日の日報','2020-02-16 02:32:57',6),(15,'代入','2020-02-16 02:33:07','2020-02-16','DATABAE','2020-02-16 02:33:07',6),(16,'ありがとうございます。','2020-02-16 02:33:17','2020-02-16','わかりました。','2020-02-16 02:33:17',6),(17,'会議でした。','2020-03-05 22:04:16','2020-03-05','ご前','2020-03-05 22:04:16',4),(18,'サム　ディーン','2020-03-10 22:47:05','2020-03-10','SUPERNATURAL','2020-03-10 22:47:05',4);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-26 10:39:50
