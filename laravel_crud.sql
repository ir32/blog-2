-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 02:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `product_id`, `brand_name`, `brand_detail`, `brand_image`, `price`, `created_at`, `updated_at`) VALUES
(35, 15, 'Brand 12', 'Brand 12', 'images/1931376519.jpg', '20.32', '2024-01-17 08:07:17', '2024-01-17 08:07:17'),
(36, 15, 'Brand 12', 'Brand 12', 'images/520503001.jpg', '20.30', '2024-01-17 08:07:17', '2024-01-17 08:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_16_120314_create_products_table', 2),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(9, '2016_06_01_000004_create_oauth_clients_table', 3),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(11, '2024_01_16_200751_create_brands_table', 4),
(12, '2024_01_17_042807_create_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('163d29abb67089945fd68c30a61e15807232ace9bf638e6db5aa90cc1fa21722662e13528b73a8ad', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 12:02:31', '2024-01-16 12:02:31', '2025-01-16 17:32:31'),
('27e678810bfea55de2b5588dfe0300eff98c59658a879be261b45b7f6ac3b334e95ecfb5304f5f61', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 11:14:12', '2024-01-16 11:14:12', '2025-01-16 16:44:12'),
('309fe9fda66d2912392c5d587efa82a89093b88deeddd4ef041a2f77827cc0759896c130077fe908', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 11:54:37', '2024-01-16 11:54:37', '2025-01-16 17:24:37'),
('45fb4aea4b5812884cfdc48ae39e58a9b94d8ffbea2f8ef8cdf47953d757653d98bd3c2008e2489b', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-17 06:27:15', '2024-01-17 06:27:15', '2025-01-17 11:57:15'),
('7379c17d2c43c2bb389943b5c352a5f5cda26e04e45716a4ed3433928b487febb14151531850005a', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 12:28:30', '2024-01-16 12:28:30', '2025-01-16 17:58:30'),
('73fd1abb624ed255ede14c8d88b4276dd29dbae2dd9d4e6716394b454cd4d8bc18de63657d5d9fc4', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-17 05:36:38', '2024-01-17 05:36:38', '2025-01-17 11:06:38'),
('79b46cac19b9643b981e168fac23dfca622a6573d38146f50977396eddeb89fc26e7965bd90af7cc', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 10:50:24', '2024-01-16 10:50:24', '2025-01-16 16:20:24'),
('7c7f2bd451aeb9f3224b6c598d681a2d1601351cc6e0bc6ffde10029eb28e1e1938fa4971530a0aa', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 13:21:23', '2024-01-16 13:21:23', '2025-01-16 18:51:23'),
('837f5ce7636c42d8dd425b98299c762e8af8e9acbf0d59ec017eaa7e5e71d2ce4841b3000c9457ca', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 14:02:37', '2024-01-16 14:02:37', '2025-01-16 19:32:37'),
('af5e4dcce5cbf8fd8bedff8f524d2ad6c197b0d677f4e9a630b081423a419fe859bf48fd03bd2f37', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 11:52:45', '2024-01-16 11:52:45', '2025-01-16 17:22:45'),
('bae74ecc01b2c3bb3e6a5ba6fb200ed99987bc82cafdea607a2ead2fc8da293985980f8a9595a1f6', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 13:04:24', '2024-01-16 13:04:24', '2025-01-16 18:34:24'),
('bb2aae314ae19bb4475e3623a1b141e3a875bf3e5d04740bf196717366c3c82c14a7371805d8cb73', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 10:13:44', '2024-01-16 10:13:44', '2025-01-16 15:43:44'),
('bca3050559118b9c2b21f12db89a49acabc29dd59462518ead85000e8a0ca8586ebed5828d1f73a7', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 13:28:16', '2024-01-16 13:28:16', '2025-01-16 18:58:16'),
('bd79705d64988c883a7c8fc4e3564560932e2d769478b2e40d1010387e00eba32b3a8b59e63f34cf', 7, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 13:39:41', '2024-01-16 13:39:41', '2025-01-16 19:09:41'),
('be511f3d59b3aeda3c3e32eb21781ce948eed3233a5060474adf381e78fcd7cc8fd5740d05261b36', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 11:43:34', '2024-01-16 11:43:34', '2025-01-16 17:13:34'),
('c4c7de0f1fe067fa982da77c1774374f8a1df86be7a44e024fc713929ff703930738cbd7f7150f61', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 11:36:43', '2024-01-16 11:36:43', '2025-01-16 17:06:43'),
('c5f9c40bf30d7731896f854b94e4c5a9434c64a46fca60c875c466816655336567640ca0d8efd262', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 10:19:49', '2024-01-16 10:19:49', '2025-01-16 15:49:49'),
('cc9ef6f0bdfde342284f211e0a1b1fff4f92a53cbe6526c7aa958bea9af2de2f7bc29ea7a70c7844', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 13:33:55', '2024-01-16 13:33:55', '2025-01-16 19:03:55'),
('d770cb1461c0097b1621c25e165f1093ff2f5f17502a90929a240d392c593622947a26a06bade510', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 13:47:08', '2024-01-16 13:47:08', '2025-01-16 19:17:08'),
('d9b9aee4fa7a25b10e97b7ab702e1c2118cd755f78687ba2bd6dd8cc93ce96ac276b0070c1eb441e', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-17 06:30:12', '2024-01-17 06:30:12', '2025-01-17 12:00:12'),
('db44835e8a6b77a06b8bd4c4e875c2fc2c33fd1a645e194e3afe148a529f33109fdc10165464bea7', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-17 06:29:43', '2024-01-17 06:29:43', '2025-01-17 11:59:43'),
('dd74b685caa29eb10e029f745079f54e601f6963544537723d2d330396f5820b4ae2ed6cc28b453d', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 14:04:25', '2024-01-16 14:04:25', '2025-01-16 19:34:25'),
('ea0dc1de6e694ae74d95c5665a232c16225cc29614eec826be358e95bbc65e4430caff2c58469eba', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 10:48:22', '2024-01-16 10:48:22', '2025-01-16 16:18:22'),
('ed841907433d0252a67e55ffbd90cf0e76be7d07de24aebd92700f65fbe9880db75450c04f1f531f', 8, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-17 06:28:49', '2024-01-17 06:28:49', '2025-01-17 11:58:49'),
('fc57dbdd9d4414e0e81c89c3218b97e39ba53d86aec65c9d339668623917628a70627258d5acf332', 1, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 13:21:44', '2024-01-16 13:21:44', '2025-01-16 18:51:44'),
('fd8a8232490dbb947a3d1dfe6a789f4c8a36bea266aef4163ba69f7d7728af438d515d0152056aa2', 7, 1, 'Laravel9PassportAuth', '[]', 0, '2024-01-16 10:10:30', '2024-01-16 10:10:30', '2025-01-16 15:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WxYvqWjrkSxoSnXgobTDCcYdfokZkStAVBfBN28W', NULL, 'http://localhost', 1, 0, 0, '2024-01-16 09:38:17', '2024-01-16 09:38:17'),
(2, NULL, 'Laravel Password Grant Client', '3EN7M8pqGsagQsXneCLJbGFCjvQM1Q9pluE7Jbre', 'users', 'http://localhost', 0, 1, 0, '2024-01-16 09:38:17', '2024-01-16 09:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-16 09:38:17', '2024-01-16 09:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', 'c917c78f539946e845bf881251d302c9370fca37b41c1a0b7f4067a7e013078b', '[\"*\"]', NULL, '2024-01-16 08:18:25', '2024-01-16 08:18:25'),
(2, 'App\\Models\\User', 1, 'authToken', '33c44be14826730e9e3180871034b6fcafd4f06ab3a572dc002f302a706d12d1', '[\"*\"]', NULL, '2024-01-16 09:19:52', '2024-01-16 09:19:52'),
(3, 'App\\Models\\User', 1, 'authToken', '86af5b166dd984809bef607b5f6881225a05191540a975d6e27fca30779ec79b', '[\"*\"]', NULL, '2024-01-16 09:27:26', '2024-01-16 09:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `created_at`, `updated_at`) VALUES
(15, 'test12', 'test12', '2024-01-17 08:07:17', '2024-01-17 08:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `mobile`, `country`, `state`, `skills`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test12@gmail.com', NULL, '$2y$10$FWhll4bxZ77WugJbnexZcurosLEWJ5kxP4FTG8ZAAe500bq606N7e', NULL, 'admin', '', '', '', '', '2024-01-16 08:13:45', '2024-01-16 08:13:45'),
(2, 'test1', 'test102@gmail.com', NULL, '$2y$10$yxw1wkX8Fjf5YVi1XI43LeCGgStD3ATRilUpYQ2EZwQT1q0EfoVr.', NULL, '', '', '', '', '', '2024-01-16 08:51:29', '2024-01-16 08:51:29'),
(3, 'test01', 'test132@gmail.com', NULL, '$2y$10$qYOhkJoMkw/dEMVMlUEuP.oH4/QTlBwVdBo/jjKZtn8/EYEB5BUOy', NULL, 'admin', '', '', '', '', '2024-01-16 08:58:33', '2024-01-16 08:58:33'),
(4, 'John Doe', 'john.doe@example.com', NULL, '$2y$10$ieizMOb/Fy5dbVGO0dhFmOH444w.p3hGxV7JEbqLk95HioHW7o9.i', NULL, 'seller', '1234567890', 'United States', 'California', 'Web Development', '2024-01-16 09:11:40', '2024-01-16 09:11:40'),
(5, 'John test', 'john.doe1@example.com', NULL, '$2y$10$GtyGpS/HWBYGDnRFvHFhxOUm4VpDo0d6cnK5tmmKQHitIVLAcEk46', NULL, 'seller', '1234567890', 'United States', 'California', 'Web Development', '2024-01-16 09:14:01', '2024-01-16 09:14:01'),
(6, 'test02', 'test1320@gmail.com', NULL, '$2y$10$gwpKQ9sedILCujOBZI.6v.oZ4U1zdTJ3xUmAPbEPjpQXZQ33SUha.', NULL, 'admin', NULL, NULL, NULL, NULL, '2024-01-16 09:25:38', '2024-01-16 09:25:38'),
(7, 'test102', 'test2320@gmail.com', NULL, '$2y$10$fYHZ2V4qrwLYvk82i.GTGuBw1sIMoBeYfXFVqw1vlhK6DrbBO.JLS', NULL, 'admin', NULL, NULL, NULL, NULL, '2024-01-16 10:10:30', '2024-01-16 10:10:30'),
(8, 'Irfan', 'irfan@alam.com', NULL, '$2y$10$3tjkvZYviCGwT3n499LgaeZWHdKHYFT50wuoHRT8avJKCOEhbK7PG', NULL, 'seller', '1234567890', 'United States', 'California', 'Web Development', '2024-01-16 13:46:28', '2024-01-16 13:46:28'),
(9, 'Irfan22', 'irfan11@alam.com', NULL, '$2y$10$8srjX9I/rzR4DsyT7hmJWuIbrpRzkyqOy6KnJlmwfCuHsH/ioPSLK', NULL, 'seller', '1234567890', 'United States', 'California', 'Web Development', '2024-01-17 06:23:28', '2024-01-17 06:23:28'),
(10, 'Irfan221', 'irfan101@alam.com', NULL, '$2y$10$8GYTIdgPFWTgw4M0owmSQuR/dlVCm1jcbG5NQMrdkEzRKheKZQs3i', NULL, 'seller', '1234567890', 'United States', 'California', 'Web Development', '2024-01-17 06:24:49', '2024-01-17 06:24:49'),
(11, 'Irfan221', 'irfan0101@alam.com', NULL, '$2y$10$2AjBJ16vBCfE5tr94okgpu2qFz.EF2fpjyyA.JLRbrLBazCC8iOb.', NULL, 'seller', '1234567890', 'United States', 'California', 'Web Development', '2024-01-17 06:34:10', '2024-01-17 06:34:10'),
(12, 'Irfan2212', 'irfan01021@alam.com', NULL, '$2y$10$nduNUdzWL7NlUZsDzbW2DOQH3r53AeIelUnAydh7HVQOHlgChL16K', NULL, 'seller', '1234567890', 'United States', 'California', 'Web Development', '2024-01-17 08:05:52', '2024-01-17 08:05:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
