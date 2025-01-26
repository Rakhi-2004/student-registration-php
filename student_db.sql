-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 06:21 AM
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
-- Database: `student_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` text NOT NULL,
  `course` varchar(100) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `dob`, `gender`, `address`, `course`, `registration_date`) VALUES
(1, 'Sumit', 'Kumar Modi', 'sumitmodi734@gmail.com', '7439843825', '2007-05-16', 'Male', '20A, RAMESH MITRA ROAD, KOLKATA -700025', 'Diploma', '2025-01-21 06:01:15'),
(8, 'John', 'Doe', 'john.doe@example.com', '1234567890', '2000-01-01', 'Male', '123 Main St', 'Computer Science', '2025-01-21 16:26:59'),
(10, 'Riya', 'Singh', 'riyasingh001@gmail.com', '7439843825', '2007-07-07', 'Female', '20A, RAMESH MITRA ROAD, KOLKATA -700025', 'Diploma', '2025-01-21 16:48:21'),
(12, 'Raja', 'Singh', 'rajasingh123@gmail.com', '7439843825', '0000-00-00', 'Male', '20A, RAMESH MITRA ROAD, KOLKATA -700025', 'Computer Science And Technology', '2025-01-21 17:11:53'),
(14, 'Rahul', 'Kumar', 'rahulkumar453@gmail.com', '9876567890', '2007-05-16', 'Male', '20A, RAMESH MITRA ROAD, KOLKATA -700025', 'Computer Science And Technology', '2025-01-21 18:47:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
