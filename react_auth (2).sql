-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2025 at 11:56 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `subject` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_important` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `subject`, `name`, `created_at`, `updated_at`, `is_important`) VALUES
(38, 'Capstone ', 'Kaya pa ba?', 'General', '', '2025-05-18 03:38:38', '2025-05-30 02:54:55', 0),
(39, 'Cholo', 'Handsome Men', 'General', '', '2025-05-30 02:55:40', '2025-05-30 02:55:40', 0),
(41, 'tung tung tung sahur', 'Tralalelu Tralala', 'General', '1', '2025-05-30 03:50:41', '2025-05-30 11:35:57', 1),
(43, 'Pogi Si Cholo', '5 Stars\n gfgbvfg bgbb', 'General', 'Cholo', '2025-05-30 04:07:45', '2025-05-30 05:33:19', 1),
(49, 'Hey bro', 'What is that bro?\n', 'General', 'Cholo', '2025-05-30 11:34:53', '2025-05-30 11:34:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `profile_image`) VALUES
(1, '', '', '$2y$10$JrLuiYkEKNmRr8V886n0kOP32.yjQTHoMf5CJgFPKSC7oOt5EMoPq', '2025-05-17 15:17:39', NULL),
(2, ' Angelo ', 'bon@gmail.com', '$2y$10$/3i8s36nDgJK/Rj149fz..RMKtIjUmCZp8DxRIx1AGEMzUmZf/5uS', '2025-05-17 15:17:39', NULL),
(3, '1', '1@gmail.com', '$2y$10$iB79LhQ7po/eRbUAhVexS.hJIymtU.1ZEmheckoChj.IjsML.DjOW', '2025-05-18 03:15:24', 'uploads/6839433266d00_2017_Honda_Rebel_500_CRF250_Rally_CRF250L_24 - Copy.jpg'),
(4, 'Cholo', 'cholo@gmail.com', '$2y$10$M/kRMDjjfUYirglDi8SVgueDsBNIBgUBJN65j89MIznz6kyWmeMzu', '2025-05-30 03:18:30', 'uploads/683997b909f7b_Swordsman.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
