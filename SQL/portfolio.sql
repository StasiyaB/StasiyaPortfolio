-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 18 fév. 2019 à 12:15
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
(19, 'Tic-Tac-Toe', '01.png', 'Practice of POO and Canvas usage ', 'HTML, CSS, JS, Canvas, POO', ''),
(20, 'Ardoise Magique', '02.png', 'Practice of POO usage: there is possibility to choose the color and weight of the pen as well as generate a new color.', 'HTML, CSS, JS, Canvas, POO', ''),
(21, 'Address Book', '03.png', 'Add, delete and edit functions on JS', 'HTML, CSS, JS', ''),
(22, 'Todo List', '04.png', 'Practice of a Local Storage usage: add, delete and edit functions on PHP', 'HTML, CSS, PHP, Local Storage', ''),
(26, 'Masterpiece', '05.png', 'Practice of POO and Canvas usage. Due to the mouse position click left the circles of different sizes and colors.', 'HTML, CSS, JS, Canvas, POO', ''),
(27, 'Object Fight', '06.png', 'POO practice', 'HTML, CSS, JS, POO', ''),
(28, 'Rocket', '07.png', 'SetInterval Function launches the Rocket', 'HTML, CSS, JS, DOM', ''),
(29, 'Blog', '08.png', 'Blog site with admin and user access. Administrator has the possibility add, delete authors, posts and comments. Edit the role of Authors. User can read posts  and add comments.', 'HTML, CSS, PHP, MySQL; $_SESSION, $_GET, $_POST', ''),
(30, 'Movie searching engine', '10.png', 'Practice of API usage and treatment', 'HTML, CSS, JS, DOM, JQuery, API', ''),
(31, 'Carousel', '11.png', 'Possibility to launch slider to switch the images in the loop, as well as forward, revers and pause the movement with the help of the mouse or from the keyboard.', 'HTML, CSS, JS, DOM', ''),
(33, 'Restaurant', '09.png', 'Site of the online restaurant. The user should be signed up and loged in the site to have the possibility to order food and book the place in the restaurant. There\'s possibility to choose and add food, remove it from the bascket and proceed with the payment of the order.', 'HTML, CSS, JS, PHP, MySQL, JQuery; MicroKernel, Objects, Functions, Loops, DOM, $_SESSION, $_POST, $_GET, Local Storage', '');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
