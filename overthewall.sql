-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 06:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `overthewall`
--

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
-- Table structure for table `map_tq_login_credentials`
--

CREATE TABLE `map_tq_login_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map_tq_login_credentials`
--

INSERT INTO `map_tq_login_credentials` (`id`, `user_id`, `token`, `raw_data`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://www.maptq.com/access.aspx?accesscode=7457d66c-2683-4f63-952c-e99b6baedb93&accesshash=39e8bdfb3eb4b6d351ab0089dfddf0be', '<response xmlns=\"\"><result><![CDATA[https://www.maptq.com/access.aspx?accesscode=7457d66c-2683-4f63-952c-e99b6baedb93&accesshash=39e8bdfb3eb4b6d351ab0089dfddf0be]]></result><candidateid>1</candidateid></response>', '2022-07-31 09:30:37', '2022-07-31 09:30:37'),
(3, 3, 'https://www.maptq.com/access.aspx?accesscode=81472f0b-8d33-4647-9a19-02287d7aacec&accesshash=e155e95a7298015776e3d73acbd3437c', '<response xmlns=\"\"><result><![CDATA[https://www.maptq.com/access.aspx?accesscode=81472f0b-8d33-4647-9a19-02287d7aacec&accesshash=e155e95a7298015776e3d73acbd3437c]]></result><candidateid>3</candidateid></response>', '2022-08-08 11:13:31', '2022-08-08 11:13:31'),
(4, 4, 'https://www.maptq.com/access.aspx?accesscode=a3f7c9b1-59b1-4f14-bdd1-22e4de27bd93&accesshash=d6f5cc3d27d8382b42df77e734a83e35', '<response xmlns=\"\"><result><![CDATA[https://www.maptq.com/access.aspx?accesscode=a3f7c9b1-59b1-4f14-bdd1-22e4de27bd93&accesshash=d6f5cc3d27d8382b42df77e734a83e35]]></result><candidateid>4</candidateid></response>', '2022-08-08 11:30:59', '2022-08-08 11:30:59'),
(5, 5, 'https://www.maptq.com/access.aspx?accesscode=7bd4f327-1c14-47a0-8df7-364043abff42&accesshash=3e6ffc801863e11b994dbad6850d969b', '<response xmlns=\"\"><result><![CDATA[https://www.maptq.com/access.aspx?accesscode=7bd4f327-1c14-47a0-8df7-364043abff42&accesshash=3e6ffc801863e11b994dbad6850d969b]]></result><candidateid>5</candidateid></response>', '2022-08-09 00:59:10', '2022-08-09 00:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `map_tq_results`
--

CREATE TABLE `map_tq_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidateid` bigint(20) NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_07_25_083149_laratrust_setup_tables', 1),
(12, '2022_07_31_135146_create_map_tq_login_credential', 2),
(13, '2022_08_01_093950_create_map_tq_resusts', 3),
(14, '2022_08_09_092718_create_news', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` bigint(20) UNSIGNED NOT NULL,
  `n_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(2, 'users-read', 'Read Users', 'Read Users', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(3, 'users-update', 'Update Users', 'Update Users', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2022-07-26 04:57:10', '2022-07-26 04:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', 'Superadmin', '2022-07-26 04:57:10', '2022-07-26 04:57:10'),
(2, 'admin', 'Admin', 'Admin', '2022-07-26 04:57:11', '2022-07-26 04:57:11'),
(3, 'user', 'User', 'User', '2022-07-26 04:57:11', '2022-07-26 04:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(3, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(3, 3, 'App\\Models\\User'),
(3, 4, 'App\\Models\\User'),
(3, 5, 'App\\Models\\User'),
(3, 6, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_leader_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_uni_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uni_id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uni_department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_year_of_studires` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `when_are_you_expecting_graduate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_many_member_team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_team_member_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_team_member_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_team_member_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_team_member_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_team_member_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_team_member_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `team_name`, `team_leader_name`, `name`, `email`, `phone`, `linkedin`, `what_uni_from`, `uni_id_number`, `uni_department`, `what_year_of_studires`, `when_are_you_expecting_graduate`, `how_many_member_team`, `second_team_member_name`, `second_team_member_email`, `second_team_member_phone`, `third_team_member_name`, `third_team_member_email`, `third_team_member_phone`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Team-1', 'Abu Oubaida', 'Abu Oubaida', 'abuoubaida36@gmail.com', '01778138129', 'l', 'Option 1', '123', 'cse', '1\'st Year', '2022', '2', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 05:06:25', '$2y$10$o2akMbQJBvyuCyPptXOexexCrYc1XlNOlqSo8S5mem4Ovi4CUaaJe', 1, NULL, '2022-07-26 05:04:12', '2022-07-26 05:06:25'),
(2, 'admin', 'admin', 'Member-2', 'abuoubaida37@gmail.com', '01778138129', 'l', NULL, '123', 'cse', '5', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 02:55:17', '$2y$10$Fxw3w/JHOHQDoKMSvpxSRundElLY/XHD8xCzKou34jw4/qB6aUyBW', 1, NULL, '2022-07-26 05:04:18', '2022-08-09 02:55:17'),
(3, 'Team-1', 'Abu Oubaida', 'Member-3', 'abuoubaida38@gmail.com', '01778138129', 'l', NULL, 'bubt', 'cse', '4', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 05:14:27', '$2y$10$/CGiVhJe0DrZk1GiePM3WeyuOSXcJdnwTtVqg75H3xWzG7KvOzNlO', 1, NULL, '2022-07-26 05:04:22', '2022-07-26 05:14:27'),
(4, 'Team 2', 'Name 1', 'Name 1', 't1@pinnacleitbd.com', '1234567845', 'f', 'Option 1', '123', 'cse', '1\'st Year', '2022', '2', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 11:30:20', '$2y$10$3dRrQ.6ZkABNjYGjgUPgGO96uOMkfAkkmV8UaLPyQFGQPh4vjmkqC', 1, NULL, '2022-08-08 11:27:44', '2022-08-08 11:30:21'),
(5, 'Team 2', 'Name 1', 'Name 2', 't2@pinnacleitbd.com', '12345', 'f', NULL, '12', 'cse', '4', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 00:58:28', '$2y$10$o0h0UM0hfeOa6MMUJElZzu7ebf485blh0NSIUYDjS9nPFeFpuSVI.', 1, NULL, '2022-08-08 11:27:53', '2022-08-09 00:58:28'),
(6, 'Team 2', 'Name 1', 'Name 3', 't3@pinnacleitbd.com', '1234567', 's', NULL, '123', 'cse', '5', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-09 01:34:33', '$2y$10$Keb9Wa.rHBWkr9en36wr8.MBV93bY5tRrk7jt7DEzqQsivXZH2wZi', 1, NULL, '2022-08-08 11:27:59', '2022-08-09 01:34:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `map_tq_login_credentials`
--
ALTER TABLE `map_tq_login_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map_tq_results`
--
ALTER TABLE `map_tq_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`),
  ADD UNIQUE KEY `news_url_unique` (`url`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `map_tq_login_credentials`
--
ALTER TABLE `map_tq_login_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `map_tq_results`
--
ALTER TABLE `map_tq_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
