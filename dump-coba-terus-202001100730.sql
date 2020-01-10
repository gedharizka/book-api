-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: localhost    Database: coba-terus
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) unsigned NOT NULL DEFAULT '0.00',
  `weight` double(8,2) unsigned NOT NULL DEFAULT '0.00',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `stock` int(10) unsigned NOT NULL DEFAULT '1',
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISH',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Cumque omnis ipsa sit','cumque-omnis-ipsa-sit','Est soluta consequatur quis omnis vel. Repudiandae reprehenderit voluptate nemo veritatis modi quaerat et deserunt. Laborum atque velit est velit dignissimos et. Omnis minus animi quia accusamus maiores unde facere.','Ms. Carli Will Jr.','Hills, Metz and Gaylord','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\ed4df6e640c5798ed71770603ea997a4.jpg',300000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:43',NULL,NULL,NULL,NULL,NULL),(2,'Ut quaerat beatae','ut-quaerat-beatae','Harum voluptatem dolores vitae veniam numquam porro. Incidunt error quos impedit est. Est in quos quaerat autem et et et. Doloremque provident eos quis necessitatibus occaecati.','Darion Bosco','Glover-Bradtke','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\048059d3bc4af4c9b4a66040bfd714e4.jpg',50000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:44',NULL,NULL,NULL,NULL,NULL),(3,'Autem delectus mollitia aliquid magni','autem-delectus-mollitia-aliquid-magni','Possimus quo facilis dignissimos. Quidem culpa dolores ut harum. In sit ea temporibus tenetur. Quia quidem ea ut quibusdam recusandae quaerat. Dolores rerum nihil vero inventore consequatur cum rem cum.','Ms. Elva Larkin','Hills-Cummings','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\f4a088c7b8fff1ce93157822efba1e7b.jpg',350000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:46',NULL,NULL,NULL,NULL,NULL),(4,'Eligendi harum consequatur voluptates laborum fuga dolore quos','eligendi-harum-consequatur-voluptates-laborum-fuga-dolore-quos','Doloremque quos unde dolor qui enim deserunt. Odio perspiciatis corporis aut voluptatem ut ut quibusdam quis. Dolorem dicta alias fuga impedit doloribus omnis necessitatibus. Perferendis omnis eligendi molestias quis minima.','Lucy Baumbach MD','Fahey Inc','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\25d91ddccdca997cf65c3ecd79060a7a.jpg',200000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:47',NULL,NULL,NULL,NULL,NULL),(5,'Sit consequatur recusandae','sit-consequatur-recusandae','Aliquid expedita nobis eum illo consequatur. Veritatis facilis tenetur deleniti reiciendis. Aliquid sapiente dolor hic aut autem voluptatibus. Vel cum dolor qui aut sit harum ut dignissimos.','Jazmyn Lowe','Rice, Kub and Lubowitz','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\85e5171c97c142092546155e364c8cc4.jpg',300000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:48',NULL,NULL,NULL,NULL,NULL),(6,'Quia similique nesciunt molestias minus eum','quia-similique-nesciunt-molestias-minus-eum','Et non in quas. Veniam velit laboriosam deserunt ut aut. Blanditiis quam voluptatum distinctio rerum ipsam consequatur ut. Atque sed dicta aut ipsa deserunt. Error iste et consequatur libero esse autem odit rerum.','Hudson Wyman','Flatley-Stehr','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\e4c379cb1cf4f4e2b729c977093a897e.jpg',200000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:50',NULL,NULL,NULL,NULL,NULL),(7,'Corrupti possimus eos et excepturi','corrupti-possimus-eos-et-excepturi','Velit atque sit qui placeat. Sunt ut laborum accusantium molestiae voluptas doloribus. Expedita qui velit quas qui. Iure odio cupiditate magnam sint facere ducimus veniam impedit.','Marisol Bradtke','Kohler, Lehner and King','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\d4a01e93819e89505fc96a10cdd541b5.jpg',50000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:51',NULL,NULL,NULL,NULL,NULL),(8,'Fuga praesentium deserunt soluta minima ex','fuga-praesentium-deserunt-soluta-minima-ex','Quas voluptate est voluptatum nam quas consectetur dolore. Aut ad consequuntur et reprehenderit sequi. Hic quis et enim laborum. Odit voluptate hic assumenda enim quam sunt.','Neal Runte V','Breitenberg Ltd','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\44d0fd134f3e0f52839f66a77f55bb88.jpg',250000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:52',NULL,NULL,NULL,NULL,NULL),(9,'Vel totam est','vel-totam-est','Molestiae quos quisquam nostrum consequatur perspiciatis vitae. Incidunt culpa harum velit aut veritatis aperiam. Eos et facilis et. Nulla sed esse beatae nemo voluptas.','Toby Kunde','Schumm, Tromp and Okuneva','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\afe66ae545cea3720d9b6619811c4400.jpg',200000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:54',NULL,NULL,NULL,NULL,NULL),(10,'Magnam architecto omnis et ducimus','magnam-architecto-omnis-et-ducimus','Cumque facilis laboriosam ratione omnis consequatur. Quam nisi commodi excepturi. Velit voluptatem ipsam nam odit. Corrupti vitae doloremque minus sit enim.','Prof. Hannah Toy','Ruecker Group','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\91e1f55ca3ec138abfcc6d01c8e0ec07.jpg',300000.00,0.50,0,1,'PUBLISH','2020-01-09 15:49:56',NULL,NULL,NULL,NULL,NULL),(11,'Enim optio non nisi','enim-optio-non-nisi','Est aut deserunt labore assumenda molestiae. Magni omnis et deleniti dolore beatae delectus. Accusantium possimus consequatur laudantium quam nisi quis qui at. Magnam est laboriosam qui qui sed id ut ea. Hic aspernatur autem repellat omnis beatae.','Rene Kihn','Conroy LLC','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\a86d034579729d5fbcc528f61429f28c.jpg',200000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:01',NULL,NULL,NULL,NULL,NULL),(12,'Ea dolor ex hic tempora','ea-dolor-ex-hic-tempora','Aspernatur quam dolorem ducimus modi veniam quisquam vel sunt. Eligendi unde et iste itaque aut. Fugiat illum dolorum voluptates dolor ipsa voluptatem sint.','Kristofer McClure','Armstrong Ltd','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\31a9bd34d08d9224e2306d2e2934cb0e.jpg',350000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:05',NULL,NULL,NULL,NULL,NULL),(13,'Veniam ab eum','veniam-ab-eum','Quis sequi repellat in vel laborum. Eum quia placeat distinctio sequi. Repellendus neque quis nam ut.','Javon Lockman Jr.','Hodkiewicz-Treutel','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\cc781559c0f2cb43da2dab48179cf751.jpg',400000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:08',NULL,NULL,NULL,NULL,NULL),(14,'Repellat odit soluta quia ratione nihil ea','repellat-odit-soluta-quia-ratione-nihil-ea','Numquam et accusantium qui a vero eveniet. Porro ipsam et cumque est consequuntur nesciunt nostrum. Ea officia iusto porro ipsa doloribus. Sed similique totam maxime dolorum. Occaecati totam incidunt sit labore.','Herman Leuschke','Pfeffer-Willms','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\28c2b38a946fc94a9880c88440a82be8.jpg',450000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:11',NULL,NULL,NULL,NULL,NULL),(15,'Aut nisi autem minus autem quia eum tenetur','aut-nisi-autem-minus-autem-quia-eum-tenetur','Explicabo quia voluptatibus nam doloribus quam. Non dolor velit quod qui molestiae commodi voluptatem. Nesciunt aut optio qui et assumenda fugiat. Enim cupiditate labore officiis nam porro quas quia.','Laverne Koelpin V','Ondricka, Schaden and Blanda','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\60b1d2139629d7dda6a679d72827ff86.jpg',50000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:13',NULL,NULL,NULL,NULL,NULL),(16,'Ut maiores iusto itaque tempora','ut-maiores-iusto-itaque-tempora','Voluptates in voluptatem soluta quisquam dicta temporibus qui. Doloribus aut in magnam odit repellendus laboriosam et. Maxime ab et facere veniam quia mollitia. Voluptatibus pariatur odit ut excepturi.','Oswald Bauch II','Predovic and Sons','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\d681cfd5f6d475d30924170d7758ff4c.jpg',300000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:21',NULL,NULL,NULL,NULL,NULL),(17,'Libero et blanditiis nulla minus consequuntur nihil','libero-et-blanditiis-nulla-minus-consequuntur-nihil','Ab veritatis dolores eius quo provident sed. Eos voluptates eveniet dolore optio et exercitationem est. Sunt nulla quae quos est repellendus commodi ab. Placeat laboriosam cupiditate ut aut.','Cleveland Beahan','Medhurst, Tromp and Green','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\a567f583480bc34e77ed56a404603ad0.jpg',150000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:23',NULL,NULL,NULL,NULL,NULL),(18,'Blanditiis aut fugit quo explicabo dicta','blanditiis-aut-fugit-quo-explicabo-dicta','Cupiditate pariatur voluptatum minima cum ut voluptas est. Incidunt omnis tempore ea nam. Natus atque voluptas hic facilis voluptas possimus harum sunt. Omnis dolorum fugit quaerat labore ut laborum.','Lucius Klein PhD','Kessler-Leannon','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\ae1f1c3cf2744a67481c187de4a432d8.jpg',350000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:25',NULL,NULL,NULL,NULL,NULL),(19,'Non ipsa doloribus dignissimos consequatur','non-ipsa-doloribus-dignissimos-consequatur','Autem dignissimos eos voluptatem. Quas nihil saepe excepturi doloribus enim ut. Qui sunt adipisci voluptas laudantium explicabo. Tempore quae suscipit velit illo accusantium veniam.','Hank Wolf','Wiza PLC','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\0fd73e282a4b3b32a7a90f6cb4a14619.jpg',50000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:27',NULL,NULL,NULL,NULL,NULL),(20,'Omnis dolor dicta qui cupiditate','omnis-dolor-dicta-qui-cupiditate','Dolores nisi voluptatem quaerat omnis modi expedita. Aut ut accusamus veritatis id qui doloremque et natus. Eveniet numquam eligendi dolor eos inventore eum et.','Juana Schroeder Jr.','Harber Ltd','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\71aef0990a050a07a6cadeb893eeee88.jpg',300000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:29',NULL,NULL,NULL,NULL,NULL),(21,'Vel neque nobis dolorem praesentium rem asperiores quas','vel-neque-nobis-dolorem-praesentium-rem-asperiores-quas','Odio est laborum quibusdam ipsa dolor vero et. Doloremque magni consectetur possimus qui. Minus qui maiores esse et. Officia facere quo corporis temporibus.','Norene Mraz','Walker-Dare','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\61acf0e11f71b49638d4c030a69382d0.jpg',450000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:30',NULL,NULL,NULL,NULL,NULL),(22,'Nam corporis aut nam quia','nam-corporis-aut-nam-quia','Dolorem eum porro nostrum. Temporibus voluptas consequatur fugit magni. Voluptatem rerum et sed cupiditate repellendus autem.','Mr. Deven Konopelski','Kautzer-Jenkins','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\fd79c5cdc0362a80511b7e6f5d1cdd1a.jpg',400000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:31',NULL,NULL,NULL,NULL,NULL),(23,'Quo est magni corrupti est ut','quo-est-magni-corrupti-est-ut','Eligendi ipsa voluptate ut voluptas ut odit. Autem et quae voluptates nulla ea voluptatem.','Shanon Sporer','Corwin-Gorczany','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\947f1ebbe231a646239b0b449acbfed1.jpg',350000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:32',NULL,NULL,NULL,NULL,NULL),(24,'Sit commodi voluptatibus','sit-commodi-voluptatibus','Nisi et est sunt nobis id ea. Est accusamus totam voluptas vero quam. Quasi repellat aut provident quia quia aut.','Elena Lockman','Skiles, Purdy and Deckow','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\7bf6217dbd2dd3ca9ececcf459a9db89.jpg',450000.00,0.50,0,1,'PUBLISH','2020-01-09 15:50:34',NULL,NULL,NULL,NULL,NULL),(25,'Excepturi inventore aliquid facilis','excepturi-inventore-aliquid-facilis','Vel occaecati cumque facere nesciunt. Voluptates provident quidem qui unde. Qui cum eos minus a quia fuga id. Aliquid ad ipsa tempore enim.','Prof. Joshua Wintheiser','Wilderman, Walter and Littel','E:\\Project Laravel\\master\\larashop-api\\public\\images\\books\\abf9768ced05954b7835a98b0430629a.jpg',200000.00,0.50,0,1,'PUBLISH','2020-01-09 15:51:06',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLISH',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'sapiente','sapiente','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\8df1481bfcd18d4bc2748e1f39c9ca0e.jpg','PUBLISH','2020-01-09 15:51:11',NULL,NULL,NULL,NULL,NULL),(2,'enim','enim','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\a11fe0540dc9bc4ef427b468bc418a2c.jpg','PUBLISH','2020-01-09 15:51:13',NULL,NULL,NULL,NULL,NULL),(3,'eaque','eaque','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\ae23a57cc26477d3f823d4f68355497c.jpg','PUBLISH','2020-01-09 15:51:14',NULL,NULL,NULL,NULL,NULL),(4,'consectetur','consectetur','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\9c37fbf9e1ab05953968b1207b4e1b66.jpg','PUBLISH','2020-01-09 15:51:16',NULL,NULL,NULL,NULL,NULL),(5,'sint','sint','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\59b06c80daa1a10754d815612f4539bd.jpg','PUBLISH','2020-01-09 15:51:17',NULL,NULL,NULL,NULL,NULL),(6,'sunt','sunt','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\caa0d2262c95701a6e4ad93589ed8ce8.jpg','PUBLISH','2020-01-09 15:51:19',NULL,NULL,NULL,NULL,NULL),(7,'doloremque','doloremque','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\ef4b90799d6d2c46ff175ca20a86940a.jpg','PUBLISH','2020-01-09 15:51:20',NULL,NULL,NULL,NULL,NULL),(8,'quia','quia','E:\\Project Laravel\\master\\larashop-api\\public\\images\\categories\\c6ccf8303525e399ec0cf59a0e52ffa6.jpg','PUBLISH','2020-01-09 15:51:21',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,21,'Aceh Barat','Kabupaten','23681'),(2,21,'Aceh Barat Daya','Kabupaten','23764'),(3,21,'Aceh Besar','Kabupaten','23951'),(4,21,'Aceh Jaya','Kabupaten','23654'),(5,21,'Aceh Selatan','Kabupaten','23719'),(6,21,'Aceh Singkil','Kabupaten','24785'),(7,21,'Aceh Tamiang','Kabupaten','24476'),(8,21,'Aceh Tengah','Kabupaten','24511'),(9,21,'Aceh Tenggara','Kabupaten','24611'),(10,21,'Aceh Timur','Kabupaten','24454'),(11,21,'Aceh Utara','Kabupaten','24382'),(12,32,'Agam','Kabupaten','26411'),(13,23,'Alor','Kabupaten','85811'),(14,19,'Ambon','Kota','97222'),(15,34,'Asahan','Kabupaten','21214'),(16,24,'Asmat','Kabupaten','99777'),(17,1,'Badung','Kabupaten','80351'),(18,13,'Balangan','Kabupaten','71611'),(19,15,'Balikpapan','Kota','76111'),(20,21,'Banda Aceh','Kota','23238'),(21,18,'Bandar Lampung','Kota','35139'),(22,9,'Bandung','Kabupaten','40311'),(23,9,'Bandung','Kota','40111'),(24,9,'Bandung Barat','Kabupaten','40721'),(25,29,'Banggai','Kabupaten','94711'),(26,29,'Banggai Kepulauan','Kabupaten','94881'),(27,2,'Bangka','Kabupaten','33212'),(28,2,'Bangka Barat','Kabupaten','33315'),(29,2,'Bangka Selatan','Kabupaten','33719'),(30,2,'Bangka Tengah','Kabupaten','33613'),(31,11,'Bangkalan','Kabupaten','69118'),(32,1,'Bangli','Kabupaten','80619'),(33,13,'Banjar','Kabupaten','70619'),(34,9,'Banjar','Kota','46311'),(35,13,'Banjarbaru','Kota','70712'),(36,13,'Banjarmasin','Kota','70117'),(37,10,'Banjarnegara','Kabupaten','53419'),(38,28,'Bantaeng','Kabupaten','92411'),(39,5,'Bantul','Kabupaten','55715'),(40,33,'Banyuasin','Kabupaten','30911'),(41,10,'Banyumas','Kabupaten','53114'),(42,11,'Banyuwangi','Kabupaten','68416'),(43,13,'Barito Kuala','Kabupaten','70511'),(44,14,'Barito Selatan','Kabupaten','73711'),(45,14,'Barito Timur','Kabupaten','73671'),(46,14,'Barito Utara','Kabupaten','73881'),(47,28,'Barru','Kabupaten','90719'),(48,17,'Batam','Kota','29413'),(49,10,'Batang','Kabupaten','51211'),(50,8,'Batang Hari','Kabupaten','36613'),(51,11,'Batu','Kota','65311'),(52,34,'Batu Bara','Kabupaten','21655'),(53,30,'Bau-Bau','Kota','93719'),(54,9,'Bekasi','Kabupaten','17837'),(55,9,'Bekasi','Kota','17121'),(56,2,'Belitung','Kabupaten','33419'),(57,2,'Belitung Timur','Kabupaten','33519'),(58,23,'Belu','Kabupaten','85711'),(59,21,'Bener Meriah','Kabupaten','24581'),(60,26,'Bengkalis','Kabupaten','28719'),(61,12,'Bengkayang','Kabupaten','79213'),(62,4,'Bengkulu','Kota','38229'),(63,4,'Bengkulu Selatan','Kabupaten','38519'),(64,4,'Bengkulu Tengah','Kabupaten','38319'),(65,4,'Bengkulu Utara','Kabupaten','38619'),(66,15,'Berau','Kabupaten','77311'),(67,24,'Biak Numfor','Kabupaten','98119'),(68,22,'Bima','Kabupaten','84171'),(69,22,'Bima','Kota','84139'),(70,34,'Binjai','Kota','20712'),(71,17,'Bintan','Kabupaten','29135'),(72,21,'Bireuen','Kabupaten','24219'),(73,31,'Bitung','Kota','95512'),(74,11,'Blitar','Kabupaten','66171'),(75,11,'Blitar','Kota','66124'),(76,10,'Blora','Kabupaten','58219'),(77,7,'Boalemo','Kabupaten','96319'),(78,9,'Bogor','Kabupaten','16911'),(79,9,'Bogor','Kota','16119'),(80,11,'Bojonegoro','Kabupaten','62119'),(81,31,'Bolaang Mongondow (Bolmong)','Kabupaten','95755'),(82,31,'Bolaang Mongondow Selatan','Kabupaten','95774'),(83,31,'Bolaang Mongondow Timur','Kabupaten','95783'),(84,31,'Bolaang Mongondow Utara','Kabupaten','95765'),(85,30,'Bombana','Kabupaten','93771'),(86,11,'Bondowoso','Kabupaten','68219'),(87,28,'Bone','Kabupaten','92713'),(88,7,'Bone Bolango','Kabupaten','96511'),(89,15,'Bontang','Kota','75313'),(90,24,'Boven Digoel','Kabupaten','99662'),(91,10,'Boyolali','Kabupaten','57312'),(92,10,'Brebes','Kabupaten','52212'),(93,32,'Bukittinggi','Kota','26115'),(94,1,'Buleleng','Kabupaten','81111'),(95,28,'Bulukumba','Kabupaten','92511'),(96,16,'Bulungan (Bulongan)','Kabupaten','77211'),(97,8,'Bungo','Kabupaten','37216'),(98,29,'Buol','Kabupaten','94564'),(99,19,'Buru','Kabupaten','97371'),(100,19,'Buru Selatan','Kabupaten','97351'),(101,30,'Buton','Kabupaten','93754'),(102,30,'Buton Utara','Kabupaten','93745'),(103,9,'Ciamis','Kabupaten','46211'),(104,9,'Cianjur','Kabupaten','43217'),(105,10,'Cilacap','Kabupaten','53211'),(106,3,'Cilegon','Kota','42417'),(107,9,'Cimahi','Kota','40512'),(108,9,'Cirebon','Kabupaten','45611'),(109,9,'Cirebon','Kota','45116'),(110,34,'Dairi','Kabupaten','22211'),(111,24,'Deiyai (Deliyai)','Kabupaten','98784'),(112,34,'Deli Serdang','Kabupaten','20511'),(113,10,'Demak','Kabupaten','59519'),(114,1,'Denpasar','Kota','80227'),(115,9,'Depok','Kota','16416'),(116,32,'Dharmasraya','Kabupaten','27612'),(117,24,'Dogiyai','Kabupaten','98866'),(118,22,'Dompu','Kabupaten','84217'),(119,29,'Donggala','Kabupaten','94341'),(120,26,'Dumai','Kota','28811'),(121,33,'Empat Lawang','Kabupaten','31811'),(122,23,'Ende','Kabupaten','86351'),(123,28,'Enrekang','Kabupaten','91719'),(124,25,'Fakfak','Kabupaten','98651'),(125,23,'Flores Timur','Kabupaten','86213'),(126,9,'Garut','Kabupaten','44126'),(127,21,'Gayo Lues','Kabupaten','24653'),(128,1,'Gianyar','Kabupaten','80519'),(129,7,'Gorontalo','Kabupaten','96218'),(130,7,'Gorontalo','Kota','96115'),(131,7,'Gorontalo Utara','Kabupaten','96611'),(132,28,'Gowa','Kabupaten','92111'),(133,11,'Gresik','Kabupaten','61115'),(134,10,'Grobogan','Kabupaten','58111'),(135,5,'Gunung Kidul','Kabupaten','55812'),(136,14,'Gunung Mas','Kabupaten','74511'),(137,34,'Gunungsitoli','Kota','22813'),(138,20,'Halmahera Barat','Kabupaten','97757'),(139,20,'Halmahera Selatan','Kabupaten','97911'),(140,20,'Halmahera Tengah','Kabupaten','97853'),(141,20,'Halmahera Timur','Kabupaten','97862'),(142,20,'Halmahera Utara','Kabupaten','97762'),(143,13,'Hulu Sungai Selatan','Kabupaten','71212'),(144,13,'Hulu Sungai Tengah','Kabupaten','71313'),(145,13,'Hulu Sungai Utara','Kabupaten','71419'),(146,34,'Humbang Hasundutan','Kabupaten','22457'),(147,26,'Indragiri Hilir','Kabupaten','29212'),(148,26,'Indragiri Hulu','Kabupaten','29319'),(149,9,'Indramayu','Kabupaten','45214'),(150,24,'Intan Jaya','Kabupaten','98771'),(151,6,'Jakarta Barat','Kota','11220'),(152,6,'Jakarta Pusat','Kota','10540'),(153,6,'Jakarta Selatan','Kota','12230'),(154,6,'Jakarta Timur','Kota','13330'),(155,6,'Jakarta Utara','Kota','14140'),(156,8,'Jambi','Kota','36111'),(157,24,'Jayapura','Kabupaten','99352'),(158,24,'Jayapura','Kota','99114'),(159,24,'Jayawijaya','Kabupaten','99511'),(160,11,'Jember','Kabupaten','68113'),(161,1,'Jembrana','Kabupaten','82251'),(162,28,'Jeneponto','Kabupaten','92319'),(163,10,'Jepara','Kabupaten','59419'),(164,11,'Jombang','Kabupaten','61415'),(165,25,'Kaimana','Kabupaten','98671'),(166,26,'Kampar','Kabupaten','28411'),(167,14,'Kapuas','Kabupaten','73583'),(168,12,'Kapuas Hulu','Kabupaten','78719'),(169,10,'Karanganyar','Kabupaten','57718'),(170,1,'Karangasem','Kabupaten','80819'),(171,9,'Karawang','Kabupaten','41311'),(172,17,'Karimun','Kabupaten','29611'),(173,34,'Karo','Kabupaten','22119'),(174,14,'Katingan','Kabupaten','74411'),(175,4,'Kaur','Kabupaten','38911'),(176,12,'Kayong Utara','Kabupaten','78852'),(177,10,'Kebumen','Kabupaten','54319'),(178,11,'Kediri','Kabupaten','64184'),(179,11,'Kediri','Kota','64125'),(180,24,'Keerom','Kabupaten','99461'),(181,10,'Kendal','Kabupaten','51314'),(182,30,'Kendari','Kota','93126'),(183,4,'Kepahiang','Kabupaten','39319'),(184,17,'Kepulauan Anambas','Kabupaten','29991'),(185,19,'Kepulauan Aru','Kabupaten','97681'),(186,32,'Kepulauan Mentawai','Kabupaten','25771'),(187,26,'Kepulauan Meranti','Kabupaten','28791'),(188,31,'Kepulauan Sangihe','Kabupaten','95819'),(189,6,'Kepulauan Seribu','Kabupaten','14550'),(190,31,'Kepulauan Siau Tagulandang Biaro (Sitaro)','Kabupaten','95862'),(191,20,'Kepulauan Sula','Kabupaten','97995'),(192,31,'Kepulauan Talaud','Kabupaten','95885'),(193,24,'Kepulauan Yapen (Yapen Waropen)','Kabupaten','98211'),(194,8,'Kerinci','Kabupaten','37167'),(195,12,'Ketapang','Kabupaten','78874'),(196,10,'Klaten','Kabupaten','57411'),(197,1,'Klungkung','Kabupaten','80719'),(198,30,'Kolaka','Kabupaten','93511'),(199,30,'Kolaka Utara','Kabupaten','93911'),(200,30,'Konawe','Kabupaten','93411'),(201,30,'Konawe Selatan','Kabupaten','93811'),(202,30,'Konawe Utara','Kabupaten','93311'),(203,13,'Kotabaru','Kabupaten','72119'),(204,31,'Kotamobagu','Kota','95711'),(205,14,'Kotawaringin Barat','Kabupaten','74119'),(206,14,'Kotawaringin Timur','Kabupaten','74364'),(207,26,'Kuantan Singingi','Kabupaten','29519'),(208,12,'Kubu Raya','Kabupaten','78311'),(209,10,'Kudus','Kabupaten','59311'),(210,5,'Kulon Progo','Kabupaten','55611'),(211,9,'Kuningan','Kabupaten','45511'),(212,23,'Kupang','Kabupaten','85362'),(213,23,'Kupang','Kota','85119'),(214,15,'Kutai Barat','Kabupaten','75711'),(215,15,'Kutai Kartanegara','Kabupaten','75511'),(216,15,'Kutai Timur','Kabupaten','75611'),(217,34,'Labuhan Batu','Kabupaten','21412'),(218,34,'Labuhan Batu Selatan','Kabupaten','21511'),(219,34,'Labuhan Batu Utara','Kabupaten','21711'),(220,33,'Lahat','Kabupaten','31419'),(221,14,'Lamandau','Kabupaten','74611'),(222,11,'Lamongan','Kabupaten','64125'),(223,18,'Lampung Barat','Kabupaten','34814'),(224,18,'Lampung Selatan','Kabupaten','35511'),(225,18,'Lampung Tengah','Kabupaten','34212'),(226,18,'Lampung Timur','Kabupaten','34319'),(227,18,'Lampung Utara','Kabupaten','34516'),(228,12,'Landak','Kabupaten','78319'),(229,34,'Langkat','Kabupaten','20811'),(230,21,'Langsa','Kota','24412'),(231,24,'Lanny Jaya','Kabupaten','99531'),(232,3,'Lebak','Kabupaten','42319'),(233,4,'Lebong','Kabupaten','39264'),(234,23,'Lembata','Kabupaten','86611'),(235,21,'Lhokseumawe','Kota','24352'),(236,32,'Lima Puluh Koto/Kota','Kabupaten','26671'),(237,17,'Lingga','Kabupaten','29811'),(238,22,'Lombok Barat','Kabupaten','83311'),(239,22,'Lombok Tengah','Kabupaten','83511'),(240,22,'Lombok Timur','Kabupaten','83612'),(241,22,'Lombok Utara','Kabupaten','83711'),(242,33,'Lubuk Linggau','Kota','31614'),(243,11,'Lumajang','Kabupaten','67319'),(244,28,'Luwu','Kabupaten','91994'),(245,28,'Luwu Timur','Kabupaten','92981'),(246,28,'Luwu Utara','Kabupaten','92911'),(247,11,'Madiun','Kabupaten','63153'),(248,11,'Madiun','Kota','63122'),(249,10,'Magelang','Kabupaten','56519'),(250,10,'Magelang','Kota','56133'),(251,11,'Magetan','Kabupaten','63314'),(252,9,'Majalengka','Kabupaten','45412'),(253,27,'Majene','Kabupaten','91411'),(254,28,'Makassar','Kota','90111'),(255,11,'Malang','Kabupaten','65163'),(256,11,'Malang','Kota','65112'),(257,16,'Malinau','Kabupaten','77511'),(258,19,'Maluku Barat Daya','Kabupaten','97451'),(259,19,'Maluku Tengah','Kabupaten','97513'),(260,19,'Maluku Tenggara','Kabupaten','97651'),(261,19,'Maluku Tenggara Barat','Kabupaten','97465'),(262,27,'Mamasa','Kabupaten','91362'),(263,24,'Mamberamo Raya','Kabupaten','99381'),(264,24,'Mamberamo Tengah','Kabupaten','99553'),(265,27,'Mamuju','Kabupaten','91519'),(266,27,'Mamuju Utara','Kabupaten','91571'),(267,31,'Manado','Kota','95247'),(268,34,'Mandailing Natal','Kabupaten','22916'),(269,23,'Manggarai','Kabupaten','86551'),(270,23,'Manggarai Barat','Kabupaten','86711'),(271,23,'Manggarai Timur','Kabupaten','86811'),(272,25,'Manokwari','Kabupaten','98311'),(273,25,'Manokwari Selatan','Kabupaten','98355'),(274,24,'Mappi','Kabupaten','99853'),(275,28,'Maros','Kabupaten','90511'),(276,22,'Mataram','Kota','83131'),(277,25,'Maybrat','Kabupaten','98051'),(278,34,'Medan','Kota','20228'),(279,12,'Melawi','Kabupaten','78619'),(280,8,'Merangin','Kabupaten','37319'),(281,24,'Merauke','Kabupaten','99613'),(282,18,'Mesuji','Kabupaten','34911'),(283,18,'Metro','Kota','34111'),(284,24,'Mimika','Kabupaten','99962'),(285,31,'Minahasa','Kabupaten','95614'),(286,31,'Minahasa Selatan','Kabupaten','95914'),(287,31,'Minahasa Tenggara','Kabupaten','95995'),(288,31,'Minahasa Utara','Kabupaten','95316'),(289,11,'Mojokerto','Kabupaten','61382'),(290,11,'Mojokerto','Kota','61316'),(291,29,'Morowali','Kabupaten','94911'),(292,33,'Muara Enim','Kabupaten','31315'),(293,8,'Muaro Jambi','Kabupaten','36311'),(294,4,'Muko Muko','Kabupaten','38715'),(295,30,'Muna','Kabupaten','93611'),(296,14,'Murung Raya','Kabupaten','73911'),(297,33,'Musi Banyuasin','Kabupaten','30719'),(298,33,'Musi Rawas','Kabupaten','31661'),(299,24,'Nabire','Kabupaten','98816'),(300,21,'Nagan Raya','Kabupaten','23674'),(301,23,'Nagekeo','Kabupaten','86911'),(302,17,'Natuna','Kabupaten','29711'),(303,24,'Nduga','Kabupaten','99541'),(304,23,'Ngada','Kabupaten','86413'),(305,11,'Nganjuk','Kabupaten','64414'),(306,11,'Ngawi','Kabupaten','63219'),(307,34,'Nias','Kabupaten','22876'),(308,34,'Nias Barat','Kabupaten','22895'),(309,34,'Nias Selatan','Kabupaten','22865'),(310,34,'Nias Utara','Kabupaten','22856'),(311,16,'Nunukan','Kabupaten','77421'),(312,33,'Ogan Ilir','Kabupaten','30811'),(313,33,'Ogan Komering Ilir','Kabupaten','30618'),(314,33,'Ogan Komering Ulu','Kabupaten','32112'),(315,33,'Ogan Komering Ulu Selatan','Kabupaten','32211'),(316,33,'Ogan Komering Ulu Timur','Kabupaten','32312'),(317,11,'Pacitan','Kabupaten','63512'),(318,32,'Padang','Kota','25112'),(319,34,'Padang Lawas','Kabupaten','22763'),(320,34,'Padang Lawas Utara','Kabupaten','22753'),(321,32,'Padang Panjang','Kota','27122'),(322,32,'Padang Pariaman','Kabupaten','25583'),(323,34,'Padang Sidempuan','Kota','22727'),(324,33,'Pagar Alam','Kota','31512'),(325,34,'Pakpak Bharat','Kabupaten','22272'),(326,14,'Palangka Raya','Kota','73112'),(327,33,'Palembang','Kota','30111'),(328,28,'Palopo','Kota','91911'),(329,29,'Palu','Kota','94111'),(330,11,'Pamekasan','Kabupaten','69319'),(331,3,'Pandeglang','Kabupaten','42212'),(332,9,'Pangandaran','Kabupaten','46511'),(333,28,'Pangkajene Kepulauan','Kabupaten','90611'),(334,2,'Pangkal Pinang','Kota','33115'),(335,24,'Paniai','Kabupaten','98765'),(336,28,'Parepare','Kota','91123'),(337,32,'Pariaman','Kota','25511'),(338,29,'Parigi Moutong','Kabupaten','94411'),(339,32,'Pasaman','Kabupaten','26318'),(340,32,'Pasaman Barat','Kabupaten','26511'),(341,15,'Paser','Kabupaten','76211'),(342,11,'Pasuruan','Kabupaten','67153'),(343,11,'Pasuruan','Kota','67118'),(344,10,'Pati','Kabupaten','59114'),(345,32,'Payakumbuh','Kota','26213'),(346,25,'Pegunungan Arfak','Kabupaten','98354'),(347,24,'Pegunungan Bintang','Kabupaten','99573'),(348,10,'Pekalongan','Kabupaten','51161'),(349,10,'Pekalongan','Kota','51122'),(350,26,'Pekanbaru','Kota','28112'),(351,26,'Pelalawan','Kabupaten','28311'),(352,10,'Pemalang','Kabupaten','52319'),(353,34,'Pematang Siantar','Kota','21126'),(354,15,'Penajam Paser Utara','Kabupaten','76311'),(355,18,'Pesawaran','Kabupaten','35312'),(356,18,'Pesisir Barat','Kabupaten','35974'),(357,32,'Pesisir Selatan','Kabupaten','25611'),(358,21,'Pidie','Kabupaten','24116'),(359,21,'Pidie Jaya','Kabupaten','24186'),(360,28,'Pinrang','Kabupaten','91251'),(361,7,'Pohuwato','Kabupaten','96419'),(362,27,'Polewali Mandar','Kabupaten','91311'),(363,11,'Ponorogo','Kabupaten','63411'),(364,12,'Pontianak','Kabupaten','78971'),(365,12,'Pontianak','Kota','78112'),(366,29,'Poso','Kabupaten','94615'),(367,33,'Prabumulih','Kota','31121'),(368,18,'Pringsewu','Kabupaten','35719'),(369,11,'Probolinggo','Kabupaten','67282'),(370,11,'Probolinggo','Kota','67215'),(371,14,'Pulang Pisau','Kabupaten','74811'),(372,20,'Pulau Morotai','Kabupaten','97771'),(373,24,'Puncak','Kabupaten','98981'),(374,24,'Puncak Jaya','Kabupaten','98979'),(375,10,'Purbalingga','Kabupaten','53312'),(376,9,'Purwakarta','Kabupaten','41119'),(377,10,'Purworejo','Kabupaten','54111'),(378,25,'Raja Ampat','Kabupaten','98489'),(379,4,'Rejang Lebong','Kabupaten','39112'),(380,10,'Rembang','Kabupaten','59219'),(381,26,'Rokan Hilir','Kabupaten','28992'),(382,26,'Rokan Hulu','Kabupaten','28511'),(383,23,'Rote Ndao','Kabupaten','85982'),(384,21,'Sabang','Kota','23512'),(385,23,'Sabu Raijua','Kabupaten','85391'),(386,10,'Salatiga','Kota','50711'),(387,15,'Samarinda','Kota','75133'),(388,12,'Sambas','Kabupaten','79453'),(389,34,'Samosir','Kabupaten','22392'),(390,11,'Sampang','Kabupaten','69219'),(391,12,'Sanggau','Kabupaten','78557'),(392,24,'Sarmi','Kabupaten','99373'),(393,8,'Sarolangun','Kabupaten','37419'),(394,32,'Sawah Lunto','Kota','27416'),(395,12,'Sekadau','Kabupaten','79583'),(396,28,'Selayar (Kepulauan Selayar)','Kabupaten','92812'),(397,4,'Seluma','Kabupaten','38811'),(398,10,'Semarang','Kabupaten','50511'),(399,10,'Semarang','Kota','50135'),(400,19,'Seram Bagian Barat','Kabupaten','97561'),(401,19,'Seram Bagian Timur','Kabupaten','97581'),(402,3,'Serang','Kabupaten','42182'),(403,3,'Serang','Kota','42111'),(404,34,'Serdang Bedagai','Kabupaten','20915'),(405,14,'Seruyan','Kabupaten','74211'),(406,26,'Siak','Kabupaten','28623'),(407,34,'Sibolga','Kota','22522'),(408,28,'Sidenreng Rappang/Rapang','Kabupaten','91613'),(409,11,'Sidoarjo','Kabupaten','61219'),(410,29,'Sigi','Kabupaten','94364'),(411,32,'Sijunjung (Sawah Lunto Sijunjung)','Kabupaten','27511'),(412,23,'Sikka','Kabupaten','86121'),(413,34,'Simalungun','Kabupaten','21162'),(414,21,'Simeulue','Kabupaten','23891'),(415,12,'Singkawang','Kota','79117'),(416,28,'Sinjai','Kabupaten','92615'),(417,12,'Sintang','Kabupaten','78619'),(418,11,'Situbondo','Kabupaten','68316'),(419,5,'Sleman','Kabupaten','55513'),(420,32,'Solok','Kabupaten','27365'),(421,32,'Solok','Kota','27315'),(422,32,'Solok Selatan','Kabupaten','27779'),(423,28,'Soppeng','Kabupaten','90812'),(424,25,'Sorong','Kabupaten','98431'),(425,25,'Sorong','Kota','98411'),(426,25,'Sorong Selatan','Kabupaten','98454'),(427,10,'Sragen','Kabupaten','57211'),(428,9,'Subang','Kabupaten','41215'),(429,21,'Subulussalam','Kota','24882'),(430,9,'Sukabumi','Kabupaten','43311'),(431,9,'Sukabumi','Kota','43114'),(432,14,'Sukamara','Kabupaten','74712'),(433,10,'Sukoharjo','Kabupaten','57514'),(434,23,'Sumba Barat','Kabupaten','87219'),(435,23,'Sumba Barat Daya','Kabupaten','87453'),(436,23,'Sumba Tengah','Kabupaten','87358'),(437,23,'Sumba Timur','Kabupaten','87112'),(438,22,'Sumbawa','Kabupaten','84315'),(439,22,'Sumbawa Barat','Kabupaten','84419'),(440,9,'Sumedang','Kabupaten','45326'),(441,11,'Sumenep','Kabupaten','69413'),(442,8,'Sungaipenuh','Kota','37113'),(443,24,'Supiori','Kabupaten','98164'),(444,11,'Surabaya','Kota','60119'),(445,10,'Surakarta (Solo)','Kota','57113'),(446,13,'Tabalong','Kabupaten','71513'),(447,1,'Tabanan','Kabupaten','82119'),(448,28,'Takalar','Kabupaten','92212'),(449,25,'Tambrauw','Kabupaten','98475'),(450,16,'Tana Tidung','Kabupaten','77611'),(451,28,'Tana Toraja','Kabupaten','91819'),(452,13,'Tanah Bumbu','Kabupaten','72211'),(453,32,'Tanah Datar','Kabupaten','27211'),(454,13,'Tanah Laut','Kabupaten','70811'),(455,3,'Tangerang','Kabupaten','15914'),(456,3,'Tangerang','Kota','15111'),(457,3,'Tangerang Selatan','Kota','15332'),(458,18,'Tanggamus','Kabupaten','35619'),(459,34,'Tanjung Balai','Kota','21321'),(460,8,'Tanjung Jabung Barat','Kabupaten','36513'),(461,8,'Tanjung Jabung Timur','Kabupaten','36719'),(462,17,'Tanjung Pinang','Kota','29111'),(463,34,'Tapanuli Selatan','Kabupaten','22742'),(464,34,'Tapanuli Tengah','Kabupaten','22611'),(465,34,'Tapanuli Utara','Kabupaten','22414'),(466,13,'Tapin','Kabupaten','71119'),(467,16,'Tarakan','Kota','77114'),(468,9,'Tasikmalaya','Kabupaten','46411'),(469,9,'Tasikmalaya','Kota','46116'),(470,34,'Tebing Tinggi','Kota','20632'),(471,8,'Tebo','Kabupaten','37519'),(472,10,'Tegal','Kabupaten','52419'),(473,10,'Tegal','Kota','52114'),(474,25,'Teluk Bintuni','Kabupaten','98551'),(475,25,'Teluk Wondama','Kabupaten','98591'),(476,10,'Temanggung','Kabupaten','56212'),(477,20,'Ternate','Kota','97714'),(478,20,'Tidore Kepulauan','Kota','97815'),(479,23,'Timor Tengah Selatan','Kabupaten','85562'),(480,23,'Timor Tengah Utara','Kabupaten','85612'),(481,34,'Toba Samosir','Kabupaten','22316'),(482,29,'Tojo Una-Una','Kabupaten','94683'),(483,29,'Toli-Toli','Kabupaten','94542'),(484,24,'Tolikara','Kabupaten','99411'),(485,31,'Tomohon','Kota','95416'),(486,28,'Toraja Utara','Kabupaten','91831'),(487,11,'Trenggalek','Kabupaten','66312'),(488,19,'Tual','Kota','97612'),(489,11,'Tuban','Kabupaten','62319'),(490,18,'Tulang Bawang','Kabupaten','34613'),(491,18,'Tulang Bawang Barat','Kabupaten','34419'),(492,11,'Tulungagung','Kabupaten','66212'),(493,28,'Wajo','Kabupaten','90911'),(494,30,'Wakatobi','Kabupaten','93791'),(495,24,'Waropen','Kabupaten','98269'),(496,18,'Way Kanan','Kabupaten','34711'),(497,10,'Wonogiri','Kabupaten','57619'),(498,10,'Wonosobo','Kabupaten','56311'),(499,24,'Yahukimo','Kabupaten','99041'),(500,24,'Yalimo','Kabupaten','99481'),(501,5,'Yogyakarta','Kota','55111');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (12,'2014_10_12_000000_create_users_table',1),(13,'2014_10_12_100000_create_password_resets_table',1),(14,'2018_08_05_033123_create_books_table',1),(15,'2018_08_05_050155_alter_users_table',1),(16,'2018_08_06_205410_create_categories_table',1),(17,'2018_08_06_212931_create_orders_table',1),(18,'2018_08_06_213012_create_book_category_table',1),(19,'2018_08_06_213037_create_book_order_table',1),(20,'2018_08_06_213134_create_provinces_table',1),(21,'2018_08_06_213147_create_cities_table',1),(22,'2018_08_18_211244_adds_api_token_to_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total_bill` double(8,2) NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('SUBMIT','PROCESS','FINISH','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SUBMIT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'Bali'),(2,'Bangka Belitung'),(3,'Banten'),(4,'Bengkulu'),(5,'DI Yogyakarta'),(6,'DKI Jakarta'),(7,'Gorontalo'),(8,'Jambi'),(9,'Jawa Barat'),(10,'Jawa Tengah'),(11,'Jawa Timur'),(12,'Kalimantan Barat'),(13,'Kalimantan Selatan'),(14,'Kalimantan Tengah'),(15,'Kalimantan Timur'),(16,'Kalimantan Utara'),(17,'Kepulauan Riau'),(18,'Lampung'),(19,'Maluku'),(20,'Maluku Utara'),(21,'Nanggroe Aceh Darussalam (NAD)'),(22,'Nusa Tenggara Barat (NTB)'),(23,'Nusa Tenggara Timur (NTT)'),(24,'Papua'),(25,'Papua Barat'),(26,'Riau'),(27,'Sulawesi Barat'),(28,'Sulawesi Selatan'),(29,'Sulawesi Tengah'),(30,'Sulawesi Tenggara'),(31,'Sulawesi Utara'),(32,'Sumatera Barat'),(33,'Sumatera Selatan'),(34,'Sumatera Utara');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Helmer Rodriguez I','carter.vern@example.com',NULL,'$2y$10$/fZTVthJm2atxxZEcUq21.sGKotH2yj6zoYKtWDftFXVm7I0R1vdK',NULL,'2020-01-09 15:49:29',NULL,'[\"CUSTOMER\"]',NULL,NULL,NULL,NULL,'E:\\Project Laravel\\larashop-api\\public\\images\\users\\426bddce3da805d4bb8730f7af17ec64.jpg','ACTIVE',NULL),(2,'Bonnie Macejkovic','bell.hill@example.com',NULL,'$2y$10$jPEAKbJsHC84gB95fraRGuA3swfITiXoqYz4pMLcRXJ8Ojqo9FOp6',NULL,'2020-01-09 15:49:31',NULL,'[\"CUSTOMER\"]',NULL,NULL,NULL,NULL,'E:\\Project Laravel\\larashop-api\\public\\images\\users\\602afe6627be17892039a01e29ffb8af.jpg','ACTIVE',NULL),(3,'Laisha Kuphal','amurphy@example.org',NULL,'$2y$10$f0dBhShze8OeDID.ZZKyIu56FGNTDHtsz55Nc7Bt0ib2IfFJHyIx.',NULL,'2020-01-09 15:49:34',NULL,'[\"CUSTOMER\"]',NULL,NULL,NULL,NULL,'E:\\Project Laravel\\larashop-api\\public\\images\\users\\532ac590ca58f1bdce683a856c0b377c.jpg','ACTIVE',NULL),(4,'Dr. Golden Mueller','demetrius56@example.com',NULL,'$2y$10$4wc8oM0HuUpMaMnsh1KB3.1K/PNA3xSu9SYlGPvInECzQdQwpx4rG',NULL,'2020-01-09 15:49:39','2020-01-09 17:25:03','[\"CUSTOMER\"]',NULL,NULL,NULL,NULL,'E:\\Project Laravel\\larashop-api\\public\\images\\users\\8e13fd2d2271feb827a31d73da91409e.jpg','ACTIVE','j2pBS7NyndWpukm33ouvKEQBD6tR5xebmAOXpx5a0q2sSuAtBGbiNcCvhVJm'),(5,'Delta Rath','alicia.romaguera@example.net',NULL,'$2y$10$bZ2ZsVUv50VcBNxu2U9B7OsS9.OPY7Ng1WvRt5pO/4kurrl5tFaty',NULL,'2020-01-09 15:49:40',NULL,'[\"CUSTOMER\"]',NULL,NULL,NULL,NULL,'E:\\Project Laravel\\larashop-api\\public\\images\\users\\38b687df42b1681785c6e69cfb12b886.jpg','ACTIVE',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'coba-terus'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-10  7:30:33
