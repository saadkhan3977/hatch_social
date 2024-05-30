-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2024 at 03:58 PM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u610221546_hatch_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_infos`
--

CREATE TABLE `admin_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `official_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bubbles`
--

CREATE TABLE `bubbles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bubble_teams`
--

CREATE TABLE `bubble_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bubble_id` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `approval_post` varchar(255) DEFAULT NULL,
  `membership_cost` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `admin_create_content` varchar(255) DEFAULT NULL,
  `moderator_create_content` varchar(255) DEFAULT NULL,
  `member_create_content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bubble` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`id`, `profile_id`, `title`, `approval_post`, `membership_cost`, `privacy`, `admin_create_content`, `moderator_create_content`, `member_create_content`, `image`, `bubble`, `created_at`, `updated_at`) VALUES
(136, '143', 'my bubble', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/e1cb39bbe412516db96d8f5f0a922978.jpg', 1, '2024-05-17 16:42:06', '2024-05-17 16:42:06'),
(137, '144', 'new Bubble T', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/7f7a05f5eb36fdc838b4969f1deccbbd.jpg', 1, '2024-05-17 17:42:27', '2024-05-17 17:42:27'),
(138, '147', 'checking', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/2970df4fa69c16eba35496976e7ae59f.jpg', 1, '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(139, '150', 'new bubble', 'No', 'yes', 'No', 'Yes', 'Yes', 'Yes', 'uploads/community/36492e04785447114644bae48b989494.jpg', 1, '2024-05-18 19:08:09', '2024-05-18 19:08:09'),
(140, '151', 'bubble2', 'yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'uploads/community/282ae91e1723f0249e292a7eba4b71c9.jpg', 1, '2024-05-18 19:21:26', '2024-05-18 19:21:26'),
(141, '150', 'new private bubble', 'yes', 'No', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/b3a79ba26d6106f86c95cce6264f9ed1.jpg', 1, '2024-05-18 20:23:49', '2024-05-18 20:23:49'),
(142, '152', 'publuc bubble in private profile', 'yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'uploads/community/601c5c1fd1f69e3954975e64d5d8264f.jpg', 1, '2024-05-18 21:03:51', '2024-05-18 21:03:51'),
(143, '144', 'User Bubble 3F', 'yes', 'No', 'yes', 'Yes', 'Yes', 'No', 'uploads/community/4907d64e0af6ded453034f623f8b2a36.jpg', 1, '2024-05-20 13:15:55', '2024-05-20 13:15:55'),
(144, '144', 'User bubble 4F', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/ee9517f48bd2bd37e5a67dbc9371387f.jpg', 1, '2024-05-20 13:20:07', '2024-05-20 13:20:07'),
(145, '154', 'Bubble 19 A', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/43d211ef84545d778cca3cb27285d682.jpg', 1, '2024-05-20 14:23:23', '2024-05-20 14:23:23'),
(146, '154', 'Bubble 19 B', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/9e386405876ca725e3bd1a87dc7c4fbd.jpg', 1, '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(147, '154', 'Bubble 19 C', 'yes', 'No', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/9bea41a6f0d1c23fd2bb59548dd807d6.jpg', 1, '2024-05-20 15:23:20', '2024-05-20 15:23:20'),
(148, '154', 'Bubble 19 D', 'yes', 'No', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/cafa542cc48e9e6804800b6d997a729f.jpg', 1, '2024-05-20 15:25:35', '2024-05-20 15:25:35'),
(149, '155', 'Bubb;e 19 b2', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/b90824faa638514c207a805a32041672.jpg', 1, '2024-05-20 15:38:03', '2024-05-20 15:38:03'),
(150, '155', 'mg', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'uploads/community/9c3d7f23d49efb39e52ab1e7623ff2ed.jpg', 1, '2024-05-22 09:04:32', '2024-05-22 09:04:32'),
(151, '147', 'TESTING FINANCE BUBBLE', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'uploads/community/6ff8c921e632fd1347c751d3ac645c41.jpg', 1, '2024-05-24 16:36:54', '2024-05-24 16:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `community_interests`
--

CREATE TABLE `community_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `interest_id` varchar(255) DEFAULT NULL,
  `community_id` varchar(255) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_interests`
--

INSERT INTO `community_interests` (`id`, `profile_id`, `interest_id`, `community_id`, `name`, `created_at`, `updated_at`) VALUES
(26, 143, 'img11', '136', 'Finance', '2024-05-17 16:42:06', '2024-05-17 16:42:06'),
(27, 143, 'img12', '136', 'Alternative Medicine', '2024-05-17 16:42:06', '2024-05-17 16:42:06'),
(28, 143, 'img13', '136', 'Commercial Real-estate', '2024-05-17 16:42:06', '2024-05-17 16:42:06'),
(29, 144, 'img25', '137', 'Real-estate', '2024-05-17 17:42:27', '2024-05-17 17:42:27'),
(30, 144, 'img31', '137', 'Comedy', '2024-05-17 17:42:27', '2024-05-17 17:42:27'),
(31, 144, 'img32', '137', 'Writing', '2024-05-17 17:42:27', '2024-05-17 17:42:27'),
(32, 144, 'img34', '137', 'News', '2024-05-17 17:42:27', '2024-05-17 17:42:27'),
(33, 147, 'img11', '138', 'Finance', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(34, 147, 'img12', '138', 'Alternative Medicine', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(35, 147, 'img13', '138', 'Commercial Real-estate', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(36, 147, 'img14', '138', 'Management Consulting', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(37, 147, 'img15', '138', 'Marketing/sales/Advertising', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(38, 147, 'img16', '138', 'Audio/Visual Technology and Communications', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(39, 147, 'img17', '138', 'education', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(40, 147, 'img18', '138', 'Graphics Designer', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(41, 147, 'img19', '138', 'Arts,Entertainment,Recreation', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(42, 150, 'img12', '139', 'Alternative Medicine', '2024-05-18 19:08:09', '2024-05-18 19:08:09'),
(43, 150, 'img15', '139', 'Marketing/sales/Advertising', '2024-05-18 19:08:09', '2024-05-18 19:08:09'),
(44, 151, 'img112', '140', 'Restaurant/Hotel', '2024-05-18 19:21:26', '2024-05-18 19:21:26'),
(45, 150, 'img19', '141', 'Arts,Entertainment,Recreation', '2024-05-18 20:23:49', '2024-05-18 20:23:49'),
(46, 150, 'img112', '141', 'Restaurant/Hotel', '2024-05-18 20:23:49', '2024-05-18 20:23:49'),
(47, 150, 'img38', '141', 'Food/Cooking', '2024-05-18 20:23:49', '2024-05-18 20:23:49'),
(48, 150, 'img315', '141', 'Art', '2024-05-18 20:23:49', '2024-05-18 20:23:49'),
(49, 152, 'img112', '142', 'Restaurant/Hotel', '2024-05-18 21:03:51', '2024-05-18 21:03:51'),
(50, 152, '57', '142', 'Food/Cooking', '2024-05-18 21:03:51', '2024-05-18 21:03:51'),
(51, 144, 'img31', '143', 'Comedy', '2024-05-20 13:15:55', '2024-05-20 13:15:55'),
(52, 144, 'img32', '143', 'Writing', '2024-05-20 13:15:55', '2024-05-20 13:15:55'),
(53, 144, 'img32', '144', 'Writing', '2024-05-20 13:20:07', '2024-05-20 13:20:07'),
(54, 144, 'img34', '144', 'News', '2024-05-20 13:20:07', '2024-05-20 13:20:07'),
(55, 154, 'img21', '145', 'Mutual Fund', '2024-05-20 14:23:23', '2024-05-20 14:23:23'),
(56, 154, 'img31', '145', 'Comedy', '2024-05-20 14:23:23', '2024-05-20 14:23:23'),
(57, 154, 'img37', '145', 'Music', '2024-05-20 14:23:23', '2024-05-20 14:23:23'),
(58, 154, 'img31', '146', 'Comedy', '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(59, 154, 'img32', '146', 'Writing', '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(60, 154, 'img33', '146', 'Musician', '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(61, 154, 'img34', '146', 'News', '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(62, 154, 'img37', '146', 'Music', '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(63, 154, '93', '148', 'Writing', '2024-05-20 15:25:35', '2024-05-20 15:25:35'),
(64, 154, '98', '148', 'Music', '2024-05-20 15:25:35', '2024-05-20 15:25:35'),
(65, 155, '57', '149', 'Finance', '2024-05-20 15:38:03', '2024-05-20 15:38:03'),
(66, 155, '98', '149', 'Music', '2024-05-20 15:38:03', '2024-05-20 15:38:03'),
(67, 155, '65', '150', 'Arts,Entertainment,Recreation', '2024-05-22 09:04:32', '2024-05-22 09:04:32'),
(68, 147, '57', '151', 'Finance', '2024-05-24 16:36:54', '2024-05-24 16:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `community_keywords`
--

CREATE TABLE `community_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `community_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_keywords`
--

INSERT INTO `community_keywords` (`id`, `community_id`, `name`, `profile_id`, `created_at`, `updated_at`) VALUES
(239, '136', 'my', '143', '2024-05-17 16:42:06', '2024-05-17 16:42:06'),
(240, '136', 'bubble', '143', '2024-05-17 16:42:06', '2024-05-17 16:42:06'),
(241, '137', 'abc', '144', '2024-05-17 17:42:27', '2024-05-17 17:42:27'),
(242, '138', '#hatchsocial', '147', '2024-05-17 19:42:43', '2024-05-17 19:42:43'),
(243, '139', '#hatchsocial #marketing', '150', '2024-05-18 19:08:09', '2024-05-18 19:08:09'),
(244, '140', '#hamburgers #pizza #fries', '151', '2024-05-18 19:21:26', '2024-05-18 19:21:26'),
(245, '141', '#ART #HAMBURGERS #FRIES', '150', '2024-05-18 20:23:49', '2024-05-18 20:23:49'),
(246, '142', '#art', '152', '2024-05-18 21:03:51', '2024-05-18 21:03:51'),
(247, '142', '#hamburger', '152', '2024-05-18 21:03:51', '2024-05-18 21:03:51'),
(248, '142', '#fries', '152', '2024-05-18 21:03:51', '2024-05-18 21:03:51'),
(249, '143', 'abc', '144', '2024-05-20 13:15:55', '2024-05-20 13:15:55'),
(250, '144', 'abc xyz', '144', '2024-05-20 13:20:07', '2024-05-20 13:20:07'),
(251, '145', 'abc', '154', '2024-05-20 14:23:23', '2024-05-20 14:23:23'),
(252, '146', 'xyz', '154', '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(253, '147', 'abc', '154', '2024-05-20 15:23:20', '2024-05-20 15:23:20'),
(254, '148', 'xyz', '154', '2024-05-20 15:25:35', '2024-05-20 15:25:35'),
(255, '149', 'anc', '155', '2024-05-20 15:38:03', '2024-05-20 15:38:03'),
(256, '150', 'comedy', '155', '2024-05-22 09:04:32', '2024-05-22 09:04:32'),
(257, '151', '#finance', '147', '2024-05-24 16:36:54', '2024-05-24 16:36:54'),
(258, '151', '#investment', '147', '2024-05-24 16:36:54', '2024-05-24 16:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `community_teams`
--

CREATE TABLE `community_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `community_id` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `invite_profile_id` varchar(250) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_teams`
--

INSERT INTO `community_teams` (`id`, `community_id`, `profile_id`, `invite_profile_id`, `role`, `status`, `created_at`, `updated_at`) VALUES
(483, '136', '143', NULL, 'owner', 'follow', '2024-05-17 16:42:06', '2024-05-17 16:42:06'),
(484, '137', '144', NULL, 'owner', 'follow', '2024-05-17 17:42:27', '2024-05-17 17:42:27'),
(486, '138', '147', NULL, 'member', 'request', '2024-05-17 19:43:33', '2024-05-17 19:43:33'),
(487, '139', '150', NULL, 'owner', 'follow', '2024-05-18 19:08:09', '2024-05-18 19:08:09'),
(488, '140', '151', NULL, 'owner', 'follow', '2024-05-18 19:21:26', '2024-05-18 19:21:26'),
(489, '141', '150', NULL, 'owner', 'follow', '2024-05-18 20:23:49', '2024-05-18 20:23:49'),
(490, '137', '150', NULL, 'member', 'request', '2024-05-18 20:26:42', '2024-05-18 20:26:42'),
(491, '136', '150', NULL, 'member', 'request', '2024-05-18 20:26:52', '2024-05-18 20:26:52'),
(492, '142', '152', NULL, 'owner', 'follow', '2024-05-18 21:03:51', '2024-05-18 21:03:51'),
(493, '143', '144', NULL, 'owner', 'follow', '2024-05-20 13:15:55', '2024-05-20 13:15:55'),
(494, '144', '144', NULL, 'owner', 'follow', '2024-05-20 13:20:07', '2024-05-20 13:20:07'),
(495, '145', '154', NULL, 'owner', 'follow', '2024-05-20 14:23:23', '2024-05-20 14:23:23'),
(496, '146', '154', NULL, 'owner', 'follow', '2024-05-20 14:32:43', '2024-05-20 14:32:43'),
(497, '147', '154', NULL, 'owner', 'follow', '2024-05-20 15:23:20', '2024-05-20 15:23:20'),
(498, '148', '154', NULL, 'owner', 'follow', '2024-05-20 15:25:35', '2024-05-20 15:25:35'),
(499, '147', '155', NULL, 'member', 'request', '2024-05-20 15:35:18', '2024-05-20 15:35:18'),
(500, '145', '155', NULL, 'member', 'request', '2024-05-20 15:35:43', '2024-05-20 15:35:43'),
(501, '149', '155', NULL, 'owner', 'follow', '2024-05-20 15:38:03', '2024-05-20 15:38:03'),
(503, '150', '155', NULL, 'owner', 'follow', '2024-05-22 09:04:32', '2024-05-22 09:04:32'),
(504, '151', '147', NULL, 'owner', 'follow', '2024-05-24 16:36:54', '2024-05-24 16:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `community_id` varchar(250) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE `event_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_joins`
--

CREATE TABLE `event_joins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `bubble` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `profile_id`, `name`, `image`, `description`, `bubble`, `created_at`, `updated_at`) VALUES
(24, '150', 'marketing feed', 'uploads/feed/3e93c7674aa5bcd3aa6cf9fdbdc8a8cd.jpg', 'marketing', 0, '2024-05-18 19:04:20', '2024-05-18 19:04:20'),
(25, '150', 'hamburger', 'uploads/feed/ec3f74a44774ce45215210295191a5a0.jpg', 'hamburger feed', 0, '2024-05-18 20:33:23', '2024-05-18 20:33:23'),
(26, '144', 'Test Feed 7', 'uploads/feed/c7c00055215719f4067d767621ac0b2c.jpg', 'auduyaiyasyd asdasdfuyaysy adsiou aghdyi ash asduasdysdsuda  yadsdyyadsjhuyuyuweyudyasdheuuqe3yhuyuwyuyueey8uewewe4wzzx  hs s sduyi uifiuiyyi fd sssssssssssssssssss', 0, '2024-05-20 09:57:16', '2024-05-20 09:57:16'),
(27, '147', 'Check for Ma\'am', 'uploads/feed/88fea15a0e6c1b3037a82d1f46628b1a.jpg', 'jjtstisitsitstkatitaitatisitw58eyia5wogfoydtist9dotd8ts7rs', 0, '2024-05-20 16:21:03', '2024-05-20 16:21:03'),
(28, '152', 'angie 1', 'uploads/feed/99d24589ab613d3d0d0f41028f51e436.jpg', 'hamburger fries ans art feed', 0, '2024-05-22 04:35:34', '2024-05-22 04:35:34'),
(29, '152', 'angie 2', 'uploads/feed/edc786e7f6040f60e82009555efb1bb3.jpg', 'football, socxer and fries oh my', 0, '2024-05-22 04:38:44', '2024-05-22 04:38:44'),
(30, '155', 'mg', 'uploads/feed/b25f5aaec98f5f892c332e7fe73cf382.jpg', 'dfsdfsdfsd dfsdfsd dfsdf dfsdf', 0, '2024-05-22 09:02:12', '2024-05-22 09:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `feed_follows`
--

CREATE TABLE `feed_follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feed_interests`
--

CREATE TABLE `feed_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `feed_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feed_interests`
--

INSERT INTO `feed_interests` (`id`, `interest_id`, `feed_id`, `created_at`, `updated_at`) VALUES
(1, 57, 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hashtags`
--

INSERT INTO `hashtags` (`id`, `feed_id`, `title`, `created_at`, `updated_at`) VALUES
(22, '11', '#tech', '2024-03-05 12:52:59', '2024-03-05 12:52:59'),
(23, '12', '#traveling', '2024-03-05 14:57:10', '2024-03-05 14:57:10'),
(24, '12', '#food', '2024-03-05 14:57:10', '2024-03-05 14:57:10'),
(25, '12', '#fashion', '2024-03-05 14:57:10', '2024-03-05 14:57:10'),
(26, '13', '#a', '2024-03-06 14:42:52', '2024-03-06 14:42:52'),
(27, '13', '#b', '2024-03-06 14:42:52', '2024-03-06 14:42:52'),
(28, '14', '#keyboard', '2024-03-19 19:47:04', '2024-03-19 19:47:04'),
(29, '15', '#cellphone', '2024-03-19 20:19:07', '2024-03-19 20:19:07'),
(30, '15', '#samsung', '2024-03-19 20:19:07', '2024-03-19 20:19:07'),
(31, '16', '#keys', '2024-03-22 19:59:04', '2024-03-22 19:59:04'),
(32, '16', '#keyboard', '2024-03-22 19:59:04', '2024-03-22 19:59:04'),
(33, '17', '#feed_test', '2024-03-25 05:44:40', '2024-03-25 05:44:40'),
(34, '18', '#abc', '2024-03-29 09:57:22', '2024-03-29 09:57:22'),
(35, '19', '#check-issue', '2024-03-29 10:07:47', '2024-03-29 10:07:47'),
(36, '20', '#podcast', '2024-03-29 10:32:49', '2024-03-29 10:32:49'),
(37, '21', '#joh', '2024-03-29 17:30:40', '2024-03-29 17:30:40'),
(38, '22', '#food', '2024-04-02 17:23:50', '2024-04-02 17:23:50'),
(39, '22', '#funny', '2024-04-02 17:23:50', '2024-04-02 17:23:50'),
(40, '22', '#plums', '2024-04-02 17:23:50', '2024-04-02 17:23:50'),
(41, '23', '#eclipse', '2024-04-09 18:47:50', '2024-04-09 18:47:50'),
(42, '23', '#eclipse', '2024-04-09 18:47:50', '2024-04-09 18:47:50'),
(43, '24', '#marketing', '2024-05-18 19:04:20', '2024-05-18 19:04:20'),
(44, '25', '#art #hamburger #fries', '2024-05-18 20:33:23', '2024-05-18 20:33:23'),
(45, '26', '#mac #dell', '2024-05-20 09:57:16', '2024-05-20 09:57:16'),
(46, '27', '#checking', '2024-05-20 16:21:03', '2024-05-20 16:21:03'),
(47, '28', '#hamburger #fries #art', '2024-05-22 04:35:34', '2024-05-22 04:35:34'),
(48, '28', '#art', '2024-05-22 04:35:34', '2024-05-22 04:35:34'),
(49, '28', '#hamburger', '2024-05-22 04:35:34', '2024-05-22 04:35:34'),
(50, '28', '#fries', '2024-05-22 04:35:34', '2024-05-22 04:35:34'),
(51, '29', '#football', '2024-05-22 04:38:44', '2024-05-22 04:38:44'),
(52, '29', '#soccer', '2024-05-22 04:38:44', '2024-05-22 04:38:44'),
(53, '29', '#fries', '2024-05-22 04:38:44', '2024-05-22 04:38:44'),
(54, '30', '#travel', '2024-05-22 09:02:12', '2024-05-22 09:02:12'),
(55, '30', '#food', '2024-05-22 09:02:12', '2024-05-22 09:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `name`, `image`, `type`, `created_at`, `updated_at`) VALUES
(57, 'Finance', 'uploads/user/interests/c813e5ba65b8c9e46e824be99b53f393.jpg', 'biz', '2024-05-17 13:21:32', '2024-05-17 13:21:32'),
(58, 'Alternative Medicine', 'uploads/user/interests/d1e521392b841459c608c592b0fcf241.jpg', 'biz', '2024-05-17 13:21:49', '2024-05-17 13:21:49'),
(59, 'Commercial Real-estate', 'uploads/user/interests/aee43579ccd57a0ff24168a235f3dccb.jpg', 'biz', '2024-05-17 13:22:05', '2024-05-17 13:22:05'),
(60, 'Management Consulting', 'uploads/user/interests/36206b6b62bcf1e28ade72f63d25f9d8.jpg', 'biz', '2024-05-17 13:22:20', '2024-05-17 13:22:20'),
(61, 'Marketing/sales/Advertising', 'uploads/user/interests/c427935bf0a6db7305e9c3089d35338a.jpg', 'biz', '2024-05-17 13:22:30', '2024-05-17 13:22:30'),
(62, 'Audio/Visual Technology and Communications', 'uploads/user/interests/8970c3b7966b6e87eab0c4191864acf1.jpg', 'biz', '2024-05-17 13:22:40', '2024-05-17 13:22:40'),
(63, 'Education', 'uploads/user/interests/2774e956a33940d00aa2279b686a06f3.jpg', 'biz', '2024-05-17 13:22:50', '2024-05-17 13:22:50'),
(64, 'Graphics Designer', 'uploads/user/interests/802c65f0bada0a28457a3a8ab6b976ec.jpg', 'biz', '2024-05-17 13:23:09', '2024-05-17 13:23:09'),
(65, 'Arts,Entertainment,Recreation', 'uploads/user/interests/84e96666b521c8c69aed58d6e13054c0.jpg', 'biz', '2024-05-17 13:23:20', '2024-05-17 13:23:20'),
(66, 'Tech', 'uploads/user/interests/b2c495a7e299ef057717ba8609b8e17d.jpg', 'biz', '2024-05-17 13:23:28', '2024-05-17 13:23:28'),
(67, 'Energy/Public Utiliy', 'uploads/user/interests/4ede9b065701f4f14e189899c2d6a7ad.jpg', 'biz', '2024-05-17 13:23:40', '2024-05-17 13:23:40'),
(68, 'Restaurant/Hotel', 'uploads/user/interests/1f00f08bb358700df935c40ff66f372d.jpg', 'biz', '2024-05-17 13:23:53', '2024-05-17 13:23:53'),
(69, 'Proudction', 'uploads/user/interests/c3ea5489c46493caeb14e6099f5e4c01.jpg', 'biz', '2024-05-17 13:24:00', '2024-05-17 13:24:00'),
(70, 'Publish', 'uploads/user/interests/415915745225934e3fbb81d2421b51be.jpg', 'biz', '2024-05-17 13:24:08', '2024-05-17 13:24:08'),
(71, 'Building/Construction/Desgin', 'uploads/user/interests/835014997c789b4bd19606595ee94221.jpg', 'biz', '2024-05-17 13:24:33', '2024-05-17 13:24:33'),
(72, 'Statistician', 'uploads/user/interests/c40b5143db9274b68d353642a5a82c6e.jpg', 'biz', '2024-05-17 13:24:51', '2024-05-17 13:24:51'),
(73, 'Insurance', 'uploads/user/interests/ca96995ed20e5f9e6fb4035772dba252.jpg', 'biz', '2024-05-17 13:25:11', '2024-05-17 13:25:11'),
(74, 'Residential Real-estate', 'uploads/user/interests/1321a00bd5671577bb934d54408110e8.jpg', 'biz', '2024-05-17 13:25:20', '2024-05-17 13:25:20'),
(75, 'IT Support', 'uploads/user/interests/e29b236be8205319be80fbe6cb8da5be.jpg', 'biz', '2024-05-17 13:25:34', '2024-05-17 13:25:34'),
(76, 'Human Resources', 'uploads/user/interests/942b70199bbb4830dbeb7c5bf8af017a.jpg', 'biz', '2024-05-17 13:25:45', '2024-05-17 13:25:45'),
(77, 'Natural Resources/Mining', 'uploads/user/interests/50d7f981b7bcbc79abc41f2fc00c9960.jpg', 'biz', '2024-05-17 13:25:56', '2024-05-17 13:25:56'),
(78, 'Hospitatlity/Tourism', 'uploads/user/interests/ff75a1798644c8acddaaa3949ae600bb.jpg', 'biz', '2024-05-17 13:26:06', '2024-05-17 13:26:06'),
(79, 'Mutual Fund', 'uploads/user/interests/d499d96540cc70393581c9d04f990973.jpg', 'invest', '2024-05-17 13:26:50', '2024-05-17 13:26:50'),
(80, 'Money Market Fund', 'uploads/user/interests/a056a95c877131e7a73eab978cb7e8e5.jpg', 'invest', '2024-05-17 13:27:06', '2024-05-17 13:27:06'),
(81, 'Stock', 'uploads/user/interests/3c5f4ae3288b30c3182b9fcba049b6e8.jpg', 'invest', '2024-05-17 13:28:17', '2024-05-17 13:28:17'),
(82, 'Real-estate', 'uploads/user/interests/17b04601f0790737dae45efdca291f5c.jpg', 'invest', '2024-05-17 13:28:26', '2024-05-17 13:28:26'),
(83, 'Ut Labore Et Dolore', 'uploads/user/interests/bd0de0581524d4e3f8184cbb4f4d5624.jpg', 'invest', '2024-05-17 13:28:35', '2024-05-17 13:28:35'),
(84, 'annuity', 'uploads/user/interests/9549692f7dbe8acd4803e66c7c0a32a1.jpg', 'invest', '2024-05-17 13:28:42', '2024-05-17 13:28:42'),
(85, 'Muncipal Bond', 'uploads/user/interests/2551baacbfb0df6c18034be54f019fc8.jpg', 'invest', '2024-05-17 13:28:53', '2024-05-17 13:28:53'),
(86, 'Crowd Funding', 'uploads/user/interests/d5e8c1c82521718d1c8abb65663e5b33.jpg', 'invest', '2024-05-17 13:29:05', '2024-05-17 13:29:05'),
(87, 'Index Funds', 'uploads/user/interests/83307be3fd898df899d446fadb4be6d2.jpg', 'invest', '2024-05-17 13:29:29', '2024-05-17 13:29:29'),
(88, 'Crypto', 'uploads/user/interests/a96be5d1d22511fcc1ba35d51a78c764.jpg', 'invest', '2024-05-17 13:29:36', '2024-05-17 13:29:36'),
(89, 'Exchange-Traded Fund', 'uploads/user/interests/af233749eddc9e1c65a44f1986b6991d.jpg', 'invest', '2024-05-17 13:29:44', '2024-05-17 13:29:44'),
(90, 'investment fund', 'uploads/user/interests/79f9e9dd2a12cb3618ef803787de020b.jpg', 'invest', '2024-05-17 13:29:55', '2024-05-17 13:29:55'),
(91, 'NFT', 'uploads/user/interests/daab68bdbbcb29279498fb666f8f0044.jpg', 'invest', '2024-05-17 13:30:03', '2024-05-17 13:30:03'),
(92, 'Comedy', 'uploads/user/interests/ec877707d70777698aa6d67f77f54a45.jpg', 'social', '2024-05-17 13:30:36', '2024-05-17 13:30:36'),
(93, 'Writing', 'uploads/user/interests/882c3d2424cafb3359ddfb96ddabce50.jpg', 'social', '2024-05-17 13:30:44', '2024-05-17 13:30:44'),
(94, 'Musician', 'uploads/user/interests/393073ac8f032cdf5fa43800692d13ce.jpg', 'social', '2024-05-17 13:30:54', '2024-05-17 13:30:54'),
(95, 'News', 'uploads/user/interests/3a59c0685df6d2e3d5a74d086b673b00.jpg', 'social', '2024-05-17 13:31:03', '2024-05-17 13:31:03'),
(96, 'Textile Activities', 'uploads/user/interests/f4c29c7b6b4da4ee04f22c6ed93c4cbc.jpg', 'social', '2024-05-17 13:31:14', '2024-05-17 13:31:14'),
(97, 'Birds Watching', 'uploads/user/interests/f47f0ce3f425172152931a628ef4d83c.jpg', 'social', '2024-05-17 13:31:36', '2024-05-17 13:31:36'),
(98, 'Music', 'uploads/user/interests/6f3e78131c06ac6d2b6c3a402dbc7151.jpg', 'social', '2024-05-17 13:31:43', '2024-05-17 13:31:43'),
(99, 'Food/Cooking', 'uploads/user/interests/eca1947189c94d92e200c0e555773413.jpg', 'social', '2024-05-17 13:31:56', '2024-05-17 13:31:56'),
(100, 'Entertaining', 'uploads/user/interests/594eebb049c81d05948cd1b5c7b27b1c.jpg', 'social', '2024-05-17 13:32:06', '2024-05-17 13:32:06'),
(101, 'Equestrian', 'uploads/user/interests/203b4f16d1bff5bf61c8b2d76452aaf7.jpg', 'social', '2024-05-17 13:32:43', '2024-05-17 13:32:43'),
(102, 'Pro Sports', 'uploads/user/interests/6f99027f274eb56e10447417c125aa63.jpg', 'social', '2024-05-17 13:32:57', '2024-05-17 13:32:57'),
(103, 'Blogging', 'uploads/user/interests/1dc587ddbb509b9c3e43ce3a4fed9d1f.jpg', 'social', '2024-05-17 13:33:12', '2024-05-17 13:33:12'),
(104, 'Floral Design', 'uploads/user/interests/bbe88d8e4fcdb82e19334c455ce0e355.jpg', 'social', '2024-05-17 13:33:24', '2024-05-17 13:33:24'),
(105, 'Alternative Fitness', 'uploads/user/interests/f2272c2499e6388c5a1251b405b4367d.jpg', 'social', '2024-05-17 13:33:33', '2024-05-17 13:33:33'),
(106, 'Art', 'uploads/user/interests/4ae94e82e2f538ecf813f1e64a88af06.jpg', 'social', '2024-05-17 13:33:44', '2024-05-17 13:33:44'),
(107, 'Outdoor Sports', 'uploads/user/interests/d43928eddbf8bdc55490693f8794444d.jpg', 'social', '2024-05-17 13:34:00', '2024-05-17 13:34:00'),
(108, 'BeeKeeping', 'uploads/user/interests/645cd1bd96b8b6c55217836838b58837.jpg', 'social', '2024-05-17 13:34:09', '2024-05-17 13:34:09'),
(109, 'Travelling', 'uploads/user/interests/b1b50994cb78fad163ef5d8bcc547f4f.jpg', 'social', '2024-05-17 13:34:20', '2024-05-17 13:34:20'),
(110, 'Brewing', 'uploads/user/interests/63e7ec7f5923ee73da1fc81b497e1a48.jpg', 'social', '2024-05-17 13:34:32', '2024-05-17 13:34:32'),
(111, 'Build', 'uploads/user/interests/7dd690aba7fb45489a1e0856d8e2158a.jpg', 'social', '2024-05-17 13:34:39', '2024-05-17 13:34:39'),
(112, 'Dining', 'uploads/user/interests/efac699c0c1d67023ca2bbe6341fde21.jpg', 'social', '2024-05-17 13:34:49', '2024-05-17 13:34:49'),
(113, 'Board Games', 'uploads/user/interests/6099053167d273d0bcbcdb7334869474.jpg', 'social', '2024-05-17 13:35:03', '2024-05-17 13:35:03'),
(114, 'Out-Door Sports', 'uploads/user/interests/a3a0f4e31fc3da69e677dcb77c6f39ab.jpg', 'social', '2024-05-17 13:35:16', '2024-05-17 13:35:16'),
(115, 'Wine', 'uploads/user/interests/064bee5409ee4b5a36c73e30a96df449.jpg', 'social', '2024-05-17 13:35:24', '2024-05-17 13:35:24'),
(116, 'Cocktails', 'uploads/user/interests/5884d4534474f3196e3203991118030c.jpg', 'social', '2024-05-17 13:35:32', '2024-05-17 13:35:32'),
(117, 'Poker', 'uploads/user/interests/30c0f8ea2a6c6a70b444633903af64d5.jpg', 'social', '2024-05-17 13:35:41', '2024-05-17 13:35:41'),
(118, 'Barrista', 'uploads/user/interests/83f89636191071504ef6885679e05d7f.jpg', 'social', '2024-05-17 13:35:51', '2024-05-17 13:35:51'),
(119, 'Snow Sports', 'uploads/user/interests/5adf84df92b4153e5ca5550f16fe9e8e.jpg', 'social', '2024-05-17 13:36:05', '2024-05-17 13:36:05'),
(120, 'Gardening', 'uploads/user/interests/56729733b632a0920aae5bb11b07af3c.jpg', 'social', '2024-05-17 13:36:14', '2024-05-17 13:36:14'),
(121, 'Architecture', 'uploads/user/interests/133dd8c04044394f17e8e20da4d43b1c.jpg', 'social', '2024-05-17 13:36:21', '2024-05-17 13:36:21'),
(122, 'language', 'uploads/user/interests/eb37e2cdb6f00590b8a4f1e7014f3e1e.jpg', 'social', '2024-05-17 13:36:30', '2024-05-17 13:36:30'),
(123, 'Fantasy Sports', 'uploads/user/interests/83f94254254cabce6cca618da503ab40.jpg', 'social', '2024-05-17 13:36:40', '2024-05-17 13:36:40'),
(124, 'Concerts', 'uploads/user/interests/71695ce21de683c5aa41d71b0247f2a5.jpg', 'social', '2024-05-17 13:36:50', '2024-05-17 13:36:50'),
(125, 'College Sports', 'uploads/user/interests/83f936150a7333a5a95a348814eceb2e.jpg', 'social', '2024-05-17 13:37:03', '2024-05-17 13:37:03'),
(126, 'Spirituality', 'uploads/user/interests/547cc0a73505629cd5881fb38b7b579f.jpg', 'social', '2024-05-17 13:37:24', '2024-05-17 13:37:24'),
(127, 'Ut Enim Ad Minim', 'uploads/user/interests/85d86f64e526a9be4688b3d6be2dcf76.jpg', 'social', '2024-05-17 13:37:39', '2024-05-17 13:37:39'),
(128, 'Fashion', 'uploads/user/interests/62657d57306e9f1145c72d9eecf39c22.jpg', 'social', '2024-05-17 13:37:51', '2024-05-17 13:37:51'),
(129, 'Charity', 'uploads/user/interests/2ad0539125d5600f8256c37501d20c23.jpg', 'social', '2024-05-17 13:38:00', '2024-05-17 13:38:00'),
(130, 'Dance', 'uploads/user/interests/0f41a41c30b84ff411c729eb933fb286.jpg', 'social', '2024-05-17 13:38:08', '2024-05-17 13:38:08'),
(131, 'Astrology', 'uploads/user/interests/4619e5bceea4040869809a360c012f1d.jpg', 'social', '2024-05-17 13:38:15', '2024-05-17 13:38:15'),
(132, 'Beauty', 'uploads/user/interests/80786f0645b5becdcd3c89a7706f4158.jpg', 'social', '2024-05-17 13:38:25', '2024-05-17 13:38:25'),
(133, 'Book Club', 'uploads/user/interests/d4432873ad33ae45fd69a14e9f38d50e.jpg', 'social', '2024-05-17 13:38:36', '2024-05-17 13:38:36'),
(134, 'Fitness', 'uploads/user/interests/159607efef087f0f09bd2bea374d2816.jpg', 'social', '2024-05-17 13:38:45', '2024-05-17 13:38:45'),
(135, 'Ultrasonographer', 'uploads/user/interests/5b5f9425fc1d8290168585741fbc3b6d.jpg', 'traders', '2024-05-17 13:39:24', '2024-05-17 13:39:24'),
(136, 'Construction Managers', 'uploads/user/interests/e85f6307acd744b35c81b2ef846a8135.jpg', 'traders', '2024-05-17 13:39:37', '2024-05-17 13:39:37'),
(137, 'Boileramker', 'uploads/user/interests/c5a40a77ae19faac276f500de6b2bfae.jpg', 'traders', '2024-05-17 13:39:44', '2024-05-17 13:39:44'),
(138, 'Nuclear Medicine', 'uploads/user/interests/33292aebdef04fa94dac0373f2fc6ab3.jpg', 'traders', '2024-05-17 13:39:55', '2024-05-17 13:39:55'),
(139, 'Welder', 'uploads/user/interests/bc16b2c73c2a29e3585aa76e4154d112.jpg', 'traders', '2024-05-17 13:40:05', '2024-05-17 13:40:05'),
(140, 'Mason', 'uploads/user/interests/bc21131dd0f5a5d17c70dfb19f0ec325.jpg', 'traders', '2024-05-17 13:40:12', '2024-05-17 13:40:12'),
(141, 'HVAC', 'uploads/user/interests/0a98144e235e3d0b6341d3125c1ffb5d.jpg', 'traders', '2024-05-17 13:40:21', '2024-05-17 13:40:21'),
(142, 'Real estate Inspectors/Appraisor', 'uploads/user/interests/789245dcd742c9ea592da783d3b22a66.jpg', 'traders', '2024-05-17 13:40:33', '2024-05-17 13:40:33'),
(143, 'Millwright', 'uploads/user/interests/2d91193a4d1f57c8f9bed16551483f23.jpg', 'traders', '2024-05-17 13:40:42', '2024-05-17 13:40:42'),
(144, 'Civil engineering tech', 'uploads/user/interests/7c6e125d561d0b05c3061a509a980620.jpg', 'traders', '2024-05-17 13:40:54', '2024-05-17 13:40:54'),
(145, 'Electrician', 'uploads/user/interests/9fd54fa0a9265f62e983a32234bf0044.jpg', 'traders', '2024-05-17 13:41:02', '2024-05-17 13:41:02'),
(146, 'Mechanic', 'uploads/user/interests/b5bdd6981f96ad5b10289594dd2af385.jpg', 'traders', '2024-05-17 13:41:10', '2024-05-17 13:41:10'),
(147, 'Dental Hygenists', 'uploads/user/interests/ae36b17a90462d96eae181412ceb5c18.jpg', 'traders', '2024-05-17 13:41:23', '2024-05-17 13:41:23'),
(148, 'Industrial Engg. Tech', 'uploads/user/interests/ec8a3d845237956a11586c7d27fb9975.jpg', 'traders', '2024-05-17 13:41:37', '2024-05-17 13:41:37'),
(149, 'Plumber', 'uploads/user/interests/90766321568d17ff0bf459a657382cf0.jpg', 'traders', '2024-05-17 13:41:48', '2024-05-17 13:41:48'),
(150, 'Lineworker', 'uploads/user/interests/afdf09d6e038b1c0dfc0f58e835b03a5.jpg', 'traders', '2024-05-17 13:41:58', '2024-05-17 13:41:58'),
(151, 'Carpentry', 'uploads/user/interests/b2ce75546f168180cf468a4994f8e543.jpg', 'traders', '2024-05-17 13:42:06', '2024-05-17 13:42:06'),
(152, 'Respiratory therapist', 'uploads/user/interests/486804c323dafb91a61a07d145023d9e.jpg', 'traders', '2024-05-17 13:42:20', '2024-05-17 13:42:20'),
(154, 'Pipefitter', 'uploads/user/interests/2abfea8649108f77aeba941be52fb9d8.jpg', 'traders', '2024-05-17 13:42:38', '2024-05-17 13:42:38');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_05_03_000001_create_customer_columns', 1),
(9, '2019_05_03_000002_create_subscriptions_table', 1),
(10, '2019_05_03_000003_create_subscription_items_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_11_03_095742_create_reset_code_passwords_table', 1),
(14, '2022_12_06_112838_create_admin_infos_table', 1),
(15, '2022_12_06_115501_create_contact_infos_table', 1),
(16, '2023_11_06_105954_create_profiles_table', 2),
(17, '2023_11_07_133519_create_bubbles_table', 3),
(18, '2023_11_07_135130_create_feeds_table', 4),
(19, '2023_11_07_144120_create_subscribes_table', 5),
(20, '2023_12_18_115451_create_posts_table', 6),
(21, '2023_12_18_120226_create_post_images_table', 6),
(22, '2023_12_18_120314_create_post_videos_table', 6),
(23, '2023_12_18_143603_create_events_table', 7),
(24, '2023_12_18_144037_create_event_images_table', 7),
(25, '2023_12_19_113321_create_bubble_teams_table', 8),
(26, '2023_12_19_143308_create_community_table', 9),
(27, '2023_12_19_143929_create_community_teams_table', 10),
(28, '2023_12_19_150846_create_comments_table', 11),
(29, '2023_12_20_111242_create_post_likes_table', 12),
(30, '2023_12_21_165634_create_event_joins_table', 13),
(31, '2023_12_28_140618_create_profile_interests_table', 14),
(32, '2023_12_28_140952_create_interests_table', 14),
(33, '2023_12_28_141030_create_community_interests_table', 14),
(34, '2024_01_03_115442_create_community_keywords_table', 15),
(35, '2024_02_28_114832_create_feed_follows_table', 16),
(36, '2024_02_28_152646_create_hashtags_table', 17),
(37, '2024_03_04_110406_create_post_hashtags_table', 18),
(38, '2024_05_20_101559_create_feed_interests_table', 19);

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
(1, 'App\\Models\\User', 1, 'hatch_social', '2af87c26f15170fa4be39b23e1d207c20c583f2b1b63847e5e79403ecc76a25b', '[\"*\"]', '2023-12-29 20:08:08', NULL, '2023-12-29 19:46:53', '2023-12-29 20:08:08'),
(2, 'App\\Models\\User', 2, 'hatch_social', 'bef2d4e7277a40df93219df64d5a881bbdea0a4cce834d118488abd01489c0f4', '[\"*\"]', '2023-12-29 19:51:17', NULL, '2023-12-29 19:47:26', '2023-12-29 19:51:17'),
(3, 'App\\Models\\User', 1, 'hatch_social', 'ef386c26992041c5d0d8e518148185cab4e7a6f3a9bc50008e90918cdc6c303c', '[\"*\"]', NULL, NULL, '2023-12-29 19:55:14', '2023-12-29 19:55:14'),
(4, 'App\\Models\\User', 1, 'hatch_social', '5c06b983be174c92eaff33a5b3d22f73e5e542a0d27b1277cef7d7c08bb5a087', '[\"*\"]', NULL, NULL, '2023-12-29 19:55:44', '2023-12-29 19:55:44'),
(5, 'App\\Models\\User', 1, 'hatch_social', 'e157fd993ab72571153e4b80f1de489d99d822390162981431e5f02be048cbf1', '[\"*\"]', '2023-12-29 21:49:00', NULL, '2023-12-29 19:55:48', '2023-12-29 21:49:00'),
(6, 'App\\Models\\User', 2, 'hatch_social', '891388ade236951397cc07c93e92275d9cb3f3eafc429cf1657299e1b6fb93e3', '[\"*\"]', '2023-12-29 21:47:25', NULL, '2023-12-29 19:56:49', '2023-12-29 21:47:25'),
(7, 'App\\Models\\User', 3, 'hatch_social', '7b463648f2ebd4d9835d237cc88d8f399a1afa325ca67659ce6960260799b81b', '[\"*\"]', '2024-01-18 23:42:36', NULL, '2023-12-29 22:46:42', '2024-01-18 23:42:36'),
(8, 'App\\Models\\User', 1, 'hatch_social', '5ff8236d7b55515188be108a07e6cd8306a549a59133b2d28f0ec719f53e0879', '[\"*\"]', '2024-01-03 17:50:14', NULL, '2024-01-03 16:27:40', '2024-01-03 17:50:14'),
(9, 'App\\Models\\User', 1, 'hatch_social', '26ec6f03512b4fb38725ca46c1715dc6e57d59b0fd7795e223b1905a31953e08', '[\"*\"]', '2024-01-04 13:09:44', NULL, '2024-01-04 13:08:29', '2024-01-04 13:09:44'),
(10, 'App\\Models\\User', 1, 'hatch_social', '5cc2e5bf9cccd4962702bd3d86bfaa0e7600955dbf7fbe23f1ff3124132a8aa6', '[\"*\"]', '2024-01-04 20:31:46', NULL, '2024-01-04 20:28:45', '2024-01-04 20:31:46'),
(11, 'App\\Models\\User', 4, 'hatch_social', 'be1bd97a5587d038876d341d49a8838d9d7fa113e0af9d23c45775df4bfb6993', '[\"*\"]', '2024-01-17 17:09:00', NULL, '2024-01-16 17:39:36', '2024-01-17 17:09:00'),
(12, 'App\\Models\\User', 4, 'hatch_social', '9be2364d50eb2a210104b023f93f4636d93b4368972b83defba46448193b7fba', '[\"*\"]', '2024-01-17 13:44:31', NULL, '2024-01-17 13:42:19', '2024-01-17 13:44:31'),
(13, 'App\\Models\\User', 6, 'hatch_social', '0fdd4d5ad50ed5d0ea205273cc8ad0db391cabf2ad5d734f891daa74bb8eab9a', '[\"*\"]', '2024-01-19 00:47:09', NULL, '2024-01-17 13:48:45', '2024-01-19 00:47:09'),
(14, 'App\\Models\\User', 7, 'hatch_social', 'cefdaf33dad16dc105b99a938ee89afe360db1bb4483e3453176690bd444679b', '[\"*\"]', '2024-01-17 15:10:02', NULL, '2024-01-17 15:08:47', '2024-01-17 15:10:02'),
(15, 'App\\Models\\User', 4, 'hatch_social', '9988fe5817b06c8f3aa150181df0e0004c122e014a59eff68abbded0771872ed', '[\"*\"]', '2024-01-18 21:30:06', NULL, '2024-01-17 15:13:29', '2024-01-18 21:30:06'),
(16, 'App\\Models\\User', 9, 'hatch_social', '1c252bbde762aba99140bc488ae685f3c5cd316b9333b05b5849a68debad4eb6', '[\"*\"]', '2024-01-19 00:03:13', NULL, '2024-01-18 23:57:08', '2024-01-19 00:03:13'),
(17, 'App\\Models\\User', 4, 'hatch_social', '99540f1438410e465644bf13b09d7a17543fa166b353781c2e642bdcbd5e66bc', '[\"*\"]', '2024-01-19 00:59:19', NULL, '2024-01-19 00:55:53', '2024-01-19 00:59:19'),
(18, 'App\\Models\\User', 10, 'hatch_social', 'b27338880900326149f95201f60de3bbf8cf126eb5c2e2a4ce0be64894bba107', '[\"*\"]', '2024-01-25 00:10:45', NULL, '2024-01-23 00:22:30', '2024-01-25 00:10:45'),
(19, 'App\\Models\\User', 4, 'hatch_social', 'b32d74e36b0f0063b0ce343f24bf095b4c367978234197fafd7130d16b8ea6f8', '[\"*\"]', '2024-01-24 23:50:13', NULL, '2024-01-23 02:43:41', '2024-01-24 23:50:13'),
(20, 'App\\Models\\User', 10, 'hatch_social', '2b1a209c746f12a0b67aa0f0b9155b314811c85cdb627b88ac35fd02183808d8', '[\"*\"]', '2024-01-25 00:18:02', NULL, '2024-01-25 00:10:52', '2024-01-25 00:18:02'),
(21, 'App\\Models\\User', 10, 'hatch_social', '72e1bebc8c9bbaf625813a77eaa36a28527c199f2e980bac820b2731aa421572', '[\"*\"]', '2024-01-25 00:43:27', NULL, '2024-01-25 00:43:26', '2024-01-25 00:43:27'),
(22, 'App\\Models\\User', 10, 'hatch_social', '55fc7c18484ad523de0203bf203d7be15c2d513bf99f2dbd3d59e26e0c8ae937', '[\"*\"]', '2024-01-25 00:46:07', NULL, '2024-01-25 00:43:58', '2024-01-25 00:46:07'),
(23, 'App\\Models\\User', 11, 'hatch_social', '8de9cf60b33bf2d504a1aaf50c29668640a123da5500b2ac21fd8d65f86d21e5', '[\"*\"]', '2024-01-25 01:57:57', NULL, '2024-01-25 01:55:26', '2024-01-25 01:57:57'),
(24, 'App\\Models\\User', 12, 'hatch_social', 'cc6f2c4aa9fab90fe3ec3bc0a4039cf190cf96d6cc7910bbd3517643a4c5923d', '[\"*\"]', '2024-01-25 14:10:50', NULL, '2024-01-25 13:30:16', '2024-01-25 14:10:50'),
(25, 'App\\Models\\User', 12, 'hatch_social', 'fa2bead78eb1276ba66b7417951016737c29819e83d817abaf125a94daf89baf', '[\"*\"]', '2024-01-25 14:12:03', NULL, '2024-01-25 14:11:17', '2024-01-25 14:12:03'),
(26, 'App\\Models\\User', 13, 'hatch_social', '46854821d160ff032ce809efd1a9e14fe56082a607a48b90f5ba6d0399114f0b', '[\"*\"]', '2024-01-25 16:35:44', NULL, '2024-01-25 14:22:57', '2024-01-25 16:35:44'),
(27, 'App\\Models\\User', 13, 'hatch_social', '6a53c6e80ec9723923e31d5338e70a440336995d81db2e44da35592c99df1b40', '[\"*\"]', '2024-01-25 15:21:45', NULL, '2024-01-25 15:21:17', '2024-01-25 15:21:45'),
(28, 'App\\Models\\User', 13, 'hatch_social', '87d8ee21d79ee6d4fc51ac49f77e0a45c9d175c9bf528ede64a98f06a779904c', '[\"*\"]', '2024-02-05 15:04:23', NULL, '2024-01-25 15:22:14', '2024-02-05 15:04:23'),
(29, 'App\\Models\\User', 13, 'hatch_social', '854aebb30f067cc6589da58494e5ddbf6c1cdad0016011baf5767973258a8223', '[\"*\"]', '2024-03-05 12:26:19', NULL, '2024-01-25 16:22:59', '2024-03-05 12:26:19'),
(30, 'App\\Models\\User', 14, 'hatch_social', '2aca04f6a6b7c23d3cd3c3396e21b6ec7d729ed6c50a2982146359854614c3c7', '[\"*\"]', '2024-03-04 19:00:58', NULL, '2024-02-07 05:35:10', '2024-03-04 19:00:58'),
(31, 'App\\Models\\User', 12, 'hatch_social', 'ab957ef828679fa147fd18610a867db1abc844db3493792395d00d4ffe81b4d3', '[\"*\"]', '2024-03-04 18:02:33', NULL, '2024-02-07 15:10:26', '2024-03-04 18:02:33'),
(32, 'App\\Models\\User', 15, 'hatch_social', '6a3cbe659dd4f386015095e46b8babd719df0c8b36e03ce4b3d8c1d778a3d36e', '[\"*\"]', '2024-02-14 01:21:50', NULL, '2024-02-14 00:39:17', '2024-02-14 01:21:50'),
(33, 'App\\Models\\User', 16, 'hatch_social', '1630b8e4d56e5a06540c11e9f0ef53bb19d9f7ab704e9b22850369a5a54ff380', '[\"*\"]', '2024-02-14 13:24:30', NULL, '2024-02-14 01:31:24', '2024-02-14 13:24:30'),
(34, 'App\\Models\\User', 16, 'hatch_social', '90c9f0adc765c8d04c12a3fa9d7377c8d199877faf1dfadfe2222333260ccbc3', '[\"*\"]', '2024-02-26 02:21:23', NULL, '2024-02-14 13:26:30', '2024-02-26 02:21:23'),
(35, 'App\\Models\\User', 11, 'hatch_social', '800d18419bd1f930ab568dbc6cf9dc95de8d181dd8ab6f3ad9b8cf72ca167dd6', '[\"*\"]', '2024-02-14 18:16:16', NULL, '2024-02-14 17:18:09', '2024-02-14 18:16:16'),
(36, 'App\\Models\\User', 17, 'hatch_social', 'dbe7f399a66e0c12159111ad0b862ad057c0da97be42730385b2311c1489539d', '[\"*\"]', '2024-02-27 22:36:53', NULL, '2024-02-14 17:19:14', '2024-02-27 22:36:53'),
(37, 'App\\Models\\User', 12, 'hatch_social', '3fba26ef7cbddad46e0e5e7683151011aeee176ff6bc9b016d499090f8395b17', '[\"*\"]', NULL, NULL, '2024-02-20 11:14:47', '2024-02-20 11:14:47'),
(38, 'App\\Models\\User', 14, 'hatch_social', '01ddc3e3316a6fccbe5d9de7a3d04753814742c2747810fdf95c02d068d1593a', '[\"*\"]', '2024-02-23 16:24:19', NULL, '2024-02-22 11:20:42', '2024-02-23 16:24:19'),
(39, 'App\\Models\\User', 14, 'hatch_social', '7ba4b20cc3f90786b9454a262ec1f8851675071faab7201d726aeeea4f07e478', '[\"*\"]', '2024-02-23 15:37:49', NULL, '2024-02-23 15:37:47', '2024-02-23 15:37:49'),
(40, 'App\\Models\\User', 14, 'hatch_social', 'f8bca37a0e3b9d85824425c902914352a1993339b794713b3786d6a20f495fc0', '[\"*\"]', '2024-02-23 17:42:11', NULL, '2024-02-23 15:39:15', '2024-02-23 17:42:11'),
(41, 'App\\Models\\User', 18, 'hatch_social', '27cddf23aa22f2d358669b88f39d4b6a38a3c60ec42001e06ddb56d1db013121', '[\"*\"]', '2024-02-26 10:30:29', NULL, '2024-02-23 17:44:36', '2024-02-26 10:30:29'),
(42, 'App\\Models\\User', 19, 'hatch_social', '3f4150da6fd590287ecb329dce929a13de101ca29cfa60029b59aabeb58895a6', '[\"*\"]', '2024-02-26 10:49:55', NULL, '2024-02-23 17:46:09', '2024-02-26 10:49:55'),
(43, 'App\\Models\\User', 20, 'hatch_social', 'b358888a87d13fcd0ee358400d257822a6c4787154d961b196a188ca3180ed68', '[\"*\"]', '2024-02-23 20:02:07', NULL, '2024-02-23 19:58:03', '2024-02-23 20:02:07'),
(44, 'App\\Models\\User', 21, 'hatch_social', 'b8f539695b0ab94a41936d2b1c9ffc6eaba6c0c8b180313505c67fbaabbb661a', '[\"*\"]', '2024-02-26 10:56:02', NULL, '2024-02-26 10:37:00', '2024-02-26 10:56:02'),
(45, 'App\\Models\\User', 21, 'hatch_social', 'dab1ca6bab62c831f40ce8e2ffd4e4ad2877109ae6d4d59c779fa543a1b3c39e', '[\"*\"]', '2024-02-26 11:11:03', NULL, '2024-02-26 10:56:43', '2024-02-26 11:11:03'),
(46, 'App\\Models\\User', 21, 'hatch_social', 'be6ad057007986a9fcff14e66f4558b945bfc4ffa655a26b2e36f17425654200', '[\"*\"]', '2024-02-29 11:35:25', NULL, '2024-02-26 11:12:56', '2024-02-29 11:35:25'),
(47, 'App\\Models\\User', 22, 'hatch_social', 'b109fc46786f15ce2f805c54d1e29b00c235c44f597f7887c1bcb7d197e278cb', '[\"*\"]', '2024-02-28 07:32:47', NULL, '2024-02-26 11:30:50', '2024-02-28 07:32:47'),
(48, 'App\\Models\\User', 11, 'hatch_social', '42ed28b09576f1f5f4d66fc44ac406384eb47ee098c4c3268b134eebf0a2c427', '[\"*\"]', '2024-03-04 19:31:19', NULL, '2024-02-27 17:56:05', '2024-03-04 19:31:19'),
(49, 'App\\Models\\User', 14, 'hatch_social', 'bf0e51fc3b52776483ca0f400e76b087f9910d3735d4f1d2fc2ee8c1cec0864b', '[\"*\"]', '2024-03-04 17:51:12', NULL, '2024-02-28 07:38:46', '2024-03-04 17:51:12'),
(50, 'App\\Models\\User', 14, 'hatch_social', 'e68749a1c3d7302409075bdc0029191c2a9dc22151c7e8c4b973dd678b4fdc20', '[\"*\"]', '2024-03-05 12:06:23', NULL, '2024-02-29 11:36:04', '2024-03-05 12:06:23'),
(51, 'App\\Models\\User', 11, 'hatch_social', 'c1df2e26124ae0dff96022cd98b04243fd4ab0fb4fc7baaafe9505178b439f29', '[\"*\"]', '2024-03-04 19:54:13', NULL, '2024-03-04 19:37:32', '2024-03-04 19:54:13'),
(52, 'App\\Models\\User', 23, 'hatch_social', 'f0e341efbc982315fa1a7330cf87c71bd8cc223529aa2b574955d121cd7bce34', '[\"*\"]', '2024-03-04 19:42:45', NULL, '2024-03-04 19:39:32', '2024-03-04 19:42:45'),
(53, 'App\\Models\\User', 11, 'hatch_social', '8f11df71885a634e54f42033db2217e98ddcf00b64884082da747d4e216d38bd', '[\"*\"]', '2024-03-04 20:51:29', NULL, '2024-03-04 19:56:23', '2024-03-04 20:51:29'),
(54, 'App\\Models\\User', 14, 'hatch_social', 'd9bcbd64153f018a6f225cfc2dd3391789d8a8780d7bc2b45f70cb0c92be67be', '[\"*\"]', '2024-03-05 12:36:03', NULL, '2024-03-05 12:27:02', '2024-03-05 12:36:03'),
(55, 'App\\Models\\User', 14, 'hatch_social', '2b649072f83db36666a576641d4e59260da1702d1c693f6d5d5c6c0dfde07afc', '[\"*\"]', '2024-03-05 12:32:46', NULL, '2024-03-05 12:28:10', '2024-03-05 12:32:46'),
(56, 'App\\Models\\User', 24, 'hatch_social', '24fb82dc2a981eef9f10360fe0185725c86dedc060818b072fee3a1b415b92e9', '[\"*\"]', '2024-03-05 12:53:00', NULL, '2024-03-05 12:44:25', '2024-03-05 12:53:00'),
(57, 'App\\Models\\User', 25, 'hatch_social', 'd23908b9355a0cb4a9604015764666bad2eb2e9096b2f9bc0a75641c70c6fcb0', '[\"*\"]', '2024-03-05 12:57:26', NULL, '2024-03-05 12:54:29', '2024-03-05 12:57:26'),
(58, 'App\\Models\\User', 24, 'hatch_social', '99b1d846a4daf6eeed1d5b2a3913234ea4f6b22ce70695f7707674eef09160e2', '[\"*\"]', '2024-03-05 13:18:22', NULL, '2024-03-05 12:58:10', '2024-03-05 13:18:22'),
(59, 'App\\Models\\User', 25, 'hatch_social', 'f64413f8e9e46068c135d1cdde3cff96afa685a7cd8998cc72578c6c1d16e292', '[\"*\"]', '2024-03-05 14:18:39', NULL, '2024-03-05 13:20:23', '2024-03-05 14:18:39'),
(60, 'App\\Models\\User', 25, 'hatch_social', 'f6cca8116c005b2c2faa0bef2fca0d25b21ab9266912e371b832c2b7c3174e54', '[\"*\"]', '2024-03-25 04:45:52', NULL, '2024-03-05 14:19:28', '2024-03-25 04:45:52'),
(61, 'App\\Models\\User', 25, 'hatch_social', 'a851609f726e383cd04cfd15c61b39bfebaf1b3fc71394ad3714c15737418d4c', '[\"*\"]', '2024-03-05 14:47:35', NULL, '2024-03-05 14:46:45', '2024-03-05 14:47:35'),
(62, 'App\\Models\\User', 26, 'hatch_social', '761124342c949ebc33b55db97066406b7eb14bfb20fc57f8fd3f06d7de554093', '[\"*\"]', '2024-03-05 14:51:18', NULL, '2024-03-05 14:48:53', '2024-03-05 14:51:18'),
(63, 'App\\Models\\User', 25, 'hatch_social', 'eaa52386126de8810c79d823b2cb00c8627889bb87b99ccf4979838d6cf0c356', '[\"*\"]', '2024-03-05 15:39:44', NULL, '2024-03-05 14:52:15', '2024-03-05 15:39:44'),
(64, 'App\\Models\\User', 25, 'hatch_social', 'd53b4cafd732f27b8ac108a77172e39fcdebc9552b027bb38c5252c48fc9f505', '[\"*\"]', '2024-03-28 04:05:53', NULL, '2024-03-05 15:05:00', '2024-03-28 04:05:53'),
(65, 'App\\Models\\User', 25, 'hatch_social', 'f940bfe40288af93463fb9037a0a33faf825d01fe0f531b107c1c71c36fb082e', '[\"*\"]', NULL, NULL, '2024-03-08 11:00:24', '2024-03-08 11:00:24'),
(66, 'App\\Models\\User', 27, 'hatch_social', '3a102833055a2a37a411a875e4c0e70d225c9d20e59db2e4859a8348a2d1fc87', '[\"*\"]', '2024-03-26 19:54:58', NULL, '2024-03-08 22:54:28', '2024-03-26 19:54:58'),
(67, 'App\\Models\\User', 28, 'hatch_social', '319e85479fcd87c6550f61f8fb9622a8a23c697d347dc9e4a05c767874858900', '[\"*\"]', '2024-04-03 17:50:43', NULL, '2024-03-08 23:13:50', '2024-04-03 17:50:43'),
(68, 'App\\Models\\User', 29, 'hatch_social', '4044ed9e58fa075f634b841a87c0dbf7b5fa4c24a6926ea3813bee581a3635a6', '[\"*\"]', '2024-03-26 15:48:38', NULL, '2024-03-18 20:57:48', '2024-03-26 15:48:38'),
(69, 'App\\Models\\User', 26, 'hatch_social', '7a4c9aa8ccd385c500975ba6ee5256ab3c69a765260f5a91c1bb76e63f2cd188', '[\"*\"]', '2024-03-28 05:33:52', NULL, '2024-03-19 13:00:27', '2024-03-28 05:33:52'),
(70, 'App\\Models\\User', 30, 'hatch_social', '168bbf8200809982af2fd439cd270443991fcca5c49699b1d49a114b5e64f0e4', '[\"*\"]', '2024-03-21 18:05:14', NULL, '2024-03-21 15:36:25', '2024-03-21 18:05:14'),
(71, 'App\\Models\\User', 30, 'hatch_social', '0be976535f62b085522adbb2544b099e63c0d7f1ced63f39d02cd0ca218ac009', '[\"*\"]', '2024-03-21 18:06:51', NULL, '2024-03-21 18:06:11', '2024-03-21 18:06:51'),
(72, 'App\\Models\\User', 30, 'hatch_social', 'f3cc16703451a784d178d55eaa3b99a7dea1c03a48bc968136f8a4baa857a0b9', '[\"*\"]', '2024-04-02 17:16:13', NULL, '2024-03-21 18:09:25', '2024-04-02 17:16:13'),
(73, 'App\\Models\\User', 25, 'hatch_social', '633626b0761c0c349451ef4bde71d43e209d0b0fa28e6534feda26f3515bf47f', '[\"*\"]', '2024-03-25 04:47:02', NULL, '2024-03-25 04:46:45', '2024-03-25 04:47:02'),
(74, 'App\\Models\\User', 31, 'hatch_social', '802425956ffce1cea1dc46ab791601b802908143e68d887e56e6de4ca52ec069', '[\"*\"]', '2024-03-25 04:51:42', NULL, '2024-03-25 04:50:12', '2024-03-25 04:51:42'),
(75, 'App\\Models\\User', 31, 'hatch_social', '9e1832f5314a46f5be077eff064d4c42399e5f18b623bade1819c33867b08d33', '[\"*\"]', '2024-03-25 04:59:20', NULL, '2024-03-25 04:52:26', '2024-03-25 04:59:20'),
(76, 'App\\Models\\User', 25, 'hatch_social', 'b8a1ba44ae4d1bd4b9270b5700fa69d692629e32f079e873abd29172d77634a1', '[\"*\"]', '2024-03-26 10:53:52', NULL, '2024-03-25 04:59:43', '2024-03-26 10:53:52'),
(77, 'App\\Models\\User', 31, 'hatch_social', 'a187315bbaad47e252c9bea091d1b03a2fe3f57d1661a2a490ba4658057fb96d', '[\"*\"]', '2024-03-25 10:24:05', NULL, '2024-03-25 06:57:17', '2024-03-25 10:24:05'),
(78, 'App\\Models\\User', 25, 'hatch_social', 'efea5c1f0ff31914de831c720ab592d5d4520089df132638479c7f9f5b7c0f54', '[\"*\"]', '2024-03-27 04:06:51', NULL, '2024-03-25 10:24:46', '2024-03-27 04:06:51'),
(79, 'App\\Models\\User', 26, 'hatch_social', '940acf27ce2eb6c1aeeaa0aebeaea38d024df86c7adc334fe3ace805fca37465', '[\"*\"]', NULL, NULL, '2024-03-26 09:32:21', '2024-03-26 09:32:21'),
(80, 'App\\Models\\User', 26, 'hatch_social', '6f03b2ad1cea2debfcd462257e019b5f6bd61c41c012bdab5210d49d048626fe', '[\"*\"]', '2024-03-26 09:43:27', NULL, '2024-03-26 09:32:31', '2024-03-26 09:43:27'),
(81, 'App\\Models\\User', 26, 'hatch_social', 'f3a9b7ebceea477f47036fe44fadb74cdd4f84a8dfca9de7749803c762d8ac9c', '[\"*\"]', '2024-04-08 07:17:09', NULL, '2024-03-26 09:44:39', '2024-04-08 07:17:09'),
(82, 'App\\Models\\User', 32, 'hatch_social', 'e2ea83a37ce1c07d2eac1a058739c92cb28615492675ee264da1a8fa12544d3d', '[\"*\"]', NULL, NULL, '2024-03-27 03:51:56', '2024-03-27 03:51:56'),
(83, 'App\\Models\\User', 32, 'hatch_social', '9946a4b5253cddc3fd2012e01c0e059db5b7a71c1f87647caa994b6202da2c4c', '[\"*\"]', '2024-03-27 03:59:40', NULL, '2024-03-27 03:56:44', '2024-03-27 03:59:40'),
(84, 'App\\Models\\User', 32, 'hatch_social', 'f4963f9ce079a712449f223d0f7a7146071e6607b57f99b1fcab7ce990cd1b36', '[\"*\"]', '2024-03-27 04:04:22', NULL, '2024-03-27 04:00:25', '2024-03-27 04:04:22'),
(85, 'App\\Models\\User', 32, 'hatch_social', '1d485297f0dc28709bd1d389427484cc8b68d26f69098b5573d250ff727ee85a', '[\"*\"]', '2024-03-27 04:13:59', NULL, '2024-03-27 04:04:54', '2024-03-27 04:13:59'),
(86, 'App\\Models\\User', 32, 'hatch_social', '6bc6c3e34ea829e9c355e6693695d2ff582c352f4cd7e2dc397a1cbf7f5daeab', '[\"*\"]', '2024-03-27 04:28:07', NULL, '2024-03-27 04:14:28', '2024-03-27 04:28:07'),
(87, 'App\\Models\\User', 32, 'hatch_social', '9ad90e6f6dec69add2cc3f04f668ab44df9d95e597fc1159d571b319a74284ba', '[\"*\"]', '2024-03-27 04:29:44', NULL, '2024-03-27 04:28:33', '2024-03-27 04:29:44'),
(88, 'App\\Models\\User', 32, 'hatch_social', '06cbefdaba6db5dd0ea040bd3dc21f988632bfa9350aaaaafba103e4b601c72e', '[\"*\"]', '2024-03-27 05:07:41', NULL, '2024-03-27 04:31:55', '2024-03-27 05:07:41'),
(89, 'App\\Models\\User', 33, 'hatch_social', 'f14b56ee97c15cd0cba18588470aec68753dd709e1e54d785829d9c7458f4c2a', '[\"*\"]', '2024-03-27 07:21:41', NULL, '2024-03-27 05:09:22', '2024-03-27 07:21:41'),
(90, 'App\\Models\\User', 33, 'hatch_social', '8dffc0258f821e6721f437aef79e32b218bb066c9da52f890497df8b35929a04', '[\"*\"]', '2024-03-27 06:00:46', NULL, '2024-03-27 05:58:53', '2024-03-27 06:00:46'),
(91, 'App\\Models\\User', 34, 'hatch_social', '019bf06fc5385cd0f04da2e63e3cb5f5d0a6a1671d1955cec45883222e3379e8', '[\"*\"]', '2024-03-27 09:16:51', NULL, '2024-03-27 06:02:05', '2024-03-27 09:16:51'),
(92, 'App\\Models\\User', 34, 'hatch_social', '6500416a1eb11404701d2e8ef8eacf8a8a9de071a363721ef79679ff59d6abd6', '[\"*\"]', '2024-03-27 08:47:46', NULL, '2024-03-27 07:22:03', '2024-03-27 08:47:46'),
(93, 'App\\Models\\User', 33, 'hatch_social', '0f17ba11b4f69606d22239b55b4c9e938f6b458336c7edd885dd990f1b073f15', '[\"*\"]', '2024-05-17 15:34:58', NULL, '2024-03-27 08:48:06', '2024-05-17 15:34:58'),
(94, 'App\\Models\\User', 33, 'hatch_social', '9507904ed2b0ce652b10ea4da3cf4cd2d04c6fb246609b101462d64a9824bed3', '[\"*\"]', '2024-03-27 11:08:06', NULL, '2024-03-27 11:06:37', '2024-03-27 11:08:06'),
(95, 'App\\Models\\User', 34, 'hatch_social', 'd9f12e71d61ef0ed4e386f2fb7a201fbe2525e74e3decc663a983209ec93f3c1', '[\"*\"]', '2024-03-28 04:03:43', NULL, '2024-03-28 04:03:41', '2024-03-28 04:03:43'),
(96, 'App\\Models\\User', 33, 'hatch_social', 'e9103e12ea2f76f15888ec41b4a613151fdb8f9e11c297b20b3a967a1333873b', '[\"*\"]', '2024-03-29 07:13:38', NULL, '2024-03-28 04:04:09', '2024-03-29 07:13:38'),
(97, 'App\\Models\\User', 29, 'hatch_social', '53bb6d8109343f7d69257a833bd23642c8a15d111fa593ca69bca97ecfe0eba3', '[\"*\"]', '2024-03-29 03:34:22', NULL, '2024-03-29 00:52:49', '2024-03-29 03:34:22'),
(98, 'App\\Models\\User', 33, 'hatch_social', '769a5a67f2fb2251016deaec811bde2e3619e056305ae83bec57004f0ffb32f4', '[\"*\"]', '2024-03-29 07:14:27', NULL, '2024-03-29 07:14:19', '2024-03-29 07:14:27'),
(99, 'App\\Models\\User', 33, 'hatch_social', '47f61320f2e3d117257777333a1c8da20eb62d393f6e75eef034cc079555f5da', '[\"*\"]', '2024-03-29 07:20:28', NULL, '2024-03-29 07:14:49', '2024-03-29 07:20:28'),
(100, 'App\\Models\\User', 33, 'hatch_social', '2be58b04457072810882482a8c5d8c4d8f33ad7c488600b7c9f6d22266f8d731', '[\"*\"]', '2024-03-29 07:21:06', NULL, '2024-03-29 07:20:45', '2024-03-29 07:21:06'),
(101, 'App\\Models\\User', 33, 'hatch_social', '78e9c827985bc0452058390a201ea3ea102e9c6f37b9ddc0e1514d1545cb48d5', '[\"*\"]', '2024-03-29 07:21:50', NULL, '2024-03-29 07:21:24', '2024-03-29 07:21:50'),
(102, 'App\\Models\\User', 33, 'hatch_social', '7adc776ac40da25bbc5f0eddbf1b652e427d6ac8c1064bb0a184ca7da844a6cb', '[\"*\"]', '2024-03-29 07:23:35', NULL, '2024-03-29 07:22:50', '2024-03-29 07:23:35'),
(103, 'App\\Models\\User', 33, 'hatch_social', 'c7c22f7caf708341eefd02ac0add167c50d9f4ed253f54d7382267d8fe3d563c', '[\"*\"]', '2024-03-29 09:05:57', NULL, '2024-03-29 07:23:56', '2024-03-29 09:05:57'),
(104, 'App\\Models\\User', 33, 'hatch_social', '64648d7f468c448e1c045872dc295d0b42f28726628b7c51a2d8136831109f49', '[\"*\"]', '2024-03-29 09:33:16', NULL, '2024-03-29 09:06:33', '2024-03-29 09:33:16'),
(105, 'App\\Models\\User', 33, 'hatch_social', 'ce316985cf2d8802ce272bb373c11f929954b83252c0c65c7cdc71191326c444', '[\"*\"]', '2024-03-29 10:11:57', NULL, '2024-03-29 09:33:40', '2024-03-29 10:11:57'),
(106, 'App\\Models\\User', 33, 'hatch_social', '698f4edbf8a4685136eb98cff6d004d21b7da4cd12523af71567a278c0089ad4', '[\"*\"]', '2024-05-02 13:03:59', NULL, '2024-03-29 10:31:06', '2024-05-02 13:03:59'),
(107, 'App\\Models\\User', 29, 'hatch_social', '7ab8a5952bfa1222fba3238b02c5e8ed37ec25796d9a9c8f9ae8365e59c3bf98', '[\"*\"]', '2024-04-01 22:34:18', NULL, '2024-03-29 17:29:12', '2024-04-01 22:34:18'),
(108, 'App\\Models\\User', 29, 'hatch_social', 'e82805eaec1ec8f8252257d0e4042209386bed8b622e8d5f65597b9e36757d7f', '[\"*\"]', '2024-04-05 16:58:02', NULL, '2024-04-01 22:37:24', '2024-04-05 16:58:02'),
(109, 'App\\Models\\User', 30, 'hatch_social', 'a02835fa7c57a71abaf3fdd3a04f77a7c6f94969d84c5b0a96a00ed92a4b364e', '[\"*\"]', '2024-04-02 17:24:15', NULL, '2024-04-02 17:22:26', '2024-04-02 17:24:15'),
(110, 'App\\Models\\User', 35, 'hatch_social', 'f168877e605b3f5df6077b83510abec989f79575d50e3581043fe0105aa7ac80', '[\"*\"]', '2024-04-02 18:14:55', NULL, '2024-04-02 18:08:09', '2024-04-02 18:14:55'),
(111, 'App\\Models\\User', 30, 'hatch_social', 'dfaa93c9254a91aec72d1865a4948dbf5e0b537c8acd8f1683453b1e4d7699c6', '[\"*\"]', '2024-04-02 18:17:09', NULL, '2024-04-02 18:15:22', '2024-04-02 18:17:09'),
(112, 'App\\Models\\User', 30, 'hatch_social', '4cb9d4c7eee9c44768a18d354ca4d225045a2ed28e13ca26ebae6470e64d191f', '[\"*\"]', '2024-04-02 18:31:16', NULL, '2024-04-02 18:19:36', '2024-04-02 18:31:16'),
(113, 'App\\Models\\User', 36, 'hatch_social', '3bc39178368fff7179c15e7cb4114c1e706b76527d38d2474a0432ec630394bf', '[\"*\"]', NULL, NULL, '2024-04-02 19:23:30', '2024-04-02 19:23:30'),
(114, 'App\\Models\\User', 26, 'hatch_social', 'da2c7e8b4fea4be6ad93a60fd8504de671d22f7a393c197289c6b601fa06a797', '[\"*\"]', NULL, NULL, '2024-04-02 19:24:52', '2024-04-02 19:24:52'),
(115, 'App\\Models\\User', 37, 'hatch_social', 'b11c00c21429a434f5d5d066ee9d404c3dc4a830ee43e6c91e00b2f003c5963b', '[\"*\"]', '2024-04-04 03:17:49', NULL, '2024-04-02 23:29:06', '2024-04-04 03:17:49'),
(116, 'App\\Models\\User', 30, 'hatch_social', '2efc7ad53f1237ab41acd37d97a56323aae27b076615e401c448a2fa89f2708c', '[\"*\"]', '2024-04-09 14:50:57', NULL, '2024-04-03 17:44:21', '2024-04-09 14:50:57'),
(117, 'App\\Models\\User', 28, 'hatch_social', 'b71967e9a64df04aeef7d7e811db1d6acb4ba6df9e0c5a7e59665b44c1eba62b', '[\"*\"]', '2024-05-01 04:04:09', NULL, '2024-04-03 17:53:38', '2024-05-01 04:04:09'),
(118, 'App\\Models\\User', 38, 'hatch_social', '49c35468aa22b0375bc7133232348ba9215b47a5892dffbdd7c484f8538d2d2c', '[\"*\"]', '2024-04-05 20:12:25', NULL, '2024-04-05 16:58:30', '2024-04-05 20:12:25'),
(119, 'App\\Models\\User', 39, 'hatch_social', '55c9f8d0426c2e5bf0c0906795494b8cf9a9f05276f55c3b337052ee1bf1ab39', '[\"*\"]', '2024-04-16 21:43:33', NULL, '2024-04-05 20:13:05', '2024-04-16 21:43:33'),
(120, 'App\\Models\\User', 34, 'hatch_social', '35397499f0fa7b83ac728be77b8f41073272210abb93e782197258cc25831dc5', '[\"*\"]', '2024-04-08 07:20:25', NULL, '2024-04-08 07:18:12', '2024-04-08 07:20:25'),
(121, 'App\\Models\\User', 33, 'hatch_social', '4b1919010640a270579029d5cbd8031831ee0cf72e163f6316ff0b3c3cd3ac2c', '[\"*\"]', '2024-04-26 11:34:08', NULL, '2024-04-08 07:21:12', '2024-04-26 11:34:08'),
(122, 'App\\Models\\User', 40, 'hatch_social', 'e16bcee7906cf041a81683f8e6c380dae352e48d0e75b5c769674a53d218397e', '[\"*\"]', '2024-04-09 14:58:44', NULL, '2024-04-09 14:54:37', '2024-04-09 14:58:44'),
(123, 'App\\Models\\User', 41, 'hatch_social', '29bc43393d16d999459fadce39593f4215e037ad1535dba18aa1132a4f87e93d', '[\"*\"]', '2024-04-09 15:05:08', NULL, '2024-04-09 15:01:54', '2024-04-09 15:05:08'),
(124, 'App\\Models\\User', 30, 'hatch_social', '8a6deb6c2af9a50587259923052127fcd9b2e04ae4ce2decbe7779d4264efb1c', '[\"*\"]', '2024-04-09 15:09:41', NULL, '2024-04-09 15:08:27', '2024-04-09 15:09:41'),
(125, 'App\\Models\\User', 42, 'hatch_social', '7c7e7f56a6411ef7a6d288aa5a621a54c50d2c407377d7b789fc254151edaa4e', '[\"*\"]', '2024-04-16 17:37:02', NULL, '2024-04-09 15:10:51', '2024-04-16 17:37:02'),
(126, 'App\\Models\\User', 40, 'hatch_social', '8b544e185020b8ef16fe78f992207a95e668e8b57d56f0cf9c8dc6c44922c366', '[\"*\"]', '2024-04-16 18:02:43', NULL, '2024-04-16 17:37:41', '2024-04-16 18:02:43'),
(127, 'App\\Models\\User', 40, 'hatch_social', 'ec1ea8ca7d3139e37f65970719206d8bcd982c1bc12d1bb23f3a52b20aa2effa', '[\"*\"]', '2024-04-16 18:15:04', NULL, '2024-04-16 18:05:52', '2024-04-16 18:15:04'),
(128, 'App\\Models\\User', 29, 'hatch_social', 'ffef1bfd52b9ede66ed2df78b1f0226b90f618029e8738a38d7bdea8aa4c834f', '[\"*\"]', '2024-04-17 00:17:17', NULL, '2024-04-17 00:04:59', '2024-04-17 00:17:17'),
(129, 'App\\Models\\User', 43, 'hatch_social', '93957b150a14c638625e5046d805beedf7ec7f20497c6e52dc91a3d2c1851db2', '[\"*\"]', NULL, NULL, '2024-04-17 00:17:45', '2024-04-17 00:17:45'),
(130, 'App\\Models\\User', 44, 'hatch_social', 'd7bc8730abc562ccea25413010f4a460fd66cfb923a6e9cb5807b110a65b1a10', '[\"*\"]', '2024-04-17 00:48:14', NULL, '2024-04-17 00:27:03', '2024-04-17 00:48:14'),
(131, 'App\\Models\\User', 29, 'hatch_social', 'e4687fc4fb3557448ba0538e4fed4119845348a12e0901ce40d9871eb9ed8b1e', '[\"*\"]', '2024-04-17 17:41:55', NULL, '2024-04-17 00:48:23', '2024-04-17 17:41:55'),
(132, 'App\\Models\\User', 45, 'hatch_social', '1eec74f0a053049ddb6c2a5c5227474ce1197a27a8632e1240d645c271d0bf9b', '[\"*\"]', '2024-04-17 18:16:41', NULL, '2024-04-17 17:44:43', '2024-04-17 18:16:41'),
(133, 'App\\Models\\User', 29, 'hatch_social', 'f51add777618abe8cf7763c4fc3d55ed53876a69bc1cbd02b4e3f6f81481c0fe', '[\"*\"]', '2024-04-23 19:37:35', NULL, '2024-04-17 18:16:49', '2024-04-23 19:37:35'),
(134, 'App\\Models\\User', 33, 'hatch_social', '967c61ae8f68ebc504fee6da92af0fbbf1abdfa5c9fce0678ef0865e17726afe', '[\"*\"]', '2024-04-30 14:32:23', NULL, '2024-04-26 11:44:21', '2024-04-30 14:32:23'),
(135, 'App\\Models\\User', 29, 'hatch_social', '70be97956120a2449ba9244850ab54df422ff20bc844547a79078642443b8f92', '[\"*\"]', '2024-04-26 19:04:57', NULL, '2024-04-26 16:55:04', '2024-04-26 19:04:57'),
(136, 'App\\Models\\User', 29, 'hatch_social', 'b0b8830a4e591779328d4a033ab9fccac2c4515bf8635cd40b9454836f52e920', '[\"*\"]', '2024-04-26 19:08:23', NULL, '2024-04-26 19:05:20', '2024-04-26 19:08:23'),
(137, 'App\\Models\\User', 29, 'hatch_social', 'ab284502ab5d4c2f239ceb73d808b44a94ec8d58e5ff1cfc1de991607d3e8f8c', '[\"*\"]', '2024-04-26 19:16:27', NULL, '2024-04-26 19:15:04', '2024-04-26 19:16:27'),
(138, 'App\\Models\\User', 29, 'hatch_social', 'f4097462267ddffe404e10bc74934cf0b4c1c428cf68cd49b01c7f59dd100308', '[\"*\"]', '2024-04-26 19:16:58', NULL, '2024-04-26 19:16:36', '2024-04-26 19:16:58'),
(139, 'App\\Models\\User', 46, 'hatch_social', 'ab6b1186d6fc22dc1c464c5128e2449f9c7ec835262fd251a61f0715017e1788', '[\"*\"]', '2024-04-26 19:32:40', NULL, '2024-04-26 19:17:34', '2024-04-26 19:32:40'),
(140, 'App\\Models\\User', 29, 'hatch_social', '09925fd55bac5d249679490ecc57dfb61518ece721e1904a50695e741bb0d736', '[\"*\"]', '2024-04-26 20:27:50', NULL, '2024-04-26 19:32:49', '2024-04-26 20:27:50'),
(141, 'App\\Models\\User', 29, 'hatch_social', '5c17e4367b851db1cfc5c28d7417e0c754b44d42769ff21c0f8457769012415c', '[\"*\"]', '2024-04-30 15:35:53', NULL, '2024-04-26 20:28:24', '2024-04-30 15:35:53'),
(142, 'App\\Models\\User', 33, 'hatch_social', 'd04ceb07b86ca1cb37fbbfa6cc4d64ffea7e984623e3172e4f44a08762823f8b', '[\"*\"]', '2024-05-03 09:29:27', NULL, '2024-04-30 14:32:57', '2024-05-03 09:29:27'),
(143, 'App\\Models\\User', 29, 'hatch_social', 'd05334432598aa2466f256f1f907330efaeca65ae24423286c1c3745d30260b9', '[\"*\"]', '2024-05-03 00:28:18', NULL, '2024-04-30 15:36:01', '2024-05-03 00:28:18'),
(144, 'App\\Models\\User', 37, 'hatch_social', '1fc844ddedd39f5679c16c4695fbfccc99dfdb79072c8d38bb722e71bee6f38d', '[\"*\"]', '2024-04-30 17:30:44', NULL, '2024-04-30 17:29:13', '2024-04-30 17:30:44'),
(145, 'App\\Models\\User', 47, 'hatch_social', '89d693b7039ebf5cfd32cb0456c7036c668c884fa016d2ad6986bc81a18a113c', '[\"*\"]', '2024-05-02 15:11:26', NULL, '2024-05-02 13:05:18', '2024-05-02 15:11:26'),
(146, 'App\\Models\\User', 48, 'hatch_social', '56ac5da0fc0117b41ae46e605c88dce1c9d3849bb0921273f4a8821ea6109337', '[\"*\"]', '2024-05-03 15:14:38', NULL, '2024-05-02 15:12:40', '2024-05-03 15:14:38'),
(147, 'App\\Models\\User', 49, 'hatch_social', '483e1509cd7b07be5ff5b5e5006ff90214d7611a3f26b8070359b47c804e0f3d', '[\"*\"]', '2024-05-03 15:23:39', NULL, '2024-05-03 15:15:51', '2024-05-03 15:23:39'),
(148, 'App\\Models\\User', 50, 'hatch_social', '9ca072fb4c3be8aff600227665a4cd1215c6ac6d38e3e0f29d11097cb72c7a2e', '[\"*\"]', '2024-05-06 10:08:38', NULL, '2024-05-03 15:24:41', '2024-05-06 10:08:38'),
(149, 'App\\Models\\User', 29, 'hatch_social', 'a1a2dea36a8fa622539b75b888086866e0d72f359837e1d1ddd81f03fee2c60d', '[\"*\"]', '2024-05-03 17:57:05', NULL, '2024-05-03 17:49:16', '2024-05-03 17:57:05'),
(150, 'App\\Models\\User', 51, 'hatch_social', '45c38ba2bcb14b54df84fc1ee382259e35fab6105b875f515c8dd7d90dd8bff8', '[\"*\"]', '2024-05-09 16:54:44', NULL, '2024-05-03 17:53:38', '2024-05-09 16:54:44'),
(151, 'App\\Models\\User', 52, 'hatch_social', '1b6c478c7cc8161157fa9b609bfa7a10a09ae3ad491f14e407d301db1881bfe1', '[\"*\"]', '2024-05-03 19:34:02', NULL, '2024-05-03 17:57:59', '2024-05-03 19:34:02'),
(152, 'App\\Models\\User', 53, 'hatch_social', '5d73de041c248983317008b2388cd8aaa51c4cf8f01bab79e83840a6a5f0bed7', '[\"*\"]', '2024-05-03 20:26:10', NULL, '2024-05-03 20:06:06', '2024-05-03 20:26:10'),
(153, 'App\\Models\\User', 29, 'hatch_social', '7a4abb1f7ceaf968e49e706d460bd69eacfe6fc895c75e0d0153008c5043ce50', '[\"*\"]', '2024-05-03 20:27:14', NULL, '2024-05-03 20:26:26', '2024-05-03 20:27:14'),
(154, 'App\\Models\\User', 29, 'hatch_social', '3e777ebfb0ef5f26cbb81e7c9f27eb561880bfbcbb83f89dac0822a8d64698b2', '[\"*\"]', '2024-05-06 19:49:52', NULL, '2024-05-03 20:27:28', '2024-05-06 19:49:52'),
(155, 'App\\Models\\User', 28, 'hatch_social', '8b67066fc88607ffb126e0d3630e85154890ad467f503b00d67748e22506c9c5', '[\"*\"]', '2024-05-05 23:03:06', NULL, '2024-05-05 22:42:18', '2024-05-05 23:03:06'),
(156, 'App\\Models\\User', 49, 'hatch_social', '4abf2ef199b706e7af917380c03e1ba2456726b599873ea7a2c90b76b19a6a04', '[\"*\"]', '2024-05-06 10:29:56', NULL, '2024-05-06 10:15:25', '2024-05-06 10:29:56'),
(157, 'App\\Models\\User', 50, 'hatch_social', 'c4649a234698ea7b7ab4a775f70f03931aeecd9f0db9d260ad4d3290a3c61f59', '[\"*\"]', '2024-05-17 15:40:51', NULL, '2024-05-06 10:31:01', '2024-05-17 15:40:51'),
(158, 'App\\Models\\User', 36, 'hatch_social', '861237e4eb3266dd37b4fed1821a6090fb5e9c405251966369cc5c90c415a66b', '[\"*\"]', NULL, NULL, '2024-05-06 21:35:39', '2024-05-06 21:35:39'),
(159, 'App\\Models\\User', 54, 'hatch_social', 'a28487048f7b019c4a9fc63110ddd8b46dfe91345d61718db6a142ddb0c986e0', '[\"*\"]', NULL, NULL, '2024-05-06 21:35:48', '2024-05-06 21:35:48'),
(160, 'App\\Models\\User', 54, 'hatch_social', 'e75c1938ea304ed673e046b98a34d810d6e1fc693f366fcbf12bd4849e0a0913', '[\"*\"]', NULL, NULL, '2024-05-06 21:35:54', '2024-05-06 21:35:54'),
(161, 'App\\Models\\User', 55, 'hatch_social', '3fe9ebbf0c24ca235599e412e8c39bf6b9bf39f3ef1ae587d925fb43b778ea19', '[\"*\"]', '2024-05-07 02:17:38', NULL, '2024-05-07 02:16:15', '2024-05-07 02:17:38'),
(162, 'App\\Models\\User', 55, 'hatch_social', 'be4e9a528332e4fcd12d2799dacd3d75a0613434d72412b47f5b0486516fb78b', '[\"*\"]', '2024-05-07 02:42:55', NULL, '2024-05-07 02:19:48', '2024-05-07 02:42:55'),
(163, 'App\\Models\\User', 56, 'hatch_social', '105c1c2f972cb4ce91429a66c66456cec65e0935739a46d8bf339123d6231256', '[\"*\"]', NULL, NULL, '2024-05-07 16:54:10', '2024-05-07 16:54:10'),
(164, 'App\\Models\\User', 57, 'hatch_social', '259b8b83dc01d869e70410a4a5a5644cd51dd497640b90c68b4cca91b749a3af', '[\"*\"]', NULL, NULL, '2024-05-07 17:03:38', '2024-05-07 17:03:38'),
(165, 'App\\Models\\User', 58, 'hatch_social', 'dbebcdbdbf40da7423d990888e2ce7930ff21d1787fa02f7cd2b75cd26c08641', '[\"*\"]', NULL, NULL, '2024-05-07 17:04:12', '2024-05-07 17:04:12'),
(166, 'App\\Models\\User', 59, 'hatch_social', '3396ad3c07a5fb6f77989ad6cd1f529d2bcf46d7b5b758ac5fc637ee08924e97', '[\"*\"]', NULL, NULL, '2024-05-07 17:22:50', '2024-05-07 17:22:50'),
(167, 'App\\Models\\User', 60, 'hatch_social', 'b30c464c5d7c6affcc764336d32602b77bf16c2bf4cace6e27805325de3bae97', '[\"*\"]', NULL, NULL, '2024-05-07 17:23:21', '2024-05-07 17:23:21'),
(168, 'App\\Models\\User', 61, 'hatch_social', '775f0c7659ca2cfbe714b0a7906bca208a32d48c1affb7403d34091af67776b5', '[\"*\"]', NULL, NULL, '2024-05-07 17:23:33', '2024-05-07 17:23:33'),
(169, 'App\\Models\\User', 62, 'hatch_social', '518591c630fd3b13e5cb081dddd7ec2a89ef0d361d6922387813b935d072e87a', '[\"*\"]', NULL, NULL, '2024-05-07 17:44:00', '2024-05-07 17:44:00'),
(170, 'App\\Models\\User', 63, 'hatch_social', 'f852aea6ebedaa27a0005366f119739524ae4f6f08bd36817cc617c11d3286fe', '[\"*\"]', NULL, NULL, '2024-05-07 17:44:27', '2024-05-07 17:44:27'),
(171, 'App\\Models\\User', 64, 'hatch_social', '3f2b8d3945a2a9963e1a427606c7ac16a18ede972601b5d9ce3f7006081ee85f', '[\"*\"]', NULL, NULL, '2024-05-07 17:46:06', '2024-05-07 17:46:06'),
(172, 'App\\Models\\User', 65, 'hatch_social', '4fbf4d21a99d5001da13f7a4cd001236f527d6f201c9ee00b715b21f315a17e9', '[\"*\"]', NULL, NULL, '2024-05-07 17:46:49', '2024-05-07 17:46:49'),
(173, 'App\\Models\\User', 66, 'hatch_social', 'e726eb8c7ede519948cbc4c540ee90adafd639be1b5600a421a67837e50f106f', '[\"*\"]', NULL, NULL, '2024-05-07 17:46:55', '2024-05-07 17:46:55'),
(174, 'App\\Models\\User', 54, 'hatch_social', 'b5d74cec3816acaa2064dc0d2b442037f55ece46e59d34c6ac5019f997f4e300', '[\"*\"]', NULL, NULL, '2024-05-09 19:00:38', '2024-05-09 19:00:38'),
(175, 'App\\Models\\User', 49, 'hatch_social', '1ea032573589d8a59b42c2711e1d5905a4b66897badc39f65ac6217f086ec226', '[\"*\"]', '2024-05-13 07:32:20', NULL, '2024-05-13 07:31:02', '2024-05-13 07:32:20'),
(176, 'App\\Models\\User', 49, 'hatch_social', 'a787936eee7e8fab6eb240508c7200ae92ab91f6f59a31b7ed4ec720946ca880', '[\"*\"]', NULL, NULL, '2024-05-13 07:33:38', '2024-05-13 07:33:38'),
(177, 'App\\Models\\User', 49, 'hatch_social', '1d0cb09d40c9875d03ed0be2f96e246baf816b60e76e8860ceca4394491220a8', '[\"*\"]', NULL, NULL, '2024-05-13 07:34:36', '2024-05-13 07:34:36'),
(178, 'App\\Models\\User', 49, 'hatch_social', '75d602ee18d863bdc56643366a22a09c61135107eecf871bee20fcb52369f121', '[\"*\"]', NULL, NULL, '2024-05-13 07:35:53', '2024-05-13 07:35:53'),
(179, 'App\\Models\\User', 49, 'hatch_social', '60810f137b259dbda88c5776ba40a964e24bb39ebae8633d0fbb126471cf8b96', '[\"*\"]', NULL, NULL, '2024-05-13 07:37:01', '2024-05-13 07:37:01'),
(180, 'App\\Models\\User', 47, 'hatch_social', '0bbf43ade8cb7739ba27ade4ab65adef2910354e29587478e2cc9564faf14d4b', '[\"*\"]', NULL, NULL, '2024-05-13 07:38:33', '2024-05-13 07:38:33'),
(181, 'App\\Models\\User', 49, 'hatch_social', '0620a68d4eb51773789f91bd63e992189d19da19d3b824dfee5aa201e525e99b', '[\"*\"]', NULL, NULL, '2024-05-13 07:39:00', '2024-05-13 07:39:00'),
(182, 'App\\Models\\User', 49, 'hatch_social', '0daecc0fb147c390497d99826dc5beed7eff82e37a33ae20a0063489b3d883b8', '[\"*\"]', NULL, NULL, '2024-05-13 07:48:29', '2024-05-13 07:48:29'),
(183, 'App\\Models\\User', 49, 'hatch_social', '1977fb4b08af556fabee8b493d3e9ff2276a5bc20d951d6b7efb4c2beb86becb', '[\"*\"]', NULL, NULL, '2024-05-13 07:48:29', '2024-05-13 07:48:29'),
(184, 'App\\Models\\User', 49, 'hatch_social', 'a8328e64fc56f97232128a4964b9413e8c2648faf4f76b31da332b9f4a841aae', '[\"*\"]', '2024-05-13 07:50:29', NULL, '2024-05-13 07:50:26', '2024-05-13 07:50:29'),
(185, 'App\\Models\\User', 49, 'hatch_social', 'd580a86e7f991975676e5a4bb3f0302469b406641b823b0262b80741c7d7d8a2', '[\"*\"]', NULL, NULL, '2024-05-13 07:50:55', '2024-05-13 07:50:55'),
(186, 'App\\Models\\User', 47, 'hatch_social', 'b5e2b1f20ef83c86bdb5336ed5b38573dc9111b254565e7e5852ef19e6835734', '[\"*\"]', NULL, NULL, '2024-05-13 07:51:28', '2024-05-13 07:51:28'),
(187, 'App\\Models\\User', 49, 'hatch_social', '5461e7d0ee78f5c63b9277ad845fcf2b630f26cdaf67d673056e800f84213f9f', '[\"*\"]', '2024-05-13 15:07:12', NULL, '2024-05-13 07:52:35', '2024-05-13 15:07:12'),
(188, 'App\\Models\\User', 49, 'hatch_social', 'a9a232cbeccc79f343f5f06ef1eadfa9e250aff98fe4261d255d3a889b591c3c', '[\"*\"]', '2024-05-13 15:42:27', NULL, '2024-05-13 15:39:22', '2024-05-13 15:42:27'),
(189, 'App\\Models\\User', 47, 'hatch_social', 'b5f5e5512680c31ae228fdabaf29ad9a473abfab44994a5b36962d6a2057cd3c', '[\"*\"]', '2024-05-13 15:44:05', NULL, '2024-05-13 15:43:04', '2024-05-13 15:44:05'),
(190, 'App\\Models\\User', 49, 'hatch_social', '5a7a4e87783d34d23e0b06850ed977189b44fea47f3bb8815828434f98da30f8', '[\"*\"]', '2024-05-13 15:44:55', NULL, '2024-05-13 15:44:32', '2024-05-13 15:44:55'),
(191, 'App\\Models\\User', 34, 'hatch_social', 'e88f8ae95a8598782a4c566a67c21f8fe978f297754a0aead39e454e562c17ff', '[\"*\"]', '2024-05-17 10:26:39', NULL, '2024-05-16 15:38:41', '2024-05-17 10:26:39'),
(192, 'App\\Models\\User', 49, 'hatch_social', '539363979c45201b96623d2a61d70c1fe564c466026ff224703de84f747f1ba3', '[\"*\"]', '2024-05-17 15:44:14', NULL, '2024-05-17 10:26:59', '2024-05-17 15:44:14'),
(193, 'App\\Models\\User', 67, 'hatch_social', '322f9306bb089628c457b987f8b91ce5b21917f11ed6cf463d62cf338e55e3b6', '[\"*\"]', '2024-05-17 15:51:37', NULL, '2024-05-17 15:49:02', '2024-05-17 15:51:37'),
(194, 'App\\Models\\User', 67, 'hatch_social', '2a5d22efc8197a5d013a32e6309ff94a899a952822cb812db610137be93f811f', '[\"*\"]', '2024-05-21 15:56:20', NULL, '2024-05-17 15:52:19', '2024-05-21 15:56:20'),
(195, 'App\\Models\\User', 68, 'hatch_social', 'c52622a964abd74f1902867e6f5f4fd22fe5902fd85e663454aeb283131b5fc5', '[\"*\"]', '2024-05-17 19:34:05', NULL, '2024-05-17 19:26:19', '2024-05-17 19:34:05'),
(196, 'App\\Models\\User', 69, 'hatch_social', '3ad63fd419137fcfa3f9e46c078360922d1341bc9e13dbf9212187143c2a60bf', '[\"*\"]', '2024-05-20 19:09:58', NULL, '2024-05-17 19:34:39', '2024-05-20 19:09:58'),
(197, 'App\\Models\\User', 70, 'hatch_social', '37d34da3724fb852abe935483c643acec9e507ff80de60212c84f505336c8833', '[\"*\"]', '2024-05-18 18:54:53', NULL, '2024-05-18 18:49:19', '2024-05-18 18:54:53'),
(198, 'App\\Models\\User', 71, 'hatch_social', 'd73045fa4fc3e7c614d3a1bd4908e2584a1c646ee248b2170dbd8c87c3a2df7f', '[\"*\"]', '2024-05-22 04:41:40', NULL, '2024-05-18 18:57:24', '2024-05-22 04:41:40'),
(199, 'App\\Models\\User', 72, 'hatch_social', 'e4cb9cb699486866f282fe13f3a823baa82ceacc828ee8e37710294367dcf32c', '[\"*\"]', '2024-05-27 09:55:09', NULL, '2024-05-20 14:20:00', '2024-05-27 09:55:09'),
(200, 'App\\Models\\User', 73, 'hatch_social', '0a5530dfd1fcb07b5e30aef60e851e805cb887a698ddaf3e0ab1ac0e28132451', '[\"*\"]', '2024-05-20 16:56:31', NULL, '2024-05-20 16:42:54', '2024-05-20 16:56:31'),
(201, 'App\\Models\\User', 69, 'hatch_social', '003348d3516545d379219310c72777fea42f2158da45a72652b0aa6f84214faa', '[\"*\"]', '2024-05-28 15:38:14', NULL, '2024-05-24 16:19:51', '2024-05-28 15:38:14'),
(202, 'App\\Models\\User', 72, 'hatch_social', 'cd0035972190a86e14d515a026e09a371e83cfc9959863dad125134e03df7498', '[\"*\"]', '2024-05-27 10:37:53', NULL, '2024-05-27 10:04:27', '2024-05-27 10:37:53'),
(203, 'App\\Models\\User', 72, 'hatch_social', 'be21df845122481a26724b00d64873481baceb0c4b3ac96687d0409ba6b96437', '[\"*\"]', '2024-05-27 14:01:34', NULL, '2024-05-27 13:49:13', '2024-05-27 14:01:34'),
(204, 'App\\Models\\User', 72, 'hatch_social', 'aa475ea2e1bee1be1c91297d8976b1e9af6be5e6468244404e485035d4bd5058', '[\"*\"]', '2024-05-27 16:06:32', NULL, '2024-05-27 14:20:56', '2024-05-27 16:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `hashtags` varchar(255) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `community_id`, `profile_id`, `caption`, `hashtags`, `status`, `created_at`, `updated_at`) VALUES
(127, NULL, '150', 'posting', NULL, NULL, '2024-05-18 20:31:42', '2024-05-18 20:31:42'),
(128, NULL, '155', 'hello', NULL, NULL, '2024-05-22 08:26:19', '2024-05-22 08:26:19'),
(129, NULL, '155', 'hey', NULL, NULL, '2024-05-22 08:33:05', '2024-05-22 08:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `post_hashtags`
--

CREATE TABLE `post_hashtags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` varchar(255) DEFAULT NULL,
  `feed_id` varchar(255) DEFAULT NULL,
  `comunity_id` varchar(255) DEFAULT NULL,
  `hashtag_id` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_hashtags`
--

INSERT INTO `post_hashtags` (`id`, `post_id`, `feed_id`, `comunity_id`, `hashtag_id`, `profile_id`, `created_at`, `updated_at`) VALUES
(65, '127', '12', NULL, '24', '150', '2024-05-18 20:31:42', '2024-05-18 20:31:42'),
(66, '127', '11', NULL, '22', '150', '2024-05-18 20:31:42', '2024-05-18 20:31:42'),
(67, '128', '11', NULL, '22', '155', '2024-05-22 08:26:19', '2024-05-22 08:26:19'),
(68, '128', '12', NULL, '23', '155', '2024-05-22 08:26:19', '2024-05-22 08:26:19'),
(69, '129', '12', NULL, '25', '155', '2024-05-22 08:33:05', '2024-05-22 08:33:05'),
(70, '129', '12', NULL, '24', '155', '2024-05-22 08:33:05', '2024-05-22 08:33:05'),
(71, '129', '12', NULL, '23', '155', '2024-05-22 08:33:05', '2024-05-22 08:33:05'),
(72, '129', '11', NULL, '22', '155', '2024-05-22 08:33:05', '2024-05-22 08:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `name`, `created_at`, `updated_at`) VALUES
(79, '127', 'uploads/post/dd86b7dc0b5ddb10ea4dd8681f28195bHatch-social.jpg', '2024-05-18 20:31:42', '2024-05-18 20:31:42'),
(80, '129', 'uploads/post/3131d297feeb32446393292bda1da4bcHatch-social.jpg', '2024-05-22 08:33:05', '2024-05-22 08:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_videos`
--

CREATE TABLE `post_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `passcode` varchar(250) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `privacy` varchar(255) NOT NULL,
  `qa_status` varchar(250) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_logged_in` varchar(50) DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `passcode`, `name`, `description`, `type`, `privacy`, `qa_status`, `photo`, `is_logged_in`, `created_at`, `updated_at`) VALUES
(143, '67', NULL, 't1', NULL, 'Learning & Exploring', 'public', NULL, 'uploads/user/profiles/57f50461c250344dda1be50e86e91f58.jpg', 'false', '2024-05-17 15:53:09', '2024-05-17 15:53:09'),
(144, '67', NULL, 'user Profile T', NULL, 'Learning & Exploring', 'public', NULL, 'uploads/user/profiles/e296b02b5ffcfeec029d941ea02861b2.jpg', 'false', '2024-05-17 17:38:12', '2024-05-17 17:38:12'),
(145, '68', NULL, 'Mo', NULL, 'Business & Enterpreneurship', 'public', NULL, 'uploads/user/profiles/50fb5d1a2e8d524ff9e2fb5ae85b399b.jpg', 'false', '2024-05-17 19:26:50', '2024-05-17 19:26:50'),
(146, '68', NULL, 'Mo Roberts', NULL, 'Business & Enterpreneurship', 'public', NULL, 'uploads/user/profiles/ea6ebf4cbee2b22774d52850b63c8f5d.jpg', 'false', '2024-05-17 19:28:36', '2024-05-17 19:28:36'),
(147, '69', NULL, 'carlos', NULL, 'Community & Connection', 'public', NULL, 'uploads/user/profiles/3e80afe444317367fea0a1dbf462462f.jpg', 'false', '2024-05-17 19:35:31', '2024-05-17 19:35:31'),
(148, '69', NULL, 'hi', NULL, 'Community & Connection', 'public', NULL, 'uploads/user/profiles/3cce2e9f059f1e36449b26fa46768dd1.jpg', 'false', '2024-05-17 19:44:48', '2024-05-17 19:44:48'),
(149, '70', NULL, 'Angie', 'description is still insane why dobi have to typeball of this', 'Business & Enterpreneurship', 'public', NULL, 'uploads/user/profiles/db7bd85d8962e61ad4554d69ab3dfc83.jpg', 'false', '2024-05-18 18:51:32', '2024-05-18 18:51:32'),
(150, '71', NULL, 'angela2', 'kdjjdndnndhejdjsknfndjsfbksnddjje', 'Community & Connection', 'public', NULL, 'uploads/user/profiles/db01aea8d87014cafdb4f1cd626d99e2.jpg', 'false', '2024-05-18 18:58:32', '2024-05-18 18:58:32'),
(151, '71', 'null', 'Angie3', 'jsndnjdjdjndjsjjdbdbdkdndbdnjdjjrjejshh', 'Business & Enterpreneurship', 'private', NULL, 'uploads/user/profiles/b963b28c8c43a7be05cf6e479a4a0798.jpg', 'false', '2024-05-18 19:12:29', '2024-05-18 19:22:57'),
(152, '71', '1234', 'angie private', 'jajdjrjdjskdjhdjekskjdjeksjhdjdjshe', 'Community & Connection', 'private', NULL, 'uploads/user/profiles/492fd034a2609a7514450401c64fd7a9.jpg', 'true', '2024-05-18 19:57:43', '2024-05-18 19:59:42'),
(153, '71', '1234', 'private 2 profile', 'jsjdbsisndbjdnbdkdndjsbdjjdndbdnd', 'Business & Enterpreneurship', 'private', NULL, 'uploads/user/profiles/e0822b193b135da3dfba892202fcfdf5.jpg', 'false', '2024-05-18 20:01:41', '2024-05-18 20:01:41'),
(154, '72', NULL, 'user profile 19 A', NULL, 'Business & Enterpreneurship', 'public', NULL, 'uploads/user/profiles/bfa2a4e87ecca4ad028ffb8223bee707.jpg', 'false', '2024-05-20 14:21:04', '2024-05-20 14:21:04'),
(155, '72', NULL, 'User Profile 19 c', 'gfgfgg', 'Business & Enterpreneurship', 'public', NULL, 'uploads/user/profiles/4b07c7583b77075edff2100eae2aac1c.jpg', 'false', '2024-05-20 15:31:36', '2024-05-24 05:54:02'),
(156, '69', NULL, 'mo1', NULL, 'Learning & Exploring', 'public', NULL, 'uploads/user/profiles/5b763c4669ecd90cc59ed49e83d8bd7c.jpg', 'false', '2024-05-20 15:59:11', '2024-05-20 15:59:11'),
(157, '73', NULL, 'my basic profile', 'this rockshfhdhrhherydhfhfhrhfhrfhrhrhfh', 'Learning & Exploring', 'public', NULL, 'uploads/user/profiles/81078b86cc308e3090ff04546ba22a06.jpg', 'false', '2024-05-20 16:50:10', '2024-05-20 16:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `profile_interests`
--

CREATE TABLE `profile_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_interests`
--

INSERT INTO `profile_interests` (`id`, `interest_id`, `profile_id`, `created_at`, `updated_at`) VALUES
(394, '83', '143', '2024-05-17 15:53:18', '2024-05-17 15:53:18'),
(395, '79', '143', '2024-05-17 15:53:18', '2024-05-17 15:53:18'),
(396, '80', '143', '2024-05-17 15:53:18', '2024-05-17 15:53:18'),
(397, '81', '143', '2024-05-17 15:53:18', '2024-05-17 15:53:18'),
(398, '82', '144', '2024-05-17 17:38:47', '2024-05-17 17:38:47'),
(399, '92', '144', '2024-05-17 17:38:47', '2024-05-17 17:38:47'),
(400, '93', '144', '2024-05-17 17:38:47', '2024-05-17 17:38:47'),
(401, '95', '144', '2024-05-17 17:38:47', '2024-05-17 17:38:47'),
(402, '79', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(403, '80', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(404, '92', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(405, '93', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(406, '135', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(407, '137', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(408, '57', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(409, '58', '147', '2024-05-17 19:36:53', '2024-05-17 19:36:53'),
(410, '81', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(411, '80', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(412, '82', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(413, '86', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(414, '84', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(415, '139', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(416, '138', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(417, '142', '149', '2024-05-18 18:53:56', '2024-05-18 18:53:56'),
(418, '79', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(419, '80', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(420, '83', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(421, '139', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(422, '138', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(423, '135', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(424, '94', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(425, '96', '150', '2024-05-18 18:59:35', '2024-05-18 18:59:35'),
(426, '80', '151', '2024-05-18 19:12:34', '2024-05-18 19:12:34'),
(427, '79', '151', '2024-05-18 19:12:34', '2024-05-18 19:12:34'),
(428, '83', '151', '2024-05-18 19:12:34', '2024-05-18 19:12:34'),
(429, '79', '152', '2024-05-18 19:57:58', '2024-05-18 19:57:58'),
(430, '83', '152', '2024-05-18 19:57:58', '2024-05-18 19:57:58'),
(431, '81', '152', '2024-05-18 19:57:58', '2024-05-18 19:57:58'),
(432, '138', '152', '2024-05-18 19:57:58', '2024-05-18 19:57:58'),
(433, '139', '152', '2024-05-18 19:57:58', '2024-05-18 19:57:58'),
(434, '142', '152', '2024-05-18 19:57:58', '2024-05-18 19:57:58'),
(435, '81', '153', '2024-05-18 20:02:07', '2024-05-18 20:02:07'),
(436, '83', '153', '2024-05-18 20:02:07', '2024-05-18 20:02:07'),
(437, '80', '153', '2024-05-18 20:02:07', '2024-05-18 20:02:07'),
(438, '99', '153', '2024-05-18 20:02:07', '2024-05-18 20:02:07'),
(439, '133', '153', '2024-05-18 20:02:07', '2024-05-18 20:02:07'),
(440, '79', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(441, '82', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(442, '84', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(443, '81', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(444, '92', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(445, '95', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(446, '98', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(447, '93', '154', '2024-05-20 14:21:35', '2024-05-20 14:21:35'),
(448, '81', '155', '2024-05-20 15:32:09', '2024-05-20 15:32:09'),
(449, '80', '155', '2024-05-20 15:32:09', '2024-05-20 15:32:09'),
(450, '79', '155', '2024-05-20 15:32:09', '2024-05-20 15:32:09'),
(451, '82', '155', '2024-05-20 15:32:09', '2024-05-20 15:32:09'),
(452, '57', '155', '2024-05-20 15:32:09', '2024-05-20 15:32:09'),
(453, '59', '155', '2024-05-20 15:32:09', '2024-05-20 15:32:09'),
(454, '80', '157', '2024-05-20 16:51:47', '2024-05-20 16:51:47'),
(455, '94', '157', '2024-05-20 16:51:47', '2024-05-20 16:51:47'),
(456, '61', '157', '2024-05-20 16:51:47', '2024-05-20 16:51:47'),
(457, '89', '157', '2024-05-20 16:51:47', '2024-05-20 16:51:47'),
(458, '151', '157', '2024-05-20 16:51:47', '2024-05-20 16:51:47'),
(459, '104', '157', '2024-05-20 16:51:47', '2024-05-20 16:51:47'),
(460, '91', '157', '2024-05-20 16:51:47', '2024-05-20 16:51:47'),
(461, '79', '148', '2024-05-24 16:35:06', '2024-05-24 16:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `reset_code_passwords`
--

CREATE TABLE `reset_code_passwords` (
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) NOT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `current_role` varchar(255) DEFAULT NULL,
  `email_code` varchar(250) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `role` varchar(250) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `photo`, `email_verified_at`, `password`, `current_role`, `email_code`, `status`, `role`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(67, 'test', 'user', 'testuser@gmail.com', NULL, NULL, '2024-05-17 15:49:02', '$2y$10$4iFjjHHFox9tCwcYQ9nHoOWGWQB1Qi7O5YbM4ktIjiwTb9ZYj7P6q', NULL, NULL, 'active', NULL, NULL, '2024-05-17 15:49:02', '2024-05-17 15:49:02', NULL, NULL, NULL, NULL),
(68, 'Mo', 'Roberts', 'mo@gmail.com', NULL, NULL, '2024-05-17 19:26:19', '$2y$10$P1PtixtCWdcpubwUUhgTZuKk/KVVtkWOdLSgzlPsmjTwDyesOP8fm', NULL, NULL, 'active', NULL, NULL, '2024-05-17 19:26:19', '2024-05-17 19:26:19', NULL, NULL, NULL, NULL),
(69, 'carlos', 'navarro', 'carlos@gmail.com', NULL, NULL, '2024-05-17 19:34:39', '$2y$10$byIlSzJQt/64tsh5.krinexbFnqbGpcROQGOnwWKjuOaw4MfDuILG', NULL, NULL, 'active', NULL, NULL, '2024-05-17 19:34:39', '2024-05-17 19:34:39', NULL, NULL, NULL, NULL),
(70, 'Angela', 'Giliotti', 'agiliotti@gmail.com', NULL, NULL, '2024-05-18 18:49:19', '$2y$10$G37upHX3GKjj55NrdAHLY.Oo0MnP..Yq7NPpViq2VJblKJOcgPNVO', NULL, NULL, 'active', NULL, NULL, '2024-05-18 18:49:19', '2024-05-18 18:49:19', NULL, NULL, NULL, NULL),
(71, 'angela', 'giliotti', 'angie@lecce28.com', NULL, NULL, '2024-05-18 18:57:24', '$2y$10$8jaHmejihhG3rTKnUDiAl.TjX/8WVjMqC0CoKepp8lh0xJz/aIYrK', NULL, NULL, 'active', NULL, NULL, '2024-05-18 18:57:24', '2024-05-18 18:57:24', NULL, NULL, NULL, NULL),
(72, 'User D', '123', 'user19@gmail.com', NULL, NULL, '2024-05-20 14:20:00', '$2y$10$Mi9vYHi9I0pKnTi8FYyEGuBijh2XpxHclodtY0o7gd7EDVvBhDoEi', NULL, NULL, 'active', NULL, NULL, '2024-05-20 14:20:00', '2024-05-20 14:20:00', NULL, NULL, NULL, NULL),
(73, 'david', 'fose', 'dave@hatch.social', NULL, NULL, '2024-05-20 16:42:54', '$2y$10$h8pCCycwIrYbOCxzZ6KI0eu/4o8rBAHKsfW.3bReoO/WXQw82Ayt.', NULL, NULL, 'active', NULL, NULL, '2024-05-20 16:42:54', '2024-05-20 16:42:54', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_infos`
--
ALTER TABLE `admin_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bubbles`
--
ALTER TABLE `bubbles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bubble_teams`
--
ALTER TABLE `bubble_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_interests`
--
ALTER TABLE `community_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_keywords`
--
ALTER TABLE `community_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_teams`
--
ALTER TABLE `community_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_images`
--
ALTER TABLE `event_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_joins`
--
ALTER TABLE `event_joins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_follows`
--
ALTER TABLE `feed_follows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_interests`
--
ALTER TABLE `feed_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_hashtags`
--
ALTER TABLE `post_hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_videos`
--
ALTER TABLE `post_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_interests`
--
ALTER TABLE `profile_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_code_passwords`
--
ALTER TABLE `reset_code_passwords`
  ADD KEY `reset_code_passwords_email_index` (`email`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_infos`
--
ALTER TABLE `admin_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bubbles`
--
ALTER TABLE `bubbles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bubble_teams`
--
ALTER TABLE `bubble_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `community_interests`
--
ALTER TABLE `community_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `community_keywords`
--
ALTER TABLE `community_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `community_teams`
--
ALTER TABLE `community_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_joins`
--
ALTER TABLE `event_joins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `feed_follows`
--
ALTER TABLE `feed_follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_interests`
--
ALTER TABLE `feed_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `post_hashtags`
--
ALTER TABLE `post_hashtags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `post_videos`
--
ALTER TABLE `post_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `profile_interests`
--
ALTER TABLE `profile_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
