-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2022 at 10:28 PM
-- Server version: 8.0.23
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `control_empleados`
--

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='empleados';

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`apellido`, `email`, `nombre`, `id`) VALUES
('lazcano', 'lazvinz21@gmai.com', 'vicente', 1),
('arreola', 'mayte95@gmai.com', 'mayte', 2),
('Castillo', 'elviaCastillo@gmail.com', 'Elvia', 3),
('picapiedra', 'pedropicapiedra@gmail.com', 'pedro', 4),
('West', 'frankwest88@gmail.com', 'Frank', 5),
('González', 'victorgonzalez61@gmail.com', 'Victor', 6),
('Arreola', 'alabama95@gmail.com', 'Alabama', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
