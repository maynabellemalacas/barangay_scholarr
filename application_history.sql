-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2025 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barangay_scholar`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_history`
--

CREATE TABLE `application_history` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `old_status` varchar(50) NOT NULL,
  `new_status` varchar(50) NOT NULL,
  `changed_by` varchar(100) NOT NULL,
  `remarks` text DEFAULT NULL,
  `changed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_history`
--

INSERT INTO `application_history` (`id`, `application_id`, `old_status`, `new_status`, `changed_by`, `remarks`, `changed_at`) VALUES
(1, 1, 'Submitted', 'Under Review', 'Registrar', 'Initial verification started', '2025-12-17 14:10:07'),
(2, 1, 'Under Review', 'Approved', 'Admin', 'All documents verified and approved', '2025-12-17 14:10:07'),
(3, 2, 'Submitted', 'Under Review', 'Registrar', 'Checking COR and grades', '2025-12-17 14:10:07'),
(4, 2, 'Under Review', 'Rejected', 'Admin', 'Incomplete certificate provided', '2025-12-17 14:10:07'),
(5, 3, 'Submitted', 'Under Review', 'Registrar', 'Validated student ID card', '2025-12-17 14:10:07'),
(6, 3, 'Under Review', 'Approved', 'Admin', 'Application meets all requirements', '2025-12-17 14:10:07'),
(7, 4, 'Submitted', 'Under Review', 'Registrar', 'Cross-checking enrollment details', '2025-12-17 14:10:07'),
(8, 4, 'Under Review', 'Rejected', 'Admin', 'Grades below required threshold', '2025-12-17 14:10:07'),
(9, 5, 'Submitted', 'Under Review', 'Registrar', 'Certificate verified', '2025-12-17 14:10:07'),
(10, 5, 'Under Review', 'Approved', 'Admin', 'Scholarship granted', '2025-12-17 14:10:07'),
(11, 6, 'Submitted', 'Under Review', 'Registrar', 'Reviewing documents', '2025-12-17 14:10:07'),
(12, 6, 'Under Review', 'Rejected', 'Admin', 'Invalid student ID card', '2025-12-17 14:10:07'),
(13, 7, 'Submitted', 'Under Review', 'Registrar', 'Registrar started review', '2025-12-17 14:10:07'),
(14, 7, 'Under Review', 'Approved', 'Admin', 'Approved after registrar confirmation', '2025-12-17 14:10:07'),
(15, 8, 'Submitted', 'Under Review', 'Registrar', 'Checking completeness of documents', '2025-12-17 14:10:07'),
(16, 8, 'Under Review', 'Rejected', 'Admin', 'Missing COR file', '2025-12-17 14:10:07'),
(17, 9, 'Submitted', 'Under Review', 'Registrar', 'Initial review done', '2025-12-17 14:10:07'),
(18, 9, 'Under Review', 'Approved', 'Admin', 'Scholarship approved', '2025-12-17 14:10:07'),
(19, 10, 'Submitted', 'Under Review', 'Registrar', 'Registrar flagged issue with grades', '2025-12-17 14:10:07'),
(20, 10, 'Under Review', 'Rejected', 'Admin', 'Grades did not meet requirement', '2025-12-17 14:10:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_history`
--
ALTER TABLE `application_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_id` (`application_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_history`
--
ALTER TABLE `application_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application_history`
--
ALTER TABLE `application_history`
  ADD CONSTRAINT `application_history_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
