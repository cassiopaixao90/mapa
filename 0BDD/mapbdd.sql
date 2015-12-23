-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Dez-2015 às 04:18
-- Versão do servidor: 5.5.40
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mapbdd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcar`
--

CREATE TABLE IF NOT EXISTS `marcar` (
  `Id` int(11) NOT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  `Descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `marcar`
--

INSERT INTO `marcar` (`Id`, `Latitude`, `Longitude`, `Descricao`) VALUES
(0, '-7.989702', '-34.838460', 'Conteúdo do InfoBox 2'),
(1, '-19.212355602107472', '-44.20234468749999', 'Conteúdo do InfoBox 1'),
(2, '-8.1872626', ' -34.9652414', 'Conteúdo do InfoBox 1'),
(3, '-8.132364', '-34.903847', 'Conteúdo do InfoBox 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
  `marker_id` int(8) NOT NULL AUTO_INCREMENT,
  `marker_categorie` varchar(255) NOT NULL,
  `marker_ville` varchar(255) NOT NULL,
  `marker_longitude` varchar(255) NOT NULL,
  `marker_latitude` varchar(255) NOT NULL,
  `marker_text` text NOT NULL,
  `marker_actif` varchar(8) NOT NULL,
  PRIMARY KEY (`marker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `markers`
--

INSERT INTO `markers` (`marker_id`, `marker_categorie`, `marker_ville`, `marker_longitude`, `marker_latitude`, `marker_text`, `marker_actif`) VALUES
(6, '5', 'Toulouse', '-8.1872626', '-34.9652414', 'Casino BarriÃ¨re', 'Oui'),
(7, '6', 'Toulouse', '-8.1872626', '-34.9652414', 'Cinema Gaumont Wilson', 'Oui'),
(8, '6', 'LabÃ¨ge', '-8.1872626', '-34.9652414', 'Cinema Gaumont LabÃ¨ge', 'Oui'),
(9, '6', 'Blagnac', '1.373341', '43.644029', 'Cinema Mega CGR Blagnac', 'Oui'),
(10, '4', 'Toulouse', '1.435198', '43.62186', 'Bowling Minimes\r\n108 Bis Avenue des Minimes, 31200 Toulouse â€Ž\r\n05 61 47 95 60', 'Oui'),
(11, '4', 'Montaudran', '-8.1872626', '-34.9652414', 'Bowling Montaudran Impasse Louise LabÃ© 31400 Toulouse 05 61 20 20 70', 'Oui'),
(12, '4', 'Colomiers', '1.304691', '43.609902', 'Bowling Stadium Colomiers\r\n29 Chemin du Loudet\r\n33770 Colomiers\r\n05 34 36 42 50', 'Oui'),
(13, '10', 'Plaisance-du-Touch', '1.260248', '43.55854', 'African Safari\r\n41 Rue des Landes\r\n31830 Plaisance-du-Touch\r\n05 61 86 45 03', 'Oui');

-- --------------------------------------------------------

--
-- Estrutura da tabela `markers_icone`
--

CREATE TABLE IF NOT EXISTS `markers_icone` (
  `icone_id` int(8) NOT NULL AUTO_INCREMENT,
  `icone_actif` varchar(8) NOT NULL,
  `icone_categorie` varchar(255) NOT NULL,
  `icone_icon` varchar(255) NOT NULL,
  PRIMARY KEY (`icone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `markers_icone`
--

INSERT INTO `markers_icone` (`icone_id`, `icone_actif`, `icone_categorie`, `icone_icon`) VALUES
(4, 'Oui', 'Bowling', 'bowling'),
(5, 'Oui', 'Casino', 'casino'),
(6, 'Oui', 'CinÃ©ma', 'cinema'),
(7, 'Non', 'Librairie', 'librairie'),
(8, 'Non', 'MusÃ©e', 'musee'),
(9, 'Non', 'ThÃ©atre', 'theatre'),
(10, 'Oui', 'Zoo', 'zoo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `markers_user`
--

CREATE TABLE IF NOT EXISTS `markers_user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idclef` varchar(20) NOT NULL DEFAULT '',
  `niveau` varchar(20) NOT NULL DEFAULT '',
  `login` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `date_creation` date NOT NULL DEFAULT '0000-00-00',
  `date_lastpass` date NOT NULL DEFAULT '0000-00-00',
  `page` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `id` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `markers_user`
--

INSERT INTO `markers_user` (`id_user`, `idclef`, `niveau`, `login`, `password`, `email`, `date_creation`, `date_lastpass`, `page`) VALUES
(2, '6irilgjospip0b3io2jr', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'g.jf.richard@gmail.com', '2012-08-01', '0000-00-00', 'compte.php'),
(3, 'qlk26zvcukwr7ntbcjw1', 'user', 'Guillaume', '02b92a8b360cfd35536906de08f9dc57', 'g.jf.richard@gmail.com', '2012-09-25', '0000-00-00', 'compte.php');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
