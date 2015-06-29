-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2014 at 07:10 PM
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
CREATE DATABASE IF NOT EXISTS `soc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `soc`;

-- --------------------------------------------------------

--
-- Table structure for table `cleanerrequest`
--

CREATE TABLE IF NOT EXISTS `cleanerrequest` (
  `howoften` varchar(100) NOT NULL,
  `home` varchar(100) NOT NULL,
  `bedrooms` varchar(100) NOT NULL,
  `bathrooms` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `addreq` varchar(1000) DEFAULT NULL,
  `whatelse` varchar(1000) DEFAULT NULL,
  `when` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleanerrequest`
--

INSERT INTO `cleanerrequest` (`howoften`, `home`, `bedrooms`, `bathrooms`, `area`, `addreq`, `whatelse`, `when`, `city`, `email`, `phone`) VALUES
('One-time/Deep clean', 'Two-story house', '4 bedrooms', 'More than 3 bathrooms', 'Greater than 3000', 'Cleaner should bring supplies I want laundry done I want my refrigerator/ oven cleaned ', '', 'In the next few days', 'Ahmedabad', 'nirzari.iyer@yahoo.com', '9687284155'),
('Once or twice a month', 'One-story house', '3 bedrooms', '3 bathrooms', '1500-20000', 'I want windows cleaned ', '', 'dropdown', 'Ahmedabad', 'sharansr007@gmail.com', '9825579555');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `company`, `subject`, `message`) VALUES
('Nirzari', 'nirzari.iyer@gmail.com', 'Iconflux', 'tie up', 'mail us back plz'),
('Seena', 'seena12@yahoo.com', 'carog', 'complaint', 'i did not receive service on time');

-- --------------------------------------------------------

--
-- Table structure for table `djrequest`
--

CREATE TABLE IF NOT EXISTS `djrequest` (
  `event` varchar(1000) DEFAULT NULL,
  `people` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `music` varchar(1000) DEFAULT NULL,
  `budget` varchar(100) NOT NULL,
  `addequip` varchar(1000) DEFAULT NULL,
  `whatelse` varchar(1000) DEFAULT NULL,
  `date` date NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djrequest`
--

INSERT INTO `djrequest` (`event`, `people`, `venue`, `music`, `budget`, `addequip`, `whatelse`, `date`, `city`, `email`, `phone`) VALUES
('Wedding ceremony ', 'More than 500', 'Rock ', 'Outdoor', 'Sound/ PA System Dance Lighting ', 'Over 3000 Rs', '', '2014-05-14', 'Ahmedabad', 'nirzari.iyer@yahoo.com', '9687284155'),
('farewell party ', '150-200', 'Rock R&B/Soul Hip-hop/Rap ', 'Indoor', 'Microphones ', 'Over 3000 Rs', '', '2014-05-27', 'Ahmedabad', 'dhyey20@gmail.com', '9687895326');

-- --------------------------------------------------------

--
-- Table structure for table `photorequest`
--

CREATE TABLE IF NOT EXISTS `photorequest` (
  `event` varchar(100) NOT NULL,
  `people` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `format` varchar(1000) DEFAULT NULL,
  `budget` varchar(100) NOT NULL,
  `whatelse` varchar(1000) DEFAULT NULL,
  `date` date NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photorequest`
--

INSERT INTO `photorequest` (`event`, `people`, `venue`, `format`, `budget`, `whatelse`, `date`, `city`, `email`, `phone`) VALUES
('Wedding', 'Less than 25', 'Indoor', 'CD/DVD Online or Digital Prints ', '2000-3000', 'nothing as such', '2014-05-25', 'Ahmedabad', 'nirzari.iyer@gmail.com', ''),
('Wedding', 'Less than 25', 'Outdoor', 'CD/DVD Online or Digital Prints ', 'Over 3000 Rs', 'Nothing as such', '2014-05-19', 'Ahmedabad', 'nirzari.iyer@yahoo.com', '9687284155'),
('House Warming Party', '50-100', 'Indoor', 'fancy albums ', 'Over 3000 Rs', '', '2014-05-30', 'Ahmedabad', 'starpayal@rediffmail.com', '9824233234');

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
('photographer', '', '1,sitanagar, Next to mega mart, Naroda', 'Ahmedabad', 'Gujarat', '380014', 'I will Travel to my clients', 'Jinal', 'Desai', 'jinu8993@gmail.com', '8154896582', '10', 'Jinu123123'),
('photographer', '', '12,Ramrajyanagar, citylake', 'Surat', 'Gujarat', '385269', 'I will Travel to my clients', 'Rohit', 'Sharma', 'rohit_sharma23@gmail.com', '8899654520', 'more than 15', 'Rohit123'),
('cleaner', '', '13, sukhaji ni chali, navarangpura', 'Ahmedabad', 'Gujarat', '380009', 'I will Travel to my clients', 'Kishan', 'Thakor', 'kishanthakorji@gmail.com', '9898562341', 'less than 5', 'Kishan123'),
('cleaner', '', '12,Ramrajyanagar, citylake', 'Surat', 'Gujarat', '385269', 'I will Travel to my clients', 'Shila', 'somala', 'shila12@gmail.com', '9874565514', '5', 'Shila123'),
('dj', '', '15, gurukrupa society, ambawadi', 'Ahmedabad', 'Gujarat', '380006', 'I will Travel to my clients', 'Sam', 'Gupta', 'sam.cool@yahoo.in', '9877756632', '15', 'Cool123'),
('dj', '', '23/B, Bluedot appartment, Thaltej', 'Ahmedabad', 'Gujarat', '380059', 'I will Travel to my clients', 'Arun', 'saxena', 'arun.dj@gmail.com', '8874511123', 'more than 15', 'Dj123123'),
('tutor', '', '5/15, C block, Shreeram appartment, Vadaj', 'Ahmedabad', 'Gujarat', '380057', 'I will Travel to my clients', 'Rakesh', 'Rav', 'ravrakesh24@yahoo.com', '8756435462', '5', 'Rav123'),
('tutor', '', '12, Girnar hills, Borad road', 'Baroda', 'Gujarat', '389465', 'I will Travel to my clients', 'Seema', 'Jhala', 'seemajhala@rediffmail.com', '9956644322', '10', 'Seema123'),
('null', 'Painter', '5, Noor society, Opp. somnath park', 'Ahmedabad', 'Gujarat', '380055', 'I will Travel to my clients', 'Rakesh', 'Patel', 'rakeshpatel12@yahoo.com', '8989541236', 'more than 15', 'Rakesh123'),
('webdeveloper', '', '13,Pragati Society, Naranpura', 'Ahmedabad', 'Gujarat', '380013', 'Neither me nor client needs to travel.', 'Suhasi', 'Vibhav', 'suhasi008@yahoo.in', '8596451212', '5', 'Suhasi123'),
('webdeveloper', '', '22, Ronak appartment, Naranpura', 'Ahmedabad', 'Gujarat', '380013', 'I will Travel to my clients', 'Mohan', 'Desai', 'mohanmartin@gmail.com', '9855642564', '10', 'Mohan123'),
('null', 'Dancer', '34,Nirmohi appartment, Navrangpura', 'Ahmedabad', 'Gujarat', '380009', 'Client has to travel to me', 'Sahil', 'Suman', 'sahil34@yahoo.com', '9562323233', 'less than 5', 'Sahil123'),
('null', 'Swimming Coach', '9, Oman complex, Shastrinagar', 'Ahmedabad', 'Gujarat', '380019', 'Client has to travel to me', 'Subhash', 'Dhami', 'subhash123@yahoo.com', '8989546213', 'less than 5', 'Subhash123'),
('photographer', '', '57,Sahjananad Park, Vadaj', 'Ahmedabad', 'Gujarat', '380013', 'I will Travel to my clients', 'Shanvi', 'Shah', 'shanvi34@gmail.com', '9856566663', 'more than 15', 'Shanvi123');

-- --------------------------------------------------------

--
-- Table structure for table `tutorrequest`
--

CREATE TABLE IF NOT EXISTS `tutorrequest` (
  `subject` varchar(1000) DEFAULT NULL,
  `skill` varchar(100) NOT NULL,
  `howoften` varchar(100) NOT NULL,
  `whatelse` varchar(1000) DEFAULT NULL,
  `when` varchar(100) NOT NULL,
  `venue` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorrequest`
--

INSERT INTO `tutorrequest` (`subject`, `skill`, `howoften`, `whatelse`, `when`, `venue`, `city`, `email`, `phone`) VALUES
('Mathematics Science ', 'High school', 'Multiple times a week', '', 'I am flexible', 'I travel to the tutor The tutor travels to me ', 'Ahmedabad', 'nirzari.iyer@yahoo.com', '9687284155'),
('Physics ', 'Adult', 'everyday', '', 'tomorrow', 'The tutor travels to me ', 'Baroda', 'hshukla907@gmail.com', '8460104947');

-- --------------------------------------------------------

--
-- Table structure for table `webdeveloperrequest`
--

CREATE TABLE IF NOT EXISTS `webdeveloperrequest` (
  `servertech` varchar(1000) DEFAULT NULL,
  `clienttech` varchar(1000) DEFAULT NULL,
  `db` varchar(1000) DEFAULT NULL,
  `whatelse` varchar(1000) DEFAULT NULL,
  `when` varchar(100) NOT NULL,
  `venue` varchar(1000) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webdeveloperrequest`
--

INSERT INTO `webdeveloperrequest` (`servertech`, `clienttech`, `db`, `whatelse`, `when`, `venue`, `city`, `email`, `phone`) VALUES
('Java ', 'Javascript jQuery HTML/HTML 5 CSS/ CSS 3 ', 'MySQL ', '', 'dropdown', 'Tutor travels Phone ', 'Ahmedabad', 'nirzari.iyer@yahoo.com', '9687284155'),
('Python Perl opensource ', 'HTML/HTML 5 swing ', 'MySQL phpdb ', '', 'asap', 'Phone ', 'Ahmedabad', 'viral.vgec10@gmail.com', '7600021916');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
