-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 أبريل 2019 الساعة 06:26
-- إصدار الخادم: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curd_test`
--

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'بتزا', 'Pizaa', '', NULL, NULL),
(2, 'كريبات', 'Crepe', '', NULL, NULL),
(3, 'كرسبى', 'Crspy', '', NULL, NULL),
(4, 'فطائر', 'Feteer', '', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_03_10_171724_create_tasks_table', 1),
(59, '2014_10_12_000000_create_users_table', 2),
(60, '2014_10_12_100000_create_password_resets_table', 2),
(61, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(62, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(63, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(64, '2016_06_01_000004_create_oauth_clients_table', 2),
(65, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(66, '2019_04_06_121222_create_products_table', 2),
(67, '2019_04_11_205349_create_orders_table', 2),
(68, '2019_04_12_072652_create_prices_table', 2),
(69, '2019_04_12_081134_create_categoties_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `qua` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `prices`
--

INSERT INTO `prices` (`id`, `product_id`, `size`, `price`, `units`, `qua`, `created_at`, `updated_at`) VALUES
(1, 1, 'LG', 300, 0, 0, NULL, NULL),
(3, 1, 'SM', 100, 0, 0, NULL, NULL),
(4, 2, 'SM', 100, 0, 0, NULL, NULL),
(5, 3, 'SM', 100, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'بيتزا فراخ', 'MEN\'S BETTER THAN NAKED & JACKET', 'المزيج المشهور و الشهى من بيبرونى لحم البقر، قطع لحم البقر الصافى،المشروم،الفلفل الاخضر،البصل،والزيتون الاسود مغطاه بجبنة الموتزاريلا ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/Spicy-Chicken-Ranch-021018.jpg', '2019-04-12 06:52:57', NULL, NULL),
(2, 1, 'بيتزا سجق', 'MEN\'S BETTER THAN NAKED & JACKET', 'المزيج المشهور و الشهى من بيبرونى لحم البقر، قطع لحم البقر الصافى،المشروم،الفلفل الاخضر،البصل،والزيتون الاسود مغطاه بجبنة الموتزاريلا ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:52:57', NULL, NULL),
(3, 1, 'بيتزا تونة', 'MEN\'S BETTER THAN NAKED & JACKET', 'المزيج المشهور و الشهى من بيبرونى لحم البقر، قطع لحم البقر الصافى،المشروم،الفلفل الاخضر،البصل،والزيتون الاسود مغطاه بجبنة الموتزاريلا ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:52:57', NULL, NULL),
(4, 1, 'بيتزا مشروم', 'MEN\'S BETTER THAN NAKED & JACKET', 'المزيج المشهور و الشهى من بيبرونى لحم البقر، قطع لحم البقر الصافى،المشروم،الفلفل الاخضر،البصل،والزيتون الاسود مغطاه بجبنة الموتزاريلا ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:52:57', NULL, NULL),
(5, 2, 'كريب فراخ', 'MEN\'S BETTER THAN NAKED & JACKET', 'المزيج المشهور و الشهى من بيبرونى لحم البقر، قطع لحم البقر الصافى،المشروم،الفلفل الاخضر،البصل،والزيتون الاسود مغطاه بجبنة الموتزاريلا ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:52:57', NULL, NULL),
(6, 2, 'كريب لحمة', 'MEN\'S BETTER THAN NAKED & JACKET', 'المزيج المشهور و الشهى من بيبرونى لحم البقر، قطع لحم البقر الصافى،المشروم،الفلفل الاخضر،البصل،والزيتون الاسود مغطاه بجبنة الموتزاريلا ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:53:11', NULL, NULL),
(7, 2, 'كريب سجق', 'MEN\'S BETTER THAN NAKED & JACKET', 'المزيج المشهور و الشهى من بيبرونى لحم البقر، قطع لحم البقر الصافى،المشروم،الفلفل الاخضر،البصل،والزيتون الاسود مغطاه بجبنة الموتزاريلا ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:53:11', NULL, NULL),
(8, 2, 'كريب كريسبى', 'MEN\'S BETTER THAN NAKED & JACKET', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:53:11', NULL, NULL),
(9, 3, 'كرسبى', 'MEN\'S BETTER THAN NAKED & JACKET', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:53:11', NULL, NULL),
(10, 4, 'فطير', 'MEN\'S BETTER THAN NAKED & JACKET', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n            tempor incididunt ut labore et dolore magna aliqua consequat.', '//images-cdn-am.azureedge.net/azure/am-resources/c3877a59-69f7-40fa-bb17-ae5b9ac37732/Images/ProductImages/Large/chicken supreme.png', '2019-04-12 06:53:11', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
