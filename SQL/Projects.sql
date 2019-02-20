-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 20 fév. 2019 à 20:22
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

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
-- Structure de la table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectName` varchar(30) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `ProjectDescription` text NOT NULL,
  `TechnologyUsed` varchar(120) NOT NULL,
  `URL` varchar(120) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`Id`, `ProjectName`, `Image`, `ProjectDescription`, `TechnologyUsed`, `URL`) VALUES
(19, 'Tic-Tac-Toe', '01.png', 'Practice of POO and Canvas usage ', 'HTML, CSS, JS, Canvas, POO', 'http://sites/StasiyaPortfolio/projects/tic-tac-toe'),
(20, 'Ardoise Magique', '02.png', 'Practice of POO usage: there is possibility to choose the color and weight of the pen as well as generate a new color.', 'HTML, CSS, JS, Canvas, POO', 'http://sites/StasiyaPortfolio/projects/ardoise-magique'),
(21, 'Address Book', '03.png', 'Add, delete and edit functions on JS', 'HTML, CSS, JS', 'http://sites/StasiyaPortfolio/projects/address-book'),
(22, 'Todo List', '04.png', 'Practice of a Local Storage usage: add, delete and edit functions on PHP', 'HTML, CSS, PHP, Local Storage', 'http://sites/StasiyaPortfolio/projects/todo-list'),
(26, 'Masterpiece', '05.png', 'Practice of POO and Canvas usage. Due to the mouse position click left the circles of different sizes and colors.', 'HTML, CSS, JS, Canvas, POO', 'http://sites/StasiyaPortfolio/projects/masterpiece'),
(27, 'Object Fight', '06.png', 'POO practice', 'HTML, CSS, JS, POO', ''),
(28, 'Rocket', '07.png', 'SetInterval Function launches the Rocket', 'HTML, CSS, JS, DOM', 'http://sites/StasiyaPortfolio/projects/rocket'),
(29, 'Blog', '08.png', 'Blog site with admin and user access. Administrator has the possibility add, delete authors, posts and comments. Edit the role of Authors. User can read posts  and add comments.', 'HTML, CSS, PHP, MySQL; $_SESSION, $_GET, $_POST', ''),
(30, 'Movie searching engine', '10.png', 'Practice of API usage and treatment', 'HTML, CSS, JS, DOM, JQuery, API', ''),
(31, 'Carousel', '11.png', 'Possibility to launch slider to switch the images in the loop, as well as forward, revers and pause the movement with the help of the mouse or from the keyboard.', 'HTML, CSS, JS, DOM', 'http://sites/StasiyaPortfolio/projects/carousel'),
(33, 'Restaurant', '09.png', 'Site of the online restaurant. There\'s possibility to choose and add food, remove it from the bascket and proceed with the payment of the order.', 'HTML, CSS, JS, PHP, MySQL, JQuery; MicroKernel, Objects, Functions, Loops, DOM, $_SESSION, $_POST, $_GET, Local Storage', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
