-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 10:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `201835002`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `barcode` int(11) NOT NULL,
  `bookname` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `edition` int(11) NOT NULL,
  `stocknumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`barcode`, `bookname`, `category`, `author`, `edition`, `stocknumber`) VALUES
(666666, 'Cosmos', 'Science', 'Carl Sagan', 1, 1),
(1111111, 'Programming Pearls', 'Programming', 'Jon Bentley', 2, 6),
(2222222, 'The Buddha in the Attic', 'Novel', 'Julie Otsuka', 1, 10),
(3333333, 'Coders at Work', 'Programming', 'Peter Seibal', 1, 4),
(4444444, 'Animal Farm', 'Novel', 'George Orwell', 1, 5),
(5555555, 'The Big Sleep', 'Mystery', 'Raymond Chandler', 3, 8),
(7777777, 'The History of the Ancient World', 'History', 'Susan Wise Bauer', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `adminname` varchar(45) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`firstname`, `lastname`, `birthyear`, `adminname`, `password`) VALUES
('Emily', 'White', 1999, 'emily', 'emily'),
('Jack', 'Wilson', 1988, 'jack', '2345'),
('Joey', 'Smith', 1993, 'joey', '12345'),
('Thomas', 'Lee', 1973, 'thomas', 't123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD UNIQUE KEY `barcode` (`barcode`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `adminname` (`adminname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `barcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43534535;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
