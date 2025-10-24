-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 01:34 PM
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
-- Database: `db_bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_film`
--

CREATE TABLE `tbl_film` (
  `id_film` varchar(10) NOT NULL,
  `judul_film` varchar(50) NOT NULL,
  `durasi_film` varchar(10) NOT NULL,
  `rating_usia` varchar(20) NOT NULL,
  `studio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_film`
--

INSERT INTO `tbl_film` (`id_film`, `judul_film`, `durasi_film`, `rating_usia`, `studio`) VALUES
('F001', 'Spider-Man', '120 Menit', 'D', '1'),
('F002', 'The Little Mermaid', '90 Menit', 'R', '2'),
('F003', 'Fast X', '120 Menit', 'SU', '3'),
('F004', 'The Flash', '120 Menit', 'R', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `id_pesan` varchar(50) NOT NULL,
  `jam_tayang` varchar(50) NOT NULL,
  `film` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `jumlah_tiket` varchar(50) NOT NULL,
  `kursi` varchar(60) NOT NULL,
  `harga` int(50) NOT NULL,
  `tanggal` date NOT NULL,
  `Studio_F` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`username`, `password`) VALUES
('admin', 'admin'),
('fajarxcalvin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_film`
--
ALTER TABLE `tbl_film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `studio` (`studio`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `Studio_F` (`Studio_F`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD CONSTRAINT `tbl_pesan_ibfk_1` FOREIGN KEY (`Studio_F`) REFERENCES `tbl_film` (`studio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
