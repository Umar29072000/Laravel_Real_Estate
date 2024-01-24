-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table real-estate.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.categories: ~2 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'For Sale', 'for-sale', NULL, NULL),
	(2, 'For Rent', 'for-rent', NULL, NULL);

-- Dumping structure for table real-estate.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
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

-- Dumping data for table real-estate.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table real-estate.features
CREATE TABLE IF NOT EXISTS `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `features_property_id_foreign` (`property_id`),
  CONSTRAINT `features_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.features: ~0 rows (approximately)

-- Dumping structure for table real-estate.galleries
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_property_id_foreign` (`property_id`),
  CONSTRAINT `galleries_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.galleries: ~6 rows (approximately)
INSERT INTO `galleries` (`id`, `path`, `property_id`, `created_at`, `updated_at`) VALUES
	(1, 'properties/gallery/pse89AC5a4NRDqP3nblUBubSLvLQFc9G8QoFr2Ou.jpg', 5, '2024-01-24 12:01:33', '2024-01-24 12:01:33'),
	(2, 'properties/gallery/c8Ax9HPYUH3suoOR13glAOH3RQp58ZlrcOgzbfC3.jpg', 6, '2024-01-24 12:02:05', '2024-01-24 12:02:05'),
	(3, 'properties/gallery/CObW8ddNGPM5SFI2zlIvesCRQaLgzxQswS4oyU1k.jpg', 7, '2024-01-24 12:02:40', '2024-01-24 12:02:40'),
	(4, 'properties/gallery/0w7RYScDHcKEuMF5G8GoBNGtyBZPnVdtlkYolzy0.jpg', 8, '2024-01-24 12:04:33', '2024-01-24 12:04:33'),
	(5, 'properties/gallery/m6poeiSXJPZGbZ0jvd0RzEW9pnf8B1y4Rkvs8Lb4.jpg', 9, '2024-01-24 12:05:13', '2024-01-24 12:05:13'),
	(6, 'properties/gallery/RDGNtU3HQXQndeZ4crze417T6JFDxJFQcGqwiqb0.jpg', 10, '2024-01-24 12:11:23', '2024-01-24 12:11:23');

-- Dumping structure for table real-estate.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.messages: ~0 rows (approximately)

-- Dumping structure for table real-estate.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.migrations: ~15 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_02_04_020715_create_permissions_table', 1),
	(6, '2022_02_04_020803_create_roles_table', 1),
	(7, '2022_02_04_020910_create_role_user_table', 1),
	(8, '2022_02_04_021018_create_permission_role_table', 1),
	(9, '2022_10_22_133608_create_categories_table', 1),
	(10, '2022_10_23_133545_create_properties_table', 1),
	(11, '2022_10_23_134143_create_features_table', 1),
	(12, '2022_10_23_134314_create_galleries_table', 1),
	(13, '2022_10_25_133131_create_messages_table', 1),
	(14, '2022_11_02_115940_add_new_fields_to_users_table', 1),
	(15, '2022_11_04_000757_add_user_id_to_properties_table', 1);

-- Dumping structure for table real-estate.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.password_resets: ~0 rows (approximately)

-- Dumping structure for table real-estate.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.permissions: ~30 rows (approximately)
INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 'user_management_access', NULL, NULL),
	(2, 'user_management_create', NULL, NULL),
	(3, 'user_management_edit', NULL, NULL),
	(4, 'user_management_view', NULL, NULL),
	(5, 'user_management_delete', NULL, NULL),
	(6, 'permission_access', NULL, NULL),
	(7, 'permission_create', NULL, NULL),
	(8, 'permission_edit', NULL, NULL),
	(9, 'permission_view', NULL, NULL),
	(10, 'permission_delete', NULL, NULL),
	(11, 'role_access', NULL, NULL),
	(12, 'role_create', NULL, NULL),
	(13, 'role_edit', NULL, NULL),
	(14, 'role_view', NULL, NULL),
	(15, 'role_delete', NULL, NULL),
	(16, 'user_access', NULL, NULL),
	(17, 'user_create', NULL, NULL),
	(18, 'user_edit', NULL, NULL),
	(19, 'user_view', NULL, NULL),
	(20, 'user_delete', NULL, NULL),
	(21, 'category_access', NULL, NULL),
	(22, 'category_create', NULL, NULL),
	(23, 'category_edit', NULL, NULL),
	(24, 'category_view', NULL, NULL),
	(25, 'category_delete', NULL, NULL),
	(26, 'property_access', NULL, NULL),
	(27, 'property_create', NULL, NULL),
	(28, 'property_edit', NULL, NULL),
	(29, 'property_view', NULL, NULL),
	(30, 'property_delete', NULL, NULL);

-- Dumping structure for table real-estate.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.permission_role: ~35 rows (approximately)
INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL),
	(2, 2, 1, NULL, NULL),
	(3, 3, 1, NULL, NULL),
	(4, 4, 1, NULL, NULL),
	(5, 5, 1, NULL, NULL),
	(6, 6, 1, NULL, NULL),
	(7, 7, 1, NULL, NULL),
	(8, 8, 1, NULL, NULL),
	(9, 9, 1, NULL, NULL),
	(10, 10, 1, NULL, NULL),
	(11, 11, 1, NULL, NULL),
	(12, 12, 1, NULL, NULL),
	(13, 13, 1, NULL, NULL),
	(14, 14, 1, NULL, NULL),
	(15, 15, 1, NULL, NULL),
	(16, 16, 1, NULL, NULL),
	(17, 17, 1, NULL, NULL),
	(18, 18, 1, NULL, NULL),
	(19, 19, 1, NULL, NULL),
	(20, 20, 1, NULL, NULL),
	(21, 21, 1, NULL, NULL),
	(22, 22, 1, NULL, NULL),
	(23, 23, 1, NULL, NULL),
	(24, 24, 1, NULL, NULL),
	(25, 25, 1, NULL, NULL),
	(26, 26, 1, NULL, NULL),
	(27, 27, 1, NULL, NULL),
	(28, 28, 1, NULL, NULL),
	(29, 29, 1, NULL, NULL),
	(30, 30, 1, NULL, NULL),
	(31, 26, 2, NULL, NULL),
	(32, 27, 2, NULL, NULL),
	(33, 28, 2, NULL, NULL),
	(34, 29, 2, NULL, NULL),
	(35, 30, 2, NULL, NULL);

-- Dumping structure for table real-estate.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
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

-- Dumping data for table real-estate.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table real-estate.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `properties_category_id_foreign` (`category_id`),
  KEY `properties_user_id_foreign` (`user_id`),
  CONSTRAINT `properties_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `properties_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.properties: ~6 rows (approximately)
INSERT INTO `properties` (`id`, `name`, `slug`, `price`, `location`, `description`, `bed`, `bath`, `size`, `category_id`, `created_at`, `updated_at`, `user_id`) VALUES
	(5, 'Pesona Tabula Rasa', 'pesona-tabula-rasa', 1000, 'Jl. Setrasari Raya No.10, Sukarasa, Kec. Sukasari, Kota Bandung, Jawa Barat 40152', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2', '2', '160', 1, '2024-01-24 12:01:19', '2024-01-24 12:01:19', 2),
	(6, 'Paramadina House', 'paramadina-house', 1000, 'Jl. Setrasari Raya No.10, Sukarasa, Kec. Sukasari, Kota Bandung, Jawa Barat 40152', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '3', '3', '160', 1, '2024-01-24 12:01:58', '2024-01-24 12:01:58', 2),
	(7, 'Paramastri Residence', 'paramastri-residence', 1000, 'Jl. Setrasari Raya No.10, Sukarasa, Kec. Sukasari, Kota Bandung, Jawa Barat 40152', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '4', '4', '160', 1, '2024-01-24 12:02:32', '2024-01-24 12:02:32', 2),
	(8, 'Griya Citra Lestari', 'griya-citra-lestari', 1000, 'Jl. Setrasari Raya No.10, Sukarasa, Kec. Sukasari, Kota Bandung, Jawa Barat 40152', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2', '2', '160', 2, '2024-01-24 12:04:27', '2024-01-24 12:04:27', 2),
	(9, 'Perumahan Grand Cemara Lestari', 'perumahan-grand-cemara-lestari', 1000, 'Jl. Setrasari Raya No.10, Sukarasa, Kec. Sukasari, Kota Bandung, Jawa Barat 40152', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '5', '5', '160', 2, '2024-01-24 12:05:07', '2024-01-24 12:05:07', 2),
	(10, 'Modern Hill Residence', 'modern-hill-residence', 1000, 'Jl. Setrasari Raya No.10, Sukarasa, Kec. Sukasari, Kota Bandung, Jawa Barat 40152', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '4', '4', '160', 2, '2024-01-24 12:11:11', '2024-01-24 12:11:11', 2);

-- Dumping structure for table real-estate.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.roles: ~2 rows (approximately)
INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 'admin', NULL, NULL),
	(2, 'agent', NULL, NULL);

-- Dumping structure for table real-estate.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.role_user: ~4 rows (approximately)
INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL),
	(2, 2, 2, NULL, NULL),
	(3, 2, 3, NULL, NULL),
	(4, 2, 4, NULL, NULL);

-- Dumping structure for table real-estate.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table real-estate.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `fax`, `whatsapp`, `profile`) VALUES
	(1, 'admin', 'admin@example.com', NULL, '$2y$10$NH2a1.8vEsFatXa6RE894OWrN4BhOvqjk2wWDotRXhp22os005gEK', NULL, NULL, NULL, '123', '123', '123', 'null'),
	(2, 'Umar Khoirul Afif', 'umar@example.com', NULL, '$2y$10$aZ2oFr1zWcuhbr6fFpu1geMScXPVPHWDG3JyecVOrza86Evp6Vl.i', NULL, '2024-01-24 11:58:19', '2024-01-24 11:58:19', '081310259115', '123', '6281310259115', 'agents/profile/J44hzBhBoFyCoaD36mcvWpLme9dM8uCgctS5lpub.png'),
	(3, 'Hilmi Maula Abdillah', 'hilmi@example.com', NULL, '$2y$10$zKANrzYObbTf1f/gT2u4AeGqg8b3aI2zcGeYn2DwDCLEtAToP1yK2', NULL, '2024-01-24 12:15:15', '2024-01-24 12:15:15', '085888699258', '123', '6285888699258', 'agents/profile/piq5H8lyt37sp0wLSxrDfkCTuzDui6UF6Xe5PgPp.png'),
	(4, 'Nailul Autar', 'nailul@example.com', NULL, '$2y$10$Y0LArjd6I2Mp2EztzrXDH.kquH8.NYyzsWRql7B4C69lQ11BvDHhm', NULL, '2024-01-24 12:16:18', '2024-01-24 12:16:18', '0895612454668', '123', '62895612454668', 'agents/profile/zo93pvkBQoXgfeCnSlzpGjVdNeVlJ7hes3KolwzE.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
