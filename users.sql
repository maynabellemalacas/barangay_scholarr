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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('Student','Admin','Registrar') NOT NULL DEFAULT 'Student',
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `role`, `full_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'juan_dc', 'hashed_pw_juan', 'Student', 'Juan Dela Cruz', 'juan.dc@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(2, 'maria_santos', 'hashed_pw_maria', 'Student', 'Maria Santos', 'maria.santos@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(3, 'jose_rizal', 'hashed_pw_jose', 'Student', 'Jose Rizal', 'jose.rizal@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(4, 'ana_lopez', 'hashed_pw_ana', 'Student', 'Ana Lopez', 'ana.lopez@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(5, 'pedro_garcia', 'hashed_pw_pedro', 'Student', 'Pedro Garcia', 'pedro.garcia@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(6, 'luisa_ramos', 'hashed_pw_luisa', 'Student', 'Luisa Ramos', 'luisa.ramos@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(7, 'carlos_mendoza', 'hashed_pw_carlos', 'Student', 'Carlos Mendoza', 'carlos.mendoza@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(8, 'sofia_cruz', 'hashed_pw_sofia', 'Student', 'Sofia Cruz', 'sofia.cruz@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(9, 'miguel_torres', 'hashed_pw_miguel', 'Student', 'Miguel Torres', 'miguel.torres@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(10, 'isabella_reyes', 'hashed_pw_isabella', 'Student', 'Isabella Reyes', 'isabella.reyes@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(11, 'andres_villanueva', 'hashed_pw_andres', 'Student', 'Andres Villanueva', 'andres.villanueva@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(12, 'carmen_bautista', 'hashed_pw_carmen', 'Student', 'Carmen Bautista', 'carmen.bautista@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(13, 'ramon_castillo', 'hashed_pw_ramon', 'Student', 'Ramon Castillo', 'ramon.castillo@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(14, 'elena_navarro', 'hashed_pw_elena', 'Student', 'Elena Navarro', 'elena.navarro@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(15, 'francisco_cruz', 'hashed_pw_francisco', 'Student', 'Francisco Cruz', 'francisco.cruz@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(16, 'gabriela_flores', 'hashed_pw_gabriela', 'Student', 'Gabriela Flores', 'gabriela.flores@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(17, 'roberto_hernandez', 'hashed_pw_roberto', 'Student', 'Roberto Hernandez', 'roberto.hernandez@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(18, 'patricia_morales', 'hashed_pw_patricia', 'Student', 'Patricia Morales', 'patricia.morales@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(19, 'diego_alvarez', 'hashed_pw_diego', 'Student', 'Diego Alvarez', 'diego.alvarez@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20'),
(20, 'clarissa_gutierrez', 'hashed_pw_clarissa', 'Student', 'Clarissa Gutierrez', 'clarissa.gutierrez@example.com', '2025-12-17 14:17:20', '2025-12-17 14:17:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
