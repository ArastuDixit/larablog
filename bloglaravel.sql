-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 09:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloglaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `navbar_status` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `navbar_status`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Laravel', 'laravel_slug', 'Laravel description', '1680073624.jpg', 'Welcome Laravel', 'Laravel description', 'Laravel description', 0, 0, 2, '2023-03-29 01:37:04', '2023-03-29 01:37:04'),
(3, 'API', 'api_slug', 'value=\"value=\"value=\"value=\"value=\"api_slug description\"\"\"\"\"', '1680098345.jpg', 'API Title', 'meta1', 'meta2', 0, 1, 2, '2023-03-29 04:19:02', '2023-03-29 08:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_03_27_111127_add_roll__as_to_users_table=users', 1),
(12, '2023_03_27_175728_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('150b169a94644a28510da3ae5a126d23d28a444fcba28e90bfd09e729dcda2eb92dd414d1b3cfaa9', 2, 3, 'Laravel9PassportAuth', '[]', 0, '2023-03-29 04:10:21', '2023-03-29 04:10:22', '2024-03-29 09:40:21'),
('6a1f0abc1a9ff9ed1effc42b6f2bb2c2dadbe35087e11a831af7a78d712cb77d7bf76a5ea855854f', 8, 3, 'Laravel9PassportAuth', '[]', 0, '2023-03-29 01:30:17', '2023-03-29 01:30:18', '2024-03-29 07:00:17'),
('8fb29e323f76ba38d4dbd67512d7d66832e8300faafb8702f17d9cc828d9f40da58f31bf5f7bbb54', 7, 3, 'Laravel9PassportAuth', '[]', 0, '2023-03-29 01:10:35', '2023-03-29 01:10:35', '2024-03-29 06:40:35'),
('a057c5398d3e7324930aac1d2de14595c85cce167eecf6ce7a734020f0f333121149bdb78fc2ba0d', 2, 3, 'Laravel9PassportAuth', '[]', 0, '2023-03-29 01:42:41', '2023-03-29 01:42:41', '2024-03-29 07:12:41'),
('af6822f1fd673ceff8db501a48f60b92e84b63ef3ea164467db7ca38d7fe54393cbd0e9d3a3f83cd', 7, 3, 'Laravel9PassportAuth', '[]', 0, '2023-03-29 01:03:53', '2023-03-29 01:03:53', '2024-03-29 06:33:53'),
('d300032bb5bca2dc7c5c7f2d39b072ebe8b4e90d03c3de94bc65c9f0727b8dd31230ba1b10ac1af5', 6, 3, 'Laravel9PassportAuth', '[]', 0, '2023-03-28 13:06:01', '2023-03-28 13:06:01', '2024-03-28 18:36:01'),
('f0897838a47ff356d41fa77bdcb60c21f05d632e3fd61c5c7aacf04f75ed99344a2a1c8cf36b55e7', 8, 3, 'Laravel9PassportAuth', '[]', 0, '2023-03-29 01:30:59', '2023-03-29 01:30:59', '2024-03-29 07:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'bfpwICcBueB7Tu4wegowwwmZx9s3YjyCO6DWGPg4', NULL, 'http://localhost', 1, 0, 0, '2023-03-28 07:53:47', '2023-03-28 07:53:47'),
(2, NULL, 'Laravel Password Grant Client', 'giLjVrailbEQBDv6vsQDehhj7Ct0hzv36oqZVusM', 'users', 'http://localhost', 0, 1, 0, '2023-03-28 07:53:47', '2023-03-28 07:53:47'),
(3, NULL, 'Laravel Personal Access Client', 'Tcnblpj0o0NMoVzgjQIBHdzkZF20qxMJUjHmcX67', NULL, 'http://localhost', 1, 0, 0, '2023-03-28 08:00:53', '2023-03-28 08:00:53'),
(4, NULL, 'Laravel Password Grant Client', '0OMibCoLGV524vpt1ElVA38PfL8TgCKhUGE2Zvps', 'users', 'http://localhost', 0, 1, 0, '2023-03-28 08:00:53', '2023-03-28 08:00:53');

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
(1, 1, '2023-03-28 07:53:47', '2023-03-28 07:53:47'),
(2, 3, '2023-03-28 08:00:53', '2023-03-28 08:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Laravel9PassportAuth', '16c6f18f4e971de9589eb5a3ba734377d93d1bdae8f5e4a9eb80902f198d4892', '[\"*\"]', NULL, NULL, '2023-03-28 07:54:50', '2023-03-28 07:54:50'),
(2, 'App\\Models\\User', 2, 'Laravel9PassportAuth', 'd6b148b9de943a67b1adfad05a149dd528253a6ce1a0114ca280c694c4b1b7fd', '[\"*\"]', NULL, NULL, '2023-03-28 07:57:28', '2023-03-28 07:57:28'),
(3, 'App\\Models\\User', 3, 'Laravel9PassportAuth', '311391e5ed088df60adfdccd18bfb7d8bdafb4578709f622cb7b21ca1a8635ba', '[\"*\"]', NULL, NULL, '2023-03-28 08:02:15', '2023-03-28 08:02:15'),
(4, 'App\\Models\\User', 4, 'Laravel9PassportAuth', 'a1497f676d81cdeb1df2af2e9cce4a80dcbdd1f715acfa349d28d35c1cdc9868', '[\"*\"]', NULL, NULL, '2023-03-28 08:09:58', '2023-03-28 08:09:58'),
(5, 'App\\Models\\User', 5, 'Laravel9PassportAuth', '3643a9b2b90f7cc29bbde5bbc11cf936e714a2ba539dc76087b7b5d9d59b6386', '[\"*\"]', NULL, NULL, '2023-03-28 08:11:09', '2023-03-28 08:11:09'),
(6, 'App\\Models\\User', 1, 'Laravel9PassportAuth', 'c541564e5c8c41dc69a80287ea3602abad6a79560f5d64f9f5a925b621973cde', '[\"*\"]', NULL, NULL, '2023-03-28 08:36:37', '2023-03-28 08:36:37'),
(7, 'App\\Models\\User', 1, 'Laravel9PassportAuth', '9500a72bb0e6277072a88827ebac24c265167f9a8fe70424eb290da8cb063d4a', '[\"*\"]', NULL, NULL, '2023-03-28 08:37:59', '2023-03-28 08:37:59'),
(8, 'App\\Models\\User', 1, 'Laravel9PassportAuth', '8b42f2213989c6ccb10debebf402ca6f8ea61e318759eb683a4b34d934b816e8', '[\"*\"]', NULL, NULL, '2023-03-28 08:38:09', '2023-03-28 08:38:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'rakesh', 'rakesh@gmail.com', NULL, '$2y$10$TXpGL7jRKMkCQYHqL9ETxuSPKCfy2GPlYZiQmkVN4AcbdcenArDTu', NULL, '2023-03-28 07:54:50', '2023-03-28 07:54:50', 0),
(2, 'Arastu', 'arastu@gmail.com', NULL, '$2y$10$BFEBOq.Vz6G6ZCHHLN8hI.2Bg1IXTllLfg1vRAYHh1bcOl3n61wr.', NULL, '2023-03-28 07:57:28', '2023-03-28 07:57:28', 1),
(6, 'ved prakash', 'ved@gmail.com', NULL, '$2y$10$aODIACv0hihC1NmnlxCgUu0SBMuHqELp0q2NcUMmSwwnyuhpW82my', NULL, '2023-03-28 13:06:00', '2023-03-28 13:06:00', 0),
(7, 'om prakash', 'om@gmail.com', NULL, '$2y$10$PaKI6rWW6BOO2wmWFfZRGufjBftQ8aS5SGBPrdMJKhp8xd6K/O64K', NULL, '2023-03-29 01:03:51', '2023-03-29 01:03:51', 0),
(8, 'Mohanlal', 'mohan@gmail.com', NULL, '$2y$10$Uoy46moENQB1GWMclo3L/OH73Vrqfh7TUmx0VNDounO9Gj0o5bwTG', NULL, '2023-03-29 01:30:17', '2023-03-29 01:30:17', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
