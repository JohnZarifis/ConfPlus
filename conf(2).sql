-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2015 at 06:29 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conf`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `attendeeid` bigint(20) NOT NULL,
  `category` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`attendeeid`, `category`) VALUES
(2015082300014, 'WORKSHOP'),
(2015082300021, 'ΟΜΙΛΙΕΣ'),
(2015082300038, 'WORKSHOP'),
(2015082300045, 'ΟΜΙΛΙΕΣ'),
(2015082300052, 'WORKSHOP'),
(2015082300069, 'WORKSHOP'),
(2015082300069, 'WORKSHOP'),
(2015082300069, 'THOMAS CLARK BEGINERS'),
(2015082300069, 'THOMAS CLARK ADVANCED'),
(2015082300069, 'ΟΜΙΛΙΕΣ');

-- --------------------------------------------------------

--
-- Table structure for table `attendee`
--

CREATE TABLE IF NOT EXISTS `attendee` (
  `attendeeid` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendee`
--

INSERT INTO `attendee` (`attendeeid`, `name`, `surname`, `comments`) VALUES
(2015082300014, 'LOVE', 'ADOTEY', 'workshop'),
(2015082300021, 'DIMOSTHENIS', 'ALASEIRLIS', 'ομιλίες'),
(2015082300038, 'WINFRED CHARTEY', 'ANNAN', 'workshop'),
(2015082300045, 'GEORGE', 'ANYFANTAKIS', 'ομιλίες'),
(2015082300052, 'ALBERTA', 'ASHLEY', 'workshop'),
(2015082300069, 'THEODOROS', 'ATHANASAKIS', 'ALL');

-- --------------------------------------------------------

--
-- Table structure for table `conventions`
--

CREATE TABLE IF NOT EXISTS `conventions` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `starts` date NOT NULL,
  `ends` date NOT NULL,
  `isactive` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `conventions`
--

INSERT INTO `conventions` (`id`, `name`, `starts`, `ends`, `isactive`) VALUES
(1, 'Marthon 2015', '2015-08-24', '2015-08-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) NOT NULL,
  `attendeeid` bigint(20) NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `attendeeid`, `type`, `timest`, `comment`) VALUES
(1, 2015082300014, 'in', '2015-08-21 15:04:37', ''),
(2, 2015082300014, 'in', '2015-08-21 15:07:06', 'force'),
(3, 2015082300038, 'in', '2015-08-21 15:07:14', 'force'),
(4, 2015082300014, 'out', '2015-08-21 15:07:22', ''),
(5, 2015082300069, 'in', '2015-08-21 15:07:30', ''),
(6, 2015082300052, 'in', '2015-08-21 16:29:33', 'force'),
(7, 2015082300069, 'in', '2015-08-21 16:29:41', ''),
(8, 2015082300069, 'in', '2015-08-21 16:30:29', ''),
(9, 2015082300069, 'out', '2015-08-21 16:31:33', ''),
(10, 2015082300076, 'out', '2015-08-21 16:31:47', ''),
(11, 2015082300069, 'in', '2015-08-21 16:55:46', ''),
(12, 2015082300052, 'in', '2015-08-21 16:57:15', 'force'),
(13, 2015082300069, 'in', '2015-08-21 16:57:39', ''),
(14, 2015082300069, 'out', '2015-08-21 16:58:40', ''),
(15, 2015082300052, 'out', '2015-08-21 16:58:41', ''),
(16, 2015082300069, 'out', '2015-08-21 16:58:42', ''),
(17, 2015082300076, 'out', '2015-08-21 16:58:43', ''),
(18, 2015082300069, 'out', '2015-08-21 16:58:44', ''),
(19, 2015082300052, 'out', '2015-08-21 16:58:45', ''),
(20, 2015082300076, 'out', '2015-08-21 16:58:47', ''),
(21, 2015082300083, 'out', '2015-08-21 16:58:47', ''),
(22, 2015082300069, 'out', '2015-08-21 16:58:48', ''),
(23, 2015082300052, 'out', '2015-08-21 16:58:49', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'viky', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE IF NOT EXISTS `venues` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `starts` datetime NOT NULL,
  `ends` datetime NOT NULL,
  `counts` int(11) NOT NULL,
  `category` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `starts`, `ends`, `counts`, `category`) VALUES
(1, 'OVERHEAD SPORTS', '2015-08-24 08:30:00', '2015-08-24 12:30:00', 3, 'ΟΜΙΛΙΕΣ'),
(2, 'Hall 1', '2015-08-24 18:00:00', '2015-08-24 20:00:00', 2, 'THOMAS CLARK BEGINERS'),
(3, 'Hall 2', '2015-08-24 18:00:00', '2015-08-24 19:30:00', 2, 'WORKSHOPS'),
(4, 'demo morning Hall 1', '2015-08-21 10:30:00', '2015-08-21 12:30:00', 3, 'ΟΜΙΛΙΕΣ'),
(5, 'Demo Evening Paid', '2015-08-21 18:00:00', '2015-08-21 20:00:00', 2, 'THOMAS CLARK BEGINERS'),
(6, 'Demo evening Free', '2015-08-21 18:00:00', '2015-08-21 20:00:00', 2, 'WORKSHOPS'),
(7, 'RUNNING', '2015-08-25 08:30:00', '2015-08-25 12:10:00', 3, 'ΟΜΙΛΙΕΣ'),
(8, 'Hall 1', '2015-08-25 18:00:00', '2015-08-25 20:00:00', 2, 'THOMAS CLARK ADVANCED'),
(9, 'Hall 2', '2015-08-25 18:00:00', '2015-08-25 19:30:00', 2, 'WORKSHOPS'),
(10, 'FOOTBALL', '2015-08-26 08:30:00', '2015-08-26 13:10:00', 3, 'ΟΜΙΛΙΕΣ'),
(11, 'Hall 1', '2015-08-26 18:00:00', '2015-08-26 20:00:00', 2, 'THOMAS CLARK BEGINNERS'),
(12, 'Hall 2', '2015-08-26 18:00:00', '2015-08-26 19:30:00', 2, 'WORKSHOPS'),
(13, 'MUSCLE PATHOLOGIES', '2015-08-27 08:30:00', '2015-08-27 12:50:00', 3, 'ΟΜΙΛΙΕΣ'),
(14, 'Hall 1', '2015-08-27 18:00:00', '2015-08-27 20:00:00', 2, 'THOMAS CLARK ADVANCED'),
(15, 'Hall 2', '2015-08-27 18:00:00', '2015-08-27 19:30:00', 2, 'WORKSHOPS'),
(16, 'SOFT TISSUE DISORDERS', '2015-08-28 08:30:00', '2015-08-28 11:10:00', 3, 'ΟΜΙΛΙΕΣ'),
(17, 'MISCELLANEOUS', '2015-08-28 14:10:00', '2015-08-28 16:10:00', 3, 'ΟΜΙΛΙΕΣ'),
(18, 'Hall 1', '2015-08-28 17:00:00', '2015-08-28 20:00:00', 2, 'WORKSHOPS'),
(19, 'Hall 1', '2015-08-28 11:10:00', '2015-08-28 13:10:00', 2, 'WORKSHOPS'),
(20, 'SPORTS & EXERCISE', '2015-08-29 08:30:00', '2015-08-29 12:50:00', 3, 'ΟΜΙΛΙΕΣ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendee`
--
ALTER TABLE `attendee`
  ADD PRIMARY KEY (`attendeeid`);

--
-- Indexes for table `conventions`
--
ALTER TABLE `conventions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conventions`
--
ALTER TABLE `conventions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
