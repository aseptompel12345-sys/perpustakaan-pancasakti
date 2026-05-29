-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2026 at 04:26 AM
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
-- Database: `simulasi_uji_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id_admin` int(11) NOT NULL,
  `Id_user` int(11) NOT NULL,
  `Nama_lengkap` varchar(100) NOT NULL,
  `Jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `Agama` varchar(100) NOT NULL,
  `Alamat` text NOT NULL,
  `No_tlp` varchar(100) NOT NULL,
  `Jabatan` varchar(100) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `Tgl_daftar` date NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id_admin`, `Id_user`, `Nama_lengkap`, `Jenis_kelamin`, `Agama`, `Alamat`, `No_tlp`, `Jabatan`, `Foto`, `Tgl_daftar`, `Status`) VALUES
(2, 42, 'Gen', 'Laki-laki', 'Islam', 'jalan melati', '08564454566', 'Pembuat Aplikasi', '1779943693_download.jfif', '2026-04-04', 'Aktif'),
(3, 43, 'joko', 'Perempuan', 'Islam', 'jalan mawar', '0856547686', 'Petugas', '1779944060_WIN_20241112_11_52_17_Pro.jpg', '2026-04-04', 'Tidak Aktif'),
(4, 48, 'Maulana IBrahim Muvik', 'Laki-laki', 'Islam', 'PERWAH', '2147483647', 'Pembuat Aplikasi', 'ADM_04042026151849.jfif', '2026-04-04', 'Tidak Aktif'),
(5, 57, 'rapi', 'Laki-laki', 'Islam', 'sdfgsdger', '45265426', 'petugas', 'ADM_05042026080309.jfif', '2026-04-05', 'Tidak Aktif'),
(6, 75, 'jj', 'Laki-laki', 'Islam', 'jjj', '676547', 'jj', 'ADM_18042026220209.jpeg', '2026-04-18', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `Id_anggota` int(11) NOT NULL,
  `Id_user` int(11) NOT NULL,
  `Jenis_anggota` enum('Siswa','Guru','Kelas') NOT NULL,
  `Tgl_daftar` date NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`Id_anggota`, `Id_user`, `Jenis_anggota`, `Tgl_daftar`, `Status`) VALUES
(22, 24, 'Kelas', '2026-02-18', 'Aktif'),
(23, 25, 'Kelas', '2026-02-18', 'Aktif'),
(26, 28, 'Kelas', '2026-02-18', 'Aktif'),
(60, 70, 'Guru', '2026-04-11', 'Tidak Aktif'),
(61, 71, 'Siswa', '2026-04-11', 'Aktif'),
(62, 72, 'Kelas', '2026-04-13', 'Tidak Aktif'),
(63, 73, 'Guru', '2026-04-13', 'Tidak Aktif'),
(64, 74, 'Kelas', '2026-04-18', 'Tidak Aktif'),
(65, 76, 'Siswa', '2026-05-23', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_guru`
--

CREATE TABLE `anggota_guru` (
  `Id_guru` int(11) NOT NULL,
  `Id_anggota` int(11) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `Nama_guru` varchar(200) NOT NULL,
  `Jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `Agama` varchar(500) NOT NULL,
  `Alamat` text NOT NULL,
  `No_tlp` varchar(100) NOT NULL,
  `Foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_guru`
--

INSERT INTO `anggota_guru` (`Id_guru`, `Id_anggota`, `NIP`, `Nama_guru`, `Jenis_kelamin`, `Agama`, `Alamat`, `No_tlp`, `Foto`) VALUES
(14, 60, '56757676', 'gbgugu', 'Laki-laki', 'Islam', 'fgdgfg', '6436536', '11042026085028_56757676.jpeg'),
(15, 63, '532453', 'geri', 'Laki-laki', 'Kristen', 'perwah', '0858678666666', '13042026190940_532453.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_kelas`
--

CREATE TABLE `anggota_kelas` (
  `Id_kelas` int(11) NOT NULL,
  `Id_anggota` int(11) NOT NULL,
  `Nama_kelas` varchar(50) NOT NULL,
  `Wali_kelas` varchar(100) NOT NULL,
  `Jumlah_siswa` int(11) NOT NULL,
  `Penanggung_jawab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_kelas`
--

INSERT INTO `anggota_kelas` (`Id_kelas`, `Id_anggota`, `Nama_kelas`, `Wali_kelas`, `Jumlah_siswa`, `Penanggung_jawab`) VALUES
(3, 22, '11 TL', 'Pak.Asep Deril S.pd', 21, 'Suharto'),
(4, 23, '10 Hotel', 'jhububu', 898798, 'MAulana'),
(5, 26, '11 Otomotif', 'PAk.Jajang Wahidin Spd.i', 55, 'Suharto'),
(13, 62, '11 PPLG', 'PAk.Jajang Wahidin Spd.i', 55, 'MAulana'),
(14, 64, 'y', 'rtyr', 66, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_siswa`
--

CREATE TABLE `anggota_siswa` (
  `Id_siswa` int(11) NOT NULL,
  `Id_anggota` int(11) NOT NULL,
  `NISN` varchar(20) NOT NULL,
  `Nama_siswa` varchar(100) NOT NULL,
  `Jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `Agama` varchar(20) NOT NULL,
  `Kelas` int(11) NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `Alamat` text NOT NULL,
  `No_tlp` varchar(100) NOT NULL,
  `Foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_siswa`
--

INSERT INTO `anggota_siswa` (`Id_siswa`, `Id_anggota`, `NISN`, `Nama_siswa`, `Jenis_kelamin`, `Agama`, `Kelas`, `Jurusan`, `Alamat`, `No_tlp`, `Foto`) VALUES
(33, 61, '53453345', 'Maulana Ibrahim Muvik', 'Laki-laki', 'Islam', 12, 'pplg', 'perwah', '08988978257', '1779962688_WIN_20250114_13_22_26_Pro.jpg'),
(34, 65, '63242523', 'bejo', 'Laki-laki', 'Islam', 11, 'hotel', 'gfdsgrt', '634634656', '23052026184747_63242523.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `Foto` varchar(50) NOT NULL,
  `Id_buku` int(11) NOT NULL,
  `ISBN` varchar(30) NOT NULL,
  `Judul` varchar(150) NOT NULL,
  `Pengarang` varchar(100) NOT NULL,
  `Penerbit` varchar(100) NOT NULL,
  `Tahun_terbit` year(4) NOT NULL,
  `Bidang_buku` enum('Pendidikan','Fiksi','Nonfiksi','Lain-lain') NOT NULL,
  `Lokasi_rak` varchar(500) NOT NULL,
  `Stok_awal_buku` int(11) NOT NULL,
  `Stok_buku_tersedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`Foto`, `Id_buku`, `ISBN`, `Judul`, `Pengarang`, `Penerbit`, `Tahun_terbit`, `Bidang_buku`, `Lokasi_rak`, `Stok_awal_buku`, `Stok_buku_tersedia`) VALUES
('08042026194357_69d64d8d0af8f.jfif', 21, '24635', 'MATEMATIKA', 'gfddgs', 'sdfg', '2000', 'Pendidikan', 'Mapel Umum', 30, 30),
('13042026202918_69dcefaeeb67b.jpeg', 22, '446', 'Pendidikan Agama Islam dan Budi Pekerti', 'Maulana', 'Maulana', '2003', 'Pendidikan', 'Mapel Umum', 83, 80),
('14042026093029_69dda6c5ec5a5.jpeg', 23, '64654', 'Sejarah Indonesia', 'Maulana', 'Maulana', '2009', 'Pendidikan', 'Mapel Umum', 44, 36),
('15042026095000_69defcd875933.jpg', 24, '3525', 'PJOK', 'Maulana', 'Maulana', '2009', 'Pendidikan', 'Mapel Umum', 45, 45);

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `Id_denda` int(11) NOT NULL,
  `Nilai` int(11) NOT NULL,
  `Tgl_diatur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`Id_denda`, `Nilai`, `Tgl_diatur`) VALUES
(1, 2000, '2026-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `Id_kunjungan` int(11) NOT NULL,
  `Tgl_kunjungan` date NOT NULL,
  `Jam_kunjungan` time NOT NULL,
  `Foto_kunjungan` text NOT NULL,
  `Id_anggota` int(11) NOT NULL,
  `Nama_pengunjung` varchar(190) NOT NULL,
  `Jenis_anggota` enum('Siswa','Guru','Kelas') NOT NULL,
  `Detail_identitas` text NOT NULL,
  `Keperluan` varchar(100) NOT NULL,
  `Admin_pemberi_izin` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`Id_kunjungan`, `Tgl_kunjungan`, `Jam_kunjungan`, `Foto_kunjungan`, `Id_anggota`, `Nama_pengunjung`, `Jenis_anggota`, `Detail_identitas`, `Keperluan`, `Admin_pemberi_izin`) VALUES
(108, '2026-05-13', '12:20:58', 'FOTOS/foto_siswa/11042026194216_53453345.jpeg', 61, 'Maulana Ibrahim Muvik', 'Siswa', 'Kelas: 11\r\nJurusan: pplg\r\nNo. Tlp: 765677776', 'Membaca', 'Tuti'),
(109, '2026-05-13', '12:21:44', 'FOTOS/foto_siswa/11042026194216_53453345.jpeg', 61, 'Maulana Ibrahim Muvik', 'Siswa', 'Kelas: 11\r\nJurusan: pplg\r\nNo. Tlp: 765677776', 'Berdiskusi', 'Menunggu Izin'),
(110, '2026-05-24', '16:48:06', 'FOTOS/foto_siswa/11042026194216_53453345.jpeg', 61, 'Maulana Ibrahim Muvik', 'Siswa', 'Kelas: 11\r\nJurusan: pplg\r\nNo. Tlp: 765677776', 'Membaca', 'Gen'),
(111, '2026-05-24', '16:48:37', 'foto/Logo.png', 62, '11 PPLG', 'Kelas', 'Wali Kelas: PAk.Jajang Wahidin Spd.i\r\nPenanggung Jawab: MAulana', 'Berdiskusi', 'Gen'),
(112, '2026-05-24', '17:37:40', 'foto/Logo.png', 62, '11 PPLG', 'Kelas', 'Wali Kelas: PAk.Jajang Wahidin Spd.i\r\nPenanggung Jawab: MAulana', 'Berdiskusi', 'Gen'),
(113, '2026-05-24', '17:47:03', 'foto/Logo.png', 62, '11 PPLG', 'Kelas', 'Wali Kelas: PAk.Jajang Wahidin Spd.i\r\nPenanggung Jawab: MAulana', 'Mengerjakan Tugas', 'Menunggu Izin');

-- --------------------------------------------------------

--
-- Table structure for table `notif_penerima`
--

CREATE TABLE `notif_penerima` (
  `id_notif_penerima` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `tabel_asal` varchar(100) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `waktu_terima` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notif_penerima`
--

INSERT INTO `notif_penerima` (`id_notif_penerima`, `id_transaksi`, `tabel_asal`, `id_admin`, `waktu_terima`) VALUES
(42, 82, 'peminjaman', 43, '2026-04-23 07:01:22'),
(43, 102, 'kunjungan', 43, '2026-04-23 07:02:53'),
(46, 104, 'kunjungan', 43, '2026-04-23 07:29:48'),
(47, 105, 'kunjungan', 43, '2026-04-23 07:31:16'),
(50, 102, 'kunjungan', 42, '2026-04-23 07:42:25'),
(51, 104, 'kunjungan', 42, '2026-04-23 07:42:25'),
(52, 105, 'kunjungan', 42, '2026-04-23 07:42:25'),
(53, 82, 'peminjaman', 42, '2026-04-23 07:42:25'),
(56, 99, 'pengembalian', 42, '2026-05-08 01:59:04'),
(57, 100, 'pengembalian', 42, '2026-05-12 01:38:38'),
(63, 104, 'pengembalian', 42, '2026-05-12 02:24:58'),
(65, 99, 'pengembalian', 43, '2026-05-12 02:52:40'),
(66, 100, 'pengembalian', 43, '2026-05-12 02:52:41'),
(68, 104, 'pengembalian', 43, '2026-05-12 02:52:41'),
(69, 107, 'pengembalian', 43, '2026-05-13 02:31:53'),
(81, 109, 'kunjungan', 43, '2026-05-13 05:21:56'),
(82, 109, 'kunjungan', 42, '2026-05-22 10:01:22'),
(111, 113, 'kunjungan', 42, '2026-05-24 10:47:20'),
(130, 103, 'peringatan', 42, '2026-05-25 01:24:42'),
(132, 104, 'peringatan', 42, '2026-05-25 01:25:29'),
(133, 113, 'kunjungan', 43, '2026-05-28 03:59:12'),
(134, 103, 'peringatan', 43, '2026-05-28 03:59:12'),
(135, 104, 'peringatan', 43, '2026-05-28 03:59:12'),
(137, 107, 'peringatan', 42, '2026-05-29 01:28:37'),
(138, 107, 'peringatan', 43, '2026-05-29 01:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `Id_peminjaman` int(11) NOT NULL,
  `Foto_peminjam` varchar(10000) NOT NULL,
  `Id_anggota` int(11) NOT NULL,
  `Nama_peminjam` varchar(100) NOT NULL,
  `Detail_identitas` text NOT NULL,
  `Jenis_anggota` varchar(100) NOT NULL,
  `Foto_buku` varchar(1900) NOT NULL,
  `Id_buku` int(11) NOT NULL,
  `Judul_buku` varchar(100) NOT NULL,
  `Lokasi_rak` varchar(100) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Sisa_pinjam` int(11) NOT NULL,
  `Tgl_pinjam` date NOT NULL,
  `Tgl_jatuh_tempo` date NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Admin_pemberi_izin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`Id_peminjaman`, `Foto_peminjam`, `Id_anggota`, `Nama_peminjam`, `Detail_identitas`, `Jenis_anggota`, `Foto_buku`, `Id_buku`, `Judul_buku`, `Lokasi_rak`, `Jumlah`, `Sisa_pinjam`, `Tgl_pinjam`, `Tgl_jatuh_tempo`, `Status`, `Admin_pemberi_izin`) VALUES
(94, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', 21, 'MATEMATIKA', 'Mapel Umum', 10, 0, '2026-05-13', '2026-05-20', 'Selesai', 'Tuti'),
(96, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/15042026095000_69defcd875933.jpg', 24, 'PJOK', 'Mapel Umum', 5, 0, '2026-05-13', '2026-05-20', 'Selesai', 'Tuti'),
(97, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', 21, 'MATEMATIKA', 'Mapel Umum', 1, 0, '2026-05-13', '2026-05-20', 'Selesai', 'Tuti'),
(98, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', 21, 'MATEMATIKA', 'Mapel Umum', 1, 0, '2026-05-13', '2026-05-20', 'Selesai', 'Gen'),
(99, 'FOTOS/foto_siswa/11042026194216_53453345.jpeg', 61, 'Maulana Ibrahim Muvik', 'Kelas: 11 | Jurusan: pplg', 'Siswa', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', 21, 'MATEMATIKA', 'Mapel Umum', 1, 0, '2026-05-13', '2026-05-20', 'Selesai', 'Tuti'),
(100, 'FOTOS/foto_siswa/11042026194216_53453345.jpeg', 61, 'Maulana Ibrahim Muvik', 'Kelas: 11\r\nJurusan: pplg\r\nNo. Tlp: 765677776', 'Siswa', 'FOTOS/foto_sampul_buku/14042026093029_69dda6c5ec5a5.jpeg', 23, 'Sejarah Indonesia', 'Mapel Umum', 1, 1, '2026-05-23', '2026-05-30', 'Dipinjam', 'Gen'),
(101, 'FOTOS/foto_guru/11042026085028_56757676.jpeg', 60, 'gbgugu', 'Jabatan: Guru / Staf Pengajar\r\nNo. Tlp: 6436536', 'Guru', 'FOTOS/foto_sampul_buku/14042026093029_69dda6c5ec5a5.jpeg', 23, 'Sejarah Indonesia', 'Mapel Umum', 1, 1, '2026-05-23', '2026-05-30', 'Dipinjam', 'Gen'),
(102, 'foto/Logo.png', 62, '11 PPLG', 'Wali Kelas: PAk.Jajang Wahidin Spd.i\r\nPenanggung Jawab: MAulana', 'Kelas', 'FOTOS/foto_sampul_buku/13042026202918_69dcefaeeb67b.jpeg', 22, 'Pendidikan Agama Islam dan Budi Pekerti', 'Mapel Umum', 1, 1, '2026-05-24', '2026-05-31', 'Dipinjam', 'Gen'),
(103, 'foto/Logo.png', 62, '11 PPLG', 'Wali Kelas: PAk.Jajang Wahidin Spd.i\r\nPenanggung Jawab: MAulana', 'Kelas', 'FOTOS/foto_sampul_buku/14042026093029_69dda6c5ec5a5.jpeg', 23, 'Sejarah Indonesia', 'Mapel Umum', 10, 5, '2026-05-24', '2026-05-24', 'Sebagian', 'Gen'),
(104, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/14042026093029_69dda6c5ec5a5.jpeg', 23, 'Sejarah Indonesia', 'Mapel Umum', 1, 1, '2026-05-24', '2026-05-24', 'Dipinjam', 'Gen'),
(106, 'FOTOS/foto_guru/13042026190940_532453.jpeg', 63, 'Maulana', 'No.Tlp: 0858678 | Alamat: perwah', 'Guru', 'FOTOS/foto_sampul_buku/13042026202918_69dcefaeeb67b.jpeg', 22, 'Pendidikan Agama Islam dan Budi Pekerti', 'Mapel Umum', 1, 1, '2026-05-28', '2026-06-04', 'Dipinjam', 'joko'),
(107, 'foto/Logo.png', 26, '11 Otomotif', 'Wali Kelas: PAk.Jajang Wahidin Spd.i\r\nPenanggung Jawab: Suharto', 'Kelas', 'FOTOS/foto_sampul_buku/13042026202918_69dcefaeeb67b.jpeg', 22, 'Pendidikan Agama Islam dan Budi Pekerti', 'Mapel Umum', 1, 1, '2026-05-28', '2026-05-28', 'Dipinjam', 'budi');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `Id_pengembalian` int(11) NOT NULL,
  `Id_peminjaman` int(11) NOT NULL,
  `Foto_peminjam` varchar(10000) NOT NULL,
  `Id_anggota` int(11) NOT NULL,
  `Nama_peminjam` varchar(100) NOT NULL,
  `Detail_identitas` text NOT NULL,
  `Jenis_anggota` varchar(100) NOT NULL,
  `Foto_buku` varchar(200) NOT NULL,
  `Id_buku` varchar(100) NOT NULL,
  `Judul_buku` varchar(100) NOT NULL,
  `Lokasi_rak` varchar(100) NOT NULL,
  `Tgl_kembali` date NOT NULL,
  `Jml_kembali` int(11) NOT NULL,
  `Denda` int(11) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Admin_pemberi_izin` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`Id_pengembalian`, `Id_peminjaman`, `Foto_peminjam`, `Id_anggota`, `Nama_peminjam`, `Detail_identitas`, `Jenis_anggota`, `Foto_buku`, `Id_buku`, `Judul_buku`, `Lokasi_rak`, `Tgl_kembali`, `Jml_kembali`, `Denda`, `Status`, `Admin_pemberi_izin`) VALUES
(109, 94, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', '21', 'MATEMATIKA', 'Mapel Umum', '2026-05-13', 2, 0, 'Sebagian', 'Tuti'),
(110, 96, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/15042026095000_69defcd875933.jpg', '24', 'PJOK', 'Mapel Umum', '2026-05-13', 5, 0, 'Selesai', 'Tuti'),
(111, 94, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', '21', 'MATEMATIKA', 'Mapel Umum', '2026-05-13', 3, 0, 'Sebagian', 'Tuti'),
(112, 94, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', '21', 'MATEMATIKA', 'Mapel Umum', '2026-05-13', 5, 0, 'Selesai', 'Tuti'),
(113, 99, 'FOTOS/foto_siswa/11042026194216_53453345.jpeg', 61, 'Maulana Ibrahim Muvik', 'Kelas: 11 | Jurusan: pplg', 'Siswa', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', '21', 'MATEMATIKA', 'Mapel Umum', '2026-05-13', 1, 0, 'Selesai', 'Tuti'),
(114, 98, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', '21', 'MATEMATIKA', 'Mapel Umum', '2026-05-22', 1, 4000, 'Selesai', 'Gen'),
(115, 97, 'foto/logo.png', 62, '11 PPLG', 'Anggota Kelas: 11 PPLG', 'Kelas', 'FOTOS/foto_sampul_buku/08042026194357_69d64d8d0af8f.jfif', '21', 'MATEMATIKA', 'Mapel Umum', '2026-05-22', 1, 10000, 'Selesai', 'Gen'),
(116, 103, 'foto/Logo.png', 62, '11 PPLG', 'Wali Kelas: PAk.Jajang Wahidin Spd.i\r\nPenanggung Jawab: MAulana', 'Kelas', 'FOTOS/foto_sampul_buku/14042026093029_69dda6c5ec5a5.jpeg', '23', 'Sejarah Indonesia', 'Mapel Umum', '2026-05-24', 5, 0, 'Sebagian', 'Gen');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id_user` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Role` enum('admin','anggota') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id_user`, `Username`, `Password`, `Role`) VALUES
(24, 'tl', '$2y$10$A4DkOO1q6jOAsDZVLBUi.eaBdtzXDotKiWB97qnWklI3chMz4RxMW', 'anggota'),
(25, '10hotel', '$2y$10$oT5Z7441unuPs7SIjF/VGeSwhLp4dz9BMU7URhMqs25N8EBr5Jtcy', 'anggota'),
(28, 'oto', '$2y$10$bQwTuGqaNJXrThf/Clx2peuXHWN.X364UNNkPmrBpMi.qFzdWd0ta', 'anggota'),
(42, 'GEN', '$2y$10$fZczA37XxZfM0ERUNDKkd.iXnaCuWrUWtwQZqt0drrjn9jzJnRcrC', 'admin'),
(43, 'joko', '$2y$10$f0pBfgwmtX.mAvTAz8gIaOKXW7Q/.Vke.z98aLC2rBbEHTAg2/vpq', 'admin'),
(48, 'JAMAL', '$2y$10$sqevufnDcbhmscyf9/QeAuSnRkf86LnFsJP6MLNzrIbIIEqRvNEeq', 'admin'),
(57, 'rapi', '$2y$10$UhnFBj3TJpY01McGut7kM.2UuBayitX6jryXWu1/GwmnoNYG.RjWa', 'admin'),
(70, 'hfggggggg', '$2y$10$HMj1.2hpnuaW5Lo4xvK9M.znxCLMm7l24uAcOJG.xITvIlT6QqGa2', 'anggota'),
(71, 'maul', '$2y$10$ni.hvDaVw8lpYvfNnJq6u.Bdqvhm9ig9IrfhQmYEmplDBgCWpTIxi', 'anggota'),
(72, '11 pplg', '$2y$10$oo6QeL5UGh9aC4oBlhlgRuqpeRF2hxpX3BucfBLsPIDNjoBulzNvi', 'anggota'),
(73, 'maulana1', '$2y$10$N/VhXKUksG5.OOVObJOt7OIRfNUbFbQChpUjHD3uqiIqHM5DVdkga', 'anggota'),
(74, 'y', '$2y$10$8Ix1SJAbJlmvRPEOSvxNl.07vxUwBiGmC.42kbHufrf1Q9hi51z/.', 'anggota'),
(75, 'jj', '$2y$10$AoL3LZmU7A4umIho9Y2NduGXp8V9GBPvD/ZoM1Z0yqEBSHCMV6hKS', 'admin'),
(76, 'bejo', '$2y$10$OZYZBUg.nTZlfpGsbCb0LOnSFec5aMD3FLSZRE7nFvZzq16I.xwZS', 'anggota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_admin`),
  ADD KEY `admin_ibfk_1` (`Id_user`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`Id_anggota`),
  ADD KEY `anggota_ibfk_1` (`Id_user`);

--
-- Indexes for table `anggota_guru`
--
ALTER TABLE `anggota_guru`
  ADD PRIMARY KEY (`Id_guru`),
  ADD KEY `Id_anggota` (`Id_anggota`);

--
-- Indexes for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD PRIMARY KEY (`Id_kelas`),
  ADD KEY `Id_anggota` (`Id_anggota`);

--
-- Indexes for table `anggota_siswa`
--
ALTER TABLE `anggota_siswa`
  ADD PRIMARY KEY (`Id_siswa`),
  ADD KEY `Id_anggota` (`Id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Id_buku`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`Id_denda`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`Id_kunjungan`),
  ADD KEY `Id_anggota` (`Id_anggota`);

--
-- Indexes for table `notif_penerima`
--
ALTER TABLE `notif_penerima`
  ADD PRIMARY KEY (`id_notif_penerima`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`Id_peminjaman`),
  ADD KEY `Id_anggota` (`Id_anggota`),
  ADD KEY `Id_buku` (`Id_buku`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`Id_pengembalian`),
  ADD KEY `Id_peminjaman` (`Id_peminjaman`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id_user`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `Id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `anggota_guru`
--
ALTER TABLE `anggota_guru`
  MODIFY `Id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  MODIFY `Id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `anggota_siswa`
--
ALTER TABLE `anggota_siswa`
  MODIFY `Id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `Id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `Id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kunjungan`
--
ALTER TABLE `kunjungan`
  MODIFY `Id_kunjungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `notif_penerima`
--
ALTER TABLE `notif_penerima`
  MODIFY `id_notif_penerima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `Id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `Id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `users` (`Id_user`) ON DELETE CASCADE;

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `users` (`Id_user`) ON DELETE CASCADE;

--
-- Constraints for table `anggota_guru`
--
ALTER TABLE `anggota_guru`
  ADD CONSTRAINT `anggota_guru_ibfk_1` FOREIGN KEY (`Id_anggota`) REFERENCES `anggota` (`Id_anggota`);

--
-- Constraints for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD CONSTRAINT `anggota_kelas_ibfk_1` FOREIGN KEY (`Id_anggota`) REFERENCES `anggota` (`Id_anggota`);

--
-- Constraints for table `anggota_siswa`
--
ALTER TABLE `anggota_siswa`
  ADD CONSTRAINT `anggota_siswa_ibfk_1` FOREIGN KEY (`Id_anggota`) REFERENCES `anggota` (`Id_anggota`);

--
-- Constraints for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD CONSTRAINT `kunjungan_ibfk_1` FOREIGN KEY (`Id_anggota`) REFERENCES `anggota` (`Id_anggota`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`Id_anggota`) REFERENCES `anggota` (`Id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`Id_buku`) REFERENCES `buku` (`Id_buku`);

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`Id_peminjaman`) REFERENCES `peminjaman` (`Id_peminjaman`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
