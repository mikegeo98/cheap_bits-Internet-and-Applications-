-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 02:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cheap_bits`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Time` date NOT NULL,
  `UserID` int(11) NOT NULL,
  `ProdID` int(11) NOT NULL,
  `ProdName` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `Time`, `UserID`, `ProdID`, `ProdName`) VALUES
(53, '2020-10-02', 1, 1, 'ASUS_5'),
(54, '2020-10-02', 1, 4, 'Laptop_HP_15.6'),
(55, '2020-10-02', 1, 7, 'HP_14_Stream'),
(56, '2020-10-02', 1, 8, 'Desktop_ASUS_ROG'),
(57, '2020-10-02', 6, 2, 'Laptop_HUAWEI_MATEBOOK'),
(58, '2020-10-02', 6, 5, 'Dell_Inspiron_15.6'),
(59, '2020-10-02', 6, 7, 'HP_14_Stream'),
(60, '2020-10-02', 6, 1, 'ASUS_5'),
(61, '2020-10-02', 6, 5, 'Dell_Inspiron_15.6'),
(62, '2020-10-02', 6, 7, 'HP_14_Stream'),
(63, '2020-10-02', 1, 1, 'ASUS_5'),
(64, '2020-10-02', 1, 4, 'Laptop_HP_15.6'),
(65, '2020-10-02', 1, 4, 'Laptop_HP_15.6'),
(66, '2020-10-02', 1, 5, 'Dell_Inspiron_15.6'),
(67, '2020-10-02', 1, 5, 'Dell_Inspiron_15.6'),
(68, '2020-10-02', 1, 7, 'HP_14_Stream'),
(69, '2020-10-02', 30, 7, 'HP_14_Stream'),
(70, '2020-10-02', 30, 8, 'Desktop_ASUS_ROG'),
(71, '2020-10-02', 30, 4, 'Laptop_HP_15.6'),
(72, '2020-10-02', 30, 5, 'Dell_Inspiron_15.6'),
(73, '2020-10-03', 1, 1, 'ASUS_5'),
(74, '2020-10-03', 1, 5, 'Dell_Inspiron_15.6');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProdID` int(11) NOT NULL,
  `Type` enum('Laptop','PC') NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProdID`, `Type`, `Name`, `Price`) VALUES
(1, 'Laptop', 'ASUS_5', 250),
(2, 'Laptop', 'Laptop_HUAWEI_MATEBOOK', 568),
(4, 'Laptop', 'Laptop_HP_15.6', 849),
(5, 'Laptop', 'Dell_Inspiron_15.6', 698),
(7, 'Laptop', 'HP_14_Stream', 279),
(8, 'PC', 'Desktop_ASUS_ROG', 1345),
(9, 'PC', 'Dell Optiplex 7070', 960),
(10, 'PC', 'Hp_Prodesk400_G6 ', 815);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(32) NOT NULL,
  `Surname` varchar(32) NOT NULL,
  `DoB` date NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Surname`, `DoB`, `Username`, `Password`, `UID`) VALUES
('Michail', 'Georgoulakis', '1998-07-01', 'mikegeo', 'panionios', 1),
('John', 'Smith', '2020-10-01', 'JohnnieB', 'LOVEISTHEANSWER', 3),
('John', 'Malkovich', '1953-11-09', 'malkie', 'oscar', 4),
('Leonardo', 'DiCaprio', '1975-05-04', 'leonarthw', 'mecabrio', 5),
('Lionel', 'Messi', '1988-07-04', 'messi', 'goal', 6),
('Scarlet', 'Johansson', '1985-05-24', 'scarlet', 'match_point', 7),
('Tom', 'Hardy', '1979-12-31', 'thardy', 'locke', 8),
('Greta', 'Gerwig', '1989-04-23', 'gr_gr', '12345', 9),
('Jack', 'Hanks', '1961-10-31', 'hanks', 'wilson', 14),
('Costas', 'Georgoulakis', '2020-02-01', 'ccc', '1957', 15),
('Alvaro', 'Recoba', '1976-05-05', 'mike_pan', 'recoba', 16),
('betty', 'Jones', '1979-07-07', 'woody', 'woodpecker', 26),
('betty', 'Jones', '1979-07-07', 'woody', 'woodpecker', 27),
('Masoud', 'Shojaei', '1981-07-07', 'Masoud7', 'worldcup', 28),
('Lionel', 'Messi', '1989-05-05', 'Lionel', 'goat', 29),
('anastasia', 'miseyiani', '1998-07-08', 'anastasia', '1962', 30),
('asf', 'asf', '0005-05-05', 'asdf', 'asdf', 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProdID` (`ProdID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProdID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ProdID`) REFERENCES `products` (`ProdID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
