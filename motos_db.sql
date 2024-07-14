-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 19 juin 2024 à 03:34
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `motos_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `achats`
--

CREATE TABLE `achats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `achat_prix` varchar(255) NOT NULL,
  `devise` varchar(255) NOT NULL DEFAULT 'CDF',
  `achat_date` timestamp NULL DEFAULT NULL,
  `nip_acheteur` varchar(255) NOT NULL,
  `nom_vendeur` varchar(255) NOT NULL,
  `telephone_vendeur` varchar(255) NOT NULL,
  `email_vendeur` varchar(255) DEFAULT NULL,
  `adresse_vendeur` varchar(255) NOT NULL,
  `moto_id` bigint(20) UNSIGNED NOT NULL,
  `moto_npi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'actif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `achats`
--

INSERT INTO `achats` (`id`, `achat_prix`, `devise`, `achat_date`, `nip_acheteur`, `nom_vendeur`, `telephone_vendeur`, `email_vendeur`, `adresse_vendeur`, `moto_id`, `moto_npi`, `status`, `created_at`, `updated_at`) VALUES
(1, '2000', 'USD', '2024-06-17 23:00:00', '2YNR3CKT', 'HEGFHGE', '0892292333', 'leina@gmail.com', '03093, Kinshasa Limete', 1, 'TF54598122', 'actif', '2024-06-19 00:23:08', '2024-06-19 00:23:08');

-- --------------------------------------------------------

--
-- Structure de la table `assurances`
--

CREATE TABLE `assurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_police` varchar(255) NOT NULL,
  `nom_assureur` varchar(255) NOT NULL,
  `date_validite` timestamp NULL DEFAULT NULL,
  `type_assurance_id` bigint(20) UNSIGNED NOT NULL,
  `moto_id` bigint(20) UNSIGNED NOT NULL,
  `moto_npi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marques`
--

CREATE TABLE `marques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marque_libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `marques`
--

INSERT INTO `marques` (`id`, `marque_libelle`, `created_at`, `updated_at`) VALUES
(1, 'Boxer', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(2, 'Harley-Davidson', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(3, 'Honda', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(4, 'Yamaha', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(5, 'Kawasaki', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(6, 'Suzuki', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(7, 'Ducati', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(8, 'BMW Motorrad', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(9, 'Triumph', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(10, 'KTM', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(11, 'Aprilia', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(12, 'Indian Motorcycle', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(13, 'Moto Guzzi', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(14, 'Royal Enfield', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(15, 'Husqvarna', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(16, 'MV Agusta', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(17, 'Bimota', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(18, 'Benelli', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(19, 'Zero Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(20, 'Victory Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(21, 'Can-Am', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(22, 'Hyosung', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(23, 'Cagiva', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(24, 'Buell', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(25, 'Erik Buell Racing (EBR)', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(26, 'MZ Motorrad- und Zweiradwerk', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(27, 'Norton Motorcycle', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(28, 'Derbi', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(29, 'GasGas', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(30, 'SYM', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(31, 'Keeway', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(32, 'Zongshen', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(33, 'CFMoto', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(34, 'Ural Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(35, 'Sherco', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(36, 'AJP', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(37, 'Bultaco', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(38, 'Herald Motor Co.', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(39, 'Mondial Moto', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(40, 'Moto Morini', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(41, 'Ossa', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(42, 'Patron', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(43, 'Puch', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(44, 'Rieju', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(45, 'Skyteam', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(46, 'SWM Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(47, 'TGB', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(48, 'Vespa', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(49, 'Peugeot Motocycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(50, 'Mash', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(51, 'Fantic Motor', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(52, 'Beta Motor', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(53, 'Haojue', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(54, 'Lambretta', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(55, 'Midual', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(56, 'Mutt Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(57, 'Sanglas', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(58, 'AJS Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(59, 'CCM Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(60, 'FB Mondial', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(61, 'Hesketh Motorcycles', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(62, 'Jawa Moto', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(63, 'Matchless', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(64, 'Norton', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(65, 'Rajdoot', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(66, 'Velocette', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(67, 'Vyrus', '2024-06-18 23:24:43', '2024-06-18 23:24:43');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_11_183012_create_achats_table', 1),
(6, '2024_06_11_184253_create_moto_types_table', 1),
(7, '2024_06_11_185254_create_proprietaires_table', 1),
(8, '2024_06_11_185532_create_motos_table', 1),
(9, '2024_06_18_131549_create_marques_table', 1),
(10, '2024_06_18_152024_create_assurances_table', 1),
(11, '2024_06_18_152050_create_type_assurances_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `motos`
--

CREATE TABLE `motos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `serie` varchar(255) NOT NULL,
  `plaque` varchar(255) NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `chassis` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `photo_avant` varchar(255) NOT NULL,
  `photo_arriere` varchar(255) NOT NULL,
  `nbre_chevaux` varchar(255) NOT NULL,
  `date_debut_service` varchar(255) NOT NULL,
  `validite_assurance` varchar(255) DEFAULT NULL,
  `police_assurance` varchar(255) DEFAULT NULL,
  `type_usage` varchar(255) NOT NULL,
  `moto_type_id` bigint(20) UNSIGNED NOT NULL,
  `marque_id` bigint(20) UNSIGNED NOT NULL,
  `proprietaire_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'actif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `motos`
--

INSERT INTO `motos` (`id`, `code`, `serie`, `plaque`, `couleur`, `chassis`, `modele`, `photo_avant`, `photo_arriere`, `nbre_chevaux`, `date_debut_service`, `validite_assurance`, `police_assurance`, `type_usage`, `moto_type_id`, `marque_id`, `proprietaire_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TF54598122', '2012', 'KN-8392-92', '#1132f4', '3838474', 'SKSJSK', 'http://127.0.0.1:8000/uploads/motos/667232fcf1c57.png', 'http://127.0.0.1:8000/uploads/motos/667232fcf1f86.png', '2', '2023-06-28', NULL, NULL, 'Transport en commun', 10, 5, 1, 'actif', '2024-06-19 00:23:08', '2024-06-19 00:23:08');

-- --------------------------------------------------------

--
-- Structure de la table `moto_types`
--

CREATE TABLE `moto_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `moto_type_libelle` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'actif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `moto_types`
--

INSERT INTO `moto_types` (`id`, `moto_type_libelle`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sportives', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(2, 'Roadsters', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(3, 'Cruisers', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(4, 'Touring', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(5, 'Tout-terrain / Adventure', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(6, 'Enduro', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(7, 'Standards / Street', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(8, 'Scooters', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(9, 'Café Racers', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(10, 'Bobbers', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(11, 'Choppers', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(12, 'Trikes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(13, 'Supermoto', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(14, 'Motocross', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(15, 'Trail', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(16, 'Motos électriques', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(17, 'Vintage / Classiques', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(18, 'Custom', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(19, 'Mini Motos / Pocket Bikes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(20, 'Piste / Racing', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(21, 'Police / Forces de l\'ordre', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(22, 'Militaires / Tactiques', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(23, 'Mopeds / Mobylettes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(24, 'Scramblers', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(25, 'Underbone', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(26, 'Utilitaires', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(27, 'Motos Hybrides', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(28, 'Concepts', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(29, 'Rétro / Modern Classic', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(30, 'Drag Bikes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(31, 'Stunt Bikes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(32, 'Speedway Bikes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(33, 'Dirt Track Bikes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(34, 'Flat Track Bikes', 'actif', '2024-06-18 23:24:43', '2024-06-18 23:24:43');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `proprietaires`
--

CREATE TABLE `proprietaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip_proprietaire` varchar(255) NOT NULL,
  `nip_chauffeur` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'actif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `proprietaires`
--

INSERT INTO `proprietaires` (`id`, `nip_proprietaire`, `nip_chauffeur`, `status`, `created_at`, `updated_at`) VALUES
(1, '2YNR3CKT', '2YNR3CKT', 'actif', '2024-06-19 00:23:08', '2024-06-19 00:23:08');

-- --------------------------------------------------------

--
-- Structure de la table `type_assurances`
--

CREATE TABLE `type_assurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_assurance_libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_assurances`
--

INSERT INTO `type_assurances` (`id`, `type_assurance_libelle`, `created_at`, `updated_at`) VALUES
(1, 'Assurance automobile', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(2, 'Assurance moto', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(3, 'Assurance camion', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(4, 'Assurance véhicule de loisirs', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(5, 'Assurance flotte automobile', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(6, 'Assurance taxi ou VTC', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(7, 'Assurance transport de marchandises', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(8, 'Assurance engins agricoles ou de chantier', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(9, 'Assurance véhicules de collection', '2024-06-18 23:24:43', '2024-06-18 23:24:43'),
(10, 'Assurance véhicules électriques ou hybrides', '2024-06-18 23:24:43', '2024-06-18 23:24:43');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gaston Delimond', 'gastondelimond@gmail.com', NULL, '$2y$10$kke3fnD5J1KjGssImSgn4.ivv.7xXr2UeE3gqBcRSlzHQ9dft21qK', NULL, NULL, NULL),
(2, 'Lionnel Nawej', 'lionnelnawej@gmail.com', NULL, '$2y$10$o5hzO3w9ITlPM6suLUSWt.I9vGxfUcE/EOXMpnds6x74AgRlnejlK', NULL, NULL, NULL),
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$10$tO9dnyxaFX6PIDEitB/Tje86/l6xrfsN4Scl.bF8AN7nNzamoSyeW', NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achats`
--
ALTER TABLE `achats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `assurances`
--
ALTER TABLE `assurances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `marques`
--
ALTER TABLE `marques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `motos`
--
ALTER TABLE `motos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `moto_types`
--
ALTER TABLE `moto_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_assurances`
--
ALTER TABLE `type_assurances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achats`
--
ALTER TABLE `achats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `assurances`
--
ALTER TABLE `assurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marques`
--
ALTER TABLE `marques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `motos`
--
ALTER TABLE `motos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `moto_types`
--
ALTER TABLE `moto_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `type_assurances`
--
ALTER TABLE `type_assurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
