-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2025 at 04:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(2, 'jasmine', 'payalmahey152@gmail.com', '$2y$10$QthIlxAAr1bCdDi38Pu.OO3uFboY3cQE.WffzHqgLwgqdRReKiym6', 'user'),
(3, 'riya', 'kashishb1905@gmail.com', '$2y$10$Uoi5j8tO/gEsauTkaYQXu.8wjEYO7583aRwOyZ/kEaa7FoBBHPfjC', 'user'),
(4, 'payal', 'payalpayal80818@gmail.com', '$2y$10$HP1KG.zE3RRNZ09eArOejeqnqi8ZWt2/liIYOgAiBNjFYIVhht63.', 'user'),
(5, 'khushi', 'kashshb1905@gmail.com', '$2y$10$OFnOLu.4D41MKr.rm/olJuaL3HLxGZS9IXh9WKn/DI.MHcrnEjdTm', 'user'),
(6, 'diksha', 'Khushimehmi05@gmail.com', '$2y$10$GJsFLX7RTDTj9CssHRcxr.GXUTcAjtH7ljk4mNMl5tyeKKNxicpmC', 'user'),
(7, 'gurdeep', 'gurdeep50@gmail.com', '$2y$10$yxDNv3RyV590vKzSlcJdbeMBG82gb2L/M64iUEyQjCdCXppRnsGge', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
