-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2020 a las 21:43:38
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pural`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_cat` int(11) NOT NULL,
  `name_cat` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img_cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_cat`, `name_cat`, `description`, `img_cat`) VALUES
(1, 'Bath & Shower', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 'bathShower.jpg'),
(2, 'Hair', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 'hair.jpg'),
(3, 'Face', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 'face.jpg'),
(4, 'Body', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n', 'body.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
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
-- Volcado de datos para la tabla `product`
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
(28, 'Dirty', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 7, 2, '07_hair_treatments.jpg'),
(29, 'Dreamy', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 7, 2, '07_hair_treatments.jpg'),
(30, 'Warmth', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(31, 'Nirvana', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(32, 'Rockstar', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(33, 'Indie', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 8, 2, '08_styling.jpg'),
(34, 'Charm', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(35, 'Adore', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(36, 'Regenerate', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(37, 'Beach', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 9, 3, '09_cleanser_scrubs.jpg'),
(38, 'Diamond', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(39, 'Bright', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(40, 'Classy', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(41, 'Mermaid', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 10, 3, '10_moisturizers.jpg'),
(42, 'Icon', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(43, 'Deluxe', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(44, 'Fierce', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(45, 'Warrior', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 11, 3, '11_lip_balms.jpg'),
(46, 'Ultra', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(47, 'Nature', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(48, 'Peachy', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(49, 'Fascinate', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 12, 3, '12_masks.jpg'),
(50, 'Pure', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(51, 'Sugar', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(52, 'Glamour', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(53, 'Ethernal', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 13, 4, '13_body_lotions.jpg'),
(54, 'Stormy', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(55, 'Wander', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(56, 'Breathe', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(57, 'Amethyst', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 14, 4, '14_hand_care.jpg'),
(58, 'Cupid', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(59, 'Clever', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(60, 'Oxygen', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(61, 'Cupcake', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 15, 4, '15_footcare.jpg'),
(62, 'Focus', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg'),
(63, 'Pastel', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg'),
(64, 'Delight', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg'),
(65, 'Adrenaline', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor quae, error facilis omnis pariatur quibusdam.\r\n', 8, '6.3 Oz.', 16, 4, '16_body_sprays.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_has_category_has_type`
--

CREATE TABLE `product_has_category_has_type` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product_has_category_has_type`
--

INSERT INTO `product_has_category_has_type` (`id`, `id_product`, `id_category`, `id_type`) VALUES
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 2),
(7, 7, 1, 2),
(8, 8, 1, 2),
(9, 9, 1, 2),
(10, 10, 1, 3),
(11, 11, 1, 3),
(12, 12, 1, 3),
(13, 13, 1, 3),
(14, 14, 1, 4),
(15, 15, 1, 4),
(16, 16, 1, 4),
(17, 17, 1, 4),
(18, 18, 2, 5),
(19, 19, 2, 5),
(20, 20, 2, 5),
(21, 21, 2, 5),
(22, 22, 2, 6),
(23, 23, 2, 6),
(24, 24, 2, 6),
(25, 25, 2, 6),
(26, 26, 2, 7),
(27, 27, 2, 7),
(28, 28, 2, 7),
(29, 29, 2, 7),
(30, 30, 2, 8),
(31, 31, 2, 8),
(32, 32, 2, 8),
(33, 33, 2, 8),
(34, 34, 3, 9),
(35, 35, 3, 9),
(36, 36, 3, 9),
(37, 37, 3, 9),
(38, 38, 3, 10),
(39, 39, 3, 10),
(40, 40, 3, 10),
(41, 41, 3, 10),
(42, 42, 3, 11),
(43, 43, 3, 11),
(44, 44, 3, 11),
(45, 45, 3, 11),
(46, 46, 3, 12),
(47, 47, 3, 12),
(48, 48, 3, 12),
(49, 49, 3, 12),
(50, 50, 4, 13),
(51, 51, 4, 13),
(52, 52, 4, 13),
(53, 53, 4, 13),
(54, 54, 4, 14),
(55, 55, 4, 14),
(56, 56, 4, 14),
(57, 57, 4, 14),
(58, 58, 4, 15),
(59, 59, 4, 15),
(60, 60, 4, 15),
(61, 61, 4, 15),
(62, 62, 4, 16),
(63, 63, 4, 16),
(64, 64, 4, 16),
(65, 65, 4, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `name_type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type`
--

INSERT INTO `type` (`id_type`, `name_type`, `description`) VALUES
(1, 'Bath Bombs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(2, 'Bubble Baths', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(3, 'Bar Soaps', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(4, 'Body Scrubs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(5, 'Shampoo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(6, 'Conditioner', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
(7, 'Treatments', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, commodi!\r\n'),
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
-- Estructura de tabla para la tabla `user`
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
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `email`, `name`, `lastName`, `phone`, `password`, `permissions`) VALUES
(5, 'malegonzalezyabo@gmail.com', 'Malena', 'Gonzalez Yabo', 1150434402, '7d5f8e7750c6a55416cf350a93cf0cbe', 1),
(6, 'mardecebollas@gmail.com', 'Malena', 'Gonzalez', 1150434402, '7d5f8e7750c6a55416cf350a93cf0cbe', 0),
(8, 'dileo.francoj@gmail.com', 'Franco', 'Di Leo', 1144739222, '24c007e83dba8ad061d1aae780f265b9', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indices de la tabla `product_has_category_has_type`
--
ALTER TABLE `product_has_category_has_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
