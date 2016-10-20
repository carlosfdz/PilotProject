-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2016 a las 20:22:20
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sakila`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Willl Smith', '2016-10-12 03:29:01', '2016-10-12 03:53:33', '2016-10-12 03:53:33'),
(2, 'Will Smith', '2016-10-12 03:30:36', '2016-10-12 03:57:36', NULL),
(3, 'Pancho Villa', '2016-10-12 03:35:02', '2016-10-12 03:35:02', NULL),
(4, 'Carlos Fernandez', '2016-10-12 03:58:14', '2016-10-12 03:58:14', NULL),
(5, 'Daniel Noriega', '2016-10-13 11:28:31', '2016-10-13 11:28:31', NULL),
(6, 'Gato Botas', '2016-10-13 14:52:06', '2016-10-13 14:52:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor_film`
--

CREATE TABLE `actor_film` (
  `actor_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `postal_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `district`, `city_id`, `postal_code`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Calle 1, Colonia Centro', 'Córdoba', 601, '94500', '2711514355', '2016-09-15 11:44:32', '2016-09-15 11:44:32', NULL),
(2, 'Av. 9-11, Colonia Centro', 'Córdoba', 601, '94500', '2711514350', '2016-09-15 11:44:32', '2016-09-15 11:44:32', NULL),
(4, 'CALLE 3, CENTRO', 'CORDOBA', 601, '94510', '2711280000', '2016-10-14 22:34:20', '2016-10-14 22:34:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Drama', '2016-09-22 06:09:26', '2016-09-27 09:02:01', NULL),
(2, 'Aventura', '2016-09-22 06:09:26', '2016-09-27 05:56:37', NULL),
(3, 'Musical', '2016-09-22 06:09:26', '2016-09-22 06:09:26', NULL),
(4, 'Accion', '2016-09-22 06:09:27', '2016-09-22 06:09:27', NULL),
(5, 'Terror', '2016-09-22 06:09:27', '2016-09-22 06:09:27', NULL),
(6, 'Comedia', '2016-09-22 06:09:27', '2016-09-22 06:09:27', NULL),
(7, 'Suspenso', '2016-09-22 06:09:27', '2016-09-22 06:09:27', NULL),
(8, 'Belico', '2016-09-22 06:09:27', '2016-09-22 06:09:27', NULL),
(9, 'Ciencia Ficcion', '2016-09-26 08:39:39', '2016-09-26 08:39:39', NULL),
(10, 'Deportes', '2016-09-26 10:25:45', '2016-09-26 10:25:45', NULL),
(12, 'Historico', '2016-09-26 10:28:48', '2016-09-26 10:28:48', NULL),
(13, 'Bibliografica', '2016-09-26 10:33:20', '2016-09-26 10:33:20', NULL),
(14, 'Prueba', '2016-09-26 10:37:09', '2016-09-27 01:47:20', '2016-09-27 01:47:20'),
(15, 'Probando1-2-3', '2016-09-26 10:38:21', '2016-10-14 18:07:47', '2016-10-14 18:07:47'),
(16, 'Prueba3', '2016-09-26 10:42:41', '2016-10-14 18:07:50', '2016-10-14 18:07:50'),
(17, 'Prueba4', '2016-09-26 10:42:59', '2016-10-14 18:07:52', '2016-10-14 18:07:52'),
(18, 'Pruebas', '2016-09-26 10:44:10', '2016-09-27 01:58:16', '2016-09-27 01:58:16'),
(19, 'jhagsjhga', '2016-09-26 11:36:28', '2016-09-27 01:47:03', '2016-09-27 01:47:03'),
(20, 'lkjkljlk', '2016-09-26 11:37:40', '2016-09-27 01:45:20', '2016-09-27 01:45:20'),
(21, 'probando123probando', '2016-09-27 02:11:17', '2016-10-14 18:07:54', '2016-10-14 18:07:54'),
(22, 'Pdskflksj', '2016-09-27 09:23:36', '2016-10-14 18:07:41', '2016-10-14 18:07:41'),
(23, 'Documental', '2016-10-13 11:50:09', '2016-10-13 11:50:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `city`, `country_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A Corua (La Corua)', 87, '0000-00-00 00:00:00', NULL, NULL),
(2, 'Abha', 82, NULL, NULL, NULL),
(3, 'Abu Dhabi', 101, NULL, NULL, NULL),
(4, 'Acua', 60, NULL, NULL, NULL),
(5, 'Adana', 97, NULL, NULL, NULL),
(6, 'Addis Abeba', 31, NULL, NULL, NULL),
(7, 'Aden', 107, NULL, NULL, NULL),
(8, 'Adoni', 44, NULL, NULL, NULL),
(9, 'Ahmadnagar', 44, NULL, NULL, NULL),
(10, 'Akishima', 50, NULL, NULL, NULL),
(11, 'Akron', 103, NULL, NULL, NULL),
(12, 'al-Ayn', 101, NULL, NULL, NULL),
(13, 'al-Hawiya', 82, NULL, NULL, NULL),
(14, 'al-Manama', 11, NULL, NULL, NULL),
(15, 'al-Qadarif', 89, NULL, NULL, NULL),
(16, 'al-Qatif', 82, NULL, NULL, NULL),
(17, 'Alessandria', 49, NULL, NULL, NULL),
(18, 'Allappuzha (Alleppey)', 44, NULL, NULL, NULL),
(19, 'Allende', 60, NULL, NULL, NULL),
(20, 'Almirante Brown', 6, NULL, NULL, NULL),
(21, 'Alvorada', 15, NULL, NULL, NULL),
(22, 'Ambattur', 44, NULL, NULL, NULL),
(23, 'Amersfoort', 67, NULL, NULL, NULL),
(24, 'Amroha', 44, NULL, NULL, NULL),
(25, 'Angra dos Reis', 15, NULL, NULL, NULL),
(26, 'Anpolis', 15, NULL, NULL, NULL),
(27, 'Antofagasta', 22, NULL, NULL, NULL),
(28, 'Aparecida de Goinia', 15, NULL, NULL, NULL),
(29, 'Apeldoorn', 67, NULL, NULL, NULL),
(30, 'Araatuba', 15, NULL, NULL, NULL),
(31, 'Arak', 46, NULL, NULL, NULL),
(32, 'Arecibo', 77, NULL, NULL, NULL),
(33, 'Arlington', 103, NULL, NULL, NULL),
(34, 'Ashdod', 48, NULL, NULL, NULL),
(35, 'Ashgabat', 98, NULL, NULL, NULL),
(36, 'Ashqelon', 48, NULL, NULL, NULL),
(37, 'Asuncin', 73, NULL, NULL, NULL),
(38, 'Athenai', 39, NULL, NULL, NULL),
(39, 'Atinsk', 80, NULL, NULL, NULL),
(40, 'Atlixco', 60, NULL, NULL, NULL),
(41, 'Augusta-Richmond County', 103, NULL, NULL, NULL),
(42, 'Aurora', 103, NULL, NULL, NULL),
(43, 'Avellaneda', 6, NULL, NULL, NULL),
(44, 'Bag', 15, NULL, NULL, NULL),
(45, 'Baha Blanca', 6, NULL, NULL, NULL),
(46, 'Baicheng', 23, NULL, NULL, NULL),
(47, 'Baiyin', 23, NULL, NULL, NULL),
(48, 'Baku', 10, NULL, NULL, NULL),
(49, 'Balaiha', 80, NULL, NULL, NULL),
(50, 'Balikesir', 97, NULL, NULL, NULL),
(51, 'Balurghat', 44, NULL, NULL, NULL),
(52, 'Bamenda', 19, NULL, NULL, NULL),
(53, 'Bandar Seri Begawan', 16, NULL, NULL, NULL),
(54, 'Banjul', 37, NULL, NULL, NULL),
(55, 'Barcelona', 104, NULL, NULL, NULL),
(56, 'Basel', 91, NULL, NULL, NULL),
(57, 'Bat Yam', 48, NULL, NULL, NULL),
(58, 'Batman', 97, NULL, NULL, NULL),
(59, 'Batna', 2, NULL, NULL, NULL),
(60, 'Battambang', 18, NULL, NULL, NULL),
(61, 'Baybay', 75, NULL, NULL, NULL),
(62, 'Bayugan', 75, NULL, NULL, NULL),
(63, 'Bchar', 2, NULL, NULL, NULL),
(64, 'Beira', 63, NULL, NULL, NULL),
(65, 'Bellevue', 103, NULL, NULL, NULL),
(66, 'Belm', 15, NULL, NULL, NULL),
(67, 'Benguela', 4, NULL, NULL, NULL),
(68, 'Beni-Mellal', 62, NULL, NULL, NULL),
(69, 'Benin City', 69, NULL, NULL, NULL),
(70, 'Bergamo', 49, NULL, NULL, NULL),
(71, 'Berhampore (Baharampur)', 44, NULL, NULL, NULL),
(72, 'Bern', 91, NULL, NULL, NULL),
(73, 'Bhavnagar', 44, NULL, NULL, NULL),
(74, 'Bhilwara', 44, NULL, NULL, NULL),
(75, 'Bhimavaram', 44, NULL, NULL, NULL),
(76, 'Bhopal', 44, NULL, NULL, NULL),
(77, 'Bhusawal', 44, NULL, NULL, NULL),
(78, 'Bijapur', 44, NULL, NULL, NULL),
(79, 'Bilbays', 29, NULL, NULL, NULL),
(80, 'Binzhou', 23, NULL, NULL, NULL),
(81, 'Birgunj', 66, NULL, NULL, NULL),
(82, 'Bislig', 75, NULL, NULL, NULL),
(83, 'Blumenau', 15, NULL, NULL, NULL),
(84, 'Boa Vista', 15, NULL, NULL, NULL),
(85, 'Boksburg', 85, NULL, NULL, NULL),
(86, 'Botosani', 78, NULL, NULL, NULL),
(87, 'Botshabelo', 85, NULL, NULL, NULL),
(88, 'Bradford', 102, NULL, NULL, NULL),
(89, 'Braslia', 15, NULL, NULL, NULL),
(90, 'Bratislava', 84, NULL, NULL, NULL),
(91, 'Brescia', 49, NULL, NULL, NULL),
(92, 'Brest', 34, NULL, NULL, NULL),
(93, 'Brindisi', 49, NULL, NULL, NULL),
(94, 'Brockton', 103, NULL, NULL, NULL),
(95, 'Bucuresti', 78, NULL, NULL, NULL),
(96, 'Buenaventura', 24, NULL, NULL, NULL),
(97, 'Bydgoszcz', 76, NULL, NULL, NULL),
(98, 'Cabuyao', 75, NULL, NULL, NULL),
(99, 'Callao', 74, NULL, NULL, NULL),
(100, 'Cam Ranh', 105, NULL, NULL, NULL),
(101, 'Cape Coral', 103, NULL, NULL, NULL),
(102, 'Caracas', 104, NULL, NULL, NULL),
(103, 'Carmen', 60, NULL, NULL, NULL),
(104, 'Cavite', 75, NULL, NULL, NULL),
(105, 'Cayenne', 35, NULL, NULL, NULL),
(106, 'Celaya', 60, NULL, NULL, NULL),
(107, 'Chandrapur', 44, NULL, NULL, NULL),
(108, 'Changhwa', 92, NULL, NULL, NULL),
(109, 'Changzhou', 23, NULL, NULL, NULL),
(110, 'Chapra', 44, NULL, NULL, NULL),
(111, 'Charlotte Amalie', 106, NULL, NULL, NULL),
(112, 'Chatsworth', 85, NULL, NULL, NULL),
(113, 'Cheju', 86, NULL, NULL, NULL),
(114, 'Chiayi', 92, NULL, NULL, NULL),
(115, 'Chisinau', 61, NULL, NULL, NULL),
(116, 'Chungho', 92, NULL, NULL, NULL),
(117, 'Cianjur', 45, NULL, NULL, NULL),
(118, 'Ciomas', 45, NULL, NULL, NULL),
(119, 'Ciparay', 45, NULL, NULL, NULL),
(120, 'Citrus Heights', 103, NULL, NULL, NULL),
(121, 'Citt del Vaticano', 41, NULL, NULL, NULL),
(122, 'Ciudad del Este', 73, NULL, NULL, NULL),
(123, 'Clarksville', 103, NULL, NULL, NULL),
(124, 'Coacalco de Berriozbal', 60, NULL, NULL, NULL),
(125, 'Coatzacoalcos', 60, NULL, NULL, NULL),
(126, 'Compton', 103, NULL, NULL, NULL),
(127, 'Coquimbo', 22, NULL, NULL, NULL),
(128, 'Crdoba', 6, NULL, NULL, NULL),
(129, 'Cuauhtmoc', 60, NULL, NULL, NULL),
(130, 'Cuautla', 60, NULL, NULL, NULL),
(131, 'Cuernavaca', 60, NULL, NULL, NULL),
(132, 'Cuman', 104, NULL, NULL, NULL),
(133, 'Czestochowa', 76, NULL, NULL, NULL),
(134, 'Dadu', 72, NULL, NULL, NULL),
(135, 'Dallas', 103, NULL, NULL, NULL),
(136, 'Datong', 23, NULL, NULL, NULL),
(137, 'Daugavpils', 54, NULL, NULL, NULL),
(138, 'Davao', 75, NULL, NULL, NULL),
(139, 'Daxian', 23, NULL, NULL, NULL),
(140, 'Dayton', 103, NULL, NULL, NULL),
(141, 'Deba Habe', 69, NULL, NULL, NULL),
(142, 'Denizli', 97, NULL, NULL, NULL),
(143, 'Dhaka', 12, NULL, NULL, NULL),
(144, 'Dhule (Dhulia)', 44, NULL, NULL, NULL),
(145, 'Dongying', 23, NULL, NULL, NULL),
(146, 'Donostia-San Sebastin', 87, NULL, NULL, NULL),
(147, 'Dos Quebradas', 24, NULL, NULL, NULL),
(148, 'Duisburg', 38, NULL, NULL, NULL),
(149, 'Dundee', 102, NULL, NULL, NULL),
(150, 'Dzerzinsk', 80, NULL, NULL, NULL),
(151, 'Ede', 67, NULL, NULL, NULL),
(152, 'Effon-Alaiye', 69, NULL, NULL, NULL),
(153, 'El Alto', 14, NULL, NULL, NULL),
(154, 'El Fuerte', 60, NULL, NULL, NULL),
(155, 'El Monte', 103, NULL, NULL, NULL),
(156, 'Elista', 80, NULL, NULL, NULL),
(157, 'Emeishan', 23, NULL, NULL, NULL),
(158, 'Emmen', 67, NULL, NULL, NULL),
(159, 'Enshi', 23, NULL, NULL, NULL),
(160, 'Erlangen', 38, NULL, NULL, NULL),
(161, 'Escobar', 6, NULL, NULL, NULL),
(162, 'Esfahan', 46, NULL, NULL, NULL),
(163, 'Eskisehir', 97, NULL, NULL, NULL),
(164, 'Etawah', 44, NULL, NULL, NULL),
(165, 'Ezeiza', 6, NULL, NULL, NULL),
(166, 'Ezhou', 23, NULL, NULL, NULL),
(167, 'Faaa', 36, NULL, NULL, NULL),
(168, 'Fengshan', 92, NULL, NULL, NULL),
(169, 'Firozabad', 44, NULL, NULL, NULL),
(170, 'Florencia', 24, NULL, NULL, NULL),
(171, 'Fontana', 103, NULL, NULL, NULL),
(172, 'Fukuyama', 50, NULL, NULL, NULL),
(173, 'Funafuti', 99, NULL, NULL, NULL),
(174, 'Fuyu', 23, NULL, NULL, NULL),
(175, 'Fuzhou', 23, NULL, NULL, NULL),
(176, 'Gandhinagar', 44, NULL, NULL, NULL),
(177, 'Garden Grove', 103, NULL, NULL, NULL),
(178, 'Garland', 103, NULL, NULL, NULL),
(179, 'Gatineau', 20, NULL, NULL, NULL),
(180, 'Gaziantep', 97, NULL, NULL, NULL),
(181, 'Gijn', 87, NULL, NULL, NULL),
(182, 'Gingoog', 75, NULL, NULL, NULL),
(183, 'Goinia', 15, NULL, NULL, NULL),
(184, 'Gorontalo', 45, NULL, NULL, NULL),
(185, 'Grand Prairie', 103, NULL, NULL, NULL),
(186, 'Graz', 9, NULL, NULL, NULL),
(187, 'Greensboro', 103, NULL, NULL, NULL),
(188, 'Guadalajara', 60, NULL, NULL, NULL),
(189, 'Guaruj', 15, NULL, NULL, NULL),
(190, 'guas Lindas de Gois', 15, NULL, NULL, NULL),
(191, 'Gulbarga', 44, NULL, NULL, NULL),
(192, 'Hagonoy', 75, NULL, NULL, NULL),
(193, 'Haining', 23, NULL, NULL, NULL),
(194, 'Haiphong', 105, NULL, NULL, NULL),
(195, 'Haldia', 44, NULL, NULL, NULL),
(196, 'Halifax', 20, NULL, NULL, NULL),
(197, 'Halisahar', 44, NULL, NULL, NULL),
(198, 'Halle/Saale', 38, NULL, NULL, NULL),
(199, 'Hami', 23, NULL, NULL, NULL),
(200, 'Hamilton', 68, NULL, NULL, NULL),
(201, 'Hanoi', 105, NULL, NULL, NULL),
(202, 'Hidalgo', 60, NULL, NULL, NULL),
(203, 'Higashiosaka', 50, NULL, NULL, NULL),
(204, 'Hino', 50, NULL, NULL, NULL),
(205, 'Hiroshima', 50, NULL, NULL, NULL),
(206, 'Hodeida', 107, NULL, NULL, NULL),
(207, 'Hohhot', 23, NULL, NULL, NULL),
(208, 'Hoshiarpur', 44, NULL, NULL, NULL),
(209, 'Hsichuh', 92, NULL, NULL, NULL),
(210, 'Huaian', 23, NULL, NULL, NULL),
(211, 'Hubli-Dharwad', 44, NULL, NULL, NULL),
(212, 'Huejutla de Reyes', 60, NULL, NULL, NULL),
(213, 'Huixquilucan', 60, NULL, NULL, NULL),
(214, 'Hunuco', 74, NULL, NULL, NULL),
(215, 'Ibirit', 15, NULL, NULL, NULL),
(216, 'Idfu', 29, NULL, NULL, NULL),
(217, 'Ife', 69, NULL, NULL, NULL),
(218, 'Ikerre', 69, NULL, NULL, NULL),
(219, 'Iligan', 75, NULL, NULL, NULL),
(220, 'Ilorin', 69, NULL, NULL, NULL),
(221, 'Imus', 75, NULL, NULL, NULL),
(222, 'Inegl', 97, NULL, NULL, NULL),
(223, 'Ipoh', 59, NULL, NULL, NULL),
(224, 'Isesaki', 50, NULL, NULL, NULL),
(225, 'Ivanovo', 80, NULL, NULL, NULL),
(226, 'Iwaki', 50, NULL, NULL, NULL),
(227, 'Iwakuni', 50, NULL, NULL, NULL),
(228, 'Iwatsuki', 50, NULL, NULL, NULL),
(229, 'Izumisano', 50, NULL, NULL, NULL),
(230, 'Jaffna', 88, NULL, NULL, NULL),
(231, 'Jaipur', 44, NULL, NULL, NULL),
(232, 'Jakarta', 45, NULL, NULL, NULL),
(233, 'Jalib al-Shuyukh', 53, NULL, NULL, NULL),
(234, 'Jamalpur', 12, NULL, NULL, NULL),
(235, 'Jaroslavl', 80, NULL, NULL, NULL),
(236, 'Jastrzebie-Zdrj', 76, NULL, NULL, NULL),
(237, 'Jedda', 82, NULL, NULL, NULL),
(238, 'Jelets', 80, NULL, NULL, NULL),
(239, 'Jhansi', 44, NULL, NULL, NULL),
(240, 'Jinchang', 23, NULL, NULL, NULL),
(241, 'Jining', 23, NULL, NULL, NULL),
(242, 'Jinzhou', 23, NULL, NULL, NULL),
(243, 'Jodhpur', 44, NULL, NULL, NULL),
(244, 'Johannesburg', 85, NULL, NULL, NULL),
(245, 'Joliet', 103, NULL, NULL, NULL),
(246, 'Jos Azueta', 60, NULL, NULL, NULL),
(247, 'Juazeiro do Norte', 15, NULL, NULL, NULL),
(248, 'Juiz de Fora', 15, NULL, NULL, NULL),
(249, 'Junan', 23, NULL, NULL, NULL),
(250, 'Jurez', 60, NULL, NULL, NULL),
(251, 'Kabul', 1, NULL, NULL, NULL),
(252, 'Kaduna', 69, NULL, NULL, NULL),
(253, 'Kakamigahara', 50, NULL, NULL, NULL),
(254, 'Kaliningrad', 80, NULL, NULL, NULL),
(255, 'Kalisz', 76, NULL, NULL, NULL),
(256, 'Kamakura', 50, NULL, NULL, NULL),
(257, 'Kamarhati', 44, NULL, NULL, NULL),
(258, 'Kamjanets-Podilskyi', 100, NULL, NULL, NULL),
(259, 'Kamyin', 80, NULL, NULL, NULL),
(260, 'Kanazawa', 50, NULL, NULL, NULL),
(261, 'Kanchrapara', 44, NULL, NULL, NULL),
(262, 'Kansas City', 103, NULL, NULL, NULL),
(263, 'Karnal', 44, NULL, NULL, NULL),
(264, 'Katihar', 44, NULL, NULL, NULL),
(265, 'Kermanshah', 46, NULL, NULL, NULL),
(266, 'Kilis', 97, NULL, NULL, NULL),
(267, 'Kimberley', 85, NULL, NULL, NULL),
(268, 'Kimchon', 86, NULL, NULL, NULL),
(269, 'Kingstown', 81, NULL, NULL, NULL),
(270, 'Kirovo-Tepetsk', 80, NULL, NULL, NULL),
(271, 'Kisumu', 52, NULL, NULL, NULL),
(272, 'Kitwe', 109, NULL, NULL, NULL),
(273, 'Klerksdorp', 85, NULL, NULL, NULL),
(274, 'Kolpino', 80, NULL, NULL, NULL),
(275, 'Konotop', 100, NULL, NULL, NULL),
(276, 'Koriyama', 50, NULL, NULL, NULL),
(277, 'Korla', 23, NULL, NULL, NULL),
(278, 'Korolev', 80, NULL, NULL, NULL),
(279, 'Kowloon and New Kowloon', 42, NULL, NULL, NULL),
(280, 'Kragujevac', 108, NULL, NULL, NULL),
(281, 'Ktahya', 97, NULL, NULL, NULL),
(282, 'Kuching', 59, NULL, NULL, NULL),
(283, 'Kumbakonam', 44, NULL, NULL, NULL),
(284, 'Kurashiki', 50, NULL, NULL, NULL),
(285, 'Kurgan', 80, NULL, NULL, NULL),
(286, 'Kursk', 80, NULL, NULL, NULL),
(287, 'Kuwana', 50, NULL, NULL, NULL),
(288, 'La Paz', 60, NULL, NULL, NULL),
(289, 'La Plata', 6, NULL, NULL, NULL),
(290, 'La Romana', 27, NULL, NULL, NULL),
(291, 'Laiwu', 23, NULL, NULL, NULL),
(292, 'Lancaster', 103, NULL, NULL, NULL),
(293, 'Laohekou', 23, NULL, NULL, NULL),
(294, 'Lapu-Lapu', 75, NULL, NULL, NULL),
(295, 'Laredo', 103, NULL, NULL, NULL),
(296, 'Lausanne', 91, NULL, NULL, NULL),
(297, 'Le Mans', 34, NULL, NULL, NULL),
(298, 'Lengshuijiang', 23, NULL, NULL, NULL),
(299, 'Leshan', 23, NULL, NULL, NULL),
(300, 'Lethbridge', 20, NULL, NULL, NULL),
(301, 'Lhokseumawe', 45, NULL, NULL, NULL),
(302, 'Liaocheng', 23, NULL, NULL, NULL),
(303, 'Liepaja', 54, NULL, NULL, NULL),
(304, 'Lilongwe', 58, NULL, NULL, NULL),
(305, 'Lima', 74, NULL, NULL, NULL),
(306, 'Lincoln', 103, NULL, NULL, NULL),
(307, 'Linz', 9, NULL, NULL, NULL),
(308, 'Lipetsk', 80, NULL, NULL, NULL),
(309, 'Livorno', 49, NULL, NULL, NULL),
(310, 'Ljubertsy', 80, NULL, NULL, NULL),
(311, 'Loja', 28, NULL, NULL, NULL),
(312, 'London', 102, NULL, NULL, NULL),
(313, 'London', 20, NULL, NULL, NULL),
(314, 'Lublin', 76, NULL, NULL, NULL),
(315, 'Lubumbashi', 25, NULL, NULL, NULL),
(316, 'Lungtan', 92, NULL, NULL, NULL),
(317, 'Luzinia', 15, NULL, NULL, NULL),
(318, 'Madiun', 45, NULL, NULL, NULL),
(319, 'Mahajanga', 57, NULL, NULL, NULL),
(320, 'Maikop', 80, NULL, NULL, NULL),
(321, 'Malm', 90, NULL, NULL, NULL),
(322, 'Manchester', 103, NULL, NULL, NULL),
(323, 'Mandaluyong', 75, NULL, NULL, NULL),
(324, 'Mandi Bahauddin', 72, NULL, NULL, NULL),
(325, 'Mannheim', 38, NULL, NULL, NULL),
(326, 'Maracabo', 104, NULL, NULL, NULL),
(327, 'Mardan', 72, NULL, NULL, NULL),
(328, 'Maring', 15, NULL, NULL, NULL),
(329, 'Masqat', 71, NULL, NULL, NULL),
(330, 'Matamoros', 60, NULL, NULL, NULL),
(331, 'Matsue', 50, NULL, NULL, NULL),
(332, 'Meixian', 23, NULL, NULL, NULL),
(333, 'Memphis', 103, NULL, NULL, NULL),
(334, 'Merlo', 6, NULL, NULL, NULL),
(335, 'Mexicali', 60, NULL, NULL, NULL),
(336, 'Miraj', 44, NULL, NULL, NULL),
(337, 'Mit Ghamr', 29, NULL, NULL, NULL),
(338, 'Miyakonojo', 50, NULL, NULL, NULL),
(339, 'Mogiljov', 13, NULL, NULL, NULL),
(340, 'Molodetno', 13, NULL, NULL, NULL),
(341, 'Monclova', 60, NULL, NULL, NULL),
(342, 'Monywa', 64, NULL, NULL, NULL),
(343, 'Moscow', 80, NULL, NULL, NULL),
(344, 'Mosul', 47, NULL, NULL, NULL),
(345, 'Mukateve', 100, NULL, NULL, NULL),
(346, 'Munger (Monghyr)', 44, NULL, NULL, NULL),
(347, 'Mwanza', 93, NULL, NULL, NULL),
(348, 'Mwene-Ditu', 25, NULL, NULL, NULL),
(349, 'Myingyan', 64, NULL, NULL, NULL),
(350, 'Mysore', 44, NULL, NULL, NULL),
(351, 'Naala-Porto', 63, NULL, NULL, NULL),
(352, 'Nabereznyje Telny', 80, NULL, NULL, NULL),
(353, 'Nador', 62, NULL, NULL, NULL),
(354, 'Nagaon', 44, NULL, NULL, NULL),
(355, 'Nagareyama', 50, NULL, NULL, NULL),
(356, 'Najafabad', 46, NULL, NULL, NULL),
(357, 'Naju', 86, NULL, NULL, NULL),
(358, 'Nakhon Sawan', 94, NULL, NULL, NULL),
(359, 'Nam Dinh', 105, NULL, NULL, NULL),
(360, 'Namibe', 4, NULL, NULL, NULL),
(361, 'Nantou', 92, NULL, NULL, NULL),
(362, 'Nanyang', 23, NULL, NULL, NULL),
(363, 'NDjamna', 21, NULL, NULL, NULL),
(364, 'Newcastle', 85, NULL, NULL, NULL),
(365, 'Nezahualcyotl', 60, NULL, NULL, NULL),
(366, 'Nha Trang', 105, NULL, NULL, NULL),
(367, 'Niznekamsk', 80, NULL, NULL, NULL),
(368, 'Novi Sad', 108, NULL, NULL, NULL),
(369, 'Novoterkassk', 80, NULL, NULL, NULL),
(370, 'Nukualofa', 95, NULL, NULL, NULL),
(371, 'Nuuk', 40, NULL, NULL, NULL),
(372, 'Nyeri', 52, NULL, NULL, NULL),
(373, 'Ocumare del Tuy', 104, NULL, NULL, NULL),
(374, 'Ogbomosho', 69, NULL, NULL, NULL),
(375, 'Okara', 72, NULL, NULL, NULL),
(376, 'Okayama', 50, NULL, NULL, NULL),
(377, 'Okinawa', 50, NULL, NULL, NULL),
(378, 'Olomouc', 26, NULL, NULL, NULL),
(379, 'Omdurman', 89, NULL, NULL, NULL),
(380, 'Omiya', 50, NULL, NULL, NULL),
(381, 'Ondo', 69, NULL, NULL, NULL),
(382, 'Onomichi', 50, NULL, NULL, NULL),
(383, 'Oshawa', 20, NULL, NULL, NULL),
(384, 'Osmaniye', 97, NULL, NULL, NULL),
(385, 'ostka', 100, NULL, NULL, NULL),
(386, 'Otsu', 50, NULL, NULL, NULL),
(387, 'Oulu', 33, NULL, NULL, NULL),
(388, 'Ourense (Orense)', 87, NULL, NULL, NULL),
(389, 'Owo', 69, NULL, NULL, NULL),
(390, 'Oyo', 69, NULL, NULL, NULL),
(391, 'Ozamis', 75, NULL, NULL, NULL),
(392, 'Paarl', 85, NULL, NULL, NULL),
(393, 'Pachuca de Soto', 60, NULL, NULL, NULL),
(394, 'Pak Kret', 94, NULL, NULL, NULL),
(395, 'Palghat (Palakkad)', 44, NULL, NULL, NULL),
(396, 'Pangkal Pinang', 45, NULL, NULL, NULL),
(397, 'Papeete', 36, NULL, NULL, NULL),
(398, 'Parbhani', 44, NULL, NULL, NULL),
(399, 'Pathankot', 44, NULL, NULL, NULL),
(400, 'Patiala', 44, NULL, NULL, NULL),
(401, 'Patras', 39, NULL, NULL, NULL),
(402, 'Pavlodar', 51, NULL, NULL, NULL),
(403, 'Pemalang', 45, NULL, NULL, NULL),
(404, 'Peoria', 103, NULL, NULL, NULL),
(405, 'Pereira', 24, NULL, NULL, NULL),
(406, 'Phnom Penh', 18, NULL, NULL, NULL),
(407, 'Pingxiang', 23, NULL, NULL, NULL),
(408, 'Pjatigorsk', 80, NULL, NULL, NULL),
(409, 'Plock', 76, NULL, NULL, NULL),
(410, 'Po', 15, NULL, NULL, NULL),
(411, 'Ponce', 77, NULL, NULL, NULL),
(412, 'Pontianak', 45, NULL, NULL, NULL),
(413, 'Poos de Caldas', 15, NULL, NULL, NULL),
(414, 'Portoviejo', 28, NULL, NULL, NULL),
(415, 'Probolinggo', 45, NULL, NULL, NULL),
(416, 'Pudukkottai', 44, NULL, NULL, NULL),
(417, 'Pune', 44, NULL, NULL, NULL),
(418, 'Purnea (Purnia)', 44, NULL, NULL, NULL),
(419, 'Purwakarta', 45, NULL, NULL, NULL),
(420, 'Pyongyang', 70, NULL, NULL, NULL),
(421, 'Qalyub', 29, NULL, NULL, NULL),
(422, 'Qinhuangdao', 23, NULL, NULL, NULL),
(423, 'Qomsheh', 46, NULL, NULL, NULL),
(424, 'Quilmes', 6, NULL, NULL, NULL),
(425, 'Rae Bareli', 44, NULL, NULL, NULL),
(426, 'Rajkot', 44, NULL, NULL, NULL),
(427, 'Rampur', 44, NULL, NULL, NULL),
(428, 'Rancagua', 22, NULL, NULL, NULL),
(429, 'Ranchi', 44, NULL, NULL, NULL),
(430, 'Richmond Hill', 20, NULL, NULL, NULL),
(431, 'Rio Claro', 15, NULL, NULL, NULL),
(432, 'Rizhao', 23, NULL, NULL, NULL),
(433, 'Roanoke', 103, NULL, NULL, NULL),
(434, 'Robamba', 28, NULL, NULL, NULL),
(435, 'Rockford', 103, NULL, NULL, NULL),
(436, 'Ruse', 17, NULL, NULL, NULL),
(437, 'Rustenburg', 85, NULL, NULL, NULL),
(438, 's-Hertogenbosch', 67, NULL, NULL, NULL),
(439, 'Saarbrcken', 38, NULL, NULL, NULL),
(440, 'Sagamihara', 50, NULL, NULL, NULL),
(441, 'Saint Louis', 103, NULL, NULL, NULL),
(442, 'Saint-Denis', 79, NULL, NULL, NULL),
(443, 'Sal', 62, NULL, NULL, NULL),
(444, 'Salala', 71, NULL, NULL, NULL),
(445, 'Salamanca', 60, NULL, NULL, NULL),
(446, 'Salinas', 103, NULL, NULL, NULL),
(447, 'Salzburg', 9, NULL, NULL, NULL),
(448, 'Sambhal', 44, NULL, NULL, NULL),
(449, 'San Bernardino', 103, NULL, NULL, NULL),
(450, 'San Felipe de Puerto Plata', 27, NULL, NULL, NULL),
(451, 'San Felipe del Progreso', 60, NULL, NULL, NULL),
(452, 'San Juan Bautista Tuxtepec', 60, NULL, NULL, NULL),
(453, 'San Lorenzo', 73, NULL, NULL, NULL),
(454, 'San Miguel de Tucumn', 6, NULL, NULL, NULL),
(455, 'Sanaa', 107, NULL, NULL, NULL),
(456, 'Santa Brbara dOeste', 15, NULL, NULL, NULL),
(457, 'Santa F', 6, NULL, NULL, NULL),
(458, 'Santa Rosa', 75, NULL, NULL, NULL),
(459, 'Santiago de Compostela', 87, NULL, NULL, NULL),
(460, 'Santiago de los Caballeros', 27, NULL, NULL, NULL),
(461, 'Santo Andr', 15, NULL, NULL, NULL),
(462, 'Sanya', 23, NULL, NULL, NULL),
(463, 'Sasebo', 50, NULL, NULL, NULL),
(464, 'Satna', 44, NULL, NULL, NULL),
(465, 'Sawhaj', 29, NULL, NULL, NULL),
(466, 'Serpuhov', 80, NULL, NULL, NULL),
(467, 'Shahr-e Kord', 46, NULL, NULL, NULL),
(468, 'Shanwei', 23, NULL, NULL, NULL),
(469, 'Shaoguan', 23, NULL, NULL, NULL),
(470, 'Sharja', 101, NULL, NULL, NULL),
(471, 'Shenzhen', 23, NULL, NULL, NULL),
(472, 'Shikarpur', 72, NULL, NULL, NULL),
(473, 'Shimoga', 44, NULL, NULL, NULL),
(474, 'Shimonoseki', 50, NULL, NULL, NULL),
(475, 'Shivapuri', 44, NULL, NULL, NULL),
(476, 'Shubra al-Khayma', 29, NULL, NULL, NULL),
(477, 'Siegen', 38, NULL, NULL, NULL),
(478, 'Siliguri (Shiliguri)', 44, NULL, NULL, NULL),
(479, 'Simferopol', 100, NULL, NULL, NULL),
(480, 'Sincelejo', 24, NULL, NULL, NULL),
(481, 'Sirjan', 46, NULL, NULL, NULL),
(482, 'Sivas', 97, NULL, NULL, NULL),
(483, 'Skikda', 2, NULL, NULL, NULL),
(484, 'Smolensk', 80, NULL, NULL, NULL),
(485, 'So Bernardo do Campo', 15, NULL, NULL, NULL),
(486, 'So Leopoldo', 15, NULL, NULL, NULL),
(487, 'Sogamoso', 24, NULL, NULL, NULL),
(488, 'Sokoto', 69, NULL, NULL, NULL),
(489, 'Songkhla', 94, NULL, NULL, NULL),
(490, 'Sorocaba', 15, NULL, NULL, NULL),
(491, 'Soshanguve', 85, NULL, NULL, NULL),
(492, 'Sousse', 96, NULL, NULL, NULL),
(493, 'South Hill', 5, NULL, NULL, NULL),
(494, 'Southampton', 102, NULL, NULL, NULL),
(495, 'Southend-on-Sea', 102, NULL, NULL, NULL),
(496, 'Southport', 102, NULL, NULL, NULL),
(497, 'Springs', 85, NULL, NULL, NULL),
(498, 'Stara Zagora', 17, NULL, NULL, NULL),
(499, 'Sterling Heights', 103, NULL, NULL, NULL),
(500, 'Stockport', 102, NULL, NULL, NULL),
(501, 'Sucre', 14, NULL, NULL, NULL),
(502, 'Suihua', 23, NULL, NULL, NULL),
(503, 'Sullana', 74, NULL, NULL, NULL),
(504, 'Sultanbeyli', 97, NULL, NULL, NULL),
(505, 'Sumqayit', 10, NULL, NULL, NULL),
(506, 'Sumy', 100, NULL, NULL, NULL),
(507, 'Sungai Petani', 59, NULL, NULL, NULL),
(508, 'Sunnyvale', 103, NULL, NULL, NULL),
(509, 'Surakarta', 45, NULL, NULL, NULL),
(510, 'Syktyvkar', 80, NULL, NULL, NULL),
(511, 'Syrakusa', 49, NULL, NULL, NULL),
(512, 'Szkesfehrvr', 43, NULL, NULL, NULL),
(513, 'Tabora', 93, NULL, NULL, NULL),
(514, 'Tabriz', 46, NULL, NULL, NULL),
(515, 'Tabuk', 82, NULL, NULL, NULL),
(516, 'Tafuna', 3, NULL, NULL, NULL),
(517, 'Taguig', 75, NULL, NULL, NULL),
(518, 'Taizz', 107, NULL, NULL, NULL),
(519, 'Talavera', 75, NULL, NULL, NULL),
(520, 'Tallahassee', 103, NULL, NULL, NULL),
(521, 'Tama', 50, NULL, NULL, NULL),
(522, 'Tambaram', 44, NULL, NULL, NULL),
(523, 'Tanauan', 75, NULL, NULL, NULL),
(524, 'Tandil', 6, NULL, NULL, NULL),
(525, 'Tangail', 12, NULL, NULL, NULL),
(526, 'Tanshui', 92, NULL, NULL, NULL),
(527, 'Tanza', 75, NULL, NULL, NULL),
(528, 'Tarlac', 75, NULL, NULL, NULL),
(529, 'Tarsus', 97, NULL, NULL, NULL),
(530, 'Tartu', 30, NULL, NULL, NULL),
(531, 'Teboksary', 80, NULL, NULL, NULL),
(532, 'Tegal', 45, NULL, NULL, NULL),
(533, 'Tel Aviv-Jaffa', 48, NULL, NULL, NULL),
(534, 'Tete', 63, NULL, NULL, NULL),
(535, 'Tianjin', 23, NULL, NULL, NULL),
(536, 'Tiefa', 23, NULL, NULL, NULL),
(537, 'Tieli', 23, NULL, NULL, NULL),
(538, 'Tokat', 97, NULL, NULL, NULL),
(539, 'Tonghae', 86, NULL, NULL, NULL),
(540, 'Tongliao', 23, NULL, NULL, NULL),
(541, 'Torren', 60, NULL, NULL, NULL),
(542, 'Touliu', 92, NULL, NULL, NULL),
(543, 'Toulon', 34, NULL, NULL, NULL),
(544, 'Toulouse', 34, NULL, NULL, NULL),
(545, 'Trshavn', 32, NULL, NULL, NULL),
(546, 'Tsaotun', 92, NULL, NULL, NULL),
(547, 'Tsuyama', 50, NULL, NULL, NULL),
(548, 'Tuguegarao', 75, NULL, NULL, NULL),
(549, 'Tychy', 76, NULL, NULL, NULL),
(550, 'Udaipur', 44, NULL, NULL, NULL),
(551, 'Udine', 49, NULL, NULL, NULL),
(552, 'Ueda', 50, NULL, NULL, NULL),
(553, 'Uijongbu', 86, NULL, NULL, NULL),
(554, 'Uluberia', 44, NULL, NULL, NULL),
(555, 'Urawa', 50, NULL, NULL, NULL),
(556, 'Uruapan', 60, NULL, NULL, NULL),
(557, 'Usak', 97, NULL, NULL, NULL),
(558, 'Usolje-Sibirskoje', 80, NULL, NULL, NULL),
(559, 'Uttarpara-Kotrung', 44, NULL, NULL, NULL),
(560, 'Vaduz', 55, NULL, NULL, NULL),
(561, 'Valencia', 104, NULL, NULL, NULL),
(562, 'Valle de la Pascua', 104, NULL, NULL, NULL),
(563, 'Valle de Santiago', 60, NULL, NULL, NULL),
(564, 'Valparai', 44, NULL, NULL, NULL),
(565, 'Vancouver', 20, NULL, NULL, NULL),
(566, 'Varanasi (Benares)', 44, NULL, NULL, NULL),
(567, 'Vicente Lpez', 6, NULL, NULL, NULL),
(568, 'Vijayawada', 44, NULL, NULL, NULL),
(569, 'Vila Velha', 15, NULL, NULL, NULL),
(570, 'Vilnius', 56, NULL, NULL, NULL),
(571, 'Vinh', 105, NULL, NULL, NULL),
(572, 'Vitria de Santo Anto', 15, NULL, NULL, NULL),
(573, 'Warren', 103, NULL, NULL, NULL),
(574, 'Weifang', 23, NULL, NULL, NULL),
(575, 'Witten', 38, NULL, NULL, NULL),
(576, 'Woodridge', 8, NULL, NULL, NULL),
(577, 'Wroclaw', 76, NULL, NULL, NULL),
(578, 'Xiangfan', 23, NULL, NULL, NULL),
(579, 'Xiangtan', 23, NULL, NULL, NULL),
(580, 'Xintai', 23, NULL, NULL, NULL),
(581, 'Xinxiang', 23, NULL, NULL, NULL),
(582, 'Yamuna Nagar', 44, NULL, NULL, NULL),
(583, 'Yangor', 65, NULL, NULL, NULL),
(584, 'Yantai', 23, NULL, NULL, NULL),
(585, 'Yaound', 19, NULL, NULL, NULL),
(586, 'Yerevan', 7, NULL, NULL, NULL),
(587, 'Yinchuan', 23, NULL, NULL, NULL),
(588, 'Yingkou', 23, NULL, NULL, NULL),
(589, 'York', 102, NULL, NULL, NULL),
(590, 'Yuncheng', 23, NULL, NULL, NULL),
(591, 'Yuzhou', 23, NULL, NULL, NULL),
(592, 'Zalantun', 23, NULL, NULL, NULL),
(593, 'Zanzibar', 93, NULL, NULL, NULL),
(594, 'Zaoyang', 23, NULL, NULL, NULL),
(595, 'Zapopan', 60, NULL, NULL, NULL),
(596, 'Zaria', 69, NULL, NULL, NULL),
(597, 'Zeleznogorsk', 80, NULL, NULL, NULL),
(598, 'Zhezqazghan', 51, NULL, NULL, NULL),
(599, 'Zhoushan', 23, NULL, NULL, NULL),
(600, 'Ziguinchor', 83, NULL, NULL, NULL),
(601, 'Córdoba', 60, NULL, NULL, NULL),
(602, 'Veracruz', 60, NULL, NULL, NULL),
(603, 'Orizaba', 60, NULL, NULL, NULL),
(604, 'Xalapa', 60, '0000-00-00 00:00:00', NULL, NULL),
(608, 'Del Norte', 60, '2016-10-14 21:52:02', '2016-10-14 21:52:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Afghanistan', NULL, NULL, NULL),
(2, 'Algeria', NULL, NULL, NULL),
(3, 'American Samoa', NULL, NULL, NULL),
(4, 'Angola', NULL, NULL, NULL),
(5, 'Anguilla', NULL, NULL, NULL),
(6, 'Argentina', NULL, NULL, NULL),
(7, 'Armenia', NULL, NULL, NULL),
(8, 'Australia', NULL, NULL, NULL),
(9, 'Austria', NULL, NULL, NULL),
(10, 'Azerbaijan', NULL, NULL, NULL),
(11, 'Bahrain', NULL, NULL, NULL),
(12, 'Bangladesh', NULL, NULL, NULL),
(13, 'Belarus', NULL, NULL, NULL),
(14, 'Bolivia', NULL, NULL, NULL),
(15, 'Brazil', NULL, NULL, NULL),
(16, 'Brunei', NULL, NULL, NULL),
(17, 'Bulgaria', NULL, NULL, NULL),
(18, 'Cambodia', NULL, NULL, NULL),
(19, 'Cameroon', NULL, NULL, NULL),
(20, 'Canada', NULL, NULL, NULL),
(21, 'Chad', NULL, NULL, NULL),
(22, 'Chile', NULL, NULL, NULL),
(23, 'China', NULL, NULL, NULL),
(24, 'Colombia', NULL, NULL, NULL),
(25, 'Congo, The Democratic Republic of the', NULL, NULL, NULL),
(26, 'Czech Republic', NULL, NULL, NULL),
(27, 'Dominican Republic', NULL, NULL, NULL),
(28, 'Ecuador', NULL, NULL, NULL),
(29, 'Egypt', NULL, NULL, NULL),
(30, 'Estonia', NULL, NULL, NULL),
(31, 'Ethiopia', NULL, NULL, NULL),
(32, 'Faroe Islands', NULL, NULL, NULL),
(33, 'Finland', NULL, NULL, NULL),
(34, 'France', NULL, NULL, NULL),
(35, 'French Guiana', NULL, NULL, NULL),
(36, 'French Polynesia', NULL, NULL, NULL),
(37, 'Gambia', NULL, NULL, NULL),
(38, 'Germany', NULL, NULL, NULL),
(39, 'Greece', NULL, NULL, NULL),
(40, 'Greenland', NULL, NULL, NULL),
(41, 'Holy See (Vatican City State)', NULL, NULL, NULL),
(42, 'Hong Kong', NULL, NULL, NULL),
(43, 'Hungary', NULL, NULL, NULL),
(44, 'India', NULL, NULL, NULL),
(45, 'Indonesia', NULL, NULL, NULL),
(46, 'Iran', NULL, NULL, NULL),
(47, 'Iraq', NULL, NULL, NULL),
(48, 'Israel', NULL, NULL, NULL),
(49, 'Italy', NULL, NULL, NULL),
(50, 'Japan', NULL, NULL, NULL),
(51, 'Kazakstan', NULL, NULL, NULL),
(52, 'Kenya', NULL, NULL, NULL),
(53, 'Kuwait', NULL, NULL, NULL),
(54, 'Latvia', NULL, NULL, NULL),
(55, 'Liechtenstein', NULL, NULL, NULL),
(56, 'Lithuania', NULL, NULL, NULL),
(57, 'Madagascar', NULL, NULL, NULL),
(58, 'Malawi', NULL, NULL, NULL),
(59, 'Malaysia', NULL, NULL, NULL),
(60, 'Mexico', NULL, NULL, NULL),
(61, 'Moldova', NULL, NULL, NULL),
(62, 'Morocco', NULL, NULL, NULL),
(63, 'Mozambique', NULL, NULL, NULL),
(64, 'Myanmar', NULL, NULL, NULL),
(65, 'Nauru', NULL, NULL, NULL),
(66, 'Nepal', NULL, NULL, NULL),
(67, 'Netherlands', NULL, NULL, NULL),
(68, 'New Zealand', NULL, NULL, NULL),
(69, 'Nigeria', NULL, NULL, NULL),
(70, 'North Korea', NULL, NULL, NULL),
(71, 'Oman', NULL, NULL, NULL),
(72, 'Pakistan', NULL, NULL, NULL),
(73, 'Paraguay', NULL, NULL, NULL),
(74, 'Peru', NULL, NULL, NULL),
(75, 'Philippines', NULL, NULL, NULL),
(76, 'Poland', NULL, NULL, NULL),
(77, 'Puerto Rico', NULL, NULL, NULL),
(78, 'Romania', NULL, NULL, NULL),
(79, 'Runion', NULL, NULL, NULL),
(80, 'Russian Federation', NULL, NULL, NULL),
(81, 'Saint Vincent and the Grenadines', NULL, NULL, NULL),
(82, 'Saudi Arabia', NULL, NULL, NULL),
(83, 'Senegal', NULL, NULL, NULL),
(84, 'Slovakia', NULL, NULL, NULL),
(85, 'South Africa', NULL, NULL, NULL),
(86, 'South Korea', NULL, NULL, NULL),
(87, 'Spain', NULL, NULL, NULL),
(88, 'Sri Lanka', NULL, NULL, NULL),
(89, 'Sudan', NULL, NULL, NULL),
(90, 'Sweden', NULL, NULL, NULL),
(91, 'Switzerland', NULL, NULL, NULL),
(92, 'Taiwan', NULL, NULL, NULL),
(93, 'Tanzania', NULL, NULL, NULL),
(94, 'Thailand', NULL, NULL, NULL),
(95, 'Tonga', NULL, NULL, NULL),
(96, 'Tunisia', NULL, NULL, NULL),
(97, 'Turkey', NULL, NULL, NULL),
(98, 'Turkmenistan', NULL, NULL, NULL),
(99, 'Tuvalu', NULL, NULL, NULL),
(100, 'Ukraine', NULL, NULL, NULL),
(101, 'United Arab Emirates', NULL, NULL, NULL),
(102, 'United Kingdom', NULL, NULL, NULL),
(103, 'United States', NULL, NULL, NULL),
(104, 'Venezuela', NULL, NULL, NULL),
(105, 'Vietnam', NULL, NULL, NULL),
(106, 'Virgin Islands, U.S.', NULL, NULL, NULL),
(107, 'Yemen', NULL, NULL, NULL),
(108, 'Yugoslavia', NULL, NULL, NULL),
(109, 'Zambia', NULL, NULL, NULL),
(110, 'Pruebas', '2016-10-14 21:29:58', '2016-10-14 21:29:58', NULL),
(111, 'Pruebas2', '2016-10-14 21:32:22', '2016-10-14 21:32:22', NULL),
(112, '', '2016-10-14 22:09:57', '2016-10-14 22:09:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Juan', 'Carrera', 'juan@hotmail.com', 2, 0, '2016-09-28 03:42:26', '2016-10-12 02:31:30', NULL),
(2, 2, 'Meli', 'Carrera', 'meli@hotmail.com', 1, 0, '2016-09-28 03:46:44', '2016-09-28 03:47:26', '2016-09-28 03:47:26'),
(3, 2, 'Carlos', 'Fernandez', 'sistemas1991@hotmail.com', 1, 0, '2016-10-11 09:20:16', '2016-10-12 02:31:37', NULL),
(4, 2, 'Prueba', 'Prueba', 'prueba@prueba.com', 1, 1, '2016-10-11 09:50:17', '2016-10-11 09:50:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `release_year` date NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `rental_duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rental_rate` decimal(4,2) NOT NULL,
  `length` smallint(6) NOT NULL,
  `replacement_cost` decimal(5,2) NOT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `films`
--

INSERT INTO `films` (`id`, `title`, `description`, `release_year`, `language_id`, `rental_duration`, `rental_rate`, `length`, `replacement_cost`, `rating`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Laravel 5.2', 'Description of Language', '0000-00-00', 1, '', '0.00', 0, '0.00', 'G', '', '2016-09-13 03:51:08', '2016-09-13 03:51:08', NULL),
(6, 'The pirates of sillicon valley', 'The pirates of sillicon valley.', '0000-00-00', 1, '', '0.00', 0, '0.00', 'G', '', '2016-09-13 05:33:29', '2016-09-14 03:41:17', NULL),
(8, 'La Bella Durmiente', 'pelicula', '0000-00-00', 1, '', '0.00', 0, '0.00', 'G', '', '2016-09-14 05:21:23', '2016-09-14 05:21:27', '2016-09-14 05:21:27'),
(9, 'Aprendiendo Laravel', 'pelicula', '0000-00-00', 1, '', '0.00', 0, '0.00', 'G', '', '2016-09-14 05:21:41', '2016-09-14 05:21:48', '2016-09-14 05:21:48'),
(12, 'Los Ilusionistas', 'Pura Magia', '0000-00-00', 1, '', '0.00', 0, '0.00', 'G', '', '2016-09-15 03:27:50', '2016-09-15 03:27:50', NULL),
(13, 'Frozen', 'Una pelicula de hielo que canta y canta', '0000-00-00', 2, '', '0.00', 0, '0.00', 'G', '', '2016-09-15 06:45:20', '2016-09-15 06:45:20', NULL),
(14, 'El Cartel de los Sapos', 'Basada en echos reales sobre el trafico', '0000-00-00', 1, '', '0.00', 0, '0.00', 'G', '', '2016-09-21 05:07:34', '2016-09-21 05:07:34', NULL),
(15, 'Avengers', 'Pura ciencia ficcion', '2015-01-01', 2, '3', '40.00', 110, '70.00', 'R', '', '2016-09-21 05:17:12', '2016-09-21 05:17:12', NULL),
(16, 'Escuadrón suicida', 'No se de que trata', '2016-06-06', 2, '2', '50.00', 150, '100.00', 'PG-13', '', '2016-09-21 12:41:49', '2016-09-21 12:45:22', NULL),
(17, 'Networked full-range website', 'Non accusamus vitae facilis ea porro. Ullam asperiores incidunt voluptas quas maiores. Et modi corrupti quia quasi veniam.', '2016-09-21', 1, '2', '30.00', 130, '60.00', 'R', '', '2016-09-22 04:09:04', '2016-09-22 04:09:04', NULL),
(18, 'Profound logistical', 'Magni similique adipisci aut enim dolor et laboriosam.', '2016-09-21', 1, '4', '40.00', 130, '50.00', 'G', '2214468236_1412784045406229_1491447521829107896_o.jpg', '2016-09-22 04:09:05', '2016-10-11 20:08:22', NULL),
(19, 'Ergonomic didactic data-warehouse', 'Perferendis enim et eos. Nam cupiditate excepturi neque odit vel. Itaque porro illum impedit hic. Quasi pariatur delectus modi ut.', '2016-09-21', 1, '3', '40.00', 130, '70.00', 'PG-13', '', '2016-09-22 04:09:05', '2016-10-11 23:26:49', '2016-10-11 23:26:49'),
(20, 'Stand-alone client-driven orchestration', 'Veritatis et corporis ipsa rerum eos laudantium odio. Atque qui aut minus possimus facere qui quas. Et doloremque eum minus.', '2016-09-21', 1, '3', '40.00', 130, '70.00', 'PG', '', '2016-09-22 04:09:05', '2016-09-22 04:09:05', NULL),
(21, 'Ergonomic full-range standardization', 'Sed placeat beatae vero voluptates ipsam. Sunt vitae aut recusandae facere tempora expedita. Voluptatem non perspiciatis reprehenderit ratione facilis consequatur voluptatum.', '2016-09-21', 1, '3', '30.00', 130, '70.00', 'R', '', '2016-09-22 04:09:05', '2016-10-11 12:07:25', '2016-10-11 12:07:25'),
(22, 'Intuitive tangible info-mediaries', 'Eos aut id voluptatibus eos. Molestias dolorum molestias doloribus accusamus sit. Voluptatem esse eum deleniti.', '2016-09-21', 1, '2', '40.00', 130, '60.00', 'G', '', '2016-09-22 04:09:05', '2016-09-22 04:09:05', NULL),
(23, 'Object-based leadingedge policy', 'Ea qui repellat minima dolor aut. Perferendis et corrupti laudantium dicta cum dolorem laudantium. Repellendus dolorum facilis reiciendis nam ipsam perspiciatis.', '2016-09-21', 1, '4', '30.00', 120, '70.00', 'PG', '', '2016-09-22 04:09:05', '2016-09-22 04:09:05', NULL),
(24, 'Realigned secondary opensystem', 'Vel aut qui iure repellendus explicabo laudantium expedita. Inventore expedita laudantium voluptatibus et nobis. Ut quidem assumenda consequuntur culpa voluptatem sint occaecati.', '2016-09-21', 1, '2', '30.00', 140, '60.00', 'PG-13', '', '2016-09-22 04:09:05', '2016-09-22 04:09:05', NULL),
(25, 'Expanded mobile structure', 'Id occaecati maxime dolores itaque ut. Repudiandae magnam sequi cum sit ullam laudantium. Odit consequatur ut velit nobis et vel.', '2016-09-21', 1, '4', '40.00', 130, '50.00', 'PG', '', '2016-09-22 04:09:05', '2016-09-22 04:09:05', NULL),
(26, 'Multi-channelled multimedia migration', 'Consequuntur esse quibusdam quia. Inventore minima id voluptas qui. Libero provident omnis earum est sed.', '2016-09-21', 1, '3', '30.00', 140, '70.00', 'G', '', '2016-09-22 04:09:05', '2016-09-22 04:09:05', NULL),
(27, 'Synchronised mission-critical focusgroup', 'Aliquid quam nemo voluptatem molestiae optio quibusdam fugiat. Saepe cumque corporis quisquam porro doloremque voluptates qui autem. Asperiores id omnis vero repudiandae ducimus maiores.', '2016-09-21', 1, '3', '30.00', 130, '50.00', 'NC-17', '', '2016-09-22 04:09:06', '2016-10-11 11:50:05', '2016-10-11 11:50:05'),
(28, 'Re-engineered 24/7 support', 'Laudantium cumque aut ad et repudiandae. Sint dolores aperiam accusamus corporis explicabo ea. Quis eaque quo voluptas ab est quasi nostrum sit.', '2016-09-21', 1, '4', '40.00', 120, '70.00', 'G', '', '2016-09-22 04:09:06', '2016-10-11 12:01:16', '2016-10-11 12:01:16'),
(29, 'Persevering radical monitoring', 'Mollitia necessitatibus minus minus id. Iure eos alias aut dolores quaerat qui. Sint repellendus praesentium sint fugit hic.', '2016-09-21', 1, '4', '40.00', 130, '60.00', 'G', '22Carta de Comprobacion de Ingresos IPES.jpg', '2016-09-22 04:09:06', '2016-10-11 12:02:37', '2016-10-11 12:02:37'),
(30, 'Assimilated global systemengine', 'Quaerat ut et necessitatibus id aut rerum est. Consequuntur praesentium tempora nobis culpa molestiae vero debitis. Inventore omnis nesciunt rem fugiat.', '2016-09-21', 1, '2', '40.00', 140, '60.00', 'NC-17', '', '2016-09-22 04:09:06', '2016-10-11 11:49:20', '2016-10-11 11:49:20'),
(31, 'Advanced systematic customerloyalty', 'Nostrum nesciunt dolorem minima rerum qui nobis. Ut rerum fugiat beatae ut. Expedita aut quod reprehenderit sed omnis.', '2016-09-21', 1, '2', '30.00', 130, '50.00', 'PG', '', '2016-09-22 04:09:06', '2016-10-11 11:50:33', '2016-10-11 11:50:33'),
(32, 'Residencias', 'Hago Residencias', '2016-08-25', 2, '4', '50.00', 150, '150.00', 'G', '7c-logo1.png', '2016-09-29 02:09:38', '2016-10-11 12:02:07', NULL),
(33, 'Aprendiendo Laravel 5.', 'Conociendo las Novedades de laravel en nuestro proyecto piloto', '2016-08-10', 2, '4', '50.00', 110, '70.00', 'G', '36laravel_52.jpg', '2016-10-10 23:53:33', '2016-10-11 23:23:01', NULL),
(34, 'Estan Viendo', 'Estan Viendo', '2016-02-11', 2, '5', '50.00', 150, '50.00', 'R', '42Carta de Comprobacion de Ingresos IPES.jpg', '2016-10-11 23:28:42', '2016-10-11 23:28:42', NULL),
(35, 'chucky', 'asfasdf', '2016-10-10', 5, 'asdfasdf', '50.00', 162, '100.00', 'PG', '5014468236_1412784045406229_1491447521829107896_o.jpg', '2016-10-11 23:37:50', '2016-10-11 23:37:50', NULL),
(36, 'Probando Actores', 'Lorem', '2016-08-25', 5, '3', '30.00', 110, '70.00', 'R', '26laravel.png', '2016-10-13 13:27:27', '2016-10-13 13:27:27', NULL),
(40, 'Aprendiendo Laravel 10', 'fghfgh', '2015-02-05', 2, '2', '50.00', 150, '50.00', 'PG-13', '714468236_1412784045406229_1491447521829107896_o.jpg', '2016-10-13 14:15:07', '2016-10-13 14:15:07', NULL),
(41, 'Con Actores', 'lsdkñ', '2016-08-25', 4, '3', '30.00', 150, '50.00', 'G', '0cnbes.jpg', '2016-10-13 14:20:00', '2016-10-14 17:17:45', NULL),
(54, 'Black In Black', 'Hombres de negro II.', '2015-02-05', 2, '4', '50.00', 110, '150.00', 'PG-13', '41black.jpg', '2016-10-13 15:19:27', '2016-10-14 04:09:42', NULL),
(138, 'asnd,smndjew', 'nsdamnsd hegwtj hjdsabsb', '2016-08-25', 12, '4', '50.00', 110, '150.00', 'G', '', '2016-10-14 17:08:20', '2016-10-14 17:11:07', '2016-10-14 17:11:07'),
(140, 'El Planeta de los Simios', 'El planeta de los simios es una película estadounidense de ciencia ficción de 1968 basada en la novela homónima de Pierre Boulle y la primera de la franquicia El planeta de los simios.', '2010-10-10', 2, '2', '30.00', 195, '150.00', 'PG', '33r5.jpg', '2016-10-14 17:29:33', '2016-10-14 17:29:33', NULL),
(142, 'Prueba de Categorias', 'prueba de categorias', '2015-01-01', 13, '3', '50.00', 162, '50.00', 'NC-17', '30m1.jpg', '2016-10-14 18:13:30', '2016-10-14 18:13:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `film_actors`
--

CREATE TABLE `film_actors` (
  `actor_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `film_actors`
--

INSERT INTO `film_actors` (`actor_id`, `film_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 41, NULL, NULL, NULL),
(2, 54, '2016-10-13 16:28:29', '2016-10-13 20:26:27', NULL),
(2, 140, NULL, NULL, NULL),
(3, 41, NULL, NULL, NULL),
(3, 138, NULL, NULL, NULL),
(3, 140, NULL, NULL, NULL),
(4, 41, NULL, NULL, NULL),
(4, 140, NULL, NULL, NULL),
(4, 142, NULL, NULL, NULL),
(5, 54, '2016-10-13 16:26:00', '2016-10-13 17:23:26', NULL),
(6, 138, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `film_categories`
--

CREATE TABLE `film_categories` (
  `film_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `film_categories`
--

INSERT INTO `film_categories` (`film_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(142, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `film_texts`
--

CREATE TABLE `film_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', '2016-09-13 03:45:19', '2016-09-13 03:45:19', NULL),
(2, 'Español', '2016-09-15 03:50:00', '2016-09-27 23:39:10', NULL),
(4, 'Nahuatl', '2016-09-27 23:20:46', '2016-09-27 23:20:46', NULL),
(5, 'Zapoteco', '2016-09-27 23:21:50', '2016-09-27 23:21:50', NULL),
(6, 'Indú', '2016-09-27 23:22:36', '2016-10-11 11:34:05', '2016-10-11 11:34:05'),
(7, 'Prueba', '2016-10-11 11:53:39', '2016-10-11 11:53:49', '2016-10-11 11:53:49'),
(8, '', '2016-10-11 15:30:17', '2016-10-11 15:31:21', '2016-10-11 15:31:21'),
(9, '', '2016-10-11 15:31:32', '2016-10-11 15:40:23', '2016-10-11 15:40:23'),
(10, '', '2016-10-11 15:34:30', '2016-10-11 15:40:26', '2016-10-11 15:40:26'),
(11, '', '2016-10-11 15:35:47', '2016-10-11 15:40:17', '2016-10-11 15:40:17'),
(12, 'Maya', '2016-10-11 15:40:08', '2016-10-11 15:40:08', NULL),
(13, 'Ruso', '2016-10-11 20:06:31', '2016-10-11 20:06:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_08_210748_create_actors_table', 1),
('2016_09_08_210855_create_countries_table', 1),
('2016_09_08_210940_create_cities_table', 1),
('2016_09_08_211022_create_addresses_table', 1),
('2016_09_08_211135_create_languages_table', 1),
('2016_09_08_211247_create_categories_table', 1),
('2016_09_08_212518_create_films_table', 1),
('2016_09_08_212813_create_customers_table', 1),
('2016_09_08_212637_create_film_categories_table', 2),
('2016_09_08_212714_create_film_actors_table', 2),
('2016_09_08_213023_create_stores_table', 3),
('2016_09_08_213120_create_staff_table', 3),
('2016_09_08_212333_create_film_texts_table', 4),
('2016_09_08_213232_create_inventories_table', 4),
('2016_09_08_213324_create_rentals_table', 5),
('2016_09_08_213402_create_payments_table', 6),
('2016_10_13_174429_create_actor_film_pivot_table', 7),
('2016_10_13_173147_create_actor_film_pivot_table', 8),
('2016_10_14_125219_create_category_film_pivot_table', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `rental_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentals`
--

CREATE TABLE `rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `rental_date` datetime NOT NULL,
  `inventory_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `return_date` datetime NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `staff`
--

INSERT INTO `staff` (`id`, `first_name`, `last_name`, `address_id`, `email`, `store_id`, `active`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'MARISOL', 'FERNANDEZ', 1, 'MARI_12@HOTMAIL.COM', 2, 0, '$2y$10$OGSe2J4zOD90H6L231EQ1OtTWCjZdsoCfro46CqDTJodVNQlbm5ca', 'oRl8SeHrdHaYIovnvUhDFR0PYWyLHW5lnoQiGjzSXQ9B2cwhS6kNeHGyD9hf', '2016-09-20 04:54:27', '2016-10-11 22:11:03', NULL),
(13, 'Fabiola', 'Valerdi', 1, 'chocky_1301@hotmail.com', 2, 1, '$2y$10$3IndYjD1CK05QlgQqLi1nezmFFMgmmfRLgqBahWGJBieM274Jy5Dq', 'CsOeh3Y9mDWL7qsTtRheR3h5tbNwOhOvyqjAcN864HMdg9nETuxp1xxu1hMh', '2016-09-21 07:28:35', '2016-10-11 22:14:36', NULL),
(14, 'CARLOS', 'FERNANDEZ', 1, 'fernandez.isc@gmail.com', 2, 1, '$2y$10$vb2.UtLSqELUu5J2HYbFvOwNZG003LXqQxDRg4kNRT7he9O59Qmwm', 'eEqBPGXYyLho7SvSOjYEzcvsR8bXNPqTJyp4PkBK2kkPGagZ6OwPx43LPRE2', '2016-09-27 23:37:40', '2016-10-17 17:34:22', NULL),
(17, 'Pioquinto', 'Nava', 1, 'nava@ejemplo.com', 2, 1, '$2y$10$vb2.UtLSqELUu5J2HYbFvOwNZG003LXqQxDRg4kNRT7he9O59Qmwm', 'XN1dMmkY8kMTlD59TEg0E5U2W9GeEm94tFePr1Lms9YFmjlL89jwQcqI2ruj', '2016-09-27 23:37:40', '2016-10-11 22:13:52', '2016-10-11 22:13:52'),
(18, 'Prueba', 'Prueba', 1, 'prueba@prueba.com', 2, 0, '', NULL, '2016-10-11 22:14:21', '2016-10-14 00:29:54', '2016-10-14 00:29:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `manager_staff_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`id`, `manager_staff_id`, `address_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 11, 1, '2016-09-15 11:44:32', '2016-09-15 11:44:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actor_film`
--
ALTER TABLE `actor_film`
  ADD PRIMARY KEY (`actor_id`,`film_id`),
  ADD KEY `actor_film_actor_id_index` (`actor_id`),
  ADD KEY `actor_film_film_id_index` (`film_id`);

--
-- Indices de la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_city_id_index` (`city_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_index` (`country_id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_store_id_index` (`store_id`),
  ADD KEY `customers_address_id_index` (`address_id`);

--
-- Indices de la tabla `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `films_language_id_index` (`language_id`);

--
-- Indices de la tabla `film_actors`
--
ALTER TABLE `film_actors`
  ADD PRIMARY KEY (`actor_id`,`film_id`),
  ADD KEY `film_actors_actor_id_index` (`actor_id`),
  ADD KEY `film_actors_film_id_index` (`film_id`);

--
-- Indices de la tabla `film_categories`
--
ALTER TABLE `film_categories`
  ADD PRIMARY KEY (`film_id`,`category_id`),
  ADD KEY `film_categories_film_id_index` (`film_id`),
  ADD KEY `film_categories_category_id_index` (`category_id`);

--
-- Indices de la tabla `film_texts`
--
ALTER TABLE `film_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_film_id_index` (`film_id`),
  ADD KEY `inventories_store_id_index` (`store_id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_customer_id_index` (`customer_id`),
  ADD KEY `payments_staff_id_index` (`staff_id`),
  ADD KEY `payments_rental_id_index` (`rental_id`);

--
-- Indices de la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_inventory_id_index` (`inventory_id`),
  ADD KEY `rentals_customer_id_index` (`customer_id`),
  ADD KEY `rentals_staff_id_index` (`staff_id`);

--
-- Indices de la tabla `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_email_unique` (`email`),
  ADD KEY `staff_address_id_index` (`address_id`),
  ADD KEY `staff_store_id_index` (`store_id`);

--
-- Indices de la tabla `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_manager_staff_id_index` (`manager_staff_id`),
  ADD KEY `stores_address_id_index` (`address_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;
--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT de la tabla `film_texts`
--
ALTER TABLE `film_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actor_film`
--
ALTER TABLE `actor_film`
  ADD CONSTRAINT `actor_film_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `actor_film_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `customers_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Filtros para la tabla `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Filtros para la tabla `film_actors`
--
ALTER TABLE `film_actors`
  ADD CONSTRAINT `film_actors_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `film_actors_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`);

--
-- Filtros para la tabla `film_categories`
--
ALTER TABLE `film_categories`
  ADD CONSTRAINT `film_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `film_categories_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `inventories_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `payments_rental_id_foreign` FOREIGN KEY (`rental_id`) REFERENCES `rentals` (`id`),
  ADD CONSTRAINT `payments_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Filtros para la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `rentals_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `rentals_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Filtros para la tabla `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `staff_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Filtros para la tabla `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `stores_manager_staff_id_foreign` FOREIGN KEY (`manager_staff_id`) REFERENCES `staff` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
