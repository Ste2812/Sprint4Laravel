-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: footballweb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_equipo_A` bigint unsigned NOT NULL,
  `id_equipo_B` bigint unsigned NOT NULL,
  `comentarios` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `games_id_equipo_a_foreign` (`id_equipo_A`),
  KEY `games_id_equipo_b_foreign` (`id_equipo_B`),
  CONSTRAINT `games_id_equipo_a_foreign` FOREIGN KEY (`id_equipo_A`) REFERENCES `teams` (`id`),
  CONSTRAINT `games_id_equipo_b_foreign` FOREIGN KEY (`id_equipo_B`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'dolorem_distinctio_rerum_impedit_eius','1989-03-20 00:00:00','2022-04-18 11:36:34','2022-04-18 11:36:34','casperbury',18,20,'Inventore optio necessitatibus a consectetur. Soluta quia dignissimos quibusdam. Odit perferendis voluptatum quod molestiae quo.'),(2,'cumque_error_ipsam_voluptas_in_ducimus','2006-04-12 00:00:00','2022-04-18 11:36:34','2022-04-18 11:36:34','camdenborough',16,12,'Facere perferendis magni sit est. Corrupti error et et sit quas molestias recusandae omnis. Est quo molestiae nihil dolor. Itaque qui nostrum officiis quod tenetur assumenda ea.'),(3,'pariatur_est_et_blanditiis_tenetur','1999-06-23 00:00:00','2022-04-18 11:36:34','2022-04-18 11:36:34','jaskolskiview',4,13,'Corporis ea officia quae ut exercitationem officiis sequi. Et quo eum excepturi occaecati maiores optio. Quisquam rerum modi accusamus nisi natus sequi tempore. Itaque voluptatibus a vero ipsa voluptatem recusandae.'),(4,'ut_suscipit_officia_necessitatibus_officiis','2009-07-21 00:00:00','2022-04-18 11:36:34','2022-04-18 11:36:34','north lucindabury',5,16,'Perspiciatis dicta laudantium eos sequi occaecati odio debitis. Temporibus reprehenderit eveniet ut cum quia itaque est mollitia. Sit dolor possimus tenetur sed. Nihil velit sint ipsam voluptas et quas.'),(5,'ut_ut_accusamus_voluptatem','1997-08-12 00:00:00','2022-04-18 11:36:34','2022-04-18 11:36:34','deronview',16,6,'Excepturi magnam qui ratione et. Eligendi ab aut ut et impedit eum beatae. Fugit est aut reiciendis est.'),(6,'recusandae_nisi_mollitia_qui_quo','1995-11-10 00:00:00','2022-04-18 11:36:34','2022-04-18 11:36:34','fadelburgh',9,7,'Esse numquam sit aut numquam sit ut blanditiis. Qui doloremque tempora occaecati molestiae aut modi laborum. Et magnam aut quia commodi dolorum.'),(7,'est_consequatur_et_occaecati_rerum_molestiae_qui','2008-07-12 00:00:00','2022-04-18 11:36:35','2022-04-18 11:36:35','zenachester',7,17,'Ipsam ipsa aliquid perspiciatis officiis in laudantium. Suscipit delectus placeat molestiae ea qui qui vel temporibus. Ullam et quibusdam odit amet vero voluptate atque. Dignissimos molestiae aut quisquam eum.'),(8,'distinctio_beatae_totam_quas_vitae','1996-06-11 00:00:00','2022-04-18 11:36:35','2022-04-18 11:36:35','new piper',3,13,'Ratione iusto sunt fugiat omnis. Aut soluta ut minus dolores reprehenderit. Hic ea consequatur totam earum facilis.'),(9,'iste_molestias_neque_ea_officiis','1983-12-24 00:00:00','2022-04-18 11:36:35','2022-04-18 11:36:35','east lianamouth',10,20,'Autem consequatur et et dolor fuga illum. Placeat iste harum facilis laborum perferendis.'),(10,'et_quaerat_sequi_quia_aut_totam_et_alias','1988-04-29 00:00:00','2022-04-18 11:36:35','2022-04-18 11:36:35','new elyssafort',20,19,'Nihil et mollitia fuga. Ut cumque nihil occaecati.'),(11,'nobis_unde_ut_ratione_et_saepe_occaecati_qui','2015-04-03 00:00:00','2022-04-18 11:36:35','2022-04-18 11:36:35','east arturo',3,13,'Soluta amet quos magnam voluptas excepturi quibusdam quae. Omnis veritatis consequatur exercitationem nam eum voluptatem aut.'),(12,'soluta_facere_voluptatibus_aut_vel','1995-04-03 00:00:00','2022-04-18 11:36:35','2022-04-18 11:36:35','lake luisaside',12,20,'Qui corporis velit aspernatur. Deleniti officia et ex laudantium iure excepturi eos. Fugiat et enim qui repellat fugiat temporibus cumque. Ipsa nesciunt dolorum magni molestias fugit reprehenderit praesentium.'),(13,'quod_id_laudantium_libero_a_beatae_aut','2012-09-07 00:00:00','2022-04-18 11:36:36','2022-04-18 11:36:36','new abelardoside',7,18,'Ipsam repellendus et id eos itaque error fugiat. Nulla quaerat soluta ipsum hic et. Cum enim et aperiam dolores sequi labore.'),(14,'sit_velit_qui_sint_quia_sint','1974-07-02 00:00:00','2022-04-18 11:36:36','2022-04-18 11:36:36','binshaven',17,15,'Eum dignissimos nobis hic totam. Sapiente porro veritatis error et. Ex dolore ad deserunt vero. Mollitia libero velit consequatur. Laboriosam ut voluptas atque amet.'),(15,'iure_et_molestias_totam_et_illo','2015-10-26 00:00:00','2022-04-18 11:36:36','2022-04-18 11:36:36','cassidyfort',17,2,'Explicabo consequuntur ea molestiae suscipit sit. Inventore dolor voluptates rerum nesciunt est. Sint unde velit explicabo et ut. In hic atque quia aut. Excepturi nihil modi architecto illum.'),(16,'totam_maiores_officiis_quia_quia','1979-07-12 00:00:00','2022-04-18 11:36:36','2022-04-18 11:36:36','toniville',19,12,'Ullam in beatae voluptatum adipisci sit ut temporibus ut. Vel et harum hic quo. Impedit necessitatibus qui minima voluptas quo quo iste. Non sint dolorem molestias ipsam.'),(17,'culpa_velit_occaecati_recusandae_sit_occaecati_rem_earum','1980-06-28 00:00:00','2022-04-18 11:36:36','2022-04-18 11:36:36','landenshire',4,1,'Dolor voluptate aut hic autem sit nihil quia. Consequuntur explicabo sed harum ratione molestiae. Praesentium modi quod a quis. Saepe tempore eligendi quaerat possimus.'),(18,'qui_est_dolores_eos_et_veniam_tenetur_quam','2017-05-09 00:00:00','2022-04-18 11:36:36','2022-04-18 11:36:36','south sedrickfurt',8,9,'Voluptatem voluptatem iste voluptatem ipsam laboriosam officiis. Aperiam aspernatur dolorem qui error. Et sed cum vero praesentium dicta dolor.'),(19,'omnis_dolorem_aperiam_natus_blanditiis_ut_reprehenderit','1989-02-25 00:00:00','2022-04-18 11:36:36','2022-04-18 11:36:36','west wilma',2,6,'Ab hic unde aliquid at quas. Occaecati eaque voluptas enim ad. Esse saepe ut fugiat est ab nisi.'),(20,'voluptatem_culpa_ut_iste_tempora_illo_et_delectus','2017-09-27 00:00:00','2022-04-18 11:36:37','2022-04-18 11:36:37','lake haileybury',10,10,'Deserunt maiores veritatis non sint id qui dolores. Esse cupiditate odio eos quidem suscipit repellat consequuntur.');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_04_15_175217_create_sessions_table',1),(7,'2022_04_15_202627_teams',1),(8,'2022_04_15_204337_create_games_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('AnYasQ4xCv6I95UayZulFoyC9EUXca8Fc3aHmwyy',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk1VcGxKTFZhMzExeDZ4dUc5SE93aVYxSkJLU2RvVjBzUU5XaE9WTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXJ0aWRvcy9yZWN1c2FuZGFlX25pc2lfbW9sbGl0aWFfcXVpX3F1byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1650283326);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('club_deportivo','escuela','otro') COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_jugadores` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'rogahn turnpike','explicabo_id_cum_voluptatibus_quo_exercitationem_nulla','club_deportivo',8,'2022-04-18 11:36:31','2022-04-18 11:36:31','Quam esse dolores quas quo a molestiae dicta. Cumque perspiciatis aut aut. Repudiandae quia itaque inventore et.'),(2,'sauer rapids','modi_dolor_doloribus_qui_quo_molestiae_neque','otro',8,'2022-04-18 11:36:31','2022-04-18 11:36:31','Voluptatem a tempora libero doloribus. Nisi et est omnis iure dicta quis. Error eos reprehenderit et quibusdam eum. Ex dolor ipsa et voluptatem odit explicabo expedita.'),(3,'zieme rue','alias_odit_et_eveniet_facilis_vitae_porro_quisquam','otro',9,'2022-04-18 11:36:31','2022-04-18 11:36:31','Sapiente tenetur voluptatem sint fuga accusantium facilis. Optio voluptas et in hic aspernatur ut. Quia sint sit dolorem sit enim voluptatibus. Aut quod dolore dolor atque voluptatem.'),(4,'abdullah pass','consequuntur_est_distinctio_ut_at_ab_voluptatum_minus','club_deportivo',9,'2022-04-18 11:36:31','2022-04-18 11:36:31','Fugit adipisci fugiat et atque voluptatem ea. Blanditiis quaerat voluptas accusamus quis nihil id porro illo. Dignissimos saepe ipsum sequi voluptas voluptatibus quam quod. Explicabo reprehenderit sapiente amet voluptate perferendis accusantium exercitationem.'),(5,'sebastian forges','atque_asperiores_aperiam_quia','club_deportivo',10,'2022-04-18 11:36:31','2022-04-18 11:36:31','Aut in explicabo minus eum occaecati commodi fugit. Voluptatibus occaecati ipsum corrupti. Labore corrupti fugit fugit laudantium quia in ab. Aut quia quae rerum et culpa.'),(6,'schiller via','alias_consequuntur_tenetur_rerum_beatae_natus_sapiente_corrupti','club_deportivo',8,'2022-04-18 11:36:31','2022-04-18 11:36:31','Iure et pariatur doloremque aut totam vel quisquam ipsa. Autem dolor cum aut et tempora. Corrupti repellendus rerum dolorem minima quidem id veniam ut. Perspiciatis quibusdam est dolorum voluptatem sed.'),(7,'langosh squares','earum_vel_ut_dicta_id_expedita_est_eius_mollitia','otro',8,'2022-04-18 11:36:32','2022-04-18 11:36:32','Dignissimos accusantium dolores soluta sequi et exercitationem iusto. Illo rerum voluptatem sit id.'),(8,'wisozk ports','iure_iure_rerum_enim_non_sed_commodi_expedita','otro',8,'2022-04-18 11:36:32','2022-04-18 11:36:32','Quia odit possimus non velit earum dolorem. Minus id veritatis eius molestiae aspernatur vitae culpa. Animi beatae ut quisquam porro dolores sunt. Exercitationem est qui impedit eum facilis laborum ab.'),(9,'jacobs villages','est_ducimus_ratione_quos','escuela',8,'2022-04-18 11:36:32','2022-04-18 11:36:32','Quidem molestiae voluptas voluptate vel cum veniam culpa consequatur. Ipsam dignissimos eos veniam molestias. Atque blanditiis eum alias inventore molestiae itaque. Aspernatur voluptatem esse numquam ut temporibus.'),(10,'hackett forest','eos_harum_aut_quis_aut_eos_corporis','otro',9,'2022-04-18 11:36:32','2022-04-18 11:36:32','Voluptatem incidunt culpa unde voluptatibus. Quos eos autem exercitationem. Autem repudiandae et tenetur corrupti. Explicabo aut minus ea iste aperiam. Officia sit enim sequi qui.'),(11,'era prairie','qui_quibusdam_facere_aut_laudantium_nulla','club_deportivo',10,'2022-04-18 11:36:32','2022-04-18 11:36:32','Aut earum sit pariatur vel. Totam sapiente dignissimos sequi illo voluptatem nulla. Nesciunt suscipit at et aspernatur quibusdam impedit.'),(12,'alexis courts','sint_delectus_quasi_ab_maiores_facere_quam_fugit','escuela',9,'2022-04-18 11:36:32','2022-04-18 11:36:32','Debitis inventore id itaque repudiandae saepe laudantium. Repellat illum sint assumenda perspiciatis eius ut est. Quae ut inventore nihil.'),(13,'lexi stream','ipsam_commodi_optio_quas','club_deportivo',9,'2022-04-18 11:36:32','2022-04-18 11:36:32','Est repellat inventore vel officiis quia maiores. Commodi omnis qui dolorum velit eos qui repellendus sapiente. Facilis dignissimos quia itaque dolorum dolores assumenda.'),(14,'moriah lane','consequatur_eos_adipisci_quam_est','otro',9,'2022-04-18 11:36:32','2022-04-18 11:36:32','Quis nisi laudantium voluptas pariatur necessitatibus. Dolor qui iste odio quia et blanditiis. Minus qui distinctio voluptatum repellat est. Accusantium nisi molestiae non labore ratione.'),(15,'narciso well','distinctio_inventore_repudiandae_explicabo_ut','otro',9,'2022-04-18 11:36:33','2022-04-18 11:36:33','Dolores ad eum eum quidem. Est est iure facere maiores. Rem sapiente aut quis illum. Aut repellendus qui accusantium vitae est.'),(16,'kirlin field','et_odit_rerum_dolorem_inventore_numquam','club_deportivo',9,'2022-04-18 11:36:33','2022-04-18 11:36:33','Illum nulla nulla in enim consequatur vitae odio. Quasi nesciunt est omnis ut aut corporis eum. Minus asperiores dolores expedita quae. Quia omnis neque laudantium quidem delectus. Molestiae nemo saepe non laboriosam.'),(17,'brendan ports','eum_consequatur_aliquid_iure_eaque_molestiae_facere_occaecati_dolorum','club_deportivo',8,'2022-04-18 11:36:33','2022-04-18 11:36:33','Quos molestias explicabo aperiam voluptatem ipsa corporis eos. Atque modi accusamus doloribus recusandae aut optio ut. Unde sed ducimus in ipsa. Ullam incidunt temporibus magni quae perferendis quasi impedit.'),(18,'gerlach pike','nobis_nam_tempore_maiores_sunt_non','club_deportivo',8,'2022-04-18 11:36:33','2022-04-18 11:36:33','Perferendis quia amet earum sapiente et tempora placeat. Quaerat omnis enim id nihil labore. Aut assumenda inventore laboriosam. Quidem repellendus dolorem ut mollitia.'),(19,'winnifred expressway','consequuntur_quos_non_asperiores_vitae_officia','escuela',9,'2022-04-18 11:36:33','2022-04-18 11:36:33','Voluptas hic et ut ut qui et. Quod sed voluptatem quis officiis amet rerum et.'),(20,'murphy pike','facere_natus_debitis_et_enim_ut_vero_accusantium','otro',9,'2022-04-18 11:36:33','2022-04-18 11:36:33','Suscipit aut repellendus laboriosam qui soluta occaecati. Quod illo perferendis molestiae aperiam et incidunt enim. Atque expedita aut reprehenderit quia beatae ab. Nisi assumenda deleniti pariatur necessitatibus enim.');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cicero tillman','nader.laila@example.org','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'EaBcp0E4cj',NULL,NULL,'2022-04-18 11:36:29','2022-04-18 11:36:29'),(2,'miss viola mitchell','benjamin.heathcote@example.org','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'b3WO2LCTdB',NULL,NULL,'2022-04-18 11:36:29','2022-04-18 11:36:29'),(3,'dr. garfield connelly','mstroman@example.net','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'6h8dRdj5DU',NULL,NULL,'2022-04-18 11:36:29','2022-04-18 11:36:29'),(4,'mr. eugene wisozk','josiah.dicki@example.com','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'aDV4jdMCJj',NULL,NULL,'2022-04-18 11:36:29','2022-04-18 11:36:29'),(5,'fredy mcclure','acummerata@example.com','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'rVl4gNwinF',NULL,NULL,'2022-04-18 11:36:30','2022-04-18 11:36:30'),(6,'merle connelly ii','rocio31@example.net','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'UTCm8JW82I',NULL,NULL,'2022-04-18 11:36:30','2022-04-18 11:36:30'),(7,'frieda reinger','rossie.gusikowski@example.net','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'dqqkDi0CUS',NULL,NULL,'2022-04-18 11:36:30','2022-04-18 11:36:30'),(8,'imelda hand','uschuster@example.org','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'gaA612bLst',NULL,NULL,'2022-04-18 11:36:30','2022-04-18 11:36:30'),(9,'mariana gerhold','lucinda.stehr@example.net','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'67wA1viI8w',NULL,NULL,'2022-04-18 11:36:30','2022-04-18 11:36:30'),(10,'abner grimes','whartmann@example.org','2022-04-18 11:36:29','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL,'JWwQeT6koN',NULL,NULL,'2022-04-18 11:36:30','2022-04-18 11:36:30');
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

-- Dump completed on 2022-04-18 14:17:29
