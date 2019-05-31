-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2019 at 05:47 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlyhocsinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `baocaomon`
--

CREATE TABLE `baocaomon` (
  `MaLop` int(11) NOT NULL,
  `MaMH` int(11) NOT NULL,
  `MaHK` int(11) NOT NULL,
  `SoLuongDat` tinyint(5) NOT NULL,
  `TiLe` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctlop`
--

CREATE TABLE `ctlop` (
  `MaLop` int(11) NOT NULL,
  `MaHS` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ctlop`
--

INSERT INTO `ctlop` (`MaLop`, `MaHS`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(1, 2, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(1, 3, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 5, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 6, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(23, 7, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(23, 8, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(23, 9, '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `MaHS` int(11) NOT NULL,
  `MaMH` int(11) NOT NULL,
  `MaLop` int(11) NOT NULL,
  `MaHK` int(11) NOT NULL,
  `DiemM` float NOT NULL DEFAULT '-1',
  `Diem15L1` float NOT NULL DEFAULT '-1',
  `Diem15L2` float NOT NULL DEFAULT '-1',
  `Diem15L3` float NOT NULL DEFAULT '-1',
  `Diem1TL1` float NOT NULL DEFAULT '-1',
  `Diem1TL2` float NOT NULL DEFAULT '-1',
  `Diem1TL3` float DEFAULT '-1',
  `DiemHK` float NOT NULL DEFAULT '-1',
  `DiemTBM` float NOT NULL DEFAULT '-1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`MaHS`, `MaMH`, `MaLop`, `MaHK`, `DiemM`, `Diem15L1`, `Diem15L2`, `Diem15L3`, `Diem1TL1`, `Diem1TL2`, `Diem1TL3`, `DiemHK`, `DiemTBM`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 8.5, 8, 9, -1, 7, 9, -1, 9, 8.5, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 1, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 2, 1, 1, 7, 9, 6, -1, 5, 8, -1, 7, 6.9, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 2, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 3, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 3, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 4, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 4, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 5, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 5, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 6, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 6, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 7, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 7, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 8, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 8, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 9, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 9, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 10, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 10, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 11, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 11, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 1, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 2, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 2, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 3, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 3, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 4, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 4, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 5, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 5, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 6, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 6, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 7, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 7, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 8, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 8, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 9, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 9, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 10, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 10, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 11, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 11, 1, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 1, 23, 1, -1, 9, 8, -1, 10, 9, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 1, 23, 2, -1, 7, -1, -1, 8, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 2, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 2, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 3, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 3, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 4, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 4, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 5, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 5, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 6, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 6, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 7, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 7, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 8, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 8, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 9, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 9, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 10, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 10, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 11, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 11, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 1, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 1, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 2, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 2, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 3, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 3, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 4, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 4, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 5, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 5, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 6, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 6, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 7, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 7, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 8, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 8, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 9, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 9, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 10, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 10, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 11, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 11, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 1, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 1, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 2, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 2, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 3, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 3, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 4, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 4, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 5, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 5, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 6, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 6, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 7, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 7, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 8, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 8, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 9, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 9, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 10, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 10, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 11, 23, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 11, 23, 2, -1, -1, -1, -1, -1, -1, -1, -1, -1, '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `MaGV` int(11) NOT NULL,
  `TenGV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL DEFAULT '1',
  `BangCap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ChuyenMon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `KichHoat` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`MaGV`, `TenGV`, `GioiTinh`, `BangCap`, `ChuyenMon`, `NgaySinh`, `KichHoat`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Nguyễn Thị X', 2, 'Đại học', 'Toán', '2018-05-29', 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 'Nguyễn Văn Thanh', 1, 'Tiến sĩ', 'Lý', '1992-05-31', 0, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 'Nguyễn Văn Thanh', 1, 'Đại học', 'Lý', '1992-05-29', 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `hocky`
--

CREATE TABLE `hocky` (
  `MaHK` int(11) NOT NULL,
  `TenHK` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaNH` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hocky`
--

INSERT INTO `hocky` (`MaHK`, `TenHK`, `MaNH`, `created_at`, `updated_at`) VALUES
(1, 'HK1', 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 'HK2', 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(6, 'HK1', 4, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 'HK2', 4, '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `MaHS` int(11) NOT NULL,
  `TenHS` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoTenCha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoTenMe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgCha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgMe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TonGiao` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DanToc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `KichHoat` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`MaHS`, `TenHS`, `GioiTinh`, `NgaySinh`, `DiaChi`, `HoTenCha`, `HoTenMe`, `NgCha`, `NgMe`, `TonGiao`, `DanToc`, `KichHoat`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Đào Hoa Anh Kim', 1, '1998-05-28', 'TPHCM', 'Nguyễn Văn B', 'Nguyễn Thị C', 'Kỹ sư', 'Kế toán trưởng', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(2, 'Nguyễn Văn H', 1, '1998-05-28', 'TPHCM', 'Nguyễn Văn B', 'Nguyễn Thị C', 'Kỹ sư', 'Kế toán', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(3, 'Nguyễn Thị B', 2, '1998-05-28', 'TPHCM', 'Nguyễn Văn B', 'Nguyễn Thị C', 'Kỹ sư', 'Kế toán', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(4, 'Nguyễn Thị D', 2, '1998-05-28', 'TPHCM', 'Nguyễn Văn B', 'Nguyễn Thị C', 'Kỹ sư', 'Kế toán', 'Không', 'Kinh', 0, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(5, 'Nguyễn Thị E', 2, '1998-05-28', 'TPHCM', 'Nguyễn Văn B', 'Nguyễn Thị C', 'Kỹ sư', 'Kế toán', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(6, 'Nguyễn Văn F', 2, '1998-05-28', 'TPHCM', 'Nguyễn Văn B', 'Nguyễn Thị C', 'Kỹ sư', 'Kế toán', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(7, 'Nguyễn Thị G', 2, '1998-05-28', 'TPHCM', 'Nguyễn Văn B', 'Nguyễn Thị C', 'Kỹ sư', 'Kế toán', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(8, 'Nguyễn Văn Thanh', 1, '1999-05-16', 'Đồng Nai', 'Nguyễn Văn N', 'Nguyễn Thị M', 'Kiến trúc sư', 'Giám đốc', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04'),
(9, 'Nguyễn Văn Thanh 2', 1, '2018-06-02', 'Đồng Nai', 'Nguyễn Văn N', 'Nguyễn Thị M', 'Kiến trúc sư', 'Giám đốc', 'Không', 'Kinh', 1, '2019-06-01 15:31:46', '2019-05-31 03:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `khoi`
--

CREATE TABLE `khoi` (
  `MaKhoi` int(11) NOT NULL,
  `TenKhoi` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khoi`
--

INSERT INTO `khoi` (`MaKhoi`, `TenKhoi`, `created_at`, `updated_at`) VALUES
(1, '10', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, '11', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, '12', '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `MaLop` int(11) NOT NULL,
  `TenLop` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SiSo` tinyint(2) NOT NULL,
  `MaGV` int(5) NOT NULL,
  `MaKhoi` int(11) NOT NULL,
  `MaNH` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`, `SiSo`, `MaGV`, `MaKhoi`, `MaNH`, `created_at`, `updated_at`) VALUES
(1, '11A1', 30, 1, 2, 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, '11A2', 30, 1, 2, 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, '11A3', 30, 1, 2, 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(23, '11A4', 0, 1, 2, 1, '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMH` int(11) NOT NULL,
  `TenMH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`MaMH`, `TenMH`, `created_at`, `updated_at`) VALUES
(1, 'Ngữ Văn', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(2, 'Toán', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(3, 'Vật Lý', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(4, 'Hóa học', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(5, 'Ngoại ngữ', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(6, 'Sinh học', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(7, 'Lịch sử', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(8, 'Địa lý', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(9, 'GDCD', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(10, 'Công nghệ', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(11, 'Tin học', '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `namhoc`
--

CREATE TABLE `namhoc` (
  `MaNH` int(11) NOT NULL,
  `TenNH` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `namhoc`
--

INSERT INTO `namhoc` (`MaNH`, `TenNH`, `created_at`, `updated_at`) VALUES
(1, '2017 - 2018', '2019-06-01 15:31:46', '2019-06-01 15:31:46'),
(4, '2018 - 2019', '2019-06-01 15:31:46', '2019-06-01 15:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `quydinh`
--

CREATE TABLE `quydinh` (
  `id` int(11) NOT NULL,
  `ThamSo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTri` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tongkethocky`
--

CREATE TABLE `tongkethocky` (
  `MaLop` int(11) NOT NULL,
  `MaHK` int(11) NOT NULL,
  `MaHS` int(11) NOT NULL,
  `HanhKiem` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `TBHK` float NOT NULL DEFAULT '-1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tongketnamhoc`
--

CREATE TABLE `tongketnamhoc` (
  `MaLop` int(11) NOT NULL,
  `MaHS` int(11) NOT NULL,
  `HanhKiem` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `TBNam` float NOT NULL DEFAULT '-1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Lộc', 'vanloctech@gmail.com', '$2y$10$aoAA1iar/WD8WFuj9iUs/.YBOtAl7iXqMXpR4h3JYZL0MN3hGIAHK', 1, 'h99r3pCtmxaPHoPQyCZoJekRh2mPufjvaWWTGwWar84iM39XEbIRcREfDzoi', NULL, NULL),
(2, 'phuc', 'nguyenhongphuc98@gmail.com', '123456', 1, NULL, NULL, NULL),
(3, 'Hong Phuc', 'a@gmail.com', '$2y$10$jWG97nRLGsqt3FrYR3g9dOGh4NRtYYh4a0MOFXSythsSnEl5dRLsm', 1, NULL, '2019-05-30 20:18:21', '2019-05-30 20:18:21'),
(4, 'Phân tích Thiết kế', 'pttkhttt@gmail.com', '$2y$10$Eg5pXyywTjYCGYUZ/b7rru66mvnBCP5Bb7yHcteDZPRwXSVi8ftSK', 1, NULL, '2019-05-30 20:21:26', '2019-05-30 20:21:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baocaomon`
--
ALTER TABLE `baocaomon`
  ADD PRIMARY KEY (`MaLop`,`MaMH`,`MaHK`),
  ADD KEY `FK_BAOCAOMON_HOCKY` (`MaHK`),
  ADD KEY `FK_BAOCAOMON_MONHOC` (`MaMH`);

--
-- Indexes for table `ctlop`
--
ALTER TABLE `ctlop`
  ADD PRIMARY KEY (`MaLop`,`MaHS`),
  ADD KEY `FK_LOP_HÓCINH` (`MaHS`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`MaHS`,`MaMH`,`MaLop`,`MaHK`),
  ADD KEY `FK_DIEM_HK` (`MaHK`),
  ADD KEY `FK_DIEM_LOP` (`MaLop`),
  ADD KEY `FK_DIEM_MH` (`MaMH`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`MaGV`);

--
-- Indexes for table `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`MaHK`),
  ADD KEY `FK_HOCKY_NH` (`MaNH`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`MaHS`);

--
-- Indexes for table `khoi`
--
ALTER TABLE `khoi`
  ADD PRIMARY KEY (`MaKhoi`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `FK_LOP_KHOI` (`MaKhoi`),
  ADD KEY `FK_LOP_GV` (`MaGV`),
  ADD KEY `FK_LOP_NH` (`MaNH`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMH`);

--
-- Indexes for table `namhoc`
--
ALTER TABLE `namhoc`
  ADD PRIMARY KEY (`MaNH`);

--
-- Indexes for table `quydinh`
--
ALTER TABLE `quydinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tongkethocky`
--
ALTER TABLE `tongkethocky`
  ADD PRIMARY KEY (`MaLop`,`MaHK`,`MaHS`),
  ADD KEY `FK_TKHK_HK` (`MaHK`),
  ADD KEY `FK_TKHK_HS` (`MaHS`);

--
-- Indexes for table `tongketnamhoc`
--
ALTER TABLE `tongketnamhoc`
  ADD PRIMARY KEY (`MaLop`,`MaHS`),
  ADD KEY `FK_TKNH_HS` (`MaHS`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `MaGV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hocky`
--
ALTER TABLE `hocky`
  MODIFY `MaHK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `MaHS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `khoi`
--
ALTER TABLE `khoi`
  MODIFY `MaKhoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `MaLop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `MaMH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `namhoc`
--
ALTER TABLE `namhoc`
  MODIFY `MaNH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quydinh`
--
ALTER TABLE `quydinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baocaomon`
--
ALTER TABLE `baocaomon`
  ADD CONSTRAINT `FK_BAOCAOMON_HOCKY` FOREIGN KEY (`MaHK`) REFERENCES `hocky` (`MaHK`),
  ADD CONSTRAINT `FK_BAOCAOMON_LOP` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `FK_BAOCAOMON_MONHOC` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`);

--
-- Constraints for table `ctlop`
--
ALTER TABLE `ctlop`
  ADD CONSTRAINT `FK_LOP_HÓCINH` FOREIGN KEY (`MaHS`) REFERENCES `hocsinh` (`MaHS`),
  ADD CONSTRAINT `FK_LOP_LOP` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`);

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `FK_DIEM_HK` FOREIGN KEY (`MaHK`) REFERENCES `hocky` (`MaHK`),
  ADD CONSTRAINT `FK_DIEM_HS` FOREIGN KEY (`MaHS`) REFERENCES `hocsinh` (`MaHS`),
  ADD CONSTRAINT `FK_DIEM_LOP` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `FK_DIEM_MH` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`);

--
-- Constraints for table `hocky`
--
ALTER TABLE `hocky`
  ADD CONSTRAINT `FK_HOCKY_NH` FOREIGN KEY (`MaNH`) REFERENCES `namhoc` (`MaNH`);

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `FK_LOP_GV` FOREIGN KEY (`MaGV`) REFERENCES `giaovien` (`MaGV`),
  ADD CONSTRAINT `FK_LOP_KHOI` FOREIGN KEY (`MaKhoi`) REFERENCES `khoi` (`MaKhoi`),
  ADD CONSTRAINT `FK_LOP_NH` FOREIGN KEY (`MaNH`) REFERENCES `namhoc` (`MaNH`);

--
-- Constraints for table `tongkethocky`
--
ALTER TABLE `tongkethocky`
  ADD CONSTRAINT `FK_TKHK_HK` FOREIGN KEY (`MaHK`) REFERENCES `hocky` (`MaHK`),
  ADD CONSTRAINT `FK_TKHK_HS` FOREIGN KEY (`MaHS`) REFERENCES `hocsinh` (`MaHS`),
  ADD CONSTRAINT `FK_TKHK_LOP` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`);

--
-- Constraints for table `tongketnamhoc`
--
ALTER TABLE `tongketnamhoc`
  ADD CONSTRAINT `FK_TKNH_HS` FOREIGN KEY (`MaHS`) REFERENCES `hocsinh` (`MaHS`),
  ADD CONSTRAINT `FK_TKNH_LOP` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
