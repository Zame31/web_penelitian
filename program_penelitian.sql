-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2016 at 01:15 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `akses` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_lengkap`, `alamat`, `tanggal_lahir`, `email`, `username`, `password`, `akses`, `created`) VALUES
(4, 'Zamzam Nurzaman', 'sekeloa kubangari 8 no 8', '0000-00-00', 'zamzam_nurzaman@outlook.com', 'zame31', '$2y$10$1Ep2oHhMQ/LsY0sZlzClDOfhRaVvIjnWh.LVWUeMB/HN.LCdWX5/K', 'super_admin', '2016-10-01 20:51:53'),
(5, 'Admin Datin', 'Sekeloa', '0000-00-00', 'datin@gmail.com', 'admin_datin', '$2y$10$M9XHNa3QsAgGyggQ/RI.n.lksPDCgbYzG0oSiFM3T4Lb6ctyGUYMK', 'admin_datin', '2016-10-12 11:23:09'),
(6, 'admin', 'admin', '0000-00-00', 'admin@gmail.com', 'admin', '$2y$10$wCTcCHmJrMhECfsG8u/s7O5V6OpcvQrSZWmObbU.HLL9uKpY38Zuu', 'super_admin', '2016-10-12 11:15:05'),
(7, 'admin_pkl', 'admin_pkl', '0000-00-00', 'admin_pkl@gmail.com', 'admin_pkl', '$2y$10$FEtD8eZ5rSFl8Vs6nOlS4epswizocEGdWRxxPqDQMeJYDYc9dISTK', 'admin_pkl', '2016-10-12 11:23:37'),
(8, 'Pa Cucu', 'Sekelo', '0000-00-00', 'Pa@gmail.com', 'pacucu', '$2y$10$fRLC9caqHOd/TB6OAWiR6ulVnJSP6iKhw2BhuW.uc0Qz3kLUf6sFu', 'super_admin', '2016-10-14 08:11:28');

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
('P01', 'dr. H. Zamzam Nurzaman R, M.Kes', 'Sekretaris Dinas Kesehatan Kota Bandung', 'Pembina Tk.I ', '196603191997032001');

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `waktu_pembuatan` date NOT NULL,
  `jenis_surat` varchar(100) NOT NULL,
  `maksud` varchar(500) NOT NULL,
  `waktu_mulai` date NOT NULL,
  `waktu_selesai` date NOT NULL,
  `no_bkbpm` varchar(100) NOT NULL,
  `tanggal_bkbpm` date NOT NULL,
  `surat` varchar(300) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `tembusan` varchar(100) NOT NULL,
  `id_pejabat` char(8) NOT NULL,
  `id_pengaju` int(11) NOT NULL,
  `status_mail` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `waktu_pembuatan`, `jenis_surat`, `maksud`, `waktu_mulai`, `waktu_selesai`, `no_bkbpm`, `tanggal_bkbpm`, `surat`, `no_surat`, `tanggal_surat`, `tembusan`, `id_pejabat`, `id_pengaju`, `status_mail`) VALUES
(1, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sikap dan Komunitas', '2015-01-07', '2016-07-07', '070/30/BKBPM', '2016-01-07', 'b.	Surat permohonan dari Wakil Dekan Fak Keperawatan UNPAD N0. 4714/UN6.L1/PP/2015  , Tanggal 30 Desember   2015', '4714/UN6.L1/PP/2015', '2015-12-30', '4,3,1,0', 'P01', 5, ''),
(2, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Tingkat Pe', '2015-01-27', '2016-07-27', '070/197/BKBPM', '2016-01-27', 'b.	Surat permohonan dari Dekan FK Unisba No. 035/Dek/FK-k/Skr/I/2016 , Tanggal 12 Januari 2016', '035/Dek/FK-k/Skr/I/2016', '2016-01-12', '4,2,1,0', 'P01', 6, ''),
(3, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisa Faktor yang', '2015-01-18', '2016-07-18', '070/120/BKBPM', '2016-01-18', 'b.	Surat permohonan dari  Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada No.001/SDHB/SIP/PSKMS/I/2016 , Tanggal 13 Januari    2016', '001/SDHB/SIP/PSKMS/I/2016', '2016-01-13', '4,3,1,0', 'P01', 7, ''),
(4, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Respon Ber', '2016-01-15', '2016-07-15', '070/105/BKBPM', '2016-01-15', 'b.	Surat permohonan dari  Fak Keperawatan UNPAD No. 132/UN6.L1/PP/2016  , Tanggal 13 Januari    2015', '132/UN6.L1/PP/2016', '2016-01-13', '4,2,1,0', 'P01', 8, ''),
(5, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Angka kejadian dema', '2016-01-29', '2016-07-29', '070/216/BKBPM', '2016-01-29', 'b.	Surat permohonan dari Ketua STIKep PPNI jawa Barat No. I/042/STIKep/PPNI/JBR/I/2016, Tanggal 25 Januari 2016', '070/216/BKBPM', '2016-01-25', '4,2,1,0', 'P01', 9, ''),
(6, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Analisa Faktor yang Berhubu', '2016-01-14', '2016-07-14', '070/26/BKBPM', '2016-01-01', 'b.	Surat permohonan dari UNPAD No. 029/UN6.C1.3.2/KEPK/PN/2016  , Tanggal 11 Januari    2016', '029/UN6.C1.3.2/KEPK/PN/2016', '2016-01-11', '4,3,1,0', 'P01', 10, ''),
(7, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Perilaku B', '2016-01-26', '2016-07-26', '070/179/BKBPM', '2016-01-26', 'b.	Surat permohonan dari Dekan Fak Keperawatan UNPAD  No. 363/UN6.L1/PP/2016 , Tanggal 21  Januari 2016', '070/179/BKBPM', '2016-01-26', '4,3,1,0', 'P01', 11, ''),
(8, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prosentase penderit', '2016-01-21', '2016-07-21', '070/147/BKBPM', '2016-01-21', 'b.	Surat permohonan dari Wakil Ketua STMIK ”AMIKBANDUNG” N0.STIKIK-ABG/160125/045/WK  , Tanggal 25 Januari   2016', 'STIKIK-ABG/160125/045/WK', '2016-01-25', '4,2,1,0', 'P01', 12, ''),
(9, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Upaya Ibu dalam Pen', '2015-01-21', '2016-07-21', '070/144/BKBPM', '2016-01-21', 'b.	Surat permohonan dari Fak Keperawatan UNPAD No. 306 /UN6.L.1/PP/2016  , Tanggal 19 Januari  2016', '306 /UN6.L.1/PP/2016  ', '2016-01-19', '4,2,1,0', 'P01', 13, ''),
(10, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Motivasi I', '2015-12-29', '2016-06-29', '070/2238/BKBPM, ', '2015-12-29', 'Fak Keperawatan UNPAD ', '4832 /UN6.L.1/PP/2015', '2015-12-30', '3,1,0', 'P01', 14, ''),
(11, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Dukungan K', '2015-01-18', '2016-01-18', '070/38/BKBPM', '2016-01-18', 'b.	Surat permohonan dari  Ketua LPPM STIKes Bhakti Kencana No. 003/STIKes-BK/YAGK/f.1/I/2016, Tanggal 12 Januari    2016', '003/STIKes-BK/YAGK/f.1/I/2016', '2016-01-12', '4,2,1,0', 'P01', 15, ''),
(12, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Lama Pengg', '2015-01-29', '2016-07-19', '070/43/BKBPM', '2016-01-19', 'Wakil Ketua STIKes UNJANI ', 'B/5221 /STIKES/XII/2015 ', '2015-12-18', '4,2,1,0', 'P01', 16, ''),
(13, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Antar Fakt', '2016-01-25', '2016-01-25', '070/171/BKBPM', '2016-01-25', 'b.	Surat permohonan dari Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada N0. 045/SDHB/SIP/PSKMSI/I/2016  , Tanggal 25 Januari   2016', ' 045/SDHB/SIP/PSKMSI/I/2016', '2016-01-25', '4,2,1,0', 'P01', 17, ''),
(14, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Meningkatkan Kewasp', '2016-01-13', '2016-07-13', '070/83/BKBPM', '2016-01-13', 'b.	Surat permohonan dariWakil Dekan FSRD Itenas No. 0003/Survey/FSRD-Itenas/2016, Tanggal 5 Januari  2016', '0003/Survey/FSRD-Itenas/2016', '2016-01-05', '4,2,1,0', 'P01', 18, ''),
(15, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Dukungan S', '2016-01-14', '2016-01-14', '070/29/BKBPM', '2016-01-14', 'b.	Surat permohonan dari  FISIP UNPAD No. 0408/UN6.G1/PL/2016  , Tanggal 28 Desember    2015', ' 0408/UN6.G1/PL/2016 ', '2015-12-28', '4,3,1,0', 'P01', 19, ''),
(16, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan perilaku p', '2016-01-25', '2016-07-25', '070/061/BKBPM', '2016-01-25', 'b.	Surat permohonan dari Ketua Prodi SI Keperawatan STIKes Dharma Husada N0. 067/SDHB/SPen/PSKPS1/I/2016  , Tanggal 25 Januari  2016', '067/SDHB/SPen/PSKPS1/I/2016', '2016-01-25', '4,2,1,0', 'P01', 20, ''),
(17, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Korelasi Kadar HB d', '2015-01-07', '2016-07-07', '070/33/BKBPM', '2016-01-07', 'b.	Surat permohonan dari Dekan FK UNISBA No. 007/Dek/FK-k/Skr/XII/2015, Tanggal 28 Desember  2016 ', '007/Dek/FK-k/Skr/XII/2015,', '2016-12-28', '4,2,1,0', 'P01', 21, ''),
(18, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sistem Pencatatan P', '2016-01-18', '2016-07-18', '070/117/BKBPM', '2016-01-18', 'Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada N0. 001/SDHB/SIP/PSKMSI/I/2016, Tanggal 25 Januari   2016', '001/SDHB/SIP/PSKMSI/I/2016', '2016-01-25', '5,4,2,1,0', 'P01', 22, ''),
(19, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analias Prilaku Pek', '2015-01-12', '2016-07-12', '070/72/BKBPM', '2016-01-12', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB No. 001/SDHB/SIP/PSKMS1/I/2016, Tanggal 11 Januari  2016', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-11', '4,3,1,0', 'P01', 23, ''),
(20, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisa Perilaku Pe', '2015-01-12', '2016-07-12', '070/71/BKBPM', '2016-01-12', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB No. 001/SDHB/SIP/PSKMS1/I/2016, Tanggal 11 Januari  2016', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-11', '4,3,1,0', 'P01', 24, ''),
(21, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang S.Government In Sel', '2015-01-16', '2016-07-16', '070/1904/BKBPM', '2016-01-16', 'b.	Surat permohonan dari Derektur JKSG UMY Universitas Muhammadiyah Yogyakarta No.06/JKSG/I/2016, Tanggal 11 Januari 2016', '06/JKSG/I/2016', '2016-01-11', '4,2,1,0', 'P01', 25, ''),
(22, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Faktor-Faktor yang ', '2015-12-28', '2016-06-28', '070/2226/BKBPM', '2016-12-28', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB N0. 001/SDHB/SIP/PSKMS1/I/2016 , Tanggal 7 Januari  2016 ', '001/SDHB/SIP/PSKMS1/I/2016 ', '2016-01-07', '4,2,1,0', 'P01', 26, ''),
(23, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Diabetes Melitus di', '2015-01-14', '2016-07-14', '070/97/BKBPM', '2016-01-14', 'b.	Surat permohonan dari Ketua STIKes Immanuel Bandung No.486/STIKI/PK.I-Akd/XI/2015 , Tanggal 30 November 2016', '486/STIKI/PK.I-Akd/XI/2015', '2016-11-30', '4,3,1,0', 'P01', 27, ''),
(24, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahua', '2015-01-14', '2016-07-14', '070/92/BKBPM', '2016-07-14', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB No. 001/SDHB/SIP/PSKMS1/I/2016, Tanggal 13 Januari  2016', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-13', '4,2,1,0', 'P01', 28, ''),
(25, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Tingkat St', '2015-01-06', '2016-07-06', '070/26/BKBPM', '2016-01-06', 'b.	Surat permohonan dari Wakil Dekan Fak Keperawatan UNPAD N0. 4814/UN6.L1/PP/2015  , Tanggal 30 Desember   2015', '4814/UN6.L1/PP/2015', '2015-12-30', '5,4,1,0', 'P01', 29, ''),
(26, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Kebersihan Mulut di Kota Bandung', '2016-01-26', '2016-07-26', '070/70/BKBPM', '2016-01-26', 'Dekan FKG UNPAD', '366/UN6.F1/DL/2016 ', '2016-01-19', '4,2,1,0', 'P01', 30, ''),
(27, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Subjective well-Being Pada Lansia Peserta Prolanis di Puskesmas Kota Bandung', '2015-12-03', '2016-06-03', '070/2091/BKBPM', '2015-12-03', 'Fak Psikologi Univ Maranatha', '0607/FP/UKM/XII/2015  ', '2015-12-02', '4,2,1,0', 'P01', 31, ''),
(28, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambara pengetahuan dan sikap pencegahan peningkatan tekanan darah pada penderita hipetensi ', '2016-01-25', '2016-07-25', '070/168/BKBPM', '2016-01-25', 'Ketua Sekolah Tinggi Ilmu Keperawatan PPNI Jawa Barat', 'I/023/STIKep/PPNI/JBR/I/2016  ', '2016-01-13', '4,2,1,0', 'P01', 32, ''),
(29, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Gambaran Pengetahuan dan Sikap Wanita Usia Subur Tentang Kanker Serviks', '2016-01-18', '2016-07-18', '070/126/BKBPM', '2016-01-18', 'Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana', '098/STIKes-BK/YAGK/f.2/I/2016', '2016-01-12', '4,2,1,0', 'P01', 33, ''),
(30, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan   dan Sikap Ibu Hamil HIV/AIDS', '2015-01-14', '2016-07-14', '070/101/BKBPM', '2016-01-14', 'Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana', '099/STIKes-BK/YAGK/f.2/I/2016', '2016-01-05', '4,3,1,0', 'P01', 34, ''),
(31, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Kecemasan dengan Kejadian Hipertensi Pada Lansia', '2015-01-27', '2016-07-27', '070/195/BKBPM', '2016-01-27', 'Dekan  Fak Keperawatan BSI', '136/FIKA/UBSI/I/2016', '2016-01-21', '4,2,1,0', 'P01', 35, ''),
(32, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sistem Pakar Untuk Diagnosa Penyakit Tuberkolosis', '2015-01-18', '2016-07-18', '070/128/BKBPM', '2016-01-18', 'Prodi Sistem Informasi UNIKOM', 'IS/FTIK/UNIKOM/XII/2015 ', '2015-12-30', '5,4,1,0', 'P01', 36, ''),
(33, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Pendidikan Kesehatan dan SMS Reminder terhadap Peningkatan HB Ibu Hamil dengan Anemia', '2015-01-06', '2016-07-06', '070/23/BKBPM', '2016-01-06', 'Fak Keperawatan UNPAD', '4796/UN6.L1/PP/2015', '2016-12-30', '4,2,1,0', 'P01', 37, ''),
(34, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Masalah Psikologis Pekerja Seks Komersial dengan Infeksi Menular Seksual', '2015-01-08', '2016-07-08', '070/43/BKBPM', '2016-01-08', 'Wakil Dekan Fak. Keperawatan UNPAD', '4824/UN6.L1/PP/2016  ', '2015-12-30', '4,3,1,0', 'P01', 38, ''),
(35, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang STATUS Kebersihan Mulut Atlet Penyandang Tunadaksa Di Kota Bandung', '2015-01-08', '2016-07-08', '070/09/BKBPM', '2016-01-08', 'Wakil Dekan FK Gigi UNPAD', '39/UN6.F1/DL/2016  ', '2016-01-05', '4,3,1,0', 'P01', 39, ''),
(36, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahuan Ibu Hamil Tentang HIV/AIDS dengan Sikap Ibu Terhadap Program Pencegahan Penularan HIV/AIDS dari Ibu ke Anak (PPIA) Di Puskesmas Ibrahim Aji', '2015-01-19', '2016-07-19', '070/42/BKBPM', '2016-01-19', 'FK UNPAD', '4796/UN6.C1/PN/20', '2016-01-14', '4,3,1,0', 'P01', 40, ''),
(37, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahuan Ibu Hamil tentang HIV/AIDS dengan sikap Ibu terhadap Program Pencegahan Penularan HIV/AIDS dai Ibu ke Anak (PPIA) di UPT Puskesmas Ibrahim Adjie ', '2015-01-19', '2016-07-19', '070/42/BKBPM', '2016-01-19', 'Wakil Dekan Bidang Akademik Fakultas Kedokteran Unpad', '4646/UN6.c1/PN/2016', '2016-01-14', '4,3,1,0', 'P01', 41, ''),
(38, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Evaluasi Penggunaan Obat HIV Pada Pasien Rawat Jalan di Rumah Sakit', '2015-01-12', '2016-07-12', '070/18/BKBPM', '2016-01-12', 'Ketua STFB', '019/STFB/S.P/XII/2015 ', '2016-12-21', '4,3,1,0', 'P01', 42, ''),
(39, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Nifas', '2015-01-16', '2016-01-16', '070/108/BKBPM', '2016-01-16', 'Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana ', '122/STIKes-BK/YAGK/F.2/I/2016 ', '2016-01-12', '4,3,1,0', 'P01', 43, ''),
(40, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Kesiapan Faskes Tingkat I dengan Jumlah Cakupan Rujukan di Rumah Sakit', '2016-01-07', '2016-07-07', '070/35/BKBPM', '2016-01-07', 'Prodi S1 Kesmas STIKes DHB ', '001/SDHB/SIP/PSKMS1/I.2016', '2016-01-06', '4,2,1,0', 'P01', 44, ''),
(41, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Upaya Ibu dalam Pencegahan Skunder Diare pada Balita', '2016-04-20', '2016-10-20', '070/487/BKBPM', '2016-04-20', 'Wakil Dekan Fak Keperawatan UNPAD', '1707/UN6.L1/PP/2016  ', '2016-03-29', '4,3,1,0', 'P01', 45, ''),
(42, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Faktor-Faktor yang melatarbelakangi Pelaksanaan Surveilans Campak pada Petugas Puskesmas di Kota Bandung', '2015-12-31', '2016-06-30', '070/1937/BKBPM', '2016-12-31', 'Wakil Dekan Fak Keperawatan UNPAD ', '4489/UN6.L1/PP/2015  ', '2015-12-18', '4,3,1,0', 'P01', 46, ''),
(43, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang A Cross-Sectional Study Of Carriage of Streptococcus Pnemoniae ( the Pneumococcus) and orther Important Bacterial Pathogens (  Staphylococcus Aureus, Haemophilus Influenzae, and Moraxella Catarrhalis ) in Indonesioan Children 12-23 Montha of Age', '2015-01-13', '2016-07-13', '070/19/BKBPM', '2016-01-13', 'Dept Ilmu Kesehatan Anak UNPAD ', '027/UN6.C1.1.20/PN/2016  ', '2016-01-07', '4,3,1,0', 'P01', 47, ''),
(44, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Akuntabilitas, Trasparansi dan Fungsi Pemeriksaan Intern terhadap Kinerja Instansi Pemerintah', '2015-12-10', '2016-06-10', '070/42/BKBPM', '2016-01-08', 'Dekan Fak Ekonomi Universitas Widyatama ', '0135/SM-REG/BPAA-UTAMA/XI/2015', '2015-11-16', '6,5,1,0', 'P01', 48, ''),
(45, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Prilaku Pencegahan Keputihan Dengan Kejadian Keputihan Pada Remaja Putri', '2015-01-14', '2016-07-14', '070/93/BKBPM', '2016-01-14', 'Ketua Prodi S1 Kesmas STIKes DHB ', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-13', '4,3,1,0', 'P01', 49, ''),
(46, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu hamil Tentang Pencegahan Penularan HIV dari Ibu Ke Anak ( PPIA)', '2015-01-07', '2016-07-07', '070/28/BKBPM', '2016-01-07', 'LPPM DIII Kebidanan STIKes Bhakti Kencana ', '007/STIKes-BK/YAGK/f.2/I/2016', '2016-01-07', '4,3,2,1,0', 'P01', 50, ''),
(47, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Evaluasi Kesesuaian Penulisan resep Obat Diabetes Melitus Tipe 2 Pada Pasien Rawat Jalan Dengan Formularium Rumah Sakit ', '2015-01-13', '2016-07-13', '070/23/BKBPM', '2016-01-13', 'Ketua STFB ', '020/STFB/S.P/XII/2015 ', '2015-12-21', '4,2,1,0', 'P01', 51, ''),
(48, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Obesitas Pada Anak', '2015-01-07', '2016-07-07', '070/37/BKBPM', '2016-01-07', 'Prodi Desain Kominkasi Visual UNIKOM ', '279/PP/KJDKV/UNIKOM/XII/2015', '2015-12-22', '4,2,1,0', 'P01', 52, ''),
(49, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kespro dan KB', '2015-01-16', '2016-07-16', ': 070/109/BKBPM', '2016-01-16', 'dari  Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana  ', '124/STIKes-BK/YAGK/F.2/I/2016 ', '2016-01-12', '4,3,1,0', 'P01', 53, ''),
(50, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Self Efficaci Ibu Menyusui terhadap Pemenuhan Nutrisi Pada bayi Dengan ASI Ekslusif', '2015-01-21', '2016-07-21', '070/148/BKBPM', '2016-01-21', 'Fak Keperawatan UNPAD', '280 /UN6.L.1/PP/2016  ', '2016-01-18', '4,2,1,0', 'P01', 54, ''),
(51, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Jumlah Kejadian Kasus Pada Bayi dan Neonatus Dan Angka Kejadian Tertinggi Pada Persalinan', '2015-01-07', '2016-07-07', '070/40/BKBPM', '2016-01-07', 'Ketua DIII Kebidanan STIKes Bhakti Kencana ', '089/STIKes-BK/YAGK/f.2/I/2016', '2016-01-05', '4,2,1,0', 'P01', 55, ''),
(52, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Personal Hygiene dan Sanitasi Dengan kejadian penyakit Typhus', '2015-12-28', '2016-06-28', ': 070/2225/BKBPM', '2016-12-28', 'Prodi S1 Kesmas STIKes DHB ', '001/SDHB/SIP/PSKMS1/I.2016 ', '2016-01-06', '4,3,1,0', 'P01', 56, ''),
(53, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perancangan Kampanye Melalui Buku Paduan Mengenai Penghentian Tindakan Perubahan Anak Kidal', '2015-01-13', '2016-07-13', '070/81/BKBPM', '2016-01-13', 'Wakil Dekan FSRD Itenas', '0001/Survey/FSRD-Itenas/2016', '2016-01-05', '4,2,1,0', 'P01', 57, ''),
(54, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Penyakit TBC', '2015-01-26', '2016-07-26', '070/189/BKBPM', '2016-01-26', 'Ketua Prodi S1 Kesmas STIKes DHB ', '105/SDHB/SPen/PSKMS1/I/2016', '2016-01-26', '4,3,1,0', 'P01', 58, ''),
(55, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Pengaruh Lingkungan Kerja dan Kepuasan Kerja terhadap Kinerja Pegawai Serta Implikasinya Terhadap Kinerja Organisasi', '2015-09-17', '2016-03-17', '070/1656/BKBPM', '2015-09-17', 'Ketua LPPM Univ Widyatama ', '156/LP2M-UTAMA/IX/2015', '2015-09-16', '7,4,1', 'P01', 59, ''),
(56, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Paritas dengan Kejadian Laserasi Perineum Pada Ibu Bersalin di Puskesmas Puter Periode Januari – September 2015', '2015-01-07', '2016-07-07', '070/39/BKBPM', '2016-01-07', ' b.	Surat permohonan dari ', '038/STIKes-BK/YAGK/f.2/I/2016', '2016-01-05', '4,2,1,0', 'P01', 60, ''),
(57, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Pengembangan Daun Katuk (Sauropus Androgynus(L) Merr ) sebagai Biskuit Laktogenik ( Ditinjau dari Volume ASI, Kadar Prolaktin dan Berat Badan Bayi )', '2015-01-28', '2016-07-28', '070/75/BKBPM', '2016-01-28', 'Ketua Prodi Magister Kebidanan FK UNPAD ', '53.UN6.C1.2/4/PP/2016', '2016-01-25', '4,2,1,0', 'P01', 61, ''),
(58, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prevalence  of Gingivitis in Bandung', '2015-01-15', '2016-07-15', '070/34/BKBPM', '2016-01-15', 'dari  Wakil Dekan FKG UNPAD', '163/UN6.F1/DL/2016  ', '2016-01-11', '4,3,1,0', 'P01', 62, ''),
(59, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu Hamil Trimester I Tentang Emesis Gravidarum berdasarkan Umur dan Pendidikan ', '2015-01-18', '2016-07-18', '070/127/BKBPM', '2016-01-18', 'Ketua LPPM D III Kebidanan STIKes Bhakti Kencana ', '047/STIKes-BK/YAGK/f.2/I/2016  ', '2016-01-12', '4,3,1,0', 'P01', 63, ''),
(60, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbandingan Penyembuhan Luka Episiotomi Antara Pemberian Anestesi Dengan Tanpa Pemberian Anestesi', '2015-01-08', '2016-07-08', '070/42/BKBPM', '2016-01-08', 'Wakil Dekan Fak Keperawatan UNPAD', '4775/UN6.L1/PP/2015  ', '2015-12-30', '4,2,1,0', 'P01', 64, ''),
(61, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahuan Ibu tentang Penyakit ISPA dengan Perilaku Pencegahan ISPA pada Balita ', '2016-01-25', '2016-07-25', '070/172/BKBPM', '2016-01-25', 'Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada ', '038/SDHB/SIP/PSKMSI/I/2016  ', '2016-01-22', '4,2,1,0', 'P01', 65, ''),
(62, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Status Gizi dengan Tumbuh Kembang Anak Usia 4-5 tahun', '2015-01-19', '2016-07-19', '070/44/BKBPM', '2016-01-19', 'Wakil Ketua STIKes UNJANI ', 'B/5270/STIKES/XII/2015', '2015-12-21', '4,2,1,0', 'P01', 66, ''),
(63, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pemberian Imunisasi Dasar Lengkap Dengan Kejadian Penyakit ISPA Pada Bayi Tahun 2016', '2016-01-25', '2016-07-25', '070/170/BKBPM', '2016-01-25', 'Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada ', '044/SDHB/SIP/PSKMSI/I/2016  ', '2016-01-25', '4,2,1,0', 'P01', 67, ''),
(64, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prevalensi Periodontitis Kronis di Kota Bandung', '2016-01-15', '2016-07-14', '070/33/BKBPM', '2016-01-15', 'Wakil Dekan FKG UNPAD ', '126/UN6.F1/DL/2016  ', '2016-01-08', '4,3,1,0', 'P01', 68, ''),
(65, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang hubungan perilaku hidup bersih dean sehat (PHBS) dengan kejadian diare pada balita (0-5) Tahun', '2016-01-26', '2016-07-26', '070/194/BKBPM', '2016-01-26', 'Dekan Fak Ilmu Keperawatan Univ  BSI ', '139/FIKA/UBSI/I/2016  ', '2016-01-21', '4,2,1,0', 'P01', 69, ''),
(66, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Faktor-faktor yang mempengaruhi perilaku merokok di dalam rumah di Kec.Kiaracondong Kota Bandung  ', '2016-02-23', '2016-08-23', '070/389/BKBPM', '2016-02-19', 'Ketua STIKes Dharma Husada Bandung ', 'No.158/SDHB/SPen/PSKMS1/II/2016', '2016-02-23', '4,3,1,0', 'P01', 70, ''),
(67, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Keracunan Anak disebabkan oleh Makanan Berbahan Tambahan Berbahaya ', '2016-02-23', '2016-08-23', '070/395/BKBPM', '2016-02-23', 'Dekan Fakultas Syariah dan Hukum UIN Sunan Gunung Djati Bandung', 'No. Un.05/III.3/PP.00.9/78/2016', '2016-02-23', '4,3,1,0', 'P01', 71, ''),
(68, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Gambaran Karakteristik Bayi yang lahir dari Ibu Riwayat kekurangan energi Kronis', '2016-02-11', '2016-08-11', '070/307/BKBPM', '2016-02-11', 'Ketua Prodi D-III STIKes Rajawali', 'No.B.035B/SR/Keb/II/2016', '2016-02-09', '4,2,1,0', 'P01', 72, ''),
(69, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Studi Pendahuluan tentang Lansia dan Rematik', '2016-02-05', '2016-08-05', '070/263/BKBPM', '2016-02-05', 'Ketua Prodi S1 Keperawatan STIKes Rajawali ', 'No.B.040/SR/KEP/III/2016', '2016-02-09', '4,2,1,0', 'P01', 73, ''),
(70, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efektivitas pemberian Amiksilin Durasi pendek dan Deksametason dalam penaganan Faringitis Akut', '2016-02-09', '2016-08-09', '070/135/BKBPM', '2016-02-09', 'Ketua Prodi Sekolah Farmasi ITB ', 'No.435a/II.C03/PP/2016', '2016-02-05', '4,2,1,0', 'P01', 74, ''),
(71, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh pelatihan stimulasi, deteksi dan intervensi dini tumbuh kembang (SDIDTK) terhadap kemampuan kader Posyandu dalam mendeteksi tumbuh kembang anak di wilayah kerja UPT Puskesmas Griya Antapani Kota Bandung ', '2016-02-03', '2016-08-03', '070/233/BKBPM', '2016-02-03', 'Ketua STIKes Jenderal Achmad Yani', 'No.B/221/STIKES/I/2016', '2016-01-28', '4,2,1,0', 'P01', 75, ''),
(72, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait dengan Data kejadian Hipertensidan Obesitas di UPT Puskesmas Caringin ', '2016-02-29', '2016-08-29', '070/436/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung ', 'No.DM.02.02.4.1/223/2016', '2016-02-26', '4,3,1,0', 'P01', 76, ''),
(73, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkaitAngka Status Gizi Balita , tumbuh kembang Balita dan penyakit yang menyerang Balita di UPT Puskesmas Garuda Kota Bandung  ', '2016-02-29', '2016-08-29', '070/435/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung ', 'No.DM.02.02.4.1/156/2016', '2016-02-24', '4,3,1,0', 'P01', 77, ''),
(74, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan antari pengetahuan gigi, asupan enrgi, asupan protein dan kejadian Kurang Energy Kronis (KEK) pada Ibu Hamil pengunjung UPT Puskesmas Ibrahim Adjie Kota Bandung ', '2016-02-02', '2016-08-02', '070/107/BKBPM', '2016-02-02', 'Kajur Gizi Potekes Bandung   ', 'No.LB.02.01/4.4/0076/2016', '2016-01-25', '4,2,1,0', 'P01', 78, ''),
(75, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Analisis Kebijakan dan Program Penanggulangan kemiskinan di Kota Bandung', '2016-01-22', '2016-07-22', '070/163/BKBPM', '2016-01-22', 'Wakil Dekan Bid. Akademik  FISIP UNPAD ', 'N0. 0194/UN6.G1.2/PL/2016', '2016-01-05', '4,2,1,0', 'P01', 79, ''),
(76, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pelaksanaan ASI Eksklusif di Puskesmas Kota Bandung Tahun 2014-2015 ', '2016-02-10', '2016-08-10', '070/292/BKBPM', '2016-02-10', 'Dekan Fakultas UNISBA ', 'No.064/Dek/FK-k/Skr/II/2016', '2016-02-05', '4,2,1,0', 'P01', 80, ''),
(77, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Pengaruh Relaksasi Napas Dalam terhadap penurunan Tekanan Darah pada Pasien Hipertensi di UPT Pukesmas Garuda', '2016-02-05', '2016-08-05', '070/264/BKBPM', '2016-02-05', 'Ketua Prodi S1 Keperawatan STIKes Rajawali ', 'No.B.039/SR/KEP/III/2016', '2016-02-09', '4,2,1,0', 'P01', 81, ''),
(78, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Inovasi Produk Pastry Bolu gulung dengan penambahan bahan baku tepung beras merah berdasarkan analisis daya terima konsumen   ', '2016-02-01', '2016-06-01', '070/96/BKBPM', '2016-02-01', 'Dekan Fakultas Pendidikan UPI ', 'No.310/UN.40.2D1/PL/2016', '2016-02-01', '4,2,1,0', 'P01', 82, ''),
(79, '2016-02-20', 'penelitian', 'Kp. Sadang Kec Cileunyi Kab Bandung', '2016-01-28', '2016-07-28', '070/204/BKBPM', '2016-01-28', 'Kajur Kesehatan Lingkungan POLTEKES Bandung ', 'No. DM.02.04/4.3/0027/2016 ', '2016-01-27', '4,3,1,0', 'P01', 83, ''),
(80, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pola Asuh dan Kesehatan dengan Status Gizi Balita', '2016-02-12', '2016-08-12', '070/312/BKBPM', '2016-02-12', 'Ketua Prodi D-III STIKes Rajawali ', 'No.B.020B/SR/Keb/II/2016', '2016-02-11', '4,2,1,0', 'P01', 84, ''),
(81, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Hubungan antara Asupan NAtrium, Asupan Kalium dengan Tekanan Darah Pada PAsien Hipertensi di Puskesmas Kopo Kota  Bandung', '2016-01-28', '2016-07-28', '070/80/BKBPM', '2016-01-28', 'Kajur  Gizi POLTEKES Bandung', 'No. LB.02.01/4.4/0112/2016', '2016-01-25', '4,2,1,0', 'P01', 85, ''),
(82, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Penyaluran Air Buang dan Drainase Kelurahan Cipedes', '2016-02-10', '2016-08-10', '070/289/BKBPM', '2016-02-10', 'Dekan Fakultas Teknik ITENAS', 'No.061/A.45/TL-FTSP/II/2016', '2016-02-09', '4,2,1,0', 'P01', 86, ''),
(84, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Inisisasi Menyusu Dini dengan Suhu Tubuh Bayi Baru Lahir di UPT Puskesmas Pagarsih ', '2016-02-22', '2016-02-22', '070/176/BKBPM', '2016-02-22', 'Ketua STIKes Jenderal Achmad Yani ', 'No.B/442/STIKES/II/2016', '2016-02-19', '4,2,1,0', 'P01', 88, ''),
(85, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Provider Initlated HIV Testing and Counseling (PITC) olehBidan Puskesmas dengan MotivasiIbu Hamildalam Pemeriksaan HIV di UPT Puskesmas Pagarsih Kota Bandung Tahun 2016 ', '2016-02-09', '2016-08-09', '070/279/BKBPM', '2016-02-09', 'Ketua STIKes Jenderal Achmad Yani  ', 'No.B/217/STIKES/I/2016', '2016-01-28', '4,2,1,0', 'P01', 89, ''),
(86, '2016-02-20', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Angka kejadian masalah pada kehamilan, Angka kelahiran , kunjungan ANC dan jumlah Ibu hamil yang mengalami komplikasi di RSKIA Kota Bandung    ', '2016-02-29', '2016-08-29', '070/429/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung ', 'No.DM.02.02.4.1/226/2016', '2016-02-26', '4,2,1,0', 'P01', 90, ''),
(87, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisis penerapan Hygene sanitasi yang berimplikasi kepada kepuasan konsumen cekeran midun madun ', '2016-01-28', '2016-07-28', '070/209/BKBPM', '2016-01-28', 'wakil dekan universitas pendidikan Indonesia fakultas pendidikan ilmu pengetahuan sosial ', '220/UN.40.2.D1/PL/2016  ', '2016-01-22', '4,2,1,0', 'P01', 91, ''),
(88, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perancangan Sistem Informasi Manajemen Paduan Pola Makan Diet Hipertensi', '2016-02-03', '2016-08-03', '070/243/BKBPM', '2016-02-03', 'ITHB ', 'No. 92/CRC/ITHB/II/2016', '2016-02-03', '4,2,1,0', 'P01', 92, ''),
(89, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Live Review Therapy terhadap Tingkat Depresi Lansia Di Kelurahan Mekar Wangi Wilayah Kerja Puskesmas Kopo Kota Bandung', '2016-02-02', '2016-08-02', '070/103/BKBPM', '2016-02-02', 'Wakil Dekan Fak Keperawatan UNPAD ', 'No. 3824/UN6.L/PP/2016', '2016-01-21', '4,2,1,0', 'P01', 93, ''),
(90, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan gaya Hidup Usia 46-55 Tahun  dengan Kejadian Fibromyalgia di Puskesmas Ciumbuleuit Kota Bandung', '2016-02-05', '2016-08-05', '070/256/BKBPM', '2016-02-05', 'Ketua STIKes Santo Boromeus', 'No 059/STIKes-SB/BAAK/Perm/I/2016', '2016-01-29', '4,2,1,0', 'P01', 94, ''),
(91, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Data jumlah Lansia dan Lansia yang menderita Hipertensi, Lansia yang menderita Hipertensi 6 Bulan terakhir dan jumlah Lansia ang melakukan Kunjungan Ulang dengan Hipertensi d iUPT Puskesmas pasirkaliki Kota Bandung    ', '2016-02-29', '2016-08-29', '070/428/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung  ', 'No.DM.02.02.4.1/201/2016', '2016-02-26', '4,3,1,0', 'P01', 95, ''),
(92, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Gambaran Determinan Itensi Ibu hamil dalam Menjaga Oral Hygiene selama masa kehamilan di Puskesmas X Kota Bandung', '2016-01-28', '2016-07-28', '070/79/BKBPM', '2016-01-28', 'Ketua Prodi Dokter Gigi Universitas Maranatha ', 'No.011/ProdiiSKG-UKM/I/2016', '2016-01-15', '4,2,1,0', 'P01', 96, ''),
(93, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahuan dengan Motivasi Siswa Dalam Penerapan Cuci Tangan Sebelum makan', '2016-01-27', '2016-07-27', '070/194/BKBPM', '2016-01-27', 'Dekan Fak Ilmu Keperawatan Univ  BSI ', 'No. 142/FIKA/UBSI/I/2016 ', '2016-01-21', '4,2,1,0', 'P01', 97, ''),
(94, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Hubungan tingkat Pengetahuan Ibu tentang demam berdarah dengue dengan penaganan awal demam berdarah dengue di Kel.Tamansari Kota Bandung', '2016-02-19', '2016-08-19', '070/357/BKBPM', '2016-02-19', 'Dekan Fakultas Kedokteran UNISBA ', 'No.028/Dek/FK-k/Skr/I/2016', '2016-01-07', '4,3,1,0', 'P01', 98, ''),
(95, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Makanan Jajanan Anak Sekolah Dasar', '2015-08-11', '2016-02-11', '070/1492/BKBPM', '2015-08-11', 'Dekan Fakultas Kedokteran Unpad ', 'No.3651/UN6.C1/PP/2015', '2015-07-28', '4,2,1,0', 'P01', 99, ''),
(96, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Kebersihan Mulut Kota Bandung', '2016-01-26', '2016-07-26', '070/70/BKBPM', '2016-01-26', 'Dekan FKG UNPAD  ', '366/UN6.F1/DL/2016 ', '2016-01-18', '4,2,1,0', 'P01', 100, ''),
(97, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan senam Hamil terhadap kecemasan pada Ibu Primigravida trimester III dalam menghadapi persalinan', '2016-02-22', '2016-08-22', '070/367/BKBPM', '2016-02-22', 'Ketua STIKes Rajawali  ', 'B.038B/SR/KEB/II/2016', '2016-02-15', '4,2,1,0', 'P01', 101, ''),
(99, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang pengaruh penyuluhan kesehatan terhadap pengetahuan remaja tentang HIV AIDS', '2016-01-26', '2016-07-26', '070/185/BKBPM', '2016-01-26', 'Dekan Fak Ilmu Keperawatan Univ  BSI ', '132/FIKA/UBSI/I/2016  ', '2016-01-21', '4,3,1,0', 'P01', 102, ''),
(100, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Faktor-faktor yang mempengaruhi aktivitas Fisik pada rumah tangga di Wilayah kerja UPT Puskesmas Ujung Berung Indah Kota Bandung    ', '2016-02-23', '2016-08-23', '070/388/BKBPM', '2016-02-23', 'Ketua STIKes Dharma Husada Bandung ', '159/SDHB/SPen/PSKMS1/II/2016', '2016-02-23', '4,3,1,0', 'P01', 103, ''),
(101, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Pengembangan Sarana Imunisasi Melalui pendekatan Fenomendogi Hermeneutik', '2016-02-10', '2016-08-10', '070/288/BKBPM', '2016-02-10', 'Ketua Prodi Fakultas Seni Rupa dan Desain I T B ', 'B.020/II.C11.5.5/PP/2016', '2016-01-27', '4,2,1,0', 'P01', 104, ''),
(102, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Inisiasi Menyusui Dini (IMD) Dengan Involusi Uterus Pada Ibu Post Partum 2 Minggu Di Puskesmas Garuda Kota Bandung', '2016-02-05', '2016-08-05', '070/256/BKBPM', '2016-02-05', 'Prodi DIII Kebidanan STIKes Rajawali ', 'B. 019C/SR/KEB/II/2016', '2016-02-02', '4,2,1,0', 'P01', 105, ''),
(103, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hasil Status pemerintahan dan perilaku kesehatan penderita diabetes mellitus tipe 2 peserta Prolanis', '2016-01-05', '2016-07-05', '070/14/BKBPM', '2016-01-29', 'Wakil Fakultas Keperawatan Unpad ', '402/UN6.L1/2016', '2016-01-21', '4,2,1,0', 'P01', 106, ''),
(104, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Profil penggunaan analgetik tanpa resep Dokter pada masyarakat yang berkunjung ke UPT Puskesmas Garuda Kota Bandung ', '2016-02-19', '2016-08-19', '070/166/BKBPM', '2016-02-19', 'Kajur Farmasi Kemenkes Poltekes Bandung   ', 'DM.02.04/$.7/168/2016', '2016-02-18', '4,2,1,0', 'P01', 107, ''),
(105, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prevalensi HIV dan Surat Keterangan Izin Studi Pendahuluan di Kota Bandung ', '2016-02-02', '2016-08-02', '070/231/BKBPM', '2016-02-02', 'Wakil Dekan Fakultas Keperawatan Unpad ', '408/UN6.L1/PP/2016', '2016-01-21', '4,2,1,0', 'P01', 108, ''),
(106, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sebaran Penyakit Infeksi Saluran Pernapasan Akut ( ISPA) Pada Balita Akibat Polusi Udara di Kota Bandung', '2016-02-15', '2016-08-15', '070/329/BKBPM', '2016-02-15', 'IPB Fak MIPA ', '07/IT3.7.4/PP/2016 ', '2016-02-01', '4,3,1,0', 'P01', 109, ''),
(107, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Jarak Kelahiran Dengan Perdarahan Post Partum Primer di RSUD Kota Bandung tahun 2014', '2016-02-05', '2016-08-05', '070/258/BKBPM', '2016-02-05', 'Prodi DIII Kebidanan STIKes Rajawali ', 'B.014B/SRI/KEB/II/2016 ', '2016-02-04', '4,2,1,0', 'P01', 110, ''),
(108, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Evaluasi tingkat pengetahuan masyarakat tentang antibiotik dari penggunaannya di salah satu puskesmas di kota Bandung', '2016-01-28', '2016-07-28', '070/76/BKBPM', '2016-01-13', 'Sekolah Tinggi Farmasi Bandung ', '015/STFB/S.P/I/2016  ', '2016-01-13', '4,2,1,0', 'P01', 111, ''),
(109, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan dukungan keluarga dengan kepatuhan control tekan darah pada pasien Hipertensi pesertaPolanis di UPT Puskesmas Ujung Berung IndahTahun 2015 ', '2016-02-03', '2016-08-03', '070/118/BKBPM', '2016-02-03', 'dari  Ketua Prodi Keperawatan STIKep Dharma Husada ', '099/SDHB/SPen/PSKPS1/I/2016', '2016-02-02', '4,2,1,0', 'P01', 112, ''),
(110, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kajian penyimpanan dan pendistribusian Vaksin di Dinas Kesehatan dan Puskesmas di Kota Bandung', '2016-02-19', '2016-08-19', '070/169/BKBPM', '2016-02-19', 'Ketua STIFB ', '025/STFB/S.P/I/2016', '2016-01-19', '4,2,1,0', 'P01', 113, ''),
(111, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisis daya terima Konsumen dan Studi Kelayakan Bisnis Produk Mousses Tape Ketan Hitam    ', '2016-01-29', '2016-07-29', '070/88/BKBPM', '2016-01-29', 'Dekan Fakultas Pendidikan UPI ', '297/UN.40.2D1/PL/2016', '2016-01-29', '4,2,1,0', 'P01', 114, ''),
(112, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Perilaku 3M dan Pemakaian Obat Nyamuk terhadap Kejadian Penyakit DBD di RW 7 Ke; Margasari Kec Buah Batu Kota Bandung.', '2016-02-01', '2016-08-01', '070/228/BKBPM', '2016-02-01', 'Kajur Kesehatan Lingkungan POLTEKES Bandung ', 'DM 02.04/4.3/0067/2018 ', '2016-02-03', '4,3,1,0', 'P01', 115, ''),
(113, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait kepuasan pasien peserta jaminan Kesehatan Nasional Bukan Penerima Bantuan Iuran di Pelayanan Primer Poli Gigi UPT Puskesmas Puter dan Puskesmas Banjar Nambo   ', '2016-02-29', '2016-08-29', '070/203/BKBPM', '2016-02-29', 'Dekan Fakultas Kedokteran Gigi Unpad ', '923/UN6.F2/DL/2016', '2016-02-09', '4,3,1,0', 'P01', 116, ''),
(114, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Jumlah Akseptor KB, kunjungan Akseptor KB di UPT Puskesmas Caringin 6 bulan terakhir serta data pelayanan KCA dan Jumlah Akseptor KB di Kota Bandung   ', '2016-02-29', '2016-08-29', '070/437/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/229/2016', '2016-02-26', '4,3,1,0', 'P01', 117, ''),
(115, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh terapi Akupunktur pada titik LI-4 dan Sp-6 terhadap penurunan nyeri persalinan inparlu kala I', '2016-02-15', '2016-08-15', '070/156/BKBPM', '2016-02-15', 'Ketua Prodi Fakultas Kedokteran Unpad ', '70/UN6.CI.2.4/PP/2016', '2016-02-03', '4,2,1,0', 'P01', 118, ''),
(116, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang hubungan antara PHBS rumah tangga dengan kejadian penyakit diare', '2016-01-28', '2016-07-28', '070/200/BKBPM', '2016-01-13', 'Ketua Prodi SI Ilmu kesehatan Masyarakat STIKes Dharma Husada ', '041/SDHB/SIP/PSKMS1/I/2016  ', '2016-01-22', '4,2,1,0', 'P01', 119, ''),
(117, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prevalensi Periodontitis Agresif di Kota Bandung ', '2016-02-02', '2016-08-02', '070/111/BKBPM', '2016-02-02', 'Dekan Fakultas Kedokteran Gigi Unpad', '444/UN6.f1/DL/2016', '2016-01-21', '4,2,1,0', 'P01', 120, ''),
(118, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Hubungan Pengetahuan Ibu, Pekerjaan Paparan Penyuluhan Gizi  dan Pemberian ASI Eksklusif pada Bayi Usia 7-12 Bulan di Puskeksmas Caringin Kota Bandung', '2016-01-29', '2016-07-29', '070/85/BKBPM', '2016-01-29', 'Kajur  Gizi POLTEKES Bandung ', 'LB.02.01/4.4/0098/2016 ', '2016-01-25', '4,2,1,0', 'P01', 121, ''),
(119, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Kesehatan Reproduksi pada Remaja Tahun 2015-2016', '2016-01-29', '2016-07-29', '070/215/BKBPM', '2016-01-29', 'Ketua STIKep PPNI jawa Barat ', 'I/043/STIKep/PPNI/JBR/I/2016', '2016-01-25', '4,2,1,0', 'P01', 122, ''),
(120, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Penyakit Infeksi Saluran pernapasan atas ', '2016-01-30', '2016-07-30', '070/221/BKBPM', '2016-01-30', 'Ketua Fakultas Ilmu dan Teknologi Kebumian ITB  ', '039/II C05.5.3/PP/2016', '2016-02-01', '4,2,1,0', 'P01', 123, ''),
(121, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh pengelolaan sampah terhadap kualitas kesehatan lingkungan (Penelitian di Masyarakat Muhamad Ramdan Rw.09 Kel Cigereleng Kec.Regol Kota Bandung)', '2016-01-21', '2016-07-21', '070/50/BKBPM', '2016-01-21', 'Dekan Fakultas Dakwah dan Komunikasi UIN ', 'Un.05/III.4/TL.01/0203/2016', '2016-02-01', '4,2,1,0', 'P01', 124, ''),
(122, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Sikap Ibi Tentang Imunisasi Dasar Lengkap Dengan Kel;engkapan Imunisasi Dasar Pada Bayi Di Wilayah Kerja Puskesmas Ibrahim Aji Kota Bandung', '2016-02-05', '2016-08-05', '070/257/BKBPM', '2016-02-05', 'DIII Kebidanan STIKes Rajawali ', 'B. 023A/SR/KEB/II/2016 ', '2016-02-02', '4,3,1,0', 'P01', 125, ''),
(123, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang studi pengelolaan dan mutu pelayanan obat sebelum dan sesudah era BPJS Di suatu puskesmas di Bandung', '2016-01-28', '2016-07-28', '070/77/BKBPM', '2016-01-13', 'Sekolah Tinggi Farmasi Bandung ', '017/STFB/S.P/I?2016  ', '2016-01-13', '4,2,1,0', 'P01', 126, ''),
(124, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Sitem pengolahan data Rekam Medis dalam menunjang akurasi pelaporan Eksternal di UPT Puskesmas Puter ', '2016-02-04', '2016-08-04', '070/248/BKBPM', '2016-02-04', 'Ketua STIKes Boromeus', '005/STIKes-SB/BAAK/Perm/I/2016', '2016-01-04', '4,2,1,0', 'P01', 127, ''),
(125, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Model Konseptual Pelayanan Kesehatan Bagi Penduduk Lanjut Usia di Fasilitas Kesehatan Tingkat Pertama Kota Bandung', '2016-02-03', '2016-02-03', '070/119/BKBPM', '2016-02-04', 'Ketua Program Pascasarjana FK UNPAD ', '05/UN6.C1.2.7/PP/2016 ', '2016-01-27', '4,2,0', 'P01', 128, ''),
(126, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pelayanan Keseahtan Medis di Unit Pelaksana UPT Puskesmas Ibrahim Adjie Kota Bandung dihubungkan dengan Undang-Undang No.36 Tahun 2014 tentang Tenaga Kesehatan ', '2016-01-25', '2016-07-25', ': 070/177/BKBPM', '2016-01-25', 'Dekan Fakultas Hukum Unisba   ', '33/K3/DGH/I/2016', '2016-01-29', '4,2,1,0', 'P01', 129, ''),
(127, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Tinjauan Kepadatan Jentik dan Faktor-Faktor yang Mempengaruhinya di Kota Bandung', '2016-01-28', '2016-07-28', '070/205/BKBPM', '2016-01-28', 'Kajur Kesehatan Lingkungan POLTEKES Bandung ', ' DM.02.04/4.3/0028/2016 ', '2016-01-28', '4,3,1,0', 'P01', 130, ''),
(128, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisis pra penerapan sanitation Standard Operating proscedur di Suis Butcher Steak House Setiabudhi Bandung  ', '2016-01-29', '2016-07-29', '070/87/BKBPM', '2016-01-29', 'Dekan Fakultas Pendidikan UPI ', '297/UN.40.2D1/PL/2016', '2016-01-29', '4,2,1,0', 'P01', 131, ''),
(129, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran pengaruh pemberian penyuluhan kesehatan tentang senam hamil terhadap tingkat Motivasi Ibu melakukan senam hamil di Kota Bandung Tahun 2015', '2016-01-27', '2016-07-27', '070/215/BKBPM', '2016-01-27', 'Ketua LPPM DIII Kebidanan STIKes Bahakti Kencana ', '106/STKes-BK/YAGK/f.2/XII/2016', '2016-01-24', '4,2,1,0', 'P01', 132, ''),
(130, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Cooking Center dan Ojek Makanan Balita (OMABA) dengan Prbaikan Status Gizi Pada Balita di Puskesmas Riung Bandung', '2016-01-28', '2016-07-28', '070/202/BKBPM', '2016-01-28', 'Wakil Ketua STIKes Jend A Yani ', 'B/5253 /STIKES /XII/2015', '2015-12-18', '4,2,1,0', 'P01', 133, ''),
(131, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Provider Initlated HIV Testing and Counseling (PITC) olehBidan Puskesmas dengan MotivasiIbu Hamildalam Pemeriksaan HIV di UPT Puskesmas Pagarsih Kota Bandung Tahun 2016 ', '2016-02-09', '2016-08-09', '070/279/BKBPM', '2016-02-09', 'Ketua STIKes Jenderal Achmad Yani  ', 'B/217/STIKES/I/2016', '2016-01-28', '4,2,1,0', 'P01', 89, ''),
(132, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan pengetahuan dan sikap Ibu yang mempunyai Balita tentang pentingnya kunjungan Posyandu RW 04 Desa Palasari Kec.Cibiru Kota Bandung Periode Januari-April Tahu 2016 ', '2016-02-22', '2016-08-22', '070/171/BKBPM', '2016-02-22', ' Ketua LPPM D III Kebidanan STIKes Bhakti Kencana    ', '011/STIKes-BK/YAGK/f.2/XII/2015', '2015-12-21', '4,2,1,0', 'P01', 134, ''),
(133, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Hubungan Diet dan Aktivitas Fisik terhadap Kejadian komplikasi DM pada Pasien DM Tipe 2 di UPT Pukesmas Pasundan Kota Bandung Tahun 2016', '2016-02-22', '2016-08-22', '070/180/BKBPM', '2016-02-22', 'Ketua Prodi S1 Keperawatan Dharma Husada ', '138/SDHB/SPen/PSKPS1/II/2020', '2016-02-18', '4,3,1,0', 'P01', 135, '');
INSERT INTO `penelitian` (`id_penelitian`, `waktu_pembuatan`, `jenis_surat`, `maksud`, `waktu_mulai`, `waktu_selesai`, `no_bkbpm`, `tanggal_bkbpm`, `surat`, `no_surat`, `tanggal_surat`, `tembusan`, `id_pejabat`, `id_pengaju`, `status_mail`) VALUES
(134, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran kejadian ruptur perineum dengan berat badan lahir pada Ibu bersalin di UPT Puskesmas Garuda Kota Bandung ', '2016-02-11', '2016-08-11', ': 070/308/BKBPM', '2016-02-11', 'Ketua Prodi D III STIKes Rajawali ', 'B.033B/SR/KEB/2016', '2016-02-03', '4,2,1,0', 'P01', 136, ''),
(135, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efektivitas music Klasik, music tradisional, dan moral sebagai adjuvant dari terapi standar dalam menurunkan tekanan darah Klien Hipertensi Primer di Puskesmas Ledeng Kota Bandung ', '2016-02-02', '2016-08-02', '070/106/BKBPM', '2016-02-02', 'Dekan Fakultas Keperawatan Unpad ', '333/UN6.L/PP/2016', '2016-01-19', '4,2,1,0', 'P01', 137, ''),
(136, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Data jumlah Klien yang dirawat, data peningkatan klien yang dirawatan 3 Tahun terakhir, data alasan kenapa dirawatan di Panti Sosial Tresna Wherda Budi Pertiwi     ', '2016-02-29', '2016-08-29', '070/433/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung  ', 'DM.02.02.4.1/209/2016', '2016-02-26', '4,3,1,0', 'P01', 138, ''),
(137, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Profil tangki septik beserta lokasinya', '2016-02-19', '2016-08-19', '070/358/BKBPM', '2016-02-19', 'Kajur Fakultas Tennik Sipil dan Perencanaan ITENAS  ', '003/A.62.03/TL-FTSP/II/2016', '2016-02-17', '4,2,1,0', 'P01', 139, ''),
(138, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Data Kesehatan Gizi ', '2016-02-24', '2016-08-24', '070/400/BKBPM', '2016-02-24', 'Kajur Layanan Telkom University ', '1351/AKD1/SCI/2015', '2016-02-19', '4,3,1,0', 'P01', 140, ''),
(139, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Jumlah ibu bersalin di UPT Puskesmas Garuda periode Januari Desember 2015 .Jumlah Akseptor KB (IUD) Post Plasenta, Jumlah Pasangan usia subur', '2016-02-11', '2016-08-11', '070/306/BKBPM', '2016-02-11', 'Ketua Prodi D-III STIKes Rajawali ', 'B.037B/SR/Keb/II/2016', '2016-02-09', '4,2,1,0', 'P01', 141, ''),
(140, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Bahaya Makanan Manis terhadap perkembangan Anak', '2016-02-11', '2016-08-11', '070/304/BKBPM', '2016-02-11', 'Kepala Institut Teknologi Harapan', '019/P.5/DKV-ITHB/II/16', '2016-02-10', '4,2,1,0', 'P01', 142, ''),
(141, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan tingkat kesejahteraan Keluarga dengan status Gizi Balita', '2016-02-22', '2016-08-22', '070/373/BKBPM', '2016-02-22', 'Ketua STIKep PPNI Jawa Barat ', 'I/112/STIKep/PPNI/JBR/II/2016', '2016-02-15', '4,2,1,0', 'P01', 143, ''),
(142, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kejadian teritinggi diKota Bandung masalah penyakit DBD gerakan 3M di Kel.Turangga dan data warga', '2016-01-12', '2016-07-12', '070/76/BKBPM', '2016-01-12', 'Dekan FAkultas Kedokteran Unisba ', '025/Dek/FK-k/Skr/I/2016 ', '2016-01-07', '4,2,1,0', 'P01', 144, ''),
(143, '2016-02-21', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisa jumlah kunjungan pasien ke Puskesmas setelah dijalankannya program JKN diKota Bandng', '2016-02-09', '2016-08-09', '070/82/BKBPM', '2016-02-09', 'Dekan Fakultas MIPA Unpad  ', '571/UN6.D.1/PP/2016', '2016-01-29', '4,2,1,0', 'P01', 145, ''),
(144, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbedaan Kenaekan berat badan antara Bayi yang dipijat dengan yang tidak dipijat di UPT Puskesmas Ibrahim Adjie Kota Bandung Th.2016', '2016-03-07', '2016-09-07', '070/223/BKBPM', '2016-03-07', 'Dekan Fakultas Kedokteran Unisba ', '073A/Dek/FK-K/Skr/III/2016 ', '2016-03-04', '4,2,1,0', 'P01', 146, ''),
(145, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Persediaan Alat Medis dan Pengelolaan Data Alat Medis', '2016-03-21', '2016-09-21', '070/708/BKBPM', '2016-03-21', 'Kaprodi SI Unikom ', '471/Prodi-IS/FTIK/UNIKOM/II/2016 ', '2016-02-29', '8,4,2,1,0', 'P01', 147, ''),
(146, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Karies Gigi, Kesehatan Gigi dan Mulut', '2016-03-10', '2016-09-10', '070/580/BKBPM', '2016-03-10', 'Kaprog Desain Komunitas Visual Fakultas Seni Rupa dan Desain Universitas Kristen Maranatha', '224/DKV/FSRD/UKM/III/2016', '2016-03-10', '4,2,1,0', 'P01', 148, ''),
(147, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Hipertensi dan Pasien yang Merokok ', '2016-03-05', '2016-09-05', '070/531/BKBPM', '2016-03-05', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/344/2016 ', '2016-03-02', '4,2,1,0', 'P01', 149, ''),
(148, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Ibu Hamil', '2016-03-23', '2016-03-22', '070/731/BKBPM', '2016-03-23', 'Direktur TNI AU Poltekes Ciumbuleuit ', '105/Poltekes/III/2016 ', '2016-03-23', '4,2,1,0', 'P01', 150, ''),
(149, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Jumlah Populasi Lansia dan Data Penyakit yang Diderita Oleh Lansia', '2016-03-17', '2016-09-17', '070/657/BKBPM', '2016-03-17', 'Dekan FPOK Universitas Pendidikan Indonesia ', '0963/UN40.6/LT/2016 ', '2016-03-11', '4,2,1,0', 'P01', 151, ''),
(150, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Peningkatan Berat Badan Ibu Hamil dengan Berat Bayi Baru Lahir', '2016-03-24', '2016-09-24', '070/751/BKBPM', '2016-03-24', 'Ketua Prodi S1 Keperawatan STIKes Dharma Husada', '451/SDHB/SIP/PSKPS1/III/', '2016-03-22', '4,2,1,0', 'P01', 152, ''),
(151, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Tingkat Kecemasan Ibu Hamil Usia High Risk    ', '2016-02-13', '2016-08-13', '070/318/BKBPM', '2016-02-13', 'Ketua Prodi Fakultas Kedokteran Unpad ', '96/UN6.C1.2.4/PP/2016  ', '2016-06-11', '4,2,1,0', 'P01', 153, ''),
(152, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Faktor-faktor Resiko yang Berhubungan dengan Persalinan Prematur', '2016-03-28', '2016-09-28', '070/775/BKBPM', '2016-03-28', 'Ketua Prodi S1 Keperawatan STIKes Dharma Husada ', '453/SDHB/SIP/PSKPS1/III/2016 ', '2016-03-22', '4,2,1,0', 'P01', 154, ''),
(153, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Manajemen Puskesmas Cipadung', '2016-03-23', '2016-03-22', '070/738/BKBPM', '2016-03-23', 'Ketua Prodi S1 Keperawatan STIKes Dharma Husada ', '460/SDHB/L/PSKPS1/III/2016 ', '2016-03-22', '4,2,1,0', 'P01', 155, ''),
(154, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Buku Kas Umum,Neraca dan laporan rencana Anggaran  ', '2016-02-23', '2016-08-23', '070/385/BKBPM', '2016-02-23', 'Dekan Universitas Widyatama ', '0068/SM-REG/BPAA-UTAMA/II/', '2016-02-15', '4,2,1,0', 'P01', 156, ''),
(155, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Lansia yang Terlantar', '2016-03-16', '2016-09-16', '070/642/BKBPM', '2016-03-16', 'Dekan FPOK Universitas Pendidikan Indonesia ', '0843/UN40.6/LT/2016 ', '2016-03-11', '4,2,1,0', 'P01', 157, ''),
(156, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Kebiasaan Sarapan dengan Prestasi Belajar Siswa Kelas 5 SD Pertiwi Kota Bandung Tahun 2016', '2016-03-22', '2016-03-22', '070/292/BKBPM', '2016-03-22', 'Dekan Fakultas Kedokteran Universitas Islam Bandung', '029B/Dek/Fk-k/Skr/III/2016', '2016-03-21', '4,2,1,0', 'P01', 158, ''),
(157, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Videomotion Infografik Mengenai Bahaya Penyakit Periodontal terhadap masyarakat.', '2016-03-18', '2016-09-18', '070/677/BKBPM', '2016-03-18', 'Wakil Dekan Bid Akademik ITENAS', '0430/Survey FSRD-Itenas/III/2016 ', '2016-03-14', '4,2,1,0', 'P01', 159, ''),
(158, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Pengaruh Video dalam Model Test HIV dan Konsleting Inisiasi petugas Kesehatan (TKIP) terhadap Keikutsertaan Ibu Hamil dan Pasangannya untuk Test HIV Kajur Kebidanann Poltekes Bandung', '2016-03-10', '2016-09-10', '070/510/BKBPM', '2016-03-10', 'Kajur Keperawatan Potekes Bandung ', 'DM.02.02.4.1/297/2016', '2016-03-10', '4,2,1,0', 'P01', 160, ''),
(159, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Persalinan SC dan Angka Infeksi Luka Operasi', '2016-03-17', '2016-09-17', '070/654/BKBPM', '2016-03-17', 'STIKes Jenderal Achmad Yani ', 'B/838/STIKES/III/2016 ', '2016-03-15', '4,2,1,0', 'P01', 161, ''),
(160, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisis SWOT dan Fishbone (Manajemen Keperawatan)', '2016-03-19', '2016-09-19', '070/686/BKBPM', '2016-03-19', 'Ketua Prodi S1 Keperawatan STIKes Dharma Husada ', '443/SDHB/S1K/PSKPS1/III/2016 ', '2016-03-18', '4,2,1,0', 'P01', 162, ''),
(161, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Karakteristik dan Tingkat Pengetahuan Ibu Tentang Asi Eksklusif di UPT Puskesmas Ibrahim Adjie Bandung Periode Maret-Mei 2016', '2016-03-16', '2016-09-16', '070/270/BKBPM', '2016-03-16', 'Dekan Fakultas Kedokteran Universitas Islam ', '119/Dek/FK-k/Skr/III/2015 ', '2016-03-10', '4,2,1,0', 'P01', 163, ''),
(162, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Tingkat Pengetahuan Kebersihan Gigi dan Mulut dengan Perilaku Mengikat Gigi Pada Siswa Siswi Kelas 4 dan 5 di SD Pertiwi, Kelurahan Tamansari Kota Bandung', '2016-03-15', '2016-09-15', '070/260/BKBPM', '2016-03-15', 'Dekan Fakultas Kedokteran Universitas Islam Bandung', '150F/Dek/FK-k/Skr/III/2016 ', '2016-03-14', '4,2,1,0', 'P01', 164, ''),
(163, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Ibu Hamil yang Pernah Abortus', '2016-03-16', '2016-09-16', '070/646/BKBPM', '2016-03-16', 'Ketua Prodi S1 Keperawatan STIKep PPNI Jawa Barat ', 'I/141/STIKep/PPNI/JBR/II/2016 ', '2016-02-24', '4,2,1,0', 'P01', 165, ''),
(164, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Data Penderita Penyakit Bronkitis Kronis,pada Usia berapa dan jenis Kelamin apa,data jumlah perokok yang menderita penyakit Bronkitis Kronis di UPT Puskesmas Garuda Kota Bandung ', '2016-03-14', '2016-09-14', '070/510/BKBPM', '2016-03-04', 'Kajur Keperawatan Potekes Bandung', 'DM.02.02.4.1/297/2016', '2016-02-19', '4,2,1,0', 'P01', 166, ''),
(165, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efektivitas palaksanaan program Prevention Mother to Child Transmition di Kota Bandung ', '2016-03-08', '2016-09-08', '070/568/BKBPM', '2016-03-08', 'Dekan Fakultas Ilmu Sosial dan Ilmu Politik Unpad ', '2384/UN6.GI/PL/2016 ', '2016-02-26', '4,3,2,1,0', 'P01', 167, ''),
(166, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu yang Mempunyai Balita (1-5) Tahun tentang Posyandu di Rw. 04 Kel. Cirangrang Kec. Babakan Ciparay Kota Bandung', '2016-03-30', '2016-03-22', '070/800/BKBPM', '2016-03-30', 'Direktur Poltekes TNI AU Ciumbuleuit ', '105/Poltekes/III/2016 ', '2016-03-29', '5,4,3,2,1,0', 'P01', 168, ''),
(167, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Pemberian rehidrasi Oral berbasis beras terhadap Penurunan Intensitas Diare pada Anak Usia 1-5 Tahun di Puskesmas Caringin Kota Bandung', '2016-02-22', '2016-08-22', '070/177/BKBPM', '2016-02-22', 'Ketua  Prodi S1 Keperawatan STIKes Rajawali', 'B.103/SR/KEP/II/2016 ', '2016-02-23', '4,3,1,0', 'P01', 169, ''),
(168, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Senam Nifas dan Pijat Oxytocin terhadap Involusi Uteri', '2016-03-29', '2016-03-22', '070/331/BKBPM', '2016-03-29', 'Direktur Politeknik Kesehatan Kemenkes Bandung ', 'LB.02.04/4.2/0308/2016 ', '2016-03-22', '5,4,3,2,1,0', 'P01', 170, ''),
(169, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Tingkat Pengetahuan Mencuci Tangan dengan Perilakunya Pada Siswa Kelas 4 dan 5 SD Pertiwi di Kelurahan Tamansari Pada Tahun 2016', '2016-03-23', '2016-03-22', '070/299/BKBPM', '2016-03-23', 'Dekan Fakultas Kedokteran Universitas Islam Bandung ', '088B/Dek/Fk-k/Skr/III/2016 ', '2016-03-21', '4,2,1,0', 'P01', 171, ''),
(170, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Diabetes Melitus', '2016-03-23', '2016-03-22', '070/734/BKBPM', '2016-03-23', 'Dekan FPOK Universitas Pendidikan Indonesia ', '1114/UN40.6/LT/2016 ', '2016-03-23', '2,1,0', 'P01', 172, ''),
(171, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu  tentang Mencuci Tangan sebagai Slah Satu factor Pencegahan Diare di Posyandu', '2016-03-14', '2016-09-14', '070/605/BKBPM', '2016-03-14', 'Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/303/2016', '2016-03-01', '4,3,1,0', 'P01', 173, ''),
(172, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Analisis SWOT dan Fishbone ( Manajemen Keperawatan )', '2016-03-19', '2016-09-19', '070/684/BKBPM', '2016-03-19', 'Kaprodi S1 Keperawatan STIKes DHB ', '437/SDHB/SIKPS1/III/2016', '2016-03-18', '4,3,2,1,0', 'P01', 174, ''),
(173, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Anemia', '2016-03-15', '2016-09-15', '070/629/BKBPM', '2016-03-15', 'Ketua Prodi DKV Universitas Pasundan ', '054/UNPAS/FISS/DKV/P.DT/III/2016 ', '2016-03-14', '4,2,1,0', 'P01', 175, ''),
(174, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Wanita yang terkena positf Kanker serviks dan data pemeriksaan IVA test', '2016-03-03', '2016-09-03', '070/48/BKBPM', '2016-03-03', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.4.1/297/2016  ', '2016-03-01', '4,2,1,0', 'P01', 176, ''),
(175, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Pendidikan Kesehatan terhadap Perilaku Pasien TB dalam Mencegah Penularan di Puskesmas Caringin Kota Bandung', '2016-02-22', '2016-08-22', '070/178/BKBPM', '2016-02-22', 'Ketua  Prodi S1 Keperawatan STIKes Rajawali ', 'B.133/SR/KEP/III/2016', '2016-03-10', '4,2,1,0', 'P01', 177, ''),
(176, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbandingan Tingkat Nyeri Primigravida dan Multigravida dengan Persalinan Normal di Puskesmas Garuda ', '2016-03-22', '2016-03-22', '070/293/BKBPM', '2016-03-22', 'Ketua Prodi S1 Keperawatan STIKes Rajawali ', 'B.144/SR/KEP/III/2016 ', '2016-03-18', '4,2,1,0', 'P01', 178, ''),
(177, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Self Efficacy dalam pengelolaandiri pasien DM/Type II di Prolanis UPT Puskesmas Talagabodas Kota Bandung    ', '2016-03-03', '2016-09-03', '070/214/BKBPM', '2016-03-03', 'Ketua STIKes AISYIYAH BANDUNG ', '553/AKD.02/STIKes-AB/II/', '2016-02-29', '4,2,1,0', 'P01', 179, ''),
(178, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data kejadian Katarak,angka kebutaan akibat Katarak, karakteristik penderita Katarak, profil Kesehatan Kota Bandung', '2016-03-04', '2016-09-04', '070/523/BKBPM', '2016-03-04', 'Kajur Keperawatan Poltekes Bandung  ', 'DM.02.02.4.1/372/2016  ', '2016-03-01', '4,2,1,0', 'P01', 180, ''),
(179, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbedaan Efektivitas terapi Akupunktur titik Hegu dan titik Shenmen terhadap penurunan Gejala Kecamasan Premenstrual Syndrome pada Remaja    ', '2016-02-24', '2016-08-24', '070/193/BKBPM', '2016-02-24', 'Ketua Prodi Fakultas Kedokteran Unpad ', '116/UN6.C1.2.4/PP/2016  ', '2016-02-23', '4,2,1,0', 'P01', 181, ''),
(180, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan TB PAru dengan Status Gizi Di Wilayah Kerja Puskesmas Garuda', '2016-02-03', '2016-08-03', '070/500/BKBPM', '2016-03-03', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.4.1/270/2016  ', '2016-02-28', '4,2,1,0', 'P01', 182, ''),
(181, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Perilaku Ibu Menyusui dalam Pemberian ASI Eksklusif pada Bayi 0-6 Bulan di UPT Puskesmas Ibrahim Ajdi', '2016-02-03', '2016-09-03', '070/501/BKBPM', '2016-03-03', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.4.1/254/2016  ', '2016-03-03', '4,2,1,0', 'P01', 183, ''),
(182, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Jumlah Anak Usia Todler (1-3 Tahun)', '2016-03-16', '2016-09-16', '070/650/BKBPM', '2016-03-16', 'dari Kepala Jurusan Keperawatan Politeknik Kesehatan ', 'DM.02.02.4.1/419/2016 ', '2016-03-16', '4,2,1,0', 'P01', 184, ''),
(183, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sikap Penderita Tuberkulosis Paru', '2016-03-23', '2016-03-22', '070/737/BKBPM', '2016-03-23', 'Direktur Poltekes TNI AU Ciumbuleuit ', '105/Poltekes/III/2016', '2016-03-23', '4,2,1,0', 'P01', 185, ''),
(184, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengetahuan Bagian Kepegawaian Rumah Sakit Tentang Kebutuhan Profesi Refraksi Optisi di Rumah Sakit Kota Bandung Bagian Timur', '2016-03-18', '2016-09-18', '070/277/BKBPM', '2016-03-17', 'Prodi D3 Refrasi Optisi STIKes DHB ', '149/SDHB/SIP/PSROD3/III/', '2016-03-17', '4,2,1,0', 'P01', 186, ''),
(185, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Data Rumah Sakit di Kota Bandung dan Tenaga Refraksi Optisien di Ko0ta Bandung', '2016-03-11', '2016-09-11', '070/591/BKBPM', '2016-03-11', 'Prodi D3 Refrasi Optisi STIKes DHB ', '132/SDHB/L/PSROD3/III/2016 ', '2016-03-11', '4,2,1,0', 'P01', 187, ''),
(186, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Tingkat Pengetahuan Lansia tentang Senam Otak di RW. 06 Kelurahan Pamoyanan Kota Bandung ', '2016-03-23', '2016-03-22', '070/296/BKBPM', '2016-02-23', 'Ketua Prodi S1 Keperawatan STIKep PPNI Jawa Barat ', 'I/205/STIKep/PPNI/JBR/III/2016 ', '2016-03-10', '4,2,1,0', 'P01', 188, ''),
(187, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efektifitas Video Sebagai Media Penyuluhan Kesehatan Tentang Penggunaan Antibiotik di Puskesmas Talaga Bodas Kota Bandung', '2016-03-18', '2016-09-18', '070/278/BKBPM', '2016-03-18', 'Dekan Fakultas Farmasi Universitas Padjadjaran', '1086/UN6.P1/LT/2016 ', '2016-03-07', '4,2,1,0', 'P01', 189, ''),
(188, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Penentuan Faktor Resiko Sanitasi Rumah Tinggal pada kejadian DBD di Kota Bandung', '2016-02-04', '2016-08-04', '070/121/BKBPM', '2016-02-04', 'Kepala Lokalitbang P2B2 Cia', 'LB.02.01/IV.7/0191/2016', '2016-02-02', '4,3,1,0', 'P01', 190, ''),
(189, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Tingkat Pengetahuan Keluarga dengan Sikap Keluarga dalam Pemberian Perawatan Activites Daily Living (ADL) pada Lansia di Puskesmas  ', '2016-01-28', '2016-07-28', '070/199/BKBPM', '2016-01-28', 'Dekan Fakultas Ilmu Keperawatan BSI Bandung ', '073A/Dek/FK-K/Skr/III/2016 ', '2016-02-01', '4,2,1,0', 'P01', 191, ''),
(190, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu Mengenai Pencegahan dan Perawatan Diare di Rumah Pada Balita  di Wil kerja Puskesmas Garuda', '2016-03-01', '2016-09-01', '070/458/BKBPM', '2016-03-01', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.4.1/273/2016  ', '2016-03-01', '4,3,1,0', 'P01', 192, ''),
(191, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Keluarga tentang Faktor Resiko terjadinya Hypertensi di wilayah kerja UPT Puskesmas Pasirkaliki', '2016-03-01', '2016-09-01', '070/460/BKBPM', '2016-03-01', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.4.1/214/2016  ', '2016-02-26', '4,2,1,0', 'P01', 193, ''),
(192, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perilaku Hidup Bersih dan Sehat', '2016-03-15', '2016-09-15', '070/625/BKBPM', '2016-03-15', 'Dekan FPOK Universitas Pendidikan Indonesia ', '0826/UN40.6/LT/2016 ', '2016-03-11', '4,2,1,0', 'P01', 194, ''),
(193, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Antusiasme Warga Kota Bandung terhadap Pelaksanaan PIN (Pekan Imunisasi Nasional)', '2016-03-29', '2016-03-22', '070/790/BKBPM', '2016-03-20', 'Ketua Prodi Ilmu Komunikasi Fakultas Ilmu Sosial dan Ilmu Politik Universitas Pasundan ', '56/Unpas-FISIP/IK/N/III/2016 ', '2016-03-28', '4,3,2,1,0', 'P01', 195, ''),
(194, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Jumlah Bayi Lahir dan BBLR di UPT Puskesmas Ibrahim Adjie Kota Bandung', '2016-03-05', '2016-09-05', '070/533/BKBPM', '2016-03-05', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/252/2016 ', '2016-03-04', '4,2,1,0', 'P01', 196, ''),
(195, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Jumlah Balita yang Diklasifikasikan Pneumonia Berdasarkan Manajemen Terpadu Balita Sakit (MTBS) oleh Petugas Kesehatan Puskesmas Garuda Kota Bandung 6 Bulan terakhir', '2016-02-29', '2016-08-29', '070/432/BKBPM', '2016-02-29', 'Ketua Jurusan Keperawatan Politeknik Kesehatan Bandung', 'DM.02.02.4.1/510/2016 ', '2016-03-21', '4,2,1,0', 'P01', 197, ''),
(196, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Jumlah Bayi, Balita, Kunjungan penderita Pneumonia pada Bayi dan Balita serta yang mempunyai mKIA dan KMS di UPT Puskesmas Pasirkaliki Kota Bandung  ', '2016-02-29', '2016-08-29', '070/432/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung ', '. DM 02.02.4.1/195/2016', '2016-02-26', '4,2,1,0', 'P01', 198, ''),
(197, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gastritis yang terjadi di Kalangan Siswa SMA', '2016-03-04', '2016-09-04', '070/509/BKBPM', '2016-03-04', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.04.1/263/2016 ', '2016-02-29', '4,2,1,0', 'P01', 199, ''),
(198, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sistem Informasi Rekam Medis ', '2016-01-14', '2016-07-14', '070/95/BKBPM', '2016-01-14', 'Ketua Prodi Sistem Informasi Universitas Komputer Indonesia', '686/Prodi-IS/FTIK/UNIKOM/III/2016 ', '2016-03-22', '4,2,1,0', 'P01', 200, ''),
(199, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Diabetes Melitus', '2016-03-21', '2016-09-21', '070/709/BKBPM', '2016-03-21', 'Dekan FPOK Universitas Pendidikan Indonesia ', '1074/UN40.6/LT/2016 ', '2016-03-21', '4,2,1,0', 'P01', 201, ''),
(200, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perancangan Sistem Informasi Pelayanan Berbasis Web di Puskesmas Cikutralama ', '2016-01-18', '2016-07-18', '070/128/BKBPM', '2016-01-18', 'Kaprodi SI Unikom', '494/Prodi-IS/FTIK/UNIKOM/II/2016 ', '2016-03-04', '5,4,1,0', 'P01', 36, ''),
(201, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisis pengaruh kualitas pelayanan pendaftaran pasien rawat jalan terhadap kepuasan pasien di UPT Puskesmas Kopo Bandung', '2016-03-14', '2016-09-14', '070/599/BKBPM', '2016-03-14', 'Direktur Politeknik PIKSI Ganesha ', '019/Poltek-PG/11.2/2015 ', '2016-03-15', '4,2,1,0', 'P01', 202, ''),
(202, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pemeriksaan Sadari sebagai Deteksi Dini Kanker Payudara terhadap Pengetahuan Ramaja Putri', '2016-03-11', '2016-09-11', '070/587/BKBPM', '2016-03-11', 'Ketua STIKes Budi Luhur Cimahi ', '182/D/S1.Kep-STIKes/III/2016', '2016-03-14', '4,2,1,0', 'P01', 203, ''),
(203, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang UKS Sekolah Dasar dan Pelatihan Dokter Kecil', '2016-03-16', '2016-09-16', '070/651/BKBPM', '2016-03-16', 'Kepala Jurusan Keperawatan Politeknik Kesehatan Bandung', 'DM.02.02.4.1/424/2016 ', '2016-03-15', '4,2,1,0', 'P01', 204, ''),
(204, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Intevensi Sosial Untuk Meningkatkan Kegiatan Pemberantasan Sarang Nyamuk oleh Masyarakat dalam Upaya Pengendalian Demam Berdarah Dengue', '2016-03-22', '2016-03-22', '070/289/BKBPM', '2016-03-22', 'Loka Litbang P2B2 ', 'LB.02.01/IV.7/0443/2016', '2016-03-21', '4,2,1,0', 'P01', 205, ''),
(205, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pemberian Praktek Pemberian Makanan Oleh Ibu dengan Perilaku Makan pada Anak Usia 3-5 tahun Di Kel Babakan Sari Kec Kiaracondong', '2016-03-11', '2016-09-11', '070/242/BKBPM', '2016-03-11', 'Wakil Dekan Fakultas Keperawatan Unpad ', '1304/UN6.L.I/PP/2016  ', '2016-03-04', '4,2,1,0', 'P01', 206, ''),
(206, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbedaan Kenaekan berat badan antara Bayi yang dipijat dengan yang tidak dipijat di UPT Puskesmas Ibrahim Adjie Kota Bandung Th.2016', '2016-03-07', '2016-09-07', '070/223/BKBPM', '2016-03-07', 'Dekan Fakultas Kedokteran Unisba ', '073A/Dek/FK-K/Skr/III/2016 ', '2016-03-04', '4,2,1,0', 'P01', 146, ''),
(207, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kematian Ibu dan Bayi', '2016-03-14', '2016-09-14', '070/227/BKBPM', '2016-03-14', 'Dekan Fakultas Ilmu Sosial dan Ilmu Politik Unpad ', '3028/UN6.G1/PL/2016 ', '2016-03-14', '4,2,1,0', 'P01', 207, ''),
(208, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Angka Kejadian Ibu Hamil', '2016-03-23', '2016-03-22', '070/735/BKBPM', '2016-03-23', 'dari Wakil Dekan Bidang Akademik dan Kemahasiswaan Universitas Pendidikan Indonesia ', '1118/UN40.6/LT/2016 ', '2016-03-23', '4,2,1,0', 'P01', 208, ''),
(209, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Kejadian ISPA, Diare SOP Penyuluhan Kesehatan Cuci Tangan dan Perilaku mencuci tangan di UPT Puskemas Garuda', '2016-03-05', '2016-09-05', '070/537/BKBPM', '2016-03-05', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/383/2016 ', '2016-03-04', '5,2,1,0', 'P01', 209, ''),
(210, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu  tentang Gambaran Pengetahuan Ibu Rumah Tangga Mengenai Deteksi Dini HIV/AIDS', '2016-03-14', '2016-09-14', '070/615/BKBPM', '2016-03-14', 'Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/390/2016', '2016-03-14', '4,3,1,0', 'P01', 210, ''),
(211, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Orang Tua Siswa Kelas 1-3 Sekolah Dasar Tentang Karies Gigi di SDN Nilem 1 Bandung.ohbo', '2016-03-14', '2016-09-14', '070/602/BKBPM', '2016-03-14', 'dari Dekan Fakultas Pendidikan Olahraga dan Kesehatan  UPI', '0825/UN40.6/LT/2016', '2016-03-11', '4,2,1,0', 'P01', 211, ''),
(212, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Persepsi Masyarakat tentang Gangguan Jiwa  ', '2016-02-29', '2016-08-29', '070/431/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.4.1/217/2016 ', '2016-02-26', '4,2,1,0', 'P01', 212, ''),
(213, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Jumlah Refraksionis Optisien di Kota Bandung', '2016-03-04', '2016-09-04', '070/522/BKBPM', '2016-03-04', 'Ketua Prodi D3 Refraksi Optisi STIKes Dharma Husada', '108/SDHB/L/PSROD3/III/2016  ', '2016-03-01', '4,2,1,0', 'P01', 213, ''),
(214, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efektifitas dan Dampak Terhadap Kualitas Hidup Dari Program Manajemen Pada Pasien Diabetes Melitus Tipe 2 di Klinik Jaringan', '2016-03-15', '2016-09-15', '070/262/BKBPM', '2016-03-15', 'Sekolah Tinggi Farmasi Bandung ', '364/STFB/S.P/III/2016 ', '2016-03-14', '4,2,1,0', 'P01', 214, ''),
(215, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Pengetahuan Ibu tentang Kejang Demam pada Anak Usia 1-5 Tahun', '2016-03-29', '2016-03-22', '070/795/BKBPM', '2016-03-29', 'Direktur Poltekes TNI AU Ciumbuleuit ', '105/Poltekes/III/2016 ', '2016-03-29', '4,2,1,0', 'P01', 215, ''),
(216, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Antara Pengetahuan dan Sikap Ibu terhadap Status Gizi Anak Balita Usia 12-59 bulan di Posyandu Rw. 05 Kelurahan Malabar Kota Bandung', '2016-03-28', '2016-09-28', '070/323/BKBPM', '2016-03-28', 'Ketua Prodi S1 Keperawatan STIKes ‘Aisyiyah Bandung ', '652/AKD.02/STIKes-AB/III/2016 ', '2016-03-28', '4,2,1,0', 'P01', 216, ''),
(217, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Data kejadian PJK dan yang mengalami kambuh ulang di RS. Kota Bandung ', '2016-03-04', '2016-09-04', '070/524/BKBPM', '2016-03-04', 'Kajur Keperawatan Poltekes Bandung  ', 'DM.02.02.4.1/242/', '2016-03-01', '4,2,1,0', 'P01', 217, ''),
(218, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Aktivitas Fisik pada Penderita Hipertensi pada Lansia', '2016-03-24', '2016-09-24', ' 070/760/BKBPM', '2016-03-24', 'Ketua Prodi D3 Keperawatan STIKes Dharma Husada Bandung ', '043/SDHB/SIK/PSKPD3/III/16 ', '2016-09-17', '5,4,3,2,1,0', 'P01', 218, ''),
(219, '2016-03-22', 'penelitian', 'Uji Validitas di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu Multipara yang Memiliki Bayi (0-24 bulan) tentang Stimulasi Dini Perkembangan pada Bayi (0-24 bulan) di Wilayah Kerja Puskesmas Neglasari Tahun 2016', '2016-04-28', '2016-09-28', '070/316/BKBPM', '2016-03-28', 'LPPM D3 Kebidanan STIKes Bhakti Kencana ', '028/STIKes-BK/YAGK/f.2/III/2016 ', '2016-03-24', '4,2,1,0', 'P01', 219, ''),
(220, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu Multipara yang Memiliki Bayi (0-24 bulan) tentang Stimulasi Dini Perkembangan pada Bayi (0-24 bulan) di Wilayah Kerja Puskesmas Neglasari Tahun 2016', '2016-03-28', '2016-09-28', '070/315/BKBPM', '2016-03-28', 'LPPM D3 Kebidanan STIKes Bhakti Kencana ', '028/STIKes-BK/YAGK/f.2/III/2016 ', '2016-03-24', '4,2,1,0', 'P01', 220, ''),
(222, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbedaan Efektivitas Aurikular Akupunktur titik Shenmen ditambah titik perut dan titik Shenmen ditambah titik lapar terhadap penurunan berat badan perempuan Dewasa Obesitas   ', '2016-02-24', '2016-08-24', '070/192/BKBPM', '2016-02-24', 'Ketua Prodi Fakultas Kedokteran Unpad ', '115/UN6.C1.2.4/PP/2016  ', '2016-02-23', '4,2,1,0', 'P01', 221, ''),
(224, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data jumlah Masyarakat yang mengikuti Program Deteksi Dini HIV, jumlah patugas yang melakukan Deteksi Dini, Kelompok dan jumlah keseluruhan peserta yang megikuti Deteksi Dini HIV di UPT Puskesmas Pasirkaliki Kota Bandung ', '2016-02-29', '2016-08-29', '070/427/BKBPM', '2016-02-29', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.04.1/198/', '2016-02-26', '4,2,1,0', 'P01', 223, ''),
(232, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Asuhan Kebidanan Komprehensif pada Ny. “N” dengan Usia Tua dan Grande Multipara di BPM “T” Cikutra Kota Bandung', '2016-03-23', '2016-03-22', '070/295/BKBPM', '2016-03-23', 'Ketua STIKes Budi Luhur Cimahi ', '.032/D/D3.Keb-STIKes/I/2016', '2016-01-11', '4,2,1,0', 'P01', 227, ''),
(234, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Transparansi Pemerintah dan Partisipasi Masyarakat dalam Pemanfaatan ICT : Studi Kasus Program Dana Hibah/Bansos Online “Sabilulungan”', '2016-03-08', '2016-09-08', '070/234/BKBPM', '2016-03-08', 'Ketua Fakultas Ilmu Sosial dan Ilmu Politik Universitas Katholik Parahyangan ', 'III/IAP/2016-03/264-E ', '2016-09-15', '5,2,1,0', 'P01', 230, ''),
(236, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Diabetes Melitus', '2016-03-16', '2016-09-16', '070/636/BKBPM', '2016-03-16', 'Ketua Prodi D3 Keperawatan STIKes Dharma Husada Bandung ', '037/SDHB/SIK/PSKPD3/III/2016 ', '2016-03-14', '4,2,1,0', 'P01', 232, ''),
(237, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Gizi Anak Usia Sekolah', '2016-03-24', '2016-09-24', '070/759/BKBPM', '2016-03-18', 'Ketua Prodi D3 Keperawatan STIKes Dharma Husada Bandung ', '047/SDHB/SIK/PSKPD3/III/16 ', '2016-03-18', '5,4,3,2,1,0', 'P01', 233, ''),
(238, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Peran (PMO) terhadap Kepatuhan menelan Obat pada Pasien Tuberkulosis di Puskesmas Sukahaji Kota Bandung', '2016-03-24', '2016-09-24', '070/750/BKBPM', '2016-03-24', 'Direktur Poltekes TNI AU Ciumbuleuit ', '105/Poltekes/III/2016 ', '2016-03-24', '4,2,1,0', 'P01', 234, ''),
(239, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait  tentang Developing ang Evaluating an Intervention to Address Treatment Delay and Low Treatment Adherence in Indonesian Women with Breast Cancer', '2016-03-11', '2016-09-11', '070/241/BKBPM', '2016-03-11', 'Wakil Dekan I Fak Psikologi UNPAD', '175/UN.6.1.1/LT/', '2016-03-06', '4,3,1,0', 'P01', 235, ''),
(241, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efficacy and Safety of a Novel Tetravalent Dengue Vaccine in Healthy Children Aged 2 to 14 years in Asia (CYD14) yang dilakukan oleh staf kami', '2016-03-14', '2016-09-14', '070/254/BKBPM', '2016-03-14', 'Ketua Kedokteran Unpad ', '303/UN6.CI.I.20/PN/2016 ', '2016-03-10', '4,2,1,0', 'P01', 236, ''),
(242, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Penanganan Demam pada Balita', '2016-03-31', '2016-03-22', '070/812/BKBPM', '2016-03-31', 'Direktur TNI AU Poltekes Ciumbuleuit ', '105/Poltekes/III/2016 ', '2016-03-31', '5,4,3,2,1,0', 'P01', 237, ''),
(244, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Penyakit Cacingan di Kota Bandung', '2016-03-18', '2016-09-18', '070/678/BKBPM', '2016-03-18', 'Dekan Bidang Akademik dan Kemahasiswaan Institut Teknologi Nasional ', '0429/Survey/FSRD-Itenas/III/2016 ', '2016-03-14', '4,2,1,0', 'P01', 238, ''),
(245, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Program Gizi dan Obesitas pada Remaja di Kota Bandung', '2016-03-05', '2016-09-05', '070/534/BKBPM', '2016-03-05', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/295/2016 ', '2016-03-01', '4,2,1,0', 'P01', 239, ''),
(246, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Jumlah Data ibu yang mempunyai bayi  lebih dari 6 bulan serta data cakupan ASI Eksklusif di Puskesmas Arcamanik', '2016-03-03', '2016-09-03', '070/483/BKBPM', '2016-03-03', 'Kajur Keperawatan Poltekes Bandung', 'DM 02.02.4.1/810/2016', '2016-03-01', '4,2,1,0', 'P01', 240, ''),
(247, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kampanye Penegasan Pneumonia pada Balita    ', '2016-03-03', '2016-09-03', ' 070/489/BKBPM', '2016-03-03', 'Dekan Universitas Widyatama ', '0068/SM-REG/BPAA-UTAMA/II/2016  ', '2016-02-15', '4,2,1,0', 'P01', 241, ''),
(248, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Vaksinasi', '2016-03-28', '2016-09-28', '070/771/BKBPM', '2016-03-28', 'Ketua Prodi Desain Komunikasi Visual Universitas Komputer Indonesia', '006/PP/KJDKV/FD/UNIKOM/III/20', '2016-03-23', '4,3,1,0', 'P01', 242, ''),
(249, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Management', '2016-03-18', '2016-09-18', '070/671/BKBPM', '2016-03-18', 'Ketua Prodi S1 Keperawatan STIKes Dharma Husada Bandung', '384/SDHB/L/PSKPS1/III/2016', '2016-03-17', '4,2,1,0', 'P01', 243, ''),
(250, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kiat dan Kinerja Kepala PKM Kiaracondong menjadi dr.Teladan Tingkat Nasional Tahun 2015    ', '2016-02-29', '2016-08-29', '070/443/BKBPM', '2016-02-29', 'Ketua STIKes Dharma Husada Bandung  ', '171.SDHB/SPen/PSKMS1/II/2016  ', '2016-02-29', '4,2,1,0', 'P01', 244, ''),
(251, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kiat dan Kinerja Kepala PKM Kiaracondong menjadi dr.Teladan Tingkat Nasional Tahun 2015    ', '2016-02-29', '2016-08-29', ': 070/443/BKBPM', '2016-02-29', 'Ketua STIKes Dharma Husada Bandung  ', '171.SDHB/SPen/PSKMS1/II/2016  ', '2016-02-29', '4,2,1,0', 'P01', 245, ''),
(252, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kasus pada Bayi dengan Hiperbilirubin yang Dipengaruhi Faktor Usia Kehamilan, Berat Badan Bayi dan Pemberian ASI', '2016-03-24', '2016-09-24', '070/749/BKBPM', '2016-03-24', ' Ketua Prodi S1 Keperawatan STIKes Dharma Husada Bandung', '449/SDHB/SIP/PSKPS1/III/2016 ', '2016-03-22', '4,2,1,0', 'P01', 246, ''),
(253, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang SWOT dan Fishbon', '2016-03-19', '2016-09-19', ' 070/683/BKBPM', '2016-03-19', 'Kaprodi S1 Keperawatan STIKes DHB ', '435/SDHB/SIK/PSKPS1/III/2016', '2016-03-18', '4,2,1,0', 'P01', 247, ''),
(254, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Program dan Kejadian TB, Program PMO dan Data Kunjungan serta Pasien yang Rajin Kontrol ke Poli Dot’s di RSUD Kota Bandung', '2016-03-03', '2016-09-03', '070/497/BKBPM', '2016-03-03', 'Ketua Jurusan Keperawatan Politeknik Kesehatan Bandung', 'DM.02.02.4.1/483/2016 ', '2016-03-17', '4,2,1,0', 'P01', 248, ''),
(255, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efektifitas Buklet Edukasi Terhadap Perilaku Deteksi Dini Kanker Serviks Beserta Faktor-faktor yang Mempengaruhinya pada Wanita Usia Subur di Puskesmas Ibrahim Adjie Kota Bandung', '2016-03-07', '2016-09-07', '070/222/BKBPM', '2016-03-07', 'Direktur Politeknik Kesehatan Kemenkes Bandung ', 'DM.02.04/4.2/0178a/', '2016-02-17', '4,2,1,0', 'P01', 249, ''),
(256, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Dat Penyakit berbasis lingkungan dan Tempat Pengolahan makanan (TPM)', '2016-03-19', '2016-09-19', '070/682/BKBPM', '2016-03-19', 'Kajur Kesehatan Lingkungan Poltekes Bandung ', 'DM.02.04/4.3/0167/2016', '2016-03-15', '4,3,2,1,0', 'P01', 250, ''),
(257, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Lasia dan Jadwal Olahraga Rutin di Panti Werdha Tresna Budi Pertiwi ', '2016-03-05', '2016-09-05', '070/532/BKBPM', '2016-03-05', 'Kajur Keperawatan Poltekes Bandung', 'DM.02.02.4.1/258/2016 ', '2016-02-29', '4,2,1,0', 'P01', 251, ''),
(258, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran PengetahuanIbuHamil Tantang 1000 Hari Pertama Kehidupan di Puskesmas Cipadung Kota Bandung Thn 2016', '2016-03-02', '2016-09-02', '070/469/BKBPM', '2016-03-02', 'Ketua STIKes Bhakti Kencana  ', '077/STIKes-BK/YAGK/f.2/I/2016', '2016-01-19', '4,2,1,0', 'P01', 252, ''),
(259, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Dat Penyakit berbasis lingkungan dan Tempat Pengolahan makanan (TPM)', '2016-03-19', '2016-09-19', '070/682/BKBPM', '2016-03-19', 'Kajur Kesehatan Lingkungan Poltekes Bandung ', 'DM.02.04/4.3/0167/2016', '2016-03-15', '4,3,1,0', 'P01', 250, ''),
(260, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Lasia dan Jadwal Olahraga Rutin di Panti Werdha Tresna Budi Pertiwi ', '2016-03-05', '2016-09-05', '070/532/BKBPM', '2016-03-05', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/258/2016 ', '2016-02-29', '4,2,1,0', 'P01', 251, ''),
(261, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran PengetahuanIbuHamil Tantang 1000 Hari Pertama Kehidupan di Puskesmas Cipadung Kota Bandung Thn 2016', '2016-03-02', '2016-09-02', '070/469/BKBPM', '2016-03-02', 'Ketua STIKes Bhakti Kencana  ', '077/STIKes-BK/YAGK/f.2/I/2016', '2016-01-19', '4,2,1,0', 'P01', 252, ''),
(262, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Intensitas Low Back Pain Sebelum dan Sesudah Terapi Akupunktur Aurikular (Titik Shenmen) pada Kehamilan    ', '2016-02-29', '2016-08-29', '070/207/BKBPM', '2016-02-29', 'Ketua Prodi Fakultas Kedokteran Unpad ', '112/UN6.C1.2.4/PP/2016  ', '2016-02-26', '4,2,1,0', 'P01', 253, ''),
(263, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Menguatkan Dampak Kesehatan Masyarakat dari Diagnosis dan Pengobatan Infeksi TB Laten: Studi Randomisasilaster', '2016-03-23', '2016-03-22', '070/294/BKBPM', '2016-03-23', 'Ketua Prodi TB-HIV Fakultas Kedokteran Universitas Padjadjaran', '137/UN6.C.1.4.2/PS/2016 ', '2016-03-22', '4,2,1,0', 'P01', 254, ''),
(264, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Dampak Intervensi Strategi “Tes dan Terapi” HIV Dini pada Populasi Lelaki Suka Lelaki (LSL) dan Wanita Pekerja Seks (WPS) di Indonesia', '2016-03-23', '2016-03-22', '070/297/BKBPM', '2016-03-23', 'Ketua Pusat Studi Fakultas Kedokteran Universitas Padjadjaran', '139/UN6.C.1.4.2/PS/2016 ', '2016-03-22', '4,2,1,0', 'P01', 255, ''),
(265, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Kejadian ISPA di Wilayah Kerja Puskesmas Sukajadi', '2016-03-24', '2016-09-24', '070/745/BKBPM', '2016-03-24', 'Ketua Prodi D3 Keperawatan STIKes Dharma Husada Bandung', '048/SDHB/SIP/PSKPD3/III/16 ', '2016-03-21', '4,2,1,0', 'P01', 256, ''),
(266, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran dan Pengetahuan dan Sikap Lansia Tentang Pemanfaatan Posbindu Lansia di Wilayah kerja Puskesmas Sekeloa', '2016-03-01', '2016-09-01', '070/459/BKBPM', '2016-03-01', 'Kajur Keperawatan Poltekes Bandung ', 'DM 02.02.4.1/232/2016  ', '2016-02-26', '4,2,1,0', 'P01', 257, ''),
(267, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbandingan Jumlah Pasien dan Kualitas Pelayanan Antara Klinik Milik Dokter dan Bukan Dokter di Kota Bandung Tahun 2016', '2016-03-16', '2016-09-16', '070/268/BKBPM', '2016-03-16', 'Dekan Fakultas Kedokteran Universitas Islam Bandung ', '040A/Dek/FK-k/Skr/III/2016 ', '2016-03-03', '4,2,1,0', 'P01', 258, ''),
(268, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Ibu Melahirkan selama 1 (satu) Tahun', '2016-03-30', '2016-03-22', '070/799/BKBPM', '2016-03-30', 'Wakil Dekan Fakultas Keperawatan Universitas Padjadjaran ', '1502/UN6.L1/PP/2016 ', '2016-03-15', '4,2,1,0', 'P01', 259, ''),
(269, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang SWOT & FISHBONE', '2016-03-19', '2016-09-19', '070/685/BKBPM', '2016-03-19', 'Ketua Prodi S1 Keperawatan STIKes Dharma Husada Bandung ', '445/SDHB/S1K/PSKPS1/III/2016 ', '2016-03-18', '4,2,1,0', 'P01', 260, ''),
(270, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pemberian Pendidikan Kesehatan tentang Hipertensi dengan Kepatuhan Pasien Hipertensi untuk Mengontrol Tekanan Darah di Kelurahan Malabar Kec. Lengkong Kota Bandung', '2016-03-28', '2016-09-28', '070/321/BKBPM', '2016-03-28', 'Ketua Prodi S1 Keperawatan STIKes ‘Aisyiyah Bandung ', '652/AKD.02/STIKes-AB/III/', '2016-03-28', '4,2,1,0', 'P01', 261, ''),
(271, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Penderita DBD 5 Tahun terakhir di UPT Puskesmas Margahayuraya  ', '2016-03-05', '2016-09-05', '070/535/BKBPM', '2016-03-05', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/339/2016 ', '2016-03-02', '4,2,1,0', 'P01', 262, ''),
(272, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisis SWOT dan Fish Bone', '2016-03-17', '2016-09-17', '070/670/BKBPM', '2016-03-17', 'Ketua Prodi S1 Keperawatan STIKes Dharma Husada Bandung ', '434/SDHB/L/PSKPS1/III/2016 ', '2016-03-17', '4,2,1,0', 'P01', 263, ''),
(273, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pendidikan dan Pekerjaan Ibu dengan Perkembangan Anak Usia Pra-Sekolah', '2016-03-17', '2016-09-17', '070/669/BKBPM', '2016-03-17', 'dari Kepala Jurusan Keperawatan Politeknik Kesehatan Bandung ', 'DM.02.02.4.1/479/2016 ', '2016-03-17', '4,2,1,0', 'P01', 264, ''),
(274, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Jumlah Ibu yang Sudah Menopause', '2016-03-23', '2016-03-22', '070/744/BKBPM', '2016-03-23', 'Ketua Prodi D3 Keperawatan STIKes Dharma Husada Bandung', '058/SDHB/SIK/PSKPD3/III/2016 ', '2016-03-21', '4,2,1,0', 'P01', 265, ''),
(275, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data jumlah kunjungan Posyandu terendah target kunjungan Posyandu data tumbuh kembang Balita di UPT Puskesmas Salam', '2016-03-04', '2016-09-04', '070/508/BKBPM', '2016-03-04', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/330/2016 ', '2016-03-02', '4,2,1,0', 'P01', 266, ''),
(276, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Tingkat Pengetahuan tetang rokok dan sikap Ibu rumah tangga terhadap anggota keluarga yang merokok di dalam rumah', '2016-03-07', '2016-09-07', '070/229/BKBPM', '2016-03-07', 'Dekan Fakultas Kedokteran Unisba ', '155B/Dek/FK-K/Skr/III/2016 ', '2016-03-04', '4,2,1,0', 'P01', 267, '');
INSERT INTO `penelitian` (`id_penelitian`, `waktu_pembuatan`, `jenis_surat`, `maksud`, `waktu_mulai`, `waktu_selesai`, `no_bkbpm`, `tanggal_bkbpm`, `surat`, `no_surat`, `tanggal_surat`, `tembusan`, `id_pejabat`, `id_pengaju`, `status_mail`) VALUES
(277, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Faktor-faktor yang mempengaruhi kejadian Kanker serviks pada Wanita di Puskesmas Puter Kota Bandung tahun 2016', '2016-03-11', '2016-09-11', '070/248/BKBPM', '2016-03-11', 'Ketua STIK Imanuel ', '04/STIKI/LP2M/II/2016 ', '2016-02-24', '4,2,1,0', 'P01', 268, ''),
(278, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait  tentang Data Rikesdas  Tentang Penyakit Kulit', '2016-03-11', '2016-09-11', '070/858/BKBPM', '2016-03-11', 'Kaprog Desain Komunikasi Visual FRSD  Univ Kristen Maranatha', '151/DKV.FRSD/UKM/II/2016', '2016-02-22', '4,3,1,0', 'P01', 269, ''),
(279, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengetahuan Tentang Penanganan Dysmenorrhea', '2016-03-16', '2016-09-16', '070/643/BKBPM', '2016-03-16', 'Dekan FPOK Universitas Pendidikan Indonesia ', '0973/UN40.6/LT/2016 ', '2016-03-14', '4,2,1,0', 'P01', 270, ''),
(280, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gizi Balita', '2016-03-28', '2016-09-28', '070/781/BKBPM', '2016-03-28', 'Ketua Prodi Sistem Informasi Universitas Komputer Indonesia', '719/Prodi-IS/FTIK/UNIKOM/III/2016 ', '2016-03-24', '4,2,1,0', 'P01', 271, ''),
(281, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Statistik Penyakit Jantung di Bandung', '2016-03-15', '2016-09-15', '070/628/BKBPM', '2016-03-15', 'Ketua Prodi DKV Universitas Pasundan ', '056/UNPAS/FISS/DKV/P.DT/III/2016 ', '2016-03-14', '4,2,1,0', 'P01', 272, ''),
(282, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Kompres Air Hangat Terhadap Penurunan Nyeri pada Penderita Asam Urat', '2016-04-01', '2016-10-01', '070/845/BKBPM', '2016-04-01', 'Prodi S1 Keperawatan STIKes Dharma Husada Bandung', '524/SDHB/SIK/PSKPS1/III/2016 ', '2016-03-30', '5,4,3,2,1,0', 'P01', 273, ''),
(283, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Efektifitas Konseling dan Penyuluhan terhadap Kualitas Hidup Wanita Menopause', '2016-03-31', '2016-10-01', '070/335/BKBPM', '2016-03-31', 'Direktur Politeknik Kesehatan Kemenkes Bandung ', 'LB.02.04/4.2/0311/2016 ', '2016-03-30', '5,4,2,1,0', 'P01', 274, ''),
(284, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Data Anak Penyakit Infeksi dan data Perilaku Cuci tangan Keluarga dan Anak di Kota Bandung', '2016-03-04', '2016-09-04', '070/507/BKBPM', '2016-09-04', 'Direktur Kajur Keperawatan Poltekes Bandung ', 'DM.02.02.4.1/284/2016 ', '2016-02-29', '4,2,1,0', 'P01', 275, ''),
(285, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Relaksasi Otot Progrsif terhadap tekanan Darah pada Penderita Hipertensi di UPT Puskesmas Talagbodas Kota Bandung', '2016-03-11', '2016-09-11', '070/594/BKBPM', '2016-03-11', 'Ketua STIKes Jenderal Achmad Yani ', 'B/785/STIKes/III/2016', '2016-03-10', '4,2,1,0', 'P01', 276, ''),
(286, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Faktor-faktor yang mempengaruhi kajadian Drop Out pada penderita TB Paru di RS Santo Yusuf', '2016-03-14', '2016-09-14', '070/603/BKBPM', '2016-03-14', 'Dekan Fakultas Pendidikan Olahraga dan Kesehatan  ', '0827/UN40.6/LT/2016', '2016-03-11', '4,2,1,0', 'P01', 277, ''),
(287, '2016-03-22', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Konsumsi Buah-Buahan dan Tingkat Kesehatan Anak-Anak', '2016-03-16', '2016-09-16', '070/637/BKBPM', '2016-03-16', 'Universitas TELKOM ', '1351/AKD1/SCI/2015 ', '2016-02-05', '4,2,1,0', 'P01', 278, ''),
(288, '2016-10-13', 'pkl_medis', 'Kerja Praktek', '2016-09-01', '2016-10-31', '1', '2016-10-01', 'SMK Merdeka', '1', '2016-10-01', '8,0', 'P01', 279, ''),
(289, '2016-10-13', 'pkl_medis', 'Kerja Praktek', '2016-08-28', '2016-09-25', '2', '2016-10-01', 'Unpas', '1', '2016-10-01', '8,0', 'P01', 280, ''),
(290, '2016-10-13', 'pkl', 'Kerja Praktek', '2016-08-15', '2016-10-15', '3', '2016-08-01', 'Unikom', '3', '2016-08-01', '8,0', 'P01', 281, 'sudah'),
(291, '2016-10-13', 'pkl', 'Kerja Praktek', '2016-08-01', '2016-08-31', '4', '2016-10-31', '4', '4', '2016-10-01', '8,0', 'P01', 282, ''),
(292, '2016-10-13', 'pkl', 'kerja praktek', '2016-07-01', '2016-09-28', '5', '2016-10-13', '5', '5', '2016-10-13', '8,0', 'P01', 283, ''),
(293, '2016-01-01', 'pkl', 'Kerja Praktek', '2016-01-10', '2016-03-10', '7', '2016-01-10', 'SMK Provita', '7', '2016-01-10', '8,0', 'P01', 284, ''),
(294, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-02-09', '2016-05-09', '9', '2016-10-01', '9', '9', '2016-10-14', '8,0', 'P01', 285, ''),
(296, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-07-01', '2016-09-30', '1', '2016-10-14', '1', '1', '2016-10-01', '8,0', 'P01', 287, ''),
(299, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-07-01', '2016-09-30', '1', '2016-10-14', '1', '1', '2016-10-14', '8,0', 'P01', 289, ''),
(300, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-02-22', '2016-04-22', '1', '2016-10-14', '1', '1', '2016-10-14', '8,0', 'P01', 290, ''),
(301, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-04-25', '2016-05-18', '1', '2016-10-14', '1', '1', '2016-10-14', '8,0', 'P01', 291, ''),
(302, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-05-20', '2016-08-17', '1', '2016-10-14', '1', '1', '2016-10-14', '8,0', 'P01', 292, ''),
(303, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-03-23', '2016-08-23', '1', '2016-10-14', '1', '1', '2016-10-14', '8,0', 'P01', 293, ''),
(304, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-05-18', '2016-07-18', '1', '2016-10-14', '1', '1', '2016-10-14', '8,0', 'P01', 294, ''),
(305, '2016-10-14', 'pkl', 'Kerja Praktek', '2016-05-16', '2016-06-16', '1', '2016-10-14', '1', '1', '2016-10-14', '8,0', 'P01', 295, ''),
(306, '2016-10-14', 'penelitian', 'Melakukan Permintaan Data Tentang Pekan Imunisasi Nasional Tahun 2016', '2016-10-11', '2017-04-11', '070/1782/BKBPM', '2016-10-11', 'Wakil Dekan Bidang Akademik Fakultas Ilmu Komunikasi UNPAD', '12043/UN6.K6/PP/2016', '2016-10-10', '5,4,3,1,0', 'P01', 296, '');

-- --------------------------------------------------------

--
-- Table structure for table `pengaju`
--

CREATE TABLE `pengaju` (
  `id_pengaju` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `institusi` varchar(200) NOT NULL,
  `mail` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaju`
--

INSERT INTO `pengaju` (`id_pengaju`, `nama`, `alamat`, `institusi`, `mail`) VALUES
(1, 'lakdfjs', 'slkdjfas', 'sladjf', ''),
(2, 'a', 'vvv', '', ''),
(3, 'aaa', 'aaa', '', ''),
(4, 'asdasdasd', 'asdasdas\r\nasdasasdas\r\ndasd', 'asdasd', ''),
(5, 'Abdul Aziz', 'Komp uri Fajar D N0.36 Kec imahi Selatan Kota Cimahi', 'Universitas Padjajaran (UNPAD)', ''),
(6, 'Agnita Putri Fadhilah', 'Jl.Andani Sakti No.134 Cibitung Bekasi Kab Bekasi', 'Universitas Islam Bandung (UNISBA)', ''),
(7, 'Aisya Fitrianita', 'Ds.Ngampal Rt.02/01 Kec.Sumber Rejo Kab.Bojonegoro', 'STIKes Dharma Husada', ''),
(8, 'Algia Nuruliani', 'Jl. Ters Cikajang Raya 1 N0.102 Kec Arcamanik Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(9, 'Amini Lancia Putri ', 'Distrikan Kec. Banjarsari Kota Surakarta', 'STIKep PPNI jawa Barat', ''),
(10, 'Angga Irawan', 'Komp. Bajuin Blok E No.2 Kab Tanah Laut prov Kalsel', 'Universitas Padjajaran (UNPAD)', ''),
(11, 'Anggi Putri Aryani', 'Dsn Sayang Kec Jatinangor Kab Sumedang', 'Universitas Padjajaran (UNPAD)', ''),
(12, 'Anita Putri', 'Jl.Jayagiri Kec.Lembang Kab.Bandung', 'STMIK ”AMIKBANDUNG”', ''),
(13, 'Annisa Lathifa Ulfah', 'Komp.Mekar Indah VIII No.1 Kec Cileunyi Kab Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(14, 'Astri Chahya Pertiwi', 'Rancaekek Permai H-10 N0. 23 Kec Rancaekek', 'Universitas Padjajaran (UNPAD)', ''),
(15, 'Astri Fitriyanty', 'Jl. Kencana Arum L-21 Kec Buah Batu Bandung', 'STIKes Bhakti Kencana ', ''),
(16, 'Aulia Dyah Safitri', 'Gg.Ciroyom V Kec Andir Kota Bandung', 'Universitas Jenderal Achmad Yani (UNJANI)', ''),
(17, 'Chintiya Pangesti', 'Jl.Gajah Mada Kec.Tanjungpandan Kab.Belitung', 'STIKes Dharma Husada', ''),
(18, 'Dara Chantika', 'Jl. Golf Barat XXI No.2A Kec Arcamanik Kota Bandung', 'Institut Teknologi Nasional (ITENAS)', ''),
(19, 'Darastry Latifah', 'Jl. Nawawi No.3 Kec Bbk Ciparay Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(20, 'Darna Natalia Iping', 'Jl. Mara satu kec. Tanjung palas barat kab. Bulungan ', 'STIKes Dharma Husada', ''),
(21, 'Desi Ratnasari ', 'Jl Batununggal Indah VIII Kec Bandung Kidul Kota Bandung', 'Universitas Islam Bandung (UNISBA)', ''),
(22, 'Desnia Widyastuti', 'Neglasari II No.135 Kec.Ujungberung Kota Bandung', 'STIKes Dharma Husada', ''),
(23, 'Dian Perwada', 'Jl. Kelinci I No.31 Kec Bekasi Utara Kota Bekasi', 'STIKes Dharma Husada Bandung', ''),
(24, 'Dinny Noor Fauziah', 'Perum Griya Mukti Sejahtera Blok X-10 Kec Gunung Pinang Kota Samarinda', 'STIKes Dharma Husada Bandung', ''),
(25, 'Drs.Achmad Nurmandi, M.Sc', 'Kadipulo Rt.03/35 Kec.Berbah Kab.Sleman', 'Universitas Muhammadiyah Yogyakarta', ''),
(26, 'Elisabeth Sanamas', 'Basim Kab Asmat Prov Papua', 'STIKes Dharma Husada Bandung', ''),
(27, 'Enti Pagasing', 'Jl.Ki Hajar Dewantara Kec.Bolano Lambunu Kab.Parigi Moutong  ', 'STIKes Immanuel Bandung ', ''),
(28, 'Eva Yuliana', 'Dudun VI Kec Braja Salebah Kab Lampung Timur', 'STIKes Dharma Husada Bandung', ''),
(29, 'Farisa HersWandani Akhzan', 'BTN Asal Mula Kec Tamalanrea Kota Makasar', 'Universitas Padjajaran (UNPAD)', ''),
(30, 'Gema Karina Putri', 'Komp. Pasadena A4 no.10 Bbbk Ciparay Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(31, 'Gladys Marcella Pilat', 'Kel Tapuang Tapuang Kec Taruna Timur Kab Kep Sangihe Sulawesi Utara', 'Universitas Maranatha', ''),
(32, 'Helmi Gustav', 'Citepus III Kec.Cicendo Kota Bandung', 'Sekolah Tinggi Ilmu Keperawatan PPNI Jawa Barat', ''),
(33, 'Imas Aisatul M', 'Kp.Kesabilan Kec Pontang Kab Serang', 'STIKes Bhakti Kencana', ''),
(34, 'Indawati', 'Kp Margaluyu Kec Tageung Kab Cianjur', 'STIKes Bhakti Kencana', ''),
(35, 'Kadek Devi Pramana', 'Dsn Rendang Bajur Kec Gunung Sari Kab Lombok Barat', 'Bina Sarana Informatika (BSI)', ''),
(36, 'Lani Karmila', 'Dsn Cijeungjing Kec Jatigede Kab Sumedang', 'Universitas Komputer Indonesia (UNIKOM)', ''),
(37, 'Lia Dahlia', 'Dsn Pahing RT 01/03 Kec Cidahu Kab Kuningan', 'Universitas Padjajaran (UNPAD)', ''),
(38, 'Masriyah Komalasari', 'Jl Bojong Kaler Blk No.25 Kec Cibeunying Kaler', 'Universitas Padjajaran (UNPAD)', ''),
(39, 'Mochamad Nur Ramadhan', 'Jl Negla N0. 17 Kec Sukasari Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(40, 'Mutiara Karana Putri', 'Kp Cipeundeuy Kec Gunung Guruh Kab Sukabumi', 'Universitas Padjajaran (UNPAD)', ''),
(41, 'Mutiara Kirana Putri', 'Kp.Cipeundeuy Kec.Gunungguruh Kab.Sukabumi  ', 'Universitas Padjajaran (UNPAD)', ''),
(42, 'Noris Arya Saputra', 'Perum Puri Cileungsi Kab Bogor', 'Sekolah Tinggi Farmasi Bandung (STFB)', ''),
(43, 'Nova Nofiyanti', 'Kp.Sukamelang Rt.23/04 Kel.Sukmelang Kec.Subang', 'STIKes Bhakti Kencana', ''),
(44, 'Novia Rhoza', 'Jl Babakan Irigasi Kec Bojongloa Kaler Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(45, 'Nurrachma Ariestanti  ', 'Kelapa Tiga Gg Krip Jakarta Selatan', 'Universitas Padjajaran (UNPAD)', ''),
(46, 'Pitri', 'Sukapura Kec Kiaracondong Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(47, 'Prof Cissy B Kartasasmita,  Dr,Sp.AK(K), MSc, PhD', 'Jl Karawitan N0. 6 Kec Lengkong Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(48, 'Putri Natalisa', 'Jl. Santosa Asih III N/16 No.31 Kec Rancasari Kota Bandung', 'Universitas Widyatama', ''),
(49, 'Rahayu Ningsih', 'Kuamang JR Kuamang Kec Panti Kab Pasaman', 'STIKes Dharma Husada Bandung', ''),
(50, 'Ramayanti Purba ', 'Sukamaju Rt  02/03 Kab Tulang Bawang', 'STIKes Bhakti Kencana', ''),
(51, 'Restu Awallidin Sujana', 'Jl.Pasir Makmur III No. 162 Kec Citamiang Kota Sukabumi', 'Sekolah Tinggi Farmasi Bandung (STFB)', ''),
(52, 'Rifki Rakhmansyah', 'Bbk Sadang kec Baleendah Kab Bandung', 'Universitas Komputer Indonesia (UNIKOM)', ''),
(53, 'Rini Firliany', 'Jl.Cimencrang Rt.01/Rw.05 Kec.Gedebage Kota Bandung ', 'STIKes Bhakti Kencana', ''),
(54, 'Riris Purwita Widodo', 'Jl.Cendana 3 D-4/6 PD Rejeki Kec Pasar Kemis Kan Tangerang', 'Universitas Padjajaran (UNPAD)', ''),
(55, 'Risfi Rifa Afifah', 'Jl Cidurian Utara Rt 005/010 Kota Bandung', 'STIKes Bhakti Kencana', ''),
(56, 'Riska Yudarsih', 'Dsn Urisan Jaya Kec Manggar Kab Belitung Timur', 'STIKes Dharma Husada Bandung', ''),
(57, 'Risthie Dewi Pradisca', 'Jl.Simpang Pahlawan IV No. 15 Kec Cibeunying Kaler Kota Bandung', 'Institut Teknologi Nasional (ITENAS)', ''),
(58, 'Rizka Pamela', 'Dsn Kabung Jaya Kec Kab Belitung Timur', 'STIKes Dharma Husada Bandung', ''),
(59, 'Shinta Oktafien,SE,.MM', 'Pasar Mulia Selatan Kec Pesisir Tengah Kab Lampung Barat', 'Universitas Widyatama', ''),
(60, 'Siti Sarah Nurfatimah', 'Kp Sukasirna Rt 11/04 Kec Pasirkuda Kab Cianjur', 'STIKes Bhakti Kencana', ''),
(61, 'Sri Handayani', 'Petak Kec Praya Tengah Kab Lombok Tengah', 'Universitas Padjajaran (UNPAD)', ''),
(62, 'Tan Zhi Xin', 'Bale Padjajaran Jatinangor Sumedang Jabar', 'Universitas Padjajaran (UNPAD)', ''),
(63, 'Tuti Ratnasari', 'Kp Sayuran Kec.Cikaum Kab.Subang ', 'STIKes Bhakti Kencana', ''),
(64, 'Umi Annisa Furi', 'Jl Marga Jati N0. 24 ', 'Universitas Padjajaran (UNPAD)', ''),
(65, 'Vilantia Elisti', 'Jl.Lettu Mad Daud Kec.Tanjungpandan Kab.Belitung', 'STIKes Dharma Husada Bandung', ''),
(66, 'Wendy Mega Pertiwi', 'Jl.Perumnas Raya No.11 Blok Sukaasih Kec Subang', 'Universitas Jenderal Achmad Yani (UNJANI)', ''),
(67, 'Wegi Ariska', 'Jl.Gajah Mada Kec.Tanjungpandan Kab.Belitung', 'STIKes Dharma Husada Bandung', ''),
(68, 'Windy Hani', 'Jl. Lembang Pinang VI Blok I 8/4 Kec Duren Sawit Jakarta', 'Universitas Padjajaran (UNPAD)', ''),
(69, 'Abdullah', 'Dusun Empol Kec Sekontong Kab Lombok Barat', 'Bina Sarana Informatika (BSI)', ''),
(70, 'Adin Kuncoro', 'Sukanegla Kec.Antapani Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(71, 'Ahmad Gufron', 'Gg.Siti Mariah V Kec.Bojongloa Kaler Kota Bandung ', 'UIN Sunan Gunung Djati Bandung', ''),
(72, 'Ai Masturoh', 'Kp.Hegarmanah I Kec.Ciranjang Kab.Cianjur', 'STIKes Rajawali', ''),
(73, 'Ai Susan Munawaroh', 'Kp.Parigi Kec.Leles Kab.Cianjur', 'STIKes Rajawali', ''),
(74, 'Alfi Nurul Islamiyah ', 'Taman Bukit Cibogo A-4 No.2 Kec.Cimahi Sltn Kota Cimahi', 'Institut Teknologi Bandung (ITB)', ''),
(75, 'Ali Musthofa', 'Blok Cileuis Kec.Sukagumiwang Kab.Indramayu', 'STIKes Jenderal Achmad Yani (UNJANI)', ''),
(76, 'Anisa Astuti', 'Dusun Patrol Kec.Jalancagak Kab.Subang', 'Poltekes Bandung ', ''),
(77, 'Asri Kholilah', 'Gg.Melati Blok 9 No.55 Cijerah II Kec.Cimahi Kota Cimahi', 'Poltekes Bandung', ''),
(78, 'Asri yuliani', 'Jl.Babakan Sari III Kec.Kiaracondong Kota Bandung ', 'Poltekes Bandung', ''),
(79, 'Chomariyana Kartika Hesti', 'Dusun Sugihan Kec Toroh Kab Grobogan ', 'Universitas Padjajaran (UNPAD)', ''),
(80, 'Dara Saritami Trimilik', 'Pondok Hijau Indah Permai E No.39 Kab.Bandung Barat ', 'Universitas Islam Bandung (UNISBA)', ''),
(81, 'Denny Safitri', 'Jl.Rajawali Barat Kec.Andir Kota Bandung ', 'STIKes Rajawali', ''),
(82, 'Devi Rahmawati  ', 'Komp.Batu Wangi No.22 Kec.Margahayu Kab.Bandung  ', 'Universitas Pendidikan Indonesia (UPI)', ''),
(83, 'Dewi Nita Yuningsih Sopandi', 'Kp. Sadang Kec Cileunyi Kab Bandung', 'POLTEKES Bandung', ''),
(84, 'Dewi Sri Andriyani', 'Cibungur Rt. 01/03 Kec.Cibeureum Kota Sukabumi', 'STIKes Rajawali', ''),
(85, 'Diana Risnawati', 'Jl.Geger Kalong Hilir Kec Sukasari Kota Bandung', 'POLTEKES Bandung', ''),
(86, 'Dicky Rifqy', 'Kamp. PCI blok D No.16 Cibeber Kota Cilegon ', 'Institut Teknologi Nasional (ITENAS)', ''),
(87, ' Nama Lengkap Alamat Maksud Waktu Mulai Penelitian Waktu Selesai Penelitian  Surat keterangan ini dibuat atas dasar : Surat pengantar dari Kepala Badan Kesatuan Bangsa dan Pemberdayaan Masyarakat Kota', 'Komp.NataEndah Blok M5 Kab.Bandung', 'POLTEKES Bandung', ''),
(88, 'Dini Andriani', 'Terusan Suryani No.63 Kec.Babakan Ciparay Kota Bandung ', 'STIKes Jenderal Achmad Yani (UNJANI)', ''),
(89, 'Sri Cahyani', 'Kp.Kebon Kalapa No. 28 Kec.Arjasari Kab.Bandung ', 'STIKes Jenderal Achmad Yani (UNJANI)', ''),
(90, 'Diska Nuraeni Hamdah', 'Kp.KancahRT.02/016 Kab.Bandung Barat', 'POLTEKES Bandung', ''),
(91, 'Dita permatasari', 'Jl. Sari indah raya Np.8 kec. Kiaracondong kota Bandung', 'Universitas Pendidikan Indonesia (UPI)', ''),
(92, 'Dominic Debora Kandouw', 'Kp.Matani II Lingk 1 Kec Tomohon Tengah Kota Tomohon ', 'Institut Teknologi Harapan Bangsa (ITHB)', ''),
(93, 'Erlina Fazriana', 'Gg H Yasin V No.154 Kec Sukajadi Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(94, 'Erwan Susanto ', 'Gumukmas Kec Pagelaran Kab Pringsewu', 'STIKes Santo Boromeus', ''),
(95, 'Estty Puju Yanti', 'Cisaranten Wetan Rt.04/01 Kec.Cinambo Kota Bandung', 'POLTEKES Bandung', ''),
(96, 'Pauline Lydiana', 'Jl.Jend. Soedirman 649 Kec.Purwokerto Timur Kab.Banyumas', 'Universitas Maranatha', ''),
(97, 'Pauzan', 'Dusun Empol Kec Sekontong Kab Lombok Barat', 'Bina Sarana Informatika (BSI)', ''),
(98, 'Fiqih Nur Indah Syari', 'Link,Sumur Jaya Kec.Pulomerak Kota Cilegon', 'Universitas Islam Bandung (UNISBA)', ''),
(99, 'Fitriayani Maksud Otoluwa', 'Lingkungan IX Kec.Malalayang Kota Manado ', 'Universitas Padjajaran (UNPAD)', ''),
(100, 'Gema Karina Putri', 'Komp. Pasadena A4 N0.10 Kec Bbk Ciparay Kota Bandung ', 'Universitas Padjajaran (UNPAD)', ''),
(101, 'Gini Gusitani', 'Jl.Ir.H.Djuanda No.10 158-A Kec.Coblong Kota Bandung', 'STIKes Rajawali', ''),
(102, 'I Gede Hendra Widarma', 'Bukit Ngandang Pagutan kec. Mataram kota Mataram', 'Bina Sarana Informatika (BSI)', ''),
(103, 'Idris Badrussalam', 'Kp.Cireundeu Kec.Rajapolah Kab.Tasikmalaya ', 'STIKes Dharma Husada Bandung', ''),
(104, 'Imaduddin Abdurrahman', 'Jl.Jend.Basuki Rahmad VI/995 Kec.Klojen Kota Malang ', 'Institut Teknologi Bandung (ITB)', ''),
(105, 'Janetha Trigantini', 'Margahayu Kencana A12/18 Kec Margahayu Kab Bandung ', 'STIKes Rajawali', ''),
(106, 'Kharismanisa Nurul Hidayah', 'Jl.Riung Mulya IV No.2 Kec.Gedebage Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(107, 'Khilda Taba', 'Jl.Panglima Polim No.20 Kec.Cipondoh Kota Tangerang', 'POLTEKES Bandung', ''),
(108, 'Kiki Rusdian ', 'Blik Cicadas Kec.Subang Kab.Subang   ', 'Universitas Padjajaran (UNPAD)', ''),
(109, 'Kiki Sakinah', 'Kp.Janpala Rt 001/002 Kec Rumpin Kab Bogor', 'Institut Pertanian Bogor (IPB)', ''),
(110, 'Marlina', 'Jl. Gajah IV No. 5 Kec Cimahi Selatan Kota Cimahi', 'STIKes Rajawali', ''),
(111, 'Mery seprtiani', 'Jl. Bedukang I No. 150 kec. Pangkal dalam kota pangkalpinang', 'Sekolah Tinggi Farmasi Bandung (STFB)', ''),
(112, 'Minarti ', 'Sukamulya No. 100/142D Kec.Cibeunying Kidul Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(113, 'Mirna Oktaviani D', 'Komp.Rama Biru Asri Kec. Cileunyi Kab.Bandung ', 'Sekolah Tinggi Farmasi Bandung (STFB)', ''),
(114, 'Mochammad Idam Adriyan', 'Sekemirung Kec.Cibeunying Kaler Kota Bandung   ', 'Universitas Pendidikan Indonesia (UPI)', ''),
(115, 'Muhamad Ridwan H', 'Cipagalo Girang Kec Buah Batu Kota Bandung', 'POLTEKES Bandung', ''),
(116, 'Mukhammad Andyka Fitrianto Samodra Putra', 'Banjarsari Kec.Pakis Kab.Malang', 'Universitas Padjajaran (UNPAD)', ''),
(117, 'Mutia Ainur Rahmah', 'Jl.Kemakmuran IV-DNo.100 Kec.Rancasari Kota Bandung', 'POLTEKES Bandung', ''),
(118, 'Novianti', 'Perum.Arka Rami Lestari Blok B No.4 Kec.Selebar Kota Bengkulu', 'Universitas Padjajaran (UNPAD)', ''),
(119, 'Novita sari', 'Jl. ZA. Pagar alam kec. Tanjung Pandan Kab. belitung', 'STIKes Dharma Husada Bandung', ''),
(120, 'Nursabrinah Mutiarasari', 'Jl.Malaka Hijau II/2 Kec.Duren Sawit Jakarta Timur ', 'Universitas Padjajaran (UNPAD)', ''),
(121, 'Nurul Istiqomah', 'Jl.Kopo Sayati N0.203 Kec Margahayu Kab Bandung', 'POLTEKES Bandung', ''),
(122, 'Octa Natasha Bramanti ', 'Sekemirung, Kaler Kec.Cibeunying Kaler Kota Bandung ', 'STIKep PPNI jawa Barat', ''),
(123, 'Rakhmi Dewi Nurissa', 'Dusun Kersikan Kec.Cijeungjing Kab.Ciamis', 'Institut Teknologi Bandung (ITB)', ''),
(124, 'Sandi Mutika', 'Jl.Cibangkong Lor Kec.Batununggal Kota Bandung', 'UIN Sunan Gunung Djati Bandung', ''),
(125, 'Santy Sity Maryam', 'Kp Sinar Galih No. 12 Kec Ciranjang Kab Cianjur', 'STIKes Rajawali', ''),
(126, 'Septriantiana', 'Jl. Sapan raya ujung No.01 kec.jekan raya kota palangka raya', 'Sekolah Tinggi Farmasi Bandung (STFB)', ''),
(127, 'Shandi Oliver Simanjorang ', 'Jl.Bunga Tanjung Kec.Dumai Barat Kota Dumai', 'STIKes Santo Boromeus', ''),
(128, 'Sharon Gondodiputro', 'Jl.Setra Duta Cemara I K4-28 Kec Cimahi Utara Kota Cimahi', 'Universitas Padjajaran (UNPAD)', ''),
(129, 'Sheila Irmuninda Rangkuti ', 'Jl.Banjarsari Raya No.30 Kec.Antpani Kota Bandung  ', 'Universitas Islam Bandung (UNISBA)', ''),
(130, 'Shella Wulan Sari', 'Komp.Sukaraja I Gg III n0.40 Kec Cicendo Kota Bandung', 'POLTEKES Bandung', ''),
(131, 'Silvia Noviani  ', 'Blok Panca TengahKec.Batujajar Kab.Bandung Barat  ', 'Universitas Pendidikan Indonesia (UPI)', ''),
(132, 'Siti Nur Inayah  ', 'Sekemirung, Kaler Kec.Cibeunying Kaler Kota Bandung ', 'STIKes Bhakti Kencana', ''),
(133, 'Sofia Hasanah', 'Blok Jumat RT 01/06 Kec Cikijing Kab Majalengka', 'STIKes Jenderal Achmad Yani (UNJANI)', ''),
(134, 'Sunengsih', 'Blok Minggu Kec.Jatitujuh Kab.Majalengka', 'STIKes Bhakti Kencana', ''),
(135, 'Tes Aprila Ningsih', 'Jl.Gelatik Dalam No.13 Kec.Coblong Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(136, 'Tiara Kinanti', 'Jl.Gunung Batu No.j123 B Kec.Cicendo Kota Bandung ', 'STIKes Rajawali', ''),
(137, 'Vivop Marti Lengga', 'Tinggi Hari No. 30 Kec.Pagar Alam Selatan Kota Pagar Alam', 'Universitas Padjajaran (UNPAD)', ''),
(138, 'Widhi Dwi Maulana', 'Dsn Kaum Kidul Kec.Tanjungsari Kab.Sumedang', 'POLTEKES Bandung', ''),
(139, 'Windi Indranoviyani', 'Jl.Panglima Polim No.20 Kec.Cipondoh Kota Tangerang', 'Institut Teknologi Nasional (ITENAS)', ''),
(140, 'Yansen Putra Kusuma', 'Komp. Sukarami Patra Permai Kec.Sukarami Kota Palembang  ', 'Universitas Telkom', ''),
(141, 'Yeni Terry Lestary', 'Kmp.Bojong Kec.Soreang Kab.Bandung', 'STIKes Rajawali', ''),
(142, 'Yoana Christiani Widjaja', 'Kopo Peremai 5 CD No.32 Kec.Margahayu Kab.Bandung', 'Institut Teknologi Harapan Bangsa (ITHB)', ''),
(143, 'Yuni Mulyati Hasannah', 'Komp.Margaasih Regency Blok 18 No.42 Kec.Margaasih Kab.Bandung', 'STIKep PPNI jawa Barat', ''),
(144, 'Yusuf  Zulkarnaen', 'Blok Plawad KEc.Sliyeg Kab.Indramayu', 'Universitas Islam Bandung (UNISBA)', ''),
(145, 'Yusuf Radityawan Indrad', 'Jl.Hamka No.58 Kec.Guguk Panjang Kota Bukittinggi ', 'Universitas Padjajaran (UNPAD)', ''),
(146, 'Afina Faza', 'Jl.Papanggungan VI.Kel.Kebon Kangkung Kec.Kiaracondong ', 'Universitas Islam Bandung (UNISBA)', ''),
(147, 'Aisyah Andrawina', 'Jl.Cibarengkok N0.21 Kec Sukajadi Kota Bandung ', 'Universitas Komputer Indonesia (UNIKOM)', ''),
(148, 'Alvin Tandayu', 'Jl.Sumarno No.17Kec.Regol Kota Bandung ', 'Universitas Maranatha', ''),
(149, 'Ana Hasanah', 'Jl.Cilandak 148 F Kec.Sukasari Kota Bandung ', 'POLTEKES Bandung', ''),
(150, 'Anggi Dwi Kinanti', 'Jl. Gegerkalong Girang No. 70 Kec. Sukasari Kota Bandung', 'Poltekes Ciumbuleuit ', ''),
(151, 'Aniq Dini Karimah', 'Lingk Pangaduan Heubel Kec. Sumedang Utara Kab. Sumedang', 'Universitas Pendidikan Indonesia (UPI)', ''),
(152, 'Annisa Kusdiyani', 'Mulyasari Kec. Baleendah Kab. Bandung', 'STIKes Dharma Husada Bandung', ''),
(153, 'Annisa Nuraisyah Budiman  ', 'Perum Griya Jatinagor I Jl.Kenanga V Kab.Sumedang', 'Universitas Padjajaran (UNPAD)', ''),
(154, 'Anris Fauji', 'Kp. Tanjungpura Kec. Cirenghas Kab. Sukabumi', 'STIKes Dharma Husada Bandung', ''),
(155, 'Artini', 'Kp. Sirnagalih Kec. Cikalong Kab. Tasikmalaya', 'STIKes Dharma Husada Bandung', ''),
(156, 'Arya Pamungkas     ', 'Jl.Mengger Girang No.66 Kec.Regol Kota Bandung', 'Universitas Widyatama', ''),
(157, 'Astianingrum Sanjaya', 'Jl. Raden Intan Pakuan Baru Kec. Pakuan Ratu Kab. Way Kanan', 'Universitas Pendidikan Indonesia (UPI)', ''),
(158, 'Aulia Nur Amalia', 'Jl. Pondok Mutiara 1 Kec. Cimahi Utara Kota Cimahi', 'Universitas Islam Bandung (UNISBA)', ''),
(159, 'Aulia Nurul Aisyah', 'Jl. Kopo Bihbul No. 206 Kab Bandung', 'Institut Teknologi Nasional (ITENAS)', ''),
(160, 'Cherly Marlina, SST,M.Kes', 'Jl.Cibubur Girang No.32Rt.03/018 Kec.Parongpong Kab.Bandung Barat ', 'POLTEKES Bandung', ''),
(161, 'Danar Lingga Maulana', 'Komp. Negla Kencana A-I Kec. Ujungberung Kota Bandung', 'STIKes Jenderal Achmad Yani (UNJANI)', ''),
(162, 'Danis Janwar', 'Kp. Toblong Kec. Peundeuy Kab. Garut', 'STIKes Dharma Husada Bandung', ''),
(163, 'Dara Saritami Trimilik', 'Pondok Hijau Indah Permai Kec. Parongpong Kab. Bandung Barat', 'Universitas Islam Bandung (UNISBA)', ''),
(164, 'Dea Putri Audina', 'Jl. Kutamaya Kec. Sumedang Selatan Kab. Sumedang', 'Universitas Islam Bandung (UNISBA)', ''),
(165, 'Deki Mulyana', 'Blok Cicadas Rt. 48/17 Kec. Subang Kab. Subang', 'STIKep PPNI jawa Barat', ''),
(166, 'Della Nur Arienfiona', 'Jl.Kp.Gempol Pasar Utara Kec.Banyusari Kab.Karawang ', 'POLTEKES Bandung', ''),
(167, 'Devita Carolline Permatasari', 'Dsn. Bojongkaler Kec.Tanjungsari Kab.Sumedang', 'Universitas Padjajaran (UNPAD)', ''),
(168, 'Dewi Kuraesin', 'Cirangrang Rt. 06/04 Kec. Bbk. Ciparay Kota Bandung', 'Poltekes Ciumbuleuit', ''),
(169, 'Dewi Septiani', 'Cigugur Tengah No. 60 Kec Cimahi Tengah Kota Cimahi ', 'STIKes Rajawali', ''),
(170, 'Dian Nur Hadianti, SST., M.Kes', 'Jl. Buah Batu Regency Blok E4 Kujangsari Kec. Bandung Kidul Kota Bandung', 'POLTEKES Bandung', ''),
(171, 'Diana Endah Nurul Rachman', 'Jl. Hasan Saputra IV No. 13 Kec. Lengkong Kota Bandung', 'Universitas Islam Bandung (UNISBA)', ''),
(172, 'Dini Agustiani', 'Dusun Cigalaga Kec. Buahdua Kab. Sumedang', 'Universitas Pendidikan Indonesia (UPI)', ''),
(173, 'Ega Nugraha', 'Kp Sukalaksana Kec Sukaluyu Kan Cianjur', 'POLTEKES Bandung', ''),
(174, 'Elsa Septiani Suciawati', 'Jl Melati IX Blok E 22 Kec Cilengkrang Kab Bandung', 'STIKes Dharma Husada Bandung', ''),
(175, 'Erwin Amaludin', 'Lingk. Eyang Weri Kec. Kuningan Kab. Kuningan', 'Universitas Pasundan (UNPAS)', ''),
(176, 'Estyana Lahmayani', 'Jl Anyelir VIII N0. 2 Kec Rancaekek Kab Bandung', 'POLTEKES Bandung', ''),
(177, 'Evi Amalia Nurjanah', 'Kp Doktor Mangku Kec Bojong Picung Kab Cianjur ', 'STIKes Rajawali', ''),
(178, 'Famela Fitri', 'Perum. Korpri Blok AD No. 11 Kec. Neglasari Kota Tangerang', 'STIKes Rajawali', ''),
(179, 'FazahFauziyah Shalihah   ', 'Kp.Pondok Pasir Endah B29 Kec.Baleendah Kab.Bandung', 'STIKes AISYIYAH BANDUNG ', ''),
(180, 'Fiera Riandini ', 'Margahayu Raya Barat C3 Kec.Buah Batu Kota Bandung ', 'POLTEKES Bandung', ''),
(181, 'Fitri Sri Minarti  ', 'Jl.Rawa Kuning Kec.Cakung Jakarta Timur', 'Universitas Padjajaran (UNPAD)', ''),
(182, 'Fitria Eka Ningtias', 'Kp Permata Biru Blok B N0.39-40 Kab Bandung', 'POLTEKES Bandung', ''),
(183, 'Fuji Mustika', 'Kp Sentral Ke Cilawu Kab Garut', 'POLTEKES Bandung', ''),
(184, 'Galih Gartika Parwati', 'Dusun Ciruluk Rt. 025/006 Kec. Kalijati Kab. Subang', 'POLTEKES Bandung', ''),
(185, 'Gina Ayu Utari', 'Jl. Cimuncang Kec. Cibeunying Kidul Kota Bandung', 'Poltekes Ciumbuleuit', ''),
(186, 'Gina Nuzuliah', 'Kp. Kadujajar Kec. Malingping Kab. Lebak', 'STIKes Dharma Husada Bandung', ''),
(187, 'Gina Nuzuliah', 'Kadujajar Kec Malingping Kab Lebak', 'STIKes Dharma Husada Bandung', ''),
(188, 'Herni Martiani', 'Kp. Keboncau Kec. Paseh Kab. Bandung', 'STIKep PPNI jawa Barat', ''),
(189, 'Hilmi Abdullah Nur Setiawan', 'Jl. Gunung Batu No. 112 J Kec. Cicendo Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(190, 'Hubullah Fuadzy,S.Si.', 'Jl.Pasirlayung Barat I No.40 Padasuka Kec.Cimenyan Kab.Bandung', 'P2B2 Ciamis', ''),
(191, 'Ida Bagus Dody P', 'Panaraga Selatan Kec.Cakranegara Kota Mataram ', 'Bina Sarana Informatika (BSI)', ''),
(192, 'Indriani Ferdiana', 'Kp Sentral Ke Cilawu Kab Garut', 'POLTEKES Bandung', ''),
(193, 'Iis Hikmawati', 'Blok ! RT03/01 Kec Karang Anyrar Kab Indramayu', 'POLTEKES Bandung', ''),
(194, 'Imas Siti Masitoh', 'Kp. Dangiang Kec. Ciwidey Kab. Bandung', 'Universitas Pendidikan Indonesia (UPI)', ''),
(195, 'Intan Maulida F', 'Puri Cbr Permai Kec. Cibeureum Kota Sukabumi', 'Universitas Pasundan (UNPAS)', ''),
(196, 'Irma Della Ramdiyani', 'Jl.Melati IV No.169 Kab.Bandung', 'POLTEKES Bandung', ''),
(197, 'Irna Dewi', 'Kp. Kebon Tunggal Kec. Cimaung Kab. Bandung', 'POLTEKES Bandung', ''),
(198, 'Irna Dewi ', 'Kp.Kebon Tunggal Rt.04/011 Kec.Cimaung Kab.Bandung ', 'POLTEKES Bandung', ''),
(199, 'Islami Hudjimartsu', 'Jl.Raya Cilendek Gg.Sawah Kec.Kota Bogor Barat Kota Bogor ', 'POLTEKES Bandung', ''),
(200, 'Karina Virgi Agustha', 'Jl. Letjen Suprapto III/47 Kab. Jember', 'Universitas Komputer Indonesia (UNIKOM)', ''),
(201, 'Khalimah', 'Blok 01 Kec. Arjawinangun Kab. Cirebon', 'Universitas Pendidikan Indonesia (UPI)', ''),
(202, 'Latifah Aulannisa', 'Babakan Sari no 268 Kiaracondong Kota Bandung', 'Politeknik PIKSI Ganesha ', ''),
(203, 'Liana Muplihan', 'Kp. Tembakbaya Kec. Leles Kab. Garut', 'STIKes Budi Luhur Cimahi ', ''),
(204, 'Linda Shaniya', 'Cikungkurak Gg. Karyabakti Kec. Babakan Ciparay Kota Bandung', 'POLTEKES Bandung', ''),
(205, 'Lukman Hakim, SKM., M.Epid, DAP&E', 'Dusun Pon Rt. 002/003 Kel. Mandirancan Kec. Mandirancan Kab. Kuningan', 'Loka Litbang P2B2 ', ''),
(206, 'Lusi Sri Solihah', 'Babakan Sari no 268 Kiaracondong Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(207, 'Lutfy Andriansyah', 'Jl.Setia I.S No.23 Rt.08/08 Kec.Pondok Gede Bekasi Barat', 'Universitas Padjajaran (UNPAD)', ''),
(208, 'Maulina Ayuningtias', 'Kp. Sukamulya Kec. Cililin Kab. Bandung Barat', 'Universitas Pendidikan Indonesia (UPI)', ''),
(209, 'Medina Hutami', 'Bbk.Leuwi Bandung Rt.08/03 Kab.Bandung', 'POLTEKES Bandung', ''),
(210, 'Mega Rizkita Islami', 'Jl. Galungngung Dalam I No.11 Kec Lengkong Kota Bandung', 'POLTEKES Bandung', ''),
(211, 'Melda Lestari Pardede', 'Sangkali Rt.010/016 Kec.Karawang Barat Kab. Karawang', 'Universitas Pendidikan Indonesia (UPI)', ''),
(212, 'Mentari Zulfa Fauziyah ', 'Margahayuraya Barat R-II No.15 Kec.Buahbatu Kota Bandung  ', 'POLTEKES Bandung', ''),
(213, 'Mila Amelia Dewi', 'Kp.Wanakerta Kec.Wanasalam Kab.Lebak ', 'STIKes Dharma Husada Bandung', ''),
(214, 'Muhamad Fauzan', 'Rancasabil Kec. Baleendah Kab. Bandung', 'Sekolah Tinggi Farmasi Bandung (STFB)', ''),
(215, 'Muhammad Ridwan A', 'Jl. Waruga Jaya Kec. Parongpong Kab. Bandung Barat', 'Poltekes TNI AU Ciumbuleuit ', ''),
(216, 'Muri Saparia Ningsih', 'Jl. Lamajang Peuntas Rt. 004/016 Kab. Bandung', 'STIKes ‘Aisyiyah Bandung ', ''),
(217, 'N. Wini Apriliyani ', 'Kp.Wanir Kec.Pacer Kab.Bandung ', 'POLTEKES Bandung', ''),
(218, 'Natalia', 'Dusun Madak Kec. Kayan Hulu Kab. Sintang', 'STIKes Dharma Husada Bandung', ''),
(219, '043/SDHB/SIK/PSKPD3/III/16 ', 'Kp. Cilandak II Kec. Surade Kab. Sukabumi', 'STIKes Bhakti Kencana', ''),
(220, 'Neng Fitri Nurinayatilah', 'Kp. Cilandak II Kec. Surade Kab. Sukabumi', 'STIKes Bhakti Kencana', ''),
(221, 'Nispi Yulyana ', 'Jl.Danau No.23 BKL Kec.Gading Cempaka Kota Bengkulu', 'Universitas Padjajaran (UNPAD)', ''),
(222, 'Nurmala', 'Jl. Sasak Batu Rt. 04/02 Kec. Cimenyan Kab. Bandung', 'POLTEKES Bandung', ''),
(223, 'Nurmala', 'Jl.Sasak Batu Rt.04/02 Kec.Cimenyan Kab.Bandung', 'POLTEKES Bandung', ''),
(224, 'Aaaa', 'aa', 'aaa', ''),
(225, 'aaaa', 'aaa', 'aaa', ''),
(226, 'ibu', 'aaaa', 'aaa', ''),
(227, 'Nurul Novita Sari', 'Jl. Ranca Bentang Kec. Cimahi Selatan Kota Cimahi', 'Ketua STIKes Budi Luhur Cimahi ', ''),
(228, 'saad', 'sadasd', 'dsadasc', ''),
(229, 'Asas', 'asas', 'aaasa', ''),
(230, 'Nurul Varisha Irfani', 'Jl. Dr. Sutomo Kel. Sukamulya Kec. Sail Kota Pekanbaru', 'Universitas Katholik Parahyangan ', ''),
(231, 'asdasd', 'asdasd', 'dsdasdsa', ''),
(232, 'Oktavianti Risdiantika', 'Jl. Sariwates Raya Kec. Antapani Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(233, 'Pelesia Anoy', 'Dusun Balai Temenggung Kec. Tempunak Kab. Sintang', 'STIKes Dharma Husada Bandung', ''),
(234, 'Pratika Devi Rizkiani', 'Jl. Bronco No. 34 Kec. Margahayu Kab. Bandung', 'Poltekes TNI AU Ciumbuleuit', ''),
(235, 'Prof. DR. Sawitri Sadarjoen .Psi', 'Jl. Gunung Rahayu II Kec Ciamhi Utara Kota Cimahi', 'Universitas Padjajaran (UNPAD)', ''),
(236, 'Prof.Dr.Kusnandi Rusmil, dr.Sp.A(K).,MM', 'Babakan Sari no 268 Kiaracondong Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(237, 'Puji Lestari Sudono', 'Sarijadi Blok I No. 29D Kec. Sukasari Kota Bandung', 'Poltekes TNI AU Ciumbuleuit', ''),
(238, 'Pungky Stiawan', 'Griya Mitra Posindo Blok F4 No.8 Kab. Bandung ', 'Institut Teknologi Nasional (ITENAS)', ''),
(239, 'Puspita Restu Utami ', 'Rancaindah I A3 No.13 Kab.Bandung ', 'POLTEKES Bandung', ''),
(240, 'Rahayu Pratiwi Setia', 'Mekarjaya RT 03/05 Kec Arcamanik Kota Bandung', 'POLTEKES Bandung', ''),
(241, 'Reggy Khairunisa Ramadhani     ', 'Kp.Pasanggrahan Kec.Cikarang Timur Kab.Bekasi', 'Universitas Widyatama', ''),
(242, 'Reiza Fauzy Jasmine', 'Jl. Cihanjuang Kec. Parongpong Kab. Bandung Barat', 'Universitas Komputer Indonesia (UNIKOM)', ''),
(243, 'Reni Sugihartini', 'Jl. Jatihandap Kec. Mandalajati Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(244, 'Resa Anis    ', 'Jl.Rereongan Sarupi Kec.Cidadap Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(245, 'Resa Anisa    ', 'Jl.Rereongan Sarupi Kec.Cidadap Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(246, 'Resnizar Annasrul', 'Komp. Abadi Negara Kec. Rancaekek Kab. Bandung', 'STIKes Dharma Husada Bandung', ''),
(247, 'Revi Suhaya', 'Komp. GBI Blok F-13 No.10 Kec Bojongsoang Kab Bandung', 'STIKes Dharma Husada Bandung', ''),
(248, 'Rifqi Wildan Rea Rizkina', 'Jl. Bbk. Priangan No. 270 Kec. Regol Kota Bandung', 'POLTEKES Bandung', ''),
(249, 'Rika Resmana, M.Kes', 'Jl. Sukaati No. 35 Kec. Sukajadi Kota Bandung', 'POLTEKES Bandung', ''),
(250, 'Riska Ayu Paramitha', 'Jl.Margakencana Selatan No. 61 Kec Buah Batu Kota Bandung ', 'POLTEKES Bandung', ''),
(251, 'Rizki Indah Amalia ', 'Blok Kebon Rt 05/02 Kab.Indramayu ', 'POLTEKES Bandung', ''),
(252, 'Rosalina Putri Purnamasari     ', 'Cangkring Rt.06/01 Kab.Majalengka', 'STIKes Bhakti Kencana', ''),
(253, 'Rosida HI.Saraha  ', 'Dusun I Perumahan 100 Kec.Weda Kab.Halmahera', 'Universitas Padjajaran (UNPAD)', ''),
(254, 'Rovina Ruslami, dr., SpPD, PhD', 'Jl. Surya Sumantri No. 91 Kec. Sukajadi Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(255, 'Rudi Wisaksana, dr.,SpPD-KPTI., PhD', 'Jl. Kembar VI No. 12 Kec. Regol Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(256, 'Rudini', 'Jl. Nusa Indah Rt. 002/003 Kec. Selat Kab. Kapuas', 'STIKes Dharma Husada Bandung', ''),
(257, 'Salma Faridah', 'Jl Sejekoa Utara No.2 Kec Coblong Kota Bandung', 'POLTEKES Bandung', ''),
(258, 'Sefri Saputra', 'Jl. Juang KM 2 Kec. Nanga Pinoh Kab. Melawi', 'Universitas Islam Bandung (UNISBA)', ''),
(259, 'Septiani Puspa Dewi', 'Jl. Pamekar Barat XIII Kec. Panyileukan Kota Bandung', 'Universitas Padjajaran (UNPAD)', ''),
(260, 'Setiadi Nugraha', 'Kp. Blokbaru Kec. Pagelaran Kab. Cianjur', 'STIKes Dharma Husada Bandung', ''),
(261, 'Shelly Fatimah Nurfarida', 'Karees Kulon No. 5C/33 Kec. Lengkong Kota Bandung', 'STIKes ‘Aisyiyah Bandung', ''),
(262, 'Shintia Sugiharti ', 'Kp.Haurngombong Rt.02/09 Kab.Bandung ', 'POLTEKES Bandung', ''),
(263, 'Siti Hamidah', 'Jl. Muararajeun Lama No. 97 Kec. Cibeunying Kaler Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(264, 'Siti Rodiah', 'Kp. Kancah Rt. 001/014 Kec. Parongpong Kab. Bandung Barat ', 'POLTEKES Bandung', ''),
(265, 'Taufan Maulana', 'Jl. Manjahlega Kec. Rancasari Kota Bandung', 'STIKes Dharma Husada Bandung', ''),
(266, 'Tresna Septiriani Kurnia ', 'Kp.Sukalaksana Kec.Cikahuripan Kab.Bandung Barat ', 'POLTEKES Bandung', ''),
(267, 'Tresya Anggi Tania', 'Komp.Permata Kec.Serang Kota Serang ', 'Universitas Islam Bandung (UNISBA)', ''),
(268, 'Tri Ardayani.S.Kep. Ners. MKM', 'Jl Jatinegara 45 Kec Batununggal Kota Bandung', 'STIK Imanuel ', ''),
(269, 'Tri Fena Melilia', 'Link Jadimulya Rt 01/08 Kec Pataruman Kota Banjar', 'Universitas Maranatha', ''),
(270, 'Vevi Nur''Afifah Sanusi', 'Kp. Jabong Kec. Pagaden Kab. Subang', 'Universitas Pendidikan Indonesia (UPI)', ''),
(271, 'Wa Astuti', 'Jl. Cenderawasih Rt. 009/002 Kab. Fakfak', 'Universitas Komputer Indonesia (UNIKOM)', ''),
(272, 'Wawan Sanusi', 'Dsn. Cipareuag Kec. Cimanggung Kab. Sumedang', 'Universitas Pasundan (UNPAS)', ''),
(273, 'Wiwin Aswati', 'Dusun Kliwon Kec. Ciniru Kab. Kuningan', 'STIKes Dharma Husada Bandung', ''),
(274, 'Wiwin Widayani', 'Perum Taman Kepuh Indah Blok A2 No. 13 Kec. Padalarang Kab. Bandung Barat', 'POLTEKES Bandung', ''),
(275, 'Yuanisa Taufik', 'Kp.Rancamidin Kec.Cicalengka Kab.Bandung ', 'POLTEKES Bandung', ''),
(276, 'Yuda Maha Putra ', 'Komp.BPI Blok B2 No. 09 Kec.Kaduhejo Kab.Pandeglang', 'STIKes Jenderal Achmad Yani (UNJANI)', ''),
(277, 'Yumni Farhah', 'Jl.LasRE Martadinata Kec. Teluk Betung Timur Kota Bandar Lampung', 'Universitas Pendidikan Indonesia (UPI)', ''),
(278, 'Zahrawan Maulana Putra', 'Jl. Anggrek 16 Kec. Jatisampurna Kota Bekasi', 'Universitas Telkom', ''),
(279, 'Widiarto Syahrur, Muhammad Billy, Ogi M Soleh, Sugianto', 'dinkes', 'SMK Merdeka', ''),
(280, 'Iwan Noprianto, Hisam Fauzil Afkar', 'dinkes', 'Universitas Pasundan(UNPAS)', ''),
(281, 'M. Fuad A, Zamzam Nurzaman', 'Sekeloa', 'Universitas Komputer Indonesia (UNIKOM)', 'zamzam_nurzaman@outlook.com'),
(282, 'Bunga Hilba Septiani', 'dinkes', 'Universitas Sanggabuana', ''),
(283, 'Fathimah Zhafirah Hs, Arzinie Wismaya, Diana Wahyuni S', 'dinkes', 'Politeknik Negeri Bandung (Polban)', ''),
(284, 'Melati Lisdiawati, Aprilia Anggraeni, Aulia Octavia, Pipit Oktavia', 'sekeloa', 'SMK Provita', ''),
(285, 'Erma Rahayunita', 'Sekeloa', 'STIMIK LPKIA', ''),
(286, 'Sindi Kotavera, Dini Noviani, Soppy Nursoleha, Tessa Tiara, Amelia Inggrid, Putri Pratiwi, Nani Nadiani, Femelia Fizki P, Rizki Nur A, Rike Setyowati, Debby Nurmayanti', 'Sekeloa', 'SMK Kencana', ''),
(287, 'Sindi Kotavera, Dini Noviani, Soppy Nursoleha, Tessa Tiara, Amelia Inggrid, Putri Pratiwi, Nani Nadiani, Femelia Fizki P, Rizki Nur A, Rike Setyowati, Debby Nurmayanti', 'Sekelo', 'SMK Kencana', ''),
(288, 'asd', 'asd', 'asdas', 'as'),
(289, 'Jesica Danu P, Mega Susilawati, Yulita Dewi, Yulianti, Tessa Lonica, Wulan Amalia, Aresti Selviani D', 'Sekeloa', 'SMK Kencana', ''),
(290, 'Gina Yuhana', 'Sekeloa', 'Politeknik LP3I Bandung', ''),
(291, 'Sandy Windarwanto', 'Sekeloa', 'CSBI Bandung', ''),
(292, 'Syifa Nur P, Riva Apripiliani, Ita Meyrawati, Mawar Purnamasari', 'Sekeloa', 'SMK Negeri 3 Bandung', ''),
(293, 'Fitriani Sudarman', 'Sekeloa', 'Universitas Komputer Indonesia (UNIKOM)', ''),
(294, 'Davila Rubianti A, Jesica Grace N Sm Zahra Muthia K', 'Sekeloa', 'Universitas Padjajaran (UNPAD)', ''),
(295, 'Riyana Hardianto, Septian Sakti T L', 'Sekeloa', 'Universitas Jenderal Achmad Yani (UNJANI)', ''),
(296, 'Fristia Dwi Anugrah', 'Jl. Numbing No.7 Kecamatan Bukit Lestari Kota Tanjung Pinang', 'Universitas Padjajaran (UNPAD)', '');

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
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT for table `pengaju`
--
ALTER TABLE `pengaju`
  MODIFY `id_pengaju` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;
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
