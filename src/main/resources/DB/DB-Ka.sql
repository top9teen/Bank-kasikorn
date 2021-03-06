-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kasikorndb
CREATE DATABASE IF NOT EXISTS `kasikorndb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kasikorndb`;

-- Dumping structure for table kasikorndb.formmen
CREATE TABLE IF NOT EXISTS `formmen` (
  `me_id` int(11) DEFAULT NULL COMMENT 'ไอดี',
  `me_prefix2` varchar(50) DEFAULT NULL COMMENT 'คำนำหน้า',
  `me_fname2` varchar(255) DEFAULT NULL COMMENT 'ชื่อ',
  `me_lname2` varchar(255) DEFAULT NULL COMMENT 'นามสกุล',
  `me_birthDay2` varchar(255) DEFAULT NULL COMMENT 'วันเกิด',
  `me_birthMonth2` varchar(255) DEFAULT NULL COMMENT 'เดือน',
  `me_birthYear2` varchar(255) DEFAULT NULL COMMENT 'ปี',
  `me_talaphone2` varchar(255) DEFAULT NULL COMMENT 'เบอร์มือถือ',
  `me_email2` varchar(255) DEFAULT NULL COMMENT 'อีเมลติดต่อ',
  `me_job2` varchar(255) DEFAULT NULL COMMENT 'อาชีพปัจจุบัน',
  `me_salary2` varchar(255) DEFAULT NULL COMMENT 'รายได้ต่อเดือน',
  `me_yearOfService2` varchar(255) DEFAULT NULL COMMENT 'รวมอายุงานทั้งหมด',
  `me_monthOfService2` varchar(255) DEFAULT NULL COMMENT 'โปรดเลือก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ใบผู้ร่วม กู้';

-- Dumping data for table kasikorndb.formmen: ~0 rows (approximately)
/*!40000 ALTER TABLE `formmen` DISABLE KEYS */;
INSERT INTO `formmen` (`me_id`, `me_prefix2`, `me_fname2`, `me_lname2`, `me_birthDay2`, `me_birthMonth2`, `me_birthYear2`, `me_talaphone2`, `me_email2`, `me_job2`, `me_salary2`, `me_yearOfService2`, `me_monthOfService2`) VALUES
	(5, '2', 'wwww', 'wwww', '17', '06', '2528', '1001000000', 'wwew@ewqe.cc', '11', '2,222,222.00', '12', '6');
/*!40000 ALTER TABLE `formmen` ENABLE KEYS */;

-- Dumping structure for table kasikorndb.formregiter
CREATE TABLE IF NOT EXISTS `formregiter` (
  `fo_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดี',
  `fo_groupType` varchar(50) NOT NULL COMMENT 'ปีที่จดทะเบียน',
  `fo_carMake` varchar(50) NOT NULL COMMENT 'ยี่ห้อ',
  `fo_carMake2` varchar(50) NOT NULL COMMENT 'รุ่น',
  `fo_lessmoney` varchar(50) NOT NULL COMMENT 'วงเงินที่ท่านต้องการ',
  `fo_lessyear` varchar(50) NOT NULL COMMENT 'ระยะเวลาที่ต้องการขอกู้',
  `fo_typebank` varchar(5) NOT NULL COMMENT 'ไอดีลูกค้า',
  `fo_checkbox1` text NOT NULL COMMENT 'ปิดสินเชื่อสถาบันการเงินอื่น',
  `fo_checkbox2` text NOT NULL COMMENT 'ปิดหนี้สินเชื่ออื่นๆที่ไม่ใช่สถาบันการเงิน',
  `fo_checkbox3` text NOT NULL COMMENT 'ปิดหนี้ธุรกิจ',
  `fo_checkbox4` text NOT NULL COMMENT 'จับจ่ายใช้สอยทั่วไป',
  `fo_prefix` varchar(50) NOT NULL COMMENT 'คำนำหน้า',
  `fo_fNameTH` varchar(255) NOT NULL COMMENT 'ชื่อ',
  `fo_lNameTH` varchar(255) NOT NULL COMMENT 'นามสกุล',
  `fo_birthDay` varchar(3) NOT NULL COMMENT 'วันเกิด',
  `fo_birthMonth` varchar(50) NOT NULL COMMENT 'เดือน',
  `fo_birthYear` varchar(50) NOT NULL COMMENT 'ปี',
  `fo_refID` varchar(50) NOT NULL COMMENT 'เลขบัตรประชาชน',
  `fo_mobilePhone` varchar(50) NOT NULL COMMENT 'เบอร์มือถือ',
  `fo_email` varchar(255) NOT NULL COMMENT 'อีเมลติดต่อ',
  `fo_availableTime` varchar(255) NOT NULL COMMENT 'ช่วงเวลาที่ให้ติดต่อ (จันทร์-ศุกร์)',
  `fo_job` varchar(255) NOT NULL COMMENT 'อาชีพ',
  `fo_salary` varchar(255) NOT NULL COMMENT 'รายได้ต่อเดือน',
  `fo_yearOfService` varchar(255) NOT NULL COMMENT 'รวมอายุงาน',
  `fo_monthOfService` varchar(255) NOT NULL COMMENT 'รวมอายุงาน',
  `fo_bureauPaidedStatusPaid` varchar(255) NOT NULL COMMENT 'เคยค้างค่าผ่อนชำระเกิน 90 วันหรือไม่',
  `fo_propertyProjectName` varchar(255) NOT NULL COMMENT 'ชื่อบ้าน',
  `fo_province` varchar(255) NOT NULL COMMENT 'จังหวัด',
  `fo_amphur` varchar(255) NOT NULL COMMENT 'อำเภอ',
  `fo_district` varchar(255) NOT NULL COMMENT 'ตำบล',
  `fo_Radio` varchar(2) NOT NULL COMMENT 'ผู้กู้ร่วม',
  `fo_date` date NOT NULL,
  PRIMARY KEY (`fo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='ประวัติ';

-- Dumping data for table kasikorndb.formregiter: ~0 rows (approximately)
/*!40000 ALTER TABLE `formregiter` DISABLE KEYS */;
INSERT INTO `formregiter` (`fo_id`, `fo_groupType`, `fo_carMake`, `fo_carMake2`, `fo_lessmoney`, `fo_lessyear`, `fo_typebank`, `fo_checkbox1`, `fo_checkbox2`, `fo_checkbox3`, `fo_checkbox4`, `fo_prefix`, `fo_fNameTH`, `fo_lNameTH`, `fo_birthDay`, `fo_birthMonth`, `fo_birthYear`, `fo_refID`, `fo_mobilePhone`, `fo_email`, `fo_availableTime`, `fo_job`, `fo_salary`, `fo_yearOfService`, `fo_monthOfService`, `fo_bureauPaidedStatusPaid`, `fo_propertyProjectName`, `fo_province`, `fo_amphur`, `fo_district`, `fo_Radio`, `fo_date`) VALUES
	(5, '2015', 'BENZ', 'A180 AMG SPORT (WDD176042)', '2,222.00', '2', '5', 'ปิดสินเชื่อสถาบันการเงินอื่น (เช่น บัตรเครดิต สินเชื่อบุคคล รถยนต์ บ้าน)', 'ปิดหนี้สินเชื่ออื่นๆที่ไม่ใช่สถาบันการเงิน (เช่น ขายฝาก / จำนองกับบุคคลภายนอก)', '', '', '2', 'sadasddsa', 'asdasdasd', '03', '01', '2538', '1301500241933', '1234567890', 'top@top.com', '10.00-12.00 น.', '15', '22,222.00', '11', '4', '3', 'รรรร', '3', '59', '313', '1', '2018-08-16');
/*!40000 ALTER TABLE `formregiter` ENABLE KEYS */;

-- Dumping structure for table kasikorndb.kasikorn_price
CREATE TABLE IF NOT EXISTS `kasikorn_price` (
  `ka_id` int(11) NOT NULL AUTO_INCREMENT,
  `ye_year` varchar(50) NOT NULL DEFAULT '0',
  `br_name` varchar(50) NOT NULL DEFAULT '0',
  `ka_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`ka_id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;

-- Dumping data for table kasikorndb.kasikorn_price: ~312 rows (approximately)
/*!40000 ALTER TABLE `kasikorn_price` DISABLE KEYS */;
INSERT INTO `kasikorn_price` (`ka_id`, `ye_year`, `br_name`, `ka_price`) VALUES
	(1, '2017', 'NEW TT 2.0 S.lingquattro', 640000),
	(2, '2017', 'A180 1.6 CGI URBAN (WDD176042)', 600000),
	(3, '2017', 'A180 AMG SPORT (WDD176042)', 523000),
	(4, '2017', 'A250 2.0 CGI (WDD176044)', 300000),
	(5, '2017', 'A250 AMG SPORT', 500500),
	(6, '2017', 'B180 1.6 Sports Tourer Leather/Sunroof (WDD246)', 750000),
	(7, '2017', 'B200 1.6 (WDD246243)', 950000),
	(8, '2017', 'C250 COUPE AMG (WDD205345)', 785000),
	(9, '2017', 'C300 CABRIOLET (WDD205448)', 640000),
	(10, '2017', 'C300 HYBRIDE ESTATE (WDD205212)', 900000),
	(11, '2017', '116 I M Sport (1.5L)', 523000),
	(12, '2017', '118 I M Sport (1.6L)', 500000),
	(13, '2017', '118 I M Sport (F20) (MMFR540X05) B38B15A', 400000),
	(14, '2017', '118 I Sport', 300000),
	(15, '2017', '328 I (F30)', 500500),
	(16, '2017', '330 E', 750000),
	(17, '2017', '520 D GT', 950000),
	(18, '2017', '520 D M SPORT', 785000),
	(19, '2017', 'NEW CAPTIVA 2.0 LSX', 640000),
	(20, '2017', 'NEW CAPTIVA 2.0 LTZ', 900000),
	(21, '2017', 'NEW CAPTIVA 2.0 LTZ AWD', 523000),
	(22, '2017', 'NEW CAPTIVA 2.4 LTZ AWD', 500000),
	(23, '2017', 'NEW CAPTIVA 2.4 SLX A/T', 400000),
	(24, '2017', 'NEW COLORADO 2.5 C-CAB LS', 300000),
	(25, '2017', 'NEW COLORADO 2.5 C-CAB LT', 500500),
	(26, '2017', 'NEW COLORADO 2.5 C-CAB LT Z71', 750000),
	(28, '2017', 'NEW COLORADO 2.5 C-CAB LTZ Z71', 785000),
	(29, '2017', 'NEW COLORADO 2.5 C-CAB LTZ Z71 A/T', 640000),
	(30, '2017', 'ECO SPORT 1.5L AMBIENTE A/T', 900000),
	(31, '2017', 'ECO SPORT 1.5L AMBIENTE M/T MPBSXXMXKS...', 523000),
	(32, '2017', 'ECO SPORT 1.5L TITANIUM A/T', 640000),
	(33, '2017', 'ECO SPORT 1.5L TITANIUM A/T (SVP PACKAGE) MPBSXXMX', 900000),
	(34, '2017', 'ECO SPORT 1.5L TREND M/T', 950000),
	(35, '2017', 'FIESTA 1.5L A/T Sport 4DR', 300000),
	(36, '2017', 'FIESTA 1.5L A/T Trend 4DR (MNBAXXARJ)', 500500),
	(37, '2017', 'FIESTA 1.5L A/T Trend5Dr', 750000),
	(38, '2017', 'FIESTA 1.5L AMBIENTE 4DR A/T', 950000),
	(39, '2017', 'FIESTA 1.5L AMBIENTE5Dr A/T', 785000),
	(40, '2017', 'FIESTA 1.5LTITANIUM 4DR/5DR A/T', 640000),
	(41, '2017', 'NEW EVEREST 2.2 L TITANIUM A/T (MNBAXXMAWA)', 900000),
	(42, '2017', 'ACCORD (Minor Change) 2.0 E', 523000),
	(43, '2017', 'ACCORD (Minor Change) 2.0 EL', 500000),
	(44, '2017', 'ACCORD (Minor Change) 2.4 EL', 400000),
	(45, '2017', 'ACCORD HYBRID 2.0', 300000),
	(46, '2017', 'ACCORD HYBRID 2.0 TECH', 500500),
	(47, '2017', 'BRIO 1.2 S A/T (MRHDD1830)', 750000),
	(48, '2017', 'BRIO 1.2 S M/T (MRHDD1720)', 950000),
	(49, '2017', 'BRIO 1.2 V A/T (MRHDD18401850)', 785000),
	(50, '2017', 'BRIO 1.2 V LTD. A/T', 640000),
	(51, '2017', 'BRIO 1.2 V M/T (MRHDD1740)', 900000),
	(52, '2017', 'BRIO AMAZE 1.2S A/T (MRHDF1620)', 523000),
	(53, '2017', 'BRIO AMAZE 1.2S M/T (MRHDF1520)', 500000),
	(54, '2017', 'MU-X 1.9 (MP1TFR87G)', 400000),
	(55, '2017', 'MU-X 1.9 CD', 300000),
	(56, '2017', 'MU-X 1.9 DVD', 500500),
	(57, '2017', 'MU-X 1.9 DVD A/T', 750000),
	(58, '2017', 'MU-X 1.9 DVD NAVI', 950000),
	(59, '2017', 'MU-X 3.0 DVD Navi 4wd.', 785000),
	(60, '2017', 'MU-X 3.0 DVD Navi MP1TFR85G', 640000),
	(61, '2017', 'NEW D-MAX CAB4 1.9 S', 900000),
	(62, '2017', 'NEW D-MAX CAB4 1.9 Z', 523000),
	(63, '2017', 'NEW D-MAX HI-LANDER CAB4 1.9 L', 640000),
	(64, '2017', 'NEW D-MAX HI-LANDER CAB4 1.9 Z', 900000),
	(65, '2017', '2 SKYACTIVE 2XD (4DrMMSDL2S5DrMM8DJ2H)', 523000),
	(66, '2017', '2 SKYACTIVE 2XD High (4DrMMSDL2S5DrMM8DJ2H)', 300000),
	(67, '2017', '2 SKYACTIVE 2XD High Plus (4DrMMSDL2S5DrMM8DJ2H)', 500500),
	(68, '2017', 'CX 3 1.5 XDL (MM8DK2WSA)', 750000),
	(69, '2017', 'CX 3 2.0 C', 950000),
	(70, '2017', 'CX 3 2.0 E (MM8DK2W7A)', 785000),
	(71, '2017', 'CX 3 2.0 S (HIGH)', 640000),
	(72, '2017', 'CX 3 2.0 SP (HIGH PLUS)', 900000),
	(73, '2017', 'CX 5 SKYACTIVE 2.0C (PP1KEA172)', 523000),
	(74, '2017', 'NEW PAJERO SPORT 2.4 GLS', 500000),
	(75, '2017', 'NEW PAJERO SPORT 2.4 GT', 400000),
	(76, '2017', 'NEW PAJERO SPORT 2.4 GT 4WD', 300000),
	(77, '2017', 'NEW TRITON D- Cab 2.4 GLX (Benzine) (MMTJJKK10)', 500500),
	(78, '2017', 'NEW TRITON D- Cab 2.5 GLS LTD 4WD', 750000),
	(79, '2017', 'NEW TRITON D- Cab 2.5 GLS LTD 4WD A/T (MMTJYKL10)', 950000),
	(80, '2017', 'NEW TRITON D- Cab 2.5 GLX', 785000),
	(81, '2017', 'NEW TRITON D-Cab 2.5 GLS 4WD (MMTJJKL10)', 640000),
	(82, '2017', 'NEW TRITON D-Cab Plus 2.4 GLS (Benzine)', 900000),
	(83, '2017', 'NEW TRITON D-Cab Plus 2.5 GLS', 523000),
	(84, '2017', 'ALMERA 1.2 E CVT / SPORTTECH', 500000),
	(85, '2017', 'ALMERA 1.2 E M/T', 400000),
	(86, '2017', 'ALMERA 1.2 EL CVT', 300000),
	(87, '2017', 'ALMERA 1.2 S M/T (MNTBAAN17Z)', 500500),
	(88, '2017', 'ALMERA 1.2 V CVT', 750000),
	(89, '2017', 'ALMERA 1.2 VL CVT / SPORTECH', 950000),
	(90, '2017', 'BIG URVAN 2.5 CNG High-Roof', 785000),
	(91, '2017', 'BIG URVAN 2.5 CNG High-Roof A/T', 640000),
	(92, '2017', 'JUKE 1.6 E (MHBFBAF15Z)', 900000),
	(93, '2017', 'Ciaz 1.2 GA M/T', 523000),
	(94, '2017', 'Ciaz 1.2 GL A/T', 640000),
	(95, '2017', 'Ciaz 1.2 GL M/T', 900000),
	(96, '2017', 'Ciaz 1.2 GLX', 523000),
	(97, '2017', 'Ciaz 1.2 RS', 300000),
	(98, '2017', 'NEW SWIFT 1.2 GA A/T', 500500),
	(99, '2017', 'NEW SWIFT 1.2 GA MMSHZC72S', 750000),
	(100, '2017', 'NEW SWIFT 1.2 GL', 950000),
	(101, '2017', 'NEW ALPHARD 2.5 / VELLFIRE 2.5 (AGH300  AYH300)', 785000),
	(102, '2017', 'NEW ALPHARD 2.5 / VELLFIRE 2.5 Hybrid', 640000),
	(103, '2017', 'NEW AVANZA 1.5 E A/T', 900000),
	(104, '2017', 'NEW AVANZA 1.5 E M/T', 523000),
	(105, '2017', 'NEW AVANZA 1.5 G A/T', 500000),
	(106, '2017', 'NEW AVANZA 1.5 S A/T (MHKM1CB4T)', 400000),
	(107, '2017', 'NEW AVANZA 1.5 S TOURING', 300000),
	(108, '2017', 'NEW CAMRY 2.0 G', 500500),
	(109, '2017', 'NEW CAMRY 2.0 G EXTREMO (Minor change 2015)(D4S)', 750000),
	(110, '2017', 'NEW CAMRY 2.0 G MR053BK51 (Minor change 2015) EXTR', 950000),
	(111, '2017', 'NEW VIOS 1.5 E', 785000),
	(112, '2017', 'NEW VIOS 1.5 E A/T', 640000),
	(113, '2017', 'NEW VIOS 1.5 G', 900000),
	(114, '2017', 'NEW VIOS 1.5 J (MR2BT9F)', 523000),
	(115, '2017', 'NEW VIOS 1.5 J TRD SPORTIVO', 500000),
	(116, '2017', 'NEW VIOS 1.5 S', 400000),
	(117, '2017', 'NEW YARIS 1.2 E', 300000),
	(118, '2017', 'NEW YARIS 1.2 G', 500500),
	(119, '2017', 'NEW YARIS 1.2 J (MR2K39F)', 750000),
	(120, '2017', 'NEW YARIS 1.2 J A/T', 950000),
	(121, '2017', 'REVO 2.4 E A/T SMART CAB PRERUNNER (MROJB8DC)', 785000),
	(122, '2016', 'A5', 640000),
	(123, '2016', 'A6 AVANT 3.0 TDI', 900000),
	(124, '2016', 'A8 QUATTRO 4.2 V8 A/T (WAUZZZ4HX)', 523000),
	(125, '2016', 'NEW TT 2.0', 640000),
	(126, '2016', 'NEW TT 2.0 S.lingquattro', 900000),
	(127, '2016', 'A180 1.6 CGI URBAN (WDD176042)', 600000),
	(128, '2016', 'A180 AMG SPORT (WDD176042)', 523000),
	(129, '2016', 'A250 2.0 CGI (WDD176044)', 500500),
	(130, '2016', 'A250 AMG SPORT', 500500),
	(131, '2016', 'B180 1.6 Sports Tourer Leather/Sunroof (WDD246)', 950000),
	(132, '2016', 'B200 1.6 (WDD246243)', 785000),
	(133, '2016', 'C250 COUPE', 640000),
	(134, '2016', 'C250 COUPE AMG (WDD205345)', 900000),
	(135, '2016', '116 I (F20)', 523000),
	(136, '2016', '116 I M Sport (1.5L)', 500000),
	(137, '2016', '1161 M Sport (MMF1A140)', 400000),
	(138, '2016', '118 I M Sport (F20) (MMFR540X05) B38B15A', 300000),
	(139, '2016', '118 I Sport', 300000),
	(140, '2016', '220 I COUPE MSPORT (WBA1J2080VW)', 750000),
	(141, '2016', '220 I COUPE SPORT (F22) Tourer', 950000),
	(142, '2016', '328 I (F30)', 785000),
	(143, '2016', '330 E', 640000),
	(144, '2016', 'CAPTIVA 2.0 DSL LTZ (MMMCD26YJC)NAVI/WHITE', 900000),
	(145, '2016', 'CAPTIVA 2.0 LSX / WHITE', 523000),
	(146, '2016', 'CAPTIVA 2.0 LTZ AWD (NAVI) (MMMCD26Y)', 500000),
	(147, '2016', 'CAPTIVA 2.4 LS', 400000),
	(148, '2016', 'CAPTIVA 2.4 LSX', 300000),
	(149, '2016', 'CAPTIVA 2.4 LTZ AWD (NAVI) (MMMCB2611BH) White', 500500),
	(150, '2016', 'COLORADO 2.5 C-CAB LS1 (MMM148EG0)', 750000),
	(151, '2016', 'COLORADO 2.5 C-CAB LT', 950000),
	(152, '2016', 'COLORADO 2.5 C-CAB LT Z71', 785000),
	(153, '2016', 'COLORADO 2.5 C-CAB LT Z71 4WD', 640000),
	(154, '2016', 'COLORADO 2.5 S-CAB LS (MMM144CL0)', 900000),
	(155, '2016', 'COLORADO 2.5 S-CAB LS MAX', 523000),
	(156, '2016', 'ECO SPORT 1.5L AMBIENTE A/T', 640000),
	(157, '2016', 'ECO SPORT 1.5L AMBIENTE M/T MPBSXXMXKS...', 900000),
	(158, '2016', 'ECO SPORT 1.5L TITANIUM A/T', 523000),
	(159, '2016', 'ECO SPORT 1.5L TITANIUM A/T (SVP PACKAGE) MPBSXXMX', 300000),
	(160, '2016', 'ECO SPORT 1.5L TREND M/T', 950000),
	(161, '2016', 'FIESTA 1.0 ECOBOOT A/T 4DR MNBSXXARJ8', 750000),
	(162, '2016', 'FIESTA 1.0 ECOBOOT A/T5Dr  MNBSXXARJ8', 950000),
	(163, '2016', 'FIESTA 1.5L A/T Sport 4DR', 785000),
	(164, '2016', 'FIESTA 1.5L A/T Trend 4DR (MNBAXXARJ)', 640000),
	(165, '2016', 'FIESTA 1.5L A/T Trend5Dr', 900000),
	(166, '2016', 'CITY 1.5 S A/T (MRHGM6620)', 523000),
	(167, '2016', 'CITY 1.5 S M/T (MRHGM6520)', 500000),
	(168, '2016', 'CITY 1.5 SV (MRHGM6640)', 400000),
	(169, '2016', 'NEW JAZZ 1.5 RS PLUS (MRHGK5860)', 300000),
	(170, '2016', 'NEW JAZZ 1.5 S A/T (MRHGK5830)', 500500),
	(171, '2016', 'NEW JAZZ 1.5 S M/T (MRHGK5730)', 750000),
	(172, '2016', 'MU-X 1.9 (MP1TFR87G)', 950000),
	(173, '2016', 'MU-X 1.9 CD', 785000),
	(174, '2016', 'NEW D-MAX CAB4 1.9 S', 640000),
	(175, '2016', 'NEW D-MAX HI-LANDER CAB4 1.9 Z', 900000),
	(176, '2016', 'NEW D-MAX HI-LANDER CAB4 1.9 Z DVD', 523000),
	(177, '2016', 'NEW D-MAX HI-LANDER CAB4 1.9 Z Prestiqe', 500000),
	(178, '2016', 'NEW D-MAX HI-LANDER CAB4 2.5 L', 400000),
	(179, '2016', '2 SKYACTIVE 2XD (4DrMMSDL2S5DrMM8DJ2H)', 300000),
	(180, '2016', '2 SKYACTIVE 2XD High (4DrMMSDL2S5DrMM8DJ2H)', 500500),
	(181, '2016', '2 SKYACTIVE 2XD High Plus (4DrMMSDL2S5DrMM8DJ2H)', 750000),
	(182, '2016', 'CX 3 1.5 XDL (MM8DK2WSA)', 950000),
	(183, '2016', 'CX 3 2.0 C', 785000),
	(184, '2016', 'CX 3 2.0 E (MM8DK2W7A)', 640000),
	(185, '2016', 'CX 3 2.0 S (HIGH)', 900000),
	(186, '2016', 'CX 3 2.0 SP (HIGH PLUS)', 523000),
	(187, '2016', 'CX 5 SKYACTIVE 2.0C (PP1KEA172)', 640000),
	(188, '2016', 'CX 5 SKYACTIVE 2.0S (PP1KEA272)', 900000),
	(189, '2016', 'CX 5 SKYACTIVE 2.5S (PP1KEA232)', 523000),
	(190, '2016', 'ATTRAGE 1.2 GLS A/T', 300000),
	(191, '2016', 'ATTRAGE 1.2 GLS LTD. A/T', 500500),
	(192, '2016', 'ATTRAGE 1.2 GLX', 750000),
	(193, '2016', 'ATTRAGE 1.2 GLX A/T', 950000),
	(194, '2016', 'MIRAGE 1.2 GL M/T', 785000),
	(195, '2016', 'MIRAGE 1.2 GLS CVT A/T', 640000),
	(196, '2016', 'MIRAGE 1.2 GLS LTD. CVT A/T', 900000),
	(197, '2016', 'ALMERA 1.2 E CVT / SPORTTECH', 523000),
	(198, '2016', 'ALMERA 1.2 E M/T', 500000),
	(199, '2016', 'ALMERA 1.2 EL CVT', 400000),
	(200, '2016', 'ALMERA 1.2 S M/T (MNTBAAN17Z)', 300000),
	(201, '2016', 'ALMERA 1.2 V CVT', 500500),
	(202, '2016', 'ALMERA 1.2 VL CVT / SPORTECH', 750000),
	(203, '2016', 'Ciaz 1.2 GA M/T', 950000),
	(204, '2016', 'Ciaz 1.2 GL A/T', 785000),
	(205, '2016', 'Ciaz 1.2 GL M/T', 640000),
	(206, '2016', 'Ciaz 1.2 GLX', 900000),
	(207, '2016', 'Ciaz 1.2 RS', 523000),
	(208, '2016', 'NEW CELERIO 1.0 GA M/T', 500000),
	(209, '2016', 'NEW CELERIO 1.0 GIX CVT', 400000),
	(210, '2016', 'NEW CELERIO 1.0 GL CVT (MMSLFE42S)', 300000),
	(211, '2016', 'INNOVA 2.0 E M/T', 500500),
	(212, '2016', 'INNOVA 2.0 G A/T', 750000),
	(213, '2016', 'NEW VIOS 1.5 E', 950000),
	(214, '2016', 'NEW VIOS 1.5 E A/T', 785000),
	(215, '2016', 'NEW VIOS 1.5 G', 640000),
	(216, '2016', 'NEW VIOS 1.5 J (MR2BT9F)', 900000),
	(217, '2016', 'NEW VIOS 1.5 J A/T', 523000),
	(218, '2016', 'NEW VIOS 1.5 J TRD SPORTIVO', 640000),
	(219, '2016', 'NEW VIOS 1.5 S', 900000),
	(220, '2015', 'A6 AVANT 3.0 TDI', 523000),
	(221, '2015', 'A8 2.0', 300000),
	(222, '2015', 'A8 QUATTRO 4.2 V8 A/T (WAUZZZ4HX)', 500500),
	(223, '2015', 'NEW TT 2.0', 750000),
	(224, '2015', 'NEW TT 2.0 S.lingquattro', 950000),
	(225, '2015', 'A180 1.6 CGI URBAN (WDD176042)', 600000),
	(226, '2015', 'A180 AMG SPORT (WDD176042)', 523000),
	(227, '2015', 'A250 2.0 CGI (WDD176044)', 900000),
	(228, '2015', 'A250 AMG SPORT', 500500),
	(229, '2015', 'B180 1.6 Sports Tourer Leather/Sunroof (WDD246)', 500000),
	(230, '2015', 'B200 1.6 (WDD246243)', 400000),
	(231, '2015', 'C220 CDI (W204)', 300000),
	(232, '2015', '116 I (F20)', 500500),
	(233, '2015', '1161 M Sport (MMF1A140)', 750000),
	(234, '2015', '118 I M Sport (F20) (MMFR540X05) B38B15A', 950000),
	(235, '2015', '118 I Sport', 300000),
	(236, '2015', '220 I COUPE MSPORT (WBA1J2080VW)', 640000),
	(237, '2015', '328 I (F30)', 900000),
	(238, '2015', '420 D CONVERTIBLE M SPORT', 523000),
	(239, '2015', '420 D CONVERTIBLE SPORT', 500000),
	(240, '2015', '420 D COUPE M SPORT', 400000),
	(241, '2015', '420 D COUPE SPORT', 300000),
	(242, '2015', '420 I COUPE M SPORT', 500500),
	(243, '2015', '420 I COUPE SPORT', 750000),
	(244, '2015', 'CAPTIVA 2.0 DSL LTZ (MMMCD26YJC)NAVI/WHITE', 950000),
	(245, '2015', 'CAPTIVA 2.0 LSX / WHITE', 785000),
	(246, '2015', 'CAPTIVA 2.0 LTZ AWD (NAVI) (MMMCD26Y)', 640000),
	(247, '2015', 'CAPTIVA 2.4 LS', 900000),
	(248, '2015', 'CAPTIVA 2.4 LSX', 523000),
	(249, '2015', 'CAPTIVA 2.4 LTZ AWD (NAVI) (MMMCB2611BH) White', 640000),
	(250, '2015', 'COLORADO 2.5 C-CAB LS1 (MMM148EG0)', 900000),
	(251, '2015', 'COLORADO 2.5 C-CAB LT', 523000),
	(252, '2015', 'ECO SPORT 1.5L AMBIENTE A/T', 300000),
	(253, '2015', 'ECO SPORT 1.5L AMBIENTE M/T MPBSXXMXKS...', 500500),
	(254, '2015', 'ECO SPORT 1.5L TITANIUM A/T', 750000),
	(255, '2015', 'ECO SPORT 1.5L TREND M/T', 950000),
	(256, '2015', 'FIESTA 1.5L AMBIENTE5Dr A/T', 785000),
	(257, '2015', 'FIESTA 1.5LTITANIUM 4DR/5DR A/T', 640000),
	(258, '2015', 'NEW EVEREST 2.2 L TITANIUM A/T (MNBAXXMAWA)', 900000),
	(259, '2015', 'CITY 1.5 S A/T (MRHGM6620)', 523000),
	(260, '2015', 'CITY 1.5 S M/T (MRHGM6520)', 500000),
	(261, '2015', 'CITY 1.5 V (MRHGM6630)', 400000),
	(262, '2015', 'CITY CNG 1.5 S A/T', 300000),
	(263, '2015', 'CITY CNG 1.5 S M/T', 500500),
	(264, '2015', 'CIVIC 1.5 HYBRID NAVI (MRHFB4620)', 750000),
	(265, '2015', 'CIVIC 1.8E (MRHFB2630)', 950000),
	(266, '2015', 'CIVIC 1.8E NAVI (MRHFB2630)', 785000),
	(267, '2015', 'MU-X 2.5 CD MP1TFR86G', 640000),
	(268, '2015', 'MU-X 2.5 DVD', 900000),
	(269, '2015', 'MU-X 3.0 DVD Navi 4wd.', 523000),
	(270, '2015', 'MU-X 3.0 DVD Navi MP1TFR85G', 500000),
	(271, '2015', 'NEW D-MAX CAB4 2.5 L', 400000),
	(272, '2015', 'NEW D-MAX CAB4 2.5 S', 300000),
	(273, '2015', 'NEW D-MAX HI-LANDER CAB4 2.5 L', 500500),
	(274, '2015', 'NEW D-MAX HI-LANDER CAB4 2.5 VGS L', 750000),
	(275, '2015', 'NEW D-MAX HI-LANDER CAB4 2.5 VGS Z (DVD)', 950000),
	(276, '2015', 'CX 3 1.5 XDL (MM8DK2WSA)', 785000),
	(277, '2015', 'CX 3 2.0 C', 640000),
	(278, '2015', 'CX 3 2.0 E (MM8DK2W7A)', 900000),
	(279, '2015', 'CX 3 2.0 S (HIGH)', 523000),
	(280, '2015', 'CX 3 2.0 SP (HIGH PLUS)', 640000),
	(281, '2015', 'CX 5 SKYACTIVE 2.0C (PP1KEA172)', 900000),
	(282, '2015', 'CX 5 SKYACTIVE 2.0S (PP1KEA272)', 523000),
	(283, '2015', 'CX 5 SKYACTIVE 2.5S (PP1KEA232)', 300000),
	(284, '2015', 'NEW LANCER EX 1.8 GLX A/T', 500500),
	(285, '2015', 'NEW LANCER EX 1.8 GLX A/T (White Pearl)', 750000),
	(286, '2015', 'NEW LANCER EX 2.0 GT A/T', 950000),
	(287, '2015', 'NEW TRITON D- Cab 2.4 GLX (Benzine) (MMTJJKK10)', 785000),
	(288, '2015', 'NEW TRITON D- Cab 2.5 GLS LTD 4WD', 640000),
	(289, '2015', 'NEW TRITON D- Cab 2.5 GLS LTD 4WD A/T (MMTJYKL10)', 900000),
	(290, '2015', 'NEW TRITON D- Cab 2.5 GLX', 523000),
	(291, '2015', 'NEW TRITON D-Cab 2.5 GLS 4WD (MMTJJKL10)', 500000),
	(292, '2015', 'NEW TRITON D-Cab Plus 2.4 GLS (Benzine)', 400000),
	(293, '2015', 'ALMERA 1.2 E CVT / SPORTTECH', 300000),
	(294, '2015', 'ALMERA 1.2 E M/T', 500500),
	(295, '2015', 'ALMERA 1.2 EL CVT', 750000),
	(296, '2015', 'ALMERA 1.2 V CVT', 950000),
	(297, '2015', 'BIG URVAN 2.5 CNG High-Roof', 785000),
	(298, '2015', 'BIG URVAN 2.5 CNG High-Roof A/T', 640000),
	(299, '2015', 'JUKE 1.6 V', 900000),
	(300, '2015', 'MARCH 1.2 E A/T CVT', 523000),
	(301, '2015', 'MARCH 1.2 E M/T', 500000),
	(302, '2015', 'NEW CELERIO 1.0 GA M/T', 400000),
	(303, '2015', 'NEW CELERIO 1.0 GIX CVT', 300000),
	(304, '2015', 'NEW ERTIGA 1.4 GA M/T (MHYKZE81S)', 500500),
	(305, '2015', 'NEW ERTIGA 1.4 GL A/T', 750000),
	(306, '2015', 'NEW ERTIGA 1.4 GX A/T', 950000),
	(307, '2015', 'NEW SWIFT 1.2 GA A/T', 785000),
	(308, '2015', 'NEW SWIFT 1.2 GL', 640000),
	(309, '2015', 'NEW SWIFT 1.2 RX RXII (1.2 SL)', 900000),
	(314, '2018', 'test1', 10),
	(315, '2018', 'test2', 10),
	(316, '2018', 'test1.2', 10),
	(317, '2018', 'test1.3', 10);
/*!40000 ALTER TABLE `kasikorn_price` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
