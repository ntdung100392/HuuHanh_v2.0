-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2015 at 12:47 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `huuhanhv20`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
`address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate`
--

CREATE TABLE IF NOT EXISTS `affiliate` (
`affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `affiliate_activity` (
`activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_login`
--

CREATE TABLE IF NOT EXISTS `affiliate_login` (
`affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `affiliate_transaction` (
`affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE IF NOT EXISTS `api` (
`api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, '1ShVq37C02bLKOkfCbeNPctCLuaKpSKWDiByKfmPXlB2fz0a4nKHaAkpZaNSqyms', '', '', 'mq3JC9pTRM9bNRdOKsO48bzLA7WSFNb7irJXQWEQjqU2Sme3xooi4uaj8X3K0enD2jvc2l2GOBCLuz2bxddFM5Z0Uox59nNCiUva1sCxQPIXk4n1KKoe28v8CyEhfpJ4m8IROsjXpWkaw2vJ5tMw54e9I1sCZidnEd298jezcUaXWsRUDLI5Vsk2mvuZpULP219kFTwJmLoLUaKXifb7JYEociJpT8PtEHeDj5cWJ4O1oAaSarI1U65SqN5xUfrF', 1, '2015-02-06 16:25:43', '2015-02-06 16:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE IF NOT EXISTS `attribute` (
`attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(12, 7, 0),
(13, 7, 0),
(14, 7, 0),
(15, 7, 0),
(16, 7, 0),
(17, 7, 0),
(18, 7, 0),
(19, 7, 0),
(22, 7, 0),
(20, 7, 0),
(21, 7, 0),
(23, 7, 0),
(24, 7, 0),
(25, 7, 0),
(26, 7, 0),
(27, 7, 0),
(28, 7, 0),
(29, 7, 0),
(30, 7, 0),
(31, 7, 0),
(32, 8, 0),
(33, 8, 0),
(34, 8, 0),
(35, 8, 0),
(36, 8, 0),
(37, 8, 0),
(38, 8, 0),
(39, 8, 0),
(40, 8, 0),
(41, 8, 0),
(42, 8, 0),
(43, 8, 0),
(44, 8, 0),
(46, 11, 0),
(56, 13, 0),
(47, 11, 0),
(55, 12, 0),
(54, 12, 0),
(53, 12, 0),
(52, 12, 0),
(51, 12, 0),
(50, 11, 0),
(49, 11, 0),
(48, 11, 0),
(57, 13, 0),
(58, 13, 0),
(59, 15, 0),
(60, 15, 0),
(61, 15, 0),
(62, 16, 0),
(63, 16, 0),
(64, 16, 0),
(65, 16, 0),
(66, 16, 0),
(67, 17, 0),
(68, 17, 0),
(69, 17, 0),
(70, 18, 0),
(71, 18, 0),
(72, 19, 0),
(73, 20, 0),
(74, 20, 0),
(75, 20, 0),
(76, 13, 0),
(77, 22, 0),
(78, 22, 0),
(79, 22, 0),
(80, 23, 0),
(81, 23, 0),
(82, 23, 0),
(83, 23, 0),
(84, 23, 0),
(85, 23, 0),
(86, 23, 0),
(87, 23, 0),
(88, 23, 0),
(89, 23, 0),
(90, 23, 0),
(91, 23, 0),
(92, 23, 0),
(93, 7, 0),
(94, 24, 0),
(95, 24, 0),
(96, 24, 0),
(97, 24, 0),
(98, 24, 0),
(99, 24, 0),
(100, 24, 0),
(101, 24, 0),
(102, 24, 0),
(103, 24, 0),
(104, 24, 0),
(105, 24, 0),
(106, 24, 0),
(107, 24, 0),
(108, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_description`
--

CREATE TABLE IF NOT EXISTS `attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_description`
--

INSERT INTO `attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(12, 2, 'Độ Phân Giải Thực:'),
(13, 1, 'Brightness'),
(14, 2, 'Độ Tương Phản'),
(15, 1, 'Max. Resolution'),
(12, 1, 'Native Resolution'),
(13, 2, 'Cường Độ Sáng'),
(14, 1, 'Contrast Ratio'),
(15, 2, 'Độ Phân Giải Tối Đa'),
(16, 1, 'Native Aspect Ratio'),
(16, 2, 'Tỉ Lệ Khung Hình'),
(17, 1, 'Lamp Life and Type'),
(17, 2, 'Tuổi Thọ Bóng Đèn, Công Suất'),
(18, 1, 'Display Type'),
(18, 2, 'Công Nghệ Trình Chiếu'),
(19, 1, 'Chip Size'),
(19, 2, 'Kích Thước Chip'),
(20, 1, 'Image Size (Diagonal)'),
(20, 2, 'Kích Thước Khung Hình'),
(21, 1, 'Projection Distance'),
(21, 2, 'Khoảng Cách'),
(22, 1, 'Projection Lens'),
(22, 2, 'Tiêu Cự'),
(23, 1, 'Zoom Ratio'),
(23, 2, 'Tỉ Lệ Phóng To'),
(24, 1, 'Keystone Correction'),
(24, 2, 'Keystone Correction'),
(25, 1, 'Speakers'),
(25, 2, 'Loa Ngoài'),
(26, 1, 'Video Compatibility'),
(26, 2, 'Video Compatibility'),
(27, 1, 'I/O Connection Ports'),
(27, 2, 'Cổng Kết Nối'),
(28, 1, 'Dimensions (W x D x H)'),
(28, 2, 'Kích Thước (W x D x H)'),
(29, 1, 'Weight'),
(29, 2, 'Trọng Lượng'),
(30, 1, 'Power'),
(30, 2, 'Nguồn'),
(31, 1, '3D Ready'),
(31, 2, 'Hỗ Trợ 3D'),
(32, 1, 'Sensor'),
(32, 2, 'Cảm Biến'),
(33, 1, 'Image Sensor'),
(33, 2, 'Cảm Biến Ảnh'),
(34, 1, 'Color System'),
(34, 2, 'Bảng Màu'),
(35, 1, 'Zoom'),
(35, 2, 'Zoom'),
(36, 1, 'Shooting Area'),
(36, 2, 'Vùng Thu Hình'),
(37, 1, 'Video Resolution'),
(37, 2, 'Độ Phân Giải Video'),
(38, 1, 'Image Resolution'),
(38, 2, 'Độ Phân Giải Hình Ảnh'),
(39, 1, 'Image Rotation'),
(39, 2, 'Góc Quay'),
(40, 1, 'Input Connector'),
(40, 2, 'Kết Nối Đầu Vào'),
(41, 1, 'Output Connector'),
(41, 2, 'Kết Nối Đầu Ra'),
(42, 1, 'Video Output'),
(42, 2, 'Video Output'),
(43, 1, 'Onboard Memory'),
(43, 2, 'Bộ Nhớ Trong'),
(44, 1, 'Memory Card'),
(44, 2, 'Thẻ Nhớ'),
(47, 1, 'RAM'),
(47, 2, 'Bộ Nhớ trong'),
(48, 2, 'Bộ Lưu Trữ'),
(48, 1, 'Storage'),
(46, 1, 'CPU'),
(46, 2, 'Bộ Vi Xử Lý'),
(49, 1, 'Connector'),
(49, 2, 'Cổng Giao Tiếp'),
(50, 1, 'OS Compatibility'),
(50, 2, 'Hỗ Trợ'),
(51, 1, 'Microphone Input'),
(51, 2, 'Đầu Vào Microphone'),
(52, 1, 'Frequency'),
(52, 2, 'Tần Số Đáp Ứng'),
(53, 1, 'Gain'),
(53, 2, 'Gain'),
(54, 1, 'Line Input'),
(54, 2, 'Đầu Vào Line'),
(55, 1, 'S/N'),
(55, 2, 'S/N'),
(56, 1, 'Microphone Input'),
(56, 2, 'Đầu Vào Microphone'),
(57, 1, 'Others Input'),
(57, 2, 'Đầu Vào Khác'),
(58, 1, 'Tape Output'),
(58, 2, 'Đầu Ra Tape'),
(59, 1, 'High'),
(59, 2, 'Cao'),
(60, 1, 'Low'),
(60, 2, 'Thấp'),
(61, 1, 'Graphic EQ'),
(61, 2, 'Graphic EQ'),
(62, 1, 'A/D and D/A Adapter'),
(62, 2, 'Bộ Chuyển Đổi A/D và D/A'),
(63, 1, 'DSP Resolution'),
(63, 2, 'Độ Phân Giải DSP'),
(64, 1, 'Effect'),
(64, 2, 'Hiệu Ứng'),
(65, 1, 'Auto Configuration'),
(65, 2, 'Thiết Lập Sẵn'),
(66, 1, 'Manual Configuration'),
(66, 2, 'Điều Chỉnh'),
(67, 1, 'Noise (Bus)'),
(67, 2, 'Tiếng Ồn (Bus)'),
(68, 1, 'Output Watcher Max'),
(68, 2, 'Đầu Ra Theo Dõi Max'),
(69, 1, 'Output Sender FX Max'),
(69, 2, 'Đầu Ra Gửi FX Max'),
(70, 1, 'Watts'),
(70, 2, 'Công Suất'),
(71, 1, 'Frequency Respone'),
(71, 2, 'Đáp Ứng Tần Số'),
(72, 1, 'Dimensions (W x D x H)'),
(72, 2, 'Kích Thước (W x D x H)'),
(73, 1, 'USB HOST'),
(73, 2, 'USB HOST'),
(74, 1, 'FAT Analysis'),
(74, 2, 'Phân Tích FAT'),
(75, 1, 'MP3 Decode'),
(75, 2, 'Giải Mã MP3'),
(76, 1, 'Mid'),
(76, 2, 'Trung'),
(77, 1, 'Number Of Student'),
(77, 2, 'Số Lượng Học Sinh'),
(78, 1, 'Original'),
(78, 2, 'Xuất Xứ'),
(79, 1, 'OS Compatibility'),
(79, 2, 'OS Compatibility'),
(80, 1, 'Power'),
(80, 2, 'Nguồn Điện'),
(81, 1, 'Watts'),
(81, 2, 'Công Suất'),
(82, 1, 'Frequency Respone'),
(82, 2, 'Đáp Ứng Tần Số'),
(83, 1, 'T.H.D'),
(83, 2, 'T.H.D'),
(84, 1, 'Input'),
(84, 2, 'Đầu Vào / Độ Nhạy'),
(85, 1, 'Output (Ω)'),
(85, 2, 'Đầu ra (Ω)'),
(86, 1, 'Output (V)'),
(86, 2, 'Đầu ra (V)'),
(87, 1, 'S/N Ratio'),
(87, 2, 'Tỉ lệ S/N'),
(88, 1, 'Control'),
(88, 2, 'Điều khiển'),
(89, 1, 'BMG Module'),
(89, 2, 'BMG Module'),
(90, 1, 'Dimensions (W x D x H)'),
(90, 2, 'Kích thước (RxSxC)'),
(91, 1, 'Weight'),
(91, 2, 'Trọng lượng'),
(92, 1, 'Output zone'),
(92, 2, 'Vùng Ra'),
(93, 1, 'Interactive projector'),
(93, 2, 'Máy chiếu tương tác'),
(94, 1, 'Technology'),
(94, 2, 'Công Nghệ'),
(95, 1, 'Writing Tool'),
(95, 2, 'Công Cụ Viết'),
(96, 1, 'Using Size'),
(96, 2, 'Kích Thước Vùng Sử Dụng'),
(97, 1, 'Aspect Ratio'),
(97, 2, 'Kích Thước Khung Hình'),
(98, 1, 'Native Resolution'),
(98, 2, 'Độ Phân Giải Thực'),
(99, 1, 'Response Time'),
(99, 2, 'Thời Gian Đáp Ứng'),
(100, 1, 'Coordinates'),
(100, 2, 'Tọa Độ Chính Xác'),
(101, 1, 'Connector'),
(101, 2, 'Cổng Kết Nối'),
(102, 1, 'USB Type'),
(102, 2, 'Kiểu USB'),
(103, 1, 'Interactive Type'),
(103, 2, 'Loại Cảm Ứng'),
(104, 1, 'Rate Scanning'),
(104, 2, 'Quét Rate'),
(105, 1, 'Input'),
(105, 2, 'Đầu Vào Tín Hiệu'),
(106, 1, 'Wireless'),
(106, 2, 'Wireless'),
(107, 1, 'Dimensions (W x D x H)'),
(107, 2, 'Kích Thước (W x D x H)'),
(108, 1, 'OS Compatibility'),
(108, 2, 'OS Compatibility');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group`
--

CREATE TABLE IF NOT EXISTS `attribute_group` (
`attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_group`
--

INSERT INTO `attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(11, 0),
(13, 0),
(12, 0),
(14, 0),
(7, 0),
(8, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(22, 0),
(23, 0),
(24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_group_description`
--

INSERT INTO `attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(12, 1, 'Input Channels'),
(11, 2, 'MaxClone'),
(11, 1, 'MaxClone'),
(12, 2, 'Kênh Đầu Vào'),
(13, 1, 'Impedance'),
(7, 1, 'Projector'),
(7, 2, 'Máy Chiếu'),
(8, 1, 'Visual Presenter'),
(8, 2, 'Máy Thu Hình Vật Thể'),
(13, 2, 'Trở Kháng'),
(14, 1, 'T.H.D'),
(14, 2, 'T.H.D'),
(15, 1, 'Equalization'),
(15, 2, 'Equalization'),
(16, 1, 'DSP'),
(16, 2, 'DSP'),
(17, 1, 'Main Mix'),
(17, 2, 'Main Mix'),
(18, 1, 'Amply Total Watts'),
(18, 2, 'Công Suất Amply'),
(19, 1, 'Power Supply'),
(19, 2, 'Nguồn Điện'),
(20, 1, 'MP3 Extension (Optional)'),
(20, 2, 'MP3 Mở Rộng (Tùy Chọn)'),
(22, 2, 'Phòng Lab - Nghe Nhìn'),
(22, 1, 'Multimedia Lab'),
(23, 1, 'Amply'),
(23, 2, 'Amply'),
(24, 1, 'Interactive Board'),
(24, 2, 'Bảng Tương Tác');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

CREATE TABLE IF NOT EXISTS `banner_image` (
`banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(79, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image_description`
--

CREATE TABLE IF NOT EXISTS `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_image_description`
--

INSERT INTO `banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(79, 1, 7, 'iPhone 6'),
(87, 1, 6, 'HP Banner'),
(93, 1, 8, 'Canon'),
(92, 1, 8, 'Burger King'),
(91, 1, 8, 'Coca Cola'),
(90, 1, 8, 'Disney'),
(89, 1, 8, 'Dell'),
(80, 1, 7, 'MacBookAir'),
(88, 1, 8, 'Harley Davidson'),
(94, 1, 8, 'NFL'),
(95, 1, 8, 'RedBull'),
(96, 1, 8, 'Sony'),
(97, 1, 8, 'Starbucks'),
(98, 1, 8, 'Nintendo'),
(79, 2, 7, 'iPhone 6'),
(87, 2, 6, 'HP Banner'),
(93, 2, 8, 'Canon'),
(92, 2, 8, 'Burger King'),
(91, 2, 8, 'Coca Cola'),
(90, 2, 8, 'Disney'),
(89, 2, 8, 'Dell'),
(80, 2, 7, 'MacBookAir'),
(88, 2, 8, 'Harley Davidson'),
(94, 2, 8, 'NFL'),
(95, 2, 8, 'RedBull'),
(96, 2, 8, 'Sony'),
(97, 2, 8, 'Starbucks'),
(98, 2, 8, 'Nintendo');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(67, '', 69, 1, 1, 0, 1, '2014-12-13 11:32:02', '2014-12-16 22:42:20'),
(68, '', 69, 1, 1, 0, 1, '2014-12-16 22:19:27', '2014-12-16 22:42:09'),
(69, '', 0, 1, 1, 0, 1, '2014-12-16 22:42:01', '2014-12-16 22:42:37'),
(59, '', 0, 1, 1, 1, 1, '2014-12-08 21:32:25', '2014-12-10 00:35:40'),
(65, '', 0, 1, 1, 7, 1, '2014-12-08 21:52:48', '2014-12-08 23:57:33'),
(64, '', 0, 1, 1, 5, 1, '2014-12-08 21:43:26', '2014-12-08 23:56:43'),
(63, '', 0, 1, 1, 4, 1, '2014-12-08 21:41:44', '2014-12-08 23:57:44'),
(62, '', 0, 1, 1, 3, 1, '2014-12-08 21:37:47', '2014-12-08 23:57:21'),
(61, '', 0, 1, 1, 2, 1, '2014-12-08 21:36:20', '2014-12-08 23:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `category_description`
--

CREATE TABLE IF NOT EXISTS `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(67, 1, 'Speaker', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Speaker', '', ''),
(69, 2, 'Âm Thanh', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Âm Thanh', '', ''),
(65, 1, 'Virtual Computing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Virtual Computing', '', ''),
(65, 2, 'Bộ Nhân Bản Máy Tính', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bộ Nhân Bản Máy Tính', '', ''),
(61, 1, 'Interactive Board', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Interactive Board', '', ''),
(67, 2, 'Loa', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Loa', '', ''),
(68, 2, 'Amply', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Amply', '', ''),
(68, 1, 'Amply', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Amply', '', ''),
(69, 1, 'Audio', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Speaker', '', ''),
(59, 2, 'Máy Chiếu', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Máy Chiếu', '', ''),
(63, 1, 'Visual Presenter', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Visual Presenter', '', ''),
(63, 2, 'Máy Thu Hình Vật Thể', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Máy Thu Hình Vật Thể', '', ''),
(64, 1, 'Multimedia Room', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Multimedia Room', '', ''),
(64, 2, 'Phòng Học Ngoại Ngữ', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Phòng Học Ngoại Ngữ', '', ''),
(59, 1, 'Projector', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Projector', '', ''),
(61, 2, 'Bảng Tương Tác', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bảng Tương Tác', '', ''),
(62, 1, 'Touch Screen', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Touch Screen', '', ''),
(62, 2, 'Màn Hình Cảm Ứng', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Màn Hình Cảm Ứng', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category_filter`
--

CREATE TABLE IF NOT EXISTS `category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category_path`
--

CREATE TABLE IF NOT EXISTS `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_path`
--

INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES
(67, 67, 1),
(68, 69, 0),
(67, 69, 0),
(68, 68, 1),
(69, 69, 0),
(59, 59, 0),
(61, 61, 0),
(62, 62, 0),
(63, 63, 0),
(64, 64, 0),
(65, 65, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_to_layout`
--

CREATE TABLE IF NOT EXISTS `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_to_layout`
--

INSERT INTO `category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_to_store`
--

CREATE TABLE IF NOT EXISTS `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_to_store`
--

INSERT INTO `category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(67, 0),
(68, 0),
(69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
`country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
`coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_category`
--

CREATE TABLE IF NOT EXISTS `coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_history`
--

CREATE TABLE IF NOT EXISTS `coupon_history` (
`coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_product`
--

CREATE TABLE IF NOT EXISTS `coupon_product` (
`coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
`currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'VNĐ', 'VND', '', 'VND', '0', 1.00000000, 1, '2015-03-07 11:55:35'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2015-03-07 11:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_activity`
--

CREATE TABLE IF NOT EXISTS `customer_activity` (
`activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `customer_ban_ip` (
`customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
`customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group_description`
--

CREATE TABLE IF NOT EXISTS `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_group_description`
--

INSERT INTO `customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `customer_history`
--

CREATE TABLE IF NOT EXISTS `customer_history` (
`customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ip`
--

CREATE TABLE IF NOT EXISTS `customer_ip` (
`customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

CREATE TABLE IF NOT EXISTS `customer_login` (
`customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_online`
--

CREATE TABLE IF NOT EXISTS `customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_reward`
--

CREATE TABLE IF NOT EXISTS `customer_reward` (
`customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_transaction`
--

CREATE TABLE IF NOT EXISTS `customer_transaction` (
`customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field`
--

CREATE TABLE IF NOT EXISTS `custom_field` (
`custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_description`
--

CREATE TABLE IF NOT EXISTS `custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_value`
--

CREATE TABLE IF NOT EXISTS `custom_field_value` (
`custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
`download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `download_description`
--

CREATE TABLE IF NOT EXISTS `download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE IF NOT EXISTS `extension` (
`extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=431 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extension`
--

INSERT INTO `extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(429, 'module', 'journal2'),
(430, 'module', 'product_filter');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE IF NOT EXISTS `filter` (
`filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filter_description`
--

CREATE TABLE IF NOT EXISTS `filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filter_group`
--

CREATE TABLE IF NOT EXISTS `filter_group` (
`filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filter_group_description`
--

CREATE TABLE IF NOT EXISTS `filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `geo_zone`
--

CREATE TABLE IF NOT EXISTS `geo_zone` (
`geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `geo_zone`
--

INSERT INTO `geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
`information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `information_description`
--

CREATE TABLE IF NOT EXISTS `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information_description`
--

INSERT INTO `information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(4, 2, 'Về Chúng Tôi', '&lt;p&gt;C&amp;ocirc;ng ty Tr&amp;aacute;ch Nhiệm Hữu Hạn Thiết Bị Đ&amp;agrave;o Tạo Hữu Hạnh c&amp;oacute; tr&amp;ecirc;n 10 năm kinh nghiệm trong lĩnh vực gi&amp;aacute;o dục. Ch&amp;uacute;ng t&amp;ocirc;i chuy&amp;ecirc;n cung cấp c&amp;aacute;c thiết bị cho trường học cũng như c&amp;aacute;c thiết bị cho việc đ&amp;agrave;o tạo. Với uy t&amp;iacute;n l&amp;acirc;u năm, ch&amp;uacute;ng t&amp;ocirc;i đảm bảo đem lại cho c&amp;aacute;c qu&amp;yacute; thầy c&amp;ocirc;, qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng những sản phẩm chất lượng nhất.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mọi chi tiết xin vui l&amp;ograve;ng li&amp;ecirc;n hệ:&lt;/p&gt;\r\n\r\n&lt;p&gt;C&amp;ocirc;ng Ty TNHH Thiết Bị Đ&amp;agrave;o Tạo Hữu Hạnh&lt;/p&gt;\r\n\r\n&lt;p&gt;Địa chỉ: 135C c/x Ph&amp;uacute; H&amp;ograve;a, Lạc Long Qu&amp;acirc;n Phường 5, Quận 11, Tp.Hồ Ch&amp;iacute; Minh&lt;/p&gt;\r\n\r\n&lt;p&gt;Số điện thoại: (08) - 39751 481&lt;/p&gt;\r\n\r\n&lt;p&gt;Kinh Doanh: npchuong@huuhanh.com.vn - 0913929112 (Anh Chương)&lt;/p&gt;\r\n\r\n&lt;p&gt;Kĩ Thuật: dung.nt@huuhanh.com.vn - 0938929112 (Anh Dũng)&lt;/p&gt;\r\n', 'Về Chúng Tôi', 'about_us,huuhanh', 'about_us,huuhanh'),
(4, 1, 'About Us', '&lt;p&gt;C&amp;ocirc;ng ty Tr&amp;aacute;ch Nhiệm Hữu Hạn Thiết Bị Đ&amp;agrave;o Tạo Hữu Hạnh c&amp;oacute; tr&amp;ecirc;n 10 năm kinh nghiệm trong lĩnh vực gi&amp;aacute;o dục. Ch&amp;uacute;ng t&amp;ocirc;i chuy&amp;ecirc;n cung cấp c&amp;aacute;c thiết bị cho trường học cũng như c&amp;aacute;c thiết bị cho việc đ&amp;agrave;o tạo. Với uy t&amp;iacute;n l&amp;acirc;u năm, ch&amp;uacute;ng t&amp;ocirc;i đảm bảo đem lại cho c&amp;aacute;c qu&amp;yacute; thầy c&amp;ocirc;, qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng những sản phẩm chất lượng nhất.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mọi chi tiết xin vui l&amp;ograve;ng li&amp;ecirc;n hệ:&lt;/p&gt;\r\n\r\n&lt;p&gt;C&amp;ocirc;ng Ty TNHH Thiết Bị Đ&amp;agrave;o Tạo Hữu Hạnh&lt;/p&gt;\r\n\r\n&lt;p&gt;Địa chỉ: 135C c/x Ph&amp;uacute; H&amp;ograve;a, Lạc Long Qu&amp;acirc;n Phường 5, Quận 11, Tp.Hồ Ch&amp;iacute; Minh&lt;/p&gt;\r\n\r\n&lt;p&gt;Số điện thoại: (08) - 39751 481&lt;/p&gt;\r\n\r\n&lt;p&gt;Kinh Doanh: npchuong@huuhanh.com.vn - 0913929112 (Anh Chương)&lt;/p&gt;\r\n\r\n&lt;p&gt;Kĩ Thuật: dung.nt@huuhanh.com.vn - 0938929112 (Anh Dũng)&lt;/p&gt;\r\n', 'About Huu Hanh Co Ltd.,', 'About Huu Hanh Co Ltd.,', 'huu hanh, about us,');

-- --------------------------------------------------------

--
-- Table structure for table `information_to_layout`
--

CREATE TABLE IF NOT EXISTS `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information_to_layout`
--

INSERT INTO `information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `information_to_store`
--

CREATE TABLE IF NOT EXISTS `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information_to_store`
--

INSERT INTO `information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_category`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_category` (
`category_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_category_description`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_category_description` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_category_to_layout` (
`category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_comments`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_comments` (
`comment_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `comment` text,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_post`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_post` (
`post_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `comments` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_post_description`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_post_description` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL,
  `tags` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_post_to_category`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_post_to_category` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_post_to_layout`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_post_to_layout` (
`post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_blog_post_to_product`
--

CREATE TABLE IF NOT EXISTS `journal2_blog_post_to_product` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_config`
--

CREATE TABLE IF NOT EXISTS `journal2_config` (
  `key` varchar(64) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journal2_config`
--

INSERT INTO `journal2_config` (`key`, `store_id`, `value`, `serialized`) VALUES
('active_skin', 0, '2', 0),
('active_skin', 3, '1', 0),
('blog_settings', 0, '{"posts_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"2","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"3","range":"1,10","step":"1"},"desktop1":{"value":"2","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"4","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"related_products_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"3","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"5","range":"1,10","step":"1"},"large_desktop1":{"value":"4","range":"1,10","step":"1"},"large_desktop2":{"value":"3","range":"1,10","step":"1"}}},"posts_display":"grid","posts_sort":"newest","author_name":"firstname","posts_limit":"6","meta_description":{"value":[]},"title":{"value":{"1":"Journal Blog","3":"Journal Blog"}},"keyword":{"value":{"1":"blog","3":"blog"}},"meta_title":{"value":{"1":"","3":""}},"meta_keywords":{"value":{"1":"","3":""}},"status":"1","posts_image_type":"crop","share_this":"1","comments":"1","auto_approve_comments":"0","related_products_carousel":"1","posts_image_width":"300","posts_image_height":"200","description_char_limit":"250"}', 1),
('copyright', 0, '{"value":{"1":"\\u00a9 2015, Huu Hanh Co., Ltd . Powered by <a href=\\"\\" target=\\"_blank\\">Inspirations<\\/a>","2":"\\u00a9 2015, Huu Hanh Co., Ltd . Powered by <a href=\\"\\" target=\\"_blank\\">Inspirations<\\/a>"}}', 1),
('footer_menu', 0, '{"rows":[{"type":"columns","text":[],"columns":[{"type":"menu","items":[{"icon":{"options":{"font_size":"14px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":""},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"information","menu_item":{"id":"4","name":"About Us"}},"name_overwrite":0,"target":0,"name":{"value":{"1":"","2":""}},"is_open":false},{"icon":{"options":{"font_size":"14px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":""},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"information\\/contact"}},"name_overwrite":0,"target":0,"is_open":false,"name":{"value":{"1":"","2":""}}}],"text":[],"title":{"value":{"1":"Information","2":"Th\\u00f4ng Tin Li\\u00ean H\\u1ec7"}},"icon_status":"1","icon":{"options":{"font_size":"16px"}},"icon_position":"left","icon_border":{"value":{"border_rounded":"px"}},"icon_bg_color":"","icon_width":"","icon_height":"","is_open":false,"newsletter_id":"","section_type":"module","products":[],"category":"","items_limit":4,"module_type":"featured","posts_type":"newest","posts":[],"status":"1","disable_mobile":"0","random_from":"all","close_others":true},{"type":"menu","items":[{"icon":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"information\\/sitemap"}},"name_overwrite":0,"target":0,"is_open":false,"name":{"value":{"1":"Site Map","2":""}}}],"text":[],"title":{"value":{"1":"Customer Service","2":"D\\u1ecbch V\\u1ee5 Kh\\u00e1ch H\\u00e0ng"}},"icon_status":"0","icon":{"options":{"font_size":"16px"}},"icon_position":"top","icon_border":{"value":{"border_rounded":"px"}},"icon_bg_color":"","icon_width":"","icon_height":"","is_open":false,"newsletter_id":"","section_type":"module","products":[],"category":"","items_limit":4,"module_type":"featured","posts_type":"newest","posts":[],"status":"1","disable_mobile":"0","random_from":"all"},{"type":"menu","items":[{"icon":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"product\\/manufacturer"}},"name_overwrite":0,"target":0,"is_open":true,"name":{"value":{"1":"Brands","2":""}}},{"icon":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"affiliate\\/account"}},"name_overwrite":0,"target":0,"is_open":false,"name":{"value":{"1":"Affiliates","2":""}}}],"text":[],"title":{"value":{"1":"Extras","2":"Extras"}},"icon_status":"0","icon":{"options":{"font_size":"16px"}},"icon_position":"top","icon_border":{"value":{"border_rounded":"px"}},"icon_bg_color":"","icon_width":"","icon_height":"","is_open":false,"newsletter_id":"","section_type":"module","products":[],"category":"","items_limit":4,"module_type":"featured","posts_type":"newest","posts":[],"status":"1","disable_mobile":"0","random_from":"all"},{"type":"menu","items":[{"icon":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"account\\/account"}},"name_overwrite":0,"target":0,"is_open":true,"name":{"value":{"1":"","2":""}}},{"icon":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"account\\/order"}},"name_overwrite":0,"target":0,"is_open":true,"name":{"value":{"1":"","2":""}}},{"icon":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"account\\/wishlist"}},"name_overwrite":0,"target":0,"is_open":true,"name":{"value":{"1":"","2":""}}},{"icon":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}},"menu":{"menu_type":"opencart","menu_item":{"page":"account\\/newsletter"}},"name_overwrite":0,"target":0,"is_open":true,"name":{"value":{"1":"","2":""}}}],"text":[],"title":{"value":{"1":"My Account","2":"T\\u00e0i Kho\\u1ea3n C\\u1ee7a T\\u00f4i"}},"icon_status":"0","icon":{"options":{"font_size":"16px"}},"icon_position":"top","icon_border":{"value":{"border_rounded":"px"}},"icon_bg_color":"","icon_width":"","icon_height":"","is_open":true,"newsletter_id":"","section_type":"module","products":[],"category":"","items_limit":4,"module_type":"featured","posts_type":"newest","posts":[],"status":"1","disable_mobile":"0","random_from":"all"}],"contacts":[],"social_icons":[],"status":"1","sort_order":"0","bottom_spacing":"","padding_top":"","padding_right":"","padding_bottom":"","padding_left":"","items_per_row":{"hide_columns":true,"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"2","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"4","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"is_open":true,"background":{"value":{"bgimage_attach":"scroll"}},"disable_mobile":"0","close_others":true},{"type":"contacts","text":[],"columns":[],"contacts":[{"position":"left","link":{"menu_type":"opencart","menu_item":{"page":"information\\/contact"}},"target":"1","icon":{"options":{"font_size":"18px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe6a3;","class":"phone"}},"name":{"value":{"1":"(08) 39751 481","2":"(08) 39751 481"}},"tooltip":"0","sort_order":"","is_open":false},{"position":"left","link":{"menu_type":"opencart","menu_item":{"page":"information\\/contact"}},"target":"1","icon":{"options":{"font_size":"16px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe608;","class":"arrow-right"}},"name":{"value":{"1":"135C Lac Long Quan District 11, Ho Chi Minh City","2":"135C c\\/x Ph\\u00fa H\\u00f2a, L\\u1ea1c Long Qu\\u00e2n P5 Q11 Tp.H\\u1ed3 Ch\\u00ed Minh"}},"tooltip":"0","sort_order":"","is_open":true}],"social_icons":[],"status":"1","sort_order":"2","bottom_spacing":"","padding_top":"","padding_right":"","padding_bottom":"","padding_left":"","items_per_row":{"hide_columns":true,"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"3","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"4","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"is_open":false,"background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}},"disable_mobile":"0","close_others":true}],"close_others":true}', 1),
('mega_menu', 0, '{"items":[{"type":"categories","categories":{"type":"existing","show":"both","items":[],"render_as":"dropdown","top":{"id":"61","name":"Interactive Board"},"subcategories":[],"links_type":"categories","image_position":"left"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":null},"target":0,"items":[]},"mixed_columns":[],"icon":{"options":{"font_size":"16px"}},"hide_text":"0","is_open":false,"status":1,"hide_on_mobile":0,"items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":null},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","name":{"value":{"1":"","2":""}}},{"type":"categories","categories":{"type":"existing","show":"both","items":[],"render_as":"dropdown","top":{"id":"64","name":"Multimedia Room"},"subcategories":[],"links_type":"categories","image_position":"left"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":null},"target":0,"items":[]},"mixed_columns":[],"icon":{"options":{"font_size":"16px"}},"hide_text":"0","is_open":false,"status":1,"hide_on_mobile":0,"items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":null},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","name":{"value":{"1":"","2":""}}},{"type":"categories","categories":{"type":"existing","show":"both","items":[],"render_as":"dropdown","top":{"id":"59","name":"Projector"},"subcategories":[],"links_type":"categories","image_position":"left"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":null},"target":0,"items":[]},"mixed_columns":[],"icon":{"options":{"font_size":"16px"}},"hide_text":"0","is_open":false,"status":1,"hide_on_mobile":0,"items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":null},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","name":{"value":{"1":"","2":""}}},{"type":"categories","categories":{"type":"existing","show":"both","items":[],"render_as":"dropdown","top":{"id":"69","name":"Audio"},"subcategories":[],"links_type":"categories","image_position":"left"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":null},"target":0,"items":[]},"mixed_columns":[],"icon":{"options":{"font_size":"16px"}},"hide_text":"0","is_open":false,"status":1,"hide_on_mobile":0,"items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":null},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","name":{"value":{"1":"","2":""}}},{"type":"categories","categories":{"type":"existing","show":"both","items":[],"render_as":"dropdown","top":{"id":"63","name":"Visual Presenter"},"subcategories":[],"links_type":"categories","image_position":"left"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":null},"target":0,"items":[]},"mixed_columns":[],"icon":{"options":{"font_size":"16px"}},"hide_text":"0","is_open":false,"status":1,"hide_on_mobile":0,"items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":null},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","name":{"value":{"1":"","2":""}}},{"type":"categories","categories":{"type":"existing","show":"both","items":[],"render_as":"dropdown","top":{"id":"65","name":"Virtual Computing"},"subcategories":[],"links_type":"categories","image_position":"left"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":null},"target":0,"items":[]},"mixed_columns":[],"icon":{"options":{"font_size":"16px"}},"hide_text":"0","is_open":false,"status":1,"hide_on_mobile":0,"items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":null},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","name":{"value":{"1":"","2":""}}}],"close_others":true,"options":{"display":"table","table_layout":"fixed","is_open":false}}', 1),
('payments', 0, '{"payments":[],"close_others":false}', 1),
('primary_menu', 0, '{"items":[{"icon":{"options":{"font_size":"16px","color":{"value":{"color":"rgb(88, 143, 39)"}}},"icon_type":"icon","icon":{"icon":"&#xe627;","class":"home"}},"hide_on_mobile":"0","mobile_view":"icon","menu":{"menu_type":"opencart","menu_item":{"page":"common\\/home"}},"name_overwrite":"1","target":"0","is_open":true,"icon_position":"left","name":{"value":{"1":"HOME","2":"TRANG CH\\u1ee6"}}},{"icon":{"options":{"font_size":"16px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe1b4;","class":"user"}},"hide_on_mobile":"0","mobile_view":"icon","menu":{"menu_type":"opencart","menu_item":{"page":"account\\/account"}},"name_overwrite":"1","target":"0","is_open":true,"icon_position":"left","name":{"value":{"1":"MY ACCOUNT","2":"T\\u00c0I KHO\\u1ea2N C\\u1ee6A T\\u00d4I"}}},{"icon":{"options":{"font_size":"18px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe67b;","class":"envelope"}},"hide_on_mobile":"0","mobile_view":"icon","menu":{"menu_type":"opencart","menu_item":{"page":"information\\/contact"}},"name_overwrite":"1","target":0,"is_open":true,"icon_position":"left","name":{"value":{"1":"CONTACT US","2":"LI\\u00caN H\\u1ec6"}}},{"icon":{"options":{"font_size":"16px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe094;","class":"circle-arrow-right2"}},"hide_on_mobile":"0","mobile_view":"icon","menu":{"menu_type":"blog_home","menu_item":null},"name_overwrite":"1","target":0,"is_open":true,"icon_position":"left","name":{"value":{"1":"BLOG","2":"TIN T\\u1ee8C"}}}],"close_others":false}', 1),
('secondary_menu', 0, '{"items":[{"icon":{"options":{"font_size":"16px"}},"hide_on_mobile":"1","mobile_view":"both","menu":{"menu_type":"custom","menu_item":null},"name_overwrite":0,"target":0,"is_open":true,"icon_position":"left","name":{"value":{"1":"Welcome to Huu Hanh Co., Ltd","2":"Ch\\u00e0o m\\u1eebng \\u0111\\u1ebfn v\\u1edbi C\\u00f4ng Ty H\\u1eefu H\\u1ea1nh","3":""}},"sort_order":"0"},{"icon":{"options":{"font_size":"16px","color":{"value":{"color":"rgb(66, 139, 202)"}}},"icon_type":"icon","icon":{"icon":"&#xe1b4;","class":"user"}},"hide_on_mobile":"0","mobile_view":"both","menu":{"menu_type":"opencart","menu_item":{"page":"login"}},"name_overwrite":0,"target":0,"is_open":true,"icon_position":"left","name":{"value":{"1":"","2":"","3":""}},"sort_order":"2"},{"icon":{"options":{"font_size":"16px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe07c;","class":"signin"}},"hide_on_mobile":"0","mobile_view":"both","menu":{"menu_type":"opencart","menu_item":{"page":"register"}},"name_overwrite":0,"target":0,"is_open":true,"icon_position":"left","name":{"value":{"1":"","2":"","3":""}},"sort_order":"3"}]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `journal2_modules`
--

CREATE TABLE IF NOT EXISTS `journal2_modules` (
`module_id` int(11) NOT NULL,
  `module_type` varchar(64) NOT NULL,
  `module_data` mediumtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journal2_modules`
--

INSERT INTO `journal2_modules` (`module_id`, `module_type`, `module_data`) VALUES
(114, 'journal2_side_category', '{"module_name":"Custom Side","type":"accordion","title":{"value":{"1":"About Us","2":""}},"show_categories":"0","sections":[{"is_open":true,"link":{"menu_type":"information","menu_item":{"id":"4","name":"About Us"}},"name":{"value":{"1":"Custom Menu","2":""}},"new_window":0,"position":"top","sort_order":""},{"is_open":true,"link":{"menu_type":"information","menu_item":{"id":"6","name":"Delivery Information"}},"name":{"value":{"1":"Delivery Information","2":""}},"new_window":0,"position":"top","sort_order":""},{"is_open":true,"link":{"menu_type":"information","menu_item":{"id":"7","name":"Returns Informarion"}},"name":{"value":{"1":"Returns Information","2":""}},"new_window":0,"position":"top","sort_order":""},{"is_open":true,"link":{"menu_type":"category","menu_item":{"id":"105","name":"Fashion &gt; Accesories"}},"name":{"value":{"1":"Another Custom Menu","2":""}},"new_window":0,"position":"top","sort_order":""}],"general_is_open":true}'),
(9, 'journal2_side_category', '{"module_name":"New Side Category","type":"accordion","title":{"value":{"1":"","2":""}},"show_categories":"1","sections":[{"is_open":true,"link":{"menu_type":"opencart","menu_item":{"page":"product\\/special"}},"name":{"value":{"1":"Custom Menu","2":""}},"new_window":0,"position":"bottom","sort_order":"1"}]}'),
(125, 'journal2_carousel', '{"module_name":"Our Brands","module_type":"manufacturer","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"3","range":"1,10","step":"1"},"mobile1":{"value":"4","range":"1,10","step":"1"},"tablet":{"value":"5","range":"1,10","step":"1"},"tablet1":{"value":"4","range":"1,10","step":"1"},"tablet2":{"value":"3","range":"1,10","step":"1"},"desktop":{"value":"8","range":"1,10","step":"1"},"desktop1":{"value":"6","range":"1,10","step":"1"},"desktop2":{"value":"4","range":"1,10","step":"1"},"large_desktop":{"value":"9","range":"1,10","step":"1"},"large_desktop1":{"value":"7","range":"1,10","step":"1"},"large_desktop2":{"value":"6","range":"1,10","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgcolor":{"value":{"color":"rgb(238, 238, 238)"}}}},"module_padding":"1","arrows":"top","bullets":"1","top_bottom_placement":0,"background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}},"bgcolor":{"value":{"color":""}}}},"fullwidth":"0","margin_top":"","margin_bottom":"","show_title":"1","brand_name":"0","autoplay":"0","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"1","disable_mobile":"0","image_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"image_bgcolor":{"value":{"color":""}},"image_width":"150","image_height":"150","image_type":"fit","product_sections":[],"category_sections":[],"manufacturer_sections":[{"is_open":true,"section_title":{"value":{"1":"Our Awesome Brands","2":"","3":""}},"section_type":"all","status":"1","default_section":"1","sort_order":"","manufacturers":[{"data":{"id":"8","name":"Apple"}},{"data":{"id":"5","name":"HTC"}},{"data":{"id":"13","name":"Chic D''or"}},{"data":{"id":"12","name":"Awesome Brand"}},{"data":{"id":"9","name":"Canon"}},{"data":{"id":"11","name":"SuperBrand"}},{"data":{"id":"10","name":"Sony"}},{"data":{"id":"7","name":"Hewlett-Packard"}}],"items_limit":5,"link":{"menu_type":"custom","url":""},"new_window":"0"},{"is_open":true,"section_title":{"value":{"1":"View All","2":"","3":""}},"section_type":"link","status":"0","default_section":"0","sort_order":"","manufacturers":[],"items_limit":5,"link":{"menu_type":"opencart","url":"","menu_item":{"page":"product\\/manufacturer"}},"new_window":"0"}],"general_is_open":true,"top_bottom_is_open":true}'),
(63, 'journal2_super_sections', '{"module_name":"New Module","module_type":"product","display_as":"grid","items_per_row":{"range":"1,8","step":"1","value":{"mobile":{"value":"1","range":"1,8","step":"1"},"mobile1":{"value":"2","range":"1,8","step":"1"},"tablet":{"value":"3","range":"1,8","step":"1"},"tablet1":{"value":"2","range":"1,8","step":"1"},"tablet2":{"value":"1","range":"1,8","step":"1"},"desktop":{"value":"4","range":"1,8","step":"1"},"desktop1":{"value":"3","range":"1,8","step":"1"},"desktop2":{"value":"2","range":"1,8","step":"1"},"large_desktop":{"value":"4","range":"1,8","step":"1"},"large_desktop1":{"value":"3","range":"1,8","step":"1"},"large_desktop2":{"value":"2","range":"1,8","step":"1"}}},"background":{"value":[]},"fullwidth":"0","show_title":"1","brand_name":"1","margin":"none","product_sections":[{"section_title":{"value":{"1":"","2":""}},"section_type":"module","status":"1","default_section":"1","sort_order":"","products":[],"category":"","items_limit":5,"module_type":"featured"},{"section_title":{"value":{"1":"","2":""}},"section_type":"category","status":"1","default_section":"1","sort_order":"","products":[],"category":{"data":{"id":"20","name":"Men"}},"items_limit":5,"module_type":"featured"},{"section_title":{"value":{"1":"","2":""}},"section_type":"module","status":"1","default_section":"1","sort_order":"","products":[],"category":"","items_limit":5,"module_type":"bestsellers"}],"category_sections":[],"manufacturer_sections":[]}'),
(76, 'journal2_product_tabs', '{"module_name":"Free Shipping","name":{"value":{"1":"Free Shipping","2":"","3":"Free Shipping"}},"icon_status":"1","icon":{"options":{"font_size":"18px","color":{"value":{"color":"rgb(255, 255, 255)"}},"left":""},"icon_type":"icon","icon":{"icon":"&#xe659;","class":"airplane"}},"icon_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"icon_bg_color":{"value":{"color":"rgb(241, 98, 114)"}},"icon_width":"40","icon_height":"40","content_type":"custom","content":{"1":"<p>This product qualifies for free air shipping.<\\/p>\\n","3":"<p>This product qualifies for free air shipping<\\/p>\\n"},"popup":"","global":"1","products":[],"categories":[],"manufacturers":[],"store_id":-1,"status":"1","sort_order":"1","position":"desc","option_position":"top"}'),
(33, 'journal2_headline_rotator', '{"module_name":"Main Title","transition_delay":"5000","pause_on_hover":"1","text_font":{"value":{"font_type":"system","font_size":"30px","font_name":"Oswald","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}},"font_subset":["latin"],"font_family":"Helvetica, Arial, sans-serif"}},"text_background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgcolor":{"value":{"color":""}}}},"text_align":"center","bullets":"0","bullets_position":"right","top_bottom_placement":0,"background":{"value":{"bgimage":{"value":{"image":""}},"bgimage_attach":"scroll","bgcolor":{"value":{"color":"rgb(51, 55, 69)"}},"bgimage_repeat":"repeat","bgimage_position":"center"}},"disable_mobile":"1","fullwidth":"0","margin_top":"5","margin_bottom":"7","sections":[{"is_open":true,"name":"","text":{"value":{"1":"More Information About Education!","2":""}},"icon":{"options":{"font_size":"20px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"none","icon":{"icon":"&#xe0ad;","class":"truck3"}},"cta":"1","cta_link":{"menu_type":"blog_home","menu_item":null},"cta_icon":{"options":{"font_size":"17px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"-1"},"icon_type":"icon","icon":{"icon":"&#xe608;","class":"arrow-right"}},"cta_icon_position":"right","cta_new_window":"0","cta_text":{"value":{"1":"See More","2":"","3":""}},"cta_position":"right","cta_offset_top":"-3","cta_offset_left":"10","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true,"bullets_color":"","bullets_hover_color":"","margin":"both"}'),
(239, 'journal2_blog_side_posts', '{"general_is_open":true,"close_others":false,"module_name":"Related Posts","module_type":"related","limit":5,"title":{"value":{"1":"Related Blog Posts","3":""}}}'),
(88, 'journal2_carousel', '{"module_name":"Today''s Specials","module_type":"product","items_per_row":{"range":"1,8","step":"1","value":{"mobile":{"value":"1","range":"1,8","step":"1"},"mobile1":{"value":"2","range":"1,8","step":"1"},"tablet":{"value":"3","range":"1,8","step":"1"},"tablet1":{"value":"2","range":"1,8","step":"1"},"tablet2":{"value":"1","range":"1,8","step":"1"},"desktop":{"value":"4","range":"1,8","step":"1"},"desktop1":{"value":"3","range":"1,8","step":"1"},"desktop2":{"value":"2","range":"1,8","step":"1"},"large_desktop":{"value":"5","range":"1,8","step":"1"},"large_desktop1":{"value":"4","range":"1,8","step":"1"},"large_desktop2":{"value":"3","range":"1,8","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","arrows":"top","bullets":1,"top_bottom_placement":0,"background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}},"fullwidth":"0","margin_top":"20","margin_bottom":"","show_title":"1","brand_name":"1","autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","image_border":{"value":{"border_rounded":"px"}},"image_bgcolor":"","image_width":"","image_height":"","image_type":"fit","product_sections":[{"is_open":true,"section_title":{"value":{"1":"Today''s Specials","2":"","3":""}},"section_type":"module","status":"1","default_section":"1","sort_order":"","products":[{"data":{"id":"149","name":"Red City Bag"}}],"category":{"data":{"id":"59","name":"Fashion"}},"items_limit":"5","module_type":"specials","link":{"menu_type":"custom","url":""},"new_window":"0","random_from":"all","filter_category":"1","todays_specials_only":"1","countdown_visibility":"1"},{"is_open":true,"section_title":{"value":{"1":"View All Offers","2":"","3":""}},"section_type":"link","status":"1","default_section":"0","sort_order":"","products":[{"data":{"id":"72","name":"Lightweight Grey Jacket"}},{"data":{"id":"84","name":"London Tweed Coat"}},{"data":{"id":"157","name":"Moisture Makeup SPF15"}},{"data":{"id":"56","name":"Moon Belted Dress"}}],"category":"","items_limit":5,"module_type":"featured","link":{"menu_type":"opencart","url":"","menu_item":{"page":"product\\/special"}},"new_window":"0","random_from":"all","filter_category":"1","todays_specials_only":"1","countdown_visibility":"1"}],"category_sections":[{"is_open":true,"section_title":{"value":{"1":"Featured Category","2":""}},"section_type":"sub","status":"1","default_section":"0","sort_order":"","category_sub":{"id":"20","name":"Men"},"categories":[],"items_limit":"10"}],"manufacturer_sections":[],"general_is_open":true,"top_bottom_is_open":true}'),
(85, 'journal2_carousel', '{"module_name":"Side Carousel","module_type":"product","items_per_row":{"range":"1,8","step":"1","value":{"mobile":{"value":"1","range":"1,8","step":"1"},"mobile1":{"value":"2","range":"1,8","step":"1"},"tablet":{"value":"3","range":"1,8","step":"1"},"tablet1":{"value":"3","range":"1,8","step":"1"},"tablet2":{"value":"2","range":"1,8","step":"1"},"desktop":{"value":"4","range":"1,8","step":"1"},"desktop1":{"value":"4","range":"1,8","step":"1"},"desktop2":{"value":"3","range":"1,8","step":"1"},"large_desktop":{"value":"5","range":"1,8","step":"1"},"large_desktop1":{"value":"5","range":"1,8","step":"1"},"large_desktop2":{"value":"4","range":"1,8","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","arrows":"top","bullets":"1","top_bottom_placement":0,"background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgcolor":{"value":{"color":"rgb(95, 104, 116)"}}}},"fullwidth":"0","margin_top":"","margin_bottom":"","show_title":"1","brand_name":"1","autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","image_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"image_bgcolor":"","image_width":"","image_height":"","image_type":"fit","product_sections":[{"is_open":true,"section_title":{"value":{"1":"Side Carousel","2":"","3":""}},"section_type":"module","status":"1","default_section":"0","sort_order":"1","products":[],"category":{"data":{"id":"60","name":"Fashion &gt; Dresses"}},"items_limit":"3","module_type":"latest","random_from":"category","random_from_category":{"id":"59","name":"Fashion"},"new_window":"1","filter_category":"0","todays_specials_only":"1","countdown_visibility":"1"}],"category_sections":[],"manufacturer_sections":[],"general_is_open":true,"top_bottom_is_open":true}'),
(252, 'journal2_newsletter', '{"module_name":"Footer","module_title":{"value":{"1":""}},"module_text":{"value":{"1":"Stay up to date with news and promotions by signing up for our weekly newsletter."}},"module_text_font":{"value":{"font_type":"system","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":null,"font_weight":"normal","font_style":"italic","letter_spacing":"","text_transform":"none","font_subset":[],"color":{"value":{"color":"rgb(255, 255, 255)"}}}},"module_background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}},"module_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"module_padding":"10","text_position":"left","input_height":"39","input_placeholder":{"value":{"1":"Email Address..."}},"input_bg_color":[],"input_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"input_border":{"value":{"border_rounded":"px"}},"button_text":{"value":{"1":"Sign Up"}},"button_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_background":[],"button_icon":{"options":{"font_size":"16px"},"icon_type":"none"},"button_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"button_offset_top":"-2","button_offset_left":"-3","background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","general_is_open":false,"top_bottom_is_open":false}'),
(111, 'journal2_carousel', '{"module_name":"Also Bought","module_type":"product","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"3","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"5","range":"1,10","step":"1"},"large_desktop1":{"value":"4","range":"1,10","step":"1"},"large_desktop2":{"value":"4","range":"1,10","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","arrows":"top","bullets":1,"top_bottom_placement":0,"background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","show_title":"1","brand_name":"1","autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","image_border":{"value":{"border_rounded":"px"}},"image_bgcolor":"","image_width":"","image_height":"","image_type":"fit","product_sections":[{"is_open":true,"section_title":{"value":{"1":"People Also Bought","2":""}},"section_type":"module","status":"1","default_section":"0","sort_order":"","products":[],"category":{"data":{"id":"111","name":"Fashion &gt; Shoes"}},"items_limit":5,"module_type":"people-also-bought","link":{"menu_type":"custom","url":""},"new_window":"0","random_from":"all","filter_category":"1"}],"category_sections":[],"manufacturer_sections":[],"general_is_open":true}'),
(211, 'journal2_product_tabs', '{"module_name":"Unlimited Blocks","name":{"value":{"1":"Unlimited Blocks","2":""}},"icon_status":"1","icon":{"options":{"font_size":"22px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe07d;","class":"trophy2"}},"icon_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"icon_bg_color":{"value":{"color":"rgb(105, 185, 207)"}},"icon_width":"40","icon_height":"40","content_type":"custom","content":{"1":"<p>There&#39;s no limit to how many blocks you can create.<\\/p>\\n"},"popup":"","global":1,"products":[],"categories":[],"manufacturers":[],"store_id":-1,"status":1,"sort_order":"2","position":"image","option_position":"top"}'),
(240, 'journal2_blog_posts', '{"general_is_open":true,"top_bottom_is_open":true,"close_others":false,"module_name":"Grid 3 - Lanscape","top_bottom_placement":0,"module_padding":"0","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","module_type":"newest","display":"grid","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"3","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"3","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"3","range":"1,10","step":"1"},"large_desktop1":{"value":"4","range":"1,10","step":"1"},"large_desktop2":{"value":"3","range":"1,10","step":"1"}}},"description":1,"description_limit":150,"limit":5,"content_align":"left","image_width":"300","image_height":"200","image_type":"crop","carousel":"1","carousel_arrows":"top","carousel_buttons":1,"autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","carousel_bullets":"1","title":{"value":{"1":"Grid - <small>3 per Row, Left Align, Landscape Image Crop<\\/small>","3":"Grid - <small>3 per Row, Left Align, Landscape Image Crop<\\/small>"}},"module_background":{"value":{"bgimage_attach":"scroll"}}}'),
(128, 'journal2_advanced_grid', '{"module_name":"Demo 1 Mid","height":"220","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"20","margin_bottom":"20","disable_mobile":"0","module_spacing":"20","columns":[{"is_open":false,"width":"66.66666","status":1,"sort_order":"","modules":[{"is_open":true,"height":"100","module_id":"205","disable_mobile":"0","status":1,"sort_order":""}],"close_others":true},{"is_open":true,"width":"33.33333","status":1,"sort_order":"","modules":[{"is_open":true,"height":"50","module_id":"225","disable_mobile":"0","status":1,"sort_order":""},{"is_open":false,"height":"50","module_id":"226","disable_mobile":"0","status":1,"sort_order":""}],"close_others":true}],"general_is_open":false,"top_bottom_is_open":false,"close_others":true}'),
(127, 'journal2_cms_blocks', '{"module_name":"Map","module_title":{"value":{"1":"","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"1","range":"1,10","step":"1"},"desktop2":{"value":"1","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"1","range":"1,10","step":"1"},"large_desktop2":{"value":"1","range":"1,10","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","disable_mobile":"1","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","sections":[{"is_open":true,"section_title":[],"text":{"1":"<p><iframe frameborder=\\"0\\" height=\\"300px\\" scrolling=\\"no\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d3919.5319335286363!2d106.645481!3d10.770511!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ebdf5052959%3A0xcb6ed7f4edf7d721!2zQ8O0bmcgdHkgVE5ISCBUaGnhur90IELhu4sgxJDDoG8gVOG6oW8gSOG7r3UgSOG6oW5o!5e0!3m2!1sen!2s!4v1425725414232\\" style=\\"border:0\\" width=\\"100%\\"><\\/iframe><\\/p>\\n","2":"<p><iframe frameborder=\\"0\\" height=\\"300px\\" scrolling=\\"no\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d3919.5319335286363!2d106.645481!3d10.770511!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ebdf5052959%3A0xcb6ed7f4edf7d721!2zQ8O0bmcgdHkgVE5ISCBUaGnhur90IELhu4sgxJDDoG8gVOG6oW8gSOG7r3UgSOG6oW5o!5e0!3m2!1sen!2s!4v1425725414232\\" style=\\"border:0\\" width=\\"100%\\"><\\/iframe><\\/p>\\n"},"text_align":"left","icon_status":"0","icon_position":"top","icon":{"options":{"font_size":"16px"}},"icon_border":{"value":{"border_rounded":"px"}},"icon_bg_color":"","icon_width":"","icon_height":"","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true}'),
(168, 'journal2_custom_sections', '{"module_name":"Featured - New Arrivals","module_type":"product","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"3","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"5","range":"1,10","step":"1"},"large_desktop1":{"value":"4","range":"1,10","step":"1"},"large_desktop2":{"value":"3","range":"1,10","step":"1"}}},"top_bottom_placement":0,"module_background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}},"module_padding":"0","background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgcolor":{"value":{"color":"rgb(228, 228, 228)"}}}},"disable_mobile":"0","fullwidth":"0","margin_top":"30","margin_bottom":"30","show_title":"1","brand_name":"1","image_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"image_bgcolor":{"value":{"color":""}},"image_width":"","image_height":"","image_type":"fit","product_sections":[{"is_open":true,"section_title":{"value":{"1":"New Arrivals","2":"H\\u00e0ng M\\u1edbi V\\u1ec1"}},"section_type":"module","status":"1","default_section":"0","sort_order":"","products":[],"category":"","items_limit":"9","module_type":"latest","link":{"menu_type":"custom","url":""},"new_window":"0","random_from":"all","filter_category":"1","todays_specials_only":"1","countdown_visibility":"1"}],"category_sections":[],"manufacturer_sections":[],"general_is_open":true,"top_bottom_is_open":true}'),
(135, 'journal2_text_rotator', '{"module_name":"Side Column","transition_delay":"5000","pause_on_hover":"1","text_align":"center","image_align":"center","author_align":"center","text_font":{"value":{"font_type":"system","font_size":"15px","font_family":"Georgia, serif","font_name":"Droid Serif","font_weight":"normal","font_style":"italic","letter_spacing":"","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(95, 104, 116)"}}}},"author_font":{"value":{"font_type":"system","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":"Roboto Slab","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(0, 0, 0)"}}}},"text_background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgcolor":{"value":{"color":""}}}},"image_border":{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}},"bullets":"1","bullets_position":"center","top_bottom_placement":0,"background":{"value":{"bgimage_attach":"scroll"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","sections":[{"is_open":true,"name":"","text":{"value":{"1":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus.","2":""}},"author":"Happy Customer","icon":{"options":{"font_size":"16px"}},"image":"data\\/journal-demo\\/av1.jpg","status":"1","sort_order":""},{"is_open":true,"name":"","text":{"value":{"1":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus.","2":""}},"author":"Pretty Customer","icon":{"options":{"font_size":"16px"}},"image":"data\\/journal-demo\\/av4.jpg","status":"1","sort_order":""},{"is_open":true,"name":"","text":{"value":{"1":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam iaculis egestas laoreet. Etiam faucibus massa sed risus lacinia in vulputate dolor imperdiet. Curabitur pharetra, purus.","2":""}},"author":"Natalia","icon":{"options":{"font_size":"16px"}},"image":"data\\/journal-demo\\/av2.jpg","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true}'),
(205, 'journal2_static_banners', '{"module_name":"Demo1 Mid 1","module_title":{"value":{"1":"","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"1","range":"1,10","step":"1"},"desktop2":{"value":"1","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"1","range":"1,10","step":"1"},"large_desktop2":{"value":"1","range":"1,10","step":"1"}}},"background":{"value":{"bgimage_attach":"scroll"}},"bgcolor":{"value":{"color":"rgba(0, 0, 0, 0.4)"}},"icon":{"options":{"font_size":"32px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe608;","class":"arrow-right"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","image_border":{"value":{"border_rounded":"px"}},"sections":[{"is_open":true,"image":"data\\/journal2\\/misc\\/s1.jpg","link":{"menu_type":"custom","menu_item":{"url":"#"}},"link_new_window":"0","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true}'),
(224, 'journal2_carousel_grid', '{"module_name":"New Module","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","disable_mobile":"0","module_spacing":"20","columns":[{"is_open":true,"width":"50","module_id":"85","disable_mobile":"0","status":1,"sort_order":"","modules":[]},{"is_open":true,"width":"50","module_id":"88","disable_mobile":"0","status":1,"sort_order":"","modules":[]}],"general_is_open":true,"top_bottom_is_open":true}'),
(225, 'journal2_static_banners', '{"module_name":"Demo 1 Mid 2","module_title":{"value":{"1":"","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,1a0","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"1","range":"1,10","step":"1"},"desktop2":{"value":"1","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"1","range":"1,10","step":"1"},"large_desktop2":{"value":"1","range":"1,10","step":"1"}}},"background":{"value":{"bgimage_attach":"scroll"}},"bgcolor":{"value":{"color":"rgba(0, 0, 0, 0.4)"}},"icon":{"options":{"font_size":"30px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe094;","class":"circle-arrow-right2"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","image_border":{"value":{"border_rounded":"px"}},"sections":[{"is_open":true,"image":"data\\/journal2\\/misc\\/s2.jpg","link":{"menu_type":"custom","menu_item":{"url":"#"}},"link_new_window":"0","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true}'),
(226, 'journal2_static_banners', '{"module_name":"Demo 1 Mid 3","module_title":{"value":{"1":"","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"1","range":"1,10","step":"1"},"desktop2":{"value":"1","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"1","range":"1,10","step":"1"},"large_desktop2":{"value":"1","range":"1,10","step":"1"}}},"background":{"value":{"bgimage_attach":"scroll"}},"bgcolor":{"value":{"color":"rgba(0, 0, 0, 0.4)"}},"icon":{"options":{"font_size":"30px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe094;","class":"circle-arrow-right2"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","image_border":{"value":{"border_rounded":"px"}},"sections":[{"is_open":true,"image":"data\\/journal2\\/misc\\/s3.jpg","link":{"menu_type":"custom","menu_item":{"url":"#"}},"link_new_window":"0","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true}'),
(197, 'journal2_advanced_grid', '{"module_name":"Demo 1 - Main","height":"400","module_background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgcolor":{"value":{"color":""}}}},"module_padding":"0","background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"no-repeat","bgimage_position":"center","bgcolor":{"value":{"color":"rgb(169, 184, 192)"}},"bgimage":{"value":{"image":""}}}},"fullwidth":"0","margin_top":"20","margin_bottom":"20","disable_mobile":"0","grid_dimensions":"0","module_spacing":"20","columns":[{"is_open":true,"width":"100","status":1,"sort_order":"","modules":[{"is_open":true,"height":"100","module_id":"202","disable_mobile":"0","status":1,"sort_order":""}]}],"general_is_open":true,"top_bottom_is_open":true}'),
(199, 'journal2_static_banners', '{"module_name":"Grid 1","module_title":{"value":{"1":"","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"1","range":"1,10","step":"1"},"desktop2":{"value":"1","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"1","range":"1,10","step":"1"},"large_desktop2":{"value":"1","range":"1,10","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","background":{"value":{"bgimage_attach":"scroll"}},"bgcolor":{"value":{"color":""}},"icon":{"options":{"font_size":"30px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"none","icon":{"icon":"&#xe608;","class":"arrow-right"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","image_border":{"value":{"border_rounded":"px"}},"sections":[{"is_open":true,"image":{"1":"data\\/journal2\\/misc\\/grid1.jpg","3":"data\\/journal2\\/misc\\/2a-1.jpg"},"link":{"menu_type":"custom","menu_item":{"url":""}},"link_new_window":"0","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true}'),
(200, 'journal2_static_banners', '{"module_name":"Grid 2","module_title":{"value":{"1":"","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"1","range":"1,10","step":"1"},"desktop2":{"value":"1","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"1","range":"1,10","step":"1"},"large_desktop2":{"value":"1","range":"1,10","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","background":{"value":{"bgimage_attach":"scroll"}},"bgcolor":{"value":{"color":"rgba(0, 0, 0, 0.4)"}},"icon":{"options":{"font_size":"30px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe021;","class":"upload"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","image_border":{"value":{"border_rounded":"px"}},"sections":[{"is_open":true,"image":{"1":"data\\/journal2\\/misc\\/grid2.jpg","3":"data\\/journal2\\/misc\\/2b-1.jpg"},"link":{"menu_type":"popup","menu_item":"236"},"link_new_window":"0","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":false}'),
(201, 'journal2_static_banners', '{"module_name":"Grid 3","module_title":{"value":{"1":"","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"1","range":"1,10","step":"1"},"desktop2":{"value":"1","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"1","range":"1,10","step":"1"},"large_desktop2":{"value":"1","range":"1,10","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","background":{"value":{"bgimage_attach":"scroll"}},"bgcolor":{"value":{"color":"rgba(0, 0, 0, 0.4)"}},"icon":{"options":{"font_size":"32px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe094;","class":"circle-arrow-right2"}},"disable_mobile":"0","fullwidth":"0","margin_top":"","margin_bottom":"","image_border":{"value":{"border_rounded":"px"}},"sections":[{"is_open":true,"image":{"1":"data\\/journal2\\/misc\\/grid3.jpg","3":"data\\/journal2\\/misc\\/2c-1.jpg"},"link":{"menu_type":"blog_home","menu_item":null},"link_new_window":"0","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":true}'),
(202, 'journal2_slider', '{"module_name":"Demo 1 A","width":"","height":"380","hideonmobile":"0","hidecaptionsonmobile":"0","timer":"bottom","js_options":{"delay":"4000","onHoverStop":"on","thumbWidth":100,"thumbHeight":75,"thumbAmount":4,"hideThumbs":1,"navigationType":"bullet","navigationArrows":"solo","navigationStyle":"round","navigationHAlign":"center","navigationVAlign":"bottom","navigationHOffset":"","navigationVOffset":"30"},"preload_images":"1","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","slides":[{"is_open":false,"slide_name":"Smart View","image":{"1":"\\/catalog\\/Banner\\/3_94d43e327d9303539cb1e2aac7032668_s.jpg","2":"\\/catalog\\/Banner\\/3_94d43e327d9303539cb1e2aac7032668_s.jpg","3":"data\\/journal-demo\\/1a.jpg"},"thumb":{"1":"\\/catalog\\/Banner\\/3_94d43e327d9303539cb1e2aac7032668_s.jpg","2":"\\/catalog\\/Banner\\/3_94d43e327d9303539cb1e2aac7032668_s.jpg","3":""},"transition":"scaledownfromtop","slotamount":"","masterspeed":800,"delay":"","captions":[],"status":1,"sort_order":"","link":{"menu_type":"custom"},"link_new_window":"0","easing":"easeInOutQuart","close_others":true},{"is_open":false,"slide_name":"Triumph Board 1","image":{"1":"\\/catalog\\/Banner\\/Banner_TC_02-01.jpg","2":"\\/catalog\\/Banner\\/Banner_TC_02-01.jpg"},"thumb":{"1":"\\/catalog\\/Banner\\/Banner_TC_02-01.jpg","2":"\\/catalog\\/Banner\\/Banner_TC_02-01.jpg"},"transition":"fade","slotamount":"","masterspeed":800,"delay":"","captions":[],"status":1,"sort_order":"","link":{"menu_type":"custom"},"link_new_window":"0","easing":"easeInOutQuart"},{"is_open":false,"slide_name":"Triumph Board 2","image":{"1":"\\/catalog\\/Banner\\/Banner_Business-Solutions1.jpg","2":"\\/catalog\\/Banner\\/Banner_Business-Solutions1.jpg"},"thumb":{"1":"\\/catalog\\/Banner\\/Banner_Business-Solutions1.jpg","2":"\\/catalog\\/Banner\\/Banner_Business-Solutions1.jpg"},"transition":"fade","slotamount":"","masterspeed":800,"delay":"","captions":[],"status":1,"sort_order":"","link":{"menu_type":"custom"},"link_new_window":"0","easing":"easeInOutQuart"},{"is_open":true,"slide_name":"Audio Show","image":{"1":"\\/catalog\\/Banner\\/Audio-Eng_Banner.jpg","2":"\\/catalog\\/Banner\\/Audio-Eng_Banner.jpg"},"thumb":{"1":"\\/catalog\\/Banner\\/Audio-Eng_Banner.jpg","2":"\\/catalog\\/Banner\\/Audio-Eng_Banner.jpg"},"transition":"fade","slotamount":"","masterspeed":800,"delay":"","captions":[],"status":1,"sort_order":"","link":{"menu_type":"custom"},"link_new_window":"0","easing":"easeInOutQuart"}],"general_is_open":false,"navigation_is_open":false,"top_bottom_is_open":false,"close_others":true}'),
(228, 'journal2_blog_categories', '{"general_is_open":true,"close_others":false,"module_name":"New Module","title":{"value":{"1":"Blog Categories","2":""}}}'),
(229, 'journal2_blog_comments', '{"general_is_open":true,"close_others":false,"module_name":"New Module","limit":5,"title":{"value":{"1":"Recent Comments","2":""}}}'),
(227, 'journal2_blog_side_posts', '{"general_is_open":true,"close_others":false,"module_name":"Recent Posts","module_type":"newest","limit":"4","title":{"value":{"1":"Recent Blog Posts","2":""}}}'),
(230, 'journal2_blog_search', '{"general_is_open":true,"close_others":false,"module_name":"New Module","title":{"value":{"1":"Blog Search","2":""}},"placeholder":{"value":{"1":"Search in articles...","2":""}}}'),
(231, 'journal2_blog_tags', '{"general_is_open":true,"close_others":false,"module_name":"New Module","limit":15,"title":{"value":{"1":"Blog Tags","2":""}}}'),
(233, 'journal2_cms_blocks', '{"module_name":"About Us - blog post","module_title":{"value":{"1":"About Us","2":""}},"items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"2","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"2","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"4","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"4","range":"1,10","step":"1"},"large_desktop1":{"value":"4","range":"1,10","step":"1"},"large_desktop2":{"value":"4","range":"1,10","step":"1"}}},"module_background":{"value":{"bgimage_attach":"scroll"}},"module_padding":"0","disable_mobile":"0","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","sections":[{"is_open":true,"section_title":[],"text":{"1":"<p><img alt=\\"\\" height=\\"33\\" src=\\"http:\\/\\/digital-cdn.net\\/1\\/image\\/data\\/journal2\\/j.png\\" style=\\"float: left; margin-right: 10px;\\" width=\\"33\\" \\/>This is just a CMS Block with some custom text.<\\/p>\\n\\n<p>&nbsp;<\\/p>\\n\\n<p><strong>Remember<\\/strong>, you can customize every single blog page with any modules (sliders, banners, photo galleries, etc.). The blog fully supports <strong>custom layouts<\\/strong> for any blog page.<\\/p>\\n\\n<p>&nbsp;<\\/p>\\n\\n<p>And since Journal version 2.3 you can create custom popup modules and open them from any button or link. Like<strong> <a href=\\"javascript:Journal.openPopup(''234'')\\">this one<\\/a>.<\\/strong><\\/p>\\n"},"text_align":"left","icon_status":"0","icon_position":"top","icon":{"options":{"font_size":"16px"}},"icon_border":{"value":{"border_rounded":"px"}},"icon_bg_color":"","icon_width":"","icon_height":"","status":"1","sort_order":""}],"general_is_open":true,"top_bottom_is_open":false}'),
(234, 'journal2_popup', '{"module_name":"Blog style popup","close_button":"1","padding":"","title":{"value":{"1":"Did you know you can open custom popups from any link?","2":""}},"title_font":{"value":{"font_type":"system","font_size":"19px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(51, 55, 69)"}}}},"title_bg_color":{"value":{"color":"rgb(244, 244, 244)"}},"title_height":"50","newsletter":"0","newsletter_bg_color":"","newsletter_height":80,"newsletter_id":"","footer_height":"0","footer_bg_color":{"value":{"color":""}},"type":"text","text":[null,"<p><img alt=\\"\\" height=\\"400\\" src=\\"http:\\/\\/digital-cdn.net\\/1\\/image\\/data\\/journal2\\/blog\\/blog-style-popup.jpg\\" width=\\"600\\" \\/><\\/p>\\n"],"text_font":[],"text_height":"","image":"no_image.jpg","content_overflow":"0","disable_mobile":"0","status":"1","width":600,"height":"380","background":{"value":{"bgimage_attach":"scroll"}},"button_1":"0","button_1_link":{"menu_type":"custom"},"button_1_icon":{"options":{"font_size":"16px"}},"button_1_new_window":"0","button_1_text":{"value":{"1":"Got it!","2":""}},"button_1_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":[]}},"button_1_bgcolor":"","button_1_hover_bgcolor":"","button_2":"0","button_2_link":{"menu_type":"custom"},"button_2_icon":{"options":{"font_size":"16px"}},"button_2_new_window":"0","button_2_text":{"value":{"1":"","2":""}},"button_2_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_2_bgcolor":"","button_2_hover_bgcolor":"","button_submit_icon":{"options":{"font_size":"16px"}},"button_submit_text":{"value":{"1":"","2":""}},"button_submit_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_submit_bgcolor":"","button_submit_hover_bgcolor":"","button_submit_position":"center","do_not_show_again":"0","do_not_show_again_text":{"value":{"1":"","2":""}},"do_not_show_again_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"do_not_show_again_cookie":"yei5k1q0k9","sort_order":"","general_is_open":true,"header_is_open":true,"newsletter_is_open":true,"footer_is_open":true,"button_submit_icon_position":"left","button_1_icon_position":"left","button_2_icon_position":"left","content_is_open":true,"top_bottom_is_open":true}'),
(235, 'journal2_blog_posts', '{"general_is_open":true,"top_bottom_is_open":true,"close_others":false,"module_name":"Recent Articles","top_bottom_placement":0,"module_padding":"1","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","module_type":"newest","display":"grid","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"2","range":"1,10","step":"1"},"tablet1":{"value":"1","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"3","range":"1,10","step":"1"},"desktop1":{"value":"2","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"3","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"3","range":"1,10","step":"1"}}},"description":1,"description_limit":"200","limit":"8","content_align":"left","image_width":"300","image_height":"200","image_type":"crop","carousel":"1","carousel_arrows":"top","carousel_buttons":1,"autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","carousel_bullets":"1","title":{"value":{"1":"From the Blog","2":""}},"module_background":{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgcolor":{"value":{"color":"rgb(238, 238, 238)"}}}}}');
INSERT INTO `journal2_modules` (`module_id`, `module_type`, `module_data`) VALUES
(236, 'journal2_popup', '{"module_name":"Free Gift","close_button":"0","padding":"","title":{"value":{"1":"","2":""}},"title_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"title_bg_color":"","title_height":"0","newsletter":"1","newsletter_bg_color":{"value":{"color":"rgb(51, 55, 69)"}},"newsletter_height":"80","newsletter_id":"98","footer_height":"0","footer_bg_color":"","type":"text","text":{"1":"<p><img alt=\\"\\" height=\\"350\\" src=\\"http:\\/\\/digital-cdn.net\\/1\\/image\\/data\\/journal2\\/misc\\/popup2.png\\" style=\\"float: left;\\" width=\\"600\\" \\/><\\/p>\\n"},"text_font":[],"text_height":"","image":"no_image.jpg","content_overflow":"0","disable_mobile":"0","status":"1","width":600,"height":"350","background":{"value":{"bgimage_attach":"scroll"}},"button_1":"0","button_1_link":{"menu_type":"custom"},"button_1_icon":{"options":{"font_size":"16px"}},"button_1_new_window":"0","button_1_text":{"value":{"1":"","2":""}},"button_1_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_1_bgcolor":"","button_1_hover_bgcolor":"","button_2":"0","button_2_link":{"menu_type":"custom"},"button_2_icon":{"options":{"font_size":"16px"}},"button_2_new_window":"0","button_2_text":{"value":{"1":"","2":""}},"button_2_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_2_bgcolor":"","button_2_hover_bgcolor":"","button_submit_icon":{"options":{"font_size":"16px"}},"button_submit_text":{"value":{"1":"","2":""}},"button_submit_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_submit_bgcolor":"","button_submit_hover_bgcolor":"","button_submit_position":"center","do_not_show_again":"1","do_not_show_again_text":{"value":{"1":"","2":""}},"do_not_show_again_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"do_not_show_again_cookie":"9z78957y14i","sort_order":"","general_is_open":true,"header_is_open":true,"newsletter_is_open":true,"footer_is_open":true,"button_submit_icon_position":"left","button_1_icon_position":"left","button_2_icon_position":"left","content_is_open":true,"top_bottom_is_open":true}'),
(237, 'journal2_popup', '{"module_name":"Enquiry Contact Form","close_button":"1","padding":"","title":{"value":{"1":"Bespoke Product - Request a Quote","2":""}},"title_font":{"value":{"font_type":"system","font_size":"20px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}},"title_bg_color":{"value":{"color":"rgb(234, 35, 73)"}},"title_height":"50","newsletter":"0","newsletter_bg_color":"","newsletter_height":80,"newsletter_id":"","footer_height":60,"footer_bg_color":"","type":"contact","text":[],"text_font":[],"text_height":"","image":"no_image.jpg","content_overflow":"1","disable_mobile":"0","status":"1","width":600,"height":300,"background":{"value":{"bgimage_attach":"scroll"}},"button_1":"0","button_1_link":{"menu_type":"custom"},"button_1_icon":{"options":{"font_size":"16px"}},"button_1_new_window":"0","button_1_text":{"value":{"1":"","2":""}},"button_1_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_1_bgcolor":"","button_1_hover_bgcolor":"","button_2":"0","button_2_link":{"menu_type":"custom"},"button_2_icon":{"options":{"font_size":"16px"}},"button_2_new_window":"0","button_2_text":{"value":{"1":"","2":""}},"button_2_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_2_bgcolor":"","button_2_hover_bgcolor":"","button_submit_icon":{"options":{"font_size":"16px"}},"button_submit_text":{"value":{"1":"","2":""}},"button_submit_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"button_submit_bgcolor":"","button_submit_hover_bgcolor":{"value":{"color":""}},"button_submit_position":"left","do_not_show_again":"1","do_not_show_again_text":{"value":{"1":"","2":""}},"do_not_show_again_font":{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}},"do_not_show_again_cookie":"g25738oajor","sort_order":"","general_is_open":true,"header_is_open":true,"newsletter_is_open":true,"footer_is_open":true,"button_submit_icon_position":"left","button_1_icon_position":"left","button_2_icon_position":"left","content_is_open":true,"top_bottom_is_open":true}'),
(238, 'journal2_product_tabs', '{"module_name":"Request Quote","name":{"value":{"1":"Request Quote","2":"","3":"Request Quote"}},"icon_status":"1","icon":{"options":{"font_size":"22px","color":{"value":{"color":""}},"top":"-1","left":"-1"},"icon_type":"icon","icon":{"icon":"&#xe021;","class":"upload"}},"icon_border":{"value":{"border_rounded":"px"}},"icon_bg_color":"","icon_width":"","icon_height":"","content_type":"enquiry","content":[],"popup":"237","global":"0","products":[{"data":{"id":"272","name":"Red Formal Watch"}}],"categories":[],"manufacturers":[],"store_id":-1,"status":1,"sort_order":"","position":"tab","option_position":"top"}'),
(241, 'journal2_blog_posts', '{"general_is_open":true,"top_bottom_is_open":true,"close_others":false,"module_name":"Grid 4 - Portrait","top_bottom_placement":0,"module_padding":"0","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","module_type":"newest","display":"grid","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"3","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"4","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"3","range":"1,10","step":"1"}}},"description":1,"description_limit":150,"limit":5,"content_align":"center","image_width":"230","image_height":"300","image_type":"crop","carousel":"1","carousel_arrows":"top","carousel_buttons":1,"autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","carousel_bullets":"1","title":{"value":{"1":"Grid - <small>4 per Row, Center Align, Portrait Image Crop<\\/small>","3":"Grid - <small>4 per Row, Center Align, Portrait Image Crop<\\/small>"}},"module_background":{"value":{"bgimage_attach":"scroll"}}}'),
(242, 'journal2_blog_posts', '{"general_is_open":true,"top_bottom_is_open":true,"close_others":false,"module_name":"Grid 1 - Landscape","top_bottom_placement":0,"module_padding":"0","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","module_type":"newest","display":"grid","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"1","range":"1,10","step":"1"},"tablet":{"value":"1","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"1","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"1","range":"1,10","step":"1"},"large_desktop1":{"value":"4","range":"1,10","step":"1"},"large_desktop2":{"value":"3","range":"1,10","step":"1"}}},"description":1,"description_limit":"400","limit":5,"content_align":"left","image_width":"980","image_height":"280","image_type":"crop","carousel":"1","carousel_arrows":"top","carousel_buttons":1,"autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","carousel_bullets":"1","title":{"value":{"1":"Grid - <small>1 per Row, Landscape Image Crop, Left Align<\\/small>","3":""}},"module_background":{"value":{"bgimage_attach":"scroll"}}}'),
(243, 'journal2_blog_posts', '{"general_is_open":true,"top_bottom_is_open":true,"close_others":false,"module_name":"List View","top_bottom_placement":0,"module_padding":"0","background":{"value":{"bgimage_attach":"scroll"}},"fullwidth":"0","margin_top":"","margin_bottom":"","module_type":"newest","display":"list","items_per_row":{"range":"1,10","step":"1","value":{"mobile":{"value":"1","range":"1,10","step":"1"},"mobile1":{"value":"2","range":"1,10","step":"1"},"tablet":{"value":"3","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"4","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"5","range":"1,10","step":"1"},"large_desktop1":{"value":"4","range":"1,10","step":"1"},"large_desktop2":{"value":"3","range":"1,10","step":"1"}}},"description":1,"description_limit":"600","limit":5,"content_align":"left","image_width":"280","image_height":"280","image_type":"crop","carousel":"1","carousel_arrows":"top","carousel_buttons":1,"autoplay":"1","pause_on_hover":"1","transition_speed":"400","transition_delay":"3000","touch_drag":"0","disable_mobile":"0","carousel_bullets":"1","title":{"value":{"1":"List View <small>Carousel<\\/small>","3":"List View <small>Carousel<\\/small>"}},"module_background":{"value":{"bgimage_attach":"scroll"}}}'),
(248, 'journal2_side_blocks', '{"module_name":"Contact Us Block","module_type":"block","icon":{"options":{"font_size":"24px","color":{"value":{"color":"rgb(238, 238, 238)"}}},"icon_type":"icon","icon":{"icon":"&#xe1b0;","class":"bubbles4"}},"icon_bg_color":"rgb(221, 0, 23)","icon_border":{"value":{"border_rounded":"px"}},"icon_bg_hover_color":"","content_bg_color":"999999","alignment":"left","position":"fixed","icon_width":"50","icon_height":"50","offset_top":"300","offset_side":"","content_width":"275","content_padding":"15","content":{"1":"<p><span style=\\"font-size:18px;\\"><strong>Contact Us<\\/strong><\\/span><\\/p>\\n\\n<hr \\/>\\n<p><strong>Huuhanh Co., Ltd<\\/strong><br \\/>\\n6801 Kenilworth Avenue, Suite 140<br \\/>\\nRiverdale, MD 20737<br \\/>\\nUnited States<\\/p>\\n\\n<p>We welcome store visits Appointment preferred (call us)<br \\/>\\nWe&#39;re 25 min from Washington DC Main entrance in rear of building<\\/p>\\n\\n<p><strong>Phone \\/ Fax:<\\/strong><br \\/>\\n(083)-9751-481<\\/p>\\n"},"link":{"menu_type":"custom","url":""},"new_window":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `journal2_newsletter`
--

CREATE TABLE IF NOT EXISTS `journal2_newsletter` (
  `email` varchar(128) NOT NULL,
  `token` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `journal2_settings`
--

CREATE TABLE IF NOT EXISTS `journal2_settings` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journal2_settings`
--

INSERT INTO `journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(1, 'out_of_stock_disable_button', 'productlabels', '0', 0),
(1, 'out_of_stock_bg', 'productlabels', '{"value":{"color":"rgb(240, 90, 40)"}}', 1),
(1, 'out_of_stock_font_color', 'productlabels', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'label_special_bg', 'productlabels', '{"value":{"color":"rgb(240, 90, 40)"}}', 1),
(1, 'label_latest_bg', 'productlabels', '{"value":{"color":"rgb(120, 180, 50)"}}', 1),
(1, 'label_special_font', 'productlabels', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'autosuggest_product_image_type', 'header', 'fit', 0),
(1, 'label_special_width', 'productlabels', '{"value":{"text":"40"}}', 1),
(1, 'label_special_border', 'productlabels', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'out_of_stock_ribbon_size', 'productlabels', 'medium', 0),
(1, 'label_special_height', 'productlabels', '{"value":{"text":"30"}}', 1),
(1, 'out_of_stock_status', 'productlabels', 'always', 0),
(1, 'label_latest_width', 'productlabels', '{"value":{"text":"40"}}', 1),
(1, 'label_latest_height', 'productlabels', '{"value":{"text":"30"}}', 1),
(1, 'label_special_status', 'productlabels', 'always', 0),
(1, 'label_special_type', 'productlabels', 'percent', 0),
(1, 'label_special_text', 'productlabels', '{"value":{"1":"","2":""}}', 1),
(1, 'label_latest_border', 'productlabels', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'post_page_comments_icon', 'blogpostpage', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'feed_text', 'blog', '{"value":{"1":"RSS Feed"}}', 1),
(1, 'product_page_options_push_checkbox', 'productpage', '1', 0),
(1, 'product_page_options_push_radio', 'productpage', '1', 0),
(1, 'product_page_title_border', 'productpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_page_options_push_image_width', 'productpage', '{"value":{"text":""}}', 1),
(1, 'product_page_tabs_position', 'productpage', 'off', 0),
(1, 'product_page_options_sold_text_font', 'productpage', '{"value":{"font_type":"system","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":""}},"font_subset":[]}}', 1),
(1, 'product_page_title_overflow', 'productpage', 'on', 0),
(1, 'product_page_options_push_image_height', 'productpage', '{"value":{"text":""}}', 1),
(1, 'product_page_options_push_image', 'productpage', '1', 0),
(1, 'product_page_options_sold_count_bg', 'productpage', '{"value":{"color":"rgb(238, 238, 238)"}}', 1),
(1, 'product_page_title_align', 'productpage', 'left', 0),
(1, 'product_page_options_sold', 'productpage', '1', 0),
(1, 'product_page_options_sold_count_padding_left', 'productpage', '{"value":{"text":"0"}}', 1),
(1, 'product_page_options_sold_count_padding_bottom', 'productpage', '{"value":{"text":"8"}}', 1),
(1, 'product_page_options_sold_count_padding_right', 'productpage', '{"value":{"text":"8"}}', 1),
(1, 'product_page_options_sold_count_padding_top', 'productpage', '{"value":{"text":"8"}}', 1),
(1, 'product_page_title_status', 'productpage', '1', 0),
(1, 'product_page_options_sold_text', 'productpage', '{"value":[]}', 1),
(1, 'product_page_push_image_border', 'productpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_page_options_brand_image_border', 'productpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'manufacturer_image_custom_text', 'productpage', '{"value":[]}', 1),
(1, 'product_page_spec_align', 'productpage', 'left', 0),
(1, 'manufacturer_image', 'productpage', '0', 0),
(1, 'product_page_cloud_zoom_inner', 'productpage', '1', 0),
(1, 'manufacturer_image_additional_text', 'productpage', 'none', 0),
(1, 'product_page_discount_font', 'productpage', '{"value":{"font_type":"none","font_size":"18px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(1, 'product_page_tabs_content_option_padding_left', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_tabs_content_image_padding_bottom', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_tabs_content_option_padding_top', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_tabs_content_image_padding_left', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_tabs_content_image_padding_right', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_tabs_content_image_padding_top', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_tabs_content_option_padding_right', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_auto_update_price', 'productpage', '1', 0),
(1, 'product_page_tabs_content_option_padding_bottom', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_gallery_carousel_icon_offset', 'productpage', '{"value":{"text":"-5"}}', 1),
(1, 'share_buttons_style', 'productpage', ' ', 0),
(1, 'product_page_tabs_shadow', 'productpage', 'inset 0 -3px 6px -2px rgba(0, 0, 0, 0.5)', 0),
(1, 'product_page_gallery_carousel_icon_border', 'productpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_page_gallery_carousel_icon_bg_hover', 'productpage', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'product_page_option_font', 'productpage', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(1, 'product_page_options_padding_left', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_gallery_carousel_icon_width', 'productpage', '{"value":{"text":"22"}}', 1),
(1, 'product_page_gallery_carousel_icon_height', 'productpage', '{"value":{"text":"22"}}', 1),
(1, 'product_page_options_padding_top', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_options_padding_right', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_options_padding_bottom', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_gallery_carousel_icon_hover', 'productpage', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_page_gallery_carousel_icon_bg', 'productpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'product_page_options_push_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_page_gallery_carousel_transition_speed', 'productpage', '{"value":{"text":"400"}}', 1),
(1, 'share_buttons_disable_on_mobile', 'productpage', '1', 0),
(1, 'related_products_carousel_transition_delay', 'productpage', '{"value":{"text":"3000"}}', 1),
(1, 'split_ratio', 'productpage', 'split-50-50', 0),
(1, 'related_products_carousel_transition_speed', 'productpage', '{"value":{"text":"400"}}', 1),
(1, 'tags_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_gallery_carousel_pause_on_hover', 'productpage', '1', 0),
(1, 'tags_hover_bg', 'productpage', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'tags_hover_font', 'productpage', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'tags_align', 'productpage', 'left', 0),
(1, 'tags_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"15"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_page_button_border_hover', 'productpage', '{"value":{"color":""}}', 1),
(1, 'related_products_carousel_touch_drag', 'productpage', '1', 0),
(1, 'related_products_carousel_pause_on_hover', 'productpage', '1', 0),
(1, 'related_products_carousel_autoplay', 'productpage', '1', 0),
(1, 'product_page_gallery_carousel_touch_drag', 'productpage', '1', 0),
(1, 'product_page_gallery_carousel_autoplay', 'productpage', '0', 0),
(1, 'tags_bg', 'productpage', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'tags_title_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'tags_title_bg', 'productpage', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'related_products_items_per_row', 'productpage', '{"value":{"mobile":{"value":"1","range":"1,8","step":"1"},"mobile1":{"value":"2","range":"1,8","step":"1"},"tablet":{"value":"3","range":"1,8","step":"1"},"tablet1":{"value":"2","range":"1,8","step":"1"},"tablet2":{"value":1,"range":"1,8","step":"1"},"desktop":{"value":"4","range":"1,8","step":"1"},"desktop1":{"value":"3","range":"1,8","step":"1"},"desktop2":{"value":"2","range":"1,8","step":"1"},"large_desktop":{"value":"5","range":"1,8","step":"1"},"large_desktop1":{"value":"4","range":"1,8","step":"1"},"large_desktop2":{"value":"3","range":"1,8","step":"1"}},"step":"1","range":"1,8"}', 1),
(1, 'product_page_tabs_content_image_bg', 'productpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'product_page_tabs_content_option_bg', 'productpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'product_page_tabs_content_bg', 'productpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'product_page_tabs_font_hover', 'productpage', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'product_page_tabs_bg', 'productpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'product_page_tabs_bg_hover', 'productpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'product_page_button_bg', 'productpage', '{"value":{"color":""}}', 1),
(1, 'product_page_button_bg_hover', 'productpage', '{"value":{"color":""}}', 1),
(1, 'product_page_wishlist_font_hover', 'productpage', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'product_page_wishlist_bg', 'productpage', '{"value":{"color":"rgb(169, 184, 192)"}}', 1),
(1, 'share_buttons', 'productpage', '[{"id":"st_li_facebook"},{"id":"st_li_twitter"},{"id":"st_li_googleplus"},{"id":"st_li_pinterest"},{"id":"st_li_sharethis"}]', 1),
(1, 'product_page_qty_hover_color', 'productpage', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_page_qty_bg_color', 'productpage', '{"value":{"color":"rgb(169, 184, 192)"}}', 1),
(1, 'product_page_qty_bg_hover_color', 'productpage', '{"value":{"color":"rgb(189, 195, 199)"}}', 1),
(1, 'product_page_button_font_hover', 'productpage', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_page_qty_color', 'productpage', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_page_options_push_select_bg_active', 'productpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'product_page_options_old_price_bg', 'productpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'product_page_options_title_bg', 'productpage', '{"value":{"color":"rgb(169, 184, 192)"}}', 1),
(1, 'product_page_options_divider', 'productpage', '{"value":{"color":"rgb(189, 195, 199)"}}', 1),
(1, 'product_page_options_push_select_bg', 'productpage', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'product_page_options_push_select_font_active', 'productpage', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_page_gallery_carousel_icon_left', 'productpage', '{"value":{"options":{"font_size":"18px","color":{"value":{"color":"rgb(255, 255, 255)"}},"left":"-1","top":"-1"},"icon_type":"icon","icon":{"icon":"&#xe62b;","class":"angle-left"}}}', 1),
(1, 'product_page_gallery_carousel_icon_right', 'productpage', '{"value":{"options":{"font_size":"18px","color":{"value":{"color":"rgb(255, 255, 255)"}},"left":"1","top":"-1"},"icon_type":"icon","icon":{"icon":"&#xe62c;","class":"angle-right"}}}', 1),
(1, 'product_page_tabs_content_option_border', 'productpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_page_options_item_bg', 'productpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'product_page_options_links_hover', 'productpage', '{"value":{"color":""}}', 1),
(1, 'product_page_compare_icon', 'productpage', '{"value":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe025;","class":"refresh"}}}', 1),
(1, 'product_page_wishlist_icon', 'productpage', '{"value":{"options":{"font_size":"16px"},"icon_type":"icon","icon":{"icon":"&#xe662;","class":"heart2"}}}', 1),
(1, 'product_page_button_icon', 'productpage', '{"value":{"options":{"font_size":"26px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"5"},"icon_type":"icon","icon":{"icon":"&#xe000;","class":"icon0"}}}', 1),
(1, 'related_products_carousel', 'productpage', '1', 0),
(1, 'related_products_carousel_arrows', 'productpage', 'top', 0),
(1, 'related_products_carousel_bullets', 'productpage', '1', 0),
(1, 'product_page_gallery_text_icon', 'productpage', '{"value":{"options":{"font_size":"16px","color":{"value":{"color":""}}},"icon_type":"icon","icon":{"icon":"&#xe015;","class":"zoom-in2"}}}', 1),
(1, 'related_products_status', 'productpage', '1', 0),
(1, 'product_page_tabs_content_option_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_tabs_content_image_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_tabs_content_image_border', 'productpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_page_tabs_content_option_title_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_tabs_content_padding', 'productpage', '{"value":{"text":"15"}}', 1),
(1, 'product_page_tabs_content_image_title_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_tabs_content_border', 'productpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'share_buttons_status', 'productpage', '1', 0),
(1, 'share_buttons_position', 'productpage', 'right', 0),
(1, 'share_buttons_account_key', 'productpage', '{"value":""}', 1),
(1, 'product_page_tabs_font', 'productpage', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'product_page_button_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'product_page_tabs_content_ul_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_tabs_content_h_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_tabs_content_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_tabs_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_page_wishlist_font', 'productpage', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'product_page_button_icon_position', 'productpage', 'left', 0),
(1, 'product_page_button_active_shadow', 'productpage', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(1, 'product_page_button_font', 'productpage', '{"value":{"font_type":"google","font_size":"16px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'product_page_options_push_select_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'product_page_qty_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_page_options_push_shadow', 'productpage', 'inset 0 0 8px rgba(0, 0, 0, 0.7)', 0),
(1, 'product_page_options_title', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'product_page_options_push_select', 'productpage', '1', 0),
(1, 'product_page_options_old_price_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_page_options_old_price_font', 'productpage', '{"value":{"font_type":"google","font_size":"20px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}},"font_subset":["latin"]}}', 1),
(1, 'product_page_options_outstock_font', 'productpage', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(234, 35, 73)"}}}}', 1),
(1, 'product_page_options_price_font', 'productpage', '{"value":{"font_type":"google","font_size":"27px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(51, 55, 69)"}}}}', 1),
(1, 'product_page_options_views', 'productpage', '1', 0),
(1, 'product_page_options_views_text', 'productpage', '{"value":{"1":"Views","text":"Views"}}', 1),
(1, 'product_page_options_instock_font', 'productpage', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 153, 101)"}}}}', 1),
(1, 'countdown_product_page_padding_top', 'countdown', '{"value":{"text":"5"}}', 1),
(1, 'countdown_product_page_title', 'countdown', '{"value":{"1":"Limited Time Offer, Ends Soon:"}}', 1),
(1, 'countdown_product_page_width', 'countdown', '{"value":{"text":""}}', 1),
(1, 'pp_countdown_divider_color', 'countdown', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(1, 'countdown_product_page_title_font', 'countdown', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'countdown_product_page_title_align', 'countdown', 'left', 0),
(1, 'countdown_product_page_padding_left', 'countdown', '{"value":{"text":"5"}}', 1),
(1, 'countdown_product_page_padding_bottom', 'countdown', '{"value":{"text":"5"}}', 1),
(1, 'countdown_product_page_padding_right', 'countdown', '{"value":{"text":"5"}}', 1),
(1, 'pp_countdown_bg', 'countdown', '{"value":{"color":"rgb(169, 184, 192)"}}', 1),
(1, 'countdown_product_page_title_bg', 'countdown', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'pp_countdown_text_font', 'countdown', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'show_countdown_product_page', 'countdown', 'on', 0),
(1, 'pp_countdown_divider_type', 'countdown', 'solid', 0),
(1, 'pp_countdown_numbers_font', 'countdown', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'countdown_text_font', 'countdown', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'countdown_numbers_font', 'countdown', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'countdown_hours', 'countdown', '{"value":{"1":"","3":""}}', 1),
(1, 'countdown_min', 'countdown', '{"value":{"1":"","3":""}}', 1),
(1, 'countdown_sec', 'countdown', '{"value":{"1":"","3":""}}', 1),
(1, 'show_countdown', 'countdown', 'hover', 0),
(1, 'countdown_divider_type', 'countdown', 'solid', 0),
(1, 'countdown_days', 'countdown', '{"value":{"1":"","3":""}}', 1),
(1, 'feed_text_font_hover', 'blog', '{"value":{"color":"rgb(0, 0, 0)"}}', 1),
(1, 'feed_text_offset_top', 'blog', '{"value":{"text":""}}', 1),
(1, 'post_list_title_divider_type', 'blog', 'solid', 0),
(1, 'feed_text_offset_right', 'blog', '{"value":{"text":"15"}}', 1),
(1, 'post_grid_details_padding_left', 'blog', '{"value":{"text":"15"}}', 1),
(1, 'post_grid_bg_hover', 'blog', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'post_list_image_width', 'blog', '{"value":{"text":"30"}}', 1),
(1, 'feed_icon', 'blog', '{"value":{"options":{"font_size":"16px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"2"},"icon_type":"icon","icon":{"icon":"&#xe6b4;","class":"feed"}}}', 1),
(1, 'feed_text_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":[],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'post_grid_details_padding_bottom', 'blog', '{"value":{"text":""}}', 1),
(1, 'post_grid_bg', 'blog', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'post_grid_details_padding_top', 'blog', '{"value":{"text":""}}', 1),
(1, 'post_grid_details_padding_right', 'blog', '{"value":{"text":"15"}}', 1),
(1, 'post_list_button_icon', 'blog', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'post_grid_align', 'blog', 'left', 0),
(1, 'post_grid_shadow', 'blog', 'never', 0),
(1, 'post_grid_title_overflow', 'blog', 'nowrap', 0),
(1, 'post_grid_button_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":[]}}', 1),
(1, 'post_grid_padding', 'blog', '{"value":""}', 1),
(1, 'post_grid_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_grid_author_date_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_grid_author_date_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_grid_image_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_grid_title_font', 'blog', '{"value":{"font_type":"system","font_size":"16px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":[]}}', 1),
(1, 'post_grid_desc_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_grid_button_padding_right', 'blog', '{"value":""}', 1),
(1, 'post_grid_button_padding_top', 'blog', '{"value":""}', 1),
(1, 'post_grid_button_padding_left', 'blog', '{"value":""}', 1),
(1, 'post_grid_button_padding_bottom', 'blog', '{"value":""}', 1),
(1, 'post_grid_author_date_padding', 'blog', '{"value":""}', 1),
(1, 'post_grid_button_icon_position', 'blog', 'left', 0),
(1, 'post_grid_button_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_list_shadow', 'blog', 'never', 0),
(1, 'post_list_title_overflow', 'blog', 'nowrap', 0),
(1, 'post_list_title_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_list_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_list_desc_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_list_padding', 'blog', '{"value":""}', 1),
(1, 'post_list_image_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_list_button_icon_position', 'blog', 'left', 0),
(1, 'post_list_button_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'posts_grid_comments_icon', 'blogmodules', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'posts_grid_button_icon', 'blogmodules', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'side_post_image_width', 'blogmodules', '{"value":{"text":""}}', 1),
(1, 'side_posts_grid_author_date_font', 'blogmodules', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'side_post_image_height', 'blogmodules', '{"value":{"text":""}}', 1),
(1, 'posts_grid_author_icon', 'blogmodules', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'posts_grid_shadow', 'blogmodules', 'never', 0),
(1, 'posts_grid_desc_font', 'blogmodules', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'posts_grid_author_date_border', 'blogmodules', '{"value":{"border_rounded":"px"}}', 1),
(1, 'posts_grid_button_icon_position', 'blogmodules', 'left', 0),
(1, 'posts_grid_button_padding_bottom', 'blogmodules', '{"value":""}', 1),
(1, 'posts_grid_button_padding_right', 'blogmodules', '{"value":""}', 1),
(1, 'posts_grid_button_border', 'blogmodules', '{"value":{"border_rounded":"px"}}', 1),
(1, 'posts_grid_author_date_padding', 'blogmodules', '{"value":""}', 1),
(1, 'posts_grid_author_date_font', 'blogmodules', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'side_posts_grid_button_padding_top', 'blogmodules', '{"value":{"text":"10"}}', 1),
(1, 'posts_grid_button_padding_top', 'blogmodules', '{"value":""}', 1),
(1, 'side_posts_grid_button_padding_bottom', 'blogmodules', '{"value":{"text":"10"}}', 1),
(1, 'side_posts_grid_button_padding_left', 'blogmodules', '{"value":{"text":"10"}}', 1),
(1, 'posts_grid_button_font', 'blogmodules', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'side_posts_divider_type', 'blogmodules', 'solid', 0),
(1, 'posts_grid_button_padding_left', 'blogmodules', '{"value":""}', 1),
(1, 'posts_grid_date_icon', 'blogmodules', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'posts_grid_title_overflow', 'blogmodules', 'nowrap', 0),
(1, 'posts_grid_title_font', 'blogmodules', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'posts_grid_image_border', 'blogmodules', '{"value":{"border_rounded":"px"}}', 1),
(1, 'posts_grid_border', 'blogmodules', '{"value":{"border_rounded":"px"}}', 1),
(1, 'posts_grid_padding', 'blogmodules', '{"value":""}', 1),
(1, 'posts_grid_align', 'blogmodules', 'left', 0),
(1, 'post_list_author_date_padding', 'blog', '{"value":""}', 1),
(1, 'post_list_author_date_font', 'blog', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_list_author_date_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_list_button_padding_left', 'blog', '{"value":""}', 1),
(1, 'post_grid_author_icon', 'blog', '{"value":{"options":{"font_size":"13px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe1b8;","class":"user3"}}}', 1),
(1, 'side_posts_grid_button_padding_right', 'blogmodules', '{"value":{"text":"10"}}', 1),
(1, 'side_posts_grid_spacing', 'blogmodules', '{"value":""}', 1),
(1, 'side_posts_grid_image_border', 'blogmodules', '{"value":{"border_rounded":"px"}}', 1),
(1, 'side_posts_grid_button_border', 'blogmodules', '{"value":{"border_rounded":"px"}}', 1),
(1, 'side_posts_grid_title_font', 'blogmodules', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'side_posts_grid_item_spacing_bottom', 'blogmodules', '{"value":""}', 1),
(1, 'carousel_product_grid_details_bg_hover', 'modulecarousel', '{"value":{"color":""}}', 1),
(1, 'carousel_brand_product_grid_details_bg_hover', 'modulecarousel', '{"value":{"color":""}}', 1),
(1, 'carousel_brand_product_grid_item_padding', 'modulecarousel', '{"value":{"text":""}}', 1),
(1, 'carousel_brand_shadow_mask', 'modulecarousel', 'off', 0),
(1, 'carousel_product_grid_shadow', 'modulecarousel', 'never', 0),
(1, 'carousel_product_grid_item_padding', 'modulecarousel', '{"value":{"text":""}}', 1),
(1, 'carousel_brand_product_grid_soft_shadow', 'modulecarousel', 'none', 0),
(1, 'carousel_product_grid_soft_shadow', 'modulecarousel', 'none', 0),
(1, 'carousel_product_grid_item_bg', 'modulecarousel', '{"value":{"color":""}}', 1),
(1, 'carousel_product_grid_item_border', 'modulecarousel', '{"value":{"border_rounded":"px"}}', 1),
(1, 'carousel_brand_product_grid_item_border', 'modulecarousel', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'carousel_brand_product_grid_shadow', 'modulecarousel', 'never', 0),
(1, 'carousel_side_icon_hover', 'modulecarousel', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'carousel_icon_offset_top', 'modulecarousel', '{"value":{"text":"-56"}}', 1),
(1, 'carousel_side_right_icon', 'modulecarousel', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'carousel_side_icon_height', 'modulecarousel', '{"value":{"text":""}}', 1),
(1, 'carousel_icon_offset_left', 'modulecarousel', '{"value":{"text":"35"}}', 1),
(1, 'carousel_icon_border', 'modulecarousel', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'carousel_side_left_icon', 'modulecarousel', '{"value":{"options":{"font_size":"16px"},"icon_type":"none"}}', 1),
(1, 'carousel_icon_height', 'modulecarousel', '{"value":{"text":"32"}}', 1),
(1, 'carousel_side_icon_offset_top', 'modulecarousel', '{"value":{"text":""}}', 1),
(1, 'carousel_icon_bg_hover', 'modulecarousel', '{"value":{"color":""}}', 1),
(1, 'carousel_side_icon_width', 'modulecarousel', '{"value":{"text":""}}', 1),
(1, 'carousel_side_icon_bg_hover', 'modulecarousel', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'carousel_side_icon_border', 'modulecarousel', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'carousel_side_icon_offset_left', 'modulecarousel', '{"value":{"text":"10"}}', 1),
(1, 'carousel_icon_width', 'modulecarousel', '{"value":{"text":"32"}}', 1),
(1, 'carousel_title_bg_hover', 'modulecarousel', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'carousel_icon_offset_right', 'modulecarousel', '{"value":{"text":"5"}}', 1),
(1, 'carousel_side_icon_offset_right', 'modulecarousel', '{"value":{"text":"10"}}', 1),
(1, 'carousel_icon_bg', 'modulecarousel', '{"value":{"color":""}}', 1),
(1, 'carousel_side_icon_bg', 'modulecarousel', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'carousel_title_hover', 'modulecarousel', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'carousel_bullet_scale', 'modulecarousel', '{"value":{"text":"1"}}', 1),
(1, 'carousel_bullet_width', 'modulecarousel', '{"value":{"text":"12"}}', 1),
(1, 'carousel_bullet_height', 'modulecarousel', '{"value":{"text":"12"}}', 1),
(1, 'carousel_bullet_margin', 'modulecarousel', '{"value":{"text":"8"}}', 1),
(1, 'carousel_bullet_border', 'modulecarousel', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'carousel_title_divider', 'modulecarousel', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'carousel_bullet_hover', 'modulecarousel', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'carousel_title_bg', 'modulecarousel', '{"value":{"color":""}}', 1),
(1, 'carousel_bullet_color', 'modulecarousel', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'carousel_icon_hover', 'modulecarousel', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'carousel_right_icon', 'modulecarousel', '{"value":{"options":{"font_size":"25px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe094;","class":"circle-arrow-right2"}}}', 1),
(1, 'carousel_left_icon', 'modulecarousel', '{"value":{"options":{"font_size":"25px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe093;","class":"circle-arrow-left2"}}}', 1),
(1, 'carousel_title_line_height', 'modulecarousel', '{"value":""}', 1),
(1, 'carousel_title_font', 'modulecarousel', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'carousel_title_border', 'modulecarousel', '{"value":{"border_rounded":"px"}}', 1),
(1, 'carousel_title_divider_type', 'modulecarousel', 'solid', 0),
(1, 'product_grid_hover_border', 'productgrid', '{"value":{"color":""}}', 1),
(1, 'post_list_button_padding_right', 'blog', '{"value":""}', 1),
(1, 'rating_offset_y', 'productgrid', '{"value":{"text":"-60"}}', 1),
(1, 'rating_offset_x', 'productgrid', '{"value":{"text":"-47"}}', 1),
(1, 'product_grid_soft_shadow', 'productgrid', 'none', 0),
(1, 'product_grid_button_width_px', 'productgrid', '{"value":{"text":"40"}}', 1),
(1, 'product_grid_button_height_px', 'productgrid', '{"value":{"text":"40"}}', 1),
(1, 'product_grid_quickview_button_width_px', 'productgrid', '{"value":{"text":"40"}}', 1),
(1, 'product_grid_quickview_button_height_px', 'productgrid', '{"value":{"text":"40"}}', 1),
(1, 'product_grid_quickview_button_tooltip_bg_color', 'productgrid', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'product_grid_item_bg', 'productgrid', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_grid_wishlist_icon_tip_font', 'productgrid', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_grid_wishlist_icon_tip_bg', 'productgrid', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'product_grid_quickview_button_tooltip_font', 'productgrid', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_grid_details_tip_color', 'productgrid', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'product_grid_wishlist_icon_bg', 'productgrid', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'product_grid_wishlist_icon_bg_hover', 'productgrid', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'product_grid_price_background', 'productgrid', '{"value":{"color":""}}', 1),
(1, 'product_grid_image_overlay', 'productgrid', '{"value":{"color":""}}', 1),
(1, 'product_grid_details_bg', 'productgrid', '{"value":{"color":""}}', 1),
(1, 'product_grid_name_font_hover', 'productgrid', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'product_grid_wishlist_font_hover', 'productgrid', '{"value":{"color":""}}', 1),
(1, 'product_grid_wishlist_font', 'productgrid', '{"value":{"font_type":"system","font_size":"11px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}}}}', 1),
(1, 'product_grid_quickview_button_font', 'productgrid', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_grid_button_font', 'productgrid', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_grid_price_font', 'productgrid', '{"value":{"font_type":"system","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}}}}', 1),
(1, 'product_grid_old_price_font', 'productgrid', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(234, 35, 73)"}}}}', 1),
(1, 'product_grid_quickview_button_icon', 'productgrid', '{"value":{"options":{"font_size":"22px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"-1"},"icon_type":"icon","icon":{"icon":"&#xe015;","class":"zoom-in2"}}}', 1),
(1, 'product_grid_wishlist_icon', 'productgrid', '{"value":{"options":{"font_size":"11px","color":{"value":{"color":""}},"top":""},"icon_type":"icon","icon":{"icon":"&#xe662;","class":"heart2"}}}', 1),
(1, 'product_grid_compare_icon', 'productgrid', '{"value":{"options":{"font_size":"11px","color":{"value":{"color":""}},"top":""},"icon_type":"icon","icon":{"icon":"&#xe025;","class":"refresh"}}}', 1),
(1, 'product_grid_name_font', 'productgrid', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}}}}', 1),
(1, 'product_grid_button_icon', 'productgrid', '{"value":{"options":{"font_size":"23px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe000;","class":"icon0"}}}', 1),
(1, 'product_grid_wishlist_icon_tip_border', 'productgrid', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_grid_wishlist_icon_border', 'productgrid', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_grid_wishlist_icon_bg_height', 'productgrid', '{"value":{"text":"35"}}', 1),
(1, 'product_grid_wishlist_icon_bg_width', 'productgrid', '{"value":{"text":"35"}}', 1),
(1, 'product_grid_wishlist_icon_on_hover', 'productgrid', 'on', 0),
(1, 'product_grid_wishlist_icon_position', 'productgrid', 'button', 0),
(1, 'product_grid_wishlist_icon_display', 'productgrid', 'both', 0),
(1, 'product_grid_quickview_button_tooltip_border', 'productgrid', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_grid_quickview_button_height', 'productgrid', '{"value":{"text":""}}', 1),
(1, 'product_grid_quickview_button_width', 'productgrid', '{"value":{"text":""}}', 1),
(1, 'product_grid_quickview_button_border', 'productgrid', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_grid_quickview_offset_y', 'productgrid', '{"value":{"text":"-20"}}', 1),
(1, 'product_grid_quickview_offset_x', 'productgrid', '{"value":{"text":"-19"}}', 1),
(1, 'product_grid_button_width', 'productgrid', '{"value":""}', 1),
(1, 'product_grid_button_height', 'productgrid', '{"value":""}', 1),
(1, 'product_grid_button_tooltip_border', 'productgrid', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_grid_quickview_status', 'productgrid', 'hover', 0),
(1, 'product_grid_quickview_button_active_shadow', 'productgrid', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(1, 'product_grid_quickview_button_icon_display', 'productgrid', 'icon', 0),
(1, 'product_grid_quickview_button_icon_position', 'productgrid', 'left', 0),
(1, 'product_grid_button_border', 'productgrid', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_grid_button_icon_display', 'productgrid', 'both', 0),
(1, 'product_grid_button_icon_position', 'productgrid', 'left', 0),
(1, 'product_grid_button_block_button', 'productgrid', 'block-button', 0),
(1, 'product_grid_button_active_shadow', 'productgrid', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(1, 'product_grid_details_tip_offset_y', 'productgrid', '{"value":""}', 1),
(1, 'product_grid_details_tip_offset_x', 'productgrid', '{"value":{"text":""}}', 1),
(1, 'product_grid_price_pt', 'productgrid', '{"value":{"text":"5"}}', 1),
(1, 'product_grid_price_pr', 'productgrid', '{"value":{"text":"5"}}', 1),
(1, 'product_grid_price_pb', 'productgrid', '{"value":{"text":"5"}}', 1),
(1, 'product_grid_price_pl', 'productgrid', '{"value":{"text":"5"}}', 1),
(1, 'product_grid_details_tip_size', 'productgrid', '{"value":{"text":"25"}}', 1),
(1, 'product_grid_price_full', 'productgrid', 'inline-block', 0),
(1, 'product_grid_details_tip', 'productgrid', 'always', 0),
(1, 'product_grid_details_border', 'productgrid', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_grid_details_margin', 'productgrid', '{"value":""}', 1),
(1, 'product_grid_price_border', 'productgrid', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":{"text":"1"}},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(228, 228, 228)"}}}}', 1),
(1, 'cs_product_grid_soft_shadow', 'modulecustomsections', '1px 1px 0px rgba(0,0,0,.04)', 0),
(1, 'cs_fullwidth_divider', 'modulecustomsections', 'off', 0),
(1, 'cs_product_grid_item_border', 'modulecustomsections', '{"value":{"border_rounded":"px"}}', 1),
(1, 'cs_product_grid_shadow', 'modulecustomsections', 'never', 0),
(1, 'cs_title_divider', 'modulecustomsections', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'cs_title_bg_hover', 'modulecustomsections', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'cs_title_font', 'modulecustomsections', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'cs_title_line_height', 'modulecustomsections', '{"value":{"text":"40"}}', 1),
(1, 'cs_title_bg', 'modulecustomsections', '{"value":{"color":"rgb(60, 170, 210)"}}', 1),
(1, 'cs_title_hover', 'modulecustomsections', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'post_list_button_padding_bottom', 'blog', '{"value":""}', 1),
(1, 'post_list_button_border', 'blog', '{"value":{"border_rounded":"px"}}', 1),
(1, 'product_grid_name_overflow', 'productgrid', 'nowrap', 0),
(1, 'carousel_product_shadow_mask', 'modulecarousel', 'off', 0),
(1, 'post_list_button_padding_top', 'blog', '{"value":""}', 1),
(1, 'post_grid_date_icon', 'blog', '{"value":{"options":{"font_size":"13px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe6b3;","class":"date"}}}', 1),
(1, 'post_page_category_icon', 'blogpostpage', '{"value":{"options":{"font_size":"14px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe6b2;","class":"file-text"}}}', 1);
INSERT INTO `journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(1, 'product_page_options_item_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_page_options_margin', 'productpage', '{"value":{"text":"1"}}', 1),
(1, 'product_page_options_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'product_page_options_links', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'product_page_latest_label_status', 'productpage', 'block', 0),
(1, 'product_page_special_label_status', 'productpage', 'block', 0),
(1, 'product_page_outofstock_label_status', 'productpage', 'block', 0),
(1, 'product_page_gallery_text', 'productpage', '{"value":{"1":"Click Image for Gallery","2":""}}', 1),
(1, 'product_page_gallery_text_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"regular","font_style":"normal","text_transform":"none","color":{"value":{"color":""}},"font_subset":["latin"]}}', 1),
(1, 'product_page_options_font', 'productpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(1, 'product_page_additional_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'cart_content_height', 'header', '{"value":{"text":"350"}}', 1),
(1, 'post_comment_button_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_comment_button_padding_top', 'blogpostpage', '{"value":""}', 1),
(1, 'post_comment_button_padding_right', 'blogpostpage', '{"value":""}', 1),
(1, 'post_comment_button_padding_bottom', 'blogpostpage', '{"value":""}', 1),
(1, 'post_comment_button_padding_left', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_author_icon', 'blogpostpage', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'post_page_date_icon', 'blogpostpage', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'post_form_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_form_padding', 'blogpostpage', '{"value":{"text":"15"}}', 1),
(1, 'post_comment_button_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_form_reply_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_form_reply_padding', 'blogpostpage', '{"value":""}', 1),
(1, 'post_form_title_align', 'blogpostpage', 'left', 0),
(1, 'post_form_title_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'post_form_reply_title_align', 'blogpostpage', 'left', 0),
(1, 'post_form_reply_title_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'post_reply_date_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_reply_comment_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_reply_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_reply_padding', 'blogpostpage', '{"value":""}', 1),
(1, 'post_reply_avatar_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_reply_author_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_comment_date_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_comment_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_comment_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_comment_padding', 'blogpostpage', '{"value":""}', 1),
(1, 'post_comment_avatar_border', 'blogpostpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":"2"}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(169, 184, 192)"}}}}', 1),
(1, 'post_comment_author_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_comment_title_align', 'blogpostpage', 'left', 0),
(1, 'post_comment_title_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'post_page_q_margin_left', 'blogpostpage', '{"value":""}', 1),
(1, 'post_tags_align', 'blogpostpage', 'left', 0),
(1, 'post_tags_title_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_tags_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_tags_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'post_page_q_margin_bottom', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_q_margin_right', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_q_margin_top', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_q_padding_right', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_q_padding_bottom', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_q_padding_left', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_q_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":[],"color":{"value":{"color":"rgb(119, 119, 119)"}}}}', 1),
(1, 'post_page_q_border', 'blogpostpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'post_page_q_padding_top', 'blogpostpage', '{"value":""}', 1),
(1, 'post_page_author_date_border', 'blogpostpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":""}},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'post_page_stats_padding_top', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_page_stats_padding_right', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_page_stats_padding_bottom', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_page_stats_padding_left', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_page_author_date_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_page_h2_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_page_h3_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_page_h1_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_page_padding', 'blogpostpage', '{"value":{"text":"15"}}', 1),
(1, 'post_page_desc_font', 'blogpostpage', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'post_page_share_align', 'blogpostpage', 'left', 0),
(1, 'post_form_reply_bg', 'blogpostpage', '{"value":{"color":"rgb(238, 238, 238)"}}', 1),
(1, 'post_form_bg', 'blogpostpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'post_form_reply_title_top_margin', 'blogpostpage', '{"value":{"text":"20"}}', 1),
(1, 'post_form_title_top_margin', 'blogpostpage', '{"value":{"text":"20"}}', 1),
(1, 'post_form_title_padding_left', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_form_title_padding_top', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_form_title_padding_right', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_form_title_padding_bottom', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_form_title_bg', 'blogpostpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'post_comment_bg_even', 'blogpostpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'post_comment_bg_odd', 'blogpostpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'post_reply_bg_even', 'blogpostpage', '{"value":{"color":"rgb(238, 238, 238)"}}', 1),
(1, 'post_reply_bg_odd', 'blogpostpage', '{"value":{"color":"rgb(238, 238, 238)"}}', 1),
(1, 'post_form_reply_title_bg', 'blogpostpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'post_form_reply_title_padding_top', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_form_reply_title_padding_right', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_form_reply_title_padding_bottom', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_form_reply_title_padding_left', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_comment_title_bottom_margin', 'blogpostpage', '{"value":{"text":""}}', 1),
(1, 'post_comment_title_top_margin', 'blogpostpage', '{"value":{"text":"20"}}', 1),
(1, 'post_comment_title_padding_left', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_comment_title_padding_bottom', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_comment_title_padding_top', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_comment_title_padding_right', 'blogpostpage', '{"value":{"text":"10"}}', 1),
(1, 'post_tags_hover_bg', 'blogpostpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'post_comment_title_bg', 'blogpostpage', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'post_tags_bg', 'blogpostpage', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'post_tags_hover_font', 'blogpostpage', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'post_tags_title_bg', 'blogpostpage', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'post_page_bg', 'blogpostpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'post_form_title_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_page_author_date_bg', 'blogpostpage', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'post_form_reply_title_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_page_title_align', 'blogpostpage', 'left', 0),
(1, 'post_page_share_border_type', 'blogpostpage', 'solid', 0),
(1, 'post_comment_title_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_page_title_border', 'blogpostpage', '{"value":{"border_rounded":"px"}}', 1),
(1, 'post_page_line_height', 'blogpostpage', '{"value":{"text":"20"}}', 1),
(1, 'post_title_overflow', 'blogpostpage', 'on', 0),
(1, 'footer_post_name_overflow', 'footer', 'nowrap', 0),
(1, 'footer_post_divider_type', 'footer', 'solid', 0),
(1, 'footer_post_image_width', 'footer', '{"value":{"text":"30"}}', 1),
(1, 'footer_post_padding', 'footer', '{"value":{"text":"7"}}', 1),
(1, 'footer_product_divider_type', 'footer', 'solid', 0),
(1, 'footer_post_divider', 'footer', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'footer_product_image_width', 'footer', '{"value":{"text":"30"}}', 1),
(1, 'footer_product_name_overflow', 'footer', 'normal', 0),
(1, 'footer_product_padding', 'footer', '{"value":{"text":"4"}}', 1),
(1, 'footer_product_image_height', 'footer', '{"value":{"text":"30"}}', 1),
(1, 'footer_product_price_font', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'footer_product_divider', 'footer', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'footer_product_name_font_hover', 'footer', '{"value":{"color":""}}', 1),
(1, 'footer_product_name_font', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'footer_html_heading_font', 'footer', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'footer_bg_image', 'footer', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(1, 'footer_html_heading_padding', 'footer', '{"value":{"text":"3"}}', 1),
(1, 'contacts_text_font', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'contacts_text_font_hover', 'footer', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'bottom_bar_bg', 'footer', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'footer_tooltip_bg_color', 'footer', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'footer_tooltip_font', 'footer', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'contacts_icon_bg_hover', 'footer', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'contacts_icon_bg', 'footer', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'contacts_bar_bg', 'footer', '{"value":{"color":"rgb(63, 87, 101)"}}', 1),
(1, 'footer_bg_color', 'footer', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'footer_links_hover', 'footer', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'html_font_color', 'footer', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'bottom_bar_shadow', 'footer', '0 0 7px rgba(0,0,0,.4)', 0),
(1, 'boxed_bottom', 'footer', 'fullwidth-bar', 0),
(1, 'bottom_bar_border', 'footer', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'footer_titles_divider', 'footer', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'footer_tooltip_border', 'footer', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'footer_titles', 'footer', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'contacts_bar_shadow', 'footer', '0 0 7px rgba(0,0,0,.4)', 0),
(1, 'contacts_display', 'footer', 'off', 0),
(1, 'contacts_bar_border', 'footer', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_page_additional_width', 'productpage', '{"value":"4","range":"1,8","step":"1"}', 1),
(1, 'product_page_additional_spacing', 'productpage', '{"value":{"text":"10"}}', 1),
(1, 'product_page_image_border', 'productpage', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'product_page_gallery_carousel_arrows', 'productpage', 'always', 0),
(1, 'product_page_gallery', 'productpage', '1', 0),
(1, 'product_page_gallery_carousel', 'productpage', '1', 0),
(1, 'product_page_cloud_zoom', 'productpage', '1', 0),
(1, 'slider_timer_color', 'moduleslider', '{"value":{"color":"rgb(240, 120, 80)"}}', 1),
(1, 'label_latest_font', 'productlabels', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'autosuggest_price_status', 'header', 'block', 0),
(1, 'breadcrumb_line_height', 'general', '{"value":""}', 1),
(1, 'search_autocomplete_include_description', 'header', '1', 0),
(1, 'language_display', 'header', 'flag', 0),
(1, 'currency_display', 'header', 'symbol', 0),
(1, 'autosuggest_view_more_text', 'header', '{"value":[]}', 1),
(1, 'mega_header_align', 'header', 'left', 0),
(1, 'lang_shadow', 'header', '0 2px 2px rgba(0, 0, 0, 0.15)', 0),
(1, 'autosuggest_product_image', 'header', 'block', 0),
(1, 'header_height', 'header', 'normal', 0),
(1, 'top_bar_divider_type', 'header', 'solid', 0),
(1, 'drop_lang_divider_type', 'header', 'solid', 0),
(1, 'boxed_bottom_spacing', 'header', '{"value":{"text":""}}', 1),
(1, 'header_bg_image', 'header', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(1, 'boxed_top_spacing', 'header', '{"value":{"text":""}}', 1),
(1, 'search_placeholder_text', 'header', '{"value":{"1":"Search","2":"Search"}}', 1),
(1, 'cart_header_shadow', 'header', '0 1px 5px -2px rgba(0, 0, 0, 0.6)', 0),
(1, 'header_shadow', 'header', '0 1px 4px -1px rgba(0, 0, 0, 0.7)', 0),
(1, 'lang_drop_bg_hover', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'curr_color', 'header', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'autosuggest_hover', 'header', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(1, 'curr_bg', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'lang_divider', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'lang_drop_bg', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'lang_drop_color_hover', 'header', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'lang_drop_color', 'header', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'autosuggest_bg', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'autosuggest_divider', 'header', '{"value":{"color":"rgb(189, 195, 199)"}}', 1),
(1, 'search_divider', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'search_button_bg_hover', 'header', '{"value":{"color":"rgb(169, 184, 192)"}}', 1),
(1, 'search_button_bg', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'search_bg', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'search_icon_hover', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'autosuggest_divider_type', 'header', 'solid', 0),
(1, 'search_placeholder_color', 'header', '{"value":{"color":"rgb(189, 195, 199)"}}', 1),
(1, 'cart_content_delete_icon_color', 'header', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'cart_content_delete_icon_hover', 'header', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'cart_total_bg', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'cart_content_divider_color', 'header', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(1, 'cart_content_bg', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'cart_icon_divider', 'header', '{"value":{"color":""}}', 1),
(1, 'cart_heading_icon_bg', 'header', '{"value":{"color":""}}', 1),
(1, 'cart_heading_bg', 'header', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'top_bar_bg_color', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'header_bg_color', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'logo_bg_color', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'search_icon', 'header', '{"value":{"options":{"font_size":"20px","color":{"value":{"color":"rgb(169, 184, 192)"}}},"icon_type":"icon","icon":{"icon":"&#xe697;","class":"search"}}}', 1),
(1, 'cart_heading_icon', 'header', '{"value":{"options":{"font_size":"27px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe000;","class":"icon0"}}}', 1),
(1, 'curr_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'autosuggest_border', 'header', '{"value":{"border_rounded":"px"}}', 1),
(1, 'autosuggest_height', 'header', '{"value":{"text":"350"}}', 1),
(1, 'lang_divider_type', 'header', 'solid', 0),
(1, 'drop_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'autosuggest_image_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'autosuggest_price_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'autosuggest_name_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'search_autocomplete', 'header', '1', 0),
(1, 'cart_total_font', 'header', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}}}}', 1),
(1, 'autosuggest_shadow', 'header', '0 1px 8px -3px rgba(0,0,0,.5)', 0),
(1, 'post_grid_button_icon', 'blog', '{"value":{"options":{"font_size":"16px","color":{"value":{"color":""}}},"icon_type":"none","icon":{"icon":"&#xe60e;","class":"chevron-right"}}}', 1),
(1, 'post_grid_comments_icon', 'blog', '{"value":{"options":{"font_size":"13px","color":{"value":{"color":"rgb(234, 35, 73)"}}},"icon_type":"icon","icon":{"icon":"&#xe1ae;","class":"bubble2"}}}', 1),
(1, 'post_list_author_icon', 'blog', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'post_list_comments_icon', 'blog', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'post_list_date_icon', 'blog', '{"value":{"options":{"font_size":"16px"}}}', 1),
(1, 'shopping_divider_style', 'pages', 'solid', 0),
(1, 'shopping_table_border', 'pages', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'shopping_image_border', 'pages', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":"3"}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(244, 244, 244)"}}}}', 1),
(1, 'login_screen_border', 'pages', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'shopping_action_header', 'pages', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'shopping_action_border', 'pages', '{"value":{"border_rounded":"px"}}', 1),
(1, 'shopping_action_margin', 'pages', '{"value":""}', 1),
(1, 'checkout_border', 'pages', '{"value":{"border_rounded":"px"}}', 1),
(1, 'actions_border', 'pages', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(250, 250, 250)"}}}}', 1),
(1, 'actions_padding_tb', 'pages', '{"value":{"text":"15"}}', 1),
(1, 'actions_padding_lr', 'pages', '{"value":{"text":"15"}}', 1),
(1, 'actions_bg_color', 'pages', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'shopping_table_bg_color', 'pages', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'shopping_table_color', 'pages', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'shopping_table_link_color', 'pages', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'shopping_table_link_hover_color', 'pages', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'shopping_table_header_color', 'pages', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'shopping_table_header_bg', 'pages', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'shopping_divider', 'pages', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'login_screen_bg', 'pages', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'login_screen_divider', 'pages', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(1, 'shopping_action_header_bg', 'pages', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'shopping_action_color', 'pages', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'shopping_action_bg', 'pages', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(1, 'shopping_option_hover_color', 'pages', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'shopping_option_bg', 'pages', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'shopping_option_bg_hover', 'pages', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'shopping_option_divider', 'pages', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'checkout_heading_bg_color', 'pages', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'checkout_heading_divider_color', 'pages', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'checkout_confirm_color', 'pages', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(1, 'checkout_confirm_bg_color', 'pages', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'checkout_confirm_divider_color', 'pages', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(1, 'checkout_bg', 'pages', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'checkout_padding', 'pages', '{"value":{"text":"12"}}', 1),
(1, 'checkout_heading_font', 'pages', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'site_map_border', 'pages', '{"value":{"border_rounded":"px"}}', 1),
(1, 'checkout_heading_divider_type', 'pages', 'solid', 0),
(1, 'blog_manager_post_title', 'pages', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(1, 'info_page_title_align', 'pages', 'left', 0),
(1, 'info_page_title_border', 'pages', '{"value":{"border_rounded":"px"}}', 1),
(1, 'shopping_option_font', 'pages', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":[],"color":{"value":{"color":"rgb(63, 87, 101)"}}}}', 1),
(1, 'search_radius', 'header', '{"value":{"border_rounded":"px"}}', 1),
(1, 'search_button_radius', 'header', '{"value":{"border_rounded":"px"}}', 1),
(1, 'search_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none"}}', 1),
(1, 'search_divider_type', 'header', 'solid', 0),
(1, 'cart_content_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(1, 'custom_css', 'custom_code', '{"value":{"text":""}}', 1),
(1, 'custom_js', 'custom_code', '{"value":{"text":""}}', 1),
(1, 'slider_icon_hover', 'moduleslider', '{"value":{"color":"rgb(240, 120, 80)"}}', 1),
(1, 'slider_bullet_scale', 'moduleslider', '{"value":{"text":"1.4"}}', 1),
(1, 'breadcrumb_padding', 'general', '{"value":""}', 1),
(1, 'lead_offset_top', 'general', '{"value":""}', 1),
(1, 'breadcrumb_status', 'general', 'block', 0),
(1, 'lead_offset_left', 'general', '{"value":""}', 1),
(1, 'extended_layout_bg_color', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'main_title_padding_right', 'general', '{"value":{"text":""}}', 1),
(1, 'main_title_padding_left', 'general', '{"value":{"text":"10"}}', 1),
(1, 'breadcrumb_border', 'general', '{"value":{"border_rounded":"px"}}', 1),
(1, 'general_button_border_hover', 'general', '{"value":{"color":""}}', 1),
(1, 'scroll_top_icon_hover', 'general', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'ajax_loader', 'general', '{"value":{"image":"data\\/journal2\\/loader.gif"}}', 1),
(1, 'breadcrumb_bg_color', 'general', '{"value":{"color":"rgb(189, 195, 199)"}}', 1),
(1, 'breadcrumb_hover', 'general', '{"value":{"color":"rgb(240, 70, 10)"}}', 1),
(1, 'general_button_bg_hover', 'general', '{"value":{"color":"rgb(43, 176, 227)"}}', 1),
(1, 'general_button_bg', 'general', '{"value":{"color":"rgb(120, 180, 50)"}}', 1),
(1, 'secondary_title_bg', 'general', '{"value":{"color":"rgb(189, 195, 199)"}}', 1),
(1, 'general_button_font_hover', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'main_title_bg', 'general', '{"value":{"color":"rgb(60, 170, 210)"}}', 1),
(1, 'general_links_hover', 'general', '{"value":{"color":"rgb(230, 70, 70)"}}', 1),
(1, 'general_links_color', 'general', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'content_bg_color', 'general', '{"value":{"color":"rgb(238, 238, 238)"}}', 1),
(1, 'body_bg_color', 'general', '{"value":{"color":"rgb(90, 130, 160)"}}', 1),
(1, 'site_width', 'general', '{"value":"1220","range":"1024,1920","step":"2"}', 1),
(1, 'extended_layout_bg_image', 'general', '{"value":{"bgimage_attach":"scroll"}}', 1),
(1, 'content_bg_image', 'general', '{"value":{"bgimage_attach":"scroll"}}', 1),
(1, 'scroll_top', 'general', '1', 0),
(1, 'scroll_top_icon', 'general', '{"value":{"options":{"font_size":"45px","color":{"value":{"color":"rgb(63, 87, 101)"}}},"icon_type":"icon","icon":{"icon":"&#xe021;","class":"upload"}}}', 1),
(1, 'body_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":"data\\/journal2\\/pattern\\/dots.png"}}}}', 1),
(1, 'breadcrumb_align', 'general', 'left', 0),
(1, 'breadcrumb_font', 'general', '{"value":{"font_type":"system","font_size":"12px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'general_button_height', 'general', '{"value":{"text":"33"}}', 1),
(1, 'general_button_width', 'general', '{"value":{"text":"10"}}', 1),
(1, 'general_button_font', 'general', '{"value":{"font_type":"google","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'general_button_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"2"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'general_button_active_shadow', 'general', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(1, 'secondary_title_padding_lr', 'general', '{"value":{"text":"10"}}', 1),
(1, 'secondary_title_padding_tb', 'general', '{"value":{"text":"8"}}', 1),
(1, 'secondary_title_border', 'general', '{"value":{"border_rounded":"px"}}', 1),
(1, 'secondary_title_font', 'general', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"bold","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'main_title_line_height', 'general', '{"value":{"text":"40"}}', 1),
(1, 'main_title_font', 'general', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}},"letter_spacing":""}}', 1),
(1, 'main_title_border', 'general', '{"value":{"border_rounded":"px"}}', 1),
(1, 'secondary_title_align', 'general', 'left', 0),
(1, 'container_border', 'general', '{"value":{"border_rounded":"px"}}', 1),
(1, 'main_title_align', 'general', 'left', 0),
(1, 'extended_layout_side_spacing', 'general', 'on', 0),
(1, 'extended_layout_top_spacing', 'general', 'on', 0),
(1, 'extended_layout', 'general', '0', 0),
(1, 'footer_border', 'footer', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'footer_links', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'footer_titles_divider_type', 'footer', 'solid', 0),
(1, 'footer_titles_align', 'footer', 'left', 0),
(1, 'footer_bottom_margin', 'footer', '0', 0),
(1, 'footer_top_margin', 'footer', '0', 0),
(1, 'fullwidth_footer', 'footer', 'boxed-footer', 0),
(1, 'responsive_design', 'general', '1', 0),
(1, 'body_font', 'general', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Lato","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}},"font_subset":["latin"]}}', 1),
(1, 'cart_content_image_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":"3"}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(244, 244, 244)"}}}}', 1),
(1, 'cart_heading_icon_border', 'header', '{"value":{"border_rounded":"px"}}', 1),
(1, 'cart_content_shadow', 'header', '0 2px 5px rgba(0, 0, 0, 0.10)', 0),
(1, 'cart_heading_font', 'header', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'cart_heading_content_border', 'header', '{"value":{"border_rounded":"px"}}', 1),
(1, 'cart_heading_border', 'header', '{"value":{"border_rounded":"px"}}', 1),
(1, 'cart_content_divider_type', 'header', 'solid', 0),
(1, 'top_menu_icon_display', 'header', 'inline', 0),
(1, 'cart_icon_divider_type', 'header', 'solid', 0),
(1, 'top_menu_shadow', 'header', '0 1px 4px -1px rgba(0, 0, 0, 0.7)', 0),
(1, 'sticky_header', 'header', '0', 0),
(1, 'header_type', 'header', 'default', 0),
(1, 'cs_title_border', 'modulecustomsections', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'cs_title_divider_type', 'modulecustomsections', 'solid', 0),
(1, 'slider_bullet_hover', 'moduleslider', '{"value":{"color":"rgb(255, 120, 80)"}}', 1),
(1, 'slider_bullet_color', 'moduleslider', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'slider_bullet_border', 'moduleslider', '{"value":{"border_rounded":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_type":"solid","border_radius_unit":"%","border_color":{"value":{"color":""}}}}', 1),
(1, 'slider_bullet_height', 'moduleslider', '{"value":{"text":"12"}}', 1),
(1, 'slider_bullet_width', 'moduleslider', '{"value":{"text":"12"}}', 1),
(1, 'slider_bullet_margin', 'moduleslider', '{"value":{"text":"8"}}', 1),
(1, 'slider_right_icon', 'moduleslider', '{"value":{"options":{"font_size":"35px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe094;","class":"circle-arrow-right2"}}}', 1),
(1, 'slider_bullet_border_hover', 'moduleslider', '{"value":{"color":""}}', 1),
(1, 'slider_left_icon', 'moduleslider', '{"value":{"options":{"font_size":"35px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe093;","class":"circle-arrow-left2"}}}', 1),
(1, 'slider_thumbs_active_overlay', 'moduleslider', '{"value":{"text":"0"}}', 1),
(1, 'slider_thumbs_border', 'moduleslider', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":"5"}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(1, 'slider_timer_size', 'moduleslider', '{"value":{"text":"3"}}', 1),
(1, 'slider_thumbs_overlay', 'moduleslider', '{"value":{"text":".4"}}', 1),
(1, 'filter_show_box', 'modulesuperfilter', '1', 0),
(1, 'filter_border', 'modulesuperfilter', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":"2"}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(228, 228, 228)"}}}}', 1),
(1, 'filter_reset_display', 'modulesuperfilter', 'icon', 0),
(1, 'filter_loading_text', 'modulesuperfilter', '{"value":{"1":"Loading...","2":""}}', 1),
(1, 'filter_reset_text', 'modulesuperfilter', '{"value":{"1":"Reset Filters","2":""}}', 1),
(1, 'reset_icon', 'modulesuperfilter', '{"value":{"options":{"font_size":"20px"},"icon_type":"icon","icon":{"icon":"&#xe025;","class":"refresh"}}}', 1),
(1, 'filter_price_bar', 'modulesuperfilter', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'filter_price_color', 'modulesuperfilter', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'filter_price_tip', 'modulesuperfilter', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'filter_price_button_hover', 'modulesuperfilter', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'filter_price_button', 'modulesuperfilter', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'filter_active_border', 'modulesuperfilter', '{"value":{"color":"rgb(169, 184, 192)"}}', 1),
(1, 'filter_active_text', 'modulesuperfilter', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(1, 'reset_color', 'modulesuperfilter', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'reset_hover', 'modulesuperfilter', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(1, 'reset_tip_text', 'modulesuperfilter', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(1, 'reset_tip_bg', 'modulesuperfilter', '{"value":{"color":"rgb(63, 87, 101)"}}', 1),
(1, 'filter_item_divider', 'modulesuperfilter', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(1, 'filter_price_button_radius', 'modulesuperfilter', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'filter_price_button_height', 'modulesuperfilter', '{"value":{"text":"16"}}', 1),
(1, 'filter_price_padding_bottom', 'modulesuperfilter', '{"value":{"text":"40"}}', 1),
(1, 'filter_section_padding_left', 'modulesuperfilter', '{"value":{"text":"10"}}', 1),
(1, 'filter_heading_bg', 'modulesuperfilter', '{"value":{"color":""}}', 1),
(1, 'filter_price_tip_radius', 'modulesuperfilter', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'filter_section_padding_top', 'modulesuperfilter', '{"value":{"text":"5"}}', 1),
(1, 'filter_price_bar_height', 'modulesuperfilter', '{"value":{"text":"3"}}', 1),
(1, 'filter_heading_border', 'modulesuperfilter', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'filter_image_section_margin_bottom', 'modulesuperfilter', '{"value":{"text":"10"}}', 1),
(1, 'filter_section_padding_bottom', 'modulesuperfilter', '{"value":{"text":"5"}}', 1),
(1, 'filter_font', 'modulesuperfilter', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(1, 'filter_image_section_margin_right', 'modulesuperfilter', '{"value":{"text":"10"}}', 1),
(1, 'filter_section_border', 'modulesuperfilter', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'filter_heading_height', 'modulesuperfilter', '{"value":{"text":""}}', 1),
(1, 'filter_image_section_padding_left', 'modulesuperfilter', '{"value":{"text":"10"}}', 1),
(1, 'filter_image_section_padding_top', 'modulesuperfilter', '{"value":{"text":"10"}}', 1),
(1, 'filter_price_bar_offset', 'modulesuperfilter', '{"value":{"text":"-7"}}', 1),
(1, 'filter_image_section_padding_right', 'modulesuperfilter', '{"value":{"text":"10"}}', 1),
(1, 'filter_price_padding_left', 'modulesuperfilter', '{"value":{"text":"25"}}', 1),
(1, 'filter_image_section_padding_bottom', 'modulesuperfilter', '{"value":{"text":"10"}}', 1),
(1, 'filter_item_divider_type', 'modulesuperfilter', 'solid', 0);
INSERT INTO `journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(1, 'filter_price_bar_static_color', 'modulesuperfilter', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(1, 'filter_price_padding_right', 'modulesuperfilter', '{"value":{"text":"25"}}', 1),
(1, 'filter_heading_font', 'modulesuperfilter', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(1, 'filter_height', 'modulesuperfilter', '{"value":{"text":"265"}}', 1),
(1, 'filter_price_button_width', 'modulesuperfilter', '{"value":{"text":"16"}}', 1),
(1, 'filter_price_padding_top', 'modulesuperfilter', '{"value":{"text":"20"}}', 1),
(1, 'filter_section_bg', 'modulesuperfilter', '{"value":{"color":""}}', 1),
(1, 'filter_price_tooltip_radius', 'modulesuperfilter', '{"value":{"border_rounded":"px"}}', 1),
(1, 'filter_brands_text', 'modulesuperfilter', '{"value":[null,"Shop by Brand"]}', 1),
(1, 'filter_price_text', 'modulesuperfilter', '{"value":[null,"Shop by Price"]}', 1),
(1, 'filter_categories_text', 'modulesuperfilter', '{"value":[null,"Refine Categories"]}', 1),
(1, 'filter_tags_text', 'modulesuperfilter', '{"value":[null,"Filter by Tag"]}', 1),
(1, 'filter_image_size', 'modulesuperfilter', '20', 0),
(1, 'filter_cat_image_size', 'modulesuperfilter', '25', 0),
(1, 'filter_brand_image_size', 'modulesuperfilter', '25', 0),
(1, 'filter_availability_text', 'modulesuperfilter', '{"value":[]}', 1),
(1, 'filter_availability_yes_text', 'modulesuperfilter', '{"value":[]}', 1),
(1, 'filter_availability_no_text', 'modulesuperfilter', '{"value":[]}', 1),
(1, 'boxed_header', 'header', '0', 0),
(1, 'label_latest_limit', 'productlabels', '{"value":{"text":"10"}}', 1),
(1, 'label_latest_text', 'productlabels', '{"value":{"1":"New","2":""}}', 1),
(1, 'label_latest_status', 'productlabels', 'always', 0),
(1, 'product_grid_outofstock_label_status', 'productgrid', 'block', 0),
(1, 'product_grid_special_label_status', 'productgrid', 'block', 0),
(1, 'product_grid_latest_label_status', 'productgrid', 'block', 0),
(1, 'product_grid_image_overlay_opacity', 'productgrid', '{"value":{"text":""}}', 1),
(1, 'product_grid_image_border', 'productgrid', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(1, 'product_grid_second_image', 'productgrid', '1', 0),
(1, 'product_grid_item_padding', 'productgrid', '{"value":""}', 1),
(1, 'product_grid_item_border', 'productgrid', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(1, 'product_grid_shadow', 'productgrid', 'never', 0),
(1, 'product_grid_button_bottom_margin', 'productgrid', '{"value":{"text":""}}', 1),
(1, 'product_grid_details_bg_hover', 'productgrid', '{"value":{"color":""}}', 1),
(1, 'product_grid_show_ratings', 'productgrid', 'block', 0),
(1, 'product_grid_description', 'productgrid', 'none', 0),
(4, 'breadcrumb_status', 'general', 'block', 0),
(4, 'main_title_padding_left', 'general', '{"value":{"text":""}}', 1),
(4, 'extended_layout_bg_color', 'general', '{"value":{"color":""}}', 1),
(4, 'breadcrumb_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":{"text":""}},"border_radius_bottom":{"value":{"text":""}}}}', 1),
(4, 'general_button_border_hover', 'general', '{"value":{"color":""}}', 1),
(4, 'scroll_top_icon_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'ajax_loader', 'general', '{"value":{"image":"data\\/journal2\\/loader.gif"}}', 1),
(4, 'breadcrumb_bg_color', 'general', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'breadcrumb_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'general_button_bg_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'general_button_bg', 'general', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(4, 'general_button_font_hover', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'secondary_title_bg', 'general', '{"value":{"color":""}}', 1),
(4, 'main_title_bg', 'general', '{"value":{"color":""}}', 1),
(4, 'general_links_color', 'general', '{"value":{"color":"rgb(69, 115, 143)"}}', 1),
(4, 'general_links_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'body_bg_color', 'general', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'site_width', 'general', '{"value":"1220","range":"1024,1920","step":"2"}', 1),
(4, 'content_bg_color', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'content_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}}', 1),
(4, 'extended_layout_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(4, 'body_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"no-repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(4, 'general_button_width', 'general', '{"value":{"text":"12"}}', 1),
(4, 'general_button_font', 'general', '{"value":{"font_type":"none","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(4, 'general_button_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":{"text":""}},"border_right":{"value":""},"border_bottom":{"value":{"text":""}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(4, 'general_button_height', 'general', '{"value":{"text":"30"}}', 1),
(4, 'breadcrumb_align', 'general', 'center', 0),
(4, 'breadcrumb_font', 'general', '{"value":{"font_type":"system","font_size":"12px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":""}},"font_subset":["latin"]}}', 1),
(4, 'scroll_top_icon', 'general', '{"value":{"options":{"font_size":"45px","color":{"value":{"color":"rgb(63, 87, 101)"}}},"icon_type":"icon","icon":{"icon":"&#xe021;","class":"upload"}}}', 1),
(4, 'scroll_top', 'general', '1', 0),
(4, 'secondary_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(233, 232, 211)"}}}}', 1),
(4, 'secondary_title_font', 'general', '{"value":{"font_type":"google","font_size":"16px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(68, 67, 73)"}}}}', 1),
(4, 'general_button_active_shadow', 'general', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(4, 'secondary_title_padding_lr', 'general', '{"value":{"text":""}}', 1),
(4, 'secondary_title_padding_tb', 'general', '{"value":{"text":"8"}}', 1),
(4, 'main_title_line_height', 'general', '{"value":{"text":"40"}}', 1),
(4, 'main_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(228, 228, 228)"}}}}', 1),
(4, 'main_title_align', 'general', 'left', 0),
(4, 'secondary_title_align', 'general', 'left', 0),
(4, 'main_title_font', 'general', '{"value":{"font_type":"google","font_size":"18px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"700","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":""}}}}', 1),
(4, 'container_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":{"text":""}},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'extended_layout_side_spacing', 'general', 'on', 0),
(4, 'extended_layout', 'general', '0', 0),
(4, 'extended_layout_top_spacing', 'general', 'on', 0),
(4, 'responsive_design', 'general', '1', 0),
(4, 'body_font', 'general', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"PT Sans","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}},"font_subset":["latin"]}}', 1),
(5, 'general_button_bg_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(5, 'breadcrumb_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(5, 'breadcrumb_bg_color', 'general', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(5, 'general_button_bg', 'general', '{"value":{"color":"rgb(42, 43, 46)"}}', 1),
(5, 'general_button_font_hover', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(5, 'content_bg_color', 'general', '{"value":{"color":""}}', 1),
(5, 'general_links_color', 'general', '{"value":{"color":"rgb(69, 115, 143)"}}', 1),
(5, 'general_links_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(5, 'main_title_bg', 'general', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(5, 'secondary_title_bg', 'general', '{"value":{"color":""}}', 1),
(5, 'body_bg_color', 'general', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(5, 'extended_layout_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(5, 'site_width', 'general', '{"value":"1220","range":"1024,1920","step":"2"}', 1),
(5, 'body_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":"data\\/journal2\\/pattern\\/pat2.jpg"}}}}', 1),
(5, 'content_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}}', 1),
(5, 'scroll_top_icon', 'general', '{"value":{"options":{"font_size":"45px","color":{"value":{"color":"rgb(63, 87, 101)"}}},"icon_type":"icon","icon":{"icon":"&#xe021;","class":"upload"}}}', 1),
(5, 'scroll_top', 'general', '1', 0),
(5, 'general_button_width', 'general', '{"value":{"text":"14"}}', 1),
(5, 'general_button_height', 'general', '{"value":{"text":"32"}}', 1),
(5, 'breadcrumb_align', 'general', 'left', 0),
(5, 'breadcrumb_font', 'general', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Roboto","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":""}},"font_subset":["latin"]}}', 1),
(5, 'general_button_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"30"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(5, 'secondary_title_padding_tb', 'general', '{"value":{"text":"8"}}', 1),
(5, 'secondary_title_padding_lr', 'general', '{"value":{"text":""}}', 1),
(5, 'general_button_active_shadow', 'general', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(5, 'general_button_font', 'general', '{"value":{"font_type":"google","font_size":"11px","font_family":"Helvetica, Arial, sans-serif","font_name":"Ubuntu","font_weight":"700","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}},"letter_spacing":""}}', 1),
(5, 'secondary_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(244, 244, 244)"}}}}', 1),
(5, 'secondary_title_font', 'general', '{"value":{"font_type":"google","font_size":"16px","font_family":"Helvetica, Arial, sans-serif","font_name":"Ubuntu","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(42, 43, 46)"}}}}', 1),
(5, 'main_title_line_height', 'general', '{"value":{"text":"40"}}', 1),
(5, 'main_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":""}},"border_left":{"value":""},"border_radius":{"value":{"text":"2"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(5, 'main_title_font', 'general', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Ubuntu","font_weight":"700","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(0, 0, 0)"}},"letter_spacing":""}}', 1),
(5, 'secondary_title_align', 'general', 'left', 0),
(5, 'main_title_align', 'general', 'left', 0),
(5, 'responsive_design', 'general', '1', 0),
(5, 'extended_layout', 'general', '1', 0),
(5, 'extended_layout_top_spacing', 'general', 'on', 0),
(5, 'extended_layout_side_spacing', 'general', 'on', 0),
(5, 'container_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":{"text":""}},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(5, 'body_font', 'general', '{"value":{"font_type":"google","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Ubuntu","font_weight":"regular","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}},"font_subset":["latin"]}}', 1),
(5, 'ajax_loader', 'general', '{"value":{"image":"data\\/journal2\\/loader.gif"}}', 1),
(5, 'scroll_top_icon_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(5, 'general_button_border_hover', 'general', '{"value":{"color":""}}', 1),
(5, 'main_title_padding_left', 'general', '{"value":{"text":"15"}}', 1),
(5, 'extended_layout_bg_color', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(5, 'breadcrumb_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":{"text":""}},"border_radius_bottom":{"value":{"text":""}}}}', 1),
(5, 'breadcrumb_padding', 'general', '{"value":{"text":"0"}}', 1),
(5, 'breadcrumb_full_bg_color', 'general', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(5, 'breadcrumb_status', 'general', 'block', 0),
(6, 'body_font', 'general', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Arvo","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}},"font_subset":["latin"]}}', 1),
(6, 'responsive_design', 'general', '1', 0),
(6, 'extended_layout', 'general', '0', 0),
(6, 'extended_layout_top_spacing', 'general', 'on', 0),
(6, 'extended_layout_side_spacing', 'general', 'on', 0),
(6, 'container_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":{"text":""}},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(6, 'main_title_align', 'general', 'left', 0),
(6, 'secondary_title_align', 'general', 'left', 0),
(6, 'main_title_font', 'general', '{"value":{"font_type":"google","font_size":"17px","font_family":"Helvetica, Arial, sans-serif","font_name":"Arvo","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(250, 250, 250)"}},"letter_spacing":""}}', 1),
(6, 'main_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(6, 'main_title_line_height', 'general', '{"value":{"text":"40"}}', 1),
(6, 'secondary_title_font', 'general', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"bold","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(6, 'secondary_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(6, 'secondary_title_padding_tb', 'general', '{"value":{"text":"8"}}', 1),
(6, 'secondary_title_padding_lr', 'general', '{"value":{"text":"10"}}', 1),
(6, 'general_button_active_shadow', 'general', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(6, 'general_button_font', 'general', '{"value":{"font_type":"google","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Arvo","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(6, 'general_button_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(6, 'general_button_width', 'general', '{"value":{"text":"10"}}', 1),
(6, 'general_button_height', 'general', '{"value":{"text":"30"}}', 1),
(6, 'breadcrumb_align', 'general', 'left', 0),
(6, 'breadcrumb_font', 'general', '{"value":{"font_type":"system","font_size":"12px","font_family":"Helvetica, Arial, sans-serif","font_name":"Arvo","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}},"font_subset":["latin"]}}', 1),
(6, 'scroll_top', 'general', '1', 0),
(6, 'scroll_top_icon', 'general', '{"value":{"options":{"font_size":"45px","color":{"value":{"color":"rgb(63, 87, 101)"}}},"icon_type":"icon","icon":{"icon":"&#xe021;","class":"upload"}}}', 1),
(6, 'body_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(6, 'content_bg_image', 'general', '{"value":{"bgimage_attach":"scroll"}}', 1),
(6, 'extended_layout_bg_image', 'general', '{"value":{"bgimage_attach":"scroll"}}', 1),
(6, 'site_width', 'general', '{"value":"1024","range":"1024,1920","step":"2"}', 1),
(6, 'body_bg_color', 'general', '{"value":{"color":"rgb(95, 104, 116)"}}', 1),
(6, 'content_bg_color', 'general', '{"value":{"color":"rgba(238, 241, 234, 0.93)"}}', 1),
(6, 'general_links_color', 'general', '{"value":{"color":"rgb(105, 185, 207)"}}', 1),
(6, 'general_links_hover', 'general', '{"value":{"color":"rgb(241, 98, 114)"}}', 1),
(6, 'main_title_bg', 'general', '{"value":{"color":"rgb(241, 98, 114)"}}', 1),
(6, 'secondary_title_bg', 'general', '{"value":{"color":"rgb(105, 185, 207)"}}', 1),
(6, 'general_button_font_hover', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(6, 'general_button_bg', 'general', '{"value":{"color":"rgb(241, 98, 114)"}}', 1),
(6, 'general_button_bg_hover', 'general', '{"value":{"color":"rgb(105, 185, 207)"}}', 1),
(6, 'breadcrumb_hover', 'general', '{"value":{"color":"rgb(241, 98, 114)"}}', 1),
(6, 'breadcrumb_bg_color', 'general', '{"value":{"color":"rgb(52, 73, 94)"}}', 1),
(6, 'ajax_loader', 'general', '{"value":{"image":"data\\/journal2\\/loader.gif"}}', 1),
(6, 'scroll_top_icon_hover', 'general', '{"value":{"color":"rgb(241, 98, 114)"}}', 1),
(6, 'general_button_border_hover', 'general', '{"value":{"color":""}}', 1),
(6, 'breadcrumb_border', 'general', '{"value":{"border_rounded":"px"}}', 1),
(6, 'main_title_padding_left', 'general', '{"value":{"text":"10"}}', 1),
(6, 'main_title_padding_right', 'general', '{"value":{"text":""}}', 1),
(6, 'breadcrumb_status', 'general', 'block', 0),
(4, 'autosuggest_limit', 'header', '{"value":{"text":"5"}}', 1),
(4, 'autosuggest_product_image', 'header', 'block', 0),
(4, 'autosuggest_view_more_text', 'header', '{"value":{"1":"View More"}}', 1),
(4, 'mega_header_align', 'header', 'left', 0),
(4, 'drop_lang_divider_type', 'header', 'solid', 0),
(4, 'top_bar_divider_type', 'header', 'solid', 0),
(4, 'center_top_menu_border', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'header_height', 'header', 'normal', 0),
(4, 'lang_shadow', 'header', 'none', 0),
(4, 'cart_button_bg_color', 'header', '{"value":{"color":"rgb(176, 158, 102)"}}', 1),
(4, 'cart_button_bg_hover_color', 'header', '{"value":{"color":"rgb(169, 184, 192)"}}', 1),
(4, 'cart_button_color_hover', 'header', '{"value":{"color":""}}', 1),
(4, 'cart_button_color', 'header', '{"value":{"color":""}}', 1),
(4, 'header_bg_image', 'header', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(4, 'search_bg_center', 'header', '{"value":{"color":""}}', 1),
(4, 'search_bg_hover', 'header', '{"value":{"color":""}}', 1),
(4, 'search_bg_mobile', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'cart_heading_bg_mobile', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'cart_heading_bg_hover', 'header', '{"value":{"color":""}}', 1),
(4, 'cart_heading_bg_center', 'header', '{"value":{"color":""}}', 1),
(4, 'boxed_bottom_spacing', 'header', '{"value":{"text":""}}', 1),
(4, 'boxed_top_spacing', 'header', '{"value":{"text":""}}', 1),
(4, 'header_shadow', 'header', '0 0px 10px 1px rgba(0, 0, 0, 0.05)', 0),
(4, 'cart_header_shadow', 'header', 'none', 0),
(4, 'search_placeholder_text', 'header', '{"value":{"1":"Search our entire store...","2":""}}', 1),
(4, 'lang_drop_color_hover', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'lang_drop_bg_hover', 'header', '{"value":{"color":"rgb(212, 211, 178)"}}', 1),
(4, 'curr_color', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'curr_bg', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'lang_divider', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'lang_drop_bg', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'autosuggest_bg', 'header', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(4, 'autosuggest_hover', 'header', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(4, 'lang_drop_color', 'header', '{"value":{"color":""}}', 1),
(4, 'search_button_bg_hover', 'header', '{"value":{"color":""}}', 1),
(4, 'search_divider', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'autosuggest_divider', 'header', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(4, 'cart_content_bg', 'header', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(4, 'cart_content_delete_icon_color', 'header', '{"value":{"color":"rgb(176, 158, 102)"}}', 1),
(4, 'cart_content_delete_icon_hover', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'cart_content_divider_color', 'header', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(4, 'cart_total_bg', 'header', '{"value":{"color":"rgb(233, 232, 211)"}}', 1),
(4, 'search_placeholder_color', 'header', '{"value":{"color":"rgb(51, 55, 69)"}}', 1),
(4, 'autosuggest_divider_type', 'header', 'solid', 0),
(4, 'search_bg', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'search_icon_hover', 'header', '{"value":{"color":""}}', 1),
(4, 'search_button_bg', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'cart_icon_divider', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'logo_bg_color', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'cart_heading_bg', 'header', '{"value":{"color":"rgb(234, 35, 73)"}}', 1),
(4, 'cart_heading_icon_bg', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'top_bar_bg_color', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(4, 'header_bg_color', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(4, 'cart_heading_icon', 'header', '{"value":{"options":{"font_size":"22px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"","left":"1"},"icon_type":"icon","icon":{"icon":"&#xe69a;","class":"myFont3"}}}', 1),
(4, 'search_icon', 'header', '{"value":{"options":{"font_size":"20px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"-1","left":"-1"},"icon_type":"icon","icon":{"icon":"&#xe697;","class":"search"}}}', 1),
(4, 'curr_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"15"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'autosuggest_height', 'header', '{"value":{"text":"402"}}', 1),
(4, 'lang_divider_type', 'header', 'solid', 0),
(4, 'drop_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'autosuggest_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'autosuggest_image_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'autosuggest_price_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(4, 'search_autocomplete', 'header', '1', 0),
(4, 'autosuggest_shadow', 'header', 'none', 0),
(4, 'autosuggest_name_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(244, 244, 244)"}}}}', 1),
(4, 'search_button_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'search_font', 'header', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"normal","font_style":"normal","text_transform":"none","font_subset":["latin"]}}', 1),
(4, 'search_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'cart_content_height', 'header', '{"value":{"text":"352"}}', 1),
(4, 'cart_total_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(52, 73, 94)"}}}}', 1),
(4, 'search_divider_type', 'header', 'solid', 0),
(4, 'cart_content_image_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(4, 'cart_content_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(4, 'cart_heading_icon_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'cart_heading_content_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'cart_heading_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'cart_heading_font', 'header', '{"value":{"font_type":"system","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":""}},"font_subset":["latin"]}}', 1),
(4, 'cart_content_shadow', 'header', 'none', 0),
(4, 'cart_content_divider_type', 'header', 'solid', 0),
(4, 'cart_icon_divider_type', 'header', 'solid', 0),
(4, 'top_menu_icon_display', 'header', 'inline', 0),
(4, 'top_menu_shadow', 'header', 'none', 0),
(4, 'sticky_header', 'header', '1', 0),
(4, 'header_type', 'header', 'center', 0),
(4, 'boxed_header', 'header', '0', 0),
(4, 'search_autocomplete_include_description', 'header', '1', 0),
(4, 'autosuggest_product_image_type', 'header', 'fit', 0),
(4, 'autosuggest_price_status', 'header', 'block', 0),
(4, 'mobile_menu_on', 'headermenus', 'phone', 0),
(4, 'mixed_cms_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(56, 56, 56)"}}}}', 1),
(4, 'view_more_font', 'headermenus', '{"value":{"font_type":"system","font_size":"11px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(4, 'mixed_cms_padding_left', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'mixed_cms_padding_right', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'mixed_cms_padding_bottom', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'mixed_cms_block_bg', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'mixed_cms_heading_padding', 'headermenus', '{"value":{"text":"5"}}', 1),
(4, 'mixed_cms_title_padding_bottom', 'headermenus', '{"value":{"text":"5"}}', 1),
(4, 'mixed_cms_margin_bottom', 'headermenus', '{"value":{"text":"10"}}', 1),
(4, 'mixed_cms_title_font', 'headermenus', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(0, 0, 0)"}}}}', 1),
(4, 'mixed_cms_padding_top', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'mixed_cms_title_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(205, 204, 182)"}}}}', 1),
(4, 'menu_product_grid_item_border', 'headermenus', '{"value":{"border_rounded":"px"}}', 1),
(4, 'view_more_text', 'headermenus', '{"value":[null,"View More"]}', 1),
(4, 'menu_html_padding_bottom', 'headermenus', '{"value":{"text":"8"}}', 1),
(4, 'menu_html_padding_right', 'headermenus', '{"value":{"text":"8"}}', 1),
(4, 'menu_html_padding_top', 'headermenus', '{"value":{"text":"5"}}', 1),
(4, 'menu_product_grid_price_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(56, 56, 56)"}}}}', 1),
(4, 'menu_categories_link_bottom_margin', 'headermenus', '{"value":{"text":"3"}}', 1),
(4, 'dropdown_shadow', 'headermenus', 'none', 0),
(4, 'menu_html_padding_left', 'headermenus', '{"value":{"text":"10"}}', 1),
(4, 'mega_menu_shadow', 'headermenus', 'none', 0),
(4, 'menu_divider_hover', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'menu_product_grid_name_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(4, 'menu_categories_link_padding', 'headermenus', '{"value":{"text":"0"}}', 1),
(4, 'menu_html_title_padding_top', 'headermenus', '{"value":{"text":"5"}}', 1),
(4, 'menu_html_title_padding_left', 'headermenus', '{"value":{"text":"10"}}', 1),
(4, 'menu_html_title_padding_bottom', 'headermenus', '{"value":{"text":"5"}}', 1),
(4, 'menu_categories_item_margin', 'headermenus', '{"value":{"text":"15"}}', 1),
(4, 'mega_menu_padding', 'headermenus', '{"value":{"text":"15"}}', 1),
(4, 'main_menu_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":{"text":""}},"border_right":{"value":{"text":""}},"border_bottom":{"value":""},"border_left":{"value":{"text":""}},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(4, 'menu_product_grid_price_border', 'headermenus', '{"value":{"border_rounded":"px"}}', 1),
(4, 'menu_categories_title_padding_left', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'menu_product_grid_button_border', 'headermenus', '{"value":{"border_rounded":"px"}}', 1),
(4, 'menu_categories_title_padding_bottom', 'headermenus', '{"value":{"text":"5"}}', 1),
(4, 'menu_categories_title_padding_right', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'menu_brands_title_bg', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'dropdown_font_hover', 'headermenus', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(4, 'dropdown_bg', 'headermenus', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(4, 'dropdown_bg_hover', 'headermenus', '{"value":{"color":"rgb(233, 232, 211)"}}', 1),
(4, 'secondary_menu_bg_color', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'dropdown_icon_hover', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'dropdown_divider', 'headermenus', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(4, 'menu_categories_link_font_hover', 'headermenus', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'menu_categories_title_padding_top', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'main_menu_mobile_bg_color', 'headermenus', '{"value":{"color":"rgb(42, 43, 46)"}}', 1),
(4, 'menu_categories_title_border_hover', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'menu_html_title_bg', 'headermenus', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'menu_html_bg', 'headermenus', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'menu_brands_bg', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'menu_brands_title_font_hover', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'menu_bg_hover', 'headermenus', '{"value":{"color":"rgb(244, 243, 223)"}}', 1),
(4, 'menu_divider', 'headermenus', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(4, 'mega_menu_bg', 'headermenus', '{"value":{"color":"rgb(244, 243, 223)"}}', 1),
(4, 'secondary_menu_link_hover_color', 'headermenus', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'menu_categories_bg', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'menu_categories_title_font_hover', 'headermenus', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'menu_categories_title_bg', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'menu_categories_title_bg_hover', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'top_menu_border_color', 'headermenus', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(4, 'top_menu_link_hover_color', 'headermenus', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(4, 'main_menu_bg_color', 'headermenus', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'main_menu_bg_full_color', 'headermenus', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'menu_font_hover', 'headermenus', '{"value":{"color":""}}', 1),
(4, 'mobile_plus_bg', 'headermenus', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(4, 'mobile_plus_color', 'headermenus', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(4, 'top_menu_link_hover_bg_color', 'headermenus', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(4, 'top_menu_bg_color', 'headermenus', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(4, 'menu_categories_link_icon', 'headermenus', '{"value":{"options":{"font_size":"18px"},"icon_type":"none","icon":{"icon":"&#xe094;","class":"circle-arrow-right2"}}}', 1),
(4, 'mobile_text_font', 'headermenus', '{"value":{"font_type":"google","font_size":"16px","font_family":"Helvetica, Arial, sans-serif","font_name":"Abril Fatface","font_weight":"regular","font_style":"normal","text_transform":"uppercase","color":{"value":{"color":"rgb(255, 255, 255)"}},"font_subset":["latin"]}}', 1),
(4, 'dropdown_icon', 'headermenus', '{"value":{"options":{"font_size":"10px","color":{"value":{"color":""}},"top":"-3"},"icon_type":"icon","icon":{"icon":"&#xe620;","class":"play4"}}}', 1),
(4, 'mobile_menu_text', 'headermenus', '{"value":{"1":"MENU","2":""}}', 1),
(4, 'mobile_menu_icon', 'headermenus', '{"value":{"options":{"font_size":"20px","top":"-1","color":{"value":{"color":"rgb(250, 250, 250)"}}},"icon_type":"icon","icon":{"icon":"&#xe618;","class":"reorder"}}}', 1),
(4, 'dropdown_link_icon', 'headermenus', '{"value":{"options":{"font_size":"10px"},"icon_type":"none","icon":{"icon":"&#xe60e;","class":"chevron-right"}}}', 1),
(4, 'mega_menu_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":{"text":""}},"border_bottom":{"value":{"text":""}},"border_left":{"value":{"text":""}},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(4, 'menu_html_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":{"text":""}},"border_radius_bottom":{"value":{"text":""}}}}', 1),
(4, 'menu_html_title_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":{"text":""}},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'menu_brands_image_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'menu_brands_title_border', 'headermenus', '{"value":{"border_rounded":"px"}}', 1),
(4, 'menu_brands_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'menu_categories_image_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(4, 'menu_categories_title_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(205, 204, 182)"}}}}', 1),
(4, 'menu_divider_type', 'headermenus', 'solid', 0),
(4, 'dropdown_divider_type', 'headermenus', 'solid', 0),
(4, 'menu_categories_title_align', 'headermenus', 'left', 0),
(4, 'menu_brands_title_align', 'headermenus', 'left', 0),
(4, 'menu_html_title_align', 'headermenus', 'left', 0),
(4, 'menu_categories_padding', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'menu_brands_padding', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'menu_line_height', 'headermenus', '{"value":{"text":""}}', 1),
(4, 'menu_categories_border', 'headermenus', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(4, 'menu_html_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}}}}', 1),
(4, 'main_menu_font', 'headermenus', '{"value":{"font_type":"google","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"700","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(68, 67, 73)"}}}}', 1),
(4, 'menu_html_title_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"300","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":""}}}}', 1),
(4, 'menu_brands_title_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Oswald","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(4, 'menu_categories_title_font', 'headermenus', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Playfair Display","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(0, 0, 0)"}}}}', 1),
(4, 'menu_categories_link_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(0, 0, 0)"}}}}', 1),
(4, 'secondary_menu_text_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(68, 67, 73)"}}}}', 1),
(4, 'dropdown_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(4, 'secondary_menu_link_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(68, 67, 73)"}}}}', 1);
INSERT INTO `journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(4, 'top_menu_text_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(68, 67, 73)"}}}}', 1),
(4, 'top_menu_link_font', 'headermenus', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(68, 67, 73)"}}}}', 1),
(2, 'body_font', 'general', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Ubuntu","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(51, 55, 69)"}},"font_subset":["latin"]}}', 1),
(2, 'responsive_design', 'general', '1', 0),
(2, 'extended_layout', 'general', '1', 0),
(2, 'extended_layout_top_spacing', 'general', 'on', 0),
(2, 'extended_layout_side_spacing', 'general', 'on', 0),
(2, 'container_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":{"text":""}},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'main_title_align', 'general', 'left', 0),
(2, 'secondary_title_align', 'general', 'left', 0),
(2, 'main_title_font', 'general', '{"value":{"font_type":"google","font_size":"22px","font_family":"Helvetica, Arial, sans-serif","font_name":"Droid Serif","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(42, 43, 46)"}},"letter_spacing":""}}', 1),
(2, 'main_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"dotted","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(204, 204, 204)"}}}}', 1),
(2, 'main_title_line_height', 'general', '{"value":{"text":"40"}}', 1),
(2, 'secondary_title_font', 'general', '{"value":{"font_type":"google","font_size":"16px","font_family":"Helvetica, Arial, sans-serif","font_name":"Droid Serif","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(68, 67, 73)"}},"letter_spacing":""}}', 1),
(2, 'secondary_title_border', 'general', '{"value":{"border_rounded":"px","border_type":"dotted","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(204, 204, 204)"}}}}', 1),
(2, 'secondary_title_padding_tb', 'general', '{"value":{"text":"7"}}', 1),
(2, 'secondary_title_padding_lr', 'general', '{"value":{"text":""}}', 1),
(2, 'general_button_active_shadow', 'general', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(2, 'general_button_font', 'general', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Droid Serif","font_weight":"regular","font_style":"normal","text_transform":"uppercase","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}},"letter_spacing":""}}', 1),
(2, 'general_button_border', 'general', '{"value":{"border_rounded":"px","border_type":"dotted","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"2"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(2, 'general_button_width', 'general', '{"value":{"text":"15"}}', 1),
(2, 'general_button_height', 'general', '{"value":{"text":"35"}}', 1),
(2, 'breadcrumb_align', 'general', 'center', 0),
(2, 'breadcrumb_font', 'general', '{"value":{"font_type":"system","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"Roboto Condensed","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(68, 67, 73)"}},"font_subset":["latin"]}}', 1),
(2, 'scroll_top', 'general', '1', 0),
(2, 'scroll_top_icon', 'general', '{"value":{"options":{"font_size":"45px","color":{"value":{"color":"rgb(63, 87, 101)"}}},"icon_type":"icon","icon":{"icon":"&#xe021;","class":"upload"}}}', 1),
(2, 'body_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(2, 'content_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center"}}', 1),
(2, 'extended_layout_bg_image', 'general', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(2, 'site_width', 'general', '{"value":"1220","range":"1024,1920","step":"2"}', 1),
(2, 'body_bg_color', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(2, 'content_bg_color', 'general', '{"value":{"color":""}}', 1),
(2, 'general_links_color', 'general', '{"value":{"color":"rgb(66, 139, 202)"}}', 1),
(2, 'general_links_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'main_title_bg', 'general', '{"value":{"color":""}}', 1),
(2, 'secondary_title_bg', 'general', '{"value":{"color":""}}', 1),
(2, 'general_button_font_hover', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(2, 'general_button_bg', 'general', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(2, 'general_button_bg_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'breadcrumb_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'breadcrumb_bg_color', 'general', '{"value":{"color":""}}', 1),
(2, 'ajax_loader', 'general', '{"value":{"image":"data\\/journal2\\/loader.gif"}}', 1),
(2, 'scroll_top_icon_hover', 'general', '{"value":{"color":"rgb(241, 196, 15)"}}', 1),
(2, 'general_button_border_hover', 'general', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'main_title_padding_left', 'general', '{"value":{"text":""}}', 1),
(2, 'extended_layout_bg_color', 'general', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(2, 'breadcrumb_border', 'general', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":{"text":"3"}},"border_radius_bottom":{"value":{"text":"3"}}}}', 1),
(2, 'breadcrumb_line_height', 'general', '{"value":{"text":""}}', 1),
(2, 'leading_element', 'general', '{"value":{"image":""}}', 1),
(2, 'breadcrumb_full_bg_color', 'general', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'breadcrumb_status', 'general', 'block', 0),
(2, 'footer_border', 'footer', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'fullwidth_footer', 'footer', 'fullwidth-footer', 0),
(2, 'footer_top_margin', 'footer', '20', 0),
(2, 'footer_bottom_margin', 'footer', '0', 0),
(2, 'cart_icon_hover', 'header', '{"value":{"color":""}}', 1),
(2, 'autosuggest_price_status', 'header', 'block', 0),
(2, 'autosuggest_product_image_type', 'header', 'fit', 0),
(2, 'search_autocomplete_include_description', 'header', '1', 0),
(2, 'autosuggest_limit', 'header', '{"value":{"text":"5"}}', 1),
(2, 'autosuggest_view_more_text', 'header', '{"value":{"1":"View More"}}', 1),
(2, 'autosuggest_product_image', 'header', 'block', 0),
(2, 'center_top_menu_border', 'header', '{"value":{"color":""}}', 1),
(2, 'lang_shadow', 'header', '0 2px 2px rgba(0, 0, 0, 0.15)', 0),
(2, 'drop_lang_divider_type', 'header', 'solid', 0),
(2, 'top_bar_divider_type', 'header', 'solid', 0),
(2, 'mega_header_align', 'header', 'left', 0),
(2, 'header_height', 'header', 'medium', 0),
(2, 'cart_button_bg_color', 'header', '{"value":{"color":""}}', 1),
(2, 'cart_button_bg_hover_color', 'header', '{"value":{"color":""}}', 1),
(2, 'cart_button_color', 'header', '{"value":{"color":""}}', 1),
(2, 'cart_button_color_hover', 'header', '{"value":{"color":""}}', 1),
(2, 'header_bg_image', 'header', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(2, 'search_bg_center', 'header', '{"value":{"color":""}}', 1),
(2, 'search_bg_mobile', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(2, 'cart_heading_bg_mobile', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(2, 'search_bg_hover', 'header', '{"value":{"color":""}}', 1),
(2, 'cart_heading_bg_hover', 'header', '{"value":{"color":""}}', 1),
(2, 'cart_heading_bg_center', 'header', '{"value":{"color":""}}', 1),
(2, 'boxed_bottom_spacing', 'header', '{"value":{"text":""}}', 1),
(2, 'boxed_top_spacing', 'header', '{"value":{"text":""}}', 1),
(2, 'search_placeholder_text', 'header', '{"value":{"1":"Search entire store...","2":""}}', 1),
(2, 'cart_header_shadow', 'header', 'none', 0),
(2, 'header_shadow', 'header', '0 1px 4px -1px rgba(0, 0, 0, 0.7)', 0),
(2, 'curr_bg', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'lang_divider', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'curr_color', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(2, 'lang_drop_bg_hover', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'lang_drop_color_hover', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'lang_drop_color', 'header', '{"value":{"color":"rgb(0, 0, 0)"}}', 1),
(2, 'lang_drop_bg', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(2, 'autosuggest_hover', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'autosuggest_bg', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(2, 'autosuggest_divider', 'header', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(2, 'search_divider', 'header', '{"value":{"color":""}}', 1),
(2, 'search_button_bg_hover', 'header', '{"value":{"color":"rgb(105, 185, 207)"}}', 1),
(2, 'search_button_bg', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'search_icon_hover', 'header', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(2, 'search_bg', 'header', '{"value":{"color":"rgb(42, 43, 46)"}}', 1),
(2, 'autosuggest_divider_type', 'header', 'solid', 0),
(2, 'search_placeholder_color', 'header', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(2, 'cart_total_bg', 'header', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'cart_content_divider_color', 'header', '{"value":{"color":"rgb(228, 228, 228)"}}', 1),
(2, 'cart_icon_divider', 'header', '{"value":{"color":"rgba(244, 244, 244, 0)"}}', 1),
(2, 'cart_content_bg', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(2, 'cart_content_delete_icon_color', 'header', '{"value":{"color":"rgb(191, 195, 182)"}}', 1),
(2, 'cart_content_delete_icon_hover', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'cart_heading_icon_bg', 'header', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'cart_heading_icon', 'header', '{"value":{"options":{"font_size":"24px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"","left":"1"},"icon_type":"icon","icon":{"icon":"&#xe69a;","class":"myFont3"}}}', 1),
(2, 'cart_heading_bg', 'header', '{"value":{"color":"rgb(42, 43, 46)"}}', 1),
(2, 'header_bg_color', 'header', '{"value":{"color":"rgba(255, 255, 255, 0.99)"}}', 1),
(2, 'logo_bg_color', 'header', '{"value":{"color":"rgb(42, 43, 46)"}}', 1),
(2, 'top_bar_bg_color', 'header', '{"value":{"color":"rgb(250, 250, 250)"}}', 1),
(2, 'search_icon', 'header', '{"value":{"options":{"font_size":"22px","color":{"value":{"color":"rgb(255, 255, 255)"}},"top":"-1","left":"-1"},"icon_type":"icon","icon":{"icon":"&#xe697;","class":"search"}}}', 1),
(2, 'curr_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'autosuggest_height', 'header', '{"value":{"text":"395"}}', 1),
(2, 'lang_divider_type', 'header', 'solid', 0),
(2, 'drop_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'autosuggest_price_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(2, 'autosuggest_image_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'autosuggest_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"4"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'search_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":"1"}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'search_button_radius', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":{"text":""}},"border_radius_right":{"value":""},"border_radius_left":{"value":{"text":""}},"border_radius_bottom":{"value":""}}}', 1),
(2, 'search_autocomplete', 'header', '1', 0),
(2, 'autosuggest_shadow', 'header', '0 1px 8px -3px rgba(0,0,0,.5)', 0),
(2, 'autosuggest_name_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(2, 'cart_content_height', 'header', '{"value":{"text":"355"}}', 1),
(2, 'cart_total_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"bold","font_style":"normal","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(2, 'search_divider_type', 'header', 'solid', 0),
(2, 'search_font', 'header', '{"value":{"font_type":"system","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":"Droid Serif","font_weight":"normal","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":""}},"letter_spacing":""}}', 1),
(2, 'cart_content_image_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":""}}}}', 1),
(2, 'cart_content_font', 'header', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(0, 0, 0)"}}}}', 1),
(2, 'cart_heading_icon_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"%","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"50"}},"border_radius_top":{"value":""},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":""},"border_radius_bottom":{"value":{"text":""}}}}', 1),
(2, 'cart_heading_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":{"text":"1"}},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":{"text":""}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'cart_heading_content_border', 'header', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"4"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'cart_heading_font', 'header', '{"value":{"font_type":"system","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":"Droid Serif","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(68, 67, 73)"}},"font_subset":["latin"],"letter_spacing":""}}', 1),
(2, 'cart_content_divider_type', 'header', 'solid', 0),
(2, 'cart_content_shadow', 'header', '0 2px 5px rgba(0, 0, 0, 0.10)', 0),
(2, 'cart_icon_divider_type', 'header', 'solid', 0),
(2, 'top_menu_icon_display', 'header', 'inline', 0),
(2, 'top_menu_shadow', 'header', '0 1px 4px -1px rgba(0, 0, 0, 0.7)', 0),
(2, 'sticky_header', 'header', '1', 0),
(2, 'header_type', 'header', 'center', 0),
(2, 'boxed_header', 'header', '0', 0),
(2, 'footer_titles_divider_type', 'footer', 'dotted', 0),
(2, 'footer_titles_align', 'footer', 'left', 0),
(2, 'footer_links', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'footer_titles', 'footer', '{"value":{"font_type":"google","font_size":"15px","font_family":"Helvetica, Arial, sans-serif","font_name":"Droid Serif","font_weight":"regular","font_style":"normal","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}},"letter_spacing":""}}', 1),
(2, 'contacts_bar_shadow', 'footer', 'none', 0),
(2, 'contacts_display', 'footer', 'off', 0),
(2, 'contacts_bar_border', 'footer', '{"value":{"border_rounded":"px","border_type":"dotted","border_radius_unit":"px","border":{"value":{"text":""}},"border_top":{"value":{"text":"1"}},"border_right":{"value":""},"border_bottom":{"value":{"text":"1"}},"border_left":{"value":""},"border_radius":{"value":{"text":""}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""},"border_color":{"value":{"color":"rgb(80, 80, 80)"}}}}', 1),
(2, 'footer_tooltip_border', 'footer', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":{"text":"3"}},"border_radius_top":{"value":""},"border_radius_right":{"value":""},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'bottom_bar_shadow', 'footer', 'none', 0),
(2, 'boxed_bottom', 'footer', 'fullwidth-bar', 0),
(2, 'bottom_bar_border', 'footer', '{"value":{"border_rounded":"px","border_type":"solid","border_radius_unit":"px","border":{"value":""},"border_top":{"value":""},"border_right":{"value":""},"border_bottom":{"value":""},"border_left":{"value":""},"border_radius":{"value":""},"border_radius_top":{"value":{"text":""}},"border_radius_right":{"value":{"text":""}},"border_radius_left":{"value":""},"border_radius_bottom":{"value":""}}}', 1),
(2, 'footer_bg_color', 'footer', '{"value":{"color":"rgb(56, 56, 56)"}}', 1),
(2, 'footer_links_hover', 'footer', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'html_font_color', 'footer', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(2, 'footer_titles_divider', 'footer', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(2, 'contacts_bar_bg', 'footer', '{"value":{"color":""}}', 1),
(2, 'contacts_icon_bg', 'footer', '{"value":{"color":"rgb(68, 67, 73)"}}', 1),
(2, 'contacts_icon_bg_hover', 'footer', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'footer_tooltip_font', 'footer', '{"value":{"color":"rgb(255, 255, 255)"}}', 1),
(2, 'footer_tooltip_bg_color', 'footer', '{"value":{"color":"rgb(105, 185, 207)"}}', 1),
(2, 'bottom_bar_bg', 'footer', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'contacts_text_font_hover', 'footer', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'contacts_text_font', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'footer_bg_image', 'footer', '{"value":{"bgimage_attach":"scroll","bgimage_repeat":"repeat","bgimage_position":"center","bgimage":{"value":{"image":""}}}}', 1),
(2, 'copyright_font_settings', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":""}}}}', 1),
(2, 'footer_product_divider', 'footer', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(2, 'footer_product_old_price_font', 'footer', '{"value":{"font_type":"system","font_size":"12px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(168, 168, 168)"}}}}', 1),
(2, 'footer_product_name_font_hover', 'footer', '{"value":{"color":"rgb(221, 0, 23)"}}', 1),
(2, 'footer_product_price_font', 'footer', '{"value":{"font_type":"none","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'footer_product_name_font', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'footer_product_name_overflow', 'footer', 'normal', 0),
(2, 'footer_product_divider_type', 'footer', 'dotted', 0),
(2, 'footer_product_image_width', 'footer', '{"value":{"text":"30"}}', 1),
(2, 'footer_product_image_height', 'footer', '{"value":{"text":"30"}}', 1),
(2, 'footer_product_padding', 'footer', '{"value":{"text":"5"}}', 1),
(2, 'footer_html_p_padding', 'footer', '{"value":{"text":""}}', 1),
(2, 'footer_html_heading_padding', 'footer', '{"value":{"text":"2"}}', 1),
(2, 'footer_html_heading_font', 'footer', '{"value":{"font_type":"google","font_size":"14px","font_family":"Helvetica, Arial, sans-serif","font_name":"Droid Serif","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":["latin"],"color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'html_line_height', 'footer', '{"value":{"text":"15"}}', 1),
(2, 'footer_html_p_font', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none","color":{"value":{"color":"rgb(255, 255, 255)"}}}}', 1),
(2, 'footer_post_divider_type', 'footer', 'dotted', 0),
(2, 'footer_post_divider', 'footer', '{"value":{"color":"rgb(80, 80, 80)"}}', 1),
(2, 'footer_post_image_width', 'footer', '{"value":{"text":"30"}}', 1),
(2, 'footer_post_padding', 'footer', '{"value":{"text":"5"}}', 1),
(2, 'footer_post_image_height', 'footer', '{"value":{"text":"30"}}', 1),
(2, 'footer_post_price_date', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"","font_weight":"normal","font_style":"normal","letter_spacing":"","text_transform":"none"}}', 1),
(2, 'footer_post_date_icon_color', 'footer', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'footer_post_comment_icon_color', 'footer', '{"value":{"color":"rgb(244, 244, 244)"}}', 1),
(2, 'footer_post_name_font', 'footer', '{"value":{"font_type":"none","font_size":"13px","font_family":"Helvetica, Arial, sans-serif","font_name":"ABeeZee","font_weight":"regular","font_style":"normal","letter_spacing":"","text_transform":"none","font_subset":[],"color":{"value":{"color":""}}}}', 1),
(2, 'footer_post_name_overflow', 'footer', 'nowrap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `journal2_skins`
--

CREATE TABLE IF NOT EXISTS `journal2_skins` (
`skin_id` int(11) NOT NULL,
  `skin_name` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
`language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Vietnamese', 'vi', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', 'vn.png', 'vietnamese', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE IF NOT EXISTS `layout` (
`layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Journal Blog'),
(15, 'Journal Blog Post');

-- --------------------------------------------------------

--
-- Table structure for table `layout_module`
--

CREATE TABLE IF NOT EXISTS `layout_module` (
`layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout_module`
--

INSERT INTO `layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(74, 1, 'journal2_static_banners.90', 'top', -5),
(75, 1, 'journal2_static_banners.80', 'content_top', 2),
(76, 1, 'journal2_static_banners.139', 'top', -5),
(77, 1, 'journal2_static_banners.152', 'column_left', 0),
(78, 1, 'journal2_static_banners.162', 'top', 2),
(79, 1, 'journal2_static_banners.218', 'top', -5),
(196, 17, 'journal2_blog_posts.243', 'content_top', 0),
(251, 2, 'journal2_carousel.111', 'column_right', 1),
(250, 1, 'journal2_carousel.85', 'column_right', 11),
(249, 1, 'journal2_carousel.88', 'content_bottom', 10),
(84, 1, 'journal2_super_sections.63', 'content_top', 0),
(85, 15, 'journal2_blog_tags.231', 'column_right', 5),
(86, 16, 'journal2_blog_tags.231', 'column_right', 5),
(87, 2, 'journal2_simple_slider.112', 'column_right', 20),
(195, 17, 'journal2_blog_posts.242', 'content_top', 0),
(194, 17, 'journal2_blog_posts.241', 'content_top', 0),
(193, 1, 'journal2_blog_posts.235', 'bottom', 0),
(192, 17, 'journal2_blog_posts.240', 'content_top', 0),
(93, 15, 'journal2_blog_search.230', 'column_right', 0),
(94, 16, 'journal2_blog_search.230', 'column_right', 0),
(95, 15, 'journal2_blog_categories.228', 'column_right', 1),
(96, 16, 'journal2_blog_categories.228', 'column_right', 1),
(97, 1, 'journal2_photo_gallery.124', 'bottom', 0),
(98, 16, 'journal2_photo_gallery.124', 'column_right', 20),
(99, -1, 'journal2_fullscreen_slider.25', 'footer', 1),
(100, 1, 'journal2_fullscreen_slider.122', 'footer', 0),
(219, 2, 'journal2_side_category.9', 'column_left', 0),
(218, 1, 'journal2_side_category.9', 'column_left', 0),
(217, 2, 'journal2_side_category.114', 'column_left', 3),
(107, 1, 'journal2_side_blocks.196', 'footer', 2),
(108, 1, 'journal2_side_blocks.195', 'footer', 3),
(109, 1, 'journal2_side_blocks.247', 'footer', 1),
(110, 1, 'journal2_side_blocks.179', 'footer', 1),
(111, 1, 'journal2_side_blocks.248', 'footer', 0),
(112, 15, 'journal2_blog_comments.229', 'column_right', 4),
(113, 16, 'journal2_blog_comments.229', 'column_right', 4),
(227, 1, 'journal2_advanced_grid.197', 'top', -10),
(226, 1, 'journal2_advanced_grid.128', 'content_top', 5),
(116, 1, 'journal2_side_products.203', 'column_right', 1),
(117, 1, 'journal2_text_rotator.24', 'content_top', 5),
(118, 1, 'journal2_text_rotator.24', 'bottom', 0),
(119, 1, 'journal2_text_rotator.135', 'column_right', 20),
(248, 1, 'journal2_carousel.125', 'bottom', 5),
(224, 1, 'journal2_headline_rotator.33', 'top', -1),
(254, 15, 'journal2_cms_blocks.233', 'column_right', 22),
(253, 1, 'journal2_cms_blocks.233', 'column_right', 22),
(252, 8, 'journal2_cms_blocks.127', 'content_top', 0),
(127, 2, 'journal2_blog_side_posts.239', 'column_right', 2),
(128, 1, 'journal2_blog_side_posts.227', 'column_right', 1),
(129, 15, 'journal2_blog_side_posts.227', 'column_right', 3),
(130, 16, 'journal2_blog_side_posts.227', 'column_right', 3),
(161, 1, 'journal2_custom_sections.168', 'content_top', 0),
(140, 1, 'journal2_newsletter.251', 'bottom', 0),
(139, 1, 'product_filter', 'column_left', 1),
(200, 13, 'product_filter', 'column_left', 2),
(225, 1, 'journal2_super_filter.54', 'column_left', 0);

-- --------------------------------------------------------

--
-- Table structure for table `layout_route`
--

CREATE TABLE IF NOT EXISTS `layout_route` (
`layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout_route`
--

INSERT INTO `layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(56, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(59, 13, 0, 'product/search'),
(54, 14, 0, 'journal2/blog'),
(55, 15, 0, 'journal2/blog/post');

-- --------------------------------------------------------

--
-- Table structure for table `length_class`
--

CREATE TABLE IF NOT EXISTS `length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `length_class`
--

INSERT INTO `length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `length_class_description`
--

CREATE TABLE IF NOT EXISTS `length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `length_class_description`
--

INSERT INTO `length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(14, 'AHA TouchScreen', 'catalog/Brand/h1_logo.gif', 0),
(13, 'MaxClone', 'catalog/Brand/scan0003.jpg', 0),
(12, 'Smart View', 'catalog/Banner/3_94d43e327d9303539cb1e2aac7032668_s.jpg', 0),
(11, 'Vivitek', 'catalog/Brand/VivitekLogo-300x225.jpg', 0),
(15, 'ComWeb', 'catalog/Brand/banner-300x143.jpg', 0),
(16, 'JMC', 'catalog/Brand/jmc5000.jpg', 0),
(18, 'Triumph Board', '', 1),
(17, 'SHOW', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturer_to_store`
--

INSERT INTO `manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

CREATE TABLE IF NOT EXISTS `marketing` (
`marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modification`
--

CREATE TABLE IF NOT EXISTS `modification` (
`modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
`module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:4:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"42";i:3;s:2:"30";}s:5:"limit";s:1:"4";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(27, 'Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1140";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE IF NOT EXISTS `option` (
`option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11),
(13, 'textarea', 1);

-- --------------------------------------------------------

--
-- Table structure for table `option_description`
--

CREATE TABLE IF NOT EXISTS `option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option_description`
--

INSERT INTO `option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Khuyenmaithemhangtot'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(13, 1, 'FullSkill'),
(1, 2, 'Radio'),
(2, 2, 'Khuyenmaithemhangtot'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(13, 2, 'FullSkill');

-- --------------------------------------------------------

--
-- Table structure for table `option_value`
--

CREATE TABLE IF NOT EXISTS `option_value` (
`option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option_value`
--

INSERT INTO `option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(24, 2, '', 2),
(23, 2, '', 1),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `option_value_description`
--

CREATE TABLE IF NOT EXISTS `option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option_value_description`
--

INSERT INTO `option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(24, 1, 2, 'Checkbox 2'),
(23, 1, 2, 'Checkbox 1'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(24, 2, 2, 'Checkbox 2'),
(23, 2, 2, 'Checkbox 1'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_custom_field`
--

CREATE TABLE IF NOT EXISTS `order_custom_field` (
`order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_fraud`
--

CREATE TABLE IF NOT EXISTS `order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE IF NOT EXISTS `order_history` (
`order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_option`
--

CREATE TABLE IF NOT EXISTS `order_option` (
`order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE IF NOT EXISTS `order_product` (
`order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_recurring`
--

CREATE TABLE IF NOT EXISTS `order_recurring` (
`order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `order_recurring_transaction` (
`order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
`order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `order_total`
--

CREATE TABLE IF NOT EXISTS `order_total` (
`order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_voucher`
--

CREATE TABLE IF NOT EXISTS `order_voucher` (
`order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(74, 'MPA-60R', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-60R/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 92, '2014-12-16 23:17:56', '0000-00-00 00:00:00'),
(77, 'MPA-120S', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-120S/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 66, '2014-12-21 23:51:47', '0000-00-00 00:00:00'),
(53, 'D536-3D', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_front_l.jpg', 11, 1, '0.0000', 0, 0, '2014-12-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 37, '2014-12-09 00:17:26', '2014-12-30 23:53:27'),
(52, 'D853W', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Front_l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 29, '2014-12-09 00:02:06', '2014-12-30 23:54:28'),
(51, 'D859', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Front_l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 21, '2014-12-08 23:54:31', '2014-12-30 23:54:48'),
(50, 'D965', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D950, D965/D950HD_D963_front-l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-08', '3.50000000', 1, '332.80000000', '254.60000000', '113.00000000', 2, 0, 1, 1, 0, 34, '2014-12-08 22:23:54', '2014-12-30 23:55:05'),
(61, 'D556', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D556/medium_Vivitek_D556_Front.jpg', 11, 0, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 22, '2014-12-09 23:47:41', '2014-12-30 23:53:37'),
(60, 'D867', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D867/medium_Vivitek_H1180-85HD_Front.png', 11, 0, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, 30, '2014-12-09 23:35:22', '2014-12-30 23:54:57'),
(59, 'D967-BK', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D950, D965/D950HD_D963_front-l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 32, '2014-12-09 23:21:08', '2014-12-30 23:55:14'),
(58, 'D560ST', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_front_l.jpg', 0, 1, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 11, '2014-12-09 23:10:00', '2014-12-30 23:53:47'),
(57, 'D855ST', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Front_l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 28, '2014-12-09 23:02:40', '2014-12-30 23:54:38'),
(56, 'D751ST', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Front_l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 22, '2014-12-09 22:50:48', '2014-12-30 23:53:58'),
(55, 'D755WT', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Front_l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 26, '2014-12-09 22:40:34', '2014-12-30 23:56:46'),
(54, 'D755WTi', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Front_l.jpg', 11, 0, '0.0000', 0, 0, '2014-12-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, 23, '2014-12-09 00:27:50', '2014-12-30 23:54:18'),
(62, 'SVP - 2000X', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Smart View/Visualizer/Visualizer-SVP-2000X.png', 12, 0, '0.0000', 0, 0, '2014-12-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 81, '2014-12-10 00:29:17', '2014-12-10 00:34:49'),
(75, 'MPA-60 ECHO', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-60 ECHO/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 91, '2014-12-16 23:27:02', '0000-00-00 00:00:00'),
(76, 'MPA-120', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-120/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 69, '2014-12-21 23:42:28', '0000-00-00 00:00:00'),
(65, 'SMX-4200MP', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/SPM4102 COMBO/SHOW.png', 17, 0, '0.0000', 0, 0, '2014-12-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 88, '2014-12-14 11:12:21', '2014-12-16 22:56:24'),
(66, 'SMX-6250MP', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/SPM6122 COMBO/Untitled.png', 17, 0, '0.0000', 0, 0, '2014-12-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 99, '2014-12-14 11:30:45', '2014-12-16 22:56:31'),
(67, 'SMX-8250MP', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/SPM6122 COMBO/Untitled.png', 17, 0, '0.0000', 0, 0, '2014-12-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 119, '2014-12-14 11:37:10', '2014-12-16 22:56:36'),
(68, 'JCOM - 5000', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/JMC/jmc5000.jpg', 16, 0, '0.0000', 0, 0, '2014-12-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 151, '2014-12-14 12:05:49', '0000-00-00 00:00:00'),
(69, 'MPA-30R', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA- 30R/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 110, '2014-12-16 22:22:56', '2014-12-16 22:57:07'),
(70, 'MPA-30HR', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-30HR/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 131, '2014-12-16 22:31:28', '2014-12-16 22:57:19'),
(71, 'MPA-30H', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-30H/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 108, '2014-12-16 22:40:00', '2014-12-16 22:57:24'),
(72, 'MPA-30CH', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-30CH/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 96, '2014-12-16 22:52:38', '0000-00-00 00:00:00'),
(73, 'MPA-60', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-60/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 93, '2014-12-16 23:11:13', '0000-00-00 00:00:00'),
(63, 'Y220', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Maxclone/maxclone-y220.jpg', 13, 0, '0.0000', 0, 0, '2014-12-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 8, '2014-12-13 00:52:50', '2014-12-18 17:28:04'),
(64, 'SVP - 2001X', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Smart View/Visualizer/Visualizer-SVP-2000X.png', 12, 0, '0.0000', 0, 0, '2014-12-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 71, '2014-12-13 01:30:20', '0000-00-00 00:00:00'),
(78, 'MPA-120RS', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-120RS/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 70, '2014-12-25 12:55:52', '2014-12-25 12:57:57'),
(79, 'MPA-120ECHO', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Audio/SHOW/Amply/MPA-120RS/front.jpg', 17, 0, '0.0000', 0, 0, '2014-12-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 68, '2014-12-25 13:01:17', '0000-00-00 00:00:00'),
(80, 'PJ3000i UST-W DLP', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Triumph Board/PJ3000i UST-W DLP/PJ3000i UST-W DLP 01.jpg', 18, 0, '0.0000', 0, 0, '2014-12-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 46, '2014-12-26 00:53:50', '2014-12-26 00:55:21'),
(81, 'PJ2000i UST DLP', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Triumph Board/PJ3000i UST-W DLP/PJ3000i UST-W DLP 01.jpg', 18, 0, '0.0000', 0, 0, '2014-12-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 41, '2014-12-26 01:10:00', '0000-00-00 00:00:00'),
(82, 'PJ1000 ST DLP', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Projector/Triumph Board/PJ1000 ST DLP/front.jpg', 18, 0, '0.0000', 0, 0, '2014-12-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 42, '2014-12-26 01:16:59', '0000-00-00 00:00:00'),
(83, 'HVB - 8000I', '', '', '', '', '', '', '', 10, 7, 'catalog/Products/Interactive Board/SmartView/BANG-DIEN-TU.jpg', 12, 0, '0.0000', 0, 0, '2014-12-30', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 64, '2014-12-31 00:32:37', '2014-12-31 00:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE IF NOT EXISTS `product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_attribute`
--

INSERT INTO `product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(74, 88, 1, '1 âm lượng tổng, 1 Bass, 1 Treble, 4 âm lượng đầu vào, đầu vào Tel. và điều khiển âm lượng theo dõi, 3 công tắc chọn Rec (MPA-60R), Echo (MPA-60ECHO, PA-62ECHO)'),
(74, 87, 2, 'MIC: ≥65dB/ AUX: ≥80dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(74, 87, 1, 'MIC: ≥65dB/ AUX: ≥80dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(74, 86, 2, '25V/ 70V/ 100V'),
(74, 86, 1, '25V/ 70V/ 100V'),
(74, 85, 2, 'COM/ 4Ω'),
(74, 85, 1, 'COM/ 4Ω'),
(74, 84, 2, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(74, 84, 1, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(74, 83, 2, '≤1%'),
(74, 83, 1, '≤1%'),
(74, 82, 2, '80Hz - 16KHz (±3dB)'),
(74, 82, 1, '80Hz - 16KHz (±3dB)'),
(74, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(74, 81, 1, 'RMS 60W/ MAX 70V'),
(74, 81, 2, 'RMS 60W/ MAX 70V'),
(73, 91, 1, '6,5Kg'),
(73, 91, 2, '6,5Kg'),
(74, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(73, 89, 2, 'MP3-300: Máy nghe nhạc MP3'),
(73, 90, 1, '420 x 260 x 88mm'),
(73, 90, 2, '420 x 260 x 88mm'),
(73, 89, 1, 'MP3-300: Máy nghe nhạc MP3'),
(73, 88, 2, '1 âm lượng tổng, 1 Bass, 1 Treble, 4 âm lượng đầu vào, đầu vào Tel. và điều khiển âm lượng theo dõi, 3 công tắc chọn Rec (MPA-60R), Echo (MPA-60ECHO, PA-62ECHO)'),
(73, 88, 1, '1 âm lượng tổng, 1 Bass, 1 Treble, 4 âm lượng đầu vào, đầu vào Tel. và điều khiển âm lượng theo dõi, 3 công tắc chọn Rec (MPA-60R), Echo (MPA-60ECHO, PA-62ECHO)'),
(73, 87, 2, 'MIC: ≥65dB/ AUX: ≥80dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(73, 85, 1, 'COM/ 4Ω'),
(73, 85, 2, 'COM/ 4Ω'),
(73, 87, 1, 'MIC: ≥65dB/ AUX: ≥80dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(73, 86, 1, '25V/ 70V/ 100V'),
(73, 86, 2, '25V/ 70V/ 100V'),
(73, 84, 2, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(73, 84, 1, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(73, 83, 2, '≤1%'),
(73, 83, 1, '≤1%'),
(73, 82, 2, '80Hz - 16KHz (±3dB)'),
(73, 82, 1, '80Hz - 16KHz (±3dB)'),
(73, 81, 2, 'RMS 60W/ MAX 70V'),
(73, 81, 1, 'RMS 60W/ MAX 70V'),
(70, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(70, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(70, 81, 1, 'RMS 30W/ MAX 38W'),
(70, 83, 1, '≤0,5%'),
(70, 81, 2, 'RMS 30W/ MAX 38W'),
(70, 82, 1, '80Hz - 18KHz (±3dB)'),
(67, 76, 2, '±12dB@2,5KHz'),
(70, 82, 2, '80Hz - 18KHz (±3dB)'),
(67, 76, 1, '±12dB@2,5KHz'),
(67, 75, 2, 'Tốc độ mẫu 8kHz, 16KHz, 32KHz, 11.025KHz, 22.05KHz, 44.1KHz, 12kHz, 24kHz và 48KHz.\r\nTốc độ bit 8-320 kbps và VBR (tốc độ bit thay đổ), ngoại trừ định dạng tự do'),
(67, 75, 1, 'Tốc độ mẫu 8kHz, 16KHz, 32KHz, 11.025KHz, 22.05KHz, 44.1KHz, 12kHz, 24kHz và 48KHz.\r\nTốc độ bit 8-320 kbps và VBR (tốc độ bit thay đổ), ngoại trừ định dạng tự do'),
(67, 74, 2, 'Hỗ trợ FAT16 và FAT32\r\nHỗ trợ VFAT (tên tập tin dài)\r\nHỗ trợ đa phân vùng lên đến 1'),
(67, 74, 1, 'Hỗ trợ FAT16 và FAT32\r\nHỗ trợ VFAT (tên tập tin dài)\r\nHỗ trợ đa phân vùng lên đến 1'),
(67, 73, 2, 'Tích hợp USB tốc độ (12Mbps) chức năng điều khiển HOST\r\nHỗ trợ lưu trữ USB'),
(67, 73, 1, 'Tích hợp USB tốc độ (12Mbps) chức năng điều khiển HOST\r\nHỗ trợ lưu trữ USB'),
(66, 76, 2, '±12dB@2,5KHz'),
(66, 76, 1, '±12dB@2,5KHz'),
(66, 75, 2, 'Tốc độ mẫu 8kHz, 16KHz, 32KHz, 11.025KHz, 22.05KHz, 44.1KHz, 12kHz, 24kHz và 48KHz.\r\nTốc độ bit 8-320 kbps và VBR (tốc độ bit thay đổ), ngoại trừ định dạng tự do'),
(66, 75, 1, 'Tốc độ mẫu 8kHz, 16KHz, 32KHz, 11.025KHz, 22.05KHz, 44.1KHz, 12kHz, 24kHz và 48KHz.\r\nTốc độ bit 8-320 kbps và VBR (tốc độ bit thay đổ), ngoại trừ định dạng tự do'),
(66, 74, 1, 'Hỗ trợ FAT16 và FAT32\r\nHỗ trợ VFAT (tên tập tin dài)\r\nMp3 Mở rộng Hỗ trợ đa phân vùng lên đến 1'),
(66, 74, 2, 'Hỗ trợ FAT16 và FAT32\r\nHỗ trợ VFAT (tên tập tin dài)\r\nMp3 Mở rộng Hỗ trợ đa phân vùng lên đến 1'),
(72, 91, 1, '5,8Kg'),
(72, 91, 2, '5,8Kg'),
(65, 71, 2, '20Hz đến 22kHz, ±3dB'),
(66, 73, 2, 'Tích hợp USB tốc độ (12Mbps) chức năng điều khiển HOST\r\nHỗ trợ lưu trữ USB'),
(72, 89, 2, 'CD-201: Đọc CD'),
(72, 90, 1, '320 x 280 x 75mm'),
(72, 90, 2, '320 x 280 x 75mm'),
(72, 88, 2, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(72, 89, 1, 'CD-201: Đọc CD'),
(72, 88, 1, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(72, 87, 2, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(72, 87, 1, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(72, 86, 2, '25V/ 70V/ 100V'),
(72, 86, 1, '25V/ 70V/ 100V'),
(72, 85, 2, 'COM/ 4Ω'),
(72, 85, 1, 'COM/ 4Ω'),
(72, 84, 2, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(72, 84, 1, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(72, 83, 2, '≤0,5%'),
(72, 83, 1, '≤0,5%'),
(72, 82, 2, '80Hz - 18KHz (±3dB)'),
(72, 82, 1, '80Hz - 18KHz (±3dB)'),
(72, 81, 2, 'RMS 30W/ MAX 38W'),
(71, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(72, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(72, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(72, 81, 1, 'RMS 30W/ MAX 38W'),
(71, 81, 1, 'RMS 30W/ MAX 38W'),
(71, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(71, 83, 1, '≤0,5%'),
(71, 81, 2, 'RMS 30W/ MAX 38W'),
(71, 82, 1, '80Hz - 18KHz (±3dB)'),
(71, 82, 2, '80Hz - 18KHz (±3dB)'),
(73, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(71, 91, 2, '4,5Kg'),
(71, 91, 1, '4,5Kg'),
(71, 90, 2, '280 x 190 x 75mm'),
(71, 90, 1, '280 x 190 x 75mm'),
(71, 89, 2, 'MP3-300: máy nghe nhạc MP3'),
(71, 89, 1, 'MP3-300: máy nghe nhạc MP3'),
(71, 88, 2, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(71, 88, 1, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(71, 87, 2, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(71, 87, 1, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(71, 86, 2, '25V/ 70V/ 100V'),
(71, 86, 1, '25V/ 70V/ 100V'),
(71, 85, 2, 'COM/ 4Ω'),
(71, 85, 1, 'COM/ 4Ω'),
(71, 84, 1, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(71, 84, 2, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(70, 91, 1, '4,5Kg'),
(70, 91, 2, '4,5Kg'),
(73, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(71, 83, 2, '≤0,5%'),
(70, 89, 2, 'MP3-400: máy nghe nhạc MP3 + Ghi âm'),
(70, 90, 1, '280 x 190 x 75mm'),
(70, 90, 2, '280 x 190 x 75mm'),
(70, 88, 2, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(70, 89, 1, 'MP3-400: máy nghe nhạc MP3 + Ghi âm'),
(70, 88, 1, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(70, 87, 2, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(70, 87, 1, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(70, 86, 2, '25V/ 70V/ 100V'),
(70, 86, 1, '25V/ 70V/ 100V'),
(70, 85, 2, 'COM/ 4Ω'),
(70, 85, 1, 'COM/ 4Ω'),
(70, 84, 2, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(70, 84, 1, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(70, 83, 2, '≤0,5%'),
(69, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(69, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC12V'),
(69, 81, 1, 'RMS 30W/ MAX 38W'),
(69, 82, 1, '80Hz - 18KHz (±3dB)'),
(69, 91, 1, '4,5Kg'),
(69, 91, 2, '4,5Kg'),
(69, 82, 2, '80Hz - 18KHz (±3dB)'),
(69, 81, 2, 'RMS 30W/ MAX 38W'),
(69, 90, 1, '280 x 190 x 75mm'),
(69, 90, 2, '280 x 190 x 75mm'),
(69, 89, 2, 'MP3-400: máy nghe nhạc MP3 + Ghi âm'),
(69, 89, 1, 'MP3-400: máy nghe nhạc MP3 + Ghi âm'),
(69, 88, 2, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(69, 88, 1, '1 Bass, 1 Treble, 1 âm lượng tổng, 3 điền khiển âm lượng đầu vào'),
(69, 87, 2, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(69, 87, 1, 'MIC 1 ~ 2: ≥65dB/ AUX: ≥75dB/ Phono ≥55dB'),
(69, 85, 2, 'COM/ 4Ω'),
(69, 85, 1, 'COM/ 4Ω'),
(69, 84, 2, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(69, 84, 1, '1.MIC1 ~ 2 (jack φ6.3)-50dBv/ 1KHz; 2.AUX (RCA)-6dBv/ 1KHz; 3.Phono-50dBv/ 1KHz'),
(69, 83, 2, '≤0,5%'),
(69, 83, 1, '≤0,5%'),
(68, 79, 2, 'Windows Xp, Windows 7'),
(68, 79, 1, 'Windows Xp, Windows 7'),
(68, 77, 2, '12 - 48 học sinh'),
(67, 51, 2, 'Cân bằng điện tử, đầu vào riêng biệt'),
(67, 51, 1, 'Cân bằng điện tử, đầu vào riêng biệt'),
(67, 54, 1, 'Cân bằng điện tử'),
(67, 53, 2, '45dB'),
(67, 53, 1, '45dB'),
(67, 52, 2, '12Hz-55kHz, ±3dB'),
(67, 52, 1, '12Hz-55kHz, ±3dB'),
(67, 55, 1, '&gt;75dB'),
(67, 54, 2, 'Cân bằng điện tử'),
(67, 56, 2, '1.5KOhm'),
(67, 56, 1, '1.5KOhm'),
(67, 55, 2, '&gt;75dB'),
(67, 57, 2, '10KOhm hoặc cao hơn'),
(67, 59, 1, '±15dB@10KHz'),
(67, 57, 1, '10KOhm hoặc cao hơn'),
(67, 58, 1, '1kohm'),
(67, 58, 2, '1kohm'),
(67, 59, 2, '±15dB@10KHz'),
(67, 60, 1, '±18dB@80Hz'),
(67, 60, 2, '±18dB@80Hz'),
(67, 61, 1, '7-band, 4/3 oct'),
(67, 62, 2, '24 bit'),
(67, 62, 1, '24 bit'),
(67, 61, 2, '7-band, 4/3 oct'),
(67, 63, 1, '24 bit'),
(67, 63, 2, '24 bit'),
(67, 64, 1, 'Thanh, phòng nhỏ, phòng lớn, Echo, Echo + Verb, Verb + Flanger, Plate, điệp khúc, Rotary, Tremolo'),
(67, 64, 2, 'Thanh, phòng nhỏ, phòng lớn, Echo, Echo + Verb, Verb + Flanger, Plate, điệp khúc, Rotary, Tremolo'),
(67, 66, 1, 'Chọn 100 vị trí thiết lập sẵn, LED CLIP, công tắc MUTE với chỉ số LED'),
(67, 66, 2, 'Chọn 100 vị trí thiết lập sẵn, LED CLIP, công tắc MUTE với chỉ số LED'),
(67, 65, 1, '100'),
(67, 65, 2, '100'),
(67, 67, 1, 'Fader 0dB, kênh tắt: -85dBr (refl + 4dBu)\r\nFader 0dB, tất cả các kênh đầu vào được giao và thiết lập để tăng thống nhất: -81dBr (ref: + 4dBu)'),
(67, 30, 2, '115V- 60Hz/ 230V-50Hz'),
(67, 30, 1, '115V- 60Hz/ 230V-50Hz'),
(67, 67, 2, 'Fader 0dB, kênh tắt: -85dBr (refl + 4dBu)\r\nFader 0dB, tất cả các kênh đầu vào được giao và thiết lập để tăng thống nhất: -81dBr (ref: + 4dBu)'),
(67, 69, 1, '22dBu không cân bằng, jack (1/4)'''''),
(67, 68, 2, '22dBu không cân bằng, jack (1/4)'''''),
(67, 68, 1, '22dBu không cân bằng, jack (1/4)'''''),
(67, 70, 1, '300W RMS tại 1kHz, THD = 1%, Load = 4Ohm'),
(67, 69, 2, '22dBu không cân bằng, jack (1/4)'''''),
(67, 71, 1, '20Hz - 22kHz, ±3dB'),
(67, 70, 2, '300W RMS tại 1kHz, THD = 1%, Load = 4Ohm'),
(67, 71, 2, '20Hz - 22kHz, ±3dB'),
(66, 52, 2, '12Hz-55kHz, ±3dB'),
(66, 52, 1, '12Hz-55kHz, ±3dB'),
(66, 51, 2, 'Cân bằng điện tử, đầu vào riêng biệt'),
(66, 54, 2, 'Cân bằng điện tử'),
(66, 54, 1, 'Cân bằng điện tử'),
(66, 53, 2, '45dB'),
(66, 53, 1, '45dB'),
(66, 56, 1, '1.5KOhm'),
(66, 55, 2, '&gt;75dB'),
(66, 57, 2, '1kohm'),
(66, 55, 1, '&gt;75dB'),
(66, 57, 1, '1kohm'),
(66, 56, 2, '1.5KOhm'),
(66, 59, 2, '±15dB@10KHz'),
(66, 59, 1, '±15dB@10KHz'),
(66, 60, 2, '±18dB@80Hz'),
(66, 60, 1, '±18dB@80Hz'),
(66, 61, 1, '7-band, 4/3 oct'),
(66, 61, 2, '7-band, 4/3 oct'),
(66, 62, 1, '24 bit'),
(66, 62, 2, '24 bit'),
(66, 64, 1, 'Thanh, phòng nhỏ, phòng lớn, Echo, Echo + Verb, Verb + Flanger, Plate, điệp khúc, Rotary, Tremolo'),
(66, 63, 2, '24 bit'),
(66, 63, 1, '24 bit'),
(66, 64, 2, 'Thanh, phòng nhỏ, phòng lớn, Echo, Echo + Verb, Verb + Flanger, Plate, điệp khúc, Rotary, Tremolo'),
(66, 66, 1, 'Chọn 100 vị trí thiết lập sẵn, LED CLIP, công tắc MUTE với chỉ số LED'),
(66, 65, 1, '100'),
(66, 65, 2, '100'),
(66, 66, 2, 'Chọn 100 vị trí thiết lập sẵn, LED CLIP, công tắc MUTE với chỉ số LED'),
(66, 67, 1, 'Fader 0dB, kênh tắt: -85dBr (refl + 4dBu)\r\nFader 0dB, tất cả các kênh đầu vào được giao và thiết lập để tăng thống nhất: -81dBr (ref: + 4dBu)'),
(66, 51, 1, 'Cân bằng điện tử, đầu vào riêng biệt'),
(66, 67, 2, 'Fader 0dB, kênh tắt: -85dBr (refl + 4dBu)\r\nFader 0dB, tất cả các kênh đầu vào được giao và thiết lập để tăng thống nhất: -81dBr (ref: + 4dBu)'),
(66, 68, 2, '22dBu không cân bằng, jack (1/4)'''''),
(66, 68, 1, '22dBu không cân bằng, jack (1/4)'''''),
(66, 69, 1, '22dBu không cân bằng, jack (1/4)'''''),
(66, 69, 2, '22dBu không cân bằng, jack (1/4)'''''),
(66, 73, 1, 'Tích hợp USB tốc độ (12Mbps) chức năng điều khiển HOST\r\nHỗ trợ lưu trữ USB'),
(65, 51, 1, 'Cân bằng điện tử, đầu vào riêng biệt'),
(65, 51, 2, 'Cân bằng điện tử, đầu vào riêng biệt'),
(65, 52, 1, '12Hz-55kHz, ±3dB'),
(65, 52, 2, '12Hz-55kHz, ±3dB'),
(65, 53, 1, '45dB'),
(65, 53, 2, '45dB'),
(65, 54, 2, 'Cân bằng điện tử'),
(65, 54, 1, 'Digital balance'),
(65, 71, 1, '20Hz đến 22kHz, ±3dB'),
(65, 70, 2, '2x100W RMS tại 1kHz, THD = 1%, Load = 4Ohm'),
(65, 70, 1, '2x100W RMS tại 1kHz, THD = 1%, Load = 4Ohm'),
(65, 69, 1, '22dBu không cân bằng, jack (1/4)'''''),
(65, 69, 2, '22dBu không cân bằng, jack (1/4)'''''),
(65, 68, 1, '22dBu không cân bằng, jack (1/4)'''''),
(65, 68, 2, '22dBu không cân bằng, jack (1/4)'''''),
(65, 67, 2, 'Fader 0dB, kênh tắt: -85dBr (refl + 4dBu)\r\nFader 0dB, tất cả các kênh đầu vào được gán và thiết lập để tăng thống nhất: -81dBr (ref: + 4dBu)'),
(65, 67, 1, 'Fader 0dB, kênh tắt: -85dBr (refl + 4dBu)\r\nFader 0dB, tất cả các kênh đầu vào được gán và thiết lập để tăng thống nhất: -81dBr (ref: + 4dBu)'),
(65, 65, 1, '100'),
(65, 65, 2, '100'),
(65, 64, 2, 'Thanh, phòng nhỏ, phòng lớn, Echo, Echo + Verb, Verb + Flanger, Plate, Rotary, Tremolo'),
(65, 64, 1, 'Echo, Echo + Verb, Verb + Flanger, Plate, Rotary, Tremolo'),
(65, 63, 2, '24 bit'),
(65, 63, 1, '24 bit'),
(65, 62, 1, '24 bit'),
(65, 62, 2, '24 bit'),
(65, 61, 2, '7-band, 4/3 oct'),
(65, 61, 1, '7-band, 4/3 oct'),
(65, 60, 2, '±15dB@100Hz'),
(65, 60, 1, '±15dB@100Hz'),
(65, 59, 2, '±15dB@10kHz'),
(65, 59, 1, '±15dB@10kHz'),
(65, 58, 2, '1kohm'),
(65, 57, 2, '120Ohm'),
(65, 58, 1, '1kohm'),
(65, 56, 2, '1.5KOhm'),
(65, 57, 1, '120Ohm'),
(65, 56, 1, '1.5KOhm'),
(65, 55, 2, '&gt;75dB'),
(65, 55, 1, '&gt;75dB'),
(64, 43, 1, '128pcs'),
(64, 43, 2, '128pcs'),
(64, 44, 1, 'No'),
(64, 44, 2, 'Không'),
(64, 42, 1, 'Yes'),
(64, 42, 2, 'Có'),
(64, 41, 2, 'S-Video: 4 pin mini Din: (1)\r\nRGB 15 pin:(2)\r\nAudio: Mini jack (1), HDMI (1)\r\nC-video: RAC Jack (1)'),
(64, 41, 1, 'S-Video: 4 pin mini Din: (1)\r\nRGB 15 pin:(2)\r\nAudio: Mini jack (1), HDMI (1)\r\nC-video: RAC Jack (1)'),
(64, 40, 2, 'C-video: RAC Jack (1)\r\nS-Video: 4 pin mini Din: (1)\r\nAudio Mini Jack : (2)\r\nMic Mini Jack :(1),\r\nPC Audio: (2),\r\nRGB 15 pin:(2)\r\nPower 12v/4A'),
(64, 40, 1, 'C-video: RAC Jack (1)\r\nS-Video: 4 pin mini Din: (1)\r\nAudio Mini Jack : (2)\r\nMic Mini Jack :(1),\r\nPC Audio: (2),\r\nRGB 15 pin:(2)\r\nPower 12v/4A'),
(64, 39, 2, '0° / 90° / 180° / 270°'),
(64, 39, 1, '0° / 90° / 180° / 270°'),
(64, 38, 1, '2 Mega'),
(64, 38, 2, '2 Mega'),
(64, 37, 2, 'XGA(1024x768) / SXGA(1280x1024) / WXGA (1366x768) , 720p(1280x720), 1080P(1920x1080)'),
(64, 36, 1, '395mm x 312 mm Max'),
(64, 36, 2, '395mm x 312 mm Max'),
(64, 37, 1, 'XGA(1024x768) / SXGA(1280x1024) / WXGA (1366x768) , 720p(1280x720), 1080P(1920x1080)'),
(64, 34, 1, 'PAL/NTSC'),
(64, 34, 2, 'PAL/NTSC'),
(64, 35, 1, '12X Optical / 10X Digital Zoom'),
(64, 35, 2, '12X Optical / 10X Digital Zoom'),
(64, 33, 2, '2M'),
(64, 33, 1, '2M'),
(64, 32, 2, '1/3 CMOS'),
(64, 32, 1, '1/3 CMOS'),
(63, 50, 2, 'Windows 2003 Server, Windows 2008 Server, Windows XP, Windows Vista(Ultimate &amp; Business &amp; Starter), Windows 7'),
(68, 77, 1, '12 - 48 students'),
(63, 47, 1, '256MB DDR2'),
(63, 46, 2, 'ARM11 - 800Mhz'),
(63, 46, 1, 'ARM11 - 800Mhz'),
(63, 48, 2, '64MB Nand Flash'),
(63, 48, 1, '64MB Nand Flash'),
(63, 47, 2, '256MB DDR2'),
(63, 49, 1, '1 x Power, 3 x USB, 1 x VGA(D-Sub), 1 x LAN, 1 x Microphone, 1 x Earphone'),
(63, 49, 2, '1 x Power, 3 x USB, 1 x VGA(D-Sub), 1 x LAN, 1 x Microphone, 1 x Earphone'),
(62, 43, 2, '32 tấm'),
(62, 44, 1, 'No'),
(62, 44, 2, 'Không Hỗ Trợ'),
(63, 50, 1, 'Windows 2003 Server, Windows 2008 Server, Windows XP, Windows Vista(Ultimate &amp; Business &amp; Starter), Windows 7'),
(62, 42, 1, 'Yes'),
(62, 42, 2, 'Có'),
(62, 43, 1, '32pcs'),
(62, 41, 2, 'S-Video: 4 pin mini Din: (1), RGB 15 pin:(2), Audio: Mini jack (1), C-video: RAC Jack (1)'),
(62, 41, 1, 'S-Video: 4 pin mini Din: (1), RGB 15 pin:(2), Audio: Mini jack (1), C-video: RAC Jack (1)'),
(62, 40, 2, 'S-audio : RCA(1), S-video : (1), Audio Mini Jack : (4), Mic Mini Jack :(1), DC-audio (2), RGB, Power 12v/3A'),
(62, 40, 1, 'S-audio : RCA(1), S-video : (1), Audio Mini Jack : (4), Mic Mini Jack :(1), DC-audio (2), RGB, Power 12v/3A'),
(62, 39, 2, '0° / 90° / 180° / 270°'),
(62, 39, 1, '0° / 90° / 180° / 270°'),
(62, 38, 2, '1.3 Mega'),
(62, 38, 1, '1.3 Mega'),
(62, 37, 2, 'XGA(1024x768) / SXGA(1280x1024) / WXGA (1366x768) , 720p(1280x720)'),
(62, 37, 1, 'XGA(1024x768) / SXGA(1280x1024) / WXGA (1366x768) , 720p(1280x720)'),
(62, 36, 2, '395mm x 312 mm Max'),
(62, 36, 1, '395mm x 312 mm Max'),
(62, 35, 2, '12X Optical / 10X Digital Zoom'),
(62, 35, 1, '12X Optical / 10X Digital Zoom'),
(62, 34, 2, 'PAL/NTSC system'),
(62, 34, 1, 'PAL/NTSC system'),
(62, 33, 2, '1.3M'),
(62, 33, 1, '1.3M'),
(62, 32, 2, '1/3 CMOS'),
(62, 32, 1, '1/3 CMOS'),
(61, 12, 1, 'SVGA (800 x 600)'),
(61, 12, 2, 'SVGA (800 x 600)'),
(61, 13, 2, '3000 ANSI Lumens'),
(61, 13, 1, '3000 ANSI Lumens'),
(61, 15, 2, 'UXGA (1600 x 1200) @60Hz'),
(61, 14, 1, '15,000:1'),
(61, 14, 2, '15,000:1'),
(61, 15, 1, 'UXGA (1600 x 1200) @60Hz'),
(61, 27, 2, 'VGA-In (15pin D-Sub), HDMI, S-Video, Composite Video, Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RS-232'),
(61, 16, 1, '4:3'),
(61, 27, 1, 'VGA-In (15pin D-Sub), HDMI, S-Video, Composite Video, Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RS-232'),
(61, 26, 2, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(61, 26, 1, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(61, 25, 2, '2W'),
(61, 25, 1, '2W'),
(61, 24, 2, 'Vertical +/- 40°'),
(61, 24, 1, 'Vertical +/- 40°'),
(61, 23, 2, '1.1x'),
(61, 23, 1, '1.1x'),
(61, 22, 2, 'F = 2.52 - 2.73, f = 21.8 - 24 mm'),
(61, 22, 1, 'F = 2.52 - 2.73, f = 21.8 - 24 mm'),
(61, 21, 2, '1 - 10 m'),
(61, 21, 1, '1 - 10 m'),
(61, 20, 2, '23&quot; - 256&quot;'),
(61, 20, 1, '23&quot; - 256&quot;'),
(61, 19, 2, '0.55” DMD'),
(61, 19, 1, '0.55” DMD'),
(61, 18, 2, 'Single chip DLP® Technology by Texas Instruments'),
(61, 18, 1, 'Single chip DLP® Technology by Texas Instruments'),
(61, 17, 2, '5,000 / 6,000/10,000 Giờ (Normal/Eco/Dynamic Eco Mode), 190W/160W'),
(61, 16, 2, '4:3'),
(61, 17, 1, '5,000 / 6,000/10,000 Hours(Normal/Eco/Dynamic Eco Mode), 190W/160W'),
(59, 12, 2, 'XGA (1024 x 768)'),
(59, 12, 1, 'XGA (1024 x 768)'),
(59, 13, 2, '5500 Lumens (Typical)'),
(59, 13, 1, '5500 Lumens (Typical)'),
(59, 14, 2, '10,000:1 (Full On/Off)'),
(59, 15, 1, 'WUXGA (1920x1200)'),
(59, 14, 1, '10,000:1 (Full On/Off)'),
(59, 16, 1, '4:3 Native, 16:9 Compatible'),
(59, 15, 2, 'WUXGA (1920x1200)'),
(59, 16, 2, '4:3 Native, 16:9 Compatible'),
(60, 12, 1, 'XGA (1024 x 768)'),
(60, 12, 2, 'XGA (1024 x 768)'),
(60, 13, 2, '4000 ANSI Lumens'),
(60, 13, 1, '4000 ANSI Lumens'),
(60, 15, 1, 'UXGA (1600 x 1200) @60Hz'),
(60, 14, 2, '5000:1'),
(60, 14, 1, '5000:1'),
(60, 15, 2, 'UXGA (1600 x 1200) @60Hz'),
(60, 16, 1, '4:3'),
(60, 17, 2, '3,000/4,000 Giờ (Normal/Eco Mode), 280W/245W,Osram'),
(60, 16, 2, '4:3'),
(60, 17, 1, '3,000/4,000 Hours (Normal/Eco Mode), 280W/245W,Osram'),
(60, 20, 2, '25.6&quot;-308&quot;'),
(60, 20, 1, '25.6&quot;-308&quot;'),
(60, 18, 2, '0.55” DMD'),
(60, 18, 1, '0.55” DMD'),
(60, 21, 2, '1 - 10 m'),
(60, 22, 1, 'F#2.50 - 2.72, f = 17.81 - 22.35mm'),
(60, 23, 2, '1.2x'),
(60, 21, 1, '1 - 10 m'),
(60, 23, 1, '1.2x'),
(60, 22, 2, 'F#2.50 - 2.72, f = 17.81 - 22.35mm'),
(60, 24, 1, 'Vertical +/- 40°'),
(60, 24, 2, 'Vertical +/- 40°'),
(60, 25, 1, '10W'),
(60, 25, 2, '10W'),
(60, 26, 1, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(60, 26, 2, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(60, 27, 1, 'VGA-In (15pin D-Sub), HDMI, Display Port, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, 12v Trigger, Trigger Port Type, RS-232'),
(60, 27, 2, 'VGA-In (15pin D-Sub), HDMI, Display Port, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, 12v Trigger, Trigger Port Type, RS-232'),
(59, 28, 2, '13.1&quot;x 4.4&quot; x 10&quot; (333 x 113 x 255 mm)'),
(59, 28, 1, '13.1&quot;x 4.4&quot; x 10&quot; (333 x 113 x 255 mm)'),
(59, 27, 2, 'HDMI v1.4 (x2), Display Port, VGA-In (x2), Video, S-Video, VGA-Out, RCA Stereo-In, Mini-Jack Audio-In, Mini-Jack Audio-Out, RJ45, 12V Trigger,RS-232c, 3D Sync, USB (Service)'),
(59, 27, 1, 'HDMI v1.4 (x2), Display Port, VGA-In (x2), Video, S-Video, VGA-Out, RCA Stereo-In, Mini-Jack Audio-In, Mini-Jack Audio-Out, RJ45, 12V Trigger,RS-232c, 3D Sync, USB (Service)'),
(59, 26, 2, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(59, 26, 1, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(59, 25, 1, '5W Mono'),
(59, 25, 2, '5W Mono'),
(59, 24, 2, '±40° Vertical, ±40 Steps'),
(59, 24, 1, '±40° Vertical, ±40 Steps'),
(59, 23, 2, '1.15:1 Manual Zoom/Focus'),
(59, 23, 1, '1.15:1 Manual Zoom/Focus'),
(59, 22, 1, 'F = 2.6-2.81, f = 26.01- 29.84 mm'),
(59, 22, 2, 'F = 2.6-2.81, f = 26.01- 29.84 mm'),
(59, 21, 1, '4.9’ - 32.8’ (1.5 - 10.0 m)'),
(59, 21, 2, '4.9’ - 32.8’ (1.5 - 10.0 m)'),
(59, 20, 1, '23.4&quot; - 300&quot; (0.6 - 7.6 m)'),
(59, 20, 2, '23.4&quot; - 300&quot; (0.6 - 7.6 m)'),
(59, 18, 1, 'Single 0.7&quot; DLP® Technology by Texas Instruments'),
(59, 18, 2, 'Single 0.7&quot; DLP® Technology by Texas Instruments'),
(58, 13, 2, '2700 ANSI Lumens'),
(59, 17, 1, '≈2500/3500/4000 Hours (Normal/Economy/Dynamic Economy Mode), 310W'),
(59, 17, 2, '≈2500/3500/4000 Giờ (Normal/Economy/Dynamic Economy Mode), 310W'),
(58, 14, 1, '15,000:1'),
(58, 14, 2, '15,000:1'),
(58, 12, 2, 'SVGA (800 x 600)'),
(58, 15, 1, 'UXGA (1600 x 1200) @60Hz'),
(58, 13, 1, '2700 ANSI Lumens'),
(58, 12, 1, 'SVGA (800 x 600)'),
(58, 16, 2, '4:3 Native'),
(58, 16, 1, '4:3 Native'),
(58, 15, 2, 'UXGA (1600 x 1200) @60Hz'),
(58, 17, 1, '4,000/5,000 Hours (Normal/Eco)'),
(58, 18, 2, 'Single DMD DLP® Technology by'),
(58, 18, 1, 'Single DMD DLP® Technology by'),
(58, 25, 2, '2W (Mono)'),
(58, 17, 2, '4,000/5,000 Giờ (Normal/Eco)'),
(58, 25, 1, '2W (Mono)'),
(58, 24, 2, 'Vertical +/-40%, +/-40 Step'),
(58, 20, 1, '60&quot;@1.1m'),
(58, 27, 1, 'VGA-In (x2), S-Video, Composit'),
(58, 27, 2, 'VGA-In (x2), S-Video, Composit'),
(58, 21, 2, '0.8 - 3m (3.28ft - 32.8ft)'),
(58, 21, 1, '0.8 - 3m (3.28ft - 32.8ft)'),
(58, 20, 2, '60&quot;@1.1m'),
(58, 24, 1, 'Vertical +/-40%, +/-40 Step'),
(57, 13, 2, '3000 Lumens (Typical)'),
(57, 13, 1, '3000 Lumens (Typical)'),
(57, 12, 2, 'XGA (1024 x 768)'),
(57, 12, 1, 'XGA (1024 x 768)'),
(57, 16, 2, '4:3 Native, 16:9 Compatible'),
(57, 14, 1, '3000:1 (Full On/Off)'),
(57, 14, 2, '3000:1 (Full On/Off)'),
(57, 15, 1, 'UXGA (1600 x 1200)'),
(57, 15, 2, 'UXGA (1600 x 1200)'),
(57, 16, 1, '4:3 Native, 16:9 Compatible'),
(57, 17, 2, '≈4000/6000 Giờ (Boost/Standard Mode), 220W'),
(57, 17, 1, '≈4000/6000 Hours (Boost/Standard Mode), 220W'),
(57, 20, 1, '37.3&quot; - 373&quot; (0.9 - 9.5 m)'),
(57, 20, 2, '37.3&quot; - 373&quot; (0.9 - 9.5 m)'),
(57, 21, 2, '1.6 - 16.4 (0.5 - 5.0 m)'),
(57, 22, 1, 'F = 2.87, f = 7.36 mm , Fixed Lens, Manual Focus'),
(57, 21, 1, '1.6 - 16.4 (0.5 - 5.0 m)'),
(57, 24, 2, '±15°, Auto-Keystone'),
(57, 24, 1, '±15°, Auto-Keystone'),
(57, 22, 2, 'F = 2.87, f = 7.36 mm , Fixed Lens, Manual Focus'),
(57, 25, 1, '10 Watt Mono'),
(57, 25, 2, '10 Watt Mono'),
(57, 26, 1, 'SDTV (480i), EDTV (480p), HDTV (576i, 720p, 1080i) thru RGB, NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(57, 26, 2, 'SDTV (480i), EDTV (480p), HDTV (576i, 720p, 1080i) thru RGB, NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(57, 27, 1, 'HDMI v1.3, DVI-I, VGA-In, VGA-Out, Composite Video, RCA Stereo-In, Mini-Jack Audio-In, Mini-Jack Audio-Out, RJ45, RS-232c, 12V trigger, Microphone-In, USB (Service)'),
(56, 15, 2, 'UXGA (1600 x 1200)'),
(56, 16, 1, '4:3 Native, 16:9 &amp; 16:10 Compatible'),
(56, 16, 2, '4:3 Native, 16:9 &amp; 16:10 Compatible'),
(56, 15, 1, 'UXGA (1600 x 1200)'),
(56, 14, 2, '10,000:1 (Full On/Off)'),
(56, 13, 2, '2800 Lumens'),
(56, 14, 1, '10,000:1 (Full On/Off)'),
(56, 13, 1, '2800 Lumens'),
(56, 17, 1, '≈5000/10,000 Hours (Standard/Economy Mode), 230W'),
(56, 12, 1, 'XGA (1024 x 768)'),
(56, 12, 2, 'XGA (1024 x 768)'),
(56, 17, 2, '≈5000/10,000 Giờ (Standard/Economy Mode), 230W'),
(56, 19, 1, 'Single DMD DLP® Technology by Texas Instruments'),
(56, 19, 2, 'Single DMD DLP® Technology by Texas Instruments'),
(56, 20, 2, '67.8&quot; - 84.8&quot; (1.7 - 2.2 m)'),
(56, 20, 1, '67.8&quot; - 84.8&quot; (1.7 - 2.2 m)'),
(56, 21, 2, '11.11&quot; - 17.55&quot; (0.282 - 0.446m)'),
(56, 21, 1, '11.11&quot; - 17.55&quot; (0.282 - 0.446m)'),
(56, 23, 1, 'Fixed Lens, Manual Focus'),
(56, 22, 2, 'F = 2.5, f = 5.09mm'),
(56, 24, 1, '±40° Vertical, ±40 Steps'),
(56, 23, 2, 'Fixed Lens, Manual Focus'),
(56, 22, 1, 'F = 2.5, f = 5.09mm'),
(56, 24, 2, '±40° Vertical, ±40 Steps'),
(56, 26, 1, 'SDTV (480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(56, 25, 2, '10W (x2)'),
(56, 25, 1, '10W (x2)'),
(56, 26, 2, 'SDTV (480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(56, 27, 1, 'HDMI v1.4, Display Port, VGA-In (x2), VGA-Out, Composite Video, S-Video, Microphone, RCA Audio-In, Mini-Jack Audio-In, Mini-Jack Audio-Out , RJ45, RS-232c, 3D-Sync, USB (Service)'),
(56, 27, 2, 'HDMI v1.4, Display Port, VGA-In (x2), VGA-Out, Composite Video, S-Video, Microphone, RCA Audio-In, Mini-Jack Audio-In, Mini-Jack Audio-Out , RJ45, RS-232c, 3D-Sync, USB (Service)'),
(56, 28, 1, '11.3&quot; x 4.9&quot; x 14.7&quot; (287.7 x 126.6 x 374.5 mm)'),
(55, 14, 2, '5,000:1'),
(55, 14, 1, '5,000:1'),
(55, 13, 2, '3300 ANSI Lumens'),
(55, 13, 1, '3300 ANSI Lumens'),
(55, 12, 2, 'WXGA (1280 x 800)'),
(55, 12, 1, 'WXGA (1280 x 800)'),
(55, 15, 1, 'UXGA (1600 x 1200) @60Hz'),
(55, 15, 2, 'UXGA (1600 x 1200) @60Hz'),
(55, 17, 2, '5,000 /10,000 Giờ (Normal/Eco Mode),230W /200W'),
(55, 16, 1, '16:10'),
(55, 18, 2, 'Single chip DLP® Technology by Texas Instruments'),
(55, 19, 1, '0.65” DMD'),
(55, 16, 2, '16:10'),
(55, 17, 1, '5,000 /10,000 Hours (Normal/Eco Mode),230W /200W'),
(55, 18, 1, 'Single chip DLP® Technology by Texas Instruments'),
(55, 20, 2, '80&quot;- 100&quot;'),
(55, 19, 2, '0.65” DMD'),
(55, 20, 1, '80&quot;- 100&quot;'),
(55, 23, 2, 'Fixed Lens'),
(55, 23, 1, 'Fixed Lens'),
(55, 22, 2, 'F=2.5, f=5.1mm'),
(55, 21, 1, '280mm-337mm +/-50mm'),
(55, 21, 2, '280mm-337mm +/-50mm'),
(55, 22, 1, 'F=2.5, f=5.1mm'),
(55, 26, 1, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(55, 24, 2, 'Vertical +/- 40°'),
(55, 24, 1, 'Vertical +/- 40°'),
(55, 26, 2, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(54, 13, 2, '3300 ANSI Lumens'),
(54, 14, 1, '5,000:1'),
(54, 14, 2, '5,000:1'),
(55, 27, 1, 'VGA-In (15pin D-Sub), HDMI, Display Port, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, RS-232, 3D-Sync Out, USB B, Microphone (Mini-Jack)'),
(54, 12, 1, 'WXGA (1280 x 800)'),
(54, 12, 2, 'WXGA (1280 x 800)'),
(54, 13, 1, '3300 ANSI Lumens'),
(54, 15, 1, 'UXGA (1600 x 1200) @60Hz'),
(54, 15, 2, 'UXGA (1600 x 1200) @60Hz'),
(54, 16, 1, '16:10'),
(54, 18, 1, 'Single chip DLP® Technology by Texas Instruments'),
(54, 17, 2, '5,000 /10,000 Giờ (Normal/Eco Mode), 230W /200W'),
(54, 16, 2, '16:10'),
(54, 17, 1, '5,000 /10,000 Hours (Normal/Eco Mode), 230W /200W'),
(54, 18, 2, 'Single chip DLP® Technology by Texas Instruments'),
(54, 19, 1, '0.65” DMD'),
(54, 19, 2, '0.65” DMD'),
(54, 20, 1, '80&quot;- 100&quot;'),
(54, 22, 1, 'F=2.5, f=5.1mm'),
(54, 22, 2, 'F=2.5, f=5.1mm'),
(54, 23, 1, 'Fixed Lens'),
(54, 20, 2, '80&quot;- 100&quot;'),
(54, 21, 1, '280mm-337mm +/-50mm'),
(54, 21, 2, '280mm-337mm +/-50mm'),
(54, 23, 2, 'Fixed Lens'),
(54, 24, 1, 'Vertical +/- 40°'),
(54, 24, 2, 'Vertical +/- 40°'),
(54, 25, 1, '10W x 2'),
(54, 25, 2, '10W x 2'),
(54, 26, 1, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(54, 26, 2, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(54, 27, 1, 'VGA-In (15pin D-Sub), HDMI, Display Port, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, RS-232, 3D-Sync Out, USB miniB, USB B, Microphone (Mini-Jack), Interactive Function'),
(54, 27, 2, 'VGA-In (15pin D-Sub), HDMI, Display Port, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, RS-232, 3D-Sync Out, USB miniB, USB B, Microphone (Mini-Jack), Interactive Function'),
(53, 29, 1, '4.2 lbs (1.9 kg)'),
(53, 28, 1, '10.3&quot; x 3.0&quot; x 7.5&quot; (261 x 78 x 190mm)'),
(53, 28, 2, '10.3&quot; x 3.0&quot; x 7.5&quot; (261 x 78 x 190mm)'),
(53, 27, 2, 'HDMI v1.3, VGA-In, Composite Video, S-Video, RCA Stereo-In, Mini-Jack Audio-In, RS-232c'),
(53, 27, 1, 'HDMI v1.3, VGA-In, Composite Video, S-Video, RCA Stereo-In, Mini-Jack Audio-In, RS-232c'),
(53, 26, 2, 'SDTV(480i, 576i), EDTV (480p), HDTV (720p, 1080i/p), NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(53, 26, 1, 'SDTV(480i, 576i), EDTV (480p), HDTV (720p, 1080i/p), NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(53, 25, 2, '2 Watt Mono'),
(53, 25, 1, '2 Watt Mono'),
(53, 24, 2, '±30° Vertical'),
(53, 24, 1, '±30° Vertical'),
(53, 23, 2, '1.1:1 Manual Zoom/Focus'),
(53, 23, 1, '1.1:1 Manual Zoom/Focus'),
(53, 21, 2, '5.1 - 42.8 (1.6 - 13.0 m)'),
(53, 22, 1, 'F = 2.52-2.73, f = 24.34-25.95 mm'),
(53, 22, 2, 'F = 2.52-2.73, f = 24.34-25.95 mm'),
(53, 20, 1, '40&quot; - 300&quot; (1.0 - 7.6 m)'),
(53, 20, 2, '40&quot; - 300&quot; (1.0 - 7.6 m)'),
(53, 21, 1, '5.1 - 42.8 (1.6 - 13.0 m)'),
(53, 17, 2, '≈3000/4000 Giờ (Standard/Economy Mode)'),
(53, 17, 1, '≈3000/4000 Hours (Standard/Economy Mode)'),
(53, 29, 2, '4.2 lbs (1.9 kg)'),
(61, 28, 1, '274.6 x 212 x 100mm'),
(52, 15, 2, 'UXGA (1600 x 1200)'),
(52, 13, 2, '3200 Lumens (Typical)'),
(52, 13, 1, '3200 Lumens (Typical)'),
(52, 12, 2, 'WXGA (1280 x 800)'),
(52, 12, 1, 'WXGA (1280 x 800)'),
(52, 16, 2, '16:10 Native, 4:3 and 16:9 Compatible'),
(52, 14, 1, '3200:1 (Full On/Off)'),
(52, 14, 2, '3200:1 (Full On/Off)'),
(52, 15, 1, 'UXGA (1600 x 1200)'),
(52, 16, 1, '16:10 Native, 4:3 and 16:9 Compatible'),
(52, 27, 1, 'HDMI v1.3, DVI-I, VGA-In, Composite Video, VGA-Out, RCA Stereo-In, Mini-Jack Audio-In (x2), Mini-Jack Audio-Out, RJ45, RS-232c, 12V trigger, Microphone-In, USB (Service)'),
(52, 26, 2, 'SDTV (480i), EDTV (480p), HDTV (576i, 720p, 1080i) thru RGB, NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(52, 26, 1, 'SDTV (480i), EDTV (480p), HDTV (576i, 720p, 1080i) thru RGB, NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(52, 25, 2, '10 Watt Mono'),
(52, 25, 1, '10 Watt Mono'),
(52, 24, 2, '±15°, Auto-Keystone'),
(52, 24, 1, '±15°, Auto-Keystone'),
(52, 23, 2, '1.15:1 Manual Zoom/Focus'),
(52, 23, 1, '1.15:1 Manual Zoom/Focus'),
(52, 22, 2, 'F = 2.55-2.72, f = 21.3-24.5 mm'),
(52, 22, 1, 'F = 2.55-2.72, f = 21.3-24.5 mm'),
(52, 21, 2, '4.3 - 37.3 (1.3 - 11.4 m)'),
(52, 21, 1, '4.3 - 37.3 (1.3 - 11.4 m)'),
(52, 17, 2, '≈4000/6000 Giờ (Boost/Standard Mode), 220W'),
(52, 20, 1, '40&quot; - 300&quot; (1.0 - 7.6 m)'),
(52, 20, 2, '40&quot; - 300&quot; (1.0 - 7.6 m)'),
(52, 17, 1, '≈4000/6000 Hours (Boost/Standard Mode), 220W'),
(51, 12, 2, 'XGA (1024 x 768)'),
(51, 12, 1, 'XGA (1024 x 768)'),
(51, 13, 1, '3600 Lumens (Typical)'),
(51, 15, 1, 'UXGA (1600 x 1200)'),
(51, 13, 2, '3600 Lumens (Typical)'),
(51, 14, 1, '3000:1 (Full On/Off)'),
(51, 14, 2, '3000:1 (Full On/Off)'),
(51, 16, 2, '4:3 Native, 16:9 &amp; 16:10 Compatible'),
(51, 16, 1, '4:3 Native, 16:9 &amp; 16:10 Compatible'),
(51, 15, 2, 'UXGA (1600 x 1200)'),
(51, 27, 1, 'HDMI v1.3, VGA-In, Composite Video, VGA-Out, RCA Stereo-In, Mini-Jack Audio-In, Mini-Jack Audio-Out, RJ45, RS-232c, Microphone-In, USB (Service)'),
(51, 26, 2, 'SDTV (480i), EDTV (480p), HDTV (576i, 720p, 1080i/p), NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(51, 26, 1, 'SDTV (480i), EDTV (480p), HDTV (576i, 720p, 1080i/p), NTSC/NTSC 4.43, PAL B/G/H/I/M/N 60, SECAM'),
(51, 25, 2, '10 Watt Mono'),
(51, 25, 1, '10 Watt Mono'),
(51, 24, 2, '±15°, Auto-Keystone'),
(51, 22, 2, 'F = 2.52-2.73, f = 24.34-25.95 mm'),
(51, 23, 1, '1.2:1 Manual Zoom/Focus'),
(51, 23, 2, '1.2:1 Manual Zoom/Focus'),
(51, 24, 1, '±15°, Auto-Keystone'),
(51, 21, 1, '3.2 - 38.4 (1.0 - 11.7 m)'),
(51, 21, 2, '3.2 - 38.4 (1.0 - 11.7 m)'),
(51, 22, 1, 'F = 2.52-2.73, f = 24.34-25.95 mm'),
(51, 20, 2, '30&quot; to 300&quot; (0.8 to 7.6 m)'),
(51, 20, 1, '30&quot; to 300&quot; (0.8 to 7.6 m)'),
(51, 17, 2, '≈2500/4000 Giờ (Boost/Standard Mode), 230W'),
(51, 17, 1, '≈2500/4000 Hours (Boost/Standard Mode), 230W'),
(50, 27, 1, 'VGA-In (15pin D-Sub), HDMI, DVI-D, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, 12v Trigger, RS-232'),
(50, 26, 2, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(50, 26, 1, 'SDTV(480i, 576i), EDTV (480p, 576p), HDTV (720p, 1080i/p), NTSC (M, 3.58/4.43 MHz), PAL (B, D, G, H, I, M, N), SECAM (B, D, G, K, K1, L)'),
(50, 25, 2, '5W'),
(50, 25, 1, '5W'),
(50, 24, 2, 'Vertical +/- 15°'),
(50, 24, 1, 'Vertical +/- 15°'),
(50, 23, 2, '1.2x'),
(50, 23, 1, '1.2x'),
(50, 22, 2, 'F = 2.6 - 2.81, f = 26.01 - 29.84 mm'),
(50, 21, 1, '1.5 - 10 m'),
(50, 21, 2, '1.5 - 10 m'),
(50, 22, 1, 'F = 2.6 - 2.81, f = 26.01 - 29.84 mm'),
(50, 19, 2, '0.7” DMD'),
(50, 20, 1, '23.4&quot; - 300&quot;'),
(50, 20, 2, '23.4&quot; - 300&quot;'),
(50, 19, 1, '0.7” DMD'),
(50, 18, 2, 'Single chip DLP® Technology by Texas Instruments'),
(50, 18, 1, 'Single chip DLP® Technology by Texas Instruments'),
(50, 17, 2, '2,000/2,500 Giờ (Bình thường / Tiết kiệm) 300W/250W'),
(50, 17, 1, '2,000/2,500 Hours (Normal / Eco. Mode) 300W/250W'),
(50, 16, 2, '4:3'),
(50, 16, 1, '4:3'),
(50, 15, 2, 'UXGA (1600 x 1200) @60Hz'),
(50, 15, 1, 'UXGA (1600 x 1200) @60Hz'),
(50, 13, 2, '5200 ANSI Lumens'),
(50, 14, 1, '2,400:1'),
(50, 14, 2, '2,400:1'),
(50, 12, 2, 'XGA (1024 x 768)'),
(50, 13, 1, '5200 ANSI Lumens'),
(50, 12, 1, 'XGA (1024 x 768)'),
(50, 27, 2, 'VGA-In (15pin D-Sub), HDMI, DVI-D, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, 12v Trigger, RS-232'),
(74, 88, 2, '1 âm lượng tổng, 1 Bass, 1 Treble, 4 âm lượng đầu vào, đầu vào Tel. và điều khiển âm lượng theo dõi, 3 công tắc chọn Rec (MPA-60R), Echo (MPA-60ECHO, PA-62ECHO)'),
(74, 89, 1, 'MP3-400: MP3 + Ghi âm'),
(74, 89, 2, 'MP3-400: MP3 + Ghi âm'),
(74, 90, 1, '420 x 260 x 88mm'),
(74, 90, 2, '420 x 260 x 88mm'),
(74, 91, 1, '6,5Kg'),
(74, 91, 2, '6,5Kg'),
(75, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(75, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(75, 81, 1, 'RMS 60W/ MAX 70V'),
(75, 81, 2, 'RMS 60W/ MAX 70V'),
(75, 82, 1, '80Hz - 16KHz (±3dB)'),
(75, 82, 2, '80Hz - 16KHz (±3dB)'),
(75, 83, 1, '≤1%'),
(75, 83, 2, '≤1%'),
(75, 84, 1, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(75, 84, 2, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(75, 85, 1, 'COM/ 4Ω'),
(75, 85, 2, 'COM/ 4Ω'),
(75, 86, 1, '25V/ 70V/ 100V'),
(75, 86, 2, '25V/ 70V/ 100V'),
(75, 87, 1, 'MIC: ≥65dB/ AUX: ≥80dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(75, 87, 2, 'MIC: ≥65dB/ AUX: ≥80dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(75, 88, 1, '1 âm lượng tổng, 1 Bass, 1 Treble, 4 âm lượng đầu vào, đầu vào Tel. và điều khiển âm lượng theo dõi, 3 công tắc chọn Rec (MPA-60R), Echo (MPA-60ECHO, PA-62ECHO)'),
(75, 88, 2, '1 âm lượng tổng, 1 Bass, 1 Treble, 4 âm lượng đầu vào, đầu vào Tel. và điều khiển âm lượng theo dõi, 3 công tắc chọn Rec (MPA-60R), Echo (MPA-60ECHO, PA-62ECHO)'),
(75, 89, 1, 'MP3-300: MP3 + chức năng ECHO'),
(75, 89, 2, 'MP3-300: MP3 + chức năng ECHO'),
(75, 90, 1, '420 x 260 x 88mm'),
(75, 90, 2, '420 x 260 x 88mm'),
(75, 91, 1, '6,5Kg'),
(75, 91, 2, '6,5Kg'),
(76, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(76, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(76, 81, 1, 'RMS 120W/ MAX 170W'),
(76, 81, 2, 'RMS 120W/ MAX 170W'),
(76, 82, 1, '80Hz - 16KHz (±3dB)'),
(76, 82, 2, '80Hz - 16KHz (±3dB)'),
(76, 83, 1, '≤1%'),
(76, 83, 2, '≤1%'),
(76, 84, 1, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(76, 84, 2, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(76, 86, 1, '25V/ 70V/ 100V'),
(76, 86, 2, '25V/ 70V/ 100V'),
(76, 85, 1, 'COM/ 4Ω'),
(76, 85, 2, 'COM/ 4Ω'),
(76, 87, 1, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(76, 87, 2, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(76, 88, 1, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(76, 88, 2, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(76, 89, 1, 'MP3-300: máy nghe nhạc MP3'),
(76, 89, 2, 'MP3-300: máy nghe nhạc MP3'),
(76, 90, 1, '420 x 260 x 88mm'),
(76, 90, 2, '420 x 260 x 88mm'),
(76, 91, 1, '10,2Kg'),
(76, 91, 2, '10,2Kg'),
(77, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(77, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(77, 81, 1, 'RMS 120W/ MAX 170W'),
(77, 81, 2, 'RMS 120W/ MAX 170W'),
(77, 82, 1, '80Hz - 16KHz (±3dB)'),
(77, 82, 2, '80Hz - 16KHz (±3dB)'),
(77, 84, 1, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(77, 84, 2, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(77, 86, 1, '25V/ 70V/ 100V'),
(77, 86, 2, '25V/ 70V/ 100V'),
(77, 85, 1, 'COM/ 4Ω'),
(77, 85, 2, 'COM/ 4Ω'),
(77, 92, 1, '4 lựa chọn phân vùng Z1 ~ Z4: 100V (333Ω)'),
(77, 92, 2, '4 lựa chọn phân vùng Z1 ~ Z4: 100V (333Ω)'),
(77, 87, 1, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(77, 87, 2, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(77, 88, 1, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(77, 88, 2, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(77, 89, 1, 'MP3-300: máy nghe nhạc MP3'),
(77, 89, 2, 'MP3-300: máy nghe nhạc MP3'),
(77, 90, 1, '420 x 260 x 88mm'),
(77, 90, 2, '420 x 260 x 88mm'),
(77, 91, 1, '10,2Kg'),
(77, 91, 2, '10,2Kg'),
(78, 88, 2, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(78, 88, 1, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(78, 87, 1, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(78, 87, 2, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(78, 86, 2, '25V/ 70V/ 100V'),
(78, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(78, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(78, 81, 1, 'RMS 120W/ MAX 170W'),
(78, 81, 2, 'RMS 120W/ MAX 170W'),
(78, 82, 1, '80Hz - 16KHz (±3dB)'),
(78, 82, 2, '80Hz - 16KHz (±3dB)'),
(78, 83, 1, '≤1%'),
(78, 83, 2, '≤1%'),
(78, 84, 1, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(78, 84, 2, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(78, 85, 1, 'COM/ 4Ω'),
(78, 85, 2, 'COM/ 4Ω'),
(78, 86, 1, '25V/ 70V/ 100V'),
(78, 89, 1, 'MP3-400: máy nghe nhạc MP3 + Ghi âm'),
(78, 89, 2, 'MP3-400: máy nghe nhạc MP3 + Ghi âm'),
(78, 90, 1, '420 x 260 x 88mm'),
(78, 90, 2, '420 x 260 x 88mm'),
(78, 92, 1, '4 lựa chọn phân vùng Z1 ~ Z4: 100V (333Ω)'),
(78, 92, 2, '4 lựa chọn phân vùng Z1 ~ Z4: 100V (333Ω)'),
(79, 80, 1, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(79, 80, 2, 'AC 115V/ 230V 50Hz/ 60Hz; DC 24V'),
(79, 81, 1, 'RMS 120W/ MAX 170W'),
(79, 81, 2, 'RMS 120W/ MAX 170W'),
(79, 82, 1, '80Hz - 16KHz (±3dB)'),
(79, 82, 2, '80Hz - 16KHz (±3dB)'),
(79, 83, 1, '≤1%'),
(79, 83, 2, '≤1%'),
(79, 84, 1, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(79, 84, 2, 'MIC: -52dBv cân bằng/ Phantom: -52dBv/ 24V cân bằng/ Line: -10dBv không cân bằng\r\nAUX: -6dBv không cân bằng/ AMP. in: 0dBv không cân bằng/ Tel: -10dBv cân bằng'),
(79, 86, 1, '25V/ 70V/ 100V'),
(79, 86, 2, '25V/ 70V/ 100V'),
(79, 85, 1, 'COM/ 4Ω'),
(79, 85, 2, 'COM/ 4Ω'),
(79, 87, 1, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(79, 87, 2, 'MIC: ≥65dB/ AUX: ≥80 dB/ Phantom: ≥65dB/ Line: ≥75dB'),
(79, 88, 1, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(79, 88, 2, '1 âm lượng tổng, 1 Treble, 1 Bass, 5 âm lượng đầu vào, đầu vào Tel. và điều chỉnh âm lượng theo dõi,\r\ncông tắc chọn 4 vùng ra (MPA-120S, MPA-120RS). Chức năng ECHO (MPA-120 ECHO), công tắc chọn ghi âm (MPA-120RS)'),
(79, 89, 1, 'MP3-300: máy nghe nhạc MP3'),
(79, 89, 2, 'MP3-300: máy nghe nhạc MP3'),
(79, 90, 1, '420 x 260 x 88mm'),
(79, 90, 2, '420 x 260 x 88mm'),
(80, 27, 1, 'VGA in x2, VGA out x1, HDMI x1, S-Video x1, Composite Video x1, Audio in –RCA (L/R) x2, Audio in – 3.5mm jack x2, Audio out x1,microphone x1, Mini USB x1, RS232 D-Sub 9pin x1, DC 12V output x1'),
(80, 23, 2, 'Fix zoom lens'),
(80, 23, 1, 'Fix zoom lens'),
(80, 22, 2, 'F/2.6; f=7.35mm, Fixed Zoom'),
(80, 21, 2, '597mm – 731mm (for 89” - 670mm)'),
(80, 21, 1, '597mm – 731mm (for 89” - 670mm)'),
(80, 20, 1, '70” – 100” Diagonal 16:10'),
(80, 17, 2, '3000 hours (normal mode), 4000 hours (eco mode)'),
(80, 20, 2, '70” – 100” Diagonal 16:10'),
(80, 17, 1, '3000 hours (normal mode), 4000 hours (eco mode)'),
(80, 15, 2, 'UXGA 1600 x 1200'),
(80, 22, 1, 'F/2.6; f=7.35mm, Fixed Zoom'),
(80, 14, 1, '3000:1 Native, 15000:1 Hi-Contrast mode'),
(80, 14, 2, '3000:1 Native, 15000:1 Hi-Contrast mode'),
(80, 15, 1, 'UXGA 1600 x 1200'),
(80, 12, 1, 'WXGA 1280 x 800'),
(80, 12, 2, 'WXGA 1280 x 800'),
(80, 13, 1, '3500 ANSI Lumens (BRIGHT mode)'),
(80, 13, 2, '3500 ANSI Lumens (BRIGHT mode)'),
(80, 27, 2, 'VGA in x2, VGA out x1, HDMI x1, S-Video x1, Composite Video x1, Audio in –RCA (L/R) x2, Audio in – 3.5mm jack x2, Audio out x1,microphone x1, Mini USB x1, RS232 D-Sub 9pin x1, DC 12V output x1'),
(80, 26, 1, 'UXGA, SXGA, WXGA, HD, XGA, SVGA, VGA, Mac'),
(80, 26, 2, 'UXGA, SXGA, WXGA, HD, XGA, SVGA, VGA, Mac'),
(81, 93, 1, 'Up to true 10 touch multitouch interface. IR camera and Laser Curtain module included'),
(81, 93, 2, 'Up to true 10 touch multitouch interface. IR camera and Laser Curtain module included'),
(81, 18, 1, 'Ultra Short Throw lens. Single 0.55” XGA S450DMD + DDP4421 chip DLP Technology by Texas Instruments'),
(81, 18, 2, 'Ultra Short Throw lens. Single 0.55” XGA S450DMD + DDP4421 chip DLP Technology by Texas Instruments'),
(81, 12, 1, 'XGA 1024 x 768'),
(81, 12, 2, 'XGA 1024 x 768'),
(81, 13, 1, '3000 ANSI Lumens (BRIGHT mode)'),
(81, 13, 2, '3000 ANSI Lumens (BRIGHT mode)'),
(81, 14, 1, '3000:1 Native, 15000:1 Hi-Contrast mode'),
(81, 14, 2, '3000:1 Native, 15000:1 Hi-Contrast mode'),
(81, 17, 1, '3000 hours (normal mode), 4000 hours (eco mode)'),
(81, 17, 2, '3000 hours (normal mode), 4000 hours (eco mode)'),
(81, 22, 1, 'F/2.6; f=7.35mm, Fixed Zoom'),
(81, 22, 2, 'F/2.6; f=7.35mm, Fixed Zoom'),
(81, 20, 1, '60” – 90” Diagonal 4:3'),
(81, 20, 2, '60” – 90” Diagonal 4:3'),
(81, 21, 1, '597mm – 731mm (for 78” - 691mm)'),
(81, 21, 2, '597mm – 731mm (for 78” - 691mm)'),
(81, 23, 1, 'Fix zoom lens'),
(81, 23, 2, 'Fix zoom lens'),
(81, 15, 1, 'UXGA 1600 x 1200'),
(81, 15, 2, 'UXGA 1600 x 1200'),
(81, 26, 1, 'UXGA, SXGA, WXGA, HD, XGA, SVGA, VGA, Mac'),
(81, 26, 2, 'UXGA, SXGA, WXGA, HD, XGA, SVGA, VGA, Mac'),
(81, 27, 1, 'VGA in x2, VGA out x1, HDMI x1, S-Video x1, Composite Video x1, Audio in –RCA (L/R) x2, Audio in – 3.5mm jack x2, Audio out x1,microphone x1, Mini USB x1, RS232 D-Sub 9pin x1, DC 12V output x1'),
(81, 27, 2, 'VGA in x2, VGA out x1, HDMI x1, S-Video x1, Composite Video x1, Audio in –RCA (L/R) x2, Audio in – 3.5mm jack x2, Audio out x1,microphone x1, Mini USB x1, RS232 D-Sub 9pin x1, DC 12V output x1'),
(81, 16, 1, '4:3 Native, 16:9/16:10 Compatible'),
(81, 16, 2, '4:3 Native, 16:9/16:10 Compatible'),
(81, 30, 1, '100-240V, 50-60Hz'),
(81, 30, 2, '100-240V, 50-60Hz'),
(82, 18, 1, 'Short Throw lens. Single 0.55” XGA S450DMD + DDP2431 chip DLP Technology by Texas Instruments'),
(82, 18, 2, 'Short Throw lens. Single 0.55” XGA S450DMD + DDP2431 chip DLP Technology by Texas Instruments'),
(82, 12, 1, 'XGA 1024 x 768'),
(82, 12, 2, 'XGA 1024 x 768'),
(82, 13, 1, '3000 ANSI Lumens'),
(82, 13, 2, '3000 ANSI Lumens'),
(82, 14, 1, '3000:1 Native, 18000:1 Hi-Contrast mode'),
(82, 14, 2, '3000:1 Native, 18000:1 Hi-Contrast mode'),
(82, 17, 1, '3500 hours (normal mode), 5000 hours (eco mode)'),
(82, 17, 2, '3500 hours (normal mode), 5000 hours (eco mode)'),
(82, 22, 1, 'F/2.8; f=7.26mm, Fixed Zoom'),
(82, 22, 2, 'F/2.8; f=7.26mm, Fixed Zoom'),
(82, 21, 1, '750-1100 mm ( for 78” - 1050mm)'),
(82, 21, 2, '750-1100 mm ( for 78” - 1050mm)'),
(82, 20, 1, '60” – 90” Diagonal 4:3'),
(82, 20, 2, '60” – 90” Diagonal 4:3'),
(82, 23, 1, 'Fix zoom lens'),
(82, 23, 2, 'Fix zoom lens'),
(82, 15, 1, 'UXGA 1600 x 1200'),
(82, 15, 2, 'UXGA 1600 x 1200'),
(82, 26, 1, 'UXGA, SXGA, WXGA, HD, XGA, SVGA, VGA, Mac'),
(82, 26, 2, 'UXGA, SXGA, WXGA, HD, XGA, SVGA, VGA, Mac'),
(82, 27, 1, 'VGA in x2, VGA out x1, HDMI x1, S-Video x1, RJ45 x1,Composite Video x1, Audio in – 3.5 mm jack x1, Audio out x1, USB typ B x1, RS232 D-Sub 9pin x1'),
(82, 27, 2, 'VGA in x2, VGA out x1, HDMI x1, S-Video x1, RJ45 x1,Composite Video x1, Audio in – 3.5 mm jack x1, Audio out x1, USB typ B x1, RS232 D-Sub 9pin x1'),
(82, 16, 1, '4:3 Native, 16:9/16:10 Compatible'),
(82, 16, 2, '4:3 Native, 16:9/16:10 Compatible'),
(82, 30, 1, '100-240V, 50-60Hz'),
(82, 30, 2, '100-240V, 50-60Hz'),
(53, 16, 1, '4:3 Native, 16:9 Compatible'),
(53, 16, 2, '4:3 Native, 16:9 Compatible'),
(53, 15, 1, 'UXGA (1600 x 1200)'),
(53, 15, 2, 'UXGA (1600 x 1200)'),
(53, 14, 1, '3000:1 (Full On/Off)'),
(53, 14, 2, '3000:1 (Full On/Off)'),
(53, 13, 2, '3200 Lumens (Typical)'),
(53, 13, 1, '3200 Lumens (Typical)'),
(53, 12, 2, 'XGA (1024 x 768)'),
(53, 12, 1, 'XGA (1024 x 768)'),
(61, 28, 2, '274.6 x 212 x 100mm'),
(61, 29, 1, '2,3 kg'),
(61, 29, 2, '2,3 kg'),
(61, 30, 1, 'AC 100-240V, 50 / 60Hz Consumption: 200W/240W (Dynamic Eco. / Eco. / Normal Mode), &lt;0.5W(Standby)'),
(61, 30, 2, 'AC 100-240V, 50 / 60Hz Consumption: 200W/240W (Dynamic Eco. / Eco. / Normal Mode), &lt;0.5W(Standby)'),
(61, 31, 1, 'Yes (DLP link, PC+Video)'),
(61, 31, 2, 'Có (DLP link, PC+Video)'),
(58, 28, 1, '274.6 x 212 x 100mm'),
(58, 28, 2, '274.6 x 212 x 100mm'),
(58, 29, 1, '2.3kg (5lbs)'),
(58, 29, 2, '2.3kg (5lbs)'),
(58, 30, 1, 'AC 100-240V, 50/60Hz'),
(58, 30, 2, 'AC 100-240V, 50/60Hz');
INSERT INTO `product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(58, 31, 1, 'Yes (Supports DLP Link™)'),
(58, 31, 2, 'Yes (Supports DLP Link™)'),
(56, 28, 2, '11.3&quot; x 4.9&quot; x 14.7&quot; (287.7 x 126.6 x 374.5 mm)'),
(56, 29, 1, '11 lbs (5.0 kg)'),
(56, 29, 2, '11 lbs (5.0 kg)'),
(56, 30, 1, 'AC 100-240V, 50/60Hz Consumption: 290W (Standard Mode), 250W (Economy Mode), &lt;0.5W (Standby Mode)'),
(56, 30, 2, 'AC 100-240V, 50/60Hz Consumption: 290W (Standard Mode), 250W (Economy Mode), &lt;0.5W (Standby Mode)'),
(56, 31, 1, 'Full 3D (Via DLP® Link™, BluRay 3D, Broadcast 3D, and PC-3D)'),
(56, 31, 2, 'Full 3D (Via DLP® Link™, BluRay 3D, Broadcast 3D, and PC-3D)'),
(54, 28, 1, '287.7 x 374.5 x 122.6mm'),
(54, 28, 2, '287.7 x 374.5 x 122.6mm'),
(54, 29, 1, '5 kg'),
(54, 29, 2, '5 kg'),
(54, 30, 1, 'AC 100-240V, 50/60Hz Consumption: 290W (Normal Mode), 250W (Eco. Mode), &lt;0.5W (Standby Mode)'),
(54, 30, 2, 'AC 100-240V, 50/60Hz Consumption: 290W (Normal Mode), 250W (Eco. Mode), &lt;0.5W (Standby Mode)'),
(54, 31, 1, 'Yes (DLP link, PC+Video)'),
(54, 31, 2, 'Có (DLP link, PC+Video)'),
(52, 27, 2, 'HDMI v1.3, DVI-I, VGA-In, Composite Video, VGA-Out, RCA Stereo-In, Mini-Jack Audio-In (x2), Mini-Jack Audio-Out, RJ45, RS-232c, 12V trigger, Microphone-In, USB (Service)'),
(52, 28, 1, '12.0&quot; x 4.1&quot; x 8.1&quot; (306 x 104 x 206 mm)'),
(52, 28, 2, '12.0&quot; x 4.1&quot; x 8.1&quot; (306 x 104 x 206 mm)'),
(52, 29, 1, '6.0 lbs (2.7 kg)'),
(52, 29, 2, '6.0 lbs (2.7 kg)'),
(57, 27, 2, 'HDMI v1.3, DVI-I, VGA-In, VGA-Out, Composite Video, RCA Stereo-In, Mini-Jack Audio-In, Mini-Jack Audio-Out, RJ45, RS-232c, 12V trigger, Microphone-In, USB (Service)'),
(57, 28, 1, '12.0&quot; x 4.1&quot; x 8.1&quot; (306 x 104 x 206 mm)'),
(57, 28, 2, '12.0&quot; x 4.1&quot; x 8.1&quot; (306 x 104 x 206 mm)'),
(57, 29, 1, '6.0 lbs (2.7 kg)'),
(57, 29, 2, '6.0 lbs (2.7 kg)'),
(51, 27, 2, 'HDMI v1.3, VGA-In, Composite Video, VGA-Out, RCA Stereo-In, Mini-Jack Audio-In, Mini-Jack Audio-Out, RJ45, RS-232c, Microphone-In, USB (Service)'),
(51, 28, 1, '12.0&quot; x 4.1&quot; x 8.1&quot; (306 x 104 x 206 mm)'),
(51, 28, 2, '12.0&quot; x 4.1&quot; x 8.1&quot; (306 x 104 x 206 mm)'),
(51, 29, 1, '6.0 lbs (2.7 kg)'),
(51, 29, 2, '6.0 lbs (2.7 kg)'),
(60, 28, 1, '285 x 261 x 121.8 mm'),
(60, 28, 2, '285 x 261 x 121.8 mm'),
(60, 29, 1, '3,15 kg'),
(60, 29, 2, '3,15 kg'),
(60, 30, 1, 'AC 100-240V, 50/60Hz Consumption: 350W (Normal Mode) 300W (Eco. Mode) &lt;0.5W (Standby Mode)'),
(60, 30, 2, 'AC 100-240V, 50/60Hz Consumption: 350W (Normal Mode) 300W (Eco. Mode) &lt;0.5W (Standby Mode)'),
(60, 31, 1, 'Yes (DLP link, PC+Video)'),
(60, 31, 2, 'Có (DLP link, PC+Video)'),
(50, 28, 1, '332.8 x 254.6 x 113 mm'),
(50, 28, 2, '332.8 x 254.6 x 113 mm'),
(50, 29, 1, '3,5 kg'),
(50, 29, 2, '3,5 kg'),
(50, 30, 1, 'AC 100-240V, 50/60Hz Consumption: 320W (Eco. Mode), 380W (Normal Mode), &lt;1W (Standby Mode)'),
(50, 30, 2, 'AC 100-240V, 50/60Hz Consumption: 320W (Eco. Mode), 380W (Normal Mode), &lt;1W (Standby Mode)'),
(59, 29, 1, '8.3lbs (3.76kg)'),
(59, 29, 2, '8.3lbs (3.76kg)'),
(59, 30, 1, 'AC 100-240V, 50/60Hz Consumption: 370W (Normal Mode), 300W (Economy Mode), &lt; 0.5W (Standby Mode)'),
(59, 30, 2, 'AC 100-240V, 50/60Hz Consumption: 370W (Normal Mode), 300W (Economy Mode), &lt; 0.5W (Standby Mode)'),
(59, 31, 1, 'Full HD 3D (Via DLP® Link™, BluRay 3D)'),
(59, 31, 2, 'Full HD 3D (Via DLP® Link™, BluRay 3D)'),
(55, 27, 2, 'VGA-In (15pin D-Sub), HDMI, Display Port, S-Video, Composite Video, Audio-In (RCA), Audio-In (Mini-Jack), VGA-Out (15pin D-Sub), Audio-Out (Mini-Jack), RJ45, RS-232, 3D-Sync Out, USB B, Microphone (Mini-Jack)'),
(55, 28, 1, '287.7 x 374.5 x 122.6mm'),
(55, 28, 2, '287.7 x 374.5 x 122.6mm'),
(55, 29, 1, '5 kg'),
(55, 29, 2, '5 kg'),
(55, 30, 1, 'AC 100-240V, 50/60Hz Consumption: 290W (Normal Mode), 250W (Eco. Mode), &lt;0.5W (Standby Mode)'),
(55, 30, 2, 'AC 100-240V, 50/60Hz Consumption: 290W (Normal Mode), 250W (Eco. Mode), &lt;0.5W (Standby Mode)'),
(55, 31, 1, 'Yes (DLP link, PC+Video)'),
(55, 31, 2, 'Có (DLP link, PC+Video)'),
(83, 105, 2, 'Có thể dùng tay hoặc dùng bút chỉ  chuyên dụng'),
(83, 105, 1, 'Có thể dùng tay hoặc dùng bút chỉ  chuyên dụng'),
(83, 104, 1, '120 dot/sencond'),
(83, 104, 2, '120 dot/sencond'),
(83, 103, 2, '4 điểm'),
(83, 103, 1, '4 điểm'),
(83, 102, 2, 'A-B'),
(83, 102, 1, 'A-B'),
(83, 101, 2, 'USB'),
(83, 101, 1, 'USB'),
(83, 100, 2, '0,1mm'),
(83, 100, 1, '0,1mm'),
(83, 99, 2, '8ms'),
(83, 99, 1, '8ms'),
(83, 98, 2, '4096 x 4096 Pixels'),
(83, 98, 1, '4096 x 4096 Pixels'),
(83, 97, 2, '3:4'),
(83, 97, 1, '3:4'),
(83, 96, 2, '1540 mm x 1160 mm'),
(83, 96, 1, '1540 mm x 1160 mm'),
(83, 95, 2, 'Bằng Bút điện tử, bằng tay, bằng gậy điện tử'),
(83, 95, 1, 'Bằng Bút điện tử, bằng tay, bằng gậy điện tử'),
(83, 94, 2, 'Hồng ngoại'),
(83, 94, 1, 'Hồng ngoại'),
(83, 106, 1, 'N/A'),
(83, 106, 2, 'N/A'),
(83, 107, 1, '1824 x 1310 x 50 mm'),
(83, 107, 2, '1824 x 1310 x 50 mm'),
(83, 108, 1, 'Windows 2000/ XP/ Vista/ Win7'),
(83, 108, 2, 'Windows 2000/ XP/ Vista/ Win7');

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

CREATE TABLE IF NOT EXISTS `product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(63, 1, 'MaxClone Y220', '&lt;p&gt;We have been devoting ourselves to developing such technology, which the&lt;/p&gt;&lt;p&gt;computer sources can be simultaneously shared by multiple users. That greatly promoted&lt;/p&gt;&lt;p&gt;our product research and development.&lt;/p&gt;&lt;p&gt;Y200W uses the popular Wince system, developed based on Wince 6.0. The system is&lt;/p&gt;&lt;p&gt;succinct, stable and efficient. 800MHz arm11 CPU, 256M bytes DDR2 400, 64M bytes Nand Flash .&lt;/p&gt;', '', 'MaxClone Y220', '', ''),
(63, 2, 'MaxClone Y220', '&lt;p&gt;Giải pháp tiết kiệm, toàn diện và hoàn hảo nhất dành cho các hệ thống phòng máy vi tính học đường.&lt;/p&gt;&lt;p&gt;Hướng đến khả năng tiết kiệm chi phí, điện năng ở mức thấp nhất, MaxClone Y220 sử dụng bộ chia sẻ tài nguyên từ một máy server để làm dữ liệu cho riêng mình.&lt;/p&gt;&lt;p&gt;Không tốn nhiều công cài đặt, phần mềm quản lý dễ sử dụng là thế mạnh của MaxClone Y220&lt;/p&gt;', '', 'MaxClone Y220', '', ''),
(80, 2, 'PJ3000i UST-W DLP', '&lt;ul style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: slab300, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;True multi-touch – With its pre-mounted IR camera and the included Laser Curtain module this wide screen projector creates a real multitouch experience. This projector changes a regular whiteboard into the ultimate 10-touch interactive whiteboard.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Laser Curtain module powered from the projector – no extra cables needed.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;USB projector to PC connection for touch interface.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;No need for pen – just use your fi nger to touch the board and control the computer.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Ultra Short Throw Lens – position the PJ3000i UST-W DLP even closer to the wall so that the light beam will not shine into your eyes. Project an impressive 89”&amp;nbsp;diagonal image just 67 cm from the screen. Stand alone or wall mounted the PJ3000i UST-W DLP eliminates shadows on the screen for easy presentations.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Perfect for teaching – maximize space in the classroom for teachers and students. Teachers can stand close to the whiteboard without having the intense light from the projector shining directly into their eyes.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Detailed Projection – easy to read text and graphs thanks to the incredibly high native contrast ratios.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Secure – Kensington Lock, security bar and password protection make your projector secure and act as a theft deterrent. A customized start-up screen helps identify who the projector belongs to. Keypad lock prevents unauthorized adjustments and ensures the projector can only be controlled via the remote control or network.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Brilliant Colors That Last – project stunning, vibrant and accurate color images that won’t deteriorate over time thanks to BrilliantColor™ and DLP® technology.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Future-proof technology for the classroom – engage and inspire your students with 3D lessons in biology, math, geography and much more.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Connect with Ease – the PJ3000i UST-W DLP easily connects to multiple devices such as computers and laptops.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;True HDMI – project crystal clear images using HDMI v1.3 input. Hassle-free projection from a widescreen computer/HD source with a single HDMI cable – no need for separate audio cables.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Includes the best software pack in its class: TB Comenius Offi ce, RM Easiteach Next Generation and MyScript Stylus.&lt;/li&gt;&lt;/ul&gt;', '', 'PJ3000i UST-W DLP', '', ''),
(80, 1, 'PJ3000i UST-W DLP', '&lt;ul style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: slab300, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;True multi-touch – With its pre-mounted IR camera and the included Laser Curtain module this wide screen projector creates a real multitouch experience. This projector changes a regular whiteboard into the ultimate 10-touch interactive whiteboard.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Laser Curtain module powered from the projector – no extra cables needed.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;USB projector to PC connection for touch interface.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;No need for pen – just use your fi nger to touch the board and control the computer.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Ultra Short Throw Lens – position the PJ3000i UST-W DLP even closer to the wall so that the light beam will not shine into your eyes. Project an impressive 89”&amp;nbsp;diagonal image just 67 cm from the screen. Stand alone or wall mounted the PJ3000i UST-W DLP eliminates shadows on the screen for easy presentations.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Perfect for teaching – maximize space in the classroom for teachers and students. Teachers can stand close to the whiteboard without having the intense light from the projector shining directly into their eyes.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Detailed Projection – easy to read text and graphs thanks to the incredibly high native contrast ratios.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Secure – Kensington Lock, security bar and password protection make your projector secure and act as a theft deterrent. A customized start-up screen helps identify who the projector belongs to. Keypad lock prevents unauthorized adjustments and ensures the projector can only be controlled via the remote control or network.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Brilliant Colors That Last – project stunning, vibrant and accurate color images that won’t deteriorate over time thanks to BrilliantColor™ and DLP® technology.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Future-proof technology for the classroom – engage and inspire your students with 3D lessons in biology, math, geography and much more.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Connect with Ease – the PJ3000i UST-W DLP easily connects to multiple devices such as computers and laptops.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;True HDMI – project crystal clear images using HDMI v1.3 input. Hassle-free projection from a widescreen computer/HD source with a single HDMI cable – no need for separate audio cables.&lt;/li&gt;&lt;li style=&quot;color: rgb(137, 139, 142);&quot;&gt;Includes the best software pack in its class: TB Comenius Offi ce, RM Easiteach Next Generation and MyScript Stylus.&lt;/li&gt;&lt;/ul&gt;', '', 'PJ3000i UST-W DLP', '', ''),
(79, 2, 'MPA-120ECHO', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/60Hz; DC 24V&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; Đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP; đầu ra LINE (MPA-120RS)&lt;/p&gt;&lt;p&gt;• MP3-400: máy nghe nhạc MP3 + giao diện USB/ SD/ MMC với chức năng ghi âm, có 4 phân vùng lựa chọn (MPA-120RS); MP3-300: máy nghe nhạc MP3 giao diện USB/ SD, chức năng Echo c ó 3 đầu vào Mic (MPA-120 ECHO)&lt;/p&gt;&lt;p&gt;• 10 đèn Led hiển thị mức đầu ra&lt;/p&gt;', 'MPA-120ECHO', 'MPA-120ECHO', '', ''),
(79, 1, 'MPA-120ECHO', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/60Hz; DC 24V&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; Đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP; đầu ra LINE (MPA-120RS)&lt;/p&gt;&lt;p&gt;• MP3-400: máy nghe nhạc MP3 + giao diện USB/ SD/ MMC với chức năng ghi âm, có 4 phân vùng lựa chọn (MPA-120RS); MP3-300: máy nghe nhạc MP3 giao diện USB/ SD, chức năng Echo c ó 3 đầu vào Mic (MPA-120 ECHO)&lt;/p&gt;&lt;p&gt;• 10 đèn Led hiển thị mức đầu ra&lt;img src=&quot;http://www.huuhanh.com.vn/image/catalog/Products/Audio/SHOW/Amply/MPA-120RS/front.jpg&quot;&gt;&lt;/p&gt;', 'MPA-120ECHO', 'MPA-120ECHO', '', ''),
(78, 2, 'MPA-120RS', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/60Hz; DC 24V&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; Đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP; đầu ra LINE (MPA-120RS)&lt;/p&gt;&lt;p&gt;• MP3-400: máy nghe nhạc MP3 + giao diện USB/ SD/ MMC với chức năng ghi âm, có 4 phân vùng lựa chọn (MPA-120RS); MP3-300: máy nghe nhạc MP3 giao diện USB/ SD, chức năng Echo c ó 3 đầu vào Mic (MPA-120 ECHO)&lt;/p&gt;&lt;p&gt;• 10 đèn Led hiển thị mức đầu ra&lt;br&gt;&lt;/p&gt;', 'MPA-120RS', 'MPA-120RS', '', ''),
(78, 1, 'MPA-120RS', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/60Hz; DC 24V&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; Đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP; đầu ra LINE (MPA-120RS)&lt;/p&gt;&lt;p&gt;• MP3-400: máy nghe nhạc MP3 + giao diện USB/ SD/ MMC với chức năng ghi âm, có 4 phân vùng lựa chọn (MPA-120RS); MP3-300: máy nghe nhạc MP3 giao diện USB/ SD, chức năng Echo c ó 3 đầu vào Mic (MPA-120 ECHO)&lt;/p&gt;&lt;p&gt;• 10 đèn Led hiển thị mức đầu ra&lt;/p&gt;', 'MPA-120RS', 'MPA-120RS', '', ''),
(62, 2, 'Visualizer SVP - 2000X', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Phóng đại lên đến 128 lần (12 lần quang học + 10 lần số học)&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Cảm biến hình 1.3MP từ văn bản hoặc vật thể 3D&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;-&amp;nbsp;Nhiều cổng kết nối ngoại vi&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;-&amp;nbsp;Bộ điều kiển không dây&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Đèn LED thân thiện với môi trường&lt;/p&gt;', 'smartview,may_thu_hinh_vat_the', 'Visualizer SVP - 2000X', '', ''),
(50, 1, 'Vivitek D965', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;With 5200 ANSI Lumen and a 3000:1 contrast level, the Vivitek D965 multimedia projector accommodates almost any lighting condition in the office. Using the latest video processing technologies, the Vivitek D965 is a multi-tasking powerhouse that produces impressive color reproduction and delivers amazing performance. Featuring an assortment of connectivity options and network capability, the D965 is the ultimate choice for today’s high-definition multi-purpose demands.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Key features&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 16px; border: 0px; font-family: Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18.5714282989502px; color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;High 5200 lumens of brightness with a crisp 2400:1 contrast ratio&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;DLP® &amp;amp; BrilliantColor™ technologies for sharp and detailed image quality&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;connectivity options include: HDMI v1.3, DVI-D, VGA-In (2x), VGA-Out, RJ45 and RS-232C&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Network ready for integration and system administration via RJ45&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;12V trigger for connection to an external module or screen&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Top-loading, sliding cover for quick and easy lamp replacement&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Built-in 5W loudspeaker&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D965', '', ''),
(51, 2, 'Vivitek D859', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Công nghệ DLP ® và công nghệ BrilliantColor ™ của Texas Instruments giúp đem lại những hình ảnh tươi sáng sống động. Bên cạnh đó với độ phân giải WXGA và cường độ sáng 3200 ANSI Lumens, những thước film hành động sẽ trở nên chất lượng hơn.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Cổng giao tiếp đa dạng thỏa mãn mọi nhu cầu trình chiếu đa thiết bị của gia đình&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D859', '', ''),
(51, 1, 'Vivitek D859', '&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;Versatility Packed With Features &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;Offering versatility and functionality, the Vivitek D859 XGA digital projector features DLP®/BrilliantColor™ technologies, and enhanced display modes for wall color adjustments. Featuring a top-loading lamp, rapid on/off and keypad lock functions, the D859 is a simple presentation solution. With 3600 lumens, 3D-ready capabilities and multiple connectivity options, the Vivitek D859 is presentation-ready in any environment.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;Excellent Connectivity &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;The Vivitek D857WT is the projector you want for widescreen versatility: USB service connection, DC-12V, LAN for internet, Video for everyday video devices, Right and Left Audio, VGA-Out, Rs232c, VGA-In, MIC, Audio-Out, Audio-In,I, and HDMI. - See more at: http://www.vivitekusa.com/productdetail.php?product_id=23#sthash.UXH8eTF7.dpuf&lt;/span&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D859', '', ''),
(50, 2, 'Vivitek D965', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Với thông số 4500 ANSI Lumens đi cùng công nghệ DLP, D965 sẽ giữ lại hình ảnh chân thực nhất từ nguồn phát video. Hình ảnh sẽ sống động như thật và chất lượng hình ảnh tươi sáng.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;font-family: ''Open Sans'', sans-serif; font-weight: bold; line-height: 18px; color: rgb(58, 170, 53); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px 0px 10px; border: 0px; font-stretch: inherit;&quot;&gt;Tính năng chính&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 16px; border: 0px; font-family: Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18.5714282989502px; color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Độ sáng cao 5200 ANSI Lumen&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Công nghệ DLP® &amp;amp; BrilliantColor™ giúp hình ảnh mịn màng sống động hơn.&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Hỗ trợ kết nối: HDMI v1.3, DVI-D, VGA-In (2x), VGA-Out, RJ45 and RS-232C&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Hỗ trợ kết mạng thông qua cổng RJ45&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Loa ngoài 5W&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D965', '', ''),
(52, 2, 'Vivitek D853W', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Công nghệ&amp;nbsp;DLP ® và công nghệ BrilliantColor ™ của Texas Instruments giúp đem lại những hình ảnh tươi sáng sống động. Bên cạnh đó với độ phân giải WXGA và cường độ sáng 3200 ANSI Lumens, những thước film hành động sẽ trở nên chất lượng hơn.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D853W', '', ''),
(52, 1, 'Vivitek D853W', '&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal; font-weight: bold;&quot;&gt;Outstanding Widescreen Performance&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt; The Vivitek D853W WXGA digital projector combines the best in performance, versatility and value. Featuring DLP® and BrilliantColor™ technologies from Texas Instruments, the D853W displays bright, brilliant images. With extensive connectivity options and a rapid startup/shutdown function, the D853W''s ease-of-use comes in handy when sharing multimedia presentations.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal; font-weight: bold;&quot;&gt;Excellent Connectivity &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;The Vivitek D853W is the projector you want for widescreen versatility: USB service connection, DC-12V, LAN for internet, Video for everyday video devices, Right and Left Audio, VGA-Out, Rs232c, VGA-In, MIC, Audio-Out, Audio-In, DVI, and HDMI.&lt;/span&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D853W', '', ''),
(59, 1, 'Vivitek D967-BK', '&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal; font-weight: bold;&quot;&gt;Versatile and Brilliant for any Projection Demands &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;Featuring 5500 lumens of brightness, a 10,000:1 contrast ratio, DLP® dark chip 3 and BrilliantColor™ technologies, with Full 3D capability. The Vivitek D967 digital projector has impressive color reproduction and delivers amazing performance. With a built-in speaker, an assortment of connectivity options, including 3D sync, and RJ45/RS232, the D967 integrates effortlessly into almost any situation where a powerful projector is needed.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal; font-weight: bold;&quot;&gt;Excellent Connectivity &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;The Vivitek D967 offers a variety of connection options: HDMI v1.4 (x2), VGA-In (x2), S-Video, VGA-Out for monitor loop through, RCA Stereo-In, Mini-Jack Audio-In, 12V trigger for simple screen/projector automation, RJ45 and Rs232c for integration and system administration.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D967-BK', '', ''),
(59, 2, 'Vivitek D967-BK', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Là sự lựa chọn hoàn hảo cho rạp chiếu phim tại gia của bạn, với cường độ sáng lên đến 5500 ANSI Lumens. Khả năng trình chiếu HD và 3D tuyệt vời giúp D967-BK trở thành ứng viên mạnh mẽ. Bên cạnh đó có các tính năng tuyệt vời khác:&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Độ phân giải nén XGA (1024 x 768) với khả năng trình chiếu lên đến UXGA&lt;br&gt;(1600 x 1200)&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Độ sáng cao với 5500 ANSI lumens và độ tương phản 10,000:1 đảm bảo đem lại hình ảnh sắc nét và sống động.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Nhiều lựa chọn kết nối với các thiết bị ngoại vi&amp;nbsp;(HDMI, DisplayPort...)&lt;br&gt;- 3D-ready via DLP® Link™ và BluRay 3D&lt;br&gt;- Giám sát và trình chiếu bằng đường mạng thông qua cổng kết nối&amp;nbsp;RJ45&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Đạt chứng nhận Crestron® RoomView™&lt;br&gt;- VGA–output cho màn hình thứ 2&lt;br&gt;- Loa ngoài 5W&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D967-BK', '', ''),
(58, 1, 'Vivitek D560ST', '&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(26, 26, 26); line-height: 18.3999996185303px;&quot;&gt;Versatile SVGA Short-Throw Projector&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;Designed for smaller environments with large screen display needs, the Vivitek D560ST short-throw digital projector offers flexibility and functionality. From features such as wall color adjustment and optimal display settings to a variety or connectivity options, the D560ST is also 3D-ready to ensure the latest video sources and applications can be used. The Vivitek D560ST (SVGA) projector is able to adapt to a variety of smaller settings necessitating large video solutions.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;Features&lt;/span&gt;&lt;/span&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-Native SVGA resolution and able to display up to UXGA (1600 x 1200)@60Hz&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-DLP&lt;sup style=&quot;margin: 0px; padding: 0px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;BrilliantColor™ technologies for excellent color reproduction&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-High 15,000:1 contrast ratio ensures a crisp and sharp image&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-5 segment colorwheel for improved color reproduction and automatic gain control&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-High efficiency lamp with up to 5,000 hours of lifetime (Eco mode)&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-Connectivity options including: VGA-In, S-Video, Composite Video, and RS-232C&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-Source filtering function to save time locating device signal source&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-Convenient top loading design for easily lamp replacement&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-Keypad lock prevents accidental system adjustments&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-Closed caption and rapid on/off feature&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: 9pt; line-height: 13.8000001907349px; font-family: Arial, sans-serif; color: rgb(26, 26, 26);&quot;&gt;&lt;o:p style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 0.0001pt; padding: 0px; color: rgb(0, 0, 0); font-family: ''Microsoft JhengHei''; line-height: 20px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-size: medium;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: Arial;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; line-height: 18.3999996185303px; color: rgb(26, 26, 26);&quot;&gt;-Lightweight at only 2.3kg/5lbs&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D560ST', '', ''),
(58, 2, 'Vivitek D560ST', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;* Độ sáng&amp;nbsp;: 2700 ANSI Lumens&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;* Độ phân giải nén:&amp;nbsp; SVGA (800 x 600)&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;* Độ phân giải thực: UXGA (1600 x 1200) 60Hz&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;* Độ tương phản: 15,000:1&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;* Tuổi thọ bóng đèn: 4000/5000 Giờ (Std/Eco Mode)&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D560ST', '', ''),
(57, 2, 'Vivitek D855ST', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D855ST', '', ''),
(57, 1, 'Vivitek D855ST', '&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal; font-weight: bold;&quot;&gt;The Ultimate Short-Throw Solutions &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;The Vivitek D855ST combines the best in performance, versatility and value. With HDTV compatibility, rapid start-up and shutdown, the D855ST offers ease-of-use in their operation. The Vivitek D855ST digital projector also features multiple connectivity options, DLP® and BrilliantColor™ technologies and up to 6000 hours of lamp-life.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal; font-weight: bold;&quot;&gt;Excellent Connectivity &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; line-height: normal;&quot;&gt;The VivitekD855ST is the projector you want for widescreen versatility: USB service connection, DC-12V, LAN for internet, Video for everyday video devices, Right and Left Audio, VGA-Out, Rs232c, VGA-In, MIC, Audio-Out, Audio-In, DVI, and HDMI.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D855ST', '', ''),
(56, 1, 'Vivitek D751ST', '&lt;div class=&quot;museo&quot; style=&quot;margin: 0px; padding: 0px 0px 10px; border: 0px; font-size: 22px; font-stretch: inherit; line-height: 35px; vertical-align: baseline; color: rgb(51, 51, 51);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Extreme Short-Throw Advantages&lt;/strong&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Arial; font-size: 15px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; width: 385px;&quot;&gt;The Vivitek D751ST XGA ultra-short throw projector can create a 85” image from about 2.5’ away. This extreme short-throw projector features 3000 lumens of brightness, a 5000:1 contrast ratio, and 8000 hours lamp life in Eco mode, DLP® and BrilliantColor™ technologies for impressive color reproduction and amazing picture performance. With its assortment of connectivity options and a built-in speaker, the D751ST is the ultimate solution for the latest multimedia needs.&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Arial; font-size: 15px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; width: 385px;&quot;&gt;&lt;span style=&quot;font-size: 12px; line-height: normal; font-weight: bold;&quot;&gt;Excellent Connectivity &lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Arial; font-size: 15px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; width: 385px;&quot;&gt;&lt;span style=&quot;font-size: 12px; line-height: normal;&quot;&gt;The Vivitek D751ST comes equiped with all the connectivity for your educational needs: two (2) VGA-in, VGA-out for monitor loop through, composite Video, S-Video, HDMI, and RJ45/Rs232c for integration and system administration.&lt;/span&gt;&lt;br&gt;&lt;/div&gt;', '', 'Vivitek D751ST', '', ''),
(56, 2, 'Vivitek D751ST', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Vivitek D751ST là dòng máy chiếu có khả năng trình chiếu với khoảng cách đặt từ máy đến màn cực ngắn. Với khả năng đó, D751ST&amp;nbsp;thích hợp cho việc trình chiếu ở những nơi không gian chật hẹp. Bên cạnh đó D751ST có khả năng trình chiếu 3D tuyệt hảo, xứng đáng là sự lựa chọn trong việc tìm kiếm một chiếc máy chiếu có khả năng trình chiếu 3D&lt;img src=&quot;http://localhost:8080/huuhanh/image/catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Front_l.jpg&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Vivitek D751ST', '', ''),
(61, 2, 'Vivitek D556', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Là sự lựa chọn tuyệt hảo cho các buổi họp, buổi gặp mặt.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Công nghệ xử lý hình ảnh: DLP® and BrilliantColor™&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Chíp chỉnh ánh sáng: Single 0,55 SVGA chip DMD&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Cường độ chiếu sáng: 3,000 ANSI Lumens&lt;/p&gt;', '', 'Vivitek D556', '', ''),
(60, 2, 'Vivitek D867', '&lt;h3 style=&quot;font-family: ''Open Sans'', sans-serif; font-weight: bold; line-height: 18px; color: rgb(58, 170, 53); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px 0px 10px; border: 0px; font-stretch: inherit;&quot;&gt;Tính năng chính&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 16px; border: 0px; font-family: Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18.5714282989502px; color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Độ phân giải thực XGA (1024 x 768) có khả năng hỗ trợ đến UXGA(1600 x 1200)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Độ sáng cao 4,000 ANSI lumens và độ tương phản 5,000:1 cho hình ảnh chân thực và sống động&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Hỗ trợ trình chiếu từ các nguồn phát mới thông qua các cổng kết nối hiện đại (HDMI, DisplayPort)&lt;/li&gt;&lt;/ul&gt;', '', 'Vivitek D867', '', ''),
(53, 2, 'Vivitek D536-3D', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Máy chiếu kỹ thuật số Vivitek D536-3D có khả năng chuyển đổi nội dung 2D thành 3D, cũng như hiển thị nội dung 3D từ&amp;nbsp;một nguồn phát bất kì. Với độ sáng 3200 ANSI Lumens, độ tương phản 3000:1&amp;nbsp;cùng công nghệ&amp;nbsp;DLP ® / BrilliantColor ™, D536-3D sẽ đem lại những hình ảnh sống động. D536-3D có nhiều lựa chọn kết nối bao gồm HDMI v1.3.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Ngoài ra với kích thước nhỏ gọn, Vivitek D536-3D tiện lợi cho việc vận chuyển, trình chiếu ở những không gian nhỏ. Giá thành thấp là ưu điểm tuyệt vời để bạn có chiếc máy chiếu có khả năng trình chiếu 3D với số tiền đầu tư thấp.&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D536-3D', '', ''),
(54, 2, 'Vivitek D755WTi', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Vivitek D755WTi là dòng máy chiếu có khả năng trình chiếu với khoảng cách đặt từ máy đến màn cực ngắn. Với khả năng đó, D755WT thích hợp cho việc trình chiếu ở những nơi không gian chật hẹp.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Với cường độ sáng lên đến 3300 ANSI Lumens và độ tương phản 5000:1, D755WTi hoàn toàn có thể đem lại cho bạn những hình ảnh chất lượng tuyệt vời. Bên cạnh đó độ phân giải thực của máy lên đến 1280 x 800 thông qua cổng kết nối HDMI v1.4 và khả năng trình chiếu 3D, D755WTi sẽ là thành phần không thể thiếu cho rạp hát tại gia của bạn.&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D755WTi', '', ''),
(55, 2, 'Vivitek D755WT', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Vivitek D755WT là dòng máy chiếu có khả năng trình chiếu với khoảng cách đặt từ máy đến màn cực ngắn. Với khả năng đó, D755WT thích hợp cho việc trình chiếu ở những nơi không gian chật hẹp.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;Với cường độ sáng lên đến 3300 ANSI Lumens và độ tương phản 5000:1, D755WT hoàn toàn có thể đem lại cho bạn những hình ảnh chất lượng tuyệt vời. Bên cạnh đó độ phân giải thực của máy lên đến 1280 x 800 thông qua cổng kết nối HDMI v1.4.&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D755WT', '', '');
INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(55, 1, 'Vivitek D755WT', '&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Peace of mind and lower total cost of ownership&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;The D755WT is the ultimate ultra-short-throw projector for the education that delivers a large 80” to 100” image from a ultra-short distance and enable perfect presentation without shadow obstruction and light glare in the presenter’s eyes. The projector delivers a high brightness with 3,300 ANSI Lumens and an outstanding contrast ratio of 5000:1 for a perfectly displayed image.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Key features&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 16px; border: 0px; font-family: Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18.5714282989502px; color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;3300 ANSI lumens with a 5000:1 contrast ratio&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Delivers a large 80” to 100” image from a ultra-short distance&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Helps prevent shadow obstruction and light glare in the presenter’s eyes&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;DisplayPort connector for digital audio and video signals&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;DLP® and BrilliantColor™ technologies for sharp and detailed image quality&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;High-efficiency lamp that last up to 10.000 hours (in economy mode)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Network ready for integration and system administration via RJ45&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;VGA–output for display on a secondary monitor&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Powerful 20W audio speaker&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Top-loading, cover for quick and easy lamp replacement&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Sealed optical engine, minimizing the impact of dust and smoke&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Keypad lock prevents accidental system adjustments&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D755WT', '', ''),
(54, 1, 'Vivitek D755WTi', '&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Best in class interactive projector&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;The D755WTi is the ultimate ultra-short-throw projector for the education that delivers a large 80” to 100” image from a ultra-short distance and enable perfect presentation without shadow obstruction and light glare in the presenter’s eyes. The projector delivers a high brightness with 3,300 ANSI Lumens and an outstanding contrast ratio of 5000:1 for a perfectly displayed image. The D755WTi with built-in interactive functionality makes it possible to turn any standard screen or white surface into an interactive projection solution.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Key features&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 16px; border: 0px; font-family: Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18.5714282989502px; color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;3300 ANSI lumens with a 5000:1 contrast ratio&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Delivers a large 80” to 100” image from a ultra-short distance&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Helps prevent shadow obstruction and light glare in the presenter’s eyes&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Built-in IWB functionality with interactive pens&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Dual pen support for simultaneous use&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;DisplayPort connector for digital audio and video signals&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;High-efficiency lamp that last up to 10.000 hours (in economy mode)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Network ready for integration and system administration via RJ45&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;VGA–output for display on a secondary monitor&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Powerful 20W audio speaker&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D755WTi', '', ''),
(62, 1, 'Visualizer SVP - 2000X', '&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Advanced Feature&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Up to 128X zoom (12X optical room + 10X digital zoom)&lt;/p&gt;&lt;p&gt;1.3MP image sensor captures text/3D subject&lt;/p&gt;&lt;p&gt;Multiple input/output interface connectivity&lt;/p&gt;&lt;p&gt;Full size backlit platfom&lt;/p&gt;&lt;p&gt;Wireless remote control&lt;/p&gt;&lt;p&gt;Environmentally friendly LED lights&lt;/p&gt;&lt;p&gt;Motorized camera head (optional)&lt;/p&gt;', 'smartview,may_thu_hinh_vat_the', 'Visualizer SVP - 2000X', '', ''),
(60, 1, 'Vivitek D867', '&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Versatility meets performance&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;The Vivitek D867 delivers exceptional digital images with a high degree of vibrancy due to 4,000 ANSI lumens of brightness and a contrast ratio of 5,000:1. Featuring native XGA resolution the D867 is designed for a wide variety of applications. Light weight at just over 3 kg, the D867 allows for easy transportation between different conference rooms or external meetings.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Key features&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 16px; border: 0px; font-family: Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18.5714282989502px; color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Native XGA (1024 x 768) resolution with display up to UXGA(1600 x 1200)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;High Brightness of 4,000 ANSI lumens and high 5,000:1 Contrast ratio ensuring a crisp and sharp image&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Assortment of connectivity options for easy connection to a variety of multimedia devices (HDMI, DisplayPort)&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Top-loading, sliding cover for quick and easy lamp replacement&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Built-in 10W audio speaker&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Sealed optical engine, minimizing the impact of dust and smoke&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Security solutions include: Kensington® security slot, security bar, keypad lock&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Vivitek D867', '', ''),
(61, 1, 'Vivitek D556', '&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;From meeting room to presentations anywhere on the road&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.5714282989502px;&quot;&gt;The D556 SVGA digital projector with a contrast ratio of 15000:1 and 3,000 ANSI lumens of brightness will light up classrooms, meeting rooms and small boardrooms. Due to the integration of the Texas Instruments DLP BrilliantColor chip technology the D556 shows crystal-clear pictures, with deep blacks and brilliant colors.&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 16px; font-weight: bold; font-stretch: inherit; line-height: 18px; color: rgb(58, 170, 53);&quot;&gt;Key features&lt;/h3&gt;&lt;ul style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px 0px 0px 16px; border: 0px; font-family: Arial, sans-serif; font-size: 13px; font-stretch: inherit; line-height: 18.5714282989502px; color: rgb(0, 0, 0);&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Native SVGA (800 x 600) resolution&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Super bright at 3,000 ANSI Lumens for dazzling images&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;15,000:1 contrast ratio for amazing picture quality&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;High-efficiency lamp that last up to 10,000 hours&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Direct 3D via HDMI&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Convenient top loading design for easy lamp replacement&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;5 segment color-wheel for improved color reproduction and automatic gain control&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit;&quot;&gt;Source filtering function to save time locating device signal&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'vivitek,projector,may_chieu', 'Vivitek D556', '', ''),
(64, 1, 'Visualizer SVP - 2001X', '&lt;p&gt;Up to 128X zoom (12X optical room + 10X digital zoom)&lt;/p&gt;&lt;p&gt;2.0MP image sensor captures text/3D subject&lt;/p&gt;&lt;p&gt;Multiple input/output interface connectivity&lt;/p&gt;&lt;p&gt;Full size backlit platfom&lt;/p&gt;&lt;p&gt;Wireless remote control&lt;/p&gt;&lt;p&gt;Environmentally friendly LED lights&lt;/p&gt;&lt;p&gt;Motorized camera head (optional)&lt;/p&gt;', 'smartview,may_thu_hinh_vat_the', 'Visualizer SVP - 2001X', '', ''),
(64, 2, 'Visualizer SVP - 2001X', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Phóng đại lên đến 128 lần (12 lần quang học + 10 lần số học)&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Cảm biến hình 1.3MP từ văn bản hoặc vật thể 3D&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;-&amp;nbsp;Nhiều cổng kết nối ngoại vi&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;-&amp;nbsp;Bộ điều kiển không dây&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Georgia, ''Times New Roman'', ''Bitstream Charter'', Times, serif; font-size: 13px; line-height: 19px;&quot;&gt;- Đèn LED thân thiện với môi trường&lt;/p&gt;', 'smartview,may_thu_hinh_vat_the', 'Visualizer SVP - 2001X', '', ''),
(81, 1, 'PJ2000i UST DLP', '&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Ideal for almost any room in educational and corporate environments, the PJ2000i UST DLP interactive projector makes the most of the available space for installation,&amp;nbsp;when using whiteboard screens.&amp;nbsp;Captivate your audiences, increase their learning potential and help improve results with lessons in incredible 2D or 3D. Using the specially designed wall mount the PJ2000i UST DLP is simple to install. Once in place, the many security features (e.g. Kensington lock capability) ensure the projector is safe and secured.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Designed with the user in mind, the PJ2000i UST DLP, with 3000 lumens of light power and incredible brightness, incorporates extensive connectivity and powerful 10W speakers giving a bright image and clear sound in almost any environment and situation. The PJ2000i UST DLP has many environmentally friendly energy-saving features – eco mode that lowers power consumption and noise and increases lamp life. The standby mode, with its less than 0.5W power requirement and auto power off, helps save both time and money. A long lamp-life of 4000 hours, combined with our unique color and imager, provide hassle-free and long-lasting projection.&lt;/p&gt;', '', 'PJ2000i UST DLP', '', ''),
(65, 1, 'SPM4102 COMBO', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'SPM4102 COMBO', 'SPM4102 COMBO', '', ''),
(65, 2, 'SPM4102 COMBO', '&lt;p&gt;Mixer công suất SMX 4200MP: &lt;/p&gt;&lt;p&gt;Cung cấp 4 kênh mixer.&lt;/p&gt;&lt;p&gt;Tổng số 6 đầu vào, bộ xử lý hiệu ứng 24-bit. 100 chương trình.&lt;/p&gt;&lt;p&gt;Tích hợp bộ nén-giới hạn, 2 band EQ cho mỗi kênh.&lt;/p&gt;&lt;p&gt;Công suất khếch đại 2x100W (công suất đỉnh), Jack RCA vào/ ra với điều khiển âm lượng. Nguồn có thể chuyển đổi giữa 115V và 230V.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Loa SKP 110: &lt;/p&gt;&lt;p&gt;Loa với các góc kim loại: Kích thước loa 10&quot;, Driver 1&quot;.&lt;/p&gt;&lt;p&gt;Kích thước (cm): 97,1x35,6x50,6. Trọng lượng: 27,94kg&lt;/p&gt;', 'SPM4102 COMBO', 'SPM4102 COMBO', '', ''),
(73, 2, 'MPA-60', '&lt;p&gt;• Công suất: RMS 60W/ MAX 70W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50Hz/ 60Hz; DC 24V&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA), 3 đầu vào với công tắc lựa chọn Mic/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 4 điều chỉnh âm lượng đầu vào; 1 điều chỉnh âm lượng tổng&lt;/p&gt;&lt;p&gt;• Có những mô-đun khác như MP3/ ghi âm/ Tel cho các tùy chọn&lt;/p&gt;&lt;p&gt;• Đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• MP3-300: máy nghe nhạc MP3 (MPA-60)&lt;/p&gt;&lt;p&gt;• MP3-400: máy nghe nhạc MP3 và ghi âm; Giao diện SD/ USB (MPA-60R)&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP, đầu ra LINE&lt;/p&gt;&lt;p&gt;• Đầu ra trở kháng 4Ω; đầu ra điện áp không đổi 25V/ 70V/ 100V&lt;/p&gt;&lt;p&gt;• 10 đèn LED hiển thị mức đầu ra&lt;br&gt;&lt;/p&gt;', 'MPA-60', 'MPA-60', '', ''),
(66, 1, 'SPM6122 COMBO', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'SPM6122 COMBO', 'SPM6122 COMBO', '', ''),
(66, 2, 'SPM6122 COMBO', '&lt;p&gt;Mixer công suất SMX 6250MP: &lt;/p&gt;&lt;p&gt;300W 4ohm chế độ STEREO. 6 kênh trộn.&lt;/p&gt;&lt;p&gt;Tổng số 8 đầu vào. 2 band EQ trên mỗi kênh/ 7 band EQ với bộ định vị thông tin phản hồi. &lt;/p&gt;&lt;p&gt;DSP 24 bit 100 chương trình. Ổ cắm đèn 12V.&lt;/p&gt;&lt;p&gt; Công tắc nguồn Phantom. Máy nghe nhạc MP3 với mô-đun USB (tùy chọn). Nguồn 110V/ 220V.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Loa SKP 112: Công suất liên tục: 200W, công suất chương trình: 400W, công suất đỉnh: 800W. Độ nhạy (1W/ 1m): 95dB/ Tối đa 121dB.&lt;/p&gt;&lt;p&gt;Đáp ứng tần số: 55Hz-20KHz (±6dB). Woofer: 1x12''''.&lt;/p&gt;&lt;p&gt;Driver: Driver 1'''' - Voice coil 1''''.&lt;/p&gt;&lt;p&gt;Trở kháng: 8ohm. Bảo vệ tần số cao.&lt;/p&gt;&lt;p&gt;Kết nối: 1 NL4 (pin1+, pin1-); 2 Jack(1/4)''''&lt;/p&gt;&lt;p&gt;Kích thước (cm): 116,1x45,3x62,6.&lt;/p&gt;&lt;p&gt;Trọng lượng: 46,83kg&lt;/p&gt;', 'SPM6122 COMBO', 'SPM6122 COMBO', '', ''),
(67, 1, 'SPM8152 COMBO', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'SPM8152 COMBO', 'SPM8152 COMBO', '', ''),
(67, 2, 'SPM8152 COMBO', '&lt;p&gt;Mixer công suất SMX 8250MP: &lt;/p&gt;&lt;p&gt;300W 4ohm chế độ STEREO. 8 kênh trộn.&lt;/p&gt;&lt;p&gt;Tổng số 10 đầu vào. 2 band EQ trên mỗi kênh/ 7 band EQ với bộ định vị thông tin phản hồi. &lt;/p&gt;&lt;p&gt;DSP 24 bit 100 chương trình. &lt;/p&gt;&lt;p&gt;Ổ cắm đèn 12V.&lt;/p&gt;&lt;p&gt; Công tắc nguồn Phantom. Máy nghe nhạc MP3 với mô-đun USB (tùy chọn).&lt;/p&gt;&lt;p&gt;Nguồn 110V/ 220V.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Loa SKP 115:&lt;/p&gt;&lt;p&gt; Công suất liên tục: 200W, công suất chương trình: 400W,&lt;/p&gt;&lt;p&gt;công suất đỉnh: 800W. Độ nhạy (1W/ 1m): 96dB/ Tối đa 122dB.&lt;/p&gt;&lt;p&gt;Đáp ứng tần số: 55Hz-20KHz (±6dB). Woofer: 1x15''''.&lt;/p&gt;&lt;p&gt;Driver: Driver 1.4'''' - Voice coil 1'''' . Trở kháng: 8ohm.&lt;/p&gt;&lt;p&gt;Bảo vệ tần số cao.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Kết nối:&lt;/p&gt;&lt;p&gt; 1 NL4 (pin1+, pin1-) 2 Jack (1/4)''''.&lt;/p&gt;&lt;p&gt;Kích thước (cm): 126,1x53,6x69,4.&lt;/p&gt;&lt;p&gt;Trọng lượng: 56,05k&lt;/p&gt;', 'SPM8152 COMBO', 'SPM8152 COMBO', '', ''),
(68, 1, 'JMC JCOM - 5000', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'JMC JCOM - 5000', 'JMC JCOM - 5000', '', ''),
(68, 2, 'JMC JCOM - 5000', '&lt;p&gt;Multimedia Lab JMC-5000 là hệ thống phòng lab học ngoại ngữ tiên tiến sản xuất bởi JCOM (Hàn Quốc). Kỹ thuật mới và 30 năm kinh nghiệm của JCOM trong ngành giáo dục đã khiến cho việc học ngoại ngữ trở nên hiệu quả hơn bao giờ hết.&lt;/p&gt;&lt;p&gt;Hệ thống JCOM JMC-5000 đổi mới, đầy tính năng nhưng dễ sử dụng và giá thành hạ cung cấp tính đa năng và hiệu quả tối đa trong học tập và giảng dạy ngoại ngữ và tăng cường khả năng cho bài học hiệu quả hoàn toàn.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hệ thống JCOM JMC-5000 được trang bị các chức năng cao cấp khác nhau có thể điều khiển bằng chuột hoặc tiếp xúc bằng tay lên thẳng màn hình, cho phép truy cập nhanh và vận hành dễ dàng, cung cấp thông tin chức năng hệ thống trên màn hình điều khiển CRT. Bằng cách chọn lựa từ các chức năng này, giáo viên có thể soạn ra các loại bài giảng đa dạng.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Tính linh hoạt của hệ thống được thiết lập bằng việc tùy chọn một dãy rộng các thiết bị ngoại vi, từ đó các tính năng cần thiết có thể tùy biến đến các cấp độ khác nhau tương ứng với số học viên khác nhau.&lt;/p&gt;&lt;p&gt;Giao diện đồ họa dễ sử dụng&lt;/p&gt;&lt;p&gt;Môi trường học tập đa phương tiện&lt;/p&gt;&lt;p&gt;Tương tác trực tiếp giáo viên và học viên&lt;/p&gt;&lt;p&gt;Hình thức dạy học phong phú&lt;/p&gt;&lt;p&gt;Kiểm tra thời gian thực&lt;/p&gt;&lt;p&gt;Hệ thống quản lý học viên hiệu quả&lt;/p&gt;&lt;p&gt;Điều khiển âm thanh linh hoạt&lt;/p&gt;&lt;p&gt;Theo dõi từng học viên riêng rẽ&lt;/p&gt;&lt;p&gt;Với kỹ thuật tinh vi và cao cấp, hệ thống JCOM JMC-5000 hỗ trợ việc giảng dạy và học ngoại ngữ đạt hiệu quả cao, giúp học viên nâng cao trình độ ngoại ngữ đang học. Hệ thống JCOM JMC-5000 sẽ là sự lựa chọn đầu tiên đầy tính năng nhưng giá cả hợp lý với chất lượng đáng được quan tâm xem xét.&lt;/p&gt;', 'JMC JCOM - 5000', 'JMC JCOM - 5000', '', ''),
(69, 1, 'MPA-30R', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MPA-30R', 'MPA-30R', '', ''),
(69, 2, 'MPA-30R', '&lt;p&gt;•&amp;nbsp;Công suất: RMS 30W/ MAX 38W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50Hz/ 60Hz; DC 12V&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Công tắc chuyển đổi AUX/ PHONO&lt;/p&gt;&lt;p&gt;• Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 1 điều chỉnh âm lượng đầu vào.&lt;/p&gt;&lt;p&gt;• 2 đầu vào MIC (6.3mm); MIC 1 ưu tiên&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP&lt;/p&gt;&lt;p&gt;• Đầu ra trở kháng 4Ω; Đầu ra điện áp không đổi 25V/ 70V/ 100V (MPA-30HR)&lt;/p&gt;&lt;p&gt;•&amp;nbsp;MP3-400: Máy nghe nhạc MP3 có giao diện SD/ MMC/ USB và chức năng ghi âm&lt;/p&gt;', 'MPA-30R', 'MPA-30R', '', ''),
(73, 1, 'MPA-60', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MPA-60', 'MPA-60', '', ''),
(70, 1, 'MPA-30HR', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MPA-30HR', 'MPA-30HR', '', ''),
(70, 2, 'MPA-30HR', '&lt;p&gt;•&amp;nbsp;Công suất: RMS 30W/ MAX 38W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50Hz/ 60Hz; DC 12V&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Công tắc chuyển đổi AUX/ PHONO&lt;/p&gt;&lt;p&gt;• Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 1 điều chỉnh âm lượng đầu vào.&lt;/p&gt;&lt;p&gt;• 2 đầu vào MIC (6.3mm); MIC 1 ưu tiên&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP&lt;/p&gt;&lt;p&gt;• Đầu ra trở kháng 4Ω; Đầu ra điện áp không đổi 25V/ 70V/ 100V (MPA-30HR)&lt;/p&gt;&lt;p&gt;•&amp;nbsp;MP3-400: Máy nghe nhạc MP3 có giao diện SD/ MMC/ USB và chức năng ghi âm&lt;/p&gt;', 'MPA-30HR', 'MPA-30HR', '', ''),
(71, 1, 'MPA-30H', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MPA-30H', 'MPA-30H', '', ''),
(71, 2, 'MPA-30H', '&lt;p&gt;• Công suất: RMS 30W/ MAX 38W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50Hz/ 60Hz; DC 12V&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Công tắc chuyển đổi AUX/ PHONO&lt;/p&gt;&lt;p&gt;• Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 3 điều chỉnh âm lượng đầu vào&lt;/p&gt;&lt;p&gt;• 2 đầu vào MIC (6.3mm); MIC 1 ưu tiên&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP&lt;/p&gt;&lt;p&gt;• Máy nghe nhạc MP3 có giao diện SD/ MMC/ USB&lt;/p&gt;&lt;p&gt;• Đầu ra trở kháng 4Ω; Đầu ra điện áp không đổi 25V/ 70V/ 100V (MPA-30H)&lt;/p&gt;&lt;p&gt;• CD-201: Khay đĩa CD + giao diện USB.( PA-30CH)&lt;/p&gt;', 'MPA-30H', 'MPA-30H', '', ''),
(72, 1, 'MPA-30CH', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MPA-30CH', 'MPA-30CH', '', ''),
(72, 2, 'MPA-30CH', '&lt;p&gt;• Công suất: RMS 30W/ MAX 38W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50Hz/ 60Hz; DC 12V&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Công tắc chuyển đổi AUX/ PHONO&lt;/p&gt;&lt;p&gt;• Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 3 điều chỉnh âm lượng đầu vào&lt;/p&gt;&lt;p&gt;• 2 đầu vào MIC (6.3mm); MIC 1 ưu tiên&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP&lt;/p&gt;&lt;p&gt;• Máy nghe nhạc MP3 có giao diện SD/ MMC/ USB&lt;/p&gt;&lt;p&gt;• Đầu ra trở kháng 4Ω; Đầu ra điện áp không đổi 25V/ 70V/ 100V (MPA-30H)&lt;/p&gt;&lt;p&gt;• CD-201: Khay đĩa CD + giao diện USB.( PA-30CH)&lt;/p&gt;', '', 'MPA-30CH', '', ''),
(74, 1, 'MPA-60R', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MPA-60R', 'MPA-60R', '', ''),
(74, 2, 'MPA-60R', '&lt;p&gt;• Công suất: RMS 60W/ MAX 70W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50Hz/ 60Hz; DC 24V&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA), 3 đầu vào với công tắc lựa chọn Mic/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 4 điều chỉnh âm lượng đầu vào; 1 điều chỉnh âm lượng tổng&lt;/p&gt;&lt;p&gt;• Có những mô-đun khác như MP3/ ghi âm/ Tel cho các tùy chọn&lt;/p&gt;&lt;p&gt;• Đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• MP3-300: máy nghe nhạc MP3 (MPA-60)&lt;/p&gt;&lt;p&gt;• MP3-400: máy nghe nhạc MP3 và ghi âm; Giao diện SD/ USB (MPA-60R)&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP, đầu ra LINE&lt;/p&gt;&lt;p&gt;• Đầu ra trở kháng 4Ω; đầu ra điện áp không đổi 25V/ 70V/ 100V&lt;/p&gt;&lt;p&gt;• 10 đèn LED hiển thị mức đầu ra&lt;br&gt;&lt;/p&gt;', 'MPA-60R', 'MPA-60R', '', ''),
(75, 1, 'MPA-60 ECHO', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'MPA-60 ECHO', 'MPA-60 ECHO', '', ''),
(75, 2, 'MPA-60 ECHO', '&lt;p&gt;• Công suất: RMS 60W/ MAX 70W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50Hz/ 60Hz; DC 24V&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA), 3 đầu vào với công tắc lựa chọn Mic/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 4 điều chỉnh âm lượng đầu vào; 1 điều chỉnh âm lượng tổng, 1 điều chỉnh Echo&lt;/p&gt;&lt;p&gt;• Đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Có những mô-đun khác như MP3/ ghi âm/ Echo/ Tel cho các tùy chọn (MPA-60 ECHO)&lt;/p&gt;&lt;p&gt;• MP3-300: máy nghe nhạc MP3 với giao diện USB/ SD (MPA-60 ECHO)&lt;/p&gt;&lt;p&gt;• CD-201: CD + giao diện USB (PA-62 ECHO)&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP, đầu ra LINE&lt;/p&gt;&lt;p&gt;• Đầu ra trở kháng 4Ω; Đầu ra điện áp không đổi 25V/ 70V/ 100V&lt;/p&gt;&lt;p&gt;• 10 đèn LED hiển thị mức đầu ra&lt;br&gt;&lt;/p&gt;', 'MPA-60 ECHO', 'MPA-60 ECHO', '', ''),
(76, 1, 'MPA-120', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/ 60Hz ;DC 24V&lt;br&gt;&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP, đầu ra LINE (MPA-120S)&lt;/p&gt;&lt;p&gt;• MP3-300: máy nghe nhạc MP3 + giao diện USB/ SD&lt;/p&gt;&lt;p&gt;• Có 4 phân vùng lựa chọn (MPA-120S)&lt;/p&gt;&lt;p&gt;•&amp;nbsp;10 đèn Led hiển thị mức đầu ra&lt;/p&gt;', '', 'MPA-120', '', ''),
(76, 2, 'MPA-120', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/ 60Hz ;DC 24V&lt;br&gt;&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP, đầu ra LINE (MPA-120S)&lt;/p&gt;&lt;p&gt;• MP3-300: máy nghe nhạc MP3 + giao diện USB/ SD&lt;/p&gt;&lt;p&gt;• Có 4 phân vùng lựa chọn (MPA-120S)&lt;/p&gt;&lt;p&gt;•&amp;nbsp;10 đèn Led hiển thị mức đầu ra&lt;br&gt;&lt;/p&gt;', '', 'MPA-120', '', ''),
(77, 1, 'MPA-120S', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/ 60Hz ;DC 24V&lt;br&gt;&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP, đầu ra LINE (MPA-120S)&lt;/p&gt;&lt;p&gt;• MP3-300: máy nghe nhạc MP3 + giao diện USB/ SD&lt;/p&gt;&lt;p&gt;• Có 4 phân vùng lựa chọn (MPA-120S)&lt;/p&gt;&lt;p&gt;•&amp;nbsp;10 đèn Led hiển thị mức đầu ra&lt;/p&gt;', '', 'MPA-120S', '', ''),
(77, 2, 'MPA-120S', '&lt;p&gt;• Công suất: RMS 120W/ MAX 170W&lt;/p&gt;&lt;p&gt;• Nguồn điện: AC 115V/ 230V 50/ 60Hz ;DC 24V&lt;br&gt;&lt;/p&gt;&lt;p&gt;• 4 đầu vào MIC (XLR); công tắc chuyển đổi MIC/ Line/ Phantom&lt;/p&gt;&lt;p&gt;• 1 đầu vào AUX (RCA); Điều chỉnh âm sắc: 1 Bass, 1 Treble&lt;/p&gt;&lt;p&gt;• 5 điều khiển âm lượng đầu vào; đầu vào Tel. và chức năng theo dõi&lt;/p&gt;&lt;p&gt;• Đầu ra PRE và đầu vào AMP, đầu ra LINE (MPA-120S)&lt;/p&gt;&lt;p&gt;• MP3-300: máy nghe nhạc MP3 + giao diện USB/ SD&lt;/p&gt;&lt;p&gt;• Có 4 phân vùng lựa chọn (MPA-120S)&lt;/p&gt;&lt;p&gt;•&amp;nbsp;10 đèn Led hiển thị mức đầu ra&lt;/p&gt;', '', 'MPA-120S', '', ''),
(81, 2, 'PJ2000i UST DLP', '&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Ideal for almost any room in educational and corporate environments, the PJ2000i UST DLP interactive projector makes the most of the available space for installation,&amp;nbsp;when using whiteboard screens.&amp;nbsp;Captivate your audiences, increase their learning potential and help improve results with lessons in incredible 2D or 3D. Using the specially designed wall mount the PJ2000i UST DLP is simple to install. Once in place, the many security features (e.g. Kensington lock capability) ensure the projector is safe and secured.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Designed with the user in mind, the PJ2000i UST DLP, with 3000 lumens of light power and incredible brightness, incorporates extensive connectivity and powerful 10W speakers giving a bright image and clear sound in almost any environment and situation. The PJ2000i UST DLP has many environmentally friendly energy-saving features – eco mode that lowers power consumption and noise and increases lamp life. The standby mode, with its less than 0.5W power requirement and auto power off, helps save both time and money. A long lamp-life of 4000 hours, combined with our unique color and imager, provide hassle-free and long-lasting projection.&lt;/p&gt;', '', 'PJ2000i UST DLP', '', ''),
(82, 1, 'PJ1000 ST DLP', '&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Ideal for almost any room in educational and corporate environments, the PJ1000 ST DLP projector makes the most of the available space for installation, using screens and interactive whiteboards. Captivate your audiences, increase their learning potential and help improve results with lessons in incredible 2D or 3D. Using the specially designed wall mount, the PJ1000 ST DLP is simple to install. Once in place, the many security features (e.g. Kensington lock capability) ensure the projector is safe and secured.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Designed with the user in mind, the PJ1000 ST DLP, with 3000 lumens of light power and incredible brightness, incorporates extensive connectivity and 2W speaker, giving a bright image and clear sound in almost any environment and situation. The PJ1000 ST DLP has many environmentally friendly energy-saving features – eco mode that lowers power consumption and noise and increases lamp life. The standby mode, with its less than 0.5W power requirement and auto power off, helps save both time and money. A long lamp-life of 5000 hours, combined with our unique color and imager, ensure hassle-free and long-lasting projection.&lt;/p&gt;', '', 'PJ1000 ST DLP', '', ''),
(82, 2, 'PJ1000 ST DLP', '&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Ideal for almost any room in educational and corporate environments, the PJ1000 ST DLP projector makes the most of the available space for installation, using screens and interactive whiteboards. Captivate your audiences, increase their learning potential and help improve results with lessons in incredible 2D or 3D. Using the specially designed wall mount, the PJ1000 ST DLP is simple to install. Once in place, the many security features (e.g. Kensington lock capability) ensure the projector is safe and secured.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(137, 139, 142); font-family: slab300; font-size: 14px; line-height: 20px;&quot;&gt;Designed with the user in mind, the PJ1000 ST DLP, with 3000 lumens of light power and incredible brightness, incorporates extensive connectivity and 2W speaker, giving a bright image and clear sound in almost any environment and situation. The PJ1000 ST DLP has many environmentally friendly energy-saving features – eco mode that lowers power consumption and noise and increases lamp life. The standby mode, with its less than 0.5W power requirement and auto power off, helps save both time and money. A long lamp-life of 5000 hours, combined with our unique color and imager, ensure hassle-free and long-lasting projection.&lt;/p&gt;', '', 'PJ1000 ST DLP', '', ''),
(53, 1, 'Vivitek D536-3D', '&lt;div class=&quot;museo&quot; style=&quot;margin: 0px; padding: 0px 0px 10px; border: 0px; font-size: 22px; font-stretch: inherit; line-height: 35px; vertical-align: baseline; color: rgb(51, 51, 51);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;A Whole New Dimension in Projection&lt;/strong&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Arial; font-size: 15px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; width: 385px;&quot;&gt;The Vivitek D536-3D digital projector takes 2D content and converts it into 3D, as well as displays 3D content from just about any video source without an external box. With a brightness level of 3200 lumens, a 3000:1 contrast ratio and DLP®/BrilliantColor™ technologies to deliver vibrant images. The D536-3D features many connectivity options including HDMI v1.3. Ready for its 3D close-up, the Vivitek D536-3D can tackle pretty much anything.&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Arial; font-size: 15px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; width: 385px;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Arial; font-size: 15px; font-stretch: inherit; line-height: 24px; vertical-align: baseline; width: 385px;&quot;&gt;&lt;div class=&quot;museo&quot; style=&quot;margin: 0px; padding: 0px 0px 10px; border: 0px; font-family: ''Open Sans'', sans-serif; font-size: 22px; font-stretch: inherit; line-height: 35px; vertical-align: baseline; color: rgb(51, 51, 51);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Excellent Connectivity&lt;/strong&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; vertical-align: baseline; width: 320px;&quot;&gt;The Vivitek D536-3D displays 3D content from virtually any video source, and can convert 2D content to 3D without an external box. Standard video sources can be connected through HDMI v1.3, VGA-In, S-Video or Composite Video. 3D-ready laptops connect to VGA-In. For 2D-3D conversion or other 3D sources, connect to HDMI. The D536-3D also has RS-232c for integration and system administration.&lt;/div&gt;&lt;/div&gt;', 'vivitek,projector,may_chieu', 'Vivitek D536-3D', '', ''),
(83, 1, 'SmartView HVB - 8000I', '&lt;div&gt;• Kích thước 80 inch&lt;br&gt;&lt;/div&gt;&lt;div&gt;• Công nghệ: Hồng ngoại&lt;/div&gt;&lt;div&gt;• Công cụ viết: Bằng Bút điện tử, bằng tay, bằng gậy điện tử&lt;/div&gt;&lt;div&gt;• Kích thước vùng sử dụng: 1540 mm x 1160 mm&lt;/div&gt;', 'SmartView HVB - 8000I', 'SmartView HVB - 8000I', '', ''),
(83, 2, 'SmartView HVB - 8000I', '&lt;div&gt;• Kích thước 80 inch&lt;br&gt;&lt;/div&gt;&lt;div&gt;• Công nghệ: Hồng ngoại&lt;/div&gt;&lt;div&gt;• Công cụ viết: Bằng Bút điện tử, bằng tay, bằng gậy điện tử&lt;/div&gt;&lt;div&gt;• Kích thước vùng sử dụng: 1540 mm x 1160 mm&lt;/div&gt;', 'SmartView HVB - 8000I', 'SmartView HVB - 8000I', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_discount`
--

CREATE TABLE IF NOT EXISTS `product_discount` (
`product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=472 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_discount`
--

INSERT INTO `product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(446, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(445, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(444, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00'),
(450, 50, 1, 100, 1, '100.0000', '2015-02-09', '2015-02-14'),
(471, 51, 1, 200, 2, '500.0000', '0000-00-00', '0000-00-00'),
(470, 51, 1, 100, 1, '1000.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product_file`
--

CREATE TABLE IF NOT EXISTS `product_file` (
`product_file_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `file_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_file`
--

INSERT INTO `product_file` (`product_file_id`, `product_id`, `filename`, `file_description`, `sort_order`) VALUES
(85, 1070, 'files/DJI/PHANTOM_Prop_Guard_v1.02.pdf', 'DJI Phatom Prop Guard v1.0.2', 1),
(100, 642, 'files/GPSassembly.pdf', '', 3),
(99, 642, 'files/NAZAprocedureswithFutaba7C.pdf', '', 2),
(98, 642, 'files/Futaba7C_functions_for_F450_NAZA_with_cam_mount_Sheet1.pdf', '', 1),
(101, 642, 'files/propellers%20guide.pdf', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_filter`
--

CREATE TABLE IF NOT EXISTS `product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE IF NOT EXISTS `product_image` (
`product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2584 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2559, 51, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_FrontTop_l.jpg', 0),
(2560, 51, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_right_l.jpg', 0),
(2571, 50, 'catalog/Products/Projector/Vivitek/D950, D965/D967-BK_back_l.jpg', 0),
(2572, 50, 'catalog/Products/Projector/Vivitek/D950, D965/D950HD_D963_left_l.jpg', 0),
(2573, 50, 'catalog/Products/Projector/Vivitek/D950, D965/D950HD_D963_right_l.jpg', 0),
(2547, 52, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Top_l.jpg', 0),
(2520, 53, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_front_l.jpg', 0),
(2522, 53, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_right_l.jpg', 0),
(2542, 54, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Rear_l.jpg', 0),
(2561, 51, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Front_l.jpg', 0),
(2562, 51, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_left_l.jpg', 0),
(2563, 51, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Top_l.jpg', 0),
(2548, 52, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_FrontTop_l.jpg', 0),
(2549, 52, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_left_l.jpg', 0),
(2550, 52, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_back_l.jpg', 0),
(2551, 52, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Front_l.jpg', 0),
(2521, 53, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_fronttop_l.jpg', 0),
(2523, 53, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_left_l.jpg', 0),
(2543, 54, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_RearHero_l.jpg', 0),
(2544, 54, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_LeftHero_l.jpg', 0),
(2545, 54, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Front_l.jpg', 0),
(2541, 54, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_RightHero_l.jpg', 0),
(2582, 55, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_RightHero_l.jpg', 0),
(2581, 55, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Rear_l.jpg', 0),
(2580, 55, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_RearHero_l.jpg', 0),
(2579, 55, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_LeftHero_l.jpg', 0),
(2578, 55, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Front_l.jpg', 0),
(2539, 56, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_RightHero_l.jpg', 0),
(2538, 56, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Rear_l.jpg', 0),
(2537, 56, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_RearHero_l.jpg', 0),
(2536, 56, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_LeftHero_l.jpg', 0),
(2535, 56, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Front_l.jpg', 0),
(2557, 57, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_left_l.jpg', 0),
(2556, 57, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_back_l.jpg', 0),
(2555, 57, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Top_l.jpg', 0),
(2554, 57, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_Front_l.jpg', 0),
(2553, 57, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_FrontTop_l.jpg', 0),
(2533, 58, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_rear_l.jpg', 0),
(2532, 58, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_left_l.jpg', 0),
(2531, 58, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_fronttop_l.jpg', 0),
(2530, 58, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_front_l.jpg', 0),
(2576, 59, 'catalog/Products/Projector/Vivitek/D950, D965/D950HD_D963_front-l.jpg', 0),
(2575, 59, 'catalog/Products/Projector/Vivitek/D950, D965/D950HD_D963_left_l.jpg', 0),
(2570, 60, 'catalog/Products/Projector/Vivitek/D867/medium_Vivitek_H1180-85HD_Front.png', 0),
(2569, 60, 'catalog/Products/Projector/Vivitek/D867/medium_Vivitek_D867_Right Hero.png', 0),
(2568, 60, 'catalog/Products/Projector/Vivitek/D867/medium_Vivitek_D867_LeftHero.png', 0),
(2567, 60, 'catalog/Products/Projector/Vivitek/D867/medium_Vivitek_D867_Front Top.png', 0),
(2566, 60, 'catalog/Products/Projector/Vivitek/D867/medium_Vivitek_D867_BackTop.png', 0),
(2565, 60, 'catalog/Products/Projector/Vivitek/D867/medium_Vivitek_D867_IO_Ports.jpg', 0),
(2574, 59, 'catalog/Products/Projector/Vivitek/D950, D965/D950HD_D963_right_l.jpg', 0),
(2528, 61, 'catalog/Products/Projector/Vivitek/D556/medium_Vivitek_D556_Front.jpg', 0),
(2527, 61, 'catalog/Products/Projector/Vivitek/D556/medium_Vivitek_D556_Front_LeftHero.jpg', 0),
(2526, 61, 'catalog/Products/Projector/Vivitek/D556/medium_Vivitek_D556_Front_RightHero.jpg', 0),
(2525, 61, 'catalog/Products/Projector/Vivitek/D556/medium_Vivitek_D556_Front_Topangle.jpg', 0),
(2524, 61, 'catalog/Products/Projector/Vivitek/D556/medium_Vivitek_D556_IO Ports_HDMI.jpg', 0),
(2454, 62, 'catalog/Products/Projector/Smart View/Visualizer/Visualizer-SVP-2000X-connector.png', 0),
(2453, 62, 'catalog/Products/Projector/Smart View/Visualizer/Untitled.png', 0),
(2512, 82, 'catalog/Products/Projector/Triumph Board/PJ1000 ST DLP/left.jpg', 0),
(2511, 82, 'catalog/Products/Projector/Triumph Board/PJ1000 ST DLP/Banner24_PJ1000.jpg', 0),
(2509, 80, 'catalog/Products/Projector/Triumph Board/PJ3000i UST-W DLP/PJ3000i UST-W DLP 02.jpg', 0),
(2507, 79, 'catalog/Products/Audio/SHOW/Amply/MPA-120RS/back.jpg', 0),
(2506, 78, 'catalog/Products/Audio/SHOW/Amply/MPA-120RS/back.jpg', 0),
(2503, 76, 'catalog/Products/Audio/SHOW/Amply/MPA-120/back.jpg', 0),
(2496, 74, 'catalog/Products/Audio/SHOW/Amply/MPA-60R/back.jpg', 0),
(2484, 72, 'catalog/Products/Audio/SHOW/Amply/MPA-30CH/back.jpg', 0),
(2493, 70, 'catalog/Products/Audio/SHOW/Amply/MPA-30HR/back.jpg', 0),
(2490, 67, 'catalog/Products/Audio/SHOW/SPM6122 COMBO/accessories.png', 0),
(2489, 67, 'catalog/Products/Audio/SHOW/SPM6122 COMBO/tech.png', 0),
(2464, 64, 'catalog/Products/Projector/Smart View/Visualizer/Visualizer-SVP-2000X-connector.png', 0),
(2495, 73, 'catalog/Products/Audio/SHOW/Amply/MPA-60/back.jpg', 0),
(2486, 65, 'catalog/Products/Audio/SHOW/SPM4102 COMBO/tech.png', 0),
(2485, 65, 'catalog/Products/Audio/SHOW/SPM4102 COMBO/accessories.png', 0),
(2487, 66, 'catalog/Products/Audio/SHOW/SPM6122 COMBO/tech.png', 0),
(2488, 66, 'catalog/Products/Audio/SHOW/SPM6122 COMBO/accessories.png', 0),
(2510, 81, 'catalog/Products/Projector/Triumph Board/PJ3000i UST-W DLP/PJ3000i UST-W DLP 02.jpg', 0),
(2504, 77, 'catalog/Products/Audio/SHOW/Amply/MPA-120S/back.jpg', 0),
(2497, 75, 'catalog/Products/Audio/SHOW/Amply/MPA-60 ECHO/back.jpg', 0),
(2494, 71, 'catalog/Products/Audio/SHOW/Amply/MPA-30H/back.jpg', 0),
(2491, 69, 'catalog/Products/Audio/SHOW/Amply/MPA- 30R/back.jpg', 0),
(2463, 64, 'catalog/Products/Projector/Smart View/Visualizer/Untitled.png', 0),
(2478, 68, 'catalog/Products/JMC/JCOM-JMC-5000-System.jpg', 0),
(2502, 63, 'catalog/Products/Projector/Maxclone/3.jpg', 0),
(2501, 63, 'catalog/Products/Projector/Maxclone/01.jpg', 0),
(2500, 63, 'catalog/Products/Projector/Maxclone/02.jpg', 0),
(2499, 63, 'catalog/Products/Projector/Maxclone/4.jpg', 0),
(2498, 63, 'catalog/Products/Projector/Maxclone/Nhan-Ban-May-Tinh.jpg', 0),
(2513, 82, 'catalog/Products/Projector/Triumph Board/PJ1000 ST DLP/side.jpg', 0),
(2519, 53, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_rear_l.jpg', 0),
(2529, 61, 'catalog/Products/Projector/Vivitek/D556/medium_Vivitek_D556_Top.jpg', 0),
(2534, 58, 'catalog/Products/Projector/Vivitek/D510 - D537/D510-D537W_right_l.jpg', 0),
(2540, 56, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Top_l.jpg', 0),
(2546, 54, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Top_l.jpg', 0),
(2552, 52, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_right_l.jpg', 0),
(2558, 57, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_right_l.jpg', 0),
(2564, 51, 'catalog/Products/Projector/Vivitek/D851 - D853/D851_D853_back_l.jpg', 0),
(2577, 59, 'catalog/Products/Projector/Vivitek/D950, D965/D967-BK_back_l.jpg', 0),
(2583, 55, 'catalog/Products/Projector/Vivitek/D7 Series/D7_series2_Top_l.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE IF NOT EXISTS `product_option` (
`product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_option`
--

INSERT INTO `product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(221, 42, 9, '22:25', 1),
(223, 42, 2, '', 1),
(217, 42, 5, '', 1),
(209, 42, 6, '', 1),
(218, 42, 1, '', 1),
(208, 42, 4, 'test', 1),
(226, 30, 5, '', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(228, 51, 13, 'ADD YOU MORE DETAIL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_value`
--

CREATE TABLE IF NOT EXISTS `product_option_value` (
`product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_option_value`
--

INSERT INTO `product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `product_recurring`
--

CREATE TABLE IF NOT EXISTS `product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_recurring`
--

INSERT INTO `product_recurring` (`product_id`, `recurring_id`, `customer_group_id`) VALUES
(51, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_related`
--

CREATE TABLE IF NOT EXISTS `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_related`
--

INSERT INTO `product_related` (`product_id`, `related_id`) VALUES
(50, 51),
(50, 52),
(50, 53),
(50, 59),
(51, 50),
(51, 52),
(51, 53),
(51, 60),
(52, 50),
(52, 51),
(52, 53),
(52, 57),
(52, 60),
(53, 50),
(53, 51),
(53, 52),
(53, 61),
(54, 55),
(54, 56),
(55, 54),
(55, 56),
(56, 54),
(56, 55),
(57, 52),
(57, 60),
(58, 61),
(59, 50),
(60, 51),
(60, 52),
(60, 57),
(61, 53),
(61, 58),
(62, 64),
(64, 62),
(65, 66),
(66, 65),
(66, 67),
(67, 66),
(80, 81),
(81, 80);

-- --------------------------------------------------------

--
-- Table structure for table `product_reward`
--

CREATE TABLE IF NOT EXISTS `product_reward` (
`product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=567 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_reward`
--

INSERT INTO `product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(549, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(547, 49, 1, 1000),
(553, 50, 1, 0),
(566, 51, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `product_special`
--

CREATE TABLE IF NOT EXISTS `product_special` (
`product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_special`
--

INSERT INTO `product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(441, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(448, 51, 1, 1, '13500.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product_to_category`
--

CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(50, 59),
(51, 59),
(52, 59),
(53, 59),
(54, 59),
(55, 59),
(56, 59),
(57, 59),
(59, 59),
(60, 59),
(61, 59),
(62, 63),
(63, 65),
(64, 63),
(65, 67),
(65, 69),
(66, 67),
(66, 69),
(67, 67),
(67, 69),
(68, 64),
(69, 68),
(69, 69),
(70, 68),
(70, 69),
(71, 68),
(71, 69),
(72, 68),
(72, 69),
(73, 68),
(73, 69),
(74, 68),
(74, 69),
(75, 68),
(75, 69),
(76, 68),
(76, 69),
(77, 68),
(77, 69),
(78, 68),
(78, 69),
(79, 68),
(79, 69),
(80, 59),
(81, 59),
(82, 59),
(83, 61);

-- --------------------------------------------------------

--
-- Table structure for table `product_to_download`
--

CREATE TABLE IF NOT EXISTS `product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_to_layout`
--

CREATE TABLE IF NOT EXISTS `product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_to_layout`
--

INSERT INTO `product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(53, 0, 0),
(52, 0, 0),
(51, 0, 0),
(50, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(63, 1, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_to_store`
--

CREATE TABLE IF NOT EXISTS `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_to_store`
--

INSERT INTO `product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 1),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_video`
--

CREATE TABLE IF NOT EXISTS `product_video` (
`product_video_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `video` text COLLATE utf8_bin NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1880 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `product_video`
--

INSERT INTO `product_video` (`product_video_id`, `product_id`, `video`, `sort_order`) VALUES
(1874, 926, ' <embed src="http://player.youku.com/player.php/sid/XNTI5MDQ0MDg0/v.swf" allowFullScreen="true" quality="high" width="560" height="315" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>', 4),
(1873, 926, '<iframe width="560" height="315" src="//www.youtube.com/embed/cNdzBRNNkAw" frameborder="0" allowfullscreen></iframe>', 3),
(1872, 926, '<iframe width="560" height="315" src="//www.youtube.com/embed/JqzmRXrABag" frameborder="0" allowfullscreen></iframe>', 2),
(1796, 927, ' <embed src="http://player.youku.com/player.php/sid/XNTI5MDQ0MDg0/v.swf" allowFullScreen="true" quality="high" width="560" height="315" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>', 4),
(1795, 927, '<iframe width="560" height="315" src="//www.youtube.com/embed/cNdzBRNNkAw" frameborder="0" allowfullscreen></iframe>', 3),
(1794, 927, '<iframe width="560" height="315" src="//www.youtube.com/embed/JqzmRXrABag" frameborder="0" allowfullscreen></iframe>', 2),
(1793, 927, '<iframe width="420" height="315" src="//www.youtube.com/embed/Ht-zlBD_uO4" frameborder="0" allowfullscreen></iframe>', 1),
(1800, 929, ' <embed src="http://player.youku.com/player.php/sid/XNTI5MDQ0MDg0/v.swf" allowFullScreen="true" quality="high" width="560" height="315" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>', 4),
(1799, 929, '<iframe width="560" height="315" src="//www.youtube.com/embed/cNdzBRNNkAw" frameborder="0" allowfullscreen></iframe>', 3),
(1798, 929, '<iframe width="560" height="315" src="//www.youtube.com/embed/JqzmRXrABag" frameborder="0" allowfullscreen></iframe>', 2),
(1797, 929, '<iframe width="420" height="315" src="//www.youtube.com/embed/Ht-zlBD_uO4" frameborder="0" allowfullscreen></iframe>', 1),
(1681, 931, '<iframe width="560" height="315" src="//www.youtube.com/embed/mtdcqdYlRxc" frameborder="0" allowfullscreen></iframe>', 1),
(1788, 994, '<iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/8vo1elQFpUQ" width="560"></iframe>', 4),
(1787, 994, '<iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/jp6oFghCxOA" width="560"></iframe>', 3),
(1786, 994, '<iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/fHQg-rH9LRw" width="560"></iframe>', 2),
(1785, 994, '<iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/2AVoTDkxexo" width="560"></iframe>', 1),
(1091, 930, '<iframe width="420" height="315" src="//www.youtube.com/embed/m_zvalXWct4" frameborder="0" allowfullscreen></iframe>', 4),
(1090, 930, '<iframe width="420" height="315" src="//www.youtube.com/embed/awSWaXlF1VU" frameborder="0" allowfullscreen></iframe>', 3),
(1089, 930, '<iframe width="420" height="315" src="//www.youtube.com/embed/8pLl01qsHrU" frameborder="0" allowfullscreen></iframe>', 2),
(1088, 930, '<iframe width="420" height="315" src="//www.youtube.com/embed/cGNKyQhLJxE" frameborder="0" allowfullscreen></iframe>', 1),
(1635, 1002, '<iframe width="420" height="315" src="//www.youtube.com/embed/zgOb2I1dW48" frameborder="0" allowfullscreen></iframe>', 1),
(1804, 361, '<iframe width="480" height="360" src="//www.youtube.com/embed/NQYDCM6i7Fc" frameborder="0" allowfullscreen></iframe>', 4),
(1803, 361, '<iframe width="480" height="360" src="//www.youtube.com/embed/b5ao8zaX2xk" frameborder="0" allowfullscreen></iframe>', 3),
(1802, 361, '<iframe width="480" height="360" src="//www.youtube.com/embed/X6aA8V2zkvc" frameborder="0" allowfullscreen></iframe>', 2),
(1801, 361, '<iframe width="480" height="360" src="//www.youtube.com/embed/3GAsX3aUWXk" frameborder="0" allowfullscreen></iframe>', 1),
(1632, 1004, '<iframe width="560" height="315" src="//www.youtube.com/embed/WOBNheiXbMQ" frameborder="0" allowfullscreen></iframe>', 1),
(1871, 926, '<iframe width="420" height="315" src="//www.youtube.com/embed/Ht-zlBD_uO4" frameborder="0" allowfullscreen></iframe>', 1),
(1627, 1089, '<iframe src="//player.vimeo.com/video/74440384?title=0&byline=0&portrait=0&color=033e45" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', 1),
(1870, 1178, '<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/wGUc_kLBIg8?rel=0" frameborder="0" allowfullscreen></iframe>', 2),
(1869, 1178, '<iframe width="560" height="315" src="//www.youtube.com/embed/FjRaCYtQtvM" frameborder="0" allowfullscreen></iframe>', 1),
(890, 1179, '<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/wGUc_kLBIg8?rel=0" frameborder="0" allowfullscreen></iframe>', 2),
(889, 1179, '<iframe width="560" height="315" src="//www.youtube.com/embed/FjRaCYtQtvM" frameborder="0" allowfullscreen></iframe>', 1),
(1778, 1171, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1768, 1234, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1780, 1172, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1782, 1168, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1776, 1173, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1819, 1170, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1784, 1167, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1736, 1169, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1767, 1234, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1777, 1171, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1779, 1172, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1781, 1168, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1775, 1173, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1818, 1170, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1783, 1167, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1735, 1169, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732915390001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1864, 1197, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 3),
(1863, 1197, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2732917212001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 2),
(1862, 1197, '<object id="flashObj" width="480" height="270" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,47,0"><param name="movie" value="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" /><param name="bgcolor" value="#FFFFFF" /><param name="flashVars" value="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" /><param name="base" value="http://admin.brightcove.com" /><param name="seamlesstabbing" value="false" /><param name="allowFullScreen" value="true" /><param name="swLiveConnect" value="true" /><param name="allowScriptAccess" value="always" /><embed src="http://c.brightcove.com/services/viewer/federated_f9?isVid=1&isUI=1" bgcolor="#FFFFFF" flashVars="videoId=2920108974001&playerID=63208753001&playerKey=AQ~~,AAAADrac6hk~,hFiWyN-7K3VQcVLMQMK1RKItFgCIL1Ot&domain=embed&dynamicStreaming=true" base="http://admin.brightcove.com" name="flashObj" width="480" height="270" seamlesstabbing="false" type="application/x-shockwave-flash" allowFullScreen="true" allowScriptAccess="always" swLiveConnect="true" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></embed></object>', 1),
(1765, 1298, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1772, 1189, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1761, 1304, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1762, 1302, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1763, 1301, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1764, 1300, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1760, 1305, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1759, 1307, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1756, 1310, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1820, 1308, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1758, 1306, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1755, 1312, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1754, 1313, '<object width="560" height="315"><param name="movie" value="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="//www.youtube.com/v/VhDAILW9UAE?hl=en_US&version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed></object>', 1),
(1629, 1356, '<iframe width="560" height="315" src="//www.youtube.com/embed/Qi5pTJqvIbo" frameborder="0" allowfullscreen></iframe>', 2),
(1766, 1299, '<iframe width="560" height="315" src="//www.youtube.com/embed/CRtfbHliDxw" frameborder="0" allowfullscreen></iframe>', 1),
(1628, 1356, '<iframe width="560" height="315" src="//www.youtube.com/embed/Qi5pTJqvIbo" frameborder="0" allowfullscreen></iframe>', 1),
(1630, 1361, '<iframe width="560" height="315" src="//www.youtube.com/embed/Qi5pTJqvIbo" frameborder="0" allowfullscreen></iframe>', 1),
(1753, 1359, '<iframe width="560" height="315" src="//www.youtube.com/embed/Qi5pTJqvIbo" frameborder="0" allowfullscreen></iframe>', 1),
(1633, 1364, '<iframe width="560" height="315" src="//www.youtube.com/embed/Qi5pTJqvIbo" frameborder="0" allowfullscreen></iframe>', 1),
(1634, 1358, '<iframe width="560" height="315" src="//www.youtube.com/embed/Qi5pTJqvIbo" frameborder="0" allowfullscreen></iframe>', 1),
(1636, 1365, '<iframe width="560" height="315" src="//www.youtube.com/embed/Qi5pTJqvIbo" frameborder="0" allowfullscreen></iframe>', 1),
(1858, 1447, '<iframe width="560" height="315" src="//www.youtube.com/embed/mfVz8Lieqvk" frameborder="0" allowfullscreen></iframe>', 2),
(1857, 1447, '<iframe width="560" height="315" src="//www.youtube.com/embed/UGkXcjNm0n0" frameborder="0" allowfullscreen></iframe>', 1),
(1832, 1497, '<iframe width="560" height="315" src="//www.youtube.com/embed/MCnD8CFPj_g" frameborder="0" allowfullscreen></iframe>', 1),
(1490, 1218, '', 1),
(1875, 49, ' <embed src="http://player.youku.com/player.php/sid/XNTI5MDQ0MDg0/v.swf" allowFullScreen="true" quality="high" width="560" height="315" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>', 1),
(1877, 42, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6UU7kj6ntzc" frameborder="0" allowfullscreen></iframe>', 1),
(1879, 50, '<iframe width="560" height="315" src="https://www.youtube.com/embed/6UU7kj6ntzc" frameborder="0" allowfullscreen></iframe>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recurring`
--

CREATE TABLE IF NOT EXISTS `recurring` (
`recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_description`
--

CREATE TABLE IF NOT EXISTS `recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE IF NOT EXISTS `return` (
`return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `return_action`
--

CREATE TABLE IF NOT EXISTS `return_action` (
`return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_action`
--

INSERT INTO `return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `return_history`
--

CREATE TABLE IF NOT EXISTS `return_history` (
`return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `return_reason`
--

CREATE TABLE IF NOT EXISTS `return_reason` (
`return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_reason`
--

INSERT INTO `return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `return_status`
--

CREATE TABLE IF NOT EXISTS `return_status` (
`return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_status`
--

INSERT INTO `return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
`review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 46, 0, 'Tester', 'TEstingnbvcjxbjxbhvjbxcjkvbckjsvbxkjbcvkbcvkjbxvlbxjvbczjbvjzbvjbcjvbjcbvjzbkbckbzkcbvkzbvkbdsjbsjdbvjkbdfjbsdvjbxckjbvkjxcbvjkzxbcvkjbzxkjcvbzkbvkbcklvbzxkjbvkjzbxcvkjxzbkvbSIhfahf hdof hfojeoaw v oew oewf oahfopa hfapfe oihfaoiuhfoihfohafoihih faihfoi ahfihapohophophfoahfoaphfoahfoah fpoahfohaofihaoihefoaihfeohaoefhafhoaihfoiahdoihsdoihdshfdaoshfadoshfdhasfoiadhsfoaishdfoaishfoisdhfoiasdhfoiasdhfoiashdfoaishdfoisadhfoiahdsofihaosidhfoaihfoidhasofihasoifhsaoidhfoaisdhfoaishdfoihsdfoihasdhfasoioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioioid', 5, 1, '2015-02-09 14:26:54', '2015-02-09 15:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2008 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(2007, 0, 'config', 'config_google_analytics', '', 0),
(2006, 0, 'config', 'config_error_filename', 'error.log', 0),
(2005, 0, 'config', 'config_error_log', '1', 0),
(2003, 0, 'config', 'config_compression', '0', 0),
(2002, 0, 'config', 'config_encryption', 'a13a2238fce2311d2574d922b153f88b', 0),
(2001, 0, 'config', 'config_password', '1', 0),
(2000, 0, 'config', 'config_maintenance', '0', 0),
(1978, 0, 'config', 'config_image_cart_height', '47', 0),
(1979, 0, 'config', 'config_image_location_width', '268', 0),
(1980, 0, 'config', 'config_image_location_height', '50', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(2004, 0, 'config', 'config_error_display', '1', 0),
(1999, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(1998, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(1997, 0, 'config', 'config_file_max_size', '300000', 0),
(1996, 0, 'config', 'config_seo_url', '0', 0),
(1981, 0, 'config', 'config_ftp_hostname', '', 0),
(1982, 0, 'config', 'config_ftp_port', '', 0),
(1983, 0, 'config', 'config_ftp_username', '', 0),
(1984, 0, 'config', 'config_ftp_password', '', 0),
(1985, 0, 'config', 'config_ftp_root', '', 0),
(1986, 0, 'config', 'config_ftp_status', '0', 0),
(1987, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"smtp";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:20:"ssl://smtp.gmail.com";s:13:"smtp_username";s:24:"huuhanh.com.vn@gmail.com";s:13:"smtp_password";s:17:"trungdunggamerno1";s:9:"smtp_port";s:3:"465";s:12:"smtp_timeout";s:1:"5";}', 1),
(1988, 0, 'config', 'config_mail_alert', '', 0),
(1989, 0, 'config', 'config_fraud_detection', '0', 0),
(1990, 0, 'config', 'config_fraud_key', '', 0),
(1991, 0, 'config', 'config_fraud_score', '', 0),
(1992, 0, 'config', 'config_fraud_status_id', '7', 0),
(1993, 0, 'config', 'config_secure', '0', 0),
(1994, 0, 'config', 'config_shared', '0', 0),
(1995, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1977, 0, 'config', 'config_image_cart_width', '47', 0),
(1976, 0, 'config', 'config_image_wishlist_height', '47', 0),
(1973, 0, 'config', 'config_image_compare_width', '90', 0),
(1974, 0, 'config', 'config_image_compare_height', '90', 0),
(1975, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1964, 0, 'config', 'config_image_thumb_height', '500', 0),
(1965, 0, 'config', 'config_image_popup_width', '500', 0),
(1966, 0, 'config', 'config_image_popup_height', '500', 0),
(1967, 0, 'config', 'config_image_product_width', '500', 0),
(1968, 0, 'config', 'config_image_product_height', '500', 0),
(1969, 0, 'config', 'config_image_additional_width', '74', 0),
(1970, 0, 'config', 'config_image_additional_height', '74', 0),
(1971, 0, 'config', 'config_image_related_width', '80', 0),
(1972, 0, 'config', 'config_image_related_height', '80', 0),
(1944, 0, 'config', 'config_checkout_id', '5', 0),
(1945, 0, 'config', 'config_order_status_id', '1', 0),
(1946, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(1947, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(1948, 0, 'config', 'config_order_mail', '0', 0),
(1949, 0, 'config', 'config_stock_display', '0', 0),
(1950, 0, 'config', 'config_stock_warning', '0', 0),
(1951, 0, 'config', 'config_stock_checkout', '0', 0),
(1952, 0, 'config', 'config_affiliate_approval', '0', 0),
(1953, 0, 'config', 'config_affiliate_auto', '0', 0),
(1954, 0, 'config', 'config_affiliate_commission', '5', 0),
(1955, 0, 'config', 'config_affiliate_id', '4', 0),
(1956, 0, 'config', 'config_affiliate_mail', '0', 0),
(1957, 0, 'config', 'config_return_id', '0', 0),
(1958, 0, 'config', 'config_return_status_id', '2', 0),
(1959, 0, 'config', 'config_logo', '/logo1.png', 0),
(1960, 0, 'config', 'config_icon', '/icon.png', 0),
(1961, 0, 'config', 'config_image_category_width', '80', 0),
(1962, 0, 'config', 'config_image_category_height', '80', 0),
(1963, 0, 'config', 'config_image_thumb_width', '500', 0),
(394, 0, 'journal2_static_banners', 'journal2_static_banners_74_status', '148', 0),
(395, 0, 'journal2_static_banners', 'journal2_static_banners_75_status', '149', 0),
(396, 0, 'journal2_static_banners', 'journal2_static_banners_76_status', '150', 0),
(397, 0, 'journal2_static_banners', 'journal2_static_banners_77_status', '151', 0),
(398, 0, 'journal2_static_banners', 'journal2_static_banners_78_status', '152', 0),
(399, 0, 'journal2_static_banners', 'journal2_static_banners_79_status', '153', 0),
(1234, 0, 'journal2_carousel', 'journal2_carousel_251_status', '0', 0),
(1233, 0, 'journal2_carousel', 'journal2_carousel_250_status', '156', 0),
(1232, 0, 'journal2_carousel', 'journal2_carousel_249_status', '0', 0),
(1231, 0, 'journal2_carousel', 'journal2_carousel_248_status', '0', 0),
(404, 0, 'journal2_super_sections', 'journal2_super_sections_84_status', '158', 0),
(405, 0, 'journal2_blog_tags', 'journal2_blog_tags_85_status', '159', 0),
(406, 0, 'journal2_blog_tags', 'journal2_blog_tags_86_status', '160', 0),
(407, 0, 'journal2_simple_slider', 'journal2_simple_slider_87_status', '161', 0),
(853, 0, 'journal2_blog_posts', 'journal2_blog_posts_196_status', '166', 0),
(852, 0, 'journal2_blog_posts', 'journal2_blog_posts_195_status', '165', 0),
(851, 0, 'journal2_blog_posts', 'journal2_blog_posts_194_status', '164', 0),
(850, 0, 'journal2_blog_posts', 'journal2_blog_posts_193_status', '163', 0),
(849, 0, 'journal2_blog_posts', 'journal2_blog_posts_192_status', '162', 0),
(413, 0, 'journal2_blog_search', 'journal2_blog_search_93_status', '167', 0),
(414, 0, 'journal2_blog_search', 'journal2_blog_search_94_status', '168', 0),
(415, 0, 'journal2_blog_categories', 'journal2_blog_categories_95_status', '169', 0),
(416, 0, 'journal2_blog_categories', 'journal2_blog_categories_96_status', '170', 0),
(417, 0, 'journal2_photo_gallery', 'journal2_photo_gallery_97_status', '171', 0),
(418, 0, 'journal2_photo_gallery', 'journal2_photo_gallery_98_status', '172', 0),
(419, 0, 'journal2_fullscreen_slider', 'journal2_fullscreen_slider_99_status', '173', 0),
(420, 0, 'journal2_fullscreen_slider', 'journal2_fullscreen_slider_100_status', '174', 0),
(878, 0, 'journal2_super_filter', 'journal2_super_filter_225_status', '1', 0),
(872, 0, 'journal2_side_category', 'journal2_side_category_219_status', '1', 0),
(871, 0, 'journal2_side_category', 'journal2_side_category_218_status', '1', 0),
(870, 0, 'journal2_side_category', 'journal2_side_category_217_status', '1', 0),
(427, 0, 'journal2_side_blocks', 'journal2_side_blocks_107_status', '219', 0),
(428, 0, 'journal2_side_blocks', 'journal2_side_blocks_108_status', '218', 0),
(429, 0, 'journal2_side_blocks', 'journal2_side_blocks_109_status', '217', 0),
(430, 0, 'journal2_side_blocks', 'journal2_side_blocks_110_status', '216', 0),
(431, 0, 'journal2_side_blocks', 'journal2_side_blocks_111_status', '220', 0),
(432, 0, 'journal2_blog_comments', 'journal2_blog_comments_112_status', '184', 0),
(433, 0, 'journal2_blog_comments', 'journal2_blog_comments_113_status', '185', 0),
(880, 0, 'journal2_advanced_grid', 'journal2_advanced_grid_227_status', '1', 0),
(879, 0, 'journal2_advanced_grid', 'journal2_advanced_grid_226_status', '0', 0),
(436, 0, 'journal2_side_products', 'journal2_side_products_116_status', '188', 0),
(437, 0, 'journal2_text_rotator', 'journal2_text_rotator_117_status', '189', 0),
(438, 0, 'journal2_text_rotator', 'journal2_text_rotator_118_status', '190', 0),
(439, 0, 'journal2_text_rotator', 'journal2_text_rotator_119_status', '191', 0),
(440, 0, 'journal2_carousel_grid', 'journal2_carousel_grid_120_status', '192', 0),
(877, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_224_status', '0', 0),
(1943, 0, 'config', 'config_checkout_guest', '0', 0),
(1942, 0, 'config', 'config_cart_weight', '0', 0),
(1567, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_254_status', '198', 0),
(1566, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_253_status', '1', 0),
(1565, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_252_status', '194', 0),
(447, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_127_status', '199', 0),
(448, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_128_status', '200', 0),
(449, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_129_status', '201', 0),
(450, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_130_status', '202', 0),
(818, 0, 'journal2_custom_sections', 'journal2_custom_sections_161_status', '203', 0),
(1941, 0, 'config', 'config_api_id', '1', 0),
(1940, 0, 'config', 'config_invoice_prefix', 'HHCO-2013-00', 0),
(1939, 0, 'config', 'config_account_mail', '0', 0),
(1938, 0, 'config', 'config_account_id', '3', 0),
(1937, 0, 'config', 'config_login_attempts', '5', 0),
(797, 0, 'journal2_newsletter', 'journal2_newsletter_140_status', '1', 0),
(796, 0, 'product_filter', 'product_filter_status', '1', 0),
(1936, 0, 'config', 'config_customer_price', '0', 0),
(1935, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(1934, 0, 'config', 'config_customer_group_id', '1', 0),
(1933, 0, 'config', 'config_customer_online', '0', 0),
(1932, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1931, 0, 'config', 'config_tax_default', 'shipping', 0),
(1930, 0, 'config', 'config_tax', '0', 0),
(1929, 0, 'config', 'config_voucher_max', '1000', 0),
(1928, 0, 'config', 'config_voucher_min', '1', 0),
(1927, 0, 'config', 'config_review_mail', '0', 0),
(1926, 0, 'config', 'config_review_guest', '1', 0),
(1925, 0, 'config', 'config_review_status', '1', 0),
(1923, 0, 'config', 'config_product_description_length', '100', 0),
(1924, 0, 'config', 'config_limit_admin', '20', 0),
(1922, 0, 'config', 'config_product_limit', '15', 0),
(1921, 0, 'config', 'config_product_count', '0', 0),
(1920, 0, 'config', 'config_weight_class_id', '1', 0),
(1919, 0, 'config', 'config_length_class_id', '1', 0),
(1918, 0, 'config', 'config_currency_auto', '1', 0),
(1917, 0, 'config', 'config_currency', 'VND', 0),
(1916, 0, 'config', 'config_admin_language', 'en', 0),
(1915, 0, 'config', 'config_language', 'vi', 0),
(1914, 0, 'config', 'config_zone_id', '3780', 0),
(1911, 0, 'config', 'config_template', 'journal2', 0),
(1912, 0, 'config', 'config_layout_id', '4', 0),
(1913, 0, 'config', 'config_country_id', '230', 0),
(1909, 0, 'config', 'config_meta_description', 'Huu Hanh Educational &amp; Training Systems Co., Ltd\r\nCông Ty Trách Nhiệm Hữu Hạn Thiết Bị Đào Tạo Hữu Hạnh', 0),
(1908, 0, 'config', 'config_meta_title', 'Huu Hanh Educational &amp; Training Systems Co., Ltd', 0),
(1910, 0, 'config', 'config_meta_keyword', 'giáo dục, thiết bị đào tạo, thiết bị văn phòng, thiết bị dạy học, thiết bị trường học.', 0),
(1906, 0, 'config', 'config_open', 'Thứ 2 - Thứ 6: Giờ hành chánh\r\nThứ 7: nghỉ buổi chiều', 0),
(1907, 0, 'config', 'config_comment', '', 0),
(1905, 0, 'config', 'config_image', '/logo1.png', 0),
(1904, 0, 'config', 'config_fax', '', 0),
(1903, 0, 'config', 'config_telephone', '(08) 39751 481', 0),
(1902, 0, 'config', 'config_email', 'dung.nt@huuhanh.com.vn', 0),
(1901, 0, 'config', 'config_geocode', '', 0),
(1899, 0, 'config', 'config_owner', 'Nguyễn Phan Chương', 0),
(1900, 0, 'config', 'config_address', '135C c/x Phú Hòa, Lạc Long Quân, Phường 5 Quận 11, Hồ Chí Minh', 0),
(1898, 0, 'config', 'config_name', 'Công Ty TNHH Thiết Bị Đào Tạo Hữu Hạnh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_status`
--

CREATE TABLE IF NOT EXISTS `stock_status` (
`stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_status`
--

INSERT INTO `stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
`store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
`tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE IF NOT EXISTS `tax_rate` (
`tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rate_to_customer_group`
--

INSERT INTO `tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rule`
--

CREATE TABLE IF NOT EXISTS `tax_rule` (
`tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_rule`
--

INSERT INTO `tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
`upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
`url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=854 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(836, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(835, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(853, 'information_id=4', 'about_us'),
(847, 'product_id=42', 'test'),
(789, 'category_id=34', 'mp3-players'),
(781, 'category_id=36', 'test2'),
(774, 'category_id=18', 'laptop-notebook'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(777, 'category_id=25', 'component'),
(778, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(782, 'category_id=30', 'printer'),
(783, 'category_id=31', 'scanner'),
(784, 'category_id=32', 'web-camera'),
(785, 'category_id=57', 'tablet'),
(786, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(788, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(809, 'product_id=30', 'canon-eos-5d'),
(840, 'product_id=47', 'hp-lp3065'),
(811, 'product_id=28', 'htc-touch-hd'),
(812, 'product_id=43', 'macbook'),
(813, 'product_id=44', 'macbook-air'),
(814, 'product_id=45', 'macbook-pro'),
(816, 'product_id=31', 'nikon-d300'),
(817, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(845, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(837, 'product_id=41', 'imac'),
(823, 'product_id=40', 'iphone'),
(825, 'product_id=36', 'ipod-nano'),
(826, 'product_id=34', 'ipod-shuffle'),
(827, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '99e27dea980ac321abb1134c478abe68c47835be', '94a8c0463', 'Dũng', 'Nguyễn', 'dung.nt100392@gmail.com', '', '', '::1', 1, '2015-02-06 16:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
`user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:183:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:15:"module/journal2";i:182;s:21:"module/product_filter";}s:6:"modify";a:183:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:15:"module/journal2";i:182;s:21:"module/product_filter";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE IF NOT EXISTS `voucher` (
`voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_history`
--

CREATE TABLE IF NOT EXISTS `voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_theme`
--

CREATE TABLE IF NOT EXISTS `voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher_theme`
--

INSERT INTO `voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucher_theme_description`
--

INSERT INTO `voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `weight_class`
--

CREATE TABLE IF NOT EXISTS `weight_class` (
`weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_class`
--

INSERT INTO `weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `weight_class_description`
--

CREATE TABLE IF NOT EXISTS `weight_class_description` (
`weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_class_description`
--

INSERT INTO `weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
`zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4225 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1);
INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1);
INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `zone_to_geo_zone` (
`zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zone_to_geo_zone`
--

INSERT INTO `zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
 ADD PRIMARY KEY (`address_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `affiliate`
--
ALTER TABLE `affiliate`
 ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `affiliate_activity`
--
ALTER TABLE `affiliate_activity`
 ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `affiliate_login`
--
ALTER TABLE `affiliate_login`
 ADD PRIMARY KEY (`affiliate_login_id`), ADD KEY `email` (`email`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `affiliate_transaction`
--
ALTER TABLE `affiliate_transaction`
 ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
 ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
 ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `attribute_description`
--
ALTER TABLE `attribute_description`
 ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `attribute_group`
--
ALTER TABLE `attribute_group`
 ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `attribute_group_description`
--
ALTER TABLE `attribute_group_description`
 ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `banner_image`
--
ALTER TABLE `banner_image`
 ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `banner_image_description`
--
ALTER TABLE `banner_image_description`
 ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`category_id`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `category_description`
--
ALTER TABLE `category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `category_filter`
--
ALTER TABLE `category_filter`
 ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `category_path`
--
ALTER TABLE `category_path`
 ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `category_to_layout`
--
ALTER TABLE `category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `category_to_store`
--
ALTER TABLE `category_to_store`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `coupon_category`
--
ALTER TABLE `coupon_category`
 ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `coupon_history`
--
ALTER TABLE `coupon_history`
 ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `coupon_product`
--
ALTER TABLE `coupon_product`
 ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_activity`
--
ALTER TABLE `customer_activity`
 ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `customer_ban_ip`
--
ALTER TABLE `customer_ban_ip`
 ADD PRIMARY KEY (`customer_ban_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
 ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `customer_group_description`
--
ALTER TABLE `customer_group_description`
 ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `customer_history`
--
ALTER TABLE `customer_history`
 ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `customer_ip`
--
ALTER TABLE `customer_ip`
 ADD PRIMARY KEY (`customer_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `customer_login`
--
ALTER TABLE `customer_login`
 ADD PRIMARY KEY (`customer_login_id`), ADD KEY `email` (`email`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `customer_online`
--
ALTER TABLE `customer_online`
 ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `customer_reward`
--
ALTER TABLE `customer_reward`
 ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `customer_transaction`
--
ALTER TABLE `customer_transaction`
 ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `custom_field`
--
ALTER TABLE `custom_field`
 ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `custom_field_customer_group`
--
ALTER TABLE `custom_field_customer_group`
 ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `custom_field_description`
--
ALTER TABLE `custom_field_description`
 ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `custom_field_value`
--
ALTER TABLE `custom_field_value`
 ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `custom_field_value_description`
--
ALTER TABLE `custom_field_value_description`
 ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `download_description`
--
ALTER TABLE `download_description`
 ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `filter_description`
--
ALTER TABLE `filter_description`
 ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `filter_group`
--
ALTER TABLE `filter_group`
 ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `filter_group_description`
--
ALTER TABLE `filter_group_description`
 ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `geo_zone`
--
ALTER TABLE `geo_zone`
 ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
 ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `information_description`
--
ALTER TABLE `information_description`
 ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `information_to_layout`
--
ALTER TABLE `information_to_layout`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `information_to_store`
--
ALTER TABLE `information_to_store`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `journal2_blog_category`
--
ALTER TABLE `journal2_blog_category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `journal2_blog_category_description`
--
ALTER TABLE `journal2_blog_category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Indexes for table `journal2_blog_category_to_layout`
--
ALTER TABLE `journal2_blog_category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`), ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `journal2_blog_comments`
--
ALTER TABLE `journal2_blog_comments`
 ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `journal2_blog_post`
--
ALTER TABLE `journal2_blog_post`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `journal2_blog_post_description`
--
ALTER TABLE `journal2_blog_post_description`
 ADD PRIMARY KEY (`post_id`,`language_id`);

--
-- Indexes for table `journal2_blog_post_to_category`
--
ALTER TABLE `journal2_blog_post_to_category`
 ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `journal2_blog_post_to_layout`
--
ALTER TABLE `journal2_blog_post_to_layout`
 ADD PRIMARY KEY (`post_id`,`store_id`), ADD KEY `layout_id` (`layout_id`);

--
-- Indexes for table `journal2_blog_post_to_product`
--
ALTER TABLE `journal2_blog_post_to_product`
 ADD PRIMARY KEY (`post_id`,`product_id`);

--
-- Indexes for table `journal2_config`
--
ALTER TABLE `journal2_config`
 ADD PRIMARY KEY (`key`,`store_id`);

--
-- Indexes for table `journal2_modules`
--
ALTER TABLE `journal2_modules`
 ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `journal2_newsletter`
--
ALTER TABLE `journal2_newsletter`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `journal2_settings`
--
ALTER TABLE `journal2_settings`
 ADD PRIMARY KEY (`key`,`theme_id`);

--
-- Indexes for table `journal2_skins`
--
ALTER TABLE `journal2_skins`
 ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
 ADD PRIMARY KEY (`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `layout`
--
ALTER TABLE `layout`
 ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `layout_module`
--
ALTER TABLE `layout_module`
 ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `layout_route`
--
ALTER TABLE `layout_route`
 ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `length_class`
--
ALTER TABLE `length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `length_class_description`
--
ALTER TABLE `length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`location_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `manufacturer_to_store`
--
ALTER TABLE `manufacturer_to_store`
 ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `marketing`
--
ALTER TABLE `marketing`
 ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `modification`
--
ALTER TABLE `modification`
 ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
 ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
 ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `option_description`
--
ALTER TABLE `option_description`
 ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `option_value`
--
ALTER TABLE `option_value`
 ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `option_value_description`
--
ALTER TABLE `option_value_description`
 ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_custom_field`
--
ALTER TABLE `order_custom_field`
 ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `order_fraud`
--
ALTER TABLE `order_fraud`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
 ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `order_option`
--
ALTER TABLE `order_option`
 ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
 ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `order_recurring`
--
ALTER TABLE `order_recurring`
 ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `order_recurring_transaction`
--
ALTER TABLE `order_recurring_transaction`
 ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
 ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `order_total`
--
ALTER TABLE `order_total`
 ADD PRIMARY KEY (`order_total_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_voucher`
--
ALTER TABLE `order_voucher`
 ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
 ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `product_description`
--
ALTER TABLE `product_description`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `product_discount`
--
ALTER TABLE `product_discount`
 ADD PRIMARY KEY (`product_discount_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_file`
--
ALTER TABLE `product_file`
 ADD PRIMARY KEY (`product_file_id`);

--
-- Indexes for table `product_filter`
--
ALTER TABLE `product_filter`
 ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
 ADD PRIMARY KEY (`product_image_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
 ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `product_option_value`
--
ALTER TABLE `product_option_value`
 ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `product_recurring`
--
ALTER TABLE `product_recurring`
 ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `product_related`
--
ALTER TABLE `product_related`
 ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `product_reward`
--
ALTER TABLE `product_reward`
 ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `product_special`
--
ALTER TABLE `product_special`
 ADD PRIMARY KEY (`product_special_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_to_category`
--
ALTER TABLE `product_to_category`
 ADD PRIMARY KEY (`product_id`,`category_id`), ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_to_download`
--
ALTER TABLE `product_to_download`
 ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `product_to_layout`
--
ALTER TABLE `product_to_layout`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `product_to_store`
--
ALTER TABLE `product_to_store`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `product_video`
--
ALTER TABLE `product_video`
 ADD PRIMARY KEY (`product_video_id`);

--
-- Indexes for table `recurring`
--
ALTER TABLE `recurring`
 ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `recurring_description`
--
ALTER TABLE `recurring_description`
 ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `return_action`
--
ALTER TABLE `return_action`
 ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `return_history`
--
ALTER TABLE `return_history`
 ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `return_reason`
--
ALTER TABLE `return_reason`
 ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `return_status`
--
ALTER TABLE `return_status`
 ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
 ADD PRIMARY KEY (`review_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `stock_status`
--
ALTER TABLE `stock_status`
 ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
 ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
 ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
 ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `tax_rate_to_customer_group`
--
ALTER TABLE `tax_rate_to_customer_group`
 ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `tax_rule`
--
ALTER TABLE `tax_rule`
 ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
 ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `url_alias`
--
ALTER TABLE `url_alias`
 ADD PRIMARY KEY (`url_alias_id`), ADD KEY `query` (`query`), ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
 ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `voucher_history`
--
ALTER TABLE `voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `voucher_theme`
--
ALTER TABLE `voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `voucher_theme_description`
--
ALTER TABLE `voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `weight_class`
--
ALTER TABLE `weight_class`
 ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `weight_class_description`
--
ALTER TABLE `weight_class_description`
 ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `zone_to_geo_zone`
--
ALTER TABLE `zone_to_geo_zone`
 ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliate`
--
ALTER TABLE `affiliate`
MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliate_activity`
--
ALTER TABLE `affiliate_activity`
MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliate_login`
--
ALTER TABLE `affiliate_login`
MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliate_transaction`
--
ALTER TABLE `affiliate_transaction`
MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `attribute_group`
--
ALTER TABLE `attribute_group`
MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `banner_image`
--
ALTER TABLE `banner_image`
MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `coupon_history`
--
ALTER TABLE `coupon_history`
MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coupon_product`
--
ALTER TABLE `coupon_product`
MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_activity`
--
ALTER TABLE `customer_activity`
MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_ban_ip`
--
ALTER TABLE `customer_ban_ip`
MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_history`
--
ALTER TABLE `customer_history`
MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_ip`
--
ALTER TABLE `customer_ip`
MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_login`
--
ALTER TABLE `customer_login`
MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_reward`
--
ALTER TABLE `customer_reward`
MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_transaction`
--
ALTER TABLE `customer_transaction`
MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_field`
--
ALTER TABLE `custom_field`
MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_field_value`
--
ALTER TABLE `custom_field_value`
MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `extension`
--
ALTER TABLE `extension`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=431;
--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `filter_group`
--
ALTER TABLE `filter_group`
MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `geo_zone`
--
ALTER TABLE `geo_zone`
MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `journal2_blog_category`
--
ALTER TABLE `journal2_blog_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journal2_blog_category_to_layout`
--
ALTER TABLE `journal2_blog_category_to_layout`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journal2_blog_comments`
--
ALTER TABLE `journal2_blog_comments`
MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journal2_blog_post`
--
ALTER TABLE `journal2_blog_post`
MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journal2_blog_post_to_layout`
--
ALTER TABLE `journal2_blog_post_to_layout`
MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `journal2_modules`
--
ALTER TABLE `journal2_modules`
MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `journal2_skins`
--
ALTER TABLE `journal2_skins`
MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `layout`
--
ALTER TABLE `layout`
MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `layout_module`
--
ALTER TABLE `layout_module`
MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT for table `layout_route`
--
ALTER TABLE `layout_route`
MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `length_class`
--
ALTER TABLE `length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `length_class_description`
--
ALTER TABLE `length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `marketing`
--
ALTER TABLE `marketing`
MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modification`
--
ALTER TABLE `modification`
MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `option_value`
--
ALTER TABLE `option_value`
MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_custom_field`
--
ALTER TABLE `order_custom_field`
MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_option`
--
ALTER TABLE `order_option`
MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_recurring`
--
ALTER TABLE `order_recurring`
MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_recurring_transaction`
--
ALTER TABLE `order_recurring_transaction`
MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `order_total`
--
ALTER TABLE `order_total`
MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_voucher`
--
ALTER TABLE `order_voucher`
MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `product_discount`
--
ALTER TABLE `product_discount`
MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=472;
--
-- AUTO_INCREMENT for table `product_file`
--
ALTER TABLE `product_file`
MODIFY `product_file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2584;
--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `product_option_value`
--
ALTER TABLE `product_option_value`
MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `product_reward`
--
ALTER TABLE `product_reward`
MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=567;
--
-- AUTO_INCREMENT for table `product_special`
--
ALTER TABLE `product_special`
MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=449;
--
-- AUTO_INCREMENT for table `product_video`
--
ALTER TABLE `product_video`
MODIFY `product_video_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1880;
--
-- AUTO_INCREMENT for table `recurring`
--
ALTER TABLE `recurring`
MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `return_action`
--
ALTER TABLE `return_action`
MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `return_history`
--
ALTER TABLE `return_history`
MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `return_reason`
--
ALTER TABLE `return_reason`
MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `return_status`
--
ALTER TABLE `return_status`
MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2008;
--
-- AUTO_INCREMENT for table `stock_status`
--
ALTER TABLE `stock_status`
MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `tax_rule`
--
ALTER TABLE `tax_rule`
MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `url_alias`
--
ALTER TABLE `url_alias`
MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=854;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `voucher_history`
--
ALTER TABLE `voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `voucher_theme`
--
ALTER TABLE `voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `weight_class`
--
ALTER TABLE `weight_class`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `weight_class_description`
--
ALTER TABLE `weight_class_description`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4225;
--
-- AUTO_INCREMENT for table `zone_to_geo_zone`
--
ALTER TABLE `zone_to_geo_zone`
MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
