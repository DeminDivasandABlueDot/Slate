-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 01:42 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slatedbs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `classallo`
--

CREATE TABLE `classallo` (
  `Department` varchar(4) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Section` varchar(1) NOT NULL,
  `TeachersAllo` tinyint(1) NOT NULL DEFAULT 0,
  `PEAllo` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classallo`
--

INSERT INTO `classallo` (`Department`, `Semester`, `Section`, `TeachersAllo`, `PEAllo`) VALUES
('CSE', 4, 'A', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubName` varchar(50) NOT NULL,
  `SubID` varchar(15) NOT NULL,
  `HoursPerWeek` smallint(6) NOT NULL,
  `Department` varchar(4) NOT NULL,
  `Semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubName`, `SubID`, `HoursPerWeek`, `Department`, `Semester`) VALUES
('Design and Analysis of Algorithms', '18CS42', 3, 'CSE', 4),
('Data Base Management Systems', '18CS43', 3, 'CSE', 4),
('Operating System', '18CS44', 4, 'CSE', 4),
('Application Development Using Java', '18CS45', 4, 'CSE', 4),
('Introduction to Embedded Systems', '18CSE461', 3, 'CSE', 4),
('Introduction to Web Application Development', '18CSE462', 3, 'CSE', 4),
('Unix System Programming', '18CSE463', 3, 'CSE', 4),
('Introduction to Image Processing', '18CSE464', 3, 'CSE', 4),
('DBMS Lab', '18CSL47', 2, 'CSE', 4),
('Design and Analysis of Algorithms Lab', '18CSL48', 2, 'CSE', 4),
('Engineering Mathematics - IV', '18MAT41', 5, 'Math', 4);

-- --------------------------------------------------------

--
-- Table structure for table `subteach`
--

CREATE TABLE `subteach` (
  `SubID` varchar(15) NOT NULL,
  `TeachID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subteach`
--

INSERT INTO `subteach` (`SubID`, `TeachID`) VALUES
('18CS43', 'CS001'),
('18CS42', 'CS008'),
('18CSL47', 'CS001'),
('18CSL47', 'CS014'),
('18CSL48', 'CS008'),
('18MAT41', 'MAT009'),
('18CSE461', 'CS016'),
('18CSE464', 'CS023'),
('18CSE462', 'CS018'),
('18CS44', 'CS011'),
('18CSE463', 'CS019'),
('18CS42', 'CS024'),
('18CS43', 'CS025'),
('18CS44', 'CS027'),
('18CS45', 'CS028'),
('18CSL47', 'CS018'),
('18CSL47', 'CS027'),
('18CSL47', 'CS029'),
('18CSE462', 'CS030'),
('18MAT41', 'CS032'),
('18CS42', 'CS019'),
('18CS43', 'CS033'),
('18CS44', 'CS0033'),
('18CS45', 'CS034'),
('18CSL47', 'CS024'),
('18CSL47', 'CS0033'),
('18CSL48', 'CS019'),
('18CSL48', 'CS035'),
('18CS45', 'CS012'),
('18CSL48', 'CS012');

-- --------------------------------------------------------

--
-- Table structure for table `teacherallo`
--

CREATE TABLE `teacherallo` (
  `TeachID` varchar(20) NOT NULL,
  `SubID` varchar(15) NOT NULL,
  `Department` varchar(4) NOT NULL,
  `Sem` int(11) NOT NULL,
  `Section` varchar(1) NOT NULL,
  `Batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `TeachName` varchar(25) NOT NULL,
  `TeachID` varchar(20) NOT NULL,
  `Department` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`TeachName`, `TeachID`, `Department`) VALUES
('Mamatha Bai G', 'CS001', 'CSE'),
('Deepthi Shetty', 'CS0033', 'CSE'),
('Sujata Joshi', 'CS008', 'CSE'),
('Vasanth', 'CS011', ''),
('Ramyashree', 'CS012', 'CSE'),
('Chaitra H V', 'CS014', 'CSE'),
('Chethan D Chahwan', 'CS016', 'CSE'),
('Uma R', 'CS018', 'CSE'),
('Kavya B S', 'CS019', 'CSE'),
('Shilpa', 'CS023', 'CSE'),
('Ramya S', 'CS024', 'CSE'),
('Asha H V', 'CS025', 'CSE'),
('Mahadevi', 'CS027', 'CSE'),
('Mohan', 'CS028', 'CSE'),
('Bhuvaneshwari', 'CS029', 'CSE'),
('Jagadevi', 'CS030', 'CSE'),
('Pramod S', 'CS032', 'CSE'),
('Supriya', 'CS033', 'CSE'),
('Shobha', 'CS034', 'CSE'),
('Vinay T R', 'CS035', 'CSE'),
('Dr Chandrakala ', 'MAT009', 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `TeachID` varchar(20) NOT NULL,
  `SubID` varchar(15) NOT NULL,
  `Hour` int(11) NOT NULL,
  `Day` int(11) NOT NULL,
  `Department` varchar(4) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Section` varchar(1) NOT NULL,
  `Batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubID`);

--
-- Indexes for table `subteach`
--
ALTER TABLE `subteach`
  ADD KEY `SubID` (`SubID`),
  ADD KEY `TeachID` (`TeachID`);

--
-- Indexes for table `teacherallo`
--
ALTER TABLE `teacherallo`
  ADD KEY `SubID` (`SubID`),
  ADD KEY `TeachID` (`TeachID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`TeachID`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD KEY `SubID` (`SubID`),
  ADD KEY `TeachID` (`TeachID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subteach`
--
ALTER TABLE `subteach`
  ADD CONSTRAINT `subteach_ibfk_1` FOREIGN KEY (`SubID`) REFERENCES `subjects` (`SubID`),
  ADD CONSTRAINT `subteach_ibfk_2` FOREIGN KEY (`TeachID`) REFERENCES `teachers` (`TeachID`);

--
-- Constraints for table `teacherallo`
--
ALTER TABLE `teacherallo`
  ADD CONSTRAINT `teacherallo_ibfk_1` FOREIGN KEY (`SubID`) REFERENCES `subjects` (`SubID`),
  ADD CONSTRAINT `teacherallo_ibfk_2` FOREIGN KEY (`TeachID`) REFERENCES `teachers` (`TeachID`);

--
-- Constraints for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD CONSTRAINT `timeslots_ibfk_1` FOREIGN KEY (`SubID`) REFERENCES `subjects` (`SubID`),
  ADD CONSTRAINT `timeslots_ibfk_2` FOREIGN KEY (`TeachID`) REFERENCES `teachers` (`TeachID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
