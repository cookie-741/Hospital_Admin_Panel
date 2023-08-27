-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 25, 2023 at 08:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET sql_require_primary_key = FALSE;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vr_carer`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL COMMENT 'info_id',
  `text1` varchar(1024) NOT NULL COMMENT 'info 1',
  `image1` varchar(256) DEFAULT NULL COMMENT 'image 1',
  `header` varchar(128) NOT NULL COMMENT 'header',
  `text2` varchar(1024) NOT NULL COMMENT 'paragraph',
  `image2` varchar(256) DEFAULT NULL COMMENT 'image 2',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) NOT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) NOT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `text1`, `image1`, `header`, `text2`, `image2`, `del_flg`, `create_date`, `update_date`) VALUES
(2, 'VR_Carer is a place where you can search and manage your healthcare records. From this website, finding doctor information and schedules, and booking for an appointment becomes more convenient than traditional methods. The option to check your previous appointments and prescriptions is available anytime, anywhere. With Vr_Carer, your personal healthcare management can be enhanced to a new stage.\r\n', 'Bleeding.jpg', 'Our Vision', 'From the pandemic, it becomes distinct that more convenient management system is necessary in healthcare field for the citizens, reducing time, and at the same time managing procedures more effeciently. Aiming for an enhanced digital involvment in healthcare field, we, VR_Care focus to become an essential website for personal healthcare management both patients and hospital.', 'Our Vision.jpg', 0, '2022/10/18', '2022/11/05');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL COMMENT 'admin id',
  `admin_name` varchar(128) NOT NULL COMMENT 'admin name',
  `password` varchar(128) NOT NULL COMMENT 'password',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `date_created` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `date_updated` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`, `del_flg`, `date_created`, `date_updated`) VALUES
(1, 'Phoo Pwint Maung', 'phoopwintmaung', 0, NULL, NULL),
(2, 'Min Htaw Lon', 'minhtawlon', 0, NULL, NULL),
(3, 'Kaung Zan Thaw', 'kaungzanthaw', 0, NULL, NULL),
(4, 'Khin Myint Myat San', 'khinmyintmyatsan', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL COMMENT 'id',
  `header` varchar(128) NOT NULL COMMENT 'article_header',
  `para_header` varchar(128) NOT NULL COMMENT 'paragraph_header',
  `para_text` varchar(256) NOT NULL COMMENT 'paragraph_text',
  `image` varchar(128) NOT NULL COMMENT 'article_image',
  `page_link` varchar(128) DEFAULT NULL COMMENT 'page_name',
  `del_flg` int(11) NOT NULL DEFAULT 0 COMMENT 'del_flg',
  `create_date` varchar(10) NOT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `header`, `para_header`, `para_text`, `image`, `page_link`, `del_flg`, `create_date`, `update_date`) VALUES
(6, 'Blood Donation Centers', 'Be the reason for someone\'s heartbeat', 'Regular blood donation is linked to lower blood pressure and\r\na lower risk for heart attacks. “It definitely helps to reduce cardiovascular risk factors,” says DeSimone', '6.jpg', 'blooddonation.php\r\n', 0, '2022/10/26', '2022/11/05'),
(7, 'Find Hospital Locations', 'Search Easily Hospital Locations ', ' Hospital Location', '7.jpg', 'hospital_location.php', 0, '2022/10/26', '2022/11/06'),
(8, 'First Aid For Emergency Situation', 'Why is it important to know first aid?', 'First aid is an important tool in quickly responding \r\nto accidents to ensure that injuries can be efficiently\r\nand promptly dealt with before a trained medical professional\r\narrives to administer more specialised treatment.', '8.jpg', 'emergency.php', 0, '2022/10/26', '2022/11/05'),
(10, 'BBB', 'AAA', 'AAA', 'AAA.webp', 'AAA', 1, '2022/11/04', '2022/11/04'),
(11, 'AVCS', 'dtghrh', 'dffh', 'AVCS.jpg', 'dhffh', 1, '2022/11/04', NULL),
(12, 'ewr', 'werwe', 'rwer', 'ewr.png', '434', 1, '2022/11/04', NULL),
(13, 'ewr', 'werwe', 'rwer', 'ewr.png', '434', 1, '2022/11/04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL COMMENT 'blog_id',
  `image` varchar(128) NOT NULL,
  `header` varchar(50) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `created_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `updated_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `image`, `header`, `description`, `created_date`, `updated_date`) VALUES
(15, 'Causes And Prevent.jpeg', 'Causes And Prevention', 'Dengue is a mosquito-borne viral disease of public health significance that has rapidly spread in all regions,Dengue virus is transmitted by female mosquitoes mainly of the species Aedes aegypti and, to a lesser extent, A. albopictus. The disease is widespread throughout the tropics, with local spatial variations in risk influenced strongly by rainfall, temperature and unplanned rapid urbanization', '2022/10/23', '2022/10/30'),
(16, 'Causes And Treatment.png', 'Causes And Treatment', 'Typhoid fever is caused by Salmonella typhi bacteria. Typhoid fever is rare in developed countries. It is still a serious health threat in the developing world, especially for children.\r\nDengue virus is transmitted by female mosquitoes mainly of the species Aedes aegypti and, to a lesser extent, A. albopictus. The disease is widespread throughout the tropics, with local spatial variations in risk influenced strongly by rainfall, temperature and unplanned rapid urbanization.', '2022/10/23', NULL),
(17, 'Diet Guideline For Preventsion .jpg', 'Diet Guideline For Preventsion ', 'Lead researcher Iliana Lourida said, \"Mediterranean food is both delicious and nutritious, and our systematic review shows it may help to protect the ageing brain by reducing the risk of dementia. Our review also highlights inconsistencies in the literature and the need for further research. In particular research is needed to clarify the association with mild cognitive impairment and vascular dementia.\"\r\n\r\nThe Mediterranean Diet is a lifestyle diet based on the foods that people regularly eat in countries like Greece, southern Italy and Spain. The diet boasts healthy doses of olive oil, legumes, fruits, vegetables, fish, dairy (mostly cheese and yogurt) and moderate wine consumption.\r\n\r\nTwo of the most popular items from the Mediterranean Diet are the Greek Salad, and fresh hummus. Both recipes are quick, easy and delicious!', '2022/10/23', NULL),
(18, 'dfadfa.webp', ' Be aware of schizophrenia ', 'Schizophrenia is a chronic, severe mental disorder which is one of the most disabling mental conditions. Schizophrenia affects the person’s perception of reality, thoughts, emotions, actions and their interaction with others. Patients often have difficulty maintaining relationships and performing at work or school. This is a lifelong disease with no cure but can be controlled with appropriate medical treatment and psychological therapy. ', '2022/10/23', '2022/10/23');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation`
--

CREATE TABLE `blood_donation` (
  `id` int(11) NOT NULL COMMENT 'blood donation centre id',
  `center_name` varchar(128) NOT NULL COMMENT 'centre name',
  `center_address` varchar(256) NOT NULL COMMENT 'center address',
  `center_contact` varchar(15) NOT NULL COMMENT 'center phone number',
  `center_email` varchar(128) DEFAULT NULL COMMENT 'center email',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `created_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `updated_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_donation`
--

INSERT INTO `blood_donation` (`id`, `center_name`, `center_address`, `center_contact`, `center_email`, `del_flg`, `created_date`, `updated_date`) VALUES
(4, 'အမျိုးသားသွေးဌာန', 'NO (97), Corner of Bogyoke Aung San Road and Shwedagon Pagoda Road, Latha Township, Yangon 11131', '01372753', '', 0, '2022/10/23', NULL),
(5, 'Yin Khone Than Blood Donation', 'Building E, Room 497, 1st Flr, Pyay Rd., Diamond Condo,, Kamaryut, Yangon , Myanmar', '01512887', '', 0, '2022/10/24', NULL),
(6, 'Thway Myittar', 'Yangon-Insein Rd., Inya Ywar Thit Monastery Compound, Ward (2),, Kamaryut, Yangon , Myanmar', '0973213069', '', 0, '2022/10/24', NULL),
(7, 'Blood Donation Hotline', 'Buillding F/S/34/35, Bayint Naung Rd., Shwe Padauk Yeikmon,, Kamaryut, Yangon , Myanmar\r\n', '011880', '', 0, '2022/10/24', NULL),
(8, 'Ahnine Mae Ka Yu Nar Shin', 'Hlaing Yadanar St., Dhama Thukha Dhamar Yone, Ward (13),, Hlaing Thar Yar, Yangon , Myanmar', '095033115', '', 0, '2022/10/24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(128) NOT NULL,
  `speciality` varchar(128) NOT NULL,
  `patient_status` varchar(256) NOT NULL DEFAULT 'new patient',
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL DEFAULT 'Yangon',
  `contact` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `qrcode` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `history` int(11) NOT NULL DEFAULT 0 COMMENT 'historyadd',
  `created_date` varchar(10) NOT NULL,
  `update_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `date`, `doctor_id`, `doctor_name`, `speciality`, `patient_status`, `patient_id`, `patient_name`, `email`, `address`, `contact`, `age`, `qrcode`, `status`, `history`, `created_date`, `update_date`) VALUES
(78, '2022-11-29', 21, ' Dr.U Myo ', ' Dentist', '', 10, 'Phoo  Pwint        ', 'phoopwintmaung92@gmail.com', 'Yangon', 934343434, 34, '7M3CNURA0DY0W#*QLLCS04!3+O1%O4GV%9#MJWTCGDL--H0S8MXZ*M!75CFZ$YC!18UWL%CIM1MVU8#VAKP77H*$JNCJY6R$309CZV+H$90NWLK5YX9IAWCLP4CDQCLS', 1, 0, '2022/11/04', '2022/11/04'),
(79, '2022-11-04', 21, ' Dr.U Myo ', ' Dentist', '', 31, 'Myat ', 'kmms94an@gmail.com', 'yangon', 91234566, 23, 'AX*0T%Y2!TP%DIJZWJW+7OVK25ZOXY72EO$$+#KGY4UBNE5XVYHAZ96EPT9FN8M+EGGAJPGQSHCKJ+F%%9%TJGS*67$KN1ACBWIPTEI7TRV$0ZTX96PM$HNV4MZ1MQUC', 1, 0, '2022/11/04', '2022/11/04'),
(80, '2022-11-17', 21, ' Dr.U Myo ', ' Dentist', '', 38, 'Linn Ko Ko', 'linnkoko11@gmail.com', 'Yangon', 91243566, 23, 'NGALHQ40EA1AYFRJ-NIUKAUV#ETDOH!KYYSOJIMT-P*3W!D9B0!MWUO2+SL!DZJ!$VSVMK*N7%S#7Z7EIOD#FVEZJY6-8D0S9R-W49J%!OO$JIUVEVMM0YX+%MRC9#QY', 1, 0, '2022/11/04', '2022/11/05'),
(81, '2022-11-05', 23, ' Dr.U Hla Min', ' Ophthalmology', '', 10, 'Phoo  Pwint        ', 'phoopwintmaung92@gmail.com', 'Ahlone', 94343434, 34, 'U-LC--9-JPUYP%D$0YUN06#R0Y4S0T+31S4XSOU#Y+31H!!BD6O2IEFFUGGNA8$N#OW3D+CGZ8QK$FHG+GT9H!0JTJMFGTC8D!R1Q42Y97+P65DQ7AULN4O*AVF3QJJE', 1, 1, '2022/11/05', '2022/11/05'),
(82, '2022-11-06', 21, ' Dr.U Myo ', ' Neurology', '', 33, 'Min Htaw Lon', 'minhtawlon111@gmail.com', 'Hpa_An', 976130540, 25, '6RSL#8NJ4K74$DLPLET+B+ZX0CQ4RBX-ZLVB1S0329FHL#$B!81S1U$L-QCT8VNA4LP+2EU29NQN2UXG5PRK780VS%QLWYWU38P3WHTZ8QIU+8PI79!8SWNO4YB-92MY', 1, 1, '2022/11/05', '2022/11/06'),
(83, '2022-11-17', 23, ' Dr.U Hla Min', ' Ophthalmology', '', 31, 'Myat ', 'kmms94an@gmail.com', 'Yangon', 9654356, 1223, 'B%+J208!0P%E*Z9EL1*J3XM0TRTL-USABX0Y8+ICCE!IH8K%LPV-HSJE4P8JUQSGMGN8KCVY3767#0Z%NS-1RM6DS+FUPLIRN7DGYZXRS+!AZNS#1%BZ2IR%CS-SR$LB', 1, 0, '2022/11/05', '2022/11/05'),
(85, '2022-11-06', 25, ' Dr.Daw Myint Kyi', ' OB-GYN', '', 10, 'Phoo  Pwint Maung        ', 'phoopwintmaung92@gmail.com', 'Ahlone', 912345677, 23, 'UOWIAU7#7#3-2!XZFBROGFEJNWD-BASKHVPD-1CLE240R2C7*K3QTEKT7C!16T9O+$CP$QC34PL57L+W1KCS5Z$DRL0J9V$J1#ZA$FN4RS+#R%FR7SHI3WZPLAI3ZDSX', 1, 1, '2022/11/06', '2022/11/06'),
(86, '2013-06-06', 21, ' Dr.U Myo ', ' Neurology', 'normal', 45, 'marry ', 'marry@gmail.com', 'Yangon', 13456789, 20, 'A2+#!E+15HM#PO%B55SEEVL8$JQGQ303T4QAPN!TM+S$%3X+R8XJ$J#DC0LOLFBO#7RQY%7-EUPH%B#Y7M*DZ8634ZZA9KXIR1VFGQD#PE*8HISCD2**5H#1B30JM%L5', 1, 0, '2022/11/06', '2022/11/21'),
(87, '2022-11-02', 21, ' Dr.U Myo ', ' Neurology', '', 43, 'piggy ', 'piggy123@gmail.com', 'Yangon', 123456, 22, '31146VZMF#-U!#5TI941F1K+1+9QWYAOAPGG7F+M5TBKDVB2H7!91WVPTORUKKVTPKQ0LZWHM4UE0-Z%D9X-TUJJ7W$J*Q4O49%8UGGMBQUYID%K$BWJO8Z6AKJQALHP', 1, 0, '2022/11/06', '2022/11/21'),
(88, '2022-11-06', 33, ' Dr.Daw Kyi Phyu', ' Dentist', '', 10, 'Phoo  Pwint Maung        ', 'phoopwintmaung92@gmail.com', 'Ahlone', 91234567, 23, 'ZX%V!ZWT!8RY$+HENQ+4N+BX9CRH7DXIWDN*982BO+!68+VMDCZW3S-YEF25GDMZTEZGTGM#P4TUROBYAV$QG5O5Z949KI3M5D3ZAW2NSQB1Q4!*H%R$N%5O--1IZ$#K', 1, 1, '2022/11/06', '2022/11/06'),
(90, '2022-11-09', 21, ' Dr.U Myo ', ' Neurology', '', 28, 'Linn Ko', 'linnkoko1130@gmail.com', 'Yangon', 123456, 23, '69HBH#G!G!N3SK#NHN30UWW#P%$!P#O!X63FGM8VI1W9BX0#R2XN-1KA+7115MS!21N8KTZ8Q8YT%7YEITWLVI%N*!W!I8WGTV5NY52LA138O94DBV*0JTNQH5JSICIR', 1, 0, '2022/11/21', '2022/11/21');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL COMMENT 'caroussel_id',
  `caroussel_image` varchar(256) NOT NULL COMMENT 'caroussel_image',
  `caroussel_image_2` varchar(256) NOT NULL COMMENT 'caroussel_image_2',
  `caroussel_image_3` varchar(256) NOT NULL COMMENT 'caroussel_image_3',
  `caroussel_image_4` varchar(256) DEFAULT NULL COMMENT 'caroussel_image_4',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `caroussel_image`, `caroussel_image_2`, `caroussel_image_3`, `caroussel_image_4`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 'carousleOne.png', 'carousleTwo.png', 'carousleThree.png', 'carousleFour.png', 0, NULL, '2022/11/06');

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `id` int(11) NOT NULL COMMENT 'date_id',
  `doctor_id` int(11) NOT NULL COMMENT 'doctor_id',
  `date` varchar(20) NOT NULL COMMENT 'YYYY/MM/DD',
  `startTime` varchar(20) NOT NULL COMMENT 'time',
  `endTime` varchar(20) NOT NULL,
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) NOT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`id`, `doctor_id`, `date`, `startTime`, `endTime`, `del_flg`, `create_date`, `update_date`) VALUES
(32, 21, 'Tue', '14:36', '15:36', 1, '2022/11/05', NULL),
(33, 24, 'Mon,Tue', '10:45', '12:45', 1, '2022/11/05', NULL),
(34, 21, 'Sat', '08:52', '22:00', 1, '2022/11/06', NULL),
(35, 23, 'Fri', '09:00', '05:00', 0, '2022/11/06', NULL),
(36, 23, 'Wed', '07:00', '10:00', 0, '2022/11/06', NULL),
(37, 24, 'Mon', '11:00', '01:00', 0, '2022/11/06', NULL),
(38, 24, 'Wed', '09:00', '10:00', 0, '2022/11/06', NULL),
(39, 25, 'Tue', '09:00', '11:00', 0, '2022/11/06', NULL),
(40, 29, 'Sun', '17:00', '19:00', 0, '2022/11/06', NULL),
(41, 30, 'Mon', '10:00', '11:00', 0, '2022/11/06', NULL),
(42, 33, 'Fri', '10:00', '00:00', 0, '2022/11/06', NULL),
(43, 31, 'Sat', '10:00', '00:00', 0, '2022/11/06', NULL),
(44, 32, 'Fri', '22:57', '11:57', 0, '2022/11/06', NULL),
(45, 21, 'Thurs, Fri', '09:00', '12:00', 1, '2022/11/06', NULL),
(46, 21, 'Thurs, Fri', '18:00', '20:00', 1, '2022/11/06', NULL),
(47, 21, 'Thurs', '20:00', '22:00', 0, '2022/11/06', NULL),
(48, 21, 'Fri', '20:00', '22:00', 0, '2022/11/06', NULL),
(49, 34, 'Mon', '08:32', '11:32', 0, '2022/11/06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL COMMENT 'doctor ID',
  `doctor_name` varchar(128) NOT NULL COMMENT 'doctor name',
  `speciality` varchar(128) NOT NULL COMMENT 'speciality',
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL COMMENT 'doctor gender',
  `contact` varchar(15) NOT NULL,
  `profile_photo` varchar(256) DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `del_flg` int(11) NOT NULL DEFAULT 0 COMMENT 'del_flg',
  `create_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Doctor';

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `doctor_name`, `speciality`, `age`, `gender`, `contact`, `profile_photo`, `date_id`, `del_flg`, `create_date`, `update_date`) VALUES
(21, 'Dr.U Myo ', 'Neurology', 38, 0, '097999999908', '21.jpg', 0, 0, '2022/10/27', '2022/11/05'),
(23, 'Dr.U Hla Min', 'Ophthalmology', 51, 0, '097999999903', 'Dr.U Hla Min.jpg', 0, 0, '2022/10/27', '2022/10/27'),
(24, 'Dr.Daw Khin Swe', 'Ophthalmology', 40, 1, '097999999904', 'Dr.Daw Khin Swe.jpg', 0, 0, '2022/10/27', NULL),
(25, 'Dr.Daw Myint Kyi', 'OB-GYN', 37, 1, '097999999905', 'Dr.Daw Myint Kyi.jpg', 0, 0, '2022/10/27', NULL),
(26, 'Dr.Daw May Lwin', 'Neurology', 54, 1, '097999999903', 'Dr.Daw May Lwin.jpg', 0, 1, '2022/10/27', NULL),
(27, 'Dr.Daw JJJJJJ', 'General Health', 33, 1, '097999999940', '27.png', 0, 1, '2022/10/29', '2022/10/29'),
(28, 'Dawjdkfis', 'OB-GYN', 40, 1, '097999999901', 'Dawjdkfis.jpg', NULL, 1, '2022/11/05', NULL),
(29, 'Dr.U Moe Yan', 'Paediatric', 37, 0, '09799967983', 'Dr.U Moe Yan.jpg', NULL, 0, '2022/11/06', NULL),
(30, 'Dr.Daw Nong ', 'Pulmonology', 58, 1, '09799967983', 'Dr.Daw Nong .jpg', NULL, 0, '2022/11/06', NULL),
(31, 'Dr.U Mg Mg', 'General Health', 40, 0, '09-123456789', 'Dr.U Mg Mg.png', NULL, 0, '2022/11/06', NULL),
(32, 'Dr.U Aung Kyaw', 'Dentist', 50, 0, '09-123456789', 'Dr.U Aung Kyaw.jpg', NULL, 0, '2022/11/06', NULL),
(33, 'Dr.Daw Kyi Phyu', 'Dentist', 50, 1, '09-123456789', 'Dr.Daw Kyi Phyu.jpg', NULL, 0, '2022/11/06', NULL),
(34, 'Dr.Daw AAAA', 'OB-GYN', 40, 1, '097999999901', 'Dr.Daw AAAA.png', NULL, 0, '2022/11/06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_page_header`
--

CREATE TABLE `emergency_page_header` (
  `id` int(11) NOT NULL COMMENT 'header_id',
  `header` varchar(128) NOT NULL COMMENT 'title',
  `text` varchar(512) NOT NULL COMMENT 'text under header',
  `del_flg` int(11) DEFAULT NULL,
  `create_date` varchar(10) NOT NULL DEFAULT '0' COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emergency_page_header`
--

INSERT INTO `emergency_page_header` (`id`, `header`, `text`, `del_flg`, `create_date`, `update_date`) VALUES
(3, 'why is it important to know first aid?', 'First aid is an important tool in quickly responding to accidents to ensure that injuriescan be efficiently and promptly dealt with before a trained medical professional arrives to administer more specialised ', NULL, '', '2022/10/30');

-- --------------------------------------------------------

--
-- Table structure for table `first_aid`
--

CREATE TABLE `first_aid` (
  `id` int(11) NOT NULL COMMENT 'article_id',
  `article_header` varchar(128) NOT NULL COMMENT 'article_header',
  `article_text` varchar(1024) DEFAULT NULL COMMENT 'article_text',
  `article_image` varchar(1024) DEFAULT NULL COMMENT 'article_image',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_aid`
--

INSERT INTO `first_aid` (`id`, `article_header`, `article_text`, `article_image`, `del_flg`, `create_date`, `update_date`) VALUES
(10, 'Heart Attack', '<ol class=\'first_aid_para\'>\r\n                        <li>Find a person nearby. Make eye contact, point to them, and say: “Call 911.”</li>\r\n                        <li>Start doing chest compressions on the person who needs help. Using both your hands, push down hard and fast in the center of the person’s chest. Let their chest come back up naturally between compressions. Keep going until someone with more training arrives.\r\n                        </li>\r\n                        <li>If you’re trained in CPR, you can use chest compressions and rescue breathing.\r\n                        </li>\r\n                        <li>If it’s available, use an AED. However, do not put off doing chest compressions to go look for an AED. If possible, instruct someone else to go find the device and bring it to you.</li>\r\n                        </ol>', 'Heart Attack.jpg', 0, '2022/10/26', NULL),
(12, 'Bleeding', '<ol class=\"first_aid_para\">\r\n<li>Wash your hands or put on disposable gloves if you have them. This will protect you from infectious diseases like viral hepatitis and HIV/AIDS that can be spread in a person’s blood</li>\r\n<li>Rinse the wound with water. </li>\r\n<li>Cover the wound with a gauze or cloth (e.g., towel, blanket, clothing). </li>\r\n<li>Apply direct pressure to stop the flow of blood and encourage clotting (when blood naturally thickens to stop blood loss).</li>\r\n<li>Elevate the bleeding body part above the person’s head if you can.</li>\r\n<li>Do not remove the cloth if it becomes soaked. Removing the first layer will interfere with the clotting process and result in more blood loss. Instead, add more layers if needed.</li>\r\n', 'Bleeding.jpg', 0, '2022/10/26', '2022/10/30'),
(13, 'Choking', '<ol class=\"first_aid_para\">\r\n<li>Stand behind the person and lean them slightly forward.</li>\r\n<li>Put your arms around their waist.</li>\r\n<li>Clench your fist and place it between their belly button (navel) and rib cage. </li>\r\n<li>Grab your fist with your other hand.</li>\r\n<li>Pull your clenched fist sharply backward and upward under the person’s rib cage in 5 quick thrusts.</li>\r\n<li>. Repeat until the object is coughed up.</li>\r\n</ol>', 'Choking.jpg', 0, '2022/10/26', NULL),
(17, 'Nose Bleeding', '<ol class=\"first_aid_para\">\r\n<li>Lean slightly forward, not back.</li>\r\n<li>Pinch your nose just below the bridge. It needs to be high enough that the nostrils are not pinched closed.</li>\r\n<li>After five minutes, check to see if the bleeding has stopped. If not, continue pinching and check after another 10 minutes.</li>\r\n\r\n</ol>', 'Nose Bleeding.png', 0, '2022/11/06', '2022/11/06');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_location`
--

CREATE TABLE `hospital_location` (
  `id` int(11) NOT NULL COMMENT 'hospital id',
  `hospital_name` varchar(128) NOT NULL COMMENT 'hospital name',
  `address` varchar(256) NOT NULL COMMENT 'hospital address',
  `email` varchar(128) NOT NULL COMMENT 'hospital email',
  `contact` varchar(15) NOT NULL COMMENT 'hospital phone number',
  `google_map_image` varchar(1024) DEFAULT NULL COMMENT 'google map image',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_location`
--

INSERT INTO `hospital_location` (`id`, `hospital_name`, `address`, `email`, `contact`, `google_map_image`, `del_flg`, `create_date`, `update_date`) VALUES
(13, 'Sakura Hospital', 'No.23 Shin Saw Pu, Yangon', 'sakurahospital@gmail.com', '01512668', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3819.6052300116876!2d96.12840261417942!3d16.79630502400501!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eb154664173d%3A0xfc96fa68362544d7!2sSakura%20Hospital!5e0!3m2!1sen!2smm!4v1666749704305!5m2!1sen!2smm', 0, '2022/10/26', NULL),
(15, 'Grand Hantha Hospital', 'Bayint Naung Tower 2, Yangon', 'grandhanthahospital@gmail.com', '09422049911', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3819.1024451589424!2d96.12101011417973!3d16.82127312331375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c194cd2ca88cb9%3A0x452d8e755e6d807c!2sGrand%20Hantha%20Hospital!5e0!3m2!1sen!2smm!4v1667021709639!5m2!1sen!2smm', 0, '2022/10/29', NULL),
(16, 'Yangon General Hospital', 'Q4HX+MH5, Bo Gyoke Rd, Yangon', 'generalhospital@gmail.com', '01256112', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3819.9505468449197!2d96.14679271417916!3d16.779135824479695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eb7e9c3baccb%3A0xf477638e991c255c!2sYangon%20General%20Hospital!5e0!3m2!1sen!2smm!4v1667026052527!5m2!1sen!2smm', 1, '2022/10/29', NULL),
(17, 'Pun Hlaing Hospitals - Hlaing Tharyar', 'Pun Hlaing Ave, Yangon', 'punhlainghospitals@gmail.com', '09772889922', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61099.35374287429!2d96.02318803125!3d16.84075619999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c19540a75e1f79%3A0x13a0ca258268b8cc!2sPun%20Hlaing%20Hospitals%20-%20Hlaing%20Tharyar!5e0!3m2!1sen!2smm!4v1667090632680!5m2!1sen!2smm', 0, '2022/10/30', NULL),
(18, 'နှင်းဆီကုန်းဆေးရုံ', '20/A Kabar Aye Pagoda Rd, Yangon', 'rosehill@gmail.com', '01558401', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61109.54462944654!2d96.09034843124996!3d16.80915600000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eca88d27db63%3A0x8912f92dc0a4d8f!2z4YCU4YC-4YCE4YC64YC44YCG4YCu4YCA4YCv4YCU4YC64YC44YCG4YCx4YC44YCb4YCv4YC2!5e0!3m2!1sen!2smm!4v1667138520923!5m2!1sen!2smm', 0, '2022/10/30', NULL),
(19, 'Ar Yu International Hospital', '400 Kyaik Ka San Rd, Yangon', 'aryuinternationalhospital@gmial.com', '019376200', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61109.54462944654!2d96.09034843124996!3d16.80915600000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1ed1f31639c31%3A0x17d8229ae7004826!2sAr%20Yu%20International%20Hospital!5e0!3m2!1sen!2smm!4v1667138619996!5m2!1sen!2smm', 0, '2022/10/30', NULL),
(20, 'Shwe Baho Hospital', '26 Tha Mein Ba Yan Rd, Yangon', 'shwebaho@gmail.com', '09263683904', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61109.54462944654!2d96.09034843124996!3d16.80915600000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1ecc8f24da8e9%3A0x5d24073a9dd98ae!2sShwe%20Baho%20Hospital!5e0!3m2!1sen!2smm!4v1667138693570!5m2!1sen!2smm', 0, '2022/10/30', NULL),
(21, 'Asia Royal Hospital', 'No. 14 Baho Rd, Yangon', 'asiaroyal@gmail.com', '012304999', 'https://goo.gl/maps/agnUiVGv8tsUX4pf8', 1, '2022/10/30', NULL),
(22, 'Asia Royal Hospital', 'No. 14 Baho Rd, Yangon', 'asiaroyal@gmail.com', '01558401', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61109.54462944654!2d96.09034843124996!3d16.80915600000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eb3ffbcfb0c7%3A0xc594e91962c9ad38!2sAsia%20Royal%20Hospital!5e0!3m2!1sen!2smm!4v1667138796703!5m2!1sen!2smm', 0, '2022/10/30', NULL),
(23, 'Sakura Hospital', 'Bayint Naung Tower 2, Yangon', 'sakurahospital@gmail.com', '09422049911', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3819.6052300116876!2d96.12840261417936!3d16.79630502400501!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eb154664173d%3A0xfc96fa68362544d7!2sSakura%20Hospital!5e0!3m2!1sen!2smm!4v1667567584248!5m2!1sen!2smm', 1, '2022/11/04', NULL),
(24, 'Sakura Hospital', 'sdf', 'sdf', 'sdf', 'sdf', 1, '2022/11/05', NULL),
(25, 'Sakura Hospital', 'No.23 Shin Saw Pu, Yangon', 'sakurahospital@gmail.com', '01292835', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3819.6052300116876!2d96.12840261417936!3d16.79630502400501!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c1eb154664173d%3A0xfc96fa68362544d7!2sSakura%20Hospital!5e0!3m2!1sen!2smm!4v1667706511986!5m2!1sen!2smm', 1, '2022/11/06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inpatient`
--

CREATE TABLE `inpatient` (
  `id` int(11) NOT NULL COMMENT 'Inpatient Id',
  `name` varchar(128) NOT NULL COMMENT 'Inpatient name',
  `age` int(11) NOT NULL COMMENT 'Inpatient age',
  `address` varchar(256) NOT NULL COMMENT 'Inpatient address',
  `status` varchar(128) NOT NULL COMMENT 'ICU,HCU,Normal',
  `disease` varchar(256) NOT NULL COMMENT 'patient disease',
  `hospitalized_date` varchar(10) NOT NULL COMMENT 'YYYY/MM/DD',
  `room` int(11) NOT NULL COMMENT 'Room number',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Inpatient history';

--
-- Dumping data for table `inpatient`
--

INSERT INTO `inpatient` (`id`, `name`, `age`, `address`, `status`, `disease`, `hospitalized_date`, `room`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 'andy', 22, 'Yangon', 'Normal', 'dengue fever', '18.10.2022', 22, 1, NULL, '2022/10/21'),
(2, 'John', 11, 'Yangon', 'HCU', 'Broken Leg', '14.11.20', 33, 1, NULL, NULL),
(3, 'phoo pwint', 34, 'Ahlone', 'ICU', 'covid', '2022-10-25', 23, 1, NULL, '2022/10/24'),
(4, 'phoo', 23, 'Kamayut', '1', 'covid', '2022-10-25', 23, 1, NULL, '2022/11/04'),
(5, 'Phoo', 23, 'Yangon', 'ICU', 'covid', '2022-10-26', 25, 0, NULL, NULL),
(6, 'lsiene', 23, 'Ahlone', '0', 'covid', '2022-10-28', 23, 0, NULL, NULL),
(7, 'Jack', 34, 'Yangon', '0', 'diabetes', '2022-11-06', 410, 0, '2022/11/04', NULL),
(8, 'phoo', 23, 'Mawlamyine', '0', 'covid', '2022-11-06', 11, 1, '2022/11/06', '2022/11/06');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL COMMENT 'medicine_id',
  `medicine_name` varchar(128) NOT NULL COMMENT 'medicine_name',
  `description` varchar(256) NOT NULL COMMENT 'medicine_description',
  `medicine_image` varchar(256) NOT NULL COMMENT 'medicine_image',
  `create_date` varchar(10) NOT NULL COMMENT 'create_date',
  `del_flg` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_name`, `description`, `medicine_image`, `create_date`, `del_flg`) VALUES
(24, 'B_complax', 'FOR ENERGY: 150-count Coated Tablets; Nature’s Bounty Super B-Complex with Folic Acid Plus Vitamin C plays an important role in energy metabolism in the body;', 'B_complax.png', '2022/10/26', 1),
(25, 'Biotin 1000mg', 'SKIN & NAIL HEALTH SUPPORT : Biotin plays an important role in the health of your skin and also supports healthy nails so you can continue to look and feel your best .', 'Biotin 1000mg.png', '2022/10/26', 0),
(26, 'Centrum Women 250Tablets', '250 count bottle of Centrum Multivitamin for Women, Multivitamin/Multimineral Supplement with Iron, Vitamin D3, B Vitamins and Antioxidant Vitamins C and E\r\n', 'Centrum Women 250Tablets.png', '2022/10/26', 1),
(27, 'Centrum Men 250tablets', 'One 250 count bottle of Centrum Multivitamins for Men, Multivitamin/Multimineral Supplement with Vitamin D3, B Vitamins and Antioxidants', 'Centrum Men 250tablets.png', '2022/10/26', 0),
(28, 'D3 50mcg', 'IMMUNE SUPPORT : Vitamin D3 is an essential nutrient for immune support.  Each serving contains 2000 IU of Vitamin D ', 'D3 50mcg.png', '2022/10/26', 0),
(29, 'FOCUS factor Kids', 'FOCUS FACTOR KIDS – Americas favorite children\'s vitamin for focus and healthy brain function GREAT TASTING & ALLERGY FREE – Kids will love these berry blast flavoured chewable', 'FOCUS factor Kids.png', '2022/10/26', 0),
(30, 'K2D3', 'SUPPORTS CALCIUM ABSORPTION: Youtheory\'s K2D3 vitamin supplement combines K2 and D3 to enable the body to properly use Calcium for normal metabolic function', 'K2D3.png', '2022/10/26', 1),
(31, 'MEGA MEN Sport', 'ONE PER DAY: A men’s health multivitamin expertly formulated for active lifestyles ENERGY SUPPORT FORMULA: Packed with B vitamins for supporting energy production', 'MEGA MEN Sport.png', '2022/10/26', 0),
(32, 'Neuriva', 'NOOTROPIC BRAIN SUPPORT CAPSULES: Clinical studies have shown that coffee cherry Neurofactor and plant-sourced PS phosphatidylserine have a positive effect on brain health', 'Neuriva.png', '2022/10/26', 1),
(33, 'Vitamin Code', 'B COMPLEX VITAMINS FOR WOMEN AND MEN: Our high potency vitamin B complex supports energy,', 'Vitamin Code.png', '2022/10/26', 1),
(34, 'sdf', 'sdf', 'sdf.png', '2022/11/04', 1),
(35, 'Neuriva', 'NOOTROPIC BRAIN SUPPORT CAPSULES: Clinical studies have shown that coffee cherry Neurofactor and plant-sourced PS phosphatidylserine have a positive effect on brain health.', 'Neuriva.png', '2022/11/05', 0),
(36, 'medicine name', 'Description', 'medicine name.png', '2022/11/06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

CREATE TABLE `patient_history` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(256) NOT NULL COMMENT 'patient_name',
  `email` varchar(256) NOT NULL COMMENT 'user_email',
  `doctor_name` varchar(256) NOT NULL COMMENT 'doctor_name',
  `booking_date` varchar(20) NOT NULL,
  `disease` varchar(128) NOT NULL,
  `medicine` varchar(128) NOT NULL,
  `next_appointment_date` varchar(10) DEFAULT NULL,
  `symptoms` varchar(128) NOT NULL,
  `to_avoid` varchar(256) DEFAULT NULL,
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`id`, `patient_name`, `email`, `doctor_name`, `booking_date`, `disease`, `medicine`, `next_appointment_date`, `symptoms`, `to_avoid`, `del_flg`, `create_date`, `update_date`) VALUES
(49, 'Phoo  Pwint        ', 'phoopwintmaung92@gmail.com', ' Dr.U Hla Min', '2022-11-05', 'Covid', 'medicine', '2022-11-22', 'headache', 'avoid drinking', 0, '2022/11/05', NULL),
(50, 'Min Htaw Lon', 'minhtawlon111@gmail.com', ' Dr.U Myo ', '2022-11-06', 'stomuch', 'kjdfjsdi', '2022-12-06', 'jjjkjjkkk', 'alchole', 0, '2022/11/06', NULL),
(51, 'Phoo  Pwint Maung        ', 'phoopwintmaung92@gmail.com', ' Dr.Daw Myint Kyi', '2022-11-06', 'Covid', 'biogesic', '2022-11-28', 'sdfsd', 'sdfsd', 0, '2022/11/06', NULL),
(52, 'Phoo  Pwint Maung        ', 'phoopwintmaung92@gmail.com', ' Dr.Daw Kyi Phyu', '2022-11-06', 'Covid', 'medicine', '2022-11-13', 'headache', 'avoid drinking', 0, '2022/11/06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `id` int(11) NOT NULL COMMENT 'policy_id',
  `policy_text` varchar(1024) NOT NULL COMMENT 'policy_text',
  `policy_image` varchar(256) DEFAULT NULL COMMENT 'policy_image',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) NOT NULL COMMENT 'YYYY/MM/DD',
  `update_date` int(11) NOT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`id`, `policy_text`, `policy_image`, `del_flg`, `create_date`, `update_date`) VALUES
(2, 'Personal data, also known as personal information or personally identifiable information, is any information related to an identifiable person.\r\n\r\nTo protect your personal data from unverifiable accesses and threats, we have introduced adequate security measures and threat controls. Testings are also perform on a regular basis.\r\n\r\nAll the data collected from this website will not be shared with other third-parties and we are striving to protect the security of all the data and constantly reviewing and improving our security measures.', NULL, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `id` int(11) NOT NULL COMMENT 'user register id',
  `register_name` varchar(256) NOT NULL COMMENT 'Username',
  `email_address` varchar(128) NOT NULL COMMENT 'user email address',
  `profile_image` varchar(256) DEFAULT 'profile.jpg' COMMENT 'photo',
  `password` varchar(128) NOT NULL COMMENT 'account password',
  `del_flg` int(11) NOT NULL DEFAULT 0,
  `create_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD',
  `update_date` varchar(10) DEFAULT NULL COMMENT 'YYYY/MM/DD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='User register table';

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `register_name`, `email_address`, `profile_image`, `password`, `del_flg`, `create_date`, `update_date`) VALUES
(10, 'Phoo  Pwint Maung        ', 'phoopwintmaung92@gmail.com', '10.webp', '$2y$10$GuC0kPJyEkovNnyD4aU.AOF74s2jlp2nIAaKM63QI4OxGiqgFnzQ2', 0, '2022/10/14', '2022/11/05'),
(23, 'May Myo Kyi', 'jikkynobe51@gmail.com', '23.png', '$2y$10$FzJE4fze.vpJT4RoCi7Y1uZDRv0/9ANy2kdDOaBCu8XZmVdbuEm9q', 0, '2022/10/26', '2022/10/27'),
(25, 'William Hamminton', 'William@gmail.com', '25.webp', '$2y$10$5GAGi61UFQQIOkcyqPfzkew9bhr/JYe/8UekNOySDYXd62Re0s/OW', 0, '2022/10/26', '2022/10/26'),
(26, 'William Hamminton', 'william123@gmail.com', '26.webp', '$2y$10$QDwO/X7JefB9gjjDE8wvDO.Sw/yfvNLswkEuGeeXwuDjyqGtAb.Dq', 0, '2022/10/27', '2022/10/27'),
(27, 'sfsd', 'Maung33@gmail.com', 'profile.jpg', '$2y$10$zxi9CvpZhP5CNVoZDGAcP.ShQUcyOaNFcHDG3dFbXN6LmwYnbjqWC', 0, '2022/10/29', NULL),
(28, 'Linn Ko', 'linnkoko1130@gmail.com', 'profile.jpg', '$2y$10$Fern/Xv7odGYcEDeJD9LuOpSdRndC0ro/WEzEbx1KSPvQLkDn/p7e', 0, '2022/10/29', '2022/11/21'),
(29, 'Phoo Pwint Maung', 'jikkynobe1@gmail.com', 'profile.jpg', '$2y$10$wX5j441xJguQAr/Os1IAd.smGbrAx4QbnvjAuK.h9GT5OEpo2RvYO', 0, '2022/10/29', '2022/10/30'),
(30, 'T3', 'tint.lwinlwn@gmail.com', 'profile.jpg', '$2y$10$b54iW1/oPeGNcVmeT4YhyeGkr9xVtQyQZ9NHs1ysRQvDNatkFBX6q', 0, '2022/10/29', NULL),
(31, 'Myat', 'kmms94an@gmail.com', '31.webp', '$2y$10$m9HrdJCQ8TJQcEE7zj.d9.iOhNSRBZNqAUuhZiwqrp7SOWJY9SFyK', 0, '2022/10/29', '2022/11/06'),
(32, 'noe', 'kmmsan@gmail.com', 'profile.jpg', '$2y$10$Pr69u8i66H5emC7i.pAveulVQW03b67Mn0jT.hJWRPZmd/XW5agZG', 0, '2022/10/30', NULL),
(33, 'Min Htaw Lon', 'minhtawlon111@gmail.com', 'profile.jpg', '$2y$10$kYSaagxLPi047E79JWWVJe3aP7gokmh6DnLRSf/bgtY4a17fE12MS', 0, '2022/10/30', NULL),
(34, 'zuzuu', 'zuu@gmail.com', 'profile.jpg', '$2y$10$FtSnqKBJqnY8Dfn2Yc0zweLzBS8HgLEzaqBfZzbf.MHLVVdDklQwe', 0, '2022/10/30', NULL),
(35, 'Hoshi_D_Echo ', 'kaungzanthaw27904@gmail.com', '35.jpg', '$2y$10$PmKW/7ptI3mA5lnbxKzYsu9BMdUA6T965PPVWWV/S056khl9YeYDS', 0, '2022/10/30', '2023/06/28'),
(36, 'Redlark', 'phoepyae1312005@gmail.com', 'profile.jpg', '$2y$10$fZag5IsCz6necjaED9vVjugbMm01HUU2F20zNwsM256Jmv/01eI1W', 0, '2022/10/31', NULL),
(37, 'Linn Ko Ko', 'linnkoko@gmail.com', 'profile.jpg', '$2y$10$397/1hSAHDmF/cBXZ1lJ9O8irQkRCE/z7EcHDO/.re8t53GTxq2Hy', 0, '2022/11/04', NULL),
(38, 'Linn Ko Ko', 'linnkoko11@gmail.com', 'profile.jpg', '$2y$10$BJM5N3DDaglxahvo6TYey.mcbhFX9A3fA8h2arijM3YqC0hroYfNy', 0, '2022/11/04', NULL),
(39, 'Jar Mai', 'lunatris554@gmail.com', 'profile.jpg', '$2y$10$WRLTJn4BOjko3w4UUMyrOu/NaSSLpNRx5tvMybggBEH0/F3UhdFB6', 0, '2022/11/05', NULL),
(40, 'chan', 'julystar678@gmail.com', 'profile.jpg', '$2y$10$wEHR89IfqHr13JaBEElxee38Cn/HU3Co/XKsaMCl1qrKeYyDO4Lfa', 0, '2022/11/05', NULL),
(41, 'Kiyoushi', 'kyalsinh24@gmail.com', 'profile.jpg', '$2y$10$xBOdIKJnLg.SDFoZitpD1e4N11hXv3nI/1./ZakajyUFNQzuJ4x5y', 0, '2022/11/06', NULL),
(42, 'Thaw Zin Linn', 'luciferm3333@gmail.com', 'profile.jpg', '$2y$10$xnpAknGc6IkgzegOafavy.ignhKQL0NNkwKX6Uk70sIFsbOxGqQim', 0, '2022/11/06', NULL),
(43, 'piggy ', 'piggy123@gmail.com', '43.jpg', '$2y$10$.pjKeiJmuP8bcASwmVKCoOyUTjVQVSb72ueSyc4bZz85BPtkACajy', 0, '2022/11/06', '2022/11/06'),
(44, 'Ruth', 'estherhtoo2172000@gmail.com', 'profile.jpg', '$2y$10$ju5YvaZBjCtveM0lBTtQlOwqBIx7I1uGoZsfnlgHTEFFQlYuO/frm', 0, '2022/11/06', NULL),
(45, 'marry ', 'marry@gmail.com', '45.jfif', '$2y$10$RB7h/U3UiAFcqZXstQavK.EIaRsjibn9yfrPJHTa99N8fkjrJvk4i', 0, '2022/11/06', '2022/11/06'),
(46, 'Aung Thet Soe', 'aungthetsoe7101@gmail.com', 'profile.jpg', '$2y$10$HPaOhfDa7A1EMIvWa2AmSOd3EGtYcRK6WNOCVZ2usPUotY/z/j8Xy', 0, '2022/11/06', NULL),
(47, 'sai wai', 'saiwai@gmail.com', 'profile.jpg', '$2y$10$1M2eZ0JnaqfX1lkzUlgeWeiVGgTRub41gblKfkzoRhLAuN2t8FJoa', 0, '2022/11/06', NULL),
(48, 'Moe Moe', 'aungaungmoe1225@gmail.com', 'profile.jpg', '$2y$10$ihiiEf9GJocegYJDQ8XTEOYCNi5Qp2o3WefLuYnStmqyhdVYM3gvm', 0, '2022/11/06', NULL),
(49, 'phoo', 'ppm@gmail.com', 'profile.jpg', '$2y$10$37oakAbtEszk22ieXBRo..1rv8Uy5gvBg9vUw9GD3zsV6XzfwHJwy', 0, '2022/11/07', NULL),
(50, 'Su', 'arensu.99@gmail.com', 'profile.jpg', '$2y$10$3fGucf8iuqQWwGfVkAXdJOmpHUsx/fdMmv3JvEnzyzndvxKIYnVqe', 0, '2022/11/07', NULL),
(51, 'admin', 'admin@gmail.com', 'profile.jpg', '$2y$10$zorOiJdHD95byvkfepEIJurkf60.PVfxWlOyL52X52FbSjIbEbvFm', 0, '2022/11/09', NULL),
(52, 'zzz ', 'zzz@gmail.com', '52.jpeg', '$2y$10$zNP.nKgcGoPKL8pnD6zyuOeODcxNWt0oOF0afI3VPcOTYJgLRZfgy', 0, '2022/11/09', '2022/11/09'),
(53, 'Nan Wai Yan Htet', 'nanwaiyanhtet2@gmail.com', 'profile.jpg', '$2y$10$8Xrypca1rgKNy6CozuFTxOqF6FulZGygTM3ctHuO7ikI5TUm4Qbdq', 0, '2022/11/12', NULL),
(54, 'nannan', 'nan@mail.com', 'profile.jpg', '$2y$10$3Dx9sDAHb1QTGDJu6JKh6.6d0AO4Bzr.GtQvw4PGsczfE9oCpZfxS', 0, '2022/11/16', '2022/11/16'),
(55, 'Lannsa', 'Nwaytk520@gmail.com', 'profile.jpg', '$2y$10$.VzXOd6GHnOTPCZZ/QrXK.e/nWBYaYFwLw1ugzfXo7D3dF2/bR2YK', 0, '2022/11/18', NULL),
(56, 'Phoo', 'Phoo1@gmail.com', 'profile.jpg', '$2y$10$Vs5paOIPsS99Y/b0l8gg4eAkEPZ1mmQ6cBG9HkiRq8MKUzHlDP75O', 0, '2022/11/25', NULL),
(57, 'Cha Cha', 'chachaishandsome@gmail.com', 'profile.jpg', '$2y$10$KovTUKNKQM5QK.dM2622iO39MjcCgjzxvXXVWQjQE2CldEldVEsDq', 0, '2022/12/17', NULL),
(58, 'Phoo', 'Phoo@gmail.com', 'profile.jpg', '$2y$10$TENz3kIQSj4Dku8BCKJCmeShkXk9z2ah0FMq2sUv8GDJNWo/1ymDC', 0, '2022/12/26', NULL),
(59, 'Akihito Hama', 'hamakihito@gmail.com', 'profile.jpg', '$2y$10$zKfwvLhmU/PV5Si45Jukz.P1XSoNCWLOQmts.CnUpzds0Kr6uozeq', 0, '2023/01/04', NULL),
(60, 'ggg', 'ggg@gmail.com', 'profile.jpg', '$2y$10$s8EFD0thsVbpBCPl1jNyouvGt1JDpxnrztPKEctQ.vpA5wi9EmLAK', 0, '2023/01/10', NULL),
(61, 'John Doe', 'johndoe@gmail.com', 'profile.jpg', '$2y$10$F3wcTn2aSUJAJupcCL3Ki.XSsOSu/VHxJaYHA4tuKRTYoVc/Mypl2', 0, '2023/02/06', NULL),
(62, 'test', 'test@test.com', 'profile.jpg', '$2y$10$b1oAI7VDbA9ePxfYhvLcq.wBS4WJpl7LLO4ek8MxmMDl3JMLH9MTG', 0, '2023/02/08', NULL),
(63, 'test', 'test@gmail.com', 'profile.jpg', '$2y$10$cVzz/zCCRpNFh2dLTEAFweaeqOJELTxj5o53FJioxQgNuFchyNhh2', 0, '2023/02/13', NULL),
(64, 'Myat', 'Khinmyintmyatsan94@gmail.com', 'profile.jpg', '$2y$10$edGGlaT8TVzYXm4gOSg77ulUM8PZ8TGeMb3xSjXPO9CQfIf4ZjALu', 0, '2023/03/13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donation`
--
ALTER TABLE `blood_donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_page_header`
--
ALTER TABLE `emergency_page_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_aid`
--
ALTER TABLE `first_aid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_location`
--
ALTER TABLE `hospital_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inpatient`
--
ALTER TABLE `inpatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`,`email_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'info_id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'admin id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'blog_id', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `blood_donation`
--
ALTER TABLE `blood_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'blood donation centre id', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'caroussel_id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `date`
--
ALTER TABLE `date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'date_id', AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'doctor ID', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `emergency_page_header`
--
ALTER TABLE `emergency_page_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'header_id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `first_aid`
--
ALTER TABLE `first_aid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'article_id', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hospital_location`
--
ALTER TABLE `hospital_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'hospital id', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `inpatient`
--
ALTER TABLE `inpatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Inpatient Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'medicine_id', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `patient_history`
--
ALTER TABLE `patient_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'policy_id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'user register id', AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
