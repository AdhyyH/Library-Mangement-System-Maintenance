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
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` varchar(13) NOT NULL,
  `Book_title` varchar(100) DEFAULT NULL,
  `Book_author` varchar(100) DEFAULT NULL,
  `Book_desc` varchar(100) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `totalPages` int(11) DEFAULT NULL,
  `Book_rating` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `Book_title`, `Book_author`, `Book_desc`, `publication_date`, `totalPages`, `Book_rating`) VALUES
('', '', '', '', '0000-00-00', 0, '0'),
('9708131857575', 'C++ How To Program', 'Harvey M. Deitel, Paul J. Deitel', 'Education', '2005-12-25', 749, '4'),
('9780026515627', 'Glencoe Health, A Guide to Wellness, Student Edition', 'McGraw-Hill Education', 'Education', '1998-01-23', 448, '5'),
('9780030020780', 'Principles of Instrumental Analysis', 'Timothy A. Nieman, F. James Holler, Douglas A.Skoo', 'Education', '1998-03-02', 882, '4'),
('9780070109100', 'Fundamental Methods of Mathematical Economics', 'Wainwright Professor, Kevin', 'Education', '2004-11-12', 309, '5'),
('9780070311367', 'Introduction to Manufacturing Processes', 'John Schey', 'Education', '1999-12-14', 358, '4'),
('9780070350489', 'An Introduction to Mechanics', 'Kleppner, Daniel, Kolenkow, Robert', 'Education', '1973-06-14', 402, '5'),
('9780070542358', 'Principles of Mathematical Analysis', 'Rudin, Walter', 'Education', '1976-03-30', 856, '5'),
('9780072321111', 'Digital Communications', 'Proakis, John', 'Education', '2000-02-15', 311, '4'),
('9780072471465', 'Product Design and Development', 'Ulrich, Karl, Eppinger, Steven', 'Education', '2003-03-05', 603, '5'),
('9780072478525', 'Basic Econometrics', 'Gujarati, Damodar', 'Education', '2002-12-11', 656, '5'),
('9780072865981', 'Product Management', 'Lehmann, Donald Winer, Russell', 'Education', '2004-11-05', 829, '4'),
('9780072921939', 'Mechanical Engineering Design', 'Shigley, Joseph; Mischke, Charles; Budynas, Richar', 'Education', '2003-07-27', 526, '4'),
('9780072922189', 'Understanding Business (7th Edition)', 'William G Nickels, James McHugh, Susan McHugh', 'Education', '2004-02-26', 566, '5'),
('9780072958867', 'Database Systems Concepts', 'Henry F. Korth, Abraham Silberschatz, S. Sudarshan', 'Education', '2005-01-02', 779, '5'),
('9780073107684', 'Thermodynamics: An Engineering Approach', 'Cengel, Yunus A, Boles, Michael A.', 'Education', '2006-05-02', 498, '5'),
('9780073108742', 'Applied Linear Statistical Models', 'Kutner, Michael, Nachtsheim, Christopher, Neter, J', 'Education', '2004-12-02', 112, '5'),
('9780073109411', 'Human Anatomy', 'Michael McKinley, Valerie O\'Loughlin', 'Education', '2005-03-03', 369, '4'),
('9780073126999', 'Project Management: The Managerial Process', 'Clifford F. Gray; Erik W. Larson', 'Education', '2005-03-09', 648, '4'),
('9780130088475', 'Management', 'Hitt, Michael A.', 'Education', '2004-06-06', 797, '4'),
('9780130313584', 'Modern Operating Systems (Goal)', 'Tanenbaum, Andrew S.', 'Education', '2001-12-12', 610, '4'),
('9780130340740', 'Computer Systems: A programmer\'s Perspective', 'Bryant, Randal E., O\'Hallaron, David R.', 'Education', '2002-01-02', 255, '4'),
('9780130460196', 'Network Security: Private Communication in a Publi', 'Speciner, Mike, Periman, Radia, Kaufman, Charlie', 'Education', '2002-09-09', 621, '4'),
('9780130471109', 'Object-Oriented Software Engineering: Using UML, P', 'Bernd Bruegge, Allen H. Dutoit', 'Education', '2003-04-05', 841, '5'),
('9780131176867', 'Discrete Mathematics', 'Richard Johnsonbaugh', 'Education', '2004-03-06', 245, '4'),
('9780131963160', 'Organic Chemistry', 'Paula Yurkanis Bruice', 'No description', '2006-02-15', 624, '4'),
('9780195142518', 'Microelectronic Circuits', 'Adel S. Sedra, Kenneth C. Smith', 'Education', '2003-05-26', 537, '5'),
('9780195158335', 'Linear Systems and Signals', 'Lathi, B. P.', 'Education', '2004-02-01', 752, '5'),
('9780205473052', 'Sociology: A Down-to-Earth Approach', 'James M. Henslin', 'Education', '2007-09-29', 614, '5'),
('9780205478095', 'Family Therapy: Concepts and Methods', 'Michael P Nichols, Richard C Schwartz', 'Education', '2005-08-01', 738, '5'),
('9780321322135', 'Data Structures and Problem Solving Using Java', 'Mark Allen Weiss', 'Education', '2005-03-05', 306, '4'),
('9780321330239', 'Absolute C++ (2nd Edition)', 'Walter Savitch', 'Education', '2005-02-02', 443, '5'),
('9780321330253', 'Concepts of Programming Languages (7th Edition)', 'Robert W. Sebesta', 'Education', '2005-03-03', 343, '4'),
('9780321409492', 'Java Software Solutions: Foundations of Program De', 'John Lewis, William Loftus', 'Education', '2006-11-25', 479, '5'),
('9780558606043', 'Computer Organization and Design', 'David A. Patterson, John L. Hennessy', 'Education', '2004-07-01', 494, '5'),
('9781418835934', 'Database Systems: Design, Implemetation and Manage', 'Peter Rob, Carlos Coronel', 'Education', '2006-04-11', 731, '5'),
('9781418836399', 'C++ Programming: From Problem Analysis to Program ', 'D. S. Malik', 'Education', '2006-03-25', 738, '5'),
('9781558608320', 'Computer Networks: A Systems Approach', 'Peterson, Larry L.', 'Education', '2003-12-11', 273, '4');

-- --------------------------------------------------------

--
-- Table structure for table `bookreservation`
--

CREATE TABLE `bookreservation` (
  `BookReservID` int(11) NOT NULL,
  `BorrowerName` varchar(50) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `BorrowDate` date NOT NULL,
  `ReturnDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookreservation`
--

INSERT INTO `bookreservation` (`BookReservID`, `BorrowerName`, `ISBN`, `BookName`, `BorrowDate`, `ReturnDate`) VALUES
(1, 'Ahmad Syahmi bin Zakaria', '9780072321111', 'Digital Communications', '2021-02-01', '2021-04-08'),
(2, 'Ooi Gian Lee', '9780072471465', 'Product Design and Development', '2021-02-07', '2021-02-14'),
(3, 'Siti Mariam binti Halim', '9780072478525', 'Basic Econometrics', '2021-03-07', '2021-03-16'),
(4, 'Manushri A/P Suthakar', '9780072865981', 'Product Management', '2021-03-23', '2021-03-30'),
(5, 'Jefri bin Manaf', '9780072921939', 'Mechanical Engineering Design', '2021-04-01', '2021-04-10'),
(6, 'Hanana Sorfina binti Haizam', '9780070542358', 'Principles of Mathematical Analysis', '2021-04-01', '2021-04-07'),
(7, 'Muhamad Amirul bin Shukri', '9780070311367', 'Introduction to Manufacturing Processes', '2021-04-19', '2021-04-25'),
(8, 'Tan Chen Long', '9780030020780', 'Principles of Instrumental Analysis', '2021-04-30', '2021-05-24'),
(9, 'Fadhilah binti Murad', '9780026515627', 'Glencoe Health, A Guide to Wellness, Student Editi', '2021-05-01', '2021-05-07'),
(10, 'Safuan bin Rahim', '9780070109100', 'Fundamental Methods of Mathematical Economics', '2021-05-09', '2021-05-15');

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

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `librarianID` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `phoneNum` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`librarianID`, `name`, `username`, `password`, `Email`, `phoneNum`) VALUES
('01', 'NUR HASYA BINTI MOHD NORDIN', 'nurhasya', 'hasya123', 'nurhasyamohdnordin@gmail.com', '01114909117'),
('02', 'KALAIVANI A/P RAMANI', 'kalaivani_', 'kalai000', 'kalaivani@gmail.com', '011616016450'),
('03', 'NURAQILA BINTI ROHANAN', 'aqila_', 'aqila123', 'nuraqila@gmail.com', '0137709817'),
('04', 'NUR BALQIS BINTI OMAR', 'balqis_omar', 'bal000', 'balqis@gmail.com', '0184012533'),
('05', 'LEE LYE ENG', 'lye_eng', 'lyeEng123', 'lyeEng@gmail.com', '0179512645'),
('06', 'NURUL FATIMAH IZZATI BINTI ZURAIMI', 'fatimah_izzati', 'fatimahizzati000', 'nurulfatimahizzati@gmail.com', '0126543653');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `ReturnBookID` int(10) NOT NULL,
  `BorrowerName` varchar(50) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `BorrowDate` date NOT NULL,
  `ReturnDate` date NOT NULL,
  `ReturnStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`ReturnBookID`, `BorrowerName`, `ISBN`, `BookName`, `BorrowDate`, `ReturnDate`, `ReturnStatus`) VALUES
(1, 'Ahmad Syahmi bin Zakaria', '9780072321111', 'Digital Communications', '2021-02-01', '2021-04-08', 'return'),
(2, 'Ooi Gian Lee', '9780072471465', 'Product Design and Development', '2021-02-07', '2021-02-14', 'return'),
(3, 'Siti Mariam binti Halim', '9780072478525', 'Basic Econometrics', '2021-03-07', '2021-03-16', 'Return'),
(4, 'Manushri A/P Suthakar', '9780072865981', 'Product Management', '2021-03-23', '2021-03-30', 'Return'),
(5, 'Jefri bin Manaf', '9780072921939', 'Mechanical Engineering Design', '2021-04-01', '2021-04-07', 'not return'),
(6, 'Hanana Sorfina binti Haizam', '9780070542358', 'Principles of Mathematical Analysis', '2021-04-01', '2021-04-06', 'return'),
(7, 'Muhamad Amirul bin Shukri', '9780070311367', 'Introduction to Manufacturing Processes', '2021-04-19', '2021-04-26', 'return'),
(8, 'Tan Chen Long', '9780030020780', 'Principles of Instrumental Analysis', '2021-04-30', '2021-05-24', 'return'),
(9, 'Fadhilah binti Murad', '9780026515627', 'Glencoe Health, A Guide to Wellness, Student Editi', '2021-05-01', '2021-05-07', 'not return'),
(10, 'Safuan bin Rahim', '9780070109100', 'Fundamental Methods of Mathematical Economics', '2021-05-09', '2021-05-15', 'return');

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
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `bookreservation`
--
ALTER TABLE `bookreservation`
  ADD PRIMARY KEY (`BookReservID`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`Borrower_ID`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`librarianID`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`ReturnBookID`);

--
-- Indexes for table `roomreservation`
--
ALTER TABLE `roomreservation`
  ADD PRIMARY KEY (`RoomReservID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookreservation`
--
ALTER TABLE `bookreservation`
  MODIFY `BookReservID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `ReturnBookID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roomreservation`
--
ALTER TABLE `roomreservation`
  MODIFY `RoomReservID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
