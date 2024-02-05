-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2024 at 07:20 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hatch_social`
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`id`, `profile_id`, `title`, `approval_post`, `membership_cost`, `privacy`, `admin_create_content`, `moderator_create_content`, `member_create_content`, `image`, `created_at`, `updated_at`) VALUES
(1, '12', 'sgahsjrh', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/2064b65c009dbfba67abe2b14d7bc2d3.jpg', '2024-01-25 01:57:44', '2024-01-25 01:57:44'),
(2, '13', 'myBubble', 'No', 'No', 'No', 'No', 'No', 'No', 'uploads/community/904b1dd9584a2a8cbe32a724f18f8cbd.jpg', '2024-01-25 13:36:24', '2024-01-25 13:36:24'),
(3, '13', 'userP', 'yes', 'No', 'yes', 'No', 'Yes', 'No', 'uploads/community/00f6a204e4f1a363dd710798ff201871.jpg', '2024-01-25 13:48:26', '2024-01-25 13:48:26'),
(4, '13', 'userP', 'yes', 'No', 'yes', 'No', 'Yes', 'No', 'uploads/community/4657476e3d7ca5ee29d772a573331d0d.jpg', '2024-01-25 13:48:28', '2024-01-25 13:48:28'),
(5, '14', 'pruser', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/1a6f3e71a974222c06a9af0c956e858e.jpg', '2024-01-25 13:57:29', '2024-01-25 13:57:29'),
(6, '14', 'newbubble', 'yes', 'No', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/f3a9d9ec7dfe0fb8bef6115c4db32c54.jpg', '2024-01-25 14:07:17', '2024-01-25 14:07:17'),
(7, '15', 'mebubble1', 'No', 'No', 'No', 'No', 'No', 'No', 'uploads/community/1c66f41d4836b4a42fd557b46b3b7246.jpg', '2024-01-25 14:26:30', '2024-01-25 14:26:30'),
(8, '15', 'mebubble2', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/b2b8f836946426abb29c966aeb1fbe03.jpg', '2024-01-25 14:28:19', '2024-01-25 14:28:19'),
(9, '15', 'mebubble2', 'yes', 'yes', 'yes', 'Yes', 'Yes', 'Yes', 'uploads/community/99884b8302340c6d4758febbdf6e5be6.jpg', '2024-01-25 14:28:20', '2024-01-25 14:28:20'),
(10, '18', 'bubbble 4', 'yes', 'No', 'yes', 'No', 'No', 'No', 'uploads/community/2abd3b939de5e3c9f80997c3c9332329.jpg', '2024-01-25 14:42:55', '2024-01-25 14:42:55'),
(11, '15', 'privatebubble', 'yes', 'No', 'yes', 'Yes', 'Yes', 'No', 'uploads/community/caefbdae89c143fa49976c68316add32.jpg', '2024-01-25 15:28:06', '2024-01-25 15:28:06'),
(12, '18', 'testbubble', 'yes', 'No', 'yes', 'No', 'Yes', 'No', 'uploads/community/2846130da8cf080f21bc61ab84babbf3.jpg', '2024-01-25 16:24:34', '2024-01-25 16:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `community_interests`
--

CREATE TABLE `community_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `interest_id` varchar(255) DEFAULT NULL,
  `community_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_interests`
--

INSERT INTO `community_interests` (`id`, `profile_id`, `interest_id`, `community_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2', '1', '2023-12-29 19:51:05', '2023-12-29 19:51:05'),
(2, 1, '1', '1', '2023-12-29 19:51:05', '2023-12-29 19:51:05'),
(3, 1, '3', '1', '2023-12-29 19:51:05', '2023-12-29 19:51:05'),
(4, 2, '1', '2', '2023-12-29 19:51:14', '2023-12-29 19:51:14'),
(5, 2, '2', '2', '2023-12-29 19:51:14', '2023-12-29 19:51:14'),
(6, 1, '2', '3', '2023-12-29 20:15:09', '2023-12-29 20:15:09'),
(7, 1, '1', '3', '2023-12-29 20:15:09', '2023-12-29 20:15:09'),
(8, 1, '2', '4', '2023-12-29 21:17:23', '2023-12-29 21:17:23'),
(9, 1, '1', '4', '2023-12-29 21:17:23', '2023-12-29 21:17:23'),
(10, 5, '1', '5', '2023-12-29 22:51:05', '2023-12-29 22:51:05');

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
(1, '22', 'cat', '3', '2024-01-03 07:47:00', '2024-01-03 07:47:00'),
(2, '22', 'dog', '3', '2024-01-03 07:47:00', '2024-01-03 07:47:00'),
(3, '23', 'music', '3', '2024-01-03 08:12:18', '2024-01-03 08:12:18'),
(4, '23', 'travel', '3', '2024-01-03 08:12:18', '2024-01-03 08:12:18'),
(5, '23', 'food', '3', '2024-01-03 08:12:18', '2024-01-03 08:12:18'),
(6, '6', 'cat', '3', '2024-01-17 13:34:26', '2024-01-17 13:34:26'),
(7, '6', 'dog', '3', '2024-01-17 13:34:26', '2024-01-17 13:34:26'),
(8, '7', 'f', '6', '2024-01-17 13:34:36', '2024-01-17 13:34:36'),
(9, '7', 'fs', '6', '2024-01-17 13:34:36', '2024-01-17 13:34:36'),
(10, '7', 'fdds', '6', '2024-01-17 13:34:36', '2024-01-17 13:34:36'),
(11, '7', 'ffs', '6', '2024-01-17 13:34:36', '2024-01-17 13:34:36'),
(12, '8', 'f', '6', '2024-01-17 13:36:36', '2024-01-17 13:36:36'),
(13, '8', 'fs', '6', '2024-01-17 13:36:36', '2024-01-17 13:36:36'),
(14, '8', 'fdds', '6', '2024-01-17 13:36:36', '2024-01-17 13:36:36'),
(15, '8', 'ffs', '6', '2024-01-17 13:36:37', '2024-01-17 13:36:37'),
(16, '9', 'f', '6', '2024-01-17 13:38:50', '2024-01-17 13:38:50'),
(17, '9', 'fs', '6', '2024-01-17 13:38:50', '2024-01-17 13:38:50'),
(18, '9', 'fdds', '6', '2024-01-17 13:38:50', '2024-01-17 13:38:50'),
(19, '9', 'ffs', '6', '2024-01-17 13:38:50', '2024-01-17 13:38:50'),
(20, '9', 'car 1', '6', '2024-01-17 13:38:50', '2024-01-17 13:38:50'),
(21, '10', 'b1', '6', '2024-01-17 15:51:26', '2024-01-17 15:51:26'),
(22, '10', 'b2', '6', '2024-01-17 15:51:26', '2024-01-17 15:51:26'),
(23, '11', 'food', '8', '2024-01-17 19:39:40', '2024-01-17 19:39:40'),
(24, '11', 'travel', '8', '2024-01-17 19:39:41', '2024-01-17 19:39:41'),
(25, '11', 'music', '8', '2024-01-17 19:39:41', '2024-01-17 19:39:41'),
(26, '12', 'food', '8', '2024-01-17 20:52:54', '2024-01-17 20:52:54'),
(27, '12', 'music', '8', '2024-01-17 20:52:54', '2024-01-17 20:52:54'),
(28, '12', 'fashion', '8', '2024-01-17 20:52:54', '2024-01-17 20:52:54'),
(29, '13', 'food', '6', '2024-01-18 13:02:26', '2024-01-18 13:02:26'),
(30, '13', 'travel', '6', '2024-01-18 13:02:26', '2024-01-18 13:02:26'),
(31, '13', 'music', '6', '2024-01-18 13:02:26', '2024-01-18 13:02:26'),
(32, '13', 'fasfion', '6', '2024-01-18 13:02:26', '2024-01-18 13:02:26'),
(33, '14', 'food', '6', '2024-01-18 15:48:38', '2024-01-18 15:48:38'),
(34, '14', 'music', '6', '2024-01-18 15:48:38', '2024-01-18 15:48:38'),
(35, '15', 'fashion', '6', '2024-01-18 18:02:04', '2024-01-18 18:02:04'),
(36, '15', 'food', '6', '2024-01-18 18:02:04', '2024-01-18 18:02:04'),
(37, '16', 'coding', '6', '2024-01-18 19:29:36', '2024-01-18 19:29:36'),
(38, '16', 'smile', '6', '2024-01-18 19:29:36', '2024-01-18 19:29:36'),
(39, '16', 'food', '6', '2024-01-18 19:29:36', '2024-01-18 19:29:36'),
(40, '16', 'simplicity', '6', '2024-01-18 19:29:36', '2024-01-18 19:29:36'),
(41, '17', 'Dhvd', '5', '2024-01-18 23:33:54', '2024-01-18 23:33:54'),
(42, '17', 'Xhxx', '5', '2024-01-18 23:33:54', '2024-01-18 23:33:54'),
(43, '18', 'dsad asdasda', '8', '2024-01-19 00:16:19', '2024-01-19 00:16:19'),
(44, '19', 'Ffd', '11', '2024-01-23 00:35:11', '2024-01-23 00:35:11'),
(45, '20', 'Gcvxc', '11', '2024-01-25 00:45:58', '2024-01-25 00:45:58'),
(46, '1', 'Sjavfn4j', '12', '2024-01-25 01:57:44', '2024-01-25 01:57:44'),
(47, '2', 'food', '13', '2024-01-25 13:36:24', '2024-01-25 13:36:24'),
(48, '2', 'travel', '13', '2024-01-25 13:36:24', '2024-01-25 13:36:24'),
(49, '2', 'photography', '13', '2024-01-25 13:36:24', '2024-01-25 13:36:24'),
(50, '3', 'fashion', '13', '2024-01-25 13:48:26', '2024-01-25 13:48:26'),
(51, '3', 'food', '13', '2024-01-25 13:48:26', '2024-01-25 13:48:26'),
(52, '3', 'travel', '13', '2024-01-25 13:48:26', '2024-01-25 13:48:26'),
(53, '4', 'fashion', '13', '2024-01-25 13:48:28', '2024-01-25 13:48:28'),
(54, '4', 'food', '13', '2024-01-25 13:48:28', '2024-01-25 13:48:28'),
(55, '4', 'travel', '13', '2024-01-25 13:48:28', '2024-01-25 13:48:28'),
(56, '5', 'fashion', '14', '2024-01-25 13:57:29', '2024-01-25 13:57:29'),
(57, '5', 'food', '14', '2024-01-25 13:57:29', '2024-01-25 13:57:29'),
(58, '5', 'travel', '14', '2024-01-25 13:57:29', '2024-01-25 13:57:29'),
(59, '5', 'smile', '14', '2024-01-25 13:57:29', '2024-01-25 13:57:29'),
(60, '6', 'fashion', '14', '2024-01-25 14:07:18', '2024-01-25 14:07:18'),
(61, '6', 'food', '14', '2024-01-25 14:07:18', '2024-01-25 14:07:18'),
(62, '6', 'travel', '14', '2024-01-25 14:07:18', '2024-01-25 14:07:18'),
(63, '7', 'fashion', '15', '2024-01-25 14:26:30', '2024-01-25 14:26:30'),
(64, '7', 'food', '15', '2024-01-25 14:26:30', '2024-01-25 14:26:30'),
(65, '7', 'travel', '15', '2024-01-25 14:26:30', '2024-01-25 14:26:30'),
(66, '8', 'fashion', '15', '2024-01-25 14:28:19', '2024-01-25 14:28:19'),
(67, '8', 'food', '15', '2024-01-25 14:28:19', '2024-01-25 14:28:19'),
(68, '8', 'travel', '15', '2024-01-25 14:28:19', '2024-01-25 14:28:19'),
(69, '9', 'fashion', '15', '2024-01-25 14:28:20', '2024-01-25 14:28:20'),
(70, '9', 'food', '15', '2024-01-25 14:28:21', '2024-01-25 14:28:21'),
(71, '9', 'travel', '15', '2024-01-25 14:28:21', '2024-01-25 14:28:21'),
(72, '10', 'fashion', '18', '2024-01-25 14:42:55', '2024-01-25 14:42:55'),
(73, '10', 'food', '18', '2024-01-25 14:42:56', '2024-01-25 14:42:56'),
(74, '10', 'style', '18', '2024-01-25 14:42:56', '2024-01-25 14:42:56'),
(75, '11', 'fashion', '15', '2024-01-25 15:28:06', '2024-01-25 15:28:06'),
(76, '11', 'travel', '15', '2024-01-25 15:28:06', '2024-01-25 15:28:06'),
(77, '11', 'food', '15', '2024-01-25 15:28:06', '2024-01-25 15:28:06'),
(78, '12', 'Food', '18', '2024-01-25 16:24:34', '2024-01-25 16:24:34'),
(79, '12', 'Travel', '18', '2024-01-25 16:24:34', '2024-01-25 16:24:34'),
(80, '12', 'Fashion', '18', '2024-01-25 16:24:34', '2024-01-25 16:24:34');

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
(1, '1', '12', NULL, 'owner', 'follow', '2024-01-25 01:57:44', '2024-01-25 01:57:44'),
(6, '5', '14', NULL, 'owner', 'follow', '2024-01-25 13:57:30', '2024-01-25 13:57:30'),
(7, '6', '14', NULL, 'owner', 'follow', '2024-01-25 14:07:18', '2024-01-25 14:07:18'),
(8, '7', '15', NULL, 'owner', 'follow', '2024-01-25 14:26:30', '2024-01-25 14:26:30'),
(11, '2', '16', NULL, 'member', 'request', '2024-01-25 14:31:48', '2024-01-25 14:31:48'),
(12, '1', '16', NULL, 'member', 'follow', '2024-01-25 14:31:48', '2024-01-25 14:31:48'),
(13, '4', '16', NULL, 'member', 'follow', '2024-01-25 14:31:48', '2024-01-25 14:31:48'),
(14, '3', '16', NULL, 'member', 'follow', '2024-01-25 14:31:48', '2024-01-25 14:31:48'),
(15, '3', '17', NULL, 'member', 'follow', '2024-01-25 14:34:58', '2024-01-25 14:34:58'),
(16, '1', '17', NULL, 'member', 'follow', '2024-01-25 14:34:58', '2024-01-25 14:34:58'),
(17, '4', '17', NULL, 'member', 'follow', '2024-01-25 14:34:58', '2024-01-25 14:34:58'),
(28, '10', '15', NULL, 'member', 'follow', '2024-01-25 15:23:34', '2024-01-25 15:23:34'),
(29, '11', '15', NULL, 'owner', 'follow', '2024-01-25 15:28:06', '2024-01-25 15:28:06'),
(31, '9', '18', NULL, 'member', 'follow', '2024-01-25 16:23:12', '2024-01-25 16:23:12'),
(32, '12', '18', NULL, 'owner', 'follow', '2024-01-25 16:24:34', '2024-01-25 16:24:34'),
(33, '12', '15', NULL, 'member', 'follow', '2024-01-25 16:27:08', '2024-01-25 16:35:27');

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
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sports', NULL, '2023-12-30 00:51:08', '2023-12-30 00:51:08'),
(2, 'Music', NULL, '2023-12-30 00:51:08', '2023-12-30 00:51:08'),
(3, 'Technology', NULL, '2023-12-30 00:48:38', '2023-12-30 00:48:38'),
(4, 'Arts and Crafts', NULL, '2023-12-30 00:48:38', '2023-12-30 00:48:38'),
(5, 'Travel', NULL, '2023-12-30 00:49:08', '2023-12-30 00:49:08'),
(6, 'Food', NULL, '2023-12-30 00:49:08', '2023-12-30 00:49:08'),
(7, 'Gaming', NULL, '2023-12-30 00:49:31', '2023-12-30 00:49:31'),
(8, 'Pets', NULL, '2023-12-30 00:49:31', '2023-12-30 00:49:31'),
(9, 'Learning', NULL, '2023-12-30 00:49:58', '2023-12-30 00:49:58'),
(10, 'Books', NULL, '2023-12-30 00:49:58', '2023-12-30 00:49:58'),
(11, 'Fashion', NULL, '2023-12-30 00:50:24', '2023-12-30 00:50:24'),
(12, 'Health', NULL, '2023-12-30 00:50:24', '2023-12-30 00:50:24'),
(13, 'Photography', NULL, '2023-12-30 00:50:45', '2023-12-30 00:50:45'),
(14, 'Movies and entertainment', NULL, '2023-12-30 00:50:45', '2023-12-30 00:50:45'),
(15, 'Science and nature', NULL, '2023-12-30 00:51:08', '2023-12-30 00:51:08'),
(16, 'Parenting', NULL, '2023-12-30 00:51:08', '2023-12-30 00:51:08');

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
(33, '2023_12_28_141030_create_community_interests_table', 14);

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
(29, 'App\\Models\\User', 13, 'hatch_social', '854aebb30f067cc6589da58494e5ddbf6c1cdad0016011baf5767973258a8223', '[\"*\"]', '2024-01-25 16:35:54', NULL, '2024-01-25 16:22:59', '2024-01-25 16:35:54');

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
(1, 2, '13', 'gdjgfhgdhfgjhsdgfjhdfhjdfgjhdfjhdjfg', '[\"jdfkjldkfj\",\"#newPost\"]', 'active', '2024-01-25 13:37:32', '2024-01-25 13:37:32'),
(2, 7, '15', 'bkhjfbdbsd', '[\"#jhdjfhjkf\",\"gfhhdf\"]', 'active', '2024-01-25 15:26:37', '2024-01-25 15:26:37'),
(3, 12, '15', 'Something', '[\"hash\"]', 'pending', '2024-01-25 16:32:54', '2024-01-25 16:32:54'),
(4, 12, '18', '1st dyjdyidtidgjdjgdyidigd', '[\"#dgkdgkdgj\",\"#dk HD jgd\"]', 'pending', '2024-01-25 16:34:04', '2024-01-25 16:34:04');

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
(1, '1', 'https://stoic-herschel.23-83-37-162.plesk.page/uploads/post/8814117b113a89b784a1ea38fd98dc85Hatch-social.jpg', '2024-01-25 13:37:32', '2024-01-25 13:37:32'),
(2, '2', 'https://stoic-herschel.23-83-37-162.plesk.page/uploads/post/fbdf08037b96110f096ebb9fefd8eca7Hatch-social.jpg', '2024-01-25 15:26:37', '2024-01-25 15:26:37'),
(3, '4', 'https://stoic-herschel.23-83-37-162.plesk.page/uploads/post/0d4878bc3247adec8bb8c51cf647cbf6Hatch-social.jpg', '2024-01-25 16:34:04', '2024-01-25 16:34:04');

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

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `profile_id`, `post_id`, `created_at`, `updated_at`) VALUES
(3, '13', '1', '2024-01-25 13:37:45', '2024-01-25 13:37:45');

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
(1, '1', NULL, 'tester11', 'sadfjalkfhksj fskdfjhskjdfhkjhfkjsdhfksjdhfksjdhf sdkfhksdjfhksjdfhjksdhfksjdfhksjdhfksjdhfsdfhksdhfksjdfhksdjfhksdjhfkjsdhfkjsdfhjk', 'Community & Connection', 'public', NULL, 'uploads/user/profiles/1b4a12dbfdf4fa502f463a78202631b9.jpg', 'false', '2023-12-29 19:47:19', '2023-12-29 19:47:19'),
(2, '2', NULL, 'newprofile', 'jgkj sdjkfgjs djfg sjdgk js djf gjs djf sjd f sjd fjs dgjf jsd s dg fjs gdjg fjsg djfg jsdgjfhsdjf jsd j j gdjj j j jg g ksd jfgsjdfjsdf js dfjsdg', 'Business & Entrepreneurship', 'public', NULL, 'uploads/user/profiles/435a48ae10b0689af9a7b78c159703d4.jpg', 'false', '2023-12-29 19:48:40', '2023-12-29 19:48:40'),
(3, '1', '1211', 'tester12', 'dfsdlfkj flskdfjlskdfj lsdkfjlksfj flskdfjlskdjflk fslkdfjlskdfjksdjfljsdjflsjflsdj', 'Learning & Exploring', 'private', NULL, 'uploads/user/profiles/0a72a9f27e82c0125ae5c671445c92f4.jpg', 'true', '2023-12-29 19:57:28', '2023-12-29 20:00:12'),
(4, '2', NULL, 'new2', 'hdakj hkfjhksdjah kjh ksdh kf hksjdh fjksdhk sdh khskdh kfjhskdj fshdfjkhskdjhksdhkhsdkjhsdjhjkhsdkjhskdhfkjshdkfjhskdjhfkjsdhkfjhskdj hkjs dhj skd  s', 'Select Profile Type', 'public', NULL, 'uploads/user/profiles/904db42efb12cb077005bc26b1f88147.jpg', 'false', '2023-12-29 19:58:36', '2023-12-29 19:58:36'),
(5, '3', NULL, 'Austin', 'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem', 'Business & Entrepreneurship', 'public', NULL, 'uploads/user/profiles/190e11c89483fd8435b30e6dfefd3a34.jpg', 'false', '2023-12-29 22:47:43', '2023-12-29 22:47:43'),
(6, '4', '1234', 'pro1', '12345678f gsdfg  gsgsgsgs asdasd asdas  das   as d asas', 'Learning & Exploring', 'private', NULL, 'uploads/user/profiles/d871d67f21e60dd7c65c74a39b9068ca.jpg', 'true', '2024-01-16 17:40:38', '2024-01-17 13:42:59'),
(7, '4', '1234', 'pro2', 'hi i am you bhai bbb b  bb b b b b b b b b b b b b b b b b b   gg g g g   hh  jj k  k  uyu y y t  ff f f', 'Learning & Exploring', 'private', NULL, 'uploads/user/profiles/1de99d775ced621a6d2d1337e7a6f41d.jpg', 'false', '2024-01-17 13:44:11', '2024-01-17 13:44:11'),
(8, '6', '1234', 'id2pro1', 'cfgf df fd hfdd g df gdfgxdfg d gdf gsgsd gsd dg gdsg a dgs g gd g gs gsgdfg df gdf gdfg dfhdfh dfh dfh dfh dfhdf hd hdh dfh h fxhxfhxdf', 'Learning & Exploring', 'private', NULL, 'uploads/user/profiles/ec0d6cec2fbebc9eda483ef00703d22a.jpg', 'true', '2024-01-17 13:49:27', '2024-01-17 19:37:13'),
(9, '7', NULL, 'my', 'gudgashgdj hdgj gsdg ajshgdja sj jajsdgj dgjsjdgsjdh j dj dj jsh djsgdh sjh jshd js djs dj sjdjasdg jasdgjs dj sdjsjd jsdg jgsdjhg', 'Business & Entrepreneurship', 'public', NULL, 'uploads/user/profiles/a45ab13a65256592072089f6209bafe9.jpg', 'false', '2024-01-17 15:09:45', '2024-01-17 15:09:45'),
(10, '9', NULL, 'Mo', 'asdfgavdnrixgwntuxndshdheiydjfshretosjfxjczhfsyrwyrdjfdgjskhdjfdjfd', 'Learning & Exploring', 'public', NULL, 'uploads/user/profiles/6f94dee6729295a655801172ee1c30be.jpg', 'false', '2024-01-18 23:58:27', '2024-01-18 23:58:27'),
(11, '10', NULL, 'moo', 'hu by minty next bed2cjvecgv5 rvigx6ex6exficofc8GC7Rx7DC8c8tc8fc', 'Content Creator', 'public', NULL, 'uploads/user/profiles/985d838b21b271514bbf85dcbf8d11b1.jpg', 'false', '2024-01-23 00:23:11', '2024-01-23 00:23:11'),
(12, '11', NULL, 'moh', 'djstidyiowtuowryourowyforuwowufoyadowufowufor279up57uefpdfjlhslrlshlstuohlsfhlsfulfukshfludgohfx%fbdbdhmdj', 'Content Creator', 'public', NULL, 'uploads/user/profiles/1d92a82d90a29ec9ac9027d7cc39dcc0.jpg', 'false', '2024-01-25 01:56:08', '2024-01-25 01:56:08'),
(13, '12', NULL, 'user1', 'fgdfhdf gfhgdfh hjdgfhgdsjf gdfjhgdjf ghdgfjhdgf dfh jdsf b g jg jh j hjhjhgjhgjhgj hgjjjh j jh jjhgjhg', 'Content Creator', 'public', NULL, 'uploads/user/profiles/eecb5e8ab61b5fe33f449f6510a62a92.jpg', 'false', '2024-01-25 13:31:18', '2024-01-25 13:31:18'),
(14, '12', '1211', 'user2', 'hjkfhgjk dfkg hgjhghj f hgdfhgdhf f sdh fs djfg sjdg fjsg dfg jsdgfjsdjfgjsdgfjhsdgfjhgsdjfjsdgjhdjghjdgh j dg j djf jd f   d fhsd dhs dshj hgjhdfg jhsgdfj jsdg fjhg', 'Community & Connection', 'private', NULL, 'uploads/user/profiles/5540853fc81eb0d6a5af3b8bc793dfb3.jpg', 'true', '2024-01-25 13:54:08', '2024-01-25 13:59:57'),
(15, '13', NULL, 'me1', 'hgdfhgjhd f fadghfgh ghafdhg shgffhg ahsfh agfhgsfh f hasfhgf hagsf hgfhgaf ghaf hgfhg ahg jhafsgf hjhjaf', 'Learning & Exploring', 'public', NULL, 'uploads/user/profiles/a2000faab40b7654db2af28bcfb89fc6.jpg', 'false', '2024-01-25 14:24:14', '2024-01-25 14:24:14'),
(16, '13', '1211', 'me2', 'dsjh gvdfhgvjhd fg sajdhg jhsgdsg djhgsdjgajs dghgsdjshgd jhgsjdsg dhg asjd gjsdg jg sjd gj sgdj sj djhsd hjsd s jh djhjhjhjhjhjhjhadgs gdjhsg j jd jg djg s', 'Content Creator', 'private', NULL, 'uploads/user/profiles/16b7c6bb0bbffe3dc9875f4df0f8319f.jpg', 'true', '2024-01-25 14:31:23', '2024-01-25 14:39:08'),
(17, '13', NULL, 'me3', 'jfhjksadh fjdhfkj dkjfk dhfjkhdkjfhhf kh dkfjh kj dhfkjhdjkfhkdjhkjdjkjkjkhdjkhkj jk', 'Content Creator', 'public', NULL, 'uploads/user/profiles/18037e6e2501fd6fa9be8fd467b4d354.jpg', 'false', '2024-01-25 14:34:33', '2024-01-25 14:34:33'),
(18, '13', NULL, 'me4', 'hgsdjhdhhgd ahsg dhgajhs djgasdhgas djagsjdsgd ajdsdg jasgdhasgjasdh asd gajsd jhas d', 'Learning & Exploring', 'public', NULL, 'uploads/user/profiles/1afea5365c243f5cdbde19e64ccc92b5.jpg', 'false', '2024-01-25 14:40:17', '2024-01-25 14:40:17');

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
(1, '1', '1', '2023-12-29 19:49:34', '2023-12-29 19:49:34'),
(2, '2', '1', '2023-12-29 19:49:34', '2023-12-29 19:49:34'),
(3, '1', '2', '2023-12-29 19:49:39', '2023-12-29 19:49:39'),
(4, '2', '2', '2023-12-29 19:49:39', '2023-12-29 19:49:39'),
(5, '2', '3', '2023-12-29 19:58:55', '2023-12-29 19:58:55'),
(6, '1', '3', '2023-12-29 19:58:55', '2023-12-29 19:58:55'),
(7, '3', '3', '2023-12-29 19:58:55', '2023-12-29 19:58:55'),
(8, '6', '4', '2023-12-29 19:59:09', '2023-12-29 19:59:09'),
(9, '5', '4', '2023-12-29 19:59:09', '2023-12-29 19:59:09'),
(10, '2', '4', '2023-12-29 19:59:10', '2023-12-29 19:59:10'),
(11, '1', '4', '2023-12-29 19:59:10', '2023-12-29 19:59:10'),
(12, '1', '5', '2023-12-29 22:47:48', '2023-12-29 22:47:48'),
(13, '2', '5', '2023-12-29 22:47:48', '2023-12-29 22:47:48'),
(14, '5', '6', '2024-01-16 17:40:58', '2024-01-16 17:40:58'),
(15, '1', '6', '2024-01-16 17:40:58', '2024-01-16 17:40:58'),
(16, '6', '6', '2024-01-16 17:40:58', '2024-01-16 17:40:58'),
(17, '6', '7', '2024-01-17 13:44:18', '2024-01-17 13:44:18'),
(18, '5', '7', '2024-01-17 13:44:18', '2024-01-17 13:44:18'),
(19, '5', '8', '2024-01-17 13:49:33', '2024-01-17 13:49:33'),
(20, '3', '8', '2024-01-17 13:49:33', '2024-01-17 13:49:33'),
(21, '5', '9', '2024-01-17 15:09:59', '2024-01-17 15:09:59'),
(22, '2', '9', '2024-01-17 15:09:59', '2024-01-17 15:09:59'),
(23, '6', '9', '2024-01-17 15:09:59', '2024-01-17 15:09:59'),
(24, '1', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(25, '2', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(26, '3', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(27, '6', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(28, '5', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(29, '4', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(30, '7', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(31, '8', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(32, '9', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(33, '10', '10', '2024-01-18 23:58:38', '2024-01-18 23:58:38'),
(34, '12', '10', '2024-01-18 23:58:39', '2024-01-18 23:58:39'),
(35, '11', '10', '2024-01-18 23:58:39', '2024-01-18 23:58:39'),
(36, '1', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(37, '4', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(38, '5', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(39, '2', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(40, '3', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(41, '6', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(42, '9', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(43, '8', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(44, '7', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(45, '11', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(46, '10', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(47, '12', '11', '2024-01-25 00:11:20', '2024-01-25 00:11:20'),
(48, '1', '12', '2024-01-25 01:56:43', '2024-01-25 01:56:43'),
(49, '2', '12', '2024-01-25 01:56:43', '2024-01-25 01:56:43'),
(50, '3', '12', '2024-01-25 01:56:43', '2024-01-25 01:56:43'),
(51, '6', '12', '2024-01-25 01:56:43', '2024-01-25 01:56:43'),
(52, '5', '12', '2024-01-25 01:56:43', '2024-01-25 01:56:43'),
(53, '4', '12', '2024-01-25 01:56:44', '2024-01-25 01:56:44'),
(54, '7', '12', '2024-01-25 01:56:44', '2024-01-25 01:56:44'),
(55, '8', '12', '2024-01-25 01:56:44', '2024-01-25 01:56:44'),
(56, '9', '12', '2024-01-25 01:56:44', '2024-01-25 01:56:44'),
(57, '10', '12', '2024-01-25 01:56:44', '2024-01-25 01:56:44'),
(58, '11', '12', '2024-01-25 01:56:44', '2024-01-25 01:56:44'),
(59, '12', '12', '2024-01-25 01:56:44', '2024-01-25 01:56:44'),
(60, '2', '13', '2024-01-25 13:31:53', '2024-01-25 13:31:53'),
(61, '5', '13', '2024-01-25 13:31:53', '2024-01-25 13:31:53'),
(62, '6', '13', '2024-01-25 13:31:53', '2024-01-25 13:31:53'),
(63, '2', '14', '2024-01-25 13:54:20', '2024-01-25 13:54:20'),
(64, '3', '14', '2024-01-25 13:54:20', '2024-01-25 13:54:20'),
(65, '5', '14', '2024-01-25 13:54:20', '2024-01-25 13:54:20'),
(66, '6', '14', '2024-01-25 13:54:20', '2024-01-25 13:54:20'),
(67, '2', '15', '2024-01-25 14:24:24', '2024-01-25 14:24:24'),
(68, '5', '15', '2024-01-25 14:24:24', '2024-01-25 14:24:24'),
(69, '6', '15', '2024-01-25 14:24:24', '2024-01-25 14:24:24'),
(70, '2', '16', '2024-01-25 14:31:35', '2024-01-25 14:31:35'),
(71, '5', '16', '2024-01-25 14:31:35', '2024-01-25 14:31:35'),
(72, '6', '16', '2024-01-25 14:31:35', '2024-01-25 14:31:35'),
(73, '2', '17', '2024-01-25 14:34:51', '2024-01-25 14:34:51'),
(74, '5', '17', '2024-01-25 14:34:51', '2024-01-25 14:34:51'),
(75, '6', '17', '2024-01-25 14:34:51', '2024-01-25 14:34:51'),
(76, '9', '17', '2024-01-25 14:34:51', '2024-01-25 14:34:51'),
(77, '2', '18', '2024-01-25 14:41:21', '2024-01-25 14:41:21'),
(78, '5', '18', '2024-01-25 14:41:21', '2024-01-25 14:41:21'),
(79, '6', '18', '2024-01-25 14:41:21', '2024-01-25 14:41:21');

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
(5, 'admin', '', 'admin@gmail.com', NULL, NULL, '2024-01-02 20:34:41', '$2a$12$XupaaSKF/FLFQzU5MgXW2OAdhDjT3ZYybP950YDkLilZ6.S/c/sI2', 'admin', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'mo', 'roberts', 'mo.roberts@yahoo.com', NULL, NULL, '2024-01-25 01:55:26', '$2y$10$Q1/87zmj9dHt.13Rmm34Z.Em/MXC5dsW7zihD1vBWWGBfdeR18Wyi', NULL, NULL, 'active', NULL, NULL, '2024-01-25 01:55:26', '2024-01-25 01:55:26', NULL, NULL, NULL, NULL),
(12, 'my', 'mm', 'my@gmail.com', NULL, NULL, '2024-01-25 13:30:16', '$2y$10$bkm.TIukWt22JVnKwdcdg.7Q9jWG6h80W11YCKwBjQ2EszRuqxFPC', NULL, NULL, 'active', NULL, NULL, '2024-01-25 13:30:16', '2024-01-25 13:30:16', NULL, NULL, NULL, NULL),
(13, 'me', 'new', 'me@gmail.com', NULL, NULL, '2024-01-25 14:22:57', '$2y$10$3PUPJBmwHwQGK2t7vOCIbOaMcs/xBsiZNdWCmQSDYfi/MfTjQGZtu', NULL, NULL, 'active', NULL, NULL, '2024-01-25 14:22:57', '2024-01-25 14:22:57', NULL, NULL, NULL, NULL);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_name_unique` (`name`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `community_interests`
--
ALTER TABLE `community_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `community_keywords`
--
ALTER TABLE `community_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `community_teams`
--
ALTER TABLE `community_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_videos`
--
ALTER TABLE `post_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `profile_interests`
--
ALTER TABLE `profile_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
