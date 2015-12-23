-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23-Dez-2015 às 03:13
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
(2, '-8.132364', '-34.903847', 'Conteúdo do InfoBox 2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
