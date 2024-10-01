-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2024 at 12:43 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int NOT NULL,
  `dpt_name` varchar(20) DEFAULT NULL,
  `dpt_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dpt_name`, `dpt_phone`) VALUES
(101, 'Radiology', '2200193'),
(102, 'Cardiology', '2200194'),
(103, 'Pediatrics', '2200195'),
(104, 'Orthopedics', '2200196'),
(105, 'Emergency', '2200197');

-- --------------------------------------------------------

--
-- Table structure for table `dr`
--

DROP TABLE IF EXISTS `dr`;
CREATE TABLE IF NOT EXISTS `dr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `dpt_name` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `experience` varchar(20) DEFAULT NULL,
  `fees` varchar(20) DEFAULT NULL,
  `ID_number` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id_number` (`ID_number`),
  KEY `dpt_id` (`dpt_name`(250))
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dr`
--

INSERT INTO `dr` (`id`, `name`, `dpt_name`, `gender`, `experience`, `fees`, `ID_number`, `phone`, `age`) VALUES
(120, 'Sachin', 'Cardiology', 'Male', '10', '1001', '112121221212', '9988776655', NULL),
(121, 'Raj', 'Emergency', 'Male', '12', '30000', '998877665577', '8877998877', NULL),
(122, 'Munna', 'Radiology', 'Male', '1', '10000', '009988112222', '8877998877', NULL),
(123, 'samir', 'Emergency', 'Male', '10', '20000', '9988776677', '9898989283', 29),
(124, 'Mukesh', 'Pediatrics', 'Male', '12', '2111', '112233445566', '2233445566', 40),
(125, 'Dadhi', 'Orthopedics', 'Male', '10', '900', '009988776655', '8877665544', 39),
(126, 'Faizan', 'Pediatrics', 'Male', '5', '1000', '112233332211', '9988776655', 39);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `uname`, `pass`) VALUES
(1, 'sachin', 'code10'),
(2, 'dadhi', 'code20');

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

DROP TABLE IF EXISTS `patient_info`;
CREATE TABLE IF NOT EXISTS `patient_info` (
  `number` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `disease` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `deposit` varchar(20) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `drname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`number`, `name`, `gender`, `disease`, `r_no`, `time`, `deposit`, `contact`, `drname`) VALUES
('225588774411', 'DD', 'Male', 'Emergency', '13', '2024-09-27 09:09:01', '21', '2255882255', 'Raj'),
('009988776655', 'AX', 'Male', 'Emergency', '1', '2024-09-27 09:09:47', '1122', '1122334455', 'Raj'),
('998877665544', 'Rohit', 'Male', 'Pediatrics', '3', '2024-09-27 11:09:28', '9999', '9988776655', 'Mukesh');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('Unavailable','Available') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `status`, `price`) VALUES
(1, 'Unavailable', 10000.00),
(2, 'Available', 10000.00),
(3, 'Unavailable', 10000.00),
(4, 'Available', 10000.00),
(5, 'Unavailable', 10000.00),
(6, 'Available', 25000.00),
(7, 'Available', 25000.00),
(8, 'Available', 25000.00),
(9, 'Available', 25000.00),
(10, 'Unavailable', 25000.00),
(11, 'Unavailable', 20000.00),
(12, 'Available', 20000.00),
(13, 'Available', 20000.00),
(14, 'Available', 20000.00),
(15, 'Unavailable', 20000.00);

-- --------------------------------------------------------

--
-- Table structure for table `staf_info`
--

DROP TABLE IF EXISTS `staf_info`;
CREATE TABLE IF NOT EXISTS `staf_info` (
  `id_card` varchar(99) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_card`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staf_info`
--

INSERT INTO `staf_info` (`id_card`, `NAME`, `age`, `phone`, `gender`, `category`) VALUES
('123-323-4566', 'Kajol', 20, 'Male', 'Nurse', '989989293'),
('453-3333-66', 'Shree', 21, 'Female', 'Nurse', '9899455293'),
('453-3333-6623', 'mahesh', 29, 'Male', 'Cleaner', '91239455293'),
('3353-4133-6623', 'Mukesh', 21, 'Male', 'WardBoy', '7334552931'),
('4420-8892-6623', 'Raju', 40, 'Male', 'Caregiver', '7334552931'),
('112233445566', 'Abhishek', 33, 'Male', 'Attendant', '1122336655'),
('556677889900', 'Soyal', 95, 'Male', 'WardBoy', '9988776655');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
