-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Sep 10, 2024 at 05:23 PM
=======
-- Generation Time: Sep 10, 2024 at 03:08 AM
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_restaurant_db`
--

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `content`, `category`, `image`) VALUES
(1, 'newwww', 'asdfghjhgfd', 'services', 'sdfgh'),
(2, 'newwww', 'asdfghjhgfd', 'services', 'sdfgh');

-- --------------------------------------------------------

--
=======
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `facility_id` int(11) NOT NULL,
  `facility_name` varchar(100) DEFAULT NULL,
  `facility_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `description`, `category`) VALUES
(1, 'Appe', 150.00, 'aaaaaaaa', 'appetizer'),
(2, 'aple', 150.00, 'asdfghjkjhgfds', 'main');

-- --------------------------------------------------------

--
=======
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `query_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `query_text` text DEFAULT NULL,
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `reservation_date` datetime DEFAULT NULL,
  `type` enum('delivery','dine-in') DEFAULT NULL,
  `status` enum('pending','confirmed','completed') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `customer_id`, `reservation_date`, `type`, `status`) VALUES
(1, 1, '2024-09-09 04:43:00', 'dine-in', 'pending'),
(2, 2, '2024-09-04 04:44:00', 'delivery', 'pending'),
<<<<<<< HEAD
(3, 2, '2024-09-10 05:03:00', 'dine-in', 'pending'),
(4, 2, '2024-09-12 20:29:00', 'dine-in', 'pending');
=======
(3, 2, '2024-09-10 05:03:00', 'dine-in', 'pending');
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `service_description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
<<<<<<< HEAD
  `email` varchar(50) NOT NULL,
=======
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
  `role` enum('admin','staff','customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

<<<<<<< HEAD
INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', 'qqqq', '', 'customer'),
(2, 'rasindu2002', '1234', '', 'admin'),
(3, 'koshi', '1234', '', 'staff'),
(5, 'qwrr', '1234', 'qwas@gmaw.bd', 'admin'),
(6, 'asdfgsssss', 'asdfghgggg', 'Weee@gsdfgh.com', 'admin'),
(7, 'ewww', '1234', 'kauss@gmail.com', 'admin');
=======
INSERT INTO `users` (`user_id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'qqqq', 'customer'),
(2, 'rasindu2002', '1234', 'admin'),
(3, 'koshi', '1234', 'staff');
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1

--
-- Indexes for dumped tables
--

--
<<<<<<< HEAD
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
=======
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`facility_id`);

--
<<<<<<< HEAD
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
=======
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
<<<<<<< HEAD
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
=======
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `facility_id` int(11) NOT NULL AUTO_INCREMENT;

--
<<<<<<< HEAD
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
=======
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
<<<<<<< HEAD
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
=======
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
<<<<<<< HEAD
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
=======
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
>>>>>>> 74a50f0d9bd3dc0f087ffa2122cc6f962c73ccb1

--
-- Constraints for dumped tables
--

--
-- Constraints for table `queries`
--
ALTER TABLE `queries`
  ADD CONSTRAINT `queries_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
