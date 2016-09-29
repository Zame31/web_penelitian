-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2016 at 01:56 PM
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
  `id_pengaju` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `waktu_pembuatan`, `jenis_surat`, `maksud`, `waktu_mulai`, `waktu_selesai`, `no_bkbpm`, `tanggal_bkbpm`, `surat`, `no_surat`, `tanggal_surat`, `tembusan`, `id_pejabat`, `id_pengaju`) VALUES
(1, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sikap dan Komunitas', '2015-01-07', '2016-07-07', '070/30/BKBPM', '2016-01-07', 'Wakil Dekan Fak Keperawatan UNPAD', '4714/UN6.L1/PP/2015', '2015-12-30', '4,3,2,1,0', 'P01', 5),
(2, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Tingkat Pe', '2015-01-27', '2016-07-27', '070/197/BKBPM', '2016-01-27', 'Dekan FK Unisba', '035/Dek/FK-k/Skr/I/2016', '2016-01-12', '4,2,1,0', 'P01', 6),
(3, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisa Faktor yang', '2015-01-18', '2016-07-18', '070/120/BKBPM', '2016-01-18', 'b.	Surat permohonan dari  Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada No.001/SDHB/SIP/PSKMS/I/2016 , Tanggal 13 Januari    2016', '001/SDHB/SIP/PSKMS/I/2016', '2016-01-13', '4,3,1,0', 'P01', 7),
(4, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Respon Ber', '2016-01-15', '2016-07-15', '070/105/BKBPM', '2016-01-15', 'b.	Surat permohonan dari  Fak Keperawatan UNPAD No. 132/UN6.L1/PP/2016  , Tanggal 13 Januari    2015', '132/UN6.L1/PP/2016', '2016-01-13', '4,2,1,0', 'P01', 8),
(5, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Angka kejadian dema', '2016-01-29', '2016-07-29', '070/216/BKBPM', '2016-01-29', 'b.	Surat permohonan dari Ketua STIKep PPNI jawa Barat No. I/042/STIKep/PPNI/JBR/I/2016, Tanggal 25 Januari 2016', '070/216/BKBPM', '2016-01-25', '4,2,1,0', 'P01', 9),
(6, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Analisa Faktor yang Berhubu', '2016-01-14', '2016-07-14', '070/26/BKBPM', '2016-01-01', 'b.	Surat permohonan dari UNPAD No. 029/UN6.C1.3.2/KEPK/PN/2016  , Tanggal 11 Januari    2016', '029/UN6.C1.3.2/KEPK/PN/2016', '2016-01-11', '4,3,1,0', 'P01', 10),
(7, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Perilaku B', '2016-01-26', '2016-07-26', '070/179/BKBPM', '2016-01-26', 'b.	Surat permohonan dari Dekan Fak Keperawatan UNPAD  No. 363/UN6.L1/PP/2016 , Tanggal 21  Januari 2016', '070/179/BKBPM', '2016-01-26', '4,3,1,0', 'P01', 11),
(8, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prosentase penderit', '2016-01-21', '2016-07-21', '070/147/BKBPM', '2016-01-21', 'b.	Surat permohonan dari Wakil Ketua STMIK ”AMIKBANDUNG” N0.STIKIK-ABG/160125/045/WK  , Tanggal 25 Januari   2016', 'STIKIK-ABG/160125/045/WK', '2016-01-25', '4,2,1,0', 'P01', 12),
(9, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Upaya Ibu dalam Pen', '2015-01-21', '2016-07-21', '070/144/BKBPM', '2016-01-21', 'b.	Surat permohonan dari Fak Keperawatan UNPAD No. 306 /UN6.L.1/PP/2016  , Tanggal 19 Januari  2016', '306 /UN6.L.1/PP/2016  ', '2016-01-19', '4,2,1,0', 'P01', 13),
(10, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Motivasi I', '2015-12-29', '2016-06-29', '070/2238/BKBPM, ', '2015-12-29', 'b.	Surat permohonan dari Fak Keperawatan UNPAD No. 4832 /UN6.L.1/PP/2015  , Tanggal 30 Desember  2015', '4832 /UN6.L.1/PP/2015', '2015-12-30', '3,1,0', 'P01', 14),
(11, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Dukungan K', '2015-01-18', '2016-01-18', '070/38/BKBPM', '2016-01-18', 'b.	Surat permohonan dari  Ketua LPPM STIKes Bhakti Kencana No. 003/STIKes-BK/YAGK/f.1/I/2016, Tanggal 12 Januari    2016', '003/STIKes-BK/YAGK/f.1/I/2016', '2016-01-12', '4,2,1,0', 'P01', 15),
(12, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Lama Pengg', '2015-01-29', '2016-07-19', '070/43/BKBPM', '2016-01-19', 'b.	Surat permohonan dari  Wakil Ketua STIKes UNJANI No.B/5221 /STIKES/XII/2015 , Tanggal 18 Desember 2015', 'B/5221 /STIKES/XII/2015 ', '2015-12-18', '4,2,1,0', 'P01', 16),
(13, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Antar Fakt', '2016-01-25', '2016-01-25', '070/171/BKBPM', '2016-01-25', 'b.	Surat permohonan dari Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada N0. 045/SDHB/SIP/PSKMSI/I/2016  , Tanggal 25 Januari   2016', ' 045/SDHB/SIP/PSKMSI/I/2016', '2016-01-25', '4,2,1,0', 'P01', 17),
(14, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Meningkatkan Kewasp', '2016-01-13', '2016-07-13', '070/83/BKBPM', '2016-01-13', 'b.	Surat permohonan dariWakil Dekan FSRD Itenas No. 0003/Survey/FSRD-Itenas/2016, Tanggal 5 Januari  2016', '0003/Survey/FSRD-Itenas/2016', '2016-01-05', '4,2,1,0', 'P01', 18),
(15, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Dukungan S', '2016-01-14', '2016-01-14', '070/29/BKBPM', '2016-01-14', 'b.	Surat permohonan dari  FISIP UNPAD No. 0408/UN6.G1/PL/2016  , Tanggal 28 Desember    2015', ' 0408/UN6.G1/PL/2016 ', '2015-12-28', '4,3,1,0', 'P01', 19),
(16, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan perilaku p', '2016-01-25', '2016-07-25', '070/061/BKBPM', '2016-01-25', 'b.	Surat permohonan dari Ketua Prodi SI Keperawatan STIKes Dharma Husada N0. 067/SDHB/SPen/PSKPS1/I/2016  , Tanggal 25 Januari  2016', '067/SDHB/SPen/PSKPS1/I/2016', '2016-01-25', '4,2,1,0', 'P01', 20),
(17, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Korelasi Kadar HB d', '2015-01-07', '2016-07-07', '070/33/BKBPM', '2016-01-07', 'b.	Surat permohonan dari Dekan FK UNISBA No. 007/Dek/FK-k/Skr/XII/2015, Tanggal 28 Desember  2016 ', '007/Dek/FK-k/Skr/XII/2015,', '2016-12-28', '4,2,1,0', 'P01', 21),
(18, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sistem Pencatatan P', '2016-01-18', '2016-07-18', '070/117/BKBPM', '2016-01-18', 'Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada N0. 001/SDHB/SIP/PSKMSI/I/2016, Tanggal 25 Januari   2016', '001/SDHB/SIP/PSKMSI/I/2016', '2016-01-25', '5,4,2,1,0', 'P01', 22),
(19, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analias Prilaku Pek', '2015-01-12', '2016-07-12', '070/72/BKBPM', '2016-01-12', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB No. 001/SDHB/SIP/PSKMS1/I/2016, Tanggal 11 Januari  2016', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-11', '4,3,1,0', 'P01', 23),
(20, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Analisa Perilaku Pe', '2015-01-12', '2016-07-12', '070/71/BKBPM', '2016-01-12', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB No. 001/SDHB/SIP/PSKMS1/I/2016, Tanggal 11 Januari  2016', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-11', '4,3,1,0', 'P01', 24),
(21, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang S.Government In Sel', '2015-01-16', '2016-07-16', '070/1904/BKBPM', '2016-01-16', 'b.	Surat permohonan dari Derektur JKSG UMY Universitas Muhammadiyah Yogyakarta No.06/JKSG/I/2016, Tanggal 11 Januari 2016', '06/JKSG/I/2016', '2016-01-11', '4,2,1,0', 'P01', 25),
(22, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Faktor-Faktor yang ', '2015-12-28', '2016-06-28', '070/2226/BKBPM', '2016-12-28', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB N0. 001/SDHB/SIP/PSKMS1/I/2016 , Tanggal 7 Januari  2016 ', '001/SDHB/SIP/PSKMS1/I/2016 ', '2016-01-07', '4,2,1,0', 'P01', 26),
(23, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Diabetes Melitus di', '2015-01-14', '2016-07-14', '070/97/BKBPM', '2016-01-14', 'b.	Surat permohonan dari Ketua STIKes Immanuel Bandung No.486/STIKI/PK.I-Akd/XI/2015 , Tanggal 30 November 2016', '486/STIKI/PK.I-Akd/XI/2015', '2016-11-30', '4,3,1,0', 'P01', 27),
(24, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahua', '2015-01-14', '2016-07-14', '070/92/BKBPM', '2016-07-14', 'b.	Surat permohonan dari Ketua Prodi S1 Kesmas STIKes DHB No. 001/SDHB/SIP/PSKMS1/I/2016, Tanggal 13 Januari  2016', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-13', '4,2,1,0', 'P01', 28),
(25, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Tingkat St', '2015-01-06', '2016-07-06', '070/26/BKBPM', '2016-01-06', 'b.	Surat permohonan dari Wakil Dekan Fak Keperawatan UNPAD N0. 4814/UN6.L1/PP/2015  , Tanggal 30 Desember   2015', '4814/UN6.L1/PP/2015', '2015-12-30', '5,4,1,0', 'P01', 29),
(26, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Kebersihan Mulut di Kota Bandung', '2016-01-26', '2016-07-26', '070/70/BKBPM', '2016-01-26', 'Dekan FKG UNPAD', '366/UN6.F1/DL/2016 ', '2016-01-19', '4,2,1,0', 'P01', 30),
(27, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Subjective well-Being Pada Lansia Peserta Prolanis di Puskesmas Kota Bandung', '2015-12-03', '2016-06-03', '070/2091/BKBPM', '2015-12-03', 'Fak Psikologi Univ Maranatha', '0607/FP/UKM/XII/2015  ', '2015-12-02', '4,2,1,0', 'P01', 31),
(28, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambara pengetahuan dan sikap pencegahan peningkatan tekanan darah pada penderita hipetensi ', '2016-01-25', '2016-07-25', '070/168/BKBPM', '2016-01-25', 'Ketua Sekolah Tinggi Ilmu Keperawatan PPNI Jawa Barat', 'I/023/STIKep/PPNI/JBR/I/2016  ', '2016-01-13', '4,2,1,0', 'P01', 32),
(29, '2016-01-06', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Gambaran Pengetahuan dan Sikap Wanita Usia Subur Tentang Kanker Serviks', '2016-01-18', '2016-07-18', '070/126/BKBPM', '2016-01-18', 'Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana', '098/STIKes-BK/YAGK/f.2/I/2016', '2016-01-12', '4,2,1,0', 'P01', 33),
(30, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan   dan Sikap Ibu Hamil HIV/AIDS', '2015-01-14', '2016-07-14', '070/101/BKBPM', '2016-01-14', 'Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana', '099/STIKes-BK/YAGK/f.2/I/2016', '2016-01-05', '4,3,1,0', 'P01', 34),
(31, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Kecemasan dengan Kejadian Hipertensi Pada Lansia', '2015-01-27', '2016-07-27', '070/195/BKBPM', '2016-01-27', 'Dekan  Fak Keperawatan BSI', '136/FIKA/UBSI/I/2016', '2016-01-21', '4,2,1,0', 'P01', 35),
(32, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Sistem Pakar Untuk Diagnosa Penyakit Tuberkolosis', '2015-01-18', '2016-07-18', '070/128/BKBPM', '2016-01-18', 'Prodi Sistem Informasi UNIKOM', 'IS/FTIK/UNIKOM/XII/2015 ', '2015-12-30', '5,4,1,0', 'P01', 36),
(33, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Pendidikan Kesehatan dan SMS Reminder terhadap Peningkatan HB Ibu Hamil dengan Anemia', '2015-01-06', '2016-07-06', '070/23/BKBPM', '2016-01-06', 'Fak Keperawatan UNPAD', '4796/UN6.L1/PP/2015', '2016-12-30', '4,2,1,0', 'P01', 37),
(34, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Masalah Psikologis Pekerja Seks Komersial dengan Infeksi Menular Seksual', '2015-01-08', '2016-07-08', '070/43/BKBPM', '2016-01-08', 'Wakil Dekan Fak. Keperawatan UNPAD', '4824/UN6.L1/PP/2016  ', '2015-12-30', '4,3,1,0', 'P01', 38),
(35, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang STATUS Kebersihan Mulut Atlet Penyandang Tunadaksa Di Kota Bandung', '2015-01-08', '2016-07-08', '070/09/BKBPM', '2016-01-08', 'Wakil Dekan FK Gigi UNPAD', '39/UN6.F1/DL/2016  ', '2016-01-05', '4,3,1,0', 'P01', 39),
(36, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahuan Ibu Hamil Tentang HIV/AIDS dengan Sikap Ibu Terhadap Program Pencegahan Penularan HIV/AIDS dari Ibu ke Anak (PPIA) Di Puskesmas Ibrahim Aji', '2015-01-19', '2016-07-19', '070/42/BKBPM', '2016-01-19', 'FK UNPAD', '4796/UN6.C1/PN/20', '2016-01-14', '4,3,1,0', 'P01', 40),
(37, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahuan Ibu Hamil tentang HIV/AIDS dengan sikap Ibu terhadap Program Pencegahan Penularan HIV/AIDS dai Ibu ke Anak (PPIA) di UPT Puskesmas Ibrahim Adjie ', '2015-01-19', '2016-07-19', '070/42/BKBPM', '2016-01-19', 'Wakil Dekan Bidang Akademik Fakultas Kedokteran Unpad', '4646/UN6.c1/PN/2016', '2016-01-14', '4,3,1,0', 'P01', 41),
(38, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Evaluasi Penggunaan Obat HIV Pada Pasien Rawat Jalan di Rumah Sakit', '2015-01-12', '2016-07-12', '070/18/BKBPM', '2016-01-12', 'Ketua STFB', '019/STFB/S.P/XII/2015 ', '2016-12-21', '4,3,1,0', 'P01', 42),
(39, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Nifas', '2015-01-16', '2016-01-16', '070/108/BKBPM', '2016-01-16', 'Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana ', '122/STIKes-BK/YAGK/F.2/I/2016 ', '2016-01-12', '4,3,1,0', 'P01', 43),
(40, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Kesiapan Faskes Tingkat I dengan Jumlah Cakupan Rujukan di Rumah Sakit', '2016-01-07', '2016-07-07', '070/35/BKBPM', '2016-01-07', 'Prodi S1 Kesmas STIKes DHB ', '001/SDHB/SIP/PSKMS1/I.2016', '2016-01-06', '4,2,1,0', 'P01', 44),
(41, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Upaya Ibu dalam Pencegahan Skunder Diare pada Balita', '2016-04-20', '2016-10-20', '070/487/BKBPM', '2016-04-20', 'Wakil Dekan Fak Keperawatan UNPAD', '1707/UN6.L1/PP/2016  ', '2016-03-29', '4,3,1,0', 'P01', 45),
(42, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Faktor-Faktor yang melatarbelakangi Pelaksanaan Surveilans Campak pada Petugas Puskesmas di Kota Bandung', '2015-12-31', '2016-06-30', '070/1937/BKBPM', '2016-12-31', 'Wakil Dekan Fak Keperawatan UNPAD ', '4489/UN6.L1/PP/2015  ', '2015-12-18', '4,3,1,0', 'P01', 46),
(43, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang A Cross-Sectional Study Of Carriage of Streptococcus Pnemoniae ( the Pneumococcus) and orther Important Bacterial Pathogens (  Staphylococcus Aureus, Haemophilus Influenzae, and Moraxella Catarrhalis ) in Indonesioan Children 12-23 Montha of Age', '2015-01-13', '2016-07-13', '070/19/BKBPM', '2016-01-13', 'Dept Ilmu Kesehatan Anak UNPAD ', '027/UN6.C1.1.20/PN/2016  ', '2016-01-07', '4,3,1,0', 'P01', 47),
(44, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Akuntabilitas, Trasparansi dan Fungsi Pemeriksaan Intern terhadap Kinerja Instansi Pemerintah', '2015-12-10', '2016-06-10', '070/42/BKBPM', '2016-01-08', 'Dekan Fak Ekonomi Universitas Widyatama ', '0135/SM-REG/BPAA-UTAMA/XI/2015', '2015-11-16', '6,5,1,0', 'P01', 48),
(45, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Prilaku Pencegahan Keputihan Dengan Kejadian Keputihan Pada Remaja Putri', '2015-01-14', '2016-07-14', '070/93/BKBPM', '2016-01-14', 'Ketua Prodi S1 Kesmas STIKes DHB ', '001/SDHB/SIP/PSKMS1/I/2016', '2016-01-13', '4,3,1,0', 'P01', 49),
(46, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu hamil Tentang Pencegahan Penularan HIV dari Ibu Ke Anak ( PPIA)', '2015-01-07', '2016-07-07', '070/28/BKBPM', '2016-01-07', 'LPPM DIII Kebidanan STIKes Bhakti Kencana ', '007/STIKes-BK/YAGK/f.2/I/2016', '2016-01-07', '4,3,2,1,0', 'P01', 50),
(47, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Evaluasi Kesesuaian Penulisan resep Obat Diabetes Melitus Tipe 2 Pada Pasien Rawat Jalan Dengan Formularium Rumah Sakit ', '2015-01-13', '2016-07-13', '070/23/BKBPM', '2016-01-13', 'Ketua STFB ', '020/STFB/S.P/XII/2015 ', '2015-12-21', '4,2,1,0', 'P01', 51),
(48, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Obesitas Pada Anak', '2015-01-07', '2016-07-07', '070/37/BKBPM', '2016-01-07', 'Prodi Desain Kominkasi Visual UNIKOM ', '279/PP/KJDKV/UNIKOM/XII/2015', '2015-12-22', '4,2,1,0', 'P01', 52),
(49, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Kespro dan KB', '2015-01-16', '2016-07-16', ': 070/109/BKBPM', '2016-01-16', 'dari  Ketua LPPM DIII Kebidanan STIKes Bhakti Kencana  ', '124/STIKes-BK/YAGK/F.2/I/2016 ', '2016-01-12', '4,3,1,0', 'P01', 53),
(50, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Self Efficaci Ibu Menyusui terhadap Pemenuhan Nutrisi Pada bayi Dengan ASI Ekslusif', '2015-01-21', '2016-07-21', '070/148/BKBPM', '2016-01-21', 'Fak Keperawatan UNPAD', '280 /UN6.L.1/PP/2016  ', '2016-01-18', '4,2,1,0', 'P01', 54),
(51, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Jumlah Kejadian Kasus Pada Bayi dan Neonatus Dan Angka Kejadian Tertinggi Pada Persalinan', '2015-01-07', '2016-07-07', '070/40/BKBPM', '2016-01-07', 'Ketua DIII Kebidanan STIKes Bhakti Kencana ', '089/STIKes-BK/YAGK/f.2/I/2016', '2016-01-05', '4,2,1,0', 'P01', 55),
(52, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Pengaruh Personal Hygiene dan Sanitasi Dengan kejadian penyakit Typhus', '2015-12-28', '2016-06-28', ': 070/2225/BKBPM', '2016-12-28', 'Prodi S1 Kesmas STIKes DHB ', '001/SDHB/SIP/PSKMS1/I.2016 ', '2016-01-06', '4,3,1,0', 'P01', 56),
(53, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perancangan Kampanye Melalui Buku Paduan Mengenai Penghentian Tindakan Perubahan Anak Kidal', '2015-01-13', '2016-07-13', '070/81/BKBPM', '2016-01-13', 'Wakil Dekan FSRD Itenas', '0001/Survey/FSRD-Itenas/2016', '2016-01-05', '4,2,1,0', 'P01', 57),
(54, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Penyakit TBC', '2015-01-26', '2016-07-26', '070/189/BKBPM', '2016-01-26', 'Ketua Prodi S1 Kesmas STIKes DHB ', '105/SDHB/SPen/PSKMS1/I/2016', '2016-01-26', '4,3,1,0', 'P01', 58),
(55, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait Pengaruh Lingkungan Kerja dan Kepuasan Kerja terhadap Kinerja Pegawai Serta Implikasinya Terhadap Kinerja Organisasi', '2015-09-17', '2016-03-17', '070/1656/BKBPM', '2015-09-17', 'Ketua LPPM Univ Widyatama ', '156/LP2M-UTAMA/IX/2015', '2015-09-16', '7,4,1', 'P01', 59),
(56, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Paritas dengan Kejadian Laserasi Perineum Pada Ibu Bersalin di Puskesmas Puter Periode Januari – September 2015', '2015-01-07', '2016-07-07', '070/39/BKBPM', '2016-01-07', ' b.	Surat permohonan dari ', '038/STIKes-BK/YAGK/f.2/I/2016', '2016-01-05', '4,2,1,0', 'P01', 60),
(57, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang  Pengembangan Daun Katuk (Sauropus Androgynus(L) Merr ) sebagai Biskuit Laktogenik ( Ditinjau dari Volume ASI, Kadar Prolaktin dan Berat Badan Bayi )', '2015-01-28', '2016-07-28', '070/75/BKBPM', '2016-01-28', 'Ketua Prodi Magister Kebidanan FK UNPAD ', '53.UN6.C1.2/4/PP/2016', '2016-01-25', '4,2,1,0', 'P01', 61),
(58, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prevalence  of Gingivitis in Bandung', '2015-01-15', '2016-07-15', '070/34/BKBPM', '2016-01-15', 'dari  Wakil Dekan FKG UNPAD', '163/UN6.F1/DL/2016  ', '2016-01-11', '4,3,1,0', 'P01', 62),
(59, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Gambaran Pengetahuan Ibu Hamil Trimester I Tentang Emesis Gravidarum berdasarkan Umur dan Pendidikan ', '2015-01-18', '2016-07-18', '070/127/BKBPM', '2016-01-18', 'Ketua LPPM D III Kebidanan STIKes Bhakti Kencana ', '047/STIKes-BK/YAGK/f.2/I/2016  ', '2016-01-12', '4,3,1,0', 'P01', 63),
(60, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Perbandingan Penyembuhan Luka Episiotomi Antara Pemberian Anestesi Dengan Tanpa Pemberian Anestesi', '2015-01-08', '2016-07-08', '070/42/BKBPM', '2016-01-08', 'Wakil Dekan Fak Keperawatan UNPAD', '4775/UN6.L1/PP/2015  ', '2015-12-30', '4,2,1,0', 'P01', 64),
(61, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pengetahuan Ibu tentang Penyakit ISPA dengan Perilaku Pencegahan ISPA pada Balita ', '2016-01-25', '2016-07-25', '070/172/BKBPM', '2016-01-25', 'Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada ', '038/SDHB/SIP/PSKMSI/I/2016  ', '2016-01-22', '4,2,1,0', 'P01', 65),
(62, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Status Gizi dengan Tumbuh Kembang Anak Usia 4-5 tahun', '2015-01-19', '2016-07-19', '070/44/BKBPM', '2016-01-19', 'Wakil Ketua STIKes UNJANI ', 'B/5270/STIKES/XII/2015', '2015-12-21', '4,2,1,0', 'P01', 66),
(63, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Hubungan Pemberian Imunisasi Dasar Lengkap Dengan Kejadian Penyakit ISPA Pada Bayi Tahun 2016', '2016-01-25', '2016-07-25', '070/170/BKBPM', '2016-01-25', 'Ketua Prodi S1 Ilmu Kesehatan Masyarakat STIKes Dharma Husada ', '044/SDHB/SIP/PSKMSI/I/2016  ', '2016-01-25', '4,2,1,0', 'P01', 67),
(64, '2016-01-07', 'penelitian', 'Pengambilan Data di Lingkungan Dinas Kesehatan Kota Bandung yang terkait tentang Prevalensi Periodontitis Kronis di Kota Bandung', '2016-01-15', '2016-07-14', '070/33/BKBPM', '2016-01-15', 'Wakil Dekan FKG UNPAD ', '126/UN6.F1/DL/2016  ', '2016-01-08', '4,3,1,0', 'P01', 68),
(73, '2016-02-29', 'penelitian', 'zz', '2016-09-28', '2016-09-22', 'zz', '2016-09-25', 'zzz', 'zz', '2016-09-26', '6,4,0', 'P01', 77),
(74, '2016-09-20', 'penelitian', 'dd', '2016-09-27', '2016-09-29', 'ddd', '2016-09-17', 'ddd', 'ddd', '2016-09-30', '1,0', 'P01', 72);

-- --------------------------------------------------------

--
-- Table structure for table `pengaju`
--

CREATE TABLE `pengaju` (
  `id_pengaju` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `institusi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaju`
--

INSERT INTO `pengaju` (`id_pengaju`, `nama`, `alamat`, `institusi`) VALUES
(5, 'Abdul Aziz', 'Komp uri Fajar D N0.36 Kec imahi Selatan Kota Cimahi', 'Universitas Padjajaran (UNPAD)'),
(6, 'Agnita Putri Fadhilah', 'Jl.Andani Sakti No.134 Cibitung Bekasi Kab Bekasi', 'Universitas Islam Bandung(UNISBA)'),
(7, 'Aisya Fitrianita', 'Ds.Ngampal Rt.02/01 Kec.Sumber Rejo Kab.Bojonegoro', 'STIKes Dharma Husada Bandung'),
(8, 'Algia Nuruliani', 'Jl. Ters Cikajang Raya 1 N0.102 Kec Arcamanik Kota Bandung', 'Universitas Padjajaran (UNPAD)'),
(9, 'Amini Lancia Putri ', 'Distrikan Kec. Banjarsari Kota Surakarta', 'STIKep PPNI jawa Barat'),
(10, 'Angga Irawan', 'Komp. Bajuin Blok E No.2 Kab Tanah Laut prov Kalsel', 'Universitas Padjajaran (UNPAD)'),
(11, 'Anggi Putri Aryani', 'Dsn Sayang Kec Jatinangor Kab Sumedang', 'Universitas Padjajaran (UNPAD)'),
(12, 'Anita Putri', 'Jl.Jayagiri Kec.Lembang Kab.Bandung', 'STMIK (AMIKBANDUNG)'),
(13, 'Annisa Lathifa Ulfah', 'Komp.Mekar Indah VIII No.1 Kec Cileunyi Kab Bandung', 'Universitas Padjajaran (UNPAD)'),
(14, 'Astri Chahya Pertiwi', 'Rancaekek Permai H-10 N0. 23 Kec Rancaekek', 'Universitas Padjajaran (UNPAD)'),
(15, 'Astri Fitriyanty', 'Jl. Kencana Arum L-21 Kec Buah Batu Bandung', 'STIKes Bhakti Kencana '),
(16, 'Aulia Dyah Safitri', 'Gg.Ciroyom V Kec Andir Kota Bandung', 'STIKes Jenderal Achmad Yani (UNJANI)'),
(17, 'Chintiya Pangesti', 'Jl.Gajah Mada Kec.Tanjungpandan Kab.Belitung', 'STIKes Dharma Husada Bandung'),
(18, 'Dara Chantika', 'Jl. Golf Barat XXI No.2A Kec Arcamanik Kota Bandung', 'Institut Teknologi Nasional(ITENAS)'),
(19, 'Darastry Latifah', 'Jl. Nawawi No.3 Kec Bbk Ciparay Kota Bandung', 'Universitas Padjajaran (UNPAD)'),
(20, 'Darna Natalia Iping', 'Jl. Mara satu kec. Tanjung palas barat kab. Bulungan ', 'STIKes Dharma Husada Bandung'),
(21, 'Desi Ratnasari ', 'Jl Batununggal Indah VIII Kec Bandung Kidul Kota Bandung', 'Universitas Islam Bandung(UNISBA)'),
(22, 'Desnia Widyastuti', 'Neglasari II No.135 Kec.Ujungberung Kota Bandung', 'STIKes Dharma Husada Bandung'),
(23, 'Dian Perwada', 'Jl. Kelinci I No.31 Kec Bekasi Utara Kota Bekasi', 'STIKes Dharma Husada Bandung'),
(24, 'Dinny Noor Fauziah', 'Perum Griya Mukti Sejahtera Blok X-10 Kec Gunung Pinang Kota Samarinda', 'STIKes Dharma Husada Bandung'),
(25, 'Drs.Achmad Nurmandi, M.Sc', 'Kadipulo Rt.03/35 Kec.Berbah Kab.Sleman', 'Universitas Muhammadiyah Yogyakarta'),
(26, 'Elisabeth Sanamas', 'Basim Kab Asmat Prov Papua', 'STIKes Dharma Husada Bandung'),
(27, 'Enti Pagasing', 'Jl.Ki Hajar Dewantara Kec.Bolano Lambunu Kab.Parigi Moutong  ', 'STIKes Immanuel Bandung '),
(28, 'Eva Yuliana', 'Dudun VI Kec Braja Salebah Kab Lampung Timur', 'STIKes Dharma Husada Bandung'),
(29, 'Farisa HersWandani Akhzan', 'BTN Asal Mula Kec Tamalanrea Kota Makasar', 'Universitas Padjajaran (UNPAD)'),
(30, 'Gema Karina Putri', 'Komp. Pasadena A4 no.10 Bbbk Ciparay Kota Bandung', 'Universitas Padjajaran (UNPAD)'),
(31, 'Gladys Marcella Pilat', 'Kel Tapuang Tapuang Kec Taruna Timur Kab Kep Sangihe Sulawesi Utara', 'Universitas Maranatha'),
(32, 'Helmi Gustav', 'Citepus III Kec.Cicendo Kota Bandung', 'STIKep PPNI jawa Barat'),
(33, 'Imas Aisatul M', 'Kp.Kesabilan Kec Pontang Kab Serang', 'STIKes Bhakti Kencana'),
(34, 'Indawati', 'Kp Margaluyu Kec Tageung Kab Cianjur', 'STIKes Bhakti Kencana'),
(35, 'Kadek Devi Pramana', 'Dsn Rendang Bajur Kec Gunung Sari Kab Lombok Barat', 'Bina Sarana Informatika (BSI)'),
(36, 'Lani Karmila', 'Dsn Cijeungjing Kec Jatigede Kab Sumedang', 'Universitas Komputer Indonesia (UNIKOM)'),
(37, 'Lia Dahlia', 'Dsn Pahing RT 01/03 Kec Cidahu Kab Kuningan', 'Universitas Padjajaran (UNPAD)'),
(38, 'Masriyah Komalasari', 'Jl Bojong Kaler Blk No.25 Kec Cibeunying Kaler', 'Universitas Padjajaran (UNPAD)'),
(39, 'Mochamad Nur Ramadhan', 'Jl Negla N0. 17 Kec Sukasari Kota Bandung', 'Universitas Padjajaran (UNPAD)'),
(40, 'Mutiara Karana Putri', 'Kp Cipeundeuy Kec Gunung Guruh Kab Sukabumi', 'Universitas Padjajaran (UNPAD)'),
(41, 'Mutiara Kirana Putri', 'Kp.Cipeundeuy Kec.Gunungguruh Kab.Sukabumi  ', 'Universitas Padjajaran (UNPAD)'),
(42, 'Noris Arya Saputra', 'Perum Puri Cileungsi Kab Bogor', 'Sekolah Tinggi Farmasi Bandung(STFB)'),
(43, 'Nova Nofiyanti', 'Kp.Sukamelang Rt.23/04 Kel.Sukmelang Kec.Subang', 'STIKes Bhakti Kencana'),
(44, 'Novia Rhoza', 'Jl Babakan Irigasi Kec Bojongloa Kaler Kota Bandung', 'STIKes Dharma Husada Bandung'),
(45, 'Nurrachma Ariestanti  ', 'Kelapa Tiga Gg Krip Jakarta Selatan', 'Universitas Padjajaran (UNPAD)'),
(46, 'Pitri', 'Sukapura Kec Kiaracondong Kota Bandung', 'Universitas Padjajaran (UNPAD)'),
(47, 'Prof Cissy B Kartasasmita,  Dr,Sp.AK(K), MSc, PhD', 'Jl Karawitan N0. 6 Kec Lengkong Kota Bandung', 'Universitas Padjajaran (UNPAD)'),
(48, 'Putri Natalisa', 'Jl. Santosa Asih III N/16 No.31 Kec Rancasari Kota Bandung', 'Universitas Widyatama'),
(49, 'Rahayu Ningsih', 'Kuamang JR Kuamang Kec Panti Kab Pasaman', 'STIKes Dharma Husada Bandung'),
(50, 'Ramayanti Purba ', 'Sukamaju Rt  02/03 Kab Tulang Bawang', 'STIKes Bhakti Kencana'),
(51, 'Restu Awallidin Sujana', 'Jl.Pasir Makmur III No. 162 Kec Citamiang Kota Sukabumi', 'Sekolah Tinggi Farmasi Bandung(STFB)'),
(52, 'Rifki Rakhmansyah', 'Bbk Sadang kec Baleendah Kab Bandung', 'Universitas Komputer Indonesia (UNIKOM)'),
(53, 'Rini Firliany', 'Jl.Cimencrang Rt.01/Rw.05 Kec.Gedebage Kota Bandung ', 'STIKes Bhakti Kencana'),
(54, 'Riris Purwita Widodo', 'Jl.Cendana 3 D-4/6 PD Rejeki Kec Pasar Kemis Kan Tangerang', 'Universitas Padjajaran (UNPAD)'),
(55, 'Risfi Rifa Afifah', 'Jl Cidurian Utara Rt 005/010 Kota Bandung', 'STIKes Bhakti Kencana'),
(56, 'Riska Yudarsih', 'Dsn Urisan Jaya Kec Manggar Kab Belitung Timur', 'STIKes Dharma Husada Bandung'),
(57, 'Risthie Dewi Pradisca', 'Jl.Simpang Pahlawan IV No. 15 Kec Cibeunying Kaler Kota Bandung', 'Institut Teknologi Nasional(ITENAS)'),
(58, 'Rizka Pamela', 'Dsn Kabung Jaya Kec Kab Belitung Timur', 'STIKes Dharma Husada Bandung'),
(59, 'Shinta Oktafien,SE,.MM', 'Pasar Mulia Selatan Kec Pesisir Tengah Kab Lampung Barat', 'Universitas Widyatama'),
(60, 'Siti Sarah Nurfatimah', 'Kp Sukasirna Rt 11/04 Kec Pasirkuda Kab Cianjur', 'STIKes Bhakti Kencana'),
(61, 'Sri Handayani', 'Petak Kec Praya Tengah Kab Lombok Tengah', 'Universitas Padjajaran (UNPAD)'),
(62, 'Tan Zhi Xin', 'Bale Padjajaran Jatinangor Sumedang Jabar', 'Universitas Padjajaran (UNPAD)'),
(63, 'Tuti Ratnasari', 'Kp Sayuran Kec.Cikaum Kab.Subang ', 'STIKes Bhakti Kencana'),
(64, 'Umi Annisa Furi', 'Jl Marga Jati N0. 24 ', 'Universitas Padjajaran (UNPAD)'),
(65, 'Vilantia Elisti', 'Jl.Lettu Mad Daud Kec.Tanjungpandan Kab.Belitung', 'STIKes Dharma Husada Bandung'),
(66, 'Wendy Mega Pertiwi', 'Jl.Perumnas Raya No.11 Blok Sukaasih Kec Subang', 'STIKes Jenderal Achmad Yani (UNJANI)'),
(67, 'Wegi Ariska', 'Jl.Gajah Mada Kec.Tanjungpandan Kab.Belitung', 'STIKes Dharma Husada Bandung'),
(68, 'Windy Hani', 'Jl. Lembang Pinang VI Blok I 8/4 Kec Duren Sawit Jakarta', 'Universitas Padjajaran (UNPAD)'),
(72, 'dd', 'dd', 'Universitas Komputer Indonesia (UNIKOM)'),
(73, 'q', 'q', 'Sekolah Tinggi Farmasi Bandung (STFB)'),
(74, 'e', 'e', 'Sekolah Tinggi Farmasi Bandung (STFB)'),
(75, 'dddd', 'dd', 'STIK Immanuel Bandung'),
(76, 'ffff', 'fffff', 'Universitas Padjajaran (UNPAD)'),
(77, 'zzz', 'zz', 'STIK Immanuel Bandung');

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
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `pengaju`
--
ALTER TABLE `pengaju`
  MODIFY `id_pengaju` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
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
