-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 23 mars 2025 à 16:01
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recettes_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id` int(11) NOT NULL COMMENT 'Identifiant unique',
  `nom` varchar(100) NOT NULL COMMENT 'Nom de la recette',
  `description` text NOT NULL COMMENT 'Description de la recette',
  `image` varchar(255) NOT NULL COMMENT 'Nom du fichier image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id`, `nom`, `description`, `image`) VALUES
(1, 'test', 'test', ''),
(2, 'test', 'test', '');

-- --------------------------------------------------------

--
-- Structure de la table `tab_categorie`
--

CREATE TABLE `tab_categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tab_categorie`
--

INSERT INTO `tab_categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Entrée'),
(2, 'PLAT-PRINCIPALE'),
(3, 'BOISSON'),
(4, 'DESSERT'),
(5, 'SOUPE'),
(6, 'SALADE'),
(7, 'FAST-FOOD'),
(8, 'PATISSERIE');

-- --------------------------------------------------------

--
-- Structure de la table `tab_chef`
--

CREATE TABLE `tab_chef` (
  `id_chef;nom_du_chef;experience_du_chef;specialite` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tab_chef`
--

INSERT INTO `tab_chef` (`id_chef;nom_du_chef;experience_du_chef;specialite`) VALUES
('1;Pierre Dupont;15;Cuisine Fran?aise'),
('2;Maria Gonzalez;10;Cuisine Espagnole'),
('3;Ahmed El Mansouri;8;Cuisine Marocaine'),
('4;Kim Jisoo;12;Cuisine Cor?ene'),
('5;Luca Romano;20;Cuisine Italienne'),
('6;Jiro Ono;70;Cuisine Japonaise'),
('id_ingredient;nom_ingredient'),
('id_recette;nom-recette;description;id-p'),
('1;couscous;Plat traditionnel ? base de ');

-- --------------------------------------------------------

--
-- Structure de la table `tab_ingredient`
--

CREATE TABLE `tab_ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `nom_ingredient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tab_pays`
--

CREATE TABLE `tab_pays` (
  `id_pays` int(11) NOT NULL,
  `nom_pays` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tab_pays`
--

INSERT INTO `tab_pays` (`id_pays`, `nom_pays`, `description`) VALUES
(0, '[value-2]', '[value-3]'),
(1, 'MAROC', 'Cuisine riche en épices et saveurs'),
(2, 'ESPAGNE', 'Cuisine méditerranéenne avec des influences variées.'),
(3, 'CHINE', 'Saveurs équilibrées, mélange de sucré, salé et épicé.'),
(4, 'JAPAN', 'Cuisine raffinée avec beaucoup de poisson et de riz.'),
(5, 'MEXIQUE', 'Cuisine épicée et colorée'),
(6, 'France', 'Gastronomie réputée dans le monde entier.'),
(7, 'ITALIE', 'Connue pour ses pâtes, pizzas et fromages.');

-- --------------------------------------------------------

--
-- Structure de la table `tab_photo`
--

CREATE TABLE `tab_photo` (
  `id_photo` int(11) NOT NULL,
  `id_recette` int(11) NOT NULL,
  `URL` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tab_photo`
--

INSERT INTO `tab_photo` (`id_photo`, `id_recette`, `URL`) VALUES
(1, 1, 'https://img.cuisineaz.com/660x495/2022/02/23/i183013-couscous-marocain.webp'),
(2, 2, 'https://aujourdhui.ma/wp-content/uploads/2016/02/137150580.jpg?x13840'),
(3, 3, 'https://images.getrecipekit.com/v1608585894_13_vjwdhl.jpg?aspect_ratio=16:9&quality=90&auto_optimize=medium'),
(4, 4, 'https://mixthatdrink.com/wp-content/uploads/2023/03/classic-margarita-cocktail-1362x2048.jpg'),
(5, 5, 'https://rizpresto.ma/wp-content/uploads/2024/12/types-of-sushi-1024x675.jpg'),
(6, 6, 'https://res.cloudinary.com/tienda-com/image/upload/f_auto/q_auto/c_fill,w_752/dpr_2.0/v1/recipes/mixed-seafood-paella'),
(7, 7, 'https://fr.giallozafferano.com/images/8-822/Crepe-a-la-Nutella_1200x800.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `tab_prix`
--

CREATE TABLE `tab_prix` (
  `id_prix` int(11) NOT NULL,
  `prix_mondiale` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tab_prix`
--

INSERT INTO `tab_prix` (`id_prix`, `prix_mondiale`) VALUES
(1, '10$'),
(2, '25$'),
(3, '2$'),
(4, '36$'),
(5, '260$'),
(6, '66$'),
(7, '20$');

-- --------------------------------------------------------

--
-- Structure de la table `tab_recette_ingredients`
--

CREATE TABLE `tab_recette_ingredients` (
  `id_recette_ingredient` int(11) NOT NULL,
  `id_recette` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tab_categorie`
--
ALTER TABLE `tab_categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `tab_ingredient`
--
ALTER TABLE `tab_ingredient`
  ADD PRIMARY KEY (`id_ingredient`);

--
-- Index pour la table `tab_pays`
--
ALTER TABLE `tab_pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `tab_photo`
--
ALTER TABLE `tab_photo`
  ADD PRIMARY KEY (`id_photo`);

--
-- Index pour la table `tab_prix`
--
ALTER TABLE `tab_prix`
  ADD PRIMARY KEY (`id_prix`);

--
-- Index pour la table `tab_recette_ingredients`
--
ALTER TABLE `tab_recette_ingredients`
  ADD PRIMARY KEY (`id_recette_ingredient`),
  ADD KEY `id_recette` (`id_recette`),
  ADD KEY `id_ingredient` (`id_ingredient`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant unique', AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tab_recette_ingredients`
--
ALTER TABLE `tab_recette_ingredients`
  ADD CONSTRAINT `tab_recette_ingredients_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `recettes` (`id`),
  ADD CONSTRAINT `tab_recette_ingredients_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `tab_ingredient` (`id_ingredient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
