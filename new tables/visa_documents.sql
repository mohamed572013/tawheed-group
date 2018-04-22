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
-- Table structure for table `visa_documents`
--

CREATE TABLE `visa_documents` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `branches_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_documents`
--

INSERT INTO `visa_documents` (`id`, `title_ar`, `title_en`, `branches_id`, `active`, `created_by`) VALUES
(1, 'شهادة الميلاد', 'Birth Certificate', 48, 1, 132),
(2, 'مؤهل عالي / سجل تجاري', ' High Qualification / Commercial Register ', 48, 1, 132),
(3, 'صورة من أصل جواز السفر', 'Passport Scan', 48, 1, 132),
(4, 'صورة شخصية 4X6', 'Personal Picture 4X6', 48, 1, 132),
(5, 'السجل التجاري والبطاقة الضريبه', 'Commercial Registration and tax card', 68, 1, 143),
(6, 'صورة جواز السفر', ' passport copy', 68, 1, 143),
(7, 'صور شخصية خلفية بيضاء', 'Photos of a white background', 68, 1, 143),
(8, 'صورة شهادة التخرج', 'sssss', 61, 1, 142),
(9, 'صورة جواز السفر', 'passport Copy', 61, 1, 142),
(10, 'صورة شخصية', 'personal Photo ', 61, 1, 142),
(11, 'خطاب من جهة العمل ', 'HR Letter', 68, 1, 143),
(12, 'كشف حساب بنك لاخر 6 شهور', 'Bank statement for the last 6 months', 68, 1, 143),
(13, 'وثيقة تأمين', 'Insurance policy', 68, 1, 143),
(14, 'اوراق مطلوبه من الزوج', 'Papers required of the husband', 68, 1, 143),
(15, 'شهادة قيد من الكليه للطالب', 'Certificate of registration from the college to the student', 68, 1, 143),
(16, 'اصل جواز السفر', 'The origin of the passport', 68, 1, 143),
(17, 'حجز فندق وحجز طيران', 'Book a hotel and book a flight', 68, 1, 143),
(18, 'ملأ الأستمارة الخاصة بسفارة كل دوله ', 'Fill out the form for the Embassy of each country', 68, 1, 143),
(19, 'طيران فعلى ', 'Air flight', 68, 1, 143),
(20, 'فى حاله الدعوة من جهة او من افراد صورة ضوئيه ملونه من الدعوة مع بيانات الجهة ', 'n the case of invitation from one or the members of a light colored picture of thert ', 68, 1, 143),
(21, 'فى حاله الطلاب اثبات قيد من المدرسه او الجامعة مترجم بالانجليزيه ', 'In the case of students proof of enrollment from the school or university translated by English', 68, 1, 143),
(22, 'فى حالات سفر الاطفال مع احد الوالدين موافقة الوالد او الوالدة مترجم بالانجليزية ', 'In the case of children traveling with one of the parents, the parent or mother agrees', 68, 1, 143),
(23, ' حاله سفر الاولاد مع الاب او الام شهادة ميلاد هم مترجمة بالانجليزى ', 'The case of children traveling with their father or mother is a birth certificate translated into English', 68, 1, 143),
(24, 'دعوة سياحة لابد من توافرها لتأشيرة روسيا ', 'Tourism invitation must be available for a Russian visa', 68, 1, 143),
(25, 'مطلوب مسح لبصمات الاصابع العشرة وصورة رقميه وهى مطلوبه لمن هم اكبر من 12 عاما وصالحة لمدة خمس سنوات ', 'A fingerprint fingerprint scan is required and a digital image is required for those older than 12 years and valid for five years', 68, 1, 143),
(26, 'على كل من بلغ 16 عام ولم يسبق له السفر فى منطقة الشنجن عليه تقديم شهادات تحركات رسميه نصدر من ادارة الجوازات بمجمع التحرير بالقاهرة ', 'Anyone who has reached 16 years of age and who has never traveled in the Shingen area must present certificates of official movement issued by the Passport Department at the Liberation Complex in Cairo', 68, 1, 143),
(27, 'صورة من بطاقة الرقم القومى ', 'Copy of National ID card', 68, 1, 143);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visa_documents`
--
ALTER TABLE `visa_documents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visa_documents`
--
ALTER TABLE `visa_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
