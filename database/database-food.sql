-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2020 at 07:29 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--
CREATE DATABASE IF NOT EXISTS `food_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `food_db`;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `FOOD_ID` int(5) NOT NULL,
  `FOOD_SHOP_ID` int(5) NOT NULL,
  `FOOD_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `FOOD_CAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`FOOD_ID`, `FOOD_SHOP_ID`, `FOOD_NAME`, `FOOD_CAL`) VALUES
(1, 3, 'Soy garlic Chicken Wing', 145),
(2, 3, 'Soy garlic chicken (Small leg)', 100),
(3, 3, 'Soy garlic Chicken Leg', 268),
(4, 3, 'Fried Chicken Breast Strips', 149),
(5, 3, 'Hot Wing', 147),
(6, 3, 'Chicken Crispy Salad', 316),
(7, 3, 'Tofu Salad', 140),
(8, 3, 'Cheese Tteokbokki', 215),
(9, 4, 'Cheeseburger', 286),
(10, 4, 'Chicken Strips', 292),
(11, 4, 'CROISSAN\'WICH with Egg and Cheese', 311),
(12, 4, 'CROISSAN\'WICH with Sausage and Cheese', 493),
(13, 4, 'CROISSAN\'WICH with Sausage, Egg and Cheese', 527),
(14, 4, 'Double Cheeseburger', 457),
(15, 4, 'DOUBLE WHOPPER, no cheese', 942),
(16, 4, 'DOUBLE WHOPPER, with cheese', 1061),
(17, 4, 'french fries small', 207),
(18, 4, 'french fries medium', 328),
(19, 4, 'french fries large', 448),
(20, 4, 'french toast sticks', 373),
(21, 4, 'Hamburger', 258),
(22, 4, 'Hash Brown Rounds', 483),
(23, 4, 'Onion Rings small', 379),
(24, 4, 'Onion Rings medium', 488),
(25, 4, 'Onion Rings large', 592),
(26, 4, 'Original Chicken Sandwich', 569),
(27, 4, 'Premium Fish Sandwich', 572),
(28, 4, 'Vanilla Shake small', 501),
(29, 4, 'Vanilla Shake medium', 667),
(30, 4, 'WHOPPER, no cheese', 678),
(31, 4, 'WHOPPER, with cheese', 790),
(32, 5, 'DOMINO\'S 14\" Cheese Pizza Classic Hand-Tossed Crust', 2223),
(33, 5, 'DOMINO\'S 14\" Cheese Pizza, Crunchy Thin Crust', 1609),
(34, 5, 'DOMINO\'S 14\" Cheese Pizza, Ultimate Deep Dish Crust', 2510),
(35, 5, 'DOMINO\'S 14\" EXTRAVAGANZZA FEAST Pizza, Classic Hand-Tossed Crust', 2987),
(36, 5, 'DOMINO\'S 14\" Pepperoni Pizza, Classic Hand-Tossed Crust', 2476),
(37, 5, 'DOMINO\'S 14\" Pepperoni Pizza, Crunchy Thin Crust', 1847),
(38, 5, 'DOMINO\'S 14\" Pepperoni Pizza, Ultimate Deep Dish Crust', 2785),
(39, 5, 'DOMINO\'S 14\" Sausage Pizza, Classic Hand-Tossed Crust', 2492),
(40, 5, 'DOMINO\'S 14\" Sausage Pizza, Crunchy Thin Crust', 1904),
(41, 5, 'DOMINO\'S 14\" Sausage Pizza, Ultimate Deep Dish Crust', 2859),
(42, 7, 'Vanilla Cone', 330),
(43, 7, 'Dipped Cone, Chocolate', 460),
(44, 7, 'Chocolate Cone', 330),
(45, 7, 'Chocolate Sundae', 400),
(46, 7, 'Strawberry Sundae', 330),
(47, 7, 'Pineapple Sundae', 330),
(48, 7, 'Caramel Sundae', 430),
(49, 7, 'Almond Mocha', 790),
(50, 7, 'M&M’s® Chocolate Candy Blizzard ', 800),
(51, 7, 'OREO® Cookie Blizzard', 780),
(52, 7, 'Caramel MooLatte', 570),
(53, 7, 'Vanilla MooLatte', 440),
(54, 7, 'Strawberry Light Smooties', 210),
(55, 9, 'Original Glazed', 190),
(56, 9, 'Chocolate Iced Glazed', 240),
(57, 9, 'Glazed Cruller', 200),
(58, 9, 'Chocolate Iced Glazed Cruller', 260),
(59, 9, 'Chocolate Iced Custard Filled', 310),
(60, 9, 'New York Cheesecake', 350),
(61, 9, 'Nutella ring', 285),
(62, 9, 'Choc iced custard', 307),
(63, 9, 'Strawberry jam', 239),
(64, 9, 'Choc Iced Sprinkles', 315),
(65, 11, 'Salted Caramel', 252),
(66, 11, 'Vanilla', 223),
(67, 11, 'Macadamia Nut', 277),
(68, 11, 'Matcha Green Tea', 218),
(69, 11, 'Chocolate', 255),
(70, 11, 'Strawberry', 218),
(71, 11, 'Caramel Biscuit & Cream', 255),
(72, 13, 'ซีฟู้ดเอ๊กซ์ตรีม ขนาดเล็ก', 150),
(73, 13, 'ซีฟู้ดเอ๊กซ์ตรีม ขนาดกลาง', 180),
(74, 13, 'ซีฟู้ดเอ๊กซ์ตรีม ขนาดใหญ่', 240),
(75, 13, 'ซีฟู้ดพาราไดซ์ ขนาดเล็ก', 160),
(76, 13, 'ซีฟู้ดพาราไดซ์ ขนาดกลาง', 190),
(77, 13, 'ซีฟู้ดพาราไดซ์ ขนาดใหญ่', 270),
(78, 13, 'ซูเปอร์สุพรีม ขนาดเล็ก', 160),
(79, 13, 'ซูเปอร์สุพรีม ขนาดกลาง', 200),
(80, 13, 'ซูเปอร์สุพรีม ขนาดใหญ่', 280),
(81, 13, 'ฮาวาเอี้ยน ขนาดเล็ก', 140),
(82, 13, 'ฮาวาเอี้ยน ขนาดกลาง', 180),
(83, 13, 'ฮาวาเอี้ยน ขนาดใหญ่', 250),
(84, 13, 'เวจจี้ ขนาดเล็ก', 130),
(85, 13, 'เวจจี้ ขนาดกลาง', 160),
(86, 13, 'เวจจี้ ขนาดใหญ่', 220),
(87, 13, 'เปปโปอร์โรนี ขนาดเล็ก', 140),
(88, 13, 'เปปโปอร์โรนี ขนาดกลาง', 170),
(89, 13, 'เปปโปอร์โรนี ขนาดใหญ่', 230),
(90, 13, 'ชีส ขนาดเล็ก', 140),
(91, 13, 'ชีส ขนาดกลาง', 170),
(92, 13, 'ชีส ขนาดใหญ่', 250),
(93, 13, 'ซอสเซจเลิฟเวอร์ ขนาดเล็ก', 170),
(94, 13, 'ซอสเซจเลิฟเวอร์ ขนาดกลาง', 210),
(95, 13, 'ซอสเซจเลิฟเวอร์ ขนาดใหญ่', 300),
(96, 13, 'ไก่นิวออลีนส์ (6 ชิ้น)', 520),
(97, 13, 'ไก่บาร์บีคิวสไปซี่ (6 ชิ้น)', 560),
(98, 13, 'ไก่โคเรียนการ์ลิค (6 ชิ้น)', 640),
(99, 13, 'ชีสซี่ป๊อป (8 ชิ้น)', 370),
(100, 13, 'ขนมปังกระเทียม (5 ชิ้น)', 390),
(101, 13, 'ผักโขมอบชีส', 850),
(102, 1, 'ไก่นุ่มต้นตำรับ สะโพก', 280),
(103, 1, 'ไก่นุ่มต้นตำรับ อก', 330),
(104, 1, 'ไก่นุ่มต้นตำรับ น่อง', 160),
(105, 1, 'ไก่นุ่มต้นตำรับ สันหลัง', 400),
(106, 1, 'ไก่นุ่มต้นตำรับ ปีก', 230),
(107, 1, 'ไก่กรอบฮอตแอนด์สไปซี่ ', 320),
(108, 1, 'ไก่กรอบฮอตแอนด์สไปซี่ สะโพก', 340),
(109, 1, 'ไก่กรอบฮอตแอนด์สไปซี่ อก', 170),
(110, 1, 'ไก่กรอบฮอตแอนด์สไปซี่ น่อง', 430),
(111, 1, 'ไก่กรอบฮอตแอนด์สไปซี่ สันหลัง', 230),
(112, 1, 'ไก่กรอบฮอตแอนด์สไปซี่ ปีก', 530),
(113, 1, 'ซิงเกอร์เบอร์เกอร์', 470),
(114, 1, 'เบอร์เกอร์ปลาคริสปี้', 640),
(115, 1, 'ข้าวยำไก่แซ่บ', 480),
(116, 1, 'ข้าวยำไก่ซี๊ด', 100),
(117, 1, 'วิงซ์แซ่บ', 300),
(118, 1, 'ไก่ป๊อบ', 180),
(119, 1, 'นักเก็ต', 45),
(120, 1, 'เฟรนซ์ฟรายส์	ปกติ', 150),
(121, 1, 'เฟรนซ์ฟรายส์	ใหญ่', 230),
(122, 1, 'เฟรนซ์ฟรายส์	จัมโบ้', 350),
(123, 1, 'มันบด	ปกติ', 50),
(124, 1, 'มันบด	ใหญ่', 210),
(125, 1, 'ทูน่าคอร์นสลัด	ปกติ', 170),
(126, 1, 'ทูน่าคอร์นสลัด	ใหญ่', 260),
(127, 1, 'ทาร์ตไข่', 170),
(128, 6, 'แซนด์วิชแฮม', 246),
(129, 6, 'แซนด์วิชเนื้ออบ', 271),
(130, 6, 'แซนด์วิชแฮมไก่', 244),
(131, 6, 'แซนด์วิชแฮมไก่และแฮมหมู', 251),
(132, 6, 'แซนด์วิชซับเวย์ คลับ', 285),
(133, 6, 'แซนด์วิชไก่เทอริยากิ', 315),
(134, 6, 'แซนด์วิชไก่งวง', 243),
(135, 6, 'แซนวิซผัก (Veggie Delite™)', 205),
(136, 6, 'สลัดแฮม\r\n', 95),
(137, 6, 'สลัดเนื้ออบ', 115),
(138, 6, 'สลัดไก่อบ', 121),
(139, 6, 'สลัดแฮมไก่', 93),
(140, 6, 'สลัดแฮมไก่และแฮมหมู', 100),
(141, 6, 'สลัดซับเวย์ คลับ (Subway Club™)', 137),
(142, 6, 'สลัดไก่งวง', 92),
(143, 6, 'สลัดผัก (Veggie Delite™)', 55),
(144, 6, 'แซนด์วิชไก่อบ\r\n', 266),
(145, 8, 'ช็อกโกแลต ริง', 210),
(146, 8, 'สตรอเบอร์รี่ ริง', 205),
(147, 8, 'บาวาเรียน เชลล์', 219),
(148, 8, 'พอน เดอ ริง เกรซ', 231),
(149, 8, 'พอน เดอ ริง ช็อกโกแลต2', 249),
(150, 10, 'Glazed Donut', 260),
(151, 10, 'Strawberry frosted donut', 265),
(152, 10, 'Bow Tie Donut', 310),
(153, 10, 'Glazed Chocolate Munchkin', 70),
(154, 12, 'Mint ChocolateChip\r\n', 240),
(155, 12, 'Jamoca® Almond', 260),
(156, 12, 'Fudge', 270),
(157, 12, 'Peanut Butter \'n Chocolate', 290),
(158, 12, 'Rocky Road', 250),
(159, 12, 'Chocolate Mousse Royale', 280),
(160, 12, 'Very Berry Strawberry', 200),
(161, 12, 'Chocolate', 230),
(162, 12, 'Strawberry Cheesecake', 250),
(163, 12, 'Pistachio Almond', 270),
(164, 12, 'Vanilla', 220),
(165, 12, 'Pralines ‘n Cream', 270),
(166, 12, 'Mango Tango', 230),
(167, 12, 'Gold Medal Ribbon', 240),
(168, 12, 'Cookies \'n Cream', 270),
(169, 12, 'Citrus Twist Ice', 100),
(170, 12, 'Rum Raisin', 230),
(171, 12, 'Chocolate Chip Cookie Dough', 280),
(172, 12, 'Cotton Candy', 230),
(173, 12, 'Chocolate Chip', 240),
(174, 12, 'Baseball Nut', 260),
(175, 12, 'Rainbow Sherbe', 130),
(176, 2, 'ชีสเบอร์เกอร์', 300),
(177, 2, 'ดับเบิ้ลชีสเบอร์เกอร์', 430),
(178, 2, 'ดีลักซ์ชัสเบอร์เกอร์', 320),
(179, 2, 'บิ้กแมค', 530),
(180, 2, 'ซามูไรเบอร์เกอร์หมู', 370),
(181, 2, 'แมคฟิช', 370),
(182, 2, 'ดับเบิ้ลแมคฟิช', 550),
(183, 2, 'แมคไก่', 370),
(184, 2, 'แมคสไปซี่ ชิกเก้นเบอร์เกอร์', 510),
(185, 2, 'แมคนักเก็ต (เล็ก)', 280),
(186, 2, 'แมคนักเก็ต (กลาง)', 470),
(187, 2, 'แมคนักเก็ต (ใหญ่)', 940),
(188, 2, 'เฟรนซ์ฟรายส์ (เล็ก)', 230),
(189, 2, 'เฟรนซ์ฟรายส์ (กลาง)', 340),
(190, 2, 'เฟรนซ์ฟรายส์ (ใหญ่)', 510),
(191, 2, 'พายสัปปะรด', 220),
(192, 2, 'ซันเดย์ ช็อกโกแลต', 300),
(193, 2, 'ซันเดย์สตรอว์เบอร์รี่', 270),
(194, 2, 'ไอศกรีมโคนวนิลา', 140),
(195, 2, 'ไอศกรีมโคนดิป', 230);

-- --------------------------------------------------------

--
-- Table structure for table `food_shop`
--

CREATE TABLE `food_shop` (
  `FOOD_SHOP_ID` int(5) NOT NULL,
  `FOOD_SHOP_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `FOOD_SHOP_IMAGE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food_shop`
--

INSERT INTO `food_shop` (`FOOD_SHOP_ID`, `FOOD_SHOP_NAME`, `FOOD_SHOP_IMAGE`) VALUES
(1, 'KFC', 'kfc.jpg'),
(2, 'MCDONALD', 'mcdonald.jpg'),
(3, 'BONCHON', 'bonchon.jpg'),
(4, 'BURGERKING', 'burgerking.jpg'),
(5, 'DOMINO', 'domino.jpg'),
(6, 'SUBWAY', 'subway.jpg'),
(7, 'DAIRYQUEEN', 'dairyqueen.jpg'),
(8, 'MISTERDONUT', 'misterdonut.jpg'),
(9, 'KRISPYKREME', 'krispykreme.jpg'),
(10, 'DUNKINDONUT', 'dunkingdonut.jpg'),
(11, 'HAAGENDAZS', 'haagendazs.jpg'),
(12, 'BASKINROBBINS', 'baskingrobin.jpg'),
(13, 'PIZZAHUT', 'pizzahut.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`FOOD_ID`),
  ADD KEY `FOOD_SHOP_ID` (`FOOD_SHOP_ID`);

--
-- Indexes for table `food_shop`
--
ALTER TABLE `food_shop`
  ADD PRIMARY KEY (`FOOD_SHOP_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `FOOD_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `food_shop`
--
ALTER TABLE `food_shop`
  MODIFY `FOOD_SHOP_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`FOOD_SHOP_ID`) REFERENCES `food_shop` (`FOOD_SHOP_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
