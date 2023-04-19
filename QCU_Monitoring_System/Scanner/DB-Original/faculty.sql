-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 05:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `facultyID` varchar(45) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  `accesskey` varchar(255) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `faculty_firstname` varchar(45) DEFAULT NULL,
  `faculty_middlename` varchar(45) DEFAULT NULL,
  `faculty_lastname` varchar(45) DEFAULT NULL,
  `faculty_suffix` varchar(45) DEFAULT NULL,
  `faculty_contact` varchar(45) DEFAULT NULL,
  `faculty_email` varchar(45) DEFAULT NULL,
  `faculty_permission` varchar(45) DEFAULT NULL,
  `faculty_profilepic` varchar(255) DEFAULT NULL,
  `faculty_qr` varchar(255) DEFAULT NULL,
  `faculty_temp_password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `facultyID`, `empID`, `userID`, `departmentID`, `accesskey`, `courseID`, `faculty_firstname`, `faculty_middlename`, `faculty_lastname`, `faculty_suffix`, `faculty_contact`, `faculty_email`, `faculty_permission`, `faculty_profilepic`, `faculty_qr`, `faculty_temp_password`, `created_at`, `updated_at`, `schedule_id`) VALUES
(23, 'FAC-000000023', 'EMP-000000023', 48, 0, 'shHlRZJluHmDBejgC8ar1ne8fVa2nRBu5lc0F2d4HgY603sYIWYWChPHhUrD', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '09684756321', 'edward.corbes.pornelos@gmail.com', '2', NULL, '3001', '12345', '2022-12-11 04:32:02', '2023-01-27 09:50:23', 3),
(30, 'FAC-000000024', 'EMP-000000024', 48, 0, 'shHlRZJluHmDBejgC8ar1ne8fVa2nRBu5lc0F2d4HgY603sYIWYWChPHhUrD', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '09684756321', 'edward.corbes.pornelos@gmail.com', '2', NULL, '3002', '12345', '2022-12-11 04:32:02', '2023-01-27 09:50:23', 3),
(31, 'FAC-000000025', 'EMP-000000024', 48, 0, 'shHlRZJluHmDBejgC8ar1ne8fVa2nRBu5lc0F2d4HgY603sYIWYWChPHhUrD', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '09684756321', 'edward.corbes.pornelos@gmail.com', '2', NULL, '3003', '12345', '2022-12-11 04:32:02', '2023-01-27 09:50:23', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
