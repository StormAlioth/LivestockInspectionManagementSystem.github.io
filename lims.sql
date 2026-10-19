-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2026 at 06:08 AM
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
-- Database: `lims`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(40) NOT NULL,
  `entity_type` varchar(30) DEFAULT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`log_id`, `user_id`, `action`, `entity_type`, `entity_id`, `details`, `ip_address`, `created_at`) VALUES
(1, 1, 'LOGIN', 'users', 1, NULL, '127.0.0.1', '2026-10-15 13:36:56'),
(2, 2, 'LOGIN', 'users', 2, NULL, '127.0.0.1', '2026-10-15 13:36:56'),
(3, 1, 'CREATE_FARM', 'farms', 1, '{\"farm_name\":\"Ladang Ternakan Berkat\"}', '127.0.0.1', '2026-08-17 13:36:56'),
(4, 1, 'UPDATE_FARM', 'farms', 2, '{\"field\":\"address\",\"old\":\"Batu 5, Kodiang\",\"new\":\"Batu 5, Jalan Kodiang, 06100 Kodiang, Kedah\"}', '127.0.0.1', '2026-09-26 13:36:56'),
(5, 1, 'DEACTIVATE_USER', 'users', 7, '{\"reason\":\"Left the farm\"}', '127.0.0.1', '2026-09-16 13:36:56'),
(6, 4, 'DELETE_LIVESTOCK', 'livestock', 12, '{\"tag_code\":\"GOAT-099\",\"reason\":\"Sold\"}', '127.0.0.1', '2026-09-26 13:36:56'),
(7, NULL, 'LOGIN_FAILED', NULL, NULL, '{\"login\":\"ahmad\"}', '127.0.0.1', '2026-10-17 04:39:09'),
(8, NULL, 'LOGIN_FAILED', NULL, NULL, '{\"login\":\"nobody19618\"}', '127.0.0.1', '2026-10-17 04:39:09'),
(9, 2, 'LOGIN', 'users', 2, NULL, '127.0.0.1', '2026-10-17 04:39:09'),
(10, 2, 'LOGOUT', 'users', 2, NULL, '127.0.0.1', '2026-10-17 04:39:09'),
(11, 2, 'LOGIN', 'users', 2, NULL, '127.0.0.1', '2026-10-17 04:39:10'),
(12, 1, 'LOGIN', 'users', 1, NULL, '127.0.0.1', '2026-10-17 04:39:10'),
(13, 7, 'LOGIN_BLOCKED_INACTIVE', 'users', 7, NULL, '127.0.0.1', '2026-10-17 04:39:10'),
(14, 6, 'LOGIN', 'users', 6, NULL, '127.0.0.1', '2026-10-17 04:39:10'),
(15, 2, 'LOGIN', 'users', 2, NULL, '127.0.0.1', '2026-10-17 04:45:58'),
(16, NULL, 'LOGIN_FAILED', NULL, NULL, '{\"login\":\"admin\"}', '127.0.0.1', '2026-10-17 04:50:12'),
(17, 1, 'LOGIN', 'users', 1, NULL, '127.0.0.1', '2026-10-17 04:50:36'),
(18, 6, 'LOGIN', 'users', 6, NULL, '127.0.0.1', '2026-10-17 04:51:02'),
(19, 7, 'LOGIN_BLOCKED_INACTIVE', 'users', 7, NULL, '127.0.0.1', '2026-10-17 04:51:42'),
(20, 8, 'REGISTER', 'users', 8, NULL, '127.0.0.1', '2026-10-17 04:53:02'),
(21, NULL, 'LOGIN_FAILED', NULL, NULL, '{\"login\":\"Meh\"}', '127.0.0.1', '2026-10-17 04:53:43'),
(22, 8, 'LOGIN', 'users', 8, NULL, '127.0.0.1', '2026-10-17 04:53:58'),
(23, 8, 'LOGOUT', 'users', 8, NULL, '127.0.0.1', '2026-10-17 04:55:59'),
(24, 8, 'LOGIN', 'users', 8, NULL, '127.0.0.1', '2026-10-17 04:57:17'),
(25, 2, 'LOGIN', 'users', 2, NULL, '127.0.0.1', '2026-10-17 11:29:55'),
(26, 1, 'LOGIN', 'users', 1, NULL, '127.0.0.1', '2026-10-17 11:29:56'),
(27, 1, 'LOGIN', 'users', 1, NULL, '127.0.0.1', '2026-10-17 11:33:27'),
(28, 1, 'UPDATE_FARM', 'farms', 3, '{\"changed\":{\"farm_name\":[\"Ladang Ayam Maju Jaya\",\"Ladang Ayam Maju Jayaya\"]}}', '127.0.0.1', '2026-10-17 11:34:01'),
(29, 1, 'UPDATE_FARM', 'farms', 3, '{\"changed\":{\"farm_name\":[\"Ladang Ayam Maju Jayaya\",\"Ladang Ayam Maju Jaya\"]}}', '127.0.0.1', '2026-10-17 11:34:48'),
(30, 1, 'UPDATE_USER', 'users', 6, '{\"changed\":{\"farm_id\":[null,3]},\"password_reset\":false}', '127.0.0.1', '2026-10-17 11:36:09'),
(31, 1, 'CREATE_FARM', 'farms', 4, '{\"farm_name\":\"Audi Dream Farm\"}', '127.0.0.1', '2026-10-17 12:02:06'),
(32, 1, 'UPDATE_USER', 'users', 8, '{\"changed\":{\"farm_id\":[null,4]},\"password_reset\":false}', '127.0.0.1', '2026-10-17 12:02:44'),
(33, 1, 'LOGOUT', 'users', 1, NULL, '127.0.0.1', '2026-10-17 12:04:05'),
(34, NULL, 'LOGIN_FAILED', NULL, NULL, '{\"login\":\"Meh\"}', '127.0.0.1', '2026-10-17 12:04:15'),
(35, 8, 'LOGIN', 'users', 8, NULL, '127.0.0.1', '2026-10-17 12:04:26'),
(36, 8, 'LOGOUT', 'users', 8, NULL, '127.0.0.1', '2026-10-17 12:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `disease_cases`
--

CREATE TABLE `disease_cases` (
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `livestock_id` bigint(20) UNSIGNED NOT NULL,
  `reported_by` bigint(20) UNSIGNED NOT NULL,
  `disease_name` varchar(150) NOT NULL,
  `reported_on` date NOT NULL,
  `severity` enum('MILD','MODERATE','SEVERE') NOT NULL,
  `treatment_method` text NOT NULL,
  `status` enum('WARNING','UNDER_TREATMENT','RECOVERED') NOT NULL DEFAULT 'WARNING',
  `recovered_on` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ;

--
-- Dumping data for table `disease_cases`
--

INSERT INTO `disease_cases` (`case_id`, `livestock_id`, `reported_by`, `disease_name`, `reported_on`, `severity`, `treatment_method`, `status`, `recovered_on`, `notes`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Mastitis', '2026-10-10', 'MODERATE', 'Intramammary antibiotics, improve milking hygiene', 'WARNING', NULL, 'Awaiting vet visit', '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(2, 8, 4, 'Foot rot', '2026-10-04', 'MODERATE', 'Hoof trimming, zinc sulphate foot bath, antibiotics', 'UNDER_TREATMENT', NULL, 'Improving slowly', '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(3, 14, 5, 'Newcastle Disease', '2026-10-12', 'SEVERE', 'Isolation, supportive care, vet consulted', 'UNDER_TREATMENT', NULL, 'Whole batch quarantined', '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(4, 3, 3, 'Bovine ephemeral fever', '2026-09-06', 'MILD', 'Rest and anti-inflammatory', 'RECOVERED', '2026-09-14', NULL, '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(5, 9, 4, 'Diarrhoea', '2026-08-17', 'MILD', 'Oral electrolytes, feed change', 'RECOVERED', '2026-08-23', NULL, '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(6, 13, 5, 'Respiratory distress', '2026-09-21', 'MODERATE', 'Ventilation improved, antibiotics in water', 'RECOVERED', '2026-10-01', NULL, '2026-10-16 13:36:56', '2026-10-16 13:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `disease_case_attachments`
--

CREATE TABLE `disease_case_attachments` (
  `attachment_id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `storage_path` varchar(500) NOT NULL,
  `mime_type` enum('image/png','image/jpeg') NOT NULL,
  `file_size_bytes` int(10) UNSIGNED NOT NULL,
  `uploaded_by` bigint(20) UNSIGNED NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `disease_case_attachments`
--

INSERT INTO `disease_case_attachments` (`attachment_id`, `case_id`, `original_filename`, `storage_path`, `mime_type`, `file_size_bytes`, `uploaded_by`, `uploaded_at`) VALUES
(1, 1, 'udder_left.jpg', 'uploads/cases/1/udder_left.jpg', 'image/jpeg', 482113, 2, '2026-10-16 13:36:56'),
(2, 1, 'udder_right.png', 'uploads/cases/1/udder_right.png', 'image/png', 611942, 2, '2026-10-16 13:36:56'),
(3, 2, 'hoof_closeup.jpg', 'uploads/cases/2/hoof_closeup.jpg', 'image/jpeg', 398420, 4, '2026-10-16 13:36:56'),
(4, 3, 'coop_b_birds.jpg', 'uploads/cases/3/coop_b_birds.jpg', 'image/jpeg', 720044, 5, '2026-10-16 13:36:56'),
(5, 3, 'dropping.jpg', 'uploads/cases/3/dropping.jpg', 'image/jpeg', 305517, 5, '2026-10-16 13:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `farms`
--

CREATE TABLE `farms` (
  `farm_id` bigint(20) UNSIGNED NOT NULL,
  `farm_name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `owner_name` varchar(150) NOT NULL,
  `owner_contact_number` varchar(20) NOT NULL,
  `owner_id_number` varchar(30) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farms`
--

INSERT INTO `farms` (`farm_id`, `farm_name`, `address`, `owner_name`, `owner_contact_number`, `owner_id_number`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Ladang Ternakan Berkat', 'Lot 128, Kampung Padang Perahu, 06000 Jitra, Kedah', 'Haji Ismail Bin Ahmad', '012-4567890', '620315-02-5011', 1, NULL, '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(2, 'Ladang Kambing Sejahtera', 'Batu 5, Jalan Kodiang, 06100 Kodiang, Kedah', 'Siti Zulaikha Binti Omar', '013-7788991', '910822-02-5124', 1, 1, '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(3, 'Ladang Ayam Maju Jaya', 'Lorong Industri 3, 05100 Alor Setar, Kedah', 'Lim Wei Jie', '016-2233445', '880104-02-5337', 1, 1, '2026-10-16 13:36:56', '2026-10-17 03:34:48'),
(4, 'Audi Dream Farm', 'Lorong 8&9, Jalan Balik Pulau, 11800, Balik Pulau, Pulau Pinang', 'Mr Kenn', '01131840527', '690660075002', 1, NULL, '2026-10-17 04:02:06', '2026-10-17 04:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `farm_locations`
--

CREATE TABLE `farm_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `farm_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `location_type` enum('BARN','PASTURE','COOP','OTHER') NOT NULL DEFAULT 'BARN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farm_locations`
--

INSERT INTO `farm_locations` (`location_id`, `farm_id`, `name`, `location_type`) VALUES
(1, 1, 'Barn A', 'BARN'),
(2, 1, 'Pasture 1', 'PASTURE'),
(3, 1, 'Coop 1', 'COOP'),
(4, 2, 'Goat Pen 1', 'BARN'),
(5, 2, 'Pasture East', 'PASTURE'),
(6, 3, 'Coop A', 'COOP'),
(7, 3, 'Coop B', 'COOP');

-- --------------------------------------------------------

--
-- Table structure for table `generated_reports`
--

CREATE TABLE `generated_reports` (
  `report_id` bigint(20) UNSIGNED NOT NULL,
  `generated_by` bigint(20) UNSIGNED NOT NULL,
  `farm_id` bigint(20) UNSIGNED DEFAULT NULL,
  `report_type` enum('LIVESTOCK','HEALTH','VACCINATION') NOT NULL,
  `report_name` varchar(200) NOT NULL,
  `species_filter` enum('COW','GOAT','CHICKEN') DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`parameters`)),
  `file_format` enum('PDF','CSV') DEFAULT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `generated_at` datetime NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `generated_reports`
--

INSERT INTO `generated_reports` (`report_id`, `generated_by`, `farm_id`, `report_type`, `report_name`, `species_filter`, `date_from`, `date_to`, `parameters`, `file_format`, `file_path`, `generated_at`) VALUES
(1, 2, 1, 'LIVESTOCK', 'Livestock Report - Farm 1', NULL, NULL, NULL, '{\"status\":\"ALL\"}', 'PDF', 'reports/livestock_farm1.pdf', '2026-10-12 13:36:56'),
(2, 2, 1, 'HEALTH', 'Health Report - Cows (last 30d)', 'COW', '2026-09-16', '2026-10-16', '{\"status\":\"SICK\"}', 'CSV', 'reports/health_cows.csv', '2026-10-15 13:36:56'),
(3, 1, NULL, 'VACCINATION', 'System Vaccination Overview', NULL, '2026-09-16', '2026-11-15', '{\"include_overdue\":true}', 'PDF', 'reports/vaccination_system.pdf', '2026-10-16 11:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `health_inspections`
--

CREATE TABLE `health_inspections` (
  `inspection_id` bigint(20) UNSIGNED NOT NULL,
  `livestock_id` bigint(20) UNSIGNED NOT NULL,
  `inspected_by` bigint(20) UNSIGNED NOT NULL,
  `inspected_at` datetime NOT NULL DEFAULT current_timestamp(),
  `method` enum('MANUAL','QR_SCAN') NOT NULL DEFAULT 'MANUAL',
  `health_status` enum('HEALTHY','UNDER_OBSERVATION','SICK','UNDER_TREATMENT','QUARANTINED') NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_inspections`
--

INSERT INTO `health_inspections` (`inspection_id`, `livestock_id`, `inspected_by`, `inspected_at`, `method`, `health_status`, `notes`) VALUES
(1, 1, 2, '2026-10-13 13:36:56', 'QR_SCAN', 'HEALTHY', 'Alert, eating well'),
(2, 2, 2, '2026-10-13 13:36:56', 'MANUAL', 'HEALTHY', NULL),
(3, 3, 3, '2026-10-06 13:36:56', 'QR_SCAN', 'HEALTHY', 'Fully recovered, back to normal'),
(4, 4, 2, '2026-10-10 13:36:56', 'MANUAL', 'SICK', 'Swollen udder, reduced milk yield'),
(5, 5, 3, '2026-10-14 13:36:56', 'QR_SCAN', 'UNDER_OBSERVATION', 'Mild limp on left hind leg'),
(6, 6, 2, '2026-10-11 13:36:56', 'MANUAL', 'HEALTHY', NULL),
(7, 7, 3, '2026-10-15 13:36:56', 'MANUAL', 'HEALTHY', 'Mortality normal, 0 deaths today'),
(8, 8, 4, '2026-10-04 13:36:56', 'MANUAL', 'SICK', 'Lameness, foul smell from hoof'),
(9, 8, 4, '2026-10-11 13:36:56', 'QR_SCAN', 'UNDER_TREATMENT', 'Hoof trimmed, antibiotic given'),
(10, 9, 4, '2026-10-12 13:36:56', 'QR_SCAN', 'HEALTHY', NULL),
(11, 10, 4, '2026-10-07 13:36:56', 'MANUAL', 'HEALTHY', NULL),
(12, 14, 5, '2026-10-12 13:36:56', 'MANUAL', 'SICK', 'Twisted necks, greenish droppings'),
(13, 14, 5, '2026-10-13 13:36:56', 'MANUAL', 'QUARANTINED', 'Batch isolated in Coop B'),
(14, 13, 5, '2026-10-14 13:36:56', 'QR_SCAN', 'HEALTHY', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_status_history`
--

CREATE TABLE `health_status_history` (
  `history_id` bigint(20) UNSIGNED NOT NULL,
  `livestock_id` bigint(20) UNSIGNED NOT NULL,
  `old_status` enum('HEALTHY','UNDER_OBSERVATION','SICK','UNDER_TREATMENT','QUARANTINED') DEFAULT NULL,
  `new_status` enum('HEALTHY','UNDER_OBSERVATION','SICK','UNDER_TREATMENT','QUARANTINED') NOT NULL,
  `change_source` enum('MANUAL','INSPECTION','DISEASE_CASE') NOT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `changed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `changed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_status_history`
--

INSERT INTO `health_status_history` (`history_id`, `livestock_id`, `old_status`, `new_status`, `change_source`, `source_id`, `changed_by`, `changed_at`) VALUES
(1, 3, 'HEALTHY', 'SICK', 'DISEASE_CASE', 4, 3, '2026-09-06 13:36:56'),
(2, 3, 'SICK', 'HEALTHY', 'DISEASE_CASE', 4, 3, '2026-09-14 13:36:56'),
(3, 4, 'HEALTHY', 'SICK', 'INSPECTION', 4, 2, '2026-10-10 13:36:56'),
(4, 5, 'HEALTHY', 'UNDER_OBSERVATION', 'INSPECTION', 5, 3, '2026-10-14 13:36:56'),
(5, 8, 'HEALTHY', 'SICK', 'INSPECTION', 8, 4, '2026-10-04 13:36:56'),
(6, 8, 'SICK', 'UNDER_TREATMENT', 'DISEASE_CASE', 2, 4, '2026-10-05 13:36:56'),
(7, 9, 'HEALTHY', 'SICK', 'DISEASE_CASE', 5, 4, '2026-08-17 13:36:56'),
(8, 9, 'SICK', 'HEALTHY', 'DISEASE_CASE', 5, 4, '2026-08-23 13:36:56'),
(9, 13, 'HEALTHY', 'SICK', 'DISEASE_CASE', 6, 5, '2026-09-21 13:36:56'),
(10, 13, 'SICK', 'HEALTHY', 'DISEASE_CASE', 6, 5, '2026-10-01 13:36:56'),
(11, 14, 'HEALTHY', 'SICK', 'INSPECTION', 12, 5, '2026-10-12 13:36:56'),
(12, 14, 'SICK', 'QUARANTINED', 'MANUAL', NULL, 5, '2026-10-13 13:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `livestock`
--

CREATE TABLE `livestock` (
  `livestock_id` bigint(20) UNSIGNED NOT NULL,
  `farm_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `species` enum('COW','GOAT','CHICKEN') NOT NULL,
  `tag_code` varchar(50) NOT NULL,
  `qr_token` char(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `breed` varchar(100) NOT NULL,
  `gender` enum('MALE','FEMALE') DEFAULT NULL,
  `birth_date` date NOT NULL,
  `birth_date_is_estimated` tinyint(1) NOT NULL DEFAULT 1,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `acquisition_date` date NOT NULL,
  `health_status` enum('HEALTHY','UNDER_OBSERVATION','SICK','UNDER_TREATMENT','QUARANTINED') NOT NULL DEFAULT 'HEALTHY',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `active_tag` varchar(50) GENERATED ALWAYS AS (if(`deleted_at` is null,`tag_code`,NULL)) STORED
) ;

--
-- Dumping data for table `livestock`
--

INSERT INTO `livestock` (`livestock_id`, `farm_id`, `location_id`, `species`, `tag_code`, `qr_token`, `name`, `breed`, `gender`, `birth_date`, `birth_date_is_estimated`, `quantity`, `acquisition_date`, `health_status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'COW', 'COW-001', '99805827-c923-11f1-938a-b8f7750090ba', 'Bella', 'Brahman', 'FEMALE', '2023-06-16', 1, 1, '2024-04-16', 'HEALTHY', 2, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(2, 1, 1, 'COW', 'COW-002', '99805b46-c923-11f1-938a-b8f7750090ba', 'Comel', 'Kedah-Kelantan', 'FEMALE', '2024-04-16', 1, 1, '2024-10-16', 'HEALTHY', 2, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(3, 1, 1, 'COW', 'COW-003', '99805c0e-c923-11f1-938a-b8f7750090ba', 'Jaguh', 'Brahman', 'MALE', '2024-06-16', 0, 1, '2025-02-16', 'HEALTHY', 3, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(4, 1, 1, 'COW', 'COW-004', '99805c9e-c923-11f1-938a-b8f7750090ba', 'Mawar', 'Friesian', 'FEMALE', '2022-10-16', 1, 1, '2023-10-16', 'SICK', 2, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(5, 1, 2, 'COW', 'COW-005', '99805d2c-c923-11f1-938a-b8f7750090ba', 'Tanduk', 'Brahman', 'MALE', '2025-02-16', 1, 1, '2025-08-16', 'UNDER_OBSERVATION', 3, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(6, 1, 2, 'GOAT', 'GOAT-001', '99805dd0-c923-11f1-938a-b8f7750090ba', 'Putih', 'Boer', 'MALE', '2025-04-16', 1, 1, '2025-10-16', 'HEALTHY', 2, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(7, 1, 3, 'CHICKEN', 'CHK-F1-01', '9980fc87-c923-11f1-938a-b8f7750090ba', 'Broiler Batch 1', 'Cobb 500', NULL, '2026-08-07', 0, 50, '2026-08-09', 'HEALTHY', 3, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(8, 2, 4, 'GOAT', 'GOAT-101', '9980fd88-c923-11f1-938a-b8f7750090ba', 'Selasih', 'Jamnapari', 'FEMALE', '2024-08-16', 1, 1, '2025-04-16', 'UNDER_TREATMENT', 4, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(9, 2, 4, 'GOAT', 'GOAT-102', '9980fe2a-c923-11f1-938a-b8f7750090ba', 'Kasturi', 'Boer', 'FEMALE', '2024-12-16', 1, 1, '2025-06-16', 'HEALTHY', 4, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(10, 2, 5, 'GOAT', 'GOAT-103', '9980feb1-c923-11f1-938a-b8f7750090ba', 'Bujang', 'Katjang', 'MALE', '2025-07-16', 1, 1, '2025-12-16', 'HEALTHY', 4, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(11, 2, 5, 'GOAT', 'GOAT-104', '9980ff29-c923-11f1-938a-b8f7750090ba', 'Dara', 'Boer', 'FEMALE', '2025-12-16', 1, 1, '2026-04-16', 'HEALTHY', 4, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(12, 2, 4, 'GOAT', 'GOAT-099', '9980ffa9-c923-11f1-938a-b8f7750090ba', 'Hitam', 'Katjang', 'MALE', '2023-06-16', 1, 1, '2023-10-16', 'HEALTHY', 4, '2026-10-16 13:36:56', '2026-10-16 13:36:56', '2026-09-26 13:36:56'),
(13, 3, 6, 'CHICKEN', 'CHK-A-01', '9981002e-c923-11f1-938a-b8f7750090ba', 'Layer Batch A1', 'Lohmann Brown', NULL, '2026-04-19', 0, 200, '2026-04-29', 'HEALTHY', 5, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(14, 3, 7, 'CHICKEN', 'CHK-B-01', '998100b5-c923-11f1-938a-b8f7750090ba', 'Broiler Batch B1', 'Cobb 500', NULL, '2026-09-06', 0, 120, '2026-09-08', 'QUARANTINED', 5, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL),
(15, 3, 6, 'CHICKEN', 'CHK-A-02', '99810133-c923-11f1-938a-b8f7750090ba', 'Layer Batch A2', 'Lohmann Brown', NULL, '2026-06-18', 0, 150, '2026-06-28', 'HEALTHY', 5, '2026-10-16 13:36:56', '2026-10-16 13:36:56', NULL);

--
-- Triggers `livestock`
--
DELIMITER $$
CREATE TRIGGER `trg_livestock_qr` BEFORE INSERT ON `livestock` FOR EACH ROW SET NEW.qr_token = IF(NEW.qr_token IS NULL OR NEW.qr_token = '', UUID(), NEW.qr_token)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category` enum('INSPECTION','VACCINATION','DISEASE_ALERT','VET','SYSTEM') NOT NULL,
  `title` varchar(150) NOT NULL,
  `message` text DEFAULT NULL,
  `related_type` varchar(30) DEFAULT NULL,
  `related_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `category`, `title`, `message`, `related_type`, `related_id`, `is_read`, `created_at`, `read_at`) VALUES
(1, 2, 'VACCINATION', 'Vaccination due soon', 'COW-001 FMD booster is due in 20 days.', 'LIVESTOCK', 1, 0, '2026-10-16 11:36:56', NULL),
(2, 2, 'DISEASE_ALERT', 'Health alert: COW-004', 'Mastitis case is still in WARNING status.', 'DISEASE_CASE', 1, 0, '2026-10-16 08:36:56', NULL),
(3, 2, 'VET', 'Appointment approved', 'COW-002 vaccination approved. Clinic confirmed the slot.', 'APPOINTMENT', 2, 0, '2026-10-15 13:36:56', NULL),
(4, 2, 'INSPECTION', 'Inspection scheduled', 'Routine inspection for Barn A tomorrow.', 'LIVESTOCK', NULL, 1, '2026-10-15 13:36:56', '2026-10-15 17:36:56'),
(5, 2, 'SYSTEM', 'Welcome to LIMS', 'Your account is active.', NULL, NULL, 1, '2026-09-16 13:36:56', '2026-09-17 13:36:56'),
(6, 3, 'VACCINATION', 'Vaccination overdue', 'CHK-F1-01 appointment date has passed without a record.', 'APPOINTMENT', 4, 0, '2026-10-16 10:36:56', NULL),
(7, 4, 'VET', 'Appointment rejected', 'GOAT-101: vet advises waiting until treatment is finished.', 'APPOINTMENT', 3, 0, '2026-10-14 13:36:56', NULL),
(8, 5, 'DISEASE_ALERT', 'Severe case: CHK-B-01', 'Newcastle Disease reported. Batch is quarantined.', 'DISEASE_CASE', 3, 0, '2026-10-12 13:36:56', NULL),
(9, 1, 'VET', 'New appointment request', 'Ahmad Farhan requested FMD vaccination for COW-001.', 'APPOINTMENT', 1, 0, '2026-10-16 07:36:56', NULL),
(10, 1, 'VET', 'New appointment request', 'Lim Wei Jie requested Newcastle vaccination for CHK-A-01.', 'APPOINTMENT', 7, 0, '2026-10-15 13:36:56', NULL),
(11, 1, 'SYSTEM', 'Farmer waiting for a farm', 'Nurul Huda registered but has no farm assigned yet.', 'USER', 6, 0, '2026-10-14 13:36:56', NULL),
(12, 1, 'SYSTEM', 'Farmer waiting for a farm', 'Meh registered and has no farm assigned yet.', 'USER', 8, 0, '2026-10-17 04:53:02', NULL),
(13, 6, 'SYSTEM', 'Farm assigned', 'Your account is now linked to Ladang Ayam Maju Jaya.', 'FARM', 3, 0, '2026-10-17 11:36:09', NULL),
(14, 8, 'SYSTEM', 'Farm assigned', 'Your account is now linked to Audi Dream Farm.', 'FARM', 4, 0, '2026-10-17 12:02:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('ADMIN','FARMER') NOT NULL DEFAULT 'FARMER',
  `farm_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `last_login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `username`, `password_hash`, `role`, `farm_id`, `account_status`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'Nur Aisyah Binti Kamal', 'admin@lims.test', 'admin', '$2y$10$W962ARY8abI8lJClUY/BH.ludRoepimozsXP8ihrEVbll9ZH08mI6', 'ADMIN', NULL, 'ACTIVE', '2026-10-17 03:33:27', '2026-10-16 13:36:56', '2026-10-17 04:24:25'),
(2, 'Ahmad Farhan Bin Ismail', 'ahmad@lims.test', 'ahmad', '$2y$10$W962ARY8abI8lJClUY/BH.ludRoepimozsXP8ihrEVbll9ZH08mI6', 'FARMER', 1, 'ACTIVE', '2026-10-17 03:29:55', '2026-10-16 13:36:56', '2026-10-17 04:24:25'),
(3, 'Hafiz Bin Rahman', 'hafiz@lims.test', 'hafiz', '$2y$10$W962ARY8abI8lJClUY/BH.ludRoepimozsXP8ihrEVbll9ZH08mI6', 'FARMER', 1, 'ACTIVE', '2026-10-13 13:36:56', '2026-10-16 13:36:56', '2026-10-17 04:24:25'),
(4, 'Siti Zulaikha Binti Omar', 'siti@lims.test', 'siti', '$2y$10$W962ARY8abI8lJClUY/BH.ludRoepimozsXP8ihrEVbll9ZH08mI6', 'FARMER', 2, 'ACTIVE', '2026-10-14 13:36:56', '2026-10-16 13:36:56', '2026-10-17 04:24:25'),
(5, 'Lim Wei Jie', 'weijie@lims.test', 'weijie', '$2y$10$W962ARY8abI8lJClUY/BH.ludRoepimozsXP8ihrEVbll9ZH08mI6', 'FARMER', 3, 'ACTIVE', '2026-10-15 13:36:56', '2026-10-16 13:36:56', '2026-10-17 04:24:25'),
(6, 'Nurul Huda Binti Azmi', 'nurul@lims.test', 'nurul', '$2y$10$W962ARY8abI8lJClUY/BH.ludRoepimozsXP8ihrEVbll9ZH08mI6', 'FARMER', 3, 'ACTIVE', '2026-10-16 20:51:02', '2026-10-16 13:36:56', '2026-10-17 03:36:09'),
(7, 'Razak Bin Ismail', 'razak@lims.test', 'razak', '$2y$10$W962ARY8abI8lJClUY/BH.ludRoepimozsXP8ihrEVbll9ZH08mI6', 'FARMER', 3, 'INACTIVE', '2026-07-18 13:36:56', '2026-10-16 13:36:56', '2026-10-17 04:24:25'),
(8, 'Meh', 'K@gmail.com', 'uumew', '$2y$12$up5A9Abodl6as/yFWEKkJuZ9vRFlN9YB226m7X2Re7/E.I8rMfMVG', 'FARMER', 4, 'ACTIVE', '2026-10-17 04:04:26', '2026-10-16 20:53:02', '2026-10-17 04:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_appointments`
--

CREATE TABLE `vaccination_appointments` (
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `livestock_id` bigint(20) UNSIGNED NOT NULL,
  `vaccine_type_id` bigint(20) UNSIGNED NOT NULL,
  `requested_by` bigint(20) UNSIGNED NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_number` varchar(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('PENDING','APPROVED','REJECTED','CANCELLED','COMPLETED') NOT NULL DEFAULT 'PENDING',
  `reviewed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `vet_clinic_name` varchar(150) DEFAULT NULL,
  `review_remarks` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccination_appointments`
--

INSERT INTO `vaccination_appointments` (`appointment_id`, `livestock_id`, `vaccine_type_id`, `requested_by`, `appointment_date`, `appointment_time`, `location_id`, `contact_number`, `notes`, `status`, `reviewed_by`, `reviewed_at`, `vet_clinic_name`, `review_remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2026-10-26', '09:00:00', 1, '012-3456789', 'FMD booster due soon', 'PENDING', NULL, NULL, NULL, NULL, '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(2, 2, 1, 2, '2026-10-21', '10:30:00', 1, '012-3456789', 'Booster is overdue', 'APPROVED', 1, '2026-10-15 13:36:56', 'Klinik Veterinar Jitra', 'Clinic confirmed a vet visit slot at 10:30', '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(3, 8, 3, 4, '2026-10-23', '11:00:00', 4, '013-7788991', 'Routine Brucellosis shot', 'REJECTED', 1, '2026-10-14 13:36:56', 'Klinik Veterinar Kodiang', 'Vet advises waiting until foot rot treatment is finished', '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(4, 7, 4, 3, '2026-10-08', '14:00:00', 3, '012-3456789', 'Newcastle booster for broilers', 'APPROVED', 1, '2026-10-01 13:36:56', 'Klinik Veterinar Jitra', 'Approved, but visit not yet recorded as done', '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(5, 9, 3, 4, '2026-09-16', '09:30:00', 4, '013-7788991', NULL, 'COMPLETED', 1, '2026-09-11 13:36:56', 'Klinik Veterinar Kodiang', 'Vaccinated by Dr. Faizal', '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(6, 5, 2, 3, '2026-10-19', '15:00:00', 2, '012-3456789', 'Cancelled: animal under observation', 'CANCELLED', NULL, NULL, NULL, NULL, '2026-10-16 13:36:56', '2026-10-16 13:36:56'),
(7, 13, 4, 5, '2026-11-05', '08:00:00', 6, '016-2233445', 'Newcastle booster', 'PENDING', NULL, NULL, NULL, NULL, '2026-10-16 13:36:56', '2026-10-16 13:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_records`
--

CREATE TABLE `vaccination_records` (
  `vaccination_id` bigint(20) UNSIGNED NOT NULL,
  `livestock_id` bigint(20) UNSIGNED NOT NULL,
  `vaccine_type_id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `administered_on` date NOT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `administered_by` varchar(150) DEFAULT NULL,
  `booster_due_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `recorded_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `vaccination_records`
--

INSERT INTO `vaccination_records` (`vaccination_id`, `livestock_id`, `vaccine_type_id`, `appointment_id`, `administered_on`, `dosage`, `administered_by`, `booster_due_date`, `notes`, `recorded_by`, `created_at`) VALUES
(1, 1, 1, NULL, '2025-09-11', '2 ml', 'Dr. Azman (Klinik Veterinar Jitra)', '2026-03-10', 'First dose', 1, '2026-10-16 13:36:56'),
(2, 1, 1, NULL, '2026-05-09', '2 ml', 'Dr. Azman (Klinik Veterinar Jitra)', '2026-11-05', 'Booster', 1, '2026-10-16 13:36:56'),
(3, 1, 2, NULL, '2026-08-17', '2 ml', 'Dr. Azman (Klinik Veterinar Jitra)', '2027-08-17', NULL, 1, '2026-10-16 13:36:56'),
(4, 2, 1, NULL, '2025-09-11', '2 ml', 'Dr. Azman (Klinik Veterinar Jitra)', '2026-09-11', 'Booster missed', 1, '2026-10-16 13:36:56'),
(5, 3, 1, NULL, '2026-09-16', '2 ml', 'Dr. Azman (Klinik Veterinar Jitra)', '2027-03-15', NULL, 1, '2026-10-16 13:36:56'),
(6, 6, 3, NULL, '2026-07-08', '1 ml', 'Dr. Azman (Klinik Veterinar Jitra)', NULL, 'One-off dose, no booster', 1, '2026-10-16 13:36:56'),
(7, 7, 4, NULL, '2026-08-22', '1 drop', 'Farm staff', '2026-10-26', 'Eye-drop vaccination', 3, '2026-10-16 13:36:56'),
(8, 9, 3, 5, '2026-09-16', '1 ml', 'Dr. Faizal (Klinik Veterinar Kodiang)', '2027-09-16', 'From appointment #5', 1, '2026-10-16 13:36:56'),
(9, 13, 4, NULL, '2026-07-13', '1 drop', 'Farm staff', '2026-10-11', NULL, 5, '2026-10-16 13:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_types`
--

CREATE TABLE `vaccine_types` (
  `vaccine_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `species` enum('COW','GOAT','CHICKEN') DEFAULT NULL,
  `booster_interval_days` int(10) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccine_types`
--

INSERT INTO `vaccine_types` (`vaccine_type_id`, `name`, `species`, `booster_interval_days`, `is_active`) VALUES
(1, 'Foot-and-Mouth Disease (FMD)', 'COW', NULL, 1),
(2, 'Hemorrhagic Septicemia (HS)', 'COW', NULL, 1),
(3, 'Brucellosis', 'GOAT', NULL, 1),
(4, 'Newcastle Disease (ND)', 'CHICKEN', NULL, 1),
(5, 'Infectious Bronchitis (IB)', 'CHICKEN', NULL, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_livestock_overview`
-- (See below for the actual view)
--
CREATE TABLE `v_livestock_overview` (
`livestock_id` bigint(20) unsigned
,`farm_id` bigint(20) unsigned
,`farm_name` varchar(150)
,`tag_code` varchar(50)
,`name` varchar(100)
,`species` enum('COW','GOAT','CHICKEN')
,`breed` varchar(100)
,`gender` enum('MALE','FEMALE')
,`quantity` int(10) unsigned
,`birth_date` date
,`acquisition_date` date
,`health_status` enum('HEALTHY','UNDER_OBSERVATION','SICK','UNDER_TREATMENT','QUARANTINED')
,`location_id` bigint(20) unsigned
,`age_months` bigint(21)
,`latest_weight_kg` decimal(8,2)
,`latest_weight_date` date
,`last_inspected_at` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_vaccination_status`
-- (See below for the actual view)
--
CREATE TABLE `v_vaccination_status` (
`livestock_id` bigint(20) unsigned
,`vaccine_type_id` bigint(20) unsigned
,`administered_on` date
,`booster_due_date` date
,`status` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `weight_records`
--

CREATE TABLE `weight_records` (
  `weight_id` bigint(20) UNSIGNED NOT NULL,
  `livestock_id` bigint(20) UNSIGNED NOT NULL,
  `weight_kg` decimal(8,2) NOT NULL,
  `measured_on` date NOT NULL,
  `recorded_by` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `weight_records`
--

INSERT INTO `weight_records` (`weight_id`, `livestock_id`, `weight_kg`, `measured_on`, `recorded_by`, `notes`, `created_at`) VALUES
(1, 1, 410.00, '2026-06-18', 2, 'Initial weight at registration', '2026-10-16 13:36:56'),
(2, 1, 421.50, '2026-07-18', 2, NULL, '2026-10-16 13:36:56'),
(3, 1, 433.00, '2026-08-17', 3, NULL, '2026-10-16 13:36:56'),
(4, 1, 441.50, '2026-09-16', 2, NULL, '2026-10-16 13:36:56'),
(5, 1, 448.00, '2026-10-09', 2, 'Good condition', '2026-10-16 13:36:56'),
(6, 2, 335.00, '2026-07-08', 2, 'Initial weight at registration', '2026-10-16 13:36:56'),
(7, 2, 349.00, '2026-08-27', 2, NULL, '2026-10-16 13:36:56'),
(8, 2, 358.50, '2026-10-08', 3, NULL, '2026-10-16 13:36:56'),
(9, 3, 395.00, '2026-07-13', 3, 'Initial weight at registration', '2026-10-16 13:36:56'),
(10, 3, 412.00, '2026-09-06', 3, NULL, '2026-10-16 13:36:56'),
(11, 4, 520.00, '2026-06-28', 2, 'Initial weight at registration', '2026-10-16 13:36:56'),
(12, 4, 515.00, '2026-08-22', 2, NULL, '2026-10-16 13:36:56'),
(13, 4, 498.00, '2026-10-10', 2, 'Weight loss - see mastitis case', '2026-10-16 13:36:56'),
(14, 5, 305.00, '2026-07-28', 3, 'Initial weight at registration', '2026-10-16 13:36:56'),
(15, 5, 318.00, '2026-09-26', 3, NULL, '2026-10-16 13:36:56'),
(16, 6, 52.00, '2026-08-07', 2, 'Initial weight at registration', '2026-10-16 13:36:56'),
(17, 6, 55.50, '2026-10-01', 2, NULL, '2026-10-16 13:36:56'),
(18, 7, 0.45, '2026-08-17', 3, 'Average per bird (sampled 10 birds)', '2026-10-16 13:36:56'),
(19, 7, 1.20, '2026-09-16', 3, 'Average per bird', '2026-10-16 13:36:56'),
(20, 7, 2.05, '2026-10-14', 3, 'Average per bird', '2026-10-16 13:36:56'),
(21, 8, 38.00, '2026-07-18', 4, 'Initial weight at registration', '2026-10-16 13:36:56'),
(22, 8, 36.50, '2026-09-16', 4, NULL, '2026-10-16 13:36:56'),
(23, 8, 34.00, '2026-10-11', 4, 'Lameness affecting feeding', '2026-10-16 13:36:56'),
(24, 9, 41.00, '2026-07-23', 4, 'Initial weight at registration', '2026-10-16 13:36:56'),
(25, 9, 44.00, '2026-09-21', 4, NULL, '2026-10-16 13:36:56'),
(26, 10, 36.00, '2026-08-17', 4, 'Initial weight at registration', '2026-10-16 13:36:56'),
(27, 11, 28.00, '2026-09-01', 4, 'Initial weight at registration', '2026-10-16 13:36:56'),
(28, 13, 1.85, '2026-09-06', 5, 'Average per bird', '2026-10-16 13:36:56'),
(29, 13, 1.95, '2026-10-13', 5, 'Average per bird', '2026-10-16 13:36:56'),
(30, 14, 0.60, '2026-09-16', 5, 'Average per bird', '2026-10-16 13:36:56'),
(31, 14, 1.10, '2026-10-11', 5, 'Average per bird', '2026-10-16 13:36:56'),
(32, 15, 1.50, '2026-09-26', 5, 'Average per bird', '2026-10-16 13:36:56');

-- --------------------------------------------------------

--
-- Structure for view `v_livestock_overview`
--
DROP TABLE IF EXISTS `v_livestock_overview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_livestock_overview`  AS SELECT `l`.`livestock_id` AS `livestock_id`, `l`.`farm_id` AS `farm_id`, `f`.`farm_name` AS `farm_name`, `l`.`tag_code` AS `tag_code`, `l`.`name` AS `name`, `l`.`species` AS `species`, `l`.`breed` AS `breed`, `l`.`gender` AS `gender`, `l`.`quantity` AS `quantity`, `l`.`birth_date` AS `birth_date`, `l`.`acquisition_date` AS `acquisition_date`, `l`.`health_status` AS `health_status`, `l`.`location_id` AS `location_id`, timestampdiff(MONTH,`l`.`birth_date`,curdate()) AS `age_months`, `w`.`weight_kg` AS `latest_weight_kg`, `w`.`measured_on` AS `latest_weight_date`, (select max(`hi`.`inspected_at`) from `health_inspections` `hi` where `hi`.`livestock_id` = `l`.`livestock_id`) AS `last_inspected_at` FROM ((`livestock` `l` join `farms` `f` on(`f`.`farm_id` = `l`.`farm_id`)) left join `weight_records` `w` on(`w`.`weight_id` = (select `wr`.`weight_id` from `weight_records` `wr` where `wr`.`livestock_id` = `l`.`livestock_id` order by `wr`.`measured_on` desc,`wr`.`weight_id` desc limit 1))) WHERE `l`.`deleted_at` is null ;

-- --------------------------------------------------------

--
-- Structure for view `v_vaccination_status`
--
DROP TABLE IF EXISTS `v_vaccination_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_vaccination_status`  AS SELECT `v`.`livestock_id` AS `livestock_id`, `v`.`vaccine_type_id` AS `vaccine_type_id`, `v`.`administered_on` AS `administered_on`, `v`.`booster_due_date` AS `booster_due_date`, CASE WHEN `v`.`booster_due_date` is null THEN 'UP_TO_DATE' WHEN `v`.`booster_due_date` < curdate() THEN 'OVERDUE' WHEN `v`.`booster_due_date` <= curdate() + interval 30 day THEN 'DUE_SOON' ELSE 'UP_TO_DATE' END AS `status` FROM ((select `vr`.`vaccination_id` AS `vaccination_id`,`vr`.`livestock_id` AS `livestock_id`,`vr`.`vaccine_type_id` AS `vaccine_type_id`,`vr`.`appointment_id` AS `appointment_id`,`vr`.`administered_on` AS `administered_on`,`vr`.`dosage` AS `dosage`,`vr`.`administered_by` AS `administered_by`,`vr`.`booster_due_date` AS `booster_due_date`,`vr`.`notes` AS `notes`,`vr`.`recorded_by` AS `recorded_by`,`vr`.`created_at` AS `created_at`,row_number() over ( partition by `vr`.`livestock_id`,`vr`.`vaccine_type_id` order by `vr`.`administered_on` desc,`vr`.`vaccination_id` desc) AS `rn` from `vaccination_records` `vr`) `v` join `livestock` `l` on(`l`.`livestock_id` = `v`.`livestock_id` and `l`.`deleted_at` is null)) WHERE `v`.`rn` = 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `ix_audit_user` (`user_id`,`created_at`),
  ADD KEY `ix_audit_entity` (`entity_type`,`entity_id`);

--
-- Indexes for table `disease_cases`
--
ALTER TABLE `disease_cases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `ix_case_livestock` (`livestock_id`),
  ADD KEY `ix_case_status` (`status`,`reported_on`),
  ADD KEY `fk_case_reporter` (`reported_by`);

--
-- Indexes for table `disease_case_attachments`
--
ALTER TABLE `disease_case_attachments`
  ADD PRIMARY KEY (`attachment_id`),
  ADD KEY `ix_attach_case` (`case_id`),
  ADD KEY `fk_attach_user` (`uploaded_by`);

--
-- Indexes for table `farms`
--
ALTER TABLE `farms`
  ADD PRIMARY KEY (`farm_id`),
  ADD UNIQUE KEY `ux_farm_owner_name` (`owner_id_number`,`farm_name`),
  ADD KEY `fk_farms_creator` (`created_by`),
  ADD KEY `fk_farms_updater` (`updated_by`);

--
-- Indexes for table `farm_locations`
--
ALTER TABLE `farm_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `ux_location_farm_name` (`farm_id`,`name`);

--
-- Indexes for table `generated_reports`
--
ALTER TABLE `generated_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `ix_reports_user` (`generated_by`,`generated_at`),
  ADD KEY `fk_report_farm` (`farm_id`);

--
-- Indexes for table `health_inspections`
--
ALTER TABLE `health_inspections`
  ADD PRIMARY KEY (`inspection_id`),
  ADD KEY `ix_inspection_livestock` (`livestock_id`,`inspected_at`),
  ADD KEY `fk_insp_user` (`inspected_by`);

--
-- Indexes for table `health_status_history`
--
ALTER TABLE `health_status_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `ix_status_history` (`livestock_id`,`changed_at`),
  ADD KEY `fk_hist_user` (`changed_by`);

--
-- Indexes for table `livestock`
--
ALTER TABLE `livestock`
  ADD PRIMARY KEY (`livestock_id`),
  ADD UNIQUE KEY `ux_livestock_qr` (`qr_token`),
  ADD UNIQUE KEY `ux_livestock_active_tag` (`active_tag`),
  ADD KEY `ix_livestock_farm_species` (`farm_id`,`species`),
  ADD KEY `ix_livestock_health` (`health_status`),
  ADD KEY `fk_livestock_location` (`location_id`),
  ADD KEY `fk_livestock_creator` (`created_by`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `ix_notif_user` (`user_id`,`is_read`,`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ux_users_email` (`email`),
  ADD UNIQUE KEY `ux_users_username` (`username`),
  ADD KEY `ix_users_farm` (`farm_id`);

--
-- Indexes for table `vaccination_appointments`
--
ALTER TABLE `vaccination_appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `ix_appt_livestock` (`livestock_id`),
  ADD KEY `ix_appt_calendar` (`appointment_date`,`status`),
  ADD KEY `fk_appt_vaccine` (`vaccine_type_id`),
  ADD KEY `fk_appt_requester` (`requested_by`),
  ADD KEY `fk_appt_location` (`location_id`),
  ADD KEY `fk_appt_reviewer` (`reviewed_by`);

--
-- Indexes for table `vaccination_records`
--
ALTER TABLE `vaccination_records`
  ADD PRIMARY KEY (`vaccination_id`),
  ADD KEY `ix_vacc_livestock` (`livestock_id`,`administered_on`),
  ADD KEY `ix_vacc_booster` (`booster_due_date`),
  ADD KEY `fk_vacc_vaccine` (`vaccine_type_id`),
  ADD KEY `fk_vacc_appointment` (`appointment_id`),
  ADD KEY `fk_vacc_user` (`recorded_by`);

--
-- Indexes for table `vaccine_types`
--
ALTER TABLE `vaccine_types`
  ADD PRIMARY KEY (`vaccine_type_id`),
  ADD UNIQUE KEY `ux_vaccine_name` (`name`);

--
-- Indexes for table `weight_records`
--
ALTER TABLE `weight_records`
  ADD PRIMARY KEY (`weight_id`),
  ADD KEY `ix_weight_livestock_date` (`livestock_id`,`measured_on`),
  ADD KEY `fk_weight_user` (`recorded_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `disease_cases`
--
ALTER TABLE `disease_cases`
  MODIFY `case_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disease_case_attachments`
--
ALTER TABLE `disease_case_attachments`
  MODIFY `attachment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farms`
--
ALTER TABLE `farms`
  MODIFY `farm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `farm_locations`
--
ALTER TABLE `farm_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `generated_reports`
--
ALTER TABLE `generated_reports`
  MODIFY `report_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `health_inspections`
--
ALTER TABLE `health_inspections`
  MODIFY `inspection_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `health_status_history`
--
ALTER TABLE `health_status_history`
  MODIFY `history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `livestock`
--
ALTER TABLE `livestock`
  MODIFY `livestock_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vaccination_appointments`
--
ALTER TABLE `vaccination_appointments`
  MODIFY `appointment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vaccination_records`
--
ALTER TABLE `vaccination_records`
  MODIFY `vaccination_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccine_types`
--
ALTER TABLE `vaccine_types`
  MODIFY `vaccine_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `weight_records`
--
ALTER TABLE `weight_records`
  MODIFY `weight_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `disease_cases`
--
ALTER TABLE `disease_cases`
  ADD CONSTRAINT `fk_case_livestock` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_case_reporter` FOREIGN KEY (`reported_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `disease_case_attachments`
--
ALTER TABLE `disease_case_attachments`
  ADD CONSTRAINT `fk_attach_case` FOREIGN KEY (`case_id`) REFERENCES `disease_cases` (`case_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attach_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `farms`
--
ALTER TABLE `farms`
  ADD CONSTRAINT `fk_farms_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_farms_updater` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `farm_locations`
--
ALTER TABLE `farm_locations`
  ADD CONSTRAINT `fk_loc_farm` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`farm_id`) ON DELETE CASCADE;

--
-- Constraints for table `generated_reports`
--
ALTER TABLE `generated_reports`
  ADD CONSTRAINT `fk_report_farm` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`farm_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_report_user` FOREIGN KEY (`generated_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `health_inspections`
--
ALTER TABLE `health_inspections`
  ADD CONSTRAINT `fk_insp_livestock` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_insp_user` FOREIGN KEY (`inspected_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `health_status_history`
--
ALTER TABLE `health_status_history`
  ADD CONSTRAINT `fk_hist_livestock` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hist_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `livestock`
--
ALTER TABLE `livestock`
  ADD CONSTRAINT `fk_livestock_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_livestock_farm` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`farm_id`),
  ADD CONSTRAINT `fk_livestock_location` FOREIGN KEY (`location_id`) REFERENCES `farm_locations` (`location_id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notif_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_farm` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`farm_id`);

--
-- Constraints for table `vaccination_appointments`
--
ALTER TABLE `vaccination_appointments`
  ADD CONSTRAINT `fk_appt_livestock` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_appt_location` FOREIGN KEY (`location_id`) REFERENCES `farm_locations` (`location_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_appt_requester` FOREIGN KEY (`requested_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_appt_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_appt_vaccine` FOREIGN KEY (`vaccine_type_id`) REFERENCES `vaccine_types` (`vaccine_type_id`);

--
-- Constraints for table `vaccination_records`
--
ALTER TABLE `vaccination_records`
  ADD CONSTRAINT `fk_vacc_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `vaccination_appointments` (`appointment_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vacc_livestock` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vacc_user` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_vacc_vaccine` FOREIGN KEY (`vaccine_type_id`) REFERENCES `vaccine_types` (`vaccine_type_id`);

--
-- Constraints for table `weight_records`
--
ALTER TABLE `weight_records`
  ADD CONSTRAINT `fk_weight_livestock` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_weight_user` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
