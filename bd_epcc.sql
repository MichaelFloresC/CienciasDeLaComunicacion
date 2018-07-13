-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2018 a las 20:13:08
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_promedio`
--

CREATE TABLE `nota_promedio` (
  `nota_promedio_id` int(11) NOT NULL,
  `nota_promedio_alumno_id` int(11) NOT NULL,
  `nota_promedio_semestre` varchar(20) NOT NULL,
  `nota_promedio_nota` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(11111111, 'ANTONELLA', 'CHUA', 'BERBEN', 2, NULL, '11111111', 'La direccion va aquÃ­', 'jparodic@unsa.edu.pe', '932993', NULL, NULL, 0),
(20023443, ' JOSE ALONSO', 'ARENAS', 'LAJO', 2, NULL, '20023443', 'DIREC56', 'jarenasl@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20043566, ' SONIA FATIMA', 'CCALLO', 'QUISPE', 2, NULL, '20043566', 'DIREC150', 'sccalloq@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20051144, ' LUIS GIANCARLO', 'CALLA', 'HUANCA', 2, NULL, '20051144', 'DIREC108', 'lcalla@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20061390, ' OMAR FELIX', 'ARCE', 'PAREDES', 2, NULL, '20061390', 'DIREC52', 'oarce@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20073666, ' DAVID DANIEL', 'CAHUANA', 'CONDORI', 2, NULL, '20073666', 'DIREC99', 'dcahuanaco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20082100, ' AUGUSTO MIGUEL', 'BARRIGA', 'SALAZAR', 2, NULL, '20082100', 'DIREC80', 'abarrigas@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20083432, ' WILBER HUMBERTO', 'ARROSQUIPA', 'QUISPE', 2, NULL, '20083432', 'DIREC64', 'warrosquipa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20083439, ' JOSE ISAIAS', 'CHAMBI', 'CHAMBI', 2, NULL, '20083439', 'DIREC170', 'jchambicha@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20084684, ' RENATO JESUS', 'ABARCA', 'ROJAS', 2, NULL, '20084684', 'DIREC2', 'rabarcaro@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20084703, ' JERIBAL EDSON', 'CANO', 'LAYME', 2, NULL, '20084703', 'DIREC121', 'jcanola@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20091808, ' CAROLINA DEL ROSARIO', 'ALVAREZ', 'RAMOS', 2, NULL, '20091808', 'DIREC30', 'calvarezr@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20097030, ' CESAR EDGAR', 'CHAMBI', 'HUANCACHOQUE', 2, NULL, '20097030', 'DIREC172', 'cchambih@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20097677, ' ISABEL MILAGROS', 'ALVAREZ', 'CABANA', 2, NULL, '20097677', 'DIREC26', 'ialvarezc@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20097731, ' SOLEDAD', 'AQUEPUCHO', 'CRUZ', 2, NULL, '20097731', 'DIREC47', 'saquepuchoc@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20097753, ' SHARLY ERIKA', 'ACOSTA', 'PERCA', 2, NULL, '20097753', 'DIREC8', 'sacosta@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20097775, ' FLOR DE MARIA URPI', 'CHAVEZ', 'CONDORI', 2, NULL, '20097775', 'DIREC176', 'fchavezcon@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20097832, ' SONIA', 'CASTILLO', 'OCHOCHOQUE', 2, NULL, '20097832', 'DIREC140', 'scastilloo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20100052, ' JUAN EDWIN', 'ARELA', 'CHARAHUA', 2, NULL, '20100052', 'DIREC54', 'jarelac@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20100368, ' EDWIN CESAR', 'CANAHUIRE', 'HINOJOSA', 2, NULL, '20100368', 'DIREC119', 'ecanahuire@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20101516, ' LUIS ANGEL', 'BARRIOS', 'LIPA', 2, NULL, '20101516', 'DIREC81', 'lbarriosl@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20101651, ' JOSE FRANCISCO', 'BEDREGAL', 'CACERES', 2, NULL, '20101651', 'DIREC86', 'jbedregalca@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20102506, ' YENY', 'AROCUTIPA', 'INCACUTIPA', 2, NULL, '20102506', 'DIREC60', 'yarocutipa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20102578, ' CAROL MILENA', 'CAHUAYA', 'DEL CASTILLO', 2, NULL, '20102578', 'DIREC102', 'ccahuayad@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20102600, ' ALEX SEVERO', 'ARUCUTIPA', 'QUISPE', 2, NULL, '20102600', 'DIREC65', 'aarucutipa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20102673, ' LUIS ENRIQUE', 'BENAVENTE', 'MOLLO', 2, NULL, '20102673', 'DIREC87', 'lbenaventemo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20103121, ' JULIO CESAR', 'CACERES', 'SOLIS', 2, NULL, '20103121', 'DIREC98', 'jcaceressol@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20103826, ' ERIKA ELIZABETH', 'CARDENA', 'HUAMAN', 2, NULL, '20103826', 'DIREC126', 'ecardenah@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20103984, ' LUIS CARLOS', 'CERVANTES', 'GUTIERREZ', 2, NULL, '20103984', 'DIREC162', 'lcervantesgu@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20104271, ' ROCIO RAQUEL', 'AGUILAR', 'MEDINA', 2, NULL, '20104271', 'DIREC12', 'raguilarme@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121439, ' JOSE LUIS', 'APAZA', 'EVEDOS', 2, NULL, '20121439', 'DIREC41', 'japazaev@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121696, ' CRISTHIAN LUIS', 'ANCCO', 'HALANOCCA', 2, NULL, '20121696', 'DIREC37', 'canccoh@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121712, ' MICAELA ESTEFANIA', 'BACA', 'CORNEJO', 2, NULL, '20121712', 'DIREC74', 'mbacaco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121913, ' LESTER ERICK', 'CALLI', 'MAMANI', 2, NULL, '20121913', 'DIREC112', 'lcalli@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121930, ' FREDDY EDUARDO', 'AGUILAR', 'SANCHEZ', 2, NULL, '20121930', 'DIREC13', 'faguilarsa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121945, ' MARIA MERCEDES', 'ALCA', 'MACHACA', 2, NULL, '20121945', 'DIREC16', 'malca@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121946, ' ELVIS FERNANDO', 'ALVAREZ', 'SULLCA', 2, NULL, '20121946', 'DIREC31', 'ealvarezs@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121948, ' PAMELA ANGELICA', 'CARCAMO', 'CASTANEDA', 2, NULL, '20121948', 'DIREC124', 'pcarcamo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121964, ' ANGEL IGNACIO', 'BENITO', 'VALERO', 2, NULL, '20121964', 'DIREC88', 'abenito@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121965, ' GRETHEL GUADALUPE', 'CAMA', 'PIZARRO', 2, NULL, '20121965', 'DIREC117', 'gcamapi@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20121985, ' DANIELA VICTORIA', 'AGUEDO', 'LAZO', 2, NULL, '20121985', 'DIREC10', 'daguedo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20122143, ' AYRTON FRANCO', 'ANDIA', 'HUAYHUA', 2, NULL, '20122143', 'DIREC40', 'aandiah@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20122889, ' VANESSA', 'CARRION', 'PACCO', 2, NULL, '20122889', 'DIREC136', 'vcarrion@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20123338, ' MILUSKA VANESSA', 'AUCATINCO', 'PINTO', 2, NULL, '20123338', 'DIREC69', 'maucatinco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20123677, 'as', 'as', 'as', 2, NULL, '20123677', 'as', 'as', 'as', NULL, NULL, 0),
(20123999, ' VICTOR IGOR', 'CAMPOS', 'FALCONI', 2, NULL, '20123999', 'DIREC118', 'vcamposf@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20124012, ' MARITZA MARISELA', 'CAYO', 'QUISPE', 2, NULL, '20124012', 'DIREC149', 'mcayoq@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20124013, ' DIANA', 'BOBADILLA', 'LUQUE', 2, NULL, '20124013', 'DIREC89', 'dbobadilla@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131601, ' JORGE ORLANDO', 'CHAVEZ', 'PACHECO', 2, NULL, '20131601', 'DIREC180', 'jchavezpa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131706, ' YONY JEANKARLO VLADIMIRO', 'CASTILLO', 'BARREDA', 2, NULL, '20131706', 'DIREC138', 'ycastillo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131947, ' ANGELA GIANINNA', 'CALAPUJA', 'GUEVARA', 2, NULL, '20131947', 'DIREC104', 'acalapujag@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131955, ' KRESSLY MAILYN', 'BUTILER', 'VELASQUEZ', 2, NULL, '20131955', 'DIREC95', 'kbutiler@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131956, ' CONNIE MARIANA', 'BOLANOS', 'BEGAZO', 2, NULL, '20131956', 'DIREC90', 'cbolanosbe@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131959, ' PAMELA JUDITH', 'CASTANEDA', 'TAIPE', 2, NULL, '20131959', 'DIREC137', 'pcastanedat@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131978, ' HECTOR EDUARDO', 'BARRIGA', 'NEIRA', 2, NULL, '20131978', 'DIREC79', 'hbarrigan@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131980, ' LAURIE ELIZABETH', 'ARCE', 'LEON', 2, NULL, '20131980', 'DIREC51', 'larcele@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131986, ' DEBBY ALEJANDRA', 'CCAPA', 'AQUINO', 2, NULL, '20131986', 'DIREC155', 'dccapaa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131993, ' KELLY ALLISON', 'CCARI', 'BUSTINZA', 2, NULL, '20131993', 'DIREC156', 'kccarib@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20131999, ' MARIA LUISA', 'CHAVEZ', 'HUARILLOCLLA', 2, NULL, '20131999', 'DIREC177', 'mchavezhuar@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20132016, ' ZULLY MARTHA', 'ABARCA', 'CASTRO', 2, NULL, '20132016', 'DIREC1', 'zabarca@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20132586, ' JORGE RONAL', 'CARCAUSTO', 'GOMEZ', 2, NULL, '20132586', 'DIREC125', 'jcarcaustogo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20132593, ' KATHERINE BLANCA', 'AGRAMONTE', 'APAZA', 2, NULL, '20132593', 'DIREC9', 'kagramonte@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20134012, ' DEYSY EDITH', 'ATENCIO', 'VILCARANA', 2, NULL, '20134012', 'DIREC68', 'datenciov@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20134015, ' KELY', 'CASTRO CUBA', 'CHECYA', 2, NULL, '20134015', 'DIREC142', 'kcastrocuba@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20134020, ' MINERVA', 'ALEJO', 'CHUQUITAYPE', 2, NULL, '20134020', 'DIREC18', 'malejoch@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20134031, ' LAURA JIMENA', 'APAZA', 'QUISPE', 2, NULL, '20134031', 'DIREC44', 'lapazaq@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20134039, ' CAROL GESSIRA', 'ACHAHUI', 'TAYPE', 2, NULL, '20134039', 'DIREC6', 'cachahui@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20140255, ' JOSE ALBERTO', 'ALMIRON', 'RODRIGUEZ', 2, NULL, '20140255', 'DIREC21', 'jalmironr@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141213, ' YONATHAN ESTEFAN', 'BAUTISTA', 'CARRASCO', 2, NULL, '20141213', 'DIREC82', 'ybautista@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141942, ' LAURA HILDA IRIS', 'CASTRO', 'CORIMAYA', 2, NULL, '20141942', 'DIREC144', 'lcastro@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141952, ' MELANIE DEL PILAR', 'ALARCON', 'AGUERO', 2, NULL, '20141952', 'DIREC14', 'malarcon@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141956, ' STEPHANY NAZAYDA', 'CALIZAYA', 'ORTIZ', 2, NULL, '20141956', 'DIREC106', 'scalizayao@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141964, ' JUAN ALBERTO', 'CCAMA', 'VARGAS', 2, NULL, '20141964', 'DIREC152', 'jccamav@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141969, ' GEANPIEER CARLO', 'BRAVO', 'GARCIA', 2, NULL, '20141969', 'DIREC93', 'gbravo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141974, ' ABNER EDUARDO', 'ANCALLE', 'LLALLERCO', 2, NULL, '20141974', 'DIREC36', 'aancallel@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141977, ' MARX LENIN', 'BARRETO', 'SALCEDO', 2, NULL, '20141977', 'DIREC78', 'mbarretos@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141979, ' DIEGO ARMANDO', 'CAHUANA', 'LLACHO', 2, NULL, '20141979', 'DIREC100', 'dcahuanal@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141987, ' PERLA MARIA', 'CCAMA', 'SALAZAR', 2, NULL, '20141987', 'DIREC151', 'pccamas@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20141998, ' MARIA ALEJANDRA', 'CARPIO', 'ALVARO', 2, NULL, '20141998', 'DIREC132', 'mcarpioal@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142012, ' ALEXANDRA', 'AGUILAR', 'CHURA', 2, NULL, '20142012', 'DIREC11', 'aaguilarchu@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142015, ' ANA LUCIA', 'AYBAR', 'RAMOS', 2, NULL, '20142015', 'DIREC70', 'aaybar@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142016, ' INGRID MILAGROS', 'CCANAHUIRI', 'PRIETTO', 2, NULL, '20142016', 'DIREC154', 'iccanahuiri@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142027, ' ANTHONY JAHIR', 'CARDENAS', 'BARRIONUEVO', 2, NULL, '20142027', 'DIREC127', 'acardenasb@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142599, ' BLANCA', 'ALVAREZ', 'BUENO', 2, NULL, '20142599', 'DIREC25', 'balvarez@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142600, ' SILVIA', 'AYMACHOQUE', 'CCALLA', 2, NULL, '20142600', 'DIREC73', 'saymachoquec@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142603, ' GUSTAVO', 'CALLAPINA', 'DIAZ', 2, NULL, '20142603', 'DIREC110', 'gcallapina@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20142605, ' CARLOS ALBERTO', 'APAZA', 'MENDOZA', 2, NULL, '20142605', 'DIREC42', 'capazam@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20143605, ' GLENY MILAGROS', 'ANAMURO', 'QUISPE', 2, NULL, '20143605', 'DIREC34', 'ganamuro@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20144145, ' ROSY MARY', 'CAHUANIHANCO', 'CAHUANA', 2, NULL, '20144145', 'DIREC101', 'rcahuanihanco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20144462, ' KARLA ANDREA', 'CALERO', 'GUTIERREZ', 2, NULL, '20144462', 'DIREC105', 'kcalero@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20151885, ' ROMULO', 'ANAYA', 'CHIPA', 2, NULL, '20151885', 'DIREC35', 'ranaya@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152101, ' RUBEN ALONSO', 'CAHUINA', 'QUISPE', 2, NULL, '20152101', 'DIREC103', 'rcahuinaqui@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152106, ' LUSMILA ESTEFANY', 'CCORA', 'HUILLCA', 2, NULL, '20152106', 'DIREC159', 'lccora@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152132, ' LIZBETH ESTHER', 'ALVAREZ', 'JARITA', 2, NULL, '20152132', 'DIREC29', 'lalvarezj@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152133, ' GLENYS MERCEDES', 'AMEZQUITA', 'VELAVELA', 2, NULL, '20152133', 'DIREC32', 'gamezquita@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152137, ' ERIKA ESPERANZA', 'ASTETE', 'ZAMATA', 2, NULL, '20152137', 'DIREC67', 'eastete@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152142, ' RUTH MARIA', 'BAUTISTA', 'PARICAHUA', 2, NULL, '20152142', 'DIREC85', 'rbautistap@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152144, ' JHON JHAYNOR', 'CCAMERCCOA', 'LLAIQUE', 2, NULL, '20152144', 'DIREC153', 'jccamerccoal@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152148, ' JULIO CESAR ENRIQUE', 'CATERIANO', 'DELGADO', 2, NULL, '20152148', 'DIREC146', 'jcateriano@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152155, ' YOEL ANDRES', 'CAPIA', 'GUTIERREZ', 2, NULL, '20152155', 'DIREC122', 'ycapia@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152159, ' ELIZABETH XIOMARA', 'CHALLCO', 'CORONEL', 2, NULL, '20152159', 'DIREC168', 'echallcoc@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152167, ' JOHAN ALEXIS', 'ACASIETE', 'CONZA', 2, NULL, '20152167', 'DIREC4', 'jacasietec@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152169, ' GABRIELA LUCIA', 'CALLE', 'CANASAS', 2, NULL, '20152169', 'DIREC111', 'gcalle@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152174, ' DALESKA MIRYAM', 'CARAZAS', 'RIOS', 2, NULL, '20152174', 'DIREC123', 'dcarazasr@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152176, ' JUAN CARLOS', 'CALLA', 'CHAMBI', 2, NULL, '20152176', 'DIREC107', 'jcallac@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152763, ' SUSAN ALEXANDRA', 'BAUTISTA', 'MAMANI', 2, NULL, '20152763', 'DIREC84', 'sbautistam@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152766, ' CESAR AUGUSTO', 'ARENAS', 'RODRIGUEZ', 2, NULL, '20152766', 'DIREC57', 'carenasro@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20152769, ' GIANCARLO AMERICO', 'CARPIO', 'PALACIOS', 2, NULL, '20152769', 'DIREC133', 'gcarpio@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20154352, ' PILAR LILIANA', 'ARIAS', 'RODRIGUEZ', 2, NULL, '20154352', 'DIREC58', 'pariasr@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20154353, ' JESUS GONZALO', 'CARI', 'TAPARA', 2, NULL, '20154353', 'DIREC131', 'jcarit@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20154361, ' BRENDA ESMERALDA', 'CERPA', 'JIMENEZ', 2, NULL, '20154361', 'DIREC161', 'bcerpa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20154378, ' CINDY YUDITH', 'CALLA', 'JILAPA', 2, NULL, '20154378', 'DIREC109', 'ccallaj@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20154384, ' YEYMI SUGEY', 'CARDENAS', 'ROMERO', 2, NULL, '20154384', 'DIREC130', 'ycardenas@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161473, ' JACQUELINE DARIELA', 'CAYLLAHUA', 'RODRIGUEZ', 2, NULL, '20161473', 'DIREC148', 'jcayllahuar@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161475, ' YENI', 'CHAHUAYO', 'SOSA', 2, NULL, '20161475', 'DIREC166', 'ychahuayo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161479, ' ELIOS RODRIGO', 'BORJA', 'BAUTISTA', 2, NULL, '20161479', 'DIREC91', 'eborja@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161490, ' ARLEY ANA MARIA', 'ACEITUNA', 'ALE', 2, NULL, '20161490', 'DIREC5', 'aaceituna@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161492, ' CLAUDIA ROSA', 'AYESTAS', 'PORTUGAL', 2, NULL, '20161492', 'DIREC72', 'cayestas@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161503, ' ARACELI JANET', 'ALARCON', 'VIZCARDO', 2, NULL, '20161503', 'DIREC15', 'aalarconv@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161513, ' JAMIL RICKY', 'APAZA', 'TINTAYA', 2, NULL, '20161513', 'DIREC46', 'japazati@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161514, ' SHARON KAMERON', 'CASTRO', 'PINARES', 2, NULL, '20161514', 'DIREC145', 'scastrop@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161515, ' SHARON IVONNE', 'BARREDA', 'MARTINEZ', 2, NULL, '20161515', 'DIREC76', 'sbarredam@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161522, ' JEAN CARLOS', 'CHARAGUA', 'CONDORI', 2, NULL, '20161522', 'DIREC174', 'jcharagua@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161526, ' JESSICA SONIA', 'ANDAHUA', 'CHUNGA', 2, NULL, '20161526', 'DIREC39', 'jandahuac@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20161527, ' ALMENDRA ANAIST', 'ASCUE', 'JARA', 2, NULL, '20161527', 'DIREC66', 'aascuej@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20162331, ' GABRIEL ERNESTO', 'AMEZQUITA', 'VERA', 2, NULL, '20162331', 'DIREC33', 'gamezquitav@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20162337, ' YAKIMA ALONSO', 'ALPACA', 'ROJAS', 2, NULL, '20162337', 'DIREC22', 'yalpacar@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20162338, ' BRITZ KATERIN', 'CHAMPI', 'TTITO', 2, NULL, '20162338', 'DIREC173', 'bchampit@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20162343, ' NIKOLE ROSARIO', 'CASTILLO', 'CAMA', 2, NULL, '20162343', 'DIREC139', 'ncastilloca@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20162344, ' MARILYN NORDY', 'BAUTISTA', 'CONDORI', 2, NULL, '20162344', 'DIREC83', 'mbautistac@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20162351, ' ENRIQUE PATRICIO', 'CHAVEZ', 'ORTIZ', 2, NULL, '20162351', 'DIREC179', 'echavezo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20162354, ' YSABEL ERIKA', 'ALCCAHUAMAN', 'QUISPE', 2, NULL, '20162354', 'DIREC17', 'yalccahuaman@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164309, ' BRYAN RODOLFO', 'ALVAREZ', 'ARENAS', 2, NULL, '20164309', 'DIREC24', 'balvarezar@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164313, ' MAURICIO ALONZO', 'CARRILLO', 'COAGUILA', 2, NULL, '20164313', 'DIREC135', 'mcarrilloc@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164319, ' DANA ALISON', 'BUENO', 'PASTOR', 2, NULL, '20164319', 'DIREC94', 'dbuenop@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164324, ' CARLOS LEONEL', 'CHAVEZ', 'NAVINTA', 2, NULL, '20164324', 'DIREC178', 'cchavezn@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164330, ' NIEVES YULIZA', 'CALSINA', 'LOPEZ', 2, NULL, '20164330', 'DIREC115', 'ncalsina@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164339, ' ESTRELLA DE MARIA SARAHI', 'CABREJO', 'BARRIOS', 2, NULL, '20164339', 'DIREC96', 'ecabrejo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164343, ' JOSE FERNANDO', 'CARRERA', 'MOLINA', 2, NULL, '20164343', 'DIREC134', 'jcarrera@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164348, ' CHASKA', 'CASTRO CUBA', 'VEGA', 2, NULL, '20164348', 'DIREC143', 'ccastrocuba@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20164354, ' DANNA SHESIRA', 'ANCO', 'QUILCA', 2, NULL, '20164354', 'DIREC38', 'danco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171436, ' OSCAR DANIEL', 'CARDENAS', 'CARLOSVIZA', 2, NULL, '20171436', 'DIREC128', 'ocardenas@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171448, ' VALERIA EMILY', 'ALVAREZ', 'ILASACA', 2, NULL, '20171448', 'DIREC28', 'valvarezi@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171450, ' NOHELIA NATHALY', 'CHAHUAYO', 'CARDENAS', 2, NULL, '20171450', 'DIREC165', 'nchahuayo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171451, ' CESAR AUGUSTO', 'AYBAR', 'RAMOS', 2, NULL, '20171451', 'DIREC71', 'caybarr@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171452, ' LUIS ALBERTO', 'CCUITO', 'VARGAS', 2, NULL, '20171452', 'DIREC160', 'lccuito@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171454, ' LUIS FERNANDO', 'APAZA', 'QUISPE', 2, NULL, '20171454', 'DIREC45', 'lapazaquisp@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171464, ' JUAN GONZALO', 'CANAZA', 'CUSIHUAMAN', 2, NULL, '20171464', 'DIREC120', 'jcanazac@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171465, ' RODRIGO DILVERT', 'CALLOAPAZA', 'QUICO', 2, NULL, '20171465', 'DIREC114', 'rcalloapaza@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171468, ' JESSICA LAURA', 'CAMA', 'CORDOVA', 2, NULL, '20171468', 'DIREC116', 'jcamaco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171471, ' ESTEFANY ZARAI', 'CASTILLO', 'PAREDES', 2, NULL, '20171471', 'DIREC141', 'ecastillo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171472, ' GENSI ANALI', 'CARDENAS', 'RAMIREZ', 2, NULL, '20171472', 'DIREC129', 'gcardenasr@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171474, ' XIMENA', 'ARAGON', 'CHICATA', 2, NULL, '20171474', 'DIREC50', 'xaragon@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171481, ' JUDITH LIZBETH', 'CALLO', 'ROJAS', 2, NULL, '20171481', 'DIREC113', 'jcallor@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171488, ' LIZBETH', 'ALEJO', 'LLAVE', 2, NULL, '20171488', 'DIREC19', 'lalejo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171491, ' MIJAEL FLORENCIO', 'ARQQUE', 'EUGENIO', 2, NULL, '20171491', 'DIREC63', 'marqquee@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171493, ' KEYMER PATRICIA', 'ABRIL', 'SANCHEZ', 2, NULL, '20171493', 'DIREC3', 'kabril@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20171494, ' RENATO ANDRE', 'ALIAGA', 'CHAVEZ', 2, NULL, '20171494', 'DIREC20', 'raliagach@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172764, ' ENMA THALIA', 'CHACARA', 'CONDORI', 2, NULL, '20172764', 'DIREC163', 'echacara@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172777, ' HERMELINDA', 'CHALLCO', 'CUTIRE', 2, NULL, '20172777', 'DIREC169', 'hchallco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172778, ' LILIAN', 'CHARCA', 'CCOSI', 2, NULL, '20172778', 'DIREC175', 'lcharcac@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172787, ' DANIELA ALESANDRA', 'CHAMBI', 'CRUZ', 2, NULL, '20172787', 'DIREC171', 'dchambicr@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172789, ' BETSY DAYANA', 'ARISMENDI', 'SUMARIA', 2, NULL, '20172789', 'DIREC59', 'barismendi@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172795, ' DANIELA BRENDA', 'ACOSTA', 'LAURA', 2, NULL, '20172795', 'DIREC7', 'dacosta@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172800, ' AGUSTA', 'CACERES', 'QQUECCA', 2, NULL, '20172800', 'DIREC97', 'acaceresqq@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172802, ' ANGELA MILUSKA', 'ARENAS', 'DAVILA', 2, NULL, '20172802', 'DIREC55', 'aarenasd@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20172808, ' MARCO SEBASTIAN', 'BORJA', 'CISNEROS', 2, NULL, '20172808', 'DIREC92', 'mborjaci@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174009, ' YOEL MESIAS', 'CCOPA', 'QUISPE', 2, NULL, '20174009', 'DIREC158', 'yccopa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174011, ' ALEX', 'BARRETO', 'POMA', 2, NULL, '20174011', 'DIREC77', 'abarretop@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174016, ' LEONELA KARINA', 'AQUINO', 'MAMAMI', 2, NULL, '20174016', 'DIREC48', 'laquino@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174017, ' FRANCISCO ANTONIO', 'APAZA', 'PARRA', 2, NULL, '20174017', 'DIREC43', 'fapazap@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174021, ' BRYAN SCOTT', 'CHACON', 'CHAVEZ', 2, NULL, '20174021', 'DIREC164', 'bchaconc@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174028, ' CARLOS DANIEL', 'BALDARRAGO', 'DEZA', 2, NULL, '20174028', 'DIREC75', 'cbaldarragod@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174030, ' FABRICIO SEBASTIAN', 'CHALCO', 'CHALLA', 2, NULL, '20174030', 'DIREC167', 'fchalcoc@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174033, ' VIDAL VICENTE', 'AROTAIPE', 'CHAUPI', 2, NULL, '20174033', 'DIREC62', 'varotaipe@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174035, ' ALLISON BRIGGITH', 'AQUINO', 'TICONA', 2, NULL, '20174035', 'DIREC49', 'aaquinot@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174037, ' KAREN SOFIA', 'CATUNTA', 'CAYO', 2, NULL, '20174037', 'DIREC147', 'kcatuntac@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174043, ' LUIS KLEIBER', 'CCASA', 'MELENDEZ', 2, NULL, '20174043', 'DIREC157', 'lccasa@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174044, ' JOSE MANUEL', 'AROSQUIPA', 'RODRIGO', 2, NULL, '20174044', 'DIREC61', 'jarosquiparo@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174046, ' GIOVANNA', 'ARCOS', 'PAREDES', 2, NULL, '20174046', 'DIREC53', 'garcos@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174051, ' SUJEYS YOSELYN', 'ALVARADO', 'LOPEZ', 2, NULL, '20174051', 'DIREC23', 'salvarado@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20174060, ' ARELI ESTHER', 'ALVAREZ', 'CONDE', 2, NULL, '20174060', 'DIREC27', 'aalvarezco@unsa.edu.pe', '54123456', NULL, NULL, 0),
(20204948, 'ARACELY', 'CHUA', 'BERBEN', 2, NULL, '20204948', 'La direccion va aquÃ­', 'jparodic@unsa.edu.pe', '932993', NULL, NULL, 0),
(21204948, 'ANTONELLA', 'CHUA', 'BERBEN', 2, NULL, '21204948', 'La direccion va aquÃ­', 'jparodic@unsa.edu.pe', '932993', NULL, NULL, 0),
(22222222, 'ANTONELLA', 'CHUA', 'BERBEN', 2, NULL, '22222222', 'La direccion va aquÃ­', 'jparodic@unsa.edu.pe', '932993', NULL, NULL, 0),
(23948932, 'JUAN', 'PARODI', 'CANO', 3, '23948932', NULL, 'La direccion va aquÃ­', 'jparodic@unsa.edu.pe', '993478345', NULL, NULL, 0),
(72034061, 'ADMINISTRADOR', 'ADMINISTRADOR', 'ADMINISTRADOR', 1, '72034061', NULL, '', '', '', NULL, NULL, 0);

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
(36, '72034061', '$2y$10$AIJr66Tvp8gPkRDexwkuoOmlGaOh1.Yi5P34cj63g4qYEblLuINBe', 1, 72034061, 0);

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
  MODIFY `comentarios_docente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `malla_curricular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `nota_promedio`
--
ALTER TABLE `nota_promedio`
  MODIFY `nota_promedio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

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
