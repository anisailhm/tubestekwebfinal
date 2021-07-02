-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2021 pada 04.51
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(22, 'PAKET TRULIFE', 'Paket lengkap diffuser dan varian oil lengkap, cocok untuk kebutuhan keluarga.', 'Health', 200000, 100, 'health_1.jpg'),
(23, 'PAKET B – TRULIFE ESSENTIAL OIL (Peppermint)', 'Paket B - Essential Oil Peppermint', 'Health', 1250000, 40, 'health_2.jpg'),
(24, 'CLASSY GLAM', 'Lunch Set Yang Modern, Stylish & Praktis Untuk Wanita Modern', 'Outdoor', 370000, 96, 'outdoor_1.jpg'),
(25, 'CLICK TO GO ROUND', 'Tempat makan yang bisa menampung ragam makanan dalam satu waktu', 'Outdoor', 430000, 10, 'outdoor_2.jpg\r\n'),
(26, 'FUNSION MASTER ICE SHAVER', 'Bikin Es Serut Halus Selembut Salju Dengan Cepat', 'Food Preparation', 1230000, 15, 'fpreparation_1.jpg'),
(27, 'TURBO CHOPPER', 'Cacah Serba Cepat, Serba Bisa Bikin Apa Aja', 'Food Preparation', 440000, 22, 'fpreparation_2.jpg'),
(28, 'BLOOMIA BOWL (4)', 'Mangkuk piring model terbaru dan modis terdiri dari 4 buah mangkuk', 'Food Serving', 140000, 50, 'fserving_1.jpg'),
(29, 'ELEGANZIA BOWL 4.6L', 'Mangkuk dengan volume 4.6 Liter cocok digunakan untuk menyimpan makanan dalam jumlah yang banyak', 'Food Serving', 700000, 50, 'fserving_2.jpg'),
(31, 'SNACK IT', 'Wadah Simpan Aneka Kue Atau Cemilan Bersekat. Simpan Dua Sekaligus!', 'Food Storage', 180000, 50, 'fstorage_2.jpg'),
(32, 'TCHEF SAUCE PAN 1 LT', 'Alat masak dengan fitur modern dan elegan dari Tupperware Indonesia', 'Cookware', 1500000, 30, 'cookware_1.jpg'),
(33, 'TCHEF FRY PAN', 'Memasak semakin menyenangkan dengan TChef Fry Pan', 'Cookware', 2200000, 20, 'cookware_2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(6, 'Anisa Ilham', '132 Jalan Anggrek, RT 01 RW 14', '2021-06-21 09:31:25', '2021-06-22 09:31:25'),
(7, 'Anisa Ilham', '132 Jalan Anggrek, RT 01 RW 14', '2021-06-21 12:16:41', '2021-06-22 12:16:41'),
(8, 'Anisa Ilham', '132 Jalan Anggrek, RT 01 RW 14', '2021-07-01 09:19:55', '2021-07-02 09:19:55'),
(9, 'Nabilla Rahayu Rusyana', 'Majalengka', '2021-07-01 13:36:01', '2021-07-02 13:36:01'),
(10, '', '', '2021-07-02 09:05:26', '2021-07-03 09:05:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'Asus', 2, 200000000, ''),
(2, 2, 14, 'canon250', 2, 1290000, ''),
(3, 2, 3, 'Samsung s10', 1, 200039840, ''),
(4, 3, 3, 'Samsung s10', 2, 200039840, ''),
(5, 3, 14, 'canon250', 1, 1290000, ''),
(6, 4, 1, 'Sepatu', 1, 10000, ''),
(7, 5, 1, 'Sepatu', 2, 10000, ''),
(8, 6, 1, 'Sepatu', 2, 10000, ''),
(9, 6, 1, 'Sepatu', 1, 10000, ''),
(10, 7, 22, 'PAKET TRULIFE', 1, 2360000, ''),
(11, 7, 24, 'CLASSY GLAM', 1, 370000, ''),
(12, 8, 22, 'PAKET TRULIFE', 1, 2360000, ''),
(13, 8, 24, 'CLASSY GLAM', 1, 370000, ''),
(14, 9, 24, 'CLASSY GLAM', 1, 370000, ''),
(15, 10, 24, 'CLASSY GLAM', 1, 370000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW Update tb_barang SET stok = stok-NEW.jumlah
	where id_brg = NEW.id_brg
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'user', 'user', 'user', 2),
(5, 'sa', 'sa', 'sa', 2),
(6, 'azie abdul', 'azie', 'azie', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
