-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 20, 2016 alle 12:29
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_tim`
--
CREATE DATABASE IF NOT EXISTS `data_tim` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `data_tim`;

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriadispositivo`
--

DROP TABLE IF EXISTS `categoriadispositivo`;
CREATE TABLE IF NOT EXISTS `categoriadispositivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(99) DEFAULT NULL,
  `descrizione` text,
  `immagine` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriadispositivo`
--

INSERT INTO `categoriadispositivo` (`id`, `nome`, `descrizione`, `immagine`) VALUES
(1, 'Smartphone', 'tutti i migliori smartphone ai migliori prezzi', 'smartphone.jpg'),
(2, 'Tablet', 'in mobilità utilizza i tablet con la nostra connessione 4G', 'tablet.png'),
(3, 'TV & SmartLiving', 'I più innovativi prodotti per la tua tv e la vita multimediale', 'tv.png'),
(4, 'Modem and Networking', 'Per rimanere sempre connesso da tuo notebook', 'modem.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriaservizioassistenza`
--

DROP TABLE IF EXISTS `categoriaservizioassistenza`;
CREATE TABLE IF NOT EXISTS `categoriaservizioassistenza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(99) DEFAULT NULL,
  `descrizione` text,
  `immagine` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriaservizioassistenza`
--

INSERT INTO `categoriaservizioassistenza` (`id`, `nome`, `descrizione`, `immagine`) VALUES
(1, 'Costi e Pagamenti', 'Controlla i tuoi costi ', 'costs.png'),
(2, 'Configurazioni', 'Come configurare al meglio il tuo dispositivo', 'config.png'),
(3, 'Linea', 'Problemi con la tua linea?', 'line.png'),
(4, 'Highlights', 'Non sai in che categoria cercare? entra in highlights, ci sono i servizi più cliccati', 'highlights.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriasmartlifeservice`
--

DROP TABLE IF EXISTS `categoriasmartlifeservice`;
CREATE TABLE IF NOT EXISTS `categoriasmartlifeservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(99) DEFAULT NULL,
  `descrizione` text,
  `immagine` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriasmartlifeservice`
--

INSERT INTO `categoriasmartlifeservice` (`id`, `nome`, `descrizione`, `immagine`) VALUES
(1, 'Tv & intrattenimento', 'intrattieniti con il meglio della tv in casa tua e sempre con te in giro', 'tv.png'),
(2, 'Salute e Benessere', 'Mantieniti in forma con le migliori app e gadget tim', 'healt.png'),
(3, 'Casa e famiglia', 'utilizza tutto ciò che offre tim per la tua famiglia', 'home.png'),
(4, 'Servizi personali', 'non so che scrivere qui :D', 'payment.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo`
--

DROP TABLE IF EXISTS `dispositivo`;
CREATE TABLE IF NOT EXISTS `dispositivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(99) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `promozione` tinyint(1) NOT NULL DEFAULT '0',
  `prezzo` int(11) NOT NULL,
  `immagine` varchar(99) DEFAULT NULL,
  `os` varchar(99) DEFAULT NULL,
  `memoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo`
--

INSERT INTO `dispositivo` (`id`, `nome`, `categoria`, `promozione`, `prezzo`, `immagine`, `os`, `memoria`) VALUES
(1, 'iPhone 6s', 1, 0, 799, 'iPhone_6s.jpg', 'iOS', 64),
(2, 'iPhone 6s Plus', 1, 0, 899, 'iPhone_6s_Plus.jpg', 'iOS', 16),
(3, 'Galaxy S7', 1, 1, 499, 'Galaxy_S7.jpg', 'android', 32),
(4, 'Nexus 5x', 1, 0, 299, 'Nexus_5x.jpg', 'android', 16),
(5, 'Lumnia 950XL', 1, 0, 545, 'Lumnia_950XL.jpg', 'Windows', 32),
(6, 'Huawei G7', 1, 0, 169, 'Huawei_g7.jpg', 'Android', 16),
(7, 'iPad Pro', 2, 0, 899, 'iPad_Pro.jpg', 'iOS', 128);

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo_servizioassistenza`
--

DROP TABLE IF EXISTS `dispositivo_servizioassistenza`;
CREATE TABLE IF NOT EXISTS `dispositivo_servizioassistenza` (
  `id_dispositivo` int(11) NOT NULL,
  `id_servizioassistenza` int(11) NOT NULL,
  PRIMARY KEY (`id_dispositivo`,`id_servizioassistenza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo_servizioassistenza`
--

INSERT INTO `dispositivo_servizioassistenza` (`id_dispositivo`, `id_servizioassistenza`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `dispositivo_smartlifeservice`
--

DROP TABLE IF EXISTS `dispositivo_smartlifeservice`;
CREATE TABLE IF NOT EXISTS `dispositivo_smartlifeservice` (
  `id_dispositivo` int(11) NOT NULL,
  `id_smartlifeservice` int(11) NOT NULL,
  PRIMARY KEY (`id_dispositivo`,`id_smartlifeservice`),
  KEY `id_smartlifeservice` (`id_smartlifeservice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dispositivo_smartlifeservice`
--

INSERT INTO `dispositivo_smartlifeservice` (`id_dispositivo`, `id_smartlifeservice`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `servizioassistenza`
--

DROP TABLE IF EXISTS `servizioassistenza`;
CREATE TABLE IF NOT EXISTS `servizioassistenza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(99) DEFAULT NULL,
  `descrizione` text,
  `categoria` int(11) DEFAULT NULL,
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `servizioassistenza`
--

INSERT INTO `servizioassistenza` (`id`, `nome`, `descrizione`, `categoria`, `highlight`) VALUES
(1, 'Configurazione Mail iOS', 'Guida per la configurazione delle mail su sistemi operativi iOS', 2, 1),
(2, 'Configurazione Mail android', 'Guida per la configurazione delle mail su sistemi operativi android', 2, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlifeservice`
--

DROP TABLE IF EXISTS `smartlifeservice`;
CREATE TABLE IF NOT EXISTS `smartlifeservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(99) DEFAULT NULL,
  `descrizione` text,
  `categoria` int(11) NOT NULL,
  `attivazione&regole` text,
  `faq` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `smartlifeservice`
--

INSERT INTO `smartlifeservice` (`id`, `nome`, `descrizione`, `categoria`, `attivazione&regole`, `faq`) VALUES
(1, 'Tim Music', 'Ascolta la tua musica in libertà', 1, 'attivalo gratis con la tua promozione internet', 'è meglio di spotify?\r\nNon credo proprio');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
