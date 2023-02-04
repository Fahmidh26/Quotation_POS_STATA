-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 07:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fahmid_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense` int(255) DEFAULT NULL,
  `hr` int(255) DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `customer`, `bank`, `supplier`, `setting`, `purchase`, `review`, `orders`, `locations`, `stock`, `reports`, `alluser`, `expense`, `hr`, `adminuserrole`, `quotation`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-06-05 03:57:32', '$2y$10$ALbMmGnqCeBflP.JT8LWNu/swsmervF2UFssUBA3QKo52c6CrA9Ye', '01964870827', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, '1', '1', 1, '7vQ0tDooW8lm7V6q9Q5jiOkY8d7IFtIqYptOJxZQyiBKKPeXyX5pnPJkCWQR', NULL, '202207230834attachment_127807231.jfif', '2022-06-05 03:57:32', '2022-07-23 03:06:17'),
(7, 'Sayma Akter', 'fahmidh26@gmail.com', NULL, '$2y$10$WCfvH6ljbVaTlJ/b79GQMO02tEUn5jFmj5b5CKKrdgH.ExE/EPAVK', '01964870827', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 2, NULL, NULL, 'upload/admin_images/1753440570992745.jpg', '2022-12-28 01:07:18', NULL),
(8, 'Yeasin Arafat', 'yeasin.stata@gmail.com', NULL, '$2y$10$5oyl7.KQx.6v4kaSqqP6h.MKVNKrozEgKNI/dCRfb1fQECadjpdVi', '01908497296', '1', '1', '1', NULL, NULL, NULL, '1', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 2, NULL, NULL, 'upload/admin_images/1754718976521602.jpg', '2023-01-11 15:47:00', NULL),
(9, 'Dewan Zawad', 'zawad@statait.com', NULL, '$2y$10$NX9DSEwQN8kU408osE/fTuL9QgwSLonP1FYsUo8fsFWZ7X6Wp6eri', '01322896403', '1', '1', '1', NULL, NULL, NULL, '1', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 2, NULL, NULL, 'upload/admin_images/1754719086506933.jpg', '2023-01-11 15:48:45', NULL),
(10, 'Shahriar Tasnim', 'shariar@statait.com', NULL, '$2y$10$YixA5mQpbGJcRHxFdUWnhuoMuUavQI85vYlLfFDoD4mrXoDU35nZe', '01322896402', '1', '1', '1', NULL, NULL, NULL, '1', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 2, NULL, NULL, 'upload/admin_images/1754719210815819.jpg', '2023-01-11 15:50:44', NULL),
(11, 'Rahul Chakrabarty', 'rahul@statait.com', NULL, '$2y$10$BAB2JJeIzHyh84AXSYoR3u4aWaAJ3ZVeF14Z6GYXlcHJ1nzLEH52G', '01720514565', '1', '1', '1', NULL, NULL, NULL, '1', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 2, NULL, NULL, 'upload/admin_images/1754719287871540.jpg', '2023-01-11 15:51:57', NULL),
(12, 'Ayman Shorab', 'ayman.stata@gmail.com', NULL, '$2y$10$qJcLv3Gt7Cyzno7rAyhij.SISI3PfPUTJY2tDGfsCdETlWZbJqodW', '01322896406', '1', '1', '1', NULL, NULL, NULL, '1', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 2, NULL, NULL, 'upload/admin_images/1754719587188913.jpg', '2023-01-11 15:56:42', NULL),
(13, 'Md. Maruf Hussain', 'omarsunjery.stata@gmail.com', NULL, '$2y$10$/KmSVbINYRne0wQsyGSLPuFJalufAqLpJA6Mruwb1jb0F0JcPvId6', '01322896409', '1', '1', '1', NULL, NULL, NULL, '1', NULL, '1', '1', '1', '1', '1', '1', NULL, NULL, '1', '1', 2, NULL, NULL, 'upload/admin_images/1754719690786082.jpg', '2023-01-11 15:58:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins1`
--

CREATE TABLE `admins1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins1`
--

INSERT INTO `admins1` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `customer`, `bank`, `supplier`, `setting`, `purchase`, `review`, `orders`, `locations`, `stock`, `reports`, `alluser`, `adminuserrole`, `quotation`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-06-05 03:57:32', '$2y$10$ALbMmGnqCeBflP.JT8LWNu/swsmervF2UFssUBA3QKo52c6CrA9Ye', '01964870827', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '7vQ0tDooW8lm7V6q9Q5jiOkY8d7IFtIqYptOJxZQyiBKKPeXyX5pnPJkCWQR', NULL, '202207230834attachment_127807231.jfif', '2022-06-05 03:57:32', '2022-07-23 03:06:17'),
(7, 'Sayma Akter', 'fahmidh26@gmail.com', NULL, '$2y$10$WCfvH6ljbVaTlJ/b79GQMO02tEUn5jFmj5b5CKKrdgH.ExE/EPAVK', '01964870827', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL, 'upload/admin_images/1753440570992745.jpg', '2022-12-28 01:07:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name`, `ac_name`, `ano_name`, `branch`, `sign_image`, `created_at`, `updated_at`) VALUES
(1, 'CIty', 'tasdik', '6565656565', 'progoti', NULL, '2023-01-10 01:14:49', NULL),
(2, 'Cash', 'tasdik', '6565656565', 'progoti', NULL, '2023-01-30 01:37:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Smart Switch & Socket', 1, NULL, NULL),
(2, 'Smart Door Lock', 1, NULL, NULL),
(3, 'Smart Security Sensor', 1, NULL, NULL),
(4, 'Smart Lighting & Decoration', 1, NULL, NULL),
(5, 'Smart Health', 1, NULL, NULL),
(6, 'Smart PDLC Film', 1, NULL, NULL),
(7, 'Smart Home Appliances', 1, NULL, NULL),
(8, 'Smart Switch Assembly Parts', 1, NULL, NULL),
(9, 'Touch Switch & Socket', 1, NULL, NULL),
(10, 'SHIPPING', 1, NULL, NULL),
(11, 'testC', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Walking Customer', '', '', NULL, '2020-03-03 05:23:10', NULL),
(2, 'Ahnaf Shabik', 'House-45, Avenue-5, Block-A,Section-6 Top Floor Dhaka Dhaka 1216\r\n', '01674406259', '', '2021-08-31 13:30:26', '0000-00-00 00:00:00'),
(3, 'Dr.Hasan Mahmud', '609/E,Hatim South Thakur para,Comilla', '01303453880', 'farhanmoinamoti@gmail.com', '2021-08-31 13:34:18', '0000-00-00 00:00:00'),
(4, 'Mahbubur rahman', 'village-Kutubpur, Post -Pirpurkulla,Thana-damurhuda, District -Chuadanga Khulna Chuadanga Damurhuda Bangladesh', '01303510963', '', '2021-08-31 13:34:53', '0000-00-00 00:00:00'),
(5, 'Abu Talha', 'Flat-107,Fairy homes,7 Poribagb,Dhaka', '01303719224', '', '2021-08-31 13:35:16', '0000-00-00 00:00:00'),
(6, 'Tariqul Islam', 'Akhaura, Brahmanbaria', '01304349858', 'taaariqul@gmail.com', '2021-08-31 13:35:43', '0000-00-00 00:00:00'),
(7, 'dr.Humayun Rajib', 'house -H flat-12,z.h sikder women\'s medical college hospital. rayerbazar dhaka', '01305694446', 'Ridhima2015@gmail.com', '2021-08-31 13:36:22', '0000-00-00 00:00:00'),
(8, 'Shamiul Haque Alvee', 'Flat-2B, H# 45,R# 2/A,Dhanmondi, Dhaka', '01309001664', '', '2021-08-31 13:36:47', '0000-00-00 00:00:00'),
(9, 'Kashem Talukdar', 'Enayetpur Shirajganj', '01311862237', 'kashemtalukdar@icloud.com', '2021-08-31 13:37:14', '0000-00-00 00:00:00'),
(10, 'Mr Mojibur Rahman', 'Comilla sadar', '01312488854', '', '2021-08-31 13:37:39', '0000-00-00 00:00:00'),
(11, 'Ali Ahamed Mahmud', '210/2 elephant road dhaka 1205 flat 11F, elephant road, Dhaka, bangladesh', '01315301089', 'refan0175@gmail.com', '2021-08-31 13:38:09', '0000-00-00 00:00:00'),
(12, 'Mr Rinku', 'Orchard Point, Dhanmondi', '01402600835', '', '2021-08-31 13:38:35', '0000-00-00 00:00:00'),
(13, 'Fakhrul Islam', 'Shaktola, Noagao Chumuhany, Islam Manison (Opposite to New Asia Aircon Bus Counter)', '01521230970', 'mohammadfakhrulislamabir@gmail.com', '2021-08-31 13:39:02', '0000-00-00 00:00:00'),
(14, 'T Talha', '9/E DSE Annex Building Motijheel C/A Suite - 630 Dhaka Dhaka 1000', '01534798292', 'mdtclbd@gmail.com', '2021-08-31 13:39:27', '0000-00-00 00:00:00'),
(15, 'Shihab Rahman', '12 farashganj road, Shambazar,Dhaka-1100', '01534970709', '', '2021-08-31 13:39:56', '0000-00-00 00:00:00'),
(16, 'Mr Mamun Khan', 'Matuail House -125/2 Katerpool Jatrabari', '01552115509', '', '2021-08-31 13:40:20', '0000-00-00 00:00:00'),
(17, 'Mr. Kajal', '6/c,Radiant Shapla,3/2 mashjid road,Anandanagor,South Badda, Dhaka', '01552395117', 'kajaldey60@yahoo.com', '2021-08-31 13:40:42', '0000-00-00 00:00:00'),
(18, 'Farhan Intisar', '400/4,West Shewrapara, Mirpur 10, Dhaka', '01556582200', '', '2021-08-31 13:41:14', '0000-00-00 00:00:00'),
(20, 'Mr Mamun Khan', 'Matuail House -125/2 Katerpool Jatrabari', '01552115509', '', '2021-09-02 08:26:57', '0000-00-00 00:00:00'),
(21, 'Abdus Salam', '77/2 A.K.M Shamsujjoha Road, North Chashara, Narayanganj', '01558975762', 'sk.shuvo16@gmail.com', '2021-09-02 08:31:50', '0000-00-00 00:00:00'),
(22, 'Rahanur Alam Rana', 'M/S. Rana Traders, Sonamukhi Road, Dhunat Bazar, Bogra, Dhunat, Rajshahi', '01611201572', 'rahanur.ece@gmail.com', '2021-09-02 08:33:07', '0000-00-00 00:00:00'),
(23, 'Md Syfuzzaman Shopon', 'Bashati Horizon, Floor#6, Road#17, Plot#21, Banani CA', '', '', '2021-09-05 04:28:02', '0000-00-00 00:00:00'),
(24, 'Mr Khairul', '444/A, Paglarpol,Mohakhali,Dhaka', '01785813884', '', '2021-09-05 07:06:07', '0000-00-00 00:00:00'),
(25, 'Yasin sheikh', ',bhanga,foridpur', '01786699448', 'Yeasinsheikh999@gmail.com', '2021-09-05 07:08:25', '0000-00-00 00:00:00'),
(26, 'Mr Hamidul Islam', 'Postogola', '01786850616', '', '2021-09-05 07:10:10', '0000-00-00 00:00:00'),
(27, 'Mr Souvik', 'Bijoy Rakin City,Mirpur,Dhaka', '01787146292', '', '2021-09-05 07:11:30', '0000-00-00 00:00:00'),
(28, 'Mr. Nivelle Kabir', 'H# 16, Park road,Baridhara diplomatic, apt. 402,Dhaka', '01611522213', 'kabir.nivelle@gmail.com', '2021-09-05 07:11:51', '0000-00-00 00:00:00'),
(29, 'Salauddin Ahmed', '1189/1/3 chairman bari., east jurain, jurain, Dhaka', '01620417177', 'ahmed.shourav60@gmail.com', '2021-09-05 07:12:32', '0000-00-00 00:00:00'),
(30, 'Mahmud Alam', 'House 16, Road 1, Block Ja Mohakhali, Dhaka', '01787651158', 'mahmud-alam@hotmail.com', '2021-09-05 07:12:52', '0000-00-00 00:00:00'),
(31, 'Masud Parvez', 'Apex Alam Tower, N.Sabujbag, Halishahar Road, Pahartili, CTG', '01787670779', 'masudjico@gmail.com', '2021-09-05 07:14:39', '0000-00-00 00:00:00'),
(32, 'Jewel Khan', '827 Ds Tower Noorpir South Hania Dhaka 1236', '01622217777', 'jewel.jetu@gmail.com', '2021-09-05 07:17:55', '0000-00-00 00:00:00'),
(33, 'Rafid Ibne Majher', 'Anondo kanon, Fire service gate,Bagichagaw,Comilla', '01624664196', '', '2021-09-05 07:19:34', '0000-00-00 00:00:00'),
(34, 'Saddam Hossain', '8/1 Armanian street, Armanitola,Dhaka-1100 Dhaka Dhaka - South Armenium Street Bangladesh', '1625415152', '', '2021-09-05 07:20:04', '0000-00-00 00:00:00'),
(35, 'Salah Uddin Mahmud Sikder', 'Jononee Homes-02, Block-A, Bashundhara Reverview, Keraniganj-1311', '01677722244', 'su.mahmud@gmail.com', '2021-09-05 07:20:31', '0000-00-00 00:00:00'),
(36, 'Faisal Hossain', '8 Rankin Street, Wari, Dhaka Fortune Tower, Flat: 8/D, South Dhaka', '01626823006', 'faisal.dfx@gmail.com', '2021-09-05 07:20:37', '0000-00-00 00:00:00'),
(37, 'Rahul Ahmed', 'Block-I, Road-7,House-271/273, Flat-8D, Bashundhara R/A', '01634471753', 'rahulahamed2012@gmail.com', '2021-09-05 07:22:26', '0000-00-00 00:00:00'),
(38, 'Major RTD Mehdi', 'Level-2, House - 994, Road - 10, Avenue - 12, DOHS Mirpur, Dhaka - 1216', '01678007272', 'sultan6416@gmail.com', '2021-09-05 07:22:30', '0000-00-00 00:00:00'),
(39, 'Fuuran Bin Wali', 'Aurnob mutaja, house-155, Flat-1B, Block-B, Khilgaon, Jheelpar road Dhaka', '01639577477', '', '2021-09-05 07:22:50', '0000-00-00 00:00:00'),
(40, 'Mohammad Mezanur Rahman', 'Cantonment, Comilla, Cantonment, Cumilla, Cumilla', '01643398938', '', '2021-09-05 07:23:19', '0000-00-00 00:00:00'),
(41, 'Tarif Bhuiyan', 'ranirdigirpar,comilla sador. Bs Apartment Cumilla Cumilla 3500', '01644237804', 'tarifbhuiyan3i@gmail.com', '2021-09-05 07:23:46', '0000-00-00 00:00:00'),
(42, 'Arifuzzaman Chowdhury', 'house 9, road 62, Gulshan 2', '01670072021', 'arfuzzamanchowdhury@gmail.com', '2021-09-05 07:24:23', '0000-00-00 00:00:00'),
(43, 'Nayeem Jamal', '', '01670087017', 'nayeem060686@gmail.com', '2021-09-05 07:24:58', '0000-00-00 00:00:00'),
(44, 'Mahmud-Ul Haque', 'Mahmud-Ul-Haque, Flat# C-4/8 (3rd Floor-East), Building#Moushumi, WAPDA Colony, Road#11, Banani, Dhaka, Dhaka', '1670104642', 'mahmud4648@gmail.com', '2021-09-05 07:26:02', '0000-00-00 00:00:00'),
(45, 'Samiur Rahman', '208 West Shantibag Apurupa Homes, Flat 9b Dhaka Dhaka 1217', '01673309345', 'samiur24@gmail.com', '2021-09-05 07:26:42', '0000-00-00 00:00:00'),
(46, 'Nayeem Rumel', 'House-25, Road-3, Khaleque R/A, Darussalam, Mirpur, Dhaka', '01673391161', '', '2021-09-05 07:27:13', '0000-00-00 00:00:00'),
(47, 'Mohiuddin Riad', '44/i, R# 4, Block# D, Bashundhara R/A', '01673486423', 'mohi.web@gmail.com', '2021-09-05 07:27:40', '0000-00-00 00:00:00'),
(48, 'Md. Abdul Alim', '107/1, Block- D, Mouchok, Chowdhuripara, Narayongong', '01673649476', '', '2021-09-05 07:28:04', '0000-00-00 00:00:00'),
(49, 'Abul Hashem Mintu', 'B-1/2 Genda, Savar, Dhaka, Dhaka', '01673783315', 'mintu7860@gmail.com', '2021-09-05 07:28:33', '0000-00-00 00:00:00'),
(50, 'Imran Maleque', 'House- 35/9(Nandonik nahar, Flat-6C), Road-10, Sheikh er tek, pc culture housing society mohammadpur dhaka.', '01674086374', '', '2021-09-05 07:28:58', '0000-00-00 00:00:00'),
(51, 'Fahad Kabir', 'Unique footwear industries house -6/2, Orphanage Road, Lalbagh', '01675698846', '', '2021-09-05 07:31:30', '0000-00-00 00:00:00'),
(52, 'Irfan Ibrahim', 'Apt- A9, House- 13B/9B, Babor Road, Mohammadpur, Dhaka, Mohammadpur, Dhaka, Dhaka', '01675701866', 'Irfan1316@gmail.com', '2021-09-05 07:32:19', '0000-00-00 00:00:00'),
(53, 'Sifat Mahmud', '31, Azimpur Shekh Saheb Bazar, Lalbagh, Dhaka-1205 2nd Floor Dhaka Dhaka 1205', '01675885083', 'sifatmahmudsamit@gmail.com', '2021-09-05 07:32:52', '0000-00-00 00:00:00'),
(54, 'Tashfeen Siddiq', '60/C Purana Paltan, Dhaka: 1000 4th floor, Paltan, Dhaka, Dhaka', '01676088690', 'shtashfeen@gmail.com', '2021-09-05 07:33:29', '0000-00-00 00:00:00'),
(55, 'Sadman Ahmed Sakib', 'Garden Lodge, Flat- A/502, House -1, road-2, block-D, section-2, MIRPUR Dhaka ( Near Sony Cinema Hall)', '1676345074', '', '2021-09-05 07:33:57', '0000-00-00 00:00:00'),
(56, 'Mr. Sadi', 'Mahfuz villa,Building 8, Road 7b,Nikunjo 1, Dhaka', '01676948864', '', '2021-09-05 07:35:44', '0000-00-00 00:00:00'),
(57, 'Rubab Rashid', 'H#32, R#7, Block#F, Banani, Dhaka', '01678378802', 'r.rashid01@gmail.com', '2021-09-05 07:35:48', '0000-00-00 00:00:00'),
(58, 'Salah Uddin Mahmud Sikder', 'Jononee Homes-02, Block-A, Bashundhara Reverview, Keraniganj-1311', '01677722244', '', '2021-09-05 07:36:25', '0000-00-00 00:00:00'),
(59, 'Borhan Uddin Raj', 'North Badda, Satarkul road, Dadar Bazar, Dhaka', '01680235690', 'Borhanuddin31@gmail.com', '2021-09-05 07:36:26', '0000-00-00 00:00:00'),
(60, 'Shohel Rana', '46, Karwan Bazaar, HRC Bhaban, Dhaka', '01680966617', '', '2021-09-05 07:36:57', '0000-00-00 00:00:00'),
(61, 'Saju Sutradhar', 'Holding:3419, Ram Krishna Mission Road, Habiganj 1st floor Habiganj Habiganj 3300', '01681086588', 'sajusd1996@gmail.com', '2021-09-05 07:37:31', '0000-00-00 00:00:00'),
(62, 'Khairul Islam', 'House-444/a, shaheenbag, Mohakhali, Dhaka, Dhaka', '01681407658', 'khairul.bracu@gmail.com', '2021-09-05 07:38:01', '0000-00-00 00:00:00'),
(63, 'Mr. B M M Bari', 'House-200/3B, Kuril School Road Vatara Dhaka 1229', '01791034328', '', '2021-09-05 07:38:05', '0000-00-00 00:00:00'),
(64, 'Md Shahed', 'Mohipal,Feni, Feni Sadar, Chittagong, Feni', '01681960969', 'mohammadshahed960969@gmail.com', '2021-09-05 07:38:32', '0000-00-00 00:00:00'),
(65, 'Amanna Tabassum Bani', 'Opposite of Bashundhara R/A', '01684571200', '', '2021-09-05 07:39:01', '0000-00-00 00:00:00'),
(66, 'Mohammad Qaisar Ali', 'Flat - A2, Melody, Plot 3A, Road - 74, Gulshan2', '01794433687', '', '2021-09-05 07:39:02', '0000-00-00 00:00:00'),
(67, 'P2P', 'H:5A, R:25A, Block: A. Banani', '01687130041', '', '2021-09-05 07:39:48', '0000-00-00 00:00:00'),
(68, 'Khalid Sabbir', '88/1, Kolapotti( I.T Steel Pipe), Jatrabari, Dhaka', '01688340419', 'sabbirkhan.sk86@gmail.com', '2021-09-05 07:40:25', '0000-00-00 00:00:00'),
(69, 'Mr Ali', 'Jamal Palace Dhanmondi 27 Dhaka', '01688943289', '', '2021-09-05 07:41:03', '0000-00-00 00:00:00'),
(70, 'Enamul Haque', '324/A,East Rampura, Dhaka, Dhaka, Dhaka', '01689075146', '', '2021-09-05 07:41:46', '0000-00-00 00:00:00'),
(71, 'Mr. Rahat', 'H # 35, Uttar Badda, Hazipara mashjid,Dhaka', '01700535344', '', '2021-09-05 07:42:10', '0000-00-00 00:00:00'),
(72, 'Raidah Morshed', 'Apt 5A House 85 A Road 11 A Dhanmondi', '01700763369', 'raidahmorshed@gmail.com', '2021-09-05 07:42:51', '0000-00-00 00:00:00'),
(73, 'Farhan Sadiq', 'flat-4, road-6/c, bananni dohs', '01794808189', 'farhansadiq666@gmail.com', '2021-09-05 07:43:10', '0000-00-00 00:00:00'),
(74, 'MD Isti Mahabub Fahim', 'section 10,block A,Lane 4,house no 8,mirpur 10 benarosi polli,dhaka 1216, mirpur, dhaka, null', '01798954141', 'md.mf45@gmail.com', '2021-09-05 07:43:46', '0000-00-00 00:00:00'),
(75, 'MD ABDUL ALIM', 'GOURIPUR, Daudkandi, cumilla', '01811345142', 'sohag0cml@gmail.com', '2021-09-05 07:44:27', '0000-00-00 00:00:00'),
(76, 'Ashik Hossen Patowary', 'Agb Colony Motijheel Dhaka', '01701045785', 'aadro.bd@gmail.com', '2021-09-05 07:44:34', '0000-00-00 00:00:00'),
(77, 'Shamim Rahman', 'Shamim Rahman, house 75, Road 4, Black- B, Niketon Gulshan 1, Gulshan, Dhaka, Dhaka', '01812226333', '', '2021-09-05 07:45:06', '0000-00-00 00:00:00'),
(78, 'Maruf Hasan', 'Road no 4,House no 18,Flat no B/4, Dhanmondi, Dhaka, Dhaka', '01704444329', 'marufemon003@gmail.com', '2021-09-05 07:45:17', '0000-00-00 00:00:00'),
(79, 'Ahmed hasibul Hasan', 'Flat 2AB, House 173, Road : 2, Mohakhali DOHS Dhaka 1206\r\n', '01705110740', 'hasan@evelyntex.com', '2021-09-05 07:45:51', '0000-00-00 00:00:00'),
(80, 'Aminur Rahman', 'Vill: Betagaon, P. O: Aftabbibirhat, Feni Sadar, Feni, Chittagong', '01812351177', 'lablu.d@gmail.com', '2021-09-05 07:46:14', '0000-00-00 00:00:00'),
(81, 'Mr. Osman Goni', 'H# 3/10, F# A-2, Block-F,Lalmatia ,Dhaka', '01706000000', 'osman.dhk@gmail.com', '2021-09-05 07:46:22', '0000-00-00 00:00:00'),
(82, 'Hamza Al deen Gazi', 'Plot 1 Road 1 Block A Shanta The Vintage Flat D 11/12 Banasree Dhaka', '', '', '2021-09-05 07:46:55', '0000-00-00 00:00:00'),
(83, 'S M Salim Bhuiyan', 'Motijhil, Dhaka', '1813768876', 'bhuiyans@ymail.com', '2021-09-05 07:47:09', '0000-00-00 00:00:00'),
(84, 'Nahid Hashem', 'Dhaka National Medical Institute Hospital Shahid Faruq road (Near Al Arafah Islami Bank ltd) 43/2 West Jatrabari Jatrabari Dhaka', '01707581767', 'nahid.hashem.e42@gmail.com', '2021-09-05 07:47:27', '0000-00-00 00:00:00'),
(85, 'Nisha', 'H: 4, R: 9, Dhanmondi, Dhaka', '01816189800', '', '2021-09-05 07:51:02', '0000-00-00 00:00:00'),
(86, 'Anatul Araf', 'Apartment-A1, House- 10, Road-2/A, Sector - 12, Uttara, Dhaka, Bangladesh', '01816362673', 'anatul.araf33@gmail.com', '2021-09-05 07:51:49', '0000-00-00 00:00:00'),
(87, 'Ishteaque Rashid', 'H-277/A road-10 block A bashundhara 7 Dhaka Dhaka 1229', '01707955791', 'ishteaque2017@gmail.com', '2021-09-05 07:56:41', '0000-00-00 00:00:00'),
(88, 'Tanveer Hussein', 'Flat 14B, Helicon Tower, 19/1 Bakshibazar, Dhaka 1200', '01816541642', 'r.tanveer@gmail.com', '2021-09-05 07:57:05', '0000-00-00 00:00:00'),
(89, 'Mr. Khorshed', 'R#10,Gulshan 1,Dhaka', '01708126450', 'khorshed@rancon.com.bd', '2021-09-05 07:57:18', '0000-00-00 00:00:00'),
(90, 'Afzalur Rahman', '35 Lakecircus road, Kalabagan, Dhaka', '01708146363', '', '2021-09-05 08:02:10', '0000-00-00 00:00:00'),
(91, 'Shakil Ahsan', 'Dhanmondi, Dhaka', '01710099999', '', '2021-09-05 08:02:39', '0000-00-00 00:00:00'),
(92, 'Labib Hossain', '27 shantinagar peer shaheb ar goli, Paltan, Dhaka, Dhaka', '01710826830', 'labib7680@gmail.com', '2021-09-05 08:03:08', '0000-00-00 00:00:00'),
(93, 'Raihan Chowdhury', 'Flat - 6A, House - 518, Road -1, Block-D', '01711091006', '', '2021-09-05 08:03:34', '0000-00-00 00:00:00'),
(94, 'Bikrampur Traders', 'Bidisha super market, gulshan-2, Dhaka', '01711101487', '', '2021-09-05 08:03:59', '0000-00-00 00:00:00'),
(95, 'Prince ik', 'Home 43 ceantral road shoptoshi Dhaka Dhaka 1205', '01711166031', 'princeik1090@gmail.com', '2021-09-05 08:04:37', '0000-00-00 00:00:00'),
(96, 'Mr. sampo Shaha', 'H# Boroshana kunjo,Rony City, C I khola, Shiddhirganj,Narayanganj.', '01711278824', 'samposaha394@gmail.com', '2021-09-05 08:05:50', '0000-00-00 00:00:00'),
(97, 'SHIHAB MD SAGIR', 'MS SOBAHAN TRADERS SODOR ROAD NATUN BAZAR PATUAKHALI', '01711329511', 'turjotonni@gmail.com', '2021-09-05 08:06:34', '0000-00-00 00:00:00'),
(98, 'Taksim Wares Khan', '32/1 Chamelibag, Santinagar, Dhaka', '01711408150', '', '2021-09-05 08:07:13', '0000-00-00 00:00:00'),
(99, 'Zakir Hoshain', 'Swapnadanga R/A, West Dhanmondi, Dhaka - 1209', '01711504754', '', '2021-09-05 08:07:58', '0000-00-00 00:00:00'),
(100, 'Abul Bashar Md Sharit', 'Rangs Aparajita House - 14 [Apt-A2], Road - 9B Sector - 5, Uttara Dhaka-1230', '01711506350', '', '2021-09-05 08:08:22', '0000-00-00 00:00:00'),
(101, 'Simul', 'SAM group, SAM palace-5,House# J-62, Extention pallabi gate no #5, Rupnagar, Mirpur, Dhaka-1216,', '01714058460', '', '2021-09-05 08:08:53', '0000-00-00 00:00:00'),
(102, 'Menhazur Rahman', 'House-244, Lane-3, 1st Floor, Baridhara DOHS', '1711528400', 'rajubhuyan@yahoo.com', '2021-09-05 08:10:46', '0000-00-00 00:00:00'),
(103, 'Mr. Reaz', 'Niketon Road 8, H 38, Block C , Dhaka', '01711536063', 'reazmotors@yahoo.com', '2021-09-05 08:11:31', '0000-00-00 00:00:00'),
(104, 'Md Muneer Hussain', 'H12, R 14, S4, Uttara', '01711541443', 'muneer@continental-bd.com', '2021-09-05 08:12:32', '0000-00-00 00:00:00'),
(105, 'Azizur R Chowdhury', 'Road- 41, House - 48/A, Apt-8E Gulshan', '01711566317', 'azizurrc@yahoo.com', '2021-09-05 08:12:59', '0000-00-00 00:00:00'),
(106, 'Biplob Molla', 'Shekherchar (Baburhat), Fultola Bazar , B.D.R Bari, 01711737344 Biplob Molla, Narsingdi Sadar , Narsingdi, Dhaka', '01711737344', 'biplob4molla@gmail.com', '2021-09-05 08:13:27', '0000-00-00 00:00:00'),
(107, 'Obidur Rahman', 'House 456,. road 6, avenue 6, mirpur dohs. Dhaka', '01711942901', 'rainsun91@gmail.com', '2021-09-05 08:13:57', '0000-00-00 00:00:00'),
(108, 'Wahidul Islam', 'Mohammed Nurul Islam(Ex-chairman house) Anderson Road, Ward No:-03, Cox\'s Bazar municipality Mohammed Nurul Islam(Ex-chairman house) Cox\'s Bazar Cox\'s', '01712049065', 'wahidcox@yahoo.co', '2021-09-05 08:14:25', '0000-00-00 00:00:00'),
(109, 'Shirajul Haque Munir', 'Wireless Railgate Bepari Goli Boro Magbazar Dhaka', '01712143654', '', '2021-09-05 08:14:45', '0000-00-00 00:00:00'),
(110, 'Sheikh Tajuddin', 'Sumaiya Carrier,903.Pathantuli Road.Kodomtoli.CTG', '01712233805', 'tajumaya31@gmail.com', '2021-09-05 08:15:22', '0000-00-00 00:00:00'),
(111, 'Panna Ali', 'Bangladesh Rice Research Institute (Gazipur)', '01712466223', 'panna_ali@yahoo.com', '2021-09-05 08:15:57', '0000-00-00 00:00:00'),
(112, 'Md.Sohel Rana', 'Chapainawabganj sador, Chapainawabganj', '01712474950', 'mdsohel6193@gmail.com', '2021-09-05 08:16:36', '0000-00-00 00:00:00'),
(113, 'Ariful islam', '', '01712540170', 'arifbinashraf@gmail.com', '2021-09-05 08:17:12', '0000-00-00 00:00:00'),
(114, 'Monjurul Islam', 'Monjurul Islam m/s Khaja Ajmery Enterprise 131/1 H K Das Road Sutrapur Dhaka 1100', '01712577030', 'monjurul365days@gmail.com', '2021-09-05 08:17:54', '0000-00-00 00:00:00'),
(115, 'Mr.Opu', 'Laxmibazar, Puran dhaka, Dhaka', '01712585739', '', '2021-09-05 08:18:46', '0000-00-00 00:00:00'),
(116, 'Shanta Rahman', 'House 369, Road-28,New Dohs, Mohakhali,Dhaka', '01712838382', '', '2021-09-05 08:19:09', '0000-00-00 00:00:00'),
(117, 'Shanta Rahman', 'House 369, Road-28,New Dohs, Mohakhali,Dhaka', '01712838382', '', '2021-09-05 08:56:04', '0000-00-00 00:00:00'),
(118, 'Sharful Alam', 'House 135, Road 4 ,block-A ,Banani', '01713000258', '', '2021-09-05 08:56:29', '0000-00-00 00:00:00'),
(119, 'Mahmuda Islam', 'H#318,R#12,Block-C,Flat-A3,Bashundhara R/A', '01713040293', 'islammahmuda1977@gmail.com', '2021-09-05 08:57:37', '0000-00-00 00:00:00'),
(120, 'BM Razib', 'Nannu Textile Mills Ltd Factory, Bhulta, Rupganj, Narayanganj', '01713067767', 'bmrazib@gmail.com', '2021-09-05 08:58:06', '0000-00-00 00:00:00'),
(121, 'Mashrur Reza', 'Flat- 8B, Morium Tower-1, 78/3 Baridhara, Dhaka', '01713078177', '', '2021-09-05 08:58:41', '0000-00-00 00:00:00'),
(122, 'Nahid Molla', 'Gopalganj Sador, Gopalganj, Gopalganj, Gopalgonj', '01724089596', 'nahidmolla101@gmail.com', '2021-09-05 09:01:57', '0000-00-00 00:00:00'),
(123, 'Salauddin Noor', '900 Shahidbag,Dhaka 1217', '01726782709', 'salauddinnor5@gmail.com', '2021-09-05 09:02:26', '0000-00-00 00:00:00'),
(124, 'Rashedul Alam', 'Weblink communications limited House #101, 6th Floor, road#13/A, Block C, Banani, Dhaka 6th Floor Dhaka', '01727135737', 'rashed_cis@yahoo.com', '2021-09-05 09:02:55', '0000-00-00 00:00:00'),
(125, 'Md Mahmud Hasan', 'Faridpur Sadar, Faridpur', '0172872004', '', '2021-09-05 09:03:17', '0000-00-00 00:00:00'),
(126, 'AHM Masum', 'House-532/2 lane-11 Baridhara DOHS', '01730029274', '', '2021-09-05 09:03:45', '0000-00-00 00:00:00'),
(127, 'Nahid Hasan', '15/1,Boyra Farukia Mosque Cross Road Alor Vubon khulna Khulna 9000', '01730096916', 'n_hasan30@yahoo.com', '2021-09-05 09:04:19', '0000-00-00 00:00:00'),
(128, 'Mohammad Ahasanullah', 'House No - 15, Road No -02, Flat No - 1/AB, Mohammdia Housing Ltd. Mohammadpur Dhaka Dhaka 1207', '01730300655', 'rakin84@hotmail.com', '2021-09-05 09:04:48', '0000-00-00 00:00:00'),
(129, 'Mustafa Rabbi', 'House 39, Road 13, Sector 4, Uttara Third Floor Dhaka Dhaka 1230', '01730438180', 'mustafa_rabbi@live.com', '2021-09-05 09:05:23', '0000-00-00 00:00:00'),
(130, 'Dr. Abdullah Al Mamun', 'Sarak Bhaban, Tejgaon, Dhaka', '01730782571', '', '2021-09-05 09:07:18', '0000-00-00 00:00:00'),
(131, 'Ln Md Azazul Hoque', 'Mohakhali DOHS', '01732645445', 'azazuhoque555@gmail.com', '2021-09-05 09:07:47', '0000-00-00 00:00:00'),
(132, 'Mr.Ratan', 'Sharak bhabhan,Tejgaon ,Dhaka', '01734945010', '', '2021-09-05 09:08:11', '0000-00-00 00:00:00'),
(133, 'Aiman Jan Chowdhury', 'Flat no. 8A, House 67, Road 6, Block A, Section 12. Mirpur, Dhaka 1216.', '01737329656', 'ahnafjan44@gmail.com', '2021-09-05 09:20:21', '0000-00-00 00:00:00'),
(134, 'Mr Rounak Niloy', 'Mogbazar Dhaka', '1737715110', '', '2021-09-05 09:20:42', '0000-00-00 00:00:00'),
(135, 'Udoy Ali', 'Flat 4B, House 46/A, Road 6/A Dhanmondi R/A, Dhaka - 1209', '01737830412', 'udoy_ali@hotmail.com', '2021-09-05 09:21:20', '0000-00-00 00:00:00'),
(136, 'Shubham Chakrabarty', 'Holding no 3610, PTI Road, Habiganj Sadar, Habiganj 3300.', '01738477422', 'chakrabarty.shubham72@gmail.com', '2021-09-05 09:21:47', '0000-00-00 00:00:00'),
(137, 'Rayhan Ahmed Ridoy', 'House 01 Road 12/A Sector 7 apart-ab3', '01740229920', '', '2021-09-05 09:22:33', '0000-00-00 00:00:00'),
(138, 'Md. Abu Hasnath', 'Haque Residential Society, Khalpar road, Kadamtala Bridge, Basabo, Dhaka', '01742000478', '', '2021-09-05 09:22:56', '0000-00-00 00:00:00'),
(139, 'Shadman Rafid', 'Uttara Dhaka', '01742250606', '', '2021-09-05 09:23:17', '0000-00-00 00:00:00'),
(140, 'Shanta Ahmed', 'Demra Staff Quarter', '01745215478', '', '2021-09-05 09:23:44', '0000-00-00 00:00:00'),
(141, 'Md mortuza', 'Chadpur', '01745671901', '', '2021-09-05 09:24:08', '0000-00-00 00:00:00'),
(142, 'Md. Tazwar Bin Hannan', '42/46 century khaleque garden, Jamtola hazi brothers rd,Narayanganj', '01745699480', 'mdtazwar46@gmail.com', '2021-09-05 09:24:35', '0000-00-00 00:00:00'),
(143, 'Mr Shoaib', 'Chitagong', '01745856956', '', '2021-09-05 09:25:00', '0000-00-00 00:00:00'),
(144, 'Zamilur Rahman', 'Motijheel', '01745875896', '', '2021-09-05 09:26:13', '0000-00-00 00:00:00'),
(145, 'Zamilur Rahman', 'Motijheel', '01745875896', '', '2021-09-05 09:26:14', '0000-00-00 00:00:00'),
(146, 'Mr. Rakib', 'R: 10, H:10, Flat: A, Banani, Dhaka', '01746821312', '', '2021-09-05 09:26:38', '0000-00-00 00:00:00'),
(147, 'Tahsin Azmain', 'House 05, Road 24, Sector 10, Uttara, Dhaka 1230 A5 Dhaka Dhaka 1230', '01748037438', 'tahsinazmain@gmail.com', '2021-09-05 09:27:05', '0000-00-00 00:00:00'),
(148, 'Mr. Jibon', 'Halishohor,Chattagram', '01752722365', '', '2021-09-05 09:27:52', '0000-00-00 00:00:00'),
(149, 'Ershad Jan Chowdhury', '5/6 Block E, Lalmatia.( Near Lalmatia Mohila College) Dhaka.', '01755512349', '', '2021-09-05 09:28:19', '0000-00-00 00:00:00'),
(150, 'Mr Minhar', 'Dhanmondi Dhaka', '01755576679', '', '2021-09-05 09:28:42', '0000-00-00 00:00:00'),
(151, 'Hafizur Rahman', 'House-56,Road-3,Block-A,Dhaka Real Estate Housing 7th floor Mohammadpur Dhaka', '01758212374', 'galib.dj@gmail.com', '2021-09-05 09:29:19', '0000-00-00 00:00:00'),
(152, 'Mr. Ammar', 'H# 4c,R# 5,Bbeside central hospital, Dhanmondi ,Dhaka', '01759987586', '', '2021-09-05 09:29:40', '0000-00-00 00:00:00'),
(153, 'Tanvir Ahmed', 'Babupara, Poradaha, Mirpur, Kushtia', '01763001414', '', '2021-09-05 09:30:02', '0000-00-00 00:00:00'),
(154, 'Mr. Fahim', 'flat-9/10E,H#271-273,R# 7,I block,bashundhara R/A,Dhaka', '01764426322', 'fahimovi.shafiq@gmail.com', '2021-09-05 09:30:28', '0000-00-00 00:00:00'),
(155, 'Imtiaz Ahmed', '108, Nabami tower, Siddeshwari sudhi somaj, New circular road, siddeshwari, Dhaka, siddeshwari, Dhaka', '01765880181', 'Galib102@gmail.com', '2021-09-05 09:30:59', '0000-00-00 00:00:00'),
(156, 'K M Mahfuzul Islam', 'Holding 51, Middle Auchpara, Tongi, Gazipur., Gazipur, Dhaka, Tongi', '01766507775', 'kmmahfuzulislam@gmail.com', '2021-09-05 09:31:27', '0000-00-00 00:00:00'),
(157, 'M Hasan Adil', '1/4 Eskaton Garden,Dhaka-1000', '01770058540', 'muhib.adil@gmail.com', '2021-09-05 09:31:56', '0000-00-00 00:00:00'),
(158, 'Dr Ummay safa upoma', 'Flat no N-1, NHA Tower, 16-17 Block B,Lalmatia,Dhaka', '01771256177', '', '2021-09-05 09:32:25', '0000-00-00 00:00:00'),
(159, 'Md. Sadiqul Amin', 'Flat # 6B, House # 9, Road # 11/2, Block # B, Mirpur-10 (Near Panir Tank), Mirpur-10, Dhaka, Dhaka', '01772324284', 'sadiq.cseru@gmail.com', '2021-09-05 09:35:07', '0000-00-00 00:00:00'),
(160, 'Razaul kobir tonu', 'habigonj', '01772771374', '', '2021-09-05 09:35:29', '0000-00-00 00:00:00'),
(161, 'Zawad Hasan', 'House-951, Road-14, Avenue-02, Mirpur Dohs, Dhaka., Pallabi, Dhaka, Dhaka', '01776436745', 'zawadhasanalindo@gmail.com', '2021-09-05 09:35:59', '0000-00-00 00:00:00'),
(162, 'Md Ismail Hossain', '354/A East nakhalpara, Tejgaon', '01777277086', 'ifahim92@gmail.com', '2021-09-05 09:36:26', '0000-00-00 00:00:00'),
(163, 'Mr. Azraf', 'R# 21, H# B/184, Mohakhali DOHS, Dhaka', '', 'azraf@hossangroup.com', '2021-09-05 09:37:01', '0000-00-00 00:00:00'),
(164, 'Reuben Haffiz', 'Flat# 5A, H# 60A, R# 5,Banani DOHS,Dhaka-1213', '01777750962', '', '2021-09-05 09:37:23', '0000-00-00 00:00:00'),
(165, 'Dip Chakrabarty', 'Brammonbaria.Paikpara', '01777904057', 'dipcb2222@gmail.com', '2021-09-05 09:37:58', '0000-00-00 00:00:00'),
(166, 'Muhimin Fahad', 'Mohini 148/9, Lamapara, Shibgonj, Sylhet, Lamapara, Shibgonj, Sylhet, sylhet, bangladesh', '01779032299', 'fmuhimin@gmail.com', '2021-09-05 09:38:26', '0000-00-00 00:00:00'),
(167, 'Sajeed Hossain', 'House: 41, Road: 04, Block: F, Banani, Dhaka-1213', '01781859502', 'sajeed@meridian.international', '2021-09-05 09:38:51', '0000-00-00 00:00:00'),
(168, 'Md. Sherajul Islam', 'F# 5c, H# 22/1, R# 4, Dhanmondi -1209', '01782443322', 'sheraj146@gmail.com', '2021-09-05 09:39:20', '0000-00-00 00:00:00'),
(169, 'Tanzirul Rehaman Khan', 'H: 4, R: 9, Dhanmondi, Dhaka', '01782505050', '', '2021-09-05 09:39:45', '0000-00-00 00:00:00'),
(170, 'Zayed Hassan', 'Flat- 15B-7, House- Rupali, Khilkhet, Lake City Concord, Dhaka', '01783666669', 'zmusician@gmail.com', '2021-09-05 09:40:08', '0000-00-00 00:00:00'),
(171, 'Rubina Islam', 'Dijnajpur Bangladesh', '01784847858', '', '2021-09-05 09:40:28', '0000-00-00 00:00:00'),
(172, 'Mr Khairul', '444/A, Paglarpol,Mohakhali', '01785813884', '', '2021-09-05 09:40:50', '0000-00-00 00:00:00'),
(173, 'Ashiq Zaman', 'road 11 block c house 6 mirpur 1 dhaka 1216, Mirpur Model, Dhaka, Dhaka', '01841406816', 'ashiquzzaman1434@gmail.com', '2021-09-05 15:40:19', '0000-00-00 00:00:00'),
(174, 'Rahul Reza Ovi', 'Res Group, Motaleb Mansion (3rd FL), 2 R.K. Mission Road (Beside Inqlab Bhaban), Motijheel, Dhaka 1203, Bangladesh.', '01841999381', 'ovirahulreza@gmail.com', '2021-09-05 15:41:22', '0000-00-00 00:00:00'),
(175, 'Mr Abdur Rahman', 'Wari Dhaka Bangladesh', '01842565687', '', '2021-09-05 15:41:53', '0000-00-00 00:00:00'),
(176, 'Syed Kamrul Hassan', 'H# 11, R# 30,Sector 7, Uttara ,Dhaka-1230', '01844490006', 'mehedi@clt-bd.com', '2021-09-05 15:42:22', '0000-00-00 00:00:00'),
(177, 'Md. Anisuzzaman', 'R# E2,H# E107,Eastern Housing Ltd. Pallabi 2nd phase,Mirpur ,Dhaka-1216', '01847095314', '', '2021-09-05 15:42:49', '0000-00-00 00:00:00'),
(178, 'AR. Fazlay Alahi', 'H# 67,R# 17, Banani, Dhaka', '01847152326', 'fuad_2075@yahoo.com', '2021-09-05 15:43:17', '0000-00-00 00:00:00'),
(179, 'Dibbo Das', 'Kazikanda Ma clinic Rajbari Sadar Rajbari 7700', '01856688778', 'dibbodas606@gmail.com', '2021-09-05 15:44:29', '0000-00-00 00:00:00'),
(180, 'Mr Anik', 'H-172, rd-4,block-d,basundhara R/A', '01858833323', '', '2021-09-05 15:45:24', '0000-00-00 00:00:00'),
(181, 'Md. Imran Khan', '5/1 Purbo Maniknagar, Dhaka', '01867861851', '', '2021-09-05 15:45:50', '0000-00-00 00:00:00'),
(182, 'Rafiq Ctg', 'HOME:SD VILLA, moydar mill goli,Muradnagar P.S: bayezid Chattogram Chattogram Chattogram Sadar Amin Jute Mills Bangladesh', '01868031886', '', '2021-09-05 15:47:15', '0000-00-00 00:00:00'),
(183, 'MD. Sazib Ahmed', 'Nazipur, Naogaon [Sundarban Courier Branch- Najipur (Under Naogaon District. Branch Code- NJP)]', '01871887499', '', '2021-09-05 15:47:44', '0000-00-00 00:00:00'),
(184, 'Mehedi Hasan', 'Bhairab Stadium, Bhairab, Bhairab, Kishoreganj, Dhaka', '01876901901', 'meheditk800@gmail.com', '2021-09-05 15:48:15', '0000-00-00 00:00:00'),
(185, 'Mr. Rafi Shaheb', 'Block# J,R# 27, H# 5,Banani, Dhaka', '01883096207', '', '2021-09-05 15:48:49', '0000-00-00 00:00:00'),
(186, 'Shakil Rahman', 'H# B3,R# 58,Gulshan 2,Dhaka', '01910999000', 'shakil@constellationamc.com', '2021-09-05 15:49:11', '0000-00-00 00:00:00'),
(187, 'Raihanul Kabir', 'Mirpur Dhaka Dhaka Dhaka 1216', '01911211222', 'r.b2kabir.bd@gmail.com', '2021-09-05 15:49:38', '0000-00-00 00:00:00'),
(188, 'Faizur Rahman', 'Faizur Rahman, 55 siddheswari Rupayan swapno niloy Near Monwara hospital Opposite viqarunnisa school gate no 9 Flat B10, Dhaka, Dhaka, Dhaka', '01911367920', 'faizurr@gmail.com', '2021-09-05 15:50:14', '0000-00-00 00:00:00'),
(189, 'Ramim Ahmed', 'Flat-04, Rupali Bank Bhaban (Beside Adamji Cantonment School)Cantonment Dhaka 1206', '01911892631', 'ramimfpl@gmail.com', '2021-09-05 15:50:48', '0000-00-00 00:00:00'),
(190, 'Shamim al Mamun', 'Tongi College Gate Donto Para House Building, Sharkar Masjid er Pashe, , Dhaka Gazipur, tongi', '01912389583', 'exceptions.computer@gmail.com', '2021-09-05 15:51:16', '0000-00-00 00:00:00'),
(191, 'Muhammad Faiyaz Murshed', 'House #50, Road 7/A, Apt-A5,Dhanmondi A5 Dhaka Dhaka 1209', '01912772860', 'murshed.faiyaz@gmail.com', '2021-09-05 15:51:51', '0000-00-00 00:00:00'),
(192, 'Mahfuzur Rahman', '153,Shantinagar,Dhaka', '01912920660', '', '2021-09-05 15:52:06', '0000-00-00 00:00:00'),
(193, 'Md Rubel Islam', 'National Bank Limited, Uttara Branch, Sector 7, House Building, Uttara, Dhaka, Dhaka', '', '', '2021-09-05 15:55:28', '0000-00-00 00:00:00'),
(194, 'Md Zahid Hassan', 'House# 35 Road# 12 Sector# 4, Uttara, Dhaka, Dhaka', '01913061234', '', '2021-09-05 15:56:02', '0000-00-00 00:00:00'),
(195, 'Tanzir Ahmed Choudhuri', 'House # 27, Road # 6, Dhanmondi R/A Flat # A4 Dhaka Dhaka 1205', '01914602221', 'choudhuri.tanzir@gmail.com', '2021-09-05 15:56:52', '0000-00-00 00:00:00'),
(196, 'Tanzir Choudhuri', 'Flat # A4, House # 27, Road # 6, Dhanmondi R/A A4 Dhaka Dhaka 1205', '01914602221', 'choudhuri.tanzir@outlook.com', '2021-09-05 15:57:21', '0000-00-00 00:00:00'),
(197, 'Dewan Asif Al Arafat', 'H:9, R:4 Sec: 3, Uttara.', '01917999969', '', '2021-09-05 15:57:46', '0000-00-00 00:00:00'),
(198, 'Mr Refayat Ullah', 'House-8E,Road-14(new) Flat-1E, Dhanmondi, dhaka', '01919827243', '', '2021-09-05 15:58:10', '0000-00-00 00:00:00'),
(199, 'Eamad Uddin', '26# Nando Kumar Dutta Road,Churihatra,Lalbagh,Dhaka 1211 NoorJahan Orchid Dhaka,Lalbagh Dhaka 1211', '01921117333', 'eamaduddin@gmail.com', '2021-09-05 15:58:37', '0000-00-00 00:00:00'),
(200, 'Mohammad Nayem', 'House#152, Road#02, North Shyamoli, West Agargaon Near Kaji Office, Amena Malek Masjid. (Skin Touch Beauty Parlor Goli.) Dhaka Dhaka 1207', '01922003953', 'iamnayem@gmail.com', '2021-09-05 15:59:45', '0000-00-00 00:00:00'),
(201, 'AL-AMIN MOHAMMED', 'GA-195,Mohakhali Wireless Gate (Opposite Side Of Titumir College Gate),Dhaka-1213. MOB:01753888188., MOHAKHALI, DHAKA, BANGLADESH.', '01922955555', 'alamin1357@gmail.com', '2021-09-05 16:00:30', '0000-00-00 00:00:00'),
(202, 'Shafkat Reaz', 'Flat: 4A, House: 28, Road: 4, Dhaka Cantonment - 1206', '01924086464', 'shafkatreaz@gmail.com', '2021-09-05 16:01:53', '0000-00-00 00:00:00'),
(203, 'Md Hasan', 'Ahsan Ullah, 10,Toyenbee circular Road, Motijheel, Dhaka -1000,Bangladesh, Motijheel, Dhaka, Dhaka', '01924424184', '', '2021-09-05 16:02:14', '0000-00-00 00:00:00'),
(204, 'Rochita Sakina', '27, Shilpachariya Joynul Abedin Road Shantinagar Dhaka Sky View Group', '01926665713', '', '2021-09-05 16:02:38', '0000-00-00 00:00:00'),
(205, 'Shabbir Dewan', 'Pollibiddut bus stand, Shafipur, Kaliakair, Gazipur Dewan tower, pollibiddut, Shafipur Pollibiddut bus stand, Shafipur, Kaliakair, Gazipur Gazipur 175', '01927370335', 'dewanshabbir@gmail.com', '2021-09-05 16:03:03', '0000-00-00 00:00:00'),
(206, 'farukul islam', 'duet, Dhaka university of engineering and technology, gazipur sadar gazipur, islam', '01927933199', 'farukulislam98@gmail.com', '2021-09-05 16:03:29', '0000-00-00 00:00:00'),
(207, 'Mr. Kabir', 'Flat B2, 161/5, Bagan Bari, Dhaka Cantonment, Dhaka', '01929371500', 'mail-kabir4229@yahoo.com', '2021-09-05 16:03:54', '0000-00-00 00:00:00'),
(208, 'MD Noman', 'House#07, Road#11, Mohammadia Housing Society, Mohammadpur, Dhaka., Mohammadpur, Dhaka, Dhaka', '01939900057', 'sumon2000it@gmail.com', '2021-09-05 16:04:29', '0000-00-00 00:00:00'),
(209, 'Mobashir Hossan Rifat', 'Jubilee Road, Chittagong', '01976725736', '', '2021-09-05 16:04:53', '0000-00-00 00:00:00'),
(210, 'Rifaat Newaz', 'Flat 2C, Plot 1&3, Road 5, Janata Housing, Agargaon Flat 2C Dhaka Dhaka', '01977642413', 'rifaatnewaz@gmail.com', '2021-09-05 16:05:18', '0000-00-00 00:00:00'),
(211, 'Md Jobaer Hossain', '53/2 North Brook Hall Road, Banglabazar, Dhaka Shop 1 Sutrapur Dhaka 1100', '01977750005', 'sikderjobaer@gmail.com', '2021-09-05 16:05:43', '0000-00-00 00:00:00'),
(212, 'SHAMSUDDIN KHAN', '77/2 A.K.M Shamsujjoha road, Noth Chashara Dhaka Narayanganj Narayanganj Sadar Bangladesh', '01978975762', '', '2021-09-05 16:06:04', '0000-00-00 00:00:00'),
(213, 'Muhammad Niaz Morshed', 'House-50, Road :7/A Apt: A5, Dhanmondi R/A', '01989982102', '', '2021-09-05 16:07:15', '0000-00-00 00:00:00'),
(214, 'Dr Jashim', 'House 11 2nd floor Block C Banasree Main Road', '01989997701', 'tarunna.pvt@gmail.com', '2021-09-05 16:07:39', '0000-00-00 00:00:00'),
(215, 'mahbubur rahman', 'village -kutubpur, post-pirpurkulla,thana-damurhuda, District -Chuadanga Poschimpara Damurhuda Chuadanga 7221', '01303510963', 'mahbuburrahman3971@gmail.com', '2021-09-05 16:09:31', '0000-00-00 00:00:00'),
(216, 'Nayeem Fardose', '302, shantee neer, 1st floor, flat 2D, Ahammadnogor, Mirpur-1, Dhaka-1216', '01610507057', 'shushamp@gmail.com', '2021-09-05 16:09:57', '0000-00-00 00:00:00'),
(217, 'Fahad Kabir', 'Unique Footwear Industries House no : 6/2, Orphanage road, Lalbag, near Dhakeshwari mandir Apartment name : Queens heights Dhaka Dhaka 1211', '01675698846', 'fahadkabir.fk@gmail.com', '2021-09-05 16:10:20', '0000-00-00 00:00:00'),
(218, 'Rifat Ahmed', '69/1 Kadamtala, East Basabo, Dhaka - 1214', '01736981848', 'arannyabd.amwaj@gmail.com', '2021-09-05 16:11:19', '0000-00-00 00:00:00'),
(219, 'Ridoy Rayhan', 'Royal Group House 1, Road 12/A, Sector 07 Apt- AB3 Uttara Dhaka 1230', '01740229920', 'rayhanahmedridoy@gmail.com', '2021-09-05 16:11:49', '0000-00-00 00:00:00'),
(220, 'Nayem Islam', 'House#152, Road#02, North Shyamoli, West Agargaon (Near Kazi Office) 3rd Floor Dhaka Dhaka 1207', '01922003953', 'iamnayem@yahoo.com', '2021-09-05 16:12:12', '0000-00-00 00:00:00'),
(221, 'niloy Das', '83, Boyra, Khulna', '01714403254', 'niloy.das970@gmail.com', '2021-09-05 16:12:37', '0000-00-00 00:00:00'),
(222, 'Akila Begum', 'Wireless Railgate Bepari Goli Boro Magbazar Dhaka', '', '', '2021-09-05 16:13:06', '0000-00-00 00:00:00'),
(223, 'Mr Rahman', 'Uttara Sector 6', '', '', '2021-09-05 16:13:48', '0000-00-00 00:00:00'),
(224, 'Mr Minhaz', 'House No 82 Road 17/A Block E Banani', '', '', '2021-09-05 16:14:05', '0000-00-00 00:00:00'),
(225, 'Mr Asif', 'House No 23/G Road 2 Block D Bashundhara R/A Dhaka', '', '', '2021-09-05 16:14:19', '0000-00-00 00:00:00'),
(226, 'Mr Shawkat Islam', 'Gulshan 2 Dhaka 1212', '', '', '2021-09-05 16:14:32', '0000-00-00 00:00:00'),
(227, 'Mr Moinul', 'Dubai Sharja', '', '', '2021-09-05 16:14:51', '0000-00-00 00:00:00'),
(228, 'Mr Jubayer', 'Bashundhara Block G Road 9', '', '', '2021-09-05 16:15:05', '0000-00-00 00:00:00'),
(229, 'Afroza Begum ', 'Road Block I House 387 Bashundhara R/A', '01703415543', '', '2021-09-05 16:15:51', '0000-00-00 00:00:00'),
(230, 'Mr Ali Arsalan', 'Flat-A1, House-22/A Road-3 Old DOHS Banani Dhaka 1212', '01713117791', '', '2021-09-06 06:42:23', '0000-00-00 00:00:00'),
(231, 'Mr Shamim Chowdhury', 'Ghasipara, Dinajpur', '01713131745', '', '2021-09-06 06:42:46', '0000-00-00 00:00:00'),
(232, 'Nahid Haider', '7 Shegun Bagicha Eastern Dream, Shahbag Dhaka.', '01713228446', '', '2021-09-06 06:43:11', '0000-00-00 00:00:00'),
(233, 'Mr. Salman', 'H#4, R#59,Gulshan 2,Dhaka', '01713230087', 'salmanm86@gmail.com', '2021-09-06 06:43:36', '0000-00-00 00:00:00'),
(234, 'Mr.Aziz', 'UCEP Cheyna Tower 25 Shegunbagicha', '01713238567', 'amitfaisal@gmail.com', '2021-09-06 06:44:13', '0000-00-00 00:00:00'),
(235, 'Ahmed Fayez', 'Sylhet', '01713300200', 'holysylhettower@gmail.com', '2021-09-06 06:45:38', '0000-00-00 00:00:00'),
(236, 'S M Zobair', '292/c,Khilgaon,Dhaka-1219', '01713370595', 'zubo013@yahoo.com', '2021-09-06 06:46:04', '0000-00-00 00:00:00'),
(237, 'Osman Haidar', 'House#11A, Road#90, Gulshan 2, Dkaka-1212', '01713482060', 'osman.haidar@trax.com.bd', '2021-09-06 06:47:34', '0000-00-00 00:00:00'),
(238, 'Dipto Dey', '1/7, S S Khled Road,Jamal Khan,  ABC MAHBUB HILLS(oposite of rima convention centre) Flat E3, Chittagong', '01676848737', 'diptodey087@gmail.com', '2021-09-06 07:05:00', '0000-00-00 00:00:00'),
(239, 'Shovan Sarkar', 'mobarak house(3rd floor), 42 m m ali road, wasa circle,lal khan bazar, chattagram-4202', '01715001385', '', '2021-09-06 19:02:29', '0000-00-00 00:00:00'),
(240, 'Tahmeed Alam Sameen', 'H#1255,Road-10,Avenue 2,Mirpur DOHS', '', 'tahmeed_alam_sameen@bat.com', '2021-09-07 04:20:20', '0000-00-00 00:00:00'),
(241, 'Reliance Rizia Rayhana', 'Reliance Rizia Rayhana Plot :152 Road :7 Block I Bashundhara R/A Flat: 8A', '01713756221', '', '2021-09-07 04:20:53', '0000-00-00 00:00:00'),
(242, 'Ahmed Mehedi', '71, Mohakhali Wireless Gate Nitol Niloy Center, Dhaka', '171402499', '', '2021-09-07 04:21:17', '0000-00-00 00:00:00'),
(243, 'Zubayer Ahmed', 'House-1/x, Road-9, Block-G, Bashundhara R/a Flat-A3 Dhaka Dhaka', '1714323413', 'ahmedzubayer@yahoo.com', '2021-09-07 04:21:40', '0000-00-00 00:00:00'),
(244, 'Niloy Das', '83 ,Boyra, Khulna', '01714403250', 'niloydas970@gail.com', '2021-09-07 04:22:14', '0000-00-00 00:00:00'),
(245, 'Md Anwarul Kabir', '161/5, Bagan Bari, Dhaka Cantonment, Dhaka', '01715028795', '', '2021-09-07 04:22:34', '0000-00-00 00:00:00'),
(246, 'Biswajit K Dey', '10th Floor (2nd Annex Building), IAD, Bangladesh Bank, Motijheel C/A, Dhaka-1000.', '01715088933', 'biswa.bd@gmail.com', '2021-09-07 04:22:56', '0000-00-00 00:00:00'),
(247, 'Jezaul Khair Hazique', 'H# 49,R# 15/a,F# c4,Dhanmondi,Dhaka', '01715327112', 'jezaulkhairhazique@gmail.com', '2021-09-07 04:23:21', '0000-00-00 00:00:00'),
(248, 'Mohammed Farhan Khan', 'Lucky Villa, House-4/B, Flat- C/2, Road -2, Gulshan -1', '01715384968', '', '2021-09-07 04:23:40', '0000-00-00 00:00:00'),
(249, 'Abdur Rahman Faisal', 'Ware Street, wari. (opposite of wari thana) House no.31 Dhaka Dhaka 1203', '01715551106', 'abdurrahman.92@hotmail.com', '2021-09-07 04:24:14', '0000-00-00 00:00:00'),
(250, 'Fakaruddin Ali Hyder Khan', 'NCC BANK BHABAN.13/1,13/2,TOYENBEECIRCULAR ROAD MOTIJHEEL,C/A. DHAKA DHAKA Dhaka', '01715591774', 'fakaruddin1803@gmail.com', '2021-09-07 04:24:35', '0000-00-00 00:00:00'),
(251, 'Sharmin Akter', '95/b Middle Pirerbag Near 60 Feet Road Paka Masjid Dhaka', '01715668074', '', '2021-09-07 04:24:59', '0000-00-00 00:00:00'),
(252, 'Mrs Kakoli', 'House- 20/A/3, Block -G, Road-17 Bashundhara R/A Dhaka - 1229.', '01715791329', '', '2021-09-07 04:25:19', '0000-00-00 00:00:00'),
(253, 'Shafayat Hossain', 'House 16, Road 1, Sector 10, Uttara, Dhaka 2nd floor Dhaka Dhaka', '0171579132', 'hossain.sh@gmail.com', '2021-09-07 04:25:46', '0000-00-00 00:00:00'),
(254, 'Ibrahim Khalil', 'H# 16, R# avenue 9,Sector# 15C/1,Uttara,Dhaka', '01715894554', 'winbengal@yahoo.com', '2021-09-07 04:26:08', '0000-00-00 00:00:00'),
(255, 'Mr Hafiz', '', '01716050959', '', '2021-09-07 04:26:41', '0000-00-00 00:00:00'),
(256, 'Mukarram Sohul', 'Banani Nam Village Building No-2A Flat B1 Road 1 Block I', '01716785863', '', '2021-09-07 04:27:03', '0000-00-00 00:00:00'),
(257, 'Riyad Ashraf', 'Mahbuba Villa, comilla medical college road, kuchaitoly, comilla, Bangladesh', '01716897694', 'riyadashraf456@gmail.com', '2021-09-07 04:27:31', '0000-00-00 00:00:00'),
(258, 'Mahade Iqbal', 'House-40, Road-11, Sector-4, Uttara, Uttara, Dhaka, Dhaka', '01717001940', '', '2021-09-07 04:27:53', '0000-00-00 00:00:00'),
(259, 'Md. Makibul Alalm', 'MRS industries Ltd. Bacic industries estate, Kushtia', '01717015863', '', '2021-09-07 04:28:14', '0000-00-00 00:00:00'),
(260, 'Md. Kamrul Ahmed', 'R# 6,Block# E,H# 12/14, NIketon,Gulshan 1', '01717299978', 'kamrul01@gmail.com', '2021-09-07 04:28:36', '0000-00-00 00:00:00'),
(261, 'Rubel Dey', 'Cox\'s bazar ,court building', '01717381981', '', '2021-09-07 04:28:57', '0000-00-00 00:00:00'),
(262, 'AREA44', 'CHITTAGONG', '01717472112', '', '2021-09-07 04:29:36', '0000-00-00 00:00:00'),
(263, 'Ujjal Hazari', 'SuchanaLink, Riaz Tower (2nd Floor), Gouripur Bazar, Daudkandi, Cumilla', '01717535450', 'mimpna@gmail.com', '2021-09-07 04:30:00', '0000-00-00 00:00:00'),
(264, 'Asif Mahmud', 'Flat:B-3, House: 41, Road: 5, Dhaka, Dhanmondi, Dhaka', '01717764540', 'asifmahmud1506@gmail.com', '2021-09-07 04:30:24', '0000-00-00 00:00:00'),
(265, 'Khairulislam Jiku', '1/j Middle Bashabo, Modina Road', '01717819130', 'jack.jiku@yahoo.com', '2021-09-07 04:30:48', '0000-00-00 00:00:00'),
(266, 'Ahmadia Traders', 'Gulshan 2 circle, Bidisha market.', '01974607691', '', '2021-09-07 09:43:32', '0000-00-00 00:00:00'),
(267, 'Humaira', 'Mirpur 11, Kalsi Road, Shangbadik Plot, Road-4, Building-95', '01631917060', '', '2021-09-08 05:00:52', NULL),
(268, 'Ventra X Radisson', 'Radisson Blu Hotel', '01954320968', '', '2021-09-12 09:38:21', NULL),
(269, 'Ahnaf Jan Chowdhury', '', '01749680506', '', '2021-09-12 09:44:33', NULL),
(270, 'Allhar Dan Light House', 'New Eskaton road,Banglamotor,Ramna,Dhaka', '01405481444', '', '2021-09-12 10:05:23', NULL),
(271, 'Md Benjir Ahmed', 'Flat-C4, 34 North Dhanmondi, Kalabagan, Dhaka 1205', '01722227303', '', '2021-09-14 06:52:39', '0000-00-00 00:00:00'),
(272, 'Irtisam Ahmed', 'Flat- a2, Madina Amena Tower, 9/1, Taltola, Agargaon, Dhaka flat a2, Madina Amena Tower Dhaka Dhaka', '', 'dhruba1@gmail.com', '2021-09-14 06:52:53', '0000-00-00 00:00:00'),
(273, 'Nayeem Us Samad Chowdhury', 'New D.o.h.s Mohakhali road-28 house-383 Dhaka Dhaka - North Mohakhali Bangladesh', '', '', '2021-09-14 06:53:25', '0000-00-00 00:00:00'),
(274, 'MD Alamin', '27, Shilpachariya Joynul Abedin Road Shantinagar Dhaka Sky View Group', '', '', '2021-09-14 06:55:01', '0000-00-00 00:00:00'),
(275, 'Arman Hossain', 'Samim Sarani, Shawrapara, Mirpur', '01721733887', '', '2021-09-14 06:55:50', '0000-00-00 00:00:00'),
(276, 'Arman Hossain', 'Samim Sarani, Shawrapara, Mirpur', '', '', '2021-09-14 07:04:25', '0000-00-00 00:00:00'),
(277, 'Imran Islam', '21/6 New Khanpur , Bank Colony, Narayanganj, Naryanganj Sadar, Narayanganj, Dhaka', '', 'imran.timeknit@gmail.com', '2021-09-14 07:05:08', '0000-00-00 00:00:00'),
(278, 'Md Benjir Ahmed', 'Flat-c-4,34 North Dhanmondi,Kalabagan, Dhaka-1205', '', 'benjiracc14@gmail.com', '2021-09-14 07:05:54', '0000-00-00 00:00:00'),
(279, 'Md. Ahsan Habib', 'Silken Sewing Ltd. 197, Khan Palace, Dighir chala road, Truck Stand, Chandona Chowrasta 1A (1st floor) Gazipur Chowrasta Gazipur 1702', '01722411388', 'masum.ahsanhabib@gmail.com', '2021-09-14 07:06:32', '0000-00-00 00:00:00'),
(280, 'Mr Shahriar', 'Flat-D1 House : 15, Road:07 Gulshan :1 Dhaka', '', 'hasan97263@gmail.com', '2021-09-14 07:07:11', '0000-00-00 00:00:00'),
(281, 'Md Quamrul Ahsan', 'house-13,road-3,block-B, west dhanmondi residential area , bosila bridge,mohammadpur, dhaka', '', '', '2021-09-14 07:07:38', '0000-00-00 00:00:00'),
(282, 'Sayem Khandaker', '4 Holy lane, Shyamoli, Ring road, Dhaka-1207 Ashiana apartment, Flat:A2-02 Dhaka Dhaka 1207', '', 'sayemkhandaker6@gmail.com', '2021-09-14 07:08:10', '0000-00-00 00:00:00'),
(283, 'Bikrampur Tradders', 'Gulshan 2 ', '01731865855', '', '2021-09-14 09:19:02', NULL),
(284, 'Dr Morshed', 'Mugda Khilgaon Dhaka ', '01712161900', '', '2021-09-15 05:39:47', NULL),
(285, 'P 2 P', '687 Mehedibag Chittagong, 4203\r\n\r\n', '01709665010', '', '2021-09-15 07:00:55', '0000-00-00 00:00:00'),
(286, 'P2P.', '687 Mehedibag Chittagong, 4203', '', '', '2021-09-15 07:11:24', '0000-00-00 00:00:00'),
(287, 'Mr Arafat', 'Apt A1 House 55 Road 28 Gulshan 1', '01833182667', '', '2021-09-18 06:18:47', '0000-00-00 00:00:00'),
(288, 'ariq husain', 'road 141 house 4 apart b9 gulshan 1 dhaka', '01817625368', '', '2021-09-18 06:37:45', NULL),
(289, 'Md Sazib Ahmed', 'Nazirpur Naogaon (Shundarban Courier Branch- Najirpur Branch Code -NJP)', '01871887499', '', '2021-09-18 07:00:35', '0000-00-00 00:00:00'),
(290, 'Naushad Rahman', 'House:23/Q Road:2 Block:D Apt: 4 Bashundhara R/A Dhaka', '01833181390', '', '2021-09-18 07:02:41', '0000-00-00 00:00:00'),
(291, 'Mr Shakil Ahmed', '24 Nondolal Dattalane Luxmibazar Sutrapur ', '01840507777', '', '2021-09-18 07:03:34', '0000-00-00 00:00:00'),
(292, 'Ahmed Food Products PVT LTD', 'M/4/4 Road -07 Section-07 Mirpur Dhaka', '01952229011', '', '2021-09-18 07:04:54', '0000-00-00 00:00:00'),
(293, 'Mr Mahbubur Rahman ', 'Village Kutubpur, P.O Pirpurkulla, P.S- Damurhuda Distric Chuadanga, Poschimpara-7221', '01303510963', '', '2021-09-18 07:06:45', '0000-00-00 00:00:00'),
(294, 'Md Shahriar', 'Fullbari, Dinajpur', '01817296294', '', '2021-09-18 08:27:22', NULL),
(295, 'atik khan', '', '01717224184', '', '2021-09-18 09:23:39', NULL),
(296, 'taufiq rahman', '', '01817031441', '', '2021-09-18 09:33:40', NULL),
(297, 'Arnob Furniture', 'Hazipara north Badda, Dhaka', '01611314302', '', '2021-09-19 03:52:13', NULL),
(298, 'Mrinal', '172 Gawai Madrasa Ashkona.', '01833353270', '', '2021-09-19 06:05:20', NULL),
(299, 'Mr. Jewel', 'Chattai,Chottogram', '01817714041', '', '2021-09-19 06:41:16', NULL),
(300, 'G M Faruk', 'WASA Bhaban , Dampara, Chattogram\r\nJBl, WASA Corporate Branch\r\nChattogram\r\nChattogram\r\n4000', '01714345629', 'gmfaruk@outlook.com', '2021-09-19 06:50:58', NULL),
(301, 'Mr Jibon', 'Halishohor,Chattogram', '01752788365', '', '2021-09-19 07:52:21', NULL),
(302, 'Mr Hamidul Islam', 'Postogola,Dhaka', '01786850616', '', '2021-09-19 08:01:39', '0000-00-00 00:00:00'),
(303, 'Mr Souvik', 'Bijoy Rakin City,Mirpur,Dhaka', '01787146292', '', '2021-09-19 08:02:10', '0000-00-00 00:00:00'),
(304, 'Mr. B M M Bari', 'House-200/3B, Kuril School Road Vatara Dhaka 1229', '01791034328', '', '2021-09-19 08:04:44', '0000-00-00 00:00:00'),
(305, 'Mohammad Qaisar Ali', 'Flat - A2, Melody, Plot 3A, Road - 74, Gulshan2', '01794433687', '', '2021-09-19 08:05:59', '0000-00-00 00:00:00'),
(306, 'Shamim Rahman', 'Shamim Rahman, house 75, Road 4, Black- B, Niketon Gulshan 1, Gulshan, Dhaka, Dhaka', '01812226333', '', '2021-09-19 08:18:51', '0000-00-00 00:00:00'),
(307, 'Nisha', 'H: 4, R: 9, Dhanmondi, Dhaka', '01816189800', '', '2021-09-19 08:21:25', '0000-00-00 00:00:00'),
(308, 'Prime minister Ofiice', 'Prime Minister office,Tejgaon', '01726040526', '', '2021-09-19 09:24:03', NULL),
(309, 'Mohammad Farhan Khan', 'Lucky Villa,House-4/B,Flat- c/2,Road-2, Gulshan-1', '01715384968', '', '2021-09-19 09:25:34', '0000-00-00 00:00:00'),
(310, 'Mr. Raju Bhuiyan', 'Heritage Resort, Narshingdi', '01711076363', '', '2021-09-19 09:26:33', '0000-00-00 00:00:00'),
(311, 'Mr Sadi', 'Mahfuz villa,Building 8,Road 7b,Nikunjo-1,Dhaka', '01676948864', '', '2021-09-19 09:27:44', '0000-00-00 00:00:00'),
(312, 'Navid Anwar', 'R# 19/1,H#69,Rupnagar R/A,Mirpur,Dhaka-1216', '01914031530', '', '2021-09-19 09:28:46', '0000-00-00 00:00:00'),
(313, 'Mr. Osman Goni', 'H# 3/10, Flat: A/2,Block-F,Lalmatia,Dhaka', '01706000000', '', '2021-09-19 09:30:23', '0000-00-00 00:00:00'),
(314, 'Mr. Reaz', 'Niketon Road 8,H-38, Block-C,Dhaka', '0171153606', '', '2021-09-19 09:40:09', '0000-00-00 00:00:00'),
(315, 'Mohammed Shakil', 'Rangs Lily, flat#B1, house#38, Road#2, Block-B, Niketon B1 Dhaka Dhaka 122', '01817017848', 'mdsbd@yahoo.com', '2021-09-19 09:45:54', '0000-00-00 00:00:00'),
(316, 'Taufiq Rahman', 'House 77/A (5th. floor), Road 14 Block B, Banani R/A Dhaka Dhaka 1213', '01817031441', 'taufiqzr2000@gmail.com', '2021-09-19 09:46:30', '0000-00-00 00:00:00'),
(317, 'Shaikat Ahmed Shiplu', 'House-182, Road-W/3, Block-C, Eastern Housing, Pallabi Dhaka', '', '', '2021-09-19 09:47:00', '0000-00-00 00:00:00'),
(318, 'Md Shahriar', 'fulbari,dinajpur', '', '', '2021-09-19 09:47:31', '0000-00-00 00:00:00'),
(319, 'Muhibur Rahman Saad', '334 Senpara Parbata, Kafrul, Mirpur-10, Dhaka Dhaka Dhaka - North Mirpur 10 Bangladesh', '', '', '2021-09-19 09:59:25', '0000-00-00 00:00:00'),
(320, 'Ahmadia Traders', 'Gulshan-2 Circle', '01974606781', '', '2021-09-19 10:00:34', '0000-00-00 00:00:00'),
(386, 'Dr. Romel', 'Urban pantheaneer,Apt# 11-A(11th floor),H# 76, R# 11/A, Dhanmondi R/A, Dhaka-1209', '01677263059', '', '2021-10-30 03:27:18', NULL),
(322, 'Mahbub Alam', 'house 802.road 3,baitulamn housing sosiet,adabar.a/3 dhaka 1207', '01819244492', '', '2021-09-19 12:31:21', NULL),
(323, 'Shovon Group', 'Dhanmoundi, r#13, h#8A/B', '01711566551', '', '2021-09-19 13:06:23', NULL),
(324, 'Shovon Group of Companies', 'West masdair , fatullah ,narayangang', '01884184715', '', '2021-09-19 13:19:45', NULL),
(325, 'Shaikat Ahmed Shiplu', 'House-182, Road-W/3, Block-C, Eastern Housing, Pallabi Dhaka', '01817182262', '', '2021-09-20 05:12:21', '0000-00-00 00:00:00'),
(326, 'md shahriar', 'Fulbari,dinajpur', '01817296294', '', '2021-09-20 05:12:50', '0000-00-00 00:00:00'),
(327, 'Md Rakibul Hasan', 'Royal Society Residential Area, Lucky Villa (2nd Floor), 249-C/1, South Jatrabari, Jatrabari, Dhaka-1204, Jatrabari, Dhaka, Dhaka', '01817583476', 'hnrakib@gmail.com', '2021-09-20 05:13:10', '0000-00-00 00:00:00'),
(328, 'Ariq Husain', 'R# 141,H# 4,APT# B9,Gulshan 1,Dhaka', '01817625368', 'ariq.husain@gmail.com', '2021-09-20 05:13:30', '0000-00-00 00:00:00'),
(329, 'Mr. Jewel', 'Chattai,Chattagram', '01817714041', '', '2021-09-20 05:13:59', '0000-00-00 00:00:00'),
(330, 'Hasan Afroz', 'House#25 Flat#2B, Road#01, Dhanmondi Dhaka Dhaka 1205', '01818273067', 'hafroz@yahoo.com', '2021-09-20 05:14:20', '0000-00-00 00:00:00'),
(331, 'Mohibul Azam', 'BAT, Kalabagan', '01818453990', 'mohibulazam@gmail.com', '2021-09-20 05:16:00', '0000-00-00 00:00:00');
INSERT INTO `customers` (`id`, `customer_name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(332, 'Mahbub Alam', 'House 802, Road 3, Baitulaman Housing Society, Adabar. A/3 Dhaka Dhaka 1207', '01819244492', 'mahbubalam3265@gmail.com', '2021-09-20 05:16:30', '0000-00-00 00:00:00'),
(333, 'Choton Dey', '958,hafizullah madrasa,purbo shewrapara., mirpur, Dhaka,', '01819013041', '', '2021-09-20 05:16:52', '0000-00-00 00:00:00'),
(334, 'Mohammad Zubaer', '18/ka west nakhalpara Tejgaon Dhaka 1215, Tejgaon, Dhaka, Dhaka', '01819116772', 'nikonhive@gmail.com', '2021-09-20 05:17:08', '0000-00-00 00:00:00'),
(335, 'Mrs Kakoli', 'House- 20/A/3, Block -G, Road-17 Bashundhara R/A Dhaka - 1229.', '01819226317', '', '2021-09-20 05:17:29', '0000-00-00 00:00:00'),
(336, 'Mr. Rajan', 'Mafizul Islam Abashik Elaka,Chanmari, Narayangaanj', '01819238360', 'razanmahir@gmail.com', '2021-09-20 05:18:03', '0000-00-00 00:00:00'),
(337, 'Mr Shamim', 'Road 42 House 24B Gulshan 2', '01819253255', '', '2021-09-20 05:18:34', '0000-00-00 00:00:00'),
(338, 'Nazrul islam', 'Chattogram Feni Feni Sadar Bangladesh', '01819807510', '', '2021-09-20 05:20:19', '0000-00-00 00:00:00'),
(339, 'Ariful Haque', '16, Kemal Ataturk Avenue, Tower Hamlet (9th Floor) Banani Dhaka Dhaka - North Banani Road No. 1 - 11 Bangladesh', '01819815253', '', '2021-09-20 05:20:37', '0000-00-00 00:00:00'),
(340, 'Mohammed Mizanur Rahaman', 'khagrachari Bazaar, Khagrachhari, Chittagong, Khagrachari', '01820700700', 'say2mizan@gmail.com', '2021-09-20 05:21:19', '0000-00-00 00:00:00'),
(341, 'Sadbin chy', 'road no-4 house no-98,Nasirabad Cosmopolitan,Chittagong ', '01821026313', 'chy.sadbin@gmail.com', '2021-09-20 05:22:26', '0000-00-00 00:00:00'),
(342, 'Md. Mohiuddin Khan', 'Kotwali, Cumilla.', '01827102020', 'khan9937@gmail.com', '2021-09-20 05:23:02', '0000-00-00 00:00:00'),
(343, 'Mahadi Hasan', 'DS Computer,Rail Gate,Feni Sadar, Feni', '01827604154', 'mahadeh577@gmail.com', '2021-09-20 05:23:32', '0000-00-00 00:00:00'),
(344, 'Daniel Ludwig', 'Daniel Ludwig Zia\'s Golf Green, 93/A, Road #6/C Dhaka Dhaka - North Banani DOHS Dhaka', '01829905477', '', '2021-09-20 05:24:57', '0000-00-00 00:00:00'),
(345, 'Md Muhibur Rahman', 'Rashid Tower (7th floor), House#21, Road#11, Gulshan-1, Dhaka', '01831444003', '', '2021-09-20 05:25:14', '0000-00-00 00:00:00'),
(346, 'Nurul Huda Milton', 'Popular Pharmaceuticals Ltd,17 Sukrabad Sheltech Pathokunjo', '01833156598', '', '2021-09-20 05:25:55', '0000-00-00 00:00:00'),
(347, 'Naushad Rahman', 'House 23/Q Road 2 Block D Apartment 4 Bashundhara R/A Dhaka', '01833181390', 'nsrnaushad76@gmail.com', '2021-09-20 05:26:19', '0000-00-00 00:00:00'),
(348, 'Mr Arafat', 'Apt- A1,House 55 ,Road 28, Gulshan', '01833182667', '', '2021-09-20 05:26:58', '0000-00-00 00:00:00'),
(349, 'Mrinal', '172 Gawair Madrasa Ashkona,Dakkhin Khan', '01833353270', 'mrinal@aafashion.net', '2021-09-20 05:28:05', '0000-00-00 00:00:00'),
(350, 'SMH Shimul', '33/1, East kazipara , Kafrul , Mirpur -1216, Dhaka .', '01838888833', 'hassan22067@gmail.com', '2021-09-20 05:28:36', '0000-00-00 00:00:00'),
(351, 'Mr shakil Ahmad', '24 Nondolal Dattalane Luxmibazar, Sutrapur', '01840507777', '', '2021-09-20 05:29:11', '0000-00-00 00:00:00'),
(352, 'Shakil Ahmad', '24 nondolal dattalane luxmibazar luxmibazar, sutrapur Dhaka Dhaka-1100', '01840507777', 'vkvicky947@gmail.com', '2021-09-20 05:30:26', '0000-00-00 00:00:00'),
(353, 'Khandoker Shariful Alam', 'Essential Drugs Company ltd,395-397 Tejgaon I/A', '01841080888', '', '2021-09-20 05:30:50', '0000-00-00 00:00:00'),
(354, 'Sadi Abdullah', 'House 68, 1st Floor, TransCorp, Road 20, Sector 11, Uttara, Dhaka, Uttara 11, Dhaka', '1841361915', 'sadi@transcorp.com.bd', '2021-09-20 05:31:31', '0000-00-00 00:00:00'),
(355, 'Rokhi Limited ', 'Road#17, House#31 Banani, Dhaka-1216', '01732297813', '', '2021-09-20 06:14:13', '0000-00-00 00:00:00'),
(356, 'Mr. Mousuf Ahmed', 'CyberNet,House-269(top floor) Lake rd-19,Mohakhali DOHS', '', '', '2021-09-21 06:23:40', '0000-00-00 00:00:00'),
(357, 'N.N Hardware', 'Gulshan-1, Dhaka-1212', '', '', '2021-09-21 06:24:22', '0000-00-00 00:00:00'),
(358, 'ROBI', 'Robi head office', '', '', '2021-09-21 06:30:50', '0000-00-00 00:00:00'),
(359, 'BRACNet Limited', 'Axis Delvistaa (Level 3) 7/1, Aurangajeb Road,Block-A, Mohammadpur Housing Estate,Mirpur Road,Dhaka-1207', '', '', '2021-09-21 08:15:08', '0000-00-00 00:00:00'),
(360, 'Hardware Plus', 'Kulril,\r\nDhaka \r\n', '', '', '2021-09-21 08:24:15', '0000-00-00 00:00:00'),
(361, 'Eastern Housing Limited', 'EHL Headoffice, Gulshan Project', '01713060939', '', '2021-09-21 10:22:52', NULL),
(362, 'MD. Mustak Ahamed', 'Jamaldi, Hosendi, Gazaria, Munshiganj', '01815420438', 'myrobib@gmail.com', '2021-09-22 07:10:17', NULL),
(363, 'Saddam Hossain Situ', '8/1, Armanian Street, Bangshal, Dhaka', '01625415152', '', '2021-09-22 10:53:44', NULL),
(364, 'Md. Monir Hossain', 'Ferozsha Colony, Chittagong, Akbersha', '01719142687', '', '2021-09-23 05:57:46', NULL),
(365, 'Md Hasan', 'Ahsan Ullah, 10, Tayenbee Circular Road, Motijheel, Dhaka-1000', '01924424184', '', '2021-09-23 06:53:03', NULL),
(366, 'Rancon Developments Ltd', 'House-24/A, Road-10, Gulshan-1,\r\nDhaka-1212, Bangladesh.', '', 'info@rancondevelopments.com', '2021-09-25 09:21:11', '0000-00-00 00:00:00'),
(367, 'Mr.Reaz', 'Road 8 niketon ,Dhaka ', '01711536063', '', '2021-09-29 09:20:14', NULL),
(368, 'Wais Al Karim', '3/1602 Eastern Tower, 51 New Eskaton Road, Dhaka - 1217', '01736246698', '', '2021-09-30 04:59:25', NULL),
(369, 'Mohammad Arif Hossain', 'Joytun Monjeel, 9/7, Boshiruddin Road (Mosjid Goli), North Dhanmondi, Kalabagan, Dhaka-1205.', '', '', '2021-10-01 11:25:09', '0000-00-00 00:00:00'),
(370, 'Mrs. Zara', 'House- 126, Road-27,Block-A,Banani', '01833182215', '', '2021-10-03 04:23:08', '0000-00-00 00:00:00'),
(371, ' Robiul Hasan Babu', 'Narshingdi', '', '', '2021-10-03 06:06:49', '0000-00-00 00:00:00'),
(372, 'Md. Firoz Khan', 'Kashbon,100 feet', '01752277787', 'mdfirozkhan464@gmail.com', '2021-10-03 06:26:49', '0000-00-00 00:00:00'),
(373, 'Mr. Jahid hossain ', 'Road#66\r\nHouse #11(Chittra)\r\nGulshan 2', '', '', '2021-10-04 05:34:14', NULL),
(374, 'Mr. Jahid Hosssain', '', '', '', '2021-10-04 15:42:09', '0000-00-00 00:00:00'),
(375, 'Zahra Khan', 'House-126,Road-27,Block-A,Banani', '01833182215', 'zahrakhan23@yahoo.co.uk', '2021-10-06 05:46:47', '0000-00-00 00:00:00'),
(376, 'Sunnyat Ahmmed', 'Unit-2B, 922 Shahidbagh, Dhaka', '01784040096', '', '2021-10-10 05:50:33', NULL),
(377, 'Md. Belayet Hossain', 'Chakaria, Cox\'s Bazar', '01845110588', 'belayetbspi@gmail.com', '2021-10-16 05:29:41', NULL),
(378, 'Rushan Zaman', 'Jessore Sadar', '', '', '2021-10-17 04:01:12', '0000-00-00 00:00:00'),
(379, 'Imtiaz Mohsin', 'Rd-8, House-20 Block-C1,Gulshan-1,Dhaka-1212', '01748853900', 'imohsin900@gmail.com', '2021-10-17 07:10:32', NULL),
(380, 'Pavel Rahman', 'R# 68/a, H# 31, Gulshan-2, Dhaka', '01714117053', '', '2021-10-23 17:40:05', NULL),
(381, 'OM Subrotho', 'Desh Telecom, Chowmona, Moulvibazar.', '01716526728', '', '2021-10-25 06:10:37', '0000-00-00 00:00:00'),
(382, 'Mr.Ansari', 'Apt first floor,H# 17/b,R# 126,Gulshan 1', '01678600500', '', '2021-10-25 10:49:57', NULL),
(383, 'Peacock International', '1/1/1 South Begunbari,Tejgaon I/A,Dhaka-1208', '01715632580', 'peacock@dodygroup.com', '2021-10-26 08:53:43', '0000-00-00 00:00:00'),
(385, 'Ayana Decor and Design', 'Living Space Complex, House#08, Road#13, Dhanmondi, Dhaka\r\n', '01685240573', '', '2021-10-27 09:49:36', '0000-00-00 00:00:00'),
(387, 'Md. Baqui Billah', 'H# 30, R# 2d,Sector 4,Uttara , Dhaka', '01962424501', 'baqui517@gmail.com', '2021-10-30 10:05:55', NULL),
(388, 'Samsul Islam', 'Rupali Hardware And Paint\r\nChawk Bazar,\r\nHolding Number: 424\r\nBhairab Bazar,\r\nKishoreganj-2350', '01710072737', 'rupalihardwareandpaint@gmail.com', '2021-10-31 05:29:11', '0000-00-00 00:00:00'),
(389, 'Biplob Malaker', '2nd floor,17/2, rankin street, wari, dhaka', '01711560261', '', '2021-11-02 04:22:56', NULL),
(390, 'Kazi Shahin', 'Jamalpur, Palashbari, Gaibandha', '01928717652', '', '2021-11-07 08:34:42', NULL),
(391, 'Tanin Rahman Tushar', 'Ka-1, South kuril, Joar shahara bazar road', '01881180614', 'tanintushar9228@gmail.com', '2021-11-07 09:39:56', NULL),
(392, 'MD. Sumon', 'Holding No.16/2, Block-D,Mosjid Road,Purbo Nurer Chala,Dhaka-1212', '01815777300', '', '2021-11-07 11:35:09', '0000-00-00 00:00:00'),
(393, 'Sabbir Ahmed', 'Boyra,Khulna', '01925225990', 'sabappyy2@gmail.com', '2021-11-08 09:31:23', '0000-00-00 00:00:00'),
(394, 'STATA Query', '', '', '', '2021-11-08 09:57:03', '0000-00-00 00:00:00'),
(395, 'Dody Group (Peacock)', '', '01715632580', '', '2021-11-11 12:46:19', '0000-00-00 00:00:00'),
(396, 'Zibrat', 'Ash-Shams light house 3/4-A purana Paltan Sabbir tower Dhaka', '01717435529', '', '2021-11-16 04:26:15', NULL),
(397, 'Md Sojib Ahmed', 'Madhabpur, Hobiganj', '01775705361', '', '2021-11-16 05:10:11', '0000-00-00 00:00:00'),
(398, 'Apu lily jewelers ', '46/2 debendra nath Das lane . ATM goli . Sutrapur . Dhaka 1100', '', '', '2021-11-17 16:25:10', '0000-00-00 00:00:00'),
(399, 'Seyam Mohammed', '42/2 Indira Road\r\nFlat A-7\r\nDhaka\r\nDhaka\r\nDHAKA1215', '01739973851', 'seyamcm@gmail.com', '2021-11-18 06:42:57', NULL),
(400, 'Praakrita Nirman Ltd.', 'H-985, R-16, A-2, Mirpur DOHS. Dhaka', '', 'info@praakrita.com', '2021-11-20 09:05:19', '0000-00-00 00:00:00'),
(401, 'Mr.Mehedi Iqbal', 'H# 40, R# 11,Sector 4,Uttara, Dhaka', '01717001940', '', '2021-11-21 06:10:39', NULL),
(402, 'Mr. Nafiz Mondol', 'Pasbibi, Joypurhat, Rajshahi', '', '', '2021-11-21 15:00:23', '0000-00-00 00:00:00'),
(403, 'Mr. Rakib', 'Sherpur, Bogura', '', 'rakibmub106@gmail.com', '2021-11-22 10:46:56', '0000-00-00 00:00:00'),
(404, 'Design Age', '79/C, New Airport Road, Chairmanbari, Banani, Dhaka', '01844001053', 'hotline@designage.com.bd', '2021-11-27 04:58:07', '0000-00-00 00:00:00'),
(405, 'Mr. Khaza Tasim', '7 Mosque Road, Mohammadpur, Dhaka.', '', '', '2021-11-27 10:27:06', '0000-00-00 00:00:00'),
(406, 'Numayer Haque', 'Atrium Restaurant,50 & 52, Pragati Avenue, J Block, Baridhara, Dhaka 1212', '01703855836', '', '2021-11-28 09:05:30', '0000-00-00 00:00:00'),
(407, 'Md Shahid Siddiq', 'Mouchak, Gazipur', '', '', '2021-12-02 13:43:00', '0000-00-00 00:00:00'),
(408, 'Md. Noor Hossen', 'Macca villa, H# 8, R# 9, Block A, Nobodoy Housing, Mohammadpur , Dhaka', '01734880596', '', '2021-12-04 09:04:43', NULL),
(409, 'Mr. Touhidur Rahman', '75 & 76 North Bashabo, Dhaka', '01731414120', '', '2021-12-06 08:38:38', NULL),
(410, 'Sajid Hassan Chowdhury', 'Prantik 4, Shubidbazar, Sylhet', '01713077179', 'kamran@tlcbd.com', '2021-12-12 06:29:01', '0000-00-00 00:00:00'),
(411, 'Anupom Sajib Barua', 'Rally Barua\r\nNear Old Public School\r\nVillage: Sayedbari\r\nP.O: Rangunia', '01670476938', 'asbrally05@gmail.com', '2021-12-12 07:10:32', '0000-00-00 00:00:00'),
(412, 'Anupom Sajib Barua', 'Holding No.: 0222\r\nRally Barua\r\nNear Old Public School\r\nVillage: Sayedbari,\r\nP.O: Rangunia,\r\nP.S: Rangunia,Chittagong', '01670476938', '', '2021-12-12 09:44:11', '0000-00-00 00:00:00'),
(413, 'Dhaka Electric', 'Golshan 2', '', '', '2021-12-12 11:49:01', NULL),
(414, 'Munazzir Shehmat Karim', 'Apt-AB5 , Moonstone Mason, House 144, Road-13B, Block E, Banani', '01847200368', 'Munazzir.Karim@sc.com', '2021-12-13 05:19:43', '0000-00-00 00:00:00'),
(415, 'Mr. Akter', 'H# 46(GLG crescent, R# 1, Sector-9, Uttara , Dhaka', '01713178618', '', '2021-12-13 05:57:13', NULL),
(416, 'Nabila Ahsan', '38/1, New Eskaton- BIAM School Road', '01919211537', '', '2021-12-15 05:22:40', '0000-00-00 00:00:00'),
(417, 'Musfiq Mim', '', '', '', '2021-12-15 06:13:25', '0000-00-00 00:00:00'),
(418, 'Maksudur Rahman Moon', 'Mohammadpur Bosila', '01711090212', '', '2021-12-15 07:04:06', '0000-00-00 00:00:00'),
(419, 'Namir Ahmed', 'H# 2A, R# 84, Gulshan 2, Dhaka', '01670072021', '', '2021-12-18 05:41:34', NULL),
(420, 'Mr.Shimanto', 'Mipur 10/ paris road, R# 30, H# 17&19, Dhaka', '01303535963', '', '2021-12-19 05:09:39', NULL),
(421, 'Minimal Limited', 'AR.Rahman Masudur Rahman Teachers Garden (5th froor), Ansar Camp(near hajji wasir khan masjid) , Mirpur 1,Dhaka', '01552448768', '', '2021-12-19 06:42:58', '0000-00-00 00:00:00'),
(422, 'Ata-E-Rabbi Wafi', 'Bashundhara R/A block C road 10 house 363 flat 5B', '01552467444', '', '2021-12-21 06:24:56', NULL),
(423, 'Mr. Mahidul Islam', 'Uttara', '', '', '2021-12-22 06:51:33', '0000-00-00 00:00:00'),
(424, 'Jubayer Ahmed', 'Road-8, House-2, Apt-A2, Uttara Sector-10, Dhaka Bangladesh', '01733991041', 'zaki_iub@hotmail.com', '2021-12-22 07:43:42', '0000-00-00 00:00:00'),
(425, 'Md Abdul Alim', 'House-107/1, Block - D, Road - Mouchak ChwdhuryPara, Village- Mijmiji, Shiddhirgonj, Narayangonj.', '01673649476', '', '2021-12-23 06:34:23', '0000-00-00 00:00:00'),
(426, 'Sabbiqur Rahman', 'House: 481, Road-32, Mohakhali DOHS, Dhaka', '', '', '2021-12-23 06:58:00', '0000-00-00 00:00:00'),
(427, 'Silver Composite Textile Miles Ltd', 'Silver Tower, level-19,52 Gulshan Avenue,Gulshan-1, Dhaka-1212', '029858756', '', '2021-12-29 10:44:04', '0000-00-00 00:00:00'),
(428, 'Ahmedia Traders ', '18,bhabon Market,gulshan,dhaka1212', '01674606781', 'ahmedia.traders@yahoo.com', '2021-12-30 08:28:28', NULL),
(429, 'Ascend Interiors & Construction', 'Flat - 10A, House - 22, Road - 9/A, Dhanmondi', '01778639000', '', '2022-01-02 06:12:33', '0000-00-00 00:00:00'),
(430, 'Muhtasin Ifti', 'Dhaka', '01870065430', '', '2022-01-06 09:01:46', '0000-00-00 00:00:00'),
(431, 'Ashiqur Rahman', 'ka 193, Sayed Ali Member Bari, Kuril, Vatara, Dhaka-1229', '01707162961', 'ashiq8632@gmail.com', '2022-01-11 10:22:00', NULL),
(432, 'Dr.Harun Ur Rashid', 'Sterling,Uttara Dhaka', '', '', '2022-01-12 05:43:18', '0000-00-00 00:00:00'),
(433, 'Mohammad Sikandar', '14/15 Darus salam road,Mirpur, Dhaka', '', '', '2022-01-13 05:02:52', '0000-00-00 00:00:00'),
(434, 'Md Akter Hossain', '8 Rankin Street, Fortune Tower, Wari Dhaka.', '', '', '2022-01-15 10:48:17', '0000-00-00 00:00:00'),
(435, 'Arif Billah', 'Sector 11, Uttara, Dhaka', '01611664965', 'arifbillahaman@gmail.com', '2022-01-16 05:07:22', '0000-00-00 00:00:00'),
(436, 'Ali Noor Khan', 'Dhanmondi 11/A', '', '', '2022-01-16 06:06:14', '0000-00-00 00:00:00'),
(437, 'Mr.Arham', 'House-18, Lalbag Shahesta Khan Road, Dhaka', '01531183103', '', '2022-01-17 07:32:29', NULL),
(438, 'Mr. Jobaed Hasnan', 'House-1/1, Road-2, Block-D, Section-6, Mirpur, Dhaka', '', '', '2022-01-23 10:12:16', '0000-00-00 00:00:00'),
(439, 'Mr. Shekh Tazwa', 'House-55, Road-12/A, Floor-A5, Dhanmondi, Dhaka', '', '', '2022-01-24 11:22:43', '0000-00-00 00:00:00'),
(440, 'Shimmi Momena Ismail Sarker', 'RANCON Artisti Plot # 01, RD # 59, Block # NW(D), Gulshan Model Town, Dhaka', '', 'akashali.sarker@gmail.com', '2022-01-27 08:09:53', '0000-00-00 00:00:00'),
(441, 'Shoaib Ahmed', 'Star Solution, House #1, Road#22, 1st Floor, Uttara Sector #10, Dhaka', '01713229801', 'imac_20032003@yahoo.com', '2022-01-31 08:14:28', '0000-00-00 00:00:00'),
(442, 'Rashik Ahmed', '5/A, Raipur House, West Malibagh, Dhaka', '01786633874', '', '2022-02-05 09:19:06', '0000-00-00 00:00:00'),
(443, 'Minhajuddin Bhuiyan Atul', '', '01611112749', '', '2022-02-06 07:11:22', '0000-00-00 00:00:00'),
(444, 'Kristi Architects', 'Block -B ,Banani, House - 78, Road - 10-1\r\n', '01711428372', 'kristi.architects@gmail.com', '2022-02-07 09:05:48', '0000-00-00 00:00:00'),
(445, 'Aziz Interiors', 'Maijdi, Noakhali', '01630149494', '', '2022-02-08 08:20:01', '0000-00-00 00:00:00'),
(446, 'Archtree Architect', 'plot- 34-cha, Rahanlake view, Badda', '01914576363', '', '2022-02-10 08:19:23', '0000-00-00 00:00:00'),
(447, 'Sahidi Jam-e Masjid', 'Abul Hotel, next to flyover landing', '01711564663', '', '2022-02-10 08:52:06', '0000-00-00 00:00:00'),
(448, 'Md. Nuruzzaman', 'H# 146, R# 13/B, Block E, Banani,Dhaka', '01714098093', '', '2022-02-10 09:02:21', NULL),
(449, 'Md Muyeedur Rahman', 'H#34(Tilottoma), R#05, B#E, Banasree, Rampura, Dhaka', '', '', '2022-02-12 04:19:04', '0000-00-00 00:00:00'),
(450, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:44', '0000-00-00 00:00:00'),
(451, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:44', '0000-00-00 00:00:00'),
(452, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:44', '0000-00-00 00:00:00'),
(453, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:44', '0000-00-00 00:00:00'),
(454, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:44', '0000-00-00 00:00:00'),
(455, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:44', '0000-00-00 00:00:00'),
(456, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:44', '0000-00-00 00:00:00'),
(457, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:45', '0000-00-00 00:00:00'),
(458, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:45', '0000-00-00 00:00:00'),
(459, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:45', '0000-00-00 00:00:00'),
(460, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:45', '0000-00-00 00:00:00'),
(461, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:45', '0000-00-00 00:00:00'),
(462, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:48', '0000-00-00 00:00:00'),
(463, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:48', '0000-00-00 00:00:00'),
(464, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:48', '0000-00-00 00:00:00'),
(465, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:48', '0000-00-00 00:00:00'),
(466, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:48', '0000-00-00 00:00:00'),
(467, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:52', '0000-00-00 00:00:00'),
(468, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:52', '0000-00-00 00:00:00'),
(469, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:52', '0000-00-00 00:00:00'),
(470, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:52', '0000-00-00 00:00:00'),
(471, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:52', '0000-00-00 00:00:00'),
(472, 'Tamanna', '379 Free Schoor Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:04:52', '0000-00-00 00:00:00'),
(473, 'Tamanna', '379 Free School Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:05:52', '0000-00-00 00:00:00'),
(474, 'Tamanna', '379 Free School Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:05:54', '0000-00-00 00:00:00'),
(475, 'Tamanna', '379 Free School Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:05:54', '0000-00-00 00:00:00'),
(476, 'Tamanna', '379 Free School Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:05:54', '0000-00-00 00:00:00'),
(477, 'Tamanna', '379 Free School Street, Hatirpul, Dhaka.', '01816319550', '', '2022-02-12 11:05:54', '0000-00-00 00:00:00'),
(478, 'Mr. Abrar Haque', 'Niketan, B-Block, Road- 03, House-Anawer\'s Kitchen.', '01753021207', '', '2022-02-14 06:58:28', NULL),
(479, 'Mr. Rafiq  - Index', 'MF Tower, ga-95/c, , progoti Sharan, Gulshan', '01844224005', 'rafiq@index-companies.com', '2022-02-15 05:40:15', '0000-00-00 00:00:00'),
(480, 'Mr. Saiful Hasan', 'Malibag, Dhaka.', '016244416666', '', '2022-02-16 06:38:20', NULL),
(481, 'Engr. Fani Bhusan Debnath', 'SEL Afroza Azure, KA-34,Apartment No-6A,Mohakhali,Dhaka', '01844004020', 'fani_debnath@yahoo.com', '2022-02-18 17:02:59', '0000-00-00 00:00:00'),
(482, 'Mosaddek Bhuiyan', '4/28 Bhuiyan villa,Muslimnagar, Demra, Dhaka', '01776276908', 'mosaddekbhuiyan@gmail.com', '2022-02-19 07:38:55', '0000-00-00 00:00:00'),
(483, 'Joshim Uddin', 'Uttara , sector 8, road - 3 ', '01713113605', '', '2022-02-20 06:00:34', '0000-00-00 00:00:00'),
(484, 'Fahim Islam', 'Bashundhara R/A, Block i, Road 7, Plot 271-273, Apt 10A', '01789117647', '', '2022-02-20 15:35:17', '0000-00-00 00:00:00'),
(485, 'Shourov Khandker', '', '01670961827', '', '2022-02-22 08:19:25', '0000-00-00 00:00:00'),
(486, 'Tauhid Irteza Ali', 'House-573, Road-9, Mirpur DOHS', '', '', '2022-02-22 10:54:12', '0000-00-00 00:00:00'),
(487, 'Farid latif', '', '01730380633', '', '2022-02-23 06:19:51', '0000-00-00 00:00:00'),
(488, 'Abid Kaiser', '', '01755548424', 'abid.kaiser69@gmail.com', '2022-02-24 05:20:04', '0000-00-00 00:00:00'),
(489, 'Abdun Noor Tushar ', 'House#1/A, Block-B, Majar Road, 1st Colony, Gabtoli, Dhaka', '01711528427', '', '2022-02-26 08:06:03', '0000-00-00 00:00:00'),
(490, 'Nahid Hossen', '348/5,60feet paka moshjid,beside sat soter restaurant, Dhaka', '018260059741', '', '2022-02-26 08:20:13', NULL),
(491, 'Mr. Rubel', '1362/8 South Dhonia.', '001819444968', '', '2022-02-26 16:25:36', NULL),
(492, 'Mr. Tarek', 'Mohammadpur', '019900355365', '', '2022-02-27 04:11:15', NULL),
(493, 'Ibrahim khalil', 'Basurhat, Companigonj, Noakhali', '01647150692', '', '2022-02-27 05:12:03', '0000-00-00 00:00:00'),
(494, 'Galib Hasan', 'Block C, Road 1, H 29, Bashundhara, Dhaka.', '01708719124', '', '2022-03-01 06:24:17', '0000-00-00 00:00:00'),
(495, 'Eusha Khan', 'Road 7/A, sector 3, Uttara', '01797519967', 'eushakhan911@gmail.com', '2022-03-06 07:24:31', '0000-00-00 00:00:00'),
(496, 'AHM Masum', 'House#532/2, Lane#11, Baridhara DOHS', '01730029274', '', '2022-03-06 11:16:39', '0000-00-00 00:00:00'),
(497, 'Mr. Rafiq Uddin', '6th Floor, House#15, Road#02, Sector-5, Uttara, Dhaka', '01711605130', '', '2022-03-09 09:09:31', '0000-00-00 00:00:00'),
(498, 'Tahlil Toyeb', 'House-56 Road-15\r\nApartment-1A (1st floor)\r\nUttara', '01888703174', 'tahliltoyeb@gmail.com', '2022-03-15 05:50:45', NULL),
(499, 'Orendt Studios CGI- Film production GmbH', 'Koenigsberger Str. 100/Geb. A01 40231 Dusseldorf, Germany', '01777058790', 'm.mishu@orendtstudios.com', '2022-03-16 04:23:55', NULL),
(500, 'Mr. Wasif', '', '', '', '2022-03-16 06:13:46', NULL),
(501, 'Mr. Parvez Sajjad', '70/A-2, Indira Road, Tejgoan,  Dhaka.', '01713046962', 'Parvez.sajjad1@bd.nestle.com', '2022-03-20 04:44:15', '0000-00-00 00:00:00'),
(502, 'Tahlil Toyeb', 'House-56 Road-15 Apartment-1A (1st floor) Uttara Dhaka', '', '', '2022-03-20 05:27:52', '0000-00-00 00:00:00'),
(503, 'Mr. shafee Bulbul', 'Basundhara R/A, Block I,Road- japan street,plot -1136/F,park home ,flat b-5, Dhaka', '01769003539', 'shafeebulbul@gmail.com', '2022-03-23 04:10:10', NULL),
(504, 'Fahimul Islam', '98/6-A Boro Moghbazar Dhaka 1217', '01911219177', 'famislam@aol.com', '2022-03-23 05:56:48', NULL),
(505, 'Brand Marrow', 'ECB Chattor, Kalshi, Mirpur', '01781631357', '', '2022-03-23 08:56:49', NULL),
(506, 'Shafiul Islam', '', '', '', '2022-03-24 06:21:14', '0000-00-00 00:00:00'),
(507, 'Rajon Raj', 'AR MOBILE, KASHIANI BAZAR, KASHIANI, GOPALGONJ', '01911839412', 'rajon.ahmed6@gmail.com', '2022-03-27 06:14:15', NULL),
(508, 'Mr. Raktim', 'Bengal furniture mart, Station road, Raani Bazar, Rajshahi', '01711349334', '', '2022-03-29 04:21:04', NULL),
(509, 'LUSSO BANGLADESH Limited.', 'House- 12, Road-2/A, Banani', '01303223743', '', '2022-04-02 06:21:43', '0000-00-00 00:00:00'),
(510, 'Alamgir Hossain', 'Azad rifat fibres, ramarbag(katherpool), kutubpur , fatullah, Narayanganj', '01911445804', '', '2022-04-04 07:31:14', NULL),
(511, 'Zubayer Ahmed', 'F# A3, H# 1/x, R# 9, Block# g, Bashundhara R/a,Dhaka\r\n', '01714323417', '', '2022-04-04 09:27:21', NULL),
(512, 'Mustafa Taher', 'House-5 (2nd Floor), Road- 12, Block-G /1, Sector-2, Mirpur (opposite of IBN Sina, Shialbarir mour)', '01833180671', '', '2022-04-05 04:42:22', '0000-00-00 00:00:00'),
(513, 'Yash Gśkł', 'Sector#6 Road#10 House#5 Uttara', '8801819292713', '', '2022-04-12 08:12:47', '0000-00-00 00:00:00'),
(514, 'AHM MASUM.', 'House-532/2 lane-11 Baridhara DOHS ', '', '', '2022-04-16 08:13:29', '0000-00-00 00:00:00'),
(515, 'Moshiur Sarder', 'Faser Tek Road, Vatara', '01521308628', 'moshiursarder@gmail.com', '2022-04-18 05:36:44', '0000-00-00 00:00:00'),
(516, 'Md. Harun Or Rashid', 'House 301, Road 02, Baitul Aman Housing, Adabor, Dhaka', '01784881022', 'enubabu@gmail.com', '2022-04-19 04:17:32', '0000-00-00 00:00:00'),
(517, 'Md Bayezid Hossain', 'F#4/B, 108/B, Khanam Tower, East Rampura, Dhaka.', '', '', '2022-04-23 08:39:04', '0000-00-00 00:00:00'),
(518, 'Rezwan Amin Khan', 'H# 297/c, Shafiat road, Flat# a4, Block# c, Bashundhara R/A, Dhaka', '01755515795', '', '2022-04-24 05:59:47', NULL),
(519, 'Talukder Enterprise ', 'Showroom: 5 Stadium Market,Chandpur. ', '01909115570', 'jeweltalukder00@gmail.com', '2022-04-25 08:16:06', NULL),
(520, 'Sheikh Tajwar Hossain', 'House#55, Road#12/A, Dhanmondi, Dhaka', '01729292934', '', '2022-04-27 08:52:01', '0000-00-00 00:00:00'),
(521, 'Naveed Mayaz Khan', 'Flat #A3 House #388 road #9', '01799389340', '', '2022-05-07 08:50:06', NULL),
(522, 'Abdur Rahim', 'Naraynganj Bondor, Mushapur, Nawagao.', '01893836001', '', '2022-05-07 11:00:05', NULL),
(523, 'Fabian Ismat', 'House#10, Road#17/A, Banani, Dhaka-1213', '01743522735', 'afi2806@gmail.com', '2022-05-10 05:23:29', '0000-00-00 00:00:00'),
(524, 'Imran Hossain', 'North Badda', '01718063446', 'imran.shohagh@gmail.com', '2022-05-10 08:49:47', '0000-00-00 00:00:00'),
(525, 'Shammi Rubayet Karim', 'Flat-10A House#10 Road#10 Block-H, Banani', '01713090011', '', '2022-05-10 10:09:06', '0000-00-00 00:00:00'),
(526, 'Saomun Zaman', 'H# 67/1, R# 4, Block# b, Section# 12, Mirpur Pallabi, 3rd floor, Dhaka', '01833183393', '', '2022-05-21 03:52:43', NULL),
(527, 'Md. Risalat Siddique', '', '', '', '2022-05-21 06:11:59', '0000-00-00 00:00:00'),
(528, 'Md. Rezaul', '', '01712509397', '', '2022-05-22 04:30:30', '0000-00-00 00:00:00'),
(529, 'Mahabubur Rahman', '19/2 Eskaton Garden ', '01973460782', 'tuhin_cl@yahoo.com', '2022-05-23 04:37:06', '0000-00-00 00:00:00'),
(530, 'Tanvir Kalam', 'chittagong city', '01711405954', '', '2022-05-26 08:28:07', '0000-00-00 00:00:00'),
(531, 'Md. Monirul Islam', 'H# 25/a, R# 18, Block# B, lift 7, flat b7, Banani, Dhaka', '01615033613', 'maneer.islam@gmail.com', '2022-05-28 08:37:32', NULL),
(532, 'Abul Bashar Md. Sharif', 'ahmed tower,floor 11,28 & 30 kamal ataturk avenue, banani , dhaka', '01711506350', 'bashar@autonemo.io', '2022-06-01 08:58:39', NULL),
(533, 'Md. Rijoan Ujjal', 'Faidabad, Azampur, Uttara, Dhaka', '01911826846', 'rijoan10@gmail.com', '2022-06-04 04:31:03', '0000-00-00 00:00:00'),
(534, '4G Light House', '15/13 sher-sha,Town hall,Mohammadpur dhaka 1207.', '01628682770', '4glighthouse16@gmail.com', '2022-06-05 04:22:53', NULL),
(535, 'Tanvir Hossain', 'Apt 15 c, Golf Heights. 1 Airport Road. Banani (next to mach ranga)', '8801798231703', '', '2022-06-05 06:30:45', '0000-00-00 00:00:00'),
(536, 'Mr. Mahabubur Rahman', '19/2 Eskaton Garden', '01973460782', 'tuhin_cl@yahoo.com', '2022-06-05 09:45:15', NULL),
(537, 'Khondokar Abdul Muktalib', 'Apt-1D, House#2/A, Road#55, Gulshan, Dhaka', '01711804907', '', '2022-06-08 07:21:09', '0000-00-00 00:00:00'),
(538, 'Rancon Development', 'H# 24/a, R# 10, Gulshan 1, Dhaka', '01708136523', '', '2022-06-09 05:36:35', '0000-00-00 00:00:00'),
(539, 'Hasan Icon', '', '', '', '2022-06-11 08:46:26', '0000-00-00 00:00:00'),
(540, 'Mr. Hasan Al Mamun', 'H# 11, R# 1, Block-H, Meradia Bazar, Banasree, Dhaka', '01552415007', '', '2022-06-12 05:31:26', NULL),
(541, 'Fahim Wahab', 'unique lakeside apartment,flat b2,House 16,road 33, Gulshan 1', '01714120413', 'fahimwahab@ghazibd.com', '2022-06-13 07:20:04', NULL),
(542, 'Sahil Kabir', '', '01853239272', '', '2022-06-14 09:23:08', '0000-00-00 00:00:00'),
(543, 'Nafid', 'Road#86, Gulshan-2, Beside BNP Party Office', '01922355556', '', '2022-06-15 09:19:39', '0000-00-00 00:00:00'),
(544, 'Mr. Nasir', 'AR.Rahman Masudur Rahman Teachers Garden (5th froor), Ansar Camp(near hajji wasir khan masjid) , Mirpur 1,Dhaka', '01717370228', '', '2022-06-18 04:19:20', NULL),
(545, 'SK Nowshad Ahmed', 'H# 41/15/b/1, Hazi Afsaruddin Lane, Zigstola,Dhanmondi,Dhaka', '01911367607', '', '2022-06-20 08:46:18', NULL),
(546, 'Poly Apa ', 'house 5 tala building,sahajadpur uttor badda', '01712872974', '', '2022-06-20 09:38:54', NULL),
(547, 'Ashik Elahi', '', '16092001444', '', '2022-06-21 09:16:29', '0000-00-00 00:00:00'),
(548, 'Khondokar Abdul Muktalif', 'Apt - 1D, House 2/A, RD 55, Gulshan, Dhaka', '01678618702', '', '2022-06-22 07:45:02', NULL),
(549, 'Saqif Yaman', '', '', '', '2022-06-22 09:51:44', '0000-00-00 00:00:00'),
(550, 'Ashraful Islam Alif', 'Kha-83, Jagoroni club, South Badda', '01671733619', 'alif.ashrafulislam@gmail.com', '2022-06-22 10:53:16', NULL),
(551, 'CEO', '', '', '', '2022-06-23 05:58:29', '0000-00-00 00:00:00'),
(552, 'Md. Zakir Hossain', 'Uttara Sector-11 Road#20 House#28 6th Floor ', '01981909614', '', '2022-06-26 06:12:51', '0000-00-00 00:00:00'),
(553, 'Shahnoor M. Ali Obaidullah', 'AS tower(6th floor),3022/a,Hillview R/a, Chittagong', '01841312080', 'shahnoor.bd1@gmail.com', '2022-06-27 05:23:28', NULL),
(554, 'Mr.Niamul', 'House-19/b Road 117 Gulshan 1', '01730703609', '', '2022-06-28 03:51:56', NULL),
(555, 'Md.Robiul', 'Kader Chowdhury Complex,House no 3/c west dhanmondi,Shatmosjid road.building no 3, flat no A1\r\n(  it is near to dhanmondi 27 and opposite of asia or behind of D\'Atuos.)', '01715001317', '', '2022-06-29 04:14:44', NULL),
(556, 'Mr. Murad', 'Moddhobadda, Dhaka', '01738222402', '', '2022-06-29 06:11:44', NULL),
(557, 'Mohammad Ali Mortuza', 'BRS Rainbow, 4th floor,\r\nH 464, R 17, Block-G, \r\nBashundhara R/A', '01914006810', '', '2022-07-03 03:53:17', NULL),
(558, 'Mr.Farhan Khan', 'H#11, R#110, Gulshan-2, Hedayetullah Ron - Level 10.', '', '', '2022-07-03 04:10:26', '0000-00-00 00:00:00'),
(559, 'Mr. Sajid', 'Flat A2,House no: 3/A, Road no: 74, Gulshan-2 (Besides the Royal Paradise Hotel)', '01793532905', '', '2022-07-04 09:37:35', NULL),
(560, 'Sowmik Saha', 'Mirpur 14, Bijoy Rakeen City, Behind Police Convention Center, Flat No A6-T1-02-02', '01711570765', '', '2022-07-19 05:24:06', NULL),
(561, 'MD Asaduzzaman Porosh', 'H-18, Road-14, Block-L, South Banasree, Rampura, Dhaka', '01840651455', '', '2022-07-19 05:36:42', NULL),
(562, 'Jagannath Saha', 'House#404, Road#09, Block-F, Bashundhara Residential Area, Dhaka.', '01756787695', '', '2022-07-19 08:09:50', NULL),
(563, 'Mr. Omar Faruque', 'Jhawtala Garir Math, Cox\'s Bazar sadar, Cox\'s Bazar.', '01714448447', '', '2022-07-19 11:22:28', NULL),
(564, 'Mr. Kajol', 'House 72 ,Block j,Road 12/4,West banasri. khilgaon bangladesh', '01971500873', '', '2022-07-20 08:18:02', NULL),
(565, 'Mr. Kajol', 'House 72 ,Block j,Road 12/4,West banasri. khilgaon bangladesh', '01971500873', '', '2022-07-20 08:18:02', NULL),
(566, 'Md. Moazzem Hossain', '46/6, Asad Avenue, Mohammadpur, Dhaka', '01711183162', '', '2022-07-25 06:10:55', NULL),
(567, 'Anayet Hossain', '26, Eskaton Garden Road, Suite#E-3, Dhaka', '01711554067', '', '2022-07-27 10:03:51', '0000-00-00 00:00:00'),
(568, 'Engr. Pabitra Roy', 'House# 9/5, Lane# 01, Block# B, Section# 06, Mirpur, Dhaka-1216.', '01733893824', '', '2022-08-01 06:16:37', '0000-00-00 00:00:00'),
(570, 'Mr. Safil Nawaz Chowdhury', 'Gulshan 2- Road 61-House 173.', '', '', '2022-08-03 05:44:38', '0000-00-00 00:00:00'),
(571, 'Zulfikar Sadik', 'House#38, Road#10, Sector#11, Uttara, Dhaka.', '01326245701', '', '2022-08-06 08:42:33', '0000-00-00 00:00:00'),
(572, 'Al-Amin', 'Bajrajogini, Munshiganj ', '01962609222', 'attanve@gmail.com', '2022-08-07 11:34:38', NULL),
(573, 'Leading Computers', 'A R Plaza, Shop No.4, Kalibari Cross Road, Habiganj\r\n( 01705203829 )', '01705203829', '', '2022-08-09 05:46:44', NULL),
(574, 'Euro Style', '', '', '', '2022-08-09 09:03:51', '0000-00-00 00:00:00'),
(575, 'Md. Akter Hossain', '8 Rankin Street, Wari, Dhaka.', '01711430868', '', '2022-08-10 10:25:23', NULL),
(576, 'Mr.Fahim ', 'Navana SunVilla House- 3-A,Road23,Banani', '', '', '2022-08-10 10:50:34', '0000-00-00 00:00:00'),
(577, 'Mr.Quyum', 'Hazaribagh', '', '', '2022-08-10 10:51:39', '0000-00-00 00:00:00'),
(578, 'Arafat Salam', 'Flat No- 9/H, Police Plaza Concord, Plot No-02  Road No-144, Gulshan Model Town, Dhaka-1212', '01688988366', '', '2022-08-11 06:07:38', '0000-00-00 00:00:00'),
(579, 'Jawad Rafi', '31-20-14-2, saha shaheb nagar, mukti housing , mirpur-moddho paikpara.', '', '', '2022-08-16 04:10:22', '0000-00-00 00:00:00'),
(580, 'Mr. Azharul Islam', 'Begumpur,Chadpur,Chattagram', '01765411150', '', '2022-08-17 13:55:29', NULL),
(581, 'Ramzan Traders', 'Hobigonj, Madhobpur Shylet', '', '', '2022-08-20 06:31:50', '0000-00-00 00:00:00'),
(582, 'Hasanat Alamgir', 'Flat-A-8, Ventura Sky Valley, Road#24/31, House#25, Gulshan-1, Dhaka.\r\n', '01711321329', '', '2022-08-20 11:43:26', NULL),
(583, 'MD. Ali', 'A-A2, Ventura Sky Valley, Road#24, Plot#25, B-CWS (B)', '01711568053', '', '2022-08-22 05:18:05', NULL),
(584, 'Brand Group', 'Head Office: 188, Gulshan Avenue,\r\nGulshan-2, Bangladesh.', '', '', '2022-08-24 08:47:57', '0000-00-00 00:00:00'),
(585, 'MANAMA GROUP', '26/b(opposite of american international school), R# 3, B# k, Baridhara,Gulashan 2, Dhaka', '', '', '2022-08-24 08:57:32', '0000-00-00 00:00:00'),
(586, 'Rajon', 'Narayanganj', '01819238360', '', '2022-08-24 10:56:15', '0000-00-00 00:00:00'),
(587, 'Quazi Shah Newaz Rahman', '6/B, Eastern Housing Apartment. 26/B, Tookhana Road, Dhaka-1000', '01767697120', 'Rahman_shanto@hotmail.com', '2022-08-26 17:35:18', NULL),
(588, 'Arch. Sumaiya Sarwat', '', '', '', '2022-08-28 08:30:03', '0000-00-00 00:00:00'),
(589, 'Mr. Atif Ahmed', 'Cube Ekantika \r\n\r\nApt# A3 & A4\r\nHouse# 184\r\nRoad# 08\r\nBlock# C\r\nBashundhara R/A', '01730044774', '', '2022-08-29 06:13:53', NULL),
(590, 'Design Scape', 'Banani Dohs', '01713410889', '', '2022-08-30 05:08:51', '0000-00-00 00:00:00'),
(591, 'Monjurul Islam ', 'H-5, Main Road, Block-E, Bonosree, Rampura, Dhaka 1219', '8801794777185', '', '2022-09-01 05:32:45', NULL),
(592, 'New Akma Electric Store', '9, Bidisha Super Market, Gulshan-2, Dhaka-1212\r\n', '01883510271', '', '2022-09-03 11:13:59', NULL),
(593, 'Asif Mahmood Abbas', 'Dhakaiya Koreana, BTI Plaza, North Badda Progati Sharani, Dhaka-1212', '01813888887', '', '2022-09-04 09:54:20', '0000-00-00 00:00:00'),
(594, 'Asif Mahmood Abbas', 'Dhakaiya Koreana, BTI Plaza, North BAdda Progati Sharani, Dhaka-1212', '01813888887', '', '2022-09-04 10:01:00', NULL),
(595, 'BTI', 'Gulshan', '01313401457', '', '2022-09-04 10:15:34', NULL),
(596, 'S M Imtiaz Masood', '532/2, shawrapara, shamim soroni,mirpur, Dhaka', '01971620281', '', '2022-09-05 18:50:44', NULL),
(597, 'IDLC  ', 'Gulshan-1, circle', '', '', '2022-09-07 09:14:35', '0000-00-00 00:00:00'),
(598, 'N N Hardware', '25, gulshan shopping center  Gulshan 1 dhaka 1212', '01711809943', '', '2022-09-08 03:46:14', NULL),
(599, 'Asif Mahmud', 'Flat: B-3, House: 41 (Park Panorama)\r\nRoad: 05, Dhanmondi R/A\r\nDhaka\r\nDhaka\r\n1209', '01717764540', 'asifmahmud1506@gmail.com', '2022-09-08 04:43:27', NULL),
(600, 'Eng. Murad Khan', 'Uttara, sector - 7, Plot - 87, BNS Center-5th Floor', '01787021698', '', '2022-09-08 05:37:24', '0000-00-00 00:00:00'),
(601, 'Khaza Tasin', '10/a, confidence tower, 5/ kha, saat masjid road, Mohammadpur, Dhaka', '01790726336', '', '2022-09-09 09:19:29', NULL),
(602, 'DIZIT LIMTED', 'House-17, Road-04, Block-F, Banani, Dhaka-1213\r\n', '', '', '2022-09-10 08:41:28', '0000-00-00 00:00:00'),
(603, 'Mohammed Aoran Roxie', 'Bengla Corporation \r\n89 B.C.C Road ,Thatari Bazar,Wari-Dhaka-1203', '01713272845', '', '2022-09-11 16:09:47', NULL),
(604, 'Borna Architect', 'Mirpur, DOHS', '01321229562', '', '2022-09-12 04:53:33', NULL),
(605, 'Borna Architect', 'Mirpur, DOHS', '01321229562', '', '2022-09-12 04:53:33', NULL),
(606, 'SCT- Bangla Ltd.', 'Plot# 7-8, B# A, Main road, Banasree,Rampura, Dhaka-1219', '01682490358', 'rajibhasan528@gmail.com', '2022-09-13 03:29:40', NULL),
(607, 'Arch. Tanvir', 'Mirpur, Dohs,Lane-9,House-122', '01321229562', '', '2022-09-13 10:20:51', NULL),
(608, 'Mr. Arafat Salam', 'Flat No- 9/H, Police Plaza Concord, Plot No-02  Road No-144, Gulshan Model Town, Dhaka-1212', '01688988366', '', '2022-09-17 06:24:38', NULL),
(609, 'Md Shaan Tasirul Islam', 'Laki Hotel Bus Stop, Pahartali , Chittagong', '01831408226', '', '2022-09-18 16:35:54', NULL),
(610, 'Delphi', 'MF Tower,Ga-95/C, Level#1,Progoti Sarani, Middle Badda, Dhaka – 1212', '8801701217729', '', '2022-09-20 04:21:58', '0000-00-00 00:00:00'),
(611, 'Akib Raihan Popeye', 'House#05  ,Road#09, Block#E, Banasree, Dhaka-1212', '8801790725171', '', '2022-09-20 07:22:55', '0000-00-00 00:00:00'),
(612, 'Mahmuda Ferdous', 'House#111/A, Road#03, Block#F, Banani', '01771959735', '', '2022-09-21 07:14:55', NULL),
(613, 'Uttara Client', 'Ashiana, 8th floor, House # 31, Road #3, Sector #13, Uttara', '', '', '2022-09-22 04:29:52', '0000-00-00 00:00:00'),
(614, 'Shahin Builders', 'Sylhet', '01722898006', '', '2022-09-22 10:32:12', '0000-00-00 00:00:00'),
(615, 'Agar Chowdhury', '21, Kazi Nazrul Islam Avenue, Poribagh, Dhaka', '01724530800', '', '2022-09-24 06:07:16', NULL),
(616, 'MD. Abdul Quyum (Shihab)', 'Dhanmondi 10-A , Houase 48, Rangs Annono', '', '', '2022-09-25 03:45:00', '0000-00-00 00:00:00'),
(617, 'Mr. Hadiansa', 'Tropical High Homes Building no 3, houde-I-11 Sahajadpur\r\n', '01966421014', '', '2022-09-25 04:50:34', '0000-00-00 00:00:00'),
(618, 'Mr.Hadiansa ', 'Tropical High Homes.\r\nHouse-I-11, Building no-3.Sahajadpur', '01966421014', '', '2022-09-25 04:53:35', '0000-00-00 00:00:00'),
(619, 'Mr. Sajib', 'House# 217, Road# 02, Mirpur DOHS', '8801725343188', '', '2022-09-26 05:51:01', NULL),
(620, 'Musfiq Rahman Tomal ', 'House 14\r\nFlat 1/A\r\nRoad 1/A\r\nBaridhara J Block \r\nNotunbajar\r\nDhaka 1212\r\nOpposite US Embassy \r\nBehind Bhatara Thana', '01673776011', '', '2022-09-26 08:36:56', NULL),
(621, 'Md Jakariya', 'Sundarban Courier Service (Pvt.) LTD. Sibu Market - Fatulla Rd, Narayanganj', '01687411335', '', '2022-09-27 08:53:55', NULL),
(622, 'Md. Mamunor Rashid', '', '01816614890', 'mamunor@gmail.com', '2022-09-28 08:53:56', NULL),
(623, 'Ted Bernhardtz Textile Ltd.', 'H-482, -8, Baridhara , DOHS.', '', '', '2022-09-29 03:51:47', NULL),
(624, 'Kishor Majumder', '7/a, dhanmondi, Dhaka', '01676933136', '', '2022-09-29 04:47:55', NULL),
(625, 'Mr. Quyum Shihab', 'Dhanmondi 10\\A, House 48', '01715025551', '', '2022-10-01 03:59:28', NULL),
(626, 'Mr. Quyum Shihab', 'Dhanmondi 10\\A, House 48', '01715025551', '', '2022-10-01 03:59:28', NULL),
(627, 'Mr. Quyum Shihab', 'Dhanmondi 10\\A, House 48', '01715025551', '', '2022-10-01 03:59:28', NULL),
(628, 'Aftab Khan', '', '', '', '2022-10-01 04:41:12', NULL),
(629, 'Aftab Khan', 'road 112 house 114 gulshan 2 dhaka ', '01735717188', '', '2022-10-01 04:47:39', NULL),
(630, 'Nazmul Haque', 'Haque Hardware and Electric\r\n1028, Asmat Shopping Complex\r\nMalibagh Bazar Road, Malibgh, Dhaka', '01303018000', '', '2022-10-01 05:09:04', '0000-00-00 00:00:00'),
(631, 'City Group ', 'House#2, Road#96 Gulshan-2, Dhaka-1212', '01911745904', '', '2022-10-01 07:14:00', NULL),
(632, 'Ahnaf Shahid', 'Banani block B house 84', '01760686222', 'ahnafshahid2004@gmail.com', '2022-10-03 06:20:40', '0000-00-00 00:00:00'),
(633, 'Nazir Ahmed', 'Chittagong', '', '', '2022-10-04 07:07:27', '0000-00-00 00:00:00'),
(634, 'Mohammad Aoran Roxie', 'Bengla Corporation 89, B.C.C Road, Thatari Bazar, Wari, Dhaka', '01713272845', '', '2022-10-06 05:05:39', '0000-00-00 00:00:00'),
(635, 'Khurshida Khan', 'Flat-8C, 147/4-A, Green Road. MCT Green Dhaka-1215', '01716311763', '', '2022-10-08 04:53:07', NULL),
(636, 'Mrs Bina', '2no mailer matha. EPZ CTC ph  ', '01779605970', '', '2022-10-08 07:29:42', NULL),
(637, 'SPOT sOLLUTION', 'Rupayan 287, Flat- A2,Road-8A,Dhanmondi\r\n', '', '', '2022-10-10 04:06:39', '0000-00-00 00:00:00'),
(638, 'Syed Zaman', 'H89, Gausal Azam Avenue, Sector 14, Uttara, Dhaka', '0170999909', 'sszaman009@gmail.com', '2022-10-10 04:40:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers1`
--

CREATE TABLE `customers1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers1`
--

INSERT INTO `customers1` (`id`, `customer_name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'fahmid', 'fahmidh27@gmail.com', '01964870827', 'bandarban', NULL, NULL),
(2, 'ifaz', 'ifazalam69@gmail.com', '01323264870827', 'sundorban', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Aut culpa velit vol', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenseType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`id`, `expenseType`, `created_at`, `updated_at`) VALUES
(1, 'Fare', '2023-01-31 03:47:47', NULL),
(2, 'Rent', '2023-01-31 03:49:16', NULL);

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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_05_035221_create_sessions_table', 1),
(7, '2022_06_05_093510_create_admins_table', 2),
(8, '2022_06_08_050819_create_brands_table', 3),
(9, '2022_06_11_072712_create_sliders_table', 4),
(10, '2022_06_11_080003_create_sliders_table', 5),
(11, '2022_06_12_044009_create_categories_table', 6),
(12, '2022_06_12_044635_create_sub_categories_table', 6),
(13, '2022_06_12_101831_create_products_table', 7),
(14, '2022_06_12_102120_create_multi_imgs_table', 7),
(15, '2022_06_15_111136_create_carts_table', 8),
(16, '2022_06_18_051335_create_wishlists_table', 9),
(17, '2022_06_19_061429_create_coupons_table', 10),
(18, '2022_06_20_055345_create_ship_divisions_table', 11),
(19, '2022_06_20_082833_create_ship_districts_table', 12),
(20, '2022_06_21_050936_create_ship_states_table', 13),
(21, '2022_06_22_153813_create_shippings_table', 14),
(22, '2022_06_25_052407_create_oders_table', 14),
(23, '2022_06_25_075304_create_orders_table', 15),
(24, '2022_06_25_075738_create_order_items_table', 15),
(25, '2022_06_30_065319_create_site_settings_table', 16),
(26, '2022_06_30_110044_create_seos_table', 17),
(27, '2022_07_02_062717_create_reviews_table', 18),
(28, '2022_08_01_044732_create_locations_table', 19),
(29, '2022_12_17_142839_create_quotations_table', 20),
(30, '2022_12_18_071520_create_quotations_table', 21),
(31, '2022_12_18_083754_create_quotation_items_table', 22),
(32, '2022_12_21_072212_create_customers_table', 22),
(33, '2022_12_22_051900_create_quotation_items_table', 23),
(34, '2022_12_22_051908_create_quotations_table', 23),
(35, '2022_12_22_051920_create_customers_table', 23),
(36, '2022_12_22_062042_create_quotation_items_table', 24),
(37, '2023_01_10_060905_create_banks_table', 25),
(38, '2023_01_10_071658_create_suppliers_table', 26),
(39, '2023_01_10_111709_create_purchases_table', 27),
(40, '2023_01_10_111933_create_purchase_items_table', 27),
(41, '2023_01_10_114539_create_payment_items_table', 27),
(42, '2023_01_31_092320_create_expense_types_table', 28),
(43, '2023_01_31_095728_create_employees_table', 29),
(44, '2023_01_31_103138_create_designations_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1735512591630339.jpg', '2022-06-13 03:49:44', NULL),
(2, 1, 'upload/products/multi-image/1735512591886649.jpg', '2022-06-13 03:49:44', NULL),
(3, 1, 'upload/products/multi-image/1735512592221241.jpg', '2022-06-13 03:49:45', NULL),
(4, 2, 'upload/products/multi-image/1735513072310916.jpg', '2022-06-13 03:57:23', NULL),
(5, 2, 'upload/products/multi-image/1735513072611697.jpg', '2022-06-13 03:57:23', NULL),
(6, 2, 'upload/products/multi-image/1735513072855222.jpg', '2022-06-13 03:57:23', NULL),
(7, 3, 'upload/products/multi-image/1735513599401796.jpg', '2022-06-13 04:05:45', NULL),
(8, 3, 'upload/products/multi-image/1735513599686734.jpg', '2022-06-13 04:05:46', NULL),
(11, 5, 'upload/products/multi-image/1735581720124153.jpg', '2022-06-13 22:08:30', NULL),
(12, 5, 'upload/products/multi-image/1735581720432680.jpg', '2022-06-13 22:08:31', NULL),
(13, 5, 'upload/products/multi-image/1735581720737548.jpg', '2022-06-13 22:08:31', NULL),
(14, 5, 'upload/products/multi-image/1735581721024869.jpg', '2022-06-13 22:08:31', NULL),
(15, 6, 'upload/products/multi-image/1735582540510473.jpg', '2022-06-13 22:21:33', NULL),
(16, 6, 'upload/products/multi-image/1735582540824561.jpg', '2022-06-13 22:21:33', NULL),
(17, 6, 'upload/products/multi-image/1735582541268855.jpg', '2022-06-13 22:21:33', NULL),
(18, 7, 'upload/products/multi-image/1735600022370111.png', '2022-06-14 02:59:27', NULL),
(19, 7, 'upload/products/multi-image/1735600024918135.png', '2022-06-14 02:59:29', NULL),
(20, 7, 'upload/products/multi-image/1735600027316408.png', '2022-06-14 02:59:30', NULL),
(21, 8, 'upload/products/multi-image/1735601079138720.png', '2022-06-14 03:16:15', NULL),
(22, 8, 'upload/products/multi-image/1735601081674839.png', '2022-06-14 03:16:17', NULL),
(23, 8, 'upload/products/multi-image/1735601084029124.png', '2022-06-14 03:16:17', NULL),
(24, 9, 'upload/products/multi-image/1735606312768959.jpg', '2022-06-14 04:39:24', NULL),
(25, 9, 'upload/products/multi-image/1735606313072461.jpg', '2022-06-14 04:39:24', NULL),
(26, 9, 'upload/products/multi-image/1735606313315540.jpg', '2022-06-14 04:39:24', NULL),
(27, 9, 'upload/products/multi-image/1735606313592829.jpg', '2022-06-14 04:39:24', NULL),
(28, 10, 'upload/products/multi-image/1738595912035419.jfif', '2022-07-17 04:37:49', NULL),
(30, 11, 'upload/products/multi-image/1739487564477420.jpg', '2022-07-27 00:50:14', NULL),
(31, 11, 'upload/products/multi-image/1739487564917185.jpg', '2022-07-27 00:50:14', NULL),
(32, 11, 'upload/products/multi-image/1739487565246422.png', '2022-07-27 00:50:15', NULL),
(33, 12, 'upload/products/multi-image/1739487957485719.jpg', '2022-07-27 00:56:29', NULL),
(34, 12, 'upload/products/multi-image/1739487957864802.jpg', '2022-07-27 00:56:29', NULL),
(35, 13, 'upload/products/multi-image/1740521266670096.PNG', '2022-08-07 10:40:29', NULL),
(36, 13, 'upload/products/multi-image/1740521267056518.PNG', '2022-08-07 10:40:29', NULL),
(37, 13, 'upload/products/multi-image/1740521267356526.PNG', '2022-08-07 10:40:30', NULL),
(38, 13, 'upload/products/multi-image/1740521267670678.PNG', '2022-08-07 10:40:30', NULL),
(39, 14, 'upload/products/multi-image/1740569090190132.jpg', '2022-08-07 23:20:37', NULL),
(40, 14, 'upload/products/multi-image/1740569090440327.jpg', '2022-08-07 23:20:37', NULL),
(41, 14, 'upload/products/multi-image/1740569090739141.jpg', '2022-08-07 23:20:38', NULL),
(42, 15, 'upload/products/multi-image/1741659940676835.PNG', '2022-08-20 00:19:13', NULL),
(43, 15, 'upload/products/multi-image/1741659940920304.PNG', '2022-08-20 00:19:13', NULL),
(44, 15, 'upload/products/multi-image/1741659941163835.PNG', '2022-08-20 00:19:14', NULL),
(45, 15, 'upload/products/multi-image/1741659941444909.PNG', '2022-08-20 00:19:14', NULL),
(46, 15, 'upload/products/multi-image/1741659941699541.PNG', '2022-08-20 00:19:14', NULL),
(55, 19, 'upload/products/multi-image/1743741945785306.JPG', '2022-09-11 23:51:48', NULL),
(56, 19, 'upload/products/multi-image/1743741946060690.png', '2022-09-11 23:51:48', NULL),
(57, 19, 'upload/products/multi-image/1743741946381868.png', '2022-09-11 23:51:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `payment_items`
--

CREATE TABLE `payment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED NOT NULL,
  `b_paid_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_items`
--

INSERT INTO `payment_items` (`id`, `purchase_id`, `bank_id`, `b_paid_amount`, `created_at`, `updated_at`) VALUES
(7, 14, 1, 9.00, '2023-01-25 01:55:26', '2023-01-25 01:55:26'),
(8, 18, 1, 34.00, '2023-01-25 02:30:59', '2023-01-25 02:30:59'),
(9, 19, 1, 57.00, '2023-01-25 02:33:20', '2023-01-25 02:33:20'),
(10, 20, 1, 36.00, '2023-01-25 02:34:05', '2023-01-25 02:34:05'),
(11, 21, 1, 90.00, '2023-01-25 02:35:59', '2023-01-25 02:35:59'),
(12, 22, 1, 53.00, '2023-01-25 02:36:53', '2023-01-25 02:36:53'),
(13, 35, 1, 100.00, '2023-01-26 00:23:23', '2023-01-26 00:23:23'),
(14, 36, 1, 42.00, '2023-01-26 00:29:11', '2023-01-26 00:29:11'),
(15, 37, 1, 43.00, '2023-01-26 00:30:47', '2023-01-26 00:30:47'),
(16, 38, 1, 34.00, '2023-01-26 00:32:13', '2023-01-26 00:32:13'),
(17, 39, 1, 49.00, '2023-01-26 01:06:34', '2023-01-26 01:06:34'),
(18, 40, 1, 4.00, '2023-01-30 04:47:02', '2023-01-30 04:47:02'),
(19, 40, 2, 95.00, '2023-01-30 04:47:02', '2023-01-30 04:47:02'),
(20, 40, 1, 54.00, '2023-01-30 04:47:02', '2023-01-30 04:47:02'),
(21, 41, 2, 11.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(22, 41, 2, 93.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(23, 41, 2, 80.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(24, 41, 1, 29.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(25, 42, 1, 20.00, '2023-01-30 22:48:43', '2023-01-30 22:48:43'),
(26, 42, 2, 59.00, '2023-01-30 22:48:43', '2023-01-30 22:48:43'),
(27, 43, 1, 53.00, '2023-01-30 22:58:50', '2023-01-30 22:58:50');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `selling_price` varchar(100) DEFAULT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `qty` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `selling_price`, `product_code`, `status`, `discount_price`, `discount`, `qty`, `created_at`, `updated_at`) VALUES
(1, '1', 'STATA 1G Smart Switch (Metal Body)', '2200', 'ST-MV-SGS-1G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(2, '1', 'STATA 1G Smart Switch (Metal Body)', '2200', 'ST-MV-SGS-1G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(3, '1', 'STATA 2G Smart Switch (Metal Body)', '2500', 'ST-MV-SGS-2G-GW', 1, NULL, NULL, NULL, NULL, '2023-01-25 00:01:18'),
(4, '1', 'STATA 2G Smart Switch (Metal Body)', '2500', 'ST-MV-SGS-2G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(5, '1', 'STATA 3G Smart Switch (Metal Body)', '2900', 'ST-MV-SGS-3G-GW', 1, NULL, NULL, 10, NULL, '2023-01-30 05:45:31'),
(6, '1', 'STATA 3G Smart Switch (Metal Body)', '2900', 'ST-MV-SGS-3G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(7, '1', 'STATA 4G Smart Switch (Metal Body)', '3200', 'ST-MV-SGS-4G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(8, '1', 'STATA 4G Smart Switch (Metal Body)', '3200', 'ST-MV-SGS-4G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(9, '1', 'STATA Boiler Smart Switch ', '3000', 'ST-MV-SGS-BS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(10, '1', 'STATA Boiler Smart Switch ', '3000', 'ST-MV-SGS-BS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(11, '8', 'Crystal Glass Panel 1G (Front Shell)', '700', 'ST-MV-S1SP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(12, '8', 'Crystal Glass Panel 1G (Front Shell)', '700', 'ST-MV-S1SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(13, '8', 'Crystal Glass Panel 2G (Front Shell)', '700', 'ST-MV-S2SP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(14, '8', 'Crystal Glass Panel 2G (Front Shell)', '700', 'ST-MV-S2SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(15, '8', 'Crystal Glass Panel 3G (Front Shell)', '700', 'ST-MV-S3SP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(16, '8', 'Crystal Glass Panel 3G (Front Shell)', '700', 'ST-MV-S3SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(17, '8', 'Crystal Glass Panel 4G (Front Shell)', '700', 'ST-MV-S4SP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(18, '8', 'Crystal Glass Panel 4G (Front Shell)', '700', 'ST-MV-S4SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(19, '8', 'Crystal Glass Panel Boiler (Front Shell)', '700', 'ST-MV-SBSP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(20, '8', 'Crystal Glass Panel Boiler (Front Shell)', '700', 'ST-MV-SBSP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(21, '1', 'STATA Smart 3-Pin Socket', '2400', 'ST-MV-SS-3PS-GW', 1, NULL, NULL, NULL, NULL, '2023-01-25 00:01:18'),
(22, '1', 'STATA Smart 3-Pin Socket', '2400', 'ST-MV-SS-3PS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(23, '7', 'STATA Smart Doorbell', '7500', 'ST-MV-SVDB-MB', 1, NULL, NULL, NULL, NULL, NULL),
(24, '7', 'STATA Smart Doorbell', '7500', 'ST-MV-SVDB-GR', 1, NULL, NULL, NULL, NULL, NULL),
(25, '1', 'STATA Smart Fan Switch', '', 'ST-TNG-SGS-FD-GW', 1, NULL, NULL, NULL, NULL, NULL),
(26, '1', 'STATA Smart Fan Switch', '', 'ST-TNG-SGS-FD-JB', 1, NULL, NULL, NULL, NULL, NULL),
(27, '1', 'STATA Smart Switch 1G ', '2200', 'ST-YTT-SGS-1G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(28, '1', 'STATA Smart Switch 1G ', '2200', 'ST-YTT-SGS-1G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(29, '1', 'STATA Smart Switch 2G ', '2500', 'ST-YTT-SGS-2G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(30, '1', 'STATA Smart Switch 2G ', '2500', 'ST-YTT-SGS-2G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(31, '1', 'STATA Smart Switch 3G ', '2900', 'ST-YTT-SGS-3G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(32, '1', 'STATA Smart Switch 3G ', '2900', 'ST-YTT-SGS-3G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(33, '1', 'STATA Smart Switch 4G ', '3200', 'ST-YTT-SGS-4G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(34, '1', 'STATA Smart Switch 4G ', '3200', 'ST-YTT-SGS-4G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(35, '1', 'STATA Smart Boiler Switch 20A', '', 'ST-YTT-SGS-BS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(36, '1', 'STATA Smart Boiler Switch 20A', '', 'ST-YTT-SGS-BS-JB', 1, NULL, NULL, 72, NULL, '2023-01-30 04:47:01'),
(37, '1', 'STATA Smart Fan Dimmer', '', 'ST-YTT-SGS-FD-GW', 1, NULL, NULL, NULL, NULL, NULL),
(38, '1', 'STATA Smart Fan Dimmer', '', 'ST-YTT-SGS-FD-JB', 1, NULL, NULL, NULL, NULL, NULL),
(39, '1', 'STATA Curtain Switch', '', 'ST-YTT-SGS-CS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(40, '1', 'STATA Curtain Switch', '', 'ST-YTT-SGS-CS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(41, '1', 'STATA Light Dimmer', '2900', 'ST-YTT-SGS-LD-GW', 1, NULL, NULL, NULL, NULL, NULL),
(42, '1', 'STATA Light Dimmer', '2900', 'ST-YTT-SGS-LD-JB', 1, NULL, NULL, NULL, NULL, NULL),
(43, '8', 'Crystal Glass Panel 1G (Front Shell)', '700', 'ST-YTT-S1SP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(44, '8', 'Crystal Glass Panel 1G (Front Shell)', '700', 'ST-YTT-S1SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(45, '8', 'Crystal Glass Panel 2G (Front Shell)', '700', 'ST-YTT-S2SP-GMB-GW', 1, NULL, NULL, 5, NULL, '2023-01-30 22:58:50'),
(46, '8', 'Crystal Glass Panel 2G (Front Shell)', '700', 'ST-YTTS2SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(47, '8', 'Crystal Glass Panel 3G (Front Shell)', '700', 'ST-YTT-S3SP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(48, '8', 'Crystal Glass Panel 3G (Front Shell)', '700', 'ST-YTT-S3SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(49, '8', 'Crystal Glass Panel 4G (Front Shell)', '700', 'ST-YTT-S4SP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(50, '8', 'Crystal Glass Panel 4G (Front Shell)', '700', 'ST-YTT-S4SP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(51, '8', 'Crystal Glass Panel Boiler (Front Shell)', '700', 'ST-YTT-SBSP-GMB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(52, '8', 'Crystal Glass Panel Boiler (Front Shell)', '700', 'ST-YTT-SBSP-GMB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(53, '8', 'Crystal Glass Panel Fan Switch (Front Shell)', '700', 'ST-YTT-SFDP-GMB-GW', 1, NULL, NULL, NULL, NULL, '2023-01-26 00:23:23'),
(54, '8', 'Crystal Glass Panel Fan Switch (Front Shell)', '700', 'ST-YTT-SFDP-GMB-JB', 1, NULL, NULL, NULL, NULL, '2023-01-26 00:23:23'),
(55, '8', 'Smart 1 Gang Switch Body ', '1500', 'ST-YTT-S1GSB-PSB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(56, '8', 'Smart 1 Gang Switch Body ', '1500', 'ST-YTT-S1GSB-PSB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(57, '8', 'Smart 2 Gang Switch Body ', '1800', 'ST-YTT-S2GSB-PSB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(58, '8', 'Smart 2 Gang Switch Body ', '1800', 'ST-YTT-S2GSB-PSB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(59, '8', 'Smart 3 Gang Switch Body ', '2200', 'ST-YTT-S3GSB-PSB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(60, '8', 'Smart 3 Gang Switch Body ', '2200', 'ST-YTT-S3GSB-PSB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(61, '8', 'Smart 4 Gang Switch Body ', '2500', 'ST-YTT-S4GSB-PSB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(62, '8', 'Smart 4 Gang Switch Body ', '2500', 'ST-YTT-S4GSB-PSB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(63, '8', 'Smart Boiler Switch Body ', '2300', 'ST-YTT-SBSB-PSB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(64, '8', 'Smart Boiler Switch Body ', '2300', 'ST-YTT-SBSB-PSB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(65, '8', 'Smart Fan Dimmer Body ', '', 'ST-YTT-SFDB-PSB-GW', 1, NULL, NULL, NULL, NULL, NULL),
(66, '8', 'Smart Fan Dimmer Body ', '', 'ST-YTT-SFDB-PSB-JB', 1, NULL, NULL, NULL, NULL, NULL),
(67, '2', 'STATA X9+', '27999', 'ST-DEF-SDL-X9+-BL', 1, NULL, NULL, NULL, NULL, NULL),
(68, '2', 'STATA X9+', '27999', 'ST-DEF-SDL-X9+-RG', 1, NULL, NULL, NULL, NULL, NULL),
(69, '2', 'STATA X9', '25000', 'ST-DEF-SDL-X9-BL', 1, NULL, NULL, NULL, NULL, NULL),
(70, '2', 'STATA X9', '25000', 'ST-DEF-SDL-X9-RG', 1, NULL, NULL, 43, NULL, '2023-01-30 04:47:01'),
(71, '2', 'STATA X9', '25000', 'ST-DEF-SDL-X9-SE', 1, NULL, NULL, NULL, NULL, NULL),
(72, '2', 'STATA X9 Lite', '20999', 'ST-DEF-SDL-X9-BL', 1, NULL, NULL, NULL, NULL, NULL),
(73, '2', 'STATA X9 Lite', '20999', 'ST-DEF-SDL-X9-RG', 1, NULL, NULL, NULL, NULL, NULL),
(74, '2', 'STATA CLUTCH', '18999', 'ST-DEF-SDL-CLU-BL', 1, NULL, NULL, NULL, NULL, NULL),
(75, '2', 'STATA CLUTCH', '18999', 'ST-DEF-SDL-CLU-RG', 1, NULL, NULL, NULL, NULL, NULL),
(76, '2', 'STATA BOLT', '34999', 'ST-DEF-SDL-BLT-BL', 1, NULL, NULL, NULL, NULL, NULL),
(77, '2', 'STATA BOLT', '34999', 'ST-DEF-SDL-BLT-RG', 1, NULL, NULL, NULL, NULL, NULL),
(78, '2', 'STATA BOLT', '34999', 'ST-DEF-SDL-BLT-SE', 1, NULL, NULL, NULL, NULL, NULL),
(79, '2', 'STATA BOLT PRO', '42500', 'ST-DEF-SDL-BLTP-BL', 1, NULL, NULL, NULL, NULL, NULL),
(80, '2', 'STATA BOLT PRO', '42500', 'ST-DEF-SDL-BLTP-RG', 1, NULL, NULL, NULL, NULL, NULL),
(81, '2', 'STATA BOLT PRO', '42500', 'ST-DEF-SDL-BLTP-SE', 1, NULL, NULL, NULL, NULL, NULL),
(82, '2', 'STATA TAP (BLE)', '', 'ST-DEF-BDL-TP-BL', 1, NULL, NULL, NULL, NULL, NULL),
(83, '2', 'STATA TAP (BLE)', '', 'ST-DEF-BDL-TP-SE', 1, NULL, NULL, NULL, NULL, NULL),
(84, '2', 'STATA TAP DUO (BLE)', '', 'ST-DEF-BDL-TP2-BL', 1, NULL, NULL, NULL, NULL, '2023-01-25 01:55:26'),
(85, '2', 'STATA TAP DUO (BLE)', '', 'ST-DEF-BDL-TP2-SE', 1, NULL, NULL, NULL, NULL, NULL),
(86, '2', 'STATA X5', '', 'ST-DEF-SDL-X5-BL', 1, NULL, NULL, NULL, NULL, NULL),
(87, '2', 'STATA X5', '', 'ST-DEF-SDL-X5-RG', 1, NULL, NULL, NULL, NULL, NULL),
(88, '2', 'STATA Glass Door Lock (BLE)', '', 'ST-DEF-BGDL-RG', 1, NULL, NULL, NULL, NULL, NULL),
(89, '2', 'STATA Glass Door Lock (BLE)', '', 'ST-DEF-BGDL-BL', 1, NULL, NULL, 92, NULL, '2023-01-30 05:45:31'),
(90, '2', 'STATA Glass Door Lock (WiFI)', '', 'ST-DEF-WGDL-BL', 1, NULL, NULL, NULL, NULL, NULL),
(91, '2', 'STATA ULTRA', '', 'ST-DEF-SDL-ULT-MB', 1, NULL, NULL, NULL, NULL, NULL),
(92, '2', 'STATA ULTRA', '', 'ST-DEF-SDL-ULT-GM', 1, NULL, NULL, NULL, NULL, NULL),
(93, '2', 'STATA ULTRA', '24000', 'ST-DEF-SDL-ULT-BC', 1, NULL, NULL, NULL, NULL, NULL),
(94, '2', 'STATA CELESTIAL', '', 'ST-DEF-SDL-CEL-DF', 1, NULL, NULL, 44, NULL, '2023-01-26 00:29:11'),
(95, '2', 'STATA VERGE', '22000', 'ST-QLE-SDL-VRG-MB', 1, NULL, NULL, NULL, NULL, NULL),
(96, '2', 'STATA CLUTCH', '18999', 'ST-QLE-SDL-CLU-BL', 1, NULL, NULL, NULL, NULL, NULL),
(97, '2', 'STATA CLUTCH ', '18999', 'ST-QLE-SDL-CLU-RG', 1, NULL, NULL, NULL, NULL, NULL),
(98, '2', 'STATA EVO', '', 'ST-RND-BDL-EVO-BL', 1, NULL, NULL, NULL, NULL, NULL),
(99, '2', 'RFID Card', '', 'ST-DEF-DLA-RFC-DF', 1, NULL, NULL, NULL, NULL, NULL),
(100, '2', 'BLE To WiFi Gateway (TT)', '3500', 'ST-DEF-DLA-BTWT-DF', 1, NULL, NULL, NULL, NULL, NULL),
(101, '2', 'STATA BLE To WiFi Gateway', '', 'ST-DEF-DLA-SBTW-DF', 1, NULL, NULL, NULL, NULL, NULL),
(102, '9', ' STATA-5-Pin Multi Socket ', '1700', 'ST-SD-TSS-5PS-GW', 1, NULL, NULL, NULL, NULL, '2023-01-25 02:36:52'),
(103, '9', ' STATA-5-Pin Multi Socket ', '1700', 'ST-SD-TSS-5PS-JB', 1, NULL, NULL, 120, NULL, '2023-01-26 01:06:34'),
(104, '9', ' STATA-5-Pin Multi Socket ', '1700', 'ST-SD-TSS-5PS-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(105, '9', 'STATA TV+Net Socket', '1700', 'ST-SD-TSS-TNS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(106, '9', 'STATA TV+Net Socket', '1700', 'ST-SD-TSS-TNS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(107, '9', 'STATA TV+Net Socket', '1700', 'ST-SD-TSS-TNS-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(108, '9', 'STATA Telephone  Socket', '1700', 'ST-SD-TSS-TS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(109, '9', 'STATA Telephone  Socket', '1700', 'ST-SD-TSS-TS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(110, '9', 'STATA Telephone  Socket', '1700', 'ST-SD-TSS-TS-IVG', 1, NULL, NULL, 47, NULL, '2023-01-26 01:06:34'),
(111, '9', 'STATA 5 Pin Multi Socket (USB-C)', '1800', 'ST-SD-TSS-5PSC-GW', 1, NULL, NULL, NULL, NULL, NULL),
(112, '9', 'STATA 5 Pin Multi Socket (USB-C)', '1800', 'ST-SD-TSS-5PSC-JB', 1, NULL, NULL, NULL, NULL, NULL),
(113, '9', 'STATA 5 Pin Multi Socket (USB-C)', '1800', 'ST-SD-TSS-5PSC-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(114, '9', 'STATA 3-Pin AC Socket (Round Pin)', '1700', 'ST-SD-TSS-3PS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(115, '9', 'STATA 3-Pin AC Socket (Round Pin)', '1700', 'ST-SD-TSS-3PS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(116, '9', 'STATA 3-Pin AC Socket (Round Pin)', '1700', 'ST-SD-TSS-3PS-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(117, '9', 'STATA Calling Bell Switch', '', 'ST-SD-TSS-CBS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(118, '9', 'STATA Calling Bell Switch', '', 'ST-SD-TSS-CBS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(119, '9', 'STATA Calling Bell Switch', '', 'ST-SD-TSS-CBS-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(120, '9', 'STATA Blank Switch', '1000', 'ST-SD-TSS-BLS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(121, '9', 'STATA Blank Switch', '1000', 'ST-SD-TSS-BLS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(122, '9', 'STATA Blank Switch', '1000', 'ST-SD-TSS-BLS-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(123, '9', 'STATA DP Switch', '', 'ST-SD-TSS-DPS-GW', 1, NULL, NULL, NULL, NULL, '2023-01-25 02:30:59'),
(124, '9', 'STATA DP Switch', '', 'ST-SD-TSS-DPS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(125, '9', 'STATA DP Switch', '', 'ST-SD-TSS-DPS-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(126, '9', 'STATA Traditional Fan Dimmer', '', 'ST-SD-TSS-TRFD-GW', 1, NULL, NULL, NULL, NULL, NULL),
(127, '9', 'STATA Traditional Fan Dimmer', '', 'ST-SD-TSS-TRFD-JB', 1, NULL, NULL, NULL, NULL, NULL),
(128, '9', 'STATA Traditional Fan Dimmer', '', 'ST-SD-TSS-TRFD-IVG', 1, NULL, NULL, NULL, NULL, NULL),
(129, '9', 'MIB Touch Fan Dimmer', '', 'MB-XZX-TSS-TFD-GW', 1, NULL, NULL, 57, NULL, '2023-01-30 05:45:31'),
(130, '9', 'MIB Touch Fan Dimmer', '', 'MB-XZX-TSS-TFD-JB', 1, NULL, NULL, NULL, NULL, NULL),
(131, '9', 'MIB 1G Touch Switch', '', 'MB-XZX-TSS-T1G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(132, '9', 'MIB 1G Touch Switch', '', 'MB-XZX-TSS-T1G-JB', 1, NULL, NULL, NULL, NULL, '2023-01-25 01:55:26'),
(133, '9', 'MIB 2G Touch Switch', '', 'MB-XZX-TSS-T2G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(134, '9', 'MIB 2G Touch Switch', '', 'MB-XZX-TSS-T2G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(135, '9', 'MIB 3G Touch Switch', '', 'MB-XZX-TSS-T3G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(136, '9', 'MIB 3G Touch Switch', '', 'MB-XZX-TSS-T3G-JB', 1, NULL, NULL, NULL, NULL, NULL),
(137, '9', 'MIB 4G Touch Switch', '', 'MB-XZX-TSS-T4G-GW', 1, NULL, NULL, NULL, NULL, NULL),
(138, '9', 'MIB 4G Touch Switch', '', 'MB-XZX-TSS-T4G-JB', 1, NULL, NULL, 7, NULL, '2023-01-30 22:48:43'),
(139, '9', '1G Touch Switch Body With Front Shell', '', 'MB-XZX-TSS-1GTSBFS-BL', 1, NULL, NULL, 64, NULL, '2023-01-30 05:45:31'),
(140, '9', '2G Touch Switch Body With Front Shell', '', 'MB-XZX-TSS-2GTSBFS-BL', 1, NULL, NULL, NULL, NULL, NULL),
(141, '9', '3G Touch Switch Body With Front Shell', '', 'MB-XZX-TSS-3GTSBFS-BL', 1, NULL, NULL, NULL, NULL, NULL),
(142, '9', '4G Touch Switch Body With Front Shell', '', 'MB-XZX-TSS-4GTSBFS-BL', 1, NULL, NULL, NULL, NULL, NULL),
(143, '9', 'Fan Touch Switch Body With Front Shell', '', 'MB-XZX-TSS-FTSBFS-BL', 1, NULL, NULL, NULL, NULL, NULL),
(144, '7', 'STATA UIR', '2970', 'ST-HID-SHA-IRB-DF', 1, NULL, NULL, NULL, NULL, NULL),
(145, '7', 'STATA IR Thermostate', '', 'ST-NEO-SHA-IRT-WH', 1, NULL, NULL, NULL, NULL, NULL),
(146, '7', 'STATA HPS', '', 'ST-CHN-SHA-HPS-BL', 1, NULL, NULL, NULL, NULL, NULL),
(147, '10', 'Freight', '70', 'NULL', 1, NULL, NULL, NULL, NULL, NULL),
(148, '9', 'MIB 5 Pin Multi Socket (USB-C)', '', 'MB-SD-TSS-5PSC-GW', 1, NULL, NULL, NULL, NULL, NULL),
(149, '9', 'MIB 5 Pin Multi Socket (USB-C)', '', 'MB-SD-TSS-5PSC-JB', 1, NULL, NULL, NULL, NULL, NULL),
(150, '9', 'MIB 3-Pin AC Socket (Round Pin)', '', 'MB-SD-TSS-3PS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(151, '9', 'MIB 3-Pin AC Socket (Round Pin)', '', 'MB-SD-TSS-3PS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(152, '9', 'MIB Calling Bell Switch', '', 'MB-SD-TSS-CBS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(153, '9', 'MIB Calling Bell Switch', '', 'MB-SD-TSS-CBS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(154, '9', 'MIB Blank Switch', '', 'MB-SD-TSS-BLS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(155, '9', 'MIB Blank Switch', '', 'MB-SD-TSS-BLS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(156, '9', 'MIB DP Switch', '', 'MB-SD-TSS-DPS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(157, '9', 'MIB DP Switch', '', 'MB-SD-TSS-DPS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(158, '9', 'MIB TV+Net Socket', '', 'MB-SD-TSS-TNS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(159, '9', 'MIB TV+Net Socket', '', 'MB-SD-TSS-TNS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(160, '9', 'MIB Telephone  Socket', '', 'MB-SD-TSS-TS-GW', 1, NULL, NULL, NULL, NULL, NULL),
(161, '9', 'MIB Telephone  Socket', '', 'MB-SD-TSS-TS-JB', 1, NULL, NULL, NULL, NULL, NULL),
(162, '3', 'Smart Gas Valve', '', 'ST-MV-SGV-DF', 1, NULL, NULL, NULL, NULL, NULL),
(163, '4', 'Smart RGB Bulb 10W', '1650', 'ST-FLD-SLS-E2710W-RGB', 1, NULL, NULL, NULL, NULL, NULL),
(164, '4', 'Smart Downlight 9W', '', 'ST-FLD-SLS-DL9W-RGB', 1, NULL, NULL, 91, NULL, '2023-01-30 04:47:01'),
(165, '4', 'Smart LED Strip Light RGB', '', 'ST-FLD-SLS-SL5M-RGB', 1, NULL, NULL, NULL, NULL, NULL),
(166, '4', 'Smart Sunset Light', '', 'ST-FLD-SLS-SUN-RGB', 1, NULL, NULL, NULL, NULL, NULL),
(167, '4', 'Smart Rhythmic Lamp', '', 'ST-FLD-SLS-SRL-RGB', 1, NULL, NULL, NULL, NULL, NULL),
(168, '4', 'Smart Splice Wall Lamp', '', 'ST-FLD-SLS-SWL-RGB', 1, NULL, NULL, NULL, NULL, NULL),
(169, '4', 'Smart Ceiling Lamp 24W', '', 'ST-FLD-SLS-SCL-RGB', 1, NULL, NULL, NULL, NULL, NULL),
(170, '7', 'Video Doorbell with 7in Display ', '', 'ST-MOR-SHA-7SVDD-WH', 1, NULL, NULL, NULL, NULL, NULL),
(171, '7', 'Video Doorbell with 7in Display ', '', 'ST-MOR-SHA-7SVDD-BL', 1, NULL, NULL, NULL, NULL, NULL),
(172, '1', 'Smart 1G Metal Body', '1200', 'ST-MV-S1SMB-SMB-DF', 1, NULL, NULL, NULL, NULL, NULL),
(173, '1', 'Smart 2G Metal Body', '1500', 'ST-MV-S2SMB-SMB-DF', 1, NULL, NULL, 15, NULL, '2023-01-30 05:45:31'),
(174, '1', 'Smart 3G Metal Body', '1900', 'ST-MV-S3SMB-SMB-DF', 1, NULL, NULL, 21, NULL, '2023-01-30 22:48:43'),
(175, '1', 'Smart 4G Metal Body', '2300', 'ST-MV-S4SMB-SMB-DF', 1, NULL, NULL, NULL, NULL, NULL),
(176, '1', 'Smart Fan Dimmer Metal Body', '1900', 'ST-MV-SFDMB-SMB-DF', 1, NULL, NULL, NULL, NULL, NULL),
(177, '1', 'Smart Boiler Metal Body', '2000', 'ST-MV-SBMB-SMB-DF', 1, NULL, NULL, NULL, NULL, NULL),
(178, NULL, 'test', '111', 'sdsdsd', 1, NULL, NULL, NULL, '2023-01-11 04:22:50', '2023-01-11 04:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `products1`
--

CREATE TABLE `products1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products1`
--

INSERT INTO `products1` (`id`, `category_id`, `product_name`, `product_code`, `selling_price`, `discount_price`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(28, 10, 'STATA Bolt', 'sa', '100', '90', '10', 1, '2022-12-27 04:08:53', NULL),
(29, 9, 'ifazzz', 'ST-BOLT-SDL', '2500', '2000', '500', 1, '2022-12-27 04:09:12', NULL),
(30, 10, 'x9', 'dfdfdfdfd', '27000', NULL, '25001', 1, '2023-01-04 02:24:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productsold`
--

CREATE TABLE `productsold` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `selling_price` float DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `discount_pric` varchar(50) DEFAULT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `qty` int(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productsold`
--

INSERT INTO `productsold` (`id`, `category_id`, `product_name`, `selling_price`, `discount_price`, `discount_pric`, `product_code`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Smart Switch 4G', 3300, NULL, 'Glacier White', 'NB-SGS-4G-GW', NULL, 1, NULL, NULL),
(2, '1', 'Smart Switch 4G', 3300, NULL, 'Jet Black', 'NB-SGS-4G-JB', NULL, 1, NULL, NULL),
(3, '1', 'STATA Smart Switch 4G', 3300, NULL, 'Glacier White', 'ST-SGS-4G-GW', NULL, 1, NULL, NULL),
(4, '1', 'Smart Switch 4G', 3300, NULL, 'Ivory Gold', 'NB-SGS-4G-IVG', NULL, 1, NULL, NULL),
(5, '1', 'STATA Fan Dimmer ', 2900, NULL, 'Jet Black', 'ST-SGS-FD-JB', NULL, 1, NULL, NULL),
(6, '1', 'STATA Smart Fan Dimmer', 2900, NULL, 'Glacier White', 'ST-SGS-FD-GW', NULL, 1, NULL, NULL),
(7, '1', 'STATA Smart Switch 3G', 2900, NULL, 'Glacier White', 'ST-SGS-3G-GW', NULL, 1, NULL, NULL),
(8, '1', 'STATA Smart Switch 3G', 2900, NULL, 'Jet Black', 'ST-SGS-3G-JB', NULL, 1, NULL, NULL),
(9, '1', 'Smart Switch 3G', 2900, NULL, 'Ivory Gold', 'ST-SGS-3G-IVG', NULL, 1, NULL, NULL),
(10, '1', 'Smart Fan Dimmer', 2900, NULL, 'Ivory Gold', 'NBO-SGS-FD-IVG', NULL, 1, NULL, NULL),
(11, '1', 'STATA Smart Boiler Switch 20A', 3000, NULL, 'Jet Black', 'ST-SGS-BS-JB', NULL, 1, NULL, NULL),
(12, '1', 'STATA Smart Boiler Switch 20A', 3000, NULL, 'Glacier White', 'ST-SGS-BS-GW', NULL, 1, NULL, NULL),
(13, '1', 'Smart Boiler Switch 20A', 3000, NULL, 'Ivory Gold', 'ST-SGS-BS-IVG', NULL, 1, NULL, NULL),
(14, '3', 'STATA Smart Door Lock  X9+', 27999, NULL, 'Black', 'NB-SDL-X9+-BL', NULL, 1, NULL, NULL),
(15, '3', 'STATA Smart Door Lock X9+', 27999, NULL, 'Rose Gold', 'NB-SDL-X9+-RG', NULL, 1, NULL, NULL),
(16, '3', 'STATA Smart Door Lock X9', 25000, NULL, 'Silver Edition', 'NB-SDL-X9-SE', NULL, 1, NULL, NULL),
(17, '3', 'STATA X9 Lite', 20999, NULL, 'Black', 'NB-SDL-X9L-BL', NULL, 1, NULL, NULL),
(18, '4', 'STATA RECON', 2900, NULL, '', 'NB-SIPC-REC', NULL, 1, NULL, NULL),
(19, '3', 'STATA EVO', 11999, NULL, 'Black', 'NB-SDL-EVO-B', NULL, 1, NULL, NULL),
(20, '2', 'STATA UIR', 2900, NULL, 'Black', 'NB-SUIR', NULL, 1, NULL, NULL),
(21, '1', '5-Pin Multi Socket ', 1700, NULL, 'Jet Black', 'NB-T5MS-JB', NULL, 1, NULL, NULL),
(22, '1', '5-Pin Multi Socket ', 1700, NULL, 'Glacier White', 'NB-T5MS-GW', NULL, 1, NULL, NULL),
(23, '1', '5-Pin Multi Socket ', 1700, NULL, 'Ivory Gold', 'NB-T5MS-IVG', NULL, 1, NULL, NULL),
(24, '1', 'TV+Net Socket', 1800, NULL, 'Jet Black', 'NB-TTNS-JB', NULL, 1, NULL, NULL),
(25, '1', 'TV+Net Socket', 1800, NULL, 'Glacier White', 'NB-TTNS-GW', NULL, 1, NULL, NULL),
(26, '1', 'TV+Net Socket', 1800, NULL, 'Ivory Gold', 'NB-TTNS-IVG', NULL, 1, NULL, NULL),
(27, '1', 'Smart Bulb 10W ', 1650, NULL, '', 'NB-SB10-E27', NULL, 1, NULL, NULL),
(28, '1', 'STATA Smart Switch 1G ', 2200, NULL, 'Glacier White', 'ST-SGS-1G-GW', NULL, 1, NULL, NULL),
(29, '1', 'STATA Smart Switch 1G', 2200, NULL, 'Jet Black', 'ST-SGS-1G-JB', NULL, 1, NULL, NULL),
(30, '1', 'Smart Switch 1G ', 2200, NULL, 'Ivory Gold', 'NB-SGS-1G-IVG', NULL, 1, NULL, NULL),
(31, '1', 'Smart Switch 2G', 2500, NULL, 'Ivory Gold', 'NB-SGS-2G-IVG', NULL, 1, NULL, NULL),
(32, '1', 'STATA Smart Switch 2G', 2500, NULL, 'Jet Black', 'ST-SGS-2G-JB', NULL, 1, NULL, NULL),
(60, '1', 'Smart 3-Pin Socket', 2400, NULL, 'Glacier White', 'NB-SS3S-GW', NULL, 1, NULL, NULL),
(68, '3', 'STATA T1', 14000, NULL, 'Gold', 'NB-SDL-T1-G', NULL, 1, NULL, NULL),
(34, '3', 'STATA Smart Door Lock X9', 25000, NULL, 'Black', 'NB-SDLX9-BL', NULL, 1, NULL, NULL),
(35, '3', 'STATA X9', 25000, NULL, 'Rose Gold', 'NB-SDLX9-RG', NULL, 1, NULL, NULL),
(37, '4', 'Smart Video Door Bell', 7500, NULL, 'Black', 'NB-SVDB-WC', NULL, 1, NULL, NULL),
(38, '2', '3 In 1 Smart Speaker (Alexa)', 5000, NULL, 'Black', 'NB-SPUIR-ALEXA', NULL, 1, NULL, NULL),
(39, '2', 'Smart Vacuum Robot', 25000, NULL, 'Black', 'DB-SVR-B', NULL, 1, NULL, NULL),
(40, '2', 'Smart Vacuum Robot', 25000, NULL, 'Glacier White', 'DB-SVR-GW', NULL, 1, NULL, NULL),
(41, '4', 'Wifi GAS SENSOR', 6000, NULL, '', 'ST-WGS', NULL, 1, NULL, NULL),
(62, '1', 'Smart Bulb 12W ', 1950, NULL, '', 'NB-SB12-E27', NULL, 1, NULL, NULL),
(63, '13', 'Smart Home Beginner\'s Kit', 4999, NULL, 'Jet Black', 'ST-SHPBK-JB', NULL, 1, NULL, NULL),
(64, '13', 'Smart Home Beginner\'s Kit', 4999, NULL, 'Glacier White', 'ST-SHPBK-GW', NULL, 1, NULL, NULL),
(65, '13', 'Smart Home Beginner\'s Kit', 4999, NULL, 'Ivory Gold', 'NB-SHPBK-IVG', NULL, 1, NULL, NULL),
(66, '1', 'Smart Bulb 15W ', 2150, NULL, '', 'NB-SB15-E27', NULL, 1, NULL, NULL),
(67, '1', 'Enigma 2 Gang ', 2550, NULL, 'Glacier White', 'NB-SE2G-GW', NULL, 1, NULL, NULL),
(61, '1', 'Smart 3-Pin Socket', 2400, NULL, 'Ivory Gold', 'NB-SS3S-IVG', NULL, 1, NULL, NULL),
(50, '3', 'STATA  SMART DOOR LOCK X5', 23000, NULL, 'Black', 'ST-SDLX5', NULL, 1, NULL, NULL),
(51, '3', 'RFID Card Reader', 500, NULL, '', 'RFID', NULL, 1, NULL, NULL),
(52, '12', 'Installation & Configuration', 250, NULL, '', 'STATA General Service', NULL, 1, NULL, NULL),
(53, '12', 'Door Lock Installation & Configuration', 1500, NULL, '', 'STATA Door Lock Installation', NULL, 1, NULL, NULL),
(59, '1', 'Smart 3-Pin Socket', 2400, NULL, 'Jet Black', 'NB-SS3S-JB', NULL, 1, NULL, NULL),
(58, '1', 'STATA Smart Switch 2G ', 2500, NULL, 'Glacier White', 'ST-SGS-2G-GW', NULL, 1, NULL, NULL),
(57, '1', 'Telephone  Socket', 1700, NULL, 'Glacier White', 'NB-TS-GW', NULL, 1, NULL, NULL),
(69, '3', 'STATA T1', 14000, NULL, 'Jet Black', 'ST-SDL-T1-BL', NULL, 1, NULL, NULL),
(70, '3', 'STATA T1', 14000, NULL, 'Silver Edition', 'ST-SDL-T1-SE', NULL, 1, NULL, NULL),
(71, '15', 'Touch 1 Gang', 1700, NULL, 'Jet Black', 'NB-TS1G-JB', NULL, 1, NULL, NULL),
(84, '15', 'Touch Switch 2 Gang', 1950, NULL, 'Ivory Gold', 'NB-TS2G-IVG', NULL, 1, NULL, NULL),
(83, '15', 'Touch 1 Gang Switch', 1700, NULL, 'Glacier White', 'NB-TS1G-GW', NULL, 1, NULL, NULL),
(82, '15', 'Touch 2 Gang Switch', 1950, NULL, 'Glacier White', 'NB-TS2G-GW', NULL, 1, NULL, NULL),
(75, '15', 'Touch 1 Gang', 1700, NULL, 'Ivory Gold', 'NB-TS1G-IVG', NULL, 1, NULL, NULL),
(85, '1', 'Smart Plug', 2000, NULL, '', 'NB-SPUK', NULL, 1, NULL, NULL),
(77, '15', 'Touch 2 Gang Switch', 1950, NULL, 'Glacier White', 'NB-TS2G-GW', NULL, 1, NULL, NULL),
(79, '15', 'Touch 3 Gang', 2150, NULL, 'Jet Black', 'NB-TS3G-JB', NULL, 1, NULL, NULL),
(80, '15', 'Touch 3 Gang', 2150, NULL, '', 'NB-TS3G-GW', NULL, 1, NULL, NULL),
(81, '15', 'Touch 3 Gang', 2150, NULL, 'Ivory Gold', 'NB-TS3G-IVG', NULL, 1, NULL, NULL),
(86, '3', 'STATA X1', 40199, NULL, 'Platinum', 'NB-SDL-X1-PL', NULL, 1, NULL, NULL),
(87, '15', 'Glass Traditioinal Fan Regulator', 1500, NULL, 'Jet Black', 'NB-TFR-JB', NULL, 1, NULL, NULL),
(88, '15', 'Glass Traditioinal Fan Regulator White', 1500, NULL, 'Glacier White', 'NB-TFR-GW', NULL, 1, NULL, NULL),
(89, '15', 'Glass Traditioinal Fan Regulator IVG', 1500, NULL, 'Ivory Gold', 'NB-TFR-IVG', NULL, 1, NULL, NULL),
(93, '1', 'LCD 3 Gang Smart Switch', 7500, NULL, 'Jet Black', 'LB-LCDS3G-JB', NULL, 1, NULL, NULL),
(92, '3', 'STATA GDL (TT)', 25500, NULL, 'Black', 'TT-SGDL-BL', NULL, 1, NULL, NULL),
(110, '4', 'Wifi Gas Sensor With Valve', 12000, NULL, '', 'NB-WGS-VL', NULL, 1, NULL, NULL),
(95, '4', 'Smart Motion Sensor', 2500, NULL, '', 'NB-SMS', NULL, 1, NULL, NULL),
(97, '4', 'Smart Door Sensor', 2500, NULL, '', 'NB-SDS', NULL, 1, NULL, NULL),
(98, '4', 'Smart Leak Sensor', 4000, NULL, '', 'NB-SLS', NULL, 1, NULL, NULL),
(99, '4', 'Smart Security Package 01', 10000, NULL, '', 'NB-SSP-01', NULL, 1, NULL, NULL),
(100, '3', 'STATA BOLT', 35000, NULL, 'Black', 'NB-SDL-BOLT-B', NULL, 1, NULL, NULL),
(101, '4', 'STATA BT To WIFI Gateway', 3000, NULL, '', 'ST-WIG', NULL, 1, NULL, NULL),
(102, '1', 'Smart 1 Gang Switch OG GW', 2500, NULL, 'Glacier White', 'NB-SGS-1G-GW', NULL, 1, NULL, NULL),
(103, '1', 'Smart 1 Gang Switch OG JB', 2200, NULL, 'Jet Black', 'NB-SGS-1G-JB', NULL, 1, NULL, NULL),
(104, '1', 'Smart 2 Gang Switch OG GW', 2500, NULL, 'Glacier White', 'NB-SGS-2G-GW', NULL, 1, NULL, NULL),
(105, '1', 'Smart 2 Gang Switch OG JB', 2500, NULL, 'Jet Black', 'NB-SGS-2G-JB', NULL, 1, NULL, NULL),
(106, '1', 'LCD 3 Gang Smart Switch GW', 7500, NULL, 'Glacier White', 'NB-LCD3G-GW', NULL, 1, NULL, NULL),
(107, '1', 'Smart 3 Gang Switch OG JB', 2900, NULL, 'Jet Black', 'NB-SGS-3G-JB', NULL, 1, NULL, NULL),
(108, '1', 'Smart Fan Dimmer GW', 2900, NULL, 'Glacier White', 'NB-SFD-GW', NULL, 1, NULL, NULL),
(109, '1', 'Smart Fan Dimmer JB', 2900, NULL, 'Jet Black', 'NB-SFD-JB', NULL, 1, NULL, NULL),
(111, '5', 'Face Mask(with KN95 Filter)', 280, NULL, '', 'KN95', NULL, 1, NULL, NULL),
(112, '5', 'Pulse Oxymeter', 3200, NULL, '', 'OxyMeter', NULL, 1, NULL, NULL),
(113, '15', 'Telephone  Socket JB', 1700, NULL, 'Jet Black', 'NB-TS-JB', NULL, 1, NULL, NULL),
(114, '15', 'Telephone Socket IVG', 1700, NULL, 'Ivory Gold', 'NB-TS-IVG', NULL, 1, NULL, NULL),
(115, '15', '3-Pin Socket JB', 1700, NULL, 'Jet Black', 'NB-3PS-JB', NULL, 1, NULL, NULL),
(116, '12', 'VAT', 97500, NULL, '', 'Value Added Tax', NULL, 1, NULL, NULL),
(117, '15', 'STATA 5 Pin Multi Socket (USB-C)', 1800, NULL, 'Glacier White', 'ST-5PMSC-GW', NULL, 1, NULL, NULL),
(118, '2', 'Smart Curtain Bot', 8400, NULL, '', 'ST-CBOT', NULL, 1, NULL, NULL),
(119, '1', 'AC Socket 15A', 1800, NULL, 'Glacier White', 'ST-ACS-GW', NULL, 1, NULL, NULL),
(120, '1', 'AC Socket 15A', 1800, NULL, 'Jet Black', 'ST-ACS-JB', NULL, 1, NULL, NULL),
(121, '2', 'STATA Capsule IP Cam', 3300, NULL, 'Glacier White', 'ST-CAP-IP CAMERA', NULL, 1, NULL, NULL),
(122, '1', 'STATA Smart Switch 3G Panel', 1000, NULL, '', 'ST-SGS-3G', NULL, 1, NULL, NULL),
(123, '1', 'STATA Smart Switch 4G', 3300, NULL, 'Jet Black', 'ST-SGS-4G-JB', NULL, 1, NULL, NULL),
(124, '15', 'Touch 4 Gang', 2400, NULL, 'Jet Black', 'NB-TS1G-JB', NULL, 1, NULL, NULL),
(125, '15', 'Touch 4 Gang', 2500, NULL, 'Glacier White', 'NB-TS4G-GW', NULL, 1, NULL, NULL),
(126, '1', 'Touch 2 Gang Switch', 1950, NULL, 'Jet Black', 'NB-TS2G-JB', NULL, 1, NULL, NULL),
(127, '1', 'Touch 4 Gang', 2400, NULL, 'Jet Black', 'NB-TS4G-JB', NULL, 1, NULL, NULL),
(128, '2', 'Chime (DoorBell)', 500, NULL, '', 'NB-SDBC', NULL, 1, NULL, NULL),
(129, '4', 'Access Control ', 15000, NULL, '', 'NB-AC-NS', NULL, 1, NULL, NULL),
(130, '1', 'STATA HEX', 5200, NULL, '', 'ST-HEX-6', NULL, 1, NULL, NULL),
(131, '16', 'STATA Smart Curtain Set (35) ', 11799, NULL, '', 'ST-SACT-35', NULL, 1, NULL, NULL),
(132, '16', 'STATA Smart Curtain Set (510) ', 15250, NULL, '', 'ST-SACT-510', NULL, 1, NULL, NULL),
(133, '16', 'STATA Smart Curtain Set (815) ', 17500, NULL, '', 'ST-SACT-815', NULL, 1, NULL, NULL),
(134, '16', 'STATA Curtain Track', 3500, NULL, '', 'ST-CT-3FT', NULL, 1, NULL, NULL),
(135, '16', 'STATA Smart Curtain Motor', 9700, NULL, '', 'ST-SMCM', NULL, 1, NULL, NULL),
(136, '1', 'STATA Smart Switch 4G -US', 3300, NULL, 'Jet Black', 'NB-SGS-4G-JB-US', NULL, 1, NULL, NULL),
(137, '4', 'Smart Video Doorbell with display', 22000, NULL, '', 'NB-SVDB-WD', NULL, 1, NULL, NULL),
(138, '3', 'STATA CLUTCH ', 15999, NULL, 'Rose Gold', 'ST-SDLCLU-RG', NULL, 1, NULL, NULL),
(139, '3', 'STATA CLUTCH ', 15999, NULL, 'Black', 'ST-SDLCLU-BL', NULL, 1, NULL, NULL),
(140, '3', 'STATA TAP', 12999, NULL, 'Black', 'ST-SDLTP-BL', NULL, 1, NULL, NULL),
(141, '3', 'STATA TAP', 12999, NULL, 'Silver Edition', 'ST-SDLTP-SE', NULL, 1, NULL, NULL),
(142, '4', 'Smart Smoke Sensor', 4500, NULL, '', 'NB-3S', NULL, 1, NULL, NULL),
(143, '4', 'Smart Water Leakage Sensor', 3500, NULL, '', 'NB-SWLS-W', NULL, 1, NULL, NULL),
(144, '2', 'Smart Human Presence Sensor ', 6500, NULL, '', 'NB-PS-W', NULL, 1, NULL, NULL),
(145, '1', 'Smart RGB Strip Light', 3300, NULL, '', 'NB-SL-RGB', NULL, 1, NULL, NULL),
(146, '2', 'Smart Temperature Sensor', 4500, NULL, '', 'NB-STS-W', NULL, 1, NULL, NULL),
(147, '2', 'RGB Spot Light', 1700, NULL, '', 'NB-RGBSL', NULL, 1, NULL, NULL),
(148, '3', 'STATA Bolt Pro', 42500, NULL, '', 'ST-DL-BP', NULL, 1, NULL, NULL),
(149, '4', 'Smart Security System with Panic Button', 3500, NULL, '', 'NB-SS-PB', NULL, 1, NULL, NULL),
(150, '3', 'STATA Glass Door Lock with 8 RFID', 29000, NULL, '', 'ST-GDL-8RFID', NULL, 1, NULL, NULL),
(151, '17', 'Lenovo Tab M8 2nd Gen', 20000, NULL, '', 'Lenovo-TabM8', NULL, 1, NULL, NULL),
(152, '12', 'Service & Transportation', 0, NULL, '', 'service', NULL, 1, NULL, NULL),
(153, '4', 'STATA Smart Emergency Panic Button', 4200, NULL, '', 'ST-EPB', NULL, 1, NULL, NULL),
(154, '1', 'STATA Smart Day light Sensor', 4500, NULL, '', 'ST-SDLS', NULL, 1, NULL, NULL),
(155, '2', 'PDLC Film', 9400, NULL, '', 'ST-PDLC', NULL, 1, NULL, NULL),
(156, '1', 'STATA Smart Light Dimmer', 2900, NULL, '', 'ST-SLD', NULL, 1, NULL, NULL),
(157, '2', 'Amazon Echo Dot 4th Gen', 7500, NULL, '', 'Amazon Echo Dot', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `chalan_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `purchase_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_flat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `chalan_no`, `purchase_date`, `details`, `sub_total`, `grand_total`, `purchase_discount`, `discount_flat`, `total_vat`, `p_paid_amount`, `due_amount`, `status`, `created_at`, `updated_at`) VALUES
(11, 1, 'Rerum quasi asperior', '2016-07-01', 'Itaque aut veritatis', 1773.00, 1745.00, NULL, '28', NULL, '52', '1693', '1', '2023-01-24 22:53:38', NULL),
(12, 1, 'Rerum quasi asperior', '2016-07-01', 'Itaque aut veritatis', 1773.00, 1745.00, NULL, '28', NULL, '52', '1693', '1', '2023-01-24 22:54:32', NULL),
(13, 1, 'Accusantium quisquam', '2017-09-11', 'Delectus nulla sed', 175.00, 126.00, NULL, '49', NULL, '3', '123', '1', '2023-01-24 22:54:48', NULL),
(14, 1, 'Dolorem sed quia et', '2005-10-22', 'Repellendus Nemo an', 632.00, 540.00, NULL, '92', NULL, '65', '475', '1', '2023-01-25 01:55:26', NULL),
(15, 1, 'Alias ut proident t', '1996-07-11', 'Molestiae dicta iust', 135.00, 42.00, NULL, '93', NULL, '41', '1', '1', '2023-01-25 02:11:19', NULL),
(16, 1, 'Alias ut proident t', '1996-07-11', 'Molestiae dicta iust', 135.00, 42.00, NULL, '93', NULL, '41', '1', '1', '2023-01-25 02:24:52', NULL),
(17, 1, 'Alias ut proident t', '1996-07-11', 'Molestiae dicta iust', 135.00, 42.00, NULL, '93', NULL, '41', '1', '1', '2023-01-25 02:26:49', NULL),
(18, 1, 'Alias ut proident t', '1996-07-11', 'Molestiae dicta iust', 135.00, 42.00, NULL, '93', NULL, '41', '1', '1', '2023-01-25 02:30:59', NULL),
(19, 1, 'Odio sit quos dolor', '2018-06-08', 'Eos quisquam et enim', 55.00, 21.00, NULL, '34', NULL, '19', '2', '1', '2023-01-25 02:33:20', NULL),
(20, 1, 'Aliqua Voluptate do', '2019-12-20', 'Est proident velit', 6270.00, 6175.00, NULL, '95', NULL, '45', '6130', '1', '2023-01-25 02:34:05', NULL),
(21, 1, 'Anim autem est neque', '1992-09-02', 'Sint cupidatat in au', 370.00, 370.00, NULL, '2', NULL, '54', '1091', '1', '2023-01-25 02:35:58', NULL),
(22, 1, 'Maiores commodo simi', '2001-01-23', 'Culpa aliquam totam', 810.00, 733.00, NULL, '77', NULL, '7', '726', '1', '2023-01-25 02:36:52', NULL),
(23, 1, 'Aperiam adipisci ali', '1971-08-20', 'Sapiente rerum conse', 1118.00, 1109.00, NULL, '9', NULL, '81', '1028', '1', '2023-01-25 03:02:07', NULL),
(24, 1, 'Aperiam adipisci ali', '1971-08-20', 'Sapiente rerum conse', 1118.00, 1109.00, NULL, '9', NULL, '81', '1028', '1', '2023-01-25 03:12:24', NULL),
(25, 1, 'Aperiam adipisci ali', '1971-08-20', 'Sapiente rerum conse', 1118.00, 1109.00, NULL, '9', NULL, '81', '1028', '1', '2023-01-25 03:15:54', NULL),
(26, 1, 'Reiciendis ea est o', '1997-06-15', 'Qui cupidatat ration', 5505.00, 5493.00, NULL, '12', NULL, '95', '5398', '1', '2023-01-25 03:16:12', NULL),
(27, 1, 'Irure quos adipisci', '1979-11-12', 'Culpa incidunt fug', 4679.00, 4617.00, NULL, '62', NULL, '17', '4600', '1', '2023-01-26 00:04:36', NULL),
(28, 1, 'Pariatur Error aute', '2012-10-04', 'Perspiciatis enim c', 17019.00, 16928.00, NULL, '91', NULL, '38', '16890', '1', '2023-01-26 00:05:57', NULL),
(29, 1, 'Possimus quo ut pra', '2022-08-24', 'Voluptatem enim qui', 11580.00, 11503.00, NULL, '77', NULL, '45', '11458', '1', '2023-01-26 00:06:38', NULL),
(30, 1, 'Commodi quis eum omn', '1984-02-14', 'Qui impedit quisqua', 20794.00, 20713.00, NULL, '81', NULL, '54', '20659', '1', '2023-01-26 00:09:58', NULL),
(31, 1, 'Commodi quis eum omn', '1984-02-14', 'Qui impedit quisqua', 20794.00, 20713.00, NULL, '81', NULL, '54', '20659', '1', '2023-01-26 00:16:38', NULL),
(32, 1, 'Commodi quis eum omn', '1984-02-14', 'Qui impedit quisqua', 20794.00, 20713.00, NULL, '81', NULL, '54', '20659', '1', '2023-01-26 00:20:01', NULL),
(33, 1, 'Proident quia odio', '1972-01-10', 'Vel nisi qui proiden', 81.00, 42.00, NULL, '39', NULL, '2', '40', '1', '2023-01-26 00:20:20', NULL),
(34, 1, 'Fugit quas voluptat', '1977-04-11', 'Aut et tempore exce', 5694.00, 5683.00, NULL, '11', NULL, '62', '5621', '1', '2023-01-26 00:21:40', NULL),
(35, 1, 'Dicta in et Nam culp', '2012-12-08', 'Vero eaque dignissim', 3180.00, 3098.00, NULL, '82', NULL, '83', '3015', '1', '2023-01-26 00:23:23', NULL),
(36, 1, 'Rerum odit ut tempor', '1999-07-03', 'Sint omnis tempora s', 8969.00, 8894.00, NULL, '75', NULL, '4', '8890', '1', '2023-01-26 00:29:11', NULL),
(37, 1, 'Labore irure maiores', '1995-06-19', 'Doloremque eu perspi', 5460.00, 5420.00, NULL, '40', NULL, '31', '5389', '1', '2023-01-26 00:30:46', NULL),
(38, 1, 'Consequat Do et sun', '1984-01-15', 'Sit veniam ipsam n', 174.00, 174.00, NULL, '73', NULL, '18', '3215', '1', '2023-01-26 00:32:13', NULL),
(39, 1, 'Ut aperiam consequat', '1974-04-19', 'Occaecat ducimus co', 690.00, 690.00, NULL, '68', NULL, '94', '4456', '1', '2023-01-26 01:06:34', NULL),
(40, 1, 'Nostrum quis blandit', '2010-06-28', 'Architecto quos aut', 1420.00, 1328.00, NULL, '92', NULL, '153', '1175', '1', '2023-01-30 04:47:01', NULL),
(41, 1, 'Deserunt dolores dol', '1970-04-26', 'Exercitation et illo', 10391.00, 9351.90, '10', NULL, NULL, '213', '9138.9', '1', '2023-01-30 05:45:30', NULL),
(42, 1, 'Do alias iusto sint', '2016-09-18', 'Dolore deserunt cupi', 2282.00, 2195.00, NULL, '87', NULL, '79', '2116', '1', '2023-01-30 22:48:43', NULL),
(43, 1, 'Sint minima ipsam c', '1985-09-24', NULL, 110.00, 61.00, NULL, '49', NULL, '53', '8', '1', '2023-01-30 22:58:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(255) NOT NULL,
  `batch_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `qty`, `batch_no`, `rate`, `amount`, `created_at`, `updated_at`) VALUES
(7, 14, 84, 8, 'Nulla reprehenderit', 65.00, 520.00, '2023-01-25 01:55:26', '2023-01-25 01:55:26'),
(8, 14, 132, 7, 'Placeat tempor corp', 16.00, 112.00, '2023-01-25 01:55:26', '2023-01-25 01:55:26'),
(9, 18, 123, 5, 'Ut est facilis vel s', 27.00, 135.00, '2023-01-25 02:30:59', '2023-01-25 02:30:59'),
(10, 19, 123, 5, 'Veniam fuga Sed ne', 11.00, 55.00, '2023-01-25 02:33:20', '2023-01-25 02:33:20'),
(11, 20, 102, 66, 'Porro cupidatat opti', 95.00, 6270.00, '2023-01-25 02:34:05', '2023-01-25 02:34:05'),
(12, 21, 102, 10, 'Temporibus deserunt', 37.00, 370.00, '2023-01-25 02:35:58', '2023-01-25 02:35:58'),
(13, 22, 102, 90, 'Blanditiis rem quia', 9.00, 810.00, '2023-01-25 02:36:52', '2023-01-25 02:36:52'),
(14, 35, 54, 40, 'Eligendi ad cupidita', 74.00, 2960.00, '2023-01-26 00:23:23', '2023-01-26 00:23:23'),
(15, 35, 53, 20, 'Eos eum molestiae ex', 11.00, 220.00, '2023-01-26 00:23:23', '2023-01-26 00:23:23'),
(16, 36, 110, 37, 'Voluptate adipisci v', 84.00, 3108.00, '2023-01-26 00:29:11', '2023-01-26 00:29:11'),
(17, 36, 103, 23, 'Minima consequatur', 75.00, 1725.00, '2023-01-26 00:29:11', '2023-01-26 00:29:11'),
(18, 36, 94, 44, 'Exercitation dolor a', 94.00, 4136.00, '2023-01-26 00:29:11', '2023-01-26 00:29:11'),
(19, 37, 103, 84, 'Voluptatibus qui in', 65.00, 5460.00, '2023-01-26 00:30:47', '2023-01-26 00:30:47'),
(20, 38, 103, 3, 'Enim optio est pro', 58.00, 174.00, '2023-01-26 00:32:13', '2023-01-26 00:32:13'),
(21, 39, 103, 10, 'Eos tempor id et dol', 41.00, 410.00, '2023-01-26 01:06:34', '2023-01-26 01:06:34'),
(22, 39, 110, 10, 'Nulla voluptatem vo', 28.00, 280.00, '2023-01-26 01:06:34', '2023-01-26 01:06:34'),
(23, 40, 36, 72, 'Odit eligendi ut com', 1.00, 72.00, '2023-01-30 04:47:01', '2023-01-30 04:47:01'),
(24, 40, 164, 91, 'Atque elit voluptat', 3.00, 273.00, '2023-01-30 04:47:01', '2023-01-30 04:47:01'),
(25, 40, 70, 43, 'Dolorem nemo dolorem', 25.00, 1075.00, '2023-01-30 04:47:01', '2023-01-30 04:47:01'),
(26, 41, 89, 92, 'Qui fuga Nobis ea n', 42.00, 3864.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(27, 41, 5, 10, 'Id obcaecati cillum', 92.00, 920.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(28, 41, 139, 64, 'Doloribus corrupti', 84.00, 5376.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(29, 41, 173, 15, 'Incidunt quo et est', 4.00, 60.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(30, 41, 129, 57, 'Molestiae repudianda', 3.00, 171.00, '2023-01-30 05:45:31', '2023-01-30 05:45:31'),
(31, 42, 138, 7, 'Fuga Repellendus O', 56.00, 392.00, '2023-01-30 22:48:43', '2023-01-30 22:48:43'),
(32, 42, 174, 21, 'Et occaecat dolor ex', 90.00, 1890.00, '2023-01-30 22:48:43', '2023-01-30 22:48:43'),
(33, 43, 45, 5, 'Dolorem quod ullam b', 22.00, 110.00, '2023-01-30 22:58:50', '2023-01-30 22:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `discount_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_flat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` int(255) DEFAULT NULL,
  `due_amount` int(255) DEFAULT NULL,
  `total_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `customer_id`, `auth_id`, `invoice`, `quotation_date`, `expire_date`, `sub_total`, `grand_total`, `discount_percentage`, `discount_flat`, `vat_percentage`, `vat_amount`, `paid_amount`, `due_amount`, `total_discount`, `details`, `created_at`, `updated_at`) VALUES
(9, 2, 7, 'STA79786413', '2022-12-30', '2022-12-29', 5000.00, 4980.00, '26', '', NULL, NULL, NULL, NULL, '20', 'asasasas', '2022-12-28 02:33:48', NULL),
(10, 1, 7, 'STA83983868', '2022-12-29', '2022-12-30', 200.00, 180.00, NULL, '20', NULL, NULL, NULL, NULL, '20', 'asasasas', '2022-12-28 02:56:59', NULL),
(11, 1, 7, 'STA99200923', '2022-12-30', '2022-12-30', 5000.00, 4980.00, NULL, '20', NULL, NULL, NULL, NULL, '20', 'das', '2022-12-28 03:01:25', NULL),
(13, 1, 1, 'STA13586498', '1971-12-23', '2015-10-16', 29700.00, 29680.00, NULL, '20', NULL, NULL, NULL, NULL, '20', 'Temporibus tempore', '2023-01-07 00:43:15', NULL),
(14, 2, 1, 'STA71200428', '2004-10-07', '1975-05-30', 81700.00, 73530.00, '10', NULL, NULL, NULL, NULL, NULL, NULL, 'Dolores occaecat iru', '2023-01-07 07:56:02', NULL),
(15, 1, 1, 'STA47652491', '1971-04-16', '1981-06-14', 62438.00, 56194.20, '10', NULL, NULL, NULL, NULL, NULL, NULL, 'Amet fugit molesti', '2023-01-07 09:17:08', NULL),
(18, 2, 7, 'STA13734083', '2023-02-07', '2023-01-08', 37360.00, 37340.00, NULL, '20', NULL, NULL, NULL, NULL, '20', 'Ullam dolor qui labo', '2023-01-08 05:39:16', NULL),
(19, 391, 1, 'STA90219594', NULL, NULL, 38800.00, 34920.00, '10', NULL, NULL, NULL, NULL, NULL, NULL, 'quotation1', '2023-01-09 04:59:08', NULL),
(20, 5, 1, 'STA37885306', '2023-01-26', '2023-01-27', 5000.00, 4500.00, '10', NULL, NULL, NULL, NULL, NULL, NULL, 'quotation12', '2023-01-09 05:00:21', NULL),
(21, 6, 1, 'STA20926283', '2023-01-09', '2023-01-11', 9400.00, 4700.00, '50', NULL, NULL, NULL, NULL, NULL, NULL, 'gg', '2023-01-09 10:40:01', NULL),
(22, 5, 7, 'STA88497961', '2023-02-03', '2023-02-04', 3400.00, 3060.00, '10', NULL, NULL, NULL, NULL, NULL, NULL, 'das', '2023-01-11 02:54:01', NULL),
(23, 313, 1, 'STA51109394', '1976-05-29', '1984-01-25', 200.00, 200.00, NULL, '74', NULL, NULL, 20, 180, '74', 'Fugiat voluptate re', '2023-01-31 00:19:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `amount` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_items`
--

INSERT INTO `quotation_items` (`id`, `quotation_id`, `product_id`, `qty`, `price`, `amount`, `created_at`, `updated_at`) VALUES
(12, 9, 29, '2', 2500.00, 5000, '2022-12-28 02:33:48', '2022-12-28 02:33:48'),
(13, 10, 28, '2', 100.00, 200, '2022-12-28 02:56:59', '2022-12-28 02:56:59'),
(14, 11, 29, '2', 2500.00, 5000, '2022-12-28 03:01:25', '2022-12-28 03:01:25'),
(17, 13, 29, '1', 2500.00, 2500, '2023-01-07 00:43:15', '2023-01-07 00:43:15'),
(18, 13, 28, '2', 100.00, 200, '2023-01-07 00:43:15', '2023-01-07 00:43:15'),
(19, 13, 30, '1', 27000.00, 27000, '2023-01-07 00:43:15', '2023-01-07 00:43:15'),
(20, 14, 28, '1', 100.00, 100, '2023-01-07 07:56:02', '2023-01-07 07:56:02'),
(21, 14, 28, '2', 100.00, 200, '2023-01-07 07:56:02', '2023-01-07 07:56:02'),
(22, 14, 30, '3', 27000.00, 81000, '2023-01-07 07:56:03', '2023-01-07 07:56:03'),
(23, 14, 28, '4', 100.00, 400, '2023-01-07 07:56:03', '2023-01-07 07:56:03'),
(24, 15, 28, '1', 90.00, 90, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(25, 15, 29, '2', 2000.00, 4000, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(26, 15, 29, '3', 2000.00, 6000, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(27, 15, 28, '4', 90.00, 360, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(28, 15, 30, '5', 1999.00, 9995, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(29, 15, 29, '6', 2000.00, 12000, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(30, 15, 30, '7', 1999.00, 13993, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(31, 15, 29, '8', 2000.00, 16000, '2023-01-07 09:17:08', '2023-01-07 09:17:08'),
(39, 18, 30, '1', 27000.00, 27000, '2023-01-08 05:39:17', '2023-01-08 05:39:17'),
(40, 18, 29, '2', 2000.00, 4000, '2023-01-08 05:39:17', '2023-01-08 05:39:17'),
(41, 18, 29, '3', 2000.00, 6000, '2023-01-08 05:39:17', '2023-01-08 05:39:17'),
(42, 18, 28, '4', 90.00, 360, '2023-01-08 05:39:17', '2023-01-08 05:39:17'),
(43, 19, 4, '1', 3300.00, 3300, '2023-01-09 04:59:08', '2023-01-09 04:59:08'),
(44, 19, 128, '2', 500.00, 1000, '2023-01-09 04:59:08', '2023-01-09 04:59:08'),
(45, 19, 88, '3', 1500.00, 4500, '2023-01-09 04:59:08', '2023-01-09 04:59:08'),
(46, 19, 157, '4', 7500.00, 30000, '2023-01-09 04:59:08', '2023-01-09 04:59:08'),
(47, 20, 120, '1', 1800.00, 1800, '2023-01-09 05:00:21', '2023-01-09 05:00:21'),
(48, 20, 23, '1', 1700.00, 1700, '2023-01-09 05:00:21', '2023-01-09 05:00:21'),
(49, 20, 89, '1', 1500.00, 1500, '2023-01-09 05:00:21', '2023-01-09 05:00:21'),
(50, 21, 115, '2', 1700.00, 3400, '2023-01-09 10:40:01', '2023-01-09 10:40:01'),
(51, 21, 53, '3', 1500.00, 4500, '2023-01-09 10:40:01', '2023-01-09 10:40:01'),
(52, 21, 88, '1', 1500.00, 1500, '2023-01-09 10:40:01', '2023-01-09 10:40:01'),
(53, 22, 23, '2', 1700.00, 3400, '2023-01-11 02:54:01', '2023-01-11 02:54:01'),
(54, 23, 37, '100', 2.00, 200, '2023-01-31 00:19:14', '2023-01-31 00:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'STATA IT Limited', 'Tasdik', 'Smart Accessories', 'meta_description', 'google_analytics', NULL, '2022-07-01 05:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('qkxYFPZKluNpzRY1BSD8lXUGvCaRb4gNoIZ155xU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRTRzWmpaeEhSZkxkb29QdWZ3R0NDSFdlU3FNUEp1Y3oyTWl5MGg5TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9oci9lbXBsb3llZS1hZGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxOToicGFzc3dvcmRfaGFzaF9hZG1pbiI7czo2MDoiJDJ5JDEwJEFMYk1tR25xQ2VCZmxQLkpUOExXTnUvc3dzbWVydkYyVUZzc1VCQTNRS281MmM2Q3JBOVllIjt9', 1675234048);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(7, 5, '--', '2022-11-22 07:23:12', NULL),
(8, 5, 'Gazipur', '2022-11-22 07:23:19', NULL),
(9, 5, 'nitun bazaar', '2022-11-22 07:23:25', NULL),
(10, 6, 'kulaura', '2022-11-22 07:23:31', NULL),
(11, 6, '--', '2022-11-22 07:23:37', NULL),
(12, 6, 'moulobibazaar', '2022-11-22 07:23:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(5, 'Dhaka', '2022-11-22 07:22:49', NULL),
(6, 'Chittagong', '2022-11-22 07:22:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(8, 5, 8, 'middle', '2022-11-22 07:27:45', NULL),
(9, 5, 10, 'Raozan', '2022-11-22 07:27:58', NULL),
(10, 6, 12, 'Sitakunda', '2022-11-22 07:28:10', NULL),
(11, 6, 10, 'Bhola', '2022-11-22 07:28:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1743659399127456.png', '01964870827', '01864870829', 'fahmidh26@gmail.com', 'STATA', 'bandarban', NULL, NULL, NULL, NULL, NULL, '2022-09-11 01:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startingPrice` int(11) DEFAULT NULL,
  `slideStyle` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `address`, `mobile`, `email_address`, `phone`, `city`, `state`, `zip`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Tashya Oneal', 'Aut ex omnis illum', '19', 'tajakoci@mailinator.com', '66', 'Non dolor omnis ut s', 'Lorem nisi quis quas', '68540', NULL, '2023-01-10 03:14:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `last_seen`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(9, 'fahmid', 'fahmidh27@gmail.com', '01964870827', NULL, '$2y$10$Zi.ngCri1I7EO6ZvGInfh.UT1NCC6TvCiN5RH9g.UPqVUutFC6cb6', '2023-01-08 09:44:00', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 02:52:03', '2023-01-08 03:44:00'),
(10, 'mehdi', 'mehdi@gmail.com', '01964870827', NULL, '$2y$10$wdIv5BY/K2rYhBY.yc89xepU2LG6BU4YaKEHXmA6Jh9d1ElnGgFTq', '2022-08-20 08:15:04', NULL, NULL, NULL, NULL, NULL, '202208160633images.jfif', '2022-08-07 23:44:23', '2022-08-20 02:15:04'),
(11, 'user', 'user@gmail.com', '01964870827', NULL, '$2y$10$HGluUJ0Wk77sdIcwuG6.OOSCbNKsTcMB1KIVO3UCnLy.UjOl6gKNy', '2022-12-03 07:44:37', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 23:55:30', '2022-12-03 01:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(8, 3, 8, '2022-06-19 22:51:18', NULL),
(9, 3, 7, '2022-06-19 22:51:21', NULL),
(10, 3, 9, '2022-06-23 03:37:34', NULL),
(11, 7, 10, '2022-07-23 03:46:58', NULL),
(12, 7, 12, '2022-07-31 01:13:07', NULL),
(13, 7, 6, '2022-07-31 01:37:53', NULL),
(14, 10, 14, '2022-08-19 23:35:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admins1`
--
ALTER TABLE `admins1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`id`);

--
-- Indexes for table `customers1`
--
ALTER TABLE `customers1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_items_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products1`
--
ALTER TABLE `products1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsold`
--
ALTER TABLE `productsold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_items_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admins1`
--
ALTER TABLE `admins1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;

--
-- AUTO_INCREMENT for table `customers1`
--
ALTER TABLE `customers1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `payment_items`
--
ALTER TABLE `payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `products1`
--
ALTER TABLE `products1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `productsold`
--
ALTER TABLE `productsold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD CONSTRAINT `payment_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD CONSTRAINT `quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products1` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
