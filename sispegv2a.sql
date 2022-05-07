-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2022 at 09:36 AM
-- Server version: 8.0.27
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispegv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `browser`
--

CREATE TABLE `browser` (
  `id` int NOT NULL,
  `browsername` varchar(30) NOT NULL,
  `total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `browser`
--

INSERT INTO `browser` (`id`, `browsername`, `total`) VALUES
(1, 'Chrome', 700),
(2, 'Firefox', 450),
(3, 'Safari', 220),
(4, 'Opera', 180);

-- --------------------------------------------------------

--
-- Table structure for table `datatandajasa`
--

CREATE TABLE `datatandajasa` (
  `id_datatandajasa` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor` varchar(30) NOT NULL,
  `pemberi` varchar(50) NOT NULL,
  `jabatanpemberi` varchar(50) NOT NULL,
  `file` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drdiklatfungsional`
--

CREATE TABLE `drdiklatfungsional` (
  `id_diklatfungsional` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(15) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `tahunmulai` date NOT NULL,
  `tahunselesai` date NOT NULL,
  `jumlahjam` int NOT NULL,
  `penyelenggara` varchar(50) NOT NULL,
  `filesertifikat` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drdiklatjenjang`
--

CREATE TABLE `drdiklatjenjang` (
  `id_diklatjenjang` bigint NOT NULL,
  `nip` char(8) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `angkatan` varchar(5) NOT NULL,
  `penyelenggara` varchar(50) NOT NULL,
  `tanggalmulai` date NOT NULL,
  `tanggalselesai` date NOT NULL,
  `predikat` varchar(30) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `jumlahjam` int NOT NULL,
  `filesertifikat` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drdiklat_teknis`
--

CREATE TABLE `drdiklat_teknis` (
  `id_diklat_teknis` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(15) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `tahunmulai` date NOT NULL,
  `tahunselesai` date NOT NULL,
  `jumlahjam` int NOT NULL,
  `penyelenggara` varchar(50) NOT NULL,
  `fileserttifikat` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drjabatanf`
--

CREATE TABLE `drjabatanf` (
  `id_drjabatanf` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `jabatan` bigint NOT NULL,
  `tmt` date NOT NULL,
  `nomorsk` varchar(20) NOT NULL,
  `tanggalsk` date NOT NULL,
  `pejabat` varchar(50) NOT NULL,
  `filesk` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drjabatans`
--

CREATE TABLE `drjabatans` (
  `id_drjabatans` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `eselon` char(2) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `unitkerja` bigint NOT NULL,
  `tmt` date NOT NULL,
  `nomorsk` date NOT NULL,
  `tanggalsk` date NOT NULL,
  `pejabat` varchar(50) NOT NULL,
  `filesk` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drpangkat`
--

CREATE TABLE `drpangkat` (
  `id_drpangkat` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `golongan` bigint NOT NULL,
  `pejabat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomorsk` varchar(30) NOT NULL,
  `tanggalsk` date NOT NULL,
  `filesk` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drpangkat`
--

INSERT INTO `drpangkat` (`id_drpangkat`, `nip`, `golongan`, `pejabat`, `nomorsk`, `tanggalsk`, `filesk`) VALUES
(1, '1010', 0, 'Rektor', '', '2016-10-01', ''),
(2, '195303061979031003', 12, 'Rektor', '', '2009-04-01', ''),
(3, '195308031981031003', 10, 'Rektor Unpatti', '889/un.13', '2001-10-01', '6581Letter of Acceptance.pdf'),
(4, '195312101980031006', 11, 'Rektor', '', '2008-10-01', ''),
(5, '195401301980031007', 8, 'Rektor', '', '2002-04-01', ''),
(6, '195603291977031001', 8, 'Rektor', '', '2011-04-01', ''),
(7, '195703211980031003', 9, 'Rektor', '', '2002-01-01', ''),
(8, '195703231983031003', 9, 'Rektor ', '12', '2003-04-01', ''),
(9, '195711151987032002', 10, 'Rektor', '', '2015-04-01', ''),
(10, '195801101986031002', 11, 'Rektor', '', '2011-04-01', ''),
(11, '195904031987031002', 8, 'Rektor', '', '2010-10-01', ''),
(12, '195908251986101001', 12, 'Rektor', '', '2010-10-01', ''),
(13, '196009251988032001', 11, 'Rektor', '', '2010-04-01', ''),
(14, '196010271990031004', 11, 'Rektor', '', '2010-04-01', ''),
(15, '196011111981031004', 6, 'Rektor', '', '2012-12-01', ''),
(16, '196011231991031001', 8, 'Rektor', '', '2001-04-01', ''),
(17, '196105271997002100', 8, 'Rektor', '', '2010-01-10', ''),
(18, '196203031987032003', 7, 'Rektor', '', '2007-04-01', ''),
(19, '196208131989031003', 12, 'Rektor', '', '2010-04-01', ''),
(20, '196208212014091002', 2, 'Rektor', '', '2014-09-01', ''),
(21, '196303171986101001', 9, 'Rektor', '', '2001-04-01', ''),
(22, '196308301994031003', 10, 'Rektor', '', '2016-01-10', ''),
(23, '196309251986031002', 9, 'Rektor', '', '2013-10-01', ''),
(24, '196311251984032001', 7, 'Rektor', '', '2003-04-01', ''),
(25, '196311291987031002', 7, 'Rektor', '', '2014-04-01', ''),
(26, '196401281992032002', 7, 'Rektor', '', '2013-10-01', ''),
(27, '196408091993031001', 8, 'Rektor', '', '2001-04-01', ''),
(28, '196410121988031003', 8, 'Rektor', '', '2014-04-01', ''),
(29, '196504301987112001', 7, 'Rektor', '', '2012-04-01', ''),
(30, '196505061987031003', 8, 'Rektor', '', '2014-10-01', ''),
(31, '196505091997021001', 9, 'Rektor', '', '2011-04-01', ''),
(32, '196506221998031001', 9, 'Rektor', '', '2010-10-01', ''),
(33, '19650905199412001', 6, 'Rektor', '', '1996-10-01', ''),
(34, '196509101993031002', 10, 'Rektor', '', '2010-10-01', ''),
(35, '196509131994031003', 11, 'Rektor', '', '2011-01-10', ''),
(36, '196510061986012001', 7, 'Rektor', '', '2016-04-01', ''),
(37, '196512051992031001', 5, 'Rektor', '', '2011-04-01', ''),
(38, '196601092003121001', 10, 'Rektor', '', '2015-04-01', ''),
(39, '196603121999031001', 7, 'Rektor', '', '2008-10-01', ''),
(40, '196605131994031002', 7, 'Rektor', '', '2014-04-01', ''),
(41, '196610061996032001', 8, 'Rektor', '', '2010-01-10', ''),
(42, '196612201994031001', 10, 'Rektor', '', '2008-04-01', ''),
(43, '196706071994121001', 9, 'Rektor', '', '2008-10-01', ''),
(44, '196707261997031002', 9, 'Rektor', '', '2011-01-04', ''),
(45, '196709141989032001', 7, 'Rektor', '', '2012-04-01', ''),
(46, '196801281997031003', 9, 'Rektor', '', '2012-04-01', ''),
(47, '196804101995021001', 8, 'Rektor', '', '2006-01-04', ''),
(48, '196804221994031001', 7, 'Rektor', '', '2016-10-01', ''),
(49, '196805141995121001', 7, 'Rektor', '', '2014-10-01', ''),
(50, '196807131995021001', 10, 'Rektor', '', '2009-04-01', ''),
(51, '196809151998031004', 7, 'Rektor', '', '2010-10-01', ''),
(52, '196812201996031001', 7, 'Rektor', '', '0014-02-01', ''),
(53, '196902222002121002', 7, 'Rektor', '', '2016-10-01', ''),
(54, '196903301991122001', 8, 'Rektor', '', '2015-04-01', ''),
(55, '196904191998031003', 6, 'Rektor', '', '1999-06-01', ''),
(56, '196904281995032001', 10, 'Rektor', '', '2006-01-04', ''),
(57, '196906191995121001', 9, 'Rektor', '', '2015-01-12', ''),
(58, '196907031994121001', 9, 'Rektor', '', '2008-10-01', ''),
(59, '196907050998031002', 6, 'Rektor', '', '1999-01-06', ''),
(60, '196907251997021002', 10, 'Rektor', '', '2010-04-01', ''),
(61, '196908051994121001', 9, 'Rektor', '', '2008-10-01', ''),
(62, '196909231998031002', 6, 'Rektor', '', '1999-01-06', ''),
(63, '197005051999031003', 8, 'Rektor', '', '2010-04-01', ''),
(64, '197005231999031001', 9, 'Rektor', '', '2011-04-01', ''),
(65, '197007231998031001', 9, 'Rektor', '', '2013-10-01', ''),
(66, '197008141999031002', 7, 'Rektor', '', '2010-01-10', ''),
(67, '197109251998032001', 6, 'Rektor', '', '1999-06-01', ''),
(68, '19711120200604100', 10, 'Rektor', '', '2015-04-01', ''),
(69, '197112131999032001', 10, 'Rektor', '', '2011-10-01', ''),
(70, '197201241995121002', 6, 'Rektor', '', '2014-04-01', ''),
(71, '197202011997021001', 7, 'Rektor', '', '2013-10-01', ''),
(72, '197207111998031002', 8, 'Rektor', '', '2013-10-01', ''),
(73, '197208092000031001', 9, 'Rektor', '', '2016-10-01', ''),
(74, '197208152000121001', 6, 'Rektor', '', '2000-12-01', ''),
(75, '197211172000031001', 9, 'Rektor', '', '2011-04-01', ''),
(76, '197307211995121001', 7, 'Rektor', '', '2014-10-01', ''),
(77, '19730729200003001', 9, 'Rektor', '', '2011-04-01', ''),
(78, '197309062002121001', 7, 'Rektor', '', '2016-12-01', ''),
(79, '197403052000032001', 8, 'Rektor', '', '2013-04-01', ''),
(80, '197407132003122001', 8, 'Rektor', '', '2015-04-01', ''),
(81, '197409062005011003', 9, 'Rektor', '', '2012-04-01', ''),
(82, '197412162002122001', 8, 'Rektor', '', '2010-04-01', ''),
(83, '197602242010121001', 3, 'Rektor', '', '2013-06-01', ''),
(84, '197608192001122001', 7, 'Rektor', '', '2010-04-01', ''),
(85, '197705022002121004', 8, 'Rektor', '', '2012-04-01', ''),
(86, '197804062005012001', 9, 'Rektor', '', '2004-04-01', ''),
(87, '197807272002121001', 9, 'Rektor', '', '2013-04-01', ''),
(88, '197901112008121002', 8, 'Rektor', '', '2017-10-01', ''),
(89, '197905062005012001', 6, 'Rektor', '', '2006-02-01', ''),
(90, '197906012005011002', 9, 'Rektor', '', '2015-01-01', ''),
(91, '197907302003121004', 9, 'Rektor', '', '2015-10-01', ''),
(92, '197908042005012004', 8, 'Rektor', '', '2012-04-01', ''),
(93, '197912292005011002', 9, 'Rektor', '', '2014-04-01', ''),
(94, '198002082005012003', 9, 'Rektor', '', '2017-04-01', ''),
(95, '198102212005012001', 8, 'Rektor', '', '2013-04-01', ''),
(96, '198107182008121003', 7, 'Rektor', '', '2006-04-01', ''),
(97, '198209292010121003', 8, 'Menteri Riset, Teknologi dan Pendidikan Tinggi', '96293/A2.2/KP/2017', '2017-09-15', '1116SK pangkat IIIc.pdf'),
(98, '198504052015041002', 7, 'Rektor', '', '2017-01-01', ''),
(99, '198506182009122005', 8, 'Rektor', '', '2016-04-01', ''),
(100, '198507112014041003', 7, 'Rektor', '', '2014-04-01', ''),
(101, '198709022015042001', 7, 'Rektor', '', '2017-04-01', ''),
(102, '199210042010121004', 3, 'Rektor', '', '2012-08-01', ''),
(103, '198209292010121003', 7, 'Menteri Pendidikan dan Kebudayaan', '24588/A4.2/KP/2015', '2015-12-30', '7441SK pangkat IIIb.pdf'),
(104, '198209292010121003', 6, 'Menteri Pendidikan dan Kebudayaan', '261/UN13.5/SK/2012', '2012-08-30', '7075SK pangkat IIIa.pdf'),
(105, '198209292010121003', 1, 'Menteri Pendidikan Nasional baru', '18702/A4/KP/2011', '2011-12-13', '694SK CPNS.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `drpekerjaan`
--

CREATE TABLE `drpekerjaan` (
  `id_drpekerjaan` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `unitkerja` varchar(50) NOT NULL,
  `namajabatan` varchar(50) NOT NULL,
  `tmt` date NOT NULL,
  `nomorsk` varchar(30) NOT NULL,
  `tanggalsk` date NOT NULL,
  `pejabat` varchar(50) NOT NULL,
  `nippejabat` char(18) NOT NULL,
  `filesurattugas` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drpendidikan`
--

CREATE TABLE `drpendidikan` (
  `id_drpendidikan` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `tingkat` bigint NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `tahunmasuk` date NOT NULL,
  `tahunlulus` date NOT NULL,
  `tempat` varchar(15) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `nomorijasah` varchar(50) NOT NULL,
  `fileijasah` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dtanak`
--

CREATE TABLE `dtanak` (
  `id_dtanak` int NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` char(9) NOT NULL,
  `tempatlahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `pendidikan` bigint NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `fileakte` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dtawal`
--

CREATE TABLE `dtawal` (
  `nip` char(18) NOT NULL,
  `niplama` char(9) NOT NULL,
  `nidn` char(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gelardepan` varchar(15) NOT NULL,
  `gelarbelakang` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempatlahir` varchar(40) NOT NULL,
  `jeniskelamin` char(9) NOT NULL,
  `statuskeluarga` char(15) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikanakhir` bigint NOT NULL,
  `namasekolah` varchar(40) NOT NULL,
  `tahunlulus` date NOT NULL,
  `jurusan` varchar(60) NOT NULL,
  `kualifikasi` bigint NOT NULL,
  `statuspegawai` int NOT NULL,
  `unitkerja` bigint NOT NULL,
  `jabatanf` bigint NOT NULL,
  `tmtjabatanf` date NOT NULL,
  `karpeg` varchar(10) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kodepos` char(7) NOT NULL,
  `hp` char(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dtawal`
--

INSERT INTO `dtawal` (`nip`, `niplama`, `nidn`, `nama`, `gelardepan`, `gelarbelakang`, `tanggal_lahir`, `tempatlahir`, `jeniskelamin`, `statuskeluarga`, `agama`, `pendidikanakhir`, `namasekolah`, `tahunlulus`, `jurusan`, `kualifikasi`, `statuspegawai`, `unitkerja`, `jabatanf`, `tmtjabatanf`, `karpeg`, `npwp`, `alamat`, `kota`, `kodepos`, `hp`, `email`, `foto`) VALUES
('1010', '', '', 'Simon Talakua', '', '', '1978-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1997-10-01', 'Listrik', 4, 1, 3, 1, '2015-12-01', ' ', ' ', 'Poka', 'Ambon', '97889', '09394', 'mon@gmail.com', '10102.png'),
('195303061979031003', '', '', 'D. Tumanan', 'Ir. ', 'MSIE. ', '1953-03-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 10, 'ITS Surabaya', '1986-08-22', 'Teknik Industri', 3, 2, 9, 10, '2001-10-01', '23131', '1111', 'KudaMati ', 'Ambon', '97128', '0852', 'tumanan@gmail.com', '1527anonymous.png'),
('195308031981031003', '', '', 'J. Liklikwatil', 'Ir.', 'MT.', '1953-08-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2003-08-25', 'Teknik Industri', 2, 2, 10, 10, '2001-08-01', 'C.0557977', ' ', 'Passo', 'Ambon', '97233', '0850', 'liklikwatil@yahoo.com', '195308032.png'),
('195312101980031006', '130888562', '', 'Ilela Daud', 'Ir.', 'MT.', '1978-02-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2000-08-01', 'Sistem Perkapalan', 2, 1, 9, 10, '2008-05-01', 'C.0166459', '058189994941000', 'Suli ', 'Ambon', '97116', '0812', 'ileladaud@yahoo.com', '19531210pic.png'),
('195401301980031007', '', '', 'A. R. C. Tetelepta', 'Ir.', 'MASc.', '1954-01-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 1, 'UNIVERSITAS PATTIMURA ', '2001-08-26', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, 8, '2000-01-03', 'C.0166460', ' ', 'Passo', 'Ambon', '97117', '081343199719', 'tetelepta@gmail.com', '195401302.png'),
('195603291977031001', '13010418', '0029067908', 'P.W. Tetelepta', 'Ir.', 'MT.', '1956-03-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November Surabaya', '2013-01-11', 'Teknik Sistem Perkapalan', 2, 1, 9, 8, '2010-10-01', 'B.943752', '774954655941000', ' mangga dua', 'Ambon', ' 972311', '081343153594', 'pietertetelepta29@gmail.com', '19560329pw.jpg'),
('195703211980031003', '', '', 'B. Jamlean', 'Ir.', 'MSi', '1957-03-21', 'Ambon MAnise', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA ', '2008-08-30', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, 8, '2000-10-01', 'C.0166462', ' ', 'Poka atas', 'Ambon', '97233', '0852', 'benny@gmail.com', '19570321pakbenyj1.png'),
('195703231983031003', '', '', 'B. Wattimury', 'Ir.', 'MT.', '1957-03-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2005-08-29', 'Teknik Sistem Perkapalan', 2, 1, 9, 8, '2002-11-01', 'D.057700', ' ', 'Belakang Soya', 'Ambon', '97233', '0852', 'barnabas@gmail.com', '195703232.png'),
('195711151987032002', '131684020', '', 'Ny. H. C. Ririmasse', 'Ir.', 'MT.', '1957-11-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2006-08-01', 'Transportasi Kelautan', 2, 1, 5, 10, '2014-12-01', 'E.370199', '7864 ', 'Kudamati', 'Ambon', '98773', '081248580740', 'hedyririmase@gmail.com', '19571115ririmase.jpg'),
('195801101986031002', '131642079', '', 'M. F. Noya', 'Ir.', 'MT.', '1958-01-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2005-08-01', 'Sistem Perkapalan', 2, 1, 9, 10, '2010-05-01', 'E.047538', '058190109941000', 'Belakang Soya', 'Ambon', '', '0812', 'fritsnoya@yahoo.com', '195801102.png'),
('195904031987031002', '131697295', '', 'E. J. de Lima', 'Ir.', 'MT.', '1959-04-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS', '2008-08-01', ' Teknik Perkapalan', 2, 1, 5, 8, '2010-06-01', 'kasjd33', 'ad33', 'Wayame', 'Ambon', '977192', '081344009740', 'ece@gmail.com', '195904032.png'),
('195908251986101001', '131646102', '0025085905', 'M. Tukan', 'Prof. Dr. Ir.', 'MT', '1959-08-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Katolik', 10, 'ITS Surabaya', '2013-04-26', 'Teknik Transportasi Kelautan', 2, 1, 10, 8, '2009-04-01', 'E.047555', '484476379941000', 'Karpan RT/RW. 002/001', 'Ambon', '97128', '081343000825', 'marcustukan@gmail.com', '195908251312.jpg'),
('196009251988032001', '', '', 'Ny. Y. L. Sitanala', '', 'SH.', '1960-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1997-10-01', 'Administrasi Negara', 1, 1, 3, 0, '0000-00-00', 'F.147678', ' ', 'Rumatiga', 'AMBON', '97117', '0923', 'ivon@gmail.com', '196009251 (5).jpg'),
('196010271990031004', '131917153', '', 'O. Metekohy', 'Ir.', 'M.Si.', '1960-10-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institute Teknologi Bandung', '2004-08-01', 'Perkapalan', 2, 1, 5, 8, '2009-11-01', 'E.887705', ' ', 'Lateri', 'Ambon', '97118', '081343010324', 'obet@gmail.com', '19601027rip.jpg'),
('196011111981031004', '', '', 'Petrus F. Nikijuluw', '', '', '1960-11-11', 'Ulath', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '2002-01-01', 'Mesin', 1, 1, 2, 2, '0000-00-00', 'D.054292', ' ', 'Passo', 'Ambon', '97117', '09923', 'otu@gmail.com', '19601111111.jpg'),
('196011231991031001', '131962551', '', 'R. Ufie', 'Ir.', 'MT.', '1960-11-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2016-12-01', 'F. 196982', '786432583941000', 'Urimesing', 'Ambon', '97233', '081321446688', 'Ufie@gmail.com', '196011239.jpg'),
('196105271997002100', '132168169', '', 'Ph. Wuysang', 'Ir.', '', '1961-02-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '2002-01-01', 'Teknik Perkapalan', 2, 1, 5, 8, '2010-01-06', '-', '786432641941000', 'Ambon', 'Ambon', '97233', '0000000000000', 'xxxxxxxxxxxxxxxxx@yahoo.com', '196105272.png'),
('196203031987032003', '', '', 'Ny. Petronela Latupapua', '', '', '1962-03-03', 'Sameth', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMA', '1982-08-01', '', 1, 1, 3, 2, '0000-00-00', 'E.370251', '', 'Paso', 'Ambpn', '97118', '34', 'petronella@gmail.com', '19620303ibunell.png'),
('196208131989031003', '131864164', '', 'W. R. Hetharia', 'Dr. Ir.', 'MApp. Sc.', '1962-08-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'UniversitÃ© de LiÃ©ge, Belgium', '2017-10-01', 'Teknik Perkapalan', 2, 1, 5, 10, '2010-01-01', 'E.815344', ' ', 'Passo', 'AMBON', '97117', '082238191650', 'hethariawr@yahoo.com', '19620813Pak-Roby-.jpg'),
('196208212014091002', '', '', 'Agustinus Supusepa', '', '', '1962-06-21', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1984-10-01', 'Mesin', 1, 1, 3, 2, '0000-00-00', '', '', 'Jln. Kudamati', 'Ambon', '97117', '098773', 'agus@gmail.com', '19620821pakagus.jpg'),
('196303171986101001', '', '', 'J. Tupan', 'Ir', 'MT', '1963-03-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2005-08-12', 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2000-10-01', 'E.047582', '786432260941000', 'Batu Gajah ', 'Ambon', '98773', '082398668859', 'bobtupan@yahoo.com', '196303172.png'),
('196308301994031003', '132102347', '000300863', 'H. S. Lainsamputty', 'Ir.', 'MSi.', '1963-08-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA AMBON', '2015-01-10', 'ILMU KELAUTAN', 2, 1, 5, 10, '2014-01-09', ' G.190660', '077397032941000', 'suli', 'Ambon', '97128', '12323131313', 'hellylines@gmail.com', '19630830pak-helly-198x300.jpg'),
('196309251986031002', '', '', 'H. Tetelepta', '', 'SE.', '1963-09-25', 'Tepa', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2006-08-01', 'Administrasi Negara', 1, 1, 2, 2, '0000-00-00', ' ', ' ', 'Passo', 'Ambon', '9718812', '08123', 'empi@gmail.com', '1963092522.jpg'),
('196311251984032001', '', '', 'Ny. Naomi Maitimu', '', '', '1963-11-25', 'Ema', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1983-10-01', 'IPS', 1, 1, 2, 2, '0000-00-00', ' ', ' ', 'Amahusu', 'Ambon', '97188', '0822', 'omi@gmail.com', '1963112532.jpg'),
('196311291987031002', '', '', 'Frits M. Lekatompessy', '', 'S.Sos.', '1963-11-29', 'Latuhalat', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2008-10-01', 'Administrasi Negara', 1, 1, 1, 2, '0000-00-00', 'E.370246', '', 'Latuhalat', 'Ambon', '97119', '9934', 'frits@gmail.com', '19631129frits.jpg'),
('196401281992032002', '', '', 'Ny. Saartje R. Molle', '', '', '1965-01-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 2, 'SMPS', '1987-10-01', '', 1, 1, 1, 2, '0000-00-00', '', '', 'Karpan', 'Ambon', '9899', '0923', 'asd@gmail.com', '196401284.jpg'),
('196408091993031001', '132061371', '', 'W. M. E. Wattimena', 'Ir.', 'MT.', '1964-08-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2016-12-01', 'G. 059649', ' ', 'Lateri', 'Ambon', '97233', '081343300053', 'Wattimena@gmail.com', '196408091 (2).jpg'),
('196410121988031003', '', '', 'E. Tawairubun', '', '', '1964-10-12', 'Warbal (Tual)', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1983-10-01', 'Mesin', 1, 1, 2, 2, '0000-00-00', 'E.602708', ' ', 'Kudamati', 'Ambon', '97117', '0923942', 'ely@gmail.com', '19641012g.jpg'),
('196504301987112001', '', '', 'Ny. Deen A. Kalahatu', '', '', '1965-04-30', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1983-10-01', 'IPS', 1, 1, 1, 2, '0000-00-00', 'E.396449', '', 'Galala', 'Ambon', '971772', '0928', 'ada@gmail.com', '196504302.jpg'),
('196505061987031003', '', '', 'Wilton J. S. Ririhena', '', '', '1965-05-06', 'Jakarta', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1986-10-01', 'Mesin', 1, 1, 2, 2, '0000-00-00', 'E.641911', ' ', 'Kudamati', 'Ambon', '97119', '09283', 'oyo@gmail.com', '196505062.png'),
('196505091997021001', '', '0009056707', 'J. D. C. Sihasale', 'Ir.', 'MT.', '1965-05-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2016-01-10', 'Teknik Perkapalan', 2, 1, 9, 8, '2005-10-01', 'G.440272', '786432278941000', 'Urimesing', 'Ambon', '97113', '081343156586', 'sihasale@gmail.com', '196505092.png'),
('196506221998031001', '132207801', '0022066505', 'A. Kalalimbong', 'Ir.', 'MT.', '1965-06-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2012-01-10', 'Teknik Sipil', 2, 1, 7, 8, '2010-06-01', 'J. 027650', '786432666941000', 'batu merah', 'Ambon', '97582', '081343411811', 'Kalilombang@gmail.com', '196506222.png'),
('19650905199412001', '', '', 'Abdul. Hadi', 'Ir.', 'MT.', '1965-09-05', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Islam', 9, 'ITS Surabaya', '2002-01-10', 'Teknik Perkapalan', 2, 1, 9, 9, '2016-07-01', 'G. 319229', '782568122941000', 'batu merah', 'Ambon', '97113', '081233232337', 'abdul@gmai.com', '19650905xx.jpg'),
('196509101993031002', '132051016', '', 'L. Wattimury', 'Ir.', 'MT.', '1965-09-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi Surabaya (ITS)', '2005-10-01', 'Teknik Sistem Perkapalan', 2, 1, 9, 8, '2009-05-01', 'G.059635', ' ', 'Karang Panjang', 'Ambon', '97188', '0989287665', 'latu@gmail.com', '19650910LATUHORTE WATTIMURY (F'),
('196509131994031003', '132102916', '0013096511', 'R. H. Siahainenia', 'Ir.', 'MT.', '1965-09-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-11-16', 'Teknik Kelautan Perencanaan Bangunan Lepas Pantai', 2, 1, 5, 10, '2006-01-07', 'G.253995', ' ', 'Kuda Mati', 'Ambon', '97116', '081343007137', 'ekoadvmal@gmail.com', '1965091319pak-ecko-139x150.png'),
('196510061986012001', '', '', 'Ny. V. Pattiwael', '', '', '1965-10-06', 'Kampung Mahu', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1994-10-01', 'IPS', 1, 1, 2, 2, '0000-00-00', 'E.047585', ' ', 'Poka', 'AMBON', '97117', '013', 'vin@gmail.com', '196510061321.jpg'),
('196512051992031001', '', '', 'Reggy W. Lalin', '', '', '1965-12-05', 'Maluku Tenggara', 'Laki-Laki', 'Nikah', 'Katolik', 4, 'STM', '2000-01-01', 'Listrik', 1, 1, 3, 2, '0000-00-00', ' ', ' ', 'Poka', 'Ambon', '9877', '88234', 'regi@gmail.com', '196512052.png'),
('196601092003121001', '132306798', '0009016601', 'Samy Junus Litiloly', '', 'S.Si., M.T', '1966-01-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Universitas Indonesia', '2000-11-22', 'Teknik Elektro', 2, 1, 6, 10, '2014-04-01', 'L.181234', '786432674941000', 'Jl. Dr. Siwabessy No.4 RT.007.RW.04 Kelurahan Kuda', 'Ambon', '97116', '081210589423', 'samyjunusl@yahoo.com', '19660109SamyJL.jpg'),
('196603121999031001', '', '', 'S. G. M. Amaheka', 'Ir.', 'MT.', '1966-04-12', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2004-08-25', 'Teknik Sipil', 2, 1, 7, 9, '2005-01-01', 'J.081268', ' ', 'Batu Gajah ', 'Ambon', '97113', '0852', 'amaheka@gmail.com', '19660312191 (1).jpg'),
('196605131994031002', '', '', 'Michael Wattimena', '', '', '1966-05-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1987-08-01', 'Mesin', 1, 1, 2, 2, '0000-00-00', 'G.189954', ' ', 'Kudamati', 'Ambon', '97889', '0918', 'wati@gmail.com', '196605137.jpg'),
('196610061996032001', '132150427', '-', 'J. Matakupan', '', 'ST. MT.', '1968-06-10', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 9, 'ITS Surabaya', '2007-07-11', 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2010-01-06', 'G.368223', '148679020941000', 'Waai', 'Ambon', '97582', '0000000000000', 'XXXXXXXXXXXXXXXX@YAHOO.COM', '196610062.png'),
('196612201994031001', '132086856', '', 'E. R. de Fretes', 'Dr. Ir.', 'MT.', '1966-12-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Institut Teknologi Surabaya (ITS)', '2014-10-01', 'Teknik Perkapalan', 2, 1, 5, 10, '0000-00-00', 'G.190661', ' 786432559941000', 'Batumeja', 'AMBON', '97117', '081357841333', 'defretesera@gmail.com', '19661220elly.jpg'),
('196706071994121001', '132125676', '', 'J. Latuny', 'Ir.', 'M.Eng. PhD', '1967-06-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2008-06-01', 'G. 319225', '487728129941000', 'Kuda Mati', 'Ambon', '97113', '082239111244', 'Latuny@gmail.com', '196706072.png'),
('196707261997031002', '132173416', '', 'R. B. Luhulima', 'Dr.', 'ST. MT', '1967-07-26', 'AMBON', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2017-07-13', 'Teknik Perkapalan', 2, 1, 5, 8, '2004-01-04', 'H.026341', '066477290941000', 'Amahusu', 'Ambon', '97117', '081330722067', 'richardluhulima@yahoo.com', '1967072619icat].jpg'),
('196709141989032001', '', '', 'Ny. Petronela W. Pattiwael', '', '', '1967-09-14', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1987-10-01', 'Administrasi Negara', 1, 1, 2, 2, '0000-00-00', 'E.870149', ' ', 'Kayu Tiga', 'Ambon', '978834', '0986', 'nelpat@gmail.com', '1967091410.jpg'),
('196801281997031003', '132173418', '0028016808', 'J. Louhenapessy', 'Ir.', 'MT.', '1968-01-28', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '0000-00-00', 'H. 026342', '  ', 'Batu Gajah ', 'Ambon', '97113', '085354113648', 'Louhenapessy@gmail.com', '1968012820180906_121809.jpg'),
('196804101995021001', '132125693', '', 'L. A. T. Matatula', '', 'ST.', '1968-10-04', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '2000-06-30', 'Teknik Perkapalan', 2, 1, 5, 8, '2005-01-10', 'G.319236', '1234567890', 'Latuhalat', 'Ambon', '97113', '081330137768', 'lmdeleka@gmail.com', '196804102.png'),
('196804221994031001', '132089496', '', 'G. Tanlain', '', 'ST. MT.', '1968-04-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'ITS Surabaya', '1960-01-10', 'Teknik Perkapalan', 2, 1, 9, 9, '2004-01-10', 'G.190662', '1234567760', 'Kuda Mati', 'Ambon', '97113', '0813', 'tanlei@gmail.com', '196804222.png'),
('196805141995121001', '', '', 'Ogie Pattiselano', '', '', '1968-05-14', 'Saparua', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1990-10-01', 'Mesin', 1, 1, 2, 2, '0000-00-00', 'G.262788', ' ', 'Tawiri', 'Ambon', '98782', '09823', 'ogie@gmail.com', '196805142.png'),
('196807131995021001', '132128384', '', 'N. Titaheluw', 'Ir.', 'MT.', '1968-07-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2009-01-01', 'G. 419235', ' ', 'Passo', 'Ambon', '97233', '081344747994', 'Titaheluw@gmail.com', '196807132.png'),
('196809151998031004', '', '', 'W. D. Nanlohy', '', 'ST. M.Si', '1968-09-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA ', '2006-08-23', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, 9, '2010-06-01', ' J.083322', ' ', 'batu merah', 'Ambon', '97233', '0852', 'nanlohy@gmail.com', '196809152.png'),
('196812201996031001', '', '', 'Djefri Palijama', '', '', '1968-12-20', 'Pia', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1987-08-01', 'Mesin', 1, 1, 2, 2, '0000-00-00', 'G.373014', ' ', 'Batu Meja', 'AMBON', '97117', '0923', 'jepo@gmail.com', '196812202.png'),
('196902222002121002', '132301635', '', 'Imran Oppier', 'Ir.', 'MT.', '1969-02-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2012-01-10', 'Teknik Sipil', 2, 1, 7, 9, '2016-07-01', ' ', '077399244941000', 'Batu Gajah ', 'Ambon', '97233', '0813', 'Imran@gmail.com', '196902222.png'),
('196903301991122001', '', '', 'Esthernetty Maruanaya', '', 'SH.', '1969-03-30', 'Tala', 'Perempuan', 'Belum Nikah', 'Protestan', 8, 'Universitas Pattimura', '2007-02-01', 'Niaga', 1, 1, 3, 5, '0000-00-00', '', '', 'Latuhalat', 'ambon manise', '987771', '9876554', 'nety@gmail.com', '19690330R.jpg'),
('196904191998031003', '132207805', '', 'A. L. Apituley', 'Ir.', 'MT.', '1969-04-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'ITS Surabaya', '1990-01-10', 'Teknik Perkapalan', 2, 1, 9, 9, '2000-01-10', 'J.083326', '786432484941000', 'Urimesing', 'Ambon', '97113', '081343003133', 'Apituley@gmail.com', '196904192.png'),
('196904281995032001', '132129665', '', 'S. T. A. Lekatompessy', '', 'ST., MT.', '1969-04-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2018-08-20', 'Teknik Perkapalan', 2, 1, 5, 10, '2014-01-09', 'G.319237', '1234567890', 'Urimesing', 'Ambon', '97113', '1314235435456', 'Sonja_lekatompessy@yahoo.com', '1969042819ibu-sonja.png'),
('196906191995121001', '132137973', '', 'L. M. Kelwulan', '', 'ST, MT.', '1969-12-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2018-08-14', 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2010-01-06', 'G.368216', '786432351941000', 'Passo', 'Ambon', '97233', '0000000000000', 'XXXXXXXXXX@yahoo.com', '196906192.png'),
('196907031994121001', '312228', '', 'P. Ciptoadhi', 'Ir', 'MT', '1969-07-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2016-10-01', 'Teknik Perkapalan', 2, 1, 9, 8, '2017-10-01', 'G.31228', '148679509941000', 'Waihaong', 'Ambon', '97232', '081334753005', 'ciptoadi@gmai.com', '196907032.png'),
('196907050998031002', '', '', 'E. B. Johannes', '', 'ST. MT.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2004-08-08', 'Teknik Perkapalan', 2, 1, 5, 9, '2000-01-10', 'J.083324', '786432427941000', 'Batu Gajah', 'Ambon', '97211', '0852', 'joannes@gmail.com', '196907058.jpg'),
('196907251997021002', '132168170', '', 'A. Simanjuntak', 'Ir.', 'MT.', '1969-07-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2009-09-01', 'H. 026338', ' ', 'Kuda Mati', 'Ambon', '97113', '081343288048', 'simanjuntak@gmail.com', '196907252.png'),
('196908051994121001', '132125693', '', 'E. Matatula', '', 'ST, MT.', '1969-08-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-09-07', 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2007-01-01', 'G.319227', '774954747941000', 'Kuda Mati', 'Ambon', '97113', '07852', 'edwinmatatula@gmail.com', '196908052.png'),
('196908161998031001', '132207800', '', 'P. Th. Berhitu', 'Dr.', 'ST. MT.', '1969-08-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2017-12-27', 'Teknik Bangunan Lepas Pantai', 2, 1, 11, 10, '1998-01-03', 'J.083323', '077397057941000', 'Talake', 'Ambon', '97211', '085197361204', 'piter_berhitu@gmail.com', '196908162.png'),
('196909151997032001', '132173416', '', 'M. Manuputty', '', 'ST. M.Kes', '1969-09-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2007-08-13', 'Kesehatan', 2, 1, 5, 0, '0000-00-00', 'J.083319', '196909151997032001', 'kudamati', 'Ambon', '97233', '081247024449', 'mona@yahoo.com', '196909152.png'),
('196909231998031002', '132207804', '', 'P. Kabaena', '', 'ST.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2004-07-08', 'Teknik Perkapalan', 2, 1, 5, 9, '2000-01-10', 'J.083325', '09875423', 'Poka', 'Ambon', '97233', '0852', 'kabaena@yahoo.com', '196909232.png'),
('197005051999031003', '132240518', '0005057005', 'Billy Jhones Camerling', '', 'ST.,MT', '1970-05-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2003-08-08', 'Teknik Industri', 2, 1, 10, 8, '2017-03-01', 'K.013624', '786153312941000', 'Air Salobar ', 'Ambon', '97593', '081331434480', 'billi@yahoo.com', '197005052.png'),
('197005231999031001', '132231731', '0023057004', 'Nil Edwin Maitimu', '', 'ST.,MT', '1970-05-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2004-08-01', 'Teknik Industri', 2, 1, 10, 8, '0000-00-00', 'I.016964', '077396976941000', 'Jl. Sisingamangaraja Passo RT.003/RW001', 'Ambon', '97593', '085243215515', 'niledwinmaitimu@gmail.com', '197005232.png'),
('197007231998031001', '132207748', '', 'D. S. Pelupessy', 'Ir.', 'MT.', '1970-07-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2016-01-10', 'Teknik Perkapalan', 2, 1, 9, 8, '2013-04-01', ' ', '12345660', 'Kuda Mati', 'Ambon', '97113', '0813', 'pelupessy@gmail.com', '197007232.png'),
('197008141999031002', '132232270', '', 'G. R. Latuhihin', '', 'ST, MT.', '1970-08-14', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2003-01-08', 'Teknik Perkapalan', 2, 1, 5, 9, '2010-01-06', ' ', '148679160941000', 'Passo', 'Ambon', '97233', '0852546852', 'icat@gmail.com', '197008142.png'),
('197109251998032001', '', '', 'G. S. Norimarna', '', 'ST. MS.Eng', '1971-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, ' ', '2010-08-17', ' ', 2, 1, 9, 9, '2010-10-01', ' ', ' ', 'Passo', 'Ambon', '97233', '0852', 'Norimarna@gmail.com', '1971092520180906_121728.jpg'),
('19711120200604100', '132319089', '', 'Nasir Suruali', 'Ir.', 'MT.', '1971-11-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2014-12-01', ' ', ' ', 'Batu Gajah ', 'Ambon', '97582', '085243625095', 'Nasir@gmail.com', '197111202.png'),
('197112131999032001', '132231730', '0013127106', ' Ariviana. Lientje. Kakerissa', '', 'ST, MT. IPM', '1971-12-13', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November Surabaya', '2004-01-28', 'Teknik Industri', 2, 1, 10, 8, '2011-06-01', ' ', ' 077398469941000', 'OSM', 'Ambon', '97116', '081224915000', 'vianakakerissa71@gmail.co', '197112131.jpg'),
('197201241995121002', '', '', 'Jason M. S. Pesulima', '', '', '1972-01-24', 'Amahusu', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1992-10-01', 'Mesin', 1, 1, 2, 6, '2010-01-01', 'D.054292', ' ', 'Poka', 'AMBON', '97117', '023', 'jasonsoni@gmail.com', '197201242.png'),
('197202011997021001', '', '', 'F. Tanahitumessing', '', 'ST', '1972-02-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2007-10-01', 'Teknik Mesin', 1, 1, 2, 6, '2010-02-01', 'G.438066', ' ', 'Batu Gajah', 'Ambon', '97882', '089283', 'angky@gmail.com', '197202011 (9).jpg'),
('197207111998031002', '', '', 'Isak Aponno', '', 'ST', '1972-07-11', 'Porto', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2007-01-01', 'Teknik', 1, 1, 2, 6, '0000-00-00', ' I.029040', ' ', 'Passo', 'Ambon', '98133', '09813', 'cak@gmail.com', '197207112.png'),
('197208092000031001', '132262173', '0009087211', 'W. M. Rumaherang', 'Ir.', 'MSc. PhD.', '1972-08-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2015-12-01', ' ', ' ', 'Kuda Mati', 'Ambon', '97113', '081291724514', 'Rumaherang@gmail.com', '197208092.png'),
('197208152000121001', '132288571', '', 'S. I. Latuconsina', 'Ir.', 'MT.', '1972-02-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2012-01-10', 'Teknik Sipil', 2, 1, 7, 9, '2007-01-01', ' ', ' ', 'Kuda Mati', 'Ambon', '97582', '085231314949', 'Latuconsina@gmai.com', '197208158is.jpg'),
('197211172000031001', '132260996', '', 'Alfredo Tutuhatunewa', '', 'ST.,MT', '1972-11-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2003-05-02', 'Teknik Industri', 2, 1, 10, 8, '2009-06-01', ' ', '1234', ' karang panjang', 'Ambon', '97593', '081343', 'alfredotutuhatunewa@yahoo.com', '197211172.png'),
('197307211995121001', '', '', 'Chaleb M. L. Wattimena', '', '', '1973-07-21', 'Urimessing', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1992-10-01', 'Mesin', 1, 1, 2, 7, '0000-00-00', 'G.262790', ' ', 'Siwang', 'AMBON', '97117', '0921', 'kaleb@gmail.com', '19730721cah.jpg'),
('197307251999032001', '132204636', '', 'F. Gaspersz', '', 'ST, MT.', '1973-07-25', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 9, 'ITS Surabaya', '2003-08-31', 'Teknologi Kelautan', 2, 1, 5, 0, '0000-00-00', ' ', '774954721941000', 'Batu Gajah ', 'Ambon', '97128', '0813330362525', 'fellagsp73@gmail.com', '197307252.png'),
('19730729200003001', '132260995', '', 'D. R. Lekatompessy', 'Dr.', 'ST, MT.', '1973-07-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2018-08-15', 'Teknik Perkapalan', 2, 1, 5, 8, '2010-06-01', ' ', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'deby@gmail.com', '197307292.png'),
('197309062002121001', '132301633', '', 'Abdul Djabar Tianotak', '', 'ST, MSi.', '1973-06-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Universitas Pattimura Ambon', '2007-08-16', 'Perikanan dan Ilmu Kelautan', 2, 1, 5, 8, '2016-07-01', ' ', ' ', 'batu merah', 'Ambon', '97233', '08452', 'djabar@gmail.com', '197309062.png'),
('197403052000032001', '', '', 'Nn. M. L. Pattiapon,', '', 'ST.', '1974-03-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '1984-08-25', 'Teknik Industri', 2, 1, 10, 8, '2011-10-01', ' ', ' ', 'Kuda Mati', 'Ambon', '97116', '0852', 'pattiapon@gmail.com', '197403052.png'),
('197407132003122001', '132303296', '', 'Warniyati', 'Ir.', 'MT.', '1974-07-13', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2012-01-10', 'teknik sipil', 2, 1, 7, 8, '2012-01-02', ' ', '786432344941000', 'batu merah', 'Ambon', '97233', '0813', 'Warniaty@gmail.com', '197407132.png'),
('197409062005011003', '', '', 'Stevianus Titaley', '', 'ST, MSi.', '1974-09-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2009-08-12', 'Teknik Industri', 2, 1, 10, 8, '2008-10-01', '  ', ' ', 'batu merah', 'Ambon', '97116', '0852', 'stecianus@gmail.com', '197409062.png'),
('197412162002122001', '', '', 'Novitha L. T. Thenu', '', 'ST. MT.', '1974-10-16', 'amobn', 'Perempuan', 'Nikah', '--Pilih--', 0, 'ITS Surabaya', '2010-08-31', 'Sistem Perkapalan', 2, 1, 9, 8, '2009-08-01', ' ', ' ', 'passo', 'Ambon', '97233', '081343199719', 'novitha@gmail.com', '197412162.png'),
('197602242010121001', '', '', 'Stani Ferdinandus', '', '', '1976-02-24', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 4, 'SMEA', '1990-10-01', 'Administrasi Negara', 1, 1, 2, 0, '0000-00-00', ' ', ' ', 'Wainitu', 'AMBON', '97117', '938284', 'stani@gmail.com', '197602242.png'),
('197608192001122001', '132297214', '', 'R. P. Soumokil', '', 'ST, MSi.', '1976-08-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2004-08-29', 'Teknik Transportasi Kelautan', 2, 1, 5, 9, '2009-08-01', ' ', '786432310941000', 'Batu Gajah ', 'Ambon', '97233', '0852', 'rutha@gmail.com', '197608192.png'),
('197705022002121004', '', '', 'Benjamin G. Tentua', '', 'ST.MT.', '1977-05-02', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2011-08-25', 'Mesin', 2, 1, 6, 8, '2011-10-01', ' ', ' ', 'Passo', 'Ambon', '97233', '0852', 'benjamin@gmail.com', '197705021 (11).jpg'),
('197804062005012001', '', '', 'Wilma Latuny', 'Dr.', 'ST. MSi.', '1978-04-06', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2016-08-15', 'Teknik Industri', 2, 1, 10, 8, '2009-06-01', ' ', '774954689941000', 'Batu Gajah ', 'Ambon', '97116', '08452', 'wilma@gmail.com', '197804062.png'),
('197807272002121001', '', '', 'Johan M. Tupan', '', 'ST. MT.', '1978-07-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2018-09-05', 'Teknik Industri', 2, 1, 10, 8, '2009-06-01', ' ', ' ', 'Kuda Mati', 'Ambon', '97113', '0852', 'pelupessy@gmail.com', '197807272.png'),
('197901112008121002', '', '', 'Arthur. Y. Leiwakabessy', 'Ir.', 'MT.', '1979-01-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'teknik mesin', 2, 1, 6, 8, '2014-04-01', ' ', ' ', 'Kuda Mati', 'Ambon', '97582', '082141676561', 'Arthur@gmail.com', '197901112.png'),
('197905062005012001', '', '', 'Nurmiyati Kellian', '', 'ST, MT.', '1979-05-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2011-08-27', 'Teknik Industri', 2, 1, 10, 8, '2015-01-01', ' ', ' ', 'batu merah', 'Ambon', '97116', '0852', 'nurmiaty@gmail.com', '197905062.png'),
('197906012005011002', '', '', 'Victor O. Lawalata', '', 'ST, MT.', '1979-06-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '0000-00-00', 'Teknik Industri', 2, 1, 10, 10, '2013-01-04', ' ', ' ', 'Poka', 'Ambon', '97113', '0852', 'viktor@gmail.com', '197906012.png'),
('197907302003121004', '', '', 'Hanok Mandaku', '', 'ST, MT.', '1979-07-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2003-08-15', 'Teknik Industri', 2, 1, 10, 8, '2013-01-02', ' ', '786432468941000', 'Batu Gajah ', 'Ambon', '97116', '0852', 'hanok@gamil.com', '197907302.png'),
('197908042005012004', '', '', 'Olivia M. de Fretes', '', 'ST, M.Eng', '1979-08-04', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2008-08-23', 'Teknik Industri', 2, 1, 10, 8, '2012-04-01', ' ', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'olivia@gmail.com', '197908042.png'),
('197912292005011002', '', '', 'Daniel B Pailin', '', 'ST, MT.', '1979-12-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2017-08-12', 'Teknik Industri', 2, 1, 10, 8, '2013-04-01', ' ', '077397792941000', 'Batu Gajah ', 'Ambon', '98773', '0852', 'daniel@gmail.com', '197912292.png'),
('198002082005012003', '', '', 'Annalyse Picauly', '', 'SE.', '1980-02-08', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2004-10-01', 'Ekonomi', 1, 1, 1, 2, '0000-00-00', '', '', 'Passo', 'Ambon', '978892', '092', 'analis@gmail.com', '198002085.jpg'),
('198102212005012001', '', '', 'Aminah Soleman', '', 'ST, MT.', '1981-02-21', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2009-08-26', 'Teknik Industri', 2, 1, 10, 8, '2012-07-01', ' ', 'P077397784941000', 'batu merah', 'Ambon', '97113', '0852', 'aminah@gmail.com', '198102212.png'),
('198107182008121003', '', '', 'Richard A. de Fretes', '', 'ST', '1981-07-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Universitas Pattimura Ambon', '2004-08-29', 'Teknik Industri', 2, 1, 10, 9, '2015-06-01', ' ', ' ', 'Urimesing', 'Ambon', '97128', '0852', 'richard@gmail.com', '198107182.png'),
('198209292010121003', '', '', 'Victor Eric Pattiradjawane', '', 'S. Kom.', '1982-09-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Untag Surabaya', '2015-12-01', 'Teknik Informatika', 1, 1, 4, 2, '2015-12-12', 'E.370251', '12345.0232.123', 'Ambon', 'Ambon', '97117', '081343199719', 'devictoreric@yahoo.com', '2756victoreric.jpg'),
('198504052015041002', '', '', 'Felix Taihuttu', 'Ir.', 'MT.', '1985-04-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'Teknik Sipil', 2, 1, 7, 8, '2016-01-01', ' ', '738520683941000', 'passo', 'Ambon', '97116', '081227252045', 'Felix@gmail.com', '198504052.png'),
('198506182009122005', '', '', 'Imelda Ch. Poceratu', '', 'M.Teol', '1985-06-18', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Univeritas Kristen Indonesia', '2014-08-25', 'Teologi', 2, 1, 10, 8, '2015-06-01', ' ', ' ', 'Passo', 'Ambon', '97233', '0852', 'imelda@gmail.com', '19850618cd.jpg'),
('198507112014041003', '', '', 'Mansye. Ronal Ayal', 'Ir.', 'MT.', '1985-07-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-01-10', 'Teknik Sipil', 2, 1, 7, 9, '2016-07-01', ' ', ' ', 'Urimesing', 'Ambon', '97582', '085220204287', 'Mansye@gmail.com', '198507112.png'),
('198709022015042001', '', '', 'Andiah Nurhaeny', 'Ir.', 'MT.', '1987-09-02', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '1012-01-10', 'teknik perencanaan wilayah dan kota', 2, 1, 11, 9, '2017-04-01', '  ', ' ', 'Kuda Mati', 'Ambon', '97113', '081321500757', 'Adhinda@gmail.com', '198709022.png'),
('19900101', '', '', 'Billy P J Manuhutu', '', 'ST.', '1993-04-15', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 8, 'UNIVERSITAS PATTIMURA', '2017-08-10', 'Teknik Perkapalan', 4, 1, 1, 0, '0000-00-00', ' ', ' ', 'Poka', 'Ambon', '98773', '085211384519', 'billy_manuhutu@yahoo.com', '199001011.jpg'),
('199210042010121004', '', '', 'Jason Rendy Joris', '', '', '1992-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '2009-10-01', 'Mesin', 1, 1, 1, 3, '2012-05-21', '111', '683943088941000', 'Galala', 'Ambon', '971992', '085243194427', 'jrj_04@yahoo.com', '19921004jas.jpg'),
('31031991', '', '', 'Y. Rawulunubun', '', 'ST', '1991-03-31', 'Tual', 'Laki-Laki', 'Belum Nikah', 'Katolik', 8, 'Universitas Pattimura', '2017-10-12', 'Teknik Perkapalan', 4, 1, 5, 0, '0000-00-00', ' ', ' ', 'Rumahtiga', 'Ambon', '97233', '085197260431', 'yogazrawul@yahoo.com', '310319912.png');

-- --------------------------------------------------------

--
-- Table structure for table `dtawal_lama`
--

CREATE TABLE `dtawal_lama` (
  `nip` char(18) NOT NULL,
  `niplama` char(9) NOT NULL,
  `nidn` char(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gelardepan` varchar(15) NOT NULL,
  `gelarbelakang` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempatlahir` varchar(40) NOT NULL,
  `jeniskelamin` char(9) NOT NULL,
  `statuskeluarga` char(15) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikanakhir` bigint NOT NULL,
  `jurusan` varchar(60) NOT NULL,
  `kualifikasi` bigint NOT NULL,
  `statuspegawai` int NOT NULL,
  `unitkerja` bigint NOT NULL,
  `jabatanf` bigint NOT NULL,
  `tmtjabatanf` date NOT NULL,
  `kgbterakhir` date NOT NULL,
  `karpeg` varchar(10) NOT NULL,
  `taspen` varchar(10) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kodepos` char(7) NOT NULL,
  `hp` char(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dtawal_lama`
--

INSERT INTO `dtawal_lama` (`nip`, `niplama`, `nidn`, `nama`, `gelardepan`, `gelarbelakang`, `tanggal_lahir`, `tempatlahir`, `jeniskelamin`, `statuskeluarga`, `agama`, `pendidikanakhir`, `jurusan`, `kualifikasi`, `statuspegawai`, `unitkerja`, `jabatanf`, `tmtjabatanf`, `kgbterakhir`, `karpeg`, `taspen`, `npwp`, `alamat`, `kota`, `kodepos`, `hp`, `email`, `foto`) VALUES
('1010', '', '', 'Simon Talakua', '', '', '1978-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Listrik', 4, 1, 3, 0, '0000-00-00', '2016-10-01', ' ', '--Pilih--', ' ', 'Poka', 'Ambon', '97889', '09394', 'mon@gmail.com', '10102.png'),
('195303061979031003', '', '', 'D. Tumanan', 'Ir. ', 'MSIE. ', '1953-03-06', 'Kota Ambon  mk', 'Laki-Laki', 'Nikah', 'Islam', 10, 'Teknik Industri', 3, 2, 9, 10, '2001-10-01', '2013-03-01', '', 'Sudah Ada', '', 'Kuda Mati', 'Ambon', '97128', '0852', 'tumanan@gmail.com', '19530306pic.png'),
('195308031981031003', '', '', 'J. Liklikwatil', 'Ir.', 'MT.', '1953-08-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 10, '2001-08-01', '2016-03-01', 'C.0557977', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0850', 'liklikwatil@yahoo.com', '195308032.png'),
('195312101980031006', '130888562', '', 'Ilela Daud', 'Ir.', 'MT.', '1978-02-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Sistem Perkapalan', 2, 1, 9, 10, '2008-05-01', '2016-01-01', 'C.0166459', 'Sudah Ada', '058189994941000', 'Suli ', 'Ambon', '97116', '0812', 'ileladaud@yahoo.com', '19531210pic.png'),
('195401301980031007', '', '', 'A. R. C. Tetelepta', 'Ir.', 'MASc.', '1954-01-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 0, 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, 8, '2000-01-03', '2016-10-01', 'C.0166460', 'Sudah Ada', ' ', 'passo', 'Ambon', '97117', '081343199719', 'tetelepta@gmail.com', '195401302.png'),
('195603291977031001', '13010418', '0029067908', 'P.W. Tetelepta', 'Ir', 'MT', '1956-03-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Sistem Perkapalan', 2, 1, 9, 8, '2010-10-01', '2015-03-01', 'B.943752', 'Sudah Ada', '774954655941000', ' mangga dua', 'Ambon', ' 972311', '081343153594', 'pietertetelepta29@gmail.com', '19560329pw.jpg'),
('195703211980031003', '', '', 'B. Jamlean', 'Ir.', 'MSi', '1957-03-21', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, 8, '2000-10-01', '2015-03-01', 'C.0166462', 'Sudah Ada', ' ', 'Poka', 'Ambon', '97233', '0852', 'benny@gmail.com', '19570321pakbenyj1.png'),
('195703231983031003', '', '', 'B. Wattimury', 'Ir.', 'MT.', '1957-03-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Sistem Perkapalan', 2, 1, 9, 8, '2002-11-01', '2016-04-01', 'D.057700', 'Sudah Ada', ' ', 'Belakang Soya', 'Ambon', '97233', '0852', 'barnabas@gmail.com', '195703232.png'),
('195711151987032002', '131684020', '', 'Ny. H. C. Ririmasse', 'Ir.', 'MT.', '1957-11-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Transportasi Kelautan', 2, 1, 5, 10, '2014-12-01', '2017-03-01', 'E.370199', 'Sudah Ada', '7864 ', 'Kuda Mati', 'Ambon', '98773', '081248580740', 'hedyririmase@gmail.com', '19571115ririmase.jpg'),
('195801101986031002', '131642079', '', 'M. F. Noya', 'Ir.', 'MT.', '1958-01-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Sistem Perkapalan', 2, 1, 9, 10, '2010-05-01', '2016-03-01', 'E.047538', 'Sudah Ada', '058190109941000', 'Belakang Soya', 'Ambon', '', '0812', 'fritsnoya@yahoo.com', '195801102.png'),
('195904031987031002', '131697295', '', 'E. J. de Lima', 'Ir.', 'MT.', '1959-04-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, ' Teknik Perkapalan', 2, 1, 5, 8, '2010-06-01', '2017-03-01', 'kasjd33', 'Belum Ada', 'ad33', 'Wayame', 'Ambon', '977192', '081344009740', 'ece@gmail.com', '195904032.png'),
('195908251986101001', '131646102', '0025085905', 'M. Tukan', 'Prof. Dr. Ir', 'MT', '1959-08-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Katolik', 10, 'Teknik Transportasi Kelautan', 2, 1, 10, 8, '2009-04-01', '2014-10-01', 'E.047555', 'Sudah Ada', '484476379941000', 'Karpan RT/RW. 002/001', 'Ambon', '97128', '081343000825', 'marcustukan@gmail.com', '195908251312.jpg'),
('196009251988032001', '', '', 'Ny. Y. L. Sitanala', '', 'SH.', '1960-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Administrasi Negara', 1, 1, 3, 0, '0000-00-00', '2018-03-01', 'F.147678', 'Sudah Ada', ' ', 'Rumatiga', 'AMBON', '97117', '0923', 'ivon@gmail.com', '196009251 (5).jpg'),
('196010271990031004', '131917153', '', 'O. Metekohy', 'Ir.', 'M.Si.', '1960-10-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Perkapalan', 2, 1, 5, 8, '2009-11-01', '2016-03-01', 'E.887705', 'Belum Ada', ' ', 'Lateri', 'Ambon', '97118', '081343010324', 'obet@gmail.com', '19601027rip.jpg'),
('196011111981031004', '', '', 'Petrus F. Nikijuluw', '', '', '1960-11-11', 'Ulath', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 2, '0000-00-00', '2018-03-01', 'D.054292', 'Belum Ada', ' ', 'Passo', 'Ambon', '97117', '09923', 'otu@gmail.com', '19601111111.jpg'),
('196011231991031001', '131962551', '', 'R. Ufie', 'Ir.', 'MT.', '1960-11-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '2016-12-01', '2015-03-01', 'F. 196982', 'Sudah Ada', '786432583941000', 'Urimesing', 'Ambon', '97233', '081321446688', 'Ufie@gmail.com', '196011239.jpg'),
('196105271997002100', '132168169', '', 'Ph. Wuysang', 'Ir.', '', '1961-02-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Perkapalan', 2, 1, 5, 8, '2010-01-06', '2017-01-03', '-', 'Sudah Ada', '786432641941000', 'Ambon', 'Ambon', '97233', '0000000000000', 'xxxxxxxxxxxxxxxxx@yahoo.com', '196105272.png'),
('196203031987032003', '', '', 'Ny. Petronela Latupapua', '', '', '1962-03-03', 'Sameth', 'Perempuan', 'Nikah', 'Protestan', 4, '', 1, 1, 3, 2, '0000-00-00', '2016-03-01', 'E.370251', 'Belum Ada', '', 'Paso', 'Ambpn', '97118', '34', 'petronella@gmail.com', '19620303ibunell.png'),
('196208131989031003', '131864164', '', 'W. R. Hetharia', 'Dr. Ir.', 'MApp. Sc.', '1962-08-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Teknik Perkapalan', 2, 1, 5, 10, '2010-01-01', '2017-03-01', 'E.815344', 'Sudah Ada', ' ', 'Passo', 'AMBON', '97117', '082238191650', 'hethariawr@yahoo.com', '19620813Pak-Roby-.jpg'),
('196208212014091002', '', '', 'Agustinus Supusepa', '', '', '1962-06-21', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 3, 2, '0000-00-00', '0000-00-00', '', 'Belum Ada', '', 'Jln. Kudamati', 'Ambon', '97117', '098773', 'agus@gmail.com', '19620821pakagus.jpg'),
('196303171986101001', '', '', 'J. Tupan', 'Ir', 'MT', '1963-03-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2000-10-01', '2015-10-01', 'E.047582', 'Sudah Ada', '786432260941000', 'Batu Gajah ', 'Ambon', '98773', '082398668859', 'bobtupan@yahoo.com', '196303172.png'),
('196308301994031003', '132102347', '000300863', 'H. S. Lainsamputty', 'Ir.', 'MSi.', '1963-08-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ILMU KELAUTAN', 2, 1, 5, 10, '2014-01-09', '2016-01-03', ' G.190660', 'Sudah Ada', '077397032941000', 'suli', 'Ambon', '97128', '12323131313', 'hellylines@gmail.com', '19630830pak-helly-198x300.jpg'),
('196309251986031002', '', '', 'H. Tetelepta', '', 'SE.', '1963-09-25', 'Tepa', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Administrasi Negara', 1, 1, 2, 2, '0000-00-00', '2017-03-01', ' ', 'Belum Ada', ' ', 'Passo', 'Ambon', '9718812', '08123', 'empi@gmail.com', '1963092522.jpg'),
('196311251984032001', '', '', 'Ny. Naomi Maitimu', '', '', '1963-11-25', 'Ema', 'Perempuan', 'Nikah', 'Protestan', 4, 'IPS', 1, 1, 2, 2, '0000-00-00', '2015-03-01', ' ', 'Belum Ada', ' ', 'Amahusu', 'Ambon', '97188', '0822', 'omi@gmail.com', '1963112532.jpg'),
('196311291987031002', '', '', 'Frits M. Lekatompessy', '', 'S.Sos.', '1963-11-29', 'Latuhalat', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Administrasi Negara', 1, 1, 1, 2, '0000-00-00', '2017-03-01', 'E.370246', 'Belum Ada', '', 'Latuhalat', 'Ambon', '97119', '9934', 'frits@gmail.com', '19631129frits.jpg'),
('196401281992032002', '', '', 'Ny. Saartje R. Molle', '', '', '1965-01-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 2, '', 1, 1, 1, 2, '0000-00-00', '2017-03-01', '', 'Belum Ada', '', 'Karpan', 'Ambon', '9899', '0923', 'asd@gmail.com', '196401284.jpg'),
('196408091993031001', '132061371', '', 'W. M. E. Wattimena', 'Ir.', 'MT.', '1964-08-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '2016-12-01', '2015-03-01', 'G. 059649', 'Sudah Ada', ' ', 'Lateri', 'Ambon', '97233', '081343300053', 'Wattimena@gmail.com', '196408091 (2).jpg'),
('196410121988031003', '', '', 'E. Tawairubun', '', '', '1964-10-12', 'Warbal (Tual)', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 2, '0000-00-00', '2015-03-01', 'E.602708', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97117', '0923942', 'ely@gmail.com', '19641012g.jpg'),
('196504301987112001', '', '', 'Ny. Deen A. Kalahatu', '', '', '1965-04-30', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'IPS', 1, 1, 1, 2, '0000-00-00', '2013-11-01', 'E.396449', 'Belum Ada', '', 'Galala', 'Ambon', '971772', '0928', 'ada@gmail.com', '196504302.jpg'),
('196505061987031003', '', '', 'Wilton J. S. Ririhena', '', '', '1965-05-06', 'Jakarta', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 2, '0000-00-00', '2016-03-01', 'E.641911', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97119', '09283', 'oyo@gmail.com', '196505062.png'),
('196505091997021001', '', '0009056707', 'J. D. C. Sihasale', 'Ir.', 'MT.', '1965-05-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Perkapalan', 2, 1, 9, 8, '2005-10-01', '2015-02-01', 'G.440272', 'Sudah Ada', '786432278941000', 'Urimesing', 'Ambon', '97113', '081343156586', 'sihasale@gmail.com', '196505092.png'),
('196506221998031001', '132207801', '0022066505', 'A. Kakalimbong', 'Ir.', 'MT.', '1965-06-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Teknik Sipil', 2, 1, 7, 8, '2010-06-01', '2016-03-01', 'J. 027650', 'Sudah Ada', '786432666941000', 'batu merah', 'Ambon', '97582', '081343411811', 'Kalilombang@gmail.com', '196506222.png'),
('19650905199412001', '', '', 'Abdul. Hadi', 'Ir.', 'MT.', '1965-09-05', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Islam', 9, 'Teknik Perkapalan', 2, 1, 9, 9, '2016-07-01', '2016-12-01', 'G. 319229', 'Sudah Ada', '782568122941000', 'batu merah', 'Ambon', '97113', '081233232337', 'abdul@gmai.com', '19650905xx.jpg'),
('196509101993031002', '132051016', '', 'L. Wattimury', 'Ir.', 'MT.', '1965-09-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Sistem Perkapalan', 2, 1, 9, 8, '2009-05-01', '2017-03-01', 'G.059635', 'Belum Ada', ' ', 'Karang Panjang', 'Ambon', '97188', '0989287665', 'latu@gmail.com', '19650910LATUHORTE WATTIMURY (F'),
('196509131994031003', '132102916', '0013096511', 'R. H. Siahainenia', 'Ir.', 'MT.', '1965-09-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Kelautan Perencanaan Bangunan Lepas Pantai', 2, 1, 5, 10, '2006-01-07', '2018-01-03', 'G.253995', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97116', '081343007137', 'ekoadvmal@gmail.com', '1965091319pak-ecko-139x150.png'),
('196510061986012001', '', '', 'Ny. V. Pattiwael', '', '', '1965-10-06', 'Kampung Mahu', 'Perempuan', 'Nikah', 'Protestan', 4, 'IPS', 1, 1, 2, 2, '0000-00-00', '2018-03-01', 'E.047585', 'Belum Ada', ' ', 'Poka', 'AMBON', '97117', '013', 'vin@gmail.com', '196510061321.jpg'),
('196512051992031001', '', '', 'Reggy W. Lalin', '', '', '1965-12-05', 'Maluku Tenggara', 'Laki-Laki', 'Nikah', 'Katolik', 4, 'Listrik', 1, 1, 3, 2, '0000-00-00', '2017-03-01', ' ', 'Belum Ada', ' ', 'Poka', 'Ambon', '9877', '88234', 'regi@gmail.com', '196512052.png'),
('196601092003121001', '132306798', '0009016601', 'Samy Junus Litiloly', '', 'S.Si., M.T', '1966-01-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Elektro', 2, 1, 6, 10, '2014-04-01', '2017-12-01', 'L.181234', 'Sudah Ada', '786432674941000', 'Jl. Dr. Siwabessy No.4 RT.007.RW.04 Kelurahan Kuda', 'Ambon', '97116', '081210589423', 'samyjunusl@yahoo.com', '19660109SamyJL.jpg'),
('196603121999031001', '', '', 'S. G. M. Amaheka', 'Ir.', 'MT.', '1966-04-12', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Sipil', 2, 1, 7, 9, '2005-01-01', '2015-03-01', 'J.081268', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97113', '0852', 'amaheka@gmail.com', '19660312191 (1).jpg'),
('196605131994031002', '', '', 'Michael Wattimena', '', '', '1966-05-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 2, '0000-00-00', '2017-03-01', 'G.189954', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97889', '0918', 'wati@gmail.com', '196605137.jpg'),
('196610061996032001', '132150427', '-', 'J. Matakupan', '', 'ST. MT.', '1968-06-10', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 9, 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2010-01-06', '2018-01-03', 'G.368223', 'Sudah Ada', '148679020941000', 'Waai', 'Ambon', '97582', '0000000000000', 'XXXXXXXXXXXXXXXX@YAHOO.COM', '196610062.png'),
('196612201994031001', '132086856', '', 'E. R. de Fretes', 'Dr. Ir.', 'MT.', '1966-12-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Teknik Perkapalan', 2, 1, 5, 10, '0000-00-00', '2018-03-01', 'G.190661', 'Sudah Ada', ' 786432559941000', 'Batumeja', 'AMBON', '97117', '081357841333', 'defretesera@gmail.com', '19661220elly.jpg'),
('196706071994121001', '132125676', '', 'J. Latuny', 'Ir.', 'M.Eng. PhD', '1967-06-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '2008-06-01', '2016-12-01', 'G. 319225', 'Sudah Ada', '487728129941000', 'Kuda Mati', 'Ambon', '97113', '082239111244', 'Latuny@gmail.com', '196706072.png'),
('196707261997031002', '132173416', '', 'R. B. Luhulima', 'Dr.', 'ST. MT', '1967-07-26', 'AMBON', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Teknik Perkapalan', 2, 1, 5, 8, '2004-01-04', '2017-01-03', 'H.026341', 'Sudah Ada', '066477290941000', 'Amahusus', 'Ambon', '97117', '081330722067', 'richardluhulima@yahoo.com', '1967072619icat].jpg'),
('196709141989032001', '', '', 'Ny. Petronela W. Pattiwael', '', '', '1967-09-14', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'Administrasi Negara', 1, 1, 2, 2, '0000-00-00', '2018-03-01', 'E.870149', 'Belum Ada', ' ', 'Kayu Tiga', 'Ambon', '978834', '0986', 'nelpat@gmail.com', '1967091410.jpg'),
('196801281997031003', '132173418', '0028016808', 'J. Louhenapessy', 'Ir.', 'MT.', '1968-01-28', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '0000-00-00', '2015-03-01', 'H. 026342', 'Sudah Ada', '  ', 'Batu Gajah ', 'Ambon', '97113', '085354113648', 'Louhenapessy@gmail.com', '1968012820180906_121809.jpg'),
('196804101995021001', '132125693', '', 'L. A. T. Matatula', '', 'ST.', '1968-10-04', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Perkapalan', 2, 1, 5, 8, '2005-01-10', '2017-01-02', 'G.319236', 'Sudah Ada', '1234567890', 'Latuhalat', 'Ambon', '97113', '081330137768', 'lmdeleka@gmail.com', '196804102.png'),
('196804221994031001', '132089496', '', 'G. Tanlain', '', 'ST. MT.', '1968-04-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Perkapalan', 2, 1, 9, 9, '2004-01-10', '2008-03-01', 'G.190662', 'Sudah Ada', '1234567760', 'Kuda Mati', 'Ambon', '97113', '0813', 'tanlei@gmail.com', '196804222.png'),
('196805141995121001', '', '', 'Ogie Pattiselano', '', '', '1968-05-14', 'Saparua', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 2, '0000-00-00', '2016-12-01', 'G.262788', 'Belum Ada', ' ', 'Tawiri', 'Ambon', '98782', '09823', 'ogie@gmail.com', '196805142.png'),
('196807131995021001', '132128384', '', 'N. Titaheluw', 'Ir.', 'MT.', '1968-07-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '2009-01-01', '2015-03-01', 'G. 419235', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '081344747994', 'Titaheluw@gmail.com', '196807132.png'),
('196809151998031004', '', '', 'W. D. Nanlohy', '', 'ST. M.Si', '1968-09-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, 9, '2010-06-01', '2016-03-01', ' J.083322', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97233', '0852', 'nanlohy@gmail.com', '196809152.png'),
('196812201996031001', '', '', 'Djefri Palijama', '', '', '1968-12-20', 'Pia', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 2, '0000-00-00', '2017-03-01', 'G.373014', 'Belum Ada', ' ', 'Batu Meja', 'AMBON', '97117', '0923', 'jepo@gmail.com', '196812202.png'),
('196902222002121002', '132301635', '', 'Imran Oppier', 'Ir.', 'MT.', '1969-02-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Teknik Sipil', 2, 1, 7, 9, '2016-07-01', '2014-12-01', ' ', 'Sudah Ada', '077399244941000', 'Batu Gajah ', 'Ambon', '97233', '0813', 'Imran@gmail.com', '196902222.png'),
('196903301991122001', '', '', 'Esthernetty Maruanaya', '', 'SH.', '1969-03-30', 'Tala', 'Perempuan', 'Belum Nikah', 'Protestan', 8, 'Niaga', 1, 1, 3, 5, '0000-00-00', '2014-12-01', '', 'Belum Ada', '', 'Latuhalat', 'ambon manise', '987771', '9876554', 'nety@gmail.com', '19690330R.jpg'),
('196904191998031003', '132207805', '', 'A. L. Apituley', 'Ir.', 'MT.', '1969-04-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Perkapalan', 2, 1, 9, 9, '2000-01-10', '2016-03-01', 'J.083326', 'Sudah Ada', '786432484941000', 'Urimesing', 'Ambon', '97113', '081343003133', 'Apituley@gmail.com', '196904192.png'),
('196904281995032001', '132129665', '', 'S. T. A. Lekatompessy', '', 'ST., MT.', '1969-04-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Teknik Perkapalan', 2, 1, 5, 10, '2014-01-09', '2019-01-03', 'G.319237', 'Sudah Ada', '1234567890', 'Urimesing', 'Ambon', '97113', '1314235435456', 'Sonja_lekatompessy@yahoo.com', '1969042819ibu-sonja.png'),
('196906191995121001', '132137973', '', 'L. M. Kelwulan', '', 'ST, MT.', '1969-12-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2010-01-06', '2017-01-12', 'G.368216', 'Sudah Ada', '786432351941000', 'Passo', 'Ambon', '97233', '0000000000000', 'XXXXXXXXXX@yahoo.com', '196906192.png'),
('196907031994121001', '312228', '', 'P. Ciptoadhi', 'Ir', 'MT', '1969-07-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Teknik Perkapalan', 2, 1, 9, 8, '2017-10-01', '2016-12-01', 'G.31228', 'Sudah Ada', '148679509941000', 'Waihaong', 'Ambon', '97232', '081334753005', 'ciptoadi@gmai.com', '196907032.png'),
('196907050998031002', '', '', 'E. B. Johannes', '', 'ST. MT.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Perkapalan', 2, 1, 5, 9, '2000-01-10', '2016-01-04', 'J.083324', 'Sudah Ada', '786432427941000', 'Batu Gajah', 'Ambon', '97211', '0852', 'joannes@gmail.com', '196907058.jpg'),
('196907251997021002', '132168170', '', 'A. Simanjuntak', 'Ir.', 'MT.', '1969-07-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '2009-09-01', '2015-02-01', 'H. 026338', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081343288048', 'simanjuntak@gmail.com', '196907252.png'),
('196908051994121001', '132125693', '', 'E. Matatula', '', 'ST, MT.', '1969-08-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Teknik Transportasi Kelautan', 2, 1, 5, 8, '2007-01-01', '2016-12-01', 'G.319227', 'Sudah Ada', '774954747941000', 'Kuda Mati', 'Ambon', '97113', '07852', 'edwinmatatula@gmail.com', '196908052.png'),
('196908161998031001', '132207800', '', 'P. Th. Berhitu', 'Dr.', 'ST. MT.', '1969-08-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Teknik Bangunan Lepas Pantai', 2, 1, 5, 10, '1998-01-03', '0000-00-00', 'J.083323', 'Sudah Ada', '077397057941000', 'Talake', 'Ambon', '97211', '085197361204', 'piter_berhitu@gmail.com', '196908162.png'),
('196909151997032001', '132173416', '', 'M. Manuputty', '', 'ST. M.Kes', '1969-09-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Kesehatan', 2, 1, 5, 0, '0000-00-00', '0000-00-00', 'J.083319', 'Sudah Ada', '196909151997032001', 'kudamati', 'Ambon', '97233', '081247024449', 'mona@yahoo.com', '196909152.png'),
('196909231998031002', '132207804', '', 'P. Kabaena', '', 'ST.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Perkapalan', 2, 1, 5, 9, '2000-01-10', '2010-01-03', 'J.083325', 'Sudah Ada', '09875423', 'Poka', 'Ambon', '97233', '0852', 'kabaena@yahoo.com', '196909232.png'),
('197005051999031003', '132240518', '0005057005', 'Billy Jhones Camerling', '', 'ST.,MT', '1970-05-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2017-03-01', '2015-03-01', 'K.013624', 'Sudah Ada', '786153312941000', 'Air Salobar ', 'Ambon', '97593', '081331434480', 'billi@yahoo.com', '197005052.png'),
('197005231999031001', '132231731', '0023057004', 'Nil Edwin Maitimu', '', 'ST.,MT', '1970-05-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '0000-00-00', '2015-03-01', 'I.016964', 'Sudah Ada', '077396976941000', 'Jl. Sisingamangaraja Passo RT.003/RW001', 'Ambon', '97593', '085243215515', 'niledwinmaitimu@gmail.com', '197005232.png'),
('197007231998031001', '132207748', '', 'D. S. Pelupessy', 'Ir.', 'MT.', '1970-07-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Teknik Perkapalan', 2, 1, 9, 8, '2013-04-01', '2016-03-01', ' ', 'Sudah Ada', '12345660', 'Kuda Mati', 'Ambon', '97113', '0813', 'pelupessy@gmail.com', '197007232.png'),
('197008141999031002', '132232270', '', 'G. R. Latuhihin', '', 'ST, MT.', '1970-08-14', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Perkapalan', 2, 1, 5, 9, '2010-01-06', '2019-01-03', ' ', 'Sudah Ada', '148679160941000', 'Passo', 'Ambon', '97233', '0852546852', 'icat@gmail.com', '197008142.png'),
('197109251998032001', '', '', 'G. S. Norimarna', '', 'ST. MS.Eng', '1971-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, ' ', 2, 1, 9, 9, '2010-10-01', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'Norimarna@gmail.com', '1971092520180906_121728.jpg'),
('19711120200604100', '132319089', '', 'Nasir Suruali', 'Ir.', 'MT.', '1971-11-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'teknik mesin', 2, 1, 6, 8, '2014-12-01', '2016-04-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97582', '085243625095', 'Nasir@gmail.com', '197111202.png'),
('197112131999032001', '132231730', '0013127106', ' Ariviana. Lientje. Kakerissa', '', 'ST, MT. IPM', '1971-12-13', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2011-06-01', '2017-03-01', ' ', 'Sudah Ada', ' 077398469941000', 'OSM', 'Ambon', '97116', '081224915000', 'vianakakerissa71@gmail.co', '197112131.jpg'),
('197201241995121002', '', '', 'Jason M. S. Pesulima', '', '', '1972-01-24', 'Amahusu', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 6, '2010-01-01', '2016-12-01', 'D.054292', 'Belum Ada', ' ', 'Poka', 'AMBON', '97117', '023', 'jasonsoni@gmail.com', '197201242.png'),
('197202011997021001', '', '', 'F. Tanahitumessing', '', 'ST', '1972-02-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Mesin', 1, 1, 2, 6, '2010-02-01', '2018-02-01', 'G.438066', 'Belum Ada', ' ', 'Batu Gajah', 'Ambon', '97882', '089283', 'angky@gmail.com', '197202011 (9).jpg'),
('197207111998031002', '', '', 'Isak Aponno', '', 'ST', '1972-07-11', 'Porto', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik', 1, 1, 2, 6, '0000-00-00', '2018-03-01', ' I.029040', 'Belum Ada', ' ', 'Passo', 'Ambon', '98133', '09813', 'cak@gmail.com', '197207112.png'),
('197208092000031001', '132262173', '0009087211', 'W. M. Rumaherang', 'Ir.', 'MSc. PhD.', '1972-08-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '2015-12-01', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081291724514', 'Rumaherang@gmail.com', '197208092.png'),
('197208152000121001', '132288571', '', 'S. I. Latuconsina', 'Ir.', 'MT.', '1972-02-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Teknik Sipil', 2, 1, 7, 9, '2007-01-01', '2014-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97582', '085231314949', 'Latuconsina@gmai.com', '197208158is.jpg'),
('197211172000031001', '132260996', '', 'Alfredo Tutuhatunewa', '', 'ST.,MT', '1972-11-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2009-06-01', '2016-03-01', ' ', 'Sudah Ada', '1234', ' karang panjang', 'Ambon', '97593', '081343', 'alfredotutuhatunewa@yahoo.com', '197211172.png'),
('197307211995121001', '', '', 'Chaleb M. L. Wattimena', '', '', '1973-07-21', 'Urimessing', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 2, 7, '0000-00-00', '2019-03-01', 'G.262790', 'Belum Ada', ' ', 'Siwang', 'AMBON', '97117', '0921', 'kaleb@gmail.com', '19730721cah.jpg'),
('197307251999032001', '132204636', '', 'F. Gaspersz', '', 'ST, MT.', '1973-07-25', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 9, 'Teknologi Kelautan', 2, 1, 5, 0, '0000-00-00', '0000-00-00', ' ', 'Sudah Ada', '774954721941000', 'Batu Gajah ', 'Ambon', '97128', '0813330362525', 'fellagsp73@gmail.com', '197307252.png'),
('19730729200003001', '132260995', '', 'D. R. Lekatompessy', 'Dr.', 'ST, MT.', '1973-07-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'Teknik Perkapalan', 2, 1, 5, 8, '2010-06-01', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'deby@gmail.com', '197307292.png'),
('197309062002121001', '132301633', '', 'Abdul Djabar Tianotak', '', 'ST, MSi.', '1973-06-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Perikanan dan Ilmu Kelautan', 2, 1, 5, 8, '2016-07-01', '2018-12-01', ' ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97233', '08452', 'djabar@gmail.com', '197309062.png'),
('197403052000032001', '', '', 'Nn. M. L. Pattiapon,', '', 'ST.', '1974-03-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Teknik Industri', 2, 1, 10, 8, '2011-10-01', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97116', '0852', 'pattiapon@gmail.com', '197403052.png'),
('197407132003122001', '132303296', '', 'Warniyati', 'Ir.', 'MT.', '1974-07-13', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'teknik sipil', 2, 1, 7, 8, '2012-01-02', '2015-12-01', ' ', 'Sudah Ada', '786432344941000', 'batu merah', 'Ambon', '97233', '0813', 'Warniaty@gmail.com', '197407132.png'),
('197409062005011003', '', '', 'Stevianus Titaley', '', 'ST, MSi.', '1974-09-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2008-10-01', '2015-01-01', '  ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97116', '0852', 'stecianus@gmail.com', '197409062.png'),
('197412162002122001', '', '', 'Novitha L. T. Thenu', '', 'ST. MT.', '1974-10-16', 'amobn', 'Perempuan', 'Nikah', '--Pilih--', 0, 'Sistem Perkapalan', 2, 1, 9, 8, '2009-08-01', '2016-12-01', ' ', 'Sudah Ada', ' ', 'passo', 'Ambon', '97233', '081343199719', 'novitha@gmail.com', '197412162.png'),
('197602242010121001', '', '', 'Stani Ferdinandus', '', '', '1976-02-24', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 4, 'Administrasi Negara', 1, 1, 2, 0, '0000-00-00', '2018-12-01', ' ', 'Belum Ada', ' ', 'Wainitu', 'AMBON', '97117', '938284', 'stani@gmail.com', '197602242.png'),
('197608192001122001', '132297214', '', 'R. P. Soumokil', '', 'ST, MSi.', '1976-08-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Teknik Transportasi Kelautan', 2, 1, 5, 9, '2009-08-01', '2017-12-01', ' ', 'Sudah Ada', '786432310941000', 'Batu Gajah ', 'Ambon', '97233', '0852', 'rutha@gmail.com', '197608192.png'),
('197705022002121004', '', '', 'Benjamin G. Tentua', '', 'ST.MT.', '1977-05-02', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Mesin', 2, 1, 6, 8, '2011-10-01', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'benjamin@gmail.com', '197705021 (11).jpg'),
('197804062005012001', '', '', 'Wilma Latuny', 'Dr.', 'ST. MSi.', '1978-04-06', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'Teknik Industri', 2, 1, 10, 8, '2009-06-01', '2015-01-01', ' ', 'Sudah Ada', '774954689941000', 'Batu Gajah ', 'Ambon', '97116', '08452', 'wilma@gmail.com', '197804062.png'),
('197807272002121001', '', '', 'Johan M. Tupan', '', 'ST. MT.', '1978-07-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2009-06-01', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '0852', 'pelupessy@gmail.com', '197807272.png'),
('197901112008121002', '', '', 'Arthur. Y. Leiwakabessy', 'Ir.', 'MT.', '1979-01-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'teknik mesin', 2, 1, 6, 8, '2014-04-01', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97582', '082141676561', 'Arthur@gmail.com', '197901112.png'),
('197905062005012001', '', '', 'Nurmiyati Kellian', '', 'ST, MT.', '1979-05-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Teknik Industri', 2, 1, 10, 8, '2015-01-01', '2015-01-01', ' ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97116', '0852', 'nurmiaty@gmail.com', '197905062.png'),
('197906012005011002', '', '', 'Victor O. Lawalata', '', 'ST, MT.', '1979-06-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 10, '2013-01-04', '2017-01-01', ' ', 'Sudah Ada', ' ', 'Poka', 'Ambon', '97113', '0852', 'viktor@gmail.com', '197906012.png'),
('197907302003121004', '', '', 'Hanok Mandaku', '', 'ST, MT.', '1979-07-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2013-01-02', '2015-10-01', ' ', 'Sudah Ada', '786432468941000', 'Batu Gajah ', 'Ambon', '97116', '0852', 'hanok@gamil.com', '197907302.png'),
('197908042005012004', '', '', 'Olivia M. de Fretes', '', 'ST, M.Eng', '1979-08-04', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2012-04-01', '2015-01-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'olivia@gmail.com', '197908042.png'),
('197912292005011002', '', '', 'Daniel B Pailin', '', 'ST, MT.', '1979-12-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 8, '2013-04-01', '2015-01-01', ' ', 'Sudah Ada', '077397792941000', 'Batu Gajah ', 'Ambon', '98773', '0852', 'daniel@gmail.com', '197912292.png'),
('198002082005012003', '', '', 'Annalyse Picauly', '', 'SE.', '1980-02-08', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Ekonomi', 1, 1, 1, 2, '0000-00-00', '2017-01-01', '', 'Belum Ada', '', 'Passo', 'Ambon', '978892', '092', 'analis@gmail.com', '198002085.jpg'),
('198102212005012001', '', '', 'Aminah Soleman', '', 'ST, MT.', '1981-02-21', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'Teknik Industri', 2, 1, 10, 8, '2012-07-01', '2015-02-01', ' ', 'Sudah Ada', 'P077397784941000', 'batu merah', 'Ambon', '97113', '0852', 'aminah@gmail.com', '198102212.png'),
('198107182008121003', '', '', 'Richard A. de Fretes', '', 'ST', '1981-07-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Industri', 2, 1, 10, 9, '2015-06-01', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Urimesing', 'Ambon', '97128', '0852', 'richard@gmail.com', '198107182.png'),
('198209292010121003', '13099887', 'tes nidn', 'Victor Eric Pattiradjawane', '', 'S. Kom.', '1982-09-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Teknik Informatika', 1, 1, 4, 2, '0000-00-00', '2017-08-01', 'E.370251', 'Belum Ada', '12345.0232.123', 'Ambon', 'Ambon', '97117', '09182833', 'devictoreric@yahoo.com', '1982092920vicjas.png'),
('198504052015041002', '', '', 'Felix Taihuttu', 'Ir.', 'MT.', '1985-04-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Sipil', 2, 1, 7, 8, '2016-01-01', '2017-08-01', ' ', 'Sudah Ada', '738520683941000', 'passo', 'Ambon', '97116', '081227252045', 'Felix@gmail.com', '198504052.png'),
('198506182009122005', '', '', 'Imelda Ch. Poceratu', '', 'M.Teol', '1985-06-18', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Teologi', 2, 1, 10, 8, '2015-06-01', '2015-12-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'imelda@gmail.com', '19850618cd.jpg'),
('198507112014041003', '', '', 'Mansye. Ronal Ayal', 'Ir.', 'MT.', '1985-07-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Teknik Sipil', 2, 1, 7, 9, '2016-07-01', '2016-04-01', ' ', 'Sudah Ada', ' ', 'Urimesing', 'Ambon', '97582', '085220204287', 'Mansye@gmail.com', '198507112.png'),
('198709022015042001', '', '', 'Andiah Nurhaeny', 'Ir.', 'MT.', '1987-09-02', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'teknik perencanaan wilayah dan kota', 2, 1, 11, 9, '2017-04-01', '2017-08-01', '  ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081321500757', 'Adhinda@gmail.com', '198709022.png'),
('19900101', '', '', 'Billy P J Manuhutu', '', 'ST.', '1993-04-15', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 8, 'Teknik Perkapalan', 4, 1, 1, 0, '0000-00-00', '0000-00-00', ' ', 'Belum Ada', ' ', 'Poka', 'Ambon', '98773', '085211384519', 'billy_manuhutu@yahoo.com', '199001011.jpg'),
('199210042010121004', '', '', 'Jason Rendy Joris', '', '', '1992-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'Mesin', 1, 1, 1, 0, '0000-00-00', '2017-12-01', '00', 'Sudah Ada', '683943088941000', 'Galala', 'Ambon', '971992', '085243194427', 'jrj_04@yahoo.com', '19921004jas.jpg'),
('31031991', '', '', 'Y. Rawulunubun', '', 'ST', '1991-03-31', 'Tual', 'Laki-Laki', 'Belum Nikah', 'Katolik', 8, 'Teknik Perkapalan', 4, 1, 5, 0, '0000-00-00', '0000-00-00', ' ', 'Sudah Ada', ' ', 'Rumahtiga', 'Ambon', '97233', '085197260431', 'yogazrawul@yahoo.com', '310319912.png');

-- --------------------------------------------------------

--
-- Table structure for table `dtdp3`
--

CREATE TABLE `dtdp3` (
  `id_dtdp3` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `tahun` date NOT NULL,
  `nip_pp` char(18) NOT NULL,
  `nama_pp` varchar(50) NOT NULL,
  `jabatan_pp` varchar(50) NOT NULL,
  `unitkerja_pp` varchar(50) NOT NULL,
  `nip_app` char(18) NOT NULL,
  `nama_app` varchar(50) NOT NULL,
  `jabatan_app` varchar(50) NOT NULL,
  `unitkerja_app` varchar(50) NOT NULL,
  `kesetiaan` float NOT NULL,
  `prestasi` float NOT NULL,
  `tanggungjawab` float NOT NULL,
  `ketaatan` float NOT NULL,
  `kejujuran` float NOT NULL,
  `kerjasama` float NOT NULL,
  `prakarsa` float NOT NULL,
  `kepemimpinan` float NOT NULL,
  `filedp3` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dtistrisuami`
--

CREATE TABLE `dtistrisuami` (
  `id_dtistri` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan` bigint NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `file` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dtpegawai`
--

CREATE TABLE `dtpegawai` (
  `nip` char(18) NOT NULL,
  `niplama` char(9) NOT NULL,
  `nidn` char(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gelardepan` varchar(15) NOT NULL,
  `gelarbelakang` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempatlahir` varchar(40) NOT NULL,
  `jeniskelamin` char(9) NOT NULL,
  `statuskeluarga` char(15) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikanakhir` bigint NOT NULL,
  `namasekolah` varchar(40) NOT NULL,
  `tahunmasuk` date NOT NULL,
  `tahunlulus` date NOT NULL,
  `jurusan` varchar(60) NOT NULL,
  `kualifikasi` bigint NOT NULL,
  `statuspegawai` int NOT NULL,
  `unitkerja` bigint NOT NULL,
  `tmtcpns` date NOT NULL,
  `tmtpns` date NOT NULL,
  `golonganterakhir` bigint NOT NULL,
  `tmtgolongan` date NOT NULL,
  `jabatanf` bigint NOT NULL,
  `tmtjabatanf` date NOT NULL,
  `jabatans` bigint NOT NULL,
  `tmtjabatans` date DEFAULT NULL,
  `kgbterakhir` date NOT NULL,
  `karpeg` varchar(10) NOT NULL,
  `taspen` varchar(10) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kodepos` char(7) NOT NULL,
  `hp` char(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dtpegawai`
--

INSERT INTO `dtpegawai` (`nip`, `niplama`, `nidn`, `nama`, `gelardepan`, `gelarbelakang`, `tanggal_lahir`, `tempatlahir`, `jeniskelamin`, `statuskeluarga`, `agama`, `pendidikanakhir`, `namasekolah`, `tahunmasuk`, `tahunlulus`, `jurusan`, `kualifikasi`, `statuspegawai`, `unitkerja`, `tmtcpns`, `tmtpns`, `golonganterakhir`, `tmtgolongan`, `jabatanf`, `tmtjabatanf`, `jabatans`, `tmtjabatans`, `kgbterakhir`, `karpeg`, `taspen`, `npwp`, `alamat`, `kota`, `kodepos`, `hp`, `email`, `foto`) VALUES
('1010', '', '', 'Simon Talakua', '', '', '1978-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1995-10-01', '1997-10-01', 'Listrik', 4, 1, 3, '2015-10-01', '2016-10-01', 0, '2016-10-01', 0, '0000-00-00', 0, '0000-00-00', '2016-10-01', ' ', '--Pilih--', ' ', 'Poka', 'Ambon', '97889', '09394', 'mon@gmail.com', '10102.png'),
('195303061979031003', '', '', 'D. Tumanan', 'Ir. ', 'MSIE. ', '1953-03-06', 'Kota Ambon  mk', 'Laki-Laki', 'Nikah', 'Islam', 10, 'ITS Surabaya', '1984-08-19', '1986-08-22', 'Teknik Industri', 3, 2, 9, '1979-03-01', '1980-06-01', 12, '2009-04-01', 10, '2001-10-01', 11, '0001-01-01', '2013-03-01', '', 'Sudah Ada', '', 'Kuda Mati', 'Ambon', '97128', '0852', 'tumanan@gmail.com', '19530306pic.png'),
('195308031981031003', '', '', 'J. Liklikwatil', 'Ir.', 'MT.', '1953-08-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-12', '2003-08-25', 'Teknik Industri', 2, 1, 10, '1981-03-01', '1982-06-01', 10, '2001-10-01', 10, '2001-08-01', 0, '0000-00-00', '2016-03-01', 'C.0557977', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0850', 'liklikwatil@yahoo.com', '195308032.png'),
('195312101980031006', '130888562', '', 'Ilela Daud', 'Ir.', 'MT.', '1978-02-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '1997-03-01', '2000-08-01', 'Sistem Perkapalan', 2, 1, 9, '1980-03-01', '1981-08-01', 11, '2008-10-01', 10, '2008-05-01', 0, '0000-00-00', '2016-01-01', 'C.0166459', 'Sudah Ada', '058189994941000', 'Suli ', 'Ambon', '97116', '0812', 'ileladaud@yahoo.com', '19531210pic.png'),
('195401301980031007', '', '', 'A. R. C. Tetelepta', 'Ir.', 'MASc.', '1954-01-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 0, 'UNIVERSITAS PATTIMURA ', '1993-08-15', '2001-08-26', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, '1980-03-01', '1981-08-01', 8, '2002-04-01', 8, '2000-01-03', 0, '0000-00-00', '2016-10-01', 'C.0166460', 'Sudah Ada', ' ', 'passo', 'Ambon', '97117', '081343199719', 'tetelepta@gmail.com', '195401302.png'),
('195603291977031001', '13010418', '0029067908', 'P.W. Tetelepta', 'Ir', 'MT', '1956-03-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November Surabaya', '2010-01-10', '2013-01-11', 'Teknik Sistem Perkapalan', 2, 1, 9, '1977-03-01', '1978-06-01', 8, '2011-04-01', 8, '2010-10-01', 0, '0000-00-00', '2015-03-01', 'B.943752', 'Sudah Ada', '774954655941000', ' mangga dua', 'Ambon', ' 972311', '081343153594', 'pietertetelepta29@gmail.com', '19560329pw.jpg'),
('195703211980031003', '', '', 'B. Jamlean', 'Ir.', 'MSi', '1957-03-21', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA ', '2004-08-24', '2008-08-30', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, '1980-03-01', '1981-08-01', 9, '2002-01-01', 8, '2000-10-01', 0, '0000-00-00', '2015-03-01', 'C.0166462', 'Sudah Ada', ' ', 'Poka', 'Ambon', '97233', '0852', 'benny@gmail.com', '19570321pakbenyj1.png'),
('195703231983031003', '', '', 'B. Wattimury', 'Ir.', 'MT.', '1957-03-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-15', '2005-08-29', 'Teknik Sistem Perkapalan', 2, 1, 9, '1983-03-01', '1984-10-01', 9, '2003-04-01', 8, '2002-11-01', 0, '0000-00-00', '2016-04-01', 'D.057700', 'Sudah Ada', ' ', 'Belakang Soya', 'Ambon', '97233', '0852', 'barnabas@gmail.com', '195703232.png'),
('195711151987032002', '131684020', '', 'Ny. H. C. Ririmasse', 'Ir.', 'MT.', '1957-11-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2002-03-01', '2006-08-01', 'Transportasi Kelautan', 2, 1, 5, '1987-03-01', '1988-08-01', 10, '2015-04-01', 10, '2014-12-01', 0, '0000-00-00', '2017-03-01', 'E.370199', 'Sudah Ada', '7864 ', 'Kuda Mati', 'Ambon', '98773', '081248580740', 'hedyririmase@gmail.com', '19571115ririmase.jpg'),
('195801101986031002', '131642079', '', 'M. F. Noya', 'Ir.', 'MT.', '1958-01-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2002-03-01', '2005-08-01', 'Sistem Perkapalan', 2, 1, 9, '1986-03-01', '1987-11-01', 11, '2011-04-01', 10, '2010-05-01', 0, '0000-00-00', '2016-03-01', 'E.047538', 'Sudah Ada', '058190109941000', 'Belakang Soya', 'Ambon', '', '0812', 'fritsnoya@yahoo.com', '195801102.png'),
('195904031987031002', '131697295', '', 'E. J. de Lima', 'Ir.', 'MT.', '1959-04-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS', '2005-08-01', '2008-08-01', ' Teknik Perkapalan', 2, 1, 5, '1987-03-01', '1988-08-01', 8, '2010-10-01', 8, '2010-06-01', 0, '0000-00-00', '2017-03-01', 'kasjd33', 'Belum Ada', 'ad33', 'Wayame', 'Ambon', '977192', '081344009740', 'ece@gmail.com', '195904032.png'),
('195908251986101001', '131646102', '0025085905', 'M. Tukan', 'Prof. Dr. Ir', 'MT', '1959-08-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Katolik', 10, 'ITS Surabaya', '2008-09-20', '2013-04-26', 'Teknik Transportasi Kelautan', 2, 1, 10, '1986-10-01', '1987-11-01', 12, '2010-10-01', 8, '2009-04-01', 0, '0000-00-00', '2014-10-01', 'E.047555', 'Sudah Ada', '484476379941000', 'Karpan RT/RW. 002/001', 'Ambon', '97128', '081343000825', 'marcustukan@gmail.com', '195908251312.jpg'),
('196009251988032001', '', '', 'Ny. Y. L. Sitanala', '', 'SH.', '1960-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1992-10-01', '1997-10-01', 'Administrasi Negara', 1, 1, 3, '1988-03-01', '1989-09-01', 11, '2010-04-01', 0, '0000-00-00', 6, '2010-01-01', '2018-03-01', 'F.147678', 'Sudah Ada', ' ', 'Rumatiga', 'AMBON', '97117', '0923', 'ivon@gmail.com', '196009251 (5).jpg'),
('196010271990031004', '131917153', '', 'O. Metekohy', 'Ir.', 'M.Si.', '1960-10-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institute Teknologi Bandung', '2000-08-01', '2004-08-01', 'Perkapalan', 2, 1, 5, '1990-03-01', '1991-08-01', 11, '2010-04-01', 8, '2009-11-01', 0, '0000-00-00', '2016-03-01', 'E.887705', 'Belum Ada', ' ', 'Lateri', 'Ambon', '97118', '081343010324', 'obet@gmail.com', '19601027rip.jpg'),
('196011111981031004', '', '', 'Petrus F. Nikijuluw', '', '', '1960-11-11', 'Ulath', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '2000-01-01', '2002-01-01', 'Mesin', 1, 1, 2, '1981-03-01', '1982-06-01', 6, '2012-12-01', 2, '0000-00-00', 0, '0000-00-00', '2018-03-01', 'D.054292', 'Belum Ada', ' ', 'Passo', 'Ambon', '97117', '09923', 'otu@gmail.com', '19601111111.jpg'),
('196011231991031001', '131962551', '', 'R. Ufie', 'Ir.', 'MT.', '1960-11-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1991-03-01', '1992-08-01', 8, '2001-04-01', 8, '2016-12-01', 0, '0000-00-00', '2015-03-01', 'F. 196982', 'Sudah Ada', '786432583941000', 'Urimesing', 'Ambon', '97233', '081321446688', 'Ufie@gmail.com', '196011239.jpg'),
('196105271997002100', '132168169', '', 'Ph. Wuysang', 'Ir.', '', '1961-02-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '1975-12-28', '2002-01-01', 'Teknik Perkapalan', 2, 1, 5, '1997-01-03', '1998-01-06', 8, '2010-01-10', 8, '2010-01-06', 0, '0000-00-00', '2017-01-03', '-', 'Sudah Ada', '786432641941000', 'Ambon', 'Ambon', '97233', '0000000000000', 'xxxxxxxxxxxxxxxxx@yahoo.com', '196105272.png'),
('196203031987032003', '', '', 'Ny. Petronela Latupapua', '', '', '1962-03-03', 'Sameth', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMA', '1979-08-01', '1982-08-01', '', 1, 1, 3, '1987-03-01', '1988-08-01', 7, '2007-04-01', 2, '0000-00-00', 0, '0000-00-00', '2016-03-01', 'E.370251', 'Belum Ada', '', 'Paso', 'Ambpn', '97118', '34', 'petronella@gmail.com', '19620303ibunell.png'),
('196208131989031003', '131864164', '', 'W. R. Hetharia', 'Dr. Ir.', 'MApp. Sc.', '1962-08-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'UniversitÃ© de LiÃ©ge, Belgium', '2012-01-01', '2017-10-01', 'Teknik Perkapalan', 2, 1, 5, '1989-03-01', '1990-03-01', 12, '2010-04-01', 10, '2010-01-01', 1, '2017-01-01', '2017-03-01', 'E.815344', 'Sudah Ada', ' ', 'Passo', 'AMBON', '97117', '082238191650', 'hethariawr@yahoo.com', '19620813Pak-Roby-.jpg'),
('196208212014091002', '', '', 'Agustinus Supusepa', '', '', '1962-06-21', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1982-01-01', '1984-10-01', 'Mesin', 1, 1, 3, '2014-09-01', '0015-02-01', 2, '2014-09-01', 2, '0000-00-00', 0, '0000-00-00', '0000-00-00', '', 'Belum Ada', '', 'Jln. Kudamati', 'Ambon', '97117', '098773', 'agus@gmail.com', '19620821pakagus.jpg'),
('196303171986101001', '', '', 'J. Tupan', 'Ir', 'MT', '1963-03-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2002-03-01', '2005-08-12', 'Teknik Transportasi Kelautan', 2, 1, 5, '1986-10-01', '1987-11-01', 9, '2001-04-01', 8, '2000-10-01', 0, '0000-00-00', '2015-10-01', 'E.047582', 'Sudah Ada', '786432260941000', 'Batu Gajah ', 'Ambon', '98773', '082398668859', 'bobtupan@yahoo.com', '196303172.png'),
('196308301994031003', '132102347', '000300863', 'H. S. Lainsamputty', 'Ir.', 'MSi.', '1963-08-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA AMBON', '2013-01-09', '2015-01-10', 'ILMU KELAUTAN', 2, 1, 5, '1995-01-03', '1995-01-09', 10, '2016-01-10', 10, '2014-01-09', 0, '0000-00-00', '2016-01-03', ' G.190660', 'Sudah Ada', '077397032941000', 'suli', 'Ambon', '97128', '12323131313', 'hellylines@gmail.com', '19630830pak-helly-198x300.jpg'),
('196309251986031002', '', '', 'H. Tetelepta', '', 'SE.', '1963-09-25', 'Tepa', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2001-08-01', '2006-08-01', 'Administrasi Negara', 1, 1, 2, '1986-03-01', '1987-03-01', 9, '2013-10-01', 2, '0000-00-00', 7, '2014-08-01', '2017-03-01', ' ', 'Belum Ada', ' ', 'Passo', 'Ambon', '9718812', '08123', 'empi@gmail.com', '1963092522.jpg'),
('196311251984032001', '', '', 'Ny. Naomi Maitimu', '', '', '1963-11-25', 'Ema', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1980-01-01', '1983-10-01', 'IPS', 1, 1, 2, '1984-03-01', '1986-03-01', 7, '2003-04-01', 2, '0000-00-00', 0, '0000-00-00', '2015-03-01', ' ', 'Belum Ada', ' ', 'Amahusu', 'Ambon', '97188', '0822', 'omi@gmail.com', '1963112532.jpg'),
('196311291987031002', '', '', 'Frits M. Lekatompessy', '', 'S.Sos.', '1963-11-29', 'Latuhalat', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2003-10-01', '2008-10-01', 'Administrasi Negara', 1, 1, 1, '1987-03-01', '1988-08-01', 7, '2014-04-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', 'E.370246', 'Belum Ada', '', 'Latuhalat', 'Ambon', '97119', '9934', 'frits@gmail.com', '19631129frits.jpg'),
('196401281992032002', '', '', 'Ny. Saartje R. Molle', '', '', '1965-01-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 2, 'SMPS', '1985-10-01', '1987-10-01', '', 1, 1, 1, '1992-01-01', '1993-01-01', 7, '2013-10-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', '', 'Belum Ada', '', 'Karpan', 'Ambon', '9899', '0923', 'asd@gmail.com', '196401284.jpg'),
('196408091993031001', '132061371', '', 'W. M. E. Wattimena', 'Ir.', 'MT.', '1964-08-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1994-03-01', '1995-09-01', 8, '2001-04-01', 8, '2016-12-01', 0, '0000-00-00', '2015-03-01', 'G. 059649', 'Sudah Ada', ' ', 'Lateri', 'Ambon', '97233', '081343300053', 'Wattimena@gmail.com', '196408091 (2).jpg'),
('196410121988031003', '', '', 'E. Tawairubun', '', '', '1964-10-12', 'Warbal (Tual)', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1980-10-01', '1983-10-01', 'Mesin', 1, 1, 2, '1988-10-01', '1989-03-01', 8, '2014-04-01', 2, '0000-00-00', 0, '0000-00-00', '2015-03-01', 'E.602708', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97117', '0923942', 'ely@gmail.com', '19641012g.jpg'),
('196504301987112001', '', '', 'Ny. Deen A. Kalahatu', '', '', '1965-04-30', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1980-10-01', '1983-10-01', 'IPS', 1, 1, 1, '1987-11-01', '1988-12-01', 7, '2012-04-01', 2, '0000-00-00', 0, '0000-00-00', '2013-11-01', 'E.396449', 'Belum Ada', '', 'Galala', 'Ambon', '971772', '0928', 'ada@gmail.com', '196504302.jpg'),
('196505061987031003', '', '', 'Wilton J. S. Ririhena', '', '', '1965-05-06', 'Jakarta', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '0184-10-01', '1986-10-01', 'Mesin', 1, 1, 2, '1987-03-01', '1988-03-01', 8, '2014-10-01', 2, '0000-00-00', 0, '0000-00-00', '2016-03-01', 'E.641911', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97119', '09283', 'oyo@gmail.com', '196505062.png'),
('196505091997021001', '', '0009056707', 'J. D. C. Sihasale', 'Ir.', 'MT.', '1965-05-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2013-01-10', '2016-01-10', 'Teknik Perkapalan', 2, 1, 9, '1997-02-01', '1998-06-01', 9, '2011-04-01', 8, '2005-10-01', 0, '0000-00-00', '2015-02-01', 'G.440272', 'Sudah Ada', '786432278941000', 'Urimesing', 'Ambon', '97113', '081343156586', 'sihasale@gmail.com', '196505092.png'),
('196506221998031001', '132207801', '0022066505', 'A. Kakalimbong', 'Ir.', 'MT.', '1965-06-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '1998-03-01', '1999-06-01', 9, '2010-10-01', 8, '2010-06-01', 0, '0000-00-00', '2016-03-01', 'J. 027650', 'Sudah Ada', '786432666941000', 'batu merah', 'Ambon', '97582', '081343411811', 'Kalilombang@gmail.com', '196506222.png'),
('19650905199412001', '', '', 'Abdul. Hadi', 'Ir.', 'MT.', '1965-09-05', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2002-01-10', 'Teknik Perkapalan', 2, 1, 9, '1994-12-01', '1996-01-10', 6, '1996-10-01', 9, '2016-07-01', 0, '0000-00-00', '2016-12-01', 'G. 319229', 'Sudah Ada', '782568122941000', 'batu merah', 'Ambon', '97113', '081233232337', 'abdul@gmai.com', '19650905xx.jpg'),
('196509101993031002', '132051016', '', 'L. Wattimury', 'Ir.', 'MT.', '1965-09-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi Surabaya (ITS)', '2000-10-01', '2005-10-01', 'Teknik Sistem Perkapalan', 2, 1, 9, '1993-03-01', '1994-09-01', 10, '2010-10-01', 8, '2009-05-01', 4, '2016-10-01', '2017-03-01', 'G.059635', 'Belum Ada', ' ', 'Karang Panjang', 'Ambon', '97188', '0989287665', 'latu@gmail.com', '19650910LATUHORTE WATTIMURY (F'),
('196509131994031003', '132102916', '0013096511', 'R. H. Siahainenia', 'Ir.', 'MT.', '1965-09-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '1997-08-10', '2000-11-16', 'Teknik Kelautan Perencanaan Bangunan Lepas Pantai', 2, 1, 5, '1994-01-03', '1995-01-09', 11, '2011-01-10', 10, '2006-01-07', 0, '0000-00-00', '2018-01-03', 'G.253995', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97116', '081343007137', 'ekoadvmal@gmail.com', '1965091319pak-ecko-139x150.png'),
('196510061986012001', '', '', 'Ny. V. Pattiwael', '', '', '1965-10-06', 'Kampung Mahu', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1992-10-01', '1994-10-01', 'IPS', 1, 1, 2, '0986-11-01', '1987-11-01', 7, '2016-04-01', 2, '0000-00-00', 0, '0000-00-00', '2018-03-01', 'E.047585', 'Belum Ada', ' ', 'Poka', 'AMBON', '97117', '013', 'vin@gmail.com', '196510061321.jpg'),
('196512051992031001', '', '', 'Reggy W. Lalin', '', '', '1965-12-05', 'Maluku Tenggara', 'Laki-Laki', 'Nikah', 'Katolik', 4, 'STM', '1998-01-01', '2000-01-01', 'Listrik', 1, 1, 3, '1992-03-01', '1993-08-01', 5, '2011-04-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', ' ', 'Belum Ada', ' ', 'Poka', 'Ambon', '9877', '88234', 'regi@gmail.com', '196512052.png'),
('196601092003121001', '132306798', '0009016601', 'Samy Junus Litiloly', '', 'S.Si., M.T', '1966-01-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Universitas Indonesia', '1995-08-17', '2000-11-22', 'Teknik Elektro', 2, 1, 6, '2003-12-01', '2004-12-01', 10, '2015-04-01', 10, '2014-04-01', 0, '0000-00-00', '2017-12-01', 'L.181234', 'Sudah Ada', '786432674941000', 'Jl. Dr. Siwabessy No.4 RT.007.RW.04 Kelurahan Kuda', 'Ambon', '97116', '081210589423', 'samyjunusl@yahoo.com', '19660109SamyJL.jpg'),
('196603121999031001', '', '', 'S. G. M. Amaheka', 'Ir.', 'MT.', '1966-04-12', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2001-08-09', '2004-08-25', 'Teknik Sipil', 2, 1, 7, '1999-03-01', '2000-05-01', 7, '2008-10-01', 9, '2005-01-01', 0, '0000-00-00', '2015-03-01', 'J.081268', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97113', '0852', 'amaheka@gmail.com', '19660312191 (1).jpg'),
('196605131994031002', '', '', 'Michael Wattimena', '', '', '1966-05-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1985-08-01', '1987-08-01', 'Mesin', 1, 1, 2, '1994-03-01', '1995-09-01', 7, '2014-04-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', 'G.189954', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97889', '0918', 'wati@gmail.com', '196605137.jpg'),
('196610061996032001', '132150427', '-', 'J. Matakupan', '', 'ST. MT.', '1968-06-10', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 9, 'ITS Surabaya', '1979-06-12', '2007-07-11', 'Teknik Transportasi Kelautan', 2, 1, 5, '1995-01-12', '1997-01-06', 8, '2010-01-10', 8, '2010-01-06', 0, '0000-00-00', '2018-01-03', 'G.368223', 'Sudah Ada', '148679020941000', 'Waai', 'Ambon', '97582', '0000000000000', 'XXXXXXXXXXXXXXXX@YAHOO.COM', '196610062.png'),
('196612201994031001', '132086856', '', 'E. R. de Fretes', 'Dr. Ir.', 'MT.', '1966-12-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Institut Teknologi Surabaya (ITS)', '2008-10-01', '2014-10-01', 'Teknik Perkapalan', 2, 1, 5, '1994-03-01', '1995-10-01', 10, '2008-04-01', 10, '0000-00-00', 3, '0000-00-00', '2018-03-01', 'G.190661', 'Sudah Ada', ' 786432559941000', 'Batumeja', 'AMBON', '97117', '081357841333', 'defretesera@gmail.com', '19661220elly.jpg'),
('196706071994121001', '132125676', '', 'J. Latuny', 'Ir.', 'M.Eng. PhD', '1967-06-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1994-12-01', '1996-10-10', 9, '2008-10-01', 8, '2008-06-01', 0, '0000-00-00', '2016-12-01', 'G. 319225', 'Sudah Ada', '487728129941000', 'Kuda Mati', 'Ambon', '97113', '082239111244', 'Latuny@gmail.com', '196706072.png'),
('196707261997031002', '132173416', '', 'R. B. Luhulima', 'Dr.', 'ST. MT', '1967-07-26', 'AMBON', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-02-08', '2017-07-13', 'Teknik Perkapalan', 2, 1, 5, '1997-01-03', '1998-01-06', 9, '2011-01-04', 8, '2004-01-04', 0, '0000-00-00', '2017-01-03', 'H.026341', 'Sudah Ada', '066477290941000', 'Amahusus', 'Ambon', '97117', '081330722067', 'richardluhulima@yahoo.com', '1967072619icat].jpg'),
('196709141989032001', '', '', 'Ny. Petronela W. Pattiwael', '', '', '1967-09-14', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1985-10-01', '1987-10-01', 'Administrasi Negara', 1, 1, 2, '1989-03-01', '1990-03-01', 7, '2012-04-01', 2, '0000-00-00', 0, '0000-00-00', '2018-03-01', 'E.870149', 'Belum Ada', ' ', 'Kayu Tiga', 'Ambon', '978834', '0986', 'nelpat@gmail.com', '1967091410.jpg'),
('196801281997031003', '132173418', '0028016808', 'J. Louhenapessy', 'Ir.', 'MT.', '1968-01-28', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1997-02-01', '1998-06-01', 9, '2012-04-01', 8, '0000-00-00', 0, '0000-00-00', '2015-03-01', 'H. 026342', 'Sudah Ada', '  ', 'Batu Gajah ', 'Ambon', '97113', '085354113648', 'Louhenapessy@gmail.com', '1968012820180906_121809.jpg'),
('196804101995021001', '132125693', '', 'L. A. T. Matatula', '', 'ST.', '1968-10-04', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '1970-02-18', '2000-06-30', 'Teknik Perkapalan', 2, 1, 5, '1995-01-02', '1996-01-10', 8, '2006-01-04', 8, '2005-01-10', 0, '0000-00-00', '2017-01-02', 'G.319236', 'Sudah Ada', '1234567890', 'Latuhalat', 'Ambon', '97113', '081330137768', 'lmdeleka@gmail.com', '196804102.png'),
('196804221994031001', '132089496', '', 'G. Tanlain', '', 'ST. MT.', '1968-04-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'ITS Surabaya', '1995-01-10', '1960-01-10', 'Teknik Perkapalan', 2, 1, 9, '1994-03-01', '1995-10-01', 7, '2016-10-01', 9, '2004-01-10', 0, '0000-00-00', '2008-03-01', 'G.190662', 'Sudah Ada', '1234567760', 'Kuda Mati', 'Ambon', '97113', '0813', 'tanlei@gmail.com', '196804222.png'),
('196805141995121001', '', '', 'Ogie Pattiselano', '', '', '1968-05-14', 'Saparua', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1988-08-01', '1990-10-01', 'Mesin', 1, 1, 2, '1995-12-01', '1997-01-01', 7, '2014-10-01', 2, '0000-00-00', 0, '0000-00-00', '2016-12-01', 'G.262788', 'Belum Ada', ' ', 'Tawiri', 'Ambon', '98782', '09823', 'ogie@gmail.com', '196805142.png'),
('196807131995021001', '132128384', '', 'N. Titaheluw', 'Ir.', 'MT.', '1968-07-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1995-02-01', '1996-10-01', 10, '2009-04-01', 8, '2009-01-01', 0, '0000-00-00', '2015-03-01', 'G. 419235', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '081344747994', 'Titaheluw@gmail.com', '196807132.png'),
('196809151998031004', '', '', 'W. D. Nanlohy', '', 'ST. M.Si', '1968-09-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA ', '2003-08-15', '2006-08-23', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, '1998-03-01', '1999-06-01', 7, '2010-10-01', 9, '2010-06-01', 0, '0000-00-00', '2016-03-01', ' J.083322', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97233', '0852', 'nanlohy@gmail.com', '196809152.png'),
('196812201996031001', '', '', 'Djefri Palijama', '', '', '1968-12-20', 'Pia', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1985-10-01', '1987-08-01', 'Mesin', 1, 1, 2, '1996-03-01', '1997-05-01', 7, '0014-02-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', 'G.373014', 'Belum Ada', ' ', 'Batu Meja', 'AMBON', '97117', '0923', 'jepo@gmail.com', '196812202.png'),
('196902222002121002', '132301635', '', 'Imran Oppier', 'Ir.', 'MT.', '1969-02-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2002-12-01', '2003-12-01', 7, '2016-10-01', 9, '2016-07-01', 0, '0000-00-00', '2014-12-01', ' ', 'Sudah Ada', '077399244941000', 'Batu Gajah ', 'Ambon', '97233', '0813', 'Imran@gmail.com', '196902222.png'),
('196903301991122001', '', '', 'Esthernetty Maruanaya', '', 'SH.', '1969-03-30', 'Tala', 'Perempuan', 'Belum Nikah', 'Protestan', 8, 'Universitas Pattimura', '2002-03-01', '2007-02-01', 'Niaga', 1, 1, 3, '1991-12-01', '1993-01-08', 8, '2015-04-01', 5, '0000-00-00', 10, '2010-01-01', '2014-12-01', '', 'Belum Ada', '', 'Latuhalat', 'ambon manise', '987771', '9876554', 'nety@gmail.com', '19690330R.jpg'),
('196904191998031003', '132207805', '', 'A. L. Apituley', 'Ir.', 'MT.', '1969-04-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'ITS Surabaya', '1985-01-10', '1990-01-10', 'Teknik Perkapalan', 2, 1, 9, '1998-03-01', '1999-06-01', 6, '1999-06-01', 9, '2000-01-10', 0, '0000-00-00', '2016-03-01', 'J.083326', 'Sudah Ada', '786432484941000', 'Urimesing', 'Ambon', '97113', '081343003133', 'Apituley@gmail.com', '196904192.png'),
('196904281995032001', '132129665', '', 'S. T. A. Lekatompessy', '', 'ST., MT.', '1969-04-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2018-08-20', '2018-08-20', 'Teknik Perkapalan', 2, 1, 5, '1995-01-03', '1996-01-10', 10, '2006-01-04', 10, '2014-01-09', 0, '0000-00-00', '2019-01-03', 'G.319237', 'Sudah Ada', '1234567890', 'Urimesing', 'Ambon', '97113', '1314235435456', 'Sonja_lekatompessy@yahoo.com', '1969042819ibu-sonja.png'),
('196906191995121001', '132137973', '', 'L. M. Kelwulan', '', 'ST, MT.', '1969-12-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '1967-02-09', '2018-08-14', 'Teknik Transportasi Kelautan', 2, 1, 5, '1995-01-02', '1996-01-10', 9, '2015-01-12', 8, '2010-01-06', 0, '0000-00-00', '2017-01-12', 'G.368216', 'Sudah Ada', '786432351941000', 'Passo', 'Ambon', '97233', '0000000000000', 'XXXXXXXXXX@yahoo.com', '196906192.png'),
('196907031994121001', '312228', '', 'P. Ciptoadhi', 'Ir', 'MT', '1969-07-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2013-10-01', '2016-10-01', 'Teknik Perkapalan', 2, 1, 9, '1994-12-01', '1996-10-01', 9, '2008-10-01', 8, '2017-10-01', 0, '0000-00-00', '2016-12-01', 'G.31228', 'Sudah Ada', '148679509941000', 'Waihaong', 'Ambon', '97232', '081334753005', 'ciptoadi@gmai.com', '196907032.png'),
('196907050998031002', '', '', 'E. B. Johannes', '', 'ST. MT.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1999-08-15', '2004-08-08', 'Teknik Perkapalan', 2, 1, 5, '1998-01-03', '1999-01-06', 6, '1999-01-06', 9, '2000-01-10', 0, '0000-00-00', '2016-01-04', 'J.083324', 'Sudah Ada', '786432427941000', 'Batu Gajah', 'Ambon', '97211', '0852', 'joannes@gmail.com', '196907058.jpg'),
('196907251997021002', '132168170', '', 'A. Simanjuntak', 'Ir.', 'MT.', '1969-07-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1997-02-01', '1998-06-01', 10, '2010-04-01', 8, '2009-09-01', 0, '0000-00-00', '2015-02-01', 'H. 026338', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081343288048', 'simanjuntak@gmail.com', '196907252.png'),
('196908051994121001', '132125693', '', 'E. Matatula', '', 'ST, MT.', '1969-08-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2004-08-05', '2010-09-07', 'Teknik Transportasi Kelautan', 2, 1, 5, '1994-12-01', '1996-10-01', 9, '2008-10-01', 8, '2007-01-01', 0, '0000-00-00', '2016-12-01', 'G.319227', 'Sudah Ada', '774954747941000', 'Kuda Mati', 'Ambon', '97113', '07852', 'edwinmatatula@gmail.com', '196908052.png'),
('196908161998031001', '132207800', '', 'P. Th. Berhitu', 'Dr.', 'ST. MT.', '1969-08-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-08-09', '2017-12-27', 'Teknik Bangunan Lepas Pantai', 2, 1, 5, '1998-01-03', '1999-01-06', 10, '0000-00-00', 10, '1998-01-03', 0, '0000-00-00', '0000-00-00', 'J.083323', 'Sudah Ada', '077397057941000', 'Talake', 'Ambon', '97211', '085197361204', 'piter_berhitu@gmail.com', '196908162.png'),
('196909151997032001', '132173416', '', 'M. Manuputty', '', 'ST. M.Kes', '1969-09-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2005-08-15', '2007-08-13', 'Kesehatan', 2, 1, 5, '1997-01-03', '1998-01-06', 9, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', 'J.083319', 'Sudah Ada', '196909151997032001', 'kudamati', 'Ambon', '97233', '081247024449', 'mona@yahoo.com', '196909152.png'),
('196909231998031002', '132207804', '', 'P. Kabaena', '', 'ST.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1993-07-06', '2004-07-08', 'Teknik Perkapalan', 2, 1, 5, '1998-01-03', '1999-01-06', 6, '1999-01-06', 9, '2000-01-10', 0, '0000-00-00', '2010-01-03', 'J.083325', 'Sudah Ada', '09875423', 'Poka', 'Ambon', '97233', '0852', 'kabaena@yahoo.com', '196909232.png'),
('197005051999031003', '132240518', '0005057005', 'Billy Jhones Camerling', '', 'ST.,MT', '1970-05-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2001-03-01', '2003-08-08', 'Teknik Industri', 2, 1, 10, '1999-03-01', '2001-01-01', 8, '2010-04-01', 8, '2017-03-01', 0, '0000-00-00', '2015-03-01', 'K.013624', 'Sudah Ada', '786153312941000', 'Air Salobar ', 'Ambon', '97593', '081331434480', 'billi@yahoo.com', '197005052.png'),
('197005231999031001', '132231731', '0023057004', 'Nil Edwin Maitimu', '', 'ST.,MT', '1970-05-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2001-07-01', '2004-08-01', 'Teknik Industri', 2, 1, 10, '1999-03-01', '2000-05-01', 9, '2011-04-01', 8, '0000-00-00', 0, '0000-00-00', '2015-03-01', 'I.016964', 'Sudah Ada', '077396976941000', 'Jl. Sisingamangaraja Passo RT.003/RW001', 'Ambon', '97593', '085243215515', 'niledwinmaitimu@gmail.com', '197005232.png'),
('197007231998031001', '132207748', '', 'D. S. Pelupessy', 'Ir.', 'MT.', '1970-07-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2013-01-10', '2016-01-10', 'Teknik Perkapalan', 2, 1, 9, '1998-03-01', '1999-06-01', 9, '2013-10-01', 8, '2013-04-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', '12345660', 'Kuda Mati', 'Ambon', '97113', '0813', 'pelupessy@gmail.com', '197007232.png'),
('197008141999031002', '132232270', '', 'G. R. Latuhihin', '', 'ST, MT.', '1970-08-14', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '1999-08-07', '2003-01-08', 'Teknik Perkapalan', 2, 1, 5, '1999-01-03', '2000-01-05', 7, '2010-01-10', 9, '2010-01-06', 0, '0000-00-00', '2019-01-03', ' ', 'Sudah Ada', '148679160941000', 'Passo', 'Ambon', '97233', '0852546852', 'icat@gmail.com', '197008142.png'),
('197109251998032001', '', '', 'G. S. Norimarna', '', 'ST. MS.Eng', '1971-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, ' ', '2006-08-15', '2010-08-17', ' ', 2, 1, 9, '1998-03-01', '1999-06-01', 6, '1999-06-01', 9, '2010-10-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'Norimarna@gmail.com', '1971092520180906_121728.jpg'),
('19711120200604100', '132319089', '', 'Nasir Suruali', 'Ir.', 'MT.', '1971-11-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '2006-04-01', '2007-05-01', 10, '2015-04-01', 8, '2014-12-01', 0, '0000-00-00', '2016-04-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97582', '085243625095', 'Nasir@gmail.com', '197111202.png'),
('197112131999032001', '132231730', '0013127106', ' Ariviana. Lientje. Kakerissa', '', 'ST, MT. IPM', '1971-12-13', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November Surabaya', '2002-09-01', '2004-01-28', 'Teknik Industri', 2, 1, 10, '1999-03-01', '2000-05-01', 10, '2011-10-01', 8, '2011-06-01', 0, '0000-00-00', '2017-03-01', ' ', 'Sudah Ada', ' 077398469941000', 'OSM', 'Ambon', '97116', '081224915000', 'vianakakerissa71@gmail.co', '197112131.jpg'),
('197201241995121002', '', '', 'Jason M. S. Pesulima', '', '', '1972-01-24', 'Amahusu', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1990-10-01', '1992-10-01', 'Mesin', 1, 1, 2, '1995-12-01', '1997-03-01', 6, '2014-04-01', 6, '2010-01-01', 0, '0000-00-00', '2016-12-01', 'D.054292', 'Belum Ada', ' ', 'Poka', 'AMBON', '97117', '023', 'jasonsoni@gmail.com', '197201242.png'),
('197202011997021001', '', '', 'F. Tanahitumessing', '', 'ST', '1972-02-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2003-10-01', '2007-10-01', 'Teknik Mesin', 1, 1, 2, '1997-02-01', '1998-04-01', 7, '2013-10-01', 6, '2010-02-01', 0, '0000-00-00', '2018-02-01', 'G.438066', 'Belum Ada', ' ', 'Batu Gajah', 'Ambon', '97882', '089283', 'angky@gmail.com', '197202011 (9).jpg'),
('197207111998031002', '', '', 'Isak Aponno', '', 'ST', '1972-07-11', 'Porto', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2003-02-01', '2007-01-01', 'Teknik', 1, 1, 2, '1998-03-01', '1999-06-01', 8, '2013-10-01', 6, '0000-00-00', 0, '0000-00-00', '2018-03-01', ' I.029040', 'Belum Ada', ' ', 'Passo', 'Ambon', '98133', '09813', 'cak@gmail.com', '197207112.png'),
('197208092000031001', '132262173', '0009087211', 'W. M. Rumaherang', 'Ir.', 'MSc. PhD.', '1972-08-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '2000-03-01', '2001-05-01', 9, '2016-10-01', 8, '2015-12-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081291724514', 'Rumaherang@gmail.com', '197208092.png'),
('197208152000121001', '132288571', '', 'S. I. Latuconsina', 'Ir.', 'MT.', '1972-02-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2000-12-01', '2001-12-01', 6, '2000-12-01', 9, '2007-01-01', 0, '0000-00-00', '2014-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97582', '085231314949', 'Latuconsina@gmai.com', '197208158is.jpg'),
('197211172000031001', '132260996', '', 'Alfredo Tutuhatunewa', '', 'ST.,MT', '1972-11-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2001-03-08', '2003-05-02', 'Teknik Industri', 2, 1, 10, '2000-03-01', '2001-12-01', 9, '2011-04-01', 8, '2009-06-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', '1234', ' karang panjang', 'Ambon', '97593', '081343', 'alfredotutuhatunewa@yahoo.com', '197211172.png'),
('197307211995121001', '', '', 'Chaleb M. L. Wattimena', '', '', '1973-07-21', 'Urimessing', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1990-10-01', '1992-10-01', 'Mesin', 1, 1, 2, '1995-12-01', '1997-01-01', 7, '2014-10-01', 7, '0000-00-00', 0, '0000-00-00', '2019-03-01', 'G.262790', 'Belum Ada', ' ', 'Siwang', 'AMBON', '97117', '0921', 'kaleb@gmail.com', '19730721cah.jpg'),
('197307251999032001', '132204636', '', 'F. Gaspersz', '', 'ST, MT.', '1973-07-25', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-21', '2003-08-31', 'Teknologi Kelautan', 2, 1, 5, '1999-03-01', '2000-05-01', 9, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', ' ', 'Sudah Ada', '774954721941000', 'Batu Gajah ', 'Ambon', '97128', '0813330362525', 'fellagsp73@gmail.com', '197307252.png'),
('19730729200003001', '132260995', '', 'D. R. Lekatompessy', 'Dr.', 'ST, MT.', '1973-07-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-08-17', '2018-08-15', 'Teknik Perkapalan', 2, 1, 5, '2000-03-01', '2001-12-01', 9, '2011-04-01', 8, '2010-06-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'deby@gmail.com', '197307292.png'),
('197309062002121001', '132301633', '', 'Abdul Djabar Tianotak', '', 'ST, MSi.', '1973-06-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Universitas Pattimura Ambon', '2004-08-05', '2007-08-16', 'Perikanan dan Ilmu Kelautan', 2, 1, 5, '2000-12-01', '2001-12-01', 7, '2016-12-01', 8, '2016-07-01', 0, '0000-00-00', '2018-12-01', ' ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97233', '08452', 'djabar@gmail.com', '197309062.png'),
('197403052000032001', '', '', 'Nn. M. L. Pattiapon,', '', 'ST.', '1974-03-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '1982-08-15', '1984-08-25', 'Teknik Industri', 2, 1, 10, '2000-03-01', '2001-05-01', 8, '2013-04-01', 8, '2011-10-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97116', '0852', 'pattiapon@gmail.com', '197403052.png'),
('197407132003122001', '132303296', '', 'Warniyati', 'Ir.', 'MT.', '1974-07-13', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik sipil', 2, 1, 7, '2003-12-01', '2004-12-01', 8, '2015-04-01', 8, '2012-01-02', 0, '0000-00-00', '2015-12-01', ' ', 'Sudah Ada', '786432344941000', 'batu merah', 'Ambon', '97233', '0813', 'Warniaty@gmail.com', '197407132.png'),
('197409062005011003', '', '', 'Stevianus Titaley', '', 'ST, MSi.', '1974-09-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2006-08-05', '2009-08-12', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2012-04-01', 8, '2008-10-01', 0, '0000-00-00', '2015-01-01', '  ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97116', '0852', 'stecianus@gmail.com', '197409062.png'),
('197412162002122001', '', '', 'Novitha L. T. Thenu', '', 'ST. MT.', '1974-10-16', 'amobn', 'Perempuan', 'Nikah', '--Pilih--', 0, 'ITS Surabaya', '2005-08-17', '2010-08-31', 'Sistem Perkapalan', 2, 1, 9, '2002-12-01', '6768-12-08', 8, '2010-04-01', 8, '2009-08-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'passo', 'Ambon', '97233', '081343199719', 'novitha@gmail.com', '197412162.png'),
('197602242010121001', '', '', 'Stani Ferdinandus', '', '', '1976-02-24', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 4, 'SMEA', '1987-10-01', '1990-10-01', 'Administrasi Negara', 1, 1, 2, '2010-12-01', '2013-06-01', 3, '2013-06-01', 0, '0000-00-00', 0, '0000-00-00', '2018-12-01', ' ', 'Belum Ada', ' ', 'Wainitu', 'AMBON', '97117', '938284', 'stani@gmail.com', '197602242.png'),
('197608192001122001', '132297214', '', 'R. P. Soumokil', '', 'ST, MSi.', '1976-08-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2001-08-25', '2004-08-29', 'Teknik Transportasi Kelautan', 2, 1, 5, '2001-12-01', '2003-01-01', 7, '2010-04-01', 9, '2009-08-01', 0, '0000-00-00', '2017-12-01', ' ', 'Sudah Ada', '786432310941000', 'Batu Gajah ', 'Ambon', '97233', '0852', 'rutha@gmail.com', '197608192.png'),
('197705022002121004', '', '', 'Benjamin G. Tentua', '', 'ST.MT.', '1977-05-02', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2008-08-26', '2011-08-25', 'Mesin', 2, 1, 6, '2002-12-01', '2005-12-01', 8, '2012-04-01', 8, '2011-10-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'benjamin@gmail.com', '197705021 (11).jpg'),
('197804062005012001', '', '', 'Wilma Latuny', 'Dr.', 'ST. MSi.', '1978-04-06', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-08-04', '2016-08-15', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2004-04-01', 8, '2009-06-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', '774954689941000', 'Batu Gajah ', 'Ambon', '97116', '08452', 'wilma@gmail.com', '197804062.png'),
('197807272002121001', '', '', 'Johan M. Tupan', '', 'ST. MT.', '1978-07-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2002-08-12', '2018-09-05', 'Teknik Industri', 2, 1, 10, '2002-12-01', '2004-01-01', 9, '2013-04-01', 8, '2009-06-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '0852', 'pelupessy@gmail.com', '197807272.png'),
('197901112008121002', '', '', 'Arthur. Y. Leiwakabessy', 'Ir.', 'MT.', '1979-01-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '2008-12-01', '2010-06-01', 8, '2017-10-01', 8, '2014-04-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97582', '082141676561', 'Arthur@gmail.com', '197901112.png'),
('197905062005012001', '', '', 'Nurmiyati Kellian', '', 'ST, MT.', '1979-05-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2008-08-15', '2011-08-27', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 6, '2006-02-01', 8, '2015-01-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97116', '0852', 'nurmiaty@gmail.com', '197905062.png'),
('197906012005011002', '', '', 'Victor O. Lawalata', '', 'ST, MT.', '1979-06-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-08-25', '0000-00-00', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2015-01-01', 10, '2013-01-04', 0, '0000-00-00', '2017-01-01', ' ', 'Sudah Ada', ' ', 'Poka', 'Ambon', '97113', '0852', 'viktor@gmail.com', '197906012.png'),
('197907302003121004', '', '', 'Hanok Mandaku', '', 'ST, MT.', '1979-07-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-20', '2003-08-15', 'Teknik Industri', 2, 1, 10, '2003-12-01', '2005-01-01', 9, '2015-10-01', 8, '2013-01-02', 0, '0000-00-00', '2015-10-01', ' ', 'Sudah Ada', '786432468941000', 'Batu Gajah ', 'Ambon', '97116', '0852', 'hanok@gamil.com', '197907302.png'),
('197908042005012004', '', '', 'Olivia M. de Fretes', '', 'ST, M.Eng', '1979-08-04', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2004-08-25', '2008-08-23', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 8, '2012-04-01', 8, '2012-04-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'olivia@gmail.com', '197908042.png'),
('197912292005011002', '', '', 'Daniel B Pailin', '', 'ST, MT.', '1979-12-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-08-25', '2017-08-12', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2014-04-01', 8, '2013-04-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', '077397792941000', 'Batu Gajah ', 'Ambon', '98773', '0852', 'daniel@gmail.com', '197912292.png'),
('198002082005012003', '', '', 'Annalyse Picauly', '', 'SE.', '1980-02-08', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1999-10-01', '2004-10-01', 'Ekonomi', 1, 1, 1, '2005-01-01', '2006-02-01', 9, '2017-04-01', 2, '0000-00-00', 8, '2010-01-01', '2017-01-01', '', 'Belum Ada', '', 'Passo', 'Ambon', '978892', '092', 'analis@gmail.com', '198002085.jpg'),
('198102212005012001', '', '', 'Aminah Soleman', '', 'ST, MT.', '1981-02-21', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2006-08-25', '2009-08-26', 'Teknik Industri', 2, 1, 10, '2005-02-01', '2006-03-01', 8, '2013-04-01', 8, '2012-07-01', 0, '0000-00-00', '2015-02-01', ' ', 'Sudah Ada', 'P077397784941000', 'batu merah', 'Ambon', '97113', '0852', 'aminah@gmail.com', '198102212.png'),
('198107182008121003', '', '', 'Richard A. de Fretes', '', 'ST', '1981-07-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Universitas Pattimura Ambon', '2001-08-25', '2004-08-29', 'Teknik Industri', 2, 1, 10, '2008-12-01', '2010-06-01', 7, '2006-04-01', 9, '2015-06-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Urimesing', 'Ambon', '97128', '0852', 'richard@gmail.com', '198107182.png'),
('198209292010121003', '13099887', 'tes nidn', 'Victor Eric Pattiradjawane', '', 'S. Kom.', '1982-09-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Untag Surabaya', '2000-10-01', '2015-12-01', 'Teknik Informatika', 1, 1, 4, '2010-12-01', '2012-08-01', 8, '2017-08-01', 2, '0000-00-00', 9, '2015-08-01', '2017-08-01', 'E.370251', 'Belum Ada', '12345.0232.123', 'Ambon', 'Ambon', '97117', '09182833', 'devictoreric@yahoo.com', '1982092920vicjas.png'),
('198504052015041002', '', '', 'Felix Taihuttu', 'Ir.', 'MT.', '1985-04-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2015-04-01', '2016-04-01', 7, '2017-01-01', 8, '2016-01-01', 0, '0000-00-00', '2017-08-01', ' ', 'Sudah Ada', '738520683941000', 'passo', 'Ambon', '97116', '081227252045', 'Felix@gmail.com', '198504052.png'),
('198506182009122005', '', '', 'Imelda Ch. Poceratu', '', 'M.Teol', '1985-06-18', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Univeritas Kristen Indonesia', '2010-08-20', '2014-08-25', 'Teologi', 2, 1, 10, '2009-12-01', '2011-08-01', 8, '2016-04-01', 8, '2015-06-01', 0, '0000-00-00', '2015-12-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'imelda@gmail.com', '19850618cd.jpg'),
('198507112014041003', '', '', 'Mansye. Ronal Ayal', 'Ir.', 'MT.', '1985-07-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2014-04-01', '2015-05-01', 7, '2014-04-01', 9, '2016-07-01', 0, '0000-00-00', '2016-04-01', ' ', 'Sudah Ada', ' ', 'Urimesing', 'Ambon', '97582', '085220204287', 'Mansye@gmail.com', '198507112.png'),
('198709022015042001', '', '', 'Andiah Nurhaeny', 'Ir.', 'MT.', '1987-09-02', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '1012-01-10', 'teknik perencanaan wilayah dan kota', 2, 1, 11, '2015-04-01', '2017-01-01', 7, '2017-04-01', 9, '2017-04-01', 0, '0000-00-00', '2017-08-01', '  ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081321500757', 'Adhinda@gmail.com', '198709022.png'),
('19900101', '', '', 'Billy P J Manuhutu', '', 'ST.', '1993-04-15', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 8, 'UNIVERSITAS PATTIMURA', '2011-10-08', '2017-08-10', 'Teknik Perkapalan', 4, 1, 1, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', ' ', 'Belum Ada', ' ', 'Poka', 'Ambon', '98773', '085211384519', 'billy_manuhutu@yahoo.com', '199001011.jpg'),
('199210042010121004', '', '', 'Jason Rendy Joris', '', '', '1992-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '2007-10-01', '2009-10-01', 'Mesin', 1, 1, 1, '2010-10-01', '2012-08-01', 3, '2012-08-01', 0, '0000-00-00', 0, '0000-00-00', '2017-12-01', '00', 'Sudah Ada', '683943088941000', 'Galala', 'Ambon', '971992', '085243194427', 'jrj_04@yahoo.com', '19921004jas.jpg'),
('31031991', '', '', 'Y. Rawulunubun', '', 'ST', '1991-03-31', 'Tual', 'Laki-Laki', 'Belum Nikah', 'Katolik', 8, 'Universitas Pattimura', '2011-08-15', '2017-10-12', 'Teknik Perkapalan', 4, 1, 5, '2000-01-05', '2006-02-05', 1, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', ' ', 'Sudah Ada', ' ', 'Rumahtiga', 'Ambon', '97233', '085197260431', 'yogazrawul@yahoo.com', '310319912.png');

-- --------------------------------------------------------

--
-- Table structure for table `dtseminar`
--

CREATE TABLE `dtseminar` (
  `id_dtseminar` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `penyelenggara` varchar(50) NOT NULL,
  `tahun` date NOT NULL,
  `kedudukan` varchar(50) NOT NULL,
  `file` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dtskp`
--

CREATE TABLE `dtskp` (
  `id_skp` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `tahun_skp` year NOT NULL,
  `nilai_skp` float NOT NULL,
  `nilai_perilaku` varchar(10) NOT NULL,
  `nilai_prestasi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dtuser`
--

CREATE TABLE `dtuser` (
  `iduser` int NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jab_fungsional`
--

CREATE TABLE `jab_fungsional` (
  `id_jabfungsional` bigint NOT NULL,
  `nip` char(18) NOT NULL,
  `nama_jabfungsional` varchar(30) NOT NULL,
  `angka_kredit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lapgol`
--

CREATE TABLE `lapgol` (
  `nip` char(18) NOT NULL,
  `gol_akhir` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lapgol`
--

INSERT INTO `lapgol` (`nip`, `gol_akhir`) VALUES
('1010', 0),
('195312101980031006', 11),
('195401301980031007', 8),
('195603291977031001', 8),
('195703211980031003', 9),
('195703231983031003', 9),
('195711151987032002', 10),
('195801101986031002', 11),
('195904031987031002', 8),
('195908251986101001', 12),
('196009251988032001', 11),
('196010271990031004', 11),
('196011111981031004', 6),
('196011231991031001', 8),
('196105271997002100', 8),
('196203031987032003', 7),
('196208131989031003', 12),
('196208212014091002', 2),
('196303171986101001', 9),
('196308301994031003', 10),
('196309251986031002', 9),
('196311251984032001', 7),
('196311291987031002', 7),
('196401281992032002', 7),
('196408091993031001', 8),
('196410121988031003', 8),
('196504301987112001', 7),
('196505061987031003', 8),
('196505091997021001', 9),
('196506221998031001', 9),
('19650905199412001', 6),
('196509101993031002', 10),
('196509131994031003', 11),
('196510061986012001', 7),
('196512051992031001', 5),
('196601092003121001', 10),
('196603121999031001', 7),
('196605131994031002', 7),
('196610061996032001', 8),
('196612201994031001', 10),
('196706071994121001', 9),
('196707261997031002', 9),
('196709141989032001', 7),
('196801281997031003', 9),
('196804101995021001', 8),
('196804221994031001', 7),
('196805141995121001', 7),
('196807131995021001', 10),
('196809151998031004', 7),
('196812201996031001', 7),
('196902222002121002', 7),
('196903301991122001', 8),
('196904191998031003', 6),
('196904281995032001', 10),
('196906191995121001', 9),
('196907031994121001', 9),
('196907050998031002', 6),
('196907251997021002', 10),
('196908051994121001', 9),
('196909231998031002', 6),
('197005051999031003', 8),
('197005231999031001', 9),
('197007231998031001', 9),
('197008141999031002', 7),
('197109251998032001', 6),
('19711120200604100', 10),
('197112131999032001', 10),
('197201241995121002', 6),
('197202011997021001', 7),
('197207111998031002', 8),
('197208092000031001', 9),
('197208152000121001', 6),
('197211172000031001', 9),
('197307211995121001', 7),
('19730729200003001', 9),
('197309062002121001', 7),
('197403052000032001', 8),
('197407132003122001', 8),
('197409062005011003', 9),
('197412162002122001', 8),
('197602242010121001', 3),
('197608192001122001', 7),
('197705022002121004', 8),
('197804062005012001', 9),
('197807272002121001', 9),
('197901112008121002', 8),
('197905062005012001', 6),
('197906012005011002', 9),
('197907302003121004', 9),
('197908042005012004', 8),
('197912292005011002', 9),
('198002082005012003', 9),
('198102212005012001', 8),
('198107182008121003', 7),
('198209292010121003', 8),
('198504052015041002', 7),
('198506182009122005', 8),
('198507112014041003', 7),
('198709022015042001', 7),
('199210042010121004', 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` bigint NOT NULL,
  `nama` varchar(30) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `level` int DEFAULT '2',
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `nama`, `user`, `pass`, `level`, `active`) VALUES
(1, 'Administrator', 'admin', '4c60bb29ec9b4d5b931dae1250c24760', 1, 'Y'),
(48, 'Simon Talakua', '1010', '1e48c4420b7073bc11916c6c1de226bb', 2, 'Y'),
(49, 'D. Tumanan', '195303061979031003', '17eb491e352f6e6c084942d126d9e12e', 2, 'Y'),
(50, 'J. Liklikwatil', '195308031981031003', 'f5f592cbf007a94e72deec8ab2d96745', 2, 'Y'),
(51, 'Ilela Daud', '195312101980031006', 'ae7b3782405336e52bdf2880f927043c', 2, 'Y'),
(52, 'A. R. C. Tetelepta', '195401301980031007', '8bfa1f8ffb38a28f4424d8a2361f70f7', 2, 'Y'),
(53, 'P.W. Tetelepta', '195603291977031001', '6613e4c602e5911db39adbba0a7039c9', 2, 'Y'),
(54, 'B. Jamlean', '195703211980031003', 'fc3386ab5564ffc1b9dee27d8453c51f', 2, 'Y'),
(55, 'B. Wattimury', '195703231983031003', '3eedefdebbf9f3d7c7333d589467468e', 2, 'Y'),
(56, 'Ny. H. C. Ririmasse', '195711151987032002', '9440f735ea52c005ed7469701ef89d3a', 2, 'Y'),
(57, 'M. F. Noya', '195801101986031002', 'c82c622af0f6edd112d9e75f13a4a644', 2, 'Y'),
(58, 'E. J. de Lima', '195904031987031002', '27c59e9eb2bd0bed9d4938a9b9f2f474', 2, 'Y'),
(59, 'M. Tukan', '195908251986101001', 'e66ef96122342812417aeff8904c0cc3', 2, 'Y'),
(60, 'Ny. Y. L. Sitanala', '196009251988032001', '23c78b93c439bcacf68cebea98d28484', 2, 'Y'),
(61, 'O. Metekohy', '196010271990031004', 'e62a069383ac1ef7e9ee1c46a5ae3912', 2, 'Y'),
(62, 'Petrus F. Nikijuluw', '196011111981031004', 'f92e1e97bc76628ec5937a731cbb6b8f', 2, 'Y'),
(63, 'R. Ufie', '196011231991031001', '320cb1edc440a97b016fb2edaada49e7', 2, 'Y'),
(64, 'Ph. Wuysang', '196105271997002100', '7bb5146d612ef6ae2738cbe05c49eb7d', 2, 'Y'),
(65, 'Ny. Petronela Latupapua', '196203031987032003', '30015f5a54f1266afca3c855babb30d1', 2, 'Y'),
(66, 'W. R. Hetharia', '196208131989031003', 'f4687a65de42f99dc033e9706ba15100', 2, 'Y'),
(67, 'Agustinus Supusepa', '196208212014091002', 'f48a92bf59a7adf1d3e8f3d74dd4ddb4', 2, 'Y'),
(68, 'J. Tupan', '196303171986101001', '51daf867db5f5ea29ed06e32e2c55d02', 2, 'Y'),
(69, 'H. S. Lainsamputty', '196308301994031003', '5e87530c4803e0499c0d1bc4fd92f999', 2, 'Y'),
(70, 'H. Tetelepta', '196309251986031002', '96bff8e7869031c635cb4fba843c4bf4', 2, 'Y'),
(71, 'Ny. Naomi Maitimu', '196311251984032001', '66a9261af6f51db0ff883740fc948a4d', 2, 'Y'),
(72, 'Frits M. Lekatompessy', '196311291987031002', 'ae2b3e35e3b67090621e22639c176a07', 2, 'Y'),
(73, 'Ny. Saartje R. Molle', '196401281992032002', '161654b924c2975dd841e2889ee5df87', 2, 'Y'),
(74, 'W. M. E. Wattimena', '196408091993031001', '14d3fd8e3441a72f5003b35e971ef165', 2, 'Y'),
(75, 'E. Tawairubun', '196410121988031003', '1ca1c5f71ae99185f9c960bf943bfbdd', 2, 'Y'),
(76, 'Ny. Deen A. Kalahatu', '196504301987112001', 'b1bbf9df2e073310d9c36670be302920', 2, 'Y'),
(77, 'Wilton J. S. Ririhena', '196505061987031003', '0bce05030e233781e7c0910d78e3e0fe', 2, 'Y'),
(78, 'J. D. C. Sihasale', '196505091997021001', 'ece57153eeb9e2792b1b7def812f8c46', 2, 'Y'),
(79, 'A. Kakalimbong', '196506221998031001', 'b96d51dcfe7998a03e573594b80f917e', 2, 'Y'),
(80, 'Abdul. Hadi', '19650905199412001', '2cdcaca776409f043ff3048122e216de', 2, 'Y'),
(81, 'L. Wattimury', '196509101993031002', '39ffac997798be478accdd4702a011cb', 2, 'Y'),
(82, 'R. H. Siahainenia', '196509131994031003', '47938ba8137e2064670f4ea29ed79055', 2, 'Y'),
(83, 'Ny. V. Pattiwael', '196510061986012001', '8e3700cf97ae11357a47a0ca6233e8b4', 2, 'Y'),
(84, 'Reggy W. Lalin', '196512051992031001', '0d153d00f5b40c5ccf10889b81e8f057', 2, 'Y'),
(85, 'Samy Junus Litiloly', '196601092003121001', '8abf09ce98b65914a4a4c977a6b51ef0', 2, 'Y'),
(86, 'S. G. M. Amaheka', '196603121999031001', '60a7d6e1982e858fdd6f0aadb55cb79e', 2, 'Y'),
(87, 'Michael Wattimena', '196605131994031002', 'a2de2ab50b8ff0efdd97b759e698b8f5', 2, 'Y'),
(88, 'J. Matakupan', '196610061996032001', '6616d8326a798f3925066f9fd920db4c', 2, 'Y'),
(89, 'E. R. de Fretes', '196612201994031001', 'ff6c52b384e89b0ac3664459eb738e1e', 2, 'Y'),
(90, 'J. Latuny', '196706071994121001', '170f1e35e3e965e85b66929941b1b899', 2, 'Y'),
(91, 'R. B. Luhulima', '196707261997031002', '22b745571b1c174d1989b48a2d812453', 2, 'Y'),
(92, 'Ny. Petronela W. Pattiwael', '196709141989032001', '6821e0a040778880cbc7a433d7bb2f75', 2, 'Y'),
(93, 'J. Louhenapessy', '196801281997031003', '99bec531e518b299b1d971b60ca6d4ad', 2, 'Y'),
(94, 'L. A. T. Matatula', '196804101995021001', 'a66ef23450c0c1c6e80c77f139322da0', 2, 'Y'),
(95, 'G. Tanlain', '196804221994031001', 'e18dce1af6af995ed3bc1bfb1865d9ff', 2, 'Y'),
(96, 'Ogie Pattiselano', '196805141995121001', 'd6eff119b79b0fe2ceb23435b94bf3c6', 2, 'Y'),
(97, 'N. Titaheluw', '196807131995021001', '0bc2cc14c8dbded4900162f130d750b4', 2, 'Y'),
(98, 'W. D. Nanlohy', '196809151998031004', '988e3cf63fdeb4635c9466fca7f442ee', 2, 'Y'),
(99, 'Djefri Palijama', '196812201996031001', '3ea08a7342461ab3cecd4045c34c3b19', 2, 'Y'),
(100, 'Imran Oppier', '196902222002121002', '5f83978b7f117e2f27380c71e5de45a0', 2, 'Y'),
(101, 'Esthernetty Maruanaya', '196903301991122001', 'bb3ae2871944b6cfb6e9f0f18246bd59', 2, 'Y'),
(102, 'A. L. Apituley', '196904191998031003', '90df0a43367e03f825027950c7df4bee', 2, 'Y'),
(103, 'S. T. A. Lekatompessy', '196904281995032001', '3e7d9ef88bb7bdac3e6ba4e138d53caf', 2, 'Y'),
(104, 'L. M. Kelwulan', '196906191995121001', '683e1b318feb8c5cef5b659ffd74fbf6', 2, 'Y'),
(105, 'P. Ciptoadhi', '196907031994121001', 'ad8f28af2c65cb6ac9027e9d24b8f729', 2, 'Y'),
(106, 'E. B. Johannes', '196907050998031002', '2a3c34e0bdba32bb59c6f2d7cc864a13', 2, 'Y'),
(107, 'A. Simanjuntak', '196907251997021002', '92ebe0d1d8f8317becae54d6509a1963', 2, 'Y'),
(108, 'E. Matatula', '196908051994121001', 'd1994bf2d309fd58770bb4fb2d1013e3', 2, 'Y'),
(109, 'P. Th. Berhitu', '196908161998031001', '7cd464270839c71327a978f95acb1ffe', 2, 'Y'),
(110, 'M. Manuputty', '196909151997032001', '6e08a26f928aaaf5607998da1a1e3800', 2, 'Y'),
(111, 'P. Kabaena', '196909231998031002', 'bd966ebe57e30f5b93357bca5044c4ad', 2, 'Y'),
(112, 'Billy Jhones Camerling', '197005051999031003', 'e75bcb129c07b9baab7732013ec59c6c', 2, 'Y'),
(113, 'Nil Edwin Maitimu', '197005231999031001', 'a9e5fde499840c29ef43af264151efd5', 2, 'Y'),
(114, 'D. S. Pelupessy', '197007231998031001', '5b624c28abbd13c7da4e78220eca925d', 2, 'Y'),
(115, 'G. R. Latuhihin', '197008141999031002', '8b859d2e21cf7764944ca6a6f9b94b83', 2, 'Y'),
(116, 'G. S. Norimarna', '197109251998032001', '65ff98c3579777ee538d2e80b38c9195', 2, 'Y'),
(117, 'Nasir Suruali', '19711120200604100', '5eff142e68a849105d24e83d65d62632', 2, 'Y'),
(118, ' Ariviana. Lientje. Kakerissa', '197112131999032001', '713ddbabdac072eb42928ed1dd515dd4', 2, 'Y'),
(119, 'Jason M. S. Pesulima', '197201241995121002', '280665bda786a3396b42c440695db09b', 2, 'Y'),
(120, 'F. Tanahitumessing', '197202011997021001', 'a55c1f244abbbaa9fc1fac998140d249', 2, 'Y'),
(121, 'Isak Aponno', '197207111998031002', 'f315922d3beb97f8e818cbe99fb9dd96', 2, 'Y'),
(122, 'W. M. Rumaherang', '197208092000031001', 'e5d1ce153bcbd186817a3c31b023d2f6', 2, 'Y'),
(123, 'S. I. Latuconsina', '197208152000121001', '9ec32b414d599419e0d18a1f30d0c7c8', 2, 'Y'),
(124, 'Alfredo Tutuhatunewa', '197211172000031001', 'd3275b27c08be60bc32e98ea9813e1e8', 2, 'Y'),
(125, 'Chaleb M. L. Wattimena', '197307211995121001', 'c433163f8ff87bd3aa2cc5ea00fd9472', 2, 'Y'),
(126, 'F. Gaspersz', '197307251999032001', '1a6bb2987995a1fb6e306cc06af8ba7c', 2, 'Y'),
(127, 'D. R. Lekatompessy', '19730729200003001', 'cbd20304fea92b9e4713b110cfac45fc', 2, 'Y'),
(128, 'Abdul Djabar Tianotak', '197309062002121001', 'ee6e08d57322d8f275bce40dd9abf51b', 2, 'Y'),
(129, 'Nn. M. L. Pattiapon,', '197403052000032001', 'e86a336d29ad3d732cf6b064393420c3', 2, 'Y'),
(130, 'Warniyati', '197407132003122001', '925928d0731b735d9f88423dce1840e2', 2, 'Y'),
(131, 'Stevianus Titaley', '197409062005011003', 'e3589fc599b53fe640b8967b4526f275', 2, 'Y'),
(132, 'Novitha L. T. Thenu', '197412162002122001', '88fd354f0b74946d5abcf443d7c4b35e', 2, 'Y'),
(133, 'Stani Ferdinandus', '197602242010121001', 'bb7b9c30f41ae95ef2d13a9369a929f6', 2, 'Y'),
(134, 'R. P. Soumokil', '197608192001122001', '619bfdb157895790f7fbd7f5aa79f1fe', 2, 'Y'),
(135, 'Benjamin G. Tentua', '197705022002121004', '337dafd7303b3efc26f83a52a8bf8573', 2, 'Y'),
(136, 'Wilma Latuny', '197804062005012001', '17ec292649090b476be6a18172b34bf2', 2, 'Y'),
(137, 'Johan M. Tupan', '197807272002121001', 'c7210d273c061b86db0ff98d1b330b5b', 2, 'Y'),
(138, 'Arthur. Y. Leiwakabessy', '197901112008121002', '592dc5a0267d6e2d1073e0edec95f975', 2, 'Y'),
(139, 'Nurmiyati Kellian', '197905062005012001', '0a5be8459b9ad8546be69f250a7ada4b', 2, 'Y'),
(140, 'Victor O. Lawalata', '197906012005011002', '9524ba6bee55c2a2d84926a7eb474e88', 2, 'Y'),
(141, 'Hanok Mandaku', '197907302003121004', '03fb171065e92f70ed2842078b5429e9', 2, 'Y'),
(142, 'Olivia M. de Fretes', '197908042005012004', '7ca842612e9f2bf28d829ab92316b1f2', 2, 'Y'),
(143, 'Daniel B Pailin', '197912292005011002', 'fab5c5ce5501acc3f18b30d418d938cc', 2, 'Y'),
(144, 'Annalyse Picauly', '198002082005012003', '015b56b7d18ecbe2b077c0d1f7177f52', 2, 'Y'),
(145, 'Aminah Soleman', '198102212005012001', 'a4a53ee82ae41afe3f277f3320362325', 2, 'Y'),
(146, 'Richard A. de Fretes', '198107182008121003', '28557a6cdfc28d88b74de0cf50fc0e5b', 2, 'Y'),
(147, 'Victor Eric Pattiradjawane', '198209292010121003', '202cb962ac59075b964b07152d234b70', 1, 'Y'),
(148, 'Felix Taihuttu', '198504052015041002', '30dc49909d0ad9d8c2aec85c7bdd9a6b', 2, 'Y'),
(149, 'Imelda Ch. Poceratu', '198506182009122005', 'e99f1db676fcbbc0e0fbf3e15bcca0be', 2, 'Y'),
(150, 'Mansye. Ronal Ayal', '198507112014041003', 'b94a975a37fbd8c305a81159c775960d', 2, 'Y'),
(151, 'Andiah Nurhaeny', '198709022015042001', '03557d2ae9e4e68e90c0ca3b94ef5d45', 2, 'Y'),
(152, 'Billy P J Manuhutu', '19900101', 'c82c1cd77fbd144003b1e476718f66ce', 2, 'Y'),
(153, 'Jason Rendy Joris', '199210042010121004', '1a4a4a893b5c15c5c85f71ee009e0061', 2, 'Y'),
(154, 'Y. Rawulunubun', '31031991', 'fa75682f43ec7176d04bfaf9c0150f62', 2, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `mst_golongan`
--

CREATE TABLE `mst_golongan` (
  `id_mst_gol` bigint NOT NULL,
  `nama_gol` char(50) NOT NULL,
  `pangkat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `mst_golongan`
--

INSERT INTO `mst_golongan` (`id_mst_gol`, `nama_gol`, `pangkat`) VALUES
(1, 'CPNS', 'CPNS '),
(2, 'II.a', 'Pengatur Muda'),
(3, 'II.b', 'Pengatur Muda Tk.I'),
(4, 'II.c', 'Pengatur'),
(5, 'II.d', 'Pengatur Tk.I'),
(6, 'III.a', 'Penata Muda'),
(7, 'III.b', 'Penata Muda TK.I'),
(8, 'III.c', 'Penata'),
(9, 'III.d', 'Penata Tk.I'),
(10, 'IV.a', 'Pembina'),
(11, 'IV.b', 'Pembina Tk.I'),
(12, 'IV.c', 'Pembina Utama Muda'),
(13, 'IV.d', 'Pembina Utama Madya'),
(14, 'IV.e', 'Pembina Utama');

-- --------------------------------------------------------

--
-- Table structure for table `mst_jabatanf`
--

CREATE TABLE `mst_jabatanf` (
  `id_mst_jabatanf` bigint NOT NULL,
  `nama_jabatanf` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_jabatanf`
--

INSERT INTO `mst_jabatanf` (`id_mst_jabatanf`, `nama_jabatanf`) VALUES
(1, 'Pelaksana'),
(2, 'Fungsional Umum'),
(3, 'Pembantu Pimpinan'),
(4, 'PLP Penyelia'),
(5, 'PLP Madya'),
(6, 'PLP '),
(7, 'Pustakawan'),
(8, 'Lektor'),
(9, 'Asisten Ahli'),
(10, 'Lektor Kepala'),
(11, 'Guru Besar');

-- --------------------------------------------------------

--
-- Table structure for table `mst_jabatans`
--

CREATE TABLE `mst_jabatans` (
  `id_mst_jabatans` bigint NOT NULL,
  `nama_jabatans` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_jabatans`
--

INSERT INTO `mst_jabatans` (`id_mst_jabatans`, `nama_jabatans`) VALUES
(1, 'Dekan Fakultas Teknik'),
(2, 'Wakil Dekan Bidang Akademik'),
(3, 'Wakil Dekan Bidang Administrasi Umum'),
(4, 'Wakil Dekan Bidang Kemahasiswaan dan Alumni'),
(5, 'Wakil Dekan Bidang Kerjasama, Perencanaan, dan SI'),
(6, 'Kepala Bagian Tata Usaha'),
(7, 'Kepala Sub Bagian Akademik'),
(8, 'Kepala Sub Bagian Keuangan dan Kepegawaian'),
(9, 'Kepala Sub Bagian Kemahasiswaan & Alumni'),
(10, 'Kepala Sub Bagian Umum dan BMN'),
(11, 'Tidak ada');

-- --------------------------------------------------------

--
-- Table structure for table `mst_kualifikasi`
--

CREATE TABLE `mst_kualifikasi` (
  `id_mst_kualifikasi` bigint NOT NULL,
  `kualifikasi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_kualifikasi`
--

INSERT INTO `mst_kualifikasi` (`id_mst_kualifikasi`, `kualifikasi`) VALUES
(1, 'Tenaga Kependidikan'),
(2, 'Tenaga Pendidik'),
(3, 'Dosen Tetap Non PNS'),
(4, 'Honorer'),
(5, 'Dosen Honor');

-- --------------------------------------------------------

--
-- Table structure for table `mst_pendidikan`
--

CREATE TABLE `mst_pendidikan` (
  `id_mst_pendidikan` bigint NOT NULL,
  `jenjang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_pendidikan`
--

INSERT INTO `mst_pendidikan` (`id_mst_pendidikan`, `jenjang`) VALUES
(1, 'SD'),
(2, 'SMP'),
(4, 'SMU'),
(5, 'D2'),
(6, 'D3'),
(7, 'D4'),
(8, 'S1'),
(9, 'S2'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `mst_status`
--

CREATE TABLE `mst_status` (
  `id_mst_status` int NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_status`
--

INSERT INTO `mst_status` (`id_mst_status`, `status`) VALUES
(1, 'Aktif'),
(2, 'Pensiun'),
(4, 'Pindah'),
(5, 'Diberhentikan dengan Hormat'),
(6, 'Meninggal');

-- --------------------------------------------------------

--
-- Table structure for table `mst_unitkerja`
--

CREATE TABLE `mst_unitkerja` (
  `id_mst_unit` bigint NOT NULL,
  `unitkerja` varchar(50) NOT NULL,
  `subunit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_unitkerja`
--

INSERT INTO `mst_unitkerja` (`id_mst_unit`, `unitkerja`, `subunit`) VALUES
(1, 'Fakultas Teknik', 'Sub Bagian Kepegawaian & Keuangan '),
(2, 'Fakultas Teknik', 'Sub Bagian Akademik '),
(3, 'Fakultas Teknik', 'Sub Bagian Umum & BMN'),
(4, 'Fakultas Teknik', 'Sub Bagian Kemahasiswaan & Alumni'),
(5, 'Fakultas Teknik', 'Program Studi Teknik Perkapalan'),
(6, 'Fakultas Teknik', 'Program Studi Teknik Mesin'),
(7, 'Fakultas Teknik', 'Program Studi Teknik Sipil'),
(9, 'Fakultas Teknik', 'Program Studi Teknik Sistem Perkapalan'),
(10, 'Fakultas Teknik', 'Program Studi Teknik Industri'),
(11, 'Fakultas Teknik', 'Program Studi Teknik Perencanaan Wilayah dan Kota');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `nip` char(18) NOT NULL,
  `niplama` char(9) NOT NULL,
  `nidn` char(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gelardepan` varchar(15) NOT NULL,
  `gelarbelakang` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempatlahir` varchar(40) NOT NULL,
  `jeniskelamin` char(9) NOT NULL,
  `statuskeluarga` char(15) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pendidikanakhir` bigint NOT NULL,
  `namasekolah` varchar(40) NOT NULL,
  `tahunmasuk` date NOT NULL,
  `tahunlulus` date NOT NULL,
  `jurusan` varchar(60) NOT NULL,
  `kualifikasi` bigint NOT NULL,
  `statuspegawai` int NOT NULL,
  `unitkerja` bigint NOT NULL,
  `tmtcpns` date NOT NULL,
  `tmtpns` date NOT NULL,
  `golonganterakhir` bigint NOT NULL,
  `tmtgolongan` date NOT NULL,
  `jabatanf` bigint NOT NULL,
  `tmtjabatanf` date NOT NULL,
  `jabatans` bigint NOT NULL,
  `tmtjabatans` date DEFAULT NULL,
  `kgbterakhir` date NOT NULL,
  `karpeg` varchar(10) NOT NULL,
  `taspen` varchar(10) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kodepos` char(7) NOT NULL,
  `hp` char(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`nip`, `niplama`, `nidn`, `nama`, `gelardepan`, `gelarbelakang`, `tanggal_lahir`, `tempatlahir`, `jeniskelamin`, `statuskeluarga`, `agama`, `pendidikanakhir`, `namasekolah`, `tahunmasuk`, `tahunlulus`, `jurusan`, `kualifikasi`, `statuspegawai`, `unitkerja`, `tmtcpns`, `tmtpns`, `golonganterakhir`, `tmtgolongan`, `jabatanf`, `tmtjabatanf`, `jabatans`, `tmtjabatans`, `kgbterakhir`, `karpeg`, `taspen`, `npwp`, `alamat`, `kota`, `kodepos`, `hp`, `email`, `foto`) VALUES
('1010', '', '', 'Simon Talakua', '', '', '1978-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1995-10-01', '1997-10-01', 'Listrik', 4, 1, 3, '2015-10-01', '2016-10-01', 0, '2016-10-01', 0, '0000-00-00', 0, '0000-00-00', '2016-10-01', ' ', '--Pilih--', ' ', 'Poka', 'Ambon', '97889', '09394', 'mon@gmail.com', '10102.png'),
('195303061979031003', '', '', 'D. Tumanan', 'Ir. ', 'MSIE. ', '1953-03-06', 'Kota Ambon  mk', 'Laki-Laki', 'Nikah', 'Islam', 10, 'ITS Surabaya', '1984-08-19', '1986-08-22', 'Teknik Industri', 3, 2, 9, '1979-03-01', '1980-06-01', 12, '2009-04-01', 10, '2001-10-01', 11, '0001-01-01', '2013-03-01', '', 'Sudah Ada', '', 'Kuda Mati', 'Ambon', '97128', '0852', 'tumanan@gmail.com', '19530306pic.png'),
('195308031981031003', '', '', 'J. Liklikwatil', 'Ir.', 'MT.', '1953-08-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-12', '2003-08-25', 'Teknik Industri', 2, 1, 10, '1981-03-01', '1982-06-01', 10, '2001-10-01', 10, '2001-08-01', 0, '0000-00-00', '2016-03-01', 'C.0557977', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0850', 'liklikwatil@yahoo.com', '195308032.png'),
('195312101980031006', '130888562', '', 'Ilela Daud', 'Ir.', 'MT.', '1978-02-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '1997-03-01', '2000-08-01', 'Sistem Perkapalan', 2, 1, 9, '1980-03-01', '1981-08-01', 11, '2008-10-01', 10, '2008-05-01', 0, '0000-00-00', '2016-01-01', 'C.0166459', 'Sudah Ada', '058189994941000', 'Suli ', 'Ambon', '97116', '0812', 'ileladaud@yahoo.com', '19531210pic.png'),
('195401301980031007', '', '', 'A. R. C. Tetelepta', 'Ir.', 'MASc.', '1954-01-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 0, 'UNIVERSITAS PATTIMURA ', '1993-08-15', '2001-08-26', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, '1980-03-01', '1981-08-01', 8, '2002-04-01', 8, '2000-01-03', 0, '0000-00-00', '2016-10-01', 'C.0166460', 'Sudah Ada', ' ', 'passo', 'Ambon', '97117', '081343199719', 'tetelepta@gmail.com', '195401302.png'),
('195603291977031001', '13010418', '0029067908', 'P.W. Tetelepta', 'Ir', 'MT', '1956-03-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November Surabaya', '2010-01-10', '2013-01-11', 'Teknik Sistem Perkapalan', 2, 1, 9, '1977-03-01', '1978-06-01', 8, '2011-04-01', 8, '2010-10-01', 0, '0000-00-00', '2015-03-01', 'B.943752', 'Sudah Ada', '774954655941000', ' mangga dua', 'Ambon', ' 972311', '081343153594', 'pietertetelepta29@gmail.com', '19560329pw.jpg'),
('195703211980031003', '', '', 'B. Jamlean', 'Ir.', 'MSi', '1957-03-21', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA ', '2004-08-24', '2008-08-30', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, '1980-03-01', '1981-08-01', 9, '2002-01-01', 8, '2000-10-01', 0, '0000-00-00', '2015-03-01', 'C.0166462', 'Sudah Ada', ' ', 'Poka', 'Ambon', '97233', '0852', 'benny@gmail.com', '19570321pakbenyj1.png'),
('195703231983031003', '', '', 'B. Wattimury', 'Ir.', 'MT.', '1957-03-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-15', '2005-08-29', 'Teknik Sistem Perkapalan', 2, 1, 9, '1983-03-01', '1984-10-01', 9, '2003-04-01', 8, '2002-11-01', 0, '0000-00-00', '2016-04-01', 'D.057700', 'Sudah Ada', ' ', 'Belakang Soya', 'Ambon', '97233', '0852', 'barnabas@gmail.com', '195703232.png'),
('195711151987032002', '131684020', '', 'Ny. H. C. Ririmasse', 'Ir.', 'MT.', '1957-11-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2002-03-01', '2006-08-01', 'Transportasi Kelautan', 2, 1, 5, '1987-03-01', '1988-08-01', 10, '2015-04-01', 10, '2014-12-01', 0, '0000-00-00', '2017-03-01', 'E.370199', 'Sudah Ada', '7864 ', 'Kuda Mati', 'Ambon', '98773', '081248580740', 'hedyririmase@gmail.com', '19571115ririmase.jpg'),
('195801101986031002', '131642079', '', 'M. F. Noya', 'Ir.', 'MT.', '1958-01-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2002-03-01', '2005-08-01', 'Sistem Perkapalan', 2, 1, 9, '1986-03-01', '1987-11-01', 11, '2011-04-01', 10, '2010-05-01', 0, '0000-00-00', '2016-03-01', 'E.047538', 'Sudah Ada', '058190109941000', 'Belakang Soya', 'Ambon', '', '0812', 'fritsnoya@yahoo.com', '195801102.png'),
('195904031987031002', '131697295', '', 'E. J. de Lima', 'Ir.', 'MT.', '1959-04-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS', '2005-08-01', '2008-08-01', ' Teknik Perkapalan', 2, 1, 5, '1987-03-01', '1988-08-01', 8, '2010-10-01', 8, '2010-06-01', 0, '0000-00-00', '2017-03-01', 'kasjd33', 'Belum Ada', 'ad33', 'Wayame', 'Ambon', '977192', '081344009740', 'ece@gmail.com', '195904032.png'),
('195908251986101001', '131646102', '0025085905', 'M. Tukan', 'Prof. Dr. Ir', 'MT', '1959-08-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Katolik', 10, 'ITS Surabaya', '2008-09-20', '2013-04-26', 'Teknik Transportasi Kelautan', 2, 1, 10, '1986-10-01', '1987-11-01', 12, '2010-10-01', 8, '2009-04-01', 0, '0000-00-00', '2014-10-01', 'E.047555', 'Sudah Ada', '484476379941000', 'Karpan RT/RW. 002/001', 'Ambon', '97128', '081343000825', 'marcustukan@gmail.com', '195908251312.jpg'),
('196009251988032001', '', '', 'Ny. Y. L. Sitanala', '', 'SH.', '1960-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1992-10-01', '1997-10-01', 'Administrasi Negara', 1, 1, 3, '1988-03-01', '1989-09-01', 11, '2010-04-01', 0, '0000-00-00', 6, '2010-01-01', '2018-03-01', 'F.147678', 'Sudah Ada', ' ', 'Rumatiga', 'AMBON', '97117', '0923', 'ivon@gmail.com', '196009251 (5).jpg'),
('196010271990031004', '131917153', '', 'O. Metekohy', 'Ir.', 'M.Si.', '1960-10-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institute Teknologi Bandung', '2000-08-01', '2004-08-01', 'Perkapalan', 2, 1, 5, '1990-03-01', '1991-08-01', 11, '2010-04-01', 8, '2009-11-01', 0, '0000-00-00', '2016-03-01', 'E.887705', 'Belum Ada', ' ', 'Lateri', 'Ambon', '97118', '081343010324', 'obet@gmail.com', '19601027rip.jpg'),
('196011111981031004', '', '', 'Petrus F. Nikijuluw', '', '', '1960-11-11', 'Ulath', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '2000-01-01', '2002-01-01', 'Mesin', 1, 1, 2, '1981-03-01', '1982-06-01', 6, '2012-12-01', 2, '0000-00-00', 0, '0000-00-00', '2018-03-01', 'D.054292', 'Belum Ada', ' ', 'Passo', 'Ambon', '97117', '09923', 'otu@gmail.com', '19601111111.jpg'),
('196011231991031001', '131962551', '', 'R. Ufie', 'Ir.', 'MT.', '1960-11-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1991-03-01', '1992-08-01', 8, '2001-04-01', 8, '2016-12-01', 0, '0000-00-00', '2015-03-01', 'F. 196982', 'Sudah Ada', '786432583941000', 'Urimesing', 'Ambon', '97233', '081321446688', 'Ufie@gmail.com', '196011239.jpg'),
('196105271997002100', '132168169', '', 'Ph. Wuysang', 'Ir.', '', '1961-02-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '1975-12-28', '2002-01-01', 'Teknik Perkapalan', 2, 1, 5, '1997-01-03', '1998-01-06', 8, '2010-01-10', 8, '2010-01-06', 0, '0000-00-00', '2017-01-03', '-', 'Sudah Ada', '786432641941000', 'Ambon', 'Ambon', '97233', '0000000000000', 'xxxxxxxxxxxxxxxxx@yahoo.com', '196105272.png'),
('196203031987032003', '', '', 'Ny. Petronela Latupapua', '', '', '1962-03-03', 'Sameth', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMA', '1979-08-01', '1982-08-01', '', 1, 1, 3, '1987-03-01', '1988-08-01', 7, '2007-04-01', 2, '0000-00-00', 0, '0000-00-00', '2016-03-01', 'E.370251', 'Belum Ada', '', 'Paso', 'Ambpn', '97118', '34', 'petronella@gmail.com', '19620303ibunell.png'),
('196208131989031003', '131864164', '', 'W. R. Hetharia', 'Dr. Ir.', 'MApp. Sc.', '1962-08-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'UniversitÃ© de LiÃ©ge, Belgium', '2012-01-01', '2017-10-01', 'Teknik Perkapalan', 2, 1, 5, '1989-03-01', '1990-03-01', 12, '2010-04-01', 10, '2010-01-01', 1, '2017-01-01', '2017-03-01', 'E.815344', 'Sudah Ada', ' ', 'Passo', 'AMBON', '97117', '082238191650', 'hethariawr@yahoo.com', '19620813Pak-Roby-.jpg'),
('196208212014091002', '', '', 'Agustinus Supusepa', '', '', '1962-06-21', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1982-01-01', '1984-10-01', 'Mesin', 1, 1, 3, '2014-09-01', '0015-02-01', 2, '2014-09-01', 2, '0000-00-00', 0, '0000-00-00', '0000-00-00', '', 'Belum Ada', '', 'Jln. Kudamati', 'Ambon', '97117', '098773', 'agus@gmail.com', '19620821pakagus.jpg'),
('196303171986101001', '', '', 'J. Tupan', 'Ir', 'MT', '1963-03-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2002-03-01', '2005-08-12', 'Teknik Transportasi Kelautan', 2, 1, 5, '1986-10-01', '1987-11-01', 9, '2001-04-01', 8, '2000-10-01', 0, '0000-00-00', '2015-10-01', 'E.047582', 'Sudah Ada', '786432260941000', 'Batu Gajah ', 'Ambon', '98773', '082398668859', 'bobtupan@yahoo.com', '196303172.png'),
('196308301994031003', '132102347', '000300863', 'H. S. Lainsamputty', 'Ir.', 'MSi.', '1963-08-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA AMBON', '2013-01-09', '2015-01-10', 'ILMU KELAUTAN', 2, 1, 5, '1995-01-03', '1995-01-09', 10, '2016-01-10', 10, '2014-01-09', 0, '0000-00-00', '2016-01-03', ' G.190660', 'Sudah Ada', '077397032941000', 'suli', 'Ambon', '97128', '12323131313', 'hellylines@gmail.com', '19630830pak-helly-198x300.jpg'),
('196309251986031002', '', '', 'H. Tetelepta', '', 'SE.', '1963-09-25', 'Tepa', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2001-08-01', '2006-08-01', 'Administrasi Negara', 1, 1, 2, '1986-03-01', '1987-03-01', 9, '2013-10-01', 2, '0000-00-00', 7, '2014-08-01', '2017-03-01', ' ', 'Belum Ada', ' ', 'Passo', 'Ambon', '9718812', '08123', 'empi@gmail.com', '1963092522.jpg'),
('196311251984032001', '', '', 'Ny. Naomi Maitimu', '', '', '1963-11-25', 'Ema', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1980-01-01', '1983-10-01', 'IPS', 1, 1, 2, '1984-03-01', '1986-03-01', 7, '2003-04-01', 2, '0000-00-00', 0, '0000-00-00', '2015-03-01', ' ', 'Belum Ada', ' ', 'Amahusu', 'Ambon', '97188', '0822', 'omi@gmail.com', '1963112532.jpg'),
('196311291987031002', '', '', 'Frits M. Lekatompessy', '', 'S.Sos.', '1963-11-29', 'Latuhalat', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2003-10-01', '2008-10-01', 'Administrasi Negara', 1, 1, 1, '1987-03-01', '1988-08-01', 7, '2014-04-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', 'E.370246', 'Belum Ada', '', 'Latuhalat', 'Ambon', '97119', '9934', 'frits@gmail.com', '19631129frits.jpg'),
('196401281992032002', '', '', 'Ny. Saartje R. Molle', '', '', '1965-01-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 2, 'SMPS', '1985-10-01', '1987-10-01', '', 1, 1, 1, '1992-01-01', '1993-01-01', 7, '2013-10-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', '', 'Belum Ada', '', 'Karpan', 'Ambon', '9899', '0923', 'asd@gmail.com', '196401284.jpg'),
('196408091993031001', '132061371', '', 'W. M. E. Wattimena', 'Ir.', 'MT.', '1964-08-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1994-03-01', '1995-09-01', 8, '2001-04-01', 8, '2016-12-01', 0, '0000-00-00', '2015-03-01', 'G. 059649', 'Sudah Ada', ' ', 'Lateri', 'Ambon', '97233', '081343300053', 'Wattimena@gmail.com', '196408091 (2).jpg'),
('196410121988031003', '', '', 'E. Tawairubun', '', '', '1964-10-12', 'Warbal (Tual)', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1980-10-01', '1983-10-01', 'Mesin', 1, 1, 2, '1988-10-01', '1989-03-01', 8, '2014-04-01', 2, '0000-00-00', 0, '0000-00-00', '2015-03-01', 'E.602708', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97117', '0923942', 'ely@gmail.com', '19641012g.jpg'),
('196504301987112001', '', '', 'Ny. Deen A. Kalahatu', '', '', '1965-04-30', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1980-10-01', '1983-10-01', 'IPS', 1, 1, 1, '1987-11-01', '1988-12-01', 7, '2012-04-01', 2, '0000-00-00', 0, '0000-00-00', '2013-11-01', 'E.396449', 'Belum Ada', '', 'Galala', 'Ambon', '971772', '0928', 'ada@gmail.com', '196504302.jpg'),
('196505061987031003', '', '', 'Wilton J. S. Ririhena', '', '', '1965-05-06', 'Jakarta', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '0184-10-01', '1986-10-01', 'Mesin', 1, 1, 2, '1987-03-01', '1988-03-01', 8, '2014-10-01', 2, '0000-00-00', 0, '0000-00-00', '2016-03-01', 'E.641911', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97119', '09283', 'oyo@gmail.com', '196505062.png'),
('196505091997021001', '', '0009056707', 'J. D. C. Sihasale', 'Ir.', 'MT.', '1965-05-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2013-01-10', '2016-01-10', 'Teknik Perkapalan', 2, 1, 9, '1997-02-01', '1998-06-01', 9, '2011-04-01', 8, '2005-10-01', 0, '0000-00-00', '2015-02-01', 'G.440272', 'Sudah Ada', '786432278941000', 'Urimesing', 'Ambon', '97113', '081343156586', 'sihasale@gmail.com', '196505092.png'),
('196506221998031001', '132207801', '0022066505', 'A. Kakalimbong', 'Ir.', 'MT.', '1965-06-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '1998-03-01', '1999-06-01', 9, '2010-10-01', 8, '2010-06-01', 0, '0000-00-00', '2016-03-01', 'J. 027650', 'Sudah Ada', '786432666941000', 'batu merah', 'Ambon', '97582', '081343411811', 'Kalilombang@gmail.com', '196506222.png'),
('19650905199412001', '', '', 'Abdul. Hadi', 'Ir.', 'MT.', '1965-09-05', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2002-01-10', 'Teknik Perkapalan', 2, 1, 9, '1994-12-01', '1996-01-10', 6, '1996-10-01', 9, '2016-07-01', 0, '0000-00-00', '2016-12-01', 'G. 319229', 'Sudah Ada', '782568122941000', 'batu merah', 'Ambon', '97113', '081233232337', 'abdul@gmai.com', '19650905xx.jpg'),
('196509101993031002', '132051016', '', 'L. Wattimury', 'Ir.', 'MT.', '1965-09-10', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi Surabaya (ITS)', '2000-10-01', '2005-10-01', 'Teknik Sistem Perkapalan', 2, 1, 9, '1993-03-01', '1994-09-01', 10, '2010-10-01', 8, '2009-05-01', 4, '2016-10-01', '2017-03-01', 'G.059635', 'Belum Ada', ' ', 'Karang Panjang', 'Ambon', '97188', '0989287665', 'latu@gmail.com', '19650910LATUHORTE WATTIMURY (F'),
('196509131994031003', '132102916', '0013096511', 'R. H. Siahainenia', 'Ir.', 'MT.', '1965-09-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '1997-08-10', '2000-11-16', 'Teknik Kelautan Perencanaan Bangunan Lepas Pantai', 2, 1, 5, '1994-01-03', '1995-01-09', 11, '2011-01-10', 10, '2006-01-07', 0, '0000-00-00', '2018-01-03', 'G.253995', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97116', '081343007137', 'ekoadvmal@gmail.com', '1965091319pak-ecko-139x150.png'),
('196510061986012001', '', '', 'Ny. V. Pattiwael', '', '', '1965-10-06', 'Kampung Mahu', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1992-10-01', '1994-10-01', 'IPS', 1, 1, 2, '0986-11-01', '1987-11-01', 7, '2016-04-01', 2, '0000-00-00', 0, '0000-00-00', '2018-03-01', 'E.047585', 'Belum Ada', ' ', 'Poka', 'AMBON', '97117', '013', 'vin@gmail.com', '196510061321.jpg'),
('196512051992031001', '', '', 'Reggy W. Lalin', '', '', '1965-12-05', 'Maluku Tenggara', 'Laki-Laki', 'Nikah', 'Katolik', 4, 'STM', '1998-01-01', '2000-01-01', 'Listrik', 1, 1, 3, '1992-03-01', '1993-08-01', 5, '2011-04-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', ' ', 'Belum Ada', ' ', 'Poka', 'Ambon', '9877', '88234', 'regi@gmail.com', '196512052.png'),
('196601092003121001', '132306798', '0009016601', 'Samy Junus Litiloly', '', 'S.Si., M.T', '1966-01-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Universitas Indonesia', '1995-08-17', '2000-11-22', 'Teknik Elektro', 2, 1, 6, '2003-12-01', '2004-12-01', 10, '2015-04-01', 10, '2014-04-01', 0, '0000-00-00', '2017-12-01', 'L.181234', 'Sudah Ada', '786432674941000', 'Jl. Dr. Siwabessy No.4 RT.007.RW.04 Kelurahan Kuda', 'Ambon', '97116', '081210589423', 'samyjunusl@yahoo.com', '19660109SamyJL.jpg'),
('196603121999031001', '', '', 'S. G. M. Amaheka', 'Ir.', 'MT.', '1966-04-12', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2001-08-09', '2004-08-25', 'Teknik Sipil', 2, 1, 7, '1999-03-01', '2000-05-01', 7, '2008-10-01', 9, '2005-01-01', 0, '0000-00-00', '2015-03-01', 'J.081268', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97113', '0852', 'amaheka@gmail.com', '19660312191 (1).jpg'),
('196605131994031002', '', '', 'Michael Wattimena', '', '', '1966-05-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '1985-08-01', '1987-08-01', 'Mesin', 1, 1, 2, '1994-03-01', '1995-09-01', 7, '2014-04-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', 'G.189954', 'Belum Ada', ' ', 'Kudamati', 'Ambon', '97889', '0918', 'wati@gmail.com', '196605137.jpg'),
('196610061996032001', '132150427', '-', 'J. Matakupan', '', 'ST. MT.', '1968-06-10', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 9, 'ITS Surabaya', '1979-06-12', '2007-07-11', 'Teknik Transportasi Kelautan', 2, 1, 5, '1995-01-12', '1997-01-06', 8, '2010-01-10', 8, '2010-01-06', 0, '0000-00-00', '2018-01-03', 'G.368223', 'Sudah Ada', '148679020941000', 'Waai', 'Ambon', '97582', '0000000000000', 'XXXXXXXXXXXXXXXX@YAHOO.COM', '196610062.png'),
('196612201994031001', '132086856', '', 'E. R. de Fretes', 'Dr. Ir.', 'MT.', '1966-12-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'Institut Teknologi Surabaya (ITS)', '2008-10-01', '2014-10-01', 'Teknik Perkapalan', 2, 1, 5, '1994-03-01', '1995-10-01', 10, '2008-04-01', 10, '0000-00-00', 3, '0000-00-00', '2018-03-01', 'G.190661', 'Sudah Ada', ' 786432559941000', 'Batumeja', 'AMBON', '97117', '081357841333', 'defretesera@gmail.com', '19661220elly.jpg'),
('196706071994121001', '132125676', '', 'J. Latuny', 'Ir.', 'M.Eng. PhD', '1967-06-07', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1994-12-01', '1996-10-10', 9, '2008-10-01', 8, '2008-06-01', 0, '0000-00-00', '2016-12-01', 'G. 319225', 'Sudah Ada', '487728129941000', 'Kuda Mati', 'Ambon', '97113', '082239111244', 'Latuny@gmail.com', '196706072.png'),
('196707261997031002', '132173416', '', 'R. B. Luhulima', 'Dr.', 'ST. MT', '1967-07-26', 'AMBON', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-02-08', '2017-07-13', 'Teknik Perkapalan', 2, 1, 5, '1997-01-03', '1998-01-06', 9, '2011-01-04', 8, '2004-01-04', 0, '0000-00-00', '2017-01-03', 'H.026341', 'Sudah Ada', '066477290941000', 'Amahusus', 'Ambon', '97117', '081330722067', 'richardluhulima@yahoo.com', '1967072619icat].jpg'),
('196709141989032001', '', '', 'Ny. Petronela W. Pattiwael', '', '', '1967-09-14', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 4, 'SMEA', '1985-10-01', '1987-10-01', 'Administrasi Negara', 1, 1, 2, '1989-03-01', '1990-03-01', 7, '2012-04-01', 2, '0000-00-00', 0, '0000-00-00', '2018-03-01', 'E.870149', 'Belum Ada', ' ', 'Kayu Tiga', 'Ambon', '978834', '0986', 'nelpat@gmail.com', '1967091410.jpg'),
('196801281997031003', '132173418', '0028016808', 'J. Louhenapessy', 'Ir.', 'MT.', '1968-01-28', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1997-02-01', '1998-06-01', 9, '2012-04-01', 8, '0000-00-00', 0, '0000-00-00', '2015-03-01', 'H. 026342', 'Sudah Ada', '  ', 'Batu Gajah ', 'Ambon', '97113', '085354113648', 'Louhenapessy@gmail.com', '1968012820180906_121809.jpg'),
('196804101995021001', '132125693', '', 'L. A. T. Matatula', '', 'ST.', '1968-10-04', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '1970-02-18', '2000-06-30', 'Teknik Perkapalan', 2, 1, 5, '1995-01-02', '1996-01-10', 8, '2006-01-04', 8, '2005-01-10', 0, '0000-00-00', '2017-01-02', 'G.319236', 'Sudah Ada', '1234567890', 'Latuhalat', 'Ambon', '97113', '081330137768', 'lmdeleka@gmail.com', '196804102.png'),
('196804221994031001', '132089496', '', 'G. Tanlain', '', 'ST. MT.', '1968-04-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'ITS Surabaya', '1995-01-10', '1960-01-10', 'Teknik Perkapalan', 2, 1, 9, '1994-03-01', '1995-10-01', 7, '2016-10-01', 9, '2004-01-10', 0, '0000-00-00', '2008-03-01', 'G.190662', 'Sudah Ada', '1234567760', 'Kuda Mati', 'Ambon', '97113', '0813', 'tanlei@gmail.com', '196804222.png'),
('196805141995121001', '', '', 'Ogie Pattiselano', '', '', '1968-05-14', 'Saparua', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1988-08-01', '1990-10-01', 'Mesin', 1, 1, 2, '1995-12-01', '1997-01-01', 7, '2014-10-01', 2, '0000-00-00', 0, '0000-00-00', '2016-12-01', 'G.262788', 'Belum Ada', ' ', 'Tawiri', 'Ambon', '98782', '09823', 'ogie@gmail.com', '196805142.png'),
('196807131995021001', '132128384', '', 'N. Titaheluw', 'Ir.', 'MT.', '1968-07-13', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1995-02-01', '1996-10-01', 10, '2009-04-01', 8, '2009-01-01', 0, '0000-00-00', '2015-03-01', 'G. 419235', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '081344747994', 'Titaheluw@gmail.com', '196807132.png'),
('196809151998031004', '', '', 'W. D. Nanlohy', '', 'ST. M.Si', '1968-09-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'UNIVERSITAS PATTIMURA ', '2003-08-15', '2006-08-23', 'Fakultas Perikanan dan Ilmu Kelautan', 2, 1, 11, '1998-03-01', '1999-06-01', 7, '2010-10-01', 9, '2010-06-01', 0, '0000-00-00', '2016-03-01', ' J.083322', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97233', '0852', 'nanlohy@gmail.com', '196809152.png'),
('196812201996031001', '', '', 'Djefri Palijama', '', '', '1968-12-20', 'Pia', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1985-10-01', '1987-08-01', 'Mesin', 1, 1, 2, '1996-03-01', '1997-05-01', 7, '0014-02-01', 2, '0000-00-00', 0, '0000-00-00', '2017-03-01', 'G.373014', 'Belum Ada', ' ', 'Batu Meja', 'AMBON', '97117', '0923', 'jepo@gmail.com', '196812202.png'),
('196902222002121002', '132301635', '', 'Imran Oppier', 'Ir.', 'MT.', '1969-02-22', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2002-12-01', '2003-12-01', 7, '2016-10-01', 9, '2016-07-01', 0, '0000-00-00', '2014-12-01', ' ', 'Sudah Ada', '077399244941000', 'Batu Gajah ', 'Ambon', '97233', '0813', 'Imran@gmail.com', '196902222.png'),
('196903301991122001', '', '', 'Esthernetty Maruanaya', '', 'SH.', '1969-03-30', 'Tala', 'Perempuan', 'Belum Nikah', 'Protestan', 8, 'Universitas Pattimura', '2002-03-01', '2007-02-01', 'Niaga', 1, 1, 3, '1991-12-01', '1993-01-08', 8, '2015-04-01', 5, '0000-00-00', 10, '2010-01-01', '2014-12-01', '', 'Belum Ada', '', 'Latuhalat', 'ambon manise', '987771', '9876554', 'nety@gmail.com', '19690330R.jpg'),
('196904191998031003', '132207805', '', 'A. L. Apituley', 'Ir.', 'MT.', '1969-04-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'ITS Surabaya', '1985-01-10', '1990-01-10', 'Teknik Perkapalan', 2, 1, 9, '1998-03-01', '1999-06-01', 6, '1999-06-01', 9, '2000-01-10', 0, '0000-00-00', '2016-03-01', 'J.083326', 'Sudah Ada', '786432484941000', 'Urimesing', 'Ambon', '97113', '081343003133', 'Apituley@gmail.com', '196904192.png'),
('196904281995032001', '132129665', '', 'S. T. A. Lekatompessy', '', 'ST., MT.', '1969-04-28', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2018-08-20', '2018-08-20', 'Teknik Perkapalan', 2, 1, 5, '1995-01-03', '1996-01-10', 10, '2006-01-04', 10, '2014-01-09', 0, '0000-00-00', '2019-01-03', 'G.319237', 'Sudah Ada', '1234567890', 'Urimesing', 'Ambon', '97113', '1314235435456', 'Sonja_lekatompessy@yahoo.com', '1969042819ibu-sonja.png'),
('196906191995121001', '132137973', '', 'L. M. Kelwulan', '', 'ST, MT.', '1969-12-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '1967-02-09', '2018-08-14', 'Teknik Transportasi Kelautan', 2, 1, 5, '1995-01-02', '1996-01-10', 9, '2015-01-12', 8, '2010-01-06', 0, '0000-00-00', '2017-01-12', 'G.368216', 'Sudah Ada', '786432351941000', 'Passo', 'Ambon', '97233', '0000000000000', 'XXXXXXXXXX@yahoo.com', '196906192.png'),
('196907031994121001', '312228', '', 'P. Ciptoadhi', 'Ir', 'MT', '1969-07-03', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2013-10-01', '2016-10-01', 'Teknik Perkapalan', 2, 1, 9, '1994-12-01', '1996-10-01', 9, '2008-10-01', 8, '2017-10-01', 0, '0000-00-00', '2016-12-01', 'G.31228', 'Sudah Ada', '148679509941000', 'Waihaong', 'Ambon', '97232', '081334753005', 'ciptoadi@gmai.com', '196907032.png'),
('196907050998031002', '', '', 'E. B. Johannes', '', 'ST. MT.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1999-08-15', '2004-08-08', 'Teknik Perkapalan', 2, 1, 5, '1998-01-03', '1999-01-06', 6, '1999-01-06', 9, '2000-01-10', 0, '0000-00-00', '2016-01-04', 'J.083324', 'Sudah Ada', '786432427941000', 'Batu Gajah', 'Ambon', '97211', '0852', 'joannes@gmail.com', '196907058.jpg'),
('196907251997021002', '132168170', '', 'A. Simanjuntak', 'Ir.', 'MT.', '1969-07-25', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '1997-02-01', '1998-06-01', 10, '2010-04-01', 8, '2009-09-01', 0, '0000-00-00', '2015-02-01', 'H. 026338', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081343288048', 'simanjuntak@gmail.com', '196907252.png'),
('196908051994121001', '132125693', '', 'E. Matatula', '', 'ST, MT.', '1969-08-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2004-08-05', '2010-09-07', 'Teknik Transportasi Kelautan', 2, 1, 5, '1994-12-01', '1996-10-01', 9, '2008-10-01', 8, '2007-01-01', 0, '0000-00-00', '2016-12-01', 'G.319227', 'Sudah Ada', '774954747941000', 'Kuda Mati', 'Ambon', '97113', '07852', 'edwinmatatula@gmail.com', '196908052.png'),
('196908161998031001', '132207800', '', 'P. Th. Berhitu', 'Dr.', 'ST. MT.', '1969-08-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-08-09', '2017-12-27', 'Teknik Bangunan Lepas Pantai', 2, 1, 5, '1998-01-03', '1999-01-06', 10, '0000-00-00', 10, '1998-01-03', 0, '0000-00-00', '0000-00-00', 'J.083323', 'Sudah Ada', '077397057941000', 'Talake', 'Ambon', '97211', '085197361204', 'piter_berhitu@gmail.com', '196908162.png'),
('196909151997032001', '132173416', '', 'M. Manuputty', '', 'ST. M.Kes', '1969-09-15', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2005-08-15', '2007-08-13', 'Kesehatan', 2, 1, 5, '1997-01-03', '1998-01-06', 9, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', 'J.083319', 'Sudah Ada', '196909151997032001', 'kudamati', 'Ambon', '97233', '081247024449', 'mona@yahoo.com', '196909152.png'),
('196909231998031002', '132207804', '', 'P. Kabaena', '', 'ST.', '1969-09-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1993-07-06', '2004-07-08', 'Teknik Perkapalan', 2, 1, 5, '1998-01-03', '1999-01-06', 6, '1999-01-06', 9, '2000-01-10', 0, '0000-00-00', '2010-01-03', 'J.083325', 'Sudah Ada', '09875423', 'Poka', 'Ambon', '97233', '0852', 'kabaena@yahoo.com', '196909232.png'),
('197005051999031003', '132240518', '0005057005', 'Billy Jhones Camerling', '', 'ST.,MT', '1970-05-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2001-03-01', '2003-08-08', 'Teknik Industri', 2, 1, 10, '1999-03-01', '2001-01-01', 8, '2010-04-01', 8, '2017-03-01', 0, '0000-00-00', '2015-03-01', 'K.013624', 'Sudah Ada', '786153312941000', 'Air Salobar ', 'Ambon', '97593', '081331434480', 'billi@yahoo.com', '197005052.png'),
('197005231999031001', '132231731', '0023057004', 'Nil Edwin Maitimu', '', 'ST.,MT', '1970-05-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2001-07-01', '2004-08-01', 'Teknik Industri', 2, 1, 10, '1999-03-01', '2000-05-01', 9, '2011-04-01', 8, '0000-00-00', 0, '0000-00-00', '2015-03-01', 'I.016964', 'Sudah Ada', '077396976941000', 'Jl. Sisingamangaraja Passo RT.003/RW001', 'Ambon', '97593', '085243215515', 'niledwinmaitimu@gmail.com', '197005232.png'),
('197007231998031001', '132207748', '', 'D. S. Pelupessy', 'Ir.', 'MT.', '1970-07-23', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2013-01-10', '2016-01-10', 'Teknik Perkapalan', 2, 1, 9, '1998-03-01', '1999-06-01', 9, '2013-10-01', 8, '2013-04-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', '12345660', 'Kuda Mati', 'Ambon', '97113', '0813', 'pelupessy@gmail.com', '197007232.png'),
('197008141999031002', '132232270', '', 'G. R. Latuhihin', '', 'ST, MT.', '1970-08-14', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '1999-08-07', '2003-01-08', 'Teknik Perkapalan', 2, 1, 5, '1999-01-03', '2000-01-05', 7, '2010-01-10', 9, '2010-01-06', 0, '0000-00-00', '2019-01-03', ' ', 'Sudah Ada', '148679160941000', 'Passo', 'Ambon', '97233', '0852546852', 'icat@gmail.com', '197008142.png'),
('197109251998032001', '', '', 'G. S. Norimarna', '', 'ST. MS.Eng', '1971-09-25', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, ' ', '2006-08-15', '2010-08-17', ' ', 2, 1, 9, '1998-03-01', '1999-06-01', 6, '1999-06-01', 9, '2010-10-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'Norimarna@gmail.com', '1971092520180906_121728.jpg'),
('19711120200604100', '132319089', '', 'Nasir Suruali', 'Ir.', 'MT.', '1971-11-20', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '2006-04-01', '2007-05-01', 10, '2015-04-01', 8, '2014-12-01', 0, '0000-00-00', '2016-04-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97582', '085243625095', 'Nasir@gmail.com', '197111202.png'),
('197112131999032001', '132231730', '0013127106', ' Ariviana. Lientje. Kakerissa', '', 'ST, MT. IPM', '1971-12-13', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November Surabaya', '2002-09-01', '2004-01-28', 'Teknik Industri', 2, 1, 10, '1999-03-01', '2000-05-01', 10, '2011-10-01', 8, '2011-06-01', 0, '0000-00-00', '2017-03-01', ' ', 'Sudah Ada', ' 077398469941000', 'OSM', 'Ambon', '97116', '081224915000', 'vianakakerissa71@gmail.co', '197112131.jpg'),
('197201241995121002', '', '', 'Jason M. S. Pesulima', '', '', '1972-01-24', 'Amahusu', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1990-10-01', '1992-10-01', 'Mesin', 1, 1, 2, '1995-12-01', '1997-03-01', 6, '2014-04-01', 6, '2010-01-01', 0, '0000-00-00', '2016-12-01', 'D.054292', 'Belum Ada', ' ', 'Poka', 'AMBON', '97117', '023', 'jasonsoni@gmail.com', '197201242.png'),
('197202011997021001', '', '', 'F. Tanahitumessing', '', 'ST', '1972-02-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2003-10-01', '2007-10-01', 'Teknik Mesin', 1, 1, 2, '1997-02-01', '1998-04-01', 7, '2013-10-01', 6, '2010-02-01', 0, '0000-00-00', '2018-02-01', 'G.438066', 'Belum Ada', ' ', 'Batu Gajah', 'Ambon', '97882', '089283', 'angky@gmail.com', '197202011 (9).jpg'),
('197207111998031002', '', '', 'Isak Aponno', '', 'ST', '1972-07-11', 'Porto', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '2003-02-01', '2007-01-01', 'Teknik', 1, 1, 2, '1998-03-01', '1999-06-01', 8, '2013-10-01', 6, '0000-00-00', 0, '0000-00-00', '2018-03-01', ' I.029040', 'Belum Ada', ' ', 'Passo', 'Ambon', '98133', '09813', 'cak@gmail.com', '197207112.png'),
('197208092000031001', '132262173', '0009087211', 'W. M. Rumaherang', 'Ir.', 'MSc. PhD.', '1972-08-19', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '2000-03-01', '2001-05-01', 9, '2016-10-01', 8, '2015-12-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081291724514', 'Rumaherang@gmail.com', '197208092.png'),
('197208152000121001', '132288571', '', 'S. I. Latuconsina', 'Ir.', 'MT.', '1972-02-15', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2000-12-01', '2001-12-01', 6, '2000-12-01', 9, '2007-01-01', 0, '0000-00-00', '2014-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97582', '085231314949', 'Latuconsina@gmai.com', '197208158is.jpg'),
('197211172000031001', '132260996', '', 'Alfredo Tutuhatunewa', '', 'ST.,MT', '1972-11-17', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Institut Teknologi 10 November', '2001-03-08', '2003-05-02', 'Teknik Industri', 2, 1, 10, '2000-03-01', '2001-12-01', 9, '2011-04-01', 8, '2009-06-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', '1234', ' karang panjang', 'Ambon', '97593', '081343', 'alfredotutuhatunewa@yahoo.com', '197211172.png'),
('197307211995121001', '', '', 'Chaleb M. L. Wattimena', '', '', '1973-07-21', 'Urimessing', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM', '1990-10-01', '1992-10-01', 'Mesin', 1, 1, 2, '1995-12-01', '1997-01-01', 7, '2014-10-01', 7, '0000-00-00', 0, '0000-00-00', '2019-03-01', 'G.262790', 'Belum Ada', ' ', 'Siwang', 'AMBON', '97117', '0921', 'kaleb@gmail.com', '19730721cah.jpg'),
('197307251999032001', '132204636', '', 'F. Gaspersz', '', 'ST, MT.', '1973-07-25', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-21', '2003-08-31', 'Teknologi Kelautan', 2, 1, 5, '1999-03-01', '2000-05-01', 9, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', ' ', 'Sudah Ada', '774954721941000', 'Batu Gajah ', 'Ambon', '97128', '0813330362525', 'fellagsp73@gmail.com', '197307252.png'),
('19730729200003001', '132260995', '', 'D. R. Lekatompessy', 'Dr.', 'ST, MT.', '1973-07-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-08-17', '2018-08-15', 'Teknik Perkapalan', 2, 1, 5, '2000-03-01', '2001-12-01', 9, '2011-04-01', 8, '2010-06-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'deby@gmail.com', '197307292.png'),
('197309062002121001', '132301633', '', 'Abdul Djabar Tianotak', '', 'ST, MSi.', '1973-06-09', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'Universitas Pattimura Ambon', '2004-08-05', '2007-08-16', 'Perikanan dan Ilmu Kelautan', 2, 1, 5, '2000-12-01', '2001-12-01', 7, '2016-12-01', 8, '2016-07-01', 0, '0000-00-00', '2018-12-01', ' ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97233', '08452', 'djabar@gmail.com', '197309062.png'),
('197403052000032001', '', '', 'Nn. M. L. Pattiapon,', '', 'ST.', '1974-03-05', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura Ambon', '1982-08-15', '1984-08-25', 'Teknik Industri', 2, 1, 10, '2000-03-01', '2001-05-01', 8, '2013-04-01', 8, '2011-10-01', 0, '0000-00-00', '2016-03-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97116', '0852', 'pattiapon@gmail.com', '197403052.png'),
('197407132003122001', '132303296', '', 'Warniyati', 'Ir.', 'MT.', '1974-07-13', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik sipil', 2, 1, 7, '2003-12-01', '2004-12-01', 8, '2015-04-01', 8, '2012-01-02', 0, '0000-00-00', '2015-12-01', ' ', 'Sudah Ada', '786432344941000', 'batu merah', 'Ambon', '97233', '0813', 'Warniaty@gmail.com', '197407132.png'),
('197409062005011003', '', '', 'Stevianus Titaley', '', 'ST, MSi.', '1974-09-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2006-08-05', '2009-08-12', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2012-04-01', 8, '2008-10-01', 0, '0000-00-00', '2015-01-01', '  ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97116', '0852', 'stecianus@gmail.com', '197409062.png'),
('197412162002122001', '', '', 'Novitha L. T. Thenu', '', 'ST. MT.', '1974-10-16', 'amobn', 'Perempuan', 'Nikah', '--Pilih--', 0, 'ITS Surabaya', '2005-08-17', '2010-08-31', 'Sistem Perkapalan', 2, 1, 9, '2002-12-01', '6768-12-08', 8, '2010-04-01', 8, '2009-08-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'passo', 'Ambon', '97233', '081343199719', 'novitha@gmail.com', '197412162.png'),
('197602242010121001', '', '', 'Stani Ferdinandus', '', '', '1976-02-24', 'Ambon', 'Perempuan', 'Belum Nikah', 'Protestan', 4, 'SMEA', '1987-10-01', '1990-10-01', 'Administrasi Negara', 1, 1, 2, '2010-12-01', '2013-06-01', 3, '2013-06-01', 0, '0000-00-00', 0, '0000-00-00', '2018-12-01', ' ', 'Belum Ada', ' ', 'Wainitu', 'AMBON', '97117', '938284', 'stani@gmail.com', '197602242.png'),
('197608192001122001', '132297214', '', 'R. P. Soumokil', '', 'ST, MSi.', '1976-08-19', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2001-08-25', '2004-08-29', 'Teknik Transportasi Kelautan', 2, 1, 5, '2001-12-01', '2003-01-01', 7, '2010-04-01', 9, '2009-08-01', 0, '0000-00-00', '2017-12-01', ' ', 'Sudah Ada', '786432310941000', 'Batu Gajah ', 'Ambon', '97233', '0852', 'rutha@gmail.com', '197608192.png'),
('197705022002121004', '', '', 'Benjamin G. Tentua', '', 'ST.MT.', '1977-05-02', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2008-08-26', '2011-08-25', 'Mesin', 2, 1, 6, '2002-12-01', '2005-12-01', 8, '2012-04-01', 8, '2011-10-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'benjamin@gmail.com', '197705021 (11).jpg'),
('197804062005012001', '', '', 'Wilma Latuny', 'Dr.', 'ST. MSi.', '1978-04-06', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 10, 'ITS Surabaya', '2011-08-04', '2016-08-15', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2004-04-01', 8, '2009-06-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', '774954689941000', 'Batu Gajah ', 'Ambon', '97116', '08452', 'wilma@gmail.com', '197804062.png'),
('197807272002121001', '', '', 'Johan M. Tupan', '', 'ST. MT.', '1978-07-27', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2002-08-12', '2018-09-05', 'Teknik Industri', 2, 1, 10, '2002-12-01', '2004-01-01', 9, '2013-04-01', 8, '2009-06-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '0852', 'pelupessy@gmail.com', '197807272.png'),
('197901112008121002', '', '', 'Arthur. Y. Leiwakabessy', 'Ir.', 'MT.', '1979-01-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'teknik mesin', 2, 1, 6, '2008-12-01', '2010-06-01', 8, '2017-10-01', 8, '2014-04-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97582', '082141676561', 'Arthur@gmail.com', '197901112.png'),
('197905062005012001', '', '', 'Nurmiyati Kellian', '', 'ST, MT.', '1979-05-06', 'Ambon', 'Laki-Laki', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2008-08-15', '2011-08-27', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 6, '2006-02-01', 8, '2015-01-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', ' ', 'batu merah', 'Ambon', '97116', '0852', 'nurmiaty@gmail.com', '197905062.png'),
('197906012005011002', '', '', 'Victor O. Lawalata', '', 'ST, MT.', '1979-06-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-08-25', '0000-00-00', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2015-01-01', 10, '2013-01-04', 0, '0000-00-00', '2017-01-01', ' ', 'Sudah Ada', ' ', 'Poka', 'Ambon', '97113', '0852', 'viktor@gmail.com', '197906012.png'),
('197907302003121004', '', '', 'Hanok Mandaku', '', 'ST, MT.', '1979-07-30', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2000-08-20', '2003-08-15', 'Teknik Industri', 2, 1, 10, '2003-12-01', '2005-01-01', 9, '2015-10-01', 8, '2013-01-02', 0, '0000-00-00', '2015-10-01', ' ', 'Sudah Ada', '786432468941000', 'Batu Gajah ', 'Ambon', '97116', '0852', 'hanok@gamil.com', '197907302.png'),
('197908042005012004', '', '', 'Olivia M. de Fretes', '', 'ST, M.Eng', '1979-08-04', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2004-08-25', '2008-08-23', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 8, '2012-04-01', 8, '2012-04-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', ' ', 'Batu Gajah ', 'Ambon', '97116', '0852', 'olivia@gmail.com', '197908042.png'),
('197912292005011002', '', '', 'Daniel B Pailin', '', 'ST, MT.', '1979-12-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2012-08-25', '2017-08-12', 'Teknik Industri', 2, 1, 10, '2005-01-01', '2006-02-01', 9, '2014-04-01', 8, '2013-04-01', 0, '0000-00-00', '2015-01-01', ' ', 'Sudah Ada', '077397792941000', 'Batu Gajah ', 'Ambon', '98773', '0852', 'daniel@gmail.com', '197912292.png'),
('198002082005012003', '', '', 'Annalyse Picauly', '', 'SE.', '1980-02-08', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 8, 'Universitas Pattimura', '1999-10-01', '2004-10-01', 'Ekonomi', 1, 1, 1, '2005-01-01', '2006-02-01', 9, '2017-04-01', 2, '0000-00-00', 8, '2010-01-01', '2017-01-01', '', 'Belum Ada', '', 'Passo', 'Ambon', '978892', '092', 'analis@gmail.com', '198002085.jpg'),
('198102212005012001', '', '', 'Aminah Soleman', '', 'ST, MT.', '1981-02-21', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2006-08-25', '2009-08-26', 'Teknik Industri', 2, 1, 10, '2005-02-01', '2006-03-01', 8, '2013-04-01', 8, '2012-07-01', 0, '0000-00-00', '2015-02-01', ' ', 'Sudah Ada', 'P077397784941000', 'batu merah', 'Ambon', '97113', '0852', 'aminah@gmail.com', '198102212.png'),
('198107182008121003', '', '', 'Richard A. de Fretes', '', 'ST', '1981-07-08', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'Universitas Pattimura Ambon', '2001-08-25', '2004-08-29', 'Teknik Industri', 2, 1, 10, '2008-12-01', '2010-06-01', 7, '2006-04-01', 9, '2015-06-01', 0, '0000-00-00', '2016-12-01', ' ', 'Sudah Ada', ' ', 'Urimesing', 'Ambon', '97128', '0852', 'richard@gmail.com', '198107182.png'),
('198209292010121003', '13099887', 'tes nidn', 'Victor Eric Pattiradjawane', '', 'S. Kom.', '1982-09-29', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 8, 'Untag Surabaya', '2000-10-01', '2015-12-01', 'Teknik Informatika', 1, 1, 4, '2010-12-01', '2012-08-01', 8, '2017-08-01', 2, '0000-00-00', 9, '2015-08-01', '2017-08-01', 'E.370251', 'Belum Ada', '12345.0232.123', 'Ambon', 'Ambon', '97117', '09182833', 'devictoreric@yahoo.com', '1982092920vicjas.png'),
('198504052015041002', '', '', 'Felix Taihuttu', 'Ir.', 'MT.', '1985-04-05', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2015-04-01', '2016-04-01', 7, '2017-01-01', 8, '2016-01-01', 0, '0000-00-00', '2017-08-01', ' ', 'Sudah Ada', '738520683941000', 'passo', 'Ambon', '97116', '081227252045', 'Felix@gmail.com', '198504052.png'),
('198506182009122005', '', '', 'Imelda Ch. Poceratu', '', 'M.Teol', '1985-06-18', 'Ambon', 'Perempuan', 'Nikah', 'Protestan', 9, 'Univeritas Kristen Indonesia', '2010-08-20', '2014-08-25', 'Teologi', 2, 1, 10, '2009-12-01', '2011-08-01', 8, '2016-04-01', 8, '2015-06-01', 0, '0000-00-00', '2015-12-01', ' ', 'Sudah Ada', ' ', 'Passo', 'Ambon', '97233', '0852', 'imelda@gmail.com', '19850618cd.jpg'),
('198507112014041003', '', '', 'Mansye. Ronal Ayal', 'Ir.', 'MT.', '1985-07-11', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 9, 'ITS Surabaya', '2010-01-10', '2012-01-10', 'Teknik Sipil', 2, 1, 7, '2014-04-01', '2015-05-01', 7, '2014-04-01', 9, '2016-07-01', 0, '0000-00-00', '2016-04-01', ' ', 'Sudah Ada', ' ', 'Urimesing', 'Ambon', '97582', '085220204287', 'Mansye@gmail.com', '198507112.png'),
('198709022015042001', '', '', 'Andiah Nurhaeny', 'Ir.', 'MT.', '1987-09-02', 'Ambon', 'Perempuan', 'Nikah', 'Islam', 9, 'ITS Surabaya', '2010-01-10', '1012-01-10', 'teknik perencanaan wilayah dan kota', 2, 1, 11, '2015-04-01', '2017-01-01', 7, '2017-04-01', 9, '2017-04-01', 0, '0000-00-00', '2017-08-01', '  ', 'Sudah Ada', ' ', 'Kuda Mati', 'Ambon', '97113', '081321500757', 'Adhinda@gmail.com', '198709022.png'),
('19900101', '', '', 'Billy P J Manuhutu', '', 'ST.', '1993-04-15', 'Ambon', 'Laki-Laki', 'Belum Nikah', 'Protestan', 8, 'UNIVERSITAS PATTIMURA', '2011-10-08', '2017-08-10', 'Teknik Perkapalan', 4, 1, 1, '0000-00-00', '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', ' ', 'Belum Ada', ' ', 'Poka', 'Ambon', '98773', '085211384519', 'billy_manuhutu@yahoo.com', '199001011.jpg'),
('199210042010121004', '', '', 'Jason Rendy Joris', '', '', '1992-10-01', 'Ambon', 'Laki-Laki', 'Nikah', 'Protestan', 4, 'STM 1 Ambon', '2007-10-01', '2009-10-01', 'Mesin', 1, 1, 1, '2010-10-01', '2012-08-01', 3, '2012-08-01', 0, '0000-00-00', 0, '0000-00-00', '2017-12-01', '00', 'Sudah Ada', '683943088941000', 'Galala', 'Ambon', '971992', '085243194427', 'jrj_04@yahoo.com', '19921004jas.jpg'),
('31031991', '', '', 'Y. Rawulunubun', '', 'ST', '1991-03-31', 'Tual', 'Laki-Laki', 'Belum Nikah', 'Katolik', 8, 'Universitas Pattimura', '2011-08-15', '2017-10-12', 'Teknik Perkapalan', 4, 1, 5, '2000-01-05', '2006-02-05', 1, '0000-00-00', 0, '0000-00-00', 0, '0000-00-00', '0000-00-00', ' ', 'Sudah Ada', ' ', 'Rumahtiga', 'Ambon', '97233', '085197260431', 'yogazrawul@yahoo.com', '310319912.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `browser`
--
ALTER TABLE `browser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatandajasa`
--
ALTER TABLE `datatandajasa`
  ADD PRIMARY KEY (`id_datatandajasa`);

--
-- Indexes for table `drdiklatfungsional`
--
ALTER TABLE `drdiklatfungsional`
  ADD PRIMARY KEY (`id_diklatfungsional`);

--
-- Indexes for table `drdiklatjenjang`
--
ALTER TABLE `drdiklatjenjang`
  ADD PRIMARY KEY (`id_diklatjenjang`);

--
-- Indexes for table `drdiklat_teknis`
--
ALTER TABLE `drdiklat_teknis`
  ADD PRIMARY KEY (`id_diklat_teknis`);

--
-- Indexes for table `drjabatanf`
--
ALTER TABLE `drjabatanf`
  ADD PRIMARY KEY (`id_drjabatanf`);

--
-- Indexes for table `drjabatans`
--
ALTER TABLE `drjabatans`
  ADD PRIMARY KEY (`id_drjabatans`);

--
-- Indexes for table `drpangkat`
--
ALTER TABLE `drpangkat`
  ADD PRIMARY KEY (`id_drpangkat`),
  ADD KEY `drpangkat_ibfk_1` (`nip`);

--
-- Indexes for table `drpekerjaan`
--
ALTER TABLE `drpekerjaan`
  ADD PRIMARY KEY (`id_drpekerjaan`);

--
-- Indexes for table `drpendidikan`
--
ALTER TABLE `drpendidikan`
  ADD PRIMARY KEY (`id_drpendidikan`);

--
-- Indexes for table `dtanak`
--
ALTER TABLE `dtanak`
  ADD PRIMARY KEY (`id_dtanak`);

--
-- Indexes for table `dtawal`
--
ALTER TABLE `dtawal`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `dtawal_lama`
--
ALTER TABLE `dtawal_lama`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `dtdp3`
--
ALTER TABLE `dtdp3`
  ADD PRIMARY KEY (`id_dtdp3`);

--
-- Indexes for table `dtistrisuami`
--
ALTER TABLE `dtistrisuami`
  ADD PRIMARY KEY (`id_dtistri`);

--
-- Indexes for table `dtpegawai`
--
ALTER TABLE `dtpegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `dtseminar`
--
ALTER TABLE `dtseminar`
  ADD PRIMARY KEY (`id_dtseminar`);

--
-- Indexes for table `dtskp`
--
ALTER TABLE `dtskp`
  ADD PRIMARY KEY (`id_skp`);

--
-- Indexes for table `dtuser`
--
ALTER TABLE `dtuser`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `jab_fungsional`
--
ALTER TABLE `jab_fungsional`
  ADD PRIMARY KEY (`id_jabfungsional`);

--
-- Indexes for table `lapgol`
--
ALTER TABLE `lapgol`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `mst_golongan`
--
ALTER TABLE `mst_golongan`
  ADD PRIMARY KEY (`id_mst_gol`) USING BTREE;

--
-- Indexes for table `mst_jabatanf`
--
ALTER TABLE `mst_jabatanf`
  ADD PRIMARY KEY (`id_mst_jabatanf`);

--
-- Indexes for table `mst_jabatans`
--
ALTER TABLE `mst_jabatans`
  ADD PRIMARY KEY (`id_mst_jabatans`);

--
-- Indexes for table `mst_kualifikasi`
--
ALTER TABLE `mst_kualifikasi`
  ADD PRIMARY KEY (`id_mst_kualifikasi`);

--
-- Indexes for table `mst_pendidikan`
--
ALTER TABLE `mst_pendidikan`
  ADD PRIMARY KEY (`id_mst_pendidikan`);

--
-- Indexes for table `mst_status`
--
ALTER TABLE `mst_status`
  ADD PRIMARY KEY (`id_mst_status`);

--
-- Indexes for table `mst_unitkerja`
--
ALTER TABLE `mst_unitkerja`
  ADD PRIMARY KEY (`id_mst_unit`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `browser`
--
ALTER TABLE `browser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `datatandajasa`
--
ALTER TABLE `datatandajasa`
  MODIFY `id_datatandajasa` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drdiklatfungsional`
--
ALTER TABLE `drdiklatfungsional`
  MODIFY `id_diklatfungsional` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drdiklatjenjang`
--
ALTER TABLE `drdiklatjenjang`
  MODIFY `id_diklatjenjang` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drdiklat_teknis`
--
ALTER TABLE `drdiklat_teknis`
  MODIFY `id_diklat_teknis` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drjabatanf`
--
ALTER TABLE `drjabatanf`
  MODIFY `id_drjabatanf` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drjabatans`
--
ALTER TABLE `drjabatans`
  MODIFY `id_drjabatans` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drpangkat`
--
ALTER TABLE `drpangkat`
  MODIFY `id_drpangkat` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `drpekerjaan`
--
ALTER TABLE `drpekerjaan`
  MODIFY `id_drpekerjaan` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drpendidikan`
--
ALTER TABLE `drpendidikan`
  MODIFY `id_drpendidikan` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtanak`
--
ALTER TABLE `dtanak`
  MODIFY `id_dtanak` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtdp3`
--
ALTER TABLE `dtdp3`
  MODIFY `id_dtdp3` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtistrisuami`
--
ALTER TABLE `dtistrisuami`
  MODIFY `id_dtistri` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtseminar`
--
ALTER TABLE `dtseminar`
  MODIFY `id_dtseminar` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtskp`
--
ALTER TABLE `dtskp`
  MODIFY `id_skp` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtuser`
--
ALTER TABLE `dtuser`
  MODIFY `iduser` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jab_fungsional`
--
ALTER TABLE `jab_fungsional`
  MODIFY `id_jabfungsional` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `mst_golongan`
--
ALTER TABLE `mst_golongan`
  MODIFY `id_mst_gol` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mst_jabatanf`
--
ALTER TABLE `mst_jabatanf`
  MODIFY `id_mst_jabatanf` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mst_jabatans`
--
ALTER TABLE `mst_jabatans`
  MODIFY `id_mst_jabatans` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mst_kualifikasi`
--
ALTER TABLE `mst_kualifikasi`
  MODIFY `id_mst_kualifikasi` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_pendidikan`
--
ALTER TABLE `mst_pendidikan`
  MODIFY `id_mst_pendidikan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_status`
--
ALTER TABLE `mst_status`
  MODIFY `id_mst_status` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_unitkerja`
--
ALTER TABLE `mst_unitkerja`
  MODIFY `id_mst_unit` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drpangkat`
--
ALTER TABLE `drpangkat`
  ADD CONSTRAINT `drpangkat_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dtawal` (`nip`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
