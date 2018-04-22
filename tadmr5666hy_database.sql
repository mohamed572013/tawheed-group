-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2018 at 02:24 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tadmr5666hy_database`
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
  `image` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `url` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `title_ar`, `title_en`, `title_ur`, `image`, `country_id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'فور عمرة', '4omra', '4omra', 'images/agents/vzxenO_1518098949_6 (1).png', 1, 'http://4omra.com', '2018-02-08 14:09:09', '2018-02-08 14:09:09'),
(2, 'ماستر فيجن للحلول المتكاملة', 'Master Vision integrated solutions', 'Master Vision integrated solutions', 'images/agents/xAJ0Dc_1518098928_image001 (2).png', 1, 'http://www.mv-is.com', '2018-02-08 14:08:48', '2018-02-08 14:08:48'),
(3, 'بوابة السياحة الالكترونية', 'E-Travel Gate', 'E-Travel Gate', 'images/agents/HBO6uF_1518098895_4.png', 1, 'http://e-travelgate.com', '2018-02-08 14:08:15', '2018-02-08 14:08:15'),
(4, 'الربيع للسياحة', 'El Rabie', 'El Rabie', 'images/agents/HZgeEJ_1518098863_8.jpg', 2, 'http://demo.com', '2018-02-08 14:16:58', '2018-02-08 14:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_ar`, `title_en`, `title_ur`, `created_at`, `updated_at`) VALUES
(1, 'عمرة شعبان', 'Shabaan umrah', 'عمرة شعبان', '2018-01-29 09:33:10', '2018-01-29 09:33:10'),
(2, 'عمرة المولد النبوى', 'Moled Umrah', 'عمرة المولد النبوى', '2018-01-29 09:34:30', '2018-01-29 09:34:30'),
(3, 'عمرة رمضان', 'Ramdan Umrah', 'Ramdan Umrah', '2018-02-05 09:57:51', '2018-02-05 09:57:51');

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
  `description_ur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `image`, `country_id`, `created_at`, `updated_at`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`) VALUES
(1, 'مكة المكرمة', 'Makkah', 'مکہ', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'Makkah (Arabic ‎ Makkah   is a city in the Tihamah plain in Saudi Arabia and is also the capital and administrative headquarters of the Makkah Region.  The city is located 70 km (43 mi) inland from Jeddah in a narrow valley at a height of 277 m (909 ft) above sea level, and 340 kilometres (210 mi) south of Medina. Its resident population in 2012 was roughly 2 million, although visitors more than triple this number every year during the hajj (\"pilgrimage\") period held in the twelfth Muslim lunar month of Dhu al-Hijjah.', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'images/cities/FHFkrt_1518338759_1740900.jpg', 1, '2018-02-11 08:45:59', '2018-02-11 08:45:59', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'Makkah (Arabic ‎ Makkah   is a city in the Tihamah plain in Saudi Arabia and is also the capital and administrative headquarters of the Makkah Region.  The city is located 70 km (43 mi) inland from Jeddah in a narrow valley at a height of 277 m (909 ft) above sea level, and 340 kilometres (210 mi) south of Medina. Its resident population in 2012 was roughly 2 million, although visitors more than triple this number every year during the hajj (\"pilgrimage\") period held in the twelfth Muslim lunar month of Dhu al-Hijjah.', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي', 'Makkah (Arabic ‎ Makkah   is a city in the Tihamah plain in Saudi Arabia and is also the capital and administrative headquarters of the Makkah Region.  The city is located 70 km (43 mi) inland from Jeddah in a narrow valley at a height of 277 m (909 ft) above sea level, and 340 kilometres (210 mi) south of Medina. Its resident population in 2012 was roughly 2 million, although visitors more than triple this number every year during the hajj (\"pilgrimage\") period held in the twelfth Muslim lunar month of Dhu al-Hijjah.', 'مكة المكرمة هي مدينة مقدسة لدى المسلمين، بها المسجد الحرام، والكعبة التي تعد قبلة المسلمين في صلاتهم. تقع غرب المملكة العربية السعودية، تبعد عن المدينة المنورة حوالي 400 كيلومتر في الاتجاه الجنوبي الغربي، وعن مدينة الطائف حوالي 120 كيلومترا في الاتجاه الشرقي، وعلى بعد 72 كيلومترا من مدينة جدة وساحل البحر الأحمر، وأقرب الموانئ لها هو ميناء جدة الإسلامي، وأقرب المطارات الدولية لها هو مطار الملك عبد العزيز الدولي'),
(2, 'المدينة المنورة', 'Madina El Monawara', 'مدینہ', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام<br />\r\nوثاني أقدس الأماكن لدى المسلمين بعد مكة. <br />\r\nهي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية،<br />\r\n تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'is a city and administrative headquarters of the Al-Madinah Region of Saudi Arabia. At the city\'s heart is al-Masjid an-Nabawi (\"the Prophet\'s Mosque\"), which is the burial place of the Islamic prophet Muhammad, and is the second-holiest city in Islam after Mecca.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'images/cities/8tIUBR_1518338741_المدينة-المنورة.jpg', 1, '2018-02-13 10:07:55', '2018-02-13 10:07:55', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'is a city and administrative headquarters of the Al-Madinah Region of Saudi Arabia. At the city\'s heart is al-Masjid an-Nabawi (\"the Prophet\'s Mosque\"), which is the burial place of the Islamic prophet Muhammad, and is the second-holiest city in Islam after Mecca.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.', 'is a city and administrative headquarters of the Al-Madinah Region of Saudi Arabia. At the city\'s heart is al-Masjid an-Nabawi (\"the Prophet\'s Mosque\"), which is the burial place of the Islamic prophet Muhammad, and is the second-holiest city in Islam after Mecca.', 'المدينة المنورة يلقبها المسلمون \"طيبة الطيبة\" أول عاصمة في تاريخ الإسلام، وثاني أقدس الأماكن لدى المسلمين بعد مكة. هي عاصمة منطقة المدينة المنورة الواقعة على أرض الحجاز التاريخية غرب المملكة العربية السعودية، تبعد المدينة المنورة حوالي 400 كم عن مكة المكرمة في الاتجاه الشمالي الشرقي، وعلى بعد حوالي 150 كم شرق البحر الأحمر، وأقرب الموانئ لها هو ميناء ينبع والذي يقع في الجهة الغربية الجنوبية منها ويبعد عنها 220 كم،تبلغ مساحة المدينة المنورة حوالي 589 كم²  منها 99 كم² تشغلها المنطقة العمرانية، أما باقي المساحة فهي خارج المنطقة العمرانية، وتتكون من جبال ووديان ومنحدرات سيول وأراض صحراوية وأخرى زراعية ومقابر وأجزاء من شبكة الطرق السريعة.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title_ar`, `title_en`, `title_ur`, `created_at`, `updated_at`) VALUES
(1, 'المملكة العربية السعودية', 'Kingdom of Saudi Arabia', 'سعودی عرب کا دورہ', '2018-01-16 13:07:54', '2018-01-16 13:07:54'),
(2, 'مصر', 'Egypt', 'مصر', '2018-02-08 14:16:45', '2018-02-08 14:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `sign` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title_ar`, `title_en`, `title_ur`, `sign`, `price`, `created_at`, `updated_at`) VALUES
(1, 'الدولار الأمريكى', 'Dollar', 'الدولار الأمريكى', '$', 1, '2018-01-29 09:09:47', '2018-01-29 09:09:47'),
(3, 'جنية إسترلينى', 'Pound Sterling', 'جنية إسترلينى', '£', 5, '2018-02-18 14:33:41', '2018-02-18 14:33:41'),
(4, 'ريال سعودي', 'Saudi Riyale', 'SAR', 'SR', 1, '2018-02-13 10:21:21', '2018-02-13 10:21:21');

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
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title_ar`, `title_en`, `title_ur`, `image`, `created_at`, `updated_at`) VALUES
(1, 'واي فاي', 'Wifi', 'واي فاي', 'images/features/KNW3Fe_1518335910_download.png', '2018-02-11 07:58:30', '2018-02-11 07:58:30'),
(2, 'مسجد', 'Masjed', 'مسجد', 'images/features/icYoYc_1518335901_mosque_318-124899.jpg', '2018-02-11 07:58:21', '2018-02-11 07:58:21'),
(3, 'ممنوع التدخين', 'No smoking', 'ممنوع التدخين', 'images/features/iWa30s_1518335891_661206_max.jpg', '2018-02-11 07:58:11', '2018-02-11 07:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title_ar`, `title_en`, `title_ur`, `image`, `created_at`, `updated_at`) VALUES
(2, 'ألمدينة المنورة', 'El Madina monawra', 'El Madina monawra', 'images/gallery/WS0C4r_1518099307_فنادق-المدينة-المنورة.jpg', '2018-02-08 14:15:07', '2018-02-08 14:15:07'),
(3, 'المسجد النبوي', 'Mosque', 'Mosque', 'images/gallery/GNLRzM_1518099294_المدينة-المنورة.jpg', '2018-02-08 14:14:54', '2018-02-08 14:14:54'),
(4, 'مكة المكرمة', 'Mecca', 'Mecca', 'images/gallery/Ew0zQf_1518099232_قنديل-الكعبة.jpg', '2018-02-08 14:13:52', '2018-02-08 14:13:52'),
(5, 'الحج', 'HAjj', 'Hajj', 'images/gallery/S0pmj0_1518099207_الكعبة2.jpg', '2018-02-08 14:13:27', '2018-02-08 14:13:27'),
(7, 'باب و كسوة الكعبة', 'Mecca', 'Mecca', 'images/gallery/kwxUQ2_1518099169_باب_وكسوة_الكعبة.jpg', '2018-02-08 14:12:49', '2018-02-08 14:12:49'),
(8, 'مكة المكرمة', 'Mecca', 'Mecca', 'images/gallery/u0eoPO_1518099111_14528.jpg', '2018-02-08 14:11:51', '2018-02-08 14:11:51'),
(9, 'المسجد النبوي', 'Mosque', 'Mosque', 'images/gallery/qDzZXl_1518099090_timthumb.jpg', '2018-02-08 14:11:30', '2018-02-08 14:11:30'),
(11, 'الكعبة المشرفة', 'Kaaba Mecca', 'kaaba Mecca', 'images/gallery/5ZyfZU_1518099000_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', '2018-02-08 14:10:00', '2018-02-08 14:10:00'),
(13, 'غار حراء', 'Hiraa cave', 'غار حراء', 'images/gallery/wPuy9u_1518595180_5-28-12.jpg', '2018-02-14 07:59:40', '2018-02-14 07:59:40');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`, `image`, `country_id`, `city_id`, `features`, `distance_from_the_haram`, `stars`, `created_at`, `updated_at`) VALUES
(3, 'قصر مكة رافلز', 'Raffles Makkah Palace', 'Raffles Makkah Palace', 'يقع قصر مكة رافلز في مجمع أبراج البيت الراقي، ويوفر إطلالات على المسجد الحرام والكعبة، ويتميز بأجنحة واسعة مع إطلالات بانورامية وخدمة الخادم الشخصي على مدار 24 ساعة، ويبعد مكان الإقامة مسافة 50 متر فقط من برج الساعة في مكة، ويمكن للضيوف الاستمتاع بخدمة الواي فاي مجانًا في جميع أنحاء الفندق.<br />\r\n<br />\r\nتتميز جميع الأجنحة الكبيرة والمكيفة بديكور فاخر مع أرضيات رخامية وسجاد شرقي، وتضم جميعها غرفة معيشة كبيرة وحمام خاص.<br />\r\n<br />\r\nيضم قصر مكة رافلز مطعمين مختلفين يقدمان تشكيلة كبيرة من المأكولات، كما يتوفر في الفندق استراحة شاي ومقهى للمثلجات، ويقدم مطعم Levantine Al Majlis للمأكولات الراقية تجربة تناول الطعام مع لمسة مطبخ البحر المتوسط التقليدي، ويوفر التراس إطلالة على المسجد الحرام والكعبة.<br />\r\n<br />\r\nيمكن للضيوف الاسترخاء في السبا الهادئ في قصر مكة أو ممارسة التمارين الرياضية في الجيم المنفصل للرجال والسيدات، ويضم الفندق العديد من الأماكن الخاصة حيث يمكن للضيوف الاستمتاع بقراءة كتاب في هدوء أو التواصل مع ضيوف آخرين.<br />\r\n<br />\r\nيبعد مطار جدة الدولي ما يزيد قليلًا عن ساعة واحدة فقط بالسيارة، ويقع المدخل الجنوبي للمسجد الحرام مباشرة على الجانب الآخر من الشارع من الفندق.', 'Featuring free WiFi, a restaurant and a terrace, Raffles Makkah Palace offers accommodations in Mecca. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEvery room has a flat-screen TV with satellite channels. Certain rooms include a sitting area for your convenience. You will find a coffee machine in the room. The rooms come with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nThere is a 24-hour front desk, an ATM and a gift shop at the property.<br />\r\n<br />\r\nMadhbah Isma`Il is 4.3 km from Raffles Makkah Palace, and Al Jamrah al Wusta is 4.3 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from Raffles Makkah Palace. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Mecca! Guests are happier about it compared to other properties in the area.', 'Featuring free WiFi, a restaurant and a terrace, Raffles Makkah Palace offers accommodations in Mecca. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEvery room has a flat-screen TV with satellite channels. Certain rooms include a sitting area for your convenience. You will find a coffee machine in the room. The rooms come with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nThere is a 24-hour front desk, an ATM and a gift shop at the property.<br />\r\n<br />\r\nMadhbah Isma`Il is 4.3 km from Raffles Makkah Palace, and Al Jamrah al Wusta is 4.3 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from Raffles Makkah Palace. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Mecca! Guests are happier about it compared to other properties in the area.', 'قصر مكة رافلز', 'Raffles Makkah Palace', 'Raffles Makkah Palace', 'قصر مكة رافلز', 'Raffles Makkah Palace', 'Raffles Makkah Palace', 'images/hotels/DNCKHG_1518452086_1740900.jpg', 1, 1, '[\"1\",\"2\",\"3\"]', '20 M', 5, '2018-02-19 13:10:09', '2018-02-19 13:10:09'),
(4, 'فندق ساعة مكة فيرمونت', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'يقع هذا الفندق الفاخر الذي يتألف من 76 طابق على بعد 100 متر فقط من المسجد الحرام، وداخل برج ساعة مكة المكرمة، ويعتبر واحداً من أطول المباني في العالم. ويضم مركز للياقة البدنية مجهز بالكامل وحوض استحمام ساخن وساونا وغرفة بخار. ويقدم خدمات الكونسيرج على مدار الساعة.<br />\r\n<br />\r\nتحتوي جميع الوحدات في فندق ساعة مكة فيرمونت على تلفزيون إل سي دي وحمام داخلي فسيح مع حوض استحمام. كما تتمتع الغرف بإطلالات على الكعبة المشرفة والحرم والمدينة المقدسة.<br />\r\n<br />\r\nيضم فندق ساعة مكة فيرمونت 9 أماكن أكثر حداثة لتناول الطعام، تشمل Bharat ذو الطابع الهندي واستراحة Al Dar اللبنانية ومطعم Al Dira على السطح. كما يقدم الفندق قائمة خدمات شاملة للغرف على مدار الساع', 'Located in Mecca, 4.3 km from Madhbah Isma`Il, Makkah Clock Royal Tower, A Fairmont Hotel features a restaurant and free WiFi throughout the property. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nCertain accommodations feature a sitting area to relax in after a busy day. Every room is fitted with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries. A flat-screen TV is featured.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. Al Jamrah al Wusta is 4.3 km from Makkah Clock Royal Tower, and Al Mash‘ar al Haram is 9.7 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.', 'Located in Mecca, 4.3 km from Madhbah Isma`Il, Makkah Clock Royal Tower, A Fairmont Hotel features a restaurant and free WiFi throughout the property. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nCertain accommodations feature a sitting area to relax in after a busy day. Every room is fitted with a private bathroom. For your comfort, you will find bathrobes, slippers and free toiletries. A flat-screen TV is featured.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. Al Jamrah al Wusta is 4.3 km from Makkah Clock Royal Tower, and Al Mash‘ar al Haram is 9.7 km away. The nearest airport is King Abdulaziz Airport, 75.6 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Mecca, according to independent reviews.', 'فندق ساعة مكة فيرمونت', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'فندق ساعة مكة فيرمونت', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'Makkah Clock Royal Tower, A Fairmont Hotel', 'images/hotels/mNnboq_1518452059_قنديل-الكعبة.jpg', 1, 1, '[\"1\",\"2\",\"3\"]', '200 M', 5, '2018-02-19 13:08:57', '2018-02-19 13:08:57'),
(5, 'فندق أنوار المدينة موڤنبيك', 'Anwar Al Madinah Mövenpick', 'Anwar Al Madinah Mövenpick', 'يوفر فندق أنوار المدينة موفنبيك المصنف 5 نجوم مكان إقامة أنيق يقع على مسافة تقل عن 5 دقائق سيراً من المسجد النبوي الشريف، ويتميز الفندق بـ4 مطاعم في الموقع، ويتوفر استخدام الواي فاي مجاناً في جميع الغرف.<br />\r\n<br />\r\nتتميز الغرف المكيفة والأنيقة في فندق أنوار المدينة موفنبيك بأنها واسعة وعصرية، وتأتي مع ثلاجة ومكتب للعمل وتلفزيون بقنوات فضائية بالإضافة إلى حمام داخلي.<br />\r\n<br />\r\nيقع فندق أنوار المدينة موفنبيك في موقع مميز في قلب منطقة التسوق في المدينة ويتصل بمركز التسوق، ويقع أيضاً على بعد 4 كم فقط من جبل أحد وعلى بعد 3 كم من سوق التمور في المدينة المنورة.<br />\r\n<br />\r\nيوفر فندق أنوار المدينة موفنبيك خدمات غسيل الملابس والتنظيف الجاف، كما يبعد مسافة 16 كم من مطار الأمير محمد بن عبد العزيز الدولي.', 'Featuring free WiFi and a restaurant, Anwar Al Madinah Mövenpick offers accommodations in Medina. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEach room comes with a flat-screen TV with satellite channels. Certain accommodations include a sitting area where you can relax. You will find a kettle in the room. All rooms are fitted with a private bathroom fitted with a bathtub or shower. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe nearest airport is Prince Mohammed Airport, 12.9 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.', 'Featuring free WiFi and a restaurant, Anwar Al Madinah Mövenpick offers accommodations in Medina. Guests can enjoy the on-site restaurant.<br />\r\n<br />\r\nEach room comes with a flat-screen TV with satellite channels. Certain accommodations include a sitting area where you can relax. You will find a kettle in the room. All rooms are fitted with a private bathroom fitted with a bathtub or shower. For your comfort, you will find bathrobes, slippers and free toiletries.<br />\r\n<br />\r\nYou will find a 24-hour front desk at the property.<br />\r\n<br />\r\nThe nearest airport is Prince Mohammed Airport, 12.9 km from the property. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.', 'فندق أنوار المدينة موڤنبيك', 'Anwar Al Madinah Mövenpick', 'Anwar Al Madinah Mövenpick', 'فندق أنوار المدينة موڤنبيك', 'Anwar Al Madinah Mövenpick', 'Anwar Al Madinah Mövenpick', 'images/hotels/ef3x4f_1518451867_islam_introduccion.jpg', 1, 2, '[\"1\",\"2\",\"3\"]', '100 M', 5, '2018-02-19 13:08:44', '2018-02-19 13:08:44'),
(6, 'بولمان زمزم المدينة', 'Pullman Zamzam Madina', 'Pullman Zamzam Madina', 'قع بولمان زمزم المدينة في المدينة المقدسة في المدينة المنورة وعلى بعد 150 متر فقط من باب السلام من المسجد النبوي ويوفر خدمة الواي فاي مجاناً في جميع أنحاء الفندق بأكمله.<br />\r\n<br />\r\nتمزج جميع الغرف والأجنحة والتي يبلغ عددها 835 بين الحداثة العربية والأناقة الفرنسية، وتتميز جميعها بأنها مكيفة وتوفر خدمة الواي فاي مجاناً وجهاز تلفزيون بشاشة مسطحة ومرافق صنع الشاي/القهوة، وتحتوي بعض الغرف على منطقة جلوس وسرير أريكة، كما تشمل الحمامات على دش.<br />\r\n<br />\r\nيضم مكان الإقامة 4 مطاعم فريدة مثل Acacia الذي يقدم المأكولات العالمية للإفطار والغداء والعشاء طوال اليوم، كما يتميز Al Mandara بتقديم قائمة مأكولات ومأكولات شرقية تخصصية على وجبة الغداء أو العشاء.', 'Pullman Zamzam Madina offers accommodations in Medina. Guests can enjoy the on-site restaurant. Free private parking is available on site.<br />\r\n<br />\r\nSome accommodations include a sitting area where you can relax. A TV is featured.<br />\r\n<br />\r\nThere is a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. The nearest airport is Prince Mohammed Airport, 14.5 km from Pullman Zamzam Madina. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Medina! Guests are happier about it compared to other properties in the area.', 'Pullman Zamzam Madina offers accommodations in Medina. Guests can enjoy the on-site restaurant. Free private parking is available on site.<br />\r\n<br />\r\nSome accommodations include a sitting area where you can relax. A TV is featured.<br />\r\n<br />\r\nThere is a 24-hour front desk at the property.<br />\r\n<br />\r\nThe hotel also provides car rental. The nearest airport is Prince Mohammed Airport, 14.5 km from Pullman Zamzam Madina. <br />\r\n<br />\r\nThis is our guests\' favorite part of Medina, according to independent reviews.<br />\r\n<br />\r\nThis property also has one of the top-rated locations in Medina! Guests are happier about it compared to other properties in the area.', 'بولمان زمزم المدينة', 'Pullman Zamzam Madina', 'Pullman Zamzam Madina', 'بولمان زمزم المدينة', 'Pullman Zamzam Madina', 'Pullman Zamzam Madina', 'images/hotels/p2oICq_1518451851_68163283.jpg', 1, 2, '[\"1\",\"2\",\"3\"]', NULL, 5, '2018-02-12 16:10:51', '2018-02-12 16:10:51'),
(7, 'إيلاف المشاعر', 'Elaf Al Mashaer', 'Elaf Al Mashaer', 'يوفِّر فندق إيلاف المشاعر غُرفاً لغير المدخنين مع خدمة الواي فاي المجانية والمعجنات الطازجة في صالة اللوبي. يقع الفندق على طريق أجياد على بعد أكثر بقليل من 400 متر من المسجد الحرام.<br />\r\n<br />\r\nتم تزيين جميع الغرف المكيّفة بألوان ناعمة ومحايدة، وتحتوي على كرسي مريح ومكتب عمل في منطقة المعيشة. بالإضافة إلى جهاز تلفزيون ذي شاشة مسطحة وجهاز صنع الشاي/ القهوة وميني بار مجهز جيداً.<br />\r\n<br />\r\nيتم تقديم الأطباق المحلية مثل الخبز العربي والحساء الحار والمأكولات العالمية في مطعم \"المُلتَزِم\". يُطِلُّ مقهى \"المَقام\" على شارع أجياد، ويقدم وجبات الإفطار والغداء والعشاء.<br />\r\n<br />\r\nيقع فندق إيلاف المشاعر على بعد 90 كيلومتر من مطار جِدّة الدولي. ويبعد مسافة 5 دقائق بالسيارة عن الجمرة الوسطى.', 'Elaf Al Mashaer features non-smoking rooms with free Wi-Fi and fresh pastries in its lobby lounge. On Ajyad Road, the hotel is just over a quarter mile from the Al-Masjid al-Ḥarām.<br />\r\n<br />\r\nAll air-conditioned rooms are decorated in soft, neutral colors and feature an armchair and work desk in the living area. Each room has a flat-screen TV, a tea / coffee maker and well-stocked minibar.<br />\r\n<br />\r\nRegional dishes such as Arabic bread, spicy stews and international cuisine are served in Al Multazim restaurant. Al Maqam Coffee Shop overlooks Ajyad Street and is open for breakfast, lunch and dinner.<br />\r\n<br />\r\nHotel Elaf Al Mashaer is 90.1 km from Jeddah international Airport. Al Jamrah al Wusţá is a 5-minute drive away.', 'Elaf Al Mashaer', 'فندق إيلاف المشاعر', 'Elaf Al Mashaer', 'Elaf Al Mashaer', 'فندق إيلاف المشاعر', 'Elaf Al Mashaer', 'Elaf Al Mashaer', 'images/hotels/NUTOlt_1518336180_57566766.jpg', 1, 1, '[\"1\",\"2\",\"3\"]', '50 m', 5, '2018-02-19 13:08:08', '2018-02-19 13:08:08');

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
(10, 1, 'test', 5, 'test', 5, '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '[\"0\",\"0\"]', '[\"0\",\"0\"]', '[\"1\",\"3\"]', 'test', 'test@test.com', '4444444444444444', 'test', 0, '2018-02-21', '2018-02-28', '2018-02-19 13:32:24', '2018-02-19 13:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `title_ar`, `title_en`, `title_ur`, `created_at`, `updated_at`) VALUES
(1, 'إفطار', 'breakfast', 'إفطار', '2018-01-29 09:25:26', '2018-01-29 09:25:26'),
(2, 'افطار و عشاء', 'Breakfast and dinner', 'Breakfast and dinner', '2018-02-05 09:41:25', '2018-02-05 09:41:25'),
(3, 'كامل الوجبات شرق اسيا', 'All meals East Asian', 'All meals East Asian', '2018-02-05 09:44:54', '2018-02-05 09:44:54');

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
(26, 'test', 'test@test.com', 'test', 'ttest', '2018-02-18 11:39:49', '2018-02-18 11:39:49');

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
(34, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `title_ar`, `title_en`, `title_ur`, `created_at`, `updated_at`) VALUES
(1, 'مصرى', 'Egyption', 'مصرى', '2018-01-29 09:11:59', '2018-01-29 09:11:59'),
(2, 'سعودى', 'Suadi', 'سعودى', '2018-01-29 09:12:12', '2018-01-29 09:12:12'),
(3, 'باكستاني', 'Pakistani', 'Pakistani', '2018-02-05 07:23:51', '2018-02-05 07:23:51');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`, `image`, `created_at`, `updated_at`) VALUES
(1, 'خطوات أداء العمرة', 'Umrah guide', 'خبر 1', 'الإحرام\r\nيعتبر الإحرام نيّة الدّخول في رحلة العمرة، ومن المحبّب أن يتلفّظ المسلم المعتمر بقول ( لبّيك عمرة لبّيك عمرة ) وذلك عند إحرامه. يُحرم الرّجل في ملابس الإحرام وهي مكوّنة من إزار ورداء من غير المخيط، ويستحبّ أن يكون لونهما أبيضاً، وإذافة إلى ذلك يعتبر الاغتسال والطّيب والتنظّف من السنن المحبّب اتّباعها قبل الإحرام، وعلى المعتمر أن يقول بعد الإحرام: \" لبّيك اللهم لبّيك، لبّيك لا شريك لك لبّيك، إنّ الحمد والنّعمة لك والملك لا شريك لك\". أمّا المرأة فليس لها لباسٌ محدّد للإحرام كما يعتقد البعض، ولكن لا يجوز لها لبس القفّازين أو ارتداء النّقاب كما بيّن النبيّ عليه الصّلاة السلام حيث قال: (لا تنتقب المحرمة ولا تلبس القفّازين).\r\n\r\n\r\n\r\nالطواف\r\nيتكوّن الطّواف من سبعة أشواط على مدار الكعبة؛ حيث يبدأ كلّ شوط من هذه الأشواط من أمام الحجر الأسود، وينتهي عند ذلك الحجر، أمّا الكعبة فتكون على يسار المعتمر أثناء مرحلة الطّواف، كما أنّه يسنّ للمعتمر أن يقوم بمسارعة المشي مع تقارب الخطوات، ويكون ذلك في الأشواط الثلاثة الأولى تحديداً. الصّلاة عند المقام من السنّة للشّخص المعتمر عندما يتوجّه للصّلاة في المقام أن يبدأ بتلاوة قوله تعالى \"واتّخذوا من مقام إبراهيم مصلى\"، ومن السنّة كذلك أن يصلّي المعتمر ركعتين بعد إتمامه طوافه، ويستطيع بعد الصلاة أن يشرب من ماء زمزم ويلمس الحجر الأسود .\r\n\r\n\r\n\r\nالسعي\r\nويكون السّعي عبارةً عن سبعة أشواط، تبدأ عند الصفا وتنتهي عند المروة، كما أنّه من السنّة النبويّة الشّريفة أن يقول المعتمر عندما يقترب من الصّفا \"إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللَّهِ فَمَنْ حَجَّ الْبَيْتَ أَوْ اعْتَمَرَ فَلَا جُنَاحَ عَلَيْهِ أَنْ يَطَّوَّفَ بِهِمَا وَمَنْ تَطَوَّعَ خَيْرًا فَإِنَّ اللَّهَ شَاكِرٌ عَلِيمٌ\" وذلك في بداية الشّوط الأول. وإن وصل المعتمر الصّفا يرى الكعبة فيرفع يديه للدعاء ويقول: \" الله أكبر الله أكبر الله أكبر، لا إله إلا الله وحده لا شريك له له الملك وله الحمد وهو على كل شيء قدير، لا إله إلا الله وحده لا شريك له أنجز وعده ونصر عبده وهزم الأحزاب وحده\"\r\n\r\nحلق شعر الرأس أو تقصيره\r\nيعتبر الحلق أو التّقصير من واجبات العمرة إلّا أن الحلق أفضل من التّقصير وذلك للرّجل، أمّا المرأة فليس شرطاً عليها أن تقصّر شعرها، ولا يجوز لها الحلق.', 'Before passing the Meeqat  (the place where the Umrah starts, and one enters the state of Ihram\r\n Men to get changed into their Ihram (2 pieces of white cloth), preferably after one of the 5 daily prayers\r\n Make niyyah (intention) for Umrah\r\nMake the Talbiyah \r\nEntering Masjid Al Haram ‐ (in Makkah, Saudia Arabia)\r\n Enter with your right foot\r\n Make duaa of the Masjid\r\nTawaf (7 rounds around the Ka\'bah) ‐ You must be in Wudu (ablution)\r\nAfter Completing Tawaf, proceed to Maqaam‐e Ibraaheem ‐ (Prophet Ibraaheem\'s station)', 'Before passing the Meeqat  (the place where the Umrah starts, and one enters the state of Ihram\r\n Men to get changed into their Ihram (2 pieces of white cloth), preferably after one of the 5 daily prayers\r\n Make niyyah (intention) for Umrah\r\nMake the Talbiyah \r\nEntering Masjid Al Haram ‐ (in Makkah, Saudia Arabia)\r\n Enter with your right foot\r\n Make duaa of the Masjid\r\nTawaf (7 rounds around the Ka\'bah) ‐ You must be in Wudu (ablution)\r\nAfter Completing Tawaf, proceed to Maqaam‐e Ibraaheem ‐ (Prophet Ibraaheem\'s station)', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1  news 1', 'خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1   خبر 1', 'images/news/HlqltU_1518099753_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', '2018-02-08 14:22:33', '2018-02-08 14:22:33'),
(2, 'كيفية أداء مناسك الحج', 'How to Perform Hajj', 'How to Perform Hajj', 'كيفية أداء مناسك الحج\r\n       \r\nالحج\r\nبُني الإسلام على خمس فرائض: شهادة أن لا إله إلا الله وأنّ مُحمّداً رسول الله، وإقامة الصّلاة، وإيتاء الزّكاة، وصوم رمضان، وحجّ بيت الله الحرام لمن استطاع إليه سبيلاً. والحج فرض على كلّ مُسلم قادر، والقدرة تعني القدرة الجسديّة والماليّة، وأن يكون الحاجّ آمن على أهله في غيابه وهي فريضة لمرّة واحدة على المسلم، وما زاد عن هذه المرّة فهو تطوّع منه. وقد فُرِضَ الحج منذ عهد النبيّ إبراهيم عليه السّلام بعد أن أتمّ بناء الكعبة هو وولده إسماعيل عليهما السّلام بناءً على أمر الله تعالى. يحجّ المسلمون إلى بيت الله الحرام في أول ذي الحجّة، بحيث تكون وقفة عرفة في اليوم التّاسع، ويتحلّلون في اليوم العاشر وينحرون الإبل والأغنام.\r\n\r\n\r\nمناسك الحج\r\nُمكن للمسلم أن يؤدّي الحج باتّباع ما يأتي بالتّرتيب: تبدأ مناسك الحج بالخروج من البيت بنيّة الحج، وذلك لحديث الرّسول عليه الصّلاة والسّلام: (إنما الأعمالُ بالنياتِ، وإنما لكلِّ امرئٍ ما نوى، فمن كانت هجرتُه إلى دنيا يصيُبها، أو إلى امرأةٍ ينكحها، فهجرتُه إلى ما هاجر إليه).\r\n\r\n\r\n\r\nيبدأ الحجّ بالإحرام عند حدود الميقات، ويكون بارتداء لباسٍ بسيط يتكوّن من ردائين غير مخيطين للرجل، وللمرأة ما تشاء أن ترتدي دون زينة أو تبرّج. والمواقيت نوعان: مواقيت زمنية ومكانيّة؛ فالميقات الزمانيّ هو وقت الحج لقوله تعالى في كتابه العزيز: (الْحَجُّ أَشْهُرٌ مَّعْلُومَاتٌ)،\r\n\r\n\r\n\r\nاتّجاه الحاج إلى مكّة بعد الاستحمام أو الوضوء. دخول الحرم والبدء بالطّواف حول الكعبة سبعة أشواط، حيث يبدأ كلّ شوط منها بالحجر الأسود ويكون على يسار الحاج، ويجب على الحاجّ أن يستلم الحجر الأسود بكل شوط بالتّقبيل، أو أن يشير إليه من مكانه إذا عجز عن الوصول. وينبغي على الطّائف أن يتحاشى إيذاء من هم بجاوره من الحُجّاج بالمُزاحمة، أو الدّفع باليد وما شابه حتّى لا ينتقص من ثوابه شيء. السعي بعد الطّواف بين الصّفا والمروة سبع مرات؛ والصفا والمروة هما جبلان بمكّة تأسِّياً بسعي هاجر زوجة إبراهيم عليه السلام وأم إسماعيل عليه السّلام بينهما في القصّة الشّهيرة بحثاً عن الماء، وقد ورد أمر السّعي واضحاً في المجموع بأنّ الرّسول عليه الصّلاة والسّلام استقبل القبلة في السّعي، وقال كما جاء في الحديث الشّريف: (يا أيها الناسُ، اسْعَوا! فإن السعْيَ قد كُتِبَ عليكُم).\r\n\r\n\r\n\r\nالتوجّه إلى مِنى، وهو مكان يبعد عن مكّة بثلاثة أميال، وهو المكان الذي تُرمى به الجمرات- بعد طواف القدوم في الثّامن من ذي الحجّة. الانطلاق إلى عرفة في التّاسع من ذي الحجّة، وجمع صلاتَي الظّهر والعصر لقول الرّسول عليه الصّلاة والسّلام: (الحجُّ عرفةُ، فمن أدرك ليلةَ عرفةَ قبل طلوعِ الفجرِ من ليلةِ جُمَعٍ فقد تمَّ حجُّه).\r\n\r\nلنّزول من عرفة إلى المُزدلفة -وهو وادٍ بين عرفة ومِنى، يبعد مسافة ميلين عن مِنى في جهة الشّرق- و يكون ذلك في ليلة العاشر من ذي الحجّة، ويتمّ جمع صلاتَي المغرب والعشاء، وبيات الليل هناك. التوجّه إلى مِنى في العاشر من ذي الحجّة ورمي الجمرات (جمرة العقبة). نحر الأضاحي في مِنى وحلق الرّأس. الذّهاب إلى مكّة للقيام بطواف الزّيارة في العاشر من ذي الحجّة بعد حلق الرّأس، ثمّ العودة إلى مِنى، كذلك يُمكن للحاج أن يقوم بالسّعي بين الصّفا والمروة إن فاته سعي اليوم الثّامن من ذي الحجّة. القيام بمِنى في يوميّ الحادي عشر والثاني عشر من ذي الحجّة، ورمي الجمرات الثّلاث بالتّرتيب: الجمرة الأولى، والجمرة الوسطى، وجمرة العقبة، والتي تقع بالقرب من مسجد الخَيْف. يمكن للحاج العودة مرّة أخرى إلى مكة والطّواف حول الكعبة الشّريفة فيما يُعرف بطواف الوداع والارتواء من ماء زمزم. نصائح للحُجّاج من الأمور التي تهمّ المسلم ليعرفها أثناء الحج فيلتزم بها ما يأتي:\r\n\r\nيعود المسلم بعد الحج خالياً من الذّنوب، إلا ما ارتبط بحقوق العباد، فلا بدّ للمسلم أن يلتزم بالفرائض ويبتعد عن الذّنوب ما استطاع؛ طمعاً ببداية جديدة بعيدةً عن الذّنوب. الابتعاد عن المُحرّمات في فترة الحج، وذلك لما ورد في القرآن الكريم: (فَمَنْ فَرَضَ فِيهِنَّ الْحَجَّ فَلا رَفَثَ وَلا فُسُوقَ وَلا جِدَالَ فِي الْحَجِّ).[٤] تجنّب أذى الآخرين، جسديّاً ولفظيّاً أو المساس بمشاعرهم. تجنّب مُفسدات الحج، كالتطيُّب، ولبس المخيط للرجال، والتّعدي على الحيوانات أو الطّيور بالصّيد، أو الاقتراب من الشّهوات، أو تغطية الوجه للمرأة.', 'The Hajj (pilgrimage to Mecca) is one of the five pillars of Islam, the obligations that all Muslims must uphold. Every adult Muslim (male or female) who has the physical and financial means is required to travel to Mecca to perform the Hajj once in his or her lifetime. In Mecca, Muslims from all over the world gather in a display of faith, unity, and solidarity by recreating the ritual that the Prophet Muhammad (peace and blessings of Allah be upon him) \r\nperformed in his last pilgrimage.\r\n\r\nBe sure you are ready to perform the Hajj. The Hajj is not to be undertaken lightly or as an afterthought. In ancient times, it was not uncommon for pilgrims to die during their journey to Mecca. Though modern conveniences now allow millions of Muslims to quickly and safely travel to and from the holy city, the Hajj should still be approached with the seriousness and dedication of these early pilgrims. Study the rituals of the Hajj, begin to clear your mind of worldly distractions, and, most importantly, be repentant for past sins, which will be forgiven during your pilgrimage.\r\nAs with all forms of Muslim worship, the Hajj must be undertaken with sincerity and out of a devotion to God (Allah). The Hajj cannot be performed for the purpose of gaining worldly recognition or material gains in this life.[1]\r\nThe Hajj must be performed in accordance with the Prophet Muhammad\'s words and deeds (peace and blessings of Allah be upon him) as described in the Sunnah.[2]', 'How to Perform Hajj', 'كيفية أداء مناسك الحج', 'How to Perform Hajj', 'How to Perform Hajj', 'كيفية أداء مناسك الحج', 'How to Perform Hajj', 'sHow to Perform Hajj', 'images/news/7j20hv_1518099706_islam_introduccion.jpg', '2018-02-08 14:21:46', '2018-02-08 14:21:46'),
(3, 'شروط العمرة', 'RULES FOR UMRAH', 'RULES FOR UMRAH', 'تمثل شروط العمرة في: <br />\r\nالبلوغ.<br />\r\n الإسلام، <br />\r\nأي أن يكون الفرد معتنق الديانة الإسلامية ويؤمن بالله عز وجل.<br />\r\n العقل.<br />\r\n الحرية<br />\r\n. الاستطاعة في أدائها.<br />\r\nواجبات العمرة من ترك واجبات العمرة عليه دم وهي كالآتي: <br />\r\nالإحرام من الميقات.<br />\r\n الحلق أو التقصير.', 'RULES FOR UMRAH<br />\r\n<br />\r\nUmrah is Sunnat Mu\'akidah: Umrah is neither imperative (Fard) nor obligatory (wajib), but performing Umrah once in a life time is Sunnat Mu\'akidah. However, once or more than once, whenever it is performed, it fetches great rewards.<br />\r\nNo Fixed Time: There is no fixed month, day or time for Umrah as it is for Hajj. As said earlier, it can be performed any time one desires.<br />\r\nThe Miqat for Umarh: The station of Ihram (Miqat) for Umrah is Hill for the residents of the Haram of Mecca and the people of Hill. As mentioned later, the area between the five appointed Miqats of Hajj and the bounds of the Haram of Mecca is called Hill. The Afaqis (outsiders) who come to Mecca for Hajj and Umrah should already be in Ihram before entering into Mecca. However, for subsequent Umrahs, even they have to go to Hill to put on Ihram. For this purpose, buses outside Bab Abdul Aziz of al-Haram take pilgrims to Masjid Aai\'sha which is in Hill on Madinah Road at Tan\'eem, not far from Mecca.<br />\r\nThe Rites of Umrah: The only rites of Umrah are:<br />\r\nEntering the state of Ihram<br />\r\nTawaf of Ka\'bah<br />\r\nSa\'yee between the hills of Safa and Marwah<br />\r\nShaving or clipping of the hair', 'Umrah is Sunnat Mu\'akidah: Umrah is neither imperative (Fard) nor obligatory (wajib), but performing Umrah once in a life time is Sunnat Mu\'akidah. However, once or more than once, whenever it is performed, it fetches great rewards.<br />\r\nNo Fixed Time: There is no fixed month, day or time for Umrah as it is for Hajj. As said earlier, it can be performed any time one desires.<br />\r\nThe Miqat for Umarh: The station of Ihram (Miqat) for Umrah is Hill for the residents of the Haram of Mecca and the people of Hill. As mentioned later, the area between the five appointed Miqats of Hajj and the bounds of the Haram of Mecca is called Hill. The Afaqis (outsiders) who come to Mecca for Hajj and Umrah should already be in Ihram before entering into Mecca. However, for subsequent Umrahs, even they have to go to Hill to put on Ihram. For this purpose, buses outside Bab Abdul Aziz of al-Haram take pilgrims to Masjid Aai\'sha which is in Hill on Madinah Road at Tan\'eem, not far from Mecca.<br />\r\nThe Rites of Umrah: The only rites of Umrah are:<br />\r\nEntering the state of Ihram<br />\r\nTawaf of Ka\'bah<br />\r\nSa\'yee between the hills of Safa and Marwah', 'شروط العمرة', 'xx', 'xx', 'شروط العمرة', 'xx', 'xx', 'images/news/gzkoHp_1518335212_1740900.jpg', '2018-02-14 08:14:48', '2018-02-14 08:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title_ar`, `title_en`, `title_ur`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'عمرة اونلاين', 'Umrah online', 'Umrah online', 'images/partners/9UdqlR_1518000211_3.png', 'http://www.3omra-online.com', '2018-02-07 10:43:31', '2018-02-07 10:43:31'),
(2, 'ماستر فيجن للحلول المتكاملة', 'Master Vision integrated solutions', 'Master Vision integrated solutions', 'images/partners/LlFr9F_1518000095_image001 (2).png', 'http://www.mv-is.com', '2018-02-07 10:41:35', '2018-02-07 10:41:35'),
(3, 'بوابة السياحة الالكترونية', 'E-Travel Gate', 'E-Travel Gate', 'images/partners/PnLXwR_1518000059_4.png', 'http://e-travelgate.com', '2018-02-07 10:40:59', '2018-02-07 10:40:59'),
(4, 'فور عمرة', '4omra', '4omra', 'images/partners/IKjhsk_1518000030_6 (1).png', 'http://www.4omra.com/ar', '2018-02-07 10:40:30', '2018-02-07 10:40:30'),
(5, 'جاز تورز', 'Gaz Tours', 'Gaz Tours', 'images/partners/vVYcyl_1518000014_^1F6F6C3CCB727707963C350894EFE95B2313610CD0180BACEC^pimgpsh_fullsize_distr.jpg', 'http://www.demo.com', '2018-02-07 10:40:14', '2018-02-07 10:40:14'),
(6, 'الوسام للسياحة', 'El wesam Tours', 'El wesam', 'images/partners/o5ekiI_1518000002_^3EA9F11EA6BB885AED93F50FA57828CD6833E188FB79E839C3^pimgpsh_fullsize_distr.png', 'http://www.demo.com', '2018-02-07 10:40:02', '2018-02-07 10:40:02');

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
(1, 2, 1, 3, 2000, '2018-04-04', '2018-03-05 13:38:00', '2018-03-05 13:38:00'),
(2, 1, 1, 1, 6000, '2018-03-28', '2018-02-05 10:41:53', '2018-02-05 10:41:53'),
(3, 1, 2, 4, 5000, '2018-03-21', '2018-03-05 13:38:21', '2018-03-05 13:38:21'),
(4, 2, 2, 4, 6000, '2018-04-01', '2018-03-05 13:37:50', '2018-03-05 13:37:50'),
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
(8, 1, '2018-02-28', 2, 'test', 'test@test.com', '4545454', 'yttttttttttttttttt', '[\"2\"]', '[\"1\"]', '[\"1\"]', '[\"0\"]', '[\"0\"]', '[\"1\"]', '2018-02-14 09:07:39', '2018-02-14 09:07:39');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `keywords_ar`, `keywords_en`, `keywords_ur`, `description_ar`, `description_en`, `description_ur`, `image`, `stars`, `nights`, `category_id`, `country_id`, `city_id`, `hotel_id`, `services`, `transportation_id`, `created_at`, `updated_at`) VALUES
(1, 'عمرة شعبان', 'Shabaan Umrah', 'Shabaan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'Shabaan Umrah', 'Shabaan Umrah', 'عمرة شعبان', 'Shabaan Umrah', 'Shabaan Umrah', 'عمرة شعبان', 'Shabaan Umrah', 'Shabaan Umrah', 'images/programs/9Suvpv_1518452416_الحرم-المكي-الشريف-1.jpg', 5, '[\"8\",\"9\"]', 1, 1, '[\"1\",\"2\"]', '[\"3\",\"6\"]', '[\"1\",\"2\",\"3\"]', 4, '2018-02-15 14:54:12', '2018-02-15 14:54:12'),
(2, 'عمرة رمضان', 'Ramdan Umrah', 'Ramdan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'Ramdan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'عمرة المولد النبوي الشريف', 'Ramdan Umrah', 'Ramdan Umrah', 'عمرة المولد النبوي الشريف', 'Ramdan Umrah', 'Ramdan Umrah', 'images/programs/30MGYz_1518452395_3d232cf0-364b-46ee-9598-49954b24ddb8.jpg', 5, '[\"7\",\"8\"]', 3, 1, '[\"1\",\"2\"]', '[\"3\",\"6\"]', '[\"1\",\"2\",\"3\"]', 2, '2018-02-15 14:52:49', '2018-02-12 16:19:55'),
(4, 'عمرة المولد النبوي الشريف', 'shabaan Umrah', 'عمرة المولد النبوي الشريف', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'shabaan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'عمرة المولد النبوي الشريف', 'shabaan Umrah', 'عمرة المولد النبوي الشريف', 'عمرة المولد النبوي الشريف', 'shabaan Umrah', 'عمرة المولد النبوي الشريف', 'images/programs/FDKpif_1518337134_1740900.jpg', 5, '[\"5\",\"5\"]', 2, 1, '[\"1\",\"2\"]', '[\"3\",\"5\"]', '[\"1\",\"2\",\"3\"]', 2, '2018-02-15 14:52:48', '2018-02-12 14:37:28'),
(6, 'عمرة نصف شعبان', 'ٍShabaan Umrah', 'عمرة نصف شعبان', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'ٍShabaan Umrah', 'الاقامة بالفنادق الموضحة بالبرنامج ومدة الرحلة .<br />\r\n<br />\r\n مزارات مكة المكرمة والمدينة المنورة ومشرفين من الشركة مرافقين للمجموعة  .<br />\r\n<br />\r\n الانتقالات الداخلية بالسعودية باتوبيسات مكيفة مجهزة موديلات حديثة  .<br />\r\nالبرنامج لا يشتمل على:<br />\r\nتذكرة الطيران  .<br />\r\n<br />\r\nاي طلبات اضافية اخرى غير مذكورة في البرنامج .<br />\r\n<br />\r\nاي وجبات غير مذكورة في البرنامج .<br />\r\n<br />\r\nجميع الغرف في الفنادق غرف استاندرد .<br />\r\n<br />\r\nالغرف المطله على الحرم لها قيمة اضافية في حالة طلبه', 'عمرة نصف شعبان', 'ٍShabaan Umrah', 'عمرة نصف شعبان', 'عمرة نصف شعبان', 'ٍShabaan Umrah', 'عمرة نصف شعبان', 'images/programs/7OZGRU_1518955199_20160818132135.jpg', 5, '[\"5\",\"6\"]', 1, 1, 'null', 'null', '[\"1\",\"2\",\"3\"]', 2, '2018-02-18 11:59:59', '2018-02-18 11:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `programservices`
--

CREATE TABLE `programservices` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programservices`
--

INSERT INTO `programservices` (`id`, `title_ar`, `title_en`, `title_ur`, `image`, `created_at`, `updated_at`) VALUES
(1, 'واي فاي', 'Wifi', 'واي فاي', 'images/programservices/BHENBu_1518337104_download.png', '2018-02-11 08:18:24', '2018-02-11 08:18:24'),
(2, 'مسجد', 'Mosque', 'مسجد', 'images/programservices/VIrkpo_1518337023_mosque_318-124899.jpg', '2018-02-11 08:17:03', '2018-02-11 08:17:03'),
(3, 'ممنوع التدخين', 'No smoking', 'ممنوع التدخين', 'images/programservices/cIEo1q_1518337011_661206_max.jpg', '2018-02-11 08:16:51', '2018-02-11 08:16:51');

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
(31, 'images/programs/images/fGSqfv_1518596998_68163561.jpg', 4, '2018-02-14 08:29:58', '2018-02-14 08:29:58'),
(32, 'images/programs/images/gmJJVR_1518596998_83851115.jpg', 4, '2018-02-14 08:29:58', '2018-02-14 08:29:58'),
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
(44, 'images/programs/images/9bqwfT_1518598316_18912599.jpg', 1, '2018-02-14 08:51:56', '2018-02-14 08:51:56'),
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
  `title` varchar(255) NOT NULL,
  `content_ar` text NOT NULL,
  `content_en` text NOT NULL,
  `content_ur` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `content_ar`, `content_en`, `content_ur`, `image`, `created_at`, `updated_at`) VALUES
(1, 'فور عمرة', 'من اكثر الشركات احتراما', 'one of the most respectful companies in the middle east', 'من اكثر الشركات احتراما', 'images/reviews/o6zTy0_1518001079_6 (1).png', '2018-02-07 10:57:59', '2018-02-07 10:57:59'),
(2, 'ماستر فيجن', 'تضامن العمرة من اهم شركات العمرة في الشرق الاوسط.', 'One of the leading religious Companies in middle east', 'One of the leading religious Companies in middle east', 'images/reviews/4WwRDW_1518000864_image001 (2).png', '2018-02-11 08:12:23', '2018-02-11 08:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title_ar`, `title_en`, `title_ur`, `created_at`, `updated_at`) VALUES
(1, 'فردى', 'Single', 'فردى', '2018-01-16 13:31:47', '2018-01-16 13:31:47'),
(2, 'زوجى', 'Double', 'زوجى', '2018-01-16 13:32:02', '2018-01-16 13:32:02'),
(3, 'ثلاثى', 'trpl', 'trpl', '2018-01-16 17:18:25', '2018-01-16 17:18:25');

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_ar`, `title_en`, `title_ur`, `image`, `content_en`, `content_ur`, `content_ar`, `created_at`, `updated_at`) VALUES
(1, 'اعداد برامج الحج', 'Hajj packages', 'Hajj programe', 'images/services/PMaoDD_1518099789_قرعة-حج-الجمعيات.jpg', 'Hajj packages', 'Hajj programe', 'اعداد برامج الحج', '2018-02-08 14:23:09', '2018-02-08 14:23:09'),
(2, 'اعداد برامج العمرة', 'Umrah packages', 'اعداد برامج العمرة', 'images/services/AsOifq_1518099775_68163283.jpg', 'Umrah packages', 'اعداد برامج العمرة', 'اعداد برامج العمرة', '2018-02-08 14:22:55', '2018-02-08 14:22:55');

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
(1, 'site_title_en', 'Tdamon Umrah', '2018-01-01 22:00:00', '2018-01-16 13:44:39'),
(2, 'site_logo', 'images/settings/ukx57N_1517998851_DoBKes_1517226720_ajtPcf_1516090538_logo.png', '2018-01-01 22:00:00', '2018-02-07 10:20:51'),
(3, 'site_description_en', 'Tdamon Umrah', '2018-01-01 22:00:00', '2018-01-16 13:44:39'),
(4, 'site_keywords_en', 'Tdamon Umrah', '2018-01-01 22:00:00', '2018-01-16 13:44:39'),
(5, 'site_email', 'gmtravelbookingonline@gmail.com', '2018-01-01 22:00:00', '2018-01-16 13:47:27'),
(6, 'site_phone', '0555064372', '2018-01-01 22:00:00', '2018-02-14 07:58:02'),
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
(24, 'site_title_ar', 'تضامن العمرة', NULL, '2018-01-16 06:14:58'),
(25, 'site_title_ur', 'تضامن العمرة', NULL, '2018-01-16 13:44:39'),
(26, 'site_description_ar', 'تضامن العمرة', NULL, '2018-01-16 13:44:39'),
(27, 'site_description_ur', 'تضامن العمرة', NULL, '2018-01-16 13:44:39'),
(28, 'site_keywords_ar', 'تضامن العمرة', NULL, '2018-01-16 13:44:39'),
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
(40, 'site_video', 'H5gOj8aIFl4', NULL, '2018-02-04 13:04:31'),
(41, 'why_us_en', 'Our vision is to offer the best service to our customers at competitive prices, allowing all categories of the  market to benefit from the services of various hotel sectors with highest quality Tdamun El umrah travel is one of the leading tourism and sales companies. .', NULL, '2018-02-13 15:34:20'),
(42, 'why_us_ar', 'رحلات الحج و العمرة بمفهوم شركتنا ليست فقط مناسك تؤدي . انما هى رحلة روحانيه تنقى الروح و القلب و الجسد و ندرك فيها المعنى الحقيقى لوجودنا فى الحياة لنصل لمرحلة السكينة و حسن الظن بالله . دور شركتنا فيها هو توفير كل سبل الرعاية و الرفاهية مما يعطى عميلنا الفرصة كاملة للتفرغ للعبادة باخلاص و احسان …', NULL, '2018-02-13 15:34:20'),
(43, 'why_us_ur', 'why_us_ur', NULL, NULL);

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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sightseeing`
--

INSERT INTO `sightseeing` (`id`, `title_ar`, `title_en`, `title_ur`, `content_ar`, `content_en`, `content_ur`, `image`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'جبل عرفات (جبل الرحمة)', 'Mount Arafat(Jabal-ur-Rehmah)', 'جبل عرفات (جبل الرحمة)', 'سُمِّي  عرفة  بهذا  الإسم؛ لأن الناس يتعارفون به، وقيل: سُمِّي بذلك؛ لأن جبريل طاف بإبراهيم- عليه السلام- كان يريه المشاهد فيقول له: أَعَرَفْتَ؟ أَعَرَفْتَ؟ فيقول إبراهيم: عَرَفْتُ، عَرَفْتُ. وقيل: لأن آدم-عليه السلام- لما هبط من الجنة وكان من فراقه حواء ما كان فلقيها في ذلك الموضع؛ فعرفها وعرفته.', 'The above picture shows Jabal-ur-Rehmah (Mountain of Mercy) on the plain of Arafat. Standing at Arafat is the fundamental requirement of Hajj and pilgrims come here on the 9th Dhul Hijjah (second day of Hajj).', 'سُمِّي  عرفة  بهذا  الإسم؛ لأن الناس يتعارفون به، وقيل: سُمِّي بذلك؛ لأن جبريل طاف بإبراهيم- عليه السلام- كان يريه المشاهد فيقول له: أَعَرَفْتَ؟ أَعَرَفْتَ؟ فيقول إبراهيم: عَرَفْتُ، عَرَفْتُ. وقيل: لأن آدم-عليه السلام- لما هبط من الجنة وكان من فراقه حواء ما كان فلقيها في ذلك الموضع؛ فعرفها وعرفته.', 'images/sightseeing/V3nhN1_1518515502_2012-634867733215831530-583.jpg', 1, '2018-02-13 09:51:42', '2018-02-13 09:51:42'),
(2, 'غار حراء', 'Mount Hira', 'Mount Hira', 'غار حراء، هو الغار الذي كان يختلي فيه رسول الإسلام محمد قبل نزول القرآن عليه بواسطة جبريل.', 'This is Mount Hira (Jabal Hira), which lies about two miles from the Ka’bah.', 'This is Mount Hira (Jabal Hira), which lies about two miles from the Ka’bah.', 'images/sightseeing/hRVfnL_1518515481_5-28-12.jpg', 1, '2018-02-13 09:51:21', '2018-02-13 09:51:21'),
(3, 'مقبرة البقيع', 'The Bekaa cemetery', 'مقبرة البقيع', 'البقيع هي المقبرة الرئيسة لأهل المدينة المنورة منذ عهد النبي محمد ، ومن أقرب الأماكن التاريخية إلى مبنى المسجد النبوي حالياً، ويقع في مواجهة القسم الجنوبي الشرقي من سورهِ، وقد ضمت إليه أراض مجاورة وبني حوله سور جديد مرتفع مكسو بالرخام.ولا تزال المقبرة قيد الاستخدام حتى الآن. وتبلغ مساحته الحالية مائة وثمانين ألف متر مربع؛ يضم البقيع رفات الآلاف المؤلفة من أهل المدينة ومن توفي فيها من المجاورين والزائرين أو نقل جثمانهم على مدى العصور الماضية، وفي مقدمتهم الصحابة الكرام، ويروى أن عشرة آلاف صحابي دفنوا فيه، منهم ذو النورين عثمان بن عفان ثالث الخلفاء الراشدين وأمهات المؤمنين زوجات النبي محمد عدا خديجة وميمونة، كما دفن فيه ابنته فاطمة الزهراء، وابنه إبراهيم، وعمه العباس، وعمته صفية، وزوجته عائشة بنت أبي بكر الصديق, وحفيده الحسن بن علي، وكذلك علي بن الحسين ومحمد الباقر وجعفر الصادق. عن محمد بن قيس بن مخرمة بن المطلب أنه قال: سمعت عائشة تحدث فقالت: ألا أحدثكم عن النبي صلى الله عليه وآله وسلم، وعني ؟ قلنا: بلى قالت: لما كانت ليلتي التي كان النبي فيها عندي انقلب، فوضـع رداءه، وخلع نعله، فوضعها عند رجليه.. وذكرت قصة خروجه صلى الله عليه وآله وسلم إلى البقيع ثم قالت: فجعلت درعي في رأسي، واختمرت، وتقنعت إزاري، ثم انطلقت على إثـره حتى جاء البقيع، فقام، فأطال، ثم رفع يده ثلاث مرات، ثم انحرف... وذكرت قصة عودتها قبله.... وفيه قال صلى الله عليه وآله وسلم: ((فإن جبريل أتاني... فأجبته... فقال: إن ربك يأمرك أن تأتي أهل البقيع فتستغفر لهم)) قالت عائشة: كيف أقول لهم يا رسول الله ؟ قال: ((قولي السلام على أهل الديار من المؤمنين والمسلمين، ويرحم الله المستقدمين منا والمستأخرىن وإنا إن شاء الله بكم للاحقون)).', 'Baqi is the main cemetery of the people of Medina since thetime of the Prophet Muhammad', 'البقيع هي المقبرة الرئيسة لأهل المدينة المنورة منذ عهد النبي محمد.', 'images/sightseeing/UwZY6O_1518338720_f512242b0ba24800b4a9ec0108837b40.jpg', 2, '2018-02-11 08:45:20', '2018-02-11 08:45:20'),
(4, 'جبل أُحُد', 'Mount Uhud', 'Mount Uhud', 'جبل أُحُد (بضمّ الألف والحاء) هو جبل يطل على المدينة المنوّرة من الجهة الشمالية وكان يبعد عنها ثلاثة أميال ونصف قبل أن يصله العمران.[1] يمتد الجبل كسلسلة من الشرق إلى الغرب ويميل نحو الشمال.[1] شهد جبل أحد عدة أحداث بعد ظهور الإسلام وله مكانته الدينية.[1] توجد عدة آراء حول سبب تسمية جبل أحد بهذا الاسم: الرأي الأول يقول أن الجبل سمي بهذا الاسم لتوحده عن الجبال وأنه محاط بالأودية والسهول.[1] الرأي الثاني هو أن الجبل سمي بأحد نسبة إلى رجل يدعى أحد من العماليق (السكان الأوائل التقليديين للمدينة) حيث أن أحد انتقل إلى الجبل وسكنه فسمي باسمه.[1] الرأي الثالث يقول أن الجبل سمي كذلك لأنه يرمز لوحدانية الله.[1] جيولوجية الجبل وجغرافية المنطقة أغلب صخور الجبل من الجرانيت الأحمر، وبعض الصخور تميل ألوانها إلى الأخضر الداكن والأسود، وبها عدة تجاويف تسمى \"المهاريس\" تقوم باحتجاز مياه الأمطار، وبه العديد من الكهوف والشقوق التي يتجاوز ارتفاع بعضها متراً ونصف وعمقها عشرة أمتار.[1][2] كما يضم الجبل العديد من المعادن كالحديد في الصخور الخارجية والنحاس في الصخور الداخلية.[2] يبلغ طول الجبل 7 كيلومترات وعرضه بين 2 و 3 كيلومتر وارتفاعه يصل إلى قرابة 350 متراً.[1]يبعد الجبل 5 كيلومترات عن المسجد النبوي.[2] يحد الجبل من الشمال طريق الجامعات (طريق غير المسلمين) ومن الجنوب الطريق الدائري الجنوبي ومن الشرق طريق المطار وجبل تيأب وجبل ثور في الشمال الغربي وجبل عينين في الجنوب الغربي والذي يعرف بجبل الرماة كما يمر من عند قاعدته وادي قناة والذي يتجاوزه من الغرب.[1] نباتات الجبل ينتشر بالجبل العديد من النباتات ومنها \"لوز النبي\" (مصفوفة الأوراق) والذي يعتبر جزءاً من الفصيلة الصقلابية، ويوجد به نبات \"الحميض\" والذي ينتمي إلى جنس الحماض من الفصيلة البطباطية، كما تنتشر به نباتات أخرى منها العوسج والسمر والسلم والسدر والمسيكة (شجرة الريح) والشكيرة (الشكربل أو الربلة) وشجرية أبو حاد (طرطر) وعشبة شوكة العنب (شوكة الإبل) والحنظل.[1] كما أن به العديد من النباتات المصنفة ضمن الفصيلة النجيلية والتي تموت تدريجياً بسبب انقطاع الأمطار.[2] ميدان جبل أحد هو موقع معركة غزوة أحد بين المسلمين وقريش والتي وقعت في السنة الثالثة للهجرة، حيث وقعت المعركة في جنوب غربي الجبل بالقرب من جبل الرماة.[1] قتل في تلك المعركة سبعون صحابياً منهم حمزة بن عبد المطلب عم النبي محمد، لأن الرماة تركوا الجبل فأحاط جيش قريش بهم من الخلف.[1] فضائل أحد يرى المسلمون أن جبل أحد يحبهم ويحبونه لما رواه الصحابي أنس بن مالك عن النبي أنه قال: \"هَذَا جَبَلٌ يُحِبُّنَا وَنُحِبُّهُ\"، كما أن المسلمين يرون أن الجبل من جبال الجنة لما رواه أبو عبس بن جبر الصحابي عن النبي أنه قال: \"جَبَلُ أُحُدٍ يُحِبُّنَا وَنُحِبُّهُ وَهُوَ مِنْ جِبَالِ الْجَنَّةِ\".[3] آثار أحد يضم الجبل عدة آثار منها مقبرة شهداء أحد والتي تضم أجساد 70 صحابي قتلوا أثناء غزوة أحد، كما يشتهر الجبل بالشق وهو فتحة في الجبل يقال أن النبي محمد احتمى فيها يوم غزوة أحد وتشتت المسلمين، كما يقع بالقرب منه مسجد الفسح', 'Mount Uhud is a mountain north of Medina, Saudi Arabia. It is 1,077 m (3,533 ft) high. It was the site of the second battle between Muslim and Meccan forces. The Battle of Uhud was fought on 19 March, 625 AD, between a force from the small Muslim community of Medina, in what is now north-western Arabia, and a force from Mecca.', 'Mount Uhud is a mountain north of Medina, Saudi Arabia. It is 1,077 m (3,533 ft) high. It was the site of the second battle between Muslim and Meccan forces. The Battle of Uhud was fought on 19 March, 625 AD, between a force from the small Muslim community of Medina, in what is now north-western Arabia, and a force from Mecca.', 'images/sightseeing/dpieud_1518515446_لماذا_سمي_جبل_أحد_بهذا_الإسم.jpg', 2, '2018-02-13 09:50:46', '2018-02-13 09:50:46');

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
  `url` text,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_ar`, `title_en`, `title_ur`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'صمم  عمرتك بسهولة  حسب رغباتك ببساطة - سهولة - سرعة', 'make your umrah now', 'سلايدر 1', 'http://tadamunumrah.com/uc/ar/make_your_umrah', 'images/sliders/SZabaG_1518099478_68163283.jpg', '2018-02-19 12:58:09', '2018-02-19 12:58:09'),
(3, 'الان تستمتع بالعمرة في سهولة و يسر', 'Best offers', 'افضل عروض العمرة', 'http://tadamunumrah.com/uc/ar/make_your_umrah', 'images/sliders/2mSpZd_1518336951_فنادق-المدينة-المنورة.jpg', '2018-02-19 12:58:22', '2018-02-19 12:58:22');

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
(2, 'images/special/i9bOgH_1519045331_67361658.jpg', 1, '2018-02-19 13:02:11', '2018-02-19 13:02:11');

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
(3, 'test@test.com', '2018-02-18 11:39:04', '2018-02-18 11:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `transportations`
--

CREATE TABLE `transportations` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ur` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transportations`
--

INSERT INTO `transportations` (`id`, `title_ar`, `title_en`, `title_ur`, `created_at`, `updated_at`) VALUES
(2, 'ليموزين', 'limousine', 'limousine', '2018-02-18 11:48:35', '2018-02-18 11:48:35'),
(4, 'باص', 'Bus', 'باص', '2018-02-15 14:51:19', '2018-02-15 14:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahmoud Gabr', 'admin@admin.com', '$2y$10$t87mKOdQAyez/kMvo.qYL.yTnkCJjR/XbDmfHNtjaFNireyl1084.', 'qcfeHGmvEDc3XWv2dCd9NSX364DjC3HWNYYIqIC0ItTxGKQ9wYpXNyen3hfu', '2018-01-02 12:44:33', '2018-01-02 12:44:33');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `special_offers_book`
--
ALTER TABLE `special_offers_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
