-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 27, 2024 at 09:18 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u592492065_ffazrar227`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_kr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_kr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `user_id`, `title_en`, `description_en`, `created_at`, `updated_at`, `title_ar`, `title_kr`, `description_ar`, `description_kr`) VALUES
(6, 200, 'b', 'm1', '2024-08-17 15:24:28', '2024-08-17 15:24:28', 'm', 'm', 'm2', 'n3'),
(7, 82, 'TEST', 'export to and from the People’s Republic of China. The company has managed, after diligent and continuous work for many years, to move its headquarters from the Russian Federation to the People’s Republic of China in 2001. Since then, the company has been achieving a progress in all its sectors and commercial and consulting services, focusing on long-term vision and future planning to always remain among the leading companies in its field', '2024-08-17 15:42:23', '2024-08-17 15:42:23', 'تست', 'تست', 'اهلا وسهلا', 'هعالهلعبهفبهع'),
(8, 201, 'M', 'Me', '2024-08-22 11:13:47', '2024-08-22 11:13:47', 'ببن', 'بب', 'م', 'م'),
(9, 200, 'b', 'k', '2024-08-27 14:06:17', '2024-08-27 14:06:17', 'ة', 'و', 'نن', 'خ'),
(10, 201, 'kj', 'kj', '2024-08-30 23:04:40', '2024-08-30 23:04:40', 'jkl[', 'jk', 'lkl', 'jk'),
(11, 201, 'd', 'd', '2024-08-30 23:25:46', '2024-08-30 23:25:46', 'd', 'd', 'd', 'd'),
(12, 201, 'f', 'f', '2024-08-30 23:27:35', '2024-08-30 23:27:35', 'f', 'f', 'f', 'f'),
(13, 201, 's', 's', '2024-08-30 23:29:32', '2024-08-30 23:29:32', 's', 's', 's', 's'),
(14, 201, 'ss', 'ss', '2024-08-30 23:36:22', '2024-08-30 23:36:22', 'ss', 'ss', 'ss', 'ss'),
(15, 153, 'ff', 'dd', '2024-08-31 00:51:24', '2024-08-31 00:51:24', 'dd', 'dd', 'dd', 'd'),
(16, 201, 't', 't', '2024-08-31 01:02:54', '2024-08-31 01:02:54', 't', 't', 't', 't'),
(24, 88, 'ff', 'dd', '2024-08-31 01:18:02', '2024-08-31 01:18:02', 'dd', 'dd', 'dd', 'd'),
(26, 201, 'r', 'f', '2024-08-31 01:19:25', '2024-08-31 01:19:25', 'h', 'h', 'b', 'r'),
(37, 88, 'ff', 'dd', '2024-08-31 01:49:36', '2024-08-31 01:49:36', 'dd', 'dd', 'dd', 'd'),
(38, 88, 'ff', 'dd', '2024-08-31 01:49:47', '2024-08-31 01:49:47', 'dd', 'dd', 'dd', 'd'),
(39, 88, 'ff', 'dd', '2024-08-31 01:49:48', '2024-08-31 01:49:48', 'dd', 'dd', 'dd', 'd'),
(40, 201, 'j', 'k', '2024-08-31 01:50:39', '2024-08-31 01:50:39', 'j', 'i', 'k', 'o'),
(41, 201, 'h', 'j', '2024-08-31 01:56:32', '2024-08-31 01:56:32', 'h', 'j', 'j', 'k'),
(42, 201, 'h', 'b', '2024-08-31 11:14:53', '2024-08-31 11:14:53', 'h', 'h', 'j', 'n'),
(43, 201, 'u', 'k', '2024-08-31 11:31:55', '2024-08-31 11:31:55', 'j', 'j', 'k', 'k'),
(44, 201, 'u', 'k', '2024-08-31 11:33:19', '2024-08-31 11:33:19', 'j', 'j', 'k', 'k'),
(45, 201, 'u', 'k', '2024-08-31 11:33:35', '2024-08-31 11:33:35', 'j', 'j', 'k', 'k'),
(46, 201, 'u', 'k', '2024-08-31 11:33:44', '2024-08-31 11:33:44', 'j', 'j', 'k', 'k'),
(47, 213, 'j', 'i', '2024-08-31 12:59:07', '2024-08-31 12:59:07', 'ii', 'i', 'k', 'o'),
(48, 213, 'yyyyyyj', 'i', '2024-08-31 12:59:28', '2024-08-31 12:59:28', 'ii', 'i', 'k', 'o'),
(49, 213, 'yyyyyy2j', 'i', '2024-08-31 12:59:51', '2024-08-31 12:59:51', 'ii', 'i', 'k', 'o'),
(50, 213, 'tt', 'tt', '2024-08-31 13:00:46', '2024-08-31 13:00:46', 'tt', 'tt', 'tt', 'tt'),
(51, 201, 'ww', 'ww', '2024-08-31 13:02:08', '2024-08-31 13:02:08', 'ww', 'ww', 'ww', 'ww'),
(52, 201, 'h', 'i', '2024-09-01 11:46:50', '2024-09-01 11:46:50', 'k', 'j', '8m', 'k'),
(53, 175, 'd', 'k', '2024-09-08 23:54:00', '2024-09-08 23:54:00', 'ن', 'ن', 'ن', 'ن'),
(54, 201, 'r', 'r', '2024-09-09 13:40:52', '2024-09-09 13:40:52', 'r', 'r', 'r', 'r'),
(56, 201, 'hello', 'word', '2024-09-20 12:46:57', '2024-09-20 12:46:57', 'مرحبا', 'مرحبا', 'بالعالم', 'بالعالم'),
(57, 200, 'hello', 'word', '2024-09-20 13:18:48', '2024-09-20 13:18:48', 'مرحبا', 'مرحبا', 'بالعالم', 'بالعالم'),
(58, 200, 'm1', 'mm', '2024-09-24 11:23:13', '2024-09-24 11:23:13', 'م', 'م', 'مم', 'مم'),
(59, 200, 'ghdjd', 'jdhxhsjsj', '2024-09-25 12:01:40', '2024-09-25 12:01:40', 'بتبابتتب', 'بتيتينيت', 'يويووذويتي', 'ينيتيتيتطتتي'),
(60, 213, 'abd', 'bla bla', '2024-09-25 14:32:58', '2024-09-25 14:32:58', 'عبد', 'عبد', 'بلى بلى', 'بلى بلى'),
(61, 200, 'm', 'mm', '2024-09-30 10:37:31', '2024-09-30 10:37:31', 'm', 'm', 'mm', 'mm'),
(62, 200, 'hello', 'holleoooo', '2024-10-02 13:53:37', '2024-10-02 13:53:37', 'مرحبا', 'مرحبا', 'مرحبامرحبا', 'مرحبامرحبا'),
(63, 200, 'azrar', 'azrar azrar azrar', '2024-10-02 15:43:25', '2024-10-02 15:43:25', 'ازرار', 'ازرار', 'ازرار ازرارازرار', 'ازرار ازرار'),
(64, 200, 'azrar 1', 'azrar 1azrar 1', '2024-10-02 17:25:35', '2024-10-02 17:25:35', 'azrar 1', 'azrar 1', 'azrar 1azrar 1', 'azrar 1 azrar 1'),
(65, 200, 'hello', 'hellohello', '2024-10-16 10:56:56', '2024-10-16 10:56:56', 'مرحبا', 'مرحبا', 'مرحبامرحبا', 'مرحبامرحبا'),
(66, 200, 'ث', 'ي', '2024-10-19 16:20:26', '2024-10-19 16:20:26', 'ق', 'ق', 'ل', 'ل');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
CREATE TABLE IF NOT EXISTS `addons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uninstall_files` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `email_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01963852741', 0, '1718125534JPG-05jpg.jpg', '$2y$10$bvMVG9qQG2H90HfR3Wj8aeyTTK4t1lypd1.1PgP/At8qdEDYThI3O', 1, 'LsiFQ3xejZ9hZ4SnDEFxaSaeYBCNM5QXtJ780WiNFKLWkryQvBvFayBrYjNo', NULL, '2018-02-28 23:27:08', '2024-06-11 17:05:34', 'azrar Store'),
(12, '[value-2]', '[value-3]', '[value-4]', 0, '[value-6]', '[value-7]', 0, '[value-9]', '[value-10]', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[value-13]'),
(14, 'admin2', 'admin2@gmail.com', '95585555', 18, '1725828052Annotation2024-09-08223727png.png', '$2y$10$djgxesR2WbhiHFf/P9U5EeYX6evQP/Fjdh5SX5PGtgJlPDU9G9Ss.', 1, NULL, NULL, '2024-09-08 20:40:52', '2024-09-08 20:40:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

DROP TABLE IF EXISTS `admin_languages`;
CREATE TABLE IF NOT EXISTS `admin_languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0),
(5, 0, 'عربي', '1717622030yjxH33Oh.json', '1717622030yjxH33Oh', 1),
(6, 0, 'الكوردي', '1717622073augMnHMI.json', '1717622073augMnHMI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

DROP TABLE IF EXISTS `admin_user_conversations`;
CREATE TABLE IF NOT EXISTS `admin_user_conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(1, 'hi', 70, 'مرحبا', '2024-07-11 14:46:00', '2024-07-11 14:46:00', NULL, NULL),
(2, 'تفعيل', 70, 'تم تفعيل حسابك', '2024-07-11 14:46:21', '2024-07-11 14:46:21', NULL, NULL),
(3, 'hisa', 88, 'ffff', '2024-07-14 13:41:21', '2024-07-14 13:41:21', NULL, NULL),
(4, 'nynyb', 213, 'ybybyb', '2024-09-06 06:10:28', '2024-09-06 06:10:28', 'Ticket', NULL),
(6, 'nbbbn', 213, 'jnnnj', '2024-09-06 17:48:09', '2024-09-06 17:48:09', 'Ticket', NULL),
(7, 'test23', 202, 'jkkkkkkkkkkkk', '2024-09-07 21:10:26', '2024-09-07 21:10:26', NULL, NULL),
(8, 'jjjj', 202, 'kkk', '2024-09-07 21:11:27', '2024-09-07 21:11:27', 'Dispute', NULL),
(9, '55555', 202, '5555555555', '2024-09-07 21:13:11', '2024-09-07 21:13:11', 'Ticket', NULL),
(10, '6666', 202, '555', '2024-09-07 21:16:51', '2024-09-07 21:16:51', 'Ticket', NULL),
(11, '88888', 22, '88888', '2024-09-07 21:34:40', '2024-09-07 21:34:40', 'Ticket', NULL),
(12, 'iiiiiii2', 213, 'iiiiiii2', '2024-09-07 21:38:42', '2024-09-07 21:38:42', 'Ticket', NULL),
(13, 'iiiiii3', 213, 'iiiiii3', '2024-09-07 21:39:54', '2024-09-07 21:39:54', 'Ticket', NULL),
(14, 'test23', 202, 'dddd', '2024-09-07 21:45:02', '2024-09-07 21:45:02', 'Dispute', NULL),
(15, 'test', 202, 'test', '2024-09-08 10:51:48', '2024-09-08 10:51:48', NULL, NULL),
(16, 'test7', 202, 'test7test7', '2024-09-08 11:06:36', '2024-09-08 11:06:36', 'Dispute', '12554'),
(18, 'hiiiii', 98, 'hiiiiihiiiiihiiiiihiiiii', '2024-09-08 12:47:32', '2024-09-08 12:47:32', 'Dispute', NULL),
(19, 'mms', 202, 'sss', '2024-09-08 12:50:37', '2024-09-08 12:50:37', NULL, NULL),
(26, '1234dgff', 217, '1234dgff', '2024-09-08 14:56:15', '2024-09-08 14:56:15', 'Ticket', NULL),
(30, 'tttttttt', 22, 'sssssssss', '2024-09-08 15:06:14', '2024-09-08 15:06:14', 'Ticket', NULL),
(35, 'dddddddddddddddd', 22, 'ddddddddddddddd', '2024-09-08 15:12:50', '2024-09-08 15:12:50', 'Ticket', NULL),
(37, 'ffffffffffff', 22, 'fffffffff', '2024-09-08 15:13:36', '2024-09-08 15:13:36', 'Ticket', NULL),
(41, 'dd', 202, 'ww', '2024-09-08 15:51:17', '2024-09-08 15:51:17', NULL, NULL),
(42, 'vffsvda', 202, 'vwe', '2024-09-08 15:55:10', '2024-09-08 15:55:10', 'Ticket', NULL),
(44, 'mmsjj', 202, 'kjbk', '2024-09-08 16:09:48', '2024-09-08 16:09:48', 'Ticket', NULL),
(45, 'mms', 22, ',m ,', '2024-09-08 16:10:02', '2024-09-08 16:10:02', 'Dispute', NULL),
(46, '444', 98, '444', '2024-09-08 21:36:40', '2024-09-08 21:36:40', 'Ticket', NULL),
(47, '5555', 98, '5555', '2024-09-08 21:37:11', '2024-09-08 21:37:11', 'Ticket', NULL),
(48, 'tttttttt', 175, 'ffffffffffffffff', '2024-09-08 23:41:17', '2024-09-08 23:41:17', 'Ticket', NULL),
(49, 'mmm', 200, 'jbkj', '2024-09-09 11:20:26', '2024-09-09 11:20:26', 'Ticket', NULL),
(50, 'moustaf10', 202, 'moustaf10', '2024-09-09 20:52:47', '2024-09-09 20:52:47', 'Dispute', NULL),
(51, '7', 202, '7', '2024-09-09 20:56:46', '2024-09-09 20:56:46', NULL, NULL),
(52, 'm11', 202, 'm11', '2024-09-09 21:11:52', '2024-09-09 21:11:52', 'Ticket', NULL),
(53, 'مرحبا احمد', 98, 'مرحبا احمدمرحبا احمدمرحبا احمدمرحبا احمد', '2024-09-09 21:16:10', '2024-09-09 21:16:10', NULL, NULL),
(54, 'dd', 202, 'dd', '2024-09-09 21:17:29', '2024-09-09 21:17:29', NULL, NULL),
(55, 'sss', 202, 'sss', '2024-09-09 21:18:27', '2024-09-09 21:18:27', 'Ticket', NULL),
(56, 'لالا', 98, 'لالالالا', '2024-09-09 21:19:19', '2024-09-09 21:19:19', 'Ticket', NULL),
(57, 'ررر', 98, 'ررر', '2024-09-09 21:19:51', '2024-09-09 21:19:51', 'Ticket', NULL),
(58, '444', 98, '44', '2024-09-09 21:20:22', '2024-09-09 21:20:22', NULL, NULL),
(59, '5555', 98, '555', '2024-09-09 21:20:43', '2024-09-09 21:20:43', 'Ticket', NULL),
(60, 'kkkkk', 202, 'kkkkkkkkkk', '2024-09-09 21:21:27', '2024-09-09 21:21:27', NULL, NULL),
(61, 'mms', 202, 'kkk', '2024-09-09 21:22:32', '2024-09-09 21:22:32', NULL, NULL),
(62, 'tttt', 202, 'tttt', '2024-09-09 21:29:58', '2024-09-09 21:29:58', 'Ticket', NULL),
(63, 'fff', 98, 'fff', '2024-09-09 21:32:43', '2024-09-09 21:32:43', NULL, NULL),
(64, 'tttttttt', 202, 'dtttttttttttttttttttttttttttt', '2024-09-10 22:41:51', '2024-09-10 22:41:51', 'Ticket', NULL),
(65, 's', 218, 's', '2024-09-13 21:42:51', '2024-09-13 21:42:51', NULL, NULL),
(66, 'مرحبا', 213, 'بظ', '2024-09-15 11:51:48', '2024-09-15 11:51:48', 'Ticket', NULL),
(68, 'مرحبا', 201, 'مرحبا', '2024-09-20 12:45:20', '2024-09-20 12:45:20', 'Ticket', NULL),
(69, 'مرحبا ادمن', 200, 'مرحبا', '2024-09-20 13:17:12', '2024-09-20 13:17:12', 'Ticket', NULL),
(70, 'bybyvtbunyvrctbycehyvrxrcybyvrcrvunyc', 213, 'hgg', '2024-09-21 12:29:59', '2024-09-21 12:29:59', 'Ticket', NULL),
(73, 'bbb', 225, 'vvv', '2024-09-24 11:20:18', '2024-09-24 11:20:18', 'Ticket', NULL),
(75, 'znzj', 245, 'zjhzhzh', '2024-09-25 12:14:54', '2024-09-25 12:14:54', 'Ticket', NULL),
(78, 'admin', 200, 'sss', '2024-10-02 13:48:35', '2024-10-02 13:48:35', 'Ticket', NULL),
(79, 'hj', 248, 'hjg', '2024-10-02 14:25:50', '2024-10-02 14:25:50', NULL, NULL),
(80, 'vh', 231, 'hj', '2024-10-02 14:27:45', '2024-10-02 14:27:45', NULL, NULL),
(81, 'يييلارنت', 213, 'ببببadms774', '2024-10-02 14:32:16', '2024-10-02 14:32:16', NULL, NULL),
(82, 'adms774adms774', 213, 'adms774adms774', '2024-10-02 14:32:41', '2024-10-02 14:32:41', NULL, NULL),
(83, 'ادمن', 200, 'هناك مشكلة', '2024-10-02 15:39:04', '2024-10-02 15:39:04', 'Ticket', NULL),
(84, 'test23', 248, 'لعغ', '2024-10-02 16:04:50', '2024-10-02 16:04:50', NULL, NULL),
(85, 'mms', 231, 'hello', '2024-10-02 16:06:44', '2024-10-02 16:06:44', NULL, NULL),
(86, 'dfff', 213, 'fff', '2024-10-02 16:12:15', '2024-10-02 16:12:15', NULL, NULL),
(87, 'ةةةة', 213, 'تنلالاتا', '2024-10-02 16:13:10', '2024-10-02 16:13:10', NULL, NULL),
(88, 'مرحبا ادمن', 200, 'هناك مشكلة ي....', '2024-10-02 17:20:52', '2024-10-02 17:20:52', 'Ticket', NULL),
(89, 'd', 249, 'sss', '2024-10-02 17:40:57', '2024-10-02 17:40:57', NULL, NULL),
(90, 'azrar 11', 249, 'azrar 11', '2024-10-02 17:42:47', '2024-10-02 17:42:47', NULL, NULL),
(91, 'azrar 11', 213, 'azrar 11', '2024-10-02 17:45:08', '2024-10-02 17:45:08', NULL, NULL),
(92, 'azrar 11', 213, 'azrar 11', '2024-10-02 17:45:58', '2024-10-02 17:45:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

DROP TABLE IF EXISTS `admin_user_messages`;
CREATE TABLE IF NOT EXISTS `admin_user_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversation_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'مرحبا', NULL, '2024-07-11 14:46:00', '2024-07-11 14:46:00'),
(2, 2, 'تم تفعيل حسابك', NULL, '2024-07-11 14:46:21', '2024-07-11 14:46:21'),
(3, 3, 'ffff', NULL, '2024-07-14 13:41:21', '2024-07-14 13:41:21'),
(4, 4, 'ybybyb', 213, '2024-09-06 06:10:28', '2024-09-06 06:10:28'),
(6, 4, 'gggggggg', NULL, '2024-09-06 17:42:50', '2024-09-06 17:42:50'),
(7, 6, 'jnnnj', 213, '2024-09-06 17:48:09', '2024-09-06 17:48:09'),
(8, 6, 'kkkkk', NULL, '2024-09-06 17:49:18', '2024-09-06 17:49:18'),
(9, 7, 'jkkkkkkkkkkkk', NULL, '2024-09-07 21:10:26', '2024-09-07 21:10:26'),
(10, 8, 'kkk', NULL, '2024-09-07 21:11:27', '2024-09-07 21:11:27'),
(11, 9, '5555555555', NULL, '2024-09-07 21:13:11', '2024-09-07 21:13:11'),
(12, 10, '555', NULL, '2024-09-07 21:16:51', '2024-09-07 21:16:51'),
(13, 9, 'من 5555 الى 66', 202, '2024-09-07 21:21:11', '2024-09-07 21:21:11'),
(14, 10, 'مرحبا', 202, '2024-09-07 21:26:03', '2024-09-07 21:26:03'),
(15, 6, 'hgv', 213, '2024-09-07 21:33:28', '2024-09-07 21:33:28'),
(16, 9, 'ddd', 202, '2024-09-07 21:34:25', '2024-09-07 21:34:25'),
(17, 11, '88888', NULL, '2024-09-07 21:34:40', '2024-09-07 21:34:40'),
(18, 10, 'mmm', 202, '2024-09-07 21:37:08', '2024-09-07 21:37:08'),
(19, 12, 'iiiiiii2', 213, '2024-09-07 21:38:42', '2024-09-07 21:38:42'),
(20, 13, 'iiiiii3', 213, '2024-09-07 21:39:54', '2024-09-07 21:39:54'),
(21, 13, 'mmmm6666', NULL, '2024-09-07 21:40:12', '2024-09-07 21:40:12'),
(22, 13, 'iiiiii4', 213, '2024-09-07 21:41:34', '2024-09-07 21:41:34'),
(23, 13, 'iiiiii4', 213, '2024-09-07 21:41:40', '2024-09-07 21:41:40'),
(24, 14, 'dddd', NULL, '2024-09-07 21:45:02', '2024-09-07 21:45:02'),
(25, 15, 'test', NULL, '2024-09-08 10:51:48', '2024-09-08 10:51:48'),
(26, 14, 'mmm', NULL, '2024-09-08 11:04:48', '2024-09-08 11:04:48'),
(27, 14, 'm888', NULL, '2024-09-08 11:05:07', '2024-09-08 11:05:07'),
(28, 16, 'test7test7', NULL, '2024-09-08 11:06:36', '2024-09-08 11:06:36'),
(29, 16, ',,,,', NULL, '2024-09-08 11:08:01', '2024-09-08 11:08:01'),
(30, 10, 'nnn', NULL, '2024-09-08 11:08:46', '2024-09-08 11:08:46'),
(31, 9, 'bbb', NULL, '2024-09-08 11:09:24', '2024-09-08 11:09:24'),
(34, 18, 'hiiiiihiiiiihiiiiihiiiii', NULL, '2024-09-08 12:47:32', '2024-09-08 12:47:32'),
(35, 19, 'sss', NULL, '2024-09-08 12:50:37', '2024-09-08 12:50:37'),
(37, 21, 'moustaf', NULL, '2024-09-08 14:14:06', '2024-09-08 14:14:06'),
(38, 21, 'moustafmoustaf', NULL, '2024-09-08 14:14:47', '2024-09-08 14:14:47'),
(39, 22, 'moustaf1', NULL, '2024-09-08 14:27:03', '2024-09-08 14:27:03'),
(40, 22, 'moustaf1moustaf1', NULL, '2024-09-08 14:27:15', '2024-09-08 14:27:15'),
(41, 23, 'moustaf1', NULL, '2024-09-08 14:27:50', '2024-09-08 14:27:50'),
(42, 24, 'moustaf2moustaf2', NULL, '2024-09-08 14:28:30', '2024-09-08 14:28:30'),
(44, 26, '1234dgff', NULL, '2024-09-08 14:56:15', '2024-09-08 14:56:15'),
(57, 41, 'ww', NULL, '2024-09-08 15:51:17', '2024-09-08 15:51:17'),
(58, 42, 'vwe', NULL, '2024-09-08 15:55:10', '2024-09-08 15:55:10'),
(60, 44, 'kjbk', NULL, '2024-09-08 16:09:48', '2024-09-08 16:09:48'),
(61, 45, ',m ,', NULL, '2024-09-08 16:10:02', '2024-09-08 16:10:02'),
(62, 10, 'jkkjb', 202, '2024-09-08 16:13:40', '2024-09-08 16:13:40'),
(63, 46, '444', NULL, '2024-09-08 21:36:40', '2024-09-08 21:36:40'),
(64, 47, '5555', NULL, '2024-09-08 21:37:11', '2024-09-08 21:37:11'),
(65, 50, 'moustaf10', NULL, '2024-09-09 20:52:47', '2024-09-09 20:52:47'),
(66, 51, '7', NULL, '2024-09-09 20:56:46', '2024-09-09 20:56:46'),
(67, 49, 'مرحبا ادمن', 200, '2024-09-09 21:01:09', '2024-09-09 21:01:09'),
(68, 49, 'اهلا', NULL, '2024-09-09 21:01:45', '2024-09-09 21:01:45'),
(69, 44, 'mmm', 202, '2024-09-09 21:06:12', '2024-09-09 21:06:12'),
(70, 44, 'mm1', NULL, '2024-09-09 21:06:20', '2024-09-09 21:06:20'),
(71, 44, 'مرحبا ادمن', 202, '2024-09-09 21:07:21', '2024-09-09 21:07:21'),
(72, 44, 'اهلا وسهلا', NULL, '2024-09-09 21:07:41', '2024-09-09 21:07:41'),
(73, 52, 'مرحبا ادمن', 202, '2024-09-09 21:13:05', '2024-09-09 21:13:05'),
(74, 52, 'ممم', NULL, '2024-09-09 21:13:23', '2024-09-09 21:13:23'),
(75, 53, 'مرحبا احمدمرحبا احمدمرحبا احمدمرحبا احمد', NULL, '2024-09-09 21:16:10', '2024-09-09 21:16:10'),
(76, 54, 'dd', NULL, '2024-09-09 21:17:29', '2024-09-09 21:17:29'),
(77, 55, 'sss', NULL, '2024-09-09 21:18:27', '2024-09-09 21:18:27'),
(78, 55, 'jjj', 202, '2024-09-09 21:18:42', '2024-09-09 21:18:42'),
(79, 56, 'لالالالا', NULL, '2024-09-09 21:19:19', '2024-09-09 21:19:19'),
(80, 57, 'ررر', NULL, '2024-09-09 21:19:51', '2024-09-09 21:19:51'),
(81, 58, '44', NULL, '2024-09-09 21:20:22', '2024-09-09 21:20:22'),
(82, 59, '555', NULL, '2024-09-09 21:20:43', '2024-09-09 21:20:43'),
(83, 60, 'kkkkkkkkkk', NULL, '2024-09-09 21:21:27', '2024-09-09 21:21:27'),
(84, 61, 'kkk', NULL, '2024-09-09 21:22:32', '2024-09-09 21:22:32'),
(85, 62, 'كيف حالك', NULL, '2024-09-09 21:30:47', '2024-09-09 21:30:47'),
(86, 62, 'اهلين', 202, '2024-09-09 21:30:57', '2024-09-09 21:30:57'),
(87, 62, 'يسعد دينك', NULL, '2024-09-09 21:31:15', '2024-09-09 21:31:15'),
(88, 63, 'fff', NULL, '2024-09-09 21:32:43', '2024-09-09 21:32:43'),
(89, 65, 's', NULL, '2024-09-13 21:42:51', '2024-09-13 21:42:51'),
(90, 66, 'بظ', 213, '2024-09-15 11:51:48', '2024-09-15 11:51:48'),
(92, 68, 'مرحبا', 201, '2024-09-20 12:45:20', '2024-09-20 12:45:20'),
(93, 69, 'مرحبا', 200, '2024-09-20 13:17:12', '2024-09-20 13:17:12'),
(94, 70, 'hgg', 213, '2024-09-21 12:29:59', '2024-09-21 12:29:59'),
(97, 73, 'vvv', 225, '2024-09-24 11:20:18', '2024-09-24 11:20:18'),
(99, 75, 'zjhzhzh', 245, '2024-09-25 12:14:54', '2024-09-25 12:14:54'),
(102, 78, 'iii', 200, '2024-10-02 13:48:44', '2024-10-02 13:48:44'),
(103, 79, 'hjg', NULL, '2024-10-02 14:25:50', '2024-10-02 14:25:50'),
(104, 80, 'hj', NULL, '2024-10-02 14:27:45', '2024-10-02 14:27:45'),
(105, 78, 'نتنتلا', NULL, '2024-10-02 14:31:48', '2024-10-02 14:31:48'),
(106, 81, 'ببببadms774', NULL, '2024-10-02 14:32:16', '2024-10-02 14:32:16'),
(107, 82, 'adms774adms774', NULL, '2024-10-02 14:32:41', '2024-10-02 14:32:41'),
(108, 83, 'مرحبا', 200, '2024-10-02 15:39:13', '2024-10-02 15:39:13'),
(109, 84, 'لعغ', NULL, '2024-10-02 16:04:50', '2024-10-02 16:04:50'),
(110, 85, 'hello', NULL, '2024-10-02 16:06:44', '2024-10-02 16:06:44'),
(111, 86, 'fff', NULL, '2024-10-02 16:12:15', '2024-10-02 16:12:15'),
(112, 83, 'اهلا ماهي مشكلتك', NULL, '2024-10-02 16:12:37', '2024-10-02 16:12:37'),
(113, 87, 'تنلالاتا', NULL, '2024-10-02 16:13:10', '2024-10-02 16:13:10'),
(114, 88, 'هلو', 200, '2024-10-02 17:21:02', '2024-10-02 17:21:02'),
(115, 89, 'sss', NULL, '2024-10-02 17:40:57', '2024-10-02 17:40:57'),
(116, 90, 'azrar 11', NULL, '2024-10-02 17:42:47', '2024-10-02 17:42:47'),
(117, 91, 'azrar 11', NULL, '2024-10-02 17:45:08', '2024-10-02 17:45:08'),
(118, 88, 'hello', NULL, '2024-10-02 17:45:31', '2024-10-02 17:45:31'),
(119, 92, 'azrar 11', NULL, '2024-10-02 17:45:58', '2024-10-02 17:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_sections`
--

DROP TABLE IF EXISTS `arrival_sections`;
CREATE TABLE IF NOT EXISTS `arrival_sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `header` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `up_sale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrival_sections`
--

INSERT INTO `arrival_sections` (`id`, `title`, `header`, `photo`, `up_sale`, `url`, `created_at`, `updated_at`) VALUES
(3, '.', '.', '1718190103JPG-11jpg.jpg', '.', 'https://ealanatek.site/', '2022-02-01 03:03:51.000000', '2024-06-12 11:01:43.000000'),
(4, '.', '.', '1718190162JPG-05jpg.jpg', '.', 'https://ealanatek.site/', '2022-02-01 04:08:01.000000', '2024-06-12 11:02:42.000000'),
(7, 'NEW ARRIVALS', '.', '1718189944JPG-05jpg.jpg', '.', 'https://ealanatek.site/', '2022-02-01 04:08:01.000000', '2024-09-08 19:47:17.000000');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attributable_id` int DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(39, 16, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(40, 16, 'App\\Models\\Category', 'Warrenty', 'warrenty', 1, 1, '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(41, 16, 'App\\Models\\Category', 'Belt', 'belt', 1, 1, '2022-03-24 15:55:52', '2022-03-24 15:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

DROP TABLE IF EXISTS `attribute_options`;
CREATE TABLE IF NOT EXISTS `attribute_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attribute_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(269, 39, 'G-Shock', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(270, 39, 'Diesel', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(271, 39, 'Longines', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(272, 39, 'Hamilton', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(273, 39, 'Citizen', '2022-03-24 15:50:51', '2022-03-24 15:50:51'),
(274, 40, 'Local Sell Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(275, 40, 'Manufacture Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(276, 40, 'International Warrenty', '2022-03-24 15:54:30', '2022-03-24 15:54:30'),
(277, 41, 'Leather', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(278, 41, 'Stainless steel', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(279, 41, 'Rubber', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(280, 41, 'Normal', '2022-03-24 15:55:52', '2022-03-24 15:55:52'),
(281, 25, 'demo 1', '2024-06-11 17:16:25', '2024-06-11 17:16:25'),
(282, 25, 'demo 2', '2024-06-11 17:16:25', '2024-06-11 17:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`, `title`, `text`) VALUES
(3, '166323530463png.png', 'https://www.google.com/', 'BottomSmall', 'Beauty Essintial Product', 'Turpis pulvinar amet sodales. Dui eget interdum molestie vivamus tempus.'),
(9, '166323053459png.png', '#', 'TopSmall', 'Natural Cream', 'Banner Image SALE UPTO 50%'),
(10, '166323056960png.png', '#', 'TopSmall', 'Banner Image SALE UPTO 50%', 'Hair Cares'),
(11, '166323058961png.png', '#', 'TopSmall', 'Natural Oils', 'Banner Image SALE UPTO 50%'),
(12, '166323061062png.png', '#', 'TopSmall', 'Organic Tea', 'Banner Image SALE UPTO 50%'),
(13, '166323062760png.png', '#', 'TopSmall', 'Organic Tea', 'Banner Image SALE UPTO 50%'),
(14, '166323064059png.png', '#', 'TopSmall', 'Organic Tea', 'Banner Image SALE UPTO 50%'),
(15, '166323532764png.png', '#', 'BottomSmall', 'Banner Image SALE UPTO 30% Beauty Essintial Product', 'Banner Image SALE UPTO 30% Beauty Essintial Product Turpis pulvinar amet sodales. Dui eget interdum molestie vivamus tempus.');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(14, 2, 'How to design effective arts?', 'how-to-design-effective-arts5Xoo', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1645433573164069202629pngpng.png', 'google.com', 11, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30'),
(20, 2, 'How to design effective arts?', 'how-to-design-effective-artspnST', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '164543347015542698832-minjpg.jpg', 'google.com', 17, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(21, 3, 'How to design effective arts?', 'how-to-design-effective-arts1kzz', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334471572852760blog7png.png', 'google.com', 59, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(23, 7, 'How to design effective arts?', 'how-to-design-effective-artszYxx', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454334081572852731blog3jpg.jpg', 'google.com', 28, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(24, 3, 'How to design effective arts?', 'how-to-design-effective-arts8bQ1', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '16454333931572852725blog2jpg.jpg', 'google.com', 52, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(25, 3, 'كيفية تصميم الفنون الفعالة؟', 'kyfy-tsmym-alfnon-alfaaalwB3A', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p><p align=\"justify\"><br></p><p align=\"justify\"><img onclick=\"alert(\'Hacked\')\" src=\"https://i.imgur.com/jtEirwY.png\" width=\"128\"><br></p><p align=\"justify\"><br></p>\r\n\r\n<script>alert(\'Hacked\');</script>', '16454333771572852720blog1png.png', 'google.com', 112, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(44, 2, 'ييي', 'yyy1HHS', 'ييي', '1725814252images15jpeg.jpeg', 'يي', 0, 1, NULL, NULL, 'يي', '2024-09-08 16:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Web Services', 'web-services'),
(3, 'Business Philosophy', 'business-philosophy'),
(4, 'Business Help', 'business-help'),
(5, 'Random Thoughts', 'random-thoughts'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name_ku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `name_ar`, `name_ku`, `status`, `photo`, `image`, `is_featured`) VALUES
(40, 'Phones', 'Phones', 'تلفونات', 'تلفونات', 1, '1557807264camera.png\n', '1723840493png.png', 1),
(41, 'Toys', 'Toys', 'العاب', 'العاب', 1, '1557807264camera.png\n', '1723840568png.png', 1),
(42, 'Fashon', 'Fashon', 'البسة', 'البسة', 1, '1557807264camera.png\n', '1723840638png.png', 1),
(43, 'Books', 'Books', 'كتب', 'كتب', 1, '1557807264camera.png\n', '1723840681png.png', 1),
(44, 'Camera', 'Camera', 'كاميرا', 'كاميرا', 1, '1557807264camera.png\n', '1723840718png.png', 1),
(45, 'Sports', 'Sports', 'رياضة', 'رياضة', 1, '1557807264camera.png\n', '1723840770png.png', 1),
(46, 'Cosmatic', 'Cosmatic', 'الجمال', 'الجمال', 1, '1557807264camera.png\n', '1723840840png.png', 1),
(47, 'jewelry', 'jewelry', 'مجوهرات', 'مجوهرات', 1, '1557807264camera.png\n', '1723841021png.png', 1),
(48, 'Decorations', 'Decorations', 'ديكورات', 'ديكورات', 1, '1557807264camera.png\n', '1723841179png.png', 1),
(49, 'Healthy', 'Healthy', 'الصحة', 'الصحة', 1, '1557807264camera.png\n', '1723841663health-80png.png', 1),
(50, 'Cars', 'Cars', 'سيارات', 'سيارات', 1, '1557807264camera.png\n', '1723842090icons8-cars-64png.png', 1),
(51, 'Motors', 'Motors', 'دراجات', 'دراجات', 1, '1557807264camera.png\n', '1723842299icons8-scooter-96png.png', 1),
(52, 'shos', 'shos', 'أحذية', 'أحذية', 1, '1557807264camera.png\n', '1723842637icons8-trainers-961png.png', 1),
(53, 'oclocks', 'oclocks', 'ساعات', 'ساعات', 1, '1557807264camera.png\n', '1723842920icons8-plus-1-hour-901png.png', 1),
(54, 'headphones', 'headphones', 'سماعات', 'سماعات', 1, '1557807264camera.png\n', '1723843413icons8-headphones-96png.png', 1),
(55, 'charge', 'charge', 'شاحن موبايل', 'شاحن موبايل', 1, '1557807264camera.png\n', '1723843662icons8-mobile-charger-100png.png', 1),
(56, 'glass', 'glass', 'نظارات', 'نظارات', 1, '1557807264camera.png\n', '1723843770icons8-glasses-96png.png', 1),
(57, 'TV', 'TV', 'تلفزيون', 'تلفزيون', 1, '1557807264camera.png\n', '1723843943icons8-tv-96png.png', 1),
(58, 'bicycle', 'bicycle', 'دراجة هوئية', 'دراجة هوئية', 1, '1557807264camera.png\n', '1723844154icons8-motorcycle-96png.png', 1),
(59, 'fridge', 'fridge', 'ثلاجة', 'ثلاجة', 1, '1557807264camera.png\n', '1723844239icons8-fridge-96png.png', 1),
(60, 'fan', 'fan', 'مروحة', 'مروحة', 1, '1557807264camera.png\n', '1723844313icons8-fan-96png.png', 1),
(61, 'Laptop', 'Laptop', 'لابتوب', 'لابتوب', 1, '1557807264camera.png\n', '1723844496icons8-broken-computer-96png.png', 1),
(62, 'keyboard', 'keyboard', 'لوحة مفاتيح', 'لوحة مفاتيح', 1, '1557807264camera.png\n', '1723844640icons8-keyboard-96png.png', 1),
(63, 'sweets', 'sweets', 'حلويات', 'حلويات', 1, '1557807264camera.png\n', '1723844878icons8-sweets-96png.png', 1),
(64, 'Perfumes', 'Perfumes', 'عطورات', 'عطورات', 1, '1557807264camera.png\n', '1723844952icons8-perfumes-64png.png', 1),
(65, 'Accessories', 'Accessories', 'اكسسوارات', 'اكسسوارات', 1, NULL, '1723845063icons8-accessories-80png.png', 1),
(66, 'Clothing', 'Clothing', 'البسة', 'البسة', 1, NULL, '1723845325icons8-shirt-96png.png', 1),
(67, 'Makeup', 'Makeup', 'مكياج', 'مكياج', 1, NULL, '1723845417icons8-makeup-64png.png', 1),
(72, 'azrartest', 'azrartest', 'ازرار', 'ازرار', 1, NULL, '1727884702Annotation2024-09-09011410png.png', 1),
(73, 'azrar 11', 'azrar-11', 'azrar 11', 'azrar 11', 1, NULL, '1727890540Annotation2024-09-09011410png.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

DROP TABLE IF EXISTS `childcategories`;
CREATE TABLE IF NOT EXISTS `childcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subcategory_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name_ku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `name_ar`, `name_ku`, `status`) VALUES
(40, 52, 'iphone-13', 'Phones', 'ايفون 13', 'ايفون 13', 1),
(41, 53, 'ball', 'Toys', 'كرة', 'كرة', 1),
(42, 54, 'T-short', 'Fashon', 'قميص', 'قميص', 1),
(43, 55, 'Story', 'Books', 'قصة', 'قصة', 1),
(44, 56, 'canoon', 'Camera', 'كانون', 'كانون', 1),
(45, 57, 'football Glopal', 'Sports', 'كرة قدم دولية', 'كرة قدم دولية', 1),
(46, 58, 'Rog Afa', 'Cosmatic', 'أحمر شفاه', 'أحمر شفاه', 1),
(47, 59, 'jewelry33', 'jewelry', 'مجوهرات', 'مجوهرات', 1),
(48, 60, 'Decorations 444', 'Decorations', 'ديكورات  رباعية', 'ديكورات  رباعية', 1),
(49, 61, 'Healthy', 'Healthy', 'صحة', 'صحة', 1),
(50, 80, 'BMW', 'Cars', 'بي ام دبليو', 'بي ام دبليو', 1),
(51, 63, 'Motorcycles77', 'Motors', 'موتو', 'موتو', 1),
(52, 64, 'shos22', 'shos', 'حذاء', 'حذاء', 1),
(53, 65, 'clock22', 'oclocks', 'ساعة', 'ساعة', 1),
(54, 66, 'headphones22', 'headphones', 'هيدفونز رأسي', 'هيدفونز رأسي', 1),
(55, 67, 'charge22', 'charge', 'جارج', 'جارج', 1),
(56, 68, 'glass22', 'glass', 'جلاس', 'جلاس', 1),
(57, 69, 'TV', 'TV', 'تي في', 'تي في', 1),
(58, 70, 'bicyle22', 'bicycle', 'بيسكل ثنائي', 'بيسكل ثنائي', 1),
(62, 86, 'azrar 33', 'azrar-33', 'azrar 33', 'azrar 33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city_name`, `status`, `country_id`) VALUES
(0, 32, 'السيدية', 1, 2),
(1, 15, 'Comilla', 1, 0),
(2, 14, 'Uttara', 1, 0),
(3, 14, 'Mirpur', 1, 0),
(4, 14, 'Gazipur', 1, 0),
(5, 32, 'المنصور\r\n', 1, 2),
(6, 33, 'الرمادي', 1, 2),
(7, 33, 'الفلوجة', 1, 2),
(8, 33, 'هيت', 1, 2),
(9, 33, 'حديثة', 1, 2),
(10, 33, 'الرطبة', 1, 2),
(11, 33, 'القائم', 1, 2),
(12, 33, 'عنه', 1, 2),
(13, 33, 'راوه\r\n', 1, 2),
(14, 34, 'بصرة', 1, 2),
(15, 34, 'قضاء الزبير \r\n', 1, 2),
(16, 34, 'قضاء الفاو\r\n', 1, 2),
(17, 34, 'قضاء أبي الخطيب\r\n', 1, 2),
(18, 34, 'قضاء المدينة\r\n', 1, 2),
(19, 34, 'قضاء شط العرب \r\n', 1, 2),
(20, 34, 'قضاء سفوان', 1, 2),
(21, 34, 'قضاء القرنة\r\n', 1, 2),
(22, 35, 'السماوة\r\n', 1, 2),
(23, 35, 'قضاء الرميثة\r\n', 1, 2),
(24, 35, 'قضاء الخضر \r\n', 1, 2),
(25, 35, 'قضاء السلمان \r\n', 1, 2),
(26, 35, 'قضاء الوركاء \r\n', 1, 2),
(27, 36, 'الديوانية ', 1, 2),
(28, 36, 'الشنافية', 1, 2),
(29, 36, 'قضاء عفك\r\n', 1, 2),
(30, 36, 'غماس\r\n', 1, 2),
(31, 36, 'سومر', 1, 2),
(32, 36, 'قضاء الحمزة \r\n', 1, 2),
(33, 36, 'دغاره ', 1, 2),
(34, 37, 'نجف', 1, 2),
(35, 37, 'قضاء الكوفة\r\n', 1, 2),
(36, 37, 'قضاء المشخاب\r\n', 1, 2),
(37, 37, 'قضاء الحيدرية \r\n', 1, 2),
(38, 37, 'العباسية', 1, 2),
(39, 37, 'ماناثيرا', 1, 2),
(40, 38, 'أربيل', 1, 2),
(41, 38, 'قضاء شقلاوة\r\n', 1, 2),
(42, 38, 'قضاء سوران\r\n', 1, 2),
(43, 38, 'مخمور', 1, 2),
(44, 38, 'قضاء كويسنجق \r\n', 1, 2),
(45, 38, 'حرير', 1, 2),
(46, 38, 'رواندز', 1, 2),
(47, 38, 'غوير', 1, 2),
(48, 39, 'السليمانية', 1, 2),
(49, 39, 'حلبجة', 1, 2),
(50, 39, 'قضاء رانية\r\n', 1, 2),
(51, 39, 'قضاء بشدر\r\n', 1, 2),
(52, 39, 'قضاء دوكان\r\n', 1, 2),
(53, 39, 'قضاء كلار\r\n', 1, 2),
(54, 39, 'شوارقورنا', 1, 2),
(55, 39, 'شهرزور ', 1, 2),
(56, 40, 'الحلة‎', 1, 2),
(57, 40, 'المسيب', 1, 2),
(58, 40, 'الهاشمية', 1, 2),
(59, 40, 'المحمودية', 1, 2),
(60, 40, 'القاسم', 1, 2),
(61, 40, 'الكفل', 1, 2),
(62, 40, 'الاسكندرية', 1, 2),
(63, 40, 'ناحية التاجي', 1, 2),
(64, 41, 'دهوك', 1, 2),
(65, 41, 'قضاء زاخو \r\n', 1, 2),
(66, 41, 'قضاء العمادية\r\n', 1, 2),
(67, 41, 'سميل\r\n', 1, 2),
(68, 41, 'قضاء عقرة \r\n', 1, 2),
(69, 41, 'باتيفا\r\n', 1, 2),
(70, 41, 'قضاء بردرش\r\n', 1, 2),
(71, 41, 'شومان', 1, 2),
(72, 42, 'الناصرية\r\n', 1, 2),
(73, 42, 'قضاء سوق الشيوخ \r\n', 1, 2),
(74, 42, 'قضاء الرفاعي\r\n', 1, 2),
(75, 42, 'قضاء الجبايش', 1, 2),
(76, 42, 'الشطرة', 1, 2),
(77, 42, 'النشوة', 1, 2),
(78, 42, 'قضاء الجبايش', 1, 2),
(79, 42, 'قضاء الفهود\r\n', 1, 2),
(80, 43, 'بعقوبة', 1, 2),
(81, 43, 'قضاء خانقين\r\n', 1, 2),
(82, 43, 'قضاء المقدادية\r\n', 1, 2),
(83, 43, 'قضاء بلدروز\r\n', 1, 2),
(84, 43, 'قضاء مندلي \r\n', 1, 2),
(85, 43, 'قضاء كفري \r\n', 1, 2),
(86, 43, 'جلولاء', 1, 2),
(87, 43, 'السعدية', 1, 2),
(88, 44, 'كربلاء', 1, 2),
(89, 44, 'قضاء الهندية\r\n', 1, 2),
(90, 44, 'قضاء عين تمر \r\n', 1, 2),
(91, 44, 'حسينية ', 1, 2),
(92, 44, 'قضاء الحر \r\n', 1, 2),
(93, 44, 'الإبراهيمية', 1, 2),
(94, 44, 'الخيرات', 1, 2),
(95, 44, 'جدوال ألما', 1, 2),
(96, 45, 'كركوك\r\n', 1, 2),
(97, 45, 'قضاء الحويجة\r\n', 1, 2),
(98, 45, 'قضاء دقواق\r\n', 1, 2),
(99, 45, 'قضاء دبس \r\n', 1, 2),
(100, 45, 'ليلان', 1, 2),
(101, 45, 'إلتون كوبري', 1, 2),
(102, 45, 'الرياض', 1, 2),
(103, 45, 'عباسي', 1, 2),
(104, 46, 'العمارة\r\n', 1, 2),
(105, 46, 'الكحلاء', 1, 2),
(106, 46, 'المجر الكبير\r\n', 1, 2),
(107, 46, 'علي الغربي', 1, 2),
(108, 46, 'الاوزاير', 1, 2),
(109, 46, 'قضاء المجر الكبير', 1, 2),
(110, 46, 'قلعة صالح', 1, 2),
(111, 46, 'العمارة\r\n', 1, 2),
(112, 47, 'المَوْصِلُ ', 1, 2),
(113, 47, 'تلعفر', 1, 2),
(114, 47, 'شنغال', 1, 2),
(115, 47, 'برطلة', 1, 2),
(116, 47, 'الحمدانية', 1, 2),
(117, 47, 'بعشيقة', 1, 2),
(118, 47, ' الشيخان', 1, 2),
(119, 47, 'البعاج ', 1, 2),
(120, 48, 'تكريت', 1, 2),
(121, 48, 'سامُرّاءُ', 1, 2),
(122, 48, 'بيجي', 1, 2),
(123, 48, 'بلد\r\n', 1, 2),
(124, 48, 'الدجيل', 1, 2),
(125, 48, 'الدر', 1, 2),
(126, 48, 'الشرقاط', 1, 2),
(127, 48, 'العالم', 1, 2),
(128, 49, 'الكوت', 1, 2),
(129, 49, 'الحي\r\n', 1, 2),
(130, 49, 'الصويرة', 1, 2),
(131, 49, 'بدرة', 1, 2),
(132, 49, 'الشيخ سعد', 1, 2),
(133, 49, 'النعمانية', 1, 2),
(134, 49, 'العزيزة', 1, 2),
(135, 49, 'الأحرار', 1, 2),
(137, 32, 'الأعظمية\r\n', 1, 2),
(138, 32, 'مدينة الصدر', 1, 2),
(139, 32, 'المدائن', 1, 2),
(140, 32, 'الحسينية', 1, 2),
(141, 32, 'المعامل', 1, 2),
(142, 32, 'الكاظمية', 1, 2),
(143, 32, 'أبي غريب', 1, 2),
(144, 32, 'الطارمية', 1, 2),
(145, 32, 'منطقة الشعلة', 1, 2),
(146, 32, 'الشعب', 1, 2),
(147, 32, 'شارع فلسطين', 1, 2),
(148, 32, 'الفخامة', 1, 2),
(149, 32, 'حي أور', 1, 2),
(150, 32, 'باب المعظم', 1, 2),
(151, 32, 'المستنصرية', 1, 2),
(152, 32, 'النيل المهندسين', 1, 2),
(153, 32, 'حي 14 تموز', 1, 2),
(154, 32, 'الأدريسي', 1, 2),
(155, 32, 'الوزيرية-الصناعة', 1, 2),
(156, 32, 'الوزيرية', 1, 2),
(157, 32, 'شارع المغرب', 1, 2),
(158, 0, 'القاهرة', 1, 2),
(159, 32, 'سبع أبكار', 1, 2),
(160, 32, 'حي البنوك', 1, 2),
(161, 32, 'الصليخ', 1, 2),
(162, 32, 'أشبيليا', 1, 2),
(163, 32, 'الحبيبية', 1, 2),
(164, 32, 'ملعب الشعب ', 1, 2),
(165, 0, 'زيونة', 1, 2),
(166, 32, 'الغدير', 1, 2),
(167, 32, 'بغداد الجديدة', 1, 2),
(168, 32, 'البلديات', 1, 2),
(169, 32, 'المشتل', 1, 2),
(170, 32, 'أمين', 1, 2),
(171, 32, 'الرستمية', 1, 2),
(172, 32, 'الفضيلية', 1, 2),
(173, 32, 'الكمالية', 1, 2),
(174, 32, 'حي البتول', 1, 2),
(175, 32, 'حي النصر ', 1, 2),
(176, 32, 'شارع الرشيد', 1, 2),
(177, 32, 'العبيدية ', 1, 2),
(178, 32, 'حي الصدرين ', 1, 2),
(179, 32, 'سيناء', 1, 2),
(180, 32, 'العلوية ', 1, 2),
(181, 32, 'نادي الوحدة', 1, 2),
(182, 32, 'الكرادة داخل', 1, 2),
(183, 32, 'الجادرية ', 1, 2),
(184, 32, 'العرصات ', 1, 2),
(185, 32, 'كامب سارة ', 1, 2),
(186, 32, 'شارع المعسكر الرشيد ', 1, 2),
(187, 32, 'الربيعي ', 1, 2),
(188, 32, 'الزعفرانية ', 1, 2),
(189, 32, 'الشواكة ', 1, 2),
(190, 32, 'الشيخ معروف', 1, 2),
(191, 32, 'الصالحية ', 1, 2),
(192, 32, 'كرادة مريم ', 1, 2),
(193, 32, 'جزيرة ام الخنازير', 1, 2),
(194, 32, 'الكندي', 1, 2),
(195, 32, 'منتزه الزوراء', 1, 2),
(196, 32, 'مطار المثنى', 1, 2),
(197, 32, 'العطيفية ', 1, 2),
(198, 32, 'الجوادين', 1, 2),
(199, 32, 'علي صالح ', 1, 2),
(200, 32, 'الرواد', 1, 2),
(201, 32, 'الحرية1', 1, 2),
(202, 32, 'الحرية2 ', 1, 2),
(203, 32, 'الحرية3', 1, 2),
(204, 32, 'دباش', 1, 2),
(205, 32, 'البستان ', 1, 2),
(206, 32, 'الصحة', 1, 2),
(207, 32, 'الدولعي', 1, 2),
(208, 32, 'دور الشؤون', 1, 2),
(209, 32, 'دور نواب الضباط', 1, 2),
(210, 32, 'السلام ', 1, 2),
(211, 32, 'الأكراد', 1, 2),
(212, 32, 'القادسية ', 1, 2),
(213, 32, 'اليرموك', 1, 2),
(214, 32, 'المنصور', 1, 2),
(215, 32, 'دراغ', 1, 2),
(216, 32, 'الأندلس', 1, 2),
(217, 32, 'الداودي ', 1, 2),
(218, 32, 'الجامعة ', 1, 2),
(219, 32, 'السفاراة', 1, 2),
(220, 32, 'الغزالية', 1, 2),
(221, 32, 'العامرية', 1, 2),
(222, 32, 'البكرية \r\n', 1, 2),
(223, 32, 'مطار بغداد الدولي', 1, 2),
(224, 32, 'جماع ام القرى', 1, 2),
(225, 32, 'الخطيب', 1, 2),
(226, 32, 'العدل', 1, 2),
(227, 32, 'الاسكان', 1, 2),
(228, 32, 'الوشاش \r\n', 1, 2),
(229, 32, 'البيجية', 1, 2),
(230, 32, 'البوعيثة', 1, 2),
(231, 32, 'مصفاة الدورة \r\n', 1, 2),
(232, 32, 'جميعة خير الله \r\n', 1, 2),
(233, 32, 'الدورة', 1, 2),
(234, 32, 'الجمهورية', 1, 2),
(235, 32, 'الشرطة', 1, 2),
(236, 32, 'الاثوريين', 1, 2),
(237, 32, 'الجزيرة الأولى \r\n', 1, 2),
(238, 32, 'عرب جبور \r\n', 1, 2),
(239, 32, 'حي اسيا \r\n', 1, 2),
(240, 32, 'الميكانيك', 1, 2),
(241, 32, 'الصحة', 1, 2),
(242, 32, 'محلة \r\n', 1, 2),
(243, 32, 'هور رجب \r\n', 1, 2),
(245, 32, 'الضباط \r\n', 1, 2),
(246, 32, 'شهداء السيدية \r\n', 1, 2),
(247, 32, 'كفاءات السيدية', 1, 2),
(248, 32, 'البياع', 1, 2),
(249, 32, 'الاعلام', 1, 2),
(250, 32, 'دار \r\n', 1, 2),
(251, 32, 'المعالف', 1, 2),
(252, 32, 'حي التراث \r\n', 1, 2),
(253, 32, 'التعليم', 1, 2),
(254, 32, 'الشباب', 1, 2),
(255, 32, 'الري \r\n', 1, 2),
(256, 32, 'المواصلات\r\n', 1, 2),
(257, 32, 'الرسالة الأولى \r\n', 1, 2),
(258, 32, 'المواصلات الثانية \r\n', 1, 2),
(259, 32, 'الشرطة الرابعة \r\n', 1, 2),
(260, 32, 'الشرطة الخامسة \r\n', 1, 2),
(261, 32, 'حي الرفاف \r\n', 1, 2),
(262, 32, 'حي المخابرات \r\n', 1, 2),
(263, 32, 'تبوك \r\n', 1, 2),
(264, 32, 'البعامر \r\n', 1, 2),
(265, 32, 'الديوات', 1, 2),
(266, 32, 'الامانة', 1, 2),
(267, 32, 'الالفين \r\n', 1, 2),
(268, 32, 'بدر \r\n', 1, 2),
(269, 32, 'الطائي', 1, 2),
(270, 32, 'حي الفرات \r\n', 1, 2),
(271, 32, 'الخارجية \r\n', 1, 2),
(272, 32, 'حي الاطباء \r\n', 1, 2),
(273, 32, 'حي الجهاد \r\n', 1, 2),
(274, 32, 'الملحانية \r\n', 1, 2),
(275, 32, 'حي العامل \r\n', 1, 2),
(276, 32, 'حي حطين \r\n', 1, 2),
(277, 32, 'حي الداخلية \r\n', 1, 2),
(278, 32, 'حي الحمراء \r\n', 1, 2),
(279, 43, 'قضاء خان بني سعد', 1, 2),
(280, 43, 'قضاء الخالص \r\n', 1, 2),
(281, 42, 'قضاء الدواية\r\n', 1, 2),
(282, 42, 'قضاء الفجر\r\n', 1, 2),
(283, 42, 'قضاء النصر \r\n', 1, 2),
(284, 42, 'قضاء الغراف', 1, 2),
(285, 42, 'قضاء قلعة سكر\r\n', 1, 2),
(286, 42, 'قضاء البطحاء\r\n', 1, 2),
(287, 42, 'قضاء كرمة بني سعيد \r\n', 1, 2),
(288, 40, 'المحاويل\r\n', 1, 2),
(289, 40, 'كوثى\r\n', 1, 2),
(290, 40, 'الحمزة الغربي \r\n', 1, 2),
(291, 49, 'قضاء الزبيدية\r\n', 1, 2),
(292, 49, 'قضاء الموفقية\r\n', 1, 2),
(293, 48, 'قضاء طوز خورماتو\r\n', 1, 2),
(294, 48, 'قضاء آمرلي\r\n', 1, 2),
(295, 47, 'قضاء تلكيف\r\n', 1, 2),
(296, 47, 'قضاء سنجار \r\n', 1, 2),
(297, 47, 'قضاء مخمور \r\n', 1, 2),
(298, 47, 'قضاء الحضر\r\n', 1, 2),
(299, 39, 'قضاء شاربازير\r\n', 1, 2),
(300, 39, 'قضاء جمجمال\r\n', 1, 2),
(301, 39, 'قضاء قره داغ\r\n', 1, 2),
(302, 39, 'قضاء دربندخان\r\n', 1, 2),
(303, 38, 'قضاء جومان\r\n', 1, 2),
(304, 38, 'قضاء ميركسور\r\n', 1, 2),
(305, 38, 'قضاء خبات \r\n', 1, 2),
(306, 38, 'قضاء بنصلاوة \r\n', 1, 2),
(307, 37, 'قضاء المناذرة \r\n', 1, 2),
(308, 36, 'قضاء الشامية\r\n', 1, 2),
(309, 36, 'قضاء الشافعية\r\n', 1, 2),
(310, 36, 'قضاء السنية\r\n', 1, 2),
(311, 36, 'قضاء نفر\r\n', 1, 2),
(312, 36, 'قضاء آل بدير\r\n', 1, 2),
(313, 36, 'قضاء عفك\r\n', 1, 2),
(314, 33, 'البوعساف', 1, 2),
(315, 33, 'النساف', 1, 2),
(316, 33, 'حصيبة الشرقية\r\n', 1, 2),
(317, 33, 'المحمدي', 1, 2),
(318, 33, 'الفرات', 1, 2),
(319, 33, 'الريحانة', 1, 2),
(320, 33, 'الزاوية', 1, 2),
(321, 33, 'الثرثار', 1, 2),
(322, 33, 'الحقلانية', 1, 2),
(323, 33, 'الكرمة\r\n', 1, 2),
(324, 33, 'الحبانية', 1, 2),
(325, 33, 'الخالدية\r\n', 1, 2),
(326, 33, 'الوليد', 1, 2),
(327, 33, 'الساجرية', 1, 2),
(328, 33, 'عكاشات', 1, 2),
(329, 33, 'البغدادي', 1, 2),
(330, 33, 'كبيسة', 1, 2),
(331, 33, 'الكرابلة', 1, 2),
(332, 33, 'النخيب', 1, 2),
(333, 33, 'السجر', 1, 2),
(334, 33, 'الرحالية\r\n', 1, 2),
(335, 33, 'الجبة', 1, 2),
(336, 33, 'الحميرية', 1, 2),
(337, 33, 'الرمانة', 1, 2),
(338, 33, 'الهبارية', 1, 2),
(339, 33, 'بروانة', 1, 2),
(340, 33, 'العامرية', 1, 2),
(341, 33, 'عائلة', 1, 2),
(342, 33, 'العبيدي', 1, 2),
(343, 33, 'الصقلاوية', 1, 2),
(344, 33, 'الكسرة', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(2, 76, 466, 'ggg', '2024-07-12 17:52:48', '2024-09-11 12:34:49'),
(4, 200, 590, 'هلا احمد', '2024-09-20 13:19:28', '2024-09-20 13:19:28'),
(5, 200, 471, 'kxod', '2024-09-20 23:19:58', '2024-09-20 23:19:58'),
(6, 213, 466, 'hdhdh', '2024-09-21 14:33:47', '2024-09-21 14:33:47'),
(7, 213, 466, 'ggn', '2024-09-21 14:34:47', '2024-09-21 14:34:47'),
(8, 213, 466, 'hgggf', '2024-09-21 14:52:17', '2024-09-21 14:52:17'),
(9, 202, 464, 'تت', '2024-09-21 18:34:07', '2024-09-21 18:34:07'),
(10, 202, 464, 'djxhdbb', '2024-09-21 19:24:32', '2024-09-21 19:24:32'),
(11, 202, 464, 'djxbdj', '2024-09-21 19:24:37', '2024-09-21 19:24:37'),
(12, 239, 471, 'hello world', '2024-09-22 13:40:02', '2024-09-22 13:40:02'),
(13, 61, 471, 'ggff', '2024-09-23 16:14:47', '2024-09-23 16:14:47'),
(17, 200, 590, 'مرحبا', '2024-09-30 10:32:45', '2024-09-30 10:32:45'),
(18, 200, 471, 'بيييي', '2024-10-08 12:00:09', '2024-10-08 12:00:09'),
(19, 237, 590, 'فف', '2024-10-19 16:11:48', '2024-10-19 16:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int NOT NULL,
  `recieved_user` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `subject`, `sent_user`, `recieved_user`, `message`, `created_at`, `updated_at`) VALUES
(1, 'jdjfjfj', 213, 202, 'jdjfjjc', '2024-09-06 05:33:26', '2024-09-06 05:33:26'),
(2, 'djjfj', 213, 202, 'xnuxyxn', '2024-09-06 05:43:15', '2024-09-06 05:43:15'),
(4, 'jhjjb', 213, 202, 'ijhbj', '2024-09-06 17:39:46', '2024-09-06 17:39:46'),
(5, 'yttt', 213, 202, 'bbb', '2024-09-06 17:52:24', '2024-09-06 17:52:24'),
(8, 'ttttn', 213, 213, 'ttttn', '2024-09-08 12:41:24', '2024-09-08 12:41:24'),
(9, 't', 213, 98, 'ty', '2024-09-08 12:42:10', '2024-09-08 12:42:10'),
(10, 'qqqq', 213, 202, 'qqqq', '2024-09-08 12:43:59', '2024-09-08 12:43:59'),
(11, 'uuuuuu', 201, 98, 'uuuuuu', '2024-09-08 15:18:14', '2024-09-08 15:18:14'),
(13, 'مرحبا', 201, 201, 'مرحبا', '2024-09-20 12:44:48', '2024-09-20 12:44:48'),
(14, 'مرحبا ادمن احمد', 200, 200, 'هناك شكرى', '2024-09-20 13:17:43', '2024-09-20 13:17:43'),
(15, 'jhvv', 213, 213, 'bybtvrcrctbybybtvrcrvynh.g d,dvynyv', '2024-09-21 12:15:17', '2024-09-21 12:15:17'),
(16, 'vvtvtvtnunybybtbnbvrvunubtvrvynunyrccynimyvrv', 213, 213, 'ybyb', '2024-09-21 12:15:57', '2024-09-21 12:15:57'),
(17, 'm', 237, 237, 'b', '2024-09-21 22:38:43', '2024-09-21 22:38:43'),
(19, 'm', 225, 225, 'm', '2024-09-24 11:19:57', '2024-09-24 11:19:57'),
(21, 'مرحبا', 200, 200, 'اهلا', '2024-09-30 10:34:55', '2024-09-30 10:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
CREATE TABLE IF NOT EXISTS `counters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int NOT NULL DEFAULT '0',
  `todays_count` int NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 27, 0, NULL),
(2, 'referral', 'google.com', 928, 0, NULL),
(3, 'browser', 'Windows 10', 10537, 0, NULL),
(4, 'browser', 'Linux', 458, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 7494, 0, NULL),
(6, 'browser', 'Windows 7', 585, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 580, 0, NULL),
(9, 'referral', 'www.google.com', 117, 0, NULL),
(10, 'browser', 'Android', 1602, 0, NULL),
(11, 'browser', 'Mac OS X', 1148, 0, NULL),
(12, 'referral', 'l.facebook.com', 8, 0, NULL),
(14, 'browser', 'Windows XP', 24, 0, NULL),
(15, 'browser', 'Windows 8', 5, 0, NULL),
(16, 'browser', 'iPad', 10, 0, NULL),
(17, 'browser', 'Ubuntu', 16, 0, NULL),
(18, 'browser', 'iPhone', 1568, 0, NULL),
(19, 'referral', 'www.sandbox.paypal.com', 5, 0, NULL),
(20, 'referral', 'baidu.com', 3, 0, NULL),
(21, 'referral', 'org.telegram.messenger', 3, 0, NULL),
(22, 'referral', 'm.facebook.com', 11, 0, NULL),
(23, 'referral', 'ravemodal-dev.herokuapp.com', 1, 0, NULL),
(24, 'referral', NULL, 89, 0, NULL),
(25, 'referral', 'cpanel.masss.online', 1, 0, NULL),
(26, 'referral', 'com.google.android.googlequicksearchbox', 4, 0, NULL),
(27, 'referral', 'lm.facebook.com', 8, 0, NULL),
(28, 'referral', 'com.slack', 10, 0, NULL),
(29, 'referral', 'www.google.com.hk', 3, 0, NULL),
(30, 'browser', 'BlackBerry', 1, 0, NULL),
(31, 'browser', 'Windows 2000', 1, 0, NULL),
(32, 'referral', 's2897.fra1.stableserver.net', 1, 0, NULL),
(33, 'referral', 'org.telegram.ob', 1, 0, NULL),
(34, 'referral', 'EALANATEK.SITE', 1, 0, NULL),
(35, 'referral', 'hpanel.hostinger.com', 4, 0, NULL),
(36, 'referral', '127.0.0.1', 4, 0, NULL),
(37, 'referral', 'pentest-switzerland.com', 1, 0, NULL),
(38, 'referral', '16.24.106.161', 4, 0, NULL),
(39, 'referral', 'accounts.google.com', 1, 0, NULL),
(40, 'referral', 'azrar.co', 4, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `tax` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `tax`, `status`) VALUES
(2, 'IQ', 'العراق', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `category` int DEFAULT NULL,
  `sub_category` int DEFAULT NULL,
  `child_category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`, `coupon_type`, `category`, `sub_category`, `child_category`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20', NULL, NULL, NULL, NULL),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26', NULL, NULL, NULL, NULL),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08', NULL, NULL, NULL, NULL),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28', NULL, NULL, NULL, NULL),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20', NULL, NULL, NULL, NULL),
(6, 'rererere', 1, 5, '665', 1, 1, '2019-05-21', '2022-05-26', 'category', 4, NULL, NULL),
(7, 'abcd', 1, 5, NULL, 0, 1, '2021-09-12', '2021-09-21', 'category', 4, NULL, NULL),
(8, '12345', 0, 34, NULL, 1, 1, '2021-12-15', '2021-12-30', 'category', 4, NULL, NULL),
(9, 'proco', 1, 10, NULL, 0, 1, '2022-01-03', '2022-01-10', 'category', 5, NULL, NULL),
(10, 'procoo', 0, 10, NULL, 0, 1, '2022-09-06', '2022-09-30', 'category', 5, NULL, NULL),
(11, 'mmm', 0, 454, NULL, 0, 1, '2024-09-10', '2024-09-19', 'category', 54, NULL, NULL),
(15, 'azrar 11a', 0, 88, NULL, 0, 1, '2024-10-10', '2024-10-30', 'category', 73, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'IQD', 'IQD', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_riders`
--

DROP TABLE IF EXISTS `delivery_riders`;
CREATE TABLE IF NOT EXISTS `delivery_riders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `rider_id` int DEFAULT NULL,
  `pickup_point_id` int DEFAULT NULL,
  `service_area_id` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_riders`
--

INSERT INTO `delivery_riders` (`id`, `order_id`, `vendor_id`, `rider_id`, `pickup_point_id`, `service_area_id`, `status`) VALUES
(1, 133, 201, 1, 10, 1, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `deposit_number` varchar(255) DEFAULT NULL,
  `currency` blob,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `currency_value` double DEFAULT '0',
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8mb3_unicode_ci,
  `email_body` longtext COLLATE utf8mb3_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Cart', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`) VALUES
(1, 'Right my front it wound cause fully', '<div style=\"text-align: justify;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</div>'),
(3, 'Man particular insensible celebrated', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt, odio vitae elementum ultricies, mauris massa auctor ipsum, vitae finibus odio eros et dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Cras nec nisl ultricies, vestibulum turpis a, cursus erat. Sed lectus turpis, aliquam eget posuere a, congue non risus. Proin consequat, felis id venenatis porttitor, est lorem luctus nulla, a vehicula orci tortor eget erat. Nunc nec sodales mauris, in scelerisque libero. Proin urna felis, egestas id malesuada non, interdum ut mi. Morbi diam lorem, maximus in felis non, fringilla mollis urna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vestibulum pulvinar arcu eget ligula dictum, ac dignissim eros aliquam. Vivamus id elementum mauris. Vivamus iaculis nisi erat, at egestas diam rhoncus eget. Suspendisse at metus quam. Nullam egestas dolor nec est elementum tempus et sit amet est. Vestibulum eu diam sit amet enim varius efficitur. Proin laoreet sapien ac lacus euismod, et malesuada nibh consectetur.</p></div>'),
(4, 'Civilly why how end viewing related', '<div style=\"text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">هل صليت العصر</p></div>');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

DROP TABLE IF EXISTS `favorite_sellers`;
CREATE TABLE IF NOT EXISTS `favorite_sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13),
(2, 22, 13),
(3, 22, 13),
(4, 86, 13),
(5, 86, 13),
(6, 86, 13),
(7, 86, 13),
(8, 86, 13),
(9, 86, 13),
(10, 86, 13),
(11, 86, 13),
(12, 86, 13),
(13, 200, 13),
(14, 200, 13),
(15, 200, 200),
(16, 175, 200);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

DROP TABLE IF EXISTS `fonts`;
CREATE TABLE IF NOT EXISTS `fonts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_default` tinyint DEFAULT '0',
  `font_family` varchar(100) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 0, 'Roboto', 'Roboto'),
(5, 0, 'Pangolin', 'Pangolin'),
(6, 0, 'Dancing Script', 'Dancing+Script'),
(9, 0, 'Montserrat-Arabic-Bold', 'Montserrat-Arabic-Bold'),
(10, 0, 'Montserrat-Arabic-Light', 'Montserrat-Arabic-Light'),
(11, 0, 'Montserrat-Arabic-Medium', 'Montserrat-Arabic-Medium'),
(12, 0, 'Montserrat-Arabic-Regular', 'Montserrat-Arabic-Regular'),
(13, 0, 'Roboto-Light', 'Roboto-Light'),
(14, 0, 'https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap', 'https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap'),
(15, 0, 'Merriweather', 'Merriweather'),
(17, 1, 'Noto Kufi Arabic', 'Noto+Kufi+Arabic');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(217, 159, '1570085246audi-automobile-car-909907.jpg'),
(218, 159, '1570085246automobile-automotive-car-112460.jpg'),
(275, 178, '16393772019VK5FLtl.jpg'),
(276, 178, '1639377201krle8zlu.jpg'),
(277, 175, '16393776956AA40xFx.jpg'),
(278, 175, '16393776955klqsJ7E.jpg'),
(279, 175, '1639377695kWR5DE5x.jpg'),
(280, 169, '1639377747A3Pknjfy.jpg'),
(281, 169, '1639377747dxsp2VSK.jpg'),
(282, 164, '16393780458Yr3ZAOE.jpg'),
(283, 164, '1639378045UMFwFsPS.jpg'),
(284, 164, '16393780453ZLjK3mm.jpg'),
(285, 163, '1639378095FKuTnjNm.jpg'),
(286, 163, '1639378095fjzWQrCS.jpg'),
(287, 163, '16393780950yzaxhTO.jpg'),
(291, 161, '1639378430m3XEmUer.jpg'),
(292, 161, '1639378430qqzusNiP.jpg'),
(293, 161, '1639378430euqFZ796.jpg'),
(294, 160, '1639392393qABYd9Jp.jpg'),
(295, 160, '1639392393M7WZcZyF.jpg'),
(296, 160, '1639392394NcXuluij.jpg'),
(297, 144, '1639392542Hi8kqofd.jpg'),
(298, 144, '1639392543aNErwy42.jpg'),
(299, 144, '1639392543TClWju2X.jpg'),
(312, 128, '16394564079EvhKQXl.jpg'),
(313, 128, '1639456407vtTRoAr7.jpg'),
(314, 128, '1639456408cd9XLUJ1.jpg'),
(326, 170, '1646901584l8MraaNk.jpg'),
(327, 170, '1646901584I1CFhs35.jpg'),
(328, 170, '1646901584Okkqp3E2.jpg'),
(329, 170, '1646901585daDTZaH9.jpg'),
(330, 168, '1648013520wLz6NjQ8.jpg'),
(331, 168, '1648013521CUVnKkuW.jpg'),
(332, 168, '1648013521ZCJGdOET.jpg'),
(333, 168, '1648013521cfKHnzKx.jpg'),
(334, 168, '1648013521nwKHsHXv.jpg'),
(335, 165, '16480136903vx2nVLT.jpg'),
(336, 165, '1648013690zDZkb083.jpg'),
(337, 165, '1648013690prNoHG1K.jpg'),
(344, 165, '1720707815roR5zy6S.jpg'),
(346, 429, '1721306099jpeg.jpeg'),
(363, 459, '1725056718VEaxNs8e.jpg'),
(364, 459, '17250567184kvYWdFz.jpg'),
(365, 459, '17250567187VdgHRs9.jpg'),
(366, 471, '1725056865mMWVkc1d.jpg'),
(367, 471, '1725056865kajNggbg.jpg'),
(368, 471, '1725056872Hcu8kX0O.jpg'),
(369, 466, '1725704467Uow97xrS.jpg'),
(370, 466, '17257044678QUwFPEe.jpg'),
(371, 466, '1725704467KiVqqJUX.jpg'),
(372, 465, '1725705180T2srDoUh.jpg'),
(373, 465, '1725705180RtvMSp4n.jpg'),
(374, 465, '1725705180qTmUvC7v.jpg'),
(378, 462, '1725705435KuZsRxb1.jpg'),
(379, 462, '1725705444IGkjg9Ns.jpg'),
(380, 462, '1725705453k2wIKhd9.jpg'),
(381, 461, '1725705582FL5kOk8P.jpg'),
(382, 461, '1725705602foffSz3T.jpg'),
(383, 461, '17257056126TVJeJiJ.jpg'),
(384, 460, '1725705731FtqemwpF.jpg'),
(385, 460, '1725705744D9PHbMgb.jpg'),
(386, 460, '1725705749xL8ZCUaW.jpg'),
(387, 458, '1725706004TLIVHy04.jpg'),
(388, 458, '1725706021msiYQMdI.jpg'),
(389, 458, '17257060213MM935RI.jpg'),
(390, 457, '1725706158KVCKps99.jpg'),
(391, 457, '1725706164srB7nQr3.jpg'),
(392, 457, '1725706164sLNGO6Kq.jpg'),
(393, 456, '1725706277JwSDN1za.jpg'),
(394, 456, '1725706282sKW9GgQi.jpg'),
(395, 456, '17257062936cUujde6.jpg'),
(396, 455, '17257063951Xhz72oY.jpg'),
(397, 455, '1725706398wda75X8K.jpg'),
(399, 455, '1725706415gPm1zEJ3.jpg'),
(400, 580, '1725735381ZZTip0Ze.jpg'),
(401, 580, '1725735386d93xoSEX.jpg'),
(402, 580, '17257353924UUUq6XG.jpg'),
(417, 464, '1725735889j5QtJKaT.jpg'),
(418, 464, '1725735896WDtmajDr.jpg'),
(425, 590, '1725881082fGPCKQHj.jpg'),
(426, 590, '1725881082KVQYBAuz.jpg'),
(427, 590, '17258810825qBTHmD6.jpg'),
(436, 658, '1729070691ZsuMKBvk.jpg'),
(437, 658, '1729070691aJR81tkp.jpg'),
(438, 658, '1729070691Wm2U0Fs9.jpg'),
(439, 667, '1729078047download2png.png'),
(440, 667, '1729078047download3jpeg.jpeg'),
(441, 667, '1729078047download3png.png'),
(442, 667, '1729078047download4jpeg.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

DROP TABLE IF EXISTS `generalsettings`;
CREATE TABLE IF NOT EXISTS `generalsettings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `wholesell` int NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `capcha_secret_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capcha_site_key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_404` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_banner_500` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `breadcrumb_banner` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `header_color` enum('light','dark') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `is_buy_now` tinyint NOT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT '1',
  `verify_product` tinyint(1) NOT NULL DEFAULT '0',
  `page_count` int NOT NULL DEFAULT '0',
  `flash_count` int NOT NULL DEFAULT '0',
  `hot_count` int NOT NULL DEFAULT '0',
  `new_count` int NOT NULL DEFAULT '0',
  `sale_count` int NOT NULL DEFAULT '0',
  `best_seller_count` int NOT NULL DEFAULT '0',
  `popular_count` int NOT NULL DEFAULT '0',
  `top_rated_count` int NOT NULL DEFAULT '0',
  `big_save_count` int NOT NULL DEFAULT '0',
  `trending_count` int NOT NULL DEFAULT '0',
  `seller_product_count` int NOT NULL DEFAULT '0',
  `wishlist_count` int NOT NULL DEFAULT '0',
  `vendor_page_count` int NOT NULL DEFAULT '0',
  `min_price` double NOT NULL DEFAULT '0',
  `max_price` double NOT NULL DEFAULT '0',
  `post_count` tinyint(1) NOT NULL DEFAULT '0',
  `product_page` text COLLATE utf8mb4_unicode_ci,
  `wishlist_page` text COLLATE utf8mb4_unicode_ci,
  `is_contact_seller` tinyint(1) NOT NULL DEFAULT '0',
  `is_debug` tinyint(1) NOT NULL DEFAULT '0',
  `decimal_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cookie` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate` tinyint(1) NOT NULL DEFAULT '0',
  `product_affilate_bonus` int NOT NULL DEFAULT '0',
  `is_reward` int NOT NULL DEFAULT '0',
  `reward_point` int NOT NULL DEFAULT '0',
  `reward_dolar` int NOT NULL DEFAULT '0',
  `physical` tinyint NOT NULL DEFAULT '1',
  `digital` tinyint NOT NULL DEFAULT '1',
  `license` tinyint NOT NULL DEFAULT '1',
  `listing` tinyint NOT NULL DEFAULT '1',
  `affilite` tinyint NOT NULL DEFAULT '1',
  `partner_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_text` longtext COLLATE utf8mb4_unicode_ci,
  `deal_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_details` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_time` date DEFAULT NULL,
  `deal_background` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `is_disqus`, `disqus`, `guest_checkout`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `shipping_cost`, `mail_driver`, `mail_host`, `mail_port`, `mail_encryption`, `mail_user`, `mail_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `is_affilate`, `affilate_charge`, `affilate_banner`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `footer_color`, `copyright_color`, `copyright`, `is_admin_loader`, `is_verification_email`, `wholesell`, `is_capcha`, `capcha_secret_key`, `capcha_site_key`, `error_banner_404`, `error_banner_500`, `is_popup`, `popup_background`, `breadcrumb_banner`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `footer_logo`, `show_stock`, `is_maintain`, `header_color`, `maintain_text`, `is_buy_now`, `version`, `affilate_product`, `verify_product`, `page_count`, `flash_count`, `hot_count`, `new_count`, `sale_count`, `best_seller_count`, `popular_count`, `top_rated_count`, `big_save_count`, `trending_count`, `seller_product_count`, `wishlist_count`, `vendor_page_count`, `min_price`, `max_price`, `post_count`, `product_page`, `wishlist_page`, `is_contact_seller`, `is_debug`, `decimal_separator`, `thousand_separator`, `is_cookie`, `product_affilate`, `product_affilate_bonus`, `is_reward`, `reward_point`, `reward_dolar`, `physical`, `digital`, `license`, `listing`, `affilite`, `partner_title`, `partner_text`, `deal_title`, `deal_details`, `deal_time`, `deal_background`, `video_link`) VALUES
(1, '1720711542JPG-02jpg.jpg', '1727891247Annotation2024-09-09011410png.png', 'azrar', '#423fe0', '1717586531Navy-GIFLoopgif.gif', '17278804721717586531Navy-GIFLoopgif1gif.gif', 1, '66940a68becc2fed6924bf58/1i2p4hau5', 1, 1, 1, 'nun', 1, 1, 0, 0, 5, 'smtp', 'azrar.co', '456', 'tls', 'support@azrar.co', 'TbGJLM2W5Qy9nC', 'support@azrar.co', 'AZRAR CO', 0, 0, 1, 1, 10, '15587771131554048228onepiece.jpeg', 0, 0, 1, 1, 1, 2, '#143250', '#02020c', 'صنع بأزرار 2024 جميع حقوق النشر محفوظة', 1, 0, 100, 0, '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '1727891458Annotation2024-09-08223956png.png', '1587792059error-500.png', 0, '1727891375Annotation2024-09-08223956png.png', '1727891432Annotation2024-09-08223727png.png', '1718026881JPG-12jpg.jpg', '1727890908Annotation2024-09-09011410png.png', '#8c52fddd', 1, 1, '1720711287testpng.png', 1, 0, 'light', '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"line-height: 1.08333; text-align: center;\"><font size=\"6\">UNDER MAINTENANCE!</font></h1><div><font size=\"6\"><br></font></div><div><font size=\"6\"><br></font></div>', 1, '2.0', 1, 0, 10, 12, 12, 8, 8, 8, 6, 4, 10, 6, 8, 10, 24, 1000, 5000000, 4, NULL, '12,24,36,48,60', 1, 1, '.', '.', 1, 1, 5, 0, 10, 15, 1, 1, 1, 1, 0, 'Our Partners', 'welcom to azrar partnership program', 'انقر فوق \"التسوق\" الآن للاطلاع على جميع عروض المنتج', 'اشتري هذا المنتج لمدة محددة اشتري هذا المنتج لمدة محددة اشتري هذا المنتج لمدة محددة اشتري هذا المنتج لمدة محددة اشتري هذا المنتج لمدة محددة', '2024-10-01', '1720886215testpng.png', 'https://ealanatek.site/tutorial.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'العربية', '17173493681JWu2JXL.json', '17173493681JWu2JXL', 1),
(9, 0, 'English', '1605519199OsGO7B86.json', '1605519199OsGO7B86', 0),
(10, 0, 'الكوردية', '17173493681JWu2KUR.json', '17173493681JWu2KUR', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversation_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int DEFAULT NULL,
  `recieved_user` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `message`, `sent_user`, `recieved_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'jdjfjjc', 213, NULL, '2024-09-06 05:33:26', '2024-09-06 05:33:26'),
(2, 2, 'xnuxyxn', 213, NULL, '2024-09-06 05:43:15', '2024-09-06 05:43:15'),
(4, 4, 'ijhbj', 213, NULL, '2024-09-06 17:39:46', '2024-09-06 17:39:46'),
(5, 1, 'gghhvftfd', 213, NULL, '2024-09-06 17:45:02', '2024-09-06 17:45:02'),
(6, 1, 'gghhvftfd', 213, NULL, '2024-09-06 17:45:34', '2024-09-06 17:45:34'),
(7, 5, 'bbb', 213, NULL, '2024-09-06 17:52:24', '2024-09-06 17:52:24'),
(8, 1, 'gggg', 213, NULL, '2024-09-06 17:53:20', '2024-09-06 17:53:20'),
(9, 1, 'gggg', 213, NULL, '2024-09-06 17:53:22', '2024-09-06 17:53:22'),
(10, 1, 'gggg', 213, NULL, '2024-09-06 17:53:28', '2024-09-06 17:53:28'),
(13, 5, 'مرحبا احمد', NULL, 202, '2024-09-08 11:42:24', '2024-09-08 11:42:24'),
(14, 8, 'ttttn', 213, NULL, '2024-09-08 12:41:24', '2024-09-08 12:41:24'),
(15, 9, 'ty', 213, NULL, '2024-09-08 12:42:10', '2024-09-08 12:42:10'),
(16, 10, 'qqqq', 213, NULL, '2024-09-08 12:43:59', '2024-09-08 12:43:59'),
(17, 11, 'uuuuuu', 201, 200, '2024-09-08 15:18:14', '2024-09-08 15:18:14'),
(19, 1, 'rrrrrrrrrrrrrrrrrrrrrr', 22, 98, '2024-09-08 15:43:15', '2024-09-08 15:43:15'),
(20, 2, 'بببببببببببببببببب', 22, 98, '2024-09-08 16:04:29', '2024-09-08 16:04:29'),
(22, 4, 'صصصصصصصصصصصصصصص', 22, 98, '2024-09-08 16:12:28', '2024-09-08 16:12:28'),
(23, 5, 'صصصصصصصصصصصصصصص', 22, 200, '2024-09-08 16:13:54', '2024-09-08 16:13:54'),
(25, 7, 'gggggggggg', 22, 98, '2024-09-08 16:18:45', '2024-09-08 16:18:45'),
(26, 8, 'ggggggggggggggggggggggg', 22, 202, '2024-09-08 16:23:01', '2024-09-08 16:23:01'),
(27, 10, 'kjbkbkbb', NULL, 202, '2024-09-08 16:28:39', '2024-09-08 16:28:39'),
(28, 1, 'gggggggggggggggg', 202, 98, '2024-09-10 22:41:31', '2024-09-10 22:41:31'),
(29, 1, 'llllllllllllllllllllllllllllllll', 175, 98, '2024-09-12 16:08:02', '2024-09-12 16:08:02'),
(30, 1, 'ssssssssssssss', 200, 98, '2024-09-13 11:33:23', '2024-09-13 11:33:23'),
(31, 2, 'sss', 200, 171, '2024-09-13 11:34:24', '2024-09-13 11:34:24'),
(33, 4, 'dddd', 200, 200, '2024-09-13 16:00:09', '2024-09-13 16:00:09'),
(34, 5, 'dddd', 200, 200, '2024-09-13 16:00:28', '2024-09-13 16:00:28'),
(36, 7, 'kkkkkk', 200, 201, '2024-09-13 16:03:45', '2024-09-13 16:03:45'),
(37, 8, 'dddd', 200, 202, '2024-09-13 16:06:51', '2024-09-13 16:06:51'),
(38, 13, 'مرحبا', 201, NULL, '2024-09-20 12:44:48', '2024-09-20 12:44:48'),
(39, 14, 'هناك شكرى', 200, NULL, '2024-09-20 13:17:43', '2024-09-20 13:17:43'),
(40, 14, 'M', 200, NULL, '2024-09-20 14:35:12', '2024-09-20 14:35:12'),
(41, 15, 'bybtvrcrctbybybtvrcrvynh.g d,dvynyv', 213, NULL, '2024-09-21 12:15:17', '2024-09-21 12:15:17'),
(42, 16, 'ybyb', 213, NULL, '2024-09-21 12:15:57', '2024-09-21 12:15:57'),
(43, 17, 'b', 237, NULL, '2024-09-21 22:38:43', '2024-09-21 22:38:43'),
(45, 19, 'm', 225, NULL, '2024-09-24 11:19:57', '2024-09-24 11:19:57'),
(47, 21, 'اهلا', 200, NULL, '2024-09-30 10:34:55', '2024-09-30 10:34:55'),
(48, 14, 'll', 200, NULL, '2024-10-02 13:48:19', '2024-10-02 13:48:19'),
(49, 11, 'مرحبا ادمن', 200, 61, '2024-10-02 15:38:25', '2024-10-02 15:38:25'),
(50, 14, 'لم ترد', 200, NULL, '2024-10-02 15:38:44', '2024-10-02 15:38:44'),
(51, 13, 'sss', 200, 78, '2024-10-02 17:20:14', '2024-10-02 17:20:14'),
(52, 14, 'الوو', 200, NULL, '2024-10-02 17:20:28', '2024-10-02 17:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_06_02_125919_add_video_link_to_general_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(28, NULL, NULL, NULL, 161, NULL, 1, '2024-06-29 09:32:20', '2024-06-30 14:14:23'),
(102, NULL, 92, NULL, NULL, NULL, 1, '2024-07-15 14:16:26', '2024-09-09 22:57:08'),
(103, 62, NULL, NULL, NULL, NULL, 1, '2024-07-15 15:15:59', '2024-09-09 23:18:58'),
(104, 63, NULL, NULL, NULL, NULL, 1, '2024-07-15 16:10:54', '2024-09-09 23:18:58'),
(105, NULL, 93, NULL, NULL, NULL, 1, '2024-07-15 17:00:26', '2024-09-09 22:57:08'),
(108, NULL, 98, NULL, NULL, NULL, 1, '2024-07-18 12:09:28', '2024-09-09 22:57:08'),
(109, NULL, 99, NULL, NULL, NULL, 1, '2024-07-18 12:26:11', '2024-09-09 22:57:08'),
(110, NULL, 100, NULL, NULL, NULL, 1, '2024-07-18 12:54:37', '2024-09-09 22:57:08'),
(111, NULL, 101, NULL, NULL, NULL, 1, '2024-07-24 00:10:30', '2024-09-09 22:57:08'),
(112, NULL, 102, NULL, NULL, NULL, 1, '2024-07-24 20:35:12', '2024-09-09 22:57:08'),
(113, NULL, 103, NULL, NULL, NULL, 1, '2024-07-25 01:27:32', '2024-09-09 22:57:08'),
(114, NULL, 104, NULL, NULL, NULL, 1, '2024-08-01 04:20:21', '2024-09-09 22:57:08'),
(115, NULL, 105, NULL, NULL, NULL, 1, '2024-08-01 04:26:20', '2024-09-09 22:57:08'),
(116, NULL, 106, NULL, NULL, NULL, 1, '2024-08-01 11:14:12', '2024-09-09 22:57:08'),
(117, NULL, 107, NULL, NULL, NULL, 1, '2024-08-02 05:44:29', '2024-09-09 22:57:08'),
(118, NULL, 108, NULL, NULL, NULL, 1, '2024-08-03 18:42:04', '2024-09-09 22:57:08'),
(119, NULL, 109, NULL, NULL, NULL, 1, '2024-08-03 18:51:00', '2024-09-09 22:57:08'),
(120, NULL, 110, NULL, NULL, NULL, 1, '2024-08-04 15:15:07', '2024-09-09 22:57:08'),
(121, NULL, 111, NULL, NULL, NULL, 1, '2024-08-04 15:16:40', '2024-09-09 22:57:08'),
(122, NULL, 112, NULL, NULL, NULL, 1, '2024-08-04 15:59:30', '2024-09-09 22:57:08'),
(123, NULL, 113, NULL, NULL, NULL, 1, '2024-08-04 16:07:12', '2024-09-09 22:57:08'),
(124, NULL, 114, NULL, NULL, NULL, 1, '2024-08-04 16:35:37', '2024-09-09 22:57:08'),
(125, NULL, 115, NULL, NULL, NULL, 1, '2024-08-04 18:04:34', '2024-09-09 22:57:08'),
(126, NULL, 116, NULL, NULL, NULL, 1, '2024-08-04 20:23:58', '2024-09-09 22:57:08'),
(127, NULL, 117, NULL, NULL, NULL, 1, '2024-08-04 20:28:37', '2024-09-09 22:57:08'),
(128, NULL, 118, NULL, NULL, NULL, 1, '2024-08-04 20:29:35', '2024-09-09 22:57:08'),
(129, NULL, 119, NULL, NULL, NULL, 1, '2024-08-04 20:54:43', '2024-09-09 22:57:08'),
(130, NULL, 120, NULL, NULL, NULL, 1, '2024-08-05 14:57:49', '2024-09-09 22:57:08'),
(131, NULL, 121, NULL, NULL, NULL, 1, '2024-08-05 15:00:24', '2024-09-09 22:57:08'),
(132, NULL, 134, NULL, NULL, NULL, 1, '2024-08-05 15:25:36', '2024-09-09 22:57:08'),
(133, NULL, 137, NULL, NULL, NULL, 1, '2024-08-05 15:50:02', '2024-09-09 22:57:08'),
(134, NULL, 139, NULL, NULL, NULL, 1, '2024-08-05 15:52:31', '2024-09-09 22:57:08'),
(135, NULL, 140, NULL, NULL, NULL, 1, '2024-08-05 15:54:46', '2024-09-09 22:57:08'),
(136, NULL, 141, NULL, NULL, NULL, 1, '2024-08-05 15:57:39', '2024-09-09 22:57:08'),
(137, NULL, 142, NULL, NULL, NULL, 1, '2024-08-05 15:59:55', '2024-09-09 22:57:08'),
(138, NULL, 145, NULL, NULL, NULL, 1, '2024-08-05 16:37:44', '2024-09-09 22:57:08'),
(139, NULL, 147, NULL, NULL, NULL, 1, '2024-08-05 17:27:23', '2024-09-09 22:57:08'),
(140, NULL, 150, NULL, NULL, NULL, 1, '2024-08-05 17:52:18', '2024-09-09 22:57:08'),
(141, NULL, 154, NULL, NULL, NULL, 1, '2024-08-05 18:56:42', '2024-09-09 22:57:08'),
(142, NULL, 155, NULL, NULL, NULL, 1, '2024-08-05 19:09:06', '2024-09-09 22:57:08'),
(143, NULL, 156, NULL, NULL, NULL, 1, '2024-08-05 19:10:13', '2024-09-09 22:57:08'),
(144, NULL, 157, NULL, NULL, NULL, 1, '2024-08-05 19:19:50', '2024-09-09 22:57:08'),
(145, NULL, 158, NULL, NULL, NULL, 1, '2024-08-05 19:25:37', '2024-09-09 22:57:08'),
(146, NULL, 162, NULL, NULL, NULL, 1, '2024-08-05 19:44:09', '2024-09-09 22:57:08'),
(147, NULL, 163, NULL, NULL, NULL, 1, '2024-08-05 19:45:55', '2024-09-09 22:57:08'),
(148, NULL, 164, NULL, NULL, NULL, 1, '2024-08-05 19:51:49', '2024-09-09 22:57:08'),
(149, NULL, 165, NULL, NULL, NULL, 1, '2024-08-05 19:56:10', '2024-09-09 22:57:08'),
(150, NULL, 166, NULL, NULL, NULL, 1, '2024-08-06 19:53:25', '2024-09-09 22:57:08'),
(151, NULL, 171, NULL, NULL, NULL, 1, '2024-08-07 08:18:47', '2024-09-09 22:57:08'),
(152, NULL, 174, NULL, NULL, NULL, 1, '2024-08-07 22:19:34', '2024-09-09 22:57:08'),
(153, NULL, 175, NULL, NULL, NULL, 1, '2024-08-07 23:36:54', '2024-09-09 22:57:08'),
(154, NULL, 176, NULL, NULL, NULL, 1, '2024-08-07 23:37:17', '2024-09-09 22:57:08'),
(155, NULL, 177, NULL, NULL, NULL, 1, '2024-08-07 23:37:47', '2024-09-09 22:57:08'),
(156, NULL, 178, NULL, NULL, NULL, 1, '2024-08-07 23:37:57', '2024-09-09 22:57:08'),
(157, NULL, 179, NULL, NULL, NULL, 1, '2024-08-07 23:38:13', '2024-09-09 22:57:08'),
(158, NULL, 180, NULL, NULL, NULL, 1, '2024-08-07 23:43:34', '2024-09-09 22:57:08'),
(159, NULL, 181, NULL, NULL, NULL, 1, '2024-08-07 23:44:30', '2024-09-09 22:57:08'),
(160, NULL, 182, NULL, NULL, NULL, 1, '2024-08-07 23:46:51', '2024-09-09 22:57:08'),
(161, NULL, 183, NULL, NULL, NULL, 1, '2024-08-07 23:48:20', '2024-09-09 22:57:08'),
(162, NULL, 185, NULL, NULL, NULL, 1, '2024-08-08 00:03:52', '2024-09-09 22:57:08'),
(163, NULL, 186, NULL, NULL, NULL, 1, '2024-08-08 00:22:31', '2024-09-09 22:57:08'),
(164, NULL, 187, NULL, NULL, NULL, 1, '2024-08-08 01:01:48', '2024-09-09 22:57:08'),
(165, NULL, 188, NULL, NULL, NULL, 1, '2024-08-08 02:07:09', '2024-09-09 22:57:08'),
(166, NULL, 189, NULL, NULL, NULL, 1, '2024-08-08 02:08:39', '2024-09-09 22:57:08'),
(167, NULL, 190, NULL, NULL, NULL, 1, '2024-08-08 02:12:06', '2024-09-09 22:57:08'),
(168, NULL, 191, NULL, NULL, NULL, 1, '2024-08-08 02:12:40', '2024-09-09 22:57:08'),
(169, NULL, 192, NULL, NULL, NULL, 1, '2024-08-08 02:14:39', '2024-09-09 22:57:08'),
(170, NULL, 193, NULL, NULL, NULL, 1, '2024-08-08 02:20:40', '2024-09-09 22:57:08'),
(171, NULL, 194, NULL, NULL, NULL, 1, '2024-08-08 02:26:02', '2024-09-09 22:57:08'),
(172, NULL, 195, NULL, NULL, NULL, 1, '2024-08-08 02:27:34', '2024-09-09 22:57:08'),
(173, NULL, 196, NULL, NULL, NULL, 1, '2024-08-08 06:33:04', '2024-09-09 22:57:08'),
(174, NULL, 197, NULL, NULL, NULL, 1, '2024-08-11 02:03:22', '2024-09-09 22:57:08'),
(175, NULL, 198, NULL, NULL, NULL, 1, '2024-08-11 02:04:41', '2024-09-09 22:57:08'),
(176, NULL, 199, NULL, NULL, NULL, 1, '2024-08-11 02:16:14', '2024-09-09 22:57:08'),
(177, NULL, 200, NULL, NULL, NULL, 1, '2024-08-11 03:21:48', '2024-09-09 22:57:08'),
(178, 64, NULL, NULL, NULL, NULL, 1, '2024-08-16 10:23:19', '2024-09-09 23:18:58'),
(179, 65, NULL, NULL, NULL, NULL, 1, '2024-08-16 10:26:15', '2024-09-09 23:18:58'),
(180, 66, NULL, NULL, NULL, NULL, 1, '2024-08-16 10:26:50', '2024-09-09 23:18:58'),
(181, 67, NULL, NULL, NULL, NULL, 1, '2024-08-16 10:27:21', '2024-09-09 23:18:58'),
(182, 68, NULL, NULL, NULL, NULL, 1, '2024-08-15 19:31:35', '2024-09-09 23:18:58'),
(183, 69, NULL, NULL, NULL, NULL, 1, '2024-08-15 19:57:25', '2024-09-09 23:18:58'),
(184, 70, NULL, NULL, NULL, NULL, 1, '2024-08-15 20:51:41', '2024-09-09 23:18:58'),
(185, 71, NULL, NULL, NULL, NULL, 1, '2024-08-15 22:49:56', '2024-09-09 23:18:58'),
(186, 72, NULL, NULL, NULL, NULL, 1, '2024-08-15 22:51:28', '2024-09-09 23:18:58'),
(187, 73, NULL, NULL, NULL, NULL, 1, '2024-08-15 22:54:40', '2024-09-09 23:18:58'),
(188, 74, NULL, NULL, NULL, NULL, 1, '2024-08-15 23:09:55', '2024-09-09 23:18:58'),
(189, 75, NULL, NULL, NULL, NULL, 1, '2024-08-15 23:22:43', '2024-09-09 23:18:58'),
(190, 76, NULL, NULL, NULL, NULL, 1, '2024-08-15 23:24:54', '2024-09-09 23:18:58'),
(191, 77, NULL, NULL, NULL, NULL, 1, '2024-08-15 23:44:48', '2024-09-09 23:18:58'),
(192, 78, NULL, NULL, NULL, NULL, 1, '2024-08-16 00:42:14', '2024-09-09 23:18:58'),
(193, 79, NULL, NULL, NULL, NULL, 1, '2024-08-16 10:43:53', '2024-09-09 23:18:58'),
(194, 80, NULL, NULL, NULL, NULL, 1, '2024-08-16 14:05:32', '2024-09-09 23:18:58'),
(195, 81, NULL, NULL, NULL, NULL, 1, '2024-08-16 17:01:45', '2024-09-09 23:18:58'),
(196, 82, NULL, NULL, NULL, NULL, 1, '2024-08-16 18:37:58', '2024-09-09 23:18:58'),
(197, 83, NULL, NULL, NULL, NULL, 1, '2024-08-16 18:41:06', '2024-09-09 23:18:58'),
(198, 84, NULL, NULL, NULL, NULL, 1, '2024-08-16 18:45:40', '2024-09-09 23:18:58'),
(199, 85, NULL, NULL, NULL, NULL, 1, '2024-08-16 18:46:40', '2024-09-09 23:18:58'),
(200, 86, NULL, NULL, NULL, NULL, 1, '2024-08-16 18:48:37', '2024-09-09 23:18:58'),
(201, 87, NULL, NULL, NULL, NULL, 1, '2024-08-16 18:52:01', '2024-09-09 23:18:58'),
(202, 88, NULL, NULL, NULL, NULL, 1, '2024-08-16 18:53:40', '2024-09-09 23:18:58'),
(203, 89, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:01:57', '2024-09-09 23:18:58'),
(204, 90, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:25:29', '2024-09-09 23:18:58'),
(205, 91, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:26:16', '2024-09-09 23:18:58'),
(206, 92, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:30:14', '2024-09-09 23:18:58'),
(207, 93, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:31:33', '2024-09-09 23:18:58'),
(208, 94, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:38:56', '2024-09-09 23:18:58'),
(209, 95, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:46:29', '2024-09-09 23:18:58'),
(210, 96, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:49:35', '2024-09-09 23:18:58'),
(211, 97, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:56:23', '2024-09-09 23:18:58'),
(212, 98, NULL, NULL, NULL, NULL, 1, '2024-08-16 19:57:33', '2024-09-09 23:18:58'),
(213, 99, NULL, NULL, NULL, NULL, 1, '2024-08-16 22:19:27', '2024-09-09 23:18:58'),
(214, 100, NULL, NULL, NULL, NULL, 1, '2024-08-16 22:50:35', '2024-09-09 23:18:58'),
(215, 101, NULL, NULL, NULL, NULL, 1, '2024-08-17 11:23:49', '2024-09-09 23:18:58'),
(216, NULL, 201, NULL, NULL, NULL, 1, '2024-08-17 14:31:27', '2024-09-09 22:57:08'),
(217, NULL, 202, NULL, NULL, NULL, 1, '2024-08-17 16:09:30', '2024-09-09 22:57:08'),
(218, 102, NULL, NULL, NULL, NULL, 1, '2024-08-17 22:06:32', '2024-09-09 23:18:58'),
(219, 103, NULL, NULL, NULL, NULL, 1, '2024-08-18 15:28:01', '2024-09-09 23:18:58'),
(220, NULL, 203, NULL, NULL, NULL, 1, '2024-08-18 15:46:52', '2024-09-09 22:57:08'),
(221, NULL, 204, NULL, NULL, NULL, 1, '2024-08-18 23:13:18', '2024-09-09 22:57:08'),
(222, NULL, 205, NULL, NULL, NULL, 1, '2024-08-18 23:15:15', '2024-09-09 22:57:08'),
(223, 104, NULL, NULL, NULL, NULL, 1, '2024-08-19 21:17:37', '2024-09-09 23:18:58'),
(224, 105, NULL, NULL, NULL, NULL, 1, '2024-08-20 02:19:21', '2024-09-09 23:18:58'),
(225, 106, NULL, NULL, NULL, NULL, 1, '2024-08-20 02:21:51', '2024-09-09 23:18:58'),
(226, 107, NULL, NULL, NULL, NULL, 1, '2024-08-21 10:12:25', '2024-09-09 23:18:58'),
(227, 108, NULL, NULL, NULL, NULL, 1, '2024-08-21 12:48:47', '2024-09-09 23:18:58'),
(228, 109, NULL, NULL, NULL, NULL, 1, '2024-08-21 12:49:51', '2024-09-09 23:18:58'),
(229, 110, NULL, NULL, NULL, NULL, 1, '2024-08-22 11:00:52', '2024-09-09 23:18:58'),
(230, 111, NULL, NULL, NULL, NULL, 1, '2024-08-22 11:03:52', '2024-09-09 23:18:58'),
(231, 112, NULL, NULL, NULL, NULL, 1, '2024-08-23 15:54:52', '2024-09-09 23:18:58'),
(232, 113, NULL, NULL, NULL, NULL, 1, '2024-08-23 19:38:24', '2024-09-09 23:18:58'),
(233, 114, NULL, NULL, NULL, NULL, 1, '2024-08-23 19:40:22', '2024-09-09 23:18:58'),
(234, 115, NULL, NULL, NULL, NULL, 1, '2024-08-25 12:02:03', '2024-09-09 23:18:58'),
(235, 116, NULL, NULL, NULL, NULL, 1, '2024-08-25 12:21:38', '2024-09-09 23:18:58'),
(236, 117, NULL, NULL, NULL, NULL, 1, '2024-08-26 18:36:31', '2024-09-09 23:18:58'),
(237, 118, NULL, NULL, NULL, NULL, 1, '2024-08-27 20:29:35', '2024-09-09 23:18:58'),
(238, 119, NULL, NULL, NULL, NULL, 1, '2024-08-27 22:14:37', '2024-09-09 23:18:58'),
(239, 120, NULL, NULL, NULL, NULL, 1, '2024-08-27 22:38:28', '2024-09-09 23:18:58'),
(240, 121, NULL, NULL, NULL, NULL, 1, '2024-08-27 23:44:20', '2024-09-09 23:18:58'),
(241, 122, NULL, NULL, NULL, NULL, 1, '2024-08-28 16:11:40', '2024-09-09 23:18:58'),
(242, 123, NULL, NULL, NULL, NULL, 1, '2024-08-28 16:14:25', '2024-09-09 23:18:58'),
(243, 124, NULL, NULL, NULL, NULL, 1, '2024-08-28 16:50:24', '2024-09-09 23:18:58'),
(244, 125, NULL, NULL, NULL, NULL, 1, '2024-08-28 21:11:08', '2024-09-09 23:18:58'),
(245, 126, NULL, NULL, NULL, NULL, 1, '2024-08-29 16:38:50', '2024-09-09 23:18:58'),
(246, 127, NULL, NULL, NULL, NULL, 1, '2024-08-29 20:55:48', '2024-09-09 23:18:58'),
(247, 215, NULL, NULL, NULL, NULL, 1, '2024-09-01 22:04:04', '2024-09-09 23:18:58'),
(248, 234, NULL, NULL, NULL, NULL, 1, '2024-09-02 20:10:31', '2024-09-09 23:18:58'),
(249, 241, NULL, NULL, NULL, NULL, 1, '2024-09-03 11:39:16', '2024-09-09 23:18:58'),
(250, 242, NULL, NULL, NULL, NULL, 1, '2024-09-03 12:01:43', '2024-09-09 23:18:58'),
(251, 247, NULL, NULL, NULL, NULL, 1, '2024-09-03 14:19:07', '2024-09-09 23:18:58'),
(252, 250, NULL, NULL, NULL, NULL, 1, '2024-09-03 14:44:44', '2024-09-09 23:18:58'),
(253, 257, NULL, NULL, NULL, NULL, 1, '2024-09-03 15:43:52', '2024-09-09 23:18:58'),
(254, 258, NULL, NULL, NULL, NULL, 1, '2024-09-03 15:47:49', '2024-09-09 23:18:58'),
(255, 259, NULL, NULL, NULL, NULL, 1, '2024-09-03 19:21:09', '2024-09-09 23:18:58'),
(256, 260, NULL, NULL, NULL, NULL, 1, '2024-09-03 19:25:13', '2024-09-09 23:18:58'),
(257, 261, NULL, NULL, NULL, NULL, 1, '2024-09-03 19:37:16', '2024-09-09 23:18:58'),
(258, 262, NULL, NULL, NULL, NULL, 1, '2024-09-03 19:51:52', '2024-09-09 23:18:58'),
(259, 263, NULL, NULL, NULL, NULL, 1, '2024-09-03 19:56:13', '2024-09-09 23:18:58'),
(260, 264, NULL, NULL, NULL, NULL, 1, '2024-09-03 20:19:25', '2024-09-09 23:18:58'),
(261, 270, NULL, NULL, NULL, NULL, 1, '2024-09-04 21:23:17', '2024-09-09 23:18:58'),
(262, NULL, NULL, NULL, NULL, 4, 1, '2024-09-06 06:10:28', '2024-09-13 20:01:24'),
(263, NULL, NULL, NULL, NULL, 5, 1, '2024-09-06 06:30:51', '2024-09-13 20:01:24'),
(264, NULL, NULL, NULL, NULL, 6, 1, '2024-09-06 17:48:09', '2024-09-13 20:01:24'),
(265, 277, NULL, NULL, NULL, NULL, 1, '2024-09-07 10:13:35', '2024-09-09 23:18:58'),
(266, 278, NULL, NULL, NULL, NULL, 1, '2024-09-07 10:15:56', '2024-09-09 23:18:58'),
(267, 280, NULL, NULL, NULL, NULL, 1, '2024-09-07 19:53:19', '2024-09-09 23:18:58'),
(268, 281, NULL, NULL, NULL, NULL, 1, '2024-09-07 19:57:02', '2024-09-09 23:18:58'),
(269, 282, NULL, NULL, NULL, NULL, 1, '2024-09-07 19:58:27', '2024-09-09 23:18:58'),
(270, 283, NULL, NULL, NULL, NULL, 1, '2024-09-07 20:36:09', '2024-09-09 23:18:58'),
(271, 284, NULL, NULL, NULL, NULL, 1, '2024-09-07 20:38:44', '2024-09-09 23:18:58'),
(272, NULL, NULL, NULL, NULL, 9, 1, '2024-09-07 21:21:11', '2024-09-13 20:01:24'),
(273, NULL, NULL, NULL, NULL, 10, 1, '2024-09-07 21:26:03', '2024-09-13 20:01:24'),
(274, NULL, NULL, NULL, NULL, 6, 1, '2024-09-07 21:33:28', '2024-09-13 20:01:24'),
(275, NULL, NULL, NULL, NULL, 9, 1, '2024-09-07 21:34:25', '2024-09-13 20:01:24'),
(276, NULL, NULL, NULL, NULL, 10, 1, '2024-09-07 21:37:08', '2024-09-13 20:01:24'),
(277, NULL, NULL, NULL, NULL, 12, 1, '2024-09-07 21:38:42', '2024-09-13 20:01:24'),
(278, NULL, NULL, NULL, NULL, 13, 1, '2024-09-07 21:39:54', '2024-09-13 20:01:24'),
(279, NULL, NULL, NULL, NULL, 13, 1, '2024-09-07 21:41:34', '2024-09-13 20:01:24'),
(280, NULL, NULL, NULL, NULL, 13, 1, '2024-09-07 21:41:40', '2024-09-13 20:01:24'),
(281, NULL, NULL, NULL, NULL, 17, 1, '2024-09-08 12:45:31', '2024-09-13 20:01:24'),
(282, NULL, NULL, NULL, NULL, 20, 1, '2024-09-08 13:55:55', '2024-09-13 20:01:24'),
(283, NULL, NULL, NULL, NULL, 36, 1, '2024-09-08 15:14:11', '2024-09-13 20:01:24'),
(284, NULL, NULL, NULL, NULL, 40, 1, '2024-09-08 15:47:12', '2024-09-13 20:01:24'),
(285, NULL, NULL, NULL, NULL, 10, 1, '2024-09-08 16:13:40', '2024-09-13 20:01:24'),
(286, 287, NULL, NULL, NULL, NULL, 1, '2024-09-08 20:55:23', '2024-09-09 23:18:58'),
(287, 288, NULL, NULL, NULL, NULL, 1, '2024-09-09 13:12:02', '2024-09-09 23:18:58'),
(288, NULL, NULL, NULL, NULL, 49, 1, '2024-09-09 21:01:09', '2024-09-13 20:01:24'),
(289, NULL, NULL, NULL, NULL, 44, 1, '2024-09-09 21:06:12', '2024-09-13 20:01:24'),
(290, NULL, NULL, NULL, NULL, 44, 1, '2024-09-09 21:07:21', '2024-09-13 20:01:24'),
(291, NULL, NULL, NULL, NULL, 52, 1, '2024-09-09 21:13:05', '2024-09-13 20:01:24'),
(292, NULL, NULL, NULL, NULL, 55, 1, '2024-09-09 21:18:42', '2024-09-13 20:01:24'),
(293, NULL, NULL, NULL, NULL, 62, 1, '2024-09-09 21:30:57', '2024-09-13 20:01:24'),
(294, 289, NULL, NULL, NULL, NULL, 1, '2024-09-09 23:25:31', '2024-09-13 20:01:20'),
(295, 291, NULL, NULL, NULL, NULL, 1, '2024-09-10 15:16:05', '2024-09-13 20:01:20'),
(296, 292, NULL, NULL, NULL, NULL, 1, '2024-09-10 15:20:15', '2024-09-13 20:01:20'),
(297, 294, NULL, NULL, NULL, NULL, 1, '2024-09-10 20:06:29', '2024-09-13 20:01:20'),
(298, 295, NULL, NULL, NULL, NULL, 1, '2024-09-10 20:50:18', '2024-09-13 20:01:20'),
(299, 296, NULL, NULL, NULL, NULL, 1, '2024-09-10 21:08:06', '2024-09-13 20:01:20'),
(300, 297, NULL, NULL, NULL, NULL, 1, '2024-09-10 21:34:13', '2024-09-13 20:01:20'),
(301, 299, NULL, NULL, NULL, NULL, 1, '2024-09-11 11:55:44', '2024-09-13 20:01:20'),
(302, NULL, NULL, NULL, 600, NULL, 1, '2024-09-11 11:55:44', '2024-09-13 20:01:22'),
(303, 300, NULL, NULL, NULL, NULL, 1, '2024-09-11 12:03:10', '2024-09-13 20:01:20'),
(304, NULL, NULL, NULL, 600, NULL, 1, '2024-09-11 12:03:10', '2024-09-13 20:01:22'),
(305, 301, NULL, NULL, NULL, NULL, 1, '2024-09-11 14:22:19', '2024-09-13 20:01:20'),
(306, 302, NULL, NULL, NULL, NULL, 1, '2024-09-11 15:42:35', '2024-09-13 20:01:20'),
(307, NULL, 218, NULL, NULL, NULL, 1, '2024-09-11 15:47:39', '2024-09-12 11:54:29'),
(308, 303, NULL, NULL, NULL, NULL, 1, '2024-09-11 16:10:03', '2024-09-13 20:01:20'),
(309, 304, NULL, NULL, NULL, NULL, 1, '2024-09-11 16:10:41', '2024-09-13 20:01:20'),
(310, 305, NULL, NULL, NULL, NULL, 1, '2024-09-11 16:12:15', '2024-09-13 20:01:20'),
(311, 306, NULL, NULL, NULL, NULL, 1, '2024-09-11 16:25:25', '2024-09-13 20:01:20'),
(312, 307, NULL, NULL, NULL, NULL, 1, '2024-09-11 16:27:13', '2024-09-13 20:01:20'),
(313, 308, NULL, NULL, NULL, NULL, 1, '2024-09-11 19:07:15', '2024-09-13 20:01:20'),
(314, 309, NULL, NULL, NULL, NULL, 1, '2024-09-11 19:11:48', '2024-09-13 20:01:20'),
(315, 310, NULL, NULL, NULL, NULL, 1, '2024-09-11 19:17:11', '2024-09-13 20:01:20'),
(316, 311, NULL, NULL, NULL, NULL, 1, '2024-09-11 19:23:12', '2024-09-13 20:01:20'),
(317, 312, NULL, NULL, NULL, NULL, 1, '2024-09-11 19:25:28', '2024-09-13 20:01:20'),
(318, 313, NULL, NULL, NULL, NULL, 1, '2024-09-11 19:33:06', '2024-09-13 20:01:20'),
(319, 314, NULL, NULL, NULL, NULL, 1, '2024-09-11 19:49:05', '2024-09-13 20:01:20'),
(320, NULL, 221, NULL, NULL, NULL, 1, '2024-09-11 19:52:17', '2024-09-12 11:54:29'),
(321, 315, NULL, NULL, NULL, NULL, 1, '2024-09-11 20:01:15', '2024-09-13 20:01:20'),
(322, 316, NULL, NULL, NULL, NULL, 1, '2024-09-11 20:19:46', '2024-09-13 20:01:20'),
(323, 317, NULL, NULL, NULL, NULL, 1, '2024-09-11 20:27:45', '2024-09-13 20:01:20'),
(324, 318, NULL, NULL, NULL, NULL, 1, '2024-09-11 21:01:23', '2024-09-13 20:01:20'),
(325, 319, NULL, NULL, NULL, NULL, 1, '2024-09-11 21:03:56', '2024-09-13 20:01:20'),
(326, 320, NULL, NULL, NULL, NULL, 1, '2024-09-11 21:06:21', '2024-09-13 20:01:20'),
(327, NULL, 222, NULL, NULL, NULL, 1, '2024-09-11 21:43:29', '2024-09-12 11:54:29'),
(328, 321, NULL, NULL, NULL, NULL, 1, '2024-09-11 22:17:33', '2024-09-13 20:01:20'),
(329, 322, NULL, NULL, NULL, NULL, 1, '2024-09-11 22:28:43', '2024-09-13 20:01:20'),
(330, 323, NULL, NULL, NULL, NULL, 1, '2024-09-12 12:25:39', '2024-09-13 20:01:20'),
(331, NULL, 223, NULL, NULL, NULL, 1, '2024-09-12 19:03:18', '2024-09-13 20:01:23'),
(332, NULL, 224, NULL, NULL, NULL, 1, '2024-09-12 19:11:07', '2024-09-13 20:01:23'),
(333, NULL, 225, NULL, NULL, NULL, 1, '2024-09-12 19:52:32', '2024-09-13 20:01:23'),
(334, NULL, 226, NULL, NULL, NULL, 1, '2024-09-12 20:03:16', '2024-09-13 20:01:23'),
(335, NULL, 227, NULL, NULL, NULL, 1, '2024-09-12 20:09:03', '2024-09-13 20:01:23'),
(336, NULL, 228, NULL, NULL, NULL, 1, '2024-09-14 15:43:13', '2024-09-14 15:49:00'),
(337, NULL, 229, NULL, NULL, NULL, 1, '2024-09-14 15:53:56', '2024-09-14 15:58:07'),
(338, NULL, 230, NULL, NULL, NULL, 1, '2024-09-14 22:24:49', '2024-09-15 00:00:45'),
(339, NULL, NULL, NULL, NULL, 66, 0, '2024-09-15 11:51:48', '2024-09-15 11:51:48'),
(340, NULL, 231, NULL, NULL, NULL, 0, '2024-09-15 12:25:14', '2024-09-15 12:25:14'),
(341, 326, NULL, NULL, NULL, NULL, 0, '2024-09-15 13:00:41', '2024-09-15 13:00:41'),
(342, NULL, NULL, NULL, NULL, 67, 0, '2024-09-15 13:11:14', '2024-09-15 13:11:14'),
(343, NULL, 232, NULL, NULL, NULL, 0, '2024-09-16 04:50:08', '2024-09-16 04:50:08'),
(344, NULL, 233, NULL, NULL, NULL, 0, '2024-09-19 15:24:55', '2024-09-19 15:24:55'),
(346, NULL, NULL, NULL, NULL, 68, 0, '2024-09-20 12:45:20', '2024-09-20 12:45:20'),
(347, NULL, NULL, NULL, NULL, 69, 0, '2024-09-20 13:17:12', '2024-09-20 13:17:12'),
(348, 329, NULL, NULL, NULL, NULL, 0, '2024-09-20 13:40:49', '2024-09-20 13:40:49'),
(349, 330, NULL, NULL, NULL, NULL, 0, '2024-09-20 14:29:37', '2024-09-20 14:29:37'),
(350, NULL, NULL, NULL, NULL, 70, 0, '2024-09-21 12:29:59', '2024-09-21 12:29:59'),
(351, NULL, NULL, NULL, NULL, 71, 0, '2024-09-21 22:39:01', '2024-09-21 22:39:01'),
(352, NULL, NULL, NULL, NULL, 72, 0, '2024-09-24 11:13:51', '2024-09-24 11:13:51'),
(353, NULL, NULL, NULL, NULL, 73, 0, '2024-09-24 11:20:18', '2024-09-24 11:20:18'),
(354, 340, NULL, NULL, NULL, NULL, 0, '2024-09-24 14:29:52', '2024-09-24 14:29:52'),
(355, NULL, NULL, NULL, NULL, 74, 0, '2024-09-25 12:08:31', '2024-09-25 12:08:31'),
(356, NULL, NULL, NULL, NULL, 75, 0, '2024-09-25 12:14:54', '2024-09-25 12:14:54'),
(357, NULL, NULL, NULL, NULL, 76, 0, '2024-09-25 14:25:26', '2024-09-25 14:25:26'),
(358, 344, NULL, NULL, NULL, NULL, 0, '2024-09-27 11:18:35', '2024-09-27 11:18:35'),
(359, NULL, NULL, NULL, NULL, 77, 0, '2024-09-30 10:35:30', '2024-09-30 10:35:30'),
(360, 350, NULL, NULL, NULL, NULL, 0, '2024-10-02 13:45:11', '2024-10-02 13:45:11'),
(361, NULL, NULL, NULL, NULL, 78, 0, '2024-10-02 13:48:44', '2024-10-02 13:48:44'),
(362, 351, NULL, NULL, NULL, NULL, 0, '2024-10-02 15:35:20', '2024-10-02 15:35:20'),
(363, NULL, NULL, NULL, NULL, 83, 0, '2024-10-02 15:39:13', '2024-10-02 15:39:13'),
(364, NULL, 249, NULL, NULL, NULL, 0, '2024-10-02 16:40:12', '2024-10-02 16:40:12'),
(365, 352, NULL, NULL, NULL, NULL, 0, '2024-10-02 17:18:02', '2024-10-02 17:18:02'),
(366, NULL, NULL, NULL, NULL, 88, 0, '2024-10-02 17:21:02', '2024-10-02 17:21:02'),
(367, NULL, 251, NULL, NULL, NULL, 0, '2024-10-02 18:03:27', '2024-10-02 18:03:27'),
(368, NULL, 252, NULL, NULL, NULL, 0, '2024-10-02 18:04:58', '2024-10-02 18:04:58'),
(369, NULL, 253, NULL, NULL, NULL, 0, '2024-10-06 16:08:54', '2024-10-06 16:08:54'),
(370, NULL, 254, NULL, NULL, NULL, 0, '2024-10-06 17:23:21', '2024-10-06 17:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Default Shipping',
  `pickup_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_amount` double DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` mediumtext COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT '0',
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` double DEFAULT '0',
  `tax_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `vendor_packing_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `vendor_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '"[0]"',
  `wallet_price` double NOT NULL DEFAULT '0',
  `is_shipping` tinyint NOT NULL DEFAULT '1',
  `shipping_title` text COLLATE utf8mb4_unicode_ci,
  `packing_title` text COLLATE utf8mb4_unicode_ci,
  `customer_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `affilate_users` mediumtext COLLATE utf8mb4_unicode_ci,
  `commission` double NOT NULL DEFAULT '0',
  `riders` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `vendor_ids`, `wallet_price`, `is_shipping`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`, `riders`) VALUES
(1, 48, '{\"totalQty\":3,\"totalPrice\":230,\"items\":{\"175000000LocalsellerWarranty\":{\"user_id\":22,\"qty\":2,\"size_key\":0,\"size_qty\":\"null\",\"size_price\":\"\",\"size\":\"\",\"color\":\"000000\",\"stock\":null,\"price\":230,\"item\":{\"id\":175,\"user_id\":22,\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"1648013375aGqS3Zgd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":115,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\"', 'Mobile Money', 'shipto', 'Azampur', '3', 234.6, '1222', NULL, 'AUX51716129156', 'Pending', 'mm1499853@gmail.com', 'mou', 'Bangladesh', '+905365439850', 'iraq', 'Gazipur', '10001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-05-19 11:32:36', '2024-05-19 11:32:36', NULL, NULL, '$', 'USD', 1, 0, 0, 4.6, 'Dhaka', 0, NULL, '1', '1', '[22]', 0, 0, 'Free Shipping', 'Default Packaging', '14', NULL, 0, NULL, 0, NULL),
(2, 48, '{\"totalQty\":3,\"totalPrice\":230,\"items\":{\"175000000LocalsellerWarranty\":{\"user_id\":22,\"qty\":2,\"size_key\":0,\"size_qty\":\"null\",\"size_price\":\"\",\"size\":\"\",\"color\":\"000000\",\"stock\":null,\"price\":230,\"item\":{\"id\":175,\"user_id\":22,\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"1648013375aGqS3Zgd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":115,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\"', 'Mobile Money', 'shipto', 'Azampur', '3', 234.6, '1222', NULL, 'JRwQ1716129160', 'Pending', 'mm1499853@gmail.com', 'mou', 'Bangladesh', '+905365439850', 'iraq', 'Gazipur', '10001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-05-19 11:32:40', '2024-05-19 11:32:40', NULL, NULL, '$', 'USD', 1, 0, 0, 4.6, 'Dhaka', 0, NULL, '1', '1', '[22]', 0, 0, 'Free Shipping', 'Default Packaging', '14', NULL, 0, NULL, 0, NULL),
(3, NULL, '{\"totalQty\":1,\"totalPrice\":321,\"items\":{\"163S000000\":{\"user_id\":22,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"100\",\"size_price\":\"1\",\"size\":\"S\",\"color\":\"000000\",\"stock\":733,\"price\":321,\"item\":{\"id\":163,\"user_id\":22,\"slug\":\"zain-digital-agency-and-startup-html-template-1ui8665inp1\",\"name\":\"Zain - Digital Agency and Startup HTML Template\",\"photo\":\"1648014087Du4NpEMJ.png\",\"size\":[\"S\",\"S\",\"S\",\"M\",\"M\",\"M\",\"L\",\"L\",\"L\",\"XL\",\"XL\",\"XL\"],\"size_qty\":[\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\"],\"size_price\":[\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\",\"1\",\"2\",\"3\"],\"color\":[\"#000000\",\"#f41c1c\",', 'Mobile Money', 'shipto', 'Azampur', '1', 327.42, '1288888', NULL, 'L0Vf1716404181', 'Pending', 'text@mail.com', 'Abdulsalam', 'Bangladesh', '0501743345', 'Ammar Ben Yasser st', 'Mirpur', '34477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-05-22 15:56:21', '2024-05-22 15:56:21', NULL, NULL, '$', 'USD', 1, 0, 0, 6.42, 'Dhaka', 0, NULL, '1', '1', '[22]', 0, 0, 'Free Shipping', 'Default Packaging', '14', NULL, 0, NULL, 0, NULL),
(4, NULL, '{\"totalQty\":1,\"totalPrice\":89,\"items\":{\"112\":{\"user_id\":13,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":89,\"item\":{\"id\":112,\"user_id\":13,\"slug\":\"license-key-title-will-be-here-according-to-your-wish-1-\",\"name\":\"License key title will be here according to your wish 1\",\"photo\":\"1648013610nbbGKBia.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":89,\"stock\":null,\"type\":\"License\",\"file\":\"156801752005.zip\",\"link\":null,\"license\":[\"888888888888888888888888\"],\"license_qty\":[\"1.0E+25\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\"', NULL, 'shipto', 'Azampur', '1', 89, NULL, NULL, 'QNhc1717182206', 'Pending', 'test@mail.com', 'test test', 'Iraq', '0501743345', 'dsadasads', 'Ad Diwaniyah', 'as', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-05-31 16:03:26', '2024-05-31 16:03:26', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Qadisiyyah', 1, NULL, '1', '1', '[13]', 0, 0, 'Free Shipping', 'Default Packaging', '36', NULL, 0, NULL, 0, NULL),
(5, 22, '{\"totalQty\":3,\"totalPrice\":220,\"items\":{\"178\":{\"user_id\":22,\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":220,\"item\":{\"id\":178,\"user_id\":22,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":nu', 'ASIA PAY', 'shipto', 'Azampur', '3', 220, 'imageedit_15_4119772585.png', NULL, 'FQ051717341404', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Baghdad', '1231', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-02 12:16:44', '2024-06-02 12:16:44', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Baghdad', 0, NULL, '1', '1', '[22]', 0, 0, 'Free Shipping', 'Default Packaging', '32', NULL, 0, NULL, 0, NULL),
(6, 22, '{\"totalQty\":3,\"totalPrice\":220,\"items\":{\"178\":{\"user_id\":22,\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":220,\"item\":{\"id\":178,\"user_id\":22,\"slug\":\"physical-product-title-title-will-be-here-99-tcv6794kxs1\",\"name\":\"Physical Product Title Title will Be Here 99\",\"photo\":\"1639377187LerG6ypK.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attributes\":nu', 'ZAIN CASH', 'shipto', 'Azampur', '3', 220, 'imageedit_15_4119772585.png', NULL, 'BpO01717343401', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', '1231', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-02 12:50:01', '2024-06-02 12:50:01', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '1', '1', '[22]', 0, 0, 'Free Shipping', 'Default Packaging', '33', NULL, 0, NULL, 0, NULL),
(7, 22, '{\"totalQty\":2,\"totalPrice\":110,\"items\":{\"170\":{\"user_id\":\"13\",\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":110,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_di', 'ASIA PAY', 'shipto', 'Azampur', '2', 110, '2022_4_18_12_24_42_543.webp', NULL, 'BOxX1717590187', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Mahmudiyah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-05 12:23:07', '2024-06-05 12:23:07', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Babil', 0, NULL, '1', '1', '[\"13\"]', 0, 0, 'Free Shipping', 'Default Packaging', '40', NULL, 0, NULL, 0, NULL),
(8, 22, '{\"totalQty\":3,\"totalPrice\":330,\"items\":{\"170\":{\"user_id\":\"13\",\"qty\":3,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":330,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_disc', NULL, NULL, NULL, '3', 330, NULL, NULL, 'nX2Z1717599878', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Al Hindiyah', '052232', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-05 15:04:38', '2024-06-05 15:04:38', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Karbala', 0, NULL, '1', '1', '[\"13\"]', 0, 0, 'Free Shipping', 'Default Packaging', '44', NULL, 0, NULL, 0, NULL),
(9, 22, '{\"totalQty\":3,\"totalPrice\":330,\"items\":{\"170\":{\"user_id\":\"13\",\"qty\":3,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":330,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_disc', NULL, NULL, NULL, '3', 330, NULL, NULL, 'k1C91717599887', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Al Hindiyah', '052232', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-05 15:04:47', '2024-06-05 15:04:47', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Karbala', 0, NULL, '1', '1', '[\"13\"]', 0, 0, 'Free Shipping', 'Default Packaging', '44', NULL, 0, NULL, 0, NULL),
(10, 22, '{\"totalQty\":3,\"totalPrice\":330,\"items\":{\"170\":{\"user_id\":\"13\",\"qty\":3,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":330,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_disc', NULL, NULL, NULL, '3', 330, NULL, NULL, 's3Kj1717599910', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Al Hindiyah', '052232', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-05 15:05:10', '2024-06-05 15:05:10', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Karbala', 0, NULL, '1', '1', '[\"13\"]', 0, 0, 'Free Shipping', 'Default Packaging', '44', NULL, 0, NULL, 0, NULL),
(11, 22, '{\"totalQty\":3,\"totalPrice\":330,\"items\":{\"170\":{\"user_id\":\"13\",\"qty\":3,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":330,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_disc', NULL, NULL, NULL, '3', 330, NULL, NULL, 'ys231717599916', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Al Hindiyah', '052232', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-05 15:05:16', '2024-06-05 15:05:16', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Karbala', 0, NULL, '1', '1', '[\"13\"]', 0, 0, 'Free Shipping', 'Default Packaging', '44', NULL, 0, NULL, 0, NULL),
(12, 22, '{\"totalQty\":4,\"totalPrice\":388.5,\"items\":{\"170\":{\"user_id\":\"13\",\"qty\":3,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":330,\"item\":{\"id\":170,\"user_id\":\"13\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr1\",\"name\":\"Top Rated product title will be here according to your wish 123\",\"photo\":\"16480134488OmlUgJN.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":110,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_di', NULL, NULL, NULL, '4', 398.5, NULL, NULL, 'm0tJ1717600018', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Hit', '5', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-05 15:06:58', '2024-06-05 15:06:58', NULL, NULL, '$', 'USD', 1, 10, 0, 0, 'Al Anbar', 0, NULL, '2', '1', '[\"13\"]', 0, 0, 'Express Shipping', 'Default Packaging', '33', NULL, 0, NULL, 0, NULL),
(13, 22, '{\"totalQty\":1,\"totalPrice\":89,\"items\":{\"112\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":89,\"item\":{\"id\":112,\"user_id\":\"13\",\"slug\":\"license-key-title-will-be-here-according-to-your-wish-1-\",\"name\":\"License key title will be here according to your wish 1\",\"photo\":\"1648013610nbbGKBia.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":89,\"stock\":null,\"type\":\"License\",\"file\":\"156801752005.zip\",\"link\":null,\"license\":[\"888888888888888888888888\"],\"license_qty\":[\"1.0E+25\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_disco', NULL, NULL, NULL, '1', 89, NULL, NULL, 'jzDr1718101678', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Ramadi', '61000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-11 10:27:58', '2024-06-11 10:27:58', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 1, NULL, NULL, NULL, '[\"13\"]', 0, 0, NULL, NULL, '33', NULL, 0, NULL, 0, NULL),
(14, 57, '{\"totalQty\":1,\"totalPrice\":80,\"items\":{\"112\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":80,\"item\":{\"id\":112,\"user_id\":\"13\",\"slug\":\"license-key-title-will-be-here-according-to-your-wish-1-\",\"name\":\"License key title will be here according to your wish 1\",\"photo\":\"1648013610nbbGKBia.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":80,\"stock\":null,\"type\":\"License\",\"file\":\"156801752005.zip\",\"link\":null,\"license\":[\"888888888888888888888888\"],\"license_qty\":[\"1.0E+25\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_disco', NULL, NULL, NULL, '1', 80, NULL, NULL, 'Ik5o1719252733', 'Pending', 'abduabd284@gmail.com', 'abdullah', 'Iraq', '+905394955991', 'turkiye', 'Baghdad', '34000', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-24 18:12:13', '2024-06-24 18:12:13', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Baghdad', 1, NULL, '\"{}\"', '\"{}\"', '[]', 0, 1, '\"{}\"', '\"{}\"', '32', NULL, 0, NULL, 0, NULL),
(15, NULL, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_a', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, 'hldF1719312732', 'Pending', 'hamza@gmail.com', 'hamza aljork', 'Iraq', '+4477678462378', 'syria', 'Baghdad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-25 10:52:12', '2024-06-25 10:52:12', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Baghdad', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '32', NULL, 0, NULL, 0, NULL),
(16, NULL, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_a', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, 'F2r41719312736', 'Pending', 'hamza@gmail.com', 'hamza aljork', 'Iraq', '+4477678462378', 'syria', 'Baghdad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-25 10:52:16', '2024-06-25 10:52:16', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Baghdad', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '32', NULL, 0, NULL, 0, NULL),
(17, 22, '{\"totalQty\":1,\"totalPrice\":330,\"items\":{\"161LocalsellerwarrantyOppo2GBWhite\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":-1,\"price\":330,\"item\":{\"id\":161,\"user_id\":\"13\",\"slug\":\"revel-real-estate-html-template-d2e6433yi01\",\"name\":\"Revel - Real Estate HTML Template\",\"photo\":\"16393784188Gm57Wu2.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":330,\"stock\":\"0\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"15\",\"20\",\"30\",\"40\",\"50\"],\"whole_sell_discount\":[\"10\",\"15\",\"20\",\"25\",\"3', NULL, NULL, NULL, '1', 338, NULL, NULL, 'UYCR1719653540', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 09:32:20', '2024-06-29 09:32:20', NULL, NULL, '$', 'USD', 1, 5, 3, 0, 'Baghdad', 0, NULL, '\"{\\\"13\\\":\\\"7\\\"}\"', '\"{\\\"13\\\":\\\"6\\\"}\"', '[\"13\"]', 0, 1, '\"{\\\"13\\\":\\\"7\\\"}\"', '\"{\\\"13\\\":\\\"6\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(18, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, 'pozq1719674500', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 15:21:40', '2024-06-29 15:21:40', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(19, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, '6pXr1719674508', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 15:21:48', '2024-06-29 15:21:48', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(20, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, 'jP4B1719674518', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 15:21:58', '2024-06-29 15:21:58', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(21, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, 'smxT1719674526', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 15:22:06', '2024-06-29 15:22:06', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(22, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, 'AQcr1719674576', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 15:22:56', '2024-06-29 15:22:56', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(23, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, 'CpyJ1719674584', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 15:23:04', '2024-06-29 15:23:04', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(24, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all', 'Cash On Delivery', NULL, 'duhuk', '1', 100, NULL, NULL, '12j91719674587', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 15:23:07', '2024-06-29 15:23:07', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(25, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"128S000000\":{\"user_id\":\"22\",\"qty\":0,\"size_key\":0,\"size_qty\":\"92\",\"size_price\":1,\"size\":\"S\",\"color\":\"000000\",\"stock\":null,\"price\":0,\"item\":{\"id\":128,\"user_id\":\"22\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-102-pr613jsv1\",\"name\":\"Top Rated product title will be here according to your wish 102\",\"photo\":\"1639456384gCuvZIXe.png\",\"size\":[\"S\",\"S\",\"S\",\"M\",\"M\",\"M\",\"L\",\"L\",\"L\",\"XL\",\"XL\",\"XL\",\"XXL\",\"XXL\",\"XXL\"],\"size_qty\":[\"92\",\"100\",\"99\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\"],\"size_price\":[\"1\",\"2\",\"3\",\"1', NULL, NULL, NULL, '1', 100, NULL, NULL, 'rRkC1719704558', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-29 23:42:38', '2024-06-29 23:42:38', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(26, 22, '{\"totalQty\":3,\"totalPrice\":280,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '3', 280, NULL, NULL, 'NaQn1719738736', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:12:16', '2024-06-30 09:12:16', NULL, NULL, '$', 'USD', 1, 0, 0, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(27, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'STm71719739661', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:27:41', '2024-06-30 09:27:41', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(28, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, '1Q3I1719739957', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:32:37', '2024-06-30 09:32:37', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(29, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'i6Tf1719739962', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:32:42', '2024-06-30 09:32:42', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(30, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'z7PB1719739971', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:32:51', '2024-06-30 09:32:51', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(31, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'aU0F1719739977', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:32:57', '2024-06-30 09:32:57', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(32, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'o2Eu1719740055', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:34:15', '2024-06-30 09:34:15', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(33, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'lIR81719740059', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:34:19', '2024-06-30 09:34:19', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(34, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'bPR51719740142', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-06-30 09:35:42', '2024-06-30 09:35:42', NULL, NULL, '$', 'USD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(35, 57, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"175LocalsellerWarranty\":{\"user_id\":\"22\",\"qty\":0,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":0,\"item\":{\"id\":175,\"user_id\":\"22\",\"slug\":\"physical-product-title-title-will-be-here-102-9gn6494iun1\",\"name\":\"Physical Product Title Title will Be Here 102\",\"photo\":\"1648013375aGqS3Zgd.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":105,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15', NULL, NULL, NULL, '1', 100, NULL, NULL, 'sZIY1719918659', 'Pending', 'abduabd284@gmail.com', 'abdullah', 'Iraq', '+905394955991', 'turkiye', 'Karbala', '34000', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 11:10:59', '2024-07-02 11:10:59', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Karbala', 0, NULL, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '44', NULL, 0, NULL, 0, NULL),
(36, 57, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":100,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '1', 100, NULL, NULL, 'hgCB1719918963', 'Pending', 'abduabd284@gmail.com', 'abdullah', 'Iraq', '+905394955991', 'turkiye', 'Karbala', '34000', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 11:16:03', '2024-07-02 11:16:03', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Karbala', 0, NULL, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"1\\\"}\"', '\"{\\\"0\\\":\\\"1\\\"}\"', '44', NULL, 0, NULL, 0, NULL),
(37, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, 'تنزيل.jpeg', NULL, 'bonI1719924035', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:40:35', '2024-07-02 12:40:35', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(38, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, 'JPG-08.jpg', NULL, '25Kz1719924072', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:41:12', '2024-07-02 12:41:12', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(39, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, 'JPG-08.jpg', NULL, 'rmO81719924217', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Ramadi', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:43:37', '2024-07-02 12:43:37', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `vendor_ids`, `wallet_price`, `is_shipping`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`, `riders`) VALUES
(40, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'FZh41719924275', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:35', '2024-07-02 12:44:35', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(41, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'pGAR1719924276', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:36', '2024-07-02 12:44:36', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(42, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'Aj6I1719924277', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:37', '2024-07-02 12:44:37', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(43, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'BrMk1719924277', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:37', '2024-07-02 12:44:37', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(44, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'WRXY1719924278', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:38', '2024-07-02 12:44:38', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(45, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'IZoN1719924280', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:40', '2024-07-02 12:44:40', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(46, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, '23aM1719924281', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:41', '2024-07-02 12:44:41', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(47, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'hBfS1719924282', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:42', '2024-07-02 12:44:42', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(48, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'cOPI1719924285', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:45', '2024-07-02 12:44:45', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(49, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'HAeD1719924285', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:44:45', '2024-07-02 12:44:45', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(50, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'sitZ1719924352', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:45:52', '2024-07-02 12:45:52', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(51, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, '_f4ce1ccc-6d91-4268-b776-15177954125f.jpeg', NULL, 'cC9b1719924377', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:46:17', '2024-07-02 12:46:17', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(52, 22, '{\"totalQty\":3,\"totalPrice\":3550,\"items\":{\"395Culpa-aut-aliquid-ofSoluta voluptates pe\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"968\",\"size_price\":\"832\",\"size\":\"Culpa-aut-aliquid-of\",\"color\":\"Soluta voluptates pe\",\"stock\":null,\"price\":3550,\"item\":{\"id\":395,\"user_id\":\"0\",\"slug\":\"wylie-singleton-6ar395cji\",\"name\":\"Wylie Singleton\",\"photo\":\"removed-bg-image2024-06-25395.png\",\"size\":[\"Culpa aut aliquid of\"],\"size_qty\":[\"968\"],\"size_price\":[\"832\"],\"color\":[\"Soluta voluptates pe\"],\"price\":1775,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"', 'ASIA PAY', NULL, 'duhuk', '3', 3550, 'IMG-20220304-WA0023.jpg', NULL, 'oTLC1719924427', 'Pending', 'user@gmail.com', 'User', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات بنص الشارع محل احمد و حيدر لتجارة الملابس', 'Fallujah', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-02 12:47:07', '2024-07-02 12:47:07', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Al Anbar', 0, NULL, '[\"1\"]', '[\"1\"]', '[\"0\"]', 0, 1, '[\"1\"]', '[\"1\"]', '33', NULL, 0, NULL, 0, NULL),
(53, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'cwZv1720107311', 'Pending', 'user@gmail.com', 'HAM', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-04 15:35:11', '2024-07-04 15:35:11', NULL, NULL, 'IQD', 'IQD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(54, 22, '{\"totalQty\":2,\"totalPrice\":200,\"items\":{\"394\":{\"user_id\":\"0\",\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200,\"item\":{\"id\":394,\"user_id\":\"0\",\"slug\":\"saaa-fakhr-tce394z5v\",\"name\":\"\\u0633\\u0627\\u0639\\u0629 \\u0641\\u0627\\u062e\\u0631\\u0629\",\"photo\":\"removed-bg-image2024-06-11394.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":100,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"', NULL, NULL, NULL, '2', 225, NULL, NULL, 'UHge1720107452', 'Pending', 'user@gmail.com', 'HAM', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-04 15:37:32', '2024-07-04 15:37:32', NULL, NULL, 'IQD', 'IQD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(55, 22, '{\"totalQty\":1,\"totalPrice\":100,\"items\":{\"128S000000\":{\"user_id\":\"22\",\"qty\":0,\"size_key\":0,\"size_qty\":\"92\",\"size_price\":1,\"size\":\"S\",\"color\":\"000000\",\"stock\":null,\"price\":0,\"item\":{\"id\":128,\"user_id\":\"22\",\"slug\":\"top-rated-product-title-will-be-here-according-to-your-wish-102-pr613jsv1\",\"name\":\"Top Rated product title will be here according to your wish 102\",\"photo\":\"1639456384gCuvZIXe.png\",\"size\":[\"S\",\"S\",\"S\",\"M\",\"M\",\"M\",\"L\",\"L\",\"L\",\"XL\",\"XL\",\"XL\",\"XXL\",\"XXL\",\"XXL\"],\"size_qty\":[\"92\",\"100\",\"99\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\"],\"size_price\":[\"1\",\"2\",\"3\",\"1', NULL, NULL, NULL, '1', 125, NULL, NULL, 'mW6M1720110170', 'Pending', 'user@gmail.com', 'HAM', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-04 16:22:50', '2024-07-04 16:22:50', NULL, NULL, 'IQD', 'IQD', 1, 10, 15, 0, 'Baghdad', 0, NULL, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '[\"0\"]', 0, 1, '\"{\\\"0\\\":\\\"2\\\"}\"', '\"{\\\"0\\\":\\\"2\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(56, 22, '{\"totalQty\":1,\"totalPrice\":80,\"items\":{\"112\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":80,\"item\":{\"id\":112,\"user_id\":\"13\",\"slug\":\"license-key-title-will-be-here-according-to-your-wish-1-\",\"name\":\"License key title will be here according to your wish 1\",\"photo\":\"1648013610nbbGKBia.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":80,\"stock\":null,\"type\":\"License\",\"file\":\"156801752005.zip\",\"link\":null,\"license\":[\"888888888888888888888888\"],\"license_qty\":[\"1.0E+25\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_disco', NULL, NULL, NULL, '1', 80, NULL, NULL, 'peAH1720189086', 'Pending', 'user@gmail.com', 'HAM', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-05 14:18:06', '2024-07-05 14:18:06', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Baghdad', 1, NULL, '\"{}\"', '\"{}\"', '[]', 0, 1, '\"{}\"', '\"{}\"', '32', NULL, 0, NULL, 0, NULL),
(57, 22, '{\"totalQty\":2,\"totalPrice\":110,\"items\":{\"112\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":80,\"item\":{\"id\":112,\"user_id\":\"13\",\"slug\":\"license-key-title-will-be-here-according-to-your-wish-1-\",\"name\":\"License key title will be here according to your wish 1\",\"photo\":\"1648013610nbbGKBia.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":80,\"stock\":null,\"type\":\"License\",\"file\":\"156801752005.zip\",\"link\":null,\"license\":[\"888888888888888888888888\"],\"license_qty\":[\"1.0E+25\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_disc', NULL, NULL, NULL, '2', 118, NULL, NULL, 'j3Wg1720190157', 'Pending', 'user@gmail.com', 'HAM', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', '63000', NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-05 14:35:57', '2024-07-05 14:35:57', NULL, NULL, 'IQD', 'IQD', 1, 5, 3, 0, 'Baghdad', 0, NULL, '\"{\\\"13\\\":\\\"7\\\"}\"', '\"{\\\"13\\\":\\\"6\\\"}\"', '[\"13\"]', 0, 1, '\"{\\\"13\\\":\\\"7\\\"}\"', '\"{\\\"13\\\":\\\"6\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(58, 57, '{\"totalQty\":1,\"totalPrice\":51,\"items\":{\"95Mc12ec8\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":\"1\",\"size_qty\":\"96\",\"size_price\":1,\"size\":\"M\",\"color\":\"c12ec8\",\"stock\":55547,\"price\":51,\"item\":{\"id\":95,\"user_id\":\"13\",\"slug\":\"affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-95-pr495jsv1\",\"name\":\"Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95\",\"photo\":\"1568027732dTwHda8l.png\",\"size\":[\"S\",\"S\",\"S\",\"M\",\"M\",\"M\",\"L\",\"L\",\"L\",\"XL\",\"XL\",\"XL\",\"XXL\",\"XXL\",\"XXL\"],\"size_qty\":[\"96\",\"100\",\"100\",\"99\",\"100\",\"100\",\"100\",\"100\",\"100\",\"99\",\"100\",\"98\",\"100\",\"100\",\"100\"],\"s', NULL, NULL, NULL, '1', 51, NULL, NULL, 'SlNm1720274836', 'Pending', 'abduabd284@gmail.com', 'abdullah', 'Iraq', '+905394955991', 'turkiye', 'Baghdad', '34000', NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-06 14:07:16', '2024-07-06 14:07:16', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Baghdad', 1, NULL, '\"{}\"', '\"{}\"', '[]', 0, 1, '\"{}\"', '\"{}\"', '32', NULL, 0, NULL, 0, NULL),
(59, 22, '{\"totalQty\":1,\"totalPrice\":80,\"items\":{\"112\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":80,\"item\":{\"id\":112,\"user_id\":\"13\",\"slug\":\"license-key-title-will-be-here-according-to-your-wish-1-\",\"name\":\"License key title will be here according to your wish 1\",\"photo\":\"1648013610nbbGKBia.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":80,\"stock\":null,\"type\":\"License\",\"file\":\"156801752005.zip\",\"link\":null,\"license\":[\"888888888888888888888888\"],\"license_qty\":[\"1.0E+25\"],\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_disco', NULL, NULL, NULL, '1', 80, NULL, NULL, 'WLy31720439345', 'Pending', 'user@gmail.com', 'HAM', 'Iraq', '34534534534', 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', 'Baghdad', NULL, NULL, 'Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-08 11:49:05', '2024-07-08 11:49:05', NULL, NULL, 'IQD', 'IQD', 1, 0, 0, 0, 'Baghdad', 1, NULL, '\"{}\"', '\"{}\"', '[]', 0, 1, '\"{}\"', '\"{}\"', '32', NULL, 0, NULL, 0, NULL),
(60, NULL, '{\"totalQty\":1,\"totalPrice\":315,\"items\":{\"168f10e0eG-ShockLocalSellWarrentyLeather\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"f10e0e\",\"stock\":6344,\"price\":315,\"item\":{\"id\":168,\"user_id\":\"13\",\"slug\":\"revel-real-estate-huuu-tbs53803yh1\",\"name\":\"Revel - Real Estate Huuu\",\"photo\":\"1648013500i2EEZrBt.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":315,\"stock\":\"6345\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"10\",\"20\",\"30\",\"40\"],\"whole_sell_discount\":[\"5\",\"10\",\"15\",\"20\"],\"attribu', 'ASIA PAY', NULL, 'duhuk', '1', 323, 'DALL·E 2024-07-07 17.12.55 - A simple and elegant design expressing data analytics in a white and light blue theme with #2d8fde blue, black, orange, and brown accents. The image s.webp', NULL, 'q0MV1720455331', 'Pending', 'text@mail.com', 'Abdulsalam Alkhatib', 'Iraq', '0501743345', 'Ammar Ben Yasser st', 'Baghdad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-08 16:15:31', '2024-07-08 16:15:31', NULL, NULL, 'IQD', 'IQD', 1, 5, 3, 0, 'Baghdad', 0, NULL, '{\"13\":\"7\"}', '{\"13\":\"6\"}', '[\"13\"]', 0, 1, '{\"13\":\"7\"}', '{\"13\":\"6\"}', '32', NULL, 0, NULL, 0, NULL),
(61, 77, '{\"totalQty\":1,\"totalPrice\":30,\"items\":{\"135\":{\"user_id\":\"13\",\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":388,\"price\":30,\"item\":{\"id\":135,\"user_id\":\"13\",\"slug\":\"32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs1\",\"name\":\"tech cataloge\",\"photo\":\"1639392738Dts57dc4.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":30,\"stock\":\"389\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":[\"15\",\"20\",\"30\",\"40\",\"50\"],\"whole_sell_discount\":[\"10\",\"15\",\"20\",\"25\",\"30\"],\"attributes\":null},\"license\":\"\",\"dp', NULL, NULL, NULL, '1', 38, NULL, NULL, 'JIkz1720806810', 'Pending', 'hamamhwri44@gmail.com', 'humam', 'Iraq', '+352681606005', 'syrie', 'Baghdad', NULL, NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-12 17:53:30', '2024-07-12 17:53:30', NULL, NULL, 'D', 'IQD', 1, 5, 3, 0, 'Baghdad', 0, NULL, '\"{\\\"13\\\":\\\"7\\\"}\"', '\"{\\\"13\\\":\\\"6\\\"}\"', '[\"13\"]', 0, 1, '\"{\\\"13\\\":\\\"7\\\"}\"', '\"{\\\"13\\\":\\\"6\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(62, 92, '{\"totalQty\":1,\"totalPrice\":11111110.5,\"items\":{\"426000000\":{\"user_id\":\"92\",\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"NaN\",\"size_price\":\"\",\"size\":\"\",\"color\":\"000000\",\"stock\":21,\"price\":11111110.5,\"item\":{\"id\":426,\"user_id\":\"92\",\"slug\":\"test-khy5398uxi\",\"name\":\"test\",\"photo\":\"17210554579v07I78g.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":[\"#000000\"],\"price\":11111110.5,\"stock\":\"22\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":\"0\",\"size_all\":null,\"color_all\":\"', 'Cash On Delivery', NULL, 'duhuk', '1', 11117110.5, NULL, NULL, '34M61721056559', 'Pending', '11111@yaho.com', '111111111111111', 'Iraq', '+964', '1111111', 'Baghdad', NULL, 'humam alhowri', 'Iraq', NULL, '0681606005', 'turkiye/istanbul', 'Ramadi', '12223', NULL, NULL, NULL, 'pending', '2024-07-15 15:15:59', '2024-07-15 15:15:59', NULL, NULL, 'D', 'IQD', 1, 5000, 1000, 0, 'Baghdad', 0, NULL, '{\"92\":\"12\"}', '{\"92\":\"10\"}', '[\"92\"]', 0, 1, '{\"92\":\"12\"}', '{\"92\":\"10\"}', '32', 'Al Anbar', 0, NULL, 0, NULL),
(63, 77, '{\"totalQty\":6,\"totalPrice\":1500000,\"items\":{\"424ff0000\":{\"user_id\":\"92\",\"qty\":6,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"ff0000\",\"stock\":14,\"price\":1500000,\"item\":{\"id\":424,\"user_id\":\"92\",\"slug\":\"saaah-hoaoy-myl-gyr-7vv5040lfu\",\"name\":\"\\u0633\\u0627\\u0639\\u0647 \\u0647\\u0648\\u0627\\u0648\\u064a \\u0645\\u064a\\u0644 \\u062c\\u064a\\u0631\",\"photo\":\"1721055245Qo4cttfq.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":[\"#ff0000\"],\"price\":250000,\"stock\":\"20\",\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount', NULL, NULL, NULL, '6', 1506000, NULL, NULL, 'PlCl1721059854', 'Pending', 'hamamhwri44@gmail.com', 'humam', 'Iraq', '+352681606005', 'syrie', 'Baghdad', NULL, NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-07-15 16:10:54', '2024-07-15 16:10:54', NULL, NULL, 'D', 'IQD', 1, 5000, 1000, 0, 'Baghdad', 0, NULL, '\"{\\\"92\\\":\\\"12\\\"}\"', '\"{\\\"92\\\":\\\"10\\\"}\"', '[\"92\"]', 0, 1, '\"{\\\"92\\\":\\\"12\\\"}\"', '\"{\\\"92\\\":\\\"10\\\"}\"', '32', NULL, 0, NULL, 0, NULL),
(64, NULL, '{\"totalQty\":4,\"totalPrice\":15000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '4', 35000, '‏‏لقطة الشاشة (3).png', NULL, 'hWtu1723782199', 'Pending', 'klngkds@gmail.com', 'Ahmad Mostafa Ibrahem', 'العراق', '3525562656', 'fff', 'قضاء دقواق', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 10:23:19', '2024-08-16 10:23:19', NULL, NULL, 'D', 'IQD', 1, 10000, 10000, 0, 'كركوك', 0, NULL, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '[103,108]', 0, 1, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '45', NULL, 0, NULL, 0, NULL),
(65, NULL, '{\"totalQty\":4,\"totalPrice\":15000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '4', 35000, '‏‏لقطة الشاشة (3).png', NULL, '02e11723782375', 'Pending', 'klngkds@gmail.com', 'Ahmad Mostafa Ibrahem', 'العراق', '3525562656', 'fff', 'قضاء دقواق', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 10:26:15', '2024-08-16 10:26:15', NULL, NULL, 'D', 'IQD', 1, 10000, 10000, 0, 'كركوك', 0, NULL, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '[103,108]', 0, 1, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '45', NULL, 0, NULL, 0, NULL),
(66, NULL, '{\"totalQty\":4,\"totalPrice\":15000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '4', 35000, '‏‏لقطة الشاشة (3).png', NULL, 'C5gb1723782410', 'Pending', 'wwwwwwwwwwww@gmail.com', 'dvds', 'العراق', '3525562656', 'fff', 'قضاء المقدادية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 10:26:50', '2024-08-16 10:26:50', NULL, NULL, 'D', 'IQD', 1, 10000, 10000, 0, 'ديالى', 0, NULL, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '[103,108]', 0, 1, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '43', NULL, 0, NULL, 0, NULL),
(67, NULL, '{\"totalQty\":4,\"totalPrice\":15000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '4', 35000, '‏‏لقطة الشاشة (3).png', NULL, '0unR1723782441', 'Pending', 'wwwwwwwwwwww@gmail.com', 'dvds', 'العراق', '3525562656', 'fff', 'قضاء المقدادية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 10:27:21', '2024-08-16 10:27:21', NULL, NULL, 'D', 'IQD', 1, 10000, 10000, 0, 'ديالى', 0, NULL, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '[103,108]', 0, 1, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '43', NULL, 0, NULL, 0, NULL),
(68, NULL, '{\"totalQty\":5,\"totalPrice\":16463,\"items\":{\"576\":{\"user_id\":186,\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":10908,\"item\":{\"id\":576,\"user_id\":186,\"slug\":\"phones-jfg0771zgd\",\"name\":\"Phones\",\"photo\":\"1723501058Al9y4ITz.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5454,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"valu', 'ASIA PAY', NULL, 'duhuk', '5', 26463, '‏‏لقطة الشاشة (1).png', NULL, 'zGtE1723750295', 'Pending', 'ahmadm327@gmail.com', 'Ahmad Mostafa Ibrahem', 'العراق', '3525562656', 'fff', 'قضاء سنجار', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 19:31:35', '2024-08-15 19:31:35', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'نينوى', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '47', NULL, 0, NULL, 0, NULL),
(69, NULL, '{\"totalQty\":2,\"totalPrice\":5555,\"items\":{\"575\":{\"user_id\":186,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":555,\"item\":{\"id\":575,\"user_id\":186,\"slug\":\"camera-good-waa0483qzl4gde\",\"name\":\"camera good\",\"photo\":\"1723500753l8tozzMy.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":555,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys', 'ASIA PAY', NULL, 'duhuk', '2', 15555, '‏‏لقطة الشاشة (6).png', NULL, 'YcR01723751845', 'Pending', 'wwwwwwwwwwww@gmail.com', 'aHMAD', 'العراق', '3525562656', 'fff', 'قضاء سنجار', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 19:57:25', '2024-08-15 19:57:25', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'نينوى', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '47', NULL, 0, NULL, 0, NULL),
(70, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (2).png', NULL, 'RVKg1723755101', 'Pending', 'fasdfasfda@gmail.com', 'lfdsndfvksdal', 'العراق', '53365324523', 'ff', 'العمارة', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 20:51:41', '2024-08-15 20:51:41', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '46', NULL, 0, NULL, 0, NULL),
(71, 186, '{\"totalQty\":3,\"totalPrice\":15000,\"items\":{\"443\":{\"user_id\":112,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":443,\"user_id\":112,\"slug\":\"mostafajjs-ssp56833qrk\",\"name\":\"mostafajjs\",\"photo\":\"1722775758gDXeRVDb.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":', 'ASIA PAY', NULL, 'duhuk', '3', 25000, 'الجمال والازياء.png', NULL, 'D70H1723762196', 'Pending', 'sdsdsd@gmail.com', 'sdsd', 'العراق', '+96433333333', 'sdsdsd', 'قضاء المجر الكبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 22:49:56', '2024-08-15 22:49:56', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '46', NULL, 0, NULL, 0, NULL),
(72, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, 'كاميرا.png', NULL, 'eFDj1723762288', 'Pending', 'wwwwwwwwwwww@gmail.com', 'aHMAD', 'العراق', '3525562656', 'ff', 'السيدية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 22:51:28', '2024-08-15 22:51:28', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'بغداد', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '32', NULL, 0, NULL, 0, NULL),
(73, 186, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",', 'ZAIN-CASH', NULL, 'duhuk', '1', 15000, 'رياضة.png', NULL, 'OJUj1723762480', 'Pending', 'sdsdsd@gmail.com', 'sdsd', 'العراق', '+96433333333', 'sdsdsd', 'الكفل', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 22:54:40', '2024-08-15 22:54:40', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'بابل', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '40', NULL, 0, NULL, 0, NULL),
(74, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ZAIN-CASH', NULL, 'duhuk', '1', 15000, '1722437007azrar24jpg.jpg', NULL, 'kZJI1723763395', 'Pending', 'mmeeeem@gmail.com', 'Drrrr', 'العراق', '333333', 'azaz', 'الاوزاير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 23:09:55', '2024-08-15 23:09:55', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '46', NULL, 0, NULL, 0, NULL),
(75, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (5).png', NULL, '7pSG1723764163', 'Pending', 'jjjjjjjjjjjjGssHGHGHghdnkljtgj@gmail.com', 'Ahmad Mostafa Ibrahem', 'العراق', '07878943353', 'ss', 'قضاء تلكيف', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 23:22:43', '2024-08-15 23:22:43', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'نينوى', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '47', NULL, 0, NULL, 0, NULL),
(76, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (3).png', NULL, 'g86h1723764294', 'Pending', 'wwwwwwwwwwww@gmail.com', 'fadgvdf', 'العراق', '3525562656', 'ss', 'حسينية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 23:24:54', '2024-08-15 23:24:54', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'كربلاء', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '44', NULL, 0, NULL, 0, NULL),
(77, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ZAIN-CASH', NULL, 'duhuk', '1', 15000, 'شهادة الثانويه', NULL, '2DPm1723765488', 'Pending', 'ahmadmostfa228@gmail.com', 'tyty', 'العراق', '0564648465', 'ss', 'الكفل', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-15 23:44:48', '2024-08-15 23:44:48', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'بابل', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '40', NULL, 0, NULL, 0, NULL),
(78, NULL, '{\"totalQty\":2,\"totalPrice\":10000,\"items\":{\"445\":{\"user_id\":142,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":445,\"user_id\":142,\"slug\":\"anas-dl45366w1q\",\"name\":\"anas1\",\"photo\":\"1722865415jQu2PXN6.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":\"\",\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":', 'ASIA PAY', NULL, 'duhuk', '2', 20000, 'VID-20240816-WA0013.mp4', NULL, 'GfCT1723768934', 'Pending', 'ssjjd', 'jddjj', 'العراق', '83838', 'ruru', 'رواندز', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 00:42:14', '2024-08-16 00:42:14', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'أربيل', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '38', NULL, 0, NULL, 0, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `vendor_ids`, `wallet_price`, `is_shipping`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`, `riders`) VALUES
(79, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ZAIN-CASH', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (6).png', NULL, 'o8zI1723805033', 'Pending', 'fasdfasfda@gmail.com', 'mohamadfggg', 'العراق', '5324523', 'ss', 'قضاء المجر الكبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 10:43:53', '2024-08-16 10:43:53', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '46', NULL, 0, NULL, 0, NULL),
(80, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (2).png', NULL, 'Jca81723817132', 'Pending', 'fasdfasfda@gmail.com', 'aHMAD', 'العراق', '5324523', 'ss', 'المسيب', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 14:05:32', '2024-08-16 14:05:32', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'بابل', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '40', NULL, 0, NULL, 0, NULL),
(81, NULL, '{\"totalQty\":2,\"totalPrice\":10000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"name_ar\":\"\\u0646\\u062a\\u0646\\u062a\\u0646\",\"name_ku\":\"\\u0646\\u062a\\u0646\\u062a\\u0646\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"size_all\":nu', 'ASIA PAY', NULL, 'duhuk', '2', 20000, '‏‏لقطة الشاشة (3).png', NULL, 'mXhN1723827705', 'Pending', 'ahmadmostfa228@gmail.com', 'mohamadfggg', 'العراق', '0564648465', 'ss', 'إلتون كوبري', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 17:01:45', '2024-08-16 17:01:45', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'كركوك', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '45', NULL, 0, NULL, 0, NULL),
(82, 186, '{\"totalQty\":4,\"totalPrice\":1009111,\"items\":{\"451\":{\"user_id\":196,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":1000000,\"item\":{\"id\":451,\"user_id\":196,\"slug\":\"freeeeee-ds08587ggl\",\"name\":\"freeeeee\",\"photo\":\"17230786404TwddMVn.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1000000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"k', 'ASIA PAY', NULL, 'duhuk', '4', 1019111, '‏‏لقطة الشاشة (3).png', NULL, 'FZ8q1723833478', 'Pending', 'axxxxxxxxxxdmin@gmail.com', 'dsssssssssxxxxxxxxxxxxxxsssssss', 'العراق', '+9641111111111111', 'xxxxxxxxxxx', 'قضاء سنجار', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 18:37:58', '2024-08-16 18:37:58', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'نينوى', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '47', NULL, 0, NULL, 0, NULL),
(83, 186, '{\"totalQty\":2,\"totalPrice\":9111,\"items\":{\"454\":{\"user_id\":200,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":4111,\"item\":{\"id\":454,\"user_id\":200,\"slug\":\"mou-mmy2299xta\",\"name\":\"mou\",\"photo\":\"1723832337KBTdQEzY.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":4111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\"', 'ZAIN CASH', NULL, 'duhuk', '2', 19111, '‏‏لقطة الشاشة (6).png', NULL, '8GW91723833666', 'Pending', 'axxxxxxxxxxdmin@gmail.com', 'dsssssssssxxxxxxxxxxxxxxsssssss', 'العراق', '+9641111111111111', 'xxxxxxxxxxx', 'قضاء سنجار', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 18:41:06', '2024-08-16 18:41:06', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'نينوى', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '47', NULL, 0, NULL, 0, NULL),
(84, NULL, '{\"totalQty\":3,\"totalPrice\":11054,\"items\":{\"452\":{\"user_id\":196,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":1054,\"item\":{\"id\":452,\"user_id\":196,\"slug\":\"ereeg-tml1402mgu\",\"name\":\"ereeg\",\"photo\":\"17230914382kQxBGmh.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1054,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\"', 'ASIA PAY', NULL, 'duhuk', '3', 21054, '‏‏لقطة الشاشة (3).png', NULL, 'DujE1723833940', 'Pending', 'wwwwwwwwwwww@gmail.com', 'Ahmad Mostafa Ibrahem', 'العراق', '3525562656', 'ss', 'الاوزاير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 18:45:40', '2024-08-16 18:45:40', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '46', NULL, 0, NULL, 0, NULL),
(85, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (6).png', NULL, 'MFzY1723834000', 'Pending', 'jjjjjjjjjjjjGHGHGHghdnkljtgj@gmail.com', 'aHMAD', 'العراق', '07878943353', 'ss', 'قلعة صالح', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 18:46:40', '2024-08-16 18:46:40', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '46', NULL, 0, NULL, 0, NULL),
(86, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, 'Screenshot_٢٠٢٤٠٨١٦-٠٣١٦٤٧.png', NULL, 'ztjM1723834117', 'Pending', 'fasdfasfda@gmail.com', 'dvds', 'العراق', '5324523', 'hdhd', 'قضاء المشخاب', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 18:48:37', '2024-08-16 18:48:37', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'النجف', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '37', NULL, 0, NULL, 0, NULL),
(87, NULL, '{\"totalQty\":4,\"totalPrice\":15000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '4', 35000, '‏‏لقطة الشاشة (1).png', NULL, 'EJ0a1723834321', 'Pending', 'ahmadmostfa227@gmail.com', 'lfdsnvksdal', 'العراق', '3525562656', 'hdhd', 'قضاء قلعة سكر', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 18:52:01', '2024-08-16 18:52:01', NULL, NULL, 'D', 'IQD', 1, 10000, 10000, 0, 'ذي قار', 0, NULL, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '[103,108]', 0, 1, '{\"103\":\"14\",\"108\":\"13\"}', '{\"103\":\"12\",\"108\":\"11\"}', '42', NULL, 0, NULL, 0, NULL),
(88, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (2).png', NULL, 'AlJy1723834420', 'Pending', 'jjjjjjjjjjjjGHGHGHghdnkljtgj@gmail.com', 'fadgvdf', 'العراق', '07878943353', 'djxj', 'قضاء سنجار', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 18:53:40', '2024-08-16 18:53:40', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'نينوى', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '47', NULL, 0, NULL, 0, NULL),
(89, NULL, '{\"totalQty\":2,\"totalPrice\":10000,\"items\":{\"443\":{\"user_id\":112,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":443,\"user_id\":112,\"slug\":\"mostafajjs-ssp56833qrk\",\"name\":\"mostafajjs\",\"name_ar\":\"\\u0646\\u062a\\u0646\\u062a\\u0646\",\"name_ku\":\"\\u0646\\u062a\\u0646\\u062a\\u0646\",\"photo\":\"1722775758gDXeRVDb.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"size_all\"', 'ASIA PAY', NULL, 'duhuk', '2', 20000, '‏‏لقطة الشاشة (2).png', NULL, '80xT1723834917', 'Pending', 'wwwwwwwwwwww@gmail.com', 'mohamadfggg', 'العراق', '3525562656', 'hdhd', 'الإبراهيمية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:01:57', '2024-08-16 19:01:57', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'كربلاء', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '44', NULL, 0, NULL, 0, NULL),
(90, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (2).png', NULL, 'xMwg1723836329', 'Pending', 'klngkds@gmail.com', 'aHMAD', 'العراق', '342535', 'ss', 'قضاء الجبايش', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:25:29', '2024-08-16 19:25:29', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ذي قار', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '42', NULL, 0, NULL, 0, NULL),
(91, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (3).png', NULL, '5YA31723836376', 'Pending', 'jjjjjjjjjjjjGHGHGHghdnkljtgj@gmail.com', 'Ahmad Mostafa Ibrahem', 'العراق', '07878943353', 'ss', 'قضاء المجر الكبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:26:16', '2024-08-16 19:26:16', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '46', NULL, 0, NULL, 0, NULL),
(92, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (2).png', NULL, 'ODHL1723836614', 'Pending', 'wwwwwwwwwwww@gmail.com', 'tyty', 'العراق', '3525562656', 'ss', 'السيدية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:30:14', '2024-08-16 19:30:14', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'بغداد', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '32', NULL, 0, NULL, 0, NULL),
(93, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '1', 15000, 'التقاط.PNG', NULL, 'CURK1723836693', 'Pending', 'ahmadmostfa228@gmail.com', 'mohamadfggg', 'العراق', '0564648465', 'fdg', 'قضاء الدواية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:31:33', '2024-08-16 19:31:33', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ذي قار', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '42', NULL, 0, NULL, 0, NULL),
(94, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (3).png', NULL, 'KZFA1723837136', 'Pending', 'ahmadm327@gmail.com', 'tyty', 'العراق', '3525562656', 'gg', 'قضاء المجر الكبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:38:56', '2024-08-16 19:38:56', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '46', NULL, 0, NULL, 0, NULL),
(95, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ZAIN CASH', NULL, 'duhuk', '1', 15000, '1723837581921426555313813718928.jpg', NULL, 'Zj161723837589', 'Pending', 'hznonon@gmail.com', 'xvyvzuv', 'العراق', '54745', 'hcfuf', 'حرير', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:46:29', '2024-08-16 19:46:29', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'أربيل', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '38', NULL, 0, NULL, 0, NULL),
(96, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"442\":{\"user_id\":108,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":442,\"user_id\":108,\"slug\":\"mostafajj-bur3879c2k\",\"name\":\"mostafajj\",\"photo\":\"1722763918RGiCjjcf.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '17238377672106387496955931570395.jpg', NULL, '1zU31723837775', 'Pending', 'hddhhd@gmail.com', 'hddhhd', 'العراق', '37733', 'dhdhhd', 'الكفل', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:49:35', '2024-08-16 19:49:35', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'بابل', 0, NULL, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '[108]', 0, 1, '{\"108\":\"13\"}', '{\"108\":\"11\"}', '40', NULL, 0, NULL, 0, NULL),
(97, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'Cash On Delivery', NULL, 'duhuk', '1', 15000, NULL, NULL, 'H7M21723838183', 'Pending', 'ahmadmostfa228@gmail.com', 'aHMAD', 'العراق', '0564648465', 'sdsd', 'قضاء تلكيف', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:56:23', '2024-08-16 19:56:23', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'نينوى', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '47', NULL, 0, NULL, 0, NULL),
(98, NULL, '{\"totalQty\":1,\"totalPrice\":5000,\"items\":{\"441\":{\"user_id\":103,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":5000,\"item\":{\"id\":441,\"user_id\":103,\"slug\":\"mostafa-ss-drweshe-ruk8829lad\",\"name\":\"mostafa ss drweshe\",\"photo\":\"1722718892eQeo7klA.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":5000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":\"\"},\"license\":\"\",\"d', 'ASIA PAY', NULL, 'duhuk', '1', 15000, '‏‏لقطة الشاشة (3).png', NULL, 'r3sA1723838253', 'Pending', 'jjjjjjjjjjjjGHGHGHghdnkljtgj@gmail.com', 'lfdsnvksdal', 'العراق', '07878943353', 'sdf', 'قضاء المجر الكبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 19:57:33', '2024-08-16 19:57:33', NULL, NULL, 'D', 'IQD', 1, 5000, 5000, 0, 'ميسان\r\n', 0, NULL, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '[103]', 0, 1, '{\"103\":\"14\"}', '{\"103\":\"12\"}', '46', NULL, 0, NULL, 0, NULL),
(99, NULL, '{\"totalQty\":1,\"totalPrice\":1425,\"items\":{\"455\":{\"user_id\":0,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":1425,\"item\":{\"id\":455,\"user_id\":0,\"slug\":\"hours-xdq6443dlx\",\"name\":\"hours\",\"photo\":\"1723846569hIIDG7F6.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1425,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\"', 'ZAIN CASH', NULL, 'duhuk', '1', 1425, 'icons8-shoes-64.png', NULL, '9i8G1723846767', 'Pending', 'mmeeeem@gmail.com', 'Drrrr', 'العراق', '333333', 'azaz', 'العالم', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 22:19:27', '2024-08-16 22:19:27', NULL, NULL, 'D', 'IQD', 1, 0, 0, 0, 'صلاح الدين', 0, NULL, '[\"1\"]', '[\"1\"]', '[0]', 0, 1, '[\"1\"]', '[\"1\"]', '48', NULL, 0, NULL, 0, NULL),
(100, NULL, '{\"totalQty\":1,\"totalPrice\":10000,\"items\":{\"460\":{\"user_id\":0,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":10000,\"item\":{\"id\":460,\"user_id\":0,\"slug\":\"meak-2cr8273uhe4\",\"name\":\"meak\",\"photo\":\"1723848548JhhpUoAa.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":10000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values', 'ZAIN CASH', NULL, 'duhuk', '1', 10000, 'icons8-accessories-80.png', NULL, '71yS1723848635', 'Pending', 'wwwwwdswwwwwww@gmail.com', 'aHMAD', 'العراق', '3525562656', 'asfasf', 'السيدية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-16 22:50:35', '2024-08-16 22:50:35', NULL, NULL, 'D', 'IQD', 1, 0, 0, 0, 'بغداد', 0, NULL, '[\"1\"]', '[\"1\"]', '[0]', 0, 1, '[\"1\"]', '[\"1\"]', '32', NULL, 0, NULL, 0, NULL),
(101, NULL, '{\"totalQty\":1,\"totalPrice\":90000,\"items\":{\"463\":{\"user_id\":0,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":90000,\"item\":{\"id\":463,\"user_id\":0,\"slug\":\"Professional-camera-eye8736ot1\",\"name\":\"Professional camera\",\"photo\":\"17238488682KhYCfIj.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":90000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\"', 'ASIA PAY', NULL, 'duhuk', '1', 90000, 'icons8-glasses-96.png', NULL, '2Zt11723893829', 'Pending', 'jjjjjjjjjjjjGHGHGHghdnkljtgj@gmail.com', 'lfdsnvksdal', 'العراق', '07878943353', 'gg', 'قضاء سنجار', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-08-17 11:23:49', '2024-08-17 11:23:49', NULL, NULL, 'D', 'IQD', 1, 0, 0, 0, 'نينوى', 0, NULL, '[\"1\"]', '[\"1\"]', '[0]', 0, 1, '[\"1\"]', '[\"1\"]', '47', NULL, 0, NULL, 0, NULL),
(316, NULL, '{\"totalQty\":1,\"totalPrice\":11111,\"items\":{\"617\":{\"user_id\":175,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":12,\"price\":11111,\"item\":{\"id\":617,\"user_id\":175,\"slug\":\"kkkkkkk-cja9uuuu825efu\",\"name\":\"kkkkkkk\",\"photo\":\"1726071411t1TLYYmy.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":11111,\"stock\":13,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":11111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'Default Shipping', 'duhuk', '1', 16671, NULL, NULL, 'DJZ91726085986', 'Pending', 'wwwwwwwwwwww@gmail.com', 'Ahmad Mostafa Ibrahem', 'العراق', '3525562656', 'kk', 'السيدية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-11 20:19:46', '2024-09-11 20:19:46', NULL, NULL, 'IQD', 'IQD', 1, 5, 5555, 0, 'بغداد', 0, NULL, '{\"175\":\"27\"}', '{\"175\":\"21\"}', '[175]', 0, 1, '{\"175\":\"27\"}', '{\"175\":\"21\"}', '32', NULL, 0, NULL, 0, NULL),
(317, NULL, '{\"totalQty\":1,\"totalPrice\":111111,\"items\":{\"619\":{\"user_id\":175,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":111111,\"item\":{\"id\":619,\"user_id\":175,\"slug\":\"dd-zvv6164otp\",\"name\":\"dd\",\"photo\":\"17260862186V1iuE52.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":111111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":111111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'Default Shipping', 'duhuk', '1', 116671, NULL, NULL, 'vGwB1726086465', 'Pending', 'wwwwwwwwwwww@gmail.com', 'tyty', 'العراق', '3525562656', 'gg', 'السيدية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-11 20:27:45', '2024-09-11 20:27:45', NULL, NULL, 'IQD', 'IQD', 1, 5, 5555, 0, 'بغداد', 0, NULL, '{\"175\":\"27\"}', '{\"175\":\"21\"}', '[175]', 0, 1, '{\"175\":\"27\"}', '{\"175\":\"21\"}', '32', NULL, 0, NULL, 0, NULL),
(318, NULL, '{\"totalQty\":1,\"totalPrice\":111111,\"items\":{\"619\":{\"user_id\":221,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":111111,\"item\":{\"id\":619,\"user_id\":221,\"slug\":\"dd-zvv6164otp\",\"name\":\"dd\",\"photo\":\"17260862186V1iuE52.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":111111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":111111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'Default Shipping', 'duhuk', '1', 446444, NULL, NULL, 'qir41726088483', 'Pending', 'wwwwwwwwwwww@gmail.com', 'lfdsnvksdal', 'العراق', '3525562656', 'kk', 'السيدية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-11 21:01:23', '2024-09-11 21:01:23', NULL, NULL, 'IQD', 'IQD', 1, 2000, 333333, 0, 'العراق', 0, NULL, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '[221]', 0, 1, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '32', NULL, 0, NULL, 0, NULL),
(319, 221, '{\"totalQty\":1,\"totalPrice\":111111,\"items\":{\"619\":{\"user_id\":221,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":111111,\"item\":{\"id\":619,\"user_id\":221,\"slug\":\"dd-zvv6164otp\",\"name\":\"dd\",\"photo\":\"17260862186V1iuE52.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":111111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":111111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'ZAIN CASH', 'Default Shipping', 'duhuk', '1', 446444, '1(2).jpg', NULL, 'B9ol1726088636', 'Pending', 'eeeseeeseee@gmial.com', 'eeeee', 'العراق', '+964333333333', 'tydhdth', 'سميل', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-11 21:03:56', '2024-09-11 21:03:56', NULL, NULL, 'IQD', 'IQD', 1, 2000, 333333, 0, 'دهوك', 0, NULL, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '[221]', 0, 1, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '41', NULL, 0, NULL, 0, NULL),
(320, 221, '{\"totalQty\":1,\"totalPrice\":111111,\"items\":{\"619\":{\"user_id\":221,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":111111,\"item\":{\"id\":619,\"user_id\":221,\"slug\":\"dd-zvv6164otp\",\"name\":\"dd\",\"photo\":\"17260862186V1iuE52.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":111111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":111111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'Default Shipping', 'duhuk', '1', 446444, NULL, NULL, 'V6Bs1726088781', 'Pending', 'eeeseeeseee@gmial.com', 'eeeee', 'العراق', '+964333333333', 'tydhdth', 'رواندز', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-11 21:06:21', '2024-09-11 21:06:21', NULL, NULL, 'IQD', 'IQD', 1, 2000, 333333, 0, 'أربيل', 0, NULL, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '[221]', 0, 1, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '38', NULL, 0, NULL, 0, NULL),
(321, NULL, '{\"totalQty\":1,\"totalPrice\":111111,\"items\":{\"620\":{\"user_id\":221,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":111111,\"item\":{\"id\":620,\"user_id\":221,\"slug\":\"ttttt-zvttv6164otp\",\"name\":\"ttttt\",\"photo\":\"1726089125HoY5Y4PQ.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":111111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":111111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'ASIA PAY', 'Default Shipping', 'duhuk', '1', 446444, 'IMG-20240911-WA0062.jpg', NULL, 'nk2Z1726093053', 'Pending', 'hsgshs@gmail.com', 'jdhdhdhd jsjssh', 'العراق', '934892', 'djdjj', 'ماناثيرا', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-11 22:17:33', '2024-09-11 22:17:33', NULL, NULL, 'IQD', 'IQD', 1, 2000, 333333, 0, 'النجف', 0, NULL, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '[221]', 0, 1, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '37', NULL, 0, NULL, 0, NULL),
(322, 222, '{\"totalQty\":2,\"totalPrice\":111111,\"items\":{\"620\":{\"user_id\":221,\"qty\":\"1\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":111111,\"item\":{\"id\":620,\"user_id\":221,\"slug\":\"ttttt-zvttv6164otp\",\"name\":\"ttttt\",\"photo\":\"1726089125HoY5Y4PQ.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":111111,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":111111,\"discount\":0,\"affilate_user\":\"0\"}}}', 'ASIA PAY', 'Default Shipping', 'duhuk', '2', 446444, '1(3).jpg', NULL, 'Lql41726093723', 'Pending', 'ddddd@gmail.com', 'ddddd', 'العراق', '+96433334', 'fgdhg', 'باتيفا', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-11 22:28:43', '2024-09-11 22:28:43', NULL, NULL, 'IQD', 'IQD', 1, 2000, 333333, 0, 'دهوك', 0, NULL, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '[221]', 0, 1, '{\"221\":\"28\"}', '{\"221\":\"22\"}', '41', NULL, 0, NULL, 0, NULL),
(324, 213, '[{\"id\":466,\"user_id\":0,\"title\":\"Red pen\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725741458FnP4Eh8P.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725741458semSBZIj.png\",\"images\":[{\"id\":369,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467Uow97xrS.jpg\"},{\"id\":370,\"image\":\"https://ealanatek.site/assets/images/galleries/17257044678QUwFPEe.jpg\"},{\"id\":371,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467KiVqqJUX.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"900000\",\"previous_price\":\"422\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"\",\"policy\":\"\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"13 items\"},\"created_at\":\"2024-08-16T22:59:32.000000Z\",\"updated_at\":\"2024-09-08T04:13:30.000000Z\"},{\"id\":590,\"user_id\":200,\"title\":\"football\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725881058T7MI1g5E.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"images\":[{\"id\":425,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082fGPCKQHj.jpg\"},{\"id\":426,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082KVQYBAuz.jpg\"},{\"id\":427,\"image\":\"https://ealanatek.site/assets/images/galleries/17258810825qBTHmD6.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"football\",\"policy\":\"football\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[{\"id\":464,\"title\":\"Sports shoes\",\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-09T13:14:17.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"2 items\"},\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-09T23:24:11.000000Z\"},{\"id\":623,\"user_id\":213,\"title\":\"moo\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/\",\"first_image\":\"https://ealanatek.site/assets/images/products/product_images/y5VoJOq3QvbzP77JMtM3x0UGMXCMMxXN5NL0e9U3.jpg\",\"images\":[],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":\"mm\",\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"nnn\",\"policy\":\"mmm\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[{\"id\":461,\"title\":\"handbag\",\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/assets/images/thumbnails/1723848659qy8zYUlI.png\",\"rating\":\"0\",\"current_price\":\"50000\",\"previous_price\":\"10\",\"created_at\":\"2024-08-16T22:51:00.000000Z\",\"updated_at\":\"2024-09-14T00:32:20.000000Z\",\"category_id\":42},{\"id\":614,\"title\":\"dddddddasaaaaa\",\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/assets/images/thumbnails/17260689633ilwabGm.png\",\"rating\":\"0\",\"current_price\":\"22\",\"previous_price\":\"2\",\"created_at\":\"2024-09-11T15:36:03.000000Z\",\"updated_at\":\"2024-09-11T16:26:05.000000Z\",\"category_id\":42}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":null,\"items\":\"1 items\"},\"created_at\":\"2024-09-15T11:49:51.000000Z\",\"updated_at\":\"2024-09-15T11:49:51.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '3', 902000, 'اسم الملف: لا يوجد ملف محدد', NULL, 'A4VZN9H4O4', 'Pending', 'g3@gmail.com', 'asasa', 'العراق', '+905345504439', 'ff', 'الفلوجة', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-15 11:53:53', '2024-09-15 11:53:53', NULL, NULL, 'IQD', 'IQD', 902000, 0, 0, 0, 'الأنبار', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'الأنبار', NULL, 0, NULL, 0, NULL),
(325, 213, '[{\"id\":466,\"user_id\":0,\"title\":\"Red pen\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725741458FnP4Eh8P.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725741458semSBZIj.png\",\"images\":[{\"id\":369,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467Uow97xrS.jpg\"},{\"id\":370,\"image\":\"https://ealanatek.site/assets/images/galleries/17257044678QUwFPEe.jpg\"},{\"id\":371,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467KiVqqJUX.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"900000\",\"previous_price\":\"422\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"\",\"policy\":\"\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"13 items\"},\"created_at\":\"2024-08-16T22:59:32.000000Z\",\"updated_at\":\"2024-09-08T04:13:30.000000Z\"},{\"id\":590,\"user_id\":200,\"title\":\"football\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725881058T7MI1g5E.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"images\":[{\"id\":425,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082fGPCKQHj.jpg\"},{\"id\":426,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082KVQYBAuz.jpg\"},{\"id\":427,\"image\":\"https://ealanatek.site/assets/images/galleries/17258810825qBTHmD6.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"football\",\"policy\":\"football\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[{\"id\":464,\"title\":\"Sports shoes\",\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-09T13:14:17.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"2 items\"},\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-09T23:24:11.000000Z\"},{\"id\":623,\"user_id\":213,\"title\":\"moo\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/\",\"first_image\":\"https://ealanatek.site/assets/images/products/product_images/y5VoJOq3QvbzP77JMtM3x0UGMXCMMxXN5NL0e9U3.jpg\",\"images\":[],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":\"mm\",\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"nnn\",\"policy\":\"mmm\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[{\"id\":461,\"title\":\"handbag\",\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/assets/images/thumbnails/1723848659qy8zYUlI.png\",\"rating\":\"0\",\"current_price\":\"50000\",\"previous_price\":\"10\",\"created_at\":\"2024-08-16T22:51:00.000000Z\",\"updated_at\":\"2024-09-14T00:32:20.000000Z\",\"category_id\":42},{\"id\":614,\"title\":\"dddddddasaaaaa\",\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/assets/images/thumbnails/17260689633ilwabGm.png\",\"rating\":\"0\",\"current_price\":\"22\",\"previous_price\":\"2\",\"created_at\":\"2024-09-11T15:36:03.000000Z\",\"updated_at\":\"2024-09-11T16:26:05.000000Z\",\"category_id\":42}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":null,\"items\":\"1 items\"},\"created_at\":\"2024-09-15T11:49:51.000000Z\",\"updated_at\":\"2024-09-15T11:49:51.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '3', 902000, 'اسم الملف: لا يوجد ملف محدد', NULL, 'XX3TE81V3O', 'Pending', 'g3@gmail.com', 'asasa', 'العراق', '+905345504439', 'ff', 'قضاء الزبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-15 11:57:30', '2024-09-15 11:57:30', NULL, NULL, 'IQD', 'IQD', 902000, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(326, NULL, '{\"totalQty\":1,\"totalPrice\":900000,\"items\":{\"466\":{\"user_id\":0,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":900000,\"item\":{\"id\":466,\"user_id\":0,\"slug\":\"red-pen-mno9003u4v\",\"name\":\"Red pen\",\"name_ar\":\"\\u0642\\u0644\\u0645 \\u0627\\u062d\\u0645\\u0631\",\"name_ku\":\"\\u0642\\u0644\\u0645 \\u0627\\u062d\\u0645\\u0631\",\"photo\":\"1725741458semSBZIj.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":900000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":900000,\"discount\":0,\"affilate_user\":0}}}', 'Cash On Delivery', 'Default Shipping', 'duhuk', '1', 907553, NULL, NULL, 'HqNB1726405241', 'Pending', 'g3@gmail.com', 'asasa', 'العراق', '5558888', 'vvc', 'قضاء الدواية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-15 13:00:41', '2024-09-15 13:00:41', NULL, NULL, 'IQD', 'IQD', 1, 2000, 5553, 0, 'البصرى', 0, NULL, '[\"24\"]', '[\"18\"]', '[0]', 0, 1, '[\"24\"]', '[\"18\"]', '34', NULL, 0, NULL, 0, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `vendor_ids`, `wallet_price`, `is_shipping`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`, `riders`) VALUES
(327, 201, '[{\"id\":466,\"user_id\":0,\"title\":\"Red pen\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725741458FnP4Eh8P.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725741458semSBZIj.png\",\"images\":[{\"id\":369,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467Uow97xrS.jpg\"},{\"id\":370,\"image\":\"https://ealanatek.site/assets/images/galleries/17257044678QUwFPEe.jpg\"},{\"id\":371,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467KiVqqJUX.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"900000\",\"previous_price\":\"422\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"\",\"policy\":\"\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":2,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"76\",\"name\":\"gghe\",\"comment\":\"ggg\",\"replies\":[],\"created_at\":\"2024-07-12T17:52:48.000000Z\",\"updated_at\":\"2024-09-11T12:34:49.000000Z\"}],\"related_products\":[],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"20 items\"},\"created_at\":\"2024-08-16T22:59:32.000000Z\",\"updated_at\":\"2024-09-15T13:02:54.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 900000, 'اسم الملف: لا يوجد ملف محدد', NULL, 'ZQ1MBV8ERF', 'Pending', 'test11@gmail.com', 'test1', 'العراق', '+9643333332', 'axaza', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-17 22:56:53', '2024-09-17 22:56:53', NULL, NULL, 'IQD', 'IQD', 900000, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(328, 201, '[{\"id\":591,\"user_id\":0,\"title\":\"adm\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725981852nujQlvfe.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725981852lWbQ8IhV.png\",\"images\":[],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"adm\",\"policy\":\"adm\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-09-09T13:09:57.000000Z\",\"updated_at\":\"2024-09-18T19:29:52.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 1000, 'اسم الملف: لا يوجد ملف محدد', NULL, 'XD3OJMPL0A', 'Pending', 'test11@gmail.com', 'test1', 'العراق', '+9643333332', 'axaza', 'قضاء أبي الخطيب', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-18 21:36:36', '2024-09-18 21:36:36', NULL, NULL, 'IQD', 'IQD', 1000, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(331, 213, '[{\"id\":466,\"user_id\":0,\"title\":\"Red pen\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725741458FnP4Eh8P.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725741458semSBZIj.png\",\"images\":[{\"id\":369,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467Uow97xrS.jpg\"},{\"id\":370,\"image\":\"https://ealanatek.site/assets/images/galleries/17257044678QUwFPEe.jpg\"},{\"id\":371,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467KiVqqJUX.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"900000\",\"previous_price\":\"422\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"\",\"policy\":\"\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":2,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"76\",\"name\":\"gghe\",\"comment\":\"ggg\",\"replies\":[],\"created_at\":\"2024-07-12T17:52:48.000000Z\",\"updated_at\":\"2024-09-11T12:34:49.000000Z\"},{\"id\":6,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"asasa\",\"comment\":\"hdhdh\",\"replies\":[],\"created_at\":\"2024-09-21T14:33:47.000000Z\",\"updated_at\":\"2024-09-21T14:33:47.000000Z\"},{\"id\":7,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"asasa\",\"comment\":\"ggn\",\"replies\":[],\"created_at\":\"2024-09-21T14:34:47.000000Z\",\"updated_at\":\"2024-09-21T14:34:47.000000Z\"},{\"id\":8,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"asasa\",\"comment\":\"hgggf\",\"replies\":[],\"created_at\":\"2024-09-21T14:52:17.000000Z\",\"updated_at\":\"2024-09-21T14:52:17.000000Z\"}],\"related_products\":[{\"id\":652,\"title\":\"yvtvtv\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726923530BhV4bETo.jpg\",\"rating\":\"0\",\"current_price\":\"32\",\"previous_price\":\"6\",\"created_at\":\"2024-09-21T12:58:50.000000Z\",\"updated_at\":\"2024-09-21T12:58:50.000000Z\",\"category_id\":46}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:59:32.000000Z\",\"updated_at\":\"2024-09-19T10:32:56.000000Z\"},{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-20T20:13:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-20T12:38:51.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '2', 1655551, 'اسم الملف: لا يوجد ملف محدد', NULL, '101KUH7FG3', 'Pending', 'g3@gmail.com', 'asasa', 'العراق', '+905345504439', 'ff', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-21 14:56:01', '2024-09-21 14:56:01', NULL, NULL, 'IQD', 'IQD', 1655551, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(332, 213, '[{\"id\":466,\"user_id\":0,\"title\":\"Red pen\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725741458FnP4Eh8P.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725741458semSBZIj.png\",\"images\":[{\"id\":369,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467Uow97xrS.jpg\"},{\"id\":370,\"image\":\"https://ealanatek.site/assets/images/galleries/17257044678QUwFPEe.jpg\"},{\"id\":371,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467KiVqqJUX.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"900000\",\"previous_price\":\"422\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"\",\"policy\":\"\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":2,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"76\",\"name\":\"gghe\",\"comment\":\"ggg\",\"replies\":[],\"created_at\":\"2024-07-12T17:52:48.000000Z\",\"updated_at\":\"2024-09-11T12:34:49.000000Z\"},{\"id\":6,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"asasa\",\"comment\":\"hdhdh\",\"replies\":[],\"created_at\":\"2024-09-21T14:33:47.000000Z\",\"updated_at\":\"2024-09-21T14:33:47.000000Z\"},{\"id\":7,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"asasa\",\"comment\":\"ggn\",\"replies\":[],\"created_at\":\"2024-09-21T14:34:47.000000Z\",\"updated_at\":\"2024-09-21T14:34:47.000000Z\"},{\"id\":8,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"asasa\",\"comment\":\"hgggf\",\"replies\":[],\"created_at\":\"2024-09-21T14:52:17.000000Z\",\"updated_at\":\"2024-09-21T14:52:17.000000Z\"}],\"related_products\":[{\"id\":652,\"title\":\"yvtvtv\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726923530BhV4bETo.jpg\",\"rating\":\"0\",\"current_price\":\"32\",\"previous_price\":\"6\",\"created_at\":\"2024-09-21T12:58:50.000000Z\",\"updated_at\":\"2024-09-21T12:58:50.000000Z\",\"category_id\":46}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:59:32.000000Z\",\"updated_at\":\"2024-09-19T10:32:56.000000Z\"},{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-20T20:13:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-20T12:38:51.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '2', 1655551, 'اسم الملف: لا يوجد ملف محدد', NULL, 'TQWLU95H2B', 'Pending', 'g3@gmail.com', 'asasa', 'العراق', '+905345504439', 'ff', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-21 15:25:58', '2024-09-21 15:25:58', NULL, NULL, 'IQD', 'IQD', 1655551, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(336, 239, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":2,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-20T20:13:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-22T11:43:09.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-20T12:38:51.000000Z\"}]', 'ASIA PAY', 'Default Shipping', 'Deafault', '2', 1511102, 'اسم الملف: File: \'/data/user/0/com.example.azrar_run/cache/fb12e0f8-4660-4071-af73-81ce47385cb1/Screenshot_٢٠٢٤-٠٩-٢٢-١٥-٥٩-٤٠-٣٣٥_com.example.azrar_run.jpg\'', NULL, 'UWVG2KWZ4E', 'Pending', 'ahamadmohamad200@gmail.com', 'ahamad', 'العراق', '+447828773900', 'azaz', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-22 13:22:05', '2024-09-22 13:22:05', NULL, NULL, 'IQD', 'IQD', 1511102, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(337, 61, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-20T20:13:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-22T11:43:09.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-20T12:38:51.000000Z\"}]', 'ASIA PAY', 'Default Shipping', 'Deafault', '1', 755551, 'اسم الملف: File: \'/data/user/0/com.example.azrar/cache/93da68c0-f872-4ae6-9310-ef847e670318/1000270673.jpg\'', NULL, 'BCS9MGZMHX', 'Pending', 'admin@gmail.com', 'Hasan Hazzoury', 'العراق', '05362313692', 'admin@gmail.com', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-24 11:10:05', '2024-09-24 11:10:05', NULL, NULL, 'IQD', 'IQD', 755551, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(338, 225, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-20T20:13:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-22T11:43:09.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-20T12:38:51.000000Z\"}]', 'ASIA PAY', 'Default Shipping', 'Deafault', '1', 755551, 'اسم الملف: File: \'/data/user/0/com.example.azrar/cache/26bcbdae-7616-4955-b2db-e5cdb1edd29c/1000270680.jpg\'', NULL, 'EED9DT8GN5', 'Pending', 'testuser@gmail.com', 'testuser', 'العراق', '+9645555555', 's', 'الفلوجة', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-24 11:12:56', '2024-09-24 11:12:56', NULL, NULL, 'IQD', 'IQD', 755551, 0, 0, 0, 'الأنبار', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'الأنبار', NULL, 0, NULL, 0, NULL),
(339, 225, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":2,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-20T20:13:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-22T11:43:09.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-20T12:38:51.000000Z\"},{\"id\":590,\"user_id\":200,\"title\":\"football\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725881058T7MI1g5E.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"images\":[{\"id\":425,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082fGPCKQHj.jpg\"},{\"id\":426,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082KVQYBAuz.jpg\"},{\"id\":427,\"image\":\"https://ealanatek.site/assets/images/galleries/17258810825qBTHmD6.jpg\"}],\"count\":2,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"football\",\"policy\":\"football\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":4,\"user_image\":\"/assets/images/users/1726182068Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"tttttn1234\",\"comment\":\"هلا احمد\",\"replies\":[],\"created_at\":\"2024-09-20T13:19:28.000000Z\",\"updated_at\":\"2024-09-20T13:19:28.000000Z\"}],\"related_products\":[{\"id\":464,\"title\":\"Sports shoes\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-20T12:38:51.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-22T11:43:09.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"2 items\"},\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-20T20:13:46.000000Z\"}]', 'ASIA PAY', 'Default Shipping', 'Deafault', '4', 1513102, 'اسم الملف: File: \'/data/user/0/com.example.azrar/cache/ad2b18cb-7f9a-4ac8-a947-616664873db1/1000270706.jpg\'', NULL, 'Y74G3EWZBX', 'Pending', 'testuser@gmail.com', 'testuser', 'العراق', '+9645555555', 's', 'السماوة', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-24 11:18:31', '2024-09-24 11:18:31', NULL, NULL, 'IQD', 'IQD', 1513102, 0, 0, 0, 'المثنى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'المثنى', NULL, 0, NULL, 0, NULL),
(340, NULL, '{\"totalQty\":3,\"totalPrice\":2000,\"items\":{\"590\":{\"user_id\":200,\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":2000,\"item\":{\"id\":590,\"user_id\":200,\"slug\":\"football-w6109603fv\",\"name\":\"football\",\"name_ar\":\"\\u0643\\u0631\\u0629 \\u0642\\u062f\\u0645\",\"name_ku\":\"\\u0643\\u0631\\u0629 \\u0642\\u062f\\u0645\",\"photo\":\"1725881058VLRsYwu2.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":1000,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'Default Shipping', 'duhuk', '3', 2590, NULL, NULL, 'gVv21727188192', 'Pending', 'g3@gmail.com', 'asasa', 'العراق', '5558888', 'vvc', 'قضاء الهندية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-24 14:29:52', '2024-09-24 14:29:52', NULL, NULL, 'IQD', 'IQD', 1, 100, 490, 0, 'كربلاء', 0, NULL, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '[200]', 0, 1, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '44', NULL, 0, NULL, 0, NULL),
(342, 245, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":2,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[{\"id\":10,\"user_image\":\"/assets/images/users/1726182068Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"tttttn1200hsshs8dhshhs\",\"comment\":\"znzjhzhh\",\"created_at\":\"2024-09-25T12:10:01.000000Z\",\"updated_at\":\"2024-09-25T12:10:01.000000Z\"}],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"},{\"id\":15,\"user_image\":\"/assets/images/users/1726182068Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"tttttn1200hsshs8dhshhs\",\"comment\":\"jssjhxhd\",\"replies\":[{\"id\":9,\"user_image\":\"/assets/images/users/1726182068Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"tttttn1200hsshs8dhshhs\",\"comment\":\"sjzjhxhhdh\",\"created_at\":\"2024-09-25T12:09:55.000000Z\",\"updated_at\":\"2024-09-25T12:09:55.000000Z\"}],\"created_at\":\"2024-09-25T12:09:50.000000Z\",\"updated_at\":\"2024-09-25T12:09:50.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-24T14:28:57.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-22T11:43:09.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-25T06:36:20.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '2', 1511102, 'اسم الملف: لا يوجد ملف محدد', NULL, '7R6F59H8JU', 'Pending', 'rr@gmail.com', 'jshdhs', 'العراق', '+352681505974', 'zbzjhz', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-25 12:13:15', '2024-09-25 12:13:15', NULL, NULL, 'IQD', 'IQD', 1511102, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(343, 247, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[{\"id\":10,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"znzjhzhh\",\"created_at\":\"2024-09-25T12:10:01.000000Z\",\"updated_at\":\"2024-09-25T12:10:01.000000Z\"}],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"},{\"id\":15,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"jssjhxhd\",\"replies\":[{\"id\":9,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"sjzjhxhhdh\",\"created_at\":\"2024-09-25T12:09:55.000000Z\",\"updated_at\":\"2024-09-25T12:09:55.000000Z\"}],\"created_at\":\"2024-09-25T12:09:50.000000Z\",\"updated_at\":\"2024-09-25T12:09:50.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-24T14:28:57.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-14T11:28:14.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-22T11:43:09.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-25T06:36:20.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 755551, 'اسم الملف: لا يوجد ملف محدد', NULL, 'C7Z1O6L9AZ', 'Pending', 'mm1@gmail.com', 'mm', 'العراق', '+905345504439', 'azaz', 'قضاء أبي الخطيب', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-26 20:54:16', '2024-09-26 20:54:16', NULL, NULL, 'IQD', 'IQD', 755551, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(344, NULL, '{\"totalQty\":7,\"totalPrice\":206396,\"items\":{\"459\":{\"user_id\":0,\"qty\":1,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":200000,\"item\":{\"id\":459,\"user_id\":0,\"slug\":\"chess-mml8447tac\",\"name\":\"chess\",\"name_ar\":\"\\u0634\\u0637\\u0631\\u0646\\u062c\",\"name_ku\":\"\\u0634\\u0637\\u0631\\u0646\\u062c\",\"photo\":\"1723848538YSpWEMEu.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":200000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"[]\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":200000,\"discount\":0,\"affilate_user\":\"0\"},\"653\":{\"user_id\":238,\"qty\":6,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":6396,\"item\":{\"id\":653,\"user_id\":238,\"slug\":\"ILLD5IRQ2O\",\"name\":\"msn\",\"photo\":\"1727005389Pj04auUC.jpg\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1066,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":null,\"minimum_qty\":\"6\",\"stock_check\":1,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":1066,\"discount\":0,\"affilate_user\":\"0\"}}}', 'Cash On Delivery', 'Default Shipping', 'duhuk', '7', 219739, NULL, NULL, 'hxsW1727435915', 'Pending', 'ahmadmostfa227@gmail.com', 'aHMAD', 'العراق', '3525562656', 'gg', 'قضاء المشخاب', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-27 11:18:35', '2024-09-27 11:18:35', NULL, NULL, 'IQD', 'IQD', 1, 2799, 10544, 0, 'النجف', 0, NULL, '{\"0\":\"24\",\"238\":\"43\"}', '{\"0\":\"18\",\"238\":\"37\"}', '[0,238]', 0, 1, '{\"0\":\"24\",\"238\":\"43\"}', '{\"0\":\"18\",\"238\":\"37\"}', '37', NULL, 0, NULL, 0, NULL),
(345, 237, '[{\"id\":471,\"user_id\":200,\"title\":\"carrr1\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735476PkEkd6wX.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735476uLujlrhW.png\",\"images\":[{\"id\":366,\"image\":\"https://ealanatek.site/assets/images/galleries/1725056865mMWVkc1d.jpg\"},{\"id\":367,\"image\":\"https://ealanatek.site/assets/images/galleries/1725056865kajNggbg.jpg\"},{\"id\":368,\"image\":\"https://ealanatek.site/assets/images/galleries/1725056872Hcu8kX0O.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"555\",\"previous_price\":\"5\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"carrr1\",\"policy\":\"carrr1\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":5,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"kxod\",\"replies\":[],\"created_at\":\"2024-09-20T23:19:58.000000Z\",\"updated_at\":\"2024-09-20T23:19:58.000000Z\"},{\"id\":12,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"239\",\"name\":\"ahamad\",\"comment\":\"hello world\",\"replies\":[],\"created_at\":\"2024-09-22T13:40:02.000000Z\",\"updated_at\":\"2024-09-22T13:40:02.000000Z\"},{\"id\":13,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"61\",\"name\":\"bHasan Hazzoury\",\"comment\":\"ggff\",\"replies\":[],\"created_at\":\"2024-09-23T16:14:47.000000Z\",\"updated_at\":\"2024-09-23T16:14:47.000000Z\"}],\"related_products\":[{\"id\":458,\"title\":\"ipone\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1723848443DhJDlFYE.png\",\"rating\":\"0\",\"current_price\":\"3000\",\"previous_price\":\"30\",\"created_at\":\"2024-08-16T22:47:23.000000Z\",\"updated_at\":\"2024-09-27T10:07:44.000000Z\",\"category_id\":40},{\"id\":594,\"title\":\"deee\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726000992Yran1dOY.png\",\"rating\":\"0\",\"current_price\":\"10000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-10T20:43:12.000000Z\",\"updated_at\":\"2024-09-28T00:01:12.000000Z\",\"category_id\":40},{\"id\":596,\"title\":\"test1\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726003287FgB38xDl.png\",\"rating\":\"0\",\"current_price\":\"123\",\"previous_price\":\"12\",\"created_at\":\"2024-09-10T21:21:27.000000Z\",\"updated_at\":\"2024-09-27T12:27:51.000000Z\",\"category_id\":40},{\"id\":597,\"title\":\"test2\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726003342odVHIwNV.png\",\"rating\":\"0\",\"current_price\":\"123\",\"previous_price\":\"12\",\"created_at\":\"2024-09-10T21:22:22.000000Z\",\"updated_at\":\"2024-09-27T12:33:25.000000Z\",\"category_id\":40},{\"id\":620,\"title\":\"ttttt\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726089125HoY5Y4PQ.png\",\"rating\":\"0\",\"current_price\":\"111111\",\"previous_price\":\"1\",\"created_at\":\"2024-09-11T21:12:05.000000Z\",\"updated_at\":\"2024-09-27T12:38:24.000000Z\",\"category_id\":40}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"2 items\"},\"created_at\":\"2024-08-17T16:19:22.000000Z\",\"updated_at\":\"2024-09-26T17:13:48.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 555, 'اسم الملف: لا يوجد ملف محدد', NULL, '2F9OYVNK2Y', 'Pending', 'me@gmail.com', 'me', 'العراق', '+905345504439', 'aza', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-28 13:26:57', '2024-09-28 13:26:57', NULL, NULL, 'IQD', 'IQD', 555, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(346, 237, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[{\"id\":10,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"znzjhzhh\",\"created_at\":\"2024-09-25T12:10:01.000000Z\",\"updated_at\":\"2024-09-25T12:10:01.000000Z\"}],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"},{\"id\":15,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"jssjhxhd\",\"replies\":[{\"id\":9,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"sjzjhxhhdh\",\"created_at\":\"2024-09-25T12:09:55.000000Z\",\"updated_at\":\"2024-09-25T12:09:55.000000Z\"}],\"created_at\":\"2024-09-25T12:09:50.000000Z\",\"updated_at\":\"2024-09-25T12:09:50.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-27T01:48:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-27T12:11:39.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-27T12:00:07.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-27T12:22:26.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 755551, 'اسم الملف: لا يوجد ملف محدد', NULL, '3YQ3PMSCJG', 'Pending', 'me@gmail.com', 'me', 'العراق', '+905345504439', 'aza', 'قضاء الزبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-28 14:04:06', '2024-09-28 14:04:06', NULL, NULL, 'IQD', 'IQD', 755551, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_name`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `tax_location`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `vendor_ids`, `wallet_price`, `is_shipping`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `discount`, `affilate_users`, `commission`, `riders`) VALUES
(347, 237, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[{\"id\":10,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"znzjhzhh\",\"created_at\":\"2024-09-25T12:10:01.000000Z\",\"updated_at\":\"2024-09-25T12:10:01.000000Z\"}],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"},{\"id\":15,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"jssjhxhd\",\"replies\":[{\"id\":9,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"sjzjhxhhdh\",\"created_at\":\"2024-09-25T12:09:55.000000Z\",\"updated_at\":\"2024-09-25T12:09:55.000000Z\"}],\"created_at\":\"2024-09-25T12:09:50.000000Z\",\"updated_at\":\"2024-09-25T12:09:50.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-27T01:48:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-27T12:11:39.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-27T12:00:07.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-27T12:22:26.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 755551, 'اسم الملف: لا يوجد ملف محدد', NULL, '577EBXXALZ', 'Pending', 'me@gmail.com', 'me', 'العراق', '+905345504439', 'aza', 'قضاء الخضر', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-09-28 15:04:47', '2024-09-28 15:04:47', NULL, NULL, 'IQD', 'IQD', 755551, 0, 0, 0, 'المثنى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'المثنى', NULL, 0, NULL, 0, NULL),
(348, 237, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[{\"id\":10,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"znzjhzhh\",\"created_at\":\"2024-09-25T12:10:01.000000Z\",\"updated_at\":\"2024-09-25T12:10:01.000000Z\"}],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"},{\"id\":15,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"jssjhxhd\",\"replies\":[{\"id\":9,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"sjzjhxhhdh\",\"created_at\":\"2024-09-25T12:09:55.000000Z\",\"updated_at\":\"2024-09-25T12:09:55.000000Z\"}],\"created_at\":\"2024-09-25T12:09:50.000000Z\",\"updated_at\":\"2024-09-25T12:09:50.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-27T01:48:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-27T12:11:39.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-27T12:00:07.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-27T12:22:26.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 755551, 'اسم الملف: لا يوجد ملف محدد', NULL, 'RS7OB24GH1', 'Pending', 'me@gmail.com', 'me', 'العراق', '+905345504439', 'aza', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2024-09-28 16:23:11', '2024-10-02 15:55:21', NULL, NULL, 'IQD', 'IQD', 755551, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(349, 248, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[{\"id\":10,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"znzjhzhh\",\"created_at\":\"2024-09-25T12:10:01.000000Z\",\"updated_at\":\"2024-09-25T12:10:01.000000Z\"}],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"},{\"id\":15,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"jssjhxhd\",\"replies\":[{\"id\":9,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"sjzjhxhhdh\",\"created_at\":\"2024-09-25T12:09:55.000000Z\",\"updated_at\":\"2024-09-25T12:09:55.000000Z\"}],\"created_at\":\"2024-09-25T12:09:50.000000Z\",\"updated_at\":\"2024-09-25T12:09:50.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-27T01:48:46.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-27T12:11:39.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-27T12:00:07.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"19 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-27T12:22:26.000000Z\"},{\"id\":590,\"user_id\":200,\"title\":\"football\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725881058T7MI1g5E.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"images\":[{\"id\":425,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082fGPCKQHj.jpg\"},{\"id\":426,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082KVQYBAuz.jpg\"},{\"id\":427,\"image\":\"https://ealanatek.site/assets/images/galleries/17258810825qBTHmD6.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"football\",\"policy\":\"football\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":4,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"هلا احمد\",\"replies\":[{\"id\":7,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"900000tttttn12\",\"comment\":\"mmiffccc\",\"created_at\":\"2024-09-24T12:19:46.000000Z\",\"updated_at\":\"2024-09-24T13:20:47.000000Z\"}],\"created_at\":\"2024-09-20T13:19:28.000000Z\",\"updated_at\":\"2024-09-20T13:19:28.000000Z\"},{\"id\":14,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"225\",\"name\":\"testuser1\",\"comment\":\"mrhba\",\"replies\":[{\"id\":4,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"225\",\"name\":\"testuser1\",\"comment\":\"اهلا\",\"created_at\":\"2024-09-24T11:15:37.000000Z\",\"updated_at\":\"2024-09-24T11:15:37.000000Z\"}],\"created_at\":\"2024-09-24T11:15:25.000000Z\",\"updated_at\":\"2024-09-24T11:15:25.000000Z\"}],\"related_products\":[{\"id\":464,\"title\":\"Sports shoes\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-09-27T12:22:26.000000Z\",\"category_id\":45},{\"id\":622,\"title\":\"ggggg53\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726267185ver6xfKW.png\",\"rating\":\"0\",\"current_price\":\"222222222\",\"previous_price\":\"2\",\"created_at\":\"2024-09-13T22:39:45.000000Z\",\"updated_at\":\"2024-09-27T12:11:39.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-09-27T12:00:07.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"2 items\"},\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-09-27T01:48:46.000000Z\"},{\"id\":471,\"user_id\":200,\"title\":\"carrr1\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735476PkEkd6wX.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735476uLujlrhW.png\",\"images\":[{\"id\":366,\"image\":\"https://ealanatek.site/assets/images/galleries/1725056865mMWVkc1d.jpg\"},{\"id\":367,\"image\":\"https://ealanatek.site/assets/images/galleries/1725056865kajNggbg.jpg\"},{\"id\":368,\"image\":\"https://ealanatek.site/assets/images/galleries/1725056872Hcu8kX0O.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"555\",\"previous_price\":\"5\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"carrr1\",\"policy\":\"carrr1\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":5,\"user_image\":\"/assets/images/users/1727299779images5jpeg.jpeg\",\"user_id\":\"200\",\"name\":\"مصطفى\",\"comment\":\"kxod\",\"replies\":[],\"created_at\":\"2024-09-20T23:19:58.000000Z\",\"updated_at\":\"2024-09-20T23:19:58.000000Z\"},{\"id\":12,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"239\",\"name\":\"ahamad\",\"comment\":\"hello world\",\"replies\":[],\"created_at\":\"2024-09-22T13:40:02.000000Z\",\"updated_at\":\"2024-09-22T13:40:02.000000Z\"},{\"id\":13,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"61\",\"name\":\"bHasan Hazzoury\",\"comment\":\"ggff\",\"replies\":[],\"created_at\":\"2024-09-23T16:14:47.000000Z\",\"updated_at\":\"2024-09-23T16:14:47.000000Z\"}],\"related_products\":[{\"id\":458,\"title\":\"ipone\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1723848443DhJDlFYE.png\",\"rating\":\"0\",\"current_price\":\"3000\",\"previous_price\":\"30\",\"created_at\":\"2024-08-16T22:47:23.000000Z\",\"updated_at\":\"2024-09-29T23:52:14.000000Z\",\"category_id\":40},{\"id\":594,\"title\":\"deee\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726000992Yran1dOY.png\",\"rating\":\"0\",\"current_price\":\"10000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-10T20:43:12.000000Z\",\"updated_at\":\"2024-09-28T00:01:12.000000Z\",\"category_id\":40},{\"id\":596,\"title\":\"test1\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726003287FgB38xDl.png\",\"rating\":\"0\",\"current_price\":\"123\",\"previous_price\":\"12\",\"created_at\":\"2024-09-10T21:21:27.000000Z\",\"updated_at\":\"2024-09-27T12:27:51.000000Z\",\"category_id\":40},{\"id\":597,\"title\":\"test2\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726003342odVHIwNV.png\",\"rating\":\"0\",\"current_price\":\"123\",\"previous_price\":\"12\",\"created_at\":\"2024-09-10T21:22:22.000000Z\",\"updated_at\":\"2024-09-27T12:33:25.000000Z\",\"category_id\":40},{\"id\":620,\"title\":\"ttttt\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1726089125HoY5Y4PQ.png\",\"rating\":\"0\",\"current_price\":\"111111\",\"previous_price\":\"1\",\"created_at\":\"2024-09-11T21:12:05.000000Z\",\"updated_at\":\"2024-09-27T12:38:24.000000Z\",\"category_id\":40}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"2 items\"},\"created_at\":\"2024-08-17T16:19:22.000000Z\",\"updated_at\":\"2024-09-26T17:13:48.000000Z\"}]', 'ASIA PAY', 'Default Shipping', 'Deafault', '3', 757106, 'اسم الملف: File: \'/data/user/0/com.azrar.azrar/cache/e46ad090-4e58-4377-b768-e75628a6ae8d/1000275061.jpg\'', NULL, 'EAIWKH1UKB', 'Pending', 'test100@gmail.com', 'test1000', 'العراق', '+905345504439', 'azaz', 'قضاء الزبير', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2024-09-30 10:44:10', '2024-10-02 17:33:36', NULL, NULL, 'IQD', 'IQD', 757106, 0, 0, 0, 'البصرى', 0, NULL, '[\"1\"]', '[\"1\"]', '\"[0]\"', 0, 1, '[\"1\"]', '[\"1\"]', 'البصرى', NULL, 0, NULL, 0, NULL),
(350, 200, '{\"totalQty\":3,\"totalPrice\":2000,\"items\":{\"590\":{\"user_id\":200,\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":2000,\"item\":{\"id\":590,\"user_id\":200,\"slug\":\"football-w6109603fv\",\"name\":\"football\",\"name_ar\":\"\\u0643\\u0631\\u0629 \\u0642\\u062f\\u0645\",\"name_ku\":\"\\u0643\\u0631\\u0629 \\u0642\\u062f\\u0645\",\"photo\":\"1725881058VLRsYwu2.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":1000,\"discount\":0,\"affilate_user\":0}}}', 'ASIA PAY', 'Default Shipping', 'duhuk', '3', 2590, 'تنزيل (1).jpeg', NULL, 'FnvE1727876711', 'Pending', 'adtttmrrein@gmail.com', 'مصطفى', 'العراق', '+905345504439', 'WER2jssjjw', 'قضاء الدواية', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2024-10-02 13:45:11', '2024-10-02 14:15:56', NULL, NULL, 'IQD', 'IQD', 1, 100, 490, 0, 'ذي قار', 0, NULL, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '[200]', 0, 1, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '42', NULL, 0, NULL, 0, NULL),
(351, 200, '{\"totalQty\":2,\"totalPrice\":2000,\"items\":{\"590\":{\"user_id\":200,\"qty\":\"2\",\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":2000,\"item\":{\"id\":590,\"user_id\":200,\"slug\":\"football-w6109603fv\",\"name\":\"football\",\"photo\":\"1725881058VLRsYwu2.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"\",\"minimum_qty\":null,\"stock_check\":0,\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":1000,\"discount\":0,\"affilate_user\":\"0\"}}}', 'ASIA PAY', 'Default Shipping', 'duhuk', '2', 3491, 'Annotation 2024-09-09 011410.png', NULL, 'P00C1727883320', 'Pending', 'adtttmrrein@gmail.com', 'مصطفى', 'العراق', '+905345504439', 'WER2jssjjw', 'ناحية التاجي', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2024-10-02 15:35:20', '2024-10-02 15:54:09', NULL, NULL, 'IQD', 'IQD', 1, 1001, 490, 0, 'بابل', 0, NULL, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '[200]', 0, 1, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '40', NULL, 0, NULL, 0, NULL),
(352, 200, '{\"totalQty\":2,\"totalPrice\":2000,\"items\":{\"590\":{\"user_id\":200,\"qty\":2,\"size_key\":0,\"size_qty\":\"\",\"size_price\":\"\",\"size\":\"\",\"color\":\"\",\"stock\":null,\"price\":2000,\"item\":{\"id\":590,\"user_id\":200,\"slug\":\"football-w6109603fv\",\"name\":\"football\",\"name_ar\":\"\\u0643\\u0631\\u0629 \\u0642\\u062f\\u0645\",\"name_ku\":\"\\u0643\\u0631\\u0629 \\u0642\\u062f\\u0645\",\"photo\":\"1725881058VLRsYwu2.png\",\"size\":\"\",\"size_qty\":\"\",\"size_price\":\"\",\"color\":\"\",\"price\":1000,\"stock\":null,\"type\":\"Physical\",\"file\":null,\"link\":null,\"license\":\"\",\"license_qty\":\"\",\"measure\":null,\"whole_sell_qty\":\"\",\"whole_sell_discount\":\"\",\"attributes\":\"\",\"size_all\":null,\"color_all\":null},\"license\":\"\",\"dp\":\"0\",\"keys\":\"\",\"values\":\"\",\"item_price\":1000,\"discount\":0,\"affilate_user\":0}}}', 'ASIA PAY', 'Default Shipping', 'duhuk', '2', 16922, 'Annotation 2024-09-09 011410.png', NULL, '0L6b1727889482', 'Pending', 'adtttmrrein@gmail.com', 'مصطفى', 'العراق', '+905345504439', 'WER2jssjjw', 'قضاء الفجر', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'processing', '2024-10-02 17:18:02', '2024-10-02 17:33:24', NULL, NULL, 'IQD', 'IQD', 1, 10015, 4907, 0, 'ذي قار', 0, NULL, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '[200]', 0, 1, '{\"200\":\"42\"}', '{\"200\":\"35\"}', '42', NULL, 0, NULL, 0, NULL),
(353, 237, '[{\"id\":464,\"user_id\":0,\"title\":\"Sports shoes\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725735865metWQ5t3.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"images\":[{\"id\":417,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735889j5QtJKaT.jpg\"},{\"id\":418,\"image\":\"https://ealanatek.site/assets/images/galleries/1725735896WDtmajDr.jpg\"}],\"count\":2,\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"Sports shoes\",\"policy\":\"Sports shoes\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":9,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"تت\",\"replies\":[],\"created_at\":\"2024-09-21T18:34:07.000000Z\",\"updated_at\":\"2024-09-21T18:34:07.000000Z\"},{\"id\":10,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxhdbb\",\"replies\":[],\"created_at\":\"2024-09-21T19:24:32.000000Z\",\"updated_at\":\"2024-09-21T19:24:32.000000Z\"},{\"id\":11,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"202\",\"name\":null,\"comment\":\"djxbdj\",\"replies\":[{\"id\":10,\"user_image\":\"/assets/images/users/1727889698Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"مصطفى555\",\"comment\":\"znzjhzhh\",\"created_at\":\"2024-09-25T12:10:01.000000Z\",\"updated_at\":\"2024-09-25T12:10:01.000000Z\"}],\"created_at\":\"2024-09-21T19:24:37.000000Z\",\"updated_at\":\"2024-09-21T19:24:37.000000Z\"}],\"related_products\":[{\"id\":590,\"title\":\"football\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-10-05T13:34:35.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-10-03T06:00:55.000000Z\",\"category_id\":45}],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"16 items\"},\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-10-06T21:59:03.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '2', 1511102, 'اسم الملف: لا يوجد ملف محدد', NULL, '5G8TGQKZR1', 'Pending', 'me@gmail.com', 'me', 'العراق', '+905345504439', 'aza', 'السماوة', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-10-07 14:33:19', '2024-10-07 14:33:19', NULL, NULL, 'IQD', 'IQD', 1511102, 0, 0, 0, 'المثنى', 0, NULL, NULL, NULL, '\"[0]\"', 0, 1, NULL, NULL, 'المثنى', NULL, 0, NULL, 0, NULL),
(354, 237, '[{\"id\":466,\"user_id\":0,\"title\":\"Red pen\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725741458FnP4Eh8P.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725741458semSBZIj.png\",\"images\":[{\"id\":369,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467Uow97xrS.jpg\"},{\"id\":370,\"image\":\"https://ealanatek.site/assets/images/galleries/17257044678QUwFPEe.jpg\"},{\"id\":371,\"image\":\"https://ealanatek.site/assets/images/galleries/1725704467KiVqqJUX.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"900000\",\"previous_price\":\"422\",\"stock\":null,\"condition\":null,\"video\":null,\"estimated_shipping_time\":null,\"colors\":[],\"sizes\":[],\"size_quantity\":[],\"size_price\":[],\"details\":\"\",\"policy\":\"\",\"whole_sell_quantity\":[],\"whole_sell_discount\":[],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":2,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"76\",\"name\":\"gghe\",\"comment\":\"ggg\",\"replies\":[],\"created_at\":\"2024-07-12T17:52:48.000000Z\",\"updated_at\":\"2024-09-11T12:34:49.000000Z\"},{\"id\":6,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"ahmad\",\"comment\":\"hdhdh\",\"replies\":[],\"created_at\":\"2024-09-21T14:33:47.000000Z\",\"updated_at\":\"2024-09-21T14:33:47.000000Z\"},{\"id\":7,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"ahmad\",\"comment\":\"ggn\",\"replies\":[],\"created_at\":\"2024-09-21T14:34:47.000000Z\",\"updated_at\":\"2024-09-21T14:34:47.000000Z\"},{\"id\":8,\"user_image\":\"https://ealanatek.site/assets/images/noimage.png\",\"user_id\":\"213\",\"name\":\"ahmad\",\"comment\":\"hgggf\",\"replies\":[],\"created_at\":\"2024-09-21T14:52:17.000000Z\",\"updated_at\":\"2024-09-21T14:52:17.000000Z\"}],\"related_products\":[],\"size_data\":[],\"shop\":{\"id\":null,\"name\":\"azrar Store\",\"items\":\"16 items\"},\"created_at\":\"2024-08-16T22:59:32.000000Z\",\"updated_at\":\"2024-10-07T10:15:09.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 900000, 'اسم الملف: لا يوجد ملف محدد', NULL, 'J763NZSBDU', 'Pending', 'me@gmail.com', 'me', 'العراق', '+905345504439', 'aza', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-10-08 10:46:36', '2024-10-08 10:46:36', NULL, NULL, 'IQD', 'IQD', 900000, 0, 0, 0, 'البصرى', 0, NULL, NULL, NULL, '\"[0]\"', 0, 1, NULL, NULL, 'البصرى', NULL, 0, NULL, 0, NULL),
(355, 255, '[{\"id\":590,\"user_id\":200,\"title\":\"football\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725881058T7MI1g5E.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"images\":[{\"id\":425,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082fGPCKQHj.jpg\"},{\"id\":426,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082KVQYBAuz.jpg\"},{\"id\":427,\"image\":\"https://ealanatek.site/assets/images/galleries/17258810825qBTHmD6.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":\"23\",\"colors\":[\"#644545\",\"#34b95e\"],\"sizes\":[\"S\",\"S\"],\"size_quantity\":[\"1\",\"1\"],\"size_price\":[\"0\",\"0\"],\"details\":\"football\",\"policy\":\"football\",\"whole_sell_quantity\":[\"23\"],\"whole_sell_discount\":[\"2\"],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":4,\"user_image\":\"/assets/images/users/1727889698Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"مصطفى555\",\"comment\":\"هلا احمد\",\"replies\":[{\"id\":7,\"user_image\":\"/assets/images/users/1727889698Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"مصطفى555\",\"comment\":\"mmiffccc\",\"created_at\":\"2024-09-24T12:19:46.000000Z\",\"updated_at\":\"2024-09-24T13:20:47.000000Z\"}],\"created_at\":\"2024-09-20T13:19:28.000000Z\",\"updated_at\":\"2024-09-20T13:19:28.000000Z\"},{\"id\":17,\"user_image\":\"/assets/images/users/1727889698Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"مصطفى555\",\"comment\":\"مرحبا\",\"replies\":[],\"created_at\":\"2024-09-30T10:32:45.000000Z\",\"updated_at\":\"2024-09-30T10:32:45.000000Z\"}],\"related_products\":[{\"id\":464,\"title\":\"Sports shoes\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-10-18T03:23:49.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-10-18T19:49:27.000000Z\",\"category_id\":45}],\"size_data\":[{\"name\":\"S\",\"colors\":[\"#644545\",\"#34b95e\"],\"quantities\":[\"1\",\"1\"],\"prices\":[\"0\",\"0\"],\"selectedIndex\":1}],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"4 items\"},\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-10-18T14:16:42.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 1000, 'اسم الملف: لا يوجد ملف محدد', NULL, 'YUAU0HL6PK', 'Pending', 'ss@gmail.com', 'sss', 'العراق', '+905345504439', 'as', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-10-19 16:13:35', '2024-10-19 16:13:35', NULL, NULL, 'IQD', 'IQD', 1000, 0, 0, 0, 'البصرى', 0, NULL, NULL, NULL, '\"[0]\"', 0, 1, NULL, NULL, 'البصرى', NULL, 0, NULL, 0, NULL),
(356, 255, '[{\"id\":590,\"user_id\":200,\"title\":\"football\",\"type\":\"Physical\",\"attributes\":null,\"thumbnail\":\"https://ealanatek.site/assets/images/thumbnails/1725881058T7MI1g5E.jpg\",\"first_image\":\"https://ealanatek.site/assets/images/products/1725881058VLRsYwu2.png\",\"images\":[{\"id\":425,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082fGPCKQHj.jpg\"},{\"id\":426,\"image\":\"https://ealanatek.site/assets/images/galleries/1725881082KVQYBAuz.jpg\"},{\"id\":427,\"image\":\"https://ealanatek.site/assets/images/galleries/17258810825qBTHmD6.jpg\"}],\"count\":1,\"rating\":\"0\",\"current_price\":\"1000\",\"previous_price\":\"999\",\"stock\":null,\"condition\":\"New\",\"video\":null,\"estimated_shipping_time\":\"23\",\"colors\":[\"#644545\",\"#34b95e\"],\"sizes\":[\"S\",\"S\"],\"size_quantity\":[\"1\",\"1\"],\"size_price\":[\"0\",\"0\"],\"details\":\"football\",\"policy\":\"football\",\"whole_sell_quantity\":[\"23\"],\"whole_sell_discount\":[\"2\"],\"selectedSize\":0,\"reviews\":[],\"comments\":[{\"id\":4,\"user_image\":\"/assets/images/users/1727889698Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"مصطفى555\",\"comment\":\"هلا احمد\",\"replies\":[{\"id\":7,\"user_image\":\"/assets/images/users/1727889698Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"مصطفى555\",\"comment\":\"mmiffccc\",\"created_at\":\"2024-09-24T12:19:46.000000Z\",\"updated_at\":\"2024-09-24T13:20:47.000000Z\"}],\"created_at\":\"2024-09-20T13:19:28.000000Z\",\"updated_at\":\"2024-09-20T13:19:28.000000Z\"},{\"id\":17,\"user_image\":\"/assets/images/users/1727889698Annotation2024-09-09011410png.png\",\"user_id\":\"200\",\"name\":\"مصطفى555\",\"comment\":\"مرحبا\",\"replies\":[],\"created_at\":\"2024-09-30T10:32:45.000000Z\",\"updated_at\":\"2024-09-30T10:32:45.000000Z\"}],\"related_products\":[{\"id\":464,\"title\":\"Sports shoes\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1725735865PZ8suDgA.png\",\"rating\":\"0\",\"current_price\":\"755551\",\"previous_price\":\"145\",\"created_at\":\"2024-08-16T22:56:40.000000Z\",\"updated_at\":\"2024-10-18T03:23:49.000000Z\",\"category_id\":45},{\"id\":653,\"title\":\"msn\",\"thumbnail\":\"https://ealanatek.site/assets/images/products/1727005389Pj04auUC.jpg\",\"rating\":\"0\",\"current_price\":\"1066\",\"previous_price\":\"1000\",\"created_at\":\"2024-09-22T11:43:09.000000Z\",\"updated_at\":\"2024-10-18T19:49:27.000000Z\",\"category_id\":45}],\"size_data\":[{\"name\":\"S\",\"colors\":[\"#644545\",\"#34b95e\"],\"quantities\":[\"1\",\"1\"],\"prices\":[\"0\",\"0\"],\"selectedIndex\":1}],\"shop\":{\"id\":null,\"name\":\"ttttttttt\",\"items\":\"4 items\"},\"created_at\":\"2024-09-09T11:24:18.000000Z\",\"updated_at\":\"2024-10-18T14:16:42.000000Z\"}]', 'Cash On Delivery', 'Default Shipping', 'Deafault', '1', 1000, 'اسم الملف: لا يوجد ملف محدد', NULL, '7I9W9OAAO1', 'Pending', 'ss@gmail.com', 'sss', 'العراق', '+905345504439', 'as', 'قضاء الفاو', NULL, NULL, 'العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2024-10-19 16:14:10', '2024-10-19 16:14:10', NULL, NULL, 'IQD', 'IQD', 1000, 0, 0, 0, 'البصرى', 0, NULL, NULL, NULL, '\"[0]\"', 0, 1, NULL, NULL, 'البصرى', NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

DROP TABLE IF EXISTS `order_tracks`;
CREATE TABLE IF NOT EXISTS `order_tracks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pending', 'You have successfully placed your order.', '2024-05-19 11:32:36', '2024-05-19 11:32:36'),
(2, 2, 'Pending', 'You have successfully placed your order.', '2024-05-19 11:32:40', '2024-05-19 11:32:40'),
(3, 3, 'Pending', 'You have successfully placed your order.', '2024-05-22 15:56:21', '2024-05-22 15:56:21'),
(4, 4, 'Pending', 'You have successfully placed your order.', '2024-05-31 16:03:26', '2024-05-31 16:03:26'),
(5, 5, 'Pending', 'You have successfully placed your order.', '2024-06-02 12:16:44', '2024-06-02 12:16:44'),
(6, 6, 'Pending', 'You have successfully placed your order.', '2024-06-02 12:50:01', '2024-06-02 12:50:01'),
(7, 7, 'Pending', 'You have successfully placed your order.', '2024-06-05 12:23:07', '2024-06-05 12:23:07'),
(8, 8, 'Pending', 'You have successfully placed your order.', '2024-06-05 15:04:38', '2024-06-05 15:04:38'),
(9, 9, 'Pending', 'You have successfully placed your order.', '2024-06-05 15:04:47', '2024-06-05 15:04:47'),
(10, 10, 'Pending', 'You have successfully placed your order.', '2024-06-05 15:05:10', '2024-06-05 15:05:10'),
(11, 11, 'Pending', 'You have successfully placed your order.', '2024-06-05 15:05:16', '2024-06-05 15:05:16'),
(12, 12, 'Pending', 'You have successfully placed your order.', '2024-06-05 15:06:58', '2024-06-05 15:06:58'),
(13, 13, 'Pending', 'You have successfully placed your order.', '2024-06-11 10:27:58', '2024-06-11 10:27:58'),
(14, 14, 'Pending', 'You have successfully placed your order.', '2024-06-24 18:12:13', '2024-06-24 18:12:13'),
(15, 15, 'Pending', 'You have successfully placed your order.', '2024-06-25 10:52:12', '2024-06-25 10:52:12'),
(16, 16, 'Pending', 'You have successfully placed your order.', '2024-06-25 10:52:16', '2024-06-25 10:52:16'),
(17, 17, 'Pending', 'You have successfully placed your order.', '2024-06-29 09:32:20', '2024-06-29 09:32:20'),
(18, 18, 'Pending', 'You have successfully placed your order.', '2024-06-29 15:21:40', '2024-06-29 15:21:40'),
(19, 19, 'Pending', 'You have successfully placed your order.', '2024-06-29 15:21:48', '2024-06-29 15:21:48'),
(20, 20, 'Pending', 'You have successfully placed your order.', '2024-06-29 15:21:58', '2024-06-29 15:21:58'),
(21, 21, 'Pending', 'You have successfully placed your order.', '2024-06-29 15:22:06', '2024-06-29 15:22:06'),
(22, 22, 'Pending', 'You have successfully placed your order.', '2024-06-29 15:22:56', '2024-06-29 15:22:56'),
(23, 23, 'Pending', 'You have successfully placed your order.', '2024-06-29 15:23:04', '2024-06-29 15:23:04'),
(24, 24, 'Pending', 'You have successfully placed your order.', '2024-06-29 15:23:07', '2024-06-29 15:23:07'),
(25, 25, 'Pending', 'You have successfully placed your order.', '2024-06-29 23:42:38', '2024-06-29 23:42:38'),
(26, 26, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:12:16', '2024-06-30 09:12:16'),
(27, 27, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:27:41', '2024-06-30 09:27:41'),
(28, 28, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:32:37', '2024-06-30 09:32:37'),
(29, 29, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:32:42', '2024-06-30 09:32:42'),
(30, 30, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:32:51', '2024-06-30 09:32:51'),
(31, 31, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:32:57', '2024-06-30 09:32:57'),
(32, 32, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:34:15', '2024-06-30 09:34:15'),
(33, 33, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:34:19', '2024-06-30 09:34:19'),
(34, 34, 'Pending', 'You have successfully placed your order.', '2024-06-30 09:35:42', '2024-06-30 09:35:42'),
(35, 35, 'Pending', 'You have successfully placed your order.', '2024-07-02 11:10:59', '2024-07-02 11:10:59'),
(36, 36, 'Pending', 'You have successfully placed your order.', '2024-07-02 11:16:03', '2024-07-02 11:16:03'),
(37, 37, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:40:35', '2024-07-02 12:40:35'),
(38, 38, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:41:12', '2024-07-02 12:41:12'),
(39, 39, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:43:37', '2024-07-02 12:43:37'),
(40, 40, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:35', '2024-07-02 12:44:35'),
(41, 41, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:36', '2024-07-02 12:44:36'),
(42, 42, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:37', '2024-07-02 12:44:37'),
(43, 43, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:37', '2024-07-02 12:44:37'),
(44, 44, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:38', '2024-07-02 12:44:38'),
(45, 45, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:40', '2024-07-02 12:44:40'),
(46, 46, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:41', '2024-07-02 12:44:41'),
(47, 47, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:42', '2024-07-02 12:44:42'),
(48, 48, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:45', '2024-07-02 12:44:45'),
(49, 49, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:44:45', '2024-07-02 12:44:45'),
(50, 50, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:45:52', '2024-07-02 12:45:52'),
(51, 51, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:46:17', '2024-07-02 12:46:17'),
(52, 52, 'Pending', 'You have successfully placed your order.', '2024-07-02 12:47:07', '2024-07-02 12:47:07'),
(53, 53, 'Pending', 'You have successfully placed your order.', '2024-07-04 15:35:11', '2024-07-04 15:35:11'),
(54, 54, 'Pending', 'You have successfully placed your order.', '2024-07-04 15:37:32', '2024-07-04 15:37:32'),
(55, 55, 'Pending', 'You have successfully placed your order.', '2024-07-04 16:22:50', '2024-07-04 16:22:50'),
(56, 56, 'Pending', 'You have successfully placed your order.', '2024-07-05 14:18:06', '2024-07-05 14:18:06'),
(57, 57, 'Pending', 'You have successfully placed your order.', '2024-07-05 14:35:57', '2024-07-05 14:35:57'),
(58, 58, 'Pending', 'You have successfully placed your order.', '2024-07-06 14:07:16', '2024-07-06 14:07:16'),
(59, 59, 'Pending', 'You have successfully placed your order.', '2024-07-08 11:49:05', '2024-07-08 11:49:05'),
(60, 60, 'Pending', 'You have successfully placed your order.', '2024-07-08 16:15:31', '2024-07-08 16:15:31'),
(61, 61, 'Pending', 'You have successfully placed your order.', '2024-07-12 17:53:30', '2024-07-12 17:53:30'),
(62, 62, 'Pending', 'You have successfully placed your order.', '2024-07-15 15:15:59', '2024-07-15 15:15:59'),
(63, 63, 'Pending', 'You have successfully placed your order.', '2024-07-15 16:10:54', '2024-07-15 16:10:54'),
(64, 64, 'Pending', 'You have successfully placed your order.', '2024-08-16 10:23:19', '2024-08-16 10:23:19'),
(65, 65, 'Pending', 'You have successfully placed your order.', '2024-08-16 10:26:15', '2024-08-16 10:26:15'),
(66, 66, 'Pending', 'You have successfully placed your order.', '2024-08-16 10:26:50', '2024-08-16 10:26:50'),
(67, 67, 'Pending', 'You have successfully placed your order.', '2024-08-16 10:27:21', '2024-08-16 10:27:21'),
(68, 68, 'Pending', 'You have successfully placed your order.', '2024-08-15 19:31:35', '2024-08-15 19:31:35'),
(69, 69, 'Pending', 'You have successfully placed your order.', '2024-08-15 19:57:25', '2024-08-15 19:57:25'),
(70, 70, 'Pending', 'You have successfully placed your order.', '2024-08-15 20:51:41', '2024-08-15 20:51:41'),
(71, 71, 'Pending', 'You have successfully placed your order.', '2024-08-15 22:49:56', '2024-08-15 22:49:56'),
(72, 72, 'Pending', 'You have successfully placed your order.', '2024-08-15 22:51:28', '2024-08-15 22:51:28'),
(73, 73, 'Pending', 'You have successfully placed your order.', '2024-08-15 22:54:40', '2024-08-15 22:54:40'),
(74, 74, 'Pending', 'You have successfully placed your order.', '2024-08-15 23:09:55', '2024-08-15 23:09:55'),
(75, 75, 'Pending', 'You have successfully placed your order.', '2024-08-15 23:22:43', '2024-08-15 23:22:43'),
(76, 76, 'Pending', 'You have successfully placed your order.', '2024-08-15 23:24:54', '2024-08-15 23:24:54'),
(77, 77, 'Pending', 'You have successfully placed your order.', '2024-08-15 23:44:48', '2024-08-15 23:44:48'),
(78, 78, 'Pending', 'You have successfully placed your order.', '2024-08-16 00:42:14', '2024-08-16 00:42:14'),
(79, 79, 'Pending', 'You have successfully placed your order.', '2024-08-16 10:43:53', '2024-08-16 10:43:53'),
(80, 80, 'Pending', 'You have successfully placed your order.', '2024-08-16 14:05:32', '2024-08-16 14:05:32'),
(81, 81, 'Pending', 'You have successfully placed your order.', '2024-08-16 17:01:45', '2024-08-16 17:01:45'),
(82, 82, 'Pending', 'You have successfully placed your order.', '2024-08-16 18:37:58', '2024-08-16 18:37:58'),
(83, 83, 'Pending', 'You have successfully placed your order.', '2024-08-16 18:41:06', '2024-08-16 18:41:06'),
(84, 84, 'Pending', 'You have successfully placed your order.', '2024-08-16 18:45:40', '2024-08-16 18:45:40'),
(85, 85, 'Pending', 'You have successfully placed your order.', '2024-08-16 18:46:40', '2024-08-16 18:46:40'),
(86, 86, 'Pending', 'You have successfully placed your order.', '2024-08-16 18:48:37', '2024-08-16 18:48:37'),
(87, 87, 'Pending', 'You have successfully placed your order.', '2024-08-16 18:52:01', '2024-08-16 18:52:01'),
(88, 88, 'Pending', 'You have successfully placed your order.', '2024-08-16 18:53:40', '2024-08-16 18:53:40'),
(89, 89, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:01:57', '2024-08-16 19:01:57'),
(90, 90, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:25:29', '2024-08-16 19:25:29'),
(91, 91, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:26:16', '2024-08-16 19:26:16'),
(92, 92, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:30:14', '2024-08-16 19:30:14'),
(93, 93, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:31:33', '2024-08-16 19:31:33'),
(94, 94, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:38:56', '2024-08-16 19:38:56'),
(95, 95, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:46:29', '2024-08-16 19:46:29'),
(96, 96, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:49:35', '2024-08-16 19:49:35'),
(97, 97, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:56:23', '2024-08-16 19:56:23'),
(98, 98, 'Pending', 'You have successfully placed your order.', '2024-08-16 19:57:33', '2024-08-16 19:57:33'),
(99, 99, 'Pending', 'You have successfully placed your order.', '2024-08-16 22:19:27', '2024-08-16 22:19:27'),
(100, 100, 'Pending', 'You have successfully placed your order.', '2024-08-16 22:50:35', '2024-08-16 22:50:35'),
(101, 101, 'Pending', 'You have successfully placed your order.', '2024-08-17 11:23:49', '2024-08-17 11:23:49'),
(102, 102, 'Pending', 'You have successfully placed your order.', '2024-08-17 22:06:32', '2024-08-17 22:06:32'),
(103, 103, 'Pending', 'You have successfully placed your order.', '2024-08-18 15:28:01', '2024-08-18 15:28:01'),
(104, 104, 'Pending', 'You have successfully placed your order.', '2024-08-19 21:17:37', '2024-08-19 21:17:37'),
(105, 105, 'Pending', 'You have successfully placed your order.', '2024-08-20 02:19:21', '2024-08-20 02:19:21'),
(106, 106, 'Pending', 'You have successfully placed your order.', '2024-08-20 02:21:51', '2024-08-20 02:21:51'),
(107, 107, 'Pending', 'You have successfully placed your order.', '2024-08-21 10:12:25', '2024-08-21 10:12:25'),
(108, 108, 'Pending', 'You have successfully placed your order.', '2024-08-21 12:48:47', '2024-08-21 12:48:47'),
(109, 109, 'Pending', 'You have successfully placed your order.', '2024-08-21 12:49:51', '2024-08-21 12:49:51'),
(110, 110, 'Pending', 'You have successfully placed your order.', '2024-08-22 11:00:52', '2024-08-22 11:00:52'),
(111, 111, 'Pending', 'You have successfully placed your order.', '2024-08-22 11:03:52', '2024-08-22 11:03:52'),
(112, 112, 'Pending', 'You have successfully placed your order.', '2024-08-23 15:54:52', '2024-08-23 15:54:52'),
(113, 113, 'Pending', 'You have successfully placed your order.', '2024-08-23 19:38:24', '2024-08-23 19:38:24'),
(114, 114, 'Pending', 'You have successfully placed your order.', '2024-08-23 19:40:22', '2024-08-23 19:40:22'),
(115, 115, 'Pending', 'You have successfully placed your order.', '2024-08-25 12:02:03', '2024-08-25 12:02:03'),
(116, 116, 'Pending', 'You have successfully placed your order.', '2024-08-25 12:21:38', '2024-08-25 12:21:38'),
(117, 117, 'Pending', 'You have successfully placed your order.', '2024-08-26 18:36:31', '2024-08-26 18:36:31'),
(118, 118, 'Pending', 'You have successfully placed your order.', '2024-08-27 20:29:35', '2024-08-27 20:29:35'),
(119, 119, 'Pending', 'You have successfully placed your order.', '2024-08-27 22:14:37', '2024-08-27 22:14:37'),
(120, 120, 'Pending', 'You have successfully placed your order.', '2024-08-27 22:38:28', '2024-08-27 22:38:28'),
(121, 121, 'Pending', 'You have successfully placed your order.', '2024-08-27 23:44:20', '2024-08-27 23:44:20'),
(122, 122, 'Pending', 'You have successfully placed your order.', '2024-08-28 16:11:40', '2024-08-28 16:11:40'),
(123, 123, 'Pending', 'You have successfully placed your order.', '2024-08-28 16:14:25', '2024-08-28 16:14:25'),
(124, 124, 'Pending', 'You have successfully placed your order.', '2024-08-28 16:50:24', '2024-08-28 16:50:24'),
(125, 125, 'Pending', 'You have successfully placed your order.', '2024-08-28 21:11:08', '2024-08-28 21:11:08'),
(126, 126, 'Pending', 'You have successfully placed your order.', '2024-08-29 16:38:50', '2024-08-29 16:38:50'),
(127, 127, 'Pending', 'You have successfully placed your order.', '2024-08-29 20:55:48', '2024-08-29 20:55:48'),
(128, 128, 'm', 'j', '2024-08-31 14:37:02', '2024-08-31 14:37:02'),
(129, 215, 'Pending', 'You have successfully placed your order.', '2024-09-01 22:04:04', '2024-09-01 22:04:04'),
(130, 234, 'Pending', 'You have successfully placed your order.', '2024-09-02 20:10:31', '2024-09-02 20:10:31'),
(131, 241, 'Pending', 'You have successfully placed your order.', '2024-09-03 11:39:16', '2024-09-03 11:39:16'),
(132, 242, 'Pending', 'You have successfully placed your order.', '2024-09-03 12:01:43', '2024-09-03 12:01:43'),
(133, 247, 'Pending', 'You have successfully placed your order.', '2024-09-03 14:19:07', '2024-09-03 14:19:07'),
(134, 250, 'Pending', 'You have successfully placed your order.', '2024-09-03 14:44:44', '2024-09-03 14:44:44'),
(135, 257, 'Pending', 'You have successfully placed your order.', '2024-09-03 15:43:52', '2024-09-03 15:43:52'),
(136, 258, 'Pending', 'You have successfully placed your order.', '2024-09-03 15:47:49', '2024-09-03 15:47:49'),
(137, 259, 'Pending', 'You have successfully placed your order.', '2024-09-03 19:21:09', '2024-09-03 19:21:09'),
(138, 260, 'Pending', 'You have successfully placed your order.', '2024-09-03 19:25:13', '2024-09-03 19:25:13'),
(139, 261, 'Pending', 'You have successfully placed your order.', '2024-09-03 19:37:16', '2024-09-03 19:37:16'),
(140, 262, 'Pending', 'You have successfully placed your order.', '2024-09-03 19:51:52', '2024-09-03 19:51:52'),
(141, 263, 'Pending', 'You have successfully placed your order.', '2024-09-03 19:56:13', '2024-09-03 19:56:13'),
(142, 260, 'z', 'x', '2024-09-03 20:10:26', '2024-09-03 20:10:26'),
(143, 264, 'Pending', 'You have successfully placed your order.', '2024-09-03 20:19:25', '2024-09-03 20:19:25'),
(144, 270, 'Pending', 'You have successfully placed your order.', '2024-09-04 21:23:17', '2024-09-04 21:23:17'),
(145, 277, 'Pending', 'You have successfully placed your order.', '2024-09-07 10:13:35', '2024-09-07 10:13:35'),
(146, 278, 'Pending', 'You have successfully placed your order.', '2024-09-07 10:15:56', '2024-09-07 10:15:56'),
(147, 280, 'Pending', 'You have successfully placed your order.', '2024-09-07 19:53:19', '2024-09-07 19:53:19'),
(148, 281, 'Pending', 'You have successfully placed your order.', '2024-09-07 19:57:02', '2024-09-07 19:57:02'),
(149, 282, 'Pending', 'You have successfully placed your order.', '2024-09-07 19:58:27', '2024-09-07 19:58:27'),
(150, 283, 'Pending', 'You have successfully placed your order.', '2024-09-07 20:36:09', '2024-09-07 20:36:09'),
(151, 284, 'Pending', 'You have successfully placed your order.', '2024-09-07 20:38:44', '2024-09-07 20:38:44'),
(152, 287, 'Pending', 'You have successfully placed your order.', '2024-09-08 20:55:23', '2024-09-08 20:55:23'),
(153, 288, 'Pending', 'You have successfully placed your order.', '2024-09-09 13:12:02', '2024-09-09 13:12:02'),
(154, 289, 'Pending', 'You have successfully placed your order.', '2024-09-09 23:25:31', '2024-09-09 23:25:31'),
(155, 291, 'Pending', 'You have successfully placed your order.', '2024-09-10 15:16:05', '2024-09-10 15:16:05'),
(156, 292, 'Pending', 'You have successfully placed your order.', '2024-09-10 15:20:15', '2024-09-10 15:20:15'),
(157, 294, 'Pending', 'You have successfully placed your order.', '2024-09-10 20:06:29', '2024-09-10 20:06:29'),
(158, 295, 'Pending', 'You have successfully placed your order.', '2024-09-10 20:50:18', '2024-09-10 20:50:18'),
(159, 296, 'Pending', 'You have successfully placed your order.', '2024-09-10 21:08:06', '2024-09-10 21:08:06'),
(160, 297, 'Pending', 'You have successfully placed your order.', '2024-09-10 21:34:13', '2024-09-10 21:34:13'),
(161, 299, 'Pending', 'You have successfully placed your order.', '2024-09-11 11:55:44', '2024-09-11 11:55:44'),
(162, 300, 'Pending', 'You have successfully placed your order.', '2024-09-11 12:03:10', '2024-09-11 12:03:10'),
(163, 301, 'Pending', 'You have successfully placed your order.', '2024-09-11 14:22:19', '2024-09-11 14:22:19'),
(164, 302, 'Pending', 'You have successfully placed your order.', '2024-09-11 15:42:35', '2024-09-11 15:42:35'),
(165, 303, 'Pending', 'You have successfully placed your order.', '2024-09-11 16:10:03', '2024-09-11 16:10:03'),
(166, 304, 'Pending', 'You have successfully placed your order.', '2024-09-11 16:10:41', '2024-09-11 16:10:41'),
(167, 305, 'Pending', 'You have successfully placed your order.', '2024-09-11 16:12:15', '2024-09-11 16:12:15'),
(168, 306, 'Pending', 'You have successfully placed your order.', '2024-09-11 16:25:25', '2024-09-11 16:25:25'),
(169, 307, 'Pending', 'You have successfully placed your order.', '2024-09-11 16:27:13', '2024-09-11 16:27:13'),
(170, 308, 'Pending', 'You have successfully placed your order.', '2024-09-11 19:07:15', '2024-09-11 19:07:15'),
(171, 309, 'Pending', 'You have successfully placed your order.', '2024-09-11 19:11:48', '2024-09-11 19:11:48'),
(172, 310, 'Pending', 'You have successfully placed your order.', '2024-09-11 19:17:11', '2024-09-11 19:17:11'),
(173, 311, 'Pending', 'You have successfully placed your order.', '2024-09-11 19:23:12', '2024-09-11 19:23:12'),
(174, 312, 'Pending', 'You have successfully placed your order.', '2024-09-11 19:25:28', '2024-09-11 19:25:28'),
(175, 313, 'Pending', 'You have successfully placed your order.', '2024-09-11 19:33:06', '2024-09-11 19:33:06'),
(176, 314, 'Pending', 'You have successfully placed your order.', '2024-09-11 19:49:05', '2024-09-11 19:49:05'),
(177, 315, 'Pending', 'You have successfully placed your order.', '2024-09-11 20:01:15', '2024-09-11 20:01:15'),
(178, 316, 'Pending', 'You have successfully placed your order.', '2024-09-11 20:19:46', '2024-09-11 20:19:46'),
(179, 317, 'Pending', 'You have successfully placed your order.', '2024-09-11 20:27:45', '2024-09-11 20:27:45'),
(180, 318, 'Pending', 'You have successfully placed your order.', '2024-09-11 21:01:23', '2024-09-11 21:01:23'),
(181, 319, 'Pending', 'You have successfully placed your order.', '2024-09-11 21:03:56', '2024-09-11 21:03:56'),
(182, 320, 'Pending', 'You have successfully placed your order.', '2024-09-11 21:06:21', '2024-09-11 21:06:21'),
(183, 321, 'Pending', 'You have successfully placed your order.', '2024-09-11 22:17:33', '2024-09-11 22:17:33'),
(184, 322, 'Pending', 'You have successfully placed your order.', '2024-09-11 22:28:43', '2024-09-11 22:28:43'),
(185, 323, 'Pending', 'You have successfully placed your order.', '2024-09-12 12:25:39', '2024-09-12 12:25:39'),
(186, 326, 'Pending', 'You have successfully placed your order.', '2024-09-15 13:00:41', '2024-09-15 13:00:41'),
(187, 329, 'Pending', 'You have successfully placed your order.', '2024-09-20 13:40:49', '2024-09-20 13:40:49'),
(188, 330, 'Pending', 'You have successfully placed your order.', '2024-09-20 14:29:37', '2024-09-20 14:29:37'),
(189, 340, 'Pending', 'You have successfully placed your order.', '2024-09-24 14:29:52', '2024-09-24 14:29:52'),
(190, 344, 'Pending', 'You have successfully placed your order.', '2024-09-27 11:18:35', '2024-09-27 11:18:35'),
(191, 350, 'Pending', 'You have successfully placed your order.', '2024-10-02 13:45:11', '2024-10-02 13:45:11'),
(192, 350, 'j', 'h', '2024-10-02 14:15:42', '2024-10-02 14:15:42'),
(193, 350, 'Processing', 'hh', '2024-10-02 14:15:56', '2024-10-02 14:15:56'),
(194, 348, 'Pending', 'gg', '2024-10-02 14:17:01', '2024-10-02 14:17:01'),
(195, 351, 'Pending', 'You have successfully placed your order.', '2024-10-02 15:35:20', '2024-10-02 15:35:20'),
(196, 351, 'Processing', 'ddd', '2024-10-02 15:54:09', '2024-10-02 15:54:09'),
(197, 349, 'dd', 'sa', '2024-10-02 15:54:32', '2024-10-02 15:54:32'),
(198, 349, 'Pending', 'sss', '2024-10-02 15:55:08', '2024-10-02 15:55:08'),
(199, 348, 'Processing', 'ss', '2024-10-02 15:55:21', '2024-10-02 15:55:21'),
(200, 352, 'Pending', 'You have successfully placed your order.', '2024-10-02 17:18:02', '2024-10-02 17:18:02'),
(201, 352, 'azrar 11', 'azrar 11', '2024-10-02 17:33:15', '2024-10-02 17:33:15'),
(202, 352, 'Processing', 'azrar 11', '2024-10-02 17:33:24', '2024-10-02 17:33:24'),
(203, 349, 'Processing', 'azrar 11', '2024-10-02 17:33:36', '2024-10-02 17:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(18, 0, 'dddzdfzs', 'ffffffffffdssf', 5553),
(19, 0, 'Ahmad', 'fdsgdfg', 5553),
(20, 0, 'mm', 'kj', 744),
(21, 175, 'll', 'ffffffffff', 5555),
(22, 221, 'fffffffff', 'ffffffffffdssf', 333333),
(23, 222, 'Default packages', 'packages', 0),
(24, 223, 'Default packages', 'packages', 0),
(25, 224, 'Default packages', 'packages', 0),
(26, 225, 'Default packages', 'packages', 0),
(27, 226, 'Default packages', 'packages', 0),
(28, 227, 'Default packages', 'packages', 0),
(29, 228, 'Default packages', 'packages', 0),
(30, 229, 'Default packages', 'packages', 0),
(31, 230, 'Default packages', 'packages', 0),
(32, 213, 'm', 'n', 99),
(33, 231, 'Default packages', 'packages', 0),
(34, 201, 'byvtv', 'ubbyyv', 9939),
(35, 200, 'bmazrzrtest', 'jb', 4907),
(36, 200, 'new p', 'new p', 189),
(37, 238, 'msms', 'nsne', 4991),
(40, 200, 'kn', 'dd', 545),
(43, 249, 'Default packages', 'packages', 0),
(45, 0, 'azrar 11', 'azrar 11', 2),
(46, 251, 'Default packages', 'packages', 0),
(47, 252, 'Default packages', 'packages', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0',
  `title_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_ku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_ku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `photo`, `meta_tag`, `meta_description`, `header`, `footer`, `title_ar`, `title_ku`, `details_ku`, `details_ar`) VALUES
(1, 'About Us', 'about', 'Welcome to the Azarar platform', '1718129328Logo-11jpg.jpg', NULL, NULL, 1, 1, 'من نحن', 'ئێمه‌ كێین', 'مرحبا بكم في منصة ازرار', 'مرحبا بكم في منصة ازرار'),
(2, 'Privacy & Policy', 'privacy', '1. Introduction\r\n\r\nWelcome to Azrar. We are committed to protecting your privacy and ensuring your personal information is handled responsibly. This Privacy Policy outlines how we collect, use, and protect your information.\r\n\r\n2. Information We Collect\r\n\r\nWe may collect the following types of information:\r\n\r\n- Personal Information: Name, email address, phone number, and any other information you provide to us voluntarily.\r\n- Usage Data: Information about how you use our website, including your IP address, browser type, and pages visited.\r\n- Cookies and Tracking Technologies: We use cookies to enhance your experience and analyze site traffic.\r\n\r\n3. How We Use Your Information\r\n\r\nWe may use your information for the following purposes:\r\n\r\n- To provide and maintain our website.\r\n- To improve our services and user experience.\r\n- To communicate with you, including sending newsletters or promotional materials.\r\n- To comply with legal obligations.\r\n\r\n4. Sharing Your Information\r\n\r\nWe do not sell or rent your personal information to third parties. We may share your information in the following circumstances:\r\n\r\n- With service providers who assist us in operating our website.\r\n- To comply with legal requirements or protect our rights.\r\n\r\n5. Security of Your Information\r\n\r\nWe take reasonable measures to protect your personal information from unauthorized access, disclosure, or misuse. However, no method of transmission over the internet is completely secure.\r\n\r\n6. Your Rights\r\n\r\nYou have the right to:\r\n\r\n- Access the personal information we hold about you.\r\n- Request correction of inaccurate data.\r\n- Request deletion of your personal information.\r\n\r\n7. Changes to This Privacy Policy\r\n\r\nWe may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.\r\n\r\n8. Contact Us\r\n\r\nIf you have any questions or concerns about this Privacy Policy, please contact us at:\r\n\r\n- Email: support@azrar.co\r\n- Address: Turkey-istanbul', '164593897354png.png', NULL, NULL, 1, 1, 'السياسة & الخصوصية', 'سیاسەت و نهێنی', '1. المقدمة\r\n\r\nمرحبًا بك في Azrar. نحن ملتزمون بحماية خصوصيتك وضمان التعامل مع معلوماتك الشخصية بشكل مسؤول. توضح سياسة الخصوصية هذه كيفية جمع معلوماتك واستخدامها وحمايتها.\r\n\r\n2. المعلومات التي نجمعها\r\n\r\nقد نجمع الأنواع التالية من المعلومات:\r\n\r\n- المعلومات الشخصية: الاسم وعنوان البريد الإلكتروني ورقم الهاتف وأي معلومات أخرى تقدمها لنا طواعية.\r\n- بيانات الاستخدام: معلومات حول كيفية استخدامك لموقعنا الإلكتروني، بما في ذلك عنوان IP الخاص بك ونوع المتصفح والصفحات التي قمت بزيارتها.\r\n- ملفات تعريف الارتباط وتقنيات التتبع: نستخدم ملفات تعريف الارتباط لتحسين تجربتك وتحليل حركة المرور على الموقع.\r\n\r\n3. كيف نستخدم معلوماتك\r\n\r\nقد نستخدم معلوماتك للأغراض التالية:\r\n\r\n- لتوفير موقعنا الإلكتروني وصيانته.\r\n- لتحسين خدماتنا وتجربة المستخدم.\r\n- للتواصل معك، بما في ذلك إرسال النشرات الإخبارية أو المواد الترويجية.\r\n- للامتثال للالتزامات القانونية.\r\n\r\n4. مشاركة معلوماتك\r\n\r\nلا نبيع أو نؤجر معلوماتك الشخصية لأطراف ثالثة. يجوز لنا مشاركة معلوماتك في الحالات التالية:\r\n\r\n- مع مقدمي الخدمات الذين يساعدوننا في تشغيل موقعنا على الويب.\r\n- للامتثال للمتطلبات القانونية أو حماية حقوقنا.\r\n\r\n5. أمان معلوماتك\r\n\r\nنتخذ تدابير معقولة لحماية معلوماتك الشخصية من الوصول غير المصرح به أو الكشف عنها أو إساءة استخدامها. ومع ذلك، لا توجد طريقة نقل عبر الإنترنت آمنة تمامًا.\r\n\r\n6. حقوقك\r\n\r\nلديك الحق في:\r\n\r\n- الوصول إلى المعلومات الشخصية التي نحتفظ بها عنك.\r\n- طلب تصحيح البيانات غير الدقيقة.\r\n- طلب حذف معلوماتك الشخصية.\r\n\r\n7. التغييرات على سياسة الخصوصية هذه\r\n\r\nقد نقوم بتحديث سياسة الخصوصية هذه من وقت لآخر. وسنقوم بإخطارك بأي تغييرات من خلال نشر سياسة الخصوصية الجديدة على هذه الصفحة.\r\n\r\n8. اتصل بنا\r\n\r\nإذا كانت لديك أي أسئلة أو مخاوف بشأن سياسة الخصوصية هذه، يرجى الاتصال بنا على:\r\n\r\n- البريد الإلكتروني: support@azrar.co\r\n- العنوان: تركيا-اسطنبول', '1. المقدمة\r\n\r\nمرحبًا بك في Azrar. نحن ملتزمون بحماية خصوصيتك وضمان التعامل مع معلوماتك الشخصية بشكل مسؤول. توضح سياسة الخصوصية هذه كيفية جمع معلوماتك واستخدامها وحمايتها.\r\n\r\n2. المعلومات التي نجمعها\r\n\r\nقد نجمع الأنواع التالية من المعلومات:\r\n\r\n- المعلومات الشخصية: الاسم وعنوان البريد الإلكتروني ورقم الهاتف وأي معلومات أخرى تقدمها لنا طواعية.\r\n- بيانات الاستخدام: معلومات حول كيفية استخدامك لموقعنا الإلكتروني، بما في ذلك عنوان IP الخاص بك ونوع المتصفح والصفحات التي قمت بزيارتها.\r\n- ملفات تعريف الارتباط وتقنيات التتبع: نستخدم ملفات تعريف الارتباط لتحسين تجربتك وتحليل حركة المرور على الموقع.\r\n\r\n3. كيف نستخدم معلوماتك\r\n\r\nقد نستخدم معلوماتك للأغراض التالية:\r\n\r\n- لتوفير موقعنا الإلكتروني وصيانته.\r\n- لتحسين خدماتنا وتجربة المستخدم.\r\n- للتواصل معك، بما في ذلك إرسال النشرات الإخبارية أو المواد الترويجية.\r\n- للامتثال للالتزامات القانونية.\r\n\r\n4. مشاركة معلوماتك\r\n\r\nلا نبيع أو نؤجر معلوماتك الشخصية لأطراف ثالثة. يجوز لنا مشاركة معلوماتك في الحالات التالية:\r\n\r\n- مع مقدمي الخدمات الذين يساعدوننا في تشغيل موقعنا على الويب.\r\n- للامتثال للمتطلبات القانونية أو حماية حقوقنا.\r\n\r\n5. أمان معلوماتك\r\n\r\nنتخذ تدابير معقولة لحماية معلوماتك الشخصية من الوصول غير المصرح به أو الكشف عنها أو إساءة استخدامها. ومع ذلك، لا توجد طريقة نقل عبر الإنترنت آمنة تمامًا.\r\n\r\n6. حقوقك\r\n\r\nلديك الحق في:\r\n\r\n- الوصول إلى المعلومات الشخصية التي نحتفظ بها عنك.\r\n- طلب تصحيح البيانات غير الدقيقة.\r\n- طلب حذف معلوماتك الشخصية.\r\n\r\n7. التغييرات على سياسة الخصوصية هذه\r\n\r\nقد نقوم بتحديث سياسة الخصوصية هذه من وقت لآخر. وسنقوم بإخطارك بأي تغييرات من خلال نشر سياسة الخصوصية الجديدة على هذه الصفحة.\r\n\r\n8. اتصل بنا\r\n\r\nإذا كانت لديك أي أسئلة أو مخاوف بشأن سياسة الخصوصية هذه، يرجى الاتصال بنا على:\r\n\r\n- البريد الإلكتروني: support@azrar.co\r\n- العنوان: تركيا-اسطنبول'),
(3, 'Terms & Condition', 'سياسة الخصوصية', '1. Introduction\r\n\r\nWelcome to Azrar By accessing or using our website, you agree to comply with these Terms and Conditions. If you do not agree, please do not use our site.\r\n\r\n2. Use of the Site\r\n\r\nYou agree to use our website only for lawful purposes and in a way that does not infringe on the rights of others. You must not use the site:\r\n\r\n- In any way that violates any applicable laws or regulations.\r\n- To transmit any harmful or malicious software.\r\n\r\n3. Intellectual Property\r\n\r\nAll content on this site, including text, graphics, logos, and images, is the property of azrar.co and is protected by copyright and other intellectual property laws. You may not reproduce, distribute, or modify any content without our prior written consent.\r\n\r\n4. User Accounts\r\n\r\nTo access certain features, you may need to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account.\r\n\r\n5. Limitation of Liability\r\n\r\nIn no event shall azrar.co be liable for any indirect, incidental, or consequential damages arising from your use of the site. We do not guarantee the accuracy or completeness of the information on our website.\r\n\r\n6. Changes to Terms\r\n\r\nWe reserve the right to modify these Terms and Conditions at any time. We will notify you of any changes by posting the new terms on this page. Your continued use of the website after any changes constitutes your acceptance of the new terms.\r\n\r\n7. Governing Law\r\n\r\nThese Terms and Conditions are governed by the laws of Iraq, without regard to its conflict of law principles.\r\n\r\n8. Contact Us\r\n\r\nIf you have any questions about these Terms and Conditions, please contact us at:\r\n\r\n- Email: support@azrar.co\r\n- Address: Turkey-Istanbul', '1718129316Logo-11jpg.jpg', NULL, NULL, 1, 1, 'الشروط  & الأحكام', 'مەرج و ڕێساکان', '1. المقدمة\r\n\r\nمرحبًا بك في Azrar من خلال الوصول إلى موقعنا أو استخدامه، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق، يرجى عدم استخدام موقعنا.\r\n\r\n2. استخدام الموقع\r\n\r\nأنت توافق على استخدام موقعنا فقط للأغراض القانونية وبطريقة لا تنتهك حقوق الآخرين. يجب ألا تستخدم الموقع:\r\n\r\n- بأي طريقة تنتهك أي قوانين أو لوائح سارية.\r\n- لنقل أي برامج ضارة أو خبيثة.\r\n\r\n3. الملكية الفكرية\r\n\r\nكل المحتوى الموجود على هذا الموقع، بما في ذلك النصوص والرسومات والشعارات والصور، هو ملك لـ Azrar.co ومحمي بموجب حقوق النشر وقوانين الملكية الفكرية الأخرى. لا يجوز لك إعادة إنتاج أو توزيع أو تعديل أي محتوى دون موافقتنا الكتابية المسبقة.\r\n\r\n4. حسابات المستخدم\r\n\r\nللوصول إلى ميزات معينة، قد تحتاج إلى إنشاء حساب. أنت مسؤول عن الحفاظ على سرية معلومات حسابك وجميع الأنشطة التي تحدث تحت حسابك.\r\n\r\n5. الحد من المسؤولية\r\n\r\nلا تتحمل شركة azrar.co في أي حال من الأحوال المسؤولية عن أي أضرار غير مباشرة أو عرضية أو تبعية ناجمة عن استخدامك للموقع. ولا نضمن دقة أو اكتمال المعلومات الموجودة على موقعنا.\r\n\r\n6. التغييرات على الشروط\r\n\r\nنحتفظ بالحق في تعديل هذه الشروط والأحكام في أي وقت. وسنخطرك بأي تغييرات من خلال نشر الشروط الجديدة على هذه الصفحة. ويشكل استمرارك في استخدام الموقع بعد أي تغييرات موافقتك على الشروط الجديدة.\r\n\r\n7. القانون الحاكم\r\n\r\nتخضع هذه الشروط والأحكام لقوانين العراق، دون مراعاة مبادئ تضارب القوانين.\r\n\r\n8. اتصل بنا\r\n\r\nإذا كانت لديك أي أسئلة حول هذه الشروط والأحكام، يرجى الاتصال بنا على:\r\n\r\n- البريد الإلكتروني: support@azrar.co\r\n- العنوان: تركيا-اسطنبول', '1. المقدمة\r\n\r\nمرحبًا بك في Azrar من خلال الوصول إلى موقعنا أو استخدامه، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق، يرجى عدم استخدام موقعنا.\r\n\r\n2. استخدام الموقع\r\n\r\nأنت توافق على استخدام موقعنا فقط للأغراض القانونية وبطريقة لا تنتهك حقوق الآخرين. يجب ألا تستخدم الموقع:\r\n\r\n- بأي طريقة تنتهك أي قوانين أو لوائح سارية.\r\n- لنقل أي برامج ضارة أو خبيثة.\r\n\r\n3. الملكية الفكرية\r\n\r\nكل المحتوى الموجود على هذا الموقع، بما في ذلك النصوص والرسومات والشعارات والصور، هو ملك لـ Azrar.co ومحمي بموجب حقوق النشر وقوانين الملكية الفكرية الأخرى. لا يجوز لك إعادة إنتاج أو توزيع أو تعديل أي محتوى دون موافقتنا الكتابية المسبقة.\r\n\r\n4. حسابات المستخدم\r\n\r\nللوصول إلى ميزات معينة، قد تحتاج إلى إنشاء حساب. أنت مسؤول عن الحفاظ على سرية معلومات حسابك وجميع الأنشطة التي تحدث تحت حسابك.\r\n\r\n5. الحد من المسؤولية\r\n\r\nلا تتحمل شركة azrar.co في أي حال من الأحوال المسؤولية عن أي أضرار غير مباشرة أو عرضية أو تبعية ناجمة عن استخدامك للموقع. ولا نضمن دقة أو اكتمال المعلومات الموجودة على موقعنا.\r\n\r\n6. التغييرات على الشروط\r\n\r\nنحتفظ بالحق في تعديل هذه الشروط والأحكام في أي وقت. وسنخطرك بأي تغييرات من خلال نشر الشروط الجديدة على هذه الصفحة. ويشكل استمرارك في استخدام الموقع بعد أي تغييرات موافقتك على الشروط الجديدة.\r\n\r\n7. القانون الحاكم\r\n\r\nتخضع هذه الشروط والأحكام لقوانين العراق، دون مراعاة مبادئ تضارب القوانين.\r\n\r\n8. اتصل بنا\r\n\r\nإذا كانت لديك أي أسئلة حول هذه الشروط والأحكام، يرجى الاتصال بنا على:\r\n\r\n- البريد الإلكتروني: support@azrar.co\r\n- العنوان: تركيا-اسطنبول');

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

DROP TABLE IF EXISTS `pagesettings`;
CREATE TABLE IF NOT EXISTS `pagesettings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_text` text COLLATE utf8mb4_unicode_ci,
  `rightbanner1` text COLLATE utf8mb4_unicode_ci,
  `rightbanner2` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink1` text COLLATE utf8mb4_unicode_ci,
  `rightbannerlink2` text COLLATE utf8mb4_unicode_ci,
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `blog` tinyint(1) NOT NULL DEFAULT '0',
  `faq` tinyint(1) NOT NULL DEFAULT '0',
  `contact` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `arrival_section` tinyint(1) NOT NULL DEFAULT '1',
  `our_services` tinyint(1) NOT NULL DEFAULT '1',
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `partner` tinyint(1) NOT NULL DEFAULT '1',
  `top_big_trending` tinyint(1) NOT NULL DEFAULT '0',
  `top_banner` int NOT NULL DEFAULT '1',
  `large_banner` int NOT NULL DEFAULT '1',
  `bottom_banner` int NOT NULL DEFAULT '1',
  `best_selling` int NOT NULL DEFAULT '1',
  `newsletter` int NOT NULL DEFAULT '1',
  `deal_of_the_day` int NOT NULL DEFAULT '1',
  `best_sellers` tinyint NOT NULL DEFAULT '1',
  `third_left_banner` int NOT NULL,
  `popular_products` tinyint NOT NULL DEFAULT '1',
  `flash_deal` tinyint NOT NULL DEFAULT '1',
  `top_brand` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_email`, `street`, `phone`, `fax`, `email`, `site`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `big_save_banner_subtitle`, `big_save_banner_title`, `big_save_banner_text`, `rightbanner1`, `rightbanner2`, `rightbannerlink1`, `rightbannerlink2`, `home`, `blog`, `faq`, `contact`, `category`, `arrival_section`, `our_services`, `slider`, `partner`, `top_big_trending`, `top_banner`, `large_banner`, `bottom_banner`, `best_selling`, `newsletter`, `deal_of_the_day`, `best_sellers`, `third_left_banner`, `popular_products`, `flash_deal`, `top_brand`) VALUES
(1, 'admin@azrar.com', 'بغدد المنصور شارع الاميرات', '+905379445001', '00 000 000 000', 'admin@azrar.com', 'https://ealanatek.site/', '1639369899side-banner22png.png', 'http://google.com', '1639370813Bottom31png.png', 'http://google.com', '1639369899bottom3-bigg1png.png', 'http://google.com', '16632315121png.png', 'http://google.com', 'SPECIAL OFFER', 'Special Beauty Care Available', 'On purchases with your City Furniture Credit Card from 6/16/2021 – 7/6/2021.', '1573547281sm-banner.jpg', '1573547653sm-banner.jpg', 'https://codecanyon.net/user/geniusocean/portfolio', 'https://codecanyon.net/user/geniusocean/portfolio', 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(11, '1718129004Logo-11jpg.jpg', 'https://ealanatek.site/'),
(12, '1719933144Logo-05jpg.jpg', 'https://ealanatek.site/'),
(13, '1718128982Logo-11jpg.jpg', 'https://ealanatek.site/'),
(14, '1719933133Logo-01jpg.jpg', 'https://ealanatek.site/'),
(25, '1721130405bannerpng.png', 'https://ealanatek.site/'),
(26, '1721130415bannerpng.png', 'https://ealanatek.site/');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
CREATE TABLE IF NOT EXISTS `payment_gateways` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '*',
  `checkout` int NOT NULL DEFAULT '1',
  `deposit` int NOT NULL DEFAULT '1',
  `subscription` int NOT NULL DEFAULT '1',
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `deposit`, `subscription`, `phone`) VALUES
(1, 'Pay with cash upon delivery.', 'Cash On Delivery', NULL, NULL, 'manual', NULL, 'cod', '*', 1, 0, 0, NULL),
(15, '(5 - 6 days)', 'ASIA PAY', '<span style=\"font-weight: bolder;\">Mobile Number:</span>69234324233423', NULL, 'manual', NULL, NULL, '*', 1, 1, 1, NULL),
(19, 'pay with zain cash', 'ZAIN CASH', '<span style=\"font-weight: bolder;\">Mobile Number:</span>69234324233423<br>', NULL, 'manual', NULL, NULL, '*', 1, 1, 1, NULL),
(20, NULL, 'Stripe', NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '*', 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

DROP TABLE IF EXISTS `pickups`;
CREATE TABLE IF NOT EXISTS `pickups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'duhuk'),
(3, 'arbil'),
(4, 'anbar'),
(5, 'basra'),
(6, 'Bagdad'),
(10, 'sadms774');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

DROP TABLE IF EXISTS `pickup_points`;
CREATE TABLE IF NOT EXISTS `pickup_points` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pickup_points`
--

INSERT INTO `pickup_points` (`id`, `user_id`, `location`, `status`) VALUES
(2, 13, 'Uttara', 1),
(3, 13, 'MIRPUR', 1),
(4, 13, 'Savar', 1),
(5, 22, 'DHAKA', 1),
(6, 84, 'sahet marto', 1),
(7, 108, 'azaza', 1),
(9, 82, 'اب محمد', 1),
(10, 200, 'azaz3', 1),
(11, 175, 'jjjjjjjjjjj', 1),
(12, 202, 'jjjjjjjjjjj', 1),
(13, 213, 'bsb', 1),
(14, 213, 'bsb', 1),
(15, 201, 'n', 1),
(16, 201, 'n', 1),
(18, 238, 'd', 1),
(20, 200, 'jjj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int DEFAULT '0',
  `category_id` int UNSIGNED NOT NULL,
  `subcategory_id` int UNSIGNED DEFAULT NULL,
  `childcategory_id` int UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name_ku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License','Listing') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` date DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int NOT NULL DEFAULT '0',
  `preordered` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_all` text,
  `size_all` text,
  `stock_check` int NOT NULL DEFAULT '1',
  `cross_products` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `name_ar`, `name_ku`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `preordered`, `minimum_qty`, `color_all`, `size_all`, `stock_check`, `cross_products`) VALUES
(455, 'XDQ6443DlX', 'normal', NULL, 0, 53, 65, NULL, '[]', 'hours', 'hours-xdq6443dlx', '172588722804LosLNj.png', '17258872285vb4dDVU.jpg', NULL, NULL, NULL, NULL, NULL, 'ساعة', 'ساعة', 1425, 25, 'ساعة ساعة', NULL, 'ساعة ساعة', 1, 24, 'mm', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:16:09', '2024-10-23 14:10:05', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(456, 'eWf8201xBc', 'normal', NULL, 0, 64, 76, NULL, '[]', 'Perfumes', 'Perfumes-ewf8201xbc', '1723848313tR2KtXSM.png', 'assets/images/thumbnails/1723848313tR2KtXSM.png', NULL, NULL, NULL, NULL, NULL, 'عطور', 'عطور', 2000, 20, 'عطور عطور', NULL, 'عطور عطور', 1, 20, 'Perfumes', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:45:13', '2024-10-21 15:35:19', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(457, '2cR8273uhe', 'normal', NULL, 0, 67, 79, NULL, '[]', 'meak up', 'meak-up-2cr8273uhe', '17238484015f6aVLUA.png', 'assets/images/thumbnails/17238484015f6aVLUA.png', NULL, NULL, NULL, NULL, NULL, 'مكياج', 'مكياج', 10000, 1, 'Product Description', NULL, 'Product Buy/Return Policy', 1, 22, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:46:41', '2024-10-22 01:13:01', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(458, 'hh58316pf0', 'normal', NULL, 0, 40, 52, 40, '[]', 'ipone', 'ipone-hh58316pf0', '1723848443DhJDlFYE.png', 'assets/images/thumbnails/1723848443DhJDlFYE.png', NULL, NULL, NULL, NULL, NULL, 'ايفون', 'ايفون', 3000, 30, 'ايفون', NULL, 'ايفون', 1, 27, 'ipone', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:47:23', '2024-10-21 18:05:29', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(459, 'mmL8447TAC', 'normal', NULL, 0, 41, 53, 41, '[]', 'chess', 'chess-mml8447tac', '1723848538YSpWEMEu.png', 'assets/images/thumbnails/1723848538YSpWEMEu.png', NULL, NULL, NULL, NULL, NULL, 'شطرنج', 'شطرنج', 200000, 21, 'شطرنج', NULL, 'شطرنج', 1, 33, 'chess', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:48:58', '2024-10-21 14:44:15', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(460, '2cR8273uhe4', 'normal', NULL, 0, 67, 79, NULL, '[]', 'meak', 'meak-2cr8273uhe4', '1723848548JhhpUoAa.png', 'assets/images/thumbnails/1723848548JhhpUoAa.png', NULL, NULL, NULL, NULL, NULL, '1مكياج', '1مكياج', 10000, 1, 'Product Description', NULL, 'Product Buy/Return Policy', 1, 26, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:49:08', '2024-10-21 21:30:05', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(461, '3nQ85428MP', 'normal', NULL, 0, 42, 54, 42, '[]', 'handbag', 'handbag-3nq85428mp', '1723848659qy8zYUlI.png', 'assets/images/thumbnails/1723848659qy8zYUlI.png', NULL, NULL, NULL, NULL, NULL, 'حقيبة يد', 'حقيبة يد', 50000, 10, 'handbag', NULL, 'handbag', 1, 15, 'handbag', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:51:00', '2024-10-21 17:33:28', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(462, '8OK8663kaf', 'normal', NULL, 0, 43, 55, 43, '[]', 'Scientific books', 'Scientific-books-8ok8663kaf', '1723848733r1vQ52hr.png', 'assets/images/thumbnails/1723848733r1vQ52hr.png', NULL, NULL, NULL, NULL, NULL, 'كتب علمية', 'كتب علمية', 400000, 500, 'Scientific books', NULL, 'Scientific books', 1, 17, 'Scientific books', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:52:13', '2024-10-21 11:31:27', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(464, 'MNF8871Gxj', 'normal', NULL, 0, 45, 57, 45, '', 'Sports shoes', 'sports-shoes-mnf8871gxj', '1725735865PZ8suDgA.png', '1725735865metWQ5t3.jpg', NULL, NULL, NULL, NULL, NULL, 'حذاء رياضي', 'حذاء رياضي', 755551, 145, 'Sports shoes', NULL, 'Sports shoes', 1, 30, 'Sports shoes', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2024-08-16 22:56:40', '2024-10-24 00:44:33', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(465, 'hzr8884mXg', 'normal', NULL, 0, 66, 78, NULL, '[]', 'cloth-22', 'cloth-22-hzr8884mxg', '1723849016tReoUQj2.png', 'assets/images/thumbnails/1723849016tReoUQj2.png', NULL, NULL, NULL, NULL, '#2273da', 'لباس', 'لباس', 1000, 1, 'Product Description', NULL, 'Product Buy/Return Policy', 1, 53, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-08-16 22:56:56', '2024-10-21 19:28:37', 0, NULL, NULL, NULL, 0, 0, 0, NULL, '#9d17d7,#3deb06,#f81313', NULL, 0, NULL),
(466, 'mno9003u4v', 'normal', NULL, 0, 46, 58, 46, '', 'Red pen', 'red-pen-mno9003u4v', '1725741458semSBZIj.png', '1725741458FnP4Eh8P.jpg', NULL, NULL, NULL, NULL, NULL, 'قلم احمر', 'قلم احمر', 900000, 422, NULL, NULL, NULL, 1, 36, 'Red pen', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, 0, 0, 1, '2024-08-16 22:59:32', '2024-10-23 23:07:13', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(471, 'ftW1456Q6n', 'normal', NULL, 200, 40, 52, 40, '', 'carrr1', 'carrr1-ftw1456q6n', '1725735476uLujlrhW.png', '1725735476PkEkd6wX.jpg', NULL, NULL, NULL, NULL, NULL, 'carrr1', 'carrr1', 555, 5, 'carrr1', NULL, 'carrr1', 1, 143, 'kk', NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2024-08-17 16:19:22', '2024-10-22 15:52:28', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL),
(580, 'vPo4601Gd5', 'normal', NULL, 0, 50, 62, NULL, '', 'pen shadow', 'mmm-vpo4601gd5', '1725734641UWCYBEcM.png', 'assets/images/thumbnails/1725734641UWCYBEcM.png', NULL, 'S,S,S,L,L,L,XL,XL,XL', '0,1,1,1,1,1,1,1,1', '0,0,0,0,0,0,0,0,0', '#d44343,#44df56,#000000,#d44343,#44df56,#44df56,#d44343,#44df56,#000000', 'قلم ظل', 'قلم ظل', 416, 535, NULL, NULL, 'mmm', 1, 11, 'mmm', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-07 18:44:01', '2024-10-21 01:11:19', 0, NULL, NULL, NULL, 0, 0, 0, NULL, '#d44343,#44df56,#000000', 'S,L,XL', 1, NULL),
(589, 'yp19853tKZ', 'normal', NULL, 175, 51, 63, NULL, '', 'lfdsnvksdal', 'lfdsnvksdal-yp19853tkz', '1725839898uY6Em6e9.png', '1725839898a7wNEqLH.jpg', NULL, NULL, NULL, NULL, NULL, 'سيبتخسب', 'سيبلسيل', 10000, 1, 'l', 555, ';p', 1, 10, 'njkjbl', '', '#000000', 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-08 23:58:18', '2024-10-23 21:07:57', 0, NULL, NULL, NULL, 0, 0, 1, NULL, '', NULL, 0, NULL),
(590, 'W6109603fV', 'normal', NULL, 200, 45, 57, 45, NULL, 'football', 'football-w6109603fv', '1725881058VLRsYwu2.png', '1725881058T7MI1g5E.jpg', NULL, 'S,S', '1,1', '0,0', '#644545,#34b95e', 'كرة قدم', 'كرة قدم', 1000, 999, 'football', NULL, 'football', 1, 80, 'football', NULL, NULL, 2, '23', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2024-09-09 11:24:18', '2024-10-21 09:48:45', 0, NULL, '23', '2', 0, 0, 1, '1', '#644545,#34b95e', 'S,X', 1, NULL),
(591, 'jqh73358qV', 'normal', NULL, 0, 55, 67, 55, '', 'adm', 'adm-jqh73358qv', '1725981852lWbQ8IhV.png', '1725981852nujQlvfe.jpg', NULL, NULL, NULL, NULL, NULL, 'adm', 'adm', 1000, 999, 'adm', NULL, 'adm', 1, 16, 'adm', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, 0, 0, 1, '2024-09-09 13:09:57', '2024-10-22 12:42:41', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(594, 'DK80886xzK', 'normal', NULL, 0, 40, 52, NULL, '[]', 'deee', 'deee-dk80886xzk', '1726000992Yran1dOY.png', 'assets/images/thumbnails/1726000992Yran1dOY.png', NULL, 'm,m,l,l', '0,1,1,1', '0,0,0,0', '#df3838,#006d88,#df3838,#006d88', 'deee', 'deee', 10000, 999, 'deee', NULL, 'deee', 1, 12, 'ss', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-10 20:43:12', '2024-10-21 19:16:17', 0, NULL, NULL, NULL, 0, 0, 0, NULL, '#df3838,#006d88', 'm,l', 1, NULL),
(596, 'CqD3218kUt', 'normal', NULL, 0, 40, 52, 40, '[]', 'test1', 'test1-cqd3218kut', '1726003287FgB38xDl.png', 'assets/images/thumbnails/1726003287FgB38xDl.png', NULL, NULL, NULL, NULL, NULL, 'test1', 'test1', 123, 12, 'test1', NULL, 'test1', 1, 12, 'test1', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-10 21:21:27', '2024-10-24 05:19:46', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(597, 'l7r3301oit', 'normal', NULL, 202, 40, 52, 40, '[]', 'test2', 'test2-l7r3301oit', '1726003342odVHIwNV.png', 'assets/images/thumbnails/1726003342NGqnI4Hv.jpg', NULL, NULL, NULL, NULL, NULL, 'test2', 'test2', 123, 12, 'test2', NULL, 'test2', 1, 17, 'test2', NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-10 21:22:22', '2024-10-24 06:03:53', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL),
(600, 'tql4668lMB', 'normal', NULL, 0, 41, 53, 41, '[]', 'metadmin', 'metadmin-tql4668lmb', '1726054799hDJJIQ2J.png', 'assets/images/thumbnails/1726054799hDJJIQ2J.png', NULL, NULL, NULL, NULL, NULL, 'سيبتخسب', 'سيبلسيل', 2000, 1, 'admin', 2, 'admin', 1, 7, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://ealanatek.site/admin/products/physical/create', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-11 11:39:59', '2024-10-24 00:59:02', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, '459'),
(615, 'HK891310rO', 'normal', NULL, 175, 48, 60, 48, '[]', 'Asasas', 'Asasas-hk891310ro', '1726069210HDDvJ3Z8.png', 'assets/images/thumbnails/1726069210HDDvJ3Z8.png', NULL, NULL, NULL, NULL, NULL, 'يبيببب', 'بببببببببب', 4444, 2, 'ggg', NULL, 'gggg', 1, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-11 15:40:10', '2024-10-22 23:18:58', 0, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(653, NULL, 'normal', NULL, 238, 45, 57, 45, NULL, 'msn', 'ILLD5IRQ2O', '1727005389Pj04auUC.jpg', 'assets/images/thumbnails/1727005389Pj04auUC.jpg', NULL, NULL, NULL, NULL, NULL, 'مسن', 'مسن', 1066, 1000, 'mann', NULL, 'maiowk', 1, 8, NULL, NULL, NULL, 0, '10', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-09-22 11:43:09', '2024-10-23 20:40:30', 0, NULL, NULL, NULL, 0, 0, 0, '6', NULL, NULL, 1, NULL),
(658, 'BC074070V7', 'normal', NULL, 200, 43, 55, 43, NULL, 'azrar pen', 'azrar-pen-bc074070v7', '17278775284S7tXL3p.png', 'assets/images/thumbnails/17278775284S7tXL3p.png', NULL, 'S,L', '1,1', '0,0', '#e23c3c,#e23c3c', 'قلم ازرار', 'قلم ازرار', 1000, 999, 'azrar pen', NULL, 'azrar pen', 1, 5, 'azrar', NULL, NULL, 2, '23', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-10-02 13:58:48', '2024-10-20 16:51:27', 0, NULL, '23', '3', 1, 0, 1, '3', '#e23c3c,#60e7a3', 'S,L', 1, '[\"462\"]'),
(667, 'jLk79991dq', 'normal', NULL, 200, 42, NULL, 41, NULL, 'admssss', 'admssss-jlk79991dq', '1729078047fBju4UBS.png', '1729078047kOCoIqPL.jpg', NULL, NULL, NULL, NULL, NULL, 'admssss', 'admssss', 55, 4, 'admssss', NULL, 'admssss', 1, 3, 'admssss', NULL, NULL, 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-10-16 11:27:27', '2024-10-22 09:30:14', 0, NULL, NULL, NULL, 0, 0, 1, '2', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

DROP TABLE IF EXISTS `product_clicks`;
CREATE TABLE IF NOT EXISTS `product_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2297 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 175, '2024-05-19'),
(2, 178, '2024-05-19'),
(3, 381, '2024-05-20'),
(4, 381, '2024-05-20'),
(5, 385, '2024-05-20'),
(6, 384, '2024-05-20'),
(7, 118, '2024-05-20'),
(8, 163, '2024-05-22'),
(9, 163, '2024-05-22'),
(15, 178, '2024-06-02'),
(19, 384, '2024-06-02'),
(20, 170, '2024-06-03'),
(21, 175, '2024-06-03'),
(22, 168, '2024-06-03'),
(23, 170, '2024-06-03'),
(24, 164, '2024-06-03'),
(25, 168, '2024-06-03'),
(26, 385, '2024-06-03'),
(27, 168, '2024-06-04'),
(28, 170, '2024-06-04'),
(29, 175, '2024-06-04'),
(30, 170, '2024-06-04'),
(31, 160, '2024-06-04'),
(32, 170, '2024-06-05'),
(33, 175, '2024-06-05'),
(34, 170, '2024-06-05'),
(35, 170, '2024-06-05'),
(36, 178, '2024-06-05'),
(37, 169, '2024-06-05'),
(38, 160, '2024-06-05'),
(39, 128, '2024-06-05'),
(40, 144, '2024-06-05'),
(41, 95, '2024-06-05'),
(42, 119, '2024-06-05'),
(43, 175, '2024-06-05'),
(44, 121, '2024-06-05'),
(45, 120, '2024-06-05'),
(46, 119, '2024-06-05'),
(47, 178, '2024-06-05'),
(48, 164, '2024-06-05'),
(50, 128, '2024-06-05'),
(51, 161, '2024-06-05'),
(52, 159, '2024-06-05'),
(53, 165, '2024-06-05'),
(54, 384, '2024-06-05'),
(56, 163, '2024-06-05'),
(57, 170, '2024-06-05'),
(58, 122, '2024-06-05'),
(59, 160, '2024-06-05'),
(60, 120, '2024-06-05'),
(61, 169, '2024-06-05'),
(62, 168, '2024-06-05'),
(63, 128, '2024-06-05'),
(64, 170, '2024-06-05'),
(65, 175, '2024-06-05'),
(66, 388, '2024-06-05'),
(67, 164, '2024-06-05'),
(68, 170, '2024-06-06'),
(69, 388, '2024-06-06'),
(70, 170, '2024-06-06'),
(71, 168, '2024-06-07'),
(72, 384, '2024-06-08'),
(75, 175, '2024-06-08'),
(76, 384, '2024-06-08'),
(77, 161, '2024-06-08'),
(78, 159, '2024-06-08'),
(79, 168, '2024-06-08'),
(80, 128, '2024-06-08'),
(81, 170, '2024-06-08'),
(82, 160, '2024-06-08'),
(83, 164, '2024-06-08'),
(84, 144, '2024-06-08'),
(85, 119, '2024-06-08'),
(86, 120, '2024-06-08'),
(87, 121, '2024-06-08'),
(88, 122, '2024-06-08'),
(89, 95, '2024-06-08'),
(90, 178, '2024-06-08'),
(91, 169, '2024-06-08'),
(92, 163, '2024-06-08'),
(93, 165, '2024-06-08'),
(94, 384, '2024-06-09'),
(95, 385, '2024-06-09'),
(96, 175, '2024-06-09'),
(97, 170, '2024-06-09'),
(98, 384, '2024-06-09'),
(99, 175, '2024-06-09'),
(100, 175, '2024-06-09'),
(101, 388, '2024-06-09'),
(102, 116, '2024-06-09'),
(103, 117, '2024-06-09'),
(104, 118, '2024-06-09'),
(105, 168, '2024-06-09'),
(106, 168, '2024-06-09'),
(107, 381, '2024-06-09'),
(109, 161, '2024-06-09'),
(110, 381, '2024-06-09'),
(111, 175, '2024-06-09'),
(112, 384, '2024-06-09'),
(113, 170, '2024-06-09'),
(114, 175, '2024-06-09'),
(115, 175, '2024-06-09'),
(116, 175, '2024-06-09'),
(117, 384, '2024-06-09'),
(118, 168, '2024-06-09'),
(119, 175, '2024-06-09'),
(120, 170, '2024-06-09'),
(121, 175, '2024-06-09'),
(122, 384, '2024-06-09'),
(123, 160, '2024-06-10'),
(124, 161, '2024-06-10'),
(125, 164, '2024-06-10'),
(126, 161, '2024-06-10'),
(127, 168, '2024-06-10'),
(128, 164, '2024-06-10'),
(129, 175, '2024-06-10'),
(130, 170, '2024-06-10'),
(131, 175, '2024-06-10'),
(132, 161, '2024-06-10'),
(133, 160, '2024-06-10'),
(134, 159, '2024-06-10'),
(136, 175, '2024-06-10'),
(137, 385, '2024-06-10'),
(138, 175, '2024-06-10'),
(139, 385, '2024-06-10'),
(140, 164, '2024-06-10'),
(141, 385, '2024-06-10'),
(142, 161, '2024-06-11'),
(143, 160, '2024-06-11'),
(144, 160, '2024-06-11'),
(145, 160, '2024-06-11'),
(146, 164, '2024-06-11'),
(147, 168, '2024-06-11'),
(148, 388, '2024-06-11'),
(149, 387, '2024-06-11'),
(150, 381, '2024-06-11'),
(151, 384, '2024-06-11'),
(152, 160, '2024-06-11'),
(153, 164, '2024-06-11'),
(155, 175, '2024-06-11'),
(156, 144, '2024-06-11'),
(160, 163, '2024-06-11'),
(161, 163, '2024-06-11'),
(163, 385, '2024-06-11'),
(165, 128, '2024-06-11'),
(166, 163, '2024-06-11'),
(168, 170, '2024-06-11'),
(170, 161, '2024-06-11'),
(171, 388, '2024-06-11'),
(172, 387, '2024-06-11'),
(173, 175, '2024-06-11'),
(174, 144, '2024-06-11'),
(175, 178, '2024-06-11'),
(176, 161, '2024-06-12'),
(178, 161, '2024-06-12'),
(179, 159, '2024-06-12'),
(180, 170, '2024-06-12'),
(181, 163, '2024-06-12'),
(183, 144, '2024-06-12'),
(184, 144, '2024-06-12'),
(185, 161, '2024-06-12'),
(186, 159, '2024-06-12'),
(187, 384, '2024-06-12'),
(188, 384, '2024-06-13'),
(189, 120, '2024-06-13'),
(190, 121, '2024-06-14'),
(191, 119, '2024-06-14'),
(192, 161, '2024-06-14'),
(193, 160, '2024-06-14'),
(194, 161, '2024-06-14'),
(195, 385, '2024-06-14'),
(196, 169, '2024-06-14'),
(197, 165, '2024-06-14'),
(198, 95, '2024-06-14'),
(201, 122, '2024-06-14'),
(202, 384, '2024-06-14'),
(203, 175, '2024-06-15'),
(204, 168, '2024-06-15'),
(205, 119, '2024-06-15'),
(206, 175, '2024-06-15'),
(207, 384, '2024-06-15'),
(208, 384, '2024-06-15'),
(209, 384, '2024-06-15'),
(210, 168, '2024-06-15'),
(211, 170, '2024-06-15'),
(212, 164, '2024-06-15'),
(213, 144, '2024-06-15'),
(214, 385, '2024-06-15'),
(215, 392, '2024-06-15'),
(216, 385, '2024-06-15'),
(217, 170, '2024-06-15'),
(218, 170, '2024-06-15'),
(219, 385, '2024-06-15'),
(220, 385, '2024-06-15'),
(221, 385, '2024-06-15'),
(222, 161, '2024-06-15'),
(223, 168, '2024-06-16'),
(224, 175, '2024-06-16'),
(225, 384, '2024-06-16'),
(226, 175, '2024-06-16'),
(229, 159, '2024-06-16'),
(230, 161, '2024-06-16'),
(231, 160, '2024-06-16'),
(232, 159, '2024-06-16'),
(234, 178, '2024-06-16'),
(235, 170, '2024-06-16'),
(236, 117, '2024-06-16'),
(237, 118, '2024-06-16'),
(238, 116, '2024-06-16'),
(239, 175, '2024-06-17'),
(240, 384, '2024-06-17'),
(241, 175, '2024-06-17'),
(243, 95, '2024-06-17'),
(244, 170, '2024-06-17'),
(245, 144, '2024-06-18'),
(248, 384, '2024-06-19'),
(250, 161, '2024-06-19'),
(251, 168, '2024-06-19'),
(252, 170, '2024-06-19'),
(253, 160, '2024-06-19'),
(254, 164, '2024-06-19'),
(255, 159, '2024-06-19'),
(256, 175, '2024-06-19'),
(257, 128, '2024-06-19'),
(258, 384, '2024-06-19'),
(260, 384, '2024-06-19'),
(261, 144, '2024-06-19'),
(262, 122, '2024-06-19'),
(263, 121, '2024-06-19'),
(264, 163, '2024-06-19'),
(265, 169, '2024-06-19'),
(266, 165, '2024-06-19'),
(267, 120, '2024-06-19'),
(268, 178, '2024-06-19'),
(269, 95, '2024-06-19'),
(270, 387, '2024-06-19'),
(272, 384, '2024-06-21'),
(273, 119, '2024-06-21'),
(274, 384, '2024-06-21'),
(275, 119, '2024-06-21'),
(276, 170, '2024-06-21'),
(278, 384, '2024-06-22'),
(279, 170, '2024-06-22'),
(280, 385, '2024-06-22'),
(281, 384, '2024-06-22'),
(282, 170, '2024-06-22'),
(283, 175, '2024-06-22'),
(285, 384, '2024-06-22'),
(286, 384, '2024-06-22'),
(288, 144, '2024-06-22'),
(289, 387, '2024-06-22'),
(290, 384, '2024-06-23'),
(291, 175, '2024-06-23'),
(292, 168, '2024-06-23'),
(293, 175, '2024-06-23'),
(294, 175, '2024-06-23'),
(295, 159, '2024-06-23'),
(296, 168, '2024-06-23'),
(297, 175, '2024-06-23'),
(298, 170, '2024-06-23'),
(299, 381, '2024-06-23'),
(300, 163, '2024-06-23'),
(301, 170, '2024-06-23'),
(302, 384, '2024-06-23'),
(303, 161, '2024-06-23'),
(304, 164, '2024-06-23'),
(305, 168, '2024-06-23'),
(306, 160, '2024-06-23'),
(307, 389, '2024-06-23'),
(308, 175, '2024-06-23'),
(310, 163, '2024-06-23'),
(311, 128, '2024-06-23'),
(313, 164, '2024-06-23'),
(314, 161, '2024-06-23'),
(315, 388, '2024-06-23'),
(316, 168, '2024-06-23'),
(317, 175, '2024-06-23'),
(318, 175, '2024-06-23'),
(319, 175, '2024-06-23'),
(320, 161, '2024-06-24'),
(321, 160, '2024-06-24'),
(322, 164, '2024-06-24'),
(323, 175, '2024-06-24'),
(324, 170, '2024-06-24'),
(325, 384, '2024-06-24'),
(326, 385, '2024-06-24'),
(327, 164, '2024-06-25'),
(328, 175, '2024-06-25'),
(329, 175, '2024-06-25'),
(330, 175, '2024-06-25'),
(332, 384, '2024-06-25'),
(333, 160, '2024-06-25'),
(334, 395, '2024-06-25'),
(335, 175, '2024-06-25'),
(336, 170, '2024-06-25'),
(337, 384, '2024-06-25'),
(338, 384, '2024-06-25'),
(339, 160, '2024-06-25'),
(340, 159, '2024-06-25'),
(341, 168, '2024-06-25'),
(342, 164, '2024-06-25'),
(344, 164, '2024-06-26'),
(345, 165, '2024-06-26'),
(346, 169, '2024-06-26'),
(347, 385, '2024-06-26'),
(348, 392, '2024-06-26'),
(349, 120, '2024-06-26'),
(350, 121, '2024-06-26'),
(351, 122, '2024-06-26'),
(352, 119, '2024-06-26'),
(353, 170, '2024-06-26'),
(355, 161, '2024-06-27'),
(356, 164, '2024-06-27'),
(357, 161, '2024-06-27'),
(358, 122, '2024-06-27'),
(359, 121, '2024-06-27'),
(360, 120, '2024-06-27'),
(361, 119, '2024-06-27'),
(362, 118, '2024-06-27'),
(363, 117, '2024-06-27'),
(364, 116, '2024-06-27'),
(365, 95, '2024-06-27'),
(366, 122, '2024-06-27'),
(367, 121, '2024-06-27'),
(368, 122, '2024-06-27'),
(370, 161, '2024-06-27'),
(371, 95, '2024-06-27'),
(372, 116, '2024-06-27'),
(373, 118, '2024-06-27'),
(374, 384, '2024-06-27'),
(375, 170, '2024-06-27'),
(376, 384, '2024-06-27'),
(379, 384, '2024-06-29'),
(380, 175, '2024-06-29'),
(381, 384, '2024-06-29'),
(382, 384, '2024-06-29'),
(384, 168, '2024-06-29'),
(385, 161, '2024-06-29'),
(386, 170, '2024-06-29'),
(387, 160, '2024-06-29'),
(388, 164, '2024-06-29'),
(389, 159, '2024-06-29'),
(390, 128, '2024-06-29'),
(391, 175, '2024-06-29'),
(392, 384, '2024-06-29'),
(395, 385, '2024-06-29'),
(396, 381, '2024-06-29'),
(397, 144, '2024-06-29'),
(398, 122, '2024-06-29'),
(399, 121, '2024-06-29'),
(400, 163, '2024-06-29'),
(401, 165, '2024-06-29'),
(402, 120, '2024-06-29'),
(403, 178, '2024-06-29'),
(404, 95, '2024-06-29'),
(405, 169, '2024-06-29'),
(406, 121, '2024-06-29'),
(407, 168, '2024-06-29'),
(408, 178, '2024-06-29'),
(410, 116, '2024-06-29'),
(411, 389, '2024-06-29'),
(412, 392, '2024-06-29'),
(414, 395, '2024-06-29'),
(415, 117, '2024-06-29'),
(418, 118, '2024-06-29'),
(419, 95, '2024-06-29'),
(420, 119, '2024-06-29'),
(421, 388, '2024-06-29'),
(422, 384, '2024-06-30'),
(423, 175, '2024-06-30'),
(424, 384, '2024-06-30'),
(425, 384, '2024-06-30'),
(426, 116, '2024-06-30'),
(427, 117, '2024-06-30'),
(428, 118, '2024-06-30'),
(430, 384, '2024-06-30'),
(431, 388, '2024-06-30'),
(432, 116, '2024-06-30'),
(433, 384, '2024-06-30'),
(434, 385, '2024-06-30'),
(435, 381, '2024-06-30'),
(436, 170, '2024-07-01'),
(437, 170, '2024-07-01'),
(438, 384, '2024-07-01'),
(439, 160, '2024-07-02'),
(440, 168, '2024-07-02'),
(441, 164, '2024-07-02'),
(442, 175, '2024-07-02'),
(443, 395, '2024-07-02'),
(444, 384, '2024-07-02'),
(445, 178, '2024-07-02'),
(446, 384, '2024-07-02'),
(448, 388, '2024-07-02'),
(449, 392, '2024-07-02'),
(450, 398, '2024-07-02'),
(451, 175, '2024-07-02'),
(453, 170, '2024-07-03'),
(454, 119, '2024-07-03'),
(455, 384, '2024-07-03'),
(456, 164, '2024-07-03'),
(457, 175, '2024-07-04'),
(458, 165, '2024-07-04'),
(459, 161, '2024-07-04'),
(460, 163, '2024-07-04'),
(461, 384, '2024-07-04'),
(463, 95, '2024-07-04'),
(464, 170, '2024-07-04'),
(465, 144, '2024-07-04'),
(466, 389, '2024-07-04'),
(467, 384, '2024-07-04'),
(468, 128, '2024-07-04'),
(470, 388, '2024-07-04'),
(471, 387, '2024-07-04'),
(472, 159, '2024-07-04'),
(473, 395, '2024-07-04'),
(474, 120, '2024-07-05'),
(476, 392, '2024-07-05'),
(477, 175, '2024-07-05'),
(478, 175, '2024-07-05'),
(479, 163, '2024-07-06'),
(480, 168, '2024-07-06'),
(481, 385, '2024-07-08'),
(482, 95, '2024-07-08'),
(483, 169, '2024-07-08'),
(485, 159, '2024-07-08'),
(486, 384, '2024-07-08'),
(487, 175, '2024-07-08'),
(488, 175, '2024-07-08'),
(489, 175, '2024-07-08'),
(490, 384, '2024-07-08'),
(491, 175, '2024-07-08'),
(492, 175, '2024-07-08'),
(493, 397, '2024-07-08'),
(494, 384, '2024-07-08'),
(495, 175, '2024-07-08'),
(496, 175, '2024-07-08'),
(497, 175, '2024-07-08'),
(498, 175, '2024-07-08'),
(499, 175, '2024-07-08'),
(500, 164, '2024-07-08'),
(501, 384, '2024-07-08'),
(502, 175, '2024-07-08'),
(503, 168, '2024-07-08'),
(504, 170, '2024-07-08'),
(505, 175, '2024-07-09'),
(507, 384, '2024-07-09'),
(508, 175, '2024-07-09'),
(509, 175, '2024-07-09'),
(510, 175, '2024-07-09'),
(511, 175, '2024-07-09'),
(512, 175, '2024-07-09'),
(513, 175, '2024-07-09'),
(514, 175, '2024-07-09'),
(515, 175, '2024-07-09'),
(516, 120, '2024-07-09'),
(517, 121, '2024-07-09'),
(518, 392, '2024-07-09'),
(519, 385, '2024-07-09'),
(520, 119, '2024-07-09'),
(521, 122, '2024-07-09'),
(522, 175, '2024-07-09'),
(524, 381, '2024-07-10'),
(525, 165, '2024-07-10'),
(528, 384, '2024-07-10'),
(529, 170, '2024-07-10'),
(530, 160, '2024-07-10'),
(531, 399, '2024-07-10'),
(534, 404, '2024-07-10'),
(535, 170, '2024-07-10'),
(536, 385, '2024-07-10'),
(537, 170, '2024-07-10'),
(538, 159, '2024-07-10'),
(539, 404, '2024-07-10'),
(540, 404, '2024-07-10'),
(541, 404, '2024-07-10'),
(542, 404, '2024-07-10'),
(543, 397, '2024-07-10'),
(544, 388, '2024-07-10'),
(545, 384, '2024-07-10'),
(546, 384, '2024-07-10'),
(547, 170, '2024-07-10'),
(548, 170, '2024-07-10'),
(550, 175, '2024-07-10'),
(551, 169, '2024-07-10'),
(552, 384, '2024-07-10'),
(553, 384, '2024-07-10'),
(555, 404, '2024-07-10'),
(556, 161, '2024-07-10'),
(558, 160, '2024-07-10'),
(559, 168, '2024-07-10'),
(560, 170, '2024-07-10'),
(561, 164, '2024-07-10'),
(562, 175, '2024-07-10'),
(563, 128, '2024-07-10'),
(565, 397, '2024-07-10'),
(566, 387, '2024-07-11'),
(567, 160, '2024-07-11'),
(568, 128, '2024-07-11'),
(569, 404, '2024-07-11'),
(570, 159, '2024-07-11'),
(571, 384, '2024-07-11'),
(572, 384, '2024-07-11'),
(573, 381, '2024-07-11'),
(574, 385, '2024-07-11'),
(575, 385, '2024-07-11'),
(576, 384, '2024-07-11'),
(577, 385, '2024-07-11'),
(578, 385, '2024-07-11'),
(579, 175, '2024-07-11'),
(580, 405, '2024-07-11'),
(582, 175, '2024-07-11'),
(583, 400, '2024-07-11'),
(584, 392, '2024-07-11'),
(585, 384, '2024-07-11'),
(586, 175, '2024-07-11'),
(588, 169, '2024-07-11'),
(589, 164, '2024-07-11'),
(590, 165, '2024-07-11'),
(591, 160, '2024-07-11'),
(592, 163, '2024-07-11'),
(593, 170, '2024-07-11'),
(595, 168, '2024-07-11'),
(596, 159, '2024-07-11'),
(597, 384, '2024-07-11'),
(598, 178, '2024-07-11'),
(599, 175, '2024-07-11'),
(600, 144, '2024-07-11'),
(601, 161, '2024-07-11'),
(602, 404, '2024-07-11'),
(603, 397, '2024-07-11'),
(604, 388, '2024-07-11'),
(606, 128, '2024-07-11'),
(607, 387, '2024-07-11'),
(608, 385, '2024-07-11'),
(609, 398, '2024-07-11'),
(610, 381, '2024-07-11'),
(613, 399, '2024-07-11'),
(614, 401, '2024-07-11'),
(615, 405, '2024-07-11'),
(616, 400, '2024-07-11'),
(617, 122, '2024-07-11'),
(618, 121, '2024-07-11'),
(619, 120, '2024-07-11'),
(620, 118, '2024-07-11'),
(621, 117, '2024-07-11'),
(622, 119, '2024-07-11'),
(623, 392, '2024-07-12'),
(624, 389, '2024-07-12'),
(625, 395, '2024-07-12'),
(626, 122, '2024-07-12'),
(627, 95, '2024-07-12'),
(628, 116, '2024-07-12'),
(629, 401, '2024-07-12'),
(630, 399, '2024-07-12'),
(632, 384, '2024-07-12'),
(633, 384, '2024-07-12'),
(634, 384, '2024-07-12'),
(635, 384, '2024-07-12'),
(636, 384, '2024-07-12'),
(637, 384, '2024-07-12'),
(638, 384, '2024-07-12'),
(639, 384, '2024-07-12'),
(640, 384, '2024-07-12'),
(641, 384, '2024-07-12'),
(642, 384, '2024-07-12'),
(644, 384, '2024-07-12'),
(645, 384, '2024-07-12'),
(646, 384, '2024-07-12'),
(647, 384, '2024-07-12'),
(648, 165, '2024-07-12'),
(649, 170, '2024-07-12'),
(650, 121, '2024-07-12'),
(651, 164, '2024-07-12'),
(652, 128, '2024-07-12'),
(653, 159, '2024-07-12'),
(654, 175, '2024-07-12'),
(656, 398, '2024-07-12'),
(657, 175, '2024-07-12'),
(658, 388, '2024-07-12'),
(659, 164, '2024-07-12'),
(660, 401, '2024-07-12'),
(661, 387, '2024-07-12'),
(662, 384, '2024-07-12'),
(663, 384, '2024-07-12'),
(664, 384, '2024-07-12'),
(665, 384, '2024-07-12'),
(666, 384, '2024-07-12'),
(667, 384, '2024-07-12'),
(668, 384, '2024-07-12'),
(669, 384, '2024-07-12'),
(670, 384, '2024-07-12'),
(671, 384, '2024-07-12'),
(672, 384, '2024-07-12'),
(673, 384, '2024-07-12'),
(674, 384, '2024-07-12'),
(675, 384, '2024-07-12'),
(676, 384, '2024-07-12'),
(677, 384, '2024-07-12'),
(678, 384, '2024-07-12'),
(679, 384, '2024-07-12'),
(680, 384, '2024-07-12'),
(681, 384, '2024-07-12'),
(682, 384, '2024-07-12'),
(683, 384, '2024-07-12'),
(684, 384, '2024-07-12'),
(686, 384, '2024-07-12'),
(687, 384, '2024-07-12'),
(688, 384, '2024-07-12'),
(689, 384, '2024-07-12'),
(690, 175, '2024-07-12'),
(692, 384, '2024-07-12'),
(694, 170, '2024-07-12'),
(695, 170, '2024-07-12'),
(696, 169, '2024-07-12'),
(697, 169, '2024-07-12'),
(698, 404, '2024-07-12'),
(699, 120, '2024-07-12'),
(700, 161, '2024-07-12'),
(701, 178, '2024-07-12'),
(702, 385, '2024-07-12'),
(703, 116, '2024-07-12'),
(704, 95, '2024-07-12'),
(706, 144, '2024-07-12'),
(707, 118, '2024-07-12'),
(708, 404, '2024-07-12'),
(709, 144, '2024-07-13'),
(710, 160, '2024-07-13'),
(711, 117, '2024-07-13'),
(712, 168, '2024-07-13'),
(713, 160, '2024-07-13'),
(714, 95, '2024-07-13'),
(715, 404, '2024-07-13'),
(716, 163, '2024-07-13'),
(718, 384, '2024-07-13'),
(719, 165, '2024-07-13'),
(721, 159, '2024-07-13'),
(722, 168, '2024-07-13'),
(723, 409, '2024-07-13'),
(724, 165, '2024-07-13'),
(725, 418, '2024-07-13'),
(726, 128, '2024-07-13'),
(727, 404, '2024-07-13'),
(730, 413, '2024-07-13'),
(731, 413, '2024-07-13'),
(733, 164, '2024-07-13'),
(734, 169, '2024-07-13'),
(735, 413, '2024-07-13'),
(737, 178, '2024-07-14'),
(738, 168, '2024-07-14'),
(740, 170, '2024-07-14'),
(741, 170, '2024-07-14'),
(742, 175, '2024-07-14'),
(743, 164, '2024-07-14'),
(744, 384, '2024-07-14'),
(745, 161, '2024-07-14'),
(746, 165, '2024-07-14'),
(747, 175, '2024-07-14'),
(748, 175, '2024-07-14'),
(750, 175, '2024-07-14'),
(751, 175, '2024-07-14'),
(756, 163, '2024-07-14'),
(757, 165, '2024-07-14'),
(758, 163, '2024-07-15'),
(759, 389, '2024-07-15'),
(760, 390, '2024-07-15'),
(761, 393, '2024-07-15'),
(762, 165, '2024-07-15'),
(763, 386, '2024-07-15'),
(764, 169, '2024-07-15'),
(765, 164, '2024-07-15'),
(766, 402, '2024-07-15'),
(769, 399, '2024-07-15'),
(770, 175, '2024-07-15'),
(771, 170, '2024-07-15'),
(772, 170, '2024-07-15'),
(773, 170, '2024-07-15'),
(774, 170, '2024-07-15'),
(775, 170, '2024-07-15'),
(776, 384, '2024-07-15'),
(777, 170, '2024-07-15'),
(778, 170, '2024-07-15'),
(779, 170, '2024-07-15'),
(780, 170, '2024-07-15'),
(781, 170, '2024-07-15'),
(782, 170, '2024-07-15'),
(783, 170, '2024-07-15'),
(784, 170, '2024-07-15'),
(785, 170, '2024-07-15'),
(786, 170, '2024-07-15'),
(787, 170, '2024-07-15'),
(788, 170, '2024-07-15'),
(789, 170, '2024-07-15'),
(790, 170, '2024-07-15'),
(791, 170, '2024-07-15'),
(792, 170, '2024-07-15'),
(793, 170, '2024-07-15'),
(794, 170, '2024-07-15'),
(795, 170, '2024-07-15'),
(796, 170, '2024-07-15'),
(797, 170, '2024-07-15'),
(798, 170, '2024-07-15'),
(799, 170, '2024-07-15'),
(800, 170, '2024-07-15'),
(801, 170, '2024-07-15'),
(802, 170, '2024-07-15'),
(803, 170, '2024-07-15'),
(804, 170, '2024-07-15'),
(805, 170, '2024-07-15'),
(806, 170, '2024-07-15'),
(807, 175, '2024-07-15'),
(808, 175, '2024-07-15'),
(809, 170, '2024-07-15'),
(811, 170, '2024-07-15'),
(812, 170, '2024-07-15'),
(813, 170, '2024-07-15'),
(814, 170, '2024-07-15'),
(815, 175, '2024-07-15'),
(816, 170, '2024-07-15'),
(817, 175, '2024-07-15'),
(818, 170, '2024-07-15'),
(819, 170, '2024-07-15'),
(820, 175, '2024-07-15'),
(821, 170, '2024-07-15'),
(822, 170, '2024-07-15'),
(823, 170, '2024-07-15'),
(824, 170, '2024-07-15'),
(825, 170, '2024-07-15'),
(826, 170, '2024-07-15'),
(827, 170, '2024-07-15'),
(828, 170, '2024-07-15'),
(829, 170, '2024-07-15'),
(830, 170, '2024-07-15'),
(831, 170, '2024-07-15'),
(832, 170, '2024-07-15'),
(833, 170, '2024-07-15'),
(834, 170, '2024-07-15'),
(835, 170, '2024-07-15'),
(836, 175, '2024-07-15'),
(837, 170, '2024-07-15'),
(838, 170, '2024-07-15'),
(839, 170, '2024-07-15'),
(840, 175, '2024-07-15'),
(841, 170, '2024-07-15'),
(842, 398, '2024-07-15'),
(843, 170, '2024-07-15'),
(844, 423, '2024-07-15'),
(845, 423, '2024-07-15'),
(848, 384, '2024-07-15'),
(852, 175, '2024-07-15'),
(853, 428, '2024-07-15'),
(854, 427, '2024-07-15'),
(855, 427, '2024-07-15'),
(856, 164, '2024-07-15'),
(857, 169, '2024-07-15'),
(858, 396, '2024-07-15'),
(859, 407, '2024-07-15'),
(860, 408, '2024-07-15'),
(861, 404, '2024-07-15'),
(862, 413, '2024-07-16'),
(863, 422, '2024-07-16'),
(864, 427, '2024-07-16'),
(865, 159, '2024-07-16'),
(866, 427, '2024-07-16'),
(867, 170, '2024-07-16'),
(868, 170, '2024-07-16'),
(869, 170, '2024-07-16'),
(870, 159, '2024-07-16'),
(871, 408, '2024-07-16'),
(872, 407, '2024-07-16'),
(873, 428, '2024-07-16'),
(874, 159, '2024-07-16'),
(875, 159, '2024-07-16'),
(876, 396, '2024-07-16'),
(877, 386, '2024-07-16'),
(878, 164, '2024-07-16'),
(879, 95, '2024-07-16'),
(880, 168, '2024-07-16'),
(881, 175, '2024-07-17'),
(882, 388, '2024-07-17'),
(883, 168, '2024-07-17'),
(884, 168, '2024-07-17'),
(885, 122, '2024-07-17'),
(886, 385, '2024-07-17'),
(887, 381, '2024-07-17'),
(888, 408, '2024-07-17'),
(889, 420, '2024-07-17'),
(890, 421, '2024-07-17'),
(891, 411, '2024-07-17'),
(892, 418, '2024-07-17'),
(893, 417, '2024-07-17'),
(894, 423, '2024-07-17'),
(895, 387, '2024-07-18'),
(896, 389, '2024-07-18'),
(897, 393, '2024-07-18'),
(898, 391, '2024-07-18'),
(899, 392, '2024-07-18'),
(900, 390, '2024-07-18'),
(901, 398, '2024-07-18'),
(902, 395, '2024-07-18'),
(903, 402, '2024-07-18'),
(904, 400, '2024-07-18'),
(905, 405, '2024-07-18'),
(906, 401, '2024-07-18'),
(907, 399, '2024-07-18'),
(908, 409, '2024-07-18'),
(909, 410, '2024-07-18'),
(910, 121, '2024-07-18'),
(911, 175, '2024-07-18'),
(912, 120, '2024-07-18'),
(913, 168, '2024-07-18'),
(914, 407, '2024-07-18'),
(915, 119, '2024-07-18'),
(916, 413, '2024-07-18'),
(917, 168, '2024-07-18'),
(918, 164, '2024-07-18'),
(919, 178, '2024-07-18'),
(920, 178, '2024-07-18'),
(921, 433, '2024-07-24'),
(922, 433, '2024-07-24'),
(923, 433, '2024-07-24'),
(924, 433, '2024-07-24'),
(925, 433, '2024-07-24'),
(926, 433, '2024-07-24'),
(927, 433, '2024-07-24'),
(928, 429, '2024-07-24'),
(929, 434, '2024-07-24'),
(930, 433, '2024-07-24'),
(931, 398, '2024-07-24'),
(933, 433, '2024-07-24'),
(934, 398, '2024-07-24'),
(935, 433, '2024-07-24'),
(936, 433, '2024-07-24'),
(937, 433, '2024-07-24'),
(938, 433, '2024-07-24'),
(939, 433, '2024-07-24'),
(940, 398, '2024-07-24'),
(942, 433, '2024-07-24'),
(943, 435, '2024-07-24'),
(944, 435, '2024-07-24'),
(945, 435, '2024-07-24'),
(946, 434, '2024-07-24'),
(947, 435, '2024-07-24'),
(948, 168, '2024-07-24'),
(949, 435, '2024-07-24'),
(950, 435, '2024-07-24'),
(951, 435, '2024-07-24'),
(993, 575, '2024-08-15'),
(994, 575, '2024-08-15'),
(1286, 455, '2024-08-16'),
(1287, 455, '2024-08-16'),
(1288, 460, '2024-08-16'),
(1289, 465, '2024-08-16'),
(1290, 466, '2024-08-16'),
(1291, 465, '2024-08-16'),
(1292, 466, '2024-08-16'),
(1293, 465, '2024-08-16'),
(1294, 465, '2024-08-16'),
(1295, 466, '2024-08-16'),
(1296, 466, '2024-08-16'),
(1297, 465, '2024-08-16'),
(1298, 465, '2024-08-16'),
(1299, 465, '2024-08-16'),
(1300, 466, '2024-08-16'),
(1301, 465, '2024-08-16'),
(1302, 465, '2024-08-16'),
(1303, 465, '2024-08-16'),
(1304, 465, '2024-08-16'),
(1305, 465, '2024-08-16'),
(1306, 465, '2024-08-16'),
(1307, 465, '2024-08-16'),
(1308, 465, '2024-08-16'),
(1309, 465, '2024-08-16'),
(1310, 465, '2024-08-16'),
(1311, 465, '2024-08-17'),
(1312, 465, '2024-08-17'),
(1313, 465, '2024-08-17'),
(1314, 465, '2024-08-17'),
(1315, 465, '2024-08-17'),
(1316, 465, '2024-08-17'),
(1317, 465, '2024-08-17'),
(1318, 465, '2024-08-17'),
(1320, 466, '2024-08-17'),
(1321, 465, '2024-08-17'),
(1322, 465, '2024-08-17'),
(1323, 465, '2024-08-17'),
(1324, 457, '2024-08-17'),
(1326, 457, '2024-08-17'),
(1402, 455, '2024-08-17'),
(1415, 465, '2024-08-17'),
(1416, 465, '2024-08-17'),
(1417, 455, '2024-08-17'),
(1418, 455, '2024-08-17'),
(1419, 456, '2024-08-17'),
(1420, 455, '2024-08-17'),
(1421, 458, '2024-08-17'),
(1423, 455, '2024-08-17'),
(1424, 465, '2024-08-17'),
(1425, 459, '2024-08-17'),
(1434, 466, '2024-08-18'),
(1447, 458, '2024-08-18'),
(1448, 455, '2024-08-18'),
(1450, 456, '2024-08-19'),
(1452, 466, '2024-08-19'),
(1453, 462, '2024-08-19'),
(1459, 459, '2024-08-19'),
(1460, 465, '2024-08-19'),
(1462, 461, '2024-08-19'),
(1463, 455, '2024-08-19'),
(1464, 458, '2024-08-19'),
(1465, 460, '2024-08-19'),
(1466, 457, '2024-08-19'),
(1468, 456, '2024-08-19'),
(1470, 466, '2024-08-19'),
(1471, 462, '2024-08-19'),
(1477, 459, '2024-08-19'),
(1478, 465, '2024-08-19'),
(1479, 461, '2024-08-19'),
(1480, 455, '2024-08-19'),
(1481, 460, '2024-08-19'),
(1482, 457, '2024-08-19'),
(1483, 458, '2024-08-19'),
(1485, 460, '2024-08-20'),
(1486, 456, '2024-08-20'),
(1488, 465, '2024-08-20'),
(1492, 465, '2024-08-21'),
(1493, 465, '2024-08-21'),
(1496, 457, '2024-08-22'),
(1497, 458, '2024-08-22'),
(1498, 455, '2024-08-22'),
(1499, 465, '2024-08-22'),
(1506, 95, '2024-08-22'),
(1507, 458, '2024-08-23'),
(1510, 465, '2024-08-23'),
(1511, 458, '2024-08-23'),
(1512, 457, '2024-08-23'),
(1513, 456, '2024-08-23'),
(1514, 95, '2024-08-23'),
(1515, 459, '2024-08-24'),
(1517, 455, '2024-08-24'),
(1519, 95, '2024-08-24'),
(1520, 465, '2024-08-24'),
(1521, 466, '2024-08-24'),
(1523, 95, '2024-08-25'),
(1524, 95, '2024-08-25'),
(1530, 95, '2024-08-25'),
(1531, 455, '2024-08-26'),
(1537, 465, '2024-08-27'),
(1538, 465, '2024-08-27'),
(1539, 455, '2024-08-27'),
(1540, 455, '2024-08-27'),
(1541, 456, '2024-08-27'),
(1544, 466, '2024-08-27'),
(1545, 462, '2024-08-27'),
(1550, 459, '2024-08-27'),
(1551, 465, '2024-08-27'),
(1553, 461, '2024-08-27'),
(1554, 455, '2024-08-27'),
(1555, 458, '2024-08-27'),
(1556, 460, '2024-08-27'),
(1559, 95, '2024-08-27'),
(1561, 458, '2024-08-27'),
(1562, 457, '2024-08-27'),
(1563, 458, '2024-08-27'),
(1568, 455, '2024-08-28'),
(1576, 465, '2024-08-28'),
(1578, 465, '2024-08-28'),
(1583, 457, '2024-08-29'),
(1589, 471, '2024-08-30'),
(1590, 471, '2024-08-30'),
(1591, 95, '2024-08-31'),
(1595, 461, '2024-09-02'),
(1596, 95, '2024-09-02'),
(1597, 457, '2024-09-02'),
(1599, 459, '2024-09-02'),
(1600, 462, '2024-09-02'),
(1601, 471, '2024-09-02'),
(1603, 95, '2024-09-03'),
(1604, 471, '2024-09-03'),
(1605, 466, '2024-09-03'),
(1607, 455, '2024-09-03'),
(1610, 466, '2024-09-03'),
(1611, 471, '2024-09-03'),
(1613, 466, '2024-09-03'),
(1616, 466, '2024-09-03'),
(1617, 456, '2024-09-03'),
(1618, 459, '2024-09-03'),
(1619, 466, '2024-09-03'),
(1620, 466, '2024-09-03'),
(1621, 466, '2024-09-03'),
(1623, 466, '2024-09-03'),
(1625, 471, '2024-09-03'),
(1626, 466, '2024-09-03'),
(1628, 459, '2024-09-04'),
(1631, 457, '2024-09-04'),
(1633, 459, '2024-09-05'),
(1634, 459, '2024-09-05'),
(1635, 95, '2024-09-07'),
(1639, 466, '2024-09-07'),
(1641, 455, '2024-09-07'),
(1643, 456, '2024-09-07'),
(1644, 95, '2024-09-07'),
(1645, 458, '2024-09-07'),
(1646, 458, '2024-09-07'),
(1647, 458, '2024-09-07'),
(1648, 460, '2024-09-07'),
(1649, 471, '2024-09-07'),
(1654, 465, '2024-09-07'),
(1656, 465, '2024-09-07'),
(1658, 455, '2024-09-07'),
(1659, 464, '2024-09-07'),
(1661, 580, '2024-09-07'),
(1662, 580, '2024-09-07'),
(1663, 471, '2024-09-07'),
(1664, 580, '2024-09-07'),
(1671, 466, '2024-09-07'),
(1672, 466, '2024-09-07'),
(1673, 462, '2024-09-08'),
(1674, 456, '2024-09-08'),
(1676, 466, '2024-09-08'),
(1677, 459, '2024-09-08'),
(1678, 465, '2024-09-08'),
(1679, 461, '2024-09-08'),
(1680, 458, '2024-09-08'),
(1681, 464, '2024-09-08'),
(1682, 460, '2024-09-08'),
(1683, 457, '2024-09-08'),
(1684, 471, '2024-09-08'),
(1685, 471, '2024-09-08'),
(1686, 471, '2024-09-08'),
(1687, 471, '2024-09-08'),
(1688, 466, '2024-09-08'),
(1689, 464, '2024-09-08'),
(1690, 459, '2024-09-08'),
(1691, 455, '2024-09-08'),
(1692, 456, '2024-09-08'),
(1693, 456, '2024-09-08'),
(1694, 465, '2024-09-08'),
(1695, 457, '2024-09-08'),
(1696, 458, '2024-09-08'),
(1697, 460, '2024-09-08'),
(1698, 460, '2024-09-08'),
(1699, 580, '2024-09-08'),
(1700, 464, '2024-09-08'),
(1701, 455, '2024-09-08'),
(1703, 460, '2024-09-09'),
(1704, 466, '2024-09-09'),
(1705, 590, '2024-09-09'),
(1706, 590, '2024-09-09'),
(1707, 590, '2024-09-09'),
(1708, 590, '2024-09-09'),
(1709, 590, '2024-09-09'),
(1710, 590, '2024-09-09'),
(1711, 590, '2024-09-09'),
(1712, 590, '2024-09-09'),
(1713, 590, '2024-09-09'),
(1714, 590, '2024-09-09'),
(1715, 590, '2024-09-09'),
(1716, 590, '2024-09-09'),
(1717, 590, '2024-09-09'),
(1718, 590, '2024-09-09'),
(1719, 590, '2024-09-09'),
(1720, 590, '2024-09-09'),
(1721, 590, '2024-09-09'),
(1722, 455, '2024-09-09'),
(1723, 591, '2024-09-09'),
(1724, 464, '2024-09-09'),
(1725, 590, '2024-09-09'),
(1726, 590, '2024-09-09'),
(1727, 590, '2024-09-09'),
(1728, 456, '2024-09-09'),
(1729, 457, '2024-09-09'),
(1730, 465, '2024-09-09'),
(1731, 590, '2024-09-09'),
(1732, 465, '2024-09-09'),
(1733, 465, '2024-09-10'),
(1734, 466, '2024-09-10'),
(1735, 591, '2024-09-10'),
(1736, 464, '2024-09-10'),
(1737, 466, '2024-09-10'),
(1738, 591, '2024-09-10'),
(1739, 457, '2024-09-10'),
(1740, 457, '2024-09-10'),
(1741, 471, '2024-09-10'),
(1742, 590, '2024-09-10'),
(1743, 471, '2024-09-10'),
(1744, 580, '2024-09-10'),
(1745, 471, '2024-09-10'),
(1746, 593, '2024-09-10'),
(1747, 593, '2024-09-10'),
(1748, 593, '2024-09-10'),
(1749, 593, '2024-09-10'),
(1750, 594, '2024-09-10'),
(1751, 594, '2024-09-10'),
(1752, 593, '2024-09-10'),
(1753, 590, '2024-09-10'),
(1754, 461, '2024-09-10'),
(1755, 461, '2024-09-10'),
(1756, 590, '2024-09-10'),
(1757, 590, '2024-09-10'),
(1758, 590, '2024-09-10'),
(1759, 590, '2024-09-10'),
(1760, 597, '2024-09-10'),
(1761, 596, '2024-09-10'),
(1762, 597, '2024-09-10'),
(1763, 597, '2024-09-10'),
(1764, 597, '2024-09-10'),
(1765, 597, '2024-09-10'),
(1766, 597, '2024-09-10'),
(1767, 597, '2024-09-10'),
(1768, 597, '2024-09-10'),
(1769, 590, '2024-09-10'),
(1774, 590, '2024-09-10'),
(1775, 471, '2024-09-10'),
(1776, 471, '2024-09-10'),
(1777, 471, '2024-09-10'),
(1778, 471, '2024-09-10'),
(1780, 600, '2024-09-11'),
(1781, 601, '2024-09-11'),
(1782, 601, '2024-09-11'),
(1783, 601, '2024-09-11'),
(1784, 601, '2024-09-11'),
(1785, 600, '2024-09-11'),
(1786, 600, '2024-09-11'),
(1787, 600, '2024-09-11'),
(1788, 600, '2024-09-11'),
(1789, 601, '2024-09-11'),
(1790, 600, '2024-09-11'),
(1791, 601, '2024-09-11'),
(1792, 600, '2024-09-11'),
(1793, 601, '2024-09-11'),
(1794, 601, '2024-09-11'),
(1795, 602, '2024-09-11'),
(1796, 590, '2024-09-11'),
(1797, 602, '2024-09-11'),
(1798, 590, '2024-09-11'),
(1799, 590, '2024-09-11'),
(1800, 590, '2024-09-11'),
(1801, 590, '2024-09-11'),
(1802, 590, '2024-09-11'),
(1803, 471, '2024-09-11'),
(1804, 590, '2024-09-11'),
(1805, 590, '2024-09-11'),
(1806, 590, '2024-09-11'),
(1807, 590, '2024-09-11'),
(1808, 590, '2024-09-11'),
(1809, 590, '2024-09-11'),
(1810, 590, '2024-09-11'),
(1811, 590, '2024-09-11'),
(1812, 607, '2024-09-11'),
(1813, 607, '2024-09-11'),
(1817, 611, '2024-09-11'),
(1820, 591, '2024-09-11'),
(1821, 590, '2024-09-11'),
(1822, 596, '2024-09-11'),
(1824, 457, '2024-09-11'),
(1825, 615, '2024-09-11'),
(1829, 455, '2024-09-11'),
(1830, 615, '2024-09-11'),
(1833, 615, '2024-09-11'),
(1834, 589, '2024-09-11'),
(1835, 615, '2024-09-11'),
(1836, 615, '2024-09-11'),
(1839, 615, '2024-09-11'),
(1840, 466, '2024-09-11'),
(1841, 615, '2024-09-11'),
(1844, 462, '2024-09-11'),
(1846, 590, '2024-09-11'),
(1847, 471, '2024-09-11'),
(1848, 471, '2024-09-11'),
(1850, 618, '2024-09-11'),
(1851, 618, '2024-09-11'),
(1852, 618, '2024-09-11'),
(1854, 618, '2024-09-11'),
(1855, 618, '2024-09-11'),
(1856, 618, '2024-09-11'),
(1857, 618, '2024-09-11'),
(1858, 618, '2024-09-11'),
(1859, 618, '2024-09-11'),
(1865, 465, '2024-09-11'),
(1866, 465, '2024-09-11'),
(1870, 613, '2024-09-11'),
(1876, 466, '2024-09-12'),
(1877, 471, '2024-09-12'),
(1878, 471, '2024-09-12'),
(1879, 471, '2024-09-12'),
(1880, 457, '2024-09-12'),
(1881, 471, '2024-09-12'),
(1882, 471, '2024-09-12'),
(1883, 471, '2024-09-12'),
(1884, 613, '2024-09-12'),
(1885, 590, '2024-09-12'),
(1886, 590, '2024-09-12'),
(1887, 590, '2024-09-12'),
(1888, 590, '2024-09-12'),
(1889, 590, '2024-09-12'),
(1893, 458, '2024-09-12'),
(1901, 590, '2024-09-13'),
(1902, 459, '2024-09-13'),
(1903, 459, '2024-09-13'),
(1904, 459, '2024-09-13'),
(1905, 459, '2024-09-13'),
(1906, 459, '2024-09-13'),
(1907, 459, '2024-09-13'),
(1908, 459, '2024-09-13'),
(1909, 459, '2024-09-13'),
(1910, 459, '2024-09-13'),
(1911, 459, '2024-09-13'),
(1912, 459, '2024-09-13'),
(1913, 459, '2024-09-13'),
(1914, 590, '2024-09-13'),
(1915, 590, '2024-09-13'),
(1919, 460, '2024-09-13'),
(1920, 460, '2024-09-13'),
(1921, 460, '2024-09-13'),
(1923, 462, '2024-09-13'),
(1936, 456, '2024-09-13'),
(1947, 466, '2024-09-13'),
(1951, 459, '2024-09-13'),
(1953, 465, '2024-09-14'),
(1954, 461, '2024-09-14'),
(1955, 458, '2024-09-14'),
(1956, 464, '2024-09-14'),
(1961, 460, '2024-09-14'),
(1966, 457, '2024-09-14'),
(1967, 471, '2024-09-15'),
(1968, 623, '2024-09-15'),
(1969, 624, '2024-09-15'),
(1970, 624, '2024-09-15'),
(1971, 624, '2024-09-15'),
(1972, 624, '2024-09-15'),
(1973, 471, '2024-09-15'),
(1974, 466, '2024-09-15'),
(1975, 462, '2024-09-16'),
(1976, 458, '2024-09-17'),
(1977, 458, '2024-09-17'),
(1978, 471, '2024-09-17'),
(1979, 471, '2024-09-17'),
(1982, 594, '2024-09-17'),
(1983, 629, '2024-09-17'),
(1984, 631, '2024-09-17'),
(1985, 632, '2024-09-17'),
(1986, 591, '2024-09-18'),
(1987, 591, '2024-09-18'),
(1988, 462, '2024-09-19'),
(1989, 456, '2024-09-19'),
(1990, 466, '2024-09-19'),
(1991, 459, '2024-09-19'),
(1992, 465, '2024-09-19'),
(1993, 458, '2024-09-19'),
(1994, 461, '2024-09-19'),
(1995, 464, '2024-09-19'),
(1996, 460, '2024-09-20'),
(1997, 457, '2024-09-20'),
(1998, 590, '2024-09-20'),
(1999, 465, '2024-09-20'),
(2000, 590, '2024-09-20'),
(2001, 590, '2024-09-20'),
(2002, 590, '2024-09-20'),
(2003, 590, '2024-09-20'),
(2004, 590, '2024-09-20'),
(2005, 590, '2024-09-20'),
(2006, 590, '2024-09-20'),
(2007, 458, '2024-09-20'),
(2008, 458, '2024-09-20'),
(2009, 458, '2024-09-20'),
(2010, 458, '2024-09-20'),
(2011, 458, '2024-09-20'),
(2012, 458, '2024-09-20'),
(2013, 458, '2024-09-20'),
(2014, 456, '2024-09-20'),
(2015, 456, '2024-09-20'),
(2016, 471, '2024-09-21'),
(2017, 471, '2024-09-24'),
(2018, 590, '2024-09-24'),
(2019, 462, '2024-09-24'),
(2020, 456, '2024-09-24'),
(2021, 466, '2024-09-24'),
(2022, 459, '2024-09-24'),
(2023, 465, '2024-09-24'),
(2024, 458, '2024-09-25'),
(2025, 461, '2024-09-25'),
(2026, 464, '2024-09-25'),
(2027, 460, '2024-09-25'),
(2028, 457, '2024-09-25'),
(2029, 471, '2024-09-26'),
(2030, 459, '2024-09-26'),
(2031, 459, '2024-09-26'),
(2032, 590, '2024-09-27'),
(2033, 615, '2024-09-27'),
(2034, 591, '2024-09-27'),
(2036, 458, '2024-09-27'),
(2038, 600, '2024-09-27'),
(2039, 459, '2024-09-27'),
(2040, 653, '2024-09-27'),
(2041, 653, '2024-09-27'),
(2044, 466, '2024-09-27'),
(2045, 464, '2024-09-27'),
(2046, 596, '2024-09-27'),
(2047, 597, '2024-09-27'),
(2049, 460, '2024-09-27'),
(2050, 460, '2024-09-27'),
(2051, 455, '2024-09-27'),
(2055, 594, '2024-09-28'),
(2056, 589, '2024-09-28'),
(2061, 580, '2024-09-28'),
(2062, 462, '2024-09-29'),
(2063, 456, '2024-09-29'),
(2064, 459, '2024-09-29'),
(2065, 465, '2024-09-29'),
(2066, 458, '2024-09-29'),
(2067, 466, '2024-09-30'),
(2068, 461, '2024-09-30'),
(2069, 460, '2024-09-30'),
(2070, 457, '2024-09-30'),
(2071, 471, '2024-09-30'),
(2072, 455, '2024-09-30'),
(2073, 464, '2024-10-01'),
(2074, 594, '2024-10-01'),
(2075, 594, '2024-10-01'),
(2076, 471, '2024-10-01'),
(2077, 590, '2024-10-01'),
(2078, 466, '2024-10-02'),
(2079, 464, '2024-10-02'),
(2080, 455, '2024-10-02'),
(2081, 590, '2024-10-02'),
(2082, 590, '2024-10-02'),
(2083, 464, '2024-10-02'),
(2084, 464, '2024-10-02'),
(2085, 590, '2024-10-02'),
(2086, 464, '2024-10-02'),
(2087, 464, '2024-10-02'),
(2088, 464, '2024-10-02'),
(2089, 591, '2024-10-02'),
(2090, 615, '2024-10-02'),
(2095, 653, '2024-10-03'),
(2097, 600, '2024-10-03'),
(2098, 596, '2024-10-03'),
(2099, 597, '2024-10-03'),
(2100, 589, '2024-10-03'),
(2103, 594, '2024-10-03'),
(2104, 460, '2024-10-04'),
(2110, 462, '2024-10-04'),
(2111, 459, '2024-10-04'),
(2112, 456, '2024-10-04'),
(2113, 465, '2024-10-04'),
(2114, 458, '2024-10-04'),
(2115, 461, '2024-10-04'),
(2116, 580, '2024-10-04'),
(2119, 658, '2024-10-04'),
(2120, 466, '2024-10-04'),
(2121, 460, '2024-10-04'),
(2122, 457, '2024-10-04'),
(2123, 471, '2024-10-05'),
(2124, 590, '2024-10-05'),
(2125, 462, '2024-10-05'),
(2126, 464, '2024-10-06'),
(2127, 466, '2024-10-06'),
(2128, 455, '2024-10-06'),
(2129, 464, '2024-10-06'),
(2131, 459, '2024-10-07'),
(2132, 459, '2024-10-07'),
(2134, 466, '2024-10-07'),
(2136, 591, '2024-10-08'),
(2137, 615, '2024-10-08'),
(2138, 653, '2024-10-08'),
(2139, 462, '2024-10-08'),
(2140, 459, '2024-10-08'),
(2141, 600, '2024-10-08'),
(2142, 456, '2024-10-08'),
(2143, 596, '2024-10-08'),
(2144, 458, '2024-10-08'),
(2145, 597, '2024-10-08'),
(2146, 465, '2024-10-08'),
(2147, 461, '2024-10-08'),
(2148, 589, '2024-10-08'),
(2149, 591, '2024-10-09'),
(2150, 591, '2024-10-09'),
(2151, 596, '2024-10-09'),
(2152, 596, '2024-10-09'),
(2153, 597, '2024-10-09'),
(2154, 597, '2024-10-09'),
(2155, 460, '2024-10-09'),
(2156, 457, '2024-10-09'),
(2157, 590, '2024-10-09'),
(2158, 590, '2024-10-09'),
(2159, 471, '2024-10-09'),
(2160, 594, '2024-10-09'),
(2161, 590, '2024-10-09'),
(2162, 466, '2024-10-09'),
(2163, 580, '2024-10-10'),
(2164, 658, '2024-10-10'),
(2165, 466, '2024-10-11'),
(2166, 455, '2024-10-11'),
(2167, 464, '2024-10-11'),
(2168, 464, '2024-10-12'),
(2169, 591, '2024-10-12'),
(2170, 462, '2024-10-12'),
(2171, 459, '2024-10-13'),
(2172, 456, '2024-10-13'),
(2173, 461, '2024-10-13'),
(2174, 458, '2024-10-13'),
(2175, 465, '2024-10-13'),
(2176, 615, '2024-10-13'),
(2177, 471, '2024-10-13'),
(2178, 590, '2024-10-13'),
(2179, 460, '2024-10-13'),
(2180, 457, '2024-10-13'),
(2181, 653, '2024-10-13'),
(2182, 600, '2024-10-13'),
(2183, 589, '2024-10-14'),
(2184, 596, '2024-10-14'),
(2185, 597, '2024-10-14'),
(2186, 460, '2024-10-14'),
(2187, 594, '2024-10-14'),
(2188, 466, '2024-10-15'),
(2189, 455, '2024-10-15'),
(2190, 466, '2024-10-15'),
(2191, 464, '2024-10-15'),
(2192, 658, '2024-10-15'),
(2193, 580, '2024-10-15'),
(2195, 459, '2024-10-16'),
(2196, 471, '2024-10-16'),
(2197, 471, '2024-10-16'),
(2198, 471, '2024-10-16'),
(2199, 471, '2024-10-16'),
(2200, 471, '2024-10-16'),
(2201, 471, '2024-10-16'),
(2202, 471, '2024-10-16'),
(2203, 471, '2024-10-16'),
(2204, 471, '2024-10-16'),
(2205, 667, '2024-10-16'),
(2206, 471, '2024-10-16'),
(2207, 590, '2024-10-16'),
(2208, 458, '2024-10-16'),
(2209, 461, '2024-10-16'),
(2210, 460, '2024-10-16'),
(2211, 464, '2024-10-16'),
(2212, 591, '2024-10-16'),
(2213, 459, '2024-10-16'),
(2214, 456, '2024-10-16'),
(2215, 466, '2024-10-16'),
(2216, 462, '2024-10-16'),
(2217, 455, '2024-10-16'),
(2218, 457, '2024-10-16'),
(2219, 471, '2024-10-16'),
(2220, 615, '2024-10-16'),
(2221, 597, '2024-10-16'),
(2222, 589, '2024-10-16'),
(2223, 600, '2024-10-16'),
(2224, 594, '2024-10-16'),
(2225, 580, '2024-10-16'),
(2226, 667, '2024-10-16'),
(2227, 658, '2024-10-16'),
(2228, 596, '2024-10-16'),
(2229, 465, '2024-10-16'),
(2230, 653, '2024-10-16'),
(2231, 471, '2024-10-17'),
(2232, 471, '2024-10-17'),
(2233, 462, '2024-10-17'),
(2234, 590, '2024-10-17'),
(2235, 459, '2024-10-17'),
(2236, 590, '2024-10-17'),
(2237, 456, '2024-10-17'),
(2238, 461, '2024-10-17'),
(2239, 458, '2024-10-17'),
(2240, 465, '2024-10-17'),
(2241, 460, '2024-10-17'),
(2242, 596, '2024-10-17'),
(2243, 457, '2024-10-17'),
(2244, 591, '2024-10-17'),
(2245, 615, '2024-10-18'),
(2246, 464, '2024-10-18'),
(2247, 471, '2024-10-18'),
(2248, 460, '2024-10-18'),
(2249, 591, '2024-10-18'),
(2250, 589, '2024-10-18'),
(2251, 590, '2024-10-18'),
(2252, 590, '2024-10-18'),
(2253, 590, '2024-10-18'),
(2254, 653, '2024-10-18'),
(2255, 589, '2024-10-18'),
(2256, 600, '2024-10-18'),
(2257, 596, '2024-10-19'),
(2258, 597, '2024-10-19'),
(2259, 455, '2024-10-19'),
(2260, 471, '2024-10-19'),
(2261, 462, '2024-10-19'),
(2262, 457, '2024-10-19'),
(2263, 589, '2024-10-19'),
(2264, 471, '2024-10-19'),
(2265, 466, '2024-10-19'),
(2266, 464, '2024-10-19'),
(2267, 594, '2024-10-20'),
(2268, 466, '2024-10-20'),
(2269, 590, '2024-10-20'),
(2270, 658, '2024-10-20'),
(2271, 580, '2024-10-21'),
(2272, 471, '2024-10-21'),
(2273, 590, '2024-10-21'),
(2274, 462, '2024-10-21'),
(2275, 459, '2024-10-21'),
(2276, 456, '2024-10-21'),
(2277, 461, '2024-10-21'),
(2278, 458, '2024-10-21'),
(2279, 594, '2024-10-21'),
(2280, 465, '2024-10-21'),
(2281, 460, '2024-10-21'),
(2282, 457, '2024-10-22'),
(2283, 667, '2024-10-22'),
(2284, 591, '2024-10-22'),
(2285, 471, '2024-10-22'),
(2286, 471, '2024-10-22'),
(2287, 615, '2024-10-22'),
(2288, 455, '2024-10-23'),
(2289, 653, '2024-10-23'),
(2290, 589, '2024-10-23'),
(2291, 464, '2024-10-23'),
(2292, 466, '2024-10-23'),
(2293, 464, '2024-10-24'),
(2294, 600, '2024-10-24'),
(2295, 596, '2024-10-24'),
(2296, 597, '2024-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint NOT NULL,
  `review_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
CREATE TABLE IF NOT EXISTS `referrals` (
  `parrent_user_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `referral_link` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `referral_code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_referrals_parrent_user_id` (`parrent_user_id`),
  KEY `fk_referrals_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`parrent_user_id`, `user_id`, `referral_link`, `referral_code`, `id`) VALUES
(201, 200, 'https://ealanatek.site/user/vendor-register?referr', 'RzWAXq0DZi', 1),
(200, 201, 'http://127.0.0.1:8000/user/vendor-register?referra', 'BFrhELPp3A', 2),
(225, 227, 'https://ealanatek.site/user/vendor-register?referr', 'p3L2Aa7ikE', 7),
(227, 225, 'https://ealanatek.site/user/vendor-register?referr', 'Hxw1PQy22Z', 8);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `comment_id` int UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(7, 200, 4, 'mmiffccc', '2024-09-24 12:19:46', '2024-09-24 13:20:47'),
(10, 200, 11, 'znzjhzhh', '2024-09-25 12:10:01', '2024-09-25 12:10:01'),
(14, 237, 17, 'اهلا', '2024-10-19 16:11:54', '2024-10-19 16:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(1, '1557343024img.jpg', 'm1', 'm2', 'mm3');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
CREATE TABLE IF NOT EXISTS `rewards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_amount` double NOT NULL DEFAULT '0',
  `reward` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

DROP TABLE IF EXISTS `riders`;
CREATE TABLE IF NOT EXISTS `riders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_verify` enum('Yes','No') COLLATE utf8mb4_general_ci DEFAULT 'No',
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `balance` double DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riders`
--

INSERT INTO `riders` (`id`, `name`, `email`, `fax`, `zip`, `photo`, `password`, `email_verify`, `phone`, `address`, `location`, `email_token`, `country`, `state_id`, `city_id`, `status`, `balance`, `created_at`, `updated_at`) VALUES
(1, 'Hasan Hazzoury', 'hasson1999.9.5@azr.com', NULL, NULL, NULL, '$2y$10$v4tWUg3QZwps6LmoQ78Jz.U18AUBvBHoU8fq7hN.EkqZsks3Sh3Pa', 'Yes', '05315828010', 'Istanbul', NULL, '1d7d7e1abb57f72c7638e1a2a0b7a830', NULL, NULL, NULL, NULL, 0, '2024-07-13 07:44:26', '2024-07-13 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `rider_service_areas`
--

DROP TABLE IF EXISTS `rider_service_areas`;
CREATE TABLE IF NOT EXISTS `rider_service_areas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rider_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rider_service_areas`
--

INSERT INTO `rider_service_areas` (`id`, `rider_id`, `city_id`, `price`, `status`) VALUES
(1, 1, 7, 200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , categories , products , affilate_products , bulk_product_upload , product_discussion , set_coupons , customers , customer_deposits , vendors , vendor_subscriptions , vendor_verifications , vendor_subscription_plans , messages , general_settings , home_page_settings , menu_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , categories , vendor_subscription_plans , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

DROP TABLE IF EXISTS `seotools`;
CREATE TABLE IF NOT EXISTS `seotools` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `facebook_pixel`, `meta_keys`, `meta_description`) VALUES
(1, 'UA-137437974-1', 'UA-137437974-1', 'Sea,Etc,mas', 'dsjhdeykfuyoty');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(10, 0, 'Manage Quality', 'Best Quality Gaurentee', '1718128929Logo-03jpg.jpg'),
(11, 0, 'Win $100 To Shop', 'Enter Now', '1719935772JPG-08jpg.jpg'),
(12, 0, 'Best Online Support', 'Hour: 10:00AM - 5:00PM', '1718128912Logo-03jpg.jpg'),
(13, 0, 'Money Gurantee', 'With A 30 Days', '1719935759JPG-11jpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
CREATE TABLE IF NOT EXISTS `shippings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(25, 0, 'Ahmadazrar 11', 'fdsdazrar 11', 55533),
(26, 0, 'kk', '4', 4),
(27, 175, 'jjjjj', '1', 5),
(28, 221, 'dddddd', '33', 2000),
(29, 222, 'Default shippings', 'shippings', 0),
(30, 223, 'Default shippings', 'shippings', 0),
(31, 224, 'Default shippings', 'shippings', 0),
(32, 225, 'Default shippings', 'shippings', 0),
(33, 226, 'Default shippings', 'shippings', 0),
(34, 227, 'Default shippings', 'shippings', 0),
(35, 228, 'Default shippings', 'shippings', 0),
(36, 229, 'Default shippings', 'shippings', 0),
(37, 230, 'Default shippings', 'shippings', 0),
(38, 201, 'mm', 'nm', 69),
(39, 231, 'Default shippings', 'shippings', 0),
(40, 201, 'grhfdvfh', 'dvdh', 97976),
(42, 200, 'y2', '555', 10015),
(43, 238, 'jmm', 'bJ', 799),
(44, 200, 'bsbsbb', 'jbbhvsbs', 1888),
(45, 200, 'djdjh', 'jdsjjdj', 111),
(48, 0, 'adms774', 'adms774', 44),
(51, 249, 'Default shippings', 'shippings', 0),
(53, 0, 'azrar 11', 'azrar 11', 222),
(54, 251, 'Default shippings', 'shippings', 0),
(55, 252, 'Default shippings', 'shippings', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text,
  `slider_position` varchar(255) NOT NULL DEFAULT 'top',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`, `slider_position`) VALUES
(38, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '17269587441722437007azrar24jpgjpg.jpg', 'center', 'https://ealanatek.site', 'top'),
(39, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '17269586601722455051D8B1D8ADD984D8A920D8B9D8A8D8B120D8A7D984D8B2D985D98620D985D8B920D8A3D8B2D98AD8A7D8A1D986D8A7-3pngpng.png', 'center', 'https://ealanatek.site', 'center'),
(43, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '17269588001722078488D8A8D986D8B120D8B9D98620D982D8B3D98520D8A7D984D8B9D986D8A7D98AD8A920D8A7D984D8B4D8AED8B5D98AD8A920copyjpgjpg.jpg', 'center', NULL, 'top');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

DROP TABLE IF EXISTS `socialsettings`;
CREATE TABLE IF NOT EXISTS `socialsettings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint NOT NULL DEFAULT '1',
  `g_status` tinyint NOT NULL DEFAULT '1',
  `t_status` tinyint NOT NULL DEFAULT '1',
  `l_status` tinyint NOT NULL DEFAULT '1',
  `d_status` tinyint NOT NULL DEFAULT '1',
  `f_check` tinyint DEFAULT NULL,
  `g_check` tinyint DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '451562174002417', 'ac91e3fc8c9eb65bf83685f2d01ef778', 'https://ealanatek.site/auth/facebook/callback', '431326625169-k0elsfn0cdep95k37n7607m9ne147d7j.apps.googleusercontent.com', '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', 'https://ealanatek.site/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
CREATE TABLE IF NOT EXISTS `social_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `link`, `icon`, `status`) VALUES
(1, 0, 'https://www.facebook.com/', 'fab fa-facebook-f', 1),
(6, 13, 'https://www.google.com/', 'fab fa-google', 1),
(7, 13, 'https://twitter.com/', 'fab fa-twitter', 1),
(8, 13, 'https://www.facebook.com/', 'fab fa-facebook', 1),
(9, 13, 'https://linkedin.com/', 'fab fa-linkedin', 1),
(10, 22, 'https://www.google.com/', 'fab fa-google', 1),
(12, 22, 'https://www.facebook.com/masmarkeating/', 'fas fa-adjust', 1),
(13, 22, 'https://www.facebook.com/masmarkeating/', 'fa', 1),
(14, 22, 'https://www.facebook.com/masmarkeating/', 'fa', 1),
(15, 22, 'https://www.facebook.com/masmarkeating/', 'fa', 1),
(16, 22, 'https://www.facebook.com/masmarkeating/', 'fa', 1),
(17, 22, 'https://www.facebook.com/masmarkeating/', 'fa', 1),
(19, 84, 'https://www.facebook.com', 'fas fa-fax', 1),
(20, 84, 'instagram.com', 'fab fa-instagram', 1),
(21, 84, 'x.com', 'te', 1),
(22, 84, 'tikok.com', '✅', 1),
(23, 84, 'tikok.com', '✅', 1),
(24, 92, 'https://www.facebook.com/profile.php?id=100047153853607', 'fab fa-facebook', 1),
(25, 0, 'https://www.instagram.com/', 'fab fa-instagram', 1),
(26, 0, 'https://www.tiktok.com/en/', 'fab fa-tiktok', 1),
(27, 0, 'https://web.whatsapp.com/', 'fab fa-whatsapp', 1),
(28, 82, 'google.com', 'fab fa-google', 1),
(31, 0, 'linkedin-in', 'fab fa-linkedin-in', 1),
(32, 175, 'facebook', 'fas fa-align-center', 1),
(33, 175, 'facebook', 'fas fa-align-center', 1),
(34, 200, 'fa', 'fas fa-ad', 1),
(35, 202, 'iiiiffff', 'fas fa-ad', 1),
(36, 213, 'rn', 'Twitter', 1),
(37, 213, 'rn', 'Twitter', 1),
(38, 201, 'm', 'Twitter', 1),
(39, 201, 'am', 'Twitter', 1),
(41, 238, 'msm', 'Instagram', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

DROP TABLE IF EXISTS `social_providers`;
CREATE TABLE IF NOT EXISTS `social_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_providers`
--

INSERT INTO `social_providers` (`id`, `user_id`, `provider_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, 232, '122169758552182108', 'facebook', '2024-09-16 04:50:08', '2024-09-16 04:50:08'),
(2, 233, '104334410567073953165', 'google', '2024-09-19 15:24:55', '2024-09-19 15:24:55'),
(4, 253, '111437409800358304598', 'google', '2024-10-06 16:08:54', '2024-10-06 16:08:54'),
(5, 254, '122108441654547758', 'facebook', '2024-10-06 17:23:21', '2024-10-06 17:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL DEFAULT '0',
  `state` varchar(111) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `owner_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `tax`, `status`, `owner_id`) VALUES
(2, 245, 'New Youk', 2, 1, 0),
(4, 246, 'Virginia', 4, 1, 0),
(6, 246, 'Harar', 0, 1, 0),
(7, 245, 'Lusaka', 0, 1, 0),
(8, 244, 'Zinjibar', 0, 1, 0),
(9, 244, 'Mukalla', 0, 1, 0),
(10, 243, 'Smara', 0, 1, 0),
(11, 243, 'Hawza', 0, 1, 0),
(12, 242, 'Vaitupu', 0, 1, 0),
(13, 242, 'Leava', 0, 1, 0),
(14, 18, 'Dhaka', 2, 1, 0),
(15, 18, 'Comilla', 1, 1, 0),
(20, 13, 'Victoria', 0, 1, 0),
(21, 13, 'Tasmania', 0, 1, 0),
(22, 14, 'Vienna', 0, 1, 0),
(23, 14, 'Styria', 0, 1, 0),
(24, 20, 'Brest Oblast', 0, 1, 0),
(25, 20, 'Vitebsk Oblast', 0, 1, 0),
(26, 100, 'Assam', 0, 1, 0),
(27, 100, 'Bihar', 0, 1, 0),
(28, 100, 'Bombay', 0, 1, 0),
(29, 183, 'Adygea', 0, 1, 0),
(30, 183, 'Buryatia', 0, 1, 0),
(32, 2, 'بغداد', 0, 1, 0),
(33, 2, 'الأنبار', 0, 1, 0),
(34, 2, 'البصرى', 0, 1, 0),
(35, 2, 'المثنى', 0, 1, 0),
(36, 2, 'القادسية', 0, 1, 0),
(37, 2, 'النجف', 0, 1, 0),
(38, 2, 'أربيل', 0, 1, 0),
(39, 2, 'السليمانية', 0, 1, 0),
(40, 2, 'بابل', 0, 1, 0),
(41, 2, 'دهوك', 0, 1, 0),
(42, 2, 'ذي قار', 0, 1, 0),
(43, 2, 'ديالى', 0, 1, 0),
(44, 2, 'كربلاء', 0, 1, 0),
(45, 2, 'كركوك', 0, 1, 0),
(46, 2, 'ميسان\r\n', 0, 1, 0),
(47, 2, 'نينوى', 0, 1, 0),
(48, 2, 'صلاح الدين', 0, 1, 0),
(49, 2, 'واسط', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name_ku` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `name_ar`, `name_ku`, `status`, `photo`) VALUES
(52, 40, 'iPhones', 'iPhones', 'ايفون', NULL, 1, '1723843912.jpeg'),
(53, 41, 'Child Toys', 'Child-Toys', 'العاب اطفال', NULL, 1, '1723844064.jpeg'),
(54, 42, 'Fashons', 'Fashons', 'موضة', NULL, 1, '1723844182.jpeg'),
(55, 43, 'Child Book', 'Child-Book', 'كتب أطفال', NULL, 1, '1723844221.jpeg'),
(56, 44, 'Electronic camera', 'Electronic-camera', 'كاميرة الكترونية', NULL, 1, '1723844279.jpeg'),
(57, 45, 'football', 'football', 'كرة القدم', NULL, 1, '1723844369.jpeg'),
(58, 46, 'Cosmatics', 'Cosmatics', 'مواد تجميل', NULL, 1, '1723844452.jpeg'),
(59, 47, 'bracelets', 'bracelets', 'اساور', NULL, 1, '1723844559.jpeg'),
(60, 48, 'Decorations', 'Decorations', 'ديكورات', NULL, 1, '1723844620.jpeg'),
(61, 49, 'Healthy', 'Healthy', 'أدوات طبية', NULL, 1, '1723844664.jpg'),
(62, 50, 'Sports cars', 'Sports-cars', 'سيارات رياضية', NULL, 1, '1723844840.jpeg'),
(63, 51, 'Motorcycles', 'Motorcycles', 'دراجات نارية', NULL, 1, '1723844961.jpeg'),
(64, 52, 'sports shoes', 'sports-shoes', 'احذية رياضية', NULL, 1, '1723845091.jpeg'),
(65, 53, 'oclok', 'oclok', 'ساعة', NULL, 1, '1723845157.jpeg'),
(66, 54, 'headphones', 'headphones', 'سماعات الرأس', NULL, 1, '1723845236.jpeg'),
(67, 55, 'Phone charger', 'Phone-charger', 'شاحن هاتف', NULL, 1, '1723845340.jpeg'),
(68, 56, 'glass', 'glass', 'زجاج', NULL, 1, '1723845465.jpeg'),
(69, 57, 'samsung', 'samsung', 'سامسونغ', NULL, 1, '1723845600.jpeg'),
(70, 58, 'bicycle', 'bicycle', 'دراجة هوائية', NULL, 1, '1723845661.jpeg'),
(71, 59, 'fridges', 'fridges', 'ثلاجات', NULL, 1, '1723845744.jpeg'),
(72, 60, 'Wall fan', 'Wall-fan', 'مروحة جدارية', NULL, 1, '1723845864.jpeg'),
(73, 61, 'Asus', 'Asus', 'اسوس', NULL, 1, '1723845957.jpeg'),
(74, 62, 'keyboard', 'keyboard', 'كيبورد', NULL, 1, '1723846018.jpeg'),
(75, 63, 'sweets', 'sweets', 'حلويات', NULL, 1, '1723846088.jpeg'),
(76, 64, 'perfumes', 'perfumes', 'عطور', NULL, 1, '1723846144.jpeg'),
(77, 65, 'accessories', 'accessories', 'اكسسوارات', NULL, 1, '1723846231.jpeg'),
(78, 66, 'cothing', 'cothing', 'البسة', NULL, 1, '1723846296.png'),
(79, 67, 'makeup', 'makeup', 'مكياج', NULL, 1, '1723846347.jpeg'),
(80, 50, 'Cars BM', 'Cars-BM', 'بي ام', NULL, 1, '1723847726.png'),
(85, 72, 'azrartest2', 'azrartest', 'ازرار2', NULL, 1, '1727884762.png'),
(86, 73, 'azrar 22', 'azrar-11', 'azrar 22', NULL, 1, '1727890578.png');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(8, 'shaon@gmail.com'),
(9, 'test@gmail.com'),
(10, 'shaoneel@gmail.com'),
(11, 'mojibur@gmail.com'),
(12, 'tretr@ter.d'),
(13, 'shaons@gmail.com'),
(14, 'shaon@gmail.coms'),
(15, 'junnuns@gmail.com'),
(16, 'admin@gmail.com'),
(17, 'user7@gmail.com'),
(18, 'farhadwts@gmail.com'),
(19, 'pronobsarker16@gmail.com'),
(20, 'shourav@gmail.com'),
(21, 'user@gmail.com'),
(22, 'seller@gmail.com'),
(23, 'teacher@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int NOT NULL,
  `allowed_products` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>'),
(10, 'Gold', 5000000, 365, 0, NULL),
(16, 'Gold7', 5000, 365, 0, NULL),
(17, 'Gold7', 5000, 365, 0, NULL),
(23, 'azrartest 4', 55, 56, 0, NULL),
(24, 'azrartest 4', 85, 44, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_features`
--

DROP TABLE IF EXISTS `subscription_features`;
CREATE TABLE IF NOT EXISTS `subscription_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `has_icon` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_kr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_features`
--

INSERT INTO `subscription_features` (`id`, `subscription_id`, `name_en`, `description`, `has_icon`, `created_at`, `updated_at`, `name_ar`, `name_kr`) VALUES
(5, 5, 'asdads', NULL, 1, '2024-06-02 11:27:53', '2024-06-02 11:27:53', NULL, NULL),
(6, 5, 'ts', NULL, 1, '2024-06-02 11:27:53', '2024-06-02 11:27:53', NULL, NULL),
(7, 5, 'dasdsaads', NULL, 0, '2024-06-02 11:27:53', '2024-06-02 11:27:53', NULL, NULL),
(17, 7, '100 products', NULL, 1, '2024-06-11 17:35:01', '2024-06-11 17:35:01', NULL, NULL),
(18, 7, 'test', NULL, 0, '2024-06-11 17:35:01', '2024-06-11 17:35:01', NULL, NULL),
(19, 7, 'tess', NULL, 0, '2024-06-11 17:35:01', '2024-06-11 17:35:01', NULL, NULL),
(20, 7, 'rr', NULL, 0, '2024-06-11 17:35:01', '2024-06-11 17:35:01', NULL, NULL),
(21, 7, 'dd', NULL, 0, '2024-06-11 17:35:01', '2024-06-11 17:35:01', NULL, NULL),
(28, 8, '100 products', NULL, 1, '2024-06-30 14:18:53', '2024-06-30 14:18:53', NULL, NULL),
(29, 8, 'قص الصور', NULL, 0, '2024-06-30 14:18:53', '2024-06-30 14:18:53', NULL, NULL),
(30, 8, 'توليد نص بالذكاء الصناعي', NULL, 0, '2024-06-30 14:18:53', '2024-06-30 14:18:53', NULL, NULL),
(31, 6, '100 products', NULL, 0, '2024-07-13 15:44:25', '2024-07-13 15:44:25', NULL, NULL),
(32, 6, 'ai', NULL, 0, '2024-07-13 15:44:25', '2024-07-13 15:44:25', NULL, NULL),
(33, 6, 'tess', NULL, 0, '2024-07-13 15:44:25', '2024-07-13 15:44:25', NULL, NULL),
(34, 10, 'ai', NULL, 1, '2024-07-25 00:02:50', '2024-07-25 00:02:50', NULL, NULL),
(35, 10, 'Viscreption', NULL, 1, '2024-07-25 00:02:50', '2024-07-25 00:02:50', NULL, NULL),
(46, 15, 'Set Background color', NULL, 1, '2024-08-04 21:59:29', '2024-08-04 21:59:29', 'تغير لون الخلفية', 'تغير لون الخلفية'),
(47, 15, 'Generate Description with AI', NULL, 1, '2024-08-04 21:59:30', '2024-08-04 21:59:30', 'توليد وصف بالذكاء الصناعي', 'توليد وصف بالذكاء الصناعي'),
(48, 15, 'Save & Remove Background with AI', NULL, 1, '2024-08-04 21:59:30', '2024-08-04 21:59:30', 'ازالة خلفية الصورة بالذكاء الصناعي', 'ازالة خلفية الصورة بالذكاء الصناعي'),
(49, 15, 'm1', NULL, 1, '2024-08-04 21:59:30', '2024-08-04 21:59:30', 'ممم', 'مم'),
(50, 16, 'Set Background color', NULL, 1, '2024-08-04 22:13:05', '2024-08-04 22:13:05', 'تغير لون الخلفية', 'تغير لون الخلفية'),
(51, 16, 'Generate Description with AI', NULL, 1, '2024-08-04 22:13:05', '2024-08-04 22:13:05', 'توليد وصف بالذكاء الصناعي', 'توليد وصف بالذكاء الصناعي'),
(52, 16, 'Save & Remove Background with AI', NULL, 1, '2024-08-04 22:13:05', '2024-08-04 22:13:05', 'ازالة خلفية الصورة بالذكاء الصناعي', 'ازالة خلفية الصورة بالذكاء الصناعي'),
(53, 17, 'Set Background color', NULL, 1, '2024-08-04 22:14:59', '2024-08-04 22:14:59', 'تغير لون الخلفية', 'تغير لون الخلفية'),
(54, 17, 'Generate Description with AI', NULL, 1, '2024-08-04 22:14:59', '2024-08-04 22:14:59', 'توليد وصف بالذكاء الصناعي', 'توليد وصف بالذكاء الصناعي'),
(55, 17, 'Save & Remove Background with AI', NULL, 1, '2024-08-04 22:14:59', '2024-08-04 22:14:59', 'ازالة خلفية الصورة بالذكاء الصناعي', 'ازالة خلفية الصورة بالذكاء الصناعي'),
(56, 17, 'mm3', NULL, 1, '2024-08-04 22:14:59', '2024-08-04 22:14:59', 'بببب', 'بببب'),
(63, 25, 'Set Background color', NULL, 0, '2024-10-02 17:44:43', '2024-10-02 17:44:43', 'تغير لون الخلفية', 'تغير لون الخلفية'),
(64, 25, 'Generate Description with AI', NULL, 0, '2024-10-02 17:44:43', '2024-10-02 17:44:43', 'توليد وصف بالذكاء الصناعي', 'توليد وصف بالذكاء الصناعي'),
(65, 25, 'Save & Remove Background with AI', NULL, 0, '2024-10-02 17:44:43', '2024-10-02 17:44:43', 'ازالة خلفية الصورة بالذكاء الصناعي', 'ازالة خلفية الصورة بالذكاء الصناعي');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `reward_point` double DEFAULT '0',
  `reward_dolar` double NOT NULL DEFAULT '0',
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double DEFAULT '0',
  `currency_sign` blob,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `reward_point`, `reward_dolar`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(1, 70, 0, 0, 'GSt9119lKg', 15000, 0x44, 'IQD', 1, NULL, NULL, 'nn', 'minus', '2024-07-11 14:45:19', '2024-07-11 14:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `balance` double NOT NULL DEFAULT '0',
  `admin_commission` double NOT NULL DEFAULT '0',
  `reward` double NOT NULL DEFAULT '0',
  `email_token` text COLLATE utf8mb4_unicode_ci,
  `referral_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_vendor` int DEFAULT '0',
  `birthdate` date DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_user` int NOT NULL DEFAULT '0',
  `background_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `is_verified` tinyint(1) DEFAULT '0',
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state_id`, `city_id`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `shop_image_left`, `shop_image_right`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `admin_commission`, `reward`, `email_token`, `referral_link`, `referral_code`, `points_vendor`, `birthdate`, `gender`, `points_user`, `background_color`, `is_verified`, `social_id`, `social_type`) VALUES
(13, 'Vendor', NULL, '1234', NULL, 'Algeria', 0, NULL, NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'PCJfGapa0SAzP9AnwjnIfG46mu3db2IVVc8EMGgH0VmsYnQoBjy0LQUO7udx', '2018-03-07 12:05:44', '2024-08-30 20:23:26', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 4920.8, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2023-11-11', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FF5733', 0, NULL, NULL),
(22, 'HAM', '1718048794JPG-09jpg.jpg', NULL, 'Test City', 'Iraq', 32, 148, 'بغداد المنصور شارع الاميرات \r\nبنص الشارع \r\nمحل احمد و حيدر لتجارة الملابس', '34534534534FD', '34534534534', 'user@gmail.com', '$2y$10$SoiCG9/MlJIvAir5tUKAjevXO0N4P0qEUb27vFMc53uCWMfgd.FLm', '6xze5JMAFSW3clWGplJnq8d9l0ScS3qCjTfIFkkFRkgQIjNanQMRcnoAIulz', '2019-06-20 06:26:24', '2024-08-08 04:09:50', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4298.635, 'Test Shops', 'Saxena', '213213', 'fgfg', '123213', NULL, NULL, '17199324483png.png', '1717957454JPG-08jpg.jpg', '1717957454masw1236xh690jpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-08-27', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(49, 'Hasan Hazzoury', NULL, NULL, NULL, NULL, NULL, NULL, 'الفوجة', '+905315828010', NULL, 'hasson1999.9.5@gmail.com', '$2y$10$EHRpWQQga515ntM/MtLGe.mk6KZdvfv4MltcQOicoxdQUbICV0jh2', NULL, '2024-05-21 13:52:24', '2024-07-15 09:47:38', 0, 0, '96535559690d730d25ec51f10ccce4eb', 'Yes', '6d3cbe5fe4df39b91c6e89fd6cba99d1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2024-09-28', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(53, 'hamza', NULL, NULL, NULL, NULL, NULL, NULL, 'اميرات', '07757620852', NULL, 'p5pp@yahoo.com', '$2y$10$P86P6IPdUog8Hv5nnwRKC.cgj.q2ruI0rmNAE2rsYS65Wpqlvret6', NULL, '2024-06-09 20:09:40', '2024-07-11 14:53:26', 0, 0, '66727783dad81263042586f22c72dc5b', 'Yes', '65387e29c4d8b23465d0512d19ca04c3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2026-06-28', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(58, 'Hasan chek', '17195154573bbd64c3c75722d6fad60e7093c2ffe2jpg.jpg', NULL, NULL, 'Iraq', NULL, NULL, 'الفلوجة', '59954', NULL, 'hasson@gmail.com', '$2y$10$GDNf.KUHS/WDmpLqqtb2EeUmpDLBj4UahJEX/N7pHiwjmdPWsf1SC', NULL, '2024-06-27 19:10:57', '2024-06-27 19:10:57', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(61, 'bHasan Hazzoury', NULL, NULL, NULL, 'mm', NULL, NULL, 'admin@gmail.com', '+905345504439', NULL, 'admin@gmail.com', '$2y$10$acNmNLS9EW7VPNsXtFBo4uRqBl/WbVI7idrV1DD74PQio92I2SaUK', NULL, '2024-06-30 04:54:45', '2024-09-25 19:30:32', 0, 0, '1b44b63d47f2245d552631eaafc08777', 'Yes', 'ce6fa663529bc223d553e53777305af4', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(63, 'muhammed', NULL, NULL, NULL, NULL, NULL, NULL, '61/5 akdeniz cad fatih istanbul turkye', '05365439850', NULL, 'mohamadalmasoud56@gmail.com', '$2y$10$VyvmlSJXWfwAiahkB26tOewAbyS7D3Q.H6YaNNtRdOiZlxelAy8kG', NULL, '2024-07-02 16:07:11', '2024-07-13 13:50:39', 0, 0, '03d8a95e6eda6babf096e39b0bc5f624', 'Yes', 'aa5c83973c4b60ead8dd9425fb2afacd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(64, 'hamz', NULL, NULL, NULL, NULL, NULL, NULL, 'fcdnv', '+964', NULL, 'ldkcnso@yahoo.com', '$2y$10$hT6A5uZ7VOIV48UVeqt/2.O/JgIme.JLJEtNERp3NGyehSuj4o79W', NULL, '2024-07-08 15:21:08', '2024-07-11 14:53:41', 0, 0, 'd9605c62322100ed37674879d2abf302', 'Yes', 'a84bc64fc302578169c90ec7ac804b82', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(65, 'dfgvvfr', NULL, NULL, NULL, NULL, NULL, NULL, 'fedrgbfrdbn', '+964346546', NULL, 'rfs@yahoo.com', '$2y$10$LFpHFIApsxWUY5xetvo0GOQr1ABTuZYrNj.wlbiU/2WsyILRhzv8.', NULL, '2024-07-08 15:39:04', '2024-07-11 14:53:32', 0, 0, 'e13c2ae700d9b64d7c0749eee81098d0', 'Yes', '3bb8b1397aea14681fd0ccf9087d1f0c', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(66, 'iufydrc', NULL, NULL, NULL, NULL, NULL, NULL, 'kugf6rs', '+964', NULL, 'jfxf@yahoo.com', '$2y$10$n1eXBKhjf15u3U6bejLtC.niEXFIdwH93PQcisLbNrFDbJ9XzrbZ2', NULL, '2024-07-08 15:48:52', '2024-07-11 14:52:12', 0, 0, 'a9847b0fe1d2d7c43dc819fb074cd81e', 'Yes', '874d8ce16396155a7c4a7cc275a4dc73', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(70, 'hamza', NULL, NULL, NULL, NULL, NULL, NULL, 'dvchdogvf', '+964', NULL, 'p5pvdf@yahoo.com', '$2y$10$m1/2C4FZztDyT23CNfoKQu.C2Vg8bJo72nvBx0AoZ8rJkzqFxn6C2', NULL, '2024-07-10 10:59:15', '2024-07-11 14:47:54', 0, 0, 'a5bb1965abf423a1e6eb7a85361b6c32', 'Yes', 'bc734170f9122c44b7e27cd1ca944dd8', 0, 'bv sb', 'fvedfvd', NULL, 'fbvfrv - Baghdad - 32 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, -15000, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(73, 'fdv av d', NULL, NULL, NULL, NULL, NULL, NULL, 'vfda', '+964', NULL, 'vigd@yahoo.com', '$2y$10$5Pr4Oe4Drw94QCvOJusgzu322ZlMFQN4jXxik3zi6jWGTxSpgq5T.', NULL, '2024-07-12 15:22:57', '2024-07-12 15:22:57', 0, 0, '9eaaecd1dd00e900e43d719bd5056c53', 'Yes', '8324ee3d1edaac4ff30803b76d602356', 0, 'vdfa', 'vdsf', NULL, 'vfdfv - Baghdad - 32 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(74, 'liyt78r', NULL, NULL, NULL, NULL, NULL, NULL, 'ir8', '+964', NULL, 'jf@yahpp.com', '$2y$10$s9g6LnsLR3ALt7j6SKabc.wUQrjQBvEUvalBS98j/KIAN9be/Rx1K', NULL, '2024-07-12 15:23:47', '2024-07-12 15:23:47', 0, 0, 'b5723105c8eae4d26fe3e83781816b4d', 'Yes', 'c814fe826c473050d4fc3819a30f8af7', 0, 'lihoih', 'guv', NULL, 'kjgiygv - Baghdad - 32 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(75, 'humam alhowri', NULL, NULL, NULL, NULL, NULL, NULL, 'turkiye/istanbul', '0681606005', NULL, 'humamhwri44@gmail.com', '$2y$10$tDLaQ36JqSyhOpWbkwhP4OpXcQjFMLvsRgCZd8qiWLEZMczUq0HYS', NULL, '2024-07-12 16:34:00', '2024-07-15 09:47:56', 0, 0, '094cca28147865ab6a2bd89a36c5551a', 'Yes', '3c6fd02ce3e15991e395016a9cd85a32', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2024-10-11', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(76, 'gghe', NULL, NULL, NULL, NULL, NULL, NULL, 'gdhdh', '+9647757546144', NULL, 'ghei@yahoo.com', '$2y$10$4N6qWv3oVPtxsdJaXlgRueuMotCY9tWjmF63VKMY8Vokrb9OWajoy', NULL, '2024-07-12 17:50:24', '2024-07-12 17:50:24', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(77, 'humam', NULL, NULL, NULL, NULL, NULL, NULL, 'syrie', '+352681606005', NULL, 'hamamhwri44@gmail.com', '$2y$10$e3i.F6mi6mwxE1MuWXhfPeVZI6Eh23GHtbWV0SnyH.VauRqKetBeK', NULL, '2024-07-12 17:51:37', '2024-07-12 17:51:37', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(78, 'muhammed', NULL, NULL, NULL, NULL, NULL, NULL, '61/5 Akdeniz cad faith Istanbul turkye', '+964000000000000', NULL, 'mm1499853@gmail.com', '$2y$10$IaFCFY6xXCNHpp9gjoHsPujBbu0ZezTtJyTuVuQgWoabBXFQwVPCC', NULL, '2024-07-13 12:25:43', '2024-07-14 12:48:28', 0, 0, '40192f1a639ebc493147d32f0c509cd2', 'Yes', '94b07890c957f1de328b7f233cb5506c', 0, 'المنصور', 'منصور', NULL, '1234 - Baghdad - 32 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-08-13', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(79, 'humam33', NULL, NULL, NULL, NULL, NULL, NULL, 'turkiye/istanbul', '+352681606005', NULL, 'hamamhwri@gmail.com', '$2y$10$Gzut1Q7VTg0H8vfa4wjnW.AIKpl2vEJAOObMtoVsbFssYznDTUiyO', NULL, '2024-07-13 12:33:17', '2024-07-15 09:44:15', 0, 0, 'b076157e5c5712ebc0f62843aac9a2a9', 'Yes', 'e293333b0c6b28b7f4cee5f28afabdbd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(80, 'hasan', NULL, NULL, NULL, NULL, NULL, NULL, 'basra', '+964715456675', NULL, 'asimgamer11@gmail.com', '$2y$10$KXNB9gI7M5DwCqyQM13fUeFHup8BU8vRHrtN8JbFs9ejIDDA9DDkO', NULL, '2024-07-13 13:02:08', '2024-07-13 13:04:20', 0, 0, 'ca7744a2d1de3a1cb4890ec5f975bebf', 'Yes', 'f90da5172366ad4d2a2a1f80f21dd396', 0, 'zozo', 'soso', NULL, 'street 1 - Az Zubayr - 34 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(81, 'Hasan Hazzur', NULL, NULL, NULL, NULL, NULL, NULL, 'Veliefendi mah. 74/1 SK. No:29-31', '+96407734786587', NULL, 'soso@gmail.com', '$2y$10$9hdhohOcSi.EA808pYAdNuQrptG6PpdnlZxQZidYn/DEB8CxohGMC', NULL, '2024-07-13 13:24:41', '2024-07-13 14:56:30', 0, 0, '7ac5ccaec36bc2b578fb1d14d853b33c', 'Yes', 'ed743c7ef8d7d8ca350586dc235c1d7e', 0, 'eee', 'Ahmed', NULL, 'alzobutr - Mosul - 47 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2025-07-13', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(82, 'adb', NULL, NULL, NULL, NULL, NULL, NULL, 'ist', '+9645394955991', NULL, 'abduabd284@gmail.com', '$2y$10$Ud7GpkWK07t7PFMpp0y6NuC7pti9UhWxpF9ymh2aXxJKYSnkcunpW', NULL, '2024-07-13 13:52:45', '2024-08-17 16:13:42', 0, 0, 'fbf51bd270ff6461ed520325b4c1ddf9', 'Yes', 'a2d339c8da870692983f2eac3a267bab', 0, 'test', 'test', NULL, 'test - Fallujah - 33 - Iraq', NULL, NULL, NULL, '1723910366whoarewe-jpg.jpg', '1723910367WhatsAppImage2024-08-07at71558AM2jpeg.jpeg', '1723910367WhatsAppImage2024-08-07at71559AMjpeg.jpeg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-10-01', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#ffffff', 0, NULL, NULL),
(83, 'muhammed', NULL, NULL, NULL, NULL, NULL, NULL, '61/5 akdeniz cad fatih istanbul turkye', '05365439850', NULL, 'almas.d.m2020@gmail.com', '$2y$10$iRXURwj7YKDWkB0u5HJWZOitl0fAaNZczqMzX94nqtc3Jbs4dKbfu', NULL, '2024-07-13 14:28:44', '2024-07-13 14:28:44', 0, 0, '98a6752d3cf2d455ee052ce92ea9db0b', 'Yes', '6db44ff6d1cfb7f739d64694acad824e', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(84, 'muhammed', NULL, NULL, NULL, NULL, NULL, NULL, '61/5 akdeniz cad fatih istanbul turkye', '05365439850', NULL, 'admin1@gmail.com', '$2y$10$y0J0NkV/2ZeDqOsm9sDrDeGKNAnfsleeSe6rrDsIhMtYxmMOuGCQq', NULL, '2024-07-13 14:34:19', '2024-07-13 14:48:31', 0, 0, '0f38c584b5c3d5de5730de701c014389', 'Yes', '0c03564e54f96a5388e51db0dff21062', 0, 'amr', 'amr', NULL, '61/5 akdeniz cad fatih istanbul turkye - Fallujah - 33 - Iraq', NULL, NULL, NULL, '1720882111welcometoazrarpng.png', '1720882111doitpng.png', '1720882111azrarpng.png', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-10-11', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(85, 'Sazo', NULL, NULL, NULL, NULL, NULL, NULL, 'karkouj', '+96455s6sd', NULL, 'sasa@gmail.com', '$2y$10$XMpOTXVkzKP1DGNw0nNTke2T6HjXb0vWUjNm8uUlVafaq7mHj3Fyy', NULL, '2024-07-13 16:42:13', '2024-07-13 16:42:13', 0, 0, '0805521431ef5193c55743cb929fdd62', 'Yes', '95e8b0fe064f81a7879fd014246e8606', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(86, 'sazo', NULL, NULL, NULL, NULL, NULL, NULL, 'sd', '+964964', NULL, 'sas@gmail.com', '$2y$10$V1YSQck3insbHql/6.wqk.Vhel56g1atqQRUPeJTv0Z8saMrX2pKK', NULL, '2024-07-13 16:45:38', '2024-07-13 16:46:36', 0, 0, 'a87ca5a9fe91a109dfcb98c6f8bd684d', 'Yes', 'a52976d04f990aae1021c51a0d365528', 0, 'sd', 'dsd', NULL, 'zsd - Az Zubayr - 34 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-08-12', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(87, 'hasab', NULL, NULL, NULL, NULL, NULL, NULL, 'dahuk', '+964556826244', NULL, 'sanar@gmail.com', '$2y$10$PqvopHHDLjuPhFtT7Q1HAusJ1JSKPSsLhZwnP4McvPepC6kAOd6XC', NULL, '2024-07-14 13:34:06', '2024-07-14 13:34:06', 0, 0, '2f41fa17d3d975999165d420d63ee1b0', 'Yes', 'dd6897cd790dfde24ece617b805342b3', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(88, 'hasab', NULL, NULL, NULL, NULL, NULL, NULL, 'dahuk', '+964556826244', NULL, 'sanab@gmail.com', '$2y$10$G/KC.s.W7L2JSZgiJEs69ecPq1F5pau273ivZT6ohI4KFAOvj7S.m', NULL, '2024-07-14 13:36:53', '2024-07-14 13:39:39', 0, 0, 'ec92ba27c550f8524b46256931b412b6', 'Yes', '6ff347c670bb40aa2b835c573b91145b', 0, 'hasww', 'sss', NULL, 'vas - Amarah - 46 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-08-13', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(89, 'MacKenzie Gilliam', NULL, NULL, NULL, NULL, NULL, NULL, 'Adipisicing debitis', '+1 (224) 271-3563', NULL, 'nifykyqinu@mailinator.com', '$2y$10$DRwKwHEk45LB0LZxDdk47uAvzTZ6mE1lOQxCniIwRRQX4SB9eH9xq', NULL, '2024-07-15 10:52:02', '2024-07-15 11:09:42', 0, 0, 'fe5a3ed0a5ca6b21f7592cbf82a0d170', 'Yes', '9e2ed302db3686297108c6ba80c4889f', 0, 'Laura Duncan', 'Bernard Bradford', '309', 'Enim architecto nesc', '824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-10-13', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(90, 'fodihfer', NULL, NULL, NULL, NULL, NULL, NULL, 'fesfs', '+964', NULL, 'ferfa@yahoo.com', '$2y$10$ueUoJZIC6wel9WNzIoNIf.Dxy5MTyuckFY8jJwzD9Dix0qAASkeaa', NULL, '2024-07-15 12:10:49', '2024-07-15 13:53:14', 0, 0, 'aa2765a0a2fb4729fd8e342afa1af99d', 'Yes', '4316a71042a842a17a81462d0027b7c4', 0, 'hamza12', 'bayte', '2', 'متجر البسة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-09-13', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(91, 'ihorg', NULL, NULL, NULL, NULL, NULL, NULL, 'rfgerdg', '+964ggt', NULL, 'grfgrfd@yahoo.com', '$2y$10$FGlolLcvim7uIvzgNYmojejROhupWj0GtJ9Fv2AxT3P8KUkZQum3W', NULL, '2024-07-15 12:20:54', '2024-07-15 12:20:54', 0, 0, '4c2e62e7f4f33ddbc57f01cb75c6cc1c', 'Yes', '46d540a1ba5789ada630e501fdb5885d', 0, 'gtrg', 'grtg', NULL, 'fgbrg - Baghdad - 32 - Iraq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(92, 'humam alhowri', '17210569911720886215testpngpng.png', NULL, NULL, 'Iraq', NULL, NULL, 'turkiye/istanbul', '+964 5555555555', NULL, 'humamhwri44222@gmail.com', '$2y$10$wfFP/4F7R2v/DGAmGBMLoebgOF4YWA.69V0YM95g4/g1uSQtaIB0m', NULL, '2024-07-15 14:16:26', '2024-07-15 15:23:11', 0, 0, '7b505a296fae96da186040fcedec5dba', 'Yes', 'deb3e8806b7fe28651b6cf1c5a0bc81a', 0, '11', '11', '11', '111', '11', NULL, NULL, '1721055951png.png', '1721055951png.png', '1721055951png.png', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-08-14', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(93, 'humam alhowri', NULL, NULL, NULL, NULL, NULL, NULL, 'turkiye', '0681606005', NULL, 'humamhwri55@gmail.com', '$2y$10$T.VJog45cGA.9M597HQjle7UAU94gBUe8lTgccxxK.3CVAN6MVV4.', NULL, '2024-07-15 17:00:26', '2024-07-15 17:20:42', 0, 0, 'd4fab4e70b6978fe65ccbacab8f1790d', 'Yes', '41511f298e199d74259085a28c7d4654', 0, 'Humam2', 'HUMAM2', '3', '1', NULL, NULL, NULL, '17210640422png.png', '17210640421720886215testpngpng.png', '17210640421720886215testpngpng.png', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-08-14', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(94, 'h', NULL, NULL, NULL, NULL, NULL, NULL, 'h', '+9647750000001', NULL, 'h@yahoo.com', '$2y$10$Pj9qV5obUZI9fIYNRjz4ge7LQ3/RG.A8RCWiEV5lR.dkTJeD4SxxK', NULL, '2024-07-15 17:38:31', '2024-07-15 17:38:31', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(95, 'h', NULL, NULL, NULL, NULL, NULL, NULL, 'h', '+905379445005', NULL, 'hh@yahoo.com', '$2y$10$vvcqNiDeMxfuYEcsdspcR.mALiGlUjHclaRwfct2vcKZcVA3XRYuO', NULL, '2024-07-17 16:19:30', '2024-07-17 16:19:30', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(98, 'aHMAD', NULL, NULL, NULL, NULL, NULL, NULL, 'WER20', '03525562656', NULL, 'ahmadmostfa227@gmail.com', '$2y$10$RYDHE0bn461oIA/flDlZKeCrb2UkcMOH7VpLqLfaxb5H.zMREQLZm', NULL, '2024-07-18 12:09:28', '2024-07-18 12:11:32', 0, 0, '3258d9666413cd791235cf14f88c7eeb', 'Yes', '5008398a0fdad43499a23b48a31e69e0', 0, 'wersy', 'ahmadofe', NULL, 'e349 - قضاء دقواق - 45 - العراق', NULL, NULL, NULL, '172130469214jpg.jpg', '172130469221jpg.jpg', '172130469214jpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(99, 'mm', NULL, NULL, NULL, NULL, NULL, NULL, 'ist', '+964666666666', NULL, 'mascom393@gmail.com', '$2y$10$G0aNQfelqgbuyfcK/mRI2uyTNAhbKVz2UMPCu64ykPIfcjnhd2YPG', NULL, '2024-07-18 12:26:11', '2024-08-02 06:02:21', 0, 0, 'a8e6db2cbe02fa5c1c3f0281bbba79ca', 'Yes', '471aae4b4c6432661342b866f12090f5', 0, 'batbo', 'mm', NULL, 'امام مول المنصور - المنصور - 32 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-09-16', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(100, 'jbkvkjfv', NULL, NULL, NULL, NULL, NULL, NULL, 'vdefrv', '+964', NULL, 'fdvldkh@yahoo.com', '$2y$10$IeR.TpIDRPHc6CazYEBNDOaXcC.M2f3ybs1xv5KwgkPeNLKARayjy', NULL, '2024-07-18 12:54:37', '2024-07-24 18:49:06', 0, 0, 'b8f697446726dbd72cd7d1a2d8c9f4ba', 'Yes', '924f5cea2006817d037636bd3a7e6c1f', 0, 'rgverd', 'vdef', NULL, 'vdefrv - مدينة الصدر - 32 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(101, 'mostafaD199', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarasw', '+964', NULL, 'mostafaD199@gmail.com', '$2y$10$3FE6czonZJzVB.wC8UE6q.KnNhUNV7rq9Odg8YLU7r1SZhl32MwEO', NULL, '2024-07-24 00:10:30', '2024-09-01 16:41:45', 0, 0, 'aca822bddcd07010df169dfc90991bac', 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1721829471m2jpg.jpg', '1721829471m2jpg.jpg', '1721829471m2jpg.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2024-10-22', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=RB42doSuEd', 'RB42doSuEd', 5, '2024-07-14', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(102, 'mostafaD33333', '172183533030de0589-9294-4b93-8c6c-f87aa6f0cc03jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'anksarasw', '+96455554', NULL, 'mostafaD33333@gmail.com', '$2y$10$B70OqZcI2g2b1ndZ7.SqFOrJuyrbebxcAJoR1PawQxwDjqAwdvUz6', NULL, '2024-07-24 20:35:12', '2024-09-01 16:42:01', 0, 0, 'd691f773daca3c5d762a9160ea794092', 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2025-07-24', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=vcLqcupJbH', 'vcLqcupJbH', 3, '2024-08-08', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(103, 'mostafaD8887', NULL, NULL, NULL, NULL, NULL, NULL, 'anksarasw', '+964', NULL, 'mostafaD8887@gmail.com', '$2y$10$XR45HMaAxdRdyUQIk.BqZeMUq0CTx7LMJZ8bgKtxX3Mm6LN9wazca', NULL, '2024-07-25 01:27:32', '2024-09-01 16:42:12', 0, 0, '7412af036c5a0bff89f46c2d6fb62acc', 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2024-10-22', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=qFyb2pxDWD', 'qFyb2pxDWD', 3, '2024-07-01', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(104, 'sfsgs fvdvbdf', NULL, NULL, NULL, NULL, NULL, NULL, 'WER20', '3525562asda656', NULL, 'ahmadm3sasfa27@gmail.com', '$2y$10$6QZLcj8UDc9duT3tRo3theed.OkjK/uLH2u9NT4jZ8cidaRxXDpWu', NULL, '2024-08-01 04:20:21', '2024-08-01 04:20:21', 0, 0, '688363a77dff2faa2ffc49c0e28166d7', 'Yes', 'b2771cf23453509fb21380ea83baf252', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8001/user/vendor-register?referral_code=TLjSptmdag', 'TLjSptmdag', 0, '2024-07-05', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(105, 'reerterg', NULL, NULL, NULL, NULL, NULL, NULL, 'WER20rr', '+9643525562656', NULL, 'ahmadmer3sasfa27@gmail.com', '$2y$10$ILtRiNC7jTwYZ/EEjg5oreaCPh281bILx0mwKdTqXsMj.1JhtSqc6', NULL, '2024-08-01 04:26:20', '2024-08-03 20:05:42', 0, 0, 'd1a5116abc2883cd13d7f682b0f946e2', 'Yes', 'a1af9eff1c8cdf806e2cb5f3bc9b956e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8001/user/vendor-register?referral_code=3XCb4L8IST', '3XCb4L8IST', 0, '2024-07-02', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(106, 'ewfwf', NULL, NULL, NULL, NULL, NULL, NULL, 'WER20', '+964653525562656', NULL, 'admiryhutn@gmail.com', '$2y$10$EhVjgtVB4LIkajx1/348IuozT8rQBjXyR1mom3aE5uydO3mAy4DQO', NULL, '2024-08-01 11:14:12', '2024-08-03 20:05:48', 0, 0, '1acdcf9c93677bcd8d57cc1f0b8a8e69', 'Yes', '577e034e23c4c51580a5755c92959b22', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2024-08-31', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=fLfIPya7E5', 'fLfIPya7E5', 0, '2024-07-02', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(107, 'wfwsfw', NULL, NULL, NULL, NULL, NULL, NULL, 'sfsfsdf', '+9643525562656', NULL, 'adfsfmin@gmail.com', '$2y$10$eQw38Oq8DZ6E9grbfD7kXuc/HzBkZM58dcmF6K6KELP2lgV6LUSi2', NULL, '2024-08-02 05:44:29', '2024-08-03 20:05:54', 0, 0, 'df58e5ad03b5321984176208235a5d4e', 'Yes', '4f2bcb60e14ac66c4ac874d199ffc63b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=Eeumrywv1q', 'Eeumrywv1q', 0, '2024-08-07', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(108, 'anas', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96444444433', NULL, 'moustaf.drewsh@gmail.com', '$2y$10$gyIqmjxz6nCuhH6oprKUtOumRLb5N.0e213WP0r20yrhZxmo5Nnq.', NULL, '2024-08-03 18:42:04', '2024-08-03 21:46:44', 0, 0, '269cbced2e6e8b16cc44c3fdf6dfa9fb', 'Yes', 'cdade06871aab42ddee3568418f28f96', 0, 'moustaf', 'www2', '654', 'azaz -  -  - Syrian Arab Republic', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8001/user/vendor-register?referral_code=3NUTw4kPRR', '3NUTw4kPRR', 0, '2024-07-30', 'male', 0, '#207a80', 0, NULL, NULL),
(109, 'anas1', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96455555555', NULL, 'moustaf.drewsh1@gmail.com', '$2y$10$cm7eP0xgBVqNsGNCWpM13OG4jqjcSiZLhMy1Wab5ODTY95idc4Fpi', NULL, '2024-08-03 18:51:00', '2024-08-03 19:22:24', 0, 0, '0e05004416a3abe0e973ad87f870ee2e', 'Yes', 'b420b83040bfc2d1b1f6d9826a245d12', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8001/user/vendor-register?referral_code=Xy4Upaawy5', 'Xy4Upaawy5', 0, '2024-09-04', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(110, 'anas23', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+9645485555', NULL, 'moustaf.drewsh132@gmail.com', '$2y$10$g3BkmsOaFpVL8.75BtG4vuddrxrQwb2p23ACmq8A2aW39lLFiU6aK', NULL, '2024-08-04 15:15:07', '2024-08-04 15:15:51', 0, 0, '9e316861fcbefa996b661df527ed511c', 'Yes', 'e993952ee66859173f826c7b1d3a0030', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=NsA87pDVG7', 'NsA87pDVG7', 0, '2024-08-01', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(111, 'anas23', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+9645485555', NULL, 'moustaf.drewsh1132@gmail.com', '$2y$10$wE1lHGCIbNVXsV2CgsMhqO/x8.vHy2mwoz58BSxulLsAmS1uW/44m', NULL, '2024-08-04 15:16:40', '2024-08-04 15:19:56', 0, 0, '6e71cd97f664a4c47775580d4fad74d1', 'Yes', 'f99c3c8aae8b597d629ab7104eefdbc5', 0, 'moustafw', 'www23', '444', 'azaz -  -  - Syrian Arab Republic', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=7SGpWvXyqT', '7SGpWvXyqT', 0, '2024-08-20', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(112, 'anas23333', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96454855553', NULL, 'moustaf.drewsh31332@gmail.com', '$2y$10$8KJM5tUYjNjXeU1nrlZPh.BYRt3XqKHVCAiU6PkH4bkn7U2T2KDoy', NULL, '2024-08-04 15:59:30', '2024-08-04 17:47:53', 0, 0, 'b352fc080e66c8501a9b080c337931f4', 'Yes', '229a0f3e6cb5d4b38238567c432b414e', 0, 'moustaf33', 'www23', '5553', 'azaz -  -  - Syrian Arab Republic', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2025-08-04', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=21swwosgd5', '21swwosgd5', 0, '2024-08-11', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(113, 'anas23333', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96454855553', NULL, 'moustaf.jyyy@gmail.com', '$2y$10$rUhPqv1/CHH1jv54Bm9x8OLTrRLu/hjnrh4zbwKY5d3yj5d22oY9C', NULL, '2024-08-04 16:07:12', '2024-08-04 19:58:10', 0, 0, 'dbff7aad53b400007a37909d560e22be', 'Yes', '6d9f5cd6447b36715918b36b47a45eb3', 0, 'moustaf33w', 'www23', '5553', 'azaz -  -  - Syrian Arab Republic', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=Sshgw6Qtay', 'Sshgw6Qtay', 0, '2024-08-03', 'male', 0, '#15bf4f', 0, NULL, NULL),
(114, 'nas23333', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96454855553', NULL, 'moustafjuuu@gmail.com', '$2y$10$Xi.BTEAMcxZ0dqLjtfgBE.dXZjK7u7ZBWxeUso9MsVwZFSNcfLXHK', NULL, '2024-08-04 16:35:37', '2024-08-04 18:42:51', 0, 0, 'c01df4301f22ddf73b997e4097eb6eef', 'Yes', '5f86947030080de53765153a2ae4800c', 0, 'moustaf33wh', 'www23', '5553', 'azaz -  -  - Syrian Arab Republic', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-09-03', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=VJJF1D1qdy', 'VJJF1D1qdy', 0, '2024-08-12', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(115, 'nas23333', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '54855553', NULL, 'moustafjuussu@gmail.com', '$2y$10$RQwCXUHdes12VXh5UFYHoe/v4Ugid/J8NcwpGYRk8V.6T0MScNqWy', NULL, '2024-08-04 18:04:34', '2024-08-04 18:04:34', 0, 0, 'e9e5cdb2ac42b47a9cc830a92559a8b5', 'Yes', '623ac2ebcadce7f0ae81c4642cd14f9a', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=ykRwtVhJKS', 'ykRwtVhJKS', 0, '2024-08-06', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(116, 'ahmad1', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar', '+964585555', NULL, 'ahmad11@gmail.com', '$2y$10$28W76VB4xjuyJMsymlob.eDY4bf.AZlaz73VFOwY7/QMkeOGbKT6S', NULL, '2024-08-04 20:23:58', '2024-08-05 15:26:05', 0, 0, '48f3a773fa3e742b1e1becc93b8b61f0', 'Yes', '7eba39387a5ff81234583b3c23a624fd', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=e4sdUmlS9U', 'e4sdUmlS9U', 0, '2024-08-13', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(117, 'ahmad12', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar', '+964585555', NULL, 'ahmad112@gmail.com', '$2y$10$6R3WQLzw81LM8bsEIJ2JYeV2rjD0YpwmxfJbjco/TRl3NkNj78/F.', NULL, '2024-08-04 20:28:37', '2024-08-04 21:00:04', 0, 0, 'dc788c46f64a976d0659ed9c22491539', 'Yes', '09bbb4508c938e5b18fa37465cae7104', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=iqGkK1rVZs', 'iqGkK1rVZs', 0, '2024-08-13', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(118, 'ahmad12', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar', '+964585555', NULL, 'ahmad11ss2@gmail.com', '$2y$10$jGTue.ucn3r4Ptbag4rWm.Cu8dVHxSZ1498QnsRJrMuEoJTzLanjC', NULL, '2024-08-04 20:29:35', '2024-08-04 21:00:10', 0, 0, '6a5415da8c97cbe85d6fbd066ec81f8a', 'Yes', 'e55c87927c65df70b2fe1f6f6303ca5b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=NEGJQMCYjb', 'NEGJQMCYjb', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(119, 'ahmad123', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar', '+964585555', NULL, 'mmmmm3@gmail.com', '$2y$10$aGtBDMLy2qYz0UsOyN1/I.QyvicG64WV66RON9F6efqDrlckOpMTO', NULL, '2024-08-04 20:54:43', '2024-08-04 21:00:22', 0, 0, 'e8707513508b118a5c2b1bac71e80367', 'Yes', '85a953e546ff5119a08d618f26789b07', 0, 'mmmmm3', 'www2', '4556', 'mostafa3333 -  -  - Syrian Arab Republic', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=Oy2R27OnYw', 'Oy2R27OnYw', 0, '2024-08-02', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(120, 'nas23333', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96454855553', NULL, 'moustafjuu1u@gmail.com', '$2y$10$r.re8betv7knnTsri8YvU.hrbDh.wwU5RvnRwJmQGBDsv4wsp7V1a', NULL, '2024-08-05 14:57:49', '2024-08-05 14:57:49', 0, 0, 'cac39f0e4d222ccf45602c9b83a566a7', 'Yes', '554c7946bb47858e274bf7e36bba045f', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=SytySJ56ud', 'SytySJ56ud', 0, '2024-08-06', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(121, 'ahmad1234', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar', '+964585555', NULL, 'mmmmm43@gmail.com', '$2y$10$kQ5rRSaFsqilgZnkNhSDw.1apJ8DuN3aFd/rUAde0S5G7WhYgdklG', NULL, '2024-08-05 15:00:24', '2024-08-05 15:25:19', 0, 0, '521d1972074154c95e49746135e413ef', 'Yes', 'df4743e8ba6324c79e56aa66b3ebc90b', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=YPzHlM026V', 'YPzHlM026V', 0, '2024-07-31', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(122, 'anas3', NULL, NULL, NULL, NULL, NULL, NULL, 'axa', '+964588888', NULL, 'moustaf.drew33sh@gmail.com', '$2y$10$Rfzz/sfw.hKNZqVAFGhIru7SPsa1ZMZSE0t0SWigU9HxFUsyhxA1q', NULL, '2024-08-05 15:08:17', '2024-08-05 15:08:17', 0, 0, '8563fe2199453db137f3ac9aeb250ed9', 'No', 'e34d9f028a4020b02e166ed5207176be', 0, 'moustaf', 'www221', '444', 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=dytS82OTvF', 'dytS82OTvF', 0, '2024-08-01', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(123, 'anas3', NULL, NULL, NULL, NULL, NULL, NULL, 'axa', '+964588888', NULL, 'moustaf22.drew33sh@gmail.com', '$2y$10$zxEXEeAhZLQaJt8cmEcVye3FgnLHuWHi.bPdlQqG4juYk2gft9c7G', NULL, '2024-08-05 15:08:39', '2024-08-05 15:08:39', 0, 0, '46d3b27c5c8aa0df2644fd5d57cf0c71', 'No', '017d1b4fce36c67891cf61d460e837d9', 0, 'moustaf2222', 'www221', '444', 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=UZbq3Irg2i', 'UZbq3Irg2i', 0, '2024-08-01', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(124, 'anas3', NULL, NULL, NULL, NULL, NULL, NULL, 'axa', '+964588888', NULL, 'mous2taf22.drew33sh@gmail.com', '$2y$10$dFUD.ymMclMmvhx9r9mGLu.u.Or7YmMJm40J007gG7W9g2HJoEgIy', NULL, '2024-08-05 15:09:02', '2024-08-05 15:09:02', 0, 0, 'fd70a86f7228610f457398128144af62', 'No', 'a1c76cda53cb861d08ba5126362ff3b7', 0, 'moustaf2222222222222', 'www2212222222222', '4442222', 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=a2gYsAEpIo', 'a2gYsAEpIo', 0, '2024-08-01', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(125, 'anas3', NULL, NULL, NULL, NULL, NULL, NULL, 'axa', '+964588888', NULL, 'mous2taf2aq2.drew33sh@gmail.com', '$2y$10$mAMKJakwpN/qL0iubrfKpuhKv09sR..tRpc60fXIdMStKsCeeli56', NULL, '2024-08-05 15:10:05', '2024-08-05 15:10:05', 0, 0, 'd1ea700c734721bfb37ed1e42eaf8f60', 'No', 'a30ec1b58bf4904eab9fb51bf44d3003', 0, 'moustaf2222222a222222k', 'www221222222222aa2', '44422222', 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=xO0Eze9VnN', 'xO0Eze9VnN', 0, '2024-08-01', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(126, 'anas3', NULL, NULL, NULL, NULL, NULL, NULL, 'axa', '+964588888', NULL, 'moustaf222222@gmail.com', '$2y$10$QzP69oq0KexuR3Jsr6nhGe5gXhb8kF067T7sCMz1LBjWViOKQqtQW', NULL, '2024-08-05 15:20:18', '2024-08-05 15:20:18', 0, 0, 'ea4190bde15ba09b8afeab5174b55e67', 'No', 'db2845a1949cd32ca1061504950f2266', 0, 'moustaf222222w', 'moustaf222222', '444', 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=sAmjc9f4N2', 'sAmjc9f4N2', 0, '2024-08-27', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(127, 'anas3', NULL, NULL, NULL, NULL, NULL, NULL, 'axa', '+964588888', NULL, 'moustaf22222s2@gmail.com', '$2y$10$anM7iY.ekNDgFnYjWFZa0.MxFKjiFNVYjNGiTjbanptPTzGvj90Lm', NULL, '2024-08-05 15:21:06', '2024-08-05 15:21:06', 0, 0, 'cd1fb9870bc90e962a85f6380d0a4c79', 'No', '3a53c15bca236ff31a6044473bb4d4ef', 0, 'moustaf222222w', 'moustaf222222', '444', 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=B9CVacaUF6', 'B9CVacaUF6', 0, '2024-08-17', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(128, 'anas33', NULL, NULL, NULL, NULL, NULL, NULL, 'axae', '+964588888', NULL, 'anas33@gmail.com', '$2y$10$BFVyVd4X0.sSYgS1bFceEe2EupGaKui1tDWAlrjx/76e8nZLfYQEO', NULL, '2024-08-05 15:22:27', '2024-08-05 15:22:27', 0, 0, 'db54ead43444da35d20e39133f503cf3', 'No', 'c1315bf3a4bc4138af88f10c7dc1b04f', 0, 'anas33w', 'anas33w', NULL, 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=V5YvfGNXCj', 'V5YvfGNXCj', 0, '2024-08-24', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(129, 'anas33', NULL, NULL, NULL, NULL, NULL, NULL, 'axae', '+964588888', NULL, 'anasss33@gmail.com', '$2y$10$aXdKEofe.0EBE/wGgv0KLOOcZSg.ow69BhCHlpnK5CU2NTO2f7Cty', NULL, '2024-08-05 15:22:35', '2024-08-05 15:22:35', 0, 0, '6aff9f24bf06df18c4aa07c6b2b16b3f', 'No', 'b9d5c9432ba2218dd64c62fa561b6812', 0, 'anas33w', 'anas33w', NULL, 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=sJfgxcb9bJ', 'sJfgxcb9bJ', 0, '2024-08-24', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(130, 'anas33', NULL, NULL, NULL, NULL, NULL, NULL, 'axae', '+964588888', NULL, 'anas33anas33@gmail.com', '$2y$10$D3FGtgoKGVQ4hHjjdQOAxe7GJ.KpjPBrz1D/mtANlwuUdOMk5IAua', NULL, '2024-08-05 15:22:43', '2024-08-05 15:22:43', 0, 0, '4e7f4ac08b39fe46e09df075b9ed75aa', 'No', 'ebec7cbeaf7055ef87af4468790c8bf9', 0, 'anas33w', 'anas33w', NULL, 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=ovyOdSbpf2', 'ovyOdSbpf2', 0, '2024-08-24', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(131, 'anas33', NULL, NULL, NULL, NULL, NULL, NULL, 'axae', '+964588888', NULL, 'mmmmmm4@gmail.com', '$2y$10$F38X3j/V9CHl1Vl6lXKTqOh6.oj.va5dvL5MT4GOPgGuCo0QPNJLO', NULL, '2024-08-05 15:22:54', '2024-08-05 15:22:54', 0, 0, '8c3a06243aabec9f6bc096ff5fc74c60', 'No', '57d35c8167120600438c0c11a635e82e', 0, 'anas33w', 'anas33w', NULL, 'axaFinalTest5 -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=VjrFO8p7jX', 'VjrFO8p7jX', 0, '2024-08-24', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(132, 'anas33', NULL, NULL, NULL, NULL, NULL, NULL, 'axae', '+964588888', NULL, 'miikjbkjb@gmail.com', '$2y$10$cYGtPAaU41GUQ820Drv6PevY/I3HzxDbiZ1mqTlEKGK637f571V5.', NULL, '2024-08-05 15:24:15', '2024-08-05 15:24:15', 0, 0, 'a8b8cc4db124b64fda3faed05fb78a96', 'No', '99fa234090eb9b99eaf57def5518563e', 0, 'anas33w2', 'anas33w2', NULL, 'axaFinalTest5ff -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=emeU9qKhzf', 'emeU9qKhzf', 0, '2024-08-20', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(133, 'anas33', NULL, NULL, NULL, NULL, NULL, NULL, 'axae', '+964588888', NULL, 'miikjbmkjb@gmail.com', '$2y$10$KRKHmMndHuMH3S.lQvpI4eSFsV7.3ImumMgCLbaYlmkTPErlP0u0K', NULL, '2024-08-05 15:24:43', '2024-08-05 15:24:43', 0, 0, 'a023de78ba545acfeeb163ab18c1b2f2', 'No', '848c9c0b539c2c71a52c2587e7a4496a', 0, 'nnnnnnnnnnnnnns', 'mmmmmms', NULL, 'axaFinalTest5ff -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=HnoIPkWzj5', 'HnoIPkWzj5', 0, '2024-08-20', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(134, 'anas33', NULL, NULL, NULL, NULL, NULL, NULL, 'axae', '+964588888', NULL, 'anassss33@gmail.com', '$2y$10$VFNIprAho42i7Ur3oQV3oO0so.dJMnoMeCvB3iqXAHQKSvK0v5dBi', NULL, '2024-08-05 15:25:36', '2024-08-05 15:53:11', 0, 0, '36a2391cadf731f0e2160eae59e5ad4a', 'Yes', '3f569c7e9bb615adac8d5393a4011d58', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=yMtiUxFeO4', 'yMtiUxFeO4', 0, '2024-08-27', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(135, 'anas222', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96444444433', NULL, 'modrewsh@gmail.com', '$2y$10$ZW5rTz5ZcHEq8W/t4KSJDuAhVTlXmH213/3FFzyq9nhnRRNVBIwXa', NULL, '2024-08-05 15:37:53', '2024-08-05 15:37:53', 0, 0, 'e2ca75e9f707fcda1c76724581261d30', 'No', 'c63c061d438d389823934880ef4a599c', 0, NULL, 'modrewshs', '8855', 'ankarw -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=9Ci1pzsmwr', '9Ci1pzsmwr', 0, '2024-09-05', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(136, 'moiusb', NULL, NULL, NULL, NULL, NULL, NULL, 'abab', '+9649999999', NULL, 'moiusb@gmail.com', '$2y$10$WXRopQGBoDYfFfdMzhO45ejeAroHSJJuLr4cBjkEYs2RbzhYopDCG', NULL, '2024-08-05 15:48:00', '2024-08-05 15:48:00', 0, 0, '3b7cc4050adc87bcc4a00c20b4d0dc83', 'No', '7067d55cd1ce5c2c992062ecaa702c5a', 0, 'moiusbyyyy', 'kjkjb', '548245', 'fabsg -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=9Zx4CPiwlP', '9Zx4CPiwlP', 0, '2024-08-13', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(137, 'moiusb', NULL, NULL, NULL, NULL, NULL, NULL, 'abab', '+9649999999', NULL, 'moiusbs@gmail.com', '$2y$10$1Mzkq706pUaxtV2YBgVCjuTbRnpQCeix0UruVl0gFx0s6BxdJSsKu', NULL, '2024-08-05 15:50:02', '2024-08-05 15:50:02', 0, 0, '643d551650896514c105949d408f42cb', 'Yes', '7119125907977916f66c24701ff40917', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=3KvtNgukkG', '3KvtNgukkG', 0, '2024-08-14', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(138, 'moiusbz', NULL, NULL, NULL, NULL, NULL, NULL, 'ababz', '+96499999992', NULL, 'moiusbws@gmail.com', '$2y$10$XBHPZW0UVu2zbMrwkrbGa.7OFG4APme4aRaJCXkRxzKvJaa5S3pQC', NULL, '2024-08-05 15:51:17', '2024-08-05 15:51:17', 0, 0, '2f8572332a58aba81735bb467026406d', 'No', 'a20c2b4c73b8b4a7584d5f8ebc5cf8c8', 0, 'moiusbyyyyz', 'kjkjbz', '5482452', 'fabsgx -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=AuEoe8fKBb', 'AuEoe8fKBb', 0, '2024-08-20', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(139, 'moiusb', NULL, NULL, NULL, NULL, NULL, NULL, 'abab', '+9649999999', NULL, 'moiusssb@gmail.com', '$2y$10$a428RiRxEh7oGtk.SjGRiOgfMmokIikOIdKOH5POb6mOigJJr0Pjm', NULL, '2024-08-05 15:52:31', '2024-08-05 15:52:31', 0, 0, '4a6cdc7735304bf68185b7d32965a80c', 'Yes', '49705073bb157a591116ae7b3e17a1c9', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=9hJlS8goFT', '9hJlS8goFT', 0, '2024-08-12', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(140, 'modrewsh', NULL, NULL, NULL, NULL, NULL, NULL, 'ankamodrewswhr1', '+964984738', NULL, 'modrewswh@gmail.com', '$2y$10$8Tjp75kPsm1evqqt0OhRquv8/fPsqeNbqs2JGhieI1KGv0fOdxJ8u', NULL, '2024-08-05 15:54:46', '2024-08-05 15:57:52', 0, 0, 'c25ea247e56552a743c1766726467418', 'Yes', '59c8187651c54745eb930f804fb6d572', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=aqpRIwofHO', 'aqpRIwofHO', 0, '2024-08-25', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(141, 'modrewsh1', NULL, NULL, NULL, NULL, NULL, NULL, 'modrewsh1s', '+964984738', NULL, 'modrewsh1@gmail.com', '$2y$10$Alxlh66SuE9gNBAVm.FoHON90yVI.VoFk.m6gzvS.8vEqD8GzkSO.', NULL, '2024-08-05 15:57:39', '2024-08-05 16:00:09', 0, 0, '61f9e9eb5f6510876aaca01638027da7', 'Yes', 'c3a492cea9cdeb7d989c0623c5176cf9', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=JYFcYwdeR8', 'JYFcYwdeR8', 0, '2024-08-05', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(142, 'modrewsh12', NULL, NULL, NULL, NULL, NULL, NULL, 'modrewsh1s1', '+96444444433', NULL, 'modrewsh12@gmail.com', '$2y$10$5NNHfYyNdBkuORUEAzfbgeeKKIB/hpVIKCHbKF2rUMdkCVFWsBoXO', NULL, '2024-08-05 15:59:55', '2024-08-05 16:44:36', 0, 0, '915c8b5d64ffd21daaaa97af72a48020', 'Yes', '389e9da2da9521d19ff2bc0ae9b8424b', 0, 'modrewshrrrr', 'modrewsh121', '444', 'ankarw -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2025-08-05', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=8Nj6gu35jp', '8Nj6gu35jp', 0, '2024-08-07', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(143, 'ahmad12345', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3', '+964585555', NULL, 'ahmad12345@gmail.com', '$2y$10$/drf1z3a7.JEu7sK2KmTpu86imQaQtWRluFt9VrSYECAjQpxWhZau', NULL, '2024-08-05 16:34:25', '2024-08-05 16:34:25', 0, 0, '832d25c9e01711f566a4493065d2b377', 'No', '838da41bba5db42cda76f1ef38a90747', 0, 'ahmad12345e', 'www2ahmad12345', '477444', 'ahmad12345s -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=AIbym76COu', 'AIbym76COu', 0, '2024-08-18', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(144, 'ahmad12345', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3', '+964585555', NULL, 'ahmad1234115@gmail.com', '$2y$10$dA4xzwMfZ8UuPvHsUbCC8.k50JwGYRmVxbYa/yh4DVN/WmdMiqFlu', NULL, '2024-08-05 16:37:08', '2024-08-05 16:37:08', 0, 0, 'c4db15d536e23a0ff84a72a2d1f13bd8', 'No', '4ff894e00261a5496846eafbb3a56152', 0, 'ahmad12345e', 'www2ahmad12345', '477444', 'ahmad12345s -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=wzB7k6i0kX', 'wzB7k6i0kX', 0, '2024-08-19', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(145, 'nas23333', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96454855553', NULL, 'moustafju1uu@gmail.com', '$2y$10$tX/nhOYtDuY98XuPlFceIes6B9A4dBbboBkU3.hPjtamwgz3GyZrq', NULL, '2024-08-05 16:37:44', '2024-08-05 16:37:44', 0, 0, '116b778fa60732e792ec14302e0451d2', 'Yes', 'f92f12560d02da0c6ed840eef3343cfc', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=WN3EsCX1aV', 'WN3EsCX1aV', 0, '2024-08-27', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(146, 'ahmad123455', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ahmad123455@gmail.com', '$2y$10$rt98tdrnhoZeB/d1cYw6Ou0FrVI.rkZzIo2o.hWX4/5KQGKv9Qn5K', NULL, '2024-08-05 17:23:20', '2024-08-05 17:23:20', 0, 0, 'f993e74c1250282d5c808f336278f431', 'No', '5cd3677f0d6a90842e162639e5f05e5e', 0, 'ahmad123455a', 'ahmad123455a', '477444', 'ahmad12345s -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=1EfSKJRnac', '1EfSKJRnac', 0, '2024-08-15', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(147, 'nas23333', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96454855553', NULL, '1111@gmail.com', '$2y$10$UwgHhfaAbCXAT5jRfXOFre6tHbxplGtRPHLHIFSVZmjsn9GR1L6oq', NULL, '2024-08-05 17:27:23', '2024-08-05 17:27:23', 0, 0, 'e72f8560695fece45fccd93bbcd893f7', 'Yes', '98a05d606d9cb4ec8d1725bebeb7106d', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=wvHnUu2wfv', 'wvHnUu2wfv', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state_id`, `city_id`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `shop_image_left`, `shop_image_right`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `admin_commission`, `reward`, `email_token`, `referral_link`, `referral_code`, `points_vendor`, `birthdate`, `gender`, `points_user`, `background_color`, `is_verified`, `social_id`, `social_type`) VALUES
(148, 'ahmad123455', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ssss@gmail.com', '$2y$10$YrgMN4mQvQUh0sZISP365.gb64g0T6ZTiYjT8hzXe.4ETcH5g7UVG', NULL, '2024-08-05 17:31:05', '2024-08-05 17:31:05', 0, 0, '60fa0ff7cde83b6937b0c4ea84150a66', 'No', '42f5a033fc71a74090db19611c66363b', 0, 'ahmad123455a', 'ahmad123455a', '477444', 'ahmad12345s -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=NWU2oY7DRq', 'NWU2oY7DRq', 0, '2024-08-20', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(149, 'ahmad123455', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ahmad1234s55@gmail.com', '$2y$10$Q4qWq89ysMwA451QPPLczO4fxi4SMZqxz9j54rZHhB5jH4Wih1tSm', NULL, '2024-08-05 17:36:39', '2024-08-05 17:36:39', 0, 0, 'b5669c3af80a9f814f05dd6b40fecc88', 'No', '86bcd3b32019361bd0257fae46a09bba', 0, 'ahmad123455a', 'ahmad123455a', '477444', 'ahmad12345s -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=NCpTaJ1Mnh', 'NCpTaJ1Mnh', 0, '2024-08-17', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(150, 'ahmad1234556', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ahmad1234556@gmail.com', '$2y$10$OafCaZNvdTEpK2bhsBygcOW0TZccXfxmhZtKu8PVxVXyBE/XE8BZi', NULL, '2024-08-05 17:52:18', '2024-08-05 17:52:18', 0, 0, '2c69e94582923a4e9672204ba6b9ffda', 'Yes', '09ea923b6bb2f7e28e81bf9abe95d4e7', 0, 'ahmad1234556', 'ahmad1234556', '477444', 'ahmad1234556o -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=h1nFTbBRML', 'h1nFTbBRML', 0, '2024-08-15', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(151, 'ahmad12345567', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ahmad12345567@gmail.com', '$2y$10$/9lVSDwMY0h/qkv.RLNAcuUbEcex2o8TLrhxbTk.KYrKnmxHyBwRW', NULL, '2024-08-05 17:54:38', '2024-08-05 17:54:38', 0, 0, 'f64e8891fafa45f240bf5d1e32d4f250', 'No', '9de301f95d615a299e66e5fe2409b8e2', 0, 'ahmad12345567', 'ahmad12345567', '477444', 'ahmad12345567w -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=P6rDh9Xi4O', 'P6rDh9Xi4O', 0, '2024-08-19', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(152, 'ahmad123455678', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ahmad123455678@gmail.com', '$2y$10$RFLXqyQIc9MJM3ZmtpS1femvfKUAJXn.vTDJOaU0izGFpH/VYHhAy', NULL, '2024-08-05 18:53:33', '2024-08-05 18:53:33', 0, 0, 'a74c73477bd764bdb4fe0b181899a64c', 'No', 'fece0cca65fe96c070ab1485685933c2', 0, 'ahmad123455678w', 'ahmad123455678', '477444', 'ahmad123455678w -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=uVht0sBEx6', 'uVht0sBEx6', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(153, 'ahmad123455678', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ahmad123455s678@gmail.com', '$2y$10$KZ3uHOUE4e4Wls0pAUM1DuXI6tg21qcwUQRHrJbSzCU3Rt.ewr9pu', NULL, '2024-08-05 18:54:53', '2024-08-05 18:54:53', 0, 0, 'e8b9493798d73a7d3e767f0c83ed86d8', 'No', '652779a2ed672a9f452fcfefbe3c9e8b', 0, 'ahmad123455678w', 'ahmad123455678', '477444', 'ahmad123455678w -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=KyDVjluOlj', 'KyDVjluOlj', 0, '2024-07-31', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(154, 'ahmad123455678', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar3s', '+964585555', NULL, 'ahmad123455d678@gmail.com', '$2y$10$svqRC2cjsDR65x8pADkSnuCsMEGGLadflXGAdRxv.lUNSOBaiugUW', NULL, '2024-08-05 18:56:42', '2024-08-05 18:56:42', 0, 0, '7d5adc3d47172f82cf735b60760e61b5', 'Yes', 'f7d071aa4d509904423ab66632003fe5', 0, 'ahmad123455678w', 'ahmad123455678', '477444', 'ahmad123455678w -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=CPsdnMmeAI', 'CPsdnMmeAI', 0, '2024-08-13', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(155, 'Test1', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '+964567788', NULL, 'Test1@gmail.com', '$2y$10$vpaEHuH58fxc6I6m8RJjbOL3grC8m8c2ty3E/2OrtorZ1evLeCr4a', NULL, '2024-08-05 19:09:06', '2024-08-05 19:09:06', 0, 0, '7a8b8618b3dffbda019789383637e57e', 'Yes', '9f0c01ef7c524d79acae38f2b9e88612', 0, 'Test1', 'Test13', '7654', 'ankar -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=ALFELWCAtk', 'ALFELWCAtk', 0, '2024-08-15', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(156, 'Test2', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '+964567788', NULL, 'Test2@gmail.com', '$2y$10$6oIKc0fHABcqB.pqHWNd7ukE4bx7/EHIpw0ZbwVY2CzM3ywCU6t/W', NULL, '2024-08-05 19:10:13', '2024-08-05 19:10:13', 0, 0, 'f3152e1c5c6bb5867d9317d7f55db099', 'Yes', '1eb4816759f85f4fe85bae66a56396c6', 0, 'Test2', 'Test24', '7654', 'ankar -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=TPls2kFnxv', 'TPls2kFnxv', 0, '2024-08-10', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(157, 'Test3', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '+964567788', NULL, 'Test3@gmail.com', '$2y$10$DQGt0KzO/APSgZx9lKxUzOZuIvYGu293L8EvD76JTmOEEUdL/uloq', NULL, '2024-08-05 19:19:50', '2024-08-05 19:25:12', 0, 0, '7c45660fc973f1fef5ee49bdefc078ec', 'Yes', 'e130e07092f699d9958c6a549a4c8334', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=NEtHpUDE5r', 'NEtHpUDE5r', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(158, 'Test4', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '+964567788', NULL, 'Test4@gmail.com', '$2y$10$R72JL502pmljGUT9fLOpEuXnwBpyaND81s2xLChgtTZodtyziYPO6', NULL, '2024-08-05 19:25:37', '2024-08-05 19:25:59', 0, 0, 'ed3ef30fc99ed4e02b101a2c8bf618fc', 'Yes', 'bd132fa2b2cd0db598457c4e530f38e3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=xiWnyY1Lco', 'xiWnyY1Lco', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(159, 'Test4', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '+964567788', NULL, 'Test4l@gmail.com', '$2y$10$L75mxI6NqpEXg6hiIIP9fO29Pm/48gOq.HmGRqEJowEVAOqdymLBK', NULL, '2024-08-05 19:28:00', '2024-08-05 19:28:00', 0, 0, 'd8b312b74323a98142baf50bf5c4de61', 'No', '7ee675b26d188bf1c7b5942f8202135c', 0, 'Test4', 'Testw4', '7654', 'ankar -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=dVGnzlOEKH', 'dVGnzlOEKH', 0, '2024-08-11', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(160, 'Test4w', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '+964567788', NULL, 'Tests4@gmail.com', '$2y$10$xCWwjY7mJgix4u94LejfsODDxgFZDoZwhU6lYwN7anUqiBVXp6eGC', NULL, '2024-08-05 19:34:29', '2024-08-05 19:34:29', 0, 0, 'a122f7c7f1ce492ff2e6933b751e5ce4', 'No', 'fc11f0b7781b28f15bdff724307b121b', 0, 'Test4', 'Testw4', '7654', 'ankar -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=GAoyagw8lk', 'GAoyagw8lk', 0, '2024-08-15', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(161, 'Test4x', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '567788', NULL, 'Teddsstx4@gmail.com', '$2y$10$H6aiM1JyP7YAHlHWczjl7Oanx74674WQuhEVsMVfM0snyCcB5QgIy', NULL, '2024-08-05 19:39:43', '2024-08-05 19:39:43', 0, 0, '75b66f0f593cad01d6fa49f510a5a763', 'No', 'c67982d8fe51142551edcedb41c96d44', 0, 'Test4', 'Testw4', '7654', 'ankar -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=cKFdupNb2W', 'cKFdupNb2W', 0, '2024-08-03', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(162, 'Test4xs', NULL, NULL, NULL, NULL, NULL, NULL, 'ankarw', '567788', NULL, 'Teddsstsx4@gmail.com', '$2y$10$nnuWEpzSEfLalg1KvMi05OshRjU3qlOU/tdUZkHCMpaW0lJ7MPNGS', NULL, '2024-08-05 19:44:09', '2024-08-05 19:44:09', 0, 0, 'e27998caf8c5a985d915cefac2f8342e', 'Yes', '654c67b061b3a30c851fc631911a50c7', 0, 'Test4', 'Testw4', '7654', 'ankar -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=qVFSk2S3kw', 'qVFSk2S3kw', 0, '2024-08-07', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(163, 'mmmm', NULL, NULL, NULL, NULL, NULL, NULL, 'mmmmmmmmm', '567788', NULL, 'mmmmmmmmm@gmail.com', '$2y$10$VSUPkz5uvAcozIWO0qbm6.BVYxTAH39hSFRsxupEwu0C9CPuWNytu', NULL, '2024-08-05 19:45:55', '2024-08-05 19:45:55', 0, 0, 'b6a7690dee8986dd37df8c2864f11761', 'Yes', 'ca56eb134bd435f8037b1ce4f90ef2b3', 0, 'mmmmmmmmm122', 'mmmmmmmmm1', '7654', 'ankar -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=fRXckjh7lH', 'fRXckjh7lH', 0, '2024-08-07', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(164, 'mmmm', NULL, NULL, NULL, NULL, NULL, NULL, 'mmmmmmmmm', '567788', NULL, 'sss@gmail.csom', '$2y$10$2V90t5GvKvv//qGq4LP5h.BOl.l6.HqOnW3Wme/HTQ8XpFi0ERKr2', NULL, '2024-08-05 19:51:49', '2024-08-05 19:51:49', 0, 0, '94fb034507240862ac165d37c00913b6', 'Yes', 'c05778a104e2382aaa0a3cfc634fa291', 0, 'mmmmmmmmm122', 'mmmmmmmmm1', '7654', 'ankar -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=sgeBsIvWCd', 'sgeBsIvWCd', 0, '2024-08-03', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(165, 'Test4w', '1722942227cb3c4db9-79ff-4f44-8202-0194c40c8a39jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'ankarw', '+964567788', NULL, 'Test1114@gmail.com', '$2y$10$/9A.fCJkigfKLAsn1Kuj3eH7jtNXpnnou4mQAXASgbDstcw1z5Rha', NULL, '2024-08-05 19:56:10', '2024-08-06 16:03:47', 0, 0, 'ec63324e5737633d7ac324baa7112846', 'Yes', 'c6a6fb35ada1b7d69b1c9a57682d399a', 0, 'Test4', 'Testw41', '7654', 'ankar -  -  - Syrian Arab Republic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=fredIck8FA', 'fredIck8FA', 0, '2024-08-15', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(166, 'anas', NULL, NULL, NULL, NULL, NULL, NULL, 'ankar1', '+96444444433', NULL, 'moustahhh.drewsh@gmail.com', '$2y$10$w1y4QuSEQdChdH5H13LuO.kUTHH94.j0LsZd43aAEl38bpOLcclCy', NULL, '2024-08-06 19:53:25', '2024-08-06 19:53:25', 0, 0, 'b859fef2eda219e23899b712bf1a5492', 'Yes', '06403cd707df53e211ec277d7e992b37', 0, 'تتت', 'Testw41', '7654', 'ankar - المدائن - 32 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=ub2Jq9M20Q', 'ub2Jq9M20Q', 0, '2024-08-22', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(167, 'aHMADfef', NULL, NULL, NULL, NULL, NULL, NULL, 'WER20sgfs', '+96435255345262656', NULL, 'wwwwwwwwwwwfsdfasw@gmail.com', '$2y$10$My3phe7GCVTInHqIRvmsBuhrSyTDh77kS3/nEB9/FJ0dm5BT3tyUW', NULL, '2024-08-07 08:11:17', '2024-08-07 08:11:17', 0, 0, '0cc7bc32299669391ecfb156a40c26d5', 'No', 'ebca3933adbb1f317dfa5e71b87da979', 0, 'sgfs', 'sgdfg', '5', 'dwerfw - قضاء عين تمر - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:4343/user/vendor-register?referral_code=kauNl755RB', 'kauNl755RB', 0, '2024-08-06', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(168, 'aHMADdsw', NULL, NULL, NULL, NULL, NULL, NULL, 'ffdsf', '+964352235562656', NULL, 'ahmadfsm327@gmail.com', '$2y$10$E.LPnSGPkMCFexfbZKqHiOmXAVxn0PbkuQxKADTP9zV6VqBNM3asK', NULL, '2024-08-07 08:12:07', '2024-08-07 08:12:07', 0, 0, '7d1f46d727d63f9d6dec140e14bfe05a', 'No', '98269733237bb5c95d3fb85db6196d74', 0, 'sfs', 'fsf', '484', 'sfsf - الشرقاط - 48 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:4343/user/vendor-register?referral_code=uRHiCOMA5M', 'uRHiCOMA5M', 0, '2024-08-14', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(169, 'lfdsnvksdal', NULL, NULL, NULL, NULL, NULL, NULL, 'fdjgnsld', '+9644378235629378', NULL, 'klngkds@gmail.com', '$2y$10$20NWv5BjIus5WjTvNLg3F.wBEyxHb5uhl01hRekf/HNsVTOZdrduW', NULL, '2024-08-07 08:14:05', '2024-08-07 08:14:05', 0, 0, '0c6d31594fa3a480e32c93b5a83fcdf0', 'No', '46693f073814227572a07cc5a0fb4fc4', 0, 'fgnsldk', 'dgndsk;gn', '45646', 'zsdv - قضاء دقواق - 45 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:4343/user/vendor-register?referral_code=36TdUNBwmC', '36TdUNBwmC', 0, '2024-08-16', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(170, 'dfgag', NULL, NULL, NULL, NULL, NULL, NULL, 'fdjgnsld', '+9645324643', NULL, 'klngfdsgdfkds@gmail.com', '$2y$10$TzSvIUNoyr4RF.hXUV3sqOrF72l8oA6wYFTGMKaPw85ScKDjoO5Ym', NULL, '2024-08-07 08:16:27', '2024-08-07 08:16:27', 0, 0, '47fc3190ab43d34da1f3fe00cb5f32a4', 'No', '34ed3dcd192ab4835da305cc99582948', 0, 'aresgerg', 'feargf', '7865', 'ergtwegtw - إلتون كوبري - 45 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:4343/user/vendor-register?referral_code=CRfHnYMtm3', 'CRfHnYMtm3', 0, '2024-08-14', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(171, 'sgfgsd', '17229972431png.png', NULL, NULL, NULL, NULL, NULL, 'gfxbhsh', '+96463476', NULL, 'sgrsadg@gmail.com', '$2y$10$C9JQ.k2Nv9RKn/t0TM/VR.fqcrOo/b2MVlg/BKQKwloObOvJ8dXNi', NULL, '2024-08-07 08:18:47', '2024-08-07 08:20:43', 0, 0, '744f10103f124bdf36459f397114138c', 'Yes', 'd38e46e8f2cec1df579ad1d8a3f0634a', 0, 'shgfh', 'shghs', '6383', 'fsegs - قضاء المقدادية - 43 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:4343/user/vendor-register?referral_code=YrNGNUaNiQ', 'YrNGNUaNiQ', 0, '2024-08-07', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(172, 'mohamadfgggsf', NULL, NULL, NULL, NULL, NULL, NULL, 'zsdv', '+9647878943353', NULL, 'admsdfin@gmail.com', '$2y$10$CttkTK4/D5sCRhdBb6sNcueD7vU7tsTc6dG5vE7VqXVLP9LgHgGC6', NULL, '2024-08-07 22:08:49', '2024-08-07 22:08:49', 0, 0, '79ac6c6cfb669561f78ce927dbeb6599', 'No', '8b2af0e30d04d4773cd1ebc75a4663ef', 0, 'sfssf', 'sfsf', '6', 'sdfs - قضاء المقدادية - 43 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=GWA69ZdC6X', 'GWA69ZdC6X', 0, '2024-08-22', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(173, 'wefaf', NULL, NULL, NULL, NULL, NULL, NULL, 'sdfasf', '+964345634754', NULL, 'admidsfsafn@gmail.com', '$2y$10$ETTIjMt287mokVa1P8HV8eHuFKX4U5pOzCgMmMGWkrEFxV3B7D43O', NULL, '2024-08-07 22:10:19', '2024-08-07 22:10:19', 0, 0, 'd44939caf21fe5900faa8c1d24457ffc', 'No', '0ea40c4cfc1cea4b6bd1c87890cbf7e0', 0, 'sdafas', 'fasdfasd', '546', 'sdafasf - علي الغربي - 46 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=Y9VevNskiM', 'Y9VevNskiM', 0, '2024-07-30', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(174, 'sdcsd', NULL, NULL, NULL, NULL, NULL, NULL, 'vdfgf', '+9646365', NULL, 'admisdsdn@gmail.com', '$2y$10$6IVeTP3bTMYUrm4z63Q9C.t1pf7y.a0JbfZ1Vvz6phG5BgQDcby/6', NULL, '2024-08-07 22:19:33', '2024-08-07 22:19:34', 0, 0, '505c0fa37abc944339259cdf6f095091', 'Yes', 'd24c8c09b3bd95472465e1a3453d9909', 0, 'dhfhs', 'dfgs', '76', 'cazcxass - قضاء الفهود - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=27KTI5RYnf', '27KTI5RYnf', 0, '2024-08-22', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(175, 'fadgvdf', NULL, NULL, NULL, NULL, NULL, NULL, 'sdfgvas', '+964342535', NULL, 'admirewtn@gmail.com', '$2y$10$oaO3khUxOjwTQfWeX.HfJe9VXJQYzU2JRoOD/1p.Y8droGgMs8vga', NULL, '2024-08-07 23:36:54', '2024-09-08 23:59:54', 0, 0, '375c51d962d843fc95377272b55f6b3e', 'Yes', 'bb517422f97f22b820fbdb76833875a6', 0, 'agag', 'fgadsfg', '746', 'Dd - قضاء الجبايش - 42 - العراق', NULL, NULL, NULL, '17258399941722765444jpg.jpg', '17258399941722765444jpg.jpg', '17258399941722765444jpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2025-09-08', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=GXc83uoQDZ', 'GXc83uoQDZ', 0, '2024-08-19', 'female', 0, '#12adf0', 0, NULL, NULL),
(176, 'fadgvdf', NULL, NULL, NULL, NULL, NULL, NULL, 'sdfgvas', '+964342535', NULL, 'admirevdsgwtn@gmail.com', '$2y$10$TTqD0Rw2842yIn25J/1OPe8EagrDJ6SudxkAuONqawoB/z8z160FC', NULL, '2024-08-07 23:37:17', '2024-08-07 23:37:17', 0, 0, '091c49b987f99612663330ae84009887', 'Yes', '75ba53ce4ce58b3c4d9293ba306ac754', 0, 'agag', 'fgadsfg', '746', 'Dd - قضاء الجبايش - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=MzYDjqiqYu', 'MzYDjqiqYu', 0, '2024-08-19', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(177, 'fadgvdf', NULL, NULL, NULL, NULL, NULL, NULL, 'sdfgvas', '+964342535', NULL, 'admirevdsggfdwtn@gmail.com', '$2y$10$ZWLDF0J9MPSxY40o41kWiOOSf71R/IBRQxNbofG0CwGgzl0HllBES', NULL, '2024-08-07 23:37:46', '2024-08-07 23:37:47', 0, 0, '5492dce21c6a4b520529bd8acbd539f1', 'Yes', '6da9f4cc02b5bb190405061878736973', 0, 'agag', 'fgadsfg', '746', 'Dd - قضاء الجبايش - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=Hu2p3f6e3t', 'Hu2p3f6e3t', 0, '2024-08-19', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(178, 'fadgvdgfsf', NULL, NULL, NULL, NULL, NULL, NULL, 'sdfgvas', '+964342535', NULL, 'admirevdsdfxggfdwtn@gmail.com', '$2y$10$XmcCc7x4FmnchWV6pjRYG.zYOc7Rdccc9pBayxEEY2dxcQStmZQxe', NULL, '2024-08-07 23:37:57', '2024-08-07 23:37:57', 0, 0, '837a36d296e97cd6da4884168b31b521', 'Yes', '8465b804c6fd93dff2dfb57d5ab77884', 0, 'agag', 'fgadsfg', '746', 'Dd - قضاء الجبايش - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=JYhl34Uc5m', 'JYhl34Uc5m', 0, '2024-08-19', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(179, 'fadgvdgfsfada', NULL, NULL, NULL, NULL, NULL, NULL, 'sdfgvas', '+964342535', NULL, 'admirevdsadsdfxggfdwtn@gmail.com', '$2y$10$9oW83YODCUdDO5MZ5gDOGO8ObNWKLofJOmRPvadheWKuYPkXzUPba', NULL, '2024-08-07 23:38:13', '2024-08-07 23:38:13', 0, 0, 'eec0c6fd587bea76f8658e9966219d65', 'Yes', '41b689da7869a01aa37b024891c85258', 0, 'agag', 'fgadsfg', 'a6556', 'Dd - قضاء الجبايش - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=E0MjBZQ2RC', 'E0MjBZQ2RC', 0, '2024-08-19', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(180, 'afdgnajgk', NULL, NULL, NULL, NULL, NULL, NULL, 'asfg;', '+96456985', NULL, 'admdakmvdfin@gmail.com', '$2y$10$3FdsUzuaT/lqPvw0C2bQ8uvI0fLbgCH4g1V/.GAImG2aJrzaeK2lW', NULL, '2024-08-07 23:43:33', '2024-08-07 23:43:33', 0, 0, '0b13bbb3e1019042932d6655661a8ad7', 'Yes', 'ee3d192d1361fb78c06512fca39b674d', 0, 'agafg', 'mdfksang', '45345', 'adsfa - الإبراهيمية - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=TpltaY8clk', 'TpltaY8clk', 0, '2024-08-17', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(181, 'afdgnajgkfs', NULL, NULL, NULL, NULL, NULL, NULL, 'asfg;', '+96456985', NULL, 'admdafsdkmvdfin@gmail.com', '$2y$10$pxyidiJaYCdyu8scViJgnOGYOLITPw1gPh49d9w8lP9agOxzWLC9.', NULL, '2024-08-07 23:44:30', '2024-08-07 23:44:30', 0, 0, 'e01d5e5b6d62ea6f85cd86c283be0900', 'Yes', 'aeca68720a17cb81a658147acb1f9914', 0, 'agafg', 'mdfksang', '453453', 'adsfa - الإبراهيمية - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=z6GI5Bq28a', 'z6GI5Bq28a', 0, '2024-08-17', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(182, 'gfds', NULL, NULL, NULL, NULL, NULL, NULL, 'sdfvasd', '+9645635', NULL, 'admgdfgdsin@gmail.com', '$2y$10$JqPW.9fpib1UXfNsISTVeuOL/guKaef8ppvo1rIUeIk6koSZeWMqW', NULL, '2024-08-07 23:46:50', '2024-08-07 23:46:51', 0, 0, '5b642618cb35e4800808be79e17a57df', 'Yes', '129b90e8fe8064178ed3abd7aa0974fd', 0, 'asf', 'dfaf', '8767', 'dgser - قضاء الهندية - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=kKudyzPdaA', 'kKudyzPdaA', 0, '2024-08-07', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(183, 'dscskbjd', NULL, NULL, NULL, NULL, NULL, NULL, 'ghf', '+964325', NULL, 'adcvmkmin@gmail.com', '$2y$10$jAod.egDlYcUplVVkjzbZee5ZlLJdVQ8QZLIWQgAJK2/QqRtcDKfq', NULL, '2024-08-07 23:48:20', '2024-08-07 23:48:20', 0, 0, '885e56e6409105babac8cf3d3ec9a9a5', 'Yes', 'a972227c36caebf6b723d018d49bfe70', 0, 'getg', 'jklhhk', '345', 'trgegywr - قضاء الهندية - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=lLW3xJ6c4i', 'lLW3xJ6c4i', 0, '2024-08-13', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(184, 'sssssssssssssssss', NULL, NULL, NULL, NULL, NULL, NULL, 'sssssssssa', '+96411111111111111', NULL, 'adxxxxxxxxxxmin@gmail.com', '$2y$10$Nm5Erj6GxnZ62Lg9MLxoieQqNOxVDFlFCIq6rEXlXXfTm0Ve/fB4a', NULL, '2024-08-08 00:03:31', '2024-08-08 00:03:31', 0, 0, '1143debff3178b3c1850b55638c7982f', 'No', '810b1d850cd23f7fdbe9a0a493caf4ff', 0, 'aaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', '1111111111111', 'qqqqqqqqq - كربلاء - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=CgaX0Iy3MQ', 'CgaX0Iy3MQ', 0, '2024-08-09', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(185, 'sssssssssssssssss', NULL, NULL, NULL, NULL, NULL, NULL, 'sssssssssa', '+96411111111111111', NULL, 'adxxxxxsxxxxxmin@gmail.com', '$2y$10$dAi.9.VwhiMsslM3LMGHyeJabcO4SkzxL/k1ALCMhtzC8DkYcizGy', NULL, '2024-08-08 00:03:52', '2024-08-08 00:03:52', 0, 0, 'e5fc26309568fc5716f2aad3dd2b15a5', 'Yes', '58119ad4a57420c9faac90703dc08ecb', 0, 'aaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', '5555', 'qqqqqqqqq - كربلاء - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=Y2AslhazIf', 'Y2AslhazIf', 0, '2024-08-09', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(186, 'dsssssssssxxxxxxxxxxxxxxsssssss', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxxxxxxxxx', '+9641111111111111', NULL, 'axxxxxxxxxxdmin@gmail.com', '$2y$10$FeO86vFRnoAb0HwJ8UiYMu8tWMoS4vBvTkEzHfwHClWUnBAng2Olu', NULL, '2024-08-08 00:22:31', '2024-08-08 00:22:31', 0, 0, '3fb5332cf7cabfe6468795f33b2108f0', 'Yes', '9c0b887d331d20b069ca6387f5f4b0f5', 0, 'xxxxxxxxx', 'xxxxxxxxxx', '66', 'xxxxxxxxxx - عنه - 33 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=BCJA0Jeix0', 'BCJA0Jeix0', 0, '2024-08-26', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(187, 'Ahmad Mostafa Ibrahemss', NULL, NULL, NULL, NULL, NULL, NULL, 'Aleppo', '+964564648465', NULL, 'adminssssssss@gmail.com', '$2y$10$MRx4tgk3P36W7PLxW7Obk.V9udVVLsrzXsQdQ3MaQBf3DUmvvuCyG', NULL, '2024-08-08 01:01:48', '2024-08-08 01:01:48', 0, 0, 'aef78f9d870f4e88605ee64891d92e24', 'Yes', '23643d1df8784caf5369177d1b1f4e32', 0, 'ssssss', 'sdsssssssss', '22', 'e349 - قضاء الدواية - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=1gIotWYLqF', '1gIotWYLqF', 0, '2024-08-19', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(188, 'ccccccccc', NULL, NULL, NULL, NULL, NULL, NULL, 'ccccccccc', '9999999999', NULL, 'admccccccccin@gmail.com', '$2y$10$CQJuPPJFs2QOvUj4KVLsA.w4XzHurbp0Q0dDmTl1V6w0s9YLW/Xsq', NULL, '2024-08-08 02:07:09', '2024-08-08 02:07:09', 0, 0, 'cf507d2d37dcc4e4e281a1e35f572ff4', 'Yes', '94b93b83df92baff27256c2ac111bce8', 0, 'ccccccccccc', 'ccccccccc', '2', 'cccccccccc -  - 41 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=LvmSoKOpd3', 'LvmSoKOpd3', 0, '2024-08-02', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(189, 'ssss', NULL, NULL, NULL, NULL, NULL, NULL, 'sssssss', '22324', NULL, 'ssssadmin@gmail.com', '$2y$10$wU.jsgm4.r.N9IA4uE9wa.NRqtqvXElPrSK.MJXEaRJizb6hbNcDe', NULL, '2024-08-08 02:08:39', '2024-08-08 02:08:39', 0, 0, 'b6be242b1f832c415d2e5cb1e9c805af', 'Yes', '911442be9c015b7810b814b20e849935', 0, 'ss', 'ss', '565', 'sssssss -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=AoVB4KcgiB', 'AoVB4KcgiB', 0, '2024-08-27', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(190, 'vvvvv', NULL, NULL, NULL, NULL, NULL, NULL, 'vvvvv', '33333333', NULL, 'admvvvin@gmail.com', '$2y$10$lqHq2UA4KQax/GC9Xluwme4nmC1gB1zYLHpKEWekOJp2onDHzYoDK', NULL, '2024-08-08 02:12:06', '2024-08-08 02:12:06', 0, 0, '84cbb876673888e82eb72364a0475d98', 'Yes', '5f283996eeaf11149f4911a519f9c789', 0, 'vvvvvvvvv', 'vvvvvvvv', '3', 'vvvvvv - قضاء الفهود - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=DzOeVBWBbx', 'DzOeVBWBbx', 0, '2024-08-29', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(191, 'vvvvvx', NULL, NULL, NULL, NULL, NULL, NULL, 'vvvvv', '+96433333333', NULL, 'admvvvxin@gmail.com', '$2y$10$V11Dnfs9JndLJa2fabtWC.74qIIISLoNuLWGqG8O7pCIe7hHqg/Ca', NULL, '2024-08-08 02:12:40', '2024-08-08 02:12:40', 0, 0, '89cf194460f4f181f1f0934b9c7693a9', 'Yes', '7e8f53e928b1c9634fbaa1db746275f8', 0, 'vvvvvvvvv', 'vvvvvvvv', '3', 'vvvvvv - قضاء الفهود - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=CjXOVyhWMn', 'CjXOVyhWMn', 0, '2024-08-29', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(192, 'zzzz', NULL, NULL, NULL, NULL, NULL, NULL, 'zzzzzzzzz', '333333', NULL, 'adzmin@gmail.com', '$2y$10$5S1S5ZV4lZwJwThxP7INjOuR0VNKKBUB.HJ1Ox3.rjtmHAA8Ta4La', NULL, '2024-08-08 02:14:39', '2024-08-08 02:14:39', 0, 0, '939ffea5d0a845c45d3d9e904d85a253', 'Yes', 'c447bd3f6d8d857dd6190c1202535034', 0, 'zzzzzzzzzz', 'zzzzzzzz', '2', ' - قضاء دبس - 45 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=OMbgUXHMKf', 'OMbgUXHMKf', 0, '2024-08-09', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(193, 'mm', NULL, NULL, NULL, NULL, NULL, NULL, 'mmm', '6666', NULL, 'admmmmmmin@gmail.com', '$2y$10$qBErRRBbOFD9cjo.C521ee1QaPFRhNxMnWR5rnUqooZSq6aS5lBvu', NULL, '2024-08-08 02:20:40', '2024-08-08 02:20:40', 0, 0, 'd9a910eadf2332fbf7179be7ce8927cb', 'Yes', '65c08c100411ebab2bb9a4874a82f010', 0, 'mmm', 'mmm', '55', 'mmm -  - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=SfOlKCyo93', 'SfOlKCyo93', 0, '2024-08-06', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(194, 'dddddddddd', NULL, NULL, NULL, NULL, NULL, NULL, 'sdsdsds', '+9643241235', NULL, 'addddmin@gmail.com', '$2y$10$Sox8a.xxQSHW0Wl0nsiwOecfu90Jz1ZlKoiholJyo.IRXhwZZ66bq', NULL, '2024-08-08 02:26:01', '2024-08-08 02:26:02', 0, 0, 'f008523f4509e3c232d149a5e3ab8cc9', 'Yes', 'e650fd7a926836fc000f5921fd0d82b8', 0, 'sssssss', 'dssssssssssss', '55', 'ddddd - قضاء النصر - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=2ju0NOEUjZ', '2ju0NOEUjZ', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(195, 'aHMADqwqq', NULL, NULL, NULL, NULL, NULL, NULL, 'WERqq20', '+9643525562656', NULL, 'admqwqin@gmail.com', '$2y$10$6rHxf.RGuyxR57ViBgX2wOCEX8VOV9OVlJhFshQajdpTQB0yP2O/m', NULL, '2024-08-08 02:27:33', '2024-08-08 02:27:34', 0, 0, 'aa77bdcabab8bf337ccb84edbc47daf1', 'Yes', '41278be0071b33d79394cadee98acbe9', 0, 'qqq', 'qq', '22', 'ssssssss - قضاء الدواية - 42 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=aK3xlxGvJ2', 'aK3xlxGvJ2', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(196, 'rrrrrr', '172307856612jpg.jpg', NULL, NULL, 'العراق', 15, NULL, 'drrrr', '+964444444444', NULL, 'mostafaD33rrr333@gmail.com', '$2y$10$yw3c1/TZL6STFLrnbUc5C.ZY6naD7cqTfvNoXJb9TgmRhmiIUf16C', NULL, '2024-08-08 06:33:04', '2024-08-08 08:09:29', 0, 0, 'de82f82a7ca24b80cb29c8544231ffa4', 'Yes', '95d19f7a7c577599b0267ae07b9c0cc7', 0, 'rrrrrrrr', 'rrrrrr', '33', 'rrrr - قضاء عين تمر - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=A6aexx4Ikv', 'A6aexx4Ikv', 0, '2024-08-20', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(197, 'tytytt', NULL, NULL, NULL, NULL, NULL, NULL, 'WER20', '+9643525562656', NULL, 'admrrein@gmail.com', '$2y$10$an0UDyRKTSB2T5RyQkHJz.eZebMfNDA4Ml3CAfTn1.afISszDUDzu', NULL, '2024-08-11 02:03:22', '2024-08-11 02:03:22', 0, 0, '65f2d89d5e0c2418ab5a4f58159df49e', 'Yes', '5f2ae7ba3a637cdaa628904fb5975f00', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=oVCStHA3OG', 'oVCStHA3OG', 0, '2024-08-21', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(198, 'aHMAfD', NULL, NULL, NULL, NULL, NULL, NULL, 'WER20', '+9643525562656', NULL, 'admrdrein@gmail.com', '$2y$10$oS/YUMk5Z2dJT52NBS1WPe8pQQYZNl8kJb4t20yGwFUfK2LDVLKWm', NULL, '2024-08-11 02:04:41', '2024-08-11 02:04:41', 0, 0, '24f87d0c93519338f91fd7f2b0c28c9a', 'Yes', 'd7b818f44de918ecf665d3df2b5f53ec', 0, 'dddd', 'dddd', '44', 'ffffff - كركوك - 45 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=dHkKw371ns', 'dHkKw371ns', 0, '2024-07-30', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(199, 'dvds', NULL, NULL, NULL, NULL, NULL, NULL, 'savdfad', '+9645324523', NULL, 'admssrrein@gmail.com', '$2y$10$wjKzwNrMnm5PJIxyeN6xl.KLqnXYUVk6IC1p2op.dkn8lMxchR2oC', NULL, '2024-08-11 02:16:14', '2024-09-03 15:57:38', 0, 0, '2ebec2a440ceac5735a01a5c43d42d94', 'Yes', 'b71de0cc12362be7c62d9836593013f1', 0, 'dddd', 'dddd', '3', '33 - قضاء الهندية - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2025-09-03', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=TpI1M7X0ao', 'TpI1M7X0ao', 0, '2024-08-01', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(200, 'مصطفى555', '1727889698Annotation2024-09-09011410png.png', NULL, 'قضاء الجبايش', 'العراق', 42, 285, 'WER2jssjjw', '+905345504439', NULL, 'adtttmrrein@gmail.com', '$2y$10$SdCEJqv1tDQwn1C9JPShgOyNGmiiqZp7uZf8Lg4kchiy0AnFNALfq', NULL, '2024-08-11 03:21:47', '2024-10-19 16:20:38', 0, 0, 'c020b6bd72153a05a87e22606e5478ba', 'Yes', 'fa908552e69ab5f6a0ecd044679402b6', 0, 'ttttttttt', 'ttttttt', '55', 'tttttt - قضاء الحويجة - 45 - العراق', NULL, NULL, NULL, '17293548001000284771jpg.jpg', '17293548001000284771jpg.jpg', '17293548001000284745jpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-11-16', 0, 0, 0, 0, NULL, 'http://127.0.0.1:8000/user/vendor-register?referral_code=BFrhELPp3A', 'BFrhELPp3A', 20, '2024-08-08', 'male', 0, '#A77171', 1, NULL, NULL),
(201, 'test1', '17258926601723130240jpeg.jpeg', NULL, NULL, NULL, NULL, NULL, 'axaza', '+9643333332', NULL, 'test11@gmail.com', '$2y$10$vvvTfe5Yja8mjugX8/vxU.1JHhgHHE4mKNIuJ.plYivylqXW1p9oy', NULL, '2024-08-17 14:31:27', '2024-10-02 17:43:49', 0, 0, '22219a686e706dc5b9ddda9523207a34', 'Yes', 'd425c41224a7a46515b9f99d2b5d560f', 0, 'test1', 'test1', '2555', 'azaza - دهوك - 41 - العراق', NULL, NULL, NULL, '17258940181722765444jpg.jpg', '17258940181722765444jpg.jpg', '17258940181722765444jpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2025-08-17', 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=RzWAXq0DZi', 'RzWAXq0DZi', 50, '2024-08-22', 'male', 1, '#A96666', 1, NULL, NULL),
(203, 'lfdsnvksdal', NULL, NULL, NULL, NULL, NULL, NULL, 'fdjgnsld', '+9643525562656', NULL, 'klngkdsshsha@gmail.com', '$2y$10$Wj92TimJZvPBgsbDhuBlg.vub1S25LZV3Zw1YtZuRDp4lgpQgPcAu', NULL, '2024-08-18 15:46:52', '2024-08-18 15:46:52', 0, 0, 'b47aca52926ec838083b09882c8aba3d', 'Yes', '35afd4bf19b24d2cb8e3c3a66a53b6ea', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=Usmkmn5LIO', 'Usmkmn5LIO', 0, '2024-08-19', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(204, 'lfdsnvksdal', NULL, NULL, NULL, NULL, NULL, NULL, 'fdjgnsld', '+9643525562656', NULL, 'klngkdudhds@gmail.com', '$2y$10$pfbSFOf9pq.kZvLO6svHouj1UAckc/0X0orKt3oJvehCEKoE2UuDC', NULL, '2024-08-18 23:13:18', '2024-08-18 23:13:18', 0, 0, 'f4a1cc3e5d8402878f33fd6cdba441b6', 'Yes', 'b44e354b16ca7c198088c5740f98d58f', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=Qyy1hfiCnA', 'Qyy1hfiCnA', 0, '2024-08-23', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(205, 'jfjjd', NULL, NULL, NULL, NULL, NULL, NULL, 'fdjgnsld', '+9643525562656', NULL, 'klngkdshxx@gmail.com', '$2y$10$UdEQXs2gsqdc8f0CzQgpMetAZmKRRtFXCYr8aIhu2Nk.xbZVQecD2', NULL, '2024-08-18 23:15:15', '2024-09-03 15:59:06', 0, 0, '52be885470a5f6a7513a7728bf0dd613', 'Yes', 'b72c6f1732cfa9ec2760563e3b8a902f', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=RBRBTjsWDN', 'RBRBTjsWDN', 0, '2024-08-22', 'male', 0, '#FF5733', 0, NULL, NULL),
(206, 'gufujsfh', NULL, NULL, NULL, NULL, NULL, NULL, 'hgfh', '66666', NULL, 'gggGGgdhfgFggggg@gmail.com', '$2y$10$AWXH9sCIa28jDrkyScIkeuU3ZISBx9xspWsvDtOS85AXkxjUGbMsS', NULL, '2024-08-21 14:15:37', '2024-08-21 14:15:37', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(207, 'gufujsfh', NULL, NULL, NULL, NULL, NULL, NULL, 'hgfh', '66666', NULL, 'gggGGgdggghfgFggggg@gmail.com', '$2y$10$S2MH1KCwXSf7hA5hb3bb4e/IZt6vXv9MQTlLBij4RgOGF7hfIGB8u', NULL, '2024-08-21 20:23:07', '2024-08-21 20:23:07', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(208, 'g gv', NULL, NULL, NULL, NULL, NULL, NULL, 'gytv', '+905345504439', NULL, 'vyvbbbby@gmail.com', '$2y$10$aiR6dye43Evw/Rh.2x3T2OHQO/Quvigip9I4vTvqbmL9nwlgJGlpe', NULL, '2024-08-23 23:00:31', '2024-08-23 23:00:31', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(209, 'mmas', NULL, NULL, NULL, NULL, NULL, NULL, 'Aleppo', '+905345504439', NULL, 'dddd@gmail.com', '$2y$10$Iahq4VEf7Aa5JiYlh5iU3O8kEui8RyCGijfuzaZieijo9/IPyOhFS', NULL, '2024-08-23 23:46:34', '2024-08-23 23:46:34', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(210, 'ggh', NULL, NULL, NULL, NULL, NULL, NULL, 'hijjj', '+352681505974', NULL, 'g@gmial.com', '$2y$10$J8.A5ZaB4ftpCx/sFlmXT.R/pXX1.uCOs9PfyUK41tvHRuQ3pFYia', NULL, '2024-08-24 14:01:02', '2024-08-24 14:01:02', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(212, 'ahmadmostafa', NULL, NULL, NULL, NULL, NULL, NULL, 'hgfh', '66666', NULL, 'g1@gmail.com', '$2y$10$/N7dbyVm5AjyD7mc7vnxG.2awSrLhG.fcGj6LmQ8pUVnOTvgSI4Gm', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2VhbGFuYXRlay5zaXRlL2FwaS91c2VyL2xvZ2luIiw', '2024-08-24 15:29:59', '2024-08-24 15:29:59', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(213, 'ahmad', NULL, NULL, NULL, 'uggy', NULL, NULL, 'ff', '+905345504439', NULL, 'g3@gmail.com', '$2y$10$CpZu.2V3dM/TNWukxzBQlOQPn1s61XpaAgKg7X/w5aIOH9scILhLK', 'bHJiMhaegipogJ8569DpW0KSsFzZuuRR0VkbOCgYpJ3alnv7IG4ccRsdYpU7', '2024-08-24 19:38:48', '2024-09-25 14:38:44', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1727275124Screenshot------comgoogleandroiddocumentsuijpg.jpg', '1727275124Screenshot------comgoogleandroiddocumentsuijpg.jpg', '1727275124Screenshot------comgoogleandroiddocumentsuijpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#6C1919', 0, NULL, NULL),
(214, 'gufuj', NULL, NULL, NULL, NULL, NULL, NULL, 'hgfh', '66666', NULL, 'ghfjfg@gmail.comcxx', '$2y$10$jLHfXjsGE5lTgOfv1a/li.wyfREDDrvy77Ut4JVw3zJYLwwEDqJCK', NULL, '2024-08-28 16:36:48', '2024-08-28 16:36:48', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(215, 'mm', NULL, NULL, NULL, NULL, NULL, NULL, 'azaz', '+905345504439', NULL, 'm@gmail.com', '$2y$10$uj45PaE504BL1azp3PPkdu4Lqz3SHtRBOnFBlXPuu/fp0WDyzxR/K', NULL, '2024-09-03 23:48:07', '2024-09-03 23:48:07', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(216, 'testm', NULL, NULL, NULL, NULL, NULL, NULL, 'aza', '+905345504439', NULL, 'mt@gmail.com', '$2y$10$Ki/kQaLyTJBKZuKbfb9kmOutzxDmx3aQO5rh9lii8Tb.RBj3xEpvm', NULL, '2024-09-03 23:55:03', '2024-09-03 23:55:03', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(217, 'kk', NULL, NULL, NULL, NULL, NULL, NULL, 'ggg', '+963968721781', NULL, '1234dgff@gmail.com', '$2y$10$ECmbnQnyUgTbpdSE3Q7Mg.myugTJbJ0A3yRqPxE2QZKAVdTsu.PGS', NULL, '2024-09-04 20:31:46', '2024-09-04 20:31:46', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(218, 'kkkkkkkkkkkkkk', NULL, NULL, NULL, NULL, NULL, NULL, 'savdfad', '+9645324523', NULL, 'bbbbbbb@gmail.com', '$2y$10$O4FH/p37.8ifWEo1MwUYu.BKLQoYaoy9kq8WgYiJDHEy5uaO6pRGy', NULL, '2024-09-11 15:47:39', '2024-09-11 15:47:39', 0, 0, 'e6ef7da812c5158d3c61141aedb45769', 'Yes', '52583476d1f5ae2acc5a2e21f317d75f', 0, 'vvvvvvvvv', 'vvvvvvvvvv', '2222', 'kkkkk - ناحية التاجي - 40 - العراق', NULL, NULL, NULL, '17258399941722765444jpg.jpg', '17258399941722765444jpg.jpg', '17258399941722765444jpg.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=PTSo4GKdAr', 'PTSo4GKdAr', 0, '2024-09-06', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(219, 'eeeee', NULL, NULL, NULL, NULL, NULL, NULL, 'fffffffff', '+964333333333', NULL, 'eeeeeeeee@gmial.com', '$2y$10$U2gY8TO8SZD264/.Z4BxDOLOXgOuioZArWoPqloKupvbbctb6vZpK', NULL, '2024-09-11 19:51:05', '2024-09-11 19:51:05', 0, 0, '25f56687e10ae1fecd903f79c0c41608', 'No', '6a3aea7fdb7536b26e6ce3c0579f719a', 0, 'fffffffffff', 'fffffffffff', '333333333333', 'ffffffff - سميل - 41 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=WSklbhX1Uh', 'WSklbhX1Uh', 0, '2024-09-05', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(220, 'eeeee', NULL, NULL, NULL, NULL, NULL, NULL, 'fffffffff', '+964333333333', NULL, 'eeeeeeseee@gmial.com', '$2y$10$Bskc5orWOXQN/SdQOULgQO6NZaEhs.EfZ5m8km11jMNDu0/U7/RWa', NULL, '2024-09-11 19:51:24', '2024-09-11 19:51:24', 0, 0, '669c9c0be09f479e1141dc434240a6e2', 'No', '8265f22b59e19e9a3ed59c7bd0939f64', 0, 'fffffffffff', 'fffffffffff', '333333333333', 'ffffffff - سميل - 41 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=byZpl0cwYG', 'byZpl0cwYG', 0, '2024-09-05', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(221, 'eeeee', NULL, NULL, NULL, NULL, NULL, NULL, 'tydhdth', '+964333333333', NULL, 'eeeseeeseee@gmial.com', '$2y$10$LmNl7AVjwZ442cstEG.MXeVvvAClEINZFwpmKwIaBH57mDZvK04Q6', NULL, '2024-09-11 19:52:17', '2024-09-11 19:52:17', 0, 0, '467f66009fa1ff957db8287f75ceed70', 'Yes', '5bb0645062dca2f9cdfed8f1dd3b82b9', 0, 'ghfjjf', 'ghjgfj', '564', 'ffffffff - سميل - 41 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=nbpQSeHapP', 'nbpQSeHapP', 0, '2024-09-05', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(222, 'ddddd', NULL, NULL, NULL, NULL, NULL, NULL, 'fgdhg', '+96433334', NULL, 'ddddd@gmail.com', '$2y$10$3iwyQWec2pgPT7incv/QPuqbudfWi9LJKPo5jICpCfm7wZDrZtBoO', NULL, '2024-09-11 21:43:29', '2024-09-11 21:43:29', 0, 0, 'ef0a8c0738d6efd0ba7dfe094309005b', 'Yes', '2cdd3d0aecf751c3cab9a4394cc56704', 0, 'gdss', 'sgfdsg', '343', 'shdh - قضاء دوكان - 39 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=4466bzm5dD', '4466bzm5dD', 0, '2024-09-24', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(223, 'عمر الموسى', '17261678744jpg.jpg', NULL, NULL, NULL, NULL, NULL, 'sdfgvas', '+964947932239', NULL, 'omar227@gmail.com', '$2y$10$18av1tNd48t/FfIUPWjgXuZo6dFaCbIh2EedQqyBZX.EbF6BTcwne', NULL, '2024-09-12 19:03:18', '2024-09-12 19:04:34', 0, 0, '59bfcc708b80e3d189157bbc09ed4217', 'Yes', 'b583151cb269c4f701ac02388143dcd9', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=Hxgc9W1HYC', 'Hxgc9W1HYC', 0, '2024-09-06', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(224, 'عمر موسى2', NULL, NULL, NULL, NULL, NULL, NULL, 'savdfad', '+96444444444', NULL, 'omar2227@gmail.com', '$2y$10$ymO/pJ1I32YC9oYemTrCV.uPrJd6hvsu9ckOjSumfMgteTxEhHWOu', NULL, '2024-09-12 19:11:07', '2024-09-12 19:11:07', 0, 0, '93407e5033b4d46fd5d18145ba09323a', 'Yes', '98689865911b58d037ac88d6317574a1', 0, 'omar227', 'hxzjjz', '1', 'kkkkk - جلولاء - 43 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=tVVPsjmQsB', 'tVVPsjmQsB', 0, '2024-09-04', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(225, 'testuser1', NULL, NULL, NULL, 'm', NULL, NULL, 's', '+905345504439', NULL, 'testuser@gmail.com', '$2y$10$B7xLqg75QkdsnlsnPyRk6en0MgRXeaOOiJyIXG/yMnuFYWRf.IF92', NULL, '2024-09-12 19:52:32', '2024-09-24 11:20:50', 0, 0, '6ec70eac759bcfa8a9573fef287de60a', 'Yes', '21c9dcb01e2870768f3d94c08db8bcc6', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=p3L2Aa7ikE', 'p3L2Aa7ikE', 10, '2024-09-03', 'male', 1, '#FFFFFF', 0, NULL, NULL),
(226, 'testuser1', NULL, NULL, NULL, NULL, NULL, NULL, 'ff', '+964555666', NULL, 'testuser1@gmail.com', '$2y$10$51.FP28wbz/tK4W1VfyM7uQYvFpG9zeTG3NWETfIRQo/tDS3GEFp6', NULL, '2024-09-12 20:03:16', '2024-09-12 20:03:16', 0, 0, 'a4a0246fa3683c4ff79b368236770b28', 'Yes', '5f86c4c60945be06357d6531dd7714e1', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=VZq7wHB2rK', 'VZq7wHB2rK', 0, '2024-09-16', 'male', 1, '#FFFFFF', 0, NULL, NULL),
(227, 'testuser1', NULL, NULL, NULL, NULL, NULL, NULL, 'kk', '+964866666', NULL, 'testuser2@gmail.com', '$2y$10$80f2/3X0xZfbpqy9nsOSlOZYGNWfP4h6n3dXej6nFL8AE2XpoCg06', NULL, '2024-09-12 20:09:03', '2024-09-12 20:12:45', 0, 0, 'd211e1d15cfec0fa11f1b0828af4d71c', 'Yes', 'ff31f0258894d7d7a9cc09c29ea29938', 0, 'testuser1', 'testuser1', '654', 'mm - قضاء جومان - 38 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-10-27', 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=Hxw1PQy22Z', 'Hxw1PQy22Z', 0, '2024-09-04', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(228, 'عبد الكريم', NULL, NULL, NULL, NULL, NULL, NULL, 'Syria', '+9647843419544', NULL, 'bwd025783@gmail.com', '$2y$10$I2N6pDhIWrTyOt6a1LnRw.Dzbplzq2IFpzl.Q8KgB2v05NO2zlls2', NULL, '2024-09-14 15:43:13', '2024-09-14 15:43:13', 0, 0, 'c129225d86c2caee0e56928fb898c5b5', 'Yes', '4a075a3fbb173d742c0d452c0d39c514', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=EkREhRRMBP', 'EkREhRRMBP', 0, '2003-09-14', 'female', 0, '#FFFFFF', 0, NULL, NULL),
(229, 'dsfs svss', NULL, NULL, NULL, NULL, NULL, NULL, 'zsdv', '+9647878943353', NULL, 'youwithmecompany@gmail.com', '$2y$10$X0dIpVfCazxM6zTPZJQd3eNyLSexqdZMnhp.W8qO1Wsa76wLjKbdm', NULL, '2024-09-14 15:53:56', '2024-09-14 15:53:56', 0, 0, '2bd9421e4b701ddff94d2f749ad122a3', 'Yes', 'e979208d8592d72acc46c9ba9994d86c', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=9bD7bPGpvq', '9bD7bPGpvq', 0, '2024-09-27', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(230, 'Moustafa Drweshe', NULL, NULL, NULL, NULL, NULL, NULL, 'Syria', '+9645345504039', NULL, 'moustaf.drewsh099@gmail.com', '$2y$10$Z3Gi5IWjlfbHjwho7udbCO5wlTTYdl81rbO0cnyR2ydtKE4ko5Mh6', NULL, '2024-09-14 22:24:49', '2024-09-14 22:24:49', 0, 0, 'ee8c95ec8df9cdac22bf729d10daa0ea', 'Yes', '2cc037f28a6901722b3b40d10fc007e0', 0, NULL, NULL, NULL, ' -  -  - ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=avmCbfOlt6', 'avmCbfOlt6', 0, '2024-09-20', 'male', 0, '#FFFFFF', 0, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state_id`, `city_id`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `shop_image_left`, `shop_image_right`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `admin_commission`, `reward`, `email_token`, `referral_link`, `referral_code`, `points_vendor`, `birthdate`, `gender`, `points_user`, `background_color`, `is_verified`, `social_id`, `social_type`) VALUES
(231, 'asasa', NULL, NULL, NULL, NULL, NULL, NULL, 'mna', '+964552', NULL, 'g33@gmail.com', '$2y$10$wtk6MGPcBK90NnEq.b07VeKBECNvNcPqersppYb0QtUSllODgECx2', NULL, '2024-09-15 12:25:14', '2024-10-02 16:06:53', 0, 0, '26b026a3a04eb300e189f09d76c04884', 'Yes', '8a90781b459552ed2f31bd4a1c3e869f', 0, 'asasa', 'asasa', '56', 'azaz - أبي غريب - 32 - العراق', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-12-31', 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=IVmAflUNVS', 'IVmAflUNVS', 0, '2024-09-05', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(232, 'Hamza Beyatli', 'https://graph.facebook.com/v3.3/122169758552182108/picture?width=1920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'azrarcompany2024@gmail.com', NULL, NULL, '2024-09-16 04:50:08', '2024-09-16 04:50:08', 1, 0, NULL, 'Yes', '215895133340f8f891f4c731169264ba', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(233, 'anas zeidan', 'https://lh3.googleusercontent.com/a/ACg8ocLVbBEw2mspzzWWGY88hb4rmwS64PEKRZ9Iu5ukWB907adaekE=s96-c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anasooookk@gmail.com', NULL, NULL, '2024-09-19 15:24:55', '2024-09-19 15:24:55', 1, 0, NULL, 'Yes', 'c3d2c7b18b0bdf936cba55227c5c1ce0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(235, 'test100', NULL, NULL, NULL, NULL, NULL, NULL, 'azaz', '+905345504439', NULL, 'rest100@gmail.com', '$2y$10$.Z0UcStrLC5OEAW3C3871.o6s6HrKJ9GM9UVWSWNQKE2zdkSwkFs6', NULL, '2024-09-20 13:10:14', '2024-09-20 13:10:14', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(236, 'test110', NULL, NULL, NULL, NULL, NULL, NULL, 'azaz', '+905345504439', NULL, 'rest110@gmail.com', '$2y$10$rK6.xbH2umOxWgK0S0oWyehABCFK3tauM0WmE7.2fI6k9s1ljXEUu', NULL, '2024-09-20 13:14:27', '2024-09-20 13:14:27', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(237, 'me', NULL, NULL, NULL, 'العراق', NULL, NULL, 'aza', '+905345504439', NULL, 'me@gmail.com', '$2y$10$kdfkiHqtpKgyYTuod5xk..QYYnxmyRGTT7I/ae51iJEO041pKGp9C', NULL, '2024-09-21 19:57:37', '2024-10-19 16:11:19', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(238, 'moustaf', NULL, NULL, NULL, NULL, NULL, NULL, 'axaa', '+905345504439', NULL, 'mostaf@gmail.com', '$2y$10$uGgBu/B0WA1qe8NiwvkVkOCNGQ2dDbCdlYWOFeszX5OId8r/8mcS.', NULL, '2024-09-22 11:33:41', '2024-09-22 11:46:15', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17270055751000268159jpg.jpg', '17270055751000268159jpg.jpg', '17270055751000268159jpg.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#DD4A4A', 0, NULL, NULL),
(239, 'ahamad', NULL, NULL, NULL, 'syria', NULL, NULL, 'azaz', '+447828773900', NULL, 'ahamadmohamad200@gmail.com', '$2y$10$xVLLcqHGPACZp.Dv9UibJOy2mV1LsWqjQa.e.Mg/f/C.c.1J4BQiy', NULL, '2024-09-22 12:58:41', '2024-09-25 14:26:15', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#391919', 0, NULL, NULL),
(240, 'gggg', NULL, NULL, NULL, NULL, NULL, NULL, 'hgf', '+352681505974', NULL, 'd6gtf@gmail.com', '$2y$10$YoPcZEfSJdMZOz82u4fsyuhzc6yJ.5o6AcOQPp/vZ6wMT/0Plxe5q', NULL, '2024-09-23 13:57:08', '2024-09-23 13:57:08', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(241, 'hgggggg', NULL, NULL, NULL, NULL, NULL, NULL, 'hgfff', '+352681505974', NULL, 'rrr@gmail.com', '$2y$10$4.AecLOxP3f.UC2bH.DNTOpPSDqgrUCXSvXYsKZRhOQYmcu0SjL7G', NULL, '2024-09-23 14:27:34', '2024-09-23 14:27:34', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(242, 'rr', NULL, NULL, NULL, NULL, NULL, NULL, 'gtttg', '+352681505974', NULL, 'gff@gmil.com', '$2y$10$mlzI68uepbCVR1pw0EP7huGMrDy12LHHiuN2oUGOldsFDrHcV7ckW', NULL, '2024-09-23 16:08:49', '2024-09-23 16:08:49', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(243, 'ytgghh', NULL, NULL, NULL, NULL, NULL, NULL, 'hyg', '+352681505974', NULL, 'f@gmail.com', '$2y$10$ILIwPnZI6d.HFK0ZALe1S.QDcVZaLU5fgWcqVcJGUpzrHL51coNr6', NULL, '2024-09-23 22:24:52', '2024-09-23 22:24:52', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(244, 'm1', NULL, NULL, NULL, NULL, NULL, NULL, 'azaz', '+905345504439', NULL, 'm1@gmai.con', '$2y$10$loLCYaUeqsCkESEOsZ0RuuOWWUHpuQI.pOwFZp.OzDl7.ojz8Gpu2', NULL, '2024-09-24 11:22:40', '2024-09-24 11:22:40', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(245, 'jshdhs', NULL, NULL, NULL, NULL, NULL, NULL, 'zbzjhz', '+352681505974', NULL, 'rr@gmail.com', '$2y$10$/NkR7vijtqXER150EHkB7u/8Way348ibKMJMQq02/Xoall5vaHGjK', NULL, '2024-09-25 12:12:23', '2024-09-25 12:14:41', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(246, 'abd', NULL, NULL, NULL, NULL, NULL, NULL, 'basra', '+17252428168', NULL, 'ahamadmohamad@gmail.com', '$2y$10$zcfhh2N2ySAbONgPaq6AT.nVJBGjEXUPEh46mcIYR.V/VI7ORfAp.', NULL, '2024-09-25 14:30:00', '2024-09-25 14:30:00', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(247, 'mm', NULL, NULL, NULL, NULL, NULL, NULL, 'azaz', '+905345504439', NULL, 'mm1@gmail.com', '$2y$10$sfwKAvaexff9mu4M11MQB.l8RATAy.tST/MDEFwov1VzUxJ3sLAey', NULL, '2024-09-26 20:53:38', '2024-09-26 20:53:38', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(248, 'test1000', NULL, NULL, NULL, NULL, NULL, NULL, 'azaz', '+905345504439', NULL, 'test100@gmail.com', '$2y$10$90WuPfKz8E3SI6n99vhh9Or8WAL8ItqRHy2/6vgfBjbmy./ARR9Ua', NULL, '2024-09-30 10:43:25', '2024-09-30 10:43:25', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(249, 'azrartest 4', NULL, NULL, NULL, NULL, NULL, NULL, 'lll', '+96435749688999', NULL, 'azrartest4@gmail.com', '$2y$10$3jUA4NKmObPAlmcHjQf88eLAhJVq9E.I6AL1XI77rJYae1y6gvue2', NULL, '2024-10-02 16:40:12', '2024-10-02 17:42:07', 0, 0, 'a20b4703da447ce72d338253405615f2', 'Yes', '6a2a33fe90616c8e9fddbec7ae9ff0af', 0, 'azrartes', 'azrartest 4', '8885', 'azrartestss - الرياض - 45 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2024-12-31', 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=nP0QfIPRAh', 'nP0QfIPRAh', 0, '2024-10-18', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(250, 'adtttmrrein@gmail.com', '1727890889Annotation2024-09-09011410png.png', NULL, NULL, 'العراق', NULL, NULL, 'mna', '8777777', NULL, 'sss@gmail.com', '$2y$10$VSamWyociq5ssUdI/s.pp.S36xa3kyxrIIydK/0gzMdiDzYDMlkoG', NULL, '2024-10-02 17:41:29', '2024-10-02 17:41:29', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(251, 'azrar 11ac', NULL, NULL, NULL, NULL, NULL, NULL, 'mna', '+964588888849', NULL, 'azrar11ac@gmail.com', '$2y$10$R3JjTnpXvYDGdGd3SrxvhOE5fDB94Erm0rM./EVC1FN8vI4dcL7na', NULL, '2024-10-02 18:03:27', '2024-10-02 18:03:27', 0, 0, '8a091d1785888776b334c0feb45eb686', 'Yes', 'e9b6c689c6e7109891aa533eb1768c25', 0, 'azraraa', 'azrar 11ac', '554', 'azrar 11aca - المحاويل - 40 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=5Q0xWxIbTi', '5Q0xWxIbTi', 0, '2024-10-10', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(252, 'test444', NULL, NULL, NULL, NULL, NULL, NULL, 'mna', '+96455555864', NULL, 'adtest444@gmail.com', '$2y$10$uWGrm6g.7oaSA2xwVGDwR..wai5RwZ8b1Sj61lR9PAXh3o2x5A19u', NULL, '2024-10-02 18:04:58', '2024-10-02 18:04:58', 0, 0, '88aeba45ec85e9633287402b5388f42a', 'Yes', '7fd857392250c8d9be7a2b62e3eebc68', 0, 'test444a', 'test444', '5', 'azrartestss - الإبراهيمية - 44 - العراق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, 'https://ealanatek.site/user/vendor-register?referral_code=e5eQI1tvfy', 'e5eQI1tvfy', 0, '2024-10-10', 'male', 0, '#FFFFFF', 0, NULL, NULL),
(253, 'Mhaeaed Asdfghkl', 'https://lh3.googleusercontent.com/a/ACg8ocICZ9ZFFu-gch6N1YDYovpYsxYfXU8Rkw0XG08H9sFYl7iMxw=s96-c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mhaeaecdmb@gmail.com', NULL, NULL, '2024-10-06 16:08:54', '2024-10-06 16:08:54', 1, 0, NULL, 'Yes', '1765bd842c4306aad5614704acaad879', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(254, 'Azrar Webt', 'https://graph.facebook.com/v3.3/122108441654547758/picture?width=1920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'azrarfirebase@gmail.com', NULL, NULL, '2024-10-06 17:23:21', '2024-10-06 17:23:21', 1, 0, NULL, 'Yes', '811ad15629e2934fb7eef8bfa4ff2ef6', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(255, 'sss', NULL, NULL, NULL, NULL, NULL, NULL, 'as', '+905345504439', NULL, 'ss@gmail.com', '$2y$10$lb4UdIrP.WITvCJ34GkUieyHqICLsf/VqQlJcLD1gMlIzjm08lsxy', NULL, '2024-10-19 16:13:05', '2024-10-19 16:13:05', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL),
(256, 'jssj', NULL, NULL, NULL, NULL, NULL, NULL, 'shhsh', '+352681505974', NULL, 'asas@gmail.com', '$2y$10$gcpXdAxx07K54.QkInb4Z.srIiy0VyZSFSf00crGyL6yCu9cyVSLG', NULL, '2024-10-19 17:55:18', '2024-10-19 17:55:18', 0, 0, NULL, 'Yes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, '#FFFFFF', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

DROP TABLE IF EXISTS `user_notifications`;
CREATE TABLE IF NOT EXISTS `user_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 22, 'AUX51716129156', 1, '2024-05-19 11:32:36', '2024-06-13 21:45:59'),
(2, 22, 'JRwQ1716129160', 1, '2024-05-19 11:32:40', '2024-06-13 21:45:59'),
(3, 22, 'L0Vf1716404181', 1, '2024-05-22 15:56:21', '2024-06-13 21:45:59'),
(4, 13, 'QNhc1717182206', 0, '2024-05-31 16:03:26', '2024-05-31 16:03:26'),
(5, 22, 'FQ051717341404', 1, '2024-06-02 12:16:44', '2024-06-13 21:45:59'),
(6, 22, 'BpO01717343401', 1, '2024-06-02 12:50:01', '2024-06-13 21:45:59'),
(7, 13, 'BOxX1717590187', 0, '2024-06-05 12:23:07', '2024-06-05 12:23:07'),
(8, 13, 'Ik5o1719252733', 0, '2024-06-24 18:12:13', '2024-06-24 18:12:13'),
(9, 13, 'UYCR1719653540', 0, '2024-06-29 09:32:20', '2024-06-29 09:32:20'),
(10, 22, 'rRkC1719704558', 1, '2024-06-29 23:42:38', '2024-07-02 15:20:22'),
(11, 13, 'NaQn1719738736', 0, '2024-06-30 09:12:16', '2024-06-30 09:12:16'),
(12, 13, 'STm71719739661', 0, '2024-06-30 09:27:42', '2024-06-30 09:27:42'),
(13, 22, '1Q3I1719739957', 1, '2024-06-30 09:32:37', '2024-07-02 15:20:22'),
(14, 22, 'i6Tf1719739962', 1, '2024-06-30 09:32:42', '2024-07-02 15:20:22'),
(15, 22, 'z7PB1719739971', 1, '2024-06-30 09:32:51', '2024-07-02 15:20:22'),
(16, 22, 'aU0F1719739977', 1, '2024-06-30 09:32:57', '2024-07-02 15:20:22'),
(17, 22, 'o2Eu1719740055', 1, '2024-06-30 09:34:15', '2024-07-02 15:20:22'),
(18, 22, 'lIR81719740059', 1, '2024-06-30 09:34:19', '2024-07-02 15:20:22'),
(19, 22, 'bPR51719740142', 1, '2024-06-30 09:35:42', '2024-07-02 15:20:22'),
(20, 22, 'sZIY1719918659', 1, '2024-07-02 11:10:59', '2024-07-02 15:20:22'),
(21, 13, 'cwZv1720107311', 0, '2024-07-04 15:35:12', '2024-07-04 15:35:12'),
(22, 13, 'UHge1720107452', 0, '2024-07-04 15:37:32', '2024-07-04 15:37:32'),
(23, 22, 'mW6M1720110170', 1, '2024-07-04 16:22:50', '2024-09-10 15:52:34'),
(24, 13, 'peAH1720189086', 0, '2024-07-05 14:18:06', '2024-07-05 14:18:06'),
(25, 13, 'j3Wg1720190157', 0, '2024-07-05 14:35:57', '2024-07-05 14:35:57'),
(26, 13, 'SlNm1720274836', 0, '2024-07-06 14:07:16', '2024-07-06 14:07:16'),
(27, 13, 'WLy31720439345', 0, '2024-07-08 11:49:05', '2024-07-08 11:49:05'),
(28, 13, 'q0MV1720455331', 0, '2024-07-08 16:15:31', '2024-07-08 16:15:31'),
(29, 13, 'JIkz1720806810', 0, '2024-07-12 17:53:30', '2024-07-12 17:53:30'),
(30, 92, '34M61721056559', 1, '2024-07-15 15:15:59', '2024-07-15 16:54:34'),
(31, 92, 'PlCl1721059854', 1, '2024-07-15 16:10:54', '2024-07-15 16:54:34'),
(33, 108, 'hWtu1723782199', 0, '2024-08-16 10:23:19', '2024-08-16 10:23:19'),
(35, 108, '02e11723782375', 0, '2024-08-16 10:26:15', '2024-08-16 10:26:15'),
(37, 108, 'C5gb1723782410', 0, '2024-08-16 10:26:50', '2024-08-16 10:26:50'),
(39, 108, '0unR1723782441', 0, '2024-08-16 10:27:21', '2024-08-16 10:27:21'),
(40, 186, 'zGtE1723750295', 0, '2024-08-15 19:31:35', '2024-08-15 19:31:35'),
(41, 108, 'zGtE1723750295', 0, '2024-08-15 19:31:35', '2024-08-15 19:31:35'),
(42, 186, 'YcR01723751845', 0, '2024-08-15 19:57:25', '2024-08-15 19:57:25'),
(44, 108, 'RVKg1723755101', 0, '2024-08-15 20:51:41', '2024-08-15 20:51:41'),
(45, 112, 'D70H1723762196', 0, '2024-08-15 22:49:56', '2024-08-15 22:49:56'),
(46, 142, 'D70H1723762196', 0, '2024-08-15 22:49:56', '2024-08-15 22:49:56'),
(51, 108, '7pSG1723764163', 0, '2024-08-15 23:22:43', '2024-08-15 23:22:43'),
(52, 108, 'g86h1723764294', 0, '2024-08-15 23:24:54', '2024-08-15 23:24:54'),
(53, 108, '2DPm1723765488', 0, '2024-08-15 23:44:48', '2024-08-15 23:44:48'),
(54, 142, 'GfCT1723768934', 0, '2024-08-16 00:42:14', '2024-08-16 00:42:14'),
(56, 108, 'o8zI1723805033', 0, '2024-08-16 10:43:53', '2024-08-16 10:43:53'),
(58, 108, 'mXhN1723827705', 0, '2024-08-16 17:01:45', '2024-08-16 17:01:45'),
(59, 112, 'mXhN1723827705', 0, '2024-08-16 17:01:45', '2024-08-16 17:01:45'),
(60, 196, 'FZ8q1723833478', 0, '2024-08-16 18:37:58', '2024-08-16 18:37:58'),
(62, 200, 'FZ8q1723833478', 1, '2024-08-16 18:37:58', '2024-08-17 21:57:59'),
(63, 200, '8GW91723833666', 1, '2024-08-16 18:41:06', '2024-08-17 21:57:59'),
(65, 196, 'DujE1723833940', 0, '2024-08-16 18:45:40', '2024-08-16 18:45:40'),
(66, 142, 'DujE1723833940', 0, '2024-08-16 18:45:40', '2024-08-16 18:45:40'),
(71, 108, 'EJ0a1723834321', 0, '2024-08-16 18:52:01', '2024-08-16 18:52:01'),
(73, 112, '80xT1723834917', 0, '2024-08-16 19:01:57', '2024-08-16 19:01:57'),
(74, 108, '80xT1723834917', 0, '2024-08-16 19:01:57', '2024-08-16 19:01:57'),
(76, 108, '5YA31723836376', 0, '2024-08-16 19:26:16', '2024-08-16 19:26:16'),
(78, 108, 'CURK1723836693', 0, '2024-08-16 19:31:33', '2024-08-16 19:31:33'),
(79, 108, 'KZFA1723837136', 0, '2024-08-16 19:38:56', '2024-08-16 19:38:56'),
(81, 108, '1zU31723837775', 0, '2024-08-16 19:49:35', '2024-08-16 19:49:35'),
(84, 200, 'Ctid1723932392', 1, '2024-08-17 22:06:32', '2024-08-29 20:55:55'),
(85, 200, 't1KN1723994881', 1, '2024-08-18 15:28:01', '2024-08-29 20:55:55'),
(86, 82, 'DR3r1724235145', 0, '2024-08-21 10:12:25', '2024-08-21 10:12:25'),
(87, 200, 'ecMp1724244527', 1, '2024-08-21 12:48:47', '2024-08-29 20:55:55'),
(88, 200, '9hE21724324632', 1, '2024-08-22 11:03:52', '2024-08-29 20:55:55'),
(89, 200, 'e72R1724587323', 1, '2024-08-25 12:02:03', '2024-08-29 20:55:55'),
(90, 200, 'l63h1724588498', 1, '2024-08-25 12:21:38', '2024-08-29 20:55:55'),
(91, 200, 'CSLc1724697391', 1, '2024-08-26 18:36:31', '2024-08-29 20:55:55'),
(92, 201, 'yYsy1724790575', 1, '2024-08-27 20:29:35', '2024-09-10 11:27:43'),
(93, 201, '2Mml1724796877', 1, '2024-08-27 22:14:37', '2024-09-10 11:27:43'),
(94, 200, '2Mml1724796877', 1, '2024-08-27 22:14:37', '2024-08-29 20:55:55'),
(95, 200, 'Al971724798308', 1, '2024-08-27 22:38:28', '2024-08-29 20:55:55'),
(96, 200, 'L1ji1724802260', 1, '2024-08-27 23:44:20', '2024-08-29 20:55:55'),
(97, 201, 'fEih1724861500', 1, '2024-08-28 16:11:40', '2024-09-10 11:27:43'),
(98, 200, 'DwVJ1724861665', 1, '2024-08-28 16:14:25', '2024-08-29 20:55:55'),
(99, 200, 'maPU1724879468', 1, '2024-08-28 21:11:08', '2024-08-29 20:55:55'),
(100, 200, 'DIff1724964948', 1, '2024-08-29 20:55:48', '2024-08-29 20:55:55'),
(101, 200, 'TZgY1725228244', 1, '2024-09-01 22:04:04', '2024-09-09 23:49:06'),
(102, 200, 'BQlZ1725307831', 1, '2024-09-02 20:10:31', '2024-09-09 23:49:06'),
(103, 200, 'OwOt1725364903', 1, '2024-09-03 12:01:43', '2024-09-09 23:49:06'),
(104, 200, 'uKBl1725373147', 1, '2024-09-03 14:19:07', '2024-09-09 23:49:06'),
(105, 200, 'Ukru1725374684', 1, '2024-09-03 14:44:44', '2024-09-09 23:49:06'),
(106, 200, 'wHWj1725378232', 1, '2024-09-03 15:43:52', '2024-09-09 23:49:06'),
(107, 200, 'kFUG1725391269', 1, '2024-09-03 19:21:09', '2024-09-09 23:49:06'),
(108, 200, 'VS3s1725393373', 1, '2024-09-03 19:56:13', '2024-09-09 23:49:06'),
(109, 201, 'VS3s1725393373', 1, '2024-09-03 19:56:13', '2024-09-10 11:27:43'),
(110, 82, 'VS3s1725393373', 0, '2024-09-03 19:56:13', '2024-09-03 19:56:13'),
(111, 200, 'AoVX1725981365', 1, '2024-09-10 15:16:05', '2024-09-10 15:52:12'),
(112, 200, 'rxTT1726002486', 1, '2024-09-10 21:08:06', '2024-09-12 12:34:59'),
(113, 175, 'Ea4J1726069355', 0, '2024-09-11 15:42:35', '2024-09-11 15:42:35'),
(114, 175, 'lqWc1726071041', 0, '2024-09-11 16:10:41', '2024-09-11 16:10:41'),
(115, 175, '1rKD1726071135', 0, '2024-09-11 16:12:15', '2024-09-11 16:12:15'),
(116, 175, '9DTf1726071925', 0, '2024-09-11 16:25:25', '2024-09-11 16:25:25'),
(117, 218, 'sa1H1726081635', 0, '2024-09-11 19:07:15', '2024-09-11 19:07:15'),
(118, 175, 'sa1H1726081635', 0, '2024-09-11 19:07:15', '2024-09-11 19:07:15'),
(119, 22, 'sOVv1726082231', 0, '2024-09-11 19:17:11', '2024-09-11 19:17:11'),
(120, 175, 'sOVv1726082231', 0, '2024-09-11 19:17:11', '2024-09-11 19:17:11'),
(121, 175, 'CVMc1726082592', 0, '2024-09-11 19:23:12', '2024-09-11 19:23:12'),
(122, 175, 'qBe91726083186', 0, '2024-09-11 19:33:06', '2024-09-11 19:33:06'),
(123, 175, 'JiWB1726084145', 0, '2024-09-11 19:49:05', '2024-09-11 19:49:05'),
(124, 175, 'KPVQ1726084875', 0, '2024-09-11 20:01:15', '2024-09-11 20:01:15'),
(125, 175, 'DJZ91726085986', 0, '2024-09-11 20:19:46', '2024-09-11 20:19:46'),
(126, 175, 'vGwB1726086465', 0, '2024-09-11 20:27:45', '2024-09-11 20:27:45'),
(127, 221, 'qir41726088483', 0, '2024-09-11 21:01:23', '2024-09-11 21:01:23'),
(128, 221, 'B9ol1726088636', 0, '2024-09-11 21:03:56', '2024-09-11 21:03:56'),
(129, 221, 'V6Bs1726088781', 0, '2024-09-11 21:06:21', '2024-09-11 21:06:21'),
(130, 221, 'nk2Z1726093053', 0, '2024-09-11 22:17:33', '2024-09-11 22:17:33'),
(131, 221, 'Lql41726093723', 0, '2024-09-11 22:28:43', '2024-09-11 22:28:43'),
(132, 200, 'P6cG1726839649', 0, '2024-09-20 13:40:49', '2024-09-20 13:40:49'),
(133, 200, 'dPHJ1726842577', 0, '2024-09-20 14:29:37', '2024-09-20 14:29:37'),
(134, 200, 'gVv21727188192', 0, '2024-09-24 14:29:52', '2024-09-24 14:29:52'),
(135, 238, 'hxsW1727435915', 0, '2024-09-27 11:18:35', '2024-09-27 11:18:35'),
(136, 200, 'FnvE1727876711', 0, '2024-10-02 13:45:11', '2024-10-02 13:45:11'),
(137, 200, 'P00C1727883320', 0, '2024-10-02 15:35:20', '2024-10-02 15:35:20'),
(138, 200, '0L6b1727889482', 0, '2024-10-02 17:18:02', '2024-10-02 17:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

DROP TABLE IF EXISTS `user_subscriptions`;
CREATE TABLE IF NOT EXISTS `user_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int NOT NULL,
  `allowed_products` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency_sign`, `currency_code`, `currency_value`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(84, 13, 5, 'Standard', '$', 'NGN', '1', 60, 45, 500, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '242099342', NULL, NULL, '2019-10-10 02:35:29', '2019-10-10 02:35:29', 1, NULL),
(151, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_1HlTPfJlIV5dN9n72gC9N5YJ', 'ch_1HlTPfJlIV5dN9n7dUMT6rYg', NULL, '2020-11-08 23:59:35', '2020-11-08 23:59:35', 1, NULL),
(152, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '6KD881488A1277949', NULL, NULL, '2020-11-09 00:00:38', '2020-11-09 00:00:38', 1, NULL),
(153, 13, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '0R5121086C3908633', NULL, NULL, '2020-11-09 00:05:48', '2020-11-09 00:05:48', 1, NULL),
(154, 13, 5, 'Standard', '₦', 'NGN', '363.919', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '949523367', NULL, NULL, '2020-11-09 00:06:35', '2020-11-09 00:06:35', 1, NULL),
(155, 31, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-09 02:00:24', '2020-11-09 02:00:24', 1, NULL),
(156, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2020-11-10 22:48:58', '2020-11-10 22:48:58', 1, NULL),
(157, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:22:09', '2020-11-11 00:22:09', 1, NULL),
(158, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2020-11-11 00:23:42', '2020-11-11 00:23:42', 1, NULL),
(159, 13, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Molly', 'tr_GujuVzTkBB', NULL, NULL, '2021-09-11 22:00:44', '2021-09-11 22:00:44', 1, NULL),
(162, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1097bc27', NULL, NULL, '2021-12-15 04:18:49', '2021-12-15 04:18:53', 1, NULL),
(163, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ub5JlIV5dN9n70iNV3Ozl', 'ch_3K6ub5JlIV5dN9n70DG2D5OL', NULL, '2021-12-15 04:20:32', '2021-12-15 04:20:32', 1, NULL),
(164, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'txn_3K6ubRJlIV5dN9n70sRXFljG', 'ch_3K6ubRJlIV5dN9n70ckCrcKK', NULL, '2021-12-15 04:20:54', '2021-12-15 04:20:54', 1, NULL),
(165, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c1968d008', NULL, NULL, '2021-12-15 04:21:10', '2021-12-15 04:21:13', 1, NULL),
(166, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c212dc758', NULL, NULL, '2021-12-15 04:23:14', '2021-12-15 04:23:18', 1, NULL),
(167, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c2fc010c8', NULL, NULL, '2021-12-15 04:27:08', '2021-12-15 04:27:11', 1, NULL),
(168, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c31b72a00', NULL, NULL, '2021-12-15 04:27:39', '2021-12-15 04:27:42', 1, NULL),
(169, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c510f4116', NULL, NULL, '2021-12-15 04:36:01', '2021-12-15 04:36:04', 1, NULL),
(170, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c58ea2995', NULL, NULL, '2021-12-15 04:38:06', '2021-12-15 04:38:09', 1, NULL),
(171, 22, 7, 'Unlimited', '৳', 'BDT', '84.63', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'SSLCommerz', 'SSLCZ_TXN_61b9c5cc649ce', NULL, NULL, '2021-12-15 04:39:08', '2021-12-15 04:39:11', 1, NULL),
(172, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Stripe', 'txn_3KTjT0JlIV5dN9n70jJxJUry', 'ch_3KTjT0JlIV5dN9n70b9oPU0r', NULL, '2022-02-16 03:06:31', '2022-02-16 03:06:31', 1, NULL),
(173, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2022-09-21 02:11:49', '2022-09-21 02:11:49', 1, NULL),
(174, 22, 8, 'Basic', '$', 'USD', '1', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2022-09-21 02:11:52', '2022-09-21 02:11:52', 1, NULL),
(175, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'pi_3O4yPOJlIV5dN9n70r3wrvTG', NULL, NULL, '2023-10-24 22:09:35', '2023-10-24 22:09:35', 1, NULL),
(176, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Stripe', 'pi_3O4yQGJlIV5dN9n70ZOHLiQb', NULL, NULL, '2023-10-24 22:10:28', '2023-10-24 22:10:28', 1, NULL),
(177, 22, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Paypal', '1EF267754X530482W', NULL, NULL, '2023-10-24 22:31:19', '2023-10-24 22:31:19', 1, NULL),
(178, 49, 8, 'Basic', '$', 'USD', '1', 0, 30, 1, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-05-21 13:54:51', '2024-05-21 13:54:51', 1, NULL),
(179, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'cities.sql', NULL, NULL, '2024-05-31 16:33:24', '2024-06-11 17:34:07', 1, NULL),
(180, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'imageedit_15_4119772585.png', NULL, NULL, '2024-06-02 08:08:22', '2024-06-11 17:34:03', 1, NULL),
(181, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1717328554.png', NULL, NULL, '2024-06-02 08:42:34', '2024-06-11 17:33:58', 1, NULL),
(182, 22, 5, 'Standard', '$', 'USD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1717341755.png', NULL, NULL, '2024-06-02 12:22:35', '2024-06-02 12:24:02', 1, NULL),
(183, 53, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ASIA PAY', 'images/1719595388.png', NULL, NULL, '2024-06-28 17:23:08', '2024-06-28 17:24:39', 1, NULL),
(184, 53, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-06-28 17:24:59', '2024-06-28 17:24:59', 1, NULL),
(185, 49, 6, 'Premium', '$', 'USD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-06-30 04:57:07', '2024-06-30 04:57:07', 1, NULL),
(186, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:42:30', '2024-07-02 14:42:30', 1, NULL),
(187, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:42:33', '2024-07-02 14:42:33', 1, NULL),
(188, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:42:34', '2024-07-02 14:42:34', 1, NULL),
(189, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:42:41', '2024-07-02 14:42:41', 1, NULL),
(190, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:43:08', '2024-07-02 14:43:08', 1, NULL),
(191, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:43:46', '2024-07-02 14:43:46', 1, NULL),
(192, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:43:47', '2024-07-02 14:43:47', 1, NULL),
(193, 22, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-02 14:43:51', '2024-07-02 14:43:51', 1, NULL),
(194, 22, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1720528863.jpeg', NULL, NULL, '2024-07-09 12:41:03', '2024-07-13 14:40:26', 1, NULL),
(195, 75, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-12 16:34:55', '2024-07-12 16:34:55', 1, NULL),
(196, 82, 7, 'Unlimited', '$', 'USD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1720878915.jpg', NULL, NULL, '2024-07-13 13:55:15', '2024-07-13 13:55:57', 1, NULL),
(197, 81, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-13 14:32:01', '2024-07-13 14:32:01', 1, NULL),
(198, 84, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1720881571.png', NULL, NULL, '2024-07-13 14:39:31', '2024-07-13 14:40:09', 1, NULL),
(199, 81, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ASIA PAY', 'images/1720882524.jpg', NULL, NULL, '2024-07-13 14:55:24', '2024-07-13 14:56:30', 1, NULL),
(200, 75, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-13 16:42:49', '2024-07-13 16:42:49', 1, NULL),
(201, 75, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-07-13 16:44:20', '2024-07-13 16:44:20', 1, NULL),
(202, 86, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-13 16:46:36', '2024-07-13 16:46:36', 1, NULL),
(203, 78, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-14 12:48:28', '2024-07-14 12:48:28', 1, NULL),
(204, 88, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-14 13:39:39', '2024-07-14 13:39:39', 1, NULL),
(205, 88, 8, 'Basic', '$', 'USD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-14 13:42:02', '2024-07-14 13:42:02', 1, NULL),
(206, 89, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-07-15 11:09:42', '2024-07-15 11:09:42', 1, NULL),
(207, 90, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-15 13:52:13', '2024-07-15 13:52:13', 1, NULL),
(208, 90, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-15 13:53:14', '2024-07-15 13:53:14', 1, NULL),
(209, 92, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-07-15 14:17:35', '2024-07-15 14:17:35', 1, NULL),
(210, 92, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-07-15 14:50:35', '2024-07-15 14:50:35', 1, NULL),
(211, 92, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-15 14:56:29', '2024-07-15 14:56:29', 1, NULL),
(212, 93, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-07-15 17:01:01', '2024-07-15 17:01:01', 1, NULL),
(213, 93, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-15 17:06:28', '2024-07-15 17:06:28', 1, NULL),
(214, 99, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1721305798.png', NULL, NULL, '2024-07-18 12:29:58', '2024-08-02 06:02:04', 1, NULL),
(215, 99, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1721305884.png', NULL, NULL, '2024-07-18 12:31:24', '2024-08-02 06:02:21', 1, NULL),
(216, 101, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1721762113.jpg', NULL, NULL, '2024-07-24 00:15:13', '2024-07-24 00:15:29', 1, NULL),
(217, 101, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1721829125.jpg', NULL, NULL, '2024-07-24 18:52:05', '2024-07-24 18:52:37', 1, NULL),
(218, 102, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-07-24 20:36:07', '2024-07-24 20:36:07', 1, NULL),
(219, 102, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1721835415.jpg', NULL, NULL, '2024-07-24 20:36:55', '2024-07-24 20:37:09', 1, NULL),
(220, 103, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1721853896.jpg', NULL, NULL, '2024-07-25 01:44:56', '2024-07-25 01:45:34', 1, NULL),
(221, 106, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-08-01 11:24:11', '2024-08-01 11:24:11', 1, NULL),
(222, 108, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1722695481.jpg', NULL, NULL, '2024-08-03 19:31:21', '2024-08-03 19:31:21', 0, NULL),
(223, 108, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1722695610.jpg', NULL, NULL, '2024-08-03 19:33:30', '2024-08-03 19:33:30', 0, NULL),
(224, 108, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1722696131.jpg', NULL, NULL, '2024-08-03 19:42:11', '2024-08-03 19:42:11', 0, NULL),
(225, 108, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1722696210.jpg', NULL, NULL, '2024-08-03 19:43:30', '2024-08-03 19:43:30', 0, NULL),
(226, 112, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1722775656.jpg', NULL, NULL, '2024-08-04 17:47:36', '2024-08-04 17:47:53', 1, NULL),
(227, 114, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-08-04 18:42:51', '2024-08-04 18:42:51', 1, NULL),
(228, 142, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1722858256.jpg', NULL, NULL, '2024-08-05 16:44:16', '2024-08-05 16:44:36', 1, NULL),
(229, 171, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 08:18:47', '2024-08-07 08:18:47', 1, NULL),
(230, 172, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 22:08:50', '2024-08-07 22:08:50', 1, NULL),
(231, 173, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 22:10:19', '2024-08-07 22:10:19', 1, NULL),
(232, 174, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 22:19:33', '2024-08-07 22:19:33', 1, NULL),
(233, 175, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:36:54', '2024-08-07 23:36:54', 1, NULL),
(234, 176, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:37:17', '2024-08-07 23:37:17', 1, NULL),
(235, 177, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:37:47', '2024-08-07 23:37:47', 1, NULL),
(236, 178, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:37:57', '2024-08-07 23:37:57', 1, NULL),
(237, 179, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:38:13', '2024-08-07 23:38:13', 1, NULL),
(238, 180, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:43:33', '2024-08-07 23:43:33', 1, NULL),
(239, 181, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:44:30', '2024-08-07 23:44:30', 1, NULL),
(240, 182, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:46:51', '2024-08-07 23:46:51', 1, NULL),
(241, 183, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-07 23:48:20', '2024-08-07 23:48:20', 1, NULL),
(242, 184, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 00:03:31', '2024-08-08 00:03:31', 1, NULL),
(243, 185, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 00:03:52', '2024-08-08 00:03:52', 1, NULL),
(244, 186, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 00:22:31', '2024-08-08 00:22:31', 1, NULL),
(245, 187, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 01:01:48', '2024-08-08 01:01:48', 1, NULL),
(246, 188, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:07:09', '2024-08-08 02:07:09', 1, NULL),
(247, 189, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:08:39', '2024-08-08 02:08:39', 1, NULL),
(248, 190, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:12:06', '2024-08-08 02:12:06', 1, NULL),
(249, 191, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:12:40', '2024-08-08 02:12:40', 1, NULL),
(250, 192, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:14:39', '2024-08-08 02:14:39', 1, NULL),
(251, 193, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:20:40', '2024-08-08 02:20:40', 1, NULL),
(252, 194, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:26:02', '2024-08-08 02:26:02', 1, NULL),
(253, 195, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 02:27:34', '2024-08-08 02:27:34', 1, NULL),
(254, 196, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-08 06:33:04', '2024-08-08 06:33:04', 1, NULL),
(255, 197, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-11 02:03:22', '2024-08-11 02:03:22', 1, NULL),
(256, 198, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-11 02:04:41', '2024-08-11 02:04:41', 1, NULL),
(257, 199, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-11 02:16:14', '2024-08-11 02:16:14', 1, NULL),
(258, 200, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-11 03:21:48', '2024-08-11 03:21:48', 1, NULL),
(259, 186, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1723753069.jpg', NULL, NULL, '2024-08-15 20:17:49', '2024-08-15 20:17:49', 0, NULL),
(260, 186, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN-CASH', 'images/1723813779.png', NULL, NULL, '2024-08-16 13:09:39', '2024-08-16 13:09:39', 0, NULL),
(261, 200, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ASIA PAY', 'images/1723830393.png', NULL, NULL, '2024-08-16 17:46:33', '2024-08-16 17:46:33', 0, NULL),
(262, 201, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-17 14:31:27', '2024-08-17 14:31:27', 1, NULL),
(263, 200, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1723905756.jpeg', NULL, NULL, '2024-08-17 14:42:36', '2024-08-17 14:43:04', 1, NULL),
(264, 200, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1723906131.jpeg', NULL, NULL, '2024-08-17 14:48:51', '2024-08-17 14:49:02', 1, NULL),
(265, 201, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1723906325.jpeg', NULL, NULL, '2024-08-17 14:52:05', '2024-08-17 14:52:28', 1, NULL),
(266, 201, 6, 'Premium', 'D', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1723906438.jpeg', NULL, NULL, '2024-08-17 14:53:58', '2024-08-17 14:54:07', 1, NULL),
(267, 82, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1723909151.jpeg', NULL, NULL, '2024-08-17 15:39:11', '2024-08-17 15:39:11', 0, NULL),
(268, 82, 8, 'Basic', 'D', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-08-17 15:43:59', '2024-08-17 15:43:59', 1, NULL),
(269, 82, 5, 'Standard', 'D', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1723909467.jpeg', NULL, NULL, '2024-08-17 15:44:27', '2024-08-17 16:13:42', 1, NULL),
(270, 202, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-17 16:09:30', '2024-08-17 16:09:30', 1, NULL),
(271, 201, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1723911070.jpeg', NULL, NULL, '2024-08-17 16:11:10', '2024-08-17 16:13:38', 1, NULL),
(272, 202, 7, 'Unlimited', 'D', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1723911322.jpeg', NULL, NULL, '2024-08-17 16:15:22', '2024-08-17 16:15:22', 0, NULL),
(273, 203, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-18 15:46:52', '2024-08-18 15:46:52', 1, NULL),
(274, 204, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-18 23:13:18', '2024-08-18 23:13:18', 1, NULL),
(275, 205, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-08-18 23:15:15', '2024-08-18 23:15:15', 1, NULL),
(276, 199, 8, 'Basic', 'IQD', 'IQD', '1', 0, 30, 10, '<ol><li>hamza<br></li><li>hamza2<br></li><li>HAMZA4</li><li>50 PRODUCTS&nbsp;<br></li></ol>', 'Free', NULL, NULL, NULL, '2024-09-03 15:55:57', '2024-09-03 15:55:57', 1, NULL),
(277, 199, 7, 'Unlimited', 'IQD', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1725378975.jpeg', NULL, NULL, '2024-09-03 15:56:15', '2024-09-03 15:57:38', 1, NULL),
(278, 175, 7, 'Unlimited', 'IQD', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1725823952.jpg', NULL, NULL, '2024-09-08 19:32:32', '2024-09-08 19:32:32', 0, NULL),
(279, 175, 6, 'Premium', 'IQD', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ASIA PAY', 'images/1725823968.jpeg', NULL, NULL, '2024-09-08 19:32:48', '2024-09-08 19:32:48', 0, NULL),
(280, 175, 10, 'Gold', 'IQD', 'IQD', '1', 5000000, 365, 0, NULL, 'ZAIN CASH', 'images/1725839707.jpg', NULL, NULL, '2024-09-08 23:55:07', '2024-09-08 23:56:03', 1, NULL),
(281, 200, 7, 'Unlimited', 'IQD', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1725922532.png', NULL, NULL, '2024-09-09 22:55:32', '2024-09-09 22:55:32', 0, NULL),
(282, 202, 7, 'Unlimited', 'IQD', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1726006387.png', NULL, NULL, '2024-09-10 22:13:07', '2024-09-10 22:13:07', 0, NULL),
(283, 218, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-11 15:47:39', '2024-09-11 15:47:39', 1, NULL),
(284, 219, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-11 19:51:05', '2024-09-11 19:51:05', 1, NULL),
(285, 220, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-11 19:51:24', '2024-09-11 19:51:24', 1, NULL),
(286, 221, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-11 19:52:17', '2024-09-11 19:52:17', 1, NULL),
(287, 222, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-11 21:43:29', '2024-09-11 21:43:29', 1, NULL),
(288, 223, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-12 19:03:18', '2024-09-12 19:03:18', 1, NULL),
(289, 224, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-12 19:11:07', '2024-09-12 19:11:07', 1, NULL),
(290, 225, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-12 19:52:32', '2024-09-12 19:52:32', 1, NULL),
(291, 226, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-12 20:03:16', '2024-09-12 20:03:16', 1, NULL),
(292, 227, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-12 20:09:03', '2024-09-12 20:09:03', 1, NULL),
(293, 227, 5, 'Standard', 'IQD', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1726171880.png', NULL, NULL, '2024-09-12 20:11:20', '2024-09-12 20:12:45', 1, NULL),
(294, 228, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-14 15:43:13', '2024-09-14 15:43:13', 1, NULL),
(295, 229, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-14 15:53:56', '2024-09-14 15:53:56', 1, NULL),
(296, 230, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-14 22:24:49', '2024-09-14 22:24:49', 1, NULL),
(297, 231, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-09-15 12:25:14', '2024-09-15 12:25:14', 1, NULL),
(298, 200, 7, 'Unlimited', 'IQD', 'IQD', '1', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'ZAIN CASH', 'images/1726842791.jpg', NULL, NULL, '2024-09-20 14:33:11', '2024-10-02 14:28:51', 1, NULL),
(299, 200, 5, 'Standard', 'IQD', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1727877104.jpeg', NULL, NULL, '2024-10-02 13:51:44', '2024-10-02 13:51:44', 0, NULL),
(300, 200, 16, 'Gold7', 'IQD', 'IQD', '1', 5000, 365, 0, NULL, 'ZAIN CASH', 'images/1727883012.png', NULL, NULL, '2024-10-02 15:30:12', '2024-10-02 16:08:07', 1, NULL),
(301, 231, 6, 'Premium', 'IQD', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-10-02 16:06:53', '2024-10-02 16:06:53', 1, NULL),
(302, 249, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-10-02 16:40:12', '2024-10-02 16:40:12', 1, NULL),
(303, 200, 5, 'Standard', 'IQD', 'IQD', '1', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'ZAIN CASH', 'images/1727889541.png', NULL, NULL, '2024-10-02 17:19:01', '2024-10-02 17:43:49', 1, NULL),
(304, 249, 6, 'Premium', 'IQD', 'IQD', '1', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>', 'Free', NULL, NULL, NULL, '2024-10-02 17:42:07', '2024-10-02 17:42:07', 1, NULL),
(305, 251, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-10-02 18:03:27', '2024-10-02 18:03:27', 1, NULL),
(306, 252, 8, 'Basic', '$', 'USD', '1', 0, 50, 10, 'Basic subscription details', 'Free', NULL, NULL, NULL, '2024-10-02 18:04:58', '2024-10-02 18:04:58', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

DROP TABLE IF EXISTS `vendor_orders`;
CREATE TABLE IF NOT EXISTS `vendor_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`, `created_at`) VALUES
(1, 22, 1, 2, 230, 'AUX51716129156', 'completed', '2024-05-19 14:32:36'),
(2, 22, 2, 2, 230, 'JRwQ1716129160', 'completed', '2024-05-19 14:32:40'),
(3, 22, 3, 1, 321, 'L0Vf1716404181', 'pending', '2024-05-22 18:56:21'),
(4, 13, 4, 1, 89, 'QNhc1717182206', 'pending', '2024-05-31 19:03:26'),
(5, 22, 5, 2, 220, 'FQ051717341404', 'pending', '2024-06-02 15:16:44'),
(6, 22, 6, 2, 220, 'BpO01717343401', 'pending', '2024-06-02 15:50:01'),
(7, 13, 7, 1, 110, 'BOxX1717590187', 'pending', '2024-06-05 12:23:07'),
(8, 13, 14, 1, 80, 'Ik5o1719252733', 'pending', '2024-06-24 18:12:13'),
(9, 13, 17, 1, 330, 'UYCR1719653540', 'pending', '2024-06-29 09:32:20'),
(10, 22, 25, 0, 0, 'rRkC1719704558', 'pending', '2024-06-29 23:42:38'),
(11, 13, 26, 1, 80, 'NaQn1719738736', 'pending', '2024-06-30 09:12:16'),
(12, 13, 27, 0, 0, 'STm71719739661', 'pending', '2024-06-30 09:27:42'),
(13, 22, 28, 0, 0, '1Q3I1719739957', 'pending', '2024-06-30 09:32:37'),
(14, 22, 29, 0, 0, 'i6Tf1719739962', 'pending', '2024-06-30 09:32:42'),
(15, 22, 30, 0, 0, 'z7PB1719739971', 'pending', '2024-06-30 09:32:51'),
(16, 22, 31, 0, 0, 'aU0F1719739977', 'pending', '2024-06-30 09:32:57'),
(17, 22, 32, 0, 0, 'o2Eu1719740055', 'pending', '2024-06-30 09:34:15'),
(18, 22, 33, 0, 0, 'lIR81719740059', 'pending', '2024-06-30 09:34:19'),
(19, 22, 34, 0, 0, 'bPR51719740142', 'pending', '2024-06-30 09:35:42'),
(20, 22, 35, 0, 0, 'sZIY1719918659', 'pending', '2024-07-02 11:10:59'),
(21, 13, 53, 0, 0, 'cwZv1720107311', 'pending', '2024-07-04 15:35:12'),
(22, 13, 54, 0, 0, 'UHge1720107452', 'pending', '2024-07-04 15:37:32'),
(23, 22, 55, 0, 0, 'mW6M1720110170', 'pending', '2024-07-04 16:22:50'),
(24, 13, 56, 1, 80, 'peAH1720189086', 'pending', '2024-07-05 14:18:06'),
(25, 13, 57, 1, 80, 'j3Wg1720190157', 'pending', '2024-07-05 14:35:57'),
(26, 13, 57, 1, 30, 'j3Wg1720190157', 'pending', '2024-07-05 14:35:57'),
(27, 13, 58, 1, 51, 'SlNm1720274836', 'pending', '2024-07-06 14:07:16'),
(28, 13, 59, 1, 80, 'WLy31720439345', 'pending', '2024-07-08 11:49:05'),
(29, 13, 60, 1, 315, 'q0MV1720455331', 'pending', '2024-07-08 16:15:31'),
(30, 13, 61, 1, 30, 'JIkz1720806810', 'pending', '2024-07-12 17:53:30'),
(31, 92, 62, 1, 11111110.5, '34M61721056559', 'pending', '2024-07-15 15:15:59'),
(32, 92, 63, 6, 1500000, 'PlCl1721059854', 'pending', '2024-07-15 16:10:54'),
(33, 103, 64, 1, 5000, 'hWtu1723782199', 'pending', '2024-08-16 04:23:19'),
(34, 108, 64, 2, 10000, 'hWtu1723782199', 'pending', '2024-08-16 04:23:19'),
(35, 103, 65, 1, 5000, '02e11723782375', 'pending', '2024-08-16 04:26:15'),
(36, 108, 65, 2, 10000, '02e11723782375', 'pending', '2024-08-16 04:26:15'),
(37, 103, 66, 1, 5000, 'C5gb1723782410', 'pending', '2024-08-16 04:26:50'),
(38, 108, 66, 2, 10000, 'C5gb1723782410', 'pending', '2024-08-16 04:26:50'),
(39, 103, 67, 1, 5000, '0unR1723782441', 'pending', '2024-08-16 04:27:21'),
(40, 108, 67, 2, 10000, '0unR1723782441', 'pending', '2024-08-16 04:27:21'),
(41, 186, 68, 2, 10908, 'zGtE1723750295', 'pending', '2024-08-15 19:31:35'),
(42, 186, 68, 1, 555, 'zGtE1723750295', 'pending', '2024-08-15 19:31:35'),
(43, 108, 68, 1, 5000, 'zGtE1723750295', 'pending', '2024-08-15 19:31:35'),
(44, 186, 69, 1, 555, 'YcR01723751845', 'pending', '2024-08-15 19:57:25'),
(45, 103, 69, 1, 5000, 'YcR01723751845', 'pending', '2024-08-15 19:57:25'),
(46, 108, 70, 1, 5000, 'RVKg1723755101', 'pending', '2024-08-15 20:51:41'),
(47, 112, 71, 1, 5000, 'D70H1723762196', 'pending', '2024-08-15 22:49:56'),
(48, 142, 71, 1, 5000, 'D70H1723762196', 'pending', '2024-08-15 22:49:56'),
(49, 103, 71, 1, 5000, 'D70H1723762196', 'pending', '2024-08-15 22:49:56'),
(50, 103, 72, 1, 5000, 'eFDj1723762288', 'pending', '2024-08-15 22:51:28'),
(51, 103, 73, 1, 5000, 'OJUj1723762480', 'pending', '2024-08-15 22:54:40'),
(52, 103, 74, 1, 5000, 'kZJI1723763395', 'pending', '2024-08-15 23:09:55'),
(53, 108, 75, 1, 5000, '7pSG1723764163', 'pending', '2024-08-15 23:22:43'),
(54, 108, 76, 1, 5000, 'g86h1723764294', 'pending', '2024-08-15 23:24:54'),
(55, 108, 77, 1, 5000, '2DPm1723765488', 'pending', '2024-08-15 23:44:48'),
(56, 142, 78, 1, 5000, 'GfCT1723768934', 'pending', '2024-08-16 00:42:14'),
(57, 103, 78, 1, 5000, 'GfCT1723768934', 'pending', '2024-08-16 00:42:14'),
(58, 108, 79, 1, 5000, 'o8zI1723805033', 'pending', '2024-08-16 10:43:53'),
(59, 103, 80, 1, 5000, 'Jca81723817132', 'pending', '2024-08-16 14:05:32'),
(60, 108, 81, 1, 5000, 'mXhN1723827705', 'pending', '2024-08-16 17:01:45'),
(61, 112, 81, 1, 5000, 'mXhN1723827705', 'pending', '2024-08-16 17:01:45'),
(62, 196, 82, 1, 1000000, 'FZ8q1723833478', 'pending', '2024-08-16 18:37:58'),
(63, 103, 82, 1, 5000, 'FZ8q1723833478', 'pending', '2024-08-16 18:37:58'),
(64, 200, 82, 1, 4111, 'FZ8q1723833478', 'completed', '2024-08-16 18:37:58'),
(65, 200, 83, 1, 4111, '8GW91723833666', 'pending', '2024-08-16 18:41:06'),
(66, 103, 83, 1, 5000, '8GW91723833666', 'pending', '2024-08-16 18:41:06'),
(67, 196, 84, 1, 1054, 'DujE1723833940', 'pending', '2024-08-16 18:45:40'),
(68, 142, 84, 1, 5000, 'DujE1723833940', 'pending', '2024-08-16 18:45:40'),
(69, 103, 84, 1, 5000, 'DujE1723833940', 'pending', '2024-08-16 18:45:40'),
(70, 103, 85, 1, 5000, 'MFzY1723834000', 'pending', '2024-08-16 18:46:40'),
(71, 103, 86, 1, 5000, 'ztjM1723834117', 'pending', '2024-08-16 18:48:37'),
(72, 103, 87, 1, 5000, 'EJ0a1723834321', 'pending', '2024-08-16 18:52:01'),
(73, 108, 87, 2, 10000, 'EJ0a1723834321', 'pending', '2024-08-16 18:52:01'),
(74, 103, 88, 1, 5000, 'AlJy1723834420', 'pending', '2024-08-16 18:53:40'),
(75, 112, 89, 1, 5000, '80xT1723834917', 'pending', '2024-08-16 19:01:57'),
(76, 108, 89, 1, 5000, '80xT1723834917', 'pending', '2024-08-16 19:01:57'),
(77, 103, 90, 1, 5000, 'xMwg1723836329', 'pending', '2024-08-16 19:25:29'),
(78, 108, 91, 1, 5000, '5YA31723836376', 'pending', '2024-08-16 19:26:16'),
(79, 103, 92, 1, 5000, 'ODHL1723836614', 'pending', '2024-08-16 19:30:14'),
(80, 108, 93, 1, 5000, 'CURK1723836693', 'pending', '2024-08-16 19:31:33'),
(81, 108, 94, 1, 5000, 'KZFA1723837136', 'pending', '2024-08-16 19:38:56'),
(82, 103, 95, 1, 5000, 'Zj161723837589', 'pending', '2024-08-16 19:46:29'),
(83, 108, 96, 1, 5000, '1zU31723837775', 'pending', '2024-08-16 19:49:35'),
(84, 103, 97, 1, 5000, 'H7M21723838183', 'pending', '2024-08-16 19:56:23'),
(85, 103, 98, 1, 5000, 'r3sA1723838253', 'pending', '2024-08-16 19:57:33'),
(86, 200, 102, 1, 5000, 'Ctid1723932392', 'pending', '2024-08-17 22:06:32'),
(87, 200, 103, 1, 5000, 't1KN1723994881', 'pending', '2024-08-18 15:28:01'),
(88, 82, 107, 1, 500000, 'DR3r1724235145', 'pending', '2024-08-21 10:12:25'),
(89, 200, 108, 1, 555, 'ecMp1724244527', 'pending', '2024-08-21 12:48:47'),
(90, 200, 111, 2, 1110, '9hE21724324632', 'pending', '2024-08-22 11:03:52'),
(91, 200, 115, 1, 555, 'e72R1724587323', 'pending', '2024-08-25 12:02:03'),
(92, 200, 116, 1, 555, 'l63h1724588498', 'pending', '2024-08-25 12:21:38'),
(93, 200, 117, 1, 5000, 'CSLc1724697391', 'pending', '2024-08-26 18:36:31'),
(94, 201, 118, 1, 5600, 'yYsy1724790575', 'pending', '2024-08-27 20:29:35'),
(95, 201, 119, 1, 5600, '2Mml1724796877', 'pending', '2024-08-27 22:14:37'),
(96, 200, 119, 1, 5000, '2Mml1724796877', 'completed', '2024-08-27 22:14:37'),
(97, 200, 120, 1, 5000, 'Al971724798308', 'pending', '2024-08-27 22:38:28'),
(98, 200, 121, 2, 10000, 'L1ji1724802260', 'completed', '2024-08-27 23:44:20'),
(99, 201, 122, 2, 11200, 'fEih1724861500', 'pending', '2024-08-28 16:11:40'),
(100, 200, 123, 2, 10000, 'DwVJ1724861665', 'completed', '2024-08-28 16:14:25'),
(101, 200, 125, 2, 10000, 'maPU1724879468', 'pending', '2024-08-28 21:11:08'),
(102, 200, 127, 1, 5000, 'DIff1724964948', 'completed', '2024-08-29 20:55:48'),
(103, 200, 215, 1, 5000, 'TZgY1725228244', 'pending', '2024-09-01 22:04:04'),
(104, 200, 234, 1, 5000, 'BQlZ1725307831', 'pending', '2024-09-02 20:10:31'),
(105, 200, 242, 1, 5000, 'OwOt1725364903', 'pending', '2024-09-03 12:01:43'),
(106, 200, 247, 4, 20000, 'uKBl1725373147', 'pending', '2024-09-03 14:19:07'),
(107, 200, 250, 1, 5000, 'Ukru1725374684', 'pending', '2024-09-03 14:44:44'),
(108, 200, 257, 1, 549.45, 'wHWj1725378232', 'pending', '2024-09-03 15:43:52'),
(109, 200, 257, 1, 5000, 'wHWj1725378232', 'pending', '2024-09-03 15:43:52'),
(110, 200, 259, 1, 5000, 'kFUG1725391269', 'pending', '2024-09-03 19:21:09'),
(111, 200, 263, 1, 5000, 'VS3s1725393373', 'pending', '2024-09-03 19:56:13'),
(112, 201, 263, 1, 500, 'VS3s1725393373', 'pending', '2024-09-03 19:56:13'),
(113, 82, 263, 1, 500000, 'VS3s1725393373', 'pending', '2024-09-03 19:56:13'),
(114, 200, 291, 1, 1000, 'AoVX1725981365', 'pending', '2024-09-10 15:16:05'),
(115, 200, 296, 1, 1000, 'rxTT1726002486', 'pending', '2024-09-10 21:08:06'),
(116, 175, 302, 1, 4444, 'Ea4J1726069355', 'pending', '2024-09-11 15:42:35'),
(117, 175, 304, 1, 4444, 'lqWc1726071041', 'pending', '2024-09-11 16:10:41'),
(118, 175, 305, 1, 4444, '1rKD1726071135', 'pending', '2024-09-11 16:12:15'),
(119, 175, 306, 1, 4444, '9DTf1726071925', 'pending', '2024-09-11 16:25:25'),
(120, 218, 308, 1, 11111, 'sa1H1726081635', 'pending', '2024-09-11 19:07:15'),
(121, 175, 308, 1, 4444, 'sa1H1726081635', 'pending', '2024-09-11 19:07:15'),
(122, 22, 310, 1, 5555, 'sOVv1726082231', 'pending', '2024-09-11 19:17:11'),
(123, 175, 310, 1, 4444, 'sOVv1726082231', 'pending', '2024-09-11 19:17:11'),
(124, 175, 311, 1, 11111, 'CVMc1726082592', 'pending', '2024-09-11 19:23:12'),
(125, 175, 313, 1, 11111, 'qBe91726083186', 'pending', '2024-09-11 19:33:06'),
(126, 175, 314, 1, 11111, 'JiWB1726084145', 'pending', '2024-09-11 19:49:05'),
(127, 175, 315, 1, 11111, 'KPVQ1726084875', 'pending', '2024-09-11 20:01:15'),
(128, 175, 316, 1, 11111, 'DJZ91726085986', 'pending', '2024-09-11 20:19:46'),
(129, 175, 317, 1, 111111, 'vGwB1726086465', 'pending', '2024-09-11 20:27:45'),
(130, 221, 318, 1, 111111, 'qir41726088483', 'pending', '2024-09-11 21:01:23'),
(131, 221, 319, 1, 111111, 'B9ol1726088636', 'pending', '2024-09-11 21:03:56'),
(132, 221, 320, 1, 111111, 'V6Bs1726088781', 'pending', '2024-09-11 21:06:21'),
(133, 221, 321, 1, 111111, 'nk2Z1726093053', 'pending', '2024-09-11 22:17:33'),
(134, 221, 322, 1, 111111, 'Lql41726093723', 'pending', '2024-09-11 22:28:43'),
(135, 200, 329, 1, 1000, 'P6cG1726839649', 'pending', '2024-09-20 13:40:49'),
(136, 200, 330, 1, 1000, 'dPHJ1726842577', 'pending', '2024-09-20 14:29:37'),
(137, 200, 340, 2, 2000, 'gVv21727188192', 'completed', '2024-09-24 14:29:52'),
(138, 238, 344, 6, 6396, 'hxsW1727435915', 'pending', '2024-09-27 11:18:35'),
(139, 200, 350, 2, 2000, 'FnvE1727876711', 'pending', '2024-10-02 13:45:11'),
(140, 200, 351, 2, 2000, 'P00C1727883320', 'pending', '2024-10-02 15:35:20'),
(141, 200, 352, 2, 2000, '0L6b1727889482', 'processing', '2024-10-02 17:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
CREATE TABLE IF NOT EXISTS `verifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(1, 13, '157096738015693932021.jpg,157096738015693932022.jpg', 'Verified', 'TEST', 0, NULL, '2019-10-13 05:49:40', '2024-07-15 14:19:35'),
(9, 49, '1716311156png.png', 'Verified', 'اىااىىتات', 0, NULL, '2024-05-21 14:05:56', '2024-06-11 17:34:20'),
(14, 22, '1719931584DENEMEnpng.png', 'Verified', 'vvvvvv', 0, NULL, '2024-07-02 14:46:24', '2024-07-02 14:46:43'),
(18, 80, '1720875978b5dcdcc53182573703c58db8633d529fjpg.jpg', 'Verified', 'h;lf', 0, NULL, '2024-07-13 13:06:18', '2024-07-13 13:06:31'),
(19, 81, '1720877416pngeggpng.png', 'Verified', 'll', 0, NULL, '2024-07-13 13:30:16', '2024-07-13 13:30:42'),
(20, 82, '1720879055Screenshot6jpg.jpg', 'Verified', 'testtt', 0, NULL, '2024-07-13 13:57:35', '2024-07-13 13:58:03'),
(21, 84, '1720881761testpng.png', 'Verified', 'سجلت و دفعت', 0, NULL, '2024-07-13 14:42:41', '2024-07-13 14:43:55'),
(22, 86, '1720889296photo5949760557143932382yjpg.jpg', 'Verified', 'sd', 0, NULL, '2024-07-13 16:48:16', '2024-07-13 16:48:45'),
(23, 88, '1720964432png.png', 'Verified', 'ffff', 0, 'ffff', '2024-07-14 13:39:50', '2024-07-14 13:42:59'),
(24, 89, '1721041836camerapng.png', 'Verified', 'Ea velit repellendus', 0, NULL, '2024-07-15 11:10:36', '2024-07-15 14:11:50'),
(25, 93, '17210633791720886215testpngpng.png', 'Verified', '١', 0, NULL, '2024-07-15 17:09:39', '2024-07-15 17:09:56'),
(27, 98, '172130476141jpg.jpg', 'Verified', 'You must complete your verfication first.', 0, NULL, '2024-07-18 12:12:41', '2024-07-18 12:13:33'),
(28, 99, '1721305691testpng.png', 'Verified', 'لل', 0, NULL, '2024-07-18 12:28:11', '2024-07-18 12:28:51'),
(29, 101, '172176199430de0589-9294-4b93-8c6c-f87aa6f0cc03jpg.jpg', 'Verified', 'acd', 0, NULL, '2024-07-24 00:13:14', '2024-07-24 00:13:37'),
(30, 102, '172183545130de0589-9294-4b93-8c6c-f87aa6f0cc03jpg.jpg', 'Verified', 'sssa', 0, NULL, '2024-07-24 20:37:31', '2024-07-24 20:37:47'),
(31, 103, '172185459130de0589-9294-4b93-8c6c-f87aa6f0cc03jpg.jpg', 'Verified', 'dsvddv', 0, NULL, '2024-07-25 01:56:31', '2024-07-25 02:01:22'),
(32, 106, '17224894171jpg.jpg', 'Verified', 'fdjydtry yetuytjdtttt', 0, NULL, '2024-08-01 11:16:57', '2024-08-01 11:18:52'),
(33, 107, '172255591873jpg.jpg', 'Verified', 'bdgbg', 0, NULL, '2024-08-02 05:45:18', '2024-08-02 05:46:43'),
(34, 231, NULL, NULL, NULL, 1, 'c', '2024-10-02 16:07:00', '2024-10-02 16:07:00'),
(35, 249, NULL, NULL, NULL, 1, 'azrar 11', '2024-10-02 17:42:13', '2024-10-02 17:42:13'),
(36, 200, '1728908261png.png', 'Pending', 's', 0, NULL, '2024-10-14 12:17:41', '2024-10-14 12:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(88, 22, 175),
(89, 22, 388),
(91, 86, 384),
(92, 86, 170),
(93, 86, 165),
(94, 86, 169),
(95, 86, 164),
(97, 22, 122),
(98, 22, 128),
(101, 201, 458),
(103, 208, 461),
(104, 209, 456),
(105, 213, 466),
(106, 213, 95),
(108, 217, 455),
(109, 217, 471),
(111, 200, 455),
(112, 175, 459),
(113, 175, 458),
(114, 175, 460),
(118, 82, 591),
(119, 82, 466),
(120, 82, 458),
(121, 82, 459),
(122, 201, 464),
(123, 201, 590),
(124, 200, 471),
(127, 237, 464),
(128, 237, 466),
(129, 238, 464),
(133, 239, 471),
(134, 225, 590),
(135, 245, 466),
(136, 245, 471),
(137, 245, 591),
(139, 213, 591),
(141, 248, 471),
(143, 200, 590),
(146, 200, 658),
(148, 200, 464),
(149, 231, 591),
(150, 231, 615),
(151, 231, 471);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
CREATE TABLE IF NOT EXISTS `withdraws` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor','rider') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_us`
--
ALTER TABLE `about_us`
  ADD CONSTRAINT `fk_about_us_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `fk_referrals_parrent_user_id` FOREIGN KEY (`parrent_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_referrals_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
