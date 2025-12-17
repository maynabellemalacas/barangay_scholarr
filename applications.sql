-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2025 at 04:22 PM
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
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `school` varchar(150) NOT NULL,
  `course` varchar(150) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Submitted',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `fullname`, `school`, `course`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Juan Dela Cruz', 'Batangas State University', 'BS Computer Engineering', 'Submitted', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(2, 'Maria Santos', 'University of the Philippines', 'BS Accountancy', 'Under Review', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(3, 'Jose Rizal', 'Ateneo de Manila University', 'AB Literature', 'Approved', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(4, 'Ana Lopez', 'De La Salle University', 'BS Business Administration', 'Rejected', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(5, 'Pedro Garcia', 'Far Eastern University', 'BS Information Technology', 'Submitted', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(6, 'Luisa Ramos', 'Mapua University', 'BS Civil Engineering', 'Under Review', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(7, 'Carlos Mendoza', 'Polytechnic University of the Philippines', 'BS Mechanical Engineering', 'Approved', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(8, 'Sofia Cruz', 'University of Santo Tomas', 'BS Nursing', 'Rejected', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(9, 'Miguel Torres', 'Batangas State University', 'BS Electrical Engineering', 'Submitted', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(10, 'Isabella Reyes', 'University of the Philippines', 'BS Psychology', 'Under Review', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(11, 'Andres Villanueva', 'Ateneo de Manila University', 'BS Economics', 'Approved', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(12, 'Carmen Bautista', 'De La Salle University', 'BS Marketing Management', 'Rejected', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(13, 'Ramon Castillo', 'Far Eastern University', 'BS Computer Science', 'Submitted', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(14, 'Elena Navarro', 'Mapua University', 'BS Architecture', 'Under Review', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(15, 'Francisco Cruz', 'Polytechnic University of the Philippines', 'BS Accountancy', 'Approved', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(16, 'Gabriela Flores', 'University of Santo Tomas', 'BS Pharmacy', 'Rejected', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(17, 'Roberto Hernandez', 'Batangas State University', 'BS Industrial Engineering', 'Submitted', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(18, 'Patricia Morales', 'University of the Philippines', 'BS Biology', 'Under Review', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(19, 'Diego Alvarez', 'Ateneo de Manila University', 'BS Political Science', 'Approved', '2025-12-17 13:44:21', '2025-12-17 13:44:21'),
(20, 'Clarissa Gutierrez', 'De La Salle University', 'BS Finance', 'Rejected', '2025-12-17 13:44:21', '2025-12-17 13:44:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
