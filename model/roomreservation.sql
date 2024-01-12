-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 05:48 AM
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
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `roomreservation`
--

CREATE TABLE `roomreservation` (
  `RoomReservID` int(11) NOT NULL,
  `BorrowerName` varchar(100) NOT NULL,
  `RoomID` varchar(5) NOT NULL,
  `RoomName` varchar(20) NOT NULL,
  `RoomDetails` varchar(50) NOT NULL,
  `reservDate` date NOT NULL,
  `reserveTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomreservation`
--

INSERT INTO `roomreservation` (`RoomReservID`, `BorrowerName`, `RoomID`, `RoomName`, `RoomDetails`, `reservDate`, `reserveTime`) VALUES
(1, 'Halimah binti Tajul', 'L11', 'Metting Room', 'Room for lecturer and student have a meeting', '2021-04-03', '00:00:00'),
(2, 'Siti Mariam binti Halim', 'L12', 'Media Room', 'Room that have all the audio visual media', '2021-04-03', '00:00:00'),
(3, 'Jefri bin Manaf', 'L13', 'Computer Room', 'Room for computer class', '2021-04-11', '00:00:00'),
(4, 'Muhamad Amirul bin Shukri', 'L11', 'Metting Room', 'Room for lecturer and student have a meeting', '2021-04-25', '00:00:00'),
(5, 'Tan Chen Long', 'L14', 'Research Room', 'Room for lecturer and student so the research', '2021-05-09', '00:00:00'),
(6, 'Kumar A/L Madialagen', 'L13', 'Computer Room', 'Room for computer class', '2021-05-11', '00:00:00'),
(7, 'Nurul Farahani binti Mustafa', 'L14', 'Research Room', 'Room for lecturer and student so the research', '2021-05-13', '00:00:00'),
(8, 'Sakinah Amirah binti Halim', 'L12', 'Media Room', 'Room that have all the audio visual media', '2021-05-19', '00:00:00'),
(11, 'Ikhmal hensem', 'L11', 'Metting Room', 'Room for lecturer and student have a meeting', '2024-01-28', '13:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roomreservation`
--
ALTER TABLE `roomreservation`
  ADD PRIMARY KEY (`RoomReservID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roomreservation`
--
ALTER TABLE `roomreservation`
  MODIFY `RoomReservID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
