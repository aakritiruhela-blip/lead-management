-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2025 at 05:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lead_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `leadId` varchar(20) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `enquiry_for` enum('Samsung','Apple','Pixel') DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `rejection_reason` varchar(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `agent_name` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `leadId`, `customer_name`, `mobile_number`, `enquiry_for`, `status`, `rejection_reason`, `agent_id`, `agent_name`, `created_date`, `updated_date`) VALUES
(1, NULL, 'Ramesh Kumar', '9876543210', 'Samsung', 'pending', '-', 101, 'Ajay Singh', '2025-12-22 23:27:33', '2025-12-23 22:15:06'),
(2, NULL, 'Priya Mehta', '9988776655', 'Apple', 'approved', '-', 102, 'Rohan', '2025-12-22 23:27:33', '2025-12-23 22:15:06'),
(3, NULL, 'John Mathew', '9123456780', 'Pixel', 'rejected', 'Wrong details', 103, 'Sneha', '2025-12-22 23:27:33', '2025-12-23 22:15:06'),
(4, NULL, 'Arjun Verma', '9090909090', 'Samsung', 'pending', '-', 101, 'Ajay Singh', '2025-12-22 23:27:33', '2025-12-23 22:15:06'),
(5, NULL, 'Kriti Sharma', '9091234567', 'Apple', 'pending', '-', 102, 'Rohan', '2025-12-22 23:27:33', '2025-12-23 22:15:06'),
(6, 'LD20251223-921', 'Rajesh Kumar', '9876545210', 'Apple', 'pending', NULL, 101, 'Ajay Singh', '2025-12-23 20:31:58', '2025-12-23 20:31:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leadId` (`leadId`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
