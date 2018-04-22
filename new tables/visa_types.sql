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
-- Table structure for table `visa_types`
--

CREATE TABLE `visa_types` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `branches_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_types`
--

INSERT INTO `visa_types` (`id`, `title_ar`, `title_en`, `branches_id`, `active`, `created_by`) VALUES
(6, 'wwww', 'wwww', 25, 1, 113),
(7, 'qwqwq', 'qwqwqw', 25, 0, 113),
(8, 'سياحية', 'Tourism', 48, 1, 132),
(10, 'زيارة', 'Visit', 48, 1, 132),
(11, 'تجارية ( مؤهل عالي أو سجل تجاري )', ')Commercial ( High Qualification Or Commercial Register', 48, 1, 132),
(12, 'رجال أعمال', 'BusinessMen', 48, 1, 132),
(13, 'تجارية ( بدون مؤهل عالي أو سجل تجاري )', ')Commercial (Without High Qualification Or Commercial Register', 48, 1, 132),
(14, 'سياحة - رجال أعمال', 'Tourism - Businessmen', 48, 1, 132),
(16, 'سياحة ', 'Tourist ', 68, 1, 143),
(18, 'عمل ', 'labour', 68, 1, 143),
(19, 'زيارة', 'visit', 68, 1, 143),
(20, 'زيارة', 'visit', 61, 1, 142),
(21, 'سياحة', 'Tourism ', 61, 1, 142);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visa_types`
--
ALTER TABLE `visa_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visa_types`
--
ALTER TABLE `visa_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
