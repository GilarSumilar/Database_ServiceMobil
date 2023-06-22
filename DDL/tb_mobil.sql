-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 02:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_servicemobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `no_plat` varchar(10) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`no_plat`, `merek`, `model`, `warna`, `id_pelanggan`) VALUES
('B 1470 RZQ', 'Mazda', 'CX-3', 'Merah', 'P001'),
('B 4190 XYZ', 'Toyota', 'Supra', 'Hitam', 'P003'),
('B 5090 JKT', 'Honda', 'Civic', 'Putih', 'P005'),
('B 6901 BKN', 'Honda', 'BR-V', 'Putih', 'P002'),
('B 8923 GIZ', 'Nissan', 'Magnite', 'Putih', 'P004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`no_plat`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD CONSTRAINT `tb_mobil_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
