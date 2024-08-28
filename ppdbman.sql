-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2024 pada 10.07
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdbman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alur_pendaftarans`
--

CREATE TABLE `alur_pendaftarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alur_pendaftarans`
--

INSERT INTO `alur_pendaftarans` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'alur_pendaftaran.png', '2023-03-03 07:58:28', '2023-03-03 07:58:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biayas`
--

CREATE TABLE `biayas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `id_category` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `biayas`
--

INSERT INTO `biayas` (`id`, `name`, `id_category`, `total`, `created_at`, `updated_at`) VALUES
(3, 'SPP (SMP)', 1, 185500, '2023-03-03 07:58:26', '2024-08-27 19:50:02'),
(10, 'Pakaian Olahraga', 1, 147000, '2023-03-03 07:58:26', '2024-08-27 19:45:53'),
(11, 'Atribut', 1, 38500, '2023-03-03 07:58:27', '2024-08-27 19:45:23'),
(12, 'Bakal/Bahan Pakaian Kotak-Kotak', 1, 65000, '2023-03-03 07:58:27', '2024-08-27 19:44:51'),
(13, 'Sarana Pendidikan / 3 Tahun', 1, 50000, '2023-03-03 07:58:27', '2024-08-27 19:43:58'),
(20, 'SPP (SMP)', 2, 185500, '2023-03-03 07:58:27', '2024-08-27 19:52:36'),
(21, 'Pakaian Olahraga', 2, 147000, '2023-03-03 07:58:28', '2024-08-27 19:52:12'),
(22, 'Atribut', 2, 38500, '2023-03-03 07:58:28', '2024-08-27 19:51:30'),
(23, 'Bakal/Bahan Pakaian Kotak-Kotak', 2, 65000, '2023-03-03 07:58:28', '2024-08-27 19:51:14'),
(24, 'Sarana Pendidikan / 3 Tahun', 2, 50000, '2023-03-03 07:58:28', '2024-08-27 19:50:57'),
(25, 'SPP (SMA)', 2, 200500, '2023-03-03 07:58:28', '2024-08-27 19:50:26'),
(28, 'SPP (SMA)', 1, 200500, '2024-08-27 19:49:13', '2024-08-27 19:50:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booklets`
--

CREATE TABLE `booklets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `booklets`
--

INSERT INTO `booklets` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'booklet.pdf', '2023-03-03 07:58:28', '2024-08-18 19:28:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_pesertas`
--

CREATE TABLE `calon_pesertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` varchar(191) NOT NULL,
  `no_peserta` varchar(191) NOT NULL,
  `no_pendaftaran` varchar(191) NOT NULL,
  `jalur` varchar(191) NOT NULL,
  `jurusan` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `calon_pesertas`
--

INSERT INTO `calon_pesertas` (`id`, `id_siswa`, `no_peserta`, `no_pendaftaran`, `jalur`, `jurusan`, `status`, `created_at`, `updated_at`) VALUES
(3, '3', 'MAN1-00003', 'REG-00003', 'Regular', 'IPS', 'Tidak Lulus', '2023-03-03 07:58:24', '2023-03-03 07:58:24'),
(6, '6', 'DFT-00004', 'REG-00004', 'Regular', 'SMP', 'Lulus', '2024-08-21 20:57:03', '2024-08-21 21:03:13'),
(7, '7', 'DFT-00004', 'REG-00004', 'Regular', 'MIPA', 'Lulus', '2024-08-27 21:59:28', '2024-08-27 22:01:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_biayas`
--

CREATE TABLE `category_biayas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category_biayas`
--

INSERT INTO `category_biayas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Putra', '2023-03-03 07:58:26', '2023-03-03 07:58:26'),
(2, 'Putri', '2023-03-03 07:58:26', '2023-03-03 07:58:26'),
(3, 'Pendaftaran', '2023-03-03 07:58:26', '2023-03-03 07:58:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_persyaratans`
--

CREATE TABLE `category_persyaratans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `category_persyaratans`
--

INSERT INTO `category_persyaratans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Persyaratan Umum', '2023-03-03 07:58:24', '2023-03-03 07:58:24'),
(2, 'Persyaratan Khusus Jalur Prestasi', '2023-03-03 07:58:24', '2023-03-03 07:58:24'),
(3, 'Persyaratan Khusus Jalur Reguler', '2023-03-03 07:58:24', '2023-03-03 07:58:24'),
(4, 'Tempat dan Waktu Pendaftaran', '2023-03-03 07:58:24', '2023-03-03 07:58:24'),
(5, 'Daftar Ulang', '2023-03-03 07:58:24', '2023-03-03 07:58:24'),
(6, 'Hal-Hal lain', '2023-03-03 07:58:24', '2023-03-03 07:58:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwals`
--

CREATE TABLE `jadwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwals`
--

INSERT INTO `jadwals` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'jadwal_pendaftaran.png', '2023-03-03 07:58:28', '2023-03-03 07:58:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tests`
--

CREATE TABLE `jadwal_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_mulai` varchar(191) NOT NULL,
  `tanggal_selesai` varchar(191) NOT NULL,
  `jam_mulai` varchar(191) NOT NULL,
  `jam_selesai` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_tests`
--

INSERT INTO `jadwal_tests` (`id`, `tanggal_mulai`, `tanggal_selesai`, `jam_mulai`, `jam_selesai`, `created_at`, `updated_at`) VALUES
(1, '05/01/2025', '06/30/2025', '07:00', '23:59', '2024-08-19 02:26:56', '2024-08-28 03:12:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_30_081322_create_siswas_table', 1),
(6, '2022_01_30_093452_create_calon_pesertas_table', 1),
(7, '2022_02_01_141238_create_category_persyaratans_table', 1),
(8, '2022_02_01_141612_create_persyaratans_table', 1),
(9, '2022_02_01_152443_create_category_biayas_table', 1),
(10, '2022_02_01_152452_create_biayas_table', 1),
(11, '2022_02_02_174312_create_jadwals_table', 1),
(12, '2022_02_02_174452_create_booklets_table', 1),
(13, '2022_02_02_174516_create_alur_pendaftarans_table', 1),
(14, '2022_02_04_183136_create_soal_tests_table', 1),
(15, '2022_02_04_200125_create_nilai_tests_table', 1),
(16, '2022_02_10_151145_create_jadwal_tests_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_tests`
--

CREATE TABLE `nilai_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_tests`
--

INSERT INTO `nilai_tests` (`id`, `id_siswa`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 100, '2024-07-16 18:22:41', '2024-07-16 18:22:41'),
(2, 4, 70, '2024-08-08 20:38:00', '2024-08-08 20:38:00'),
(3, 5, 90, '2024-08-12 22:22:44', '2024-08-12 22:22:44'),
(4, 6, 100, '2024-08-21 21:03:09', '2024-08-21 21:03:09'),
(5, 7, 100, '2024-08-27 22:01:25', '2024-08-27 22:01:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `persyaratans`
--

CREATE TABLE `persyaratans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `number` int(11) NOT NULL,
  `sub_persyaratan` varchar(191) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `persyaratans`
--

INSERT INTO `persyaratans` (`id`, `name`, `number`, `sub_persyaratan`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'Berbagai Agama', 1, '', 1, '2023-03-03 07:58:24', '2023-03-03 07:58:24'),
(2, 'Umur tidak kurang atau lebih dari 13 / 14 Tahun bagi SMP\r\n, Umur tidak kurang atau lebih dari 20 / 21 Tahun bagi SMA', 2, '', 1, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(3, 'Memiliki ijazah/STTB/SKHU/SKL & Raport Sekolah', 3, '', 1, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(4, 'Jalur Prestasi adalah jalur khusus penerimaan calon peserta didik baru yang memiliki prestasi waktu bersekolah di sekolah yang lama, seperti Ranking, Olimpiade DLL', 1, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(5, 'Calon peserta didik baru didaftarkan secara kolektif oleh pihak sekolah dengan format yang terlampir', 2, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(6, 'Kuota jalur Prestasi disesuaikan dengan jumlah Kuota yang ditentukan oleh panitia PPDB 2024', 3, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(7, 'Calon peserta didik baru melalui jalur Prestasi yang mendaftar harus memenuhi kriteria sebagai berikut:', 4, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(8, 'Pendaftaran SMP, rata rata nilai mata pelajaran B. Indonesia, IPA dan Matematika dari semester 1 sampai 5 minimal 80,00 atau rata rata nilainya 75,00 dengan syarat berprestasi dalam lomba Juara (1,2,3) tingkat propinsi atau mewakili sebagai peserta tingkat nasonal dalam cabang lomba (Foto copy bukti dilampirkan) atau berprestasi di sekolah Seperti Perangkingan ( 1,2,3 ) ( Fotocopy Bukti Dilampirkan ).', 5, '7', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(9, 'Pendaftaran SMA (MIPA), rata rata nilai mata pelajaran B. Indonesia, IPA dan Matematika dari semester 1 sampai 5 minimal 80,00 atau rata rata nilainya 75,00 dengan syarat berprestasi dalam lomba Juara (1,2,3) tingkat propinsi atau mewakili sebagai peserta tingkat nasonal dalam cabang lomba (Foto copy bukti dilampirkan) atau berprestasi di sekolah Seperti Perangkingan ( 1,2,3 ) ( Fotocopy Bukti Dilampirkan ).', 6, '7', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(10, 'Pendaftaran SMA (IPS), rata rata nilai mata pelajaran B. Indonesia, IPA dan Matematika dari semester 1 sampai 5 minimal 80,00 atau rata rata nilainya 75,00 dengan syarat berprestasi dalam lomba Juara (1,2,3) tingkat propinsi atau mewakili sebagai peserta tingkat nasonal dalam cabang lomba (Foto copy bukti dilampirkan) atau berprestasi di sekolah Seperti Perangkingan ( 1,2,3 ) ( Fotocopy Bukti Dilampirkan ).', 7, '7', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(11, 'Melampirkan fotocopy nilai raport semester I,II,III,IV,V sebanyak 1 rangkap yang telah dilegalisir setiap calon peserta didik baru yang mendaftar jalur prestasi', 8, '7', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(12, 'Melampirkan fotocopy kartu keluarga sebanyak 1 lembar (yang ada NIK nya) dan Akta Kelahiran', 9, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(13, 'Melampirkan pas photo ukuran 3x4 sebanyak 2 lembar yang disetempel dii formulir pendaftaran', 10, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(14, 'Semua persyaratan peserta jalur Prestasi digabungkan ke dalam satu berkas', 11, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(15, 'Semua persyaratan dimasukkan kedalam MAP : Warna Biru untuk Semua Pendaftar', 12, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(16, 'Bagi calon peserta seleksi yang berprestasi juara dalam bidang lomba kejuaraan harus memperlihatkan piagam aslinya / Bukti Berprestasi', 13, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(17, 'Photocopi kartu peserta ujian nasional', 14, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(18, 'Tempat SMP-SMA YAPIM BIRU-BIRU', 1, '', 4, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(19, 'Waktu pendaftaran di mulai pada hari Senin-Jumat, Penyerahan berkas jalur Prestasi Secepatnya secara kolektif dari pihak Pendaftar kepada Panitia PPDB SMP-SMA YAPIM BIRU-BIRU dalam amplop/MAP tertutup', 2, '', 4, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(20, 'Pengumuman hasil jalur Prestasi, Akan diumumkan secepatnya', 3, '', 4, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(21, 'Daftar ulang / registrasi jalur Prestasi di mulai Setelah Pendaftar telah dinyatakan lulus dengan membawa surat berkas yang telah didaftar oleh pihak pendaftar', 1, NULL, 5, '2023-03-03 07:58:25', '2024-08-07 01:39:21'),
(22, 'Bagi peserta didik baru yang telah membayar uang sarana pendidikan tidak bisa diambil kembali jika mengundurkan diri', 2, NULL, 5, '2023-03-03 07:58:25', '2024-08-27 20:10:07'),
(23, 'Bagi peserta seleksi penerimaan peserta didik baru yang dinyatakan lulus namun tidak lulus pada Sekolah asal maka dinyatakan gugur sebagai peserta didik di SMP-SMA YAPIM BIRU-BIRU', 3, '', 5, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(24, 'Format pengiriman data peserta jalur undangan terlampir yang dicontohkan panitia PPDB', 1, '', 6, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(25, 'Hal-hal lain yang belum jelas dapat ditanyakan pada panitia penerimaan peserta didik baru', 2, '', 6, '2023-03-03 07:58:26', '2023-03-03 07:58:26'),
(26, 'Biaya sarana pendidikan Rp.50.000', 3, NULL, 6, '2023-03-03 07:58:26', '2024-08-27 20:10:46'),
(27, 'Calon peserta didik baru didaftarkan secara Online dengan formulir yang sudah diberikan atau bisa juga datang langsung ke kesekolah, kalau informasi belum jelas', 2, '', 2, '2023-03-03 07:58:25', '2023-03-03 07:58:25'),
(28, 'Pembayaran Sarana Pendidikan', 1, NULL, 3, '2024-08-05 19:45:47', '2024-08-27 19:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `piagam` varchar(191) DEFAULT NULL,
  `ijazah` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `nama_lengkap` varchar(191) DEFAULT NULL,
  `tempat_lahir` varchar(191) DEFAULT NULL,
  `tanggal_lahir` varchar(191) DEFAULT NULL,
  `jenis_kelamin` varchar(191) DEFAULT NULL,
  `agama` varchar(191) DEFAULT NULL,
  `nisn` varchar(191) DEFAULT NULL,
  `nis` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `telepon` varchar(191) DEFAULT NULL,
  `hobi` varchar(191) DEFAULT NULL,
  `cita_cita` varchar(191) DEFAULT NULL,
  `jumlah_saudara` varchar(191) DEFAULT NULL,
  `anak_ke` varchar(191) DEFAULT NULL,
  `asal_sekolah` varchar(191) DEFAULT NULL,
  `npsn_asal_sekolah` varchar(191) DEFAULT NULL,
  `jenis_sekolah` varchar(191) DEFAULT NULL,
  `status_sekolah` varchar(191) DEFAULT NULL,
  `mengikuti_paud` varchar(191) DEFAULT NULL,
  `mengikuti_tk` varchar(191) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `desa_kelurahan` varchar(191) DEFAULT NULL,
  `kodepos` varchar(191) DEFAULT NULL,
  `kecamatan` varchar(191) DEFAULT NULL,
  `kab_kota` varchar(191) DEFAULT NULL,
  `provinsi` varchar(191) DEFAULT NULL,
  `jarak_tempat_tinggal` varchar(191) DEFAULT NULL,
  `transportasi` varchar(191) DEFAULT NULL,
  `status_penerimaan_pip_bsm` text DEFAULT NULL,
  `alasan_menerima_pip_bsm` text DEFAULT NULL,
  `periode_menerima_pip_bsm` text DEFAULT NULL,
  `bidang_prestasi` varchar(191) DEFAULT NULL,
  `tingkat_prestasi` varchar(191) DEFAULT NULL,
  `peringkat` varchar(191) DEFAULT NULL,
  `tahun` varchar(191) DEFAULT NULL,
  `status_beasiswa` varchar(191) DEFAULT NULL,
  `sumber_beasiswa` varchar(191) DEFAULT NULL,
  `jenis_beasiswa` varchar(191) DEFAULT NULL,
  `jangka_waktu` varchar(191) DEFAULT NULL,
  `besaran_uang` bigint(20) DEFAULT NULL,
  `no_kk` varchar(191) DEFAULT NULL,
  `nama_ayah` varchar(191) DEFAULT NULL,
  `nik_ayah` varchar(191) DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(191) DEFAULT NULL,
  `telepon_ayah` varchar(191) DEFAULT NULL,
  `pekerjaan_ayah` varchar(191) DEFAULT NULL,
  `nama_ibu` varchar(191) DEFAULT NULL,
  `nik_ibu` varchar(191) DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(191) DEFAULT NULL,
  `telepon_ibu` varchar(191) DEFAULT NULL,
  `pekerjaan_ibu` varchar(191) DEFAULT NULL,
  `penghasilan_perbulan` bigint(20) DEFAULT NULL,
  `nomor_kss_kps` varchar(191) DEFAULT NULL,
  `nomor_pkh` varchar(191) DEFAULT NULL,
  `nomor_kip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `piagam`, `ijazah`, `photo`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `nisn`, `nis`, `email`, `telepon`, `hobi`, `cita_cita`, `jumlah_saudara`, `anak_ke`, `asal_sekolah`, `npsn_asal_sekolah`, `jenis_sekolah`, `status_sekolah`, `mengikuti_paud`, `mengikuti_tk`, `alamat`, `desa_kelurahan`, `kodepos`, `kecamatan`, `kab_kota`, `provinsi`, `jarak_tempat_tinggal`, `transportasi`, `status_penerimaan_pip_bsm`, `alasan_menerima_pip_bsm`, `periode_menerima_pip_bsm`, `bidang_prestasi`, `tingkat_prestasi`, `peringkat`, `tahun`, `status_beasiswa`, `sumber_beasiswa`, `jenis_beasiswa`, `jangka_waktu`, `besaran_uang`, `no_kk`, `nama_ayah`, `nik_ayah`, `pendidikan_terakhir_ayah`, `telepon_ayah`, `pekerjaan_ayah`, `nama_ibu`, `nik_ibu`, `pendidikan_terakhir_ibu`, `telepon_ibu`, `pekerjaan_ibu`, `penghasilan_perbulan`, `nomor_kss_kps`, `nomor_pkh`, `nomor_kip`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, NULL, 'Dewi Agfiannisa', 'Blitar', '1999-01-05', 'P', '', '8521456789', '9854561234564852', 'dewi123@gmail.com', '082165451234', 'Kesenian', 'Seniman', '3', '1', 'Mts Ar Roudlotul Ilmiyah', '78901234', 'SD', 'Swasta', 'Pernah', 'Pernah', 'Dsn. Bandar, Rt. 01, Rw. 04, no. 56', 'Bandar', '61583', 'Bandar Kedung Mulyo', 'Jombang', 'Jawa Timur', '5-10 Km', 'Motor', 'Aktif', 'Ranking 1 selama 3 tahun', '2021', 'Design Graphic', 'Regional', '2', '2021', 'Aktif', 'Dinas Pendidikan', 'Beasiswa Anak Cerdas', '6', 2500000, '3124564756423564', 'Suyitno', '3514235685464567', 'S1', '0821987564552', 'Designer graphic', 'Indriyani', '35127456785213521', 'D3', '082132524567', 'Guru', 6500000, '6548321', '6875465', '67912315', '2023-03-03 07:58:24', '2024-08-12 19:06:30'),
(6, NULL, 'ijazah_6_Olovian Boan Artha Malau.pdf', 'foto_6_Olovian Boan Artha Malau.png', 'Olovian Boan Artha Malau', 'candirejo', '2010-02-19', 'L', 'Kristen Protestan', '218160001', '1207071902010001', 'pianmalau9@gmail.com', '081375259939', 'Olahraga', 'PNS', '5', '3', 'SD Negri 101809 Ajibaho', '123909', 'SD', 'Swasta', 'Tidak', 'Tidak', 'Dusun III Sukaramai', 'Candirejo', '20358', 'Biru-Biru', 'Deli Serdang', 'Sumatera Utara', 'Kurang dari 5 Km', 'Angkutan Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1207071902010001', 'Suprianto', '1207071902020002', 'SMA/SMK/MA', '082369004686', 'Supir Angkot', 'Marista Faustina Sinurat', '1207071902020003', 'S1', '082369004686', 'Guru Honorer', 1000000, NULL, NULL, NULL, '2024-08-21 20:57:03', '2024-08-27 21:48:51'),
(7, NULL, 'ijazah_7_Kristian Imanuel Bangun.pdf', 'foto_7_Kristian Imanuel Bangun.png', 'Kristian Imanuel Bangun', 'Kota Medan', '1970-01-01', 'L', 'Islam', '123789', '1311314141414141', 'imanuelbangun@gmail.com', '082134567890', 'Kesenian', 'TNI', '10', '4', 'SMP Swasta Karya Pembangunan', NULL, 'SMP', 'Swasta', 'Pernah', 'Pernah', 'Kota Medan, Medan johor, Johon Regency', NULL, NULL, NULL, NULL, NULL, 'Kurang dari 5 Km', 'Jalan Kaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1207070201010001', 'Efendi Bangun', NULL, 'S3', '082166669999', 'Buruh Tani', 'Rohani Br Sembiring', NULL, 'S3', '082166669999', 'Wirausaha', 1500000, NULL, NULL, NULL, '2024-08-27 21:59:28', '2024-08-27 22:00:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_tests`
--

CREATE TABLE `soal_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `soal_tests`
--

INSERT INTO `soal_tests` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'soal_test_regular.pdf', '2023-03-03 07:58:28', '2023-03-03 07:58:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `role` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Utama 1', 'admin123@root.com', 'Root', 1, NULL, '$2y$10$woG2BrdUoV/Q9dnkj8I.EOP6clGUN1aldU/ukepXK2pJfevDQVXLe', NULL, '2023-03-03 00:58:23', '2024-08-05 20:01:24'),
(2, 'Admin Utama 2', 'pegawai123@gmail.com', 'Admin', 1, NULL, '$2y$10$GM0DI4znzimrRegEeC8SGetRJ91XwT/JcXyz5W/ZTMS9zyKzkc1h2', NULL, '2023-03-03 00:58:23', '2024-08-27 20:47:49'),
(3, 'Tata Usaha 1', 'tu123@gmail.com', 'Admin', 1, NULL, '$2y$10$v98z4YrzE91.DvAT8kh.ROJgADvjS6YsCiDJ0/z./VdmBwnQLyhgi', NULL, '2024-08-05 19:51:18', '2024-08-27 20:46:57'),
(4, 'Tata Usaha 2', 'tatausaha@gmail.com', 'Admin', 1, NULL, '$2y$10$ybBxOdwnN9lbVPjsD6nENO/6e1FFxDPLtEDmQYVb4obDssqxbsLfW', NULL, '2024-08-14 01:34:54', '2024-08-27 20:46:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alur_pendaftarans`
--
ALTER TABLE `alur_pendaftarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `biayas`
--
ALTER TABLE `biayas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `booklets`
--
ALTER TABLE `booklets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `calon_pesertas`
--
ALTER TABLE `calon_pesertas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category_biayas`
--
ALTER TABLE `category_biayas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category_persyaratans`
--
ALTER TABLE `category_persyaratans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal_tests`
--
ALTER TABLE `jadwal_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_tests`
--
ALTER TABLE `nilai_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `persyaratans`
--
ALTER TABLE `persyaratans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_nisn_unique` (`nisn`);

--
-- Indeks untuk tabel `soal_tests`
--
ALTER TABLE `soal_tests`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `alur_pendaftarans`
--
ALTER TABLE `alur_pendaftarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `biayas`
--
ALTER TABLE `biayas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `booklets`
--
ALTER TABLE `booklets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `calon_pesertas`
--
ALTER TABLE `calon_pesertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `category_biayas`
--
ALTER TABLE `category_biayas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `category_persyaratans`
--
ALTER TABLE `category_persyaratans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tests`
--
ALTER TABLE `jadwal_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `nilai_tests`
--
ALTER TABLE `nilai_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `persyaratans`
--
ALTER TABLE `persyaratans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `soal_tests`
--
ALTER TABLE `soal_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
