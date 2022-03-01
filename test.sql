-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 02:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE `consultation` (
  `Ref` int(9) NOT NULL,
  `Datecons` varchar(10) NOT NULL,
  `nomMed` varchar(100) NOT NULL,
  `Diagnostic` varchar(500) NOT NULL,
  `posologie` varchar(100) NOT NULL,
  `analyse` varchar(100) NOT NULL,
  `radio` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `spécialité` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`Ref`, `Datecons`, `nomMed`, `Diagnostic`, `posologie`, `analyse`, `radio`, `nom`, `spécialité`) VALUES
(1, '12/03/2013', 'Panadol', 'Grippe', '1 par jour', '', '', 'Med Amine ', 'Généraliste'),
(1, '16/08/2014', 'Fervex', 'fièvre', '1-2 par jour', '', '', 'AbdelMoulehem Mongi', 'Généraliste'),
(1, '27/12/2020', 'Doliprane', 'Grippe', '1 par jour', '', 'Radio', 'Med Amine ', 'Généraliste'),
(9, '10/02/2013', 'Muxol', 'mal à la gorge', '3 par jour', '', 'Radio', 'Rezgui Mounir', 'Généraliste'),
(13, '27/12/2020', 'lanzor 30mg', 'je suis content	', '01 par jour', '', 'Scanner ', 'Dr aida', 'psy'),
(14, '27/12/2020', 'Doliprane', 'grippe', '2 par jour', '', '', 'AbdelHmid', 'Généraliste'),
(15, '28/12/2020', 'poiuytr', 'azertyu', 'mlkjhgf', '', '', 'azerty', 'wxcv'),
(15, '28/12/2020', 'qsdfghj', 'azertyu', 'mlkjhgf', 'qsdfg', 'Radio Scanner IRM', 'nbvcx', 'mlkjhv');

-- --------------------------------------------------------

--
-- Table structure for table `dossier`
--

CREATE TABLE `dossier` (
  `Ref` int(9) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Sexe` varchar(10) NOT NULL,
  `Jour naissance` varchar(2) NOT NULL,
  `Mois naissance` varchar(20) NOT NULL,
  `Année naissance` varchar(4) NOT NULL,
  `tel` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dossier`
--

INSERT INTO `dossier` (`Ref`, `Nom`, `Prenom`, `Sexe`, `Jour naissance`, `Mois naissance`, `Année naissance`, `tel`) VALUES
(1, 'Abdi', 'Mariem', 'Féminin', '30', 'Mai', '2000', '27662229'),
(2, 'Jomaa', 'Aida', 'Féminin', '04', 'Octobre', '1972', '93123456'),
(3, 'Do', 'Mari', 'Féminin', '15', 'Juin', '2015', '12345678'),
(4, 'Abdi', 'Mari', 'Féminin', '31', 'Mai', '2001', '27668823'),
(5, 'Jomaa', 'Afef', 'Féminin', '26', 'Mai', '1973', '56987423'),
(6, 'Bou Houch', 'Omar', 'Masculin', '25', 'Avril', '2004', '24356987'),
(7, 'Neji', 'Montassar', 'Masculin', '20', 'Novembre', '1999', '98563274'),
(8, 'Marzouki', 'Maram', 'Féminin', '26', 'Juin', '2001', '26947538'),
(9, 'Hamami', 'Aymen', 'Masculin', '02', 'Août', '1996', '51973468'),
(10, 'Soltani', 'Ahmed', 'Masculin', '05', 'Décembre', '2000', '56741239'),
(11, 'Dhaoui', 'Yosr', 'Féminin', '02', 'Juillet', '1998', '23456719'),
(12, 'Abelmoula', 'Mohsen', 'Masculin', '30', 'Janvier', '1965', '91478563'),
(13, 'abdi', 'hatem', 'Masculin', '02', 'Juillet', '1964', '96612771'),
(14, 'Abdallah', 'Mohamed', 'Masculin', '05', 'Mai', '2014', '12345678'),
(15, 'Abdi', 'Marouen', 'Masculin', '18', 'Septembre', '1995', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`Ref`,`Datecons`,`nomMed`) USING BTREE;

--
-- Indexes for table `dossier`
--
ALTER TABLE `dossier`
  ADD PRIMARY KEY (`Ref`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dossier`
--
ALTER TABLE `dossier`
  MODIFY `Ref` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consultation`
--
ALTER TABLE `consultation`
  ADD CONSTRAINT `consultation_ibfk_1` FOREIGN KEY (`Ref`) REFERENCES `dossier` (`Ref`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
