-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 08:35 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manage_subs_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(55) NOT NULL,
  `Subscription_name` varchar(88) NOT NULL,
  `Billing_cycle` varchar(225) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Start_date` date NOT NULL,
  `Expired_date` date NOT NULL,
  `Status` varchar(225) NOT NULL,
  `total_download` int(55) NOT NULL,
  `Category_type` varchar(88) NOT NULL,
  `img_dir` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `Subscription_name`, `Billing_cycle`, `Price`, `Start_date`, `Expired_date`, `Status`, `total_download`, `Category_type`, `img_dir`) VALUES
(1, 'Melon', 'Monthly', '10.00', '2020-01-05', '2021-03-04', 'Active', 0, '', ''),
(2, 'Netflex', 'Monthly', '10.00', '2020-01-01', '2020-03-12', 'Active', 0, '', ''),
(3, 'Spotify', 'Monthly', '15.00', '2020-01-01', '2020-11-12', 'Active', 0, '', ''),
(4, 'Eir', 'Yearly', '20.00', '2020-12-01', '2021-12-12', 'Active', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
