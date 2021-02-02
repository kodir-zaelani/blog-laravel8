-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 02, 2021 at 03:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bloglaravel8`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'TopMenu', '2021-02-02 03:33:14', '2021-02-02 03:33:14'),
(2, 'SideMenu', '2021-02-02 03:33:14', '2021-02-02 03:33:14'),
(3, 'FooterMenu', '2021-02-02 03:33:14', '2021-02-02 03:33:14'),
(4, 'LinkMenu', '2021-02-02 03:33:14', '2021-02-02 03:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu_items`
--

CREATE TABLE `admin_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` bigint(20) UNSIGNED NOT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu_items`
--

INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent`, `sort`, `class`, `menu`, `depth`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', 0, 0, NULL, 1, 0, '2021-02-02 03:33:14', '2021-02-02 03:33:14'),
(2, 'Artikel', '/post/postall', 0, 0, NULL, 1, 0, '2021-02-02 03:33:14', '2021-02-02 03:33:14'),
(3, 'Tentang', '/page/tentang', 0, 0, NULL, 1, 0, '2021-02-02 03:33:14', '2021-02-02 03:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorydownloads`
--

CREATE TABLE `categorydownloads` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorypages`
--

CREATE TABLE `categorypages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorypages`
--

INSERT INTO `categorypages` (`id`, `title`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
('76c40887-f118-437c-8a1c-175225c82948', 'Tentang', 'tentang', NULL, '2021-02-02 03:33:14', '2021-02-02 03:33:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categoryposts`
--

CREATE TABLE `categoryposts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryposts`
--

INSERT INTO `categoryposts` (`id`, `author_id`, `title`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
('6e81a25e-c9f9-4951-8369-4c6a25fef83c', '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d', 'Belajar Laravel', 'belajar-laravel', NULL, '2021-02-02 03:33:14', '2021-02-02 03:33:14', NULL),
('a731b376-4d91-41a5-abe3-6f9d5938622d', '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d', 'Uncategorized', 'uncategorized', NULL, '2021-02-02 03:33:14', '2021-02-02 03:33:14', NULL),
('be47992f-7f2f-4b10-ad4a-1de15dc44907', '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d', 'Belajar HTML, CSS', 'bejara-html-css', NULL, '2021-02-02 03:33:14', '2021-02-02 03:33:14', NULL),
('d96810ea-68fc-488f-8a8d-169e8754c6e0', '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d', 'Tutorial', 'tutorial', NULL, '2021-02-02 03:33:14', '2021-02-02 03:33:14', NULL),
('e3a74357-3306-4921-a907-9183c0b9e122', '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d', 'Berita', 'berita', NULL, '2021-02-02 03:33:14', '2021-02-02 03:33:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `downloadfiles`
--

CREATE TABLE `downloadfiles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorydownload_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embedfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `indonesia_cities`
--

CREATE TABLE `indonesia_cities` (
  `id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indonesia_districts`
--

CREATE TABLE `indonesia_districts` (
  `id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indonesia_provinces`
--

CREATE TABLE `indonesia_provinces` (
  `id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indonesia_villages`
--

CREATE TABLE `indonesia_villages` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_08_03_072729_create_provinces_table', 1),
(5, '2016_08_03_072750_create_cities_table', 1),
(6, '2016_08_03_072804_create_districts_table', 1),
(7, '2016_08_03_072819_create_villages_table', 1),
(8, '2017_08_11_073824_create_menus_wp_table', 1),
(9, '2017_08_11_074006_create_menu_items_wp_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2020_05_21_100000_create_teams_table', 1),
(13, '2020_05_21_200000_create_team_user_table', 1),
(14, '2020_12_21_051558_create_sessions_table', 1),
(15, '2020_12_21_060123_create_permission_tables', 1),
(16, '2020_12_21_073243_alter_users_add_column', 1),
(17, '2020_12_31_144719_create_settings_table', 1),
(18, '2021_01_15_072334_create_trix_rich_texts_table', 1),
(19, '2021_01_18_144626_create_categoryposts_table', 1),
(20, '2021_01_18_145410_create_subcategoryposts_table', 1),
(21, '2021_01_18_145453_create_tags_table', 1),
(22, '2021_01_18_145511_create_setarticles_table', 1),
(23, '2021_01_18_145531_create_posts_table', 1),
(24, '2021_01_18_145555_create_categorypages_table', 1),
(25, '2021_01_18_145609_create_pages_table', 1),
(26, '2021_01_18_145630_create_socials_table', 1),
(27, '2021_01_23_053000_create_albums_table', 1),
(28, '2021_01_23_053042_create_photos_table', 1),
(29, '2021_01_23_053104_create_sliders_table', 1),
(30, '2021_01_23_234043_create_advertisements_table', 1),
(31, '2021_01_25_002724_create_widgets_table', 1),
(32, '2021_01_25_055202_create_categorydownloads_table', 1),
(33, '2021_01_25_062710_create_downloadfiles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
('eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6', 'App\\Models\\User', '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorypage_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
('024d3200-5b4f-4563-a57f-efed42a2608a', 'teachers.edit', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('026e3c24-59fc-4d1c-aa6d-c8f5926a392c', 'menus.edit', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('04314117-0252-4dc5-aa7c-bc9b3e27c4e4', 'tools.delete', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('046b7d58-9a7c-4efd-baf8-5cd3df150a49', 'coursstudygroups.create', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('050fade2-a404-43e1-b188-5832dd7e1594', 'permissions.create', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('066696ae-97c5-4bc4-aa47-87691ac290ef', 'categorypages.index', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('0742672e-32cd-4d36-b456-916b09c6f664', 'institutions.delete', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('0836ed82-5197-4c38-b59f-dd58209da327', 'photos.create', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('09dd1238-39ff-4a5d-9169-d35fb81b5a9b', 'sliders.delete', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('0a3b24b9-08a8-43e2-8b62-6278dcd25973', 'tools.create', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('0c3e9d96-af4d-4555-a360-765bc36dc577', 'courses.create', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('0ca7ad55-e267-402c-a612-20fa9b40c9e4', 'downloadfiles.create', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('135d5e9c-4818-4f8a-bfaa-32bca366ba53', 'events.edit', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('13c85998-9165-4286-a3d5-5a699503c782', 'widgets.edit', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('147a8d51-c602-4d22-a4fa-e0e2764dcf69', 'roles.index', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('17d714cc-037b-4b43-b33e-1dc5091bcaca', 'departments.create', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('1a83aacb-4336-490f-a192-8982c0d66ea2', 'screenshoots.delete', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('1b7db7bf-6d05-40c3-b1ec-d63290682aa0', 'learningresources.edit', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('1b8395ae-4bbb-4755-8bad-609a064e3ca4', 'scores.edit', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('1cac5a57-d222-4e9e-8d44-ee5af29804e2', 'posts.create', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('1f5bb773-5c2c-4d9d-af12-1c6ef08969b4', 'coursstudygroups.index', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('1f9564a2-e0a9-41eb-8ba0-ddad486b0d59', 'academicyears.edit', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('20f09b63-a758-4deb-9fea-b1e9c91a3ece', 'tags.index', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('22601307-df87-45f6-975a-3bf88a15e981', 'tools.edit', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('254b7372-342d-45fc-b1f7-543c1c3e23a2', 'screenshoots.edit', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('262e95e1-f3b9-4768-8629-a434bf259e3b', 'chapters.create', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('268ff49a-68a4-45a7-9bd1-aad5ddc69d48', 'chapters.index', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('26d42232-1f9e-4f5b-8df4-e161750a7dff', 'users.index', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('274f228f-05ab-4c2a-a5fe-6f6dca988e9d', 'exams.create', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('28146c17-6f56-4f38-8c6f-2e32440608fa', 'downloadfiles.delete', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('2981c01b-1b77-4719-8a90-3b8303b204b2', 'studygroups.edit', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('29e3f9bb-ff05-45f9-acdd-39845976fd97', 'scores.index', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('2d01dea3-8543-4893-8a70-3c5b1409dbf2', 'coursstudygroups.delete', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('2ec6bda6-8761-4814-a526-0065aed60b4f', 'setarticles.create', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('2f76c245-8aaa-43e0-b244-2e2b4b1a9cbc', 'permissions.edit', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('32533261-654d-4582-a066-44ad87590dda', 'widgets.index', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('339448be-6a5f-4124-8ed2-1ea0ab3c3189', 'exams.delete', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('3462a3bc-b0f9-4499-86b9-19cb21344566', 'links.create', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('3abedec2-1c45-40bf-a2e2-2a468942f3f8', 'albums.create', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('3e7b448f-8293-4e93-8940-1e31b8c9daa0', 'socialmedia.create', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('3f0b8e1c-2750-4ce1-bbfb-1d1cff5b4072', 'scores.delete', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('3f7a30cd-dfc8-4a71-9f99-698b3de49872', 'categorypages.edit', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('438cde69-fd86-47be-88df-5f22d8faaf92', 'coursstudygroups.edit', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('4425dca5-237c-44f1-b743-204c78f3972a', 'lessons.create', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('443f7a3c-3654-4a80-9d7b-1768491f2a3a', 'academicyears.delete', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('447a54d8-fda1-4792-9592-584703b4e9b5', 'advertisements.create', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('479f4f9c-a340-4881-bc14-377f359ca7cd', 'schoollevels.delete', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('4a12bea6-cc9f-4126-be5e-833f25de41b0', 'categorylearningresources.edit', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('51d7f3ba-a77f-42fb-ae70-7974625c2b28', 'users.create', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('5297af88-32b1-4eb0-bef0-dbe84b75de30', 'socialmedia.index', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('544bb21a-e3dd-4477-9f54-12ce2455a804', 'downloadfiles.edit', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('55a426b4-962d-4d35-b639-8fa83590680a', 'institutions.index', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('566c583a-1ed2-44d9-aa9b-d95e0e733080', 'curiculums.index', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('58cfd0d5-80d6-4e45-973e-7bac2e2a4781', 'sliders.index', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('5923d074-9252-460c-8cf1-ddb8a66d9fe7', 'photos.index', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('594463af-dc71-4725-9306-2ec5be58e32d', 'levelclasses.index', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('5a525687-33bb-44a6-8c91-1da7776e78c4', 'advertisements.delete', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('5b9d5d5a-7cc9-480d-bb59-3590e182ed5b', 'roles.delete', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('5bc08729-a9d6-445d-b00e-71feba48d76c', 'socialmedia.edit', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('5cdae160-78ad-4898-abe6-f116e7f6d996', 'advertisements.edit', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('5ee85d54-058e-4782-ae8a-0b62c7886087', 'departments.edit', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('60abd22e-0bf5-4f80-b127-9a3607b9a276', 'tools.index', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('618cc64c-7333-4147-8904-9b5dcf4da724', 'tags.create', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('62be1bb2-28af-4e45-ab9b-345615d9a404', 'questions.delete', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('64fb6c94-c79e-4852-9552-a5e69e6f29cf', 'studygroups.delete', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('670370ff-d7c3-4b09-a4ab-6b24a7f5c6e2', 'screenshoots.create', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('694c0e8d-d7b2-4169-9faa-7d89570a8c89', 'categorylearningresources.index', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('6a093760-9363-4cbd-ad9d-6a26d65e0e70', 'students.delete', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('6a2874dc-ef88-4cfc-937b-273eb7e904b4', 'levelclasses.edit', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('6a311e93-f161-4d48-937f-cfcb9cbb6b8f', 'schoollevels.edit', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('6c111152-6b98-4f0b-8866-f16c9b121aba', 'albums.edit', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('6cbf4039-a8fa-4f3e-b7f9-075b231164ae', 'schedules.index', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('6e7ff52a-7479-4087-a211-d0b2395cf991', 'categorypages.delete', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('749627ee-39e3-488d-9db3-b852eed27f47', 'permissions.delete', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('75f8c449-ae4a-46ca-88f0-5eb2fc5d017e', 'levelclasses.delete', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('78035b14-0987-4328-bc2b-5df546fe3bfc', 'roles.edit', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('7b3b3dd5-9a8a-43f5-855b-fe988bb03e18', 'schedules.delete', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('7b4b5e4d-aa8c-4c4c-9b15-686c4d67872c', 'schools.index', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('7bb1fa0a-1733-466b-83b3-c1cbbf6b5cc6', 'schedules.create', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('7d2d88be-1541-4955-a058-af357afadc1f', 'events.create', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('7f86481d-804f-410c-83a7-a197400780cd', 'schools.edit', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('7fcfb4a4-9d9b-44b3-9a15-f03224af2ec9', 'students.index', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('83413bff-6ad2-467f-84cd-43db15bd9980', 'schools.delete', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('8463d757-83a4-46af-ae57-e23d6e376daa', 'questions.index', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('846ccc78-eacd-494d-9837-6b54225da97e', 'levelclasses.create', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('850ffd3d-d681-4a32-a67d-4eacc0b87468', 'tags.delete', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('86a6ae32-d505-4ed7-9c08-bea456679ccc', 'events.index', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('878bc28e-e46a-4671-95c8-6e531150c54e', 'departments.delete', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('897f9e6b-0a1a-4c51-9541-81e2e063be9a', 'chapters.edit', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('89d7712c-ed97-49d4-b65c-5453d7ba87e7', 'tags.edit', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('8a781636-c7f9-4a2f-8d12-05d57883fb64', 'sliders.edit', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('8a93d56a-c529-4311-9a75-a399d827c260', 'studygroups.create', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('8cdea957-e132-4478-b24e-a8bb70542f59', 'posts.delete', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('8fc0a08d-a721-4fc6-b507-df1f4fe6776c', 'studygroups.index', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('926b3af6-cb8b-4a2f-aa9d-25263e5a13a6', 'setarticles.index', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('92ca31de-5cd5-4bc0-a6d2-5eacccd39eed', 'links.edit', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('9404b755-ec4c-40da-8c68-038524ead628', 'schools.create', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('958386ca-1bcb-47dd-ba43-420b73f01921', 'academicyears.create', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('9677f792-c7d0-42d5-8e7e-94f78ca057b4', 'setarticles.delete', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('970adeea-a678-4487-b328-db61554d556b', 'curiculums.delete', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('987ac85c-4aab-4aec-b1e7-9692dcad0cc5', 'scores.create', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('9916ffef-3ad4-477f-9658-5e37bc1e7a8e', 'categoryposts.index', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('9919eb96-b041-4950-9de3-f63d8cee25f6', 'chapters.delete', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('9a5949e2-ca6e-406a-a08d-d9558de70647', 'curiculums.edit', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('9cf8fb77-9a22-453b-a0c3-318526ed1b1c', 'widgets.create', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('a1fd549a-ec63-48d3-96d0-06f6b1bd8ac2', 'albums.index', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('a24d996d-9ae0-4cd3-be26-d006aafa3efc', 'students.create', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('a2dd6dd5-2bac-4233-9030-a923616b033e', 'lessons.delete', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('a2ecad00-a6d2-4e4d-a159-193a07fea5da', 'settings.index', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('a40a87b6-4cc1-4798-8170-cf3be55abfca', 'photos.delete', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('a5178551-b3d5-4a51-bc44-a07548bb4891', 'menus.index', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('a520fe53-fc44-4d78-a1c1-1f4ffee30c29', 'categorylearningresources.create', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('a5ac4406-a306-46d1-89fb-d6813206563a', 'curiculums.create', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('a6cf1752-a23a-4b06-872d-2a75e1316d65', 'settings.create', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('a704bcd9-1a96-498a-b633-f05e0a3d7206', 'lessons.edit', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('aa3e0e80-11c4-4144-97cb-66adecd62ceb', 'settings.edit', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('ab3ae67b-b6df-4c3a-ab0c-5e5b7feec2ee', 'menus.create', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('abff69ae-06a9-4f80-9d98-acc870e71b64', 'albums.delete', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('ad7bc183-467c-4d55-b272-8a4f716069c3', 'settings.delete', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('aebfdd87-95f5-4ea6-9f49-09a497506245', 'schoollevels.create', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('aecf17d9-d166-4f7e-87b3-ae7138dc9123', 'institutions.edit', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('b056b1d0-1b98-47fe-be19-9ccc5e8b0a47', 'categorypages.create', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('b0d972a6-c76b-4385-a8a1-40d803a840c3', 'exams.index', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('b3620e3b-2ee4-453f-9323-0aa110c63ca9', 'teachers.delete', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('b4d27f05-eeee-452e-ab18-ea9095bf8273', 'pages.create', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('b93c72b1-00ea-46ee-afbc-ecb1d109ef13', 'links.delete', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('b977e595-7f2e-419e-b217-0254ff6a1155', 'categorylearningresources.delete', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('baaff71a-40cc-4f5e-b042-207a313c51d1', 'students.edit', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('badbab3d-3c0c-4310-a882-1f9f7c622cc3', 'downloadfiles.index', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('be55af18-5799-452b-a87b-224d58354a51', 'schoollevels.index', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('be6c7797-8d58-48a9-a694-9e62ea5490fe', 'academicyears.index', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('c44dd266-a6e2-45e1-b4ac-e45d1070244e', 'sliders.create', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('c717147d-1c5e-4b92-b827-ac4754213152', 'posts.edit', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('c7a2d606-3f46-4592-9f9f-d4279711aa32', 'learningresources.create', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('c87676e1-78e5-48c0-b498-55a36d88f4b6', 'categoryposts.create', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('c87b0386-9e0e-483b-9276-dd49fb14f901', 'photos.edit', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('ca21ced9-f780-4ba1-be48-7fa937932a89', 'setarticles.edit', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('cab78014-8b3b-43cc-b04b-46c6af9c449e', 'socialmedia.delete', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('cdc398a2-3bb5-446f-aa3f-44fd37788a0c', 'lessons.index', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('cf1465e8-3c08-43db-8311-54d8219b1c4a', 'exams.edit', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('cf54747c-1d9b-47f3-92b2-03a360c013b0', 'questions.edit', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('cfcb6275-98b2-4d6a-ad9f-ccbcfb69ebb3', 'roles.create', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('d3ca23c7-8bc2-481b-9285-897e171f9c5e', 'events.delete', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('d498babd-254b-4cd6-8e8b-923e3efa0360', 'screenshoots.index', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('d593848b-1d53-4e6c-965c-1e83ddf534db', 'pages.index', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('d7888a17-f355-4244-bcc1-d9562d30db46', 'widgets.delete', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('d8448d51-ffef-4357-8fad-fc0e6aa534aa', 'pages.edit', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('d98a0d7e-d4f4-4ad7-a31a-827aab606bc2', 'categoryposts.delete', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('db491dd3-3794-4a76-add7-260e73853a38', 'departments.index', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('dbf74b2b-cc6e-45b9-b3a6-e4eec8a330bc', 'users.edit', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('dd45fd2f-9c9a-4b67-b2cc-d9fcb4b1dd37', 'courses.edit', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('ddc78d0e-f771-4ff4-bc10-1ae9000853d4', 'courses.index', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('dddd7e4d-2b91-47a4-8dd7-926167e44658', 'teachers.index', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('e5126ef9-237b-42fa-8d33-7d8c44ddf50d', 'pages.delete', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('e7580eb4-89e6-41e8-809c-7cf80d7162af', 'questions.create', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54'),
('e95cfbe7-740e-4947-94f3-3e9ab1c16b92', 'institutions.create', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('ebc39568-59f5-4b9b-a8ed-abed909591a3', 'links.index', 'web', '2021-02-02 03:29:58', '2021-02-02 03:29:58'),
('eca3bc43-94e4-4340-8db8-b9620e2f98c2', 'permissions.index', 'web', '2021-02-02 03:29:56', '2021-02-02 03:29:56'),
('ee3dce06-be3b-4fa0-a7dd-871751962ea8', 'schedules.edit', 'web', '2021-02-02 03:29:53', '2021-02-02 03:29:53'),
('f00fc5de-96d7-4d86-b280-c35d9a90b69b', 'menus.delete', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('f266abff-2777-4f28-ac2e-d5681b1685c9', 'teachers.create', 'web', '2021-02-02 03:29:51', '2021-02-02 03:29:51'),
('f3071193-e39e-4c46-8262-c969d7aee0d2', 'users.delete', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('f39b9dc5-0464-41e1-8ef5-10959dff1eb9', 'learningresources.index', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('f7472a84-a20b-486f-abdb-29490ef389b8', 'posts.index', 'web', '2021-02-02 03:29:55', '2021-02-02 03:29:55'),
('fd011984-7e11-49f0-adeb-d2fbd0b89cee', 'advertisements.index', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('fd8b66ea-f5dc-4f78-8bbc-78af353bec42', 'courses.delete', 'web', '2021-02-02 03:29:52', '2021-02-02 03:29:52'),
('fe72b30d-489b-49d8-9930-3ef79a418882', 'learningresources.delete', 'web', '2021-02-02 03:29:57', '2021-02-02 03:29:57'),
('ffac82de-cfd9-4fa0-9096-85ea9f788c15', 'categoryposts.edit', 'web', '2021-02-02 03:29:54', '2021-02-02 03:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` tinyint(1) NOT NULL DEFAULT 1,
  `selection` tinyint(1) NOT NULL DEFAULT 0,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorypost_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategorypost_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setarticle_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `comment_status` tinyint(1) DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
('01683f25-1b92-40d6-8d6c-57f7a260cbe4', 'author', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('04d4d433-745e-4e9f-85b6-44210b3ef68f', 'user', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('5d7a543e-8bb5-47fd-a5a7-84c4570c60f2', 'subscribe', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('959662d9-b9cc-435a-87a1-64e184c43f1d', 'admin', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('a5be3086-b360-4e36-92ec-5adf03e349e3', 'editor', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('c4aedbb5-2185-404e-bfbf-a1e4aced48f5', 'general', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50'),
('eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6', 'superadmin', 'web', '2021-02-02 03:29:50', '2021-02-02 03:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
('024d3200-5b4f-4563-a57f-efed42a2608a', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('026e3c24-59fc-4d1c-aa6d-c8f5926a392c', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('04314117-0252-4dc5-aa7c-bc9b3e27c4e4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('046b7d58-9a7c-4efd-baf8-5cd3df150a49', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('050fade2-a404-43e1-b188-5832dd7e1594', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('066696ae-97c5-4bc4-aa47-87691ac290ef', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('0742672e-32cd-4d36-b456-916b09c6f664', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('0836ed82-5197-4c38-b59f-dd58209da327', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('09dd1238-39ff-4a5d-9169-d35fb81b5a9b', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('0a3b24b9-08a8-43e2-8b62-6278dcd25973', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('0c3e9d96-af4d-4555-a360-765bc36dc577', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('0ca7ad55-e267-402c-a612-20fa9b40c9e4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('135d5e9c-4818-4f8a-bfaa-32bca366ba53', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('13c85998-9165-4286-a3d5-5a699503c782', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('147a8d51-c602-4d22-a4fa-e0e2764dcf69', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('17d714cc-037b-4b43-b33e-1dc5091bcaca', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('1a83aacb-4336-490f-a192-8982c0d66ea2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('1b7db7bf-6d05-40c3-b1ec-d63290682aa0', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('1b8395ae-4bbb-4755-8bad-609a064e3ca4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('1cac5a57-d222-4e9e-8d44-ee5af29804e2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('1f5bb773-5c2c-4d9d-af12-1c6ef08969b4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('1f9564a2-e0a9-41eb-8ba0-ddad486b0d59', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('20f09b63-a758-4deb-9fea-b1e9c91a3ece', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('22601307-df87-45f6-975a-3bf88a15e981', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('254b7372-342d-45fc-b1f7-543c1c3e23a2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('262e95e1-f3b9-4768-8629-a434bf259e3b', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('268ff49a-68a4-45a7-9bd1-aad5ddc69d48', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('26d42232-1f9e-4f5b-8df4-e161750a7dff', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('274f228f-05ab-4c2a-a5fe-6f6dca988e9d', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('28146c17-6f56-4f38-8c6f-2e32440608fa', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('2981c01b-1b77-4719-8a90-3b8303b204b2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('29e3f9bb-ff05-45f9-acdd-39845976fd97', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('2d01dea3-8543-4893-8a70-3c5b1409dbf2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('2ec6bda6-8761-4814-a526-0065aed60b4f', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('2f76c245-8aaa-43e0-b244-2e2b4b1a9cbc', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('32533261-654d-4582-a066-44ad87590dda', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('339448be-6a5f-4124-8ed2-1ea0ab3c3189', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('3462a3bc-b0f9-4499-86b9-19cb21344566', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('3abedec2-1c45-40bf-a2e2-2a468942f3f8', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('3e7b448f-8293-4e93-8940-1e31b8c9daa0', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('3f0b8e1c-2750-4ce1-bbfb-1d1cff5b4072', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('3f7a30cd-dfc8-4a71-9f99-698b3de49872', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('438cde69-fd86-47be-88df-5f22d8faaf92', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('4425dca5-237c-44f1-b743-204c78f3972a', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('443f7a3c-3654-4a80-9d7b-1768491f2a3a', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('447a54d8-fda1-4792-9592-584703b4e9b5', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('479f4f9c-a340-4881-bc14-377f359ca7cd', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('4a12bea6-cc9f-4126-be5e-833f25de41b0', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('51d7f3ba-a77f-42fb-ae70-7974625c2b28', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('5297af88-32b1-4eb0-bef0-dbe84b75de30', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('544bb21a-e3dd-4477-9f54-12ce2455a804', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('55a426b4-962d-4d35-b639-8fa83590680a', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('566c583a-1ed2-44d9-aa9b-d95e0e733080', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('58cfd0d5-80d6-4e45-973e-7bac2e2a4781', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('5923d074-9252-460c-8cf1-ddb8a66d9fe7', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('594463af-dc71-4725-9306-2ec5be58e32d', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('5a525687-33bb-44a6-8c91-1da7776e78c4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('5b9d5d5a-7cc9-480d-bb59-3590e182ed5b', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('5bc08729-a9d6-445d-b00e-71feba48d76c', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('5cdae160-78ad-4898-abe6-f116e7f6d996', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('5ee85d54-058e-4782-ae8a-0b62c7886087', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('60abd22e-0bf5-4f80-b127-9a3607b9a276', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('618cc64c-7333-4147-8904-9b5dcf4da724', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('62be1bb2-28af-4e45-ab9b-345615d9a404', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('64fb6c94-c79e-4852-9552-a5e69e6f29cf', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('670370ff-d7c3-4b09-a4ab-6b24a7f5c6e2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('694c0e8d-d7b2-4169-9faa-7d89570a8c89', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('6a093760-9363-4cbd-ad9d-6a26d65e0e70', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('6a2874dc-ef88-4cfc-937b-273eb7e904b4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('6a311e93-f161-4d48-937f-cfcb9cbb6b8f', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('6c111152-6b98-4f0b-8866-f16c9b121aba', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('6cbf4039-a8fa-4f3e-b7f9-075b231164ae', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('6e7ff52a-7479-4087-a211-d0b2395cf991', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('749627ee-39e3-488d-9db3-b852eed27f47', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('75f8c449-ae4a-46ca-88f0-5eb2fc5d017e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('78035b14-0987-4328-bc2b-5df546fe3bfc', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('7b3b3dd5-9a8a-43f5-855b-fe988bb03e18', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('7b4b5e4d-aa8c-4c4c-9b15-686c4d67872c', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('7bb1fa0a-1733-466b-83b3-c1cbbf6b5cc6', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('7d2d88be-1541-4955-a058-af357afadc1f', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('7f86481d-804f-410c-83a7-a197400780cd', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('7fcfb4a4-9d9b-44b3-9a15-f03224af2ec9', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('83413bff-6ad2-467f-84cd-43db15bd9980', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('8463d757-83a4-46af-ae57-e23d6e376daa', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('846ccc78-eacd-494d-9837-6b54225da97e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('850ffd3d-d681-4a32-a67d-4eacc0b87468', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('86a6ae32-d505-4ed7-9c08-bea456679ccc', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('878bc28e-e46a-4671-95c8-6e531150c54e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('897f9e6b-0a1a-4c51-9541-81e2e063be9a', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('89d7712c-ed97-49d4-b65c-5453d7ba87e7', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('8a781636-c7f9-4a2f-8d12-05d57883fb64', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('8a93d56a-c529-4311-9a75-a399d827c260', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('8cdea957-e132-4478-b24e-a8bb70542f59', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('8fc0a08d-a721-4fc6-b507-df1f4fe6776c', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('926b3af6-cb8b-4a2f-aa9d-25263e5a13a6', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('92ca31de-5cd5-4bc0-a6d2-5eacccd39eed', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('9404b755-ec4c-40da-8c68-038524ead628', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('958386ca-1bcb-47dd-ba43-420b73f01921', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('9677f792-c7d0-42d5-8e7e-94f78ca057b4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('970adeea-a678-4487-b328-db61554d556b', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('987ac85c-4aab-4aec-b1e7-9692dcad0cc5', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('9916ffef-3ad4-477f-9658-5e37bc1e7a8e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('9919eb96-b041-4950-9de3-f63d8cee25f6', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('9a5949e2-ca6e-406a-a08d-d9558de70647', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('9cf8fb77-9a22-453b-a0c3-318526ed1b1c', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a1fd549a-ec63-48d3-96d0-06f6b1bd8ac2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a24d996d-9ae0-4cd3-be26-d006aafa3efc', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a2dd6dd5-2bac-4233-9030-a923616b033e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a2ecad00-a6d2-4e4d-a159-193a07fea5da', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a40a87b6-4cc1-4798-8170-cf3be55abfca', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a5178551-b3d5-4a51-bc44-a07548bb4891', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a520fe53-fc44-4d78-a1c1-1f4ffee30c29', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a5ac4406-a306-46d1-89fb-d6813206563a', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a6cf1752-a23a-4b06-872d-2a75e1316d65', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('a704bcd9-1a96-498a-b633-f05e0a3d7206', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('aa3e0e80-11c4-4144-97cb-66adecd62ceb', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('ab3ae67b-b6df-4c3a-ab0c-5e5b7feec2ee', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('abff69ae-06a9-4f80-9d98-acc870e71b64', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('ad7bc183-467c-4d55-b272-8a4f716069c3', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('aebfdd87-95f5-4ea6-9f49-09a497506245', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('aecf17d9-d166-4f7e-87b3-ae7138dc9123', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('b056b1d0-1b98-47fe-be19-9ccc5e8b0a47', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('b0d972a6-c76b-4385-a8a1-40d803a840c3', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('b3620e3b-2ee4-453f-9323-0aa110c63ca9', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('b4d27f05-eeee-452e-ab18-ea9095bf8273', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('b93c72b1-00ea-46ee-afbc-ecb1d109ef13', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('b977e595-7f2e-419e-b217-0254ff6a1155', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('baaff71a-40cc-4f5e-b042-207a313c51d1', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('badbab3d-3c0c-4310-a882-1f9f7c622cc3', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('be55af18-5799-452b-a87b-224d58354a51', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('be6c7797-8d58-48a9-a694-9e62ea5490fe', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('c44dd266-a6e2-45e1-b4ac-e45d1070244e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('c717147d-1c5e-4b92-b827-ac4754213152', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('c7a2d606-3f46-4592-9f9f-d4279711aa32', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('c87676e1-78e5-48c0-b498-55a36d88f4b6', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('c87b0386-9e0e-483b-9276-dd49fb14f901', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('ca21ced9-f780-4ba1-be48-7fa937932a89', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('cab78014-8b3b-43cc-b04b-46c6af9c449e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('cdc398a2-3bb5-446f-aa3f-44fd37788a0c', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('cf1465e8-3c08-43db-8311-54d8219b1c4a', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('cf54747c-1d9b-47f3-92b2-03a360c013b0', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('cfcb6275-98b2-4d6a-ad9f-ccbcfb69ebb3', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('d3ca23c7-8bc2-481b-9285-897e171f9c5e', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('d498babd-254b-4cd6-8e8b-923e3efa0360', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('d593848b-1d53-4e6c-965c-1e83ddf534db', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('d7888a17-f355-4244-bcc1-d9562d30db46', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('d8448d51-ffef-4357-8fad-fc0e6aa534aa', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('d98a0d7e-d4f4-4ad7-a31a-827aab606bc2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('db491dd3-3794-4a76-add7-260e73853a38', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('dbf74b2b-cc6e-45b9-b3a6-e4eec8a330bc', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('dd45fd2f-9c9a-4b67-b2cc-d9fcb4b1dd37', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('ddc78d0e-f771-4ff4-bc10-1ae9000853d4', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('dddd7e4d-2b91-47a4-8dd7-926167e44658', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('e5126ef9-237b-42fa-8d33-7d8c44ddf50d', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('e7580eb4-89e6-41e8-809c-7cf80d7162af', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('e95cfbe7-740e-4947-94f3-3e9ab1c16b92', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('ebc39568-59f5-4b9b-a8ed-abed909591a3', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('eca3bc43-94e4-4340-8db8-b9620e2f98c2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('ee3dce06-be3b-4fa0-a7dd-871751962ea8', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('f00fc5de-96d7-4d86-b280-c35d9a90b69b', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('f266abff-2777-4f28-ac2e-d5681b1685c9', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('f3071193-e39e-4c46-8262-c969d7aee0d2', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('f39b9dc5-0464-41e1-8ef5-10959dff1eb9', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('f7472a84-a20b-486f-abdb-29490ef389b8', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('fd011984-7e11-49f0-adeb-d2fbd0b89cee', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('fd8b66ea-f5dc-4f78-8bbc-78af353bec42', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('fe72b30d-489b-49d8-9930-3ef79a418882', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6'),
('ffac82de-cfd9-4fa0-9096-85ea9f788c15', 'eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('s3dAyZ2zhqUVq48dKukMRWqvl0PSOnheS5jhusjU', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzhmeTY2U2pEdXVOY0ZVMFB5NG1EbGFGOW9tZHBVS09TYUtUbHRwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9ibG9nLWxhcmF2ZWw4LnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1612237038);

-- --------------------------------------------------------

--
-- Table structure for table `setarticles`
--

CREATE TABLE `setarticles` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setarticles`
--

INSERT INTO `setarticles` (`id`, `title`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0a6f7589-04b9-4d82-ad75-109e0f8291d2', 'Belajar Laravel', 'belajar-laravel', NULL, '2021-02-02 03:29:50', '2021-02-02 03:29:50', NULL),
('49b9513d-aa19-4dbb-8fd1-7b4a0173ddfe', 'Belajar HTML', 'belajar-html', NULL, '2021-02-02 03:29:49', '2021-02-02 03:29:49', NULL),
('916b44f4-a12b-4aa4-8747-29bf9a0130f4', 'Belajar PHP', 'belajar php', NULL, '2021-02-02 03:29:50', '2021-02-02 03:29:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_slider` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `tagline`, `website`, `email`, `description`, `telephone`, `status_slider`, `image`, `logo`, `favicon`, `meta_description`, `meta_key`, `created_at`, `updated_at`) VALUES
(1, 'Laman Kreasi', 'Belajar dan terus belajar', 'www.lamankreasi.com', 'laman.kreasi@gmail.com', 'Web sumber pembelajaran', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2021-02-02 03:29:32', '2021-02-02 03:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_attribute` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_embed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_embed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_embed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_embed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatapps` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_embed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `facebook_embed`, `instagram`, `instagram_embed`, `youtube`, `youtube_embed`, `twitter`, `twitter_embed`, `whatapps`, `telegram`, `pinterest`, `pinterest_embed`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', NULL, 'Instagram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-02 03:29:33', '2021-02-02 03:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `subcategoryposts`
--

CREATE TABLE `subcategoryposts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorypost_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `iclass`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
('19a8d259-d048-48d7-9733-5840e4c80a19', 'CSS', 'secondary', 'css', '2021-02-02 03:29:49', '2021-02-02 03:29:49', NULL),
('2a76b786-5c71-4dad-ba07-63ca41be885f', 'Pemograman', 'success', 'pemograman', '2021-02-02 03:29:49', '2021-02-02 03:29:49', NULL),
('3c8887ef-9260-4003-b559-4dba902f3435', 'Berita', 'success', 'berita', '2021-02-02 03:29:49', '2021-02-02 03:29:49', NULL),
('79f9cbba-d67e-4643-b922-9e2db9f73abc', 'PHP', 'warning', 'php', '2021-02-02 03:29:49', '2021-02-02 03:29:49', NULL),
('bfdcf4b2-b82c-49c9-bb77-0ace5a4ff437', 'HTML', 'primary', 'html', '2021-02-02 03:29:49', '2021-02-02 03:29:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trix_attachments`
--

CREATE TABLE `trix_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` int(10) UNSIGNED DEFAULT NULL,
  `attachable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_pending` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trix_rich_texts`
--

CREATE TABLE `trix_rich_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `slug`, `email_verified_at`, `password`, `bio`, `photo`, `status`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
('54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d', 'Super Admin', 'super@gmail.com', 'super-admin', '2021-02-02 03:29:58', '$2y$10$CCgS.QMsfivsivTdWiXtBu4iJChdIF4YQ8E3x6XyINroOvdo1KcqK', 'Saya merupakan pemilik website www.lamankreasi.com', NULL, 1, NULL, NULL, 'zhYzk7wvd1ESlWqY4bs0wWaV8sY8RL', NULL, NULL, '2021-02-02 03:29:59', '2021-02-02 03:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fontawesome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_items_menu_foreign` (`menu`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `advertisements_slug_unique` (`slug`),
  ADD KEY `advertisements_author_id_foreign` (`author_id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorydownloads`
--
ALTER TABLE `categorydownloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorydownloads_title_unique` (`title`),
  ADD UNIQUE KEY `categorydownloads_slug_unique` (`slug`),
  ADD KEY `categorydownloads_author_id_foreign` (`author_id`);

--
-- Indexes for table `categorypages`
--
ALTER TABLE `categorypages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorypages_title_unique` (`title`),
  ADD UNIQUE KEY `categorypages_slug_unique` (`slug`);

--
-- Indexes for table `categoryposts`
--
ALTER TABLE `categoryposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoryposts_title_unique` (`title`),
  ADD UNIQUE KEY `categoryposts_slug_unique` (`slug`),
  ADD KEY `categoryposts_author_id_foreign` (`author_id`);

--
-- Indexes for table `downloadfiles`
--
ALTER TABLE `downloadfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `downloadfiles_slug_unique` (`slug`),
  ADD KEY `downloadfiles_author_id_foreign` (`author_id`),
  ADD KEY `downloadfiles_categorydownload_id_foreign` (`categorydownload_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `indonesia_cities`
--
ALTER TABLE `indonesia_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indonesia_cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `indonesia_districts`
--
ALTER TABLE `indonesia_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indonesia_districts_city_id_foreign` (`city_id`);

--
-- Indexes for table `indonesia_provinces`
--
ALTER TABLE `indonesia_provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indonesia_villages`
--
ALTER TABLE `indonesia_villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indonesia_villages_district_id_foreign` (`district_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_author_id_foreign` (`author_id`),
  ADD KEY `pages_categorypage_id_foreign` (`categorypage_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photos_slug_unique` (`slug`),
  ADD KEY `photos_album_id_foreign` (`album_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_categorypost_id_foreign` (`categorypost_id`),
  ADD KEY `posts_subcategorypost_id_foreign` (`subcategorypost_id`),
  ADD KEY `posts_setarticle_id_foreign` (`setarticle_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setarticles`
--
ALTER TABLE `setarticles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setarticles_slug_unique` (`slug`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_email_unique` (`email`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_author_id_foreign` (`author_id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategoryposts`
--
ALTER TABLE `subcategoryposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategoryposts_title_unique` (`title`),
  ADD UNIQUE KEY `subcategoryposts_slug_unique` (`slug`),
  ADD KEY `subcategoryposts_author_id_foreign` (`author_id`),
  ADD KEY `subcategoryposts_categorypost_id_foreign` (`categorypost_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `trix_attachments`
--
ALTER TABLE `trix_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trix_rich_texts`
--
ALTER TABLE `trix_rich_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trix_rich_texts_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widgets_slug_unique` (`slug`),
  ADD KEY `widgets_author_id_foreign` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trix_attachments`
--
ALTER TABLE `trix_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trix_rich_texts`
--
ALTER TABLE `trix_rich_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD CONSTRAINT `admin_menu_items_menu_foreign` FOREIGN KEY (`menu`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categorydownloads`
--
ALTER TABLE `categorydownloads`
  ADD CONSTRAINT `categorydownloads_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categoryposts`
--
ALTER TABLE `categoryposts`
  ADD CONSTRAINT `categoryposts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `downloadfiles`
--
ALTER TABLE `downloadfiles`
  ADD CONSTRAINT `downloadfiles_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `downloadfiles_categorydownload_id_foreign` FOREIGN KEY (`categorydownload_id`) REFERENCES `categorydownloads` (`id`);

--
-- Constraints for table `indonesia_cities`
--
ALTER TABLE `indonesia_cities`
  ADD CONSTRAINT `indonesia_cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `indonesia_provinces` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `indonesia_districts`
--
ALTER TABLE `indonesia_districts`
  ADD CONSTRAINT `indonesia_districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `indonesia_cities` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `indonesia_villages`
--
ALTER TABLE `indonesia_villages`
  ADD CONSTRAINT `indonesia_villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `indonesia_districts` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pages_categorypage_id_foreign` FOREIGN KEY (`categorypage_id`) REFERENCES `categorypages` (`id`);

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_categorypost_id_foreign` FOREIGN KEY (`categorypost_id`) REFERENCES `categoryposts` (`id`),
  ADD CONSTRAINT `posts_setarticle_id_foreign` FOREIGN KEY (`setarticle_id`) REFERENCES `setarticles` (`id`),
  ADD CONSTRAINT `posts_subcategorypost_id_foreign` FOREIGN KEY (`subcategorypost_id`) REFERENCES `subcategoryposts` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategoryposts`
--
ALTER TABLE `subcategoryposts`
  ADD CONSTRAINT `subcategoryposts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `subcategoryposts_categorypost_id_foreign` FOREIGN KEY (`categorypost_id`) REFERENCES `categoryposts` (`id`);

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
