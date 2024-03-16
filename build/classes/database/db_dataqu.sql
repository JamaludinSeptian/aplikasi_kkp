-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 12, 2023 at 05:42 AM
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
-- Database: `db_dataqu`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` varchar(20) NOT NULL,
  `tgl` varchar(35) DEFAULT NULL,
  `idDonatur` varchar(20) DEFAULT NULL,
  `namaDonatur` varchar(70) DEFAULT NULL,
  `idPengelola` varchar(20) DEFAULT NULL,
  `namaPengelola` varchar(70) DEFAULT NULL,
  `jenisBarang` varchar(100) DEFAULT NULL,
  `jumlahBarang` varchar(25) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `tgl`, `idDonatur`, `namaDonatur`, `idPengelola`, `namaPengelola`, `jenisBarang`, `jumlahBarang`, `keterangan`) VALUES
('BR0001', '18', 'DT0001', 'Cahyadi', 'PG0001', 'Nursih', 'Makanan', '5', 'Untuk sarapan'),
('BR0002', '20', 'DT0001', 'Cahyadi', 'PG0001', 'Nursih', 'Makanan', '10', 'Untuk makan siang'),
('BR0003', '19', 'DT0001', 'Cahyadi', 'PG0001', 'Nursih', 'Alat Tulis', '20', 'Untuk belajar mewarnai'),
('BR0004', '7', 'DT0002', 'Burhan', 'PG0002', 'Musidik', 'Pakaian', '30', 'Untuk laki-laki dan perempuan'),
('BR0005', '6', 'DT0002', 'Burhan', 'PG0002', 'Musidik', 'Alat Tulis', '20', 'Untuk ujian sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `dana`
--

CREATE TABLE `dana` (
  `idDana` varchar(20) NOT NULL,
  `tgl` varchar(50) DEFAULT NULL,
  `idPengelola` varchar(20) DEFAULT NULL,
  `namaPengelola` varchar(70) DEFAULT NULL,
  `idDonatur` varchar(20) DEFAULT NULL,
  `namaDonatur` varchar(70) DEFAULT NULL,
  `nominal` int(30) DEFAULT NULL,
  `bentuk` varchar(20) DEFAULT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dana`
--

INSERT INTO `dana` (`idDana`, `tgl`, `idPengelola`, `namaPengelola`, `idDonatur`, `namaDonatur`, `nominal`, `bentuk`, `keterangan`) VALUES
('DN0001', '17', 'PG0001', 'Nursih', 'DT0001', 'Cahyadi', 500000, 'Cash', 'Untuk membeli alat tulis'),
('DN0002', '30', 'PG0001', 'Nursih', 'DT0001', 'Cahyadi', 1200000, 'Transfer', 'Untuk membeli kambing'),
('DN0003', '25', 'PG0001', 'Nursih', 'DT0001', 'Cahyadi', 900000, 'Cash', 'Untuk kebutuhan dapur'),
('DN0004', '18', 'PG0002', 'Musidik', 'DT0002', 'Burhan', 7000000, 'Cash', 'Untuk renovasi bangunan'),
('DN0005', '2', 'PG0002', 'Musidik', 'DT0002', 'Burhan', 2000000, 'Transfer', 'Untuk renovasi bangunan');

-- --------------------------------------------------------

--
-- Table structure for table `donatur`
--

CREATE TABLE `donatur` (
  `idDonatur` varchar(10) NOT NULL,
  `namaDonatur` varchar(70) DEFAULT NULL,
  `noHp` varchar(15) DEFAULT NULL,
  `jk` varchar(15) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donatur`
--

INSERT INTO `donatur` (`idDonatur`, `namaDonatur`, `noHp`, `jk`, `ttl`, `alamat`) VALUES
('DT0001', 'Cahyadi', '089434823779', 'Laki - Laki', 'Jakarta, 12 November 1974', 'Jl.Lorem Ipsum No.9, RT.01/RW.12, Kel.Ammet Kec.Dolor, Kab.Ipsum Dolo'),
('DT0002', 'Burhan', '0895758490103', 'Laki - Laki', 'Jakarta, 15 Mei 1974', 'Jl.Lorem Ipsum No.10, RT.01/RW.12, Kel.Ammet Kec.Dolor, Kab.Ipsum Dolo');

-- --------------------------------------------------------

--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `idPengelola` varchar(20) NOT NULL,
  `namaPengelola` varchar(70) DEFAULT NULL,
  `noHp` varchar(15) DEFAULT NULL,
  `jk` varchar(15) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`idPengelola`, `namaPengelola`, `noHp`, `jk`, `jabatan`, `ttl`, `alamat`) VALUES
('PG0001', 'Nursih', '08764536772', 'Perempuan', 'Admin', 'Jakarta, 29 Juli 1974', 'Jl.Lorem Ipsum No.19, RT.01/RW.12, Kel.Ammet Kec.Dolor, Kab.Ipsum Dolo'),
('PG0002', 'Musidik', '0895342167551', 'Laki - Laki', 'Admin', 'Jakarta, 16 Agustus 1974', 'Jl.Lorem Ipsum No.2, RT.01/RW.12, Kel.Ammet Kec.Dolor, Kab.Ipsum Dolo');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `idPengeluaran` varchar(20) NOT NULL,
  `tgl` varchar(50) DEFAULT NULL,
  `nominal` int(30) DEFAULT NULL,
  `pj` varchar(70) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`idPengeluaran`, `tgl`, `nominal`, `pj`, `keterangan`) VALUES
('PL0001', '18', 100000, 'Nursih', 'Untuk membeli makanan'),
('PL0002', '17', 250000, 'Nursih', 'Untuk membleli pasir'),
('PL0003', '6', 500000, 'Nursih', 'Untuk membeli kebutuhan dapur'),
('PL0004', '5', 700000, 'Musidik', 'Untuk mengganti jendela'),
('PL0005', '9', 300000, 'Musidik', 'Untuk membetulkan pintu');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`user`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `idSantri` varchar(20) NOT NULL,
  `namaSantri` varchar(70) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `jk` varchar(15) DEFAULT NULL,
  `noHpSantri` varchar(15) DEFAULT NULL,
  `namaWali` varchar(70) DEFAULT NULL,
  `noHpWali` varchar(15) DEFAULT NULL,
  `tglMasuk` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`idSantri`, `namaSantri`, `ttl`, `jk`, `noHpSantri`, `namaWali`, `noHpWali`, `tglMasuk`, `alamat`) VALUES
('ST0001', 'Santoso', 'Bogor, 19 Agustus 1986', 'Laki - Laki', '0895415287332', 'Kasman', '0895545367882', '19 Desember 1995', 'Jl.Lorem Ipsum No.65, RT.01/RW.12, Kel.Ammet Kec.Dolor, Kab.Ipsum Dolor'),
('ST0002', 'Arifudin', 'Bandung, 18 Oktober 1986', 'Laki - Laki', '0895324738991', 'Bowo Saputro', '0895434876225', '17 Desember 1985', 'Jl.Lorem Ipsum No.66, RT.01/RW.12, Kel.Ammet Kec.Dolor, Kab.Ipsum Dolor'),
('ST0003', 'Saniyem', 'Jakarta, 21 Februari 1986', 'Perempuan', '0895737892331', 'Sarifudin Arifin', '0895838956773', '18 Desember 1985', 'Jl.Lorem Ipsum No.67, RT.01/RW.12, Kel.Ammet Kec.Dolor, Kab.Ipsum Dolor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indexes for table `dana`
--
ALTER TABLE `dana`
  ADD PRIMARY KEY (`idDana`);

--
-- Indexes for table `donatur`
--
ALTER TABLE `donatur`
  ADD PRIMARY KEY (`idDonatur`);

--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`idPengelola`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`idPengeluaran`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`idSantri`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
