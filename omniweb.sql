-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 19 mars 2024 à 11:26
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omniweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `story`
--

DROP TABLE IF EXISTS `story`;
CREATE TABLE IF NOT EXISTS `story` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `resume` text NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `story`
--

INSERT INTO `story` (`id`, `date`, `resume`, `text`) VALUES
(1, '2022-2023', 'Michaël et Florentin se rencontrent en formation Développeur Web et Web Mobile en 2022...', 'Michaël et Florentin se rencontrent en formation Développeur Web et Web Mobile en 2022. Après obtention de leur Titre Professionnel, ils continuent tous deux leur aventure dans le numérique avec la formation Concepteur Développeur d’Applications. C’est à ce moment que Léa rencontre les garçons (et non, ce n’est pas Hélène).\r\n'),
(2, 'Juin 2023', 'Le trio commence à parler de création d’entreprise...', 'Le trio commence à parler de création d’entreprise. Tous les trois ayant des compétences similaires, grâce à la formation mais aussi des compétences différentes grâce à leurs sensibilités et appétences. Florentin a un passé de commercial dans une grande surface spécialisée dont nous ne citerons pas le nom, mais qui est un bon gagne pain (oui on aime l’humour à Omni Web). Michaël, étant le cadet du trio, n’a pas eu beaucoup le temps d’expérimenter la vie professionnelle, mais s’est doté de quelques années d’université, notamment en histoire et en droit. Quant à Léa, elle baigne depuis la fin du lycée dans le numérique, elle s’est armée d’une certaine expérience dans la communication et le web.\r\n'),
(3, 'Octobre 2023', 'Michäel, Florentin et Léa obtiennent leur Titre Professionnel Concepteur Développeur d’Applications et décident de se lancer dans la création d’une entreprise dans le numérique...', 'Michäel, Florentin et Léa obtiennent leur Titre Professionnel Concepteur Développeur d’Applications et décident de se lancer dans la création d’une entreprise dans le numérique. Petite anecdote pour que vous en appreniez plus sur vos trois entrepreneurs préférés : pour l’examen, les trois ont dû présenter un projet web qu’ils avaient entièrement réalisé (étonnamment vous allez vite comprendre la passion la plus importante de chacun d’entre eux).\r\nMichaël a proposé au jury un projet de jeu “mémory”, Florentin a opté pour le site d’un groupe de musique (et pas n’importe lequel, le sien !) et Léa a dévoilé un site pour les entraîneurs de basketball, contenant de nombreux exercices.\r\n'),
(4, 'Novembre 2023', 'Le trio s’informe et se tourne vers la BGE pour les accompagner dans leur projet entrepreneurial...', 'Le trio s’informe et se tourne vers la BGE pour les accompagner dans leur projet entrepreneurial. Après un premier atelier, ils ressortent avec encore plus d’envie d’entreprendre, de nouvelles idées et toujours plus de motivation. Leur conseillère leur propose une formation, et ils se lancent avec enthousiasme pour en apprendre davantage. Ils commencent alors une formation Construire et Conduire un Projet Entrepreneurial qui leur apportera les bases et les réflexions nécessaires pour la suite de leur aventure.'),
(5, 'Février 2024', 'Ressorti fort de nouveaux apprentissages de leur formation, le trio comprend que la création d’entreprise à plusieurs nécessite de prendre des décisions parfois compliquées, c’est pourquoi Florentin préfère quitter l’aventure (et pour les plus curieux...', 'Ressorti fort de nouveaux apprentissages de leur formation, le trio comprend que la création d’entreprise à plusieurs nécessite de prendre des décisions parfois compliquées, c’est pourquoi Florentin préfère quitter l’aventure (et pour les plus curieux, une des raisons principales de son départ est la divergence de point de vue quant à la direction de l’entreprise). Michaël et Léa décident suite à cela de tenter de rentrer en incubatest (incubateur de la BGE) et travaillent dur pour prouver que leur projet mérite une place dans le dispositif.'),
(6, 'Mars 2024', 'Après avoir passé deux oraux de 15 minutes à pitcher leur projet, Michaël et Léa (alors qu’ils étaient à Cultura...', 'Après avoir passé deux oraux de 15 minutes à pitcher leur projet, Michaël et Léa (alors qu’ils étaient à Cultura, en train de chercher des mangas -après tout, on est tous humains, non ?) ont reçu l’appel tant attendu.\r\nLe 11 mars 2024 l’aventure commence enfin, attention, voilà l’Agence de communication que vous attendiez tous avec impatience : Omni Web ! \r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
