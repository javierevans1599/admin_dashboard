-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 01:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-03-08 07:30:05', '2024-03-08 07:30:05'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-03-08 07:30:05', '2024-03-08 07:30:05'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-03-08 07:30:05', '2024-03-08 07:30:05'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-03-08 07:30:05', '2024-03-08 07:30:05'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-03-08 07:30:05', '2024-03-08 07:30:05'),
(13, 0, 11, 'New-users', 'icon-file', 'new-users', NULL, '2024-03-08 07:52:30', '2024-03-08 07:52:30'),
(14, 0, 11, 'Students', 'icon-file', 'students', NULL, '2024-03-08 08:05:00', '2024-03-08 08:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-03-08 07:11:14', '2024-03-08 07:11:14'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 07:11:15', '2024-03-08 07:11:15'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 07:11:26', '2024-03-08 07:11:26'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 07:30:21', '2024-03-08 07:30:21'),
(5, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 07:30:34', '2024-03-08 07:30:34'),
(6, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone_number\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address\",\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9SJGiNc74wJHgIKizrHsEFgiimTf5M7tuAI0I6HO\"}', '2024-03-08 07:51:43', '2024-03-08 07:51:43'),
(7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 07:51:44', '2024-03-08 07:51:44'),
(8, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"NewUser\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone_number\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address\",\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9SJGiNc74wJHgIKizrHsEFgiimTf5M7tuAI0I6HO\"}', '2024-03-08 07:52:17', '2024-03-08 07:52:17'),
(9, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 07:52:18', '2024-03-08 07:52:18'),
(10, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"NewUser\",\"model_name\":\"App\\\\Models\\\\NewUser\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\NewUserController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"phone_number\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"address\",\"type\":\"char\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9SJGiNc74wJHgIKizrHsEFgiimTf5M7tuAI0I6HO\"}', '2024-03-08 07:52:30', '2024-03-08 07:52:30'),
(11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 07:52:31', '2024-03-08 07:52:31'),
(12, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 07:53:52', '2024-03-08 07:53:52'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 07:54:12', '2024-03-08 07:54:12'),
(14, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:03:59', '2024-03-08 08:03:59'),
(15, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:04:10', '2024-03-08 08:04:10'),
(16, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"student\",\"model_name\":\"App\\\\Models\\\\Student\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\StudentController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"9SJGiNc74wJHgIKizrHsEFgiimTf5M7tuAI0I6HO\"}', '2024-03-08 08:04:59', '2024-03-08 08:04:59'),
(17, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:05:01', '2024-03-08 08:05:01'),
(18, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:05:04', '2024-03-08 08:05:04'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:05:25', '2024-03-08 08:05:25'),
(20, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:05:33', '2024-03-08 08:05:33'),
(21, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:07:45', '2024-03-08 08:07:45'),
(22, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:11:06', '2024-03-08 08:11:06'),
(23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:18:24', '2024-03-08 08:18:24'),
(24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:22:31', '2024-03-08 08:22:31'),
(25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:24:19', '2024-03-08 08:24:19'),
(26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:25:04', '2024-03-08 08:25:04'),
(27, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:25:12', '2024-03-08 08:25:12'),
(28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:26:24', '2024-03-08 08:26:24'),
(29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:29:33', '2024-03-08 08:29:33'),
(30, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:29:37', '2024-03-08 08:29:37'),
(31, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-08 08:33:00', '2024-03-08 08:33:00'),
(32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-08 08:33:38', '2024-03-08 08:33:38'),
(33, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-10 06:02:41', '2024-03-10 06:02:41'),
(34, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-10 06:02:56', '2024-03-10 06:02:56'),
(35, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-10 06:03:07', '2024-03-10 06:03:07'),
(36, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-03-10 06:03:12', '2024-03-10 06:03:12'),
(37, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-10 06:03:20', '2024-03-10 06:03:20'),
(38, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-10 06:04:12', '2024-03-10 06:04:12'),
(39, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-10 06:07:08', '2024-03-10 06:07:08'),
(40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-10 06:26:48', '2024-03-10 06:26:48'),
(41, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-10 06:26:49', '2024-03-10 06:26:49'),
(42, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-10 06:26:54', '2024-03-10 06:26:54'),
(43, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-10 06:27:05', '2024-03-10 06:27:05'),
(44, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 01:50:08', '2024-03-12 01:50:08'),
(45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-12 01:50:19', '2024-03-12 01:50:19'),
(46, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-12 01:50:25', '2024-03-12 01:50:25'),
(47, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 01:50:29', '2024-03-12 01:50:29'),
(48, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 01:50:31', '2024-03-12 01:50:31'),
(49, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 01:55:23', '2024-03-12 01:55:23'),
(50, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 01:55:33', '2024-03-12 01:55:33'),
(51, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 01:56:24', '2024-03-12 01:56:24'),
(52, 1, 'admin/students/create', 'GET', '127.0.0.1', '[]', '2024-03-12 01:58:50', '2024-03-12 01:58:50'),
(53, 1, 'admin/students/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:01:50', '2024-03-12 02:01:50'),
(54, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:02:57', '2024-03-12 02:02:57'),
(55, 1, 'admin/new-users/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:03:00', '2024-03-12 02:03:00'),
(56, 1, 'admin/new-users/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:05:56', '2024-03-12 02:05:56'),
(57, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:11:26', '2024-03-12 02:11:26'),
(58, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:11:30', '2024-03-12 02:11:30'),
(59, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:13:01', '2024-03-12 02:13:01'),
(60, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-12 02:13:11', '2024-03-12 02:13:11'),
(61, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:14:21', '2024-03-12 02:14:21'),
(62, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:14:25', '2024-03-12 02:14:25'),
(63, 1, 'admin/students/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:14:27', '2024-03-12 02:14:27'),
(64, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:14:34', '2024-03-12 02:14:34'),
(65, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-12 02:15:33', '2024-03-12 02:15:33'),
(66, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:18:22', '2024-03-12 02:18:22'),
(67, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:20:08', '2024-03-12 02:20:08'),
(68, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:20:29', '2024-03-12 02:20:29'),
(69, 1, 'admin/students/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:20:31', '2024-03-12 02:20:31'),
(70, 1, 'admin/students', 'POST', '127.0.0.1', '{\"name\":\"james\",\"email\":\"james123@gmail.com\",\"_token\":\"xTkeCMF5IivbpLcv4jqc15XpW6GQVSjxv7bUG1IP\"}', '2024-03-12 02:22:31', '2024-03-12 02:22:31'),
(71, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:22:32', '2024-03-12 02:22:32'),
(72, 1, 'admin/students/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:22:44', '2024-03-12 02:22:44'),
(73, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-12 02:22:57', '2024-03-12 02:22:57'),
(74, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:23:55', '2024-03-12 02:23:55'),
(75, 1, 'admin/new-users/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:23:59', '2024-03-12 02:23:59'),
(76, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:19', '2024-03-12 02:24:19'),
(77, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:20', '2024-03-12 02:24:20'),
(78, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:22', '2024-03-12 02:24:22'),
(79, 1, 'admin/students/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:26', '2024-03-12 02:24:26'),
(80, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:37', '2024-03-12 02:24:37'),
(81, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:44', '2024-03-12 02:24:44'),
(82, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:53', '2024-03-12 02:24:53'),
(83, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:24:59', '2024-03-12 02:24:59'),
(84, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-12 02:25:08', '2024-03-12 02:25:08'),
(85, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-12 02:25:20', '2024-03-12 02:25:20'),
(86, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:25:32', '2024-03-12 02:25:32'),
(87, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:25:35', '2024-03-12 02:25:35'),
(88, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 02:29:36', '2024-03-12 02:29:36'),
(89, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-12 02:29:42', '2024-03-12 02:29:42'),
(90, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 02:30:59', '2024-03-12 02:30:59'),
(91, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:31:06', '2024-03-12 02:31:06'),
(92, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:31:11', '2024-03-12 02:31:11'),
(93, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-12 02:31:16', '2024-03-12 02:31:16'),
(94, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:31:19', '2024-03-12 02:31:19'),
(95, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-03-12 02:31:23', '2024-03-12 02:31:23'),
(96, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"evan\",\"name\":\"evan\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"12345\",\"search_terms\":null,\"roles\":[null],\"permissions\":[\"3\",\"2\",null],\"_token\":\"B5CW9BnRhMfhgB1Xvz969gWMiMMwenRmwVgM3DIQ\"}', '2024-03-12 02:32:09', '2024-03-12 02:32:09'),
(97, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:10', '2024-03-12 02:32:10'),
(98, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:14', '2024-03-12 02:32:14'),
(99, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:23', '2024-03-12 02:32:23'),
(100, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:33', '2024-03-12 02:32:33'),
(101, 2, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:38', '2024-03-12 02:32:38'),
(102, 2, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:41', '2024-03-12 02:32:41'),
(103, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:46', '2024-03-12 02:32:46'),
(104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 02:32:57', '2024-03-12 02:32:57'),
(105, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:26', '2024-03-12 02:33:26'),
(106, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:30', '2024-03-12 02:33:30'),
(107, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:35', '2024-03-12 02:33:35'),
(108, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:40', '2024-03-12 02:33:40'),
(109, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:44', '2024-03-12 02:33:44'),
(110, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:48', '2024-03-12 02:33:48'),
(111, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:52', '2024-03-12 02:33:52'),
(112, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:55', '2024-03-12 02:33:55'),
(113, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:33:58', '2024-03-12 02:33:58'),
(114, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"evan\",\"name\":\"evan\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$AMMyiPnGmYH4o95vtkLrWO3c9IYISPaySoD287Z.mtC35nafsdmI2\",\"search_terms\":null,\"roles\":[null],\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"t1Qf51HGe9UPSwyIAD50EmwgBnC40fkyO82pxJCt\",\"_method\":\"PUT\"}', '2024-03-12 02:34:09', '2024-03-12 02:34:09'),
(115, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:09', '2024-03-12 02:34:09'),
(116, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:13', '2024-03-12 02:34:13'),
(117, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:16', '2024-03-12 02:34:16'),
(118, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:29', '2024-03-12 02:34:29'),
(119, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:41', '2024-03-12 02:34:41'),
(120, 2, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:45', '2024-03-12 02:34:45'),
(121, 2, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:46', '2024-03-12 02:34:46'),
(122, 2, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:49', '2024-03-12 02:34:49'),
(123, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-12 02:34:52', '2024-03-12 02:34:52'),
(124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-12 02:35:59', '2024-03-12 02:35:59'),
(125, 1, 'admin/students', 'GET', '127.0.0.1', '[]', '2024-03-12 02:36:04', '2024-03-12 02:36:04'),
(126, 1, 'admin/students/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:36:07', '2024-03-12 02:36:07'),
(127, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:36:13', '2024-03-12 02:36:13'),
(128, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:36:16', '2024-03-12 02:36:16'),
(129, 1, 'admin/new-users/1', 'PUT', '127.0.0.1', '{\"name\":\"evan\",\"phone_number\":\"119840268\",\"email\":\"javierevans1999@gmail.com\",\"address\":\"ctfvygbuhnijmok,pl\",\"_token\":\"G77CX8GJCc3XUHZmU1OhW60Q3V0CKbkX8ZGvn0PA\",\"_method\":\"PUT\"}', '2024-03-12 02:36:57', '2024-03-12 02:36:57'),
(130, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:36:57', '2024-03-12 02:36:57'),
(131, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:37:02', '2024-03-12 02:37:02'),
(132, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:40:22', '2024-03-12 02:40:22'),
(133, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:40:25', '2024-03-12 02:40:25'),
(134, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:40:33', '2024-03-12 02:40:33'),
(135, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:40:37', '2024-03-12 02:40:37'),
(136, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:40:41', '2024-03-12 02:40:41'),
(137, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:40:44', '2024-03-12 02:40:44'),
(138, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:41:11', '2024-03-12 02:41:11'),
(139, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:41:32', '2024-03-12 02:41:32'),
(140, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:41:37', '2024-03-12 02:41:37'),
(141, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-03-12 02:42:02', '2024-03-12 02:42:02'),
(142, 1, 'admin/new-users', 'GET', '127.0.0.1', '[]', '2024-03-12 02:42:05', '2024-03-12 02:42:05'),
(143, 1, 'admin/new-users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-12 02:42:10', '2024-03-12 02:42:10'),
(144, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:42:13', '2024-03-12 02:42:13'),
(145, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:42:23', '2024-03-12 02:42:23'),
(146, 1, 'admin/new-users/1', 'GET', '127.0.0.1', '[]', '2024-03-12 02:49:59', '2024-03-12 02:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-03-08 07:30:05', '2024-03-08 07:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-03-08 07:05:59', '2024-03-08 07:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$j.Sqf9ZG9iguDPN48vfJIe/ce06Y99AtZ41eUQy2NozaIPhiwP26G', 'Administrator', NULL, NULL, '2024-03-08 07:05:59', '2024-03-08 07:05:59'),
(2, 'evan', '$2y$12$AMMyiPnGmYH4o95vtkLrWO3c9IYISPaySoD287Z.mtC35nafsdmI2', 'evan', NULL, NULL, '2024-03-12 02:32:10', '2024-03-12 02:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 3, NULL, NULL),
(2, 2, NULL, NULL),
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_03_08_155230_create_NewUser_table', 3),
(7, '2024_03_08_160500_create_student_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE `newuser` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`id`, `name`, `phone_number`, `email`, `address`, `image`, `created_at`, `updated_at`) VALUES
(1, 'evan', 119840268, 'javierevans1999@gmail.com', 'ctfvygbuhnijmok,pl', 'images/Hyundai-Grand-i10-Nios-200120231541.jpg', NULL, '2024-03-12 02:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'evan', 'javierevans1999@gmail.com', NULL, NULL, NULL),
(2, 'james', 'james123@gmail.com', 'images/car image.jpg', '2024-03-12 02:22:31', '2024-03-12 02:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newuser`
--
ALTER TABLE `newuser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
