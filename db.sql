-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 08:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `email`, `code`, `expire`) VALUES
(1, 'arastu.dixit13@gmail.com', '86167', 1681220746),
(2, 'arastu.dixit13@gmail.com', '58376', 1681220786);

-- --------------------------------------------------------

--
-- Table structure for table `coreui`
--

CREATE TABLE `coreui` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreui`
--

INSERT INTO `coreui` (`id`, `username`, `email`, `password`) VALUES
(1, 'Arastu Dixit', 'arastu.dixit13@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `coreui_users`
--

CREATE TABLE `coreui_users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `usage` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coreui_users`
--

INSERT INTO `coreui_users` (`id`, `user`, `country`, `usage`, `payment`, `activity`) VALUES
(1, 'Yiorgos Avraamu', 'America', 'Registered: Jan 1, 2020', '50%', 'Last login 10 sec ago'),
(2, 'arastu dixit', 'canada', 'efo', 'wef', 'zxj'),
(5, 'arastu', 'india', 'ef', 'done', 'zxj'),
(6, 'rakesh', 'india', 'one', 'we', 'no'),
(7, 'sehwag', 'canada', 'ef', 'no', 'ok'),
(8, 'sehwag', 'pak', 'efo', 'done', 'zxj'),
(9, 'sehwag', 'canada', 'two', 'not done', 'cricket'),
(10, '', '', '', '', ''),
(11, '', '', '', '', ''),
(12, '', '', '', '', ''),
(13, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `status`) VALUES
('arastu.dixit13@gmail.com', '$2y$10$hg2/a65ZR05k/ioRK7nxQevUXzlHjcIn/UAgLBZs9bC.wC5mCiKni', 0),
('arastu.aero2astro@gmail.com', '$2y$10$jRoM7Q0dgb7czpnR4Aih0ePWCNumnR0u5pv7jVyOaS2acZ1HlKIKu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE `mailbox` (
  `id` int(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `attachment` varbinary(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mailbox`
--

INSERT INTO `mailbox` (`id`, `from`, `to`, `subject`, `message`, `attachment`, `status`) VALUES
(20, '[value-2]', '[value-3]', '[value-4]', '[value-5]', 0x5b76616c75652d365d, '[value-7]');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`, `photo`) VALUES
(6, 'Arastu Dixit', 'arastu.dixit@gmail.com', '1234', ''),
(7, 'rakesh', 'rakesh@gmail.com', '4321', ''),
(8, 'sachin', 'sachin@gmail.com', '6789', 0x313637373134393231314172617374752044697869742e6a7067),
(9, 'admin', 'de@gmail.com', '3456', 0x313637373234313738344172617374752044697869742e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `gender`, `password`, `pic`) VALUES
(1, 'arastu', 'arastu.dixit13@gmail.com', 'Male', '1234', '1676972106Arastu Dixit.jpg'),
(2, 'rakesh', 'rakesh@gmail.com', 'Male', '4321', '1677044635Arastu Dixit.jpg'),
(3, 'aristotle', 'aristotle@gmail.com', 'Male', '1234', '1681040905Arastu Dixit.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `date`) VALUES
(1, 'email@gmail.com', 'password', '2021-07-10 19:40:06'),
(2, 'mary@yahoo.com', 'cool', '2021-07-10 19:40:06'),
(3, 'arastu.dixit13@gmail.com', '1234', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `expire` (`expire`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `coreui`
--
ALTER TABLE `coreui`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coreui_users`
--
ALTER TABLE `coreui_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coreui`
--
ALTER TABLE `coreui`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coreui_users`
--
ALTER TABLE `coreui_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
