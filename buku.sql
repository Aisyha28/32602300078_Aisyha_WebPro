-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2025 at 02:35 AM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kode_buku` varchar(50) NOT NULL,
  `ketersediaan` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `created_at`, `updated_at`, `kode_buku`, `ketersediaan`) VALUES
(1, 'Rumah', 'ilza', 'dzulifikar', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK001', 0),
(2, 'Tangga', 'novi', 'dzulifikar', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK002', 1),
(3, 'Jejak Aksara', 'rahman', 'aksara prima', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK003', 0),
(4, 'Hujan di Bulan Juni', 'sapardi', 'gramedia', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK004', 1),
(5, 'Bulan Merah', 'anita', 'literasia', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK005', 0),
(6, 'Matahari Pagi', 'bagas', 'cahaya ilmu', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK006', 1),
(7, 'Lautan Kata', 'mira', 'pena raya', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK007', 1),
(8, 'Bumi Manusia', 'pramoedya', 'lentera', '2019', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK008', 0),
(9, 'Dunia Tanpa Warna', 'haruki', 'harfa media', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK009', 1),
(10, 'Senja Terakhir', 'ilza', 'dzulifikar', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK010', 1),
(11, 'Pelangi Senja', 'nabila', 'cahaya ilmu', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK011', 1),
(12, 'Bayangan Hitam', 'farhan', 'warna media', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK012', 0),
(13, 'Cinta di Ujung Waktu', 'tiara', 'aksara prima', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK013', 1),
(14, 'Sepotong Langit', 'fahmi', 'pena raya', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK014', 1),
(15, 'Lelaki dari Timur', 'rahmat', 'lentera', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK015', 0),
(16, 'Perjalanan Sunyi', 'nurul', 'literasia', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK016', 1),
(17, 'Dibalik Kabut', 'muhammad', 'dzulifikar', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK017', 1),
(18, 'Langkah Kecil', 'dewi', 'warna media', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK018', 1),
(19, 'Gerimis Musim Semi', 'indra', 'aksara prima', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK019', 0),
(20, 'Batu dan Pasir', 'anisa', 'gramedia', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK020', 1),
(21, 'Titik Balik', 'yusuf', 'literasia', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK021', 1),
(22, 'Bayang Masa Lalu', 'sari', 'pena raya', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK022', 0),
(23, 'Melodi Hujan', 'ilham', 'dzulifikar', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK023', 1),
(24, 'Warna-Warni Luka', 'nina', 'cahaya ilmu', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK024', 1),
(25, 'Senandung Malam', 'agung', 'warna media', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK025', 0),
(26, 'Langit Terluka', 'dinda', 'aksara prima', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK026', 1),
(27, 'Laut yang Menanti', 'budi', 'lentera', '2019', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK027', 1),
(28, 'Mimpi yang Hilang', 'siti', 'literasia', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK028', 0),
(29, 'Gelombang Asa', 'ridho', 'pena raya', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK029', 1),
(30, 'Jendela Kenangan', 'zara', 'gramedia', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK030', 1),
(31, 'Rindu yang Pergi', 'fajar', 'dzulifikar', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK031', 0),
(32, 'Suara Hati', 'maya', 'warna media', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK032', 1),
(33, 'Aroma Tanah Basah', 'reza', 'aksara prima', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK033', 1),
(34, 'Cahaya di Atas Awan', 'aisyah', 'literasia', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK034', 1),
(35, 'Hitam Putih', 'kevin', 'cahaya ilmu', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK035', 0),
(36, 'Harapan Baru', 'salsabila', 'gramedia', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK036', 1),
(37, 'Kisah Lama', 'niko', 'pena raya', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK037', 1),
(38, 'Musim yang Pergi', 'arina', 'dzulifikar', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK038', 0),
(39, 'Peluk Dingin', 'adit', 'warna media', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK039', 1),
(40, 'Bulan Purnama', 'nur', 'aksara prima', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK040', 1),
(41, 'Langkah Tak Terlihat', 'farida', 'cahaya ilmu', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK041', 0),
(42, 'Bintang yang Jatuh', 'tama', 'lentera', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK042', 1),
(43, 'Buku Kehidupan', 'vina', 'pena raya', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK043', 1),
(44, 'Tarian Bintang', 'fadil', 'gramedia', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK044', 0),
(45, 'Tebing Kenangan', 'irma', 'dzulifikar', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK045', 1),
(46, 'Menatap Senja', 'rizky', 'warna media', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK046', 1),
(47, 'Hijau Lumut', 'lala', 'literasia', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK047', 0),
(48, 'Jejak Musim', 'andre', 'aksara prima', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK048', 1),
(49, 'Langit dan Bumi', 'vika', 'pena raya', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK049', 1),
(50, 'Kepingan Asa', 'danil', 'lentera', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK050', 0),
(51, 'Dari Ujung Pena', 'kiki', 'dzulifikar', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK051', 1),
(52, 'Titik Air', 'dian', 'cahaya ilmu', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK052', 1),
(53, 'Bayangan Pagi', 'yani', 'warna media', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK053', 0),
(54, 'Senandung Awan', 'fitri', 'literasia', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK054', 1),
(55, 'Perahu Usang', 'arif', 'pena raya', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK055', 1),
(56, 'Senyap', 'mira', 'aksara prima', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK056', 0),
(57, 'Denting Hati', 'faiz', 'gramedia', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK057', 1),
(58, 'Bayang-Bayang', 'linda', 'cahaya ilmu', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK058', 1),
(59, 'Satu Nama', 'joko', 'warna media', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK059', 1),
(60, 'Sisa Cinta', 'lia', 'aksara prima', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK060', 0),
(61, 'Batas Senja', 'helmi', 'dzulifikar', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK061', 1),
(62, 'Langit Tak Berbintang', 'ana', 'literasia', '2021', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK062', 1),
(63, 'Surat dari Masa Lalu', 'nino', 'pena raya', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK063', 1),
(64, 'Peluk Awan', 'syifa', 'cahaya ilmu', '2020', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK064', 0),
(65, 'Nada Terakhir', 'hanna', 'warna media', '2024', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK065', 1),
(66, 'Ruang Kosong', 'aditya', 'aksara prima', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK066', 1),
(67, 'Hilang di Tengah Hujan', 'rafi', 'lentera', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK067', 0),
(68, 'Kota Tanpa Cahaya', 'salsa', 'gramedia', '2023', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK068', 1),
(69, 'Rindu yang Sama', 'ilza', 'dzulifikar', '2025', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK069', 1),
(70, 'Kenangan Terpendam', 'della', 'literasia', '2022', '2025-08-02 07:34:02', '2025-08-02 07:34:02', 'BK070', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
