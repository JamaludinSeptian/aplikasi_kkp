-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 07:18 PM
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
-- Database: `db_sj`
--

-- --------------------------------------------------------

--
-- Table structure for table `deliveryorder`
--

CREATE TABLE `deliveryorder` (
  `id_surat_jalan` int(11) NOT NULL,
  `pengirim` varchar(255) DEFAULT NULL,
  `penerima` varchar(255) DEFAULT NULL,
  `alamat_pengirim` varchar(255) DEFAULT NULL,
  `alamat_penerima` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveryorder`
--

INSERT INTO `deliveryorder` (`id_surat_jalan`, `pengirim`, `penerima`, `alamat_pengirim`, `alamat_penerima`) VALUES
(2, 'toko b', 'pelanggan b', 'Jl. Kamboja No. 7090', 'Jl. Mawar No. 700'),
(3, 'toko a', 'pelanggan a', 'Jl. Anggrek No. 789', 'Jl. Melati No. 012'),
(4, 'toko c', 'pelanggan c', 'setu cipayung', 'bambu apus'),
(5, 'Jamaludin Septian', 'Agung Fahmiwijaya', 'Jl Bambu Apus', 'Jl Ciracas');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryorderdetail`
--

CREATE TABLE `deliveryorderdetail` (
  `id_detail` int(11) NOT NULL,
  `id_surat_jalan` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveryorderdetail`
--

INSERT INTO `deliveryorderdetail` (`id_detail`, `id_surat_jalan`, `id_barang`, `jumlah`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 2),
(3, 3, 1, 1),
(4, 4, 1, 2),
(5, 4, 2, 5),
(6, 5, 2, 4),
(7, 5, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_barang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_barang`, `nama_barang`, `harga_barang`) VALUES
(1, 'Colt Diesel', '1500000'),
(2, 'Fuso', '3000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deliveryorder`
--
ALTER TABLE `deliveryorder`
  ADD PRIMARY KEY (`id_surat_jalan`);

--
-- Indexes for table `deliveryorderdetail`
--
ALTER TABLE `deliveryorderdetail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_surat_jalan` (`id_surat_jalan`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deliveryorder`
--
ALTER TABLE `deliveryorder`
  MODIFY `id_surat_jalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveryorderdetail`
--
ALTER TABLE `deliveryorderdetail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliveryorderdetail`
--
ALTER TABLE `deliveryorderdetail`
  ADD CONSTRAINT `deliveryorderdetail_ibfk_1` FOREIGN KEY (`id_surat_jalan`) REFERENCES `deliveryorder` (`id_surat_jalan`),
  ADD CONSTRAINT `deliveryorderdetail_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `items` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
