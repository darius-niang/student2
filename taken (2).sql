-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 11 sep. 2020 à 20:15
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `taken`
--

-- --------------------------------------------------------

--
-- Structure de la table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `iduser` int(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `datesign` date NOT NULL DEFAULT current_timestamp(),
  `times` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `attendance`
--

INSERT INTO `attendance` (`id`, `iduser`, `student_name`, `datesign`, `times`) VALUES
(1, 12, 'vavava', '2020-08-27', '15:38:36'),
(2, 20, 'kipre kipre', '2020-08-28', '17:15:08'),
(3, 25, 'fatim', '2020-08-28', '18:19:08'),
(10, 27, 'verra', '2020-08-28', '19:09:57'),
(11, 28, 'chanfort yao', '2020-08-29', '01:13:48'),
(14, 29, 'gael', '2020-09-01', '11:43:42'),
(52, 29, 'gael', '2020-09-01', '18:14:42'),
(64, 32, 'morelle', '2020-09-02', '16:03:35'),
(77, 32, 'morelle', '2020-09-03', '15:00:35'),
(78, 1, 'leo koto', '2020-09-03', '20:54:17'),
(79, 24, 'fatou', '2020-09-04', '14:01:52'),
(80, 98, 'leo koto', '2020-09-09', '19:29:39'),
(81, 99, 'Darius Brou', '2020-09-09', '00:00:18'),
(82, 97, 'Natou Bouki', '2020-09-09', '00:00:19'),
(83, 148, 'Lebatho', '2020-09-11', '00:00:18');

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE `prof` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `sex` varchar(25) NOT NULL,
  `file_name` varchar(11) NOT NULL,
  `uploaded_on` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phone`, `sex`, `file_name`, `uploaded_on`) VALUES
(97, 'Natou Bouki', 'sery3@gmail.com', '99999', '2346457', 'femelle', 'uploads/617', '2020-09-05 09:48:50'),
(98, 'leo koto', 'fatou@gmail.com', 'wwwww', '8976544', 'male', 'uploads/952', '2020-09-05 11:25:03'),
(99, 'Darius Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/686', '2020-09-05 11:29:24'),
(100, 'Darius Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/481', '2020-09-05 11:29:25'),
(101, 'Darius Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/697', '2020-09-05 11:29:25'),
(102, 'Darius Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/700', '2020-09-05 11:29:26'),
(103, 'Darius Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/121', '2020-09-05 11:29:26'),
(104, 'Darius  Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/873', '2020-09-05 11:29:45'),
(105, 'Darius  Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/428', '2020-09-05 11:29:46'),
(106, 'Darius  Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/644', '2020-09-05 11:29:46'),
(107, 'Darius  Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/131', '2020-09-05 11:29:46'),
(108, 'Darius  Brou', 'leokn@gmail.com', 'cccccc', '097875817', 'male', 'uploads/445', '2020-09-05 11:29:46'),
(109, 'leo koto', 'leok@gmail.com', '111', '09787587', 'femelle', 'uploads/218', '2020-09-07 19:53:43'),
(110, 'leo koto', 'leonk@gmail.com', '1111', '8976544s', 'autre', 'uploads/547', '2020-09-07 19:54:40'),
(111, 'leo koto', 'leoko@gmail.com', '111', '2135365', 'femelle', 'uploads/497', '2020-09-07 19:55:59'),
(112, 'kipre kipre ar', 'kiprea@gmail.com', 'yyyyy', '097875870', 'male', 'uploads/602', '2020-09-08 12:10:45'),
(113, 'kipre kipre ar', 'kiprea@gmail.com', 'yyyyy', '097875870', 'male', 'uploads/324', '2020-09-08 12:11:04'),
(114, 'leo koto', 'leok@gmail.com', 'ffff', '09787587', 'femelle', 'uploads/228', '2020-09-08 12:23:21'),
(115, 'leo koto', 'fatou@gmail.com', 'vvvv', '09787587', 'femelle', 'uploads/937', '2020-09-08 12:36:47'),
(116, 'leo koto', 'leok@gmail.com', 'dddd', '09787587', 'male', 'uploads/805', '2020-09-08 12:44:28'),
(117, 'leo koto', 'leok@gmail.com', 'vvvv', '2135365', 'femelle', 'uploads/630', '2020-09-08 13:14:34'),
(118, 'Darius Brou', 'leok@gmail.com', 'xxxxx', '09787587', 'male', 'uploads/844', '2020-09-08 13:22:11'),
(119, 'gael', 'ga23@gmail.com', '66666', '09787588', 'male', 'uploads/249', '2020-09-08 13:23:24'),
(120, 'leo koto', 'leok@gmail.com', 'bbbb', '09787587', 'femelle', 'uploads/538', '2020-09-08 14:12:17'),
(121, 'Darius Brou', 'leok@5gmail.com', 'vvvv', '0978758', 'male', 'uploads/300', '2020-09-08 14:24:06'),
(129, 'leo koto', 'leok@gmail.com', 'xxx', '09787587', 'femelle', 'uploads/440', '2020-09-08 15:40:54'),
(130, 'leo koto', 'leok@gmail.com', 'llll', '09787587', 'femelle', 'uploads/143', '2020-09-08 19:07:24'),
(131, 'leo koto', 'leok@egmail.com', 'qqqqq', '09787580', 'male', 'uploads/221', '2020-09-08 23:24:26'),
(132, 'leo koto', 'leok@gmail.com', 'vvvv', '09787587', 'male', 'uploads/318', '2020-09-08 23:25:34'),
(133, 'leo koto', 'leok@gmail.com', 'sssss', '09787587', 'femelle', 'uploads/286', '2020-09-08 23:28:54'),
(134, 'leo koto', 'leokd@gmail.com', 'ssss', '0978758435', 'male', 'uploads/555', '2020-09-09 01:45:18'),
(135, 'leo koto', 'leok@gmail.com', 'ssss', '09787587', 'male', 'uploads/290', '2020-09-09 01:45:59'),
(136, 'leo koto', 'leok@gmail.com', 'mmm', '09787587', 'male', 'uploads/941', '2020-09-09 03:08:22'),
(137, 'dwa', 'ga23@gmail.com', 'ddd', '09787587', 'male', 'uploads/920', '2020-09-09 03:12:49'),
(138, 'Darius Brou', 'leok@gmail.com', 'www', '09787587', 'male', 'uploads/419', '2020-09-11 16:21:56'),
(139, 'Darius Brou', 'leok@gmail.com', 'www', '09787587', 'male', 'uploads/164', '2020-09-11 17:08:09'),
(140, 'Darius Brou', 'leok@gmail.com', 'www', '09787587', 'male', 'uploads/985', '2020-09-11 17:10:14'),
(141, 'Darius Brou', 'leok@gmail.com', 'www', '09787587', 'male', 'uploads/682', '2020-09-11 17:10:18'),
(142, 'Darius Brou', 'leok@gmail.com', 'www', '09787587', 'male', 'uploads/910', '2020-09-11 17:11:35'),
(143, 'Darius Brou', 'leok@gmail.com', 'www', '09787587', 'male', 'uploads/669', '2020-09-11 17:11:37'),
(144, 'Darius Brou', 'leok@gmail.com', 'www', '09787587', 'male', 'uploads/906', '2020-09-11 17:12:14'),
(145, 'leo koto', 'leosdk@gmail.com', 'aaaa', '09787587#$', 'male', 'uploads/524', '2020-09-11 17:53:31'),
(146, 'leo koto', 'leodk@gmail.com', 'asdfg', '1233242342', 'male', 'uploads/715', '2020-09-11 18:19:34'),
(147, 'Darius Brou', 'mariam@gmail.fr', 'aaaa', '12', 'male', 'uploads/588', '2020-09-11 18:33:02'),
(148, 'Lebatho', 'darius45@gmail.com', 'lobiagor', '0978758709', 'male', 'uploads/408', '2020-09-11 18:37:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prof`
--
ALTER TABLE `prof`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `prof`
--
ALTER TABLE `prof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
