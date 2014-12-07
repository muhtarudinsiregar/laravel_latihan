-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2014 at 12:22 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `name`, `created_at`, `updated_at`) VALUES
(1, 'john441213asa', 'johndoe', 'johndoe@gmail.com', '1234567', 'john412121', '2014-12-07 22:45:42', '2014-12-07 15:45:42'),
(2, 'amy', 'amy.deg', 'amy@outlook.com', '1234567', 'amy', '2014-12-06 11:18:32', '2014-12-06 00:13:46'),
(3, '', '', 'ardin@gmail.com', '', 'ardin', '2014-12-06 18:14:04', '2014-12-06 18:14:04'),
(4, '', '', 'b4mv@outlook.com', '', 'b4mv34', '2014-12-06 18:18:30', '2014-12-06 18:18:30'),
(5, '', '', 'ardin@zalora.co.id', '', 'ardinratat', '2014-12-06 18:31:20', '2014-12-06 18:31:20'),
(6, '', '', '121415@truk.co.id', '', '141414', '2014-12-06 18:32:28', '2014-12-06 18:32:28'),
(7, '', '', 'arduino@gogo.com', '', 'arduino', '2014-12-06 18:39:36', '2014-12-06 18:39:36'),
(8, 'ararar', '', 'ararar@tutup.in', '', 'arara', '2014-12-06 18:43:42', '2014-12-06 18:43:42');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
