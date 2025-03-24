-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/03/2025 às 20:44
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `inventario-celulares`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `celulares`
--

CREATE TABLE `celulares` (
  `id` int(30) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `modelo` varchar(40) NOT NULL,
  `armazenamento` varchar(20) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `centro-de-custo` int(20) NOT NULL,
  `imei` varchar(100) NOT NULL,
  `mac-address` varchar(20) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `conta` varchar(40) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `data_atual` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `situacao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `celulares`
--

INSERT INTO `celulares` (`id`, `usuario`, `modelo`, `armazenamento`, `ram`, `centro-de-custo`, `imei`, `mac-address`, `tipo`, `conta`, `tel`, `data_atual`, `deleted_at`, `situacao`) VALUES
(1, 'FINANCEIRO (GERAL)', 'MOTO E7 (XT2095-1)', '64 GB', '4 GB', 40200, '359925991448395', '44:1c:7f:91:03:03', 'celular', 'siemsen.financeiro@gmail.com', '(47) 99166-2944', '2024-10-22', NULL, 'Ativo'),
(2, 'JACO CORREA BRITO', 'MOTO E7 (XT2095-1)', '64 GB', '4 GB', 60100, '359925990877651', '00:b8:b6:32:58:00', 'celular', 'siemsen.compras1@gmail.com', '(47) 99180-2086', '2024-10-22', NULL, 'Ativo'),
(3, 'CONTABILIDADE (GERAL)', 'SAMSUNG GALAXY A13 (SM-A135M/DS)', '128 GB', '4 GB', 40300, '353600812433753', '90:b6:22:17:fc:ce', 'celular', 'skymsen.contabilidade1@gmail.com', '(47) 99127-1077', '2024-10-22', NULL, 'Ativo'),
(4, 'JEFERSON LUIZ ', 'SAMSUNG GALAXY A34 5G SM-A346M/DS', '256 GB', '8 GB', 60100, '358443607554193', '98:d7:42:24:1a:16', 'celular', 'siemsen.compras3@gmail.com', '(47) 99183-2384', '2024-10-22', NULL, 'Ativo'),
(5, 'FABRICIO BROCKVELD', 'SAMSUNG GALAXY A34 5G SM-A346M/DS', '256 GB', '8 GB', 50300, '358443607592748', '98:d7:42:24:38:34', 'celular', 'skymsen.marketing1@gmail.com', '(47) 99614-8040', '2024-10-22', NULL, 'Ativo'),
(6, 'BRUNA GABRIELA TRAVASSO', 'SAMSUNG GALAXY A14 SM-A145M/DS', '128 GB', '4 GB', 51200, '351004647646550', '90:b6:22:e8:75:fc', 'celular', 'siemsen.com6@gmail.com', '(47) 99261-0965', '2024-10-22', NULL, 'Ativo'),
(7, 'GABRIEL BARBEIRO ROQUE DA SILVA', 'SAMSUNG GALAXY A34 5G SM-A346M/DSN', '256 GB', '8 GB', 50300, '358443607591120', '98:d7:42:24:36:f0', 'celular', 'siemsen.com7@gmail.com', '(47) 99201-0956', '2024-10-22', NULL, 'Ativo'),
(8, 'REBIT-01', 'INSIGNIA', '32 GB', '2 GB', 30000, '', '84:e0:f4:9c:92:3b', 'tablet', '', '', '2024-10-22', NULL, 'Ativo'),
(9, 'RICHARD ARIEL KLANN', 'GALAXY A34 5G SM-A346M/DSN', '256 GB', '8 GB', 80300, '358443607566734', '98:d7:42:24:23:e2', 'celular', 'siemsen.sac1@gmail.com', '(47) 99170-0205', '2024-10-22', NULL, 'Ativo'),
(10, 'THIAGO LOMBARDI', 'GALAXY A13 SM-A135M/DS', '128 GB', '4 GB', 80300, '358155662419985', '90:b6:22:17:f2:0d', 'celular', 'siemsen.at@gmail.com', '(47) 99928-1818', '2024-10-22', NULL, 'Ativo'),
(11, 'DANIELA DE OLIVEIRA', 'GALAXY A34 5G SM-A346M/DSN', '256 GB', '8 GB', 50700, '358443607564077', '98:d7:42:24:21:ce', 'celular', 'skymsen.export5@gmail.com', '(47) 99237-2817', '2024-10-22', NULL, 'Ativo'),
(12, 'BKP - LUIZ CARLOS BERNARDINO', 'GALAXY A34 5G SM-A346M/DSN', '256 GB', '8 GB', 50700, '358443607554730', '98:d7:42:24:ia:82', 'celular', 'skymsen.export4@gmail.com', '(47) 99259-6316', '2024-10-22', NULL, 'Ativo'),
(14, 'JULIAN ROBERTO KNIHS', 'GALAXY A34 5G SM-A346M/DSN', '256 GB', '8 GB', 50700, '358444360755075', '98:d7:42:24:ia:c6', 'celular', 'skymsen.export3@gmail.com', '(47) 99183-7117', '2024-10-22', NULL, 'Ativo'),
(15, 'LUIZ CARLOS BERNARDINO', 'GALAXY A13 SM-A135M/DS', '128 GB', '4 GB', 40500, '357651715658273', '2c:15:bf:99:48:3f', 'celular', 'skymsen.export4@gmail.com', '(47) 99259-6316', '2024-10-22', NULL, 'Ativo'),
(16, 'LUCAS OLIVEIRA DE SOUSA', 'SAMSUNG GALAXY A10 SM-A105', '32 GB', '8 GB', 51400, '358692104186384', '68:7d:6b:26:79:a5', 'celular', 'siemsen.com4@gmail.com', '(47) 3211-6007', '2024-10-22', NULL, 'Ativo'),
(17, 'CONTROLE DE QUALIDADE', 'MOTO E7 (XT2095-1)', '64 GB', '4 GB', 80200, '359925993941678', '38:e3:9f:ba:bf:f3', 'celular', 'siemsen.qualidade1@gmail.com', '(47) 99180-0695', '2024-10-22', NULL, 'Ativo'),
(18, 'DAIANA MAURICI', 'SAMSUNG A34 SM-A346M/DSN', '256 GB', '8 GB', 60100, '358443607557808', '98:d7:42:24:1c:e7', 'celular', 'skymsen.compras4@gmail.com', '(47) 99282-4847', '2024-10-22', NULL, 'Ativo'),
(19, 'WASHINGTON DE MOURA INACIO', 'SAMSUNG A03 SM-A035M/DS', '64 GB', '4 GB', 30400, '354985989299403', '78:37:16:d8:21:04', 'celular', 'skymsen.manutencao03@gmail.com', '(47) 99122-1005', '2024-10-22', NULL, 'Ativo'),
(20, 'LUIS ROCHA DE BRITO', 'SAMSUNG A03 SM-A035M/DS', '64 GB', '4 GB', 30400, '354985989306190', '78:37:16:d8:26:52', 'celular', 'skymsen.manutencao02@gmail.com', '(47) 99223-7890', '2024-10-22', NULL, 'Ativo'),
(21, 'WENNEDY DA SILVA MONTEIRO', 'SAMSUNG GALAXY A14 SM-A145M/DS', '128 GB', '4 GB', 30400, '350003443620828', '64:1b:2f:03:79:39', 'celular', 'skymsen.manutencao06@gmail.com', '(47) 99235-0255', '2024-10-22', NULL, 'Ativo'),
(22, 'RESERVA MANUTENÇÃO', 'SAMSUNG GALAXY A14 SM-A145M/DS', '128 GB', '4 GB', 30400, '35003443620745', '64:1b:2f:03:76:03', 'celular', 'skymsen.manutencao04@gmail.com', '(47) 99265-2033', '2024-10-22', NULL, 'Ativo'),
(23, 'ADILTON AMARO', 'SAMSUNG GALAXY A10 SM-A105M/DS', '32 GB', '2 GB', 30400, '357289105284648', '70:fd:46:cb:cc:5c', 'celular', 'skymsen.manutencao01@gmail.com', '(47) 99267-4317', '2024-10-22', NULL, 'Ativo'),
(24, 'JEAN PAULO ALMEIDA SILVEIRA', 'SAMSUNG A14 SM-A145M/DS', '128 GB', '4 GB', 30400, '350003443616719', '64:1b:2f:03:76:03', 'celular', 'skymsen.manutencao05@gmail.com', '(47) 99265-2232', '2024-10-22', NULL, 'Ativo'),
(25, 'SOLDA-03 (LADO B) ', 'HOW 1001-G GO', '8 GB ', '1 GB', 30000, '359556091823359', '00:27:15:00:89:d1', 'tablet', '-', '-', '2024-10-22', NULL, 'Ativo'),
(26, 'MEP', 'SAMSUNG A13 SM-A135M/DS', '128 GB', '4 GB', 30300, '353600811864743', '90:b6:22:10:49:bf', 'celular', 'skymsen.mep01@gmail.com', '-', '2024-10-22', NULL, 'Ativo'),
(27, 'SAIANI WEIDGENANNT', 'SAMSUNG A14 SM-A145M/DS', '128 GB', '4 GB', 40100, '350003443223078', '64:1b:2f:00:2d:e7', 'celular', 'siemsen.seguranca1@gmail.com', '(47) 99267-1408', NULL, NULL, 'Ativo'),
(28, 'SEPARAÇÃO DE PEÇAS - 11 (ALMOXARIFADO)', 'HOW 1001-G GO', '8 GB', '1 GB', 60200, '359556091675056', '00:27:15:39:73:42', 'tablet', '', '', NULL, NULL, 'Ativo'),
(29, 'RICARDO VARGAS', 'SAMSUNG A14 SM-A145M/DS', '128 GB', '4 GB', 0, '351004647687216', '90:b6:22:ec:2d:15', 'celular', 'dalenshop17@gmail.com', '(47) 99781-5102', NULL, NULL, 'Ativo'),
(30, 'EMBALAGEM ALFREDO', 'HOW 1001-G GO', '8 GB', '1 GB', 30900, '359556091655298', '00:27:15:23:51:89', 'tablet', '', '', NULL, NULL, 'Ativo'),
(31, 'METROLOGIA', 'SAMSUNG A12 SM-A127M/DS', '64 GB ', '4 GB', 80200, '354291425348528', '60:68:4e:c9:5c:00', 'celular', 'skymsen.metrologia01@gmail.com', '(47) 99261-6459', NULL, NULL, 'Ativo'),
(32, 'BKP TI - JESSICA VILL BRETZKE', 'IPHONE 6', '128 GB', '1 GB', 51200, '354411063116702', 'd4:f4:6f:aa:2f:0c', 'celular', 'ti@siemsen.com.br (ICLOUD)', '(47) 3211-6018', NULL, NULL, 'Ativo'),
(33, 'SUEMY DOS REIS RIBEIRO', 'SAMSUNG GALAXY A25 SM-A256E/DSN', '256 GB', '8 GB', 40100, '357567918030948', '98:d7:42:82:ed:fa', 'celular', 'siemsen.rh1@gmail.com', '(47) 99137-9099', NULL, NULL, 'Ativo'),
(34, 'ROMI COSMOS CNC-06', 'HOW 1001-G GO', '8 GB', '1 GB', 30000, '359556091858355', '00:27:15:41:33:64', 'tablet', '', '', NULL, NULL, 'Ativo'),
(35, 'DEPARTAMENTO PESSOAL (PRISCILA)', 'MOTO E7 (XT2095-1)', '64 GB', '4 GB', 40100, '359925991449252', '44:1c:7f:91:9c:6f', 'celular', 'skymsen.rh2@gmail.com', '(47) 99235-5456', NULL, NULL, 'Ativo'),
(36, 'GABRIEL DE ASSIS MONTEIRO LIMA', 'GALAXY A10 SM-A105M', '32 GB', '2 GB', 50700, '358795106072591', '70:8b:b5:e4:7b:df', 'celular', 'skymsen.export2@gmail.com', '(47) 3211-6066', NULL, NULL, 'Ativo'),
(37, 'LUIZA GUEDES', 'SAMSUNG A13 SM-A135M/DS', '128 GB', '4 GB', 60100, '352967353240439', '2c:15:bf:e7:6d:1f', 'celular', 'skymsen.compras3@gmail.com', '(47) 99185-6948', NULL, NULL, 'Ativo'),
(63, 'CÉLULA SERRA FITA', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30900, '352279110995770', '9c:0e:4a:2e:50:1b', 'tablet', '', '', NULL, NULL, 'Ativo'),
(64, 'BANCADA MINI SERRAS', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30900, '352279110993650', '9c:0e:4a:2e:4f:ad', 'tablet', '', '', NULL, NULL, 'Ativo'),
(65, 'JEFERSON SANNI PEREIRA', 'PHILCO PTB10R', '32 GB', '2 GB', 30000, '352279110537093', '54:ef:92:b4:bb:56', 'tablet', '', '', NULL, NULL, 'Ativo'),
(67, 'TORNO REPUXO 02', 'PHILCO PTB10R', '32 GB', '2 GB', 30000, '352279110512047', '9c:0e:4a:29:31:71', 'tablet', '', '', NULL, NULL, 'Ativo'),
(68, ' BANCADA CORTADORES DE FRIOS', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30900, '352279110983131', '9c:0e:4a:2e:4d:d5', 'tablet', '', '', NULL, NULL, 'Ativo'),
(69, 'BANCADA BASCULANTE', 'PHILCO PTB10R', '32 GB', '2 GB', 30900, '352279110962390', '9c:0e:4a:2f:81:e7', 'tablet', '', '', NULL, NULL, 'Ativo'),
(70, 'GRAVADORA LASER', 'PHILCO PTB10R', '32 GB', '2 GB', 30000, '352279110982711', '9c:0e:4a:2e:4d:c6', 'tablet', '', '', NULL, NULL, 'Ativo'),
(71, 'BKP TI - GT - 250MA CNC-17', 'TAB PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30000, '352279110982158', '9c:0e:4a:2e:4d:ae', 'tablet', '', '', NULL, NULL, 'Ativo'),
(73, 'TT 1100 LCV-01 (PRÓXIMO A LASER YAWEI)', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30000, '352279110968694', '9c:0e:4a:2f:83:28', 'tablet', '', '', NULL, NULL, 'Ativo'),
(74, 'BANCADA PS22 LINHA-01', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30900, '352279110983032', '9c:0e:4a:2e:4d:cd', 'tablet', '', '', NULL, NULL, 'Ativo'),
(75, 'BANCADA FRITADEIRA (PRÓXIMO A CÉLULA)', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930984145807', '00:9e:ee:a0:10:df', 'tablet', '', '', NULL, NULL, 'Ativo'),
(76, 'BANCADA EXTRATORES', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930984115297', '00:9e:a0:11:f4', 'tablet', '', '', NULL, NULL, 'Ativo'),
(78, 'BANCADA FRITADEIRA (ELÉTRICA)', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930984114456', '00:9e:ee:a0:11:ad', 'tablet', '', '', NULL, NULL, 'Ativo'),
(79, 'PAINEL ELÉTRICO SERRA FITA', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930984116576', '00:9e:ee:a0:12:74', 'tablet', '', '', NULL, NULL, 'Ativo'),
(81, 'BANCADA PA-07', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930984113805', '00:9e:ee:a0:11:5f', 'tablet', '', '', NULL, NULL, 'Ativo'),
(82, 'BANCADA SERRA FITA', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930981897012', '00:9e:ee:62:c0:a2', 'tablet', '', '', NULL, NULL, 'Ativo'),
(83, 'EMBALAGEM COSMO', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930984146136', '00:9e:ee:a0:1e:00', 'tablet', '', '', NULL, NULL, 'Ativo'),
(84, 'SOLDA - 01 CEL-07 ', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930982646582', '00:9e:ee:90:9a:07', 'tablet', '', '', NULL, NULL, 'Ativo'),
(86, 'BANCADA CUTTERS', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30900, '352279110979832', '9c:0e:4a:2e:4d:4a', 'tablet', '', '', NULL, NULL, 'Ativo'),
(87, 'DOBRADEIRA 73', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984115073', '00:9e:ee:a0:11:de', 'tablet', '', '', NULL, NULL, 'Ativo'),
(88, 'BKP TI', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 40500, '352930984145906', '', 'tablet', '', '', NULL, NULL, 'Ativo'),
(89, 'NXV 1020A CNC-13', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984114373', '00:9e:ee:a0:11:98', 'tablet', '', '', NULL, NULL, 'Ativo'),
(90, 'CÉLULA AMP', 'PHILCO PTB10R', '32 GB', '2 GB', 30900, '352279110981614', '9c:0e:4a:2e:4d:95', 'tablet', '', '', NULL, NULL, 'Ativo'),
(91, 'SOLDA-01 (LADO B)', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30000, '352279111084152', '9c:0e:4a:2f:60:a8', 'tablet', '-', '-', NULL, NULL, 'Ativo'),
(92, 'LASER YAWEI - 02', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30000, '352279110983156', '9c:0e:4a:2e:4d:d9', 'tablet', '', '', NULL, NULL, 'Ativo'),
(93, 'CÉLULA FRITADEIRA', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '35293098414476', '00:9e:ee:a0:1d:78', 'tablet', '', '', NULL, NULL, 'Ativo'),
(94, 'CTX510 ECO CNC-10', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984116212', '00:9e:ee:a0:12:50', 'tablet', '', '', NULL, NULL, 'Ativo'),
(95, 'GL350M CNC-12', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984114365', '00:9e:ee:a0:11:97', 'tablet', '', '', NULL, NULL, 'Ativo'),
(96, 'GL28M CNC-08', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930982646665', '00:9e:ee:90:9a:0f', 'tablet', '', '', NULL, NULL, 'Ativo'),
(97, 'SOLDA', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 40500, '352930982021109', 'dc:35:f1:52:58:a9', 'tablet', '-', '-', NULL, NULL, 'Ativo'),
(98, 'NXV 1020A CNC-14', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984143877', '00:9e:ee:77:b8:fc', 'tablet', '', '', NULL, NULL, 'Ativo'),
(99, 'SOLDA-01 (PRÓXIMO/ROBO DE SOLDA)', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '354946065217206', '00:9e:ee:a0:17:4a', 'tablet', '', '', NULL, NULL, 'Ativo'),
(100, 'CÉLULA BASCULANTE', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '354946065182467', '00:9e:ee:a0:17:89', 'tablet', '-', '-', NULL, NULL, 'Ativo'),
(101, 'PEDRO EXPEDIÇÃO', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 50200, '354946065182418', '40:45:da:f0:b4:9c', 'tablet', '-', '-', NULL, NULL, 'Ativo'),
(102, 'CÉLULA DESCASCADORES ', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930982167811', '00:9e:ee:77:bb:eb', 'tablet', '', '', NULL, NULL, 'Ativo'),
(103, 'GT - 250MA CNC-17', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 40500, '354946065182582', 'dc:35:f1:52:60:e4', 'tablet', '', '', NULL, NULL, 'Ativo'),
(201, 'ROMI D800 CNC - 09', 'TAB PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30000, '352279110548673', '9c:0e:4a:2a:da:17', 'tablet', '', '', NULL, NULL, 'Ativo'),
(202, 'GL280M CNC-11', 'TAB PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30000, '352930982646665', '00:9e:ee:90:9a:0f', 'tablet', '', '', NULL, NULL, 'Ativo'),
(203, 'NXV1020A CNC-18', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984143877', '00:9e:ee:a0:id:1e', 'tablet', '', '', NULL, NULL, 'Ativo'),
(204, 'BKP - FURADEIRA FB-56', 'HOW 1001-G GO', '8 GB', '1 GB', 30000, '359556090713874', '00:27:15:15:98:88', 'tablet', '', '', NULL, '2024-11-05 11:28:58', 'Descartado'),
(205, 'LASER YAWEI - 01', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30000, '352279110567322', '9c:0e:4a:2a:d3:cb', 'tablet', '', '', NULL, NULL, 'Ativo'),
(206, 'DOBRADEIRA 74', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984144032', '00:9e:ee:a0:1d:2e', 'tablet', '', '', NULL, NULL, 'Ativo'),
(207, 'ALIMENTADORES USINAGEM - 02', 'SAMSUNG GALAXY A12 SM-A127M/DS', '64 GB', '4 GB', 60200, '354291425238240', '60:68:4e:c8:62:e4', 'celular', '', '', NULL, NULL, 'Ativo'),
(208, 'SEPARAÇÃO DE PEÇAS - 01 (ALMOXARIFADO)', 'SAMSUNG GALAXY A12 SM-A127M/DS', '64 GB', '4 GB', 60200, '354291425269609', '60:68:4e:c9:1e:58', 'celular', '', '', NULL, NULL, 'Ativo'),
(209, 'ALIMENTADORES USINAGEM - 01', 'LG K12 PRIME LM-X525BAW', '64 GB', '3 GB', 40500, '355496109067562', 'a0:4f:85:d2:b5:53', 'celular', '', '', NULL, NULL, 'Ativo'),
(210, 'JESSICA VILL BRETZKE', 'IPHONE 7 PLUS', '128 GB', '3 GB', 40500, '355372089620623', '48:bf:6B:cc:28:e7', 'celular', 'ti@skymsen.com (ICLOUD)', '47 3211-6018', NULL, NULL, 'Ativo'),
(211, 'SEPARAÇÃO DE PEÇAS - 08 (ALMOXARIFADO)', 'SAMSUNG GALAXY A03 SM-A035M/DS', '64 GB', '4 GB', 60200, '354985989426881', '78:37:16:d8:9c:84', 'celular', '', '', NULL, NULL, 'Ativo'),
(212, 'SEPARAÇÃO DE PEÇAS - 09 (ALMOXARIFADO)', 'SAMSUNG GALAXY A03 SM-A035M/DS', '64 GB', '4 GB', 40500, '354985989560390', '78:37:16:d9:1d:bd', 'celular', '', '', NULL, NULL, 'Ativo'),
(213, 'BKP TI - JOSE CLERICE (EXPEDIÇÃO)', 'IPHONE 7', '128 GB', '2 GB', 40500, '359209071337921', 'b8:53:ac:27:75:04', 'celular', '', '', NULL, NULL, 'Ativo'),
(214, 'CÉLULA PICADORES', 'PHILCO PTB10RSG 3G', '32 GB', '2 GB', 30900, '352279110771494', '9c:0e:4a:2b:c4:c7', 'tablet', '', '', NULL, NULL, 'Ativo'),
(215, 'CÉLULA LIQUIDIFICADORES', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30900, '352930982167878', '00:9e:ee:77:bb:f1', 'tablet', '', '', NULL, NULL, 'Ativo'),
(216, 'CÉLULA PROCESSADORES PA-07', 'PHILCO PTB10R', '32 GB', '2 GB', 30900, '352279110965633', '9c:0e:4a:2f:82:87', 'tablet', '', '', NULL, NULL, 'Ativo'),
(217, 'CÉLULA EXTRATORES', 'PHILCO PTB10R', '32 GB', '2 GB', 30900, '352279110513268', '9c:0e:4a:29:f5:36', 'tablet', '', '', NULL, NULL, 'Ativo'),
(218, 'DOBRADEIRA AMADA', 'PHILCO PTB10R', '32 GB', '2 GB', 30000, '352279110788043', '9c:0e:4a:2b:d0:60', 'tablet', '', '', NULL, NULL, 'Ativo'),
(219, 'SEPARAÇÃO DE PEÇAS - 02 (ALMOXARIFADO)', 'GALAXY A10 SM-A105M', '32 GB', '2 GB', 40500, '358692102248855', '68:7d:6b:14:bc:51', 'celular', '-', '-', NULL, NULL, 'Ativo'),
(220, 'SEPARAÇÃO DE PEÇAS - 03 (ALMOXARIFADO)', 'MOTO E7 (XT2095-1)', '64 GB', '4 GB', 60200, '359925992221270', '0c:ec:8d:63:5c:22', 'celular', '-', '-', NULL, NULL, 'Ativo'),
(221, 'SEPARAÇÃO DE PEÇAS - 04 (ALMOXARIFADO)', 'SAMSUNG GALAXY A10 SM-A105M', '32 GB', '2 GB', 60200, '358692104280377', '68:7d:6b:27:cb:61', 'celular', '-', '-', NULL, NULL, 'Ativo'),
(222, 'SEPARAÇÃO DE PEÇAS - 05 (ALMOXARIFADO)', 'SAMSUNG GALAXY A10 SM-A105M', '32 GB', '2 GB', 60200, '358795106296919', '7c:8b:b5:e7:0f:c1', 'celular', '-', '-', NULL, NULL, 'Ativo'),
(223, 'SEPARAÇÃO DE PEÇAS - 06 (ALMOXARIFADO)', 'SAMSUNG GALAXY A10 SM-A105M', '32 GB ', '2 GB', 60200, '358692105345229', '68:7d:6b:34:fd:87', 'celular', '-', '-', NULL, NULL, 'Ativo'),
(224, 'SOLDA-02 CEL-21 (PRÓXIMO/ROBO DE SOLDA)', 'PHILCO PTB10R', '32 GB', '2 GB', 50200, '352279110962093', '9c:0e:4a:2f:81:cd', 'tablet', '-', '-', NULL, NULL, 'Ativo'),
(225, 'BKP - GUSTAVO PAULO FEIX', 'PHILCO PTB10R', '32 GB', '2 GB', 50200, '3522791105449080', '9c:0e:4a:29:cc:6f', 'tablet', '-', '-', NULL, NULL, 'Ativo'),
(226, 'SOLDA-02 (LADO B)', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984143646', '00:9e:ee:a0:1d:07', 'tablet', '-', '-', NULL, NULL, 'Ativo'),
(227, 'SOLDA-03 (LADO B)', 'HOW 1001-G GO', '8 GB', '1 GB', 30200, '359556090249358', '00:27:15:72:51:52', 'tablet', '-', '-', NULL, '2025-02-13 10:26:30', 'Ativo'),
(228, 'CHEFIAS PRODUÇÃO', 'SAMSUNG GALAXY A10 SM-A105M', '32 GB', '2 GB', 30000, '358692104374733', '68:7d:6b:28:15:a8', 'celular', 'siemsen.pro@gmail.com', '(47) 99250-3527', NULL, NULL, 'Ativo'),
(229, 'ALIMENTADORES USINAGEM - 03', 'SAMSUNG GALAXY A10 SM-A105M', '32 GB', '2 GB', 30000, '358692104376142', '68:7d:6b:28:16:c3', 'celular', 'siemsen.pro@gmail.com', '(47) 99254-6390', NULL, NULL, 'Ativo'),
(230, 'JABSON DO ROSARIO DA PAZ', 'MOTO E7 (XT2095-1)', '64 GB', '4 GB', 60200, '359925992224910', '0c:ec:8d:63:6a:19', 'celular', 'siemsen.almox1@gmail.com', '(47) 99132-0386', NULL, NULL, 'Ativo'),
(231, 'ASSISTENCIA TECNICA (EXTERNO)', 'SAMSUNG A25 5G SM-A256E/DSN', '256 GB', '8 GB', 80300, '357567917952142', '98:d7:42:81:07:ae', 'celular', 'siemsen.at3@gmail.com', '(47) 99173-4465', NULL, NULL, 'Ativo'),
(232, 'DOBRADEIRA 75', 'POSITIVO TAB Q10 - T2040', '64 GB', '2 GB', 30000, '352930982967434', '00:9e:ee:c2:b5:82', 'tablet', '', '', NULL, NULL, 'Ativo'),
(233, 'HALISON SCOZ', 'SAMSUNG A25 5G SM-A256E/DSN', '256 GB', '8 GB', 50700, '357567917951623', '98:d7:42:81:07:46', 'celular', 'skymsen.export6@gmail.com', '(47) 99115-8949', NULL, NULL, 'Ativo'),
(234, 'SEPARAÇÃO DE PEÇAS - 07 (ALMOXARIFADO)', 'SAMSUNG A10 SM-A105M', '32 GB', '2 GB', 60200, '357289105290421', '70:fd:46:cb:d0:e0', 'celular', '', '', NULL, NULL, 'Ativo'),
(235, 'FABRICIO MPA', 'IPHONE 7', '32 GB', '2 GB', 50300, '355314088299520', 'DC:A9:04:15:72:67', 'celular', 'ti@siemsen.com.br', '(47) 99163-7259', NULL, NULL, 'Ativo'),
(236, 'FABRICIO MARKETPLACE', 'SAMSUNG A25 5G SM-A256E/DSN', '256 GB', '8 GB', 50300, '357567917945567', '98:d7:42:81:02:8a', 'celular', 'skymsen.marketing02@gmail.com', '47 99214-2126', NULL, NULL, 'Ativo'),
(237, 'BKP TI - ANTONIO CARLOS CORREA', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 40500, '352930982945828', '00:9e:ee:65:9d:e5', 'tablet', '', '', NULL, NULL, 'Ativo'),
(238, 'ANTONIO CARLOS CORREA', 'TAB Q10 POSITIVO - T2040', '64 GB', '2 GB', 50200, '352930982242184', '00:9e:ee:91:3c:ec', 'tablet', '', '', NULL, NULL, 'Ativo'),
(239, 'SEPARAÇÃO DE PEÇAS - 10 (ALMOXARIFADO)', 'PHILCO PTB10R', '32 GB', '2 GB', 60200, '352279110798984', '9c:0e:4a:2c:b3:5b', 'tablet', '', '', NULL, NULL, 'Ativo'),
(240, 'CÉLULA SOLDA', 'TAB Q10 POSITIVO - T2040', '64 GB', '2 GB', 30300, '352930982242176', '00:9e:ee:91:3c:eb', 'tablet', '', '', NULL, NULL, 'Ativo'),
(241, 'ARTUR HEMMEL', 'SAMSUNG GALAXY A10 SM-A105M', '32 GB', '2 GB', 50200, '357289103977763', '70:fd:46:ba:5d:38', 'celular', 'skymsen.expedicao2@gmail.com', '47 3211-6055', NULL, NULL, 'Ativo'),
(242, 'MONTAGEM APOIO', 'PHILCO PTB10R', '32 GB', '2 GB', 30900, '352279110550096', '9c:0e:4a:2a:09:a0', 'tablet', '', '', NULL, NULL, 'Ativo'),
(243, 'SOLDA', 'TAB Q10 POSITIVO', '64 GB', '2 GB', 30000, '352930984143646', '00:9e:ee:a0:1d:07', 'tablet', '', '', NULL, NULL, 'Ativo'),
(244, 'PRODUÇÃO FUNILÁRIA', 'TAB Q10 POSITIVO - T2040', '64 GB', '2 GB', 30000, '352930982967475', '00:9e:ee:c2:b5:86', 'tablet', '', '', NULL, NULL, 'Ativo'),
(245, 'FABIO FRANCO', 'SAMSUNG A34 5G SM-A346M/DSN', '256 GB', '8 GB', 51503, '358443606262095', '90:b6:22:83:71:1d', 'celular', 'siemsen.com8@gmail.com', '(47) 99223-4038', NULL, NULL, 'Ativo'),
(246, 'CORREA', 'SAMSUNG TAB GALAXY A9+ SM-X210', '64 GB', '4 GB', 50200, 'r9xy200lk8r', 'd8:68:a0:20:ff:71', 'tablet', '', '', NULL, NULL, 'Ativo'),
(247, 'EXPEDIÇÃO', 'GALAXY TAB A9+ SM-X210', '64 GB', '4 GB', 50200, 'r9xy200lkav', 'd8:68:a0:20:ff:75', 'tablet', '', '', NULL, NULL, 'Ativo'),
(248, 'EXPEDIÇÃO', 'SAMSUNG TAB A9+ SM-X210', '64 GB', '4 GB', 50200, 'r9xy200lk9a', 'd8:68:a0:20:ff:73', 'tablet', '', '', NULL, NULL, 'Ativo'),
(249, 'EXPEDIÇÃO', 'SAMSUNG GALAXY TAB A9+ SM-X210', '64 GB', '4 GB', 50200, 'r9xy200lkdm', 'd8:68:a0:20:ff:7b', 'tablet', '', '', NULL, NULL, 'Ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `celulares`
--
ALTER TABLE `celulares`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
