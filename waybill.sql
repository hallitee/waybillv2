-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 02:39 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

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
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `docs`
--

INSERT INTO `docs` (`id`, `wType`, `sentDate`, `sentFrom`, `sentTo`, `vendorName`, `sentBy`, `deliveredBy`, `deliveredTo`, `deliveryDate`, `deliveryNo`, `receivedBy`, `receiveStatus`, `closeremark`, `receiveDate`, `printNo`, `reprintNo`, `printDate`, `reprintDate`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'TRANSFER', '2017-09-26 00:00:00', 'IKOYI', 'NPRNL AGBARA', NULL, 'Regina kadiri', 'Simi Dispatcher', 'Esther Olatawura', NULL, NULL, 'azeez', 'CLOSED', 'all recieved', '2017-09-26', 2, NULL, NULL, NULL, 2, '2017-09-26 20:17:14', '2017-09-26 20:25:10'),
(7, 'LOAN', '2017-09-26 00:00:00', 'ESRNL IKOYI', 'GSNL AGBARA', NULL, 'Regina kadiri', 'Azeez IT', 'Moji Luwaji', NULL, NULL, 'mojisola', 'CLOSED', NULL, '2017-09-27', 4, NULL, NULL, NULL, 2, '2017-09-26 21:32:54', '2017-09-27 19:53:49'),
(9, 'LOAN', '2017-09-27 00:00:00', 'NPRNL AGBARA', 'ESRNL AGBARA', NULL, 'Esther', 'Test', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 73, NULL, NULL, NULL, 4, '2017-09-27 19:22:45', '2017-10-17 10:49:12'),
(10, 'TRANSFER', '2017-09-27 00:00:00', 'NPRNL AGBARA', 'ESRNL AGBARA', NULL, 'Esther', 'azeez', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 4, NULL, NULL, NULL, 4, '2017-09-27 19:41:34', '2017-10-04 13:22:47'),
(11, 'TRANSFER', '2017-09-27 00:00:00', 'ESRNL AGBARA', 'ESRNL IKOYI', NULL, 'Mrs moji', 'hakeem', 'regina', NULL, NULL, NULL, 'OPEN', NULL, NULL, 2, NULL, NULL, NULL, 5, '2017-09-27 19:33:25', '2017-09-27 19:43:17'),
(12, 'TRANSFER', '2017-10-07 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Taofik Alli-Balogun', 'Simi Dispatcher', 'Esther Olatawura', NULL, NULL, 'Taofik Alli-Balogun', 'CLOSED', NULL, '2017-10-09', 1, NULL, NULL, NULL, 1, '2017-10-07 10:25:49', '2017-10-09 07:44:25'),
(13, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, 'Taofik Alli-balogun', 'CharlesDriver', 'Esther Olatawura', NULL, NULL, 'Taofik Alli-Balogun', 'CLOSED', NULL, '2017-10-09', 4, NULL, NULL, NULL, 1, '2017-10-09 08:09:28', '2017-10-17 10:50:50'),
(14, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'ESRNL AGBARA', NULL, 'Taofik Alli-balogun', 'Mr Anyanwu', 'Mojisola Luwaji', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-09 09:09:06', '2017-10-09 09:09:06'),
(15, 'TRANSFER', '2017-10-09 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 2, '2017-10-09 13:32:51', '2017-10-09 13:33:17'),
(18, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2017-10-09 13:35:32', '2017-10-09 13:35:32'),
(19, 'TRANSFER', '2017-10-09 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 2, '2017-10-09 13:35:54', '2017-10-09 13:36:06'),
(20, 'TRANSFER', '2017-10-09 00:00:00', 'PFNL IKOYI', 'PFNL AGBARA', NULL, 'Regina Kadiri', 'Simi (Dispatcher)', 'Chinedu', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 2, '2017-10-09 13:39:32', '2017-10-09 13:39:46'),
(21, 'TRANSFER', '2017-10-10 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Regina Kadiri', 'Mr Anyanwu', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(23, 'TRANSFER', '2017-10-10 00:00:00', 'ESRNL IKOYI', 'ESRNL AGBARA', NULL, 'Regina Kadiri', 'Mr. Anyanwu', 'Moji', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 2, '2017-10-10 07:46:42', '2017-10-10 07:47:37'),
(24, 'TRANSFER', '2017-10-10 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Regina Kadiri', 'Mr. Anyanwu', 'Esther', NULL, NULL, NULL, 'OPEN', NULL, NULL, 1, NULL, NULL, NULL, 2, '2017-10-10 07:56:07', '2017-10-10 07:56:15'),
(25, 'REPAIR', '2017-10-16 00:00:00', 'NPRNL IKOYI', 'NPRNL AGBARA', NULL, 'Taofik Alli-Balogun', 'My Anyanwu', 'Esther Olatawura', NULL, NULL, NULL, 'OPEN', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-16 08:07:04', '2017-10-16 08:11:52');

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
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `doc_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_desc`, `serialNo`, `qty`, `recqty`, `status`, `remark`, `doc_id`, `created_at`, `updated_at`) VALUES
(7, 'L300 N-Computing Device', '5446', 2, 2, 'working ok', 'For replacement of surung marpaung keyboard', 6, '2017-09-26 20:17:14', '2017-09-26 20:24:37'),
(8, 'Samsung monitor', 'ZTHM32837LM', 2, 2, 'working ok', 'For replacement of JOY\'S FAULTY UNIT', 6, '2017-09-26 20:17:14', '2017-09-26 20:24:37'),
(9, 'L300 N-Computing Device', 'L300K31B712495040', 1, 1, 'Working Item', 'For use to replace sstem user in GSNL,Agbara.', 7, '2017-09-26 21:32:54', '2017-09-27 19:53:49'),
(10, 'Power adapter for N-Computing', 'N/A', 1, 1, 'Working Item', 'For use to power N-Computing Device', 7, '2017-09-26 21:32:54', '2017-09-27 19:53:49'),
(13, 'CAble', 'N/A', 3, 0, 'Half', 'Just testing the app.', 9, '2017-09-27 19:22:45', '2017-09-27 19:22:45'),
(14, 'l300', 'dtdl7;drl', 14, 6, 'all working', 'to be use in EKO', 10, '2017-09-27 19:41:34', '2017-09-27 18:50:28'),
(15, 'CABLE', 'DYSZSY', 5, 4, 'good', 'use for l300', 10, '2017-09-27 19:41:34', '2017-09-27 18:50:28'),
(16, 'L300', 'DRJRKDD', 12, 5, 'NEW', 'FOR IKOYI UES TESTING', 11, '2017-09-27 19:33:25', '2017-09-27 19:47:14'),
(17, 'Samssung Monitor', 'ZZTEHJEME', 5, 5, 'NEW', 'For Weighbridge use', 12, '2017-10-07 10:25:49', '2017-10-09 07:44:25'),
(18, 'Monitor', 'GH1,GH2, GH3', 20, 20, 'GOOD', 'For stock', 13, '2017-10-09 08:09:28', '2017-10-09 09:02:44'),
(19, 'Samsung Monitor', 'HT, JU, LK, MJ', 50, 28, 'NEW', 'For HR use', 14, '2017-10-09 09:09:06', '2017-10-09 10:42:27'),
(20, 'CAT 7 Connectors', 'N/A', 100, 0, 'New', 'For CCTV Upgrade Project Use in Factory.', 15, '2017-10-09 13:32:51', '2017-10-09 13:32:51'),
(21, 'CAT 7 Connectors', 'N/A', 100, 0, 'New Items', 'For CCTV Upgrade Project Use in Factory.', 19, '2017-10-09 13:35:54', '2017-10-09 13:35:54'),
(22, 'CAT 7 Connectors', 'N/A', 100, 0, 'New Items', 'For CCTV Upgrade Project Use in Factory', 20, '2017-10-10 07:39:55', '2017-10-10 07:39:55'),
(23, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201056', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(24, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201039', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(25, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201041', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(26, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201045', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(27, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201019', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(28, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201154', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(29, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201047', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(30, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201042', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(31, 'Ubiquiti Ethernet Surge Protecctor', 'K16110201484', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(32, 'Ubiquiti Ethernet Surge Protecctor', 'K16100225382', 1, 0, 'New', 'For IT Use', 21, '2017-10-10 07:22:19', '2017-10-10 07:22:19'),
(43, 'Ubiquiti Surge Protector', 'K16110200604', 1, 0, 'New', 'For IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(44, 'Ubiquiti Surge Protector', 'K16110201048', 1, 0, 'New', 'For IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(45, 'Ubiquiti Surge Protector', 'K16110201054', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(46, 'Ubiquiti Surge Protector', 'K16110201152', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(47, 'Ubiquiti Surge Protector', 'K16110201057', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(48, 'Ubiquiti Surge Protector', 'K1610200646', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(49, 'Ubiquiti Surge Protector', 'K16110201053', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(50, 'Ubiquiti Surge Protector', 'K16110201151', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(51, 'Ubiquiti Surge Protector', 'K16110201049', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(52, 'Ubiquiti Surge Protector', 'K16110201157', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(53, 'Ubiquiti Surge Protector', 'K16110201155', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(54, 'Ubiquiti Surge Protector', 'K16110201040', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(55, 'Ubiquiti Surge Protector', 'K16110200637', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(56, 'Ubiquiti Surge Protector', 'K16110201046', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(57, 'Ubiquiti Surge Protector', 'K16100225327', 1, 0, 'New', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(58, 'PoE', 'N/A', 3, 0, 'Used', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(59, 'PoE Adapter', 'N/A', 1, 0, 'Used', 'or IT Office use', 23, '2017-10-10 07:46:42', '2017-10-10 07:46:42'),
(60, 'Ubiquiti Surge Protector', 'K16110201056', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(61, 'Ubiquiti Surge Protector', 'K16110201039', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(62, 'Ubiquiti Surge Protector', 'K16110201041', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(63, 'Ubiquiti Surge Protector', 'K16110201045', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(64, 'Ubiquiti Surge Protector', 'K16110201019', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(65, 'Ubiquiti Surge Protector', 'K16110201154', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(66, 'Ubiquiti Surge Protector', 'K16110201047', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(67, 'Ubiquiti Surge Protector', 'K16110201042', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(68, 'Ubiquiti Surge Protector', 'K16110201484', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(69, 'Ubiquiti Surge Protector', 'K16100225382', 1, 0, 'New', 'For  IT Office use', 24, '2017-10-10 07:56:07', '2017-10-10 07:56:07'),
(70, 'Keyboard', 'N/A', 20, 2, 'NEW', 'For stock at NPRNL', 25, '2017-10-16 08:07:04', '2017-10-16 08:07:58');

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
(8, 25, 70, 'Keyboard', 'N/A', 2, 'NEW', 'For stock at NPRNL', 'Taofik Alli-Balogun', 1, 'taofik.alli-balogun@natural-prime.com', '2017-10-16 08:07:58', '2017-10-16 08:07:58');

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
(8, '2017_10_07_120542_create_itemslogs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(83, 13, 'Taofik Alli-Balogun', '2017-10-17', '11:50:50', '2017-10-17 10:50:50', '2017-10-17 10:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priv` int(11) DEFAULT NULL,
  `right` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `priv`, `right`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Taofik Alli-Balogun', 'taofik.alli-balogun@natural-prime.com', '$2y$10$vjPljEY.1JnU03ug/hvgWeEYyyFPnjJEfkduVOPRUa3QKlbnxzWGC', NULL, NULL, 'nVWjBS02ccaa1JBUaiK4LX3NrmomJAlOV6aD52JBxGmpoRFXTZDSY852k35U', '2017-09-26 15:14:26', '2017-09-26 15:14:26'),
(2, 'Regina kadiri', 'regina.kadiri@natural-prime.com', '$2y$10$S6u6Le0Nr6S97VdLzYudfurVxjjUkZFCj0scOBkm7RveYQPiYNP8q', NULL, NULL, 'tdiyWXcVIrkLG4bh7k5a4xrcrcUwJDToyYGeZP43eoMu0S6QdEmtT5FV8lj5', '2017-09-26 20:11:51', '2017-09-26 20:11:51'),
(3, 'azeez', 'odufuwa.abdulazeez@natural-prime.com', '$2y$10$GjrKn2SShu3NasBES8/r0eG0kcfgavwUUK/9s6eGVIG6uiBJoY9vO', NULL, NULL, 'vXUpCqZHTMOMKVNoL2Sarr46l0J9dUaKWW9kx7hQbyib09Ca9ebpj0SUL2qM', '2017-09-26 20:23:23', '2017-09-26 20:23:23'),
(4, 'Esther', 'olatawura.esther@natural-prime.com', '$2y$10$s9ac7vTK.LB1.0Xkuw.22udq.EtwycZ4X3/0pv.mCfb1DQppUUBJ6', NULL, NULL, 'aFC6P9X3SwprMgZBTLIRGintYSMmvpGdQlnkwU85GS0OPy2Yn2UjpAy2gC9f', '2017-09-27 19:20:20', '2017-09-27 19:20:20'),
(5, 'mojisola', 'mojisola.luwaji@esrnl.com', '$2y$10$p42tWLaYH.ajdIyjcpn/5OqPiRxphaZzkGN5wGBnELcGJKI0WMvIS', NULL, NULL, NULL, '2017-09-27 19:24:30', '2017-09-27 19:24:30'),
(6, 'Mercy Agu', 'mercy.agu@esrnl.com', '$2y$10$5R2AuaKoQY7axPe0sLv/k.SwQPaWvf9KvE.V7yOh920ySXLCpPhi2', NULL, NULL, 'r1GZXozhyjkG6ISq1MurxyK77tggivfZONl2MvpL9J2Z9MtmpBXuetM6Omtg', '2017-10-10 08:11:08', '2017-10-10 08:11:08');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `itemslogs`
--
ALTER TABLE `itemslogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `printlogs`
--
ALTER TABLE `printlogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
