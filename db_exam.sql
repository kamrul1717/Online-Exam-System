-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2019 at 08:18 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'juyel', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(39, 1, 0, 'Slow'),
(40, 1, 1, 'Normal'),
(41, 1, 0, 'First'),
(42, 1, 0, 'None'),
(43, 2, 1, 'Two'),
(44, 2, 0, 'Three'),
(45, 2, 0, 'Four'),
(46, 2, 0, 'One'),
(47, 3, 1, 'non-volatile memory'),
(48, 3, 0, 'volatile memory'),
(49, 3, 0, 'single memory'),
(50, 3, 0, 'None'),
(51, 4, 0, 'C'),
(52, 4, 0, 'C++'),
(53, 4, 0, 'JAVA'),
(54, 4, 1, 'ecilipes'),
(55, 5, 0, 'Doc'),
(56, 5, 0, 'JNDI'),
(57, 5, 1, 'IoC'),
(58, 5, 0, 'XML');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(10, 1, 'What is the initial value of marquee-speed property?'),
(11, 2, 'How many types of RAM are used?'),
(12, 3, 'ROM is a type of ?'),
(13, 4, 'Which is not a type of programming language?'),
(14, 5, 'The core of the spring framework is based on the principle of');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(1, 'Nur nobi jewel', 'jewel', '827ccb0eea8a706c4c34a16891f84e7b', 'nurnobi319@gmail.com', 0),
(3, 'Rakib hasan', 'rakib', 'e10adc3949ba59abbe56e057f20f883e', 'rakib@gmail.com', 0),
(4, 'kamrul hassan', 'kamrul', '202cb962ac59075b964b07152d234b70', 'kamrul@gmail.com', 0),
(5, 'Nur nobi jewel', 'jewel', '3295c76acbf4caaed33c36b1b5fc2cb1', 'jewel@gmail.com', 1),
(6, 'Badhon Khan', 'Badhon', '202cb962ac59075b964b07152d234b70', 'badhon@gmail.com', 0),
(7, 'Mahid Ahmed Moshi', 'Moshi', '827ccb0eea8a706c4c34a16891f84e7b', 'mahid@gmail.com', 0),
(8, 'Atik', 'Atik_22', 'e10adc3949ba59abbe56e057f20f883e', 'atik55@gmail.com', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
