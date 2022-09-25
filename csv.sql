-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2022 at 08:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csv`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `Applicable_For` longtext NOT NULL,
  `Calorific_Value` longtext NOT NULL,
  `id` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1`
--

INSERT INTO `table_1` (`Applicable_For`, `Calorific_Value`, `id`) VALUES
('21/09/2022', '40.4', 106),
('21/09/2022', '40.2', 107),
('21/09/2022', '39.5', 108),
('21/09/2022', '40', 109),
('21/09/2022', '39.4', 110),
('20/09/2022', '40.4', 111),
('22/09/2022', '39.7', 112),
('22/09/2022', '40', 113),
('22/09/2022', '39.8', 114),
('22/09/2022', '40.2', 115),
('22/09/2022', '39.7', 116),
('22/09/2022', '39.9', 117),
('22/09/2022', '40', 118),
('22/09/2022', '38.8', 119),
('22/09/2022', '39.9', 120),
('22/09/2022', '39.4', 121),
('22/09/2022', '39.8', 122),
('22/09/2022', '40', 123),
('22/09/2022', '39.4', 124),
('21/09/2022', '38.8', 125),
('21/09/2022', '39.5', 126);

-- --------------------------------------------------------

--
-- Table structure for table `table_2`
--

CREATE TABLE `table_2` (
  `Applicable_For` longtext NOT NULL,
  `Area` longtext NOT NULL,
  `id` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2`
--

INSERT INTO `table_2` (`Applicable_For`, `Area`, `id`) VALUES
('21/09/2022 ', 'NE', 106),
('21/09/2022 ', 'NO', 107),
('21/09/2022 ', 'SC', 108),
('21/09/2022 ', 'SO', 109),
('21/09/2022 ', 'SW', 110),
('20/09/2022 ', 'NE', 111),
('22/09/2022 ', 'EA', 112),
('22/09/2022 ', 'EM', 113),
('22/09/2022 ', 'NE', 114),
('22/09/2022 ', 'NO', 115),
('22/09/2022 ', 'NT', 116),
('22/09/2022 ', 'NW', 117),
('22/09/2022 ', 'SC', 118),
('22/09/2022 ', 'SE', 119),
('22/09/2022 ', 'SO', 120),
('22/09/2022 ', 'SW', 121),
('22/09/2022 ', 'WM', 122),
('22/09/2022 ', 'WN', 123),
('22/09/2022 ', 'WS', 124),
('21/09/2022 ', '  Campbeltown', 125),
('21/09/2022 ', 'EA', 126);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_1`
--
ALTER TABLE `table_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_2`
--
ALTER TABLE `table_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `table_2`
--
ALTER TABLE `table_2`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_2`
--
ALTER TABLE `table_2`
  ADD CONSTRAINT `table_2_ibfk_1` FOREIGN KEY (`id`) REFERENCES `table_1` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
