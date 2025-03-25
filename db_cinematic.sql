-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 25 mars 2025 à 09:18
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_cinematic`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `realisateur` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `date_sortie` date NOT NULL,
  `affiche` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `realisateur`, `duree`, `date_sortie`, `affiche`, `genre_id`, `description`) VALUES
(1, 'Dune', 'Denis Villeneuve', '02:35:00', '2021-10-22', 'https://image.tmdb.org/t/p/w500/qpyaW4xUPeIiYA5ckg5zAZFHvsb.jpg', 2, 'Dans un futur lointain de l\'humanité, le duc Leto Atréides reçoit de l\'Empereur la gestion de la planète désertique Arrakis, aussi nommée Dune. Cette planète est l\'unique source de la substance la plus précieuse de l\'Imperium : l\'Épice, une drogue qui prolonge la vie et donne des capacités surhumaines. Alors que Leto prend le contrôle d\'une opération d\'extraction d\'Épice, une trahison brutale fait de son fils Paul et de la mère de celui-ci, Dame Jessica, des fugitifs parmi les Fremen, le peuple du désert d\'Arrakis.'),
(2, 'Spider-Man: No Way Home', 'Jon Watts', '02:28:00', '2021-12-17', 'https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg', 1, 'Pour la première fois dans l\'histoire cinématographique de Spider-Man, notre sympathique héros est démasqué et ne peut désormais plus séparer sa vie normale de ses lourdes responsabilités de super-héros. Quand il demande de l\'aide à Doctor Strange, les enjeux deviennent encore plus dangereux, le forçant à découvrir ce qu\'être Spider-Man signifie véritablement.'),
(3, 'Top Gun: Maverick', 'Joseph Kosinski', '02:11:00', '2022-05-27', 'https://image.tmdb.org/t/p/w500/62HCnUTziyWcpDaBO2i1DX17ljH.jpg', 1, 'Après plus de 30 ans de service en tant que l\'un des meilleurs aviateurs de la Marine, Pete \"Maverick\" Mitchell est à sa place, repoussant les limites en tant que pilote d\'essai courageux. Face à un avenir incertain et confronté aux fantômes de son passé, Maverick doit affronter ses peurs les plus profondes pour une mission qui exigera les plus grands des sacrifices.'),
(4, 'Avatar: The Way of Water', 'James Cameron', '03:12:00', '2022-12-16', 'https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', 2, 'Se déroulant plus d\'une décennie après les événements du premier film, Avatar: La Voie de l\'eau raconte l\'histoire de la famille Sully, les épreuves auxquelles ils sont confrontés, les chemins qu\'ils doivent emprunter pour se protéger les uns les autres, les batailles qu\'ils doivent mener pour rester en vie et les tragédies qu\'ils endurent.'),
(5, 'The Batman', 'Matt Reeves', '02:55:00', '2022-03-04', 'https://image.tmdb.org/t/p/w500/74xTEgt7R36Fpooo50r9T25onhq.jpg', 1, 'Deux années à arpenter les rues en tant que Batman et à insuffler la peur chez les criminels ont mené Bruce Wayne au cœur des ténèbres de Gotham City. Avec seulement quelques alliés de confiance, le justicier solitaire s\'établit comme la seule incarnation de la vengeance parmi ses concitoyens. Lorsqu\'un tueur s\'en prend à l\'élite de Gotham par une série de machinations sadiques, une piste d\'indices cryptiques envoie le plus grand détective du monde sur une enquête dans la pègre.'),
(6, 'Encanto', 'Byron Howard', '01:49:00', '2021-11-24', 'https://image.tmdb.org/t/p/w500/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', 3, 'Dans un mystérieux endroit niché au cœur des montagnes de Colombie, la fantastique famille Madrigal habite une maison enchantée dans une cité pleine de vie, un endroit merveilleux appelé Encanto. L\'Encanto a doté chacun des enfants de la famille d\'une faculté magique allant d\'une force surhumaine au pouvoir de guérison. Seule Mirabel n\'a reçu aucun don particulier. Mais lorsque la magie de l\'Encanto se trouve menacée, la seule enfant ordinaire de cette famille extraordinaire va peut-être se révéler leur unique espoir.'),
(7, 'Elvis', 'Baz Luhrmann', '02:39:00', '2022-06-24', 'https://image.tmdb.org/t/p/w500/qBOKWqAFbveZ4ryjJJwbie6tXkQ.jpg', 4, 'La vie et l\'œuvre musicale d\'Elvis Presley à travers le prisme de ses rapports complexes avec son mystérieux manager, le colonel Tom Parker. Le film explorera leurs relations sur une vingtaine d\'années, de l\'ascension du chanteur à son statut de star inégalé, sur fond de bouleversements culturels et de la découverte par l\'Amérique de la fin de l\'innocence.'),
(8, 'Nope', 'Jordan Peele', '02:15:00', '2022-07-22', 'https://image.tmdb.org/t/p/w500/AcKVlWaNVVVFQwro3nLXqPljcYA.jpg', 2, 'Les habitants d\'une vallée perdue du fin fond de la Californie sont témoins d\'une découverte terrifiante à caractère surnaturel. Frère et sœur, OJ et Emerald Haywood, propriétaires d\'un ranch de chevaux, sont voisins d\'un parc d\'attractions au nom ironique de Jupiter\'s Claim, tenu par Ricky \"Jupe\" Park, un ancien acteur qui tire profit d\'une tragédie familiale survenue des années plus tôt.'),
(9, 'The Fabelmans', 'Steven Spielberg', '02:31:00', '2022-11-23', 'https://image.tmdb.org/t/p/w500/xId9zoiv5WPQOuxqykUDrlpmrUz.jpg', 4, 'Portrait profondément intime et émouvant de l\'enfance américaine au XXe siècle, The Fabelmans de Steven Spielberg nous plonge dans l\'histoire familiale du cinéaste qui a façonné sa vie personnelle et professionnelle. À partir du récit initiatique d\'un jeune homme solitaire qui aspire à réaliser ses rêves, le film explore les relations qui ont fait de nous ce que nous sommes.'),
(10, 'Uncharted', 'Ruben Fleischer', '01:56:00', '2022-02-18', 'https://image.tmdb.org/t/p/w500/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg', 5, 'Nathan Drake, voleur astucieux et intrépide, est recruté par le chasseur de trésors chevronné Victor \"Sully\" Sullivan pour retrouver la fortune de Ferdinand Magellan, disparue il y a 500 ans. Ce qui ressemble d\'abord à un simple casse devient finalement une course effrénée autour du globe pour s\'emparer du trésor avant l\'impitoyable Santiago Moncada. Si Nathan et Sully réussissent à déchiffrer les indices et résoudre l\'un des plus anciens mystères du monde, ils pourraient trouver un trésor de 5 milliards de dollars et peut-être même retrouver le frère de Nathan, disparu depuis longtemps... mais encore faudrait-il qu\'ils apprennent à travailler ensemble.');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_nom`) VALUES
(1, 'Action'),
(2, 'Science-fiction'),
(3, 'Comédie'),
(4, 'Drame'),
(5, 'Aventure');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `nom_role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id_role`, `nom_role`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `seances`
--

CREATE TABLE `seances` (
  `id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `places_disponibles` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `seances`
--

INSERT INTO `seances` (`id`, `film_id`, `date`, `heure`, `places_disponibles`) VALUES
(1, 1, '2025-02-10', '18:00:00', 100),
(2, 1, '2025-02-11', '20:00:00', 100),
(3, 1, '2025-02-12', '22:00:00', 100),
(4, 2, '2025-02-10', '19:00:00', 100),
(5, 2, '2025-02-11', '21:00:00', 100),
(6, 2, '2025-02-12', '23:00:00', 100),
(7, 3, '2025-02-15', '16:00:00', 100),
(8, 3, '2025-02-16', '18:30:00', 100),
(9, 3, '2025-02-17', '21:00:00', 100),
(10, 4, '2025-02-20', '17:00:00', 100),
(11, 4, '2025-02-21', '20:00:00', 100),
(12, 4, '2025-02-22', '22:30:00', 100),
(13, 5, '2025-02-12', '18:30:00', 100),
(14, 5, '2025-02-13', '21:00:00', 100),
(15, 5, '2025-02-14', '23:30:00', 100),
(16, 6, '2025-03-01', '14:00:00', 100),
(17, 6, '2025-03-02', '16:00:00', 100),
(18, 6, '2025-03-03', '18:00:00', 100),
(19, 7, '2025-03-05', '19:00:00', 100),
(20, 7, '2025-03-06', '21:30:00', 100),
(21, 7, '2025-03-07', '22:45:00', 100),
(22, 8, '2025-03-10', '17:30:00', 100),
(23, 8, '2025-03-11', '20:00:00', 100),
(24, 8, '2025-03-12', '22:15:00', 100),
(25, 9, '2025-03-15', '18:30:00', 100),
(26, 9, '2025-03-16', '21:00:00', 100),
(27, 9, '2025-03-17', '23:15:00', 100),
(28, 10, '2025-03-20', '17:00:00', 100),
(29, 10, '2025-03-21', '19:30:00', 100),
(30, 10, '2025-03-22', '21:45:00', 100);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int(11) NOT NULL,
  `email_utilisateur` varchar(100) NOT NULL,
  `password_utilisateur` varchar(100) NOT NULL,
  `prenom_utilisateur` varchar(100) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `seances`
--
ALTER TABLE `seances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `seances`
--
ALTER TABLE `seances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Contraintes pour la table `seances`
--
ALTER TABLE `seances`
  ADD CONSTRAINT `seances_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
