-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 22 jan. 2023 à 17:59
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_sprint_0`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `Nom_Admin` varchar(50) NOT NULL,
  `Prenom_Admin` varchar(100) NOT NULL,
  `Date_Naissance_Admin` date NOT NULL,
  `Adresse_Admin` varchar(20) NOT NULL,
  `Numero_Admin` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `batiment`
--

CREATE TABLE `batiment` (
  `id_Batiment` int(11) NOT NULL,
  `Nom_Batiment` int(11) NOT NULL,
  `Numero_Batiment` int(11) NOT NULL,
  `Date_location_Batiment` int(11) NOT NULL,
  `Lieu_Batiment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id_Chambre` varchar(12) NOT NULL,
  `Numero_Chambre` int(13) NOT NULL,
  `Chambre_Etage` int(10) NOT NULL,
  `Chambre_poste_tp` int(20) NOT NULL,
  `Date-Location_Chambre` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `Code_Etudiant` int(12) NOT NULL,
  `Nom_Etudiant` varchar(65) NOT NULL,
  `Prenom_Etudiant` varchar(100) NOT NULL,
  `Date_Naissance_Etudiant` date NOT NULL,
  `Adresse_Etudiant` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`Nom_Admin`);

--
-- Index pour la table `batiment`
--
ALTER TABLE `batiment`
  ADD PRIMARY KEY (`id_Batiment`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id_Chambre`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`Code_Etudiant`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
