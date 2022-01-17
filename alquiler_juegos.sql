-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2021 a las 17:10:26
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alquiler_juegos`
--
CREATE DATABASE IF NOT EXISTS `alquiler_juegos` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `alquiler_juegos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

DROP TABLE IF EXISTS `alquiler`;
CREATE TABLE `alquiler` (
  `id` int(11) NOT NULL,
  `Cod_juego` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `DNI_cliente` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_alquiler` date NOT NULL,
  `Fecha_devol` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `Cod_juego`, `DNI_cliente`, `Fecha_alquiler`, `Fecha_devol`) VALUES
(10, 'CoD-PS4', '11111111A', '2020-12-11', '2021-12-15'),
(11, 'CoD-PS4', '11111111A', '2020-12-11', '2021-12-15'),
(12, 'CoD-PS4', '11111111A', '2020-12-11', '2021-12-15'),
(13, 'M-Nintendo', '11111111A', '2020-12-11', '2021-12-15'),
(14, 'CoD-PS4', '11111111A', '2020-12-11', '2021-12-15'),
(15, 'F-PS4', '11111111A', '2020-12-11', '2021-12-15'),
(16, 'SMB-Nintendo', '11111111A', '2020-12-11', '2021-12-15'),
(17, 'GTA5-XBoxONE', '11111111A', '2021-12-15', '2021-12-15'),
(53, 'CoD-PS4', '11111111A', '2021-12-15', '2021-12-15'),
(61, 'F-PS4', '11111111A', '2021-12-15', '2021-12-15'),
(62, 'CoD-PS4', '11111111A', '2021-12-15', '2021-12-15'),
(63, 'GTA5-XBoxONE', '11111111A', '2021-12-15', '2021-12-15'),
(64, 'CoD-PS4', '11111111A', '2021-12-15', '2021-12-15'),
(65, 'CoD-PS4', '11111111A', '2021-12-15', '2021-12-15'),
(66, 'F-PS4', '11111111A', '2021-12-15', '2021-12-15'),
(67, 'GTA5-XBoxONE', '11111111A', '2021-12-15', '2021-12-15'),
(68, 'M-Nintendo', '11111111A', '2021-12-15', '2021-12-15'),
(69, 'SMB-Nintendo', '11111111A', '2021-12-15', '2021-12-15'),
(70, 'CoD-PS4', '11111111A', '2021-12-16', '2021-12-16'),
(71, 'CoD-PS4', '11111111A', '2021-12-16', NULL),
(72, 'RL-Nintendo Switch', '12345678G', '2021-12-18', NULL),
(73, 'GoT-PS4', '11111111A', '2021-12-19', '2021-12-19'),
(74, 'GoT-PS4', '11111111A', '2021-12-20', '2021-12-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `DNI` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellidos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Localidad` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Tipo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `intentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`DNI`, `Nombre`, `Apellidos`, `Direccion`, `Localidad`, `Clave`, `Tipo`, `intentos`) VALUES
('11111111A', 'Antonio', 'López', 'Ancha,21', 'Lucena', '4a181673429f0b6abbfd452f0f3b5950', 'cliente', 3),
('12121212A', 'Admin', 'Admin', 'Direc. Admin', 'Lucena', '21232f297a57a5a743894a0e4a801fc3', 'admin', 3),
('12345678G', 'Francisco', 'Fernández', 'Su casa', 'Aguilar', '81dc9bdb52d04dc20036dbd8313ed055', 'cliente', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

DROP TABLE IF EXISTS `juegos`;
CREATE TABLE `juegos` (
  `Codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_juego` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre_consola` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Anno` year(4) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Alquilado` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Imagen` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`Codigo`, `Nombre_juego`, `Nombre_consola`, `Anno`, `Precio`, `Alquilado`, `Imagen`, `descripcion`) VALUES
('CoD-PS4', 'Call of Duty', 'PS4', 2019, 120, 'SI', '../images/callDuty.jpg', 'Call of Duty es una serie de videojuegos de disparos en primera persona, de estilo bélico, creada por Ben Chichoski, desarrollada principal e inicialmente por Infinity Ward, Treyarch, Sledgehammer Games y en menor proporción Raven Software y distribuida por Activision.'),
('F-PS4', 'Fortnite', 'PS4', 2018, 90, 'NO', '../images/Fortnite.jpg', 'Fortnite es un videojuego del año 2017 desarrollado por la empresa Epic Games, lanzado como diferentes paquetes de software que presentan diferentes modos de juego, pero que comparten el mismo motor de juego y mecánicas. Fue anunciado en los Spike Video Game Awards en 2011'),
('GoT-PS4', 'Ghost of Thushima', 'PS4', 2019, 70, 'NO', '../images/GhostOfThushima.jpg-1639606956', 'Ghost of Tsushima es un videojuego de acción-aventura desarrollado por Sucker Punch Productions y publicado por Sony Interactive Entertainment para PlayStation 4 y PlayStation 5'),
('GTA5-XBoxONE', 'Grand Theft Auto 5', 'XBoxONE', 2013, 45, 'NO', '../images/gta5.jpg', 'Grand Theft Auto V es un videojuego de acción-aventura de mundo abierto desarrollado por el estudio Rockstar North y distribuido por Rockstar Games. Fue lanzado el 17 de septiembre de 2013 para las consolas PlayStation 3 y Xbox 360.​'),
('M-Nintendo', 'MineCraft', 'Nintendo', 2015, 50, 'NO', '../images/minecraft.jpg', 'Minecraft es un videojuego de construcción, de tipo «mundo abierto» o sandbox creado originalmente por el sueco Markus Persson (conocido comúnmente como \"Notch\"),2​ y posteriormente desarrollado por su empresa, Mojang Studios. Fue lanzado públicamente el 17 de mayo de 2009, después de diversos cambios fue lanzada su versión completa el 18 de noviembre de 2011. '),
('PD-Nintendo Switch', 'Pokemon Diamante', 'Nintendo Switch', 2021, 65, 'NO', '../images/PokemonDiamante.jpg-1639602547', 'Pokémon Diamante Brillante y Pokémon Perla Reluciente son un dúo de videojuegos de rol para la videoconsola hibrída Nintendo Switch. Fueron anunciados el 26 de febrero como parte del 25 aniversario de Pokémon junto a Leyendas Pokémon: Arceus.​​'),
('RL-Nintendo Switch', 'Rocket League', 'Nintendo Switch', 2015, 25, 'SI', '../images/RocketLeague.jpg-1639601591', 'Rocket League es un videojuego que combina el fútbol con los vehículos. Fue desarrollado por Psyonix y lanzado el 7 de julio de 2015. Fue lanzado Free to play en septiembre de 2020. Se encuentra disponible en español, y tiene modos de juego cooperativo de un jugador y en línea.'),
('SMB-Nintendo', 'Super Mario Bros', 'Nintendo', 2007, 99, 'NO', '../images/mario.jpg', 'Super Mario (スーパーマリオ Sūpā Mario?) es una serie de videojuegos de plataformas creados por la empresa desarrolladora Nintendo y protagonizados por su mascota, Mario. También conocida como la serie Super Mario Bros. (スーパーマリオブラザーズ Sūpā Mario Burazāzu?). o simplemente la serie Mario (マ リ オ?), es la serie principal de la franquicia de Mario. Se ha lanzado al menos un videojuego de Super Mario para todas las consolas de videojuegos de Nintendo. ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Cod_juego` (`Cod_juego`),
  ADD KEY `DNI_cliente` (`DNI_cliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `alquiler_ibfk_1` FOREIGN KEY (`DNI_cliente`) REFERENCES `cliente` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alquiler_ibfk_2` FOREIGN KEY (`Cod_juego`) REFERENCES `juegos` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
