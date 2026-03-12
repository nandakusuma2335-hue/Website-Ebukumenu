-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2025 at 01:48 PM
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
-- Database: `e_buku_menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `extra_menu`
--

CREATE TABLE `extra_menu` (
  `idproduk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra_menu`
--

INSERT INTO `extra_menu` (`idproduk`, `nama`, `harga`) VALUES
(17, 'Samsam', 15000),
(17, 'Lawar', 10000),
(18, 'Krupuk', 2000),
(18, 'Telur Mata Sapi', 5000),
(19, 'Sambal Ijo', 3000),
(19, 'Sambal Merah', 3000),
(19, 'Sambal Matah', 3000),
(24, 'Jelly', 3000),
(26, 'lontong ', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `hargaproduk` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `kategori` enum('Makanan','Minuman') NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `namaproduk`, `hargaproduk`, `deskripsi`, `foto`, `kategori`, `createdat`) VALUES
(17, 'Nasi Babi Guling Campur', 30000, 'Nasi + Babi Guling + Sate', '1730820106.jpg', 'Makanan', '2024-11-05 15:21:46'),
(18, 'Nasi Goreng Spesial', 20000, 'Nasi Goreng + Sosis + Bakso', '1730820279.webp', 'Makanan', '2024-11-05 15:24:39'),
(19, 'Nasi Ayam Geprek', 15000, 'Nasi Ayam geprek', '1730820890.webp', 'Makanan', '2024-11-05 15:34:50'),
(20, 'Es Teh Manis', 5000, 'Es Teh Manis', '1730821126.jpg', 'Minuman', '2024-11-05 15:38:46'),
(21, 'Teh Manis Hangat', 5000, 'Teh Manis Hangat', '1730821267.jpg', 'Minuman', '2024-11-05 15:41:07'),
(22, 'Es Jeruk', 8000, 'Es Jeruk + coconut', '1730821900.jpg', 'Minuman', '2024-11-05 15:51:40'),
(23, 'Nasi Putih', 50000, 'Nasi Putih', '1730821952.jpg', 'Makanan', '2024-11-05 15:52:32'),
(24, 'Es Buah', 15000, 'Es Buah', '1730822088.jpg', 'Minuman', '2024-11-05 15:54:48'),
(26, 'Sate Ayam ', 30000, 'sate ayam', '1735273279.jpg', 'Makanan', '2024-12-27 04:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `qrcode`
--

CREATE TABLE `qrcode` (
  `idqrcode` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `qrname` varchar(50) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qrcode`
--

INSERT INTO `qrcode` (`idqrcode`, `url`, `qrname`, `createdat`) VALUES
(9, 'http://localhost/ebukumenu', '1735128075.png', '2024-12-25 12:01:15'),
(13, 'https://youtu.be/X0oYZetxCAQ?si=uRYaBJN9_TepPmqi', '1735274329.png', '2024-12-27 04:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `namalengkap`, `username`, `password`, `createdat`) VALUES
(5, 'I Kadek Nanda Kusuma', 'Nankus', 'e10adc3949ba59abbe56e057f20f883e', '2024-11-05 15:19:19'),
(9, 'I Putu Gede Sugiarta', 'sugik', 'e10adc3949ba59abbe56e057f20f883e', '2024-12-27 03:49:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`idqrcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `idqrcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
