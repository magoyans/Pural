-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 04:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pural`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_cat` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_cat`, `name`, `description`) VALUES
(1, 'Bath & Shower', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(2, 'Hair', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(3, 'Face', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(4, 'Body', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_prod` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_prod`, `name`, `description`, `price`, `weight`, `id_type`, `id_category`, `img`) VALUES
(2, 'Lust', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 1, 1, '01_bath_bomb.jpg'),
(3, 'Blossom', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 1, 1, '01_bath_bomb.jpg'),
(4, 'Kind', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 1, 1, '01_bath_bomb.jpg'),
(5, 'Desire', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 1, 1, '01_bath_bomb.jpg'),
(6, 'Rest', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 2, 1, '02_bubble_bath.jpg'),
(7, 'Glow', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 2, 1, '02_bubble_bath.jpg'),
(8, 'Refresh', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 2, 1, '02_bubble_bath.jpg'),
(9, 'Care', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 2, 1, '02_bubble_bath.jpg'),
(10, 'Gentle', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 3, 1, '03_bar_soap.jpg'),
(11, 'Breeze', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 3, 1, '03_bar_soap.jpg'),
(12, 'Passion', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 3, 1, '03_bar_soap.jpg'),
(13, 'Heaven', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 3, 1, '03_bar_soap.jpg'),
(14, 'Harmony', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 4, 1, '04_body_scrub.jpg'),
(15, 'Soft', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 4, 1, '04_body_scrub.jpg'),
(16, 'Delicate', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 4, 1, '04_body_scrub.jpg'),
(17, 'Active', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 4, 1, '04_body_scrub.jpg'),
(18, 'Secret', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 5, 2, '05_shampoo.jpg'),
(19, 'Hydra', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 5, 2, '05_shampoo.jpg'),
(20, 'Euphoria', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 5, 2, '05_shampoo.jpg'),
(21, 'Intergalactic', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 5, 2, '05_shampoo.jpg'),
(22, 'Magic', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 6, 2, '06_conditioner.jpg'),
(23, 'Honey', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 6, 2, '06_conditioner.jpg'),
(24, 'Juniper', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 6, 2, '06_conditioner.jpg'),
(25, 'Candy', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 6, 2, '06_conditioner.jpg'),
(26, 'Happiness', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 7, 2, '07_hair_treatments.jpg'),
(27, 'Jungle', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 7, 2, '07_hair_treatments.jpg'),
(28, 'Dirty', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 7, 2, '07_hair_treatments.jpg'),
(29, 'Dreamy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 7, 2, '07_hair_treatments.jpg'),
(30, 'Warmth', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(31, 'Nirvana', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(32, 'Rockstar', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(33, 'Indie', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(34, 'Charm', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(35, 'Adore', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(36, 'Regenerate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(37, 'Beach', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(38, 'Diamond', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(39, 'Bright', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(40, 'Classy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(41, 'Mermaid', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(42, 'Icon', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(43, 'Deluxe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(44, 'Fierce', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(45, 'Warrior', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(46, 'Ultra', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(47, 'Nature', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(48, 'Peachy', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(49, 'Fascinate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(50, 'Pure', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(51, 'Sugar', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(52, 'Glamour', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(53, 'Ethernal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(54, 'Stormy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(55, 'Wander', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(56, 'Breathe', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(57, 'Amethyst', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(58, 'Cupid', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(59, 'Clever', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(60, 'Oxygen', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(61, 'Cupcake', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(62, 'Focus', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg'),
(63, 'Pastel', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg'),
(64, 'Delight', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg'),
(65, 'Adrenaline', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_has_category_has_type`
--

CREATE TABLE `product_has_category_has_type` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_has_category_has_type`
--

INSERT INTO `product_has_category_has_type` (`id`, `id_product`, `id_category`, `id_type`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id_type`, `name`, `description`) VALUES
(1, 'Bath Bombs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(2, 'Bubble Baths', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(3, 'Bar Soaps', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(4, 'Body Scrubs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(5, 'Shampoo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(6, 'Conditioner', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(7, 'Hair Treatments', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(8, 'Styling', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(9, 'Cleanser and Scrubs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(10, 'Moisturizers', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(11, 'Lip balms', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(12, 'Masks', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(13, 'Body Lotions', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(14, 'Hand Care', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(15, 'Footcare', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(16, 'Body Sprays', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL DEFAULT 0 COMMENT '1: Admin - 0: Normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `name`, `lastName`, `phone`, `password`, `permissions`) VALUES
(5, 'malegonzalezyabo@gmail.com', 'Malena', 'Gonzalez Yabo', 1150434402, '7d5f8e7750c6a55416cf350a93cf0cbe', 1),
(6, 'mardecebollas@gmail.com', 'Malena', 'Gonzalez', 1150434402, '7d5f8e7750c6a55416cf350a93cf0cbe', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indexes for table `product_has_category_has_type`
--
ALTER TABLE `product_has_category_has_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product_has_category_has_type`
--
ALTER TABLE `product_has_category_has_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
