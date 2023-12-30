-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: django_shop_main
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add collection',7,'add_collection'),(26,'Can change collection',7,'change_collection'),(27,'Can delete collection',7,'delete_collection'),(28,'Can view collection',7,'view_collection'),(29,'Can add customer',8,'add_customer'),(30,'Can change customer',8,'change_customer'),(31,'Can delete customer',8,'delete_customer'),(32,'Can view customer',8,'view_customer'),(33,'Can add order',9,'add_order'),(34,'Can change order',9,'change_order'),(35,'Can delete order',9,'delete_order'),(36,'Can view order',9,'view_order'),(37,'Can add product',10,'add_product'),(38,'Can change product',10,'change_product'),(39,'Can delete product',10,'delete_product'),(40,'Can view product',10,'view_product'),(41,'Can add order item',11,'add_orderitem'),(42,'Can change order item',11,'change_orderitem'),(43,'Can delete order item',11,'delete_orderitem'),(44,'Can view order item',11,'view_orderitem'),(45,'Can add image',12,'add_image'),(46,'Can change image',12,'change_image'),(47,'Can delete image',12,'delete_image'),(48,'Can view image',12,'view_image'),(49,'Can add cart',13,'add_cart'),(50,'Can change cart',13,'change_cart'),(51,'Can delete cart',13,'delete_cart'),(52,'Can view cart',13,'view_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$qs9iwbYoqq9EaP1BGLGAz9$8ewK+0H41DjeSGtMox9vaJny+E8+bd8b05a/qeM3Wfw=','2023-12-27 19:04:57.282975',1,'admin','Dimitris','Konstantinidis','dimitristem@gmail.com',1,1,'2023-12-27 19:04:19.116901');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-27 19:05:16.260509','1','Hats',1,'[{\"added\": {}}]',7,1),(2,'2023-12-27 19:05:27.772634','2','Rackets',1,'[{\"added\": {}}]',7,1),(3,'2023-12-27 19:05:39.074561','3','Tennis bags',1,'[{\"added\": {}}]',7,1),(4,'2023-12-27 19:05:48.214527','4','Tennis shoes',1,'[{\"added\": {}}]',7,1),(5,'2023-12-27 19:05:58.663577','5','Tennis uniforms',1,'[{\"added\": {}}]',7,1),(6,'2023-12-27 19:06:46.741775','1','Ανδρικά Παπούτσια Τένις',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (1)\"}}]',10,1),(7,'2023-12-27 19:10:30.265853','2','Nike Dri-FIT Club Unstructured Metal Swoosh Cap',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (2)\"}}]',10,1),(8,'2023-12-27 19:14:19.460483','3','Wilson Roland Garros Team Tennis Bag',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (3)\"}}]',10,1),(9,'2023-12-27 19:16:21.898781','4','Ρακέτα Τένις Wilson Blade Feel 100',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (4)\"}}]',10,1),(10,'2023-12-27 19:18:17.779078','5','Nike Club Poly-Knit Men\'s Tracksuit',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (5)\"}}]',10,1),(11,'2023-12-27 19:22:44.483543','6','Tennis balls',1,'[{\"added\": {}}]',7,1),(12,'2023-12-27 19:23:07.633110','6','Μπαλάκια Τένις Dunlop',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (6)\"}}]',10,1),(13,'2023-12-27 19:27:07.020728','7','Tennis overgrips',1,'[{\"added\": {}}]',7,1),(14,'2023-12-27 19:31:49.177820','7','Wilson Comfort Tennis Overgrips x 1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (7)\"}}]',10,1),(15,'2023-12-27 19:32:55.016076','8','Ball basket',1,'[{\"added\": {}}]',7,1),(16,'2023-12-27 19:33:18.277804','8','Μεταλλικό Καλάθι Tennis Ball Basket x 72',1,'[{\"added\": {}}, {\"added\": {\"name\": \"image\", \"object\": \"Image object (8)\"}}]',10,1),(17,'2023-12-27 19:36:17.012019','5','Nike Club Poly-Knit Men\'s Tracksuit',2,'[{\"deleted\": {\"name\": \"image\", \"object\": \"Image object (None)\"}}]',10,1),(18,'2023-12-27 19:36:47.091426','5','Nike Club Poly-Knit Men\'s Tracksuit',2,'[{\"added\": {\"name\": \"image\", \"object\": \"Image object (9)\"}}]',10,1),(19,'2023-12-27 19:47:22.024786','2','Nike Dri-FIT Club Unstructured Metal Swoosh Cap',2,'[{\"changed\": {\"fields\": [\"Inventory\"]}}]',10,1),(20,'2023-12-27 19:48:11.821015','2','Nike Dri-FIT Club Unstructured Metal Swoosh Cap',2,'[{\"changed\": {\"fields\": [\"Inventory\"]}}]',10,1),(21,'2023-12-27 19:50:43.755814','2','Nike Dri-FIT Club Unstructured Metal Swoosh Cap',2,'[{\"changed\": {\"fields\": [\"Inventory\"]}}]',10,1),(22,'2023-12-27 19:50:54.577454','2','Nike Dri-FIT Club Unstructured Metal Swoosh Cap',2,'[{\"changed\": {\"fields\": [\"Inventory\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(13,'store','cart'),(7,'store','collection'),(8,'store','customer'),(12,'store','image'),(9,'store','order'),(11,'store','orderitem'),(10,'store','product');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-27 19:02:50.757935'),(2,'auth','0001_initial','2023-12-27 19:02:51.467018'),(3,'admin','0001_initial','2023-12-27 19:02:51.648933'),(4,'admin','0002_logentry_remove_auto_add','2023-12-27 19:02:51.655441'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-27 19:02:51.672316'),(6,'contenttypes','0002_remove_content_type_name','2023-12-27 19:02:51.782132'),(7,'auth','0002_alter_permission_name_max_length','2023-12-27 19:02:51.839963'),(8,'auth','0003_alter_user_email_max_length','2023-12-27 19:02:51.865282'),(9,'auth','0004_alter_user_username_opts','2023-12-27 19:02:51.868099'),(10,'auth','0005_alter_user_last_login_null','2023-12-27 19:02:51.931236'),(11,'auth','0006_require_contenttypes_0002','2023-12-27 19:02:51.938167'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-27 19:02:51.940546'),(13,'auth','0008_alter_user_username_max_length','2023-12-27 19:02:51.998495'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-27 19:02:52.078152'),(15,'auth','0010_alter_group_name_max_length','2023-12-27 19:02:52.097261'),(16,'auth','0011_update_proxy_permissions','2023-12-27 19:02:52.102105'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-27 19:02:52.162213'),(18,'sessions','0001_initial','2023-12-27 19:02:52.203989'),(19,'store','0001_initial','2023-12-27 19:02:53.019273');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('agn9uwbptmpp08djqogk3nm01tb6dzqe','.eJxVjMsOwiAQRf-FtSHlIQWX7vsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mLUOL0uyGkB9cd0B3qrcnU6rrMKHdFHrTLqRE_r4f7d1Cgl2-NkJFHsIOnoCAZDy6dlQmjNoYtBMoJtHFMlGHwSSskH5hQERubvRPvDw5mOR4:1rIXKz:mJKqUqz_IMnB9XNbQto8vhL3xFtAnv3KZyrDkXAg7-g','2024-01-10 19:04:57.288169');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cart`
--

DROP TABLE IF EXISTS `store_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_cart_product_id_b219c080_fk_store_product_id` (`product_id`),
  KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_cart_product_id_b219c080_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cart`
--

LOCK TABLES `store_cart` WRITE;
/*!40000 ALTER TABLE `store_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_collection`
--

DROP TABLE IF EXISTS `store_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_collection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_collection`
--

LOCK TABLES `store_collection` WRITE;
/*!40000 ALTER TABLE `store_collection` DISABLE KEYS */;
INSERT INTO `store_collection` VALUES (1,'Hats'),(2,'Rackets'),(3,'Tennis bags'),(4,'Tennis shoes'),(5,'Tennis uniforms'),(6,'Tennis balls'),(7,'Tennis overgrips'),(8,'Ball basket');
/*!40000 ALTER TABLE `store_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_customer_user_id_04276401_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (1,'6978601647','Ermou 38','Greece','Attica','19200',1);
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_image`
--

DROP TABLE IF EXISTS `store_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_path` varchar(100) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_image_product_id_486a7bcd_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_image_product_id_486a7bcd_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_image`
--

LOCK TABLES `store_image` WRITE;
/*!40000 ALTER TABLE `store_image` DISABLE KEYS */;
INSERT INTO `store_image` VALUES (1,'ig5479_1_footwear_photography_side-lateral-center-view_white.webp',1),(2,'aurora_fb5372-010_phsfh001-2000.webp',2),(3,'wr8026301_1.webp',3),(4,'wr117410u_0_blade_feel_100_gr_bl.webp.webp',4),(6,'51122d0d-b3af-4d1c-ad57-f93cadb1591f.webp',6),(7,'wr8410701.webp',7),(8,'ball_basket_3.webp',8),(9,'aurora_fb7351-410_phsfm001-2000.webp',5);
/*!40000 ALTER TABLE `store_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `placed_at` datetime(6) NOT NULL,
  `payment_status` varchar(1) NOT NULL,
  `customer_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`),
  CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (1,'2023-12-27 20:04:26.202668','P',1),(2,'2023-12-27 20:05:54.452671','P',1),(3,'2023-12-27 20:15:46.162539','P',1);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` smallint unsigned NOT NULL,
  `unit_price` decimal(6,2) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_orderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderitem`
--

LOCK TABLES `store_orderitem` WRITE;
/*!40000 ALTER TABLE `store_orderitem` DISABLE KEYS */;
INSERT INTO `store_orderitem` VALUES (1,1,25.00,1,2),(2,4,25.00,2,2),(3,2,2.00,3,7);
/*!40000 ALTER TABLE `store_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `unit_price` decimal(6,2) NOT NULL,
  `inventory` int NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `collection_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_collection_id_2914d2ba_fk_store_collection_id` (`collection_id`),
  CONSTRAINT `store_product_collection_id_2914d2ba_fk_store_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `store_collection` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'Ανδρικά Παπούτσια Τένις','Αυτά τα adidas Adizero Ubersonic 4.1 τένις παπούτσια προσφέρουν σταθερότητα στις δύσκολες πλάγιες κινήσεις, χάρη στο ενισχυμένο, ελαφρύ mesh επάνω μέρος. Στο κάτω μέρος, η Lightstrike ενδιάμεση σόλα και η αντιολισθητική Adiwear εξωτερική σόλα συνδυάζονται για δυναμικό παιχνίδι σε χωμάτινα γήπεδα',100.00,20,'2023-12-27 19:06:46.735531',4),(2,'Nike Dri-FIT Club Unstructured Metal Swoosh Cap','Step up your Swoosh game with this mid-depth, unstructured Club Cap. Its curved bill and metal Swoosh logo give your look a clean finish while sweat-wicking fabric helps you stay cool and comfortable while you make the most of warm, sunny weather.',25.00,0,'2023-12-27 20:05:54.468647',1),(3,'Wilson Roland Garros Team Tennis Bag','Wilson Roland Garros Team 3-Pack feature a main compartment to store 3 tennis rackets, clothing or tennis shoes, and a side pocket to store tennis accessories.',60.00,14,'2023-12-27 19:14:19.454595',3),(4,'Ρακέτα Τένις Wilson Blade Feel 100','Αυτή η ρακέτα Blade Feel 100, είναι σχεδιασμένη για τον απλό ή αρχάριο παίκτη και προσφέρει φανταστική αίσθηση και άνεση χάρη στην τεχνολογία BLX του πλαισίου.',100.00,8,'2023-12-27 19:16:21.888450',2),(5,'Nike Club Poly-Knit Men\'s Tracksuit','Clean. Classic. Versatile. That\'s the ethos of a true essential. Our Nike Club poly-knit tracksuit gives you all that in a package with soft fabric and relaxed fit for laid-back comfort. Pair it up with a graphic tee and some retro Nike sneakers for casual, go-anywhere style.',70.00,24,'2023-12-27 19:36:47.087149',5),(6,'Μπαλάκια Τένις Dunlop','To τρίχωμα στα μπαλάκια τένις Dunlop Australian Open Official All Court φέρει την τεχνολογία HD Pro Cloth για εξαιρετική αίσθηση ενώ η τεχνολογία HD Core ενισχύθηκε επιπλέον, προκειμένου να ανταποκριθεί στις απαιτήσεις των αθλητών υψηλού επιπέδου.',5.00,10,'2023-12-27 19:23:07.630615',6),(7,'Wilson Comfort Tennis Overgrips x 1','Τα Wilson Comfort Overgrips προσφέρουν άνετο κράτημα και είναι εξαιρετικά ανθεκτικό με απαλή αίσθηση. Ιδανικό για όλες τις ρακέτες του τένις.',2.00,48,'2023-12-27 20:15:46.172840',7),(8,'Μεταλλικό Καλάθι Tennis Ball Basket x 72','Μεταλλικό καλάθι μαζέματος μπαλών τένις με ροδάκια για εύκολη μετακίνηση. Έχοντας τις χειρολαβές στο επάνω μέρος μπορείτε να το μεταφέρετε, ενώ ακουμπώντας τες στο έδαφος στέκεται μόνο του. Χωρητικότητα 72 μπαλάκια τένις.',35.00,3,'2023-12-27 19:33:18.274524',8);
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-30 15:14:05
