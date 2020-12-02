-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: sabia_blog
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS sabia_blog;

USE sabia_blog;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_application::category.category','{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"slug\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(3,'model_def_application::post.post','{\"uid\":\"application::post.post\",\"collectionName\":\"posts\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Post\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"thumbnail\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"title\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"subtitle\":{\"type\":\"string\",\"required\":false},\"content\":{\"type\":\"richtext\",\"required\":true},\"slug\":{\"type\":\"string\"},\"categories\":{\"collection\":\"category\",\"attribute\":\"category\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(4,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(5,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(6,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(7,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(11,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(12,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}','object','',''),(13,'plugin_content_manager_configuration_content_types::application::category.category','{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"Digite o nome\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"ESTE CAMPO É DE PREENCHIMENTO AUTOMÁTICO\",\"placeholder\":\"NÃO ALTERAR ESTE CAMPO\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Criado em\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Atualizado em\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(14,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(15,'plugin_content_manager_configuration_content_types::application::post.post','{\"uid\":\"application::post.post\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"ESTE CAMPO É DE PREENCHIMENTO AUTOMÁTICO\",\"placeholder\":\"NÃO ALTERAR ESTE CAMPO\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"thumbnail\":{\"edit\":{\"label\":\"Foto de capa\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Foto de capa\",\"searchable\":false,\"sortable\":false}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"Sub-título\",\"description\":\"\",\"placeholder\":\"Digite o sub-título\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sub-título\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Título\",\"description\":\"\",\"placeholder\":\"Digite o título\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Título\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"Conteúdo\",\"description\":\"\",\"placeholder\":\"Digite o conteúdo\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"Categorias\",\"description\":\"\",\"placeholder\":\"Selecione as categorias\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Categories\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"thumbnail\",\"title\",\"subtitle\"],\"editRelations\":[\"categories\"],\"edit\":[[{\"name\":\"thumbnail\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"slug\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(19,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(21,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(22,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(23,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(24,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` longtext,
  `slug` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_title_unique` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts__categories`
--

DROP TABLE IF EXISTS `posts__categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts__categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts__categories`
--

LOCK TABLES `posts__categories` WRITE;
/*!40000 ALTER TABLE `posts__categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts__categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::content-manager.explorer.create','application::category.category','[\"name\"]','[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(2,'plugins::content-manager.explorer.read','application::category.category','[\"name\"]','[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(3,'plugins::content-manager.explorer.read','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(4,'plugins::content-manager.explorer.publish','application::post.post',NULL,'[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(5,'plugins::content-manager.explorer.delete','application::post.post',NULL,'[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(6,'plugins::upload.read',NULL,NULL,'[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(7,'plugins::content-manager.explorer.delete','application::category.category',NULL,'[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(8,'plugins::content-manager.explorer.update','application::category.category','[\"name\"]','[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(9,'plugins::content-manager.explorer.update','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(10,'plugins::content-manager.explorer.create','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[]',2,'2020-12-02 13:17:14','2020-12-02 13:17:14'),(11,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(12,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(13,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(14,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(15,'plugins::content-manager.explorer.create','application::category.category','[\"name\"]','[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(16,'plugins::content-manager.explorer.read','application::category.category','[\"name\"]','[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(17,'plugins::content-manager.explorer.create','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(18,'plugins::content-manager.explorer.update','application::category.category','[\"name\"]','[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(19,'plugins::content-manager.explorer.read','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(20,'plugins::content-manager.explorer.update','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(21,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(22,'plugins::content-manager.explorer.delete','application::post.post',NULL,'[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(23,'plugins::content-manager.explorer.delete','application::category.category',NULL,'[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(24,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(25,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(26,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(27,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(29,'plugins::content-manager.explorer.create','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[]',1,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(31,'plugins::content-manager.explorer.read','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[]',1,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(32,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(34,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(35,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(36,'plugins::content-manager.explorer.delete','application::category.category',NULL,'[]',1,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(37,'plugins::content-manager.explorer.update','application::post.post','[\"thumbnail\",\"title\",\"subtitle\",\"content\",\"slug\",\"categories\"]','[]',1,'2020-12-02 13:17:15','2020-12-02 13:17:15'),(38,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(39,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(40,'plugins::upload.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(41,'plugins::content-manager.explorer.publish','application::post.post',NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(42,'plugins::content-manager.explorer.delete','application::post.post',NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(43,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(44,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(45,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(46,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(47,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(48,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(49,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(50,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(51,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(52,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(53,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(54,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(55,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(56,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(57,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(58,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:16'),(59,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(60,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(61,'admin::marketplace.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(62,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(63,'admin::webhooks.read',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(64,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(65,'admin::webhooks.create',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(66,'admin::webhooks.delete',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(67,'admin::webhooks.update',NULL,NULL,'[]',1,'2020-12-02 13:17:16','2020-12-02 13:17:17'),(68,'admin::users.create',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(69,'admin::users.read',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(70,'admin::users.update',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(71,'admin::users.delete',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(72,'admin::roles.create',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(73,'admin::roles.read',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(74,'admin::roles.update',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(75,'admin::roles.delete',NULL,NULL,'[]',1,'2020-12-02 13:17:17','2020-12-02 13:17:17'),(76,'plugins::content-manager.explorer.read','application::category.category','[\"name\",\"slug\"]','[]',1,'2020-12-02 20:37:32','2020-12-02 20:37:32'),(77,'plugins::content-manager.explorer.update','application::category.category','[\"name\",\"slug\"]','[]',1,'2020-12-02 20:37:32','2020-12-02 20:37:32'),(78,'plugins::content-manager.explorer.create','application::category.category','[\"name\",\"slug\"]','[]',1,'2020-12-02 20:37:32','2020-12-02 20:37:32');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2020-12-02 13:17:14','2020-12-02 13:17:14'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2020-12-02 13:17:14','2020-12-02 13:17:14'),(3,'Author','strapi-author','Authors can manage the content they have created.','2020-12-02 13:17:14','2020-12-02 13:17:14');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'application','category','count',0,'',1,NULL,NULL),(2,'application','category','delete',0,'',1,NULL,NULL),(3,'application','category','create',0,'',2,NULL,NULL),(4,'application','category','count',1,'ratelimit',2,NULL,NULL),(5,'application','category','create',0,'',1,NULL,NULL),(6,'application','category','find',0,'',1,NULL,NULL),(7,'application','category','findone',0,'',1,NULL,NULL),(8,'application','category','findone',1,'ratelimit',2,NULL,NULL),(9,'application','category','find',1,'ratelimit',2,NULL,NULL),(10,'application','category','delete',0,'',2,NULL,NULL),(11,'application','category','update',0,'',1,NULL,NULL),(12,'application','category','update',0,'',2,NULL,NULL),(13,'application','post','count',0,'',1,NULL,NULL),(14,'application','post','count',1,'ratelimit',2,NULL,NULL),(15,'application','post','create',0,'',1,NULL,NULL),(16,'application','post','create',0,'',2,NULL,NULL),(17,'application','post','delete',0,'',1,NULL,NULL),(18,'application','post','delete',0,'',2,NULL,NULL),(19,'application','post','find',0,'',1,NULL,NULL),(20,'application','post','find',1,'ratelimit',2,NULL,NULL),(21,'application','post','findone',0,'',1,NULL,NULL),(22,'application','post','findone',1,'ratelimit',2,NULL,NULL),(23,'application','post','update',0,'',1,NULL,NULL),(24,'application','post','update',0,'',2,NULL,NULL),(25,'content-manager','components','findcomponent',0,'',1,NULL,NULL),(26,'content-manager','components','findcomponent',0,'',2,NULL,NULL),(27,'content-manager','components','listcomponents',0,'',1,NULL,NULL),(28,'content-manager','components','listcomponents',0,'',2,NULL,NULL),(29,'content-manager','components','updatecomponent',0,'',1,NULL,NULL),(30,'content-manager','components','updatecomponent',0,'',2,NULL,NULL),(31,'content-manager','contentmanager','checkuidavailability',0,'',1,NULL,NULL),(32,'content-manager','contentmanager','checkuidavailability',0,'',2,NULL,NULL),(33,'content-manager','contentmanager','count',0,'',1,NULL,NULL),(34,'content-manager','contentmanager','count',0,'',2,NULL,NULL),(35,'content-manager','contentmanager','create',0,'',1,NULL,NULL),(36,'content-manager','contentmanager','create',0,'',2,NULL,NULL),(37,'content-manager','contentmanager','delete',0,'',1,NULL,NULL),(38,'content-manager','contentmanager','delete',0,'',2,NULL,NULL),(39,'content-manager','contentmanager','deletemany',0,'',1,NULL,NULL),(40,'content-manager','contentmanager','deletemany',0,'',2,NULL,NULL),(41,'content-manager','contentmanager','find',0,'',1,NULL,NULL),(42,'content-manager','contentmanager','find',0,'',2,NULL,NULL),(43,'content-manager','contentmanager','findone',0,'',1,NULL,NULL),(44,'content-manager','contentmanager','findone',0,'',2,NULL,NULL),(45,'content-manager','contentmanager','findrelationlist',0,'',1,NULL,NULL),(46,'content-manager','contentmanager','findrelationlist',0,'',2,NULL,NULL),(47,'content-manager','contentmanager','generateuid',0,'',2,NULL,NULL),(48,'content-manager','contentmanager','generateuid',0,'',1,NULL,NULL),(49,'content-manager','contentmanager','publish',0,'',1,NULL,NULL),(50,'content-manager','contentmanager','publish',0,'',2,NULL,NULL),(51,'content-manager','contentmanager','unpublish',0,'',1,NULL,NULL),(52,'content-manager','contentmanager','unpublish',0,'',2,NULL,NULL),(53,'content-manager','contentmanager','update',0,'',1,NULL,NULL),(54,'content-manager','contentmanager','update',0,'',2,NULL,NULL),(55,'content-manager','contenttypes','findcontenttype',0,'',1,NULL,NULL),(56,'content-manager','contenttypes','findcontenttype',0,'',2,NULL,NULL),(57,'content-manager','contenttypes','listcontenttypes',0,'',1,NULL,NULL),(58,'content-manager','contenttypes','listcontenttypes',0,'',2,NULL,NULL),(59,'content-manager','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(60,'content-manager','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(61,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(62,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(63,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(64,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(65,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(66,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(67,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(68,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(69,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(70,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(71,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(72,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(73,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(74,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(75,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(76,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(77,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(78,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(79,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(80,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(81,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(82,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(83,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(84,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(85,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(86,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(87,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(88,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(89,'email','email','send',0,'',2,NULL,NULL),(90,'email','email','send',0,'',1,NULL,NULL),(91,'upload','upload','count',0,'',1,NULL,NULL),(92,'upload','upload','count',0,'',2,NULL,NULL),(93,'upload','upload','destroy',0,'',1,NULL,NULL),(94,'upload','upload','destroy',0,'',2,NULL,NULL),(95,'upload','upload','find',0,'',1,NULL,NULL),(96,'upload','upload','find',0,'',2,NULL,NULL),(97,'upload','upload','findone',0,'',1,NULL,NULL),(98,'upload','upload','findone',0,'',2,NULL,NULL),(99,'upload','upload','getsettings',0,'',1,NULL,NULL),(100,'upload','upload','getsettings',0,'',2,NULL,NULL),(101,'upload','upload','search',0,'',1,NULL,NULL),(102,'upload','upload','search',0,'',2,NULL,NULL),(103,'upload','upload','updatesettings',0,'',1,NULL,NULL),(104,'upload','upload','updatesettings',0,'',2,NULL,NULL),(105,'upload','upload','upload',0,'',1,NULL,NULL),(106,'upload','upload','upload',0,'',2,NULL,NULL),(107,'users-permissions','auth','callback',0,'',1,NULL,NULL),(108,'users-permissions','auth','callback',1,'',2,NULL,NULL),(109,'users-permissions','auth','connect',1,'',1,NULL,NULL),(110,'users-permissions','auth','connect',1,'',2,NULL,NULL),(111,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(112,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(113,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(114,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(115,'users-permissions','auth','register',0,'',1,NULL,NULL),(116,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(117,'users-permissions','auth','register',1,'',2,NULL,NULL),(118,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(119,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(120,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(121,'users-permissions','user','count',0,'',1,NULL,NULL),(122,'users-permissions','user','count',0,'',2,NULL,NULL),(123,'users-permissions','user','create',0,'',1,NULL,NULL),(124,'users-permissions','user','create',0,'',2,NULL,NULL),(125,'users-permissions','user','destroy',0,'',1,NULL,NULL),(126,'users-permissions','user','destroy',0,'',2,NULL,NULL),(127,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(128,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(129,'users-permissions','user','find',0,'',1,NULL,NULL),(130,'users-permissions','user','find',0,'',2,NULL,NULL),(131,'users-permissions','user','findone',0,'',1,NULL,NULL),(132,'users-permissions','user','findone',0,'',2,NULL,NULL),(133,'users-permissions','user','me',1,'',1,NULL,NULL),(134,'users-permissions','user','me',1,'',2,NULL,NULL),(135,'users-permissions','user','update',0,'',1,NULL,NULL),(136,'users-permissions','user','update',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(139,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(140,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(149,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(150,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(155,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(156,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(157,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(158,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(159,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(160,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(161,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(162,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(163,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(164,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(165,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(166,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(167,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(168,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(169,'wysiwyg','wysiwyg','index',0,'',1,NULL,NULL),(170,'wysiwyg','wysiwyg','index',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 20:40:13
