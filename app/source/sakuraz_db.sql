-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 23, 2019 at 02:47 PM
-- Server version: 8.0.13
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakuraz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Tulips'),
(2, 'Sunflowers'),
(3, 'Gerbera'),
(4, 'Roses'),
(5, 'Calla Lilies'),
(6, 'Preserved Flowers/Roses'),
(7, 'Potted Plants / Flowers'),
(8, 'Mixed Flowers'),
(9, 'Stargazers'),
(10, 'Carnations');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`) VALUES
(1, 'Wedding Packages'),
(2, 'Bouquet'),
(3, 'Wedding Events');

-- --------------------------------------------------------

--
-- Table structure for table `event_items`
--

CREATE TABLE `event_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_items`
--

INSERT INTO `event_items` (`id`, `name`, `description`, `price`, `image_path`, `category_id`) VALUES
(1, 'SZ-W001', 'Pink Rose Wedding Bouquet Package | Wedding Flowers', '65000.00', '../assets/images/W001.jpg', 1),
(2, 'SZ-W002', 'Pink and White Wedding Bouquet Package | Wedding Flowers', '65000.00', '../assets/images/W002.jpg', 1),
(3, 'SZ-W003', 'White Roses Wedding Bouquet Package | Wedding Flowers ', '58000.00', '../assets/images/W003.jpg', 1),
(4, 'SZ-WE001', 'White Fairy-Tale Reception', '105000.00', '../assets/images/WE001.jpg', 3),
(5, 'SZ-WE002', 'White/Pink Elegant Farmhouse Reception', '125000.00', '../assets/images/WE002.jpg', 3),
(6, 'SZ-WE003', 'Unicorn Inspired Wedding Reception', '145000.00', '../assets/images/WE003.jpg', 3),
(7, 'SZ-WB001', 'Cascading Green and Cream Floral Bouquet ', '25000.00', '../assets/images/WB003.jpg', 2),
(8, 'SZ-WB001', 'Mixed Bouquet Flower Arrangement', '23000.00', '../assets/images/WB001.jpg', 2),
(9, 'SZ-WB002', 'White and Pink Roses Bouquet Flower Arrangement', '19000.00', '../assets/images/WB002.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `image_path`, `category_id`) VALUES
(1, 'SZ-T001', 'Colorful Tulips Bouquet (24 Stalks)\r\n', '4999.00', '../assets/images/T001.jpg', 1),
(2, 'SZ-SF001', 'Sunflower Bouquet (5 Stems)', '1399.00', '../assets/images/SF001.jpg', 2),
(3, 'SZ-SF002', 'Sunflower Bouquet (3 Stems)', '1050.00', '../assets/images/SF002.jpg', 2),
(4, 'SZ-G001', 'Bright pink Gerbera Bouquet (10 Stems)', '1850.00', '../assets/images/G001.jpg', 3),
(5, 'SZ-G002', 'Red and Pink Gerbera Bouquet (10 Stems)', '1650.00', '../assets/images/G002.jpg', 3),
(10, 'SZ-R001', 'Red and Pink Roses Bouquet (12 Stems)', '2345.00', '../assets/images/R001.jpg', 4),
(11, 'SZ-R002', 'Pink Roses & Mini Roses Bouquet (24 Stems)', '4345.00', '../assets/images/R002.jpg', 4),
(12, 'SZ-R003', 'Red Roses Bouquet (50 Stems)', '6850.00', '../assets/images/R003.jpg', 4),
(13, 'SZ-R004', 'Cream Color Roses Bouquet (12 Stems)', '3450.00', '../assets/images/R004.jpg', 4),
(14, 'SZ-CL001', 'Calla Lilies Bouquet with Roses (12 Stalks)', '3450.00', '../assets/images/CL001.jpg', 5),
(15, 'SZ-PR001', 'Preserved Red Rose Cube (1pc)', '2200.00', '../assets/images/PR001.jpg', 6),
(16, 'SZ-PR002', 'Preserved Black Rose Cube (1pc)', '2200.00', '../assets/images/PR002.jpg', 6),
(17, 'SZ-PR003', 'Preserved Pink Rose Cube (1pc)', '2200.00', '../assets/images/PR003.jpg', 6),
(18, 'SZ-PF001', 'Potted Red Roses Plant', '1650.00', '../assets/images/PF001.jpg', 7),
(19, 'SZ-PF002', 'Potted White Roses Plant', '1650.00', '../assets/images/PF002.jpg', 7),
(20, 'SZ-M001', 'The arrangement consists of one dozen hot pink roses, 4 hot pink gerberas, 4 light pink carnations and 5 pink alstromerias.', '4250.00', '../assets/images/M001.jpg', 8),
(21, 'SZ-R005', 'Mixed Roses (50 Stems)', '4650.00', '../assets/images/R005.jpg', 4),
(22, 'SZ-M002', 'Mixed Flowers Bouquet (24 Stems)', '12950.00', '../assets/images/M002.jpg', 8),
(23, 'SZ-M003', 'The arrangement consists of two dozens red roses and 1 dozen of pink stargazers.', '16580.00', '../assets/images/M003.jpg', 8),
(24, 'SZ-SG001', 'Pink Stargazers Bouquet (12 Stems)', '3200.00', '../assets/images/SG001.jpg', 9),
(25, 'SZ-SG002', 'White Stargazers Bouquet (12 Stems)', '2800.00', '../assets/images/SG002.jpg', 9),
(26, 'SZ-SG003', 'Yellow Stargazers Bouquet (12 Stems)', '2850.00', '../assets/images/SG003.jpg', 9),
(27, 'SZ-C001', 'Red Carnations Bouquet (30 Stems)', '5800.00', '../assets/images/C001.jpg', 10),
(28, 'SZ-C002', 'Mixed Color Carnation Bouquet (12 Stems)', '3050.00', '../assets/images/C002.jpg', 10),
(29, 'SZ-C003', '-=[ (24 Stems)', '9800.00', '../assets/images/C003.jpg', 10),
(30, 'SZ-T002', 'Pink Tulips Bouquet (10 Stalks)', '3200.00', '../assets/images/T002.jpg', 1),
(31, 'SZ-T003', 'This bouquet consist of 16 pink tulips and 3 stems of white roses.', '6200.00', '../assets/images/T003.jpg', 1),
(32, 'SZ-T004', 'Bouquet of White Tulips (24 Stalks)', '6400.00', '../assets/images/T004.jpg', 1),
(33, 'SZ-T005', 'This bouquet consist of 10 stalks of purple tulips. Mix with small flowers and eustoma.', '4400.00', '../assets/images/T005.jpg', 1),
(34, 'SZ-M004', 'This bouquet consist of 10 red tulips and 12 stalks of pink roses.', '6880.00', '../assets/images/M004.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `occasions`
--

CREATE TABLE `occasions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occasions`
--

INSERT INTO `occasions` (`id`, `name`) VALUES
(1, 'Birthdays'),
(2, 'Anniversary'),
(3, 'Graduation'),
(4, 'Valentine\'s Day'),
(5, 'Mother\'s Day');

-- --------------------------------------------------------

--
-- Table structure for table `occ_items`
--

CREATE TABLE `occ_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occ_items`
--

INSERT INTO `occ_items` (`id`, `name`, `description`, `price`, `image_path`, `category_id`) VALUES
(1, 'SZ-AF001', '1000 Stems of Red Roses Bouquet', '85000.00', '../assets/images/AF001.jpg', 2),
(2, 'SZ-BB001', 'White and Pink Roses arrangement', '18000.00', '../assets/images/BB001.jpg', 1),
(3, 'SZ-BB02', 'Pink Roses arrangement', '38000.00', '../assets/images/BB002.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_code` varchar(255) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `transaction_code`, `status_id`, `payment_mode_id`) VALUES
(1, 19, 'C46D3E1BAEC396A4-1547736396', 2, 1),
(2, 19, '8FA15B0C0F2E4768-1547775130', 3, 1),
(3, 19, '69B2671BA4F652CE-1547775142', 2, 1),
(4, 19, '2AECC36F75866B52-1547775155', 2, 1),
(5, 19, '0E876022C7E9086F-1547775166', 3, 1),
(6, 19, 'B503E27F899D343F-1547775175', 2, 1),
(7, 19, '083CAFBC0B654B53-1547775189', 1, 1),
(8, 15, 'E90D8CDCE8326F4A-1547775456', 1, 1),
(9, 15, '82E4384419A81675-1547775468', 1, 1),
(10, 15, 'DF0B2C16D4B12098-1547775478', 1, 1),
(11, 18, 'A794690FBF03206E-1547775548', 1, 1),
(12, 18, '2E9675B56176EE3B-1547775559', 2, 1),
(13, 19, 'A005CD21AB9EBA85-1547779263', 1, 1),
(14, 20, 'C44BF3CEE0D9C608-1547791079', 1, 1),
(15, 20, 'C86916AF41628DEF-1547792041', 1, 1),
(16, 20, 'SakuraZ Flower Shop_5c416f731118a', 1, 2),
(17, 20, 'SakuraZ Flower Shop_5c41706bd1064', 1, 2),
(18, 20, 'SakuraZ Flower Shop_5c41725271aa0', 1, 2),
(19, 20, 'SakuraZ Flower Shop_5c417372c294a', 1, 2),
(20, 18, '18806F2F3F691296-1547794685', 1, 1),
(21, 18, 'SakuraZ Flower Shop_5c41796357e3c', 1, 2),
(22, 19, '75E79E2C6718E15D-1547979450', 1, 1),
(23, 19, 'DE2FB153979027AE-1547982231', 1, 1),
(24, 19, 'CB4021972EDB4C75-1547982388', 1, 1),
(25, 19, 'FD74718B76BB7580-1547984253', 1, 1),
(26, 19, '242A45E932EFFB4A-1547984272', 1, 1),
(27, 19, '62B278E071C110A8-1547984346', 1, 1),
(28, 19, '730BD3797EE99128-1547984499', 1, 1),
(29, 19, '92A241F7FACEFA3B-1547986237', 1, 1),
(30, 19, '4843848142CE2C85-1547986407', 1, 1),
(31, 19, 'B4BFD061802C25F1-1547986486', 1, 1),
(32, 19, 'F1D7F72CCF4E17E0-1547989090', 1, 1),
(33, 19, 'D078B8D259CB64D8-1547989521', 1, 1),
(34, 19, '31D375D7AC2339E7-1547990577', 1, 1),
(35, 19, '6005E972E23E437B-1547993092', 1, 1),
(36, 19, 'SakuRaZ Flower Shop_5c44801959ccf', 1, 2),
(37, 19, '72D331CBCE348F81-1547993621', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `price`, `item_id`, `quantity`) VALUES
(1, 1, '1399.00', 2, 6),
(2, 1, '850.00', 3, 9),
(3, 1, '1850.00', 4, 2),
(4, 2, '3999.00', 1, 1),
(5, 2, '1399.00', 2, 1),
(6, 2, '1050.00', 3, 1),
(7, 2, '1850.00', 4, 1),
(8, 3, '1050.00', 3, 1),
(9, 3, '1850.00', 4, 1),
(10, 4, '1050.00', 3, 1),
(11, 4, '1850.00', 4, 1),
(12, 4, '1399.00', 2, 1),
(13, 5, '3999.00', 1, 1),
(14, 5, '1050.00', 3, 1),
(15, 6, '1399.00', 2, 1),
(16, 6, '1050.00', 3, 1),
(17, 6, '1850.00', 4, 1),
(18, 7, '1050.00', 3, 1),
(19, 7, '2345.00', 10, 1),
(20, 8, '3999.00', 1, 1),
(21, 8, '1399.00', 2, 1),
(22, 9, '3999.00', 1, 1),
(23, 10, '4345.00', 11, 1),
(24, 11, '1399.00', 2, 1),
(25, 11, '1050.00', 3, 1),
(26, 12, '3999.00', 1, 1),
(27, 13, '3999.00', 1, 1),
(28, 14, '9800.00', 29, 1),
(29, 15, '2200.00', 16, 1),
(30, 20, '6880.00', 34, 1),
(31, 20, '4400.00', 33, 1),
(32, 20, '6400.00', 32, 1),
(33, 20, '6200.00', 31, 1),
(34, 20, '3200.00', 30, 1),
(35, 20, '9800.00', 29, 1),
(36, 20, '3050.00', 28, 2),
(37, 20, '5800.00', 27, 2),
(38, 20, '2850.00', 26, 2),
(39, 20, '2800.00', 25, 2),
(40, 22, '1050.00', 3, 1),
(41, 22, '1850.00', 4, 1),
(42, 23, '4999.00', 1, 1),
(43, 23, '1399.00', 2, 1),
(44, 24, '1399.00', 2, 1),
(45, 26, '1399.00', 2, 1),
(46, 26, '1050.00', 3, 1),
(47, 26, '1850.00', 4, 1),
(48, 27, '1399.00', 2, 1),
(49, 27, '1050.00', 3, 1),
(50, 27, '1850.00', 4, 1),
(51, 28, '4999.00', 1, 1),
(52, 28, '1399.00', 2, 1),
(53, 28, '1050.00', 3, 1),
(54, 29, '1399.00', 2, 1),
(55, 29, '1050.00', 3, 1),
(56, 30, '4999.00', 1, 1),
(57, 31, '1399.00', 2, 1),
(58, 31, '1050.00', 3, 1),
(59, 32, '1399.00', 2, 1),
(60, 32, '1050.00', 3, 1),
(61, 33, '4999.00', 1, 1),
(62, 33, '1399.00', 2, 2),
(63, 33, '1050.00', 3, 2),
(64, 33, '1850.00', 4, 2),
(65, 34, '4999.00', 1, 1),
(66, 34, '1399.00', 2, 1),
(67, 34, '1050.00', 3, 1),
(68, 34, '1850.00', 4, 1),
(69, 35, '1399.00', 2, 1),
(70, 35, '1050.00', 3, 1),
(71, 35, '1850.00', 4, 1),
(72, 37, '5800.00', 27, 1),
(73, 37, '3050.00', 28, 1),
(74, 37, '9800.00', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `name`) VALUES
(1, 'COD'),
(2, 'PayPal');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'pending'),
(2, 'completed'),
(3, 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `sympathy`
--

CREATE TABLE `sympathy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sympathy`
--

INSERT INTO `sympathy` (`id`, `name`) VALUES
(1, 'Funeral Flowers'),
(2, 'Casket Flowers'),
(3, 'Standing Sprays & Wreaths'),
(4, 'Sympathy Arrangements');

-- --------------------------------------------------------

--
-- Table structure for table `sym_items`
--

CREATE TABLE `sym_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sym_items`
--

INSERT INTO `sym_items` (`id`, `name`, `description`, `price`, `image_path`, `category_id`) VALUES
(1, 'SZ-F001', 'Funeral Flower Stand (White)', '12500.00', '../assets/images/F001.jpg', 1),
(2, 'SZ-CSF001', 'This Casket Flower arrangement includes Large White Hydrangea, White Larkspur, White Stock, White Gerberas, White Lilies, Red Roses, Safari Sunset Leucadendron', '22300.00', '../assets/images/CSF001.jpg', 2),
(3, 'SZ-STW001', 'Standing wreath arrangement with blue delphinium; white roses, lilies, football mums, carnations, and monte casino; accented with soft lush greenery', '26500.00', '../assets/images/STW001.jpg', 3),
(4, 'SZ-STW002', 'Pink and white flowers such as roses, alstroemeria, carnations and more.', '32500.00', '../assets/images/STW002.jpg', 3),
(5, 'SZ-SFA001', 'White Arrangement with 12 Roses Large Oriental Lilies, Stock, Bells of Ireland and Aster in white urn', '12800.00', '../assets/images/SFA001.JPG', 4),
(6, 'SZ-STW003', 'Pink Carnations are tightly grouped and accented with pink Lilies and pink Wax Flowers. Delivered on an easel and appropriate to send to a funeral home or service', '34000.00', '../assets/images/STW003.JPG', 3),
(7, 'SZ-CSF002', 'White Roses Flower Arrangement', '23000.00', '../assets/images/CSF002.jpg', 2),
(9, 'SZ-CSF003', 'Lush arrangement of Roses, Lilies, Mums, Hydrangea, Larkspur, and White Alstroemeria.', '34000.00', '../assets/images/CSF003.JPG', 2),
(10, 'SZ-CSF004', 'Roses & Carnations combine to make this elegant spray. Various colors available.', '35000.00', '../assets/images/CSF004.JPG', 2),
(11, 'SZ-CSF005', 'Casket Spray with White Roses & Carnations and pink Roses and Carnations. Designed with Wax Flower, Foxtail and Italian Ruscus.', '35000.00', '../assets/images/CSF005.JPG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `address`, `roles_id`) VALUES
(15, 'micca', 'barreda', 'micca', '$2y$10$4MejX70dJtT4Z8ZSoBwaIuVmPTgtOJdN0TM6Z0bEK5PF3X7AAVJG6', 'micca.barreda@gmail.com', '25/F Hanston Square, 17 San Miguel Avenue, Ortigas Center, Pasig City 1605', 2),
(16, 'rissel', 'intod', 'rissel', '$2y$10$ubTZ6QyM0lJfQ7JjDXy8ne3/1nfzNmhLFUxAvLl3ysAsFw3N5Ah0m', 'intodrissel16@gmail.com', 'earth', 2),
(17, 'ann', 'adriano', 'granny', '$2y$10$sj5oS2254sinYgqIJ5SkCeWAexCQt9pVRcpmYOlVKqQ5VZeg8J5mC', 'annadrianostaff@gmail.com', 'bulacan', 1),
(18, 'rochelle', 'tamayo', 'rochelle', '$2y$10$s12NtbydqY88yukF1KTWa.RcXbzaBzfZqFji/E/U0vmmK/6Fp1pY2', 'rochelletamayo@gmail.com', 'Kanagawa Ken Sagamihara Shi Sagamidai 3-6-16 leopalace mareko 305', 2),
(19, 'ann', 'adriano', 'iamgranny', '$2y$10$HZL6u9NeqarWtkom1rQBRufqiAREbbwCku8RqfLkotwmO9gA4BraG', 'annadrianostaff@gmail.com', 'bulacan', 2),
(20, 'razelle', 'adriano', 'razelle', '$2y$10$vA46oZAHpUThJXULYd8wD.WImoklqGsBqMTwQOhIFt/Aufh5pgjn.', 'annadrianostaff@gmail.com', 'Bulacan', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_items`
--
ALTER TABLE `event_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `occasions`
--
ALTER TABLE `occasions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occ_items`
--
ALTER TABLE `occ_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `payment_mode_id` (`payment_mode_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sympathy`
--
ALTER TABLE `sympathy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sym_items`
--
ALTER TABLE `sym_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
