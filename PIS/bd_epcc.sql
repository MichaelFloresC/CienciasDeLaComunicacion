-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2018 a las 06:21:50
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_epcc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_curso`
--

CREATE TABLE `alumno_curso` (
  `alumno_curso_id` int(11) NOT NULL,
  `alumno_cursoc_alumno_id` int(11) NOT NULL,
  `alumno_curso_curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_docente`
--

CREATE TABLE `comentarios_docente` (
  `comentarios_docente_id` int(11) NOT NULL,
  `comentarios_docente_docente_id` int(11) NOT NULL,
  `comentarios_docente_alumno_id` int(11) NOT NULL,
  `comentarios_docente_comentario` longtext NOT NULL,
  `comentarios_docente_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios_docente`
--

INSERT INTO `comentarios_docente` (`comentarios_docente_id`, `comentarios_docente_docente_id`, `comentarios_docente_alumno_id`, `comentarios_docente_comentario`, `comentarios_docente_fecha`) VALUES
(2, 30, 72034061, 'wewe', '2018-07-13 01:03:35'),
(3, 72034061, 30, 'Hola', '2018-07-13 01:06:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `curso_id` int(11) NOT NULL,
  `curso_codigo` varchar(10) NOT NULL,
  `curso_descripcion` varchar(50) NOT NULL,
  `curso_malla_id` int(11) NOT NULL,
  `curso_equivalencia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`curso_id`, `curso_codigo`, `curso_descripcion`, `curso_malla_id`, `curso_equivalencia_id`) VALUES
(1, '2012SS', 'SISTEMAS DE SEGURIDAD', 2, 0),
(2, '2015SCC', 'SISTEMAS DE SEGURIDAD CRITICA', 2, 0),
(3, '2015GES', 'GESTION DE EMPRENDIMIENTO DE SOFTWARE', 2, 0),
(4, '2012SS', 'SISTEMAS DE SEGURIDAD', 2, 0),
(5, '2015SCC', 'SISTEMAS DE SEGURIDAD CRITICA', 2, 0),
(6, '2015GES', 'GESTION DE EMPRENDIMIENTO DE SOFTWARE', 2, 0),
(7, '2012SS', 'SISTEMAS DE SEGURIDAD', 2, 0),
(8, '2015SCC', 'SISTEMAS DE SEGURIDAD CRITICA', 2, 0),
(9, '2015GES', 'GESTION DE EMPRENDIMIENTO DE SOFTWARE', 2, 0),
(10, '2012SS', 'SISTEMAS DE SEGURIDAD', 5, 0),
(11, '2015SCC', 'SISTEMAS DE SEGURIDAD CRITICA', 5, 0),
(12, '2015GES', 'GESTION DE EMPRENDIMIENTO DE SOFTWARE', 5, 0),
(13, '2012SS', 'SISTEMAS DE SEGURIDAD', 6, 0),
(14, '2015SCC', 'SISTEMAS DE SEGURIDAD CRITICA', 6, 0),
(15, '2015GES', 'GESTION DE EMPRENDIMIENTO DE SOFTWARE', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_curso`
--

CREATE TABLE `docente_curso` (
  `docente_curso_id` int(11) NOT NULL,
  `docente_curso_docente_id` int(11) NOT NULL,
  `docente_curso_curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `libro_id` int(11) NOT NULL,
  `libro_codigo` varchar(20) DEFAULT NULL,
  `libro_nombre` varchar(80) NOT NULL,
  `libro_autor` varchar(50) NOT NULL,
  `libro_tipo` int(11) NOT NULL,
  `libro_pdf` longblob,
  `libro_enlace` varchar(100) DEFAULT NULL,
  `libro_estado` int(11) DEFAULT NULL,
  `libro_cantidad_disponible` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `malla_curricular`
--

CREATE TABLE `malla_curricular` (
  `malla_curricular_id` int(11) NOT NULL,
  `malla_curricular_dsc` varchar(10) NOT NULL,
  `malla_curricular_anio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `malla_curricular`
--

INSERT INTO `malla_curricular` (`malla_curricular_id`, `malla_curricular_dsc`, `malla_curricular_anio`) VALUES
(1, 'malla', 2018),
(2, 'epcc2023', 2023),
(5, 'epaa2024', 2024),
(6, 'aaaa5000', 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_promedio`
--

CREATE TABLE `nota_promedio` (
  `nota_promedio_id` int(11) NOT NULL,
  `nota_promedio_alumno_id` int(11) NOT NULL,
  `nota_promedio_semestre` int(11) NOT NULL,
  `nota_promedio_nota` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nota_promedio`
--

INSERT INTO `nota_promedio` (`nota_promedio_id`, `nota_promedio_alumno_id`, `nota_promedio_semestre`, `nota_promedio_nota`) VALUES
(1, 16, 13, '12'),
(2, 0, 1, '1'),
(3, 0, 2, '2'),
(4, 0, 2, '2'),
(7, 17, 12, '12'),
(8, 17, 2, '3'),
(9, 16, 45, '45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `persona_id` int(11) NOT NULL,
  `persona_nombres` varchar(45) NOT NULL,
  `persona_apellido1` varchar(45) NOT NULL,
  `persona_apellido2` varchar(45) NOT NULL,
  `persona_tipo_id` int(11) NOT NULL,
  `persona_dni` varchar(12) DEFAULT NULL,
  `persona_cui` varchar(10) DEFAULT NULL,
  `persona_direccion` varchar(50) DEFAULT NULL,
  `persona_email` varchar(50) DEFAULT NULL,
  `persona_telefono` varchar(12) DEFAULT NULL,
  `persona_malla` int(11) DEFAULT NULL,
  `persona_seccion` varchar(10) DEFAULT NULL,
  `persona_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`persona_id`, `persona_nombres`, `persona_apellido1`, `persona_apellido2`, `persona_tipo_id`, `persona_dni`, `persona_cui`, `persona_direccion`, `persona_email`, `persona_telefono`, `persona_malla`, `persona_seccion`, `persona_estado`) VALUES
(1, 'Luis Alberto', 'Jimenez', 'Gonzales', 1, '47695825', '20120867', 'Av Arequipa', 'luisjimgon@unsa.edu.pe', '977645852', 1, 'A', 1),
(12, 'dfghjk', 'dfghjkl', 'fghjkl', 1, NULL, 'fghjklÃ±', 'fghjklÃ±', 'fghjklÃ±', 'ghjkl', NULL, NULL, 1),
(13, 'wertyu', 'ertyuio', 'ertyuio', 2, 'rtyuiop', NULL, 'rtyuiop', 'rtyuiop', '222', NULL, NULL, 1),
(14, 'cvbnm', 'cvbnm,', 'cvbnm,', 1, NULL, '.vbnm,', ',vbnm', 'vbnm', '2333', NULL, NULL, 1),
(15, 'cvbnm', 'vbnm,', 'vbnm,', 3, NULL, NULL, 'vbn', 'vbnm,', '99999', NULL, NULL, 1),
(16, 'Luis Alberto', 'Jimenez', 'Gonzales', 1, NULL, '20123677', 'irtyu', 'rtyu', 'isdd', NULL, NULL, 1),
(17, 'Luis Alberto', 'ertyu', 'fghj', 1, NULL, 'fghj', 'jkfghjk', 'kfgh', 'lghjkl', NULL, NULL, 0),
(18, 'Michael', 'Flores', 'Conislla', 1, NULL, '2012', 'ertyuiop', 'ljk', 'r34567', NULL, NULL, 0),
(19, 'Luis Alberto', 'Jimenez', 'Gonzales', 1, NULL, '20123677', 'Av Arequipa', 'ljimenezgo@unsa.edu.pe', '992729679', NULL, NULL, 1),
(20, 'Michael Mario', 'Flores', 'Conislla', 1, NULL, '20123567', 'Characato', 'mflores@unsa.edu.pe', '996735462', NULL, NULL, 0),
(21, 'Michael Mario', 'Flores', 'Conislla', 1, NULL, '20123567', 'Characato', 'mflores@unsa.edu.pe', '996735462', NULL, NULL, 0),
(22, 'Michael Mario', 'Flores', 'Conislla', 1, NULL, '20123567', 'Characato', 'mflores@unsa.edu.pe', '996735462', NULL, NULL, 0),
(23, 'Michael Mario', 'Flores', 'Conislla', 1, NULL, '20123567', 'Characato', 'mflores@unsa.edu.pe', '996735462', NULL, NULL, 0),
(24, 'Michael Mario', 'Flores', 'Conislla', 1, NULL, '20123567', 'Characato', 'mflores@unsa.edu.pe', '996735462', NULL, NULL, 0),
(25, 'Luis Alberto', 'qwertyui', 'sdfghjk', 1, NULL, ' cvbnm', 'rtyuio', 'rtgyuio', 'ghjkl', NULL, NULL, 0),
(26, 'Luis Alberto', 'qwertyui', 'sdfghjk', 1, NULL, ' cvbnm', 'rtyuio', 'rtgyuio', 'ghjkl', NULL, NULL, 0),
(27, 'bbb', 'bbbb', 'bbb', 1, NULL, 'bbb', 'bbbb', 'bbb', 'bbb', NULL, NULL, 0),
(28, 'hola', 'hola', 'hola', 3, NULL, NULL, 'hola', 'hola', 'hola', NULL, NULL, 0),
(29, 'lolo', 'lolo', 'lolo', 1, NULL, NULL, 'lolo', 'lolo', 'lolo', NULL, NULL, 1),
(30, 'popo', 'popo', 'popo', 2, NULL, 'popo', 'popo', 'popo', 'popo', NULL, NULL, 0),
(1111111, 'Luis Albertosd', 'sdsd', 'sdsd', 1, NULL, NULL, 'sds', 'sdsd', 'sdsd', NULL, NULL, 0),
(20123677, 'Luis Alberto', 'Jimenez', 'Gonzales', 2, NULL, '20123677', 'Av Arequipa', 'fghjklÃ±', 'ghjkl', NULL, NULL, 0),
(23948932, 'JUAN', 'PARODI', 'CANO', 3, '23948932', NULL, 'La direccion va aquÃ­', 'jparodic@unsa.edu.pe', 'null', NULL, NULL, 0),
(66666666, 'aaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaaa', 1, NULL, NULL, 'aaaaaaaaaaa', 'aaaaaaa', 'aaaaaaaaaaa', NULL, NULL, 0),
(67777777, 'wewew', 'ewewe', 'ewe', 1, '67777777', NULL, 'erer', 'erer', 'erer', NULL, NULL, 0),
(72034061, 'sdsdsdsdsd', 'admsdsd', 'dsd', 3, '72034061', NULL, 'sdsd', 'sdsd', 'sdsd', NULL, NULL, 0),
(99999999, 'fgh', 'fghj', 'ghj', 2, NULL, '99999999', 'hgjk', 'gfhjk', 'hgj', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `prestamo_id` int(11) NOT NULL,
  `prestamo_libro_id` int(11) NOT NULL,
  `prestamo_persona_id` int(11) NOT NULL,
  `prestamo_fecha_entrega` timestamp NULL DEFAULT NULL,
  `prestamo_fecha_a_devolver` timestamp NULL DEFAULT NULL,
  `prestamo_fecha_devolucion` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rol_id` int(11) NOT NULL,
  `rol_descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rol_id`, `rol_descripcion`) VALUES
(1, 'Administrador'),
(2, 'Alumno'),
(3, 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_libro`
--

CREATE TABLE `tipo_libro` (
  `tipo_libro_id` int(11) NOT NULL,
  `tipo_libro_dsc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `tipo_persona_id` int(11) NOT NULL,
  `tipo_persona_dsc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`tipo_persona_id`, `tipo_persona_dsc`) VALUES
(1, 'Administrador'),
(2, 'Alumno'),
(3, 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuario_cuenta` varchar(20) NOT NULL,
  `usuario_password` varchar(100) NOT NULL,
  `usuario_rol_id` int(11) NOT NULL,
  `usuario_persona_id` int(11) NOT NULL,
  `usuario_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_cuenta`, `usuario_password`, `usuario_rol_id`, `usuario_persona_id`, `usuario_estado`) VALUES
(2, 'luis', '$2y$10$zWVCuEica0WPxqqTHn7Q2.yKYBBHOFXqcAZyP3/b8mGYGmuugLx7G', 1, 1, 0),
(3, 'admin', '$2y$10$6nN5d5beEEEPKl0B8i0n3.AWWoHW8FVmfkM94ROm8mgcbV9gd1lSC', 1, 1, 0),
(4, 'alumno', '$2y$10$6nN5d5beEEEPKl0B8i0n3.AWWoHW8FVmfkM94ROm8mgcbV9gd1lSC', 2, 1, 0),
(6, 'docente', '$2y$10$6nN5d5beEEEPKl0B8i0n3.AWWoHW8FVmfkM94ROm8mgcbV9gd1lSC', 3, 1, 0),
(9, 'bbb', '$2y$10$O94jgXbM5RMi0QFJA5d8qu31RjOa/aUCNdFM.OQ0uKYOEpk76gAhS', 1, 1, 0),
(10, 'hola', '$2y$10$GRSPmlmVIdJICvUf2QGrvei4XcU1sL3pgqdiypA2tjGIMQilr80Uq', 3, 1, 0),
(11, 'lolo', '$2y$10$yiP9rXSoTk/rpbwH04w/t.FQOJ3ZDO0Ald2fHEM3OSxXQhyuCjZZS', 1, 1, 0),
(12, 'popo', '$2y$10$Q2BbZsK4qBBnl16eAeETvegX8LC.XK8EhDadftruXQ2RugU6z4Squ', 2, 1, 0),
(13, '20123677', '$2y$10$BZKV77JpUXSkw7rzGMZGSeLLjrM05/4897E1oqFpMHcWom.DNVb4.', 2, 20123677, 0),
(14, '72034061', '$2y$10$ufgJUp6t7lPIxiPhpb/YPOP.rVgS9HEVLCoyvvz9u/sUomWO7evXq', 3, 72034061, 0),
(15, '1111111', '$2y$10$55D7L6fIx1V0gSNexJXvReBJOO.iPKX5i24t9QIL0A1LOTL1DW80q', 1, 1111111, 0),
(16, '66666666', '$2y$10$UfhawFgN1WaVLe3AQxkaeuyJnEY56N5mUJgery/FvDkJR3ImSW4Eq', 1, 66666666, 0),
(17, '67777777', '$2y$10$zlWLplJGHONk22J93TNl9eV6NpC2q4vdnXH6ulEz8Pkd2h3Ge6ngO', 1, 67777777, 0),
(18, '99999999', '$2y$10$Bnt/xm7GZLY.6idKCQAK0eV8kDYkx8lshqqPmPNv24JPnT7kN8Zty', 2, 99999999, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD PRIMARY KEY (`alumno_curso_id`),
  ADD UNIQUE KEY `alumno_curso_id_UNIQUE` (`alumno_curso_id`),
  ADD KEY `fk_alumno_curso_persona_idx` (`alumno_cursoc_alumno_id`),
  ADD KEY `fk_alumno_curso_curso_idx` (`alumno_curso_curso_id`);

--
-- Indices de la tabla `comentarios_docente`
--
ALTER TABLE `comentarios_docente`
  ADD PRIMARY KEY (`comentarios_docente_id`),
  ADD UNIQUE KEY `comentarios_docente_id_UNIQUE` (`comentarios_docente_id`),
  ADD KEY `fk_comentarios_docente_idx` (`comentarios_docente_docente_id`),
  ADD KEY `fk_comentarios_alumno_idx` (`comentarios_docente_alumno_id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`curso_id`),
  ADD UNIQUE KEY `curso_id_UNIQUE` (`curso_id`),
  ADD KEY `fk_curso_malla_idx` (`curso_malla_id`);

--
-- Indices de la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD PRIMARY KEY (`docente_curso_id`),
  ADD UNIQUE KEY `docente_curso_id_UNIQUE` (`docente_curso_id`),
  ADD KEY `fk_docente_curso_persona_idx` (`docente_curso_docente_id`),
  ADD KEY `fk_docente_curso_curso_idx` (`docente_curso_curso_id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`libro_id`),
  ADD UNIQUE KEY `libro_id_UNIQUE` (`libro_id`),
  ADD KEY `fk_libro_tipo_libro_idx` (`libro_tipo`);

--
-- Indices de la tabla `malla_curricular`
--
ALTER TABLE `malla_curricular`
  ADD PRIMARY KEY (`malla_curricular_id`),
  ADD UNIQUE KEY `malla_curricular_id_UNIQUE` (`malla_curricular_id`);

--
-- Indices de la tabla `nota_promedio`
--
ALTER TABLE `nota_promedio`
  ADD PRIMARY KEY (`nota_promedio_id`),
  ADD KEY `fk_nota_promedio_persona_idx` (`nota_promedio_alumno_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`persona_id`),
  ADD UNIQUE KEY `alumno_id_UNIQUE` (`persona_id`),
  ADD KEY `fk_persona_tipo_persona_idx` (`persona_tipo_id`),
  ADD KEY `fk_persona_malla_idx` (`persona_malla`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`prestamo_id`),
  ADD UNIQUE KEY `prestamo_id_UNIQUE` (`prestamo_id`),
  ADD KEY `fk_prestamo_libro_idx` (`prestamo_libro_id`),
  ADD KEY `fk_prestamo_persona_idx` (`prestamo_persona_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`rol_id`),
  ADD UNIQUE KEY `rol_id_UNIQUE` (`rol_id`);

--
-- Indices de la tabla `tipo_libro`
--
ALTER TABLE `tipo_libro`
  ADD PRIMARY KEY (`tipo_libro_id`),
  ADD UNIQUE KEY `tipo_libro_id_UNIQUE` (`tipo_libro_id`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`tipo_persona_id`),
  ADD UNIQUE KEY `docente_id_UNIQUE` (`tipo_persona_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `fk_usuario_alumno_idx` (`usuario_persona_id`),
  ADD KEY `fk_usuario__rol_idx` (`usuario_rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  MODIFY `alumno_curso_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios_docente`
--
ALTER TABLE `comentarios_docente`
  MODIFY `comentarios_docente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  MODIFY `docente_curso_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `malla_curricular`
--
ALTER TABLE `malla_curricular`
  MODIFY `malla_curricular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `nota_promedio`
--
ALTER TABLE `nota_promedio`
  MODIFY `nota_promedio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `prestamo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_libro`
--
ALTER TABLE `tipo_libro`
  MODIFY `tipo_libro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `tipo_persona_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_curso`
--
ALTER TABLE `alumno_curso`
  ADD CONSTRAINT `fk_alumno_curso_curso` FOREIGN KEY (`alumno_curso_curso_id`) REFERENCES `curso` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumno_curso_persona` FOREIGN KEY (`alumno_cursoc_alumno_id`) REFERENCES `persona` (`persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comentarios_docente`
--
ALTER TABLE `comentarios_docente`
  ADD CONSTRAINT `fk_comentarios_alumno` FOREIGN KEY (`comentarios_docente_alumno_id`) REFERENCES `persona` (`persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarios_docente` FOREIGN KEY (`comentarios_docente_docente_id`) REFERENCES `persona` (`persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_curso_malla` FOREIGN KEY (`curso_malla_id`) REFERENCES `malla_curricular` (`malla_curricular_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `docente_curso`
--
ALTER TABLE `docente_curso`
  ADD CONSTRAINT `fk_docente_curso_curso` FOREIGN KEY (`docente_curso_curso_id`) REFERENCES `curso` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_docente_curso_persona` FOREIGN KEY (`docente_curso_docente_id`) REFERENCES `persona` (`persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `fk_libro_tipo_libro` FOREIGN KEY (`libro_tipo`) REFERENCES `tipo_libro` (`tipo_libro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_persona_malla` FOREIGN KEY (`persona_malla`) REFERENCES `malla_curricular` (`malla_curricular_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_persona_tipo_persona` FOREIGN KEY (`persona_tipo_id`) REFERENCES `tipo_persona` (`tipo_persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `fk_prestamo_libro` FOREIGN KEY (`prestamo_libro_id`) REFERENCES `libro` (`libro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_prestamo_persona` FOREIGN KEY (`prestamo_persona_id`) REFERENCES `persona` (`persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario__rol` FOREIGN KEY (`usuario_rol_id`) REFERENCES `rol` (`rol_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_alumno` FOREIGN KEY (`usuario_persona_id`) REFERENCES `persona` (`persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
