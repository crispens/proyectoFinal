-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2021 a las 20:10:25
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `verduleria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(55) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT 1,
  `eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `habilitado`, `eliminado`, `ts_create`, `ts_update`) VALUES
(1, 'Frutas', 1, 0, '2021-07-19 22:46:36', '2021-07-22 14:10:21'),
(2, 'Verduras', 1, 0, '2021-07-19 22:46:48', '2021-07-22 14:53:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(55) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` varchar(55) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `habilitado` tinyint(4) NOT NULL DEFAULT 1,
  `eliminado` tinyint(4) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`, `habilitado`, `eliminado`, `ts_create`, `ts_update`) VALUES
(1, 'Manzana Roja', 'Manzana Roja por Kgrs', 180, 1, 1, 0, '2021-07-19 23:04:28', '2021-07-19 23:06:50'),
(2, 'Banana', 'Banana Ecuador por Kgrs', 180, 1, 1, 0, '2021-07-19 23:05:53', '2021-07-22 11:19:37'),
(3, 'Papa', 'Papa Lavada por Kgrs', 50, 2, 1, 0, '2021-07-19 23:07:26', '2021-07-19 23:08:15'),
(4, 'Cebolla', 'Cebolla por Kgrs', 70, 2, 1, 0, '2021-07-19 23:07:54', '2021-07-19 23:07:54'),
(5, 'Pera', 'Pera Willams por Kgrs', 150, 1, 1, 0, '2021-07-21 22:58:36', '2021-07-21 23:00:05'),
(6, 'Zanahoria', 'Zanahoria Fraccionada por Kgrs', 100, 2, 1, 0, '2021-07-21 22:59:31', '2021-07-21 23:00:19'),
(7, 'Naranja', 'Naranja de Ombligo por Kgrs', 120, 1, 1, 0, '2021-07-22 10:28:24', '2021-07-22 10:48:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `confirmacionCorreo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `habilitado` tinyint(4) NOT NULL DEFAULT 0,
  `eliminado` tinyint(4) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`id_categoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
