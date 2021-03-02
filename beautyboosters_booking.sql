-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql4.gigahost.dk
-- Generation Time: Mar 02, 2021 at 04:59 PM
-- Server version: 5.6.34-1~dotdeb+7.2
-- PHP Version: 5.6.27-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beautyboosters_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `ea_appointments`
--

CREATE TABLE `ea_appointments` (
  `id` int(11) NOT NULL,
  `book_datetime` datetime DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `location` text,
  `notes` text,
  `hash` text,
  `is_unavailable` tinyint(4) NOT NULL DEFAULT '0',
  `id_users_provider` int(11) DEFAULT NULL,
  `id_users_customer` int(11) DEFAULT NULL,
  `id_services` int(11) DEFAULT NULL,
  `id_google_calendar` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_appointments`
--

INSERT INTO `ea_appointments` (`id`, `book_datetime`, `start_datetime`, `end_datetime`, `location`, `notes`, `hash`, `is_unavailable`, `id_users_provider`, `id_users_customer`, `id_services`, `id_google_calendar`) VALUES
(11, '2021-02-23 09:14:01', '2021-02-23 11:30:00', '2021-02-23 12:15:00', 'Kontoret', '', '6e32ce3d5f1db2f98c6978bcb49e9273', 0, 10, 11, 8, NULL),
(12, '2021-02-23 09:28:11', '2021-02-26 10:00:00', '2021-02-26 10:45:00', 'Kontoret', '', '274ca87466816f78844bc141bd9f1f7d', 0, 10, 12, 8, NULL),
(13, '2021-02-23 09:45:08', '2021-02-24 11:00:00', '2021-02-24 12:30:00', 'Hos kunden', '', 'ec7a4d5dfedec4da3c93da1c351ebd5a', 0, 6, 5, 5, NULL),
(14, '2021-02-24 22:06:25', '2021-03-10 11:45:00', '2021-03-10 13:45:00', 'Kontoret', '', '1f23b7575529ab2322531b9a3e56593b', 0, 4, 13, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ea_consents`
--

CREATE TABLE `ea_consents` (
  `id` int(11) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `ip` varchar(256) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_consents`
--

INSERT INTO `ea_consents` (`id`, `created`, `modified`, `first_name`, `last_name`, `email`, `ip`, `type`) VALUES
(1, '2021-02-22 09:58:29', '2021-02-22 09:58:29', 'Louise', 'Bencard', 'Louisebencard@beautyboosters.dk', '31.3.74.24', 'terms-and-conditions'),
(2, '2021-02-22 09:58:30', '2021-02-22 09:58:30', 'Louise', 'Bencard', 'Louisebencard@beautyboosters.dk', '31.3.74.24', 'privacy-policy'),
(3, '2021-02-22 17:41:55', '2021-02-22 17:41:55', 'Bill', 'Ebbesen', 'bill@lightbooth.io', '77.66.3.163', 'terms-and-conditions'),
(4, '2021-02-22 17:41:55', '2021-02-22 17:41:55', 'Bill', 'Ebbesen', 'bill@lightbooth.io', '77.66.3.163', 'privacy-policy'),
(5, '2021-02-22 17:44:20', '2021-02-22 17:44:20', 'Bill', 'Ebbesen', 'bill@lightbooth.io', '77.66.3.163', 'privacy-policy'),
(6, '2021-02-22 17:44:21', '2021-02-22 17:44:21', 'Bill', 'Ebbesen', 'bill@lightbooth.io', '77.66.3.163', 'terms-and-conditions'),
(7, '2021-02-22 17:47:52', '2021-02-22 17:47:52', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(8, '2021-02-22 17:47:53', '2021-02-22 17:47:53', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(9, '2021-02-22 17:48:23', '2021-02-22 17:48:23', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(10, '2021-02-22 17:48:24', '2021-02-22 17:48:24', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(11, '2021-02-22 18:35:54', '2021-02-22 18:35:54', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(12, '2021-02-22 18:35:55', '2021-02-22 18:35:55', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(13, '2021-02-22 18:37:09', '2021-02-22 18:37:09', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(14, '2021-02-22 18:37:10', '2021-02-22 18:37:10', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(15, '2021-02-22 18:37:49', '2021-02-22 18:37:49', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(16, '2021-02-22 18:37:49', '2021-02-22 18:37:49', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(17, '2021-02-22 18:38:00', '2021-02-22 18:38:00', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(18, '2021-02-22 18:38:01', '2021-02-22 18:38:01', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(19, '2021-02-22 18:39:06', '2021-02-22 18:39:06', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(20, '2021-02-22 18:39:07', '2021-02-22 18:39:07', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(21, '2021-02-22 18:39:50', '2021-02-22 18:39:50', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(22, '2021-02-22 18:39:51', '2021-02-22 18:39:51', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(23, '2021-02-22 18:40:03', '2021-02-22 18:40:03', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(24, '2021-02-22 18:40:04', '2021-02-22 18:40:04', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(25, '2021-02-22 18:40:45', '2021-02-22 18:40:45', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(26, '2021-02-22 18:40:46', '2021-02-22 18:40:46', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(27, '2021-02-22 18:48:53', '2021-02-22 18:48:53', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(28, '2021-02-22 18:48:53', '2021-02-22 18:48:53', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(29, '2021-02-22 18:51:05', '2021-02-22 18:51:05', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(30, '2021-02-22 18:51:06', '2021-02-22 18:51:06', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(31, '2021-02-22 18:54:03', '2021-02-22 18:54:03', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(32, '2021-02-22 18:54:04', '2021-02-22 18:54:04', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(33, '2021-02-22 18:55:01', '2021-02-22 18:55:01', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(34, '2021-02-22 18:55:02', '2021-02-22 18:55:02', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(35, '2021-02-22 18:56:53', '2021-02-22 18:56:53', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(36, '2021-02-22 18:56:54', '2021-02-22 18:56:54', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(37, '2021-02-22 19:09:25', '2021-02-22 19:09:25', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(38, '2021-02-22 19:09:26', '2021-02-22 19:09:26', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(39, '2021-02-22 19:34:02', '2021-02-22 19:34:02', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'terms-and-conditions'),
(40, '2021-02-22 19:34:03', '2021-02-22 19:34:03', 'Bill', 'Ebbesen', 'b@starx.dk', '77.66.3.163', 'privacy-policy'),
(41, '2021-02-23 09:13:37', '2021-02-23 09:13:37', 'Lightbooth', 'ApS', 'info@lightbooth.dk', '77.66.3.163', 'privacy-policy'),
(42, '2021-02-23 09:13:38', '2021-02-23 09:13:38', 'Lightbooth', 'ApS', 'info@lightbooth.dk', '77.66.3.163', 'terms-and-conditions'),
(43, '2021-02-23 09:28:02', '2021-02-23 09:28:02', 'Christian', 'Flintrup', 'chr@agge.mnet', '77.66.3.163', 'terms-and-conditions'),
(44, '2021-02-23 09:28:03', '2021-02-23 09:28:03', 'Christian', 'Flintrup', 'chr@agge.mnet', '77.66.3.163', 'privacy-policy'),
(45, '2021-02-23 09:44:49', '2021-02-23 09:44:49', 'Louise', 'Bencard', 'Louisebencard@beautyboosters.dk', '77.66.3.163', 'privacy-policy'),
(46, '2021-02-23 09:44:50', '2021-02-23 09:44:50', 'Louise', 'Bencard', 'Louisebencard@beautyboosters.dk', '77.66.3.163', 'terms-and-conditions'),
(47, '2021-02-23 11:19:15', '2021-02-23 11:19:15', 'werwer', 'werwer', 'danielweisspedersen@gmail.com', '185.5.164.194', 'terms-and-conditions'),
(48, '2021-02-23 11:19:16', '2021-02-23 11:19:16', 'werwer', 'werwer', 'danielweisspedersen@gmail.com', '185.5.164.194', 'privacy-policy'),
(49, '2021-02-24 22:06:24', '2021-02-24 22:06:24', 'Daniel', 'Pedersen', 'danielweisspedersen@gmail.com', '185.5.164.194', 'terms-and-conditions'),
(50, '2021-02-24 22:06:25', '2021-02-24 22:06:25', 'Daniel', 'Pedersen', 'danielweisspedersen@gmail.com', '185.5.164.194', 'privacy-policy'),
(51, '2021-02-25 09:18:21', '2021-02-25 09:18:21', 'rtertret', 'erterter', 'admin@admin.com', '185.5.164.194', 'terms-and-conditions'),
(52, '2021-02-25 09:18:21', '2021-02-25 09:18:21', 'rtertret', 'erterter', 'admin@admin.com', '185.5.164.194', 'privacy-policy');

-- --------------------------------------------------------

--
-- Table structure for table `ea_migrations`
--

CREATE TABLE `ea_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_migrations`
--

INSERT INTO `ea_migrations` (`version`) VALUES
(21);

-- --------------------------------------------------------

--
-- Table structure for table `ea_roles`
--

CREATE TABLE `ea_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `appointments` int(11) DEFAULT NULL,
  `customers` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  `users` int(11) DEFAULT NULL,
  `system_settings` int(11) DEFAULT NULL,
  `user_settings` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_roles`
--

INSERT INTO `ea_roles` (`id`, `name`, `slug`, `is_admin`, `appointments`, `customers`, `services`, `users`, `system_settings`, `user_settings`) VALUES
(1, 'Administrator', 'admin', 1, 15, 15, 15, 15, 15, 15),
(2, 'Provider', 'provider', 0, 15, 15, 0, 0, 0, 15),
(3, 'Customer', 'customer', 0, 0, 0, 0, 0, 0, 0),
(4, 'Secretary', 'secretary', 0, 15, 15, 0, 0, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ea_secretaries_providers`
--

CREATE TABLE `ea_secretaries_providers` (
  `id_users_secretary` int(11) NOT NULL DEFAULT '0',
  `id_users_provider` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ea_services`
--

CREATE TABLE `ea_services` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(32) DEFAULT NULL,
  `description` text,
  `location` text,
  `availabilities_type` varchar(32) DEFAULT 'flexible',
  `attendants_number` int(11) DEFAULT '1',
  `id_service_categories` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_services`
--

INSERT INTO `ea_services` (`id`, `name`, `duration`, `price`, `currency`, `description`, `location`, `availabilities_type`, `attendants_number`, `id_service_categories`) VALUES
(2, 'Fredagsbar', 480, '10.00', 'DKK', 'Fredagsbar med hele banden', 'Kontoret', 'flexible', 10, 1),
(3, 'Diller Lighter', 120, '999.00', 'DKK', '3D Printet diller lighter', 'Kontoret', 'flexible', 1, 2),
(4, 'Shellac (1 person)', 60, '399.00', 'DKK', '', 'Hos kunden', 'flexible', 8, 3),
(5, 'Gelénegle med forlængelse', 90, '649.00', 'DKK', '', 'Hos kunden', 'fixed', 8, 3),
(6, 'Lash Lift inkl. farve af bryn og vipper', 60, '499.00', 'DKK', '', 'Hos kunden', 'fixed', 5, 4),
(7, 'Brow Lift inkl. farve', 60, '449.00', 'DKK', '', 'Hos kunden', 'fixed', 6, 4),
(8, 'Frokost', 45, '1.00', 'DKK', '', 'Kontoret', 'flexible', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ea_services_providers`
--

CREATE TABLE `ea_services_providers` (
  `id_users` int(11) NOT NULL DEFAULT '0',
  `id_services` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_services_providers`
--

INSERT INTO `ea_services_providers` (`id_users`, `id_services`) VALUES
(4, 2),
(10, 2),
(4, 3),
(6, 4),
(6, 5),
(10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ea_service_categories`
--

CREATE TABLE `ea_service_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_service_categories`
--

INSERT INTO `ea_service_categories` (`id`, `name`, `description`) VALUES
(1, 'Druk', 'Drikkeydelser med BeautyBoosterne'),
(2, '3D Print', '3D Print fra Bill'),
(3, 'Negle', ''),
(4, 'Vipper og Bryn', ''),
(5, 'Makeup og Hårstyling', ''),
(6, 'Hårklip', '');

-- --------------------------------------------------------

--
-- Table structure for table `ea_settings`
--

CREATE TABLE `ea_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(512) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_settings`
--

INSERT INTO `ea_settings` (`id`, `name`, `value`) VALUES
(1, 'company_working_plan', '{\"monday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"tuesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"wednesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"thursday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"friday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"saturday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"sunday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]}}'),
(2, 'book_advance_timeout', '30'),
(3, 'google_analytics_code', ''),
(4, 'customer_notifications', '1'),
(5, 'date_format', 'DMY'),
(6, 'require_captcha', '0'),
(7, 'time_format', 'military'),
(8, 'display_cookie_notice', '1'),
(9, 'cookie_notice_content', '<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Ved at benytte BeautyBoosters hjemmeside, så accepterer du vores cookiepolitik.</p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Denne hjemmeside bruger cookies for optimere brugeroplevelsen på hjemmesiden. Eftersom at de fleste funktioner på hjemmesiden er afhængige af brug og lagring af cookies, kan man ikke forvente at hjemmesiden fungerer optimalt, såfremt man vælger at deaktivere cookies. Vi gør opmærksom på at cookies ikke kan sprede computervirus eller lignende skadelige programmer. Ligeledes kan cookies ej heller se dine personlige oplysninger som adresse, navn eller lignende. Dog kan en cookie anvendes til at huske dig og dine oplysninger hvis du vælger at give tilladelse til dette.</p>'),
(10, 'display_terms_and_conditions', '1'),
(11, 'terms_and_conditions_content', '<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Bliver du forhindret i at møde til din aftalte behandling, og ønsker at melde afbud, beder vi dig gøre dette senest 24 timer inden påbegyndelse af behandlingstiden. Vi forsøger at rykke din tid så vidt muligt, såfremt dette ønskes.</p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Overholdes dette ikke, påregnes et gebyr på 50 % af behandlingens oprindelige pris og der ses bort fra eventuelle rabatter. Vælger man at udeblive fra påregnes 100 % af den oprindelig pris som opkræves til omgående betaling.</p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\"><span class=\"wixGuard\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">​</span></p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-style: italic;\">Afbud skal meddeles via telefon + 42 94 69 86 eller via E-mail på&nbsp;<a data-auto-recognition=\"true\" href=\"mailto:hello@beautyboosters.dk\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; color: inherit;\">hello@beautyboosters.dk</a></span></p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\"><span class=\"wixGuard\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">​</span></p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Ved forsinkelse fra kundens side, vurderes der om behandlingen kan udføres tilfredsstillende, eller om det er nødvendigt at finde en ny tid. Behandlingen skal dog betales uanset udfaldet grundet afsat tid.</p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Ved forsinkelse fra Beauty Boosters side, vurderes det ligeledes om behandlingen kan udføres tilfredsstillende. Såfremt dette ikke er muligt, tilbydes kunden en ny tid og vi forsøger at finde en passende løsning i fællesskab.</p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\"><span class=\"wixGuard\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;\">​</span></p><p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Vi gør opmærksom på at vi ikke udfører behandlinger hvis man har nogen former for infektion, betændelser eller lignende som kan have indflydelse på resultatet eller kundens sundhed.</p>'),
(12, 'display_privacy_policy', '1'),
(13, 'privacy_policy_content', '<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Medmindre andet er aftalt skriftligt, er følgende betingelser gældende for BeautyBoosters, Gammeltorv 8, 2. 1457 København.</p>&nbsp;<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Vi tager forbehold for trykfejl og stavefejl.</p>&nbsp;<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">BeautyBoosters forbeholder os retten til løbende at ændre medlemsbetingelser, gebyrer og priser. Herunder priser for abonnenter.</p>&nbsp;<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Behandling af dine personoplysninger sker efter reglerne i databeskyttelsesforordningen og databeskyttelsesloven. Vi behandler kun de personoplysninger som du giver os for at kunne udføre den ønskede behandling. Disse oplysninger omfatter oftest navn, adresse, E-mail, telefonnummer og betalingsoplysninger.</p>&nbsp;<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Formålet med ovenstående, er at sikre os at du som kunde modtager den bedst mulige service og behandling, hos BeautyBoosters. Det vil sige at vi kun behandler dine relevante personoplysninger.</p>&nbsp;<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">De indhentede oplysninger lagres på WIX og Gigahosts servere&nbsp; med begrænset adgang. Derudover sikrer vi at dine oplysninger ikke kommer til uvedkommendes kendskab, misbruges eller behandles i strid med GDPR. Dine oplysninger bliver slettet når vi ikke længere har behov for dem, men senest inden for 5 år.</p>&nbsp;<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Vi gør opmærksom på at der i visse tilfælde er behov for at dele dine personlige oplysninger med samarbejdspartnere, for at kunne udføre de ønskede behandlinger.&nbsp;</p>&nbsp;<p class=\"font_8\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; pointer-events: auto; line-height: normal; color: rgb(var(--color_15));\">Du kan til enhver tid få indsigt i hvilke dine oplysninger som vi opbevarer og behandler. Ønskes dette, bedes du kontakte os telefonisk eller pr. mail.</p>'),
(14, 'first_weekday', 'monday'),
(15, 'require_phone_number', '1'),
(16, 'api_token', ''),
(17, 'display_any_provider', '1'),
(18, 'company_name', 'BeautyBoosters'),
(19, 'company_email', 'hello@beautyboosters.dk'),
(20, 'company_link', 'https://beautyboosters.dk');

-- --------------------------------------------------------

--
-- Table structure for table `ea_users`
--

CREATE TABLE `ea_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `mobile_number` varchar(128) DEFAULT NULL,
  `phone_number` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `zip_code` varchar(64) DEFAULT NULL,
  `notes` text,
  `timezone` varchar(256) DEFAULT 'UTC',
  `language` varchar(256) DEFAULT 'english',
  `id_roles` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_users`
--

INSERT INTO `ea_users` (`id`, `first_name`, `last_name`, `email`, `mobile_number`, `phone_number`, `address`, `city`, `state`, `zip_code`, `notes`, `timezone`, `language`, `id_roles`) VALUES
(1, 'Beauty', 'Boosters', 'bre@gigahost.dk', '', '53601523', '', '', '', '', '', 'Europe/Copenhagen', 'english', 1),
(4, 'Bill', 'Ebbesen', 'bre@gigahost.dk', '53601523', '53601523', 'Gammeltorv 8, 2. sal', 'København K', '', '1457', '', 'Europe/Copenhagen', 'english', 2),
(5, 'Louise', 'Bencard', 'Louisebencard@beautyboosters.dk', NULL, '42946986', 'Husumgade 1, St. 4', 'København N', NULL, '2200', NULL, 'Europe/Copenhagen', 'danish', 3),
(6, 'Nanna', 'Rosengren', 'hello@beautyboosters.dk', '', '42946986', '', '', '', '', '', 'UTC', 'english', 2),
(7, 'Mayda', 'Hodzic', 'mayda@beautyboosters.dk', '', '60543003', '', '', '', '', '', 'Europe/Copenhagen', 'english', 1),
(9, 'Bill', 'Ebbesen', 'b@starx.dk', NULL, '+4553601523', 'Knabrostræde 2, 4. tv.', 'København K', NULL, '1210', NULL, 'Europe/Copenhagen', 'danish', 3),
(10, 'Louise', 'Benkort', 'louise@beautyboosters.dk', '+4542946986', '+4542946986', 'Gammeltorv 8, 2. sal', 'København K', '', '1457', '', 'Europe/Copenhagen', 'english', 2),
(11, 'Lightbooth', 'ApS', 'info@lightbooth.dk', NULL, '53601523', 'Gammeltorv 8, 2. sal', 'København K', NULL, '1457', NULL, 'Europe/Copenhagen', 'english', 3),
(12, 'Christian', 'Flintrup', 'chr@agge.mnet', NULL, '135351513', 'EGDgd', 'gdagda', NULL, '3145', NULL, 'Europe/Copenhagen', 'english', 3),
(13, 'Daniel', 'Pedersen', 'danielweisspedersen@gmail.com', NULL, '51401888', 'otto', 'copenhagen', NULL, '2450', NULL, 'Europe/Copenhagen', 'english', 3),
(14, 'rtertret', 'erterter', 'admin@admin.com', NULL, '51401888', 'otto', 'copenhagen', NULL, '2450', NULL, 'Europe/Copenhagen', 'english', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ea_user_settings`
--

CREATE TABLE `ea_user_settings` (
  `id_users` int(11) NOT NULL DEFAULT '0',
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `salt` varchar(512) DEFAULT NULL,
  `working_plan` text,
  `working_plan_exceptions` text,
  `notifications` tinyint(4) DEFAULT NULL,
  `google_sync` tinyint(4) DEFAULT NULL,
  `google_token` text,
  `google_calendar` varchar(128) DEFAULT NULL,
  `sync_past_days` int(11) DEFAULT '30',
  `sync_future_days` int(11) DEFAULT '90',
  `calendar_view` varchar(32) DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_user_settings`
--

INSERT INTO `ea_user_settings` (`id_users`, `username`, `password`, `salt`, `working_plan`, `working_plan_exceptions`, `notifications`, `google_sync`, `google_token`, `google_calendar`, `sync_past_days`, `sync_future_days`, `calendar_view`) VALUES
(1, 'beautyboosters', 'd8bd3df1ac5f322ebbef39754866a2198fd16dff37e1b79017276cb23fabf7f8', '810c1f9bed41739aaaa6ea14442345ed5af7cd004b744392dbc36501ce00007e', NULL, NULL, 1, NULL, NULL, NULL, 30, 90, 'default'),
(4, 'bre', 'f90b9fe91e520cb073bf6b51f82cb61f0f52d152408374bf22a5c0faa8c3ed3d', '410d7ffbc822088197bacd790638e14b87738bd9885832dadd57fbb00ffb2c75', '{\"monday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"tuesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"wednesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"thursday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"friday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"saturday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"sunday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]}}', '[]', 0, NULL, NULL, NULL, 30, 90, 'default'),
(6, 'NannaR', 'f21c3e0eb1ba57412125b32e485e563d09819237420a09767669a671fa01973c', '2d41d6febbf5d89d8b32c1a53c6bd45a9759e545d6ed5cd2d5fb98bc72afa45f', '{\"monday\":{\"start\":\"08:00\",\"end\":\"20:00\",\"breaks\":[]},\"tuesday\":{\"start\":\"08:00\",\"end\":\"20:00\",\"breaks\":[]},\"wednesday\":{\"start\":\"08:00\",\"end\":\"20:00\",\"breaks\":[]},\"thursday\":{\"start\":\"08:00\",\"end\":\"20:00\",\"breaks\":[]},\"friday\":{\"start\":\"08:00\",\"end\":\"20:00\",\"breaks\":[]},\"saturday\":{\"start\":\"08:00\",\"end\":\"20:00\",\"breaks\":[]},\"sunday\":{\"start\":\"08:00\",\"end\":\"20:00\",\"breaks\":[]}}', '[]', 1, NULL, NULL, NULL, 30, 90, 'default'),
(7, 'MaydaHodzic', '35a4bdc8bcb0ccd9bde525849ea9aa41ffff5f9fd5f1a7d8ac9d4e0969888e1f', '208587f35e5a6bbbc296936b9f7ca29e7a939bc8644bbd87f6ff55c985f78459', NULL, NULL, 1, NULL, NULL, NULL, 30, 90, 'default'),
(10, 'louise', 'e744923a9c13c06af42bf9b924a904a7f3bce88951d503a868adf63c3c9b1c72', '2c8748d60adefb5c5f5d7d303bd04bf751516efa1ff4a6cac6713e143c79045f', '{\"monday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"tuesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"wednesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"thursday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"friday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"saturday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"sunday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]}}', '[]', 0, NULL, NULL, NULL, 30, 90, 'default');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ea_appointments`
--
ALTER TABLE `ea_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users_provider` (`id_users_provider`),
  ADD KEY `id_users_customer` (`id_users_customer`),
  ADD KEY `id_services` (`id_services`);

--
-- Indexes for table `ea_consents`
--
ALTER TABLE `ea_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_roles`
--
ALTER TABLE `ea_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_secretaries_providers`
--
ALTER TABLE `ea_secretaries_providers`
  ADD PRIMARY KEY (`id_users_secretary`,`id_users_provider`),
  ADD KEY `secretaries_users_provider` (`id_users_provider`);

--
-- Indexes for table `ea_services`
--
ALTER TABLE `ea_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service_categories` (`id_service_categories`);

--
-- Indexes for table `ea_services_providers`
--
ALTER TABLE `ea_services_providers`
  ADD PRIMARY KEY (`id_users`,`id_services`),
  ADD KEY `services_providers_services` (`id_services`);

--
-- Indexes for table `ea_service_categories`
--
ALTER TABLE `ea_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_settings`
--
ALTER TABLE `ea_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_users`
--
ALTER TABLE `ea_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_roles` (`id_roles`);

--
-- Indexes for table `ea_user_settings`
--
ALTER TABLE `ea_user_settings`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ea_appointments`
--
ALTER TABLE `ea_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ea_consents`
--
ALTER TABLE `ea_consents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ea_roles`
--
ALTER TABLE `ea_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ea_services`
--
ALTER TABLE `ea_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ea_service_categories`
--
ALTER TABLE `ea_service_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ea_settings`
--
ALTER TABLE `ea_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ea_users`
--
ALTER TABLE `ea_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ea_appointments`
--
ALTER TABLE `ea_appointments`
  ADD CONSTRAINT `appointments_services` FOREIGN KEY (`id_services`) REFERENCES `ea_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointments_users_customer` FOREIGN KEY (`id_users_customer`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointments_users_provider` FOREIGN KEY (`id_users_provider`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ea_secretaries_providers`
--
ALTER TABLE `ea_secretaries_providers`
  ADD CONSTRAINT `secretaries_users_provider` FOREIGN KEY (`id_users_provider`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `secretaries_users_secretary` FOREIGN KEY (`id_users_secretary`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ea_services`
--
ALTER TABLE `ea_services`
  ADD CONSTRAINT `services_service_categories` FOREIGN KEY (`id_service_categories`) REFERENCES `ea_service_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ea_services_providers`
--
ALTER TABLE `ea_services_providers`
  ADD CONSTRAINT `services_providers_services` FOREIGN KEY (`id_services`) REFERENCES `ea_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `services_providers_users_provider` FOREIGN KEY (`id_users`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ea_users`
--
ALTER TABLE `ea_users`
  ADD CONSTRAINT `users_roles` FOREIGN KEY (`id_roles`) REFERENCES `ea_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ea_user_settings`
--
ALTER TABLE `ea_user_settings`
  ADD CONSTRAINT `user_settings_users` FOREIGN KEY (`id_users`) REFERENCES `ea_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
