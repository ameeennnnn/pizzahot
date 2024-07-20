-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Jeudi 18 Mai 2023 à 22:20
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `bd123`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `client`
-- 

CREATE TABLE `client` (
  `tel` varchar(8) NOT NULL default '',
  `nomcl` varchar(25) NOT NULL default '',
  `prenom` varchar(25) NOT NULL default '',
  `adresse` varchar(100) NOT NULL default '',
  `mot` varchar(6) NOT NULL default '',
  PRIMARY KEY  (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `client`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `commande`
-- 

CREATE TABLE `commande` (
  `idpiz` char(3) NOT NULL default '',
  `tel` varchar(8) NOT NULL default '',
  `datecmd` datetime NOT NULL default '0000-00-00 00:00:00',
  `qte` int(11) NOT NULL default '0',
  PRIMARY KEY  (`idpiz`,`tel`,`datecmd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `commande`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `pizza`
-- 

CREATE TABLE `pizza` (
  `idpiz` char(3) NOT NULL default '',
  `nom` varchar(30) NOT NULL default '',
  `detail` varchar(200) NOT NULL default '',
  `prix` decimal(6,3) NOT NULL default '0.000',
  PRIMARY KEY  (`idpiz`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `pizza`
-- 

INSERT INTO `pizza` VALUES ('Fmr', 'Fruit de mer', 'Tomate,Mozzarella,fruit de mer', 18.500);
INSERT INTO `pizza` VALUES ('Mgh', 'Margherita', 'tomate,Mozzarella,Basilic', 8.000);
INSERT INTO `pizza` VALUES ('Nap', 'Napolitaine', 'Tomate,Mozzarella,thon,anchois', 12.000);
INSERT INTO `pizza` VALUES ('Nep', 'Neptune', 'Tomate,Mozzarella,Thon', 10.500);
INSERT INTO `pizza` VALUES ('Roy', 'Royale', 'Tomate,Mozzarella,jambon,champion', 14.500);
        