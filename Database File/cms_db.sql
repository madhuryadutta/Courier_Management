-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 02:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(30) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `street`, `city`, `state`, `zip_code`, `country`, `contact`, `date_created`) VALUES
(1, 'vzTL0PqMogyOWhF', 'Bihpuria Town', 'Bihpuria', 'Assam', '784161', 'India', '8724023057', '2020-11-26 11:21:41'),
(3, 'KyIab3mYBgAX71t', 'Mangaldoi', 'Mangaldoi', 'Assam', '784125', 'India', '8724023032', '2020-11-26 16:45:05'),
(4, 'dIbUK5mEh96f0Zc', 'Garmur', 'Majuli', 'Assam', '785110', 'India', '8724023055', '2020-11-27 13:31:49'),
(5, 'WY6JbuMpwEqATkO', ' GS Rd, Six Mile, ', 'Guwahati,', ' Assam ', '781036', 'India', '8724023058', '2021-02-12 16:27:08'),
(6, 'eUxBRaJyPFivV0n', 'Santipur Rd', 'Nalbari', 'Assam', '781335', 'India', '8724023082', '2021-02-12 16:28:48'),
(7, '63w2y8NIpJnecbT', 'Jayanti Market, AT Rd', 'Sivasagar', 'Assam', ' 785640', 'India', '8724023051', '2021-02-12 16:36:44'),
(8, 'mzbZMjlrT1Gp7P9', 'house no 130', 'nlp', 'Assam', '787001', 'india', '8724023050', '2021-03-06 07:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` int(30) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `sender_name` text NOT NULL,
  `sender_address` text NOT NULL,
  `sender_contact` int(10) NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_address` text NOT NULL,
  `recipient_contact` int(11) NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = Deliver, 2=Pickup',
  `from_branch_id` int(30) NOT NULL,
  `to_branch_id` int(30) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `length` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `ptype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`, `status`, `date_created`, `ptype`) VALUES
(1, '201406231415', 'Rup Saikia', 'house no 123, Ward no 7 , Bihpuria', 2147483647, 'Jagat Borah', 'house no 13, Ward no 1 , Mangaldoi', 2147483647, 1, 1, 0, '30kg', '12in', '12in', '15in', 2500, 7, '2020-11-26 16:15:46', 0),
(2, '117967400213', 'Dipu Saikia', 'house no 157,  , assam', 2147483647, 'Nil Borah', 'house no 123, Ward no 7', 2147483647, 2, 1, 3, '30kg', '12in', '12in', '15in', 2500, 5, '2020-11-26 16:46:03', 0),
(3, '983186540795', 'Deep Lahon', 'house no 230, Ward no 8,  Bihpuria', 2147483647, 'Jahnu Saikia', 'house no 30, Ward no 3, Majuli', 2147483647, 1, 1, 3, '20Kg', '10in', '10in', '10in', 1500, 4, '2020-11-26 16:46:03', 0),
(7, '643537759995', 'Anurag Saikia', 'bihpuria pin 784161, assam', 768436587, 'Biplab Bora', 'Gandhi Basti', 2147483647, 1, 1, 4, '354', '24', '24', '24', 24, 7, '2021-02-11 16:37:15', 0),
(8, '037248180713', 'Jayanta Phukan', 'house no 157, b boruah road , assam', 2147483647, 'Amazon', 'house no 13, Ward no 1 , Mangaldoi', 2147483647, 2, 3, 5, '23', '24', '24', '24', 24, 9, '2021-02-11 16:37:15', 0),
(9, '031939407661', 'protidhwani Org', 'bihpuria pin 784161, assam', 2147483647, 'Flipkart', ' Adabari, Guwahati, Assam 781012', 2147483647, 2, 5, 1, '354', '23', '344', '23', 24, 7, '2021-02-14 16:05:45', 0),
(12, '940561831586', 'madhurya dutta', 'lakhimpur assam', 2147483647, 'amit sahu', 'bihpuria assam', 87678789, 1, 0, 0, '10', '23', '24', '23', 24, 0, '2021-03-06 07:10:50', 0),
(13, '821017226608', 'abc', 'lakhimpur assam', 2147483647, 'def', 'guwahati', 0, 1, 8, 0, '354', '23', '24', '23', 24, 0, '2021-03-06 07:34:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parcel_tracks`
--

CREATE TABLE `parcel_tracks` (
  `id` int(30) NOT NULL,
  `parcel_id` int(30) NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcel_tracks`
--

INSERT INTO `parcel_tracks` (`id`, `parcel_id`, `status`, `date_created`) VALUES
(1, 2, 1, '2020-11-27 09:53:27'),
(2, 3, 1, '2020-11-27 09:55:17'),
(3, 1, 1, '2020-11-27 10:28:01'),
(4, 1, 2, '2020-11-27 10:28:10'),
(5, 1, 3, '2020-11-27 10:28:16'),
(6, 1, 4, '2020-11-27 11:05:03'),
(7, 1, 5, '2020-11-27 11:05:17'),
(8, 1, 7, '2020-11-27 11:05:26'),
(9, 3, 2, '2020-11-27 11:05:41'),
(10, 6, 1, '2020-11-27 14:06:57'),
(11, 7, 8, '2021-02-13 18:31:11'),
(12, 7, 7, '2021-02-13 18:31:46'),
(13, 9, 8, '2021-02-14 16:06:12'),
(14, 4, 1, '2021-02-15 05:43:16'),
(15, 5, 2, '2021-02-15 05:43:33'),
(16, 2, 2, '2021-02-15 05:43:44'),
(17, 2, 3, '2021-02-15 05:43:57'),
(18, 3, 4, '2021-02-15 05:44:30'),
(19, 9, 2, '2021-02-15 06:50:52'),
(20, 9, 3, '2021-02-15 06:51:06'),
(21, 9, 4, '2021-02-15 06:51:21'),
(22, 9, 9, '2021-02-15 06:51:34'),
(23, 9, 7, '2021-02-15 06:51:42'),
(24, 10, 1, '2021-02-23 06:04:25'),
(25, 10, 2, '2021-02-23 06:05:33'),
(26, 10, 9, '2021-02-23 06:06:42'),
(27, 2, 5, '2021-02-24 16:49:46'),
(28, 8, 9, '2021-03-06 07:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Courier Service', 'admin@speed.com', '8724023050', 'Lakhimpur ,Assam', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `branch_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `branch_id`, `date_created`, `phone`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 0, '2020-11-26 10:57:04', 0),
(2, 'Raktim', 'Borah', 'madhurya@speed.com', '202cb962ac59075b964b07152d234b70', 2, 1, '2020-11-26 11:52:04', 675473567),
(3, 'Pankaj Jyoti', 'Hazarika', 'pankaj@speed.com', 'd40242fb23c45206fadee4e2418f274f', 2, 4, '2020-11-27 13:32:12', 2147483647),
(4, 'Sourav', 'Gogoi', 'sourav@speed.com', '202cb962ac59075b964b07152d234b70', 2, 7, '2021-02-12 16:47:30', 2147483647),
(5, 'madhurya ', 'dutta', 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 2, 8, '2021-03-06 07:08:09', 123457),
(6, 'protidhwani', 'Org', 'protidhwanimusic@gmail.com', '1caefab72e2ae80a3aaabbc33614f0ef', 2, 3, '2021-03-06 09:22:02', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD CONSTRAINT `system_settings_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
