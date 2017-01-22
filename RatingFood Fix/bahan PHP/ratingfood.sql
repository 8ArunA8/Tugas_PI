-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2016 at 04:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ratingfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `foto` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `harga` float NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `id_review` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`foto`, `judul`, `nama`, `harga`, `alamat`, `review`, `id_review`) VALUES
('56db1ff2756234ebfd1f7384d640d699.jpg', 'aaaaa', 'aaaaa', 212121, 'asada', 'asdada', 1),
('56db1ff2756234ebfd1f7384d640d699.jpg', 'addddddd', 'dddddddd', 222222000000, 'ddddddd', 'dddddddddd', 2),
('01_zpsusjchaxt.jpg', 'ww', 'dddddddddddd', 3333330000, 'ddddddddd', 'dddddddddddddddd', 3),
('array1.png', 'dsdsadsa', 'asdasda', 231221, 'asdas', 'asdaasda', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `id` int(5) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `level` enum('user','admin','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `id`, `foto`, `level`) VALUES
('ando', '123', 'ando.yani@yahoo.com', 1, NULL, 'admin'),
('raisa', '1', 'terserah', 2, NULL, 'user'),
('pera', '1', 'aaaaaaaaaaaaaa', 18, 'null', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `foto` (`foto`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
