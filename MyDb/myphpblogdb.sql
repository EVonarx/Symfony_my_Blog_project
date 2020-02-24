-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 24 fév. 2020 à 11:09
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `myphpblogdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `create_at`) VALUES
(1, 'Title of the article 1', 'Content of the  article 1', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(2, 'Title of the article 2', 'Content of the  article 2', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(3, 'Title of the article 3', 'Content of the  article 3', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(4, 'Title of the article 4', 'Content of the  article 4', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(5, 'Title of the article 5', 'Content of the  article 5', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(6, 'Title of the article 6', 'Content of the  article 6', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(7, 'Title of the article 7', 'Content of the  article 7', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(8, 'Title of the article 8', 'Content of the  article 8', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(9, 'Title of the article 9', 'Content of the  article 9', 'http://placehold.it/350x150', '2020-02-24 09:22:56'),
(10, 'Title of the article 10', 'Content of the  article 10', 'http://placehold.it/350x150', '2020-02-24 09:22:56');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200221095835', '2020-02-21 10:03:54');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
