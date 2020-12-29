-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 02:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-d`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` int(5) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dosen`, `alamat`) VALUES
(11223, 'Darmawan', 'mataram'),
(12345, 'Nyoman', 'mataram');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(5) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `prodi`) VALUES
(12345, 'Setiaji', 'Ilmu Komputer'),
(23456, 'Darma', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `perwalian`
--

CREATE TABLE `perwalian` (
  `id` int(5) NOT NULL,
  `dosen_nip` int(5) NOT NULL,
  `mahasiswa_nim` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perwalian`
--

INSERT INTO `perwalian` (`id`, `dosen_nip`, `mahasiswa_nim`) VALUES
(1689, 11223, 23456),
(3534, 12345, 12345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `perwalian`
--
ALTER TABLE `perwalian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosen_nip` (`dosen_nip`),
  ADD KEY `mahasiswa_nim` (`mahasiswa_nim`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `perwalian`
--
ALTER TABLE `perwalian`
  ADD CONSTRAINT `fk_dosen1` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mahasiswa` FOREIGN KEY (`dosen_nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
