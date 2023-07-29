-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 03:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_table`
--

CREATE TABLE `exam_table` (
  `exam_id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_description` varchar(1000) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `total_questions` int(100) NOT NULL,
  `time_limit` time NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE `question_bank` (
  `question_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `difficulty` varchar(20) NOT NULL,
  `mark` int(100) NOT NULL,
  `question_title` varchar(100) NOT NULL,
  `question` text NOT NULL,
  `file_question` varchar(255) NOT NULL,
  `answerA` text NOT NULL,
  `file_answerA` varchar(255) NOT NULL,
  `answerB` text NOT NULL,
  `file_answerB` varchar(255) NOT NULL,
  `answerC` text NOT NULL,
  `file_answerC` varchar(255) NOT NULL,
  `answerD` text NOT NULL,
  `file_answerD` varchar(255) NOT NULL,
  `correct_answer` char(10) NOT NULL,
  `feedback` text NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`question_id`, `subject`, `topic`, `difficulty`, `mark`, `question_title`, `question`, `file_question`, `answerA`, `file_answerA`, `answerB`, `file_answerB`, `answerC`, `file_answerC`, `answerD`, `file_answerD`, `correct_answer`, `feedback`, `date_created`) VALUES
(9, 'afsasf', 'Reading', 'Easy', 2, 'Reading Skills', '<p>aaaaaaaaaaaaaaa</p>', '', '<p>aadddddddddddddd</p>', '', '<p>ssssssssssd</p>', '', '<p>sssfffffffff</p>', '', '<p>ffrfrfrfrfrfrfrfrfrff</p>', '', 'a', '<p>gggggggggr</p>', '2023-07-27'),
(10, 'English', 'Reading', 'Easy', 2, 'What is Lorem Ipsum?', '<p>aaaaaaaa</p>', '', '<p>dddddddddd</p>', '', '<p>cfffffffff</p>', '', '<p>cccccccc</p>', '', '<p>ffdddddd</p>', '', 'a', '<p>gggggggggg</p>', '2023-07-27'),
(12, 'English', 'Listening', 'Average', 52, 'Reading Skills', '', 'upload/chop.png', '<p>aaaaaaaaaa</p>', '', '<p>sssssss</p>', '', '<p>cccccccc</p>', '', '<p>ddddddddd</p>', '', 'b', '<p>daaaaaaaaaaad</p>', '2023-07-27'),
(14, 'English', 'Reading', 'Easy', 2, 'Sample Image', '<p><i><strong>DDDDDDDDDDA</strong></i></p>', '', '<p>fffffffffff</p>', '', '<p>fggggggggg</p>', '', '<h4><i>ggdsdsdsdsdsdsdsg</i></h4>', '', '<blockquote><p><strong>gggggggggggs</strong></p></blockquote>', '', 'b', '<p><strong>sgdgsgsdgsdg</strong></p>', '2023-07-28'),
(15, 'afsasf', 'Listening', 'Average', 6, 'Sample Image', '<p>3</p>', 'upload/Signature.JPG', '<p>k\'op</p>', '', '<p>2</p>', '', '<p>op\'</p>', '', '<p>o\'</p>', '', 'b', '<p>jpo\'</p>', '2023-07-28'),
(16, 'English', 'Reading', 'Average', 2, 'egwegaw', '<p>gawegaweg</p>', '', '<p>awegaweg</p>', '', '<p>awegawg</p>', '', '<p>awgaw</p>', '', '<p>gwaegawege</p>', '', 'a', '<p>awegawg</p>', '2023-07-28'),
(17, 'English', 'Reading', 'Difficult', 2, 'waegawe', '<p>awegawgg</p>', '', '<p>awegaw</p>', '', '<p>gawegaw</p>', '', '<p>awegawege</p>', '', '<p>gawegwa</p>', '', 'a', '<p>gawegwaee</p>', '2023-07-28'),
(18, 'English', 'Reading', 'Difficult', 2, 'waegaweg', '<p>awegawe</p>', '', '<p>awegawe</p>', '', '<p>waegg</p>', '', '<p>aweg</p>', '', '<p>waeg</p>', '', 'b', '<p>waeg</p>', '2023-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subj_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `lecturer` varchar(50) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subj_id`, `subject`, `lecturer`, `date_created`, `status`) VALUES
(34, 'Hekasi', 'Miles Aytona', '2023-07-24', 'Active'),
(35, 'English', 'Miles Aytona', '2023-07-24', 'Active'),
(37, 'Math', 'JR Aytona', '2023-07-26', 'Active'),
(38, 'Math', 'JR Aytona', '2023-07-27', 'Active'),
(39, 'dasdasda', 'JR Aytona', '2023-07-28', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic`, `subject`, `date_created`) VALUES
(6, 'Reading', 'English', '2023-07-23'),
(11, 'Addition', 'Math', '2023-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` text DEFAULT NULL,
  `date_created` date NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `lastname`, `firstname`, `username`, `email`, `password`, `role`, `date_created`, `status`) VALUES
(16, 'Aytona', 'Miles', 'AAAAAAAAA', 'm.asdfsegt@gmail.com', '123456', 'Teacher', '2023-07-24', NULL),
(17, 'Miles ', 'ghghh', 'admin', 'admin@gmail.com', '123456', 'Teacher', '2023-07-24', NULL),
(18, 'ytyefaeg', 'Aytona', 'teacger', 'teache@gmail.com', '123456', 'Teacher', '2023-07-24', NULL),
(19, 'awsdad', 'ghghh', 'cblake@sample.com', 'mmmvatrixie.a@gmail.com', '123456', 'Student', '2023-07-24', NULL),
(20, 'Miles ', 'Aytona', 'm.aytona', 'm.aytona@gmail.com', '123456', 'Student', '2023-07-24', NULL),
(21, 'Miles ', 'ghghh', '123546', 'admin@gmail.com', '123456', 'Admin', '2023-07-28', NULL),
(22, 'Miles ', 'ghghh', 'adminasdad', 'admin@gmail.com', '123456', 'Admin', '2023-07-28', NULL),
(23, 'Aytona', 'Miles', 'AAAAAAAAA', 'm@gmail.com', '123456', 'Admin', '2023-07-28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_table`
--
ALTER TABLE `exam_table`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subj_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_table`
--
ALTER TABLE `exam_table`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
