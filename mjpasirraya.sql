-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2021 pada 07.49
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mjpasirraya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `nm_adm` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat_adm` varchar(50) NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `prof_pict` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `administrator`
--

INSERT INTO `administrator` (`id`, `nm_adm`, `username`, `password`, `alamat_adm`, `no_telp`, `created_at`, `updated_at`, `prof_pict`) VALUES
(2, 'Moh.Ningamullah', 'bening123', 'bening123', 'Perum. Telaga Pasirraya B4 No. 9', '0654861831', '2021-06-05 07:22:22', '2021-06-05 07:22:22', 'coba2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_jamaah`
--

CREATE TABLE `akun_jamaah` (
  `id_jamaah` int(15) NOT NULL,
  `nm_jamaah` varchar(255) NOT NULL,
  `username_jamaah` varchar(255) NOT NULL,
  `password_jamaah` varchar(255) NOT NULL,
  `no_telp_jamaah` varchar(255) NOT NULL,
  `alamat_jamaah` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prof_pict` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_asnaf`
--

CREATE TABLE `data_asnaf` (
  `id_asnaf` int(11) NOT NULL,
  `nm_asnaf` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `inputer` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `jenis_asnaf` varchar(255) NOT NULL,
  `status_penerimaan` varchar(255) NOT NULL,
  `update_penerimaan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_zis`
--

CREATE TABLE `data_zis` (
  `id_zis` int(11) NOT NULL,
  `nm_pembayar` varchar(255) NOT NULL,
  `jenis_bayar` varchar(255) NOT NULL,
  `jml_jiwa` int(255) NOT NULL,
  `jml_bayar` int(255) NOT NULL,
  `penerima_zis` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_zis`
--

INSERT INTO `data_zis` (`id_zis`, `nm_pembayar`, `jenis_bayar`, `jml_jiwa`, `jml_bayar`, `penerima_zis`, `created_at`, `updated_at`) VALUES
(1, 'Esa Faruqi Dzikriaz', 'Zakat Fitrah', 1, 20000, '', '2021-06-12 20:48:25', '2021-06-12 20:48:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kegiatan`
--

CREATE TABLE `tbl_kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `nm_kegiatan` varchar(255) NOT NULL,
  `pemateri` varchar(255) NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `waktu_kegiatan` time NOT NULL,
  `lokasi_kegiatan` varchar(255) NOT NULL,
  `ketuplak` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `banner_pict` varchar(255) NOT NULL,
  `inputter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kegiatan`
--

INSERT INTO `tbl_kegiatan` (`id_kegiatan`, `nm_kegiatan`, `pemateri`, `tgl_kegiatan`, `waktu_kegiatan`, `lokasi_kegiatan`, `ketuplak`, `created_at`, `updated_at`, `banner_pict`, `inputter`) VALUES
(4, 'Santunan Anak Yatim 25-11-2021', 'Ustadz Hasim Budi', '2021-11-25', '18:30:00', 'Masjid Jami Pasirraya', 'Harun', '2021-06-12 18:40:21', '2021-06-12 18:40:21', 'banner1.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_outzis`
--

CREATE TABLE `tbl_outzis` (
  `id_outzis` int(11) NOT NULL,
  `nm_outzis` varchar(255) NOT NULL,
  `jml_penerima` int(255) NOT NULL,
  `jml_dana` int(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `inputter` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_outzis`
--

INSERT INTO `tbl_outzis` (`id_outzis`, `nm_outzis`, `jml_penerima`, `jml_dana`, `created_at`, `updated_at`, `inputter`, `kategori`) VALUES
(1, 'Santunan 20 Juni 2021', 10, 5000000, '2021-06-20 07:56:03', '2021-06-20 07:56:03', 'Esa Faruqi', 'Santunan Anak Yatim Piatu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_zakatfitrah`
--

CREATE TABLE `tbl_zakatfitrah` (
  `id_zakat` int(11) NOT NULL,
  `nm_muzakki` varchar(255) NOT NULL,
  `jml_jiwa` int(5) NOT NULL,
  `jenis_bayar` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `no_telp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `akun_jamaah`
--
ALTER TABLE `akun_jamaah`
  ADD PRIMARY KEY (`id_jamaah`);

--
-- Indeks untuk tabel `data_asnaf`
--
ALTER TABLE `data_asnaf`
  ADD PRIMARY KEY (`id_asnaf`);

--
-- Indeks untuk tabel `data_zis`
--
ALTER TABLE `data_zis`
  ADD PRIMARY KEY (`id_zis`);

--
-- Indeks untuk tabel `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `tbl_outzis`
--
ALTER TABLE `tbl_outzis`
  ADD PRIMARY KEY (`id_outzis`);

--
-- Indeks untuk tabel `tbl_zakatfitrah`
--
ALTER TABLE `tbl_zakatfitrah`
  ADD PRIMARY KEY (`id_zakat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `akun_jamaah`
--
ALTER TABLE `akun_jamaah`
  MODIFY `id_jamaah` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_asnaf`
--
ALTER TABLE `data_asnaf`
  MODIFY `id_asnaf` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_zis`
--
ALTER TABLE `data_zis`
  MODIFY `id_zis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_outzis`
--
ALTER TABLE `tbl_outzis`
  MODIFY `id_outzis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_zakatfitrah`
--
ALTER TABLE `tbl_zakatfitrah`
  MODIFY `id_zakat` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
