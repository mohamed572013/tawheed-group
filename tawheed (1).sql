-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 22, 2018 at 11:44 AM
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
-- Database: `tawheed`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `url` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `image`, `country_id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'فور عمرة', '4omra', '4omra', NULL, 'images/agents/vzxenO_1518098949_6 (1).png', 1, 'http://4omra.com', '2018-02-08 14:09:09', '2018-02-08 14:09:09'),
(2, 'ماستر فيجن للحلول المتكاملة', 'Master Vision integrated solutions', 'Master Vision integrated solutions', NULL, 'images/agents/xAJ0Dc_1518098928_image001 (2).png', 1, 'http://www.mv-is.com', '2018-02-08 14:08:48', '2018-02-08 14:08:48'),
(3, 'بوابة السياحة الالكترونية', 'E-Travel Gate', 'E-Travel Gate', NULL, 'images/agents/HBO6uF_1518098895_4.png', 1, 'http://e-travelgate.com', '2018-02-08 14:08:15', '2018-02-08 14:08:15'),
(4, 'الربيع للسياحة', 'El Rabie', 'El Rabie', 'fffffffffff', 'images/agents/HZgeEJ_1518098863_8.jpg', 2, 'http://demo.com', '2018-03-26 14:36:03', '2018-03-26 12:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `created_at`, `updated_at`) VALUES
(1, 'عمرة شعبان', 'Shabaan umrah', 'عمرة شعبان', NULL, '2018-01-29 09:33:10', '2018-01-29 09:33:10'),
(2, 'عمرة المولد النبوى', 'Moled Umrah', 'عمرة المولد النبوى', NULL, '2018-01-29 09:34:30', '2018-01-29 09:34:30'),
(3, 'عمرة رمضان', 'Ramdan Umrah', 'Ramdan Umrah', 'ramadan um', '2018-03-26 15:43:42', '2018-03-26 13:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `content_ar` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `image` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keywords_ar` text NOT NULL,
  `keywords_en` text NOT NULL,
  `keywords_ur` text NOT NULL,
  `description_ar` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ur` text NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `content_fr` text NOT NULL,
  `description_fr` text NOT NULL,
  `keywords_fr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `image`, `country_id`, `created_at`, `updated_at`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`, `title_fr`, `content_fr`, `description_fr`, `keywords_fr`) VALUES
(1, 'مكة المكرمة', 'Makkah', 'مکہ', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'Makkah (Arabic ‎ Makkah   is a city in the Tihamah plain in Saudi Arabia and is also the capital and administrative headquarters of the Makkah Region.  The city is located 70 km (43 mi) inland from Jeddah in a narrow valley at a height of 277 m (909 ft) above sea level, and 340 kilometres (210 mi) south of Medina. Its resident population in 2012 was roughly 2 million, although visitors more than triple this number every year during the hajj (\"pilgrimage\") period held in the twelfth Muslim lunar month of Dhu al-Hijjah.', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'images/cities/FHFkrt_1518338759_1740900.jpg', 1, '2018-02-11 08:45:59', '2018-02-11 08:45:59', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'Makkah (Arabic ‎ Makkah   is a city in the Tihamah plain in Saudi Arabia and is also the capital and administrative headquarters of the Makkah Region.  The city is located 70 km (43 mi) inland from Jeddah in a narrow valley at a height of 277 m (909 ft) above sea level, and 340 kilometres (210 mi) south of Medina. Its resident population in 2012 was roughly 2 million, although visitors more than triple this number every year during the hajj (\"pilgrimage\") period held in the twelfth Muslim lunar month of Dhu al-Hijjah.', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'Makkah (Arabic ‎ Makkah   is a city in the Tihamah plain in Saudi Arabia and is also the capital and administrative headquarters of the Makkah Region.  The city is located 70 km (43 mi) inland from Jeddah in a narrow valley at a height of 277 m (909 ft) above sea level, and 340 kilometres (210 mi) south of Medina. Its resident population in 2012 was roughly 2 million, although visitors more than triple this number every year during the hajj (\"pilgrimage\") period held in the twelfth Muslim lunar month of Dhu al-Hijjah.', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', NULL, '', '', ''),
(2, 'المدينة المنورة', 'Madina El Monawara', 'مدینہ', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام<br />\r\nوثاني أقدس الأماكن لدى المسلمين بعد مكة. <br />\r\nهي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية،<br />\r\n تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'is a city and administrative headquarters of the Al-Madinah Region of Saudi Arabia. At the city\'s heart is al-Masjid an-Nabawi (\"the Prophet\'s Mosque\"), which is the burial place of the Islamic prophet Muhammad, and is the second-holiest city in Islam after Mecca.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'images/cities/8tIUBR_1518338741_المدينة-المنورة.jpg', 1, '2018-02-13 10:07:55', '2018-02-13 10:07:55', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'is a city and administrative headquarters of the Al-Madinah Region of Saudi Arabia. At the city\'s heart is al-Masjid an-Nabawi (\"the Prophet\'s Mosque\"), which is the burial place of the Islamic prophet Muhammad, and is the second-holiest city in Islam after Mecca.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'is a city and administrative headquarters of the Al-Madinah Region of Saudi Arabia. At the city\'s heart is al-Masjid an-Nabawi (\"the Prophet\'s Mosque\"), which is the burial place of the Islamic prophet Muhammad, and is the second-holiest city in Islam after Mecca.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `created_at`, `updated_at`) VALUES
(1, 'المملكة العربية السعودية', 'Kingdom of Saudi Arabia', 'سعودی عرب کا دورہ', NULL, '2018-01-16 13:07:54', '2018-01-16 13:07:54'),
(2, 'مصر', 'Egypt', 'مصر', NULL, '2018-02-08 14:16:45', '2018-02-08 14:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `sign` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `sign`, `price`, `created_at`, `updated_at`) VALUES
(1, 'الدولار الأمريكى', 'Dollar', 'الدولار الأمريكى', NULL, '$', 1, '2018-01-29 09:09:47', '2018-01-29 09:09:47'),
(3, 'جنية إسترلينى', 'Pound Sterling', 'جنية إسترلينى', NULL, '£', 5, '2018-02-18 14:33:41', '2018-02-18 14:33:41'),
(4, 'ريال سعودي', 'Saudi Riyale', 'SAR', NULL, 'SR', 1, '2018-02-13 10:21:21', '2018-02-13 10:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dates_programs`
--

CREATE TABLE `dates_programs` (
  `date_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designs`
--

CREATE TABLE `designs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_id` int(11) NOT NULL,
  `makka_hotel` varchar(255) NOT NULL,
  `makka_nights` int(11) NOT NULL,
  `madina_hotel` varchar(255) NOT NULL,
  `modina_nights` int(11) NOT NULL,
  `going_from` varchar(255) NOT NULL,
  `going_to` varchar(255) NOT NULL,
  `departing_from` varchar(255) NOT NULL,
  `departing_to` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designs_flight`
--

CREATE TABLE `designs_flight` (
  `id` int(11) NOT NULL,
  `umra_id` int(11) NOT NULL,
  `departure_city` varchar(255) NOT NULL,
  `arrival_city` varchar(255) NOT NULL,
  `back_from` varchar(255) NOT NULL,
  `back_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designs_rooms`
--

CREATE TABLE `designs_rooms` (
  `id` int(11) NOT NULL,
  `design_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `infants` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `designs_services`
--

CREATE TABLE `designs_services` (
  `design_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `image`, `created_at`, `updated_at`) VALUES
(1, 'واي فاي', 'Wifi', 'واي فاي', NULL, 'images/features/KNW3Fe_1518335910_download.png', '2018-02-11 07:58:30', '2018-02-11 07:58:30'),
(2, 'مسجد', 'Masjed', 'مسجد', NULL, 'images/features/icYoYc_1518335901_mosque_318-124899.jpg', '2018-02-11 07:58:21', '2018-02-11 07:58:21'),
(3, 'ممنوع التدخين', 'No smoking', 'ممنوع التدخين', 'ne smoking', 'images/features/iWa30s_1518335891_661206_max.jpg', '2018-03-26 15:30:14', '2018-03-26 13:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `image`, `created_at`, `updated_at`) VALUES
(2, 'ألمدينة المنورة', 'El Madina monawra', 'El Madina monawra', NULL, 'images/gallery/WS0C4r_1518099307_فنادق-المدينة-المنورة.jpg', '2018-02-08 14:15:07', '2018-02-08 14:15:07'),
(3, 'المسجد النبوي', 'Mosque', 'Mosque', NULL, 'images/gallery/GNLRzM_1518099294_المدينة-المنورة.jpg', '2018-02-08 14:14:54', '2018-02-08 14:14:54'),
(4, 'مكة المكرمة', 'Mecca', 'Mecca', NULL, 'images/gallery/Ew0zQf_1518099232_قنديل-الكعبة.jpg', '2018-02-08 14:13:52', '2018-02-08 14:13:52'),
(5, 'الحج', 'HAjj', 'Hajj', NULL, 'images/gallery/S0pmj0_1518099207_الكعبة2.jpg', '2018-02-08 14:13:27', '2018-02-08 14:13:27'),
(7, 'باب و كسوة الكعبة', 'Mecca', 'Mecca', NULL, 'images/gallery/kwxUQ2_1518099169_باب_وكسوة_الكعبة.jpg', '2018-02-08 14:12:49', '2018-02-08 14:12:49'),
(8, 'مكة المكرمة', 'Mecca', 'Mecca', NULL, 'images/gallery/u0eoPO_1518099111_14528.jpg', '2018-02-08 14:11:51', '2018-02-08 14:11:51'),
(9, 'المسجد النبوي', 'Mosque', 'Mosque', NULL, 'images/gallery/qDzZXl_1518099090_timthumb.jpg', '2018-02-08 14:11:30', '2018-02-08 14:11:30'),
(11, 'الكعبة المشرفة', 'Kaaba Mecca', 'kaaba Mecca', NULL, 'images/gallery/5ZyfZU_1518099000_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', '2018-02-08 14:10:00', '2018-02-08 14:10:00'),
(13, 'غار حراء', 'Hiraa cave', 'غار حراء', 'gggggg', 'images/gallery/wPuy9u_1518595180_5-28-12.jpg', '2018-03-26 14:39:39', '2018-03-26 12:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `hotelreservations`
--

CREATE TABLE `hotelreservations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `notes` text,
  `hotel_id` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `adults` varchar(255) NOT NULL,
  `number_of_rooms` varchar(255) NOT NULL,
  `children` varchar(255) NOT NULL,
  `infants` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotelreservations`
--

INSERT INTO `hotelreservations` (`id`, `name`, `email`, `phone`, `notes`, `hotel_id`, `start_date`, `end_date`, `room_type`, `adults`, `number_of_rooms`, `children`, `infants`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test@test.com', '343434344', 'sdfxfsdfs', 5, '2018-02-01', '2018-02-28', '[\"2\",\"1\"]', '[\"2\",null]', '[\"2\",null]', '[\"1\",\"0\"]', '[\"0\",\"0\"]', '2018-02-05 13:30:16', '2018-02-05 13:30:16'),
(4, 'test', 'test@test.com', '343434344', 'sdfxfsdfs', 5, '2018-02-01', '2018-02-28', '[\"2\",\"1\"]', '[\"2\",null]', '[\"2\",null]', '[\"1\",\"0\"]', '[\"0\",\"0\"]', '2018-02-05 13:30:16', '2018-02-05 13:30:16'),
(5, 'test', 'test@test.com', '3434343433', 'cccccccccccccccc', 7, '2018-02-28', '2018-03-03', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-02-11 08:06:44', '2018-02-11 08:06:44'),
(6, 'test', 'test@test.com', '33333333333333333', '22222222222222222', 7, '2018-02-28', '2018-03-02', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-02-11 09:28:23', '2018-02-11 09:28:23'),
(7, 'test', 'test@test.com', '1233123', NULL, 3, '2018-02-21', '2018-02-28', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-02-13 10:11:58', '2018-02-13 10:11:58'),
(8, 'test', 'test@test.com', '4545454', 'zzzzzzzzzzzzzzzzzzzzzzz', 7, '2018-02-28', '2018-03-01', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-02-14 09:00:33', '2018-02-14 09:00:33'),
(9, 'test', 'test@test.com', '4545454', 'ooooooooooooooo', 5, '2018-02-28', '2018-02-21', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-02-14 09:09:10', '2018-02-14 09:09:10'),
(10, 'test', 'test@test.com', '55656556', 'test', 7, '2018-02-28', '2018-03-08', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-02-18 12:02:29', '2018-02-18 12:02:29'),
(11, 'test', 'test@test.com', '4545454', 'test', 6, '2018-02-28', '2018-03-08', '[\"1\",\"rooms\"]', '[\"1\",null]', '[\"1\",null]', '[\"0\",\"0\"]', '[\"0\",\"0\"]', '2018-02-18 12:10:00', '2018-02-18 12:10:00'),
(12, 'test', 'test@test.com', '6666666666666', NULL, 7, '2018-02-21', '2018-02-28', '[\"2\"]', '[\"2\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-02-20 13:17:32', '2018-02-20 13:17:32'),
(13, 'test', 'test@test.com', '4545454', 'test', 7, '05/03/2018', '01/05/2018', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '2018-03-05 12:34:34', '2018-03-05 12:34:34'),
(14, 'AHMED MURSI', 'gmtravelbooigonline@gmail,co', '502328654', NULL, 7, '04/03/2018', '07/03/2018', '[\"1\",\"1\"]', '[\"1\",\"1\"]', '[\"1\",\"1\"]', '[\"0\",\"0\"]', '[\"0\",\"0\"]', '2018-03-05 14:26:49', '2018-03-05 14:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `content_ar` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `keywords_ar` text NOT NULL,
  `keywords_en` text NOT NULL,
  `keywords_ur` text NOT NULL,
  `description_ar` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ur` text NOT NULL,
  `image` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `features` text,
  `distance_from_the_haram` varchar(255) DEFAULT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title_fr` varchar(255) DEFAULT NULL,
  `content_fr` text NOT NULL,
  `description_fr` text NOT NULL,
  `keywords_fr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`, `image`, `country_id`, `city_id`, `features`, `distance_from_the_haram`, `stars`, `created_at`, `updated_at`, `title_fr`, `content_fr`, `description_fr`, `keywords_fr`) VALUES
(3, 'قصر مكة رافلز', 'Raffles Makkah Palace', 'Raffles Makkah Palace', 'يقع قصر مكة رافلز في مجمع أبراج البيت الراقي، ويوفر إطلالات على المسجد الحرام والكعبة، ويتميز بأجنحة واسعة مع إطلالات بانورامية وخدمة الخادم الشخصي على مدار 24 ساعة، ويبعد مكان الإقامة مسافة 50 متر فقط من برج الساعة في مكة، ويمكن للضيوف الاستمتاع بخدمة الواي فاي مجانًا في جميع أنحاء الفندق.<br />\r\n<br />\r\nتتميز جميع الأجنحة الكبيرة والمكيفة بديكور فاخر مع أرضيات رخامية وسجاد شرقي، وتضم جميعها غرفة معيشة كبيرة وحمام خاص.<br />\r\n<br />\r\nيضم قصر مكة رافلز مطعمين مختلفين يقدمان تشكيلة كبيرة من المأكولات، كما يتوفر في الفندق استراحة شاي ومقهى للمثلجات، ويقدم مطعم Levantine Al Majlis للمأكولات الراقية تجربة تناول الطعام مع لمسة مطبخ البحر المتوسط التقليدي، ويوفر التراس إطلالة على المسجد الحرام والكعبة.<br />\r\n<br />\r\nيمكن للضيوف الاسترخاء في السبا الهادئ في قصر مكة أو ممارسة التمارين الرياضية في الجيم المنفصل للرجال والسيدات، ويضم الفندق العديد من الأماكن الخاصة حيث يمكن للضيوف الاستمتاع بقراءة كتاب في هدوء أو التواصل مع ضيوف آخرين.<br />\r\n<br />\r\nيبعد مطار جدة الدولي ما يزيد قليلًا عن ساعة واحدة فقط بالسيارة، ويقع المدخل الجنوبي للمسجد الحرام مباشرة على الجانب الآخر من الشارع من الفندق.', 'Featuring free WiFi, a restaurant and a terrace, Raffles Makkah Palace offers accommodations in Mecca. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEvery room has a flat-screen TV with satellite channels. Certain rooms include a sitting area for your convenience. You will find a coffee machine in the room. The rooms come with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nThere is a 24-hour front desk, an ATM and a gift shop at the property.<br />\r\n<br />\r\nMadhbah Isma`Il is 4.3 km from Raffles Makkah Palace, and Al Jamrah al Wusta is 4.3 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from Raffles Makkah Palace. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Mecca! Guests are happier about it compared to other properties in the area.', 'Featuring free WiFi, a restaurant and a terrace, Raffles Makkah Palace offers accommodations in Mecca. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEvery room has a flat-screen TV with satellite channels. Certain rooms include a sitting area for your convenience. You will find a coffee machine in the room. The rooms come with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nThere is a 24-hour front desk, an ATM and a gift shop at the property.<br />\r\n<br />\r\nMadhbah Isma`Il is 4.3 km from Raffles Makkah Palace, and Al Jamrah al Wusta is 4.3 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from Raffles Makkah Palace. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Mecca! Guests are happier about it compared to other properties in the area.', 'قصر مكة رافلز', 'Raffles Makkah Palace', 'Raffles Makkah Palace', 'قصر مكة رافلز', 'Raffles Makkah Palace', 'Raffles Makkah Palace', 'images/gallery/kwxUQ2_1518099169_باب_وكسوة_الكعبة.jpg', 1, 1, '[\"1\",\"2\",\"3\"]', '20 M', 5, '2018-04-18 08:05:20', '2018-02-19 13:10:09', NULL, '', '', ''),
(4, 'فندق ساعة مكة فيرمونت', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'يقع هذا الفندق الفاخر الذي يتألف من 76 طابق على بعد 100 متر فقط من المسجد الحرام، وداخل برج ساعة مكة المكرمة، ويعتبر واحداً من أطول المباني في العالم. ويضم مركز للياقة البدنية مجهز بالكامل وحوض استحمام ساخن وساونا وغرفة بخار. ويقدم خدمات الكونسيرج على مدار الساعة.<br />\r\n<br />\r\nتحتوي جميع الوحدات في فندق ساعة مكة فيرمونت على تلفزيون إل سي دي وحمام داخلي فسيح مع حوض استحمام. كما تتمتع الغرف بإطلالات على الكعبة المشرفة والحرم والمدينة المقدسة.<br />\r\n<br />\r\nيضم فندق ساعة مكة فيرمونت 9 أماكن أكثر حداثة لتناول الطعام، تشمل Bharat ذو الطابع الهندي واستراحة Al Dar اللبنانية ومطعم Al Dira على السطح. كما يقدم الفندق قائمة خدمات شاملة للغرف على مدار الساع', 'Located in Mecca, 4.3 km from Madhbah Isma`Il, Makkah Clock Royal Tower, A Fairmont Hotel features a restaurant and free WiFi throughout the property. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nCertain accommodations feature a sitting area to relax in after a busy day. Every room is fitted with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries. A flat-screen TV is featured.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. Al Jamrah al Wusta is 4.3 km from Makkah Clock Royal Tower, and Al Mash‘ar al Haram is 9.7 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.', 'Located in Mecca, 4.3 km from Madhbah Isma`Il, Makkah Clock Royal Tower, A Fairmont Hotel features a restaurant and free WiFi throughout the property. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nCertain accommodations feature a sitting area to relax in after a busy day. Every room is fitted with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries. A flat-screen TV is featured.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. Al Jamrah al Wusta is 4.3 km from Makkah Clock Royal Tower, and Al Mash‘ar al Haram is 9.7 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.', 'فندق ساعة مكة فيرمونت', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'فندق ساعة مكة فيرمونت', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'images/sightseeing/UwZY6O_1518338720_f512242b0ba24800b4a9ec0108837b40.jpg', 1, 1, '[\"1\",\"2\",\"3\"]', '200 M', 5, '2018-04-18 08:05:31', '2018-02-19 13:08:57', NULL, '', '', ''),
(5, 'فندق أنوار المدينة موڤنبيك', 'Anwar Al Madinah Mövenpick', 'Anwar Al Madinah Mövenpick', 'يوفر فندق أنوار المدينة موفنبيك المصنف 5 نجوم مكان إقامة أنيق يقع على مسافة تقل عن 5 دقائق سيراً من المسجد النبوي الشريف، ويتميز الفندق بـ4 مطاعم في الموقع، ويتوفر استخدام الواي فاي مجاناً في جميع الغرف.<br />\r\n<br />\r\nتتميز الغرف المكيفة والأنيقة في فندق أنوار المدينة موفنبيك بأنها واسعة وعصرية، وتأتي مع ثلاجة ومكتب للعمل وتلفزيون بقنوات فضائية بالإضافة إلى حمام داخلي.<br />\r\n<br />\r\nيقع فندق أنوار المدينة موفنبيك في موقع مميز في قلب منطقة التسوق في المدينة ويتصل بمركز التسوق، ويقع أيضاً على بعد 4 كم فقط من جبل أحد وعلى بعد 3 كم من سوق التمور في المدينة المنورة.<br />\r\n<br />\r\nيوفر فندق أنوار المدينة موفنبيك خدمات غسيل الملابس والتنظيف الجاف، كما يبعد مسافة 16 كم من مطار الأمير محمد بن عبد العزيز الدولي.', 'Featuring free WiFi and a restaurant, Anwar Al Madinah Mövenpick offers accommodations in Medina. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEach room comes with a flat-screen TV with satellite channels. Certain accommodations include a sitting area where you can relax. You will find a kettle in the room. All rooms are fitted with a private bathroom fitted with a bathtub or shower. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe nearest airport is Prince Mohammed Airport, 12.9 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.', 'Featuring free WiFi and a restaurant, Anwar Al Madinah Mövenpick offers accommodations in Medina. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEach room comes with a flat-screen TV with satellite channels. Certain accommodations include a sitting area where you can relax. You will find a kettle in the room. All rooms are fitted with a private bathroom fitted with a bathtub or shower. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe nearest airport is Prince Mohammed Airport, 12.9 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.', 'فندق أنوار المدينة موڤنبيك', 'Anwar Al Madinah Mövenpick', 'Anwar Al Madinah Mövenpick', 'فندق أنوار المدينة موڤنبيك', 'Anwar Al Madinah Mövenpick', 'Anwar Al Madinah Mövenpick', 'images/hotels/ef3x4f_1518451867_islam_introduccion.jpg', 1, 2, '[\"1\",\"2\",\"3\"]', '100 M', 5, '2018-02-19 13:08:44', '2018-02-19 13:08:44', NULL, '', '', ''),
(6, 'بولمان زمزم المدينة', 'Pullman Zamzam Madina', 'Pullman Zamzam Madina', 'قع بولمان زمزم المدينة في المدينة المقدسة في المدينة المنورة وعلى بعد 150 متر فقط من باب السلام من المسجد النبوي ويوفر خدمة الواي فاي مجاناً في جميع أنحاء الفندق بأكمله.<br />\r\n<br />\r\nتمزج جميع الغرف والأجنحة والتي يبلغ عددها 835 بين الحداثة العربية والأناقة الفرنسية، وتتميز جميعها بأنها مكيفة وتوفر خدمة الواي فاي مجاناً وجهاز تلفزيون بشاشة مسطحة ومرافق صنع الشاي/القهوة، وتحتوي بعض الغرف على منطقة جلوس وسرير أريكة، كما تشمل الحمامات على دش.<br />\r\n<br />\r\nيضم مكان الإقامة 4 مطاعم فريدة مثل Acacia الذي يقدم المأكولات العالمية للإفطار والغداء والعشاء طوال اليوم، كما يتميز Al Mandara بتقديم قائمة مأكولات ومأكولات شرقية تخصصية على وجبة الغداء أو العشاء.', 'Pullman Zamzam Madina offers accommodations in Medina. Guests can enjoy the on-site restaurant. Free private parking is available on site.<br />\r\n<br />\r\nSome accommodations include a sitting area where you can relax. A TV is featured.<br />\r\n<br />\r\nThere is a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. The nearest airport is Prince Mohammed Airport, 14.5 km from Pullman Zamzam Madina. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Medina! Guests are happier about it compared to other properties in the area.', 'Pullman Zamzam Madina offers accommodations in Medina. Guests can enjoy the on-site restaurant. Free private parking is available on site.<br />\r\n<br />\r\nSome accommodations include a sitting area where you can relax. A TV is featured.<br />\r\n<br />\r\nThere is a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. The nearest airport is Prince Mohammed Airport, 14.5 km from Pullman Zamzam Madina. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Medina! Guests are happier about it compared to other properties in the area.', 'بولمان زمزم المدينة', 'Pullman Zamzam Madina', 'Pullman Zamzam Madina', 'بولمان زمزم المدينة', 'Pullman Zamzam Madina', 'Pullman Zamzam Madina', 'images/sightseeing/UwZY6O_1518338720_f512242b0ba24800b4a9ec0108837b40.jpg', 1, 2, '[\"1\",\"2\",\"3\"]', NULL, 5, '2018-04-18 08:05:43', '2018-02-12 16:10:51', NULL, '', '', ''),
(7, 'إيلاف المشاعر', 'Elaf Al Mashaer', 'Elaf Al Mashaer', 'يوفِّر فندق إيلاف المشاعر غُرفاً لغير المدخنين مع خدمة الواي فاي المجانية والمعجنات الطازجة في صالة اللوبي. يقع الفندق على طريق أجياد على بعد أكثر بقليل من 400 متر من المسجد الحرام.<br />\r\n<br />\r\nتم تزيين جميع الغرف المكيّفة بألوان ناعمة ومحايدة، وتحتوي على كرسي مريح ومكتب عمل في منطقة المعيشة. بالإضافة إلى جهاز تلفزيون ذي شاشة مسطحة وجهاز صنع الشاي/ القهوة وميني بار مجهز جيداً.<br />\r\n<br />\r\nيتم تقديم الأطباق المحلية مثل الخبز العربي والحساء الحار والمأكولات العالمية في مطعم \"المُلتَزِم\". يُطِلُّ مقهى \"المَقام\" على شارع أجياد، ويقدم وجبات الإفطار والغداء والعشاء.<br />\r\n<br />\r\nيقع فندق إيلاف المشاعر على بعد 90 كيلومتر من مطار جِدّة الدولي. ويبعد مسافة 5 دقائق بالسيارة عن الجمرة الوسطى.', 'Elaf Al Mashaer features non-smoking rooms with free Wi-Fi and fresh pastries in its lobby lounge. On Ajyad Road, the hotel is just over a quarter mile from the Al-Masjid al-Ḥarām.<br />\r\n<br />\r\nAll air-conditioned rooms are decorated in soft, neutral colors and feature an armchair and work desk in the living area. Each room has a flat-screen TV, a tea / coffee maker and well-stocked minibar.<br />\r\n<br />\r\nRegional dishes such as Arabic bread, spicy stews and international cuisine are served in Al Multazim restaurant. Al Maqam Coffee Shop overlooks Ajyad Street and is open for breakfast, lunch and dinner.<br />\r\n<br />\r\nHotel Elaf Al Mashaer is 90.1 km from Jeddah international Airport. Al Jamrah al Wusţá is a 5-minute drive away.', 'Elaf Al Mashaer', 'فندق إيلاف المشاعر', 'Elaf Al Mashaer', 'Elaf Al Mashaer', 'فندق إيلاف المشاعر', 'Elaf Al Mashaer', 'Elaf Al Mashaer', 'images/hotels/NUTOlt_1518336180_57566766.jpg', 1, 1, '[\"1\",\"2\",\"3\"]', '50 m', 5, '2018-02-19 13:08:08', '2018-02-19 13:08:08', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotelsliders`
--

CREATE TABLE `hotelsliders` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotelsliders`
--

INSERT INTO `hotelsliders` (`id`, `image`, `hotel_id`, `created_at`, `updated_at`) VALUES
(1, 'images/hotels/images/FZVxfP_1517225363_Exotic-Raja-Ampat.jpg', 1, '2018-01-29 09:29:23', '2018-01-29 09:29:23'),
(2, 'images/hotels/images/pHH37k_1517225363_hat_sky_beach_sand_sea_mood_summer_ocean_model_1920x1200.jpg', 1, '2018-01-29 09:29:23', '2018-01-29 09:29:23'),
(3, 'images/hotels/images/5FCoX5_1517225363_Hotel_Malvivy_pool_interior_ocean_sea_houses_buildings_sky_sunset_800x600.jpg', 1, '2018-01-29 09:29:23', '2018-01-29 09:29:23'),
(4, 'images/hotels/images/1bPqXj_1517225363_khashayar_khastoui_Australia_Gold_Coast_hotels_resort_world_cities_architecture_buildings_skyscrapers_hdr_roads_bridges_window_lights_neon_sign_marina_bay_harbor_beaches_waves_sand_seascape_landscape_ocean_sea_sky_clouds_.jpg', 1, '2018-01-29 09:29:23', '2018-01-29 09:29:23'),
(29, 'images/hotels/images/b9bOAe_1518100061_1740900.jpg', 6, '2018-02-08 14:27:41', '2018-02-08 14:27:41'),
(30, 'images/hotels/images/iRfrzn_1518100061_67361658.jpg', 6, '2018-02-08 14:27:41', '2018-02-08 14:27:41'),
(31, 'images/hotels/images/GNoMWE_1518100061_68163283.jpg', 6, '2018-02-08 14:27:41', '2018-02-08 14:27:41'),
(32, 'images/hotels/images/meIe3L_1518100061_68163561.jpg', 6, '2018-02-08 14:27:41', '2018-02-08 14:27:41'),
(33, 'images/hotels/images/JUq9hA_1518336294_45271.jpg', 7, '2018-02-11 08:04:54', '2018-02-11 08:04:54'),
(34, 'images/hotels/images/8vvX1L_1518336294_5946663.jpg', 7, '2018-02-11 08:04:54', '2018-02-11 08:04:54'),
(35, 'images/hotels/images/iRjEwW_1518336295_57566766.jpg', 7, '2018-02-11 08:04:55', '2018-02-11 08:04:55'),
(36, 'images/hotels/images/9wuG81_1518336295_68527496.jpg', 7, '2018-02-11 08:04:55', '2018-02-11 08:04:55'),
(38, 'images/hotels/images/5xlo6T_1518336295_68527497.jpg', 7, '2018-02-11 08:04:55', '2018-02-11 08:04:55'),
(39, 'images/hotels/images/cp8TcZ_1518452180_14918.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(40, 'images/hotels/images/sZzwYx_1518452180_5909831.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(41, 'images/hotels/images/Ba9k6x_1518452180_48437136.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(42, 'images/hotels/images/ePsaGy_1518452180_66537741.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(43, 'images/hotels/images/IZ0XfQ_1518452180_66537763.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(44, 'images/hotels/images/pk8PMD_1518452180_66537984.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(45, 'images/hotels/images/yzrn74_1518452180_66537994.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(46, 'images/hotels/images/HTSy1d_1518452180_72652518.jpg', 5, '2018-02-12 16:16:20', '2018-02-12 16:16:20'),
(47, 'images/hotels/images/W0qd7i_1518452256_7558304.jpg', 4, '2018-02-12 16:17:36', '2018-02-12 16:17:36'),
(48, 'images/hotels/images/QHRWgf_1518452256_18912599.jpg', 4, '2018-02-12 16:17:36', '2018-02-12 16:17:36'),
(49, 'images/hotels/images/dDc9rw_1518452256_18912636.jpg', 4, '2018-02-12 16:17:36', '2018-02-12 16:17:36'),
(50, 'images/hotels/images/7Ihw8v_1518452256_24592801.jpg', 4, '2018-02-12 16:17:36', '2018-02-12 16:17:36'),
(51, 'images/hotels/images/jZw7Yz_1518452256_62964256.jpg', 4, '2018-02-12 16:17:36', '2018-02-12 16:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `hotels_programs`
--

CREATE TABLE `hotels_programs` (
  `hotel_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hotels_rooms`
--

CREATE TABLE `hotels_rooms` (
  `id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels_rooms`
--

INSERT INTO `hotels_rooms` (`id`, `meal_id`, `room_id`, `currency_id`, `hotel_id`, `start_date`, `end_date`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 1, '2018-02-02', '2018-02-03', 5000, '2018-02-13 08:57:41', '2018-01-29 09:31:56'),
(2, 1, 1, 4, 6, '2018-03-05', '2018-04-30', 15240, '2018-03-05 12:28:31', '2018-03-05 12:28:31'),
(3, 2, 2, 4, 5, '2018-04-01', '2018-05-30', 500, '2018-03-05 12:29:00', '2018-03-05 12:29:00'),
(4, 1, 3, 4, 5, '2018-04-01', '2018-05-31', 560, '2018-03-05 12:29:14', '2018-03-05 12:29:14'),
(5, 2, 2, 4, 5, '2018-02-28', '2018-03-31', 5600, '2018-02-13 08:57:53', '2018-02-05 09:54:09'),
(6, 2, 1, 4, 4, '2018-04-01', '2018-06-01', 15400, '2018-03-05 12:29:47', '2018-03-05 12:29:47'),
(7, 2, 2, 1, 4, '2018-05-01', '2018-06-02', 340, '2018-03-05 12:29:59', '2018-03-05 12:29:59'),
(8, 3, 2, 1, 3, '2018-04-01', '2018-06-01', 653, '2018-03-05 12:30:30', '2018-03-05 12:30:30'),
(9, 3, 2, 3, 3, '2018-04-01', '2018-06-02', 470, '2018-03-05 12:30:46', '2018-03-05 12:30:46'),
(10, 2, 1, 4, 3, '2018-04-01', '2018-06-29', 45112, '2018-03-05 12:30:59', '2018-03-05 12:30:59'),
(11, 1, 1, 4, 7, '2018-03-05', '2018-05-01', 100, '2018-03-05 14:38:47', '2018-03-05 14:38:47'),
(12, 1, 1, 4, 7, '2018-05-02', '2018-07-04', 100, '2018-03-05 13:47:46', '2018-03-05 13:47:46'),
(13, 1, 2, 4, 3, '2018-04-01', '2018-06-29', 2000, '2018-03-18 14:19:21', '2018-03-18 14:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `make_your_umrah`
--

CREATE TABLE `make_your_umrah` (
  `id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `makka_hotel` varchar(255) NOT NULL,
  `makka_nights` int(11) NOT NULL,
  `madina_hotel` varchar(255) NOT NULL,
  `madina_nights` int(11) NOT NULL,
  `services` text NOT NULL,
  `rooms` text NOT NULL,
  `number_of_rooms` text NOT NULL,
  `number_of_adults` text NOT NULL,
  `number_of_children` text NOT NULL,
  `number_of_infants` text NOT NULL,
  `meals` text,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `notes` text,
  `type` tinyint(1) NOT NULL,
  `makka_arrive` varchar(255) DEFAULT NULL,
  `madina_arrive` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `make_your_umrah`
--

INSERT INTO `make_your_umrah` (`id`, `season_id`, `makka_hotel`, `makka_nights`, `madina_hotel`, `madina_nights`, `services`, `rooms`, `number_of_rooms`, `number_of_adults`, `number_of_children`, `number_of_infants`, `meals`, `name`, `email`, `phone`, `notes`, `type`, `makka_arrive`, `madina_arrive`, `created_at`, `updated_at`) VALUES
(1, 1, 'فندق مكة', 10, 'فندق المدينة', 12, '[\"2\",\"3\"]', '[\"1\"]', '[\"2\"]', '[\"2\"]', '[\"0\"]', '[\"0\"]', NULL, 'محمود هشام جبر', 'mhmudhsham8@gmail.com', '01063855615', 'ملاحظات', 0, NULL, '', '2018-01-29 10:57:13', '2018-01-29 10:57:13'),
(2, 2, 'فندق مكة', 3, 'فندق المدينة', 5, '[\"1\"]', '[\"3\"]', '[\"1\"]', '[\"3\"]', '[null]', '[null]', NULL, 'Mahmoud Gabr', 'mhmudhsham8@gmail.com', '01063855615', 'سيبيبسييسب', 0, NULL, '', '2018-01-29 11:01:53', '2018-01-29 11:01:53'),
(3, 2, 'dddddd', 3, 'fffffffff', 2, '[\"1\",\"2\",\"3\"]', '[\"1\"]', '[\"2\"]', '[\"2\"]', '[null]', '[null]', NULL, 'vdcbgd', 'mhmudhsham8@gmail.com', '01063855615', 'dfgfdfdg', 0, NULL, '', '2018-01-29 11:29:18', '2018-01-29 11:29:18'),
(4, 1, 'dfsdfsdf', 3, 'vcbcbvb', 3, '[\"2\",\"3\"]', '[\"1\"]', '[\"3\"]', '[\"3\"]', '[\"3\"]', '[\"3\"]', NULL, 'fdxgfdg', 'dfgdfg', '4556456456', 'fdgfdgfdgfdg', 1, NULL, '', '2018-01-29 13:33:26', '2018-01-29 13:33:26'),
(5, 1, 'sdfsdf', 3, 'fxdffdg', 2, 'null', '[\"1\",\"2\"]', '[\"2\",\"2\"]', '[\"2\",\"4\"]', '[\"0\",\"0\"]', '[\"0\",\"0\"]', NULL, 'gdhfghfgh', NULL, '01063855615', NULL, 0, NULL, '', '2018-01-30 07:17:47', '2018-01-30 07:17:47'),
(6, 1, 'bbb', 6, 'fffffffff', 14, '[\"1\",\"2\"]', '[\"1\",\"2\"]', '[\"3\",\"2\"]', '[\"3\",\"3\"]', '[\"1\",\"2\"]', '[\"0\",\"0\"]', NULL, 'test', 'test@test.com', '4444444444444444', 'cccccccccc', 0, NULL, '', '2018-02-05 13:25:56', '2018-02-05 13:25:56'),
(7, 1, 'ايلاف', 4, 'فيرمونت', 5, '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '[\"0\",\"0\"]', '[\"0\",\"0\"]', NULL, 'test', 'test@test.com', '33333333333333', 'rrrrrrrrrrrrrrr', 0, NULL, '', '2018-02-11 08:40:18', '2018-02-11 08:40:18'),
(8, 1, 'sssssssssssssssss', 2, 'sssssssssssssssssss', 2, '[\"1\",\"2\",\"3\"]', '[\"1\"]', '[\"2\"]', '[\"2\"]', '[\"0\"]', '[\"0\"]', '[\"1\"]', 'Mahmoud Gabr', 'mhmudhsham8@gmail.com', '1242456756756', 'fddfgfghfghgh', 0, '2018-02-15', '2018-02-17', '2018-02-14 10:43:34', '2018-02-14 10:43:34'),
(9, 1, 'test', 5, 'test', 5, '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '[\"1\"]', 'test', 'test@test.com', '33434343434', 'test', 0, '2018-02-28', '2018-03-05', '2018-02-18 11:38:34', '2018-02-18 11:38:34'),
(10, 1, 'test', 5, 'test', 5, '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '[\"0\",\"0\"]', '[\"0\",\"0\"]', '[\"1\",\"3\"]', 'test', 'test@test.com', '4444444444444444', 'test', 0, '2018-02-21', '2018-02-28', '2018-02-19 13:32:24', '2018-02-19 13:32:24'),
(11, 2, 'aaaa', 1, 'ddddd', 1, 'null', '[\"3\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"2\"]', 'ramadanabdo', 'admin@admin.com', '222221', 'ddddddddd', 0, '2018-04-20', '2018-04-28', '2018-04-14 11:52:19', '2018-04-14 11:52:19'),
(12, 1, 'rrrr', 1, '1wwwww', 1, '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', 'ramadanabdo', 'admin@admin.com', '11111111', 'wwwwwwwww', 0, '2018-04-27', '2018-04-27', '2018-04-14 12:19:34', '2018-04-14 12:19:34'),
(13, 3, 'dfffffff', 1, 'eeeeeee', 1, '[\"2\"]', '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"2\"]', 'rrre', 'ramadan_abdo08@yahoo.com', '22222', 'dddddddddd', 0, '2018-05-03', '2018-05-04', '2018-04-14 12:22:00', '2018-04-14 12:22:00'),
(14, 2, 'ddddd', 1, 'sssss', 1, '[\"2\"]', '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"2\"]', 'sgsggssddd', 'ramadan_abdo08@yahoo.com', '22222', 'wwwwwwww', 0, '2018-04-18', '2018-04-28', '2018-04-14 12:23:59', '2018-04-14 12:23:59'),
(15, 1, 'eee', 1, '1', 1, '[\"2\"]', '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', 'f', 'admin@admin.com', '222222222', 'ddddddddd', 0, '2018-04-20', '2018-04-28', '2018-04-15 14:03:01', '2018-04-15 14:03:01'),
(16, 1, 'rrrr', 1, 'fffffff', 1, '[\"2\"]', '[\"1\",\"2\"]', '[\"1\",\"1\"]', '[\"1\",\"1\"]', '[\"1\",\"1\"]', '[\"1\",\"1\"]', '[\"1\",\"2\"]', 'sgsggssddd', 'admin@admin.com', '22222222', 'ddddddddddd', 0, '2018-05-05', '2018-05-11', '2018-04-19 07:08:12', '2018-04-19 07:08:12'),
(17, 2, 'sdffd', 1, 'fffffff', 1, '[\"2\"]', '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"2\"]', 'sssssssss', 'sssssss', 'ssssssssss', 'sssssssss', 0, '2018-05-04', '2018-05-04', '2018-04-19 11:39:46', '2018-04-19 11:39:46'),
(18, 1, 'sdffd', 1, 'fffffff', 1, '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', 'sgsggss', 'admin@admin.com', '11111111', 'sssssss', 0, '2018-05-04', '2018-05-05', '2018-04-19 11:41:45', '2018-04-19 11:41:45'),
(19, 1, 'sdffd', 1, 'fffffff', 1, '[\"2\"]', '[\"3\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', 'sgsggssddd', 'admin@admin', '11111', 'wswww', 0, '2018-05-05', '2018-05-05', '2018-04-19 11:54:34', '2018-04-19 11:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `created_at`, `updated_at`) VALUES
(1, 'إفطار', 'breakfast', 'إفطار', NULL, '2018-01-29 09:25:26', '2018-01-29 09:25:26'),
(2, 'افطار و عشاء', 'Breakfast and dinner', 'Breakfast and dinner', NULL, '2018-02-05 09:41:25', '2018-02-05 09:41:25'),
(3, 'كامل الوجبات شرق اسيا', 'All meals East Asian', 'All meals East Asian', 'fffffffffff', '2018-03-26 15:27:39', '2018-03-26 13:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '0182722', '$2y$10$YIg93ML6ulRlwdP5Q746euVcvaLDmWJULUmhejD.0fL2RBwTLSHQq', 'INyenPytHtGdy2i0NEcMv6GvyaicxibzPnKFhOscffSdkn93pfgOkH0uF01p', '2018-04-16 10:10:17', '2018-04-16 10:10:17'),
(2, 'ramadan', 'ramadanabd0@hdhd.ckd', '222222222', '$2y$10$g/AzOnE5u4mV2XM20482T.wubjjTu6S92NxjZi6yEegcT4ZvbBQQe', 'WBHIrC0TuWSW3lXYVB56XC8GUOFhQovnOl34Qg7HWePIrzb2aQ3EMek9g6lA', '2018-04-17 08:09:12', '2018-04-17 08:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Mahmoud Gabr', 'admin@admin.com', 'شئئئئئئئئئئ', 'sdfdsfdsf', '2018-02-04 12:29:43', '2018-02-04 12:29:43'),
(2, 'Mahmoud Gabr', 'admin@admin.com', 'شئئئئئئئئئئ', 'sdfdsfdsf', '2018-02-04 12:31:11', '2018-02-04 12:31:11'),
(3, 'Mahmoud Gabr', 'admin@admin.com', 'شئئئئئئئئئئ', 'sdfdsfdsf', '2018-02-04 12:31:43', '2018-02-04 12:31:43'),
(4, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:33:27', '2018-02-04 12:33:27'),
(5, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:35:02', '2018-02-04 12:35:02'),
(6, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:35:09', '2018-02-04 12:35:09'),
(7, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:35:32', '2018-02-04 12:35:32'),
(8, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:35:47', '2018-02-04 12:35:47'),
(9, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:36:46', '2018-02-04 12:36:46'),
(10, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:37:16', '2018-02-04 12:37:16'),
(11, 'Mahmoud Gabr', 'dina@mvegypt.com', 'شئئئئئئئئئئ', 'dsfsdfsdfsdf', '2018-02-04 12:37:30', '2018-02-04 12:37:30'),
(12, 'Mahmoud Gabr', 'mhmudhsham8@gmail.com', 'شئئئئئئئئئئ', 'sadsadasdsadasd', '2018-02-04 12:38:09', '2018-02-04 12:38:09'),
(13, 'Mahmoud Gabr', 'mhmudhsham8@gmail.com', 'شئئئئئئئئئئ', 'sadsadasdsadasd', '2018-02-04 12:38:14', '2018-02-04 12:38:14'),
(14, 'Mahmoud Gabr', 'mhmudhsham8@gmail.com', 'شئئئئئئئئئئ', 'sadsadasdsadasd', '2018-02-04 12:38:22', '2018-02-04 12:38:22'),
(15, 'Mahmoud Gabr', 'mhmudhsham8@gmail.com', 'شئئئئئئئئئئ', 'sadsadasdsadasd', '2018-02-04 12:38:24', '2018-02-04 12:38:24'),
(16, 'sdfsdfsdfs', 'mhmudhsham8@gmail.com', 'sdfsdsdfsdf', 'sdfsdfsdf', '2018-02-04 12:39:02', '2018-02-04 12:39:02'),
(17, 'sdfsdfsdfs', 'mhmudhsham8@gmail.com', 'sdfsdsdfsdf', 'sdfsdfsdf', '2018-02-04 12:39:28', '2018-02-04 12:39:28'),
(18, 'test', 'test@test.com', 'فففففففففففف', 'ففففففففففففف', '2018-02-05 13:39:27', '2018-02-05 13:39:27'),
(19, 'test', 'test@test.com', 'فففففففففففف', 'ففففففففففففف', '2018-02-05 13:39:31', '2018-02-05 13:39:31'),
(20, 'test', 'test@test.com', 'فففففففففففف', 'ففففففففففففف', '2018-02-05 13:39:34', '2018-02-05 13:39:34'),
(21, 'test', 'test@test.com', 'فففففففففففف', 'ففففففففففففف', '2018-02-05 13:39:35', '2018-02-05 13:39:35'),
(22, 'test', 'test@test.com', 'فففففففففففف', 'ففففففففففففف', '2018-02-05 13:39:35', '2018-02-05 13:39:35'),
(23, 'test', 'test@test.com', 'test', 'test', '2018-02-11 08:52:13', '2018-02-11 08:52:13'),
(24, 'test', 'test@test.com', 'test', 'test', '2018-02-11 08:52:17', '2018-02-11 08:52:17'),
(25, 'test', 'test@test.com', 'test', 'test', '2018-02-14 08:21:50', '2018-02-14 08:21:50'),
(26, 'test', 'test@test.com', 'test', 'ttest', '2018-02-18 11:39:49', '2018-02-18 11:39:49'),
(27, 'dddd', 'eeeeeeee@eee.com', 'eeeeeeeeeeee', 'eeeeeeeeeeee', '2018-04-11 07:52:05', '2018-04-11 07:52:05'),
(28, 'ramadanabdo', 'admin@admin.com', 'ffffffff', 'sssss', '2018-04-14 11:35:04', '2018-04-14 11:35:04'),
(29, 'ramadanabdo', 'admin@admin.com', 'eeeeeeee', 'ddddddddd', '2018-04-19 11:49:46', '2018-04-19 11:49:46');

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
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2018_04_16_091118_create_members_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `created_at`, `updated_at`) VALUES
(1, 'مصرى', 'Egyption', 'مصرى', NULL, '2018-01-29 09:11:59', '2018-01-29 09:11:59'),
(2, 'سعودى', 'Suadi', 'سعودى', NULL, '2018-01-29 09:12:12', '2018-01-29 09:12:12'),
(3, 'باكستاني', 'Pakistani', 'Pakistani', 'ff', '2018-03-26 14:17:08', '2018-03-26 12:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `content_ar` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `keywords_ar` text NOT NULL,
  `keywords_en` text NOT NULL,
  `keywords_ur` text NOT NULL,
  `description_ar` text NOT NULL,
  `description_en` text NOT NULL,
  `description_ur` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title_fr` varchar(255) DEFAULT NULL,
  `content_fr` text,
  `description_fr` text,
  `keywords_fr` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`, `image`, `created_at`, `updated_at`, `title_fr`, `content_fr`, `description_fr`, `keywords_fr`) VALUES
(1, 'خطوات أداء العمرة', 'Umrah guide', 'خبر 1', 'الإحرام\r\nيعتبر الإحرام نيّة الدّخول في رحلة العمرة، ومن المحبّب أن يتلفّظ المسلم المعتمر بقول ( لبّيك عمرة لبّيك عمرة ) وذلك عند إحرامه. يُحرم الرّجل في ملابس الإحرام وهي مكوّنة من إزار ورداء من غير المخيط، ويستحبّ أن يكون لونهما أبيضاً، وإذافة إلى ذلك يعتبر الاغتسال والطّيب والتنظّف من السنن المحبّب اتّباعها قبل الإحرام، وعلى المعتمر أن يقول بعد الإحرام: \" لبّيك اللهم لبّيك، لبّيك لا شريك لك لبّيك، إنّ الحمد والنّعمة لك والملك لا شريك لك\". أمّا المرأة فليس لها لباسٌ محدّد للإحرام كما يعتقد البعض، ولكن لا يجوز لها لبس القفّازين أو ارتداء النّقاب كما بيّن النبيّ عليه الصّلاة السلام حيث قال: (لا تنتقب المحرمة ولا تلبس القفّازين).\r\n\r\n\r\n\r\nالطواف\r\nيتكوّن الطّواف من سبعة أشواط على مدار الكعبة؛ حيث يبدأ كلّ شوط من هذه الأشواط من أمام الحجر الأسود، وينتهي عند ذلك الحجر، أمّا الكعبة فتكون على يسار المعتمر أثناء مرحلة الطّواف، كما أنّه يسنّ للمعتمر أن يقوم بمسارعة المشي مع تقارب الخطوات، ويكون ذلك في الأشواط الثلاثة الأولى تحديداً. الصّلاة عند المقام من السنّة للشّخص المعتمر عندما يتوجّه للصّلاة في المقام أن يبدأ بتلاوة قوله تعالى \"واتّخذوا من مقام إبراهيم مصلى\"، ومن السنّة كذلك أن يصلّي المعتمر ركعتين بعد إتمامه طوافه، ويستطيع بعد الصلاة أن يشرب من ماء زمزم ويلمس الحجر الأسود .\r\n\r\n\r\n\r\nالسعي\r\nويكون السّعي عبارةً عن سبعة أشواط، تبدأ عند الصفا وتنتهي عند المروة، كما أنّه من السنّة النبويّة الشّريفة أن يقول المعتمر عندما يقترب من الصّفا \"إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللَّهِ فَمَنْ حَجَّ الْبَيْتَ أَوْ اعْتَمَرَ فَلَا جُنَاحَ عَلَيْهِ أَنْ يَطَّوَّفَ بِهِمَا وَمَنْ تَطَوَّعَ خَيْرًا فَإِنَّ اللَّهَ شَاكِرٌ عَلِيمٌ\" وذلك في بداية الشّوط الأول. وإن وصل المعتمر الصّفا يرى الكعبة فيرفع يديه للدعاء ويقول: \" الله أكبر الله أكبر الله أكبر، لا إله إلا الله وحده لا شريك له له الملك وله الحمد وهو على كل شيء قدير، لا إله إلا الله وحده لا شريك له أنجز وعده ونصر عبده وهزم الأحزاب وحده\"\r\n\r\nحلق شعر الرأس أو تقصيره\r\nيعتبر الحلق أو التّقصير من واجبات العمرة إلّا أن الحلق أفضل من التّقصير وذلك للرّجل، أمّا المرأة فليس شرطاً عليها أن تقصّر شعرها، ولا يجوز لها الحلق.', 'Before passing the Meeqat  (the place where the Umrah starts, and one enters the state of Ihram\r\n Men to get changed into their Ihram (2 pieces of white cloth), preferably after one of the 5 daily prayers\r\n Make niyyah (intention) for Umrah\r\nMake the Talbiyah \r\nEntering Masjid Al Haram ‐ (in Makkah, Saudia Arabia)\r\n Enter with your right foot\r\n Make duaa of the Masjid\r\nTawaf (7 rounds around the Ka\'bah) ‐ You must be in Wudu (ablution)\r\nAfter Completing Tawaf, proceed to Maqaam‐e Ibraaheem ‐ (Prophet Ibraaheem\'s station)', 'Before passing the Meeqat  (the place where the Umrah starts, and one enters the state of Ihram\r\n Men to get changed into their Ihram (2 pieces of white cloth), preferably after one of the 5 daily prayers\r\n Make niyyah (intention) for Umrah\r\nMake the Talbiyah \r\nEntering Masjid Al Haram ‐ (in Makkah, Saudia Arabia)\r\n Enter with your right foot\r\n Make duaa of the Masjid\r\nTawaf (7 rounds around the Ka\'bah) ‐ You must be in Wudu (ablution)\r\nAfter Completing Tawaf, proceed to Maqaam‐e Ibraaheem ‐ (Prophet Ibraaheem\'s station)', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'images/news/HlqltU_1518099753_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', '2018-02-08 14:22:33', '2018-02-08 14:22:33', NULL, NULL, NULL, NULL),
(2, 'كيفية أداء مناسك الحج', 'How to Perform Hajj', 'How to Perform Hajj', 'كيفية أداء مناسك الحج\r\n       \r\nالحج\r\nبُني الإسلام على خمس فرائض: شهادة أن لا إله إلا الله وأنّ مُحمّداً رسول الله، وإقامة الصّلاة، وإيتاء الزّكاة، وصوم رمضان، وحجّ بيت الله الحرام لمن استطاع إليه سبيلاً. والحج فرض على كلّ مُسلم قادر، والقدرة تعني القدرة الجسديّة والماليّة، وأن يكون الحاجّ آمن على أهله في غيابه وهي فريضة لمرّة واحدة على المسلم، وما زاد عن هذه المرّة فهو تطوّع منه. وقد فُرِضَ الحج منذ عهد النبيّ إبراهيم عليه السّلام بعد أن أتمّ بناء الكعبة هو وولده إسماعيل عليهما السّلام بناءً على أمر الله تعالى. يحجّ المسلمون إلى بيت الله الحرام في أول ذي الحجّة، بحيث تكون وقفة عرفة في اليوم التّاسع، ويتحلّلون في اليوم العاشر وينحرون الإبل والأغنام.\r\n\r\n\r\nمناسك الحج\r\nُمكن للمسلم أن يؤدّي الحج باتّباع ما يأتي بالتّرتيب: تبدأ مناسك الحج بالخروج من البيت بنيّة الحج، وذلك لحديث الرّسول عليه الصّلاة والسّلام: (إنما الأعمالُ بالنياتِ، وإنما لكلِّ امرئٍ ما نوى، فمن كانت هجرتُه إلى دنيا يصيُبها، أو إلى امرأةٍ ينكحها، فهجرتُه إلى ما هاجر إليه).\r\n\r\n\r\n\r\nيبدأ الحجّ بالإحرام عند حدود الميقات، ويكون بارتداء لباسٍ بسيط يتكوّن من ردائين غير مخيطين للرجل، وللمرأة ما تشاء أن ترتدي دون زينة أو تبرّج. والمواقيت نوعان: مواقيت زمنية ومكانيّة؛ فالميقات الزمانيّ هو وقت الحج لقوله تعالى في كتابه العزيز: (الْحَجُّ أَشْهُرٌ مَّعْلُومَاتٌ)،\r\n\r\n\r\n\r\nاتّجاه الحاج إلى مكّة بعد الاستحمام أو الوضوء. دخول الحرم والبدء بالطّواف حول الكعبة سبعة أشواط، حيث يبدأ كلّ شوط منها بالحجر الأسود ويكون على يسار الحاج، ويجب على الحاجّ أن يستلم الحجر الأسود بكل شوط بالتّقبيل، أو أن يشير إليه من مكانه إذا عجز عن الوصول. وينبغي على الطّائف أن يتحاشى إيذاء من هم بجاوره من الحُجّاج بالمُزاحمة، أو الدّفع باليد وما شابه حتّى لا ينتقص من ثوابه شيء. السعي بعد الطّواف بين الصّفا والمروة سبع مرات؛ والصفا والمروة هما جبلان بمكّة تأسِّياً بسعي هاجر زوجة إبراهيم عليه السلام وأم إسماعيل عليه السّلام بينهما في القصّة الشّهيرة بحثاً عن الماء، وقد ورد أمر السّعي واضحاً في المجموع بأنّ الرّسول عليه الصّلاة والسّلام استقبل القبلة في السّعي، وقال كما جاء في الحديث الشّريف: (يا أيها الناسُ، اسْعَوا! فإن السعْيَ قد كُتِبَ عليكُم).\r\n\r\n\r\n\r\nالتوجّه إلى مِنى، وهو مكان يبعد عن مكّة بثلاثة أميال، وهو المكان الذي تُرمى به الجمرات- بعد طواف القدوم في الثّامن من ذي الحجّة. الانطلاق إلى عرفة في التّاسع من ذي الحجّة، وجمع صلاتَي الظّهر والعصر لقول الرّسول عليه الصّلاة والسّلام: (الحجُّ عرفةُ، فمن أدرك ليلةَ عرفةَ قبل طلوعِ الفجرِ من ليلةِ جُمَعٍ فقد تمَّ حجُّه).\r\n\r\nلنّزول من عرفة إلى المُزدلفة -وهو وادٍ بين عرفة ومِنى، يبعد مسافة ميلين عن مِنى في جهة الشّرق- و يكون ذلك في ليلة العاشر من ذي الحجّة، ويتمّ جمع صلاتَي المغرب والعشاء، وبيات الليل هناك. التوجّه إلى مِنى في العاشر من ذي الحجّة ورمي الجمرات (جمرة العقبة). نحر الأضاحي في مِنى وحلق الرّأس. الذّهاب إلى مكّة للقيام بطواف الزّيارة في العاشر من ذي الحجّة بعد حلق الرّأس، ثمّ العودة إلى مِنى، كذلك يُمكن للحاج أن يقوم بالسّعي بين الصّفا والمروة إن فاته سعي اليوم الثّامن من ذي الحجّة. القيام بمِنى في يوميّ الحادي عشر والثاني عشر من ذي الحجّة، ورمي الجمرات الثّلاث بالتّرتيب: الجمرة الأولى، والجمرة الوسطى، وجمرة العقبة، والتي تقع بالقرب من مسجد الخَيْف. يمكن للحاج العودة مرّة أخرى إلى مكة والطّواف حول الكعبة الشّريفة فيما يُعرف بطواف الوداع والارتواء من ماء زمزم. نصائح للحُجّاج من الأمور التي تهمّ المسلم ليعرفها أثناء الحج فيلتزم بها ما يأتي:\r\n\r\nيعود المسلم بعد الحج خالياً من الذّنوب، إلا ما ارتبط بحقوق العباد، فلا بدّ للمسلم أن يلتزم بالفرائض ويبتعد عن الذّنوب ما استطاع؛ طمعاً ببداية جديدة بعيدةً عن الذّنوب. الابتعاد عن المُحرّمات في فترة الحج، وذلك لما ورد في القرآن الكريم: (فَمَنْ فَرَضَ فِيهِنَّ الْحَجَّ فَلا رَفَثَ وَلا فُسُوقَ وَلا جِدَالَ فِي الْحَجِّ).[٤] تجنّب أذى الآخرين، جسديّاً ولفظيّاً أو المساس بمشاعرهم. تجنّب مُفسدات الحج، كالتطيُّب، ولبس المخيط للرجال، والتّعدي على الحيوانات أو الطّيور بالصّيد، أو الاقتراب من الشّهوات، أو تغطية الوجه للمرأة.', 'The Hajj (pilgrimage to Mecca) is one of the five pillars of Islam, the obligations that all Muslims must uphold. Every adult Muslim (male or female) who has the physical and financial means is required to travel to Mecca to perform the Hajj once in his or her lifetime. In Mecca, Muslims from all over the world gather in a display of faith, unity, and solidarity by recreating the ritual that the Prophet Muhammad (peace and blessings of Allah be upon him) \r\nperformed in his last pilgrimage.\r\n\r\nBe sure you are ready to perform the Hajj. The Hajj is not to be undertaken lightly or as an afterthought. In ancient times, it was not uncommon for pilgrims to die during their journey to Mecca. Though modern conveniences now allow millions of Muslims to quickly and safely travel to and from the holy city, the Hajj should still be approached with the seriousness and dedication of these early pilgrims. Study the rituals of the Hajj, begin to clear your mind of worldly distractions, and, most importantly, be repentant for past sins, which will be forgiven during your pilgrimage.\r\nAs with all forms of Muslim worship, the Hajj must be undertaken with sincerity and out of a devotion to God (Allah). The Hajj cannot be performed for the purpose of gaining worldly recognition or material gains in this life.[1]\r\nThe Hajj must be performed in accordance with the Prophet Muhammad\'s words and deeds (peace and blessings of Allah be upon him) as described in the Sunnah.[2]', 'How to Perform Hajj', 'كيفية أداء مناسك الحج', 'How to Perform Hajj', 'How to Perform Hajj', 'كيفية أداء مناسك الحج', 'How to Perform Hajj', 'sHow to Perform Hajj', 'images/news/7j20hv_1518099706_islam_introduccion.jpg', '2018-02-08 14:21:46', '2018-02-08 14:21:46', NULL, NULL, NULL, NULL),
(3, 'شروط العمرة', 'RULES FOR UMRAH', 'RULES FOR UMRAH', 'تمثل شروط العمرة في: <br />\r\nالبلوغ.<br />\r\n الإسلام، <br />\r\nأي أن يكون الفرد معتنق الديانة الإسلامية ويؤمن بالله عز وجل.<br />\r\n العقل.<br />\r\n الحرية<br />\r\n. الاستطاعة في أدائها.<br />\r\nواجبات العمرة من ترك واجبات العمرة عليه دم وهي كالآتي: <br />\r\nالإحرام من الميقات.<br />\r\n الحلق أو التقصير.', 'RULES FOR UMRAH<br />\r\n<br />\r\nUmrah is Sunnat Mu\'akidah: Umrah is neither imperative (Fard) nor obligatory (wajib), but performing Umrah once in a life time is Sunnat Mu\'akidah. However, once or more than once, whenever it is performed, it fetches great rewards.<br />\r\nNo Fixed Time: There is no fixed month, day or time for Umrah as it is for Hajj. As said earlier, it can be performed any time one desires.<br />\r\nThe Miqat for Umarh: The station of Ihram (Miqat) for Umrah is Hill for the residents of the Haram of Mecca and the people of Hill. As mentioned later, the area between the five appointed Miqats of Hajj and the bounds of the Haram of Mecca is called Hill. The Afaqis (outsiders) who come to Mecca for Hajj and Umrah should already be in Ihram before entering into Mecca. However, for subsequent Umrahs, even they have to go to Hill to put on Ihram. For this purpose, buses outside Bab Abdul Aziz of al-Haram take pilgrims to Masjid Aai\'sha which is in Hill on Madinah Road at Tan\'eem, not far from Mecca.<br />\r\nThe Rites of Umrah: The only rites of Umrah are:<br />\r\nEntering the state of Ihram<br />\r\nTawaf of Ka\'bah<br />\r\nSa\'yee between the hills of Safa and Marwah<br />\r\nShaving or clipping of the hair', 'Umrah is Sunnat Mu\'akidah: Umrah is neither imperative (Fard) nor obligatory (wajib), but performing Umrah once in a life time is Sunnat Mu\'akidah. However, once or more than once, whenever it is performed, it fetches great rewards.<br />\r\nNo Fixed Time: There is no fixed month, day or time for Umrah as it is for Hajj. As said earlier, it can be performed any time one desires.<br />\r\nThe Miqat for Umarh: The station of Ihram (Miqat) for Umrah is Hill for the residents of the Haram of Mecca and the people of Hill. As mentioned later, the area between the five appointed Miqats of Hajj and the bounds of the Haram of Mecca is called Hill. The Afaqis (outsiders) who come to Mecca for Hajj and Umrah should already be in Ihram before entering into Mecca. However, for subsequent Umrahs, even they have to go to Hill to put on Ihram. For this purpose, buses outside Bab Abdul Aziz of al-Haram take pilgrims to Masjid Aai\'sha which is in Hill on Madinah Road at Tan\'eem, not far from Mecca.<br />\r\nThe Rites of Umrah: The only rites of Umrah are:<br />\r\nEntering the state of Ihram<br />\r\nTawaf of Ka\'bah<br />\r\nSa\'yee between the hills of Safa and Marwah', 'شروط العمرة', 'xx', 'xx', 'شروط العمرة', 'xx', 'xx', 'images/news/gzkoHp_1518335212_1740900.jpg', '2018-03-26 15:01:54', '2018-03-26 13:01:54', 'hhhhhhhhh', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'عمرة اونلاين', 'Umrah online', 'Umrah online', NULL, 'images/partners/9UdqlR_1518000211_3.png', 'http://www.3omra-online.com', '2018-02-07 10:43:31', '2018-02-07 10:43:31'),
(2, 'ماستر فيجن للحلول المتكاملة', 'Master Vision integrated solutions', 'Master Vision integrated solutions', NULL, 'images/partners/LlFr9F_1518000095_image001 (2).png', 'http://www.mv-is.com', '2018-02-07 10:41:35', '2018-02-07 10:41:35'),
(3, 'بوابة السياحة الالكترونية', 'E-Travel Gate', 'E-Travel Gate', NULL, 'images/partners/PnLXwR_1518000059_4.png', 'http://e-travelgate.com', '2018-02-07 10:40:59', '2018-02-07 10:40:59'),
(4, 'فور عمرة', '4omra', '4omra', NULL, 'images/partners/IKjhsk_1518000030_6 (1).png', 'http://www.4omra.com/ar', '2018-02-07 10:40:30', '2018-02-07 10:40:30'),
(5, 'جاز تورز', 'Gaz Tours', 'Gaz Tours', NULL, 'images/partners/vVYcyl_1518000014_^1F6F6C3CCB727707963C350894EFE95B2313610CD0180BACEC^pimgpsh_fullsize_distr.jpg', 'http://www.demo.com', '2018-02-07 10:40:14', '2018-02-07 10:40:14'),
(6, 'الوسام للسياحة', 'El wesam Tours', 'El wesam', 'dddddddd', 'images/partners/o5ekiI_1518000002_^3EA9F11EA6BB885AED93F50FA57828CD6833E188FB79E839C3^pimgpsh_fullsize_distr.png', 'http://www.demo.com', '2018-03-26 14:28:27', '2018-03-26 12:28:27');

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
-- Table structure for table `programdates`
--

CREATE TABLE `programdates` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `nationality_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programdates`
--

INSERT INTO `programdates` (`id`, `program_id`, `nationality_id`, `currency_id`, `price`, `start_date`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 3, 2000, '2018-05-04', '2018-04-16 10:18:05', '2018-03-05 13:38:00'),
(2, 1, 1, 1, 6000, '2018-05-28', '2018-04-16 10:22:10', '2018-02-05 10:41:53'),
(3, 1, 2, 1, 5000, '2018-05-21', '2018-04-16 10:22:15', '2018-03-05 13:38:21'),
(4, 2, 2, 4, 6000, '2018-07-01', '2018-04-11 13:14:22', '2018-03-05 13:37:50'),
(5, 2, 2, 1, 5000, '2018-04-01', '2018-03-05 13:37:36', '2018-03-05 13:37:36'),
(6, 3, 1, 4, 6767, '2018-02-28', '2018-02-13 08:56:46', '2018-02-05 13:44:12'),
(7, 4, 1, 4, 5656, '2018-03-29', '2018-03-05 13:36:50', '2018-03-05 13:36:50'),
(8, 4, 3, 4, 5690, '2018-03-28', '2018-02-18 12:12:36', '2018-02-18 12:12:36'),
(10, 6, 2, 4, 5600, '2018-04-30', '2018-03-05 13:36:11', '2018-03-05 13:36:11'),
(11, 4, 2, 4, 500, '2018-04-30', '2018-03-05 13:36:36', '2018-03-05 13:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `programreservations`
--

CREATE TABLE `programreservations` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `date_id` varchar(255) NOT NULL,
  `nationality_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `notes` text,
  `room_type` varchar(255) DEFAULT NULL,
  `number_of_rooms` varchar(255) NOT NULL,
  `adults` varchar(255) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `infants` varchar(255) DEFAULT NULL,
  `meals` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programreservations`
--

INSERT INTO `programreservations` (`id`, `program_id`, `date_id`, `nationality_id`, `name`, `email`, `phone`, `notes`, `room_type`, `number_of_rooms`, `adults`, `children`, `infants`, `meals`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 1, 'xcvxvxcv', NULL, '01063855615', 'ghfgh', '[\"1\"]', '[\"1\"]', '[\"1\"]', 'null', '[\"0\"]', NULL, '2018-02-01 07:17:45', '2018-02-01 07:17:45'),
(2, 1, '1', 1, 'xcvxvxcv', NULL, '01063855615', 'ghfgh', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', NULL, '2018-02-01 07:21:12', '2018-02-01 07:21:12'),
(3, 1, '1', 1, 'xcvxvxcv', NULL, '01063855615', 'ghfgh', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', NULL, '2018-02-01 07:21:38', '2018-02-01 07:21:38'),
(4, 1, '1', 1, 'xfcsdfsdf', NULL, '45345345345', 'fdgdfg', '[\"1\",\"2\"]', '[\"3\",\"3\"]', '[\"3\",\"3\"]', '[\"0\",\"0\"]', '[\"0\",\"0\"]', NULL, '2018-02-01 07:41:43', '2018-02-01 07:41:43'),
(5, 1, '1', 1, 'fdgdfg', NULL, '01063855615', NULL, '[\"1\"]', '[\"2\"]', '[\"2\"]', '[\"0\"]', '[\"0\"]', NULL, '2018-02-01 07:43:06', '2018-02-01 07:43:06'),
(6, 4, '2018-02-28', 1, 'test', 'test@test.com', '4444444444444444', 'rrrrrrrrrrrrrrrrrrrrrrrrrrr', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', NULL, '2018-02-11 08:53:46', '2018-02-11 08:53:46'),
(7, 1, '2018-02-28', 2, 'test', 'test@test.com', '4545454', 'ssssss', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '[\"1\"]', '2018-02-14 08:54:32', '2018-02-14 08:54:32'),
(8, 1, '2018-02-28', 2, 'test', 'test@test.com', '4545454', 'yttttttttttttttttt', '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '[\"1\"]', '2018-02-14 09:07:39', '2018-02-14 09:07:39'),
(9, 4, '2018-04-30', 2, 'ramadanabdo', 'admin@admin.com', '1', 'ssssssssss', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '[\"1\"]', '2018-04-14 11:39:35', '2018-04-14 11:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `content_ar` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `keywords_ar` text,
  `keywords_en` text,
  `keywords_ur` text,
  `description_ar` text,
  `description_en` text,
  `description_ur` text,
  `image` text NOT NULL,
  `stars` int(11) NOT NULL,
  `nights` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` text,
  `hotel_id` text,
  `services` text,
  `transportation_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title_fr` varchar(255) DEFAULT NULL,
  `content_fr` text,
  `description_fr` text,
  `keywords_fr` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`, `image`, `stars`, `nights`, `category_id`, `country_id`, `city_id`, `hotel_id`, `services`, `transportation_id`, `created_at`, `updated_at`, `title_fr`, `content_fr`, `description_fr`, `keywords_fr`) VALUES
(1, 'عمرة شعبان', 'Shabaan Umrah', 'Shabaan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'Shabaan Umrah', 'Shabaan Umrah', 'عمرة شعبان', 'Shabaan Umrah', 'Shabaan Umrah', 'عمرة شعبان', 'Shabaan Umrah', 'Shabaan Umrah', 'images/programs/9Suvpv_1518452416_الحرم-المكي-الشريف-1.jpg', 4, '[\"8\",\"9\"]', 1, 1, '[\"1\",\"2\"]', '[\"3\",\"6\"]', '[\"1\",\"2\",\"3\"]', 4, '2018-04-19 12:40:36', '2018-02-15 14:54:12', NULL, NULL, NULL, NULL),
(2, 'عمرة رمضان', 'Ramdan Umrah', 'Ramdan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'Ramdan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'عمرة المولد النبوي الشريف', 'Ramdan Umrah', 'Ramdan Umrah', 'عمرة المولد النبوي الشريف', 'Ramdan Umrah', 'Ramdan Umrah', 'images/programs/30MGYz_1518452395_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', 5, '[\"7\",\"8\"]', 3, 1, '[\"1\"]', '[\"3\",\"6\"]', '[\"1\",\"2\",\"3\"]', 2, '2018-04-11 15:06:13', '2018-02-12 16:19:55', NULL, NULL, NULL, NULL),
(4, 'عمرة المولد النبوي الشريف', 'shabaan Umrah', 'عمرة المولد النبوي الشريف', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'shabaan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'عمرة المولد النبوي الشريف', 'shabaan Umrah', 'عمرة المولد النبوي الشريف', 'عمرة المولد النبوي الشريف', 'shabaan Umrah', 'عمرة المولد النبوي الشريف', 'images/programs/FDKpif_1518337134_1740900.jpg', 5, '[\"5\",\"5\"]', 2, 1, '[\"1\",\"2\"]', '[\"3\",\"5\"]', '[\"1\",\"2\",\"3\"]', 2, '2018-04-11 15:06:18', '2018-02-12 14:37:28', NULL, NULL, NULL, NULL),
(6, 'عمرة نصف شعبان', 'ٍShabaan Umrah', 'عمرة نصف شعبان', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'ٍShabaan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'عمرة نصف شعبان', 'ٍShabaan Umrah', 'عمرة نصف شعبان', 'عمرة نصف شعبان', 'ٍShabaan Umrah', 'عمرة نصف شعبان', 'images/programs/7OZGRU_1518955199_20160818132135.jpg', 5, '[\"5\",\"6\"]', 1, 1, '[\"2\"]', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\",\"3\"]', 2, '2018-04-11 15:06:29', '2018-02-18 11:59:59', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `programservices`
--

CREATE TABLE `programservices` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programservices`
--

INSERT INTO `programservices` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `image`, `created_at`, `updated_at`) VALUES
(1, 'واي فاي', 'Wifi', 'واي فاي', NULL, 'images/programservices/BHENBu_1518337104_download.png', '2018-02-11 08:18:24', '2018-02-11 08:18:24'),
(2, 'مسجد', 'Mosque', 'مسجد', NULL, 'images/programservices/VIrkpo_1518337023_mosque_318-124899.jpg', '2018-02-11 08:17:03', '2018-02-11 08:17:03'),
(3, 'ممنوع التدخين', 'No smoking', 'ممنوع التدخين', 'ne smoking', 'images/programservices/cIEo1q_1518337011_661206_max.jpg', '2018-03-26 15:46:50', '2018-03-26 13:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `programsliders`
--

CREATE TABLE `programsliders` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `program_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programsliders`
--

INSERT INTO `programsliders` (`id`, `image`, `program_id`, `created_at`, `updated_at`) VALUES
(24, 'images/programs/images/Lt8siW_1517839289_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', 3, '2018-02-05 14:01:29', '2018-02-05 14:01:29'),
(25, 'images/programs/images/gNxmRH_1517839289_1740900.jpg', 3, '2018-02-05 14:01:29', '2018-02-05 14:01:29'),
(26, 'images/programs/images/bLaNp9_1517839289_67361658.jpg', 3, '2018-02-05 14:01:29', '2018-02-05 14:01:29'),
(27, 'images/programs/images/w4vjWD_1517839289_f512242b0ba24800b4a9ec0108837b40.jpg', 3, '2018-02-05 14:01:29', '2018-02-05 14:01:29'),
(31, 'images/programs/FDKpif_1518337134_1740900.jpg', 4, '2018-04-17 13:28:34', '2018-02-14 08:29:58'),
(32, 'images/programs/FDKpif_1518337134_1740900.jpg', 4, '2018-04-17 13:31:41', '2018-02-14 08:29:58'),
(33, 'images/programs/images/jchUeQ_1518596998_20160818132135.jpg', 4, '2018-02-14 08:29:58', '2018-02-14 08:29:58'),
(34, 'images/programs/images/1u6fbU_1518596998_big.jpg', 4, '2018-02-14 08:29:58', '2018-02-14 08:29:58'),
(35, 'images/programs/images/3udvgz_1518596998_cavehira.jpg', 4, '2018-02-14 08:29:58', '2018-02-14 08:29:58'),
(36, 'images/programs/images/6DXUxh_1518597057_الكعبة2.jpg', 2, '2018-02-14 08:30:57', '2018-02-14 08:30:57'),
(37, 'images/programs/images/upaian_1518597057_المدينة-المنورة.jpg', 2, '2018-02-14 08:30:57', '2018-02-14 08:30:57'),
(38, 'images/programs/images/2lII35_1518597057_المسجد-النبوي.jpg', 2, '2018-02-14 08:30:57', '2018-02-14 08:30:57'),
(39, 'images/programs/images/OiXXOS_1518597057_باب_وكسوة_الكعبة.jpg', 2, '2018-02-14 08:30:57', '2018-02-14 08:30:57'),
(40, 'images/programs/images/3o7oro_1518597057_قرعة-حج-الجمعيات.jpg', 2, '2018-02-14 08:30:57', '2018-02-14 08:30:57'),
(41, 'images/programs/images/cWutUF_1518597057_قنديل-الكعبة.jpg', 2, '2018-02-14 08:30:57', '2018-02-14 08:30:57'),
(42, 'images/programs/images/HoRxKw_1518597057_لماذا_سمي_جبل_أحد_بهذا_الإسم.jpg', 2, '2018-02-14 08:30:57', '2018-02-14 08:30:57'),
(43, 'images/programs/images/p8J8gV_1518598316_7558304.jpg', 1, '2018-02-14 08:51:56', '2018-02-14 08:51:56'),
(45, 'images/programs/images/5fjvCV_1518598316_18912636.jpg', 1, '2018-02-14 08:51:56', '2018-02-14 08:51:56'),
(46, 'images/programs/images/KueHUb_1518598316_24592801.jpg', 1, '2018-02-14 08:51:56', '2018-02-14 08:51:56'),
(47, 'images/programs/images/0bIE51_1518598316_62964256.jpg', 1, '2018-02-14 08:51:56', '2018-02-14 08:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `programs_services`
--

CREATE TABLE `programs_services` (
  `program_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content_ar` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `content_fr` text,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title_ar`, `title_en`, `content_ar`, `content_en`, `content_ur`, `content_fr`, `image`, `created_at`, `updated_at`) VALUES
(1, 'فور عمرة', '', 'من اكثر الشركات احتراما', 'one of the most respectful companies in the middle east', 'من اكثر الشركات احتراما', NULL, 'images/reviews/o6zTy0_1518001079_6 (1).png', '2018-02-07 10:57:59', '2018-02-07 10:57:59'),
(2, 'ماستر فيجن', '', 'تضامن العمرة من اهم شركات العمرة في الشرق الاوسط.', 'One of the leading religious Companies in middle east', 'One of the leading religious Companies in middle east', 'gggggggg', 'images/reviews/4WwRDW_1518000864_image001 (2).png', '2018-03-26 14:32:02', '2018-03-26 12:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `created_at`, `updated_at`) VALUES
(1, 'فردى', 'Single', 'فردى', NULL, '2018-01-16 13:31:47', '2018-01-16 13:31:47'),
(2, 'زوجى', 'Double', 'زوجى', NULL, '2018-01-16 13:32:02', '2018-01-16 13:32:02'),
(3, 'ثلاثى', 'trpl', 'trpl', 'trpl', '2018-03-26 15:24:17', '2018-03-26 13:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `content_ar` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title_fr` varchar(255) DEFAULT NULL,
  `content_fr` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_ar`, `title_en`, `title_ur`, `image`, `content_en`, `content_ur`, `content_ar`, `created_at`, `updated_at`, `title_fr`, `content_fr`) VALUES
(1, 'اعداد برامج الحج', 'Hajj packages', 'Hajj programe', 'images/services/PMaoDD_1518099789_قرعة-حج-الجمعيات.jpg', 'Hajj packages', 'Hajj programe', 'Before passing the Meeqat  (the place where the Umrah starts, and one enters the state of Ihram\r\n Men to get changed into their Ihram (2 pieces of white cloth), preferably after one of the 5 daily prayers\r\n Make niyyah (intention) for Umrah\r\nMake the Talbiyah \r\nEntering Masjid Al Haram ‐ (in Makkah, Saudia Arabia)\r\n Enter with your right foot\r\n Make duaa of the Masjid\r\nTawaf (7 rounds around the Ka\'bah) ‐ You must be in Wudu (ablution)\r\nAfter Completing Tawaf, proceed to Maqaam‐e Ibraaheem ‐ <br/>(Prophet Ibraaheem\'s station)', '2018-04-18 08:31:49', '2018-02-08 14:23:09', NULL, NULL),
(2, 'اعداد برامج العمرة', 'Umrah packages', 'اعداد برامج العمرة', 'images/services/AsOifq_1518099775_68163283.jpg', 'Umrah packages', 'اعداد برامج العمرة', 'اعداد برامج العمرة', '2018-03-26 15:06:30', '2018-03-26 13:06:30', 'lllllllll', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_title_en', 'Tawheed Umrah', '2018-01-01 22:00:00', '2018-01-16 13:44:39'),
(2, 'site_logo', 'images/settings/TrQVRj_1523864006_Logo Tawheed (1).jpg', '2018-01-01 22:00:00', '2018-04-16 05:33:26'),
(3, 'site_description_en', 'Tawheed Umrah', '2018-01-01 22:00:00', '2018-04-16 05:33:26'),
(4, 'site_keywords_en', 'Tawheed Umrah', '2018-01-01 22:00:00', '2018-04-16 05:33:26'),
(5, 'site_email', 'gmtravelbookingonline@gmail.com', '2018-01-01 22:00:00', '2018-01-16 13:47:27'),
(6, 'site_phone', '1223344', '2018-01-01 22:00:00', '2018-04-04 10:15:40'),
(7, 'site_fax', '0555064372', '2018-01-01 22:00:00', '2018-02-05 08:42:53'),
(8, 'site_address_en', 'Mecca , saudi arabia', '2018-01-01 22:00:00', '2018-02-05 08:42:53'),
(9, 'site_map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d13810.974983245604!2d31.302677099999997!3d30.072878999999997!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1514712095212\" width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2018-01-01 22:00:00', '2018-01-02 10:31:45'),
(10, 'site_facebook', 'https://www.facebook.com/deoufgroup', '2018-01-01 22:00:00', '2018-02-05 08:43:11'),
(11, 'site_twitter', '', '2018-01-01 22:00:00', '2018-02-13 15:34:20'),
(12, 'site_linkedin', '', '2018-01-01 22:00:00', '2018-02-13 15:34:20'),
(13, 'site_instagram', '', '2018-01-01 22:00:00', '2018-02-13 15:34:20'),
(14, 'site_gplus', '', '2018-01-01 22:00:00', '2018-02-13 15:34:20'),
(15, 'site_youtube', '', '2018-01-01 22:00:00', '2018-02-13 15:34:20'),
(20, 'about_us_en', 'Our vision is to offer the best service to our customers at competitive prices, allowing all categories of the  market to benefit from the services of various hotel sectors with highest quality Tdamun El umrah travel is one of the leading tourism and sales companies. .', NULL, '2018-02-05 08:34:53'),
(21, 'vision_en', 'Our vision is to offer the best service to our customers at competitive prices, allowing all categories of the  market to benefit from the services of various hotel sectors with highest quality Tdamun El umrah travel is one of the leading tourism and sales companies. .', NULL, '2018-02-05 08:34:53'),
(22, 'mission_en', 'Our vision is to offer the best service to our customers at competitive prices, allowing all categories of the  market to benefit from the services of various hotel sectors with highest quality Tdamun El umrah travel is one of the leading tourism and sales companies. .', NULL, '2018-02-05 08:34:53'),
(23, 'goal_en', 'Our vision is to offer the best service to our customers at competitive prices, allowing all categories of the  market to benefit from the services of various hotel sectors with highest quality Tdamun El umrah travel is one of the leading tourism and sales companies. .', NULL, '2018-02-05 08:34:53'),
(24, 'site_title_ar', 'التوحيد', NULL, '2018-01-16 06:14:58'),
(25, 'site_title_ur', 'التوحيد', NULL, '2018-01-16 13:44:39'),
(26, 'site_description_ar', 'التوحيد', NULL, '2018-01-16 13:44:39'),
(27, 'site_description_ur', 'تضامن العمرة', NULL, '2018-01-16 13:44:39'),
(28, 'site_keywords_ar', 'التوحيد', NULL, '2018-04-16 05:33:26'),
(29, 'site_keywords_ur', 'تضامن العمرة', NULL, '2018-01-16 13:44:39'),
(30, 'about_us_ar', 'رحلات الحج و العمرة بمفهوم شركتنا ليست فقط مناسك تؤدي . انما هى رحلة روحانيه تنقى الروح و القلب و الجسد و ندرك فيها المعنى الحقيقى لوجودنا فى الحياة لنصل لمرحلة السكينة و حسن الظن بالله . دور شركتنا فيها هو توفير كل سبل الرعاية و الرفاهية مما يعطى عميلنا الفرصة كاملة للتفرغ للعبادة باخلاص و احسان …', NULL, '2018-02-07 11:11:14'),
(31, 'about_us_ur', 'رحلات الحج و العمرة بمفهوم شركتنا ليست فقط مناسك تؤدي . انما هى رحلة روحانيه تنقى الروح و القلب و الجسد و ندرك فيها المعنى الحقيقى لوجودنا فى الحياة لنصل لمرحلة السكينة و حسن الظن بالله . دور شركتنا فيها هو توفير كل سبل الرعاية و الرفاهية مما يعطى عميلنا الفرصة كاملة للتفرغ للعبادة باخلاص و احسان …', NULL, '2018-02-07 11:11:15'),
(32, 'vision_ar', 'رؤيتنا هي تنفيذ أفضل خدمة لعملائنا بأسعار تنافسية تتيح لجميع فئات السوق المصري الإستفادة من خدمات قطاعات الفنادق المختلفة بأعلى جودة تعتبر شركة تضامن العمرة  إحدى الشركات السياحية  الرائدة فى مجال السياحة', NULL, '2018-02-07 11:11:14'),
(33, 'vision_ur', 'رؤيتنا هي تنفيذ أفضل خدمة لعملائنا بأسعار تنافسية تتيح لجميع فئات السوق المصري الإستفادة من خدمات قطاعات الفنادق المختلفة بأعلى جودة تعتبر شركة تضامن العمرة  إحدى الشركات السياحية  الرائدة فى مجال السياحة', NULL, '2018-02-07 11:11:15'),
(34, 'mission_ar', 'تتميز تضامن العمرة بتقديم أفضل البرامج السياحية، وعلى رأسها برامج العمرة والحج وذلك عن طريق سلسلة من الوكلاء فى المملكة العربية السعودية من حيث تستطيع الشركة تقديم برامجها الدينية المتميزة للعمرة والحج لعميلها الكريم والتى تمكنه من أداء مناسكه بسهولة ويسر.', NULL, '2018-02-07 11:11:14'),
(35, 'mission_ur', 'تتميز تضامن العمرة بتقديم أفضل البرامج السياحية، وعلى رأسها برامج العمرة والحج وذلك عن طريق سلسلة من الوكلاء فى المملكة العربية السعودية من حيث تستطيع الشركة تقديم برامجها الدينية المتميزة للعمرة والحج لعميلها الكريم والتى تمكنه من أداء مناسكه بسهولة ويسر.', NULL, '2018-02-07 11:11:15'),
(36, 'goal_ar', 'رحلات الحج و العمرة بمفهوم شركتنا ليست فقط مناسك تؤدي . انما هى رحلة روحانيه تنقى الروح و القلب و الجسد و ندرك فيها المعنى الحقيقى لوجودنا فى الحياة لنصل لمرحلة السكينة و حسن الظن بالله . دور شركتنا فيها هو توفير كل سبل الرعاية و الرفاهية مما يعطى عميلنا الفرصة كاملة للتفرغ للعبادة باخلاص و احسان …', NULL, '2018-02-07 11:11:15'),
(37, 'goal_ur', 'رؤيتنا هي تنفيذ أفضل خدمة لعملائنا بأسعار تنافسية تتيح لجميع فئات السوق المصري الإستفادة من خدمات قطاعات الفنادق المختلفة بأعلى جودة تعتبر شركة تضامن العمرة  إحدى الشركات السياحية  الرائدة فى مجال السياحة', NULL, '2018-02-07 11:11:15'),
(38, 'site_address_ar', 'مكة المكرمة المملكة العربية السعودية', NULL, '2018-02-05 08:42:53'),
(39, 'site_address_ur', 'Mecca , saudi arabia', NULL, '2018-02-05 08:42:53'),
(40, 'site_video', 'H5gOj8aIFl4', NULL, '2018-04-04 10:53:20'),
(41, 'why_us_en', 'Our vision is to offer the best service to our customers at competitive prices, allowing all categories of the  market to benefit from the services of various hotel sectors with highest quality Tdamun El umrah travel is one of the leading tourism and sales companies. .', NULL, '2018-02-13 15:34:20'),
(42, 'why_us_ar', 'رحلات الحج و العمرة بمفهوم شركتنا ليست فقط مناسك تؤدي . انما هى رحلة روحانيه تنقى الروح و القلب و الجسد و ندرك فيها المعنى الحقيقى لوجودنا فى الحياة لنصل لمرحلة السكينة و حسن الظن بالله . دور شركتنا فيها هو توفير كل سبل الرعاية و الرفاهية مما يعطى عميلنا الفرصة كاملة للتفرغ للعبادة باخلاص و احسان …', NULL, '2018-02-13 15:34:20'),
(43, 'why_us_ur', 'why_us_ur', NULL, NULL),
(44, 'site_title_fr', 'tawheed', '2018-03-20 22:00:00', '2018-03-29 22:00:00'),
(45, 'site_description_fr', 'ffffffffffffffffffff', NULL, NULL),
(46, 'site_address_fr', 'tawheed', '2018-03-20 22:00:00', '2018-03-29 22:00:00'),
(47, 'site_keywords_fr', 'ffffffffffffffffffff', NULL, NULL),
(50, 'about_us_fr', 'ffffffffffff', NULL, NULL),
(51, 'vision_fr', 'ffffffffffffff', NULL, NULL),
(52, 'mission_fr', 'ffffffffffff', NULL, NULL),
(53, 'goal_fr', 'ffffffffffffffgggggggggg', NULL, '2018-03-26 12:02:57'),
(54, 'why_us_fr', 'ffffffff', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sightseeing`
--

CREATE TABLE `sightseeing` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `content_ar` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `image` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title_fr` varchar(255) DEFAULT NULL,
  `content_fr` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sightseeing`
--

INSERT INTO `sightseeing` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `image`, `city_id`, `created_at`, `updated_at`, `title_fr`, `content_fr`) VALUES
(1, 'جبل عرفات (جبل الرحمة)', 'Mount Arafat(Jabal-ur-Rehmah)', 'جبل عرفات (جبل الرحمة)', 'سُمِّي  عرفة  بهذا  الإسم؛ لأن الناس يتعارفون به، وقيل: سُمِّي بذلك؛ لأن جبريل طاف بإبراهيم- عليه السلام- كان يريه المشاهد فيقول له: أَعَرَفْتَ؟ أَعَرَفْتَ؟ فيقول إبراهيم: عَرَفْتُ، عَرَفْتُ. وقيل: لأن آدم-عليه السلام- لما هبط من الجنة وكان من فراقه حواء ما كان فلقيها في ذلك الموضع؛ فعرفها وعرفته.', 'The above picture shows Jabal-ur-Rehmah (Mountain of Mercy) on the plain of Arafat. Standing at Arafat is the fundamental requirement of Hajj and pilgrims come here on the 9th Dhul Hijjah (second day of Hajj).', 'سُمِّي  عرفة  بهذا  الإسم؛ لأن الناس يتعارفون به، وقيل: سُمِّي بذلك؛ لأن جبريل طاف بإبراهيم- عليه السلام- كان يريه المشاهد فيقول له: أَعَرَفْتَ؟ أَعَرَفْتَ؟ فيقول إبراهيم: عَرَفْتُ، عَرَفْتُ. وقيل: لأن آدم-عليه السلام- لما هبط من الجنة وكان من فراقه حواء ما كان فلقيها في ذلك الموضع؛ فعرفها وعرفته.', 'images/gallery/kwxUQ2_1518099169_باب_وكسوة_الكعبة.jpg', 1, '2018-04-17 14:42:43', '2018-02-13 09:51:42', NULL, NULL),
(2, 'غار حراء', 'Mount Hira', 'Mount Hira', 'غار حراء، هو الغار الذي كان يختلي فيه رسول الإسلام محمد قبل نزول القرآن عليه بواسطة جبريل.', 'This is Mount Hira (Jabal Hira), which lies about two miles from the Ka’bah.', 'This is Mount Hira (Jabal Hira), which lies about two miles from the Ka’bah.', 'images/sightseeing/UwZY6O_1518338720_f512242b0ba24800b4a9ec0108837b40.jpg', 1, '2018-04-17 14:41:31', '2018-02-13 09:51:21', NULL, NULL),
(3, 'مقبرة البقيع', 'The Bekaa cemetery', 'مقبرة البقيع', 'البقيع هي المقبرة الرئيسة لأهل المدينة المنورة منذ عهد النبي محمد ، ومن أقرب الأماكن التاريخية إلى مبنى المسجد النبوي حالياً، ويقع في مواجهة القسم الجنوبي الشرقي من سورهِ، وقد ضمت إليه أراض مجاورة وبني حوله سور جديد مرتفع مكسو بالرخام.ولا تزال المقبرة قيد الاستخدام حتى الآن. وتبلغ مساحته الحالية مائة وثمانين ألف متر مربع؛ يضم البقيع رفات الآلاف المؤلفة من أهل المدينة ومن توفي فيها من المجاورين والزائرين أو نقل جثمانهم على مدى العصور الماضية، وفي مقدمتهم الصحابة الكرام، ويروى أن عشرة آلاف صحابي دفنوا فيه، منهم ذو النورين عثمان بن عفان ثالث الخلفاء الراشدين وأمهات المؤمنين زوجات النبي محمد عدا خديجة وميمونة، كما دفن فيه ابنته فاطمة الزهراء، وابنه إبراهيم، وعمه العباس، وعمته صفية، وزوجته عائشة بنت أبي بكر الصديق, وحفيده الحسن بن علي، وكذلك علي بن الحسين ومحمد الباقر وجعفر الصادق. عن محمد بن قيس بن مخرمة بن المطلب أنه قال: سمعت عائشة تحدث فقالت: ألا أحدثكم عن النبي صلى الله عليه وآله وسلم، وعني ؟ قلنا: بلى قالت: لما كانت ليلتي التي كان النبي فيها عندي انقلب، فوضـع رداءه، وخلع نعله، فوضعها عند رجليه.. وذكرت قصة خروجه صلى الله عليه وآله وسلم إلى البقيع ثم قالت: فجعلت درعي في رأسي، واختمرت، وتقنعت إزاري، ثم انطلقت على إثـره حتى جاء البقيع، فقام، فأطال، ثم رفع يده ثلاث مرات، ثم انحرف... وذكرت قصة عودتها قبله.... وفيه قال صلى الله عليه وآله وسلم: ((فإن جبريل أتاني... فأجبته... فقال: إن ربك يأمرك أن تأتي أهل البقيع فتستغفر لهم)) قالت عائشة: كيف أقول لهم يا رسول الله ؟ قال: ((قولي السلام على أهل الديار من المؤمنين والمسلمين، ويرحم الله المستقدمين منا والمستأخرىن وإنا إن شاء الله بكم للاحقون)).', 'Baqi is the main cemetery of the people of Medina since thetime of the Prophet Muhammad', 'البقيع هي المقبرة الرئيسة لأهل المدينة المنورة منذ عهد النبي محمد.', 'images/sightseeing/UwZY6O_1518338720_f512242b0ba24800b4a9ec0108837b40.jpg', 2, '2018-02-11 08:45:20', '2018-02-11 08:45:20', NULL, NULL),
(4, 'جبل أُحُد', 'Mount Uhud', 'Mount Uhud', 'جبل أُحُد (بضمّ الألف والحاء) هو جبل يطل على المدينة المنوّرة من الجهة الشمالية وكان يبعد عنها ثلاثة أميال ونصف قبل أن يصله العمران.[1] يمتد الجبل كسلسلة من الشرق إلى الغرب ويميل نحو الشمال.[1] شهد جبل أحد عدة أحداث بعد ظهور الإسلام وله مكانته الدينية.[1] توجد عدة آراء حول سبب تسمية جبل أحد بهذا الاسم: الرأي الأول يقول أن الجبل سمي بهذا الاسم لتوحده عن الجبال وأنه محاط بالأودية والسهول.[1] الرأي الثاني هو أن الجبل سمي بأحد نسبة إلى رجل يدعى أحد من العماليق (السكان الأوائل التقليديين للمدينة) حيث أن أحد انتقل إلى الجبل وسكنه فسمي باسمه.[1] الرأي الثالث يقول أن الجبل سمي كذلك لأنه يرمز لوحدانية الله.[1] جيولوجية الجبل وجغرافية المنطقة أغلب صخور الجبل من الجرانيت الأحمر، وبعض الصخور تميل ألوانها إلى الأخضر الداكن والأسود، وبها عدة تجاويف تسمى \"المهاريس\" تقوم باحتجاز مياه الأمطار، وبه العديد من الكهوف والشقوق التي يتجاوز ارتفاع بعضها متراً ونصف وعمقها عشرة أمتار.[1][2] كما يضم الجبل العديد من المعادن كالحديد في الصخور الخارجية والنحاس في الصخور الداخلية.[2] يبلغ طول الجبل 7 كيلومترات وعرضه بين 2 و 3 كيلومتر وارتفاعه يصل إلى قرابة 350 متراً.[1]يبعد الجبل 5 كيلومترات عن المسجد النبوي.[2] يحد الجبل من الشمال طريق الجامعات (طريق غير المسلمين) ومن الجنوب الطريق الدائري الجنوبي ومن الشرق طريق المطار وجبل تيأب وجبل ثور في الشمال الغربي وجبل عينين في الجنوب الغربي والذي يعرف بجبل الرماة كما يمر من عند قاعدته وادي قناة والذي يتجاوزه من الغرب.[1] نباتات الجبل ينتشر بالجبل العديد من النباتات ومنها \"لوز النبي\" (مصفوفة الأوراق) والذي يعتبر جزءاً من الفصيلة الصقلابية، ويوجد به نبات \"الحميض\" والذي ينتمي إلى جنس الحماض من الفصيلة البطباطية، كما تنتشر به نباتات أخرى منها العوسج والسمر والسلم والسدر والمسيكة (شجرة الريح) والشكيرة (الشكربل أو الربلة) وشجرية أبو حاد (طرطر) وعشبة شوكة العنب (شوكة الإبل) والحنظل.[1] كما أن به العديد من النباتات المصنفة ضمن الفصيلة النجيلية والتي تموت تدريجياً بسبب انقطاع الأمطار.[2] ميدان جبل أحد هو موقع معركة غزوة أحد بين المسلمين وقريش والتي وقعت في السنة الثالثة للهجرة، حيث وقعت المعركة في جنوب غربي الجبل بالقرب من جبل الرماة.[1] قتل في تلك المعركة سبعون صحابياً منهم حمزة بن عبد المطلب عم النبي محمد، لأن الرماة تركوا الجبل فأحاط جيش قريش بهم من الخلف.[1] فضائل أحد يرى المسلمون أن جبل أحد يحبهم ويحبونه لما رواه الصحابي أنس بن مالك عن النبي أنه قال: \"هَذَا جَبَلٌ يُحِبُّنَا وَنُحِبُّهُ\"، كما أن المسلمين يرون أن الجبل من جبال الجنة لما رواه أبو عبس بن جبر الصحابي عن النبي أنه قال: \"جَبَلُ أُحُدٍ يُحِبُّنَا وَنُحِبُّهُ وَهُوَ مِنْ جِبَالِ الْجَنَّةِ\".[3] آثار أحد يضم الجبل عدة آثار منها مقبرة شهداء أحد والتي تضم أجساد 70 صحابي قتلوا أثناء غزوة أحد، كما يشتهر الجبل بالشق وهو فتحة في الجبل يقال أن النبي محمد احتمى فيها يوم غزوة أحد وتشتت المسلمين، كما يقع بالقرب منه مسجد الفسح', 'Mount Uhud is a mountain north of Medina, Saudi Arabia. It is 1,077 m (3,533 ft) high. It was the site of the second battle between Muslim and Meccan forces. The Battle of Uhud was fought on 19 March, 625 AD, between a force from the small Muslim community of Medina, in what is now north-western Arabia, and a force from Mecca.', 'Mount Uhud is a mountain north of Medina, Saudi Arabia. It is 1,077 m (3,533 ft) high. It was the site of the second battle between Muslim and Meccan forces. The Battle of Uhud was fought on 19 March, 625 AD, between a force from the small Muslim community of Medina, in what is now north-western Arabia, and a force from Mecca.', 'images/sightseeing/dpieud_1518515446_لماذا_سمي_جبل_أحد_بهذا_الإسم.jpg', 2, '2018-02-13 09:50:46', '2018-02-13 09:50:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliderimages`
--

CREATE TABLE `sliderimages` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `slider_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliderimages`
--

INSERT INTO `sliderimages` (`id`, `image`, `slider_id`, `created_at`, `updated_at`) VALUES
(10, 'images/sliders/images/1MpZV2_1518099533_timthumb.jpg', 1, '2018-02-08 14:18:53', '2018-02-08 14:18:53'),
(11, 'images/sliders/images/rqqUd0_1518099533_الحرم-المكي-الشريف-1.jpg', 1, '2018-02-08 14:18:54', '2018-02-08 14:18:54'),
(12, 'images/sliders/images/L54HMw_1518099534_الكعبة2.jpg', 1, '2018-02-08 14:18:54', '2018-02-08 14:18:54'),
(14, 'images/sliders/images/fi8iy8_1518099577_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', 1, '2018-02-08 14:19:38', '2018-02-08 14:19:38'),
(15, 'images/sliders/images/3Wngwa_1518099594_المدينة-المنورة.jpg', 1, '2018-02-08 14:19:54', '2018-02-08 14:19:54'),
(16, 'images/sliders/images/WbpHYl_1518446334_1.jpg', 3, '2018-02-12 14:38:54', '2018-02-12 14:38:54'),
(17, 'images/sliders/images/uhyF81_1518446363_2.jpg', 3, '2018-02-12 14:39:23', '2018-02-12 14:39:23'),
(18, 'images/sliders/images/rTKkth_1518446363_3.jpg', 3, '2018-02-12 14:39:24', '2018-02-12 14:39:24'),
(19, 'images/sliders/images/eCYdou_1518446364_4.jpg', 3, '2018-02-12 14:39:24', '2018-02-12 14:39:24'),
(20, 'images/sliders/images/ADBC4t_1518446364_5.jpg', 3, '2018-02-12 14:39:24', '2018-02-12 14:39:24'),
(21, 'images/sliders/images/T01NDd_1518446364_6.jpg', 3, '2018-02-12 14:39:24', '2018-02-12 14:39:24'),
(23, 'images/sliders/images/27V509_1518510855_لماذا_سمي_جبل_أحد_بهذا_الإسم.jpg', 3, '2018-02-13 08:34:15', '2018-02-13 08:34:15'),
(24, 'images/sliders/images/jhnBz3_1518510855_قنديل-الكعبة.jpg', 3, '2018-02-13 08:34:16', '2018-02-13 08:34:16'),
(25, 'images/sliders/images/R5dKVT_1518511340_باب_وكسوة_الكعبة.jpg', 1, '2018-02-13 08:42:21', '2018-02-13 08:42:21'),
(26, 'images/sliders/images/uh12dV_1518511395_islam_introduccion.jpg', 1, '2018-02-13 08:43:15', '2018-02-13 08:43:15'),
(27, 'images/sliders/images/YvUFs3_1518511405_timthumb.jpg', 1, '2018-02-13 08:43:25', '2018-02-13 08:43:25'),
(28, 'images/sliders/images/phHgfd_1518511522_45271.jpg', 1, '2018-02-13 08:45:22', '2018-02-13 08:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `url` text,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'صمم  عمرتك بسهولة  حسب رغباتك ببساطة - سهولة - سرعة', 'make your umrah now', 'سلايدر 1', NULL, 'http://tawheed.com/uc/ar/make_your_umrah', 'images/sliders/SZabaG_1518099478_68163283.jpg', '2018-04-05 11:59:32', '2018-02-19 12:58:09'),
(3, 'الان تستمتع بالعمرة في سهولة و يسر', 'Best offers', 'افضل عروض العمرة', 'ggggggg', 'http://tawheed.com/uc/ar/make_your_umrah', 'images/sliders/2mSpZd_1518336951_فنادق-المدينة-المنورة.jpg', '2018-04-05 11:59:41', '2018-03-26 12:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `special_offers`
--

INSERT INTO `special_offers` (`id`, `image`, `active`, `created_at`, `updated_at`) VALUES
(2, 'images/special/7lAgTE_1523866893_paEKy0_1518536449_image_1314196996_819.jpg', 1, '2018-04-16 08:21:33', '2018-04-16 06:21:33'),
(3, 'images/special/Er2ued_1523867055_QX5Ges_1518536502_برج-القاهرة_رجلات-اليوم-الواحد-_أجازة-كليك.jpg', 1, '2018-04-16 06:24:15', '2018-04-16 06:24:15'),
(4, 'images/special/k7sFBA_1523867063_6Sk0oM_1518536398_370622.jpg', 1, '2018-04-16 06:24:23', '2018-04-16 06:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers_book`
--

CREATE TABLE `special_offers_book` (
  `id` int(11) NOT NULL,
  `special_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `special_offers_book`
--

INSERT INTO `special_offers_book` (`id`, `special_id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'ramadanabdo', 'admin@admin.com', '1111111', 'fffffff', '2018-04-15 13:39:37', '2018-04-15 13:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ghfghfgh@ftyutuy.fghfgh', '2018-02-14 10:40:33', '2018-02-14 10:40:33'),
(2, 'ghfdddghfgh@ftyutuy.fghfgh', '2018-02-14 10:40:41', '2018-02-14 10:40:41'),
(3, 'test@test.com', '2018-02-18 11:39:04', '2018-02-18 11:39:04'),
(4, 'sssssss@sss.com', '2018-04-14 13:05:48', '2018-04-14 13:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `transportations`
--

CREATE TABLE `transportations` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `title_fr` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transportations`
--

INSERT INTO `transportations` (`id`, `title_ar`, `title_en`, `title_ur`, `title_fr`, `created_at`, `updated_at`) VALUES
(2, 'ليموزين', 'limousine', 'limousine', NULL, '2018-02-18 11:48:35', '2018-02-18 11:48:35'),
(4, 'باص', 'Bus', 'باص', 'buse', '2018-03-26 14:13:36', '2018-03-26 12:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahmoud Gabr', 'admin@admin.com', 1, '$2y$10$t87mKOdQAyez/kMvo.qYL.yTnkCJjR/XbDmfHNtjaFNireyl1084.', 'o4bmrrgsZ7GTsgkzUf9kVDEC0yhGtQTvKQ0HSK6VT58AMs36jAIaL4SQtL5c', '2018-01-02 12:44:33', '2018-01-02 12:44:33');

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
  `passport_status_msg_ur` text NOT NULL,
  `passport_status_msg_fr` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visas`
--

INSERT INTO `visas` (`id`, `code`, `price`, `places_id`, `visa_jobs_id`, `visa_periods_id`, `visa_types_id`, `currency_id`, `passport_status`, `active`, `branches_id`, `passport_status_msg_ar`, `passport_status_msg_en`, `passport_status_msg_ur`, `passport_status_msg_fr`, `created_at`, `created_by`) VALUES
(165, '2', '90', 215, 12, 20, 21, 22, 0, 1, 61, '', '', '', '', '2017-09-12 12:23:16', 142),
(171, '8', '145', 215, 25, 20, 21, 22, 1, 1, 61, '', '', '', '', '2017-09-12 12:28:20', 142),
(172, '9', '155', 215, 25, 19, 21, 22, 1, 1, 61, '', '', '', '', '2017-09-12 12:28:29', 142),
(173, '10', '355', 215, 25, 16, 21, 22, 1, 1, 61, '', '', '', '', '2017-09-12 12:28:48', 142),
(174, '1', '1500', 155, 10, 13, 16, 20, 1, 1, 68, 'ww', 'www', '', '', '2017-09-23 14:10:15', 143),
(175, '2', '2000', 155, 11, 13, 16, 20, 1, 1, 68, 'تتت', 'تتت', '', '', '2017-09-23 14:11:39', 143),
(182, '7', '650', 387, 14, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 16:53:39', 143),
(183, '8', '650', 387, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', ' 251Cleopatra Portsaid', '', '', '2017-09-23 16:54:42', 143),
(184, '9', '650', 387, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra - Portsaid', '', '', '2017-09-23 16:55:10', 143),
(185, '10', '650', 387, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '  251Cleopatra - Portsaid', '', '', '2017-09-23 16:56:07', 143),
(186, '11', '875', 387, 10, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 16:58:02', 143),
(187, '12', '875', 387, 11, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 16:58:45', 143),
(188, '13', '875', 387, 13, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:00:27', 143),
(189, '14', '875', 387, 14, 14, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:02:07', 143),
(190, '15', '1200', 387, 10, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:05:53', 143),
(191, '16', '1200', 387, 11, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:06:44', 143),
(192, '17', '1200', 387, 13, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:07:16', 143),
(193, '18', '1200', 387, 14, 21, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:08:18', 143),
(194, '19', '1200', 387, 10, 21, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:08:55', 143),
(195, '20', '1200', 387, 13, 21, 19, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251 Cleopatra Portsaid', '', '', '2017-09-23 17:10:04', 143),
(211, '35', '270', 392, 10, 17, 16, 19, 1, 1, 68, '', '', '', '', '2017-09-24 12:50:08', 143),
(212, '36', '270', 392, 11, 17, 16, 19, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 12:50:49', 143),
(221, '45', '270', 392, 13, 17, 16, 19, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 12:59:15', 143),
(228, '52', '1200', 389, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:16:47', 143),
(230, '54', '850', 388, 11, 25, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:28:05', 143),
(231, '55', '850', 388, 10, 25, 16, 20, 1, 1, 68, '', '', '', '', '2017-09-24 13:34:22', 143),
(233, '57', '1100', 388, 10, 26, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:41:25', 143),
(234, '58', '1100', 388, 11, 26, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:42:04', 143),
(236, '60', '1350', 388, 10, 23, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:44:22', 143),
(237, '61', '1900', 388, 10, 24, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:45:35', 143),
(238, '62', '1350', 388, 11, 23, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:46:37', 143),
(239, '63', '1350', 388, 13, 23, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:47:08', 143),
(240, '64', '1900', 388, 11, 24, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:50:05', 143),
(241, '65', '1900', 388, 13, 24, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2017-09-24 13:53:05', 143),
(242, '66', '1100', 388, 13, 26, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 11:50:51', 143),
(243, '67', '850', 388, 13, 25, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 11:52:27', 143),
(244, '68', '1250', 389, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 11:53:23', 143),
(245, '69', '1250', 389, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 11:54:33', 143),
(246, '70', '1900', 389, 11, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد امام كريستال عصفور ', 'Cleopatra Port Said in front of Asfour Crystal', '', '', '2018-01-28 12:00:30', 143),
(247, '71', '1900', 389, 10, 27, 16, 20, 1, 1, 68, '251 كليوباترا بورسعيد امام كريستال عصفور ', '251Cleopatra Port Said in front of Asfour Crystal', '', '', '2018-01-28 12:06:21', 143),
(249, '73', '950', 390, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:17:30', 143),
(251, '74', '950', 390, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:17:56', 143),
(252, '75', '950', 390, 10, 13, 16, 20, 1, 1, 68, '', '', '', '', '2018-01-28 12:18:34', 143),
(259, '79', '1000', 391, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:36:42', 143),
(260, '80', '1000', 391, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:36:55', 143),
(261, '81', '1000', 391, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:37:10', 143),
(266, '86', '1100', 393, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:41:28', 143),
(267, '87', '1100', 393, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:42:09', 143),
(268, '88', '1100', 393, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:42:35', 143),
(269, '89', '3450', 393, 10, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:52:29', 143),
(270, '90', '3450', 393, 11, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:53:23', 143),
(271, '91', '3450', 393, 13, 27, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:54:07', 143),
(274, '93', '1100', 394, 13, 13, 16, 20, 1, 1, 68, '251كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:58:37', 143),
(275, '94', '1100', 394, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:58:47', 143),
(276, '95', '1100', 394, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 12:59:24', 143),
(278, '96', '700', 395, 13, 13, 16, 20, 1, 1, 68, '251كليوباترا بور سعيد', '251Cleopatra portsaid', '', '', '2018-01-28 13:04:04', 143),
(279, '97', '700', 395, 11, 13, 16, 20, 1, 1, 68, '251كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:04:33', 143),
(280, '98', '700', 395, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:05:21', 143),
(281, '99', '1000', 647, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:15:38', 143),
(282, '100', '1000', 647, 13, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:16:39', 143),
(283, '101', '1850', 648, 10, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:23:50', 143),
(284, '102', '1850', 648, 11, 13, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:24:27', 143),
(285, '103', '4400', 648, 10, 14, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:28:54', 143),
(286, '104', '4400', 648, 11, 14, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:29:21', 143),
(287, '105', '4700', 648, 13, 14, 16, 20, 1, 1, 68, '251 كليوباترا بور سعيد', '251Cleopatra Portsaid', '', '', '2018-01-28 13:30:08', 143);

-- --------------------------------------------------------

--
-- Table structure for table `visas_documents`
--

CREATE TABLE `visas_documents` (
  `id` int(11) NOT NULL,
  `visas_code` varchar(255) NOT NULL,
  `visas_id` int(11) NOT NULL,
  `visa_documents_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visas_documents`
--

INSERT INTO `visas_documents` (`id`, `visas_code`, `visas_id`, `visa_documents_id`) VALUES
(270, '2', 165, 9),
(271, '2', 165, 10),
(282, '8', 171, 9),
(283, '8', 171, 10),
(284, '9', 172, 9),
(285, '9', 172, 10),
(286, '10', 173, 9),
(287, '10', 173, 10),
(288, '1', 174, 5),
(289, '1', 174, 6),
(290, '1', 174, 7),
(291, '2', 175, 6),
(292, '2', 175, 7),
(308, '7', 182, 7),
(309, '7', 182, 12),
(310, '7', 182, 15),
(311, '7', 182, 16),
(312, '7', 182, 17),
(313, '8', 183, 7),
(314, '8', 183, 12),
(315, '8', 183, 14),
(316, '8', 183, 16),
(317, '8', 183, 17),
(318, '9', 184, 7),
(319, '9', 184, 11),
(320, '9', 184, 12),
(321, '9', 184, 16),
(322, '9', 184, 17),
(323, '10', 185, 5),
(324, '10', 185, 7),
(325, '10', 185, 12),
(326, '10', 185, 16),
(327, '10', 185, 17),
(328, '11', 186, 5),
(329, '11', 186, 7),
(330, '11', 186, 12),
(331, '11', 186, 16),
(332, '11', 186, 17),
(333, '12', 187, 7),
(334, '12', 187, 11),
(335, '12', 187, 12),
(336, '12', 187, 16),
(337, '12', 187, 17),
(338, '13', 188, 7),
(339, '13', 188, 12),
(340, '13', 188, 14),
(341, '13', 188, 17),
(342, '14', 189, 7),
(343, '14', 189, 12),
(344, '14', 189, 15),
(345, '14', 189, 16),
(346, '14', 189, 17),
(347, '15', 190, 5),
(348, '15', 190, 7),
(349, '15', 190, 12),
(350, '15', 190, 16),
(351, '15', 190, 17),
(352, '16', 191, 7),
(353, '16', 191, 11),
(354, '16', 191, 12),
(355, '16', 191, 16),
(356, '16', 191, 17),
(357, '17', 192, 7),
(358, '17', 192, 12),
(359, '17', 192, 14),
(360, '17', 192, 16),
(361, '17', 192, 17),
(362, '18', 193, 7),
(363, '18', 193, 12),
(364, '18', 193, 15),
(365, '18', 193, 16),
(366, '18', 193, 17),
(367, '19', 194, 5),
(368, '19', 194, 7),
(369, '19', 194, 12),
(370, '19', 194, 16),
(371, '19', 194, 17),
(372, '20', 195, 7),
(373, '20', 195, 12),
(374, '20', 195, 14),
(375, '20', 195, 16),
(376, '20', 195, 17),
(480, '35', 211, 5),
(481, '35', 211, 7),
(482, '35', 211, 12),
(483, '35', 211, 13),
(484, '35', 211, 16),
(485, '35', 211, 17),
(486, '36', 212, 7),
(487, '36', 212, 11),
(488, '36', 212, 12),
(489, '36', 212, 13),
(490, '36', 212, 14),
(491, '36', 212, 16),
(492, '36', 212, 17),
(543, '45', 221, 7),
(544, '45', 221, 12),
(545, '45', 221, 14),
(546, '45', 221, 16),
(547, '45', 221, 17),
(584, '52', 228, 7),
(585, '52', 228, 12),
(586, '52', 228, 13),
(587, '52', 228, 14),
(588, '52', 228, 16),
(589, '52', 228, 17),
(596, '54', 230, 7),
(597, '54', 230, 11),
(598, '54', 230, 12),
(599, '54', 230, 13),
(600, '54', 230, 16),
(601, '54', 230, 17),
(602, '55', 231, 5),
(603, '55', 231, 7),
(604, '55', 231, 12),
(605, '55', 231, 13),
(606, '55', 231, 16),
(607, '55', 231, 17),
(614, '57', 233, 7),
(615, '57', 233, 12),
(616, '57', 233, 13),
(617, '57', 233, 16),
(618, '57', 233, 17),
(619, '58', 234, 7),
(620, '58', 234, 11),
(621, '58', 234, 12),
(622, '58', 234, 13),
(623, '58', 234, 16),
(624, '58', 234, 17),
(630, '60', 236, 5),
(631, '60', 236, 7),
(632, '60', 236, 12),
(633, '60', 236, 13),
(634, '60', 236, 16),
(635, '60', 236, 17),
(636, '61', 237, 5),
(637, '61', 237, 7),
(638, '61', 237, 12),
(639, '61', 237, 14),
(640, '61', 237, 16),
(641, '61', 237, 17),
(642, '62', 238, 7),
(643, '62', 238, 11),
(644, '62', 238, 13),
(645, '62', 238, 16),
(646, '62', 238, 17),
(647, '63', 239, 7),
(648, '63', 239, 11),
(649, '63', 239, 12),
(650, '63', 239, 13),
(651, '63', 239, 14),
(652, '63', 239, 16),
(653, '63', 239, 17),
(654, '64', 240, 7),
(655, '64', 240, 11),
(656, '64', 240, 12),
(657, '64', 240, 13),
(658, '64', 240, 14),
(659, '64', 240, 16),
(660, '64', 240, 17),
(661, '65', 241, 7),
(662, '65', 241, 12),
(663, '65', 241, 13),
(664, '65', 241, 14),
(665, '65', 241, 16),
(666, '65', 241, 17),
(667, '66', 242, 12),
(668, '66', 242, 13),
(669, '66', 242, 14),
(670, '66', 242, 16),
(671, '66', 242, 17),
(672, '67', 243, 7),
(673, '67', 243, 12),
(674, '67', 243, 13),
(675, '67', 243, 14),
(676, '67', 243, 16),
(677, '67', 243, 17),
(678, '68', 244, 7),
(679, '68', 244, 11),
(680, '68', 244, 12),
(681, '68', 244, 14),
(682, '68', 244, 16),
(683, '68', 244, 17),
(684, '69', 245, 5),
(685, '69', 245, 7),
(686, '69', 245, 12),
(687, '69', 245, 13),
(688, '69', 245, 16),
(689, '69', 245, 17),
(690, '70', 246, 7),
(691, '70', 246, 11),
(692, '70', 246, 12),
(693, '70', 246, 13),
(694, '70', 246, 16),
(695, '70', 246, 17),
(696, '70', 246, 18),
(697, '71', 247, 5),
(698, '71', 247, 7),
(699, '71', 247, 12),
(700, '71', 247, 13),
(701, '71', 247, 16),
(702, '71', 247, 17),
(703, '71', 247, 18),
(710, '73', 249, 7),
(711, '73', 249, 11),
(712, '73', 249, 12),
(713, '73', 249, 16),
(714, '73', 249, 17),
(721, '74', 251, 7),
(722, '74', 251, 12),
(723, '74', 251, 13),
(724, '74', 251, 14),
(725, '74', 251, 16),
(726, '74', 251, 17),
(727, '75', 252, 5),
(728, '75', 252, 7),
(729, '75', 252, 12),
(730, '75', 252, 13),
(731, '75', 252, 14),
(732, '75', 252, 16),
(733, '75', 252, 17),
(774, '79', 259, 7),
(775, '79', 259, 12),
(776, '79', 259, 13),
(777, '79', 259, 14),
(778, '79', 259, 16),
(779, '79', 259, 17),
(780, '80', 260, 7),
(781, '80', 260, 12),
(782, '80', 260, 13),
(783, '80', 260, 14),
(784, '80', 260, 16),
(785, '80', 260, 17),
(786, '81', 261, 5),
(787, '81', 261, 7),
(788, '81', 261, 12),
(789, '81', 261, 13),
(790, '81', 261, 14),
(791, '81', 261, 16),
(792, '81', 261, 17),
(817, '86', 266, 5),
(818, '86', 266, 7),
(819, '86', 266, 12),
(820, '86', 266, 13),
(821, '86', 266, 16),
(822, '86', 266, 17),
(823, '87', 267, 7),
(824, '87', 267, 11),
(825, '87', 267, 12),
(826, '87', 267, 13),
(827, '87', 267, 16),
(828, '87', 267, 17),
(829, '88', 268, 7),
(830, '88', 268, 12),
(831, '88', 268, 13),
(832, '88', 268, 14),
(833, '88', 268, 16),
(834, '88', 268, 17),
(835, '89', 269, 5),
(836, '89', 269, 7),
(837, '89', 269, 12),
(838, '89', 269, 13),
(839, '89', 269, 16),
(840, '89', 269, 17),
(841, '89', 269, 18),
(842, '90', 270, 7),
(843, '90', 270, 11),
(844, '90', 270, 12),
(845, '90', 270, 13),
(846, '90', 270, 14),
(847, '90', 270, 16),
(848, '90', 270, 17),
(849, '90', 270, 18),
(850, '91', 271, 5),
(851, '91', 271, 7),
(852, '91', 271, 12),
(853, '91', 271, 13),
(854, '91', 271, 14),
(855, '91', 271, 16),
(856, '91', 271, 17),
(857, '91', 271, 18),
(873, '93', 274, 5),
(874, '93', 274, 7),
(875, '93', 274, 12),
(876, '93', 274, 13),
(877, '93', 274, 14),
(878, '93', 274, 16),
(879, '93', 274, 17),
(880, '93', 274, 19),
(881, '94', 275, 7),
(882, '94', 275, 11),
(883, '94', 275, 12),
(884, '94', 275, 13),
(885, '94', 275, 15),
(886, '94', 275, 16),
(887, '94', 275, 17),
(888, '94', 275, 19),
(889, '95', 276, 5),
(890, '95', 276, 7),
(891, '95', 276, 12),
(892, '95', 276, 13),
(893, '95', 276, 16),
(894, '95', 276, 17),
(895, '95', 276, 19),
(905, '96', 278, 5),
(906, '96', 278, 7),
(907, '96', 278, 12),
(908, '96', 278, 13),
(909, '96', 278, 14),
(910, '96', 278, 15),
(911, '96', 278, 16),
(912, '96', 278, 17),
(913, '96', 278, 18),
(914, '97', 279, 5),
(915, '97', 279, 7),
(916, '97', 279, 11),
(917, '97', 279, 12),
(918, '97', 279, 13),
(919, '97', 279, 16),
(920, '97', 279, 17),
(921, '97', 279, 18),
(922, '98', 280, 5),
(923, '98', 280, 7),
(924, '98', 280, 11),
(925, '98', 280, 12),
(926, '98', 280, 13),
(927, '98', 280, 16),
(928, '98', 280, 17),
(929, '98', 280, 18),
(930, '99', 281, 5),
(931, '99', 281, 7),
(932, '99', 281, 12),
(933, '99', 281, 13),
(934, '99', 281, 16),
(935, '99', 281, 17),
(936, '99', 281, 18),
(937, '100', 282, 5),
(938, '100', 282, 6),
(939, '100', 282, 7),
(940, '100', 282, 12),
(941, '100', 282, 13),
(942, '100', 282, 14),
(943, '100', 282, 16),
(944, '100', 282, 17),
(945, '100', 282, 18),
(946, '101', 283, 6),
(947, '101', 283, 7),
(948, '102', 284, 6),
(949, '102', 284, 7),
(950, '103', 285, 6),
(951, '103', 285, 7),
(952, '104', 286, 6),
(953, '104', 286, 7),
(954, '105', 287, 6),
(955, '105', 287, 7);

-- --------------------------------------------------------

--
-- Table structure for table `visas_reservation`
--

CREATE TABLE `visas_reservation` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_1` int(11) NOT NULL,
  `phone_2` int(11) NOT NULL,
  `mobile_1` int(11) NOT NULL,
  `mobile_2` int(11) NOT NULL,
  `email_activated` tinyint(1) NOT NULL DEFAULT '0',
  `visas_id` int(11) NOT NULL,
  `visa_types_id` int(11) NOT NULL,
  `visa_periods_id` int(11) NOT NULL,
  `visa_jobs_id` int(11) NOT NULL,
  `places_id` int(11) NOT NULL,
  `departments_id` int(11) NOT NULL,
  `payment_visa_status` tinyint(1) NOT NULL DEFAULT '0',
  `branches_id` int(11) NOT NULL,
  `net_price` decimal(11,2) NOT NULL,
  `whitelabel_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_type` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `cancelled` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_name` text,
  `delivery_email` text,
  `delivery_phone` text,
  `delivery_address` text,
  `area_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visas_reservation`
--

INSERT INTO `visas_reservation` (`id`, `code`, `name`, `email`, `address`, `phone_1`, `phone_2`, `mobile_1`, `mobile_2`, `email_activated`, `visas_id`, `visa_types_id`, `visa_periods_id`, `visa_jobs_id`, `places_id`, `departments_id`, `payment_visa_status`, `branches_id`, `net_price`, `whitelabel_id`, `created_by`, `created_by_type`, `active`, `cancelled`, `delivery_name`, `delivery_email`, `delivery_phone`, `delivery_address`, `area_id`, `creation_date`) VALUES
(1, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:12:14'),
(2, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:13:11'),
(3, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:19:50'),
(4, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:20:58'),
(5, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:21:22'),
(6, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:23:04'),
(7, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:25:28'),
(8, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:26:43'),
(9, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:26:44'),
(10, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:26:44'),
(11, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:26:44'),
(12, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:27:00'),
(13, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:27:00'),
(14, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:27:00'),
(15, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:28:30'),
(16, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 16:32:50'),
(17, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 18:25:29'),
(18, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 18:29:21'),
(19, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 18:31:05'),
(20, '', '', '', '', 0, 0, 0, 0, 0, 60, 8, 4, 4, 65, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-02 18:37:00'),
(21, '', '', '', '', 0, 0, 0, 0, 0, 73, 8, 5, 8, 77, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-16 09:41:57'),
(22, '', '', '', '', 0, 0, 0, 0, 0, 73, 8, 5, 8, 77, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-25 11:22:30'),
(23, '', '', '', '', 0, 0, 0, 0, 0, 73, 8, 5, 8, 77, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-26 05:02:10'),
(24, '', '', '', '', 0, 0, 0, 0, 0, 73, 8, 5, 8, 77, 0, 0, 48, '0.00', 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-02-26 05:02:13'),
(25, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 0, 1, 48, '6900.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 13:30:48'),
(26, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 0, 1, 48, '6900.00', 48, 25, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 13:47:10'),
(27, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 0, 1, 48, '6900.00', 48, 25, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 13:48:58'),
(28, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 0, 1, 0, '0.00', 48, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 18:14:01'),
(29, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 0, 1, 0, '0.00', 48, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 18:16:09'),
(30, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 0, 1, 48, '6900.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 18:17:06'),
(31, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 0, 1, 48, '6900.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 20:01:05'),
(32, '', '', '', '', 0, 0, 0, 0, 0, 76, 8, 5, 8, 75, 0, 1, 48, '1200.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 20:14:31'),
(33, '', '', '', '', 0, 0, 0, 0, 0, 76, 8, 5, 8, 75, 0, 1, 48, '1200.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-09 20:17:20'),
(34, '', '', '', '', 0, 0, 0, 0, 0, 75, 8, 5, 8, 77, 46, 0, 50, '6900.00', 48, 25, 'employee', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-11 09:26:26'),
(35, '', '', '', '', 0, 0, 0, 0, 0, 77, 8, 6, 8, 77, 0, 1, 48, '2900.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-11 10:35:37'),
(36, '', '', '', '', 0, 0, 0, 0, 0, 85, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-11 11:13:04'),
(37, '', '', '', '', 0, 0, 0, 0, 0, 85, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-11 13:58:35'),
(38, '', '', '', '', 0, 0, 0, 0, 0, 88, 8, 5, 8, 89, 0, 1, 48, '860.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-11 14:20:55'),
(39, '', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', 'Fhhggddfhg', 0, 0, 0, 0, 0, 93, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-13 00:24:11'),
(40, '', 'Hadeer Ibrahim', 'Hadeer.ibrahim@nbe.com.eg', 'Maadi', 1007412593, 1007412593, 1007412593, 7412593, 0, 93, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 25, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-13 06:55:41'),
(41, '', 'Ahmed Elhelw', 'ahmed.elhelww@outlook.com', '20 fawzy moaz', 10, 0, 342, 0, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-13 08:36:39'),
(42, '', 'Hadeer Ibrahim', 'Hadeer.ibrahim@nbe.com.eg', 'Maadi', 1007412593, 1007412593, 1007412593, 1007412593, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 25, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-15 09:32:51'),
(43, '', 'Hadeer Ibrahim', 'Hadeer.ibrahim@nbe.com.eg', 'Maadi', 1007412593, 1007412593, 1007412593, 7412593, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 25, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-15 09:40:07'),
(44, '', 'asdasd', 'mr.success70@yahoo.com', 'aa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-15 13:02:43'),
(45, '', 'aa', 'mr.success70@yahoo.com', 'aa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-15 13:47:56'),
(46, '', 'aaa', 'mr.success70@yahoo.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-15 13:48:59'),
(47, '', 'hadeer', 'hadeer_112@hotmail.com', 'Maadi', 1007412593, 1007412593, 1007412593, 1007412593, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 25, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-15 19:27:17'),
(48, '', 'test', 'test@test.com', 'test', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 1, NULL, NULL, NULL, NULL, 0, '2017-03-16 09:47:36'),
(49, '', 'test', 'test@test.com', 'test', 0, 0, 0, 0, 0, 88, 8, 5, 8, 89, 0, 1, 48, '860.00', 48, 24, 'guest', 1, 1, NULL, NULL, NULL, NULL, 0, '2017-03-16 09:56:25'),
(50, '', 'Hadeer ', 'Hadeer.ibrahim@nbe.com.eg', 'Maadi', 1007412593, 1007412593, 1007412593, 1007412593, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 25, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-16 10:56:07'),
(51, '', 'adsad', 'mr.success70@yahoo.com', 'aa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-16 23:08:07'),
(52, '', 'adsad', 'mr.success70@yahoo.com', 'aa', 0, 0, 0, 0, 0, 88, 8, 5, 8, 89, 0, 1, 48, '860.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-18 10:48:44'),
(53, '', 'asdasd', 'mr.success70@yahoo.com', 'aa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-18 14:12:46'),
(54, '', 'aH', 'AJ@GG.COM', 'ada2', 3, 66, 66, 66, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-20 09:47:40'),
(55, '', 'sd', 'da@fd.com', 'ddd', 36, 65, 64, 44, 0, 94, 8, 6, 8, 77, 0, 0, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-20 09:50:21'),
(56, '', 'sd', 'da@fd.com', 'ddd', 36, 65, 64, 44, 0, 94, 8, 6, 8, 77, 0, 0, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-20 09:50:36'),
(57, '', 'Ahmed Alaa eldine Mohamed', 'ahmed.elhelww@outlook.com', '23 FAWZI MOAZ ST SEMOHA', 1000079000, 0, 34208310, 0, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-23 11:30:09'),
(58, '', 'dsadafdf', 'dsdsa@dgtrt.dfgds', 'dsdsa@dgtrt.dfgds', 4232, 0, 323232, 0, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-03-29 15:34:37'),
(59, '', 'dsfsd', 'sdsadsa@frre.hh', 'dsd', 11, 0, 11, 0, 0, 86, 8, 5, 8, 77, 0, 2, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-02 15:48:46'),
(60, '', 'ferwerwer', 'sally@mv-is.com', 'saas', 11, 0, 11, 0, 0, 86, 8, 5, 8, 77, 0, 2, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-02 15:53:10'),
(61, '', 'ahmed elhelw', 'safa.tours@yahoo.com', '23 FAWZI MOAZ ST SEMOHA', 34818, 0, 10045688, 0, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-04 22:45:16'),
(62, '', 'ahmed', 'ahmed.elhelw@gmail.com', '23 FAWZI MOAZ ST SEMOHA', 100057, 0, 100058, 0, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-09 12:10:23'),
(63, '', 'zxfcsdzfv', 'dsadsa@gtghtr.ioio', 'fdfd', 1, 0, 1, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 1, NULL, NULL, NULL, NULL, 0, '2017-04-09 15:55:10'),
(64, '', 'fgfd', 'fdgfdg@ghthfg.uyiuy', 'fsd', 1, 0, 1, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 1, NULL, NULL, NULL, NULL, 0, '2017-04-09 15:58:18'),
(65, '', 'fdfsdf', 'dfd@hfhfgh.gtr', 'dfd', 11, 0, 11, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-09 16:35:16'),
(66, '', 'dddf', 'dfsdf@fretetr.uiuyiu', 'dfsdf@fretetr.uiuyiudfsdfs', 1, 0, 1, 0, 0, 88, 8, 5, 8, 89, 0, 0, 48, '860.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-09 16:56:07'),
(67, '', 'gfgfdgfd', 'ggfdgfd@gfdhgfgd.ugiuutity', 'gfdgfdg', 2, 0, 2, 0, 0, 88, 8, 5, 8, 89, 0, 1, 48, '860.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-09 16:59:54'),
(68, '', 'vfgf', 'gfdg@gdg.iuiu', 'dsd', 1, 0, 1, 0, 0, 86, 8, 5, 8, 77, 0, 0, 48, '360.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-09 17:18:45'),
(69, '', 'dsd', 'fsdfsd@tert.yuiiuy', 'fsdfsd@tert.yuiiuy', 1, 0, 1, 0, 0, 88, 8, 5, 8, 89, 0, 0, 48, '860.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-09 17:21:05'),
(70, '', 'dsd', 'fsdfsd@tert.yuiiuy', 'fsdfsd@tert.yuiiuy', 1, 0, 1, 0, 0, 88, 8, 5, 8, 89, 0, 0, 48, '860.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-09 17:26:41'),
(71, '', 'حسام الدين محمد الحلو', 'hossam.elhelw@yahoo.com', '23 شارع فوزى معاذ - سموحة', 34208310, 34256220, 1000095000, 1000096000, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-10 03:03:05'),
(72, '', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-11 15:29:12'),
(73, '', 'ahmed ', 'ahmed.elhelww@outlook.com', '23 mohamed fawzy moaz st. semouha', 1007977000, 1007977000, 2147483647, 7977000, 0, 88, 8, 5, 8, 89, 0, 1, 48, '860.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-11 15:52:41'),
(74, '', 'walid Elkelany', 'walid@mv-is.com', 'warsow', 1007020762, 1007020762, 2147483647, 7020762, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-17 21:18:45'),
(75, '', 'walid Elkelany', 'w.elkelany@gmail.com', 'cairo', 1007020762, 1007020762, 2147483647, 7020762, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 24, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-24 10:48:02'),
(76, '', 'Ahmed Alaa Eldin Elhelw', 'ahmed.elhelww@outlook.com', '20 Abu Warda St. ELGOMROK', 1007977000, 1007977000, 1007977000, 7977000, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-04-28 06:17:05'),
(77, '', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-06 17:20:22'),
(78, '', 'test', 'a.mohsen@mv-is.com', 'a.mohsen@mv-is.com', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-07 16:56:11'),
(79, '', 'test', 'a.mohsen@mv-is.com', 'a.mohsen@mv-is.com', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-07 17:34:15'),
(80, '', 'sadasdsad', 'a.mohsen@mv-is.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 0, 48, '360.00', 48, 52, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-08 11:26:18'),
(81, '', 'sadasdsad', 'a.mohsen@mv-is.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 0, 48, '360.00', 48, 52, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-08 11:29:27'),
(82, '', 'asdsad', 'aa@aa.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 0, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-08 16:29:35'),
(83, '', 'aa', 'aa@aa.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 0, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-08 16:31:48'),
(84, '', 'aa', 'aa@aa.com', 'aa@aa.com', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-08 16:46:48'),
(85, '', 'Merna elhelw', 'Merna_elhelw@yahoo.com', '2 hedaya basha street ', 1000011500, 1000048000, 1000011400, 1000011300, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 45, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-08 22:06:38'),
(86, '', 'Ahmed Alaa Eldin Elhelw', 'ahmed.elhelww@outlook.com', '20 Abu Warda St. ELGOMROK', 1007977000, 1007977000, 2147483647, 7977000, 0, 92, 8, 6, 8, 108, 0, 1, 48, '850.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-09 10:38:57'),
(87, '', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-09 15:26:17'),
(88, '', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-09 17:07:01'),
(89, '', 'Merna', 'Merna_elhelw@yahoo.com', '23 fawzi moaz street', 1000011500, 1000011200, 1006601111, 1000048000, 0, 94, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 45, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-09 23:19:50'),
(90, '', 'Merna', 'Merna_elhelw@yahoo.com', '23 fawzi moaz street', 1000011500, 1000011200, 1006601111, 1000048000, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 45, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-09 23:22:15'),
(91, 'ORDER7BFD75-41', 'aaa', 'aa@aa.com', 'aa@aa.com', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 0, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-10 12:15:11'),
(92, 'ORDER2BE3AE-41', 'aaa', 'aa@aa.com', 'aa@aa.com', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-10 12:15:54'),
(93, 'ORDER4FC696-36', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-11 14:41:57'),
(94, 'ORDER2BFA97-36', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-14 09:24:45'),
(95, 'ORDER49D5EE-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 fawzy', 1000048000, 1000048000, 1000088001, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-14 11:58:06'),
(96, 'ORDERF6326D-41', 'aasas', 'a.mohsen@mv-is.com', 'a.mohsen@mv-is.com', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-15 14:26:41'),
(97, 'ORDER0E7AC5-41', 'aaa', 'a.mohsen@mv-is.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-15 14:39:28'),
(98, 'ORDER48625D-41', 'aaa', 'aa@aa.com', 'aa@aa.com', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-15 17:38:36'),
(99, 'ORDER17CDD7-41', 'adsad', 'aa@aa.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 1, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-15 17:46:15'),
(100, 'ORDERE6F785-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 fawzy', 1000048000, 1000048000, 2147483647, 1000088001, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-15 17:53:57'),
(101, 'ORDER1A0FDD-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 Fawzy ', 1000048000, 1000048000, 1000088001, 1000088001, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-15 18:28:15'),
(102, 'ORDERD0E6A4-41', 'adsad', 'aa@aa.com', 'aaa', 0, 0, 0, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-15 18:36:56'),
(103, 'ORDER351837-41', 'aaa', 'aa@aa.com', 'aa@aa.com', 0, 0, 0, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 10:18:02'),
(104, 'ORDER23F804-41', 'Aaas', 'A@s.com', 'Ffhjjj', 123213, 0, 2245, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 10:29:29'),
(105, 'ORDER7A141A-53', 'Mahmoud', 'Mahmoud.elsayed@nbe.com.eg', 'Cairo', 1120333337, 0, 1120333337, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 53, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 10:38:24'),
(106, 'ORDERB95105-53', 'Mahmoud', 'Mahmoud.elsayed@nbe.com.eg', 'Cairo', 1120333337, 0, 1120333337, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 53, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 10:44:22'),
(107, 'ORDERCA496C-53', 'Mohamed ', 'Mahmoud.elsayed@nbe.com.eg', 'Cairo', 1120333337, 0, 1120333337, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 53, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 10:58:04'),
(108, 'ORDERF6D297-53', 'Nardin', 'Mahmoud.elsayed@nbe.com.eg', 'Cairo', 1120333337, 0, 1120333337, 0, 0, 97, 8, 6, 8, 108, 0, 2, 48, '1.00', 48, 53, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 11:10:02'),
(109, 'ORDERED6129-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 fawzy', 1000048000, 1000048000, 1000088001, 1000088001, 0, 97, 8, 6, 8, 108, 0, 0, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 11:24:59'),
(110, 'ORDER208D9F-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 fawzy', 1000048000, 1000048000, 1000088001, 1000088001, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 11:32:12'),
(111, 'ORDERE1203C-53', 'Hossam', 'Mahmoud.elsayed@nbe.com.eg', 'Cairo', 1234567891, 0, 1234567891, 0, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 53, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 11:40:27'),
(112, 'ORDER268E91-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 Fawzy ', 1000048000, 1000048000, 1000088001, 1000088001, 0, 97, 8, 6, 8, 108, 0, 1, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 12:07:31'),
(113, 'ORDER8A5E29-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 Fawzy ', 1000048000, 1000048000, 1000088001, 1000088001, 0, 97, 8, 6, 8, 108, 0, 0, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 12:19:08'),
(114, 'ORDER66B0FB-41', 'aaa', 'aa@aa.com', 'aaa', 0, 0, 0, 0, 0, 86, 8, 5, 8, 77, 0, 0, 48, '360.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 12:41:56'),
(115, 'ORDER6A10D1-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', '23 Fawzy ', 1000048000, 1000048000, 1000088001, 1000088001, 0, 97, 8, 6, 8, 108, 0, 2, 48, '1.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-16 14:11:29'),
(116, 'ORDERD36293-13', 'Ahmed', 'ahmed.elhelww@outlook.com', '20 ajqqid', 21, 55, 25, 12, 0, 95, 8, 6, 8, 89, 0, 1, 48, '410.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-17 11:42:26'),
(117, 'ORDER520516-36', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 104, 8, 5, 9, 77, 0, 1, 48, '350.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-17 15:51:44'),
(118, 'ORDER6AB810-28', 'Heba', 'hossam.elhelw@yahoo.com', '20 bahary st.', 1000048000, 0, 1000088002, 0, 0, 116, 14, 6, 9, 89, 50, 2, 58, '1.00', 48, 28, 'employee', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-17 15:51:51'),
(119, 'ORDER001939-36', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 104, 8, 5, 9, 77, 0, 1, 48, '350.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-17 15:54:52'),
(120, 'ORDERAF08E7-36', 'Mohamed', 'mohamed_shoeib@yahoo.com', 'ajman', 2147483647, 2147483647, 2147483647, 2147483647, 0, 103, 8, 5, 8, 77, 0, 2, 48, '350.00', 48, 36, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-17 16:02:37'),
(121, 'ORDER4FAD9D-41', 'asdsad', 'aa@aaa.com', 'aa@aaa.com', 0, 0, 0, 0, 0, 113, 14, 5, 8, 89, 0, 1, 48, '890.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-17 20:19:31'),
(122, 'ORDER74D9BC-26', 'Hossam Elhelw', 'hossam.elhelw@yahoo.com', 'Wee ', 1000048000, 0, 123, 123, 0, 119, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 26, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-19 04:12:27'),
(123, 'ORDER40F2CA-13', 'ahed', 'ahmed.elhelww@outlook.com', '23fadf', 25, 0, 6599, 0, 0, 119, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-23 17:37:30'),
(124, 'ORDER6B7150-13', 'Ahmed Alaa Eldin Elhelw', 'ahmed.elhelww@outlook.com', '20 Abu Warda St. ELGOMROK', 1007977000, 1007977000, 2147483647, 7977000, 0, 120, 8, 9, 9, 77, 0, 1, 48, '100.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-25 01:00:59'),
(125, 'ORDER2EE3CA-25', 'saad mohamed', 'ahmed.elhelww@outlook.com', '20 Abu Warda St. ELGOMROK', 1007977000, 1007977000, 2147483647, 7977000, 0, 104, 8, 5, 9, 77, 46, 1, 50, '320.00', 48, 25, 'employee', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-26 11:57:40'),
(126, 'ORDER3DCB2E-41', 'test', 'test@test.com', 'test', 0, 0, 0, 0, 0, 104, 8, 5, 9, 77, 0, 0, 48, '350.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-28 09:29:59'),
(127, 'ORDERAE0A1D-41', 'test', 'test@test.com', 'test', 0, 0, 0, 0, 0, 104, 8, 5, 9, 77, 0, 0, 48, '350.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-28 09:30:07'),
(128, 'ORDERAE9EA5-41', 'test', 'test@test.com', 'test', 0, 0, 0, 0, 0, 104, 8, 5, 9, 77, 0, 0, 48, '350.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-28 09:30:50'),
(129, 'ORDER6EE518-41', 'test', 'test@test.com', 'test', 0, 0, 0, 0, 0, 104, 8, 5, 9, 77, 0, 0, 48, '350.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-28 09:30:58'),
(130, 'ORDER0BBBD6-41', 'test', 'test@test.com', 'test', 0, 0, 0, 0, 0, 104, 8, 5, 9, 77, 0, 0, 48, '350.00', 48, 41, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-05-28 09:31:12'),
(131, 'ORDER49BF1D-74', 'ssss', 'sss@sss.com', 'ssss', 2222, 222, 2222, 222, 0, 125, 8, 7, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 11:43:21'),
(132, 'ORDER5E6C06-74', 'sdsdsd', 'sss@sss.com', 'ssss', 3333, 333, 3333, 3333, 0, 103, 8, 5, 8, 77, 0, 1, 48, '350.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 11:44:13'),
(133, 'ORDERAFB0C2-74', 'sdsdsd', 'sss@sss.com', 'ssss', 3333, 333, 3333, 3333, 0, 127, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 11:45:19'),
(134, 'ORDERFDBDF2-74', 'ssss', 'sss@sss.com', 'sss@sss.com', 3333, 333, 33, 3333, 0, 117, 8, 6, 8, 77, 0, 1, 48, '150.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 13:36:43'),
(135, 'ORDER6B169C-74', 'dfsdf', 'sss@sss.com', 'sss@sss.com', 33333, 3333, 333, 333, 0, 117, 8, 6, 8, 77, 0, 1, 48, '150.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 13:40:46'),
(136, 'ORDER5A99BD-74', 'ddddddd', 'sss@sss.com', 'fd', 3345454, 34345, 34534534, 534534, 0, 98, 11, 6, 8, 108, 0, 1, 48, '850.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 13:41:48'),
(137, 'ORDER3A18DD-74', 'ssss', 'sss@sss.com', 'sss@sss.com', 0, 0, 0, 0, 0, 129, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 13:52:57'),
(138, 'ORDERF90AF4-74', 'dfsdf', 'sss@sss.com', 'sss@sss.com', 33333, 3333, 333, 333, 0, 131, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 13:58:42'),
(139, 'ORDER9C20D2-74', 'dfsdf', 'sss@sss.com', 'sss@sss.com', 33333, 3333, 333, 333, 0, 103, 8, 5, 8, 77, 0, 1, 48, '350.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 14:01:47'),
(140, 'ORDERF20D7B-74', 'sssss', 'sss@sss.com', 'sss@sss.com', 0, 0, 0, 0, 0, 131, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 14:32:17'),
(141, 'ORDERFD7E79-74', 'sssss', 'sss@sss.com', 'sss@sss.com', 0, 0, 0, 0, 0, 131, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-13 14:34:43'),
(142, 'ORDER395B5A-74', 'ssss', 'sss@ssss.com', 'sss@ssss.com', 0, 0, 0, 0, 0, 103, 8, 5, 8, 77, 0, 1, 48, '350.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-14 08:28:00'),
(143, 'ORDER1824ED-74', 'sssss', 'sss@sss.com', 'sss@sss.com', 5212, 21212, 12121212, 12121, 0, 131, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-15 10:49:26'),
(144, 'ORDER546DAA-74', 'sssss', 'sss@sss.com', 'sss@sss.com', 5212, 21212, 12121212, 12121, 0, 131, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 74, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-15 10:57:52'),
(145, 'ORDER56770D-88', 'vbvbvcvcb', 'qqq@qqq.com', 'qqq@qqq.com', 2121212, 212121, 212121, 212121, 0, 118, 8, 6, 9, 77, 0, 1, 48, '150.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-28 10:36:23'),
(146, 'ORDER32A692-88', 'qqq', 'qqq@qqq.com', 'qqqqq', 907896, 785675765, 689, 798, 0, 117, 8, 6, 8, 77, 0, 1, 48, '150.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-28 13:11:03'),
(147, 'ORDER426D52-88', 'ddddd', 'xcxc@dsdf.com', 'sd', 434, 443545, 4345, 345345, 0, 117, 8, 6, 8, 77, 0, 1, 48, '150.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-28 13:17:16'),
(148, 'ORDERAF76BA-88', 'vbvbn', 'xcxc@dsdf.com', 'dfgdfgf', 54345345, 34345345, 23423432, 3456345, 0, 117, 8, 6, 8, 77, 0, 1, 48, '150.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-28 14:18:15'),
(149, 'ORDERA10C92-88', 'xxxxx', 'xcxc@dsdf.com', 'xxxxx', 342423, 34534543, 355345, 2423423, 0, 103, 8, 5, 8, 77, 0, 1, 48, '350.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-28 14:25:58'),
(150, 'ORDER107365-88', 'qqqqq', 'xcxc@dsdf.com', 'qqqqqq', 2232222, 2222, 222, 2222, 0, 131, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-28 14:36:45'),
(151, 'ORDER056FD4-88', 'qqq', 'qqq@qqq.com', 'qqq', 111, 111, 111, 111, 0, 132, 8, 9, 9, 77, 0, 1, 48, '100.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-06-28 14:42:32'),
(152, 'ORDER0C4E59-88', 'dfsdf', 'dfsd@sdsdf.dfgdfgfdg', 'sdfsdfdsf', 3432432, 4324324, 32432432, 4324324, 0, 131, 8, 9, 8, 77, 0, 1, 48, '100.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-07-17 10:35:33'),
(153, 'ORDER5D54AA-104', 'ahmed', 'ahmed.walid@mv-is.com', 'منكلسكلمسل', 321453104, 2147483647, 1111515654, 125156126, 0, 133, 16, 13, 10, 155, 0, 0, 68, '500.00', 68, 104, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-07-26 12:49:56'),
(154, 'ORDER5F37AD-101', 'ada', 'sss@eee.sdfgssef', 'aasdasdsad', 34324, 324324324, 3432432, 43243, 0, 141, 20, 16, 12, 189, 0, 0, 61, '500.00', 61, 101, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-07-27 12:08:05'),
(155, 'ORDERCDF2ED-13', 'Ahmed Alaa Eldin Elhelw', 'ahmed.elhelww@outlook.com', '20 Abu Warda St. ELGOMROK', 1007977000, 1007977000, 2147483647, 7977000, 0, 144, 8, 6, 8, 77, 0, 1, 48, '160.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-08 21:51:54'),
(156, 'ORDERF09086-13', 'ahmed', 'ah@h.com', 'aj', 5, 5, 6, 7, 0, 152, 8, 6, 8, 77, 0, 1, 48, '170.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-08 23:41:49'),
(157, 'ORDER849116-13', 'ahmed', 'ah@h.com', 'aj', 5, 5, 6, 7, 0, 152, 8, 6, 8, 77, 0, 1, 48, '170.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-08 23:43:40'),
(158, 'ORDERC69A4D-13', 'alaa', 'ahmed@af.com', '24djudj', 48, 2, 6, 12, 0, 103, 8, 5, 8, 77, 0, 1, 48, '350.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-08 23:45:46'),
(159, 'ORDER328D08-13', 'alaa', 'ahmed@af.com', '24djudj', 48, 2, 6, 12, 0, 161, 8, 5, 9, 77, 0, 1, 48, '390.00', 48, 13, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-08 23:54:55'),
(160, 'ORDERAB3323-88', 'ssssss', 'ss@ss.com', 'sss', 123, 123, 123, 123, 0, 160, 8, 5, 8, 77, 0, 1, 48, '390.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-09 09:26:15'),
(161, 'ORDER4864BD-88', 'ddddd', 'ss@ss.com', 'ssss', 111, 111, 111, 111, 0, 98, 11, 6, 8, 108, 0, 1, 48, '850.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-09 09:28:47'),
(162, 'ORDER0F3560-88', 'dddd', 'ss@ss.com', 'ssss', 111, 1111, 1111, 111, 0, 162, 8, 9, 8, 77, 0, 1, 48, '140.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-09 09:30:03'),
(163, 'ORDER6D0C1E-88', 'mahmoud', 'ddd@dd.com', 'ddd@dd.com', 213, 21334, 21334, 3434, 0, 160, 8, 5, 8, 77, 0, 1, 48, '390.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-09 11:49:27'),
(164, 'ORDER93ACEA-11', 'دينا محمد', 'dd@dd.com', 'dd@dd.com', 123, 123, 123, 123, 0, 154, 8, 6, 8, 77, 0, 1, 48, '180.00', 48, 11, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-09 11:50:40'),
(165, 'ORDER8AE8E1-108', 'aa', 'aa@aa.com', 'aa', 123, 123, 123, 123, 0, 98, 11, 6, 8, 108, 0, 1, 48, '850.00', 48, 108, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-09 11:53:15'),
(166, 'ORDERA544B2-109', 'amr', 'amr@mv-is.com', 'alobour buildings', 234324324, 2147483647, 2147483647, 2147483647, 0, 101, 13, 6, 9, 108, 0, 1, 48, '900.00', 48, 109, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-09 11:55:41'),
(167, 'ORDERB97377-88', 'jhjb', 'jhghj@kjbhj.fg', 'jbhj', 78567, 567, 56, 4, 0, 160, 8, 5, 8, 77, 0, 1, 48, '390.00', 48, 88, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-08-25 01:36:56'),
(168, 'ORDERB0636C-128', 'Mohamed torky', 'Fire.work1@hotmail.com', 'Cairo', 2147483647, 0, 2147483647, 0, 0, 160, 8, 5, 8, 77, 0, 1, 48, '390.00', 48, 128, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-11-27 01:03:06'),
(169, 'ORDER9597FB-128', 'Mohamed torky', 'Fire.work1@hotmail.com', 'Cairo', 1069211268, 0, 1069211268, 0, 0, 160, 8, 5, 8, 77, 0, 1, 48, '390.00', 48, 128, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2017-11-27 01:05:59'),
(170, 'ORDERBD70A7-105', 'Mahmoud Gabr', 'ss@ss', 'Dokki', 3333, 2147483647, 333333333, 2147483647, 0, 175, 16, 13, 11, 155, 0, 0, 68, '2000.00', 68, 105, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2018-03-07 07:57:56'),
(171, 'ORDER8E7E82-105', 'Mahmoud Gabr', 'ss@ss', 'Dokki', 4444444, 2147483647, 2147483647, 2147483647, 0, 175, 16, 13, 11, 155, 0, 2, 68, '2000.00', 68, 105, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2018-03-07 08:01:32'),
(172, 'ORDER9DC98A-105', 'Mahmoud Gabr', 'ss@ss', 'Dokki', 4454, 45345, 34534, 5345345, 0, 175, 16, 13, 11, 155, 0, 0, 68, '2000.00', 68, 105, 'guest', 1, 0, NULL, NULL, NULL, NULL, 0, '2018-03-07 09:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `visas_reservation_documents`
--

CREATE TABLE `visas_reservation_documents` (
  `id` int(11) NOT NULL,
  `visas_reservation_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visas_reservation_documents`
--

INSERT INTO `visas_reservation_documents` (`id`, `visas_reservation_id`, `image`) VALUES
(1, 21, 'images.jpg'),
(2, 22, 'images1.jpg'),
(3, 23, 'main_900.jpg'),
(4, 24, 'main_9001.jpg'),
(5, 25, 'luxor-egypt1.jpg'),
(6, 28, 'luxor-egypt2.jpg'),
(7, 30, 'luxor-egypt3.jpg'),
(8, 31, '72652517.jpg'),
(9, 32, '2017-Toyota-Hiace-Release-Date-Specs-Info1.png'),
(10, 33, '726525171.jpg'),
(11, 34, '29141073.jpg'),
(12, 35, '291410731.jpg'),
(13, 35, '72652634.jpg'),
(14, 36, '726525172.jpg'),
(15, 36, '726525173.jpg'),
(16, 44, '13-04-11_09-14-24am_483774633-1.jpg'),
(17, 44, '13-04-11_09-14-24am_483774633-11.jpg'),
(18, 45, '13-04-11_09-14-24am_483774633-12.jpg'),
(19, 45, '13-04-11_09-14-24am_483774633-13.jpg'),
(20, 46, '13-04-11_09-14-24am_483774633-14.jpg'),
(21, 46, '13-04-11_09-14-24am_483774633-15.jpg'),
(22, 47, 'Bank_Asya_Logo.jpg'),
(23, 47, 'Bank_Asya_Logo1.jpg'),
(24, 48, '13-04-11_09-14-24am_483774633-16.jpg'),
(25, 48, '13-04-11_09-14-24am_483774633-17.jpg'),
(26, 49, '13-04-11_09-14-24am_483774633-18.jpg'),
(27, 49, '13-04-11_09-14-24am_483774633-19.jpg'),
(28, 50, 'image.jpeg'),
(29, 50, 'image1.jpeg'),
(30, 51, '1.jpg'),
(31, 51, '11.jpg'),
(32, 52, '12.jpg'),
(33, 52, '13.jpg'),
(34, 53, 'about_us.jpg'),
(35, 53, 'about_us1.jpg'),
(36, 54, 'banner4.jpg'),
(37, 54, '291410732.jpg'),
(38, 55, 'can-stock-photo_csp23175140.jpg'),
(39, 55, '726526341.jpg'),
(40, 56, 'can-stock-photo_csp231751401.jpg'),
(41, 56, '726526342.jpg'),
(42, 57, '4.jpg'),
(43, 57, 'images2.jpg'),
(44, 58, '31371831_thumb.jpg'),
(45, 58, '13403316_(1).jpg'),
(46, 59, '31371831_thumb1.jpg'),
(47, 59, '129784.jpg'),
(48, 60, '31371831.jpg'),
(49, 60, '1297841.jpg'),
(50, 61, '726526343.jpg'),
(51, 61, '2017-Toyota-Hiace-Release-Date-Specs-Info11.png'),
(52, 62, '150px-Coat_of_arms_of_Egypt_(on_flag)_svg.png'),
(53, 62, '2017-Toyota-Hiace-Release-Date-Specs-Info12.png'),
(54, 63, 'Screenshot_from_2017-01-24_10:07:04.png'),
(55, 63, 'Screenshot_from_2017-01-24_10:07:041.png'),
(56, 64, 'Screenshot_from_2017-01-24_10:07:47.png'),
(57, 64, 'Screenshot_from_2017-01-24_10:07:471.png'),
(58, 65, '800x600.jpg'),
(59, 65, '946x946.jpg'),
(60, 66, '1200x500.jpg'),
(61, 66, '1300x900.jpg'),
(62, 67, '2048x1365.jpg'),
(63, 67, '1024x672.jpg'),
(64, 68, '2048x13651.jpg'),
(65, 68, '1280x853.jpg'),
(66, 69, '2048x1310.jpg'),
(67, 69, '2048x1293.jpg'),
(68, 70, '2048x13101.jpg'),
(69, 70, '2048x12931.jpg'),
(70, 71, 'IMG_0056.JPG'),
(71, 71, 'IMG_005515.JPG'),
(72, 72, 'عطلات.jpg'),
(73, 72, '16425977_761396650682682_3468171988505182044_n.jpg'),
(74, 73, 'etaa_logo.png'),
(75, 73, '726526344.jpg'),
(76, 74, '14.jpg'),
(77, 74, '15.jpg'),
(78, 75, '16.jpg'),
(79, 75, '17.jpg'),
(80, 76, 't3.jpg'),
(81, 76, '65483792.jpg'),
(82, 77, 'الجواز.jpeg'),
(83, 77, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM.jpeg'),
(84, 78, 'destination-370x370-1.jpg'),
(85, 78, 'destination-370x370-11.jpg'),
(86, 79, 'blog-800x250-1.jpg'),
(87, 79, 'accommodation-960x650-3.jpg'),
(88, 80, 'accommodation-960x650-31.jpg'),
(89, 80, 'accommodation-960x650-2.jpg'),
(90, 81, 'accommodation-960x650-32.jpg'),
(91, 81, 'accommodation-960x650-21.jpg'),
(92, 82, 'accommodation-960x650-22.jpg'),
(93, 82, 'accommodation-960x650-33.jpg'),
(94, 83, 'accommodation-960x650-1.jpg'),
(95, 83, 'accommodation-960x650-23.jpg'),
(96, 84, 'accommodation-960x650-24.jpg'),
(97, 84, 'accommodation-960x650-34.jpg'),
(98, 86, '13526018.jpg'),
(99, 86, '494363875.jpg'),
(100, 87, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM1.jpeg'),
(101, 87, 'الجواز1.jpeg'),
(102, 88, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM2.jpeg'),
(103, 88, 'الجواز2.jpeg'),
(104, 89, 'received_1503541899676222.jpeg'),
(105, 89, 'received_1503542219676190.jpeg'),
(106, 90, 'received_15035418996762221.jpeg'),
(107, 90, 'received_15035422196761901.jpeg'),
(108, 91, '18.jpg'),
(109, 91, '13-04-11_09-14-24am_483774633-111.jpg'),
(110, 92, '19.jpg'),
(111, 92, '13-04-11_09-14-24am_483774633-112.jpg'),
(112, 93, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM3.jpeg'),
(113, 93, 'الجواز3.jpeg'),
(114, 94, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM4.jpeg'),
(115, 94, 'الجواز4.jpeg'),
(116, 95, 'IMG_3553.JPG'),
(117, 95, 'IMG_35531.JPG'),
(118, 96, 'banner41.jpg'),
(119, 96, 'about-bg.jpg'),
(120, 97, 'banner3.jpg'),
(121, 97, 'bann_er4.jpg'),
(122, 98, 'blog2.jpg'),
(123, 98, 'blog2-med.jpg'),
(124, 99, 'blog21.jpg'),
(125, 99, 'blog2-med1.jpg'),
(126, 100, 'IMG_3673.PNG'),
(127, 100, 'IMG_36731.PNG'),
(128, 101, 'IMG_36732.PNG'),
(129, 101, 'IMG_36733.PNG'),
(130, 102, 'blog1-med.jpg'),
(131, 102, 'blog3-med.jpg'),
(132, 103, 'blog1-med1.jpg'),
(133, 103, 'blog3-grid.jpg'),
(134, 104, 'IMG-20170516-WA0000.jpg'),
(135, 104, 'IMG-20170515-WA0000.jpg'),
(136, 105, 'IMG_0067.JPG'),
(137, 105, 'IMG_00671.JPG'),
(138, 106, 'IMG_00672.JPG'),
(139, 106, 'IMG_00673.JPG'),
(140, 107, 'IMG_00674.JPG'),
(141, 107, 'IMG_00675.JPG'),
(142, 108, 'IMG_00676.JPG'),
(143, 108, 'IMG_00677.JPG'),
(144, 109, 'IMG_3827.PNG'),
(145, 109, 'IMG_38271.PNG'),
(146, 110, 'IMG_38272.PNG'),
(147, 110, 'IMG_38273.PNG'),
(148, 111, 'IMG_00678.JPG'),
(149, 111, 'IMG_00679.JPG'),
(150, 112, 'IMG_3892.PNG'),
(151, 112, 'IMG_38921.PNG'),
(152, 113, 'IMG_38922.PNG'),
(153, 113, 'IMG_38923.PNG'),
(154, 114, 'blog1-grid.jpg'),
(155, 114, 'blog3-med1.jpg'),
(156, 115, 'IMG_3888.PNG'),
(157, 115, 'IMG_38881.PNG'),
(158, 116, 'en_badge_web_generic.png'),
(159, 116, 'Download_on_the_App_Store_Badge_svg.png'),
(160, 117, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM5.jpeg'),
(161, 117, 'الجواز5.jpeg'),
(162, 118, 'airplane-md.png'),
(163, 118, 'en_badge_web_generic1.png'),
(164, 119, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM6.jpeg'),
(165, 119, 'الجواز6.jpeg'),
(166, 120, 'WhatsApp_Image_2016-11-27_at_8_10_20_PM7.jpeg'),
(167, 120, 'الجواز7.jpeg'),
(168, 121, 'bg.jpg'),
(169, 121, 'blog3-grid1.jpg'),
(170, 122, 'IMG_38882.PNG'),
(171, 122, 'IMG_38924.PNG'),
(172, 123, '6773146991_223967aae2_z.jpg'),
(173, 123, 'Alexandria.jpg'),
(174, 124, 'العقيق.jpg'),
(175, 124, 'موفنبيك_هاجر.jpg'),
(176, 125, '0dd35a06c0c4ffd24ec5b75c6b4e2669.png'),
(177, 125, '135260181.jpg'),
(178, 126, 'blog1-grid1.jpg'),
(179, 126, 'blog3-grid2.jpg'),
(180, 127, 'blog1-grid2.jpg'),
(181, 127, 'blog3-grid3.jpg'),
(182, 128, 'blog1-grid3.jpg'),
(183, 128, 'blog3-grid4.jpg'),
(184, 129, 'blog1-grid4.jpg'),
(185, 129, 'blog3-grid5.jpg'),
(186, 130, 'blog1-grid5.jpg'),
(187, 130, 'blog3-grid6.jpg'),
(188, 131, '110.jpg'),
(189, 131, '1@2x.jpg'),
(190, 131, '5.jpg'),
(191, 132, '111.jpg'),
(192, 132, '1@2x1.jpg'),
(193, 133, '51.jpg'),
(194, 133, '7@2x.jpg'),
(195, 133, 'l-7.jpg'),
(196, 134, 'errore.PNG'),
(197, 134, 'errore1.PNG'),
(198, 135, 'errore2.PNG'),
(199, 135, 'errore3.PNG'),
(200, 136, 'errore4.PNG'),
(201, 136, 'errore5.PNG'),
(202, 136, 'errore6.PNG'),
(203, 137, 'errore7.PNG'),
(204, 137, 'errore8.PNG'),
(205, 137, 'errore9.PNG'),
(206, 138, 'errore10.PNG'),
(207, 138, 'errore11.PNG'),
(208, 138, 'errore12.PNG'),
(209, 139, 'errore13.PNG'),
(210, 139, 'errore14.PNG'),
(211, 140, 'errore15.PNG'),
(212, 140, 'errore16.PNG'),
(213, 140, 'errore17.PNG'),
(214, 141, 'errore18.PNG'),
(215, 141, 'errore19.PNG'),
(216, 141, 'errore20.PNG'),
(217, 142, 'alex.jpg'),
(218, 142, 'madd.jpg'),
(219, 143, 'alex1.jpg'),
(220, 143, 'cairo.jpeg'),
(221, 143, 'J.jpg'),
(222, 144, 'alex2.jpg'),
(223, 144, 'd.png'),
(224, 144, 'hotel-paris-22.jpg'),
(225, 145, 'Screenshot_from_2017-06-28_12:48:25.png'),
(226, 145, 'Screenshot_from_2017-06-28_12:48:251.png'),
(227, 146, 'Screenshot_from_2017-06-28_12:50:28.png'),
(228, 146, 'Screenshot_from_2017-06-28_12:50:281.png'),
(229, 147, 'Screenshot_from_2017-06-28_12:50:282.png'),
(230, 147, 'Screenshot_from_2017-06-28_12:50:283.png'),
(231, 148, 'Screenshot_from_2017-06-28_12:50:284.png'),
(232, 148, 'Screenshot_from_2017-06-28_12:50:285.png'),
(233, 149, 'Screenshot_from_2017-06-28_12:50:286.png'),
(234, 149, 'Screenshot_from_2017-06-28_12:50:287.png'),
(235, 150, 'Screenshot_from_2017-06-28_12:50:288.png'),
(236, 150, 'Screenshot_from_2017-06-28_12:50:289.png'),
(237, 150, 'Screenshot_from_2017-06-28_12:50:2810.png'),
(238, 151, 'no-image2.jpg'),
(239, 151, 'no-image3.jpg'),
(240, 151, 'no-image4.jpg'),
(241, 152, '56013dd1c4618872398b45d6.JPG'),
(242, 152, 'alex3.jpg'),
(243, 152, 'CgqHolPWwAIpJ2i.jpg'),
(244, 153, 'RiverIcon-Nothing_svg.png'),
(245, 154, 'Chrysanthemum.jpg'),
(246, 155, 'file2-2.jpeg'),
(247, 155, 'safa_black.png'),
(248, 156, 'file-1.png'),
(249, 156, 'hamdy_002.jpg'),
(250, 157, 'file1-1.png'),
(251, 157, 'file2-22.jpeg'),
(252, 158, 'file2-23.jpeg'),
(253, 158, 'file1-11.png'),
(254, 159, 'img_002.jpg'),
(255, 159, 'file1-12.png'),
(256, 160, 'cairo_19.jpg'),
(257, 160, 'alex3.jpg'),
(258, 161, 'alex4.jpg'),
(259, 161, '56013dd1c4618872398b45d6.JPG'),
(260, 161, 'cairo_191.jpg'),
(261, 162, 'cairo_192.jpg'),
(262, 162, 'CV4IoAeXIAABhro.png'),
(263, 162, 'CgqHolPWwAIpJ2i.jpg'),
(264, 163, 'cairo_193.jpg'),
(265, 163, 'cairo_194.jpg'),
(266, 164, '^E83430CB9F5594A2978CD042A2DED96B475E861A0410570004^pimgpsh_fullsize_distr.jpg'),
(267, 164, '^E83430CB9F5594A2978CD042A2DED96B475E861A0410570004^pimgpsh_fullsize_distr1.jpg'),
(268, 165, '^E83430CB9F5594A2978CD042A2DED96B475E861A0410570004^pimgpsh_fullsize_distr2.jpg'),
(269, 165, '^E83430CB9F5594A2978CD042A2DED96B475E861A0410570004^pimgpsh_fullsize_distr3.jpg'),
(270, 165, '^E83430CB9F5594A2978CD042A2DED96B475E861A0410570004^pimgpsh_fullsize_distr4.jpg'),
(271, 166, '5.png'),
(272, 166, '51.png'),
(273, 167, 'Chrysanthemum.jpg'),
(274, 167, 'Desert.jpg'),
(275, 168, 'IMG-20171117-WA0000.jpg'),
(276, 168, 'IMG-20171117-WA0001.jpg'),
(277, 169, 'IMG-20171117-WA00001.jpg'),
(278, 169, 'IMG-20171117-WA00011.jpg'),
(279, 170, '2962631_orig.jpg'),
(280, 170, '5313807_orig.jpg'),
(281, 171, 'blueforce-diving-nuweiba.jpg'),
(282, 171, 'blueforce-diving-nuweiba_(2).jpg'),
(283, 172, 'sm1.jpg'),
(284, 172, 'sm3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `visa_documents`
--

CREATE TABLE `visa_documents` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `branches_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_documents`
--

INSERT INTO `visa_documents` (`id`, `title_ar`, `title_en`, `title_fr`, `title_ur`, `branches_id`, `active`, `created_by`) VALUES
(1, 'شهادة الميلاد', 'Birth Certificate', '', '', 48, 1, 132),
(2, 'مؤهل عالي / سجل تجاري', ' High Qualification / Commercial Register ', '', '', 48, 1, 132),
(3, 'صورة من أصل جواز السفر', 'Passport Scan', '', '', 48, 1, 132),
(4, 'صورة شخصية 4X6', 'Personal Picture 4X6', '', '', 48, 1, 132),
(5, 'السجل التجاري والبطاقة الضريبه', 'Commercial Registration and tax card', '', '', 68, 1, 143),
(6, 'صورة جواز السفر', ' passport copy', '', '', 68, 1, 143),
(7, 'صور شخصية خلفية بيضاء', 'Photos of a white background', '', '', 68, 1, 143),
(8, 'صورة شهادة التخرج', 'sssss', '', '', 61, 1, 142),
(9, 'صورة جواز السفر', 'passport Copy', '', '', 61, 1, 142),
(10, 'صورة شخصية', 'personal Photo ', '', '', 61, 1, 142),
(11, 'خطاب من جهة العمل ', 'HR Letter', '', '', 68, 1, 143),
(12, 'كشف حساب بنك لاخر 6 شهور', 'Bank statement for the last 6 months', '', '', 68, 1, 143),
(13, 'وثيقة تأمين', 'Insurance policy', '', '', 68, 1, 143),
(14, 'اوراق مطلوبه من الزوج', 'Papers required of the husband', '', '', 68, 1, 143),
(15, 'شهادة قيد من الكليه للطالب', 'Certificate of registration from the college to the student', '', '', 68, 1, 143),
(16, 'اصل جواز السفر', 'The origin of the passport', '', '', 68, 1, 143),
(17, 'حجز فندق وحجز طيران', 'Book a hotel and book a flight', '', '', 68, 1, 143),
(18, 'ملأ الأستمارة الخاصة بسفارة كل دوله ', 'Fill out the form for the Embassy of each country', '', '', 68, 1, 143),
(19, 'طيران فعلى ', 'Air flight', '', '', 68, 1, 143),
(20, 'فى حاله الدعوة من جهة او من افراد صورة ضوئيه ملونه من الدعوة مع بيانات الجهة ', 'n the case of invitation from one or the members of a light colored picture of thert ', '', '', 68, 1, 143),
(21, 'فى حاله الطلاب اثبات قيد من المدرسه او الجامعة مترجم بالانجليزيه ', 'In the case of students proof of enrollment from the school or university translated by English', '', '', 68, 1, 143),
(22, 'فى حالات سفر الاطفال مع احد الوالدين موافقة الوالد او الوالدة مترجم بالانجليزية ', 'In the case of children traveling with one of the parents, the parent or mother agrees', '', '', 68, 1, 143),
(23, ' حاله سفر الاولاد مع الاب او الام شهادة ميلاد هم مترجمة بالانجليزى ', 'The case of children traveling with their father or mother is a birth certificate translated into English', '', '', 68, 1, 143),
(24, 'دعوة سياحة لابد من توافرها لتأشيرة روسيا ', 'Tourism invitation must be available for a Russian visa', '', '', 68, 1, 143),
(25, 'مطلوب مسح لبصمات الاصابع العشرة وصورة رقميه وهى مطلوبه لمن هم اكبر من 12 عاما وصالحة لمدة خمس سنوات ', 'A fingerprint fingerprint scan is required and a digital image is required for those older than 12 years and valid for five years', '', '', 68, 1, 143),
(26, 'على كل من بلغ 16 عام ولم يسبق له السفر فى منطقة الشنجن عليه تقديم شهادات تحركات رسميه نصدر من ادارة الجوازات بمجمع التحرير بالقاهرة ', 'Anyone who has reached 16 years of age and who has never traveled in the Shingen area must present certificates of official movement issued by the Passport Department at the Liberation Complex in Cairo', '', '', 68, 1, 143),
(27, 'صورة من بطاقة الرقم القومى ', 'Copy of National ID card', '', '', 68, 1, 143);

-- --------------------------------------------------------

--
-- Table structure for table `visa_jobs`
--

CREATE TABLE `visa_jobs` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `branches_id` int(11) NOT NULL,
  `this_order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_jobs`
--

INSERT INTO `visa_jobs` (`id`, `title_ar`, `title_en`, `title_fr`, `title_ur`, `active`, `branches_id`, `this_order`, `created_by`) VALUES
(2, 'wwwwewewe', 'wwwss', '', '', 1, 25, 0, 113),
(3, 'wwww', 'wwwsss', '', '', 1, 25, 0, 113),
(8, 'لا', 'No', '', '', 1, 48, 0, 132),
(9, 'نعم', 'Yes', '', '', 1, 48, 0, 132),
(10, 'صاحب عمل', 'co. owner', '', '', 1, 68, 1, 143),
(11, 'موظف قطاع عام ', 'Public sector employee', '', '', 1, 68, 2, 143),
(12, 'صاحب عمل', 'stack holder', '', '', 1, 61, 1, 142),
(13, 'ربة منزل', 'house keeper', '', '', 1, 68, 3, 143),
(14, 'طالب', 'student', '', '', 1, 68, 4, 143),
(15, 'مدير وشريك', 'g.magaer', '', '', 1, 61, 10, 142),
(16, 'اخصائى تسويق', 'Markting ', '', '', 1, 61, 20, 142),
(17, 'محامى', 'lawyer', '', '', 1, 61, 30, 142),
(18, 'مبيعات', 'sales', '', '', 1, 61, 40, 142),
(19, 'موظف', 'employer ', '', '', 1, 61, 50, 142),
(20, 'محاسب', 'ACCOUNTANT ', '', '', 1, 61, 60, 142),
(21, 'دكتور', 'Doctor ', '', '', 1, 61, 70, 142),
(22, 'مهندس', 'Engineer ', '', '', 1, 61, 80, 142),
(23, 'مدرس', 'Teacher ', '', '', 1, 61, 80, 142),
(24, 'مهن مرتفعة', 'high professions ', '', '', 1, 61, 90, 142),
(25, 'مهنة منخفضة', 'low professions', '', '', 1, 61, 100, 142),
(26, 'موظف قطاع خاص', 'private sector employee', '', '', 1, 68, 1, 143),
(27, 'سباك', 'Plumber', '', '', 1, 68, 3, 143),
(28, 'دكتور ', 'Doctor', '', '', 1, 68, 4, 143),
(29, 'حاصل على ليسانس او بكالريوس', 'Holds a Bachelor\'s or Bachelor\'s degree', '', '', 1, 68, 5, 143),
(30, 'مهندس', 'Engineer', '', '', 1, 68, 9, 143);

-- --------------------------------------------------------

--
-- Table structure for table `visa_periods`
--

CREATE TABLE `visa_periods` (
  `id` int(11) NOT NULL,
  `period_ar` varchar(150) NOT NULL,
  `period_en` varchar(255) NOT NULL,
  `period_fr` varchar(255) NOT NULL,
  `period_ur` varchar(255) NOT NULL,
  `branches_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_periods`
--

INSERT INTO `visa_periods` (`id`, `period_ar`, `period_en`, `period_fr`, `period_ur`, `branches_id`, `active`, `created_by`) VALUES
(1, '5', '', '', '', 25, 1, 113),
(3, '8', '', '', '', 25, 0, 113),
(4, '9', '', '', '', 25, 1, 113),
(5, '90 يوم', '90 Days', '', '', 48, 1, 132),
(6, '30 يوم', '30 Days', '', '', 48, 1, 132),
(7, '10 ايام', '10 Days', '', '', 48, 1, 132),
(8, '60 يوم', '60 Days', '', '', 48, 1, 132),
(9, '14 يوم ( للمهن و المؤهلات العليا فقط )', '14 Days (High Qualifications & Jobs )', '', '', 48, 1, 132),
(10, '90 يوم ( للمهن و المؤهلات العليا فقط )', '90 Days (High Qualifications & Jobs)', '', '', 48, 1, 132),
(13, 'شهر واحد', 'one month', '', '', 68, 1, 143),
(14, 'ثلاثة شهور', 'Three months', '', '', 68, 1, 143),
(16, '90 يوم', '90 days', '', '', 61, 1, 142),
(17, '14 يوم', '14 DAYS', '', '', 68, 1, 143),
(18, 'اسبوع', '1 WEEK', '', '', 68, 1, 143),
(19, '30 يوم', '30 Days ', '', '', 61, 1, 142),
(20, '14 يوم', '14 days ', '', '', 61, 1, 142),
(21, 'عدة سفرات لمدة 3 شهور', 'Several trips for 3 months', '', '', 68, 1, 143),
(22, 'سفرتين لمدة 3 شهور', 'Two trips for 3 months', '', '', 68, 1, 143),
(23, 'متعددة السفرات لمدة 6 شهور', 'Multiple trips for 6 months', '', '', 68, 1, 143),
(24, 'تأشيرة متعددة السفرات خلال عام واكثر ', 'Multiple visa travel during the year and more', '', '', 68, 1, 143),
(25, 'سفرة واحدة', 'one way travel', '', '', 68, 1, 143),
(26, 'سفرتين', 'Two trips', '', '', 68, 1, 143),
(27, 'متعددة', 'Multiple', '', '', 68, 1, 143);

-- --------------------------------------------------------

--
-- Table structure for table `visa_types`
--

CREATE TABLE `visa_types` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `branches_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_types`
--

INSERT INTO `visa_types` (`id`, `title_ar`, `title_en`, `title_fr`, `title_ur`, `branches_id`, `active`, `created_by`) VALUES
(6, 'wwww', 'wwww', '', '', 25, 1, 113),
(7, 'qwqwq', 'qwqwqw', '', '', 25, 0, 113),
(8, 'سياحية', 'Tourism', '', '', 48, 1, 132),
(10, 'زيارة', 'Visit', '', '', 48, 1, 132),
(11, 'تجارية ( مؤهل عالي أو سجل تجاري )', ')Commercial ( High Qualification Or Commercial Register', '', '', 48, 1, 132),
(12, 'رجال أعمال', 'BusinessMen', '', '', 48, 1, 132),
(13, 'تجارية ( بدون مؤهل عالي أو سجل تجاري )', ')Commercial (Without High Qualification Or Commercial Register', '', '', 48, 1, 132),
(14, 'سياحة - رجال أعمال', 'Tourism - Businessmen', '', '', 48, 1, 132),
(16, 'سياحة ', 'Tourist ', '', '', 68, 1, 143),
(18, 'عمل ', 'labour', '', '', 68, 1, 143),
(19, 'زيارة', 'visit', '', '', 68, 1, 143),
(20, 'زيارة', 'visit', '', '', 61, 1, 142),
(21, 'سياحة', 'Tourism ', '', '', 61, 1, 142);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designs`
--
ALTER TABLE `designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designs_flight`
--
ALTER TABLE `designs_flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designs_rooms`
--
ALTER TABLE `designs_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelreservations`
--
ALTER TABLE `hotelreservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelsliders`
--
ALTER TABLE `hotelsliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels_rooms`
--
ALTER TABLE `hotels_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make_your_umrah`
--
ALTER TABLE `make_your_umrah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `programdates`
--
ALTER TABLE `programdates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programreservations`
--
ALTER TABLE `programreservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programservices`
--
ALTER TABLE `programservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programsliders`
--
ALTER TABLE `programsliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sightseeing`
--
ALTER TABLE `sightseeing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliderimages`
--
ALTER TABLE `sliderimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_offers_book`
--
ALTER TABLE `special_offers_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportations`
--
ALTER TABLE `transportations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visas`
--
ALTER TABLE `visas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visas_documents`
--
ALTER TABLE `visas_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visas_reservation`
--
ALTER TABLE `visas_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visas_reservation_documents`
--
ALTER TABLE `visas_reservation_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa_documents`
--
ALTER TABLE `visa_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa_jobs`
--
ALTER TABLE `visa_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa_periods`
--
ALTER TABLE `visa_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa_types`
--
ALTER TABLE `visa_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `designs`
--
ALTER TABLE `designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `designs_flight`
--
ALTER TABLE `designs_flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `designs_rooms`
--
ALTER TABLE `designs_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `hotelreservations`
--
ALTER TABLE `hotelreservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hotelsliders`
--
ALTER TABLE `hotelsliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `hotels_rooms`
--
ALTER TABLE `hotels_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `make_your_umrah`
--
ALTER TABLE `make_your_umrah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `programdates`
--
ALTER TABLE `programdates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `programreservations`
--
ALTER TABLE `programreservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `programservices`
--
ALTER TABLE `programservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `programsliders`
--
ALTER TABLE `programsliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `sightseeing`
--
ALTER TABLE `sightseeing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sliderimages`
--
ALTER TABLE `sliderimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `special_offers_book`
--
ALTER TABLE `special_offers_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transportations`
--
ALTER TABLE `transportations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visas`
--
ALTER TABLE `visas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `visas_documents`
--
ALTER TABLE `visas_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=956;
--
-- AUTO_INCREMENT for table `visas_reservation`
--
ALTER TABLE `visas_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
--
-- AUTO_INCREMENT for table `visas_reservation_documents`
--
ALTER TABLE `visas_reservation_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT for table `visa_documents`
--
ALTER TABLE `visa_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `visa_jobs`
--
ALTER TABLE `visa_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `visa_periods`
--
ALTER TABLE `visa_periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `visa_types`
--
ALTER TABLE `visa_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
