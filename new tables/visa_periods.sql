-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2018 at 12:21 PM
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
-- Table structure for table `visa_periods`
--

CREATE TABLE `visa_periods` (
  `id` int(11) NOT NULL,
  `period_ar` varchar(150) NOT NULL,
  `period_en` varchar(255) NOT NULL,
  `branches_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_periods`
--

INSERT INTO `visa_periods` (`id`, `period_ar`, `period_en`, `branches_id`, `active`, `created_by`) VALUES
(1, '5', '', 25, 1, 113),
(3, '8', '', 25, 0, 113),
(4, '9', '', 25, 1, 113),
(5, '90 يوم', '90 Days', 48, 1, 132),
(6, '30 يوم', '30 Days', 48, 1, 132),
(7, '10 ايام', '10 Days', 48, 1, 132),
(8, '60 يوم', '60 Days', 48, 1, 132),
(9, '14 يوم ( للمهن و المؤهلات العليا فقط )', '14 Days (High Qualifications & Jobs )', 48, 1, 132),
(10, '90 يوم ( للمهن و المؤهلات العليا فقط )', '90 Days (High Qualifications & Jobs)', 48, 1, 132),
(13, 'شهر واحد', 'one month', 68, 1, 143),
(14, 'ثلاثة شهور', 'Three months', 68, 1, 143),
(16, '90 يوم', '90 days', 61, 1, 142),
(17, '14 يوم', '14 DAYS', 68, 1, 143),
(18, 'اسبوع', '1 WEEK', 68, 1, 143),
(19, '30 يوم', '30 Days ', 61, 1, 142),
(20, '14 يوم', '14 days ', 61, 1, 142),
(21, 'عدة سفرات لمدة 3 شهور', 'Several trips for 3 months', 68, 1, 143),
(22, 'سفرتين لمدة 3 شهور', 'Two trips for 3 months', 68, 1, 143),
(23, 'متعددة السفرات لمدة 6 شهور', 'Multiple trips for 6 months', 68, 1, 143),
(24, 'تأشيرة متعددة السفرات خلال عام واكثر ', 'Multiple visa travel during the year and more', 68, 1, 143),
(25, 'سفرة واحدة', 'one way travel', 68, 1, 143),
(26, 'سفرتين', 'Two trips', 68, 1, 143),
(27, 'متعددة', 'Multiple', 68, 1, 143);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visa_periods`
--
ALTER TABLE `visa_periods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visa_periods`
--
ALTER TABLE `visa_periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
