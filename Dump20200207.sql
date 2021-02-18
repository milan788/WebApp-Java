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
INSERT INTO `userdataentity` VALUES (1,'1997-01-23','vm@gmail.com',147258369,'Milan','vm','064369258','Pirot',NULL,'Vidanovic','admin','vm'),(2,'1997-01-10','pm@gmail.com',258741963,'Petar','pm','060159357','Pirot',NULL,'Minkovic','author','pm'),(3,'1997-01-23','lp@gmail.com',137958246,'Luka','lp','063147852','Pirot',NULL,'Popovic','examinee','lp'),(4,'1997-01-25','mima7jovic@gmail.com',250999737528,'Mima','mimajovic','066347044','Pirot',NULL,'Jovic','author','misaa.j'),(5,'1997-01-10','nm@gmail.com',125874693,'Nikola','nm','062349862','Arandjelovac',NULL,'MIlinkovic','examinee','nm'),(12,'1997-04-09','js@gmail.com',257368941,'Jovica ','js','062354125','Blace',_binary '�\��\�\0JFIF\0,,\0\0�\�\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(�\�\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((�\�\0,\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0�\0\0\0\0\0\�+~\����=:�-~\�!6\0\0\0\0\0\0\0\0\0\0\0\n��{:��yb�\�\0\0\0\0\0\0\0\0\0\0�\�֦\�c��\0\0\0\0\0\0\0\0\0\0\0\0*�V�.@\0\0\0\0\0\0\0L;O ��\�oQN�k#F�ω3U�>��V���\�\�i#\�IV|��\�ک�\�\�u�H<�#\�Gr12��5pY1z�xJy`�&��\0<\�8\0U�\r�̓��\0uc],�oZ�;qp*�\�	Mm�,N\�:\�R\�\�8\�,��i�Ƴ\�{:��s���t�a05{@\n��5PN��Պ\0\0\0+\�φ\�\�\�\��U�\�\�\0g,����o�����Ɲ�\"�\r+{�����P\0W\�����SP\0\0IJڐ\n�Z�\0Op�\�:�ڮ�\�\\��`���Sz��V�CoP\�\�>C�-\�\�9z\�T�\�\�\0_>X�R\�\�\0\0\0lΧ\�\�tv��\\�ϯ�6�h�ӗ\'1ÙǗF�\�\�\��ݗ�c�Qώ��e	\�m@2�ϣ�]\��@\0\0\08y\�\�Un}�[ix�h4\�\�P��\�<e�\�*%񘵇܆t<���\�ƛ\�� ���\�\��Z��v\�>�MLd\�ǭ�Q�8\0\0\rRY�\�\�^{�Γ�\�#Wk��w?�6���.w\�|rp\�\�\���/�:z׭n.E�ڇ?`�i\�M\�N�z�;i5�׊�ƽ��w\�`\�N�\��\�u\�Vƚ>Yr-\�Ø\0\�\��S\�z�U��_s\�:��9�E�2	��\�7��1�N\�[�\ns+\�U\���\�\�v0\0\�L]0�H�\�\�U�\�\�\0\0\0\���n����\�\�\�l\�;�y1�\�J*\�g���K1�D��\ZSuOt\�*\�\�\Z��\�]�\0\06�|\�\�\�\�q������Gw\��\�\�E��v�\r�o}���/]Jz.i��&\�\�\�Z\�\�[¶�{�\n\�\�t�\�PbG��4\�x�ӑ|\�*����\�\�L�\�l<f<\�\�\�\�C R\�3��Y�jw_l/�$񫮯wH6\0\0\0\0\0\n�\���/�p3�#4����`\�<�Y\�;7^�\�N4�li\���\�)\�\�\�\�\0\0\0\0\0��\��\0afӄ^\�\�Z\�3�w^4�i���!�\�ɏ�8\��\�ѡ�\0\0\0\0\0\nfe�\�Z`:*\�:\�w}�\0\�Q\�\�I�Inv`\0\0\0\0\0����+Nzo�\�\�F\�L�\0\0\0\0\0\0\0�\�\0+\0\0\0\0\0\0\0 0@!P\"#251�\�\0\0��u�7wH��ChC�\�\�c\�\�ֺ;�����g^�\�\��\�W���\0\09~�Ȼn\�\�C�/\�Wˋ�Mq\� �\�~�*�\n$\�\���FNH�f��\�k\�v\�T�JM\�\�)�L�Y\r��\�Ź)\�\�(\�\�R�1? Hy.O�\'�t��o~��j\�5ʈv�~�Qܥ \�\�Y�\��\�lT7V5�g|f1p��A�\�EPG6�7��L�\�2���]\�ڬ	��9��\�9��)X\"ԏ!\��\�\'֛P\�N�\�^���2R\�%�\�\��U��_Hn�\r\�\�\�\� �:\�K���|����FЅ\0\�Ȑ�!iM�j�\�t��嵨���\�\�P��IӏV\�@uy(\�#_.��K��Ϗ0)\�PD&�Y�GY\�_U�o�),6�WwN0��b��i����o�O�_O+w\�:T�[>vIڋoz]7���SᶸHɪkG^>c/��\�~\�F�\0mX1�[\�#\�h?j\�)\��jt\�@�\��-~�Nov׉�\�]�]٫��\�\�\�U\�\��\�\�\�=\�[#���d\�]y\�l ie>�U�\�\\z=\��r6\�-\�ۙy�q$:\�:�m+f�\�!�\��?\�U?u|�c��O\�{\�\�z\�W\�w\�ϧ(�gs\�O\r��\�\rL\�\�չo}�/\�c\����EYl�3V��O\��SV_få�\�-=\�z؉��G��t��\�k?�-�\�W\�߰�1 \�\�J��1[\�\�\�8\�Qh;Y�\�>R}.\��M�\�u��/�\�mX܈1���mג�\�-`M\�ZP\�R@C���䠩�s\�\�\���@\�\�?]�~��9\�\�;m;\�JC\�b\�SZs\�\'ȓ\�ʱ��}��\�f\�5\�kfk	���p\�WzB\�\��]�M\\k�xw\�>@s&\��),�\�d�\�\�\�bܳZ\�\�[ր\�l�P�\�\�83���	A�\�,����I\�I�j4v\�\�,0�\�\�\n�j\�8�W�!5�K]l���l-\�sE�6�\�/R�3Z\�ub��]\�̑\�n�<q\�ד�\�[\Zd�5\n\�k\�C\�HD��WJ7\�\�{�J:���M���a��\"\"Q\�\�Δ\�\�ͱYǆ<�ux4���\�����{\�G|�����W�\�\r\�1�Y\�_NS\�5\�\�\�Ȥ�\'\"�s�ȃ\ZmO	kR��o�?s��,>�[f��U\���Y�c�\�^J3\�:�YīS\�\�Ƙ�h���c��yOoҗ\�#;�~M�KAS\�|�렡\�\�\n�����VV�O9/^/?E��$�\�f\�{���[^:�>���\0\�\�\�aw2��?MM���Y��Z]�\�UW������w)Z\�u�\0SmA�欽ku�\��{c+�\�\�R\�+RfJ3�J\���,=�gŕ;;�\�!�C\�Q_�F���\�I��/�\�\�u�e�8vW*ӡ>�[6׆\�(c7�\�0�X��EFɚ��\�\�\�5Ll�2�OX\n�C�ֵ����ʩ�䅆�\�X�\�C6aG	f����8c<��\��V����Q\�\�z��S1+)\�����&�W\�W�.���k�\�\rL��k\Z\�\�hr\�\r���la\�?W��,Ŧ�>:\�崩\n\\UQ+���@8\�)�\0�\�N�\�\��\�wY�\�A\�D\�,��\�oP\n\�\'\Z\�gm�\�\��+?\�\�e\�\����yY�\�mMY�|\�	�\�\�\�)\�\�\�\�u��}�\\B|]z\�\�\� �\�!\Zg�pU�� Y6 �=xR\��\�x�\�\�\��\���8��)\�Ȭ�Y���^��g�)63\�e�j��z��\��S�\0[��\0\��\�7T�\�d#�E\��:�\�C�H�e_�\�\�^$֠^�,;�\�Uȕ\�\"��_\�\�\��И\�/W�\"\�	�anF\�\�nJĴ\�Gju�Gg\\J��\\LB\�!�z��\�S�QM�7�\�\0#\0\0\0\0\0\0\0\0\0\00 1A!@PQ�\�\0?\�L`�\�G\�n�WeA�Ό8��}��q\�V\�^\�Pі�1�\�\�\r̋c�|\�r\0k\\�\�b�<K\�L��\�}j�Gk�\�F�wLx��\�`%�L�\�Z��0\��5l�\�*��ETt\�\�pd3�e�E\��К�۹B,�g\�hG aP���\�T\�\�̇\�b\�1�y�V	�\�\�\"O\��\0�\�\0-\0\0\0\0\0\0\0\0\0!01 \"2Aa#@PQR��\�\0?�\�.o2��vÜ\�\��\0���F_9pP\0\�L�\"&�\�w\�!\Z\�\�R�FM;x�\�\�z�\0<����\�\�\�IPX\�z3\�\�^pja�X\�&J##Z\�\\\�$�7oY�FVSڣID�kGR\�(\�{\�x	�\�h���{U�O%\�\'�\�\�^�T��\rڝu�jh�D\��W\�U\�#��R	J������\�eI�\�g|8ƏqW�\���{TU\�e׎�S\�}l����\�)��Ƣ\�\\e\�EJ�\�\�\0\�;TH?P��+��fe\��\�*W9]�dg9QQ)\ZUO\�\\U���;y\�9qӊ\�s�*R�\�R\�:�\�5.kP���\0��N�\�i;ղ\��#B�C�@P��-Q��\�$�\�\�\Z�K�g\�\���(�\�T\�jqZSV�\"*7���9$�5-\�8r��`�$�F\�qF\��6\�\\Οn��\�R@���욍eB7wzJBF�\�G\�g�Z�(�	�\�%�Vjm\�Oy\Z\�TV�B))	U��M���饭K9Q��[�ҁV\�p�5+\���a\�Ri�\�0\��_�\�\0@\0\n\0\0\0\0\0!\"1AQ #02BRaq3br�����@P�\�$S�4s��C�\��\�\0\0?\�\r�l�WY�\�k/�\�\����\�zu\�w��\�:\�X�>�7\�\�%o�\n\���n5��5��a\����~?nʝ~��� \�\�߷\�R\�:ڗθ\�֘\�{�B\�a�n�\�*8\�R-�B�6+ ��\0C\�?߷\��c$��jʲ�\�s�5�\�GCid\�\�.sV\�B�7�z2��[*\�}iO)�\�f�A�\�\�\��g�b\"I�\�h�&N\�\�=T���\�ցyO�+G\n\���<3&�d\�%��ُ&\n�.k��\���arj<^B\�V\�H\�:+r���@�)�O�\0\\\�&#�p�&p�6\�L5\�h\�L(\�\�|L��R�W�oZ0D>Y\��\"�\0_g5_\r/\��iЯ�\�	=\�Ǭ(KC\�2L\�m4S�#���U\�g�\���~+�\�6�<J%�nx\�\�Z�q�;<ipض�9�\�\�� \�Z\�m��$M���\�c{n\0\�a\�2\�\�]k�,u\�r|�\�34�\�iVT.\�1�#�U�J%]\�1��M�uS`�.*\�\�\�h$JF�\�+\"�S�їvM��V\\GG��\Z�hN��p[�1ԃ���\����A��-ݣV�0{o!��n�����׾���\�E��Z)�)\r\�b��}��P�\'\�=�rK1��\�Ԓā��}\�bq\�S�\�\�&���\�ZG�|\�?z\�\�!�{���R\�\�\�BI�&#\�\\�$\�%�U�M\�D�D9\�I��LsI��|:	2%tUk(SBM�\�\�m�6:��z3�|�c�e;Vm)���|\�(�#\�\�M1\�\�7�\"��i7A:�\�\��\"h�:\���-\�h��j�B\�\�9=!Ƽ�|\��\�W�V��dl�[�D=�\"����˒W꠽9䑾���v\�	�p)<�����2��	�\���J\�n�8<��.�1Yn\�M�Ρ\�윣ȓ\�\�>��r\��\�\�W\�B���\�AK⧆	vg^�s�\�\�ϓ��DT�tk�٪�6�\�\�ip�Ҿ�J7��ӖF��H�[[\�\����@�2�\������X\�\"�E֦�j\"��/(q��M\\\Z\�\��3m#${\�\�\��\\��F\�E\�I��Q.dZ�d\�H�1ΰ*ڎj��\Z\��mf�\�8�0�v\��[n�TJu���s��a��]�rK\�\'��u9�I�\�ˈ\rհ j��<�\�Ð\�#E\�Md%\����\0By\��\�w\��Ҧ%�\�q��*C\�\��<�0�ew���ց\�\'Q�[\�˰�Obe���\�2��\�3��rh*\�uY�\�}ƄX�ۥ�^\�\�薝	�75��\��v\r�/�AVP�f\0�\�\��7BA�-������c\�s\\\�\"B7^´��\�\�t���j\\> 󚕎\�k=g\�8,E\�\\E>\�\�2Jl>�\�>a\�]\�#�r�\�Δ\�[�2\�q\�*\�J#�\�!v(5-�\n\��0\���\�W�O��\�\� \�;��������[8���⛽٫�q\�\�\r\�؃]�\�\�\�J��\"ý�U�S|1�\05��Bw�z�\�˯�\�T\�0�m��x��\�}���et;�0���\�\Z�e\�\�?jȈy����\���	I\0e:\�4J\�K�W\�\�?\�ۑf4J��\����Ӌ���{�\�]\�T�\�Fpp�8���VR\�\�\�h>7�~\�d5e\0�rLs�e��k\�\�Ы\�\�\�V�5�\�f5��\'��\�O��\�do%�f{����\�\�\�Q}M\�P�9\�;�\�4\�\�\�\�\�Һ2��QL���\�\�\�\��z	5z�uI���\r5�\�G\�>d�h\"]\�sV\\��\�\�y�����W\�\�G��\�\�\�ˬ� �\\}櫅˓�ܜ�O�\�4d��\r\�3\�\�d\�Q����s]kT�\���Ü�W����7��g���{�9%o�sQ(;��QUӛ��Ό�6SrwԎP�x�\�\�5,�-Ө�I\�j5\Z��\�5/�+.g\n�4StN�\�\�\�b�`|�\�\���\�+��\�\�\�ݴ�՗F!\�}ԑD,�,*x�e�ʢn\�-\�\�\�\�\�Gޛ\'Uͪ&ރ�Y\�*\�4W\n2ۼuV\\\�X�Dӎg`\�VH\�0���a�Cִx��Z\�q��h\"g��\0�\�����T\Z�\��\\\"\�\�<7\�R\�Fz˾�\�{\�GCn�窟\�e\�\�\�\��\0\��2��R�\"�Ҟ!�W�\��E[\rO��\��H\�\�\�b��bo�\�#�2���y\�T\�dק�\�ZM3|U��Bw�z��6y\��UмR��ձQ�=e\�k<�3\�\�\�D~!]u�֔�>*\�\�\�\�k\�7\�J|�\�F�\r\�H\�|�&��\�I-���\�QbW��\�]H������<���\���E\�<��\�E\�Z\�\�\�s�{\�j�Y�?����zӂA憺�\�Y����0\���Y\�b�E\�f\�\�\�8�\0��I�\\X\�\�&����\�p�؞i7v�&�<+\�9�\�9����\�\�\"\��u��G7\�\�܋��\�\�;�)�E*\�j#~�W\�\���\\\�a|v���J�ima�\r��\�?��fԂ�ޖF��Q��\�\�h\�58��B��\�\�@�\�[էF�\�\�s2��E�J]�+.S\�6\n��Ԩ5(�\�c�\�k�!YgTC+\�\�y�ꨦvҒF��fI�\�a��\�\�̾����ѷ�-Z1�=s��↊\���Us��l}�\0%\Zwc��\�=�\\�&#\�F\�\�\�\�\Z	\��<6u7\Z�\\Yކ\�|4\��8�v\�\�\�#돿䏰�\�<�\�\�[�\�}�\"\�u\�p��1��,,��\\�\�\�E�$=���#�50��\�# Ԙg=}%�\�/+A�чu�k\�5�\�:ͱhEʹ\�\�\���Z\�\�\�I}T�x[5�ƊH\nH��\�\�\ZK\�բ�4�9\�+#9\�z��0�\0\�Ў\n��\�8�\�n;E������^(�_y��\��\0�\�\0*\0\0\0\0\0\0\0\0\0!1AQaq��� 0��\��@P\���\�\0\0?!��\�X��Tz7��\�Ue\�\'!�#��G���\�\�b�\0�\�{B{\�!��#1�Y2\'�i\�(��\�\�`۱��=f���u��da\�\�}֣Ժ,|��\0�\�E(\��\0J�\nG�Re�$��2֟\��c��\n؇P\�\�-�p}�>7�L�\�\�r\�T2\�b��e��\�V^\�\�	A��zd��eJK_\�d��\�)�䏫*�\�>)\�;S�Py>\�ח�l�\�\"�\r���|�Y[\�p� �Cu�g�JE�~�J\�ѡFO{ʽ�ӹw�r\�Kq!L��0\r��Z+?V�\0PD\��JU�}�0���}V׾%���wEσY�P\�gGɏB�\�Hn��VG\�%r�\0(\��\0\ZIr\�~i΍��y\�\�\�je\�J\�����\�\\q(�\n\�Q\0�f\�8:��oz\�y$Q�{��D3:\0|4S�D�Ơ�7�\0�\�\��ޥQ\�m���G�<��$h�\r�8:�rb\�l}\�R@\�Vc���e}\�AS\��\��(e�\�;s�H�\��7^:�\���\�ɥi7���\��u#��=�\�f��(�\��\�\�ȫz�\"wn\�\�f>��鉏ǔ\��Ff�a�%\\;S���\�T.�j�Z;>\'��\�Av\\\�\�\"\���#\�\�\�j:No�\\\�猨[\��\�\0Z����mw�D#�D�\�\�ʐ��>��\���Ƈ�x\�\n\�s\�\"�\�x�\� 9\�נ���\�\����K5>g�\���8�pY��\�\�s�\����i\���\\��E^D���4-�s��\�\�li��\�\�w\�s\�\�pY(\�a��`�\�`\�.�\�+\0P\�s�\\\�\�~*l�\0����+��\���w⍙\�fy�dfQp�ԤV�@<LJL}�!\�^\�>j���J��}=+��ܨƏ��\�Ⱦ\�σb�6Y�~P q\Z\�\�!)��Q�\�2\�@\�4\�\�\�Z�\0�\�\�p�1N�ɳ**�d\�\�1\�柊��pm�\�\�aL�D#�40cʃ�\�\�ƿb�\Z\�dF�k�\n\0@AW�9\�ʎIC�w\�\�$��\�\�\�\�\�ݥ6\�_f^�9&�j�j�\��){���\�[�;Ԑ�\�ɬT\�\�<+XBo�\�}Ym\�?y��\���\�ͫ�Z\�J\�\�i�U`�\�-���4f�:Ac\�&\���\�ҁ\�>./ǐ�\'1�\n������*vm��JY^3�C��3*jC6�y�%jN��Q\�\0��.5���\�F\�M��ZE�V�\�U�e�(�\�J��r%\�\�\rﹸ-�\�ʧ\'�\n\�(t`�d,�8Ll���\r\n�>-5@�L��$��x&��b�)u������\n�#p�\�Q����NkGgF�۔|��-3\�\n\"z;\�+�h\�<\�$c�4��h]|�d\�H��&-\�q\�z}efD�qj�p<\� �Ў廙�\�ϽF�E8(`�P\�KR��\�7\�kB3���%r��Q\�?T\�M\r�\'�;\�\�8�\r�O\�\�gE\�P�\�X%��|�@��J6@\�9\�2p���Kw҂.@	\�2�j\�j�<`�lx�?\nh�@y[�\�\�riȇ��*@OfQԡ�_�*\�\�\�L\Z���m/~0}\�hO�g\�\�dC\�2��lg\�W\�V_�\�\��\�k�L�f�t\�1\�\�)\n$h��#\��U�U\��{=h%cbrג�|D�U�F�}��|�̧���¡(&	�^ɉ\�cQ��ב��mÅ��\�^i�`t<f�\�:��|.f~���\�\�\��YN�=\�\�nG\\zz��,XPm&\�|�JD�\�\�>b!i�~2���CCȲ�_��yV*Y\�S�\�QG�s6e��]q^u�8G�\�WɫB\�\�d���x%����\\|� \�!4��\���?�~\�^\�m\��(H�ö\�V�Ѣ�TB;�\�m�A�}7Yw�\�3����\�j?\���)�A](\��3�6�\�p2� \�mV\\C���*f{7\"���q�Q\��\�=\�\�\n\�\�\�\�W@s�\�\�B�`p�Ib\�\���}\�s\�e\�\�\�q;\�*A>�\nV��46Hr\�\�f��4	h\�M�jK�.\�R��\�\�#x���B�\0\0�T�\�\�`\�w�l�ؗTO~�һȃؤ\�\�\Z`�$�8\�\���a\�X٣��\0�\�ڂ\�;\�EO�|:\n3�\n��{*L\��S?��N��T=�\�\���!u\�a\�\�\��\��O\�W\��\��A6(ocب)�\����xX�C\��H\\������̪,�b=�kߢ\���&�zp��\�\�SJ\�C\�\�F\\\�c,\\V��R���\�x�����\�\�W�#痯9uqg�\�{Ь\�k��א�-w&���$b�	&s�ҠA���g�s���t7�zhS�@�\�\��\�\�\�]\n\\\�S�4K�7��LbA�l\�T9��\"8V\��]ؕ\r�Υ\�Θ����=+/<>\�AWu��Q%�\0!�QA\���>|ή*5r*A� \��=�)c*s~*Y\�\�j&��NϽ6�M]\�\�#\"�����\�=�L��Ek�F?\�64�\Z�\nltAy�/\�2T�{�\0\n�\�M\����3��㱋\�G�BK�]\����b\�NϚ�+\�\�w*pC#\�d��\�`\��lpeB���)T��ο�Q�ܹ\�\�r3��\�Ooh��R��a��;\��\�\�c�U�t\�\�� �9T�:\��1��\�\��n\�;��H�D�@:\�\�1[��ځdQX\�aL�s�eŬ��g���\�M�[�H~)y�0|Q(g��_\��\�\0\0\0\0\0\0�\�<�\�\�\�<�\�<�\�<�\�<�K��\�<�\�<�\�<�\��\�<�\�<�\�<�\�<\�<�\�<�\�<u�4�\�.�\r<�}�Ƈ3�\�#C�Y\\�\�<�\�5\� ��E�\�)\�\�<�\�I#/<�W<�\�҂T|��\�u�\�<�xVG���9�O<�\�Y\�5�\�J@\�[a}�\�+Z�F5�\�L7\�<�\��#�\�8D\�|�\�8\�P\��ן<3i\�2\0\0}ѿ<�\�<��t�{�$��\�<�\�<7\�(��\rO<�\�<�\�|�W<�\�|�\�<�\�<\'�\\�\�<�\�<�\��\�\0!\0\0\0\0\0\0\0\0\0\0 !10AQ@Pqa�\�\0?\�\�\��u�����#�p��o�1F�*jW=)�\�\�: \Z�M\�t��ɑ?��wY7#�M�Ѓ|0Ө\�YS�N�\��켷\n{��lޤy#�?�\0SSq=`\�⒱=�QƧR\�8�Jj;\�\0uN\�[`\Z\'x\�\\�r����\�\�Ot�h�-��\��J�D�jC�\�!�7�yFg��[\�\�\�	d\�^r�J�b\����V�NF\�?\��\n gH\�\�\��:+k\��\�\��?�\�\0)\0\0\0\0\0\0\0\0\0!1AQ0aq���\� P��\�@��\�\0?�\�TQ�r�\0*��R\Z\n�4ZA�OЙh#\n/��b\�\�r\�u\��5�ܚ������\�\�;�K:��E\�\�4a\�l\�\�P�\��3\���I��ͩG\��\�b��[nb\�B:\nNZ�:�x�\�P�$�yN6j�P��|i\r<3�8%e\�!.�5\���\�),�\rC�\�	N\�\�o����G�\�\�ɰ�sW�&\�\��Mg[�����\'�\�\�x��1\�k��d`\�gyr=q(����\�db�a�گ?ݡ��\������؏�\�;Y����1h�DT�*�ĺ�V�\�`�\��.V�<�?v�\"5��Fƾ\�|�GA2��Nݺ�L\�R�y�q��\��{����q\��sZ�ݮ�\�s\�R�\0��ye���:�\�W\�\�\�a�\���_�\�\0*\0\0\0\0\0\0!1AQaq�� ��0�@\��\�P��\�\0\0?��>i\"\n�o}��LͅZX�\�[�\�z�\�d�K�\0=\�\�R>b�4$��_�\�a�MJ9\�S�\�;	@Nau\�\�y)����i\�%�	%������\�P˫\�W\�\���\0\�\�ў\�\�%\��*r=c�\05\�d\�>ơ�@\���\0�h�\�G\'\��.+Li^�Pڦ��v�zB�� r���ud\��\�&0� �j�\�\�yi\�\��b��)J�����4Hŀ��Kʾ6W\�if!3�\��D~C\�Z$��\�M�	s��\�_�;\'ڍV��%n\�Y�3wFff�۫V(\�\�\�M^\"�B�\\�b�t\��\n\�TFJ�\�jOWu!惔p\��4`	qB\�9tU�^��L,#.\�J\\I��Z���SO.��\��4\Z\�׾\'\�G�U.\��*.U\��|S��ߺ��-\�\�fϙ�\�b>\�D�\0D��C!�\�\��N\�\��z�͈\�.�{Bg�Ӡ�\�\��;H(���\�M����\�-N\�fMb���ց5\n��z�$�\�K�\�\�\�S��\�8MQ�pf�\"\�\�X��RQ�d�\�Xm\��5\0ou}�B�\�\���L�X��\�	Xo�G\�|Pu�s\�Ku��*\�dz+�\�ⴊ�:���\�?�v���\�U\�6\�\�N\Z�0tv\Zh䒢3\"��Z��\�g�8O�:A\�ti\�K�\�U�G\",�V<\�\��\�\�\�~\�\�Լ&\�&\�h\�\�a���\�\">jq\�[^\�\�50	�8kDX6R!�9\�Q�R�����c\�0*�AYN�d�\�c�e�ްU�C\�c\�o\�䂷m����E�M\�}\�ا\��JM%\�6\�AK�#�݀6(�\�\"_`\��F��q\�^ѫ*2\�u��M�\�n�\���O�\�w�\0\0\0l{����!�\�«V\�\�\�\�\�\�F��$D\�\�:$3�s�u\'���\�l�@\\D!\��\��x��󎈟M6\�.��g\�\�Ut)�+��Z�\'X\��;>��Ғ:��DAD\�S��\�Q�G\��$���\�IU�3F=\��c/�����~h\�L��8$�}\n����Mm����R�4�~��D\�u\�)\�G��T�Ƀ\�~\\�b`�r�h\�_b\�;�Q%.M\�\��\0\n�]%�L7[=IE&\�Ax�\�쀊{�����\n\�VD�50�\"�HM�K?o��\�\�\0W�\�ދ�u��b(\\��_xE\�I`.�[�7R_F,&=�\��\\Af�?\�@��\�\�\�\�*ofO4�z6f\�b$x���F#@$M�S2�\"����>��\�W)\"-�߄7`%��}\�r�>\�T!����-\�.a\\j�Љ���\040F�QΈ�C�`\�?\0��\n���\�hg8�#D�Z^�ޑ\��D\�H�vn���}�ـ�\�L6��b\�\0Qȴh�F\0��A�\�Ge{S>n�J�j��\��\Z�v�լ�-��/�Yf��	u�`\�y$BxjMD0�lu��C\�\�{��S9e\�q�sD\�DA��F�W\�\�\�~G\� $�\0\�\�+69u\�\�\�;7��\�앆�W:�րԑ�\�gZr\�*\�<\��\�oзk9R��֌�\�@�@\��ˮ7� \0�\�54��^ND\�U���00�a˳�q\��֗6L���T-�J��&\�U�t�\0�:$�HBy�P�	o�\0w�\�0,[�;2�֚��\�\�Р�t\n�\��\0\��4�>$�V\�[p\�\�`�S8��\Z�\�\�X*0���\��\0M\�!r\0��\�΄d\'�\0��� \'\�ޡX\�Tv�\�\�l|yx��\�\�&�\'\�^$\��4\�\�+H9�P�[I�\���S�\���\r(\�9���D�(J\�\��F\�`}��\�+_Lq\��\�\��֞\��7]]Z]�)\\�k\Zu�\�\�/\�M�	\�<��8��\�A_g��Q\��P\'@v�\�r���h�!ݼJ�H\�Pj)�\�\��P#͗�}4K�\\\��q\�(�D��퓚!V��K\'�\\�F<ӊ_��T\�;�nļQ2\�\�B^[�7y�v�:-��XOO���\�3,%cj��%X����\�o���\"t��%��>\�\�\0\�lێݤ��˄\�\� �\04_e�\�~��i\�C�\�\�>��\�\�\Z\�7Í�C�()#2�L�]\�&�^��ڳCDl��x-�<G\�\�fV�n�<4\����V(;��5�4e\�n����M]�VM�W�4G\�\r��{n�P�E���\�\�\�wqI�\�\�&z%%���J�Q\r\� ;�\�J?\�6�\��PH�XR\�=\�\�_�h0\0Q\�Ƀ�\����U�\��]��_��_\���ޓ���H�(s��A=��\�G\'ZM%�/.\�yi&�\�\�E`\�]hR(�l��4`�\�Vvl�B̡�gC�/\�\�,cpa\�O�O\��\ZA��Z��M�u\r[\��\�C\��9�\�\0��/϶^�\r\�\�\�x*�����:��I�\�zH�#�R]+wR\�BWK\�)>\� ;οQ�pl6�-�?�U\�a�}\�4A��\'1A\r|N����;Eu�\�/Ax\�x\�[zr\�D\���\�\�\rO`X\n9��0bM\�A\�^(�B\�\�\��O\�Zs)W\�Bh�\0�\�jL�5.�Y�\�x{�\�H�\�^	��Zp\�\�\�dTʬ�\��#���\�\"\'r�\�ғ54^\�\�3�1\�YΛ�A��š��,5\�SM2�\r\�ګ����\��\"%2�\�Fu�3ԁ\���\�%�\�]pP�bd�M\�(_I#\�\�\���\�\�\�mEx�G�\�u�z�vv��^�\�X�\0��\rZ`BN���\nK<�\�E0�Z]�\�$\�Meo�\�c\'\�\�It���l\�ӆ#�yTJ�p�b	dx\rY3\�J�l�,#�\�Sj\'�\�_��D�\Z{��\rQ�AI6.	�|�֫1D\�6\�Zm(�\0e��(vDȫ�\�@�\�=\�>hg5�\�\r�֢��<	gcܭ��\Z�\�/L�F��j9h28�%���0lN��GH5\�@_�X:��o{E\� `\�	#Wg�\�\�\�m���n�\�\�E\�e��\�@�\��\����\��4$�\�o\�Oܧ\�E1�D<I�\�]{�\�G60���ᨰ\�\�\r \��T�l\�ny�\�\�\nR�\�ݖ�[\\�\�f�0Cߨ	�\�\���Q@nw�\�4�ִTM_�W�x0\0*	:����\�\r\��\�*�S�h�3�\���JL4l\�\"\�\�?	�c\�(\�S\�\0�(\�\\0���Q,\0˦Z8-�\��yY]��EM��9,�)9[���p/\�M=\�ga�p�\�k\�\��\�\��\�\�׭�\�\�qlx<�^J�M����\"��\���~\�K1+\�OQ�BQ�\� �z�\Z=e\��E�8tz�\�\"d)��gKzHYI���\0\ZpRY䜽���t\���j\�� \�lU�F$	\�+\�ԋҩx\�؞_\�\�\�@�;\�%\��F�!(\�V\�\�/����\�>\'\Z%���+qM\Z�ڈ�C��/��q٠�\�z�<Sf>�q��\�\�}�e,�f��ݥ\�\���\��\0_��\�`r#>\r���}\�/�\�.\"��*�֌4Yj\�-��\�RQyZ�`�`�\�71ߢԽՁ]�G\�\"(�\��ֆ�s\�x�)1�,���MmT�NUs\�8R\�\Z���\�#�~(\'� �oڰQ�\�eg��\�\�L/��\�69qX��\�-ٵnJ�\0�0NI\�\�i�\�gvH\�\"Is\�DǈJ\��\r8`��M8�>�I\�i��Vpas]\�x�\���ҁ\��F���\0gr\rk�\��$�Q�Ne�׮\�4	a����\��8�\'o\�\�\�a/u<?Z%A\0\\�N��C\�2Hwu\��\���q�\�\�߆�렻�-s)%rگ�c�KH�4�@�\'TI~\�6�P:fNReN\�า$In���\�(U�\�\�\rD�f�\0`o�\ny�#�B\�3R��t;;�$B \�\��X��E�e7o�֙�9\�7>��0(w\Z���RL��\�\�\�(�7�\�','Smiljkovic','examinee','js'),(14,'1997-02-18','nm@gmail.com',456279813,'Nikola','mn','062314896','Arandjelovac',_binary '�\��\�\0JFIF\0,,\0\0�\�\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(�\�\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((�\�\0,\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0�\0\0\0\0\0\�+~\����=:�-~\�!6\0\0\0\0\0\0\0\0\0\0\0\n��{:��yb�\�\0\0\0\0\0\0\0\0\0\0�\�֦\�c��\0\0\0\0\0\0\0\0\0\0\0\0*�V�.@\0\0\0\0\0\0\0L;O ��\�oQN�k#F�ω3U�>��V���\�\�i#\�IV|��\�ک�\�\�u�H<�#\�Gr12��5pY1z�xJy`�&��\0<\�8\0U�\r�̓��\0uc],�oZ�;qp*�\�	Mm�,N\�:\�R\�\�8\�,��i�Ƴ\�{:��s���t�a05{@\n��5PN��Պ\0\0\0+\�φ\�\�\�\��U�\�\�\0g,����o�����Ɲ�\"�\r+{�����P\0W\�����SP\0\0IJڐ\n�Z�\0Op�\�:�ڮ�\�\\��`���Sz��V�CoP\�\�>C�-\�\�9z\�T�\�\�\0_>X�R\�\�\0\0\0lΧ\�\�tv��\\�ϯ�6�h�ӗ\'1ÙǗF�\�\�\��ݗ�c�Qώ��e	\�m@2�ϣ�]\��@\0\0\08y\�\�Un}�[ix�h4\�\�P��\�<e�\�*%񘵇܆t<���\�ƛ\�� ���\�\��Z��v\�>�MLd\�ǭ�Q�8\0\0\rRY�\�\�^{�Γ�\�#Wk��w?�6���.w\�|rp\�\�\���/�:z׭n.E�ڇ?`�i\�M\�N�z�;i5�׊�ƽ��w\�`\�N�\��\�u\�Vƚ>Yr-\�Ø\0\�\��S\�z�U��_s\�:��9�E�2	��\�7��1�N\�[�\ns+\�U\���\�\�v0\0\�L]0�H�\�\�U�\�\�\0\0\0\���n����\�\�\�l\�;�y1�\�J*\�g���K1�D��\ZSuOt\�*\�\�\Z��\�]�\0\06�|\�\�\�\�q������Gw\��\�\�E��v�\r�o}���/]Jz.i��&\�\�\�Z\�\�[¶�{�\n\�\�t�\�PbG��4\�x�ӑ|\�*����\�\�L�\�l<f<\�\�\�\�C R\�3��Y�jw_l/�$񫮯wH6\0\0\0\0\0\n�\���/�p3�#4����`\�<�Y\�;7^�\�N4�li\���\�)\�\�\�\�\0\0\0\0\0��\��\0afӄ^\�\�Z\�3�w^4�i���!�\�ɏ�8\��\�ѡ�\0\0\0\0\0\nfe�\�Z`:*\�:\�w}�\0\�Q\�\�I�Inv`\0\0\0\0\0����+Nzo�\�\�F\�L�\0\0\0\0\0\0\0�\�\0+\0\0\0\0\0\0\0 0@!P\"#251�\�\0\0��u�7wH��ChC�\�\�c\�\�ֺ;�����g^�\�\��\�W���\0\09~�Ȼn\�\�C�/\�Wˋ�Mq\� �\�~�*�\n$\�\���FNH�f��\�k\�v\�T�JM\�\�)�L�Y\r��\�Ź)\�\�(\�\�R�1? Hy.O�\'�t��o~��j\�5ʈv�~�Qܥ \�\�Y�\��\�lT7V5�g|f1p��A�\�EPG6�7��L�\�2���]\�ڬ	��9��\�9��)X\"ԏ!\��\�\'֛P\�N�\�^���2R\�%�\�\��U��_Hn�\r\�\�\�\� �:\�K���|����FЅ\0\�Ȑ�!iM�j�\�t��嵨���\�\�P��IӏV\�@uy(\�#_.��K��Ϗ0)\�PD&�Y�GY\�_U�o�),6�WwN0��b��i����o�O�_O+w\�:T�[>vIڋoz]7���SᶸHɪkG^>c/��\�~\�F�\0mX1�[\�#\�h?j\�)\��jt\�@�\��-~�Nov׉�\�]�]٫��\�\�\�U\�\��\�\�\�=\�[#���d\�]y\�l ie>�U�\�\\z=\��r6\�-\�ۙy�q$:\�:�m+f�\�!�\��?\�U?u|�c��O\�{\�\�z\�W\�w\�ϧ(�gs\�O\r��\�\rL\�\�չo}�/\�c\����EYl�3V��O\��SV_få�\�-=\�z؉��G��t��\�k?�-�\�W\�߰�1 \�\�J��1[\�\�\�8\�Qh;Y�\�>R}.\��M�\�u��/�\�mX܈1���mג�\�-`M\�ZP\�R@C���䠩�s\�\�\���@\�\�?]�~��9\�\�;m;\�JC\�b\�SZs\�\'ȓ\�ʱ��}��\�f\�5\�kfk	���p\�WzB\�\��]�M\\k�xw\�>@s&\��),�\�d�\�\�\�bܳZ\�\�[ր\�l�P�\�\�83���	A�\�,����I\�I�j4v\�\�,0�\�\�\n�j\�8�W�!5�K]l���l-\�sE�6�\�/R�3Z\�ub��]\�̑\�n�<q\�ד�\�[\Zd�5\n\�k\�C\�HD��WJ7\�\�{�J:���M���a��\"\"Q\�\�Δ\�\�ͱYǆ<�ux4���\�����{\�G|�����W�\�\r\�1�Y\�_NS\�5\�\�\�Ȥ�\'\"�s�ȃ\ZmO	kR��o�?s��,>�[f��U\���Y�c�\�^J3\�:�YīS\�\�Ƙ�h���c��yOoҗ\�#;�~M�KAS\�|�렡\�\�\n�����VV�O9/^/?E��$�\�f\�{���[^:�>���\0\�\�\�aw2��?MM���Y��Z]�\�UW������w)Z\�u�\0SmA�欽ku�\��{c+�\�\�R\�+RfJ3�J\���,=�gŕ;;�\�!�C\�Q_�F���\�I��/�\�\�u�e�8vW*ӡ>�[6׆\�(c7�\�0�X��EFɚ��\�\�\�5Ll�2�OX\n�C�ֵ����ʩ�䅆�\�X�\�C6aG	f����8c<��\��V����Q\�\�z��S1+)\�����&�W\�W�.���k�\�\rL��k\Z\�\�hr\�\r���la\�?W��,Ŧ�>:\�崩\n\\UQ+���@8\�)�\0�\�N�\�\��\�wY�\�A\�D\�,��\�oP\n\�\'\Z\�gm�\�\��+?\�\�e\�\����yY�\�mMY�|\�	�\�\�\�)\�\�\�\�u��}�\\B|]z\�\�\� �\�!\Zg�pU�� Y6 �=xR\��\�x�\�\�\��\���8��)\�Ȭ�Y���^��g�)63\�e�j��z��\��S�\0[��\0\��\�7T�\�d#�E\��:�\�C�H�e_�\�\�^$֠^�,;�\�Uȕ\�\"��_\�\�\��И\�/W�\"\�	�anF\�\�nJĴ\�Gju�Gg\\J��\\LB\�!�z��\�S�QM�7�\�\0#\0\0\0\0\0\0\0\0\0\00 1A!@PQ�\�\0?\�L`�\�G\�n�WeA�Ό8��}��q\�V\�^\�Pі�1�\�\�\r̋c�|\�r\0k\\�\�b�<K\�L��\�}j�Gk�\�F�wLx��\�`%�L�\�Z��0\��5l�\�*��ETt\�\�pd3�e�E\��К�۹B,�g\�hG aP���\�T\�\�̇\�b\�1�y�V	�\�\�\"O\��\0�\�\0-\0\0\0\0\0\0\0\0\0!01 \"2Aa#@PQR��\�\0?�\�.o2��vÜ\�\��\0���F_9pP\0\�L�\"&�\�w\�!\Z\�\�R�FM;x�\�\�z�\0<����\�\�\�IPX\�z3\�\�^pja�X\�&J##Z\�\\\�$�7oY�FVSڣID�kGR\�(\�{\�x	�\�h���{U�O%\�\'�\�\�^�T��\rڝu�jh�D\��W\�U\�#��R	J������\�eI�\�g|8ƏqW�\���{TU\�e׎�S\�}l����\�)��Ƣ\�\\e\�EJ�\�\�\0\�;TH?P��+��fe\��\�*W9]�dg9QQ)\ZUO\�\\U���;y\�9qӊ\�s�*R�\�R\�:�\�5.kP���\0��N�\�i;ղ\��#B�C�@P��-Q��\�$�\�\�\Z�K�g\�\���(�\�T\�jqZSV�\"*7���9$�5-\�8r��`�$�F\�qF\��6\�\\Οn��\�R@���욍eB7wzJBF�\�G\�g�Z�(�	�\�%�Vjm\�Oy\Z\�TV�B))	U��M���饭K9Q��[�ҁV\�p�5+\���a\�Ri�\�0\��_�\�\0@\0\n\0\0\0\0\0!\"1AQ #02BRaq3br�����@P�\�$S�4s��C�\��\�\0\0?\�\r�l�WY�\�k/�\�\����\�zu\�w��\�:\�X�>�7\�\�%o�\n\���n5��5��a\����~?nʝ~��� \�\�߷\�R\�:ڗθ\�֘\�{�B\�a�n�\�*8\�R-�B�6+ ��\0C\�?߷\��c$��jʲ�\�s�5�\�GCid\�\�.sV\�B�7�z2��[*\�}iO)�\�f�A�\�\�\��g�b\"I�\�h�&N\�\�=T���\�ցyO�+G\n\���<3&�d\�%��ُ&\n�.k��\���arj<^B\�V\�H\�:+r���@�)�O�\0\\\�&#�p�&p�6\�L5\�h\�L(\�\�|L��R�W�oZ0D>Y\��\"�\0_g5_\r/\��iЯ�\�	=\�Ǭ(KC\�2L\�m4S�#���U\�g�\���~+�\�6�<J%�nx\�\�Z�q�;<ipض�9�\�\�� \�Z\�m��$M���\�c{n\0\�a\�2\�\�]k�,u\�r|�\�34�\�iVT.\�1�#�U�J%]\�1��M�uS`�.*\�\�\�h$JF�\�+\"�S�їvM��V\\GG��\Z�hN��p[�1ԃ���\����A��-ݣV�0{o!��n�����׾���\�E��Z)�)\r\�b��}��P�\'\�=�rK1��\�Ԓā��}\�bq\�S�\�\�&���\�ZG�|\�?z\�\�!�{���R\�\�\�BI�&#\�\\�$\�%�U�M\�D�D9\�I��LsI��|:	2%tUk(SBM�\�\�m�6:��z3�|�c�e;Vm)���|\�(�#\�\�M1\�\�7�\"��i7A:�\�\��\"h�:\���-\�h��j�B\�\�9=!Ƽ�|\��\�W�V��dl�[�D=�\"����˒W꠽9䑾���v\�	�p)<�����2��	�\���J\�n�8<��.�1Yn\�M�Ρ\�윣ȓ\�\�>��r\��\�\�W\�B���\�AK⧆	vg^�s�\�\�ϓ��DT�tk�٪�6�\�\�ip�Ҿ�J7��ӖF��H�[[\�\����@�2�\������X\�\"�E֦�j\"��/(q��M\\\Z\�\��3m#${\�\�\��\\��F\�E\�I��Q.dZ�d\�H�1ΰ*ڎj��\Z\��mf�\�8�0�v\��[n�TJu���s��a��]�rK\�\'��u9�I�\�ˈ\rհ j��<�\�Ð\�#E\�Md%\����\0By\��\�w\��Ҧ%�\�q��*C\�\��<�0�ew���ց\�\'Q�[\�˰�Obe���\�2��\�3��rh*\�uY�\�}ƄX�ۥ�^\�\�薝	�75��\��v\r�/�AVP�f\0�\�\��7BA�-������c\�s\\\�\"B7^´��\�\�t���j\\> 󚕎\�k=g\�8,E\�\\E>\�\�2Jl>�\�>a\�]\�#�r�\�Δ\�[�2\�q\�*\�J#�\�!v(5-�\n\��0\���\�W�O��\�\� \�;��������[8���⛽٫�q\�\�\r\�؃]�\�\�\�J��\"ý�U�S|1�\05��Bw�z�\�˯�\�T\�0�m��x��\�}���et;�0���\�\Z�e\�\�?jȈy����\���	I\0e:\�4J\�K�W\�\�?\�ۑf4J��\����Ӌ���{�\�]\�T�\�Fpp�8���VR\�\�\�h>7�~\�d5e\0�rLs�e��k\�\�Ы\�\�\�V�5�\�f5��\'��\�O��\�do%�f{����\�\�\�Q}M\�P�9\�;�\�4\�\�\�\�\�Һ2��QL���\�\�\�\��z	5z�uI���\r5�\�G\�>d�h\"]\�sV\\��\�\�y�����W\�\�G��\�\�\�ˬ� �\\}櫅˓�ܜ�O�\�4d��\r\�3\�\�d\�Q����s]kT�\���Ü�W����7��g���{�9%o�sQ(;��QUӛ��Ό�6SrwԎP�x�\�\�5,�-Ө�I\�j5\Z��\�5/�+.g\n�4StN�\�\�\�b�`|�\�\���\�+��\�\�\�ݴ�՗F!\�}ԑD,�,*x�e�ʢn\�-\�\�\�\�\�Gޛ\'Uͪ&ރ�Y\�*\�4W\n2ۼuV\\\�X�Dӎg`\�VH\�0���a�Cִx��Z\�q��h\"g��\0�\�����T\Z�\��\\\"\�\�<7\�R\�Fz˾�\�{\�GCn�窟\�e\�\�\�\��\0\��2��R�\"�Ҟ!�W�\��E[\rO��\��H\�\�\�b��bo�\�#�2���y\�T\�dק�\�ZM3|U��Bw�z��6y\��UмR��ձQ�=e\�k<�3\�\�\�D~!]u�֔�>*\�\�\�\�k\�7\�J|�\�F�\r\�H\�|�&��\�I-���\�QbW��\�]H������<���\���E\�<��\�E\�Z\�\�\�s�{\�j�Y�?����zӂA憺�\�Y����0\���Y\�b�E\�f\�\�\�8�\0��I�\\X\�\�&����\�p�؞i7v�&�<+\�9�\�9����\�\�\"\��u��G7\�\�܋��\�\�;�)�E*\�j#~�W\�\���\\\�a|v���J�ima�\r��\�?��fԂ�ޖF��Q��\�\�h\�58��B��\�\�@�\�[էF�\�\�s2��E�J]�+.S\�6\n��Ԩ5(�\�c�\�k�!YgTC+\�\�y�ꨦvҒF��fI�\�a��\�\�̾����ѷ�-Z1�=s��↊\���Us��l}�\0%\Zwc��\�=�\\�&#\�F\�\�\�\�\Z	\��<6u7\Z�\\Yކ\�|4\��8�v\�\�\�#돿䏰�\�<�\�\�[�\�}�\"\�u\�p��1��,,��\\�\�\�E�$=���#�50��\�# Ԙg=}%�\�/+A�чu�k\�5�\�:ͱhEʹ\�\�\���Z\�\�\�I}T�x[5�ƊH\nH��\�\�\ZK\�բ�4�9\�+#9\�z��0�\0\�Ў\n��\�8�\�n;E������^(�_y��\��\0�\�\0*\0\0\0\0\0\0\0\0\0!1AQaq��� 0��\��@P\���\�\0\0?!��\�X��Tz7��\�Ue\�\'!�#��G���\�\�b�\0�\�{B{\�!��#1�Y2\'�i\�(��\�\�`۱��=f���u��da\�\�}֣Ժ,|��\0�\�E(\��\0J�\nG�Re�$��2֟\��c��\n؇P\�\�-�p}�>7�L�\�\�r\�T2\�b��e��\�V^\�\�	A��zd��eJK_\�d��\�)�䏫*�\�>)\�;S�Py>\�ח�l�\�\"�\r���|�Y[\�p� �Cu�g�JE�~�J\�ѡFO{ʽ�ӹw�r\�Kq!L��0\r��Z+?V�\0PD\��JU�}�0���}V׾%���wEσY�P\�gGɏB�\�Hn��VG\�%r�\0(\��\0\ZIr\�~i΍��y\�\�\�je\�J\�����\�\\q(�\n\�Q\0�f\�8:��oz\�y$Q�{��D3:\0|4S�D�Ơ�7�\0�\�\��ޥQ\�m���G�<��$h�\r�8:�rb\�l}\�R@\�Vc���e}\�AS\��\��(e�\�;s�H�\��7^:�\���\�ɥi7���\��u#��=�\�f��(�\��\�\�ȫz�\"wn\�\�f>��鉏ǔ\��Ff�a�%\\;S���\�T.�j�Z;>\'��\�Av\\\�\�\"\���#\�\�\�j:No�\\\�猨[\��\�\0Z����mw�D#�D�\�\�ʐ��>��\���Ƈ�x\�\n\�s\�\"�\�x�\� 9\�נ���\�\����K5>g�\���8�pY��\�\�s�\����i\���\\��E^D���4-�s��\�\�li��\�\�w\�s\�\�pY(\�a��`�\�`\�.�\�+\0P\�s�\\\�\�~*l�\0����+��\���w⍙\�fy�dfQp�ԤV�@<LJL}�!\�^\�>j���J��}=+��ܨƏ��\�Ⱦ\�σb�6Y�~P q\Z\�\�!)��Q�\�2\�@\�4\�\�\�Z�\0�\�\�p�1N�ɳ**�d\�\�1\�柊��pm�\�\�aL�D#�40cʃ�\�\�ƿb�\Z\�dF�k�\n\0@AW�9\�ʎIC�w\�\�$��\�\�\�\�\�ݥ6\�_f^�9&�j�j�\��){���\�[�;Ԑ�\�ɬT\�\�<+XBo�\�}Ym\�?y��\���\�ͫ�Z\�J\�\�i�U`�\�-���4f�:Ac\�&\���\�ҁ\�>./ǐ�\'1�\n������*vm��JY^3�C��3*jC6�y�%jN��Q\�\0��.5���\�F\�M��ZE�V�\�U�e�(�\�J��r%\�\�\rﹸ-�\�ʧ\'�\n\�(t`�d,�8Ll���\r\n�>-5@�L��$��x&��b�)u������\n�#p�\�Q����NkGgF�۔|��-3\�\n\"z;\�+�h\�<\�$c�4��h]|�d\�H��&-\�q\�z}efD�qj�p<\� �Ў廙�\�ϽF�E8(`�P\�KR��\�7\�kB3���%r��Q\�?T\�M\r�\'�;\�\�8�\r�O\�\�gE\�P�\�X%��|�@��J6@\�9\�2p���Kw҂.@	\�2�j\�j�<`�lx�?\nh�@y[�\�\�riȇ��*@OfQԡ�_�*\�\�\�L\Z���m/~0}\�hO�g\�\�dC\�2��lg\�W\�V_�\�\��\�k�L�f�t\�1\�\�)\n$h��#\��U�U\��{=h%cbrג�|D�U�F�}��|�̧���¡(&	�^ɉ\�cQ��ב��mÅ��\�^i�`t<f�\�:��|.f~���\�\�\��YN�=\�\�nG\\zz��,XPm&\�|�JD�\�\�>b!i�~2���CCȲ�_��yV*Y\�S�\�QG�s6e��]q^u�8G�\�WɫB\�\�d���x%����\\|� \�!4��\���?�~\�^\�m\��(H�ö\�V�Ѣ�TB;�\�m�A�}7Yw�\�3����\�j?\���)�A](\��3�6�\�p2� \�mV\\C���*f{7\"���q�Q\��\�=\�\�\n\�\�\�\�W@s�\�\�B�`p�Ib\�\���}\�s\�e\�\�\�q;\�*A>�\nV��46Hr\�\�f��4	h\�M�jK�.\�R��\�\�#x���B�\0\0�T�\�\�`\�w�l�ؗTO~�һȃؤ\�\�\Z`�$�8\�\���a\�X٣��\0�\�ڂ\�;\�EO�|:\n3�\n��{*L\��S?��N��T=�\�\���!u\�a\�\�\��\��O\�W\��\��A6(ocب)�\����xX�C\��H\\������̪,�b=�kߢ\���&�zp��\�\�SJ\�C\�\�F\\\�c,\\V��R���\�x�����\�\�W�#痯9uqg�\�{Ь\�k��א�-w&���$b�	&s�ҠA���g�s���t7�zhS�@�\�\��\�\�\�]\n\\\�S�4K�7��LbA�l\�T9��\"8V\��]ؕ\r�Υ\�Θ����=+/<>\�AWu��Q%�\0!�QA\���>|ή*5r*A� \��=�)c*s~*Y\�\�j&��NϽ6�M]\�\�#\"�����\�=�L��Ek�F?\�64�\Z�\nltAy�/\�2T�{�\0\n�\�M\����3��㱋\�G�BK�]\����b\�NϚ�+\�\�w*pC#\�d��\�`\��lpeB���)T��ο�Q�ܹ\�\�r3��\�Ooh��R��a��;\��\�\�c�U�t\�\�� �9T�:\��1��\�\��n\�;��H�D�@:\�\�1[��ځdQX\�aL�s�eŬ��g���\�M�[�H~)y�0|Q(g��_\��\�\0\0\0\0\0\0�\�<�\�\�\�<�\�<�\�<�\�<�K��\�<�\�<�\�<�\��\�<�\�<�\�<�\�<\�<�\�<�\�<u�4�\�.�\r<�}�Ƈ3�\�#C�Y\\�\�<�\�5\� ��E�\�)\�\�<�\�I#/<�W<�\�҂T|��\�u�\�<�xVG���9�O<�\�Y\�5�\�J@\�[a}�\�+Z�F5�\�L7\�<�\��#�\�8D\�|�\�8\�P\��ן<3i\�2\0\0}ѿ<�\�<��t�{�$��\�<�\�<7\�(��\rO<�\�<�\�|�W<�\�|�\�<�\�<\'�\\�\�<�\�<�\��\�\0!\0\0\0\0\0\0\0\0\0\0 !10AQ@Pqa�\�\0?\�\�\��u�����#�p��o�1F�*jW=)�\�\�: \Z�M\�t��ɑ?��wY7#�M�Ѓ|0Ө\�YS�N�\��켷\n{��lޤy#�?�\0SSq=`\�⒱=�QƧR\�8�Jj;\�\0uN\�[`\Z\'x\�\\�r����\�\�Ot�h�-��\��J�D�jC�\�!�7�yFg��[\�\�\�	d\�^r�J�b\����V�NF\�?\��\n gH\�\�\��:+k\��\�\��?�\�\0)\0\0\0\0\0\0\0\0\0!1AQ0aq���\� P��\�@��\�\0?�\�TQ�r�\0*��R\Z\n�4ZA�OЙh#\n/��b\�\�r\�u\��5�ܚ������\�\�;�K:��E\�\�4a\�l\�\�P�\��3\���I��ͩG\��\�b��[nb\�B:\nNZ�:�x�\�P�$�yN6j�P��|i\r<3�8%e\�!.�5\���\�),�\rC�\�	N\�\�o����G�\�\�ɰ�sW�&\�\��Mg[�����\'�\�\�x��1\�k��d`\�gyr=q(����\�db�a�گ?ݡ��\������؏�\�;Y����1h�DT�*�ĺ�V�\�`�\��.V�<�?v�\"5��Fƾ\�|�GA2��Nݺ�L\�R�y�q��\��{����q\��sZ�ݮ�\�s\�R�\0��ye���:�\�W\�\�\�a�\���_�\�\0*\0\0\0\0\0\0!1AQaq�� ��0�@\��\�P��\�\0\0?��>i\"\n�o}��LͅZX�\�[�\�z�\�d�K�\0=\�\�R>b�4$��_�\�a�MJ9\�S�\�;	@Nau\�\�y)����i\�%�	%������\�P˫\�W\�\���\0\�\�ў\�\�%\��*r=c�\05\�d\�>ơ�@\���\0�h�\�G\'\��.+Li^�Pڦ��v�zB�� r���ud\��\�&0� �j�\�\�yi\�\��b��)J�����4Hŀ��Kʾ6W\�if!3�\��D~C\�Z$��\�M�	s��\�_�;\'ڍV��%n\�Y�3wFff�۫V(\�\�\�M^\"�B�\\�b�t\��\n\�TFJ�\�jOWu!惔p\��4`	qB\�9tU�^��L,#.\�J\\I��Z���SO.��\��4\Z\�׾\'\�G�U.\��*.U\��|S��ߺ��-\�\�fϙ�\�b>\�D�\0D��C!�\�\��N\�\��z�͈\�.�{Bg�Ӡ�\�\��;H(���\�M����\�-N\�fMb���ց5\n��z�$�\�K�\�\�\�S��\�8MQ�pf�\"\�\�X��RQ�d�\�Xm\��5\0ou}�B�\�\���L�X��\�	Xo�G\�|Pu�s\�Ku��*\�dz+�\�ⴊ�:���\�?�v���\�U\�6\�\�N\Z�0tv\Zh䒢3\"��Z��\�g�8O�:A\�ti\�K�\�U�G\",�V<\�\��\�\�\�~\�\�Լ&\�&\�h\�\�a���\�\">jq\�[^\�\�50	�8kDX6R!�9\�Q�R�����c\�0*�AYN�d�\�c�e�ްU�C\�c\�o\�䂷m����E�M\�}\�ا\��JM%\�6\�AK�#�݀6(�\�\"_`\��F��q\�^ѫ*2\�u��M�\�n�\���O�\�w�\0\0\0l{����!�\�«V\�\�\�\�\�\�F��$D\�\�:$3�s�u\'���\�l�@\\D!\��\��x��󎈟M6\�.��g\�\�Ut)�+��Z�\'X\��;>��Ғ:��DAD\�S��\�Q�G\��$���\�IU�3F=\��c/�����~h\�L��8$�}\n����Mm����R�4�~��D\�u\�)\�G��T�Ƀ\�~\\�b`�r�h\�_b\�;�Q%.M\�\��\0\n�]%�L7[=IE&\�Ax�\�쀊{�����\n\�VD�50�\"�HM�K?o��\�\�\0W�\�ދ�u��b(\\��_xE\�I`.�[�7R_F,&=�\��\\Af�?\�@��\�\�\�\�*ofO4�z6f\�b$x���F#@$M�S2�\"����>��\�W)\"-�߄7`%��}\�r�>\�T!����-\�.a\\j�Љ���\040F�QΈ�C�`\�?\0��\n���\�hg8�#D�Z^�ޑ\��D\�H�vn���}�ـ�\�L6��b\�\0Qȴh�F\0��A�\�Ge{S>n�J�j��\��\Z�v�լ�-��/�Yf��	u�`\�y$BxjMD0�lu��C\�\�{��S9e\�q�sD\�DA��F�W\�\�\�~G\� $�\0\�\�+69u\�\�\�;7��\�앆�W:�րԑ�\�gZr\�*\�<\��\�oзk9R��֌�\�@�@\��ˮ7� \0�\�54��^ND\�U���00�a˳�q\��֗6L���T-�J��&\�U�t�\0�:$�HBy�P�	o�\0w�\�0,[�;2�֚��\�\�Р�t\n�\��\0\��4�>$�V\�[p\�\�`�S8��\Z�\�\�X*0���\��\0M\�!r\0��\�΄d\'�\0��� \'\�ޡX\�Tv�\�\�l|yx��\�\�&�\'\�^$\��4\�\�+H9�P�[I�\���S�\���\r(\�9���D�(J\�\��F\�`}��\�+_Lq\��\�\��֞\��7]]Z]�)\\�k\Zu�\�\�/\�M�	\�<��8��\�A_g��Q\��P\'@v�\�r���h�!ݼJ�H\�Pj)�\�\��P#͗�}4K�\\\��q\�(�D��퓚!V��K\'�\\�F<ӊ_��T\�;�nļQ2\�\�B^[�7y�v�:-��XOO���\�3,%cj��%X����\�o���\"t��%��>\�\�\0\�lێݤ��˄\�\� �\04_e�\�~��i\�C�\�\�>��\�\�\Z\�7Í�C�()#2�L�]\�&�^��ڳCDl��x-�<G\�\�fV�n�<4\����V(;��5�4e\�n����M]�VM�W�4G\�\r��{n�P�E���\�\�\�wqI�\�\�&z%%���J�Q\r\� ;�\�J?\�6�\��PH�XR\�=\�\�_�h0\0Q\�Ƀ�\����U�\��]��_��_\���ޓ���H�(s��A=��\�G\'ZM%�/.\�yi&�\�\�E`\�]hR(�l��4`�\�Vvl�B̡�gC�/\�\�,cpa\�O�O\��\ZA��Z��M�u\r[\��\�C\��9�\�\0��/϶^�\r\�\�\�x*�����:��I�\�zH�#�R]+wR\�BWK\�)>\� ;οQ�pl6�-�?�U\�a�}\�4A��\'1A\r|N����;Eu�\�/Ax\�x\�[zr\�D\���\�\�\rO`X\n9��0bM\�A\�^(�B\�\�\��O\�Zs)W\�Bh�\0�\�jL�5.�Y�\�x{�\�H�\�^	��Zp\�\�\�dTʬ�\��#���\�\"\'r�\�ғ54^\�\�3�1\�YΛ�A��š��,5\�SM2�\r\�ګ����\��\"%2�\�Fu�3ԁ\���\�%�\�]pP�bd�M\�(_I#\�\�\���\�\�\�mEx�G�\�u�z�vv��^�\�X�\0��\rZ`BN���\nK<�\�E0�Z]�\�$\�Meo�\�c\'\�\�It���l\�ӆ#�yTJ�p�b	dx\rY3\�J�l�,#�\�Sj\'�\�_��D�\Z{��\rQ�AI6.	�|�֫1D\�6\�Zm(�\0e��(vDȫ�\�@�\�=\�>hg5�\�\r�֢��<	gcܭ��\Z�\�/L�F��j9h28�%���0lN��GH5\�@_�X:��o{E\� `\�	#Wg�\�\�\�m���n�\�\�E\�e��\�@�\��\����\��4$�\�o\�Oܧ\�E1�D<I�\�]{�\�G60���ᨰ\�\�\r \��T�l\�ny�\�\�\nR�\�ݖ�[\\�\�f�0Cߨ	�\�\���Q@nw�\�4�ִTM_�W�x0\0*	:����\�\r\��\�*�S�h�3�\���JL4l\�\"\�\�?	�c\�(\�S\�\0�(\�\\0���Q,\0˦Z8-�\��yY]��EM��9,�)9[���p/\�M=\�ga�p�\�k\�\��\�\��\�\�׭�\�\�qlx<�^J�M����\"��\���~\�K1+\�OQ�BQ�\� �z�\Z=e\��E�8tz�\�\"d)��gKzHYI���\0\ZpRY䜽���t\���j\�� \�lU�F$	\�+\�ԋҩx\�؞_\�\�\�@�;\�%\��F�!(\�V\�\�/����\�>\'\Z%���+qM\Z�ڈ�C��/��q٠�\�z�<Sf>�q��\�\�}�e,�f��ݥ\�\���\��\0_��\�`r#>\r���}\�/�\�.\"��*�֌4Yj\�-��\�RQyZ�`�`�\�71ߢԽՁ]�G\�\"(�\��ֆ�s\�x�)1�,���MmT�NUs\�8R\�\Z���\�#�~(\'� �oڰQ�\�eg��\�\�L/��\�69qX��\�-ٵnJ�\0�0NI\�\�i�\�gvH\�\"Is\�DǈJ\��\r8`��M8�>�I\�i��Vpas]\�x�\���ҁ\��F���\0gr\rk�\��$�Q�Ne�׮\�4	a����\��8�\'o\�\�\�a/u<?Z%A\0\\�N��C\�2Hwu\��\���q�\�\�߆�렻�-s)%rگ�c�KH�4�@�\'TI~\�6�P:fNReN\�า$In���\�(U�\�\�\rD�f�\0`o�\ny�#�B\�3R��t;;�$B \�\��X��E�e7o�֙�9\�7>��0(w\Z���RL��\�\�\�(�7�\�','Matijasevic','examinee','mn');
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
