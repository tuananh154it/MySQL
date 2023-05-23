-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 08:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlytinhdiem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diem`
--

CREATE TABLE `tbl_diem` (
  `id` int(11) NOT NULL,
  `maSV` int(11) DEFAULT NULL,
  `diemToan` float DEFAULT NULL,
  `diemLy` float DEFAULT NULL,
  `diemHoa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_diem`
--

INSERT INTO `tbl_diem` (`id`, `maSV`, `diemToan`, `diemLy`, `diemHoa`) VALUES
(1, 123, 5, 6, 7),
(2, 456, 2, 3, 6),
(3, 235, 7, 8, 9),
(4, 564, 8, 5, 8),
(5, 234, 7, 7, 3),
(6, 777, 8, 7, 6),
(7, 444, 6, 7, 8),
(8, 976, 6, 6, 6),
(9, 767, 4, 3, 3),
(10, 664, 3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giaovien`
--

CREATE TABLE `tbl_giaovien` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `tuoi` int(11) DEFAULT NULL,
  `gioiTinh` int(11) DEFAULT NULL,
  `soNamKN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_giaovien`
--

INSERT INTO `tbl_giaovien` (`id`, `ten`, `tuoi`, `gioiTinh`, `soNamKN`) VALUES
(1, 'nguyen van A', 70, 1, 30),
(2, 'nguyen van B', 70, 1, 30),
(3, 'nguyen van C', 50, 1, 20),
(4, 'nguyen van D', 20, 1, 20),
(5, 'nguyen van E', 60, 1, 33),
(6, 'nguyen thi F', 66, 0, 12),
(7, 'tran thi G', 44, 2, 5),
(8, 'ha thi H', 66, 0, 33),
(9, 'ma gaming', 33, 1, 5),
(10, 'tran dan', 78, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sinhvien`
--

CREATE TABLE `tbl_sinhvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `tuoi` int(11) DEFAULT NULL,
  `gioiTinh` int(11) DEFAULT NULL,
  `maLop` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sinhvien`
--

INSERT INTO `tbl_sinhvien` (`id`, `ten`, `tuoi`, `gioiTinh`, `maLop`) VALUES
(1, 'phung tuan anh', 19, 1, 1),
(2, 'phung tuan anh', 19, 1, 1),
(3, 'tran chi cong', 20, 1, 2),
(4, 'phung van phu', 19, 1, 6),
(5, 'trinh manh ha', 59, 1, 1),
(6, 'luong hoang long', 28, 1, 5),
(7, 'nguyen huy binh', 12, 1, 23),
(8, 'nguyen duy anh', 33, 1, 45),
(9, 'tran van viet', 111, 1, 23),
(10, 'dang hue', 23, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_diem`
--
ALTER TABLE `tbl_diem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_giaovien`
--
ALTER TABLE `tbl_giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_diem`
--
ALTER TABLE `tbl_diem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_giaovien`
--
ALTER TABLE `tbl_giaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
