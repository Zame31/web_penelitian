-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2016 at 03:35 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `program_penelitian`
--

-- --------------------------------------------------------

--
-- Table structure for table `pejabat`
--

CREATE TABLE `pejabat` (
  `id_pejabat` char(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pejabat`
--

INSERT INTO `pejabat` (`id_pejabat`, `nama`, `jabatan`) VALUES
('P01', 'dr. Hj. Nina Manarosana R, M.Kes ', 'Sekretaris Dinas Kesehatan Kota Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `maksud` varchar(100) NOT NULL,
  `waktu_mulai` date NOT NULL,
  `waktu_selesai` date NOT NULL,
  `no_bkbpm` varchar(100) NOT NULL,
  `tanggal_bkbpm` date NOT NULL,
  `id_pejabat` char(8) NOT NULL,
  `id_pengaju` int(11) NOT NULL,
  `surat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `maksud`, `waktu_mulai`, `waktu_selesai`, `no_bkbpm`, `tanggal_bkbpm`, `id_pejabat`, `id_pengaju`, `surat`) VALUES
(23, 'a', '2016-08-16', '2016-08-09', 'aa', '2016-08-08', 'P01', 9, 'Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016'),
(24, 'b', '2016-08-24', '2016-08-30', 'b', '2016-09-29', 'P01', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `pengaju`
--

CREATE TABLE `pengaju` (
  `id_pengaju` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `institusi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaju`
--

INSERT INTO `pengaju` (`id_pengaju`, `nama`, `alamat`, `pekerjaan`, `institusi`) VALUES
(1, 'zamzam nurzaman', 'jl arief rahman hakim gg. holil', 'mahasiswa', 'universitas komputer indonesia (UNIKOM)'),
(7, 'aa', 'aa', 'a', 'a'),
(8, 'zz', 'zz', 'zz', 'zz'),
(9, 'a', 'aa', 'a', 'a'),
(10, 'ssss', 'fff', 'ggg', 'ggg'),
(11, 'e', 'e', 'e', 'e'),
(12, 'e', 'e', 'e', 'e'),
(13, 'e', 'e', 'e', 'e'),
(14, 'e', 'e', 'e', 'e'),
(15, 'e', 'e', 'e', 'e'),
(16, 'e', 'e', 'e', 'e'),
(17, 'f', 'f', 'f', 'f'),
(18, 'g', 'g', 'g', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `id_pengaju` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`id_pejabat`),
  ADD KEY `id_pejabat` (`id_pejabat`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id_penelitian`),
  ADD KEY `id_pejabat_2` (`id_pejabat`),
  ADD KEY `id_pengaju` (`id_pengaju`);

--
-- Indexes for table `pengaju`
--
ALTER TABLE `pengaju`
  ADD PRIMARY KEY (`id_pengaju`),
  ADD KEY `id_pengaju` (`id_pengaju`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pengaju`
--
ALTER TABLE `pengaju`
  MODIFY `id_pengaju` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`id_pejabat`) REFERENCES `pejabat` (`id_pejabat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_ibfk_2` FOREIGN KEY (`id_pengaju`) REFERENCES `pengaju` (`id_pengaju`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
