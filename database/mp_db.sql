-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 10:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `music_list`
--

CREATE TABLE `music_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `audio_path` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music_list`
--

INSERT INTO `music_list` (`id`, `title`, `description`, `audio_path`, `image_path`, `date_created`, `date_updated`) VALUES
(10, 'John Wayne - Cigarettes After Sex', 'Recorded December 2015 in Brooklyn, NY. \r\n Written by Greg Gonzalez.\r\n Released on Partisan Records on June 9th, 2017.', './audio/John_Wayne_-_Cigarettes_After_Sex.mp3?v=1654845588', './images/Cigarettes_After_Sex.jpg?v=1654845588', '2022-06-10 14:19:48', '2022-06-10 14:55:55'),
(11, 'Wherever I May Roam - J Balvin', 'From Call Of Duty Modern Warfare 2 (2022)', './audio/Wherever_I_May_Roam_-_J_Balvin.mp3?v=1654846072', './images/Call_Of_Duty_Modern_Warfare_2.jpg?v=1654846072', '2022-06-10 14:27:52', '2022-06-10 14:27:52'),
(12, 'Post Malone - Cooped Up ft. Roddy Ricch', 'From Post Malone with love', './audio/Post_Malone_-_Cooped_Up_ft._Roddy_Ricch.mp3?v=1654846176', './images/Cooped_Up.jpg?v=1654846176', '2022-06-10 14:29:36', '2022-06-10 14:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'tan', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music_list`
--
ALTER TABLE `music_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music_list`
--
ALTER TABLE `music_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
