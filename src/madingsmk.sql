-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 04:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madingsmk`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `Id_artikel` varchar(5) NOT NULL,
  `Id_jenis` varchar(5) NOT NULL,
  `Status` enum('Diterima','Ditolak','Menunggu Persetujuan') NOT NULL,
  `Judul` text NOT NULL,
  `Publish` varchar(15) NOT NULL,
  `Isi` text NOT NULL,
  `Tanggal` date NOT NULL,
  `Img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`Id_artikel`, `Id_jenis`, `Status`, `Judul`, `Publish`, `Isi`, `Tanggal`, `Img`) VALUES
('1', '1', 'Diterima', 'Curabitur faucibus justo sodales, interdum dolor vulputate, consequat neque. Aliquam sed leo at est molestie tincidunt. Suspendisse ', 'fringilla ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In molestie vel dolor at venenatis. Duis hendrerit vehicula nisi, varius fringilla libero maximus eu. Donec dictum, orci ut volutpat pulvinar, leo orci faucibus massa, sit amet varius nibh quam sit amet augue. Duis quis mi tellus. Suspendisse viverra aliquet purus, vitae venenatis mi fermentum non. Donec efficitur, ipsum in ultricies vulputate, felis tellus placerat massa, non feugiat turpis quam a urna. Donec nec purus convallis, molestie neque eu, dapibus eros. Praesent imperdiet risus id felis hendrerit rhoncus. Nulla hendrerit eros quis facilisis imperdiet. Morbi lacinia arcu eget viverra auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque vel enim erat. Curabitur faucibus justo sodales, interdum dolor vulputate, consequat neque. Aliquam sed leo at est molestie tincidunt. Suspendisse in neque sit amet mi efficitur gravida sed sit amet risus. Nunc tincidunt dolor velit, in cursus felis euismod egestas. Sed sit amet enim velit. Vivamus tincidunt urna odio, a commodo arcu facilisis nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam et rhoncus dui. Ut sed urna et sapien sagittis sodales. Donec ac tincidunt lorem. Etiam euismod interdum diam', '2023-11-07', 'none'),
('2', '1', 'Ditolak', 'adipiscing elit. In', 'quis mi te', 'tellus sed nisi bibendum feugiat vitae vitae lacus. Donec porta lacus nisi, vel consectetur arcu dapibus sit amet. Ut fringilla lorem eget erat dapibus mollis. Pellentesque id rutrum turpis, at aliquet urna. Etiam interdum rutrum mauris, a sodales dui pharetra sed. Morbi eget magna quis lorem luctus euismod. Nulla sagittis mi et diam fringilla, et venenatis leo venenatis. Proin vulputate bibendum fringilla. Phasellus urna enim, aliquet sit amet elementum eu, venenatis et ipsum. Integer in dolor dui. Duis maximus tincidunt arcu eget sollicitudin. Nulla facilisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;', '2023-11-16', 'none'),
('3', '1', 'Menunggu Persetujuan', 'libero maximus eu. Donec dictum', 'ultricies', ' tincidunt. Suspendisse in neque sit amet mi efficitur gravida sed sit amet risus. Nunc tincidunt dolor velit, in cursus felis euismod egestas. Sed sit amet enim velit. Vivamus tincidunt urna odio, a commodo arcu facilisis nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam et rhoncus dui. Ut sed urna et sapien sagittis sodales. Donec ac tincidunt lorem. Etiam euismod interdum diam. Nulla id tellus sed nisi bibendum feugiat vitae vitae lacus. Donec porta lacus nisi, vel consectetur arcu dapibus sit amet. Ut fringilla lorem eget erat dapibus m', '2023-10-12', 'none'),
('4', '2', 'Menunggu Persetujuan', 'hendrerit rhoncus. Nulla hendrerit eros quis facilisis', 'viverra auctor', 'dui. Duis maximus tincidunt arcu eget sollicitudin. Nulla facilisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ut suscipit leo. Nam ultrices dictum leo in gravida. Donec non tortor tincidunt, commodo purus et, ultrices tellus. Nullam faucibus tempor dolor, eget efficitur elit mattis non. Duis rhoncus porta augue ut dictum. Etiam vulputate erat tellus, sit amet dignissim urna rhoncus vitae. Quisque iaculis erat lobortis, rutrum enim non, maximus massa. Etiam vestibulum lectus at nisl vestibulum mattis. Maecenas at egestas enim. Cras eu orci et lorem pretium pulvinar molestie euismod risus. Donec vitae sodales ante, in tincidunt purus. Donec placerat nunc dolor, vel facilisis mauris rhoncus et. Phasellus ultrices euismod ante et lacinia. Pellentesque rhoncus laoreet augue non porttitor. Quisque risus lacus, dictum vel purus ac, volutpat auctor elit. Nulla aliquet, felis sagittis pretium egestas, mi ante ullamcorper ante, ac accumsan sem velit ut ma', '2023-09-28', 'none'),
('5', '2', 'Diterima', 'vulputate, felis tellus placerat massa, non feugiat turpis quam', 'Quisque vel', 'olutpat pulvinar, leo orci faucibus massa, sit amet varius nibh quam sit amet augue. Duis quis mi tellus. Suspendisse viverra aliquet purus, vitae venenatis mi fermentum non. Donec efficitur, ipsum in ultricies vulputate, felis tellus placerat massa, non feugiat turpis quam a urna. Donec nec purus convallis, molestie neque eu, dapibus eros. Praesent imperdiet risus id felis hendrerit rhoncus. Nulla hendrerit eros quis facilisis imperdiet. Morbi lacinia arcu eget viverra auctor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque vel enim erat. Curabitur faucibus justo sodales, interd', '2023-08-19', 'none'),
('6', '3', 'Diterima', ' euismod egestas. Sed sit', 'ad litora ', 'sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam et rhoncus dui. Ut sed urna et sapien sagittis sodales. Donec ac tincidunt lorem. Etiam euismod interdum diam. Nulla id tellus sed nisi bibendum feugiat vitae vitae lacus. Donec porta lacus nisi, vel consectetur arcu dapibus sit amet. Ut fringilla lorem eget erat dapibus mollis. Pellentesque id rutrum turpis, at aliquet urna. Etiam interdum rutrum mauris, a sodales dui pharetra sed. Morbi eget magna quis lorem luctus euismod. Nulla sagittis mi et diam fringilla, et venenatis leo venenatis. Proin vulputate bibendum fringilla. Phasellus urna enim, aliquet sit amet elementum eu, venenatis et ipsum. Integer in dolor dui. Duis maximus tincidunt arcu eget sollicitudin. Nulla facilisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque habitant morbi tristique senectus et netus et malesuada fames', '2023-11-16', 'none'),
('7', '3', 'Ditolak', 'faucibus justo sodales, interdum dolor vulputate, consequat neque', 'Etiam euismod', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque vel enim erat. Curabitur faucibus justo sodales, interdum dolor vulputate, consequat neque. Aliquam sed leo at est molestie tincidunt. Suspendisse in neque sit amet mi efficitur gravida sed sit amet risus. Nunc tincidunt dolor velit, in cursus felis euismod egestas. Sed sit amet enim velit. Vivamus tincidunt urna odio, a commodo arcu facilisis nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam et rhoncus dui. Ut sed urna et sapien sagittis sodales. Donec ac tincidunt lorem. Etiam euismod interdum', '2023-11-11', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `Id_foto` varchar(5) NOT NULL,
  `Judul` text NOT NULL,
  `Img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`Id_foto`, `Judul`, `Img`) VALUES
('1', 'maximus eu', 'none'),
('2', 'Duis quis', 'none'),
('3', 'Vestibulum ante ipsum', 'none'),
('4', 'dapibus eros', 'none'),
('5', 'fringilla libero', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `Id_pengumuman` varchar(5) NOT NULL,
  `Judul_pengumuman` text NOT NULL,
  `Isi_pengumuman` text NOT NULL,
  `Tanggal_pengumuman` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`Id_pengumuman`, `Judul_pengumuman`, `Isi_pengumuman`, `Tanggal_pengumuman`) VALUES
('1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In molestie vel dolor at venenatis. Duis hendrerit vehicula nisi, varius fringilla libero maximus eu. Donec dictum, orci ut volutpat pulvinar, leo orci faucibus massa, sit amet varius nibh quam sit amet augue. Duis quis mi tellus. Suspendisse viverra aliquet', '2013-04-14'),
('10', 'Cras vulputate leo id ligula fringilla iaculis.', 'malesuada fames ac turpis egestas. Ut ut suscipit leo. Nam ultrices dictum leo in gravida. Donec non tortor tincidunt, commodo purus et, ultrices tellus. Nullam faucibus tempor dolor, eget efficitur elit mattis non. Duis rhoncus porta augue ut dictum. Etiam vulputate erat tellus, sit amet dignissim urna rhoncus vitae. Quisque iaculis erat lobortis, rutrum enim non, maximus massa. Etiam vestibulum', '1975-01-20'),
('2', 'In placerat erat eleifend odio tincidunt, convallis convallis turpis hendrerit.', 'turpis quam a urna. Donec nec purus convallis, molestie neque eu, dapibus eros. Praesent imperdiet risus id felis hendrerit rhoncus. Nulla hendrerit eros quis facilisis imperdiet. Morbi lacinia arcu eget viverra auctor. Vestibulum ante ipsum primis in faucibus', '1956-07-27'),
('3', 'Fusce id ligula malesuada, suscipit odio nec, suscipit tortor.', 'Suspendisse in neque sit amet mi efficitur gravida sed sit amet risus. Nunc tincidunt dolor velit, in cursus felis euismod egestas. Sed sit amet enim velit. Vivamus tincidunt urna odio, a commodo arcu facilisis nec. Class aptent taciti sociosqu ad litora torquent per', '2016-08-19'),
('4', 'Aliquam et enim sed arcu ullamcorper semper a et massa.', 'bibendum feugiat vitae vitae lacus. Donec porta lacus nisi, vel consectetur arcu dapibus sit amet. Ut fringilla lorem eget erat dapibus mollis. Pellentesque id rutrum turpis, at aliquet urna. Etiam interdum rutrum mauris, a sodales dui pharetra sed. Morbi eget magna quis lorem luctus euismod. Nulla sagittis mi et diam fringilla, et venenatis leo venenatis. Proin vulputate bibendum fringilla. Phasellus', '1956-10-21'),
('5', 'Donec in urna vitae ipsum rhoncus porttitor id at sem.', 'magna quis lorem luctus euismod. Nulla sagittis mi et diam fringilla, et venenatis leo venenatis. Proin vulputate bibendum fringilla. Phasellus', '1974-01-03'),
('6', 'Donec ut neque rutrum, vestibulum lorem sed, volutpat nisi.', 'senectus et netus et malesuada fames ac turpis egestas. Ut ut suscipit leo. Nam ultrices dictum leo in gravida. Donec non tortor tincidunt, commodo purus et, ultrices tellus. Nullam faucibus tempor dolor, eget efficitur elit mattis non. Duis rhoncus porta augue ut dictum. Etiam vulputate erat tellus, sit amet dignissim urna rhoncus vitae. Quisque iaculis erat lobortis, rutrum enim non, maximus massa', '2003-09-29'),
('7', 'Aliquam tempus tortor id dolor eleifend tincidunt.', 'sit amet risus. Nunc tincidunt dolor velit, in cursus felis euismod egestas. Sed sit amet enim velit. Vivamus tincidunt urna odio, a commodo', '2001-06-16'),
('8', 'Praesent laoreet risus sed ex pharetra cursus.', 'dapibus mollis. Pellentesque id rutrum turpis, at aliquet urna. Etiam interdum rutrum mauris, a sodales dui pharetra sed. Morbi eget magna', '1974-01-03'),
('9', 'Pellentesque at elit dictum, semper libero a, maximus massa.', 'commodo purus et, ultrices tellus. Nullam faucibus tempor dolor, eget efficitur elit mattis non. Duis rhoncus porta augue ut dictum. Etiam vulputate erat tellus, sit amet dignissim urna rhoncus vitae. Quisque iaculis erat lobortis, rutrum enim non, maximus massa. Etiam vestibulum lectus at nisl vestibulum mattis. Maecenas at egestas enim. Cras eu orci et lorem pretium pulvinar molestie euismod risus', '2008-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `Id_siswa` varchar(5) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Nama_siswa` varchar(50) NOT NULL,
  `Jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `Tahun_masuk` int(20) NOT NULL,
  `Alamat` text NOT NULL,
  `Tempat_lahir` varchar(50) NOT NULL,
  `Tanggal_lahir` date NOT NULL,
  `No_hp` varchar(13) NOT NULL,
  `Foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`Id_siswa`, `Username`, `Nama_siswa`, `Jenis_kelamin`, `Tahun_masuk`, `Alamat`, `Tempat_lahir`, `Tanggal_lahir`, `No_hp`, `Foto`) VALUES
('1', 'nurja', 'Nurjanah', 'perempuan', 2023, 'JL CIBEUREUM MULYAHARJA RT4/8 BOGOR ', 'BOGOR', '2013-04-14', '081586762777', 'none'),
('2', 'sidik', 'Shidhiq Rizky Purnomo', 'laki-laki', 2023, 'KP. BONDOL RT. 01/05 RT. ATANG SENJAYA KEMANG', 'BOGOR', '1997-03-27', '087870709005', 'none'),
('3', 'yuda', 'Yuda Nur Cahyono', 'laki-laki', 2023, 'KOMPLEK ABRI SUKASARI RT. 02/03 LAWANGGITUNG', 'BOGOR', '1956-10-21', '0895404036464', 'none'),
('4', 'fahri', 'Fahriza Yuswadi', 'laki-laki', 2023, 'CIJAYANTI 2 RT 06/02 BABAKAN MADANG', 'BANDUNG', '1991-10-31', '087770285199', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `Nama_user` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Level` enum('Admin','Waka Kesiswaan','Siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `Nama_user`, `Username`, `Password`, `Level`) VALUES
('1', 'Rani Oktia Desi', 'rani', 'rani123', 'Admin'),
('2', 'Ahmad Sumarlin', 'ahmad', 'ahmad123', 'Waka Kesiswaan'),
('3', 'Nurjanah', 'nurja', 'nurja123', 'Siswa'),
('4', 'Shidhiq Rizky Purnomo', 'sidik', 'sidik123', 'Siswa'),
('5', 'Yuda Nur Cahyono', 'yuda', 'yuda123', 'Siswa'),
('6', 'Fahriza Yuswadi', 'fahri', 'fahri123', 'Siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`Id_artikel`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`Id_foto`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`Id_pengumuman`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Id_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
