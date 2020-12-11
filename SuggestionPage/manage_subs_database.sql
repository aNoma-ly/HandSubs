-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 06:24 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(12, 'hbo', 'Monthly', '10.00', '2020-12-02', '2020-12-31', 'Active', 0, '', ''),
(13, 'youtube', 'Yearly', '10.00', '2020-12-02', '2020-12-31', 'Active', 0, '', ''),
(14, 'primeVideo', 'Yearly', '10.00', '2020-12-01', '2020-12-31', 'Active', 0, '', ''),
(15, 'disney', '...Choose...', '10.00', '2020-12-01', '2021-01-08', 'Active', 0, '', ''),
(16, 'appleTv', 'Monthly', '10.00', '2020-12-17', '2021-01-01', 'Active', 0, '', ''),
(30, 'netflix', 'Yearly', '9.50', '0000-00-00', '0000-00-00', 'Active', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_suggestions`
--

CREATE TABLE `subscription_suggestions` (
  `Subscription_name` varchar(80) NOT NULL,
  `total_download` int(30) NOT NULL,
  `img_dir` varchar(80) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription_suggestions`
--

INSERT INTO `subscription_suggestions` (`Subscription_name`, `total_download`, `img_dir`, `category`) VALUES
('Agile', 30247516, 'assets/img/portfolio/bus/agile.jpg', 'Business'),
('Hubspot', 95511711, 'assets/img/portfolio/bus/hubspot.png', 'Business'),
('Insightly', 12064084, 'assets/img/portfolio/bus/insightly.png', 'Business'),
('Oorwin', 79983566, 'assets/img/portfolio/bus/oorwin.png', 'Business'),
('Oracle', 69455408, 'assets/img/portfolio/bus/oracle.jpg', 'Business'),
('Pipedrive', 15677177, 'assets/img/portfolio/bus/pipedrive.jpg', 'Business'),
('Netflix', 88892086, 'assets/img/portfolio/ent/netflix.jpg', 'Entertainment'),
('AmazonPrime', 46547423, 'assets/img/portfolio/ent/amazon_prime.jpg', 'Entertainment'),
('YoutubePremium', 69475137, 'assets/img/portfolio/ent/youtube_premium.png', 'Entertainment'),
('HBONow', 14039210, 'assets/img/portfolio/ent/hbo_now.png', 'Entertainment'),
('Disney', 70856088, 'assets/img/portfolio/ent/disney.jpg', 'Entertainment'),
('Apple', 54090899, 'assets/img/portfolio/ent/apple.png', 'Entertainment'),
('UberEats', 14612506, 'assets/img/portfolio/food/UberEats.png', 'Food'),
('Deliveroo', 61508647, 'assets/img/portfolio/food/deliveroo.jpg', 'Food'),
('FoodPanda', 86595824, 'assets/img/portfolio/food/food_panda.png', 'Food'),
('GrubHub', 81649206, 'assets/img/portfolio/food/grubHub.jpg', 'Food'),
('JustEat', 11832575, 'assets/img/portfolio/food/justEat.png', 'Food'),
('Zomato', 25829184, 'assets/img/portfolio/food/zomato.jpg', 'Food'),
('Playstation', 89617942, 'assets/img/portfolio/gaming/playstation.png', 'Gaming'),
('EAPass', 15755424, 'assets/img/portfolio/gaming/eaPass.jpg', 'Gaming'),
('GooglePlayPass', 95674531, 'assets/img/portfolio/gaming/googlePlayPass.jpg', 'Gaming'),
('Nintendo', 5551343, 'assets/img/portfolio/gaming/nintendo.png', 'Gaming'),
('UPlay', 18124529, 'assets/img/portfolio/gaming/uplay.jpg', 'Gaming'),
('Xbox', 69767011, 'assets/img/portfolio/gaming/xbox.jpg', 'Gaming'),
('MasterClass', 72134372, 'assets/img/portfolio/learning/masterclass.jpg', 'Educational'),
('LinkedIn', 54859680, 'assets/img/portfolio/learning/linkedin.png', 'Educational'),
('Coursera', 65299246, 'assets/img/portfolio/learning/coursera.png', 'Educational'),
('SkillShare', 91471284, 'assets/img/portfolio/learning/skillShare.png', 'Educational'),
('Udacity', 36776701, 'assets/img/portfolio/learning/udacity.png', 'Educational'),
('Udemy', 29075122, 'assets/img/portfolio/learning/udemy.png', 'Educational'),
('Spotify', 98615304, 'assets/img/portfolio/music/spotify.jpg', 'Music'),
('AmazonMusic', 92314689, 'assets/img/portfolio/music/amazon_music.jpg', 'Music'),
('AppleMusic', 60013361, 'assets/img/portfolio/music/apple_music.jpg', 'Music'),
('Deezer', 91972148, 'assets/img/portfolio/music/deezer.jpg', 'Music'),
('SoundCloud', 53824037, 'assets/img/portfolio/music/soundCloud.jpg', 'Music'),
('Tidal', 75128689, 'assets/img/portfolio/music/tidal.jpg', 'Music');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
