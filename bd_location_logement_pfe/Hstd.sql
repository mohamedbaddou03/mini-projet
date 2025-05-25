

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `administrateur` (
  `Id_administrateur` int(11) NOT NULL,
  `Nom_utilisateur` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `administrateur` (`Id_administrateur`, `Nom_utilisateur`, `Email`, `Mot_de_passe`, `photo`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '');
CREATE TABLE `annonce` (
  `Id_annonce` int(11) NOT NULL,
  `Titre` varchar(150) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Logement_meublé` tinyint(1) NOT NULL,
  `Surface` decimal(10,0) NOT NULL,
  `N_chambre` int(11) NOT NULL,
  `Date_deposition` timestamp NOT NULL DEFAULT current_timestamp(),
  `N_colocation_possible` int(11) NOT NULL,
  `Photo1` varchar(150) NOT NULL,
  `Photo2` varchar(150) NOT NULL,
  `Photo3` varchar(150) NOT NULL,
  `Photo4` varchar(150) NOT NULL,
  `Photo5` varchar(150) NOT NULL,
  `Id_propriétaire` int(11) NOT NULL,
  `Description_logement` text NOT NULL,
  `Ville` varchar(20) NOT NULL,
  `Université` varchar(150) NOT NULL,
  `Pays` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `annonce` (`Id_annonce`, `Titre`, `Adresse`, `Type`, `Prix`, `Logement_meublé`, `Surface`, `N_chambre`, `Date_deposition`, `N_colocation_possible`, `Photo1`, `Photo2`, `Photo3`, `Photo4`, `Photo5`, `Id_propriétaire`, `Description_logement`, `Ville`, `Université`, `Pays`) VALUES
(1, 'une maison a louer a ourzazat', 'rue atlas lot talhaoui nr 144gg ourzazat', 'Maison', 1500, 0, '0', 7, '2022-04-24 15:26:21', 5, '../Annonce_images/62656c1d05b960.99458842.jpg', '../Annonce_images/62656c1d05b960.99458842.jpg', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc'),
(2, 'une appartement à louer à lhoceima', 'rue bn Tlha lot talhaoui nr232 ', 'Appartement', 1200, 0, '0', 0, '2022-04-24 15:27:31', 2, '../Annonce_images/62656c63529e64.64322046.jpg', '../Annonce_images/67f412dd579367.87329733.jpg', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc'),
(3, 'chambre a louer a taourirte', 'rue taourirte lot talhaoui nr 144gg ourzazat', 'Chambre', 700, 0, '0', 0, '2022-04-24 15:29:43', 0, '../Annonce_images/62656ce76612e6.56773459.jpg', '../Annonce_images/67feec2d8209c7.22386977.jpeg', '', '', '', 1, '  ', 'taourirte', '', 'Maroc'),
(4, 'une bureau a louer a ourzazat', 'rue atlas lot talhaoui nr 144gg ourzazat', 'Bureau', 1150, 0, '0', 0, '2022-04-24 15:31:27', 4, '../Annonce_images/62656d4f82d546.07953802.jpg', '../Annonce_images/67feec2d8209c7.22386977.jpeg', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc'),
(5, 'une maison a louer a ourzazat', 'rue atlas lot talhaoui nr 144gg ourzazat', 'Maison', 1500, 0, '0', 7, '2022-04-24 15:26:21', 5, '../Annonce_images/62656c1d05b960.99458842.jpg', '../Annonce_images/67f2af6e71f837.18495454.png', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc'),
(6, 'une appartement à louer à lhoceima', 'rue bn Tlha lot talhaoui nr232 ', 'Appartement', 1200, 0, '0', 0, '2022-04-24 15:27:31', 2, '../Annonce_images/67f412dd579367.87329733.jpg', '../Annonce_images/67f2af6e71f837.18495454.png', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc'),
(7, 'chambre a louer a taourirte', 'rue taourirte lot talhaoui nr 144gg ourzazat', 'Chambre', 700, 0, '0', 0, '2022-04-24 15:29:43', 0, '../Annonce_images/67f6a0861540a1.68616997.jpg', '../Annonce_images/67f2af6e71f837.18495454.png', '', '', '', 1, '  ', 'taourirte', '', 'Maroc'),
(8, 'une bureau a louer a ourzazat', 'rue atlas lot talhaoui nr 144gg ourzazat', 'Bureau', 500, 0, '0', 0, '2022-04-24 15:31:27', 4, '../Annonce_images/67feec2d8209c7.22386977.jpeg', '../Annonce_images/67f2af6e71f837.18495454.png', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc'),
(9, 'une bureau a louer a ourzazat', 'rue atlas lot talhaoui nr 144gg ourzazat', 'Bureau', 1100, 0, '0', 0, '2022-04-24 15:31:27', 4, '../Annonce_images/6802b516793231.33012308.jpeg', '../Annonce_images/67f2af6e71f837.18495454.png', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc'),
(10, 'une bureau a louer a ourzazat', 'rue atlas lot talhaoui nr 144gg ourzazat', 'Bureau', 1550, 0, '0', 0, '2022-04-24 15:31:27', 4, '../Annonce_images/67f2af6e71f837.18495454.png', '../Annonce_images/67f2af6e71f837.18495454.png', '', '', '', 1, '  ', 'ourzazat', '', 'Maroc');


CREATE TABLE `etudiant` (
  `Id_etudiant` int(11) NOT NULL,
  `Nom_utilisateur` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `etudiant` (`Id_etudiant`, `Nom_utilisateur`, `Email`, `Mot_de_passe`, `photo`) VALUES
(1, 'hicham louissi', 'blabalbloblobli@gmail.com', 'aa', ''),
(2, 'az', 'aze', '123', ''),
(3, 'etudiant', 'etudiant@gmail.com', 'etudiant', ''),
(4, 'Hicham', 'Hicham.louissi20@ump.ac.ma', 'b', ''),
(17, 'badou_ourzazi', 'badou_ourzazi@hotmail.ma', 'jjj', ''),
(18, 'badou_ourzazi', 'badouourzazi2002@gmail.com', 'uu', ''),
(19, 'badou_ourzazi', 'badouourzazi2002@gmail.com', 'hhh', ''),
(20, 'badou ', 'badou2020@gmail.com', 'jj', ''),
(21, 'badou jad', 'badouourzazi2002@gmail.com', 'jjkk', '');


CREATE TABLE `propriétaire` (
  `Id_propriétaire` int(11) NOT NULL,
  `Nom_utilisateur` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `Gmail` varchar(50) NOT NULL,
  `Telephone` varchar(13) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `propriétaire` (`Id_propriétaire`, `Nom_utilisateur`, `Email`, `ville`, `Gmail`, `Telephone`, `Mot_de_passe`, `photo`) VALUES
(1, 'ourzazi', 'badou', 'ourzazat', 'badouourzazi2020@gmail.com', '0611241065', 'h', ''),
(65, 'badou ourzazi', 'badou ourzazi', 'ourzazat', 'badouourzazi2020@gmail.com', '0611241065', 'a', ''),
(66, 'badou', 'badouourzazi2020@gmail.com', 'ourzazat', 'badouourzazi2020@gmail.com', '0611241065', 'i', ''),
(70, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(71, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(72, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(73, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(74, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(75, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(76, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(77, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(78, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(79, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(80, 'g', 'g', 'g', 'g', 'g', 'g', ''),
(81, 'w', 'w', 'w', 'w', 'w', 'ww', ''),
(82, 'w', 'w', 'w', 'w', 'w', 'ww', ''),
(83, 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', '');


ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`Id_administrateur`);


ALTER TABLE `annonce`
  ADD PRIMARY KEY (`Id_annonce`),
  ADD KEY `Id_propriétaire_fk` (`Id_propriétaire`);


ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`Id_etudiant`);



ALTER TABLE `propriétaire`
  ADD PRIMARY KEY (`Id_propriétaire`);



ALTER TABLE `administrateur`
  MODIFY `Id_administrateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `annonce`
  MODIFY `Id_annonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;



ALTER TABLE `etudiant`
  MODIFY `Id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;



ALTER TABLE `propriétaire`
  MODIFY `Id_propriétaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;
