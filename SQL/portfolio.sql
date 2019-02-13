-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 13 fév. 2019 à 17:21
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.2.11-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `Contacts`
--

CREATE TABLE `Contacts` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Mail` varchar(60) NOT NULL,
  `Message` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Contacts`
--

INSERT INTO `Contacts` (`Id`, `Name`, `Mail`, `Message`, `CreationTimestamp`, `Subject`) VALUES
(39, 'Anastasiya', 'baryash.anastasiya@gmail.com', 'bla bla bla', '2019-02-12 10:07:51', 'Test'),
(40, 'Anastasiya', 'baryash.anastasiya@gmail.com', 'test', '2019-02-12 11:27:17', 'Test'),
(41, 'Anastasiya', 'baryash.anastasiya@gmail.com', 'test', '2019-02-12 11:35:34', 'Test'),
(57, 'Anastasiya', 'black@gogo.com', 'gfgfg', '2019-02-13 10:19:57', 'gfgf'),
(58, 'Anastasiya', 'black@gogo.com', 'gfgfg', '2019-02-13 11:01:06', 'gfgf');

-- --------------------------------------------------------

--
-- Structure de la table `Projects`
--

CREATE TABLE `Projects` (
  `Id` int(11) NOT NULL,
  `ProjectName` varchar(30) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `ProjectDescription` text NOT NULL,
  `TechnologyUsed` varchar(120) NOT NULL,
  `URL` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Projects`
--

INSERT INTO `Projects` (`Id`, `ProjectName`, `Image`, `ProjectDescription`, `TechnologyUsed`, `URL`) VALUES
(10, 'haha', 'desktop-about.jpg', 'reere', 'HTML', 'ss'),
(11, 'haha', 'desktop-about.jpg', 'reere', 'HTML', 'ss'),
(14, 'SS', 'desktop-product.jpg', '060606060', 'SS', 'ss');

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `Id` int(11) NOT NULL,
  `Mail` varchar(60) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`Id`, `Mail`, `Password`, `Name`) VALUES
(1, 'baryash.anastasiya@gmail.com', '$2y$11$8552bbe8a0266ef82625duRgr82upVT2MQ9BoDaveLlYjSvd71Eeq', 'Anastasiya'),
(10, 'black@gogo.com', '$2y$11$ed075cc3b4ea519c0f1c3uJrZASFOkMcaROU0bKCrNIGDO4L.V90W', 'Music');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Contacts`
--
ALTER TABLE `Contacts`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Contacts`
--
ALTER TABLE `Contacts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;