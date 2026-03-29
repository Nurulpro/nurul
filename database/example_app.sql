-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2026 at 03:34 AM
-- Server version: 8.0.45
-- PHP Version: 8.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_03_26_163411_create_tenants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4KyXkP6jEtgJxT4W2BUUjt9dzjaRXk1ZV1UfvKAX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJJaURwa0VscnFOOG15WjIxWUdPSmJSMEhMVFI3TG9XSGhZVnd1VWxzIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721101),
('4p4HRgTrrzMdHD93dePBhXkgUUu2YkRF7j8Ia70N', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJiUE5VNFlKOXhqelhkZDZEVk44eGowQVBKRVIzZ2VJbE45R2dBRXNtIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774722228),
('9n7lq3jhEUo3sALayJi2SdKqPl9oOIaL05ci9d55', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJHUVlodThoOUpmMzMxa2xnQ3dpSTAwQ1cyM2s0M3RLbEtjMDI5UFBFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774719813),
('aKS9oO5auN4eYu4ScopZQQujgsnfVKoMTr9mS6qs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJ3T0J0S2VhRU1lTm9QRWxYWVNkc0JLT1VUYWh3Z2xJWXl3YklYN1ZoIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774718810),
('C4FwawFGvIoq44n9HRblyTFlGFzV7Ltc66mD4b3O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJlTTIxWGp2VFA4aGpyYzRuSjRGSHZkZHdHOFVDVm9MVXE1S3dvQzRiIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9udXJ1bC50ZXN0XC9zaWduLXVwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1774721629),
('CuWIVcqzKOi1l6F4jVNGrCU6sPUHPYTkO8kZHF3J', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJQNG51aEUyVHFRZjJoWWVxRzBsQlBjNEs5RjFjN2ZNS2lqb2p3SkN6IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zaGVyYXppLm51cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774720237),
('g3GKJWEfaUFnryz3iT4D1YYcInokJVkpQCVds6Wt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJTbFZEVnlRaG9tMzdNNWpvQ1Y1MG1IWkR6Tkc3dzcwVlJ4U3M4SnpmIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721673),
('gIgLJnFX8F88aiaECh4b0ZpHhdXpqid1gXDTdhl4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiI4anZBQ3pRR2F5dHF6VlQ3UHloWlhpTTdJMXV5M1VPbkx0YTJvTkExIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774719813),
('Ks8w2RqKKlT9sJLP3a7KYcW0KQqrL9PuHCMtga7O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJBRG5oTGZWbzJ5ZURFM0E0NFU5eGVhaGVUZGZBRmJnWVRCYVpzdW5BIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721099),
('OpIdJUDUAUd3Z6InJvr29XwzNsXVUPffRhRWkPHp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJITkFIT3VOaGdneWRIMkJNZlpEOGNkV1F2Qjhmdzc2eDhvODVJQzNsIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL3dlZGV2Lm51cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721668),
('p4lPffhcExSmcCTtEC4Z2BTTFPbTSB1dG0A5NJvV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiI0VE8xajVrcGhYV0JRMW1Vc2ljVWEwUjdqM3FPWWY2dGczY2Vmb1BVIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC93ZWRldi5udXJ1bC50ZXN0XC8/aGVyZD1wcmV2aWV3Iiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19', 1774721676),
('QBLDQpCCTX5PF3P8RfFnmxgseS1RWU6dKV65NMC2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJVa1ZveDNQazRNSE96VHV5WFVYOXVQeVozcUxOblFFYUpIT2lvRzBJIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL3NoZXJhemkubnVydWwudGVzdFwvP2hlcmQ9cHJldmlldyIsInJvdXRlIjpudWxsfSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119fQ==', 1774718825),
('QJNSAFSnLXSGaa5P7JfgKqnOpEoXFSCwToN83WI0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJnaEVDUkFjcDNMaHFraU1HcWpETDRVdlQ2REZpdWpmaWZGMnQ4NU92IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9zaGVyYXppLm51cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721665),
('qVJLGAaMw97WD4FKrpFblg6ImEoTEmZ6DqVWO2Sc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJhZ215VDNpZENic01iTGR5bVYwd3BqaEpDdFBDN3BsV3FNTzdxT3VQIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721101),
('rsXq4SWn7D3QCzTIYnRcSdMF5URO3UboA5PKCB94', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJpSTVKRHpONFpLYlp3RWxNM05meGRjaGs5bkdTb3Fiem9GdWJ5Tk1xIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721664),
('SAX4dW9ala42WnyH7QKVy8xQQ2RfwybMO79K8FrN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiJkN1BncmZNQ1l3d1JxZWFCd2hmdmV0dFNlZlU1SmJPQ3pPcXJLUE1RIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774718832),
('SjLkj8uA8peGGvpT6F98iuqRAQhkaNU5U6Zr1NVN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiI4dGNjY2JkaHVkZGs2cUJDeTVkRTBKU29CVjV2WnNaTDhpYnl3QjdMIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774718795),
('SQnftxW4I8JP46myIiee48O8GjwHhorKOuiryCBl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJVSmV0UmtSQlY1NFRVNXJwV3E4d3JBaTgwM20yTTl1aUI3V0ZpRWFXIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cHM6XC9cL3NoZXJhemkubnVydWwudGVzdFwvbG9naW4iLCJyb3V0ZSI6ImxvZ2luIn19', 1774721561),
('UhEtxIDBvKtR17Tj6gXOVgqTzdvuN9llFAEGugEJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJJTTdSOTdEcXFYQUpoME9xZlNVMm1qWHlRSlZCVEhwZWFjdVBwcEpWIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721098),
('uws2zXocHGuUoN3uRtMBLNXksRf6jozSnAZuC3nB', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJwaEVvOGRHRHRyaUgxWTRuNWhpU2NDM1JLTGRUSU1FT0lHS0hsM1dWIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cHM6XC9cL3dlZGV2Lm51cnVsLnRlc3RcL2xvZ2luIiwicm91dGUiOiJsb2dpbiJ9LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MX0=', 1774722166),
('W0uaUwqksqdtmD8RiXC7DVArSswJly7H2SqdR3hS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJ5a2tFaGliM2UzUDJoZDF0UEUwSWQ0R2tWbUZtTzltY1VVWEpuaXBBIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774719814),
('WTsyZllTz7uTwbm55xC7lXf2ltocOo0w1ksIS85E', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJiMnFCcVhMYVJXN0liUkhySkFYRkpVYktOUkpBSXJESXlVbWpBeXYyIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721080),
('x1V32sqSpOwzbaWvSHQYmiT2TIg0lZBiMWPNNWNO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiIydnVNeEdZNE41Z2txQTA1c2QzRHA5QjAxeWVBRzk1VERYdlphd3Z4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3QiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721082),
('YJvFWvz206SwLzfoKnEc9CLtzBJUh7Zv1XgzbQ8i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.27.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'eyJfdG9rZW4iOiI1Yml5YVJPc0hlUk5hdXlWRXdzSk5UMlVPN25BVnFlZXB5eWFRVGd5IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL251cnVsLnRlc3RcLz9oZXJkPXByZXZpZXciLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1774721639);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `database` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `name`, `subdomain`, `database`, `created_at`, `updated_at`) VALUES
(1, 'Nurul Islam', 'sherazi', 'tenant_sherazi', '2026-03-28 11:26:12', '2026-03-28 11:26:12'),
(2, 'wedev', 'wedev', 'tenant_wedev', '2026-03-28 12:13:48', '2026-03-28 12:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenants_subdomain_unique` (`subdomain`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
