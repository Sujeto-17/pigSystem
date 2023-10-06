-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2023 a las 17:19:10
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `porcino`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos`
--

CREATE TABLE `alimentos` (
  `cve` int(11) NOT NULL COMMENT 'Clave del Producto',
  `nom` varchar(100) NOT NULL COMMENT 'Nombre',
  `mar` varchar(30) NOT NULL COMMENT 'Marca',
  `uni` varchar(70) NOT NULL COMMENT 'Unidad de Medida',
  `pre` varchar(70) NOT NULL COMMENT 'Precio',
  `exi` varchar(70) NOT NULL COMMENT 'Cantidad en existencia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alimentos`
--

INSERT INTO `alimentos` (`cve`, `nom`, `mar`, `uni`, `pre`, `exi`) VALUES
(1, 'Alimento de Crecimiento', 'CAMPI', '40', '1200', '20'),
(2, 'Alimento de Desarrollo', 'Purina', '40', '1300', '20'),
(3, 'Alimento de Engorda', 'API-ABA', '40', '1300', '20'),
(4, 'Alimento Iniciador', 'Alpesur', '40', '800', '20'),
(5, 'Costal de Maíz', 'MyCosecha', '20', '1200', '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `rfc` varchar(18) NOT NULL COMMENT 'RFC o CURP',
  `tp` varchar(10) NOT NULL COMMENT 'Persona o Empresa',
  `nom` varchar(100) NOT NULL COMMENT 'Nombre o Razón Social',
  `app` varchar(70) NOT NULL COMMENT 'Apellido',
  `apm` varchar(70) NOT NULL COMMENT 'Apellido Materno',
  `fn` varchar(10) NOT NULL COMMENT 'Fecha de Nacimiento',
  `gen` varchar(10) NOT NULL COMMENT 'Masculino o Femenino',
  `tel` varchar(14) NOT NULL COMMENT 'Teléfono',
  `cor` varchar(100) NOT NULL COMMENT 'Correo Electrónico',
  `ef` varchar(70) NOT NULL COMMENT 'Entidad Federativa',
  `mun` varchar(100) NOT NULL COMMENT 'Municipio',
  `dir` text NOT NULL COMMENT 'Dirección',
  `col` varchar(70) NOT NULL COMMENT 'Colonia',
  `cp` varchar(5) NOT NULL COMMENT 'Código Postal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`rfc`, `tp`, `nom`, `app`, `apm`, `fn`, `gen`, `tel`, `cor`, `ef`, `mun`, `dir`, `col`, `cp`) VALUES
('ASGTSD456GER2', 'Persona', 'Alba Leandra', 'Malo', 'Anna', '2023-02-20', 'Femenino', '(598) 451-5865', 'MaloAnna@gmail.com', 'Tabasco', 'Comalcalco', '7943 S. Fifth Street', 'Castaño', '86700'),
('BEDF441203D49', 'Empresa', 'Teófila', 'Villanueva', 'Molina', '28/04/1980', 'Femenino', '(305) 491-4988', 'VillanuevaMolina@gmail.com', 'Baja California', 'Ensenada', '8728 Boston Street', 'La Paz', '86745'),
('CAEA781129SRA', 'Persona', 'Dani', 'Quevedo', 'Baena', '', 'Masculino', '(966) 735-9451', 'quevedoBaena@hotmail.com', 'México', 'Aculco', '9334 Hillside Street', 'Mendez quintero', '87756'),
('CAGL720718000', 'Persona', 'Angelina', 'denis', 'de Arregui', '20/10/1977', 'Masculino', '(711) 282-2848', 'denisde Arregui@live.com.mx', 'México', 'Aculco', '611 Academy Street', 'San joseito', '86784'),
('CAMA821217UJ2', 'Persona', 'Samuel', 'salis', 'de Carranza', '21/02/2000', 'Femenino', '(337) 397-0627', 'salisde Carranza@gmail.com', 'Guanajato', 'Atarjea', '7201 Mill Street', 'Rodriguez ', '87456'),
('CAMQ821217JJ2', 'Persona', 'Abel', 'Villanueva', 'martinez', '04/04/1981', 'Masculino', '(904) 204-2255', 'Villanuevamartinez@gmail.com', 'Tabasco', 'Macuspana', '88 Pheasant Rd.', 'Mendez quintero', '86745'),
('CAQM871231000', 'Empresa', 'Jacinta', 'Montenegro', 'Garcés', '16/05/1999', 'Femenino', '(969) 383-4277', 'MontenegroGarcés@gmail.com', 'Veracruz', 'Acatlán', '59 Ridgewood Ave.', 'Castaño', '86723'),
('CATM771331900', 'Persona', 'Nerea', 'Alcalde', 'Solé', '19/09/1970', 'Femenino', '(616) 766-2111', 'AlcaldeSolé@hotmail.com', 'Colima', 'Colima', '840 Oak Meadow Ave.', 'San joseito', '86745'),
('CRQM871231000', 'Persona', 'Bienvenida', 'Pulido', 'Cózar', '12/06/1988', 'Femenino', '(932) 307-3409', 'PulidoCózar@gmail.com', 'Yucatán', 'Mérida', '8 Galvin Street', 'Rodriguez ', '86756'),
('CVQM871231002', 'Persona', 'Nuria Daniela', ' Jáuregui', 'Tejero', '30/10/1987', 'Femenino', '(677) 875-1069', 'JáureguiTejero@gmail.com', 'Querétaro', 'Santiago de Querétaro', '9 Military Dr.', 'Castaño', '86700'),
('DAOE771021090', 'Persona', 'Modesto', 'denis', 'de Casares', '01/07/1979', 'Masculino', '(611) 927-0572', 'denisde Casares@gmail.com', 'Campeche', 'Campeche', '8842 Old Van Dyke Ave.', 'La Paz', '87456'),
('DARL812215001', 'Persona', 'Patricio', 'Manzano', 'Pomares', '21/01/1994', 'Masculino', '(993) 960-7653', 'ManzanoPomares@gmail.com', 'Aguascalientes', 'Calvillo', '9 Marconi Road', 'San joseito', '86784'),
('DASL812215001', 'Persona', 'Patricio', 'Manzano', 'Pomares', '21/01/1994', 'Masculino', '(993) 960-7653', 'ManzanoPomares@gmail.com', 'Aguascalientes', 'Calvillo', '9 Marconi Road', 'San joseito', '86784'),
('DESL811218000', 'Persona', 'Lisandro', 'Delgado', 'Nadal', '13/03/1994', 'Masculino', '(748) 495-1748', 'DelgadoNadal@live.com.mx', 'Yucatán', 'Cuzamá', '270 West Green Lake St.', 'Castaño', '86700'),
('DESL812215001', 'Persona', 'Patricio', 'Manzano', 'Pomares', '21/01/1994', 'Masculino', '(993) 960-7653', 'ManzanoPomares@gmail.com', 'Aguascalientes', 'Calvillo', '9 Marconi Road', 'San joseito', '86784'),
('DESL812515004', 'Empresa', 'Nadia', 'Reyes', 'Bosch', '21/06/1986', 'Femenino', '(872) 458-4785', 'ReyesBosch@gmail.com', 'Distrito Federal', 'Coyoacán', '8127 Pawnee Lane', 'San joseito', '86724'),
('DI9C645130000', 'Persona', 'Lucía Manola', 'Briones', 'Jove', '22/05/1989', 'Femenino', '(651) 742-1141', 'BrionesJove@gmail.com', 'Sonora', 'Santa Ana', '810 West Mill St.', 'Mendez quintero', '86723'),
('DIEA571020000', 'Persona', 'Purificación', 'Ferrán ', 'Valero', '29/08/1986', 'Femenino', '(596) 660-5408', 'Ferrán Valero@gmail.com', 'Querétaro', 'Santiago de Querétaro', '221 Dogwood Dr.', 'La Paz', '87456'),
('DILA273020006', 'Persona', 'Trini', 'Sanabria', 'Frías', '28/09/1970', 'Femenino', '(615) 712-3381', 'SanabriaFrías@live.com.mx', 'Sonora', 'Caborca', '61 Addison Dr.', 'Buena vista', '86784'),
('DIOA571020000', 'Persona', 'Purificación', 'Ferrán ', 'Valero', '29/08/1986', 'Femenino', '(596) 660-5408', 'Ferrán Valero@gmail.com', 'Querétaro', 'Santiago de Querétaro', '221 Dogwood Dr.', 'La Paz', '87456'),
('DIOA871020000', 'Persona', 'Samanta', 'Manjón', 'Godoy', '18/04/1980', 'Femenino', '(494) 813-5651', 'ManjónGodoy@gmail.com', 'Yucatán', 'Mérida', '9481 S. Chestnut St.', 'Dominguez Ortiz', '86723'),
('DIOE771021090', 'Persona', 'Modesto', 'denis', 'de Casares', '01/07/1979', 'Masculino', '(611) 927-0572', 'denisde Casares@gmail.com', 'Campeche', 'Campeche', '8842 Old Van Dyke Ave.', 'La Paz', '87456'),
('DIQE771224090', 'Empresa', 'Mireia', 'Córdoba', 'Pier', '14/03/1997', 'Femenino', '(600) 318-8808', 'CórdobaPier@gmail.com', 'Veracruz', 'Pueblo Viejo', '7813 Helen Ave.', 'San joseito', '86745'),
('DIVC740130000', 'Empresa', 'Albano Teodosio', 'Cañete ', 'Rosa', '03/03/1980', 'Masculino', '(779) 217-3175', 'Cañete Rosa@hotmail.com', 'Yucatán', 'Celestún', '7 N. Annadale Street', 'La Paz', '86724'),
('DIYC740130009', 'Empresa', 'Berto', 'servis', ' del Morales', '13/12/1975', 'Masculino', '(283) 384-7846', 'servis del Morales@gmail.com', 'Campeche', 'Campeche', '471 S. Cambridge Drive', 'Buena vista', '86723'),
('DLQ3731926090', 'Persona', 'Toño', 'Hidalgo ', 'Blázquez', '10/12/1980', 'Masculino', '(737) 772-3449', 'Hidalgo Blázquez@gmail.com', 'Tabasco', 'Macuspana', '30 N. Park Avenue', 'Castaño', '87756'),
('DUSJ830715000', 'Persona', 'Cándida', 'Sedano', 'Jiménez', '24/11/1988', 'Femenino', '(876) 612-6879', 'SedanoJiménez@gmail.com', 'Tabasco', 'Balancan', '850 School St.', 'Dominguez Ortiz', '86784'),
('DWYC745130300', 'Persona', 'Melisa', 'Rueda', 'Rosado', '21/10/1993', 'Femenino', '(437) 406-2974', 'RuedaRosado@gmail.com', 'Distrito Federal', 'Azcapotzalco', '353 Canterbury Dr.', 'La Paz', '86756'),
('DYSL212515004', 'Persona', 'Gracia', 'Goicoechea', ' said', '03/02/1984', 'Femenino', '(685) 726-6159', 'Goicoechea said@gmail.com', 'Colima', 'Comala', '257 Pheasant Drive', 'Castaño', '86756'),
('DZSL811218000', 'Empresa', 'Anastasia', 'Pedrero ', 'Solera', '02/07/1979', 'Femenino', '(886) 929-9282', 'Pedrero Solera@gmail.com', 'Querétaro', 'Santiago de Querétaro', '8388 Pheasant Street', 'Dominguez Ortiz', '86723'),
('EBMQ826267JJ2', 'Empresa', 'Natalio', 'Pereira', 'Barrio', '28/11/1993', 'Masculino', '(517) 690-8580', 'PereiraBarrio@gmail.com', 'Aguascalientes', 'Asientos', '51 Mayfair Court', 'Rodriguez ', '86724'),
('EVMQ821217JJ2', 'Empresa', 'Evangelin', 'Font ', 'Lago', '15/04/1989', 'Femenino', '(483) 388-3044', 'Font Lago@gmail.com', 'Yucatán', 'Progreso', '176 Henry Smith Ave.', 'Buena vista', '86700'),
('FAHL800904000', 'Persona', 'Eutimio', 'Barreda', 'Cobos', '16/04/1981', 'Masculino', '(669) 791-3350', 'BarredaCobos@gmail.com', 'Guerrero', 'Tlapa', '59 Atlantic Ave.', 'Castaño', '87456'),
('FOZO770521000', 'Persona', 'Rosario', 'Yuste', 'Falcón', '09/05/1999', 'Femenino', '(642) 368-4225', 'YusteFalcón@gmail.com', 'Guerrero', 'Tuxtla', '74 Broadway', 'Dominguez Ortiz', '86756'),
('GAAY871109000', 'Empresa', 'Magdalena', 'Vilaplana', ' Esteve', '25/03/1985', 'Femenino', '(869) 720-8135', 'Vilaplana Esteve@gmail.com', 'Coahuila', 'Saltillo', 'CREWE', 'Mendez quintero', '86784'),
('GASA660703000', 'Empresa', 'Encarnacion', 'Español', 'Ocaña', '24/06/1986', 'Masculino', '(953) 901-9132', 'EspañolOcaña@gmail.com', 'Coahuila', 'Saltillo', 'MK9 3EN', 'La Paz', '87756'),
('GIBI821123000', 'Persona', 'Adelardo', 'carder', 'Novoa', '26/09/1991', 'Masculino', '(319) 633-9396', 'carderNovoa@hotmail.com', 'Campeche', 'Candelaria', '674 High Street', 'Rodriguez ', '87456'),
('GOPO510404000', 'Persona', 'Adoración', 'Rovira', 'Zabala', '12/06/1985', 'Femenino', '(731) 945-6687', 'RoviraZabala@gmail.com', 'Hidalgo', 'Apan', 'CT76 6OB', 'San joseito', '86723'),
('GOSH741015000', 'Persona', 'Ovidio', 'Lamas', 'solis', '25/10/1977', 'Masculino', '(435) 742-6743', 'Lamassolis@gmail.com', 'Veracruz', 'Coatzacoalcos', 'DUNDEE', 'La Paz', '86700'),
('GUOA860822000', 'Empresa', 'Julián', 'Reyes', 'Nogués', '09/03/2000', 'Masculino', '(684) 330-1830', 'ReyesNogués@gmail.com', 'Hidalgo', 'Actopan', '35 The Crescent', 'Buena vista', '86723'),
('HEDF860927000', 'Empresa', 'Clemente', ' Jurado', 'Adoración', '07/04/1978', 'Masculino', '(843) 248-6284', 'JuradoAdoración@gmail.com', 'Sonora', 'Arizpe', 'SE42 3UM', 'Castaño', '86700'),
('HEFN800505000', 'Empresa', 'Plácido', 'Zabala', 'Feijoo', '08/12/1976', 'Masculino', '(390) 565-9213', 'ZabalaFeijoo@gmail.com', 'Coahuila', 'Jacala', 'DONCASTER', 'Dominguez Ortiz', '86723'),
('HEGM700111000', 'Empresa', 'Abel Alex', 'Cueto', ' López', '19/01/1979', 'Masculino', '(951) 953-8812', 'Cueto López@live.com.mx', 'México', 'Acolman', '94 The Avenue', 'Mendez quintero', '87456'),
('HEGO820117000', 'Persona', 'Miguela', 'Sanmiguel', 'Paz', '07/09/1974', 'Femenino', '(516) 909-2316', 'SanmiguelPaz@live.com.mx', 'México', 'Acolman', 'BN0 6LJ', 'Rodriguez ', '86723'),
('HERL810821000', 'Persona', 'Narcisa', 'Villaverde', 'Montes', '12/04/1976', 'Femenino', '(833) 629-5357', 'VillaverdeMontes@gmail.com', 'Durango', 'Canelas', 'STOCKPORT', 'San joseito', '86700'),
('HESE770121000', 'Persona', 'Leonardo', 'Aller', 'Valero', '17/11/1998', 'Masculino', '(260) 680-9015', 'AllerValero@gmail.com', 'Tamaulipas', 'Reynosa', '96 The Green', 'La Paz', '86723'),
('HUMM640719EI7', 'Empresa', 'Javiera', 'Bartolomé', 'Torrens', '16/09/1971', 'Femenino', '(724) 882-6713', 'BartoloméTorrens@gmail.com', 'Morelos', 'Cuernavaca', 'WD65 4RB', 'Buena vista', '86724'),
('IAGC861001000', 'Persona', 'María Carmen', 'quevedo', 'de Fuster', '15/06/1992', 'Femenino', '(663) 750-6940', 'quevedode Fuster@gmail.com', 'Morelos', 'Cuernavaca', 'WAKEFIELD', 'Mendez quintero', '86756'),
('IIAM801010000', 'Persona', 'Adán', 'Fonseca', 'Marin', '28/08/1973', 'Masculino', '(325) 631-2099', 'FonsecaMarin@gmail.com', 'Nuevo León', 'Monterrey', '30 Main Road', 'Rodriguez ', '87756'),
('ISDYEF34FGE24', 'Empresa', 'Isaura Leyre', 'Avilés', 'Pelayo', '14/05/1984', 'Femenino', '(992) 564-5230', 'AvilésPelayo@live.com.mx', 'Tabasco', 'Tacoltalpa', '8094 Albany Drive', 'Buena vista', '87756'),
('JAMC840428000', 'Persona', 'Adalberto', 'denis', 'de Fabra', '16/09/1970', 'Masculino', '(594) 787-2465', 'denisde Fabra@hotmail.com', 'Nuevo León', 'Monterrey', 'NW96 2RV', 'San joseito', '86784'),
('JAME761207000', 'Empresa', 'Rosalinda ', 'Jaume', 'Romero', '23/12/1989', 'Femenino', '(720) 491-3517', 'JaumeRomero@gmail.com', 'Nuevo León', 'Monterrey', 'SHREWSBURY', 'Castaño', '87456'),
('JIGL811221000', 'Persona', 'Abigaíl ', 'Enríquez', ' Carreras', '25/07/1985', 'Femenino', '(735) 587-8913', 'Enríquez Carreras@gmail.com', 'México', 'Apaxco', '26 North Road', 'Castaño', '86723'),
('JUGY820514000', 'Empresa', 'África', ' Morcillo', 'veldras', '18/04/1987', 'Femenino', '(295) 530-5752', 'Morcilloveldras@gmail.com', 'Tabasco', 'Villahermosa', 'EC18 9MF', 'Dominguez Ortiz', '86745'),
('LASA710920000', 'Persona', 'Gilberto ', 'Cárdenas', 'Esparza', '21/02/1999', 'Masculino', '(306) 906-7975', 'CárdenasEsparza@gmail.com', 'Tabasco', 'Villahermosa', 'LLANDRINDOD WELLS', 'Castaño', '86756'),
('LEFL740825TZ4', 'Persona', 'Marisela ', 'Posada', 'Jover', '16/03/1976', 'Femenino', '(452) 597-0784', 'PosadaJover@gmail.com', 'Tabasco', 'Macuspana', '70 Green Lane', 'Dominguez Ortiz', '87756'),
('LELD890628000', 'Empresa', 'Begoña Claudia', 'Coello', 'Zabaleta', '21/05/1991', 'Femenino', '(363) 441-6561', 'CoelloZabaleta@live.com.mx', 'Zacatecas', 'Apozol', 'KA97 3AD', 'Castaño', '86784'),
('LEML790115000', 'Persona', 'Marcos ', 'Arregui ', 'Sainz', '11/05/1971', 'Masculino', '(550) 890-6346', 'Arregui Sainz@gmail.com', 'Zacatecas', 'Apozol', 'ROCHESTER', 'Dominguez Ortiz', '86723'),
('LEOF861113000', 'Empresa', 'Venceslás ', 'Sastre ', 'Peñalver', '10/04/1977', 'Femenino', '(906) 421-7305', 'Sastre Peñalver@gmail.com', 'Durango', 'Canelas', '5 Kingsway', 'La Paz', '86724'),
('LERN831206000', 'Persona', 'Febe ', 'Sastre ', 'Amaya', '03/09/1978', 'Masculino', '(977) 707-4772', 'Sastre Amaya@hotmail.com', 'Nuevo León', 'Monterrey', 'WA48 9PQ', 'Mendez quintero', '86745'),
('LFGSTRE23DER45', 'Persona', 'Lucho Andreu Amat', 'Andreu ', 'Amat', '16/04/1990', 'Masculino', '(246) 245-7306', 'Andreu Amat@live.com.mx', 'Distrito Federal', 'Cuajimalpa de Morelos', '9448 Fairfield St.', 'Dominguez Ortiz', '86724'),
('LIBC700911000', 'Persona', 'Quirino ', 'Granados ', 'Verdugo', '12/07/1980', 'Masculino', '(871) 218-8630', 'Granados Verdugo@gmail.com', 'Veracruz', 'Pueblo Viejo', 'BIRMINGHAM', 'col.rodriguez ', '86756'),
('MAGG781210000', 'Persona', 'Imelda ', 'Rodriguez', 'de Perea', '19/12/1992', 'Masculino', '(522) 326-9656', 'Rodriguezde@gmail.com', 'Coahuila', 'Pachuca de Soto', '3 Church Street', 'San joseito', '86784'),
('MALR751207000', 'Persona', 'Isidora ', 'Velasquez', 'de Crespi', '09/11/1977', 'Femenino', '(924) 599-2856', 'Velasquez@hotmail.com', 'Baja California', 'Tecate', 'CA46 0YA', 'La Paz', '86723'),
('MAMN880620000', 'Empresa', 'Balduino ', 'Martin ', ' Águila', '09/02/1980', 'Femenino', '(998) 710-2563', 'Martin  Águila@live.com.mx', 'Baja California', 'Rosarito', 'REDHILL', 'Buena vista', '86724'),
('MAOE771021092', 'Persona', 'Modesto', 'denis', 'de Casares', '01/07/1979', 'Masculino', '(611) 927-0572', 'denisde Casares@gmail.com', 'Campeche', 'Campeche', '8842 Old Van Dyke Ave.', 'La Paz', '87456'),
('MAPI831119000', 'Persona', 'Casandra ', 'Ramírez ', 'Canet', '22/10/1992', 'Masculino', '(319) 810-1693', 'Ramírez Canet@gmail.com', 'Chiapas', 'Tonalá', '2 Manchester Road', 'Castaño', '86745'),
('MATA850119000', 'Persona', 'Eustaquio ', 'Vigil', 'verdran', '18/09/1976', 'Femenino', '(794) 504-1808', 'Vigilverdran@gmail.com', 'Chiapas', 'Tonalá', 'SA65 3HD', 'Dominguez Ortiz', '86756'),
('MAVE800220LD8', 'Persona', 'Elvira ', 'valdez', 'del Espinosa', '28/03/1973', 'Masculino', '(493) 999-4390', 'valdezdel Espinosa@gmail.com', 'Tamaulipas', 'Tacoltalpa', 'DUDLEY', 'Mendez quintero', '87756'),
('MAVJ860512000', 'Persona', 'Pía ', ' Huertas ', 'Manzanares', '12/04/2000', 'Femenino', '(804) 655-0207', 'Huertas Manza@live.com.mx', 'Querétaro', 'Santiago de Querétaro', '9112 St. John’s Road', 'Rodriguez ', '86784'),
('MAZC850716000', 'Empresa', 'Alberto ', 'Salas', 'Báez', '17/02/1972', 'Masculino', '(554) 800-9842', 'SalasBáez@gmail.com', 'Durango', 'Canelas', 'WS53 7IY', 'San joseito', '87456'),
('MEAL780428FM0', 'Persona', 'Sol', 'Rosales', 'Calvo', '19/08/1991', 'Femenino', '(548) 446-1387', 'RosalesCalvo@hotmail.com', 'Tabasco', 'Cardenas', 'SOUTH WEST LONDON', 'La Paz', '86756'),
('MEAL840518000', 'Persona', 'Sanjuan', 'Guiomar', 'Folch', '07/08/1982', 'Masculino', '(517) 369-6486', 'GuiomarFolch@gmail.com', 'Chiapas', 'Tonalá', '76 South Street', 'Buena vista', '87756'),
('MOTA810616000', 'Persona', 'Nidia ', ' Pardo', 'Nuñez', '08/12/1984', 'Femenino', '(893) 798-8990', 'PardoNuñez@live.com.mx', 'Campeche', 'Calendaria', 'NR38 3VK', 'Mendez quintero', '86784'),
('MRGST34F623D4', 'Persona', 'Matías Mauricio', 'Castillo ', 'Barrera', '24/03/1990', 'Masculino', '(707) 933-2513', 'Castillo BarreraSaez@hotmail.com', 'Tamaulipas', 'Ciudad Victoria', '8143 College St.', 'La Paz', '86745'),
('MRGST34S623D2', 'Persona', 'Mauricio', 'Guijarro ', 'Castelló', '02/12/1996', 'Masculino', '(612) 325-0216', 'Guijarro Castelló@gmail.com', 'Tabasco', 'Teapa', '9893 W. Vale Ave.', 'La Paz', '86756'),
('NAAB7203024J9', 'Empresa', 'Emperatriz Sabina ', 'Pastor', 'Pedrero', '05/07/1989', 'Femenino', '(504) 719-6268', 'PastorPedrero@live.com.mx', 'Yucatán', 'Mérida', 'SHEFFIELD', 'Rodriguez ', '87456'),
('SDGFE335FCDE3', 'Empresa', 'Severo', 'Granados', 'Iglesia', '12/08/1986', 'Masculino', '(869) 771-1487', 'GranadosIglesia@gmail.com', 'Sonora', 'Nogales', '77 Lyme Street', 'Castaño', '86723'),
('SDGFE33DFCDW4', 'Persona', 'Soraya', 'Morera', 'Lago', '18/04/1987', 'Femenino', '(651) 544-1246', 'MoreraLago@hotmail.com', 'Aguascalientes', 'Aguascalientes', '9001 Creek Street', 'Mendez quintero', '86784'),
('TESC820502E14', 'Empresa', 'Trini', 'alonso', 'de Alberdi', '04/01/1987', 'Femenino', '(561) 649-7485', 'alonsode Alberdi@gmail.com', 'Tabasco', 'Jonuta', '45 Heritage Ave.', 'Buena vista', '86756'),
('VAMA001020HTXLA3', 'PERSONA', 'ALEX', 'VARGAS', 'MUÑOZ', '2000-10-20', 'MASCULINO', '9933480541', 'alexa@f', 'FEDERATIBA ', 'TABASCO', 'JOSEFA', 'CENTRO', '14421'),
('VDU35DG2D6GT2', 'Persona', 'Victoriano', 'Tapia', 'Cabanillas', '27/11/1990', 'Masculino', '(851) 782-6044', 'TapiaCabanillas@gmail.com', 'Sonora', 'Hermosillo', '57 Green Drive', 'Rodriguez ', '87456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `cor` varchar(100) NOT NULL,
  `nom` varchar(70) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `men` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Contacto';

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`cor`, `nom`, `tel`, `men`) VALUES
('s@dsa', 'dsd', 'sd', 'as'),
('julian2015.ejja@gmail.com', 'Eduardo julian julian Angel', '9933480541', 'El sistema es funcional :3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `curp` varchar(18) NOT NULL COMMENT 'CURP',
  `nom` varchar(100) NOT NULL COMMENT 'Nombre',
  `app` varchar(70) NOT NULL COMMENT 'Apellidos',
  `apm` varchar(70) NOT NULL COMMENT 'Apellido Materno',
  `fn` varchar(10) NOT NULL COMMENT 'Fecha De Nacimiento',
  `gen` varchar(10) NOT NULL COMMENT 'Masculino o Femenino',
  `tel` varchar(10) NOT NULL COMMENT 'Teléfono',
  `car` varchar(70) NOT NULL COMMENT 'Cargo',
  `area` varchar(100) NOT NULL COMMENT 'Área Asignada',
  `tur` varchar(70) NOT NULL COMMENT 'Turno',
  `he` varchar(10) NOT NULL COMMENT 'Hora de Entrada',
  `hs` varchar(10) NOT NULL COMMENT 'Hora de Salida',
  `ef` varchar(100) NOT NULL COMMENT 'Entidad Federativa',
  `mun` varchar(100) NOT NULL COMMENT 'Municipio',
  `dir` text NOT NULL COMMENT 'Dirección',
  `col` varchar(70) NOT NULL COMMENT 'Colonia',
  `cp` varchar(5) NOT NULL COMMENT 'Código Postal',
  `sal` varchar(7) NOT NULL COMMENT 'Salario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`curp`, `nom`, `app`, `apm`, `fn`, `gen`, `tel`, `car`, `area`, `tur`, `he`, `hs`, `ef`, `mun`, `dir`, `col`, `cp`, `sal`) VALUES
('FABM770222MMSJNR00', 'Leandra Anna', 'Malo', 'Alba', '', 'Femenino', '9361829485', 'Cajero', '', 'Matutino', '07:00', '13:00', 'Tabasco', 'Macuspana', 'Abasolo', 'San Joseito', '74621', '0'),
('FABN880802MMSNRD07', 'Lucho', 'Andreu', 'Amat', '28/11/1993', 'Masculino', '9361829485', 'Contabilidad', '', 'Matutino', '07:00', '13:00', 'Tabasco', 'Macuspana', 'Abasolo 1ra. Sección', 'Centro', '57401', '0'),
('FAML781110MTSLRN02', 'Severo', 'Granados', 'Iglesia', '22/05/1989', 'Masculino', '9361229484', 'Alimentador', '', 'Matutino', '07:00', '13:00', 'Tabasco', 'Macuspana', 'Abasolo', 'Arboleda', '37076', '0'),
('FEBM660131MPLRLR02', 'Mauricio', 'Guijarro', 'Castelló', '03/02/1984', 'Masculino', '9321829485', 'Alimentador', '', 'Vespertino', '13:00', '19:00', 'Tabasco', 'Macuspana', 'Adolfo López Mateos', 'Obrera', '59101', '0'),
('FELF940610MNERML05', 'Isaura Leyre', 'Avilés', 'Pelayo', '10/12/1980', 'Femenino', '9158573842', 'Alimentador', '', 'Vespertino', '13:00', '19:00', 'Tabasco', 'Macuspana', 'Alcalde Mayor', 'Fraccionamiento El Refugio', '12601', '0'),
('FEPM830815HMSRRR02', 'Teófila  Molino', 'Villanueva', 'Molina', '24/06/1986', 'Femenino', '9933578564', 'Conserje', '', 'Vespertino', '13:00', '19:00', 'Tabasco', 'Macuspana', 'Allende Bajo 2da. Sección', 'Ignacio Zaragoza (Los Ateos)', '11374', '0'),
('FERC791205MGRLMR07', 'Matías Mauricio', 'Castillo', 'Barrera', '19/09/1970', 'Masculino', '9361829053', 'Cajero', '', 'Matutino', '07:00', '13:00', 'Tabasco', 'Macuspana', 'Abasolo 2da. Sección', 'Buenos Aires', '35173', '0'),
('FESB450508HMSRNN00', 'Victoriano', 'Tapia', 'Cabanillas', '16/04/1981', 'Masculino', '2958475632', 'Conserje', '', 'Vespertino', '13:00', '19:00', 'Tabasco', 'Macuspana', 'Allende Alto 2da. Sección', 'Fraccionamiento Los Pinos II', '27410', '0'),
('FEVH760519MGRRLR09', 'Nidia', 'Saez', 'Campoy', '09/05/1999', 'Femenino', '9325647382', 'Contabilidad', '', 'Vespertino', '13:00', '19:00', 'Tabasco', 'Macuspana', 'Allende Bajo 1ra. Sección', 'Fraccionamiento PEMEX', '99337', '0'),
('FICC010724HMSGMRA0', 'Dani', 'Baena', 'Montero', '26/09/1991', 'Femenino', '9361827564', 'Cajero', '', 'Vespertino', '13:00', '19:00', 'Tabasco', 'Macuspana', 'Alto Tulijá 1ra. Sección', 'Fraccionamiento Primavera', '48439', '0'),
('FIRA840613HMCRNN14', 'Trini de Alberdi', 'Alberdi', 'Jimenez ', '25/03/1985', 'Femenino', '9321726492', 'Alimentador', '', 'Matutino', '07:00', '13:00', 'Tabasco', 'Macuspana', 'Allende Bajo 2da. Sección', 'Burócratas', '32720', '0'),
('SSSSSSSSSSSSSSSSSS', 'Sergio', 'Martinez', 'Vargas', '2001-06-20', 'Masculino', '9346286754', 'Gerente de mantenimiento', 'Limpieza', 'Matutino', '07:00', '14:00', 'Tabasco', 'Macuspana', 'Boulevard Carlos A. Madrazo', 'Indepndencia', '86709', '1200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `cve` int(11) NOT NULL COMMENT 'Clave del Estado',
  `est` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'Nombre del Estado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`cve`, `est`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Coahuila de Zaragoza'),
(6, 'Colima'),
(7, 'Chiapas'),
(8, 'Chihuahua'),
(9, 'Distrito Federal'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'México'),
(16, 'Michoacán de Ocampo'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo León'),
(20, 'Oaxaca de Juárez'),
(21, 'Puebla'),
(22, 'Querétaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz de Ignacio de la Llave'),
(31, 'Yucatán'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `rfc` varchar(13) NOT NULL COMMENT 'RFC de la persona',
  `nom` varchar(70) NOT NULL COMMENT 'Nombre de la persona',
  `ap` varchar(70) NOT NULL COMMENT 'Apellido Paterno de la persona',
  `am` varchar(70) NOT NULL COMMENT 'Apellido Materno de la persona',
  `fn` varchar(10) NOT NULL COMMENT 'Fecha de nacimiento',
  `tel` varchar(10) NOT NULL COMMENT 'Teléfono',
  `cor` varchar(70) NOT NULL COMMENT 'Correo electrónico',
  `est` varchar(70) NOT NULL COMMENT 'Entidad Federativa',
  `mun` varchar(70) NOT NULL COMMENT 'Municipio',
  `dir` text NOT NULL COMMENT 'Dirección',
  `col` varchar(70) NOT NULL COMMENT 'Colonia',
  `cp` varchar(5) NOT NULL COMMENT 'Código Postal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Datos de la persona';

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`rfc`, `nom`, `ap`, `am`, `fn`, `tel`, `cor`, `est`, `mun`, `dir`, `col`, `cp`) VALUES
('JUAE010720DS8', 'Eduardo Julián', 'Julián', 'Ángel', '20/07/2001', '9933480541', 'julian2015.ejja@gmail.com', 'Tabasco', 'Macuspana', 'Boulevard Carlos A. Madrazo', 'Independencia', '86709');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cve` int(11) NOT NULL COMMENT 'Clave de los porcinos',
  `gen` varchar(10) NOT NULL COMMENT 'Genero',
  `raza` varchar(30) NOT NULL COMMENT 'Raza del porcino',
  `fn` varchar(10) NOT NULL COMMENT 'Fecha de nacimiento',
  `peso` varchar(70) NOT NULL COMMENT 'Peso',
  `lon` varchar(70) NOT NULL COMMENT 'Longitud',
  `pre` varchar(70) NOT NULL COMMENT 'Precio',
  `sta` varchar(30) NOT NULL COMMENT 'Estado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cve`, `gen`, `raza`, `fn`, `peso`, `lon`, `pre`, `sta`) VALUES
(1, 'Macho', 'Large White', '2022-05-04', '20', '1', '4000', 'Vivo'),
(2, 'Hembra', 'Large White', '2022-05-03', '20', '10', '4500', 'Vivo'),
(3, 'Macho', 'Rosa', '2022-05-03', '10', '1', '3000', 'Vivo'),
(9, 'Macho', 'Large White', '20/12/2021', '20', '1', '4000', 'Vivo'),
(10, 'Hembra', 'Large White', '12/12/2021', '20', '1', '4500', 'Vivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `rfc` varchar(13) NOT NULL COMMENT 'RFC',
  `ras` varchar(100) NOT NULL COMMENT 'Razón Social de la empresa',
  `tel` varchar(10) NOT NULL COMMENT 'Teléfono',
  `cor` varchar(100) NOT NULL COMMENT 'Correo Electrónico',
  `des` text NOT NULL COMMENT 'Descripción del proveedor',
  `est` varchar(100) NOT NULL COMMENT 'Entidad Federativa',
  `mun` varchar(100) NOT NULL COMMENT 'Municipio',
  `dir` text NOT NULL COMMENT 'Dirección',
  `col` varchar(50) NOT NULL COMMENT 'Colonia',
  `cp` varchar(5) NOT NULL COMMENT 'Código Postal',
  `ref` text NOT NULL COMMENT 'Referencias de la ubicación'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`rfc`, `ras`, `tel`, `cor`, `des`, `est`, `mun`, `dir`, `col`, `cp`, `ref`) VALUES
('AGRA1512212C1', 'Agro y Ganadería Reyver S.A. de C.V.', '8183517515', 'Agroderia@gmail.com', 'Empresa que distribuye alimentos para los porcinos', 'Nuevo Leon', 'Linares', 'Camino a Sub. Lajas S/N', 'Ejido la Escondida', '67825', ''),
('Granjas Carro', 'Granjas Carroll de México R.L. de C.V.', '2828250476', 'GranjasCarroll@carroll.com', 'Empresa que se dedica a la venta de alimentos', 'Veracruz', 'Azteca Perote', 'Oficinas Privada de Tlalpan No. 3', 'Fraccionamiento', '91270', ''),
('GRMA728391BU5', 'GRUMA S.A.B. de C.V.', '229652459', 'GRUMA@gmail.com', 'Empresa que me surte alimentos de MaÃ­z', 'Veracruz', 'Jalpa', 'Carretera Jalapa Veracruz, Kilometro 94 Tejeria', 'Tejeria', '91697', ''),
('JUAE010720DS8', 'Alimentos de cerdos SA de CV', '9933480541', 'julian201.ejja@gmail.com', 'Alimentos de cerdos marca bachoco e insumos', 'Tabasco', 'Macuspana', 'Boulevard Carlos A. Madrazo', 'Independencia', '86709', 'Frente de Santandreu'),
('PAVA840293IU9', 'Pavanet S.A de C.V.', '4423095700', 'pavanet@pavanet.com.mx', 'Empresa dedicada a la venta de porcinos', 'Tabasco', 'Villahermosa', 'San MartÃ­n de Porres #107', 'Zona Industrial Felipe Carrillo Puerto', '76139', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `replica`
--

CREATE TABLE `replica` (
  `prueba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usu` varchar(18) NOT NULL COMMENT 'RFC O CURP',
  `pass` varchar(18) NOT NULL COMMENT 'Contraseña',
  `tipo` varchar(30) NOT NULL COMMENT 'Tipo de Usuario',
  `nom` varchar(100) NOT NULL COMMENT 'Nombre',
  `app` varchar(70) NOT NULL COMMENT 'Apellido Paterno',
  `apm` varchar(70) NOT NULL COMMENT 'Apellido Materno',
  `fn` varchar(10) NOT NULL COMMENT 'Fecha de Nacimiento',
  `gen` varchar(10) NOT NULL COMMENT 'Masculino o Femenino',
  `tel` varchar(10) NOT NULL COMMENT 'Teléfono',
  `cor` varchar(100) NOT NULL COMMENT 'Correo Electrónico',
  `ef` int(11) NOT NULL COMMENT 'Entidad Federativa',
  `mun` varchar(100) NOT NULL COMMENT 'Municipio',
  `dir` text NOT NULL COMMENT 'Dirección',
  `col` varchar(70) NOT NULL COMMENT 'Colonia',
  `cp` varchar(5) NOT NULL COMMENT 'Código Postal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Datos de inicio de sesion';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu`, `pass`, `tipo`, `nom`, `app`, `apm`, `fn`, `gen`, `tel`, `cor`, `ef`, `mun`, `dir`, `col`, `cp`) VALUES
('JUAE010720DS8', 'JUAE010720DS8', 'admin', 'Eduardo Julián', 'Julián', 'Ángel', '', 'Masculino', '9933480541', 'julian2015.ejja@gmail.com', 27, 'Macuspana', 'Boulevard Carlos A. Madrazo', 'Independencia', '86709');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `cve` int(11) NOT NULL COMMENT 'Clave Folio',
  `por` varchar(5) NOT NULL COMMENT 'Clave del porcino',
  `nom` varchar(100) NOT NULL COMMENT 'Nombre completo del cliente',
  `emp` varchar(100) NOT NULL COMMENT 'Nombre completo del empleado',
  `fc` varchar(10) NOT NULL COMMENT 'Fecha de Compra',
  `hora` varchar(10) NOT NULL COMMENT 'Hora de la compra',
  `pre` varchar(10) NOT NULL COMMENT 'Precio final'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`cve`, `por`, `nom`, `emp`, `fc`, `hora`, `pre`) VALUES
(1, '231', 'ASD', 'ASD', '2023-05-12', '19:28', 'AS'),
(2, '9', 'Alba Leandra Malo Anna', 'Leandra Anna Malo Alba', '2023-05-09', '19:41', '4500');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`cve`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`rfc`) USING BTREE;

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`curp`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`cve`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`rfc`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cve`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`rfc`);

--
-- Indices de la tabla `replica`
--
ALTER TABLE `replica`
  ADD PRIMARY KEY (`prueba`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu`),
  ADD KEY `ef` (`ef`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`cve`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `cve` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave del Producto', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `cve` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave del Estado', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cve` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave de los porcinos', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `replica`
--
ALTER TABLE `replica`
  MODIFY `prueba` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `cve` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave Folio', AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ef`) REFERENCES `estados` (`cve`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
