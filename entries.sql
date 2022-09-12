-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 01:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entries`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE `contactdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactdetails`
--

INSERT INTO `contactdetails` (`id`, `name`, `email`, `comments`, `created_at`) VALUES
(1, 'Ruchir Gupta', 'ruchir.gupta@namaste.com', 'dwdawfa', '2022-09-08 13:10:54');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_08_053614_create_registers_table', 1),
(7, '2022_09_08_070820_create_contactdetails_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `first_name`, `last_name`, `country`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Ruchir', 'Gupta', 'India', 'ruchir.gupta@test.com', 'qwe@123', '2022-09-08 05:44:00', '2022-09-08 05:44:00'),
(2, 'Ishan', 'Tiwari', 'India', 'ishan.tiwari@test.com', 'qwe@123', '2022-09-08 00:27:35', '2022-09-08 00:27:35'),
(3, 'Amit', 'Singh', 'Pakistan', 'amit.singh@test.com', 'qwe@123', '2022-09-08 00:42:15', '2022-09-08 00:42:15'),
(4, 'Test', 'Test', 'India', 'test@test.com', 'qwe@123', '2022-09-08 02:27:43', '2022-09-08 02:27:43'),
(5, 'Gaurav', 'Sharma', 'Japan', 'gaurav.sharma@gmail.com', 'qwe@123', '2022-09-08 02:28:15', '2022-09-08 02:28:15'),
(6, 'Ravikant', 'Joshi', 'Africa', 'ravi.hero@test.com', 'qwe@123', '2022-09-08 02:29:53', '2022-09-08 02:29:53'),
(9, 'Hello', 'test', 'USA', 'ruchir.gupta@testt.com', 'qwe@123', '2022-09-08 04:40:24', '2022-09-08 04:40:24'),
(10, 'Ojaswi', 'Kumar', 'China', 'tester@test.com', 'qwe@123', '2022-09-08 05:09:56', '2022-09-08 05:09:56'),
(13, 'Prof. Margret Wisoky MD', 'Tod Willms', 'Afghanistan', 'fhauck@stark.com', '{,2WR[eQ', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(14, 'Dr. Meghan Krajcik MD', 'Jameson Harber', 'Bolivia', 'general.green@gmail.com', 'wdc3*gE%);&X^lpJdBB<', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(15, 'Domingo Auer', 'Imelda Cummings PhD', 'Bahrain', 'sauer.ima@stokes.com', 'k=kFNNC', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(16, 'Jakob Dibbert', 'Kacie Schneider', 'Moldova', 'ekoss@hotmail.com', 'oPj=kvFNO<C^txsEn', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(17, 'Jaylen Macejkovic', 'Prof. Nat Donnelly', 'Monaco', 'dlebsack@yahoo.com', '{[7jT<+Z(F', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(18, 'Ethel Schultz', 'Kaley Effertz', 'British Virgin Islands', 'bkemmer@dietrich.net', 'c*\\@[R(Q57^2}l-f', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(19, 'Stuart Treutel', 'Alison Hauck Sr.', 'Bahrain', 'frida.orn@bauch.com', 'k&0dR\'*5cl<H&', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(20, 'Camryn Bins', 'Prof. Russ Rolfson PhD', 'Ecuador', 'halle30@hotmail.com', 'fIMZn/jE-?krkGY\"O%F7', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(21, 'Belle Murphy', 'Donny Bergnaum', 'Guatemala', 'jlynch@yahoo.com', 'RhllD1', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(22, 'Hiram Armstrong', 'Evie Becker', 'Tuvalu', 'arempel@hotmail.com', 'c62`C6s9CM&\\pMG', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(23, 'Aleen Eichmann', 'Frederik Ankunding', 'Chile', 'nella.kassulke@veum.com', 'E98aztJ', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(24, 'Edyth Howell', 'Anibal Jakubowski', 'Belgium', 'kareem.rodriguez@gmail.com', 'o!8c\\~#Z4E5bn', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(25, 'Madyson Fritsch III', 'Delaney Simonis Jr.', 'Bhutan', 'demetris.stanton@hotmail.com', 'F`8/!9}C[<=h_Fx', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(26, 'Miss Lilliana Goldner', 'Oscar Pfeffer', 'Bolivia', 'akeebler@abbott.biz', 'N=&KbZZ', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(27, 'Zetta Russel', 'Mr. Einar Nienow I', 'Poland', 'maxie42@gmail.com', 'JL,S22!vk]>@%{R', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(28, 'Simeon Dickens', 'Miss Susan Price', 'Swaziland', 'pemard@yahoo.com', '*gn!^:WI5a\\gx\\9gwe', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(29, 'Carlee Ondricka Sr.', 'Anibal Hudson', 'Brazil', 'rohan.albina@morissette.com', 'hR7QHp\"MU(!n', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(30, 'Shannon Mraz MD', 'Ms. Nakia Murphy', 'Bulgaria', 'glegros@hotmail.com', '6%UP=UMIcyQb,2Hn', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(31, 'Stephanie Bergnaum', 'Marjorie Ortiz', 'Ukraine', 'jbruen@nader.info', '3<,/WOEsrYO&8|D7~%', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(32, 'Prof. Dashawn Aufderhar V', 'Ola Hegmann', 'Bouvet Island (Bouvetoya)', 'barney59@hotmail.com', '<-a6\'R~V>', '2022-09-08 11:07:41', '2022-09-08 11:07:41'),
(33, 'Mrs. Aurore Greenholt', 'Miss Kaci Watsica', 'Puerto Rico', 'irving84@anderson.org', 'oU=<m~mRF!Rk!?_|C)Mk', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(34, 'Lemuel Green', 'Jordan Sipes I', 'New Zealand', 'jaylin01@smitham.com', 'W-e]i\"`V*&^1=Tn76vf', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(35, 'Daphnee Cole', 'Brian Reilly', 'Kyrgyz Republic', 'alta.moore@gmail.com', '`@S6#PxFb;M/@=Hj[(', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(36, 'Eunice Lakin II', 'Larissa Simonis', 'Kenya', 'xarmstrong@harvey.com', 'gNFL=l!', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(37, 'Barry Kertzmann', 'Isac King MD', 'Suriname', 'milford81@gmail.com', '2.V!6S1lZ', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(38, 'Aniyah Maggio', 'Kraig Langworth DVM', 'Syrian Arab Republic', 'yheller@rosenbaum.org', '9LL.U/', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(39, 'Earnestine Macejkovic III', 'Mr. Jacques Bartell V', 'Anguilla', 'zhahn@hotmail.com', 'BH(MUzc|z', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(40, 'Johnnie Kemmer', 'Gardner Predovic', 'Antarctica (the territory South of 60 deg S)', 'dudley52@hotmail.com', '#%B{lCf2ML\\sli@s', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(41, 'Nikolas Kutch', 'Alanna Kohler', 'Italy', 'nicolas.woodrow@gmail.com', 'v6GnE&3D<z`n', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(42, 'Mandy VonRueden', 'Dr. Alan Jaskolski', 'Palau', 'klocko.dock@king.com', '|SU)ogpA^Uj5Dfmfb]&', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(43, 'Mr. Doyle Jacobi', 'Elena Hoeger', 'Western Sahara', 'gulgowski.nicholas@hotmail.com', '\'RP]+3', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(44, 'Minnie Rolfson', 'Mr. Ashton Brown', 'Niger', 'obraun@hane.com', '^$5c*V;isx]', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(45, 'Pinkie Wiegand', 'Mateo Volkman Sr.', 'Antarctica (the territory South of 60 deg S)', 'godfrey00@langworth.com', 'Urr?.4C', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(46, 'Arianna Wuckert', 'Kian Hand', 'Montenegro', 'pferry@wintheiser.biz', 'y!o.yc=', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(47, 'Clair Crist', 'Alysson Hagenes', 'Mauritius', 'aurelia07@monahan.info', '#_l:1G%u).L\'Gp1', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(48, 'Dr. Emilie Ritchie', 'Alejandra Koch', 'Saint Pierre and Miquelon', 'ofelia.rutherford@strosin.com', '5t8mn/W', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(49, 'Alford Kirlin', 'Columbus Tillman', 'Somalia', 'jamarcus.heathcote@gmail.com', 'e_/RB!HS\"', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(50, 'Judd Homenick', 'Javonte Wisoky', 'Norfolk Island', 'nathanial67@dibbert.com', 'R(NS9c6EzGj~k[r', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(51, 'Jaclyn Hyatt', 'Ms. Madaline Breitenberg', 'Austria', 'rhackett@bergstrom.com', '}joJfZ', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(52, 'Mrs. Lessie Champlin', 'Heath Jones DVM', 'Cayman Islands', 'marquardt.jarred@kreiger.com', 'gx(^XLu=7)iEe', '2022-09-08 11:08:50', '2022-09-08 11:08:50'),
(53, 'Shany Reynolds', 'Isaiah Weber', 'Kenya', 'wolf.cruz@metz.com', '?R%C%.t[\"(EGxK', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(54, 'Prof. Alexander Pfannerstill V', 'Mrs. Ashlee Daugherty', 'Mexico', 'goldner.tyler@gmail.com', 'U2RKUbP^@(q{cxP', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(55, 'Prof. Madisen Purdy IV', 'Dandre Hickle', 'Nicaragua', 'jane20@hotmail.com', '(+oz\'(NJA', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(56, 'Veronica Buckridge', 'Dr. Marquise Friesen', 'Uzbekistan', 'nboyer@yahoo.com', 'Q;\\\'@y4kSh', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(57, 'Jadyn Abshire', 'Miss Marcelle Lockman MD', 'Belgium', 'rudy83@gmail.com', 'D=/<-p`%B~Z', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(58, 'Jany Ledner', 'Prof. Jabari Powlowski', 'Tanzania', 'renner.letitia@yahoo.com', 'V\\C*zK\\k\"2Z]N', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(59, 'Hoyt Kshlerin', 'Krystel Lemke', 'Kyrgyz Republic', 'hermina.kertzmann@mcdermott.info', '}as!)Ozo`y8$,[', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(60, 'Franco Murray', 'Bettye Quigley', 'Aruba', 'wade50@hickle.info', '+<lro\"V7P\\+WY)Hm', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(61, 'Emmy Wyman', 'Mr. Korey Purdy Sr.', 'Ethiopia', 'reinger.valentina@gmail.com', '6XG8E\"&r{13\\', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(62, 'Josephine Haley', 'Jaylin Hermann', 'Egypt', 'claudia93@moore.com', 'UT&BWaT&)!zb;t', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(63, 'Ollie Goldner', 'Guiseppe Rau', 'India', 'kbogisich@yahoo.com', 'S4-q[.}7k8:]f', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(64, 'Mr. Peter Weber II', 'Dylan Padberg', 'Ghana', 'gibson.norberto@yahoo.com', '?%z*4%vq1`4LX=x(|<', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(65, 'Prof. Zola White', 'Miss Andreane Smitham', 'Equatorial Guinea', 'herman.hassie@wisozk.com', '4DrBfv', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(66, 'Malinda Mills', 'Ms. Angelina Zieme Sr.', 'New Zealand', 'djacobi@rolfson.com', '5K;yXZ.?fRCt(', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(67, 'Vito Kunde', 'Tyson Schmitt DVM', 'Cyprus', 'lurline69@yahoo.com', 's?/7HDn8zr', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(68, 'Marcella Feil', 'Rosina Mueller I', 'Guinea', 'blick.samantha@huel.net', 'n\\+M9o[yW', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(69, 'Ms. Aleen Spencer DDS', 'Efrain Douglas', 'Jamaica', 'yauer@hartmann.com', '!stHBTs:\\f.O', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(70, 'Landen Gutkowski', 'Mr. Berry Littel', 'Western Sahara', 'reinhold.wuckert@hotmail.com', '%W9erJON\"\'zXl2+c5', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(71, 'Americo Schuster', 'Miss Sibyl Mayert', 'Benin', 'guiseppe.rath@morissette.info', 'Pi~4\"g\'a;8k)DV', '2022-09-08 11:09:08', '2022-09-08 11:09:08'),
(72, 'Penelope Konopelski', 'Tiara Fay MD', 'Costa Rica', 'john26@yahoo.com', 'r{-;=V\\Wc>Kli', '2022-09-08 11:09:08', '2022-09-08 11:09:08');

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
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contactdetails_email_unique` (`email`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registers_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
