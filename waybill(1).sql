-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2017 at 04:04 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waybill`
--

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(10) UNSIGNED NOT NULL,
  `wType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sentDate` datetime NOT NULL,
  `sentFrom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sentTo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendorName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proxyName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sentBy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveredBy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveredTo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryDate` date DEFAULT NULL,
  `deliveryNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedBy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiveStatus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'OPEN',
  `closeremark` mediumtext COLLATE utf8mb4_unicode_ci,
  `receiveDate` date DEFAULT NULL,
  `printNo` int(11) DEFAULT NULL,
  `reprintNo` int(11) DEFAULT NULL,
  `printDate` date DEFAULT NULL,
  `reprintDate` date DEFAULT NULL,
  `ackcnt` int(11) DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `docs`
--

INSERT INTO `docs` (`id`, `wType`, `sentDate`, `sentFrom`, `sentTo`, `vendorName`, `proxyName`, `sentBy`, `deliveredBy`, `deliveredTo`, `deliveryDate`, `deliveryNo`, `receivedBy`, `receiveStatus`, `closeremark`, `receiveDate`, `printNo`, `reprintNo`, `printDate`, `reprintDate`, `ackcnt`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'TRANSFER', '2017-09-26 00:00:00', 'IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Regina kadiri', 'Simi Dispatcher', 'Esther Olatawura', NULL, NULL, 'azeez', 'CLOSED', 'all recieved', '2017-09-26', 2, NULL, NULL, NULL, NULL, 2, '2017-09-26 20:17:14', '2017-09-26 20:25:10'),
(7, 'LOAN', '2017-09-26 00:00:00', 'ESRNL IKOYI', 'GSNL AGBARA', NULL, NULL, 'Regina kadiri', 'Azeez IT', 'Moji Luwaji', NULL, NULL, 'mojisola', 'CLOSED', NULL, '2017-09-27', 4, NULL, NULL, NULL, NULL, 2, '2017-09-26 21:32:54', '2017-09-27 19:53:49'),
(9, 'LOAN', '2017-09-27 00:00:00', 'NPRNL AGBARA', 'ESRNL AGBARA', NULL, NULL, 'Esther', 'Test', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 73, NULL, NULL, NULL, NULL, 4, '2017-09-27 19:22:45', '2017-10-17 10:49:12'),
(10, 'TRANSFER', '2017-09-27 00:00:00', 'NPRNL AGBARA', 'ESRNL AGBARA', NULL, NULL, 'Esther', 'azeez', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 4, NULL, NULL, NULL, NULL, 4, '2017-09-27 19:41:34', '2017-10-04 13:22:47'),
(11, 'TRANSFER', '2017-09-27 00:00:00', 'ESRNL AGBARA', 'ESRNL IKOYI', NULL, NULL, 'Mrs moji', 'hakeem', 'regina', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, NULL, 5, '2017-09-27 19:33:25', '2017-09-27 19:43:17'),
(12, 'TRANSFER', '2017-10-07 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Esther Olatawura', NULL, NULL, 'Taofik Alli-Balogun', 'CLOSED', NULL, '2017-10-09', 1, NULL, NULL, NULL, NULL, 1, '2017-10-07 10:25:49', '2017-10-09 07:44:25'),
(13, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-balogun', 'CharlesDriver', 'Esther Olatawura', NULL, NULL, '1', 'OPEN', NULL, '2017-10-17', 4, NULL, NULL, NULL, NULL, 1, '2017-10-09 08:09:28', '2017-10-17 14:20:10'),
(14, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-balogun', 'Mr Anyanwu', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-09 09:09:06', '2017-10-09 09:09:06'),
(15, 'TRANSFER', '2017-10-09 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2017-10-09 13:32:51', '2017-10-09 13:33:17'),
(18, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2017-10-09 13:35:32', '2017-10-09 13:35:32'),
(19, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2017-10-09 13:35:54', '2017-10-09 13:36:06'),
(20, 'TRANSFER', '2017-10-09 00:00:00', 'PFNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Chinedu', NULL, NULL, 'chinedu', 'CLOSED', 'items received', '2017-10-28', 1, NULL, NULL, NULL, NULL, 2, '2017-10-09 13:39:32', '2017-10-28 08:23:34'),
(21, 'TRANSFER', '2017-10-10 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Mr Anyanwu', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(23, 'TRANSFER', '2017-10-10 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Mr. Anyanwu', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, '2017-10-10 07:46:42', '2017-10-10 07:47:37'),
(24, 'TRANSFER', '2017-10-10 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Mr. Anyanwu', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, 14, NULL, NULL, NULL, NULL, 2, '2017-10-10 07:56:07', '2017-10-18 12:59:49'),
(25, 'REPAIR', '2017-10-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'My Anyanwu', 'Esther Olatawura', NULL, NULL, 'Taofik Alli-Balogun', 'CLOSED', 'Remaining Three rejected', '2017-10-19', 7, NULL, NULL, NULL, NULL, 1, '2017-10-16 08:07:04', '2017-11-14 06:59:59'),
(27, 'PROMO', '2017-10-18 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'SIMI NPRNL', 'Esther Olatawura', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2017-10-18 07:03:40', '2017-10-18 12:38:18'),
(28, 'PROMO', '2017-10-18 00:00:00', 'NPRNL IKOYI', 'VENDOR', 'ASSET MANAGERS LIMITED', NULL, 'Taofik Alli-Balogun', 'Samuel Besiktas', 'Samuel Besiktas', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, '2017-10-18 09:48:56', '2017-10-18 09:59:29'),
(29, 'PROMO', '2017-10-18 00:00:00', 'NPRNL IKOYI', 'VENDOR', 'ASSET MANAGERS LIMITED', NULL, 'Taofik Alli-Balogun', 'Samuel Besiktas', 'Samuel Besiktas', NULL, NULL, NULL, 'CLOSED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-18 09:50:52', '2017-10-18 09:50:52'),
(30, 'LOAN', '2017-10-18 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'My Anyanwu', 'Kayode Olayemi', NULL, NULL, 'Adebowale Alli', 'CLOSED', 'All have been received', '2017-11-22', 5, NULL, NULL, NULL, NULL, 1, '2017-10-18 12:32:11', '2017-11-22 08:09:51'),
(31, 'LOAN', '2017-10-18 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli', 'Charles Driver - Kia Picanto Blue', 'Esther Olatawura', NULL, NULL, 'Adebowale Alli', 'CLOSED', NULL, '2017-11-22', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-18 12:58:52', '2017-11-22 07:32:57'),
(32, 'LOAN', '2017-10-18 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli', 'Charles Driver - Kia Picanto Blue', 'Esther Olatawura', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2017-10-18 12:59:12', '2017-10-18 12:59:23'),
(33, 'TRANSFER', '2017-10-20 00:00:00', 'ESRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Yinka', 'Anyanwu (Purchasing Driver)', 'Rudy/Emmanuel', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2017-10-20 06:59:25', '2017-10-20 06:59:25'),
(34, 'TRANSFER', '2017-10-20 00:00:00', 'ESRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Yinka', 'Anyanwu (Purchasing Driver)', 'Rudy/Emmanuel', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, '2017-10-20 07:01:52', '2017-10-24 08:01:36'),
(35, 'TRANSFER', '2017-10-20 00:00:00', 'ESRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Yinka', 'Anyanwu (Purchasing Driver)', 'Rudy/Emmanuel', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, NULL, 9, '2017-10-20 07:03:20', '2017-10-20 07:07:54'),
(36, 'TRANSFER', '2017-10-20 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Lekan', 'Elizabeth', 'Moji', NULL, NULL, 'Charles Driver', 'CLOSED', NULL, '2017-10-30', NULL, NULL, NULL, NULL, NULL, 10, '2017-10-20 13:28:41', '2017-10-30 15:02:33'),
(37, 'TRANSFER', '2017-10-20 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Lekan', 'Elizabeth', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, '2017-10-20 13:28:57', '2017-10-20 13:29:10'),
(38, 'TRANSFER', '2017-10-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Oladele', 'Esther Olatawura', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-24 07:55:51', '2017-10-24 07:55:51'),
(39, 'TRANSFER', '2017-10-24 00:00:00', 'ESRNL IKOYI', 'ESRNL APAPA', NULL, NULL, 'Regina Kadiri', 'Mr. Wisdom', 'Regina Alenkhe', NULL, NULL, 'Okikiola grace', 'CLOSED', 'Items received OK.', '2017-10-24', 1, NULL, NULL, NULL, NULL, 2, '2017-10-24 09:06:27', '2017-10-24 09:41:16'),
(40, 'TRANSFER', '2017-10-24 00:00:00', 'NPRNL AGBARA', 'NPRNL AGBARA', NULL, NULL, 'Kayode', 'simi testing', 'Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, '2017-10-24 12:23:36', '2017-10-25 09:44:32'),
(41, 'TRANSFER', '2017-10-24 00:00:00', 'NPRNL AGBARA', 'NPRNL AGBARA', NULL, NULL, 'Kayode', 'simi testing', 'Azeez', NULL, NULL, 'azeez', 'CLOSED', 'no more item expected', '2017-10-24', 1, NULL, NULL, NULL, NULL, 12, '2017-10-24 12:24:04', '2017-10-24 12:43:35'),
(43, 'TRANSFER', '2017-10-24 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Mr. Yonatan', 'Moji', NULL, NULL, 'mojisola', 'CLOSED', NULL, '2017-10-25', 1, NULL, NULL, NULL, NULL, 2, '2017-10-24 14:15:44', '2017-10-25 13:43:56'),
(44, 'TRANSFER', '2017-10-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Mr. Yonatan', 'Esther', NULL, NULL, 'Esther', 'CLOSED', 'Acer Aspire laptop received for NPRNL conference room use', '2017-10-25', 1, NULL, NULL, NULL, NULL, 2, '2017-10-24 14:19:32', '2017-10-25 09:19:59'),
(45, 'REPAIR', '2017-10-25 00:00:00', 'NPRNL AGBARA', 'NPRNL AGBARA', NULL, NULL, 'kayode', 'cash', 'azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, NULL, 12, '2017-10-25 07:15:58', '2017-10-25 08:04:32'),
(46, 'TRANSFER', '2017-10-25 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'My Anyanwu', 'Kayode Olayemi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-25 08:36:07', '2017-10-25 08:36:07'),
(60, 'TRANSFER', '2017-10-26 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Yinka', 'Anyanwu (Purchasing Driver)', 'Amobi (Store officer)', NULL, NULL, 'ESRNL STORE', 'CLOSED', NULL, '2017-10-26', 5, NULL, NULL, NULL, NULL, 9, '2017-10-26 07:08:09', '2017-10-26 12:42:13'),
(63, 'TRANSFER', '2017-10-26 00:00:00', 'ESRNL IKOYI', 'NPRNL IKOYI', NULL, NULL, 'Yinka', 'Anyanwu (Purchasing Driver)', 'iSAAC ( STORE OFFICER)', NULL, NULL, 'Isaac Ochei', 'CLOSED', '6pcs of 11R22.5 and 1 pc  of dust blower was received in NPRNl store checked by Mr. Victor Isiani and Mr.  Aftab, Security and myself.', '2017-10-26', 10, NULL, NULL, NULL, NULL, 9, '2017-10-26 07:44:20', '2017-10-26 13:06:30'),
(64, 'TRANSFER', '2017-10-26 00:00:00', 'PFNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Regina Kadiri', 'Mr. Anyanwu', 'Chinedu', NULL, NULL, 'chinedu', 'CLOSED', 'items received', '2017-10-28', 2, NULL, NULL, NULL, NULL, 2, '2017-10-26 07:46:53', '2017-10-28 08:22:24'),
(66, 'TRANSFER', '2017-10-26 00:00:00', 'ESRNL IKOYI', 'PFNL IKOYI', NULL, NULL, 'Yinka', 'Anyanwu (Purchasing Driver)', 'Ola / Emmanuel', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, '2017-10-26 07:53:13', '2017-10-26 07:53:33'),
(67, 'TRANSFER', '2017-10-26 00:00:00', 'NPRNL AGBARA', 'ESRNL IKOYI', NULL, NULL, 'Isaac Ochei', 'Anyanwu (Purchasing Driver)', 'Yinka Olaniyi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2017-10-26 13:30:07', '2017-10-26 13:30:07'),
(68, 'TRANSFER', '2017-10-26 00:00:00', 'NPRNL AGBARA', 'ESRNL IKOYI', NULL, NULL, 'Isaac Ochei', 'Anyanwu (Purchasing Driver)', 'Yinka Olaniyi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2017-10-26 13:31:56', '2017-10-26 13:31:56'),
(69, 'REPAIR', '2017-10-26 00:00:00', 'NPRNL AGBARA', 'ESRNL IKOYI', NULL, NULL, 'Isaac Ochei', 'Anyanwu (Purchasing Driver)', 'Yinka Olaniyi', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, NULL, 15, '2017-10-26 13:45:48', '2017-10-27 10:22:32'),
(70, 'TRANSFER', '2017-10-27 00:00:00', 'NPRNL IKOYI', 'VENDOR', 'AbbeyTech Nigeria Limited', NULL, 'Taofik Alli-Balogun', 'Mr Abbey Olayiwola', 'Mr Abbey Olayiwola', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2017-10-27 09:35:28', '2017-10-27 09:35:41'),
(71, 'TRANSFER', '2017-10-27 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'SIMI', 'kayode Olayemi', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, '2017-10-27 11:11:54', '2017-11-14 09:39:01'),
(72, 'LOAN', '2017-10-28 00:00:00', 'ESRNL AGBARA', 'NPRNL AGBARA', NULL, NULL, 'ESRNL STORE', 'Pa Rudy', 'Isaac Ochei', NULL, NULL, 'Isaac Ochei', 'CLOSED', 'used for porthacot estate house delivered by Pak Rudy', '2017-10-28', 2, NULL, NULL, NULL, NULL, 16, '2017-10-28 08:14:45', '2017-10-28 13:10:39'),
(73, 'REPAIR', '2017-10-28 00:00:00', 'NPRNL AGBARA', 'VENDOR', 'Rasbak Eng. Work', NULL, 'Isaac Ochei', 'Rasak Bakare', 'Mr. Rasak Bakare', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, '2017-10-28 09:25:48', '2017-10-28 09:27:48'),
(74, 'REPAIR', '2017-10-30 00:00:00', 'NPRNL IKOYI', 'VENDOR', 'AbbeyTech Nigeria Limited', NULL, 'Taofik Alli-Balogun', 'Charles', 'Mr Abbey', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '2017-10-30 07:42:04', '2017-10-30 07:42:10'),
(75, 'LOAN', '2017-10-30 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Elizabeth', 'Charles Driver', NULL, NULL, 'Charles Driver', 'RETURNED', 'Just remaining 5', '2017-11-01', 3, NULL, NULL, NULL, 20, 1, '2017-10-30 08:01:36', '2017-11-01 07:43:20'),
(76, 'LOAN', '2017-10-30 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles Driver', 'Mercy Agu', NULL, NULL, 'Toyin Sadiku', 'CLOSED', NULL, '2017-11-01', 2, NULL, NULL, NULL, 5, 1, '2017-10-30 14:34:35', '2017-11-01 13:50:18'),
(77, 'LOAN', '2017-10-30 00:00:00', 'ESRNL AGBARA', 'PFNL AGBARA', NULL, NULL, 'Charles Driver', 'charles DRIVER', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 18, '2017-10-30 14:48:57', '2017-10-30 14:48:57'),
(78, 'TRANSFER', '2017-11-01 00:00:00', 'ESRNL AGBARA', 'NPRNL IKOYI', NULL, NULL, 'Charles Driver', 'Mr Anyanwu', 'Regina Kadiri', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 18, '2017-11-01 10:47:18', '2017-11-01 10:47:18'),
(79, 'LOAN', '2017-11-01 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Mtr Anyanwu', 'ESRNL STORE', NULL, NULL, 'Toyin Sadiku', 'CLOSED', NULL, '2017-11-01', NULL, NULL, NULL, NULL, 5, 1, '2017-11-01 13:14:31', '2017-11-01 13:46:09'),
(80, 'TRANSFER', '2017-11-13 00:00:00', 'NPRNL IKOYI', 'NPRNL IKOYI', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Mercy Agu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-13 12:55:11', '2017-11-13 12:55:11'),
(81, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Mr Yonatan', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 08:48:56', '2017-11-14 08:48:56'),
(82, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Mr Yonatan', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 08:53:24', '2017-11-14 08:53:24'),
(83, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Mr Yonatan', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 08:55:51', '2017-11-14 08:55:51'),
(84, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Toyin Sadiku', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 08:56:39', '2017-11-14 08:56:39'),
(85, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 08:58:58', '2017-11-14 08:58:58'),
(86, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Mr Ayanwu', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 09:27:55', '2017-11-14 09:27:55'),
(87, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Mr Ayanwu', 'kayode Olayemi', NULL, NULL, 'Adebowale Alli', 'CLOSED', 'Delivered just one, returned the other not according to specification', '2017-11-22', NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 09:33:10', '2017-11-22 07:30:10'),
(88, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Lekan Driver', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 09:44:44', '2017-11-14 09:44:44'),
(89, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Esther Olatawura', NULL, NULL, 'Adebowale Alli', 'CLOSED', NULL, '2017-11-22', NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:26:11', '2017-11-22 07:10:01'),
(90, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:29:20', '2017-11-14 11:29:20'),
(91, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:33:59', '2017-11-14 11:33:59'),
(92, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:34:21', '2017-11-14 11:34:21'),
(93, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:38:34', '2017-11-14 11:38:34'),
(94, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:38:52', '2017-11-14 11:38:52'),
(95, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 0, 1, '2017-11-14 11:39:41', '2017-11-16 13:15:02'),
(96, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:49:45', '2017-11-14 11:49:45'),
(97, 'TRANSFER', '2017-11-14 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-14 11:50:39', '2017-11-14 11:50:39'),
(98, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'kayode Olayemi', NULL, NULL, 'Adebowale Alli', 'CLOSED', NULL, '2017-11-16', NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 07:46:59', '2017-11-16 10:54:12'),
(99, 'REPAIR', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'GSNL IKOYI', NULL, NULL, 'Taofik Alli-Balogun', 'charles DRIVER', 'Taofik Alli-Balogun', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 07:49:43', '2017-11-16 07:49:43'),
(100, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles Driver - Kia Picanto Blue', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 07:52:13', '2017-11-16 07:52:13'),
(101, 'REPAIR', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'ESRNL IKOYI', NULL, NULL, 'Taofik Alli-Balogun', 'Lekan', 'Mercy Agu', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 0, 1, '2017-11-16 08:49:11', '2017-11-16 08:50:38'),
(102, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 09:39:46', '2017-11-16 09:39:46'),
(103, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 09:40:18', '2017-11-16 09:40:18'),
(104, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 09:41:43', '2017-11-16 09:41:43'),
(105, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 09:42:50', '2017-11-16 09:42:50'),
(106, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 09:43:08', '2017-11-16 09:43:08'),
(107, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 09:44:43', '2017-11-16 09:44:43'),
(108, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 10:13:39', '2017-11-16 10:13:39'),
(109, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 10:17:05', '2017-11-16 10:17:05'),
(110, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 10:17:24', '2017-11-16 10:17:24'),
(111, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-16 10:17:50', '2017-11-16 10:17:50'),
(112, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL AGBARA', 'NPRNL IKOYI', NULL, NULL, 'Adebowale Alli', 'Azeez odufuwa', 'Taofik Alli-Balogun', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 22, '2017-11-16 11:16:00', '2017-11-16 11:16:00'),
(113, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL AGBARA', 'NPRNL IKOYI', NULL, NULL, 'Adebowale Alli', 'Azeez odufuwa', 'Taofik Alli-Balogun', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 22, '2017-11-16 11:18:23', '2017-11-16 11:18:23'),
(114, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL AGBARA', 'NPRNL IKOYI', NULL, NULL, 'Adebowale Alli', 'Azeez odufuwa', 'Taofik Alli-Balogun', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 22, '2017-11-16 11:19:03', '2017-11-16 11:19:03'),
(115, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL AGBARA', 'NPRNL IKOYI', NULL, NULL, 'Adebowale Alli', 'Azeez odufuwa', 'Taofik Alli-Balogun', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 22, '2017-11-16 11:19:59', '2017-11-16 11:19:59'),
(116, 'TRANSFER', '2017-11-16 00:00:00', 'NPRNL AGBARA', 'NPRNL IKOYI', NULL, NULL, 'Adebowale Alli', 'Azeez odufuwa', 'Taofik Alli-Balogun', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, 0, 22, '2017-11-16 11:20:55', '2017-11-22 09:13:02'),
(117, 'TRANSFER', '2017-11-21 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Lekan Driver', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, 4, NULL, NULL, NULL, 0, 1, '2017-11-21 13:19:28', '2017-11-22 09:11:58'),
(118, 'LOAN', '2017-11-22 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'charles DRIVER', 'Adebowale Alli', NULL, NULL, 'Adebowale Alli', 'RETURNED', 'Receive good and better ones', '2017-11-22', NULL, NULL, NULL, NULL, 20, 1, '2017-11-22 07:36:10', '2017-11-22 07:40:44'),
(119, 'TRANSFER', '2017-11-22 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Odufuwa Azeez', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 0, 1, '2017-11-22 09:18:29', '2017-11-22 09:18:54'),
(120, 'TRANSFER', '2017-11-22 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-22 09:22:25', '2017-11-22 09:22:25'),
(121, 'LOAN', '2017-11-22 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, 'Adebowale Alli', 'RETURNED', 'Received items', '2017-11-22', NULL, NULL, NULL, NULL, 20, 1, '2017-11-22 09:45:57', '2017-11-22 09:49:03'),
(122, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'EUROMEGA IKEJA', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:18:03', '2017-11-23 09:18:03'),
(123, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'EUROMEGA IKEJA', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:20:43', '2017-11-23 09:20:43'),
(124, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'EUROMEGA IKEJA', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:32:33', '2017-11-23 09:32:33'),
(125, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'EUROMEGA IKEJA', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:33:23', '2017-11-23 09:33:23'),
(126, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'ESRNL IKOYI', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:38:59', '2017-11-23 09:38:59'),
(127, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'PFNL IKOYI', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:41:05', '2017-11-23 09:41:05'),
(128, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:42:09', '2017-11-23 09:42:09'),
(129, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Tope Alabi', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:43:25', '2017-11-23 09:43:25'),
(130, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'ESRNL IKOYI', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Mercy Agu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:47:50', '2017-11-23 09:47:50'),
(131, 'TRANSFER', '2017-11-23 00:00:00', 'NPRNL IKOYI', 'ESRNL APAPA', NULL, 'Lukieto Masna', 'Taofik Alli-Balogun', 'Oladele', 'Mercy Agu', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-23 09:48:32', '2017-11-23 09:48:32'),
(132, 'TRANSFER', '2017-11-24 00:00:00', 'PFNL IKOYI', 'PFNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Mr Anyanwu', 'chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 0, 1, '2017-11-24 08:27:47', '2017-11-24 08:28:01'),
(133, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 09:27:09', '2017-11-24 09:27:09'),
(134, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 09:28:34', '2017-11-24 09:28:34'),
(135, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 09:28:51', '2017-11-24 09:28:51'),
(136, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 09:29:37', '2017-11-24 09:29:37'),
(137, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles Driver - Kia Picanto Blue', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 09:43:33', '2017-11-24 09:43:33'),
(138, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 10:58:08', '2017-11-24 10:58:08'),
(139, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 11:33:19', '2017-11-24 11:33:19'),
(140, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 11:34:17', '2017-11-24 11:34:17'),
(141, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles Driver', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 11:38:57', '2017-11-24 11:38:57'),
(142, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 12:38:30', '2017-11-24 12:38:30'),
(143, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 12:58:31', '2017-11-24 12:58:31'),
(144, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles Driver', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:19:56', '2017-11-24 13:19:56'),
(145, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Charles Driver', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:20:47', '2017-11-24 13:20:47'),
(146, 'LOAN', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:24:01', '2017-11-24 13:24:01'),
(147, 'REPAIR', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:31:18', '2017-11-24 13:31:18'),
(148, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Oladele', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:37:16', '2017-11-24 13:37:16'),
(149, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Baba Anyanwu', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:39:34', '2017-11-24 13:39:34'),
(150, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:49:39', '2017-11-24 13:49:39'),
(151, 'TRANSFER', '2017-11-24 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, NULL, 'Taofik Alli-Balogun', 'Kayode Olayemi', 'Adebowale Alli', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2017-11-24 13:50:19', '2017-11-24 13:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\SendNewWaybillEmail\\\":6:{s:3:\\\"doc\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:7:\\\"App\\\\doc\\\";s:2:\\\"id\\\";i:145;}s:4:\\\"item\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\item\\\";s:2:\\\"id\\\";a:1:{i:0;i:233;}}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: A queued job has been attempted too many times. The job may have previously timed out. in C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:383\nStack trace:\n#0 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(311): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 3)\n#1 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(267): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#2 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(224): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#5 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->fire()\n#6 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(539): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#11 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Command\\Command.php(264): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#12 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(167): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#14 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(228): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(130): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\xampp\\htdocs\\waybill\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 {main}', '2017-11-24 13:32:32'),
(2, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\SendNewWaybillEmail\\\":6:{s:3:\\\"doc\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:7:\\\"App\\\\doc\\\";s:2:\\\"id\\\";i:146;}s:4:\\\"item\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\item\\\";s:2:\\\"id\\\";a:1:{i:0;i:234;}}s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 'ErrorException: Undefined variable: doc in C:\\xampp\\htdocs\\waybill\\app\\Jobs\\SendNewWaybillEmail.php:52\nStack trace:\n#0 C:\\xampp\\htdocs\\waybill\\app\\Jobs\\SendNewWaybillEmail.php(52): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 52, Array)\n#1 [internal function]: App\\Jobs\\SendNewWaybillEmail->handle()\n#2 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(539): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendNewWaybillEmail))\n#8 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendNewWaybillEmail))\n#9 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(42): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendNewWaybillEmail), false)\n#11 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(69): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#12 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(317): Illuminate\\Queue\\Jobs\\Job->fire()\n#13 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(267): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#14 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(224): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#15 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#16 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#17 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->fire()\n#18 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#19 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#20 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#21 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(539): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#22 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#23 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Command\\Command.php(264): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#24 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(167): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#25 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(228): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#27 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(130): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#28 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\waybill\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 {main}', '2017-11-24 13:32:34'),
(3, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\SendNewWaybillEmail\\\":7:{s:3:\\\"doc\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:7:\\\"App\\\\doc\\\";s:2:\\\"id\\\";i:147;}s:4:\\\"item\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:8:\\\"App\\\\item\\\";s:2:\\\"id\\\";a:1:{i:0;i:235;}}s:10:\\\"user_email\\\";s:37:\\\"taofik.alli-balogun@natural-prime.com\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 'ErrorException: Undefined variable: doc in C:\\xampp\\htdocs\\waybill\\app\\Jobs\\SendNewWaybillEmail.php:52\nStack trace:\n#0 C:\\xampp\\htdocs\\waybill\\app\\Jobs\\SendNewWaybillEmail.php(52): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 52, Array)\n#1 [internal function]: App\\Jobs\\SendNewWaybillEmail->handle()\n#2 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(539): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendNewWaybillEmail))\n#8 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendNewWaybillEmail))\n#9 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(42): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendNewWaybillEmail), false)\n#11 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(69): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#12 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(317): Illuminate\\Queue\\Jobs\\Job->fire()\n#13 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(267): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#14 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(224): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#15 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#16 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#17 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->fire()\n#18 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#19 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#20 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#21 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(539): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#22 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#23 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Command\\Command.php(264): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#24 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(167): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#25 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(228): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#27 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(130): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#28 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\waybill\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 {main}', '2017-11-24 13:32:35'),
(4, 'database', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendNewWaybillEmail\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\SendNewWaybillEmail\\\":7:{s:3:\\\"doc\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":2:{s:5:\\\"class\\\";s:7:\\\"App\\\\doc\\\";s:2:\\\"id\\\";i:148;}s:4:\\\"item\\\";N;s:10:\\\"user_email\\\";s:37:\\\"taofik.alli-balogun@natural-prime.com\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 'ErrorException: Undefined property: App\\Jobs\\SendNewWaybillEmail::$items in C:\\xampp\\htdocs\\waybill\\app\\Jobs\\SendNewWaybillEmail.php:52\nStack trace:\n#0 C:\\xampp\\htdocs\\waybill\\app\\Jobs\\SendNewWaybillEmail.php(52): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined prope...\', \'C:\\\\xampp\\\\htdocs...\', 52, Array)\n#1 [internal function]: App\\Jobs\\SendNewWaybillEmail->handle()\n#2 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(539): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendNewWaybillEmail))\n#8 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendNewWaybillEmail))\n#9 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(42): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendNewWaybillEmail), false)\n#11 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(69): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#12 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(317): Illuminate\\Queue\\Jobs\\Job->fire()\n#13 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(267): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#14 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(224): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#15 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#16 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#17 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->fire()\n#18 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#19 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#20 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#21 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(539): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#22 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#23 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Command\\Command.php(264): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#24 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(167): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#25 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(228): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#27 C:\\xampp\\htdocs\\waybill\\vendor\\symfony\\console\\Application.php(130): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#28 C:\\xampp\\htdocs\\waybill\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\waybill\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 {main}', '2017-11-24 13:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `recqty` int(11) DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `sircode` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_desc`, `serialNo`, `qty`, `recqty`, `status`, `remark`, `sircode`, `lpo`, `doc_id`, `created_at`, `updated_at`) VALUES
(7, 'L300 N-Computing Device', '5446', 2, 2, 'working ok', 'For replacement of surung marpaung keyboard', NULL, NULL, 6, '2017-09-26 20:17:14', '2017-09-26 20:24:37'),
(8, 'Samsung monitor', 'ZTHM32837LM', 2, 2, 'working ok', 'For replacement of JOY\'S FAULTY UNIT', NULL, NULL, 6, '2017-09-26 20:17:14', '2017-09-26 20:24:37'),
(9, 'L300 N-Computing Device', 'L300K31B712495040', 1, 1, 'Working Item', 'For use to replace sstem user in GSNL,Agbara.', NULL, NULL, 7, '2017-09-26 21:32:54', '2017-09-27 19:53:49'),
(10, 'Power adapter for N-Computing', 'N/A', 1, 1, 'Working Item', 'For use to power N-Computing Device', NULL, NULL, 7, '2017-09-26 21:32:54', '2017-09-27 19:53:49'),
(13, 'CAble', 'N/A', 3, 0, 'Half', 'Just testing the app.', NULL, NULL, 9, '2017-09-27 19:22:45', '2017-09-27 19:22:45'),
(14, 'l300', 'dtdl7;drl', 14, 6, 'all working', 'to be use in EKO', NULL, NULL, 10, '2017-09-27 19:41:34', '2017-09-27 18:50:28'),
(15, 'CABLE', 'DYSZSY', 5, 4, 'good', 'use for l300', NULL, NULL, 10, '2017-09-27 19:41:34', '2017-09-27 18:50:28'),
(16, 'L300', 'DRJRKDD', 12, 5, 'NEW', 'FOR IKOYI UES TESTING', NULL, NULL, 11, '2017-09-27 19:33:25', '2017-09-27 19:47:14'),
(17, 'Samssung Monitor', 'ZZTEHJEME', 5, 5, 'NEW', 'For Weighbridge use', NULL, NULL, 12, '2017-10-07 10:25:49', '2017-10-09 07:44:25'),
(18, 'Monitor', 'GH1,GH2, GH3', 20, 2, 'GOOD', 'For stock', NULL, NULL, 13, '2017-10-09 08:09:28', '2017-10-17 14:28:46'),
(19, 'Samsung Monitor', 'HT, JU, LK, MJ', 50, 28, 'NEW', 'For HR use', NULL, NULL, 14, '2017-10-09 09:09:06', '2017-10-09 10:42:27'),
(20, 'CAT 7 Connectors', 'N/A', 100, 0, 'New', 'For CCTV Upgrade Project Use in Factory.', NULL, NULL, 15, '2017-10-09 13:32:51', '2017-10-09 13:32:51'),
(21, 'CAT 7 Connectors', 'N/A', 100, 0, 'New Items', 'For CCTV Upgrade Project Use in Factory.', NULL, NULL, 19, '2017-10-09 13:35:54', '2017-10-09 13:35:54'),
(22, 'CAT 7 Connectors', 'N/A', 100, 0, 'New Items', 'For CCTV Upgrade Project Use in Factory', NULL, NULL, 20, '2017-10-10 07:39:55', '2017-10-10 07:39:55'),
(23, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201056', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(24, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201039', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(25, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201041', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(26, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201045', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(27, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201019', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(28, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201154', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(29, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201047', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(30, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201042', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(31, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201484', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(32, 'Ubiquiti Ethernet Surge Protecctor', 'K16100225382', 1, 0, 'New', 'For IT Use', NULL, NULL, 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(43, 'Ubiquiti Surge Protector', 'K16110200604', 1, 0, 'New', 'For IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(44, 'Ubiquiti Surge Protector', 'K16110201048', 1, 0, 'New', 'For IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(45, 'Ubiquiti Surge Protector', 'K16110201054', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(46, 'Ubiquiti Surge Protector', 'K16110201152', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(47, 'Ubiquiti Surge Protector', 'K16110201057', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(48, 'Ubiquiti Surge Protector', 'K1610200646', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(49, 'Ubiquiti Surge Protector', 'K16110201053', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(50, 'Ubiquiti Surge Protector', 'K16110201151', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(51, 'Ubiquiti Surge Protector', 'K16110201049', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(52, 'Ubiquiti Surge Protector', 'K16110201157', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(53, 'Ubiquiti Surge Protector', 'K16110201155', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(54, 'Ubiquiti Surge Protector', 'K16110201040', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(55, 'Ubiquiti Surge Protector', 'K16110200637', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(56, 'Ubiquiti Surge Protector', 'K16110201046', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(57, 'Ubiquiti Surge Protector', 'K16100225327', 1, 0, 'New', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(58, 'PoE', 'N/A', 3, 0, 'Used', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(59, 'PoE Adapter', 'N/A', 1, 0, 'Used', 'or IT Office use', NULL, NULL, 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(60, 'Ubiquiti Surge Protector', 'K16110201056', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(61, 'Ubiquiti Surge Protector', 'K16110201039', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(62, 'Ubiquiti Surge Protector', 'K16110201041', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(63, 'Ubiquiti Surge Protector', 'K16110201045', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(64, 'Ubiquiti Surge Protector', 'K16110201019', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(65, 'Ubiquiti Surge Protector', 'K16110201154', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(66, 'Ubiquiti Surge Protector', 'K16110201047', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(67, 'Ubiquiti Surge Protector', 'K16110201042', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(68, 'Ubiquiti Surge Protector', 'K16110201484', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(69, 'Ubiquiti Surge Protector', 'K16100225382', 1, 0, 'New', 'For  IT Office use', NULL, NULL, 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(70, 'Keyboard', 'N/A', 20, 17, 'NEW', 'For stock at NPRNL', NULL, NULL, 25, '2017-10-16 08:07:04', '2017-10-19 06:57:49'),
(72, 'Samsung monitor', 'N/A', 10, 0, 'New', 'For Oremeji', 'SIR283398', 'LPO38938390', 27, '2017-10-18 07:03:40', '2017-10-18 07:03:40'),
(74, 'Chairs', 'N/A', 20, 0, 'New', 'For Promotions', 'SIR89383', 'LPO38938390', 29, '2017-10-18 09:50:52', '2017-10-18 09:50:52'),
(75, 'RJ45', 'N/A', 10, 8, 'New', 'FOR CCTV', 'SIR89383', 'LPO38938390', 30, '2017-10-18 12:32:11', '2017-11-22 08:09:51'),
(76, 'RJ45 CLIP', 'N/A', 10, 7, 'New', 'FOR CCTV', '8937843948', '89738437', 30, '2017-10-18 12:32:11', '2017-11-22 08:09:51'),
(77, 'CRIMPING TOOL', 'N/A', 5, 3, 'New', 'FOR CCTV', '9838447', '874857', 30, '2017-10-18 12:32:11', '2017-11-22 08:09:51'),
(78, 'Network Cable', 'N/A', 10, 7, 'New', 'FOR CCTV', '974486', '*738730', 30, '2017-10-18 12:32:11', '2017-11-22 08:09:52'),
(79, 'Network Camera', 'N/A`', 10, 6, 'New', 'FOR CCTV', '0937387', '874847', 30, '2017-10-18 12:32:11', '2017-11-22 08:09:52'),
(80, 'TV Monitor', 'N/A', 2, 2, 'New', 'For CCTV', 'SIR76767', 'LPO983873', 31, '2017-10-18 12:58:52', '2017-11-22 07:32:57'),
(81, 'TV Monitor', 'N/A', 2, 0, 'New', 'For CCTV', 'SIR76767', 'LPO983873', 32, '2017-10-18 12:59:13', '2017-10-18 12:59:13'),
(82, 'Pegasus mobil', 'NA', 2, 0, 'NEW', '2 drums For 1000KVA GEN SET', '2591', '2264', 35, '2017-10-20 07:03:20', '2017-10-20 07:03:20'),
(83, 'Tenda POE Injector', 'E5142014715000262', 1, 1, 'New', 'For Ip-Phone connection in EMANL Office Agbara', 'NA', 'NA', 36, '2017-10-20 13:28:41', '2017-10-30 15:02:34'),
(84, 'Tenda POE Injector', 'E5142014715000262', 1, 0, 'New', 'For Ip-Phone connection in EMANL Office Agbara', 'NA', 'NA', 37, '2017-10-20 13:28:57', '2017-10-20 13:28:57'),
(85, 'Mercury 650VA UPS', '130602E0650n00241', 1, 0, 'Used', 'For replacement Canice faulty UPS', NULL, NULL, 39, '2017-10-24 09:06:27', '2017-10-24 09:06:27'),
(86, 'Mercury 650VA UPS', '130823E0650n06071', 1, 0, 'Used', 'For replacement of Regina\'s faulty UPS .', NULL, NULL, 39, '2017-10-24 09:06:27', '2017-10-24 09:06:27'),
(87, 'ncomputin', 'asdfghjk', 100, 0, 'new item', 'good condition', '1345', 'nta', 40, '2017-10-24 12:23:36', '2017-10-24 12:23:36'),
(88, 'ncomputin', 'asdfghjk', 100, 50, 'new item', 'good condition', NULL, NULL, 41, '2017-10-24 12:24:04', '2017-10-24 12:36:15'),
(90, 'HP Probook 4420 Laptop', 'CNF1060RTD', 1, 1, 'Used', 'For use in Conference  Room', NULL, NULL, 43, '2017-10-24 14:15:44', '2017-10-25 13:43:56'),
(91, 'Acer Aspire 4810T Laptop', 'LXPBA0Y00492114EB72000', 1, 0, 'Used', 'For use in Conference Room,Agbara.', NULL, NULL, 44, '2017-10-24 14:19:32', '2017-10-24 14:19:32'),
(92, 'cash', 'sss', 1, 0, 'ssssss', 'ok', NULL, NULL, 45, '2017-10-25 07:15:58', '2017-10-25 07:15:58'),
(98, 'tyre 11 R 22.5', '19004390', 6, 6, 'NEW', 'for stock control', '170600059', '21030', 60, '2017-10-26 07:08:09', '2017-10-26 12:37:46'),
(99, 'Epson LQ 300 Ribbon', '19004574', 20, 20, 'New', 'For ESRNL Agbara IT stock', '171000052', '20993', 60, '2017-10-26 07:08:09', '2017-10-26 12:37:46'),
(100, 'toner HP 12A', '20000028', 2, 2, 'New', 'For ESRNL Agbara IT Stock', '171000052', '20993', 60, '2017-10-26 07:08:09', '2017-10-26 12:37:46'),
(101, 'A4 paper', NULL, 25, 25, NULL, NULL, '170900289', 'Nil', 60, '2017-10-26 07:08:09', '2017-10-26 12:37:47'),
(118, 'tyre 11 R 22.5', '75000276', 6, 0, 'NEW', 'for inventory control', '170700160', '5270', 63, '2017-10-26 07:44:20', '2017-10-26 07:44:20'),
(119, 'dust blower', '28000070', 1, 0, 'New', 'shubham machine cleaning', '170800077', 'NIL', 63, '2017-10-26 07:44:20', '2017-10-26 07:44:20'),
(120, 'Ubiquiti Surge Protector', 'K16110200648', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(121, 'Ubiquiti Surge Protector', 'K16110201487', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(122, 'Ubiquiti Surge Protector', 'K16110201490', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(123, 'Ubiquiti Surge Protector', 'K16100225711', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(124, 'Ubiquiti Surge Protector', 'K1611200607', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(125, 'Ubiquiti Surge Protector', 'K16110200539', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(126, 'Ubiquiti Surge Protector', 'K16110200623', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(127, 'Ubiquiti Surge Protector', 'K16110200638', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(128, 'Ubiquiti Surge Protector', 'K16110200558', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(129, 'Ubiquiti Surge Protector', 'K16110200550', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:53', '2017-10-26 07:46:53'),
(130, 'Ubiquiti Surge Protector', 'K16110200606', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:54', '2017-10-26 07:46:54'),
(131, 'Ubiquiti Surge Protector', 'K16110200636', 1, 0, 'New', 'For installation on Ethernet devices to against surge', NULL, NULL, 64, '2017-10-26 07:46:54', '2017-10-26 07:46:54'),
(135, 'Manual hand pump for diesel', '19002066', 1, 0, 'NEW', 'for diesel discharge', '2875', 'Nil', 66, '2017-10-26 07:53:13', '2017-10-26 07:53:13'),
(136, 'Laundry hand glove', '21000446', 60, 0, 'New', 'For safety stock control', '2828', '2456', 66, '2017-10-26 07:53:13', '2017-10-26 07:53:13'),
(137, 'Safety eyes google', '21000028', 20, 0, 'New', 'For safety stock control', '2828', '2456', 66, '2017-10-26 07:53:13', '2017-10-26 07:53:13'),
(138, 'Rain boot', '70000449', 3, 0, 'bottom open', '3 pairs rain boot toe cap bad from delivery, to be change by vendor', '170900264', NULL, 69, '2017-10-26 13:45:48', '2017-10-26 13:45:48'),
(139, 'Camcorder', 'N/A', 2, 0, 'New', NULL, NULL, NULL, 70, '2017-10-27 09:35:28', '2017-10-27 09:35:28'),
(140, 'HD Camera', 'N/A', 10, 0, NULL, NULL, NULL, NULL, 71, '2017-10-27 11:11:55', '2017-10-27 11:11:55'),
(141, 'Complete AC 1hp,LG', NULL, 1, 0, NULL, 'Used at Natural PH House', NULL, NULL, 72, '2017-10-28 08:14:45', '2017-10-28 08:14:45'),
(142, '3 pin for Hyundai forklift', NULL, 1, 0, 'To be repare', 'needed for hyundai forklift', NULL, NULL, 73, '2017-10-28 09:25:48', '2017-10-28 09:25:48'),
(143, 'CCTV', NULL, 20, 0, NULL, NULL, NULL, NULL, 74, '2017-10-30 07:42:04', '2017-10-30 07:42:04'),
(144, 'Samsung monitor', 'ZTMAJHJD', 10, 5, 'NEW', 'For replacement of surung marpaung keyboard', 'Lhgdhvd', 'jsbhds', 75, '2017-10-30 08:01:36', '2017-11-01 07:32:08'),
(145, 'Hikvision DVR', 'N/A', 10, 10, 'New', 'For CCTV project', NULL, NULL, 76, '2017-10-30 14:34:35', '2017-11-01 13:48:57'),
(146, 'Hikvision DVR', 'N/A', 10, 0, 'nEW', 'For CCTV', NULL, NULL, 77, '2017-10-30 14:48:57', '2017-10-30 14:48:57'),
(147, 'Washing machine', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 78, '2017-11-01 10:47:18', '2017-11-01 10:47:18'),
(148, 'Samsung Drive', 'N/A', 2, 2, 'New', 'Stock', NULL, NULL, 79, '2017-11-01 13:14:31', '2017-11-01 13:27:12'),
(149, 'Samsung Mouse', NULL, 5, 5, 'New', 'IT Stock', NULL, NULL, 79, '2017-11-01 13:14:31', '2017-11-01 13:27:12'),
(150, 'fgrrfg', 'N/A', 2, 0, 'rgerg', 'rgrr', NULL, NULL, 80, '2017-11-13 12:55:11', '2017-11-13 12:55:11'),
(151, 'HP Laptop', 'N/A', 2, 0, 'NEW', 'For replacement', NULL, NULL, 81, '2017-11-14 08:48:56', '2017-11-14 08:48:56'),
(152, 'HP Laptop', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 82, '2017-11-14 08:53:24', '2017-11-14 08:53:24'),
(153, 'HP Laptop', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 83, '2017-11-14 08:55:51', '2017-11-14 08:55:51'),
(154, 'HP Laptop', 'N/A', 2, 0, 'New', 'For stock', NULL, NULL, 84, '2017-11-14 08:56:39', '2017-11-14 08:56:39'),
(155, 'HP Laptop', 'N/A', 2, 0, 'New', 'For stock', NULL, NULL, 85, '2017-11-14 08:58:58', '2017-11-14 08:58:58'),
(156, 'HP Laptop', 'N/A', 2, 0, 'NEW', 'For stock', NULL, NULL, 86, '2017-11-14 09:27:55', '2017-11-14 09:27:55'),
(157, 'HP Laptop', 'N/A', 2, 1, 'NEW', 'For stock', NULL, NULL, 87, '2017-11-14 09:33:11', '2017-11-22 07:30:10'),
(158, 'HP keyboard', 'N/A', 2, 0, 'GOOD', 'For stock', NULL, NULL, 88, '2017-11-14 09:44:45', '2017-11-14 09:44:45'),
(159, 'Cake', 'N/A', 2, 2, 'NEW', 'Stock', NULL, NULL, 89, '2017-11-14 11:26:11', '2017-11-22 07:10:01'),
(160, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 90, '2017-11-14 11:29:21', '2017-11-14 11:29:21'),
(161, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 91, '2017-11-14 11:33:59', '2017-11-14 11:33:59'),
(162, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 92, '2017-11-14 11:34:21', '2017-11-14 11:34:21'),
(163, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 93, '2017-11-14 11:38:34', '2017-11-14 11:38:34'),
(164, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 94, '2017-11-14 11:38:52', '2017-11-14 11:38:52'),
(165, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 95, '2017-11-14 11:39:41', '2017-11-14 11:39:41'),
(166, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 96, '2017-11-14 11:49:45', '2017-11-14 11:49:45'),
(167, 'Cake', 'N/A', 2, 0, 'NEW', 'Stock', NULL, NULL, 97, '2017-11-14 11:50:39', '2017-11-14 11:50:39'),
(168, 'Hikvision DVR', 'N/A', 2, 2, 'test', 'test', NULL, NULL, 98, '2017-11-16 07:46:59', '2017-11-16 10:54:12'),
(169, 'Cake', 'N/A', 2, 0, 'BAD', 'For CCTV', NULL, NULL, 99, '2017-11-16 07:49:43', '2017-11-16 07:49:43'),
(170, 'HP Laptop', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 100, '2017-11-16 07:52:13', '2017-11-16 07:52:13'),
(171, 'Mikrotik SXT 5HPND', 'N/A', 2, 0, 'test', 'test', NULL, NULL, 101, '2017-11-16 08:49:11', '2017-11-16 08:49:11'),
(172, 'Dell Mosue receive with blurtooth  function', 'N/A', 3, 0, 'test', 'test', NULL, NULL, 101, '2017-11-16 08:49:11', '2017-11-16 08:49:11'),
(173, 'kEYBOARD', 'N/A', 2, 0, 'workING', 'For gifts', NULL, NULL, 101, '2017-11-16 08:49:11', '2017-11-16 08:49:11'),
(174, 'HP Laptop', 'N/A', 1, 0, 'test', NULL, NULL, NULL, 102, '2017-11-16 09:39:46', '2017-11-16 09:39:46'),
(175, 'Keboard and mouse', 'grgr', 2, 0, 'grgrg', NULL, NULL, NULL, 102, '2017-11-16 09:39:46', '2017-11-16 09:39:46'),
(176, 'HP Laptop', 'N/A', 1, 0, 'test', NULL, NULL, NULL, 103, '2017-11-16 09:40:18', '2017-11-16 09:40:18'),
(177, 'Keboard and mouse', 'grgr', 2, 0, 'grgrg', NULL, NULL, NULL, 103, '2017-11-16 09:40:18', '2017-11-16 09:40:18'),
(178, 'HP Laptop', 'N/A', 1, 0, 'test', NULL, NULL, NULL, 104, '2017-11-16 09:41:43', '2017-11-16 09:41:43'),
(179, 'Keboard and mouse', 'grgr', 2, 0, 'grgrg', NULL, NULL, NULL, 104, '2017-11-16 09:41:43', '2017-11-16 09:41:43'),
(180, 'HP Laptop', 'N/A', 1, 0, 'test', NULL, NULL, NULL, 105, '2017-11-16 09:42:50', '2017-11-16 09:42:50'),
(181, 'Keboard and mouse', 'grgr', 2, 0, 'grgrg', NULL, NULL, NULL, 105, '2017-11-16 09:42:50', '2017-11-16 09:42:50'),
(182, 'HP Laptop', 'N/A', 1, 0, 'test', NULL, NULL, NULL, 106, '2017-11-16 09:43:08', '2017-11-16 09:43:08'),
(183, 'Keboard and mouse', 'grgr', 2, 0, 'grgrg', NULL, NULL, NULL, 106, '2017-11-16 09:43:08', '2017-11-16 09:43:08'),
(184, 'HP Laptop', 'N/A', 1, 0, 'test', NULL, NULL, NULL, 107, '2017-11-16 09:44:43', '2017-11-16 09:44:43'),
(185, 'Keboard and mouse', 'grgr', 2, 0, 'grgrg', NULL, NULL, NULL, 107, '2017-11-16 09:44:44', '2017-11-16 09:44:44'),
(186, 'HP Laptop', 'N/A', 2, 0, 'test', 'Stock', NULL, NULL, 108, '2017-11-16 10:13:39', '2017-11-16 10:13:39'),
(187, 'rgregr', 'KJJKJHH,JHJKHJKH', 2, 0, 'GOOD', 'rgrg', NULL, NULL, 108, '2017-11-16 10:13:39', '2017-11-16 10:13:39'),
(188, 'HP Laptop', 'N/A', 2, 0, 'test', 'Stock', NULL, NULL, 109, '2017-11-16 10:17:05', '2017-11-16 10:17:05'),
(189, 'rgregr', 'KJJKJHH,JHJKHJKH', 2, 0, 'GOOD', 'rgrg', NULL, NULL, 109, '2017-11-16 10:17:05', '2017-11-16 10:17:05'),
(190, 'HP Laptop', 'N/A', 2, 0, 'test', 'Stock', NULL, NULL, 110, '2017-11-16 10:17:24', '2017-11-16 10:17:24'),
(191, 'rgregr', 'KJJKJHH,JHJKHJKH', 2, 0, 'GOOD', 'rgrg', NULL, NULL, 110, '2017-11-16 10:17:24', '2017-11-16 10:17:24'),
(192, 'HP Laptop', 'N/A', 2, 0, 'test', 'Stock', NULL, NULL, 111, '2017-11-16 10:17:50', '2017-11-16 10:17:50'),
(193, 'rgregr', 'KJJKJHH,JHJKHJKH', 2, 0, 'GOOD', 'rgrg', NULL, NULL, 111, '2017-11-16 10:17:50', '2017-11-16 10:17:50'),
(194, 'HP Laptop', 'rgrgrg', 2, 0, 'test', 'Stock', NULL, NULL, 112, '2017-11-16 11:16:00', '2017-11-16 11:16:00'),
(195, 'dfgbh', '894nbdfjdbfjb843', 2, 0, 'working ok', 'For replacement of JOY\'S FAULTY UNIT', NULL, NULL, 112, '2017-11-16 11:16:00', '2017-11-16 11:16:00'),
(196, 'HP Laptop', 'rgrgrg', 2, 0, 'test', 'Stock', NULL, NULL, 113, '2017-11-16 11:18:23', '2017-11-16 11:18:23'),
(197, 'dfgbh', '894nbdfjdbfjb843', 2, 0, 'working ok', 'For replacement of JOY\'S FAULTY UNIT', NULL, NULL, 113, '2017-11-16 11:18:23', '2017-11-16 11:18:23'),
(198, 'HP Laptop', 'rgrgrg', 2, 0, 'test', 'Stock', NULL, NULL, 114, '2017-11-16 11:19:03', '2017-11-16 11:19:03'),
(199, 'dfgbh', '894nbdfjdbfjb843', 2, 0, 'working ok', 'For replacement of JOY\'S FAULTY UNIT', NULL, NULL, 114, '2017-11-16 11:19:03', '2017-11-16 11:19:03'),
(200, 'HP Laptop', 'rgrgrg', 2, 0, 'test', 'Stock', NULL, NULL, 115, '2017-11-16 11:19:59', '2017-11-16 11:19:59'),
(201, 'dfgbh', '894nbdfjdbfjb843', 2, 0, 'working ok', 'For replacement of JOY\'S FAULTY UNIT', NULL, NULL, 115, '2017-11-16 11:19:59', '2017-11-16 11:19:59'),
(202, 'HP Laptop', 'rgrgrg', 2, 0, 'test', 'Stock', NULL, NULL, 116, '2017-11-16 11:20:55', '2017-11-16 11:20:55'),
(203, 'dfgbh', '894nbdfjdbfjb843', 2, 0, 'working ok', 'For replacement of JOY\'S FAULTY UNIT', NULL, NULL, 116, '2017-11-16 11:20:55', '2017-11-16 11:20:55'),
(204, 'Carton of CAT 6 Cables', 'N/A', 1, 0, 'New', 'For PTP installation', NULL, NULL, 117, '2017-11-21 13:19:28', '2017-11-21 13:19:28'),
(205, 'Pack of RJ45 clips', 'N/A', 2, 0, 'New', 'For PTP installation', NULL, NULL, 117, '2017-11-21 13:19:28', '2017-11-21 13:19:28'),
(206, 'Samsung Monitor', 'H23BTG', 5, 4, 'NEW', 'FOR CCTV CONTROL ROOM', '8784738', '0938408', 118, '2017-11-22 07:36:10', '2017-11-22 07:37:21'),
(207, 'Samsung Deskstand', 'J383FFG', 4, 3, 'NEW', 'FOR CCTV CONTROL ROOM', '346365', '65665', 118, '2017-11-22 07:36:10', '2017-11-22 07:37:22'),
(208, 'Samsung Drive', 'N/A', 2, 0, 'New', 'For stock', '434', '343', 119, '2017-11-22 09:18:29', '2017-11-22 09:18:29'),
(209, 'Samsung Flash drive', 'N/A', 5, 0, 'New', 'For stock', '3434', '3445', 119, '2017-11-22 09:18:29', '2017-11-22 09:18:29'),
(210, 'Samsung drive that will be used for installation at the warehouse in agbara', 'Let the serial also be this long at first just to test the cell oif the table', 25, 0, 'Let the serial also be this long at first just to test the cell oif the table', 'Let the serial also be this long at first just to test the cell oif the table', '254554543545', '32555455', 120, '2017-11-22 09:22:25', '2017-11-22 09:22:25'),
(211, 'Hikvision DVR', 'N/A', 2, 1, 'NEW', 'Stock', '534545', '4545', 121, '2017-11-22 09:45:57', '2017-11-22 09:46:57'),
(212, 'HP System Unit', 'N./A', 2, 1, 'Faulty', NULL, NULL, NULL, 121, '2017-11-22 09:45:57', '2017-11-22 09:46:57'),
(213, 'Ubiquiti radio', 'hjshcsch', 5, 0, 'NEW', 'For installation', '2323', '2323', 122, '2017-11-23 09:18:03', '2017-11-23 09:18:03'),
(214, 'Ubiquiti', 'N/A', 5, 0, 'NEW', 'For installation', '2323', '2323', 123, '2017-11-23 09:20:43', '2017-11-23 09:20:43'),
(215, 'Ubiquiti', 'N/A', 5, 0, 'NEW', 'For installation', '2323', '2323', 124, '2017-11-23 09:32:33', '2017-11-23 09:32:33'),
(216, 'Ubiquiti', 'N/A', 5, 0, 'NEW', 'For installation', '2323', '2323', 128, '2017-11-23 09:42:09', '2017-11-23 09:42:09'),
(217, 'Ubiquiti', 'N/A', 5, 0, 'NEW', 'For installation', '2323', '2323', 129, '2017-11-23 09:43:25', '2017-11-23 09:43:25'),
(218, 'Ubiquiti', 'N/A', 5, 0, 'NEW', 'For installation', '2323', '2323', 130, '2017-11-23 09:47:50', '2017-11-23 09:47:50'),
(219, 'Ubiquiti', 'N/A', 5, 0, 'NEW', 'For installation', '2323', '2323', 131, '2017-11-23 09:48:32', '2017-11-23 09:48:32'),
(220, 'Biro', 'N/A', 5, 0, NULL, NULL, NULL, NULL, 132, '2017-11-24 08:27:47', '2017-11-24 08:27:47'),
(221, 'HP Laptop', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 133, '2017-11-24 09:27:09', '2017-11-24 09:27:09'),
(222, 'HP Laptop', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 134, '2017-11-24 09:28:34', '2017-11-24 09:28:34'),
(223, 'HP Laptop', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 135, '2017-11-24 09:28:51', '2017-11-24 09:28:51'),
(224, 'HP Laptop', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 136, '2017-11-24 09:29:37', '2017-11-24 09:29:37'),
(225, 'Ubiquiti', 'N/A', 2, 0, 'NEW', 'For stock', NULL, NULL, 137, '2017-11-24 09:43:33', '2017-11-24 09:43:33'),
(226, 'Cisco Router', NULL, 2, 0, NULL, NULL, NULL, NULL, 138, '2017-11-24 10:58:08', '2017-11-24 10:58:08'),
(227, 'L300 N-Computing Device', NULL, 3, 0, NULL, NULL, NULL, NULL, 139, '2017-11-24 11:33:19', '2017-11-24 11:33:19'),
(228, 'L300 N-Computing Device', NULL, 3, 0, NULL, NULL, NULL, NULL, 140, '2017-11-24 11:34:17', '2017-11-24 11:34:17'),
(229, 'Samsung monitor', 'N/A', 2, 0, NULL, NULL, NULL, NULL, 141, '2017-11-24 11:38:57', '2017-11-24 11:38:57'),
(230, 'Mikrotik Radio', 'N/A', 2, 0, 'NEW', NULL, NULL, NULL, 142, '2017-11-24 12:38:30', '2017-11-24 12:38:30'),
(231, 'Cat UTP cable', NULL, 2, 0, NULL, NULL, NULL, NULL, 143, '2017-11-24 12:58:31', '2017-11-24 12:58:31'),
(232, '5KVA Stabilizer', 'N/A', 2, 0, 'NEW', NULL, NULL, NULL, 144, '2017-11-24 13:19:56', '2017-11-24 13:19:56'),
(233, '5KVA Stabilizer', 'N/A', 2, 0, 'NEW', NULL, NULL, NULL, 145, '2017-11-24 13:20:47', '2017-11-24 13:20:47'),
(234, 'HP Laptop', NULL, 2, 0, NULL, NULL, NULL, NULL, 146, '2017-11-24 13:24:01', '2017-11-24 13:24:01'),
(235, 'Pen', NULL, 3, 0, NULL, NULL, NULL, NULL, 147, '2017-11-24 13:31:18', '2017-11-24 13:31:18'),
(236, 'Cat UTP cable', NULL, 1, 0, NULL, NULL, NULL, NULL, 148, '2017-11-24 13:37:16', '2017-11-24 13:37:16'),
(237, '5KVA Stabilizer', NULL, 1, 0, NULL, NULL, NULL, NULL, 149, '2017-11-24 13:39:34', '2017-11-24 13:39:34'),
(238, 'Carton of CAT 6 Cables', NULL, 2, 0, NULL, NULL, NULL, NULL, 150, '2017-11-24 13:49:39', '2017-11-24 13:49:39'),
(239, 'Carton of CAT 6 Cables', NULL, 2, 0, NULL, NULL, NULL, NULL, 151, '2017-11-24 13:50:19', '2017-11-24 13:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `itemslogs`
--

CREATE TABLE `itemslogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `docid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemDesc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemRecQty` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `recName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recId` int(11) NOT NULL,
  `recEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `itemslogs`
--

INSERT INTO `itemslogs` (`id`, `docid`, `itemid`, `itemDesc`, `serialNo`, `itemRecQty`, `status`, `remark`, `recName`, `recId`, `recEmail`, `created_at`, `updated_at`) VALUES
(1, 9, 13, 'CAble', 'N/A', 0, 'Half', 'Just testing the app.', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-13 13:53:04', '2017-10-13 13:53:04'),
(2, 9, 13, 'CAble', 'N/A', 0, 'Half', 'Just testing the app.', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-13 13:56:11', '2017-10-13 13:56:11'),
(3, 9, 13, 'CAble', 'N/A', 0, 'Half', 'Just testing the app.', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-13 13:58:57', '2017-10-13 13:58:57'),
(4, 9, 13, 'CAble', 'N/A', 0, 'Half', 'Just testing the app.', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-16 06:53:50', '2017-10-16 06:53:50'),
(5, 9, 13, 'CAble', 'N/A', 0, 'Half', 'Just testing the app.', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-16 07:02:13', '2017-10-16 07:02:13'),
(6, 9, 13, 'CAble', 'N/A', 0, 'Half', 'Just testing the app.', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-16 07:13:23', '2017-10-16 07:13:23'),
(7, 9, 13, 'CAble', 'N/A', 0, 'Half', 'Just testing the app.', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-16 07:32:27', '2017-10-16 07:32:27'),
(8, 25, 70, 'Keyboard', 'N/A', 2, 'NEW', 'For stock at NPRNL', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-16 08:07:58', '2017-10-16 08:07:58'),
(9, 13, 18, 'Monitor', 'GH1,GH2, GH3', 20, 'GOOD', 'For stock', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-17 13:34:38', '2017-10-17 13:34:38'),
(10, 13, 18, 'Monitor', 'GH1,GH2, GH3', 1, 'GOOD', 'For stock', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-17 14:18:38', '2017-10-17 14:18:38'),
(11, 13, 18, 'Monitor', 'GH1,GH2, GH3', 7, 'GOOD', 'For stock', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-17 14:19:09', '2017-10-17 14:19:09'),
(12, 25, 70, 'Keyboard', 'N/A', 2, 'NEW', 'For stock at NPRNL', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 11:41:37', '2017-10-18 11:41:37'),
(13, 25, 70, 'Keyboard', 'N/A', -3, 'NEW', 'For stock at NPRNL', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 11:50:50', '2017-10-18 11:50:50'),
(14, 25, 70, 'Keyboard', 'N/A', 12, 'NEW', 'For stock at NPRNL', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 12:02:01', '2017-10-18 12:02:01'),
(15, 25, 70, 'Keyboard', 'N/A', 0, 'NEW', 'For stock at NPRNL', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 12:07:20', '2017-10-18 12:07:20'),
(16, 30, 75, 'RJ45', 'N/A', 5, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:07:25', '2017-10-18 13:07:25'),
(17, 30, 76, 'RJ45 CLIP', 'N/A', 5, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:07:25', '2017-10-18 13:07:25'),
(18, 30, 77, 'CRIMPING TOOL', 'N/A', 2, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:07:26', '2017-10-18 13:07:26'),
(19, 30, 78, 'Network Cable', 'N/A', 5, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:07:26', '2017-10-18 13:07:26'),
(20, 30, 79, 'Network Camera', 'N/A`', 5, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:07:26', '2017-10-18 13:07:26'),
(21, 30, 75, 'RJ45', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:42:58', '2017-10-18 13:42:58'),
(22, 30, 76, 'RJ45 CLIP', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:42:58', '2017-10-18 13:42:58'),
(23, 30, 77, 'CRIMPING TOOL', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:42:59', '2017-10-18 13:42:59'),
(24, 30, 78, 'Network Cable', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:43:01', '2017-10-18 13:43:01'),
(25, 30, 79, 'Network Camera', 'N/A`', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:43:01', '2017-10-18 13:43:01'),
(26, 30, 75, 'RJ45', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:45:47', '2017-10-18 13:45:47'),
(27, 30, 76, 'RJ45 CLIP', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:45:47', '2017-10-18 13:45:47'),
(28, 30, 77, 'CRIMPING TOOL', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:45:47', '2017-10-18 13:45:47'),
(29, 30, 78, 'Network Cable', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:45:48', '2017-10-18 13:45:48'),
(30, 30, 79, 'Network Camera', 'N/A`', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:45:49', '2017-10-18 13:45:49'),
(31, 30, 75, 'RJ45', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:54:19', '2017-10-18 13:54:19'),
(32, 30, 76, 'RJ45 CLIP', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:54:19', '2017-10-18 13:54:19'),
(33, 30, 77, 'CRIMPING TOOL', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:54:21', '2017-10-18 13:54:21'),
(34, 30, 78, 'Network Cable', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:54:21', '2017-10-18 13:54:21'),
(35, 30, 79, 'Network Camera', 'N/A`', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:54:22', '2017-10-18 13:54:22'),
(36, 30, 75, 'RJ45', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:59:51', '2017-10-18 13:59:51'),
(37, 30, 76, 'RJ45 CLIP', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:59:54', '2017-10-18 13:59:54'),
(38, 30, 77, 'CRIMPING TOOL', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:59:54', '2017-10-18 13:59:54'),
(39, 30, 78, 'Network Cable', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:59:56', '2017-10-18 13:59:56'),
(40, 30, 79, 'Network Camera', 'N/A`', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 13:59:56', '2017-10-18 13:59:56'),
(41, 30, 75, 'RJ45', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 14:09:28', '2017-10-18 14:09:28'),
(42, 30, 76, 'RJ45 CLIP', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 14:09:29', '2017-10-18 14:09:29'),
(43, 30, 77, 'CRIMPING TOOL', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 14:09:30', '2017-10-18 14:09:30'),
(44, 30, 78, 'Network Cable', 'N/A', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 14:09:31', '2017-10-18 14:09:31'),
(45, 30, 79, 'Network Camera', 'N/A`', 0, 'New', 'FOR CCTV', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-18 14:09:33', '2017-10-18 14:09:33'),
(46, 25, 70, 'Keyboard', 'N/A', 2, 'NEW', 'For stock at NPRNL', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-19 06:57:49', '2017-10-19 06:57:49'),
(47, 39, 85, 'Mercury 650VA UPS', '130602E0650n00241', 0, 'Used', 'For replacement Canice faulty UPS', 'Okikiola grace', 11, 'okikiola.grace@esrnl.com', '2017-10-24 09:41:16', '2017-10-24 09:41:16'),
(48, 39, 86, 'Mercury 650VA UPS', '130823E0650n06071', 0, 'Used', 'For replacement of Regina\'s faulty UPS .', 'Okikiola grace', 11, 'okikiola.grace@esrnl.com', '2017-10-24 09:41:17', '2017-10-24 09:41:17'),
(49, 41, 88, 'ncomputin', 'asdfghjk', 50, 'new item', 'good condition', 'azeez', 13, 'dufuwa.abdulazeez@natural-prime.com', '2017-10-24 12:36:15', '2017-10-24 12:36:15'),
(50, 41, 88, 'ncomputin', 'asdfghjk', 0, 'new item', 'good condition', 'azeez', 13, 'dufuwa.abdulazeez@natural-prime.com', '2017-10-24 12:43:36', '2017-10-24 12:43:36'),
(51, 44, 91, 'Acer Aspire 4810T Laptop', 'LXPBA0Y00492114EB72000', 0, 'Used', 'For use in Conference Room,Agbara.', 'Esther', 4, 'olatawura.esther@natural-prime.com', '2017-10-25 09:19:59', '2017-10-25 09:19:59'),
(52, 43, 90, 'HP Probook 4420 Laptop', 'CNF1060RTD', 1, 'Used', 'For use in Conference  Room', 'mojisola', 5, 'mojisola.luwaji@esrnl.com', '2017-10-25 13:43:57', '2017-10-25 13:43:57'),
(53, 63, 118, 'tyre 11 R 22.5', '75000276', 0, 'NEW', 'for inventory control', 'Isaac Ochei', 15, 'store.nprnl@natural-prime.com', '2017-10-26 12:34:46', '2017-10-26 12:34:46'),
(54, 63, 119, 'dust blower', '28000070', 0, 'New', 'shubham machine cleaning', 'Isaac Ochei', 15, 'store.nprnl@natural-prime.com', '2017-10-26 12:34:46', '2017-10-26 12:34:46'),
(55, 60, 100, 'toner HP 12A', '20000028', 2, 'New', 'For ESRNL Agbara IT Stock', 'ESRNL STORE', 16, 'amobi.okoh@esrnl.com', '2017-10-26 12:37:46', '2017-10-26 12:37:46'),
(56, 60, 98, 'tyre 11 R 22.5', '19004390', 6, 'NEW', 'for stock control', 'ESRNL STORE', 16, 'amobi.okoh@esrnl.com', '2017-10-26 12:37:46', '2017-10-26 12:37:46'),
(57, 60, 99, 'Epson LQ 300 Ribbon', '19004574', 20, 'New', 'For ESRNL Agbara IT stock', 'ESRNL STORE', 16, 'amobi.okoh@esrnl.com', '2017-10-26 12:37:47', '2017-10-26 12:37:47'),
(58, 64, 120, 'Ubiquiti Surge Protector', 'K16110200648', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:24', '2017-10-28 08:22:24'),
(59, 64, 124, 'Ubiquiti Surge Protector', 'K1611200607', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:25', '2017-10-28 08:22:25'),
(60, 64, 125, 'Ubiquiti Surge Protector', 'K16110200539', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:25', '2017-10-28 08:22:25'),
(61, 64, 121, 'Ubiquiti Surge Protector', 'K16110201487', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:25', '2017-10-28 08:22:25'),
(62, 64, 122, 'Ubiquiti Surge Protector', 'K16110201490', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:25', '2017-10-28 08:22:25'),
(63, 64, 123, 'Ubiquiti Surge Protector', 'K16100225711', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:26', '2017-10-28 08:22:26'),
(64, 64, 126, 'Ubiquiti Surge Protector', 'K16110200623', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:26', '2017-10-28 08:22:26'),
(65, 64, 127, 'Ubiquiti Surge Protector', 'K16110200638', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:27', '2017-10-28 08:22:27'),
(66, 64, 128, 'Ubiquiti Surge Protector', 'K16110200558', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:27', '2017-10-28 08:22:27'),
(67, 64, 129, 'Ubiquiti Surge Protector', 'K16110200550', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:28', '2017-10-28 08:22:28'),
(68, 64, 130, 'Ubiquiti Surge Protector', 'K16110200606', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:28', '2017-10-28 08:22:28'),
(69, 64, 131, 'Ubiquiti Surge Protector', 'K16110200636', 0, 'New', 'For installation on Ethernet devices to against surge', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:22:29', '2017-10-28 08:22:29'),
(70, 20, 22, 'CAT 7 Connectors', 'N/A', 0, 'New Items', 'For CCTV Upgrade Project Use in Factory', 'chinedu', 17, 'chinedu.chukwudum@primerafood-nigeria.com', '2017-10-28 08:23:34', '2017-10-28 08:23:34'),
(71, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 10, 'NEW', 'For replacement of surung marpaung keyboard', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-30 09:11:23', '2017-10-30 09:11:23'),
(72, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 2, 'NEW', 'For replacement of surung marpaung keyboard', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-30 12:20:28', '2017-10-30 12:20:28'),
(73, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 2, 'NEW', 'For replacement of surung marpaung keyboard', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-30 12:35:44', '2017-10-30 12:35:44'),
(74, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 2, 'NEW', 'For replacement of surung marpaung keyboard', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-30 12:38:40', '2017-10-30 12:38:40'),
(75, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 2, 'NEW', 'For replacement of surung marpaung keyboard', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-30 12:54:49', '2017-10-30 12:54:49'),
(76, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 2, 'NEW', 'For replacement of surung marpaung keyboard', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-30 12:58:48', '2017-10-30 12:58:48'),
(77, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 1, 'NEW', 'For replacement of surung marpaung keyboard', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-30 13:01:13', '2017-10-30 13:01:13'),
(78, 76, 145, 'Hikvision DVR', 'N/A', 6, 'New', 'For CCTV project', 'Charles Driver', 18, 'm@f.com', '2017-10-30 14:50:36', '2017-10-30 14:50:36'),
(79, 36, 83, 'Tenda POE Injector', 'E5142014715000262', 1, 'New', 'For Ip-Phone connection in EMANL Office Agbara', 'Charles Driver', 18, 'm@f.com', '2017-10-30 15:02:34', '2017-10-30 15:02:34'),
(80, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 10, 'NEW', 'For replacement of surung marpaung keyboard', 'Charles Driver', 18, 'm@f.com', '2017-10-31 07:01:24', '2017-10-31 07:01:24'),
(81, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 5, 'NEW', 'For replacement of surung marpaung keyboard', 'Charles Driver', 18, 'm@f.com', '2017-10-31 07:25:20', '2017-10-31 07:25:20'),
(82, 76, 145, 'Hikvision DVR', 'N/A', 4, 'New', 'For CCTV project', 'Charles Driver', 18, 'm@f.com', '2017-10-31 08:21:12', '2017-10-31 08:21:12'),
(83, 75, 144, 'Samsung monitor', 'ZTMAJHJD', 5, 'NEW', 'For replacement of surung marpaung keyboard', 'Charles Driver', 18, 'm@f.com', '2017-11-01 07:32:08', '2017-11-01 07:32:08'),
(84, 79, 148, 'Samsung Drive', 'N/A', 2, 'New', 'Stock', 'Toyin Sadiku', 21, 'toyin@esrnl.com', '2017-11-01 13:27:12', '2017-11-01 13:27:12'),
(85, 79, 149, 'Samsung Mouse', NULL, 5, 'New', 'IT Stock', 'Toyin Sadiku', 21, 'toyin@esrnl.com', '2017-11-01 13:27:12', '2017-11-01 13:27:12'),
(86, 76, 145, 'Hikvision DVR', 'N/A', 10, 'New', 'For CCTV project', 'Toyin Sadiku', 21, 'toyin@esrnl.com', '2017-11-01 13:48:57', '2017-11-01 13:48:57'),
(87, 98, 168, 'Hikvision DVR', 'N/A', 2, 'test', 'test', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-16 10:54:12', '2017-11-16 10:54:12'),
(88, 89, 159, 'Cake', 'N/A', 2, 'NEW', 'Stock', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 07:10:01', '2017-11-22 07:10:01'),
(89, 87, 157, 'HP Laptop', 'N/A', 1, 'NEW', 'For stock', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 07:30:10', '2017-11-22 07:30:10'),
(90, 31, 80, 'TV Monitor', 'N/A', 2, 'New', 'For CCTV', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 07:32:57', '2017-11-22 07:32:57'),
(91, 118, 206, 'Samsung Monitor', 'H23BTG', 4, 'NEW', 'FOR CCTV CONTROL ROOM', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 07:37:21', '2017-11-22 07:37:21'),
(92, 118, 207, 'Samsung Deskstand', 'J383FFG', 3, 'NEW', 'FOR CCTV CONTROL ROOM', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 07:37:22', '2017-11-22 07:37:22'),
(93, 30, 75, 'RJ45', 'N/A', 8, 'New', 'FOR CCTV', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 08:09:51', '2017-11-22 08:09:51'),
(94, 30, 76, 'RJ45 CLIP', 'N/A', 2, 'New', 'FOR CCTV', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 08:09:51', '2017-11-22 08:09:51'),
(95, 30, 77, 'CRIMPING TOOL', 'N/A', 1, 'New', 'FOR CCTV', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 08:09:52', '2017-11-22 08:09:52'),
(96, 30, 78, 'Network Cable', 'N/A', 2, 'New', 'FOR CCTV', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 08:09:52', '2017-11-22 08:09:52'),
(97, 30, 79, 'Network Camera', 'N/A`', 1, 'New', 'FOR CCTV', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 08:09:52', '2017-11-22 08:09:52'),
(98, 121, 211, 'Hikvision DVR', 'N/A', 1, 'NEW', 'Stock', 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 09:46:57', '2017-11-22 09:46:57'),
(99, 121, 212, 'HP System Unit', 'N./A', 1, 'Faulty', NULL, 'Adebowale Alli', 22, 'hallitee_2005@yahoo.com', '2017-11-22 09:46:57', '2017-11-22 09:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_17_134442_create_docs_table', 1),
(4, '2017_08_18_100851_create_items_table', 1),
(5, '2017_10_03_145639_create_print_logs', 2),
(6, '2017_10_03_150507_create_printlogs_table', 2),
(7, '2017_10_04_135832_create_printlogs_table', 3),
(8, '2017_10_07_120542_create_itemslogs_table', 4),
(9, '2017_11_24_095146_create_jobs_table', 5),
(10, '2017_11_24_121852_create_jobs_table', 6),
(11, '2017_11_24_122050_create_failed_jobs_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('odufuwa.abdulazeez@natural-prime.com', '$2y$10$C.JN7466SnEHf3p6WuN/3epwU8m9R421rw1BLt0MuWG53eIGWPpDy', '2017-10-24 12:27:50'),
('mercy.agu@esrnl.com', '$2y$10$n5fFMwT6C.lRq7GVJ9L2mOv/ku/JsPYNa8r7DGd7tGVUUlv2H6Yb6', '2017-10-25 14:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `printlogs`
--

CREATE TABLE `printlogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `docid` int(11) NOT NULL,
  `printedBy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `printDate` date NOT NULL,
  `printTime` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `printlogs`
--

INSERT INTO `printlogs` (`id`, `docid`, `printedBy`, `printDate`, `printTime`, `created_at`, `updated_at`) VALUES
(1, 10, 'Taofik Alli-Balogun', '2017-10-04', '14:22:47', '2017-10-04 13:22:47', '2017-10-04 13:22:47'),
(2, 12, 'Taofik Alli-Balogun', '2017-10-04', '15:01:48', '2017-10-04 14:01:48', '2017-10-04 14:01:48'),
(3, 12, 'Taofik Alli-Balogun', '2017-10-07', '11:26:08', '2017-10-07 10:26:08', '2017-10-07 10:26:08'),
(4, 15, 'Regina kadiri', '2017-10-09', '14:33:17', '2017-10-09 13:33:17', '2017-10-09 13:33:17'),
(5, 19, 'Regina kadiri', '2017-10-09', '14:36:06', '2017-10-09 13:36:06', '2017-10-09 13:36:06'),
(6, 20, 'Regina kadiri', '2017-10-09', '14:39:46', '2017-10-09 13:39:46', '2017-10-09 13:39:46'),
(7, 22, 'Regina kadiri', '2017-10-10', '08:35:10', '2017-10-10 07:35:10', '2017-10-10 07:35:10'),
(8, 23, 'Regina kadiri', '2017-10-10', '08:47:37', '2017-10-10 07:47:37', '2017-10-10 07:47:37'),
(9, 24, 'Regina kadiri', '2017-10-10', '08:56:15', '2017-10-10 07:56:15', '2017-10-10 07:56:15'),
(10, 13, 'Taofik Alli-Balogun', '2017-10-16', '12:02:21', '2017-10-16 11:02:21', '2017-10-16 11:02:21'),
(11, 13, 'Taofik Alli-Balogun', '2017-10-16', '13:05:23', '2017-10-16 12:05:23', '2017-10-16 12:05:23'),
(12, 9, 'Taofik Alli-Balogun', '2017-10-17', '07:42:49', '2017-10-17 06:42:49', '2017-10-17 06:42:49'),
(13, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:25:20', '2017-10-17 07:25:20', '2017-10-17 07:25:20'),
(14, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:30:50', '2017-10-17 07:30:50', '2017-10-17 07:30:50'),
(15, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:31:47', '2017-10-17 07:31:47', '2017-10-17 07:31:47'),
(16, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:32:23', '2017-10-17 07:32:23', '2017-10-17 07:32:23'),
(17, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:33:40', '2017-10-17 07:33:40', '2017-10-17 07:33:40'),
(18, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:34:31', '2017-10-17 07:34:31', '2017-10-17 07:34:31'),
(19, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:34:54', '2017-10-17 07:34:54', '2017-10-17 07:34:54'),
(20, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:36:51', '2017-10-17 07:36:51', '2017-10-17 07:36:51'),
(21, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:37:17', '2017-10-17 07:37:17', '2017-10-17 07:37:17'),
(22, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:43:00', '2017-10-17 07:43:00', '2017-10-17 07:43:00'),
(23, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:46:06', '2017-10-17 07:46:06', '2017-10-17 07:46:06'),
(24, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:51:37', '2017-10-17 07:51:37', '2017-10-17 07:51:37'),
(25, 9, 'Taofik Alli-Balogun', '2017-10-17', '08:58:08', '2017-10-17 07:58:08', '2017-10-17 07:58:08'),
(26, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:02:59', '2017-10-17 08:02:59', '2017-10-17 08:02:59'),
(27, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:09:00', '2017-10-17 08:09:00', '2017-10-17 08:09:00'),
(28, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:12:14', '2017-10-17 08:12:14', '2017-10-17 08:12:14'),
(29, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:13:50', '2017-10-17 08:13:50', '2017-10-17 08:13:50'),
(30, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:17:04', '2017-10-17 08:17:04', '2017-10-17 08:17:04'),
(31, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:35:22', '2017-10-17 08:35:22', '2017-10-17 08:35:22'),
(32, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:36:57', '2017-10-17 08:36:57', '2017-10-17 08:36:57'),
(33, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:39:25', '2017-10-17 08:39:25', '2017-10-17 08:39:25'),
(34, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:43:39', '2017-10-17 08:43:39', '2017-10-17 08:43:39'),
(35, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:45:20', '2017-10-17 08:45:20', '2017-10-17 08:45:20'),
(36, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:46:18', '2017-10-17 08:46:18', '2017-10-17 08:46:18'),
(37, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:52:31', '2017-10-17 08:52:31', '2017-10-17 08:52:31'),
(38, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:55:14', '2017-10-17 08:55:14', '2017-10-17 08:55:14'),
(39, 9, 'Taofik Alli-Balogun', '2017-10-17', '09:55:18', '2017-10-17 08:55:18', '2017-10-17 08:55:18'),
(40, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:10:39', '2017-10-17 09:10:39', '2017-10-17 09:10:39'),
(41, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:10:42', '2017-10-17 09:10:42', '2017-10-17 09:10:42'),
(42, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:11:51', '2017-10-17 09:11:51', '2017-10-17 09:11:51'),
(43, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:13:28', '2017-10-17 09:13:28', '2017-10-17 09:13:28'),
(44, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:13:32', '2017-10-17 09:13:32', '2017-10-17 09:13:32'),
(45, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:13:39', '2017-10-17 09:13:39', '2017-10-17 09:13:39'),
(46, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:14:17', '2017-10-17 09:14:17', '2017-10-17 09:14:17'),
(47, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:14:41', '2017-10-17 09:14:41', '2017-10-17 09:14:41'),
(48, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:17:43', '2017-10-17 09:17:43', '2017-10-17 09:17:43'),
(49, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:19:00', '2017-10-17 09:19:00', '2017-10-17 09:19:00'),
(50, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:21:03', '2017-10-17 09:21:03', '2017-10-17 09:21:03'),
(51, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:22:26', '2017-10-17 09:22:26', '2017-10-17 09:22:26'),
(52, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:22:43', '2017-10-17 09:22:43', '2017-10-17 09:22:43'),
(53, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:25:40', '2017-10-17 09:25:40', '2017-10-17 09:25:40'),
(54, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:26:38', '2017-10-17 09:26:38', '2017-10-17 09:26:38'),
(55, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:32:14', '2017-10-17 09:32:14', '2017-10-17 09:32:14'),
(56, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:33:12', '2017-10-17 09:33:12', '2017-10-17 09:33:12'),
(57, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:33:23', '2017-10-17 09:33:23', '2017-10-17 09:33:23'),
(58, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:33:58', '2017-10-17 09:33:58', '2017-10-17 09:33:58'),
(59, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:36:26', '2017-10-17 09:36:26', '2017-10-17 09:36:26'),
(60, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:41:06', '2017-10-17 09:41:06', '2017-10-17 09:41:06'),
(61, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:41:56', '2017-10-17 09:41:56', '2017-10-17 09:41:56'),
(62, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:42:24', '2017-10-17 09:42:24', '2017-10-17 09:42:24'),
(63, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:43:02', '2017-10-17 09:43:02', '2017-10-17 09:43:02'),
(64, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:44:14', '2017-10-17 09:44:14', '2017-10-17 09:44:14'),
(65, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:49:22', '2017-10-17 09:49:22', '2017-10-17 09:49:22'),
(66, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:50:25', '2017-10-17 09:50:25', '2017-10-17 09:50:25'),
(67, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:50:51', '2017-10-17 09:50:51', '2017-10-17 09:50:51'),
(68, 9, 'Taofik Alli-Balogun', '2017-10-17', '10:51:30', '2017-10-17 09:51:30', '2017-10-17 09:51:30'),
(69, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:00:12', '2017-10-17 10:00:12', '2017-10-17 10:00:12'),
(70, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:00:44', '2017-10-17 10:00:44', '2017-10-17 10:00:44'),
(71, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:00:48', '2017-10-17 10:00:48', '2017-10-17 10:00:48'),
(72, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:02:14', '2017-10-17 10:02:14', '2017-10-17 10:02:14'),
(73, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:02:28', '2017-10-17 10:02:28', '2017-10-17 10:02:28'),
(74, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:37:57', '2017-10-17 10:37:57', '2017-10-17 10:37:57'),
(75, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:39:23', '2017-10-17 10:39:23', '2017-10-17 10:39:23'),
(76, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:39:51', '2017-10-17 10:39:51', '2017-10-17 10:39:51'),
(77, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:41:43', '2017-10-17 10:41:43', '2017-10-17 10:41:43'),
(78, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:42:45', '2017-10-17 10:42:45', '2017-10-17 10:42:45'),
(79, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:47:12', '2017-10-17 10:47:12', '2017-10-17 10:47:12'),
(80, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:48:53', '2017-10-17 10:48:53', '2017-10-17 10:48:53'),
(81, 9, 'Taofik Alli-Balogun', '2017-10-17', '11:49:12', '2017-10-17 10:49:12', '2017-10-17 10:49:12'),
(82, 13, 'Taofik Alli-Balogun', '2017-10-17', '11:50:25', '2017-10-17 10:50:25', '2017-10-17 10:50:25'),
(83, 13, 'Taofik Alli-Balogun', '2017-10-17', '11:50:50', '2017-10-17 10:50:50', '2017-10-17 10:50:50'),
(84, 28, 'Taofik Alli-Balogun', '2017-10-18', '10:58:41', '2017-10-18 09:58:41', '2017-10-18 09:58:41'),
(85, 28, 'Taofik Alli-Balogun', '2017-10-18', '10:59:29', '2017-10-18 09:59:29', '2017-10-18 09:59:29'),
(86, 25, 'Taofik Alli-Balogun', '2017-10-18', '12:42:40', '2017-10-18 11:42:40', '2017-10-18 11:42:40'),
(87, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:08:44', '2017-10-18 12:08:44', '2017-10-18 12:08:44'),
(88, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:09:58', '2017-10-18 12:09:58', '2017-10-18 12:09:58'),
(89, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:13:18', '2017-10-18 12:13:18', '2017-10-18 12:13:18'),
(90, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:14:55', '2017-10-18 12:14:55', '2017-10-18 12:14:55'),
(91, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:18:25', '2017-10-18 12:18:25', '2017-10-18 12:18:25'),
(92, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:21:53', '2017-10-18 12:21:53', '2017-10-18 12:21:53'),
(93, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:22:17', '2017-10-18 12:22:17', '2017-10-18 12:22:17'),
(94, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:25:29', '2017-10-18 12:25:29', '2017-10-18 12:25:29'),
(95, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:26:18', '2017-10-18 12:26:18', '2017-10-18 12:26:18'),
(96, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:27:07', '2017-10-18 12:27:07', '2017-10-18 12:27:07'),
(97, 30, 'Taofik Alli-Balogun', '2017-10-18', '13:32:23', '2017-10-18 12:32:23', '2017-10-18 12:32:23'),
(98, 30, 'Taofik Alli-Balogun', '2017-10-18', '13:35:44', '2017-10-18 12:35:44', '2017-10-18 12:35:44'),
(99, 30, 'Taofik Alli-Balogun', '2017-10-18', '13:36:13', '2017-10-18 12:36:13', '2017-10-18 12:36:13'),
(100, 30, 'Taofik Alli-Balogun', '2017-10-18', '13:36:50', '2017-10-18 12:36:50', '2017-10-18 12:36:50'),
(101, 30, 'Taofik Alli-Balogun', '2017-10-18', '13:36:56', '2017-10-18 12:36:56', '2017-10-18 12:36:56'),
(102, 27, 'Taofik Alli-Balogun', '2017-10-18', '13:38:18', '2017-10-18 12:38:18', '2017-10-18 12:38:18'),
(103, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:38:40', '2017-10-18 12:38:40', '2017-10-18 12:38:40'),
(104, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:40:00', '2017-10-18 12:40:00', '2017-10-18 12:40:00'),
(105, 32, 'Taofik Alli-Balogun', '2017-10-18', '13:59:23', '2017-10-18 12:59:23', '2017-10-18 12:59:23'),
(106, 24, 'Taofik Alli-Balogun', '2017-10-18', '13:59:49', '2017-10-18 12:59:49', '2017-10-18 12:59:49'),
(107, 25, 'Taofik Alli-Balogun', '2017-10-19', '08:47:11', '2017-10-19 07:47:11', '2017-10-19 07:47:11'),
(108, 35, 'Yinka Olaniyi', '2017-10-20', '08:04:23', '2017-10-20 07:04:23', '2017-10-20 07:04:23'),
(109, 35, 'Yinka Olaniyi', '2017-10-20', '08:07:54', '2017-10-20 07:07:54', '2017-10-20 07:07:54'),
(110, 37, 'Lekan', '2017-10-20', '14:29:10', '2017-10-20 13:29:10', '2017-10-20 13:29:10'),
(111, 34, 'Taofik Alli-Balogun', '2017-10-24', '09:01:36', '2017-10-24 08:01:36', '2017-10-24 08:01:36'),
(112, 39, 'Regina kadiri', '2017-10-24', '10:06:40', '2017-10-24 09:06:40', '2017-10-24 09:06:40'),
(113, 41, 'azeez', '2017-10-24', '13:38:02', '2017-10-24 12:38:02', '2017-10-24 12:38:02'),
(114, 43, 'Regina kadiri', '2017-10-24', '15:15:54', '2017-10-24 14:15:54', '2017-10-24 14:15:54'),
(115, 44, 'Regina kadiri', '2017-10-24', '15:19:44', '2017-10-24 14:19:44', '2017-10-24 14:19:44'),
(116, 45, 'kayode', '2017-10-25', '08:46:26', '2017-10-25 07:46:26', '2017-10-25 07:46:26'),
(117, 45, 'kayode', '2017-10-25', '09:04:32', '2017-10-25 08:04:32', '2017-10-25 08:04:32'),
(118, 40, 'kayode', '2017-10-25', '10:44:32', '2017-10-25 09:44:32', '2017-10-25 09:44:32'),
(119, 47, 'Esther', '2017-10-25', '14:46:34', '2017-10-25 13:46:34', '2017-10-25 13:46:34'),
(120, 47, 'Esther', '2017-10-25', '14:48:49', '2017-10-25 13:48:49', '2017-10-25 13:48:49'),
(121, 47, 'Esther', '2017-10-25', '14:52:23', '2017-10-25 13:52:23', '2017-10-25 13:52:23'),
(122, 47, 'Esther', '2017-10-25', '15:11:09', '2017-10-25 14:11:09', '2017-10-25 14:11:09'),
(123, 48, 'Esther', '2017-10-25', '15:36:51', '2017-10-25 14:36:51', '2017-10-25 14:36:51'),
(124, 48, 'Esther', '2017-10-25', '15:36:51', '2017-10-25 14:36:51', '2017-10-25 14:36:51'),
(125, 49, 'Esther', '2017-10-25', '15:37:11', '2017-10-25 14:37:11', '2017-10-25 14:37:11'),
(126, 49, 'Esther', '2017-10-25', '15:37:11', '2017-10-25 14:37:11', '2017-10-25 14:37:11'),
(127, 50, 'Esther', '2017-10-25', '15:37:28', '2017-10-25 14:37:28', '2017-10-25 14:37:28'),
(128, 50, 'Esther', '2017-10-25', '15:37:28', '2017-10-25 14:37:28', '2017-10-25 14:37:28'),
(129, 49, 'Esther', '2017-10-26', '07:15:34', '2017-10-26 06:15:34', '2017-10-26 06:15:34'),
(130, 53, 'Taofik Alli-Balogun', '2017-10-26', '07:18:53', '2017-10-26 06:18:53', '2017-10-26 06:18:53'),
(131, 54, 'Taofik Alli-Balogun', '2017-10-26', '07:25:14', '2017-10-26 06:25:14', '2017-10-26 06:25:14'),
(132, 56, 'Taofik Alli-Balogun', '2017-10-26', '07:28:29', '2017-10-26 06:28:29', '2017-10-26 06:28:29'),
(133, 57, 'kayode', '2017-10-26', '07:30:00', '2017-10-26 06:30:00', '2017-10-26 06:30:00'),
(134, 52, 'Esther', '2017-10-26', '07:31:02', '2017-10-26 06:31:02', '2017-10-26 06:31:02'),
(135, 52, 'Esther', '2017-10-26', '08:01:31', '2017-10-26 07:01:31', '2017-10-26 07:01:31'),
(136, 60, 'Yinka Olaniyi', '2017-10-26', '08:13:28', '2017-10-26 07:13:28', '2017-10-26 07:13:28'),
(137, 61, 'Yinka Olaniyi', '2017-10-26', '08:29:09', '2017-10-26 07:29:09', '2017-10-26 07:29:09'),
(138, 61, 'Yinka Olaniyi', '2017-10-26', '08:32:22', '2017-10-26 07:32:22', '2017-10-26 07:32:22'),
(139, 62, 'Regina kadiri', '2017-10-26', '08:39:30', '2017-10-26 07:39:30', '2017-10-26 07:39:30'),
(140, 63, 'Yinka Olaniyi', '2017-10-26', '08:45:25', '2017-10-26 07:45:25', '2017-10-26 07:45:25'),
(141, 64, 'Regina kadiri', '2017-10-26', '08:47:04', '2017-10-26 07:47:04', '2017-10-26 07:47:04'),
(142, 66, 'Yinka Olaniyi', '2017-10-26', '08:53:33', '2017-10-26 07:53:33', '2017-10-26 07:53:33'),
(143, 63, 'Yinka Olaniyi', '2017-10-26', '08:57:09', '2017-10-26 07:57:09', '2017-10-26 07:57:09'),
(144, 63, 'Isaac Ochei', '2017-10-26', '13:36:33', '2017-10-26 12:36:33', '2017-10-26 12:36:33'),
(145, 60, 'ESRNL STORE', '2017-10-26', '13:39:19', '2017-10-26 12:39:19', '2017-10-26 12:39:19'),
(146, 63, 'Isaac Ochei', '2017-10-26', '13:39:35', '2017-10-26 12:39:35', '2017-10-26 12:39:35'),
(147, 63, 'Isaac Ochei', '2017-10-26', '13:41:36', '2017-10-26 12:41:36', '2017-10-26 12:41:36'),
(148, 60, 'ESRNL STORE', '2017-10-26', '13:41:47', '2017-10-26 12:41:47', '2017-10-26 12:41:47'),
(149, 60, 'ESRNL STORE', '2017-10-26', '13:41:55', '2017-10-26 12:41:55', '2017-10-26 12:41:55'),
(150, 60, 'ESRNL STORE', '2017-10-26', '13:42:13', '2017-10-26 12:42:13', '2017-10-26 12:42:13'),
(151, 63, 'Isaac Ochei', '2017-10-26', '13:59:00', '2017-10-26 12:59:00', '2017-10-26 12:59:00'),
(152, 63, 'Taofik Alli-Balogun', '2017-10-26', '13:59:47', '2017-10-26 12:59:47', '2017-10-26 12:59:47'),
(153, 63, 'Isaac Ochei', '2017-10-26', '14:01:21', '2017-10-26 13:01:21', '2017-10-26 13:01:21'),
(154, 63, 'Isaac Ochei', '2017-10-26', '14:02:21', '2017-10-26 13:02:21', '2017-10-26 13:02:21'),
(155, 63, 'Isaac Ochei', '2017-10-26', '14:06:30', '2017-10-26 13:06:30', '2017-10-26 13:06:30'),
(156, 64, 'Isaac Ochei', '2017-10-26', '14:49:28', '2017-10-26 13:49:28', '2017-10-26 13:49:28'),
(157, 69, 'Isaac Ochei', '2017-10-26', '14:50:50', '2017-10-26 13:50:50', '2017-10-26 13:50:50'),
(158, 70, 'Taofik Alli-Balogun', '2017-10-27', '10:35:41', '2017-10-27 09:35:41', '2017-10-27 09:35:41'),
(159, 69, 'Isaac Ochei', '2017-10-27', '11:22:32', '2017-10-27 10:22:32', '2017-10-27 10:22:32'),
(160, 71, 'Taofik Alli-Balogun', '2017-10-27', '12:12:08', '2017-10-27 11:12:08', '2017-10-27 11:12:08'),
(161, 72, 'ESRNL STORE', '2017-10-28', '09:15:01', '2017-10-28 08:15:01', '2017-10-28 08:15:01'),
(162, 73, 'Isaac Ochei', '2017-10-28', '10:27:48', '2017-10-28 09:27:48', '2017-10-28 09:27:48'),
(163, 72, 'ESRNL STORE', '2017-10-28', '14:10:39', '2017-10-28 13:10:39', '2017-10-28 13:10:39'),
(164, 74, 'Taofik Alli-Balogun', '2017-10-30', '08:42:10', '2017-10-30 07:42:10', '2017-10-30 07:42:10'),
(165, 76, 'Taofik Alli-Balogun', '2017-10-30', '15:34:47', '2017-10-30 14:34:47', '2017-10-30 14:34:47'),
(166, 76, 'Charles Driver', '2017-10-30', '15:57:48', '2017-10-30 14:57:48', '2017-10-30 14:57:48'),
(167, 75, 'Charles Driver', '2017-10-31', '08:07:03', '2017-10-31 07:07:03', '2017-10-31 07:07:03'),
(168, 75, 'Charles Driver', '2017-10-31', '08:07:13', '2017-10-31 07:07:13', '2017-10-31 07:07:13'),
(169, 75, 'Charles Driver', '2017-11-01', '07:48:50', '2017-11-01 06:48:50', '2017-11-01 06:48:50'),
(170, 25, 'Taofik Alli-Balogun', '2017-11-13', '14:38:20', '2017-11-13 13:38:20', '2017-11-13 13:38:20'),
(171, 25, 'Taofik Alli-Balogun', '2017-11-13', '14:49:26', '2017-11-13 13:49:26', '2017-11-13 13:49:26'),
(172, 25, 'Taofik Alli-Balogun', '2017-11-13', '14:55:47', '2017-11-13 13:55:47', '2017-11-13 13:55:47'),
(173, 25, 'Taofik Alli-Balogun', '2017-11-13', '14:57:01', '2017-11-13 13:57:01', '2017-11-13 13:57:01'),
(174, 25, 'Taofik Alli-Balogun', '2017-11-14', '07:59:59', '2017-11-14 06:59:59', '2017-11-14 06:59:59'),
(175, 71, 'Taofik Alli-Balogun', '2017-11-14', '10:39:01', '2017-11-14 09:39:01', '2017-11-14 09:39:01'),
(176, 101, 'Taofik Alli-Balogun', '2017-11-16', '09:50:38', '2017-11-16 08:50:38', '2017-11-16 08:50:38'),
(177, 95, 'Adebowale Alli', '2017-11-16', '14:15:02', '2017-11-16 13:15:02', '2017-11-16 13:15:02'),
(178, 116, 'Taofik Alli-Balogun', '2017-11-17', '09:24:56', '2017-11-17 08:24:56', '2017-11-17 08:24:56'),
(179, 117, 'Taofik Alli-Balogun', '2017-11-21', '14:21:41', '2017-11-21 13:21:41', '2017-11-21 13:21:41'),
(180, 117, 'Taofik Alli-Balogun', '2017-11-21', '14:22:42', '2017-11-21 13:22:42', '2017-11-21 13:22:42'),
(181, 117, 'Taofik Alli-Balogun', '2017-11-21', '14:22:50', '2017-11-21 13:22:50', '2017-11-21 13:22:50'),
(182, 117, 'Taofik Alli-Balogun', '2017-11-22', '10:11:58', '2017-11-22 09:11:58', '2017-11-22 09:11:58'),
(183, 116, 'Adebowale Alli', '2017-11-22', '10:13:02', '2017-11-22 09:13:02', '2017-11-22 09:13:02'),
(184, 119, 'Taofik Alli-Balogun', '2017-11-22', '10:18:54', '2017-11-22 09:18:54', '2017-11-22 09:18:54'),
(185, 132, 'Taofik Alli-Balogun', '2017-11-24', '09:28:01', '2017-11-24 08:28:01', '2017-11-24 08:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priv` int(11) DEFAULT '3',
  `right` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `company`, `location`, `priv`, `right`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Taofik Alli-Balogun', 'taofik.alli-balogun@natural-prime.com', '$2y$10$vjPljEY.1JnU03ug/hvgWeEYyyFPnjJEfkduVOPRUa3QKlbnxzWGC', 'NPRNL', 'IKOYI', 2, NULL, 'FB3KL5VusUe71xYRCncmBA8NpG2zObC2zbmETf54JfnS8GeLJIASwIKHcv1L', '2017-09-26 15:14:26', '2017-09-26 15:14:26'),
(2, 'Regina Kadiri', 'regina.kadiri@natural-prime.com', '$2y$10$S6u6Le0Nr6S97VdLzYudfurVxjjUkZFCj0scOBkm7RveYQPiYNP8q', 'NPRNL', 'IKOYI', 2, NULL, 'tdiyWXcVIrkLG4bh7k5a4xrcrcUwJDToyYGeZP43eoMu0S6QdEmtT5FV8lj5', '2017-09-26 20:11:51', '2017-09-26 20:11:51'),
(3, 'Odufuwa Azeez', 'odufuwa.abdulazeez@natural-prime.com', '$2y$10$GjrKn2SShu3NasBES8/r0eG0kcfgavwUUK/9s6eGVIG6uiBJoY9vO', 'NPRNL', 'AGBARA', 3, NULL, 'vXUpCqZHTMOMKVNoL2Sarr46l0J9dUaKWW9kx7hQbyib09Ca9ebpj0SUL2qM', '2017-09-26 20:23:23', '2017-09-26 20:23:23'),
(4, 'Esther Olatawura', 'olatawura.esther@natural-prime.com', '$2y$10$s9ac7vTK.LB1.0Xkuw.22udq.EtwycZ4X3/0pv.mCfb1DQppUUBJ6', 'NPRNL', 'AGBARA', 3, NULL, 'KfiToO2LHUq2AdZ6H2gxFl0Rfot33jJmBbknAGsJhQRkmQTqAxXTWHOJhn48', '2017-09-27 19:20:20', '2017-09-27 19:20:20'),
(5, 'Mojisola Luwaji', 'mojisola.luwaji@esrnl.com', '$2y$10$p42tWLaYH.ajdIyjcpn/5OqPiRxphaZzkGN5wGBnELcGJKI0WMvIS', 'ESRNL', 'AGBARA', 3, NULL, NULL, '2017-09-27 19:24:30', '2017-09-27 19:24:30'),
(6, 'Mercy Agu', 'mercy.agu@esrnl.com', '$2y$10$5R2AuaKoQY7axPe0sLv/k.SwQPaWvf9KvE.V7yOh920ySXLCpPhi2', 'ESRNL', 'IKOYI', 2, NULL, 'r1GZXozhyjkG6ISq1MurxyK77tggivfZONl2MvpL9J2Z9MtmpBXuetM6Omtg', '2017-10-10 08:11:08', '2017-10-10 08:11:08'),
(9, 'Yinka Olaniyi', 'yinka.oalniyi@esrnl.com', '$2y$10$Ik3fIrMOqCNYxQkoxSSw1u7opsuEmsgmrfnvizJftRaRR.xhYS0tW', 'ESRNL', 'IKOYI', 3, NULL, 'sUECOAkgHy2qaHzXwTKt0bu6SDNhrIqDy9LCkgFeFCnhPb7kV99EqLoO47Iq', '2017-10-20 06:52:11', '2017-10-20 06:52:11'),
(10, 'Lekan Oladimeji', 'Lekan.Oladimeji@esrnl.com', '$2y$10$.UFMe5x3MoJslKzelPP64uDSlZt.Fw./tpT13ET0MGDtRZ18mV226', 'ESRNL', 'IKOYI', 3, NULL, 'S0Vt9oSpSoj4uBcByAO7h7ZQjQp8cc7ZGLUuVaLWcsiaeKk3nYJXmBIzvnwH', '2017-10-20 13:25:40', '2017-10-20 13:25:40'),
(11, 'Okikiola Grace', 'okikiola.grace@esrnl.com', '$2y$10$B8.ttXWRcZSkPH8Z9.Vho.UjNPfEnHyY8AVzykqAAoePAVps7dyd.', 'ESRNL', 'IKOYI', 3, NULL, '6RmhKJqXuQ7DIcBh9otyxaMfF1N5kQ9LJ7HJeRvIkHrn3F8vP2IPITMHwCyP', '2017-10-24 09:37:39', '2017-10-24 09:37:39'),
(12, 'kayode Olayemi', 'kayode.olayemi@natural-prime.com', '$2y$10$1ByZXF5UWSxEQ/JoEi0Q4eTPX84zs/Iri4qydFXbnFIRrMyNTkT86', 'NPRNL', 'AGBARA', 3, NULL, 'otWyPa13a5VuFumwlIXQXrqfHD8aSrONSmq61VwhK7dnmLDphmstd2uzn9Nx', '2017-10-24 12:10:20', '2017-10-24 12:10:20'),
(13, 'azeez', 'dufuwa.abdulazeez@natural-prime.com', '$2y$10$eVmO5dtX.HY9CXV0LyxxTO8Gy7EtFWRdE/VAONocPPcDpNo1Y16cm', 'NPRNL', 'AGBARA', 3, NULL, '2LXIP3htgi2XhVn78ACxyV3oSKPGVCOLyfMRS5yhcOR1C44a4eMS7iekzAwc', '2017-10-24 12:28:56', '2017-10-24 12:28:56'),
(14, 'Yonatan Refa', 'yonatan.refa@esrnl.com', '$2y$10$yTjoE6RxQ0S9zWT13ct9y.vqwLmuXWz4Lu1ujqxF3z0.mLL7Wmt5S', 'ESRNL', 'IKOYI', 1, NULL, 'UTXkrB9HJmQ8DZ3GzKVN3zvQnQcvCOeqFeTKjnzjyhkPXAEWoMWqR3VAp7Ko', '2017-10-25 09:57:56', '2017-10-25 09:57:56'),
(15, 'Isaac Ochei', 'store.nprnl@natural-prime.com', '$2y$10$Wf.8Dz28L1FCCxxFdv4UwuZUFG.aYEpFMH94WmWUS/4N/UOu7cc0q', 'NPRNL', 'AGBARA', 3, NULL, '2CepAOSV5I35UfgDcESCKvaoBapQqdihsjAQDYXH7DiTCTiRu7NLouF4p5yu', '2017-10-26 11:10:47', '2017-10-26 11:10:47'),
(16, 'ESRNL STORE', 'amobi.okoh@esrnl.com', '$2y$10$6zRBiQWO3/.Fheg0QSrOv.B3.LtOU1XPbA0omF5vnHIJOo1V50iQu', 'ESRNL', 'AGBARA', 3, NULL, 'RiDlmwGJc2QQIE29OuGICE5pgH78yjjizx210J4yxZhrs3Prm7chGR0xczxb', '2017-10-26 11:28:01', '2017-10-26 11:28:01'),
(17, 'chinedu', 'chinedu.chukwudum@primerafood-nigeria.com', '$2y$10$128HTr00VWz9JUkKKZdDueQ5DyuoNM73O1/nEvjEfcaItnETIvwTO', 'PFNL', 'AGBARA', 3, NULL, NULL, '2017-10-28 08:18:55', '2017-10-28 08:18:55'),
(18, 'Charles Driver', 'm@f.com', '$2y$10$eM5wg963H7/oz4qI1s3x.Osc3ZV1.swwdPRw0yBtrbK5sNwXl2jHK', 'ESRNL', 'AGBARA', 3, NULL, 'qoPs1zY8rQKu4C6bSzoaeQtal6txoFDEbER5YcfRn0wZx7Q8i3DWSSqsKSCl', '2017-10-30 07:49:56', '2017-10-30 07:49:56'),
(19, 'Seun Egbegbe', 'seun@nprnl.com', '$2y$10$5qTB620WfPdXhXRg3ZPO1uZOSC.7.yHuHUba1OZzC7ZWDMIyupKny', 'NPRNL', 'AGBARA', 3, NULL, 'KSVftdRxkiuRV7CwiDxmXS42hvH5aZcZiv5LOJ2zxpIRast96MHy02DV02XC', '2017-11-01 12:57:36', '2017-11-01 12:57:36'),
(20, 'Tosin Makanju', 'tosin@esrnl.com', '$2y$10$kx28XiuQ7j8qzeKZ.sb/ye/ycCkeJLq/9qZD4rX7Ssv1V4aSlFgVq', 'ESRNL', 'IKOYI', 3, NULL, 'AXd4pjd0ktN9x3FaqJ0O7G5deourwGhIV2DWwAALOXMWJdSL8rK6I5vVHQMo', '2017-11-01 12:58:21', '2017-11-01 12:58:21'),
(21, 'Toyin Sadiku', 'toyin@esrnl.com', '$2y$10$fuyzRyVNuHIJ8XWYlQ2tgeKXgRQU0uyeDwL59ojnr9E940eBLPkX6', 'ESRNL', 'AGBARA', 3, NULL, NULL, '2017-11-01 13:15:51', '2017-11-01 13:15:51'),
(22, 'Adebowale Alli', 'hallitee_2005@yahoo.com', '$2y$10$/8e0aWIVMVN4sk/NDO9ac.CEzFDMd/APG6SsPbM6h8OXMMPWox0gK', 'NPRNL', 'AGBARA', 3, NULL, 'j9EhVVvD4Qa7uBM9VaVpGeDqAodMovjcH7Xor5mjfjY4BgkqgLGqjh2U9vK6', '2017-11-16 10:53:35', '2017-11-16 10:53:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docs_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_doc_id_foreign` (`doc_id`);

--
-- Indexes for table `itemslogs`
--
ALTER TABLE `itemslogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `printlogs`
--
ALTER TABLE `printlogs`
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
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `itemslogs`
--
ALTER TABLE `itemslogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=803;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `printlogs`
--
ALTER TABLE `printlogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `docs`
--
ALTER TABLE `docs`
  ADD CONSTRAINT `docs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_doc_id_foreign` FOREIGN KEY (`doc_id`) REFERENCES `docs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
