-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2016 at 07:06 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogId` int(11) NOT NULL,
  `blogText` text,
  `blogTitle` varchar(50) NOT NULL,
  `postedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `postedBy` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `BcommentId` int(11) NOT NULL,
  `Bcomment` text,
  `postedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `postedBy` varchar(35) DEFAULT NULL,
  `commentingON` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systemdata`
--

CREATE TABLE `systemdata` (
  `dataName` varchar(40) DEFAULT NULL,
  `dataType` varchar(20) DEFAULT NULL,
  `dataLocation` text,
  `dataId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `dataId` int(11) NOT NULL,
  `dataLocation` text,
  `dataType` varchar(20) DEFAULT NULL,
  `dataName` varchar(40) DEFAULT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Uname` varchar(35) DEFAULT NULL,
  `Upassword` varchar(256) DEFAULT NULL,
  `Uemail` varchar(35) DEFAULT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Uname`, `Upassword`, `Uemail`, `UID`) VALUES
('kishea', '827ccb0eea8a706c4c34a16891f84e7b', 'kisyamoses12@outlook.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogId`),
  ADD KEY `blogId` (`blogId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`BcommentId`),
  ADD KEY `BcommentId` (`BcommentId`),
  ADD KEY `commentingON` (`commentingON`);

--
-- Indexes for table `systemdata`
--
ALTER TABLE `systemdata`
  ADD PRIMARY KEY (`dataId`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`dataId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`),
  ADD KEY `UID` (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `systemdata`
--
ALTER TABLE `systemdata`
  MODIFY `dataId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `dataId` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `users` (`UID`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`BcommentId`) REFERENCES `users` (`UID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`commentingON`) REFERENCES `blog` (`blogId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
