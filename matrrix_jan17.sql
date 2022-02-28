-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 06:00 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feedack_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `Program` varchar(50) NOT NULL,
  `p_date` date NOT NULL,
  `p_day` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`feedack_id`, `f_name`, `l_name`, `Program`, `p_date`, `p_day`) VALUES
(1, 'Shubham', 'patil', 'Session 4', '2022-01-17', 'Monday'),
(2, 'rohit', 'jadhav', 'Session 2', '2022-01-17', 'Monday'),
(3, 'vishal', 'tank', 'Session 2', '2022-01-17', 'Monday');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ratings`
--

CREATE TABLE `feedback_ratings` (
  `feedback_id` int(11) NOT NULL,
  `challenges` int(11) NOT NULL,
  `work_satisfy` int(11) NOT NULL,
  `standards` int(11) NOT NULL,
  `illustration` int(11) NOT NULL,
  `environment` int(11) NOT NULL,
  `expression` int(11) NOT NULL,
  `consious` int(11) NOT NULL,
  `power` int(11) NOT NULL,
  `overall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_ratings`
--

INSERT INTO `feedback_ratings` (`feedback_id`, `challenges`, `work_satisfy`, `standards`, `illustration`, `environment`, `expression`, `consious`, `power`, `overall`) VALUES
(1, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(2, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(3, 4, 4, 4, 4, 3, 3, 3, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`feedack_id`);

--
-- Indexes for table `feedback_ratings`
--
ALTER TABLE `feedback_ratings`
  ADD PRIMARY KEY (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `feedack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback_ratings`
--
ALTER TABLE `feedback_ratings`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
