-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2015 at 10:00 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
(2015082300014, 'WORKSHOPS'),
(2015082300021, 'omilies'),
(2015082300038, 'WORKSHOPS'),
(2015082300045, 'omilies'),
(2015082300052, 'WORKSHOPS'),
(2015082300069, 'omilies'),
(2015082300069, 'TOMAS CLARK ADVANCED'),
(2015082300069, 'TOMAS CLARK BEGINNERS'),
(2015082300069, 'WORKSHOPS'),
(2015082300076, 'omilies'),
(2015082300083, 'omilies'),
(2015082300090, 'omilies'),
(2015082300106, 'omilies'),
(2015082300106, 'TOMAS CLARK ADVANCED'),
(2015082300113, 'omilies'),
(2015082300113, 'TOMAS CLARK ADVANCED'),
(2015082300113, 'TOMAS CLARK BEGINNERS'),
(2015082300113, 'WORKSHOPS'),
(2015082300120, 'WORKSHOPS'),
(2015082300137, 'omilies'),
(2015082300144, 'omilies'),
(2015082300151, 'omilies'),
(2015082300168, 'omilies'),
(2015082300175, 'omilies'),
(2015082300182, 'omilies'),
(2015082300199, 'omilies'),
(2015082300199, 'TOMAS CLARK ADVANCED'),
(2015082300199, 'TOMAS CLARK BEGINNERS'),
(2015082300199, 'WORKSHOPS'),
(2015082300205, 'omilies'),
(2015082300205, 'TOMAS CLARK ADVANCED'),
(2015082300205, 'TOMAS CLARK BEGINNERS'),
(2015082300205, 'WORKSHOPS'),
(2015082300212, 'omilies'),
(2015082300229, 'omilies'),
(2015082300236, 'omilies'),
(2015082300236, 'TOMAS CLARK BEGINNERS'),
(2015082300243, 'omilies'),
(2015082300243, 'TOMAS CLARK BEGINNERS'),
(2015082300250, 'omilies'),
(2015082300267, 'omilies'),
(2015082300267, 'TOMAS CLARK ADVANCED'),
(2015082300267, 'TOMAS CLARK BEGINNERS'),
(2015082300267, 'WORKSHOPS'),
(2015082300281, 'omilies'),
(2015082300298, 'omilies'),
(2015082300304, 'omilies'),
(2015082300304, 'TOMAS CLARK BEGINNERS'),
(2015082300311, 'omilies'),
(2015082300311, 'TOMAS CLARK ADVANCED'),
(2015082300311, 'TOMAS CLARK BEGINNERS'),
(2015082300311, 'WORKSHOPS'),
(2015082300328, 'omilies'),
(2015082300328, 'TOMAS CLARK BEGINNERS'),
(2015082300335, 'omilies'),
(2015082300342, 'omilies'),
(2015082300342, 'TOMAS CLARK ADVANCED'),
(2015082300342, 'TOMAS CLARK BEGINNERS'),
(2015082300342, 'WORKSHOPS'),
(2015082300359, 'omilies'),
(2015082300366, 'omilies'),
(2015082300366, 'TOMAS CLARK ADVANCED'),
(2015082300366, 'TOMAS CLARK BEGINNERS'),
(2015082300366, 'WORKSHOPS'),
(2015082300373, 'omilies'),
(2015082300380, 'omilies'),
(2015082300380, 'TOMAS CLARK ADVANCED'),
(2015082300380, 'TOMAS CLARK BEGINNERS'),
(2015082300380, 'WORKSHOPS'),
(2015082300397, 'omilies'),
(2015082300403, 'omilies'),
(2015082300410, 'omilies'),
(2015082300427, 'omilies'),
(2015082300427, 'TOMAS CLARK ADVANCED'),
(2015082300427, 'TOMAS CLARK BEGINNERS'),
(2015082300427, 'WORKSHOPS'),
(2015082300434, 'omilies'),
(2015082300441, 'omilies'),
(2015082300458, 'omilies'),
(2015082300465, 'omilies'),
(2015082300472, 'omilies'),
(2015082300489, 'omilies'),
(2015082300489, 'TOMAS CLARK ADVANCED'),
(2015082300496, 'omilies'),
(2015082300502, 'omilies'),
(2015082300519, 'omilies'),
(2015082300519, 'TOMAS CLARK ADVANCED'),
(2015082300519, 'TOMAS CLARK BEGINNERS'),
(2015082300519, 'WORKSHOPS'),
(2015082300526, 'omilies'),
(2015082300526, 'TOMAS CLARK BEGINNERS'),
(2015082300533, 'omilies'),
(2015082300540, 'omilies'),
(2015082300540, 'WORKSHOPS'),
(2015082300557, 'omilies'),
(2015082300564, 'omilies'),
(2015082300571, 'omilies'),
(2015082300571, 'TOMAS CLARK ADVANCED'),
(2015082300588, 'omilies'),
(2015082300595, 'omilies'),
(2015082300601, 'omilies'),
(2015082300601, 'WORKSHOPS'),
(2015082300618, 'omilies'),
(2015082300625, 'omilies'),
(2015082300632, 'omilies'),
(2015082300632, 'TOMAS CLARK ADVANCED'),
(2015082300632, 'TOMAS CLARK BEGINNERS'),
(2015082300632, 'WORKSHOPS'),
(2015082300649, 'omilies'),
(2015082300656, 'omilies'),
(2015082300656, 'WORKSHOPS'),
(2015082300663, 'omilies'),
(2015082300663, 'TOMAS CLARK ADVANCED'),
(2015082300663, 'TOMAS CLARK BEGINNERS'),
(2015082300663, 'WORKSHOPS'),
(2015082300670, 'omilies'),
(2015082300687, 'omilies'),
(2015082300694, 'omilies'),
(2015082300694, 'TOMAS CLARK BEGINNERS'),
(2015082300700, 'omilies'),
(2015082300717, 'omilies'),
(2015082300724, 'omilies'),
(2015082300724, 'TOMAS CLARK ADVANCED'),
(2015082300724, 'TOMAS CLARK BEGINNERS'),
(2015082300724, 'WORKSHOPS'),
(2015082300991, 'omilies'),
(2015082300991, 'TOMAS CLARK ADVANCED'),
(2015082300991, 'TOMAS CLARK BEGINNERS'),
(2015082300991, 'WORKSHOPS');

-- --------------------------------------------------------

--
-- Table structure for table `attendee`
--

CREATE TABLE IF NOT EXISTS `attendee` (
  `attendeeid` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendee`
--

INSERT INTO `attendee` (`attendeeid`, `name`, `surname`, `comments`, `gender`) VALUES
(2015082300014, 'LOVE', 'ADOTEY', 'workshop', ''),
(2015082300021, 'DIMOSTHENIS', 'ALASEIRLIS', 'ομιλίες', ''),
(2015082300038, 'WINFRED CHARTEY', 'ANNAN', 'workshop', ''),
(2015082300045, 'GEORGE', 'ANYFANTAKIS', 'ομιλίες', ''),
(2015082300052, 'ALBERTA', 'ASHLEY', 'workshop only', 'Γυναίκα'),
(2015082300069, 'THEODOROS', 'ATHANASAKIS', 'payed all', 'Ανδρας'),
(2015082300076, 'GEORGE', 'ATHANASIOU', 'ομιλίες', 'Ανδρας'),
(2015082300083, 'ANTONIOS', 'BOURNOUSOUZIS', 'ομιλίες', 'Ανδρας'),
(2015082300090, 'MICHAIL', 'BOZOGLOU', 'ομιλίες', 'Ανδρας'),
(2015082300106, 'GEORGIOS', 'CHATZIDAKIS', 'ομιλίες TC advanced', 'Ανδρας'),
(2015082300113, 'THOMAS ', 'CLARK', 'all', 'Ανδρας'),
(2015082300120, 'FAUSTINA', 'COFFIE', 'workshops', 'Γυναίκα'),
(2015082300137, 'KONSTANTINOS T.', 'DELIS', 'ομιλίες', 'Ανδρας'),
(2015082300144, 'TRIANTAFYLLIA', 'DIMOU', 'ομιλίες', 'Γυναίκα'),
(2015082300151, 'DIMITRIS', 'DOLTSINIADIS', 'ομιλίες', 'Ανδρας'),
(2015082300168, 'ELENA', 'DRAKONAKI', 'ομιλίες', 'Γυναίκα'),
(2015082300175, 'MUJDAT', 'ENGİNSU', 'ομιλίες', 'Ανδρας'),
(2015082300182, 'PANOS', 'FANDRIDIS ', 'ομιλίες', 'Ανδρας'),
(2015082300199, 'GERNOT', 'FELMET', 'all', 'Ανδρας'),
(2015082300205, 'CALOGERO', 'FOTI', 'all', 'Ανδρας'),
(2015082300212, 'GEORGIOS', 'FOUGIAS', 'ομιλίες', 'Ανδρας'),
(2015082300229, 'JOHN', 'GLIATIS', 'ομιλίες', 'Ανδρας'),
(2015082300236, 'ZORAN', 'HANDJISKA', 'ομιλίες TC beginners', 'Ανδρας'),
(2015082300243, 'ELI', 'HANDJISKA', 'ομιλίες TC beginners', 'Γυναίκα'),
(2015082300250, 'PANAGIOTIS ', 'IAKOVIS', 'ομιλίες', 'Ανδρας'),
(2015082300267, 'PANAGIOTIS', 'INTZIRTZIS', 'all', 'Ανδρας'),
(2015082300274, 'MARTIN', 'IVANOV', 'ομιλίες', 'Ανδρας'),
(2015082300281, 'GEORGIOS ', 'KAKAVAS', 'ομιλίες', 'Ανδρας'),
(2015082300298, 'PANAGIOTA ', 'KATSANTONI', 'ομιλίες', 'Γυναίκα'),
(2015082300304, 'AFXENTIOS', 'KEKELEKIS', 'ομιλίες TC beginners', 'Ανδρας'),
(2015082300311, 'FRANCOIS', 'KELBERINE ', 'all', 'Ανδρας'),
(2015082300328, 'IOANNIS', 'KOUGIOUMTZIS', 'ομιλίες TC beginners', 'Ανδρας'),
(2015082300335, 'EFTHIMIOS', 'KOULOULAS', 'ομιλίες', 'Ανδρας'),
(2015082300342, 'HEINZ ', 'LOHRER', 'all', 'Ανδρας'),
(2015082300359, 'EVA  ', 'MACHINI ', 'ομιλίες', 'Γυναίκα'),
(2015082300366, 'NICOLA', 'MAFFULI', 'all', 'Ανδρας'),
(2015082300373, 'GAYLE ', 'MAFFULLI', 'ομιλίες', 'Γυναίκα'),
(2015082300380, 'NIKOS G.', 'MALLIAROPOULOS', 'all', 'Ανδρας'),
(2015082300397, 'STAVROS', 'MANGOS', 'ομιλίες', 'Ανδρας'),
(2015082300403, 'IOANNIS', 'MICHOS', 'ομιλίες', 'Ανδρας'),
(2015082300410, 'PANAGIOTIS G. ', 'NTAGIOPOULOS', 'ομιλίες', 'Ανδρας'),
(2015082300427, 'LEONARDO', 'OSTI', 'all', 'Ανδρας'),
(2015082300434, 'MANOS', 'PANTELIDIS', 'ομιλίες', 'Ανδρας'),
(2015082300441, 'GABRIELE', 'PAPA', 'ομιλίες', 'Ανδρας'),
(2015082300458, 'CHRISTOS D.', 'PAPAGEORGIOU', 'ομιλίες', 'Ανδρας'),
(2015082300465, 'EMANUEL', 'PAPAKOSTAS', 'ομιλίες', 'Ανδρας'),
(2015082300472, 'ANTONIS', 'PAPOUTSIDAKIS', 'ομιλίες', 'Ανδρας'),
(2015082300489, 'ODYSSEAS', 'PAXINOS', 'ομιλίες TC advanced', 'Ανδρας'),
(2015082300496, 'MARIA AΤΗ.', 'PSOMA', 'ομιλίες', 'Γυναίκα'),
(2015082300502, 'VASILIS Ν.', 'PSYCHOYIOS', 'ομιλίες', 'Ανδρας'),
(2015082300519, 'DEV', 'PYNE ', 'all', 'Ανδρας'),
(2015082300526, 'LIGIA', 'RUSU', 'ομιλίες TC beginners', 'Γυναίκα'),
(2015082300533, 'VASILEIOS I.  ', 'SAKELLARIOU ', 'ομιλίες', 'Ανδρας'),
(2015082300540, 'PETROS', 'SARIGIANNIDIS', 'ομιλίες workshops', 'Ανδρας'),
(2015082300557, 'ALBERTO', 'SCARCHILLI', 'ομιλίες', 'Ανδρας'),
(2015082300564, 'GEORGE A . ', 'SCARPAS', 'ομιλίες', 'Ανδρας'),
(2015082300571, 'MICHAIL', 'SIMONIS', 'ομιλίες TC advanced', 'Ανδρας'),
(2015082300588, 'NIKOLAOS', 'SYRMOS', 'ομιλίες', 'Ανδρας'),
(2015082300595, 'LOUKAS ', 'TAPRANTZIS', 'ομιλίες', 'Ανδρας'),
(2015082300601, 'IOANNIS', 'TARASIS', 'ομιλίες workshops', 'Ανδρας'),
(2015082300618, 'ALEXANDRA', 'THEOKA', 'ομιλίες', 'Γυναίκα'),
(2015082300625, 'CHRISTOS ', 'THEOS', 'ομιλίες', 'Ανδρας'),
(2015082300632, 'BRUNO', 'TOUSSAINT', 'all', 'Ανδρας'),
(2015082300649, 'ELENI', 'TSIKOURI', 'ομιλίες', 'Γυναίκα'),
(2015082300656, 'DIMITRIOS', 'TSIKOURIS', 'ομιλίες workshops', 'Ανδρας'),
(2015082300663, 'GEORGE', 'TSIKOURIS', 'all', 'Ανδρας'),
(2015082300670, 'DIMITRIS ', 'VELLIANITIS', 'ομιλίες', 'Ανδρας'),
(2015082300687, 'HARRY ', 'YIANNOULATOS', 'ομιλίες', 'Ανδρας'),
(2015082300694, 'EMMANOUIL', 'ZAMPIAKIS', 'ομιλίες TC beginners', 'Ανδρας'),
(2015082300700, 'EFSTATHIOS', 'ZOGAKIS', 'ομιλίες', 'Ανδρας'),
(2015082300717, 'ANTONIA', 'BARBITSIOTI', 'ομιλίες', 'Γυναίκα'),
(2015082300724, 'XANTHI', 'MICHAIL ', 'all', 'Γυναίκα'),
(2015082300991, 'IOANNIS', 'ZARIFIS', '----TEST USER TEST---', 'Ανδρας');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'OVERHEAD SPORTS', '2015-08-24 08:30:00', '2015-08-24 12:30:00', 3, 'omilies'),
(2, 'Hall 1', '2015-08-24 18:00:00', '2015-08-24 20:00:00', 2, 'TOMAS CLARK BEGINERS'),
(3, 'Hall 2', '2015-08-24 18:00:00', '2015-08-24 19:30:00', 2, 'WORKSHOPS'),
(4, 'demo morning Hall 1', '2015-08-23 08:30:00', '2015-08-21 12:30:00', 3, 'omilies'),
(5, 'Demo Evening Paid', '2015-08-23 18:00:00', '2015-08-21 20:00:00', 2, 'TOMAS CLARK BEGINERS'),
(6, 'Demo evening Free', '2015-08-23 18:00:00', '2015-08-21 20:00:00', 2, 'WORKSHOPS'),
(7, 'RUNNING', '2015-08-25 08:30:00', '2015-08-25 12:10:00', 3, 'omilies'),
(8, 'Hall 1', '2015-08-25 18:00:00', '2015-08-25 20:00:00', 2, 'TOMAS CLARK ADVANCED'),
(9, 'Hall 2', '2015-08-25 18:00:00', '2015-08-25 19:30:00', 2, 'WORKSHOPS'),
(10, 'FOOTBALL', '2015-08-26 08:30:00', '2015-08-26 13:10:00', 3, 'omilies'),
(11, 'Hall 1', '2015-08-26 18:00:00', '2015-08-26 20:00:00', 2, 'TOMAS CLARK BEGINNERS'),
(12, 'Hall 2', '2015-08-26 18:00:00', '2015-08-26 19:30:00', 2, 'WORKSHOPS'),
(13, 'MUSCLE PATHOLOGIES', '2015-08-27 08:30:00', '2015-08-27 12:50:00', 3, 'omilies'),
(14, 'Hall 1', '2015-08-27 18:00:00', '2015-08-27 20:00:00', 2, 'TOMAS CLARK ADVANCED'),
(15, 'Hall 2', '2015-08-27 18:00:00', '2015-08-27 19:30:00', 2, 'WORKSHOPS'),
(16, 'SOFT TISSUE DISORDERS', '2015-08-28 08:30:00', '2015-08-28 11:10:00', 3, 'omilies'),
(17, 'MISCELLANEOUS', '2015-08-28 14:10:00', '2015-08-28 16:10:00', 3, 'omilies'),
(18, 'Hall 1', '2015-08-28 17:00:00', '2015-08-28 20:00:00', 2, 'WORKSHOPS'),
(19, 'Hall 1', '2015-08-28 11:10:00', '2015-08-28 13:10:00', 2, 'WORKSHOPS'),
(20, 'SPORTS & EXERCISE', '2015-08-29 08:30:00', '2015-08-29 12:50:00', 3, 'omilies');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`attendeeid`,`category`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
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
