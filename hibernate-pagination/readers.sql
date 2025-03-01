create database readers;
use readers;
/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES
(1,'Luis','Herman','manuela.daniel@example.net','2015-07-23','2015-11-19 12:42:01'),
(2,'Lorenzo','Shanahan','evalyn.ankunding@example.org','1974-08-27','1998-06-14 20:32:23'),
(3,'Fausto','Bernier','abel32@example.com','1984-01-07','1990-01-27 02:08:03'),
(4,'Kiel','Shields','ylubowitz@example.org','1990-05-01','2011-02-05 10:00:21'),
(5,'Dean','Weimann','qward@example.net','1975-02-04','1990-03-12 12:28:54'),
(6,'Darby','Cartwright','dschaden@example.net','1999-12-09','2023-12-22 08:01:01'),
(7,'Walton','Oberbrunner','braden.zulauf@example.org','1981-10-07','2009-08-17 23:32:06'),
(8,'Elvis','Gusikowski','delia58@example.net','2017-02-23','1973-04-15 22:55:40'),
(9,'Vincenzo','Jacobson','renner.norwood@example.com','1997-06-07','2006-08-10 05:02:23'),
(10,'Julien','Schaden','guillermo80@example.org','1998-09-06','1992-07-27 00:46:03'),
(11,'Bennett','Kilback','kasandra.berge@example.com','1998-05-20','1988-06-28 04:59:54'),
(12,'Jessie','Tremblay','ddouglas@example.org','1972-02-14','1993-06-16 11:39:48'),
(13,'Kira','Hettinger','antonietta.kreiger@example.org','1970-10-31','1985-03-03 06:37:16'),
(14,'Garrett','Prosacco','vlarson@example.com','2013-10-31','1971-02-19 22:14:21'),
(15,'Samantha','Pfannerstill','teresa.bode@example.org','1998-05-06','1975-10-23 04:52:41'),
(16,'Frederic','Harber','kamron.stanton@example.net','2013-04-20','1987-03-14 20:33:45'),
(17,'Colton','Schaden','rosalia.hane@example.org','2005-12-07','2012-10-19 21:27:50'),
(18,'Gretchen','Schinner','lubowitz.garnett@example.com','1970-03-02','2015-02-18 22:24:28'),
(19,'Ada','Emard','haag.reina@example.com','1995-09-08','2013-11-03 06:49:43'),
(20,'Vicky','Kozey','tyra03@example.net','2002-03-13','2012-09-29 03:14:38'),
(21,'Ada','Zulauf','kris06@example.net','2012-08-25','2013-12-25 14:17:50'),
(22,'Claudia','Dickens','johns.dillan@example.net','1976-08-31','1974-09-27 23:16:30'),
(23,'Loyal','Leffler','borer.isaac@example.org','2008-09-07','2016-03-04 21:36:20'),
(24,'Laury','Beahan','aniyah.yost@example.net','1986-12-21','1980-10-22 23:08:47'),
(25,'Domenic','Schuppe','rachel37@example.net','2012-05-17','2008-09-15 01:00:36'),
(26,'Mavis','Langworth','rreilly@example.org','1993-01-22','2018-07-13 05:54:57'),
(27,'Aurelie','Lebsack','arvel.kozey@example.net','2003-04-16','2019-08-06 22:27:35'),
(28,'Abbigail','Hand','murphy.reinger@example.org','1978-08-03','1989-11-08 08:33:53'),
(29,'Gina','Ward','uemard@example.net','2004-10-15','1999-10-17 23:03:13'),
(30,'Alisa','Langworth','dicki.zack@example.net','1988-11-04','1975-07-19 14:28:58'),
(31,'Bernadette','Turcotte','torp.laron@example.com','1985-02-06','2015-03-01 21:40:25'),
(32,'Tiara','Legros','frankie.feest@example.com','2022-08-20','2023-06-04 23:39:18'),
(33,'Jalen','Reichert','samson.king@example.com','2008-08-29','2004-11-11 21:42:33'),
(34,'Aisha','Runte','lina55@example.com','2006-05-29','2023-05-03 04:46:48'),
(35,'Jaren','McDermott','leonard76@example.com','1991-11-24','2019-08-09 09:14:35'),
(36,'Bobby','Witting','rasheed03@example.com','2021-07-21','1985-03-29 18:05:26'),
(37,'Zion','Konopelski','mia54@example.net','2006-11-30','1976-10-19 00:16:00'),
(38,'Dion','Murazik','dcrist@example.com','2015-08-18','2018-05-09 03:38:22'),
(39,'Alvina','Gerhold','snitzsche@example.org','1996-12-20','2019-09-14 19:07:43'),
(40,'Sammy','Wilderman','gharris@example.com','1988-07-11','2013-05-19 02:43:20'),
(41,'Monique','Crist','jayce.muller@example.net','1989-09-13','2014-12-25 16:24:17'),
(42,'Nathanial','Langworth','buddy84@example.com','2012-01-16','1990-03-01 12:10:35'),
(43,'Francesca','Hessel','julio70@example.com','1985-12-31','2009-06-05 08:51:12'),
(44,'Johnson','Hammes','pschultz@example.com','1974-08-09','1975-04-21 20:58:12'),
(45,'Terrell','Stark','qschmidt@example.net','1991-10-02','2000-09-05 06:45:37'),
(46,'Hillard','Ankunding','jennie12@example.com','1991-02-25','2001-05-29 23:31:37'),
(47,'Jace','Ernser','elyse72@example.net','2019-06-07','1976-09-05 10:55:39'),
(48,'Dillon','Reinger','esawayn@example.net','2003-03-09','1981-03-10 02:10:49'),
(49,'Brandyn','Stanton','mitchel.schoen@example.com','1985-11-05','1985-07-14 11:15:41'),
(50,'Marcia','Satterfield','pollich.leslie@example.net','2020-02-24','2023-01-21 20:03:28'),
(51,'Stacy','Hane','rutherford.parker@example.org','1971-02-20','2001-03-21 05:36:50'),
(52,'Glennie','Powlowski','cummerata.graciela@example.com','2021-09-11','2003-07-19 06:40:53'),
(53,'Nelle','Lubowitz','lowe.audreanne@example.org','2012-03-06','1970-03-16 02:19:03'),
(54,'Cali','Ledner','anya.gleichner@example.com','2022-08-09','2017-02-10 19:16:17'),
(55,'Claud','Nader','rlubowitz@example.com','1987-01-27','1986-11-25 16:09:49'),
(56,'Tessie','Hammes','allene.conn@example.org','2012-06-29','2013-11-11 13:31:56'),
(57,'Brianne','Kuvalis','chadrick18@example.org','2007-05-31','1996-01-09 19:15:05'),
(58,'Jules','Ullrich','balistreri.wilfrid@example.com','1973-01-30','1980-11-04 22:18:30'),
(59,'Kylie','Jaskolski','amber.gottlieb@example.com','1970-11-10','1983-06-23 13:37:13'),
(60,'Jaren','Hand','vbergnaum@example.org','1986-08-18','2001-07-29 02:35:51'),
(61,'Walton','Koch','conroy.myles@example.net','2004-02-01','2020-11-17 23:29:48'),
(62,'Elena','Becker','bbruen@example.net','1977-12-17','1975-03-17 05:24:23'),
(63,'Jordi','Grant','dianna73@example.net','1979-09-30','1973-10-03 11:54:12'),
(64,'Agnes','Trantow','ymcglynn@example.net','1993-10-20','1976-05-29 13:48:42'),
(65,'Kendra','Hane','hermann.beahan@example.net','1975-08-04','1974-09-17 14:53:38'),
(66,'Alfonzo','Bode','aurelia26@example.net','1973-01-20','2001-11-04 09:32:22'),
(67,'Judd','Herzog','eloise62@example.org','2011-01-17','1991-07-20 03:50:58'),
(68,'Haven','Kuphal','monahan.ethan@example.com','1971-04-13','1981-11-14 21:57:33'),
(69,'Malcolm','Bosco','gutkowski.marley@example.com','1972-06-09','2009-08-25 08:10:02'),
(70,'April','Jaskolski','wilfred.cole@example.org','1987-02-09','1997-02-27 17:32:41'),
(71,'Lucy','Kub','goldner.leda@example.net','1979-01-15','1981-01-12 02:09:41'),
(72,'Howell','Ryan','lolita78@example.net','2012-07-17','1990-08-11 02:29:11'),
(73,'Providenci','Raynor','caesar.bogan@example.org','1983-12-08','1989-08-22 04:00:17'),
(74,'Betty','Dickens','alexandria.dibbert@example.org','2004-12-14','2019-02-12 13:41:04'),
(75,'Twila','Bergstrom','houston.cormier@example.net','2019-12-24','1983-12-15 21:00:42'),
(76,'Connie','Jacobs','annalise.kozey@example.com','2010-04-08','2016-06-11 13:34:27'),
(77,'Dylan','Maggio','opfeffer@example.org','1994-10-14','1981-01-23 22:59:33'),
(78,'Delpha','Considine','bmckenzie@example.org','2022-03-15','1971-06-25 09:28:32'),
(79,'Josie','Bradtke','lowe.johanna@example.com','2021-11-25','1978-08-25 08:20:24'),
(80,'Wellington','Torphy','jheaney@example.net','2010-08-17','1973-10-21 22:14:09'),
(81,'Evangeline','Becker','bkling@example.org','2008-07-18','2015-08-08 01:22:31'),
(82,'Nico','Bartell','harvey.norbert@example.org','1977-06-23','1983-12-21 15:20:10'),
(83,'Lorna','Thiel','chauncey31@example.org','1973-12-31','2016-07-31 01:42:21'),
(84,'Fredy','Deckow','colby19@example.com','1997-06-14','1979-01-19 13:35:58'),
(85,'Rachelle','Herzog','pkovacek@example.org','2000-11-15','1980-05-26 09:59:50'),
(86,'Else','Hane','bethany28@example.com','1991-11-10','2019-07-11 23:49:39'),
(87,'Zula','Wunsch','elaina57@example.com','1993-03-18','2002-03-30 02:21:16'),
(88,'Lila','Schinner','murphy.irma@example.org','2016-10-30','1996-10-17 22:51:52'),
(89,'Elva','Kuphal','prohaska.roman@example.net','2020-09-11','1977-06-20 04:43:32'),
(90,'Vito','Senger','uwest@example.net','1988-05-28','2005-08-22 11:31:10'),
(91,'Annabell','Zboncak','schmitt.christophe@example.com','1991-09-19','2021-09-19 12:03:43'),
(92,'Connie','Gusikowski','cummerata.kirk@example.com','2003-07-22','1991-02-12 14:03:41'),
(93,'May','Lang','milford.sanford@example.org','1986-10-24','1996-11-23 06:45:14'),
(94,'Cortez','Cremin','rowland.ryan@example.com','2014-10-12','1979-11-09 03:24:44'),
(95,'Enola','King','goldner.arianna@example.org','1986-08-13','1995-02-24 19:16:41'),
(96,'Krystal','Kulas','kfranecki@example.com','1998-05-02','2021-11-26 03:56:48'),
(97,'Elena','Emmerich','asporer@example.com','2001-01-09','1981-03-04 14:35:29'),
(98,'Franco','Shields','juston71@example.net','2008-07-25','1985-02-06 09:04:15'),
(99,'Gretchen','Gerlach','wilson06@example.org','1997-07-29','2007-11-16 16:07:27'),
(100,'Carlie','Ortiz','mklocko@example.org','2015-12-15','2001-05-11 05:03:03');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-01  1:52:39
authors