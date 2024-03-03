-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 12:52 PM
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
-- Database: `demonward`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tgl_terbit` date NOT NULL DEFAULT current_timestamp(),
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `tgl_terbit`, `isi`) VALUES
(1, 'Muzan Death', '2024-01-13', 'Apa hayo'),
(2, 'Percobaan', '2024-01-13', 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww'),
(3, 'Percobaan 2', '2024-01-07', 'lorem ipsum dolor komet di angkasa'),
(4, 'Percobaan 3', '2024-01-09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor turpis at velit pulvinar mattis. Suspendisse dapibus dignissim ante, vitae suscipit dui luctus sed. Mauris quis justo eu ligula gravida condimentum ut non lorem. \r\nDonec magna nisi, hendrerit ac venenatis sed, efficitur ac libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ultricies mollis auctor. In hendrerit suscipit tellus, id ullamcorper lacus laoreet accumsan. Duis ullamcorper nec arcu in semper.'),
(6, 'ini coba', '2024-01-13', 'dkwaodkowkdoakwodwokdokaodkowkdokowkokdokowadokaodkowkodkoakod\r\nkokfoovorvkorkvokorkvokrokvokroskovkokrovkoskorvkovkorvokroskovkorkoskvokrokvoskvoroksokokokokok');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('ADMIN','VIEWER') NOT NULL DEFAULT 'VIEWER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `email`, `password`, `role`) VALUES
(1, 'Luthfi Emillulfata', 'kasein', 'kasein@gmail.com', '123', 'VIEWER'),
(2, 'Admin', 'admin', 'admin@gmail.com', '09', 'ADMIN'),
(3, 'Stephen Curry', 'curry', 'curry@gmail.com', 'curry', 'VIEWER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
