-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 30 Novembre 2017 à 17:57
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `boats`
--

-- --------------------------------------------------------

--
-- Structure de la table `bt_boats`
--

CREATE TABLE `bt_boats` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `registration_number` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bt_boats`
--

INSERT INTO `bt_boats` (`id`, `name`, `registration_number`, `type`) VALUES
(1, 'Black Pearl', 'GE 4084', 'Bateau fluvial'),
(2, 'Vector', 'GE 6574', 'Voilier'),
(4, 'Eclipse', 'GE 5404', 'Navire furtif'),
(5, 'Merlin', 'GE 4784', 'Voilier'),
(7, 'Terra', 'GE 9874', 'Bateau fluvial'),
(8, 'Test', 'GE 4581', 'Navire furtif');

-- --------------------------------------------------------

--
-- Structure de la table `bt_users`
--

CREATE TABLE `bt_users` (
  `id` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bt_users`
--

INSERT INTO `bt_users` (`id`, `login`, `password`) VALUES
(1, 'test', '0123'),
(2, 'abc', '0123'),
(3, 'admin', '0123');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bt_boats`
--
ALTER TABLE `bt_boats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bt_users`
--
ALTER TABLE `bt_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bt_boats`
--
ALTER TABLE `bt_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `bt_users`
--
ALTER TABLE `bt_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
