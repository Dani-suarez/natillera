-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2023 a las 16:00:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aereopuerto_2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aereolinea`
--

CREATE TABLE `aereolinea` (
  `id_aereolinea` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aereolinea`
--

INSERT INTO `aereolinea` (`id_aereolinea`, `nombre`) VALUES
(1, 'Sprint'),
(2, 'Avianca'),
(3, 'Viva'),
(4, 'Latam'),
(5, 'Avianca'),
(6, 'Ultra Air'),
(7, 'Wingo'),
(8, 'Sprint');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aereopuerto`
--

CREATE TABLE `aereopuerto` (
  `id_aereopuerto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `fk_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aereopuerto`
--

INSERT INTO `aereopuerto` (`id_aereopuerto`, `nombre`, `codigo`, `fk_ciudad`) VALUES
(1, 'El Dorado', 'BOG', 1),
(2, 'Palonegro', 'BGA', 15),
(3, 'Ernesto Cortissoz', 'BAQ', 10),
(4, 'Camilo Daza', 'CUC', 14),
(5, 'Rafael Nuñez', 'CTG', 9),
(6, 'Alfonzo Bonilla Aragon', 'CLO', 3),
(7, 'Gustavo Artunduaga', 'FLA', 22),
(8, 'Alfredo Vasquez Cobo', 'LET', 17),
(9, 'Enrique Olaya Herrrera', 'EOH', 2),
(10, 'Los Garzones', 'MTR', 16),
(11, 'Benito Salas', 'NVA', 21),
(12, 'Matecaña', 'PEI', 4),
(13, 'Guillermo Leon Valencia', 'PPN', 5),
(14, 'Antonio Nariño', 'PSO', 8),
(15, 'Simon Bolivar', 'SMR', 11),
(16, 'Gustabo Rojas Pinilla', 'ADZ', 13),
(17, 'El Caraño', 'UIB', 18),
(18, 'Vanguardia', 'VVC', 12),
(19, 'EL Eden', 'AXM', 7),
(20, 'Jose Celestino Mutis', 'MQU', 20),
(21, 'Gustavo Rojas Pinilla', 'TUN', 19),
(22, 'La nuvia', 'MZL', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeroelinea_aereopuerto`
--

CREATE TABLE `aeroelinea_aereopuerto` (
  `id_linea_puerto` int(11) NOT NULL,
  `fk_aereolinea` int(11) NOT NULL,
  `fk_aereopuerto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aeroelinea_aereopuerto`
--

INSERT INTO `aeroelinea_aereopuerto` (`id_linea_puerto`, `fk_aereolinea`, `fk_aereopuerto`) VALUES
(1, 1, 1),
(2, 1, 9),
(3, 1, 6),
(4, 1, 2),
(5, 1, 3),
(6, 1, 20),
(7, 1, 19),
(8, 1, 12),
(9, 1, 15),
(10, 1, 13),
(11, 1, 18),
(12, 1, 8),
(13, 1, 5),
(14, 1, 7),
(15, 1, 11),
(16, 1, 13),
(17, 1, 14),
(18, 2, 1),
(19, 2, 9),
(20, 2, 6),
(21, 2, 2),
(22, 2, 3),
(23, 2, 20),
(24, 2, 19),
(25, 2, 12),
(26, 2, 15),
(27, 2, 13),
(28, 2, 18),
(29, 2, 8),
(30, 2, 5),
(31, 2, 7),
(32, 2, 11),
(33, 2, 13),
(34, 2, 14),
(35, 2, 16),
(36, 2, 21),
(37, 3, 1),
(38, 3, 9),
(39, 3, 6),
(40, 3, 2),
(41, 3, 3),
(42, 3, 20),
(43, 3, 19),
(44, 3, 12),
(45, 3, 15),
(46, 3, 13),
(47, 3, 18),
(48, 3, 8),
(49, 3, 5),
(50, 3, 7),
(51, 3, 11),
(52, 3, 13),
(53, 4, 14),
(54, 4, 16),
(55, 4, 21),
(56, 4, 17),
(57, 4, 22),
(58, 4, 10),
(59, 4, 1),
(60, 4, 9),
(61, 4, 6),
(62, 4, 2),
(63, 4, 3),
(64, 4, 20),
(65, 4, 19),
(66, 4, 12),
(67, 4, 15),
(68, 4, 13),
(69, 4, 18),
(70, 4, 8),
(71, 4, 5),
(72, 4, 7),
(73, 4, 11),
(74, 4, 13),
(75, 4, 14),
(76, 5, 1),
(77, 5, 9),
(78, 5, 6),
(79, 5, 2),
(80, 5, 3),
(81, 5, 20),
(82, 5, 19),
(83, 5, 12),
(84, 5, 15),
(85, 5, 13),
(86, 5, 18),
(87, 5, 10),
(88, 5, 5),
(89, 5, 7),
(90, 5, 11),
(91, 5, 13),
(92, 5, 14),
(93, 7, 1),
(94, 7, 9),
(95, 7, 6),
(96, 7, 2),
(97, 7, 3),
(98, 7, 20),
(99, 7, 19),
(100, 7, 12),
(101, 7, 15),
(102, 7, 13),
(103, 7, 18),
(104, 7, 10),
(105, 7, 5),
(106, 7, 7),
(107, 7, 11),
(108, 7, 13),
(109, 7, 14),
(110, 8, 1),
(111, 8, 9),
(112, 8, 6),
(113, 8, 14),
(114, 8, 13),
(115, 8, 8),
(116, 8, 12),
(117, 8, 22),
(118, 8, 19),
(139, 6, 1),
(140, 6, 9),
(141, 6, 6),
(142, 6, 5),
(143, 6, 3),
(144, 6, 15),
(145, 6, 13),
(146, 6, 10),
(147, 6, 12),
(148, 6, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avion`
--

CREATE TABLE `avion` (
  `id_avion` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `capacidad_pasajeros` float(10,1) DEFAULT NULL,
  `capacidad_carga` float(10,1) DEFAULT NULL,
  `fecha_revision` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avion`
--

INSERT INTO `avion` (`id_avion`, `modelo`, `capacidad_pasajeros`, `capacidad_carga`, `fecha_revision`) VALUES
(1, 'Boeing 737', 150.0, 15000.0, '2023-04-01 00:00:00'),
(2, 'Airbus A320', 170.0, 17000.0, '2023-04-10 00:00:00'),
(3, 'Boeing 767', 250.0, 25000.0, '2023-04-15 00:00:00'),
(4, 'Airbus A330', 300.0, 30000.0, '2023-04-20 00:00:00'),
(5, 'Embraer E190	', 100.0, 10000.0, '2023-04-25 00:00:00'),
(6, 'Bombardier CRJ700', 70.0, 7000.0, '2023-04-30 00:00:00'),
(7, 'Boeing 777', 400.0, 40000.0, '2023-05-01 00:00:00'),
(8, 'Airbus A200', 200.0, 20000.0, '2023-03-15 00:00:00'),
(9, 'Airubs A250', 250.0, 25000.0, '2023-05-06 00:00:00'),
(10, 'Airbus A180', 180.0, 18000.0, '2023-03-20 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `fk_vuelo` int(11) NOT NULL,
  `fk_empleado` int(11) NOT NULL,
  `tipo_evento` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `fk_vuelo`, `fk_empleado`, `tipo_evento`, `descripcion`) VALUES
(1, 72, 30, 'Abordaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(2, 57, 31, 'Mantenimiento', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(3, 72, 48, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(4, 19, 47, 'Despegue', 'Realizó el despegue del vuelo'),
(5, 14, 49, 'Despegue', 'Se realizó el aterrizaje del vuelo'),
(6, 36, 38, 'Aterrizaje', 'Se realizo Mantenimiento de rutina'),
(7, 80, 49, 'Aterrizaje', 'Se realizo Mantenimiento de rutina'),
(8, 2, 7, 'Abordaje', 'Realizó el despegue del vuelo'),
(9, 6, 18, 'Mantenimiento', 'Se realizó el aterrizaje del vuelo'),
(10, 31, 31, 'Aterrizaje', 'Se realizó el aterrizaje del vuelo'),
(11, 82, 43, 'Aterrizaje', 'Realizó el despegue del vuelo'),
(12, 31, 48, 'Mantenimiento', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(13, 84, 6, 'Abordaje', 'Se realizó el aterrizaje del vuelo'),
(14, 70, 9, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(15, 80, 12, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(16, 43, 13, 'Abordaje', 'Realizó el despegue del vuelo'),
(17, 58, 9, 'Aterrizaje', 'Se realizó el aterrizaje del vuelo'),
(18, 65, 36, 'Aterrizaje', 'Realizó el despegue del vuelo'),
(19, 8, 7, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(20, 33, 9, 'Abordaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(21, 41, 11, 'Aterrizaje', 'Realizó el despegue del vuelo'),
(22, 25, 23, 'Abordaje', 'Se realizó el aterrizaje del vuelo'),
(23, 42, 31, 'Aterrizaje', 'Se realizo Mantenimiento de rutina'),
(24, 45, 1, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(25, 16, 50, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(26, 23, 11, 'Abordaje', 'Realizó el despegue del vuelo'),
(27, 47, 31, 'Aterrizaje', 'Realizó el despegue del vuelo'),
(28, 73, 51, 'Despegue', 'Se realizó el aterrizaje del vuelo'),
(29, 64, 49, 'Aterrizaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(30, 23, 42, 'Mantenimiento', 'Se realizó el aterrizaje del vuelo'),
(31, 19, 1, 'Aterrizaje', 'Se realizó el aterrizaje del vuelo'),
(32, 50, 17, 'Mantenimiento', 'Realizó el despegue del vuelo'),
(33, 50, 8, 'Abordaje', 'Realizó el despegue del vuelo'),
(34, 94, 2, 'Despegue', 'Se realizo Mantenimiento de rutina'),
(35, 100, 27, 'Mantenimiento', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(36, 36, 13, 'Aterrizaje', 'Realizó el despegue del vuelo'),
(37, 56, 46, 'Abordaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(38, 61, 15, 'Despegue', 'Se realizo Mantenimiento de rutina'),
(39, 100, 5, 'Aterrizaje', 'Se realizó el aterrizaje del vuelo'),
(40, 78, 24, 'Abordaje', 'Se realizo Mantenimiento de rutina'),
(41, 95, 47, 'Mantenimiento', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(42, 62, 6, 'Aterrizaje', 'Realizó el despegue del vuelo'),
(43, 55, 1, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(44, 47, 44, 'Despegue', 'Se realizo Mantenimiento de rutina'),
(45, 83, 36, 'Despegue', 'Se realizo Mantenimiento de rutina'),
(46, 60, 49, 'Mantenimiento', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(47, 95, 47, 'Aterrizaje', 'Se realizó el aterrizaje del vuelo'),
(48, 87, 36, 'Abordaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(49, 22, 16, 'Aterrizaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(50, 51, 43, 'Abordaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(51, 57, 14, 'Mantenimiento', 'Se realizó el aterrizaje del vuelo'),
(52, 33, 44, 'Abordaje', 'Se realizo Mantenimiento de rutina'),
(53, 38, 9, 'Aterrizaje', 'Se realizó el aterrizaje del vuelo'),
(54, 57, 44, 'Abordaje', 'Realizó el despegue del vuelo'),
(55, 1, 40, 'Mantenimiento', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(56, 93, 32, 'Despegue', 'Se realizó el aterrizaje del vuelo'),
(57, 98, 27, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(58, 78, 9, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(59, 22, 18, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(60, 74, 7, 'Abordaje', 'Se realizó el aterrizaje del vuelo'),
(61, 98, 14, 'Despegue', 'Se realizó el aterrizaje del vuelo'),
(62, 27, 12, 'Abordaje', 'Realizó el despegue del vuelo'),
(63, 88, 19, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(64, 37, 50, 'Abordaje', 'Realizó el despegue del vuelo'),
(65, 64, 26, 'Abordaje', 'Se realizó el aterrizaje del vuelo'),
(66, 17, 18, 'Abordaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(67, 24, 6, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(68, 26, 19, 'Aterrizaje', 'Se realizo Mantenimiento de rutina'),
(69, 81, 26, 'Abordaje', 'Se realizo Mantenimiento de rutina'),
(70, 81, 43, 'Despegue', 'Realizó el despegue del vuelo'),
(71, 79, 16, 'Despegue', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(72, 69, 17, 'Mantenimiento', 'Realizó el despegue del vuelo'),
(73, 96, 18, 'Aterrizaje', 'Se verificó el abordaje de los pasajeros en el vuelo'),
(74, 36, 32, 'Abordaje', 'Se realizó el aterrizaje del vuelo'),
(75, 91, 28, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(76, 48, 40, 'Abordaje', 'Se realizo Mantenimiento de rutina'),
(77, 58, 7, 'Aterrizaje', 'Se realizo Mantenimiento de rutina'),
(78, 78, 40, 'Mantenimiento', 'Realizó el despegue del vuelo'),
(79, 73, 39, 'Despegue', 'Se realizo Mantenimiento de rutina'),
(80, 37, 12, 'Aterrizaje', 'Se realizo Mantenimiento de rutina'),
(81, 99, 5, 'Despegue', 'Realizó el despegue del vuelo'),
(82, 91, 18, 'Abordaje', 'Realizó el despegue del vuelo'),
(83, 46, 21, 'Mantenimiento', 'Se realizó el aterrizaje del vuelo'),
(84, 10, 9, 'Abordaje', 'Se realizo Mantenimiento de rutina'),
(85, 86, 2, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(86, 87, 18, 'Abordaje', 'Realizó el despegue del vuelo'),
(87, 92, 34, 'Despegue', 'Realizó el despegue del vuelo'),
(88, 90, 49, 'Abordaje', 'Realizó el despegue del vuelo'),
(89, 40, 17, 'Mantenimiento', 'Realizó el despegue del vuelo'),
(90, 12, 50, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(91, 55, 6, 'Aterrizaje', 'Se realizo Mantenimiento de rutina'),
(92, 52, 4, 'Mantenimiento', 'Se realizó el aterrizaje del vuelo'),
(93, 43, 4, 'Despegue', 'Realizó el despegue del vuelo'),
(94, 3, 35, 'Mantenimiento', 'Se realizo Mantenimiento de rutina'),
(95, 50, 33, 'Despegue', 'Realizó el despegue del vuelo'),
(96, 45, 42, 'Despegue', 'Realizó el despegue del vuelo'),
(97, 33, 24, 'Despegue', 'Se realizó el aterrizaje del vuelo'),
(98, 60, 50, 'Abordaje', 'Se realizo Mantenimiento de rutina'),
(99, 44, 23, 'Despegue', 'Se realizo Mantenimiento de rutina'),
(100, 42, 22, 'Abordaje', 'Realizó el despegue del vuelo'),
(101, 72, 30, 'Abordaje', 'Se verificó el abordaje de los pasajeros en el vuelo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre`) VALUES
(1, 'Bogota'),
(2, 'Medellin'),
(3, 'Cali'),
(4, 'Pereira'),
(5, 'Popayan'),
(6, 'Manizales'),
(7, 'Armenia'),
(8, 'Pasto'),
(9, 'Cartagena'),
(10, 'Barranquilla'),
(11, 'Santa Marta'),
(12, 'Villavicencio'),
(13, 'San Andres'),
(14, 'Cucuta'),
(15, 'Bucaramanga'),
(16, 'Monteria'),
(17, 'Leticia'),
(18, 'Quibdo'),
(19, 'Tunja'),
(20, 'Ibague'),
(21, 'Neiva'),
(22, 'Florencia'),
(23, 'Mocoa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `salario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `apellido`, `fecha_nacimiento`, `fecha_contratacion`, `puesto`, `salario`) VALUES
(1, 'Mario', 'Perez', '1972-07-12', '2012-06-12', 'Mecanico', 5200000),
(2, 'Cindy', 'Gomez', '1974-02-18', '2014-10-27', 'Asafata', 2677000),
(3, 'Ceddric', 'Martinez', '1991-05-18', '2016-03-19', 'Piloto', 9383000),
(4, 'Leodora', 'Martinez', '1984-12-27', '1997-05-20', 'Asafata', 9794000),
(5, 'Regina', 'Suarez', '1992-09-21', '2017-05-05', 'Ingeniero Mecanico', 4423000),
(6, 'Carlos', 'Diaz', '1984-03-12', '2002-07-15', 'Ventas', 5667078),
(7, 'Mattias', 'Olivetti', '1999-09-24', '2006-10-04', 'Ventas', 3754747),
(8, 'Sandra', 'Jamot', '1992-01-04', '2021-11-08', 'Ingeniera Sistemas', 8410000),
(9, 'Cornelio', 'MacCaughan', '2000-05-07', '2011-06-18', 'Piloto', 2042000),
(10, 'Cristian', 'Diaz', '1986-03-13', '2014-02-22', 'Piloto', 9419000),
(11, 'Michell', 'Duque', '1977-03-27', '2016-05-16', 'Asafata', 8559000),
(12, 'Reggina', 'Corcho', '1999-12-29', '2014-03-24', 'ventas', 3524000),
(13, 'Federica', 'Torres', '1978-02-11', '2011-05-17', 'Ventas', 1861000),
(14, 'Maicol', 'Cortes', '1971-05-26', '1996-06-17', 'Ingeniero Sistemas', 3708000),
(15, 'Tudor', 'Alvarez', '1986-06-02', '2022-07-15', 'Ingeneiro Sistemas', 4965000),
(16, 'Sandra', 'Castro', '2000-10-15', '2016-07-26', 'Asafata', 1462000),
(17, 'Valeria', 'Usuga', '1975-08-21', '2003-08-07', 'ventas', 4989000),
(18, 'Alberto', 'Astrada', '1989-12-28', '2007-10-15', 'Mecanico', 5112000),
(19, 'Jessica', 'Valencia', '1979-03-20', '2016-06-15', 'ventas', 6446000),
(20, 'Carlos', 'Valencia', '1971-10-12', '1991-03-15', 'Ingenierio Mecanico', 7082000),
(21, 'Veronica', 'Melo', '1979-01-20', '2016-10-22', 'Ventas', 1640000),
(22, 'Cristian', 'Peña', '2000-08-05', '2002-10-11', 'Coordinador Vuelos', 6890000),
(23, 'Cristina', 'Castro', '1982-05-19', '2001-06-10', 'Coordinadora Vuelos', 9467000),
(24, 'Johnathan', 'Alvarez', '1991-01-25', '2004-07-26', 'Piloto', 8889000),
(25, 'Marlon', 'Gomez', '1997-08-21', '2018-10-05', 'Piloto', 5188000),
(26, 'Argeniz', 'Lopez', '1999-08-24', '1997-08-29', 'Asafata', 1867000),
(27, 'Tatiana', 'Lopez', '1983-07-01', '2010-12-16', 'Asafata', 8882000),
(28, 'Geraldine', 'Gomez', '2001-12-01', '2003-03-11', 'Asafata', 1890000),
(29, 'Carolyain', 'Moscoso', '1992-03-17', '2008-10-26', 'Asafata', 2787000),
(30, 'Artemisa', 'Torres', '1997-03-03', '1997-09-15', 'Asafata', 9448000),
(31, 'Eleonora', 'Terron', '1981-10-15', '2009-04-29', 'Asafata', 2566000),
(32, 'Pepito', 'Suarez', '1990-08-27', '2007-06-07', 'Piloto', 9279000),
(33, 'Lucas', 'Cortes', '1978-11-10', '2007-03-31', 'Piloto', 5170000),
(34, 'Amanda', 'Cortes', '2001-07-24', '2022-07-03', 'Ventas', 8043000),
(35, 'Michael', 'White', '2000-08-05', '2006-01-01', 'Ventas', 6658000),
(36, 'Luis', 'Manco', '1984-11-25', '2019-05-06', 'Coordinador Vuelos', 4644000),
(37, 'Vanessa', 'Henner', '1988-03-20', '1992-08-19', 'coordinadora Vuelos', 4296000),
(38, 'Cleotilde', 'De vega', '1995-11-21', '2021-09-03', 'Coordinadora Vuelos', 7446000),
(39, 'Stafani', 'Gherardi', '1993-04-15', '2005-09-14', 'Piloto', 5949000),
(40, 'Fredi', 'White', '1978-06-13', '2021-02-04', 'Mecanico', 4639000),
(41, 'Stevan', 'Moscoso', '1985-10-18', '2022-08-16', 'Mecanico', 2978000),
(42, 'Lin', 'Fuu', '1984-08-11', '2000-01-28', 'Ingeniero Mecanico', 8564000),
(43, 'Silbie', 'Dahlbom', '1975-11-28', '2007-11-20', 'Ingeniero Sistemas', 2396000),
(44, 'Gerardo', 'Vole', '1971-12-21', '2018-05-17', 'Ingeniero Mecanico', 3395000),
(45, 'Wally', 'Juarez', '1996-05-01', '1991-03-06', 'ventas', 7078000),
(46, 'Cristina', 'Micu', '1983-12-20', '1999-03-26', 'Asafata', 7843000),
(47, 'Amanda', 'Corcho', '1985-04-19', '1995-10-09', 'Asafata', 1620000),
(48, 'Sandra', 'Duque', '1985-07-21', '1995-01-22', 'Asafata', 4625000),
(49, 'Freemon', 'Hance', '1999-03-26', '2005-07-27', 'Asafata', 1414000),
(50, 'Osvaldo', 'Mosquera', '1998-10-07', '2021-01-17', 'Mecanico', 3248000),
(51, 'Sofia', 'Boyer', '1998-05-07', '2002-11-17', 'Ventas', 2380000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

CREATE TABLE `pasajero` (
  `id_pasajero` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `fk_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pasajero`
--

INSERT INTO `pasajero` (`id_pasajero`, `nombre`, `apellido`, `fecha_nacimiento`, `genero`, `fk_ciudad`) VALUES
(1, 'Frank', 'Olivie', '1994-06-20', 'M', 21),
(2, 'Thelma', 'Taylor', '1999-09-20', 'F', 17),
(3, 'Jonathon', 'Manns', '1971-03-03', 'M', 13),
(4, 'Rodge', 'Fettiplace', '1980-05-28', 'M', 16),
(5, 'Inesita', 'Upjohn', '1985-07-14', 'F', 22),
(6, 'Gaelan', 'Weedon', '1987-05-24', 'M', 1),
(7, 'Terrill', 'Finden', '1999-08-25', 'M', 9),
(8, 'Tootsie', 'Simone', '1999-12-23', 'F', 20),
(9, 'Rikki', 'Toombs', '1977-01-13', 'F', 18),
(10, 'Aldon', 'Baldwin', '1971-08-22', 'M', 20),
(11, 'Shay', 'Mapham', '1996-09-02', 'F', 21),
(12, 'Teodora', 'Tomankowski', '1988-08-01', 'F', 8),
(13, 'Bobette', 'Werrit', '1989-12-07', 'F', 1),
(14, 'Hi', 'Normanton', '1980-02-06', 'M', 10),
(15, 'Patrizia', 'Chastanet', '1982-07-15', 'F', 12),
(16, 'Elane', 'Vogele', '1980-12-06', 'F', 22),
(17, 'Mallory', 'Grahame', '1983-05-24', 'F', 22),
(18, 'Halimeda', 'Chastey', '1986-06-22', 'F', 12),
(19, 'Delcina', 'Blanking', '1980-02-11', 'F', 16),
(20, 'Valentino', 'Pedroli', '1971-10-07', 'M', 15),
(21, 'Christoph', 'Pavic', '1990-01-22', 'M', 23),
(22, 'Amalia', 'Clamp', '1997-04-19', 'F', 9),
(23, 'Alanson', 'Gunther', '1984-12-25', 'M', 22),
(24, 'Magdalena', 'Pressey', '1975-11-24', 'F', 22),
(25, 'Hort', 'Swapp', '1982-04-20', 'M', 5),
(26, 'Baxter', 'Reboul', '1990-08-05', 'M', 10),
(27, 'Loleta', 'Stallwood', '1973-04-19', 'F', 16),
(28, 'Stearn', 'Cage', '1994-01-23', 'M', 23),
(29, 'Jessika', 'Goatman', '1982-01-26', 'F', 7),
(30, 'Fredrick', 'Berzons', '1995-10-16', 'M', 4),
(31, 'Marnie', 'Mongain', '1991-06-24', 'F', 21),
(32, 'Douglas', 'Barton', '1986-06-29', 'M', 9),
(33, 'Hewe', 'Soan', '1986-10-19', 'M', 15),
(34, 'Gregorio', 'Frandsen', '1995-05-29', 'M', 21),
(35, 'Rhys', 'Freddi', '1991-08-01', 'M', 21),
(36, 'Chrotoem', 'McCullagh', '1991-08-23', 'M', 14),
(37, 'Bobbye', 'Adne', '1976-04-06', 'F', 11),
(38, 'Bonnibelle', 'Tandey', '2000-12-16', 'F', 20),
(39, 'Deirdre', 'Abercromby', '1973-06-14', 'F', 20),
(40, 'Damon', 'Weedon', '2000-09-06', 'M', 3),
(41, 'Bobinette', 'Cutcliffe', '1979-10-10', 'F', 21),
(42, 'Silvanus', 'Capstaff', '1980-01-13', 'M', 7),
(43, 'Zsa zsa', 'Escale', '1983-05-25', 'F', 7),
(44, 'Noelle', 'Andreou', '1973-12-01', 'F', 2),
(45, 'Seth', 'Yokel', '1998-05-04', 'M', 4),
(46, 'Garnet', 'Rossbrooke', '1993-07-01', 'F', 14),
(47, 'Timmi', 'Miettinen', '1996-07-30', 'F', 16),
(48, 'Nevil', 'Santon', '1992-08-07', 'M', 4),
(49, 'Anna-maria', 'Charters', '1994-12-20', 'F', 8),
(50, 'Lammond', 'Bilby', '1989-07-02', 'M', 22),
(51, 'Jill', 'Yewman', '1987-05-30', 'F', 4),
(52, 'Nil', 'Winney', '1976-10-26', 'M', 18),
(53, 'Jacky', 'Bellingham', '1970-05-02', 'M', 9),
(54, 'Gardener', 'Dregan', '1997-06-09', 'M', 16),
(55, 'Eryn', 'Zettoi', '1993-02-26', 'F', 22),
(56, 'Ronni', 'Zelake', '1989-06-01', 'F', 16),
(57, 'Fransisco', 'Pautot', '1979-04-21', 'M', 14),
(58, 'Roxi', 'Verheyden', '1977-04-18', 'F', 6),
(59, 'Datha', 'Vose', '1995-09-08', 'F', 10),
(60, 'Gherardo', 'Middlewick', '1974-03-13', 'M', 18),
(61, 'Marjory', 'Davidovitch', '1972-06-18', 'F', 8),
(62, 'Kamila', 'Bolf', '2000-02-23', 'F', 7),
(63, 'Randene', 'Grishukov', '1977-07-20', 'F', 1),
(64, 'Guido', 'Lathleiffure', '1972-12-15', 'M', 23),
(65, 'Harmonia', 'Manger', '1979-09-08', 'F', 8),
(66, 'Marilee', 'Lugton', '1986-08-29', 'F', 16),
(67, 'Aguste', 'Litzmann', '1989-11-28', 'M', 1),
(68, 'Celle', 'Speer', '1981-07-18', 'F', 23),
(69, 'Mar', 'Thelwll', '1982-03-02', 'M', 20),
(70, 'Wilbert', 'Maleham', '1973-03-19', 'M', 13),
(71, 'Charo', 'Mucklow', '1981-06-02', 'F', 22),
(72, 'Hilton', 'Cancott', '1977-05-11', 'M', 14),
(73, 'Kendell', 'Nye', '1991-10-08', 'M', 10),
(74, 'Ardith', 'Longson', '1991-04-29', 'F', 1),
(75, 'Lodovico', 'Twine', '1992-08-11', 'M', 20),
(76, 'Goober', 'Gingel', '2000-05-21', 'M', 16),
(77, 'Kenton', 'Saffen', '1979-04-13', 'M', 1),
(78, 'Loren', 'Annear', '1980-11-17', 'M', 22),
(79, 'Pieter', 'Geindre', '1997-06-04', 'M', 3),
(80, 'Lisle', 'Harsant', '1970-11-16', 'M', 10),
(81, 'Rogers', 'Danes', '1975-07-08', 'M', 2),
(82, 'Devan', 'Shillaker', '1977-12-31', 'F', 8),
(83, 'Bobine', 'Brinkley', '1976-11-25', 'F', 13),
(84, 'Shirlene', 'Ivantyev', '1992-02-01', 'F', 18),
(85, 'Corney', 'Impey', '1990-11-08', 'M', 8),
(86, 'Jude', 'Dawney', '1975-04-20', 'M', 4),
(87, 'Adelaida', 'Humbatch', '1981-11-09', 'F', 6),
(88, 'Meagan', 'Brodest', '1982-04-30', 'F', 15),
(89, 'Cleo', 'Henri', '1975-08-16', 'F', 10),
(90, 'Catherin', 'Wimlett', '1990-10-04', 'F', 19),
(91, 'Consalve', 'Canet', '1972-08-22', 'M', 9),
(92, 'Myriam', 'Burbudge', '1993-07-04', 'F', 7),
(93, 'Griz', 'Rollo', '1979-05-02', 'M', 13),
(94, 'Tracey', 'Heneghan', '2000-04-06', 'F', 12),
(95, 'Maxy', 'Avrahamy', '1975-06-21', 'F', 9),
(96, 'Audrie', 'Baudrey', '1997-08-23', 'F', 5),
(97, 'Hersch', 'Lambole', '1983-08-22', 'M', 3),
(98, 'Norbie', 'Djorevic', '1999-09-30', 'M', 12),
(99, 'Jay', 'Tinkler', '1998-02-21', 'M', 2),
(100, 'Mollie', 'Folland', '1976-08-19', 'F', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros_aeroelinea`
--

CREATE TABLE `pasajeros_aeroelinea` (
  `id_pasa_aereo` int(11) NOT NULL,
  `fk_pasajero` int(11) NOT NULL,
  `fk_aereolinea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pasajeros_aeroelinea`
--

INSERT INTO `pasajeros_aeroelinea` (`id_pasa_aereo`, `fk_pasajero`, `fk_aereolinea`) VALUES
(1, 66, 3),
(2, 73, 7),
(3, 25, 2),
(4, 96, 8),
(5, 16, 2),
(6, 74, 1),
(7, 63, 3),
(8, 92, 4),
(9, 99, 7),
(10, 15, 6),
(11, 44, 6),
(12, 16, 3),
(13, 25, 4),
(14, 43, 8),
(15, 32, 4),
(16, 74, 5),
(17, 79, 7),
(18, 45, 8),
(19, 46, 4),
(20, 74, 5),
(21, 37, 8),
(22, 77, 1),
(23, 64, 1),
(24, 2, 7),
(25, 38, 8),
(26, 61, 2),
(27, 94, 8),
(28, 25, 2),
(29, 95, 6),
(30, 10, 5),
(31, 78, 5),
(32, 24, 4),
(33, 19, 7),
(34, 98, 8),
(35, 71, 2),
(36, 26, 3),
(37, 25, 2),
(38, 32, 2),
(39, 39, 5),
(40, 86, 1),
(41, 15, 7),
(42, 79, 5),
(43, 61, 4),
(44, 52, 3),
(45, 71, 5),
(46, 75, 8),
(47, 36, 3),
(48, 2, 8),
(49, 83, 4),
(50, 66, 2),
(51, 33, 3),
(52, 49, 5),
(53, 63, 7),
(54, 21, 5),
(55, 53, 7),
(56, 79, 4),
(57, 87, 5),
(58, 11, 4),
(59, 43, 6),
(60, 20, 5),
(61, 82, 4),
(62, 91, 8),
(63, 13, 1),
(64, 47, 2),
(65, 31, 1),
(66, 66, 6),
(67, 47, 7),
(68, 35, 8),
(69, 54, 4),
(70, 12, 2),
(71, 16, 7),
(72, 19, 3),
(73, 89, 5),
(74, 16, 1),
(75, 38, 4),
(76, 56, 5),
(77, 87, 6),
(78, 61, 2),
(79, 18, 4),
(80, 65, 7),
(81, 67, 1),
(82, 70, 3),
(83, 92, 6),
(84, 28, 6),
(85, 15, 2),
(86, 78, 1),
(87, 94, 5),
(88, 31, 3),
(89, 20, 3),
(90, 23, 6),
(91, 68, 8),
(92, 12, 7),
(93, 92, 7),
(94, 2, 6),
(95, 40, 4),
(96, 87, 3),
(97, 51, 3),
(98, 57, 8),
(99, 58, 3),
(100, 12, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(11) NOT NULL,
  `ciudad_origen` int(11) NOT NULL,
  `ciudad_destino` int(11) NOT NULL,
  `distancia` int(11) DEFAULT NULL,
  `duracion_estimada` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `ciudad_origen`, `ciudad_destino`, `distancia`, `duracion_estimada`) VALUES
(1, 4, 12, 630, 7.5),
(2, 20, 4, 858, 8),
(3, 2, 8, 756, 7.9),
(4, 12, 15, 653, 7.4),
(5, 19, 8, 531, 7.9),
(6, 20, 11, 781, 1.4),
(7, 8, 20, 578, 2.5),
(8, 19, 11, 912, 3.8),
(9, 3, 22, 531, 1.8),
(10, 6, 3, 166, 6.1),
(11, 16, 13, 569, 7.9),
(12, 16, 1, 676, 8.6),
(13, 22, 3, 360, 5.9),
(14, 18, 5, 865, 4),
(15, 15, 9, 961, 5.1),
(16, 4, 11, 824, 6),
(17, 13, 6, 239, 2.2),
(18, 7, 16, 770, 1.8),
(19, 8, 20, 764, 6.6),
(20, 22, 4, 621, 6.8),
(21, 11, 18, 825, 7.1),
(22, 22, 10, 151, 7.8),
(23, 15, 8, 197, 6.3),
(24, 15, 2, 627, 4),
(25, 19, 3, 665, 9.5),
(26, 13, 4, 404, 5.5),
(27, 18, 5, 652, 2.4),
(28, 7, 6, 333, 3.8),
(29, 20, 8, 234, 5.5),
(30, 13, 19, 146, 9.4),
(31, 5, 17, 653, 8.1),
(32, 22, 14, 769, 2.7),
(33, 14, 20, 294, 9.1),
(34, 4, 19, 142, 5),
(35, 1, 2, 819, 2.4),
(36, 15, 8, 446, 8.7),
(37, 16, 17, 911, 9.7),
(38, 20, 7, 498, 5.7),
(39, 7, 4, 409, 8.4),
(40, 18, 11, 236, 1.5),
(41, 17, 10, 991, 3.7),
(42, 1, 19, 620, 6.1),
(43, 5, 3, 958, 3.9),
(44, 13, 18, 525, 3.9),
(45, 9, 3, 327, 7),
(46, 7, 9, 279, 9.8),
(47, 15, 8, 726, 6.4),
(48, 10, 6, 834, 6.4),
(49, 6, 5, 518, 3),
(50, 11, 8, 296, 4.2),
(51, 18, 8, 160, 8.8),
(52, 22, 14, 836, 4.3),
(53, 1, 3, 927, 2.6),
(54, 14, 2, 533, 3.7),
(55, 22, 7, 215, 8.9),
(56, 14, 3, 898, 5.9),
(57, 19, 4, 949, 9.4),
(58, 5, 11, 968, 5.2),
(59, 18, 13, 297, 3.1),
(60, 14, 10, 389, 1.8),
(61, 14, 9, 889, 5.7),
(62, 22, 4, 499, 8.3),
(63, 20, 21, 755, 2.9),
(64, 6, 22, 918, 9.2),
(65, 8, 5, 536, 7.6),
(66, 9, 18, 515, 7.5),
(67, 10, 20, 803, 10),
(68, 8, 4, 591, 2.7),
(69, 8, 21, 270, 2.4),
(70, 6, 8, 771, 6.4),
(71, 11, 21, 831, 8.5),
(72, 15, 16, 861, 4.1),
(73, 18, 19, 708, 9.9),
(74, 14, 19, 430, 5.6),
(75, 14, 20, 358, 4.4),
(76, 9, 14, 909, 6.5),
(77, 16, 6, 366, 5.8),
(78, 16, 22, 251, 7.2),
(79, 17, 19, 891, 7.4),
(80, 1, 15, 860, 9.3),
(81, 4, 15, 976, 1.6),
(82, 8, 6, 274, 2.6),
(83, 22, 12, 900, 6.8),
(84, 1, 16, 460, 5.6),
(85, 4, 9, 211, 3.9),
(86, 2, 13, 510, 6.5),
(87, 9, 8, 764, 9.7),
(88, 11, 9, 680, 6.3),
(89, 14, 6, 717, 1.2),
(90, 3, 22, 714, 1.4),
(91, 5, 19, 755, 5.2),
(92, 13, 15, 268, 1.8),
(93, 6, 7, 479, 5.5),
(94, 18, 16, 939, 1.4),
(95, 10, 11, 369, 6),
(96, 6, 17, 935, 5.5),
(97, 8, 18, 500, 5.2),
(98, 20, 22, 111, 6.1),
(99, 12, 14, 904, 7.9),
(100, 11, 20, 808, 7.1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiquetes`
--

CREATE TABLE `tiquetes` (
  `id_tiquetes` int(11) NOT NULL,
  `fk_pasajero` int(11) NOT NULL,
  `fk_vuelo` int(11) NOT NULL,
  `fk_aereolinea` int(11) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `tipo_clase` varchar(50) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id_vuelo` int(11) NOT NULL,
  `fk_avion` int(11) NOT NULL,
  `fk_ruta` int(11) NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_llegada` date NOT NULL,
  `hora_salida` time NOT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id_vuelo`, `fk_avion`, `fk_ruta`, `fecha_salida`, `fecha_llegada`, `hora_salida`, `estado`) VALUES
(1, 10, 63, '2023-08-28', '0000-00-00', '09:50:00', 'cancelado'),
(2, 2, 76, '2023-11-30', '0000-00-00', '07:39:00', 'reprogramado'),
(3, 4, 58, '2023-05-28', '0000-00-00', '04:04:00', 'completado'),
(4, 10, 54, '2023-01-29', '0000-00-00', '07:55:00', 'cancelado'),
(5, 3, 20, '2023-04-16', '0000-00-00', '12:25:00', 'reprogramado'),
(6, 5, 90, '2023-03-25', '0000-00-00', '02:12:00', 'completado'),
(7, 6, 83, '2023-05-18', '0000-00-00', '10:45:00', 'completado'),
(8, 10, 7, '2023-09-10', '0000-00-00', '02:22:00', 'cancelado'),
(9, 4, 72, '2023-08-30', '0000-00-00', '05:02:00', 'retrasado'),
(10, 5, 22, '2023-11-28', '0000-00-00', '01:25:00', 'completado'),
(11, 5, 14, '2023-05-21', '0000-00-00', '12:54:00', 'reprogramado'),
(12, 6, 88, '2023-03-26', '0000-00-00', '11:29:00', 'retrasado'),
(13, 9, 36, '2023-08-04', '0000-00-00', '03:47:00', 'retrasado'),
(14, 4, 64, '2023-01-31', '0000-00-00', '01:52:00', 'reprogramado'),
(15, 4, 58, '2023-08-01', '0000-00-00', '10:39:00', 'retrasado'),
(16, 7, 10, '2023-06-27', '0000-00-00', '10:31:00', 'reprogramado'),
(17, 5, 86, '2023-07-07', '0000-00-00', '02:20:00', 'completado'),
(18, 5, 51, '2023-01-06', '0000-00-00', '09:44:00', 'cancelado'),
(19, 1, 44, '2023-03-23', '0000-00-00', '12:36:00', 'cancelado'),
(20, 5, 21, '2023-05-18', '0000-00-00', '06:16:00', 'completado'),
(21, 3, 71, '2023-05-19', '0000-00-00', '04:03:00', 'reprogramado'),
(22, 5, 51, '2023-02-23', '0000-00-00', '05:20:00', 'completado'),
(23, 4, 87, '2023-11-22', '0000-00-00', '04:21:00', 'cancelado'),
(24, 10, 90, '2023-12-02', '0000-00-00', '08:58:00', 'completado'),
(25, 3, 90, '2023-02-08', '0000-00-00', '08:18:00', 'reprogramado'),
(26, 9, 16, '2023-08-02', '0000-00-00', '03:51:00', 'cancelado'),
(27, 8, 25, '2023-09-09', '0000-00-00', '08:17:00', 'retrasado'),
(28, 6, 71, '2023-07-26', '0000-00-00', '09:25:00', 'reprogramado'),
(29, 10, 49, '2023-08-22', '0000-00-00', '07:57:00', 'reprogramado'),
(30, 8, 62, '2023-11-25', '0000-00-00', '01:32:00', 'completado'),
(31, 3, 71, '2023-03-29', '0000-00-00', '10:10:00', 'completado'),
(32, 3, 83, '2023-04-28', '0000-00-00', '09:25:00', 'cancelado'),
(33, 10, 92, '2023-09-06', '0000-00-00', '06:50:00', 'completado'),
(34, 5, 76, '2023-07-15', '0000-00-00', '12:47:00', 'reprogramado'),
(35, 10, 47, '2023-08-04', '0000-00-00', '06:28:00', 'retrasado'),
(36, 3, 23, '2023-03-05', '0000-00-00', '03:45:00', 'cancelado'),
(37, 6, 86, '2023-01-21', '0000-00-00', '04:39:00', 'cancelado'),
(38, 7, 95, '2023-11-06', '0000-00-00', '05:20:00', 'reprogramado'),
(39, 3, 37, '2023-03-27', '0000-00-00', '07:58:00', 'retrasado'),
(40, 5, 68, '2023-05-18', '0000-00-00', '02:51:00', 'cancelado'),
(41, 10, 6, '2023-05-02', '0000-00-00', '06:32:00', 'reprogramado'),
(42, 8, 74, '2023-05-18', '0000-00-00', '04:03:00', 'cancelado'),
(43, 6, 61, '2023-06-26', '0000-00-00', '07:53:00', 'reprogramado'),
(44, 5, 68, '2023-07-29', '0000-00-00', '01:45:00', 'retrasado'),
(45, 4, 37, '2023-01-26', '0000-00-00', '08:53:00', 'completado'),
(46, 9, 95, '2023-05-06', '0000-00-00', '07:04:00', 'cancelado'),
(47, 9, 99, '2023-08-18', '0000-00-00', '11:12:00', 'reprogramado'),
(48, 3, 19, '2023-04-13', '0000-00-00', '11:28:00', 'completado'),
(49, 7, 57, '2023-05-07', '0000-00-00', '05:22:00', 'cancelado'),
(50, 9, 93, '2023-03-10', '0000-00-00', '08:09:00', 'completado'),
(51, 5, 68, '2023-02-02', '0000-00-00', '02:15:00', 'cancelado'),
(52, 7, 54, '2023-04-27', '0000-00-00', '11:15:00', 'retrasado'),
(53, 2, 16, '2023-10-05', '0000-00-00', '07:57:00', 'retrasado'),
(54, 6, 47, '2023-03-26', '0000-00-00', '11:14:00', 'cancelado'),
(55, 6, 41, '2023-02-07', '0000-00-00', '07:50:00', 'retrasado'),
(56, 8, 51, '2023-04-19', '0000-00-00', '05:59:00', 'reprogramado'),
(57, 10, 77, '2023-11-11', '0000-00-00', '08:07:00', 'completado'),
(58, 7, 35, '2023-08-20', '0000-00-00', '10:48:00', 'retrasado'),
(59, 8, 86, '2023-02-28', '0000-00-00', '07:47:00', 'reprogramado'),
(60, 3, 80, '2023-02-09', '0000-00-00', '02:49:00', 'cancelado'),
(61, 8, 90, '2023-02-03', '0000-00-00', '09:40:00', 'completado'),
(62, 1, 61, '2023-01-15', '0000-00-00', '11:50:00', 'cancelado'),
(63, 9, 100, '2023-06-13', '0000-00-00', '02:30:00', 'reprogramado'),
(64, 4, 39, '2023-06-24', '0000-00-00', '09:18:00', 'retrasado'),
(65, 5, 32, '2023-06-22', '0000-00-00', '05:07:00', 'cancelado'),
(66, 4, 93, '2023-05-11', '0000-00-00', '03:31:00', 'cancelado'),
(67, 4, 81, '2023-08-11', '0000-00-00', '12:50:00', 'retrasado'),
(68, 4, 42, '2023-02-18', '0000-00-00', '02:40:00', 'cancelado'),
(69, 1, 68, '2023-02-08', '0000-00-00', '02:36:00', 'cancelado'),
(70, 5, 6, '2023-02-16', '0000-00-00', '02:32:00', 'retrasado'),
(71, 6, 94, '2023-11-04', '0000-00-00', '01:11:00', 'reprogramado'),
(72, 3, 46, '2023-01-10', '0000-00-00', '02:20:00', 'cancelado'),
(73, 9, 82, '2023-06-25', '0000-00-00', '04:49:00', 'retrasado'),
(74, 9, 5, '2023-07-17', '0000-00-00', '04:20:00', 'reprogramado'),
(75, 4, 43, '2023-06-03', '0000-00-00', '12:48:00', 'retrasado'),
(76, 7, 8, '2023-08-26', '0000-00-00', '03:19:00', 'reprogramado'),
(77, 10, 61, '2023-07-13', '0000-00-00', '01:36:00', 'cancelado'),
(78, 1, 71, '2023-02-08', '0000-00-00', '07:38:00', 'completado'),
(79, 2, 31, '2023-01-17', '0000-00-00', '08:11:00', 'reprogramado'),
(80, 9, 87, '2023-07-15', '0000-00-00', '01:01:00', 'completado'),
(81, 6, 74, '2023-03-19', '0000-00-00', '12:30:00', 'retrasado'),
(82, 7, 61, '2023-06-16', '0000-00-00', '12:46:00', 'completado'),
(83, 10, 58, '2023-09-05', '0000-00-00', '10:13:00', 'cancelado'),
(84, 5, 74, '2023-06-10', '0000-00-00', '05:32:00', 'reprogramado'),
(85, 8, 4, '2023-10-21', '0000-00-00', '07:34:00', 'completado'),
(86, 4, 96, '2023-04-01', '0000-00-00', '11:39:00', 'reprogramado'),
(87, 2, 69, '2023-06-21', '0000-00-00', '08:44:00', 'completado'),
(88, 5, 46, '2023-05-21', '0000-00-00', '02:24:00', 'cancelado'),
(89, 7, 62, '2023-04-11', '0000-00-00', '08:00:00', 'reprogramado'),
(90, 3, 61, '2023-01-12', '0000-00-00', '10:56:00', 'retrasado'),
(91, 3, 69, '2023-02-03', '0000-00-00', '10:40:00', 'completado'),
(92, 1, 40, '2023-10-12', '0000-00-00', '01:12:00', 'cancelado'),
(93, 4, 55, '2023-07-24', '0000-00-00', '02:55:00', 'cancelado'),
(94, 2, 37, '2023-03-04', '0000-00-00', '11:05:00', 'completado'),
(95, 4, 65, '2023-11-25', '0000-00-00', '02:29:00', 'reprogramado'),
(96, 7, 1, '2023-03-20', '0000-00-00', '11:26:00', 'reprogramado'),
(97, 9, 52, '2023-07-24', '0000-00-00', '12:39:00', 'completado'),
(98, 1, 43, '2023-06-16', '0000-00-00', '05:36:00', 'cancelado'),
(99, 7, 8, '2023-04-16', '0000-00-00', '02:20:00', 'completado'),
(100, 7, 30, '2023-07-07', '0000-00-00', '03:55:00', 'completado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aereolinea`
--
ALTER TABLE `aereolinea`
  ADD PRIMARY KEY (`id_aereolinea`);

--
-- Indices de la tabla `aereopuerto`
--
ALTER TABLE `aereopuerto`
  ADD PRIMARY KEY (`id_aereopuerto`),
  ADD KEY `fk_ciudad` (`fk_ciudad`);

--
-- Indices de la tabla `aeroelinea_aereopuerto`
--
ALTER TABLE `aeroelinea_aereopuerto`
  ADD PRIMARY KEY (`id_linea_puerto`),
  ADD KEY `fk_aereolinea` (`fk_aereolinea`),
  ADD KEY `fk_aereopuerto` (`fk_aereopuerto`);

--
-- Indices de la tabla `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`id_avion`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id_bitacora`),
  ADD KEY `fk_vuelo` (`fk_vuelo`),
  ADD KEY `fk_empleado` (`fk_empleado`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`id_pasajero`),
  ADD KEY `fk_ciudad` (`fk_ciudad`);

--
-- Indices de la tabla `pasajeros_aeroelinea`
--
ALTER TABLE `pasajeros_aeroelinea`
  ADD PRIMARY KEY (`id_pasa_aereo`),
  ADD KEY `fk_pasajero` (`fk_pasajero`),
  ADD KEY `fk_aereolinea` (`fk_aereolinea`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `ciudad_origen` (`ciudad_origen`),
  ADD KEY `ciudad_destino` (`ciudad_destino`);

--
-- Indices de la tabla `tiquetes`
--
ALTER TABLE `tiquetes`
  ADD PRIMARY KEY (`id_tiquetes`),
  ADD KEY `fk_pasajero` (`fk_pasajero`),
  ADD KEY `fk_vuelo` (`fk_vuelo`),
  ADD KEY `fk_aereolinea` (`fk_aereolinea`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id_vuelo`),
  ADD KEY `fk_avion` (`fk_avion`),
  ADD KEY `fk_ruta` (`fk_ruta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aereolinea`
--
ALTER TABLE `aereolinea`
  MODIFY `id_aereolinea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `aereopuerto`
--
ALTER TABLE `aereopuerto`
  MODIFY `id_aereopuerto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `aeroelinea_aereopuerto`
--
ALTER TABLE `aeroelinea_aereopuerto`
  MODIFY `id_linea_puerto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `avion`
--
ALTER TABLE `avion`
  MODIFY `id_avion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  MODIFY `id_pasajero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `pasajeros_aeroelinea`
--
ALTER TABLE `pasajeros_aeroelinea`
  MODIFY `id_pasa_aereo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `tiquetes`
--
ALTER TABLE `tiquetes`
  MODIFY `id_tiquetes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id_vuelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aereopuerto`
--
ALTER TABLE `aereopuerto`
  ADD CONSTRAINT `aereopuerto_ibfk_1` FOREIGN KEY (`fk_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `aeroelinea_aereopuerto`
--
ALTER TABLE `aeroelinea_aereopuerto`
  ADD CONSTRAINT `aeroelinea_aereopuerto_ibfk_1` FOREIGN KEY (`fk_aereolinea`) REFERENCES `aereolinea` (`id_aereolinea`),
  ADD CONSTRAINT `aeroelinea_aereopuerto_ibfk_2` FOREIGN KEY (`fk_aereopuerto`) REFERENCES `aereopuerto` (`id_aereopuerto`);

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`fk_vuelo`) REFERENCES `vuelos` (`id_vuelo`),
  ADD CONSTRAINT `bitacora_ibfk_2` FOREIGN KEY (`fk_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD CONSTRAINT `pasajero_ibfk_1` FOREIGN KEY (`fk_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `pasajeros_aeroelinea`
--
ALTER TABLE `pasajeros_aeroelinea`
  ADD CONSTRAINT `pasajeros_aeroelinea_ibfk_1` FOREIGN KEY (`fk_pasajero`) REFERENCES `pasajero` (`id_pasajero`),
  ADD CONSTRAINT `pasajeros_aeroelinea_ibfk_2` FOREIGN KEY (`fk_aereolinea`) REFERENCES `aereolinea` (`id_aereolinea`);

--
-- Filtros para la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`ciudad_origen`) REFERENCES `ciudad` (`id_ciudad`),
  ADD CONSTRAINT `ruta_ibfk_2` FOREIGN KEY (`ciudad_destino`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `tiquetes`
--
ALTER TABLE `tiquetes`
  ADD CONSTRAINT `tiquetes_ibfk_1` FOREIGN KEY (`fk_pasajero`) REFERENCES `pasajero` (`id_pasajero`),
  ADD CONSTRAINT `tiquetes_ibfk_2` FOREIGN KEY (`fk_vuelo`) REFERENCES `vuelos` (`id_vuelo`),
  ADD CONSTRAINT `tiquetes_ibfk_3` FOREIGN KEY (`fk_aereolinea`) REFERENCES `aereolinea` (`id_aereolinea`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`fk_avion`) REFERENCES `avion` (`id_avion`),
  ADD CONSTRAINT `vuelos_ibfk_2` FOREIGN KEY (`fk_ruta`) REFERENCES `ruta` (`id_ruta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
