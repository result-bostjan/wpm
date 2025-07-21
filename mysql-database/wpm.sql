-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 21, 2025 at 08:00 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_20_161149_create_ticket_templates_table', 1),
(5, '2025_07_20_161215_create_ticket_table', 1),
(6, '2025_07_20_175517_add_content_to_ticket_templates_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PpoQz4efcUzPHQ5uv01tOrAwpFkn1A7oEug8i8rs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1g0eWlFMm9WdENLNFR6cGNSSWs3Wk12UU5neHdDT05MaU50d3FuUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753045841),
('wyyPBYgIuT14P6vsk5r1qMP7im55qvr64DMhsDYB', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTklkdVM0UVlOYmh4S2d6TUlyM2EyYndCczZOREswTktQVzdBbDFRYiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vdGlja2V0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRvUUlEcXhBYVhiUm4uSXMzTnJWYVUuclJ2YmlzYWZaeDZHL2JieTNvNDIyNXQvR25paEZ1TyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1753047470),
('aCuaDWe2Gd95tmeg5JtqLJhbpZKA4PLvnRmNkuxo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2prdm9XV0o4aDBiWTE4V0xjejI1T3FjQXdwdGluYkQzYWx6VVZVUCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluL3RpY2tldHMvY3JlYXRlIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi90aWNrZXRzL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753045837);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticket_template_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `var_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `var_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `var_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issued_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_ticket_template_id_foreign` (`ticket_template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_template_id`, `user_id`, `var_1`, `var_2`, `var_3`, `issued_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'var1', 'var2', 'var3', NULL, '2025-07-20 15:58:07', '2025-07-20 15:58:07'),
(2, 2, NULL, 'testni1', 'testni2', 'testni3', NULL, '2025-07-20 18:34:11', '2025-07-20 18:34:11'),
(3, 2, NULL, 'test2', 'test23', 'test33', NULL, '2025-07-20 18:41:58', '2025-07-20 18:41:58'),
(4, 1, NULL, 'utest123', 'utest234', 'utest345', NULL, '2025-07-20 18:45:06', '2025-07-20 18:45:06'),
(5, 3, NULL, 'atest1', 'atest2', 'atest3', NULL, '2025-07-20 18:50:16', '2025-07-20 18:50:16'),
(6, 3, NULL, 'ff1', 'ff2', 'ff3', NULL, '2025-07-20 19:00:01', '2025-07-20 19:00:01'),
(7, 2, NULL, 'vatestnik1', 'vatestnik2', 'vatestnik3', NULL, '2025-07-20 19:07:42', '2025-07-20 19:07:42'),
(8, 2, NULL, 'nekaj1', 'nekaj2', 'nekaj3', NULL, '2025-07-20 19:10:29', '2025-07-20 19:10:29'),
(9, 2, NULL, 'test-1', 'test-2', 'test-3', NULL, '2025-07-20 19:13:25', '2025-07-20 19:13:25'),
(10, 2, NULL, 'testa1', 'testa2', 'testa3', NULL, '2025-07-20 19:14:54', '2025-07-20 19:14:54'),
(11, 1, NULL, 'testb2', 'testb3', 'testb4', NULL, '2025-07-20 19:17:08', '2025-07-20 19:17:08'),
(12, 3, NULL, 'testnia1', 'testnia13', 'testnia15', NULL, '2025-07-20 19:18:39', '2025-07-20 19:18:39'),
(13, 8, NULL, 'ets1', 'ets13', 'ets134', NULL, '2025-07-20 19:37:39', '2025-07-20 19:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_templates`
--

DROP TABLE IF EXISTS `ticket_templates`;
CREATE TABLE IF NOT EXISTS `ticket_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personalization` tinyint(1) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_templates`
--

INSERT INTO `ticket_templates` (`id`, `name`, `view`, `personalization`, `description`, `created_at`, `updated_at`, `content`) VALUES
(1, 'testni1', 'test1', 0, NULL, '2025-07-20 15:57:12', '2025-07-20 15:57:12', 'var1\nvar2\nvar3'),
(2, 'testnik2', 'testni22', 0, NULL, '2025-07-20 18:33:22', '2025-07-20 18:33:22', '<br>\n<fr>\ntestnik'),
(3, 'test2', 'testnik2', 0, NULL, '2025-07-20 18:38:45', '2025-07-20 18:38:45', '<div>\n<p>NOW</p>\n</div>'),
(4, 'namek1', 'name1', 0, NULL, '2025-07-20 19:20:14', '2025-07-20 19:20:14', 'namnamek1ek1\nnamek1\nnamek1\n'),
(5, 'namwe1', 'names12', 1, NULL, '2025-07-20 19:22:10', '2025-07-20 19:22:10', 'namwe1\nnamwe1\nnamwe1'),
(6, 'name1-b11', 'name1-b', 1, NULL, '2025-07-20 19:26:35', '2025-07-20 19:26:35', 'name1-b\n\nname1-b\nname1-b'),
(7, 'tesniukj1', 'tesniukj1', 1, NULL, '2025-07-20 19:28:10', '2025-07-20 19:28:10', 'tesniukj1tesniukj1tesniukj1'),
(8, 'testnik1233', 'testnik123', 1, NULL, '2025-07-20 19:34:16', '2025-07-20 19:34:16', 'testnik12322\ntestnik123'),
(9, 'cards', 'careds', 1, NULL, '2025-07-20 19:36:29', '2025-07-20 19:36:29', 'cards\ncards\ncards');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'bosty33@gmail.com', NULL, '$2y$12$oQIDqxAaXbRn.Is3NrVaU.rRvbisafZx6G/bby3o4225t/GnihFuO', NULL, '2025-07-20 14:29:30', '2025-07-20 14:29:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
