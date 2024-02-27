-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2024 pada 05.19
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifotos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_album` varchar(255) NOT NULL,
  `Deskripsi` text DEFAULT NULL,
  `tgl_buat` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `custom_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `albums`
--

INSERT INTO `albums` (`id`, `nama_album`, `Deskripsi`, `tgl_buat`, `created_at`, `updated_at`, `user_id`, `custom_category`) VALUES
(1, 'Arsitektur', NULL, NULL, '2024-02-06 00:52:40', '2024-02-06 00:52:40', NULL, NULL),
(2, 'Arsitektur', NULL, NULL, '2024-02-10 20:56:19', '2024-02-10 20:56:19', NULL, NULL),
(3, 'Hewan', NULL, NULL, '2024-02-11 00:37:38', '2024-02-11 00:37:38', NULL, NULL),
(4, 'Arsitektur', NULL, NULL, '2024-02-11 01:09:43', '2024-02-11 01:09:43', NULL, NULL),
(5, 'Dokumenter', NULL, NULL, '2024-02-11 01:15:41', '2024-02-11 01:15:41', NULL, NULL),
(6, 'Seni rupa', NULL, NULL, '2024-02-11 01:17:27', '2024-02-11 01:17:27', NULL, NULL),
(7, 'Olahraga', NULL, NULL, '2024-02-11 01:18:48', '2024-02-11 01:18:48', NULL, NULL),
(8, 'Makanan', NULL, NULL, '2024-02-11 01:22:42', '2024-02-11 01:22:42', NULL, NULL),
(9, 'Fashion', NULL, NULL, '2024-02-11 01:31:49', '2024-02-11 01:31:49', NULL, NULL),
(10, 'Satwa liar', NULL, NULL, '2024-02-11 01:35:02', '2024-02-11 01:35:02', NULL, NULL),
(11, 'Hewan', NULL, NULL, '2024-02-11 01:35:42', '2024-02-11 01:35:42', NULL, NULL),
(12, 'Laut', NULL, NULL, '2024-02-11 01:36:32', '2024-02-11 01:36:32', NULL, NULL),
(13, 'Perjalanan', NULL, NULL, '2024-02-11 01:37:23', '2024-02-11 01:37:23', NULL, NULL),
(14, 'Lainnya', NULL, NULL, '2024-02-11 01:38:04', '2024-02-11 01:38:04', NULL, 'Game'),
(15, 'Lainnya', NULL, NULL, '2024-02-11 03:36:12', '2024-02-11 03:36:12', NULL, 'Game'),
(16, 'Lainnya', NULL, NULL, '2024-02-11 03:37:15', '2024-02-11 03:37:15', NULL, 'Game'),
(17, 'Arsitektur', NULL, NULL, '2024-02-12 17:52:24', '2024-02-12 17:52:24', NULL, NULL),
(18, 'Olahraga', NULL, NULL, '2024-02-18 18:28:36', '2024-02-18 18:28:36', NULL, NULL),
(19, 'Arsitektur', NULL, NULL, '2024-02-26 17:55:03', '2024-02-26 17:55:03', NULL, NULL),
(20, 'Makanan', NULL, NULL, '2024-02-26 18:21:13', '2024-02-26 18:21:13', NULL, NULL),
(21, 'Arsitektur', NULL, NULL, '2024-02-26 18:50:38', '2024-02-26 18:50:38', NULL, NULL),
(22, 'Fashion', NULL, NULL, '2024-02-26 18:51:36', '2024-02-26 18:51:36', NULL, NULL),
(23, 'Makanan', NULL, NULL, '2024-02-26 18:56:00', '2024-02-26 18:56:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fotos`
--

CREATE TABLE `fotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_foto` varchar(255) NOT NULL,
  `deskripsi_foto` text NOT NULL,
  `tgl_unggah` datetime NOT NULL,
  `lokasi_file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `album_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `privasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fotos`
--

INSERT INTO `fotos` (`id`, `judul_foto`, `deskripsi_foto`, `tgl_unggah`, `lokasi_file`, `created_at`, `updated_at`, `album_id`, `user_id`, `privasi`) VALUES
(18, 'Burger', 'Hamburger atau burger adalah sejenis roti berbentuk bundar yang diiris dua, dan di tengahnya diisi dengan patty yang biasanya diambil dari daging, kemudian sayur-sayuran berupa selada, tomat dan bawang bombai. Sebagai sausnya, hamburger diberi berbagai jenis saus seperti mayones, saus tomat dan sambal, serta moster.', '2024-02-27 01:21:13', 'public/data_foto/CPDJK2B9lTdBur85ThuMhuKb04rOUxXymw3F5ill.jpg', '2024-02-26 18:21:13', '2024-02-26 18:21:13', 20, 5, 'Public'),
(19, 'Rumah', 'Dalam arti umum, rumah merupakan salah satu bangunan yang dijadikan tempat tinggal selama jangka waktu tertentu. Rumah bisa menjadi tempat tinggal manusia maupun hewan, tetapi istilah untuk tempat tinggal yang khusus bagi hewan adalah sangkar, sarang, atau kandang.', '2024-02-27 01:50:38', 'public/data_foto/o2IyrLcTZnjna7u9If0X4psCBErs8806oUTB4hkb.jpg', '2024-02-26 18:50:38', '2024-02-26 18:50:38', 21, 4, 'Public'),
(20, 'Baju', 'Korean Style, istilah yang digunakan oleh banyak anak muda hingga artis yang mendaptasi gaya orang Korea. Gaya berbusana dan musik Indonesia saat ini memang sedang berkiblat ke sana. Hal ini terlihat jelas dari banyaknya boyband dan girlband bermunculan dengan gaya busana, tarian, dan musik mirip dengan gaya Korea.', '2024-02-27 01:51:36', 'public/data_foto/m4ZEH1KPlc6etEyaq7ZTWnTPVeplsmvns3N1xSi2.jpg', '2024-02-26 18:51:36', '2024-02-26 18:51:36', 22, 4, 'Public'),
(21, 'Richesee', 'Transmart Jember, Jl. Hayam Wuruk No.71 Lt. GF 2, Gerdu, Sempusari, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131', '2024-02-27 01:56:00', 'public/data_foto/hCPBgDXGmr6XK2Xr4gYG5pqiEEqyo7wKJZkP9L27.jpg', '2024-02-26 18:56:00', '2024-02-26 18:56:00', 23, 4, 'Public');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar_fotos`
--

CREATE TABLE `komentar_fotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi_komentar` text NOT NULL,
  `tgl_komentar` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komentar_fotos`
--

INSERT INTO `komentar_fotos` (`id`, `isi_komentar`, `tgl_komentar`, `created_at`, `updated_at`, `foto_id`, `user_id`) VALUES
(18, 'haloo aku suka makananya', '2024-02-27 02:08:16', '2024-02-26 19:08:16', '2024-02-26 19:08:16', 21, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_fotos`
--

CREATE TABLE `like_fotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_like` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `like_fotos`
--

INSERT INTO `like_fotos` (`id`, `tgl_like`, `created_at`, `updated_at`, `foto_id`, `user_id`) VALUES
(115, '2024-02-27', '2024-02-26 19:04:00', '2024-02-26 19:04:00', 21, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_12_10_124321_create_albums_table', 1),
(4, '2023_12_10_124342_create_komentar_fotos_table', 1),
(5, '2023_12_10_124405_create_fotos_table', 1),
(6, '2023_12_10_124418_create_like_fotos_table', 1),
(7, '2023_12_12_015847_alter_table_album', 1),
(8, '2023_12_12_015905_alter_table_foto', 1),
(9, '2023_12_12_015932_alter_table_komentar_foto', 1),
(10, '2023_12_12_015956_alter_table_like_foto', 1),
(11, '2024_01_08_140204_alter_table_foto', 1),
(12, '2024_01_31_171219_alter_table_album_add_category', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `nama_lengkap`, `alamat`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'nopii', 'nopi@gmail.com', 'Noviani Saputri', 'Korea Selatan', NULL, '$2y$12$alEFzTKpiguKvVhEwftPa.P5yen9qBmkeOLzcJ.PeVlpnDvcwTASq', NULL, '2024-02-10 23:40:51', '2024-02-12 17:54:25'),
(5, 'jiraa', 'jira@gmail.com', 'Jira', 'Jepang', NULL, '$2y$12$YsWTsklLJFy6huo82gXxx.iHpPnt182zuuAh4dEIZrUQBkUmh2L8W', NULL, '2024-02-10 23:40:52', '2024-02-11 01:39:34'),
(33, 'stevi', 'stevi@gmail.com', 'Steviana', 'Surabaya', NULL, '$2y$12$5CL3QGlylNx.gj87wZIEvOtVRX58umXOnW6stkYfitK0npz1CXnDm', NULL, '2024-02-12 21:32:26', '2024-02-12 21:32:26'),
(34, 'chaa', 'ocha@gmail.com', 'ocha', 'london', NULL, '$2y$12$JswmQkiZqFOfF9aGm0/Mwu/MioKvm9pQ.g9ea/v1kzaZ6nWRLwuC2', NULL, '2024-02-18 18:26:19', '2024-02-18 18:26:19'),
(35, 'matty', 'matty@gmail.com', 'Matty', 'jepang', NULL, '$2y$12$aMRx1/s6y2iCdAiW/OaRl.0i3yd9b3/J2iiSCH7Kyf/cx.5WP.Yum', NULL, '2024-02-20 23:04:53', '2024-02-20 23:04:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fotos_album_id_foreign` (`album_id`),
  ADD KEY `fotos_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `komentar_fotos`
--
ALTER TABLE `komentar_fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentar_fotos_foto_id_foreign` (`foto_id`),
  ADD KEY `komentar_fotos_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `like_fotos`
--
ALTER TABLE `like_fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_fotos_foto_id_foreign` (`foto_id`),
  ADD KEY `like_fotos_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `komentar_fotos`
--
ALTER TABLE `komentar_fotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `like_fotos`
--
ALTER TABLE `like_fotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fotos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentar_fotos`
--
ALTER TABLE `komentar_fotos`
  ADD CONSTRAINT `komentar_fotos_foto_id_foreign` FOREIGN KEY (`foto_id`) REFERENCES `fotos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `komentar_fotos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `like_fotos`
--
ALTER TABLE `like_fotos`
  ADD CONSTRAINT `like_fotos_foto_id_foreign` FOREIGN KEY (`foto_id`) REFERENCES `fotos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `like_fotos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
