-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2017 at 05:34 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sreekrishna`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE IF NOT EXISTS `tbl_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `order_no` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id`, `name`, `category`, `order_no`, `created_at`, `status`) VALUES
(1, 'basmathi', 'rice', 1, '2017-08-23', 0),
(2, 'sureka', 'rice', 1, '2017-08-22', 0),
(3, 'surabi', 'rice', 1, '2017-08-22', 0),
(4, 'sambar', 'dish', 3, '2017-08-18', 0),
(5, 'parippu', 'payasam', 2, '2017-08-23', 1),
(6, 'semia', 'payasam', 2, '2017-08-23', 0),
(7, 'aviyal', 'dish', 3, '2017-08-23', 0),
(8, 'dish3', 'dish', 3, '2017-08-30', 1),
(9, 'pickle1', 'pickle', 4, '2017-08-16', 0),
(10, 'pickle2', 'pickle', 4, '2017-08-30', 1),
(11, 'kootcurry', 'category1', 5, '2017-08-15', 0),
(12, 'masala', 'category1', 5, '2017-08-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL,
  `customer_name` int(45) NOT NULL,
  `address` varchar(400) NOT NULL,
  `phone1` varchar(10) NOT NULL,
  `phone2` varchar(10) NOT NULL,
  `phone3` varchar(10) NOT NULL,
  `landmark` varchar(45) NOT NULL,
  `program_date` date NOT NULL,
  `program_time` time NOT NULL,
  `booked_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `customer_name`, `address`, `phone1`, `phone2`, `phone3`, `landmark`, `program_date`, `program_time`, `booked_order`, `total_count`) VALUES
(1, 0, 'cc', '9999', '888', '888', 'hhh', '2017-08-02', '00:00:00', '2017-07-31 18:30:00', 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
