-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 04:39 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', '[]', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT 0.000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Super Admin', 'Male', '8888888888', '', 'admin@admin.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2021-02-10', '2021-02-10', '2021-02-10', '0.000', NULL, '2021-02-10 14:10:32', '2021-02-10 14:10:32'),
(2, 'admin', 'admin', 'Male', '012234137687687', NULL, 'admin1@admin.com', 1, NULL, NULL, NULL, '1990-01-01', '1970-01-01', '1990-01-01', '0.000', NULL, '2021-02-13 15:30:16', '2021-02-13 15:30:16');

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
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Master Vision', '2020-06-04 08:15:25', '2021-02-13 15:53:23'),
(2, 'sitename_part1', '', 'Master', '2020-06-04 08:15:25', '2021-02-13 15:53:23'),
(3, 'sitename_part2', '', 'Vision', '2020-06-04 08:15:26', '2021-02-13 15:53:23'),
(4, 'sitename_short', '', 'MV', '2020-06-04 08:15:26', '2021-02-13 15:53:23'),
(6, 'sidebar_search', '', '0', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(7, 'show_messages', '', '0', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(8, 'show_notifications', '', '0', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(9, 'show_tasks', '', '0', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(10, 'show_rightsidebar', '', '0', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(11, 'skin', '', 'skin-blue', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(12, 'layout', '', 'layout-boxed', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(13, 'default_email', '', 'info@recipe-eg.com', '2020-06-04 08:15:26', '2021-02-13 15:53:24'),
(14, 'site_description', '', NULL, NULL, '2021-02-13 15:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `label`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', 'Team', '#', 'fa-users', 'custom', 0, 1, '2021-02-13 14:50:02', '2021-02-13 14:50:55'),
(3, 'Roles', 'Roles', 'roles', 'fa-user-plus', 'module', 1, 1, '2021-02-13 14:50:15', '2021-02-13 14:50:50'),
(4, 'Organizations', 'Organizations', 'organizations', 'fa-university', 'module', 1, 2, '2021-02-13 14:50:30', '2021-02-13 14:50:50'),
(5, 'Departments', 'Departments', 'departments', 'fa-tags', 'module', 1, 3, '2021-02-13 14:50:35', '2021-02-13 14:50:52'),
(6, 'Employees', 'Employees', 'employees', 'fa-group', 'module', 1, 4, '2021-02-13 14:50:39', '2021-02-13 14:50:54'),
(7, 'Users', 'Users', 'users', 'fa-group', 'module', 1, 5, '2021-02-13 14:50:43', '2021-02-13 14:50:55');

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
(102, '2014_05_26_050000_create_modules_table', 1),
(103, '2014_05_26_055000_create_module_field_types_table', 1),
(104, '2014_05_26_060000_create_module_fields_table', 1),
(105, '2014_10_12_000000_create_users_table', 1),
(106, '2014_10_12_100000_create_password_resets_table', 1),
(107, '2014_12_01_000000_create_uploads_table', 1),
(108, '2016_05_26_064006_create_departments_table', 1),
(109, '2016_05_26_064007_create_employees_table', 1),
(110, '2016_05_26_064446_create_roles_table', 1),
(111, '2016_07_05_115343_create_role_user_table', 1),
(112, '2016_07_06_140637_create_organizations_table', 1),
(113, '2016_07_07_134058_create_backups_table', 1),
(114, '2016_07_07_134058_create_menus_table', 1),
(115, '2016_09_10_163337_create_permissions_table', 1),
(116, '2016_09_10_163520_create_permission_role_table', 1),
(117, '2016_09_22_105958_role_module_fields_table', 1),
(118, '2016_09_22_110008_role_module_table', 1),
(119, '2016_10_06_115413_create_la_configs_table', 1),
(120, '2019_08_19_000000_create_failed_jobs_table', 1),
(121, '2021_02_10_175120_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(30, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2021-02-10 14:09:28', '2021-02-10 14:09:28'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2021-02-10 14:09:33', '2021-02-10 14:09:33'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2021-02-10 14:09:34', '2021-02-10 14:09:34'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2021-02-10 14:09:38', '2021-02-10 14:09:38'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2021-02-10 14:09:48', '2021-02-10 14:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `defaultvalue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `popup_vals` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2021-02-10 14:09:28', '2021-02-10 14:09:28'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2021-02-10 14:09:28', '2021-02-10 14:09:28'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2021-02-10 14:09:29', '2021-02-10 14:09:29'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2021-02-10 14:09:29', '2021-02-10 14:09:29'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2021-02-10 14:09:29', '2021-02-10 14:09:29'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2021-02-10 14:09:31', '2021-02-10 14:09:31'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2021-02-10 14:09:33', '2021-02-10 14:09:33'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2021-02-10 14:09:33', '2021-02-10 14:09:33'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2021-02-10 14:09:33', '2021-02-10 14:09:33'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2021-02-10 14:09:34', '2021-02-10 14:09:34'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2021-02-10 14:09:34', '2021-02-10 14:09:34'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2021-02-10 14:09:35', '2021-02-10 14:09:35'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2021-02-10 14:09:36', '2021-02-10 14:09:36'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2021-02-10 14:09:36', '2021-02-10 14:09:36'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2021-02-10 14:09:38', '2021-02-10 14:09:38'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2021-02-10 14:09:38', '2021-02-10 14:09:38'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2021-02-10 14:09:43', '2021-02-10 14:09:43'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2021-02-10 14:09:48', '2021-02-10 14:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(2, 'Checkbox', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(3, 'Currency', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(4, 'Date', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(5, 'Datetime', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(6, 'Decimal', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(7, 'Dropdown', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(8, 'Email', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(9, 'File', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(10, 'Float', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(11, 'HTML', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(12, 'Image', '2021-02-10 14:09:23', '2021-02-10 14:09:23'),
(13, 'Integer', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(14, 'Mobile', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(15, 'Multiselect', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(16, 'Name', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(17, 'Password', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(18, 'Radio', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(19, 'String', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(20, 'Taginput', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(21, 'Textarea', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(22, 'TextField', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(23, 'URL', '2021-02-10 14:09:24', '2021-02-10 14:09:24'),
(24, 'Files', '2021-02-10 14:09:25', '2021-02-10 14:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `email`, `phone`, `website`, `assigned_to`, `connect_since`, `address`, `city`, `description`, `profile_image`, `profile`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Organization', 'org@example.com', NULL, 'http://', 1, '1970-01-01', 'address', 'city', NULL, 0, 0, NULL, '2021-02-13 15:10:13', '2021-02-13 15:10:13');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ADMIN_PANEL', 'web', '2021-02-11 15:19:46', '2021-02-11 15:19:46', NULL),
(2, 'Permissions-view', 'web', '2021-02-11 15:19:46', '2021-02-11 15:19:46', NULL),
(3, 'Permissions-create', 'web', '2021-02-11 17:15:26', '2021-02-11 17:15:26', NULL),
(4, 'Permissions-edit', 'web', '2021-02-11 15:19:46', '2021-02-11 15:19:46', NULL),
(5, 'Permissions-delete', 'web', NULL, NULL, NULL),
(6, 'Roles-view', 'web', '2021-02-11 15:19:46', '2021-02-11 15:19:46', NULL),
(7, 'Roles-create', 'web', '2021-02-11 15:19:46', '2021-02-11 15:19:46', NULL),
(8, 'Roles-edit', 'web', '2021-02-11 17:15:26', '2021-02-11 17:15:26', NULL),
(9, 'Roles-delete', 'web', '2021-02-11 15:19:46', '2021-02-11 15:19:46', NULL),
(10, 'Organizations-view', 'web', NULL, NULL, NULL),
(11, 'Organizations-create', 'web', NULL, NULL, NULL),
(12, 'Organizations-edit', 'web', NULL, NULL, NULL),
(13, 'Organizations-delete', 'web', NULL, NULL, NULL),
(14, 'Employees-view', 'web', NULL, NULL, NULL),
(15, 'Employees-create', 'web', NULL, NULL, NULL),
(16, 'Employees-edit', 'web', NULL, NULL, NULL),
(17, 'Employees-delete', 'web', NULL, NULL, NULL),
(18, 'Departments-view', 'web', NULL, NULL, NULL),
(19, 'Departments-create', 'web', NULL, NULL, NULL),
(20, 'Departments-edit', 'web', NULL, NULL, NULL),
(21, 'Departments-delete', 'web', NULL, NULL, NULL),
(22, 'Users-view', 'web', NULL, NULL, NULL),
(23, 'Users-create', 'web', NULL, NULL, NULL),
(24, 'Users-edit', 'web', NULL, NULL, NULL),
(25, 'Users-delete', 'web', NULL, NULL, NULL),
(26, 'Uploads-view', 'web', NULL, NULL, NULL),
(27, 'Uploads-create', 'web', NULL, NULL, NULL),
(28, 'Uploads-edit', 'web', NULL, NULL, NULL),
(29, 'Uploads-delete', 'web', NULL, NULL, NULL),
(30, 'SUPER_ADMIN', 'web', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `parent`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'SUPER_ADMIN', 'web', NULL, '2021-02-13 14:02:09', NULL),
(2, 1, 'ADMIN', 'web', NULL, '2021-02-13 14:02:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, 1, 1, 1, '2021-02-11 18:07:08', '2021-02-11 18:07:08'),
(2, 2, 5, 1, 0, 0, 0, '2021-02-11 18:07:08', '2021-02-11 18:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 'write', '2021-02-11 18:07:08', '2021-02-11 18:07:08'),
(2, 1, 33, 'write', '2021-02-11 18:07:08', '2021-02-11 18:07:08'),
(3, 2, 30, 'readonly', '2021-02-11 18:07:08', '2021-02-11 18:07:08'),
(4, 2, 33, 'readonly', '2021-02-11 18:07:08', '2021-02-11 18:07:08'),
(5, 1, 1, 'write', '2021-02-13 14:53:11', '2021-02-13 14:53:11'),
(6, 1, 2, 'readonly', '2021-02-13 14:53:11', '2021-02-13 14:53:11'),
(7, 1, 3, 'write', '2021-02-13 14:53:11', '2021-02-13 14:53:11'),
(8, 1, 4, 'write', '2021-02-13 14:53:11', '2021-02-13 14:53:11'),
(9, 1, 5, 'write', '2021-02-13 14:53:11', '2021-02-13 14:53:11'),
(10, 1, 6, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(11, 1, 7, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(12, 1, 8, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(13, 1, 9, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(14, 1, 10, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(15, 1, 11, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(16, 1, 12, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(17, 1, 13, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(18, 1, 14, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(19, 1, 15, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(20, 1, 16, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(21, 1, 17, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(22, 1, 18, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(23, 1, 19, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(24, 1, 20, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(25, 1, 21, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(26, 1, 22, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(27, 1, 23, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(28, 1, 24, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(29, 1, 25, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(30, 1, 26, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(31, 1, 27, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(32, 1, 28, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(33, 1, 29, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(34, 1, 35, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(35, 1, 36, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(36, 1, 37, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(37, 1, 38, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(38, 1, 39, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(39, 1, 40, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(40, 1, 41, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(41, 1, 42, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(42, 1, 43, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(43, 1, 44, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(44, 1, 45, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(45, 1, 49, 'write', '2021-02-13 14:54:21', '2021-02-13 14:54:21'),
(46, 2, 1, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(47, 2, 2, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(48, 2, 3, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(49, 2, 4, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(50, 2, 5, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(51, 2, 6, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(52, 2, 7, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(53, 2, 8, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(54, 2, 9, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(55, 2, 10, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(56, 2, 11, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(57, 2, 12, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(58, 2, 13, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(59, 2, 14, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(60, 2, 15, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(61, 2, 16, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(62, 2, 17, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(63, 2, 18, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(64, 2, 19, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(65, 2, 20, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(66, 2, 21, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(67, 2, 22, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(68, 2, 23, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(69, 2, 24, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(70, 2, 25, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(71, 2, 26, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(72, 2, 27, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(73, 2, 28, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(74, 2, 29, 'write', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(75, 2, 35, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(76, 2, 36, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(77, 2, 37, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(78, 2, 38, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(79, 2, 39, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(80, 2, 40, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(81, 2, 41, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(82, 2, 42, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(83, 2, 43, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(84, 2, 44, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(85, 2, 45, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(86, 2, 49, 'invisible', '2021-02-13 14:54:54', '2021-02-13 14:54:54'),
(87, 3, 1, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(88, 3, 2, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(89, 3, 3, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(90, 3, 4, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(91, 3, 5, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(92, 3, 6, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(93, 3, 7, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(94, 3, 8, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(95, 3, 9, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(96, 3, 10, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(97, 3, 11, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(98, 3, 12, 'readonly', '2021-02-13 15:08:06', '2021-02-13 15:08:06'),
(99, 3, 13, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(100, 3, 14, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(101, 3, 15, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(102, 3, 16, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(103, 3, 17, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(104, 3, 18, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(105, 3, 19, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(106, 3, 20, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(107, 3, 21, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(108, 3, 22, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(109, 3, 23, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(110, 3, 24, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(111, 3, 25, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(112, 3, 26, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(113, 3, 27, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(114, 3, 28, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(115, 3, 29, 'readonly', '2021-02-13 15:08:07', '2021-02-13 15:08:07'),
(116, 3, 30, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(117, 3, 33, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(118, 3, 35, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(119, 3, 36, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(120, 3, 37, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(121, 3, 38, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(122, 3, 39, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(123, 3, 40, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(124, 3, 41, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(125, 3, 42, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(126, 3, 43, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(127, 3, 44, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(128, 3, 45, 'readonly', '2021-02-13 15:08:08', '2021-02-13 15:08:08'),
(129, 3, 49, 'readonly', '2021-02-13 15:08:09', '2021-02-13 15:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hash` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 'admin@admin.com', '$2y$10$7a.ScFLTsJyxlwh9Hw0ZhO2KmTH9wKduseUCIc6xGHtqVmgdW63xq', 'Employee', NULL, NULL, '2021-02-10 14:10:32', '2021-02-10 14:10:32'),
(2, 'admin', 2, 'admin1@admin.com', '$2y$10$YQ.Vw4nDW6mXKyNSgZeY3..Z4uslvVGdwJ6GqMRIFjHiWDPkJDp/.', 'Employee', NULL, NULL, '2021-02-13 15:30:16', '2021-02-13 15:30:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

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
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
