-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 09, 2017 alle 11:12
-- Versione del server: 10.1.22-MariaDB
-- Versione PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magutticms`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `adminusers`
--

DROP TABLE IF EXISTS `adminusers`;
CREATE TABLE `adminusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `real_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `adminusers`
--

INSERT INTO `adminusers` (`id`, `first_name`, `last_name`, `email`, `password`, `real_password`, `remember_token`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'GF', 'Admin', 'cmsadmin@magutti.com', '$2y$10$o1FptJnzf3CFEX/2TUZG9.34BvuADyLhJuj1xL/Am9mJXHL1bnFx6', 'password', 'DSAJ3b2zQ4aZSvaUAqsOG7JiWDQN4lRyHgsRpausvVHrXJhqVkdsoxJfZHPF', '0000-00-00 00:00:00', '2017-07-09 09:11:07', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `adminuser_role`
--

DROP TABLE IF EXISTS `adminuser_role`;
CREATE TABLE `adminuser_role` (
  `adminuser_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `adminuser_role`
--

INSERT INTO `adminuser_role` (`adminuser_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_parent` int(11) NOT NULL,
  `id_template` int(11) NOT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abstract` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `pub` tinyint(4) DEFAULT '1',
  `top_menu` tinyint(4) DEFAULT '1',
  `template_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `articles`
--

INSERT INTO `articles` (`id`, `domain`, `id_parent`, `id_template`, `menu_title`, `title`, `subtitle`, `intro`, `abstract`, `description`, `slug`, `doc`, `image`, `banner`, `link`, `sort`, `pub`, `top_menu`, `template_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'home', '', '', '', '', 0, 1, 0, 0, 0, '2016-07-04 06:54:35', '2017-04-21 15:47:59'),
(2, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'company', '', '', '', '', 100, 1, 1, 0, 0, '2016-07-04 06:56:59', '2017-04-21 15:48:05'),
(3, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'privacy', '', '', '', '', 2000, 1, 0, 0, 0, '2016-07-04 07:11:17', '2017-04-21 15:47:43'),
(4, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'contacts', '', '', '', '', 400, 1, 1, 0, 0, '2016-07-04 07:11:39', '2017-04-21 15:47:31'),
(5, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'products', '', '', '', '', 200, 1, 1, 0, 0, '2016-07-04 07:20:37', '2017-04-21 15:47:27'),
(6, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'news', '', '', '', '', 300, 1, 1, 0, 0, '2016-07-04 07:59:05', '2017-04-21 15:48:25'),
(7, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'login', '', '', '', '', 1000, 1, 0, 0, 0, '2016-08-09 13:12:14', '2017-04-21 15:47:35'),
(8, '', 9, 0, NULL, '', NULL, NULL, NULL, '', 'user-dashboard', '', '', '', '', 1200, 1, 0, 0, 0, '2016-08-09 13:24:04', '2017-04-21 15:47:37'),
(9, '', 0, 0, NULL, '', NULL, NULL, NULL, '', 'reserved-area', '', '', '', '', 1100, 1, 0, 0, 0, '2016-08-10 07:16:26', '2017-04-21 15:47:36'),
(10, '', 9, 0, NULL, '', NULL, NULL, NULL, '', 'user-profile', '', '', '', '', 1300, 1, 0, 0, 0, '2016-08-10 07:17:38', '2017-04-21 15:47:41');

-- --------------------------------------------------------

--
-- Struttura della tabella `article_translations`
--

DROP TABLE IF EXISTS `article_translations`;
CREATE TABLE `article_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_no_index` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `article_translations`
--

INSERT INTO `article_translations` (`id`, `article_id`, `locale`, `menu_title`, `title`, `subtitle`, `intro`, `description`, `abstract`, `seo_title`, `seo_description`, `seo_keywords`, `seo_no_index`, `created_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'it', 'Home', 'The Cms for web artisan', 'maguttiCms', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec volutpat maximus purus, sit amet congue nulla maximus quis. Nam sit amet massa sed ante rhoncus vehicula. Nam nec metus eu lorem porttitor suscipit. In at mi sit amet felis tincidunt lobortis ac quis nulla. Morbi condimentum eros vel felis iaculis facilisis. Nam at elit a odio elementum fringilla a vel magna. Vestibulum varius bibendum lectus, sed cursus leo consectetur a. Duis venenatis hendrerit enim, vitae tincidunt quam. Phasellus sollicitudin lobortis turpis, quis mollis purus porttitor sit amet.</p>', '', '', '', '', '0', 0, 0, '2016-07-04 07:53:04', '2017-04-21 13:51:49'),
(2, 1, 'en', 'Home', 'maguttiCms', 'The Cms for web artisan', NULL, '', '', '', '', '', '', 0, 0, '2016-07-04 07:53:04', '2016-12-29 11:43:10'),
(3, 2, 'it', 'Azienda', 'Azienda', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas aliquam mollis. Donec luctus luctus dui, vitae dapibus ipsum fermentum a. Quisque fermentum sodales iaculis. Nunc blandit ante luctus urna laoreet sollicitudin. Praesent a libero vitae elit pretium cursus. Ut maximus felis pretium augue ullamcorper venenatis. Aenean mattis hendrerit dui id aliquet. Nunc rhoncus ipsum ut orci posuere semper vel quis diam. Duis pulvinar molestie nisi, sed sollicitudin metus fermentum sit amet. Phasellus semper, nibh sed laoreet blandit, ligula neque egestas tortor, ac porttitor massa justo ut diam.</p>\r\n<p>Donec id sem sem. Pellentesque augue quam, euismod nec neque non, sollicitudin tincidunt purus. Sed viverra libero eget ante sollicitudin iaculis. Donec erat tellus, aliquet aliquam nisi vel, faucibus interdum est. In aliquet pharetra eros vel lacinia. Nam sit amet ex tristique, pretium quam quis, ullamcorper dolor. Vestibulum gravida eros accumsan gravida iaculis. Suspendisse eu elit metus. Pellentesque iaculis rutrum augue quis blandit. Fusce at lacus vestibulum, placerat justo vitae, lacinia nisl. Phasellus accumsan enim vitae ex condimentum rhoncus.</p>\r\n<p>Duis feugiat semper eros, vitae consectetur mauris volutpat viverra. Aenean at augue dui. Sed varius tincidunt hendrerit. Cras sed condimentum nunc. Vestibulum consequat eget ipsum a ultrices. Proin auctor commodo facilisis. Praesent quis neque tellus. Fusce venenatis, odio nec facilisis molestie, orci lacus lobortis orci, nec commodo tortor tortor et eros. Sed lacinia nisi et eleifend pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi sodales diam quis diam volutpat, et egestas purus scelerisque. Phasellus bibendum diam venenatis tortor pretium iaculis. Aliquam a faucibus mauris. Aenean sed urna velit. Nam malesuada dui eget scelerisque fermentum.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas aliquam mollis. Donec luctus luctus dui, vitae dapibus ipsum fermentum a. Quisque fermentum sodales iaculis. Nunc blandit ante luctus urna laoreet sollicitudin. Praesent a libero vitae elit pretium cursus. Ut maximus felis pretium augue ullamcorper venenatis. Aenean mattis hendrerit dui id aliquet. Nunc rhoncus ipsum ut orci posuere semper vel quis diam. Duis pulvinar molestie nisi, sed sollicitudin metus fermentum sit amet. Phasellus semper, nibh sed laoreet blandit, ligula neque egestas tortor, ac porttitor massa justo ut diam.</p>\r\n<p>Donec id sem sem. Pellentesque augue quam, euismod nec neque non, sollicitudin tincidunt purus. Sed viverra libero eget ante sollicitudin iaculis. Donec erat tellus, aliquet aliquam nisi vel, faucibus interdum est. In aliquet pharetra eros vel lacinia. Nam sit amet ex tristique, pretium quam quis, ullamcorper dolor. Vestibulum gravida eros accumsan gravida iaculis. Suspendisse eu elit metus. Pellentesque iaculis rutrum augue quis blandit. Fusce at lacus vestibulum, placerat justo vitae, lacinia nisl. Phasellus accumsan enim vitae ex condimentum rhoncus.</p>\r\n<p>Duis feugiat semper eros, vitae consectetur mauris volutpat viverra. Aenean at augue dui. Sed varius tincidunt hendrerit. Cras sed condimentum nunc. Vestibulum consequat eget ipsum a ultrices. Proin auctor commodo facilisis. Praesent quis neque tellus. Fusce venenatis, odio nec facilisis molestie, orci lacus lobortis orci, nec commodo tortor tortor et eros. Sed lacinia nisi et eleifend pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi sodales diam quis diam volutpat, et egestas purus scelerisque. Phasellus bibendum diam venenatis tortor pretium iaculis. Aliquam a faucibus mauris. Aenean sed urna velit. Nam malesuada dui eget scelerisque fermentum.</p>', '', '', '', '', 0, 0, '2016-07-04 07:53:13', '2016-12-29 09:21:02'),
(4, 2, 'en', 'Company', 'Company', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas aliquam mollis. Donec luctus luctus dui, vitae dapibus ipsum fermentum a. Quisque fermentum sodales iaculis. Nunc blandit ante luctus urna laoreet sollicitudin. Praesent a liber', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas aliquam mollis. Donec luctus luctus dui, vitae dapibus ipsum fermentum a. Quisque fermentum sodales iaculis. Nunc blandit ante luctus urna laoreet sollicitudin. Praesent a libero vitae elit pretium cursus. Ut maximus felis pretium augue ullamcorper venenatis. Aenean mattis hendrerit dui id aliquet. Nunc rhoncus ipsum ut orci posuere semper vel quis diam. Duis pulvinar molestie nisi, sed sollicitudin metus fermentum sit amet. Phasellus semper, nibh sed laoreet blandit, ligula neque egestas tortor, ac porttitor massa justo ut diam.</p>\r\n<p>Donec id sem sem. Pellentesque augue quam, euismod nec neque non, sollicitudin tincidunt purus. Sed viverra libero eget ante sollicitudin iaculis. Donec erat tellus, aliquet aliquam nisi vel, faucibus interdum est. In aliquet pharetra eros vel lacinia. Nam sit amet ex tristique, pretium quam quis, ullamcorper dolor. Vestibulum gravida eros accumsan gravida iaculis. Suspendisse eu elit metus. Pellentesque iaculis rutrum augue quis blandit. Fusce at lacus vestibulum, placerat justo vitae, lacinia nisl. Phasellus accumsan enim vitae ex condimentum rhoncus.</p>\r\n<p>Duis feugiat semper eros, vitae consectetur mauris volutpat viverra. Aenean at augue dui. Sed varius tincidunt hendrerit. Cras sed condimentum nunc. Vestibulum consequat eget ipsum a ultrices. Proin auctor commodo facilisis. Praesent quis neque tellus. Fusce venenatis, odio nec facilisis molestie, orci lacus lobortis orci, nec commodo tortor tortor et eros. Sed lacinia nisi et eleifend pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi sodales diam quis diam volutpat, et egestas purus scelerisque. Phasellus bibendum diam venenatis tortor pretium iaculis. Aliquam a faucibus mauris. Aenean sed urna velit. Nam malesuada dui eget scelerisque fermentum.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus egestas aliquam mollis. Donec luctus luctus dui, vitae dapibus ipsum fermentum a. Quisque fermentum sodales iaculis. Nunc blandit ante luctus urna laoreet sollicitudin. Praesent a libero vitae elit pretium cursus. Ut maximus felis pretium augue ullamcorper venenatis. Aenean mattis hendrerit dui id aliquet. Nunc rhoncus ipsum ut orci posuere semper vel quis diam. Duis pulvinar molestie nisi, sed sollicitudin metus fermentum sit amet. Phasellus semper, nibh sed laoreet blandit, ligula neque egestas tortor, ac porttitor massa justo ut diam.</p>\r\n<p>Donec id sem sem. Pellentesque augue quam, euismod nec neque non, sollicitudin tincidunt purus. Sed viverra libero eget ante sollicitudin iaculis. Donec erat tellus, aliquet aliquam nisi vel, faucibus interdum est. In aliquet pharetra eros vel lacinia. Nam sit amet ex tristique, pretium quam quis, ullamcorper dolor. Vestibulum gravida eros accumsan gravida iaculis. Suspendisse eu elit metus. Pellentesque iaculis rutrum augue quis blandit. Fusce at lacus vestibulum, placerat justo vitae, lacinia nisl. Phasellus accumsan enim vitae ex condimentum rhoncus.</p>\r\n<p>Duis feugiat semper eros, vitae consectetur mauris volutpat viverra. Aenean at augue dui. Sed varius tincidunt hendrerit. Cras sed condimentum nunc. Vestibulum consequat eget ipsum a ultrices. Proin auctor commodo facilisis. Praesent quis neque tellus. Fusce venenatis, odio nec facilisis molestie, orci lacus lobortis orci, nec commodo tortor tortor et eros. Sed lacinia nisi et eleifend pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi sodales diam quis diam volutpat, et egestas purus scelerisque. Phasellus bibendum diam venenatis tortor pretium iaculis. Aliquam a faucibus mauris. Aenean sed urna velit. Nam malesuada dui eget scelerisque fermentum.</p>', '', '', '', '', 0, 0, '2016-07-04 07:53:13', '2016-12-27 16:51:04'),
(5, 3, 'it', 'Privacy', 'Privacy', '', NULL, '', NULL, '', '', '', '', 0, 0, '2016-07-04 07:53:28', '2016-07-04 07:53:28'),
(6, 3, 'en', 'Privacy', 'Privacy', '', NULL, '', NULL, '', '', '', '', 0, 0, '2016-07-04 07:53:28', '2016-07-04 10:51:02'),
(7, 5, 'it', 'Prodotti', 'Prodotti', '', NULL, '', '', '', '', '', '', 0, 0, '2016-07-04 07:53:38', '2017-04-21 15:46:49'),
(8, 5, 'en', 'Products', 'Products', '', NULL, '', '', '', '', '', '', 0, 0, '2016-07-04 07:53:38', '2017-04-21 15:46:49'),
(9, 4, 'it', 'Contatti', 'Contatti', '', NULL, '', '', '', '', '', '', 0, 0, '2016-07-04 07:54:32', '2017-04-21 15:47:10'),
(10, 4, 'en', 'Contacts', 'Contacts', '', NULL, '', '', '', '', '', '', 0, 0, '2016-07-04 07:54:32', '2017-04-21 15:47:10'),
(13, 6, 'it', 'News', 'News', '', NULL, '', '', '', '', '', '', 0, 0, '2016-08-04 11:24:58', '2017-04-21 15:46:59'),
(14, 6, 'en', 'News', 'News', '', NULL, '', '', '', '', '', '', 0, 0, '2016-08-04 11:24:58', '2017-04-21 15:46:59'),
(15, 7, 'it', 'login', 'login', 'login', NULL, '', NULL, 'Login', '', '', '', 0, 0, '2016-08-09 13:12:14', '2016-08-10 04:55:48'),
(16, 7, 'en', 'Login', 'Login', 'Login', NULL, '', NULL, 'Login', '', '', '', 0, 0, '2016-08-09 13:12:14', '2016-12-27 14:01:50'),
(17, 8, 'it', 'Dashboard', 'Dashboard', 'Dashboard', NULL, '', NULL, '', '', '', '', 0, 0, '2016-08-09 13:24:04', '2016-08-09 13:24:04'),
(18, 8, 'en', 'Dashboard', 'Dashboard', '', NULL, '', NULL, '', '', '', '', 0, 0, '2016-08-09 13:24:04', '2016-12-27 14:01:35'),
(19, 9, 'it', 'Reserved Area', 'Reserved Area', 'Reserved Area', NULL, '', NULL, '', '', '', '', 0, 0, '2016-08-10 07:16:26', '2016-08-10 07:16:26'),
(20, 9, 'en', 'Reserved Area', 'Reserved area', '', NULL, '', NULL, '', '', '', '', 0, 0, '2016-08-10 07:16:26', '2016-12-27 14:02:51'),
(21, 10, 'it', 'Profile', 'Profile', 'Profile', NULL, '', NULL, '', '', '', '', 0, 0, '2016-08-10 07:17:38', '2016-08-10 07:17:38'),
(22, 10, 'en', 'User profile', 'User profile', '', NULL, '', NULL, '', '', '', '', 0, 0, '2016-08-10 07:17:38', '2016-12-27 14:02:31');

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_parent` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `pub` tinyint(4) DEFAULT '1',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`id`, `id_parent`, `title`, `abstract`, `description`, `slug`, `image`, `banner`, `doc`, `sort`, `pub`, `seo_title`, `seo_description`, `seo_keywords`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 0, '', NULL, NULL, 'identity', '', '', '', 20, 1, NULL, NULL, NULL, 0, '2016-07-04 06:29:04', '2016-12-29 09:08:04'),
(2, 0, '', NULL, NULL, 'research', '', '', '', 10, 1, NULL, NULL, NULL, 0, '2016-12-26 12:16:23', '2016-12-29 09:08:03'),
(3, 0, '', NULL, NULL, 'start-up', '', '', '', 30, 1, NULL, NULL, NULL, 0, '2016-12-27 18:33:25', '2016-12-29 11:44:30');

-- --------------------------------------------------------

--
-- Struttura della tabella `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `update_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`, `description`, `seo_title`, `seo_description`, `seo_keywords`, `created_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'it', 'Identity', NULL, '', '', '', 0, 0, '2016-07-04 06:29:04', '2016-12-27 18:32:32'),
(2, 1, 'en', 'Identity', NULL, '', '', '', 0, 0, '2016-07-04 06:29:04', '2016-12-27 18:32:25'),
(3, 2, 'en', 'Research', NULL, '', '', '', 0, 0, '2016-12-26 12:16:23', '2016-12-27 18:33:06'),
(4, 2, 'it', 'Research', NULL, '', '', '', 0, 0, '2016-12-26 12:16:23', '2016-12-27 18:33:06'),
(5, 3, 'en', 'Start-up', NULL, '', '', '', 0, 0, '2016-12-27 18:33:25', '2016-12-27 18:33:25'),
(6, 3, 'it', 'Start-up', NULL, '', '', '', 0, 0, '2016-12-27 18:33:25', '2016-12-29 11:44:30');

-- --------------------------------------------------------

--
-- Struttura della tabella `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_product_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `id_continent` int(11) DEFAULT NULL,
  `eu` tinyint(1) DEFAULT NULL,
  `vat` decimal(4,1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso_code`, `id_continent`, `eu`, `vat`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(2, 'United Arab Emirates', 'AE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(3, 'Afghanistan', 'AF', NULL, 0, '0.0', 1, NULL, NULL, '2016-08-08 22:00:00', '2017-01-03 14:45:12'),
(4, 'Antigua And Barbuda', 'AG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(5, 'Anguilla', 'AI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(6, 'Albania', 'AL', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(7, 'Armenia', 'AM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(8, 'Angola', 'AO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(9, 'Antarctica', 'AQ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(10, 'Argentina', 'AR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(11, 'American Samoa', 'AS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(12, 'Austria', 'AT', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(13, 'Australia', 'AU', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(14, 'Aruba', 'AW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(15, 'Aland Islands', 'AX', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2017-01-03 14:45:13'),
(16, 'Azerbaijan', 'AZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(17, 'Bosnia And Herzegovina', 'BA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(18, 'Barbados', 'BB', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(19, 'Bangladesh', 'BD', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(20, 'Belgium', 'BE', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(21, 'Burkina Faso', 'BF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(22, 'Bulgaria', 'BG', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(23, 'Bahrain', 'BH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(24, 'Burundi', 'BI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(25, 'Benin', 'BJ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(26, 'Saint Barthelemy', 'BL', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(27, 'Bermuda', 'BM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(28, 'Brunei', 'BN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(29, 'Bolivia', 'BO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(30, 'Bonaire, Saint Eustatius And Saba ', 'BQ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(31, 'Brazil', 'BR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(32, 'Bahamas', 'BS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(33, 'Bhutan', 'BT', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(34, 'Bouvet Island', 'BV', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(35, 'Botswana', 'BW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(36, 'Belarus', 'BY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(37, 'Belize', 'BZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(38, 'Canada', 'CA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(39, 'Cocos Islands', 'CC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(40, 'Democratic Republic Of The Congo', 'CD', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(41, 'Central African Republic', 'CF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(42, 'Republic Of The Congo', 'CG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(43, 'Switzerland', 'CH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(44, 'Ivory Coast', 'CI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(45, 'Cook Islands', 'CK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(46, 'Chile', 'CL', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(47, 'Cameroon', 'CM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(48, 'China', 'CN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(49, 'Colombia', 'CO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(50, 'Costa Rica', 'CR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(51, 'Cuba', 'CU', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(52, 'Cape Verde', 'CV', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(53, 'Curacao', 'CW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(54, 'Christmas Island', 'CX', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(55, 'Cyprus', 'CY', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(56, 'Czech Republic', 'CZ', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(57, 'Germany', 'DE', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(58, 'Djibouti', 'DJ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(59, 'Denmark', 'DK', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(60, 'Dominica', 'DM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(61, 'Dominican Republic', 'DO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(62, 'Algeria', 'DZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(63, 'Ecuador', 'EC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(64, 'Estonia', 'EE', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(65, 'Egypt', 'EG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(66, 'Western Sahara', 'EH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(67, 'Eritrea', 'ER', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(68, 'Spain', 'ES', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(69, 'Ethiopia', 'ET', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(70, 'Finland', 'FI', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(71, 'Fiji', 'FJ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(72, 'Falkland Islands', 'FK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(73, 'Micronesia', 'FM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(74, 'Faroe Islands', 'FO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(75, 'France', 'FR', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(76, 'Gabon', 'GA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(77, 'United Kingdom', 'GB', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(78, 'Grenada', 'GD', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(79, 'Georgia', 'GE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(80, 'French Guiana', 'GF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(81, 'Guernsey', 'GG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(82, 'Ghana', 'GH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(83, 'Gibraltar', 'GI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(84, 'Greenland', 'GL', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(85, 'Gambia', 'GM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(86, 'Guinea', 'GN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(87, 'Guadeloupe', 'GP', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(88, 'Equatorial Guinea', 'GQ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(89, 'Greece', 'GR', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(90, 'South Georgia And The South Sandwich Islands', 'GS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(91, 'Guatemala', 'GT', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(92, 'Guam', 'GU', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(93, 'Guinea-Bissau', 'GW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(94, 'Guyana', 'GY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(95, 'Hong Kong', 'HK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(96, 'Honduras', 'HN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(97, 'Croatia', 'HR', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(98, 'Haiti', 'HT', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(99, 'Hungary', 'HU', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(100, 'Indonesia', 'ID', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(101, 'Ireland', 'IE', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(102, 'Israel', 'IL', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(103, 'Isle Of Man', 'IM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(104, 'India', 'IN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(105, 'British Indian Ocean Territory', 'IO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(106, 'Iraq', 'IQ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(107, 'Iran', 'IR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(108, 'Iceland', 'IS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(109, 'Italy', 'IT', 0, 1, '22.0', 1, 0, 1, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(110, 'Jersey', 'JE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(111, 'Jamaica', 'JM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(112, 'Jordan', 'JO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(113, 'Japan', 'JP', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(114, 'Kenya', 'KE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(115, 'Kyrgyzstan', 'KG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(116, 'Cambodia', 'KH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(117, 'Kiribati', 'KI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(118, 'Comoros', 'KM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(119, 'Saint Kitts And Nevis', 'KN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(120, 'North Korea', 'KP', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(121, 'South Korea', 'KR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(122, 'Kuwait', 'KW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(123, 'Cayman Islands', 'KY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(124, 'Kazakhstan', 'KZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(125, 'Laos', 'LA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(126, 'Lebanon', 'LB', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(127, 'Saint Lucia', 'LC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(128, 'Liechtenstein', 'LI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(129, 'Sri Lanka', 'LK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(130, 'Liberia', 'LR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(131, 'Lesotho', 'LS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(132, 'Lithuania', 'LT', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(133, 'Luxembourg', 'LU', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(134, 'Latvia', 'LV', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(135, 'Libya', 'LY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(136, 'Morocco', 'MA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(137, 'Monaco', 'MC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(138, 'Moldova', 'MD', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(139, 'Montenegro', 'ME', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(140, 'Saint Martin', 'MF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(141, 'Madagascar', 'MG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(142, 'Marshall Islands', 'MH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(143, 'Macedonia', 'MK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(144, 'Mali', 'ML', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(145, 'Myanmar', 'MM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(146, 'Mongolia', 'MN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(147, 'Macao', 'MO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(148, 'Northern Mariana Islands', 'MP', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(149, 'Martinique', 'MQ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(150, 'Mauritania', 'MR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(151, 'Montserrat', 'MS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(152, 'Malta', 'MT', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(153, 'Mauritius', 'MU', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(154, 'Maldives', 'MV', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(155, 'Malawi', 'MW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(156, 'Mexico', 'MX', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(157, 'Malaysia', 'MY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(158, 'Mozambique', 'MZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(159, 'Namibia', 'NA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(160, 'New Caledonia', 'NC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(161, 'Niger', 'NE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(162, 'Norfolk Island', 'NF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(163, 'Nigeria', 'NG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(164, 'Nicaragua', 'NI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(165, 'Netherlands', 'NL', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(166, 'Norway', 'NO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(167, 'Nepal', 'NP', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(168, 'Nauru', 'NR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(169, 'Niue', 'NU', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(170, 'New Zealand', 'NZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(171, 'Oman', 'OM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(172, 'Panama', 'PA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(173, 'Peru', 'PE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(174, 'French Polynesia', 'PF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(175, 'Papua New Guinea', 'PG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(176, 'Philippines', 'PH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(177, 'Pakistan', 'PK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(178, 'Poland', 'PL', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(179, 'Saint Pierre And Miquelon', 'PM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(180, 'Puerto Rico', 'PR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(181, 'Palestinian Territory', 'PS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(182, 'Portugal', 'PT', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(183, 'Palau', 'PW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(184, 'Paraguay', 'PY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(185, 'Qatar', 'QA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(186, 'Reunion', 'RE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(187, 'Romania', 'RO', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(188, 'Serbia', 'RS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(189, 'Russia', 'RU', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(190, 'Rwanda', 'RW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(191, 'Saudi Arabia', 'SA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(192, 'Solomon Islands', 'SB', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(193, 'Seychelles', 'SC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(194, 'Sudan', 'SD', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(195, 'Sweden', 'SE', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(196, 'Singapore', 'SG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(197, 'Saint Helena', 'SH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(198, 'Slovenia', 'SI', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(199, 'Svalbard And Jan Mayen', 'SJ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(200, 'Slovakia', 'SK', 0, 1, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(201, 'Sierra Leone', 'SL', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(202, 'San Marino', 'SM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(203, 'Senegal', 'SN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(204, 'Somalia', 'SO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(205, 'Suriname', 'SR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(206, 'South Sudan', 'SS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(207, 'Sao Tome And Principe', 'ST', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(208, 'El Salvador', 'SV', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(209, 'Sint Maarten', 'SX', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(210, 'Syria', 'SY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(211, 'Swaziland', 'SZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(212, 'Turks And Caicos Islands', 'TC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(213, 'Chad', 'TD', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(214, 'French Southern Territories', 'TF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(215, 'Togo', 'TG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(216, 'Thailand', 'TH', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(217, 'Tajikistan', 'TJ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(218, 'Tokelau', 'TK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(219, 'East Timor', 'TL', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(220, 'Turkmenistan', 'TM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(221, 'Tunisia', 'TN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(222, 'Tonga', 'TO', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(223, 'Turkey', 'TR', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(224, 'Trinidad And Tobago', 'TT', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(225, 'Tuvalu', 'TV', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(226, 'Taiwan', 'TW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(227, 'Tanzania', 'TZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(228, 'Ukraine', 'UA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(229, 'Uganda', 'UG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(230, 'United States Minor Outlying Islands', 'UM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(231, 'United States', 'US', 0, 0, '0.0', 1, 0, 1, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(232, 'Uruguay', 'UY', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(233, 'Uzbekistan', 'UZ', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(234, 'Saint Vincent And The Grenadines', 'VC', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(235, 'Venezuela', 'VE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(236, 'British Virgin Islands', 'VG', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(237, 'U.S. Virgin Islands', 'VI', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(238, 'Vietnam', 'VN', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(239, 'Vanuatu', 'VU', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(240, 'Wallis And Futuna', 'WF', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(241, 'Samoa', 'WS', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(242, 'Kosovo', 'XK', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(243, 'Yemen', 'YE', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(244, 'Mayotte', 'YT', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(245, 'South Africa', 'ZA', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(246, 'Zambia', 'ZM', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00'),
(247, 'Zimbabwe', 'ZW', 0, 0, '0.0', 1, 0, 0, '2016-08-08 22:00:00', '2016-08-08 22:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `domains`
--

DROP TABLE IF EXISTS `domains`;
CREATE TABLE `domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `pub` tinyint(4) DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `domains`
--

INSERT INTO `domains` (`id`, `domain`, `title`, `value`, `sort`, `pub`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'imagetype', '', '', 10, 1, 0, '2016-06-23 07:36:42', '2016-06-28 07:58:39'),
(2, 'imagetype', '', '', 20, 1, 0, '2016-06-23 07:38:24', '2016-06-28 07:59:19'),
(21, 'template', '', 'template_subpage', 30, 1, 0, '2016-06-28 13:18:04', '2016-12-27 14:17:35');

-- --------------------------------------------------------

--
-- Struttura della tabella `domain_translations`
--

DROP TABLE IF EXISTS `domain_translations`;
CREATE TABLE `domain_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `domain_translations`
--

INSERT INTO `domain_translations` (`id`, `domain_id`, `locale`, `title`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'it', 'Top Header Slider', 0, '2016-06-23 07:36:42', '2016-06-28 07:58:39'),
(2, 1, 'en', 'Top Header Slider', 0, '2016-06-23 07:36:42', '2016-06-28 07:58:39'),
(7, 2, 'it', 'Bottom Slider Image', 0, '2016-06-23 07:38:24', '2016-06-28 07:59:19'),
(8, 2, 'en', 'page gallery', 0, '2016-06-23 07:38:24', '2016-12-27 16:38:49'),
(121, 21, 'it', 'Template con sottopagine', 0, '2016-06-28 13:18:04', '2016-07-04 07:38:10'),
(122, 21, 'en', 'Sub page template', 0, '2016-06-28 13:18:04', '2016-12-27 14:17:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `hpsliders`
--

DROP TABLE IF EXISTS `hpsliders`;
CREATE TABLE `hpsliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `hpsliders`
--

INSERT INTO `hpsliders` (`id`, `title`, `description`, `icon`, `image`, `link`, `slug`, `sort`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'maguttiCms', 'free open source CMS based on the Laravel PHP Framework', NULL, 'header2.jpg', NULL, 'laracms', 200, 1, 0, '2016-12-27 17:34:38', '2016-12-27 16:34:38'),
(2, 'maguttiCms 5.3', 'A modular multilingual CMS built with Laravel 5.3', NULL, 'header1.jpg', NULL, 'laracms-53', 100, 1, 0, '2016-12-27 18:18:09', '2016-12-27 16:37:04');

-- --------------------------------------------------------

--
-- Struttura della tabella `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_category_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8_unicode_ci NOT NULL,
  `pub` tinyint(4) DEFAULT '1',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `media`
--

INSERT INTO `media` (`id`, `media_category_id`, `model_id`, `model_type`, `collection_name`, `title`, `description`, `file_name`, `file_ext`, `disk`, `size`, `manipulations`, `pub`, `sort`, `created_at`, `updated_at`) VALUES
(65, 1, 33, 'App\\Article', 'images', '', '', '84861-bg-header.jpg', 'jpg', 'images', 200854, '', 1, NULL, '2016-06-28 07:45:54', '2016-06-28 07:45:54'),
(66, 2, 55, 'App\\Article', 'images', '', '', '97814-bg-header.jpg', 'jpg', 'images', 200854, '', 1, 10, '2016-06-28 09:49:53', '2016-06-28 07:49:53'),
(67, 2, 55, 'App\\Article', 'images', '', '', '40330-bg-header.jpg', 'jpg', 'images', 200854, '', 1, 20, '2016-06-28 09:49:56', '2016-06-28 07:49:56'),
(68, 2, 55, 'App\\Article', 'images', '', '', '58490-bg-header.jpg', 'jpg', 'images', 200854, '', 1, 30, '2016-06-28 09:49:56', '2016-06-28 07:49:56'),
(69, 1, 59, 'App\\Article', 'images', '', '', '90919-bg-header.jpg', 'jpg', 'images', 200854, '', 1, NULL, '2016-06-29 11:13:03', '2016-06-29 11:13:03'),
(70, 1, 59, 'App\\Article', 'images', '', '', '57396-bg-header.jpg', 'jpg', 'images', 200854, '', 1, NULL, '2016-06-29 11:13:06', '2016-06-29 11:13:06'),
(71, 1, 60, 'App\\Article', 'images', '', '', '70822-bg-header.jpg', 'jpg', 'images', 200854, '', 1, NULL, '2016-06-29 11:51:08', '2016-06-29 11:51:08'),
(72, 1, 1, 'App\\Environment', 'images', '', '', '50598-image-3.jpg', 'jpg', 'images', 77269, '', 1, NULL, '2016-06-30 10:08:36', '2016-06-30 10:08:36'),
(73, 1, 1, 'App\\Environment', 'images', '', '', '92355-image-1.jpg', 'jpg', 'images', 64057, '', 1, NULL, '2016-06-30 12:11:59', '2016-06-30 10:08:50'),
(74, 1, 2, 'App\\Environment', 'images', '', '', '22895-bg-header.jpg', 'jpg', 'images', 200854, '', 1, NULL, '2016-06-30 10:23:59', '2016-06-30 10:23:59'),
(75, 1, 3, 'App\\Environment', 'images', '', '', '23356-1-allestimento-cremona-disegno.jpg', 'jpg', 'images', 1339279, '', 1, NULL, '2016-07-01 04:49:01', '2016-07-01 04:49:01'),
(76, 1, 3, 'App\\Environment', 'images', '', '', '13429-3-allestimento-cremona.jpg', 'jpg', 'images', 1245406, '', 1, NULL, '2016-07-01 04:49:01', '2016-07-01 04:49:01'),
(77, 1, 3, 'App\\Environment', 'images', '', '', '80018-4-allestimento-cremona-ficus-exotica-designer-900-cm-green.jpg', 'jpg', 'images', 681713, '', 1, NULL, '2016-07-01 04:49:02', '2016-07-01 04:49:02'),
(78, 1, 3, 'App\\Environment', 'images', '', '', '38616-2-allestimento-cremona.jpg', 'jpg', 'images', 908195, '', 1, NULL, '2016-07-01 04:49:02', '2016-07-01 04:49:02'),
(79, 1, 4, 'App\\Environment', 'images', '', '', '73032-idromassaggio-1.jpg', 'jpg', 'images', 549951, '', 1, NULL, '2016-07-01 05:37:29', '2016-07-01 05:37:29'),
(80, 1, 4, 'App\\Environment', 'images', '', '', '23833-idromassaggio-3.jpg', 'jpg', 'images', 605191, '', 1, NULL, '2016-07-01 05:37:29', '2016-07-01 05:37:29'),
(81, 1, 4, 'App\\Environment', 'images', '', '', '71278-idromassaggio-2.jpg', 'jpg', 'images', 787230, '', 1, NULL, '2016-07-01 05:37:30', '2016-07-01 05:37:30'),
(82, 1, 4, 'App\\Article', 'images', '', '', '86991-on-sale-icon.jpg', 'jpg', 'images', 12886, '', 1, NULL, '2016-08-04 10:46:39', '2016-08-04 10:46:39'),
(90, 1, 6, 'App\\Article', 'images', '', '', '50175-ric.png', 'png', 'images', 179478, '', 1, NULL, '2016-08-04 12:39:20', '2016-08-04 12:39:20'),
(91, 1, 6, 'App\\Article', 'images', '', '', '90125-ric.png', 'png', 'images', 179478, '', 1, NULL, '2016-08-04 12:43:28', '2016-08-04 12:43:28'),
(92, 1, 6, 'App\\Article', 'images', '', '', '93572-ric.png', 'png', 'images', 179478, '', 1, NULL, '2016-08-04 12:47:29', '2016-08-04 12:47:29'),
(93, 1, 6, 'App\\Article', 'images', '', '', 'ric.png', 'png', 'images', 179478, '', 1, NULL, '2016-08-04 12:48:47', '2016-08-04 12:48:47'),
(94, 1, 6, 'App\\Article', 'images', '', '', '30256-ric.png', 'png', 'images', 179478, '', 1, NULL, '2016-08-04 12:49:07', '2016-08-04 12:49:07'),
(95, 1, 11, 'App\\Article', 'images', '', '', '30088-14230-casa-in-tronchi-tecnica-blockbau-val-bedretto-005.JPG', 'JPG', 'images', 363183, '', 1, NULL, '2016-12-26 12:20:33', '2016-12-26 12:20:33'),
(96, 1, 1, 'App\\Article', 'images', '', '', 'anisa6.jpg', 'jpg', 'images', 67882, '', 1, NULL, '2016-12-26 12:21:43', '2016-12-26 12:21:43'),
(97, 1, 1, 'App\\Article', 'images', '', '', 'anisa3.jpg', 'jpg', 'images', 130930, '', 1, NULL, '2016-12-26 12:25:51', '2016-12-26 12:25:51'),
(98, 1, 3, 'App\\News', 'images', '', '', 'anisa3.jpg', 'jpg', 'images', 130930, '', 1, NULL, '2017-01-03 15:35:11', '2017-01-03 15:35:11'),
(99, 1, 3, 'App\\News', 'images', '', '', 'anisa7.jpg', 'jpg', 'images', 150003, '', 1, NULL, '2017-01-03 15:35:24', '2017-01-03 15:35:24');

-- --------------------------------------------------------

--
-- Struttura della tabella `media_translations`
--

DROP TABLE IF EXISTS `media_translations`;
CREATE TABLE `media_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `media_translations`
--

INSERT INTO `media_translations` (`id`, `media_id`, `locale`, `title`, `description`, `created_at`, `updated_at`) VALUES
(116, 65, 'it', '84861-bg-header.jpg', '', '2016-06-28 07:45:54', '2016-06-28 07:45:54'),
(117, 66, 'it', '97814-bg-header.jpg', '', '2016-06-28 07:48:40', '2016-06-28 07:48:40'),
(118, 67, 'it', '40330-bg-header.jpg', '', '2016-06-28 07:48:56', '2016-06-28 07:48:56'),
(119, 68, 'it', '58490-bg-header.jpg', '', '2016-06-28 07:49:01', '2016-06-28 07:49:01'),
(120, 66, 'en', '', '', '2016-06-28 07:49:18', '2016-06-28 07:49:18'),
(121, 67, 'en', '', '', '2016-06-28 07:49:32', '2016-06-28 07:49:32'),
(122, 68, 'en', '', '', '2016-06-28 07:49:41', '2016-06-28 07:49:41'),
(123, 69, 'it', '90919-bg-header.jpg', '', '2016-06-29 11:13:03', '2016-06-29 11:13:03'),
(124, 70, 'it', '57396-bg-header.jpg', '', '2016-06-29 11:13:06', '2016-06-29 11:13:06'),
(125, 71, 'it', '70822-bg-header.jpg', '', '2016-06-29 11:51:08', '2016-06-29 11:51:08'),
(126, 72, 'it', '50598-image-3.jpg', '', '2016-06-30 10:08:36', '2016-06-30 10:08:36'),
(127, 73, 'it', '92355-image-1.jpg', '', '2016-06-30 10:08:40', '2016-06-30 10:08:40'),
(128, 73, 'en', '', '', '2016-06-30 10:08:50', '2016-06-30 10:08:50'),
(129, 74, 'it', '22895-bg-header.jpg', '', '2016-06-30 10:23:59', '2016-06-30 10:23:59'),
(130, 75, 'it', '23356-1-allestimento-cremona-disegno.jpg', '', '2016-07-01 04:49:01', '2016-07-01 04:49:01'),
(131, 76, 'it', '13429-3-allestimento-cremona.jpg', '', '2016-07-01 04:49:01', '2016-07-01 04:49:01'),
(132, 77, 'it', '80018-4-allestimento-cremona-ficus-exotica-designer-900-cm-green.jpg', '', '2016-07-01 04:49:02', '2016-07-01 04:49:02'),
(133, 78, 'it', '38616-2-allestimento-cremona.jpg', '', '2016-07-01 04:49:02', '2016-07-01 04:49:02'),
(134, 79, 'it', '73032-idromassaggio-1.jpg', '', '2016-07-01 05:37:29', '2016-07-01 05:37:29'),
(135, 80, 'it', '23833-idromassaggio-3.jpg', '', '2016-07-01 05:37:29', '2016-07-01 05:37:29'),
(136, 81, 'it', '71278-idromassaggio-2.jpg', '', '2016-07-01 05:37:30', '2016-07-01 05:37:30'),
(137, 82, 'it', '86991-on-sale-icon.jpg', '', '2016-08-04 10:46:39', '2016-08-04 10:46:39'),
(145, 90, 'it', '50175-ric.png', '', '2016-08-04 12:39:20', '2016-08-04 12:39:20'),
(146, 91, 'it', '90125-ric.png', '', '2016-08-04 12:43:28', '2016-08-04 12:43:28'),
(147, 92, 'it', '93572-ric.png', '', '2016-08-04 12:47:29', '2016-08-04 12:47:29'),
(148, 93, 'it', 'ric.png', '', '2016-08-04 12:48:47', '2016-08-04 12:48:47'),
(149, 94, 'it', '30256-ric.png', '', '2016-08-04 12:49:07', '2016-08-04 12:49:07'),
(150, 95, 'en', '30088-14230-casa-in-tronchi-tecnica-blockbau-val-bedretto-005.JPG', '', '2016-12-26 12:20:33', '2016-12-26 12:20:33'),
(151, 96, 'en', 'anisa6.jpg', '', '2016-12-26 12:21:43', '2016-12-26 12:21:43'),
(152, 97, 'en', 'anisa3.jpg', '', '2016-12-26 12:25:51', '2016-12-26 12:25:51'),
(153, 98, 'en', 'anisa3.jpg', '', '2017-01-03 15:35:11', '2017-01-03 15:35:11'),
(154, 99, 'en', 'anisa7.jpg', '', '2017-01-03 15:35:24', '2017-01-03 15:35:24');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_23_104442_create_products_table', 1),
('2015_08_23_123427_add_paid_to_products', 1),
('2015_08_27_133226_create_articles_table', 1),
('2015_08_28_101039_add_media_to_articles_table', 1),
('2015_08_29_151840_entrust_setup_tables', 1),
('2015_08_29_173518_add_is_active_to_users_table', 1),
('2015_12_06_191101_create_object_translation_table', 1),
('2015_12_07_161911_article_translations', 1),
('2015_12_20_135234_add_password_real_to_users_table', 1),
('2015_12_23_205357_create_socials_table', 2),
('2015_12_26_180448_create_hpsliders', 3),
('2015_12_28_173515_add_subtitle_intro_abstract_to_article_table', 4),
('2015_12_28_173917_add_subtitle_abstract_to_article_translations_table', 4),
('2016_01_03_185806_add_subtitle_intro_to_article_translations', 5),
('2016_01_03_190819_create_news_table', 6),
('2016_01_03_190932_create_news_translations_table', 7),
('2016_01_03_191050_create_media_table', 8),
('2016_01_03_191145_create_media_translations_table', 9),
('2016_01_09_213704_create_tags_table', 10),
('2016_01_23_141830_create_contact_table', 11),
('2016_01_23_141830_create_contacts_table', 12),
('2016_01_27_195512_create_adminusers_table', 12),
('2016_07_06_154403_create_newsletters_table', 13),
('2016_08_04_150202_create_adminuser_role', 14),
('2016_08_09_125134_create_countries_table', 15),
('2016_08_09_135031_create_settings_table', 16);

-- --------------------------------------------------------

--
-- Struttura della tabella `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `pub` tinyint(4) DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `pub` tinyint(4) DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `news_tag`
--

DROP TABLE IF EXISTS `news_tag`;
CREATE TABLE `news_tag` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `news_translations`
--

DROP TABLE IF EXISTS `news_translations`;
CREATE TABLE `news_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8_unicode_ci,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `pub` tinyint(4) DEFAULT '1',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `update_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `id` int(10) NOT NULL,
  `country_id` int(8) NOT NULL,
  `state_id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `provinces`
--

INSERT INTO `provinces` (`id`, `country_id`, `state_id`, `title`, `code`, `created_at`, `updated_at`) VALUES
(1, 109, 19, 'Agrigento', 'AG', '0000-00-00 00:00:00', '2016-09-30 15:19:55'),
(2, 109, 2, 'Alessandria', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 109, 11, 'Ancona', 'AN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 109, 1, 'Aosta', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 109, 5, 'Arezzo', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 109, 11, 'Ascoli Piceno', 'AP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 109, 2, 'Asti', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 109, 15, 'Avellino', 'AV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 109, 16, 'Bari', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 109, 6, 'Belluno', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 109, 15, 'Benevento', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 109, 7, 'Bergamo', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 109, 2, 'Biella', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 109, 8, 'Bologna', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 109, 12, 'Bolzano', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 109, 7, 'Brescia', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 109, 16, 'Brindisi', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 109, 20, 'Cagliari', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 109, 19, 'Caltanissetta', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 109, 14, 'Campobasso', 'CB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 109, 20, 'Carbonia-Iglesias', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 109, 15, 'Caserta', 'CE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 109, 19, 'Catania', 'CT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 109, 18, 'Catanzaro', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 109, 13, 'Chieti', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 109, 7, 'Como', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 109, 18, 'Cosenza', 'CS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 109, 7, 'Cremona', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 109, 18, 'Crotone', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 109, 2, 'Cuneo', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 109, 19, 'Enna', 'EN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 109, 8, 'Ferrara', 'FE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 109, 5, 'Firenze', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 109, 16, 'Foggia', 'FG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 109, 8, 'Forlì-Cesena', 'FC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 109, 9, 'Frosinone', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 109, 3, 'Genova', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 109, 4, 'Gorizia', 'GO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 109, 5, 'Grosseto', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 109, 3, 'Imperia', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 109, 14, 'Isernia', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 109, 3, 'La Spezia', 'SP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 109, 13, 'L\'Aquila', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 109, 9, 'Latina', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 109, 16, 'Lecce', 'LE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 109, 7, 'Lecco', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 109, 5, 'Livorno', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 109, 7, 'Lodi', 'LO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 109, 5, 'Lucca', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 109, 11, 'Macerata', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 109, 7, 'Mantova', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 109, 5, 'Massa-Carrara', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 109, 17, 'Matera', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 109, 19, 'Messina', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 109, 7, 'Milano', 'MI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 109, 8, 'Modena', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 109, 15, 'Napoli', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 109, 2, 'Novara', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 109, 20, 'Nuoro', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 109, 20, 'Olbia-Tempio', 'OT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 109, 20, 'Oristano', 'OR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 109, 6, 'Padova', 'PD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 109, 19, 'Palermo', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 109, 8, 'Parma', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 109, 7, 'Pavia', 'PV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 109, 10, 'Perugia', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 109, 11, 'Pesaro', 'PU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 109, 13, 'Pescara', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 109, 8, 'Piacenza', 'PC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 109, 5, 'Pisa', 'PI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 109, 5, 'Pistoia', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 109, 4, 'Pordenone', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 109, 17, 'Potenza', 'PZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 109, 5, 'Prato', 'PO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 109, 19, 'Ragusa', 'RG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 109, 8, 'Ravenna', 'RA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 109, 18, 'Reggio Calabria', 'RC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 109, 8, 'Reggio Emilia', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 109, 9, 'Rieti', 'RI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 109, 8, 'Rimini', 'RN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 109, 9, 'Roma', 'RM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 109, 6, 'Rovigo', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 109, 15, 'Salerno', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 109, 20, 'Medio Campidano', 'VS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 109, 20, 'Sassari', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 109, 3, 'Savona', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 109, 5, 'Siena', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 109, 19, 'Siracusa', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 109, 7, 'Sondrio', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 109, 16, 'Taranto', 'TA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 109, 13, 'Teramo', 'TE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 109, 10, 'Terni', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 109, 2, 'Torino', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 109, 20, 'Ogliastra', 'OG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 109, 19, 'Trapani', 'TP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 109, 12, 'Trento', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 109, 6, 'Treviso', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 109, 4, 'Trieste', 'TS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 109, 4, 'Udine', 'UD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 109, 7, 'Varese', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 109, 6, 'Venezia', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 109, 2, 'Verbano-Cusio-Ossola', 'VB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 109, 2, 'Vercelli', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 109, 6, 'Verona', 'VR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 109, 18, 'Vibo Valentia', 'VV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 109, 6, 'Vicenza', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 109, 9, 'Viterbo', 'VT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 109, 16, 'Barletta Andria Trani', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 109, 11, 'Fermo', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 109, 7, 'Monza e Brianza ', 'MB', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'su', 'super user', 'can do all', '2015-12-20 18:23:32', '2015-12-20 18:23:32'),
(2, 'admin', 'admin', 'admi  user', '2015-12-20 18:26:36', '2015-12-20 18:26:36'),
(3, 'user', 'user', 'user role', '2015-12-20 18:50:58', '2015-12-20 18:50:58'),
(7, 'Guest', 'guest', 'guest user', '2015-12-28 13:37:23', '2015-12-28 13:37:23');

-- --------------------------------------------------------

--
-- Struttura della tabella `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`, `domain`, `created_at`, `updated_at`) VALUES
(1, 'GA_CODE', 'UA-', 'Codice  google  analitycs', 'GA', '2016-08-09 12:01:24', '2016-08-09 12:28:06'),
(2, 'credits_url', 'http://www.magutti.com', 'url credits', 'webiste', '2016-08-09 12:29:05', '2016-12-29 14:35:06'),
(3, 'GA_MAP_API_KEY', '', 'Google maps apy key', 'GA', '2016-12-27 17:28:54', '2016-12-29 09:24:44');

-- --------------------------------------------------------

--
-- Struttura della tabella `socials`
--

DROP TABLE IF EXISTS `socials`;
CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `socials`
--

INSERT INTO `socials` (`id`, `title`, `description`, `icon`, `image`, `link`, `sort`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'facebook', NULL, 'fa-facebook', '', 'http://www.facebook.com', 10, 1, 0, '2016-08-09 12:50:01', '2016-08-09 10:50:01'),
(2, 'Twitter', '', 'fa-twitter', '', 'http://www.twitter.com', 20, 1, 0, '2016-06-28 12:58:53', '2016-06-28 10:58:53'),
(3, 'Linkedin', '', 'fa-linkedin', '', 'http://www.linkedin.com', 30, 1, 0, '2016-06-28 12:58:59', '2016-06-28 10:58:59');

-- --------------------------------------------------------

--
-- Struttura della tabella `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` int(10) NOT NULL,
  `country_id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zone` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `states`
--

INSERT INTO `states` (`id`, `country_id`, `title`, `zone`, `created_at`, `updated_at`) VALUES
(1, 109, 'Valle d\'Aosta', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 109, 'Piemonte', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 109, 'Liguria', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 109, 'Friuli Venezia Giulia', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 109, 'Toscana', 'center', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 109, 'Veneto', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 109, 'Lombardia', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 109, 'Emilia Romagna', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 109, 'Lazio', 'center', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 109, 'Umbria', 'center', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 109, 'Marche', 'center', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 109, 'Trentino Alto Adige', 'north', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 109, 'Abruzzo', 'south', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 109, 'Molise', 'south', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 109, 'Campania', 'south', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 109, 'Puglia', 'south', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 109, 'Basilicata', 'south', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 109, 'Calabria', 'south', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 109, 'Sicilia', 'south', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 109, 'Sardegna', 'center', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `update_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, '', 'tag', 0, 0, '2016-12-27 18:07:28', '2016-12-27 17:07:28'),
(2, '', 'php', 0, 0, '2016-12-27 17:07:15', '2016-12-27 17:07:15'),
(3, '', 'laravel', 0, 0, '2016-12-27 17:08:28', '2016-12-27 17:08:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `tag_translations`
--

DROP TABLE IF EXISTS `tag_translations`;
CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Tag', '2016-12-27 18:07:07', '2016-12-27 17:07:07'),
(2, 1, 'it', 'tag', '2016-12-27 14:46:45', '2016-12-27 13:46:45'),
(3, 2, 'en', 'PHP', '2016-12-27 17:07:15', '2016-12-27 17:07:15'),
(4, 2, 'it', '', '2016-12-27 17:07:15', '2016-12-27 17:07:15'),
(5, 3, 'en', 'laravel', '2016-12-27 17:08:28', '2016-12-27 17:08:28'),
(6, 3, 'it', '', '2016-12-27 17:08:28', '2016-12-27 17:08:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `real_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indici per le tabelle `adminuser_role`
--
ALTER TABLE `adminuser_role`
  ADD PRIMARY KEY (`adminuser_id`,`role_id`),
  ADD KEY `adminuser_role_role_id_foreign` (`role_id`);

--
-- Indici per le tabelle `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `article_translations`
--
ALTER TABLE `article_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_translations_article_id_locale_unique` (`article_id`,`locale`),
  ADD KEY `article_translations_locale_index` (`locale`);

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indici per le tabelle `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `categories_translations_locale_index` (`locale`);

--
-- Indici per le tabelle `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `domain_translations`
--
ALTER TABLE `domain_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_translations_domain_id_locale_unique` (`domain_id`,`locale`),
  ADD KEY `domains_translations_locale_index` (`locale`);

--
-- Indici per le tabelle `hpsliders`
--
ALTER TABLE `hpsliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hpsliders_slug_unique` (`slug`);

--
-- Indici per le tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indici per le tabelle `media_translations`
--
ALTER TABLE `media_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_translations_media_id_locale_unique` (`media_id`,`locale`),
  ADD KEY `media_translations_locale_index` (`locale`);

--
-- Indici per le tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `news_tag`
--
ALTER TABLE `news_tag`
  ADD KEY `news_tag_news_id_index` (`news_id`),
  ADD KEY `news_tag_tag_id_index` (`tag_id`);

--
-- Indici per le tabelle `news_translations`
--
ALTER TABLE `news_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_translations_news_id_locale_unique` (`news_id`,`locale`),
  ADD KEY `news_translations_locale_index` (`locale`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indici per le tabelle `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indici per le tabelle `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indici per le tabelle `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_translations_product_id_locale_unique` (`product_id`,`locale`),
  ADD KEY `products_translations_locale_index` (`locale`);

--
-- Indici per le tabelle `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`state_id`),
  ADD KEY `id_country` (`country_id`);

--
-- Indici per le tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indici per le tabelle `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indici per le tabelle `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`),
  ADD KEY `settings_id_index` (`id`);

--
-- Indici per le tabelle `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_country` (`country_id`);

--
-- Indici per le tabelle `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  ADD KEY `tag_translations_locale_index` (`locale`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT per la tabella `article_translations`
--
ALTER TABLE `article_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT per la tabella `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT per la tabella `domain_translations`
--
ALTER TABLE `domain_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT per la tabella `hpsliders`
--
ALTER TABLE `hpsliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT per la tabella `media_translations`
--
ALTER TABLE `media_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT per la tabella `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `news_translations`
--
ALTER TABLE `news_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT per la tabella `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `adminuser_role`
--
ALTER TABLE `adminuser_role`
  ADD CONSTRAINT `adminuser_role_adminuser_id_foreign` FOREIGN KEY (`adminuser_id`) REFERENCES `adminusers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adminuser_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `article_translations`
--
ALTER TABLE `article_translations`
  ADD CONSTRAINT `article_translations_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `domain_translations`
--
ALTER TABLE `domain_translations`
  ADD CONSTRAINT `domains_translations_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `media_translations`
--
ALTER TABLE `media_translations`
  ADD CONSTRAINT `media_translations_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `news_tag`
--
ALTER TABLE `news_tag`
  ADD CONSTRAINT `news_tag_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `news_translations`
--
ALTER TABLE `news_translations`
  ADD CONSTRAINT `news_translations_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `products_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
