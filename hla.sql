-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2021 at 10:44 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hla`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alternative_mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opened_at` date NOT NULL DEFAULT '2020-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `address`, `email`, `mobile`, `phone`, `alternative_mobile`, `opened_at`) VALUES
(1, NULL, '2021-06-22 22:38:52', '2021-06-22 22:38:52', 'branch 1', 'testing', 'test@test.com', '01101787643', '01101787643', '01101787643', '2021-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `branch_employees`
--

CREATE TABLE `branch_employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch_employees`
--

INSERT INTO `branch_employees` (`id`, `deleted_at`, `created_at`, `updated_at`, `branch_id`, `user_id`) VALUES
(1, NULL, '2021-06-22 22:39:07', '2021-06-22 22:39:07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_of_birth` date NOT NULL DEFAULT '2020-01-01',
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` int(11) NOT NULL,
  `insurance_id_image` int(11) NOT NULL DEFAULT 1,
  `left_axls` double NOT NULL,
  `right_axls` double NOT NULL,
  `left_sph` double(8,2) NOT NULL,
  `right_sph` double(8,2) NOT NULL,
  `left_cyl` double(8,2) NOT NULL,
  `right_cyl` double(8,2) NOT NULL,
  `LPD` double NOT NULL,
  `insurance_company_id` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `date_of_birth`, `gender`, `email`, `address`, `mobile`, `image`, `insurance_id_image`, `left_axls`, `right_axls`, `left_sph`, `right_sph`, `left_cyl`, `right_cyl`, `LPD`, `insurance_company_id`) VALUES
(1, NULL, '2021-06-18 14:04:00', '2021-06-18 14:04:00', 'Ali Mahmoud', '2021-05-31', 'Male', 'test@test.com', 'testing', '01101787642', 1, 2, 1, 2, 4.00, 3.00, 5.00, 6.00, 1, 1),
(2, NULL, '2021-06-22 21:10:07', '2021-06-22 21:10:07', 'Ali Mahmoud', '2021-06-17', 'Male', 'test1@test.com', 'testing', '01101787641', 0, 0, 1, 2, 1.00, 2.00, 1.00, 1.00, 1, 1),
(3, NULL, '2021-06-22 21:17:42', '2021-06-22 21:17:42', 'Ali Mahmoud', '2021-06-10', 'Male', 'test2@test.com', 'testing', '01101787643', 0, 0, 1, 2, 3.00, 4.00, 5.00, 6.00, 2, 1),
(4, NULL, '2021-06-29 14:31:02', '2021-06-29 14:31:02', 'Ali Mahmouddd', '2021-06-18', 'Male', 'test@test3.com', 'testing', '01101787644', 0, 0, 1, 2, 5.00, 3.00, 6.00, 4.00, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `covers`
--

CREATE TABLE `covers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` int(11) NOT NULL DEFAULT 1,
  `actule_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `sale_price` decimal(15,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `glasses_lenses`
--

CREATE TABLE `glasses_lenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `right_axls` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `left_axls` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_of_purchase` date NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[]',
  `actule_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `sale_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `seller` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `glasses_lenses`
--

INSERT INTO `glasses_lenses` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `code`, `right_axls`, `left_axls`, `date_of_purchase`, `color`, `type`, `actule_price`, `sale_price`, `seller`, `quantity`) VALUES
(1, '2021-06-29 12:55:19', '2021-06-24 17:57:54', '2021-06-29 12:55:19', 'Codac', 'testing glass', '-1.0', '-1.0', '2021-06-10', 'color', '[\"Anti-Reflection\"]', '200.000', '150.500', 'testing seller', 150),
(3, '2021-06-29 12:55:23', '2021-06-24 18:34:26', '2021-06-29 12:55:23', 'Codac', 'testing code2', '-1.0', '-1.0', '2021-06-11', 'color', '[\"Anti-Reflection\"]', '22.000', '11.000', 'testing seller', 12),
(4, NULL, '2021-06-29 12:57:00', '2021-06-29 12:57:00', 'Codac', '0555', '-1.0', '-1.0', '2021-06-11', 'color', '[\"Anti-Reflection\"]', '60.000', '50.000', 'testing seller', 10);

-- --------------------------------------------------------

--
-- Table structure for table `ic_employees`
--

CREATE TABLE `ic_employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `insurance_company_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ic_employees`
--

INSERT INTO `ic_employees` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `email`, `gender`, `insurance_company_id`, `mobile`) VALUES
(1, NULL, '2021-06-18 19:22:21', '2021-06-18 19:22:58', 'Ali', 'test@test.com', 'Male', 1, '01101787642');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_companies`
--

CREATE TABLE `insurance_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_percetage` decimal(15,3) NOT NULL DEFAULT 10.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_companies`
--

INSERT INTO `insurance_companies` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `address`, `email`, `mobile`, `discount_percetage`) VALUES
(1, NULL, '2021-06-18 19:21:55', '2021-06-18 19:21:55', 'Ali Mahmoud', 'testing', 'test@test.com', '01101787642', '10.000');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `paid` double(8,2) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `insurance_company_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_type_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `paid` double(8,2) NOT NULL,
  `payee_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_types`
--

CREATE TABLE `invoice_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `type`, `item_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Optic', 4, '01111', '2021-06-27 19:51:14', '2021-06-27 19:51:14'),
(2, 'App\\Models\\SunGlass', 2, '03333', '2021-06-29 12:53:02', '2021-06-29 12:53:02'),
(3, 'App\\Models\\Optic', 5, '02222', '2021-06-29 12:54:15', '2021-06-29 12:54:15'),
(4, 'App\\Models\\Lens', 2, '0444', '2021-06-29 12:55:06', '2021-06-29 12:55:06'),
(5, 'App\\Models\\Glasses_lense', 4, '0555', '2021-06-29 12:57:00', '2021-06-29 12:57:00');

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
(1, 'sitename', '', 'Optic Gallery', '2020-06-04 08:15:25', '2021-06-18 15:39:06'),
(2, 'sitename_part1', '', 'Optic', '2020-06-04 08:15:25', '2021-06-18 15:39:06'),
(3, 'sitename_part2', '', 'Gallery', '2020-06-04 08:15:26', '2021-06-18 15:39:06'),
(4, 'sitename_short', '', 'OG', '2020-06-04 08:15:26', '2021-06-18 15:39:06'),
(6, 'sidebar_search', '', '0', '2020-06-04 08:15:26', '2021-06-24 18:50:26'),
(7, 'show_messages', '', '0', '2020-06-04 08:15:26', '2021-06-24 18:50:26'),
(8, 'show_notifications', '', '0', '2020-06-04 08:15:26', '2021-06-24 18:50:26'),
(9, 'show_tasks', '', '0', '2020-06-04 08:15:26', '2021-06-24 18:50:26'),
(10, 'show_rightsidebar', '', '0', '2020-06-04 08:15:26', '2021-06-24 18:50:26'),
(11, 'skin', '', 'skin-red', '2020-06-04 08:15:26', '2021-06-18 15:39:06'),
(12, 'layout', '', 'fixed', '2020-06-04 08:15:26', '2021-06-18 15:39:06'),
(13, 'default_email', '', 'info@recipe-eg.com', '2020-06-04 08:15:26', '2021-06-18 15:39:06'),
(14, 'site_description', '', '', NULL, '2021-06-18 15:39:06');

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
(1, 'Team', 'Team', '#', 'fa-users', 'custom', 0, 3, '2021-02-13 14:50:02', '2021-06-18 14:47:26'),
(3, 'Roles', 'Roles', 'roles', 'fa-user-plus', 'module', 1, 1, '2021-02-13 14:50:15', '2021-02-13 14:50:50'),
(4, 'Organizations', 'Organizations', 'organizations', 'fa-university', 'module', 1, 2, '2021-02-13 14:50:30', '2021-02-13 14:50:50'),
(5, 'Departments', 'Departments', 'departments', 'fa-tags', 'module', 1, 3, '2021-02-13 14:50:35', '2021-02-13 14:50:52'),
(6, 'Employees', 'Employees', 'employees', 'fa-group', 'module', 13, 3, '2021-02-13 14:50:39', '2021-06-18 16:42:29'),
(7, 'Users', 'Users', 'users', 'fa-group', 'module', 1, 4, '2021-02-13 14:50:43', '2021-06-18 13:35:37'),
(12, 'Inventory', 'Inventory', '#', 'fa-cube', 'custom', 0, 1, '2021-06-18 12:30:31', '2021-06-18 14:47:26'),
(13, 'Contact', 'Contact', '#', 'fa-connectdevelop', 'custom', 0, 2, '2021-06-18 13:34:18', '2021-06-18 14:47:26'),
(14, 'Clients', 'Clients', 'clients', 'fa fa-male', 'module', 13, 1, '2021-06-18 13:54:30', '2021-06-18 14:07:33'),
(15, 'Branches', 'Branches', 'branches', 'fa fa-share-alt', 'module', 13, 4, '2021-06-18 14:17:36', '2021-06-18 16:42:29'),
(16, 'Insurance_Companies', 'Insurance_Companies', 'insurance_companies', 'fa fa-money', 'module', 13, 6, '2021-06-18 14:32:11', '2021-06-22 22:40:05'),
(17, 'IC_Employees', 'IC_Employees', 'ic_employees', 'fa fa-credit-card', 'module', 13, 8, '2021-06-18 14:34:25', '2021-06-22 22:40:05'),
(18, 'Covers', 'Covers', 'covers', 'fa fa-shield', 'module', 12, 1, '2021-06-18 14:46:59', '2021-06-18 14:47:26'),
(19, 'Lenses', 'Lenses', 'lenses', 'fa fa-eye', 'module', 12, 2, '2021-06-18 15:32:46', '2021-06-18 15:34:13'),
(20, 'Glasses_Lenses', 'Glasses_Lenses', 'glasses_lenses', 'fa fa-eye', 'module', 12, 3, '2021-06-18 15:57:05', '2021-06-18 15:58:47'),
(21, 'Optics', 'Optics', 'optics', 'fa fa-eye', 'module', 12, 4, '2021-06-18 16:07:19', '2021-06-18 16:07:28'),
(22, 'Sunglasses', 'Sunglasses', 'sunglasses', 'fa fa-eye', 'module', 12, 5, '2021-06-18 16:25:27', '2021-06-18 16:25:37'),
(23, 'Users_Credentials', 'Users_Credentials', 'users_credentials', 'fa fa-user', 'module', 13, 2, '2021-06-18 16:42:08', '2021-06-18 16:42:29'),
(24, 'Operations', 'Operations', '#', 'fa-gear', 'custom', 0, 4, '2021-06-18 17:58:55', '2021-06-18 17:59:01'),
(27, 'Payment_Methods', 'Payment_Methods', 'payment_methods', 'fa fa-credit-card', 'module', 13, 7, '2021-06-20 18:25:13', '2021-06-22 22:40:05'),
(28, 'Invoice_Types', 'Invoice_Types', 'invoice_types', 'fa fa-circle-thin', 'module', 24, 1, '2021-06-20 20:04:02', '2021-06-20 20:07:18'),
(29, 'Sales Invoice', 'Sales Invoice', 'invoices/create', 'fa-plus', 'custom', 24, 2, '2021-06-22 20:09:02', '2021-06-22 20:09:10'),
(30, 'Branch_Employees', 'Branch_Employees', 'branch_employees', 'fa fa-slideshare', 'module', 13, 5, '2021-06-22 22:37:57', '2021-06-22 22:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `lenses`
--

CREATE TABLE `lenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `left_axls` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `right_axls` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_of_purchase` date NOT NULL,
  `image` int(11) NOT NULL DEFAULT 1,
  `actule_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `sale_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seller` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lenses`
--

INSERT INTO `lenses` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `code`, `left_axls`, `right_axls`, `color`, `date_of_purchase`, `image`, `actule_price`, `sale_price`, `quantity`, `seller`) VALUES
(1, '2021-06-29 12:53:19', '2021-06-18 15:46:22', '2021-06-29 12:53:19', 'Bella', 'halawa', '.25', '-.25', 'Green', '2021-06-24', 0, '20.500', '20.000', 150, 'test'),
(2, NULL, '2021-06-29 12:55:06', '2021-06-29 12:55:06', 'Fresh Look', '0444', '-1.0', '-1.0', 'Green', '2021-06-02', 3, '50.000', '40.000', 10, 'testing seller');

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
(121, '2021_02_10_175120_create_permission_tables', 2),
(122, '2021_02_13_180817_create_sliders_table', 3),
(123, '2021_06_20_223313_create_invoice_payments_table', 4),
(125, '2021_06_20_223451_create_invoice_attachments_table', 6),
(128, '2021_06_26_202138_create_items_table', 7),
(129, '2021_06_20_223421_create_invoice_items_table', 8);

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
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2021-02-10 14:09:48', '2021-02-10 14:09:48'),
(10, 'Optics', 'Optics', 'optics', 'name', 'Optic', 'OpticsController', 'fa-eye', 1, '2021-06-18 12:31:37', '2021-06-18 16:07:19'),
(11, 'Clients', 'Clients', 'clients', 'name', 'Client', 'ClientsController', 'fa-male', 1, '2021-06-18 13:36:17', '2021-06-18 13:54:30'),
(12, 'Branches', 'Branches', 'branches', 'name', 'Branch', 'BranchesController', 'fa-share-alt', 1, '2021-06-18 14:08:23', '2021-06-18 14:17:36'),
(13, 'Insurance_Companies', 'Insurance_Companies', 'insurance_companies', 'name', 'Insurance_Company', 'Insurance_CompaniesController', 'fa-money', 1, '2021-06-18 14:19:36', '2021-06-18 14:32:11'),
(14, 'IC_Employees', 'IC_Employees', 'ic_employees', 'name', 'IC_Employee', 'IC_EmployeesController', 'fa-credit-card', 1, '2021-06-18 14:23:41', '2021-06-18 14:34:25'),
(15, 'Covers', 'Covers', 'covers', 'name', 'Cover', 'CoversController', 'fa-shield', 1, '2021-06-18 14:44:25', '2021-06-18 14:46:59'),
(16, 'Lenses', 'Lenses', 'lenses', 'name', 'Lens', 'LensesController', 'fa-eye', 1, '2021-06-18 14:49:39', '2021-06-18 15:32:46'),
(17, 'Glasses_Lenses', 'Glasses_Lenses', 'glasses_lenses', 'name', 'Glasses_Lense', 'Glasses_LensesController', 'fa-eye', 1, '2021-06-18 15:50:46', '2021-06-18 15:57:05'),
(18, 'Sunglasses', 'Sunglasses', 'sunglasses', 'name', 'Sunglass', 'SunglassesController', 'fa-eye', 1, '2021-06-18 16:13:17', '2021-06-18 16:25:27'),
(19, 'Users_Credentials', 'Users_Credentials', 'users_credentials', 'name', 'Users_Credential', 'Users_CredentialsController', 'fa-user', 1, '2021-06-18 16:32:12', '2021-06-18 16:42:08'),
(22, 'Payment_Methods', 'Payment_Methods', 'payment_methods', 'name', 'Payment_Method', 'Payment_MethodsController', 'fa-credit-card', 1, '2021-06-20 18:24:40', '2021-06-20 18:25:13'),
(23, 'Invoice_Types', 'Invoice_Types', 'invoice_types', 'name', 'Invoice_Type', 'Invoice_TypesController', 'fa-circle-thin', 1, '2021-06-20 20:03:17', '2021-06-20 20:04:02'),
(24, 'Branch_Employees', 'Branch_Employees', 'branch_employees', 'branch_id', 'Branch_Employee', 'Branch_EmployeesController', 'fa-slideshare', 1, '2021-06-22 22:36:30', '2021-06-22 22:37:57');

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
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2021-02-10 14:09:48', '2021-02-10 14:09:48'),
(51, 'name', 'Name', 10, 7, 0, '', 0, 256, 1, '[\"RayBan\"]', 0, '2021-06-18 12:42:27', '2021-06-18 12:42:27'),
(52, 'code', 'Code', 10, 19, 0, '', 0, 256, 1, '', 0, '2021-06-18 12:43:13', '2021-06-18 12:43:13'),
(53, 'date_of_purchase', 'Date Of Purchase', 10, 4, 0, '', 0, 0, 1, '', 0, '2021-06-18 12:43:58', '2021-06-18 12:43:58'),
(54, 'frame_type', 'Frame Type', 10, 7, 0, '', 0, 0, 0, '[\"Rimless\",\"Semi-Rimless\",\"Low-Bridge\",\"Full-Rimmed\",\"Wire\"]', 0, '2021-06-18 12:46:25', '2021-06-18 12:46:25'),
(55, 'name', 'Name', 11, 16, 0, '', 0, 256, 1, '', 0, '2021-06-18 13:36:59', '2021-06-18 13:36:59'),
(56, 'date_of_birth', 'Date Of Birth', 11, 4, 0, '', 0, 0, 1, '', 0, '2021-06-18 13:37:40', '2021-06-18 13:37:40'),
(57, 'gender', 'Gender', 11, 7, 0, '', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2021-06-18 13:38:16', '2021-06-18 13:38:16'),
(58, 'email', 'Email', 11, 8, 1, '', 0, 256, 1, '', 0, '2021-06-18 13:38:39', '2021-06-18 13:38:39'),
(59, 'address', 'Address', 11, 1, 0, '', 0, 256, 0, '', 0, '2021-06-18 13:39:03', '2021-06-18 13:39:03'),
(60, 'mobile', 'Mobile', 11, 14, 1, '', 0, 20, 1, '', 0, '2021-06-18 13:39:34', '2021-06-18 13:39:34'),
(61, 'image', 'Image', 11, 12, 0, '', 0, 0, 0, '', 0, '2021-06-18 13:39:50', '2021-06-18 13:39:50'),
(62, 'insurance_id_image', 'Insurance ID', 11, 12, 0, '', 0, 0, 0, '', 0, '2021-06-18 13:41:11', '2021-06-22 21:11:17'),
(63, 'left_axls', 'Left AXLS', 11, 10, 0, '', 0, 11, 0, '', 0, '2021-06-18 13:42:40', '2021-06-18 13:44:58'),
(64, 'right_axls', 'Right AXLS', 11, 10, 0, '', 0, 11, 0, '', 0, '2021-06-18 13:43:02', '2021-06-18 13:45:22'),
(65, 'left_sph', 'Left SPH', 11, 10, 0, '', 0, 11, 0, '', 0, '2021-06-18 13:46:47', '2021-06-18 13:46:47'),
(66, 'right_sph', 'Right SPH', 11, 10, 0, '', 0, 11, 0, '', 0, '2021-06-18 13:47:13', '2021-06-18 13:47:13'),
(67, 'left_cyl', 'Left CYL', 11, 10, 0, '', 0, 11, 0, '', 0, '2021-06-18 13:47:36', '2021-06-18 13:47:36'),
(68, 'right_cyl', 'Right CYL', 11, 10, 0, '', 0, 11, 0, '', 0, '2021-06-18 13:48:01', '2021-06-18 13:48:01'),
(69, 'LPD', 'LPD', 11, 10, 0, '', 0, 11, 0, '', 0, '2021-06-18 13:49:32', '2021-06-18 13:50:09'),
(70, 'name', 'Name', 12, 16, 1, '', 0, 256, 1, '', 1, '2021-06-18 14:08:49', '2021-06-18 14:08:49'),
(71, 'address', 'Address', 12, 1, 0, '', 0, 256, 1, '', 2, '2021-06-18 14:09:02', '2021-06-18 14:09:02'),
(72, 'email', 'Email', 12, 8, 0, '', 0, 256, 1, '', 3, '2021-06-18 14:09:14', '2021-06-18 14:10:54'),
(73, 'mobile', 'Mobile', 12, 14, 0, '', 0, 20, 1, '', 4, '2021-06-18 14:09:37', '2021-06-18 14:11:01'),
(74, 'phone', 'Phone', 12, 14, 0, '', 0, 20, 0, '', 6, '2021-06-18 14:09:57', '2021-06-18 14:12:22'),
(75, 'alternative_mobile', 'Alternative Mobile', 12, 14, 0, '', 0, 20, 0, '', 5, '2021-06-18 14:10:34', '2021-06-18 14:11:18'),
(76, 'opened_at', 'Opened At', 12, 4, 0, '', 0, 0, 1, '', 7, '2021-06-18 14:12:17', '2021-06-18 14:12:17'),
(77, 'name', 'Name', 13, 16, 1, '', 0, 256, 1, '', 0, '2021-06-18 14:19:53', '2021-06-18 14:19:53'),
(78, 'address', 'Address', 13, 1, 0, '', 0, 256, 1, '', 0, '2021-06-18 14:20:05', '2021-06-18 14:20:05'),
(79, 'email', 'Email', 13, 8, 1, '', 0, 256, 1, '', 0, '2021-06-18 14:20:22', '2021-06-18 14:20:22'),
(80, 'mobile', 'Mobile', 13, 14, 1, '', 0, 20, 1, '', 0, '2021-06-18 14:20:38', '2021-06-18 14:20:38'),
(81, 'name', 'Name', 14, 16, 0, '', 0, 256, 1, '', 1, '2021-06-18 14:25:08', '2021-06-18 14:25:08'),
(82, 'email', 'Email', 14, 8, 1, '', 0, 256, 0, '', 2, '2021-06-18 14:25:22', '2021-06-18 14:34:05'),
(83, 'gender', 'Gender', 14, 7, 0, '', 0, 0, 1, '[\"Male\",\"Female\"]', 3, '2021-06-18 14:25:55', '2021-06-18 14:25:55'),
(84, 'insurance_company_id', 'Insurance Company', 14, 7, 0, '', 0, 0, 1, '@insurance_companies', 5, '2021-06-18 14:32:40', '2021-06-18 14:32:40'),
(85, 'mobile', 'Mobile', 14, 14, 1, '', 0, 20, 1, '', 4, '2021-06-18 14:33:45', '2021-06-18 14:33:45'),
(86, 'discount_percetage', 'Discount Percentage', 13, 6, 0, '10.0', 0, 11, 0, '', 0, '2021-06-18 14:36:43', '2021-06-18 14:36:43'),
(88, 'name', 'Name', 15, 16, 1, '', 0, 256, 1, '', 0, '2021-06-18 14:44:51', '2021-06-18 14:44:51'),
(89, 'color', 'Color', 15, 16, 0, '', 0, 256, 1, '', 0, '2021-06-18 14:45:17', '2021-06-18 14:45:17'),
(90, 'quantity', 'Quantity', 15, 13, 0, '', 0, 11, 1, '', 0, '2021-06-18 14:46:17', '2021-06-18 14:46:17'),
(91, 'image', 'Image', 15, 12, 0, '', 0, 0, 1, '', 0, '2021-06-18 14:46:35', '2021-06-18 14:46:35'),
(92, 'name', 'Name', 16, 7, 0, '', 0, 0, 1, '[\"Fresh Look\",\"Bella\"]', 0, '2021-06-18 14:51:01', '2021-06-18 14:51:07'),
(93, 'code', 'Code', 16, 16, 1, '', 0, 256, 1, '', 0, '2021-06-18 14:51:47', '2021-06-18 14:51:47'),
(94, 'left_axls', 'Left AXLS', 16, 7, 0, '', 0, 0, 1, '[\"-1.0\",\"-.75\",\"-.50\",\"-.25\",\".25\",\".50\",\".75\",\"1.0\"]', 0, '2021-06-18 15:02:14', '2021-06-18 15:02:14'),
(95, 'right_axls', 'Right AXLS', 16, 7, 0, '', 0, 0, 1, '[\"-1.0\",\"-.75\",\"-.50\",\"-.25\",\".25\",\".50\",\".75\",\"1.0\"]', 0, '2021-06-18 15:02:14', '2021-06-18 15:02:14'),
(96, 'color', 'Color', 16, 7, 0, '', 0, 0, 1, '[\"Green\",\"Blue\",\"Grey\"]', 0, '2021-06-18 15:05:47', '2021-06-18 15:05:59'),
(97, 'date_of_purchase', 'Date Of Purchase', 16, 4, 0, '', 0, 0, 0, '', 0, '2021-06-18 15:06:43', '2021-06-18 15:06:43'),
(98, 'image', 'Image', 16, 12, 0, '', 0, 0, 1, '', 0, '2021-06-18 15:07:06', '2021-06-18 15:07:06'),
(99, 'actule_price', 'Actual Price', 16, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:07:37', '2021-06-18 15:07:37'),
(100, 'sale_price', 'Sale Price', 16, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:28:10', '2021-06-18 15:28:10'),
(101, 'quantity', 'Quantity', 16, 13, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:28:40', '2021-06-18 15:28:40'),
(102, 'seller', 'Seller', 16, 16, 0, '', 0, 256, 0, '', 0, '2021-06-18 15:32:27', '2021-06-18 15:32:27'),
(103, 'actule_price', 'Actual Price', 15, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:33:24', '2021-06-18 15:33:24'),
(104, 'sale_price', 'Sale Price', 15, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:33:41', '2021-06-18 15:33:41'),
(105, 'name', 'Name', 17, 7, 0, '', 0, 0, 1, '[\"Codac\"]', 0, '2021-06-18 15:51:27', '2021-06-18 15:51:27'),
(106, 'code', 'Code', 17, 16, 1, '', 0, 256, 1, '', 0, '2021-06-18 15:51:39', '2021-06-18 15:51:39'),
(107, 'right_axls', 'Right AXLS', 17, 7, 0, '', 0, 0, 1, '[\"-1.0\",\"-.75\",\"-.50\",\"-.25\",\".25\",\".50\",\".75\",\"1.0\"]', 0, '2021-06-18 15:52:24', '2021-06-18 15:52:59'),
(108, 'left_axls', 'Left AXLS', 17, 7, 0, '', 0, 0, 1, '[\"-1.0\",\"-.75\",\"-.50\",\"-.25\",\".25\",\".50\",\".75\",\"1.0\"]', 0, '2021-06-18 15:52:53', '2021-06-18 15:52:53'),
(109, 'date_of_purchase', 'Date Of Purchase', 17, 4, 0, '', 0, 0, 0, '', 0, '2021-06-18 15:53:14', '2021-06-18 15:53:14'),
(110, 'color', 'Color', 17, 7, 0, '', 0, 0, 0, '[\"color\"]', 0, '2021-06-18 15:53:36', '2021-06-18 15:53:36'),
(111, 'type', 'Type', 17, 15, 0, '', 0, 0, 0, '[\"Anti-Reflection\",\"Bluecut\"]', 0, '2021-06-18 15:55:54', '2021-06-18 15:55:54'),
(112, 'actule_price', 'Actual Price', 17, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:56:25', '2021-06-18 15:56:25'),
(113, 'sale_price', 'Sale Price', 17, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:56:35', '2021-06-18 15:56:35'),
(114, 'seller', 'Seller', 17, 16, 0, '', 0, 256, 0, '', 0, '2021-06-18 15:56:49', '2021-06-18 15:56:55'),
(115, 'quantity', 'Quantity', 17, 13, 0, '', 0, 11, 1, '', 0, '2021-06-18 15:58:07', '2021-06-18 15:58:07'),
(116, 'quantity', 'Quantity', 10, 13, 0, '', 0, 11, 1, '', 0, '2021-06-18 16:03:07', '2021-06-18 16:03:07'),
(117, 'actule_price', 'Actual Price', 10, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 16:03:27', '2021-06-18 16:04:09'),
(118, 'sale_price', 'Sale Price', 10, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 16:04:23', '2021-06-18 16:04:23'),
(119, 'color', 'Color', 10, 7, 0, '', 0, 0, 0, '[\"color\"]', 0, '2021-06-18 16:04:45', '2021-06-18 16:04:45'),
(120, 'gender', 'Gender', 10, 7, 0, '', 0, 0, 0, '[\"Male\",\"Female\"]', 0, '2021-06-18 16:05:12', '2021-06-18 16:05:12'),
(121, 'seller', 'Seller', 10, 16, 0, '', 0, 256, 0, '', 0, '2021-06-18 16:06:52', '2021-06-18 16:06:52'),
(122, 'image', 'Image', 10, 12, 0, '', 0, 0, 1, '', 0, '2021-06-18 16:07:13', '2021-06-18 16:07:13'),
(123, 'name', 'Name', 18, 7, 0, '', 0, 0, 0, '[\"name\"]', 0, '2021-06-18 16:14:33', '2021-06-18 16:14:33'),
(124, 'code', 'Code', 18, 16, 1, '', 0, 256, 1, '', 0, '2021-06-18 16:17:03', '2021-06-18 16:17:03'),
(125, 'date_of_purchase', 'Date Of Purchase', 18, 4, 0, '', 0, 0, 1, '', 0, '2021-06-18 16:17:23', '2021-06-18 16:17:23'),
(126, 'frame_type', 'Frame Type', 18, 7, 0, '', 0, 0, 0, '[\"ClubMaster\",\"Aviadors\",\"CatEye\",\"Wayfarer\",\"RetroRound\",\"Oversized Rectangle\"]', 0, '2021-06-18 16:18:03', '2021-06-18 16:21:09'),
(128, 'color', 'Color', 18, 7, 0, '', 0, 0, 0, '[\"color\"]', 0, '2021-06-18 16:22:47', '2021-06-18 16:22:47'),
(129, 'image', 'Image', 18, 12, 0, '', 0, 0, 1, '', 0, '2021-06-18 16:23:10', '2021-06-18 16:23:10'),
(130, 'actule_price', 'Actual Price', 18, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 16:23:31', '2021-06-18 16:23:31'),
(131, 'sale_price', 'Sale Price', 18, 6, 0, '', 0, 11, 1, '', 0, '2021-06-18 16:23:41', '2021-06-18 16:23:41'),
(132, 'seller', 'Seller', 18, 16, 0, '', 0, 256, 0, '', 0, '2021-06-18 16:23:53', '2021-06-18 16:23:53'),
(133, 'gender', 'Gender', 18, 7, 0, '', 0, 0, 0, '[\"Male\",\"Female\"]', 0, '2021-06-18 16:24:28', '2021-06-18 16:24:28'),
(134, 'quantity', 'Quantity', 18, 13, 0, '', 0, 11, 1, '', 0, '2021-06-18 16:26:04', '2021-06-18 16:26:04'),
(135, 'email', 'Email', 19, 8, 1, '', 0, 256, 1, '', 2, '2021-06-18 16:32:35', '2021-06-18 16:32:35'),
(136, 'password', 'Password', 19, 16, 0, '', 0, 256, 1, '', 3, '2021-06-18 16:33:14', '2021-06-18 16:33:14'),
(137, 'role', 'Role', 19, 16, 0, '', 0, 256, 1, '', 4, '2021-06-18 16:33:30', '2021-06-18 16:33:30'),
(138, 'name', 'Name', 19, 16, 0, '', 0, 256, 1, '', 1, '2021-06-18 16:34:08', '2021-06-18 16:34:08'),
(143, 'insurance_company_id', 'Insurance Company', 11, 7, 0, '', 0, 0, 0, '@insurance_companies', 0, '2021-06-20 17:50:41', '2021-06-20 17:50:41'),
(145, 'name', 'Name', 22, 16, 1, '', 0, 256, 1, '', 0, '2021-06-20 18:24:53', '2021-06-20 18:24:53'),
(146, 'name', 'Name', 23, 16, 1, '', 0, 256, 1, '', 0, '2021-06-20 20:03:38', '2021-06-20 20:03:38'),
(147, 'branch_id', 'Branch Name', 24, 7, 0, '', 0, 0, 1, '@branches', 0, '2021-06-22 22:37:03', '2021-06-22 22:37:03'),
(148, 'user_id', 'Employee Name', 24, 7, 0, '', 0, 0, 1, '@users', 0, '2021-06-22 22:37:42', '2021-06-22 22:37:42');

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
-- Table structure for table `optics`
--

CREATE TABLE `optics` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_of_purchase` date NOT NULL DEFAULT '2020-01-01',
  `frame_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `actule_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `sale_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `optics`
--

INSERT INTO `optics` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `code`, `date_of_purchase`, `frame_type`, `quantity`, `actule_price`, `sale_price`, `color`, `gender`, `seller`, `image`) VALUES
(1, '2021-06-29 12:51:40', '2021-06-24 17:49:38', '2021-06-29 12:51:40', 'RayBan', 'testing optics', '2021-06-02', 'Rimless', 150, '200.000', '150.000', 'color', 'Male', 'testing seller', 0),
(2, '2021-06-29 12:51:46', '2021-06-27 19:48:25', '2021-06-29 12:51:46', 'RayBan', 'testing code2', '2021-06-03', 'Rimless', 20, '2.000', '1.000', 'color', 'Male', 'testing seller', 0),
(3, '2021-06-29 12:53:38', '2021-06-27 19:49:26', '2021-06-29 12:53:38', 'RayBan', '02222', '2021-06-04', 'Rimless', 10, '10.000', '1.000', 'color', 'Male', 'testing seller', 0),
(4, NULL, '2021-06-27 19:51:14', '2021-06-27 19:51:14', 'RayBan', '01111', '2021-06-03', 'Rimless', 11, '11.000', '1.000', 'color', 'Male', 'testing seller', 0),
(5, NULL, '2021-06-29 12:54:15', '2021-06-29 12:54:15', 'RayBan', '02222', '2021-06-02', 'Rimless', 10, '50.000', '40.000', 'color', 'Male', 'testing seller', 0);

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
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, '2021-06-29 13:52:16', '2021-06-29 13:52:16', 'Cash'),
(2, NULL, '2021-06-29 13:52:35', '2021-06-29 13:52:35', 'Credit Card');

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
(30, 'SUPER_ADMIN', 'web', NULL, NULL, NULL),
(35, 'Optics-view', 'web', '2021-06-18 12:31:37', '2021-06-18 12:31:37', NULL),
(36, 'Optics-create', 'web', '2021-06-18 12:31:37', '2021-06-18 12:31:37', NULL),
(37, 'Optics-edit', 'web', '2021-06-18 12:31:37', '2021-06-18 12:31:37', NULL),
(38, 'Optics-delete', 'web', '2021-06-18 12:31:37', '2021-06-18 12:31:37', NULL),
(39, 'Clients-view', 'web', '2021-06-18 13:36:17', '2021-06-18 13:36:17', NULL),
(40, 'Clients-create', 'web', '2021-06-18 13:36:18', '2021-06-18 13:36:18', NULL),
(41, 'Clients-edit', 'web', '2021-06-18 13:36:18', '2021-06-18 13:36:18', NULL),
(42, 'Clients-delete', 'web', '2021-06-18 13:36:18', '2021-06-18 13:36:18', NULL),
(43, 'Branches-view', 'web', '2021-06-18 14:08:23', '2021-06-18 14:08:23', NULL),
(44, 'Branches-create', 'web', '2021-06-18 14:08:23', '2021-06-18 14:08:23', NULL),
(45, 'Branches-edit', 'web', '2021-06-18 14:08:23', '2021-06-18 14:08:23', NULL),
(46, 'Branches-delete', 'web', '2021-06-18 14:08:23', '2021-06-18 14:08:23', NULL),
(47, 'Insurance_Companies-view', 'web', '2021-06-18 14:19:36', '2021-06-18 14:19:36', NULL),
(48, 'Insurance_Companies-create', 'web', '2021-06-18 14:19:37', '2021-06-18 14:19:37', NULL),
(49, 'Insurance_Companies-edit', 'web', '2021-06-18 14:19:37', '2021-06-18 14:19:37', NULL),
(50, 'Insurance_Companies-delete', 'web', '2021-06-18 14:19:37', '2021-06-18 14:19:37', NULL),
(51, 'IC_Employees-view', 'web', '2021-06-18 14:23:41', '2021-06-18 14:23:41', NULL),
(52, 'IC_Employees-create', 'web', '2021-06-18 14:23:41', '2021-06-18 14:23:41', NULL),
(53, 'IC_Employees-edit', 'web', '2021-06-18 14:23:41', '2021-06-18 14:23:41', NULL),
(54, 'IC_Employees-delete', 'web', '2021-06-18 14:23:41', '2021-06-18 14:23:41', NULL),
(55, 'Covers-view', 'web', '2021-06-18 14:44:25', '2021-06-18 14:44:25', NULL),
(56, 'Covers-create', 'web', '2021-06-18 14:44:25', '2021-06-18 14:44:25', NULL),
(57, 'Covers-edit', 'web', '2021-06-18 14:44:25', '2021-06-18 14:44:25', NULL),
(58, 'Covers-delete', 'web', '2021-06-18 14:44:25', '2021-06-18 14:44:25', NULL),
(59, 'Lenses-view', 'web', '2021-06-18 14:49:39', '2021-06-18 14:49:39', NULL),
(60, 'Lenses-create', 'web', '2021-06-18 14:49:40', '2021-06-18 14:49:40', NULL),
(61, 'Lenses-edit', 'web', '2021-06-18 14:49:40', '2021-06-18 14:49:40', NULL),
(62, 'Lenses-delete', 'web', '2021-06-18 14:49:40', '2021-06-18 14:49:40', NULL),
(63, 'Glasses_Lenses-view', 'web', '2021-06-18 15:50:46', '2021-06-18 15:50:46', NULL),
(64, 'Glasses_Lenses-create', 'web', '2021-06-18 15:50:46', '2021-06-18 15:50:46', NULL),
(65, 'Glasses_Lenses-edit', 'web', '2021-06-18 15:50:46', '2021-06-18 15:50:46', NULL),
(66, 'Glasses_Lenses-delete', 'web', '2021-06-18 15:50:46', '2021-06-18 15:50:46', NULL),
(67, 'Sunglasses-view', 'web', '2021-06-18 16:13:17', '2021-06-18 16:13:17', NULL),
(68, 'Sunglasses-create', 'web', '2021-06-18 16:13:17', '2021-06-18 16:13:17', NULL),
(69, 'Sunglasses-edit', 'web', '2021-06-18 16:13:17', '2021-06-18 16:13:17', NULL),
(70, 'Sunglasses-delete', 'web', '2021-06-18 16:13:17', '2021-06-18 16:13:17', NULL),
(71, 'Users_Credentials-view', 'web', '2021-06-18 16:32:12', '2021-06-18 16:32:12', NULL),
(72, 'Users_Credentials-create', 'web', '2021-06-18 16:32:12', '2021-06-18 16:32:12', NULL),
(73, 'Users_Credentials-edit', 'web', '2021-06-18 16:32:12', '2021-06-18 16:32:12', NULL),
(74, 'Users_Credentials-delete', 'web', '2021-06-18 16:32:12', '2021-06-18 16:32:12', NULL),
(83, 'Payment_Methods-view', 'web', '2021-06-20 18:24:40', '2021-06-20 18:24:40', NULL),
(84, 'Payment_Methods-create', 'web', '2021-06-20 18:24:40', '2021-06-20 18:24:40', NULL),
(85, 'Payment_Methods-edit', 'web', '2021-06-20 18:24:41', '2021-06-20 18:24:41', NULL),
(86, 'Payment_Methods-delete', 'web', '2021-06-20 18:24:41', '2021-06-20 18:24:41', NULL),
(87, 'Invoice_Types-view', 'web', '2021-06-20 20:03:17', '2021-06-20 20:03:17', NULL),
(88, 'Invoice_Types-create', 'web', '2021-06-20 20:03:17', '2021-06-20 20:03:17', NULL),
(89, 'Invoice_Types-edit', 'web', '2021-06-20 20:03:17', '2021-06-20 20:03:17', NULL),
(90, 'Invoice_Types-delete', 'web', '2021-06-20 20:03:17', '2021-06-20 20:03:17', NULL),
(91, 'Branch_Employees-view', 'web', '2021-06-22 22:36:30', '2021-06-22 22:36:30', NULL),
(92, 'Branch_Employees-create', 'web', '2021-06-22 22:36:30', '2021-06-22 22:36:30', NULL),
(93, 'Branch_Employees-edit', 'web', '2021-06-22 22:36:30', '2021-06-22 22:36:30', NULL),
(94, 'Branch_Employees-delete', 'web', '2021-06-22 22:36:31', '2021-06-22 22:36:31', NULL);

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
(2, 1, 'ADMIN', 'web', NULL, '2021-02-13 14:02:28', NULL),
(4, 2, 'EMPLOYEE', 'web', '2021-06-22 19:39:14', '2021-06-22 19:39:14', NULL);

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
(1, 4),
(2, 1),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 4),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(14, 2),
(14, 4),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 4),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 4),
(27, 1),
(28, 1),
(29, 1),
(35, 1),
(35, 4),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(39, 4),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(43, 4),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 4),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(51, 4),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(55, 4),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(59, 4),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(63, 4),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 4),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(71, 4),
(72, 1),
(73, 1),
(74, 1),
(83, 1),
(83, 4),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(87, 2),
(87, 4),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1);

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
(129, 3, 49, 'readonly', '2021-02-13 15:08:09', '2021-02-13 15:08:09'),
(134, 1, 51, 'write', '2021-06-18 12:42:27', '2021-06-18 12:42:27'),
(135, 1, 52, 'write', '2021-06-18 12:43:13', '2021-06-18 12:43:13'),
(136, 1, 53, 'write', '2021-06-18 12:43:58', '2021-06-18 12:43:58'),
(137, 1, 54, 'write', '2021-06-18 12:46:25', '2021-06-18 12:46:25'),
(138, 1, 55, 'write', '2021-06-18 13:36:59', '2021-06-18 13:36:59'),
(139, 1, 56, 'write', '2021-06-18 13:37:40', '2021-06-18 13:37:40'),
(140, 1, 57, 'write', '2021-06-18 13:38:16', '2021-06-18 13:38:16'),
(141, 1, 58, 'write', '2021-06-18 13:38:39', '2021-06-18 13:38:39'),
(142, 1, 59, 'write', '2021-06-18 13:39:03', '2021-06-18 13:39:03'),
(143, 1, 60, 'write', '2021-06-18 13:39:34', '2021-06-18 13:39:34'),
(144, 1, 61, 'write', '2021-06-18 13:39:50', '2021-06-18 13:39:50'),
(145, 1, 62, 'write', '2021-06-18 13:41:11', '2021-06-18 13:41:11'),
(146, 1, 63, 'write', '2021-06-18 13:42:40', '2021-06-18 13:42:40'),
(147, 1, 64, 'write', '2021-06-18 13:43:02', '2021-06-18 13:43:02'),
(148, 1, 65, 'write', '2021-06-18 13:46:47', '2021-06-18 13:46:47'),
(149, 1, 66, 'write', '2021-06-18 13:47:13', '2021-06-18 13:47:13'),
(150, 1, 67, 'write', '2021-06-18 13:47:36', '2021-06-18 13:47:36'),
(151, 1, 68, 'write', '2021-06-18 13:48:01', '2021-06-18 13:48:01'),
(152, 1, 69, 'readonly', '2021-06-18 13:49:32', '2021-06-18 13:49:32'),
(153, 1, 70, 'write', '2021-06-18 14:08:49', '2021-06-18 14:08:49'),
(154, 1, 71, 'write', '2021-06-18 14:09:02', '2021-06-18 14:09:02'),
(155, 1, 72, 'write', '2021-06-18 14:09:14', '2021-06-18 14:09:14'),
(156, 1, 73, 'write', '2021-06-18 14:09:37', '2021-06-18 14:09:37'),
(157, 1, 74, 'write', '2021-06-18 14:09:57', '2021-06-18 14:09:57'),
(158, 1, 75, 'write', '2021-06-18 14:10:34', '2021-06-18 14:10:34'),
(159, 1, 76, 'write', '2021-06-18 14:12:18', '2021-06-18 14:12:18'),
(160, 1, 77, 'write', '2021-06-18 14:19:53', '2021-06-18 14:19:53'),
(161, 1, 78, 'write', '2021-06-18 14:20:05', '2021-06-18 14:20:05'),
(162, 1, 79, 'write', '2021-06-18 14:20:22', '2021-06-18 14:20:22'),
(163, 1, 80, 'write', '2021-06-18 14:20:38', '2021-06-18 14:20:38'),
(164, 1, 81, 'write', '2021-06-18 14:25:08', '2021-06-18 14:25:08'),
(165, 1, 82, 'write', '2021-06-18 14:25:22', '2021-06-18 14:25:22'),
(166, 1, 83, 'write', '2021-06-18 14:25:55', '2021-06-18 14:25:55'),
(167, 1, 84, 'write', '2021-06-18 14:32:41', '2021-06-18 14:32:41'),
(168, 1, 85, 'write', '2021-06-18 14:33:45', '2021-06-18 14:33:45'),
(169, 1, 86, 'write', '2021-06-18 14:36:43', '2021-06-18 14:36:43'),
(170, 1, 88, 'write', '2021-06-18 14:44:51', '2021-06-18 14:44:51'),
(171, 1, 89, 'write', '2021-06-18 14:45:17', '2021-06-18 14:45:17'),
(172, 1, 90, 'write', '2021-06-18 14:46:17', '2021-06-18 14:46:17'),
(173, 1, 91, 'write', '2021-06-18 14:46:35', '2021-06-18 14:46:35'),
(174, 1, 92, 'write', '2021-06-18 14:51:01', '2021-06-18 14:51:01'),
(175, 1, 93, 'write', '2021-06-18 14:51:47', '2021-06-18 14:51:47'),
(176, 1, 94, 'write', '2021-06-18 15:02:14', '2021-06-18 15:02:14'),
(177, 1, 96, 'write', '2021-06-18 15:05:47', '2021-06-18 15:05:47'),
(178, 1, 97, 'write', '2021-06-18 15:06:43', '2021-06-18 15:06:43'),
(179, 1, 98, 'write', '2021-06-18 15:07:06', '2021-06-18 15:07:06'),
(180, 1, 99, 'write', '2021-06-18 15:07:37', '2021-06-18 15:07:37'),
(181, 1, 100, 'write', '2021-06-18 15:28:10', '2021-06-18 15:28:10'),
(182, 1, 101, 'write', '2021-06-18 15:28:40', '2021-06-18 15:28:40'),
(183, 1, 102, 'write', '2021-06-18 15:32:27', '2021-06-18 15:32:27'),
(184, 1, 95, 'write', '2021-06-18 15:32:46', '2021-06-18 15:32:46'),
(185, 1, 103, 'write', '2021-06-18 15:33:24', '2021-06-18 15:33:24'),
(186, 1, 104, 'write', '2021-06-18 15:33:41', '2021-06-18 15:33:41'),
(187, 1, 105, 'write', '2021-06-18 15:51:27', '2021-06-18 15:51:27'),
(188, 1, 106, 'write', '2021-06-18 15:51:39', '2021-06-18 15:51:39'),
(189, 1, 107, 'write', '2021-06-18 15:52:24', '2021-06-18 15:52:24'),
(190, 1, 108, 'write', '2021-06-18 15:52:53', '2021-06-18 15:52:53'),
(191, 1, 109, 'write', '2021-06-18 15:53:14', '2021-06-18 15:53:14'),
(192, 1, 110, 'write', '2021-06-18 15:53:36', '2021-06-18 15:53:36'),
(193, 1, 111, 'write', '2021-06-18 15:55:54', '2021-06-18 15:55:54'),
(194, 1, 112, 'write', '2021-06-18 15:56:25', '2021-06-18 15:56:25'),
(195, 1, 113, 'write', '2021-06-18 15:56:35', '2021-06-18 15:56:35'),
(196, 1, 114, 'write', '2021-06-18 15:56:49', '2021-06-18 15:56:49'),
(197, 1, 115, 'write', '2021-06-18 15:58:07', '2021-06-18 15:58:07'),
(198, 1, 116, 'write', '2021-06-18 16:03:07', '2021-06-18 16:03:07'),
(199, 1, 117, 'write', '2021-06-18 16:03:27', '2021-06-18 16:03:27'),
(200, 1, 118, 'write', '2021-06-18 16:04:23', '2021-06-18 16:04:23'),
(201, 1, 119, 'write', '2021-06-18 16:04:45', '2021-06-18 16:04:45'),
(202, 1, 120, 'write', '2021-06-18 16:05:12', '2021-06-18 16:05:12'),
(203, 1, 121, 'write', '2021-06-18 16:06:52', '2021-06-18 16:06:52'),
(204, 1, 122, 'write', '2021-06-18 16:07:13', '2021-06-18 16:07:13'),
(205, 1, 123, 'write', '2021-06-18 16:14:33', '2021-06-18 16:14:33'),
(206, 1, 124, 'write', '2021-06-18 16:17:03', '2021-06-18 16:17:03'),
(207, 1, 125, 'write', '2021-06-18 16:17:23', '2021-06-18 16:17:23'),
(208, 1, 126, 'write', '2021-06-18 16:18:03', '2021-06-18 16:18:03'),
(210, 1, 128, 'write', '2021-06-18 16:22:47', '2021-06-18 16:22:47'),
(211, 1, 129, 'write', '2021-06-18 16:23:11', '2021-06-18 16:23:11'),
(212, 1, 130, 'write', '2021-06-18 16:23:31', '2021-06-18 16:23:31'),
(213, 1, 131, 'write', '2021-06-18 16:23:41', '2021-06-18 16:23:41'),
(214, 1, 132, 'write', '2021-06-18 16:23:53', '2021-06-18 16:23:53'),
(215, 1, 133, 'write', '2021-06-18 16:24:28', '2021-06-18 16:24:28'),
(216, 1, 134, 'write', '2021-06-18 16:26:04', '2021-06-18 16:26:04'),
(217, 1, 135, 'write', '2021-06-18 16:32:35', '2021-06-18 16:32:35'),
(218, 1, 136, 'write', '2021-06-18 16:33:14', '2021-06-18 16:33:14'),
(219, 1, 137, 'write', '2021-06-18 16:33:30', '2021-06-18 16:33:30'),
(220, 1, 138, 'write', '2021-06-18 16:34:08', '2021-06-18 16:34:08'),
(221, 2, 138, 'invisible', '2021-06-18 16:45:39', '2021-06-18 16:45:39'),
(222, 2, 135, 'invisible', '2021-06-18 16:45:39', '2021-06-18 16:45:39'),
(223, 2, 136, 'invisible', '2021-06-18 16:45:39', '2021-06-18 16:45:39'),
(224, 2, 137, 'invisible', '2021-06-18 16:45:39', '2021-06-18 16:45:39'),
(229, 1, 143, 'write', '2021-06-20 17:50:41', '2021-06-20 17:50:41'),
(231, 1, 145, 'write', '2021-06-20 18:24:53', '2021-06-20 18:24:53'),
(232, 1, 146, 'write', '2021-06-20 20:03:39', '2021-06-20 20:03:39'),
(233, 4, 1, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(234, 4, 2, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(235, 4, 3, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(236, 4, 4, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(237, 4, 5, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(238, 4, 6, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(239, 4, 7, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(240, 4, 8, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(241, 4, 9, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(242, 4, 10, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(243, 4, 11, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(244, 4, 12, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(245, 4, 13, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(246, 4, 14, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(247, 4, 15, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(248, 4, 16, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(249, 4, 17, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(250, 4, 18, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(251, 4, 19, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(252, 4, 20, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(253, 4, 21, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(254, 4, 22, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(255, 4, 23, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(256, 4, 24, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(257, 4, 25, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(258, 4, 26, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(259, 4, 27, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(260, 4, 28, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(261, 4, 29, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(262, 4, 30, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(263, 4, 33, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(264, 4, 35, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(265, 4, 36, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(266, 4, 37, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(267, 4, 38, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(268, 4, 39, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(269, 4, 40, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(270, 4, 41, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(271, 4, 42, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(272, 4, 43, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(273, 4, 44, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(274, 4, 45, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(275, 4, 49, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(276, 4, 51, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(277, 4, 52, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(278, 4, 53, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(279, 4, 54, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(280, 4, 116, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(281, 4, 117, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(282, 4, 118, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(283, 4, 119, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(284, 4, 120, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(285, 4, 121, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(286, 4, 122, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(287, 4, 55, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(288, 4, 56, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(289, 4, 57, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(290, 4, 58, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(291, 4, 59, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(292, 4, 60, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(293, 4, 61, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(294, 4, 62, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(295, 4, 63, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(296, 4, 64, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(297, 4, 65, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(298, 4, 66, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(299, 4, 67, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(300, 4, 68, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(301, 4, 69, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(302, 4, 143, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(303, 4, 70, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(304, 4, 71, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(305, 4, 72, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(306, 4, 73, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(307, 4, 75, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(308, 4, 74, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(309, 4, 76, 'readonly', '2021-06-22 19:39:14', '2021-06-22 19:39:14'),
(310, 4, 77, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(311, 4, 78, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(312, 4, 79, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(313, 4, 80, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(314, 4, 86, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(315, 4, 81, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(316, 4, 82, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(317, 4, 83, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(318, 4, 85, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(319, 4, 84, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(320, 4, 88, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(321, 4, 89, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(322, 4, 90, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(323, 4, 91, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(324, 4, 103, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(325, 4, 104, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(326, 4, 92, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(327, 4, 93, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(328, 4, 94, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(329, 4, 95, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(330, 4, 96, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(331, 4, 97, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(332, 4, 98, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(333, 4, 99, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(334, 4, 100, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(335, 4, 101, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(336, 4, 102, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(337, 4, 105, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(338, 4, 106, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(339, 4, 107, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(340, 4, 108, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(341, 4, 109, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(342, 4, 110, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(343, 4, 111, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(344, 4, 112, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(345, 4, 113, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(346, 4, 114, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(347, 4, 115, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(348, 4, 123, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(349, 4, 124, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(350, 4, 125, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(351, 4, 126, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(352, 4, 128, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(353, 4, 129, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(354, 4, 130, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(355, 4, 131, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(356, 4, 132, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(357, 4, 133, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(358, 4, 134, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(359, 4, 138, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(360, 4, 135, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(361, 4, 136, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(362, 4, 137, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(363, 4, 145, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(364, 4, 146, 'readonly', '2021-06-22 19:39:15', '2021-06-22 19:39:15'),
(365, 2, 146, 'invisible', '2021-06-22 19:40:20', '2021-06-22 19:40:20'),
(366, 2, 92, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(367, 2, 93, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(368, 2, 94, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(369, 2, 95, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(370, 2, 96, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(371, 2, 97, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(372, 2, 98, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(373, 2, 99, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(374, 2, 100, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(375, 2, 101, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(376, 2, 102, 'invisible', '2021-06-22 19:54:40', '2021-06-22 19:54:40'),
(377, 1, 147, 'write', '2021-06-22 22:37:03', '2021-06-22 22:37:03'),
(378, 1, 148, 'write', '2021-06-22 22:37:42', '2021-06-22 22:37:42');

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
-- Table structure for table `sunglasses`
--

CREATE TABLE `sunglasses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date_of_purchase` date NOT NULL DEFAULT '2020-01-01',
  `frame_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int(11) NOT NULL DEFAULT 1,
  `actule_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `sale_price` decimal(15,3) NOT NULL DEFAULT 0.000,
  `seller` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sunglasses`
--

INSERT INTO `sunglasses` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `code`, `date_of_purchase`, `frame_type`, `color`, `image`, `actule_price`, `sale_price`, `seller`, `gender`, `quantity`) VALUES
(1, '2021-06-29 12:52:16', '2021-06-24 01:02:49', '2021-06-29 12:52:16', 'name', 'askldjfn4', '2021-06-11', 'ClubMaster', 'color', 0, '1500.000', '1450.000', 'testing seller', 'Male', 450),
(2, NULL, '2021-06-29 12:53:02', '2021-06-29 12:53:02', 'name', '03333', '2021-06-10', 'ClubMaster', 'color', 0, '10.000', '5.000', 'testing seller', 'Male', 55);

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

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Screenshot from 2021-05-23 22-18-59.png', '/run/media/aliym/storage/MV/HLA/storage/uploads/2021-06-18-160359-Screenshot from 2021-05-23 22-18-59.png', 'png', 'Screenshot from 2021-05-23 22-18-59', 1, 'vs6insm3xyppegow8a0j', 1, NULL, '2021-06-18 14:03:59', '2021-06-18 14:03:59'),
(2, 'Screenshot from 2021-05-24 15-03-44.png', '/run/media/aliym/storage/MV/HLA/storage/uploads/2021-06-18-160359-Screenshot from 2021-05-24 15-03-44.png', 'png', 'Screenshot from 2021-05-24 15-03-44', 1, 'okoh02ygpjrrdlopspxe', 1, NULL, '2021-06-18 14:03:59', '2021-06-18 14:03:59'),
(3, 'pin.png', '/run/media/aliym/storage/my-files/CODE/HLA/storage/uploads/2021-06-29-145505-pin.png', 'png', 'pin', 1, 'yh2dgluo7atk85gb91ll', 1, NULL, '2021-06-29 12:55:06', '2021-06-29 12:55:06');

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
(1, 'user 1', 1, 'admin@admin.com', '$2y$10$RKO7m.49QG8K.0GQn.d3FepOQJQQTmCvRXxMm8QKCdutZHFhEf7RG', 'Employee', NULL, NULL, '2021-02-10 14:10:32', '2021-02-10 14:10:32'),
(2, 'user 2', 2, 'admin1@admin.com', '$2y$10$YQ.Vw4nDW6mXKyNSgZeY3..Z4uslvVGdwJ6GqMRIFjHiWDPkJDp/.', 'Employee', NULL, NULL, '2021-02-13 15:30:16', '2021-02-13 15:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `users_credentials`
--

CREATE TABLE `users_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `branches_phone_unique` (`phone`),
  ADD UNIQUE KEY `branches_alternative_mobile_unique` (`alternative_mobile`);

--
-- Indexes for table `branch_employees`
--
ALTER TABLE `branch_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_employees_branch_id_foreign` (`branch_id`),
  ADD KEY `branch_employees_user_id_foreign` (`user_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_mobile_unique` (`mobile`),
  ADD KEY `clients_insurance_company_id_foreign` (`insurance_company_id`);

--
-- Indexes for table `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `glasses_lenses`
--
ALTER TABLE `glasses_lenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ic_employees`
--
ALTER TABLE `ic_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ic_employees_mobile_unique` (`mobile`),
  ADD KEY `ic_employees_insurance_company_id_foreign` (`insurance_company_id`);

--
-- Indexes for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `insurance_companies_mobile_unique` (`mobile`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_types`
--
ALTER TABLE `invoice_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `lenses`
--
ALTER TABLE `lenses`
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
-- Indexes for table `optics`
--
ALTER TABLE `optics`
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
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sunglasses`
--
ALTER TABLE `sunglasses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users_credentials`
--
ALTER TABLE `users_credentials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch_employees`
--
ALTER TABLE `branch_employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `covers`
--
ALTER TABLE `covers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `glasses_lenses`
--
ALTER TABLE `glasses_lenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ic_employees`
--
ALTER TABLE `ic_employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_types`
--
ALTER TABLE `invoice_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lenses`
--
ALTER TABLE `lenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `optics`
--
ALTER TABLE `optics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sunglasses`
--
ALTER TABLE `sunglasses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_credentials`
--
ALTER TABLE `users_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch_employees`
--
ALTER TABLE `branch_employees`
  ADD CONSTRAINT `branch_employees_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `branch_employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_insurance_company_id_foreign` FOREIGN KEY (`insurance_company_id`) REFERENCES `insurance_companies` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `ic_employees`
--
ALTER TABLE `ic_employees`
  ADD CONSTRAINT `ic_employees_insurance_company_id_foreign` FOREIGN KEY (`insurance_company_id`) REFERENCES `insurance_companies` (`id`);

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
