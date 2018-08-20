-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
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

-- Dumping structure for table kasikorndb.gather
CREATE TABLE IF NOT EXISTS `gather` (
  `ga_id` int(11) DEFAULT NULL COMMENT 'iduser',
  `ga_name` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `ga_email` varchar(50) DEFAULT NULL COMMENT 'email',
  `ga_prie` int(11) DEFAULT NULL COMMENT 'เงินที่ต้องจ่าย',
  `ga_fistPeriod` int(11) DEFAULT NULL COMMENT 'งวดทั้งหมด',
  `ga_lastPeriod` int(11) DEFAULT NULL COMMENT 'งวดที่เหลือ',
  `ga_day` int(11) DEFAULT NULL COMMENT 'วัดที่จ่าย',
  `ga_mont` varchar(3) DEFAULT NULL COMMENT 'เดือนที่ต้องจ่าย',
  `ga_year` varchar(5) DEFAULT NULL COMMENT 'ปี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='รวบรวม';

-- Dumping data for table kasikorndb.gather: ~0 rows (approximately)
/*!40000 ALTER TABLE `gather` DISABLE KEYS */;
/*!40000 ALTER TABLE `gather` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
