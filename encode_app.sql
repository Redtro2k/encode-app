-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 10:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `encode_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `encodes`
--

CREATE TABLE `encodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `area` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `homepage` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `open_hours` varchar(255) NOT NULL,
  `facebook_fanpage_url` text NOT NULL,
  `memo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `encodes`
--

INSERT INTO `encodes` (`id`, `client_name`, `address`, `area`, `telephone`, `homepage`, `category`, `open_hours`, `facebook_fanpage_url`, `memo`, `created_at`, `updated_at`) VALUES
(5, 'Simon\'s Place Supreme Restobar', '120 Tomas Morato Avenue, corner Kamuning Rd, Quezon City, 1103 Metro Manila', '3', '0967 286 5264', 'N/A', '1-3,', 'N/A', 'https://www.facebook.com/profile.php?id=100063872119193', '', '2023-03-01 23:36:49', '2023-03-01 23:36:49'),
(6, 'Mr. World Gay Bar', 'Tanco Building , Timog Avenue, South Triangle , 1103 Quezon City , Metro Manila', '3', '0917 501 7303', 'N/A', '1-3.', 'N/A', 'N/A', '', '2023-03-02 00:04:55', '2023-03-02 00:04:55'),
(7, 'East of St. Louis', 'J2QQ+C8V, Eugenio Lopez Dr, Diliman, Quezon City, Metro Manila', '3', '0917 537 7299', 'N/A', '1-3.', '5:30 PM - 3:00 AM', 'https://www.facebook.com/EastofSt.Louis', '', '2023-03-02 00:05:51', '2023-03-02 00:05:51'),
(8, 'Nocovo Disco Bar & Restaurant', 'J2RP+4X5, Sgt. Esguerra Ave, Diliman, Quezon City, 1100 Metro Manila', '3', '(02) 8929 7369', 'N/A', '1-3.', '5:00 PM - 3:00 AM', 'facebook.com/tyabarandrestaurant', '', '2023-03-02 00:11:35', '2023-03-02 00:11:35'),
(9, 'Alcos Sports Bar & Ktv', '114-C 12th Ave, Cubao, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3.', 'N/A', 'https://www.facebook.com/pages/Alcos%20KTV/711805822313351/', '', '2023-03-02 00:12:23', '2023-03-02 00:12:23'),
(10, 'LSJI2000 Ktv bar', '136 Timog Ave, Diliman, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3.', '6 PM–2 AM', 'N/A', '', '2023-03-02 00:13:51', '2023-03-02 00:13:51'),
(11, 'The Batcave', '336 Visayas Ave, Quezon City, Metro Manila', '3', '0942 039 6789', 'N/A', '1-3.', 'N/A', 'https://www.facebook.com/cptbatman420', '', '2023-03-02 00:14:46', '2023-03-02 00:14:46'),
(12, 'Dapo Restaurant & Bar', '12 Scout Borromeo St, Diliman, Quezon City, 1103 Metro Manila', '3', '0942 115 2247', 'N/A', '1-3.', '7 AM–2 AM', 'https://www.facebook.com/daporestaurant', '', '2023-03-02 00:16:18', '2023-03-02 00:16:18'),
(13, 'Sense and Spirit Resto and Karaoke Bar', '24 C&D, Kamuning Rd, Quezon City, 1103 Metro Manila', '3', '0960 369 7950', 'N/A', '1-3.', '10 AM–1 AM', 'https://www.facebook.com/senseandspiritrestoandkaraokebar', '', '2023-03-02 00:17:10', '2023-03-02 00:17:10'),
(14, 'Stranger Wings Bar and Restaurant', '195 Maginhawa, Diliman, Lungsod Quezon, 1101 Kalakhang Maynila', '3', '0927 082 2928', 'N/A', '1-3.', '11 AM–11:55 PM', 'https://www.facebook.com/pages/Stranger-Wings/107311867354520', '', '2023-03-02 00:18:26', '2023-03-02 00:18:26'),
(15, 'V\' Niche Bar and Restaurant', '#44 Sgt. Esguerra Ave, Diliman, Quezon City, Metro Manila', '3', '(02) 920 7933', 'N/A', '1-3.', '10 AM–9 PM', 'https://www.facebook.com/vnichebarandrestaurant', '', '2023-03-02 00:19:47', '2023-03-02 00:19:47'),
(16, 'Lazcano Lockdown Resto Bar', '2 scout lazcano cor scout magbanua, Quezon City', '3', '0939 850 8251', 'N/A', '1-3.', 'N/A', 'https://www.facebook.com/lockdownrestobar', '', '2023-03-02 00:20:49', '2023-03-02 00:20:49'),
(17, 'CHILLZ RESTO BAR', '11, 1107 Himlayan Rd, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3.', 'N/A', 'https://www.facebook.com/ChillzRestoBar21', '', '2023-03-02 00:21:29', '2023-03-02 00:21:29'),
(18, 'RUE Eastwood', 'Eastwood CityWalk1, Bagumbayan, Quezon City, 1800 Metro Manila', '3', '0917 718 6155', 'https://rue.com.ph/', '1-3.', '4:00 PM - 2:00 AM', 'https://www.facebook.com/RUEEastwood', '', '2023-03-02 00:22:50', '2023-03-02 00:22:50'),
(19, 'Jen Jen KTV Bar', 'E. Rodriguez SR. Avenue, Immaculate Concepcion , Immaculate Conception , 1111 Quezon City , Metro Manila', '3', '0906 035 3745', 'N/A', '1-3.', 'Always open', 'https://www.facebook.com/bosstonton23/', '', '2023-03-02 00:23:54', '2023-03-02 00:23:54'),
(20, 'Baia Luna KTV Bar', 'Sir Williams Hotel, 39 Timog Ave, Diliman, Quezon City, Metro Manila', '3', '(02) 8399 9232', 'N/A', '1-3.', 'N/A', 'https://www.facebook.com/pages/Baia%20Luna%20KTV%20Bar%20QC/228818264367635/', '', '2023-03-02 00:24:52', '2023-03-02 00:24:52'),
(21, 'D Music Bar', 'Treffpunkt , Liberty Avenue, Cubao , 1109 Quezon City , Metro Manila', '3', '0916 537 9566', 'N/A', '1-3,', 'N/A', 'https://www.facebook.com/DBradzMusicBar', '', '2023-03-02 00:35:20', '2023-03-02 00:35:20'),
(22, 'Beerbelly Bar & Lounge', 'J2RG+FJM, West Ave, Quezon City, Metro Manila', '3', '0917 955 4043', 'N/A', '1-3,', '5 PM–4 AM', 'https://www.facebook.com/beerbelly.lounge', '', '2023-03-02 00:40:28', '2023-03-02 00:40:28'),
(23, 'The Distillery Uptown Bonifacio', 'J35J+M9F, Citywalk 1, Bagumbayan, Quezon City, 1800 Metro Manila', '3', '0956 987 0911', 'N/A', '1-3,', '12 PM–4 AM', 'https://www.facebook.com/TheDistillery.UptownBGC', '', '2023-03-02 00:43:09', '2023-03-02 00:43:09'),
(24, 'Da Bar-Kads Videoke Restobar', 'J27W+PVG, P. Tuazon Blvd, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3,', '8 AM–5 PM', 'N/A', '', '2023-03-02 00:45:37', '2023-03-02 00:45:37'),
(25, 'Stop Over', 'N/A', '3', '0935 167 3686', 'N/A', '1-3,', '5:00 AM - 2:00 PM', 'https://www.facebook.com/stopoverRHE', '', '2023-03-02 00:46:20', '2023-03-02 00:46:20'),
(26, 'My Turf 24 Bar & Grill', 'Congressional Ave, Bago Bantay, Quezon City, Metro Manila', '3', '(02) 3453 6854', 'N/A', '1-3,', 'N/A', 'https://www.facebook.com/pages/My%20Turf%2024%20Resto%20Bar%20&%20Girl/1144363949069872/', '', '2023-03-02 00:47:49', '2023-03-02 00:47:49'),
(27, 'Khuya KTV Bar', '27 Annapolis, Cubao, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3,', 'N/A', 'https://www.facebook.com/pages/Khuya\'s%20Bar%20Cubao%20Q.C/337860656309317/', '', '2023-03-02 00:50:24', '2023-03-02 00:50:24'),
(28, 'The Black Box Mobile Cocktail Bar', 'Union Village, 6 Union Dr, Tandang Sora, Quezon City, 1116 Metro Manila', '3', '0915 311 1100', 'N/A', '1-3,', 'Open 24 hours', 'https://www.facebook.com/BOOKTHEBLACKBOX', '', '2023-03-02 00:51:26', '2023-03-02 00:51:26'),
(29, 'Stratos Resto Bar', '214 Ilocos Sur, Bago Bantay, Lungsod Quezon, Kalakhang Maynila', '3', '0955 341 8057', 'N/A', '1-3,', '5:00 PM - 2:00 AM', 'https://www.facebook.com/StratosRestoBar', 'Opening Soon', '2023-03-02 00:53:33', '2023-03-02 00:53:33'),
(30, 'Serbetz Singing & Drinking Place', 'J3G8+J9J, F. Castillo, Project 4, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3,', 'N/A', 'N/A', '', '2023-03-02 00:55:14', '2023-03-02 00:55:14'),
(31, 'Walwalan Over View Resto Bar', 'J2MC+662, Don A. Roces Ave, Diliman, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3,', '10 AM–2 AM', 'https://www.facebook.com/pages/Walwalan%20Over%20View%20Resto%20Bar/284126018908256/', '', '2023-03-02 00:56:26', '2023-03-02 00:56:26'),
(32, 'Star Trekkers Resto Bar', 'J3F2+3M3, Annapolis, Cubao, Quezon City, Metro Manila', '3', 'N/A', 'N/A', '1-3,', 'Always Open', 'https://www.facebook.com/pages/Starion%20Resto%20And%20Family%20Ktv/217001055084651/', '', '2023-03-02 01:00:42', '2023-03-02 01:00:42'),
(33, 'Pull-Up Bar & Grill', '248-A P. Tuazon Blvd., Cubao, Brgy. Soccoro (Murphy), Quezon City, Philippines', '3', '0950 950 4361', 'N/A', '1-3,', '0950 950 4361', 'https://www.facebook.com/profile.php?id=100057312345414', '', '2023-03-02 01:01:48', '2023-03-02 01:01:48'),
(34, 'K Bar and Resto', '265 scout Fernandez corner Tomas morato, Quezon City, Philippines', '3', '0906 576 5425', 'N/A', '1-3,', '10 AM–9 PM', 'https://www.facebook.com/KBarTomasMorato', '', '2023-03-02 01:02:41', '2023-03-02 01:02:41'),
(35, 'Padi\'s Point Aurora', 'FX Terminal, Coronet Building, 2nd Floor Cor Aurora Boulevard Across isetan/ Gateway, Quezon City, Metro Manila', '3', '(02) 8912 5971', 'N/A', '1-3,', 'Open 24 hours', 'https://www.facebook.com/search/top/?q=Padi%27s%20Point%20Aurora', '', '2023-03-02 01:04:10', '2023-03-02 01:04:10'),
(36, 'CS Place Bar and Restaurant', '224 Katipunan avenue, Blueridge A, Quezon City, Philippines', '3', '(02) 8647 5781', 'N/A', '1-3,', '5:00 PM - 2:00 AM', 'https://www.facebook.com/profile.php?id=100057479027114', '', '2023-03-02 01:05:44', '2023-03-02 01:05:44'),
(37, 'Booze Mobile Bar', '24 C. Aguinaldo, Project 4, Lungsod Quezon, 1800 Kalakhang Maynila', '3', '0905 169 5641', 'N/A', '1-3,', 'N/A', 'https://www.facebook.com/BeanNBoozeCDO/', '', '2023-03-02 01:09:02', '2023-03-02 01:09:02'),
(38, 'URBN QC', '62 Timog Ave, Diliman, Quezon City, 1103 Metro Manila', '3', '0915 269 1000', 'https://www.urbnqc.com/', '1-3,', '9 PM–5 AM', 'https://www.facebook.com/URBNQC', '', '2023-03-02 01:10:45', '2023-03-02 01:10:45'),
(39, 'Vitto’s Wine Bar & Restaurant', '#114 Scout cor Tomas Morato,, Sct. Lozano St, Quezon City, Metro Manila', '3', '0917 886 2550', 'N/A', '1-3,', '2 PM–12 AM', 'https://www.facebook.com/vittoswineph/', '', '2023-03-02 01:13:28', '2023-03-02 01:13:28'),
(40, 'BAPALO Resto + Bar', '57 20th Ave, Cubao, Quezon City, Metro Manila', '3', '0969 629 7088', 'N/A', '1-3,', 'Open 24 hours', 'N/A', '', '2023-03-02 01:14:29', '2023-03-02 01:14:29'),
(41, 'CJ Loft Dimsum Haven and Tea Bar', 'Unit 210, Llanar Building, 77 Xavierville Avenue corner B. Gonzalez Street, Quezon City, 1108, Metro Manila', '3', 'N/A', 'N/A', '1-3,', '10:00 AM - 10:00 PM', 'https://www.facebook.com/profile.php?id=100071406105815', '', '2023-03-02 01:15:43', '2023-03-02 01:15:43'),
(42, 'Havana KTV Bar & Restaurant', 'Visayas Ave, Quezon City, Metro Manila', '3', '(02) 920 8644', 'N/A', '1-3,', '11 AM–10 PM', 'https://www.facebook.com/pages/Havana%20KTV%20Bar%20and%20Restaurant/1179235315521258/', '', '2023-03-02 01:21:02', '2023-03-02 01:21:02'),
(43, 'Storya Kitchen + Bar', 'Kalayaan Centerpointe Bldg, Kalayaan Ave, V. Luna Ave, Diliman, Quezon City, Metro Manila', '3', '0917 537 8800', 'N/A', '1-3,', '11 AM–1 AM', 'https://www.facebook.com/storyakitchenbar', '', '2023-03-02 01:22:17', '2023-03-02 01:22:17'),
(45, 'The Life Lounge', '25 Congressional Ave, Quezon City, 1128 Metro Manila', '3', '(02) 938 1447', 'N/A', '1-3,', 'N/A', 'https://www.facebook.com/TheLifeLoungePH', '', '2023-03-02 01:25:49', '2023-03-02 01:25:49'),
(46, 'Nineteen 20 Bar and Restaurant', 'Unit A The Courtyard Bldg., 26 Sgt. Esguerra Ave, Diliman, Quezon City, Metro Manila', '3', '(02) 416 9206', 'N/A', '1-3,', '10 AM–10 PM', 'https://www.facebook.com/profile.php?id=100066340967294', '', '2023-03-02 01:29:10', '2023-03-02 01:29:10'),
(47, 'The One 690 Entertainment Bar', '39 Don A. Roces Ave, ￼, Quezon City, Metro Manila', '3', '0918 900 8008', 'N/A', '1-3,', '11:00 AM - 4:00 AM', 'https://www.facebook.com/profile.php?id=100066340967294', '', '2023-03-02 01:31:47', '2023-03-02 01:31:47'),
(48, 'D\' Meet Up Restobar - Roosevelt Branch', '304, 1105 Roosevelt Ave, Quezon City, Metro Manila', '3', '0977 674 0329', 'N/A', '1-3,', '11 AM–3 AM', 'https://www.facebook.com/dmeetup', '', '2023-03-02 01:34:24', '2023-03-02 01:34:24'),
(49, 'Molo\'s Grill and Music Bar', '20 Matalino St, Diliman, Quezon City, 1100 Metro Manila', '3', '(02) 8921 4411', 'N/A', '1-3,', '5 PM–2 AM', 'https://www.facebook.com/mowsbar/', '', '2023-03-02 01:41:30', '2023-03-02 01:41:30'),
(50, 'Mames Billiard Station', 'Anonas Commercial Complex, 3 Anonas Avenue, Project 2, Lungsod Quezon, Kalakhang Maynila', '3', '5 PM–5 AM', 'N/A', '1-3,', '3:00 PM - 3:00 AM', 'https://www.facebook.com/mamesbilliard', '', '2023-03-02 01:45:34', '2023-03-02 01:45:34'),
(51, 'SunStar KTV Bar', 'J3F3+827, West Point, St., Cubao, Quezon City, Metro Manila', '3', '0939 850 8251', 'N/A', '1-3,', 'N/A', 'N/A', '', '2023-03-02 01:47:35', '2023-03-02 01:47:35'),
(52, 'Iockdown resto bar', '2 scout lazcano cor scout magbanua, Quezon City', '3', '0948 614 8586', 'N/A', '1-3,', 'N/A', 'N/A', '', '2023-03-02 01:50:40', '2023-03-02 01:50:40');

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
(5, '2023_03_01_131015_create_encodes_table', 1);

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
-- Indexes for table `encodes`
--
ALTER TABLE `encodes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `encodes`
--
ALTER TABLE `encodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
