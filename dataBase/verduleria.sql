-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2021 a las 15:27:54
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
  `habilitado` tinyint(1) NOT NULL DEFAULT 1,
  `eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`, `habilitado`, `eliminado`, `ts_create`, `ts_update`) VALUES
(15, 'Manzana Roja', 'Manzanas Roja por Kgrs', 180, 1, 1, 0, '2021-07-28 00:47:06', '2021-07-28 00:47:06'),
(16, 'Banana', 'Banana Ecuador por Kgrs', 180, 1, 1, 0, '2021-07-28 00:47:45', '2021-07-28 00:47:45'),
(17, 'Pera', 'Pera Williams por Kgrs', 150, 1, 1, 0, '2021-07-28 00:48:39', '2021-07-28 00:48:39'),
(18, 'Papa', 'Papa Lavada por Kgrs', 50, 2, 1, 0, '2021-07-28 00:49:19', '2021-07-28 00:49:19'),
(19, 'Cebolla', 'Cebolla por Kgrs', 80, 2, 1, 0, '2021-07-28 00:49:52', '2021-07-28 00:49:52'),
(20, 'Zanahoria', 'Zanahoria Fraccionada por Kgrs', 100, 2, 1, 0, '2021-07-28 10:12:09', '2021-07-28 10:12:09'),
(21, 'Naranja', 'Naranja Ombligo por Kgrs', 120, 1, 1, 0, '2021-07-28 10:14:08', '2021-07-28 10:14:08'),
(22, 'Zapallito', 'Zapallito por Kgrs', 100, 2, 1, 0, '2021-07-28 10:14:52', '2021-07-28 10:14:52'),
(23, 'Mandarina', 'Mandarina por Kgrs', 100, 1, 1, 0, '2021-07-28 10:17:10', '2021-07-28 10:17:10'),
(24, 'Pimiento Rojo', 'Pimiento Rojo por Kgrs', 250, 2, 1, 0, '2021-07-28 10:18:51', '2021-07-28 10:18:51'),
(25, 'Coreanito', 'Coreanito por Kgrs', 100, 2, 1, 0, '2021-07-28 10:19:43', '2021-07-28 10:19:43'),
(26, 'Tomate Perita', 'Tomate Perita por Kgrs', 150, 2, 1, 0, '2021-07-28 10:20:44', '2021-07-28 10:20:44'),
(27, 'Tomate Redondo', 'Tomate Redondo por Kgrs', 150, 2, 1, 0, '2021-07-28 10:21:13', '2021-07-28 10:21:13'),
(28, 'Manzana Verde', 'Manzana Verde por Kgrs', 180, 1, 1, 0, '2021-07-28 10:22:40', '2021-07-28 10:22:40'),
(29, 'Durazno', 'Durazno por Kgrs', 250, 1, 1, 0, '2021-07-28 10:23:40', '2021-07-28 10:23:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_imagenes`
--

CREATE TABLE `productos_imagenes` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `habilitado` tinyint(4) NOT NULL DEFAULT 1,
  `eliminado` tinyint(4) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos_imagenes`
--

INSERT INTO `productos_imagenes` (`id`, `id_producto`, `uid`, `habilitado`, `eliminado`, `ts_create`, `ts_update`) VALUES
(1, 15, '3a27e131-61cf-41fa-a1b9-8af0648872fe', 1, 0, '2021-07-28 00:47:06', '2021-07-28 00:47:06'),
(2, 16, '64922345-0354-4cf9-a962-332ca061af05', 1, 0, '2021-07-28 00:47:45', '2021-07-28 00:47:45'),
(3, 17, 'b17bd02d-b16c-47a0-90d2-c5818a245c9f', 1, 0, '2021-07-28 00:48:39', '2021-07-28 00:48:39'),
(4, 18, '584a61a0-5ba7-4369-84ab-daf2533e6415', 1, 0, '2021-07-28 00:49:19', '2021-07-28 00:49:19'),
(5, 19, 'dbf2ca38-951c-4a2c-9804-8a76da4d3640', 1, 0, '2021-07-28 00:49:52', '2021-07-28 00:49:52'),
(6, 20, '5264877e-88ca-4802-9fd6-fe3273a02d36', 1, 0, '2021-07-28 10:12:09', '2021-07-28 10:12:09'),
(7, 21, '4fb3a17a-4675-45ff-a0b9-c823c3f69626', 1, 0, '2021-07-28 10:14:08', '2021-07-28 10:14:08'),
(8, 22, 'bd5e3196-ea2c-4f3a-a05c-2a1a66f75a2a', 1, 0, '2021-07-28 10:14:52', '2021-07-28 10:14:52'),
(9, 23, 'e6ea0b42-5018-4fa2-95ab-fb053a83b884', 1, 0, '2021-07-28 10:17:10', '2021-07-28 10:17:10'),
(10, 24, 'b5db0f3a-9fe2-4c08-ae29-994e49546278', 1, 0, '2021-07-28 10:18:51', '2021-07-28 10:18:51'),
(11, 25, 'c5ea464e-97d7-49eb-bdea-248c185414a0', 1, 0, '2021-07-28 10:19:43', '2021-07-28 10:19:43'),
(12, 26, 'b4a73db4-a95b-4a85-9f2d-54e9f9feab74', 1, 0, '2021-07-28 10:20:44', '2021-07-28 10:20:44'),
(13, 27, 'edcc6f79-0c4e-4e9b-a6e5-6000bf87354f', 1, 0, '2021-07-28 10:21:13', '2021-07-28 10:21:13'),
(14, 28, 'd53c7a9c-38f5-4904-b378-66992f8957f8', 1, 0, '2021-07-28 10:22:40', '2021-07-28 10:22:40'),
(15, 29, '27bc881a-4b70-4c0e-b2c1-37e45445ad90', 1, 0, '2021-07-28 10:23:40', '2021-07-28 10:23:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contraseña` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `confirmacionCorreo` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `habilitado` tinyint(1) NOT NULL DEFAULT 0,
  `eliminado` tinyint(1) NOT NULL DEFAULT 0,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp(),
  `ts_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`, `mail`, `confirmacionCorreo`, `habilitado`, `eliminado`, `ts_create`, `ts_update`) VALUES
(3, 'colito', '7c222fb2927d828af22f592134e8932480637c0d', 'dani_brk@hotmail.com', '7b25b752-e877-4ca8-9be1-04fe8379aeb8', 1, 0, '2021-07-26 14:21:18', '2021-07-26 23:00:26'),
(6, 'emiliano', '7c222fb2927d828af22f592134e8932480637c0d', 'dani_brk@hotmail.com', '62bad7a7-9460-429e-b2d8-cf0fbed9b21f', 1, 0, '2021-07-26 14:32:34', '2021-07-26 23:04:02'),
(8, 'romina', '7c222fb2927d828af22f592134e8932480637c0d', 'dani_brk@hotmail.com', '6dbb528e-e9d3-45a6-ab95-051324ac06e9', 1, 0, '2021-07-26 14:55:42', '2021-07-26 23:04:05'),
(9, 'faustina', '7c222fb2927d828af22f592134e8932480637c0d', 'dani_brk@hotmail.com', '8407afa7-aaa4-410f-b382-ef813e398c3a', 1, 0, '2021-07-26 15:06:23', '2021-07-26 16:51:42'),
(10, 'maricel', '7c222fb2927d828af22f592134e8932480637c0d', 'dani_brk@hotmail.com', 'f449f370-a89a-4520-a7b7-e107655d8b5e', 1, 0, '2021-07-26 22:57:59', '2021-07-26 23:03:46');

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
-- Indices de la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`usuario`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `productos_imagenes`
--
ALTER TABLE `productos_imagenes`
  ADD CONSTRAINT `productos_imagenes_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
