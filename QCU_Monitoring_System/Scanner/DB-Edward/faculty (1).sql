-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 12:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
  `faculty_address` varchar(255) DEFAULT NULL,
  `faculty_type` varchar(45) DEFAULT NULL,
  `is_scheduled` int(11) DEFAULT 0,
  `is_return_scheduled` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `facultyID`, `empID`, `userID`, `departmentID`, `accesskey`, `courseID`, `faculty_firstname`, `faculty_middlename`, `faculty_lastname`, `faculty_suffix`, `faculty_contact`, `faculty_email`, `faculty_permission`, `faculty_profilepic`, `faculty_qr`, `faculty_temp_password`, `faculty_address`, `faculty_type`, `is_scheduled`, `is_return_scheduled`, `created_at`, `updated_at`) VALUES
(2, 'FAC-000000002', 'EMP-000000002', 68, 0, 'Ke7rEGA5g0rNYCVM0vtVhVCAITySdbdPklw0FlqSo0QqH9Dpj0bXJKVWtEaq', 0, 'Edward', 'Corbes', 'Pornelos', NULL, '9090909021', 'pornelos13@gmail.com', '2', NULL, '0002', 'mIVbPG7', NULL, 'Plantilla', 1, 0, '2023-04-12 01:50:50', '2023-04-12 05:46:47'),
(3, 'FAC-000000003', 'EMP-000000003', 69, 0, 'udc0CVmHeqBvb0TVw79ZJ5v9mxhZkfOZpYbp85grwQj68ynQiCyNqHDHbUSy', 0, 'John Michel', 'Romero', 'Sarmiento', NULL, '9090909109', 'jhon.michel.romero.sarmiento@gmail.com', '2', NULL, '0003', 'aVNptSd', NULL, 'Plantilla', 0, 0, '2023-04-13 13:09:22', '2023-04-18 00:28:45');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
