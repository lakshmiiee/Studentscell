-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 05:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentscell`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(110) NOT NULL,
  `queries` varchar(500) NOT NULL,
  `replies` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'This is not working', 'We are realy sorry for the inconveinence ,we will seriously look into your problm'),
(2, 'Hai', 'Hello'),
(3, 'appoinment with principal', 'you can connect principal in morning between 10.00 am to 12.30 pm'),
(4, 'm vfc', 'hgfdf'),
(5, 'gvftgh', 'gvft');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(110) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Block'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_date`, `end_date`, `created`, `status`) VALUES
(1, 'This is a special events about web development', '2018-02-12', '2018-02-16', '2018-02-10', 1),
(2, 'PHP Seminar 2018', '2018-02-11', '2018-02-17', '2018-02-10', 1),
(3, 'Bootstrap events 2018', '2018-02-04', '2018-02-04', '2018-02-01', 1),
(4, 'Developers events', '2018-02-04', '2018-02-04', '2018-02-01', 1),
(5, 'Annual Conference 2018', '2018-02-05', '2018-02-05', '2018-02-01', 1),
(6, 'Bootstrap Annual events 2018', '2018-02-05', '2018-02-05', '2018-02-01', 1),
(7, 'HTML5 events', '2018-02-05', '2018-02-05', '2018-02-01', 1),
(8, 'PHP conference events 2018', '2018-02-08', '2018-02-08', '2018-02-02', 1),
(9, 'Web World events', '2018-02-08', '2018-02-08', '2018-02-01', 1),
(10, 'Wave PHP 2018', '2018-02-08', '2018-02-08', '2018-02-02', 1),
(11, 'Dev PHP 2018', '2018-02-08', '2018-02-08', '2018-02-01', 1),
(12, 'Dev PHP 2018', '2018-02-08', '2018-02-08', '2018-02-08', 1),
(13, 'PHP Seminar 2018', '2018-02-08', '2018-02-08', '2018-02-08', 1),
(14, 'College ', '0002-02-23', '0002-02-23', '0002-02-23', 1),
(16, 'codigo', '2023-03-02', '2023-03-02', '2023-03-02', 1),
(17, 'copfiesta', '2023-03-06', '2023-03-06', '2023-03-06', 1),
(18, '', '0000-00-00', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fundd`
--

CREATE TABLE `fundd` (
  `id` int(110) NOT NULL,
  `date` date NOT NULL,
  `fundraise` varchar(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(200) NOT NULL,
  `acc_no` varchar(20) NOT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `branchname` varchar(30) NOT NULL,
  `deadline` date NOT NULL,
  `image` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fundd`
--

INSERT INTO `fundd` (`id`, `date`, `fundraise`, `name`, `age`, `acc_no`, `ifsc_code`, `branchname`, `deadline`, `image`, `status`) VALUES
(5, '0000-00-00', 'jshdd', 'jdjdd', 67, '7654', 'hshddj', 'sjdjd', '0000-00-00', 'IMG-20221128-WA0001.jpg', 'Approved'),
(6, '0000-00-00', 'Loan', 'Binu ', 17, '123748455', 'fdrl', 'pala', '0000-00-00', 'Screenshot_2022-11-30-10-46-43-60_24d5e477d8ee8f19826daac99b8bd54e.jpg', 'Approved'),
(7, '0000-00-00', 'bahss', 'nsjhs', 73, '72882', 'anssm', 'baksks', '0000-00-00', 'IMG20221130144837.jpg', 'Approved'),
(10, '0000-00-00', 'hdhsj', 'jsjsjs', 62, '2782828', '627282', 'snnsjsjd', '0000-00-00', 'IMG-20230118-WA0000.jpg', 'Approved'),
(11, '0000-00-00', 'jaha', 'ahJ', 0, '0', 'ban', 'nnN', '0000-00-00', 'Screenshot_20230119_141825.jpg', 'Approved'),
(13, '0000-00-00', 'accident', 'muhsin', 20, 'avc2340008', 'SBI0fs34', 'Thrissur', '0000-00-00', 'IMG_20200808_101354.jpg', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE `idea` (
  `id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `idea` varchar(700) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`id`, `user_id`, `name`, `department`, `idea`, `status`) VALUES
(1, '23', 'lsjdj', 'bahssks', 'jsjdjd', 'Approved'),
(2, '23', 'Appu', 'Electronics ', 'Never', 'Approved'),
(3, '23', 'Ammu', 'Computer ', 'nskskdjd', '0'),
(4, '23', 'Achu', 'Computer ', 'nskskdjd', '0'),
(5, '23', 'Achu', 'Dcp', 'ajajakaiakssns', '0'),
(6, '23', 'gdhddj', 'sjsjs', 'sbhsjsjs', '0'),
(7, '31', 'jjj', 'yuu', 'yuk', '0');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(100) NOT NULL,
  `adminid` varchar(100) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(100) NOT NULL,
  `time` int(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `adminid`, `eventname`, `date`, `place`, `time`, `description`, `image`) VALUES
(1, '1', 'dffd', '0000-00-00', 'hfgjyiuyoiuyk', 0, 'hgdhrtu uk jmf', '0'),
(2, '2', 'Achu', '0000-00-00', 'hjikghg', 0, 'xfsrte5r', '0'),
(3, '3', 'Nss hair donation camp', '0000-00-00', 'mes asmabi college', 10, 'intrested students are requested to come to the seminar hall', '0'),
(4, '11', 'copfiesta', '2023-03-06', 'college auditorium', 1, '1.30', '0'),
(5, '11', 'copfiesta', '2023-03-06', 'college auditorium', 14, '14:33', 'IMG_20200808_101354.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `department` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`id`, `user_id`, `name`, `department`, `description`, `image`, `status`) VALUES
(10, '23', 'Bincy', 'computer ', 'Hello ', 'IMG-20221130-WA0016.jpg', 'Approved'),
(11, '23', 'ammu', 'hgcf', 'nnvvcg', 'Screenshot_2022-11-30-14-46-43-47_24d5e477d8ee8f19826daac99b8bd54e.jpg', '0'),
(12, '23', 'Aathira', 'Computer ', 'Anskdkd', 'Screenshot_2022-11-30-20-18-45-57_f7aa348215f5d566f9e4ca860f474209.jpg', '0'),
(13, '31', 'hnn', 'jjj', 'hj', 'IMG_20200808_101354.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(300) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `first_name`, `last_name`, `phone`, `email`, `user_name`, `password`, `gender`, `status`) VALUES
(6, 'Lakshmii', 'Gireesh', '1234567890', 'lakshmigireesh1289@gmail.com', 'lakshmi', '12345678', '', 'Approved'),
(21, 'lachu', 'u', '100000000', 'lakshmigireesh1289@gmail.com', 'lachu', 'lachu', '', 'Approved'),
(29, 'bincy', 'ca', '6373288292', 'binu@gmail.con', 'binu', '12345', '', 'Approved'),
(30, 'bincy', '', '994712356', 'binu@gmail.con', '', '', '', 'Approved'),
(33, 'muhsin', 'bca', '1480', 'lakshmigireesh1289@gmail.com', 'abnh', 'sfn', '', 'Approved'),
(34, 'abcd', 'abcd', '1234', 'abcd', 'abcd', 'abcd', '', '0'),
(35, 'igt', 'igde', '85e86', 'ohdoh', 'khxoh', ',kvc', '', '0'),
(37, 'anagha', 'c q', '9876543210', 'lakshmigireesh1289@gmail.com', 'anu', '54321', '', 'Approved'),
(39, 'aiswarya', 'ts', '9961340466', 'aiswaryats@gmail.con', 'aiswarya', '1234', 'female', 'Approved'),
(40, 'Shahid', 'P. S', '9876543311', 'shahidulhaq786@gmail.com', 'shahid ', 'shahid123', 'male', 'Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fundd`
--
ALTER TABLE `fundd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `fundd`
--
ALTER TABLE `fundd`
  MODIFY `id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
