-- MySQL dump 10.11
--
-- Host: localhost    Database: gestorneo
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.5

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) collate utf8_bin NOT NULL default '0',
  `ip_address` varchar(16) collate utf8_bin NOT NULL default '0',
  `user_agent` varchar(150) collate utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text collate utf8_bin NOT NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('1ef27896d3dca866d74058df3ccabc87','213.37.228.126','Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWeb',1269543341,'a:4:{s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:7:\"Hermann\";s:6:\"status\";s:1:\"1\";s:5:\"level\";s:5:\"admin\";}'),('51910f2d4d97029371ed691d41afbe99','213.37.228.126','Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWeb',1269543292,'a:4:{s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:7:\"Hermann\";s:6:\"status\";s:1:\"1\";s:5:\"level\";s:5:\"admin\";}'),('82fd31b8ca3791f6297d7ced3f383bb8','213.37.228.126','Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWeb',1269542915,'a:4:{s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:7:\"Hermann\";s:6:\"status\";s:1:\"1\";s:5:\"level\";s:5:\"admin\";}'),('c8bf3968c9ff70110c01bc104ed68c45','213.37.236.186','Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWeb',1271019713,'a:4:{s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:7:\"Hermann\";s:6:\"status\";s:1:\"1\";s:5:\"level\";s:5:\"admin\";}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL auto_increment,
  `ip_address` varchar(40) collate utf8_bin NOT NULL,
  `login` varchar(50) collate utf8_bin NOT NULL,
  `time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `players` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `joined` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Hermann','2008-02-01'),(2,'Justin','2007-06-01'),(3,'Jose Antonio','2000-10-12'),(4,'Alberto','2006-03-22');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_players`
--

DROP TABLE IF EXISTS `tournament_players`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tournament_players` (
  `pid` int(11) NOT NULL default '0',
  `tid` int(11) NOT NULL default '0',
  `confirmed` tinyint(4) default '0',
  PRIMARY KEY  (`pid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tournament_players`
--

LOCK TABLES `tournament_players` WRITE;
/*!40000 ALTER TABLE `tournament_players` DISABLE KEYS */;
INSERT INTO `tournament_players` VALUES (1,1,0),(1,3,1),(1,4,1),(1,5,1),(2,3,0),(2,5,1),(3,3,0),(3,5,1),(3,6,0);
/*!40000 ALTER TABLE `tournament_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
INSERT INTO `tournaments` VALUES (1,'1Âª CAC','','2010-03-13'),(2,'Cremas Beach Challenge','Women only.','2010-03-05'),(3,'Costa Brava Tourney','','2010-03-27'),(4,'Horadada In&Out','','2010-01-30'),(5,'La Abuela','','2010-04-17'),(6,'La Liga Open','','2010-05-29');
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_autologin`
--

DROP TABLE IF EXISTS `user_autologin`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_autologin` (
  `key_id` char(32) collate utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `user_agent` varchar(150) collate utf8_bin NOT NULL,
  `last_ip` varchar(40) collate utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_autologin`
--

LOCK TABLES `user_autologin` WRITE;
/*!40000 ALTER TABLE `user_autologin` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_autologin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) collate utf8_bin default NULL,
  `website` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,2,NULL,NULL),(2,3,NULL,NULL);
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) collate utf8_bin NOT NULL,
  `password` varchar(255) collate utf8_bin NOT NULL,
  `email` varchar(100) collate utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL default '1',
  `banned` tinyint(1) NOT NULL default '0',
  `ban_reason` varchar(255) collate utf8_bin default NULL,
  `new_password_key` varchar(50) collate utf8_bin default NULL,
  `new_password_requested` datetime default NULL,
  `new_email` varchar(100) collate utf8_bin default NULL,
  `new_email_key` varchar(50) collate utf8_bin default NULL,
  `last_ip` varchar(40) collate utf8_bin NOT NULL,
  `last_login` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `level` enum('user','t_admin','admin') collate utf8_bin NOT NULL default 'admin',
  `sex` enum('M','F') collate utf8_bin NOT NULL default 'M',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hermann','$P$BvAan8tBKA4CDjtrgRQF.iqK3Zt.Ke/','hermann.kaser@gmail.com',1,0,NULL,NULL,NULL,NULL,'766ec0e8b4630f2014e4ca70e5d83e4d','213.37.236.186','2010-04-11 22:56:11','2010-02-28 11:58:00','2010-04-11 20:56:11','admin','M'),(2,'JPalm','$P$BjCSllVIK5yyHQXfAB/15n1iksHMWm1','ajpalmer@gmail.com',1,0,NULL,NULL,NULL,NULL,NULL,'88.26.196.160','2010-03-23 17:37:06','2010-03-23 17:36:34','2010-03-23 16:37:06','admin','M'),(3,'Jose','$P$B5.jIAeWHDz29BxsmS5GfkjlpvZmiH1','joseantoniodelosrios@yahoo.fr',1,0,NULL,NULL,NULL,NULL,NULL,'213.97.255.249','2010-03-24 11:13:24','2010-03-24 11:12:53','2010-03-24 10:13:24','admin','M');
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

-- Dump completed on 2010-04-11 21:04:30
