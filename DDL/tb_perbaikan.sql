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
-- Table structure for table `tb_perbaikan`
--

CREATE TABLE `tb_perbaikan` (
  `no_plat` varchar(10) NOT NULL,
  `id_montir` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_sparepart` varchar(10) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_perbaikan`
--
ALTER TABLE `tb_perbaikan`
  ADD KEY `no_plat` (`no_plat`),
  ADD KEY `id_montir` (`id_montir`),
  ADD KEY `id_sparepart` (`id_sparepart`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_perbaikan`
--
ALTER TABLE `tb_perbaikan`
  ADD CONSTRAINT `tb_perbaikan_ibfk_1` FOREIGN KEY (`no_plat`) REFERENCES `tb_mobil` (`no_plat`),
  ADD CONSTRAINT `tb_perbaikan_ibfk_2` FOREIGN KEY (`id_montir`) REFERENCES `tb_montir` (`id_montir`),
  ADD CONSTRAINT `tb_perbaikan_ibfk_3` FOREIGN KEY (`id_sparepart`) REFERENCES `tb_sparepart` (`id_sparepart`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
