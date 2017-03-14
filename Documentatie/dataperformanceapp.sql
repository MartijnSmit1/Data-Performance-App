-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 14 mrt 2017 om 08:14
-- Serverversie: 5.7.11
-- PHP-versie: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataperformanceapp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personaldata`
--

CREATE TABLE `personaldata` (
  `id` int(11) NOT NULL,
  `personalHours` int(11) NOT NULL,
  `hoursLogged` int(11) NOT NULL,
  `storyPoints` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `personaldata`
--

INSERT INTO `personaldata` (`id`, `personalHours`, `hoursLogged`, `storyPoints`, `User_id`, `month_id`) VALUES
(1, 168, 79, 82, 1, 12),
(2, 176, 154, 2, 1, 1),
(3, 160, 50, 5, 1, 2),
(4, 144, 117, 16, 2, 12),
(5, 144, 146, 95, 2, 1),
(6, 128, 37, 0, 2, 2),
(7, 168, 77, 36, 3, 12),
(8, 176, 129, 21, 3, 1),
(9, 160, 30, 9, 3, 2),
(10, 168, 83, 54, 4, 12),
(11, 176, 142, 15, 4, 1),
(12, 160, 46, 12, 4, 2),
(13, 176, 0, 0, 5, 1),
(14, 160, 2, 0, 5, 2),
(15, 32, 80, 354, 6, 12),
(16, 32, 296, 58, 6, 1),
(17, 32, 0, 29, 6, 2),
(18, 168, 90, 38, 7, 12),
(19, 176, 135, 55, 7, 1),
(20, 160, 43, 24, 7, 2),
(35, 24, 8, 6, 8, 12),
(36, 40, 28, 4, 8, 1),
(37, 32, 7, 3, 8, 2),
(38, 168, 112, 13, 9, 12),
(39, 176, 121, 62, 9, 1),
(40, 160, 28, 0, 9, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teamoutput`
--

CREATE TABLE `teamoutput` (
  `id` int(11) NOT NULL,
  `totalRequiredHours` int(11) NOT NULL,
  `totalHoursLogged` int(11) NOT NULL,
  `amoutTeamMembers` int(11) NOT NULL,
  `storyPointsTeam` int(11) NOT NULL,
  `averageStoryPoints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `teamoutput`
--

INSERT INTO `teamoutput` (`id`, `totalRequiredHours`, `totalHoursLogged`, `amoutTeamMembers`, `storyPointsTeam`, `averageStoryPoints`) VALUES
(2, 992, 215, 9, 82, 9),
(3, 1232, 1123, 9, 312, 35),
(4, 1040, 645, 8, 600, 75);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `Profile`) VALUES
(1, 'Steve', 'Jobs', ''),
(2, 'Shawn ', 'Cory Carter', ''),
(3, 'Kim', 'Kardasian', ''),
(4, 'Onika', 'Tanya Maraj', ''),
(5, 'Marie', 'Forleo', ''),
(6, 'Doutze', 'Kroes', ''),
(7, 'Zidedine', 'Zidane', ''),
(8, 'Bruce', 'lee', ''),
(9, 'LeBron', 'James', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `personaldata`
--
ALTER TABLE `personaldata`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `teamoutput`
--
ALTER TABLE `teamoutput`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `personaldata`
--
ALTER TABLE `personaldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT voor een tabel `teamoutput`
--
ALTER TABLE `teamoutput`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
