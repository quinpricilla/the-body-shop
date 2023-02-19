-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 04:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemkasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangpenjualan`
--

CREATE TABLE `barangpenjualan` (
  `no_faktur` varchar(10) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `total1` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangpenjualan`
--

INSERT INTO `barangpenjualan` (`no_faktur`, `kode_barang`, `nama_barang`, `harga`, `qty`, `total1`) VALUES
('F0001', 'A0013', 'Strawberry Body Mist 100ml', 189000, 1, 189000),
('F0001', 'A007', 'British Rose Hand Wash 275ml', 149000, 1, 149000),
('F0002', 'A003', 'Indian Night Jasmine Shower Gel 250ml', 149000, 1, 149000),
('F0002', 'A008', 'Strawberry Hand Cream 30ml', 108000, 1, 108000),
('F0002', 'A0010', 'Mango Body Yogurt 200ml', 229000, 1, 229000),
('F0003', 'A0012', 'Black Musk Night Bloom Fragrance Mist 100ml', 219000, 3, 657000);

-- --------------------------------------------------------

--
-- Table structure for table `masterbarang`
--

CREATE TABLE `masterbarang` (
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterbarang`
--

INSERT INTO `masterbarang` (`kode_barang`, `nama_barang`, `stok`, `harga`) VALUES
('A0001', 'British Rose Soap Petal 100G', 100, 79000),
('A0010', 'Mango Body Yogurt 200ml', 99, 229000),
('A0011', 'Moringa Body Butter 50ml', 100, 69000),
('A0012', 'Black Musk Night Bloom Fragrance Mist 100ml', 97, 219000),
('A0013', 'Strawberry Body Mist 100ml', 99, 189000),
('A0014', 'Vibrant Bergamot EDT 50ml', 100, 379000),
('A0015', 'white Musk Free Eau De Parfum Toppers 15ml', 100, 299000),
('A0016', 'Roots Of Strength Firming Cream 50ml', 100, 489000),
('A0017', 'Shea Exfoliating Sugar Body Scrub 250ml', 100, 258000),
('A0018', 'Spa Of The World African Ximenia Body Scrub 350ml', 100, 549000),
('A0019', 'Coconut Bath Bubble 28G', 100, 29000),
('A002', 'Vitamin E Overnight Serum In Oil 28ml', 100, 329000),
('A0020', 'White Musk Flora Body Lotion 250ml', 100, 299000),
('A0021', 'Tea Tree Oil 20ml', 100, 149000),
('A0022', 'Almond Milk & Honey Soothing & Restoring Body Loti', 100, 249000),
('A0023', 'Pink Grapefruit Bath Bubble 28G', 100, 29000),
('A003', 'Indian Night Jasmine Shower Gel 250ml', 99, 149000),
('A004', 'Sleep Lavender & Vetiver Body Cream 200ml', 100, 599000),
('A005', 'Coconut Eau De Toilette 30ml', 100, 239000),
('A006', 'Born Lippy Balm Raspberry 10ml', 100, 99000),
('A007', 'British Rose Hand Wash 275ml', 99, 149000),
('A008', 'Strawberry Hand Cream 30ml', 99, 108000),
('A009', 'Himalayan Charcoal Purifying Glow Mask 15ml', 100, 129000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `nomor`) VALUES
('P0001', 'UMUM', 'UMUM', 'UMUM'),
('P0004', 'Tia', 'Jakarta', '+6252254857'),
('P0005', 'Dinda', 'Jakarta', '+6287643214'),
('P0006', 'Rizki', 'Jakarta', '+6252747857'),
('P0007', 'Vanya', 'Jakarta', '+6288763214'),
('P0008', 'Edo', 'Jakarta', '+6287643567');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur` varchar(10) NOT NULL,
  `kasir` varchar(30) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `diskon` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_faktur`, `kasir`, `id_pelanggan`, `nama_pelanggan`, `diskon`, `total`, `bayar`, `kembali`, `tanggal`) VALUES
('F0001', 'pricilla', 'P0006', 'Rizki', 10, 304200, 400000, 95800, '2022-10-18'),
('F0002', 'puput', 'P0007', 'Vanya', 15, 413100, 500000, 86900, '2022-10-18'),
('F0003', 'puput', 'P0005', 'Dinda', 5, 624150, 700000, 75850, '2022-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nohp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `nohp`) VALUES
(2, 'pricilla', '123', 'pricilla', '081289605764'),
(3, 'puput', '123', 'puput', '081387272981');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangpenjualan`
--
ALTER TABLE `barangpenjualan`
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `no_faktur` (`no_faktur`);

--
-- Indexes for table `masterbarang`
--
ALTER TABLE `masterbarang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_faktur`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangpenjualan`
--
ALTER TABLE `barangpenjualan`
  ADD CONSTRAINT `barangpenjualan_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `masterbarang` (`kode_barang`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
