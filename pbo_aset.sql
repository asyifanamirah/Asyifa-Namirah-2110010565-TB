-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2024 at 12:12 PM
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
-- Database: `pbo_aset`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aset`
--

CREATE TABLE `tb_aset` (
  `tanggal` varchar(100) NOT NULL,
  `kode_aset` varchar(100) NOT NULL,
  `nama_aset` varchar(250) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_aset`
--

INSERT INTO `tb_aset` (`tanggal`, `kode_aset`, `nama_aset`, `keterangan`) VALUES
('06-01-2024', 'AC-001', 'AC Daikin', ''),
('06-01-2024', 'MD-001', 'Modem Huawei Hitam', ''),
('06-01-2024', 'MD-002', 'Modem TP-Link', ''),
('06-01-2024', 'PC-001', 'PC Office', 'Untuk keperluan kantor'),
('06-01-2024', 'PC-002', 'PC Editing', 'Untuk keperluan sosial media'),
('06-01-2024', 'TV-001', 'TV LG 42 Inch', ''),
('06-01-2024', 'TV-002', 'Smart TV Samsung 65 Inch', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_brg_keluar`
--

CREATE TABLE `tb_brg_keluar` (
  `tanggal` varchar(100) NOT NULL,
  `id_bk` varchar(100) NOT NULL,
  `gudang` varchar(250) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_brg_keluar`
--

INSERT INTO `tb_brg_keluar` (`tanggal`, `id_bk`, `gudang`, `keterangan`) VALUES
('06-01-2024', 'BK-000001', 'Ruang Staff Finance', 'Konslet');

-- --------------------------------------------------------

--
-- Table structure for table `tb_brg_masuk`
--

CREATE TABLE `tb_brg_masuk` (
  `tanggal` varchar(100) NOT NULL,
  `id_bm` varchar(100) NOT NULL,
  `lokasi_aset` varchar(250) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_brg_masuk`
--

INSERT INTO `tb_brg_masuk` (`tanggal`, `id_bm`, `lokasi_aset`, `keterangan`) VALUES
('06-01-2024', 'BM-000001', 'Ruang Manager', ''),
('06-01-2024', 'BM-000002', 'Ruang Meeting', ''),
('06-01-2024', 'BM-000003', 'Ruang Customer Service', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_brg_keluar`
--

CREATE TABLE `tb_detail_brg_keluar` (
  `tanggal` varchar(100) NOT NULL,
  `id_detail_bk` varchar(100) NOT NULL,
  `id_bk` varchar(100) NOT NULL,
  `lokasi_aset` varchar(250) NOT NULL,
  `kode_aset` varchar(100) NOT NULL,
  `nama_aset` varchar(250) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_detail_brg_keluar`
--

INSERT INTO `tb_detail_brg_keluar` (`tanggal`, `id_detail_bk`, `id_bk`, `lokasi_aset`, `kode_aset`, `nama_aset`, `jumlah`, `keterangan`) VALUES
('06-01-2024', 'DTBK-0001', 'BK-000001', 'Ruang Staff Finance', 'MD-001', 'Modem Huawei', 1, 'Rusak'),
('06-01-2024', 'DTBK-0002', 'BK-000002', 'Ruang Staff Sosmed', 'PC-002', 'PC Editing', 1, 'Rusak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_brg_masuk`
--

CREATE TABLE `tb_detail_brg_masuk` (
  `tanggal` varchar(100) NOT NULL,
  `id_detail_bm` varchar(100) NOT NULL,
  `id_bm` varchar(100) NOT NULL,
  `lokasi_aset` varchar(250) NOT NULL,
  `kode_aset` varchar(100) NOT NULL,
  `nama_aset` varchar(250) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_detail_brg_masuk`
--

INSERT INTO `tb_detail_brg_masuk` (`tanggal`, `id_detail_bm`, `id_bm`, `lokasi_aset`, `kode_aset`, `nama_aset`, `jumlah`, `keterangan`) VALUES
('06-01-2024', 'DTBM-0001', 'BM-000001', 'Ruang Manager', 'AC-001', 'AC Daikin', 1, ''),
('06-01-2024', 'DTBM-0002', 'BM-000001', 'Ruang Manager', 'TV-001', 'TV LG 42 Inch', 1, ''),
('06-01-2024', 'DTBM-0003', 'BM-000002', 'Ruang Meeting', 'TV-002', 'Smart TV Samsung 65 Inch', 1, ''),
('06-01-2024', 'DTBM-0004', 'BM-000002', 'Ruang Meeting', 'AC-001', 'AC Daikin', 1, ''),
('06-01-2024', 'DTBM-0005', 'BM-000003', 'Ruang Customer Service', 'PC-001', 'PC Office', 5, ''),
('09-01-2024', 'DTBM-0006', 'BM-000004', 'Ruang Meeting', 'MD-002', 'Modem TP-Link', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruang`
--

CREATE TABLE `tb_ruang` (
  `tanggal` varchar(100) NOT NULL,
  `kode_ruang` varchar(100) NOT NULL,
  `nama_ruang` varchar(250) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_ruang`
--

INSERT INTO `tb_ruang` (`tanggal`, `kode_ruang`, `nama_ruang`, `keterangan`) VALUES
('06-01-2024', '01', 'Ruang Manager', ''),
('06-01-2024', '02', 'Ruang Meeting', ''),
('06-01-2024', '03', 'Ruang Staff Finance', ''),
('06-01-2024', '04', 'Ruang Staff Sosmed', ''),
('06-01-2024', '05', 'Ruang Customer Service', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aset`
--
ALTER TABLE `tb_aset`
  ADD PRIMARY KEY (`kode_aset`);

--
-- Indexes for table `tb_brg_keluar`
--
ALTER TABLE `tb_brg_keluar`
  ADD PRIMARY KEY (`id_bk`);

--
-- Indexes for table `tb_brg_masuk`
--
ALTER TABLE `tb_brg_masuk`
  ADD PRIMARY KEY (`id_bm`);

--
-- Indexes for table `tb_detail_brg_keluar`
--
ALTER TABLE `tb_detail_brg_keluar`
  ADD PRIMARY KEY (`id_detail_bk`);

--
-- Indexes for table `tb_detail_brg_masuk`
--
ALTER TABLE `tb_detail_brg_masuk`
  ADD PRIMARY KEY (`id_detail_bm`);

--
-- Indexes for table `tb_ruang`
--
ALTER TABLE `tb_ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
