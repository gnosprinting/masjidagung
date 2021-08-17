-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 06:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bjb_masjidagung`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2021-07-03 18:52:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2021-07-03 18:55:51', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2021-07/logo_banjarbaru.png</td></tr><tr><td>password</td><td>$2y$10$/BaPmyUHGysyb9CYbFw1ruxNEaxKyYGTV3ojEGGvl3SJ2owZRf4CO</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2021-07-03 20:00:16', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@masjidagung.banjarbarukota.go.id</td></tr><tr><td>password</td><td>$2y$10$/BaPmyUHGysyb9CYbFw1ruxNEaxKyYGTV3ojEGGvl3SJ2owZRf4CO</td><td>$2y$10$mShPk532MzH2YuOMeMRDsePusRgTo91WnoMDAC9pAUHydsPyduS/a</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2021-07-03 20:01:42', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-07-03 20:01:47', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-03 20:01:54', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-07-03 20:02:02', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-03 20:02:13', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-06 17:00:48', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/1', 'Update data Fasilitas Umum at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-home</td><td>fa fa-puzzle-piece</td></tr></tbody></table>', 1, '2021-07-06 17:15:39', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/3', 'Update data Imam at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-user-md</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-07-06 18:15:01', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/3', 'Update data Imam at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user-md</td><td>fa fa-user-secret</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-07-06 18:15:25', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/4', 'Update data Khatib at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-user</td><td>fa fa-user-times</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2021-07-06 18:15:40', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/4', 'Update data Khatib at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user-times</td><td>fa fa-user-secret</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2021-07-06 18:16:05', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/3', 'Update data Imam at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user-secret</td><td>fa fa-users</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-07-06 18:16:16', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-07 04:44:19', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/add-save', 'Add New Data Master at Menu Management', '', 1, '2021-07-07 04:56:21', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/12', 'Update data Master at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr></tbody></table>', 1, '2021-07-07 05:18:33', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/add-save', 'Add New Data Kegiatan at Menu Management', '', 1, '2021-07-07 05:20:41', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/13', 'Update data Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>aqua</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2021-07-07 05:21:11', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/add-save', 'Add New Data Report at Menu Management', '', 1, '2021-07-07 05:25:31', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/14', 'Update data Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>light-blue</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-07-07 05:26:32', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/14', 'Update data Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>light-blue</td><td>yellow</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-07-07 05:26:47', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/profil/add-save', 'Add New Data MASJID AGUNG AL-MUNAWWARAH BANJARBARU at Profil Masjid', '', 1, '2021-07-07 05:38:28', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Sarana Ibadah at Fasilitas Umum', '', 1, '2021-07-07 05:40:06', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Kamar Mandi / WC at Fasilitas Umum', '', 1, '2021-07-07 05:40:41', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Sound System & Multimedia at Fasilitas Umum', '', 1, '2021-07-07 05:40:52', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Kantor Sekretariat at Fasilitas Umum', '', 1, '2021-07-07 05:41:02', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Perlengkapan Pengurusan Jenazah at Fasilitas Umum', '', 1, '2021-07-07 05:41:11', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Tempat Penitipan Sepatu/Sandal at Fasilitas Umum', '', 1, '2021-07-07 05:41:17', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Parkir at Fasilitas Umum', '', 1, '2021-07-07 05:41:23', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Tempat Wudhu at Fasilitas Umum', '', 1, '2021-07-07 05:41:34', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Pembangkit Listrik/Genset at Fasilitas Umum', '', 1, '2021-07-07 05:41:41', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Penyejuk Udara/AC at Fasilitas Umum', '', 1, '2021-07-07 05:41:49', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Mobil Ambulance at Fasilitas Umum', '', 1, '2021-07-07 05:41:55', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Ruang Belajar (TPA/Madrasah) at Fasilitas Umum', '', 1, '2021-07-07 05:42:01', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Taman at Fasilitas Umum', '', 1, '2021-07-07 05:42:06', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Menyelenggarakan Ibadah Sholat Fardhu at Fasilitas Umum', '', 1, '2021-07-07 05:42:13', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Menyelenggarakan Kegiatan Hari Besar Islam at Fasilitas Umum', '', 1, '2021-07-07 05:42:18', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/add-save', 'Add New Data Menyelenggarakan Pengajian Rutin at Fasilitas Umum', '', 1, '2021-07-07 05:42:25', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/delete/16', 'Delete data Menyelenggarakan Pengajian Rutin at Fasilitas Umum', '', 1, '2021-07-07 05:43:33', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/delete/15', 'Delete data Menyelenggarakan Kegiatan Hari Besar Islam at Fasilitas Umum', '', 1, '2021-07-07 05:43:39', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/fasum/delete/14', 'Delete data Menyelenggarakan Ibadah Sholat Fardhu at Fasilitas Umum', '', 1, '2021-07-07 05:43:45', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Muhammad Al Hiyyid at Guru', '', 1, '2021-07-07 05:51:51', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-10 03:21:12', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data H. Muntasir at Imam', '', 1, '2021-07-10 03:30:39', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data H. Mahdad at Imam', '', 1, '2021-07-10 03:30:50', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data H. Nurdiansyah at Imam', '', 1, '2021-07-10 03:31:16', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data H. Syamsuddin at Imam', '', 1, '2021-07-10 03:31:34', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data KH. Ahmad Murni at Guru', '', 1, '2021-07-10 03:32:24', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/2', 'Update data KH. Ahmad Murni (Guru Darat) at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_guru</td><td>KH. Ahmad Murni</td><td>KH. Ahmad Murni (Guru Darat)</td></tr></tbody></table>', 1, '2021-07-10 03:33:24', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Muhammad Bin Abdurrahman Al Habsy at Guru', '', 1, '2021-07-10 03:37:15', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Al Habib Ahmad Jamal Bin Toha Ba\'agil at Guru', '', 1, '2021-07-10 03:39:21', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Sholeh Bin Muhammad Al-Jufri at Guru', '', 1, '2021-07-10 03:39:54', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Hasan Alaydrus at Guru', '', 1, '2021-07-10 03:41:41', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Muhammad Al Habsyi at Guru', '', 1, '2021-07-10 03:43:45', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Ustadz Muhammad Wahyu at Guru', '', 1, '2021-07-10 03:44:05', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Hamdi Al Hamid at Guru', '', 1, '2021-07-10 03:44:34', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Habib Bagir Bin Yahya at Khatib', '', 1, '2021-07-10 03:47:25', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data KH Hasanudin at Khatib', '', 1, '2021-07-10 03:52:29', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Guru Sam\'ani at Khatib', '', 1, '2021-07-10 03:53:48', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Djaka at Pengurus', '', 1, '2021-07-10 03:57:40', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Teddy Endar at Pengurus', '', 1, '2021-07-10 04:02:49', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Fikri at Pengurus', '', 1, '2021-07-10 04:03:00', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Reza Muttaqien at Pengurus', '', 1, '2021-07-10 04:03:15', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Denny at Pengurus', '', 1, '2021-07-10 04:03:31', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Sigit Suhar at Pengurus', '', 1, '2021-07-10 04:06:14', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Wijaya Kesuma at Pengurus', '', 1, '2021-07-10 04:06:33', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Ridho at Pengurus', '', 1, '2021-07-10 04:07:20', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Wahyu at Pengurus', '', 1, '2021-07-10 04:07:36', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Anjar at Pengurus', '', 1, '2021-07-10 04:07:52', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Alie at Pengurus', '', 1, '2021-07-10 04:08:07', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Arie at Pengurus', '', 1, '2021-07-10 04:08:19', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Husnul at Pengurus', '', 1, '2021-07-10 04:09:25', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/13', 'Update data Husnul at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_pengurus</td><td>a</td><td>Aktif</td></tr></tbody></table>', 1, '2021-07-10 04:09:59', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Azizah at Pengurus', '', 1, '2021-07-10 04:10:28', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Amel at Pengurus', '', 1, '2021-07-10 04:10:40', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Fada at Pengurus', '', 1, '2021-07-10 04:11:01', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Nana at Pengurus', '', 1, '2021-07-10 04:11:13', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Cecep at Pengurus', '', 1, '2021-07-10 04:11:25', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Oriz at Pengurus', '', 1, '2021-07-10 04:11:46', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Ahmadi at Pengurus', '', 1, '2021-07-10 04:11:58', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-07-10 04:26:49', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-10 04:27:11', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_rutin/add-save', 'Add New Data Sholat Subuh at Kegiatan Rutin', '', 1, '2021-07-10 04:34:02', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_rutin/add-save', 'Add New Data Sholat Dzuhur at Kegiatan Rutin', '', 1, '2021-07-10 04:35:43', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_rutin/add-save', 'Add New Data Sholat Ashar at Kegiatan Rutin', '', 1, '2021-07-10 04:36:19', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_rutin/add-save', 'Add New Data Sholat Maghrib at Kegiatan Rutin', '', 1, '2021-07-10 04:36:47', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_rutin/add-save', 'Add New Data Sholat Isya at Kegiatan Rutin', '', 1, '2021-07-10 04:37:02', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/add-save', 'Add New Data Isra Mi\'raj at Hari Besar', '', 1, '2021-07-10 04:45:15', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/add-save', 'Add New Data Nisfu Syaban at Hari Besar', '', 1, '2021-07-10 04:48:07', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/add-save', 'Add New Data Idul Adha at Hari Besar', '', 1, '2021-07-10 04:49:44', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/add-save', 'Add New Data Maulid Nabi Muhammad at Hari Besar', '', 1, '2021-07-10 04:50:18', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/add-save', 'Add New Data Pengajian Rutin Pagi Sabtu at Pengajian', '', 1, '2021-07-10 05:07:02', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Prof. DR. Habib Alwi Bin Hamid bin Syihabuddin at Guru', '', 1, '2021-07-10 05:11:23', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/add-save', 'Add New Data Pengajian Mingguan Rabu Malam Kamis at Pengajian', '', 1, '2021-07-10 05:12:15', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Abdullah Bin Abdurrahman Al Muhdor Tarim (Hadramaut) at Guru', '', 1, '2021-07-10 05:14:03', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/add-save', 'Add New Data Pengajian Rutin Jum\'at Malam at Pengajian', '', 1, '2021-07-10 05:18:21', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/add-save', 'Add New Data Pengajian Rutin Pagi Senin at Pengajian', '', 1, '2021-07-10 05:20:10', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Ustadz DR. Abdul Somad, LC., M.A. at Guru', '', 1, '2021-07-10 05:20:55', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Ustad Das\'ad Latif at Guru', '', 1, '2021-07-10 05:21:28', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/add-save', 'Add New Data Tabligh Akbar at Dakwah', '', 1, '2021-07-10 05:23:46', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/add-save', 'Add New Data Peringatan Isra & Mi\'raj Nabi Muhammad SAW at Dakwah', '', 1, '2021-07-10 05:24:49', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/add-save', 'Add New Data Tabligh Akbar at Dakwah', '', 1, '2021-07-10 05:26:04', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/add-save', 'Add New Data Sholat Subuh Berjamaah at Dakwah', '', 1, '2021-07-10 05:27:27', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-10 05:30:19', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-10 05:30:37', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-10 05:30:56', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-10 17:03:22', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:24:26', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:25:28', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:26:07', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:27:30', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:27:54', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:28:24', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:28:52', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:29:16', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Pos at Kegiatan Pengurus', '', 1, '2021-07-10 17:29:58', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Parkir at Kegiatan Pengurus', '', 1, '2021-07-10 17:34:46', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Parkir at Kegiatan Pengurus', '', 1, '2021-07-10 17:35:46', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Parkir at Kegiatan Pengurus', '', 1, '2021-07-10 17:36:51', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/add-save', 'Add New Data Jaga Parkir at Kegiatan Pengurus', '', 1, '2021-07-10 17:37:26', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/11', 'Update data Jaga Parkir at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jam_selesai</td><td>05:00:00</td><td>17:00:00</td></tr></tbody></table>', 1, '2021-07-10 17:37:46', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-12 01:33:09', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-12 04:19:14', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-07-12 04:20:14', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-12 04:20:18', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-12 18:45:44', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 19:06:56', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 19:14:25', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 19:17:57', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 19:20:36', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 19:22:38', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data ----- at Guru', '', 1, '2021-07-12 19:31:47', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data ----- at Khatib', '', 1, '2021-07-12 19:31:59', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data ----- at Pengurus', '', 1, '2021-07-12 19:32:30', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data ----- at Imam', '', 1, '2021-07-12 19:32:42', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 19:35:34', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 19:52:57', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/delete/5', 'Delete data Percobaan at Hari Besar', '', 1, '2021-07-12 22:45:15', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/4', 'Update data Maulid Nabi Muhammad at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-12 22:46:10', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36 Edg/91.0.864.67', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-12 23:25:47', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-13 16:49:41', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/edit-save/2', 'Update data Pengajian Mingguan Rabu Malam Kamis at Pengajian', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tgl_mulai</td><td>0000-00-00</td><td>2019-01-01</td></tr><tr><td>tgl_selesai</td><td>0000-00-00</td><td>0-11-30</td></tr><tr><td>status</td><td></td><td>Aktif</td></tr></tbody></table>', 1, '2021-07-13 17:23:13', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/delete/4', 'Delete data Pengajian Rutin Pagi Senin at Pengajian', '', 1, '2021-07-13 17:31:12', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/delete/3', 'Delete data Pengajian Rutin Jum\'at Malam at Pengajian', '', 1, '2021-07-13 17:31:15', NULL),
(146, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/delete/2', 'Delete data Pengajian Mingguan Rabu Malam Kamis at Pengajian', '', 1, '2021-07-13 17:31:17', NULL),
(147, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/delete/1', 'Delete data Pengajian Rutin Pagi Sabtu at Pengajian', '', 1, '2021-07-13 17:31:19', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/edit-save/3', 'Update data Tabligh Akbar at Dakwah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-07-13 17:51:38', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/13', 'Delete data Ustad Das\'ad Latif at Guru', '', 1, '2021-07-13 18:19:04', NULL),
(150, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data H. Ahmad Rifa\'i at Mu\'adzin', '', 1, '2021-07-13 18:25:18', NULL),
(151, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Syahruddin at Mu\'adzin', '', 1, '2021-07-13 18:25:26', NULL),
(152, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Muslih at Mu\'adzin', '', 1, '2021-07-13 18:25:32', NULL),
(153, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Ahmad Baihaqi at Mu\'adzin', '', 1, '2021-07-13 18:25:43', NULL),
(154, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Muhammad Ridwan, S.Pd.I at Mu\'adzin', '', 1, '2021-07-13 18:26:04', NULL),
(155, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Wardi at Mu\'adzin', '', 1, '2021-07-13 18:26:12', NULL),
(156, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Ahmad Fauzan, S.Pd.I at Mu\'adzin', '', 1, '2021-07-13 18:26:47', NULL),
(157, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Zainuddin at Mu\'adzin', '', 1, '2021-07-13 18:27:00', NULL),
(158, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Saifuddin at Mu\'adzin', '', 1, '2021-07-13 18:27:26', NULL),
(159, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/delete/3', 'Delete data Guru Sam\'ani at Khatib', '', 1, '2021-07-13 18:28:31', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(160, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/delete/2', 'Delete data KH Hasanudin at Khatib', '', 1, '2021-07-13 18:28:34', NULL),
(161, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/delete/1', 'Delete data Habib Bagir Bin Yahya at Khatib', '', 1, '2021-07-13 18:28:39', NULL),
(162, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Ahmad Jazuli,S.Pd.I at Khatib', '', 1, '2021-07-13 18:29:27', NULL),
(163, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Muhammad Al Hafiz at Khatib', '', 1, '2021-07-13 18:29:43', NULL),
(164, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Syihabuddin Lc at Khatib', '', 1, '2021-07-13 18:30:16', NULL),
(165, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Abdurrahim at Khatib', '', 1, '2021-07-13 18:30:30', NULL),
(166, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Syahdi Hidayat Said,S.Ag at Khatib', '', 1, '2021-07-13 18:31:45', NULL),
(167, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Drs.H.Abdurrahman at Khatib', '', 1, '2021-07-13 18:31:59', NULL),
(168, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Said Thohit S.Pd.I at Khatib', '', 1, '2021-07-13 18:32:41', NULL),
(169, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Habib Hasan Bin Hasyim Ba\'bud at Khatib', '', 1, '2021-07-13 18:33:05', NULL),
(170, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Muhammad Sam\'ani,S.Ag at Khatib', '', 1, '2021-07-13 18:33:23', NULL),
(171, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Drs.KH.Nafiah Muhja at Khatib', '', 1, '2021-07-13 18:33:35', NULL),
(172, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Habib Muhammad Bin Umar Al Hayyid at Khatib', '', 1, '2021-07-13 18:34:08', NULL),
(173, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Muhammad Syauqi,Lc at Khatib', '', 1, '2021-07-13 18:39:53', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Muhammad Ibnu Dahlan at Khatib', '', 1, '2021-07-13 18:40:12', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data H. Ahmad Baihaqi at Khatib', '', 1, '2021-07-13 18:40:22', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Wahyudi Lc at Khatib', '', 1, '2021-07-13 18:40:37', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Syamsunie,S.Pd.I at Khatib', '', 1, '2021-07-13 18:41:44', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Ibnu Athaillah at Khatib', '', 1, '2021-07-13 18:41:56', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/delete/3', 'Delete data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 18:43:14', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/delete/2', 'Delete data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 18:43:17', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/delete/1', 'Delete data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 18:43:19', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Muhammad Suhaimi,Lc at Khatib', '', 1, '2021-07-13 18:55:57', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 18:56:44', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 18:57:11', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 18:57:31', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ahmad Fu\'ad at Khatib', '', 1, '2021-07-13 18:58:06', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/delete/23', 'Delete data Ahmad Fu\'ad at Khatib', '', 1, '2021-07-13 18:58:39', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Mujiburrahman S.Pd.I at Khatib', '', 1, '2021-07-13 18:59:07', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/add-save', 'Add New Data Ahmad Fu\'ad at Mu\'adzin', '', 1, '2021-07-13 18:59:35', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:00:03', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:01:02', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:01:23', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Masri S.Ag at Khatib', '', 1, '2021-07-13 19:03:24', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:03:48', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.H.Ahmad Ridhuan,Lc at Khatib', '', 1, '2021-07-13 19:04:34', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:05:16', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Muhammad Amin Hasan at Khatib', '', 1, '2021-07-13 19:06:08', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:06:45', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:07:18', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:07:45', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data Ust.Mahlidiin,S.Ag,M.Ag at Khatib', '', 1, '2021-07-13 19:08:56', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:09:32', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:10:06', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/11', 'Update data Ust.Said Thohir S.Pd.I at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_khatib</td><td>Ust.Said Thohit S.Pd.I</td><td>Ust.Said Thohir S.Pd.I</td></tr></tbody></table>', 1, '2021-07-13 19:10:21', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/add-save', 'Add New Data KH.Adnan Nawawi,S.Ag at Khatib', '', 1, '2021-07-13 19:12:31', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:13:30', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:13:57', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:14:38', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 19:15:00', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:25:10', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:25:32', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:26:25', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:27:55', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:28:21', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:28:47', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:29:11', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:29:52', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:30:18', NULL),
(219, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:30:37', NULL),
(220, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:31:11', NULL),
(221, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:31:43', NULL),
(222, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:32:04', NULL),
(223, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:32:34', NULL),
(224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:32:53', NULL),
(225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:33:17', NULL),
(226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-07-13 23:33:40', NULL),
(227, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data H. Ibnu Athaillah at Imam', '', 1, '2021-07-13 23:36:06', NULL),
(228, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data H. Khairin Noor at Imam', '', 1, '2021-07-13 23:36:26', NULL),
(229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/1', 'Update data Habib Muhammad Al Hiyed at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_guru</td><td>Habib Muhammad Al Hiyyid</td><td>Habib Muhammad Al Hiyed</td></tr></tbody></table>', 1, '2021-07-13 23:38:21', NULL),
(230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data KH. Nursyahid Ramli, Lc at Guru', '', 1, '2021-07-13 23:39:38', NULL),
(231, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Habib Murthada at Guru', '', 1, '2021-07-13 23:39:49', NULL),
(232, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/2', 'Delete data Teddy Endar at Pengurus', '', 1, '2021-07-13 23:40:13', NULL),
(233, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/20', 'Delete data Ahmadi at Pengurus', '', 1, '2021-07-13 23:40:17', NULL),
(234, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/19', 'Delete data Oriz at Pengurus', '', 1, '2021-07-13 23:40:27', NULL),
(235, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/18', 'Delete data Cecep at Pengurus', '', 1, '2021-07-13 23:40:32', NULL),
(236, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/17', 'Delete data Nana at Pengurus', '', 1, '2021-07-13 23:40:36', NULL),
(237, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/16', 'Delete data Fada at Pengurus', '', 1, '2021-07-13 23:40:38', NULL),
(238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/15', 'Delete data Amel at Pengurus', '', 1, '2021-07-13 23:40:41', NULL),
(239, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/14', 'Delete data Azizah at Pengurus', '', 1, '2021-07-13 23:40:44', NULL),
(240, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/13', 'Delete data Husnul at Pengurus', '', 1, '2021-07-13 23:40:47', NULL),
(241, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/12', 'Delete data Arie at Pengurus', '', 1, '2021-07-13 23:40:50', NULL),
(242, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/11', 'Delete data Alie at Pengurus', '', 1, '2021-07-13 23:40:53', NULL),
(243, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/10', 'Delete data Anjar at Pengurus', '', 1, '2021-07-13 23:40:56', NULL),
(244, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/9', 'Delete data Wahyu at Pengurus', '', 1, '2021-07-13 23:40:59', NULL),
(245, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/8', 'Delete data Ridho at Pengurus', '', 1, '2021-07-13 23:41:06', NULL),
(246, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/7', 'Delete data Wijaya Kesuma at Pengurus', '', 1, '2021-07-13 23:41:09', NULL),
(247, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/6', 'Delete data Sigit Suhar at Pengurus', '', 1, '2021-07-13 23:41:13', NULL),
(248, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/5', 'Delete data Denny at Pengurus', '', 1, '2021-07-13 23:41:16', NULL),
(249, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/4', 'Delete data Reza Muttaqien at Pengurus', '', 1, '2021-07-13 23:41:19', NULL),
(250, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/3', 'Delete data Fikri at Pengurus', '', 1, '2021-07-13 23:41:21', NULL),
(251, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/delete/1', 'Delete data Djaka at Pengurus', '', 1, '2021-07-13 23:41:24', NULL),
(252, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-15 03:46:27', NULL),
(253, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data WALIKOTA BANJARBARU at Pengurus', '', 1, '2021-07-15 03:47:43', NULL),
(254, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data WAKIL WALIKOTA BANJARBARU at Pengurus', '', 1, '2021-07-15 03:48:34', NULL),
(255, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KETUA DPRD KOTA BANJARBARU at Pengurus', '', 1, '2021-07-15 03:48:56', NULL),
(256, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KEPALA KANTOR KEMENAG KOTA BANJARBARU at Pengurus', '', 1, '2021-07-15 03:49:29', NULL),
(257, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KETUA MUI KOTA BANJARBARU at Pengurus', '', 1, '2021-07-15 03:49:50', NULL),
(258, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KETUA DMI KOTA BANJARBARU KH. ABUL HASAN at Pengurus', '', 1, '2021-07-15 03:50:22', NULL),
(259, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/27', 'Update data KETUA DMI KOTA BANJARBARU at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_pengurus</td><td>KETUA DMI KOTA BANJARBARU KH. ABUL HASAN</td><td>KETUA DMI KOTA BANJARBARU</td></tr></tbody></table>', 1, '2021-07-15 03:50:57', NULL),
(260, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KH. ABUL HASAN at Pengurus', '', 1, '2021-07-15 03:51:23', NULL),
(261, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data SEKRETARIS DAERAH KOTA BANJARBARU at Pengurus', '', 1, '2021-07-15 03:51:59', NULL),
(262, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Drs. H. RUSPANDIE, MM at Pengurus', '', 1, '2021-07-15 03:52:36', NULL),
(263, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Drs. H. ABDURRAHMAN, S.Ag at Pengurus', '', 1, '2021-07-15 03:53:09', NULL),
(264, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Ir.H.JAYA KRISNA at Pengurus', '', 1, '2021-07-15 03:54:07', NULL),
(265, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data H. SYAHDI HIDAYAT, S.Ag at Pengurus', '', 1, '2021-07-15 03:54:38', NULL),
(266, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KABAG KESRA SETDAKO BANJARBARU at Pengurus', '', 1, '2021-07-15 03:55:40', NULL),
(267, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data MANRUNI, ST at Pengurus', '', 1, '2021-07-15 03:56:05', NULL),
(268, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KASUBBAG PENDIDIKAN PEMBINAAN KARAKTER & KEAGAMAAN PADA BAGIAN KESRA SETDAKO BANJARBARU at Pengurus', '', 1, '2021-07-15 03:56:46', NULL),
(269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data H. JAZULI, S.Pd.I at Pengurus', '', 1, '2021-07-15 03:58:31', NULL),
(270, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data H. IBNU ATHAILLAH at Pengurus', '', 1, '2021-07-15 03:59:00', NULL),
(271, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data MUJIBURRAHMAN, S.Pd.I at Pengurus', '', 1, '2021-07-15 03:59:29', NULL),
(272, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data FATHURRIDHA SAID, S.Ag at Pengurus', '', 1, '2021-07-15 04:00:00', NULL),
(273, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data RIZALI HADI at Pengurus', '', 1, '2021-07-15 04:00:21', NULL),
(274, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data H. RAHMADI, S.Sos, M.AP at Pengurus', '', 1, '2021-07-15 04:01:08', NULL),
(275, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data H. M. NASRULLAH, S.Pd.I at Pengurus', '', 1, '2021-07-15 04:01:36', NULL),
(276, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data SYAFRUDIN NOOR, S.Pd.I at Pengurus', '', 1, '2021-07-15 04:02:03', NULL),
(277, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data ROKHYAT RIYADI, SE, M.Si at Pengurus', '', 1, '2021-07-15 04:02:36', NULL),
(278, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data ADRIANI at Pengurus', '', 1, '2021-07-15 04:02:52', NULL),
(279, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data YANI at Pengurus', '', 1, '2021-07-15 04:03:05', NULL),
(280, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data SIRAJONI, AP, MM at Pengurus', '', 1, '2021-07-15 04:03:42', NULL),
(281, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data ZABIDI ANSHARI, ST, MT at Pengurus', '', 1, '2021-07-15 04:04:13', NULL),
(282, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data MASRUL, SP at Pengurus', '', 1, '2021-07-15 04:09:50', NULL),
(283, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data ENDRO SISWANTO, ST at Pengurus', '', 1, '2021-07-15 04:10:15', NULL),
(284, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data M. RIDWAN, S.Pd.I at Pengurus', '', 1, '2021-07-15 04:10:40', NULL),
(285, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data H. MAHRAIN RAHMAN, S.Sos, M.AP at Pengurus', '', 1, '2021-07-15 04:11:07', NULL),
(286, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data HELMI WANSYAH, SH at Pengurus', '', 1, '2021-07-15 04:11:46', NULL),
(287, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data KABID OPERASIONAL DAN PENGENDALIAN SATPOLPP at Pengurus', '', 1, '2021-07-15 04:12:09', NULL),
(288, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data SARTONO, S.Sos at Pengurus', '', 1, '2021-07-15 04:12:33', NULL),
(289, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data MAHRUS at Pengurus', '', 1, '2021-07-15 04:12:48', NULL),
(290, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data RAHMAT JULIANI, ST at Pengurus', '', 1, '2021-07-15 04:13:03', NULL),
(291, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data AULIA at Pengurus', '', 1, '2021-07-15 04:13:24', NULL),
(292, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data A. YANI at Pengurus', '', 1, '2021-07-15 04:16:00', NULL),
(293, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Djaka at Pengurus', '', 1, '2021-07-15 04:21:09', NULL),
(294, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Teddy Endar at Pengurus', '', 1, '2021-07-15 04:21:32', NULL),
(295, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Reza Muttaqien at Pengurus', '', 1, '2021-07-15 04:21:47', NULL),
(296, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Fikri at Pengurus', '', 1, '2021-07-15 04:21:58', NULL),
(297, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Denny at Pengurus', '', 1, '2021-07-15 04:22:09', NULL),
(298, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Sigit Suhar at Pengurus', '', 1, '2021-07-15 04:22:18', NULL),
(299, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Oriz at Pengurus', '', 1, '2021-07-15 04:22:35', NULL),
(300, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Bangjay at Pengurus', '', 1, '2021-07-15 04:23:06', NULL),
(301, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Ridho at Pengurus', '', 1, '2021-07-15 04:23:28', NULL),
(302, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Wahyu at Pengurus', '', 1, '2021-07-15 04:23:42', NULL),
(303, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Anjar at Pengurus', '', 1, '2021-07-15 04:23:56', NULL),
(304, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Ahmadi at Pengurus', '', 1, '2021-07-15 04:24:09', NULL),
(305, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Arie at Pengurus', '', 1, '2021-07-15 04:24:18', NULL),
(306, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Cecep at Pengurus', '', 1, '2021-07-15 04:24:34', NULL),
(307, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Nana at Pengurus', '', 1, '2021-07-15 04:24:46', NULL),
(308, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Azizah at Pengurus', '', 1, '2021-07-15 04:25:07', NULL),
(309, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Amel at Pengurus', '', 1, '2021-07-15 04:25:16', NULL),
(310, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Fada at Pengurus', '', 1, '2021-07-15 04:25:26', NULL),
(311, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Alie at Pengurus', '', 1, '2021-07-15 04:25:40', NULL),
(312, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/add-save', 'Add New Data Husnul at Pengurus', '', 1, '2021-07-15 04:25:53', NULL),
(313, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/13', 'Update data Jaga Parkir at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>2</td><td>72</td></tr></tbody></table>', 1, '2021-07-15 04:26:11', NULL),
(314, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/12', 'Update data Jaga Parkir at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>6</td><td>79</td></tr></tbody></table>', 1, '2021-07-15 04:26:20', NULL),
(315, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/11', 'Update data Jaga Parkir at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>8</td><td>71</td></tr></tbody></table>', 1, '2021-07-15 04:26:30', NULL),
(316, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/10', 'Update data Jaga Parkir at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>4</td><td>73</td></tr></tbody></table>', 1, '2021-07-15 04:26:39', NULL),
(317, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/9', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>19</td><td>76</td></tr></tbody></table>', 1, '2021-07-15 04:26:49', NULL),
(318, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/9', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>76</td><td>68</td></tr></tbody></table>', 1, '2021-07-15 04:26:59', NULL),
(319, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/8', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>3</td><td>74</td></tr></tbody></table>', 1, '2021-07-15 04:27:10', NULL),
(320, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/7', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>1</td><td>65</td></tr></tbody></table>', 1, '2021-07-15 04:27:22', NULL),
(321, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/6', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>5</td><td>61</td></tr></tbody></table>', 1, '2021-07-15 04:27:33', NULL),
(322, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/5', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>18</td><td>64</td></tr></tbody></table>', 1, '2021-07-15 04:27:45', NULL),
(323, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/4', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>12</td><td>67</td></tr></tbody></table>', 1, '2021-07-15 04:28:01', NULL),
(324, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/3', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>10</td><td>63</td></tr></tbody></table>', 1, '2021-07-15 04:28:15', NULL),
(325, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/2', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>11</td><td>69</td></tr></tbody></table>', 1, '2021-07-15 04:28:31', NULL),
(326, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengurus/edit-save/1', 'Update data Jaga Pos at Kegiatan Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_pengurus</td><td>20</td><td>66</td></tr></tbody></table>', 1, '2021-07-15 04:28:42', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(327, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/add-save', 'Add New Data Pengajian Senin / Malam Selasa (Ba\'da Maghrib) at Pengajian', '', 1, '2021-07-15 04:42:47', NULL),
(328, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/add-save', 'Add New Data Pengajian Rabu / Malam Kamis (Ba\'da Magrib) at Pengajian', '', 1, '2021-07-15 04:44:02', NULL),
(329, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_pengajian/add-save', 'Add New Data Pengajian Sabtu Pagi (Ba\'da Subuh) at Pengajian', '', 1, '2021-07-15 04:45:14', NULL),
(330, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Ustadz Muslim at Guru', '', 1, '2021-07-15 04:53:36', NULL),
(331, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data Ustadz Syahruddin at Guru', '', 1, '2021-07-15 04:53:49', NULL),
(332, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_belajar_quran/add-save', 'Add New Data Belajar Al Qur\'an at Belajar Mengajar', '', 1, '2021-07-15 05:16:59', NULL),
(333, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_belajar_quran/add-save', 'Add New Data Belajar Tilawah at Belajar Mengajar', '', 1, '2021-07-15 05:17:40', NULL),
(334, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-16 05:20:34', NULL),
(335, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/18', 'Update data Laporan Guru Pengajian at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Laporan Pengajian</td><td>Laporan Guru Pengajian</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>14</td><td></td></tr></tbody></table>', 1, '2021-07-16 05:38:47', NULL),
(336, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/23', 'Update data Laporan Sholat Jum\'at at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Laporan Kegiatan Sholat Jum\'at</td><td>Laporan Sholat Jum\'at</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>14</td><td></td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2021-07-16 06:00:12', NULL),
(337, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/25', 'Update data Laporan Belajar-mengajar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Laporan Kegiatan Belajar-mengajar</td><td>Laporan Belajar-mengajar</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>14</td><td></td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2021-07-16 06:00:24', NULL),
(338, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-07-26 16:55:27', NULL),
(339, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/add-save', 'Add New Data Hari Raya Haji at Hari Besar', '', 1, '2021-07-26 16:59:38', NULL),
(340, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-02 17:42:07', NULL),
(341, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/edit-save/7', 'Update data H. Khairin Noor at Imam', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:02', NULL),
(342, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/edit-save/6', 'Update data H. Ibnu Athaillah at Imam', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:10', NULL),
(343, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/edit-save/4', 'Update data H. Syamsuddin at Imam', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:18', NULL),
(344, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/edit-save/3', 'Update data H. Nurdiansyah at Imam', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:25', NULL),
(345, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/edit-save/2', 'Update data H. Mahdad at Imam', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:31', NULL),
(346, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/edit-save/1', 'Update data H. Muntasir at Imam', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:37', NULL),
(347, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/18', 'Update data Ustadz Syahruddin at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:51', NULL),
(348, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/17', 'Update data Ustadz Muslim at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:43:57', NULL),
(349, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/16', 'Update data Habib Murthada at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:02', NULL),
(350, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/15', 'Update data KH. Nursyahid Ramli, Lc at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:07', NULL),
(351, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/12', 'Update data Ustadz DR. Abdul Somad, LC., M.A. at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:14', NULL),
(352, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/11', 'Update data Habib Abdullah Bin Abdurrahman Al Muhdor Tarim (Hadramaut) at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:19', NULL),
(353, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/10', 'Update data Prof. DR. Habib Alwi Bin Hamid bin Syihabuddin at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:25', NULL),
(354, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/9', 'Update data Habib Hamdi Al Hamid at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:32', NULL),
(355, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/8', 'Update data Ustadz Muhammad Wahyu at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:41', NULL),
(356, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/7', 'Update data Habib Muhammad Al Habsyi at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:48', NULL),
(357, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/6', 'Update data Habib Hasan Alaydrus at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:44:53', NULL),
(358, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/5', 'Update data Habib Sholeh Bin Muhammad Al-Jufri at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:00', NULL),
(359, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/4', 'Update data Al Habib Ahmad Jamal Bin Toha Ba\'agil at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:06', NULL),
(360, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/3', 'Update data Habib Muhammad Bin Abdurrahman Al Habsy at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:12', NULL),
(361, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/2', 'Update data KH. Ahmad Murni (Guru Darat) at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:18', NULL),
(362, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/edit-save/1', 'Update data Habib Muhammad Al Hiyed at Guru', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:26', NULL),
(363, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/29', 'Update data KH.Adnan Nawawi,S.Ag at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:42', NULL),
(364, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/28', 'Update data Ust.Mahlidiin,S.Ag,M.Ag at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:47', NULL),
(365, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/27', 'Update data Ust.Muhammad Amin Hasan at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:54', NULL),
(366, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/26', 'Update data Ust.H.Ahmad Ridhuan,Lc at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:45:59', NULL),
(367, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/25', 'Update data Ust.H.Masri S.Ag at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:46:11', NULL),
(368, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/24', 'Update data Ust.Mujiburrahman S.Pd.I at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:46:18', NULL),
(369, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/22', 'Update data Ust.Muhammad Suhaimi,Lc at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:46:24', NULL),
(370, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/21', 'Update data Ust.H.Ibnu Athaillah at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:46:31', NULL),
(371, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/20', 'Update data Ust.H.Syamsunie,S.Pd.I at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:46:38', NULL),
(372, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/19', 'Update data Ust.H.Wahyudi Lc at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:47:32', NULL),
(373, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/18', 'Update data H. Ahmad Baihaqi at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:47:40', NULL),
(374, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/17', 'Update data Ust.Muhammad Ibnu Dahlan at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:47:47', NULL),
(375, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/16', 'Update data Ust.Muhammad Syauqi,Lc at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:47:54', NULL),
(376, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/15', 'Update data Habib Muhammad Bin Umar Al Hayyid at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:01', NULL),
(377, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/14', 'Update data Drs.KH.Nafiah Muhja at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:08', NULL),
(378, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/13', 'Update data Ust.H.Muhammad Sam\'ani,S.Ag at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:15', NULL),
(379, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/12', 'Update data Habib Hasan Bin Hasyim Ba\'bud at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:21', NULL),
(380, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/11', 'Update data Ust.Said Thohir S.Pd.I at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:28', NULL),
(381, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/10', 'Update data Ust.Drs.H.Abdurrahman at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:39', NULL),
(382, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/khatib/edit-save/9', 'Update data Ust.H.Syahdi Hidayat Said,S.Ag at Khatib', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:45', NULL),
(383, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/10', 'Update data Ahmad Fu\'ad at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:48:57', NULL),
(384, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/9', 'Update data Saifuddin at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:04', NULL),
(385, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/8', 'Update data Zainuddin at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:11', NULL),
(386, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/7', 'Update data Ahmad Fauzan, S.Pd.I at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:17', NULL),
(387, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/6', 'Update data Wardi at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:23', NULL),
(388, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/5', 'Update data Muhammad Ridwan, S.Pd.I at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:28', NULL),
(389, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/4', 'Update data Ahmad Baihaqi at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:35', NULL),
(390, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/3', 'Update data Muslih at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:41', NULL),
(391, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/2', 'Update data Syahruddin at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:47', NULL),
(392, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/muadzin/edit-save/1', 'Update data H. Ahmad Rifa\'i at Mu\'adzin', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alamat</td><td>------</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:49:55', NULL),
(393, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/80', 'Update data Husnul at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:50:14', NULL),
(394, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/79', 'Update data Alie at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:50:23', NULL),
(395, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/78', 'Update data Fada at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:50:33', NULL),
(396, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/77', 'Update data Amel at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:50:42', NULL),
(397, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/76', 'Update data Azizah at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:50:51', NULL),
(398, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/75', 'Update data Nana at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:51:40', NULL),
(399, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/74', 'Update data Cecep at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:51:51', NULL),
(400, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/73', 'Update data Arie at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:52:00', NULL),
(401, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/72', 'Update data Ahmadi at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:52:09', NULL),
(402, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/71', 'Update data Anjar at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:52:18', NULL),
(403, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/70', 'Update data Wahyu at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:52:27', NULL),
(404, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/69', 'Update data Ridho at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:52:38', NULL),
(405, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/68', 'Update data Bangjay at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:52:47', NULL),
(406, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/67', 'Update data Oriz at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:52:55', NULL),
(407, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/66', 'Update data Sigit Suhar at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:53:04', NULL),
(408, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/65', 'Update data Denny at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:53:14', NULL),
(409, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/64', 'Update data Fikri at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:53:23', NULL),
(410, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/63', 'Update data Reza Muttaqien at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:54:00', NULL),
(411, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/62', 'Update data Teddy Endar at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:54:10', NULL),
(412, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/masjidagung/public/admin/pengurus/edit-save/61', 'Update data Djaka at Pengurus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jabatan_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>pangkat_pengurus</td><td>-----</td><td>(kosong)</td></tr><tr><td>golongan_pengurus</td><td>-----</td><td>(kosong)</td></tr></tbody></table>', 1, '2021-08-02 17:54:21', NULL),
(413, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-04 18:10:03', NULL),
(414, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data cobai at Guru', '', 1, '2021-08-04 18:10:55', NULL),
(415, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-06 16:56:00', NULL),
(416, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-07 00:59:05', NULL),
(417, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/edit-save/6', 'Update data Hari Raya Haji at Hari Besar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-08-07 01:02:31', NULL),
(418, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/add-save', 'Add New Data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-08-07 01:05:19', NULL),
(419, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_sholat_jumat/delete/38', 'Delete data Sholat Jum\'at at Sholat Jum\'at', '', 1, '2021-08-07 01:05:29', NULL),
(420, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-08-07 17:25:25', NULL),
(421, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-07 17:27:00', NULL),
(422, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-07 19:02:22', NULL),
(423, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/edit-save/1', 'Update data Tabligh Akbar at Dakwah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-08-07 22:40:19', NULL),
(424, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/edit-save/2', 'Update data Peringatan Isra & Mi\'raj Nabi Muhammad SAW at Dakwah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-08-07 22:41:02', NULL),
(425, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_dakwah/edit-save/4', 'Update data Sholat Subuh Berjamaah at Dakwah', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-08-07 22:42:05', NULL),
(426, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 22:44:12', NULL),
(427, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/21', 'Delete data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 22:47:20', NULL),
(428, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 22:47:49', NULL),
(429, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/22', 'Delete data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 23:15:26', NULL),
(430, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 23:15:56', NULL),
(431, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/23', 'Delete data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 23:19:57', NULL),
(432, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 23:37:58', NULL),
(433, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/25', 'Delete data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 23:38:48', NULL),
(434, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/24', 'Delete data USTAD DAS\'AD LATIF at Guru', '', 1, '2021-08-07 23:38:53', NULL),
(435, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data das\'ad latif at Guru', '', 1, '2021-08-07 23:57:59', NULL),
(436, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/add-save', 'Add New Data H. Genjring at Imam', '', 1, '2021-08-08 00:00:17', NULL),
(437, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/imam/delete/8', 'Delete data H. Genjring at Imam', '', 1, '2021-08-08 00:00:32', NULL),
(438, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-10 16:44:05', NULL),
(439, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/31', 'Delete data das\'ad latif at Guru', '', 1, '2021-08-10 16:44:23', NULL),
(440, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/30', 'Delete data das\'ad latif at Guru', '', 1, '2021-08-10 16:44:27', NULL),
(441, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/29', 'Delete data das\'ad latif at Guru', '', 1, '2021-08-10 16:44:30', NULL),
(442, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/28', 'Delete data das\'ad latif at Guru', '', 1, '2021-08-10 16:44:33', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(443, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/27', 'Delete data das\'ad latif at Guru', '', 1, '2021-08-10 16:44:35', NULL),
(444, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data guruasik at Guru', '', 1, '2021-08-10 16:50:58', NULL),
(445, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/32', 'Delete data guruasik at Guru', '', 1, '2021-08-10 16:53:21', NULL),
(446, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data mantap at Guru', '', 1, '2021-08-10 16:57:19', NULL),
(447, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/33', 'Delete data mantap at Guru', '', 1, '2021-08-10 17:18:18', NULL),
(448, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data genjer at Guru', '', 1, '2021-08-10 17:18:27', NULL),
(449, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/34', 'Delete data genjer at Guru', '', 1, '2021-08-10 17:23:27', NULL),
(450, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data ganjring at Guru', '', 1, '2021-08-10 17:23:54', NULL),
(451, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/37', 'Delete data genjring at Guru', '', 1, '2021-08-10 17:41:11', NULL),
(452, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/38', 'Delete data genjring at Guru', '', 1, '2021-08-10 17:42:44', NULL),
(453, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/add-save', 'Add New Data genjer at Guru', '', 1, '2021-08-10 17:43:07', NULL),
(454, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-12 16:49:10', NULL),
(455, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/guru/delete/39', 'Delete data genjer at Guru', '', 1, '2021-08-12 16:57:53', NULL),
(456, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-08-12 18:04:00', NULL),
(457, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-12 18:05:17', NULL),
(458, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/statistic_builder/add-save', 'Add New Data baloon at Statistic Builder', '', 1, '2021-08-12 18:11:06', NULL),
(459, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/add-save', 'Add New Data baloon at Menu Management', '', 1, '2021-08-12 18:40:05', NULL),
(460, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/26', 'Update data baloon at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2021-08-12 18:40:26', NULL),
(461, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/menu_management/edit-save/26', 'Update data Info at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>baloon</td><td>Info</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2021-08-12 18:59:59', NULL),
(462, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/statistic_builder/edit-save/1', 'Update data Info at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>baloon</td><td>Info</td></tr><tr><td>slug</td><td>baloon</td><td></td></tr></tbody></table>', 1, '2021-08-12 19:00:15', NULL),
(463, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-12 19:45:38', NULL),
(464, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-13 05:59:07', NULL),
(465, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-08-13 06:57:21', NULL),
(466, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-13 07:00:47', NULL),
(467, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/profil/add-save', 'Add New Data asdasd at Profil Masjid', '', 1, '2021-08-13 08:33:58', NULL),
(468, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/profil/delete/2', 'Delete data asdasd at Profil Masjid', '', 1, '2021-08-13 08:34:14', NULL),
(469, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/add-save', 'Add New Data asd at Hari Besar', '', 1, '2021-08-13 09:06:19', NULL),
(470, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/kegiatan_haribesar/delete/7', 'Delete data asd at Hari Besar', '', 1, '2021-08-13 09:06:25', NULL),
(471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address ::1', '', 1, '2021-08-15 20:38:21', NULL),
(472, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://localhost/masjidagung/public/admin/logout', 'admin@masjidagung.banjarbarukota.go.id logout', '', 1, '2021-08-15 20:39:01', NULL),
(473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@masjidagung.banjarbarukota.go.id login with IP Address 127.0.0.1', '', 1, '2021-08-16 00:59:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Fasilitas Umum', 'Route', 'AdminFasumControllerGetIndex', 'normal', 'fa fa-puzzle-piece', 12, 1, 0, 1, 2, '2021-07-06 17:01:32', '2021-07-06 17:15:39'),
(2, 'Guru', 'Route', 'AdminGuruControllerGetIndex', NULL, 'fa fa-user', 12, 1, 0, 1, 4, '2021-07-06 17:02:30', NULL),
(3, 'Imam', 'Route', 'AdminImamControllerGetIndex', 'normal', 'fa fa-users', 12, 1, 0, 1, 3, '2021-07-06 17:02:53', '2021-07-06 18:16:16'),
(4, 'Khatib', 'Route', 'AdminKhatibControllerGetIndex', 'normal', 'fa fa-user-secret', 12, 1, 0, 1, 5, '2021-07-06 17:03:27', '2021-07-06 18:16:05'),
(5, 'Pengurus', 'Route', 'AdminPengurusControllerGetIndex', NULL, 'fa fa-gear', 12, 1, 0, 1, 7, '2021-07-06 17:04:05', NULL),
(6, 'Profil Masjid', 'Route', 'AdminProfilControllerGetIndex', NULL, 'fa fa-home', 12, 1, 0, 1, 1, '2021-07-06 17:04:47', NULL),
(7, 'Kegiatan Rutin', 'Route', 'AdminKegiatanRutinControllerGetIndex', NULL, 'fa fa-times', 13, 1, 0, 1, 1, '2021-07-07 04:45:04', NULL),
(8, 'Pengajian', 'Route', 'AdminKegiatanPengajianControllerGetIndex', NULL, 'fa fa-glass', 13, 1, 0, 1, 3, '2021-07-07 04:45:50', NULL),
(9, 'Dakwah', 'Route', 'AdminKegiatanDakwahControllerGetIndex', NULL, 'fa fa-star', 13, 1, 0, 1, 4, '2021-07-07 04:46:31', NULL),
(10, 'Hari Besar', 'Route', 'AdminKegiatanHaribesarControllerGetIndex', NULL, 'fa fa-th-large', 13, 1, 0, 1, 2, '2021-07-07 04:47:20', NULL),
(11, 'Sholat Jum\'at', 'Route', 'AdminKegiatanSholatJumatControllerGetIndex', NULL, 'fa fa-user-md', 13, 1, 0, 1, 5, '2021-07-07 04:54:14', NULL),
(12, 'Master', 'URL', '#', 'green', 'fa fa-th-list', 0, 1, 0, 1, 1, '2021-07-07 04:56:21', '2021-07-07 05:18:33'),
(13, 'Kegiatan', 'URL', '#', 'aqua', 'fa fa-play-circle-o', 0, 1, 0, 1, 2, '2021-07-07 05:20:41', '2021-07-07 05:21:11'),
(14, 'Report', 'URL', '#', 'yellow', 'fa fa-newspaper-o', 0, 1, 0, 1, 3, '2021-07-07 05:25:31', '2021-07-07 05:26:47'),
(15, 'Kegiatan Pengurus', 'Route', 'AdminKegiatanPengurusControllerGetIndex', NULL, 'fa fa-cog', 13, 1, 0, 1, 6, '2021-07-10 17:21:12', NULL),
(16, 'Mu\'adzin', 'Route', 'AdminMuadzinControllerGetIndex', NULL, 'fa fa-soundcloud', 12, 1, 0, 1, 6, '2021-07-13 18:23:47', NULL),
(17, 'Belajar Mengajar', 'Route', 'AdminKegiatanBelajarQuranControllerGetIndex', NULL, 'fa fa-book', 13, 1, 0, 1, 7, '2021-07-15 05:03:23', NULL),
(18, 'Laporan Guru Pengajian', 'Route', 'AdminDetailKegiatanPengajianControllerGetIndex', 'normal', 'fa fa-bookmark', 14, 1, 0, 1, 1, '2021-07-15 06:28:38', '2021-07-16 05:38:47'),
(19, 'Laporan Kegiatan Rutin', 'Route', 'AdminKegiatanRutinLapControllerGetIndex', NULL, 'fa fa-bookmark', 14, 1, 0, 1, 2, '2021-07-16 05:30:41', NULL),
(20, 'Laporan Kegiatan Hari Besar', 'Route', 'AdminKegiatanHaribesarLapControllerGetIndex', NULL, 'fa fa-bookmark', 14, 1, 0, 1, 3, '2021-07-16 05:36:36', NULL),
(21, 'Laporan Kegiatan Pengajian', 'Route', 'AdminKegiatanPengajianLapsControllerGetIndex', NULL, 'fa fa-bookmark', 14, 1, 0, 1, 4, '2021-07-16 05:40:04', NULL),
(22, 'Laporan Kegiatan Dakwah', 'Route', 'AdminKegiatanDakwahLapControllerGetIndex', NULL, 'fa fa-bookmark', 14, 1, 0, 1, 5, '2021-07-16 05:41:55', NULL),
(23, 'Laporan Sholat Jum\'at', 'Route', 'AdminKegiatanSholatJumatLapControllerGetIndex', 'normal', 'fa fa-bookmark', 14, 1, 0, 1, 7, '2021-07-16 05:43:06', '2021-07-16 06:00:12'),
(24, 'Laporan Kegiatan Pengurus', 'Route', 'AdminKegiatanPengurusLapControllerGetIndex', NULL, 'fa fa-bookmark', 14, 1, 0, 1, 6, '2021-07-16 05:55:12', NULL),
(25, 'Laporan Belajar-mengajar', 'Route', 'AdminKegiatanBelajarQuranLapControllerGetIndex', 'normal', 'fa fa-bookmark', 14, 1, 0, 1, 8, '2021-07-16 05:56:21', '2021-07-16 06:00:24'),
(26, 'Info', 'Statistic', 'statistic_builder/show/baloon', 'normal', 'fa fa-dashboard', 0, 1, 1, 1, NULL, '2021-08-12 18:40:05', '2021-08-12 18:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(2, 2, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 1),
(11, 4, 1),
(12, 3, 1),
(13, 7, 1),
(14, 8, 1),
(15, 9, 1),
(16, 10, 1),
(17, 11, 1),
(19, 12, 1),
(21, 13, 1),
(24, 14, 1),
(25, 15, 1),
(26, 16, 1),
(27, 17, 1),
(29, 19, 1),
(30, 20, 1),
(31, 18, 1),
(32, 21, 1),
(33, 22, 1),
(35, 24, 1),
(37, 23, 1),
(38, 25, 1),
(41, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2021-07-03 18:52:16', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2021-07-03 18:52:16', NULL, NULL),
(12, 'Fasilitas Umum', 'fa fa-building-o', 'fasum', 'fasum', 'AdminFasumController', 0, 0, '2021-07-06 17:01:32', NULL, NULL),
(13, 'Guru', 'fa fa-user', 'guru', 'guru', 'AdminGuruController', 0, 0, '2021-07-06 17:02:30', NULL, NULL),
(14, 'Imam', 'fa fa-user', 'imam', 'imam', 'AdminImamController', 0, 0, '2021-07-06 17:02:53', NULL, NULL),
(15, 'Khatib', 'fa fa-user', 'khatib', 'khatib', 'AdminKhatibController', 0, 0, '2021-07-06 17:03:27', NULL, NULL),
(16, 'Pengurus', 'fa fa-gear', 'pengurus', 'pengurus', 'AdminPengurusController', 0, 0, '2021-07-06 17:04:05', NULL, NULL),
(17, 'Profil Masjid', 'fa fa-home', 'profil', 'profil', 'AdminProfilController', 0, 0, '2021-07-06 17:04:47', NULL, NULL),
(18, 'Kegiatan Rutin', 'fa fa-times', 'kegiatan_rutin', 'kegiatan_rutin', 'AdminKegiatanRutinController', 0, 0, '2021-07-07 04:45:04', NULL, NULL),
(19, 'Pengajian', 'fa fa-glass', 'kegiatan_pengajian', 'kegiatan_pengajian', 'AdminKegiatanPengajianController', 0, 0, '2021-07-07 04:45:50', NULL, NULL),
(20, 'Dakwah', 'fa fa-star', 'kegiatan_dakwah', 'kegiatan_dakwah', 'AdminKegiatanDakwahController', 0, 0, '2021-07-07 04:46:31', NULL, NULL),
(21, 'Hari Besar', 'fa fa-th-large', 'kegiatan_haribesar', 'kegiatan_haribesar', 'AdminKegiatanHaribesarController', 0, 0, '2021-07-07 04:47:19', NULL, NULL),
(22, 'Sholat Jum\'at', 'fa fa-user-md', 'kegiatan_sholat_jumat', 'kegiatan_sholat_jumat', 'AdminKegiatanSholatJumatController', 0, 0, '2021-07-07 04:54:14', NULL, NULL),
(23, 'Kegiatan Pengurus', 'fa fa-cog', 'kegiatan_pengurus', 'kegiatan_pengurus', 'AdminKegiatanPengurusController', 0, 0, '2021-07-10 17:21:12', NULL, NULL),
(24, 'Mu\'adzin', 'fa fa-soundcloud', 'muadzin', 'muadzin', 'AdminMuadzinController', 0, 0, '2021-07-13 18:23:47', NULL, NULL),
(25, 'Belajar Mengajar', 'fa fa-book', 'kegiatan_belajar_quran', 'kegiatan_belajar_quran', 'AdminKegiatanBelajarQuranController', 0, 0, '2021-07-15 05:03:23', NULL, NULL),
(26, 'Laporan Pengajian', 'fa fa-bookmark', 'detail_kegiatan_pengajian', 'detail_kegiatan_pengajian', 'AdminDetailKegiatanPengajianController', 0, 0, '2021-07-15 06:28:37', NULL, NULL),
(27, 'Laporan Kegiatan Rutin', 'fa fa-bookmark', 'kegiatan_rutin_lap', 'kegiatan_rutin', 'AdminKegiatanRutinLapController', 0, 0, '2021-07-16 05:30:40', NULL, NULL),
(28, 'Laporan Kegiatan Hari Besar', 'fa fa-bookmark', 'kegiatan_haribesar_lap', 'kegiatan_haribesar', 'AdminKegiatanHaribesarLapController', 0, 0, '2021-07-16 05:36:36', NULL, NULL),
(29, 'Laporan Kegiatan Pengajian', 'fa fa-bookmark', 'kegiatan_pengajian_laps', 'kegiatan_pengajian', 'AdminKegiatanPengajianLapsController', 0, 0, '2021-07-16 05:40:04', NULL, NULL),
(30, 'Laporan Kegiatan Dakwah', 'fa fa-bookmark', 'kegiatan_dakwah_lap', 'kegiatan_dakwah', 'AdminKegiatanDakwahLapController', 0, 0, '2021-07-16 05:41:55', NULL, NULL),
(31, 'Laporan Kegiatan Sholat Jum\'at', 'fa fa-bookmark', 'kegiatan_sholat_jumat_lap', 'kegiatan_sholat_jumat', 'AdminKegiatanSholatJumatLapController', 0, 0, '2021-07-16 05:43:06', NULL, NULL),
(32, 'Laporan Kegiatan Pengurus', 'fa fa-bookmark', 'kegiatan_pengurus_lap', 'kegiatan_pengurus', 'AdminKegiatanPengurusLapController', 0, 0, '2021-07-16 05:55:12', NULL, NULL),
(33, 'Laporan Kegiatan Belajar-mengajar', 'fa fa-bookmark', 'kegiatan_belajar_quran_lap', 'kegiatan_belajar_quran', 'AdminKegiatanBelajarQuranLapController', 0, 0, '2021-07-16 05:56:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2021-07-03 18:52:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2021-07-03 18:52:16', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2021-07-03 18:52:16', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2021-07-03 18:52:16', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2021-07-03 18:52:16', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2021-07-03 18:52:16', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2021-07-03 18:52:16', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2021-07-03 18:52:16', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2021-07-03 18:52:16', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2021-07-03 18:52:16', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2021-07-03 18:52:16', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2021-07-03 18:52:16', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2021-07-03 18:52:16', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2021-07-03 18:52:16', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2021-07-03 18:52:16', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2021-07-03 18:52:16', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'SIRIP', 'text', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2021-07-03 18:52:16', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2021-07/50919496d7c510c31223e2bc774f31f9.png', 'upload_image', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2021-07-03 18:52:16', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2021-07-03 18:52:16', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Info', 'baloon', '2021-08-12 18:11:06', '2021-08-12 19:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'fdd2ba612d90ca643a3e89ccaf717734', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Jumlah Pengurus\",\"icon\":\"ion-ribbon-b\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/localhost\\/masjidagung\\/public\\/admin\\/pengurus\",\"sql\":\"SELECT COUNT(*) FROM pengurus\"}', '2021-08-12 18:13:22', NULL),
(2, 1, '93ba0ebd1ff5e75842c172858b15f637', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Jumlah Imam\",\"icon\":\"ion-person\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/localhost\\/masjidagung\\/public\\/admin\\/imam\",\"sql\":\"SELECT COUNT(*) FROM imam\"}', '2021-08-12 18:13:24', NULL),
(3, 1, '7b52399207615412807deeb00179e64e', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Jumlah Khatib\",\"icon\":\"ion-star\",\"color\":\"bg-aqua\",\"link\":\"http:\\/\\/localhost\\/masjidagung\\/public\\/admin\\/khatib\",\"sql\":\"SELECT COUNT(*) FROM khatib\"}', '2021-08-12 18:13:26', NULL),
(4, 1, '2e6ac397355328c0d715a45e2a536d89', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Jumlah Mu\'adzin\",\"icon\":\"ion-speakerphone\",\"color\":\"bg-yellow\",\"link\":\"http:\\/\\/localhost\\/masjidagung\\/public\\/admin\\/muadzin\",\"sql\":\"SELECT COUNT(*) FROM muadzin\"}', '2021-08-12 18:13:28', NULL),
(5, 1, '244f7612fe2c7177c20ca76f942bb9dd', 'smallbox', NULL, 0, 'Untitled', NULL, '2021-08-12 18:13:30', NULL),
(6, 1, '505310435f7b5a27c0e8c546c3734440', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Dakwah Terlaksana\",\"sql\":\"select tanggal, COUNT(id) as value,DATE_FORMAT(tanggal,\'%M %Y\') as label from kegiatan_dakwah group by DATE_FORMAT(tanggal,\'%M %Y\') order by tanggal asc\",\"area_name\":\"Jumlah\",\"goals\":\"5\"}', '2021-08-12 18:45:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2021-07/logo_banjarbaru.png', 'admin@masjidagung.banjarbarukota.go.id', '$2y$10$mShPk532MzH2YuOMeMRDsePusRgTo91WnoMDAC9pAUHydsPyduS/a', 1, '2021-07-03 18:52:16', '2021-07-03 20:01:42', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kegiatan_dakwah`
--

CREATE TABLE `detail_kegiatan_dakwah` (
  `id` int(11) NOT NULL,
  `id_kegiatan_dakwah` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_kegiatan_dakwah`
--

INSERT INTO `detail_kegiatan_dakwah` (`id`, `id_kegiatan_dakwah`, `id_guru`) VALUES
(1, 3, 9),
(2, 3, 11),
(3, 1, 12),
(4, 1, 20),
(5, 2, 5),
(6, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `detail_kegiatan_haribesar`
--

CREATE TABLE `detail_kegiatan_haribesar` (
  `id` int(11) NOT NULL,
  `id_kegiatan_haribesar` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_kegiatan_haribesar`
--

INSERT INTO `detail_kegiatan_haribesar` (`id`, `id_kegiatan_haribesar`, `id_petugas`, `ket`) VALUES
(1, 6, 34, 'Imam'),
(2, 6, 38, 'Penceramah'),
(3, 6, 121, 'MC'),
(6, 7, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kegiatan_pengajian`
--

CREATE TABLE `detail_kegiatan_pengajian` (
  `id` int(11) NOT NULL,
  `id_kegiatan_pengajian` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_kegiatan_pengajian`
--

INSERT INTO `detail_kegiatan_pengajian` (`id`, `id_kegiatan_pengajian`, `id_guru`) VALUES
(1, 5, 1),
(2, 6, 16),
(3, 6, 15),
(4, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fasum`
--

CREATE TABLE `fasum` (
  `id` int(11) NOT NULL,
  `nama_fasum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasum`
--

INSERT INTO `fasum` (`id`, `nama_fasum`) VALUES
(1, 'Sarana Ibadah'),
(2, 'Kamar Mandi / WC'),
(3, 'Sound System & Multimedia'),
(4, 'Kantor Sekretariat'),
(5, 'Perlengkapan Pengurusan Jenazah'),
(6, 'Tempat Penitipan Sepatu/Sandal'),
(7, 'Parkir'),
(8, 'Tempat Wudhu'),
(9, 'Pembangkit Listrik/Genset'),
(10, 'Penyejuk Udara/AC'),
(11, 'Mobil Ambulance'),
(12, 'Ruang Belajar (TPA/Madrasah)'),
(13, 'Taman');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama_guru` text NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama_guru`, `alamat`, `no_hp`) VALUES
(1, 'Habib Muhammad Al Hiyed', '(kosong)', '0'),
(2, 'KH. Ahmad Murni (Guru Darat)', '(kosong)', '0'),
(3, 'Habib Muhammad Bin Abdurrahman Al Habsy', '(kosong)', '0'),
(4, 'Al Habib Ahmad Jamal Bin Toha Ba\'agil', '(kosong)', '0'),
(5, 'Habib Sholeh Bin Muhammad Al-Jufri', '(kosong)', '0'),
(6, 'Habib Hasan Alaydrus', '(kosong)', '0'),
(7, 'Habib Muhammad Al Habsyi', '(kosong)', '0'),
(8, 'Ustadz Muhammad Wahyu', '(kosong)', '0'),
(9, 'Habib Hamdi Al Hamid', '(kosong)', '0'),
(10, 'Prof. DR. Habib Alwi Bin Hamid bin Syihabuddin', '(kosong)', '0'),
(11, 'Habib Abdullah Bin Abdurrahman Al Muhdor Tarim (Hadramaut)', '(kosong)', '0'),
(12, 'Ustadz DR. Abdul Somad, LC., M.A.', '(kosong)', '0'),
(14, '(kosong)', '(kosong)', '0'),
(15, 'KH. Nursyahid Ramli, Lc', '(kosong)', '0'),
(16, 'Habib Murthada', '(kosong)', '0'),
(17, 'Ustadz Muslim', '(kosong)', '0'),
(18, 'Ustadz Syahruddin', '(kosong)', '0'),
(19, 'cobai', '(kosong)', '0808080808080'),
(20, 'KH. AHMAD ZUHDIANNOOR', '(KOSONG)', '0'),
(26, 'das\'ad latif', 'kosong', '0');

--
-- Triggers `guru`
--
DELIMITER $$
CREATE TRIGGER `ins_guru_to_narsum` AFTER INSERT ON `guru` FOR EACH ROW BEGIN
 INSERT INTO narsum (id_narsum, nama_narsum, alamat, no_hp, role)
 values (NEW.id, NEW.nama_guru, NEW.alamat, NEW.no_hp, "guru");
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `imam`
--

CREATE TABLE `imam` (
  `id` int(11) NOT NULL,
  `nama_imam` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imam`
--

INSERT INTO `imam` (`id`, `nama_imam`, `alamat`, `no_hp`) VALUES
(1, 'H. Muntasir', '(kosong)', '0'),
(2, 'H. Mahdad', '(kosong)', '0'),
(3, 'H. Nurdiansyah', '(kosong)', '0'),
(4, 'H. Syamsuddin', '(kosong)', '0'),
(5, '(kosong)', '(kosong)', '0'),
(6, 'H. Ibnu Athaillah', '(kosong)', '0'),
(7, 'H. Khairin Noor', '(kosong)', '0');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_belajar_quran`
--

CREATE TABLE `kegiatan_belajar_quran` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jam` time NOT NULL,
  `id_guru` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_belajar_quran`
--

INSERT INTO `kegiatan_belajar_quran` (`id`, `nama_kegiatan`, `hari`, `jam`, `id_guru`) VALUES
(1, 'Belajar Al Qur\'an', 'Jum\'at', '15:00:00', '17'),
(2, 'Belajar Tilawah', 'Sabtu', '14:30:00', '18');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_dakwah`
--

CREATE TABLE `kegiatan_dakwah` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `penyelenggara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_dakwah`
--

INSERT INTO `kegiatan_dakwah` (`id`, `nama_kegiatan`, `tanggal`, `jam`, `penyelenggara`) VALUES
(1, 'Tabligh Akbar', '2020-03-12', '20:00:00', 'Pemerintah Kota Banjarbaru'),
(2, 'Peringatan Isra & Mi\'raj Nabi Muhammad SAW', '2020-03-10', '20:00:00', 'Panitia Masjid'),
(3, 'Tabligh Akbar', '2020-01-29', '20:00:00', 'Pemerintah Kota Banjarbaru'),
(4, 'Sholat Subuh Berjamaah', '2019-12-01', '05:00:00', 'Panitia Masjid');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_haribesar`
--

CREATE TABLE `kegiatan_haribesar` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `penyelenggara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_haribesar`
--

INSERT INTO `kegiatan_haribesar` (`id`, `nama_kegiatan`, `tanggal`, `penyelenggara`) VALUES
(1, 'Isra Mi\'raj', '2021-03-11', 'Panitia Masjid'),
(2, 'Nisfu Syaban', '2021-03-28', 'Panitia Masjid'),
(3, 'Idul Adha', '2021-07-20', 'Panitia Masjid'),
(4, 'Maulid Nabi Muhammad', '2021-10-19', 'Panitia Masjid'),
(6, 'Hari Raya Haji', '2021-07-22', 'Panitia Masjid');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_pengajian`
--

CREATE TABLE `kegiatan_pengajian` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `Hari` varchar(255) NOT NULL,
  `jam` time NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_pengajian`
--

INSERT INTO `kegiatan_pengajian` (`id`, `nama_kegiatan`, `Hari`, `jam`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(5, 'Pengajian Senin / Malam Selasa (Ba\'da Maghrib)', 'Senin', '19:00:00', '2019-01-01', NULL, 'Aktif'),
(6, 'Pengajian Rabu / Malam Kamis (Ba\'da Magrib)', 'Rabu', '19:00:00', '2019-01-01', NULL, 'Aktif'),
(7, 'Pengajian Sabtu Pagi (Ba\'da Subuh)', 'Sabtu', '06:00:00', '2019-01-01', NULL, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_pengurus`
--

CREATE TABLE `kegiatan_pengurus` (
  `id` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_pengurus`
--

INSERT INTO `kegiatan_pengurus` (`id`, `id_pengurus`, `nama_kegiatan`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(1, 66, 'Jaga Pos', 'Senin - Rabu', '05:00:00', '17:00:00'),
(2, 69, 'Jaga Pos', 'Senin - Rabu', '17:00:00', '20:00:00'),
(3, 63, 'Jaga Pos', 'Senin - Rabu', '20:00:00', '05:00:00'),
(4, 67, 'Jaga Pos', 'Kamis - Sabtu', '05:00:00', '17:00:00'),
(5, 64, 'Jaga Pos', 'Kamis - Sabtu', '17:00:00', '20:00:00'),
(6, 61, 'Jaga Pos', 'Kamis - Sabtu', '20:00:00', '05:00:00'),
(7, 65, 'Jaga Pos', 'Minggu', '05:00:00', '17:00:00'),
(8, 74, 'Jaga Pos', 'Minggu', '17:00:00', '20:00:00'),
(9, 68, 'Jaga Pos', 'Minggu', '20:00:00', '05:00:00'),
(10, 73, 'Jaga Parkir', 'Senin - Sabtu', '05:00:00', '08:00:00'),
(11, 71, 'Jaga Parkir', 'Senin - Sabtu', '12:00:00', '17:00:00'),
(12, 79, 'Jaga Parkir', 'Minggu', '05:00:00', '08:00:00'),
(13, 72, 'Jaga Parkir', 'Minggu', '12:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_rutin`
--

CREATE TABLE `kegiatan_rutin` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `jam` time NOT NULL,
  `id_imam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_rutin`
--

INSERT INTO `kegiatan_rutin` (`id`, `nama_kegiatan`, `jam`, `id_imam`) VALUES
(1, 'Sholat Subuh', '05:05:00', 2),
(2, 'Sholat Dzuhur', '12:26:00', 2),
(3, 'Sholat Ashar', '15:50:00', 1),
(4, 'Sholat Maghrib', '18:24:00', 3),
(5, 'Sholat Isya', '19:38:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_sholat_jumat`
--

CREATE TABLE `kegiatan_sholat_jumat` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_khatib` int(11) NOT NULL,
  `id_muadzin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_sholat_jumat`
--

INSERT INTO `kegiatan_sholat_jumat` (`id`, `nama_kegiatan`, `tanggal`, `id_khatib`, `id_muadzin`) VALUES
(4, 'Sholat Jum\'at', '2020-09-04', 22, 1),
(5, 'Sholat Jum\'at', '2020-09-11', 10, 2),
(6, 'Sholat Jum\'at', '2020-09-18', 19, 8),
(7, 'Sholat Jum\'at', '2020-09-25', 24, 10),
(8, 'Sholat Jum\'at', '2020-10-20', 14, 5),
(9, 'Sholat Jum\'at', '2020-10-09', 13, 6),
(10, 'Sholat Jum\'at', '2020-10-16', 25, 7),
(11, 'Sholat Jum\'at', '2020-10-23', 26, 9),
(12, 'Sholat Jum\'at', '2020-10-30', 27, 4),
(13, 'Sholat Jum\'at', '2020-11-06', 7, 1),
(14, 'Sholat Jum\'at', '2020-11-13', 5, 5),
(15, 'Sholat Jum\'at', '2020-11-20', 28, 3),
(16, 'Sholat Jum\'at', '2020-11-27', 11, 4),
(17, 'Sholat Jum\'at', '2020-12-04', 29, 2),
(18, 'Sholat Jum\'at', '2020-12-11', 15, 6),
(19, 'Sholat Jum\'at', '2020-12-18', 16, 7),
(20, 'Sholat Jum\'at', '2020-12-25', 8, 10),
(21, 'Sholat Jum\'at', '2021-05-07', 5, 1),
(22, 'Sholat Jum\'at', '2021-05-14', 6, 2),
(23, 'Sholat Jum\'at', '2021-05-21', 7, 3),
(24, 'Sholat Jum\'at', '2021-05-28', 8, 4),
(25, 'Sholat Jum\'at', '2021-06-04', 9, 5),
(26, 'Sholat Jum\'at', '2021-06-11', 10, 6),
(27, 'Sholat Jum\'at', '2021-06-18', 11, 7),
(28, 'Sholat Jum\'at', '2021-06-25', 12, 8),
(29, 'Sholat Jum\'at', '2021-07-02', 13, 1),
(30, 'Sholat Jum\'at', '2021-07-09', 14, 2),
(31, 'Sholat Jum\'at', '2021-07-16', 15, 9),
(32, 'Sholat Jum\'at', '2021-07-23', 16, 6),
(33, 'Sholat Jum\'at', '2021-07-30', 17, 8),
(34, 'Sholat Jum\'at', '2021-08-06', 18, 5),
(35, 'Sholat Jum\'at', '2021-08-13', 19, 2),
(36, 'Sholat Jum\'at', '2021-08-20', 20, 7),
(37, 'Sholat Jum\'at', '2021-08-27', 21, 6);

-- --------------------------------------------------------

--
-- Table structure for table `khatib`
--

CREATE TABLE `khatib` (
  `id` int(11) NOT NULL,
  `nama_khatib` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khatib`
--

INSERT INTO `khatib` (`id`, `nama_khatib`, `alamat`, `no_hp`) VALUES
(4, '(kosong)', '(kosong)', '0'),
(5, 'Ust.H.Ahmad Jazuli,S.Pd.I', '(kosong)', '0'),
(6, 'Ust.Muhammad Al Hafiz', '(kosong)', '0'),
(7, 'Ust.H.Syihabuddin Lc', '(kosong)', '0'),
(8, 'Ust.Abdurrahim', '(kosong)', '0'),
(9, 'Ust.H.Syahdi Hidayat Said,S.Ag', '(kosong)', '0'),
(10, 'Ust.Drs.H.Abdurrahman', '(kosong)', '0'),
(11, 'Ust.Said Thohir S.Pd.I', '(kosong)', '0'),
(12, 'Habib Hasan Bin Hasyim Ba\'bud', '(kosong)', '0'),
(13, 'Ust.H.Muhammad Sam\'ani,S.Ag', '(kosong)', '0'),
(14, 'Drs.KH.Nafiah Muhja', '(kosong)', '0'),
(15, 'Habib Muhammad Bin Umar Al Hayyid', '(kosong)', '0'),
(16, 'Ust.Muhammad Syauqi,Lc', '(kosong)', '0'),
(17, 'Ust.Muhammad Ibnu Dahlan', '(kosong)', '0'),
(18, 'H. Ahmad Baihaqi', '(kosong)', '0'),
(19, 'Ust.H.Wahyudi Lc', '(kosong)', '0'),
(20, 'Ust.H.Syamsunie,S.Pd.I', '(kosong)', '0'),
(21, 'Ust.H.Ibnu Athaillah', '(kosong)', '0'),
(22, 'Ust.Muhammad Suhaimi,Lc', '(kosong)', '0'),
(24, 'Ust.Mujiburrahman S.Pd.I', '(kosong)', '0'),
(25, 'Ust.H.Masri S.Ag', '(kosong)', '0'),
(26, 'Ust.H.Ahmad Ridhuan,Lc', '(kosong)', '0'),
(27, 'Ust.Muhammad Amin Hasan', '(kosong)', '0'),
(28, 'Ust.Mahlidiin,S.Ag,M.Ag', '(kosong)', '0'),
(29, 'KH.Adnan Nawawi,S.Ag', '(kosong)', '0');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `muadzin`
--

CREATE TABLE `muadzin` (
  `id` int(11) NOT NULL,
  `nama_muadzin` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muadzin`
--

INSERT INTO `muadzin` (`id`, `nama_muadzin`, `alamat`, `no_hp`) VALUES
(1, 'H. Ahmad Rifa\'i', '(kosong)', 0),
(2, 'Syahruddin', '(kosong)', 0),
(3, 'Muslih', '(kosong)', 0),
(4, 'Ahmad Baihaqi', '(kosong)', 0),
(5, 'Muhammad Ridwan, S.Pd.I', '(kosong)', 0),
(6, 'Wardi', '(kosong)', 0),
(7, 'Ahmad Fauzan, S.Pd.I', '(kosong)', 0),
(8, 'Zainuddin', '(kosong)', 0),
(9, 'Saifuddin', '(kosong)', 0),
(10, 'Ahmad Fu\'ad', '(kosong)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `narsum`
--

CREATE TABLE `narsum` (
  `id` int(11) NOT NULL,
  `id_narsum` int(11) NOT NULL,
  `nama_narsum` varchar(255) NOT NULL,
  `alamat` text NOT NULL DEFAULT '(kosong)',
  `no_hp` varchar(20) NOT NULL DEFAULT '0',
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `narsum`
--

INSERT INTO `narsum` (`id`, `id_narsum`, `nama_narsum`, `alamat`, `no_hp`, `role`) VALUES
(2, 1, 'Habib Muhammad Al Hiyed', '(kosong)', '0', 'guru'),
(3, 2, 'KH. Ahmad Murni (Guru Darat)', '(kosong)', '0', 'guru'),
(4, 3, 'Habib Muhammad Bin Abdurrahman Al Habsy', '(kosong)', '0', 'guru'),
(5, 4, 'Al Habib Ahmad Jamal Bin Toha Ba\'agil', '(kosong)', '0', 'guru'),
(6, 5, 'Habib Sholeh Bin Muhammad Al-Jufri', '(kosong)', '0', 'guru'),
(7, 6, 'Habib Hasan Alaydrus', '(kosong)', '0', 'guru'),
(8, 7, 'Habib Muhammad Al Habsyi', '(kosong)', '0', 'guru'),
(9, 8, 'Ustadz Muhammad Wahyu', '(kosong)', '0', 'guru'),
(10, 9, 'Habib Hamdi Al Hamid', '(kosong)', '0', 'guru'),
(11, 10, 'Prof. DR. Habib Alwi Bin Hamid bin Syihabuddin', '(kosong)', '0', 'guru'),
(12, 11, 'Habib Abdullah Bin Abdurrahman Al Muhdor Tarim (Hadramaut)', '(kosong)', '0', 'guru'),
(13, 12, 'Ustadz DR. Abdul Somad, LC., M.A.', '(kosong)', '0', 'guru'),
(14, 14, '(kosong)', '(kosong)', '0', 'guru'),
(15, 15, 'KH. Nursyahid Ramli, Lc', '(kosong)', '0', 'guru'),
(16, 16, 'Habib Murthada', '(kosong)', '0', 'guru'),
(17, 17, 'Ustadz Muslim', '(kosong)', '0', 'guru'),
(18, 18, 'Ustadz Syahruddin', '(kosong)', '0', 'guru'),
(19, 19, 'cobai', '(kosong)', '0808080808080', 'guru'),
(20, 1, 'H. Muntasir', '(kosong)', '0', 'imam'),
(21, 2, 'H. Mahdad', '(kosong)', '0', 'imam'),
(22, 3, 'H. Nurdiansyah', '(kosong)', '0', 'imam'),
(23, 4, 'H. Syamsuddin', '(kosong)', '0', 'imam'),
(24, 5, '(kosong)', '(kosong)', '0', 'imam'),
(25, 6, 'H. Ibnu Athaillah', '(kosong)', '0', 'imam'),
(26, 7, 'H. Khairin Noor', '(kosong)', '0', 'imam'),
(27, 4, '(kosong)', '(kosong)', '0', 'khatib'),
(28, 5, 'Ust.H.Ahmad Jazuli,S.Pd.I', '(kosong)', '0', 'khatib'),
(29, 6, 'Ust.Muhammad Al Hafiz', '(kosong)', '0', 'khatib'),
(30, 7, 'Ust.H.Syihabuddin Lc', '(kosong)', '0', 'khatib'),
(31, 8, 'Ust.Abdurrahim', '(kosong)', '0', 'khatib'),
(32, 9, 'Ust.H.Syahdi Hidayat Said,S.Ag', '(kosong)', '0', 'khatib'),
(33, 10, 'Ust.Drs.H.Abdurrahman', '(kosong)', '0', 'khatib'),
(34, 11, 'Ust.Said Thohir S.Pd.I', '(kosong)', '0', 'khatib'),
(35, 12, 'Habib Hasan Bin Hasyim Ba\'bud', '(kosong)', '0', 'khatib'),
(36, 13, 'Ust.H.Muhammad Sam\'ani,S.Ag', '(kosong)', '0', 'khatib'),
(37, 14, 'Drs.KH.Nafiah Muhja', '(kosong)', '0', 'khatib'),
(38, 15, 'Habib Muhammad Bin Umar Al Hayyid', '(kosong)', '0', 'khatib'),
(39, 16, 'Ust.Muhammad Syauqi,Lc', '(kosong)', '0', 'khatib'),
(40, 17, 'Ust.Muhammad Ibnu Dahlan', '(kosong)', '0', 'khatib'),
(41, 18, 'H. Ahmad Baihaqi', '(kosong)', '0', 'khatib'),
(42, 19, 'Ust.H.Wahyudi Lc', '(kosong)', '0', 'khatib'),
(43, 20, 'Ust.H.Syamsunie,S.Pd.I', '(kosong)', '0', 'khatib'),
(44, 21, 'Ust.H.Ibnu Athaillah', '(kosong)', '0', 'khatib'),
(45, 22, 'Ust.Muhammad Suhaimi,Lc', '(kosong)', '0', 'khatib'),
(46, 24, 'Ust.Mujiburrahman S.Pd.I', '(kosong)', '0', 'khatib'),
(47, 25, 'Ust.H.Masri S.Ag', '(kosong)', '0', 'khatib'),
(48, 26, 'Ust.H.Ahmad Ridhuan,Lc', '(kosong)', '0', 'khatib'),
(49, 27, 'Ust.Muhammad Amin Hasan', '(kosong)', '0', 'khatib'),
(50, 28, 'Ust.Mahlidiin,S.Ag,M.Ag', '(kosong)', '0', 'khatib'),
(51, 29, 'KH.Adnan Nawawi,S.Ag', '(kosong)', '0', 'khatib'),
(52, 1, 'H. Ahmad Rifa\'i', '(kosong)', '0', 'muadzin'),
(53, 2, 'Syahruddin', '(kosong)', '0', 'muadzin'),
(54, 3, 'Muslih', '(kosong)', '0', 'muadzin'),
(55, 4, 'Ahmad Baihaqi', '(kosong)', '0', 'muadzin'),
(56, 5, 'Muhammad Ridwan, S.Pd.I', '(kosong)', '0', 'muadzin'),
(57, 6, 'Wardi', '(kosong)', '0', 'muadzin'),
(58, 7, 'Ahmad Fauzan, S.Pd.I', '(kosong)', '0', 'muadzin'),
(59, 8, 'Zainuddin', '(kosong)', '0', 'muadzin'),
(60, 9, 'Saifuddin', '(kosong)', '0', 'muadzin'),
(61, 10, 'Ahmad Fu\'ad', '(kosong)', '0', 'muadzin'),
(62, 21, '(kosong)', '(kosong)', '(kosong)', 'pengurus'),
(63, 22, 'WALIKOTA BANJARBARU', 'PEMBINA', '-----', 'pengurus'),
(64, 23, 'WAKIL WALIKOTA BANJARBARU', 'PEMBINA', '-----', 'pengurus'),
(65, 24, 'KETUA DPRD KOTA BANJARBARU', 'PEMBINA', '-----', 'pengurus'),
(66, 25, 'KEPALA KANTOR KEMENAG KOTA BANJARBARU', 'PENASEHAT', '-----', 'pengurus'),
(67, 26, 'KETUA MUI KOTA BANJARBARU', 'PENASEHAT', '-----', 'pengurus'),
(68, 27, 'KETUA DMI KOTA BANJARBARU', 'PENASEHAT', '-----', 'pengurus'),
(69, 28, 'KH. ABUL HASAN', 'PENASEHAT', '-----', 'pengurus'),
(70, 29, 'SEKRETARIS DAERAH KOTA BANJARBARU', 'KETUA UMUM', '-----', 'pengurus'),
(71, 30, 'Drs. H. RUSPANDIE, MM', 'KETUA HARIAN', '-----', 'pengurus'),
(72, 31, 'Drs. H. ABDURRAHMAN, S.Ag', 'KETUA I', '-----', 'pengurus'),
(73, 32, 'Ir.H.JAYA KRISNA', 'KETUA II', '-----', '-----'),
(74, 33, 'H. SYAHDI HIDAYAT, S.Ag', 'SEKRETARIS', '-----', '-----'),
(75, 34, 'KABAG KESRA SETDAKO BANJARBARU', 'WAKIL SEKRETARIS', '-----', '-----'),
(76, 35, 'MANRUNI, ST', 'BENDAHARA', '-----', '-----'),
(77, 36, 'KASUBBAG PENDIDIKAN PEMBINAAN KARAKTER & KEAGAMAAN PADA BAGIAN KESRA SETDAKO BANJARBARU', 'WAKIL BENDAHARA', '-----', '-----'),
(78, 37, 'H. JAZULI, S.Pd.I', 'SEKSI PERIBADATAN & DAKWAH', '-----', '-----'),
(79, 38, 'H. IBNU ATHAILLAH', 'SEKSI PERIBADATAN & DAKWAH', '-----', '-----'),
(80, 39, 'MUJIBURRAHMAN, S.Pd.I', 'SEKSI PERIBADATAN & DAKWAH', '-----', '-----'),
(81, 40, 'FATHURRIDHA SAID, S.Ag', 'SEKSI KEPEMUDAAN & WANITA', '-----', '-----'),
(82, 41, 'RIZALI HADI', 'SEKSI KEPEMUDAAN & WANITA', '-----', '-----'),
(83, 42, 'H. RAHMADI, S.Sos, M.AP', 'SEKSI PENDIDIKAN & PENGAJARAN', '-----', '-----'),
(84, 43, 'H. M. NASRULLAH, S.Pd.I', 'SEKSI PENDIDIKAN & PENGAJARAN', '-----', '-----'),
(85, 44, 'SYAFRUDIN NOOR, S.Pd.I', 'SEKSI PENDIDIKAN & PENGAJARAN', '-----', '-----'),
(86, 45, 'ROKHYAT RIYADI, SE, M.Si', 'SEKSI HUMAS', '-----', '-----'),
(87, 46, 'ADRIANI', 'SEKSI HUMAS', '-----', 'pengurus'),
(88, 47, 'YANI', 'SEKSI HUMAS', '-----', 'pengurus'),
(89, 48, 'SIRAJONI, AP, MM', 'SEKSI KEBERSIHAN & TANAMAN', '-----', 'pengurus'),
(90, 49, 'ZABIDI ANSHARI, ST, MT', 'SEKSI KEBERSIHAN & TANAMAN', '-----', 'pengurus'),
(91, 50, 'MASRUL, SP', 'SEKSI AIR, LISTRIK & ELEKTRONIK', '-----', 'pengurus'),
(92, 51, 'ENDRO SISWANTO, ST', 'SEKSI AIR, LISTRIK & ELEKTRONIK', '-----', 'pengurus'),
(93, 52, 'M. RIDWAN, S.Pd.I', 'SEKSI AIR, LISTRIK & ELEKTRONIK', '-----', 'pengurus'),
(94, 53, 'H. MAHRAIN RAHMAN, S.Sos, M.AP', 'SEKSI KEAMANAN', '-----', 'pengurus'),
(95, 54, 'HELMI WANSYAH, SH', 'SEKSI KEAMANAN', '-----', 'pengurus'),
(96, 55, 'KABID OPERASIONAL DAN PENGENDALIAN SATPOLPP', 'SEKSI KEAMANAN', '-----', 'pengurus'),
(97, 56, 'SARTONO, S.Sos', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', 'pengurus'),
(98, 57, 'MAHRUS', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', 'pengurus'),
(99, 58, 'RAHMAT JULIANI, ST', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', 'pengurus'),
(100, 59, 'AULIA', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', 'pengurus'),
(101, 60, 'A. YANI', 'KAUM', '-----', 'pengurus'),
(102, 61, 'Djaka', '(kosong)', '(kosong)', 'pengurus'),
(103, 62, 'Teddy Endar', '(kosong)', '(kosong)', 'pengurus'),
(104, 63, 'Reza Muttaqien', '(kosong)', '(kosong)', 'pengurus'),
(105, 64, 'Fikri', '(kosong)', '(kosong)', 'pengurus'),
(106, 65, 'Denny', '(kosong)', '(kosong)', 'pengurus'),
(107, 66, 'Sigit Suhar', '(kosong)', '(kosong)', 'pengurus'),
(108, 67, 'Oriz', '(kosong)', '(kosong)', 'pengurus'),
(109, 68, 'Bangjay', '(kosong)', '(kosong)', 'pengurus'),
(110, 69, 'Ridho', '(kosong)', '(kosong)', 'pengurus'),
(111, 70, 'Wahyu', '(kosong)', '(kosong)', 'pengurus'),
(112, 71, 'Anjar', '(kosong)', '(kosong)', 'pengurus'),
(113, 72, 'Ahmadi', '(kosong)', '(kosong)', 'pengurus'),
(114, 73, 'Arie', '(kosong)', '(kosong)', 'pengurus'),
(115, 74, 'Cecep', '(kosong)', '(kosong)', 'pengurus'),
(116, 75, 'Nana', '(kosong)', '(kosong)', 'pengurus'),
(117, 76, 'Azizah', '(kosong)', '(kosong)', 'pengurus'),
(118, 77, 'Amel', '(kosong)', '(kosong)', 'pengurus'),
(119, 78, 'Fada', '(kosong)', '(kosong)', 'pengurus'),
(120, 79, 'Alie', '(kosong)', '(kosong)', 'pengurus'),
(121, 80, 'Husnul', '(kosong)', '(kosong)', 'pengurus'),
(122, 20, 'KH. AHMAD ZUHDIANNOOR', '(kosong)', '0', 'guru'),
(128, 26, 'das\'ad latif', 'kosong', '0', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id` int(11) NOT NULL,
  `kode_pengurus` varchar(255) NOT NULL,
  `nama_pengurus` varchar(255) NOT NULL,
  `jabatan_pengurus` varchar(255) NOT NULL,
  `pangkat_pengurus` varchar(255) NOT NULL,
  `golongan_pengurus` varchar(255) NOT NULL,
  `status_pengurus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id`, `kode_pengurus`, `nama_pengurus`, `jabatan_pengurus`, `pangkat_pengurus`, `golongan_pengurus`, `status_pengurus`) VALUES
(21, '(kosong)', '(kosong)', '(kosong)', '(kosong)', '(kosong)', '(kosong)'),
(22, '01', 'WALIKOTA BANJARBARU', 'PEMBINA', '-----', '-----', 'Aktif'),
(23, '02', 'WAKIL WALIKOTA BANJARBARU', 'PEMBINA', '-----', '-----', 'Aktif'),
(24, '03', 'KETUA DPRD KOTA BANJARBARU', 'PEMBINA', '-----', '-----', 'Aktif'),
(25, '04', 'KEPALA KANTOR KEMENAG KOTA BANJARBARU', 'PENASEHAT', '-----', '-----', 'Aktif'),
(26, '05', 'KETUA MUI KOTA BANJARBARU', 'PENASEHAT', '-----', '-----', 'Aktif'),
(27, '06', 'KETUA DMI KOTA BANJARBARU', 'PENASEHAT', '-----', '-----', 'Aktif'),
(28, '07', 'KH. ABUL HASAN', 'PENASEHAT', '-----', '-----', 'Aktif'),
(29, '08', 'SEKRETARIS DAERAH KOTA BANJARBARU', 'KETUA UMUM', '-----', '-----', 'Aktif'),
(30, '09', 'Drs. H. RUSPANDIE, MM', 'KETUA HARIAN', '-----', '-----', 'Aktif'),
(31, '10', 'Drs. H. ABDURRAHMAN, S.Ag', 'KETUA I', '-----', '-----', 'Aktif'),
(32, '11', 'Ir.H.JAYA KRISNA', 'KETUA II', '-----', '-----', 'Aktif'),
(33, '12', 'H. SYAHDI HIDAYAT, S.Ag', 'SEKRETARIS', '-----', '-----', 'Aktif'),
(34, '13', 'KABAG KESRA SETDAKO BANJARBARU', 'WAKIL SEKRETARIS', '-----', '-----', 'Aktif'),
(35, '14', 'MANRUNI, ST', 'BENDAHARA', '-----', '-----', 'Aktif'),
(36, '15', 'KASUBBAG PENDIDIKAN PEMBINAAN KARAKTER & KEAGAMAAN PADA BAGIAN KESRA SETDAKO BANJARBARU', 'WAKIL BENDAHARA', '-----', '-----', 'Aktif'),
(37, '16', 'H. JAZULI, S.Pd.I', 'SEKSI PERIBADATAN & DAKWAH', '-----', '-----', 'Aktif'),
(38, '17', 'H. IBNU ATHAILLAH', 'SEKSI PERIBADATAN & DAKWAH', '-----', '-----', 'Aktif'),
(39, '18', 'MUJIBURRAHMAN, S.Pd.I', 'SEKSI PERIBADATAN & DAKWAH', '-----', '-----', 'Aktif'),
(40, '19', 'FATHURRIDHA SAID, S.Ag', 'SEKSI KEPEMUDAAN & WANITA', '-----', '-----', 'Aktif'),
(41, '20', 'RIZALI HADI', 'SEKSI KEPEMUDAAN & WANITA', '-----', '-----', 'Aktif'),
(42, '21', 'H. RAHMADI, S.Sos, M.AP', 'SEKSI PENDIDIKAN & PENGAJARAN', '-----', '-----', 'Aktif'),
(43, '22', 'H. M. NASRULLAH, S.Pd.I', 'SEKSI PENDIDIKAN & PENGAJARAN', '-----', '-----', 'Aktif'),
(44, '23', 'SYAFRUDIN NOOR, S.Pd.I', 'SEKSI PENDIDIKAN & PENGAJARAN', '-----', '-----', 'Aktif'),
(45, '24', 'ROKHYAT RIYADI, SE, M.Si', 'SEKSI HUMAS', '-----', '-----', 'Aktif'),
(46, '25', 'ADRIANI', 'SEKSI HUMAS', '-----', '-----', 'Aktif'),
(47, '26', 'YANI', 'SEKSI HUMAS', '-----', '-----', 'Aktif'),
(48, '27', 'SIRAJONI, AP, MM', 'SEKSI KEBERSIHAN & TANAMAN', '-----', '-----', 'Aktif'),
(49, '28', 'ZABIDI ANSHARI, ST, MT', 'SEKSI KEBERSIHAN & TANAMAN', '-----', '-----', 'Aktif'),
(50, '29', 'MASRUL, SP', 'SEKSI AIR, LISTRIK & ELEKTRONIK', '-----', '-----', 'Aktif'),
(51, '30', 'ENDRO SISWANTO, ST', 'SEKSI AIR, LISTRIK & ELEKTRONIK', '-----', '-----', 'Aktif'),
(52, '31', 'M. RIDWAN, S.Pd.I', 'SEKSI AIR, LISTRIK & ELEKTRONIK', '-----', '-----', 'Aktif'),
(53, '32', 'H. MAHRAIN RAHMAN, S.Sos, M.AP', 'SEKSI KEAMANAN', '-----', '-----', 'Aktif'),
(54, '33', 'HELMI WANSYAH, SH', 'SEKSI KEAMANAN', '-----', '-----', 'Aktif'),
(55, '34', 'KABID OPERASIONAL DAN PENGENDALIAN SATPOLPP', 'SEKSI KEAMANAN', '-----', '-----', 'Aktif'),
(56, '35', 'SARTONO, S.Sos', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', '-----', 'Aktif'),
(57, '36', 'MAHRUS', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', '-----', 'Aktif'),
(58, '37', 'RAHMAT JULIANI, ST', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', '-----', 'Aktif'),
(59, '38', 'AULIA', 'SEKSI PEMELIHARAAN & PERBAIKAN', '-----', '-----', 'Aktif'),
(60, '39', 'A. YANI', 'KAUM', '-----', '-----', 'Aktif'),
(61, '39', 'Djaka', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(62, '40', 'Teddy Endar', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(63, '41', 'Reza Muttaqien', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(64, '42', 'Fikri', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(65, '43', 'Denny', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(66, '44', 'Sigit Suhar', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(67, '45', 'Oriz', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(68, '46', 'Bangjay', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(69, '47', 'Ridho', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(70, '48', 'Wahyu', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(71, '49', 'Anjar', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(72, '50', 'Ahmadi', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(73, '51', 'Arie', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(74, '52', 'Cecep', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(75, '53', 'Nana', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(76, '54', 'Azizah', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(77, '55', 'Amel', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(78, '56', 'Fada', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(79, '57', 'Alie', '(kosong)', '(kosong)', '(kosong)', 'Aktif'),
(80, '58', 'Husnul', '(kosong)', '(kosong)', '(kosong)', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `nama_masjid` varchar(255) NOT NULL,
  `tahun_berdiri` year(4) NOT NULL,
  `alamat` text NOT NULL,
  `luas_tanah` varchar(255) NOT NULL,
  `status_tanah` varchar(255) NOT NULL,
  `luas_bangunan` varchar(255) NOT NULL,
  `daya_tampung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nomor`, `nama_masjid`, `tahun_berdiri`, `alamat`, `luas_tanah`, `status_tanah`, `luas_bangunan`, `daya_tampung`) VALUES
(1, '01.2.22.13.04.000004', 'MASJID AGUNG AL-MUNAWWARAH BANJARBARU', 2010, 'JL. TRIKORA KELURAHAN KEMUNING\r\nBANJARBARU SELATAN, KOTA BANJARBARU\r\nKALIMANTAN SELATAN', '7.000 m2', 'SHM', '2.500 m2', '4.500');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_kegiatan_dakwah`
--
ALTER TABLE `detail_kegiatan_dakwah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_kegiatan_haribesar`
--
ALTER TABLE `detail_kegiatan_haribesar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_kegiatan_pengajian`
--
ALTER TABLE `detail_kegiatan_pengajian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fasum`
--
ALTER TABLE `fasum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imam`
--
ALTER TABLE `imam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_belajar_quran`
--
ALTER TABLE `kegiatan_belajar_quran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_dakwah`
--
ALTER TABLE `kegiatan_dakwah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_haribesar`
--
ALTER TABLE `kegiatan_haribesar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_pengajian`
--
ALTER TABLE `kegiatan_pengajian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_pengurus`
--
ALTER TABLE `kegiatan_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_rutin`
--
ALTER TABLE `kegiatan_rutin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_sholat_jumat`
--
ALTER TABLE `kegiatan_sholat_jumat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khatib`
--
ALTER TABLE `khatib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muadzin`
--
ALTER TABLE `muadzin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `narsum`
--
ALTER TABLE `narsum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_kegiatan_dakwah`
--
ALTER TABLE `detail_kegiatan_dakwah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_kegiatan_haribesar`
--
ALTER TABLE `detail_kegiatan_haribesar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_kegiatan_pengajian`
--
ALTER TABLE `detail_kegiatan_pengajian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fasum`
--
ALTER TABLE `fasum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `imam`
--
ALTER TABLE `imam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kegiatan_belajar_quran`
--
ALTER TABLE `kegiatan_belajar_quran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kegiatan_dakwah`
--
ALTER TABLE `kegiatan_dakwah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kegiatan_haribesar`
--
ALTER TABLE `kegiatan_haribesar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kegiatan_pengajian`
--
ALTER TABLE `kegiatan_pengajian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kegiatan_pengurus`
--
ALTER TABLE `kegiatan_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kegiatan_rutin`
--
ALTER TABLE `kegiatan_rutin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kegiatan_sholat_jumat`
--
ALTER TABLE `kegiatan_sholat_jumat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `khatib`
--
ALTER TABLE `khatib`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `muadzin`
--
ALTER TABLE `muadzin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `narsum`
--
ALTER TABLE `narsum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
