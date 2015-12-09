-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2015 a las 15:23:09
-- Versión del servidor: 10.1.8-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hagane_pef`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido_paterno` text NOT NULL,
  `apellido_materno` text NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `idUser`) VALUES
(1, 'Erick', 'Castillo', 'de la Garza', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `rfc` text NOT NULL,
  `calle` text NOT NULL,
  `num_exterior` text NOT NULL,
  `num_interior` text,
  `colonia` text NOT NULL,
  `cp` varchar(6) NOT NULL,
  `profile_path` text,
  `primary_color` text NOT NULL,
  `secondary_color` text NOT NULL,
  `municipio` text NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `rfc`, `calle`, `num_exterior`, `num_interior`, `colonia`, `cp`, `profile_path`, `primary_color`, `secondary_color`, `municipio`, `telefono`, `email`) VALUES
(1, 'Hagane Software', 'HSO140224998', 'Pablo m de sarasate', '280', '', 'colinas', '64630', 'FrontEnd/userImages/1449645787-130.PNG', '#323D68', '#EB5A13', '', '16', ''),
(2, 'Caji', 'fghjkl', 'ghjkl', 'nm', 'bnm', 'villahermosa', '56789', '', '', '', '', '', ''),
(11, 'Hagane', 'nuevo', 'pablo', '78', '', 'ueu', '323', NULL, '', '', 'fdsa', '78', ''),
(12, 'tambien', 'oh yeah', 'fdsa', 'fdsa', 'fdsa', 'fdsa', 'fdsa', 'FrontEnd/userImages/1449655257-200.jpg', '#DB1515', '#2F7AB4', 'fdsa', 'fdsa', 'fdsa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientefile`
--

CREATE TABLE `clientefile` (
  `idCliente` int(11) NOT NULL,
  `path` text NOT NULL,
  `timestamp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientefile`
--

INSERT INTO `clientefile` (`idCliente`, `path`, `timestamp`) VALUES
(1, 'FrontEnd/Excel/1449531022-405.xlsx', '2015-12-08'),
(1, 'FrontEnd/Excel/1449531037-461.xlsx', '2015-12-08'),
(1, 'FrontEnd/Excel/1449533835-345.xlsx', '2015-12-08'),
(1, 'FrontEnd/Excel/1449540519-401.xlsx', '2015-12-08'),
(1, 'FrontEnd/Excel/1449645936-157.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645940-54.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645951-462.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645951-155.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645951-385.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645951-71.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645951-333.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645952-361.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645953-113.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645953-291.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645953-446.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645953-405.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645961-167.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645962-374.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645963-82.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645963-421.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645963-425.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645963-84.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449645963-422.jpg', '2015-12-09'),
(1, 'FrontEnd/Excel/1449646475-450.PNG', '2015-12-09'),
(1, 'FrontEnd/Excel/1449649011-382.docx', '2015-12-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable`
--

CREATE TABLE `responsable` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `apellido_paterno` text NOT NULL,
  `apellido_materno` text NOT NULL,
  `idUser` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `responsable`
--

INSERT INTO `responsable` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `idUser`, `idCliente`) VALUES
(1, 'Erick', 'Castillo', 'de la Garza', 7, 1),
(2, 'Rodrigo', 'Cabal', 'jimenez', 8, 1),
(3, 'Hagane Software', 'perez', 'paracetamol', 5, 1),
(9, 'erick', 'hola', 'hol', 11, 11),
(10, 'fdsa', 'fdsa', 'fdsa', 12, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sessionid` varchar(60) DEFAULT NULL,
  `user_type` enum('Administrador','Cliente','Doctor') NOT NULL,
  `imgPath` text,
  `activo` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `sessionid`, `user_type`, `imgPath`, `activo`) VALUES
(1, 'erick', 'hola', NULL, 'Administrador', 'FrontEnd/userImages/logobiin.png', 'y'),
(7, 'erickc', '', NULL, 'Cliente', '', 'n'),
(8, 'rodrigo', 'hola', NULL, 'Cliente', '', 'n'),
(5, 'cliente', 'hola', '3oU7rFuNYrwSw2tnt8OUKGIfPUGVG2ci4aWrdAONgtpUvTLD8JAEuFeWHy9S', 'Cliente', 'userImages/pizza.jpg', 'y'),
(3, 'roberto', 'hola', NULL, 'Administrador', 'userImages/mashiro_enojada.jpg', 'n'),
(4, 'nacho', 'hola', 'HbUSLMhrGoYwkzw4dR8byuALbWEUIVCiaBDrDQXv8R4umUMHRUCHUSzsafeG', 'Administrador', 'userImages/pizza.jpg', 'n'),
(6, 'cliente2', 'hola', NULL, 'Cliente', '', 'n'),
(11, 'usuario', 'contra', NULL, 'Cliente', NULL, 'n'),
(12, 'erickce', 'fdsa', 'UTAkvCLLtjQOrIuXARSA2v7kod6NzSl5qwKe3hj94C9em2hg1lvOgwggc5XX', 'Cliente', NULL, 'n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `responsable`
--
ALTER TABLE `responsable`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`),
  ADD UNIQUE KEY `sessionid` (`sessionid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `responsable`
--
ALTER TABLE `responsable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
