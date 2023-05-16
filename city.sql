-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: May 16, 2023 at 07:24 AM
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
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_Id` int(3) NOT NULL,
  `state_Id` int(3) DEFAULT NULL,
  `city_Name` varchar(35) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_Id`, `state_Id`, `city_Name`) VALUES
(1, 1, 'Ahmedabad'),
(2, 1, 'Gandinagar'),
(3, 1, 'Vadodara'),
(4, 1, 'Vapi'),
(5, 2, 'Mumbai'),
(6, 2, 'Pune'),
(7, 2, 'Dadar'),
(8, 2, 'Virar'),
(9, 3, 'Patna'),
(10, 3, 'Darbhanga'),
(11, 3, 'Muzafferpur'),
(12, 3, 'Madhubani'),
(13, 4, 'Agra'),
(14, 4, 'Prayagraj'),
(15, 4, 'Bhopal'),
(16, 4, 'Gorakhpur'),
(17, 5, 'Haleiwa'),
(18, 5, 'Hana'),
(19, 5, 'Hawi'),
(20, 5, 'Pahoa'),
(21, 6, 'Los Angeles'),
(22, 6, 'San Diego'),
(23, 6, 'San Francisco'),
(24, 6, 'Livermore'),
(25, 7, 'Paterson'),
(26, 7, 'Jersey City'),
(27, 7, 'Toms River'),
(28, 7, 'Wayne'),
(29, 8, 'New York city'),
(30, 8, 'Hempstead town'),
(31, 8, 'Brookhaven'),
(32, 8, 'Rochester city'),
(33, 9, 'Birmingham'),
(34, 9, 'Cambridge'),
(35, 9, 'Manchester'),
(36, 9, 'Oxford'),
(37, 10, 'Dunfermline'),
(38, 10, 'Glasgow'),
(39, 10, 'Aberdeen'),
(40, 10, 'Dundee'),
(41, 11, 'Newport'),
(42, 11, 'St Davids'),
(43, 11, 'Bangor'),
(44, 11, 'Wrexham');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_Id`),
  ADD KEY `state_Id` (`state_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
