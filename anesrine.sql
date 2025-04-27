-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 27 avr. 2025 à 08:07
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `anesrine`
--

-- --------------------------------------------------------

--
-- Structure de la table `logement`
--

CREATE TABLE `logement` (
  `id` int(100) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `localisation` varchar(200) NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logement`
--

INSERT INTO `logement` (`id`, `titre`, `description`, `localisation`, `prix`) VALUES
(14, 'sssssdddddd', 'ss', 'ssss', 500),
(17, 'aa', 'aaaaa', 'zzzaa', 100);

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `auteur_id` int(11) NOT NULL,
  `cible_id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `statut` varchar(50) DEFAULT 'En attente',
  `date_soumission` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `categorie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(255) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `dateDebut` datetime NOT NULL,
  `dateFin` datetime NOT NULL,
  `statut` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `titre`, `dateDebut`, `dateFin`, `statut`) VALUES
(2, 'aa', '2025-04-16 00:00:00', '2025-04-24 00:00:00', 'a'),
(3, 'aaaa', '2025-04-24 00:00:00', '2025-05-03 00:00:00', 'aaaa'),
(4, 'aa', '2025-02-01 00:00:00', '2025-03-31 00:00:00', 'aaaa'),
(5, 'aa', '2025-02-01 00:00:00', '2025-03-31 00:00:00', 'aaaa'),
(6, 'aaaaaaaa', '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'aaaaaaaaaa'),
(7, 'aaaaaaaa', '2025-04-01 00:00:00', '2025-04-30 00:00:00', 'aaaaaaaaaa'),
(8, 'aaaaaaaaaaaa', '2025-04-01 00:00:00', '2025-04-18 00:00:00', 'aaaaaaaaaaaa'),
(9, 's', '2025-04-01 00:00:00', '2025-04-09 00:00:00', 'ss');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `nom`, `localisation`, `image`, `description`, `prix`, `lat`, `lng`, `image1`, `image2`, `user_id`) VALUES
(11, 'PastaCosi', 'FDSQFSD', 'C:\\Users\\Amirov\\Downloads\\scs.png', 'pasta LeveL Top XXX', 12, '0.000000', '0.000000', 'C:\\Users\\Amirov\\Downloads\\cscc.png', 'C:\\Users\\Amirov\\Downloads\\csc.png', 10),
(12, 'pizza go', 'ariana', 'C:\\Users\\Amirov\\Downloads\\spring_boog_400x400-removebg-preview.png', 'pizza toppppp level xxxxxxxxx top', 25, '0.000000', '0.000000', 'C:\\Users\\Amirov\\Downloads\\aaa.png', 'C:\\Users\\Amirov\\Downloads\\aa.png', 10),
(13, 'AHAHAHAHA', 'sgfsfd', 'C:\\Users\\Amirov\\Desktop\\463668828_543931008582174_3772095598309020607_n.jpg', 'sfgsfdfgdsgsfdsgfd fdssfdfgfg sgfd', 11, '0.000000', '0.000000', 'C:\\Users\\Amirov\\Downloads\\IMG_0056 (1).jpeg', 'C:\\Users\\Amirov\\Downloads\\e48f6080-eeb3-4bcf-8d8c-89cc4274e1fe.jpeg', 10),
(14, 'azeaezrazer', 'Ariana', 'C:\\Users\\Amirov\\Downloads\\agauche.png', 'jhfbsjhqdfsb bfdqhjqd fqdhqshdjf fqds', 10, '0.000000', '0.000000', 'C:\\Users\\Amirov\\Downloads\\spring_boog_400x400-removebg-preview.png', 'C:\\Users\\Amirov\\Downloads\\logo.png', 11);

-- --------------------------------------------------------

--
-- Structure de la table `transport`
--

CREATE TABLE `transport` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponibilte` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transport`
--

INSERT INTO `transport` (`id`, `type`, `description`, `prix`, `disponibilte`, `image`, `user_id`) VALUES
(1, 'bmw', 'niveau bmw', 20, 0, '47151.webp', 2),
(3, 'Mercedes-Benz', 'Marque Mercedes-Benz Modèle Classe C Génération (205) Berline 03/2014 - 04/2021 Couleur extérieure Gris anthracite Couleur intérieure Noir Sellerie Velours Nombre de places 5 Nombre de portes 4', 500, 0, 'Mercedes-Benz-67c987975fa6b.webp', 5),
(5, 'Audi', 'Audi 2024 avec télephone +216 20139667', 200, 0, 'oooo-67ca3e9f20944.jpg', 5),
(16, 'golf 7', 'golf 7  golf 7 golf 7 golf 7', 11, 0, 'C:\\Users\\Amirov\\Downloads\\pexels-pixabay-209981.jpg', 10),
(17, 'clio 5', 'bjhdsqbfdsqjhfvqs hfdsqhjbfdsqj', 100, 0, 'C:\\Users\\Amirov\\Downloads\\pexels-sora-shimazaki-5926389.jpg', 10),
(18, 'fsdgdsfda', 'dqfsgsfdgdsfds gsgfdsgsfdgs', 230, 0, 'C:\\Users\\Amirov\\Downloads\\pexels-emirkhan-bal-221704-953864-removebg-preview.png', 10),
(19, 'jfgdnjsd', 'nbjgfsdjhgsfdbhjbgfjhds hbfdsjhbfsdb', 21, 0, 'C:\\Users\\Amirov\\Downloads\\pexels-yassen-kounchev-19845411.jpg', 10);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `address`, `phone`, `birth_date`, `role`) VALUES
(2, 'mohamed', 'rayen esprit', 'rayen@med.com', '$2a$10$3WzMZ5cxRh.oGZv0dXntEuSuK6ZN9tHeCZTKfMu/x8pvSQ1eRA7De', 'esprit', '25362547', '2025-04-15', 'Admin'),
(3, 'med', 'rayen', 'med@esprit.tn', '$2a$10$VnPW1qTJ1DZREbajYcXuSuvNw47k.cYJ8cdQIP5fwJSBPprCMUkNy', 'espri', '25362514', '2025-04-08', 'Client'),
(5, 'medTransporteur', 'rayen', 'medTransporteur@esprit.tn', '$2a$10$VnPW1qTJ1DZREbajYcXuSuvNw47k.cYJ8cdQIP5fwJSBPprCMUkNy', 'espri', '25362514', '2025-04-08', 'Transporteur'),
(6, 'medHôte', 'rayen', 'medHôte@esprit.tn', '$2a$10$VnPW1qTJ1DZREbajYcXuSuvNw47k.cYJ8cdQIP5fwJSBPprCMUkNy', 'espri', '25362514', '2025-04-08', 'Hôte'),
(7, 'medRestaurant', 'rayen', 'medRestaurant@esprit.tn', '$2a$10$VnPW1qTJ1DZREbajYcXuSuvNw47k.cYJ8cdQIP5fwJSBPprCMUkNy', 'espri', '25362514', '2025-04-08', 'Restaurant'),
(8, 'medVoyageur', 'rayen', 'medVoyageur@esprit.tn', '$2a$10$VnPW1qTJ1DZREbajYcXuSuvNw47k.cYJ8cdQIP5fwJSBPprCMUkNy', 'espri', '25362514', '2025-04-08', 'Voyageur'),
(9, 'ons', 'ons', 'ons@gmail.com', '$2a$10$o4G0h9tNG5eJ6TgkkMJpYudIs2Ht7.3CMbhkHcKIb9.1GXRWd9zL2', 'tunis', '23456789', '2025-04-09', 'Hôte'),
(10, 'oussema', 'oussema', 'oussema@gmail.com', '$2a$10$Mo6m84JMCxdXbVgFf39vz.QVuYI49G9/.EKnErP84LIQii7wLyq1y', 'france', '34567890', '2025-04-22', 'Voyageur'),
(11, 'amir', 'jbari', 'amir@gmail.com', '$2a$10$HvyPoVynnoplH.38e053tOHYmWF1mGwfKViZhN5SfK6rM2dtfwbbC', 'tunis', '58261801', '2025-04-15', 'Restaurant'),
(12, 'amara', 'eazgvrahez', 'a@gmail.com', '$2a$10$kOtMnCiWvEDzr9LrFj6P0uPi6xhIf9Yj/2QtXlG8doOzQZzb6rq9u', 'kef', '24242424', '2025-04-07', 'Transporteur');

-- --------------------------------------------------------

--
-- Structure de la table `vlog`
--

CREATE TABLE `vlog` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `logement`
--
ALTER TABLE `logement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteur_id` (`auteur_id`),
  ADD KEY `cible_id` (`cible_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EB95123FA76ED395` (`user_id`);

--
-- Index pour la table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66AB212EA76ED395` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `vlog`
--
ALTER TABLE `vlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `logement`
--
ALTER TABLE `logement`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `vlog`
--
ALTER TABLE `vlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `reclamation_ibfk_1` FOREIGN KEY (`auteur_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reclamation_ibfk_2` FOREIGN KEY (`cible_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `fk_restaurant_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `fk_transport_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vlog`
--
ALTER TABLE `vlog`
  ADD CONSTRAINT `vlog_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
