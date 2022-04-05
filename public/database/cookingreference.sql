-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 05 avr. 2022 à 09:04
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cookingreference`
--

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `nameC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`nameC`) VALUES
('Argentina'),
('Brasil'),
('Congo'),
('France'),
('Italy'),
('Japan'),
('Korea'),
('Morocco'),
('Spain'),
('USA');

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

CREATE TABLE `favorites` (
  `idR` int(11) NOT NULL,
  `pseudoM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `favorites`
--

INSERT INTO `favorites` (`idR`, `pseudoM`) VALUES
(1, 'mbricha'),
(1, 'mforestier'),
(1, 'vfeeley'),
(2, 'pgilliard'),
(3, 'pgilliard'),
(3, 'vfeeley'),
(4, 'lbechet'),
(4, 'yibrahim'),
(5, 'lbechet'),
(6, 'mbricha'),
(6, 'mforestier'),
(6, 'pgilliard'),
(6, 'yibrahim'),
(7, 'jfrancois'),
(7, 'yibrahim'),
(9, 'yibrahim'),
(10, 'yibrahim'),
(11, 'jfrancois'),
(11, 'lbechet'),
(11, 'mbricha'),
(11, 'opakiry'),
(11, 'pgilliard'),
(11, 'rnartallo'),
(12, 'lbechet'),
(12, 'rnartallo'),
(13, 'lbechet'),
(13, 'pgilliard'),
(14, 'opakiry');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `idR` int(11) NOT NULL,
  `pseudoM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`idR`, `pseudoM`) VALUES
(1, 'mforestier'),
(1, 'vfeeley'),
(2, 'pgilliar'),
(3, 'vfeeley'),
(4, 'lbechet'),
(4, 'yibrahim'),
(5, 'lbechet'),
(6, 'mbricha'),
(6, 'mforestier'),
(6, 'pgilliar'),
(6, 'yibrahim'),
(7, 'jfrancois'),
(7, 'mbricha'),
(7, 'mforestier'),
(7, 'opakiry'),
(7, 'pgilliar'),
(7, 'rnartallo'),
(7, 'vfeeley'),
(7, 'yibrahim'),
(9, 'yibrahim'),
(10, 'yibrahim'),
(11, 'jfrancois'),
(11, 'lbechet'),
(11, 'mforestier'),
(11, 'opakiry'),
(11, 'pgilliar'),
(11, 'rnartallo'),
(11, 'yibrahim'),
(12, 'lbechet'),
(12, 'rnartallo'),
(13, 'lbechet'),
(13, 'pgilliar'),
(14, 'opakiry');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `pseudo` varchar(50) NOT NULL,
  `nameM` varchar(50) DEFAULT NULL,
  `surnameM` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subscription` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `members`
--

INSERT INTO `members` (`pseudo`, `nameM`, `surnameM`, `email`, `subscription`) VALUES
('jfrancois', 'Jeanne', 'Francois', 'jfrancois@etu.u-bordeaux.fr', '2019-12-03'),
('lbechet', 'Lisa', 'Bechet', 'lbechet@etu.u-bordeaux.fr', '2018-04-27'),
('mbricha', 'Maroua', 'Bricha', 'mbricha@u-bordeaux.fr', '2019-05-12'),
('mforestier', 'Margaux', 'Forestier', 'mforestier@free.fr', '2021-02-25'),
('opakiry', 'Ophelie', 'Pakiry', 'pandalou25@outlook.fr', '2019-02-25'),
('pgilliard', 'Paul', 'Gilliard', 'ppaulgilliard.8@gmail.com', '2020-11-10'),
('rnartallo', 'Ramon', 'Nartallo', 'rnartallo@gmail.uk', '2019-10-03'),
('vfeeley', 'Valerie', 'Feeley', 'vfeeley12@ucm.es', '2019-05-03'),
('yibrahim', 'Yasmine', 'Ibrahim', 'yibrahim01@gmail.com', '2019-11-04');

-- --------------------------------------------------------

--
-- Structure de la table `receip`
--

CREATE TABLE `receip` (
  `idR` int(11) NOT NULL,
  `nameR` varchar(50) DEFAULT NULL,
  `typeR` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `date_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pseudoMember` varchar(50) DEFAULT NULL
) ;

--
-- Déchargement des données de la table `receip`
--

INSERT INTO `receip` (`idR`, `nameR`, `typeR`, `country`, `date_post`, `pseudoMember`) VALUES
(1, 'Empanadas', 'starter', 'Argentina', '2019-10-03 10:12:44', 'vfeeley'),
(2, 'Coxinha', 'starter', 'Brasil', '2019-05-23 10:12:44', 'jfrancois'),
(3, 'Pondu', 'main', 'Congo', '2020-10-03 10:12:44', 'jfrancois'),
(4, 'Paella', 'main', 'Spain', '2020-02-15 14:32:44', 'rnartallo'),
(5, 'Patatas Bravas', 'starter', 'Spain', '2019-08-15 13:32:44', 'lbechet'),
(6, 'Mac n Cheese', 'main', 'USA', '2020-10-03 10:12:44', 'yibrahim'),
(7, 'Croissant', 'dessert', 'France', '2020-01-21 11:12:44', 'opakiry'),
(8, 'Lasana', 'main', 'Italy', '2020-05-10 10:12:44', 'jfrancois'),
(9, 'Pizza', 'main', 'Italy', '2020-04-12 10:12:44', 'pgilliard'),
(10, 'Corne de gazelle', 'dessert', 'Morocco', '2020-09-01 10:12:44', 'mbricha'),
(11, 'Sushi', 'main', 'Japan', '2020-04-12 10:12:44', 'opakiry'),
(12, 'Gyoza', 'main', 'Japan', '2019-11-12 11:12:44', 'mforestier'),
(13, 'Ramen', 'main', 'Japan', '2020-01-23 11:12:44', 'lbechet'),
(14, 'Kimchi', 'main', 'Korea', '2019-12-12 11:12:44', 'opakiry'),
(15, 'Boeuf Bourgignon', 'main', 'France', '2020-09-03 10:12:44', 'opakiry');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`nameC`);

--
-- Index pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`idR`,`pseudoM`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`idR`,`pseudoM`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`pseudo`);

--
-- Index pour la table `receip`
--
ALTER TABLE `receip`
  ADD PRIMARY KEY (`idR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
