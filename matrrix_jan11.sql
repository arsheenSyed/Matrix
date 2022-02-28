-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 07:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrrix`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feedack_id` int(11) NOT NULL,
  `feedback_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `feedback_title` varchar(150) NOT NULL,
  `feedback_description` varchar(500) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `client_email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`feedack_id`, `feedback_date`, `feedback_title`, `feedback_description`, `client_name`, `client_email`) VALUES
(1, '2021-12-21 05:59:31', 'This was an amazing session', 'Do not miss out on this. We had a wonderful time with Paras and opened up a new thinking', 'Rhutvij', 'a@a.com'),
(2, '2021-12-21 05:59:31', 'Not to miss out', 'Second one -Do not miss out on this. We had a wonderful time with Paras and opened up a new thinking', 'Vaibhav', 'b@c.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ratings`
--

CREATE TABLE `feedback_ratings` (
  `rating_id` int(11) NOT NULL,
  `rating_comment` varchar(150) NOT NULL,
  `communication` float NOT NULL,
  `content` float NOT NULL,
  `presentation` float NOT NULL,
  `experience` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback_ratings`
--

INSERT INTO `feedback_ratings` (`rating_id`, `rating_comment`, `communication`, `content`, `presentation`, `experience`) VALUES
(1, 'Do not miss out on this. We had a wonderful time with Paras and opened up a new thinking', 4.5, 4.6, 5, 4.4),
(2, 'Great experience', 4, 4, 4, 4),
(3, 'Not bad to try out', 5, 5, 5, 5);

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
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `feedack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_ratings`
--
ALTER TABLE `feedback_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
