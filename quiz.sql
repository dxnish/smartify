-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 03:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(17, '5dece45e4137e', '5dece45e444d5'),
(18, '5dece45e48297', '5dece45e48d90'),
(19, '5dece7afb1b97', '5dece7afbac5f'),
(20, '5dece7afbf5be', '5dece7afc047a'),
(21, '5dece7afc30aa', '5dece7afc3b1b'),
(22, '5dece7afc603d', '5dece7afc6b1f'),
(23, '5dece7afc9639', '5dece7afc9a72');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('5dee41c6302b8', 'halu', 'nhashiki@gmail.com', 'halu', 'halulu', '2019-12-09', '01:44:54pm'),
('5dee41e477dcc', 'huhu', 'nana@a.com', 'hiiki', 'haluluj', '2019-12-09', '01:45:24pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(9, 'danishghani', '5dece437d209d', 2, 2, 1, 1, '2019-12-08 16:35:04', 1575822890, 'finished', 'true'),
(10, 'danishghani', '5dece6d4ad022', 6, 5, 3, 1, '2019-12-08 16:36:04', 1575822918, 'finished', 'true'),
(11, 'husnahashiki', '5dece6d4ad022', 2, 3, 1, 2, '2019-12-09 14:18:19', 1575901078, 'finished', 'true'),
(12, 'husnahashiki', '5dece437d209d', 2, 2, 1, 1, '2019-12-09 14:21:00', 1575901251, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(65, '5dece45e4137e', '1', '5dece45e444d5'),
(66, '5dece45e4137e', '2', '5dece45e444db'),
(67, '5dece45e4137e', '3', '5dece45e444dd'),
(68, '5dece45e4137e', '5', '5dece45e444de'),
(69, '5dece45e48297', '4', '5dece45e48d8c'),
(70, '5dece45e48297', '8', '5dece45e48d90'),
(71, '5dece45e48297', '9', '5dece45e48d91'),
(72, '5dece45e48297', '0', '5dece45e48d92'),
(73, '5dece7afb1b97', 'To change completely oneâ€™s course of action. ', '5dece7afbac56'),
(74, '5dece7afb1b97', 'To shift attention to new problems after having studied the old ones thoroughly.  ', '5dece7afbac5d'),
(75, '5dece7afb1b97', 'To cover up oneâ€™s fault by wearing new marks.    ', '5dece7afbac5e'),
(76, '5dece7afb1b97', 'To change the old habits and adopt new ones. *', '5dece7afbac5f'),
(77, '5dece7afbf5be', ' Severe punishment', '5dece7afc0476'),
(78, '5dece7afbf5be', 'A good luck check      ', '5dece7afc0479'),
(79, '5dece7afbf5be', 'A period of importance   *   ', '5dece7afc047a'),
(80, '5dece7afbf5be', 'Failure of administration', '5dece7afc047b'),
(81, '5dece7afc30aa', 'To talk loudly    ', '5dece7afc3b15'),
(82, '5dece7afc30aa', 'Talk in whispers   ', '5dece7afc3b19'),
(83, '5dece7afc30aa', 'To talk to oneself   ', '5dece7afc3b1a'),
(84, '5dece7afc30aa', 'Talk excessively *', '5dece7afc3b1b'),
(85, '5dece7afc603d', ' Act in a foolish way ', '5dece7afc6b1b'),
(86, '5dece7afc603d', 'To quarrel over trifles  *', '5dece7afc6b1f'),
(87, '5dece7afc603d', 'Waste time on petty things   ', '5dece7afc6b20'),
(88, '5dece7afc603d', 'To do something funny.', '5dece7afc6b21'),
(89, '5dece7afc9639', 'Take with some reservation *', '5dece7afc9a72'),
(90, '5dece7afc9639', 'To take with total disbelief  ', '5dece7afc9a75'),
(91, '5dece7afc9639', 'Take wholeheartedly   ', '5dece7afc9a77'),
(92, '5dece7afc9639', 'To take seriously.', '5dece7afc9a78');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(17, '5dece437d209d', '5dece45e4137e', '2-1', 4, 1),
(18, '5dece437d209d', '5dece45e48297', 'what is 8(1)?', 4, 2),
(19, '5dece6d4ad022', '5dece7afb1b97', 'Directions: In each of the following questions, an idiomatic expression/ a proverb has been given, followed by some alternatives. Choose the one which best expresses the meaning of the given idiom/ proverb:\r\n\r\nQ1: To turn over a new leaf\r\n', 4, 1),
(20, '5dece6d4ad022', '5dece7afbf5be', ' A fair crack of the whip', 4, 2),
(21, '5dece6d4ad022', '5dece7afc30aa', 'To talk oneâ€™s head off', 4, 3),
(22, '5dece6d4ad022', '5dece7afc603d', 'To wrangle over an assâ€™s shadow          ', 4, 4),
(23, '5dece6d4ad022', '5dece7afc9639', 'To take with a grain of salt', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `total`, `time`, `date`, `status`) VALUES
(8, '5dece437d209d', 'Math', 2, 2, 1, '2019-12-08 11:54:13', 'enabled'),
(9, '5dece6d4ad022', 'English Idiom', 2, 5, 2, '2019-12-08 12:08:18', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(4, 'danishghani', 8, '2019-12-08 16:36:04'),
(5, 'husnahashiki', 4, '2019-12-09 14:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `username`, `phno`, `password`) VALUES
(6, 'Danishah', 'F', 'danishghani', 123982927, '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'Husnahashiki', 'F', 'husnahashiki', 123456789, '70e74e69c196f6cb88c03cef547b1755');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(27, '5dece45e4137e', '5dece45e444d5', '5dece45e444d5', '5dece437d209d', 'danishghani'),
(28, '5dece45e48297', '5dece45e48d91', '5dece45e48d90', '5dece437d209d', 'danishghani'),
(29, '5dece7afb1b97', '5dece7afbac5f', '5dece7afbac5f', '5dece6d4ad022', 'danishghani'),
(30, '5dece7afbf5be', '5dece7afc047a', '5dece7afc047a', '5dece6d4ad022', 'danishghani'),
(31, '5dece7afc30aa', '5dece7afc3b1a', '5dece7afc3b1b', '5dece6d4ad022', 'danishghani'),
(32, '5dece7afc603d', '5dece7afc6b1f', '5dece7afc6b1f', '5dece6d4ad022', 'danishghani'),
(33, '5dece7afb1b97', '5dece7afbac5d', '5dece7afbac5f', '5dece6d4ad022', 'husnahashiki'),
(34, '5dece7afbf5be', '5dece7afc047a', '5dece7afc047a', '5dece6d4ad022', 'husnahashiki'),
(35, '5dece7afc30aa', '5dece7afc3b15', '5dece7afc3b1b', '5dece6d4ad022', 'husnahashiki'),
(36, '5dece45e4137e', '5dece45e444db', '5dece45e444d5', '5dece437d209d', 'husnahashiki'),
(37, '5dece45e48297', '5dece45e48d90', '5dece45e48d90', '5dece437d209d', 'husnahashiki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
