-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 19, 2012 as 03:11 PM
-- Versão do Servidor: 5.5.17
-- Versão do PHP: 5.3.6

--
-- downloadlist
--
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `PE`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `download`
--

INSERT INTO `download` (`id`, `titulo`, `link`) VALUES
(1, 'Pegasus', 'http:\\\\www.olá.com.br'),
(2, 'Anna e os minotauros', 'http:\\\\www.palelá.com.br'),
(3, 'Não conte a ninguém', 'http:\\\\www.ninguem.com.br'),
(4, 'Confie em mim', 'http:\\\\www.pegasus.com.br'),
(5, 'Julieta', 'http:\\\\www.submarino.com.br');
