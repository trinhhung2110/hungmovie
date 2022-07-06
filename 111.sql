-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2022 lúc 05:53 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET CLIENT_ENCODING TO 'utf8';

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webnc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `email`, `user_name`, `password`, `name`, `avatar`, `birthday`, `status`, `created_at`, `updated_at`) VALUES
(15, 'otoshimono9x@gmail.com', 'admin', '$2y$10$inNt6sWajtnaQIxMoRSlaeRdeb8WrRiWwWSmOBO05GcUmiMdUgSaa', 'name', '/upload/avatar/16194179121.png', '2021-04-28', 1, NULL, '2021-06-17 05:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_delete` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `flag_delete`, `created_at`, `updated_at`) VALUES
(1, 'Viễn Tưởng', 0, NULL, '2021-04-19 09:53:47'),
(2, 'Lãng Mạn', 1, NULL, NULL),
(3, 'Siêu Nhiên', 1, NULL, NULL),
(4, 'Chiến Tranh', 1, '2021-04-20 01:16:30', '2021-04-20 03:59:05'),
(5, 'ooososoos', 0, '2021-04-20 01:16:38', '2021-04-20 02:39:12'),
(6, '1111111111', 0, '2021-04-20 01:22:38', '2021-04-20 01:23:22'),
(7, 'Phim Chiếu Rạp', 1, '2021-04-20 03:57:27', '2021-04-20 03:57:27'),
(8, 'Gia Đình', 1, '2021-04-20 03:57:35', '2021-04-20 03:59:12'),
(9, 'Hành Động', 1, '2021-04-20 04:04:06', '2021-04-20 04:04:06'),
(10, 'Giải Trí', 1, '2021-04-20 04:04:24', '2021-04-20 04:04:24'),
(11, 'Tài Liệu', 1, '2021-04-20 04:04:39', '2021-04-20 04:04:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_film`
--

CREATE TABLE `category_film` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_film`
--

INSERT INTO `category_film` (`id`, `id_category`, `id_film`, `created_at`, `updated_at`) VALUES
(54, 3, 7, NULL, NULL),
(58, 2, 8, NULL, NULL),
(59, 1, 9, NULL, NULL),
(60, 1, 10, NULL, NULL),
(61, 2, 11, NULL, NULL),
(62, 2, 12, NULL, NULL),
(63, 2, 6, NULL, NULL),
(64, 3, 6, NULL, NULL),
(71, 3, 32, NULL, NULL),
(72, 7, 32, NULL, NULL),
(73, 9, 32, NULL, NULL),
(74, 2, 33, NULL, NULL),
(75, 10, 33, NULL, NULL),
(76, 2, 34, NULL, NULL),
(77, 9, 34, NULL, NULL),
(78, 10, 34, NULL, NULL),
(79, 3, 40, NULL, NULL),
(80, 4, 40, NULL, NULL),
(81, 7, 40, NULL, NULL),
(82, 7, 31, NULL, NULL),
(83, 8, 31, NULL, NULL),
(84, 10, 31, NULL, NULL),
(85, 3, 41, NULL, NULL),
(86, 4, 41, NULL, NULL),
(87, 7, 41, NULL, NULL),
(88, 9, 41, NULL, NULL),
(89, 10, 41, NULL, NULL),
(90, 4, 42, NULL, NULL),
(91, 9, 42, NULL, NULL),
(92, 10, 42, NULL, NULL),
(93, 11, 42, NULL, NULL),
(94, 4, 43, NULL, NULL),
(95, 9, 43, NULL, NULL),
(96, 11, 43, NULL, NULL),
(97, 2, 44, NULL, NULL),
(98, 8, 44, NULL, NULL),
(99, 10, 44, NULL, NULL),
(100, 11, 44, NULL, NULL),
(101, 2, 45, NULL, NULL),
(102, 3, 45, NULL, NULL),
(103, 4, 45, NULL, NULL),
(104, 7, 45, NULL, NULL),
(105, 8, 45, NULL, NULL),
(106, 9, 45, NULL, NULL),
(107, 10, 45, NULL, NULL),
(108, 11, 45, NULL, NULL),
(109, 2, 47, NULL, NULL),
(110, 3, 47, NULL, NULL),
(111, 4, 47, NULL, NULL),
(112, 7, 47, NULL, NULL),
(113, 8, 47, NULL, NULL),
(114, 9, 47, NULL, NULL),
(115, 10, 47, NULL, NULL),
(116, 11, 47, NULL, NULL),
(117, 2, 48, NULL, NULL),
(118, 3, 48, NULL, NULL),
(119, 8, 48, NULL, NULL),
(120, 10, 48, NULL, NULL),
(121, 11, 48, NULL, NULL),
(122, 3, 49, NULL, NULL),
(123, 8, 49, NULL, NULL),
(124, 9, 49, NULL, NULL),
(125, 10, 49, NULL, NULL),
(126, 2, 50, NULL, NULL),
(127, 3, 50, NULL, NULL),
(128, 4, 50, NULL, NULL),
(129, 7, 50, NULL, NULL),
(130, 8, 50, NULL, NULL),
(131, 9, 50, NULL, NULL),
(132, 10, 50, NULL, NULL),
(133, 11, 50, NULL, NULL),
(134, 3, 51, NULL, NULL),
(135, 4, 51, NULL, NULL),
(136, 7, 51, NULL, NULL),
(137, 9, 51, NULL, NULL),
(138, 10, 51, NULL, NULL),
(139, 8, 52, NULL, NULL),
(140, 10, 52, NULL, NULL),
(141, 2, 53, NULL, NULL),
(142, 3, 53, NULL, NULL),
(143, 4, 53, NULL, NULL),
(144, 7, 53, NULL, NULL),
(145, 8, 53, NULL, NULL),
(146, 9, 53, NULL, NULL),
(147, 10, 53, NULL, NULL),
(148, 11, 53, NULL, NULL),
(149, 8, 54, NULL, NULL),
(150, 10, 54, NULL, NULL),
(151, 2, 46, NULL, NULL),
(152, 3, 46, NULL, NULL),
(153, 4, 46, NULL, NULL),
(154, 7, 46, NULL, NULL),
(155, 8, 46, NULL, NULL),
(156, 9, 46, NULL, NULL),
(157, 10, 46, NULL, NULL),
(158, 11, 46, NULL, NULL),
(164, 3, 56, NULL, NULL),
(165, 7, 56, NULL, NULL),
(167, 3, 58, NULL, NULL),
(168, 7, 59, NULL, NULL),
(169, 3, 60, NULL, NULL),
(170, 4, 61, NULL, NULL),
(174, 7, 55, NULL, NULL),
(175, 3, 62, NULL, NULL),
(176, 4, 62, NULL, NULL),
(177, 7, 62, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_film` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name`, `avatar`, `noi_dung`, `id_film`, `created_at`, `updated_at`) VALUES
(6, 'kjasjd', '/img/user/profile_none.png', 'jsndakjabds', 1, '2021-04-22 06:45:33', '2021-04-22 06:45:33'),
(7, 'jbksjdb', '/img/user/profile_none.png', 'abdjhb', 31, '2021-04-22 06:48:33', '2021-04-22 06:48:33'),
(8, 'ajsdnkj', '/img/user/profile_none.png', 'ajsndkjabsd', 31, '2021-04-22 07:07:18', '2021-04-22 07:07:18'),
(9, 'wwwww', '/img/user/profile_none.png', 'askndfa\nasnd\nasd', 31, '2021-04-22 08:23:46', '2021-04-22 08:23:46'),
(10, 'asd', '/img/user/profile_none.png', 'asdasd', 31, '2021-04-22 08:24:35', '2021-04-22 08:24:35'),
(11, 'eeee', '/img/user/profile_none.png', 'wwwwww', 31, '2021-04-22 08:25:03', '2021-04-22 08:25:03'),
(12, 'ddd', '/img/user/profile_none.png', 'dddd', 31, '2021-04-22 08:25:42', '2021-04-22 08:25:42'),
(13, 'ddd', '/img/user/profile_none.png', 'ddd', 31, '2021-04-22 08:25:52', '2021-04-22 08:25:52'),
(14, 'aaa', '/img/user/profile_none.png', 'aaaa', 31, '2021-04-22 08:26:04', '2021-04-22 08:26:04'),
(15, 'aaa', '/img/user/profile_none.png', 'aaa', 31, '2021-04-22 08:26:20', '2021-04-22 08:26:20'),
(16, 'ddd', '/img/user/profile_none.png', 'ddddd', 31, '2021-04-22 08:26:29', '2021-04-22 08:26:29'),
(17, 'dfghj', '/img/user/profile_none.png', 'asfasd', 32, '2021-04-22 09:37:02', '2021-04-22 09:37:02'),
(18, 'dfghj', '/img/user/profile_none.png', 'asdafas', 32, '2021-04-22 09:38:38', '2021-04-22 09:38:38'),
(19, 'dfghj', '/img/user/profile_none.png', 'asdaf', 32, '2021-04-22 09:39:27', '2021-04-22 09:39:27'),
(20, 'dfghj', '/img/user/profile_none.png', '111', 32, '2021-04-22 09:39:46', '2021-04-22 09:39:46'),
(21, 'dfghj', '/img/user/profile_none.png', '111', 32, '2021-04-22 09:39:47', '2021-04-22 09:39:47'),
(22, 'dfghj', '/img/user/profile_none.png', '111', 32, '2021-04-22 09:39:48', '2021-04-22 09:39:48'),
(23, 'dfghj', '/img/user/profile_none.png', '111', 32, '2021-04-22 09:39:49', '2021-04-22 09:39:49'),
(24, 'dfghj', '/img/user/profile_none.png', '111', 32, '2021-04-22 09:39:49', '2021-04-22 09:39:49'),
(25, 'dfghj', '/img/user/profile_none.png', '111', 32, '2021-04-22 09:39:49', '2021-04-22 09:39:49'),
(26, 'dfghj', '/img/user/profile_none.png', '111qqq', 32, '2021-04-22 09:39:54', '2021-04-22 09:39:54'),
(27, 'dfghj', '/img/user/profile_none.png', '111qqq', 32, '2021-04-22 09:39:54', '2021-04-22 09:39:54'),
(28, 'dfghj', '/img/user/profile_none.png', '111qqq', 32, '2021-04-22 09:39:54', '2021-04-22 09:39:54'),
(29, 'dfghj', '/img/user/profile_none.png', '111qqq', 32, '2021-04-22 09:39:55', '2021-04-22 09:39:55'),
(30, 'dfghj', '/img/user/profile_none.png', '111qqq', 32, '2021-04-22 09:39:55', '2021-04-22 09:39:55'),
(31, 'dfghj', '/img/user/profile_none.png', '111qqq', 32, '2021-04-22 09:39:55', '2021-04-22 09:39:55'),
(32, 'dfghj', '/img/user/profile_none.png', '111qqq', 32, '2021-04-22 09:39:55', '2021-04-22 09:39:55'),
(33, 'dfghj', '/img/user/profile_none.png', 'asd', 32, '2021-04-22 09:41:06', '2021-04-22 09:41:06'),
(34, 'name2', '/img/user/profile_none.png', 'asdafs', 32, '2021-04-22 09:42:15', '2021-04-22 09:42:15'),
(35, 'name2', '/upload/avatar/1618807480.png', 'fasd', 32, '2021-04-22 09:43:17', '2021-04-22 09:43:17'),
(36, 'asd', '/img/user/profile_none.png', 'asdad', 32, '2021-04-22 09:44:05', '2021-04-22 09:44:05'),
(37, 'sss', '/img/user/profile_none.png', 'sss1', 32, '2021-04-22 09:44:17', '2021-04-22 09:44:17'),
(38, '2', '/img/user/profile_none.png', '1', 32, '2021-04-22 09:46:19', '2021-04-22 09:46:19'),
(39, 'name2', '/upload/avatar/1618807480.png', '1', 45, '2021-04-22 09:46:37', '2021-04-22 09:46:37'),
(40, 'name2', '/upload/avatar/1618807480.png', 's', 45, '2021-04-22 09:47:11', '2021-04-22 09:47:11'),
(41, 'name2', '/upload/avatar/1618807480.png', 's', 45, '2021-04-22 09:47:13', '2021-04-22 09:47:13'),
(42, 'name2', '/upload/avatar/1618807480.png', 'dd', 45, '2021-04-22 09:47:15', '2021-04-22 09:47:15'),
(43, 'asd', '/img/user/profile_none.png', 'asd', 45, '2021-04-22 09:47:23', '2021-04-22 09:47:23'),
(44, 'asd', '/img/user/profile_none.png', 'sda', 45, '2021-04-22 09:47:25', '2021-04-22 09:47:25'),
(45, 'akjsjdn', '/img/user/profile_none.png', 'asdkjaskdb', 34, '2021-04-23 01:00:49', '2021-04-23 01:00:49'),
(46, 'asd', '/img/user/profile_none.png', 'asdasd', 31, '2021-04-23 01:01:29', '2021-04-23 01:01:29'),
(47, 'name2', '/upload/avatar/1618807480.png', 'aksjdnl', 32, '2021-04-23 06:00:02', '2021-04-23 06:00:02'),
(48, 'name2', '/upload/avatar/1618807480.png', '6666666', 32, '2021-04-23 06:00:17', '2021-04-23 06:00:17'),
(49, 'jhgjhgj', '/img/user/profile_none.png', 'kjgkjbkh', 33, '2021-04-23 06:12:05', '2021-04-23 06:12:05'),
(50, 'hghg', '/img/user/profile_none.png', 'jhbhjb', 33, '2021-04-23 06:12:11', '2021-04-23 06:12:11'),
(51, 'ggggg', '/img/user/profile_none.png', 'gggg', 33, '2021-04-23 06:12:19', '2021-04-23 06:12:19'),
(52, 'name2', '/upload/avatar/1618807480.png', 'gfch', 31, '2021-04-23 07:33:02', '2021-04-23 07:33:02'),
(53, 'name2', '/upload/avatar/1618807480.png', 'askjdasbd', 31, '2021-04-23 07:37:18', '2021-04-23 07:37:18'),
(54, 'name2', '/upload/avatar/1618807480.png', 'asndlnad', 31, '2021-04-23 07:37:48', '2021-04-23 07:37:48'),
(55, 'name2', '/upload/avatar/1618807480.png', 'nknkad', 31, '2021-04-23 07:39:41', '2021-04-23 07:39:41'),
(56, 'name2', '/upload/avatar/1618807480.png', 'ákjbkd', 31, '2021-04-23 07:39:53', '2021-04-23 07:39:53'),
(57, 'name2', '/upload/avatar/1618807480.png', 'aknsakjsdn', 31, '2021-04-23 07:40:02', '2021-04-23 07:40:02'),
(58, 'name2', '/upload/avatar/1618807480.png', 'andkasd', 31, '2021-04-23 07:40:58', '2021-04-23 07:40:58'),
(59, 'name2', '/upload/avatar/1618807480.png', 'álkdnad', 31, '2021-04-23 07:41:23', '2021-04-23 07:41:23'),
(60, 'name2', '/upload/avatar/1618807480.png', 'lkalknd', 31, '2021-04-23 07:43:12', '2021-04-23 07:43:12'),
(61, 'name2', '/upload/avatar/1618807480.png', 'mmmmm', 31, '2021-04-23 07:43:17', '2021-04-23 07:43:17'),
(65, 'rrrr123123', '/upload/avatar/16195025711.png', 'asdlknf', 31, '2021-05-04 08:01:48', '2021-05-04 08:01:48'),
(66, 'asd', '/img/user/profile_none.png', 'asdasd', 33, '2021-05-26 01:27:18', '2021-05-26 01:27:18'),
(67, 'rrrr123123', '/upload/avatar/16195025711.png', 'comment', 44, '2021-06-16 14:59:18', '2021-06-16 14:59:18'),
(68, 'rrrr123123', '/upload/avatar/16195025711.png', 'comment2', 44, '2021-06-16 14:59:25', '2021-06-16 14:59:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episode`
--

CREATE TABLE `episode` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_film` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tap_so` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `episode`
--

INSERT INTO `episode` (`id`, `id_film`, `link`, `tap_so`, `created_at`, `updated_at`) VALUES
(6, 6, '/upload/mp4/16188208236.mp4', 2, '2021-04-19 08:27:03', '2021-04-19 08:27:03'),
(7, 6, '/upload/mp4/16188208356.mp4', 3, '2021-04-19 08:27:15', '2021-04-19 08:27:15'),
(8, 31, '/upload/mp4/161889258631.mp4', 1, '2021-04-20 04:23:06', '2021-04-20 04:23:06'),
(9, 32, '/upload/mp4/161889260832.mp4', 1, '2021-04-20 04:23:28', '2021-04-20 04:23:28'),
(10, 33, '/upload/mp4/161889262533.mp4', 1, '2021-04-20 04:23:45', '2021-04-20 04:23:45'),
(11, 34, '/upload/mp4/161889319134.mp4', 1, '2021-04-20 04:33:11', '2021-04-20 04:33:11'),
(12, 34, '/upload/mp4/161889319934.mp4', 2, '2021-04-20 04:33:19', '2021-04-20 04:33:19'),
(13, 34, '/upload/mp4/161889320834.mp4', 3, '2021-04-20 04:33:28', '2021-04-20 04:33:28'),
(14, 34, '/upload/mp4/161889321534.mp4', 4, '2021-04-20 04:33:35', '2021-04-20 04:33:35'),
(15, 34, '/upload/mp4/161889322534.mp4', 5, '2021-04-20 04:33:45', '2021-04-20 04:33:45'),
(16, 33, '/upload/mp4/161889367533.mp4', 2, '2021-04-20 04:41:15', '2021-04-20 04:41:15'),
(17, 33, '/upload/mp4/161889380433.mp4', 3, '2021-04-20 04:43:24', '2021-04-20 04:43:24'),
(18, 33, '/upload/mp4/161889428733.mp4', 4, '2021-04-20 04:51:27', '2021-04-20 04:51:27'),
(19, 33, '/upload/mp4/161889442433.mp4', 5, '2021-04-20 04:53:44', '2021-04-20 04:53:44'),
(20, 34, '/upload/mp4/161889456734.mp4', 6, '2021-04-20 04:56:07', '2021-04-20 04:56:07'),
(21, 31, '/upload/mp4/161889459031.mp4', 2, '2021-04-20 04:56:30', '2021-04-20 04:56:30'),
(22, 40, '/upload/mp4/161889825340.mp4', 2, '2021-04-20 05:57:33', '2021-04-20 05:57:55'),
(23, 41, '/upload/mp4/161896865941.mp4', 1, '2021-04-21 01:30:59', '2021-04-21 01:30:59'),
(24, 42, '/upload/mp4/161896868442.mp4', 1, '2021-04-21 01:31:24', '2021-04-21 01:31:24'),
(25, 42, '/upload/mp4/161896869042.mp4', 2, '2021-04-21 01:31:30', '2021-04-21 01:31:30'),
(26, 42, '/upload/mp4/161896870042.mp4', 3, '2021-04-21 01:31:40', '2021-04-21 01:31:40'),
(27, 42, '/upload/mp4/161896870742.mp4', 4, '2021-04-21 01:31:47', '2021-04-21 01:31:47'),
(28, 43, '/upload/mp4/161896895843.mp4', 1, '2021-04-21 01:35:58', '2021-04-21 01:35:58'),
(29, 43, '/upload/mp4/161896896443.mp4', 2, '2021-04-21 01:36:04', '2021-04-21 01:36:04'),
(30, 43, '/upload/mp4/161896897043.mp4', 3, '2021-04-21 01:36:10', '2021-04-21 01:36:10'),
(31, 43, '/upload/mp4/161896897743.mp4', 4, '2021-04-21 01:36:17', '2021-04-21 01:36:17'),
(32, 44, '/upload/mp4/161896995744.mp4', 1, '2021-04-21 01:52:37', '2021-04-21 01:52:37'),
(33, 44, '/upload/mp4/161896996444.mp4', 2, '2021-04-21 01:52:44', '2021-04-21 01:52:44'),
(34, 44, '/upload/mp4/161896997144.mp4', 3, '2021-04-21 01:52:51', '2021-04-21 01:52:51'),
(35, 44, '/upload/mp4/161896997744.mp4', 4, '2021-04-21 01:52:57', '2021-04-21 01:52:57'),
(36, 44, '/upload/mp4/161896998444.mp4', 5, '2021-04-21 01:53:04', '2021-04-21 01:53:04'),
(37, 44, '/upload/mp4/161896999144.mp4', 6, '2021-04-21 01:53:11', '2021-04-21 01:53:11'),
(38, 45, '/upload/mp4/161897000845.mp4', 1, '2021-04-21 01:53:28', '2021-04-21 01:53:28'),
(39, 45, '/upload/mp4/161897001345.mp4', 2, '2021-04-21 01:53:33', '2021-04-21 01:53:33'),
(40, 45, '/upload/mp4/161897001945.mp4', 3, '2021-04-21 01:53:39', '2021-04-21 01:53:39'),
(41, 46, '/upload/mp4/161897007346.mp4', 1, '2021-04-21 01:54:33', '2021-04-21 01:54:33'),
(42, 46, '/upload/mp4/161897008046.mp4', 2, '2021-04-21 01:54:40', '2021-04-21 01:54:40'),
(43, 46, '/upload/mp4/161897008646.mp4', 3, '2021-04-21 01:54:46', '2021-04-21 01:54:46'),
(44, 46, '/upload/mp4/161897009246.mp4', 4, '2021-04-21 01:54:52', '2021-04-21 01:54:52'),
(45, 47, '/upload/mp4/161897236247.mp4', 1, '2021-04-21 02:32:42', '2021-04-21 02:32:42'),
(46, 47, '/upload/mp4/161897236847.mp4', 2, '2021-04-21 02:32:48', '2021-04-21 02:32:48'),
(47, 47, '/upload/mp4/161897237747.mp4', 3, '2021-04-21 02:32:57', '2021-04-21 02:32:57'),
(48, 47, '/upload/mp4/161897240047.mp4', 4, '2021-04-21 02:33:20', '2021-04-21 02:33:20'),
(49, 47, '/upload/mp4/161897240847.mp4', 5, '2021-04-21 02:33:28', '2021-04-21 02:33:28'),
(50, 47, '/upload/mp4/161897245147.mp4', 6, '2021-04-21 02:34:11', '2021-04-21 02:34:11'),
(51, 47, '/upload/mp4/161897246247.mp4', 7, '2021-04-21 02:34:22', '2021-04-21 02:34:22'),
(52, 48, '/upload/mp4/161897272448.mp4', 1, '2021-04-21 02:38:44', '2021-04-21 02:38:44'),
(53, 48, '/upload/mp4/161897273048.mp4', 2, '2021-04-21 02:38:50', '2021-04-21 02:38:50'),
(54, 48, '/upload/mp4/161897273748.mp4', 3, '2021-04-21 02:38:57', '2021-04-21 02:38:57'),
(55, 48, '/upload/mp4/161897274348.mp4', 3, '2021-04-21 02:39:03', '2021-04-21 02:39:03'),
(56, 48, '/upload/mp4/161897275048.mp4', 4, '2021-04-21 02:39:10', '2021-04-21 02:39:10'),
(57, 48, '/upload/mp4/161897275648.mp4', 5, '2021-04-21 02:39:16', '2021-04-21 02:39:16'),
(58, 48, '/upload/mp4/161897276348.mp4', 6, '2021-04-21 02:39:23', '2021-04-21 02:39:23'),
(59, 31, '/upload/mp4/161905826331.mp4', 3, '2021-04-22 02:24:23', '2021-04-22 02:24:23'),
(60, 49, '/upload/mp4/162009986649.mp4', 1, '2021-05-04 03:44:26', '2021-05-04 03:44:26'),
(61, 49, '/upload/mp4/162009987249.mp4', 2, '2021-05-04 03:44:32', '2021-05-04 03:44:32'),
(62, 49, '/upload/mp4/162009987949.mp4', 3, '2021-05-04 03:44:39', '2021-05-04 03:44:39'),
(63, 49, '/upload/mp4/162009988549.mp4', 4, '2021-05-04 03:44:45', '2021-05-04 03:44:45'),
(64, 49, '/upload/mp4/162009989249.mp4', 5, '2021-05-04 03:44:52', '2021-05-04 03:44:52'),
(65, 50, '/upload/mp4/162009991250.mp4', 1, '2021-05-04 03:45:12', '2021-05-04 03:45:12'),
(66, 50, '/upload/mp4/162009991850.mp4', 2, '2021-05-04 03:45:18', '2021-05-04 03:45:18'),
(67, 50, '/upload/mp4/162009992450.mp4', 3, '2021-05-04 03:45:24', '2021-05-04 03:45:24'),
(68, 51, '/upload/mp4/162010006851.mp4', 1, '2021-05-04 03:47:48', '2021-05-04 03:47:48'),
(69, 52, '/upload/mp4/162010031852.mp4', 1, '2021-05-04 03:51:58', '2021-05-04 03:51:58'),
(70, 52, '/upload/mp4/162010032352.mp4', 2, '2021-05-04 03:52:04', '2021-05-04 03:52:04'),
(71, 52, '/upload/mp4/162010033152.mp4', 3, '2021-05-04 03:52:11', '2021-05-04 03:52:11'),
(72, 52, '/upload/mp4/162010033852.mp4', 4, '2021-05-04 03:52:18', '2021-05-04 03:52:18'),
(73, 52, '/upload/mp4/162010034452.mp4', 5, '2021-05-04 03:52:24', '2021-05-04 03:52:24'),
(74, 53, '/upload/mp4/162010052753.mp4', 1, '2021-05-04 03:55:27', '2021-05-04 03:55:27'),
(75, 53, '/upload/mp4/162010053253.mp4', 2, '2021-05-04 03:55:32', '2021-05-04 03:55:32'),
(76, 53, '/upload/mp4/162010053853.mp4', 3, '2021-05-04 03:55:38', '2021-05-04 03:55:38'),
(77, 53, '/upload/mp4/162010054353.mp4', 4, '2021-05-04 03:55:43', '2021-05-04 03:55:43'),
(78, 53, '/upload/mp4/162010054953.mp4', 5, '2021-05-04 03:55:49', '2021-05-04 03:55:49'),
(79, 53, '/upload/mp4/162010055453.mp4', 6, '2021-05-04 03:55:54', '2021-05-04 03:55:54'),
(80, 54, '/upload/mp4/162010076854.mp4', 1, '2021-05-04 03:59:28', '2021-05-04 03:59:28'),
(81, 54, '/upload/mp4/162010077354.mp4', 2, '2021-05-04 03:59:33', '2021-05-04 03:59:33'),
(82, 54, '/upload/mp4/162010078054.mp4', 3, '2021-05-04 03:59:40', '2021-05-04 03:59:40'),
(83, 55, '/upload/mp4/162010252955.mp4', 1, '2021-05-04 04:28:49', '2021-05-04 04:28:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `film`
--

CREATE TABLE `film` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMDb` double(8,2) NOT NULL DEFAULT 0.00,
  `so_danh_gia` int(11) NOT NULL DEFAULT 0,
  `nam_sx` int(11) NOT NULL,
  `mota` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `luot_xem` int(11) NOT NULL DEFAULT 0,
  `quoc_gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_trailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_delete` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `film`
--

INSERT INTO `film` (`id`, `img`, `img_background`, `name`, `IMDb`, `so_danh_gia`, `nam_sx`, `mota`, `luot_xem`, `quoc_gia`, `link_trailer`, `flag_delete`, `created_at`, `updated_at`) VALUES
(31, '/upload/avatar/16188910191.png', '/upload/avatar/16188910192.png', 'Soul (2020)', 5.00, 1, 2020, 'Joe Gardner, một giáo viên trường trung học tại thành phố New York sầm uất và nhộn nhịp. Ông ấp ủ một tình yêu mãnh liệt dành cho nhạc jazz. Tuy nhiên, Joe chưa kịp thực hiện được ước mơ của mình thì một tai nạn trớ trêu vô tình đã tách rời linh hồn và thể xác của ông. Linh hồn của Joe tỉnh dậy tại một trung tâm nơi những linh hồn khác đang rèn luyện chuẩn bị cho một kiếp người mới.', 8, 'Mỹ', '/upload/mp4/1618891366.mp4', 1, '2021-04-20 03:56:59', '2021-04-23 03:49:30'),
(32, '/upload/avatar/16188917601.png', '/upload/avatar/16188917602.png', 'Godzilla vs. Kong', 3.64, 11, 2021, 'Khi hai kẻ thù truyền kiếp gặp nhau trong một trận chiến ngoạn mục, số phận của cả thế giới vẫn còn bị bỏ ngỏ… Bị đưa khỏi Đảo Đầu Lâu, Kong cùng Jia, một cô bé mồ côi có mối liên kết mạnh mẽ với mình và đội bảo vệ đặc biệt hướng về mái nhà mới. Bất ngờ, nhóm đụng độ phải Godzilla hùng mạnh, tạo ra một làn sóng hủy diệt trên toàn cầu. Thực chất, cuộc chiến giữa hai kẻ khổng lồ dưới sự thao túng của các thế lực vô hình mới chỉ là điểm khởi đầu để khám phá những bí ẩn nằm sâu trong tâm Trái đất.', 13, 'Mỹ', '/upload/mp4/1618891760.mp4', 1, '2021-04-20 04:09:20', '2021-04-23 03:12:50'),
(33, '/upload/avatar/16188921641.jfif', '/upload/avatar/16188921642.jfif', 'Love Scenery', 0.00, 0, 2021, 'Lương thần mỹ cảnh hảo thời quang (Lương Thần Mỹ Cảnh Hảo Thời Quang) được cải biên từ tiểu thuyết Minh thương dễ tránh, yêu thầm khó phòng của tác giả Kiều Diêu. Bộ phim kể về tình yêu vô cùng đẹp và lãng mạn của chàng sinh viên Lục Cảnh và cô ca sĩ Lương Thần.Trong phim, Lâm Nhất hoá thân thành Lục Cảnh, sinh viên năm 4 chuyên ngành nghiên cứu Khoa học máy tính hệ thống cơ sở dữ liệu lớn. Từ Lộ đảm nhận vai Lương Thần, một nữ ca sĩ tài năng, luôn truyền năng lượng tích cực đến khán giả.', 5, 'Trung Quốc', '/upload/mp4/1618892164.mp4', 1, '2021-04-20 04:16:04', '2021-04-20 04:53:44'),
(34, '/upload/avatar/16188931801.jfif', '/upload/avatar/16188931802.jfif', 'Vincenzo', 4.00, 1, 2021, 'Phim Vincenzo là bộ phim thuộc thể loại hành động, tội phạm xen lẫn những yếu tố hài hước, lãng mãn. Phim do đạo diễn nổi tiếng Kim Hee Won sản xuất cùng sự góp mặt của dàn diễn viên tài năng như Song Joong Ki, Jeon Yeo Bin, Ok Taecyeon,...\r\nNội dung của phim xoay quanh nhân vật Vincenzo Cassano (do Song Joong Ki thủ vai), anh tên thật là Park Ju Hyeong. Năm tám tuổi, anh được một gia đình ở Ý nhận nuôi và chăm sóc. Vincenzo là luật sư tư vấn pháp lý cho tập đoàn Mafia Cassano và đồng thời anh cũng là trùm mafia khét tiếng ở Ý. Những cuộc chiến tranh nội bộ nổ ra, anh không còn đường nào khác, bắt buộc phải trở về Hàn Quốc.', 2, 'Hàn Quốc', '/upload/mp4/1618893180.mp4', 1, '2021-04-20 04:33:00', '2021-04-20 04:56:07'),
(39, '/upload/avatar/16188973151.jfif', '/upload/avatar/16188973152.jfif', 'kjsdnln', 0.00, 0, 22, 'ld', 0, 'kasdlakn', NULL, 0, '2021-04-20 05:41:55', '2021-04-20 05:42:01'),
(40, '/upload/avatar/16188981831.jpg', '/upload/avatar/16188981832.jpg', 'name7', 0.00, 0, 2021, 'hhhh', 0, 'hhhh', '/upload/mp4/1618898183.mp4', 0, '2021-04-20 05:56:23', '2021-04-20 05:59:00'),
(41, '/upload/avatar/16189683971.jfif', '/upload/avatar/16189683972.jfif', 'Outside the Wire', 4.00, 1, 2021, 'Vùng Chiến Sự Hiểm Nguy kể về trong tương lai không xa, một phi công máy bay không người lái ở vùng chiến sự phải hợp tác với một sĩ quan người máy tuyệt mật nhằm ngăn chặn một vụ tấn công hạt nhân.', 21, 'Mỹ', '/upload/mp4/1618968397.mp4', 1, '2021-04-21 01:26:37', '2021-04-21 01:30:59'),
(42, '/upload/avatar/16189686291.jfif', '/upload/avatar/16189686292.jfif', 'The Liberator', 4.00, 1, 2020, 'Một nhóm quân nhân hổ lốn nhưng cực kỳ dũng cảm trở thành những chiến binh anh dũng nhất của cuộc tấn công vào châu Âu trong Thế chiến II. Dựa trên các sự kiện có thật.', 1, 'Mỹ', '/upload/mp4/1618968629.mp4', 1, '2021-04-21 01:30:29', '2021-04-21 01:31:47'),
(43, '/upload/avatar/16189689321.jfif', '/upload/avatar/16189689322.jfif', 'Amend: The Fight for America', 4.00, 1, 2021, 'Will Smith dẫn dắt góc nhìn về cuộc đấu tranh cho quyền bình đẳng ở Mỹ, biến đổi từng ngày và thường gây chết chóc, qua lăng kính của Tu chính án thứ 14 Hiến pháp Hoa Kỳ.', 1, 'Mỹ', '/upload/mp4/1618968932.mp4', 1, '2021-04-21 01:35:32', '2021-04-21 01:36:17'),
(44, '/upload/avatar/16189696041.jfif', '/upload/avatar/16189696042.jfif', 'Snowdrop', 3.50, 2, 2021, 'Snowdrop là câu chuyện tình yêu giữa một cô gái đáng yêu, nhiệt thành Eun Youn Cho (Jisoo đóng) và anh chàng Im Soo Ho (Jung Hae In đóng). Youn Cho là sinh viên năm nhất và luôn là cô gái mang lại không khí vui tươi, tràn trề sức sống cho cả ký túc xá. Trong một buổi tối tình cờ, cô phát hiện ra Soo Ho mình đầy máu me xông vào ký túc xá của cô. Không ngần ngại, cô đã dấu Soo Ho và tự mình chăm sóc vết thương cho anh ấy và câu chuyện của họ bắt đầu.\r\nIm Soo Ho vốn là một sinh viên gốc Hàn sinh sống và lớn lên tại Đức, là một chàng trai hoàn hảo trong mắt nhiều cô gái bởi nụ cười quyến rũ cùng nét duyên dáng nhẹ nhàng. Youn Cho lần đầu tiên gặp Soo Ho là trong một buổi tụ tập và có thiện cảm với anh ta ngay từ cái nhìn đầu tiên. Do đó, lần gặp gỡ trớ trêu tại ký túc xá mặc dù biết rõ Pi Seung Hee (Yoon Se Ah đóng) là một giám thị sát thủ của ký túc nhưng cô vẫn quyết che dấu Soo Ho để anh được an toàn.\r\nPhim còn có sự tham gia của Jang Seung Jo trong vai một người đàn ông bí ẩn Lee Gang Mu, người đứng đầu cơ quan Tình báo quốc gia, người luôn cứng rắn và kiên trì với kỷ luật và nhiệm vụ. Đồng nghiệp của Gang Mu là Jang Han Na (Jung Yoo Jin đóng) cũng là một nhân viên nhiệt huyết đằng sau vỏ bọc là một cô nàng nóng nảy và bốc đồng .', 17, 'Hàn Quốc', '/upload/mp4/1618969604.mp4', 1, '2021-04-21 01:46:44', '2021-04-21 01:53:11'),
(45, '/upload/avatar/16189696781.jfif', '/upload/avatar/16189696782.jfif', 'The Debut', 0.00, 0, 2021, 'Sự nổi tiếng là động lực thúc đẩy không ít người muốn trở thành idol, nhưng mấy ai biết được lí do thật sự của Fame khi cô nàng thi tuyển vào nhóm Newtype.\r\nPhim theo chân Fame tìm hiểu những góc khuất của các idol, những niềm đau mà họ phải trải qua cũng như nguyên nhân gây ra cái chết của em gái cô.\r\nLiệu Fame có thành công gia nhập nhóm Newtype để đạt được mục đích của mình không?', 21, 'Thái Lan', '/upload/mp4/1618969678.mp4', 0, '2021-04-21 01:47:58', '2021-05-03 08:43:15'),
(46, '/upload/avatar/16189700601.jfif', '/upload/avatar/16189700602.jfif', 'Youn\'s Stay ,Youn\'s Kitchen Season', 0.00, 0, 2021, 'Youn\'s Stay Vietsub, Youn\'s Kitchen Season 3 (2021)\r\nMùa mới của Youn\'s Kitchen có nhà khách truyền thống của Hàn Quốc ở Jeollanam-do dành cho người nước ngoài đến thăm Hàn Quốc.', 1, 'Hàn Quốc', '/upload/mp4/1618970060.mp4', 1, '2021-04-21 01:54:20', '2021-04-21 01:54:52'),
(47, '/upload/avatar/16189722751.jfif', '/upload/avatar/16189722752.jfif', 'Naruto SD - Rock Lee no Seishun Full-Power Ninden', 4.00, 1, 2021, 'Naruto SD - Rock Lee no Seishun Full-Power Ninden được làm thêm từ manga Rock Lee\'s Springtime of Youth (tác giả: Kenji Taira - là trợ lý của Masashi Kishimoto), những nhân vật hoàn toàn trong manga Naruto Shippuuden (Tác giả: Masashi Kishimoto) nhưng được vẽ lại với phong cách chibi mới.\r\n\r\n* Translate: Snailboo, Nhtmai\r\n* Edit: Xiaojong, abaoabao\r\n* Encode & Upload: Snailboo\r\n* Nguồn: http://206pro.do-talk.com/\r\n\r\nTruyện phim xoay quanh những câu chuyện ngớ ngẩn của Rock Lee - một ninja không hoàn hảo và thậm chí không thể sử dụng nhẫn thuật, tuy nhiên cậu không bao giờ từ bỏ nỗ lực để có thể đạt được ước mơ trở thành một ninja kiệt xuất.\r\n\r\nẨn chứa trong các câu chuyện hài hước (có phần hơi ngớ ngẩn) là những bài học về ý chí và sự kiên cường, trong sáng của thiên tài nỗ lực: Rock Lee.', 1, 'Nhật Bản', '/upload/mp4/1618972275.mp4', 1, '2021-04-21 02:31:15', '2021-04-21 02:34:22'),
(48, '/upload/avatar/16189727141.jfif', '/upload/avatar/16189727142.png', 'My Young Pet General', 0.00, 0, 2021, 'Nội dung phim Thiếu Tướng Quân Thú Cưng Của Tôi: Ở nước Thanh Khâu, bên hồ Thanh Sơn của vùng Giang Châu có một tiệm thú cưng của bà chủ dễ thương tinh nghịch Tô Tiểu Hà (Điền Hy Vy đóng). Cô ấy tình cờ nhặt được một viên Lam Hồn Châu, đánh thức Hoàng tử Mèo đến từ DW tinh cầu. Hoàng tử Mèo hóa thần thành soái ca ngôn tình cộng thêm vẻ ngoài thần bí với tên gọi Mạc Tu Nhiễm (Tiêu Khải Trung đóng). Cả 2 cùng kí kết một bản khế ước nô bộc, mở ra một câu chuyện tình yêu nhân thú xuyên không vũ trụ, đánh bật mọi giống loài, cùng khám phá ra bí mật sau màn sương.', 0, 'Trung Quốc', '/upload/mp4/1618972714.mp4', 0, '2021-04-21 02:38:34', '2021-05-03 08:53:54'),
(49, '/upload/avatar/16200996391.jpg', '/upload/avatar/16200996392.jfif', 'Kumo Desu ga, Nani ka?', 5.00, 1, 2021, 'Tôi Là Nhện Đấy, Có Sao Không? chuyển thể từ tiểu thuyết hành đông, viễn tưởng hài hước nổi tiếng cùng tên của tác giả Baba Okina. Một thế giới mà Anh hùng và Ma vương liên tục đối đầu nhau. Sức mạnh ma thuật khổng lồ của trận chiến gây ra đã xuyên qua một thế giới khác và làm nổ chết tất cả học sinh trong một lớp học. Những học sinh đó được hồi sinh lại ở thế giới khác. Cô nàng nữ chính của chúng ta là Kumoko - một nữ sinh lập dị và cô độc của lớp học. Đã tái sinh thành nhện, cô nhanh chóng thích ứng với hoàn cảnh bằng một ý chí mạnh mẽ để có thể sống sót được ở thế giới khác. Bé nhên được khai sinh với những trận chiến sống còn bắt đầu.', 1, 'Nhật Bản', '/upload/mp4/1620099639.mp4', 1, '2021-05-04 03:40:39', '2021-05-04 03:44:52'),
(50, '/upload/avatar/16200998511.jfif', '/upload/avatar/16200998512.jfif', 'Hướng Dương Ngược Nắng Phần 2', 0.00, 0, 2021, 'Phim Hướng Dương Ngược Nắng phần 2 tiếp tục khai thác mảng đề tài gia đình vốn là thế mạnh của mình, NSƯT - đạo diễn Vũ Trường Khoa sẽ gửi tới khán giả bộ phim Hướng dương ngược nắng. Câu chuyện xoay quanh các thành viên nhà bà Bạch Cúc (do NSND Thu Hà thủ vai) với những mâu thuẫn chồng chéo và sự tranh giành quyền lực tại công ty của gia đình. Hướng dương ngược nắng tiếp tục có sự tái hợp của \"cặp đôi vàng\" Hồng Diễm - Hồng Đăng. Tuy nhiên, theo chia sẻ của cặp đôi, lần tái ngộ này sẽ có nhiều khác biệt. \"Minh Châu là một cô gái cá tính, bề ngoài nhu mì nhưng bên trong lại cực kỳ nổi loạn. So với các vai diễn trước đây, Minh Châu có nhiều Hồng Diễm ở trong đó nhất\" - diễn viên Hồng Diễm tiết lộ - \"Đây cũng là bộ phim đầu tiên mà Hồng Diễm và Hồng Đăng được yêu nhau từ đầu phim\". Trong khi đó, Hồng Đăng cũng bật mí: \"Nhân vật mới (Trung Kiên) trong Hướng dương ngược nắng có nhiều điều bất ngờ nhưng trong đó có một điều khá thú vị mà khán giả rất mong chờ - đó là sự góp mặt của tôi và Hồng Diễm. Khán giả thường thấy chúng tôi trải qua một cuộc tình đầy trắc trở nhưng ở bộ phim này, Hồng Diễm xuất hiện với một hình ảnh hoàn toàn khác so với tất cả các vai diễn trước đây và tôi cũng vậy\".', 0, 'Việt Nam', '/upload/mp4/1620099851.mp4', 1, '2021-05-04 03:44:11', '2021-05-04 03:45:24'),
(51, '/upload/avatar/16201000581.jfif', '/upload/avatar/16201000582.jfif', 'Mortal Kombat', 0.00, 0, 2021, 'Mortal Kombat: Cuộc Chiến Sinh Tử xoay quanh võ sĩ võ thuật tổng hợp Cole Young (Lewis Tan), người mang trên mình một vết chàm rồng đen bí ẩn - biểu tượng của Mortal Kombat. Cole Young không hề biết về dòng máu bí ẩn đang chảy trong người anh, hay vì sao anh lại bị tên sát thủ Sub-Zero (Joe Taslim) săn lùng. Vì sự an nguy của gia đình, Cole cùng với một nhóm những chiến binh đã được tuyển chọn để tham gia vào một trận chiến đẫm máu nhằm chống lại những kẻ thù đến từ Outworld.', 1, 'Mỹ', '/upload/mp4/1620100058.mp4', 1, '2021-05-04 03:47:38', '2021-05-04 03:47:48'),
(52, '/upload/avatar/16201003091.jfif', '/upload/avatar/16201003092.jfif', 'Running Man', 0.00, 0, 2015, 'Running Man Vietsub: DANH SÁCH TẬP - KHÁCH MỜI (2010-2019)\r\nNĂM 2019\r\nTập 480 (08/12): Chạy Đến Với Bạn: Dự Án Thu Hút Các Nhà Đầu Tư {Khách mời: Kang Han Na, Lee Hee Jin, Yoo Byung Jae, YooA (Oh My Girl)}. Rating:…\r\nTập 479 (01/12): Với Sự Nghi Ngờ {Không có khách mời}. Rating: 7.1%\r\nTập 478 (24/11): Truyện Ma SBS Phần 2 {Khách mời: Choi Ri, Heo Kyung Hwan, Park Jin Young (Got7), Seo Eun Soo}. Rating: 6.8%\r\nTập 477 (17/11): Truyện Ma SBS {Khách mời: Choi Ri, Heo Kyung Hwan, Hyuna, Kang Han Na, Lee Guk Joo, Park Jin Young (Got7), Seo Eun Soo, Sihyeon}. Rating: 7.9%\r\nTập 476 (10/11): Trại Động Vật Bí Ẩn {Khách mời: Hyuna, Kang Han Na, Lee Guk Joo, Sihyeon}. Rating: 7.3%\r\nTập 475 (03/11): Running Man Michelin Gourmet Eaters {Khách mời: Hong Hyun Hee, Park Ji Hyun}. Rating: 6.6%', 0, 'Hàn Quốc', '/upload/mp4/1620100309.mp4', 1, '2021-05-04 03:51:49', '2021-05-04 03:52:24'),
(53, '/upload/avatar/16201004931.jfif', '/upload/avatar/16201004932.jfif', 'One Piece', 4.00, 1, 2021, 'Đảo Hải Tặc là loạt anime One Piece được chuyển thể từ manga cùng tên của họa sĩ Oda Eiichiro. Được sản xuất bởi Toei Animation, đạo diễn bởi Uda Konosuke và Sakai Munehisa, được phát sóng trên kênh Fuji TV tại Nhật Bản từ 20 tháng 10 năm 1999 đến nay còn tại Việt Nam phim được phát sóng trên kênh THVL1 thập niên 2000 HTV3 từ 29 tháng 10 năm 2015 đến nay. Từ ngày 12 tháng 12 năm 2017 loạt phim được POPS Anime mua bản quyền phát hành trên YouTube với phần lồng tiếng mua lại từ HTV3. Bộ phim là câu chuyện về cậu bé Monkey D. Luffy do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết bơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để thành một băng hải tặc, biệt hiệu Hải', 5, 'Nhật Bản', '/upload/mp4/1620100493.mp4', 1, '2021-05-04 03:54:53', '2021-05-04 03:55:54'),
(54, '/upload/avatar/16201007461.jfif', '/upload/avatar/16201007462.png', 'Youth With You Season 3', 0.00, 0, 2021, 'Sau thành công của Thanh xuân có bạn 2, iQIYI đã nhanh chóng khởi động Thanh Xuân Có Bạn mùa 3 và lần này là tuyển chọn 9 người cho một nhóm nhạc nam. Trước đó, bên phía iQIYI bị cư dân mạng không ngừng la mắng vì The9 vừa mới debut chưa được nửa năm đã làm show tuyển chọn mới, họ lo lắng The9 sẽ không được quan tâm nữa.', 0, 'Trung Quốc', '/upload/mp4/1620100746.mp4', 1, '2021-05-04 03:59:06', '2021-05-04 03:59:40'),
(55, '/upload/avatar/16201025171.jfif', '/upload/avatar/16201025172.jfif', 'Pirates of the Caribbean: At World\'s End', 0.00, 0, 202323213, 'Tuy thoát khỏi bụng quái vật nhưng gã Thuyền trưởng điên Jack Sparrow lại bị giam cầm bởi Davy Jones. Davy Jones cùng con tàu ma Flying Dutch lại chịu sự quản lý của Công ty Đông Ấn, những kẻ đang cầm giữ con tim của Davy Jones với tham vọng làm chủ Thất Bể, làm chủ đại dương. Trước tham vọng điên cuồng đó, để giải thoát Jack Sparrow và cùng đập tan tham vọng điên cuồng kia của bè lũ Đông Ấn, chàng thợ rèn Will Turner cùng vợ chưa cưới, Elizabeth Swann hợp tác với Thuyền trưởng Barbossa, chủ sở hữu chính thức của con tàu Black Pearl kiêm kẻ thù xưa của Jack Sparrow giương buồng phiêu lưu qua Thất Bể theo dấu tàu Flying Dutch. Trên đường băng qua vùng biển Đông rộng lớn, họ đã kết thân với thuyền trưởng Sao Feng, kẻ hùng cứ một phương biển Đông và là 1 cái gai trong mắt Công ty Đông Ấn.', 5, 'Mỹasdasdasd as as', '/upload/mp4/1620102517.mp4', 1, '2021-05-04 04:28:37', '2022-01-25 02:38:09'),
(56, '/upload/avatar/16238559601.jfif', '/upload/avatar/16238559602.jfif', 'á', 0.00, 0, 5555, 'ádasd', 0, 'âsdsad', '/upload/mp4/1623855960.mp4', 0, '2021-06-16 15:06:00', '2021-06-16 15:07:00'),
(57, '/upload/avatar/16430715121.png', '/upload/avatar/16430715122.jpeg', 'fafasda', 0.00, 0, 2022, 'fasfasd', 0, 'ádasd', '/upload/mp4/1643071512.mp4', 0, '2022-01-25 00:45:12', '2022-01-25 01:02:00'),
(58, '/upload/avatar/16430718181.jpeg', '/upload/avatar/16430718182.jpeg', 'ddddd', 0.00, 0, 2121, 'ádasd', 0, 'ádad', '/upload/mp4/1643071818.mp4', 0, '2022-01-25 00:50:18', '2022-01-25 01:00:16'),
(59, '/upload/avatar/16430722521.png', '/upload/avatar/16430722522.png', 'dddd', 0.00, 0, 2222, 'ddddd', 0, 'ddddd', '/upload/mp4/1643072252.mp4', 0, '2022-01-25 00:57:32', '2022-01-25 01:00:40'),
(60, '/upload/avatar/16430726361.png', '/upload/avatar/16430726362.png', 'dddd', 0.00, 0, 2222, 'ddddd', 0, 'ddddd', NULL, 1, '2022-01-25 01:03:56', '2022-01-25 01:03:56'),
(61, '/upload/avatar/16430728771.png', '/upload/avatar/16430728772.png', 'ddd', 0.00, 0, 2222, 'ád', 0, 'ád', '/upload/mp4/1643072877.mp4', 1, '2022-01-25 01:07:57', '2022-01-25 01:07:57'),
(62, '/upload/avatar/16430789111.png', '/upload/avatar/16430789112.png', 'phim 1', 0.00, 0, 2022, 'mo ta', 0, 'viet nam', '/upload/mp4/1643078911.mp4', 1, '2022-01-25 02:48:31', '2022-01-25 02:48:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `film_review`
--

CREATE TABLE `film_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `film_review`
--

INSERT INTO `film_review` (`id`, `id_user`, `id_film`, `created_at`, `updated_at`) VALUES
(1, 0, 32, '2021-04-23 03:34:52', '2021-04-23 03:34:52'),
(2, 0, 32, '2021-04-23 03:45:28', '2021-04-23 03:45:28'),
(3, 0, 32, '2021-04-23 03:45:29', '2021-04-23 03:45:29'),
(4, 0, 32, '2021-04-23 03:45:31', '2021-04-23 03:45:31'),
(5, 1, 32, '2021-04-23 03:46:34', '2021-04-23 03:46:34'),
(6, 1, 31, '2021-04-23 03:49:30', '2021-04-23 03:49:30'),
(7, 1, 43, '2021-04-23 07:50:29', '2021-04-23 07:50:29'),
(8, 1, 41, '2021-04-23 07:58:20', '2021-04-23 07:58:20'),
(9, 1, 47, '2021-04-23 08:00:02', '2021-04-23 08:00:02'),
(10, 1, 34, '2021-04-23 08:01:53', '2021-04-23 08:01:53'),
(11, 1, 42, '2021-05-03 06:51:05', '2021-05-03 06:51:05'),
(12, 1, 44, '2021-05-03 06:52:47', '2021-05-03 06:52:47'),
(13, 1, 53, '2021-05-04 04:10:16', '2021-05-04 04:10:16'),
(14, 1, 49, '2021-06-16 14:37:48', '2021-06-16 14:37:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(20, '2016_06_01_000004_create_oauth_clients_table', 1),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(22, '2021_04_14_084907_create_admin_table', 1),
(23, '2021_04_14_085515_create_user_table', 1),
(24, '2021_04_14_090411_create_category_table', 1),
(25, '2021_04_14_090614_create_film_review_table', 1),
(26, '2021_04_14_090819_create_your_film_table', 1),
(28, '2021_04_14_091210_create_views_from_time_to_time_table', 1),
(29, '2021_04_14_091338_create_category_film_table', 1),
(30, '2021_04_14_091510_create_episode_table', 1),
(31, '2021_04_14_091610_create_comment_table', 1),
(32, '2021_04_14_092929_create_password_reset_table', 1),
(34, '2021_04_14_090936_create_film_table', 2),
(35, '2021_05_17_170238_create_jobs_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset`
--

CREATE TABLE `password_reset` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'asdsd@asd', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:12:04', '2021-05-17 09:12:04'),
(2, 'asd@asd', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:16:34', '2021-05-17 09:16:34'),
(3, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:35:38', '2021-05-17 09:35:38'),
(4, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:38:35', '2021-05-17 09:38:35'),
(5, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:42:34', '2021-05-17 09:42:34'),
(6, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:45:36', '2021-05-17 09:45:36'),
(7, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:48:41', '2021-05-17 09:48:41'),
(8, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:57:34', '2021-05-17 09:57:34'),
(9, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:58:12', '2021-05-17 09:58:12'),
(10, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:58:19', '2021-05-17 09:58:19'),
(11, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 09:58:32', '2021-05-17 09:58:32'),
(12, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:04:47', '2021-05-17 10:04:47'),
(13, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:05:29', '2021-05-17 10:05:29'),
(14, 'otoshsimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:07:17', '2021-05-17 10:07:17'),
(15, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:08:34', '2021-05-17 10:08:34'),
(16, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:09:19', '2021-05-17 10:09:19'),
(17, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:10:10', '2021-05-17 10:10:10'),
(18, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:10:57', '2021-05-17 10:10:57'),
(19, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:11:08', '2021-05-17 10:11:08'),
(20, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:12:42', '2021-05-17 10:12:42'),
(21, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:13:39', '2021-05-17 10:13:39'),
(22, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:14:52', '2021-05-17 10:14:52'),
(23, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:16:13', '2021-05-17 10:16:13'),
(24, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:16:39', '2021-05-17 10:16:39'),
(25, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:18:46', '2021-05-17 10:18:46'),
(26, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:19:52', '2021-05-17 10:19:52'),
(27, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:20:51', '2021-05-17 10:20:51'),
(28, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:21:12', '2021-05-17 10:21:12'),
(29, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:22:36', '2021-05-17 10:22:36'),
(30, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:23:04', '2021-05-17 10:23:04'),
(31, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:23:46', '2021-05-17 10:23:46'),
(32, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:24:36', '2021-05-17 10:24:36'),
(33, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:26:29', '2021-05-17 10:26:29'),
(34, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:27:26', '2021-05-17 10:27:26'),
(35, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:28:04', '2021-05-17 10:28:04'),
(36, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:29:12', '2021-05-17 10:29:12'),
(37, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:30:32', '2021-05-17 10:30:32'),
(38, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:31:33', '2021-05-17 10:31:33'),
(39, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:33:09', '2021-05-17 10:33:09'),
(40, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:33:46', '2021-05-17 10:33:46'),
(41, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:34:29', '2021-05-17 10:34:29'),
(42, 'otoshimono9x@gmail.com', 'XHCfXLCF8R4EFCoUwUNFmQA2ZWZQR9T9Uws98c3P', '1', '2021-05-17 10:34:41', '2021-05-17 10:34:41'),
(43, 'otoshimono9x@gmail.com', '$2y$10$GMRC2lOQo2w95ECGiiOZHeuXML2l9.1en2Wj0Itd5Qc2xOMbMz2AW', '2', '2021-05-18 02:17:54', '2021-05-18 02:17:54'),
(44, 'otoshimono9x@gmail.com', '$2y$10$ueuEb58FyQNnDEIOZ7MgWOHHLJI2WVu2TQycEG1uBXnIViQ3BJHBO', '0', '2021-05-18 02:25:22', '2021-05-18 02:27:16'),
(45, 'otoshimono9x@gmail.com', '$2y$10$lNQ9S.TebtNULQpU2VzanOR6A6YXkdrlBSDKAJDBrasPgepmQFjqS', '0', '2021-05-18 02:28:31', '2021-05-18 02:28:52'),
(46, 'otoshimono9x@gmail.com', '$2y$10$Q1kQgpOUIS6SHsDKj2F9peI448PWh1Yy4ygX.o7ZjeR1TWnuD6Rp.', '0', '2021-06-13 14:43:57', '2021-06-13 14:45:32'),
(47, 'otoshimono9x@gmail.com', '$2y$10$bGrg9lusq92TVqkNEySC3.FTtc5LplG2151JOdcQ9obZxkRKBt1w6', '1', '2021-06-13 14:44:28', '2021-06-13 14:44:28'),
(48, 'otoshimono9x@gmail.com', '$2y$10$czHHCxM7mxFi57QTTIt5Ju224Kkwk4Dn61zMlWK94d15csDUYxsla', '0', '2021-06-13 15:04:37', '2021-06-13 15:05:22'),
(49, 'otoshimono9x@gmail.com', '$2y$10$oodXy5gnHI7I0UWS26pMX.R4P2H7bZ1FTRkmOMCdN14LDgKiigemi', '1', '2021-06-16 13:32:30', '2021-06-16 13:32:30'),
(50, 'otoshimono9x@gmial.com', '$2y$10$jTaXYNa5LU.NQ6AS3V0CyeLe192T1Ji7l.eclbTEBpk69hiC4MZui', '1', '2021-06-17 05:53:08', '2021-06-17 05:53:08'),
(51, 'otoshimono9x@gmail.com', '$2y$10$obVDFrRZadmviCWDe6xK1u611UgIMXs5zVegwElwXWbNW4iOa.mGe', '1', '2022-01-23 10:05:52', '2022-01-23 10:05:52'),
(52, 'otoshimono9x@gmail.com', '$2y$10$dIoSLImJzd5GR1SLlIwvK.Ug29QUn0Kpv3WuR5Sm5E156l94KT.ue', '1', '2022-01-23 10:09:44', '2022-01-23 10:09:44'),
(53, 'otoshimono9x@gmail.com', '$2y$10$hhsReiO1NMdZXRhvt9GJ3eHg3A1cOStGApg.tN7FDFGB8zdwAjkX.', '1', '2022-01-23 10:15:56', '2022-01-23 10:15:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `flag_delete` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `user_name`, `password`, `name`, `avatar`, `birthday`, `flag_delete`, `created_at`, `updated_at`) VALUES
(1, 'otoshimono9x@gmail.com', 'user', '$2y$10$pH5GeCN2Hg/bDnV2b4et5uNo7/K2o/LUk7xB9zLNZ6VwlfT19qk2m', 'rrrr123123', '/upload/avatar/16195025711.png', '2021-04-02', 1, NULL, '2021-06-13 15:05:22'),
(2, 'akjsbd@kasnd.asdj', 'ajksnd', '$2y$10$NLjnO8ythNGMc8iogQR0i.WFLhQ2XwUnERjVEM4kdpEFdSDZgbGRi', 'kjsnd', '/upload/avatar/1618544465.png', '2021-04-04', 1, NULL, NULL),
(3, 'asd@asd.asd', 'asd', '$2y$10$HWkitHb5Gm8n3g3wWx93neYauJZfbnHz9Jo26HY7vScHpmOa.W94a', 'aksdjn', NULL, NULL, 0, NULL, '2021-04-20 02:34:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `views_from_time_to_time`
--

CREATE TABLE `views_from_time_to_time` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `views_from_time_to_time`
--

INSERT INTO `views_from_time_to_time` (`id`, `role`, `luot_xem`, `id_film`, `created_at`, `updated_at`) VALUES
(24, 1, 2, 41, '2021-05-03 06:10:11', '2021-05-03 06:10:31'),
(25, 1, 1, 46, '2021-05-03 06:22:26', '2021-05-03 06:22:26'),
(26, 1, 1, 31, '2021-05-03 06:24:57', '2021-05-03 06:24:57'),
(27, 1, 11, 41, '2021-05-04 04:14:59', '2021-05-04 05:40:56'),
(28, 1, 5, 55, '2021-05-04 05:28:50', '2021-05-04 05:32:08'),
(29, 1, 3, 31, '2021-05-04 08:07:43', '2021-05-04 08:09:17'),
(30, 1, 1, 49, '2021-05-04 08:13:58', '2021-05-04 08:13:58'),
(31, 1, 3, 53, '2021-05-04 09:02:57', '2021-05-04 09:04:52'),
(32, 1, 2, 32, '2021-05-04 10:27:17', '2021-05-04 10:28:21'),
(33, 1, 1, 33, '2021-05-21 04:20:08', '2021-05-21 04:20:08'),
(34, 1, 13, 44, '2021-05-25 04:16:28', '2021-05-25 09:17:11'),
(35, 1, 1, 33, '2021-05-25 06:54:07', '2021-05-25 06:54:07'),
(36, 1, 2, 31, '2021-05-25 09:18:54', '2021-05-25 09:26:15'),
(37, 1, 1, 33, '2021-05-26 01:39:07', '2021-05-26 01:39:07'),
(38, 1, 1, 43, '2021-06-13 15:45:01', '2021-06-13 15:45:01'),
(39, 1, 2, 34, '2021-06-16 14:27:21', '2021-06-16 14:29:59'),
(40, 1, 4, 44, '2021-06-16 15:00:49', '2021-06-16 15:03:14'),
(41, 1, 2, 53, '2021-06-17 05:48:32', '2021-06-17 05:58:00'),
(42, 1, 1, 47, '2022-06-01 15:14:53', '2022-06-01 15:14:53'),
(43, 1, 1, 51, '2022-06-21 14:30:24', '2022-06-21 14:30:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `your_film`
--

CREATE TABLE `your_film` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `your_film`
--

INSERT INTO `your_film` (`id`, `id_user`, `id_film`, `created_at`, `updated_at`) VALUES
(6, 1, 53, '2021-05-04 04:10:00', '2021-05-04 04:10:00'),
(7, 1, 49, '2021-05-04 08:12:44', '2021-05-04 08:12:44'),
(9, 1, 34, '2021-06-16 14:37:38', '2021-06-16 14:37:38');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_film`
--
ALTER TABLE `category_film`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `film_review`
--
ALTER TABLE `film_review`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `views_from_time_to_time`
--
ALTER TABLE `views_from_time_to_time`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `your_film`
--
ALTER TABLE `your_film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `category_film`
--
ALTER TABLE `category_film`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `episode`
--
ALTER TABLE `episode`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `film`
--
ALTER TABLE `film`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `film_review`
--
ALTER TABLE `film_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `views_from_time_to_time`
--
ALTER TABLE `views_from_time_to_time`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `your_film`
--
ALTER TABLE `your_film`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
