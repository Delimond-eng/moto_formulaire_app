-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 04 Juin 2024 à 01:08
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  5.6.24
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
/*Numero d'Identification Provinciale*/
--
-- Base de données :  `bdd_motos`
--

-- --------------------------------------------------------
--
-- Structure de la table `achats`
--

CREATE TABLE `achats` (
    `achat_id` int(11) NOT NULL,
    `prixAchat` int(11) NOT NULL,
    `dateAchat` varchar(255) NOT NULL,
    `moto_id` int(11) NOT NULL,
    `nipVendeur` varchar(255) NOT NULL,
    `nipAchateur` varchar(255) NOT NULL,
    `create_at` varchar(255) NOT NULL,
    `update_at` varchar(255) NOT NULL,
    `statutAchats` varchar(255) NOT NULL DEFAULT 'actif'
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
-- --------------------------------------------------------
--
-- Structure de la table `modeles`
--†
CREATE TABLE `modeles` (
    `modele_id` int(11) NOT NULL,
    `nom` varchar(100) NOT NULL,
    `typeVehicule_id` varchar(100) DEFAULT NULL,
    `dateEnregistrement` varchar(255) NOT NULL,
    `statutModele` varchar(255) NOT NULL DEFAULT 'actif'
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
-- --------------------------------------------------------
--
-- Structure de la table `motos`
--

CREATE TABLE `motos` (
    `moto_id` int(11) NOT NULL,
    `serie` varchar(255) NOT NULL,
    `plaque` varchar(255) NOT NULL,
    `couleur` varchar(50) DEFAULT NULL,
    `marque` varchar(255) NOT NULL,
    `typeMoto_id` int(11) NOT NULL,
    `chassis` varchar(50) DEFAULT NULL,
    `photoDevant` varchar(255) DEFAULT NULL,
    `photoArriere` varchar(255) DEFAULT NULL,
    `nbreChevaux` varchar(255) NOT NULL,
    `dateMiseEnService` varchar(255) NOT NULL,
    `typeUsage` varchar(255) NOT NULL,
    `policeAssurance` varchar(255) NOT NULL,
    `validiteAssurance` varchar(255) NOT NULL,
    `modele_id` int(11) DEFAULT NULL,
    `proprietaire_id` int(11) DEFAULT NULL,
    `create_at` varchar(255) NOT NULL,
    `update_at` varchar(255) NOT NULL,
    `statutMoto` varchar(255) NOT NULL DEFAULT 'actif'
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
-- --------------------------------------------------------
--
-- Structure de la table `proprietaires`
--

CREATE TABLE `proprietaires` (
    `proprietaire_id` int(11) NOT NULL,
    `nipPropietaire` varchar(255) NOT NULL,
    `nipChauffeur` varchar(255) NOT NULL,
    `moto_id` int(11) NOT NULL,
    `create_at` varchar(255) NOT NULL,
    `update_at` varchar(255) NOT NULL,
    `statutPropiertaire` varchar(255) NOT NULL DEFAULT 'actif'
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
-- --------------------------------------------------------
--
-- Structure de la table `types_motos`
--

CREATE TABLE `types_motos` (
    `typeMoto_id` int(11) NOT NULL,
    `nom` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Index pour les tables exportées
--

--
-- Index pour la table `achats`
--
ALTER TABLE `achats`
ADD PRIMARY KEY (`achat_id`);
--
-- Index pour la table `modeles`
--
ALTER TABLE `modeles`
ADD PRIMARY KEY (`modele_id`);
--
-- Index pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
ADD PRIMARY KEY (`proprietaire_id`);
--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `achats`
--
ALTER TABLE `achats`
MODIFY `achat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `modeles`
--
ALTER TABLE `modeles`
MODIFY `modele_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
MODIFY `proprietaire_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
