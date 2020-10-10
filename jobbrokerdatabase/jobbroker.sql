-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2020 at 01:48 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobbroker`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `otp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `firstname`, `lastname`, `dob`, `gender`, `address`, `password`, `phone`, `otp`) VALUES
('sharmakaran881@gmail.com', 'karan', 'sharma', '2019-03-24', 'Male', 'waterloo, station', '123', 8557000951, ''),
('tui.bradbrook@weltec.ac.nz', 'Tui ', 'Bradbrook ', '2020-12-27', 'Male', 'weltec petone', 'tui', 6427440867, 'IIE58Q');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`) VALUES
(12, 'Baking'),
(13, 'Electricial'),
(14, 'Automotive'),
(15, 'Makeup in Skin Care'),
(16, 'Cookery'),
(17, 'Plumbing'),
(18, 'Barbar'),
(19, 'Collision Repair'),
(20, 'Machinial Engineering'),
(21, 'Commercial Road Transfer(transport)'),
(22, 'Hair Dressing'),
(23, 'programmer'),
(24, 'construction');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(200) NOT NULL,
  `e_phone` bigint(20) NOT NULL,
  `e_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`e_id`, `e_name`, `e_phone`, `e_email`) VALUES
(6, 'Dow Jones', 2345678534, 'dawjones@gmail.com'),
(7, 'Shuham', 2334456676, 'shuham@gmail.com'),
(8, 'Datacom', 3456789645, 'datacom@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `joblist`
--

CREATE TABLE `joblist` (
  `j_id` int(11) NOT NULL,
  `j_name` varchar(200) NOT NULL,
  `j_location` text NOT NULL,
  `j_startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `e_id` int(11) NOT NULL,
  `sc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joblist`
--

INSERT INTO `joblist` (`j_id`, `j_name`, `j_location`, `j_startdate`, `enddate`, `status`, `e_id`, `sc_id`) VALUES
(9, 'programmer', 'wellington', '2020-10-24', '2020-10-30', 'Closed', 6, 27),
(11, 'Datacom', 'wellington city', '2020-10-19', '2020-10-06', 'Active', 8, 27);

-- --------------------------------------------------------

--
-- Table structure for table `job_placement`
--

CREATE TABLE `job_placement` (
  `jp_id` int(11) NOT NULL,
  `jl_id` int(11) NOT NULL,
  `si_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_placement`
--

INSERT INTO `job_placement` (`jp_id`, `jl_id`, `si_id`, `date`) VALUES
(6, 9, 6, '2020-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `tertiaryinstitute` varchar(500) NOT NULL,
  `coursestarted` date NOT NULL,
  `coursecompleted` date NOT NULL,
  `coursecode` varchar(200) NOT NULL,
  `coursename` varchar(500) NOT NULL,
  `qualificationtitle` varchar(200) NOT NULL,
  `enrolmentstatus` varchar(200) NOT NULL,
  `cv` text NOT NULL,
  `skillset` text NOT NULL,
  `photo` text NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  `ethnicity` varchar(200) NOT NULL,
  `licensetype` varchar(200) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `firstname`, `lastname`, `email`, `mobile`, `gender`, `dob`, `tertiaryinstitute`, `coursestarted`, `coursecompleted`, `coursecode`, `coursename`, `qualificationtitle`, `enrolmentstatus`, `cv`, `skillset`, `photo`, `description`, `location`, `ethnicity`, `licensetype`, `otp`, `password`) VALUES
(6, 'karan', 'sharma', 'sharmakaran881@gmail.com', 2108636742, 'Male', '1995-10-24', 'Wellington Institute of Technology (WelTec), Petone Campus', '2020-03-02', '2020-11-02', 'IT5509', 'Graduate Diploma in the Information Technology ', 'level 7', 'Pursing', 'cv/college cv.docx', 'Good in asp.net and php', 'profilepic/WIN_20200506_00_20_08_Pro.jpg', 'I know the html css, bootstarp, php and asp.net and ajax.', '122 A waterloo, lower hutt', 'Maori', 'Full License', '', '123'),
(7, 'jindpal ', 'Singh', 'jindpalsingh@gmail.com', 3456735788, 'Male', '2020-10-20', 'None of Above', '0000-00-00', '0000-00-00', '', '', '', '', 'cv/shubham.docx', '', '', '', 'thhyh5JUJWJAHwH', 'Asian', 'None of Above', '', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student_interest`
--

CREATE TABLE `student_interest` (
  `si_id` int(11) NOT NULL,
  `subcatid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_interest`
--

INSERT INTO `student_interest` (`si_id`, `subcatid`, `studentid`) VALUES
(23, 27, 6);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `sc_id` int(11) NOT NULL,
  `sc_name` varchar(200) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`sc_id`, `sc_name`, `c_id`) VALUES
(16, 'Baking', 12),
(17, 'Electricial', 13),
(18, 'Automotive', 14),
(19, 'Makeup in Skin Care ', 15),
(20, 'Cookery', 16),
(21, 'Plumbing', 17),
(22, 'Barbar', 18),
(23, 'Collision Repair', 19),
(24, 'Machinal Engineering', 20),
(25, 'Commercial Road (transport)', 21),
(26, 'Hair Dressing', 22),
(27, 'java', 23),
(29, 'construction', 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `joblist`
--
ALTER TABLE `joblist`
  ADD PRIMARY KEY (`j_id`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `sc_id` (`sc_id`);

--
-- Indexes for table `job_placement`
--
ALTER TABLE `job_placement`
  ADD PRIMARY KEY (`jp_id`),
  ADD KEY `jl_id` (`jl_id`),
  ADD KEY `si_id` (`si_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `student_interest`
--
ALTER TABLE `student_interest`
  ADD PRIMARY KEY (`si_id`),
  ADD KEY `sucatid` (`subcatid`),
  ADD KEY `studentid` (`studentid`),
  ADD KEY `subcatid` (`subcatid`),
  ADD KEY `studentid_2` (`studentid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `c_id` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `joblist`
--
ALTER TABLE `joblist`
  MODIFY `j_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_placement`
--
ALTER TABLE `job_placement`
  MODIFY `jp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_interest`
--
ALTER TABLE `student_interest`
  MODIFY `si_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `joblist`
--
ALTER TABLE `joblist`
  ADD CONSTRAINT `joblist_ibfk_1` FOREIGN KEY (`sc_id`) REFERENCES `subcategory` (`sc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `joblist_ibfk_2` FOREIGN KEY (`e_id`) REFERENCES `employer` (`e_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_placement`
--
ALTER TABLE `job_placement`
  ADD CONSTRAINT `job_placement_ibfk_1` FOREIGN KEY (`jl_id`) REFERENCES `joblist` (`j_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_placement_ibfk_2` FOREIGN KEY (`si_id`) REFERENCES `student` (`studentid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_interest`
--
ALTER TABLE `student_interest`
  ADD CONSTRAINT `student_interest_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_interest_ibfk_2` FOREIGN KEY (`subcatid`) REFERENCES `subcategory` (`sc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
