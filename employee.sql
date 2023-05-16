-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: May 16, 2023 at 07:25 AM
-- Server version: 10.6.12-MariaDB-1:10.6.12+maria~ubu2004-log
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EmployeeModule`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_Id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` enum('M','F','O') DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `street_Address` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `phone_Number` varchar(50) DEFAULT NULL,
  `birth_Date` date DEFAULT NULL,
  `profile_Pic` varchar(255) DEFAULT NULL,
  `register_Date` datetime DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_Id`, `name`, `gender`, `email`, `password`, `street_Address`, `city`, `state`, `postcode`, `country`, `phone_Number`, `birth_Date`, `profile_Pic`, `register_Date`, `status`) VALUES
(104, 'Keshav Jha', 'M', 'keshav@gmail.com', 'Keshav@123', 'A-505 Shri Ram Bhavan Society Nehru street', 4, 1, '396191', 1, '91573314651', '2011-10-01', '1684215110pngwing.com (4).png', '2023-05-16 11:01:50', '1'),
(105, 'Shrusti Jha', 'F', 'shrusti@gamil.com', 'Shrusti@123', '101 Radha Krishan Residency Jhanda chowk', 4, 1, '396191', 1, '9106739843', '2001-03-28', '1684220943pngwinggirl.com .png', '2023-05-16 12:49:16', '1'),
(56, 'Govind Jha', 'M', 'jhag2491@gmail.com', 'Govind@123', 'D-103 Chandramani Chankheda', 1, 1, '382424', 1, '9106739843', '2002-10-13', '1684211670avatarimg.png', '2023-05-16 10:58:23', '1'),
(88, 'Jaynesh  Mehta', 'M', 'jaynesh@gmail.com', 'Jaynesh@123', 'D-103 Chandramani Chankheda', 1, 1, '382424', 1, '9925249703', '2000-06-24', '1684214944pngwing.com (5).png', '2023-05-16 10:59:11', '1'),
(101, 'Harshal Patil', 'M', 'harshal@gmail.com', 'Harshal@123', 'D-103 Chandramani Chankheda', 1, 1, '382424', 1, '9157331451', '2001-05-21', '1684214870pngwing.com (3).png', '2023-05-16 10:57:50', '1'),
(102, 'Rahulraj Singh', 'M', 'rahulraj@gmail.com', 'Rahul@123', 'D-103 Chandramani Chankheda', 1, 1, '382424', 1, '9925249703', '2001-04-29', '1684214935pngwing.com (6).png', '2023-05-16 10:58:55', '1'),
(103, 'Vaibhav Gupta', 'M', 'vaibhav@gmail.com', 'Vaibhav@123', 'D-103 Chandramani Chankheda', 1, 1, '382424', 1, '6325897412', '2001-06-05', '1684215006pngwing.com (7).png', '2023-05-16 11:00:06', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_Id`),
  ADD KEY `city` (`city`),
  ADD KEY `state` (`state`),
  ADD KEY `country` (`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
