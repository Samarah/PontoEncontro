-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 06, 2012 as 04:16 PM
-- Versão do Servidor: 5.5.17
-- Versão do PHP: 5.3.6

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
-- Estrutura da tabela `compras`
--

CREATE TABLE IF NOT EXISTS `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `link` text NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id`, `titulo`, `link`, `imagem`) VALUES
(1, 'catarinense', 'www.livrariascatarinense.com.br/', 'catarinense.png'),
(2, 'cultura ', 'www.livrariacultura.com.br/scripts/index.asp', 'cultura.png'),
(3, 'estante virtual', 'www.estantevirtual.com.br/', 'estantev.png'),
(4, 'nobel', 'www.livrarianobel.net.br/', 'nobel.PNG'),
(5, 'paulinas', 'www.paulinas.org.br/home/home.aspx', 'paulinas.png'),
(6, 'saraiva', 'www.livrariasaraiva.com.br/', 'saraiva.png'),
(7, 'siciliano', 'www.siciliano.com.br/', 'siciliano.png'),
(8, 'submarino', 'www.submarino.com.br/', 'submarino.png'),
(9, 'americanas', 'www.americanas.com.br/', 'americanas.png');
