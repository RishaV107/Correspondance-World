-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2019 at 12:34 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ncw`
--

-- --------------------------------------------------------

--
-- Table structure for table `edu`
--

CREATE TABLE `edu` (
  `id` int(10) NOT NULL,
  `duration` varchar(40) NOT NULL,
  `board` varchar(50) NOT NULL,
  `percentage` varchar(20) NOT NULL,
  `degree` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edu`
--

INSERT INTO `edu` (`id`, `duration`, `board`, `percentage`, `degree`) VALUES
(2, '2017-current', 'kiet', '87', 'btech'),
(11, '2017-2021', 'K.I.E.T', '87', 'B.Tech');

-- --------------------------------------------------------

--
-- Table structure for table `edu10`
--

CREATE TABLE `edu10` (
  `id` int(10) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `board` varchar(50) NOT NULL,
  `percentage` varchar(10) NOT NULL,
  `degree` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edu10`
--

INSERT INTO `edu10` (`id`, `duration`, `board`, `percentage`, `degree`) VALUES
(2, '2014-2016', 'cbse', '98', '10'),
(11, '2014-2016', 'CBSE', '98', '10');

-- --------------------------------------------------------

--
-- Table structure for table `edu12`
--

CREATE TABLE `edu12` (
  `id` int(10) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `board` varchar(60) NOT NULL,
  `percentage` varchar(20) NOT NULL,
  `degree` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edu12`
--

INSERT INTO `edu12` (`id`, `duration`, `board`, `percentage`, `degree`) VALUES
(2, '2016-2017', 'cbse', '87', '12'),
(11, '2016-2017', 'CBSE', '87', '12');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(10) NOT NULL,
  `facultyid` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `coord` int(1) NOT NULL,
  `year` int(5) NOT NULL,
  `sec` varchar(5) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `facultyid`, `username`, `branch`, `email`, `coord`, `year`, `sec`, `name`) VALUES
(20, '1234567899', 'shiva99', 'CSE', 'rishavsingh107@gamil.com', 1, 2, 'A', 'twinkle tiwari');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(255) NOT NULL,
  `society` varchar(255) NOT NULL,
  `link` varchar(256) NOT NULL,
  `submitted_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `society`, `link`, `submitted_by`) VALUES
(1, 'Uddeshya', 'https://docs.google.com/forms/d/e/1FAIpQLScgSAiW1znUvKT3tUrp9lj4jouu7v65HRl2ecUl4w13IQ0CCA/viewform', 'harsh.rawat'),
(2, 'E-cell', 'https://docs.google.com/forms/d/e/1FAIpQLSfPiQFiQK2L99qN3xWRrnBO80sDg5gHR6s022d6nFetIgPT6A/viewform?usp=sf_link', 'harsh.rawat'),
(3, 'C-cell', 'https://docs.google.com/forms/d/e/1FAIpQLScWztN4izLTcAew-NNBDk0w_23DH64F_La7hFERej-aTZNj-Q/viewform?usp=sf_link', 'harsh.rawat'),
(4, 'ERP', 'https://docs.google.com/forms/d/e/1FAIpQLSeD95iSMLv-MYlKgf3pCADhcQzsXHlf_IhgVYZIbhCy9NSbfw/viewform?usp=sf_link', 'harsh.rawat'),
(5, 'TEDX', 'https://docs.google.com/forms/d/e/1FAIpQLSde41LkzCeZskFHydL4BLjape83jsuchVRgzQmY4rYefee7oA/viewform?usp=sf_link', 'harsh.rawat'),
(6, 'KMC', 'https://docs.google.com/forms/d/e/1FAIpQLSdmAUC94wIKQTYGhka6z9GmZrSRWFdBFv_x3hm-rpnoemkQiw/viewform?usp=sf_link', 'harsh.rawat');

-- --------------------------------------------------------

--
-- Table structure for table `heads`
--

CREATE TABLE `heads` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heads`
--

INSERT INTO `heads` (`id`, `name`, `dept`, `designation`, `email`) VALUES
(1, 'HARSH RAWAT', 'IT', 'HOD', 'harshrawat66@gmail.com'),
(2, 'HARSH RAWAT', 'EC', 'HOD', 'harshrawat66@gmail.com'),
(3, 'HARSH RAWAT', 'ME', 'HOD', 'harshrawat66@gmail.com'),
(4, 'HARSH RAWAT', 'CSE', 'HOD', 'harshrawat66@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hosteller_info`
--

CREATE TABLE `hosteller_info` (
  `id` int(255) NOT NULL,
  `hostelname` varchar(255) NOT NULL,
  `roomno` int(2) NOT NULL,
  `floor` int(1) NOT NULL,
  `warden` varchar(255) NOT NULL,
  `pname` int(11) NOT NULL,
  `relation` int(11) NOT NULL,
  `pnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `food_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `food_cat` varchar(100) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `food_id`, `name`, `food_cat`, `price`) VALUES
(1, 1, 'VEG FRIED RICE', 'RICE', 35),
(2, 2, 'EGG FRIED RICE', 'RICE', 45),
(3, 3, 'TOMATOE RICE', 'RICE', 45),
(4, 4, 'SAMBHAR RICE', 'RICE', 35),
(5, 5, 'VEG ROLL', 'ROLLS', 35),
(6, 6, 'SPRING ROLL', 'ROLLS', 35),
(7, 7, 'EGG ROLL', 'ROLLS', 40),
(8, 8, 'DOUBLE EGG ROLL', 'ROLLS', 50),
(9, 9, 'PANEER ROLL', 'ROLLS', 45),
(10, 10, ' DOUBLE EGG PANEER R', 'ROLLS', 60),
(11, 11, 'EGG PANEER ROLL', 'ROLLS', 55),
(12, 12, 'VEG BURGER', 'BURGER', 30),
(13, 13, 'CHEESE BURGER', 'BURGER', 45),
(14, 14, 'MACCAN BURGER', 'BURGER', 45),
(15, 15, 'PANEER TIKKI BURGER', 'BURGER', 45),
(16, 16, 'HOT DOG', 'BURGER', 35),
(17, 17, 'PANEER HOT DOG', 'BURGER', 40),
(18, 18, 'VEG CHOWMIN', 'CHINESE', 35),
(19, 19, 'EGG CHOWMIN		\r\n', 'CHINESE', 45),
(20, 20, 'EGG TOMATOE CHEESE C', 'CHINESE', 55),
(21, 21, 'FRIED MOMOS', 'CHINESE', 50),
(22, 22, 'STEAM MOMOS', 'CHINESE', 45),
(23, 23, 'CHILL POTATOE', 'CHINESE', 55),
(24, 24, 'CHILL PANEER', 'CHINESE', 75),
(25, 25, 'GARLIC CHOWMIN', 'CHINESE', 45),
(26, 26, 'IDLI SAMBHAR', 'SOUTH INDIAN', 35),
(27, 27, 'VADA SAMBHAR', 'SOUTH INDIAN', 40),
(28, 28, 'MASALA DOSA', 'SOUTH INDIAN', 55),
(29, 29, 'PLAIN DOSA', 'SOUTH INDIAN', 50),
(30, 30, 'ONION PLAIN DOSA', 'SOUTH INDIAN', 55),
(31, 31, 'ONION MASALA DOSA', 'SOUTH INDIAN', 55),
(32, 32, 'PANEER DOSA', 'SOUTH INDIAN', 65),
(33, 33, 'ONION BUTTER MASALA ', 'SOUTH INDIAN', 65),
(34, 34, 'BUTTER MASALA DOSA', 'SOUTH INDIAN', 65),
(35, 35, 'BUTTER PANNER MASALA', 'SOUTH INDIAN', 75),
(36, 36, 'BUTTER PLAIN DOSA', 'SOUTH INDIAN', 50),
(37, 37, 'EGG MASALA DOSA', 'SOUTH INDIAN', 65),
(38, 38, 'FIVE TEST UTTPAM', 'SOUTH INDIAN', 65),
(39, 39, 'ONION UTTPAM', 'SOUTH INDIAN', 45),
(40, 40, 'PLAIN UTTPAM', 'SOUTH INDIAN', 40),
(41, 41, 'TOMATOE ONION UTTPAM', 'SOUTH INDIAN', 60),
(42, 42, 'VEG UTTPAM', 'SOUTH INDIAN', 50),
(43, 43, 'MADRAS PIZZA', 'SOUTH INDIAN', 65),
(44, 44, 'THALI', 'THALI', 55),
(45, 45, 'SPL THALI', 'THALI', 100),
(46, 46, 'CHINESE THALI', 'THALI', 75),
(47, 47, 'SOUTH INDIAN THALI', 'THALI', 75),
(48, 48, 'TEA', 'BEVERAGES', 10),
(49, 49, 'SPECIAL TEA', 'BEVERAGES', 11),
(50, 50, 'COFFEE', 'BEVERAGES', 18),
(51, 51, 'COLD DRINK(600 ML.)', 'BEVERAGES', 40),
(52, 52, 'FLAVOURED MILK', 'BEVERAGES', 30),
(53, 53, 'AMUL COLD COFFE', 'BEVERAGES', 30),
(54, 54, 'FROOTI', 'BEVERAGES', 10),
(55, 55, 'REAL JUICE', 'BEVERAGES', 20),
(56, 56, 'VEG SANDWICH', 'SANDWICH', 28),
(57, 57, 'CHEESE SANDWICH', 'SANDWICH', 38),
(58, 58, 'HALF FRY EGG SANDWIC', 'SANDWICH', 45),
(59, 59, 'SWEET CORN SANDWICH', 'SANDWICH', 40),
(60, 60, 'CHEESE GRILLED SANDW', 'SANDWICH', 45),
(61, 61, 'PANEER GRILLED SANDW', 'SANDWICH', 45),
(62, 62, 'GRILLED SANDWICH', 'SANDWICH', 32),
(63, 63, 'AALU PARATHA+CHOLA', 'PARATHA', 35),
(64, 64, 'ONION PARATHA+CHOLA', 'PARATHA', 40),
(65, 65, 'PANEER PARATHA+CHOLA', 'PARATHA', 60),
(66, 66, 'MIX VEG PARATHA(SPCL', 'PARATHA', 40),
(67, 67, 'MOOLI PARATHA(SPCL)', 'PARATHA', 30),
(68, 68, 'GOOBHI PARATHA(SPCL)', 'PARATHA', 35),
(69, 69, 'KADHI RICE', 'COMBO', 35),
(70, 70, 'RAJMA RICE', 'COMBO', 35),
(71, 71, 'CHOLA RICE', 'COMBO', 35),
(72, 72, 'CHOLA BHATURA', 'COMBO', 45),
(73, 73, 'EGG CURRY WITH RUMAL', 'COMBO', 70),
(74, 74, 'SHAHI PANEER WITH RU', 'COMBO', 70),
(75, 75, 'RUMALI ROTI WITH CHA', 'COMBO', 65),
(76, 76, 'FRIED RICE MANCHURIA', 'COMBO', 55),
(77, 77, 'SAMOSA', 'SNACKS', 10),
(78, 78, 'SAMOSA CHOLA', 'SNACKS', 24),
(79, 79, 'PIZZA PATTIES', 'SNACKS', 25),
(80, 80, 'PANEER PATTIES', 'SNACKS', 20),
(81, 81, 'ALLU PATTIES', 'SNACKS', 15),
(82, 82, 'BREAD PAKODA', 'SNACKS', 12),
(83, 83, 'FRENCH FRY', 'SNACKS', 35),
(84, 84, 'VEG MAGGIE', 'SNACKS', 35),
(85, 85, 'EGG MAGGIE', 'SNACKS', 45),
(86, 86, 'MAGGIE PLAIN', 'SNACKS', 30),
(87, 87, 'PASTA', 'SNACKS', 30),
(88, 88, 'SMILES', 'SNACKS', 35),
(89, 89, 'VMACCAN VEGGIE NUGGE', 'SNACKS', 35),
(90, 90, 'MACCAN VEGGIE FINGER', 'SNACKS', 35),
(91, 91, 'MACCAN MASALA FRIES', 'SNACKS', 35),
(92, 92, 'VEG CUTLET', 'SNACKS', 15),
(93, 93, 'PANEER BREAD PAKODA', 'SNACKS', 18),
(94, 94, 'BREAD ROLL', 'SNACKS', 12),
(95, 95, 'MACCAN POTATO POPS', 'SNACKS', 35),
(96, 96, 'BREAD OMLET', 'SNACKS', 35),
(97, 97, 'PAO BHAJI', 'SNACKS', 42),
(98, 98, 'GULAB JAMUN', 'SNACKS', 15),
(99, 99, 'MACRONI', 'SNACKS', 35);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `uid` int(10) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_records`
--

CREATE TABLE `new_records` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `submit_on` datetime NOT NULL,
  `status` varchar(6) NOT NULL,
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_records`
--

INSERT INTO `new_records` (`id`, `user_id`, `submit_on`, `status`, `comments`) VALUES
(1, '1', '0000-00-00 00:00:00', 'ACCEPT', 'ACCEPTED'),
(2, '1', '2018-03-12 20:54:07', 'ACCEPT', 'ACCEPTED'),
(3, '1', '2018-03-12 21:10:00', 'ACCEPT', 'ACCEPTED'),
(4, '4', '2018-03-12 21:14:24', 'ACCEPT', 'ACCEPTED'),
(5, '2', '2018-03-12 21:15:42', 'ACCEPT', 'ACCEPTED'),
(6, '2', '2018-03-13 08:15:21', 'ACCEPT', 'ACCEPTED'),
(7, '4', '2018-03-13 08:36:54', 'ACCEPT', 'ACCEPTED'),
(8, '3', '2018-03-14 00:45:49', 'ACCEPT', 'ACCEPTED'),
(9, '5', '2018-03-14 00:47:53', 'ACCEPT', 'ACCEPTED'),
(10, '6', '2018-03-14 01:01:46', 'REJECT', 'REJECTED'),
(11, '6', '2018-03-14 01:02:08', 'REJECT', 'REJECTED'),
(12, '2', '2018-03-15 17:04:50', 'ACCEPT', 'ACCEPTED'),
(13, '5', '2018-03-15 17:05:00', 'REJECT', 'REJECTED'),
(16, '3', '2018-03-15 17:34:16', 'ACCEPT', 'ACCEPTED'),
(17, '6', '2018-03-15 21:36:39', 'ACCEPT', 'ACCEPTED'),
(18, '2', '2018-03-16 06:45:30', 'ACCEPT', 'ACCEPTED'),
(19, '2', '2018-03-16 06:46:54', 'ACCEPT', 'ACCEPTED'),
(20, '2', '2018-03-16 07:01:21', 'ACCEPT', 'ACCEPTED');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `submitby` varchar(255) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `info`, `submitby`, `type`) VALUES
(1, 'commencement of semester form 15-1-2018', 'harsh.rawat', 'institute'),
(2, 'CT-1 form 5-2-2018', 'harsh.rawat', 'institute'),
(3, 'CT-2 from 19-3-2018', 'prartishtha', 'institute'),
(4, 'departmental level screening on 11 oct 2018', 'harsh.rawat', 'departmental'),
(5, 'quiz to be held on 1 nov 2018', 'harsh.rawat', 'departmental');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `msg`, `name`, `date`) VALUES
(62, 'Hello from Arun\r\n', 'Arun87', NULL),
(63, 'hello\r\n', 'rishav', NULL),
(64, 'Hey Rishav', 'rishav', NULL),
(65, 'Hello', 'rishav', NULL),
(66, 'hii\r\n', 'rishav', NULL),
(67, '', 'rishav', NULL),
(68, 'Message by Rishav', 'rishav', NULL),
(69, 'okay', 'rishav', NULL),
(70, 'Hey', 'rishav', NULL),
(71, '', 'rishav', NULL),
(72, '', 'rishav', NULL),
(73, '', 'rishav', NULL),
(74, '', 'rishav', NULL),
(75, '', 'rishav', NULL),
(76, '', 'rishav', NULL),
(77, '', 'rishav', NULL),
(78, 'ejnve', 'rishav', NULL),
(79, 'hey\r\n', 'rishav', NULL),
(80, 'okay sir', 'rishav', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `userid` int(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s_chat_messages`
--

CREATE TABLE `s_chat_messages` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `when` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `user`
-- (See below for the actual view)
--
CREATE TABLE `user` (
`id` int(255)
,`username` varchar(255)
,`password` varchar(255)
,`isadmin` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isadmin` int(1) NOT NULL DEFAULT '0',
  `prof` int(1) NOT NULL,
  `details` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `isadmin`, `prof`, `details`) VALUES
(1, 'saumya', '50e71b0721a330c4f7df4ab61a1767da', 0, 0, 1),
(2, 'harsh.rawat', 'f6a3266ead53c628db1b126064854c85', 1, 0, 1),
(3, 'pratishtha', '44b857c3af48919b1f269da8b2b1fcb9', 1, 0, 1),
(4, 'vikal', '44fbcb676c56fb146e9f4f0226d71195', 0, 0, 1),
(5, 'vikas', 'd6d7705392bc7af633328bea8c4c6904', 0, 0, 1),
(6, 'harsh.kumar', '3d58ce20fe802793e0b221905baa60b3', 0, 0, 1),
(8, 'pallavi', 'cea099a8f5ac3e289e317d461beb9261', 1, 0, 1),
(9, 'priya', 'f77648e5d3e027222417fcba0f7291cb', 1, 0, 1),
(10, 'anshika', '8ed7dfcff4e017e4f61d36bbbf1f08bc', 1, 0, 1),
(11, 'Arun87', 'E3F31D1AC8AEF7B82E47D603219CD362', 1, 0, 1),
(13, 'alex54', '$2y$10$BgWtE0rnsIwJ3Qcj9ifw3O2Hm8qPNZ6PE2YbNWe8M/WRgJiB8vi3.', 0, 0, 1),
(14, 'pratap87', '$2y$10$Kq5S0v.7yYVDIl/7DVgJNemlPOlLojyG8PEWFFB0UJe7jme2SmYrO', 0, 0, 0),
(16, 'yu78', '827ccb0eea8a706c4c34a16891f84e7b', 0, 0, 1),
(17, '545', '827ccb0eea8a706c4c34a16891f84e7b', 0, 0, 1),
(18, 'ege87', '202cb962ac59075b964b07152d234b70', 0, 0, 0),
(19, 'rohit45', '827ccb0eea8a706c4c34a16891f84e7b', 0, 0, 1),
(20, 'shiv99', '827ccb0eea8a706c4c34a16891f84e7b', 0, 1, 1),
(21, 'rishav', 'B4A7927A2C39E8E653247E129314420E', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `session` varchar(9) NOT NULL,
  `sem` int(1) NOT NULL,
  `sec` varchar(1) NOT NULL,
  `year` int(1) NOT NULL,
  `course` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `addr` varchar(255) NOT NULL,
  `mobno` varchar(10) NOT NULL,
  `rollno` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ishosteller` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `fname`, `session`, `sem`, `sec`, `year`, `course`, `branch`, `dob`, `addr`, `mobno`, `rollno`, `email`, `ishosteller`) VALUES
(1, 'SAUMYA MISHRA', '--', '2016-2020', 4, 'B', 2, 'B.Tech', 'IT', '2016-12-01', 'KIET HOSTEL', '7895899384', '1602913094', 'saumya.1613091@kiet.edu', 1),
(2, 'HARSH RAWAT', '--', '2016-2020', 4, 'B', 2, 'B.Tech', 'EC', '1997-02-06', 'VAISHALI GZB', '9958369644', '1602931066', 'harsh.1631066@kiet.edu', 0),
(3, 'PRATISHTHA TIWARI', '--', '2016-2020', 4, 'B', 2, 'B.Tech', 'IT', '2016-12-01', 'KIET HOSTEL', '7017053841', '1602931073', 'pratishtha.1613074@kiet.edu', 1),
(4, 'VIKAL RATHI', '--', '2016-2020', 4, 'B', 2, 'B.Tech', 'IT', '2016-12-01', 'KIET HOSTEL', '8791905048', '1602931123', 'vikal.1631123@kiet.edu', 1),
(5, 'VIKAS GAUTAM', '--', '2016-2020', 4, 'C', 2, 'B.Tech', 'ME', '1997-02-06', 'MADHOPURA GZB', '7503995286', '1602940179', 'harsh.1631066@kiet.edu', 0),
(6, 'HARSH KUMAR', '--', '2016-2020', 4, 'A', 2, 'B.Tech', 'ME', '1997-02-06', 'MURADNAGAR', '7017478598', '1602940041', 'harsh.1631066@kiet.edu', 0),
(8, 'PALLAVI', '--', '2017-2021', 3, 'B', 2, 'B.Tech', 'IT', '1999-04-20', 'MURADNAGAR', '--', '1702931089', '--', 1),
(9, 'PRIYA', '--', '2017-2021', 3, 'B', 2, 'B.Tech', 'IT', '1999-03-29', 'MURADNAGAR', '--', '1702913080', '--', 1),
(10, 'ANSHIKA', '--', '2017-2021', 3, 'A', 2, 'B.Tech', 'IT', '1998-12-18', 'MURADNAGAR', '--', '1702913026', '--', 1),
(11, 'ARUN CHAUHAN', '--', '2017-2021', 3, 'A', 2, 'B.Tech', 'CSE', '1999-01-13', 'MURADNAGAR', '9694074361', '1702910042', 'arun.1721cs1044@gmail.com', 0),
(13, 'arun', '--', '2017-2021', 3, 'a', 2018, 'btech', 'cse', '0000-00-00', 'vaishali', '9868457722', '21', 'abc@gmail.com', 0),
(16, 'shashank', '--', '2017 -202', 3, 'a', 2, 'btech', 'CSE', '0000-00-00', 'VIsali metro station', '9694074361', '1702910032', 'shashankrathore09071999@gmail.com', 0),
(17, 'rajat', '--', '2017 -202', 3, 'a', 2, 'btech', 'CSE', '1999-01-01', 'VIsali metro station', '9694074361', '1702910032', 'rishavsingh107@gamil.com', 0),
(19, 'ROHIT', '--', '2017 -202', 3, 'a', 2, 'btech', 'CSE', '2000-01-01', 'VIsali metro station', '9694074361', '1702910032', 'apschauhan60@gmail.com', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_infos`
-- (See below for the actual view)
--
CREATE TABLE `user_infos` (
`id` int(255)
,`name` varchar(255)
,`fname` varchar(255)
,`session` varchar(9)
,`sem` int(1)
,`sec` varchar(1)
,`year` int(1)
,`course` varchar(10)
,`branch` varchar(10)
,`dob` date
,`addr` varchar(255)
,`mobno` varchar(10)
,`rollno` varchar(10)
,`email` varchar(255)
,`ishosteller` int(1)
);

-- --------------------------------------------------------

--
-- Structure for view `user`
--
DROP TABLE IF EXISTS `user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user`  AS  select `users`.`id` AS `id`,`users`.`username` AS `username`,`users`.`password` AS `password`,`users`.`isadmin` AS `isadmin` from `users` ;

-- --------------------------------------------------------

--
-- Structure for view `user_infos`
--
DROP TABLE IF EXISTS `user_infos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_infos`  AS  select `user_info`.`id` AS `id`,`user_info`.`name` AS `name`,`user_info`.`fname` AS `fname`,`user_info`.`session` AS `session`,`user_info`.`sem` AS `sem`,`user_info`.`sec` AS `sec`,`user_info`.`year` AS `year`,`user_info`.`course` AS `course`,`user_info`.`branch` AS `branch`,`user_info`.`dob` AS `dob`,`user_info`.`addr` AS `addr`,`user_info`.`mobno` AS `mobno`,`user_info`.`rollno` AS `rollno`,`user_info`.`email` AS `email`,`user_info`.`ishosteller` AS `ishosteller` from `user_info` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edu`
--
ALTER TABLE `edu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu10`
--
ALTER TABLE `edu10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu12`
--
ALTER TABLE `edu12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heads`
--
ALTER TABLE `heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hosteller_info`
--
ALTER TABLE `hosteller_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `new_records`
--
ALTER TABLE `new_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `s_chat_messages`
--
ALTER TABLE `s_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `heads`
--
ALTER TABLE `heads`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_records`
--
ALTER TABLE `new_records`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `s_chat_messages`
--
ALTER TABLE `s_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `edu`
--
ALTER TABLE `edu`
  ADD CONSTRAINT `edu_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `edu12`
--
ALTER TABLE `edu12`
  ADD CONSTRAINT `edu12_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hod`
--
ALTER TABLE `hod`
  ADD CONSTRAINT `hod_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hosteller_info`
--
ALTER TABLE `hosteller_info`
  ADD CONSTRAINT `hosteller_info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
