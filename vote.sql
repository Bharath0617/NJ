-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2019 at 07:09 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `position`, `firstname`, `lastname`, `year_level`, `gender`, `img`, `party`) VALUES
(1, 'President', 'Arif', 'Uddin', '3rd year', 'Male', 'upload/163.jpg', 'DBM'),
(2, 'Vice President', 'Jeswanth', 'Chowdary', '3rd year', 'Male', 'upload/2.jpg', 'PHP');


-- --------------------------------------------------------

--
-- Table structure for table `ids`
--

CREATE TABLE `ids` (
  `id_number` varchar(100) NOT NULL,
  `names` varchar(225) NOT NULL,
  `started` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ids`
--

INSERT INTO `ids` (`id_number`, `names`, `started`) VALUES
('WT01', 'I.srikanth', '2022-12-03'),
('WT02', 'Sk.Sadiq','2022-12-03'),
('WT03', 'G.Kalyani','2022-12-03'),
('WT04', 'G.Madhavi','2022-12-93'),
('WT05', 'M.Samhitha', '2022-12-03'),
('WT06', 'M.Sravani', '2022-12-03'),
('WT07', 'N.Asritha', '2022-12-03'),
('WT08', 'S.Satish', '2022-12-03'),
('WT09', 'Ch.Bharath', '2022-12-03'),
('WT10', 'M.Pavansai', '2022-12-03'),
('WT11', 'P.Vinodh', '2022-12-03'),
('WT12', 'G.Dilip', '2022-12-03'),
('WT13', 'K.Mowlika', '2022-12-03'),
('WT14', 'M.Lovakumari', '2022-12-03'),
('WT15', 'G.Haneesha', '2022-12-03'),
('WT16', 'L.Siva', '2022-12-03'),
('WT17', 'Sk.Masthan', '2022-12-03'),
('WT18', 'Ch.Vineeth', '2022-12-03'),
('WT19', 'Sk.Zakir', '2022-12-03'),
('WT20', 'S.Jason', '2022-12-03'),
('WT21', 'M.Manoj', '2022-12-03'),
('WT22', 'M.Snehitha', '2022-12-03'),
('WT23', 'K.Manasa', '2022-12-03'),
('WT24', 'G.Omkar', '2022-12-03'),
('WT25', 'M.Suresh', '2022-12-03'),
('WT26', 'P.Sujith', '2022-12-03'),
('WT27', 'B.Jeswanth', '2022-12-03'),
('WT28', 'V.Sairam', '2022-12-03'),
('WT29', 'B.Uday', '2022-12-03'),
('WT30', 'T.Vignesh', '2022-12-03'),
('WT31', 'P.Neeraj', '2022-12-03'),
('WT32', 'P.Swaroop', '2022-12-03'),
('WT33', 'K.Ganesh', '2022-12-03'),
('WT34', 'K.Naveen', '2022-12-03'),
('WT35', 'N.Pratap', '2022-12-03'),
('WT36', 'T.Kishore', '2022-12-03'),
('Wt37', 'Sk.Hafeeza', '2022-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `user_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`user_id`, `username`, `login_time`) VALUES
(1, ' user', '2019-02-12 13:21:43'),
(2, ' user', '2019-02-12 13:37:32'),
(3, ' user', '2019-02-12 18:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(1, 'admin', 'admin', 'Charles', 'Kupa', 977112458, 'Kapiya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL DEFAULT '260',
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(4, 'user', 'user', 'C', 'Cat3', 253626, 'char@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(11) NOT NULL,
  `id_number` varchar(12) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `prog_study` varchar(10) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL DEFAULT 'Inactive',
  `date` date DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voters_id`, `id_number`, `firstname`, `lastname`, `gender`, `prog_study`, `year_level`, `status`, `account`, `date`, `password`) VALUES
(101, 'WT01', 'I', 'Srikanth', 'Male', 'Bvoc', ' 3rd Year', 'Unvoted', 'Active', '2022-12-03', '205402'),
(102, 'WT02', 'Sk', 'Sadiq', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205404'),
(103, 'WT03', 'G', 'Kalyani', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205405'),
(104, 'WT04', 'G', 'Madhavi', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205406'),
(105, 'WT05', 'M', 'Samhitha', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205407'),
(106, 'WT06', 'M', 'Sravani', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205408'),
(107, 'WT07', 'N', 'Asritha', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205409'),
(108, 'WT08', 'S', 'Satish', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205412'),
(109, 'WT09', 'Ch', 'Bharath', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205414'),
(110, 'WT10', 'M', 'PavanSai', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205415'),
(111, 'WT11', 'P', 'Vinodh', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205416'),
(112, 'WT12', 'G', 'Dilip' , 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205417'),
(113, 'WT13', 'K', 'Mowlika', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205418'),
(114, 'WT14', 'M', 'Lovakumari', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205420'),
(115, 'WT15', 'G.V', 'Haneesha', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205421'),
(116, 'WT16', 'L', 'Siva', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205423'),
(117, 'WT17', 'Sk', 'Masthansharif','Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205424'),
(118, 'WT18', 'Ch', 'Vineeth', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205425'),
(119, 'WT19', 'Sk', 'Zakirhussain', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205427'),
(120, 'WT20', 'S', 'Jason', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205429'),
(121, 'WT21', 'M', 'Manoj', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205430'),
(122, 'WT22', 'M', 'Snehitha', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205431'),
(123, 'WT23', 'K', 'Manasa', 'Female', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205432'),
(124, 'WT24', 'G', 'Omkar', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205433'),
(125, 'WT25', 'M', 'Suresh', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205434'),
(126, 'WT26', 'P', 'Sujithchandra', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205435'),
(127, 'WT27', 'B', 'Jeswanth', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205437'),
(128, 'WT28', 'V', 'Sairam', 'Male','Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205438'),
(129, 'WT29', 'B', 'Uday', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205439'),
(130, 'WT30', 'T', 'Vignesh', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205440'),
(131, 'WT31', 'P', 'Neeraj', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205442'),
(132, 'WT32', 'P', 'Swaroop', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205443'),
(133, 'WT33', 'K', 'Ganesh', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205446'),
(134, 'WT34', 'K', 'Naveen', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205447'),
(135, 'WT35', 'N', 'Pratap', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205448'),
(136, 'WT36', 'T', 'Kishore', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205449'),
(137, 'WT37', 'Sk', 'Hafeeza', 'Male', 'Bvoc', '3rd Year', 'Unvoted', 'Active', '2022-12-03', '205450');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(255) NOT NULL,
  `candidate_id` varchar(255) NOT NULL,
  `voters_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `candidate_id`, `voters_id`) VALUES
('1', '1', '101'),
('2', '2', '102'),
('3', '2', '103'),
('4', '1', '104'),
('5', '1', '105'),
('6', '1', '106'),
('7', '2', '107'),
('8', '2', '108'),
('9', '1', '109'),
('10', '1', '110'),
('11', '2', '111'),
('12', '2', '112'),
('13', '1', '113'),
('14', '2', '114'),
('15', '1', '115'),
('16', '1', '116'),
('17', '1', '117'),
('18', '2', '118'),
('19', '1', '119'),
('20', '1', '120'),
('21', '2', '121'),
('22', '2', '122'),
('23', '1', '123'),
('24', '1', '124'),
('25', '2', '125'),
('26', '1', '126'),
('27', '2', '127'),
('28', '1', '128'),
('29', '2', '129'),
('30', '1', '130'),
('31', '1', '131'),
('32', '2', '132'),
('33', '2', '133'),
('34', '2', '134'),
('35', '1', '135'),
('36', '1', '136'),
('37', '1', '137');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `ids`
--
ALTER TABLE `ids`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voters_id`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
