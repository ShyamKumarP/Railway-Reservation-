-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 07:37 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rail_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `rail_passenger`
--

CREATE TABLE `rail_passenger` (
  `Pass_SrNo` int(5) NOT NULL,
  `Pass_SrName` varchar(20) NOT NULL,
  `Pass_Gender` varchar(1) NOT NULL DEFAULT 'M',
  `Pass_FromStation` varchar(20) NOT NULL,
  `Pass_ToStation` varchar(20) NOT NULL,
  `Pass_TrainNumber` int(5) NOT NULL,
  `Pass_TicketNumber` int(10) NOT NULL,
  `Pass_BerthNumber` int(4) NOT NULL,
  `Pass_Confirm` int(5) NOT NULL,
  `Pass_Fare` int(10) NOT NULL,
  `Pass_JourneyDate` date DEFAULT NULL,
  `Pass_EntryDate` datetime NOT NULL DEFAULT current_timestamp(),
  `Pass_CoachCode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rail_passenger`
--

INSERT INTO `rail_passenger` (`Pass_SrNo`, `Pass_SrName`, `Pass_Gender`, `Pass_FromStation`, `Pass_ToStation`, `Pass_TrainNumber`, `Pass_TicketNumber`, `Pass_BerthNumber`, `Pass_Confirm`, `Pass_Fare`, `Pass_JourneyDate`, `Pass_EntryDate`, `Pass_CoachCode`) VALUES
(4015, 'SARITHA', 'F', 'PANVEL', 'KALYAN', 5000, 56744, 2, 2, 16000, '2022-02-12', '2021-08-17 14:53:25', 'S1'),
(4017, 'KARAN', 'M', 'PANVEL', 'KALYAN', 5000, 56745, 3, 3, 16000, '2022-02-12', '2021-08-17 14:53:25', 'S1'),
(4020, 'SHALINI', 'F', 'PANVEL', 'KALYAN', 5000, 56747, 4, 4, 16000, '2022-02-12', '2021-08-17 14:53:25', 'S1'),
(4021, 'SHALINI', 'F', 'PANVEL', 'KALYAN', 5000, 56748, 5, 5, 16000, '2022-02-12', '2021-08-17 14:53:25', 'S1'),
(4022, 'SHALINI', 'F', 'PANVEL', 'KALYAN', 5000, 56749, 6, 6, 16000, '2022-02-12', '2021-08-17 14:53:25', 'S1'),
(4023, 'VIJAY', 'M', 'PANVEL', 'KALYAN', 5000, 56749, 7, 7, 16000, '2022-02-12', '2021-08-17 14:53:25', 'S1'),
(4024, 'shyam', 'm', 'PANVEL', 'KALYAN', 5000, 56750, 8, 8, 8000, '2022-02-12', '2021-08-17 14:55:41', 'S1'),
(4025, 'SHYAM', 'M', 'PANVEL', 'KALYAN', 5000, 56751, 9, 9, 8000, '2022-02-12', '2021-08-17 14:59:18', 'S1'),
(4026, 'SARITHA', 'F', 'PANVEL', 'KALYAN', 5000, 56752, 10, 10, 16000, '2022-02-12', '2021-08-17 15:13:23', 'S1'),
(4037, 'SHARMA', 'M', 'PANVEL', 'KALYAN', 5000, 56754, 1, 11, 40000, '2022-02-12', '2021-09-02 00:10:47', 'S2'),
(4039, 'MIKE', 'M', 'PANVEL', 'KALYAN', 5000, 56756, 2, 12, 8000, '2022-02-12', '2021-09-04 15:36:07', 'S2'),
(4042, 'SUNIL', 'M', 'PANVEL', 'KALYAN', 5000, 56758, 3, 13, 16000, '2022-02-12', '2021-09-05 21:22:42', 'S2'),
(4043, 'GAVASKAR', 'M', 'PANVEL', 'KALYAN', 5000, 56758, 4, 14, 16000, '2022-02-12', '2021-09-05 21:22:50', 'S2'),
(4044, 'HELLO WORLD', 'M', 'PANVEL', 'KALYAN', 5000, 56759, 5, 15, 8000, '2022-02-12', '2021-11-06 20:48:48', 'S2'),
(4045, 'shyam', 'm', 'PANVEL', 'KALYAN', 5000, 56760, 6, 16, 16000, '2022-02-12', '2022-02-08 23:40:54', 'S2'),
(4046, 'kumar', 'm', 'PANVEL', 'KALYAN', 5000, 56760, 7, 17, 16000, '2022-02-12', '2022-02-08 23:41:02', 'S2'),
(4048, 'SHYAM', 'm', 'PANVEL', 'KALYAN', 5000, 56762, 8, 18, 3250, '2022-02-12', '2022-02-08 23:44:00', 'S2'),
(4049, 'KUmar', 'm', 'PANVEL', 'KALYAN', 5000, 56762, 9, 19, 3250, '2022-02-12', '2022-02-08 23:44:08', 'S2'),
(4050, 'MESSI', 'm', 'PANVEL', 'KALYAN', 5000, 56763, 10, 20, 3250, '2022-02-12', '2022-02-09 00:07:51', 'S2'),
(4051, 'NEYMAR', 'm', 'PANVEL', 'KALYAN', 5000, 56763, 1, 21, 3250, '2022-02-12', '2022-02-09 00:08:13', 'WL'),
(4052, 'oajsojsa', 'm', 'PANVEL', 'KALYAN', 5000, 56764, 2, 22, 1650, '2022-02-12', '2022-02-09 00:13:12', 'WL'),
(4054, 'bbb', 'm', 'PANVEL', 'KALYAN', 5000, 56766, 3, 23, 1650, '2022-02-12', '2022-02-09 00:17:21', 'WL'),
(4055, 'me', 'f', 'PANVEL', 'KALYAN', 5000, 56767, 4, 24, 1650, '2022-02-12', '2022-02-09 11:13:26', 'WL'),
(4056, 'VIJAY', 'M', 'PANVEL', 'KALYAN', 5000, 56768, 5, 25, 1400, '2022-02-12', '2022-02-09 11:35:33', 'WL'),
(4057, ' SARITHA', 'F', 'PANVEL', 'KALYAN', 5000, 56768, 6, 26, 1400, '2022-02-12', '2022-02-09 11:41:47', 'WL'),
(4058, 'SHYAM', 'M', 'PANVEL', 'KALYAN', 5000, 56768, 7, 27, 1400, '2022-02-12', '2022-02-09 11:42:22', 'WL'),
(4059, 'SHALINI', 'F', 'PANVEL', 'KALYAN', 5000, 56768, 8, 28, 1400, '2022-02-12', '2022-02-09 11:42:35', 'WL'),
(4063, 'HARI', 'M', 'PANVEL', 'KALYAN', 5000, 56770, 9, 29, 1050, '2022-02-12', '2022-02-09 11:57:24', 'WL'),
(4064, 'USHA', 'F', 'PANVEL', 'KALYAN', 5000, 56770, 10, 30, 1050, '2022-02-12', '2022-02-09 11:57:37', 'WL'),
(4065, 'GOPIKA', 'F', 'PANVEL', 'KALYAN', 5000, 56770, 11, 31, 1050, '2022-02-12', '2022-02-09 11:57:52', 'WL'),
(4066, 'SAJA', 'F', 'PANVEL', 'KALYAN', 5000, 56771, 12, 32, 700, '2022-02-12', '2022-02-09 12:00:40', 'WL'),
(4067, 'DEEPAK', 'M', 'PANVEL', 'KALYAN', 5000, 56771, 13, 33, 700, '2022-02-12', '2022-02-09 12:00:54', 'WL'),
(4068, 'X', 'M', 'PANVEL', 'KALYAN', 5000, 56772, 14, 34, 3300, '2022-02-12', '2022-02-09 14:32:58', 'WL'),
(4069, 'Y', 'F', 'PANVEL', 'KALYAN', 5000, 56772, 15, 35, 3300, '2022-02-12', '2022-02-09 14:33:01', 'WL'),
(4070, 'X', 'M', 'PANVEL', 'KALYAN', 5000, 56773, 16, 36, 3300, '2022-02-12', '2022-02-09 18:04:54', 'WL'),
(4071, 'Y', 'F', 'PANVEL', 'KALYAN', 5000, 56773, 17, 37, 3300, '2022-02-12', '2022-02-09 18:04:57', 'WL'),
(4072, 'RAVI', 'M', 'PANVEL', 'KALYAN', 5000, 56774, 18, 38, 122, '2022-02-12', '2022-02-10 13:19:27', 'WL'),
(4073, 'RAJ', 'M', 'PANVEL', 'KALYAN', 5000, 56775, 19, 39, 122, '2022-02-12', '2022-02-10 13:24:25', 'WL'),
(4074, 'me', 'm', 'panvel', 'nashik', 6000, 56776, 0, 0, 788, '2022-02-12', '2022-02-10 14:49:26', ''),
(4075, 'my friend', 'm', 'panvel', 'nashik', 6000, 56776, 0, 0, 788, '2022-02-12', '2022-02-10 14:49:31', ''),
(1, 'MICHAEL', 'M', 'PANVEL', 'KALYAN', 5000, 16392, 1, 1, 122, '2022-02-12', '0000-00-00 00:00:00', 'S1'),
(4078, 'SHYAMKUAMR', 'M', 'PANVEL', 'KALYAN', 5000, 56778, 1, 1, 122, '2024-06-02', '2024-06-02 10:23:44', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `rail_price_master`
--

CREATE TABLE `rail_price_master` (
  `price_train_number` int(5) NOT NULL,
  `price_from_station` varchar(20) NOT NULL,
  `price_to_station` varchar(20) NOT NULL,
  `price-fare` int(20) NOT NULL,
  `price_distance` int(5) NOT NULL,
  `PRICE_PK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rail_price_master`
--

INSERT INTO `rail_price_master` (`price_train_number`, `price_from_station`, `price_to_station`, `price-fare`, `price_distance`, `PRICE_PK`) VALUES
(5000, 'PANVEL', 'KALYAN', 0, 36, 1),
(6000, 'PANVEL', 'NASHIK', 0, 172, 2),
(7000, 'PANVEL', 'JHANSI', 0, 1065, 3),
(8000, 'PANVEL', 'KOTA', 0, 1054, 4),
(9000, 'PANVEL', 'DELHI', 0, 1435, 5),
(5000, 'KALYAN', 'PANVEL', 0, 36, 6),
(6000, 'NASHIK', 'PANVEL', 0, 172, 7),
(7000, 'JHANSI', 'PANVEL', 0, 1065, 8),
(8000, 'KOTA', 'PANVEL', 0, 1054, 9),
(9000, 'DELHI', 'PANVEL', 0, 1436, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rail_staff`
--

CREATE TABLE `rail_staff` (
  `Staff_Emp_No` int(5) NOT NULL,
  `Staff_Name` varchar(20) NOT NULL,
  `Staff_login` varchar(20) NOT NULL,
  `Staff_password` varchar(20) NOT NULL,
  `Staff_Office_location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rail_train_master`
--

CREATE TABLE `rail_train_master` (
  `Train_No` int(5) NOT NULL,
  `Train_Name` varchar(20) NOT NULL,
  `Train_Station` varchar(20) NOT NULL,
  `Train_Coachseat` int(3) NOT NULL,
  `Train_TotalCoach` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rail_price_master`
--
ALTER TABLE `rail_price_master`
  ADD PRIMARY KEY (`PRICE_PK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
