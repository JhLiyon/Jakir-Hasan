-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 10:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `helpmails`
--

CREATE TABLE `helpmails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `admin_reply` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helpmails`
--

INSERT INTO `helpmails` (`id`, `name`, `email`, `phoneNo`, `message`, `created_date`, `admin_reply`) VALUES
(1, 'Saif', 'saif@saif.com', '0135665', 'asda', '2024-01-09 21:41:24', NULL),
(2, 'Saif', 'saif@saif.com', '0135665', 'service was not good', '2024-01-09 22:12:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phoneNo` text DEFAULT NULL,
  `customer_address` text DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_schedule` datetime DEFAULT NULL,
  `order_available` tinyint(1) DEFAULT NULL,
  `order_cost` decimal(10,2) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_image` longblob DEFAULT NULL,
  `order_processing` tinyint(1) DEFAULT NULL,
  `order_processing_worker` varchar(100) NOT NULL,
  `worker_phoneNo` tinyint(20) DEFAULT NULL,
  `order_complete` tinyint(1) DEFAULT NULL,
  `ratings` decimal(3,2) DEFAULT NULL,
  `order_cancelled` tinyint(1) DEFAULT NULL,
  `completed_order` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `customer_name`, `customer_phoneNo`, `customer_address`, `order_date`, `order_schedule`, `order_available`, `order_cost`, `service_id`, `service_name`, `service_image`, `order_processing`, `order_processing_worker`, `worker_phoneNo`, `order_complete`, `ratings`, `order_cancelled`, `completed_order`) VALUES
(72, NULL, NULL, 'sumon', '01752134', 'dhaka', '2024-01-09', '2024-01-11 00:00:00', NULL, NULL, NULL, 'Set TV', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(73, NULL, 1, 'ddasdad', '987', 'gukgku', '2024-01-09', '2024-01-20 00:00:00', NULL, NULL, NULL, 'khjk', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(74, NULL, 1, 'Saif', '0134242', 'dhaka,mirpur', '2024-01-09', '2024-01-18 00:00:00', NULL, NULL, NULL, 'room cleaning', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_description` varchar(250) DEFAULT NULL,
  `service_cost` decimal(10,2) DEFAULT NULL,
  `cost_of_app` decimal(10,2) DEFAULT NULL,
  `cost_of_serviceman` decimal(10,2) DEFAULT NULL,
  `total_orders` int(11) DEFAULT NULL,
  `tap` int(11) DEFAULT NULL,
  `serviceImage` longblob DEFAULT NULL,
  `service_Rating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `total_order_completed` int(11) DEFAULT NULL,
  `total_orders` int(11) DEFAULT NULL,
  `ratings_avg` decimal(3,2) DEFAULT NULL,
  `processing_orders` int(11) DEFAULT NULL,
  `userImage` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phoneNo`, `email`, `gender`, `dob`, `address`, `password`, `usertype`, `balance`, `total_order_completed`, `total_orders`, `ratings_avg`, `processing_orders`, `userImage`) VALUES
(1, 'saif', '01612728697', 'saif@saif.com', 'Male', '2000-01-01', '317', '1234', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'saif', '01612728691', 'suvo@suvo.com', 'Male', '2000-01-01', '317', '1', 'Worker', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'test', '1', 'test@test.com', 'Male', '2000-01-01', '1', '1', 'Customer', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `helpmails`
--
ALTER TABLE `helpmails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phoneNo` (`phoneNo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `helpmails`
--
ALTER TABLE `helpmails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
