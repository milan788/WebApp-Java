CREATE DATABASE  IF NOT EXISTS `projekat` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projekat`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: projekat
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answeredsurveyquestionentity`
--

DROP TABLE IF EXISTS `answeredsurveyquestionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answeredsurveyquestionentity` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `strAnswer` varchar(255) DEFAULT NULL,
  `strAnswers` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mh0iqyw664ufq5yhnq12vhot8` (`question_id`),
  CONSTRAINT `FK_mh0iqyw664ufq5yhnq12vhot8` FOREIGN KEY (`question_id`) REFERENCES `questionentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answeredsurveyquestionentity`
--

LOCK TABLES `answeredsurveyquestionentity` WRITE;
/*!40000 ALTER TABLE `answeredsurveyquestionentity` DISABLE KEYS */;
INSERT INTO `answeredsurveyquestionentity` VALUES (32768,12,'4','#'),(32769,13,'OdgDrugo','#'),(32770,14,'Odgovor na trece pitanje',NULL),(32771,15,'Odg43','#'),(32772,16,NULL,'Odg51#Odg53#'),(163844,12,'5','#'),(163845,13,'drugo_ogovor','#'),(163846,14,'Odgvovor na trece pitanje',NULL),(163847,15,'Odg41','#'),(163848,16,NULL,'Odg52#Odg53#'),(229376,12,'10005','#'),(229377,13,'OdgJSDrugo','#'),(229378,14,'Odgovor Jovica trece',NULL),(229379,15,'Odg42','#'),(229380,16,NULL,'Odg52#Odg53#');
/*!40000 ALTER TABLE `answeredsurveyquestionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answeredtestquestionentity`
--

DROP TABLE IF EXISTS `answeredtestquestionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answeredtestquestionentity` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `chosenAnswer` varchar(255) DEFAULT NULL,
  `chosenAnswers` varchar(255) DEFAULT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sj08bhmjda0byrgv1207h05hi` (`question_id`),
  CONSTRAINT `FK_sj08bhmjda0byrgv1207h05hi` FOREIGN KEY (`question_id`) REFERENCES `questionentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answeredtestquestionentity`
--

LOCK TABLES `answeredtestquestionentity` WRITE;
/*!40000 ALTER TABLE `answeredtestquestionentity` DISABLE KEYS */;
INSERT INTO `answeredtestquestionentity` VALUES (1,9,'5',NULL,0),(2,11,NULL,'Value Delivery#Approving#',4),(3,10,'Approving','',5),(4,8,'engage',NULL,8),(65536,19,'Netacan1','',0),(65537,20,NULL,'Tacan41#',20),(65538,18,'Odgovor2',NULL,0),(65539,17,'102',NULL,5),(98304,23,NULL,'Nestacionarnost#Trajanje realizacije#',0),(98305,22,'Vreme nastanka','',20),(98306,21,'Prolazna',NULL,20),(131072,25,'Donald Tramp',NULL,20),(131073,24,'1914',NULL,10),(131074,27,NULL,'Dragan Nikolic#',20),(131075,26,'Milos Crnjanski','',30),(163840,25,'Donald Tramp',NULL,20),(163841,26,'Milos Crnjanski','',30),(163842,24,'1914',NULL,10),(163843,27,NULL,'Bata Zivojinovic#',20),(196608,20,NULL,'Tacan42#Tacan41#',40),(196609,18,'Odg2',NULL,0),(196610,17,'100',NULL,0),(196611,19,'Tacan3','',30);
/*!40000 ALTER TABLE `answeredtestquestionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filledformentity`
--

DROP TABLE IF EXISTS `filledformentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filledformentity` (
  `id` int(11) NOT NULL,
  `currentState` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `userData_idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_juihrbbymbe882e4mu2rg8dx7` (`userData_idUser`),
  CONSTRAINT `FK_juihrbbymbe882e4mu2rg8dx7` FOREIGN KEY (`userData_idUser`) REFERENCES `userdataentity` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filledformentity`
--

LOCK TABLES `filledformentity` WRITE;
/*!40000 ALTER TABLE `filledformentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `filledformentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filledformentity_answeredquestionentity`
--

DROP TABLE IF EXISTS `filledformentity_answeredquestionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filledformentity_answeredquestionentity` (
  `FilledFormEntity_id` int(11) NOT NULL,
  `answeredQuestions_id` int(11) NOT NULL,
  UNIQUE KEY `UK_d5gsg7imo73unh6u1h633wr0c` (`answeredQuestions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filledformentity_answeredquestionentity`
--

LOCK TABLES `filledformentity_answeredquestionentity` WRITE;
/*!40000 ALTER TABLE `filledformentity_answeredquestionentity` DISABLE KEYS */;
INSERT INTO `filledformentity_answeredquestionentity` VALUES (1,1),(1,2),(1,3),(1,4),(32768,32768),(32768,32769),(32768,32770),(32768,32771),(32768,32772),(65536,65536),(65536,65537),(65536,65538),(65536,65539),(98304,98304),(98304,98305),(98304,98306),(131072,131072),(131072,131073),(131072,131074),(131072,131075),(163840,163840),(163840,163841),(163840,163842),(163840,163843),(163841,163844),(163841,163845),(163841,163846),(163841,163847),(163841,163848),(196608,196608),(196608,196609),(196608,196610),(196608,196611),(229376,229376),(229376,229377),(229376,229378),(229376,229379),(229376,229380);
/*!40000 ALTER TABLE `filledformentity_answeredquestionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filledsurveyentity`
--

DROP TABLE IF EXISTS `filledsurveyentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filledsurveyentity` (
  `id` int(11) NOT NULL,
  `currentState` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `userData_idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m4r6d0fjkf0y0pd457urhpmqi` (`userData_idUser`),
  CONSTRAINT `FK_m4r6d0fjkf0y0pd457urhpmqi` FOREIGN KEY (`userData_idUser`) REFERENCES `userdataentity` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filledsurveyentity`
--

LOCK TABLES `filledsurveyentity` WRITE;
/*!40000 ALTER TABLE `filledsurveyentity` DISABLE KEYS */;
INSERT INTO `filledsurveyentity` VALUES (32768,3,98304,3),(163841,3,98304,5),(229376,3,98304,12);
/*!40000 ALTER TABLE `filledsurveyentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filledtestentity`
--

DROP TABLE IF EXISTS `filledtestentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filledtestentity` (
  `id` int(11) NOT NULL,
  `currentState` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `userData_idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e95bthaejg36kjiug93usgl5t` (`userData_idUser`),
  CONSTRAINT `FK_e95bthaejg36kjiug93usgl5t` FOREIGN KEY (`userData_idUser`) REFERENCES `userdataentity` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filledtestentity`
--

LOCK TABLES `filledtestentity` WRITE;
/*!40000 ALTER TABLE `filledtestentity` DISABLE KEYS */;
INSERT INTO `filledtestentity` VALUES (1,3,65536,3),(65536,3,131072,3),(98304,3,163840,3),(131072,3,196608,3),(163840,3,196608,5),(196608,3,131072,5);
/*!40000 ALTER TABLE `filledtestentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forminfoentity_questionentity`
--

DROP TABLE IF EXISTS `forminfoentity_questionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `forminfoentity_questionentity` (
  `FormInfoEntity_id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL,
  UNIQUE KEY `UK_d2it1jsquu3ikh4qchcpwxrv` (`questions_id`),
  CONSTRAINT `FK_d2it1jsquu3ikh4qchcpwxrv` FOREIGN KEY (`questions_id`) REFERENCES `questionentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forminfoentity_questionentity`
--

LOCK TABLES `forminfoentity_questionentity` WRITE;
/*!40000 ALTER TABLE `forminfoentity_questionentity` DISABLE KEYS */;
INSERT INTO `forminfoentity_questionentity` VALUES (1,1),(1,2),(1,3),(1,4),(32768,5),(32768,6),(32768,7),(65536,8),(65536,9),(65536,10),(65536,11),(98304,12),(98304,13),(98304,14),(98304,15),(98304,16),(131072,17),(131072,18),(131072,19),(131072,20),(163840,21),(163840,22),(163840,23),(196608,24),(196608,25),(196608,26),(196608,27),(262144,29);
/*!40000 ALTER TABLE `forminfoentity_questionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('FormInfoEntity',9),('AnswerEntity',9),('FilledFormEntity',8),('AnsweredQuestionEntity',8);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionentity`
--

DROP TABLE IF EXISTS `questionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questionentity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `required` bit(1) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionentity`
--

LOCK TABLES `questionentity` WRITE;
/*!40000 ALTER TABLE `questionentity` DISABLE KEYS */;
INSERT INTO `questionentity` VALUES (1,_binary '','Prvo pitanje',0,1),(2,_binary '','Drugo pitanje',0,2),(3,_binary '','Trece pitanje',0,3),(4,_binary '','Cetvrto pitanje',0,4),(5,_binary '','Drugo pitanje',0,32768),(6,_binary '','Trece pitanje',0,32769),(7,_binary '','Cetvrto pitanje',0,32770),(8,_binary '','Koja je prva faza @ experience-a?',0,65536),(9,_binary '','Koliko standarda postoji?',0,65537),(10,_binary '','Koja je prva faza timskih standarda?',0,65538),(11,_binary '','Koje su faze u iGE sektoru?',0,65539),(12,_binary '','Prvo pitanje',1,98304),(13,_binary '','Drugo pitanje',1,98305),(14,_binary '','Trece',1,98306),(15,_binary '','Cetvrto',1,98307),(16,_binary '','Peto pitanje',1,98308),(17,_binary '','Pitanje 1',0,131072),(18,_binary '','Pitanje 2',0,131073),(19,_binary '','Pitanje 3',0,131074),(20,_binary '','Pitanje 4',0,131075),(21,_binary '','Koja je najpovoljnija strategija komisioniranja',0,163840),(22,_binary '','Koja obelezja tehnoloskog zahteva je najbitnije odrediti',0,163841),(23,_binary '','Koja od ponudjenih su karakteristike obelezja tehnoloskog zahteva?',0,163842),(24,_binary '','Kad je bio Prvi svetski rat?',0,196608),(25,_binary '','Ko je predsednik Sjedinjenih Americkih Drzava?',0,196609),(26,_binary '','Ko je napisao roman Seobe?',0,196610),(27,_binary '','Koje od sledecih licnosti su glumci?',0,196611),(29,_binary '','Prvo pitanje ankete 2',1,262144);
/*!40000 ALTER TABLE `questionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regrequestentity`
--

DROP TABLE IF EXISTS `regrequestentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `regrequestentity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regrequestentity`
--

LOCK TABLES `regrequestentity` WRITE;
/*!40000 ALTER TABLE `regrequestentity` DISABLE KEYS */;
INSERT INTO `regrequestentity` VALUES (14,'mn');
/*!40000 ALTER TABLE `regrequestentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyanswerentity`
--

DROP TABLE IF EXISTS `surveyanswerentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `surveyanswerentity` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `labels` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyanswerentity`
--

LOCK TABLES `surveyanswerentity` WRITE;
/*!40000 ALTER TABLE `surveyanswerentity` DISABLE KEYS */;
INSERT INTO `surveyanswerentity` VALUES (98304,0,'Odg11#Odg12#'),(98305,1,'Odg21#Odg22#'),(98306,2,NULL),(98307,3,'Odg41#Odg42#Odg43#'),(98308,4,'Odg51#Odg52#Odg53#'),(262144,1,'lab1anketa2#');
/*!40000 ALTER TABLE `surveyanswerentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyinfoentity`
--

DROP TABLE IF EXISTS `surveyinfoentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `surveyinfoentity` (
  `id` int(11) NOT NULL,
  `basicInfo` varchar(255) DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `userData_idUser` int(11) DEFAULT NULL,
  `numOfPages` int(11) NOT NULL,
  `personalized` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5fxxq8vysybkxo5q399mp81tb` (`userData_idUser`),
  CONSTRAINT `FK_5fxxq8vysybkxo5q399mp81tb` FOREIGN KEY (`userData_idUser`) REFERENCES `userdataentity` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyinfoentity`
--

LOCK TABLES `surveyinfoentity` WRITE;
/*!40000 ALTER TABLE `surveyinfoentity` DISABLE KEYS */;
INSERT INTO `surveyinfoentity` VALUES (98304,'Osnovne informacije o anketi 1','2021-01-20','Anketa 1','2020-01-02',2,2,_binary ''),(262144,'Ovo je test anketa','2020-07-02','Anketa 2','2020-02-02',2,2,_binary '');
/*!40000 ALTER TABLE `surveyinfoentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testanswerentity`
--

DROP TABLE IF EXISTS `testanswerentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `testanswerentity` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `correctAnswer` varchar(255) DEFAULT NULL,
  `correctAnswers` varchar(255) DEFAULT NULL,
  `incorrectAnswers` varchar(255) DEFAULT NULL,
  `points` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testanswerentity`
--

LOCK TABLES `testanswerentity` WRITE;
/*!40000 ALTER TABLE `testanswerentity` DISABLE KEYS */;
INSERT INTO `testanswerentity` VALUES (1,0,'5',NULL,NULL,0),(2,1,'Odg2',NULL,NULL,0),(3,3,NULL,'','Odg5#Odg6#Odg7#',0),(4,4,NULL,'Odg4#Odg5#','Odg6#Odg7#Odg8#',0),(32768,1,'Odg2',NULL,NULL,0),(32769,3,NULL,'','Odg1#Odg2#',0),(32770,4,NULL,'Odg4#Odg5#','Odg6#Odg3#',0),(65536,1,'engage',NULL,NULL,8),(65537,0,'16',NULL,NULL,8),(65538,3,'Approving','','Performing#Closing#',5),(65539,4,NULL,'Raising#Approving#Value Delivery#','Opening#Closing#',6),(131072,0,'102','','',5),(131073,1,'Odgovor na drugo','','',10),(131074,3,'Tacan3','','Netacan1#Netacan2#Netaan3#',30),(131075,4,NULL,'Tacan41#Tacan42#','Netacan41#Netacan42#',40),(163840,1,'Prolazna','','',20),(163841,3,'Vreme nastanka','','Interval strpljivosti#Mesto nastanka#',20),(163842,4,NULL,'Stohasticnost#Nestacionarnost#','Matematicko ocekivanje#Trajanje realizacije#',20),(196608,0,'1914','','',10),(196609,1,'Donald Tramp','','',20),(196610,3,'Milos Crnjanski','','Ivo Andric#Danilo Kis#',30),(196611,4,NULL,'Dragan Nikolic#Bata Zivojinovic#','Vlado Georgiev#Miroslav Ilic#',40);
/*!40000 ALTER TABLE `testanswerentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testinfoentity`
--

DROP TABLE IF EXISTS `testinfoentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `testinfoentity` (
  `id` int(11) NOT NULL,
  `basicInfo` varchar(255) DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `userData_idUser` int(11) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7tjp62k4odkx7jo0v3t7yhjq4` (`userData_idUser`),
  CONSTRAINT `FK_7tjp62k4odkx7jo0v3t7yhjq4` FOREIGN KEY (`userData_idUser`) REFERENCES `userdataentity` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testinfoentity`
--

LOCK TABLES `testinfoentity` WRITE;
/*!40000 ALTER TABLE `testinfoentity` DISABLE KEYS */;
INSERT INTO `testinfoentity` VALUES (1,'Osnovne informacije o Testu1','2020-02-20','Test1','2020-02-03',2,2),(32768,'Osnovne informacije o testu 2','2020-02-20','Test2','2020-02-02',2,2),(65536,'Ovaj test testira znanje ispitanika o sektoru u kom se nalazi','2020-02-10','FEC','2020-02-04',4,2),(131072,'Info test','2021-01-02','Novi test','2020-01-02',2,2),(163840,'Ovaj test je vezan za skladisnu opremu','2021-01-02','Skladista','2020-01-02',2,1),(196608,'Ovo je test iz opste kulture','2021-01-01','Opsta kultura','2020-01-01',2,1);
/*!40000 ALTER TABLE `testinfoentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdataentity`
--

DROP TABLE IF EXISTS `userdataentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userdataentity` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `dateOfBirth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jmbg` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `placeOfBirth` varchar(255) DEFAULT NULL,
  `profilePicture` longblob,
  `surname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdataentity`
--

LOCK TABLES `userdataentity` WRITE;
/*!40000 ALTER TABLE `userdataentity` DISABLE KEYS */;
INSERT INTO `userdataentity` VALUES (1,'1997-01-23','vm@gmail.com',147258369,'Milan','vm','064369258','Pirot',NULL,'Vidanovic','admin','vm'),(2,'1997-01-10','pm@gmail.com',258741963,'Petar','pm','060159357','Pirot',NULL,'Minkovic','author','pm'),(3,'1997-01-23','lp@gmail.com',137958246,'Luka','lp','063147852','Pirot',NULL,'Popovic','examinee','lp'),(4,'1997-01-25','mima7jovic@gmail.com',250999737528,'Mima','mimajovic','066347044','Pirot',NULL,'Jovic','author','misaa.j'),(5,'1997-01-10','nm@gmail.com',125874693,'Nikola','nm','062349862','Arandjelovac',NULL,'MIlinkovic','examinee','nm'),(12,'1997-04-09','js@gmail.com',257368941,'Jovica ','js','062354125','Blace',_binary 'ÿ\Øÿ\à\0JFIF\0,,\0\0ÿ\Û\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿ\Û\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿ\Â\0,\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0µ\0\0\0\0\0\ê+~\É÷œž=:ª-~\ì!6\0\0\0\0\0\0\0\0\0\0\0\n¯«{:­µyb“\ê\0\0\0\0\0\0\0\0\0\0¦\ÜÖ¦\æc\0\0\0\0\0\0\0\0\0\0\0\0*«V›.@\0\0\0\0\0\0\0L;O ¡¾\ãoQN¬k#FøÏ‰3U´>˜¦V’ºŠ\ë™\Äi#\æIV|¹¾\ÕÚ©‘\È\ã¶u›H<ñ#\êGr12öÀ5pY1z‹xJy`ð&ûÿ\0<\Î8\0Uó\r¥Ì“–ÿ\0uc],oZþ;qp*˜\×	Mm±,N\ï¾:\ÐR\Ü\ã8\ë¯,…½i‹Æ³\Ô{:·Œs¦±¯t’a05{@\n†ô5PN·µÕŠ\0\0\0+\ËÏ†\Â\Û\Ò\îüU°\æ\È\0g,–«ö•o¿º÷³Æ¹\"\r+{²°»½P\0W\Ú¹¾²¡SP\0\0IJÚ\nûZÿ\0Op‚\é:±Ú®®\Þ\\®`•õñSzšùV•CoP\Û\î>C‘-\è\ï9z\èT²\Æ\Ø\0_>XšR\Ö\Í\0\0\0lÎ§\ë\ítv¾‚\\ôÏ¯«6±h‹Ó—\'1Ã™Ç—Fø\ë\Ä\ÉùÝ—«c÷QÏŽôe	\èm@2ªÏ£]\é±@\0\0\08y\ã\ÑUn}[ix›h4\ç\äP·—\Þ<eñ\ëª*%ñ˜µ‡Ü†t<•Ÿ•\ÔÆ›\ïÁ ¸üù\Ý\é ôZ·±v\Ç>MLd\åÇ­’Q÷8\0\0\rRYð˜´\äƒ\à^{³Î“ù\Í#Wk«w?ò6µ».w\ì|rp\á\Å\Éûó/¸:z×­n.E¯Ú‡?`ò¶i\íM\åNúzý;i5“×Š”Æ½œ¶w\Ä`\ÖN¨\Þò\íu\ØVÆš>Yr-\éÃ˜\0\Ã\ÌüS\Ñz­U–ñ_s\ä³:ª´9ŸEõ2	ñ•\Í7¼¹1²N\Ã[—\ns+\ÙU\ìôž\ì\îŒv0\0\ãL]0óH¯\Ì\î§U¢\Ø\È\0\0\0\Ï†ón­„·³\Å\Û\Öl\Ê;„y1«\ëºJ*\ìg¬¬µK1¸D½¸\ZSuOt\ë‰*\Ê\Ñ\Zƒ—\Ó]±\0\06ž|\Ë\ãŒ\Ü\Ùq¿…·žGw\Äþ\Å\îE•Šv¢\r‰o}Àš/]Jz.i—‰&\É\é\ÇZ\ã\Ý[Â¶±{€\n\Ö\Êtš\ØPbGº§4\ç¡xùÓ‘|\é*ý¹‡\â\ÜLö\êl<f<\æ\Î\Â\ÆC R\Ø3±¤Y¾jw_l/$ñ«®¯wH6\0\0\0\0\0\nª\Éóù/·p3À#4·£ôó`\×<¥Y\Ò;7^À\àN4™li\ï˜¶µ\Õ)\ê\í\ê\Ä\0\0\0\0\0‹÷\ï‰ø\0afÓ„^\Î\ÓZ\Å3ôw^4Ži«¾ª!¶\ÓÉ¹8\Ýó\ãÑ¡€\0\0\0\0\0\nfe¢\âZ`:*\ã:\×w}À\0\äŒQ\Ñ\ÏIÁInv`\0\0\0\0\0¬¢½®+NzoŒ\ê\ä–F\íŒL°\0\0\0\0\0\0\0ÿ\Ä\0+\0\0\0\0\0\0\0 0@!P\"#251ÿ\Ú\0\0ûžu›7wHÀµChCó\É\ßc\â\ÛÖº;ýœ“ø¥g^÷\ë\Åô\ÒWœÿ\0\09~¡È»n\×\ÃC‹/\íWË‹¹Mq\è þ\Ã~÷*þ\n$\ï\Ê¤€FNH¤f…‚\ïk\èv\ÍTñžJM\ä\É)šLžY\r¬«\ÂÅ¹)\ãˆ\Û(\ç\ÐRŒ1? Hy.O‡\'‡t­”o~ˆ“j\Ì5Êˆvª~œQÜ¥ \î\î¿Y«\Êý\àlT7V5…g|f1p™­A½\àªEPG6°7…ªL˜\Í2©–•]\á•Ú¬	 õ9†¸\ì9·…)X\"Ô!\Æ…\ã\'Ö›P\êN‚\æ^¾¼‚2R\Ü%\Ç\É„U®«_Hn¡\r\ä\è«\å‡\ã –:\ÌK‘ž²|¯š®žFÐ…\0\ÃÈ‰!iM±j¹\â tš‹åµ¨‹®\Ò\ÖP™œIÓV\Ö@uy(\Õ#_.»£K Ï0)\×PD&ðœµY»GY\ß_Uõo§),6ƒWwN0‰›b¢”iùòñöo‡Oü_O+w\Ð:T¾[>vIÚ‹oz]7®úµSá¶¸HÉªkG^>c/òð\í~\ßFÿ\0mX1ò¨[\ã#\çh?j\Ã)\Ûùjt\ä@÷\ã§ö-~ŽNov×‰‹\Ñ]ô]Ù«¯¼\ï\Ñ\ÉU\ï\ã¦ö\ß\è\Ä=\Ð[#¾úòd\Ñ]y\Êl ie>ŽU¾\Õ\\z=\ìúr6\È-\×Û™yŽq$:\Î:œm+fœ\é!¹\Ùõ?\ìU?u|¹c¿·O\ß{\é\åz\ïW\Çw\ÚÏ§(÷gs\ÒO\rþú\Ô\rL\Ò\ÞÕ¹o}µ/\îc\è“EYl­3Vž‘O\é¾»SV_fÃ¥’\ß-=\ëzØ‰±õG¯¹t£”\åk?ó-\ìW\Öß°ñ1 \Û\ØJÁž1[\è\×\Õ8\êQh;Yš\æ>R}.\êöMö\ßu£¸/›\ßmXÜˆ1¢œ§m×’³\ê-`M\ÅZP\êR@Cºµ“ä ©ùs\×\Ù\Ë»@\ï\Ç?]Œ~½ž9\ß\Ö;m;\çJC\ëb\ÜSZs\Ù\'È“\ÖÊ±ª¹}úµ\éf\Ñ5\ãkfk	¡¥¶p\ÝWzB\Ú\çú]¸M\\k’xw\Û>@s&\Ê‡),ý\Íd·\éŒ\ç¹\ìbÜ³Z\í­\ë[Ö€\ï£lP¾\Ü\Ü83–®º	Aµ\Ü,«ˆ”¶I\ÊI“j4v\Ï\Ð,0”\Ï\Ã\n‡j\Ú8¶Wò!5½K]l¬€„l-\ÙsE‡6¯\Ö/R3Z\ÔubŸ]\äÌ‘\ën¶<q\ê×“ö\à[\Zd­5\n\Ùk\ÑC\èHD³WJ7\Å\ì{øJ:–œ£MŒ²ªa§¶\"\"Q\å\åÎ”\È\ÄÍ±YÇ†<Œux4°š•\×À˜«‘{\ãG|¬³õ”²W‰\ë\r\È1«Y\é_NS\à5\Ç\Ö\ÅÈ¤¹\'\"sÈƒ\ZmO	kRýoÁ?s¶¯,> [fª¸U\áú¯Y¼cŒ\Ç^J3\Õ:–YÄ«S\Å\æÆ˜œh›§c¸üyOoÒ—\Ù#;ö~MŸKAS\ë|žë ¡\Ô\Å\nõ‹¢²þVV‚O9/^/?E·$±\Óf\â©{›–ý[^:€>¹°ÿ\0\Ó\Ä\æaw2ø…?MMýŽ®Yª¦Z]™\ÍUWÀ«†…ðüw)Z\Óuÿ\0SmA¶æ¬½kuœ\ã»{c+ð¦«\Û\äR\Ô+RfJ3ýJ\Ö½,=ƒgÅ•;;¯\ã˜!ÀC\ÎQ_²FªÀ•\çIÀ¸/¢\Þ\Ðuðeƒ8vW*Ó¡>§[6×†\á(c7ò\Þ0ÁX—EFÉšýµ\É\Í\ê5Llý2‡OX\n„CšÖµ¯Šû„Ê©”ä…†ù\äX™\îC6aG	f°ü‰8c<‘‰\æöV˜¥¨‚Q\å\ËzƒôS1+)\â„ž‡&¨W\âWý. »škŒ\ï\rLø²k\Z\é\Þhr\Þ\r‰’§la\Î?WñŒ,Å¦£>:\Öå´©\n\\UQ+œ‘Ÿ@8\â)ÿ\0Á\åNú\Í\Æù\ëwY§\ÂA\ÈD\èº,±Š\ÐoP\n\ë«\'\Z\â°gmµ\Æ\Öö+?\Ã\ée\È\Ã­ð´«ðyY¦\ÊmMY­|\à	õ\Ö\Â\Ä)\é\Æ\Ê\Ùu®û}ü\\B|]z\Ë\Å\Æ ª\Æ!\ZgúpUª… Y6 –=xR\æ÷\ßx·\î\Ï\àò\Ùú¬8€û)\ãÈ¬¾Yø½¸^“„g¦)63\Æe¬jµµz¯¾\ÇüSÿ\0[‰ÿ\0\Ëð\ä7T„\ßd#€E\äõ:\å•CôHñe_À\æ\ì^$Ö ^…,;‹\ÙUÈ•\ã\" ’_\è\ß\ïŽñÐ˜\Ê/Wü\"\ê‡	“anF\È\ànJÄ´\ÓGju”Gg\\J‡ó\\LB\á!¦z”†\ÙS«QMþ7ÿ\Ä\0#\0\0\0\0\0\0\0\0\0\00 1A!@PQÿ\Ú\0?\ïL`ˆÂ\ÑG\çªn„WeAŒÎŒ8Œ®}±›q\ÕV\â ^\ÆPÑ–¹1­\Í\Ä\rÌ‹c|\èr\0k\\‰\îbñ<K\çL‚Œ\Ä}j»Gkù\äF±wLxˆŽ\Û`%›L­\ë‘Z¢¸0\äô5l•\â*–›ETt\Û\Çpd3ªe³E\ÅýÐšŽÛ¹B,´g\ËhG aP¸²“\ãT\Ç\ìÌ‡\çœb\ã¯1y•V	¨\ï»\è\"O\åÿ\0ÿ\Ä\0-\0\0\0\0\0\0\0\0\0!01 \"2Aa#@PQR‘ÿ\Ú\0?ñ\Ü.o2þ„vÃœ\Ö\Âÿ\0¿‚ôF_9pP\0\×L¸\"&»\Ôw\Ó!\Z\Ñ\àR‚FM;xŽ\Þ\Ãzÿ\0<õ¦¯\Ü\Ø\íIPX\Êz3\í\â^pja¾X\ã&J##Z\ê\\\ç$Ÿ7oY®FVSÚ£ID”kGR\ç(\È{\àx	™\âžh²²…{U¦O%\í\'±\é\É^†T¯Ž\rÚužjh‚D\à¤òW\ÜU\í#žþR	J¤œŽ”¤\ëeIø\ág|8ÆqW¨\á¿‚{TU\Ãe×Ž¥S\Ï}lŠ\Æ)ŽñÆ¢\É\\e\ëEJ\å\Ä\0\Ú;TH?P²…+§˜fe\Üð²\Ä*W9]…dg9QQ)\ZUO\Â\\UýÁµ;y\Â9qÓŠ\Ôsš*Rû\ÔR\Þ:œ\Ù5.kP‘¡ÿ\0”©N©\Îi;Õ²\ãõ#BýC¦@PÁ§-Qœö\Å$š\â\Ä\Z°K½g\Ê\Çý¥(¨\åT\ÛjqZSVø\"*7õ«—9$Ÿ5-\Å8r£ž`»$ùF\ÕqF\Ýø6\ê\\ÎŸn£ñ\ÖR@¦­²ìšeB7wzJBF•\ÓG\Úg½Z›(Ž	÷\ë½%¶Vjm\ÝOy\Z\ØTV‡B))	U–¦Mš´é¥­K9Q¦š[ªÒV\ëpŠ5+\ÕøÁa\ßRi˜\í°0\Øý_ÿ\Ä\0@\0\n\0\0\0\0\0!\"1AQ #02BRaq3br‚‘¡±@PÁ\Ñ$S’4s¢ðCƒ\áÿ\Ú\0\0?\é›\r‚lˆWY¯\âk/‰\ç\Ãõ£„\Æzu\Ôwþ€\Ù:\íX…>“7\Ç\Ö%oú\n\âðn5ºž5“øa\ÆùŸµ~?nÊ~ “® \Í\íß·\èR\Ê:Ú—Î¸\ÃÖ˜\å{¿B\Ãa—n—\ì*8\×R-¿B…6+ ýÿ\0C\Ê?ß·\íùc$¬²jÊ²°\Þs¤5©\ÌGCid\Ó\î.sV\ÃBª7¾z2“¦[*\ã}iO)ø\ÍfšAñš\Ñ\Ä\Éñg«b\"Iõ\Ìh“&N\ã\æ=T®¨»\ØÖyOª+G\n\Þ÷­<3&½d\Ç%ŸºÙ&\n›.kùš\È¡ñarj<^B\ÇV\ãH\Ï:+r»«ý@÷)¯Oÿ\0\\\Þ&#ñp™&p¨6\ÑL5\â‹h\ÖL(\Î\Õ|L¶õR½W´oZ0D>Y\áŒü\"½\0_g5_\r/\ÂõiÐ¯Ž\Ê	=\æ‡Ç¬(KC\È2L\ám4S¹#ûüU\äg‘\Îüõ~+‹\ä6­<J%®nx\Û\ÌZ²q”;<ipØ¶¸9‘\Ï\Øò \ÆZ\èmô¡$M”¦„\Óc{n\0\Äa\ã2\ä\é]ký,u\èr|˜\×34‹\íiVT.\æ1¶#ûU±J%]\ã1¬¹M”uS`¡.*\ë\Å\Úh$JFÁ\Ë+\"†S°Ñ—vM©´V\\GG´»\Z–hN‰úp[¯1Ôƒ÷¬¹\Úû†ÁAñ†-Ý£V‚0{o!¢™n¦¤…õ©×¾£‘º\ãE¼øZ)—)\r\Âb¬§}ÁúP›\'\ã=¶rK1²Œ\äÔ’ÄœÀ}\èbq\ØS÷\è\Î&›¶£\ïZG˜|\Î?z\â\à!±{–¬¹R\Ì\ç\çBI­&#\è¾\\¸$\ï%¾U‰M\ÌD¸D9\ßIü«LsI¼|:	2%tUk(SBM¸\Ã\Õmü6:©z3|©cˆe;Vm)›¬ý|\Ö(û#\ï\ÑM1\Ô\Ç7•\"ž»i7A:ú\×\à½\"h·:\Ñûª-\Òh…”jB\Ñ\î9=!Æ¼›|\êö\èW£V‹ðdl[†D=¥\"‘ö©½Ë’Wê ½9ä‘¾¦¢„v\Ý	ñp)<ž¡‰Š‚2¨	˜\ËŽ±J\èn§8<‚¬.§1Yn\ÐM»Î¡\Éìœ£È“\Ì\Ô>Àûr\×‡\Ö\ØW\ÃBþþ‹\ÊAKâ§†	vg^†s¢\Ù\ÓÏ“ž‰DT¿tk¬Ùª÷6«\î£\âip”Ò¾½J7š¹Ó–FùšH‡[[\ç¢\Ä¬¯•@û2­\Âñöµ¯X\æ\"’EÖ¦ôj\"üŽ/(q–¾M\\\Z\Ò\ÏÁ3m#${\ë\Â\âþ\\¦’F\ÉE\ÎI¬­Q.dZüd\ÃHú1á¿£*ÚŽj’­\Z\Õ›mfó\á8Œ0»v\×[n«TJuªÁsªŠaˆ’]ûrK\×\'˜u9“I¼\èËˆ\rÕ° j¬¬<Š\ãÃ\Ï#E\ÖMd%\×º†ÿ\0By\Çô\ë¨w\ÏñÒ¦%¹\Ñq‘®*C\Í\Éô<Ž0¢ew­ž·Ö\É\'Qµ[\ìË°öObe¸²÷\á2¶¥\Í3¹»rh*\ÌuY²\â•}Æ„XüÛ¥½^\â\Ûè–	•75¥£\ê¥v\rŠ/•AVP€f\0©\Ì\Íù7BA“-û©ž­‡c\Îs\\\î\"B7^Â´œø\Ð\ã£t¾¬¡j\\> óš•Ž\Þk=g\Ì8,E\Å\\E>\È\á2Jl>õ\Æ>a\Ù]\Ô#‰r˜\ÕÎ”\Ç[“2\ßq\Ú*\çJ#©\è!v(5-ó\n\æ°ò0\Þ½¼\ØW£OóŸ\Ç\Ù \×;¡õ…«›™Š÷[8 ˜µâ›½Ù«ƒq\È\ç\r\äØƒ]•\Å\Å\ÜJþž\"Ã½¨UñS|1ÿ\05¡‡Bw¶z°\ÅË¯²\ÛT\×0òm†„x»²\ì}¢²£et;«0¢±ó²\î\Z…e\Ì\×?jÈˆy‚¬™\Øõ›	I\0e:\Å4J\ÙK¬W\à\æ?\íŸÛ‘f4J§û\Óø¬¦Ó‹¾¿½{¾\ë]\ÞT¯\ÊFppö8§¹VR\Ì\ç\Þh>7œ~\çd5e\0°rLs e¢øk\Í\îÐ«\Ä\ì\áVš5“\Äf5¦²\'ºõ\éOøš\Ìdo%®f{š´’ž\ê\æ\ç¼Q}M\âPª9\Û;ª\ï4\Î\æ\ì\Æ\äÒº2›ƒQL½¡õ\ä\Â\à\ì ñz	5z§uI†‘³\r5ý\ëG\Ó>dþh\"]\åsV\\ò³\ï\èyø”žö£W\Ã\ÎGƒ‹\Ó\Â\ì¬Ë¬¯ ¼\\}æ«…Ë“¾Üœ¹O’\í4d”ù\r\Ü3\á\Ïd\åŽQ¾¼µµs]kT\Èô¿Ãœ—W‚ô˜‰7¹¤gœŒ¡{­9%o¥sQ(;õžQUÓ›»»ÎŒ“6SrwÔŽP†x£\Û\Þ5,ò-Ó¨´I\Öj5\Z‚\Ò5/—+.g\n¾4StNö\Ó\É\Äb¤`|õ\Ö\Ìý¹\ì£+º¹\Í\ã\æ¡Ý´ùÕ—F!\Ö}Ô‘D,Š,*xeÊ¢n\Ð-\ç\Ñ\å\Î\áGÞ›\'UÍª&ÞƒY\Ø*\ï4W\n2Û¼uV\\\ÎXòDÓŽg`\ïVH\í0“ —a¯CÖ´x¤òZ\çqºöh\"gòÿ\0ú\Óù ‘¨T\Z€\àü\\\"\ì¢\Î<7\ÖR\éFzË¾²\à{\ïGCn¼çªŸ\Íe\Ì\Å\Ü\êÿ\0\å2Œ«R†\"ñœšÒž!ñW¥\ËöE[\rO¬ù\êóH\Ï\ç\Êb…“bo¬\Õ#²2¾¥y\ÑT\Ød×§—\éZM3|U£‡Bw¶z°“6y\ÅüUÐ¼R¯¸Õ±Q‰=e\Ìk<†3\ëŠ\Ð\ÄD~!]uùÖ”ˆ>*\Ò\Ä\Å\îk\×7\ÆJ|ª\ÐF‘\r\çH\Ö|©&ü\èI-Ÿ¿»\åQbW±¢\Þ]H”³‚„˜›<»ÁÀ\Îù•E\Í<­­\ÍE\ëZ\í\ç\Ñsñ‚{\ÛjøYþ?šô½ƒzÓ‚Aæ†º§\åYŸ†´0\Ó†šY\ÕbE\Éf\à\ã¦\Ô8ÿ\0ÀñI\\X\Ó\Ã&µúøò¬¢\çp Øži7v«&÷<+\ë“9ò \Ì9¸´ž\Ï\É\"\Îþuø‰G7\Í\âÜ‹­„\é\Õ;ü)’E*\ë¬j#~¡W\Ä\Ëð§ó\\\Ìa|vò’¶JŠima¨\rÂö¥\Ó?‘–fÔ‚õÞ–Fù“QÂ‘ó\ä\éh\Ê58¦†B¥†\ê\Ê@‡\Ú[Õ§FŒ\ï\Ås2£ùE›J]ˆ+.S\ä6\n¶üÔ¨5(·\äc„\äkŸ!YgTC+\ß\Êy¤ê¨¦vÒ’F¨ÁfIÀ\Òa¨š\æ\ÂÌ¾®º´¨Ñ·¬-Z1›=sðƒâ†Š\á‡»ûUs¯‚l}ÿ\0%\Zwc©¤\ï=¾\\®&#\ÌF\È\×\â\ä\Z	\Ôñ<6u7\Zô\\YÞ†\Õ|4\àø8®v\É\ï\ã†#ë¿ä°´\Ü<–\Â\á[Á\Ü}¨\"\æŒu\Ûp¥Ž1’Š,,’œ\\\ä\ÍE½$=õýø#™50üŒ\ì# Ô˜g=}%ó\á/+A´Ñ‡uk\í5‘\Ì:Í±hEÍ´\ï\è²\à“‰Z\Ú\ã\ÝI}T‘x[5õÆŠH\nHŸö\â‚\Í\ZK\ã¨Õ¢Š4ñ9\ë+#9\Ùzˆ¼0ÿ\0\ÈÐŽ\nƒó\Ù8ˆ\Ãn;Eˆ¹µ¸­^(†_y³Ÿ\Ëÿ\0ÿ\Ä\0*\0\0\0\0\0\0\0\0\0!1AQaq‘¡ 0±Á\Ñð@P\áñÿ\Ú\0\0?!õ›\ê‘X¦›Tz7 •\ÊUe\É\'!Ž#¹ýG¤­®\ï\Ïbÿ\0Ž\ì{B{\ì!Œñ#1®Y2\'’i\î(–¨\È\è`Û±¡Á=f™‚uþ†da\ç\ì}Ö£Ôº,|¼ÿ\0¢\ÄE(\Ýÿ\0JÁ\nGôReú$þŒ2ÖŸ\Åüc²¨\nØ‡P\î\Í-»p}£>7ðL¹\Ó\î­r\èT2\ìb™§eþ\ÊV^\Û\ì¦	A’zdüeJK_\àdòô\í€)ôä«*ø\Ø>)\â;SúPy>\Ò×—–l½\Ç\"‚\r‹ó¥|ˆY[\êpŠ »Cu¥gñJE¼~ºJ\ÒÑ¡FO{Ê½¸Ó¹wör\åKq!L¸´0\r¤½Z+?Vÿ\0PD\ÇªJU«}´0§ƒò}V×¾%Á¥—wEÏƒY¢P\ËgGÉB™\ÈHnðûVG\í%rÿ\0(\ëÿ\0\ZIr\Þ~iÎ÷ y\È\Ä\àje\ïJ\ãø¿ž\î\\q(­\n\ÉQ\0f\ê8:¢™oz\Æy$Q¶{óD3:\0|4S‹D¡Æ ´7ÿ\0’\ä\ÙûÞ¥Q\Ümô•…G‚<ø¹$h…\rñ8:”rb\Çl}\ïR@\ÅVc¿„e}\ßAS\Îò\íÁ(e¢\ä;s­Hò»\âù7^:›\Òõ–\ÐÉ¥i7Ÿ‡\Äûu#©½=»\Íf©€(¬\Ýò„\â\ÈÈ«zô\"wn\Ñ\Éf>ùñé‰Ç”\ÙóFf“a§%\\;Sˆ¹»\èT.‘j­Z;>\'ðü\æAv\\\ß\í\"\ÖÁó#\ã\Ò\Ûj:Noµ\\\äçŒ¨[\Îø\æŠ\0Zø±‚mwñD#Dœ\ß\ÙÊ» >ö¨\ä…ŽÆ‡ x\ï\n\Ûs\è„\"°\ì®xŽ\Õ 9\Ï× ­–˜\à\Ü÷¡†K5>gœ\èóñ8¯pYø¨\Â\ãs°\îŒ”ži\Å÷©\\„¾E^D§Ÿ4-–sÀ»\í\è®li“ñ\à\×w\ï‰s\ç\ÄpY(\Ùaô´`“\ç`\á.±\Õ+\0P\ãsô\\\Ç\î~*lÿ\0•þøµ+…¼\Ó¸Šwâ™\àfyñdfQp‡Ô¤V‘@<LJL}§!\Å^\Ï>j˜ñ¿Jû¡}=+Ž§Ü¨Æ·‹\ÂÈ¾\çÏƒb¡6YŽ~P q\Z\Ì\Ã!) »QÁ\Æ2\ã@\Ë4\Ö\æ\ÏZÿ\0“\á\æ¼pö1N¦É³**žd\ã\é1\é‚æŸŠ˜pmó\ã\ï¶aL…D#•40cÊƒ¡\Ï\ÈÆ¿b¯\Z\ÔdFôk®\n\0@AWš9\ÒÊŽICw\Û\Ì$ \Ñ\Í\à\È\ÕÝ¥6\æ_f^˜9&£j·j§\ìôŠ){øŒ\Ý[Ž;ÔŒ\ÝÉ¬T\é\Ä<+XBo÷\Ó}Ym\ä?y\È÷¦\ÅÍ«±Z\ÕJ\ç\Èi’U`«\Ù-÷øµ4f—:Ac\Ô&\áõÀ\íÒ\â>./Çö\'1î ¶ž\n“°‹’‡…*vm½ªJY^3ñCª¿3*jC6œyÀ%jN¸€Q\Å\0ƒ“.5²™º\ÑF\é°M´šZE·V¯\ÐU«e°(§\ÚJŒ–r%\é\è«\rï¹¸-ù\æÊ§\'ñ\n\æ(t`ªd,Š8Llýü\r\n’>-5@ÁL„™$•¾x&ñƒ€b´)u’Á¥•ƒ\n³#pö\ÙQ—¡·¬NkGgF­Û”|‚‹-3\×\n\"z;\æš+ñ h\×<\é£$có4œ‡h]|”d\ÈHŸ&-\âq\ï£z}efDñqj™p<\ê µÐŽïªƒ€\åÏ½F€E8(`§P\ÜKR„\ì7\âkB3 ¤¬%ró“Q\ê?T\ÃM\r¯\'ø;\Ô\Ï8ý\r¼O\É\ÂgE\îP\é±X%»ý|ˆ@˜‚J6@\Û9\à§2pŽ©¨KwÒ‚.@	\á2”j\ëjˆ<`”lx÷?\nhÀ@y[£\×\ÔriÈ‡±Ÿ*@OfQÔ¡Á_‹*\å\Ã\ì¡L\Z‰üõm/~0}\ÑhOðg\à\îdC\Û2¬²lg\ÇW\ÉV_¢\Ô\á·À\Ôk³L•f¢t\Ó1\×\Ê)\n$h„·#\ÔúU·U\Âö{=h%cbr×’…|D½U¨Fñ}›ˆ|³Ì§®÷Â¡(&	ò^É‰\àcQ‘×‘—•mÃ…‹·\Ý^i€`t<f³\Ü:ù‹|.f~¦”³\Ø\Ò\ÔðYN–=\æ¸\ãnG\\zz’½,XPm&\Ó|†JDº\ç\î>b!i›~2¦ÀCCÈ²ö_¤üyV*Y\îS‡\ÒQGÁs6eø¦]q^u€8G¦\áWÉ«B\Â\Þdùªˆx%ö´¥–\\|‹ \Ý!4\Óò‰?ò~\è±^\Èm\îø(H©Ã¶\ÃV­Ñ¢œTB;Ž\ÔmAú}7Ywª\Ð3¤Œ¦’\Òj?\Îöò)ŠA](\ìð3­6œ\àp2ò¢ \ÝmV\\C†…þ*f{7\"˜­ùq¬Q\Ìý\Ú=\ä\ì\n\ã·\Ø\æ\áW@s“\ß\éB¿`p­Ib\ä\ä­™ð}\Ðs\Êe\è\á\Ðq;\è*A>›\nV…Œ46Hr\Æ\çf½›4	h\íM€jK¦.\ÆR±À\Ã\Í#x­Ž÷B€\0\0°Tª\Æ\â`\ìw¡l…Ø—TO~ŸÒ»ÈƒØ¤\Æ\ç½\Z`‘$½8\Õ\ï…ûµa\ÊXÙ£‚ÿ\0˜\ÃÚ‚\á¥;\áEO¨|:\n3«\nöŽ{*L\ä«S?ªN¸¡T=¤\à\Ùö¥!u\Îa\ß\ß\ÑÀ\ËÁO\ÆW\Åû\ß¢A6(ocØ¨)š\Ýô ùxXó ¨C\áõH\\ú‡û¦£õÌª,Šb=²kß¢\ê¸ô&þzpô¸\ë\àSJ\ÔC\Þ\ÇF\\\Þc,\\V§‡R¾ªŒ\ÜxŒþöŸ\Û\íW#ç—¯9uqg”\ä{Ð¬\Ûkú·×¼-w&­©£$b	&s¸Ò Aøº¡gsò®©t7¥zhS@ù\ë\ßÁ\Ä\Ä\Ã]\n\\\×S„4K«7¯–LbA®l\êT9…—\"8V\ïø]Ø•\rùÎ¥\ÛÎ˜ù¦±¿=+/<>\ÍAWu—ðQ%ÿ\0!ºQA\Ëù–>|Î®*5r*A¥ \ÕÀ=ª)c*s~*Y\Ü\èj&¢¨NÏ½6šM]\×\Õ#\"««Ÿ€\æ=”Lª¿EkŸF?\ß64ñ\Z¼\nltAy¯/\î¹2Tû{ÿ\0\n\àM\Üú©¦3þ±ã±‹\ÙGðBKœ]\é’öò„b\×NÏšŸ+\ß\Íw*pC#\Îd‰¼\æ`\ÔòlpeBŒ˜—)T‘¼Î¿ÁQ”Ü¹\î\Ôr3ù‚\çOoh°ðRŠ»aðô;\Ðø\Ø\ÉcöUÁt\Å\êú ’9T®:\ßù1ö„\â\ïün\Í;˜£HD¨@:\æ\ã•1[¨³ÚdQX\àaL“s¢eÅ¬±¨g»«ü\ã¤MŽ[¹H~)y‡0|Q(gý·_\Çÿ\Ú\0\0\0\0\0\0ó\Ï<ó\Ï\ç\Ï<ó\Ï<ó\Ï<ó\Ï<ðK¼ó\Ï<ó\Ï<ó\Ï<ó\Ëó\Ï<ó\Ï<ó\Ï<ó\Ï<\ç<ó\Ï<ó\Ï<u¿4ó\â.“\r<ð’}óÆ‡3•\Ú#C£Y\\ò\Õ<ó\Ï5\è žEó\Ï)\×\Ï<ó\èI#/<òW<ó\ÏÒ‚T|Áó\Ìuó\Ï<óxVG‚½¯9‡O<ó\ÝY\Þ5£\ÙJ@\Ö[a}ó\Ë+ZŠF5ó\ÃL7\Ï<ó\Çòˆ#™\ß8D\Å|ó\Ï8\ÊP\Ù¶×Ÿ<3i\Æ2\0\0}Ñ¿<ó\Ï<ðÀtð—{€$œó\Ï<ó\Ï<7\Ï(µû\rO<ó\Ï<ó\Ã|ñW<ð\Í|ó\Ï<ó\Ï<\'À\\ó\Ï<ó\Ï<ó\Ïÿ\Ä\0!\0\0\0\0\0\0\0\0\0\0 !10AQ@Pqaÿ\Ú\0?\Î\æ\Ëðu£öþ¹ö#ºp¨ùo°1Fœ*jW=)¸\â\â: \ZÀM\ÄtÀ—É‘?¥wY7#M‚Ðƒ|0Ó¨\ÛYS¶Nƒ\Æ÷ì¼·\n{›‡lÞ¤y#‘?µ\0SSq=`\ëâ’±=ñQÆ§R\ã»8ºJj;\î\0uN\Ñ[`\Z\'x\ê\\¹r¸¸÷\Â\êOt€h€-–¿\ÈòJŽD¤jCŽ\Â!¾7yFg¶š[\Û\Å\ß	d\ê^r¥Jb\íö´VøNF\î?\ÝÀ\n gH\ë\Å\ë—:+k\ãõ\à¿\Åù?ÿ\Ä\0)\0\0\0\0\0\0\0\0\0!1AQ0aq±Á\á P‘¡\Ñ@ðÿ\Ú\0?ú\ÛTQ¦rÿ\0*ƒþR\Z\n·4ZA¹OÐ™h#\n/§öb\ç®\är\Õu\Ëõ5ŽÜšö‡¤—ªõ\â\Å;»K:­ŸE\Ù\ê4a\îl\í\ÌP‘\îñ3\ÆI™„Í©G\Ñó£\Ëb³¤[nb\ÜB:\nNZ²:›x…\ÌP‚$¡yN6jô‰P…´|i\r<3÷8%e\Ã!.Ž5\Ó˜ \×),¦\rCù\â	N\æ\äoõ›¼©G¡\Ï\ÄÉ°«sW…&\Ø\êüMg[œý˜ù™\'´\Ê\Çx¥®1\Ìk¨Ád`\Ãgyr=q(ú›œº\ÃdbñºañÚ¯?Ý¡«‹\âý£„««Øš\Ö;Y¬™·1h¸DT·*—Äº·Â…V¥\Ê`¼\ßû.V¯<¶?v—\"5ˆ¸FÆ¾\Ú|ÀGA2‚½NÝºúL\âRþy”qªó\×ñ{ž¯òõq\í¬”sZ¢Ý®¥\îs\ÞRÿ\0—¬ye‚µø:ô\æW\Þ\æ\êaû\êùû_ÿ\Ä\0*\0\0\0\0\0\0!1AQaq‘ ¡±0Á@\Ñð\áPñÿ\Ú\0\0?ü­>i\"\n€o}›LÍ…ZXõ\ë[¢\àzû\ÒdKÿ\0=\ê€\ßR>b 4$“Á_©\éaÀMJ9\ëSù\í;	@Nau\è\Ñy)°—ø‚i\Ì%˜	%õ´üö§†\âPË«\èW\×\Õüÿ\0\à\ÂÑž\×\é%\ì«¹*r=cÿ\05\Êd\Õ>Æ¡€@\Ûúÿ\0Áh\ÛG\'\å£ø.+Li^õPÚ¦§øvýzB“± r¼³ud\ä“ð\Æ&0ù ¬j—\æ\Ðyi\ç\Ü„b÷µ)Jººœ¹ƒ4HÅ€ñƒKÊ¾6W\Åif!3·\ìÀD~C\æZ$«¿\ì¼Mš	sÀ¾\è_ª;\'ÚVµž%n\ãYö3wFff°Û«V(\à\ì\ÕM^\"ŒB”\\b¿t\Ó÷\n\àTFJý\ËjOWu!æƒ”p\Òð4`	qB\×9tU ^š—L,#.\çJ\\I„’ZµŽ«SO.‹ \Úð4\Z\Ó×¾\'\éG€U.\éý*.U\Ö”|S…’ßº†š-\â\ÇfÏ™¡\Éb>\çD«\0D°­C!³\ì\ÑˆN\Æ\îÁz§Íˆ\ë.…{BgÀÓ  \à\Ñˆ;H(ú¢§\îM»±º\Ä-N\ÏfMb¦°‰Ö5\nó¸z$±\ÌKº\Ä\è\íSò\æ8MQ¢pf³\"\È\ÒXôôRQœd˜\íXm\×ú5\0ou}ŠB…\Û\é’¯L¡X¼¥\Ï	Xo´G\Ì|Pu©s\íKu®®*\Èdz+­\åâ´Š£:»¼³\ï?»vºÀ¾\ÃU\ä6\É\ÍN\Z„0tv\Zhä’¢3\"ÀøZõ£\égó8Oû:A\Èti\ÓK­\×U¨G\",øV<\Ý\Å‚\à\Ý\ë~\Ø\âƒÔ¼&\Ü&\Ðh\Ó\Îa…¥¹\í\">jq\Þ[^\ç“\×50	8kDX6R!¼9\ÇQ…RÁƒ†c\ëš0*»AYNd´\Ôce Þ°U“C\Ûc\×o\Æä‚·m÷¦”E¤M\å}\ÉØ§\æJM%\î6\ÈAKº#€Ý€6(‹\Æ\"_`\ç–ûF¸÷q\Õ^Ñ«*2\ÚuõüMª\ànô\ã•ºøO²\àw \0\0\0l{²†ô¦!\ÊÂ«V\Ó\í\à\Ú\á\ëŸFö $D\Ù\Å:$3¯s«u\'Š»ö\Ël«@\\D!\Ýô\×¹x÷óŽˆŸM6\ì. ¿g\á\ÂUt)¸+„øZ™\'X\äˆ;>ù‹Ò’:žýDAD\ÄS¨\ÜQð¾G\Öú$ž³ö\íIUú3F=\íŒc/˜©‘˜~h\ÅLò’8$ó}\nöœ”MmþŠ÷‡R‹4Š~¶ýD\éŠu\æ)\ÙG’T¡Éƒ\Ã~\\ˆb`°r°h\î_b\í€;¡Q%.M\î\ì½ÿ\0\n…]% L7[=IE&\éAx²\Óì€Š{«±¹‡Š\n\ßVDö50ƒ\"HM‚K?o‡¬\Ó\â\0W•\ê¡Þ‹—u¨ðb(\\¸_xE\ÅI`.[Ž7R_F,&=‰\ì¡ø\\Afú?\Ù@ŽŸ\Ö\ë\Ô\å*ofO4øz6f\èb$xœœûF#@$M“S2¶\"¹‚ôº>»¿\ÕW)\"-©ß„7`%ú£}\Är¦>\êT!ðú÷-\á.a\\jºÐ‰‹¦\040FQÎˆ½C¡`\à?\0µ\nˆ¶\à»hg8ô#DZ^ò¹Þ‘\é…D\íHvn¦¾‚}ûÙ€†\ÜL6¾´b\Ã\0QÈ´h±F\0€£A¾\ÚGe{S>nýJj¾ú\Ðû\Zµv‹Õ¬–-µ/ô‡»Yfˆ·	uü`\Ãy$BxjMD0lu“½C\è¼\Ò{žšS9e\×q®sD\ÝDA’´FüW\Â\Ø\ä~G\Ð $ \0\å\Å+69u\Ã\à¶\î•;7˜¬\ïì•†´W:‹Ö€Ô‘¢\ÑgZr\Ô*\Ü<\Éò\ÄoÐ·k9R–‡ÖŒ·\Ã@•@\áÁË®7€ \0€\Å54» ^ND\âU´ ‘00“aË³¥q\ê»Ö—6L÷¨·T-óJ”¨&\ÙU˜t§\0¸:$”HBy«Pò	o“\0w£\Ó0,[¶;2ñÖš³ˆ\Ê\ÕÐ ¡t\n˜\Èÿ\0\Çò4 >$¤V\è[p\Í\Ð`–S8Šž\Zž\Ä\ÏX*0›ð†\Ëÿ\0M\Ø!r\0œž\áÎ„d\'¢\0À¶¢ \'\â§Þ¡X\ÓTv“\È\Òl|yx°ð\Ô\ë&ñ\'\Å^$\Õ¸4\í\È+H9½P‹[I¶\àý³S£\Æõˆ\r(\Ð9¯—¡D˜(J\Ê\ÂF\Ô`}Á\Þ+_Lq\Õö\Ù\ÕúÖž\Ø±7]]Z]½)\\•k\Zu\Å\Ë/\ÅMª	\Ý<™8£¨\ÅA_gþ›Q\ÎùP\'@v¨\Ãrû£ºhø!Ý¼J€H\ÜPj)¯\Â\ÉñP#Í—Š}4K«\\\æÁq\Ù(¨D»—í“š!Vƒ„K\'²\\óF<îœŽÓŠ_ò€·T\á„;—nÄ¼Q2\ì\ÄB^Âˆ[€7yœvŠ:-±XOO‰©\Ú3,%cjø“%X·€…±\Òož´’\"tž¤%Á>\Ù\Í\0\ÝlÛŽÝ¤ô§Ë„\í\Û ÿ\04_eˆ\Õ~‹µi\æC‡\Û\è>®ô\Å\È\Z\å7ÃòC­()#2ÀLœ]\á&…^¨Ú³CDlùšx-<G\ä\æ¡fVûnø<4\àô ²V(;²…5Ž4e\Ðn¦î°«¡»ÁM] VM–Wø4G\Â\r€°{n›P³E•˜\Å\Þ\ÎwqI\îŽ\Ú&z%%”›¬JðQ\r\Ú ;¯\ÕJ?\Õ6\Ù”PHöXR\É=\Ö\È_¹h0\0Q\ìˆÉƒ»\á«ö€­U”\Ýö]€¦_ú™_\îžù¨Þ“¸Á•Hù(s•»A=¯€\äG\'ZM%˜/.\Ñyi&”\á\ØE`\æŽ]hR(¸lª…4`¬\åVvl«BÌ¡³gC»/\à\Í,cpa\æƒOO\Äù\ZAžZˆ’M½u\r[\Óö\ÊC\Êø9­\ê°\0ø»/Ï¶^“\r\è†\Û\àx*õ‡†¡·:·õI–\ÙzH÷#²R]+wR\éBWK\ä)>\È ;Î¿Q¡pl6‘-ú?ŠU\Òað}\å4A¹º\'1A\r|N‹´þÁ;Euö\Û/Ax\è³x\Í[zr\ÛD\àö¡\È\Ð\rO`X\n9Ž«0bM\ÂA\Õ^(B\Æ\Î\é»O\êZs)W\ËBh˜\0¯\ÇjL…5.÷Y \Âx{²\èH’\ì^	¢šZp\Ó\å\ä¤dTÊ¬ª\îû#–€¿\ß\"\'r\ßÒ“54^\Ú\Ï3´1\áYÎ›öAþÅ¡©Á,5\ÐSM2ò\r\ÄÚ«ª²®ª\Óö\"%2\ÃFuž3Ô\Ãøñ\Æ%¾\Ù]pP­bd’M\á(_I#\Ô\Ï\Ìû£\È\å\ÕmEx‰G“\âu¥zžvv‡µ^½\ÐXÿ\0«®\rZ`BN€’±\nK<¦\ÍE0ŽZ]\Þ$\ÉMeoª\Îc\'\Þ\ÍIt·¶õl\îÓ†#»yTJ”pb	dx\rY3\ÇJ‰lÀ,#€\ËSj\'–\ãº_‹øD\Z{þŽ\rQ¤AI6.	À|´Ö«1D\Æ6\ÓZm(§\0e¿ø(vDÈ«ð\Í@™\ß=\Ð>hg5Ž\à\rÖ¢ø²<	gcÜ­¹Ÿ\Z \ç‡/LˆF€€j9h28´%°™»0lNµGH5\Í@_óX:³o{E\Ú `\Ø	#WgŒ\Â\ìª\Çm©ªñ¸n \é\ÂE\Óe«‘\é@’\Ïù\Ôü¨˜\×Ÿ4$¤\Üo\ÝOÜ§\ËE1“D<I¡\â]{§\ÓG60°ùá¨°\é»\Ø\r \ì T l\æny·\É\Ò\nR«\ÔÝ–ð[\\\ãf€0Cß¨	‰\ê\è¶«Q@nwý\Ø4œÖ´TM_ªW„x0\0*	:£ô«\Å\r\ì›\Ç*ñªSˆhú3¦\Ãô§JLÂ4l\Þ\"\Ï\Õ?	´c\à¨(\×S\Î\0¦(\ë\\0”ÀºQ,\0Ë¦Z8- \ÊúyY]´½EM°™9,)9[‘ðp/\ÖM=\Íga„p¦\Õk\Â\Ó÷\â¦\Üó\Ò\ï×­¡\Ú\Ûqlx<«^J‹MöŠ¡ù\"¢\äµ~\ÉK1+\ÂOQµBQƒ\Û òz»\Z=e\Í†E÷8tz²\Ý\"d)¿ögKzHYI¤—ÿ\0\ZpRYäœ½¤¹‘t\ïúöj\çú \ÕlU÷F$	\ß+\ÊÔ‹Ò©x\ÃØž_\à\Ç\Ï@ù;\Ò%\î‡ûF‹!(\ÈV\ï\Õ/´’£\Ò>\'\Z%¤±Á+qM\ZºÚˆƒCÀ”/¿üqÙ ’\Íz«<Sf>³q‰¹\é\ë}Še,‘fƒöÝ¥\Ç\ê€û¡\Ä¶\0_Á„\ä`r#>\rŽ¤’}\Ù/µ\Ø.\"õñ*ÖŒ4Yj\Ð-‹¥\ËRQyZ`‘`§\×71ß¢Ô½Õ]õG\à\"(ö\ÉðÖ†ùs\ëxù)1»,‡²óMmT¥NUs\è8R\Ý\Z°þŒ\Þ#–~(\'‹ ðoÚ°Qœ\â½egÀ\î\íL/ñÁ\Ñ69qX¨¬\í-ÙµnJÿ\0”0NI\î˜\èiü\ÇgvH\î\"Is\ÒDÇˆJ\Ãø\r8`Ž‹M8–>¤I\ìi“¶Vpas]\Óx´\Ü¶ÁÒ\ÕÁFöÀÿ\0gr\rk \ÄÁ$óQ¦Ne½×®\ç4	aŽ¡š\Îñ›8\'o\à­\è\Èa/u<?Z%A\0\\ NªŸC\×2Hwu\â§Œ\ê¶ùq¬\Ù\Ðß†®ë »Á-s)%rÚ¯Ác„KH›4–@ƒ\'TI~\×6ŒP:fNReN\ê¯à¸²$In‡£\Å(U\Ù\ä\rDøf™\0`o´\ny—#±B\Ï3R±¸t;;­$B \ä\ÃþX‚®Eªe7oüÖ™9\ê7>·£0(w\Zð§•RL…ž\æ\ç\è(þ7ÿ\Ù','Smiljkovic','examinee','js'),(14,'1997-02-18','nm@gmail.com',456279813,'Nikola','mn','062314896','Arandjelovac',_binary 'ÿ\Øÿ\à\0JFIF\0,,\0\0ÿ\Û\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿ\Û\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿ\Â\0,\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0µ\0\0\0\0\0\ê+~\É÷œž=:ª-~\ì!6\0\0\0\0\0\0\0\0\0\0\0\n¯«{:­µyb“\ê\0\0\0\0\0\0\0\0\0\0¦\ÜÖ¦\æc\0\0\0\0\0\0\0\0\0\0\0\0*«V›.@\0\0\0\0\0\0\0L;O ¡¾\ãoQN¬k#FøÏ‰3U´>˜¦V’ºŠ\ë™\Äi#\æIV|¹¾\ÕÚ©‘\È\ã¶u›H<ñ#\êGr12öÀ5pY1z‹xJy`ð&ûÿ\0<\Î8\0Uó\r¥Ì“–ÿ\0uc],oZþ;qp*˜\×	Mm±,N\ï¾:\ÐR\Ü\ã8\ë¯,…½i‹Æ³\Ô{:·Œs¦±¯t’a05{@\n†ô5PN·µÕŠ\0\0\0+\ËÏ†\Â\Û\Ò\îüU°\æ\È\0g,–«ö•o¿º÷³Æ¹\"\r+{²°»½P\0W\Ú¹¾²¡SP\0\0IJÚ\nûZÿ\0Op‚\é:±Ú®®\Þ\\®`•õñSzšùV•CoP\Û\î>C‘-\è\ï9z\èT²\Æ\Ø\0_>XšR\Ö\Í\0\0\0lÎ§\ë\ítv¾‚\\ôÏ¯«6±h‹Ó—\'1Ã™Ç—Fø\ë\Ä\ÉùÝ—«c÷QÏŽôe	\èm@2ªÏ£]\é±@\0\0\08y\ã\ÑUn}[ix›h4\ç\äP·—\Þ<eñ\ëª*%ñ˜µ‡Ü†t<•Ÿ•\ÔÆ›\ïÁ ¸üù\Ý\é ôZ·±v\Ç>MLd\åÇ­’Q÷8\0\0\rRYð˜´\äƒ\à^{³Î“ù\Í#Wk«w?ò6µ».w\ì|rp\á\Å\Éûó/¸:z×­n.E¯Ú‡?`ò¶i\íM\åNúzý;i5“×Š”Æ½œ¶w\Ä`\ÖN¨\Þò\íu\ØVÆš>Yr-\éÃ˜\0\Ã\ÌüS\Ñz­U–ñ_s\ä³:ª´9ŸEõ2	ñ•\Í7¼¹1²N\Ã[—\ns+\ÙU\ìôž\ì\îŒv0\0\ãL]0óH¯\Ì\î§U¢\Ø\È\0\0\0\Ï†ón­„·³\Å\Û\Öl\Ê;„y1«\ëºJ*\ìg¬¬µK1¸D½¸\ZSuOt\ë‰*\Ê\Ñ\Zƒ—\Ó]±\0\06ž|\Ë\ãŒ\Ü\Ùq¿…·žGw\Äþ\Å\îE•Šv¢\r‰o}Àš/]Jz.i—‰&\É\é\ÇZ\ã\Ý[Â¶±{€\n\Ö\Êtš\ØPbGº§4\ç¡xùÓ‘|\é*ý¹‡\â\ÜLö\êl<f<\æ\Î\Â\ÆC R\Ø3±¤Y¾jw_l/$ñ«®¯wH6\0\0\0\0\0\nª\Éóù/·p3À#4·£ôó`\×<¥Y\Ò;7^À\àN4™li\ï˜¶µ\Õ)\ê\í\ê\Ä\0\0\0\0\0‹÷\ï‰ø\0afÓ„^\Î\ÓZ\Å3ôw^4Ži«¾ª!¶\ÓÉ¹8\Ýó\ãÑ¡€\0\0\0\0\0\nfe¢\âZ`:*\ã:\×w}À\0\äŒQ\Ñ\ÏIÁInv`\0\0\0\0\0¬¢½®+NzoŒ\ê\ä–F\íŒL°\0\0\0\0\0\0\0ÿ\Ä\0+\0\0\0\0\0\0\0 0@!P\"#251ÿ\Ú\0\0ûžu›7wHÀµChCó\É\ßc\â\ÛÖº;ýœ“ø¥g^÷\ë\Åô\ÒWœÿ\0\09~¡È»n\×\ÃC‹/\íWË‹¹Mq\è þ\Ã~÷*þ\n$\ï\Ê¤€FNH¤f…‚\ïk\èv\ÍTñžJM\ä\É)šLžY\r¬«\ÂÅ¹)\ãˆ\Û(\ç\ÐRŒ1? Hy.O‡\'‡t­”o~ˆ“j\Ì5Êˆvª~œQÜ¥ \î\î¿Y«\Êý\àlT7V5…g|f1p™­A½\àªEPG6°7…ªL˜\Í2©–•]\á•Ú¬	 õ9†¸\ì9·…)X\"Ô!\Æ…\ã\'Ö›P\êN‚\æ^¾¼‚2R\Ü%\Ç\É„U®«_Hn¡\r\ä\è«\å‡\ã –:\ÌK‘ž²|¯š®žFÐ…\0\ÃÈ‰!iM±j¹\â tš‹åµ¨‹®\Ò\ÖP™œIÓV\Ö@uy(\Õ#_.»£K Ï0)\×PD&ðœµY»GY\ß_Uõo§),6ƒWwN0‰›b¢”iùòñöo‡Oü_O+w\Ð:T¾[>vIÚ‹oz]7®úµSá¶¸HÉªkG^>c/òð\í~\ßFÿ\0mX1ò¨[\ã#\çh?j\Ã)\Ûùjt\ä@÷\ã§ö-~ŽNov×‰‹\Ñ]ô]Ù«¯¼\ï\Ñ\ÉU\ï\ã¦ö\ß\è\Ä=\Ð[#¾úòd\Ñ]y\Êl ie>ŽU¾\Õ\\z=\ìúr6\È-\×Û™yŽq$:\Î:œm+fœ\é!¹\Ùõ?\ìU?u|¹c¿·O\ß{\é\åz\ïW\Çw\ÚÏ§(÷gs\ÒO\rþú\Ô\rL\Ò\ÞÕ¹o}µ/\îc\è“EYl­3Vž‘O\é¾»SV_fÃ¥’\ß-=\ëzØ‰±õG¯¹t£”\åk?ó-\ìW\Öß°ñ1 \Û\ØJÁž1[\è\×\Õ8\êQh;Yš\æ>R}.\êöMö\ßu£¸/›\ßmXÜˆ1¢œ§m×’³\ê-`M\ÅZP\êR@Cºµ“ä ©ùs\×\Ù\Ë»@\ï\Ç?]Œ~½ž9\ß\Ö;m;\çJC\ëb\ÜSZs\Ù\'È“\ÖÊ±ª¹}úµ\éf\Ñ5\ãkfk	¡¥¶p\ÝWzB\Ú\çú]¸M\\k’xw\Û>@s&\Ê‡),ý\Íd·\éŒ\ç¹\ìbÜ³Z\í­\ë[Ö€\ï£lP¾\Ü\Ü83–®º	Aµ\Ü,«ˆ”¶I\ÊI“j4v\Ï\Ð,0”\Ï\Ã\n‡j\Ú8¶Wò!5½K]l¬€„l-\ÙsE‡6¯\Ö/R3Z\ÔubŸ]\äÌ‘\ën¶<q\ê×“ö\à[\Zd­5\n\Ùk\ÑC\èHD³WJ7\Å\ì{øJ:–œ£MŒ²ªa§¶\"\"Q\å\åÎ”\È\ÄÍ±YÇ†<Œux4°š•\×À˜«‘{\ãG|¬³õ”²W‰\ë\r\È1«Y\é_NS\à5\Ç\Ö\ÅÈ¤¹\'\"sÈƒ\ZmO	kRýoÁ?s¶¯,> [fª¸U\áú¯Y¼cŒ\Ç^J3\Õ:–YÄ«S\Å\æÆ˜œh›§c¸üyOoÒ—\Ù#;ö~MŸKAS\ë|žë ¡\Ô\Å\nõ‹¢²þVV‚O9/^/?E·$±\Óf\â©{›–ý[^:€>¹°ÿ\0\Ó\Ä\æaw2ø…?MMýŽ®Yª¦Z]™\ÍUWÀ«†…ðüw)Z\Óuÿ\0SmA¶æ¬½kuœ\ã»{c+ð¦«\Û\äR\Ô+RfJ3ýJ\Ö½,=ƒgÅ•;;¯\ã˜!ÀC\ÎQ_²FªÀ•\çIÀ¸/¢\Þ\Ðuðeƒ8vW*Ó¡>§[6×†\á(c7ò\Þ0ÁX—EFÉšýµ\É\Í\ê5Llý2‡OX\n„CšÖµ¯Šû„Ê©”ä…†ù\äX™\îC6aG	f°ü‰8c<‘‰\æöV˜¥¨‚Q\å\ËzƒôS1+)\â„ž‡&¨W\âWý. »škŒ\ï\rLø²k\Z\é\Þhr\Þ\r‰’§la\Î?WñŒ,Å¦£>:\Öå´©\n\\UQ+œ‘Ÿ@8\â)ÿ\0Á\åNú\Í\Æù\ëwY§\ÂA\ÈD\èº,±Š\ÐoP\n\ë«\'\Z\â°gmµ\Æ\Öö+?\Ã\ée\È\Ã­ð´«ðyY¦\ÊmMY­|\à	õ\Ö\Â\Ä)\é\Æ\Ê\Ùu®û}ü\\B|]z\Ë\Å\Æ ª\Æ!\ZgúpUª… Y6 –=xR\æ÷\ßx·\î\Ï\àò\Ùú¬8€û)\ãÈ¬¾Yø½¸^“„g¦)63\Æe¬jµµz¯¾\ÇüSÿ\0[‰ÿ\0\Ëð\ä7T„\ßd#€E\äõ:\å•CôHñe_À\æ\ì^$Ö ^…,;‹\ÙUÈ•\ã\" ’_\è\ß\ïŽñÐ˜\Ê/Wü\"\ê‡	“anF\È\ànJÄ´\ÓGju”Gg\\J‡ó\\LB\á!¦z”†\ÙS«QMþ7ÿ\Ä\0#\0\0\0\0\0\0\0\0\0\00 1A!@PQÿ\Ú\0?\ïL`ˆÂ\ÑG\çªn„WeAŒÎŒ8Œ®}±›q\ÕV\â ^\ÆPÑ–¹1­\Í\Ä\rÌ‹c|\èr\0k\\‰\îbñ<K\çL‚Œ\Ä}j»Gkù\äF±wLxˆŽ\Û`%›L­\ë‘Z¢¸0\äô5l•\â*–›ETt\Û\Çpd3ªe³E\ÅýÐšŽÛ¹B,´g\ËhG aP¸²“\ãT\Ç\ìÌ‡\çœb\ã¯1y•V	¨\ï»\è\"O\åÿ\0ÿ\Ä\0-\0\0\0\0\0\0\0\0\0!01 \"2Aa#@PQR‘ÿ\Ú\0?ñ\Ü.o2þ„vÃœ\Ö\Âÿ\0¿‚ôF_9pP\0\×L¸\"&»\Ôw\Ó!\Z\Ñ\àR‚FM;xŽ\Þ\Ãzÿ\0<õ¦¯\Ü\Ø\íIPX\Êz3\í\â^pja¾X\ã&J##Z\ê\\\ç$Ÿ7oY®FVSÚ£ID”kGR\ç(\È{\àx	™\âžh²²…{U¦O%\í\'±\é\É^†T¯Ž\rÚužjh‚D\à¤òW\ÜU\í#žþR	J¤œŽ”¤\ëeIø\ág|8ÆqW¨\á¿‚{TU\Ãe×Ž¥S\Ï}lŠ\Æ)ŽñÆ¢\É\\e\ëEJ\å\Ä\0\Ú;TH?P²…+§˜fe\Üð²\Ä*W9]…dg9QQ)\ZUO\Â\\UýÁµ;y\Â9qÓŠ\Ôsš*Rû\ÔR\Þ:œ\Ù5.kP‘¡ÿ\0”©N©\Îi;Õ²\ãõ#BýC¦@PÁ§-Qœö\Å$š\â\Ä\Z°K½g\Ê\Çý¥(¨\åT\ÛjqZSVø\"*7õ«—9$Ÿ5-\Å8r£ž`»$ùF\ÕqF\Ýø6\ê\\ÎŸn£ñ\ÖR@¦­²ìšeB7wzJBF•\ÓG\Úg½Z›(Ž	÷\ë½%¶Vjm\ÝOy\Z\ØTV‡B))	U–¦Mš´é¥­K9Q¦š[ªÒV\ëpŠ5+\ÕøÁa\ßRi˜\í°0\Øý_ÿ\Ä\0@\0\n\0\0\0\0\0!\"1AQ #02BRaq3br‚‘¡±@PÁ\Ñ$S’4s¢ðCƒ\áÿ\Ú\0\0?\é›\r‚lˆWY¯\âk/‰\ç\Ãõ£„\Æzu\Ôwþ€\Ù:\íX…>“7\Ç\Ö%oú\n\âðn5ºž5“øa\ÆùŸµ~?nÊ~ “® \Í\íß·\èR\Ê:Ú—Î¸\ÃÖ˜\å{¿B\Ãa—n—\ì*8\×R-¿B…6+ ýÿ\0C\Ê?ß·\íùc$¬²jÊ²°\Þs¤5©\ÌGCid\Ó\î.sV\ÃBª7¾z2“¦[*\ã}iO)ø\ÍfšAñš\Ñ\Ä\Éñg«b\"Iõ\Ìh“&N\ã\æ=T®¨»\ØÖyOª+G\n\Þ÷­<3&½d\Ç%ŸºÙ&\n›.kùš\È¡ñarj<^B\ÇV\ãH\Ï:+r»«ý@÷)¯Oÿ\0\\\Þ&#ñp™&p¨6\ÑL5\â‹h\ÖL(\Î\Õ|L¶õR½W´oZ0D>Y\áŒü\"½\0_g5_\r/\ÂõiÐ¯Ž\Ê	=\æ‡Ç¬(KC\È2L\ám4S¹#ûüU\äg‘\Îüõ~+‹\ä6­<J%®nx\Û\ÌZ²q”;<ipØ¶¸9‘\Ï\Øò \ÆZ\èmô¡$M”¦„\Óc{n\0\Äa\ã2\ä\é]ký,u\èr|˜\×34‹\íiVT.\æ1¶#ûU±J%]\ã1¬¹M”uS`¡.*\ë\Å\Úh$JFÁ\Ë+\"†S°Ñ—vM©´V\\GG´»\Z–hN‰úp[¯1Ôƒ÷¬¹\Úû†ÁAñ†-Ý£V‚0{o!¢™n¦¤…õ©×¾£‘º\ãE¼øZ)—)\r\Âb¬§}ÁúP›\'\ã=¶rK1²Œ\äÔ’ÄœÀ}\èbq\ØS÷\è\Î&›¶£\ïZG˜|\Î?z\â\à!±{–¬¹R\Ì\ç\çBI­&#\è¾\\¸$\ï%¾U‰M\ÌD¸D9\ßIü«LsI¼|:	2%tUk(SBM¸\Ã\Õmü6:©z3|©cˆe;Vm)›¬ý|\Ö(û#\ï\ÑM1\Ô\Ç7•\"ž»i7A:ú\×\à½\"h·:\Ñûª-\Òh…”jB\Ñ\î9=!Æ¼›|\êö\èW£V‹ðdl[†D=¥\"‘ö©½Ë’Wê ½9ä‘¾¦¢„v\Ý	ñp)<ž¡‰Š‚2¨	˜\ËŽ±J\èn§8<‚¬.§1Yn\ÐM»Î¡\Éìœ£È“\Ì\Ô>Àûr\×‡\Ö\ØW\ÃBþþ‹\ÊAKâ§†	vg^†s¢\Ù\ÓÏ“ž‰DT¿tk¬Ùª÷6«\î£\âip”Ò¾½J7š¹Ó–FùšH‡[[\ç¢\Ä¬¯•@û2­\Âñöµ¯X\æ\"’EÖ¦ôj\"üŽ/(q–¾M\\\Z\Ò\ÏÁ3m#${\ë\Â\âþ\\¦’F\ÉE\ÎI¬­Q.dZüd\ÃHú1á¿£*ÚŽj’­\Z\Õ›mfó\á8Œ0»v\×[n«TJuªÁsªŠaˆ’]ûrK\×\'˜u9“I¼\èËˆ\rÕ° j¬¬<Š\ãÃ\Ï#E\ÖMd%\×º†ÿ\0By\Çô\ë¨w\ÏñÒ¦%¹\Ñq‘®*C\Í\Éô<Ž0¢ew­ž·Ö\É\'Qµ[\ìË°öObe¸²÷\á2¶¥\Í3¹»rh*\ÌuY²\â•}Æ„XüÛ¥½^\â\Ûè–	•75¥£\ê¥v\rŠ/•AVP€f\0©\Ì\Íù7BA“-û©ž­‡c\Îs\\\î\"B7^Â´œø\Ð\ã£t¾¬¡j\\> óš•Ž\Þk=g\Ì8,E\Å\\E>\È\á2Jl>õ\Æ>a\Ù]\Ô#‰r˜\ÕÎ”\Ç[“2\ßq\Ú*\çJ#©\è!v(5-ó\n\æ°ò0\Þ½¼\ØW£OóŸ\Ç\Ù \×;¡õ…«›™Š÷[8 ˜µâ›½Ù«ƒq\È\ç\r\äØƒ]•\Å\Å\ÜJþž\"Ã½¨UñS|1ÿ\05¡‡Bw¶z°\ÅË¯²\ÛT\×0òm†„x»²\ì}¢²£et;«0¢±ó²\î\Z…e\Ì\×?jÈˆy‚¬™\Øõ›	I\0e:\Å4J\ÙK¬W\à\æ?\íŸÛ‘f4J§û\Óø¬¦Ó‹¾¿½{¾\ë]\ÞT¯\ÊFppö8§¹VR\Ì\ç\Þh>7œ~\çd5e\0°rLs e¢øk\Í\îÐ«\Ä\ì\áVš5“\Äf5¦²\'ºõ\éOøš\Ìdo%®f{š´’ž\ê\æ\ç¼Q}M\âPª9\Û;ª\ï4\Î\æ\ì\Æ\äÒº2›ƒQL½¡õ\ä\Â\à\ì ñz	5z§uI†‘³\r5ý\ëG\Ó>dþh\"]\åsV\\ò³\ï\èyø”žö£W\Ã\ÎGƒ‹\Ó\Â\ì¬Ë¬¯ ¼\\}æ«…Ë“¾Üœ¹O’\í4d”ù\r\Ü3\á\Ïd\åŽQ¾¼µµs]kT\Èô¿Ãœ—W‚ô˜‰7¹¤gœŒ¡{­9%o¥sQ(;õžQUÓ›»»ÎŒ“6SrwÔŽP†x£\Û\Þ5,ò-Ó¨´I\Öj5\Z‚\Ò5/—+.g\n¾4StNö\Ó\É\Äb¤`|õ\Ö\Ìý¹\ì£+º¹\Í\ã\æ¡Ý´ùÕ—F!\Ö}Ô‘D,Š,*xeÊ¢n\Ð-\ç\Ñ\å\Î\áGÞ›\'UÍª&ÞƒY\Ø*\ï4W\n2Û¼uV\\\ÎXòDÓŽg`\ïVH\í0“ —a¯CÖ´x¤òZ\çqºöh\"gòÿ\0ú\Óù ‘¨T\Z€\àü\\\"\ì¢\Î<7\ÖR\éFzË¾²\à{\ïGCn¼çªŸ\Íe\Ì\Å\Ü\êÿ\0\å2Œ«R†\"ñœšÒž!ñW¥\ËöE[\rO¬ù\êóH\Ï\ç\Êb…“bo¬\Õ#²2¾¥y\ÑT\Ød×§—\éZM3|U£‡Bw¶z°“6y\ÅüUÐ¼R¯¸Õ±Q‰=e\Ìk<†3\ëŠ\Ð\ÄD~!]uùÖ”ˆ>*\Ò\Ä\Å\îk\×7\ÆJ|ª\ÐF‘\r\çH\Ö|©&ü\èI-Ÿ¿»\åQbW±¢\Þ]H”³‚„˜›<»ÁÀ\Îù•E\Í<­­\ÍE\ëZ\í\ç\Ñsñ‚{\ÛjøYþ?šô½ƒzÓ‚Aæ†º§\åYŸ†´0\Ó†šY\ÕbE\Éf\à\ã¦\Ô8ÿ\0ÀñI\\X\Ó\Ã&µúøò¬¢\çp Øži7v«&÷<+\ë“9ò \Ì9¸´ž\Ï\É\"\Îþuø‰G7\Í\âÜ‹­„\é\Õ;ü)’E*\ë¬j#~¡W\Ä\Ëð§ó\\\Ìa|vò’¶JŠima¨\rÂö¥\Ó?‘–fÔ‚õÞ–Fù“QÂ‘ó\ä\éh\Ê58¦†B¥†\ê\Ê@‡\Ú[Õ§FŒ\ï\Ås2£ùE›J]ˆ+.S\ä6\n¶üÔ¨5(·\äc„\äkŸ!YgTC+\ß\Êy¤ê¨¦vÒ’F¨ÁfIÀ\Òa¨š\æ\ÂÌ¾®º´¨Ñ·¬-Z1›=sðƒâ†Š\á‡»ûUs¯‚l}ÿ\0%\Zwc©¤\ï=¾\\®&#\ÌF\È\×\â\ä\Z	\Ôñ<6u7\Zô\\YÞ†\Õ|4\àø8®v\É\ï\ã†#ë¿ä°´\Ü<–\Â\á[Á\Ü}¨\"\æŒu\Ûp¥Ž1’Š,,’œ\\\ä\ÍE½$=õýø#™50üŒ\ì# Ô˜g=}%ó\á/+A´Ñ‡uk\í5‘\Ì:Í±hEÍ´\ï\è²\à“‰Z\Ú\ã\ÝI}T‘x[5õÆŠH\nHŸö\â‚\Í\ZK\ã¨Õ¢Š4ñ9\ë+#9\Ùzˆ¼0ÿ\0\ÈÐŽ\nƒó\Ù8ˆ\Ãn;Eˆ¹µ¸­^(†_y³Ÿ\Ëÿ\0ÿ\Ä\0*\0\0\0\0\0\0\0\0\0!1AQaq‘¡ 0±Á\Ñð@P\áñÿ\Ú\0\0?!õ›\ê‘X¦›Tz7 •\ÊUe\É\'!Ž#¹ýG¤­®\ï\Ïbÿ\0Ž\ì{B{\ì!Œñ#1®Y2\'’i\î(–¨\È\è`Û±¡Á=f™‚uþ†da\ç\ì}Ö£Ôº,|¼ÿ\0¢\ÄE(\Ýÿ\0JÁ\nGôReú$þŒ2ÖŸ\Åüc²¨\nØ‡P\î\Í-»p}£>7ðL¹\Ó\î­r\èT2\ìb™§eþ\ÊV^\Û\ì¦	A’zdüeJK_\àdòô\í€)ôä«*ø\Ø>)\â;SúPy>\Ò×—–l½\Ç\"‚\r‹ó¥|ˆY[\êpŠ »Cu¥gñJE¼~ºJ\ÒÑ¡FO{Ê½¸Ó¹wör\åKq!L¸´0\r¤½Z+?Vÿ\0PD\ÇªJU«}´0§ƒò}V×¾%Á¥—wEÏƒY¢P\ËgGÉB™\ÈHnðûVG\í%rÿ\0(\ëÿ\0\ZIr\Þ~iÎ÷ y\È\Ä\àje\ïJ\ãø¿ž\î\\q(­\n\ÉQ\0f\ê8:¢™oz\Æy$Q¶{óD3:\0|4S‹D¡Æ ´7ÿ\0’\ä\ÙûÞ¥Q\Ümô•…G‚<ø¹$h…\rñ8:”rb\Çl}\ïR@\ÅVc¿„e}\ßAS\Îò\íÁ(e¢\ä;s­Hò»\âù7^:›\Òõ–\ÐÉ¥i7Ÿ‡\Äûu#©½=»\Íf©€(¬\Ýò„\â\ÈÈ«zô\"wn\Ñ\Éf>ùñé‰Ç”\ÙóFf“a§%\\;Sˆ¹»\èT.‘j­Z;>\'ðü\æAv\\\ß\í\"\ÖÁó#\ã\Ò\Ûj:Noµ\\\äçŒ¨[\Îø\æŠ\0Zø±‚mwñD#Dœ\ß\ÙÊ» >ö¨\ä…ŽÆ‡ x\ï\n\Ûs\è„\"°\ì®xŽ\Õ 9\Ï× ­–˜\à\Ü÷¡†K5>gœ\èóñ8¯pYø¨\Â\ãs°\îŒ”ži\Å÷©\\„¾E^D§Ÿ4-–sÀ»\í\è®li“ñ\à\×w\ï‰s\ç\ÄpY(\Ùaô´`“\ç`\á.±\Õ+\0P\ãsô\\\Ç\î~*lÿ\0•þøµ+…¼\Ó¸Šwâ™\àfyñdfQp‡Ô¤V‘@<LJL}§!\Å^\Ï>j˜ñ¿Jû¡}=+Ž§Ü¨Æ·‹\ÂÈ¾\çÏƒb¡6YŽ~P q\Z\Ì\Ã!) »QÁ\Æ2\ã@\Ë4\Ö\æ\ÏZÿ\0“\á\æ¼pö1N¦É³**žd\ã\é1\é‚æŸŠ˜pmó\ã\ï¶aL…D#•40cÊƒ¡\Ï\ÈÆ¿b¯\Z\ÔdFôk®\n\0@AWš9\ÒÊŽICw\Û\Ì$ \Ñ\Í\à\È\ÕÝ¥6\æ_f^˜9&£j·j§\ìôŠ){øŒ\Ý[Ž;ÔŒ\ÝÉ¬T\é\Ä<+XBo÷\Ó}Ym\ä?y\È÷¦\ÅÍ«±Z\ÕJ\ç\Èi’U`«\Ù-÷øµ4f—:Ac\Ô&\áõÀ\íÒ\â>./Çö\'1î ¶ž\n“°‹’‡…*vm½ªJY^3ñCª¿3*jC6œyÀ%jN¸€Q\Å\0ƒ“.5²™º\ÑF\é°M´šZE·V¯\ÐU«e°(§\ÚJŒ–r%\é\è«\rï¹¸-ù\æÊ§\'ñ\n\æ(t`ªd,Š8Llýü\r\n’>-5@ÁL„™$•¾x&ñƒ€b´)u’Á¥•ƒ\n³#pö\ÙQ—¡·¬NkGgF­Û”|‚‹-3\×\n\"z;\æš+ñ h\×<\é£$có4œ‡h]|”d\ÈHŸ&-\âq\ï£z}efDñqj™p<\ê µÐŽïªƒ€\åÏ½F€E8(`§P\ÜKR„\ì7\âkB3 ¤¬%ró“Q\ê?T\ÃM\r¯\'ø;\Ô\Ï8ý\r¼O\É\ÂgE\îP\é±X%»ý|ˆ@˜‚J6@\Û9\à§2pŽ©¨KwÒ‚.@	\á2”j\ëjˆ<`”lx÷?\nhÀ@y[£\×\ÔriÈ‡±Ÿ*@OfQÔ¡Á_‹*\å\Ã\ì¡L\Z‰üõm/~0}\ÑhOðg\à\îdC\Û2¬²lg\ÇW\ÉV_¢\Ô\á·À\Ôk³L•f¢t\Ó1\×\Ê)\n$h„·#\ÔúU·U\Âö{=h%cbr×’…|D½U¨Fñ}›ˆ|³Ì§®÷Â¡(&	ò^É‰\àcQ‘×‘—•mÃ…‹·\Ý^i€`t<f³\Ü:ù‹|.f~¦”³\Ø\Ò\ÔðYN–=\æ¸\ãnG\\zz’½,XPm&\Ó|†JDº\ç\î>b!i›~2¦ÀCCÈ²ö_¤üyV*Y\îS‡\ÒQGÁs6eø¦]q^u€8G¦\áWÉ«B\Â\Þdùªˆx%ö´¥–\\|‹ \Ý!4\Óò‰?ò~\è±^\Èm\îø(H©Ã¶\ÃV­Ñ¢œTB;Ž\ÔmAú}7Ywª\Ð3¤Œ¦’\Òj?\Îöò)ŠA](\ìð3­6œ\àp2ò¢ \ÝmV\\C†…þ*f{7\"˜­ùq¬Q\Ìý\Ú=\ä\ì\n\ã·\Ø\æ\áW@s“\ß\éB¿`p­Ib\ä\ä­™ð}\Ðs\Êe\è\á\Ðq;\è*A>›\nV…Œ46Hr\Æ\çf½›4	h\íM€jK¦.\ÆR±À\Ã\Í#x­Ž÷B€\0\0°Tª\Æ\â`\ìw¡l…Ø—TO~ŸÒ»ÈƒØ¤\Æ\ç½\Z`‘$½8\Õ\ï…ûµa\ÊXÙ£‚ÿ\0˜\ÃÚ‚\á¥;\áEO¨|:\n3«\nöŽ{*L\ä«S?ªN¸¡T=¤\à\Ùö¥!u\Îa\ß\ß\ÑÀ\ËÁO\ÆW\Åû\ß¢A6(ocØ¨)š\Ýô ùxXó ¨C\áõH\\ú‡û¦£õÌª,Šb=²kß¢\ê¸ô&þzpô¸\ë\àSJ\ÔC\Þ\ÇF\\\Þc,\\V§‡R¾ªŒ\ÜxŒþöŸ\Û\íW#ç—¯9uqg”\ä{Ð¬\Ûkú·×¼-w&­©£$b	&s¸Ò Aøº¡gsò®©t7¥zhS@ù\ë\ßÁ\Ä\Ä\Ã]\n\\\×S„4K«7¯–LbA®l\êT9…—\"8V\ïø]Ø•\rùÎ¥\ÛÎ˜ù¦±¿=+/<>\ÍAWu—ðQ%ÿ\0!ºQA\Ëù–>|Î®*5r*A¥ \ÕÀ=ª)c*s~*Y\Ü\èj&¢¨NÏ½6šM]\×\Õ#\"««Ÿ€\æ=”Lª¿EkŸF?\ß64ñ\Z¼\nltAy¯/\î¹2Tû{ÿ\0\n\àM\Üú©¦3þ±ã±‹\ÙGðBKœ]\é’öò„b\×NÏšŸ+\ß\Íw*pC#\Îd‰¼\æ`\ÔòlpeBŒ˜—)T‘¼Î¿ÁQ”Ü¹\î\Ôr3ù‚\çOoh°ðRŠ»aðô;\Ðø\Ø\ÉcöUÁt\Å\êú ’9T®:\ßù1ö„\â\ïün\Í;˜£HD¨@:\æ\ã•1[¨³ÚdQX\àaL“s¢eÅ¬±¨g»«ü\ã¤MŽ[¹H~)y‡0|Q(gý·_\Çÿ\Ú\0\0\0\0\0\0ó\Ï<ó\Ï\ç\Ï<ó\Ï<ó\Ï<ó\Ï<ðK¼ó\Ï<ó\Ï<ó\Ï<ó\Ëó\Ï<ó\Ï<ó\Ï<ó\Ï<\ç<ó\Ï<ó\Ï<u¿4ó\â.“\r<ð’}óÆ‡3•\Ú#C£Y\\ò\Õ<ó\Ï5\è žEó\Ï)\×\Ï<ó\èI#/<òW<ó\ÏÒ‚T|Áó\Ìuó\Ï<óxVG‚½¯9‡O<ó\ÝY\Þ5£\ÙJ@\Ö[a}ó\Ë+ZŠF5ó\ÃL7\Ï<ó\Çòˆ#™\ß8D\Å|ó\Ï8\ÊP\Ù¶×Ÿ<3i\Æ2\0\0}Ñ¿<ó\Ï<ðÀtð—{€$œó\Ï<ó\Ï<7\Ï(µû\rO<ó\Ï<ó\Ã|ñW<ð\Í|ó\Ï<ó\Ï<\'À\\ó\Ï<ó\Ï<ó\Ïÿ\Ä\0!\0\0\0\0\0\0\0\0\0\0 !10AQ@Pqaÿ\Ú\0?\Î\æ\Ëðu£öþ¹ö#ºp¨ùo°1Fœ*jW=)¸\â\â: \ZÀM\ÄtÀ—É‘?¥wY7#M‚Ðƒ|0Ó¨\ÛYS¶Nƒ\Æ÷ì¼·\n{›‡lÞ¤y#‘?µ\0SSq=`\ëâ’±=ñQÆ§R\ã»8ºJj;\î\0uN\Ñ[`\Z\'x\ê\\¹r¸¸÷\Â\êOt€h€-–¿\ÈòJŽD¤jCŽ\Â!¾7yFg¶š[\Û\Å\ß	d\ê^r¥Jb\íö´VøNF\î?\ÝÀ\n gH\ë\Å\ë—:+k\ãõ\à¿\Åù?ÿ\Ä\0)\0\0\0\0\0\0\0\0\0!1AQ0aq±Á\á P‘¡\Ñ@ðÿ\Ú\0?ú\ÛTQ¦rÿ\0*ƒþR\Z\n·4ZA¹OÐ™h#\n/§öb\ç®\är\Õu\Ëõ5ŽÜšö‡¤—ªõ\â\Å;»K:­ŸE\Ù\ê4a\îl\í\ÌP‘\îñ3\ÆI™„Í©G\Ñó£\Ëb³¤[nb\ÜB:\nNZ²:›x…\ÌP‚$¡yN6jô‰P…´|i\r<3÷8%e\Ã!.Ž5\Ó˜ \×),¦\rCù\â	N\æ\äoõ›¼©G¡\Ï\ÄÉ°«sW…&\Ø\êüMg[œý˜ù™\'´\Ê\Çx¥®1\Ìk¨Ád`\Ãgyr=q(ú›œº\ÃdbñºañÚ¯?Ý¡«‹\âý£„««Øš\Ö;Y¬™·1h¸DT·*—Äº·Â…V¥\Ê`¼\ßû.V¯<¶?v—\"5ˆ¸FÆ¾\Ú|ÀGA2‚½NÝºúL\âRþy”qªó\×ñ{ž¯òõq\í¬”sZ¢Ý®¥\îs\ÞRÿ\0—¬ye‚µø:ô\æW\Þ\æ\êaû\êùû_ÿ\Ä\0*\0\0\0\0\0\0!1AQaq‘ ¡±0Á@\Ñð\áPñÿ\Ú\0\0?ü­>i\"\n€o}›LÍ…ZXõ\ë[¢\àzû\ÒdKÿ\0=\ê€\ßR>b 4$“Á_©\éaÀMJ9\ëSù\í;	@Nau\è\Ñy)°—ø‚i\Ì%˜	%õ´üö§†\âPË«\èW\×\Õüÿ\0\à\ÂÑž\×\é%\ì«¹*r=cÿ\05\Êd\Õ>Æ¡€@\Ûúÿ\0Áh\ÛG\'\å£ø.+Li^õPÚ¦§øvýzB“± r¼³ud\ä“ð\Æ&0ù ¬j—\æ\Ðyi\ç\Ü„b÷µ)Jººœ¹ƒ4HÅ€ñƒKÊ¾6W\Åif!3·\ìÀD~C\æZ$«¿\ì¼Mš	sÀ¾\è_ª;\'ÚVµž%n\ãYö3wFff°Û«V(\à\ì\ÕM^\"ŒB”\\b¿t\Ó÷\n\àTFJý\ËjOWu!æƒ”p\Òð4`	qB\×9tU ^š—L,#.\çJ\\I„’ZµŽ«SO.‹ \Úð4\Z\Ó×¾\'\éG€U.\éý*.U\Ö”|S…’ßº†š-\â\ÇfÏ™¡\Éb>\çD«\0D°­C!³\ì\ÑˆN\Æ\îÁz§Íˆ\ë.…{BgÀÓ  \à\Ñˆ;H(ú¢§\îM»±º\Ä-N\ÏfMb¦°‰Ö5\nó¸z$±\ÌKº\Ä\è\íSò\æ8MQ¢pf³\"\È\ÒXôôRQœd˜\íXm\×ú5\0ou}ŠB…\Û\é’¯L¡X¼¥\Ï	Xo´G\Ì|Pu©s\íKu®®*\Èdz+­\åâ´Š£:»¼³\ï?»vºÀ¾\ÃU\ä6\É\ÍN\Z„0tv\Zhä’¢3\"ÀøZõ£\égó8Oû:A\Èti\ÓK­\×U¨G\",øV<\Ý\Å‚\à\Ý\ë~\Ø\âƒÔ¼&\Ü&\Ðh\Ó\Îa…¥¹\í\">jq\Þ[^\ç“\×50	8kDX6R!¼9\ÇQ…RÁƒ†c\ëš0*»AYNd´\Ôce Þ°U“C\Ûc\×o\Æä‚·m÷¦”E¤M\å}\ÉØ§\æJM%\î6\ÈAKº#€Ý€6(‹\Æ\"_`\ç–ûF¸÷q\Õ^Ñ«*2\ÚuõüMª\ànô\ã•ºøO²\àw \0\0\0l{²†ô¦!\ÊÂ«V\Ó\í\à\Ú\á\ëŸFö $D\Ù\Å:$3¯s«u\'Š»ö\Ël«@\\D!\Ýô\×¹x÷óŽˆŸM6\ì. ¿g\á\ÂUt)¸+„øZ™\'X\äˆ;>ù‹Ò’:žýDAD\ÄS¨\ÜQð¾G\Öú$ž³ö\íIUú3F=\íŒc/˜©‘˜~h\ÅLò’8$ó}\nöœ”MmþŠ÷‡R‹4Š~¶ýD\éŠu\æ)\ÙG’T¡Éƒ\Ã~\\ˆb`°r°h\î_b\í€;¡Q%.M\î\ì½ÿ\0\n…]% L7[=IE&\éAx²\Óì€Š{«±¹‡Š\n\ßVDö50ƒ\"HM‚K?o‡¬\Ó\â\0W•\ê¡Þ‹—u¨ðb(\\¸_xE\ÅI`.[Ž7R_F,&=‰\ì¡ø\\Afú?\Ù@ŽŸ\Ö\ë\Ô\å*ofO4øz6f\èb$xœœûF#@$M“S2¶\"¹‚ôº>»¿\ÕW)\"-©ß„7`%ú£}\Är¦>\êT!ðú÷-\á.a\\jºÐ‰‹¦\040FQÎˆ½C¡`\à?\0µ\nˆ¶\à»hg8ô#DZ^ò¹Þ‘\é…D\íHvn¦¾‚}ûÙ€†\ÜL6¾´b\Ã\0QÈ´h±F\0€£A¾\ÚGe{S>nýJj¾ú\Ðû\Zµv‹Õ¬–-µ/ô‡»Yfˆ·	uü`\Ãy$BxjMD0lu“½C\è¼\Ò{žšS9e\×q®sD\ÝDA’´FüW\Â\Ø\ä~G\Ð $ \0\å\Å+69u\Ã\à¶\î•;7˜¬\ïì•†´W:‹Ö€Ô‘¢\ÑgZr\Ô*\Ü<\Éò\ÄoÐ·k9R–‡ÖŒ·\Ã@•@\áÁË®7€ \0€\Å54» ^ND\âU´ ‘00“aË³¥q\ê»Ö—6L÷¨·T-óJ”¨&\ÙU˜t§\0¸:$”HBy«Pò	o“\0w£\Ó0,[¶;2ñÖš³ˆ\Ê\ÕÐ ¡t\n˜\Èÿ\0\Çò4 >$¤V\è[p\Í\Ð`–S8Šž\Zž\Ä\ÏX*0›ð†\Ëÿ\0M\Ø!r\0œž\áÎ„d\'¢\0À¶¢ \'\â§Þ¡X\ÓTv“\È\Òl|yx°ð\Ô\ë&ñ\'\Å^$\Õ¸4\í\È+H9½P‹[I¶\àý³S£\Æõˆ\r(\Ð9¯—¡D˜(J\Ê\ÂF\Ô`}Á\Þ+_Lq\Õö\Ù\ÕúÖž\Ø±7]]Z]½)\\•k\Zu\Å\Ë/\ÅMª	\Ý<™8£¨\ÅA_gþ›Q\ÎùP\'@v¨\Ãrû£ºhø!Ý¼J€H\ÜPj)¯\Â\ÉñP#Í—Š}4K«\\\æÁq\Ù(¨D»—í“š!Vƒ„K\'²\\óF<îœŽÓŠ_ò€·T\á„;—nÄ¼Q2\ì\ÄB^Âˆ[€7yœvŠ:-±XOO‰©\Ú3,%cjø“%X·€…±\Òož´’\"tž¤%Á>\Ù\Í\0\ÝlÛŽÝ¤ô§Ë„\í\Û ÿ\04_eˆ\Õ~‹µi\æC‡\Û\è>®ô\Å\È\Z\å7ÃòC­()#2ÀLœ]\á&…^¨Ú³CDlùšx-<G\ä\æ¡fVûnø<4\àô ²V(;²…5Ž4e\Ðn¦î°«¡»ÁM] VM–Wø4G\Â\r€°{n›P³E•˜\Å\Þ\ÎwqI\îŽ\Ú&z%%”›¬JðQ\r\Ú ;¯\ÕJ?\Õ6\Ù”PHöXR\É=\Ö\È_¹h0\0Q\ìˆÉƒ»\á«ö€­U”\Ýö]€¦_ú™_\îžù¨Þ“¸Á•Hù(s•»A=¯€\äG\'ZM%˜/.\Ñyi&”\á\ØE`\æŽ]hR(¸lª…4`¬\åVvl«BÌ¡³gC»/\à\Í,cpa\æƒOO\Äù\ZAžZˆ’M½u\r[\Óö\ÊC\Êø9­\ê°\0ø»/Ï¶^“\r\è†\Û\àx*õ‡†¡·:·õI–\ÙzH÷#²R]+wR\éBWK\ä)>\È ;Î¿Q¡pl6‘-ú?ŠU\Òað}\å4A¹º\'1A\r|N‹´þÁ;Euö\Û/Ax\è³x\Í[zr\ÛD\àö¡\È\Ð\rO`X\n9Ž«0bM\ÂA\Õ^(B\Æ\Î\é»O\êZs)W\ËBh˜\0¯\ÇjL…5.÷Y \Âx{²\èH’\ì^	¢šZp\Ó\å\ä¤dTÊ¬ª\îû#–€¿\ß\"\'r\ßÒ“54^\Ú\Ï3´1\áYÎ›öAþÅ¡©Á,5\ÐSM2ò\r\ÄÚ«ª²®ª\Óö\"%2\ÃFuž3Ô\Ãøñ\Æ%¾\Ù]pP­bd’M\á(_I#\Ô\Ï\Ìû£\È\å\ÕmEx‰G“\âu¥zžvv‡µ^½\ÐXÿ\0«®\rZ`BN€’±\nK<¦\ÍE0ŽZ]\Þ$\ÉMeoª\Îc\'\Þ\ÍIt·¶õl\îÓ†#»yTJ”pb	dx\rY3\ÇJ‰lÀ,#€\ËSj\'–\ãº_‹øD\Z{þŽ\rQ¤AI6.	À|´Ö«1D\Æ6\ÓZm(§\0e¿ø(vDÈ«ð\Í@™\ß=\Ð>hg5Ž\à\rÖ¢ø²<	gcÜ­¹Ÿ\Z \ç‡/LˆF€€j9h28´%°™»0lNµGH5\Í@_óX:³o{E\Ú `\Ø	#WgŒ\Â\ìª\Çm©ªñ¸n \é\ÂE\Óe«‘\é@’\Ïù\Ôü¨˜\×Ÿ4$¤\Üo\ÝOÜ§\ËE1“D<I¡\â]{§\ÓG60°ùá¨°\é»\Ø\r \ì T l\æny·\É\Ò\nR«\ÔÝ–ð[\\\ãf€0Cß¨	‰\ê\è¶«Q@nwý\Ø4œÖ´TM_ªW„x0\0*	:£ô«\Å\r\ì›\Ç*ñªSˆhú3¦\Ãô§JLÂ4l\Þ\"\Ï\Õ?	´c\à¨(\×S\Î\0¦(\ë\\0”ÀºQ,\0Ë¦Z8- \ÊúyY]´½EM°™9,)9[‘ðp/\ÖM=\Íga„p¦\Õk\Â\Ó÷\â¦\Üó\Ò\ï×­¡\Ú\Ûqlx<«^J‹MöŠ¡ù\"¢\äµ~\ÉK1+\ÂOQµBQƒ\Û òz»\Z=e\Í†E÷8tz²\Ý\"d)¿ögKzHYI¤—ÿ\0\ZpRYäœ½¤¹‘t\ïúöj\çú \ÕlU÷F$	\ß+\ÊÔ‹Ò©x\ÃØž_\à\Ç\Ï@ù;\Ò%\î‡ûF‹!(\ÈV\ï\Õ/´’£\Ò>\'\Z%¤±Á+qM\ZºÚˆƒCÀ”/¿üqÙ ’\Íz«<Sf>³q‰¹\é\ë}Še,‘fƒöÝ¥\Ç\ê€û¡\Ä¶\0_Á„\ä`r#>\rŽ¤’}\Ù/µ\Ø.\"õñ*ÖŒ4Yj\Ð-‹¥\ËRQyZ`‘`§\×71ß¢Ô½Õ]õG\à\"(ö\ÉðÖ†ùs\ëxù)1»,‡²óMmT¥NUs\è8R\Ý\Z°þŒ\Þ#–~(\'‹ ðoÚ°Qœ\â½egÀ\î\íL/ñÁ\Ñ69qX¨¬\í-ÙµnJÿ\0”0NI\î˜\èiü\ÇgvH\î\"Is\ÒDÇˆJ\Ãø\r8`Ž‹M8–>¤I\ìi“¶Vpas]\Óx´\Ü¶ÁÒ\ÕÁFöÀÿ\0gr\rk \ÄÁ$óQ¦Ne½×®\ç4	aŽ¡š\Îñ›8\'o\à­\è\Èa/u<?Z%A\0\\ NªŸC\×2Hwu\â§Œ\ê¶ùq¬\Ù\Ðß†®ë »Á-s)%rÚ¯Ác„KH›4–@ƒ\'TI~\×6ŒP:fNReN\ê¯à¸²$In‡£\Å(U\Ù\ä\rDøf™\0`o´\ny—#±B\Ï3R±¸t;;­$B \ä\ÃþX‚®Eªe7oüÖ™9\ê7>·£0(w\Zð§•RL…ž\æ\ç\è(þ7ÿ\Ù','Matijasevic','examinee','mn');
/*!40000 ALTER TABLE `userdataentity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 15:25:55
