-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 05:47 AM
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
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `Borrower_ID` varchar(10) NOT NULL,
  `Borrower_name` varchar(100) DEFAULT NULL,
  `Borrower_type` varchar(20) DEFAULT NULL,
  `Borrower_IC_num` varchar(20) DEFAULT NULL,
  `Borrower_Phone_num` varchar(20) DEFAULT NULL,
  `Borrower_email` varchar(30) DEFAULT NULL,
  `Borrower_Address` varchar(100) DEFAULT NULL,
  `nameBook` text DEFAULT NULL,
  `isbn` int(10) DEFAULT NULL,
  `borrowDate` date DEFAULT NULL,
  `borrowRet` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`Borrower_ID`, `Borrower_name`, `Borrower_type`, `Borrower_IC_num`, `Borrower_Phone_num`, `Borrower_email`, `Borrower_Address`, `nameBook`, `isbn`, `borrowDate`, `borrowRet`) VALUES
('AA17054', 'Hanana Sorfina binti Haizam', 'Staff', '011213086352', '0124857639', 'hananasorfina@gmail.com', 'Hulu Bernam, Selangor, Malaysia.', 'The History of Life', 1100223355, '2023-12-20', '2023-12-31'),
('AA19034', 'Ahmad Syahmi bin Zakaria', 'Staff', '970422070311', '0173461752', 'SyahmiZakaria@gmail.com', 'Telok Intan, Perak, Malaysia.', 'How to Cook', 1234567890, '2023-11-01', '2023-11-16'),
('CA17013', 'Halimah binti Tajul', 'Student', '980617020314', '0143678649', 'halimahTajul@gmail.com', 'Batu Pahat, Johor, Malaysia.', 'Software Engineering Maintenance: A Maintainer\'s Approach', 1245369512, '2023-12-20', '2023-12-31'),
('CB18056', 'Nurul Farahani binti Mustafa', 'Student', '971213049674', '0187943169', 'farahanimustafa@gmail.com', 'Rembau, Negeri sembilan, Malaysia.', 'Applied Statistics: Guidance Approach', 1241563215, '2023-11-01', '2023-11-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`Borrower_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
