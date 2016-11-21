-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2016 at 02:56 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_plants`
--

-- --------------------------------------------------------

--
-- Table structure for table `herbal_plants`
--

CREATE TABLE `herbal_plants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `treatment` varchar(255) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `herbal_plants`
--

INSERT INTO `herbal_plants` (`id`, `name`, `image`, `treatment`, `info`) VALUES
(1, 'Alfalfa', 'Alfalfa.jpg', '', ''),
(2, 'Blackberries', 'Blackberries.jpg', '', ''),
(3, 'Burdock', 'Burdock Herb.jpg', '', ''),
(4, 'Poppy', 'California Poppy.jpg', '', ''),
(5, 'Catnip', 'Catnip.jpg', '', ''),
(6, 'feverfew', 'Feverfew.jpg', '', ''),
(7, 'Hyssop', 'hyssop.jpg', '', ''),
(8, 'Lady Ferns', 'Lady Ferns.jpg', '', ''),
(9, 'Marijuana', 'Marijuana.jpg', '', ''),
(10, 'Navajo Tea', 'Navajo Tea.jpg', '', ''),
(11, 'Quinine', 'Quinine.jpg', '', ''),
(12, 'Red Clover', 'Red Clover.jpg', '', ''),
(13, 'Sage', 'Sage.jpg', '', ''),
(14, 'Sweet Marjoram', 'Sweet Marjoram.jpg', '', ''),
(15, 'Sweet Violet', 'Sweet Violet.jpg', '', ''),
(16, 'tansy', 'tansy.jpg', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `herbal_plants`
--
ALTER TABLE `herbal_plants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `herbal_plants`
--
ALTER TABLE `herbal_plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
