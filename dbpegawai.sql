-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 11:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(4, 'IT'),
(2, 'Keuangan'),
(3, 'Marketing'),
(1, 'SDM');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`) VALUES
(3, 'Asisten Manager'),
(1, 'Direktur'),
(2, 'Manager'),
(4, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tmpt_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `umur` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tmpt_lahir`, `tgl_lahir`, `iddivisi`, `idjabatan`, `alamat`, `umur`, `berat_badan`) VALUES
(1, '921', 'Muhammad Danish Sujula', 'Laki-Laki', 'NTB', '2007-09-12', 1, 1, 'Lenteng Agung', 17, 50),
(2, '922', 'James Asep', 'Laki-Laki', 'Jakarta', '1999-12-12', 1, 2, 'Margonda', 25, 51),
(3, '923', 'Chris Santoso', 'Laki-Laki', 'Bogor', '1997-11-22', 1, 4, 'Depok', 27, 54),
(4, '924', 'Muhammad Zaki', 'Laki-Laki', 'Jakarta', '1994-12-21', 1, 4, 'Jakarta', 30, 56),
(5, '925', 'Muhammad Rosi', 'Laki-Laki', 'Bandung', '1992-10-11', 1, 3, 'Bogor', 32, 58),
(6, '926', 'Cecep Swordman', 'Laki-Laki', 'Semarang', '1998-09-14', 2, 3, 'Tanggerang Kota', 26, 60),
(7, '927', 'Roki Gerung', 'Laki-Laki', 'Jawa Tengah', '1999-06-24', 2, 4, 'Tanggerang Selatan', 25, 62),
(8, '928', 'Rokismano', 'Laki-Laki', 'Jawa Timur', '1995-08-27', 2, 1, 'Tanggerang Kabupaten', 29, 64),
(9, '929', 'Watasnaro Santoso', 'Laki-Laki', 'Kalimantan Selatan', '1992-12-22', 2, 2, 'Bogor Barat', 32, 66),
(10, '930', 'Muhammad Iqbal', 'Laki-Laki', 'Kalimantan Barat', '1993-03-13', 2, 1, 'Bogor Selatan', 21, 68),
(11, '931', 'Syahrini', 'Perempuan', 'Kalimantan Timur', '1994-04-14', 3, 1, 'Cikarang Barat', 33, 65),
(12, '932', 'Marini', 'Perempuan', 'Sulawesi Selatan', '1995-05-15', 3, 2, 'Bekasi', 28, 63),
(13, '933', 'Dewi Persik', 'Perempuan', 'Sulawesi Barat', '1995-05-15', 3, 4, 'Bekasi Barat', 27, 61),
(14, '934', 'Dewi Sandra 271 Triliun', 'Perempuan', 'Sulawesi Utara', '1996-06-16', 3, 1, 'Depok', 26, 59),
(15, '935', 'Sandra Dewi', 'Perempuan', 'Sumatera Utara', '1997-07-17', 3, 3, 'Jakarta Utara', 27, 57),
(16, '936', 'Megawati Jual Pulau', 'Perempuan', 'Sumatera Barat', '1998-08-18', 4, 3, 'Jakarta Barat', 26, 55),
(17, '937', 'Puan Maharani', 'Perempuan', 'Sumatera Selatan', '1999-09-19', 4, 1, 'Jakarta Selatan', 25, 53),
(18, '938', 'Raniyah Mardhiyah', 'Perempuan', 'Medan', '2000-01-01', 4, 1, 'Jakarta Timur', 24, 51);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
