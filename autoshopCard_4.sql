-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2023 at 02:06 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoshopCard`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `engine_capacity` varchar(255) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `year_of_drop` date DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `engine_capacity`, `price`, `year_of_drop`, `description`) VALUES
(2, 'Крутая машина', '2241 cm2', 4500000, '2023-02-09', 'Балдежная машина, jвысокого класса, все малышки ваши'),
(3, 'Porshe', '5342 cm2', 12000000, '2012-04-20', 'любите борщ, тогда вам нужен новый порш'),
(4, 'Запорожец', '4:20 cm2', 20000, '1967-04-25', 'ну тут описание излишне - лучший выбор'),
(5, 'Такси максим', '777', 600, '2023-02-02', 'да, не машина, и что?\r\nэнивей дорогое такси'),
(8, 'hntyjtyjкупукп', '00456 yht', 4536345, '2023-02-14', 'ryhjtyj tyk hk yi yil urtnghnyn tu, tu, yitbngn tuktmt'),
(17, 'ппц', 'пукепук', 434, '2023-02-19', '1234 уеукцпе кпукп укпр ук');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_user` int NOT NULL,
  `id` int NOT NULL,
  `id_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_user`, `id`, `id_order`) VALUES
(33, 2, 32),
(33, 5, 33),
(37, 16, 41),
(35, 3, 42),
(35, 8, 43);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` int DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `full_name`, `login`, `email`, `password`, `avatar`, `status`) VALUES
(11, 'kkk', 'kkk', 'akakijvasugan0@gmail.com', 123, 'uploads/16758263893f0a4121f97ad15f2dd5ad5ad565fd522e02ea4ee1c6a3e313973a22e175a49e.jpg', 1),
(12, 'qqq', 'qqq', 'akakijvasugan0@gmail.com', 123, 'uploads/16758313883f0a4121f97ad15f2dd5ad5ad565fd522e02ea4ee1c6a3e313973a22e175a49e.jpg', 0),
(13, 'nick', 'gg', 'akakijvasugan0@gmail.com', 123, 'uploads/16759107923f0a4121f97ad15f2dd5ad5ad565fd522e02ea4ee1c6a3e313973a22e175a49e.jpg', 1),
(32, 'sfgvfdg', 'kkk', 'akakijvasugan0@gmail.com', 123, 'uploads/1676000153', 0),
(33, 'выа', 'kkk2', 'akakijvasugan0@gmail.com', 123, 'uploads/1676000276', 0),
(35, 'ops', 'qqq2', 'akakijvasugan0@gmail.com', 123, 'uploads/1676008159', 0),
(37, 'адам', 'адам', 'akakijvasugan0@gmail.com', 123, 'uploads/16762927953f0a4121f97ad15f2dd5ad5ad565fd522e02ea4ee1c6a3e313973a22e175a49e.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
