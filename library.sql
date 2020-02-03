-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2020 at 03:53 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Administrator', 'admin-admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-01-06 18:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `Added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `Added`, `LastUpdated`) VALUES
(1, 'Stieg Larsson', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(2, 'Leo Tolstoy', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(3, 'Alexandre Dumas', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(4, 'Mesa Selimovic', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(5, 'Mario Puzo', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(6, 'William Shakespeare', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(7, 'Allan G. Bluman', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(8, 'Jon Duckett', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(9, 'Tony Gaddis', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(10, 'Leroy G. Wade', '2020-06-01 17:59:23', '2020-06-01 17:59:23'),
(11, 'Thomas S. Kuhn', '2020-06-01 17:59:23', '2020-06-01 17:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `LastUpdated`) VALUES
(4, 'Millennium series: 1. The Girl with the Dragon Tattoo', 4, 1, 222333, 10, '2020-01-06 19:15:08', NULL),
(5, 'Millennium series: 2. The Girl Who Played with Fire', 4, 1, 222334, 10, '2020-01-06 19:16:27', NULL),
(6, 'Millennium series: 3. The Girl Who Kicked The Hornets\' Nest', 4, 1, 222335, 10, '2020-01-06 19:17:09', NULL),
(7, 'Millennium series: 4. The Girl in the Spider\'s Web', 4, 1, 222336, 10, '2020-01-06 19:18:16', NULL),
(8, 'Millennium series: 5. The Girl Who Takes an Eye for an Eye', 4, 1, 222337, 10, '2020-01-06 19:18:50', NULL),
(9, 'Millennium series: 6. The Girl Who Lived Twice', 4, 1, 222338, 10, '2020-01-06 19:19:24', NULL),
(10, 'Anna Karenina', 4, 2, 333441, 17, '2020-01-06 19:20:15', NULL),
(11, 'The Count of Monte Cristo', 4, 3, 333442, 15, '2020-01-06 19:20:54', NULL),
(12, 'Fortress', 4, 4, 333443, 15, '2020-01-06 19:21:18', NULL),
(13, 'Death and the Dervish', 4, 4, 333444, 15, '2020-01-06 19:22:16', NULL),
(14, 'The Godfather', 4, 5, 333445, 15, '2020-01-06 19:22:47', NULL),
(15, 'Hamlet', 4, 6, 333446, 15, '2020-01-06 19:23:28', NULL),
(16, 'Elementary statistics: A step by step approach', 5, 7, 111888, 22, '2020-01-06 19:24:47', NULL),
(17, 'Javascript and JQuery: Interactive Front-End Web Development', 5, 8, 111999, 22, '2020-01-06 19:25:25', NULL),
(18, 'The Structure of Scientific Revolutions', 5, 11, 111222, 22, '2020-01-06 19:26:11', NULL),
(19, 'Organic Chemistry', 5, 10, 111333, 22, '2020-01-06 19:26:46', NULL),
(20, 'Starting Out with c++ from Control Structures to Objects', 5, 9, 111444, 22, '2020-01-06 19:27:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Fiction', 1, '2017-07-04 18:35:25', '2020-01-06 18:31:38'),
(5, 'Textbooks', 1, '2017-07-04 18:35:39', '2020-01-06 18:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 7, 'SID09', '2020-01-06 19:44:06', '2020-01-06 19:46:39', 1, 12),
(9, 18, 'SID09', '2020-01-06 19:46:11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `LastUpdated`) VALUES
(1, 'SID09', 'Fatima', 'fatima@gmail.com', '061111222', '25d55ad283aa400af464c76d713c07ad', 1, '2020-01-06 09:28:10', '2020-01-06 21:33:48'),
(2, 'SID012', 'Dzejlana', 'dzejlana@gmail.com', '061222778', '25d55ad283aa400af464c76d713c07ad', 1, '2020-01-06 19:32:48', '2020-01-06 21:13:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

