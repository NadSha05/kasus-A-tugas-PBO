-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2026 pada 10.30
-- Versi server: 8.0.30
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_showroom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` int NOT NULL,
  `jenis_kendaraan` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `tahun` int NOT NULL,
  `harga_dasar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `jenis_kendaraan`, `brand`, `model`, `tahun`, `harga_dasar`) VALUES
(1, 'mobil_konvensional', 'Toyota', 'Avanza', 2024, 250000000),
(2, 'mobil_konvensional', 'Honda', 'Civic', 2023, 500000000),
(3, 'mobil_konvensional', 'Mitshubishi', 'Pajero Sport', 2024, 600000000),
(4, 'mobil_konvensional', 'Daihatsu', 'Terios', 2023, 230000000),
(5, 'mobil_konvensional', 'Suzuki', 'Ertiga', 2024, 240000000),
(6, 'mobil_konvensional', 'Toyota', 'Fortuner', 2024, 580000000),
(7, 'mobil_konvensional', 'Honda', 'CR-V', 2023, 650000000),
(8, 'mobil_listrik', 'Hyundai', 'Ioniq 5', 2025, 750000000),
(9, 'mobil_listrik', 'Wuling', 'Air-EV', 2024, 220000000),
(10, 'mobil_listrik', 'Tesla', 'Model 3', 2025, 1200000000),
(11, 'mobil_listrik', 'BYD', 'Atto 3', 2025, 550000000),
(12, 'mobil_listrik', 'Hyundai', 'Kona Electric', 2024, 450000000),
(13, 'motor_besar', 'Kawasaki', 'Ninja ZX-6R', 2024, 350000000),
(14, 'motor_besar', 'Yamaha', 'MT-09', 2023, 290000000),
(15, 'motor_besar', 'Honda', 'CBR1000RR', 2024, 700000000),
(16, 'motor_besar', 'BMW', 'S1000RR', 2025, 850000000),
(17, 'motor_besar', 'Ducati', 'Panigale V4', 2025, 950000000),
(18, 'motor_besar', 'Kawasaki', 'Versys 650', 2023, 200000000),
(19, 'motor_besar', 'Yamaha', 'R7', 2024, 320000000),
(20, 'motor_besar', 'Honda', 'Gold Wing', 2025, 1100000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil_konvensional`
--

CREATE TABLE `mobil_konvensional` (
  `id_kendaraan` int NOT NULL,
  `kapasitas_mesin` varchar(50) DEFAULT NULL,
  `jenis_bahan_bakar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mobil_konvensional`
--

INSERT INTO `mobil_konvensional` (`id_kendaraan`, `kapasitas_mesin`, `jenis_bahan_bakar`) VALUES
(1, '1500cc', 'Bensin'),
(2, '1800cc', 'Bensin'),
(3, '2400cc', 'Diesel'),
(4, '1500cc', 'Bensin'),
(5, '1500cc', 'Bensin'),
(6, '2400cc', 'Diesel'),
(7, '2000cc', 'Bensin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil_listrik`
--

CREATE TABLE `mobil_listrik` (
  `id_kendaraan` int NOT NULL,
  `kapasitas_baterai` varchar(50) DEFAULT NULL,
  `jarak_tempuh` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mobil_listrik`
--

INSERT INTO `mobil_listrik` (`id_kendaraan`, `kapasitas_baterai`, `jarak_tempuh`) VALUES
(8, '60kWh', 400),
(9, '18kWh', 200),
(10, '60kWh', 490),
(11, '61kWh', 410),
(12, '64kWh', 485);

-- --------------------------------------------------------

--
-- Struktur dari tabel `motor_besar`
--

CREATE TABLE `motor_besar` (
  `id_kendaraan` int NOT NULL,
  `tipe_rantai` varchar(25) NOT NULL,
  `mode_berkendara` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `motor_besar`
--

INSERT INTO `motor_besar` (`id_kendaraan`, `tipe_rantai`, `mode_berkendara`) VALUES
(13, 'O-Ring', 'Sport'),
(14, 'O-Ring', 'Sport, Touring'),
(15, 'X-Ring', 'Race, Sport, Rain'),
(16, 'X-Ring', 'Race, Slick, User'),
(17, 'X-Ring', 'Race, Sport, Street'),
(18, 'O-Ring', 'Road, Rain'),
(19, 'O-Ring', 'Sport, Street'),
(20, 'Belt Drive', 'Touring, Rain, Sport');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `mobil_konvensional`
--
ALTER TABLE `mobil_konvensional`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `mobil_listrik`
--
ALTER TABLE `mobil_listrik`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `motor_besar`
--
ALTER TABLE `motor_besar`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id_kendaraan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mobil_konvensional`
--
ALTER TABLE `mobil_konvensional`
  ADD CONSTRAINT `mobil_konvensional_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mobil_listrik`
--
ALTER TABLE `mobil_listrik`
  ADD CONSTRAINT `mobil_listrik_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `motor_besar`
--
ALTER TABLE `motor_besar`
  ADD CONSTRAINT `motor_besar_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`id_kendaraan`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
