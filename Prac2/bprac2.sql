-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2020 a las 17:21:24
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bprac2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estudiante`
--

CREATE TABLE `Estudiante` (
  `id` int(15) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Estudiante`
--

INSERT INTO `estudiante` (`id`, `nombre`, `email`) VALUES
(1, 'Carlos Rodriguez', 'carlitos@udh.edu.pe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Leccion`
--

CREATE TABLE `Leccion` (
  `numero` int(5) NOT NULL,
  `status` varchar(40) NOT NULL,
  `comentario_profesor` text DEFAULT NULL,
  `comentario_estudiantes` text DEFAULT NULL,
  `id_estudiante` int(10) NOT NULL,
  `id_programacion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `Profesor` (
  `id` int(15) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `idioma` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Profesor`
--

INSERT INTO `Profesor` (`id`, `nombre`, `idioma`) VALUES
(1, 'Daniel Huaman', 'Ingles'),
(2, 'Pedro Alcides', 'Chino'),
(3, 'Carlos Rodriguez', 'Portugues');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Programacion`
--

CREATE TABLE `Programacion` (
  `id` int(7) NOT NULL,
  `inicio` varchar(12) NOT NULL,
  `tipo` varchar(7) NOT NULL,
  `id_profesor` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Programacion`
--

INSERT INTO `Programacion` (`id`, `inicio`, `tipo`, `id_profesor`) VALUES
(1, '23/11/2020', 'normal', 1),
(2, '28/11/2020', 'premium', 2),

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Estudiante`
--
ALTER TABLE `Estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Leccion`
--
ALTER TABLE `Leccion`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Programacion`
--
ALTER TABLE `Programacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Estudiante`
--
ALTER TABLE `Estudiante`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Leccion`
--
ALTER TABLE `Leccion`
  MODIFY `numero` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Programacion`
--
ALTER TABLE `Programacion`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
