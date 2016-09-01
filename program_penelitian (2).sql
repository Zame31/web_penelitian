-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2016 at 04:02 AM
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
  `nama_pejabat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `golongan` varchar(50) NOT NULL,
  `nip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pejabat`
--

INSERT INTO `pejabat` (`id_pejabat`, `nama_pejabat`, `jabatan`, `golongan`, `nip`) VALUES
('P01', 'dr. Hj. Nina Manarosana R, M.Kes ', 'Sekretaris Dinas Kesehatan Kota Bandung', 'Pembina Tk.I', '196603191997032001');

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `waktu_pembuatan` date NOT NULL,
  `jenis_surat` varchar(100) NOT NULL,
  `maksud` varchar(100) NOT NULL,
  `waktu_mulai` date NOT NULL,
  `waktu_selesai` date NOT NULL,
  `no_bkbpm` varchar(100) NOT NULL,
  `tanggal_bkbpm` date NOT NULL,
  `surat` varchar(300) NOT NULL,
  `tembusan` varchar(100) NOT NULL,
  `id_pejabat` char(8) NOT NULL,
  `id_pengaju` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `waktu_pembuatan`, `jenis_surat`, `maksud`, `waktu_mulai`, `waktu_selesai`, `no_bkbpm`, `tanggal_bkbpm`, `surat`, `tembusan`, `id_pejabat`, `id_pengaju`) VALUES
(35, '2016-09-30', 'penelitian', 'Penelitian di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Persepsi Lansia', '2016-08-01', '2016-08-31', '070/1691/BKBPM', '2016-08-01', 'Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '3,2,1,0', 'P01', 31),
(36, '2016-11-30', 'pkl', 'Penelitian di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Persepsi Lansia', '2016-08-01', '2016-09-30', '070/1691/BKBPM', '2016-08-11', 'Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '5,4,3,2', 'P01', 32),
(37, '2016-10-21', 'pkl', 'Penelitian Dinas Kesehatan', '2016-09-01', '2016-10-31', '070/1691/BKBPM', '2016-08-03', 'b.	Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung     No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '2,1,0', 'P01', 33),
(38, '2014-08-31', 'pkl_medis', 'Penelitian Laptop', '2016-08-18', '2016-10-31', '070/1691/BKBPM', '2016-08-10', 'b.	Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung     No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '6,5,4,2', 'P01', 34),
(39, '2016-12-31', 'pkl_medis', 'Penelitian Laptop', '2016-08-18', '2016-10-31', '070/1691/BKBPM', '2016-08-10', 'b.	Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung     No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '6,5,4,2', 'P01', 35),
(40, '2017-08-31', 'pkl_medis', 'Penelitian Aceh Pasai', '2016-08-01', '2016-09-30', '070/1691/BKBPM', '2016-09-30', 'b.	Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung     No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '8,7,5,0', 'P01', 36),
(41, '2016-08-31', 'pkl_medis', 'Penelitian Aceh Pasai', '2016-08-01', '2016-09-30', '070/1691/BKBPM', '2016-09-30', 'b.	Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung     No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '8,7,5,0', 'P01', 37),
(42, '2016-09-22', 'penelitian', 'Penelitian di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Persepsi Lansia ', '2016-10-01', '2016-11-30', '073/1691/BKBPM', '2016-09-05', 'Surat permohonan dari Ketua STIKes Bhakti Kencana Bandung No.500/STIes-BK/YAGK/f.1/VIII/2016, Tanggal 09 Agustus 2016', '8,7,5,2,1,0', 'P01', 38);

-- --------------------------------------------------------

--
-- Table structure for table `pengaju`
--

CREATE TABLE `pengaju` (
  `id_pengaju` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaju`
--

INSERT INTO `pengaju` (`id_pengaju`, `nama`, `alamat`) VALUES
(31, 'Hakam Arif Rahmani', 'JL. Tebet Raya No. 84, Tebet, Jakarta Selatan'),
(32, 'Halibab Raima', 'Jl. KH. Agus Salim No. 29A Jakarta Pusat'),
(33, 'Syekh Abdul Rouf Lekal', 'Samudra Pasai, Pasai, Aceh'),
(34, 'Malikul Dhohir', 'Perlak Aceh'),
(35, 'Malikul Dhohir', 'Perlak Aceh'),
(36, 'Al Malikul Saleh', 'Samudra Pasai, Aceh Pasai'),
(37, 'Al Malikul Saleh', 'Samudra Pasai, Aceh Pasai'),
(38, 'Teuku Umar ', 'Meulaboh Aceh Besar');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_penelitian` int(11) NOT NULL,
  `id_pengaju` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rel_tembusan`
--

CREATE TABLE `rel_tembusan` (
  `id_penelitian` int(11) NOT NULL,
  `id_tembusan` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tembusan`
--

CREATE TABLE `tembusan` (
  `id_tembusan` char(4) NOT NULL,
  `nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tembusan`
--

INSERT INTO `tembusan` (`id_tembusan`, `nama`) VALUES
('T01', 'Kepala Dinas Kesehatan Kota Bandung (Sebagai Laporan)'),
('T02', 'Kepala Bidang Pelayanan Kesehatan'),
('T03', 'Kepala Bidang Sumber Daya Kesehatan'),
('T04', 'Kepala Bidang P2PL'),
('T05', 'Kepala UPT Puskesmas Se-Kota Bandung'),
('T06', 'Kepala Bina Program Kesehatan'),
('T07', 'Kepala Sub Bagian Keuangan'),
('T08', 'Kepala Sub Bagian Kepegawaian'),
('T09', 'Kepala Sub Bagian Umum');

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
-- Indexes for table `rel_tembusan`
--
ALTER TABLE `rel_tembusan`
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `id_tembusan` (`id_tembusan`);

--
-- Indexes for table `tembusan`
--
ALTER TABLE `tembusan`
  ADD PRIMARY KEY (`id_tembusan`),
  ADD KEY `id_tembusan` (`id_tembusan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `pengaju`
--
ALTER TABLE `pengaju`
  MODIFY `id_pengaju` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`id_pejabat`) REFERENCES `pejabat` (`id_pejabat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_ibfk_2` FOREIGN KEY (`id_pengaju`) REFERENCES `pengaju` (`id_pengaju`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rel_tembusan`
--
ALTER TABLE `rel_tembusan`
  ADD CONSTRAINT `rel_tembusan_ibfk_1` FOREIGN KEY (`id_tembusan`) REFERENCES `tembusan` (`id_tembusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rel_tembusan_ibfk_2` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
