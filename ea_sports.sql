-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2025 a las 02:04:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ea_sports`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna_barrio`
--

CREATE TABLE `comuna_barrio` (
  `id_comuna` int(11) NOT NULL,
  `comuna` varchar(45) NOT NULL,
  `barrio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comuna_barrio`
--

INSERT INTO `comuna_barrio` (`id_comuna`, `comuna`, `barrio`) VALUES
INSERT INTO `comuna` (`id_comuna`, `nombre`, `barrio`) VALUES
(1, 'Comuna 1', 'Altamira'),
(2, 'Comuna 1', 'Miraflores'),
(3, 'Comuna 2', 'El Progreso'),
(4, 'Comuna 2', 'Las Brisas'),
(5, 'Comuna 3', 'San Martín'),
(6, 'Comuna 3', 'Los Pinos'),
(7, 'Comuna 4', 'El Triunfo'),
(8, 'Comuna 4', 'Jardín Central'),
(9, 'Comuna 5', 'Santa María'),
(10, 'Comuna 5', 'Las Palmas'),
(11, 'Comuna 6', 'Altos del Norte'),
(12, 'Comuna 6', 'Campo Verde'),
(13, 'Comuna 7', 'Villa Nueva'),
(14, 'Comuna 7', 'Horizontes'),
(15, 'Comuna 8', 'San Joaquín'),
(16, 'Comuna 8', 'Portal del Sol'),
(17, 'Comuna 9', 'Nueva Esperanza'),
(18, 'Comuna 10', 'Centro Histórico'),
(19, 'Comuna 11', 'Bosques de la Villa'),
(20, 'Comuna 12', 'Colinas del Oeste');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consola`
--

CREATE TABLE `consola` (
  `id_consola` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `numero_serie` varchar(45) NOT NULL,
  `existencia_inventario` int(11) NOT NULL,
  `dir_ip` varchar(45) DEFAULT NULL,
  `dir_mac` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consola`
--

INSERT INTO `equipo_juego` (`id_equipo`, `nombre`, `horas`, `nivel`, `juego`, `id_juego`) VALUES
(1, 'Shadow Reapers', '85', 'Intermedio', 'Destiny 2', 21),
(2, 'Nova Pulse', '140', 'Avanzado', 'Warzone 2.0', 22),
(3, 'Dragon Core', '190', 'Experto', 'Tekken 8', 23),
(4, 'Silver Hawks', '70', 'Intermedio', 'Roblox', 24),
(5, 'Titan Forge', '155', 'Avanzado', 'The Division 2', 25),
(6, 'Phantom Rush', '210', 'Experto', 'Forza Horizon 5', 26),
(7, 'Frozen Vipers', '95', 'Intermedio', 'PUBG', 27),
(8, 'Crimson Wave', '180', 'Avanzado', 'Dota 2', 28),
(9, 'Storm Unit', '130', 'Avanzado', 'Battlefield V', 29),
(10, 'Gold Serpents', '115', 'Intermedio', 'Fall Guys', 30),
(11, 'Night Pulse', '205', 'Experto', 'Starfield', 31),
(12, 'Cyber Lions', '145', 'Avanzado', 'Assassin\'s Creed Mirage', 32),
(13, 'Quantum Sparks', '160', 'Avanzado', 'Gran Turismo 7', 33),
(14, 'Iron Phoenix', '75', 'Intermedio', 'Sea of Thieves', 34),
(15, 'Blue Horizon', '185', 'Avanzado', 'The Last of Us Part I', 35),
(16, 'Shadow Lynx', '100', 'Intermedio', 'Far Cry 6', 36),
(17, 'Omega Tigers', '210', 'Experto', 'God of War Ragnarök', 37),
(18, 'Flash Storm', '155', 'Avanzado', 'Street Fighter 6', 38),
(19, 'Retro Foxes', '90', 'Intermedio', 'Need for Speed Unbound', 39),
(20, 'Silent Wolves', '200', 'Experto', 'Spider-Man 2', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE `control` (
  `id_control` int(11) NOT NULL,
  `numero_serie` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `id_consola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `control`
--

INSERT INTO `control` (`id_control`, `numero_serie`, `tipo`, `id_consola`) VALUES
(1, 'CTRL-1001', 'Inalámbrico', 1),
(2, 'CTRL-1002', 'Alámbrico', 3),
(3, 'CTRL-1003', 'Inalámbrico', 5),
(4, 'CTRL-1004', 'Alámbrico', 2),
(5, 'CTRL-1005', 'Inalámbrico', 7),
(6, 'CTRL-1006', 'Alámbrico', 3),
(7, 'CTRL-1007', 'Inalámbrico', 10),
(8, 'CTRL-1008', 'Inalámbrico', 1),
(9, 'CTRL-1009', 'Alámbrico', 4),
(10, 'CTRL-1010', 'Inalámbrico', 6),
(11, 'CTRL-1011', 'Alámbrico', 8),
(12, 'CTRL-1012', 'Inalámbrico', 10),
(13, 'CTRL-1013', 'Alámbrico', 12),
(14, 'CTRL-1014', 'Inalámbrico', 14),
(15, 'CTRL-1015', 'Inalámbrico', 15),
(16, 'CTRL-1016', 'Alámbrico', 7),
(17, 'CTRL-1017', 'Inalámbrico', 18),
(18, 'CTRL-1018', 'Alámbrico', 20),
(19, 'CTRL-1019', 'Inalámbrico', 5),
(20, 'CTRL-1020', 'Inalámbrico', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_juego`
--

CREATE TABLE `equipo_juego` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `horas` varchar(45) NOT NULL,
  `nivel` varchar(45) NOT NULL,
  `juego` varchar(45) DEFAULT NULL,
  `id_juego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo_juego`
--

INSERT INTO `equipo_juego` (`id_equipo`, `nombre`, `horas`, `nivel`, `juego`, `id_juego`) VALUES
(1, 'Shadow Legends', '90', 'Intermedio', 'Fortnite', 1),
(2, 'Black Panthers', '130', 'Avanzado', 'Apex Legends', 10),
(3, 'Thunder Squad', '200', 'Experto', 'FIFA 24', 3),
(4, 'Silver Lions', '75', 'Intermedio', 'Minecraft', 4),
(5, 'Storm Breakers', '140', 'Avanzado', 'Halo Infinite', 6),
(6, 'Nova Riders', '180', 'Avanzado', 'GTA V', 12),
(7, 'Diamond Crushers', '220', 'Experto', 'Valorant', 13),
(8, 'Eternal Titans', '160', 'Avanzado', 'League of Legends', 14),
(9, 'Scarlet Phantoms', '95', 'Intermedio', 'Rainbow Six Siege', 15),
(10, 'Night Claws', '110', 'Intermedio', 'Mortal Kombat 11', 16),
(11, 'Royal Shields', '210', 'Experto', 'Elden Ring', 17),
(12, 'Cyber Wolves', '120', 'Intermedio', 'Cyberpunk 2077', 18),
(13, 'Nitro Racers', '140', 'Avanzado', 'Mario Kart 8 Deluxe', 19),
(14, 'Blaze Horizon', '70', 'Intermedio', 'Horizon Forbidden West', 20),
(15, 'Shadow Nova', '160', 'Avanzado', 'Overwatch 2', 9),
(16, 'Iron Guardians', '100', 'Intermedio', 'Call of Duty MWII', 2),
(17, 'Mystic Fighters', '175', 'Avanzado', 'Breath of the Wild', 7),
(18, 'Smash Titans', '150', 'Avanzado', 'Super Smash Bros Ultimate', 8),
(19, 'Retro Foxes', '85', 'Intermedio', 'Rocket League', 11),
(20, 'Silent Storm', '200', 'Experto', 'PlayStation Exclusive', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id_juego` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `clasificacion_ESRB` varchar(45) DEFAULT NULL,
  `estudio_dev` varchar(45) DEFAULT NULL,
  `plataformas_disponibles` varchar(45) DEFAULT NULL,
  `numero_jugadores` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `existencia_inventario` int(11) DEFAULT NULL,
  `id_plataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id_juego`, `nombre`, `clasificacion_ESRB`, `estudio_dev`, `plataformas_disponibles`, `numero_jugadores`, `tipo`, `existencia_inventario`, `id_plataforma`) VALUES
(1, 'Starfall Arena', 'T', 'Epic Games', 'PC, PS5, Xbox, Switch', '100', 'Battle Royale', 15, 1),
(2, 'Zero Strike: Frontline', 'M', 'Infinity Ward', 'PC, PS5, Xbox', '24', 'Shooter', 10, 3),
(3, 'Soccer Pro 24', 'E', 'EA Sports', 'PC, PS5, Xbox, Switch', '4', 'Deportes', 20, 2),
(4, 'CubeCraft World', 'E10+', 'Mojang', 'PC, PS5, Xbox, Switch', '8', 'Aventura', 18, 5),
(5, 'War of the Ancients', 'M', 'Santa Monica Studio', 'PS4, PS5', '1', 'Acción', 6, 1),
(6, 'Halo Reborn', 'T', '343 Industries', 'PC, Xbox', '16', 'Shooter', 7, 3),
(7, 'Legends of Hyralia', 'E10+', 'Nintendo', 'Switch', '1', 'Aventura', 9, 5),
(8, 'Super Battle Stars', 'E10+', 'Nintendo', 'Switch', '8', 'Lucha', 12, 5),
(9, 'StrikeCore 2', 'T', 'Blizzard', 'PC, PS, Xbox, Switch', '10', 'Shooter', 11, 4),
(10, 'Titan Arena', 'T', 'Respawn', 'PC, PS, Xbox, Switch', '60', 'Battle Royale', 13, 3),
(11, 'Turbo Rocket League', 'E', 'Psyonix', 'PC, PS, Xbox, Switch', '4', 'Deportes', 17, 2),
(12, 'Neon City V', 'M', 'Rockstar Games', 'PC, PS, Xbox', '30', 'Mundo Abierto', 10, 1),
(13, 'Shadowpoint', 'T', 'Riot Games', 'PC', '10', 'Shooter', 14, 6),
(14, 'Legends of Eternia', 'T', 'Riot Games', 'PC', '10', 'MOBA', 16, 6),
(15, 'Tactical Siege Ops', 'M', 'Ubisoft', 'PC, PS, Xbox', '10', 'Shooter Táctico', 8, 2),
(16, 'Ultimate Kombat X', 'M', 'NetherRealm Studios', 'PC, PS, Xbox, Switch', '2', 'Lucha', 9, 5),
(17, 'Elder Realms', 'M', 'FromSoftware', 'PC, PS, Xbox', '1', 'RPG', 5, 3),
(18, 'CyberCity 2099', 'M', 'CD Projekt Red', 'PC, PS, Xbox', '1', 'RPG', 7, 1),
(19, 'Kart Masters Deluxe', 'E', 'Nintendo', 'Switch', '4', 'Carreras', 12, 5),
(20, 'Forbidden Skies', 'T', 'Guerrilla Games', 'PS4, PS5', '1', 'Aventura', 6, 1);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logro_trofeo`
--

CREATE TABLE `logro_trofeo` (
  `id_trofeo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `puntos_req` int(11) NOT NULL,
  `id_juego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `logro_trofeo`
--

INSERT INTO `logro_trofeo` (`id_trofeo`, `nombre`, `puntos_req`, `id_juego`) VALUES
(1, 'Pionero del Camino', 50, 1),
(2, 'Cazador de Sombras', 120, 5),
(3, 'Estratega Supremo', 200, 3),
(4, 'Veterano de Batalla', 180, 8),
(5, 'Recolector Maestro', 75, 12),
(6, 'Turbo Imparable', 90, 4),
(7, 'Resistente Absoluto', 160, 7),
(8, 'Señor de la Conquista', 300, 2),
(9, 'Analista Avanzado', 110, 10),
(10, 'Destructor de Titanes', 250, 15),
(11, 'Explorador Intrépido', 60, 6),
(12, 'Fantasma Invisible', 140, 9),
(13, 'Aniquilador Supremo', 220, 14),
(14, 'Héroe Eterno', 400, 20),
(15, 'Maestro del Inventario', 130, 18),
(16, 'Señor de las Arenas', 170, 11),
(17, 'Comandante del Combate', 280, 3),
(18, 'Olfato de Acechador', 95, 19),
(19, 'Arquero Implacable', 150, 7),
(20, 'Campeón de Campeones', 350, 13);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id_plataforma`, `nombre`, `marca`) VALUES
(1, 'PlayStation Nova', 'Sony'),
(2, 'PlayStation Orion', 'Sony'),
(3, 'Xbox Titan X', 'Microsoft'),
(4, 'Xbox Prime', 'Microsoft'),
(5, 'Nintendo Switch Pro', 'Nintendo'),
(6, 'Steam Deck X', 'Valve'),
(7, 'PlayStation Legacy', 'Sony'),
(8, 'Xbox Retro 360', 'Microsoft'),
(9, 'Nintendo Motion', 'Nintendo'),
(10, 'Nintendo Ultra U', 'Nintendo'),
(11, 'PlayStation Micro', 'Sony'),
(12, 'Nintendo 3D Plus', 'Nintendo'),
(13, 'PlayStation Classic 2', 'Sony'),
(14, 'Xbox Origin', 'Microsoft'),
(15, 'Nintendo Cube X', 'Nintendo'),
(16, 'Dreamcast Neo', 'Sega'),
(17, 'Atari Flashback Max', 'Atari'),
(18, 'Oculus Quest Neo', 'Meta'),
(19, 'Steam Console Pro', 'Valve'),
(20, 'NES Ret


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion_entrenamiento`
--

CREATE TABLE `sesion_entrenamiento` (
  `id_sesion` int(11) NOT NULL,
  `fecha_agenda` datetime NOT NULL,
  `hora_ini` datetime DEFAULT NULL,
  `hora_fin` datetime DEFAULT NULL,
  `id_juego` int(11) NOT NULL,
  `arbitro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sesion_entrenamiento`
--

INSERT INTO `sesion_entrenamiento` (`id_sesion`, `fecha_agenda`, `hora_ini`, `hora_fin`, `id_juego`, `arbitro`) VALUES
(1, '2025-01-05 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 5),
(2, '2025-01-06 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 2),
(3, '2025-01-07 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 8),
(4, '2025-01-08 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 4),
(5, '2025-01-09 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 10),
(6, '2025-01-10 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(7, '2025-01-11 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 7),
(8, '2025-01-12 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 14),
(9, '2025-01-13 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 6),
(10, '2025-01-14 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 3),
(11, '2025-01-15 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 11),
(12, '2025-01-16 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 9),
(13, '2025-01-17 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 12),
(14, '2025-01-18 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 15),
(15, '2025-01-19 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 4),
(16, '2025-01-20 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 19),
(17, '2025-01-21 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 8),
(18, '2025-01-22 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 20),
(19, '2025-01-23 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 6),
(20, '2025-01-24 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`id_telefono`, `numero`, `tipo`, `id_usuario`) VALUES
(1, '3001112233', 'movil', 1),
(2, '3012223344', 'movil', 5),
(3, '3023334455', 'fijo', 3),
(4, '3034445566', 'movil', 8),
(5, '3045556677', 'movil', 12),
(6, '3056667788', 'fijo', 4),
(7, '3067778899', 'movil', 7),
(8, '3078889900', 'movil', 2),
(9, '3089990011', 'fijo', 10),
(10, '3090001122', 'movil', 15),
(11, '3101112233', 'movil', 6),
(12, '3112223344', 'fijo', 9),
(13, '3123334455', 'movil', 14),
(14, '3134445566', 'movil', 20),
(15, '3145556677', 'fijo', 18),
(16, '3156667788', 'movil', 11),
(17, '3167778899', 'movil', 3),
(18, '3178889900', 'movil', 19),
(19, '3189990011', 'fijo', 7),
(20, '3190001122', 'movil', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo`, `nombre`, `descripcion`) VALUES
(1, 'Director Genera', 'Máxima autoridad del sistema con control total'),
(2, 'Profesor', 'Encargado de impartir formación y orientar procesos'),
(3, 'Participante', 'Usuario que interviene activamente en actividades'),
(4, 'Analista de Datos', 'Procesa información y crea reportes avanzados'),
(5, 'Operador Logístico', 'Maneja procesos básicos y apoyo operativo'),
(6, 'Visitante', 'Solo puede visualizar información genera'),
(7, 'Supervisor Senior', 'Controla procedimientos y cumplimiento de normas'),
(8, 'Coordinador Principal', 'Administra áreas y gestiona equipos de trabajo'),
(9, 'Asistente Administrativo', 'Apoya tareas organizativas y documentales'),
(10, 'Entrenador Profesional', 'Forma y prepara a los usuarios en sus sesiones'),
(11, 'Técnico Especializado', 'Realiza soporte técnico y mantenimiento'),
(12, 'Soporte Técnico', 'Atiende casos de fallas y solicitudes'),
(13, 'Auditor Interno', 'Valida procesos y revisa la veracidad de datos'),
(14, 'Gestor de Proyectos', 'Planifica, organiza y ejecuta actividades'),
(15, 'Editor de Contenido', 'Actualiza y modifica material autorizado'),
(16, 'Observador', 'Solo puede visualizar informes y datos'),
(17, 'Moderador de Comunidad', 'Regula interacciones entre usuarios'),
(18, 'Ingeniero de Software', 'Implementa cambios técnicos y nuevas funciones'),
(19, 'Auxiliar', 'Brinda apoyo genera a las diferentes áreas'),
(20, 'Monitor de Actividades', 'Supervisa sesiones operativas en tiempo real');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL,
  `numero_documento` varchar(45) NOT NULL,
  `primer_nombre` varchar(45) NOT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) NOT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `direccion_domicilio` varchar(45) NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `acudiente` int(11) DEFAULT NULL,
  `id_comuna` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `tipo_documento`, `numero_documento`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `fecha_nacimiento`, `sexo`, `direccion_domicilio`, `nickname`, `clave`, `acudiente`, `id_comuna`, `id_tipo`, `id_equipo`) VALUES
(1, 'CC', '1029981123', 'Mario', 'Esteban', '', NULL, '2001-05-12 00:00:00', 'M', 'Calle 18 #10-21', 'MarEst01', 'mkpass01', 0, 1, 3, 5),
(2, 'TI', '1195547821', 'Luciana', 'Fernanda', '', NULL, '2004-09-20 00:00:00', 'F', 'Carrera 15 #6-22', 'LuciF04', 'lf0420', 0, 2, 5, 7),
(3, 'CC', '1007123945', 'Diego', 'Alonso', '', NULL, '1998-12-01 00:00:00', 'M', 'Calle 50 #20-14', 'DieA98', 'dieg123', 0, 3, 2, 10),
(4, 'CE', '900445612', 'Juliana', 'Rocio', '', NULL, '2000-04-11 00:00:00', 'F', 'Diagonal 25 #8-19', 'JuliR00', 'jr2000', 0, 4, 7, 3),
(5, 'CC', '1036654981', 'Mauricio', 'Ivan', '', NULL, '1997-07-15 00:00:00', 'M', 'Transversal 8 #30-09', 'Mauri97', 'mi9797', 0, 5, 1, 8),
(6, 'TI', '1189023344', 'Vanessa', 'Lorena', '', NULL, '2005-02-28 00:00:00', 'F', 'Calle 70 #31-20', 'VaneL05', 'vl0502', 0, 6, 4, 12),
(7, 'CC', '1015567821', 'Oscar', 'Johan', '', NULL, '1999-11-30 00:00:00', 'M', 'Calle 19 #17-38', 'OscJ99', 'oj9930', 0, 7, 6, 4),
(8, 'CC', '1006654432', 'Daniela', 'Patricia', '', NULL, '2002-06-06 00:00:00', 'F', 'Avenida 28 #12-03', 'DaniP02', 'dp2002', 0, 8, 8, 6),
(9, 'CC', '1032209876', 'Alex', 'Mauricio', '', NULL, '2001-10-01 00:00:00', 'M', 'Carrera 12 #20-40', 'AlexM01', 'am2001', 0, 9, 9, 3),
(10, 'CC', '1024412398', 'Sofia', 'Valerie', '', NULL, '2003-03-10 00:00:00', 'F', 'Calle 17 #16-21', 'SofiV03', 'sv0310', 0, 10, 10, 15),
(11, 'TI', '1191129834', 'Cristian', 'Hernan', '', NULL, '2004-08-21 00:00:00', 'M', 'Carrera 40 #10-28', 'CrisH04', 'ch2004', 0, 11, 11, 11),
(12, 'CE', '900234891', 'Mariana', 'Lucero', '', NULL, '2000-01-19 00:00:00', 'F', 'Calle 48 #9-12', 'MariL00', 'ml2000', 0, 12, 12, 9),
(13, 'CC', '1017089456', 'Adrian', 'Samuel', '', NULL, '1999-09-30 00:00:00', 'M', 'Carrera 72 #41-11', 'AdriS99', 'as9999', 0, 13, 13, 14),
(14, 'TI', '1187210983', 'Carolina', 'Jazmin', '', NULL, '2005-11-09 00:00:00', 'F', 'Calle 4 #20-10', 'CaroJ05', 'cj0505', 0, 14, 14, 20),
(15, 'CC', '1021187654', 'Ricardo', 'Miguel', '', NULL, '1998-05-22 00:00:00', 'M', 'Carrera 18 #3-11', 'RicM98', 'rm


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comuna_barrio`
--
ALTER TABLE `comuna_barrio`
  ADD PRIMARY KEY (`id_comuna`);

--
-- Indices de la tabla `consola`
--
ALTER TABLE `consola`
  ADD PRIMARY KEY (`id_consola`);

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`id_control`),
  ADD KEY `id_consola` (`id_consola`);

--
-- Indices de la tabla `equipo_juego`
--
ALTER TABLE `equipo_juego`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_juego` (`id_juego`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Indices de la tabla `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  ADD PRIMARY KEY (`id_trofeo`),
  ADD KEY `id_juego` (`id_juego`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- Indices de la tabla `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  ADD PRIMARY KEY (`id_sesion`),
  ADD KEY `id_juego` (`id_juego`),
  ADD KEY `arbitro` (`arbitro`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_telefono`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_comuna` (`id_comuna`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comuna_barrio`
--
ALTER TABLE `comuna_barrio`
  MODIFY `id_comuna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `consola`
--
ALTER TABLE `consola`
  MODIFY `id_consola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `control`
--
ALTER TABLE `control`
  MODIFY `id_control` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `equipo_juego`
--
ALTER TABLE `equipo_juego`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  MODIFY `id_trofeo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  MODIFY `id_sesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`id_consola`) REFERENCES `consola` (`id_consola`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo_juego`
--
ALTER TABLE `equipo_juego`
  ADD CONSTRAINT `equipo_juego_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id_juego`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id_plataforma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  ADD CONSTRAINT `logro_trofeo_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id_juego`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  ADD CONSTRAINT `sesion_entrenamiento_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id_juego`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sesion_entrenamiento_ibfk_2` FOREIGN KEY (`arbitro`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_comuna`) REFERENCES `comuna_barrio` (`id_comuna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuario` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_equipo`) REFERENCES `equipo_juego` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
