-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 05:50 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `tb_montir`
--

CREATE TABLE `tb_montir` (
  `id_montir` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_montir`
--

INSERT INTO `tb_montir` (`id_montir`, `nama`) VALUES
('M001', 'Zidan'),
('M002', 'Hapis'),
('M003', 'Jawir');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_tlp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama`, `alamat`, `no_tlp`) VALUES
('P001', 'Dito', 'Cikarang', '0832134111'),
('P002', 'Ricky', 'Cikarang', '0829342124'),
('P003', 'Gilar', 'Bekasi', NULL),
('P004', 'Anto', 'Jakarta', NULL),
('P005', 'Freya', 'Bekasi', '0834539220');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perbaikan`
--

CREATE TABLE `tb_perbaikan` (
  `id_transaksi` varchar(10) NOT NULL,
  `no_plat` varchar(10) NOT NULL,
  `id_montir` varchar(10) NOT NULL,
  `id_sparepart` varchar(10) NOT NULL,
  `harga_jasa` decimal(10,0) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_perbaikan`
--

INSERT INTO `tb_perbaikan` (`id_transaksi`, `no_plat`, `id_montir`, `id_sparepart`, `harga_jasa`, `keterangan`) VALUES
('P01T', 'B 1470 RZQ', 'M003', 'BL01', 100000, 'Pergantian Ban luar depan sebelah kiri'),
('P02T', 'B 4190 XYZ', 'M002', 'A001', 200000, 'Pergantian Aki'),
('P03T', 'B 5090 JKT', 'M001', 'F001', 600000, 'Pergantian Filter udara & service'),
('P04T', 'B 6901 BKN', 'M003', 'BU01', 650000, 'Pergantian Busi & service'),
('P05T', 'B 8923 GIZ', 'M002', 'V001', 300000, 'Ganti Velg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sparepart`
--

CREATE TABLE `tb_sparepart` (
  `id_sparepart` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `stok` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_sparepart`
--

INSERT INTO `tb_sparepart` (`id_sparepart`, `nama`, `harga`, `stok`) VALUES
('A001', 'Aki', 700000, '20'),
('BD02', 'Ban Dalam', 1000000, '20'),
('BL01', 'Ban Luar', 2000000, '5'),
('BM01', 'Bumper', 6500000, '7'),
('BU01', 'Busi', 500000, '50'),
('F001', 'Filter Udara', 600000, '15'),
('K001', 'Kampas Rem', 200000, '30'),
('O001', 'Oli', 300000, '100'),
('V001', 'Velg ', 5000000, '6'),
('W001', 'Windshield', 2000000, '30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_pelanggan` varchar(10) NOT NULL,
  `id_transaksi` varchar(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_pelanggan`, `id_transaksi`, `tanggal`) VALUES
('P001', 'P01T', '2023-06-03'),
('P002', 'P02T', '2023-06-04'),
('P003', 'P03T', '2023-06-04'),
('P004', 'P04T', '2023-06-04'),
('P005', 'P05T', '2023-06-03');

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
-- Indexes for table `tb_montir`
--
ALTER TABLE `tb_montir`
  ADD PRIMARY KEY (`id_montir`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_perbaikan`
--
ALTER TABLE `tb_perbaikan`
  ADD KEY `no_plat` (`no_plat`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_montir` (`id_montir`),
  ADD KEY `id_sparepart` (`id_sparepart`);

--
-- Indexes for table `tb_sparepart`
--
ALTER TABLE `tb_sparepart`
  ADD PRIMARY KEY (`id_sparepart`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD CONSTRAINT `tb_mobil_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`);

--
-- Constraints for table `tb_perbaikan`
--
ALTER TABLE `tb_perbaikan`
  ADD CONSTRAINT `tb_perbaikan_ibfk_1` FOREIGN KEY (`no_plat`) REFERENCES `tb_mobil` (`no_plat`),
  ADD CONSTRAINT `tb_perbaikan_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`),
  ADD CONSTRAINT `tb_perbaikan_ibfk_3` FOREIGN KEY (`id_montir`) REFERENCES `tb_montir` (`id_montir`),
  ADD CONSTRAINT `tb_perbaikan_ibfk_4` FOREIGN KEY (`id_sparepart`) REFERENCES `tb_sparepart` (`id_sparepart`);

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
