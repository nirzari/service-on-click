-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2014 at 10:53 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `soc`
--

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE IF NOT EXISTS `pro` (
  `what` varchar(100) NOT NULL,
  `other` varchar(50) DEFAULT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(6) NOT NULL,
  `travel` varchar(500) DEFAULT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `distance` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`what`, `other`, `address`, `city`, `state`, `zip`, `travel`, `fname`, `lname`, `email`, `phone`, `distance`, `password`) VALUES
('Photographer', NULL, 'abc', 'xyz', 'abc', '123456', 'I will Travel to my clients', 'a', 'bc', 'abc@gmail.com', '1111111111', 'less than 5', 'abcdeF1'),
('null', NULL, 'a', 'b', 'c', '123456', 'I will Travel to my clients', 'a', 'b', 'abc@gmail.com', '1111111111', 'less than 5', 'abcdeF1'),
('null', NULL, '1, Shantiniketan Park, Near NAvrang Circle, Naranpura', 'Ahmedabad', 'Gujarat', '380014', 'I will Travel to my clients', 'Nirzari', 'Iyer', 'nirzari.iyer@yahoo.com', '9196872841', '15', 'Nirzari18!'),
('null', NULL, '59,arohi homes', 'ahmedabad', 'gujarat', '380058', 'I will Travel to my clients', 'dhyey', 'shah', 'dhyeya007@yahoo.co.in', '9127172951', 'more than 15', 'abcdeF1'),
('null', NULL, '1, Ganesh Bunglow, Shantiniketan Park', 'Ahmedabad', 'Gujarat', '380014', 'I will Travel to my clients', 'Starpayal', 'Iyer', 'nirzari.iyer@yahoo.com', '9191271729', 'less than 5', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('null', NULL, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'abcdeF1'),
('Photographer', NULL, '7, krishna bunglows', 'Ahmedabad', 'Gujarat', '380051', 'I will Travel to my clients', 'Yash', 'Bhavsar', 'yash8050@yahoo.com', '9191271729', 'less than 5', 'abcdeF1'),
('Photographer', NULL, '1, Ganesh Bunglow, Shantiniketan Park', 'Ahmedabad', 'Gujarat', '380014', 'I will Travel to my clients', 'Starpayal', 'Iyer', 'nirzari.iyer@yahoo.com', '9191271729', '5', 'abcdeF1'),
('Photographer', NULL, '59,arohi homes', 'ahmedabad', 'gujarat', '380058', 'I will Travel to my clients', 'dhyey', 'shah', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeF1'),
('cleaner', NULL, '7, krishna bunglows', 'Ahmedabad', 'Gujarat', '380051', 'I will Travel to my clients', 'Yash', 'Bhavsar', 'yash8050@yahoo.com', '9191271729', 'less than 5', 'abcdeF1'),
('cleaner', NULL, '59, Aarohi Homes, Near Sun City', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'Dhyey', 'Shah', 'dhyeya007@yahoo.co.in', '9196878953', '5', 'abcdeF1'),
('cleaner', NULL, '1, Ganesh Bunglow, Shantiniketan Park', 'Ahmedabad', 'Gujarat', '380014', 'I will Travel to my clients', 'Starpayal', 'Iyer', 'nirzari.iyer@yahoo.com', '9191271729', 'less than 5', 'abcdeF1'),
('dj', NULL, '1,arohi homes', 'ahmedabad', 'gujarat', '380058', 'I will Travel to my clients', 'dhyey', 'shah', 'dhyeya007@yahoo.co.in', '9127172951', '5', 'abcdeF1'),
('dj', NULL, '2, Aarohi Homes, Near Sun City', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'Dhyey', 'Shah', 'dhyeya007@yahoo.co.in', '9196878953', '15', 'abcdeF1'),
('dj', NULL, '3, Aarohi Homes, Near Sun City', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'Dhyey', 'Shah', 'dhyeya007@yahoo.co.in', '9196878953', '5', 'abcdeF1'),
('tutor', NULL, '4, Aarohi Homes, Near Sun City', 'Ahmedabad', 'Gujarat', '380058', 'Neither me nor client needs to travel.', 'Dhyey', 'Shah', 'dhyeya007@yahoo.co.in', '9196878953', '15', 'Abcdef1'),
('tutor', NULL, '5, Aarohi Homes, Near Sun City', 'Ahmedabad', 'Gujarat', '380058', 'Client has to travel to me', 'Dhyey', 'Shah', 'dhyeya007@yahoo.co.in', '9196878953', 'more than 15', 'abcdeF1'),
('tutor', NULL, '6, Aarohi Homes, Near Sun City', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'Dhyey', 'Shah', 'dhyeya007@yahoo.co.in', '9196878953', '15', 'abcdeF1'),
('', NULL, 'fhf', 'hgfhgf', 'gfhtf', '380007', 'I will Travel to my clients', 'Maitry', 'Shah', 'maitry23@gmail.com', '8980514724', '10', 'Maitry23'),
('', NULL, '7, krishna bunglows', 'Ahmedabad', 'Gujarat', '380014', 'I will Travel to my clients', 'Yash', 'Bhavsar', 'yash8050@yahoo.com', '9196878953', 'less than 5', 'abcdeF1'),
('', NULL, '7, krishna bunglows', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'Yash', 'Bhavsar', 'yash8050@yahoo.com', '9127172951', '5', 'abcdeF1'),
('photographer', NULL, '7, krishna bunglows', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'Yash', 'Bhavsar', 'yash8050@yahoo.com', '9127172951', '15', 'abcdeF1'),
('', NULL, '1, Ganesh Bunglow, Shantiniketan Park', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'nirzari', 'iyer', 'nirzari.iyer@yahoo.com', '9127172951', 'less than 5', 'abcdeF1'),
('xyz', NULL, '7, krishna bunglows', 'Ahmedabad', 'Gujarat', '380058', 'Neither me nor client needs to travel.', 'Yash', 'Bhavsar', 'yash8050@yahoo.com', '9196878953', 'less than 5', 'abcdeF1'),
('', NULL, '1, Ganesh Bunglow, Shantiniketan Park', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'nirzari', 'Iyer', 'nirzari.iyer@yahoo.com', '9127172951', 'more than 15', 'abcdeF1'),
('', NULL, '1, Ganesh Bunglow, Shantiniketan Park', 'Ahmedabad', 'Gujarat', '380058', 'I will Travel to my clients', 'dhyey', 'shah', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeF1'),
('', NULL, '1, Ganesh Bunglow, Shantiniketan Park', 'Ahmedabad', 'Gujarat', '380058', 'Neither me nor client needs to travel.', 'dhyey', 'shah', 'dhyeya007@yahoo.co.in', '9127172951', '15', 'abcdeF1'),
('', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'dhyey', 'shah', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeF1'),
('xyz', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeF1'),
('photographer', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'Bhavsar', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeF1'),
('null', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeF1'),
('Others', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', '15', 'abcdeF1'),
('Others', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('Others', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('Others', NULL, 'a', 'b', 'c', '380051', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('xyz', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'b', 'abc@gmail.com', '9196878953', '10', 'abcdeF1'),
('', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'b', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('', NULL, '7, krishna bunglows', 'Ahmedabad', 'Gujarat', '380058', 'Client has to travel to me', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('photographer', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'dhyey', 'shah', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeF1'),
('photographer', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', '5', 'abcdeF1'),
('dj', NULL, 'a', 'b', 'c', '380058', 'I will Travel to my clients', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', '5', 'abcdeF1'),
('Others', NULL, 'a', 'b', 'c', '380058', 'null', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'more than 15', 'abcdeG1'),
('Others', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('Others', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('Others', NULL, 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('photographer', '', 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'Bhavsar', 'abc@gmail.com', '9127172951', 'less than 5', 'abcdeF1'),
('Others', 'xyz', 'a', 'b', 'c', '380058', 'Neither me nor client needs to travel.', 'a', 'b', 'dhyeya007@yahoo.co.in', '9127172951', 'less than 5', 'abcdeG1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
