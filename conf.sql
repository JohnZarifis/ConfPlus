-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2015 at 09:49 PM
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
(5, 'Workshops');

-- --------------------------------------------------------

--
-- Table structure for table `attendee`
--

CREATE TABLE IF NOT EXISTS `attendee` (
  `attendeeid` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendee`
--

INSERT INTO `attendee` (`attendeeid`, `name`, `surname`, `comments`) VALUES
(1, 'LOVE', 'ADOTEY', 'Δοκιμαστικά Σχόλια'),
(2, 'DIMOSTHENIS', 'ALASEIRLIS', ' Double room '),
(3, 'WINFRED CHARTEY', 'ANNAN', ''),
(4, 'ALBERTA', 'ASHLEY', ''),
(5, 'Ioannis', 'Zarifis', 'Δοκιμαστικός χρήστης');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `starts`, `ends`, `counts`, `category`) VALUES
(1, 'OVERHEAD SPORTS', '2015-08-24 08:30:00', '2015-08-24 12:30:00', 3, 'Ομιλίες'),
(2, 'Hall 1', '2015-08-24 18:00:00', '2015-08-24 20:00:00', 2, 'Tomas Clark Beginners'),
(3, 'Hall 2', '2015-08-24 18:00:00', '2015-08-24 20:00:00', 2, 'Workshops'),
(4, 'demo morning', '2015-08-21 08:30:00', '2015-08-21 12:30:00', 3, ''),
(5, 'Demo Evening Paid', '2015-08-21 18:00:00', '2015-08-21 20:00:00', 2, ''),
(6, 'Demo evening Free', '2015-08-21 18:00:00', '2015-08-21 20:00:00', 2, '');

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
-- AUTO_INCREMENT for table `attendee`
--
ALTER TABLE `attendee`
  MODIFY `attendeeid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `conventions`
--
ALTER TABLE `conventions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
