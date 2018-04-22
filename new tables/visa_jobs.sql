-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2018 at 12:20 PM
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
-- Table structure for table `visa_jobs`
--

CREATE TABLE `visa_jobs` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `branches_id` int(11) NOT NULL,
  `this_order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_jobs`
--

INSERT INTO `visa_jobs` (`id`, `title_ar`, `title_en`, `active`, `branches_id`, `this_order`, `created_by`) VALUES
(2, 'wwwwewewe', 'wwwss', 1, 25, 0, 113),
(3, 'wwww', 'wwwsss', 1, 25, 0, 113),
(8, 'لا', 'No', 1, 48, 0, 132),
(9, 'نعم', 'Yes', 1, 48, 0, 132),
(10, 'صاحب عمل', 'co. owner', 1, 68, 1, 143),
(11, 'موظف قطاع عام ', 'Public sector employee', 1, 68, 2, 143),
(12, 'صاحب عمل', 'stack holder', 1, 61, 1, 142),
(13, 'ربة منزل', 'house keeper', 1, 68, 3, 143),
(14, 'طالب', 'student', 1, 68, 4, 143),
(15, 'مدير وشريك', 'g.magaer', 1, 61, 10, 142),
(16, 'اخصائى تسويق', 'Markting ', 1, 61, 20, 142),
(17, 'محامى', 'lawyer', 1, 61, 30, 142),
(18, 'مبيعات', 'sales', 1, 61, 40, 142),
(19, 'موظف', 'employer ', 1, 61, 50, 142),
(20, 'محاسب', 'ACCOUNTANT ', 1, 61, 60, 142),
(21, 'دكتور', 'Doctor ', 1, 61, 70, 142),
(22, 'مهندس', 'Engineer ', 1, 61, 80, 142),
(23, 'مدرس', 'Teacher ', 1, 61, 80, 142),
(24, 'مهن مرتفعة', 'high professions ', 1, 61, 90, 142),
(25, 'مهنة منخفضة', 'low professions', 1, 61, 100, 142),
(26, 'موظف قطاع خاص', 'private sector employee', 1, 68, 1, 143),
(27, 'سباك', 'Plumber', 1, 68, 3, 143),
(28, 'دكتور ', 'Doctor', 1, 68, 4, 143),
(29, 'حاصل على ليسانس او بكالريوس', 'Holds a Bachelor\'s or Bachelor\'s degree', 1, 68, 5, 143),
(30, 'مهندس', 'Engineer', 1, 68, 9, 143);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visa_jobs`
--
ALTER TABLE `visa_jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visa_jobs`
--
ALTER TABLE `visa_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
