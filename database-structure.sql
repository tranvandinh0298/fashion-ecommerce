-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fashion_ecommerce
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
-- Table structure for table `attribute_option_sku`
--

DROP TABLE IF EXISTS `attribute_option_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_option_sku` (
  `sku_id` bigint unsigned NOT NULL,
  `attribute_option_id` bigint unsigned NOT NULL,
  KEY `attribute_option_sku_sku_id_foreign` (`sku_id`),
  KEY `attribute_option_sku_attribute_option_id_foreign` (`attribute_option_id`),
  CONSTRAINT `attribute_option_sku_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`),
  CONSTRAINT `attribute_option_sku_sku_id_foreign` FOREIGN KEY (`sku_id`) REFERENCES `skus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_option_sku`
--

LOCK TABLES `attribute_option_sku` WRITE;
/*!40000 ALTER TABLE `attribute_option_sku` DISABLE KEYS */;
INSERT INTO `attribute_option_sku` VALUES (9,4),(9,25),(10,4),(10,20),(11,5),(11,25),(12,7),(12,24);
/*!40000 ALTER TABLE `attribute_option_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_options`
--

DROP TABLE IF EXISTS `attribute_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_options_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_options`
--

LOCK TABLES `attribute_options` WRITE;
/*!40000 ALTER TABLE `attribute_options` DISABLE KEYS */;
INSERT INTO `attribute_options` VALUES (4,2,'S','2024-04-18 10:18:25','2024-04-18 10:18:25',NULL),(5,2,'M','2024-04-18 10:18:35','2024-04-18 10:18:35',NULL),(6,2,'L','2024-04-18 10:18:39','2024-04-18 10:18:39',NULL),(7,2,'XL','2024-04-18 10:18:43','2024-04-18 10:18:43',NULL),(8,2,'XXL','2024-04-18 10:18:46','2024-04-18 10:18:46',NULL),(9,2,'XXXL','2024-04-18 10:18:50','2024-04-18 10:18:50',NULL),(10,3,'29','2024-04-18 10:19:04','2024-04-18 10:19:04',NULL),(11,3,'30','2024-04-18 10:19:08','2024-04-18 10:19:08',NULL),(12,3,'31','2024-04-18 10:19:10','2024-04-18 10:19:10',NULL),(13,3,'32','2024-04-18 10:19:13','2024-04-18 10:19:13',NULL),(14,3,'33','2024-04-18 10:19:15','2024-04-18 10:19:15',NULL),(15,3,'34','2024-04-18 10:19:18','2024-04-18 10:19:18',NULL),(16,3,'35','2024-04-18 10:19:20','2024-04-18 10:19:20',NULL),(17,3,'36','2024-04-18 10:19:23','2024-04-18 10:19:23',NULL),(18,3,'37','2024-04-18 10:19:27','2024-04-18 10:19:27',NULL),(19,4,'Xanh đậm','2024-04-18 10:19:39','2024-04-18 10:19:39',NULL),(20,4,'Trắng','2024-04-18 10:19:47','2024-04-18 10:19:47',NULL),(21,4,'Đỏ','2024-04-18 10:19:51','2024-04-18 10:19:51',NULL),(22,4,'Tím','2024-04-18 10:19:55','2024-04-18 10:19:55',NULL),(23,4,'Vàng','2024-04-18 10:20:05','2024-04-18 10:20:05',NULL),(24,4,'Xám','2024-04-18 10:20:11','2024-04-18 10:20:11',NULL),(25,4,'Đen','2024-04-18 10:31:26','2024-04-18 10:31:26',NULL);
/*!40000 ALTER TABLE `attribute_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (2,'Kích cỡ áo','2024-04-18 08:06:52','2024-04-18 08:06:52',NULL),(3,'Kích cỡ quần','2024-04-18 08:06:57','2024-04-18 08:06:57',NULL),(4,'Màu sắc','2024-04-18 08:07:03','2024-04-18 08:07:03',NULL),(5,'Dung lượng','2024-04-18 08:07:10','2024-04-18 08:07:10',NULL),(6,'Nhu cầu sử dụng','2024-04-18 08:07:16','2024-04-18 08:07:16',NULL);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '0: category, 1: collection',
  `status` tinyint NOT NULL DEFAULT '0',
  `image_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_image_id_foreign` (`image_id`),
  CONSTRAINT `categories_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Men','men','Men clothing',0,1,8,'2024-03-31 08:02:29','2024-04-15 15:52:06',NULL),(2,'Bag','bag','Bag',0,1,55,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(3,'Shoes','shoes','Shoes',0,1,17,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(4,'Watches','watches','Watches',0,1,23,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(7,'Women 02 and 02 and 02','women-02-and-02-and-02',NULL,0,1,68,'2024-04-18 08:37:27','2024-04-18 08:45:28',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  KEY `category_product_category_id_foreign` (`category_id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_product`
--

DROP TABLE IF EXISTS `image_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_product` (
  `product_id` bigint unsigned NOT NULL,
  `image_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`image_id`),
  KEY `fk_image` (`image_id`),
  CONSTRAINT `fk_image` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_product`
--

LOCK TABLES `image_product` WRITE;
/*!40000 ALTER TABLE `image_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'about-01.jpg','storage/about-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(2,'about-02.jpg','storage/about-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(3,'avatar-01.jpg','storage/avatar-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(4,'banner-01.jpg','storage/banner-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(5,'banner-02.jpg','storage/banner-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(6,'banner-03.jpg','storage/banner-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(7,'banner-04.jpg','storage/banner-04.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(8,'banner-05.jpg','storage/banner-05.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(9,'banner-06.jpg','storage/banner-06.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(10,'banner-07.jpg','storage/banner-07.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(11,'banner-08.jpg','storage/banner-08.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(12,'banner-09.jpg','storage/banner-09.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(13,'bg-01.jpg','storage/bg-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(14,'bg-02.jpg','storage/bg-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(15,'blog-01.jpg','storage/blog-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(16,'blog-02.jpg','storage/blog-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(17,'blog-03.jpg','storage/blog-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(18,'blog-04.jpg','storage/blog-04.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(19,'blog-05.jpg','storage/blog-05.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(20,'blog-06.jpg','storage/blog-06.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(21,'gallery-01.jpg','storage/gallery-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(22,'gallery-02.jpg','storage/gallery-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(23,'gallery-03.jpg','storage/gallery-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(24,'gallery-04.jpg','storage/gallery-04.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(25,'gallery-05.jpg','storage/gallery-05.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(26,'gallery-06.jpg','storage/gallery-06.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(27,'gallery-07.jpg','storage/gallery-07.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(28,'gallery-08.jpg','storage/gallery-08.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(29,'gallery-09.jpg','storage/gallery-09.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(30,'item-cart-01.jpg','storage/item-cart-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(31,'item-cart-02.jpg','storage/item-cart-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(32,'item-cart-03.jpg','storage/item-cart-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(33,'item-cart-04.jpg','storage/item-cart-04.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(34,'item-cart-05.jpg','storage/item-cart-05.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(35,'product-01.jpg','storage/product-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(36,'product-02.jpg','storage/product-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(37,'product-03.jpg','storage/product-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(38,'product-04.jpg','storage/product-04.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(39,'product-05.jpg','storage/product-05.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(40,'product-06.jpg','storage/product-06.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(41,'product-07.jpg','storage/product-07.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(42,'product-08.jpg','storage/product-08.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(43,'product-09.jpg','storage/product-09.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(44,'product-10.jpg','storage/product-10.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(45,'product-11.jpg','storage/product-11.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(46,'product-12.jpg','storage/product-12.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(47,'product-13.jpg','storage/product-13.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(48,'product-14.jpg','storage/product-14.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(49,'product-15.jpg','storage/product-15.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(50,'product-16.jpg','storage/product-16.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(51,'product-detail-01.jpg','storage/product-detail-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(52,'product-detail-02.jpg','storage/product-detail-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(53,'product-detail-03.jpg','storage/product-detail-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(54,'product-min-01.jpg','storage/product-min-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(55,'product-min-02.jpg','storage/product-min-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(56,'product-min-03.jpg','storage/product-min-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(57,'slide-01.jpg','storage/slide-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(58,'slide-02.jpg','storage/slide-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(59,'slide-03.jpg','storage/slide-03.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(60,'slide-04.jpg','storage/slide-04.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(61,'slide-05.jpg','storage/slide-05.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(62,'slide-06.jpg','storage/slide-06.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(63,'slide-07.jpg','storage/slide-07.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(64,'thumb-01.jpg','storage/thumb-01.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(65,'thumb-02.jpg','storage/thumb-02.jpg',1,'2024-03-31 08:02:29','2024-03-31 08:02:29',NULL),(66,'thumb-03.jpg','storage/thumb-03.jpg',0,'2024-03-31 08:02:29','2024-04-07 14:08:43','2024-04-07 14:08:43');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_03_25_023340_create_images_table',1),(6,'2024_03_25_023341_create_categories_table',1),(7,'2024_03_25_023349_create_products_table',1),(8,'2024_03_25_030113_create_skus_table',1),(9,'2024_03_25_040135_create_attributes_table',1),(10,'2024_03_25_040250_create_attribute_options_table',1),(11,'2024_03_25_040518_create_attribute_option_sku_table',1),(12,'2024_03_25_041800_create_payment_methods_table',1),(13,'2024_03_25_041801_create_transactions_table',1),(14,'2024_03_25_043113_create_transaction_items_table',1),(15,'2024_03_25_065703_create_product_images_table',1),(16,'2024_03_25_094039_create_category_product_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  UNIQUE KEY `products_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,'Lightweight Jacket','light-weight-jacket','JAK-01','Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.',1,'2024-04-18 11:35:57','2024-04-18 11:35:57',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skus`
--

DROP TABLE IF EXISTS `skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `skus_code_unique` (`code`),
  KEY `skus_product_id_foreign` (`product_id`),
  CONSTRAINT `skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skus`
--

LOCK TABLES `skus` WRITE;
/*!40000 ALTER TABLE `skus` DISABLE KEYS */;
INSERT INTO `skus` VALUES (9,'JAK-01-S-BLACK',6,10,100000,'2024-04-18 11:35:57','2024-04-18 11:35:57',NULL),(10,'JAK-01-S-WHITE',6,10,100000,'2024-04-18 11:35:57','2024-04-18 11:35:57',NULL),(11,'JAK-01-M-BLACK',6,10,110000,'2024-04-18 11:35:57','2024-04-18 11:35:57',NULL),(12,'JAK-01-XL-GRAY',6,10,120000,'2024-04-18 11:35:57','2024-04-18 11:35:57',NULL);
/*!40000 ALTER TABLE `skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_items`
--

DROP TABLE IF EXISTS `transaction_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sku_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaction_items_sku_id_foreign` (`sku_id`),
  CONSTRAINT `transaction_items_sku_id_foreign` FOREIGN KEY (`sku_id`) REFERENCES `skus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_items`
--

LOCK TABLES `transaction_items` WRITE;
/*!40000 ALTER TABLE `transaction_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `payment_fee` double NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL DEFAULT '0',
  `payment_method_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_code_unique` (`code`),
  KEY `transactions_payment_method_id_foreign` (`payment_method_id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Mr. Ken Adams abc','vergie.wolf@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','G5wyU5uxge','2024-03-31 01:02:29','2024-04-13 07:03:31'),(3,'Mrs. Norene Beatty','tyler.von@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','G9KDGetflz','2024-03-31 01:02:29','2024-03-31 01:02:29'),(4,'Mr. Waldo Raynor III','smitchell@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','W90gizetoH','2024-03-31 01:02:29','2024-03-31 01:02:29'),(5,'Paul Mraz','lolita88@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','731TPkMCWJ','2024-03-31 01:02:29','2024-03-31 01:02:29'),(6,'Carrie Johns II','brakus.elenora@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','F7cmFD0zVQ','2024-03-31 01:02:29','2024-03-31 01:02:29'),(7,'Prof. Bernhard VonRueden','gutmann.jules@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','xRBlwCiNVl','2024-03-31 01:02:29','2024-03-31 01:02:29'),(8,'Jeffrey Kerluke','jeffery.fahey@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PxfbFM9xjI','2024-03-31 01:02:29','2024-03-31 01:02:29'),(9,'Dr. Raheem Moore','tmurray@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','131uut5NCx','2024-03-31 01:02:29','2024-03-31 01:02:29'),(10,'Kristian Keeling','bruen.idell@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','V07FBOgKSR','2024-03-31 01:02:29','2024-03-31 01:02:29'),(11,'Prof. Diamond Greenholt MD','alberto.schmeler@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GjYgDdqlB7','2024-03-31 01:02:29','2024-03-31 01:02:29'),(12,'Jerrell Schneider III','leffler.bernard@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','nWTF5vqEBl','2024-03-31 01:02:29','2024-03-31 01:02:29'),(13,'Arjun Runolfsdottir','fisher.sigmund@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','brzCb6OMdT','2024-03-31 01:02:29','2024-03-31 01:02:29'),(14,'Alisha Johns','sabryna01@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MjAefE4xoU','2024-03-31 01:02:29','2024-03-31 01:02:29'),(15,'Aglae Zemlak','uoconnell@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','y9J4MleXyA','2024-03-31 01:02:29','2024-03-31 01:02:29'),(16,'Linda Quitzon','sylvester.smith@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OsBhMTaQc3','2024-03-31 01:02:29','2024-03-31 01:02:29'),(17,'Tatum Pouros','macey71@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','52aDytt5g4','2024-03-31 01:02:29','2024-03-31 01:02:29'),(18,'Alicia Torphy III','hazel.grant@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','SOLGHt1744','2024-03-31 01:02:29','2024-03-31 01:02:29'),(19,'Prof. Thomas Kulas PhD','easter.okon@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','knEAEBxUyO','2024-03-31 01:02:29','2024-03-31 01:02:29'),(20,'Antwan Runolfsson','waters.aglae@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','J1LGwKNF32','2024-03-31 01:02:29','2024-03-31 01:02:29'),(21,'Fabiola Jerde','parisian.stacey@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yyUsBKzg1t','2024-03-31 01:02:29','2024-03-31 01:02:29'),(22,'Elinore Hill','chaya81@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','kCMSypYsGK','2024-03-31 01:02:29','2024-03-31 01:02:29'),(23,'Marina Cruickshank IV','bettie82@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Gfmbpc7nqo','2024-03-31 01:02:29','2024-03-31 01:02:29'),(24,'Queen Nitzsche IV','roxane06@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','62mnNaYe0o','2024-03-31 01:02:29','2024-03-31 01:02:29'),(25,'Terrence Grady','jordane.rempel@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','5299F4Ldqu','2024-03-31 01:02:29','2024-03-31 01:02:29'),(26,'Petra Kertzmann','thuel@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','UC16r5lNyw','2024-03-31 01:02:29','2024-03-31 01:02:29'),(27,'Gideon Anderson','paolo.romaguera@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eiqRyubz9R','2024-03-31 01:02:29','2024-03-31 01:02:29'),(28,'Kaelyn Morissette','jackson.runte@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fhj1Z3WhN0','2024-03-31 01:02:29','2024-03-31 01:02:29'),(29,'Sylvester Dibbert','kertzmann.patricia@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QQjyFuh4Zm','2024-03-31 01:02:29','2024-03-31 01:02:29'),(30,'Jarod O\'Conner','ogibson@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','axufm7WIZx','2024-03-31 01:02:29','2024-03-31 01:02:29'),(31,'Jevon Breitenberg','lyda28@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','OsN4B5VdAN','2024-03-31 01:02:29','2024-03-31 01:02:29'),(32,'Prof. Melvina Hills','beahan.morris@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pflNT2n5Xn','2024-03-31 01:02:29','2024-03-31 01:02:29'),(33,'Dina Daugherty','ondricka.jeremy@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','5H8mEfEnOe','2024-03-31 01:02:29','2024-03-31 01:02:29'),(34,'Dr. Marley Lang Sr.','qpredovic@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LKJJiZIAnv','2024-03-31 01:02:29','2024-03-31 01:02:29'),(35,'Gustave Welch','mstark@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GFYW6pbVae','2024-03-31 01:02:29','2024-03-31 01:02:29'),(36,'Miss Rae Quigley DDS','madelyn.price@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pCgBkXqjzN','2024-03-31 01:02:29','2024-03-31 01:02:29'),(37,'Junius Nitzsche','christiansen.christy@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','L4xJ61mO3x','2024-03-31 01:02:29','2024-03-31 01:02:29'),(38,'Narciso Marquardt','phills@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QcjJ4VHmKX','2024-03-31 01:02:29','2024-03-31 01:02:29'),(39,'Maribel Zemlak','sanford.carlos@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cBtOxg61no','2024-03-31 01:02:29','2024-03-31 01:02:29'),(40,'Prof. Katelin Hamill DVM','sadye.lehner@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','W3aJT4tBgo','2024-03-31 01:02:29','2024-03-31 01:02:29'),(41,'Adrian Becker','xgislason@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','x5HgWgfnUS','2024-03-31 01:02:29','2024-03-31 01:02:29'),(42,'Tyree Torphy','orn.myrtle@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','t2K3qn6Ik0','2024-03-31 01:02:29','2024-03-31 01:02:29'),(43,'Garrick Turcotte','jwiegand@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JOfSgBdw2p','2024-03-31 01:02:29','2024-03-31 01:02:29'),(44,'Dr. Sigrid Maggio','ijacobi@example.com','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9lMOgsXzHI','2024-03-31 01:02:29','2024-03-31 01:02:29'),(45,'Dr. Tremaine Lubowitz','pascale13@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','T7qy12kwp9','2024-03-31 01:02:29','2024-03-31 01:02:29'),(46,'Domenick Ritchie','cwalker@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CQTS87Rfmp','2024-03-31 01:02:29','2024-03-31 01:02:29'),(47,'Lacy Klocko DVM','yoshiko96@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FamdjpQG4C','2024-03-31 01:02:29','2024-03-31 01:02:29'),(48,'Mr. Ezekiel Ritchie','keanu45@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QxfEN6Z10u','2024-03-31 01:02:29','2024-03-31 01:02:29'),(49,'Ms. Felipa Schuppe DDS','kertzmann.jordane@example.org','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4Ssso6sC1A','2024-03-31 01:02:29','2024-03-31 01:02:29'),(50,'Rickey Rowe','larissa.hartmann@example.net','2024-03-31 01:02:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tEBKnPVAvm','2024-03-31 01:02:29','2024-03-31 01:02:29');
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

-- Dump completed on 2024-04-22 23:39:00
