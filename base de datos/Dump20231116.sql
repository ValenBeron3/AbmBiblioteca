-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `idautores` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `paisorigen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idautores`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Lurline','Burhouse','Philippines'),(2,'Kip','Robilliard','United States'),(3,'Eddy','Fishenden','Sweden'),(4,'Fernandina','Theakston','China'),(5,'Ranee','Checklin','Indonesia'),(6,'Meade','Gostall','Portugal'),(7,'Fax','Dameisele','Brazil'),(8,'Bernhard','Igoe','Russia'),(9,'Micky','Minithorpe','Taiwan'),(10,'Malinde','Gossington','United States'),(11,'Chrisy','Kennerknecht','China'),(12,'Van','Kenen','Argentina'),(13,'Freida','Barfield','China'),(14,'Tamarra','Lockyear','Ukraine'),(15,'Orelee','Devonish','Kuwait'),(16,'Shirline','Crasford','Japan'),(17,'Lotty','Chesser','United States'),(18,'Fifine','Brunt','Sweden'),(19,'Erny','Blenkinsop','China'),(20,'Rene','Self','Indonesia'),(21,'Felicdad','Oldford','Indonesia'),(22,'Timmie','Speere','United States'),(23,'Trula','Keel','Philippines'),(24,'Esther','Le Sieur','Ireland'),(25,'Yvor','Bortolini','Peru'),(26,'Frederique','Gasker','Brazil'),(27,'Harriett','Icke','Faroe Islands'),(28,'Darnall','Siney','Saudi Arabia'),(29,'Domini','Mennithorp','Colombia'),(30,'Glenda','Verrick','Peru'),(31,'Brandea','Thackham','Malaysia'),(32,'Kellsie','Ferson','Libya'),(33,'Berget','Barniss','Russia'),(34,'Ralph','MacMenamy','Indonesia'),(35,'Anne-marie','Eyree','China'),(36,'Emilio','Kenwell','China'),(37,'Irena','Toppin','Brazil'),(38,'Norina','Calleja','Russia'),(39,'Lock','Simkovich','Tunisia'),(40,'Der','Bovingdon','Mexico'),(41,'Ursola','Shorthill','Indonesia'),(42,'Gibbie','Easun','Indonesia'),(43,'Morten','Lambdin','Philippines'),(44,'Angeline','Terese','Serbia'),(45,'Evangelina','MacNucator','Indonesia'),(46,'Helaine','Doone','China'),(47,'Cristiano','Shorton','Indonesia'),(48,'Jamil','Leal','Cameroon'),(49,'Peadar','Runnacles','Indonesia'),(50,'Shirlene','La Padula','China'),(51,'Fitzgerald','Wormell','Nicaragua'),(52,'Louise','Mungin','Philippines'),(53,'Barbie','Cribbins','Philippines'),(54,'Alvan','Hawkslee','Poland'),(55,'Bird','Mainland','China'),(56,'Milton','Leach','Philippines'),(57,'Joyce','Alenshev','China'),(58,'Terese','Buckland','China'),(59,'Drugi','D\'eye','Poland'),(60,'Keelia','Catonnet','Philippines'),(61,'Menard','Prover','Serbia'),(62,'Hildegaard','Kettlestring','Argentina'),(63,'Teirtza','Macveigh','China'),(64,'Antony','Beedle','Poland'),(65,'Dunn','Crat','Mexico'),(66,'Jere','Caltera','Cape Verde'),(67,'Urbanus','Kemish','Brazil'),(68,'Barrett','Mattioli','Philippines'),(69,'Evelina','Houlworth','Benin'),(70,'Fanny','Rembaud','Latvia'),(71,'Ashely','Negal','Sweden'),(72,'Carey','Gauler','Indonesia'),(73,'Janis','Varrow','Argentina'),(74,'Danyette','Lansdown','Ireland'),(75,'Alysa','Fontelles','Portugal'),(76,'Milo','Wilsher','Philippines'),(77,'Retha','Titchener','Ukraine'),(78,'Kennan','Frayling','Sweden'),(79,'Isadora','Gook','China'),(80,'Gail','Chaperlin','Mexico'),(81,'Beck','Chanter','Poland'),(82,'Teresina','Casoni','China'),(83,'Elvina','Trewartha','France'),(84,'Shelby','Beltzner','Slovenia'),(85,'Gert','Benting','China'),(86,'Trixie','Looney','Honduras'),(87,'Colene','Tixier','China'),(88,'Rozalin','Mosby','Portugal'),(89,'Nancie','Ropcke','Indonesia'),(90,'Sande','Leys','Nepal'),(91,'Sylas','Boylin','Poland'),(92,'Melisse','Shee','China'),(93,'Perla','Reddick','Philippines'),(94,'Aubine','Cookley','Ukraine'),(95,'Jorgan','Brion','Puerto Rico'),(96,'Allister','Von Hindenburg','Russia'),(97,'Margaretta','Work','China'),(98,'Silvanus','Gothup','Peru'),(99,'Carole','Sokale','Greece'),(100,'Nathanial','Bacon','Finland'),(102,'martina','giaroli',NULL);
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
  `ideditoriales` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`ideditoriales`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'Goldner-Nienow'),(2,'Schultz-Daniel'),(3,'Becker, Auer and Jones'),(4,'Hilpert-Braun'),(5,'Powlowski and Sons'),(6,'Beier Inc'),(7,'VonRueden Inc'),(8,'Kassulke Inc'),(9,'Shanahan LLC'),(10,'Larkin LLC'),(11,'Ebert Group'),(12,'Davis-Bahringer'),(13,'Hickle, Hansen and Dare'),(14,'Gottlieb-Schoen'),(15,'Hand-Simonis'),(16,'Bechtelar-Treutel'),(17,'Rohan Inc'),(18,'Wilkinson-Veum'),(19,'Hirthe Inc'),(20,'Lesch Group'),(21,'Dietrich-Konopelski'),(22,'Torp Inc'),(23,'Bashirian-Hettinger'),(24,'Thompson Inc'),(25,'Bergstrom-Strosin'),(26,'Bogisich-Schroeder'),(27,'Luettgen and Sons'),(28,'Mante and Sons'),(29,'Frami Inc'),(30,'West-Gottlieb'),(31,'Zemlak-Romaguera'),(32,'Wilkinson-Howell'),(33,'Volkman-Kiehn'),(34,'Hegmann-Sauer'),(35,'Kessler and Sons'),(36,'Cummings, Huel and Ruecker'),(37,'Tromp, Johnston and Langosh'),(38,'Macejkovic and Sons'),(39,'Murray, O\'Keefe and Brown'),(40,'Lang and Sons'),(41,'Weimann Inc'),(42,'Lockman, Nienow and Kuhlman'),(43,'Braun, Wolf and Dicki'),(44,'Heller-West'),(45,'Cassin, Jakubowski and Farrell'),(46,'Wolf-Lindgren'),(47,'McDermott-Fritsch'),(48,'Goldner-Abernathy'),(49,'Friesen-O\'Conner'),(50,'Macejkovic, Jerde and Zieme'),(51,'Muller-Sauer'),(52,'DuBuque Group'),(53,'Kulas, Smitham and Tromp'),(54,'Lemke, Beatty and Strosin'),(55,'Connelly Inc'),(56,'McLaughlin LLC'),(57,'Wilderman-Hauck'),(58,'Kemmer, Stamm and Miller'),(59,'Weimann, Olson and Paucek'),(60,'Reilly-Kihn'),(61,'Kuhlman, Schuster and Schimmel'),(62,'Hettinger and Sons'),(63,'Braun-Lockman'),(64,'Bednar LLC'),(65,'Ortiz, Bode and Hills'),(66,'Skiles, Cartwright and Schuster'),(67,'Ankunding, Hirthe and Collier'),(68,'Sauer LLC'),(69,'Lehner Inc'),(70,'Schroeder, Wintheiser and Schimmel'),(71,'Farrell-Batz'),(72,'Oberbrunner-DuBuque'),(73,'Goldner Inc'),(74,'Buckridge, Becker and Towne'),(75,'Yost, Crist and Wiegand'),(76,'Rice-Goldner'),(77,'Grady and Sons'),(78,'Hilll-Beer'),(79,'Hartmann-Cruickshank'),(80,'Auer and Sons'),(81,'McGlynn-Zemlak'),(82,'Ferry, DuBuque and Herzog'),(83,'Reichert Inc'),(84,'Blick and Sons'),(85,'Frami Inc'),(86,'Kunze-Sporer'),(87,'Denesik Inc'),(88,'Howe-Kessler'),(89,'Harvey-Lesch'),(90,'Kozey-Pollich'),(91,'Ledner-Hirthe'),(92,'Davis, Olson and Bins'),(93,'Lemke, Wiza and Bins'),(94,'Walsh, Corkery and Zemlak'),(95,'Flatley and Sons'),(96,'Cassin Group'),(97,'Schaden-Maggio'),(98,'Crooks-Brown'),(99,'Lang, Herman and Schaden'),(100,'Kilback, Kertzmann and Bergnaum'),(101,'editorial san rafael');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Adventure|Children|Drama'),(2,'Drama|Mystery|Thriller'),(3,'Action|Comedy'),(4,'Horror|Thriller'),(5,'Horror'),(6,'Comedy|Romance'),(7,'Animation|Musical'),(8,'Documentary'),(9,'Drama|Romance'),(10,'Comedy'),(11,'Drama'),(12,'Action|Adventure|Comedy|War'),(13,'Drama|Musical|Romance'),(14,'Comedy'),(15,'Comedy|War'),(16,'Horror|Thriller'),(17,'Comedy'),(18,'Action|Adventure|Animation|Comedy|Sci-Fi'),(19,'Comedy'),(20,'Comedy|Crime|Mystery'),(21,'Comedy|Fantasy|Thriller'),(22,'Comedy'),(23,'Action|Adventure|Drama|Romance|Western'),(24,'Comedy'),(25,'Drama'),(26,'Action'),(27,'Adventure|Western'),(28,'Drama'),(29,'(no genres listed)'),(30,'Documentary'),(31,'Crime|Horror|Mystery'),(32,'Drama'),(33,'Thriller'),(34,'Documentary'),(35,'Documentary'),(36,'Horror'),(37,'Comedy'),(38,'Adventure|Crime|Drama|Romance'),(39,'Horror|Sci-Fi|Thriller'),(40,'Action|Horror|Sci-Fi'),(41,'Documentary'),(42,'Crime|Drama|Thriller'),(43,'Drama'),(44,'Comedy|Drama'),(45,'Drama'),(46,'Comedy'),(47,'Drama'),(48,'Documentary'),(49,'Drama'),(50,'Comedy|Musical|Romance'),(51,'Horror'),(52,'Documentary'),(53,'Comedy'),(54,'Drama'),(55,'Action|Adventure|Thriller'),(56,'Horror|Thriller'),(57,'Drama'),(58,'Drama|Romance'),(59,'Comedy|Musical|Romance'),(60,'Comedy'),(61,'Drama'),(62,'Action|Comedy|Sci-Fi'),(63,'Action|Crime|Thriller'),(64,'Comedy'),(65,'Drama'),(66,'Comedy|Crime|Thriller'),(67,'Documentary|Horror'),(68,'Animation'),(69,'Action|Horror|Sci-Fi'),(70,'Drama|Romance'),(71,'Action|Thriller'),(72,'Comedy|Drama'),(73,'Comedy|Drama|Romance'),(74,'Action|Drama|Romance|War'),(75,'(no genres listed)'),(76,'Comedy|Drama|Musical'),(77,'Action|Drama'),(78,'Drama|Horror|Romance'),(79,'Comedy'),(80,'Crime|Drama|Film-Noir'),(81,'Adventure|Comedy|Drama'),(82,'Comedy|Crime'),(83,'Horror|Mystery|Thriller'),(84,'Action|Sci-Fi'),(85,'Horror'),(86,'Action|Adventure|Fantasy'),(87,'Documentary'),(88,'Animation|Children|Drama'),(89,'Adventure|Comedy|Drama'),(90,'Documentary'),(91,'Comedy|Crime|Drama'),(92,'Comedy|Drama'),(93,'Action|Animation|Sci-Fi|Western'),(94,'Animation'),(95,'Action|Crime'),(96,'Comedy'),(97,'Documentary'),(100,'Drama|Thriller'),(101,'ciencia ficcion');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `ISBN` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `idautores` int NOT NULL,
  `idgeneros` int DEFAULT NULL,
  `ideditoriales` int NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `idautores_idx` (`idautores`),
  KEY `idgeneros_idx` (`idgeneros`),
  KEY `ideditoriales_idx` (`ideditoriales`),
  CONSTRAINT `idautores` FOREIGN KEY (`idautores`) REFERENCES `autores` (`idautores`),
  CONSTRAINT `ideditoriales` FOREIGN KEY (`ideditoriales`) REFERENCES `editoriales` (`ideditoriales`),
  CONSTRAINT `idgeneros` FOREIGN KEY (`idgeneros`) REFERENCES `genero` (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Silverado',1,15,41,0),(2,'Original Sin',2,12,92,0),(3,'Phantom of the Opera',53,3,43,0),(4,'Worlds Apart (To verdener)',48,4,74,0),(5,'Tess',5,85,85,0),(6,'Miracle of Bern, The (Wunder von Bern, Das)',6,6,6,1),(7,'King of New York',74,7,75,0),(8,'Conrack',8,8,88,1),(9,'Volver',9,89,9,0),(11,'Criminal Code, The',45,1,71,1),(12,'Tyler Perry\'s Why Did I Get Married Too?',3,52,72,1),(13,'A Cinderella Story: Once Upon a Song',16,13,53,1),(14,'Circus, The',17,19,24,1),(15,'Loveless, The (Breakdown)',15,15,15,0),(16,'Norm MacDonald: Me Doing Standup',6,16,5,0),(17,'Disney Sing Along Songs: Under the Sea',57,7,7,1),(18,'Midnight Clear, A',8,59,89,0),(19,'Hallelujah!',19,19,8,0),(20,'iSteve',89,2,27,0),(21,'Heroes of Telemark',2,NULL,99,1),(22,'20 Seconds of Joy',22,22,22,0),(23,'Whisper of the Heart (Mimi wo sumaseba)',3,23,93,1),(24,'Love Simple',4,24,2,1),(25,'Charleston',25,28,22,1),(26,'Stephen Fry In America - New World',26,26,26,0),(27,'Very Ordinary Couple (Yeonaeui Wondo)',27,27,27,1),(28,'Forbidden Planet',28,28,28,0),(29,'Back in the Day',29,29,29,1),(40,'Day the Earth Stood Still, The',2,40,90,0),(41,'Short Eyes',41,4,75,1),(42,'Babes on Broadway',42,42,42,0),(43,'Finding Forrester',43,43,43,0),(44,'Everyday People',47,59,4,0),(45,'It Had to Be You',5,45,43,0),(46,'Must Love Dogs',96,46,1,1),(47,'Hunting and Gathering (Ensemble, c\'est tout)',67,47,7,1),(48,'Hell of a Day, A (Reines d\'un jour)',96,1,48,1),(49,'Twelfth Night',49,49,49,1),(50,'Jimi Hendrix: Hear My Train A Comin\'',50,50,50,1),(51,'Bamba, La',51,51,51,0),(52,'Scanner Darkly, A',52,52,52,0),(60,'Koch',26,6,69,1),(61,'The Amazing Spider-Man 2',61,1,61,1),(62,'Games',6,32,59,0),(63,'What Would Jesus Buy?',63,3,63,1),(64,'Kramer vs. Kramer',6,64,4,0),(65,'Bride of the Monster',5,65,45,1),(66,'Riders of Destiny',46,29,36,0),(67,'Passion Flower',6,95,67,1),(68,'PTU',8,68,36,0),(69,'Ween Live in Chicago',100,9,6,1),(70,'Gold Rush, The',36,70,7,0),(71,'Pontypool',71,71,71,1),(72,'Memories (Memorîzu)',2,1,12,0),(73,'Chicago',25,73,15,1),(75,'Ixcanul Volcano',5,46,11,0),(76,'Batman: Mystery of the Batwoman',66,76,46,0),(77,'Bad Timing: A Sensual Obsession',77,89,7,1),(78,'Last Bolshevik, The (Tombeau d\'Alexandre, Le)',78,5,9,1),(79,'Family Viewing',79,79,79,1),(81,'Monster House',81,81,81,1),(82,'Babylon A.D.',89,8,99,0),(83,'Time Changer',3,83,33,0),(84,'Love You You',84,84,84,0),(85,'Anna Karenina',5,22,85,0),(86,'Pact, The',86,69,86,0),(87,'Life of Reilly, The',87,8,87,0),(88,'The Hire: Ambush',8,88,100,0),(89,'The Auction',9,33,33,0),(90,'Natural City',100,59,9,1),(92,'Speedway',9,92,2,1),(93,'Blood Games ',93,3,93,1),(94,'Erkan & Stefan 3',94,4,94,1),(95,'Who the F**K Is Arthur Fogel',55,95,75,1),(96,'Mediterraneo',96,59,9,1),(97,'Charlie Chan at the Circus',18,97,7,1),(98,'Long Kiss Goodnight, The',9,83,98,1),(101,'la vita e bela',5,9,6,0);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamoss`
--

DROP TABLE IF EXISTS `prestamoss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamoss` (
  `idprestamos` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_ISBN` int DEFAULT NULL,
  PRIMARY KEY (`idprestamos`),
  KEY `idusuarios_idx` (`id_ISBN`),
  CONSTRAINT `id_ISBN` FOREIGN KEY (`id_ISBN`) REFERENCES `libros` (`ISBN`),
  CONSTRAINT `idusuarios` FOREIGN KEY (`id_ISBN`) REFERENCES `libros` (`ISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamoss`
--

LOCK TABLES `prestamoss` WRITE;
/*!40000 ALTER TABLE `prestamoss` DISABLE KEYS */;
INSERT INTO `prestamoss` VALUES (1,66,65),(2,94,12),(4,20,47),(5,77,40),(10,8,97),(11,63,22),(14,50,79),(15,43,94),(16,69,7),(17,21,65),(18,68,49),(19,93,16),(20,53,85),(21,67,60),(22,88,5),(23,61,89),(24,63,46),(25,42,69),(26,19,90),(27,92,88),(28,63,50),(29,63,63),(30,27,45),(31,41,71),(32,36,64),(33,13,62),(35,34,4),(36,17,72),(38,60,82),(39,29,1),(40,17,84),(41,61,41),(42,94,48),(43,38,73),(45,68,9),(46,8,75),(47,47,11),(48,18,51),(49,4,66),(50,16,83),(51,66,81),(52,4,78),(54,44,44),(55,35,14),(56,66,87),(57,33,3),(58,21,93),(59,2,29),(60,41,15),(61,54,23),(62,60,27),(64,38,52),(65,44,67),(66,1,2),(67,18,76),(68,25,95),(69,2,26),(70,20,24),(71,58,19),(73,20,92),(75,65,20),(76,6,70),(78,44,77),(79,50,21),(80,48,42),(82,83,98),(83,40,6),(85,20,8),(86,81,61),(91,38,17),(93,55,96),(94,15,86),(95,85,68),(96,85,13),(97,46,43),(99,58,18),(100,16,25),(102,6,98),(103,7,4);
/*!40000 ALTER TABLE `prestamoss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuarios` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `dni` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'Betsey','Glenny','230 Westerfield Point','79-853-4434','bglenny1@bandcamp.com'),(3,'Arlie','Mapstone','385 Gale Alley','39-194-5851','amapstone2@samsung.com'),(4,'Francesca','McKew','114 Morningstar Terrace','06-347-0692','fmckew3@wufoo.com'),(5,'Missy','Twelve','740 Nancy Street','89-196-5502','mtwelve4@booking.com'),(6,'Major','Mowday','6896 Independence Road','57-491-7491','mmowday5@icio.us'),(7,'Blaire','Brown','7 High Crossing Street','08-431-5287','bbrown6@paypal.com'),(8,'Corbet','Brennans','8121 Dunning Trail','63-851-2199','cbrennans7@blogtalkradio.com'),(9,'Owen','Boys','86397 Granby Point','02-323-8864','oboys8@smh.com.au'),(10,'Basile','Minshaw','1670 Derek Terrace','49-192-3289','bminshaw9@scribd.com'),(11,'Rollins','Jedras','411 Bowman Avenue','98-968-4605','rjedrasa@qq.com'),(12,'Vickie','Chellingworth','88 Golf Course Terrace','33-315-6938','vchellingworthb@a8.net'),(13,'Fremont','Ninnotti','4 Moland Pass','97-741-2336','fninnottic@posterous.com'),(14,'Ramsay','Rhyme','28770 Dahle Terrace','51-149-8411','rrhymed@php.net'),(15,'Bartolomeo','Yakobovicz','5313 Starling Crossing','80-146-7222','byakobovicze@feedburner.com'),(16,'Hayes','Kingscote','0 Truax Center','46-360-9812','hkingscotef@hc360.com'),(17,'Stephie','Mapstone','34809 Blue Bill Park Trail','93-193-4820','smapstoneg@qq.com'),(18,'Sully','Radborne','140 Gerald Crossing','79-484-7027','sradborneh@forbes.com'),(19,'Debi','Guitt','11373 Amoth Place','20-303-2691','dguitti@nymag.com'),(20,'Tomlin','McMurray','93 Valley Edge Street','61-402-6030','tmcmurrayj@usda.gov'),(21,'Sorcha','Brandenberg','5 Warrior Avenue','78-114-8432','sbrandenbergk@posterous.com'),(22,'Tracie','Starrs','704 Derek Parkway','77-808-8352','tstarrsl@hatena.ne.jp'),(23,'Lilla','Gorusso','4881 Clove Plaza','13-157-5578','lgorussom@businesswire.com'),(24,'Ingaberg','Elden','9 Autumn Leaf Pass','60-099-3290','ieldenn@indiegogo.com'),(25,'Evonne','Meffen','51 Dexter Road','01-199-1661','emeffeno@netvibes.com'),(26,'Naomi','Carass','08272 Dwight Street','46-339-3421','ncarassp@blinklist.com'),(27,'Isobel','Hankard','5 Old Shore Street','97-560-3617','ihankardq@opera.com'),(28,'Riccardo','Cogswell','90 Harbort Crossing','73-980-3100','rcogswellr@independent.co.uk'),(29,'Cecilia','Kuhnhardt','906 American Ash Hill','42-708-7758','ckuhnhardts@blog.com'),(30,'Shannon','Shrimpling','3 Hallows Avenue','90-700-3860','sshrimplingt@google.pl'),(31,'Rita','Faich','0918 Nancy Point','30-881-9249','rfaichu@abc.net.au'),(32,'Nikolaus','Gillaspy','6869 Heath Way','13-842-6085','ngillaspyv@squidoo.com'),(33,'Judi','Butterwick','04424 Del Mar Pass','24-889-3029','jbutterwickw@jiathis.com'),(34,'Alessandra','Lukins','8 Summit Pass','07-252-4159','alukinsx@pinterest.com'),(35,'Rriocard','Cheston','9607 Lawn Road','13-828-5209','rchestony@wp.com'),(36,'Cate','MacTavish','1 Birchwood Road','77-970-6768','cmactavishz@pagesperso-orange.fr'),(37,'Sergio','Chasmar','2550 Buell Hill','44-785-0958','schasmar10@chron.com'),(38,'Leodora','Scollick','2844 Grim Crossing','68-483-6382','lscollick11@booking.com'),(39,'Claudianus','Flanders','8 Mallory Junction','20-121-5914','cflanders12@printfriendly.com'),(40,'Calla','Willerson','5 Killdeer Center','64-121-1640','cwillerson13@slate.com'),(41,'Shel','Blaszczak','6 Cottonwood Hill','40-719-0628','sblaszczak14@nymag.com'),(42,'Baxy','Pladen','248 Sloan Place','27-319-0664','bpladen15@sogou.com'),(43,'Alisander','Kirkpatrick','8 Cherokee Terrace','02-208-5240','akirkpatrick16@senate.gov'),(44,'Shalom','Bolding','24167 Morning Street','43-099-6594','sbolding17@yandex.ru'),(45,'Joceline','Swales','3991 Stuart Point','60-330-2139','jswales18@google.com'),(46,'Nettie','Nelhams','651 Bunting Pass','09-000-5100','nnelhams19@angelfire.com'),(47,'Heather','Bulter','0 Quincy Circle','68-056-2050','hbulter1a@xrea.com'),(48,'Virginie','Rudwell','01129 2nd Point','29-628-0939','vrudwell1b@123-reg.co.uk'),(49,'Archambault','Pimmocke','72392 Luster Pass','67-775-0782','apimmocke1c@163.com'),(50,'Mick','Maunsell','03421 Lakewood Gardens Alley','97-510-0883','mmaunsell1d@fda.gov'),(51,'Brande','Jeckell','78534 Loeprich Pass','79-202-4203','bjeckell1e@loc.gov'),(52,'Mortie','Buske','0 Westend Park','47-128-5588','mbuske1f@unblog.fr'),(53,'Alric','Warry','67158 Farwell Junction','90-770-8235','awarry1g@mapy.cz'),(54,'Cassandry','Gingold','2 Pepper Wood Lane','25-383-5288','cgingold1h@trellian.com'),(55,'Guinna','Dorie','72 Stoughton Drive','29-108-6471','gdorie1i@howstuffworks.com'),(56,'Terrill','Bortoletti','221 Daystar Parkway','38-818-9263','tbortoletti1j@ocn.ne.jp'),(57,'Jethro','Tidcomb','0 Carey Plaza','26-731-0347','jtidcomb1k@mac.com'),(58,'Basile','Skone','66 Burning Wood Center','88-224-0949','bskone1l@google.it'),(59,'Dew','Attack','328 Packers Alley','24-933-2789','dattack1m@gov.uk'),(60,'Jami','Warcop','61 Lukken Circle','87-367-5737','jwarcop1n@pinterest.com'),(61,'Nolie','McGuirk','94 Nova Center','98-768-2579','nmcguirk1o@marriott.com'),(62,'Ignazio','Corkitt','130 Grayhawk Street','46-273-9762','icorkitt1p@ca.gov'),(63,'Rudolfo','Di Matteo','95537 Thackeray Park','59-101-0835','rdimatteo1q@storify.com'),(64,'Paule','Goff','704 Knutson Way','87-906-7066','pgoff1r@skyrock.com'),(65,'Reeva','Filip','1 Green Drive','50-654-0082','rfilip1s@noaa.gov'),(66,'Mathilda','Ashburne','887 4th Street','49-943-2487','mashburne1t@arizona.edu'),(67,'Portie','Cerith','60 Columbus Hill','98-632-4860','pcerith1u@noaa.gov'),(68,'Nancee','Lafond','750 Stephen Hill','21-656-4693','nlafond1v@digg.com'),(69,'Viviana','Fossey','2882 Garrison Pass','02-212-7860','vfossey1w@yolasite.com'),(70,'Patrizius','Ladon','550 Farmco Court','69-870-7360','pladon1x@youtube.com'),(71,'Dew','Keedy','4 Garrison Junction','90-060-1825','dkeedy1y@squarespace.com'),(72,'Dalis','Carous','61 High Crossing Lane','95-180-8699','dcarous1z@ftc.gov'),(73,'Granthem','Smullin','64182 Ronald Regan Road','58-887-6329','gsmullin20@freewebs.com'),(74,'Giulia','Mugford','5625 Lindbergh Alley','81-143-9849','gmugford21@blog.com'),(75,'Joseito','Zorer','9526 Coleman Lane','39-437-6063','jzorer22@g.co'),(76,'Neil','Docksey','8677 Pine View Plaza','72-021-3204','ndocksey23@unc.edu'),(77,'Abram','Shearsby','03421 Muir Hill','68-386-3649','ashearsby24@nydailynews.com'),(78,'Chane','Batting','08 Thierer Court','46-983-2891','cbatting25@wunderground.com'),(79,'Sharl','Trewin','063 Messerschmidt Pass','09-701-9015','strewin26@sourceforge.net'),(80,'Britte','Goley','917 Brentwood Way','81-143-6906','bgoley27@cam.ac.uk'),(81,'Ferne','Ledgerton','6 Northfield Court','03-128-6858','fledgerton28@bbc.co.uk'),(82,'Vale','Segot','828 Maryland Hill','58-802-1876','vsegot29@ocn.ne.jp'),(83,'Sibel','Raimbauld','3524 Steensland Point','50-339-2399','sraimbauld2a@github.com'),(84,'Maryellen','Stoffel','18018 Nova Lane','43-488-8458','mstoffel2b@wix.com'),(85,'Mickey','Carswell','383 Crowley Terrace','18-960-2073','mcarswell2c@dropbox.com'),(86,'Nikolaus','Gaukrodge','8760 Evergreen Center','27-713-7713','ngaukrodge2d@aol.com'),(87,'Celle','Southward','52443 Lukken Circle','57-563-8196','csouthward2e@jimdo.com'),(88,'Carr','Ritmeier','4 Carey Point','41-613-9303','critmeier2f@altervista.org'),(89,'Tansy','Clausen-Thue','17527 Novick Street','38-020-5968','tclausenthue2g@shop-pro.jp'),(90,'Susi','Haselgrove','44 Dayton Circle','07-722-6664','shaselgrove2h@irs.gov'),(91,'Gwenette','Eschalotte','7 Farwell Lane','79-090-4452','geschalotte2i@ehow.com'),(92,'Bernardo','Ponnsett','3241 Boyd Terrace','82-525-0751','bponnsett2j@amazon.co.uk'),(93,'George','Scoon','12 Starling Alley','84-651-1589','gscoon2k@themeforest.net'),(94,'Rochette','Gething','73904 Tennessee Way','15-727-1780','rgething2l@google.com.hk'),(95,'Caryl','Ondrusek','43 Superior Alley','02-583-5165','condrusek2m@simplemachines.org'),(96,'Dode','Upcraft','588 Corry Crossing','14-431-7667','dupcraft2n@walmart.com'),(97,'Janey','Cotelard','73268 Oneill Alley','10-716-7245','jcotelard2o@webmd.com'),(98,'Ciel','Ahrens','03837 Michigan Point','45-769-3595','cahrens2p@slashdot.org'),(99,'Bartholomew','Copper','453 Rieder Center','24-901-0871','bcopper2q@washingtonpost.com'),(100,'Sarene','Sundin','6 Lillian Hill','47-796-3672','ssundin2r@github.io'),(101,'juli','galdamez','diez martin','42-505-240','juli@gmail.com'),(104,'pepe','pony','pepolandia 152','45987654','pepito@gmail.com'),(105,'lucas','ortega','paunero 506','43525695','luca@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-16 16:53:23
