-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2023 lúc 07:43 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_freshshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id_address` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province` varchar(255) NOT NULL,
  `province_id` int(11) NOT NULL,
  `district` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id_address`, `id_user`, `receiver`, `address`, `province`, `province_id`, `district`, `district_id`, `ward`, `ward_id`, `phone`, `email`, `default`, `created_at`, `updated_at`) VALUES
(1, 3, 'Quan', '10 Đường gì đấy', 'Bình Dương', 205, 'Huyện Bàu Bàng', 3132, 'Xã Tân Hưng', 440806, '01901919123', 'cattuongw2000@gmail.com', 1, '2023-01-09 17:00:00', NULL),
(2, 2, 'Hien', '34B Đường 1', 'Quảng Ngãi', 242, 'Huyện Tây Trà', 2222, 'Xã Trà Thanh', 351406, '01901919123', 'didi01092k@gmail.com', 0, '2023-02-09 17:00:00', NULL),
(3, 3, 'Dang', '33 Đường', 'Lào Cai', 269, 'Huyện Bảo Yên', 1891, 'Xã Việt Tiến', 80714, '01901919123', 'cattuongw2018@gmail.com', 0, '2022-12-09 17:00:00', NULL),
(4, 2, 'Tuong', '135 Trần Hưng Đạo', 'Hồ Chí Minh', 202, 'Quận 1', 1442, 'phường Cầu Ông Lãnh', 20104, '0919941037', 'cattuongw2000@gmail.com', 1, '2022-11-09 17:00:00', NULL),
(5, 4, 'Who', '12 Le Van Sy', 'Hồ Chí Minh', 202, 'Quận 3', 1444, 'Phường 5', 20305, '09219221124', 'cattuongw2018@gmail.com', 1, '2023-01-09 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id_banner` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_color` varchar(7) NOT NULL DEFAULT '#000000',
  `content` varchar(255) DEFAULT NULL,
  `content_color` varchar(7) NOT NULL DEFAULT '#838E94',
  `btn_content` varchar(20) DEFAULT NULL,
  `btn_bg_color` varchar(7) NOT NULL DEFAULT '#000000',
  `btn_color` varchar(7) NOT NULL DEFAULT '#ffffff',
  `link` varchar(40) DEFAULT NULL,
  `attr` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id_banner`, `image`, `title`, `title_color`, `content`, `content_color`, `btn_content`, `btn_bg_color`, `btn_color`, `link`, `attr`, `created_at`, `updated_at`) VALUES
(1, 'grocery-banner.png', 'Fruits & Vegetables', '#000000', 'Get Upto 30% Off', '#838E94', 'Shop Now', '#000000', '#ffffff', 'userShowProductCatagory', '0', NULL, NULL),
(2, 'grocery-banner-2.jpg', 'Freshly Baked Buns', '#000000', 'Get Upto 25% Off', '#838E94', 'Shop Now', '#000000', '#ffffff', 'userShowProductCatagory', '1', NULL, NULL),
(3, 'banner-deal.jpg', '100% Organic Stawberry', '#FFFFFF', 'Get the best deal before close.', '#FFFFFF', 'Shop Now', '#099309', '#000000', 'userShowProductCatagory', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `order_code`, `id_user`, `id_product`, `price`, `sale`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'USR2_0', 2, 10, 29000, 0, 200, NULL, NULL),
(2, 'USR2_0', 2, 4, 17000, 0, 400, NULL, NULL),
(3, 'USR2_1', 2, 12, 20000, 0, 500, NULL, NULL),
(4, 'USR2_1', 2, 25, 29000, 0, 500, NULL, NULL),
(5, 'USR2_2', 2, 21, 250000, 20, 300, NULL, NULL),
(6, 'USR2_3', 2, 15, 45000, 0, 700, NULL, NULL),
(7, 'USR2_3', 2, 13, 31000, 20, 340, NULL, NULL),
(8, 'USR2_4', 2, 17, 49000, 30, 1700, NULL, NULL),
(9, 'USR2_4', 2, 19, 40000, 10, 2400, NULL, NULL),
(10, 'USR2_5', 2, 18, 20000, 25, 600, NULL, NULL),
(11, 'USR2_5', 2, 2, 10000, 20, 1000, NULL, NULL),
(12, 'USR2_6', 2, 28, 220000, 0, 600, NULL, NULL),
(13, 'USR2_6', 2, 29, 500000, 1, 400, NULL, NULL),
(14, 'USR2_6', 2, 2, 10000, 20, 1000, NULL, NULL),
(15, 'USR2_7', 2, 18, 220000, 0, 100, NULL, NULL),
(16, 'USR2_7', 2, 26, 330000, 1, 400, NULL, NULL),
(17, 'USR2_7', 2, 2, 10000, 20, 1000, NULL, NULL),
(18, 'USR3_0', 3, 8, 9000, 0, 200, NULL, NULL),
(19, 'USR3_0', 3, 27, 200000, 10, 1000, NULL, NULL),
(20, 'USR3_1', 3, 26, 340000, 10, 100, NULL, NULL),
(21, 'USR3_1', 3, 4, 17000, 20, 160, NULL, NULL),
(22, 'USR3_2', 3, 14, 32000, 20, 160, NULL, NULL),
(23, 'USR3_2', 3, 9, 12000, 0, 460, NULL, NULL),
(24, 'USR3_2', 3, 10, 29000, 10, 460, NULL, NULL),
(25, 'USR3_3', 3, 26, 325000, 0, 440, NULL, NULL),
(26, 'USR3_3', 3, 22, 390000, 20, 500, NULL, NULL),
(27, 'USR3_4', 3, 12, 20000, 40, 500, NULL, NULL),
(28, 'USR3_4', 3, 28, 224000, 0, 200, NULL, NULL),
(29, 'USR3_5', 3, 24, 46000, 0, 500, NULL, NULL),
(30, 'USR3_6', 3, 30, 500000, 0, 100, NULL, NULL),
(31, 'USR3_7', 3, 28, 240000, 0, 500, NULL, NULL),
(32, 'USR3_7', 3, 17, 50000, 0, 700, NULL, NULL),
(33, 'USR3_8', 3, 11, 25000, 10, 500, NULL, NULL),
(34, 'USR3_8', 3, 25, 32000, 10, 100, NULL, NULL),
(35, 'USR3_9', 3, 5, 15000, 10, 100, NULL, NULL),
(36, 'USR3_9', 3, 19, 42000, 10, 400, NULL, NULL),
(37, 'USR3_10', 3, 17, 50000, 20, 100, NULL, NULL),
(38, 'USR3_10', 3, 12, 10000, 10, 1000, NULL, NULL),
(39, 'USR3_11', 3, 1, 12000, 0, 100, NULL, NULL),
(40, 'USR3_11', 3, 22, 222200, 0, 500, NULL, NULL),
(41, 'USR3_12', 3, 15, 40200, 10, 300, NULL, NULL),
(42, 'USR3_12', 3, 2, 19000, 0, 500, NULL, NULL),
(43, 'USR3_13', 3, 28, 230000, 0, 200, NULL, NULL),
(44, 'USR3_13', 3, 25, 32000, 0, 400, NULL, NULL),
(45, 'USR3_14', 3, 20, 35000, 0, 400, NULL, NULL),
(46, 'USR3_14', 3, 21, 254000, 0, 600, NULL, NULL),
(47, 'USR3_15', 3, 20, 35000, 0, 500, NULL, NULL),
(48, 'USR3_15', 3, 27, 190000, 0, 700, NULL, NULL),
(49, 'USR3_16', 3, 27, 190000, 0, 400, NULL, NULL),
(50, 'USR3_16', 3, 16, 220000, 0, 500, NULL, NULL),
(51, 'USR3_17', 3, 29, 500000, 10, 100, NULL, NULL),
(52, 'USR3_18', 3, 16, 220000, 0, 500, NULL, NULL),
(53, 'USR3_19', 3, 1, 12000, 10, 100, NULL, NULL),
(54, 'USR3_19', 3, 26, 330000, 1, 500, NULL, NULL),
(55, 'USR4_0', 4, 1, 12000, 0, 1500, NULL, NULL),
(56, 'USR4_0', 4, 6, 20000, 0, 700, NULL, NULL),
(57, 'USR4_1', 4, 16, 220000, 0, 100, NULL, NULL),
(58, 'USR4_1', 4, 30, 500000, 0, 300, NULL, NULL),
(59, 'USR4_2', 4, 23, 33000, 10, 800, NULL, NULL),
(60, 'USR4_2', 4, 3, 18000, 0, 1000, NULL, NULL),
(61, 'USR4_3', 4, 14, 30000, 0, 200, NULL, NULL),
(62, 'USR4_3', 4, 10, 33000, 0, 300, NULL, NULL),
(63, 'USR4_4', 4, 20, 43000, 0, 300, NULL, NULL),
(64, 'USR4_4', 4, 18, 28000, 10, 200, NULL, NULL),
(65, 'USR4_5', 4, 8, 8000, 10, 1600, NULL, NULL),
(66, 'USR4_5', 4, 19, 40000, 20, 800, NULL, NULL),
(67, 'USR4_6', 4, 29, 500000, 10, 400, NULL, NULL),
(68, 'USR4_6', 4, 24, 43000, 20, 700, NULL, NULL),
(69, 'USR4_7', 4, 14, 30000, 0, 300, NULL, NULL),
(70, 'USR4_7', 4, 27, 190000, 0, 500, NULL, NULL),
(71, 'USR4_8', 4, 6, 20000, 0, 1000, NULL, NULL),
(72, 'USR4_8', 4, 7, 17000, 10, 1900, NULL, NULL),
(73, 'USR4_9', 4, 17, 49000, 10, 400, NULL, NULL),
(74, 'USR4_9', 4, 27, 190000, 0, 200, NULL, NULL),
(75, 'USR4_10', 4, 14, 30000, 0, 900, NULL, NULL),
(76, 'USR4_10', 4, 19, 42000, 10, 600, NULL, NULL),
(77, 'USR4_11', 4, 26, 340000, 10, 700, NULL, NULL),
(78, 'USR4_11', 4, 15, 45000, 0, 500, NULL, NULL),
(79, 'USR4_12', 4, 25, 30000, 0, 800, NULL, NULL),
(80, 'USR4_12', 4, 14, 34000, 10, 500, NULL, NULL),
(81, 'USR4_13', 4, 24, 43000, 0, 500, NULL, NULL),
(82, 'USR4_13', 4, 17, 49000, 10, 500, NULL, NULL),
(83, 'USR4_14', 4, 11, 22000, 10, 1200, NULL, NULL),
(84, 'USR4_14', 4, 7, 14000, 30, 1000, NULL, NULL),
(85, 'USR4_15', 4, 27, 190000, 0, 700, NULL, NULL),
(86, 'USR4_15', 4, 15, 45000, 20, 600, NULL, NULL),
(87, 'USR4_16', 4, 17, 49000, 10, 500, NULL, NULL),
(88, 'USR4_16', 4, 18, 20000, 0, 500, NULL, NULL),
(89, 'USR4_17', 4, 28, 230000, 30, 600, NULL, NULL),
(90, 'USR4_17', 4, 8, 8000, 0, 1500, NULL, NULL),
(91, 'USR4_18', 4, 3, 18000, 0, 500, NULL, NULL),
(92, 'USR4_18', 4, 12, 18000, 10, 200, NULL, NULL),
(93, 'USR4_19', 4, 13, 29000, 40, 400, NULL, NULL),
(94, 'USR4_19', 4, 23, 29000, 0, 200, NULL, NULL),
(95, 'USR4_20', 4, 7, 15000, 0, 2000, NULL, NULL),
(96, 'USR4_20', 4, 15, 45000, 0, 900, NULL, NULL),
(97, 'USR4_21', 4, 17, 49000, 0, 700, NULL, NULL),
(98, 'USR4_21', 4, 5, 14000, 0, 300, NULL, NULL),
(99, 'USR4_22', 4, 18, 20000, 10, 600, NULL, NULL),
(100, 'USR4_22', 4, 19, 40000, 0, 200, NULL, NULL),
(101, 'USR4_23', 4, 29, 500000, 10, 400, NULL, NULL),
(102, 'USR4_23', 4, 28, 230000, 0, 500, NULL, NULL),
(103, 'USR4_24', 4, 9, 12000, 0, 1000, NULL, NULL),
(104, 'USR4_24', 4, 18, 20000, 0, 500, NULL, NULL),
(105, 'USR4_25', 4, 15, 48000, 20, 600, NULL, NULL),
(106, 'USR4_25', 4, 23, 29000, 0, 1300, NULL, NULL),
(107, 'USR4_26', 4, 3, 18000, 0, 500, NULL, NULL),
(108, 'USR4_26', 4, 30, 500000, 0, 200, NULL, NULL),
(109, 'USR4_27', 4, 3, 18000, 0, 500, NULL, NULL),
(110, 'USR4_27', 4, 28, 220000, 0, 200, NULL, NULL),
(111, 'USR4_28', 4, 1, 12000, 10, 500, NULL, NULL),
(112, 'USR4_28', 4, 8, 8000, 0, 2000, NULL, NULL),
(113, 'USR4_29', 4, 13, 29000, 30, 1500, NULL, NULL),
(114, 'USR4_29', 4, 18, 20000, 25, 1200, NULL, NULL),
(115, 'USR5_0', 5, 10, 29000, 0, 700, NULL, NULL),
(116, 'USR5_0', 5, 26, 340000, 0, 200, NULL, NULL),
(117, 'USR5_1', 5, 16, 220000, 0, 300, NULL, NULL),
(118, 'USR5_1', 5, 30, 500000, 0, 300, NULL, NULL),
(119, 'USR5_2', 5, 13, 33000, 10, 500, NULL, NULL),
(120, 'USR5_2', 5, 27, 190000, 0, 800, NULL, NULL),
(121, 'USR5_3', 5, 14, 28000, 0, 500, NULL, NULL),
(122, 'USR5_3', 5, 10, 28000, 0, 500, NULL, NULL),
(123, 'USR5_4', 5, 20, 35000, 0, 500, NULL, NULL),
(124, 'USR5_4', 5, 18, 23000, 10, 600, NULL, NULL),
(125, 'USR5_5', 5, 8, 8000, 0, 1600, NULL, NULL),
(126, 'USR5_5', 5, 19, 42000, 20, 800, NULL, NULL),
(127, 'USR5_6', 5, 29, 520000, 10, 400, NULL, NULL),
(128, 'USR5_6', 5, 24, 43000, 0, 500, NULL, NULL),
(129, 'USR5_7', 5, 14, 30000, 0, 500, NULL, NULL),
(130, 'USR5_7', 5, 27, 200000, 0, 500, NULL, NULL),
(131, 'USR5_8', 5, 16, 230000, 10, 1000, NULL, NULL),
(132, 'USR5_8', 5, 7, 16000, 20, 900, NULL, NULL),
(133, 'USR5_9', 5, 17, 51000, 10, 600, NULL, NULL),
(134, 'USR5_9', 5, 27, 190000, 0, 200, NULL, NULL),
(135, 'USR5_10', 5, 1, 12000, 0, 1300, NULL, NULL),
(136, 'USR5_10', 5, 26, 330000, 10, 400, NULL, NULL),
(137, 'USR5_11', 5, 22, 380000, 0, 400, NULL, NULL),
(138, 'USR5_11', 5, 15, 45000, 0, 600, NULL, NULL),
(139, 'USR5_12', 5, 25, 30000, 20, 900, NULL, NULL),
(140, 'USR5_12', 5, 14, 30000, 0, 500, NULL, NULL),
(141, 'USR5_13', 5, 24, 43000, 0, 500, NULL, NULL),
(142, 'USR5_13', 5, 17, 52000, 10, 500, NULL, NULL),
(143, 'USR5_14', 5, 11, 24000, 20, 1200, NULL, NULL),
(144, 'USR5_14', 5, 7, 18000, 30, 1000, NULL, NULL),
(145, 'USR5_15', 5, 27, 210000, 0, 700, NULL, NULL),
(146, 'USR5_15', 5, 15, 48000, 0, 600, NULL, NULL),
(147, 'USR5_16', 5, 17, 49000, 10, 500, NULL, NULL),
(148, 'USR5_16', 5, 18, 20000, 0, 500, NULL, NULL),
(149, 'USR5_17', 5, 28, 240000, 30, 700, NULL, NULL),
(150, 'USR5_17', 5, 8, 8000, 0, 1500, NULL, NULL),
(151, 'USR5_18', 5, 3, 19000, 0, 900, NULL, NULL),
(152, 'USR5_18', 5, 12, 19000, 10, 1200, NULL, NULL),
(153, 'USR5_19', 5, 13, 29000, 0, 400, NULL, NULL),
(154, 'USR5_19', 5, 23, 29000, 0, 1200, NULL, NULL),
(155, 'USR5_20', 5, 7, 14000, 0, 2000, NULL, NULL),
(156, 'USR5_20', 5, 15, 45000, 0, 900, NULL, NULL),
(157, 'USR5_21', 5, 17, 52000, 10, 700, NULL, NULL),
(158, 'USR5_21', 5, 5, 15000, 0, 1200, NULL, NULL),
(159, 'USR5_21', 5, 25, 30000, 0, 1200, NULL, NULL),
(160, 'USR5_21', 5, 28, 220000, 0, 1200, NULL, NULL),
(161, 'USR5_22', 5, 18, 20000, 10, 600, NULL, NULL),
(162, 'USR5_22', 5, 19, 44000, 10, 400, NULL, NULL),
(163, 'USR5_23', 5, 29, 500000, 0, 200, NULL, NULL),
(164, 'USR5_23', 5, 18, 20000, 10, 900, NULL, NULL),
(165, 'USR5_24', 5, 9, 10000, 0, 400, NULL, NULL),
(166, 'USR5_24', 5, 18, 23000, 0, 500, NULL, NULL),
(167, 'USR5_25', 5, 15, 38000, 20, 600, NULL, NULL),
(168, 'USR5_25', 5, 23, 29000, 0, 700, NULL, NULL),
(169, 'USR5_26', 5, 3, 18000, 0, 500, NULL, NULL),
(170, 'USR5_26', 5, 28, 230000, 0, 900, NULL, NULL),
(171, 'USR5_27', 5, 11, 20000, 0, 500, NULL, NULL),
(172, 'USR5_28', 5, 1, 12000, 10, 1000, NULL, NULL),
(173, 'USR5_28', 5, 6, 17000, 32, 700, NULL, NULL),
(174, 'USR5_28', 5, 8, 8000, 0, 900, NULL, NULL),
(175, 'USR5_29', 5, 13, 29000, 30, 500, NULL, NULL),
(176, 'USR5_29', 5, 29, 500000, 10, 700, NULL, NULL),
(177, 'USR5_29', 5, 20, 35000, 40, 900, NULL, NULL),
(178, 'USR6_0', 6, 10, 27000, 0, 100, NULL, NULL),
(179, 'USR6_0', 6, 26, 280000, 0, 900, NULL, NULL),
(180, 'USR6_1', 6, 16, 240000, 20, 800, NULL, NULL),
(181, 'USR6_1', 6, 30, 500000, 0, 700, NULL, NULL),
(182, 'USR6_2', 6, 23, 30000, 10, 500, NULL, NULL),
(183, 'USR6_2', 6, 3, 18000, 0, 300, NULL, NULL),
(184, 'USR6_3', 6, 14, 30000, 0, 800, NULL, NULL),
(185, 'USR6_3', 6, 10, 17000, 0, 1000, NULL, NULL),
(186, 'USR6_4', 6, 20, 39000, 20, 800, NULL, NULL),
(187, 'USR6_4', 6, 18, 20000, 10, 600, NULL, NULL),
(188, 'USR6_5', 6, 8, 10000, 10, 2300, NULL, NULL),
(189, 'USR6_5', 6, 19, 40000, 0, 700, NULL, NULL),
(190, 'USR6_6', 6, 29, 500000, 10, 400, NULL, NULL),
(191, 'USR6_6', 6, 24, 45000, 0, 800, NULL, NULL),
(192, 'USR6_7', 6, 14, 30000, 0, 800, NULL, NULL),
(193, 'USR6_7', 6, 27, 229000, 0, 500, NULL, NULL),
(194, 'USR6_8', 6, 6, 9000, 0, 1000, NULL, NULL),
(195, 'USR6_8', 6, 7, 12000, 0, 900, NULL, NULL),
(196, 'USR6_9', 6, 17, 120000, 10, 200, NULL, NULL),
(197, 'USR6_9', 6, 27, 220000, 0, 400, NULL, NULL),
(198, 'USR6_10', 6, 1, 12000, 0, 1300, NULL, NULL),
(199, 'USR6_10', 6, 26, 350000, 10, 200, NULL, NULL),
(200, 'USR6_11', 6, 26, 350000, 10, 200, NULL, NULL),
(201, 'USR6_11', 6, 15, 43000, 0, 400, NULL, NULL),
(202, 'USR6_12', 6, 25, 30000, 0, 900, NULL, NULL),
(203, 'USR6_12', 6, 14, 28000, 0, 500, NULL, NULL),
(204, 'USR6_13', 6, 24, 43000, 0, 200, NULL, NULL),
(205, 'USR6_13', 6, 27, 190000, 10, 200, NULL, NULL),
(206, 'USR6_14', 6, 11, 22000, 0, 400, NULL, NULL),
(207, 'USR6_14', 6, 7, 15000, 30, 100, NULL, NULL),
(208, 'USR6_15', 6, 27, 190000, 10, 200, NULL, NULL),
(209, 'USR6_15', 6, 15, 38000, 0, 300, NULL, NULL),
(210, 'USR6_16', 6, 17, 46000, 10, 200, NULL, NULL),
(211, 'USR6_16', 6, 18, 23000, 0, 500, NULL, NULL),
(212, 'USR6_17', 6, 28, 220000, 10, 400, NULL, NULL),
(213, 'USR6_17', 6, 8, 8000, 0, 2500, NULL, NULL),
(214, 'USR6_18', 6, 3, 20000, 20, 800, NULL, NULL),
(215, 'USR6_18', 6, 12, 18000, 20, 900, NULL, NULL),
(216, 'USR6_19', 6, 22, 380000, 0, 390, NULL, NULL),
(217, 'USR6_19', 6, 24, 43000, 20, 900, NULL, NULL),
(218, 'USR6_19', 6, 13, 33000, 40, 900, NULL, NULL),
(219, 'USR6_19', 6, 23, 32000, 0, 800, NULL, NULL),
(220, 'USR6_20', 6, 7, 15000, 0, 2000, NULL, NULL),
(221, 'USR6_20', 6, 15, 40000, 0, 900, NULL, NULL),
(222, 'USR6_21', 6, 17, 55000, 40, 800, NULL, NULL),
(223, 'USR6_21', 6, 5, 14000, 0, 1200, NULL, NULL),
(224, 'USR6_22', 6, 18, 23000, 10, 600, NULL, NULL),
(225, 'USR6_22', 6, 9, 10000, 0, 200, NULL, NULL),
(226, 'USR6_23', 6, 29, 500000, 0, 200, NULL, NULL),
(227, 'USR6_23', 6, 4, 19000, 10, 1900, NULL, NULL),
(228, 'USR6_24', 6, 9, 10000, 0, 200, NULL, NULL),
(229, 'USR6_24', 6, 8, 8000, 0, 500, NULL, NULL),
(230, 'USR6_25', 6, 1, 12000, 10, 1500, NULL, NULL),
(231, 'USR6_25', 6, 12, 18000, 45, 1500, NULL, NULL),
(232, 'USR6_26', 6, 29, 500000, 0, 500, NULL, NULL),
(233, 'USR6_26', 6, 15, 45000, 25, 1000, NULL, NULL),
(234, 'GUT_0', NULL, 20, 32000, 10, 500, NULL, NULL),
(235, 'GUT_0', NULL, 17, 45000, 0, 500, NULL, NULL),
(236, 'GUT_1', NULL, 11, 14000, 0, 500, NULL, NULL),
(237, 'GUT_1', NULL, 23, 30000, 10, 500, NULL, NULL),
(238, 'GUT_2', NULL, 16, 240000, 0, 100, NULL, NULL),
(239, 'GUT_2', NULL, 22, 390000, 0, 300, NULL, NULL),
(240, 'GUT_3', NULL, 15, 42000, 20, 600, NULL, NULL),
(241, 'GUT_3', NULL, 13, 32000, 30, 600, NULL, NULL),
(242, 'GUT_4', NULL, 12, 19000, 0, 540, NULL, NULL),
(243, 'GUT_4', NULL, 11, 22000, 0, 840, NULL, NULL),
(244, 'GUT_5', NULL, 18, 21000, 10, 1200, NULL, NULL),
(245, 'GUT_5', NULL, 1, 12000, 0, 1400, NULL, NULL),
(246, 'GUT_6', NULL, 1, 12000, 0, 2000, NULL, NULL),
(247, 'GUT_6', NULL, 21, 250000, 0, 360, NULL, NULL),
(248, 'GUT_7', NULL, 12, 18000, 10, 340, NULL, NULL),
(249, 'GUT_8', NULL, 13, 33000, 30, 500, NULL, NULL),
(250, 'GUT_8', NULL, 19, 40000, 0, 300, NULL, NULL),
(251, 'GUT_9', NULL, 1, 12000, 0, 1300, NULL, NULL),
(252, 'GUT_10', NULL, 3, 20000, 20, 1000, NULL, NULL),
(253, 'GUT_11', NULL, 22, 380000, 10, 500, NULL, NULL),
(254, 'GUT_11', NULL, 13, 25000, 0, 990, NULL, NULL),
(255, 'GUT_12', NULL, 15, 45000, 0, 700, NULL, NULL),
(256, 'GUT_12', NULL, 18, 24000, 0, 3000, NULL, NULL),
(257, 'GUT_13', NULL, 24, 45000, 0, 1000, NULL, NULL),
(258, 'GUT_13', NULL, 26, 330000, 0, 300, NULL, NULL),
(259, 'GUT_14', NULL, 11, 20000, 0, 2000, NULL, NULL),
(260, 'GUT_14', NULL, 13, 29000, 0, 1600, NULL, NULL),
(261, 'GUT_15', NULL, 24, 43000, 0, 760, NULL, NULL),
(262, 'GUT_15', NULL, 29, 330000, 0, 300, NULL, NULL),
(263, 'GUT_16', NULL, 30, 500000, 0, 300, NULL, NULL),
(264, 'GUT_16', NULL, 3, 20000, 0, 600, NULL, NULL),
(265, 'GUT_17', NULL, 1, 12000, 0, 1920, NULL, NULL),
(266, 'GUT_18', NULL, 2, 13000, 10, 900, NULL, NULL),
(267, 'GUT_18', NULL, 4, 16000, 0, 600, NULL, NULL),
(268, 'GUT_19', NULL, 21, 250000, 0, 960, NULL, NULL),
(269, 'GUT_20', NULL, 12, 20000, 0, 2200, NULL, NULL),
(270, 'GUT_20', NULL, 13, 29000, 20, 1000, NULL, NULL),
(271, 'GUT_21', NULL, 15, 43000, 10, 1000, NULL, NULL),
(272, 'GUT_22', NULL, 18, 23000, 10, 300, NULL, NULL),
(273, 'GUT_22', NULL, 11, 20000, 20, 2000, NULL, NULL),
(274, 'GUT_23', NULL, 24, 45000, 0, 1200, NULL, NULL),
(275, 'GUT_24', NULL, 16, 230000, 0, 900, NULL, NULL),
(276, 'GUT_24', NULL, 10, 29000, 20, 1360, NULL, NULL),
(277, 'GUT_25', NULL, 13, 25000, 0, 290, NULL, NULL),
(278, 'GUT_25', NULL, 23, 29000, 0, 300, NULL, NULL),
(279, 'GUT_26', NULL, 1, 10000, 0, 2300, NULL, NULL),
(280, 'GUT_27', NULL, 2, 10000, 0, 2000, NULL, NULL),
(281, 'GUT_27', NULL, 4, 18000, 10, 1360, NULL, NULL),
(282, 'GUT_28', NULL, 14, 30000, 0, 900, NULL, NULL),
(283, 'GUT_29', NULL, 18, 20000, 20, 800, NULL, NULL),
(284, 'GUT_30', NULL, 15, 45000, 0, 300, NULL, NULL),
(285, 'GUT_31', NULL, 24, 44000, 10, 1600, NULL, NULL),
(286, 'GUT_32', NULL, 27, 220000, 40, 560, NULL, NULL),
(287, 'GUT_32', NULL, 29, 520000, 0, 260, NULL, NULL),
(288, 'GUT_32', NULL, 24, 43000, 20, 500, NULL, NULL),
(289, 'GUT_33', NULL, 17, 49000, 20, 890, NULL, NULL),
(290, 'GUT_33', NULL, 30, 500000, 0, 900, NULL, NULL),
(291, 'GUT_34', NULL, 7, 14000, 0, 900, NULL, NULL),
(292, 'GUT_35', NULL, 6, 16000, 0, 1000, NULL, NULL),
(293, 'GUT_35', NULL, 8, 10000, 0, 1000, NULL, NULL),
(294, 'GUT_36', NULL, 1, 12000, 0, 1200, NULL, NULL),
(295, 'GUT_36', NULL, 2, 10000, 0, 1200, NULL, NULL),
(296, 'GUT_37', NULL, 14, 33000, 10, 300, NULL, NULL),
(297, 'GUT_37', NULL, 18, 20000, 0, 200, NULL, NULL),
(298, 'GUT_38', NULL, 22, 380000, 20, 300, NULL, NULL),
(299, 'GUT_39', NULL, 23, 29000, 0, 600, NULL, NULL),
(300, 'GUT_40', NULL, 24, 43000, 20, 900, NULL, NULL),
(301, 'GUT_40', NULL, 25, 30000, 0, 990, NULL, NULL),
(302, 'GUT_41', NULL, 27, 190000, 0, 100, NULL, NULL),
(303, 'GUT_41', NULL, 11, 20000, 0, 200, NULL, NULL),
(304, 'GUT_42', NULL, 21, 250000, 0, 300, NULL, NULL),
(305, 'GUT_42', NULL, 19, 40000, 0, 600, NULL, NULL),
(306, 'GUT_43', NULL, 29, 500000, 0, 500, NULL, NULL),
(307, 'GUT_44', NULL, 8, 8000, 0, 1000, NULL, NULL),
(308, 'GUT_44', NULL, 9, 10000, 0, 300, NULL, NULL),
(309, 'GUT_45', NULL, 12, 18000, 45, 390, NULL, NULL),
(310, 'GUT_45', NULL, 22, 380000, 40, 270, NULL, NULL),
(311, 'GUT_46', NULL, 30, 500000, 0, 300, NULL, NULL),
(312, 'GUT_46', NULL, 26, 330000, 1, 300, NULL, NULL),
(313, 'GUT_47', NULL, 12, 18000, 45, 390, NULL, NULL),
(314, 'GUT_47', NULL, 19, 40000, 15, 600, NULL, NULL),
(315, 'GUT_48', NULL, 1, 12000, 0, 500, NULL, NULL),
(316, 'GUT_49', NULL, 18, 20000, 25, 700, NULL, NULL),
(317, 'GUT_50', NULL, 12, 18000, 45, 390, NULL, NULL),
(318, 'GUT_51', NULL, 19, 40000, 15, 600, NULL, NULL),
(319, 'GUT_52', NULL, 4, 16000, 36, 148, '2023-05-17 21:02:51', '2023-05-17 21:02:51'),
(320, 'GUT_52', NULL, 3, 18000, 45, 34, '2023-05-17 21:02:51', '2023-05-17 21:02:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(20) DEFAULT NULL,
  `context` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `id_product`, `id_user`, `phone`, `verified`, `name`, `context`, `rating`, `created_at`, `updated_at`) VALUES
(1, 10, 2, NULL, 1, NULL, 'So so good', 5, '2022-02-11 17:00:00', NULL),
(2, 4, 2, NULL, 1, NULL, 'So so delicious', 5, '2022-02-11 17:00:00', NULL),
(3, 12, 2, NULL, 1, NULL, 'Text', 5, '2022-06-10 17:00:00', NULL),
(4, 25, 2, NULL, 1, NULL, 'Comment', 3, '2022-06-10 17:00:00', NULL),
(5, 21, 2, NULL, 1, NULL, 'SOMETHING', 5, '2022-07-02 17:00:00', NULL),
(6, 15, 2, NULL, 1, NULL, 'Goof', 5, '2022-07-19 17:00:00', NULL),
(7, 13, 2, NULL, 1, NULL, 'GG', 4, '2022-07-19 17:00:00', NULL),
(8, 17, 2, NULL, 1, NULL, 'Goof', 1, '2023-04-30 17:00:00', NULL),
(9, 19, 2, NULL, 1, NULL, 'Gud', 2, '2023-04-30 17:00:00', NULL),
(10, 18, 2, NULL, 1, NULL, 'GGOOG', 2, '2023-05-11 17:00:00', NULL),
(11, 2, 2, NULL, 1, NULL, 'Da Bezt', 2, '2023-05-11 17:00:00', NULL),
(12, 8, 3, NULL, 1, NULL, 'we', 3, '2022-08-01 17:00:00', NULL),
(13, 27, 3, NULL, 1, NULL, 'SO GOOG', 4, '2022-08-01 17:00:00', NULL),
(14, 26, 3, NULL, 1, NULL, 'EKO', 4, '2022-08-29 17:00:00', NULL),
(15, 4, 3, NULL, 1, NULL, 'OKE', 5, '2022-08-29 17:00:00', NULL),
(16, 14, 3, NULL, 1, NULL, 'Just a comment rating', 5, '2022-09-17 17:00:00', NULL),
(17, 9, 3, NULL, 1, NULL, 'OKE', 5, '2022-09-17 17:00:00', NULL),
(18, 10, 3, NULL, 1, NULL, 'Oke Just a comment rating', 3, '2022-09-17 17:00:00', NULL),
(19, 26, 3, NULL, 1, NULL, 'Oke', 5, '2022-10-02 17:00:00', NULL),
(20, 22, 3, NULL, 1, NULL, 'Oke', 4, '2022-10-02 17:00:00', NULL),
(21, 12, 3, NULL, 1, NULL, 'comment', 4, '2022-10-23 17:00:00', NULL),
(22, 28, 3, NULL, 1, NULL, 'comment', 3, '2022-10-23 17:00:00', NULL),
(23, 28, 3, NULL, 1, NULL, 'Oke', 4, '2022-12-16 17:00:00', NULL),
(24, 17, 3, NULL, 1, NULL, 'Oke', 5, '2022-12-16 17:00:00', NULL),
(25, 11, 3, NULL, 1, NULL, 'rating', 5, '2023-01-02 17:00:00', NULL),
(26, 25, 3, NULL, 1, NULL, 'Oke Just a rating', 5, '2023-01-02 17:00:00', NULL),
(27, 12, 3, NULL, 1, NULL, 'rating', 5, '2023-02-03 17:00:00', NULL),
(28, 17, 3, NULL, 1, NULL, 'Oke', 5, '2023-02-03 17:00:00', NULL),
(29, 1, 3, NULL, 1, NULL, 'Oke', 5, '2023-02-21 17:00:00', NULL),
(30, 22, 3, NULL, 1, NULL, 'Good', 5, '2023-02-21 17:00:00', NULL),
(31, 2, 3, NULL, 1, NULL, 'Good', 4, '2023-03-17 17:00:00', NULL),
(32, 15, 3, NULL, 1, NULL, 'Just Okk', 4, '2023-03-17 17:00:00', NULL),
(33, 28, 3, NULL, 1, NULL, 'Just Okk', 5, '2023-03-28 17:00:00', NULL),
(34, 25, 3, NULL, 1, NULL, 'Just Okk', 5, '2023-03-28 17:00:00', NULL),
(35, 20, 3, NULL, 1, NULL, 'Just Okk', 5, '2023-04-18 17:00:00', NULL),
(36, 21, 3, NULL, 1, NULL, 'Just Okk', 5, '2023-04-18 17:00:00', NULL),
(37, 20, 3, NULL, 1, NULL, 'Just Okk', 2, '2023-04-28 17:00:00', NULL),
(38, 27, 3, NULL, 1, NULL, 'Just Okk', 2, '2023-04-28 17:00:00', NULL),
(39, 27, 3, NULL, 1, NULL, 'Just Okk', 2, '2023-05-11 17:00:00', NULL),
(40, 16, 3, NULL, 1, NULL, 'Just Okk', 2, '2023-05-11 17:00:00', NULL),
(41, 1, 4, NULL, 1, NULL, 'Oke Just a comment rating', 4, '2022-02-15 17:00:00', NULL),
(42, 6, 4, NULL, 1, NULL, 'Oke Just a comment rating', 4, '2022-02-15 17:00:00', NULL),
(43, 16, 4, NULL, 1, NULL, 'Delicious', 5, '2022-03-02 17:00:00', NULL),
(44, 30, 4, NULL, 1, NULL, 'Delicious', 5, '2022-03-02 17:00:00', NULL),
(45, 23, 4, NULL, 1, NULL, 'Delicious', 5, '2022-03-09 17:00:00', NULL),
(46, 3, 4, NULL, 1, NULL, 'Delicious', 5, '2022-03-09 17:00:00', NULL),
(47, 14, 4, NULL, 1, NULL, 'Delicious', 5, '2022-03-26 17:00:00', NULL),
(48, 10, 4, NULL, 1, NULL, 'Delicious', 5, '2022-03-26 17:00:00', NULL),
(49, 20, 4, NULL, 1, NULL, 'Delicious', 5, '2022-04-09 17:00:00', NULL),
(50, 18, 4, NULL, 1, NULL, 'Delicious', 5, '2022-04-09 17:00:00', NULL),
(51, 8, 4, NULL, 1, NULL, 'Delicious', 4, '2022-05-09 17:00:00', NULL),
(52, 19, 4, NULL, 1, NULL, 'Delicious', 3, '2022-05-09 17:00:00', NULL),
(53, 29, 4, NULL, 1, NULL, 'Delicious', 5, '2022-05-21 17:00:00', NULL),
(54, 24, 4, NULL, 1, NULL, 'Delicious', 5, '2022-05-21 17:00:00', NULL),
(55, 14, 4, NULL, 1, NULL, 'Delicious', 5, '2022-06-17 17:00:00', NULL),
(56, 27, 4, NULL, 1, NULL, 'Delicious', 5, '2022-06-17 17:00:00', NULL),
(57, 6, 4, NULL, 1, NULL, 'Delicious', 4, '2022-07-08 17:00:00', NULL),
(58, 7, 4, NULL, 1, NULL, 'Delicious', 5, '2022-07-08 17:00:00', NULL),
(59, 17, 4, NULL, 1, NULL, 'Delicious', 5, '2022-07-24 17:00:00', NULL),
(60, 27, 4, NULL, 1, NULL, 'Delicious', 4, '2022-07-24 17:00:00', NULL),
(61, 14, 4, NULL, 1, NULL, 'Delicious', 5, '2022-08-15 17:00:00', NULL),
(62, 19, 4, NULL, 1, NULL, 'Delicious', 5, '2022-08-15 17:00:00', NULL),
(63, 26, 4, NULL, 1, NULL, 'Delicious', 5, '2022-09-02 17:00:00', NULL),
(64, 15, 4, NULL, 1, NULL, 'Delicious', 5, '2022-09-02 17:00:00', NULL),
(65, 24, 4, NULL, 1, NULL, 'Delicious', 5, '2022-10-11 17:00:00', NULL),
(66, 17, 4, NULL, 1, NULL, 'Delicious', 5, '2022-10-11 17:00:00', NULL),
(67, 11, 4, NULL, 1, NULL, 'Delicious', 5, '2022-10-31 17:00:00', NULL),
(68, 7, 4, NULL, 1, NULL, 'Delicious', 5, '2022-10-31 17:00:00', NULL),
(69, 27, 4, NULL, 1, NULL, 'Delicious', 5, '2022-11-15 17:00:00', NULL),
(70, 15, 4, NULL, 1, NULL, 'Delicious', 5, '2022-11-15 17:00:00', NULL),
(71, 17, 4, NULL, 1, NULL, 'Delicious', 5, '2022-11-25 17:00:00', NULL),
(72, 18, 4, NULL, 1, NULL, 'Delicious', 5, '2022-11-25 17:00:00', NULL),
(73, 28, 4, NULL, 1, NULL, 'Delicious', 5, '2022-12-03 17:00:00', NULL),
(74, 8, 4, NULL, 1, NULL, 'Delicious', 2, '2022-12-03 17:00:00', NULL),
(75, 3, 4, NULL, 1, NULL, 'Delicious', 5, '2022-12-21 17:00:00', NULL),
(76, 12, 4, NULL, 1, NULL, 'Delicious', 3, '2022-12-21 17:00:00', NULL),
(77, 13, 4, NULL, 1, NULL, 'Delicious', 4, '2022-12-25 17:00:00', NULL),
(78, 23, 4, NULL, 1, NULL, 'Delicious', 5, '2022-12-25 17:00:00', NULL),
(79, 7, 4, NULL, 1, NULL, 'Delicious', 3, '2023-01-03 17:00:00', NULL),
(80, 15, 4, NULL, 1, NULL, 'Delicious', 3, '2023-01-03 17:00:00', NULL),
(81, 18, 4, NULL, 1, NULL, 'Delicious', 5, '2023-02-06 17:00:00', NULL),
(82, 19, 4, NULL, 1, NULL, 'Delicious', 5, '2023-02-06 17:00:00', NULL),
(83, 29, 4, NULL, 1, NULL, 'Delicious', 3, '2023-02-26 17:00:00', NULL),
(84, 28, 4, NULL, 1, NULL, 'Delicious', 5, '2023-02-26 17:00:00', NULL),
(85, 9, 4, NULL, 1, NULL, 'Delicious', 1, '2023-03-21 17:00:00', NULL),
(86, 18, 4, NULL, 1, NULL, 'Delicious', 3, '2023-03-21 17:00:00', NULL),
(87, 15, 4, NULL, 1, NULL, 'Delicious', 2, '2023-04-04 17:00:00', NULL),
(88, 23, 4, NULL, 1, NULL, 'Delicious', 1, '2023-04-04 17:00:00', NULL),
(89, 3, 4, NULL, 1, NULL, 'Delicious', 3, '2023-04-19 17:00:00', NULL),
(90, 30, 4, NULL, 1, NULL, 'Delicious', 4, '2023-04-19 17:00:00', NULL),
(91, 3, 4, NULL, 1, NULL, 'Delicious', 2, '2023-05-05 17:00:00', NULL),
(92, 28, 4, NULL, 1, NULL, 'Delicious', 1, '2023-05-05 17:00:00', NULL),
(93, 10, 5, NULL, 1, NULL, 'I LOVE IT', 5, '2022-02-21 17:00:00', NULL),
(94, 26, 5, NULL, 1, NULL, 'OKW', 5, '2022-02-21 17:00:00', NULL),
(95, 16, 5, NULL, 1, NULL, 'Delicious', 5, '2022-03-02 17:00:00', NULL),
(96, 30, 5, NULL, 1, NULL, 'Delicious', 5, '2022-03-02 17:00:00', NULL),
(97, 13, 5, NULL, 1, NULL, 'Delicious', 2, '2022-03-22 17:00:00', NULL),
(98, 27, 5, NULL, 1, NULL, 'Delicious', 5, '2022-03-22 17:00:00', NULL),
(99, 14, 5, NULL, 1, NULL, 'Delicious', 3, '2022-03-27 17:00:00', NULL),
(100, 10, 5, NULL, 1, NULL, 'Delicious', 4, '2022-03-27 17:00:00', NULL),
(101, 20, 5, NULL, 1, NULL, 'Delicious', 2, '2022-04-12 17:00:00', NULL),
(102, 18, 5, NULL, 1, NULL, 'Delicious', 5, '2022-04-12 17:00:00', NULL),
(103, 8, 5, NULL, 1, NULL, 'Delicious', 4, '2022-05-12 17:00:00', NULL),
(104, 19, 5, NULL, 1, NULL, 'Delicious', 3, '2022-05-12 17:00:00', NULL),
(105, 29, 5, NULL, 1, NULL, 'Delicious', 2, '2022-05-26 17:00:00', NULL),
(106, 24, 5, NULL, 1, NULL, 'Delicious', 3, '2022-05-26 17:00:00', NULL),
(107, 14, 5, NULL, 1, NULL, 'Delicious', 4, '2022-06-21 17:00:00', NULL),
(108, 27, 5, NULL, 1, NULL, 'Delicious', 2, '2022-06-21 17:00:00', NULL),
(109, 16, 5, NULL, 1, NULL, 'Delicious', 4, '2022-07-13 17:00:00', NULL),
(110, 7, 5, NULL, 1, NULL, 'Delicious', 1, '2022-07-13 17:00:00', NULL),
(111, 1, 5, NULL, 1, NULL, 'Delicious', 3, '2022-08-16 17:00:00', NULL),
(112, 26, 5, NULL, 1, NULL, 'Delicious', 2, '2022-08-16 17:00:00', NULL),
(113, 22, 5, NULL, 1, NULL, 'Delicious', 4, '2022-09-03 17:00:00', NULL),
(114, 15, 5, NULL, 1, NULL, 'Delicious', 3, '2022-09-03 17:00:00', NULL),
(115, 25, 5, NULL, 1, NULL, 'Delicious', 2, '2022-09-22 17:00:00', NULL),
(116, 14, 5, NULL, 1, NULL, 'Delicious', 5, '2022-09-22 17:00:00', NULL),
(117, 24, 5, NULL, 1, NULL, 'Delicious', 3, '2022-10-12 17:00:00', NULL),
(118, 17, 5, NULL, 1, NULL, 'Delicious', 4, '2022-10-12 17:00:00', NULL),
(119, 27, 5, NULL, 1, NULL, 'Delicious', 3, '2022-11-17 17:00:00', NULL),
(120, 15, 5, NULL, 1, NULL, 'Delicious', 5, '2022-11-17 17:00:00', NULL),
(121, 17, 5, NULL, 1, NULL, 'Delicious', 4, '2022-11-24 17:00:00', NULL),
(122, 18, 5, NULL, 1, NULL, 'Delicious', 5, '2022-11-24 17:00:00', NULL),
(123, 13, 5, NULL, 1, NULL, 'Delicious', 5, '2022-12-25 17:00:00', NULL),
(124, 23, 5, NULL, 1, NULL, 'Delicious', 5, '2022-12-25 17:00:00', NULL),
(125, 7, 5, NULL, 1, NULL, 'Delicious', 5, '2023-01-07 17:00:00', NULL),
(126, 15, 5, NULL, 1, NULL, 'Delicious', 2, '2023-01-07 17:00:00', NULL),
(127, 5, 5, NULL, 1, NULL, 'Delicious', 2, '2023-01-20 17:00:00', NULL),
(128, 17, 5, NULL, 1, NULL, 'Delicious', 3, '2023-01-20 17:00:00', NULL),
(129, 25, 5, NULL, 1, NULL, 'Delicious', 1, '2023-01-20 17:00:00', NULL),
(130, 28, 5, NULL, 1, NULL, 'Delicious', 4, '2023-01-20 17:00:00', NULL),
(131, 18, 5, NULL, 1, NULL, 'Delicious', 4, '2023-02-09 17:00:00', NULL),
(132, 19, 5, NULL, 1, NULL, 'Delicious', 5, '2023-02-09 17:00:00', NULL),
(133, 29, 5, NULL, 1, NULL, 'Delicious', 3, '2023-03-02 17:00:00', NULL),
(134, 18, 5, NULL, 1, NULL, 'Delicious', 3, '2023-03-02 17:00:00', NULL),
(135, 9, 5, NULL, 1, NULL, 'Delicious', 5, '2023-03-25 17:00:00', NULL),
(136, 18, 5, NULL, 1, NULL, 'Delicious', 4, '2023-03-25 17:00:00', NULL),
(137, 15, 5, NULL, 1, NULL, 'Delicious', 4, '2023-04-05 17:00:00', NULL),
(138, 23, 5, NULL, 1, NULL, 'Delicious', 5, '2023-04-05 17:00:00', NULL),
(139, 3, 5, NULL, 1, NULL, 'Delicious', 4, '2023-04-24 17:00:00', NULL),
(140, 28, 5, NULL, 1, NULL, 'Delicious', 5, '2023-04-24 17:00:00', NULL),
(141, 11, 5, NULL, 1, NULL, 'Delicious', 2, '2023-05-05 17:00:00', NULL),
(142, 10, 6, NULL, 1, NULL, 'Delicious', 5, '2022-03-22 17:00:00', NULL),
(143, 26, 6, NULL, 1, NULL, 'Delicious', 4, '2022-03-22 17:00:00', NULL),
(144, 16, 6, NULL, 1, NULL, 'Delicious', 4, '2022-04-01 17:00:00', NULL),
(145, 30, 6, NULL, 1, NULL, 'Delicious', 5, '2022-04-01 17:00:00', NULL),
(146, 23, 6, NULL, 1, NULL, 'Delicious', 5, '2022-04-21 17:00:00', NULL),
(147, 3, 6, NULL, 1, NULL, 'Delicious', 5, '2022-04-21 17:00:00', NULL),
(148, 14, 6, NULL, 1, NULL, 'Delicious', 5, '2022-05-14 17:00:00', NULL),
(149, 10, 6, NULL, 1, NULL, 'Delicious', 5, '2022-05-14 17:00:00', NULL),
(150, 20, 6, NULL, 1, NULL, 'Delicious', 4, '2022-06-01 17:00:00', NULL),
(151, 18, 6, NULL, 1, NULL, 'Delicious', 3, '2022-06-01 17:00:00', NULL),
(152, 29, 6, NULL, 1, NULL, 'Delicious', 5, '2022-07-15 17:00:00', NULL),
(153, 24, 6, NULL, 1, NULL, 'Delicious', 5, '2022-07-15 17:00:00', NULL),
(154, 14, 6, NULL, 1, NULL, 'Delicious', 5, '2022-07-29 17:00:00', NULL),
(155, 27, 6, NULL, 1, NULL, 'Delicious', 5, '2022-07-29 17:00:00', NULL),
(156, 6, 6, NULL, 1, NULL, 'Delicious', 1, '2022-08-17 17:00:00', NULL),
(157, 7, 6, NULL, 1, NULL, 'Delicious', 4, '2022-08-17 17:00:00', NULL),
(158, 17, 6, NULL, 1, NULL, 'Delicious', 4, '2022-09-11 17:00:00', NULL),
(159, 27, 6, NULL, 1, NULL, 'Delicious', 5, '2022-09-11 17:00:00', NULL),
(160, 1, 6, NULL, 1, NULL, 'Delicious', 3, '2022-09-25 17:00:00', NULL),
(161, 26, 6, NULL, 1, NULL, 'Delicious', 4, '2022-09-25 17:00:00', NULL),
(162, 26, 6, NULL, 1, NULL, 'Delicious', 5, '2022-10-17 17:00:00', NULL),
(163, 15, 6, NULL, 1, NULL, 'Delicious', 1, '2022-10-17 17:00:00', NULL),
(164, 25, 6, NULL, 1, NULL, 'Delicious', 3, '2022-11-05 17:00:00', NULL),
(165, 14, 6, NULL, 1, NULL, 'Delicious', 2, '2022-11-05 17:00:00', NULL),
(166, 24, 6, NULL, 1, NULL, 'Delicious', 4, '2022-11-19 17:00:00', NULL),
(167, 27, 6, NULL, 1, NULL, 'Delicious', 2, '2022-11-19 17:00:00', NULL),
(168, 11, 6, NULL, 1, NULL, 'Delicious', 5, '2022-11-24 17:00:00', NULL),
(169, 7, 6, NULL, 1, NULL, 'Delicious', 3, '2022-11-24 17:00:00', NULL),
(170, 27, 6, NULL, 1, NULL, 'Delicious', 4, '2022-12-05 17:00:00', NULL),
(171, 15, 6, NULL, 1, NULL, 'Delicious', 5, '2022-12-05 17:00:00', NULL),
(172, 17, 6, NULL, 1, NULL, 'Delicious', 4, '2022-12-25 17:00:00', NULL),
(173, 18, 6, NULL, 1, NULL, 'Delicious', 4, '2022-12-25 17:00:00', NULL),
(174, 28, 6, NULL, 1, NULL, 'Delicious', 3, '2023-01-05 17:00:00', NULL),
(175, 8, 6, NULL, 1, NULL, 'Delicious', 5, '2023-01-05 17:00:00', NULL),
(176, 13, 6, NULL, 1, NULL, 'Delicious', 1, '2023-02-14 17:00:00', NULL),
(177, 23, 6, NULL, 1, NULL, 'Delicious', 2, '2023-02-14 17:00:00', NULL),
(178, 22, 6, NULL, 1, NULL, 'Delicious', 4, '2023-02-14 17:00:00', NULL),
(179, 24, 6, NULL, 1, NULL, 'Delicious', 5, '2023-02-14 17:00:00', NULL),
(180, 17, 6, NULL, 1, NULL, 'Delicious', 4, '2023-03-27 17:00:00', NULL),
(181, 5, 6, NULL, 1, NULL, 'Delicious', 2, '2023-03-27 17:00:00', NULL),
(182, 18, 6, NULL, 1, NULL, 'Delicious', 4, '2023-04-07 17:00:00', NULL),
(183, 9, 6, NULL, 1, NULL, 'Delicious', 2, '2023-04-07 17:00:00', NULL),
(184, 29, 6, NULL, 1, NULL, 'Delicious', 2, '2023-04-27 17:00:00', NULL),
(185, 4, 6, NULL, 1, NULL, 'Delicious', 2, '2023-04-27 17:00:00', NULL),
(186, 8, 6, NULL, 1, NULL, 'Delicious', 2, '2023-05-08 17:00:00', NULL),
(187, 9, 6, NULL, 1, NULL, 'Delicious', 2, '2023-05-08 17:00:00', NULL),
(188, 5, 1, NULL, 0, NULL, 'Just a good', NULL, '2023-04-02 17:00:00', NULL),
(189, 1, 1, NULL, 0, NULL, 'Change this comment', NULL, '2023-03-31 17:00:00', NULL),
(190, 9, 3, NULL, 1, NULL, 'So so good', 4, '2023-04-09 17:00:00', NULL),
(191, 10, 3, NULL, 1, NULL, 'So so good', 4, '2023-04-09 17:00:00', NULL),
(192, 8, 3, NULL, 1, NULL, 'So so good', 4, '2023-04-09 17:00:00', NULL),
(193, 27, 3, NULL, 1, NULL, 'So so good', 5, '2023-04-09 17:00:00', NULL),
(194, 11, NULL, '01202169690', 1, 'Guest', NULL, 5, '2022-04-04 17:00:00', NULL),
(195, 23, NULL, '01202169690', 1, 'Guest', NULL, 5, '2022-04-04 17:00:00', NULL),
(196, 16, NULL, '01202169690', 1, 'Guest', NULL, 5, '2022-04-30 17:00:00', NULL),
(197, 22, NULL, '01202169690', 1, 'Guest', NULL, 5, '2022-04-30 17:00:00', NULL),
(198, 18, NULL, '01202756690', 1, 'Guest', NULL, 5, '2022-06-05 17:00:00', NULL),
(199, 1, NULL, '01202756690', 1, 'Guest', NULL, 5, '2022-06-05 17:00:00', NULL),
(200, 1, NULL, '01202169690', 1, 'Guest', NULL, 5, '2022-06-27 17:00:00', NULL),
(201, 21, NULL, '01202169690', 1, 'Guest', NULL, 5, '2022-06-27 17:00:00', NULL),
(202, 12, NULL, '01202756690', 1, 'Guest', NULL, 5, '2022-06-29 17:00:00', NULL),
(203, 1, NULL, '01202756690', 1, 'Guest', NULL, 5, '2022-07-19 17:00:00', NULL),
(204, 3, NULL, '01202169690', 1, 'Guest', NULL, 5, '2022-08-02 17:00:00', NULL),
(205, 22, NULL, '012027522342', 1, 'Guest', NULL, 5, '2022-08-03 17:00:00', NULL),
(206, 13, NULL, '012027522342', 1, 'Guest', NULL, 5, '2022-08-03 17:00:00', NULL),
(207, 15, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-08-23 17:00:00', NULL),
(208, 18, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-08-23 17:00:00', NULL),
(209, 11, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-09-13 17:00:00', NULL),
(210, 13, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-09-13 17:00:00', NULL),
(211, 3, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-09-29 17:00:00', NULL),
(212, 30, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-09-29 17:00:00', NULL),
(213, 2, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-09-29 17:00:00', NULL),
(214, 4, NULL, '01202159690', 1, 'Guest', NULL, 5, '2022-09-29 17:00:00', NULL),
(215, 12, NULL, '01202157869', 1, 'Guest', NULL, 5, '2022-11-11 17:00:00', NULL),
(216, 13, NULL, '01202157869', 1, 'Guest', NULL, 5, '2022-11-11 17:00:00', NULL),
(217, 15, NULL, '01702717342', 1, 'Guest', NULL, 5, '2022-11-13 17:00:00', NULL),
(218, 18, NULL, '01202157869', 1, 'Guest', NULL, 5, '2022-11-23 17:00:00', NULL),
(219, 11, NULL, '01202157869', 1, 'Guest', NULL, 5, '2022-11-23 17:00:00', NULL),
(220, 24, NULL, '01702717342', 1, 'Guest', NULL, 5, '2022-11-24 17:00:00', NULL),
(221, 16, NULL, '01202157869', 1, 'Guest', NULL, 5, '2022-11-29 17:00:00', NULL),
(222, 10, NULL, '01202157869', 1, 'Guest', NULL, 5, '2022-11-29 17:00:00', NULL),
(223, 1, NULL, '01223157869', 1, 'Guest', NULL, 5, '2022-12-13 17:00:00', NULL),
(224, 2, NULL, '0172717342', 1, 'Guest', NULL, 5, '2022-12-14 17:00:00', NULL),
(225, 4, NULL, '0172717342', 1, 'Guest', NULL, 5, '2022-12-14 17:00:00', NULL),
(226, 14, NULL, '01813157869', 1, 'Guest', NULL, 5, '2022-12-29 17:00:00', NULL),
(227, 18, NULL, '0172717342', 1, 'Guest', NULL, 5, '2023-01-01 17:00:00', NULL),
(228, 15, NULL, '01813157869', 1, 'Guest', NULL, 5, '2023-01-12 17:00:00', NULL),
(229, 24, NULL, '0132232423', 1, 'Guest', NULL, 5, '2023-01-13 17:00:00', NULL),
(230, 27, NULL, '01813157869', 1, 'Guest', NULL, 5, '2023-01-27 17:00:00', NULL),
(231, 24, NULL, '01813157869', 1, 'Guest', NULL, 5, '2023-01-27 17:00:00', NULL),
(232, 29, NULL, '01813157869', 1, 'Guest', NULL, 5, '2023-01-27 17:00:00', NULL),
(233, 6, NULL, '013223242333', 1, 'Guest', NULL, 5, '2023-02-20 17:00:00', NULL),
(234, 8, NULL, '013223242333', 1, 'Guest', NULL, 5, '2023-02-20 17:00:00', NULL),
(235, 1, NULL, '01813157869', 1, 'Guest', NULL, 5, '2023-03-09 17:00:00', NULL),
(236, 2, NULL, '01813157869', 1, 'Guest', NULL, 5, '2023-03-09 17:00:00', NULL),
(237, 14, NULL, '0132232423', 1, 'Guest', NULL, 5, '2023-03-14 17:00:00', NULL),
(238, 18, NULL, '0132232423', 1, 'Guest', NULL, 5, '2023-03-14 17:00:00', NULL),
(239, 22, NULL, '0181315319', 1, 'Guest', NULL, 5, '2023-03-29 17:00:00', NULL),
(240, 24, NULL, '01713153230', 1, 'Guest', NULL, 5, '2023-04-14 17:00:00', NULL),
(241, 25, NULL, '01713153230', 1, 'Guest', NULL, 5, '2023-04-14 17:00:00', NULL),
(242, 21, NULL, '01713153203', 1, 'Guest', NULL, 5, '2023-04-28 17:00:00', NULL),
(243, 19, NULL, '01713153203', 1, 'Guest', NULL, 5, '2023-04-28 17:00:00', NULL),
(244, 29, NULL, '01922382423', 1, 'Guest', NULL, 5, '2023-04-28 17:00:00', NULL),
(245, 8, NULL, '01713333452', 1, 'Guest', NULL, 5, '2023-05-08 17:00:00', NULL),
(246, 9, NULL, '01713333452', 1, 'Guest', NULL, 5, '2023-05-08 17:00:00', NULL),
(247, 12, NULL, '01922382423', 1, 'Guest', NULL, 5, '2023-05-09 17:00:00', NULL),
(248, 22, NULL, '01922382423', 1, 'Guest', NULL, 5, '2023-05-09 17:00:00', NULL),
(249, 30, NULL, '01713153343', 1, 'Guest', NULL, 5, '2023-05-10 17:00:00', NULL),
(250, 26, NULL, '01713153343', 1, 'Guest', NULL, 5, '2023-05-10 17:00:00', NULL),
(251, 12, NULL, '019223212423', 1, 'Guest', NULL, 5, '2023-05-11 17:00:00', NULL),
(252, 19, NULL, '019223212423', 1, 'Guest', NULL, 5, '2023-05-11 17:00:00', NULL),
(253, 4, NULL, '0344576625', 1, 'Guest', NULL, 5, '2023-05-17 21:02:51', '2023-05-17 21:02:51'),
(254, 3, NULL, '0344576625', 1, 'Guest', NULL, 5, '2023-05-17 21:02:51', '2023-05-17 21:02:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `id_coupon` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `code` varchar(20) NOT NULL,
  `discount` bigint(20) NOT NULL,
  `max` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`id_coupon`, `title`, `code`, `discount`, `max`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Member', 'NEWMEM', 40, 1, 1, '2022-01-28 17:00:00', NULL),
(2, 'Wednesday', 'WEDNESDAY22', 50, 1, 0, '2022-11-22 17:00:00', NULL),
(3, 'Merry Chirstmast', 'MARRYCHIRT', 20, 1, 0, '2022-12-23 17:00:00', NULL),
(4, 'Free Ship', 'FREESHIP423', 24000, 3, 1, '2023-03-31 17:00:00', NULL),
(5, 'Free Ship', 'FREESHIP522', 24000, 3, 0, '2022-04-30 17:00:00', NULL),
(6, 'Happy May', 'MAYBE', 20, 3, 1, '2023-04-30 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expense`
--

CREATE TABLE `expense` (
  `id_expense` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'purchase costs',
  `id_product` bigint(20) UNSIGNED DEFAULT NULL,
  `costs` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `expense`
--

INSERT INTO `expense` (`id_expense`, `name`, `id_product`, `costs`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'purchase costs', 1, 9000, 1200, '2022-01-28 17:00:00', NULL),
(2, 'purchase costs', 1, 9300, 300, '2022-04-29 17:00:00', NULL),
(3, 'purchase costs', 1, 8000, 500, '2023-03-09 17:00:00', NULL),
(4, 'purchase costs', 1, 8000, 1500, '2023-05-09 17:00:00', NULL),
(5, 'purchase costs', 2, 10000, 500, '2022-02-28 17:00:00', NULL),
(6, 'purchase costs', 2, 8000, 700, '2022-03-28 17:00:00', NULL),
(7, 'purchase costs', 2, 6000, 2000, '2022-12-28 17:00:00', NULL),
(8, 'purchase costs', 2, 6000, 1000, '2023-02-19 17:00:00', NULL),
(9, 'purchase costs', 3, 12900, 300, '2022-02-28 17:00:00', NULL),
(10, 'purchase costs', 3, 12000, 5000, '2023-01-19 17:00:00', NULL),
(11, 'purchase costs', 3, 10500, 500, '2023-02-19 17:00:00', NULL),
(12, 'purchase costs', 3, 10000, 3000, '2023-04-19 17:00:00', NULL),
(13, 'purchase costs', 4, 13000, 200, '2022-01-28 17:00:00', NULL),
(14, 'purchase costs', 4, 13200, 2000, '2022-04-19 17:00:00', NULL),
(15, 'purchase costs', 4, 12000, 2000, '2023-04-11 17:00:00', NULL),
(16, 'purchase costs', 5, 8000, 2000, '2022-01-28 17:00:00', NULL),
(17, 'purchase costs', 5, 9500, 1600, '2022-07-11 17:00:00', NULL),
(18, 'purchase costs', 5, 8000, 4500, '2022-12-11 17:00:00', NULL),
(19, 'purchase costs', 5, 10000, 2500, '2023-02-11 17:00:00', NULL),
(20, 'purchase costs', 5, 8000, 2000, '2023-05-11 17:00:00', NULL),
(21, 'purchase costs', 6, 9000, 2000, '2022-01-28 17:00:00', NULL),
(22, 'purchase costs', 6, 10600, 3000, '2022-11-11 17:00:00', NULL),
(23, 'purchase costs', 6, 11000, 1000, '2023-01-11 17:00:00', NULL),
(24, 'purchase costs', 7, 11000, 1000, '2022-01-28 17:00:00', NULL),
(25, 'purchase costs', 7, 12000, 3000, '2022-06-11 17:00:00', NULL),
(26, 'purchase costs', 7, 10000, 2000, '2023-04-11 17:00:00', NULL),
(27, 'purchase costs', 8, 3000, 1000, '2022-01-28 17:00:00', NULL),
(28, 'purchase costs', 8, 3000, 5000, '2022-04-11 17:00:00', NULL),
(29, 'purchase costs', 8, 5000, 5000, '2023-04-11 17:00:00', NULL),
(30, 'purchase costs', 9, 2000, 5000, '2022-01-28 17:00:00', NULL),
(31, 'purchase costs', 9, 2000, 5000, '2022-08-11 17:00:00', NULL),
(32, 'purchase costs', 9, 3000, 2000, '2023-04-11 17:00:00', NULL),
(33, 'purchase costs', 10, 13000, 1000, '2022-01-28 17:00:00', NULL),
(34, 'purchase costs', 10, 12000, 1000, '2022-05-11 17:00:00', NULL),
(35, 'purchase costs', 10, 10000, 1000, '2022-08-11 17:00:00', NULL),
(36, 'purchase costs', 10, 11000, 5000, '2023-04-11 17:00:00', NULL),
(37, 'purchase costs', 11, 14000, 4000, '2022-01-28 17:00:00', NULL),
(38, 'purchase costs', 11, 12000, 2000, '2022-08-31 17:00:00', NULL),
(39, 'purchase costs', 11, 13000, 3000, '2023-02-11 17:00:00', NULL),
(40, 'purchase costs', 11, 15000, 3000, '2023-03-11 17:00:00', NULL),
(41, 'purchase costs', 12, 8000, 1000, '2022-01-28 17:00:00', NULL),
(42, 'purchase costs', 12, 8000, 1000, '2022-12-11 17:00:00', NULL),
(43, 'purchase costs', 12, 9000, 3900, '2023-04-11 17:00:00', NULL),
(44, 'purchase costs', 12, 10000, 3900, '2023-05-11 17:00:00', NULL),
(45, 'purchase costs', 13, 19000, 1900, '2022-07-09 17:00:00', NULL),
(46, 'purchase costs', 13, 16000, 1000, '2023-01-11 17:00:00', NULL),
(47, 'purchase costs', 13, 18000, 2500, '2023-04-11 17:00:00', NULL),
(48, 'purchase costs', 14, 18000, 1500, '2022-01-28 17:00:00', NULL),
(49, 'purchase costs', 14, 13000, 2500, '2022-07-11 17:00:00', NULL),
(50, 'purchase costs', 14, 20000, 6000, '2023-01-11 17:00:00', NULL),
(51, 'purchase costs', 14, 19000, 4600, '2023-04-11 17:00:00', NULL),
(52, 'purchase costs', 15, 29000, 1900, '2022-01-28 17:00:00', NULL),
(53, 'purchase costs', 15, 29500, 1000, '2022-03-11 17:00:00', NULL),
(54, 'purchase costs', 15, 32000, 4600, '2023-04-11 17:00:00', NULL),
(55, 'purchase costs', 16, 92000, 1000, '2022-06-28 17:00:00', NULL),
(56, 'purchase costs', 16, 100000, 2600, '2022-12-11 17:00:00', NULL),
(57, 'purchase costs', 16, 120000, 3400, '2023-02-11 17:00:00', NULL),
(58, 'purchase costs', 17, 34000, 3000, '2022-03-31 17:00:00', NULL),
(59, 'purchase costs', 17, 40000, 2000, '2022-10-11 17:00:00', NULL),
(60, 'purchase costs', 17, 30000, 5000, '2023-03-11 17:00:00', NULL),
(61, 'purchase costs', 18, 12000, 3000, '2022-01-31 17:00:00', NULL),
(62, 'purchase costs', 18, 12000, 2000, '2022-08-11 17:00:00', NULL),
(63, 'purchase costs', 18, 10000, 4600, '2023-02-11 17:00:00', NULL),
(64, 'purchase costs', 19, 29000, 2600, '2022-08-28 17:00:00', NULL),
(65, 'purchase costs', 19, 29000, 2600, '2022-10-28 17:00:00', NULL),
(66, 'purchase costs', 19, 29000, 1000, '2022-12-11 17:00:00', NULL),
(67, 'purchase costs', 19, 30000, 3600, '2023-02-11 17:00:00', NULL),
(68, 'purchase costs', 19, 30000, 4600, '2023-05-11 17:00:00', NULL),
(69, 'purchase costs', 20, 12000, 1000, '2022-05-11 17:00:00', NULL),
(70, 'purchase costs', 20, 12000, 1000, '2022-11-11 17:00:00', NULL),
(71, 'purchase costs', 20, 11000, 2000, '2023-02-11 17:00:00', NULL),
(72, 'purchase costs', 20, 15000, 4000, '2023-04-11 17:00:00', NULL),
(73, 'purchase costs', 21, 230000, 4000, '2022-03-28 17:00:00', NULL),
(74, 'purchase costs', 21, 210000, 5000, '2022-12-11 17:00:00', NULL),
(75, 'purchase costs', 21, 200000, 5000, '2023-04-11 17:00:00', NULL),
(76, 'purchase costs', 22, 200000, 1000, '2022-03-28 17:00:00', NULL),
(77, 'purchase costs', 22, 220000, 2000, '2022-08-11 17:00:00', NULL),
(78, 'purchase costs', 22, 230000, 3700, '2023-04-11 17:00:00', NULL),
(79, 'purchase costs', 23, 19000, 700, '2022-04-28 17:00:00', NULL),
(80, 'purchase costs', 23, 20000, 1700, '2022-09-11 17:00:00', NULL),
(81, 'purchase costs', 23, 19000, 2500, '2023-02-11 17:00:00', NULL),
(82, 'purchase costs', 24, 220000, 2900, '2022-06-28 17:00:00', NULL),
(83, 'purchase costs', 24, 200000, 2000, '2022-10-14 17:00:00', NULL),
(84, 'purchase costs', 24, 220000, 9000, '2023-02-11 17:00:00', NULL),
(85, 'purchase costs', 24, 220000, 6000, '2023-05-11 17:00:00', NULL),
(86, 'purchase costs', 25, 18000, 9000, '2022-05-28 17:00:00', NULL),
(87, 'purchase costs', 25, 24000, 3000, '2022-07-11 17:00:00', NULL),
(88, 'purchase costs', 25, 20000, 9800, '2023-04-11 17:00:00', NULL),
(89, 'purchase costs', 26, 270000, 3000, '2022-03-28 17:00:00', NULL),
(90, 'purchase costs', 26, 296000, 1000, '2022-07-11 17:00:00', NULL),
(91, 'purchase costs', 26, 290000, 1000, '2023-04-11 17:00:00', NULL),
(92, 'purchase costs', 27, 120000, 12000, '2022-02-18 17:00:00', NULL),
(93, 'purchase costs', 27, 130000, 12000, '2022-08-11 17:00:00', NULL),
(94, 'purchase costs', 27, 140000, 10000, '2023-02-11 17:00:00', NULL),
(95, 'purchase costs', 28, 250000, 5000, '2022-01-31 17:00:00', NULL),
(96, 'purchase costs', 28, 250000, 5000, '2022-11-30 17:00:00', NULL),
(97, 'purchase costs', 28, 190000, 10000, '2023-03-11 17:00:00', NULL),
(98, 'purchase costs', 29, 230000, 1000, '2022-06-28 17:00:00', NULL),
(99, 'purchase costs', 29, 220000, 500, '2022-11-11 17:00:00', NULL),
(100, 'purchase costs', 29, 220000, 1200, '2023-04-11 17:00:00', NULL),
(101, 'purchase costs', 30, 220000, 1000, '2022-04-28 17:00:00', NULL),
(102, 'purchase costs', 30, 250000, 2000, '2022-10-11 17:00:00', NULL),
(103, 'purchase costs', 30, 260000, 5000, '2023-02-11 17:00:00', NULL),
(104, 'purchase costs', 30, 270000, 5000, '2023-05-11 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `favourite`
--

CREATE TABLE `favourite` (
  `id_fa` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groupmessage`
--

CREATE TABLE `groupmessage` (
  `id_group` bigint(20) UNSIGNED NOT NULL,
  `code_group` varchar(10) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_admin` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `groupmessage`
--

INSERT INTO `groupmessage` (`id_group`, `code_group`, `id_user`, `id_admin`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UCT27', 2, 7, 1, '2023-03-29 17:00:00', NULL),
(2, 'UCT31', 3, 1, 1, '2023-04-29 17:00:00', NULL),
(3, 'UCT48', 4, 8, 1, '2023-03-01 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `library`
--

CREATE TABLE `library` (
  `id_lib` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `library`
--

INSERT INTO `library` (`id_lib`, `id_product`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Corn_1.jpg', NULL, NULL),
(2, 1, 'Corn_2.jpg', NULL, NULL),
(3, 1, 'Corn_3.jpg', NULL, NULL),
(4, 1, 'Corn_4.jpg', NULL, NULL),
(5, 2, 'calabash_1.jpg', NULL, NULL),
(6, 2, 'calabash_2.jpg', NULL, NULL),
(7, 2, 'calabash_3.jpg', NULL, NULL),
(8, 2, 'calabash_4.jpg', NULL, NULL),
(9, 3, 'pumkin_1.jpg', NULL, NULL),
(10, 3, 'pumkin_2.jpg', NULL, NULL),
(11, 3, 'pumkin_3.jpg', NULL, NULL),
(12, 3, 'pumkin_4.jpg', NULL, NULL),
(13, 4, 'tomato_1.jpg', NULL, NULL),
(14, 4, 'tomato_2.jpg', NULL, NULL),
(15, 4, 'tomato_3.jpg', NULL, NULL),
(16, 4, 'tomato_4.jpg', NULL, NULL),
(17, 5, 'carrot_1.jpg', NULL, NULL),
(18, 5, 'carrot_2.jpg', NULL, NULL),
(19, 5, 'carrot_3.jpg', NULL, NULL),
(20, 5, 'carrot_4.jpg', NULL, NULL),
(21, 6, 'eggplant_1.jpg', NULL, NULL),
(22, 6, 'eggplant_2.jpg', NULL, NULL),
(23, 6, 'eggplant_3.jpg', NULL, NULL),
(24, 6, 'eggplant_4.jpg', NULL, NULL),
(25, 7, 'White radish_1.jpg', NULL, NULL),
(26, 7, 'White radish_2.jpg', NULL, NULL),
(27, 7, 'White radish_3.jpg', NULL, NULL),
(28, 7, 'White radish_4.jpg', NULL, NULL),
(29, 8, 'onion_1.jpg', NULL, NULL),
(30, 8, 'onion_2.jpg', NULL, NULL),
(31, 8, 'onion_3.jpg', NULL, NULL),
(32, 8, 'onion_4.jpg', NULL, NULL),
(33, 9, 'bell pepper_1.jpg', NULL, NULL),
(34, 9, 'bell pepper_2.jpg', NULL, NULL),
(35, 9, 'bell pepper_3.jpg', NULL, NULL),
(36, 9, 'bell pepper_4.jpg', NULL, NULL),
(37, 10, 'Lettuce_1.jpg', NULL, NULL),
(38, 10, 'Lettuce_2.jpg', NULL, NULL),
(39, 10, 'Lettuce_3.jpg', NULL, NULL),
(40, 10, 'Lettuce_4.jpg', NULL, NULL),
(41, 11, 'coconut_1.jpg', NULL, NULL),
(42, 11, 'coconut_2.jpg', NULL, NULL),
(43, 11, 'coconut_3.png', NULL, NULL),
(44, 11, 'coconut_4.jpg', NULL, NULL),
(45, 12, 'watermelon_1.png', NULL, NULL),
(46, 12, 'watermelon_2.jpg', NULL, NULL),
(47, 12, 'watermelon_3.jpg', NULL, NULL),
(48, 12, 'watermelon_4.png', NULL, NULL),
(49, 13, 'pear_1.jpg', NULL, NULL),
(50, 13, 'pear_2.jpg', NULL, NULL),
(51, 13, 'pear_3.jpg', NULL, NULL),
(52, 13, 'pear_4.jpg', NULL, NULL),
(53, 14, 'plum_1.jpg', NULL, NULL),
(54, 14, 'plum_2.jpg', NULL, NULL),
(55, 14, 'plum_3.jpg', NULL, NULL),
(56, 14, 'plum_4.jpg', NULL, NULL),
(57, 15, 'mangosteen_1.png', NULL, NULL),
(58, 15, 'mangosteen_2.jpeg', NULL, NULL),
(59, 15, 'mangosteen_3.jpg', NULL, NULL),
(60, 15, 'mangosteen_4.jpg', NULL, NULL),
(61, 16, 'durian_1.png', NULL, NULL),
(62, 16, 'durian_2.jpg', NULL, NULL),
(63, 16, 'durian_3.jpg', NULL, NULL),
(64, 16, 'durian_4.png', NULL, NULL),
(65, 17, 'apple_1.jpg', NULL, NULL),
(66, 17, 'apple_2.jpg', NULL, NULL),
(67, 17, 'apple_3.jpg', NULL, NULL),
(68, 17, 'apple_4.jpg', NULL, NULL),
(69, 18, 'pinapple_1.jpg', NULL, NULL),
(70, 18, 'pinapple_2.jpg', NULL, NULL),
(71, 18, 'pinapple_3.jpg', NULL, NULL),
(72, 18, 'pinapple_4.jpg', NULL, NULL),
(73, 19, 'litchi_1.jpg', NULL, NULL),
(74, 19, 'litchi_2.jpg', NULL, NULL),
(75, 19, 'litchi_3.jpg', NULL, NULL),
(76, 19, 'litchi_4.png', NULL, NULL),
(77, 20, 'mango_1.jpg', NULL, NULL),
(78, 20, 'mango_2.jpg', NULL, NULL),
(79, 20, 'mango_3.png', NULL, NULL),
(80, 20, 'mango_4.jpg', NULL, NULL),
(81, 21, 'beef_1.jpg', NULL, NULL),
(82, 21, 'beef_2.jpg', NULL, NULL),
(83, 21, 'beef_3.jpg', NULL, NULL),
(84, 21, 'beef_4.jpg', NULL, NULL),
(85, 22, 'plaice_1.jpg', NULL, NULL),
(86, 22, 'plaice_2.jpg', NULL, NULL),
(87, 22, 'plaice_3.jpg', NULL, NULL),
(88, 22, 'plaice_4.jpg', NULL, NULL),
(89, 23, 'Snakehead fish_1.jpg', NULL, NULL),
(90, 23, 'Snakehead fish_2.jpg', NULL, NULL),
(91, 23, 'Snakehead fish_3.jpg', NULL, NULL),
(92, 23, 'Snakehead fish_4.jpg', NULL, NULL),
(93, 24, 'tuna_1.jpg', NULL, NULL),
(94, 24, 'tuna_2.jpg', NULL, NULL),
(95, 24, 'tuna_3.jpg', NULL, NULL),
(96, 24, 'tuna_4.jpg', NULL, NULL),
(97, 25, 'mackerel_1.jpg', NULL, NULL),
(98, 25, 'mackerel_2.png', NULL, NULL),
(99, 25, 'mackerel_3.jpg', NULL, NULL),
(100, 25, 'mackerel_4.jpg', NULL, NULL),
(101, 26, 'goat_1.jpg', NULL, NULL),
(102, 26, 'goat_2.jpg', NULL, NULL),
(103, 26, 'goat_3.jpg', NULL, NULL),
(104, 26, 'goat_4.png', NULL, NULL),
(105, 27, 'chicken_1.jpg', NULL, NULL),
(106, 27, 'chicken_2.jpg', NULL, NULL),
(107, 27, 'chicken_3.jpg', NULL, NULL),
(108, 27, 'chicken_4.jpg', NULL, NULL),
(109, 28, 'pork_1.jpg', NULL, NULL),
(110, 28, 'pork_2.png', NULL, NULL),
(111, 28, 'pork_3.jpg', NULL, NULL),
(112, 28, 'pork_4.jpg', NULL, NULL),
(113, 29, 'lamb_1.jpg', NULL, NULL),
(114, 29, 'lamb_2.png', NULL, NULL),
(115, 29, 'lamb_3.jpg', NULL, NULL),
(116, 29, 'lamb_4.jpg', NULL, NULL),
(117, 30, 'Buffalo_1.jpg', NULL, NULL),
(118, 30, 'Buffalo_2.jpg', NULL, NULL),
(119, 30, 'Buffalo_3.jpg', NULL, NULL),
(120, 30, 'Buffalo_4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id_message` bigint(20) UNSIGNED NOT NULL,
  `code_group` varchar(10) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `link` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id_message`, `code_group`, `message`, `link`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UCT27', 'How long does it take you to import new vegetables?', NULL, 2, 1, '2023-03-28 17:00:00', NULL),
(2, 'UCT27', 'about 2-3 weeks', NULL, 7, 1, '2023-03-29 20:00:00', NULL),
(3, 'UCT27', 'Ok thanks', NULL, 2, 1, '2023-03-30 02:00:00', NULL),
(4, 'UCT27', 'Is anyone here?', NULL, 2, 1, '2023-04-12 02:00:00', NULL),
(5, 'UCT27', 'Yes, How can I help you?', NULL, 7, 1, '2023-04-12 04:00:00', NULL),
(6, 'UCT31', 'Why is buffalo meat so expensive?', NULL, 3, 1, '2023-04-29 17:00:00', NULL),
(7, 'UCT31', 'Sorry our buffalo meat is high quality', NULL, 1, 0, '2023-04-29 18:33:00', NULL),
(8, 'UCT48', 'Hi', NULL, 4, 1, '2023-03-01 17:00:00', NULL),
(9, 'UCT48', 'How can I help you?', NULL, 8, 0, '2023-03-01 19:00:00', NULL),
(10, NULL, 'Do you have octopus?', NULL, 3, 0, '2023-05-01 04:00:00', NULL),
(11, NULL, 'do you have shrimps??', NULL, 5, 0, '2023-05-17 20:03:26', NULL),
(12, NULL, 'Do you have no eggs?', NULL, 6, 0, '2023-05-17 20:03:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_11_015958_create_typeproduct', 1),
(6, '2023_04_11_020011_create_product', 1),
(7, '2023_04_11_020024_create_comment', 1),
(8, '2023_04_11_020035_create_order', 1),
(9, '2023_04_11_020041_create_cart', 1),
(10, '2023_04_11_020051_create_coupon', 1),
(11, '2023_04_11_020057_create_news', 1),
(12, '2023_04_11_020115_create_banner', 1),
(13, '2023_04_11_020121_create_slide', 1),
(14, '2023_04_11_020159_create_library', 1),
(15, '2023_04_11_020440_create_favourite', 1),
(16, '2023_04_11_020457_create_message', 1),
(17, '2023_04_11_020505_create_groupmessage', 1),
(18, '2023_04_15_031357_create_adddress', 1),
(19, '2023_04_30_082058_create_expense', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `title` varchar(70) NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `attr` varchar(255) DEFAULT NULL,
  `send_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `order_code`, `title`, `id_user`, `link`, `attr`, `send_admin`, `created_at`, `updated_at`) VALUES
(1, 'USR3_17', 'How do you think about your order?', 3, 'feedback', 'USR3_17', 0, '2023-05-13 17:00:00', NULL),
(2, 'USR6_25', 'How do you think about your order?', 6, 'feedback', 'USR6_25', 0, '2023-05-11 17:00:00', NULL),
(3, 'USR5_28', 'How do you think about your order?', 5, 'feedback', 'USR5_28', 0, '2023-05-11 17:00:00', NULL),
(4, 'USR4_28', 'How do you think about your order?', 4, 'feedback', 'USR4_28', 0, '2023-05-10 17:00:00', NULL),
(5, 'USR2_6', 'How do you think about your order?', 2, 'feedback', 'USR2_6', 0, '2023-05-13 17:00:00', NULL),
(6, 'USR3_18', 'Order Cancel', 3, 'USR3_18', NULL, 1, '2023-04-18 04:00:00', NULL),
(7, 'GUT_43', 'Order Transaction Failed', NULL, 'GUT_43', NULL, 1, '2023-04-28 17:00:00', NULL),
(8, NULL, 'New Product', NULL, 'products-details', '30', 0, '2023-05-17 20:03:26', NULL),
(9, NULL, 'We have a gift for you', NULL, 'show_coupon', 'MAYBE', 0, '2023-05-17 20:03:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id_order` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code_coupon` varchar(255) DEFAULT NULL,
  `shipping_fee` bigint(20) NOT NULL DEFAULT 24200,
  `method` enum('cod','paypal') NOT NULL,
  `delivery_method` varchar(255) NOT NULL,
  `status` enum('finished','confirmed','delivery','unconfirmed','cancel','transaction failed') NOT NULL,
  `instruction` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id_order`, `order_code`, `id_user`, `receiver`, `phone`, `address`, `email`, `code_coupon`, `shipping_fee`, `method`, `delivery_method`, `status`, `instruction`, `created_at`, `updated_at`) VALUES
(1, 'USR2_0', 2, 'User 1', '01243234568', '222 Tran Hung Dao, Phuong Cau Ong Lanh, Quan 1, TP Ho Chi Minh', 'guest2@gmail.com', 'NEWMEM', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-02-09 17:00:00', '2022-02-11 17:00:00'),
(2, 'USR4_0', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', 'NEWMEM', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-02-13 17:00:00', '2022-02-15 17:00:00'),
(3, 'USR5_0', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', 'NEWMEM', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-02-17 17:00:00', '2022-02-21 17:00:00'),
(4, 'USR4_1', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-02-27 17:00:00', '2022-03-02 17:00:00'),
(5, 'USR5_1', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-02-28 17:00:00', '2022-03-02 17:00:00'),
(6, 'USR4_2', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-03-07 17:00:00', '2022-03-09 17:00:00'),
(7, 'USR5_2', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-03-18 17:00:00', '2022-03-22 17:00:00'),
(8, 'USR6_0', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-03-21 17:00:00', '2022-03-22 17:00:00'),
(9, 'GUT_0', NULL, 'OwO', '01202169690', '122 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'anoynimus@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-03-21 17:00:00', '2022-03-24 17:00:00'),
(10, 'USR4_3', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-03-24 17:00:00', '2022-03-26 17:00:00'),
(11, 'USR5_3', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-03-25 17:00:00', '2022-03-27 17:00:00'),
(12, 'USR6_1', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-03-31 17:00:00', '2022-04-01 17:00:00'),
(13, 'GUT_1', NULL, 'OwO', '01202169690', '122 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'anoynimus@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-04-02 17:00:00', '2022-04-04 17:00:00'),
(14, 'USR4_4', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-03-24 17:00:00', '2022-04-09 17:00:00'),
(15, 'USR5_4', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-04-09 17:00:00', '2022-04-12 17:00:00'),
(16, 'USR6_2', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-04-21 17:00:00', '2022-04-24 17:00:00'),
(17, 'GUT_2', NULL, 'OwO', '01202169690', '122 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'anoynimus@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-04-27 17:00:00', '2022-04-30 17:00:00'),
(18, 'USR4_5', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', 'FREESHIP522', 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-05-04 17:00:00', '2022-05-09 17:00:00'),
(19, 'USR5_5', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', 'FREESHIP522', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-05-09 17:00:00', '2022-05-12 17:00:00'),
(20, 'USR6_3', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', 'FREESHIP522', 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-05-14 17:00:00', '2022-05-17 17:00:00'),
(21, 'GUT_3', NULL, 'OwO', '01202169690', '122 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'anoynimus3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-05-17 17:00:00', '2022-05-19 17:00:00'),
(22, 'USR4_6', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', 'FREESHIP522', 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-05-19 17:00:00', '2022-05-21 17:00:00'),
(23, 'USR5_6', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', 'FREESHIP522', 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-05-24 17:00:00', '2022-05-26 17:00:00'),
(24, 'USR6_4', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', 'FREESHIP522', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-05-28 17:00:00', '2022-06-01 17:00:00'),
(25, 'GUT_4', NULL, 'OwO', '01202169690', '12 Nguyen Trai, Phuong 1, Quan 1, TP Ho Chi Minh', 'anoynimus3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-05-31 17:00:00', '2022-06-03 17:00:00'),
(26, 'GUT_5', NULL, 'OwO', '01202756690', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'anoynimus2@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-06-03 17:00:00', '2022-06-05 17:00:00'),
(27, 'USR2_1', 2, 'Cat Tuong', '0919941037', '135 Tran Hung Dao, Phuong Cau Ong Lanh, Quan 1, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-06-08 17:00:00', '2022-06-10 17:00:00'),
(28, 'USR4_7', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-06-14 17:00:00', '2022-06-17 17:00:00'),
(29, 'USR5_7', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-06-19 17:00:00', '2022-06-21 17:00:00'),
(30, 'USR6_5', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2022-06-28 17:00:00', '2022-06-29 17:00:00'),
(31, 'GUT_6', NULL, 'UwU', '01202169690', '12 Nguyen Trai, Phuong 1, Quan 1, TP Ho Chi Minh', 'anoynis3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-06-25 17:00:00', '2022-06-27 17:00:00'),
(32, 'GUT_7', NULL, 'OwO', '01202756690', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'anoynimus2@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-06-26 17:00:00', '2022-06-29 17:00:00'),
(33, 'USR2_2', 2, 'Cat Tuong', '0919941037', '135 Tran Hung Dao, Phuong Cau Ong Lanh, Quan 1, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-06-30 17:00:00', '2022-07-02 17:00:00'),
(34, 'USR4_8', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-08 17:00:00', '2022-07-10 17:00:00'),
(35, 'USR5_8', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-11 17:00:00', '2022-07-13 17:00:00'),
(36, 'USR6_6', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-13 17:00:00', '2022-07-15 17:00:00'),
(37, 'GUT_8', NULL, 'UwU', '01202169690', '12 Nguyen Trai, Phuong 1, Quan 1, TP Ho Chi Minh', 'anoynis332@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-07-15 17:00:00', '2022-07-19 17:00:00'),
(38, 'GUT_9', NULL, 'OwO', '01202756690', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'anoynimus2@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-17 17:00:00', '2022-07-19 17:00:00'),
(39, 'USR2_3', 2, 'Cat Tuong', '0919941037', '135 Tran Hung Dao, Phuong Cau Ong Lanh, Quan 1, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-19 17:00:00', '2022-07-22 17:00:00'),
(40, 'USR4_9', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-21 17:00:00', '2022-07-24 17:00:00'),
(41, 'USR5_9', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2022-07-22 17:00:00', '2022-07-23 17:00:00'),
(42, 'USR6_7', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-25 17:00:00', '2022-07-29 17:00:00'),
(43, 'GUT_10', NULL, 'UwU', '01202169690', '12 Nguyen Trai, Phuong 1, Quan 1, TP Ho Chi Minh', 'anoynis332@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-07-31 17:00:00', '2022-08-02 17:00:00'),
(44, 'GUT_11', NULL, 'OwO', '012027522342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'anoynimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-01 17:00:00', '2022-08-03 17:00:00'),
(45, 'USR3_0', 3, 'MM', '0919941039', '33 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'didi01092k@gmail.com', 'NEWMEM', 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-01 17:00:00', '2023-08-05 17:00:00'),
(46, 'USR4_10', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-13 17:00:00', '2022-08-15 17:00:00'),
(47, 'USR5_10', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-14 17:00:00', '2022-08-16 17:00:00'),
(48, 'USR6_8', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-15 17:00:00', '2022-08-17 17:00:00'),
(49, 'GUT_12', NULL, 'UwU', '01202159690', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-21 17:00:00', '2022-08-23 17:00:00'),
(50, 'GUT_13', NULL, 'OwO', '012027522342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'anoynimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-08-23 17:00:00', '2022-08-25 17:00:00'),
(51, 'USR3_1', 3, 'MM', '0919941039', '33 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'didi01092k@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-26 17:00:00', '2022-08-29 17:00:00'),
(52, 'USR4_11', 4, 'User 3', '09199141036', '33 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-08-31 17:00:00', '2022-09-02 17:00:00'),
(53, 'USR5_11', 5, 'User 4', '09199141135', '34B Đường, Xã Trà Thanh, Huyện Tây Trà, Tỉnh Quảng Ngãi', 'guest4@gmail.com', NULL, 40700, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-01 17:00:00', '2022-09-03 17:00:00'),
(54, 'USR6_9', 6, 'User 5', '09199141111', '10 Đường gì đấy, Xã Lai Uyên, Huyện Bàu Bàng, Bình Dương', 'guest5@gmail.com', NULL, 38500, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-08 17:00:00', '2022-09-11 17:00:00'),
(55, 'GUT_14', NULL, 'UwU', '01202159690', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-11 17:00:00', '2022-09-13 17:00:00'),
(56, 'GUT_15', NULL, 'OwO', '012027522342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'anoynimu212@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-09-13 17:00:00', '2022-09-15 17:00:00'),
(57, 'USR3_2', 3, 'MM', '0919941039', '33 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'didi01092k@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-16 17:00:00', '2022-09-17 17:00:00'),
(58, 'USR4_12', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2022-09-19 17:00:00', '2022-09-20 17:00:00'),
(59, 'USR5_12', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-19 17:00:00', '2022-09-22 17:00:00'),
(60, 'USR6_10', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-22 17:00:00', '2022-09-25 17:00:00'),
(61, 'GUT_16', NULL, 'UwU', '01202159690', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-27 17:00:00', '2022-09-29 17:00:00'),
(62, 'GUT_17', NULL, 'OwO', '012027522342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'anoynimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-09-28 17:00:00', '2022-09-30 17:00:00'),
(63, 'USR3_3', 3, 'MM', '0919941039', '34B Đường, Xã Trà Thanh, Huyện Tây Trà, Tỉnh Quảng Ngãi', 'didi01092k@gmail.com', NULL, 40700, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-09-29 17:00:00', '2022-10-02 17:00:00'),
(64, 'USR3_4', 3, 'MM', '0122123435', '34B Đường, Xã Trà Thanh, Huyện Tây Trà, Tỉnh Quảng Ngãi', 'irisk5202402@gmail.com', NULL, 40700, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2022-10-02 19:00:00', '2022-10-03 04:00:00'),
(65, 'USR4_13', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-10-07 17:00:00', '2022-10-11 17:00:00'),
(66, 'USR5_13', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-10-11 17:00:00', '2022-10-12 17:00:00'),
(67, 'USR6_11', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-10-16 17:00:00', '2022-10-17 17:00:00'),
(68, 'GUT_18', NULL, 'UwU', '01202159690', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-10-17 17:00:00', '2022-09-29 17:00:00'),
(69, 'GUT_19', NULL, 'OwO', '017027557342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-10-18 17:00:00', '2022-10-22 17:00:00'),
(70, 'USR3_4', 3, 'MM', '0919941039', '34B Đường, Xã Trà Thanh, Huyện Tây Trà, Tỉnh Quảng Ngãi', 'didi01092k@gmail.com', NULL, 40700, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-10-19 17:00:00', '2022-10-23 17:00:00'),
(71, 'USR3_5', 3, 'MM', '0122123435', '34B Đường, Xã Trà Thanh, Huyện Tây Trà, Tỉnh Quảng Ngãi', 'irisk5202402@gmail.com', NULL, 40700, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-10-21 19:00:00', '2023-10-28 04:00:00'),
(72, 'USR4_14', 4, 'User 3', '09199141036', '12 Le Van Sy, Phuong 5, Quan 3, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-10-28 17:00:00', '2022-10-31 17:00:00'),
(73, 'USR5_14', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2022-11-01 17:00:00', '2022-11-03 17:00:00'),
(74, 'USR6_12', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-02 17:00:00', '2022-11-05 17:00:00'),
(75, 'GUT_20', NULL, 'UwU', '01202157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-08 17:00:00', '2022-11-11 17:00:00'),
(76, 'GUT_21', NULL, 'OwO', '01702717342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-12 17:00:00', '2022-11-13 17:00:00'),
(77, 'USR3_6', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-11-12 17:00:00', '2022-11-14 17:00:00'),
(78, 'USR4_15', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-14 17:00:00', '2022-11-15 17:00:00'),
(79, 'USR5_15', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-16 17:00:00', '2022-11-17 17:00:00'),
(80, 'USR6_13', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(81, 'GUT_22', NULL, 'UwU', '01202157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-21 17:00:00', '2022-11-23 17:00:00'),
(82, 'GUT_23', NULL, 'OwO', '01702717342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-22 17:00:00', '2022-11-24 17:00:00'),
(83, 'USR4_16', 4, 'User 3', '09199141036', '20 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', 'WEDNESDAY22', 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-22 17:00:00', '2022-11-25 17:00:00'),
(84, 'USR5_16', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', 'WEDNESDAY22', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-22 17:00:00', '2022-11-24 17:00:00'),
(85, 'USR6_14', 6, 'User 5', '09199141111', '33 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest5@gmail.com', 'WEDNESDAY22', 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-22 17:00:00', '2022-11-24 17:00:00'),
(86, 'GUT_24', NULL, 'UwU', '01202157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-11-27 17:00:00', '2022-11-29 17:00:00'),
(87, 'GUT_25', NULL, 'OwO', '01702717342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2022-11-30 17:00:00', '2022-12-01 17:00:00'),
(88, 'USR4_17', 4, 'User 3', '09199141036', '123 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-01 17:00:00', '2022-12-03 17:00:00'),
(89, 'USR5_17', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2022-12-01 17:00:00', '2022-12-02 17:00:00'),
(90, 'USR6_15', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-02 17:00:00', '2022-12-05 17:00:00'),
(91, 'GUT_26', NULL, 'UwU', '01223157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-11 17:00:00', '2022-12-13 17:00:00'),
(92, 'GUT_27', NULL, 'OwO', '0172717342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-12 17:00:00', '2022-12-14 17:00:00'),
(93, 'USR3_7', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-13 17:00:00', '2022-12-16 17:00:00'),
(94, 'USR4_18', 4, 'User 3', '09199141036', '123 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-19 17:00:00', '2022-12-21 17:00:00'),
(95, 'USR5_18', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2022-12-21 17:00:00', '2022-12-22 17:00:00'),
(96, 'USR4_19', 4, 'User 3', '09199141036', '123 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', 'MARRYCHIRT', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-23 17:00:00', '2022-12-25 17:00:00'),
(97, 'USR5_19', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', 'MARRYCHIRT', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-23 17:00:00', '2022-12-25 17:00:00'),
(98, 'USR6_16', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', 'MARRYCHIRT', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-23 17:00:00', '2022-12-25 17:00:00'),
(99, 'GUT_28', NULL, 'UwU', '01813157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-26 17:00:00', '2022-12-29 17:00:00'),
(100, 'GUT_29', NULL, 'OwO', '0172717342', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-28 17:00:00', '2023-01-01 17:00:00'),
(101, 'USR3_8', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2022-12-29 17:00:00', '2023-01-02 17:00:00'),
(102, 'USR4_20', 4, 'User 3', '09199141036', '123 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-02 17:00:00', '2023-01-03 17:00:00'),
(103, 'USR5_20', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-04 17:00:00', '2023-01-07 17:00:00'),
(104, 'USR6_17', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-03 17:00:00', '2023-01-05 17:00:00'),
(105, 'GUT_30', NULL, 'UwU', '01813157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-09 17:00:00', '2023-01-12 17:00:00'),
(106, 'GUT_31', NULL, 'OwO', '0132232423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-11 17:00:00', '2023-01-13 17:00:00'),
(107, 'USR3_9', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2023-01-14 17:00:00', '2023-01-15 17:00:00'),
(108, 'USR4_21', 4, 'User 3', '09199141036', '123 Nguyen Thi Minh Khai, Phuong Pham Ngu Lao, Quan 1, TP Ho Chi Minh', 'guest3@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-01-15 17:00:00', '2023-01-19 17:00:00'),
(109, 'USR5_21', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-17 17:00:00', '2023-01-20 17:00:00'),
(110, 'USR6_18', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-01-21 17:00:00', '2023-01-24 17:00:00'),
(111, 'GUT_32', NULL, 'UwU', '01813157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-25 17:00:00', '2023-01-27 17:00:00'),
(112, 'GUT_33', NULL, 'OwO', '0132232423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-01-27 17:00:00', '2023-01-31 17:00:00'),
(113, 'USR3_10', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-01-31 17:00:00', '2023-02-03 17:00:00'),
(114, 'USR4_22', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-02-04 17:00:00', '2023-02-06 17:00:00'),
(115, 'USR5_22', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-02-07 17:00:00', '2023-02-09 17:00:00'),
(116, 'USR6_19', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-02-11 17:00:00', '2023-02-14 17:00:00'),
(117, 'GUT_34', NULL, 'UwU', '01813157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-02-13 17:00:00', '2023-02-16 17:00:00'),
(118, 'GUT_35', NULL, 'OwO', '013223242333', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-02-17 17:00:00', '2023-02-20 17:00:00'),
(119, 'USR3_11', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-02-14 17:00:00', '2023-02-21 17:00:00'),
(120, 'USR4_23', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-02-23 17:00:00', '2023-02-26 17:00:00'),
(121, 'USR5_23', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-02-27 17:00:00', '2023-03-02 17:00:00'),
(122, 'USR6_20', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2023-03-01 17:00:00', '2023-03-04 17:00:00'),
(123, 'GUT_36', NULL, 'UwU', '01813157869', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis332@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-07 17:00:00', '2023-03-09 17:00:00'),
(124, 'GUT_37', NULL, 'OwO', '0132232423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-12 17:00:00', '2023-03-14 17:00:00'),
(125, 'USR3_12', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-14 17:00:00', '2023-03-17 17:00:00'),
(126, 'USR4_24', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', NULL, 44000, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-19 17:00:00', '2023-03-21 17:00:00'),
(127, 'USR5_24', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-23 17:00:00', '2023-03-25 17:00:00'),
(128, 'USR6_21', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-25 17:00:00', '2023-03-27 17:00:00'),
(129, 'GUT_38', NULL, 'UwU', '0181315319', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis32@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-27 17:00:00', '2023-03-29 17:00:00'),
(130, 'GUT_39', NULL, 'OwO', '01922382423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-03-28 17:00:00', '2023-04-02 17:00:00'),
(131, 'USR3_13', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-03-26 17:00:00', '2023-03-28 17:00:00'),
(132, 'USR4_25', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', 'FREESHIP423', 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-01 17:00:00', '2023-04-04 17:00:00'),
(133, 'USR5_25', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', 'FREESHIP423', 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-02 17:00:00', '2023-04-05 17:00:00'),
(134, 'USR6_22', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', 'FREESHIP423', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-05 17:00:00', '2023-04-07 17:00:00'),
(135, 'GUT_40', NULL, 'UwU', '01713153230', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis32@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-11 17:00:00', '2023-04-14 17:00:00'),
(136, 'GUT_41', NULL, 'OwO', '01922382423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-04-11 17:00:00', '2023-04-14 17:00:00'),
(137, 'USR3_14', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', 'FREESHIP423', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-16 17:00:00', '2023-04-18 17:00:00'),
(138, 'USR4_26', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', 'FREESHIP423', 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-19 17:00:00', '2023-04-21 17:00:00'),
(139, 'USR5_26', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', 'FREESHIP423', 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-22 17:00:00', '2023-04-24 17:00:00'),
(140, 'USR6_23', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-25 17:00:00', '2023-04-27 17:00:00'),
(141, 'GUT_42', NULL, 'UwU', '01713153203', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis32@gmail.com', NULL, 44000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-26 17:00:00', '2023-04-28 17:00:00'),
(142, 'GUT_43', NULL, 'OwO', '01922382423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-04-26 17:00:00', '2023-04-28 17:00:00'),
(143, 'USR3_15', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', 'FREESHIP423', 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-25 17:00:00', '2023-04-28 17:00:00'),
(144, 'USR2_4', 2, 'User 2', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-04-26 19:00:00', '2023-04-30 17:00:00'),
(145, 'USR4_27', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', NULL, 60000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-02 17:00:00', '2023-05-05 17:00:00'),
(146, 'USR5_27', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-03 17:00:00', '2023-05-05 17:00:00'),
(147, 'USR6_24', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-04 17:00:00', '2023-05-08 17:00:00'),
(148, 'GUT_44', NULL, 'UwU', '01713333452', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis32@gmail.com', NULL, 60000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-05 17:00:00', '2023-05-08 17:00:00'),
(149, 'GUT_45', NULL, 'OwO', '01922382423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-06 17:00:00', '2023-05-09 17:00:00'),
(150, 'USR3_16', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-07 17:00:00', '2023-05-11 17:00:00'),
(151, 'USR2_5', 2, 'User 2', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-09 19:00:00', '2023-05-11 17:00:00'),
(152, 'USR4_28', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', NULL, 60000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-07 17:00:00', '2023-05-10 17:00:00'),
(153, 'USR5_28', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-08 17:00:00', '2023-05-11 17:00:00'),
(154, 'USR6_25', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-07 17:00:00', '2023-05-11 17:00:00'),
(155, 'GUT_46', NULL, 'UwU', '01713153343', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis32@gmail.com', NULL, 60000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-08 17:00:00', '2023-05-10 17:00:00'),
(156, 'GUT_47', NULL, 'OwO', '019223212423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-09 17:00:00', '2023-05-11 17:00:00'),
(157, 'USR3_17', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-11 17:00:00', '2023-05-13 17:00:00'),
(158, 'USR2_6', 2, 'User 2', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'finished', NULL, '2023-05-11 19:00:00', '2023-05-13 17:00:00'),
(159, 'USR4_29', 4, 'User 3', '09199141036', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'guest3@gmail.com', NULL, 56000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'delivery', NULL, '2023-05-11 17:00:00', '2023-05-12 17:00:00'),
(160, 'USR5_29', 5, 'User 4', '09199141135', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'guest4@gmail.com', NULL, 24200, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'confirmed', NULL, '2023-05-13 17:00:00', '2023-05-13 18:00:00'),
(161, 'USR6_26', 6, 'User 5', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'confirmed', NULL, '2023-05-13 18:00:00', '2023-05-14 03:00:00'),
(162, 'USR2_7', 2, 'User 2', '09199141111', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'guest5@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'unconfirmed', NULL, '2023-05-13 19:00:00', NULL),
(163, 'GUT_48', NULL, 'UwU', '017131532055', '12 Đường, Xã Việt Tiến, Huyện Bảo Yên, Tỉnh Lào Cai', 'anoynis32@gmail.com', NULL, 50000, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'unconfirmed', NULL, '2023-05-13 21:00:00', NULL),
(164, 'GUT_49', NULL, 'OwO', '01922382423', '91C Đ. 3 Tháng 2, Phường 11, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'unconfirmed', NULL, '2023-05-13 23:00:00', NULL),
(165, 'GUT_50', NULL, 'OwO', '01922382423', '233 Nguyễn Tri Phương, Phường 5, Quận 10, TP Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'unconfirmed', NULL, '2023-05-13 23:00:00', NULL),
(166, 'GUT_51', NULL, 'OwO', '01922382423', '59C Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh', 'ano3nimu222@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'transaction failed', NULL, '2023-05-14 01:00:00', NULL),
(167, 'USR3_18', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'cancel', NULL, '2023-05-13 17:00:00', NULL),
(168, 'USR3_19', 3, 'MM', '0122123456', '43/32 Nguyen Huu Tien, Phuong Tay Thanh, Quan Tan Phu, TP Ho Chi Minh', 'cattuongw2000@gmail.com', NULL, 24200, 'cod', 'Giao Hang Tiet Kiem - Road Transport', 'unconfirmed', NULL, '2023-05-13 17:00:00', NULL),
(169, 'GUT_52', NULL, 'ssd', '0344576625', 'ểwrwerw, Xã Vĩnh Hưng A, Huyện Vĩnh Lợi, Bạc Liêu', 'quan0511@gmail.com', NULL, 30000, 'paypal', 'Giao Hang Tiet Kiem - Road Transport', 'unconfirmed', NULL, '2023-05-17 21:02:51', '2023-05-17 21:02:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_type` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `quantity` bigint(20) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `sale` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `name`, `id_type`, `status`, `quantity`, `description`, `price`, `sale`, `created_at`, `updated_at`) VALUES
(1, 'Corn', 1, 1, 5000, 'Maize or corn or sheath (two parts nomenclature: Zea mays L. ssp. mays) is a food crop that was domesticated in Central America and then spread throughout the Americas. Maize spread to the rest of the world after European contact with the Americas in the late 15th and early 16th centuries. Maize is the most widely grown food crop in the Americas (in the Americas alone). In the United States, production is already about 270 million tons per year). Hybrid maize varieties are preferred by farmers over conventional maize varieties due to their high yield and hybrid advantages. While some varieties of maize can grow up to 7 m (23 ft) tall in some places,[1] commercial varieties of maize have been produced with a height of only about 2.5 m (8 ft). Sweet corn (Zea mays var. rugosa or Zea mays var. saccharata) is generally lower than that of other varieties.', 12000, 10, '2022-01-28 17:00:00', NULL),
(2, 'calabash', 1, 1, 4000, '\n                Herbaceous vines have branched tendrils, covered with many soft white hairs. Leaves are broad, heart-shaped, not lobed or widely lobed, with white velvety hairs; The peduncle has 2 glands at the apex. The flowers are unisexual at the same base, large, white, with flower stalks up to 20 cm long. Berries are light green or dark green, variegated or round, straight or waist-length, aged rind hardens, white flesh. Seeds white, 1.5 cm long. <br/>\n                A long, cylindrical gourd with smooth green bark <br/>\n                There are many things grown, differing by the shape and size of the fruit, such as:  <br/>\n                - The fruit is cylindrical, long (sometimes up to 1m long), and has a spotted rind (star gourd). <br/>\n                - Has a cylindrical fruit similar to a star gourd, but the rind has no spots. This is the type that is common in Vietnam (see photo below and thumbnail 2). <br/>\n                - There are constriction fruits like wine gourds (Gourd Nam); This type can be used to make water bottles, wine bottles, and gourds. <br/>\n                - Has solid fruit. This is a new variety in Vietnam with high yield and efficiency. People can both sell tops, gourd flowers, and sell fruits <br/>\n                ', 10000, 20, '2022-01-28 17:00:00', NULL),
(3, 'pumkin', 1, 1, 4966, '\n                Pumpkin or pumpkin (called pumpkin in Southern dialect) is a type of string plant of the genus Cucurbita, family Cucurbitaceae. This is a common name for plants of the following species: Cucurbita pepo, Cucurbita mixta, Cucurbita maxima, and Cucurbita moschata.\n                The origin of the pumpkin is unknown, but many believe that the pumpkin originated in North America. The oldest evidence of pumpkin seeds dating from 7000 to 5500 BC has been found in Mexico. This is the largest fruit in the world.\n                Pumpkins weigh 0.45 kg or more and can weigh up to more than 450 kg, as was the case with an English farmer who planted a fruit that reached 608.3 kg. Pumpkin is spherical or cylindrical, when ripe, it is orange-yellow. The outside is notched and divided into segments. Pumpkin intestines have many seeds. Flat, oval seeds contain a lot of oil. Today\'s heaviest pumpkin was weighed in 2014, 1054 kg\n                ', 18000, 45, '2022-01-28 17:00:00', '2023-05-17 21:02:51'),
(4, 'tomato', 1, 1, 3852, 'Tomato (two part nomenclature: Solanum lycopersicum), belonging to the Solanaceae family, is a vegetable for food. The fruit is initially green, turning yellow to red when ripe. Tomatoes have a slightly sour taste and are a nutritious food, good for the body, rich in vitamins C and A, especially rich in healthy lycopene.\n                Tomato belongs to the Ca family, plants in this family usually grow 1 to 3 meters in height, having soft stems that crawl on the ground or vines on other stems, such as grapes. This family of plants is a perennial in its native habitat, but it is now grown as an annual in temperate and tropical climates.\n                ', 16000, 36, '2022-01-28 17:00:00', '2023-05-17 21:02:51'),
(5, 'carrot', 1, 1, 3500, 'The carrot (from the French carotte /kaʁɔt/, scientific name: Daucus carota subsp. sativus) is a bulbous plant, usually red, yellow, white or purple. The edible part of the carrot is the tuber, which is actually its taproot, which contains many precursors of vitamin A, which is good for the eyes.\n                In the wild, it is a biennial plant that develops a leaf reservoir during spring and summer, while accumulating large amounts of sugar in its fat taproot, storing energy for flowering throughout the year. Monday. Flowering stems can grow up to 1 m (3 ft) tall, with a canopy containing small white flowers, which produce fruit, known to botanists as pods\n                Carrots are vegetables that contain just enough sodium to maintain blood pressure at a reasonable level in the body. People who consume carrots regularly will have a higher than average rate of maintaining blood pressure at a healthy level.\n                ', 14000, 25, '2022-01-28 17:00:00', NULL),
(6, 'eggplant', 1, 1, 4500, 'Eggplant (two-part nomenclature: Solanum melongena) is a species of plant in the eggplant family with the same name, generally used as a culinary vegetable. Eggplant is closely related to tomato, potato, eggplant, eggplant and is native to southern India and Sri Lanka. Eggplant is an annual plant, growing to 40–150 cm (16–57 in) tall, usually spiny, with large coarsely lobed leaves, 10–20 cm long and 5–10 cm wide. Flowers white or purplish, with five-lobed corolla and yellow stamens.\n                Eggplant fruit is a fleshy berry, less than 3 cm in diameter in wild plants, but much larger in cultivated varieties. The fruit contains many small and soft seeds. Wild varieties can be larger, growing to 225 cm (84 inches) tall and large leaves (up to 30 cm long and 15 cm wide). The name eggplant does not really reflect this fruit, because there are many other types of eggplant that are also purple or eggplants that are sometimes not purple. However, the name eggplant also does not reflect the true shape of the fruit, because the fruit of many eggplant varieties is not oval as elongated as the goat\'s but rather round, with a diameter of 5 cm to 8 cm. cm..\n                ', 17000, 32, '2022-01-28 17:00:00', NULL),
(7, 'White radish', 1, 1, 3900, 'White radish (Japanese: Daikon-大根 - Great root, literally: large root) is a variety of radish plant. This variety has fast, long leaves (about 15 cm or more), white, and is native to Southeast or East Asia.They are used in Asian cuisine, in Japan they are ingredients for Daikon oden or radish stew (whole sliced) and sashimi accompaniment, in Vietnam they are the ingredients for pickled dishes. bread, and a stew in a bowl of noodles.\n                In terms of benefits, white radish has the ability to lower serum cholesterol levels and triglyceride levels, while increasing HDL cholesterol (good cholesterol).The mild spicy substance in white radish helps to fight bacteria and relieve pain. Helps support the liver and prevent cardiovascular disease because of the biological active ingredient betaine. This substance supports the liver to work better, and at the same time reduces the amount of homocysteine in the blood plasma - one of the causes of cardiovascular disease.\n                ', 14000, 0, '2022-01-28 17:00:00', NULL),
(8, 'onion', 1, 1, 4400, 'Most plants of the genus Allium are collectively known as onions. In practice, however, the word onion is generally used to refer to a plant species with the dichotomous name Allium cepa.\n                Onions include plant varieties: French red onion, red onion.\n                Onions are vegetables, unlike onions, which are spices. If we can use both the leaves and the tubers, but our onions are actually very small, onions mainly use the bulbs. The onion bulb is the stem part of the onion plant. Onions are related to purple onions, which are often dried or dried to make onions. Onions originating from Central Asia were transmitted to Europe and then to Vietnam. This species is suitable for temperate climates.\n                ', 8000, 0, '2022-01-28 17:00:00', NULL),
(9, 'bell pepper', 1, 1, 2000, 'Bell peppers, also known as sweet peppers (called pepper in the United Kingdom of Great Britain and Northern Ireland, Canada, Ireland or capsicum[1] in India, Bangladesh, Australia, Singapore and New Zealand), are the fruit of a group of bell peppers. plants, species Capsicum annuum.[2] Plants of this species produce fruit in a variety of colors, including red, yellow, orange, green, chocolate/brown, vanilla/white, and purple. Bell peppers are sometimes classified as the least pungent peppers in the same category as sweet peppers. Bell peppers have meat, a lot of meat. Bell peppers are native to Mexico, Central America, and northern South America. The stem and seeds inside the bell pepper are edible, but some people will find it bitter.[3] Bell pepper seeds were brought to Spain in 1493 and from there spread throughout Europe, Africa, and Asia. Today, China is the world\'s largest exporter of bell peppers, followed by Mexico and Indonesia.', 10000, 0, '2022-01-28 17:00:00', NULL),
(10, 'Lettuce', 1, 1, 5000, 'Lettuce also known as cabbage, cauliflower (scientific name: Lactuca sativa) is a species of flowering plant in the Asteraceae family that was first scientifically described by botanist L. in 1753. It is commonly grown as a leafy vegetable, especially in salads, sandwiches, burgers and many other dishes.\n                It is also known as lettuce, known since time immemorial for its refreshing, purifying and sedative properties. Its name comes from the milky (rubber) juice that oozes from the stems of vegetables after being cut\n                Species Lactuca sativa include types such as:\n                Iceburg Lettuce or Iceberg/crisphead: The outer leaf layer is greener and the inner leaf layer is whiter. This variety is most popular because of its crunchy leaf texture, mild flavor, and watery content. It is a rich source of choline (a naturally occurring amine, C5H15NO2, commonly classified as a B complex vitamin, and a component of many other important biomolecules, such as acetylcholine and lecithin).\n                Romaine Lettuce or Cos Lettuce (Romaine Lettuce, Lettuce): Has long, dark green leaves. It has a crispy leaf texture and a richer flavor than other varieties. It is a rich source of vitamins A, C, B1 and B2, and folic acid.\n                Butterhead Lettuce: This is a salad with large and loosely arranged leaves that are easy to separate from its stem. It has a softer leaf texture, with a sweeter flavor than its relative.\n                Loose-leaf Lettuce: As the name suggests, this variety has discretely arranged leaves, with a wide, curly crown. It has a mild flavor and a slightly crunchy leaf texture.\n                ', 28000, 20, '2022-01-28 17:00:00', NULL),
(11, 'coconut', 2, 1, 4000, 'Coconut (Cocos nucifera) is a species of woody plant, member of the family Arecaceae and the only living species of the genus Cocos.[1] Coconuts are ubiquitous in coastal tropical regions and are a tropical cultural icon. Coconuts provide food, fuel, cosmetics, folk medicine and building materials, among many other uses. The inner flesh of the ripe coconut, as well as the coconut milk that is extracted from it, is a familiar part of the diet of people living in the tropics and subtropics. The coconut fruit is different from other fruits because the endosperm contains a large amount of clear liquid, known as coconut water. Ripe coconuts are used as food, or processed to get coconut oil and coconut milk from the fruit pulp, charcoal from the hard shell and coir from the fibrous shell. The desiccated coconut meat is called copra, the oil and juice extracted from this is often used in cooking - frying in particular - as well as in soaps and cosmetics. Sweet coconut sap can be used as a drink or fermented into coconut wine, coconut vinegar. Hard shells, fibrous husks and long leaves can be used as raw materials to make a variety of interior decoration products.', 20000, 0, '2022-01-28 17:00:00', NULL),
(12, 'watermelon', 2, 1, 3900, 'Watermelon (scientific name Citrullus lanatus) is a species of plant in the family Cucurbitaceae, a vine-like flowering plant native to West Africa. It is grown for its fruit. Watermelon (Citrullus lanatus) is a species of long, twisted vine in the flowering plant family Cucurbitaceae. There is evidence from watermelon seeds in Pharaoh\'s tombs in ancient Egypt. Watermelon is grown in tropical and subtropical regions worldwide for its edible fruit, is a special type of berry with a hard rind and no division in the fruit, botanically known as pepo. The flesh is sweet, succulent, often deep red to pink, with many black seeds, although seedless varieties have also been produced. The fruit can be eaten raw or processed, and the peel can be eaten after cooking. Breeding efforts have produced disease-resistant varieties of watermelon. Many varieties of watermelon plants can produce mature fruit within 100 days of planting.', 18000, 45, '2022-01-28 17:00:00', NULL),
(13, 'pear', 2, 1, 2500, 'Pears are native to coastal and temperate regions of the Old World, from western Europe and northern Africa eastward across Asia. They are moderately sized trees, growing to 10–17 m tall, often with tall, narrow foliage; Some species are shrubs. Their leaves are alternate, simple, 2–12 cm long, glossy green in some species, with dense silvery-white hairs in others; Leaf shape ranges from broad oval to narrow lanceolate. Most are deciduous, but 1-2 species in Southeast Asia are evergreen. Most species are cold tolerant, surviving temperatures down to between −25 °C and −40 °C in winter, with the exception of evergreen species, which are tolerant to colds only to about −15 ° C.', 29000, 30, '2022-03-28 17:00:00', NULL),
(14, 'plum', 2, 1, 2800, 'Plums are the fruit of several species in the subgenus Plums. Plums that are dried are called prunes. Plum is a fruit tree domesticated by humans very early. Plums have long appeared in cuisine in many parts of the world. Although there are many different species of plum, there are currently only two species of global commercial value, the plum plum and the European plum.\n\n                Because plums are large and succulent, they are not suitable for making prunes, but with a long shelf life, the species dominates the fresh fruit market. European plums are quite firm, have a high content of soluble solids and do not ferment during the drying process, so most prunes on the market are made from this species.\n                ', 30000, 20, '2022-07-09 17:00:00', NULL),
(15, 'mangosteen', 2, 1, 4600, 'Mangosteen (Garcinia mangostana), also known as sweet garlic[2], is a species of tree in the Clusiaceae family. It is also a tropical evergreen tree with edible fruit, native to the island nations of Southeast Asia. Its origin is uncertain due to extensive prehistoric cultivation.[3][4] It grows mainly in Southeast Asia, Southwest India and other tropical areas such as Colombia, Puerto Rico and Florida,[3][5][6] where the tree has been introduced. The tree is 6 to 25 m (19.7 to 82.0 ft) tall.[3] The fruit when ripe has a thick outer skin, dark purple red color, the skin is inedible.[3][5] The flesh is ivory white, succulent, slightly fibrous and divided into many segments, a fruit can contain about 4, 8 packs, very rarely 3 or 9. The fruit has a sweet and sour taste and an attractive aroma. Within each fruit, the edible aromatic flesh surrounding each seed is the vegetative pod, i.e. the inner layer of the ovary.[7][8] The seeds are almond-shaped and small in size.', 45000, 25, '2022-01-28 17:00:00', NULL),
(16, 'durian', 2, 1, 3400, 'Durian is considered by many in Southeast Asia as the (king of fruits). It is characterized by its large size, strong odor, and many sharp spines surrounding its shell. The fruit can reach 30 centimeters (12 in) in length and 15 centimeters (6 in) in diameter, often weighing one to three kilograms (2 to 7 lb). Depending on the species, the fruit has an oblong to round shape, the color of the peel is from green to brown, and the color of the fruit is from light yellow to red.\n                The flesh of the fruit is edible, and gives off a characteristic, heavy and strong odor, even when the rind is intact. Some people find durian to have a pleasant sweet aroma, but others are intolerable and uncomfortable with the smell. The scent of durian produces reactions ranging from fascination to intense disgust, and has been described as rotten onion, turpentine or sewage. Due to the long-lasting smell of durian, it is banned from some hotels and public transport in Southeast Asia.\n                ', 220000, 10, '2022-06-28 17:00:00', NULL),
(17, 'apple', 2, 1, 5000, 'Apples contain a lot of nutrients that are beneficial to your health such as Carb, fiber, sugar, fat, vitamin C, potassium, magnesium, etc. Although providing many nutrients, an apple only contains 52 nutrients. calories.\n                Besides, another reason why many people choose this fruit is that it is delicious and can be processed in many different ways. When combined with other foods, the dishes from apples will be more diverse and rich, bringing delicious and attractive flavors while still ensuring nutritional value.\n                ', 49000, 40, '2022-03-31 17:00:00', NULL),
(18, 'pinapple', 2, 1, 4600, 'Pineapple has other names such as: pineapple, pineapple, ba la, scientific name Ananas comosus, is a tropical fruit. Pineapple is native to Paraguay and southern Brazil.\n                The commonly called pineapple fruit is actually the axis of the flower and the succulent bracts gathered together, and are indeed the (pineapple eyes). Pineapple is eaten fresh or canned as slices, slices, juices or mixed juices. There are two types of pineapples, pineapples with thorns and without thorns: pineapples with thorns, the West called (clumps)and those without thorns called (Thomas).\n                Pineapple has spiny leaves that grow in asterisk clusters. The leaves are long and lance-shaped and have margins with serrations or spines. The flowers grow from the central part of the asterisk-shaped leaves, each with its own sepals. They grow in strong head-shaped clusters on short, stout stems. The sepals become fat and watery and develop into a complex known as the pineapple fruit (false fruit), which grows above the asteroid clusters of leaves.\n                ', 20000, 25, '2022-01-31 17:00:00', NULL),
(19, 'litchi', 2, 1, 3600, 'Litchi is a tropical woody fruit tree, native to southern China; where it is known as 荔枝 (pinyin: luizhī, Sino-Vietnamese: le chi), distributed south to Indonesia and east to the Philippines (where it is called alupag).\n                Litchi is an evergreen tree of medium size, growing to 15–20 m tall, with alternately pinnate leaves, each 15–25 cm long, with 2-8 lateral leaflets 5–10 cm long. and no leaflets at the apex. The newly sprouted young leaves are bright copper-red, then gradually turn green when reaching their maximum size. The flowers are small, greenish-white or yellowish-white, in panicles up to 30 cm long.\n                The fruit is a drupe, globose or slightly oblong, 3–4 cm long and 3 cm in diameter. The outer skin is red, rough texture, inedible but easily peeled. Inside is a layer of translucent white flesh, sweet and rich in vitamin C, with a texture similar to that of grapes. In the center of the fruit is a brown seed, 2 cm long and 1-1.5 cm in diameter. The seeds - similar to those of the horse chestnut fruit - are mildly toxic and should not be eaten. Fruit ripens from June (in regions near the equator) to October (in regions far from the equator), about 100 days after flowering.\n                ', 40000, 15, '2022-08-28 17:00:00', NULL),
(20, 'mango', 2, 1, 4000, 'Mango is a sweet-tasting fruit of the genus Mango, which includes numerous tropical fruits, grown mainly as edible fruit. The majority of species found in the wild are wild mangoes. They all belong to the Anacardiaceae family of flowering plants. The mango is native to South and Southeast Asia, from where it has been distributed worldwide to become one of the most cultivated fruits in the tropics. The highest densities of the genus Mango (Magifera) are found west of Malesia (Sumatra, Java and Borneo) and in Myanmar and India.[1] While other Mangifera species (e.g. horse mango, M. Foetida) are also grown on a more local basis, Mangifera indica - common mango or Indian mango - is a mango tree commonly grown only in many areas. tropical and subtropical regions. It is native to India and Myanmar.[2] It is the national fruit of India, Pakistan, the Philippines, and the national tree of Bangladesh.[3] In some cultures, its fruit and leaves are used as ceremonial decorations at weddings, celebrations, and religious ceremonies.', 35000, 40, '2022-05-11 17:00:00', NULL),
(21, 'beef', 3, 1, 5000, 'Cow is the common name for animals in the genus Bos with the scientific name Bos, including bison and domestic cows. The genus Bos can be divided into 4 subgenus: Bos, Bibos, Novibos, Poephagus, but the distinction between them is still controversial. This genus currently has 5 extant species. However, some authors consider this genus to have up to 7 species because domesticated cattle breeds are also considered separate species by them.\n                The Bovine family is known from fossil records from the Early Miocene, about 20 Ma. The earliest bovines, such as Eotragus, were small animals, somewhat similar to present-day Gazelles and probably lived in woodland habitats. The number of bovine species increased sharply in the Late Miocene, when many species adapted to a more open and grassland environment.\n                The greatest number of modern species of the bovine family belongs to Africa, while the largest but less diverse populations are found in Asia and North America. Many species of this family are thought to have evolved in Asia but were unable to survive due to predation by humans from Africa in the late Pleistocene. In contrast, African species have many thousands or millions of years to adapt to the gradual development of human hunting skills. However, many of the domesticated species in this family are of Asian origin (goats, sheep, buffalo and yaks). This may be because these species are less afraid of humans and more docile.\n                ', 250000, 20, '2022-03-28 17:00:00', NULL),
(22, 'plaice', 3, 1, 3700, 'In addition to sea bream fish, now in our country there are also freshwater pomfrets. Freshwater pompano has the scientific name of Colossoma brachypomum, originated in the Amazon region, South America, and was imported into our country in 1998.\n                This fish gives delicious meat, and grows 3-4 times faster than other fish species, currently being raised in many localities. The freshwater white pomfret has a silvery gray color or a bluish silver color, the upper and lower jaws of the fish both have sharp teeth that work to tear food (small fish, shrimp, shrimp...).\n                Lives off the coast of the Middle East, South Asia, Southeast Asia. This fish is prized in the Indo-Pacific region for its taste. It is often confused with Trachinotus carolinus, which lives off the coast of the Gulf of Mexico.\n                ', 380000, 40, '2022-03-28 17:00:00', NULL),
(23, 'Snakehead fish', 3, 1, 2500, 'Fish family (other names: Banana fish, Snakehead fish, Lobster fish, Tilapia fish, Betel nut, flatfish, Dolphin, depending on the region) are fish species of the family Channidae. This family has 2 genera and the living species is Channa, currently known with 39 species, Parachanna currently has 3 species in Africa.\n                In Vietnam, mainly Channa maculata (there is a document called Ophiocephalus maculatus / Bostrychus maculatus) and Channa argus (also known as Ophiocephalus argus or Chinese fruit fish).\n                Dorsal fin with 40 - 46 rays; anal fin with 28 - 30 rays, lateral scales 41 - 55. The head of the Channa maculata has a pattern similar to the word most and the two letters bowl while the head of the Channa argus is relatively pointed and long like a snake\'s head. Their head is flat compared to the body, the scales are gray-brown streaked with light gray spots. The back is brownish black.\n                ', 29000, 10, '2022-04-28 17:00:00', NULL),
(24, 'tuna', 3, 1, 9000, 'Tuna (also known as humpback fish) is a large fish of the family Scombridae, mainly of the genus Thunnus, living in warm seas, about 185 km from the shore. In Vietnam, Tuna is the local name for bigeye tuna and yellowfin tuna[1]. Tuna is a particularly delicious seafood, very nutritious (bigeye tuna), processed into a variety of delicious dishes and created a valuable source of export goods.\n                Tuna fishing in Vietnam was born in 1994, thanks to the effort of discovering the fishing method of Phu Yen fishermen. After that, this profession gradually spread, becoming the strength of fishermen in the South Central Coast such as Quang Ngai, Binh Dinh, Phu Yen, Khanh Hoa.... On average, Binh Dinh fishermen can catch 10,000 tons of fish each year. Ocean tuna (CNDD), accounting for more than 50% of the country\'s total catch\n                ', 43000, 20, '2022-06-28 17:00:00', NULL),
(25, 'mackerel', 3, 1, 9800, 'Mackerel is the common name applied to several different species of fish mainly from the Tuna family. They inhabit both tropical and temperate seas. The vast majority of mackerel species live offshore in marine environments, but some, for example Spanish mackerel (Spanish mackerel, scientific name Scomberomorus maculatus) are inshore and can be found near coastal areas. bridge and jetty. The largest type of mackerel is King Mackerel (scientific name Scomberomorus cavalla) which can grow up to 1.68 m long. The common feature of all types of mackerel is a long, slender body (different from tuna, which has a gourd body), with many small fins located behind the large fins on the back and abdomen. Mackerel, if it has scales, is also very small.\n                Mackerel is preferred and caught a lot because of its rich meat and fish oil; They are also known to be capable of fighting. Mackerel is an important object in the industrial fishery and recreational fishing industry. The flesh of mackerel is perishable, rapidly decomposing, especially in hot and humid tropical environments, and so can cause poisoning if eaten rotten fish. Unless handled and stored properly, mackerel must be made into food the same day. For this reason, mackerel has traditionally been sold in London even on Sundays and it is also the only fish that must be salted when making sushi.\n                ', 30000, 0, '2022-05-28 17:00:00', NULL),
(26, 'goat', 3, 1, 1000, 'Goat meat is a food meat from domestic goats, which is an important and popular food source in some countries such as Bangladesh, Nepal, Sri Lanka, Pakistan, India and some regions in Vietnam (with The specialty is Ninh Binh mountain goat), goat meat is said to be a nutritious food and has the effect of enhancing physiological ability.\n                Goat meat has a delicious taste, has a nutritious effect, keeps warm very well, very suitable to eat in the cold season.[4] In general, goat meat has the effect of promoting blood circulation, increasing body temperature, useful in treating tuberculosis, bronchitis, asthma. Nutritious dishes that are easy to prepare such as porridge, goat meat stewed with garlic, goat meat stewed with carrots, stewed with wine... According to oriental medicine, goat meat is a nutritious food, helping to cure many diseases.\n                ', 330000, 1, '2022-03-28 17:00:00', NULL),
(27, 'chicken', 3, 1, 10000, 'Chicken or chicken, Hill chicken (three-part nomenclature: Gallus gallus domesticus) is a subspecies of bird that has been domesticated by humans thousands of years ago. Some suggest that this species descended from wild birds in India and tropical red junglefowl in Southeast Asia. In the bird world, chickens are the most dominant species with 24 billion individuals (statistics in 2003).[1] People often use chicken meat, chicken eggs and chicken feathers. In addition, today, people also use chicken to do scientific research experiments in the fields of biology, physics, chemistry.\n                Chickens are omnivores. In the wild, they often dig through the soil looking for seeds, insects, lizards or young mice. The lifespan of chickens can range from five to ten years depending on the breed.[2] The oldest hen in the world lived for 16 years and was recorded in the Guinness Book of Records.[3] Roosters often look different from hens by their colorful plumage, long and glossy tail, and the pointed feathers on the neck and back that are usually lighter and darker in color. However, in some chicken breeds such as the Sebright, the rooster has the same color as the hen, only slightly different in the slightly pointed neck feathers. Males can be differentiated from hens based on the cock\'s crest or the growth of spurs on the rooster\'s legs. Adult chickens also have fleshy bibs on their necks below their beaks. Both roosters and hens have crests and abs, but in most breeds these are only prominent in roosters. In some breeds, a mutation occurs that causes the chicken\'s head to have a feather that looks like a human beard.\n                Although generally light birds can fly short distances at low altitudes, such as over hedges or bushes, most domestic birds are burrowing birds and are not able to fly as far as those that fly with Full body structure adapted for aerial behavior. Chickens sometimes fly in bursts when exploring their surroundings or hiding from danger.\n                ', 190000, 10, '2022-02-18 17:00:00', NULL),
(28, 'pork', 3, 1, 10000, 'The domestic pig or domestic pig is a domesticated breed of wild boar, raised for meat. Most domestic pigs have a thin coat on the surface of their skin. The domestic pig is often thought to be a subspecies from their wild ancestor, the wild boar, in which case they are given the biological name Sus scrofa domesticus. Some taxonomists consider domestic pigs a separate species and name them Sus domesticus, and wild boar S. scrofa. Wild boars joined humans 13,000–12,700 years ago. Domestic pigs escaped from captivity have returned to the wild in some parts of the world (e.g., New Zealand) and pose a number of environmental hazards as pests.\n                Domesticated pigs are mostly considered a subspecies of their wild ancestor, Sus scrofa according to Carl Linnaeus in 1758, giving in this case the official name Sus scrofa domesticus. In 1777, Johann Christian Polycarp Erxleben classified the domesticated pig as an independent species from the wild, and named it Sus domesticus, which is still used by some taxonomists.\n                ', 220000, 0, '2022-01-31 17:00:00', NULL),
(29, 'lamb', 3, 1, 1200, 'Lamb is similar in appearance to duck and beef, but good lamb is a meat with a smooth, tender, highly elastic texture that seems a bit pliable. A piece of meat that has a light pink to red cut, a little white fat inside the meat is fresh, a piece of lamb that has turned purple or yellow fat is the lamb has not reached the best quality. The characteristic of lamb is that it has a pungent smell due to the sharp fat attached to it.\n                Lamb meat is also a strange dish that contains a lot of nutrients beneficial to health, especially the immune system, nervous system, memory... Lamb helps to add many nutrients and blood, to help keep the penis healthy. . Compared with goat, the content of nutrients in lamb is not inferior. Lamb meat is delicious, rich in nutrients, low in fat, low in cholesterol, plus the sheep only eat grass, so it is clean, so lamb is being chosen by many consumers.\n                ', 500000, 10, '2022-06-28 17:00:00', NULL),
(30, 'Buffalo', 3, 1, 5000, 'Buffalo meat is the meat of domestic buffalo species. Buffalo meat is an important food source for the inhabitants of South Asia and Southeast Asia where buffalo farming is common. In terms of nutritional value, buffalo meat is not inferior to other types of meat such as beef or pork, even has some advantages such as buffalo meat with the advantage of low fat, high iron content, welding properties but not toxic, suitable for cooking in hot season[1]. Buffalo meat with buffalo horns, buffalo milk, buffalo teeth, many other parts such as buffalo skin, liver viscera, spleen, buffalo stomach are used. Compared to beef, in fact, buffalo meat and beef have the same nutritional value and deliciousness', 500000, 0, '2022-04-28 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id_slide` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `title_color` varchar(7) NOT NULL DEFAULT '#000000',
  `content` varchar(200) DEFAULT NULL,
  `content_color` varchar(7) NOT NULL DEFAULT '#343A40',
  `link` varchar(40) DEFAULT NULL,
  `btn_content` varchar(20) DEFAULT NULL,
  `btn_color` varchar(7) NOT NULL DEFAULT '#ffffff',
  `btn_bg_color` varchar(7) NOT NULL DEFAULT '#000000',
  `attr` varchar(255) DEFAULT NULL,
  `alert` varchar(40) DEFAULT NULL,
  `alert_size` varchar(4) NOT NULL DEFAULT 'fs-6',
  `alert_color` varchar(7) NOT NULL DEFAULT '#000000',
  `alert_bg` varchar(7) NOT NULL DEFAULT '#dc3545',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id_slide`, `image`, `title`, `title_color`, `content`, `content_color`, `link`, `btn_content`, `btn_color`, `btn_bg_color`, `attr`, `alert`, `alert_size`, `alert_color`, `alert_bg`, `created_at`, `updated_at`) VALUES
(1, 'slide-1.jpg', 'SuperMarket For Fresh Grocery', '#000000', 'Introduced a new model for online grocery shopping and convenient home delivery.', '#5C6C75', 'allProduct', 'Shop Now', '#ffffff', '#000000', NULL, 'Opening Sale Discount 50%', 'fs-6', '#000000', '#FFC107', '2023-05-17 20:03:25', NULL),
(2, 'slider-2.jpg', 'Free Shipping', '#000000', 'Free Shipping to First-Time Customers Only, After promotions and discounts are applied.', '#5C6C75', 'signup', 'Sign Up', '#ffffff', '#000000', NULL, 'Free Shipping For New Member', 'fs-6', '#000000', '#FFC107', '2023-05-17 20:03:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typeproduct`
--

CREATE TABLE `typeproduct` (
  `id_type` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `typeproduct`
--

INSERT INTO `typeproduct` (`id_type`, `type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vegetable', 'vegetable.jpg', 'Active', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(2, 'fruit', 'fruit.jpg', 'Active', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(3, 'meat', 'meat.jpg', 'Active', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(4, 'Dairy, Bread & Eggs', 'category-dairy-bread-eggs.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(5, 'Snack & Munchies', 'category-snack-munchies.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(6, 'Bakery & Biscuits', 'category-bakery-biscuits.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(7, 'Instant Food', 'category-instant-food.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(8, 'Tea, Coffee & Drinks', 'category-tea-coffee-drinks.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(9, 'Atta, Rice & Dal', 'category-atta-rice-dal.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(10, 'Baby Care', 'category-baby-care.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(11, 'Chicken, Meat & Fish', 'category-chicken-meat-fish.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(12, 'Cleaning Essentials', 'category-cleaning-essentials.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01'),
(13, 'Pet Care', 'category-pet-care.jpg', 'Disabled', '2023-03-31 17:00:01', '2023-04-24 17:00:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `admin` enum('0','1','2') NOT NULL DEFAULT '0',
  `google_id` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification_token` varchar(32) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `name`, `phone`, `avatar`, `email`, `admin`, `google_id`, `email_verified`, `email_verification_token`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '0120000000', 'admin.png', 'admin@gmail.com', '1', NULL, 1, NULL, NULL, '$2y$10$6OupjZUbDcxTQqycMaUaN.QmmcbNuTlCkNawdvR9pTSL0uuiJA7Bq', 1, NULL, '2022-01-22 17:00:00', NULL),
(2, 'User 1', '0120000001', 'avatar-1.jpg', 'guest1@gmail.com', '0', NULL, 1, NULL, NULL, '$2y$10$0RS8CyCHJ9pllU9ZAKM.Vu11GSe57HxaEyWe3hLPfjBqB3vDGEJgi', 1, NULL, '2022-01-28 17:00:00', NULL),
(3, 'User 2', '0120000002', 'avatar-2.jpg', 'guest2@gmail.com', '0', NULL, 1, NULL, NULL, '$2y$10$vFohhv/6yjo63psOOMxBzOEfOSjsPyUQ4hErEbpksRuPQyaPKVRcS', 1, NULL, '2022-01-29 17:00:00', NULL),
(4, 'User 3', '0120000003', 'avatar-3.jpg', 'guest3@gmail.com', '0', NULL, 1, NULL, NULL, '$2y$10$I1Xj.yXJgh30X76t0OBPU.ONduFHzw6hftdJWd33eevj8VucQv3aa', 1, NULL, '2022-01-30 17:00:00', NULL),
(5, 'User 4', '0120000004', 'avatar-4.jpg', 'guest4@gmail.com', '0', NULL, 1, NULL, NULL, '$2y$10$kSzMh1iiGfMkKG278VgdE.edd0vrKxkHXomfPXalJjZ49oQ7tdNAy', 1, NULL, '2022-01-31 17:00:00', NULL),
(6, 'User 5', '0120000005', 'avatar-5.jpg', 'guest5@gmail.com', '0', NULL, 1, NULL, NULL, '$2y$10$CfuOrbsjyvSoAX5ktPU3OuZHDcJbEUc8ewF4wccNXcYohmd2W562O', 1, NULL, '2022-02-28 17:00:00', NULL),
(7, 'Cat Tuong', '0919941037', 'user_0_meme-2.jpg', 'cattuongw2000@gmail.com', '1', NULL, 1, NULL, NULL, '$2y$10$5sqzbyVIlo1176bDnWGNjOL6HuiRkpy.fvH.wYR4/oTHP6O.ZrZCK', 1, NULL, '2022-11-22 17:00:00', NULL),
(8, 'host', NULL, NULL, 'host@gmail.com', '2', NULL, 1, NULL, NULL, '$2y$10$cz4scOt/Gb3xqXK40FOw6OTo6RgylUhloCajsQe3rht4SbKmO5kpG', 1, NULL, '2022-01-22 17:00:00', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id_coupon`),
  ADD UNIQUE KEY `coupon_code_unique` (`code`);

--
-- Chỉ mục cho bảng `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id_expense`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id_fa`);

--
-- Chỉ mục cho bảng `groupmessage`
--
ALTER TABLE `groupmessage`
  ADD PRIMARY KEY (`id_group`);

--
-- Chỉ mục cho bảng `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id_lib`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD PRIMARY KEY (`id_type`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id_address` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id_coupon` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `expense`
--
ALTER TABLE `expense`
  MODIFY `id_expense` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favourite`
--
ALTER TABLE `favourite`
  MODIFY `id_fa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groupmessage`
--
ALTER TABLE `groupmessage`
  MODIFY `id_group` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `library`
--
ALTER TABLE `library`
  MODIFY `id_lib` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id_message` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id_order` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `typeproduct`
--
ALTER TABLE `typeproduct`
  MODIFY `id_type` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
