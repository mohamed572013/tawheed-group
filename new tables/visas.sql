-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2018 at 12:19 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agaza`
--

-- --------------------------------------------------------

--
-- Table structure for table `visas`
--

CREATE TABLE `visas` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` decimal(11,0) NOT NULL,
  `places_id` int(11) NOT NULL,
  `visa_jobs_id` int(11) NOT NULL,
  `visa_periods_id` int(11) NOT NULL,
  `visa_types_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `passport_status` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `branches_id` int(11) NOT NULL,
  `passport_status_msg_ar` text,
  `passport_status_msg_en` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visas`
--

INSERT INTO `visas` (`id`, `code`, `price`, `places_id`, `visa_jobs_id`, `visa_periods_id`, `visa_types_id`, `currency_id`, `passport_status`, `active`, `branches_id`, `passport_status_msg_ar`, `passport_status_msg_en`, `created_at`, `created_by`) VALUES
(165, '2', '90', 215, 12, 20, 21, 22, 0, 1, 61, '', '', '2017-09-12 12:23:16', 142),
(171, '8', '145', 215, 25, 20, 21, 22, 1, 1, 61, '', '', '2017-09-12 12:28:20', 142),
(172, '9', '155', 215, 25, 19, 21, 22, 1, 1, 61, '', '', '2017-09-12 12:28:29', 142),
(173, '10', '355', 215, 25, 16, 21, 22, 1, 1, 61, '', '', '2017-09-12 12:28:48', 142),
(174, '1', '1500', 155, 10, 13, 16, 20, 1, 1, 68, 'ww', 'www', '2017-09-23 14:10:15', 143),
(175, '2', '2000', 155, 11, 13, 16, 20, 1, 1, 68, 'تتت', 'تتت', '2017-09-23 14:11:39', 143),
(182, '7', '650', 387, 14, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 16:53:39', 143),
(183, '8', '650', 387, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', ' 251Cleopatra Portsaid', '2017-09-23 16:54:42', 143),
(184, '9', '650', 387, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra - Portsaid', '2017-09-23 16:55:10', 143),
(185, '10', '650', 387, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '  251Cleopatra - Portsaid', '2017-09-23 16:56:07', 143),
(186, '11', '875', 387, 10, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 16:58:02', 143),
(187, '12', '875', 387, 11, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 16:58:45', 143),
(188, '13', '875', 387, 13, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:00:27', 143),
(189, '14', '875', 387, 14, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:02:07', 143),
(190, '15', '1200', 387, 10, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:05:53', 143),
(191, '16', '1200', 387, 11, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:06:44', 143),
(192, '17', '1200', 387, 13, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:07:16', 143),
(193, '18', '1200', 387, 14, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:08:18', 143),
(194, '19', '1200', 387, 10, 21, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:08:55', 143),
(195, '20', '1200', 387, 13, 21, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '2017-09-23 17:10:04', 143),
(211, '35', '270', 392, 10, 17, 16, 19, 1, 1, 68, '', '', '2017-09-24 12:50:08', 143),
(212, '36', '270', 392, 11, 17, 16, 19, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 12:50:49', 143),
(221, '45', '270', 392, 13, 17, 16, 19, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 12:59:15', 143),
(228, '52', '1200', 389, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:16:47', 143),
(230, '54', '850', 388, 11, 25, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:28:05', 143),
(231, '55', '850', 388, 10, 25, 16, 20, 1, 1, 68, '', '', '2017-09-24 13:34:22', 143),
(233, '57', '1100', 388, 10, 26, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:41:25', 143),
(234, '58', '1100', 388, 11, 26, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:42:04', 143),
(236, '60', '1350', 388, 10, 23, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:44:22', 143),
(237, '61', '1900', 388, 10, 24, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:45:35', 143),
(238, '62', '1350', 388, 11, 23, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:46:37', 143),
(239, '63', '1350', 388, 13, 23, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:47:08', 143),
(240, '64', '1900', 388, 11, 24, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:50:05', 143),
(241, '65', '1900', 388, 13, 24, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2017-09-24 13:53:05', 143),
(242, '66', '1100', 388, 13, 26, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 11:50:51', 143),
(243, '67', '850', 388, 13, 25, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 11:52:27', 143),
(244, '68', '1250', 389, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 11:53:23', 143),
(245, '69', '1250', 389, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 11:54:33', 143),
(246, '70', '1900', 389, 11, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد امام كريستال عصفور ', 'Cleopatra Port Said in front of Asfour Crystal', '2018-01-28 12:00:30', 143),
(247, '71', '1900', 389, 10, 27, 16, 20, 1, 1, 68, '251 كليوباترا بورسعيد امام كريستال عصفور ', '251Cleopatra Port Said in front of Asfour Crystal', '2018-01-28 12:06:21', 143),
(249, '73', '950', 390, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:17:30', 143),
(251, '74', '950', 390, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:17:56', 143),
(252, '75', '950', 390, 10, 13, 16, 20, 1, 1, 68, '', '', '2018-01-28 12:18:34', 143),
(259, '79', '1000', 391, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:36:42', 143),
(260, '80', '1000', 391, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:36:55', 143),
(261, '81', '1000', 391, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:37:10', 143),
(266, '86', '1100', 393, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:41:28', 143),
(267, '87', '1100', 393, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:42:09', 143),
(268, '88', '1100', 393, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:42:35', 143),
(269, '89', '3450', 393, 10, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:52:29', 143),
(270, '90', '3450', 393, 11, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:53:23', 143),
(271, '91', '3450', 393, 13, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:54:07', 143),
(274, '93', '1100', 394, 13, 13, 16, 20, 1, 1, 68, '251كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:58:37', 143),
(275, '94', '1100', 394, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:58:47', 143),
(276, '95', '1100', 394, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 12:59:24', 143),
(278, '96', '700', 395, 13, 13, 16, 20, 1, 1, 68, '251كليوباترا بور سعيد', '251Cleopatra portsaid', '2018-01-28 13:04:04', 143),
(279, '97', '700', 395, 11, 13, 16, 20, 1, 1, 68, '251كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:04:33', 143),
(280, '98', '700', 395, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:05:21', 143),
(281, '99', '1000', 647, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:15:38', 143),
(282, '100', '1000', 647, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:16:39', 143),
(283, '101', '1850', 648, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:23:50', 143),
(284, '102', '1850', 648, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:24:27', 143),
(285, '103', '4400', 648, 10, 14, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:28:54', 143),
(286, '104', '4400', 648, 11, 14, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:29:21', 143),
(287, '105', '4700', 648, 13, 14, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '2018-01-28 13:30:08', 143);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visas`
--
ALTER TABLE `visas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visas`
--
ALTER TABLE `visas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
