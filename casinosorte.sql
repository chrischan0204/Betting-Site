-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 14-Nov-2023 às 01:04
-- Versão do servidor: 8.0.35-0ubuntu0.20.04.1
-- versão do PHP: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `casinosorte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ultimo_login` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `usuario`, `senha`, `nome`, `IP`, `criado_em`, `ultimo_login`, `email`) VALUES
(1, 'leandro9180', '21232f297a57a5a743894a0e4a801fc3', 'Administrador', '204.157.105.226', '2023-10-19 15:59:10', '2023-11-05 18:31:47', 'admin@admin.com'),
(12, '8d4dd973d00edc9dfb288649ac0aa3d8', '8434da3ff4914bb1b1a0dae2f692a2b3', 'Leandro', NULL, '2023-11-07 02:43:11', NULL, 'leandrosilva9180@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `afiliados_config`
--

CREATE TABLE `afiliados_config` (
  `id` int NOT NULL,
  `cpaLvl1` decimal(10,2) DEFAULT NULL,
  `cpaLvl2` decimal(10,2) DEFAULT NULL,
  `cpaLvl3` decimal(10,2) DEFAULT NULL,
  `chanceCpa` decimal(5,2) DEFAULT NULL,
  `revShareFalso` decimal(5,2) DEFAULT NULL,
  `revShareLvl1` decimal(5,2) DEFAULT NULL,
  `revShareLvl2` decimal(5,2) DEFAULT NULL,
  `revShareLvl3` decimal(5,2) DEFAULT NULL,
  `minDepForCpa` decimal(10,2) DEFAULT NULL,
  `minResgate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `afiliados_config`
--

INSERT INTO `afiliados_config` (`id`, `cpaLvl1`, `cpaLvl2`, `cpaLvl3`, `chanceCpa`, `revShareFalso`, `revShareLvl1`, `revShareLvl2`, `revShareLvl3`, `minDepForCpa`, `minResgate`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id` int NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `image`, `link`, `criado_em`) VALUES
(11, 'banner 3', 'https://seusistemabet.xyz/public/uploads/58327102023090506.jpeg', '', '2023-10-27 13:05:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text,
  `logo` text,
  `telegram` text,
  `instagram` text,
  `whatsapp` text,
  `suporte` text,
  `email` varchar(45) DEFAULT NULL,
  `sublogo` text,
  `facebook` text,
  `rodapelogo` text,
  `favicon` text,
  `googleAnalytics` text,
  `minplay` int DEFAULT NULL,
  `minsaque` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `descricao`, `logo`, `telegram`, `instagram`, `whatsapp`, `suporte`, `email`, `sublogo`, `facebook`, `rodapelogo`, `favicon`, `googleAnalytics`, `minplay`, `minsaque`) VALUES
(0, 'Casino Sorte', 'Bem-vindo ao Casino Sorte o lar dos Slots, Crash, Double, Mines e muito mais. Receba recompensas em tempo real, cashback e rodadas grátis ao se inscrever.', 'https://casinosorte.store/public/uploads/15013112023234544.png', '', '', '', NULL, 'suporte@mail.com', '', '', 'https://casinosorte.store/public/uploads/88013112023234824.png', 'https://casinosorte.store/public/uploads/46113112023234906.png', '', 10, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ezzebank`
--

CREATE TABLE `ezzebank` (
  `id` int NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text,
  `client_secret` text,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ezzebank`
--

INSERT INTO `ezzebank` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(0, 'https://api.ezzebank.com/v2', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `financeiro`
--

CREATE TABLE `financeiro` (
  `id` int NOT NULL,
  `usuario` int DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `financeiro`
--

INSERT INTO `financeiro` (`id`, `usuario`, `saldo`, `bonus`) VALUES
(39, 39, '4642.55', '0.00'),
(40, 40, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiverscan`
--

CREATE TABLE `fiverscan` (
  `id` int NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text,
  `agent_token` text,
  `ativo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fiverscan`
--

INSERT INTO `fiverscan` (`id`, `url`, `agent_code`, `agent_token`, `ativo`) VALUES
(0, 'https://api.fiverscan.com', 'harkzim', '34509a1287ab51a60f7aad2c7b62c6b8', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `game_code` varchar(20) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `provider` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(1, 'vs243mwarrior', 'Monkey Warrior', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243mwarrior.png', 0, 'PRAGMATIC'),
(2, 'vs20doghouse', 'The Dog House', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20doghouse.png', 1, 'PRAGMATIC'),
(3, 'vs40pirate', 'Pirate Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40pirate.png', 1, 'PRAGMATIC'),
(4, 'vs20rhino', 'Great Rhino', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rhino.png', 1, 'PRAGMATIC'),
(5, 'vs25pandagold', 'Panda Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pandagold.png', 1, 'PRAGMATIC'),
(6, 'vs4096bufking', 'Buffalo King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096bufking.png', 1, 'PRAGMATIC'),
(7, 'vs25pyramid', 'Pyramid King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pyramid.png', 1, 'PRAGMATIC'),
(8, 'vs5ultrab', 'Ultra Burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultrab.png', 1, 'PRAGMATIC'),
(9, 'vs5ultra', 'Ultra Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultra.png', 1, 'PRAGMATIC'),
(10, 'vs25jokerking', 'Joker King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25jokerking.png', 1, 'PRAGMATIC'),
(11, 'vs10returndead', 'Return of the Dead', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10returndead.png', 1, 'PRAGMATIC'),
(12, 'vs10madame', 'Madame Destiny', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10madame.png', 1, 'PRAGMATIC'),
(13, 'vs15diamond', 'Diamond Strike', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs15diamond.png', 1, 'PRAGMATIC'),
(14, 'vs25aztecking', 'Aztec King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25aztecking.png', 1, 'PRAGMATIC'),
(15, 'vs25wildspells', 'Wild Spells', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25wildspells.png', 1, 'PRAGMATIC'),
(16, 'vs10bbbonanza', 'Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bbbonanza.png', 1, 'PRAGMATIC'),
(17, 'vs10cowgold', 'Cowboys Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10cowgold.png', 1, 'PRAGMATIC'),
(18, 'vs25tigerwar', 'The Tiger Warrior', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25tigerwar.png', 1, 'PRAGMATIC'),
(19, 'vs25mustang', 'Mustang Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25mustang.png', 1, 'PRAGMATIC'),
(20, 'vs25hotfiesta', 'Hotfiesta', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25hotfiesta.png', 1, 'PRAGMATIC'),
(21, 'vs243dancingpar', 'Dance Party', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243dancingpar.png', 1, 'PRAGMATIC'),
(22, 'vs576treasures', 'Wild Wild Riches', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs576treasures.png', 1, 'PRAGMATIC'),
(23, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20hburnhs.png', 1, 'PRAGMATIC'),
(24, 'vs20emptybank', 'Empty the Bank', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20emptybank.png', 1, 'PRAGMATIC'),
(25, 'vs20midas', 'The Hand of Midas', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20midas.png', 1, 'PRAGMATIC'),
(26, 'vs20olympgate', 'Gates of Olympus', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20olympgate.png', 1, 'PRAGMATIC'),
(27, 'vswayslight', 'Lucky Lightning', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayslight.png', 1, 'PRAGMATIC'),
(28, 'vs20vegasmagic', 'Vegas Magic', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20vegasmagic.png', 1, 'PRAGMATIC'),
(29, 'vs20fruitparty', 'Fruit Party', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20fruitparty.png', 1, 'PRAGMATIC'),
(30, 'vs20fparty2', 'Fruit Party 2', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20fparty2.png', 1, 'PRAGMATIC'),
(31, 'vswaysdogs', 'The Dog House Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysdogs.png', 1, 'PRAGMATIC'),
(32, 'vs50juicyfr', 'Juicy Fruits', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50juicyfr.png', 1, 'PRAGMATIC'),
(33, 'vs25pandatemple', 'Panda Fortune 2', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pandatemple.png', 1, 'PRAGMATIC'),
(34, 'vswaysbufking', 'Buffalo King Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbufking.png', 1, 'PRAGMATIC'),
(35, 'vs40wildwest', 'Wild West Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40wildwest.png', 1, 'PRAGMATIC'),
(36, 'vs20chickdrop', 'Chicken Drop', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20chickdrop.png', 1, 'PRAGMATIC'),
(37, 'vs40spartaking', 'Spartan King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40spartaking.png', 1, 'PRAGMATIC'),
(38, 'vswaysrhino', 'Great Rhino Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysrhino.png', 1, 'PRAGMATIC'),
(39, 'vs20sbxmas', 'Sweet Bonanza Xmas', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20sbxmas.png', 1, 'PRAGMATIC'),
(40, 'vs10fruity2', 'Extra Juicy', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10fruity2.png', 1, 'PRAGMATIC'),
(41, 'vs10egypt', 'Ancient Egypt', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10egypt.png', 1, 'PRAGMATIC'),
(42, 'vs5drhs', 'Dragon Hot Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5drhs.png', 1, 'PRAGMATIC'),
(43, 'vs12bbb', 'Bigger Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs12bbb.png', 1, 'PRAGMATIC'),
(44, 'vs20tweethouse', 'The Tweety House', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20tweethouse.png', 1, 'PRAGMATIC'),
(45, 'vswayslions', '5 Lions Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayslions.png', 1, 'PRAGMATIC'),
(46, 'vswayssamurai', 'Rise of Samurai Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayssamurai.png', 1, 'PRAGMATIC'),
(47, 'vs50pixie', 'Pixie Wings', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50pixie.png', 1, 'PRAGMATIC'),
(48, 'vs20fruitsw', 'Sweet Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20fruitsw.png', 1, 'PRAGMATIC'),
(49, 'vs20rhinoluxe', 'Great Rhino Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rhinoluxe.png', 1, 'PRAGMATIC'),
(50, 'vs432congocash', 'Congo Cash', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs432congocash.png', 1, 'PRAGMATIC'),
(51, 'vswaysmadame', 'Madame Destiny Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysmadame.png', 1, 'PRAGMATIC'),
(52, 'vs1024temuj', 'Temujin Treasures', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024temuj.png', 1, 'PRAGMATIC'),
(53, 'vs40pirgold', 'Pirate Gold Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40pirgold.png', 1, 'PRAGMATIC'),
(54, 'vs25mmouse', 'Money Mouse', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25mmouse.png', 1, 'PRAGMATIC'),
(55, 'vs10threestar', 'Three Star Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10threestar.png', 1, 'PRAGMATIC'),
(56, 'vs1ball', 'Lucky Dragon Ball', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1ball.png', 1, 'PRAGMATIC'),
(57, 'vs243lionsgold', '5 Lions', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243lionsgold.png', 1, 'PRAGMATIC'),
(58, 'vs10egyptcls', 'Ancient Egypt Classic', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10egyptcls.png', 1, 'PRAGMATIC'),
(59, 'vs25davinci', 'Da Vinci Treasure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25davinci.png', 1, 'PRAGMATIC'),
(60, 'vs7776secrets', 'Aztec Treasure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7776secrets.png', 1, 'PRAGMATIC'),
(61, 'vs25wolfgold', 'Wolf Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25wolfgold.png', 1, 'PRAGMATIC'),
(62, 'vs50safariking', 'Safari King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50safariking.png', 1, 'PRAGMATIC'),
(63, 'vs25peking', 'Peking Luck', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25peking.png', 1, 'PRAGMATIC'),
(64, 'vs25asgard', 'Asgard', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25asgard.png', 1, 'PRAGMATIC'),
(65, 'vs25vegas', 'Vegas Nights', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25vegas.png', 1, 'PRAGMATIC'),
(66, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25scarabqueen.png', 1, 'PRAGMATIC'),
(67, 'vs20starlight', 'Starlight Princess', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20starlight.png', 1, 'PRAGMATIC'),
(68, 'vs10bookoftut', 'John Hunter and the Book of Tut', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bookoftut.png', 1, 'PRAGMATIC'),
(69, 'vs9piggybank', 'Piggy Bank Bills', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9piggybank.png', 1, 'PRAGMATIC'),
(70, 'vs5drmystery', 'Dragon Kingdom Mystery', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5drmystery.png', 1, 'PRAGMATIC'),
(71, 'vs20eightdragons', 'Eight Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20eightdragons.png', 1, 'PRAGMATIC'),
(72, 'vs1024lionsd', '5 Lions Dance', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024lionsd.png', 1, 'PRAGMATIC'),
(73, 'vs25rio', 'Heart of Rio', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25rio.png', 1, 'PRAGMATIC'),
(74, 'vs10nudgeit', 'Rise of Giza PowerNudge', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10nudgeit.png', 1, 'PRAGMATIC'),
(75, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bxmasbnza.png', 1, 'PRAGMATIC'),
(76, 'vs20santawonder', 'Santa\'s Wonderland', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20santawonder.png', 1, 'PRAGMATIC'),
(77, 'vs20terrorv', 'Cash Elevator', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20terrorv.png', 1, 'PRAGMATIC'),
(78, 'vs10bblpop', 'Bubble Pop', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bblpop.png', 1, 'PRAGMATIC'),
(79, 'vs25btygold', 'Bounty Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25btygold.png', 1, 'PRAGMATIC'),
(80, 'vs88hockattack', 'Hockey Attack™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs88hockattack.png', 1, 'PRAGMATIC'),
(81, 'vswaysbbb', 'Big Bass Bonanza Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbbb.png', 1, 'PRAGMATIC'),
(82, 'vs10bookfallen', 'Book of the Fallen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bookfallen.png', 1, 'PRAGMATIC'),
(83, 'vs40bigjuan', 'Big Juan', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40bigjuan.png', 1, 'PRAGMATIC'),
(84, 'vs20bermuda', 'John Hunter and the Quest for Bermuda Riches', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bermuda.png', 1, 'PRAGMATIC'),
(85, 'vs10starpirate', 'Star Pirates Code', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10starpirate.png', 1, 'PRAGMATIC'),
(86, 'vswayswest', 'Mystic Chief', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayswest.png', 1, 'PRAGMATIC'),
(87, 'vs20daydead', 'Day of Dead', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20daydead.png', 1, 'PRAGMATIC'),
(88, 'vs20candvil', 'Candy Village', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20candvil.png', 1, 'PRAGMATIC'),
(89, 'vs20wildboost', 'Wild Booster', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20wildboost.png', 1, 'PRAGMATIC'),
(90, 'vswayshammthor', 'Power of Thor Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayshammthor.png', 1, 'PRAGMATIC'),
(91, 'vs243lions', '5 Lions', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243lions.png', 1, 'PRAGMATIC'),
(92, 'vs5super7', 'Super 7s', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5super7.png', 1, 'PRAGMATIC'),
(93, 'vs1masterjoker', 'Master Joker', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1masterjoker.png', 1, 'PRAGMATIC'),
(94, 'vs20kraken', 'Release the Kraken', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20kraken.png', 1, 'PRAGMATIC'),
(95, 'vs10firestrike', 'Fire Strike', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10firestrike.png', 1, 'PRAGMATIC'),
(96, 'vs243fortune', 'Caishen\'s Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243fortune.png', 1, 'PRAGMATIC'),
(97, 'vs4096mystery', 'Mysterious', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096mystery.png', 1, 'PRAGMATIC'),
(98, 'vs20aladdinsorc', 'Aladdin and the Sorcerrer', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20aladdinsorc.png', 1, 'PRAGMATIC'),
(99, 'vs243fortseren', 'Greek Gods', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243fortseren.png', 1, 'PRAGMATIC'),
(100, 'vs25chilli', 'Chilli Heat', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25chilli.png', 1, 'PRAGMATIC'),
(101, 'vs8magicjourn', 'Magic Journey', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs8magicjourn.png', 1, 'PRAGMATIC'),
(102, 'vs25pantherqueen', 'Panther Queen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25pantherqueen.png', 1, 'PRAGMATIC'),
(103, 'vs20leprexmas', 'Leprechaun Carol', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20leprexmas.png', 1, 'PRAGMATIC'),
(104, 'vs7pigs', '7 Piggies', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7pigs.png', 1, 'PRAGMATIC'),
(105, 'vs243caishien', 'Caishen\'s Cash', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243caishien.png', 1, 'PRAGMATIC'),
(106, 'vs5joker', 'Joker\'s Jewels', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5joker.png', 1, 'PRAGMATIC'),
(107, 'vs25gladiator', 'Wild Gladiator', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25gladiator.png', 1, 'PRAGMATIC'),
(108, 'vs25goldpig', 'Golden Pig', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldpig.png', 1, 'PRAGMATIC'),
(109, 'vs25goldrush', 'Gold Rush', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldrush.png', 1, 'PRAGMATIC'),
(110, 'vs25dragonkingdom', 'Dragon Kingdom', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25dragonkingdom.png', 1, 'PRAGMATIC'),
(111, 'vs25kingdoms', '3 Kingdoms - Battle of Red Cliffs', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25kingdoms.png', 1, 'PRAGMATIC'),
(112, 'vs1dragon8', '888 Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1dragon8.png', 1, 'PRAGMATIC'),
(113, 'vs5aztecgems', 'Aztec Gems', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5aztecgems.png', 1, 'PRAGMATIC'),
(114, 'vs20hercpeg', 'Hercules and Pegasus', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20hercpeg.png', 1, 'PRAGMATIC'),
(115, 'vs7fire88', 'Fire 88', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7fire88.png', 1, 'PRAGMATIC'),
(116, 'vs20honey', 'Honey Honey Honey', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20honey.png', 1, 'PRAGMATIC'),
(117, 'vs25safari', 'Hot Safari', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25safari.png', 1, 'PRAGMATIC'),
(118, 'vs25journey', 'Journey to the West', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25journey.png', 1, 'PRAGMATIC'),
(119, 'vs20chicken', 'The Great Chicken Escape', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20chicken.png', 1, 'PRAGMATIC'),
(120, 'vs1fortunetree', 'Tree of Riches', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1fortunetree.png', 1, 'PRAGMATIC'),
(121, 'vs20wildpix', 'Wild Pixies', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20wildpix.png', 1, 'PRAGMATIC'),
(122, 'vs15fairytale', 'Fairytale Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs15fairytale.png', 1, 'PRAGMATIC'),
(123, 'vs20santa', 'Santa', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20santa.png', 1, 'PRAGMATIC'),
(124, 'vs10vampwolf', 'Vampires vs Wolves', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10vampwolf.png', 1, 'PRAGMATIC'),
(125, 'vs50aladdin', '3 Genie Wishes', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50aladdin.png', 1, 'PRAGMATIC'),
(126, 'vs50hercules', 'Hercules Son of Zeus', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50hercules.png', 1, 'PRAGMATIC'),
(127, 'vs7776aztec', 'Aztec Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7776aztec.png', 1, 'PRAGMATIC'),
(128, 'vs5trdragons', 'Triple Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5trdragons.png', 1, 'PRAGMATIC'),
(129, 'vs40madwheel', 'The Wild Machine', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40madwheel.png', 1, 'PRAGMATIC'),
(130, 'vs25newyear', 'Lucky New Year', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25newyear.png', 1, 'PRAGMATIC'),
(131, 'vs40frrainbow', 'Fruit Rainbow', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40frrainbow.png', 1, 'PRAGMATIC'),
(132, 'vs50kingkong', 'Mighty Kong', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50kingkong.png', 1, 'PRAGMATIC'),
(133, 'vs20godiva', 'Lady Godiva', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20godiva.png', 1, 'PRAGMATIC'),
(134, 'vs9madmonkey', 'Monkey Madness', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9madmonkey.png', 1, 'PRAGMATIC'),
(135, 'vs1tigers', 'Triple Tigers', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1tigers.png', 1, 'PRAGMATIC'),
(136, 'vs9chen', 'Master Chen\'s Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9chen.png', 1, 'PRAGMATIC'),
(137, 'vs5hotburn', 'Hot to burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5hotburn.png', 1, 'PRAGMATIC'),
(138, 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25dwarves_new.png', 1, 'PRAGMATIC'),
(139, 'vs1024butterfly', 'Jade Butterfly', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024butterfly.png', 1, 'PRAGMATIC'),
(140, 'vs25sea', 'Great Reef', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25sea.png', 1, 'PRAGMATIC'),
(141, 'vs20leprechaun', 'Leprechaun Song', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20leprechaun.png', 1, 'PRAGMATIC'),
(142, 'vs7monkeys', '7 Monkeys', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs7monkeys.png', 1, 'PRAGMATIC'),
(143, 'vs50chinesecharms', 'Lucky Dragons', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50chinesecharms.png', 1, 'PRAGMATIC'),
(144, 'vs18mashang', 'Treasure Horse', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs18mashang.png', 1, 'PRAGMATIC'),
(145, 'vs5spjoker', 'Super Joker', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5spjoker.png', 1, 'PRAGMATIC'),
(146, 'vs20egypttrs', 'Egyptian Fortunes', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20egypttrs.png', 1, 'PRAGMATIC'),
(147, 'vs9hotroll', 'Hot Chilli', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9hotroll.png', 1, 'PRAGMATIC'),
(148, 'vs4096jurassic', 'Jurassic Giants', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096jurassic.png', 1, 'PRAGMATIC'),
(149, 'vs3train', 'Gold Train', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs3train.png', 1, 'PRAGMATIC'),
(150, 'vs1024atlantis', 'Queen of Atlantis', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024atlantis.png', 1, 'PRAGMATIC'),
(151, 'vs20bl', 'Busy Bees', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bl.png', 1, 'PRAGMATIC'),
(152, 'vs25champ', 'The Champions', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25champ.png', 1, 'PRAGMATIC'),
(153, 'vs5trjokers', 'Triple Jokers', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5trjokers.png', 1, 'PRAGMATIC'),
(154, 'vs1money', 'Money Money Money', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1money.png', 1, 'PRAGMATIC'),
(155, 'vs1600drago', 'Drago - Jewels of Fortune', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1600drago.png', 1, 'PRAGMATIC'),
(156, 'vs40streetracer', 'Street Racer', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40streetracer.png', 1, 'PRAGMATIC'),
(157, 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs9aztecgemsdx.png', 1, 'PRAGMATIC'),
(158, 'vs20gorilla', 'Jungle Gorilla', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20gorilla.png', 1, 'PRAGMATIC'),
(159, 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayswerewolf.png', 1, 'PRAGMATIC'),
(160, 'vswayshive', 'Star Bounty', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayshive.png', 1, 'PRAGMATIC'),
(161, 'vs25samurai', 'Rise of Samurai', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25samurai.png', 1, 'PRAGMATIC'),
(162, 'vs25walker', 'Wild Walker', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25walker.png', 1, 'PRAGMATIC'),
(163, 'vs20goldfever', 'Gems Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20goldfever.png', 1, 'PRAGMATIC'),
(164, 'vs25bkofkngdm', 'Book of Kingdoms', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25bkofkngdm.png', 1, 'PRAGMATIC'),
(165, 'vs10goldfish', 'Fishin Reels', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10goldfish.png', 1, 'PRAGMATIC'),
(166, 'vs1024dtiger', 'The Dragon Tiger', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024dtiger.png', 1, 'PRAGMATIC'),
(167, 'vs20xmascarol', 'Christmas Carol Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20xmascarol.png', 1, 'PRAGMATIC'),
(168, 'vs10mayangods', 'John Hunter and the Mayan Gods', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10mayangods.png', 1, 'PRAGMATIC'),
(169, 'vs20bonzgold', 'Bonanza Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bonzgold.png', 1, 'PRAGMATIC'),
(170, 'vs40voodoo', 'Voodoo Magic', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40voodoo.png', 1, 'PRAGMATIC'),
(171, 'vs25gldox', 'Golden Ox', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25gldox.png', 1, 'PRAGMATIC'),
(172, 'vs10wildtut', 'Mysterious Egypt', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10wildtut.png', 1, 'PRAGMATIC'),
(173, 'vs20ekingrr', 'Emerald King Rainbow Road', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20ekingrr.png', 1, 'PRAGMATIC'),
(174, 'vs10eyestorm', 'Eye of the Storm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10eyestorm.png', 1, 'PRAGMATIC'),
(175, 'vs117649starz', 'Starz Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs117649starz.png', 1, 'PRAGMATIC'),
(176, 'vs10amm', 'The Amazing Money Machine', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10amm.png', 1, 'PRAGMATIC'),
(177, 'vs20magicpot', 'The Magic Cauldron - Enchanted Brew', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20magicpot.png', 1, 'PRAGMATIC'),
(178, 'vswaysyumyum', 'Yum Yum Powerways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysyumyum.png', 1, 'PRAGMATIC'),
(179, 'vswayselements', 'Elemental Gems Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayselements.png', 1, 'PRAGMATIC'),
(180, 'vswayschilheat', 'Chilli Heat Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayschilheat.png', 1, 'PRAGMATIC'),
(181, 'vs10luckcharm', 'Lucky Grace And Charm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10luckcharm.png', 1, 'PRAGMATIC'),
(182, 'vswaysaztecking', 'Aztec King Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysaztecking.png', 1, 'PRAGMATIC'),
(183, 'vs20phoenixf', 'Phoenix Forge', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20phoenixf.png', 1, 'PRAGMATIC'),
(184, 'vs576hokkwolf', 'Hokkaido Wolf', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs576hokkwolf.png', 1, 'PRAGMATIC'),
(185, 'vs20trsbox', 'Treasure Wild', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20trsbox.png', 1, 'PRAGMATIC'),
(186, 'vs243chargebull', 'Raging Bull', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243chargebull.png', 1, 'PRAGMATIC'),
(187, 'vswaysbankbonz', 'Cash Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbankbonz.png', 1, 'PRAGMATIC'),
(188, 'vs20pbonanza', 'Pyramid Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20pbonanza.png', 1, 'PRAGMATIC'),
(189, 'vs243empcaishen', 'Emperor Caishen', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243empcaishen.png', 1, 'PRAGMATIC'),
(190, 'vs25tigeryear', 'New Year Tiger Treasures ™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25tigeryear.png', 1, 'PRAGMATIC'),
(191, 'vs20amuleteg', 'Fortune of Giza™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20amuleteg.png', 1, 'PRAGMATIC'),
(192, 'vs10runes', 'Gates of Valhalla™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10runes.png', 1, 'PRAGMATIC'),
(193, 'vs25goldparty', 'Gold Party®', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldparty.png', 1, 'PRAGMATIC'),
(194, 'vswaysxjuicy', 'Extra Juicy Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysxjuicy.png', 1, 'PRAGMATIC'),
(195, 'vs40wanderw', 'Wild Depths™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40wanderw.png', 1, 'PRAGMATIC'),
(196, 'vs4096magician', 'Magician\'s Secrets™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs4096magician.png', 1, 'PRAGMATIC'),
(197, 'vs20smugcove', 'Smugglers Cove™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20smugcove.png', 1, 'PRAGMATIC'),
(198, 'vswayscryscav', 'Crystal Caverns Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayscryscav.png', 1, 'PRAGMATIC'),
(199, 'vs20superx', 'Super X™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20superx.png', 1, 'PRAGMATIC'),
(200, 'vs20rockvegas', 'Rock Vegas Mega Hold & Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rockvegas.png', 1, 'PRAGMATIC'),
(201, 'vs25copsrobbers', 'Cash Patrol', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25copsrobbers.png', 1, 'PRAGMATIC'),
(202, 'vs20colcashzone', 'Colossal Cash Zone', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20colcashzone.png', 1, 'PRAGMATIC'),
(203, 'vs20ultim5', 'The Ultimate 5', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20ultim5.png', 1, 'PRAGMATIC'),
(204, 'vs20bchprty', 'Wild Beach Party', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20bchprty.png', 1, 'PRAGMATIC'),
(205, 'vs10bookazteck', 'Book of Aztec King', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bookazteck.png', 1, 'PRAGMATIC'),
(206, 'vs50mightra', 'Might of Ra', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50mightra.png', 1, 'PRAGMATIC'),
(207, 'vs25bullfiesta', 'Bull Fiesta', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25bullfiesta.png', 1, 'PRAGMATIC'),
(208, 'vs20rainbowg', 'Rainbow Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rainbowg.png', 1, 'PRAGMATIC'),
(209, 'vs10tictac', 'Tic Tac Take', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10tictac.png', 1, 'PRAGMATIC'),
(210, 'vs243discolady', 'Disco Lady', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243discolady.png', 1, 'PRAGMATIC'),
(211, 'vs243queenie', 'Queenie', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243queenie.png', 1, 'PRAGMATIC'),
(212, 'vs20farmfest', 'Barn Festival', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20farmfest.png', 1, 'PRAGMATIC'),
(213, 'vs10chkchase', 'Chicken Chase', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10chkchase.png', 1, 'PRAGMATIC'),
(214, 'vswayswildwest', 'Wild West Gold Megaways', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayswildwest.png', 1, 'PRAGMATIC'),
(215, 'vs20mustanggld2', 'Clover Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20mustanggld2.png', 1, 'PRAGMATIC'),
(216, 'vs20drtgold', 'Drill That Gold', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20drtgold.png', 1, 'PRAGMATIC'),
(217, 'vs10spiritadv', 'Spirit of Adventure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10spiritadv.png', 1, 'PRAGMATIC'),
(218, 'vs10firestrike2', 'Fire Strike 2', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10firestrike2.png', 1, 'PRAGMATIC'),
(219, 'vs40cleoeye', 'Eye of Cleopatra', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40cleoeye.png', 1, 'PRAGMATIC'),
(220, 'vs20gobnudge', 'Goblin Heist Powernudge', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20gobnudge.png', 1, 'PRAGMATIC'),
(221, 'vswayszombcarn', 'Zombie Carnival', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayszombcarn.png', 1, 'PRAGMATIC'),
(222, 'vs50northgard', 'North Guardians', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs50northgard.png', 1, 'PRAGMATIC'),
(223, 'vs20sugarrush', 'Sugar Rush', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20sugarrush.png', 1, 'PRAGMATIC'),
(224, 'vs20cleocatra', 'Cleocatra', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20cleocatra.png', 1, 'PRAGMATIC'),
(225, 'vs5littlegem', '?? ? ?? ? ??', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5littlegem.png', 1, 'PRAGMATIC'),
(226, 'vs10egrich', '? ?? ??', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10egrich.png', 1, 'PRAGMATIC'),
(227, 'vs40cosmiccash', 'Cosmic Cash', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40cosmiccash.png', 1, 'PRAGMATIC'),
(228, 'vs25bomb', 'Bomb Bonanza', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs25bomb.png', 1, 'PRAGMATIC'),
(229, 'vs100sh', 'Shining Hot 100', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs100sh.png', 1, 'PRAGMATIC'),
(230, 'vs40sh', 'Shining Hot 40', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40sh.png', 1, 'PRAGMATIC'),
(231, 'vs5sh', 'Shining Hot 5', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs5sh.png', 1, 'PRAGMATIC'),
(232, 'vswaysjkrdrop', 'Tropical Tiki', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysjkrdrop.png', 1, 'PRAGMATIC'),
(233, 'vs40hotburnx', 'Hot To Burn Extreme', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40hotburnx.png', 1, 'PRAGMATIC'),
(234, 'vs1024gmayhem', 'Gorilla Mayhem', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs1024gmayhem.png', 1, 'PRAGMATIC'),
(235, 'vs20octobeer', 'Octobeer Fortunes', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20octobeer.png', 1, 'PRAGMATIC'),
(236, 'vs10txbigbass', 'Big Bass Splash', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10txbigbass.png', 1, 'PRAGMATIC'),
(237, 'vs100firehot', 'Fire Hot 100', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs100firehot.png', 1, 'PRAGMATIC'),
(238, 'vs20fh', 'Fire Hot 20', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20fh.png', 1, 'PRAGMATIC'),
(239, 'vs40firehot', 'Fire Hot 40', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs40firehot.png', 1, 'PRAGMATIC'),
(240, 'vs5firehot', 'Fire Hot 5', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs5firehot.png', 1, 'PRAGMATIC'),
(241, 'vs20wolfie', 'Greedy Wolf', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20wolfie.png', 1, 'PRAGMATIC'),
(242, 'vs20underground', 'Down the Rails', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20underground.png', 1, 'PRAGMATIC'),
(243, 'vs10mmm', 'Magic Money Maze', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10mmm.png', 1, 'PRAGMATIC'),
(244, 'vswaysfltdrg', 'Floating Dragon Hold & Spin Megaways', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysfltdrg.png', 1, 'PRAGMATIC'),
(245, 'vs20trswild2', 'Black Bull', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20trswild2.png', 1, 'PRAGMATIC'),
(246, 'vswaysstrwild', 'Candy Stars', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysstrwild.png', 1, 'PRAGMATIC'),
(247, 'vs10crownfire', 'Crown of Fire', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10crownfire.png', 1, 'PRAGMATIC'),
(248, 'vs20muertos', 'Muertos Multiplier Megaways', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs20muertos.png', 1, 'PRAGMATIC'),
(249, 'vswayslofhero', 'Legend of Heroes', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswayslofhero.png', 1, 'PRAGMATIC'),
(250, 'vs5strh', 'Striking Hot 5', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs5strh.png', 1, 'PRAGMATIC'),
(251, 'vs10snakeeyes', 'Snakes & Ladders - Snake Eyes', 'https://api-sg57.ppgames.net/game_pic/rec/325/vs10snakeeyes.png', 1, 'PRAGMATIC'),
(252, 'vswaysbook', 'Book of Golden Sands', 'https://api-sg57.ppgames.net/game_pic/rec/325/vswaysbook.png', 1, 'PRAGMATIC'),
(253, 'vswaysfrywld', 'Spin & Score Megaways', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14187.png', 1, 'PRAGMATIC'),
(254, 'vs10tut', 'Book of Tut Respin', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14185.png', 1, 'PRAGMATIC'),
(255, 'vs20porbs', 'Santa\'s Great Gifts', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14186.png', 1, 'PRAGMATIC'),
(256, 'vs20asgard', 'Kingdom of Asgard™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14193.jpg', 1, 'PRAGMATIC'),
(257, 'vswaysconcoll', 'Sweet PowerNudge™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14240.jpg', 1, 'PRAGMATIC'),
(258, 'vs20schristmas', 'Starlight Chrismas', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14241.jpg', 1, 'PRAGMATIC'),
(259, 'vs20theights', 'Towering Fortunes™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14242.jpg', 1, 'PRAGMATIC'),
(260, 'vs20gatotgates', 'Gates of Gatotkaca™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14256.jpg', 1, 'PRAGMATIC'),
(261, 'vs20lcount', 'Gems of Serengeti™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14257.jpg', 1, 'PRAGMATIC'),
(262, 'vs20mtreasure', 'Pirate Golden Age™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14258.jpg', 1, 'PRAGMATIC'),
(263, 'vs10bbkir', 'Big Bass Bonanza Keeping it Reel', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14275.jpg', 1, 'PRAGMATIC'),
(264, 'vswaysluckyfish', 'Lucky Fishing Megaways™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14276.jpg', 1, 'PRAGMATIC'),
(265, 'vs25rlbank', 'Reel Banks™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14325.jpg', 1, 'PRAGMATIC'),
(266, 'vs20aztecgates', 'Gates of Aztec™', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14326.png', 1, 'PRAGMATIC'),
(267, 'vs20dugems', 'Hot Pepper™\r\n', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14327.jpg', 1, 'PRAGMATIC'),
(268, 'vs20clspwrndg', 'Sweet PowerNudge', 'https://resource.fdsigaming.com/thumbnail/slot/ppNew/14328.jpg', 1, 'PRAGMATIC'),
(269, 'SGReturnToTheFeature', 'Return to the Future', 'https://app-b.insvr.com/img/s/300/SGReturnToTheFeature_ko-KR.png', 1, 'HABANERO'),
(270, 'SGTabernaDeLosMuerto', 'Tevena de los Muirtos Ultra', 'https://app-b.insvr.com/img/s/300/SGTabernaDeLosMuertosUltra_ko-KR.png', 1, 'HABANERO'),
(271, 'SGTotemTowers', 'Totem towers', 'https://app-b.insvr.com/img/s/300/SGTotemTowers_ko-KR.png', 1, 'HABANERO'),
(272, 'SGChristmasGiftRush', 'Christmas Kipoot Rush', 'https://app-b.insvr.com/img/s/300/SGChristmasGiftRush_ko-KR.png', 1, 'HABANERO'),
(273, 'SGOrbsOfAtlantis', 'Overs of Atlantis', 'https://app-b.insvr.com/img/s/300/SGOrbsOfAtlantis_ko-KR.png', 1, 'HABANERO'),
(274, 'SGBeforeTimeRunsOut', 'Before Time Runner Out', 'https://app-b.insvr.com/img/s/300/SGBeforeTimeRunsOut_ko-KR.png', 1, 'HABANERO'),
(275, 'SGTechnoTumble', 'Techno tumble', 'https://app-b.insvr.com/img/s/300/SGTechnoTumble_ko-KR.png', 1, 'HABANERO'),
(276, 'SGWealthInn', 'Wells Inn', 'https://app-b.insvr.com/img/s/300/SGWealthInn_ko-KR.png', 1, 'HABANERO'),
(277, 'SGHappyApe', 'Happy ape', 'https://app-b.insvr.com/img/s/300/SGHappyApe_ko-KR.png', 1, 'HABANERO'),
(278, 'SGTabernaDeLosMuerto', 'Tevena di los Muertos', 'https://app-b.insvr.com/img/s/300/SGTabernaDeLosMuertos_ko-KR.png', 1, 'HABANERO'),
(279, 'SGNaughtySanta', 'Notty Santa', 'https://app-b.insvr.com/img/s/300/SGNaughtySanta_ko-KR.png', 1, 'HABANERO'),
(280, 'SGFaCaiShenDeluxe', 'Pakai Sen Deluxe', 'https://app-b.insvr.com/img/s/300/SGFaCaiShenDeluxe_ko-KR.png', 1, 'HABANERO'),
(281, 'SGHeySushi', 'Hey sushi', 'https://app-b.insvr.com/img/s/300/SGHeySushi_ko-KR.png', 1, 'HABANERO'),
(282, 'SGKnockoutFootballRu', 'Knockout football rush', 'https://app-b.insvr.com/img/s/300/SGKnockoutFootballRush_ko-KR.png', 1, 'HABANERO'),
(283, 'SGColossalGems', 'Closal Gems', 'https://app-b.insvr.com/img/s/300/SGColossalGems_ko-KR.png', 1, 'HABANERO'),
(284, 'SGHotHotHalloween', 'hot hot halloween', 'https://app-b.insvr.com/img/s/300/SGHotHotHalloween_ko-KR.png', 1, 'HABANERO'),
(285, 'SGLuckyFortuneCat', 'Lucky fortune cat', 'https://app-b.insvr.com/img/s/300/SGLuckyFortuneCat_ko-KR.png', 1, 'HABANERO'),
(286, 'SGHotHotFruit', 'hot hot fruit', 'https://app-b.insvr.com/img/s/300/SGHotHotFruit_ko-KR.png', 1, 'HABANERO'),
(287, 'SGMountMazuma', 'Mount Majuma', 'https://app-b.insvr.com/img/s/300/SGMountMazuma_ko-KR.png', 1, 'HABANERO'),
(288, 'SGWildTrucks', 'Wild Trucks', 'https://app-b.insvr.com/img/s/300/SGWildTrucks_ko-KR.png', 1, 'HABANERO'),
(289, 'SGLuckyLucky', 'Lucky Lucky', 'https://app-b.insvr.com/img/s/300/SGLuckyLucky_ko-KR.png', 1, 'HABANERO'),
(290, 'SGKnockoutFootball', 'Knockout football', 'https://app-b.insvr.com/img/s/300/SGKnockoutFootball_ko-KR.png', 1, 'HABANERO'),
(291, 'SGJump', 'Jump!', 'https://app-b.insvr.com/img/s/300/SGJump_ko-KR.png', 1, 'HABANERO'),
(292, 'SGPumpkinPatch', 'Pumpkin patch', 'https://app-b.insvr.com/img/s/300/SGPumpkinPatch_ko-KR.png', 1, 'HABANERO'),
(293, 'SGWaysOfFortune', 'Way of Fortune', 'https://app-b.insvr.com/img/s/300/SGWaysOfFortune_ko-KR.png', 1, 'HABANERO'),
(294, 'SGFourDivineBeasts', 'For Devine Beasts', 'https://app-b.insvr.com/img/s/300/SGFourDivineBeasts_ko-KR.png', 1, 'HABANERO'),
(295, 'SGPandaPanda', 'Panda panda', 'https://app-b.insvr.com/img/s/300/SGPandaPanda_ko-KR.png', 1, 'HABANERO'),
(296, 'SGOceansCall', 'Ocean\'s Call', 'https://app-b.insvr.com/img/s/300/SGOceansCall_ko-KR.png', 1, 'HABANERO'),
(297, 'SGScruffyScallywags', 'Scruffy Skellywex', 'https://app-b.insvr.com/img/s/300/SGScruffyScallywags_ko-KR.png', 1, 'HABANERO'),
(298, 'SGNuwa', 'Nuwa', 'https://app-b.insvr.com/img/s/300/SGNuwa_ko-KR.png', 1, 'HABANERO'),
(299, 'SGTheKoiGate', 'Koi gate', 'https://app-b.insvr.com/img/s/300/SGTheKoiGate_ko-KR.png', 1, 'HABANERO'),
(300, 'SGFaCaiShen', 'Pacaishen', 'https://app-b.insvr.com/img/s/300/SGFaCaiShen_ko-KR.png', 1, 'HABANERO'),
(301, 'SG12Zodiacs', '12 zodiacs', 'https://app-b.insvr.com/img/s/300/SG12Zodiacs_ko-KR.png', 1, 'HABANERO'),
(302, 'SGFireRooster', 'Fire rooster', 'https://app-b.insvr.com/img/s/300/SGFireRooster_ko-KR.png', 1, 'HABANERO'),
(303, 'SGFenghuang', 'Phoenix', 'https://app-b.insvr.com/img/s/300/SGFenghuang_ko-KR.png', 1, 'HABANERO'),
(304, 'SGBirdOfThunder', 'Bird of Thunder', 'https://app-b.insvr.com/img/s/300/SGBirdOfThunder_ko-KR.png', 1, 'HABANERO'),
(305, 'SGTheDeadEscape', 'The Dead Escape', 'https://app-b.insvr.com/img/s/300/SGTheDeadEscape_ko-KR.png', 1, 'HABANERO'),
(306, 'SGBombsAway', 'Bombs Away', 'https://app-b.insvr.com/img/s/300/SGBombsAway_ko-KR.png', 1, 'HABANERO'),
(307, 'SGGoldRush', 'Gold rush', 'https://app-b.insvr.com/img/s/300/SGGoldRush_ko-KR.png', 1, 'HABANERO'),
(308, 'SGRuffledUp', 'Ruffled up', 'https://app-b.insvr.com/img/s/300/SGRuffledUp_ko-KR.png', 1, 'HABANERO'),
(309, 'SGRomanEmpire', 'Roman empire', 'https://app-b.insvr.com/img/s/300/SGRomanEmpire_ko-KR.png', 1, 'HABANERO'),
(310, 'SGCoyoteCrash', 'Coyote crash', 'https://app-b.insvr.com/img/s/300/SGCoyoteCrash_ko-KR.png', 1, 'HABANERO'),
(311, 'SGWickedWitch', 'Wickt Location', 'https://app-b.insvr.com/img/s/300/SGWickedWitch_ko-KR.png', 1, 'HABANERO'),
(312, 'SGDragonsThrone', 'Dragon\'s Throne', 'https://app-b.insvr.com/img/s/300/SGDragonsThrone_ko-KR.png', 1, 'HABANERO'),
(313, 'SGBuggyBonus', 'Buggy bonus', 'https://app-b.insvr.com/img/s/300/SGBuggyBonus_ko-KR.png', 1, 'HABANERO'),
(314, 'SGGlamRock', 'Glam rock', 'https://app-b.insvr.com/img/s/300/SGGlamRock_ko-KR.png', 1, 'HABANERO'),
(315, 'SGSuperTwister', 'Super twister', 'https://app-b.insvr.com/img/s/300/SGSuperTwister_ko-KR.png', 1, 'HABANERO'),
(316, 'SGKanesInferno', 'Keynes Inferno', 'https://app-b.insvr.com/img/s/300/SGKanesInferno_ko-KR.png', 1, 'HABANERO'),
(317, 'SGTreasureTomb', 'Treasure Tomb', 'https://app-b.insvr.com/img/s/300/SGTreasureTomb_ko-KR.png', 1, 'HABANERO'),
(318, 'SGJugglenaut', 'Jugglenut', 'https://app-b.insvr.com/img/s/300/SGJugglenaut_ko-KR.png', 1, 'HABANERO'),
(319, 'SGGalacticCash', 'Glactic Cash', 'https://app-b.insvr.com/img/s/300/SGGalacticCash_ko-KR.png', 1, 'HABANERO'),
(320, 'SGZeus2', 'Zeus 2', 'https://app-b.insvr.com/img/s/300/SGZeus2_ko-KR.png', 1, 'HABANERO'),
(321, 'SGTheDragonCastle', 'Dragon castle', 'https://app-b.insvr.com/img/s/300/SGTheDragonCastle_ko-KR.png', 1, 'HABANERO'),
(322, 'SGKingTutsTomb', 'King Teeth Tomb', 'https://app-b.insvr.com/img/s/300/SGKingTutsTomb_ko-KR.png', 1, 'HABANERO'),
(323, 'SGCarnivalCash', 'Carnival cash', 'https://app-b.insvr.com/img/s/300/SGCarnivalCash_ko-KR.png', 1, 'HABANERO'),
(324, 'SGTreasureDiver', 'Treasure diver', 'https://app-b.insvr.com/img/s/300/SGTreasureDiver_ko-KR.png', 1, 'HABANERO'),
(325, 'SGLittleGreenMoney', 'Little Green Money', 'https://app-b.insvr.com/img/s/300/SGLittleGreenMoney_ko-KR.png', 1, 'HABANERO'),
(326, 'SGMonsterMashCash', 'Monster Mash Cash', 'https://app-b.insvr.com/img/s/300/SGMonsterMashCash_ko-KR.png', 1, 'HABANERO'),
(327, 'SGShaolinFortunes100', 'Xiaolin Fortune 100', 'https://app-b.insvr.com/img/s/300/SGShaolinFortunes100_ko-KR.png', 1, 'HABANERO'),
(328, 'SGShaolinFortunes243', 'Xiaolin Fortune', 'https://app-b.insvr.com/img/s/300/SGShaolinFortunes243_ko-KR.png', 1, 'HABANERO'),
(329, 'SGWeirdScience', 'Weird Science', 'https://app-b.insvr.com/img/s/300/SGWeirdScience_ko-KR.png', 1, 'HABANERO'),
(330, 'SGBlackbeardsBounty', 'Blackbeards Bounty', 'https://app-b.insvr.com/img/s/300/SGBlackbeardsBounty_ko-KR.png', 1, 'HABANERO'),
(331, 'SGDrFeelgood', 'Dr. Feelgood', 'https://app-b.insvr.com/img/s/300/SGDrFeelgood_ko-KR.png', 1, 'HABANERO'),
(332, 'SGVikingsPlunder', 'Vikings plunder', 'https://app-b.insvr.com/img/s/300/SGVikingsPlunder_ko-KR.png', 1, 'HABANERO'),
(333, 'SGDoubleODollars', 'Double O Dollars', 'https://app-b.insvr.com/img/s/300/SGDoubleODollars_ko-KR.png', 1, 'HABANERO'),
(334, 'SGSpaceFortune', 'Space fortune', 'https://app-b.insvr.com/img/s/300/SGSpaceFortune_ko-KR.png', 1, 'HABANERO'),
(335, 'SGPamperMe', 'Pamper me', 'https://app-b.insvr.com/img/s/300/SGPamperMe_ko-KR.png', 1, 'HABANERO'),
(336, 'SGZeus', 'Zeus', 'https://app-b.insvr.com/img/s/300/SGZeus_ko-KR.png', 1, 'HABANERO'),
(337, 'SGSOS', 'S.O.S.!', 'https://app-b.insvr.com/img/s/300/SGSOS_ko-KR.png', 1, 'HABANERO'),
(338, 'SGPoolShark', 'Full shark', 'https://app-b.insvr.com/img/s/300/SGPoolShark_ko-KR.png', 1, 'HABANERO'),
(339, 'SGEgyptianDreams', 'Egyptian Dreams', 'https://app-b.insvr.com/img/s/300/SGEgyptianDreams_ko-KR.png', 1, 'HABANERO'),
(340, 'SGBarnstormerBucks', 'Barnstormer Bucks', 'https://app-b.insvr.com/img/s/300/SGBarnstormerBucks_ko-KR.png', 1, 'HABANERO'),
(341, 'SGSuperStrike', 'Super strike', 'https://app-b.insvr.com/img/s/300/SGSuperStrike_ko-KR.png', 1, 'HABANERO'),
(342, 'SGJungleRumble', 'Jungle rumble', 'https://app-b.insvr.com/img/s/300/SGJungleRumble_ko-KR.png', 1, 'HABANERO'),
(343, 'SGArcticWonders', 'Arctic Wonders', 'https://app-b.insvr.com/img/s/300/SGArcticWonders_ko-KR.png', 1, 'HABANERO'),
(344, 'SGTowerOfPizza', 'Tower of Pizza', 'https://app-b.insvr.com/img/s/300/SGTowerOfPizza_ko-KR.png', 1, 'HABANERO'),
(345, 'SGMummyMoney', 'Mummy money', 'https://app-b.insvr.com/img/s/300/SGMummyMoney_ko-KR.png', 1, 'HABANERO'),
(346, 'SGBikiniIsland', 'bikini island', 'https://app-b.insvr.com/img/s/300/SGBikiniIsland_ko-KR.png', 1, 'HABANERO'),
(347, 'SGQueenOfQueens1024', 'Queen of Queens II', 'https://app-b.insvr.com/img/s/300/SGQueenOfQueens1024_ko-KR.png', 1, 'HABANERO'),
(348, 'SGDragonsRealm', 'Dragon\'s Realm', 'https://app-b.insvr.com/img/s/300/SGDragonsRealm_ko-KR.png', 1, 'HABANERO'),
(349, 'SGAllForOne', 'All for one', 'https://app-b.insvr.com/img/s/300/SGAllForOne_ko-KR.png', 1, 'HABANERO'),
(350, 'SGFlyingHigh', 'Flying high', 'https://app-b.insvr.com/img/s/300/SGFlyingHigh_ko-KR.png', 1, 'HABANERO'),
(351, 'SGMrBling', 'Mr. Bling', 'https://app-b.insvr.com/img/s/300/SGMrBling_ko-KR.png', 1, 'HABANERO'),
(352, 'SGMysticFortune', 'Mystic Fortune', 'https://app-b.insvr.com/img/s/300/SGMysticFortune_ko-KR.png', 1, 'HABANERO'),
(353, 'SGPuckerUpPrince', 'Funker up prince', 'https://app-b.insvr.com/img/s/300/SGPuckerUpPrince_ko-KR.png', 1, 'HABANERO'),
(354, 'SGSirBlingalot', 'Bring it all', 'https://app-b.insvr.com/img/s/300/SGSirBlingalot_ko-KR.png', 1, 'HABANERO'),
(355, 'SGCashReef', 'Cash leaf', 'https://app-b.insvr.com/img/s/300/SGCashReef_ko-KR.png', 1, 'HABANERO'),
(356, 'SGQueenOfQueens243', 'Queen of queens', 'https://app-b.insvr.com/img/s/300/SGQueenOfQueens243_ko-KR.png', 1, 'HABANERO'),
(357, 'SGRideEmCowboy', 'Lytham Cowboy (Pick Game)', 'https://app-b.insvr.com/img/s/300/SGRideEmCowboy_ko-KR.png', 1, 'HABANERO'),
(358, 'SGGrapeEscape', 'The Graph Escape', 'https://app-b.insvr.com/img/s/300/SGGrapeEscape_ko-KR.png', 1, 'HABANERO'),
(359, 'SGGoldenUnicorn', 'Golden unicorn', 'https://app-b.insvr.com/img/s/300/SGGoldenUnicorn_ko-KR.png', 1, 'HABANERO'),
(360, 'SGFrontierFortunes', 'Frontier Fortune', 'https://app-b.insvr.com/img/s/300/SGFrontierFortunes_ko-KR.png', 1, 'HABANERO'),
(361, 'SGIndianCashCatcher', 'Indian Cash Catcher', 'https://app-b.insvr.com/img/s/300/SGIndianCashCatcher_ko-KR.png', 1, 'HABANERO'),
(362, 'SGSkysTheLimit', 'Sky\'s the Limit', 'https://app-b.insvr.com/img/s/300/SGSkysTheLimit_ko-KR.png', 1, 'HABANERO'),
(363, 'SGTheBigDeal', 'The Big Deal', 'https://app-b.insvr.com/img/s/300/SGTheBigDeal_ko-KR.png', 1, 'HABANERO'),
(364, 'SGCashosaurus', 'Cashosaurus', 'https://app-b.insvr.com/img/s/300/SGCashosaurus_ko-KR.png', 1, 'HABANERO'),
(365, 'SGDiscoFunk', 'Disco funk', 'https://app-b.insvr.com/img/s/300/SGDiscoFunk_ko-KR.png', 1, 'HABANERO'),
(366, 'SGCalaverasExplosiva', 'Calaveras Explociba', 'https://app-b.insvr.com/img/s/300/SGCalaverasExplosivas_ko-KR.png', 1, 'HABANERO'),
(367, 'SGNewYearsBash', 'New Year Bessie', 'https://app-b.insvr.com/img/s/300/SGNewYearsBash_ko-KR.png', 1, 'HABANERO'),
(368, 'SGNineTails', 'Nine Tales', 'https://app-b.insvr.com/img/s/300/SGNineTails_ko-KR.png', 1, 'HABANERO'),
(369, 'SGMysticFortuneDelux', 'Mystic Fortune Deluxe', 'https://app-b.insvr.com/img/s/300/SGMysticFortuneDeluxe_ko-KR.png', 1, 'HABANERO'),
(370, 'SGLuckyDurian', 'Lucky durian', 'https://app-b.insvr.com/img/s/300/SGLuckyDurian_ko-KR.png', 1, 'HABANERO'),
(371, 'SGDiscoBeats', 'Disco beat', 'https://app-b.insvr.com/img/s/300/SGDiscoBeats_ko-KR.png', 1, 'HABANERO'),
(372, 'SGLanternLuck', 'Lantern lucky', 'https://app-b.insvr.com/img/s/300/SGLanternLuck_ko-KR.png', 1, 'HABANERO'),
(373, 'SGBombRunner', 'Boom runner', 'https://app-b.insvr.com/img/s/300/SGBombRunner_ko-KR.png', 1, 'HABANERO'),
(374, 'sun_of_egypt', 'SUN OF EGYPT', 'https://cdn46952.bngsrv.com/games/banner_173_en.jpe?ts=1573550830337', 1, 'BOOONGO'),
(375, 'sun_of_egypt_2', 'SUN OF EGYPT 2', 'https://cdn46952.bngsrv.com/games/banner_202_en.jpg?ts=1602582288012', 1, 'BOOONGO'),
(376, 'happy_fish', 'HAPPY FISH', 'https://cdn46952.bngsrv.com/games/banner_261_en.jpg?ts=1644912611364', 1, 'BOOONGO'),
(377, 'queen_of_the_sun', 'QUEEN OF THE SUN', 'https://cdn46952.bngsrv.com/games/banner_256_en.jpg?ts=1643099409287', 1, 'BOOONGO'),
(378, 'tiger_jungle', 'TIGER JUNGLE', 'https://cdn46952.bngsrv.com/games/banner_242_en.jpg?ts=1630999887216', 1, 'BOOONGO'),
(379, 'black_wolf', 'BLACK WOLF', 'https://cdn46952.bngsrv.com/games/banner_254_en.jpg?ts=1637589465054', 1, 'BOOONGO'),
(380, 'hit_the_gold', 'HIT THE GOLD', 'https://cdn46952.bngsrv.com/games/banner_228_en.jpg?ts=1621873173151', 1, 'BOOONGO'),
(381, 'candy_boom', 'CANDY BOOM', 'https://cdn46952.bngsrv.com/games/banner_250_en.jpg?ts=1635783617393', 1, 'BOOONGO'),
(382, 'scarab_riches', 'SCARAB RICHES', 'https://cdn46952.bngsrv.com/games/banner_168_en.jpe?ts=1568115171958', 1, 'BOOONGO'),
(383, 'golden_dancing_lion', 'GOLDEN DANCING LION', 'https://cdn46952.bngsrv.com/games/banner_252_en.jpg?ts=1637050697146', 1, 'BOOONGO'),
(384, 'dragon_pearls', 'DRAGON PEARLS', 'https://cdn46952.bngsrv.com/games/banner_151_en.jpeg?ts=1551785453936', 1, 'BOOONGO'),
(385, '3_coins', '3 COINS', 'https://cdn46952.bngsrv.com/games/banner_212_en.jpg?ts=1610363762913', 1, 'BOOONGO'),
(386, 'super_rich_god', 'SUPER RICH GOD', 'https://cdn46952.bngsrv.com/games/banner_217_en.jpg?ts=1614080397964', 1, 'BOOONGO'),
(387, '15_dragon_pearls', '15 DRAGON PEARLS', 'https://cdn46952.bngsrv.com/games/banner_197_en.jpeg?ts=1597062411022', 1, 'BOOONGO'),
(388, 'aztec_sun', 'AZTEC SUN', 'https://cdn46952.bngsrv.com/games/banner_187_en.jpe?ts=1591699656458', 1, 'BOOONGO'),
(389, 'scarab_temple', 'SCARAB TEMPLE', 'https://cdn46952.bngsrv.com/games/banner_201_en.jpeg?ts=1601369529833', 1, 'BOOONGO'),
(390, 'gods_temple_deluxe', 'GODS TEMPLE DELUXE', 'https://cdn46952.bngsrv.com/static/games/banner_86_en.png', 1, 'BOOONGO'),
(391, 'book_of_sun', 'BOOK OF SUN', 'https://cdn46952.bngsrv.com/static/games/banner_139_en.jpg', 1, 'BOOONGO'),
(392, '777_gems', '777 GEMS', 'https://cdn46952.bngsrv.com/games/banner_148_en.jpeg', 1, 'BOOONGO'),
(393, 'book_of_sun_multicha', 'BOOK OF SUN MULTICHANCE', 'https://cdn46952.bngsrv.com/games/banner_157_en.jpg?ts=1557834927593', 1, 'BOOONGO'),
(394, 'olympian_gods', 'OLYMPIAN GODS', 'https://cdn46952.bngsrv.com/games/banner_166_en.jpeg?ts=1565181937129', 1, 'BOOONGO'),
(395, '777_gems_respin', '777 GEMS RESPIN', 'https://cdn46952.bngsrv.com/games/banner_175_en.jpg?ts=1575289527907', 1, 'BOOONGO');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(396, 'tigers_gold', 'TIGERS GOLD', 'https://cdn46952.bngsrv.com/games/banner_178_en.jpe?ts=1580204919370', 1, 'BOOONGO'),
(397, 'moon_sisters', 'MOON SISTERS', 'https://cdn46952.bngsrv.com/games/banner_183_en.jpg?ts=1589276977044', 1, 'BOOONGO'),
(398, 'book_of_sun_choice', 'BOOK OF SUN CHOICE', 'https://cdn46952.bngsrv.com/games/banner_184_en.jpg?ts=1586766763403', 1, 'BOOONGO'),
(399, 'super_marble', 'SUPER MARBLE', 'https://cdn46952.bngsrv.com/games/banner_189_en.jpg?ts=1592834985255', 1, 'BOOONGO'),
(400, 'buddha_fortune', 'BUDDHA FORTUNE', 'https://cdn46952.bngsrv.com/games/banner_190_en.jpg?ts=1594723112381', 1, 'BOOONGO'),
(401, 'great_panda', 'GREAT PANDA', 'https://cdn46952.bngsrv.com/games/banner_181_en.jpg?ts=1583843045334', 1, 'BOOONGO'),
(402, '15_golden_eggs', '15 GOLDEN EGGS', 'https://cdn46952.bngsrv.com/static/games/banner_14_en.png', 1, 'BOOONGO'),
(403, 'thunder_of_olympus', 'THUNDER OF OLYMPUS', 'https://cdn46952.bngsrv.com/games/banner_200_en.jpe?ts=1599463031466', 1, 'BOOONGO'),
(404, 'eye_of_gold', 'EYE OF GOLD', 'https://cdn46952.bngsrv.com/games/banner_204_en.jpg?ts=1607423095999', 1, 'BOOONGO'),
(405, 'tiger_stone', 'TIGER STONE', 'https://cdn46952.bngsrv.com/games/banner_209_en.jpg?ts=1604945706164', 1, 'BOOONGO'),
(406, 'magic_apple', 'MAGIC APPLE', 'https://cdn46952.bngsrv.com/games/banner_219_en.jpg?ts=1615278797585', 1, 'BOOONGO'),
(407, 'wolf_saga', 'WOLF SAGA', 'https://cdn46952.bngsrv.com/games/banner_216_en.png?ts=1612371564816', 1, 'BOOONGO'),
(408, 'magic_ball', 'MAGIC BALL', 'https://cdn46952.bngsrv.com/games/banner_223_en.jpg?ts=1618214765589', 1, 'BOOONGO'),
(409, 'scarab_boost', 'SCARAB BOOST', 'https://cdn46952.bngsrv.com/games/banner_231_en.jpg?ts=1623137017503', 1, 'BOOONGO'),
(410, 'wukong', 'WUKONG', 'https://cdn46952.bngsrv.com/games/banner_233_en.jpg?ts=1624348278790', 1, 'BOOONGO'),
(411, 'pearl_diver', 'PEARL DIVER', 'https://cdn46952.bngsrv.com/games/banner_232_en.jpg?ts=1624952929307', 1, 'BOOONGO'),
(412, '3_coins_egypt', '3 COINS EGYPT', 'https://cdn46952.bngsrv.com/games/banner_236_en.jpg?ts=1626173501198', 1, 'BOOONGO'),
(413, 'ganesha_boost', 'GANESHA BOOST', 'https://cdn46952.bngsrv.com/games/banner_240_en.jpg?ts=1629708978121', 1, 'BOOONGO'),
(414, 'wolf_night', 'WOLF NIGHT', 'https://cdn46952.bngsrv.com/games/banner_237_en.jpg?ts=1628583185745', 1, 'BOOONGO'),
(415, 'book_of_wizard', 'BOOK OF WIZARD', 'https://cdn46952.bngsrv.com/games/banner_244_en.jpg?ts=1632823480279', 1, 'BOOONGO'),
(416, 'lord_fortune_2', 'LORD FORTUNE 2', 'https://cdn46952.bngsrv.com/games/banner_245_en.jpg?ts=1633430937520', 1, 'BOOONGO'),
(417, 'gold_express', 'GOLD EXPRESS', 'https://cdn46952.bngsrv.com/games/banner_249_en.jpg?ts=1634629019700', 1, 'BOOONGO'),
(418, 'book_of_wizard_cryst', 'BOOK OF WIZARD CRYSTAL', 'https://cdn46952.bngsrv.com/games/banner_255_en.jpg?ts=1641895746148', 1, 'BOOONGO'),
(419, 'pearl_diver_2', 'PEARL DIVER 2', 'https://cdn46952.bngsrv.com/games/banner_259_en.jpg?ts=1645521353434', 1, 'BOOONGO'),
(420, 'sun_of_egypt_3', 'SUN OF EGYPT 3', 'https://cdn46952.bngsrv.com/games/banner_262_en.jpg?ts=1646655112312', 1, 'BOOONGO'),
(421, 'caishen_wealth', 'CAISHEN WEALTH', 'https://cdn46952.bngsrv.com/games/banner_265_en.jpg?ts=1649711719448', 1, 'BOOONGO'),
(422, 'aztec_fire', 'AZTEC FIRE', 'https://cdn46952.bngsrv.com/games/banner_272_en.jpg?ts=1658177726858', 1, 'BOOONGO'),
(423, 'hand_of_gold', 'HAND OF GOLD', 'https://cdn46952.bngsrv.com/games/banner_220_en.png?ts=1618995876889', 1, 'PLAYSON'),
(424, 'legend_of_cleopatra', 'LEGEND OF CLEOPATRA', 'https://cdn46952.bngsrv.com/static/games/banner_69_en.jpg', 1, 'PLAYSON'),
(425, '40_joker_staxx', '40 JOKER STAXX', 'https://cdn46952.bngsrv.com/games/banner_96_en.png?ts=1616657514396', 1, 'PLAYSON'),
(426, 'burning_wins', 'BURNING WINS', 'https://cdn46952.bngsrv.com/games/banner_102_en.png?ts=1575280724870', 1, 'PLAYSON'),
(427, 'book_of_gold', 'BOOK OF GOLD', 'https://cdn46952.bngsrv.com/games/banner_133_en.png?ts=1575280724870', 1, 'PLAYSON'),
(428, '100_joker_staxx', '100 JOKER STAXX', 'https://cdn46952.bngsrv.com/games/banner_144_en.png?ts=1575280724870', 1, 'PLAYSON'),
(429, 'book_of_gold_classic', 'BOOK OF GOLD CLASSIC', 'https://cdn46952.bngsrv.com/games/banner_159_en.png?ts=1575280724870', 1, 'PLAYSON'),
(430, 'book_of_gold_multich', 'BOOK OF GOLD MULTICHANCE', 'https://cdn46952.bngsrv.com/games/banner_199_en.png?ts=1575280724870', 1, 'PLAYSON'),
(431, 'buffalo_xmas', 'BUFFALO XMAS', 'https://cdn46952.bngsrv.com/games/banner_248_en.png?ts=1575280724870', 1, 'PLAYSON'),
(432, '67', 'Golden eggs', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/67_EN.png', 1, 'CQ9'),
(433, '161', 'Hercules', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/161_EN.png', 1, 'CQ9'),
(434, '16', 'Super 5', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/16_EN.png', 1, 'CQ9'),
(435, '72', 'Happy Rich Year', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/72_EN.png', 1, 'CQ9'),
(436, '1', 'Fruit King', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/1_EN.png', 1, 'CQ9'),
(437, '163', 'Neja Advent', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/163_EN.png', 1, 'CQ9'),
(438, '26', '777', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/26_EN.png', 1, 'CQ9'),
(439, '50', 'Good fortune', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/50_EN.png', 1, 'CQ9'),
(440, '31', 'God of war', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/31_EN.png', 1, 'CQ9'),
(441, '64', 'Zeus', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/64_EN.png', 1, 'CQ9'),
(442, '69', 'Pasaycen', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/69_EN.png', 1, 'CQ9'),
(443, '89', 'Thor', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/89_EN.png', 1, 'CQ9'),
(444, '46', 'Wolf moon', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/46_EN.png', 1, 'CQ9'),
(445, '139', 'Fire chibi', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/139_EN.png', 1, 'CQ9'),
(446, '15', 'Gu Gu Gu', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/15_EN.png', 1, 'CQ9'),
(447, '140', 'Fire Chibi 2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/140_EN.png', 1, 'CQ9'),
(448, '8', 'So Sweet', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/8_EN.png', 1, 'CQ9'),
(449, '147', 'Flower fortune', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/147_EN.png', 1, 'CQ9'),
(450, '113', 'Flying Kai Shen', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/113_EN.png', 1, 'CQ9'),
(451, '58', 'Gu Gu Gu 2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/58_EN.png', 1, 'CQ9'),
(452, '128', 'Wheel money', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/128_EN.png', 1, 'CQ9'),
(453, '5', 'Mr Rich', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/5_EN.png', 1, 'CQ9'),
(454, '180', 'Gu Gu Gu 3', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/9835.png', 1, 'CQ9'),
(455, '118', 'SkullSkull', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/118_EN.png', 1, 'CQ9'),
(456, '148', 'Fortune totem', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/148_EN.png', 1, 'CQ9'),
(457, '144', 'Diamond treasure', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/144_EN.png', 1, 'CQ9'),
(458, '19', 'Hot spin', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/19_EN.png', 1, 'CQ9'),
(459, '112', 'Pyramid radar', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/112_EN.png', 1, 'CQ9'),
(460, '160', 'Pa Kai Shen2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/160_EN.png', 1, 'CQ9'),
(461, '132', 'Miou', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/132_EN.png', 1, 'CQ9'),
(462, '47', 'Pharaoh gold', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/47_EN.png', 1, 'CQ9'),
(463, '13', 'Sakura legend', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/13_EN.png', 1, 'CQ9'),
(464, '34', 'Gopher\'s War', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/34_EN.png', 1, 'CQ9'),
(465, '59', 'Summer mood', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/59_EN.png', 1, 'CQ9'),
(466, '76', 'Won won won', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/76_EN.png', 1, 'CQ9'),
(467, '95', 'Football boots', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/95_EN.png', 1, 'CQ9'),
(468, '57', 'The Beast War', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/57_EN.png', 1, 'CQ9'),
(469, '17', 'Great lion', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/17_EN.png', 1, 'CQ9'),
(470, '20', '888', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/20_EN.png', 1, 'CQ9'),
(471, '182', 'Thor 2', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/10044.png', 1, 'CQ9'),
(472, '66', 'Fire 777', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/66_EN.png', 1, 'CQ9'),
(473, '2', 'God of Chess', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/2_EN.png', 1, 'CQ9'),
(474, '21', 'Big wolf', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/21_EN.png', 1, 'CQ9'),
(475, '197', 'Dragon\'s Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11502.png', 1, 'CQ9'),
(476, '208', 'Money tree', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11593.png', 1, 'CQ9'),
(477, '212', 'Burning Si-Yow', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11805.png', 1, 'CQ9'),
(478, '214', 'Ninja raccoon', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/11806.png', 1, 'CQ9'),
(479, '218', 'Dollar night', 'https://resource.fdsigaming.com/thumbnail/slot/cq/en/12141.png', 1, 'CQ9'),
(480, 'greatwall', 'The Great Wall Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/The_Great_Wall_Treasures_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(481, 'chinesenewyear', 'Chinese New Year', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Chinese_New_Year_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(482, 'jewellerystore', 'Jewelry store', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Jewellery_Store_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(483, 'redcliff', 'Red cliff', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Red_Cliff_360x340.png', 1, 'EVOPLAY'),
(484, 'ElvenPrincesses', 'Elven Princess', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Elven_Princesses_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(485, 'robinzon', 'Robinson', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Robinson_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(486, 'aeronauts', 'Aeronauts', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/Aeronauts_Thumbnail_360x360.png', 1, 'EVOPLAY'),
(487, 'NukeWorld', 'Nook World', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/9102.jpg', 1, 'EVOPLAY'),
(488, 'legendofkaan', 'Legend of Khan', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/10033.png', 1, 'EVOPLAY'),
(489, 'LivingTales', 'Night of the Living Tales', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11292.jpg', 1, 'EVOPLAY'),
(490, 'IceMania', 'Ice mania', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11384.jpg', 1, 'EVOPLAY'),
(491, 'ValleyOfDreams', 'Valley of Dreams', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11427.png', 1, 'EVOPLAY'),
(492, 'FruitNova', 'Fruit Nova', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11428.jpg', 1, 'EVOPLAY'),
(493, 'TreeOfLight', 'Tree of light', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11503.png', 1, 'EVOPLAY'),
(494, 'TempleOfDead', 'Temple of the dead', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11604.png', 1, 'EVOPLAY'),
(495, 'RunesOfDestiny', 'Runes of Destiny', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11728.png', 1, 'EVOPLAY'),
(496, 'EllensFortune', 'Ellen Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11729.jpg', 1, 'EVOPLAY'),
(497, 'UnlimitedWishes', 'Unlimited Wishes', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11807.jpg', 1, 'EVOPLAY'),
(498, 'FoodFeast', 'Food fist', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11808.jpg', 1, 'EVOPLAY'),
(499, 'EpicLegends', 'Epic legends', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11810.jpg', 1, 'EVOPLAY'),
(500, 'SweetSugar', 'Sweet sugar', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/11811.png', 1, 'EVOPLAY'),
(501, 'GangsterNight', 'Gangster night', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12057.jpg', 1, 'EVOPLAY'),
(502, 'GoldOfSirens', 'Gold of sirens', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12058.jpg', 1, 'EVOPLAY'),
(503, 'BloodyBrilliant', 'Bloody brilliant', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12059.jpg', 1, 'EVOPLAY'),
(504, 'TempleOfDeadBonusBuy', 'Temple of the Dead BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12133.jpg', 1, 'EVOPLAY'),
(505, 'AnubisMoon', 'Anubis moon', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12171.jpg', 1, 'EVOPLAY'),
(506, 'FruitDisco', 'Fruit disco', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12172.jpg', 1, 'EVOPLAY'),
(507, 'FruitSuperNova30', 'Fruit Super Nova 30', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12173.jpg', 1, 'EVOPLAY'),
(508, 'CurseOfThePharaoh', 'Curse of the Pharaoh', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12174.jpg', 1, 'EVOPLAY'),
(509, 'FruitSuperNova60', 'Fruit Super Nova 60', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12227.jpg', 1, 'EVOPLAY'),
(510, 'CurseofthePharaohBon', 'Curse of the Pharaoh BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12228.jpg', 1, 'EVOPLAY'),
(511, 'FruitSuperNova100', 'Fruit Super Nova 100', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12256.jpg', 1, 'EVOPLAY'),
(512, 'ChristmasReach', 'Christmas lychee', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12269.jpg', 1, 'EVOPLAY'),
(513, 'FruitSuperNova80', 'Whoft Super Nova 80', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12326.jpg', 1, 'EVOPLAY'),
(514, 'DragonsTavern', 'Dragon\'s Tavern', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12327.jpg', 1, 'EVOPLAY'),
(515, 'ChristmasReachBonusB', 'Christmas Riti BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12329.jpg', 1, 'EVOPLAY'),
(516, 'WildOverlords', 'Wild overlord', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12329.jpg', 1, 'EVOPLAY'),
(517, 'DragonsTavernBonusBu', 'Dragon\'s Tavern BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12358.jpg', 1, 'EVOPLAY'),
(518, 'BudaiReels', 'Budai reels', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12381.jpg', 1, 'EVOPLAY'),
(519, 'MoneyMinter', 'Money minter', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12575_.jpeg', 1, 'EVOPLAY'),
(520, 'JuicyGems', 'Watch gem', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12895.jpg', 1, 'EVOPLAY'),
(521, 'JuicyGemsBB', 'Watch Gem BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12896.jpg', 1, 'EVOPLAY'),
(522, 'TheGreatestCatch', 'The Greatest Catch', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12892.jpg', 1, 'EVOPLAY'),
(523, 'TheGreatestCatchBonu', 'The Greatest Catch BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12893.jpg', 1, 'EVOPLAY'),
(524, 'TreeOfLightBB', 'Tree of Light BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12899.jpg', 1, 'EVOPLAY'),
(525, 'WolfHiding', 'Wolf Hiding', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12953.jpg', 1, 'EVOPLAY'),
(526, 'CaminoDeChili', 'Camino de Chili', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12902.jpg', 1, 'EVOPLAY'),
(527, 'CandyDreamsSweetPlan', 'Candy dreams', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12902.jpg', 1, 'EVOPLAY'),
(528, 'WildOverlordsBonusBu', 'Wild Overlord BB', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12890.jpg', 1, 'EVOPLAY'),
(529, 'TempleOfThunder', 'Temple of Thunder', 'https://resource.fdsigaming.com/thumbnail/slot/evoplay/12891.jpg', 1, 'EVOPLAY'),
(530, 'WildTriads', 'WildTriads', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/WildTriads.png', 1, 'TOPTREND'),
(531, 'ReelsOfFortune', 'Reels Of Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/ReelsOfFortune.png', 1, 'TOPTREND'),
(532, 'GoldenAmazon', 'Golden Amazon', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/GoldenAmazon.png', 1, 'TOPTREND'),
(533, 'MonkeyLuck', 'MonkeyLuck', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/MonkeyLuck.png', 1, 'TOPTREND'),
(534, 'LeagueOfChampions', 'League Of Champions', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/LeagueOfChampions.png', 1, 'TOPTREND'),
(535, 'MadMonkeyH5', 'MadMonkey', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/MadMonkeyH5.png', 1, 'TOPTREND'),
(536, 'DynastyEmpire', 'Dynasty Empire', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DynastyEmpire.png', 1, 'TOPTREND'),
(537, 'SuperKids', 'SuperKids', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/SuperKids.png', 1, 'TOPTREND'),
(538, 'HotVolcanoH5', 'HotVolcano', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/HotVolcano.png', 1, 'TOPTREND'),
(539, 'Huluwa', 'Huluwa', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/Huluwa.png', 1, 'TOPTREND'),
(540, 'LegendOfLinkH5', 'LegendOfLink', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/LegendOfLinkH5.png', 1, 'TOPTREND'),
(541, 'DetectiveBlackCat', 'DetectiveBlackCat', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DetectiveBlackcat.png', 1, 'TOPTREND'),
(542, 'ChilliGoldH5', 'Chilli Gold', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/ChiliGoldH5.png', 1, 'TOPTREND'),
(543, 'SilverLionH5', 'Silver Lion', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/SilverLionH5.png', 1, 'TOPTREND'),
(544, 'ThunderingZeusH5', 'ThunderingZeus', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/ThunderingZeus.png', 1, 'TOPTREND'),
(545, 'DragonPalaceH5', 'Dragon Palace', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11658.png', 1, 'TOPTREND'),
(546, 'MadMonkey2', 'MadMonkey', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11660.png', 1, 'TOPTREND'),
(547, 'MedusaCurse', 'Medusa Curse', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11661.png', 1, 'TOPTREND'),
(548, 'BattleHeroes', 'Battle Heroes', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11662.png', 1, 'TOPTREND'),
(549, 'NeptunesGoldH5', 'Neptunes Gold', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11664.png', 1, 'TOPTREND'),
(550, 'HeroesNeverDie', 'Heroes Never Die', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11665.png', 1, 'TOPTREND'),
(551, 'WildWildWitch', 'Wild Wild Witch', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11666.png', 1, 'TOPTREND'),
(552, 'WildKartRacers', 'Wild Kart Racers', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11667.png', 1, 'TOPTREND'),
(553, 'KingDinosaur', 'KingDinosaur', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11668.png', 1, 'TOPTREND'),
(554, 'GoldenGenie', 'GoldenGenie', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11669.png', 1, 'TOPTREND'),
(555, 'UltimateFighter', 'UltimateFighter', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11672.png', 1, 'TOPTREND'),
(556, 'EverlastingSpins', 'EverlastingSpins', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11673.png', 1, 'TOPTREND'),
(557, 'Zoomania', 'Zoomania', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11676.png', 1, 'TOPTREND'),
(558, 'LaserCats', 'Laser Cats', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11679.png', 1, 'TOPTREND'),
(559, 'DiamondFortune', 'DiamondFortune', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11682.png', 1, 'TOPTREND'),
(560, 'GoldenClaw', 'GoldenClaw', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11685.png', 1, 'TOPTREND'),
(561, 'PandaWarrior', 'PandaWarrior', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11687.png', 1, 'TOPTREND'),
(562, 'RoyalGoldenDragon', 'RoyalGoldenDragon', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11690.png', 1, 'TOPTREND'),
(563, 'MegaMaya', 'MegaMaya', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11697.png', 1, 'TOPTREND'),
(564, 'MegaPhoenix', 'MegaPhoenix', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/11864.png', 1, 'TOPTREND'),
(565, 'DolphinGoldH5', 'DolphinGold', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DolphinGoldH5.png', 1, 'TOPTREND'),
(566, 'DragonKingH5', 'DragonKing', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/DragonKingH5.png', 1, 'TOPTREND'),
(567, 'LuckyPandaH5', 'LuckyPanda', 'https://resource.fdsigaming.com/thumbnail/slot/ttg/LuckyPanda.png', 1, 'TOPTREND'),
(568, 'btball5x20', 'Crazy Basketball', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/021.Crazy Basketball.png', 1, 'DREAMTECH'),
(569, 'dnp', 'DragonPhoenix Prosper', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/022.DragonPhoenix Prosper.png', 1, 'DREAMTECH'),
(570, 'crystal', 'Glory of Heroes', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/023.Glory of Heroes.png', 1, 'DREAMTECH'),
(571, 'xjqy5x9', 'Chinese Paladin', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/024.Chinese Paladin.png', 1, 'DREAMTECH'),
(572, 'fls', 'FULUSHOU', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/025.FULUSHOU.png', 1, 'DREAMTECH'),
(573, 'fourss', 'Four Holy Beasts', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/026.Four Holy Beasts.png', 1, 'DREAMTECH'),
(574, 'casino', '3D Slot', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/028.3D Slot.png', 1, 'DREAMTECH'),
(575, 'crazy5x243', 'Crazy GO GO GO', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/029.Crazy GO GO GO.png', 1, 'DREAMTECH'),
(576, 'rocknight', 'RocknRoll Night', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/031.RocknRoll Night.png', 1, 'DREAMTECH'),
(577, 'bluesea', 'Blue Sea', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/032.Blue Sea.png', 1, 'DREAMTECH'),
(578, 'klnz5x20', 'Happy Farm', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/033.Happy Farm.png', 1, 'DREAMTECH'),
(579, 'circus', 'Crazy Circus', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/034.Crazy Circus.png', 1, 'DREAMTECH'),
(580, 'sq5x243', '4X4 BATTLE', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/036.4X4 BATTLE.png', 1, 'DREAMTECH'),
(581, 'bikini', 'Bikini Party', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/037.Bikini Party.png', 1, 'DREAMTECH'),
(582, 'estate5x25', 'Monopoly', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/039.Monopoly.png', 1, 'DREAMTECH'),
(583, 'piratetreasure', 'Pirate_Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/042.PirateTreasure.png', 1, 'DREAMTECH'),
(584, 'foryouth5x25', 'SO YOUNG', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/045.SO YOUNG.png', 1, 'DREAMTECH'),
(585, 'fourbeauty', 'Four Beauties', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/046.Four Beauties.png', 1, 'DREAMTECH'),
(586, 'sweethouse', 'Candy House', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/047.Candy House.png', 1, 'DREAMTECH'),
(587, 'legend5x25', 'Legend of the King', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/048.Legend of the King.png', 1, 'DREAMTECH'),
(588, 'rocket6x25', 'Happiness Overflow', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/049.Happiness Overflow.png', 1, 'DREAMTECH'),
(589, 'hotpot5x25', 'Spicy Hotpot', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/050.Spicy Hotpot.png', 1, 'DREAMTECH'),
(590, 'opera', 'Beijing opera', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/051.Beijing opera.jpeg', 1, 'DREAMTECH'),
(591, 'bigred', 'Big Red', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/055.Big Red.jpeg', 1, 'DREAMTECH'),
(592, 'wrathofthor', 'Wrath of Thor', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/056.Wrath of Thor.png', 1, 'DREAMTECH'),
(593, 'boxingarena', 'Boxing Arena', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/059.Boxing Arena.jpeg', 1, 'DREAMTECH'),
(594, 'bxgh5x25', 'Eight Immortals', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/060.Eight Immortals.png', 1, 'DREAMTECH'),
(595, 'fantasyforest', 'Elf Kingdom', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/061.Elf Kingdom.png', 1, 'DREAMTECH'),
(596, 'camgirl5x25', 'Sexy Camgirl', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/062.Sexy Camgirl.png', 1, 'DREAMTECH'),
(597, 'hotpotfeast', 'Hotpot Feast', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/064.Hotpot Feast.png', 1, 'DREAMTECH'),
(598, 'magician', 'Magician', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/065.Magician.png', 1, 'DREAMTECH'),
(599, 'armorCrisis5x25', 'Armor Crisis', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/067.Armor Crisis.jpeg', 1, 'DREAMTECH'),
(600, 'galaxywars', 'Galaxy Wars', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/068.Galaxy Wars.png', 1, 'DREAMTECH'),
(601, 'easyrider', 'Easy Rider', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/069.Easy Rider.png', 1, 'DREAMTECH'),
(602, 'bwzq5x25', 'Joust for a spouse', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/070.Joust for a spouse.png', 1, 'DREAMTECH'),
(603, 'worldCup5x25', 'FIFA World Cup', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/071.FIFA World Cup.png', 1, 'DREAMTECH'),
(604, 'goldjade5x50', 'Jin Yu Man Tang', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/072.Jin Yu Man Tang.png', 1, 'DREAMTECH'),
(605, 'shokudo', 'shokudo', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/073.shokudo.jpeg', 1, 'DREAMTECH'),
(606, 'train', 'Treasure Hunt Trip', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/074.Treasure Hunt Trip.png', 1, 'DREAMTECH'),
(607, 'oceanpark5x50', 'Ocean Park', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/075.Ocean Park.jpeg', 1, 'DREAMTECH'),
(608, 'lovefighters', 'Love Fighters', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/077.Love Fighters.png', 1, 'DREAMTECH'),
(609, 'genie', 'Aladdin\'s Wish', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/078.Aladdin\'s Wish.png', 1, 'DREAMTECH'),
(610, 'garden', 'Little Big Garden', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/079.Little Big Garden.png', 1, 'DREAMTECH'),
(611, 'legendary', 'Legendary Tales', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/081.Legendary Tales.png', 1, 'DREAMTECH'),
(612, 'superstar5x50', 'Star Generation', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/083.Star Generation.png', 1, 'DREAMTECH'),
(613, 'alchemist', 'Crazy Alchemist', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/084.Crazy Alchemist.png', 1, 'DREAMTECH'),
(614, 'dinosaur5x25', 'Dinosaur World', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/089.Dinosaur World.png', 1, 'DREAMTECH'),
(615, 'shopping5x243', 'National Carnival', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/090.National Carnival.png', 1, 'DREAMTECH'),
(616, 'tombshadow', 'Tomb Shadow', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/086.Tomb Shadow.png', 1, 'DREAMTECH'),
(617, 'clash', 'Clash of Three kingdoms', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/088.Clash of Three kingdoms.png', 1, 'DREAMTECH'),
(618, 'icefire', 'Ice And Fire', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/093.Ice And Fire.png', 1, 'DREAMTECH'),
(619, 'legendMir5x25', 'Legendary Hegemony', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/095.Legendary Hegemony.png', 1, 'DREAMTECH'),
(620, 'whackamole', 'Whack-A-Mole', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/094.Whack-A-Mole.png', 1, 'DREAMTECH'),
(621, 'onenight5x243', 'Truffle Butter', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/096.Truffle Butter.png', 1, 'DREAMTECH'),
(622, 'magicbean', 'Magic Bean Legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/097.Magic Bean Legend.png', 1, 'DREAMTECH'),
(623, 'xiaoxiaole7x50', 'Monster Pop', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/103.Monster Pop.png', 1, 'DREAMTECH'),
(624, 'newyear5x25', 'Happy Piggy New Year', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/101.Happy Piggy New Year.png', 1, 'DREAMTECH'),
(625, 'secretdate', 'Secret Date', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/104.Secret Date.png', 1, 'DREAMTECH'),
(626, 'king5x25', 'Im King', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/105.ImKing.png', 1, 'DREAMTECH'),
(627, 'bacteria', 'Germ Lab', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/106.GermLab.png', 1, 'DREAMTECH'),
(628, 'cute5x50', 'Castle Guardian', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/107.CastleGurdian.png', 1, 'DREAMTECH'),
(629, 'baseball', 'Baseball Frenzy', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/108.BaseballFrenzy.png', 1, 'DREAMTECH'),
(630, 'streetdance5x25', 'Street Dance Show', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/109.StreetDanceShow.png', 1, 'DREAMTECH'),
(631, 'museum', 'Wondrous Museum', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/110.WondrousMuseum.png', 1, 'DREAMTECH'),
(632, 'mysticalstones', 'Mystical Stones', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/111.MysticalStones.png', 1, 'DREAMTECH'),
(633, 'sincity', 'Sin City', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/113.SinCity.png', 1, 'DREAMTECH'),
(634, 'wheel', 'Secrets of The Pentagram', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/114.Secretsofthe pentagram.png', 1, 'DREAMTECH'),
(635, 'westwild', 'West Wild', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/116.WestWild.png', 1, 'DREAMTECH'),
(636, 'halloween', 'Witch Winnings', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/115.WitchWinnings.png', 1, 'DREAMTECH'),
(637, 'bloodmoon', 'Blood Wolf legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/118.BloodWolf.png', 1, 'DREAMTECH'),
(638, 'wildchaser5x20', 'Battle Field', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/120.BattleField.png', 1, 'DREAMTECH'),
(639, 'dragonball2', 'Heroes of the East', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/121.HeroesofTheEast.png', 1, 'DREAMTECH'),
(640, 'sgkill5x20', 'Three Kingdoms', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/122.ThreeKingdoms.png', 1, 'DREAMTECH'),
(641, 'pirate5x25', 'Captain\'s Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9658.png', 1, 'DREAMTECH'),
(642, 'muaythai', 'Muaythai', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9659.png', 1, 'DREAMTECH'),
(643, 'sailor', 'Sailor Princess', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9660.png', 1, 'DREAMTECH'),
(644, 'nightclub', 'Infinity Club', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9661.png', 1, 'DREAMTECH'),
(645, 'nezha', 'Nezha Legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9662.png', 1, 'DREAMTECH'),
(646, 'bird', 'Bird Island', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10900.png', 1, 'DREAMTECH'),
(647, 'chess', 'Dragon Auto Chess', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10901.png', 1, 'DREAMTECH'),
(648, 'honor', 'Field Of Honor', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10902.png', 1, 'DREAMTECH'),
(649, 'goldrat5x243', 'Golden Rat', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10905.png', 1, 'DREAMTECH'),
(650, 'girlgroup5x25', 'Sexy Girls', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10906.png', 1, 'DREAMTECH'),
(651, 'boss5x20', 'Rich Asians', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10907.png', 1, 'DREAMTECH'),
(652, 'vikings', 'Nordic Saga', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10908.png', 1, 'DREAMTECH'),
(653, 'treasures', 'Secret Treasures', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10909.png', 1, 'DREAMTECH'),
(654, 'shiningstars', 'ShiningStars', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11268.png', 1, 'DREAMTECH'),
(655, 'tgow2plus', 'Cai Shen Dao Plus', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11555.png', 1, 'DREAMTECH'),
(656, 'peeping', 'Peeping', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11556.png', 1, 'DREAMTECH'),
(657, 'ds5x25', 'Drawing Sword', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12032.png', 1, 'DREAMTECH'),
(658, 'empire5x40', 'The Magic Blade', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12033.png', 1, 'DREAMTECH'),
(659, 'luckyfortune5x50', 'Lucky Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12034.png', 1, 'DREAMTECH'),
(660, 'maidhotel5x25', 'Maid Hotel', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12035.png', 1, 'DREAMTECH'),
(661, 'secretary3x9', 'Sexy Secretary', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12036.png', 1, 'DREAMTECH'),
(662, 'hawaii5x20', 'Hawaii Vacation', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12037.png', 1, 'DREAMTECH'),
(663, 'billiards5x243', 'POOL EIGHT BALL', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12362.png', 1, 'DREAMTECH'),
(664, 'bikini-paradise', 'Bikini Paradise', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11360.png', 1, 'PGSOFT'),
(665, 'ganesha-fortune', 'Ganesha Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11363.png', 1, 'PGSOFT'),
(666, 'queen-bounty', 'Queen of Bounty', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11610.jpg', 1, 'PGSOFT'),
(667, 'galactic-gems', 'Galactic Gems', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11614.png', 1, 'PGSOFT'),
(668, 'gdn-ice-fire', 'Guardians of Ice and Fire', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11615.png', 1, 'PGSOFT'),
(669, 'opera-dynasty', 'Opera Dynasty', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11616.png', 1, 'PGSOFT'),
(670, 'fortune-ox', 'Fortune Ox', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11617.png', 1, 'PGSOFT'),
(671, 'wild-bandito', 'Wild Bandito', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11855.jpg', 1, 'PGSOFT'),
(672, 'candy-bonanza', 'Candy Bonanza', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11854.jpg', 1, 'PGSOFT'),
(673, 'majestic-ts', 'Majestic Treasures', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11853.jpg', 1, 'PGSOFT'),
(674, 'buffalo-win', 'Buffalo Win', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12208.png', 1, 'PGSOFT'),
(675, 'emoji-riches', 'Emoji Riches', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12308.png', 1, 'PGSOFT'),
(676, 'cocktail-nite', 'Cocktail Nights', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12309.png', 1, 'PGSOFT'),
(677, 'dest-sun-moon', 'Destiny of Sun & Moon', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12505.png', 1, 'PGSOFT'),
(678, 'battleground', 'Battleground Royale', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12633.jpg', 1, 'PGSOFT'),
(679, 'vs5ultrab', 'Ultra Burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultrab.png', 1, 'REELKINGDOM'),
(680, 'vs5ultra', 'Ultra Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5ultra.png', 1, 'REELKINGDOM'),
(681, 'vs10returndead', 'Return of the Dead', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10returndead.png', 1, 'REELKINGDOM'),
(682, 'vs10bbbonanza', 'Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bbbonanza.png', 1, 'REELKINGDOM'),
(683, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20hburnhs.png', 1, 'REELKINGDOM'),
(684, 'vswayslight', 'Lucky Lightning', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswayslight.png', 1, 'REELKINGDOM'),
(685, 'vs12bbb', 'Bigger Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs12bbb.png', 1, 'REELKINGDOM'),
(686, 'vs432congocash', 'Congo Cash', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs432congocash.png', 1, 'REELKINGDOM'),
(687, 'vs1024temuj', 'Temujin Treasures', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs1024temuj.png', 1, 'REELKINGDOM'),
(688, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10bxmasbnza.png', 1, 'REELKINGDOM'),
(689, 'vs20terrorv', 'Cash Elevator', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20terrorv.png', 1, 'REELKINGDOM'),
(690, 'vswaysbbb', 'Big Bass Bonanza Megaways™', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vswaysbbb.png', 1, 'REELKINGDOM'),
(691, 'vs40bigjuan', 'Big Juan', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs40bigjuan.png', 1, 'REELKINGDOM'),
(692, 'vs10starpirate', 'Star Pirates Code', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10starpirate.png', 1, 'REELKINGDOM'),
(693, 'vs5hotburn', 'Hot to burn', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5hotburn.png', 1, 'REELKINGDOM'),
(694, 'vs25bkofkngdm', 'Book of Kingdoms', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25bkofkngdm.png', 1, 'REELKINGDOM'),
(695, 'vs20ekingrr', 'Emerald King Rainbow Road', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20ekingrr.png', 1, 'REELKINGDOM'),
(696, 'vs10eyestorm', 'Eye of the Storm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10eyestorm.png', 1, 'REELKINGDOM'),
(697, 'vs10amm', 'The Amazing Money Machine', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10amm.png', 1, 'REELKINGDOM'),
(698, 'vs10luckcharm', 'Lucky Grace And Charm', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10luckcharm.png', 1, 'REELKINGDOM'),
(699, 'vs25goldparty', 'Gold Party®', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs25goldparty.png', 1, 'REELKINGDOM'),
(700, 'vs20rockvegas', 'Rock Vegas Mega Hold & Spin', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs20rockvegas.png', 1, 'REELKINGDOM'),
(701, 'vs10tictac', 'Tic Tac Take', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10tictac.png', 1, 'REELKINGDOM'),
(702, 'vs243queenie', 'Queenie', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs243queenie.png', 1, 'REELKINGDOM'),
(703, 'vs10spiritadv', 'Spirit of Adventure', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs10spiritadv.png', 1, 'REELKINGDOM'),
(704, 'vs5littlegem', '?? ? ?? ? ??', 'https://solawins-sg0.pragmaticplay.net/game_pic/rec/325/vs5littlegem.png', 1, 'REELKINGDOM'),
(705, '100', 'Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(706, '101', 'Speed Cricket Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(707, '102', 'Fortune Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(708, '105', 'Speed Fortune Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/981.png', 1, 'EZUGI'),
(709, '106', 'VIP Fortune Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/1008.png', 1, 'EZUGI'),
(710, '107', 'Italian Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/1009.png', 1, 'EZUGI'),
(711, '120', 'Knockout Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(712, '130', 'Super 6 Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(713, '150', 'Dragon Tiger', 'https://media.ttfileserver.com/361/ezugi/300x300/967.png', 1, 'EZUGI'),
(714, '170', 'No Commission Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/966.png', 1, 'EZUGI'),
(715, '171', 'VIP No Commission Speed Cricket Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(716, '1000', 'Italian Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(717, '5001', 'Auto Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/994.png', 1, 'EZUGI'),
(718, '32100', 'Casino Marina Baccarat 1', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(719, '32101', 'Casino Marina Baccarat 2', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(720, '32102', 'Casino Marina Baccarat 3', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(721, '32103', 'Casino Marina Baccarat 4', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(722, '43100', 'Fiesta Baccarat', 'https://media.ttfileserver.com/361/ezugi/300x300/1006.png', 1, 'EZUGI'),
(723, '221000', 'Speed Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/928.png', 1, 'EZUGI'),
(724, '221002', 'Speed Auto Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/937.png', 1, 'EZUGI'),
(725, '221003', 'Diamond Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/929.png', 1, 'EZUGI'),
(726, '221004', 'Prestige Auto Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/938.png', 1, 'EZUGI'),
(727, '221005', 'Namaste Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/930.png', 1, 'EZUGI'),
(728, '224100', 'Ultimate Sic Bo', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(729, '228000', 'Andar Bahar', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(730, '228001', 'Lucky 7', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(731, '228100', 'Ultimate Andar Bahar', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(732, '321000', 'Casino Marina Roulette 1', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(733, '321001', 'Casino Marina Roulette 2', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(734, '411000', 'Spanish Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(735, '431000', 'Ruleta del Sol', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(736, '431001', 'Fiesta Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/1004.png', 1, 'EZUGI'),
(737, '481001', 'EZ Dealer Roulette Thai', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(738, '481002', 'EZ Dealer Roulette Japanese', 'https://media.ttfileserver.com/361/ezugi/300x300/984.png', 1, 'EZUGI'),
(739, '481003', 'EZ Dealer Roulette Mandarin', 'https://media.ttfileserver.com/361/ezugi/300x300/985.png', 1, 'EZUGI'),
(740, '481004', 'EZ Dealer Roulette Brazil', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(741, '501000', 'Turkish Roulette', 'https://media.ttfileserver.com/361/ezugi/300x300/932.png', 1, 'EZUGI'),
(742, '541000', 'Ultimate Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(743, '601000', 'Russian Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(744, '611000', 'Portomaso Roulette 2', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(745, '611001', 'Oracle Real Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(746, '611003', 'Oracle 360 Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EZUGI'),
(747, '01rb77cq1gtenhmo', 'Auto-Roulette VIP', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Auto-Roulette_VIP.png', 1, 'EVOLUTION'),
(748, 'qgqrucipvltnvnvq', 'Speed Baccarat W', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_W.png', 1, 'EVOLUTION'),
(749, 'p34i6wgax7bqb5cg', 'Salon Privé Baccarat G', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_G.png', 1, 'EVOLUTION'),
(750, 'GJSBJ00000000001', 'Grand Japanese Blackjack', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(751, 'JapSpeedBac00001', 'Japanese Speed Baccarat A', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(752, 'DragonTiger00001', 'Dragon Tiger', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Dragon_Tiger.png', 1, 'EVOLUTION'),
(753, 'SalPrivBac000010', 'Salon Privé Baccarat J', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_J.png', 1, 'EVOLUTION'),
(754, 'SpeedBlackjack03', 'Speed VIP Blackjack C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_C.png', 1, 'EVOLUTION'),
(755, 'NoCommBac0000001', 'No Commission Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Baccarat.png', 1, 'EVOLUTION'),
(756, 'qfyw6u63rixe3foz', 'Blackjack VIP 25', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_25.png', 1, 'EVOLUTION'),
(757, 'PTBaccarat000001', 'Prosperity Tree Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Prosperity_Tree_Baccarat.png', 1, 'EVOLUTION'),
(758, 'p63cmvmwagteemoy', 'Korean Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(759, 'rep45wbxnyjl7hr2', 'Speed Baccarat 5', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_5.png', 1, 'EVOLUTION'),
(760, 'MonBigBaller0001', 'MONOPOLY Big Baller', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/MONOPOLY_Big_Baller.png', 1, 'EVOLUTION'),
(761, 'LightningTable01', 'Lightning Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Lightning_Roulette.png', 1, 'EVOLUTION'),
(762, 'SalPrivBac000011', 'Salon Privé Baccarat K', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_K.png', 1, 'EVOLUTION'),
(763, 'ndgvz5mlhfuaad6e', 'Speed Baccarat D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_D.png', 1, 'EVOLUTION'),
(764, 'obj64qcnqfunjelj', 'Speed Baccarat J', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_J.png', 1, 'EVOLUTION'),
(765, 'ExChEpicSpins001', 'Extra Chilli Epic Spins', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Extra_Chilli_Epic_Spins.png', 1, 'EVOLUTION'),
(766, 'SpeedBlackjack01', 'Speed VIP Blackjack A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_A.png', 1, 'EVOLUTION'),
(767, 'qgqrv4asvltnvuty', 'Speed Baccarat X', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_X.png', 1, 'EVOLUTION'),
(768, 'CFreeBetBjVIP002', 'Free Bet VIP Blackjack B', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(769, 'pdk54i3vey6up3dg', 'Blackjack VIP 16', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_16.png', 1, 'EVOLUTION'),
(770, '48z5pjps3ntvqc1b', 'Auto-Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Auto-Roulette.png', 1, 'EVOLUTION'),
(771, 'p2f2lphftc2muaql', 'Blackjack VIP 21', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_21.png', 1, 'EVOLUTION'),
(772, 'rctf4gu6btsmghbt', 'Blackjack VIP 32', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_32.png', 1, 'EVOLUTION'),
(773, 'q6wo7mqrrnlhuj6b', 'Blackjack VIP 29', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_29.png', 1, 'EVOLUTION'),
(774, 'qgdk6rtpw6hax4fe', 'Korean Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(775, 'nmwde3fd7hvqhq43', 'Speed Baccarat F', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_F.png', 1, 'EVOLUTION'),
(776, 'ocye2ju2bsoyq6vv', 'Speed Baccarat K', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_K.png', 1, 'EVOLUTION'),
(777, 'ovu5eja74ccmyoiq', 'Speed Baccarat N', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_N.png', 1, 'EVOLUTION'),
(778, 'EmperorSB0000001', 'Emperor Sic Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Sic_Bo.png', 1, 'EVOLUTION'),
(779, 'SBCTable00000001', 'Side Bet City', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Side_Bet_City.png', 1, 'EVOLUTION'),
(780, 'nmwdzhbg7hvqh6a7', 'Speed Baccarat G', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_G.png', 1, 'EVOLUTION'),
(781, 'SpeedBlackjack16', 'Speed VIP Blackjack P', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(782, 'AmericanTable001', 'American Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/American_Roulette.png', 1, 'EVOLUTION'),
(783, 'o735cjzyaeasv4o6', 'Blackjack VIP 3', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_3.png', 1, 'EVOLUTION'),
(784, 'SpeedBlackjack18', 'Speed VIP Blackjack R', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(785, 'pv5q45yjhasyt46y', 'Emperor Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Roulette.png', 1, 'EVOLUTION'),
(786, 'pdk5zo7cey6upxlm', 'Blackjack VIP 12', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_12.png', 1, 'EVOLUTION'),
(787, 'ndgv45bghfuaaebf', 'Speed Baccarat E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_E.png', 1, 'EVOLUTION'),
(788, 'o735di2eiwssv7eu', 'Blackjack VIP 4', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_4.png', 1, 'EVOLUTION'),
(789, 'o735azzsaeasv2pr', 'Blackjack VIP 2', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_2.png', 1, 'EVOLUTION'),
(790, '7x0b1tgh7agmf6hv', 'Immersive Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Immersive_Roulette.png', 1, 'EVOLUTION'),
(791, 'JapSpeedBac00002', 'Japanese Speed Baccarat B', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(792, 'rng-dragontiger0', 'First Person Dragon Tiger', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(793, 'sni5cza6d1vvl50i', 'Blackjack Party', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_Party.png', 1, 'EVOLUTION'),
(794, 'ovu5h6b3ujb4y53w', 'No Commission Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(795, 'Craps00000000001', 'Craps', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Craps.png', 1, 'EVOLUTION'),
(796, 'pdk5yexcz4iepelq', 'Blackjack VIP 10', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_10.png', 1, 'EVOLUTION'),
(797, 'SpeedBlackjack15', 'Speed VIP Blackjack O', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(798, 'SalPrivBac000008', 'Salon Privé Baccarat H', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_H.png', 1, 'EVOLUTION');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(799, 'qsf63ownyvbqnz33', 'Speed Baccarat Z', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_Z.png', 1, 'EVOLUTION'),
(800, 'ndgvwvgthfuaad3q', 'Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(801, 'RngMegaBall00001', 'First Person Mega Ball', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(802, 'qgqrhfvsvltnueqf', 'Speed Baccarat U', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_U.png', 1, 'EVOLUTION'),
(803, 'CSPTable00000001', 'Caribbean Stud Poker', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Caribbean_Stud_Poker.png', 1, 'EVOLUTION'),
(804, 'pdk53n4bjkgepr5u', 'Blackjack VIP 15', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_15.png', 1, 'EVOLUTION'),
(805, 'q25bmd63gsy3ngfl', 'Korean Speed Baccarat E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_E.png', 1, 'EVOLUTION'),
(806, 'rng-topcard00001', 'First Person Football Studio', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(807, 'p2f2uxiym2tmvzgq', 'Speed VIP Blackjack H', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_H.png', 1, 'EVOLUTION'),
(808, 'n4jwxsz2x4tqitvx', 'Japanese Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(809, 'f1f4rm9xgh4j3u2z', 'Auto-Roulette La Partage', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Auto-Roulette_La_Partage.png', 1, 'EVOLUTION'),
(810, 'Monopoly00000001', 'MONOPOLY Live', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/MONOPOLY_Live.png', 1, 'EVOLUTION'),
(811, 'leqhceumaq6qfoug', 'Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(812, 'puu47n7mic3rfd7y', 'Emperor Dragon Tiger', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Dragon_Tiger.png', 1, 'EVOLUTION'),
(813, 'p2f2ootrm2tmvk6h', 'Blackjack VIP 22', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_22.png', 1, 'EVOLUTION'),
(814, 'ps3ufteekfe2fu24', 'Speed VIP Blackjack E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_E.png', 1, 'EVOLUTION'),
(815, 'qgonc7t4ucdiel4o', 'Speed Baccarat T', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_T.png', 1, 'EVOLUTION'),
(816, 'ETHTable00000001', 'Extreme Texas Hold\'em', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Extreme_Texas_Holdem.png', 1, 'EVOLUTION'),
(817, 'q6ardco6opnfwes4', 'Emperor Speed Baccarat D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_D.png', 1, 'EVOLUTION'),
(818, '7nyiaws9tgqrzaz3', 'Football Studio Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Football_Studio_Roulette.png', 1, 'EVOLUTION'),
(819, 'RngCraps00000001', 'First Person Craps', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(820, 'ndgvs3tqhfuaadyg', 'Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_C.png', 1, 'EVOLUTION'),
(821, 'pwsaqk24fcz5qpcr', 'Emperor Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(822, 'qfyxgwwsrcfe5lq3', 'Blackjack VIP 27', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_27.png', 1, 'EVOLUTION'),
(823, 'lkcbrbdckjxajdol', 'Speed Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Roulette.png', 1, 'EVOLUTION'),
(824, 'rdjda6zq7jdyo6cs', 'Speed Baccarat 4', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_4.png', 1, 'EVOLUTION'),
(825, 'q6wo6fjprnlhuf36', 'Blackjack VIP 28', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_28.png', 1, 'EVOLUTION'),
(826, 'o4kymodby2fa2c7g', 'Speed Baccarat S', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_S.png', 1, 'EVOLUTION'),
(827, 'rng-ptbaccarat01', 'First Person Prosperity Tree Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(828, 'nxpkul2hgclallno', 'Speed Baccarat I', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_I.png', 1, 'EVOLUTION'),
(829, 'pdk523jney6upzft', 'Blackjack VIP 14', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_14.png', 1, 'EVOLUTION'),
(830, 'CrazyTime0000001', 'Crazy Time', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Crazy_Time.png', 1, 'EVOLUTION'),
(831, 'rctfyut2btsmfyyt', 'Blackjack VIP 30', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_30.png', 1, 'EVOLUTION'),
(832, 'qfyy4jm6rixfbllh', 'Speed VIP Blackjack L', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_L.png', 1, 'EVOLUTION'),
(833, 'vctlz20yfnmp1ylr', 'Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Roulette.png', 1, 'EVOLUTION'),
(834, 'zixzea8nrf1675oh', 'Baccarat Squeeze', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_Squeeze.png', 1, 'EVOLUTION'),
(835, 'teenpattitable01', 'Teen Patti', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Teen_Patti.png', 1, 'EVOLUTION'),
(836, 'peekbaccarat0001', 'Peek Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Peek_Baccarat.png', 1, 'EVOLUTION'),
(837, 'qfyzapjqrixfb3bx', 'Speed VIP Blackjack M', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_M.png', 1, 'EVOLUTION'),
(838, 'o4kyj7tgpwqqy4m4', 'Speed Baccarat Q', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_Q.png', 1, 'EVOLUTION'),
(839, 'FunkyTime0000001', 'Funky Time', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Funky_Time.png', 1, 'EVOLUTION'),
(840, 'RngDealNoDeal001', 'First Person Deal or No Deal', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(841, 'ESpeedBJ00000001', 'Evo Speed Blackjack 1', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Evo_Speed_Blackjack_1.png', 1, 'EVOLUTION'),
(842, 'qfyyxolocjhfau7y', 'Speed VIP Blackjack K', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_K.png', 1, 'EVOLUTION'),
(843, 'o7347okwaeasvy2y', 'Blackjack VIP 1', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_1.png', 1, 'EVOLUTION'),
(844, 'rep5aor7nyjl7qli', 'Speed Baccarat 6', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_6.png', 1, 'EVOLUTION'),
(845, 'o4kylkahpwqqy57w', 'Speed Baccarat R', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_R.png', 1, 'EVOLUTION'),
(846, 'XxxtremeLigh0001', 'XXXtreme Lightning Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(847, 'AndarBahar000001', 'Super Andar Bahar', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Super_Andar_Bahar.png', 1, 'EVOLUTION'),
(848, 'ndgv76kehfuaaeec', 'No Commission Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(849, 'VPTable000000001', 'Video Poker', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Video_Poker.png', 1, 'EVOLUTION'),
(850, '60i0lcfx5wkkv3sy', 'Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_B.png', 1, 'EVOLUTION'),
(851, 'MegaBall00000001', 'Mega Ball', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Mega_Ball.png', 1, 'EVOLUTION'),
(852, 'rep5gu47nyjmafgt', 'Speed Baccarat 9', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_9.png', 1, 'EVOLUTION'),
(853, 'ocye5hmxbsoyrcii', 'No Commission Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/No_Commission_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(854, 'pdk52e3rey6upyie', 'Blackjack VIP 13', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_13.png', 1, 'EVOLUTION'),
(855, 'rng-bj-standard0', 'First Person Blackjack', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(856, 'BonsaiBacc000002', 'Bonsai Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bonsai_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(857, 'DoubleBallRou001', 'Double Ball Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Double_Ball_Roulette.png', 1, 'EVOLUTION'),
(858, 'qsf7alptyvbqohva', 'Speed Baccarat 2', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_2.png', 1, 'EVOLUTION'),
(859, 'ps3t7nhskfe2fhkj', 'Blackjack VIP 18', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_18.png', 1, 'EVOLUTION'),
(860, 'lv2kzclunt2qnxo5', 'Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(861, 'HoldemTable00001', 'Casino Hold\'em', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Casino_Holdem.png', 1, 'EVOLUTION'),
(862, 'puu43e6c5uvrfikr', 'Emperor Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(863, 'wzg6kdkad1oe7m5k:5ou', 'French Roulette Gold', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/French_Roulette_Gold.png', 1, 'EVOLUTION'),
(864, 'SalPrivBac000009', 'Salon Privé Baccarat I', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_I.png', 1, 'EVOLUTION'),
(865, 'JapSpeedBac00003', 'Japanese Speed Baccarat C', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(866, 'qfyxcoqlrcfe44nj', 'Blackjack VIP 26', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_26.png', 1, 'EVOLUTION'),
(867, 'ovu5cwp54ccmymck', 'Speed Baccarat L', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_L.png', 1, 'EVOLUTION'),
(868, 'p34gzl44usw74wks', 'Salon Privé Baccarat F', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_F.png', 1, 'EVOLUTION'),
(869, 'ESpeedBJ00000003', 'Evo Speed Blackjack 3', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Evo_Speed_Blackjack_3.png', 1, 'EVOLUTION'),
(870, 'FanTan0000000001', 'Fan Tan', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Fan_Tan.png', 1, 'EVOLUTION'),
(871, 'BonsaiBacc000003', 'Bonsai Speed Baccarat C', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bonsai_Speed_Baccarat_C.png', 1, 'EVOLUTION'),
(872, 'p2fzwauitc2msrik', 'Blackjack VIP 20', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_20.png', 1, 'EVOLUTION'),
(873, 'rep5ca4ynyjl7wdw', 'Speed Baccarat 7', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_7.png', 1, 'EVOLUTION'),
(874, 'o735efxfaeasv666', 'Blackjack VIP 5', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_5.png', 1, 'EVOLUTION'),
(875, 'ovu5dsly4ccmynil', 'Speed Baccarat M', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_M.png', 1, 'EVOLUTION'),
(876, 'oytmvb9m1zysmc44', 'Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_A.png', 1, 'EVOLUTION'),
(877, 'CashOrCrash00001', 'Cash or Crash', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Cash_or_Crash.png', 1, 'EVOLUTION'),
(878, 'rngbaccarat00000', 'First Person Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(879, 'LightningBac0001', 'Lightning Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Lightning_Baccarat.png', 1, 'EVOLUTION'),
(880, 'JapBJ00000000006', 'Japanese Speed Blackjack F', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(881, 'q25awuwygsy3lvnj', 'Korean Speed Baccarat D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_D.png', 1, 'EVOLUTION'),
(882, 'ps3uijuskfe2f3cj', 'Speed VIP Blackjack G', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_G.png', 1, 'EVOLUTION'),
(883, 'qsf7bpfvyvbqolwp', 'Speed Baccarat 3', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_3.png', 1, 'EVOLUTION'),
(884, 'onokyd4wn7uekbjx', 'Korean Speed Baccarat B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Korean_Speed_Baccarat_B.png', 1, 'EVOLUTION'),
(885, 'SpeedBlackjack17', 'Speed VIP Blackjack Q', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(886, 'TopDice000000001', 'Football Studio Dice', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(887, 'pctte34dt6bqbtps', 'Salon Privé Baccarat E', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_E.png', 1, 'EVOLUTION'),
(888, 'k2oswnib7jjaaznw', 'Baccarat Control Squeeze', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Baccarat_Control_Squeeze.png', 1, 'EVOLUTION'),
(889, 'gwbaccarat000001', 'Golden Wealth Baccarat', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Golden_Wealth_Baccarat.png', 1, 'EVOLUTION'),
(890, 'rctf2h7wbtsmf7rs', 'Blackjack VIP 31', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_31.png', 1, 'EVOLUTION'),
(891, 'qsf65xtoyvbqoaop', 'Speed Baccarat 1', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_1.png', 1, 'EVOLUTION'),
(892, 'ovu5fzje4ccmyqnr', 'Speed Baccarat P', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_P.png', 1, 'EVOLUTION'),
(893, 'qgqrrnuqvltnvejx', 'Speed Baccarat V', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_V.png', 1, 'EVOLUTION'),
(894, 'rngXXXtremeLB001', 'First Person XXXtreme Lightning Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(895, 'TRPTable00000001', 'Triple Card Poker', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Triple_Card_Poker.png', 1, 'EVOLUTION'),
(896, 'SpeedBlackjack04', 'Speed VIP Blackjack D', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_D.png', 1, 'EVOLUTION'),
(897, 'ImperialQuest001', 'Imperial Quest', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Imperial_Quest.png', 1, 'EVOLUTION'),
(898, 'SuperSicBo000001', 'Super Sic Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Super_Sic_Bo.png', 1, 'EVOLUTION'),
(899, 'wzg6kdkad1oe7m5k', 'VIP Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/VIP_Roulette.png', 1, 'EVOLUTION'),
(900, 'rng-dreamcatcher', 'First Person Dream Catcher', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(901, 'ps3uhj7gteskex37', 'Speed VIP Blackjack F', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_F.png', 1, 'EVOLUTION'),
(902, 'rfbo6mhpdgyqbpay', 'Emperor Bac Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Bac_Bo.png', 1, 'EVOLUTION'),
(903, 'TopCard000000001', 'Football Studio', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(904, 'SalPrivBac000012', 'Salon Privé Baccarat L', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Salon_Privé_Baccarat_L.png', 1, 'EVOLUTION'),
(905, 'ovu5fbxm4ccmypmb', 'Speed Baccarat O', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_O.png', 1, 'EVOLUTION'),
(906, 'dealnodeal000001', 'Deal or No Deal', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Deal_or_No_Deal.png', 1, 'EVOLUTION'),
(907, 'JapSpeedBac00006', 'Japanese Speed Baccarat F', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(908, 'o735fhvsaeaswamh', 'Blackjack VIP 6', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_6.png', 1, 'EVOLUTION'),
(909, 'nxpj4wumgclak2lx', 'Speed Baccarat H', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_H.png', 1, 'EVOLUTION'),
(910, 'ESpeedBJ00000002', 'Evo Speed Blackjack 2', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Evo_Speed_Blackjack_2.png', 1, 'EVOLUTION'),
(911, 'EmperorSB0000002', 'Emperor Sic Bo A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Sic_Bo_A.png', 1, 'EVOLUTION'),
(912, 'rng-rt-xxxtreme1', 'First Person XXXtreme Lightning Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(913, 'XXXtremeLB000001', 'XXXtreme Lightning Baccarat', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(914, 'ps3t7j4ykfe2fhdw', 'Blackjack VIP 17', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_17.png', 1, 'EVOLUTION'),
(915, 'GoldVaultRo00001', 'Gold Vault Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(916, 'ps3t7qv2teskeg4w', 'Blackjack VIP 19', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_19.png', 1, 'EVOLUTION'),
(917, 'MOWDream00000001', 'Dream Catcher', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Dream_Catcher.png', 1, 'EVOLUTION'),
(918, 'o735ggd5iwsswcz7', 'Blackjack VIP 7', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_7.png', 1, 'EVOLUTION'),
(919, 'SpeedBlackjack14', 'Speed VIP Blackjack N', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(920, 'mrfykemt5slanyi5', 'Infinite Blackjack', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Infinite_Blackjack.png', 1, 'EVOLUTION'),
(921, 'SpeedAutoRo00001', 'Speed Auto Roulette', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Auto_Roulette.png', 1, 'EVOLUTION'),
(922, 'SpeedBlackjack02', 'Speed VIP Blackjack B', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_B.png', 1, 'EVOLUTION'),
(923, 'doasaloon0000001', 'Dead or Alive: Saloon', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(924, 'o735hfcqauecwjxp', 'Blackjack VIP 8', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_8.png', 1, 'EVOLUTION'),
(925, 'puu4yfymic3reudn', 'Emperor Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Emperor_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(926, 'rng-rt-european0', 'First Person Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(927, 'rng-rt-lightning', 'First Person Lightning Roulette', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(928, 'BacBo00000000001', 'Bac Bo', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bac_Bo.png', 1, 'EVOLUTION'),
(929, 'pdk5yzyfjkgepoml', 'Blackjack VIP 11', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_11.png', 1, 'EVOLUTION'),
(930, 'p2f2zs26tc2mu7r5', 'Speed VIP Blackjack I', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_I.png', 1, 'EVOLUTION'),
(931, 'BonsaiBacc000001', 'Bonsai Speed Baccarat A', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Bonsai_Speed_Baccarat_A.png', 1, 'EVOLUTION'),
(932, 'p2f25gsom2tmwmpn', 'Speed VIP Blackjack J', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_VIP_Blackjack_J.png', 1, 'EVOLUTION'),
(933, 'LightningDice001', 'Lightning Dice', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Lightning_Dice.png', 1, 'EVOLUTION'),
(934, 'pdk5xfrkjkgepmlq', 'Blackjack VIP 9', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Blackjack_VIP_9.png', 1, 'EVOLUTION'),
(935, 'rep5iuhinyjmalz4', 'Speed Baccarat 10', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Speed_Baccarat_10.png', 1, 'EVOLUTION'),
(936, 'GonzoTM000000001', 'Gonzo\'s Treasure Map', 'https://osiris.bet/public/images/sem-imagem.png', 1, 'EVOLUTION'),
(937, 'CrazyCoinFlip001', 'Crazy Coin Flip', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/evolution/Crazy_Coin_Flip.png', 1, 'EVOLUTION'),
(938, 'dgcasino', 'Dream Gaming Live', 'https://vedaimg.enjoycx.com/img/game/dg/dg.jpg', 1, 'DREAMGAMING'),
(939, 'dgcasino', 'DG Live', 'https://vedaimg.enjoycx.com/img/game/dg/dg.jpg', 1, 'DREAMGAMING'),
(940, 'wmcasino', 'Casino', 'https://vedaimg.enjoycx.com/img/game/wml/wm.jpg', 1, 'WMLIVE'),
(941, '0', 'Lobby', 'https://thumbnails.honorlink.org/AsiaGaming/0.jpg', 1, 'ASIAGAMING'),
(942, 'B001', 'AGQ Baccarat B1', 'https://thumbnails.honorlink.org/AsiaGaming/B001.jpg', 1, 'ASIAGAMING'),
(943, 'B002', 'AGQ Baccarat B2', 'https://thumbnails.honorlink.org/AsiaGaming/B002.jpg', 1, 'ASIAGAMING'),
(944, 'B003', 'AGQ Baccarat B3', 'https://thumbnails.honorlink.org/AsiaGaming/B003.jpg', 1, 'ASIAGAMING'),
(945, 'B004', 'AGQ Baccarat B4', 'https://thumbnails.honorlink.org/AsiaGaming/B004.jpg', 1, 'ASIAGAMING'),
(946, 'B005', 'AGQ Baccarat B5', 'https://thumbnails.honorlink.org/AsiaGaming/B005.jpg', 1, 'ASIAGAMING'),
(947, 'B006', 'AGQ Baccarat B6', 'https://thumbnails.honorlink.org/AsiaGaming/B006.jpg', 1, 'ASIAGAMING'),
(948, 'B022', 'AGQ BullBull B22', 'https://thumbnails.honorlink.org/AsiaGaming/B022.jpg', 1, 'ASIAGAMING'),
(949, 'D001', 'EMA Roulette D1', 'https://thumbnails.honorlink.org/AsiaGaming/D001.jpg', 1, 'ASIAGAMING'),
(950, 'D051', 'EMA Baccarat D51', 'https://thumbnails.honorlink.org/AsiaGaming/D051.jpg', 1, 'ASIAGAMING'),
(951, 'D052', 'EMA Baccarat D52', 'https://thumbnails.honorlink.org/AsiaGaming/D052.jpg', 1, 'ASIAGAMING'),
(952, 'D053', 'EMA Baccarat D53', 'https://thumbnails.honorlink.org/AsiaGaming/D053.jpg', 1, 'ASIAGAMING'),
(953, 'D054', 'EMA Baccarat D54', 'https://thumbnails.honorlink.org/AsiaGaming/D054.jpg', 1, 'ASIAGAMING'),
(954, 'D055', 'EMA Baccarat D55', 'https://thumbnails.honorlink.org/AsiaGaming/D055.jpg', 1, 'ASIAGAMING'),
(955, 'D056', 'EMA Baccarat D56', 'https://thumbnails.honorlink.org/AsiaGaming/D056.jpg', 1, 'ASIAGAMING'),
(956, 'D057', 'EMA Baccarat D57', 'https://thumbnails.honorlink.org/AsiaGaming/D057.jpg', 1, 'ASIAGAMING'),
(957, 'D058', 'EMA Baccarat D58', 'https://thumbnails.honorlink.org/AsiaGaming/D058.jpg', 1, 'ASIAGAMING'),
(958, 'D059', 'EMA Baccarat D59', 'https://thumbnails.honorlink.org/AsiaGaming/D059.jpg', 1, 'ASIAGAMING'),
(959, 'D060', 'EMA Dragon Tiger D60', 'https://thumbnails.honorlink.org/AsiaGaming/D060.jpg', 1, 'ASIAGAMING'),
(960, 'E101', 'Blockchain Baccarat E101', 'https://thumbnails.honorlink.org/AsiaGaming/E101.jpg', 1, 'ASIAGAMING'),
(961, 'E102', 'Blockchain Baccarat E102', 'https://thumbnails.honorlink.org/AsiaGaming/E102.jpg', 1, 'ASIAGAMING'),
(962, 'E103', 'Blockchain Baccarat E103', 'https://thumbnails.honorlink.org/AsiaGaming/E103.jpg', 1, 'ASIAGAMING'),
(963, 'E104', 'Blockchain Baccarat E104', 'https://thumbnails.honorlink.org/AsiaGaming/E104.jpg', 1, 'ASIAGAMING'),
(964, 'E105', 'Blockchain Baccarat E105', 'https://thumbnails.honorlink.org/AsiaGaming/E105.jpg', 1, 'ASIAGAMING'),
(965, 'E106', 'Blockchain Baccarat E106', 'https://thumbnails.honorlink.org/AsiaGaming/E106.jpg', 1, 'ASIAGAMING'),
(966, 'E107', 'Blockchain Baccarat E107', 'https://thumbnails.honorlink.org/AsiaGaming/E107.jpg', 1, 'ASIAGAMING'),
(967, 'E108', 'Blockchain Baccarat E108', 'https://thumbnails.honorlink.org/AsiaGaming/E108.jpg', 1, 'ASIAGAMING'),
(968, 'E109', 'Blockchain Baccarat E109', 'https://thumbnails.honorlink.org/AsiaGaming/E109.jpg', 1, 'ASIAGAMING'),
(969, 'E110', 'Blockchain Baccarat E110', 'https://thumbnails.honorlink.org/AsiaGaming/E110.jpg', 1, 'ASIAGAMING'),
(970, 'E201', 'Blockchain Dragon Tiger E201', 'https://thumbnails.honorlink.org/AsiaGaming/E201.jpg', 1, 'ASIAGAMING'),
(971, 'E202', 'Blockchain Dragon Tiger E202', 'https://thumbnails.honorlink.org/AsiaGaming/E202.jpg', 1, 'ASIAGAMING'),
(972, 'E601', 'Blockchain Win Three Cards E601', 'https://thumbnails.honorlink.org/AsiaGaming/E601.jpg', 1, 'ASIAGAMING'),
(973, 'E602', 'Blockchain Win Three Cards E602', 'https://thumbnails.honorlink.org/AsiaGaming/E602.jpg', 1, 'ASIAGAMING'),
(974, 'M053', 'EMA Baccarat M53', 'https://thumbnails.honorlink.org/AsiaGaming/M053.jpg', 1, 'ASIAGAMING'),
(975, 'M054', 'EMA Baccarat M54', 'https://thumbnails.honorlink.org/AsiaGaming/M054.jpg', 1, 'ASIAGAMING'),
(976, 'M055', 'EMA Baccarat M55', 'https://thumbnails.honorlink.org/AsiaGaming/M055.jpg', 1, 'ASIAGAMING'),
(977, 'M056', 'EMA Baccarat M56', 'https://thumbnails.honorlink.org/AsiaGaming/M056.jpg', 1, 'ASIAGAMING'),
(978, 'N006', 'CGY Baccarat N6', 'https://thumbnails.honorlink.org/AsiaGaming/N006.jpg', 1, 'ASIAGAMING'),
(979, 'N007', 'CGY Baccarat N7', 'https://thumbnails.honorlink.org/AsiaGaming/N007.jpg', 1, 'ASIAGAMING'),
(980, 'N008', 'CGY Baccarat N8', 'https://thumbnails.honorlink.org/AsiaGaming/N008.jpg', 1, 'ASIAGAMING'),
(981, 'N009', 'CGY Baccarat N9', 'https://thumbnails.honorlink.org/AsiaGaming/N009.jpg', 1, 'ASIAGAMING'),
(982, 'N010', 'CGY Baccarat N10', 'https://thumbnails.honorlink.org/AsiaGaming/N010.jpg', 1, 'ASIAGAMING'),
(983, 'N011', 'CGY Baccarat N11', 'https://thumbnails.honorlink.org/AsiaGaming/N011.jpg', 1, 'ASIAGAMING'),
(984, 'N012', 'CGY Baccarat N12', 'https://thumbnails.honorlink.org/AsiaGaming/N012.jpg', 1, 'ASIAGAMING'),
(985, 'N013', 'CGY Baccarat N13', 'https://thumbnails.honorlink.org/AsiaGaming/N013.jpg', 1, 'ASIAGAMING'),
(986, 'N015', 'CGY Baccarat N15', 'https://thumbnails.honorlink.org/AsiaGaming/N015.jpg', 1, 'ASIAGAMING'),
(987, 'N016', 'CGY Baccarat N16', 'https://thumbnails.honorlink.org/AsiaGaming/N016.jpg', 1, 'ASIAGAMING'),
(988, 'N017', 'CGY Baccarat N17', 'https://thumbnails.honorlink.org/AsiaGaming/N017.jpg', 1, 'ASIAGAMING'),
(989, 'N018', 'CGY Baccarat N18', 'https://thumbnails.honorlink.org/AsiaGaming/N018.jpg', 1, 'ASIAGAMING'),
(990, 'N019', 'CGY Baccarat N19', 'https://thumbnails.honorlink.org/AsiaGaming/N019.jpg', 1, 'ASIAGAMING'),
(991, 'N020', 'CGY Dragon Tiger N20', 'https://thumbnails.honorlink.org/AsiaGaming/N020.jpg', 1, 'ASIAGAMING'),
(992, 'N021', 'CGY Win Three Cards N21', 'https://thumbnails.honorlink.org/AsiaGaming/N021.jpg', 1, 'ASIAGAMING'),
(993, 'N022', 'CGY BullBull N22', 'https://thumbnails.honorlink.org/AsiaGaming/N022.jpg', 1, 'ASIAGAMING'),
(994, 'N023', 'CGY BullBull N23', 'https://thumbnails.honorlink.org/AsiaGaming/N023.jpg', 1, 'ASIAGAMING'),
(995, 'N024', 'CGY Three Face N24', 'https://thumbnails.honorlink.org/AsiaGaming/N024.jpg', 1, 'ASIAGAMING'),
(996, 'N026', 'CGY Sicbo N26', 'https://thumbnails.honorlink.org/AsiaGaming/N026.jpg', 1, 'ASIAGAMING'),
(997, 'M051', 'EMA Baccarat M51', 'https://thumbnails.honorlink.org/AsiaGaming/M051.jpg', 1, 'ASIAGAMING'),
(998, 'M052', 'EMA Baccarat M52', 'https://thumbnails.honorlink.org/AsiaGaming/M052.jpg', 1, 'ASIAGAMING'),
(999, 'M057', 'EMA Baccarat M57', 'https://thumbnails.honorlink.org/AsiaGaming/M057.jpg', 1, 'ASIAGAMING'),
(1000, 'M058', 'EMA Baccarat M58', 'https://thumbnails.honorlink.org/AsiaGaming/M058.jpg', 1, 'ASIAGAMING'),
(1001, 'M059', 'EMA Baccarat M59', 'https://thumbnails.honorlink.org/AsiaGaming/M059.jpg', 1, 'ASIAGAMING'),
(1002, 'M060', 'EMA Dragon Tiger M60', 'https://thumbnails.honorlink.org/AsiaGaming/M060.jpg', 1, 'ASIAGAMING'),
(1003, 'E711', 'Blockchain Baccarat E711', 'https://thumbnails.honorlink.org/AsiaGaming/E711.jpg', 1, 'ASIAGAMING'),
(1004, 'E712', 'Blockchain Baccarat E712', 'https://thumbnails.honorlink.org/AsiaGaming/E712.jpg', 1, 'ASIAGAMING'),
(1005, 'E702', 'Blockchain European Roulette E702', 'https://thumbnails.honorlink.org/AsiaGaming/E702.jpg', 1, 'ASIAGAMING'),
(1006, 'E301', 'Blockchain BullBull E301', 'https://thumbnails.honorlink.org/AsiaGaming/E301.jpg', 1, 'ASIAGAMING'),
(1007, 'E302', 'Blockchain BullBull E302', 'https://thumbnails.honorlink.org/AsiaGaming/E302.jpg', 1, 'ASIAGAMING'),
(1008, 'E501', 'Blockchain Three Face E501', 'https://thumbnails.honorlink.org/AsiaGaming/E501.jpg', 1, 'ASIAGAMING'),
(1009, 'E502', 'Blockchain Three Face E502', 'https://thumbnails.honorlink.org/AsiaGaming/E502.jpg', 1, 'ASIAGAMING'),
(1010, 'bota', 'BOTA', 'https://ap-south-1.linodeobjects.com/cdn.honorlink.org/bota/bota_logo.png', 1, 'BOTA'),
(1011, '401', 'Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/401.png', 1, 'PRAGMATICLIVE'),
(1012, '404', 'Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/404.png', 1, 'PRAGMATICLIVE'),
(1013, '411', 'Baccarat 5', 'https://api-2103.ppgames.net/game_pic/square/200/411.png', 1, 'PRAGMATICLIVE'),
(1014, '413', 'Baccarat 6', 'https://api-2103.ppgames.net/game_pic/square/200/413.png', 1, 'PRAGMATICLIVE'),
(1015, '201', 'Roulette 2', 'https://api-2103.ppgames.net/game_pic/square/200/201.png', 1, 'PRAGMATICLIVE'),
(1016, '402', 'Speed Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/402.png', 1, 'PRAGMATICLIVE'),
(1017, '403', 'Speed Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/403.png', 1, 'PRAGMATICLIVE'),
(1018, '412', 'Speed Baccarat 3', 'https://api-2103.ppgames.net/game_pic/square/200/412.png', 1, 'PRAGMATICLIVE'),
(1019, '414', 'Speed Baccarat 5', 'https://api-2103.ppgames.net/game_pic/square/200/414.png', 1, 'PRAGMATICLIVE'),
(1020, '108', 'Live - Dragon Tiger', 'https://api-sg0.ppgames.net/game_pic/rec/325/108.png', 1, 'PRAGMATICLIVE'),
(1021, '101', 'Live - Lobby', 'https://api-sg0.ppgames.net/game_pic/rec/325/101.png', 1, 'PRAGMATICLIVE'),
(1022, '102', 'Live - Lobby Roulette', 'https://api-sg0.ppgames.net/game_pic/rec/325/102.png', 1, 'PRAGMATICLIVE'),
(1023, '1024', 'Live - Andar Bahar', 'https://api-sg0.ppgames.net/game_pic/rec/325/1024.png', 1, 'PRAGMATICLIVE'),
(1024, '103', 'Live - Lobby BJ', 'https://api-sg0.ppgames.net/game_pic/rec/325/103.png', 1, 'PRAGMATICLIVE'),
(1025, '104', 'Live - Lobby Baccarat', 'https://api-sg0.ppgames.net/game_pic/rec/325/104.png', 1, 'PRAGMATICLIVE'),
(1026, '105', 'Live - GAMESHOWS', 'https://api-sg0.ppgames.net/game_pic/rec/325/105.png', 1, 'PRAGMATICLIVE'),
(1027, '107', 'Live - Sic Bo', 'https://api-sg0.ppgames.net/game_pic/rec/325/107.png', 1, 'PRAGMATICLIVE'),
(1028, '109', 'Live - Sic Bo & Dragon Tiger', 'https://api-sg0.ppgames.net/game_pic/rec/325/109.png', 1, 'PRAGMATICLIVE'),
(1029, '110', 'Live - D&W', 'https://api-sg0.ppgames.net/game_pic/rec/325/110.png', 1, 'PRAGMATICLIVE'),
(1030, '1101', 'Live - Sweet Bonanza CandyLand', 'https://api-sg0.ppgames.net/game_pic/rec/325/1101.png', 1, 'PRAGMATICLIVE'),
(1031, '111', 'Live - Other Promos', 'https://api-sg0.ppgames.net/game_pic/rec/325/111.png', 1, 'PRAGMATICLIVE'),
(1032, '203', 'Speed Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/203.png', 1, 'PRAGMATICLIVE'),
(1033, '204', 'Live - Mega Roulette', 'https://api-sg0.ppgames.net/game_pic/rec/325/204.png', 1, 'PRAGMATICLIVE'),
(1034, '206', 'Roulette 3 - Macao', 'https://api-2103.ppgames.net/game_pic/square/200/206.png', 1, 'PRAGMATICLIVE'),
(1035, '221', 'Roulette 4 - Russian', 'https://api-2103.ppgames.net/game_pic/square/200/221.png', 1, 'PRAGMATICLIVE'),
(1036, '222', 'Roulette 5 - German', 'https://api-2103.ppgames.net/game_pic/square/200/222.png', 1, 'PRAGMATICLIVE'),
(1037, '223', 'Roulette 7 - Italian', 'https://api-2103.ppgames.net/game_pic/square/200/223.png', 1, 'PRAGMATICLIVE'),
(1038, '224', 'Roulette 6 - Turkish', 'https://api-2103.ppgames.net/game_pic/square/200/224.png', 1, 'PRAGMATICLIVE'),
(1039, '225', 'Auto-Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/225.png', 1, 'PRAGMATICLIVE'),
(1040, '227', 'Roulette 1 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/227.png', 1, 'PRAGMATICLIVE'),
(1041, '229', 'Live - Roulette 8 - Indian', 'https://api-sg0.ppgames.net/game_pic/rec/325/229.png', 1, 'PRAGMATICLIVE'),
(1042, '230', 'Live - Roulette 10 - Ruby', 'https://api-sg0.ppgames.net/game_pic/rec/325/230.png', 1, 'PRAGMATICLIVE'),
(1043, '301', 'Blackjack 11', 'https://api-2103.ppgames.net/game_pic/square/200/301.png', 1, 'PRAGMATICLIVE'),
(1044, '302', 'Blackjack 12', 'https://api-2103.ppgames.net/game_pic/square/200/302.png', 1, 'PRAGMATICLIVE'),
(1045, '303', 'Blackjack 14', 'https://api-2103.ppgames.net/game_pic/square/200/303.png', 1, 'PRAGMATICLIVE'),
(1046, '304', 'Blackjack 15', 'https://api-2103.ppgames.net/game_pic/square/200/304.png', 1, 'PRAGMATICLIVE'),
(1047, '305', 'Blackjack 16', 'https://api-2103.ppgames.net/game_pic/square/200/305.png', 1, 'PRAGMATICLIVE'),
(1048, '405', 'Live - Speed Baccarat 14', 'https://api-sg0.ppgames.net/game_pic/rec/325/405.png', 1, 'PRAGMATICLIVE'),
(1049, '415', 'Live - Speed Baccarat 6', 'https://api-sg0.ppgames.net/game_pic/rec/325/415.png', 1, 'PRAGMATICLIVE'),
(1050, '421', 'Live - Speed Baccarat 12', 'https://api-sg0.ppgames.net/game_pic/rec/325/421.png', 1, 'PRAGMATICLIVE'),
(1051, '422', 'Live - Baccarat 3', 'https://api-sg0.ppgames.net/game_pic/rec/325/422.png', 1, 'PRAGMATICLIVE'),
(1052, '423', 'Live - Baccarat 9', 'https://api-sg0.ppgames.net/game_pic/rec/325/423.png', 1, 'PRAGMATICLIVE'),
(1053, '424', 'Live - Speed Baccarat 11', 'https://api-sg0.ppgames.net/game_pic/rec/325/424.png', 1, 'PRAGMATICLIVE'),
(1054, '425', 'Live - Baccarat 7', 'https://api-sg0.ppgames.net/game_pic/rec/325/425.png', 1, 'PRAGMATICLIVE'),
(1055, '426', 'Live - Baccarat 8', 'https://api-sg0.ppgames.net/game_pic/rec/325/426.png', 1, 'PRAGMATICLIVE'),
(1056, '427', 'Live - Speed Baccarat 15', 'https://api-sg0.ppgames.net/game_pic/rec/325/427.png', 1, 'PRAGMATICLIVE'),
(1057, '428', 'Live - Speed Baccarat 10', 'https://api-sg0.ppgames.net/game_pic/rec/325/428.png', 1, 'PRAGMATICLIVE'),
(1058, '429', 'Live - Speed Baccarat 16', 'https://api-sg0.ppgames.net/game_pic/rec/325/429.png', 1, 'PRAGMATICLIVE'),
(1059, '430', 'Live - Speed Baccarat 9', 'https://api-sg0.ppgames.net/game_pic/rec/325/430.png', 1, 'PRAGMATICLIVE'),
(1060, '431', 'Live - Speed Baccarat 7', 'https://api-sg0.ppgames.net/game_pic/rec/325/431.png', 1, 'PRAGMATICLIVE'),
(1061, '432', 'Live - Speed Baccarat 8', 'https://api-sg0.ppgames.net/game_pic/rec/325/432.png', 1, 'PRAGMATICLIVE'),
(1062, '437', 'Live - Speed Baccarat 17', 'https://api-sg0.ppgames.net/game_pic/rec/325/437.png', 1, 'PRAGMATICLIVE'),
(1063, '438', 'Live - Speed Baccarat 13', 'https://api-sg0.ppgames.net/game_pic/rec/325/438.png', 1, 'PRAGMATICLIVE'),
(1064, '511', 'Blackjack 3 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/511.png', 1, 'PRAGMATICLIVE'),
(1065, '512', 'Blackjack 6 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/512.png', 1, 'PRAGMATICLIVE'),
(1066, '513', 'Blackjack 7 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/513.png', 1, 'PRAGMATICLIVE'),
(1067, '514', 'Blackjack 4 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/514.png', 1, 'PRAGMATICLIVE'),
(1068, '515', 'Blackjack 1 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/515.png', 1, 'PRAGMATICLIVE'),
(1069, '516', 'Blackjack 9 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/516.png', 1, 'PRAGMATICLIVE'),
(1070, '517', 'Blackjack 10 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/517.png', 1, 'PRAGMATICLIVE'),
(1071, '518', 'Blackjack 5 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/518.png', 1, 'PRAGMATICLIVE'),
(1072, '519', 'Blackjack 2 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/519.png', 1, 'PRAGMATICLIVE'),
(1073, '520', 'Blackjack 8 - Azure', 'https://api-2103.ppgames.net/game_pic/square/200/520.png', 1, 'PRAGMATICLIVE'),
(1074, '545', 'Live - The Club Roulette', 'https://api-sg0.ppgames.net/game_pic/rec/325/545.png', 1, 'PRAGMATICLIVE'),
(1075, '701', 'Live - Mega Sic Bo', 'https://api-sg0.ppgames.net/game_pic/rec/325/701.png', 1, 'PRAGMATICLIVE'),
(1076, '801', 'Live - Mega Wheel', 'https://api-sg0.ppgames.net/game_pic/rec/325/801.png', 1, 'PRAGMATICLIVE'),
(1077, '233', 'Live - ROULETTE 12 – ROMANIAN', 'https://api-sg0.ppgames.net/game_pic/rec/325/233.png', 1, 'PRAGMATICLIVE'),
(1078, '235', 'Live - ROULETTE 11 – DUTCH', 'https://api-sg0.ppgames.net/game_pic/rec/325/235.png', 1, 'PRAGMATICLIVE'),
(1079, '433', 'Live - Super 8 Baccarat', 'https://api-sg0.ppgames.net/game_pic/rec/325/433.png', 1, 'PRAGMATICLIVE'),
(1080, '434', 'Live - Fortune 6 Baccarat', 'https://api-sg0.ppgames.net/game_pic/rec/325/434.png', 1, 'PRAGMATICLIVE'),
(1081, '1302', 'Live - Spaceman', 'https://api-sg0.ppgames.net/game_pic/rec/325/1301.png', 1, 'PRAGMATICLIVE'),
(1082, '1401', 'Live - BOOM CITY', 'https://api-sg13.ppgames.net/game_pic/square/200/1401.png', 1, 'PRAGMATICLIVE'),
(1083, '1001', 'Live - Dragon Tiger', 'https://api-sg0.ppgames.net/game_pic/rec/325/108.png', 1, 'PRAGMATICLIVE'),
(1084, 'pp3fish', 'Fishing King', 'https://api-sg13.ppgames.net/game_pic/square/200/pp3fish.png', 1, 'PRAGMATICLIVE'),
(1085, 'pp4fortune', 'Fortune Fishing', 'https://api-sg13.ppgames.net/game_pic/square/200/pp4fortune.png', 1, 'PRAGMATICLIVE'),
(1086, '234', 'Live - Roulette 14 - Spanish', 'https://api-sg13.ppgames.net/game_pic/square/200/234.png', 1, 'PRAGMATICLIVE'),
(1087, '240', 'Live - PowerUp Roulette', 'https://api-sg13.ppgames.net/game_pic/square/200/240.png', 1, 'PRAGMATICLIVE'),
(1088, '205', 'Live - Speed Roulette 2', 'https://api-sg13.ppgames.net/game_pic/square/200/205.png', 1, 'PRAGMATICLIVE'),
(1089, '435', 'Live - No Comm Speed Baccarat 1', 'https://api-sg13.ppgames.net/game_pic/square/200/435.png', 1, 'PRAGMATICLIVE'),
(1090, '439', 'Live - No Comm Speed Baccarat 2', 'https://api-sg13.ppgames.net/game_pic/square/200/439.png', 1, 'PRAGMATICLIVE'),
(1091, '436', 'Live - No Comm Baccarat 1', 'https://api-sg13.ppgames.net/game_pic/square/200/436.png', 1, 'PRAGMATICLIVE'),
(1092, '114', 'Live - Asian Games', 'https://api-sg13.ppgames.net/game_pic/square/200/114.png', 1, 'PRAGMATICLIVE'),
(1093, '441', 'Live - Speed Baccarat 1 - Korean', 'https://api-sg13.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1094, '441', 'Live - speed Baccarat 16 Korean', 'https://api-sg70.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1095, '422f', 'Live - Baccarat 3', 'https://api-sg0.ppgames.net/game_pic/rec/325/422.png', 1, 'PRAGMATICLIVE'),
(1096, '426b', 'Live - Baccarat 8', 'https://api-sg0.ppgames.net/game_pic/rec/325/426.png', 1, 'PRAGMATICLIVE'),
(1097, '230a20', 'Live - Roulette 10 - Ruby', 'https://api-sg0.ppgames.net/game_pic/rec/325/230.png', 1, 'PRAGMATICLIVE'),
(1098, '424f', 'Live - Speed Baccarat 11', 'https://api-sg0.ppgames.net/game_pic/rec/325/424.png', 1, 'PRAGMATICLIVE'),
(1099, '421f', 'Live - Speed Baccarat 12', 'https://api-sg0.ppgames.net/game_pic/rec/325/421.png', 1, 'PRAGMATICLIVE'),
(1100, '438f', 'Live - Speed Baccarat 13', 'https://api-sg0.ppgames.net/game_pic/rec/325/438.png', 1, 'PRAGMATICLIVE'),
(1101, '427b', 'Live - Speed Baccarat 15', 'https://api-sg0.ppgames.net/game_pic/rec/325/427.png', 1, 'PRAGMATICLIVE'),
(1102, '449', 'Live - SPEED BACCARAT 2 KOREAN', 'https://api-2103.ppgames.net/game_pic/square/200/449.png', 1, 'PRAGMATICLIVE'),
(1103, '442', 'Live - Mega Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/442.png', 1, 'PRAGMATICLIVE'),
(1104, '226', 'Live - Speed Auto-Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/226.png', 1, 'PRAGMATICLIVE'),
(1105, '1302', 'Spaceman', 'https://api-2103.ppgames.net/game_pic/square/200/1302.png', 1, 'PRAGMATICLIVE'),
(1106, '801', 'Mega Wheel', 'https://api-2103.ppgames.net/game_pic/square/200/801.png', 1, 'PRAGMATICLIVE'),
(1107, '701', 'Mega Sic Bo', 'https://api-2103.ppgames.net/game_pic/square/200/701.png', 1, 'PRAGMATICLIVE'),
(1108, '1101', 'Sweet Bonanza CandyLand', 'https://api-2103.ppgames.net/game_pic/square/200/1101.png', 1, 'PRAGMATICLIVE'),
(1109, '204', 'Mega Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/204.png', 1, 'PRAGMATICLIVE'),
(1110, '435', 'No Comm Speed Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/435.png', 1, 'PRAGMATICLIVE'),
(1111, '436', 'No Comm Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/436.png', 1, 'PRAGMATICLIVE'),
(1112, '441', 'Speed Baccarat 1 - Korean', 'https://api-2103.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1113, '449', 'Speed Baccarat 2 - Korean', 'https://api-2103.ppgames.net/game_pic/square/200/449.png', 1, 'PRAGMATICLIVE'),
(1114, '1001', 'Dragon Tiger', 'https://api-2103.ppgames.net/game_pic/square/200/1001.png', 1, 'PRAGMATICLIVE'),
(1115, '240', 'PowerUP Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/240.png', 1, 'PRAGMATICLIVE'),
(1116, '434', 'Fortune 6 Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/434.png', 1, 'PRAGMATICLIVE'),
(1117, '433', 'Super 8 Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/433.png', 1, 'PRAGMATICLIVE'),
(1118, '1401', 'Boom City', 'https://api-2103.ppgames.net/game_pic/square/200/1401.png', 1, 'PRAGMATICLIVE'),
(1119, '415', 'Speed Baccarat 6', 'https://api-2103.ppgames.net/game_pic/square/200/415.png', 1, 'PRAGMATICLIVE'),
(1120, '431', 'Speed Baccarat 7', 'https://api-2103.ppgames.net/game_pic/square/200/431.png', 1, 'PRAGMATICLIVE'),
(1121, '432', 'Speed Baccarat 8', 'https://api-2103.ppgames.net/game_pic/square/200/432.png', 1, 'PRAGMATICLIVE'),
(1122, '430', 'Speed Baccarat 9', 'https://api-2103.ppgames.net/game_pic/square/200/430.png', 1, 'PRAGMATICLIVE'),
(1123, '428', 'Speed Baccarat 10', 'https://api-2103.ppgames.net/game_pic/square/200/428.png', 1, 'PRAGMATICLIVE'),
(1124, '424', 'Speed Baccarat 11', 'https://api-2103.ppgames.net/game_pic/square/200/424.png', 1, 'PRAGMATICLIVE'),
(1125, '421', 'Speed Baccarat 12', 'https://api-2103.ppgames.net/game_pic/square/200/421.png', 1, 'PRAGMATICLIVE'),
(1126, '438', 'Speed Baccarat 13', 'https://api-2103.ppgames.net/game_pic/square/200/438.png', 1, 'PRAGMATICLIVE'),
(1127, '405', 'Speed Baccarat 14', 'https://api-2103.ppgames.net/game_pic/square/200/405.png', 1, 'PRAGMATICLIVE'),
(1128, '427', 'Speed Baccarat 15', 'https://api-2103.ppgames.net/game_pic/square/200/427.png', 1, 'PRAGMATICLIVE'),
(1129, '439', 'No Comm Speed Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/439.png', 1, 'PRAGMATICLIVE'),
(1130, '422', 'Baccarat 3', 'https://api-2103.ppgames.net/game_pic/square/200/422.png', 1, 'PRAGMATICLIVE'),
(1131, '425', 'Baccarat 7', 'https://api-2103.ppgames.net/game_pic/square/200/425.png', 1, 'PRAGMATICLIVE'),
(1132, '426', 'Baccarat 8', 'https://api-2103.ppgames.net/game_pic/square/200/426.png', 1, 'PRAGMATICLIVE'),
(1133, '545', 'Roulette 9 - The Club', 'https://api-2103.ppgames.net/game_pic/square/200/545.png', 1, 'PRAGMATICLIVE'),
(1134, '205', 'Speed Roulette 2', 'https://api-2103.ppgames.net/game_pic/square/200/205.png', 1, 'PRAGMATICLIVE'),
(1135, '230', 'Roulette 10 - Ruby', 'https://api-2103.ppgames.net/game_pic/square/200/230.png', 1, 'PRAGMATICLIVE'),
(1136, '229', 'Roulette 8 - Indian', 'https://api-2103.ppgames.net/game_pic/square/200/229.png', 1, 'PRAGMATICLIVE'),
(1137, '233', 'Roulette 12 - Romanian', 'https://api-2103.ppgames.net/game_pic/square/200/233.png', 1, 'PRAGMATICLIVE'),
(1138, '235', 'Roulette 11 - Dutch', 'https://api-2103.ppgames.net/game_pic/square/200/235.png', 1, 'PRAGMATICLIVE'),
(1139, '234', 'Roulette 14 - Spanish', 'https://api-2103.ppgames.net/game_pic/square/200/234.png', 1, 'PRAGMATICLIVE'),
(1140, '1024', 'Andar Bahar', 'https://api-2103.ppgames.net/game_pic/square/200/1024.png', 1, 'PRAGMATICLIVE'),
(1141, '901', 'ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/901.png', 1, 'PRAGMATICLIVE'),
(1142, '902', 'BetVictor ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/902.png', 1, 'PRAGMATICLIVE'),
(1143, '111', 'Other Promos', 'https://api-2103.ppgames.net/game_pic/square/200/111.png', 1, 'PRAGMATICLIVE'),
(1144, '104', 'Baccarat Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/104.png', 1, 'PRAGMATICLIVE'),
(1145, '102', 'Roulette Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/102.png', 1, 'PRAGMATICLIVE'),
(1146, '107', 'Sic Bo', 'https://api-2103.ppgames.net/game_pic/square/200/107.png', 1, 'PRAGMATICLIVE'),
(1147, '108', 'Dragon Tiger', 'https://api-2103.ppgames.net/game_pic/square/200/108.png', 1, 'PRAGMATICLIVE'),
(1148, '105', 'Gameshows', 'https://api-2103.ppgames.net/game_pic/square/200/105.png', 1, 'PRAGMATICLIVE'),
(1149, '103', 'Blackjack Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/103.png', 1, 'PRAGMATICLIVE'),
(1150, '109', 'Sic Bo & Dragon Tiger', 'https://api-2103.ppgames.net/game_pic/square/200/109.png', 1, 'PRAGMATICLIVE'),
(1151, '110', 'D&W', 'https://api-2103.ppgames.net/game_pic/square/200/110.png', 1, 'PRAGMATICLIVE'),
(1152, '114', 'Asian Games', 'https://api-2103.ppgames.net/game_pic/square/200/114.png', 1, 'PRAGMATICLIVE'),
(1153, '101', 'Live Casino Lobby', 'https://api-2103.ppgames.net/game_pic/square/200/101.png', 1, 'PRAGMATICLIVE'),
(1154, '442', 'Mega Baccarat', 'https://api-2103.ppgames.net/game_pic/square/200/442.png', 1, 'PRAGMATICLIVE'),
(1155, '226', 'Speed Auto-Roulette 1', 'https://api-2103.ppgames.net/game_pic/square/200/226.png', 1, 'PRAGMATICLIVE'),
(1156, '1601', 'Snake & Ladders Live', 'https://api-2103.ppgames.net/game_pic/square/200/1601.png', 1, 'PRAGMATICLIVE'),
(1157, '210', 'Auto Mega Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/210.png', 1, 'PRAGMATICLIVE'),
(1158, '1501', 'Vegas Ball Bonanza', 'https://api-2103.ppgames.net/game_pic/square/200/1501.png', 1, 'PRAGMATICLIVE'),
(1159, '545', 'VIP Roulette - The Club', 'https://api-2103.ppgames.net/game_pic/square/200/545.png', 1, 'PRAGMATICLIVE'),
(1160, '721', 'Privé Lounge 1', 'https://api-2103.ppgames.net/game_pic/square/200/721.png', 1, 'PRAGMATICLIVE'),
(1161, '722', 'Privé Lounge 2', 'https://api-2103.ppgames.net/game_pic/square/200/722.png', 1, 'PRAGMATICLIVE'),
(1162, '723', 'Privé Lounge 3', 'https://api-2103.ppgames.net/game_pic/square/200/723.png', 1, 'PRAGMATICLIVE'),
(1163, '724', 'Privé Lounge 4', 'https://api-2103.ppgames.net/game_pic/square/200/724.png', 1, 'PRAGMATICLIVE'),
(1164, '725', 'Privé Lounge 5', 'https://api-2103.ppgames.net/game_pic/square/200/725.png', 1, 'PRAGMATICLIVE'),
(1165, '213', 'Korean Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/213.png', 1, 'PRAGMATICLIVE'),
(1166, '237', 'Brazilian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/237.png', 1, 'PRAGMATICLIVE'),
(1167, '902a9', 'ONE Blackjack 2', 'https://api-2103.ppgames.net/game_pic/square/200/902a9.png', 1, 'PRAGMATICLIVE'),
(1168, '441', 'Korean Speed Baccarat 1', 'https://api-2103.ppgames.net/game_pic/square/200/441.png', 1, 'PRAGMATICLIVE'),
(1169, '449', 'Korean Speed Baccarat 2', 'https://api-2103.ppgames.net/game_pic/square/200/449.png', 1, 'PRAGMATICLIVE'),
(1170, '206', 'Roulette Macao', 'https://api-2103.ppgames.net/game_pic/square/200/206.png', 1, 'PRAGMATICLIVE'),
(1171, '435', 'Speed Baccarat 16', 'https://api-2103.ppgames.net/game_pic/square/200/435.png', 1, 'PRAGMATICLIVE'),
(1172, '439', 'Speed Baccarat 17', 'https://api-2103.ppgames.net/game_pic/square/200/439.png', 1, 'PRAGMATICLIVE'),
(1173, '436', 'Baccarat 9', 'https://api-2103.ppgames.net/game_pic/square/200/436.png', 1, 'PRAGMATICLIVE'),
(1174, '230', 'Roulette Ruby', 'https://api-2103.ppgames.net/game_pic/square/200/230.png', 1, 'PRAGMATICLIVE'),
(1175, '227', 'Roulette Azure', 'https://api-2103.ppgames.net/game_pic/square/200/227.png', 1, 'PRAGMATICLIVE'),
(1176, '201', 'Roulette Green', 'https://api-2103.ppgames.net/game_pic/square/200/201.png', 1, 'PRAGMATICLIVE'),
(1177, '225', 'Auto Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/225.png', 1, 'PRAGMATICLIVE'),
(1178, '222', 'German Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/222.png', 1, 'PRAGMATICLIVE'),
(1179, '229', 'Roulette Indian', 'https://api-2103.ppgames.net/game_pic/square/200/229.png', 1, 'PRAGMATICLIVE'),
(1180, '221', 'Russian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/221.png', 1, 'PRAGMATICLIVE'),
(1181, '224', 'Turkish Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/224.png', 1, 'PRAGMATICLIVE'),
(1182, '223', 'Italian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/223.png', 1, 'PRAGMATICLIVE'),
(1183, '233', 'Romanian Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/233.png', 1, 'PRAGMATICLIVE'),
(1184, '235', 'Dutch Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/235.png', 1, 'PRAGMATICLIVE'),
(1185, '234', 'Spanish Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/234.png', 1, 'PRAGMATICLIVE'),
(1186, '226', 'Speed Auto Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/226.png', 1, 'PRAGMATICLIVE'),
(1187, '903', 'Dutch ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/903.png', 1, 'PRAGMATICLIVE'),
(1188, '904', 'Turkish ONE Blackjack', 'https://api-2103.ppgames.net/game_pic/square/200/904.png', 1, 'PRAGMATICLIVE'),
(1189, '1320', 'Big Bass Crash', 'https://api-2103.ppgames.net/game_pic/square/200/1320.png', 1, 'PRAGMATICLIVE'),
(1190, '211', 'Lucky 6 Roulette', 'https://api-2103.ppgames.net/game_pic/square/200/211.png', 1, 'PRAGMATICLIVE'),
(1191, 'dowin', 'Dowin', 'https://vedaimg.enjoycx.com/img/game/dowin/dowin.png', 1, 'DOWIN'),
(1192, '44001', 'Vir2al', 'https://media.ttfileserver.com/385/vir2al/300x300/44001.png', 1, 'VIR2ALDESKTOP'),
(1193, '44001', 'Vir2al', 'https://media.ttfileserver.com/385/vir2al/300x300/44001.png', 1, 'VIR2ALMOBILE'),
(1194, '14000', 'Greece Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14000.png', 1, 'BITVILLE'),
(1195, '14001', 'Italy 10e Lotto 20/90', 'https://media.ttfileserver.com/358/bitville/300x300/14001.png', 1, 'BITVILLE'),
(1196, '14002', 'Malta Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14002.png', 1, 'BITVILLE'),
(1197, '14003', 'Russia Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14003.png', 1, 'BITVILLE'),
(1198, '14004', 'Slovakia Eclub Keno 20/80', 'https://media.ttfileserver.com/358/bitville/300x300/14004.png', 1, 'BITVILLE');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(1199, '14005', 'Big Tuesday', 'https://media.ttfileserver.com/358/bitville/300x300/14005.png', 1, 'BITVILLE'),
(1200, '14006', 'Friday Fun', 'https://media.ttfileserver.com/358/bitville/300x300/14006.png', 1, 'BITVILLE'),
(1201, '14007', 'Lucky Thursday', 'https://media.ttfileserver.com/358/bitville/300x300/14007.png', 1, 'BITVILLE'),
(1202, '14008', 'Mid Week', 'https://media.ttfileserver.com/358/bitville/300x300/14008.png', 1, 'BITVILLE'),
(1203, '14009', 'Monday Special', 'https://media.ttfileserver.com/358/bitville/300x300/14009.png', 1, 'BITVILLE'),
(1204, '14010', 'Saturday Lotto', 'https://media.ttfileserver.com/358/bitville/300x300/14010.png', 1, 'BITVILLE'),
(1205, '14011', 'Russia Gosloto 5/36', 'https://media.ttfileserver.com/358/bitville/300x300/14011.png', 1, 'BITVILLE'),
(1206, '14012', 'Russia Gosloto 7/49', 'https://media.ttfileserver.com/358/bitville/300x300/14012.png', 1, 'BITVILLE'),
(1207, '14013', 'Russia Gosloto 6/45', 'https://media.ttfileserver.com/358/bitville/300x300/14013.png', 1, 'BITVILLE'),
(1208, '14014', 'UK 49s Lunchtime Draw', 'https://media.ttfileserver.com/358/bitville/300x300/14014.png', 1, 'BITVILLE'),
(1209, '14015', 'UK 49s Teatime Draw', 'https://media.ttfileserver.com/358/bitville/300x300/14015.png', 1, 'BITVILLE'),
(1210, '14016', 'France Lotto 5/49', 'https://media.ttfileserver.com/358/bitville/300x300/14016.png', 1, 'BITVILLE'),
(1211, '14017', 'Ghana Lotto 5/90', 'https://media.ttfileserver.com/358/bitville/300x300/14017.png', 1, 'BITVILLE'),
(1212, '14018', 'Italy SuperEna Lotto 6/90', 'https://media.ttfileserver.com/358/bitville/300x300/14018.png', 1, 'BITVILLE'),
(1213, '14019', 'USA Mega Millions 5/70', 'https://media.ttfileserver.com/358/bitville/300x300/14019.png', 1, 'BITVILLE'),
(1214, '30502', 'Absolute Black Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30502.png', 1, 'ABSOLUTE'),
(1215, '30503', 'Absolute White Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30503.png', 1, 'ABSOLUTE'),
(1216, '30504', 'Absolute Brown Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30504.png', 1, 'ABSOLUTE'),
(1217, '30543', 'Absolute RNG', 'https://media.ttfileserver.com/375/absolute/300x300/30543.png', 1, 'ABSOLUTE'),
(1218, '30552', 'MSC Casino', 'https://media.ttfileserver.com/375/absolute/300x300/30552.png', 1, 'ABSOLUTE'),
(1219, '30553', 'Absolute Bright Roulette', 'https://media.ttfileserver.com/375/absolute/300x300/30553.png', 1, 'ABSOLUTE'),
(1220, '30592', 'Nepal Roulette 1', 'https://media.ttfileserver.com/375/absolute/300x300/30592.png', 1, 'ABSOLUTE'),
(1221, '30593', 'Nepal Roulette 2', 'https://media.ttfileserver.com/375/absolute/300x300/30593.png', 1, 'ABSOLUTE'),
(1222, '30594', 'Lucky Number 14', 'https://media.ttfileserver.com/375/absolute/300x300/30594.png', 1, 'ABSOLUTE'),
(1223, '45800', 'InRace', 'https://media.ttfileserver.com/391/inrace/300x300/45800.png', 1, 'INRACE'),
(1224, '702', 'Oriental Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/702.png', 1, 'VIVO'),
(1225, '703', 'Hat-Trick Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/703.png', 1, 'VIVO'),
(1226, '705', 'European Auto Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/705.png', 1, 'VIVO'),
(1227, '706', 'Oracle 360 Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/706.png', 1, 'VIVO'),
(1228, '707', 'Oracle Blaze Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/707.png', 1, 'VIVO'),
(1229, '708', 'Portomaso Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/708.png', 1, 'VIVO'),
(1230, '712', 'Macau Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/712.png', 1, 'VIVO'),
(1231, '714', 'Las Vegas Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/714.png', 1, 'VIVO'),
(1232, '715', 'Las Vegas 1 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/715.png', 1, 'VIVO'),
(1233, '716', 'Las Vegas 2 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/716.png', 1, 'VIVO'),
(1234, '717', 'Las Vegas 3 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/717.png', 1, 'VIVO'),
(1235, '718', 'Singapore 1 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/718.png', 1, 'VIVO'),
(1236, '719', 'Singapore 2 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/719.png', 1, 'VIVO'),
(1237, '725', 'Singapore 3 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/725.png', 1, 'VIVO'),
(1238, '726', 'Montecarlo 1 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/726.png', 1, 'VIVO'),
(1239, '727', 'Montecarlo 2 Baccarat', 'https://media.ttfileserver.com/345/vivo/300x300/727.png', 1, 'VIVO'),
(1240, '738', 'VA Baccarat 3', 'https://media.ttfileserver.com/345/vivo/300x300/738.png', 1, 'VIVO'),
(1241, '739', 'VA Baccarat 4', 'https://media.ttfileserver.com/345/vivo/300x300/739.png', 1, 'VIVO'),
(1242, '740', 'VA Baccarat 1', 'https://media.ttfileserver.com/345/vivo/300x300/740.png', 1, 'VIVO'),
(1243, '742', 'VA Baccarat 2', 'https://media.ttfileserver.com/345/vivo/300x300/742.png', 1, 'VIVO'),
(1244, '747', 'Galaxy Baccarat 1', 'https://media.ttfileserver.com/345/vivo/300x300/747.png', 1, 'VIVO'),
(1245, '748', 'Galaxy Baccarat 2', 'https://media.ttfileserver.com/345/vivo/300x300/748.png', 1, 'VIVO'),
(1246, '749', 'Galaxy Baccarat 3', 'https://media.ttfileserver.com/345/vivo/300x300/749.png', 1, 'VIVO'),
(1247, '751', 'Galaxy Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/751.png', 1, 'VIVO'),
(1248, '752', 'Burgas Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/752.png', 1, 'VIVO'),
(1249, '759', 'Bulgaria Baccarat 2 VIP', 'https://media.ttfileserver.com/345/vivo/300x300/759.png', 1, 'VIVO'),
(1250, '761', 'VA Baccarat 1 VIP', 'https://media.ttfileserver.com/345/vivo/300x300/761.png', 1, 'VIVO'),
(1251, '762', 'VA Baccarat 2 VIP', 'https://media.ttfileserver.com/345/vivo/300x300/762.png', 1, 'VIVO'),
(1252, '763', 'American Auto Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/763.png', 1, 'VIVO'),
(1253, '770', 'VA Baccarat 5', 'https://media.ttfileserver.com/345/vivo/300x300/770.png', 1, 'VIVO'),
(1254, '773', 'French Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/773.png', 1, 'VIVO'),
(1255, '774', 'Dragon Tiger', 'https://media.ttfileserver.com/345/vivo/300x300/774.png', 1, 'VIVO'),
(1256, '701', 'Bulgaria Roulette', 'https://media.ttfileserver.com/345/vivo/300x300/701.png', 1, 'VIVO'),
(1257, '777', 'Dragon Tiger', 'https://media.ttfileserver.com/345/vivo/300x300/777.png', 1, 'VIVO'),
(1258, 'ptx_quantumita', 'x1000 Quantum Roulette', 'https://img.dyn123.com/images/slot-images/PT/1000quantumroulette.png', 1, 'PLAYTECHLIVE'),
(1259, 'ptx_wonderland', 'Adventures Beyond Wonderland Live', 'https://img.dyn123.com/images/slot-images/PT/adventuresbeyondwonderlandlive.png', 1, 'PLAYTECHLIVE'),
(1260, 'ptx_aogroulette', 'Age Of The Gods Bonus Roulette', 'https://img.dyn123.com/images/slot-images/PT/ageofgodsbonusroulette.png', 1, 'PLAYTECHLIVE'),
(1261, 'ptx_andarbahar', 'Andar Bahar', 'https://img.dyn123.com/images/slot-images/PT/andarbaharlive.png', 1, 'PLAYTECHLIVE'),
(1262, 'ptx_arabicroulette', 'Arabic Roulette', 'https://img.dyn123.com/images/slot-images/PT/arabicroulette.png', 1, 'PLAYTECHLIVE'),
(1263, 'ptx_slingshot', 'Auto Roulette', 'https://img.dyn123.com/images/slot-images/PT/autoroulette.png', 1, 'PLAYTECHLIVE'),
(1264, 'ptx_autoroulette2', 'Auto Roulette 2', 'https://img.dyn123.com/images/slot-images/PT/autoroulette2.png', 1, 'PLAYTECHLIVE'),
(1265, 'ptx_baccarat1', 'Baccarat', 'https://img.dyn123.com/images/slot-images/PT/baccarat.png', 1, 'PLAYTECHLIVE'),
(1266, 'ptx_speedbaccarat2', 'Baccarat Brasileira', 'https://img.dyn123.com/images/slot-images/PT/baccaratbrasileira.png', 1, 'PLAYTECHLIVE'),
(1267, 'ptx_bal_speedbaccara', 'Baccarat Brasileira NC', 'https://img.dyn123.com/images/slot-images/PT/baccaratbrasileiranc.png', 1, 'PLAYTECHLIVE'),
(1268, 'ptx_bal_baccarat1', 'Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/baccaratnc.png', 1, 'PLAYTECHLIVE'),
(1269, 'ptx_betslipbaccarat', 'Bet On Baccarat', 'https://img.dyn123.com/images/slot-images/PT/betonbaccaratlive.png', 1, 'PLAYTECHLIVE'),
(1270, 'ptx_dtl_betondragont', 'Bet On Dragon Tiger', 'https://img.dyn123.com/images/slot-images/PT/betondragontigerlive.png', 1, 'PLAYTECHLIVE'),
(1271, 'ptx_pokl_betonpoker', 'Bet On Poker', 'https://img.dyn123.com/images/slot-images/PT/betonpokerlive.png', 1, 'PLAYTECHLIVE'),
(1272, 'ptx_brusselsrol', 'Brussels Roulette', 'https://img.dyn123.com/images/slot-images/PT/brusselsroulette.png', 1, 'PLAYTECHLIVE'),
(1273, 'ptx_triumphrol', 'Bucharest French Roulette', 'https://img.dyn123.com/images/slot-images/PT/bucharestfrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1274, 'ptx_quantumautorol', 'Bucharest Quantum Roulette', 'https://img.dyn123.com/images/slot-images/PT/bucharestquantumroulette.png', 1, 'PLAYTECHLIVE'),
(1275, 'ptx_rol_triumphrol', 'Bucharest Roulette', 'https://img.dyn123.com/images/slot-images/PT/bucharestroulette.png', 1, 'PLAYTECHLIVE'),
(1276, 'ptx_espanaslots', 'Buffalo Blitz España', 'https://img.dyn123.com/images/slot-images/PT/buffaloblitzespaña.png', 1, 'PLAYTECHLIVE'),
(1277, 'ptx_liveslots', 'Buffalo Blitz Live Slots', 'https://img.dyn123.com/images/slot-images/PT/buffaloblitzliveslots.png', 1, 'PLAYTECHLIVE'),
(1278, 'ptx_deutschrol', 'Deutsches Roulette', 'https://img.dyn123.com/images/slot-images/PT/deutschesroulette.png', 1, 'PLAYTECHLIVE'),
(1279, 'ptx_everybodysjp', 'Everybody\'s Jackpot Live', 'https://img.dyn123.com/images/slot-images/PT/everybodysjackpotlive.png', 1, 'PLAYTECHLIVE'),
(1280, 'ptx_fashiontv', 'Fashion TV Baccarat', 'https://img.dyn123.com/images/slot-images/PT/fashiontvbaccarat.png', 1, 'PLAYTECHLIVE'),
(1281, 'ptx_bal_fashiontv', 'Fashion TV Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/fashiontvbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1282, 'ptx_cardmatch', 'Football Card Showdown Live', 'https://img.dyn123.com/images/slot-images/PT/footballcardshowdownlive.png', 1, 'PLAYTECHLIVE'),
(1283, 'ptx_livefootballroul', 'Football French Roulette', 'https://img.dyn123.com/images/slot-images/PT/footballfrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1284, 'ptx_livefootballrol', 'Football Roulette', 'https://img.dyn123.com/images/slot-images/PT/footballroulette.png', 1, 'PLAYTECHLIVE'),
(1285, 'ptx_loungerol', 'French Roulette', 'https://img.dyn123.com/images/slot-images/PT/frenchroulette.png', 1, 'PLAYTECHLIVE'),
(1286, 'ptx_truefalsetrivia', 'Friday Big Quiz', 'https://img.dyn123.com/images/slot-images/PT/fridaybigquiz.png', 1, 'PLAYTECHLIVE'),
(1287, 'ptx_grandbaccarat', 'Grand Baccarat', 'https://img.dyn123.com/images/slot-images/PT/grandbaccarat.png', 1, 'PLAYTECHLIVE'),
(1288, 'ptx_bal_grandbaccara', 'Grand Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/grandbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1289, 'ptx_quantumgreek', 'Greek Quantum Roulette', 'https://img.dyn123.com/images/slot-images/PT/greekquantumroulette.png', 1, 'PLAYTECHLIVE'),
(1290, 'ptx_greekrol', 'Greek Roulette', 'https://img.dyn123.com/images/slot-images/PT/greekroulette.png', 1, 'PLAYTECHLIVE'),
(1291, 'ptx_roulette1', 'Hindi Roulette', 'https://img.dyn123.com/images/slot-images/PT/hindiroulette.png', 1, 'PLAYTECHLIVE'),
(1292, 'ptx_squeezebaccarat', 'Japanese Squeeze Baccarat', 'https://img.dyn123.com/images/slot-images/PT/japanesesqueezebaccarat.png', 1, 'PLAYTECHLIVE'),
(1293, 'ptx_bal_squeezebacca', 'Japanese Squeeze Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/japanesesqueezebaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1294, 'ptx_racingrol', 'Jet Set Racing Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/jetsetracingroulettelive.png', 1, 'PLAYTECHLIVE'),
(1295, 'ptx_speedbaccarat1', 'Korean Speed Baccarat', 'https://img.dyn123.com/images/slot-images/PT/koreanspeedbaccarat.png', 1, 'PLAYTECHLIVE'),
(1296, 'ptx_bal_speedbaccara', 'Korean Speed Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/koreanspeedbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1297, 'ptx_3cardbrag', '3 Card Brag', 'https://img.dyn123.com/images/slot-images/PT/live3cardbrag.png', 1, 'PLAYTECHLIVE'),
(1298, 'ptx_doublezero', 'American Roulette', 'https://img.dyn123.com/images/slot-images/PT/liveamericanroulette.png', 1, 'PLAYTECHLIVE'),
(1299, 'ptx_ubal_lobby', 'Baccarat Lobby', 'https://img.dyn123.com/images/slot-images/PT/livebaccarat.png', 1, 'PLAYTECHLIVE'),
(1300, 'ptx_sicbo', 'Speed Sic Bo', 'https://img.dyn123.com/images/slot-images/PT/livebaccarat.png', 1, 'PLAYTECHLIVE'),
(1301, 'ptx_bjl_lobby', 'Blackjack Lobby', 'https://img.dyn123.com/images/slot-images/PT/liveblackjack.png', 1, 'PLAYTECHLIVE'),
(1302, 'ptx_casinoholdem', 'Casino Hold\'em', 'https://img.dyn123.com/images/slot-images/PT/livecasinoholdem.png', 1, 'PLAYTECHLIVE'),
(1303, 'ptx_casinostudpoker', 'Casino Stud Poker', 'https://img.dyn123.com/images/slot-images/PT/livecasinostudpoker.png', 1, 'PLAYTECHLIVE'),
(1304, 'ptx_dragontiger', 'Dragon Tiger', 'https://img.dyn123.com/images/slot-images/PT/livedragontiger.png', 1, 'PLAYTECHLIVE'),
(1305, 'ptx_rofl_lobby', 'French Roulette', 'https://img.dyn123.com/images/slot-images/PT/livefrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1306, 'ptx_hilo', 'Hi-Lo', 'https://img.dyn123.com/images/slot-images/PT/livehilo.png', 1, 'PLAYTECHLIVE'),
(1307, 'ptx_qrol_lobby', 'Quantum Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/livequantumroulette.png', 1, 'PLAYTECHLIVE'),
(1308, 'ptx_rol_lobby', 'Roulette Lobby', 'https://img.dyn123.com/images/slot-images/PT/liveroulette.png', 1, 'PLAYTECHLIVE'),
(1309, 'ptx_bfbl_lobby', 'Buffalo Blitz Live Slots', 'https://img.dyn123.com/images/slot-images/PT/liveslotsbuffaloblitz.png', 1, 'PLAYTECHLIVE'),
(1310, 'ptx_spinawin', 'Spin a Win', 'https://img.dyn123.com/images/slot-images/PT/livespinawin.png', 1, 'PLAYTECHLIVE'),
(1311, 'ptx_perspreadbetrol', 'Spread Bet Roulette', 'https://img.dyn123.com/images/slot-images/PT/livespreadbetroulette.png', 1, 'PLAYTECHLIVE'),
(1312, 'ptx_trvl_fireblazetr', 'Mega Fire Blaze Live Trivia', 'https://img.dyn123.com/images/slot-images/PT/megafireblazelivetrivia.png', 1, 'PLAYTECHLIVE'),
(1313, 'ptx_trvl_lobby', 'Mega Fire Blaze Live Trivia', 'https://img.dyn123.com/images/slot-images/PT/megafireblazelivetrivia.png', 1, 'PLAYTECHLIVE'),
(1314, 'ptx_fireblazetrivia', 'Mega Fire Blaze Lucky Ball Brasileiro', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeluckyballbrasileiro.png', 1, 'PLAYTECHLIVE'),
(1315, 'ptx_fireblazerol', 'Mega Fire Blaze Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeroulettelive.png', 1, 'PLAYTECHLIVE'),
(1316, 'ptx_fbrol_lobby', 'Mega Fire Blaze Ruleta España', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeroulettelive.png', 1, 'PLAYTECHLIVE'),
(1317, 'ptx_espanafireblaze', 'Mega Fire Blaze Ruleta España', 'https://img.dyn123.com/images/slot-images/PT/megafireblazeruletaespaña.png', 1, 'PLAYTECHLIVE'),
(1318, 'ptx_dutchroulette', 'Nederlandstalige Roulette', 'https://img.dyn123.com/images/slot-images/PT/nederlandstaligeroulette.png', 1, 'PLAYTECHLIVE'),
(1319, 'ptx_prestigerol', 'Prestige Roulette', 'https://img.dyn123.com/images/slot-images/PT/prestigeroulette.png', 1, 'PLAYTECHLIVE'),
(1320, 'ptx_quantumroulette', 'Quantum Roulette Live', 'https://img.dyn123.com/images/slot-images/PT/quantumroulettelive.png', 1, 'PLAYTECHLIVE'),
(1321, 'ptx_brazilianrol', 'Roleta Brasileira', 'https://img.dyn123.com/images/slot-images/PT/roletabrasileira.png', 1, 'PLAYTECHLIVE'),
(1322, 'ptx_rol_loungerol', 'Roulette', 'https://img.dyn123.com/images/slot-images/PT/roulette.png', 1, 'PLAYTECHLIVE'),
(1323, 'ptx_rouletteitaliana', 'Roulette Italiana', 'https://img.dyn123.com/images/slot-images/PT/rouletteitaliana.png', 1, 'PLAYTECHLIVE'),
(1324, 'ptx_ruyiroulette', 'Ruyi French Roulette', 'https://img.dyn123.com/images/slot-images/PT/ruyifrenchroulette.png', 1, 'PLAYTECHLIVE'),
(1325, 'ptx_rol_ruyiroulette', 'Ruyi Roulette', 'https://img.dyn123.com/images/slot-images/PT/ruyiroulette.png', 1, 'PLAYTECHLIVE'),
(1326, 'ptx_speedbaccarat', 'Ru Yi Speed Baccarat', 'https://img.dyn123.com/images/slot-images/PT/ruyispeedbaccarat.png', 1, 'PLAYTECHLIVE'),
(1327, 'ptx_7bal_speedbaccar', 'Ru Yi Speed Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/ruyispeedbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1328, 'ptx_7emezzo', 'Sette E Mezzo', 'https://img.dyn123.com/images/slot-images/PT/setteemezzo.png', 1, 'PLAYTECHLIVE'),
(1329, 'ptx_deluxesicbo', 'SicBo Deluxe', 'https://img.dyn123.com/images/slot-images/PT/sicbodeluxe.png', 1, 'PLAYTECHLIVE'),
(1330, 'ptx_goldenbac1', 'Speed 6 Scanner Baccarat', 'https://img.dyn123.com/images/slot-images/PT/speed6scannerbaccarat.png', 1, 'PLAYTECHLIVE'),
(1331, 'ptx_bal_goldenbac1', 'Speed 6 Scanner Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/speed6scannerbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1332, 'ptx_primeslingshot', 'Speed Auto Roulette', 'https://img.dyn123.com/images/slot-images/PT/speedautoroulette.png', 1, 'PLAYTECHLIVE'),
(1333, 'ptx_minibaccarat', 'Speed Baccarat', 'https://img.dyn123.com/images/slot-images/PT/speedbaccarat.png', 1, 'PLAYTECHLIVE'),
(1334, 'ptx_bal_minibaccarat', 'Speed Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/speedbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1335, 'ptx_speedrol', 'Speed Roulette', 'https://img.dyn123.com/images/slot-images/PT/speedroulette.png', 1, 'PLAYTECHLIVE'),
(1336, 'ptx_spinawinwild', 'Spin a Win Wild Brasileiro', 'https://img.dyn123.com/images/slot-images/PT/spinawinwildlive.png', 1, 'PLAYTECHLIVE'),
(1337, 'ptx_teenpatti', 'Teen Patti Live', 'https://img.dyn123.com/images/slot-images/PT/teenpattilive.png', 1, 'PLAYTECHLIVE'),
(1338, 'ptx_cardshow', 'The Greatest Cards Show Live', 'https://img.dyn123.com/images/slot-images/PT/thegreatestcardsshow.png', 1, 'PLAYTECHLIVE'),
(1339, 'ptx_turkishrol', 'Turkish Roulette', 'https://img.dyn123.com/images/slot-images/PT/turkishroulette.png', 1, 'PLAYTECHLIVE'),
(1340, 'ptx_ukrol', 'UK Roulette', 'https://img.dyn123.com/images/slot-images/PT/ukroulette.png', 1, 'PLAYTECHLIVE'),
(1341, 'ptx_vipbaccarat', 'VIP Baccarat', 'https://img.dyn123.com/images/slot-images/PT/vipbaccarat.png', 1, 'PLAYTECHLIVE'),
(1342, 'ptx_bal_vipbaccarat', 'VIP Baccarat NC', 'https://img.dyn123.com/images/slot-images/PT/vipbaccaratnc.png', 1, 'PLAYTECHLIVE'),
(1343, 'ptx_xiangroulette', 'Xiang Long Roulette', 'https://img.dyn123.com/images/slot-images/PT/xianglongroulette.png', 1, 'PLAYTECHLIVE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `populares`
--

CREATE TABLE `populares` (
  `id` int NOT NULL,
  `game_code` varchar(20) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `provider` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `populares`
--

INSERT INTO `populares` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`) VALUES
(1, 'fortune-gods', 'Fortune Gods', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11310.png', 1, 'PGSOFT'),
(2, 'double-fortune', 'Double Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11341.png', 1, 'PGSOFT'),
(3, 'fortune-mouse', 'Fortune Mouse', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11354.png', 1, 'PGSOFT'),
(4, 'ganesha-fortune', 'Ganesha Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11363.png', 1, 'PGSOFT'),
(5, 'fortune-ox', 'Fortune Ox', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/11617.png', 1, 'PGSOFT'),
(6, 'crypt-fortune', 'Raider Jane\'s Crypt of Fortune', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12206.png', 1, 'PGSOFT'),
(7, 'fortune-tiger', 'Fortune Tiger', 'https://resource.fdsigaming.com/thumbnail/slot/pgsoft/12503.jpg', 1, 'PGSOFT');

-- --------------------------------------------------------

--
-- Estrutura da tabela `provedores`
--

CREATE TABLE `provedores` (
  `id` int NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `provedores`
--

INSERT INTO `provedores` (`id`, `code`, `name`, `type`, `status`) VALUES
(1, 'PRAGMATIC', 'Pragmatic Play', 'slot', 1),
(2, 'HABANERO', 'Habanero', 'slot', 1),
(3, 'BOOONGO', 'Booongo', 'slot', 1),
(4, 'PLAYSON', 'Playson', 'slot', 1),
(5, 'CQ9', 'CQ9', 'slot', 1),
(6, 'EVOPLAY', 'Evoplay', 'slot', 1),
(7, 'TOPTREND', 'TopTrend Gaming', 'slot', 1),
(8, 'DREAMTECH', 'DreamTech', 'slot', 1),
(9, 'PGSOFT', 'PG Soft', 'slot', 1),
(10, 'REELKINGDOM', 'Reel Kingdom', 'slot', 1),
(11, 'EZUGI', 'Ezugi', 'live', 1),
(12, 'EVOLUTION', 'Evolution', 'live', 1),
(13, 'DREAMGAMING', 'Dream Gaming', 'live', 0),
(14, 'WMLIVE', 'WM Live', 'live', 0),
(15, 'ASIAGAMING', 'Asia Gaming', 'live', 0),
(16, 'BOTA', 'Bota', 'live', 0),
(17, 'PRAGMATICLIVE', 'Pragmatic Play Live', 'live', 0),
(18, 'DOWIN', 'Dowin Casino', 'live', 0),
(19, 'VIR2ALDESKTOP', 'Vir2Al Desktop', 'live', 0),
(20, 'VIR2ALMOBILE', 'Vir2Al Mobile', 'live', 0),
(21, 'GLOBALBET', 'Globalbet', 'live', 0),
(22, 'BITVILLE', 'Bitville', 'live', 0),
(23, 'ABSOLUTE', 'Absolute', 'live', 0),
(24, 'INRACE', 'Inrace', 'live', 0),
(25, 'VIVO', 'Vivo', 'live', 0),
(26, 'PLAYTECHLIVE', 'PlayTech', 'live', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `suitpay`
--

CREATE TABLE `suitpay` (
  `id` int NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text,
  `client_secret` text,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `suitpay`
--

INSERT INTO `suitpay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(0, 'https://ws.suitpay.app', 'leandro9180_1698437955129', '172cd86724032081ed4b7a3e9014ac4131b591d43755b538e954bad19eeb93b78f08b15b4ffd46b6a822898092d4053b', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema`
--

CREATE TABLE `tema` (
  `id` int NOT NULL,
  `cor_padrao` varchar(45) DEFAULT NULL,
  `custom_css` longtext,
  `texto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tema`
--

INSERT INTO `tema` (`id`, `cor_padrao`, `custom_css`, `texto`) VALUES
(0, '#FFB129', '', '#FFFFFF');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `id` int NOT NULL,
  `transacao_id` varchar(255) DEFAULT NULL,
  `usuario` int DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `tipo` enum('deposito','saque') DEFAULT NULL,
  `data_hora` varchar(255) DEFAULT NULL,
  `qrcode` text,
  `code` text,
  `status` enum('pago','processamento') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `transacoes`
--

INSERT INTO `transacoes` (`id`, `transacao_id`, `usuario`, `valor`, `tipo`, `data_hora`, `qrcode`, `code`, `status`) VALUES
(62, '7b833f19-d3f6-4059-b42c-c254774a3a31', 13, '5.00', 'deposito', '2023-11-07 04:00:58', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACUklEQVRIieWWP460MAzFjSjSwQWQco10udJwAf5cAK6ULteIxAWYLkWEv2eY3W/LeNuNEEK/GUV27Pccor+8eubN8UI0Mk10MCcV7Kjds90I34VMu5AS+mPPwxxT5+0e8YdfQGrYLm6YzPELuHK7R75oeHk9pHbzzAjJpYn+p1kJ7/M8vp8fh1wFZfnhRakPw5h/VLQO9oEXQ5PjyyEw1DTpYMRuRKY0oT0dn14HG8Y6OJSZj43sdYekgAEVQSHKywwjD3PWwT62l7enL308FuI1JxUkX8aAfqAX4eMTUj3sIwvxZTKlM3bPOkgOidAYcJ4WJ7NGHeyz3UUF8vGO7RqTChKlJg5khj7IgVyGVLCJfDr7zqnh9nKlczrYGfRS6kyZg5DxDqke9hlhoBNEiUTPWwHJi36bnDoaJqjpKYcCHjCu0x8b3A9CpqSCkhHfu4Vh8pKdCjYB+k0j3sS7aEoJc3oZCxNbxfwH8krIMG3qHDZskc70lLgeBprDIAZikBFaWgdFvIYviDGK/a4fB6uGDNuE+R+XtHGiO6R6SL7dubwgRrQipmdIKohqkqfJoJekNJxJBx2/s108SSsauwYl9GkOfFJpOAFuJqkg4Z6QIZ9jzdLGHyFUQ2w1ZzQzzF9qylEHOwPvRS6y7Yn5+0ztaigFzVBiEvP50lE9xNRefCsj+/n1sfRqeN8ZcKTYs5C7Z6gKwj18IS9anuBgrIZrbhcZOsflPwaogotr39G+GVqw+1dItVDuimmSS4vM/U9I1VDuS4+KWTTYxKSCf3f9A92fnN6G6HO/AAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/b7d1f38efced47b29b900e09ebc6f49c5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63049838', 'processamento'),
(63, 'e5a1203e-a8b6-4ecd-b8d8-cce6a16d307d', 13, '5.00', 'deposito', '2023-11-07 04:01:16', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuUlEQVRIie2WvY20MBCGBzlwBg1YchvO3BI0AGwDbEvO3IYlNwCZA4v5XnPcrXRfNMRnoRX77Grk+XtniP7O/2dgXj1NIR/Rbq72nk857kltREtMo65TtKcDkWOf36HOzWpdCs2Ot0d4dQZWD5j3dXyK3yVzsVzU6hM9w6TegU8NBhfV+nFegBHvzeXP80mDADfzOnWR4SuR3T7JF+AhqiPkd1RwFJmffd7luCs0ReS8dqXV0ajtKsdDzKtOwFfM1MHqlGPyqXd1RLAJvtYBpSTHQ+Cd6hKRcFR05keYdB3RDcGunrmgLewux4gQB3N9a615Uj7lmDz1jo9opgDbdnc0yjG8XCnvDnlr7qLFZzkmf91OW1TQ5tQrJpLjnvgV0N80lUoeFfRVPkKs0+xMTxa/LKVd85Rj8oojDaXlCn8ZyT7AXTC9S/1VONMlNg8w4s1Qbm2ZzRDSwl9aJcQRhqE0qEHqopkpzXLchbxpPJAHoiZXtX+AOQ2MMswrBEYjTrzLca+ZGdluWrWjlDg/wITMa35xWhB4VLS/cynCeD04TaGiv4+CYN8XFOGOzezQDflVIHj21JXkGIN91Xx6CINZgtr996iTYNjuPcybqZiO1aZ/LijARPyG4sYmmZtL5G+tEuGOIU6mw5wvhiBUXu1yjLZuVeMxAdokuVT8AcaioY6oXs1LA5EgOSbdpiv8w1AaSj4RfjnuIrSqksby0tafiW/nZRilF7GttFwNkUb33dwizFjf2g61ebzY9ac0JXgoKJk0lTYVp4BGvweMCF8hbwFbPYoI73e8RbhtYbo2xULqoLvQGznGtrK2YLdNcMGPdKuPDLf1Fksl5N/0mr69FOPNY0eGUPERUndnXoyhdkh4xxgmSH7tH+Brg9ubo+jsdsdRjhHvd8EnNgVoHp57ponw3/l9/gHGAjmhzeYV+wAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/aa1e1fed52fc479fa01e16a35906e4da5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304874B', 'pago'),
(64, 'INTERNO 07112023040331', 13, NULL, 'deposito', '2023-11-07 04:03:31', NULL, NULL, 'pago'),
(65, '67ab4542-9fcf-477f-88f1-269cf45783cc', 14, '2.00', 'deposito', '2023-11-07 08:23:24', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTElEQVRIieWWva3sIBCFxyIggwaQ3AYZLXkb8E8DdktktIFEA96MAHnuYXffvtRz02utkPWthODMnDMm+suPZV61e8Q2kTpiYc4iaEjtVM5QNm6k1UpCGMpK5dJuCuVI6qhiuAeadFu42VR+Abeah8oc88JyCB3YLZyNhiD/r3kTQs/dl+/vK/JNiGeo4x6yjeUZ87egN6Fl7DOexJxeZU0yaHTGi41Q5lULL4OEIsb2SLyxM4GfUQZNaEsdT88r6hLL6mWQfG+hC4Jwe7WEDBpqto4coUm5PHoyi+DAZUs0Bd5S2XU2JIO2OuNp9m5BK0aFrhZBo/moCj4yety7naXQTXpEF8ER8ML7SAIY1MY0QVVus3afDrkNh+gWHIn4CmQTds4yyIwSQE+uziasJIKEEnh+wsWEI6ElsggamDe4R0UpkQDIEBJB6k0ID3YXX/S50X1oIxD+wsqww/tGApjgQaiK82CliWSwB77PM+UHNxPQk0Lo3RB7dOAueJlJCDVcXJBgT1wpfjpZAAm1QDvRggAJfL5FFkDVw6eOG+zMefZCGNxQ8+QxPZGB46lJBOFi7Lnr9mA3JBwsi6BlR68Ah3+HhM1JBIkwsNSqu4+Md59muA0HRnDlSSO3MUCRnzJoNCZXVwNeGLojZLBzFBTpQXzATUIIDx7Rzb67mBHg/4b+TYhvhi2Ol0eSQBasQtjnJl5eN4KjqxzWNnmEf29F88lkAdyDOj2CCPfirQohvpcSijjiS8lWdQYZ7HqmHgKYgLPH9JfBv/v8AMZ4jUvpBPFVAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/b2ce8d15d4c3489da145c53fcf01eb125204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630443DF', 'processamento'),
(66, 'bdb40b66-91d5-4000-9654-85cf443f1267', 14, '5.00', 'deposito', '2023-11-07 08:23:49', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACQklEQVRIieWWPa6kMBCEGzlwBhewxDWc+UpwAX4uYK7kzNew5AtA5sCit8yM3m5Ib/oQQtY3oxauri5D9JuvgXnTabJmIsUhMycR7EkdIZ+6dlx7rTYSQpc3rbxNE2WO6ihi6C04rTHvMf8H3GNdA9+OOpZDUt6pk9JQzBD+bvMlhJ54pZ/7R+SXsF2ar5CGkK/4T0ffwYEhY0VljmirmaMMkjaL5j0QuW8vRLAZwKnNjjub3vEphAQbuHzx6KkuBEvI4MDjUVA59RqWSCsLYUgLmTnw6SBpmrQMQofbpsWljvkIqX/M8B4OpXaF1jBySGvI3pEMxrxRvoryevToZkgy+KixPKpyc5QQttyAGvngumhDlkSwK23RuxFJcrsMVUUQU4Dg2vBkdeARSAZbE0dMX0uDkgaWwQ6xE/NJeKa5fDPkPYSToeEQ2xTflHpLIthF7KJOjh9VmYsQsunieFpkF3WIcSuFebOEPs4If/wkhHD+GmkOWDzvRjJIjq+IUnzqfAQzWRlEzSEg/ZBjLYo/XnoPh/BZjHtBgrWJEEEsumAWpzzxjppPhryH6OZR6qQR4KYLdQ4ySDgxn1MPW8MfPAkhtW6Sqyt2ZEdvZbBjZGYlDR1QmTcngwjtvYUYiEGE3loGG7fwwxP+rg2UCMIAR1H3k2ArZ08yiG+GvdBcUpsCHECfHb2HqFbqgvmNcMV3imUwwEVI/rwzXC2G3uF9DLyEynsRwvatWGce7+YldbEMNj3RC2rjvJfxCjL4e68/qcSlsatxp9UAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/a0d1ca6ecd394a549acb42cca358a7515204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63048A26', 'processamento'),
(67, '7bd7ddf6-7607-48e3-ae87-fc95e40c125f', 14, '5.00', 'deposito', '2023-11-07 08:24:45', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACQElEQVRIieWWsa21MAyFjVKkCwsgZY10WQkWuMACsFK6rBEpC0CXIsLvhHt1/7/Er30RQuhDsrB9jg3RXz498xp48cNIag2ZOYmgIbVzXnTtuHZRLSSEPq+ljsRnSHNUexHDPahF20vnNeZfwDXWKfCFtyyHyCjypVPPFc//0nwGUc/N5e/1LfJD+D5zTH3IqMn/PX0Ce84caHTMkRc9TFEGOx5eLuEa/acXImjIHl4dnncejOfDyWBXEC0ZbzfKlxNDo+1ZiHSCDjed3hkJoEtT4RNq9KkLkLQMEqlLI9oAI0wxjSSDfUAf7RlohhEC9JCE0C5umLilhshTkEGj6+v2IHmoIhkngy0jBynCRPWFvAKJYB/xVflw6CZg66wMwr9NUXBi3oi5kAhCBkbzGSEnxIeXhdAhl/te7B5wl0HEMe7j4otaZBEkjYzyye0c7pvRUwgXG4KL1YZnxCcZbL3A0PP2xADEtwUZ7JjmAhe0t9dHSAII+3NsE+xktRYoWQZbtDJgfGH4r6jJrSUBjMz4GI35mWaml5NB8tg7acLyIl6LPbQM9tEerr4c1i5MpN7z/zk0VFGTxeMBMxAzhESQMHXbBKtoivEoqQx2nEaX7zIy9u9byc+hwa5ntTm+lz52twzeakRBmoZ7Tn2UQWxtOHekNsEwAzeSwfs/YRgR0+G/5eNiAWxxKt1a6sLHxSK4FwgYkx+VIUNyiH9FGnpsf6jCCSGhFxja9iDe2vaXwVZP/LQUBB9m2JBk8O+eHwLXhR2UVvtYAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/e235a9b1936f430db594ab7b40f7b9095204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630440F8', 'processamento'),
(68, '528fb5ba-ebff-469d-a187-463892633e9b', 14, '10.00', 'deposito', '2023-11-07 08:25:06', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTElEQVRIieWWzY3kIBCFy+LADRJAIg1upNSdgH8SsFPiRhpIJNBz44Bc+3D3zO7RtddBLWR9LaEqqt4riH7zssxHUlumJ9NMlbmIoCF1JL8Gv1K3Wa0khLEemR7a79EBHk0OW90yb6yOXP8DrrogrzMWinKIjNqIxDb1on/SvAdx2h7qz+/nkm/CsQJzLjY5VOTvugdt4i0RaT7HX6hpEUHSbg6es7NJvQK/ogxarjuVhfsyPjw3EsEpd4qKW5+jmxjXK4VIpM/kzGhFfpdDAkdFtly/uG7oBC2EqXIrz+yW7EwsE8ugIfeI5Zn8ljyz2pIMIouDndFkm//KkLMQNvQD8kI160p8ahJB0urUlVN5sjpDt00GLepI9CDUlCGoXRcRNGH08GsE4x5jF0JdTPRDxdwnqOkK6T7EPcC74Jy7RlTYZRDNY8jDf6DieexFBiHexhDgSSgrvmXQIBJCG8A/Yf7+YBmkoM7oX0EdPGqxvEt8G5rQl3YZSPTXsVKIRupzgPdCwmr9lPgupAAVY2rAQy7vjSSCBrlkdZJb2E3o5yyEiCHQM6GZYQj+uxx34TRs011acLP2RxLC5Jbmt9wtF8A1yiBRXUOxuU8Nh9evd4lvQzieZcyOMsMBktqjDBpd19gfY3KVOY5dBC8lIp4x91+Y/lkG8b3G4X5Q8dLqwTI43gxQXypoaQofFQsgfAMO9s6IvlUsgVvDncC7KvR4RjFcNcbuGHwnTOCt4vuQoH0QNwwkwRBkcLyXYIC6G+0mHPh5ctyFv3f9Abt6qw8mbpt8AAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/043b5c8a5b1a4eae807337cc39a531ac5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304C588', 'processamento'),
(69, 'bc5ebb39-6925-4d48-80e8-980cfe73afb0', 14, '2.00', 'deposito', '2023-11-07 08:27:09', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVElEQVRIieWWvY30IBCGx3JAZhpAog0yWrIb8E8DdktktIFEA3ZGYHm+l/XqLmW+9KzVSfuchJaZd54x0V9+NPOq8unt6fNKmTmJ4ED97vIRzcL9EfuVhNDnXZkp3kT8qP4oYrgFu5W7K3zE/B9w9wn3eogvlkPqD8aTBkcz/V6zEeI0FOTn81PkRliPVfmhpIOZym9DG6GO/UkJ1eDQb6V/vBDyPQW+SloYDTVdlEFS9lS8xf4hM3HqYhJBlHHCr1J8KlqKISWDXUAGaHS8K/wrDV4GdQG5Z4UwW/ywb4+aIZFdFe5FI+UVoQokgprNTGmJBoNwBHvEJIId5yvQ7JIu9or99mlHOyRHOjBmAY3ogt29DA6Eo+6ZTIcosn1cEkF6ByfgXrcuZokyODh+HC0RAgHHLJMIIjy65h8xyKdLgxTCfoD178chLIMd7EE32jHUUqThTXIzJM8cITFMseUAF5EQ1jgtmAXijWkJMog5qg5h3gp8Yncng0M1PzxgUQ3m/mIZ1Ag/12MnzjDY+k5xM+xCGl2aghnrsbiXDEL+V8n4ChchD6uTQV3H515CTVEXv+0QQFxH3aPPjJ1VF7cMDlTPnCJVh8dcdSSBBHE5u5KZ0ZfyVVA7RJIJm8vh663ZvgVph9h6iMGJWYZCPX/fWJrhpyZQUMIGxMZ/5d8OP1sb05d3KCjkI8ggwrB9BA59jfVkksH6wsMr3OUSDPaGQQR3BwPnjdNS7K6SFG7lHShEorpIBvGu6G8dq3sPzs93d7RC1PMoME/1QI1EkMG/+/wDb0WqygXhpkYAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/3b8e81c410f74e3c8db2c91b94f783135204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304E752', 'processamento'),
(70, '4ad23a50-3768-43ee-ad56-1bb6c2f0c416', 14, '20.00', 'deposito', '2023-11-07 17:41:26', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVElEQVRIieWWva3jMBCEV2DAjGqAANtgxpakBp7sBsSWmLENAmxAyhgQ2hvahu9C7aVPMGzjC4T9mZ1dot/8zMzPxjGpI9SdKnMRQUMK8Gz1AtTqQUIYaszqoetB+FaxieEj2DV1CpVz/R9I5YeYmZYghyMjWnSZs93Sv2negqjn7uv38y3yTfiKSp25GOpr/tvQm3BufJE1mrm5yO7hZdCEYkI3gVa2G1vSUgglqMg0pT7lbj5iuAvJl4n7gpAYGVkKJIJTU88E6GJCSHUPRQQJQmqdBuyjsEwiiErupA4Ehpc3dWgZnLlsCAa5EMfsYpZBo9WOHw0h8ZMRmAzOzZKHA6CbHWKe3/q8DUFixgvtnOzK7vJCSH3LfOkRDyf3nqP7cIIK2O0QQ+7kmZMMki7GO7RjTjDAYl7tkEDox3EbIxxbjSyDE5fRET+m2AwnKSI4J2SkroBcHGfMMong1CzmCE0BPDNqK4Oow+XhvXwmOyXoqoggEpmae7ayMp/ZLu/puA3JQz9u97QmNMXtHw+5C4fzNOQyRLX4YaQiaKheYxzKSAeLL8jglMcIb1mdqawNHiKDqOQzlUXX82VBzySDGFs42IIpTujI+COCRPXQY3i3DPcebiyCUDLktGjFzW7NHUQiaHAteGv80DC89NJFBF9qtD9jimGk2GIkgtjaMfH1WtnjZNIyiJthDxUSgpEu9JliARxHmrroldHISwwhP2zMNXe0dX5vLgmMDfUciw/853vs3YTIyONSgnWPq+PwJILjXsIAjq3X14SXFxH8vc8fQPGnxxodlLoAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/93035654ac534898a72fd11a5dcd965a5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041B2B', 'processamento'),
(71, '57b1739e-c993-4911-98d5-dccd87ce34ec', 14, '5.00', 'deposito', '2023-11-07 18:26:54', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACt0lEQVRIie2XMa6kMAyGjVKkgwtEyjXociW4wMBcAK6ULteIlAtAlwLh/Q1v9q12mzX1i2jmY+RxbP+2h+jn/Hs65rkvC5WN8lSPNvCpxy2ZxeYu5ZHdANaD6HEoa3Jt79pwTJVePS+P8BzcmPyeaAjH8BQvtnD1zGYOmZ5hMisXTmC4opm/L6/AiPeCeP9+vtOgwNeb3EjqqKt++TP5/427ZHb2S8BFeQnHK6AE1Li1yBi/2TVMTXJN8g9wgzD3uYsoIrOhCqqZ9bgNeUqO4Bq+ko4pHq0eExJFbkoQhIEm+BGGDqaIx7+T50pTMpse45b49Aqeo9mTP0k8VeN0UH9AlKMIy+yVBj3uYpGE98BwrWzhtq3DONDinnhls8B2zKTHUi+2zALMpU4/P8DsiFxroQNpeE26JaXDZJlj7qrkqrV5oNu2DneVxoquUN7xGOFgdS89biKfFiHH/VyHOuLc6nFXc2sP9AaMgstwfulxC8OWZ4Sq9+ia7adrKnFGr3oRJM4bwTZvTzDizdLCOQ/BTVxOPUa8ccWdEXWHqJ/h7lU63LBfE40RA83veCLPekwWakAtYxCZFQnsywPcRX5DByzSnGLZxU01pgA1kHiXkH+Yv4eADouGLBqwQSGjDVP49CoVZnjkGpG1SHwLn66pwWTLG+YDxiOChBZuZj1uZOWBd7xWjDU31oP0GPE+6ZrwhFCVzd5qUGLOYs9iCiHkWMe+SlOFm+jPgFCJkjoUI/vzAWbCTIMOxMGIbve5vAajZBgts2cW8xgFn+6jwdcbtBlsYYSZhl8Y9Fi2MOykUUIOXZ4SeDXGPviuALIJyku6danEWG97CELaf2vxU7eDarxeQx7TAKMV4X+GZ9mvAaAqGlNZHmDIqMcn+d+Axf9l3aDHV7wd9gWMkQ5jrfKixz/n7/MLwA9Mc+nL8lEAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/521db031cbfd45049e3c32fa9f9177cd5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304AEBC', 'processamento'),
(72, '2433bf5a-6318-4935-a5c6-db9568cf9b09', 14, '5.00', 'deposito', '2023-11-07 21:01:36', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACRUlEQVRIieWWvY3tIBCFxyIggwaQ3AYZLdkN+KeB65bIaAOJBnwzAuR5B+/e1Qs9m65lWdYXoJnhnANEf/mxzFtwc2wT/mNhziJoSL28m0LZuZFWGwlhKJtmTp0fSR1VDF+aKLSVm03lF3BP2VbmmFeWw95RmzkbrY74f5uPIOb58uXn/RnyQ9ifMF4+Yy/e8UMeQ8vl8nwSRsqbdnOSwSHmSWNBTObeCy+ErDipU/POzgR+Rxm0Cbug3hWCLHssm5fBIWGe1KviNmlIQghvC8x1PAmTKZfOImi6jPMUeE/QZF5IBoncQrR4t0KKEboiGewGVBc5o8cXdjPK4FCxFL9ThiPgBXOX9BxSdzGWKge3RTv6lPQQ2uRWhpL5Cn1nTcgyWPnCbgbm6myCl0kEoWT71RGhJEgiCyE2sQ0VXyQAMoRE0GKGfsSacPFF6EgIkV1wLjpiPj36ksGB+7JDzy6URx8XP4WQ0OnzEmjmhnrWKIO2kvFQFDIEK+fFyyB5tWkMk99oKbq5yiCki1MPlawIkMDnraXnkPR4BcV13BmGQklS6PAzefUiZCCSRAaHihOny2lmN6TveQpgbJYJ3kdrA7KIZJAI3lfb7SOD09/L4IAhID8Zua0OHENaBo0uULLxPUUHvlUtgZ17109t4gNuSlkEcWoftRnfXcwIcJJB3Bn2nmDwMjSJrxDiwtPrujuKmOovYJs8wr9L0Xy5WAS1ggItQ5O8RyEkdaRyhRE3JVvVGWSw35dCv2nYijWRJzL4d59/VGuRwvSbe10AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/18af38cb06eb4301a049f5ebaf0f1f245204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63045FF3', 'processamento'),
(73, '04813a1c-14b8-4ebf-9c4a-924c92d62ed7', 19, '10.00', 'deposito', '2023-11-07 23:34:16', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACtElEQVRIie2WPa7sIAyFjSjoyAaQ2AYdW0o2kGQ2kGyJjm0gZQOZjgLF7zA/70rvVU590SjFFylj+5hjE/2e/8/AvFdHocyRuZKNfMmxJb3XohLe680cVwCR43hsRjP7k/yFfwi83cJ75i3qPROZMt7FK/EaD67HGgvdw6S32MZwrMEtePOTvACj3ls4fn4/MggwjsplSX4NPUD7I74AD4kfiZ8VsvOFSI2/5FjVNmU+jX6kMpqysD7l2Aa/mTIkD9EU05SclWOiprIjA616vc9PgDKM/n1kKF+Gii7mZ34rL8M2tqlqrv5R0YOMqt/AKh/PSiO1JdGIMEMZb+DkUCHFRdVio1tyu4Gp9x16B1niUjobaL6BTbOILh+cNSo9m49oIqwYmvs1ds0Xxof1JceIa8r6iXqnsrz68QZ+XW58GFniijPnRnIM07Wmtw/8BlfKElxHjIeM7+Hp4VVn9DvzKccqFRvaHPQKq4so1buRpRjW66/YjeqKUP4WZuTXFoZRHRgplj6NLMSwqPLOkjPE/2Qpw8kNtffdK1fcSzfK8VAxDyEa78nDO8+vrQuxmxJmEY0RrYTx+JkkIkzGPxOC4svo09AY/CnHuJQKnseQDvbZFRvlmCLGO9yurxtErictxwPD6mBUTVWsHsfje11FWCWND2+hdePMNPHXB2W4UF9bEBdmrMatOm9gbD2mTIkZXoUxm90sx2j/qfa1Zce1CPBgvcmx6q2HNnQU8cTu8+1vEcZY5j7Tntys6SZKcgyp11cHMU7mndssx/Ta5k4sdBhoFV71dggZxhb2GiOYbJozqsWrHPchgHloUGla8JKO8wbuPvfeTLHbdv/ebuEVoVU3mzKbrpu9h7FfE58Bcv01PCHuWR6PLhly1c/0Vl6G+45MfRChBTijiY5Njn/Pv+cPWjBlgS1E/KgAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/9ec921d984b54015be4577c1edbd95685204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304257F', 'processamento'),
(74, '8573b304-dd94-4d93-9aa5-b73679fec877', 19, '10.00', 'deposito', '2023-11-07 23:35:15', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACT0lEQVRIieWWvY3tIBCFxyIggwaQaIOMluwG/NOA3RIZbSDRwL0ZAfK8w+7Vbup56VqWZT5bCIZzDhD95csyH7meQb1ifafKXETQkLqSemfPrDirnYQw1iuXOao99iWrq4nhkfrS+EhuyfU/4BkxKb6J7yiHpE6tjlxM7FP6neZDiHqeof7cP0V+CAdPbqWC59TK74I+gzard1PvxJzU0dQdZdBQn0ndoUzsNnZTlkHLatedorrJLZiOLiI4pWK5QktH8lfyryiDtjGWYI68x2KoXiyEXNbgtox6liWPphCqYwxpeOGOZUskglNzhtys6058ZdwyaKK68iipbR49H0kGKfSFPaqx5DIlf0YZtA3ecaQdpIivnIoImtBtgpj7HPiFwrIM2gTz0sLMjd/wciAZ5GI06llMcCueJIMG5kVyYl7MyM/rM86nEM410b8T+hwuMFoGiTCXemq4GMXEO4kgfDRHz0NCfDBtYgj5IbgwNuTJeAqhW6PHOi4NAeLRrQhaxos/IGMeUYwcFkHS3QREB/TcjaaZZHDCXvk1kW10W/dAIkgRXZUFVcUPGctRZDDwroecRhM/kBR2i+0y05YgxU96CyDVV8C+T6vGitD8keJTOHHZssJq2qTO6G+SQYPpjIKgFBgbHC2DQw/Zw32GsP/CUySCY9eOClZCig4Xf8faYwj57RrNYpuDkGwWwojY9+O4EsoKR7MYYhirrgcKy0hvMdyxZQd8wmmtr0EIcV7CsSG6OdSjVf4cJJ7CUc+Rov5CAjSGqETw717/AFLoy4i/0k+LAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/5a8cb733794047fb8241bd6e508e71d65204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63047BED', 'processamento'),
(75, 'e0af63d2-2918-4e34-adc2-b3d0df6775c5', 19, '10.00', 'deposito', '2023-11-07 23:35:41', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACs0lEQVRIie2XPY6kMBCFCzlwZi5giWs485XgAjRcAK5E5mtY4gJN5sCi9tU0s7PajcrxWh0MX2C5ft6rGqL/59/TMy/xvIPv+dxsdZFvPXZkNuLrqBSH6+A7gOhxPFc2b6ou0GxpDrw14T3xmmhKwxJobMVLxNfAxTBXasNkdpYQl+jBlp/gFRj53sL58/spgwLjdEhVwN3ndfg/iq/AKDgnc5PhwnvKffKjHjuqczivxIs1e6ldGW49JuJ3zGP0U8IzeaFh02MXUCjfF3zJS5k/geow0fAOeQze2XMtuTvMosc9Z/rS00L5lfBSs7Vgsx/mDrwzo3TrkZ0eu0gTS+nuYPZUx9iG+bZ5JN8nmmN9sZ/1uOM62i9lB8SHyn/UoMOOkCTYjNw9FfRREw7US6HqSAMnT7GSHnfp5DKsySyx9iX3BzXgXhQAm0HrwfnO2/oWnGC3lSy8CopE/Z+GUGEXshOzxAORMKg8j3pM8Cf8GYYtoKNF6JseOzSdXD9IqlKdJfF6HJj58e8rnbBhp8ddqi/8Cq8I0Q778bEZHcYQeFvcDVUhUIy1swH3By6uPUtwU8rw8gbsIvo3v2RE1zHkOX6PaA3uSn6VjKxPhSbp4s8DdZiiuQ4wc0cPt+An3zrcIcqjSvEjnK9Oj/XqMBrnwo3H8LawB0jqmfMqTJgAFvdBjgMzto9nkqhwh1Fmsbb4WWQNWWSnxz3M+8CXgaSQchepAXfHcEnXiHmL+bFvwYzLRNz7gYShht9DQIP7gmVQlgUu5y2TJDdgqZtFC8vug0ni6OkqFZYtDBuH7F8Y+FjEWjDEvbKHQyziNxDl54FKHB/XZM59oZdsDU3YYuMQdXZoou8FSov3gvlcv9wXG4d3DRg7cho2kTXh4iX8Dl6Bn3xj0bbyzwdcfNPj/+fv8wvVIxLypivbgwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/7b239e265d2646e4a0039c137512dbf85204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630442AD', 'processamento'),
(76, '1647bd5e-c8df-4813-9e23-51bc936f5e07', 19, '10.00', 'deposito', '2023-11-07 23:35:48', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTklEQVRIieWWsa3rMAxFKahQZy1gQGuo00r2Ak68gL2SOq0hQAvYnQrB/FdJXvBK87dPCAznFIxI3kuG6C8fy7xWfRiaSG9UmLMIDngPNAVeuamknySEoay1nNzm6Nak9yqGe0TMvPhxTuU/4NOQrXx5pCOHyMi7jbKN+oy/0rwHUc/Nl+/nW+SbEEclh3cbyxnzt6E3oeXCUa/MnPhpUBMZ7DFjXnplPr0QQVURKqvIO49D4MMLYWqPOE7BcXLIaBJCtAPvg4EYaPCfjO5DorYQRAgjQAltMEIYYKI8haaqO2ueXmK4Dy2PNrZHRV75EaEHEsHBu4PaXMfBuA3dfOnhPqQAA3YBwxGMyngZVLHsTJPXO7fFjD/yuAsp4FZtTm6N7kyZQhZB1f2LevKFuyXmSiKIIDbxyV0Pj5otyyDctwU+MXxwpQo9yCAKaFO5+gwpl0E9ZZCIr9ckwTk8/8yQu3DofRyXPvnRGlqIRJCMgwYmQk0a7jNXGVSc59gsxn7Sa/xkdB/aBCXD+w32HwhKlkGi0dY8J821HBhBQQahhDUimuOqsUQWL4OqdgvPVV+E/eswEIQQFiBwxaNKvSMiaNOIhhIuQxjCjbwMEmHs6CvABSN6YasMopsIOBl+Ut8C7/l5Hw6m4O/K4OFifSY8ZfBtpUfKyEsleCqLYN/awR2hbOQug6cMYvU8MTkrNKx7RkEIEc1jbWFr9+35nmBCWM4+/MvK+Akx3KM++vQeEfnphZDwlWZ2e+IDrQkyiHrur2219LzgaBn8u+cfvBp2NZetqOIAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/f1fb9f6dc1f2478bb0146f810d2c69715204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63044A27', 'processamento'),
(77, 'fee266ac-41b0-43e9-bfd2-39d20aca48b0', 21, '20.00', 'deposito', '2023-11-08 00:48:59', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACWElEQVRIieWWQa6sIBBFyzBgJhswYRvM3JJs4LVuQLfEjG2QsAGdMSBd/6L93/tD6k+fMcacTmir6t4LRL/5Mswbq5P4nJMPmTmJ4EhqYxrYvud8RLWSEM55d3iq02WO6ihiuDFfZRqCfev8H3CdLRfmMBmWQ2pV+JhMSAv9lNkJ0c/d5e/7u8md8Ob0Kmmk6uO/A+2CpvB7JpqZiz3Yrk4IYxoiX5E8Ty+eBpZBInuFvOLXUIdYTUkiaEL7qrNNRF2s+Pmjbog191ntM+pSHPBtSQSHMPk4LS5BFZiFudfshwbluPsd3MFQMji0CTJH9ISPiDvJIFwQLQQ8OtjZHrce+qEpk2d1hOS5mggvJBGkW8BvVz06gyggGRx1HbXdHWOOpkCKQggNB8yC35qWpmcZhJJNzNDAqHP7VZMIjq0ihEDeZ+QAMkQGh9JWO6m5eNRYP4kgtVryqlGXhZKfiiRwwr1otQV7xUp3Rf3QRFgv78jAgASGL5IIkm4awGo+4jm9nhDrhujGTvmc69K2D6giiSDcByu9gt04n059kqEbjpp3zfeWgRe1zjIIH91F5a1ZSV1FBoeitoKKEF+1GfmxdjccKS0O/iXf0q8uWgYJzaTpS2MQFTvvp5/dcEBmhkqUXmF6IU8CiSCmeTE+rO1fC/T8GUcvfDhOO0jvsyWwDGLXPvBJup1bhlvSIogzw66h4YSxLgQXkwy2U1abIxd6nlK4wsVNw9WX+r1mPzygw9h2bR/r19/DXi8khZPG1QIEs8ALiWDrJyuE/6qxadafcfTB33v9AVRtzY+VGxfTAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/89f16f8880f1412d9dab7091163113635204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041E51', 'processamento'),
(78, 'eb6db43a-7db4-441d-baed-5be82e0acb72', 13, '890.00', 'deposito', '2023-11-08 06:27:00', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACT0lEQVRIieWWsY2EMBBFx3LgDDdgiTacuSW2ARYagJacuQ1LbmA3c4CY+2bRbeq59BBCq7eSxcz8/wei/3xZ5i3wEtxEeo+FOYvgQHoh90j0jOU0+C2EoWzhGEKejd6M3usfYCbDpylrKn+B5hiITzooyCHpNZbN58GPHL9ldsLWT19+72+T+yAuxXrx2fIxm+9AO6Fl9PBTkXvwYWsWQcXumfLs8xSuWXgSQQr69GVl/Y56rY6uhvTDwWcK/MLhiWzUWyARVImZMdOsErSUoUkRtIzXcCgEPdkMPVgGyesTPvJ68yPcNAQhhIyJOeZnu8smhQT38ULH5ElFHJ6FME8G+ue9orduMlKoXybPcFCTorvF0A1tPR6R11peoTQ9sBBGPr2bA3pCz9omK4Jk8mBggYxB2AQ3ZRFUXBCbyIEdKjJlIxm0Mdt4qIqTUR2eMqgYFZU3t+vlmSuJ4NCmidjnVxg3ghmzCKo4rjiuIgcQgMd0pVA/tNWhjdCAxe5AipIMIn4hwgdyLMJEt5IF0DT7gDwqobTPOPohtUKalTjlJ9P8kXc3RH6qWhbPZ4CcDsUyaHlc/KUi36b5lsLaXLC0BEMG4i8ZbBlCGvZBfq5tcWQRVHBQGyLvyU2BprshvXAw8D7s81n6aIsMXnpAP9HMsT3vAOyF2NprUxFaMb7THb/9sH0zoKXtNL2Y+0wBDHifsbm4YvVgd4vhhr3T/AglH9PnlSRwx3eOd9iAc7h0JYKwYUIt7ZsNOaZSFkH0c0dDzLi2ivRvkzvh/71+AJ1lYfgWVXQOAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/395e0e91b0d04a8db1c4092dbcaac5105204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630452B7', 'processamento'),
(79, '536e417c-052c-4f20-b2e7-6411253aa64d', 13, '5.00', 'deposito', '2023-11-08 06:27:05', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACT0lEQVRIieWWPY7sIBCEGxGQ4Qsg+RpkXMm+gH8uYF+JjGsgcYGZjMByv2K9s9qQfukiB6MvQNPdVdUQ/eUzMG9+3LybSO+xMGcRtKRPpilkxdea9EZCGMpe3Rr5ReNh9FnF8CDc5hZT9lT+A26+bIFv/Jkgh62ibE0eqiP6XWYXRD8PX36+nyZ3wnYwi5CHWPb4Id1w4HIH/TLMiTfj5iSD1l/k8+LRmTYLVaVwvIOb67izs4FfXgaHmOeaJzPeBCKGFMYNN5tswzVUzSyD1ue18ru6yejNf0bcD005DCZCit1a9W1IBn3j7zpyzPDREWRQxXGvKEcfBj5yc5RB692a4EQYueBaFCiE5c3lgJf5Woyj7xF3Q2i4Xitjmqjomp8I6oaKcWgxfAc+K/OXFPshZDxU3hNqQXPy8NiwG8J9R3Co60xORWQIyWDFnTSn5mIU9fSzH6oI/6Kl7bzCp0wBvGClJuP2m55x9EO4GAE48/jmy3r9rjKIs0JChg9CkuQ1yqBC4Ee3EGyYVXSTl0FL19S2Dwyo94QMySKICWJvvivfHgmWl28b9kJrnGKMQyPB9or1J4NEWNloiBsYWqInvfuhgpa4DdFSa8hcZZAIG6fdzBUV0dPPfqgYQsIUEJ4QI3orgy39UtPzjaXP8LIMfqkR6f21uDkPKYsgtvYJB8HFUHJ7fpAI4s2Ah8qG1YOi2gISQtxj2srjlJujWQzPCAWiIjQkWxLDw1wToSK3eN6kkDT8OzCWb16ovIIMtvfSIyGDLP28BLrh3z3/AIXNbgo5BXZbAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/316420438611400ca3ad90a456e4b1d45204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304D3BE', 'processamento'),
(80, '9f0eaa29-68ce-436a-8c85-0fa3001a09b7', 13, '5.00', 'deposito', '2023-11-08 06:27:07', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACUUlEQVRIieWWMdKkIBCFmyIgwwtQxTXIuJJeYNQL6JXIuAZVXEAzAsvex8zsv6m96W8Z6BdQdPd7D4h+8zMwL6FM6RrxnSpzEUFLejP1iHXlazR6ISHEb6M5uzHWPeu9ieGeC8Vr5mvI9T/gYvyZmFOZWQ4J23BzK9boPf0r8yFEP7dQf96fJj+E/Qn+jgWzONNf8hgOXDn7wzBnXoybsgxaAyVgQXTmPYsggxRQURkjr+xs5DPJoGoF75R4gSpSXYIQsoeEFjSkS/GaswwOjUbDZ/MH1TtAGEUELdWdywsV5bqZMr6rFMB4USiv4GZIMWk0RwSH/N4MOWv8hmm++ymB18QaKoIj4AX7XfMpVFnfvRDUdb2MU41E0AZHBrXwHbE+VFFEUDW+kTyRubkhw8skglgQMphysYQt4buIoEqIIDc0jBIJgAwhEbRUhsZn7i6+CV0tIgiCKRAqYj4C6iIRVInmdKmeXf17DDII58JHmMXEl8VEkgyin2T82jOkqARJSyGvXYd8oqT0VfJzCOlijhNOHwRIRE9kULG+AybiV8bZ992SALYenq+gN0IGwpJFBC35LSCEYUanMjYmhBE9gYu7qBR89J3mU0iEEwe5130ES34S7DlUDOdq3BmWoHeut5FBi/sGUpdwchWFgWYZfPcEP5gpNFm+UnwMcWrvCX3oLuYe4DKIO8Oa9AFFBb2YH2s/hrFu5OhTEe4tTFK4ZwgY4d+laIMYbkQjgojdK/BCQtjviriq+aVHmT6MDPb7EvVlh4Y1/ceGz+Hvff4Aj7eUrRo1730AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/10fff6f13a6f440aa65c0149dfbfee515204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63043594', 'processamento'),
(81, '2f8480c7-d49d-42d9-9cba-4998a186019a', 13, '5.00', 'deposito', '2023-11-08 06:27:08', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTElEQVRIieWWva2lMBCFBzlwhhuw5DacuSVuA/w0AC05cxuW3ABkDhCzx/B0d0Nm04cQuvquNPL8nDMm+s2PYZ59HrwdSHEszFkEe1JroCGcHZ+9VjMJYSgL2x5hqXBSWxXDrapV5ymVJZX/gDO5o/IVqGM5REa+xTTVmvhPmu8g6rn68n2/RX4J8XTJHTGbWI70t6EvoeHC0ZrKnHjW9pNksOP8iW5JmcJPL0SQvJp17sDR08C7l8EuYYTyENxK50iYSRkkXVYqaEevC4JPLIUW5zki7wElzYOWQcOOK41tkHiLuSchTIiZp+i4fTEPWQR7zzOpo2nBrehmJBEkncnnETIMmAocKYsghp8ZJlA2Pkdt6W7He9iljIaa5LZYrlBQVRGk0PSLL7Pa8Hkyeg1Nyr13UF/zoprNo83XsGu2o3YqW8qfit8kgkQZYafUVHwRIgshconn0DLCNDJXGeyDHbTbIUYcL5ZHhgJIbicayX5g/vdfMtgk4A7Gv/fZvAySVjuK4HnXZYtWCruI9/wkO+pmxT8D9hrCPy8YCLmlwsGgCBLBllG1Y1Ar8YKYOotghwFGHfRp2Laz3ZP8HppIo4eCUE8Iip92vIdEZQ5qDueEjLxbvQy23ZEytUSgR96DDMK0dyxuD2JhoZeWwTspzOFt/qFpSgTb1kbM28Emxh6RQdwZFuzrmvt7A/ZeCAMM/xyhXzhh/KpYArG8GM6PexecRA7xksUsIfLshZBwVSi7dlebJfVcWt5D1HNjqKBZ2VKxf2Xw9z5/AH4QefXhFTJrAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/d09a9f2d5b614fcabf15c2efbd00d4865204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630417C7', 'processamento'),
(82, '1c8fc117-3c0a-4c2d-9173-ae668bd77414', 13, '5.00', 'deposito', '2023-11-08 06:27:09', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACRElEQVRIieWWva3kMAyEaShQZjUgwG0oU0t2A/5pwG5JmdoQoAa8mQJBvNG+vb3UvPQJhuH9FiBscjgk0W8+hvmIfJU6Ew0hMycRHEldgZaQBq4mqp2E0OcDAT3NPnNUVxHD06VR2y2oV8z/AY/CHHBNu5dDUqfuz6Ojmf595kOIfJ4uf69vkh9CnCGmVScT8iukb0EfQsO59WQyR961XaIMDkxLqUsh8p9ayGDJu06EmGxHz68ihIFMsBvSQplL/cR8DE2cmle7S6ZMCAhRiSC5uuEnIxUT8jlrKcwNOuRKzpoAPcigQSk9rQQppi3k08vgwKppPgIEOZ29mkkGC7Skbo3IGWFHJ4NvE0hLhIbrqi05EkHDtHYxTCclw13SIkhIRUH39S5+FW6OZLDLoMLBDDwE9yKDA8MBaGMUIs3Un2UQ7kG5Ue9i3Ecng/SWwazRR3yjm0oSQchvQzmKOntPIT6J4AAVde+qC9cROnQySL7O8L2gLniRq1I4/O1ivNVNdhbDj4c0Pe2abyGEdVwRBsi7UxdaUghHj5mFciCffJTpfiv5OYQCW/+QurEdemlIBMlbE9/dRAlwdUJI+UAhNGwQ7o2UyuDAcAB1xIyJuSAzUQZHDfeAk3CjXo7mZfBdEUwc9BEGX4KdimCf2nBO140XS8tJMggDPDCv+86gEPPrn08hthSemsPURjnQxSSFJ3YVX5GZgz8OJoLdwYI1bFcHPQsh9iVvZz8doWJtuL0MIp9XxF+QYh9/P1p6Dn/v+QPCLoitinlPFwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/b9f9b9f79fa447bca54bfcef563004b75204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63047194', 'processamento'),
(83, 'a8b04c27-f65e-4335-a936-bd4de5fc940b', 13, '5.00', 'deposito', '2023-11-08 06:27:13', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACUUlEQVRIieWWv430IBDFxyIgMw0g0QYZLdkNeO0G7JbIaAOJBtYZAfLcY3fvvi/0XHqWg/VvpRHz7z2I/vJjmLeodq2eoexUmLMIjqR23+bkmBUntZIQIpRWBzfydsSPKoar5zPaobZRl1/Ag+3o+SI7BTnsGTmuGf9y/D/NWxD13H35eX+KfBP2sNqOlE1P6l9Db0KT1BMFqYzzbFVdQQbJ55HKyfnBFi9pGTSJn5QHRinszHlIWQRJt0WjF25jJKUuLYOmujOpnbgPs8+LFKZGQW2RD0ZbralCWNXGGAmaiI+kjkgiiAqMoZnkVkBETjJIWp2J15DfqW1RBkfdHqlNvgcfonvHvA+HiCnqK/yI6KbjmIWwYQaQ1CO28RVZBMfAl4d08BXsEhCfZFC/6tm3GJXJ42sY7sOByx6siVAPnAp6IoOERqALiObx+Yl5Hxrsb4+GXBwnZiYRHCLNNc8xL8RbJbRVBCG5J7tLFxAT6a1C9yGEC+OEzzlBve2iZRDye1Ev5pxwKoWRlkGN+cEk8LOPNE1aBonc6t0Rs+Gywfi8DHYN6csIFX0tBQthtxv0tMB9uhR/qnQbpgbRHpgwDyfWWQiJut9tCSJs5+r2T0HuwgGCXxtpyC/sQ51VBrvRQ0OIL61WuECQwXdDHxXbhF3ANpEIdtfW8I5+b4FrHy8Fuw8xilu0JkF+7QTvTiSDoWy4LHUd65vIVQyPWJ4wLxh3dW8JEsFVN+gYqjpHu3ghxH2J+oVhIgxVub63+CZEPQ9sUHRrVwB3VBn8u88XBM+d3Ro2CbQAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/93602ce5ae6f45adb6d06d8aa99b6b395204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041986', 'processamento'),
(84, '9f96d864-1f50-4034-9356-e12444de1cc9', 13, '5.00', 'deposito', '2023-11-08 06:27:18', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVUlEQVRIieWWQa6sIBBFizBgJhsgYRvM2FK7AW03oFtixjZI2EA7Y2Csf+l+7/0/pP70GWPMMUG5deuWRL/5sMxH8mfzJ5NNlbmI4ET6YCKD+2vO+klCGOseCpmKR5PRRxPDg3E6lS+V63/AJ9Uj8016YznEjhrvsdiMp/9scwxCzz3Un/NH5EGIQyVaudjkZv5b0EFoE2/tmhPfgTnT/HnRMJxMmbPfo1NJvwK/jAwq9q/oz+wU1508JxJBimRbWeK1Zn9kNwuhgocb39Gt7G+UNRUZTNcSi+IyN32bMhkZnAz6qJ4ZC2I7npsM2kwUHBbcQFhvmURwIj5QwQAPQ1XAIoJYcIGBjVsTnAxlSAajPjJUhYv0HS7bpBCSOooX4JP8HYsIqgQDw4HMDWLiXgjRQVy3hC52j1A+nzQObYOBAXGFMrgWESTqq62pdzFMZZMMwks3ghdm7mXlr/QehhQQ2tCTN6bFODIyiAA8c4WkB+u9q0oiaBlOKGsfPfAhNJFBCoyl0MVzKw/6cfIoVP2K4aU58QtGCiSCmJWvQA/jlgAv0fwuxzhUKCW7OeN7cO8/5RDAnjyIEQjbvXS8Q2AcTr2PikL+c1nIPz/VHIaEdZp+IgNhaVOfgUSwJye7NSO98ZTWLIOTwax0jwgXlZX5O1RH4duNfXzgRHR/N9coxNTe4OTey25t/atEEI2wx9qnRrgIGZKEED88DYMbUxvlwJbEcGO/9x+tirn/yU8h7EqeXDG8jkQyiB2Fa+0VQQjAljLY/1SZb3PZ5NFQFIsI/t7jD/F215rE22H0AAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/c263f7d85a5f4e98b03b5c07ec5009845204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041729', 'processamento'),
(85, 'cb448ad1-f1ad-4837-9518-e409500d083b', 13, '7.00', 'deposito', '2023-11-08 06:27:22', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACWElEQVRIieWWQa60IBCE27hghxcg4RrsuNJ4gVEvoFdixzVIuMC4Y0Hsv5jxTd6S/rfPGGM+E0I1XdUS/eVrYt5i3op5+HxRZk4iqGlcvZlCevp8xnElIfR591iT5sKrGo8ihqvio1RSVav8H3CLdQp8qbSwHFJTsXDSrhL9ktkHUc/d5e/9LXInfC9rhpI01SGm74F2wqkw48ZV7MF2dTKoHT0JxUwzm4XNwDI4QJHCgaY5YEtVuySE5qHsi+zl8WLmSEJotzjuDlW16KglJhEkRUMZX62LzBBpfivqh9phM+jGvHr0Q95JBqdQpwIHGSI+Ih9BBrW3R0jYFURt3N5FEPXEOU5NS52i0UoGyY1HQEFgJXy1XGRwYpoDLQWHkh40nkEG0UuXy6trnXyipYUQEqZCD4cnXAA3yeAQ0AaIr3y0gtwZ0g/R+UghCIGLseAUZRAuvhTvHlosB77r2Q2RG/DRGcYtWHTU7aNuSGRXBK8zczBDsPvbxQLoKqKDCBBfx/OzZjfEOlcbH+PJ2Jjd7+PoheTrU6GkFV7Ywt1L/bA5F0ZWKCyiO//kZy8cuM7RLGFEE848np/j6IZTU9EmJoeq25mSCGqfhoD0hpu4FdPLIFHeAj6ZJSK9x7ue3XDghNnxIDyxKziRRBCD/vKoKl/erlD0+WPphh9Rbxe3ka0diWCb2oQb7QRD/aR3N8Q/w67Ms61pHs3FQog2JoiCf5suLmK4IUILHFQR49qLIZyL1Y5QMbiX7y9cJ2yKABEgaAb7ciSCrZ6qja2W3nz/M/TDv3v9AwgEqpTp7ztaAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/6d6cb4bbf9024adb812ae17dc60837295204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042C63', 'processamento'),
(86, '716a5c77-e710-491e-a5d7-0c36f86aaa09', 13, '8.00', 'deposito', '2023-11-08 06:27:26', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTklEQVRIieWWzY3DIBCFx+LADTeARBvcaMluwA4NxC1xow0kGrBvHCzPPpLs7tWz17UiK/oSofl5bwai//yMzLHVXdNEtFBlLiJoSD2DnQJHPtesHiSEocbs9nDOycWstiaGG5dJl8XbOdc/wAeOTXx5pCOHhDD4ojImdaTfNG9C1PPp68/np8g3YX+8i4wzEdg3uQ1HrhfVyMyZHxo1kcEhl4HLQsWETy9EEAXZgyXPG1sTePdC6E98P9hxdkcqa5JB1PPSZQoQA/5gZ5bBIZUlqJhhBCihO0IEezwgwQ7NHe1cdBHBIfekxnauSCdDDySC5BW3c0YxtXv2bhYRHDMtGgLujuBUDMkg6Xppt3u1MdJBXiSCQ7OTpzm7mNyRi3kX5D5EN0O9At4YI/AyiaDx0DBgP21tZWxCCA1AhBg+CIn7OBJB8mXMau8zBH4s5tPNu9BoZFGgZzy7Z24ySGQHtmjo8+XoiWRwbG5LGL9wIvyICGUQ3Td99KktK0ywOcmggQ49Tf6EJAzZucng0A/pRmZYGCMoyCDqiUgmctzUoy+gIoI4c07n2tRFWJ3ue7DchoyNQ2s70ZTXH4oIwrbdehobvwzZvht8HxJ1F6wZLsD0/tTzPsTiIF8P7B3C6jlJy6DR9WA+4N+g8NMVZPClRpigzy4oeUwy+NrauLHUJ7lL411EEIsvpn7TML6LwbzjvA9DJwv8i/2bEJsYIqQDvdBY/fTOSAS7i/v0tktwsQkh7oqEbrot844LgJZB1BMZrY3gIOR1NBn8v88XSBeZYLmM8AIAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/cc6abf9348684b299e91208bd366b6ce5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304E176', 'processamento'),
(87, 'bfd28de5-aca5-472e-b14f-bfcb42199105', 13, '76.00', 'deposito', '2023-11-08 06:28:09', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACYElEQVRIieWWsY3kMAxFaShQJjcgQG0oU0t2A2O7gZmWlKkNAW7AzhQI5n3Zu3sXipeuMTCMF2go8n+SRL/5GZm34jZ2R8gv2pmzCBpSq2ZOfIV91WolIQz7W1dDfEZLWn2KGK4eUfEW1aH3/4BbsmPhy+/vIIftRuoKGfwT/71mF0Q+3zjt+/eT5E7YjtV1jtlQHdLfgnZCRMIIJuHtPuxWL4SRyNdJ08B2Yfsc2w+N55PVGfMYEVIdn3z2w0ALviNDinOyM5MIkmdmmshtZf/g5Cef3XBkWmKegnp7uxR3FpJB5JPVGpokDg1tZBEcEEaqS4sEWnKISgTHpDZElTISCy9L4cCoiJ0TLVxHOIKFMEG91gRUBLVwHGXQ+EzaTp4PzUjmIoQD0hnV5eFiyBh6FkI4KKjD31lFWrQMjgUdLBP6WICivnpIPxwKCpHn0lyMA8fbR/2QAq5U2zsimV836ocwLyw8FwUhnQlWIhE0gdewH35H9x5Q0KdG3XCI9MKZXGGlK6jz+aNuaLS7fJ60Ozxk7N4+i+BY7FzQweCCfSs4UwahpdbwQ5PEmfanfwpgM2BeIhKSZ97Ppxzd0GDmxjqy2mI1vrZuLIIBN8oLXBz5TJj+MkjUbmG04oTubc2dz344MDaNOlF9hZ0LREUiaDSm9n67GFnF4pFF8L4UTXAQGsjtKRHE1P5A/83LNIXb0RKIneED/SecaSfKX+Xoh6GtClub2m2GchFDLDyk4d86sx2TGL6JL43pj8XDvn6WvU5ImJj1Re7QMII7iETw3pcgBrwxxaDkLIK/9/kD3rnSYACUF6wAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/8cfe9fe23f4d4d7a8c3942303037b3ba5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63047206', 'processamento'),
(88, '4520b862-05cc-4a93-89cb-979844355561', 13, '8.00', 'deposito', '2023-11-08 06:28:14', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACwUlEQVRIie2XS67jIBBFy2LAzN4AEttgxpbsDfizAXtLzNgGEhuwZwyQqy9J+vVT9+SVx42iRDqOCPW5twjR//XvGph3Z09XZ612bXrPtxz3pFYys6uj5t3b24HIsc9HtLtXG+eD6+x4f4aD3SJNkVdH43OstpCZzegMPcOEo9UlqNXx1d6/ghfgV77zn9f3MvwYt6XzVvJr1zR+q/7P8cAKaZ6i5ZKvkLrwjlKGqdU8LaxWXadQydvzAdaKkexAQ6y9pqmgm8S4Q8tQGoLiiAIyB3XK8RDs7tKIPGm1FUSpdjkmZzq2t7Zri09tkU857psODGnsWrvWibzKMVFqUcZ8I08hjT7vctxrXrW6Ao06H8UsMdED7FKvzazTVGj2tAS7PsA+X5G3aI+AHsyno1mOyaMB28a9hhT4ih85yDDZU2cuZij2JjOhgHLcewBYlOkpw/OQdZLjLqLYZoqoOXrZ4LCjHA8xDQyJ29VVaBS/cMsxPndfEdzLqODfqZfjjhN6efV59bXDNKB3+whxhE1ioCHlUINlzusDzAZimgqfTkGdx6cHZXiILb4t1LF9RR3F3nIMNUAEU+BbI1AzBCI5Hgp0mZaSyNfRp6GYXo6R7yXSwi2+LZip1PEBxiDSsJkGmm9hDsgxabSe3UqbbCj79Nt6RXgo6vamdxiMkEJL+SnHvWt3jdvnrY0je5X33jLcFTB4FTzPwIan+GlkGUZudMvQxO0XMK7HJ9geUd0EC7ccmqrWB5jhtZjweJjPprC39cow8n3FhPozt8ofH13K8OsJphCKxtw2zrcc4xaG3pmd2p1pU7F5nhi3+2DEhIcocWXApH3nW4hhdWRw3WA0I9WB32oQ4x3G0MZa6iKUbfdH+GDGNfnUyFkd3dcBJZjUjild6gxBlIR/D6ccv+7IsJnWzkc75kfcIvx//b1+AbSkO6UO3xVVAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/bc2e3b6c9bb84ea6a17938e07e96dd315204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304498E', 'processamento'),
(89, '754e65b5-dcf6-45e6-b0e5-063dd2974cfd', 13, '8.00', 'deposito', '2023-11-08 06:28:17', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACsklEQVRIie2XQY6jMBBFC3nhHb6AJV/DO1+JXIDABeBK3nENS74A7LxA1HyTdGc0s+nyulGEoocU4ar/f1WIfq//L8M8aXoU+yhq0Wcf+JLjntQSUu/B1Fz48iByHPJczo7zRWnUNHpemvC6pcG7dXOTp6EVz9Eazlwy80ltmNRa7DPmKViw6XN4AUa9F58/n08bBLheOqFXk3cL5emv7v8cm1ppGoPDKeeieLODHBOlJ7sj2tGj3m6Nr1LJsInuIndsyUTF8XxEN8kx6Vry+iRm3hSzpRac1+jmDV8g5NRFNclxV2ptBm97TU+IMdhejglC5kSBuo137+avCoqwiRCgQr37+quwhWrAXdUg3is9Is+sLp0vOe7JDj7VXnnCk7XQ0ILzhZgJ7mDHMY3fThPhYEdC2p3QYFVxOBswBbVGVIh6fZoCJdIox11BZNrbWHnGXbtJjs0dt6NHVkFHvHJe5Ljb8NtUEwIfwol5l+O+uiH1GqOAnkVd/l1BIU7wJTJmCvmISLtzbMA1Jpk3x4yESIa/einBJsJPeb+DHMXm6BY57goYEsKBLZ7Iv00iwzXkbvlUN8BbL3PLsIm8BzVvdgznEKrDejkmjeRWCJiVwVJXzgZs7qHah/NRqpD5W5oijFMyfIk6KUySI6pdjqHBXcOd1pTzCUPo9+4jw4EGDVBbh7dbN9vLcRcxnF8JgUGUyKcGfMdDTYgd2Vlq2DTg7p6uWMEIwNMzNmFGSKDt+djyWhj7wiXHpqBXWE4xnPEcd27Ad/PVgYcBSsTbvaUpwtjCsKogIZaAsEHlXjEjwwiGCW6od7wcRmvqG3Cd8zzX8yVT6Mnv6SrGBfJBcqcOFie3tOEN9baQwBSwyjVh/G8gOBtf763Bfy0LElx3ZDRKn7DFpSGEz6L9c/x7/Xv9AWRPDwUBfVwZAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/0fc3ed58b1fc497bb2c2f88fa833d2ef5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63046A26', 'processamento'),
(90, '6e7b9b37-480b-4e85-a2ee-b014814ad58b', 13, '8.00', 'deposito', '2023-11-08 06:28:18', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACt0lEQVRIie2XQQ7jIAxFHbFgl1wAiWuw40rJBZL0AsmVsuMaSFyA7FigeD5tqkozK2c9qFLblwrZ/vibEv1f/66B+VV4L7ELdnO193zJcU9qZxpCOkOdgr0ciBz7hC3Jmd7VpdDseHuEV22w6xlo9HV8indOXCyzWn2kZ5jUptXlwZCiWn/JCzDqvbn0e/1kEOD39kSeV2eI7PYTX4CHoFCkLrREUfjZp/wEm+moo7avg1dP+LDKcVfsfmDvOhS1H+pkdclx7yA74jJLO8t1OOosx+SRZV0Cqq42SvwId4zt43LYSzMXWoLNTzDeTfvm0FX2onTJ8XDE2cfRm6lgbzykUY57B5VwduroORPU+1ZQgsmbLvAZeGeFar1CJDnukVxR2VUconac/ef4CLGmpryG09BSYFe34YlwB7lcHErTqtdxJPsAk64TxKd0HnWC2RT1AA8FEdk9wKsMBFz441UyTC72zRgsmrILZqY4y/FQ4E8pa3QDftK8vJdj0qgTvB+uiYeoE+cH2DFjmunmVRktzukB7riNEYy16TCoeva3liL80XxqxmBPGOcdoAy/u8FmXTsYHpobh1GOBzguKoQB4uATKvv7QMgwsmz1NiOZDq2p77hFGDMkw/A4rQTZI/nbwkSY/LuNPOpk0JqjV1mOuwBrsZuPU2iTZMPElmO0EUY9H/ZVTFcwT771FuHwyQ/dgLGWUPhVjt+rksYTXH/ixHfyIgyvOgNCa1oNuEO5T3MLMdNMLbQ9QH+73mdQhjHezwO6tak4HXHgOssxNce1jIL5igB7qiTHuIXtkAuaY+DDd11a5Riyr1rBtnETXI6E+0J+gHG9Jb4QYzEYTd8sxXhvdoWLNqNm3a28GDfTJQAME4hf+wf43UOjxl8QdHaLcZTjVu/AGd9cehW8vl4lwf/X3+sPnr0w148scY0AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/ab6320fa4e274eed8f80f769fe1e58f55204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304881F', 'processamento'),
(91, '1d4f729e-5526-480b-adc4-40f2aef30d30', 13, '40.00', 'deposito', '2023-11-08 06:28:29', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACtElEQVRIie2WTY6kMAyFjbLIDi6AlGtklyvBBfi5AFyJHdeIlAvALosonheoVrdmNuOsOypVFR9SIH72s4l+17+rY1453EeadFhj3zrOctyS2sjch9oPmg/OFkSOXVisyoRdadI0Wd6q8KbNetJ4msXSUItXxpVhVsyJ6jBO6XpyZnGFLT8O//8Y8d5s+P58yyDAWE3kO2JvhDws3+ILcMchaxpc4OhJ03z2gxy3um81jRFHVBfxfphLjrsTh/OT48spjiFbs8kx9p6PNEa+tOJT3dy3cgy59sMPVi1ardE3h8py3JJvOCFge/Tz6Qf3eUERfuLdT8RI58ua9eAK3FJqrUc6Z80LqcvWYeznEbAO1RBx1jTJMVJmcoZjmpmxMXyiArdWrczwqhaiQT08R47JpeYMFyH1mM9+cqkGW3Nphs10kC767uu9RRjBpmJRqCT4TRGQKrAudksa0cId3vkjmgwTYgPB1eJQB36icMkxuVKXeMJmS0vJsCs5bmJRCT0EftkcJlMa5Lg7mI8SdY7lz8xvDsow4e1sPyKF0ZQ0Cv2tSxluzvI7wPtR1kXAUIG7A9aCekq4M55PzCowrM75ySbSaXA0x1CDuUcOtjpcZVe4uKnApMMdS4/NjpqnwbZy3Jx9uYJuWt0HqlxtFRjHKmZpcnEIGvTbXWWYPpaJTEQGhf38dBIR7k7Oj0PMiBl5cq9DCDEX8SE7vscIB/3qDRKMMlp0QGUXq7NPT6jA2DsW19xLgfomviUlw11UuSRgidMziIUsx0+00ozZx74N7ZNVIowpbGdMHGqz/Rxx0ERyDMtEnMayN+MFN/JtBXZlTHgmU99F6P9Oc2K8lf4M2T0qg6hvq/BeHBf+jbkShleFSe1s9jPcrPaI1hSyHJd4R4PReCtjKdziy30k+Hf9vf4A3aIWu06cx1YAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/f8399fc6abea457b8ae7ab11de6e3cad5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304E4FA', 'processamento'),
(92, 'b67f5523-e547-4d73-9fd0-e8a58059b0a6', 13, '40.00', 'deposito', '2023-11-08 06:28:32', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACYElEQVRIieWWPY7kIBCFyyIggwsgcQ0yrtS+QNu+gH0lMq6BxAXGGYHl2kf3TO+G1KZjtaz2Z6nk+nmvIPrNl2Xemtqae8R6U2UuImhIrfoyoTxjPbJaSQhj3YNfiebGq1ZHE8ON/caOEFnX/4LOBL51WVgOkVFEWYoJF9E/aY5B1HMP9fP7FHkQdp6vpRVD15zL34aOQduY2TPuzR/s1yCDE5PRyIVmdgs7PIqgCf7svMzpmvJlUxFBm9zS1Jn8Hd1DuzmTCBIx57oSquq3Rk9dZDDSkvnMGAM3ZeQlgwYdbPVL1zViHupOJIMafaycHb7tyHwkIaR6pDI1DBJDEce7yMMQ7VuSs7nMfNnc/4igzYpTmXsf3YyhSjI4NXrAQMhvuTwIbZVBmzHJyKhP8tn4JiFMqCc9qdgGFRSjSQR7BzEPrR69IBgJGURMy5V75MsgcpJB0vAu2C9zQjGRlwx2CUd1ZrUlf+ZvHY1Dm7oK9uDm5Kbk91BEEFk8NCwU0MP8z7eHDMMpqS2rPeDRnz8xx6FtMC6FXkxYfwmzRCJIARJWt8ZbWHd9++c4nDADjHRecmB1Nhk0Abuyb0xOl4nM36Y6CuFg8P8V7t37QtPbP8ch1TOpPbolw73V/tLROJwYtg8OIeOr/E+aoxCL/mzYtnxHv0b+PrEMwxfH+oCK+8o27x4Nw761o8dJaY8QVN0/S38M4swA0/4KiOkeXcVC2M9LSKfrt2u5ieHGOGtByBcWt32LSwL3XgcsnQuL+/k57A1CUruGDGEgGIafbg7DXk9Sd3i5N3cPFMHfe/0Bt2DD2Loqb+EAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/b5410684266b495eb7e2faedfb305dd85204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304B16A', 'processamento'),
(93, '6b27aed5-96a7-4e52-994b-8eb18278dd4c', 13, '40.00', 'deposito', '2023-11-08 06:28:36', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACWUlEQVRIieWWPa7sIAyFHVHQJRtAYht0bCnZQH42kGyJjm0gsYGko0DxO8kdzW3xa280QugbyQL7+Biiv/wNzKsz2Iw+75SZkwj2pLZgr2Bmn4+oVhJC7IvavT11nbU6ihhusS4xdcVMMf8PDOr2zJxvL4ekVp1PnXpKQ/i9ZiNEPneXv79vkhvhG9buT8w6xfQtaCMcCt8adWQu9mC7OhnEt8TaRerYLGxIyyCSwKViPwT8VfufhDTD3tehmI75Knb1ECSJIJFdyYyeb5dv4t0nEey9IVdnV3tHC9eFSQQ7zifhPHl7konEJiFEKtKsKxEf0R6RRLAnPj1W6h0j7BFksItppHz61HEdounfhLRD0gjFN4oSzMT2dkJIadT2YnsVmImZSQg1c6yEavo0Q89BBpFMyAke0mtcCiuJILl8gOvHx87HQ4SQENNA/+hihB2iDHYBt+Cni4PFhlkGIeAp1oEzvx7+E7MdklaoxerNFEwX1P4pRzuEB5oR9oUu1pggJIIdBoeDASImEmv3V0vtsPdoJQslk4OQ1BVkEN13BT4gA2+Z1epkELY5+mfkbSFNnK+Ph7TDfDt1kuIAF7JbSCIIGaMKHGkJOBvGB4kgUb5iml16RgAG6Kc3WyF6p4tQoFkwtR81kgiig1Z6lHzDx9DLOongK+Zn/2o4fRysGb5TG9MzY2ge/HHvdog3wxHrFBLm10ifLhZA+AY/kbk8Z+PvI6oZrhrVVBcis/nGbIdP+xBWKMHMLskgofHtSXYrFk++q5AI4i6INjo+ioGchpBE8O9+/wADFZkSwO6uiAAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/606056e2a343483cb53ed0304f9a14845204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042A97', 'processamento'),
(94, 'abd21795-1a3c-47f2-bc37-89cd0fcd2811', 13, '40.00', 'deposito', '2023-11-08 06:28:37', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTElEQVRIieWWwa2sMAxFjbLwDhpAoo3s0hI0MDANQEvZpQ1LaYDZZYHwv2Hmjf4Sv+2LEBqORlFi+16b6C+vTnUhaZI+i24xq4oJtuTwuTPex8gOf7DBkJ+RKOhObktuK2a4qTs5n+xeKf8CrtxPUVUPCnaIG0Wak7SUt/jfNe9BxHP1+ft8g3wTYjX4EaRLeSf5JvQm7OKwBxq9atKF8WmDbaA54l7DSnmhrJ8o3YVNdE+kw+tL+zbo69rzPmzDgWASI5h4ZLZCryujjLPGvtHj4cUEm9Q/eHiqTKVvGcQGyQ87IZhEfFzEBjutKoCUVGkMMgYyQfK6hGFLw8rDVdJigk2RGRn0Pfl8kjzICNOw++FkGhn7u5VtsPU0paOKkfKrptUGm6hnwJH09KgEPd/SuA2rgkrVPhSxeKnhtcB6GC8T6jA5qHgrNthht+I2rSpWOIm3QtxIFW9GMK/bWWAD04Z+ayUQ/XjIfUgMCUNENCmSAjewwSbKBBO4HAzm+ZHhbUjkFNXLbsfOpR89mWCntfi7dLlH0OXa0wLRcdA6j1kdovpSG2zSMZdqfSdjw2EhG0THgXku/mi0h5dWMzFBprkgkrCCqqn27Yq3IVX1gch1sG+Q78LatkhmrY3j5KNlG2xh++noEoq5v1QsJnjx4YmEFsRE3o3vPqxdm/oHWjZ6X50fxAQxM6wBXOrZ9KNiA8S8hHGrdm2Bm2mxQ0UW6sSyeHr4X0CkEqV4XTCJDWLGiw6z4uoxbrmFyQQ/8xIRjGgN6CM2+HfXP45ukdFhpTIbAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/4b31d89ced704f80b381054c4679515e5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630474D3', 'processamento'),
(95, 'fd66154c-4c6a-4ab0-bb11-1358c408f710', 13, '40.00', 'deposito', '2023-11-08 06:28:39', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACXElEQVRIieWWMa7zIBCE13JBZ18AiWvQcSX7ArF9AftKdFwDiQvYHQXy/kP8XtKyf/usREo+RYRdZmYh+svPyLzlODOfLu2UmKMIDtRvmQ+OL5eO0K8khHUpfO6v3AMeWQw37k9bSMVBpf+BOW2BbxUXlkPsR+kux9Hr2X/LbITo527T5/VpciOsyyqsFgcqc/geaCMcM2oxR2bO5mCzWhkkS5OLk6KZ9cKalAyOIbHXI8fOly6UwUYRJJQTYpcZm+mYXo5k0KZT4XMt5/z0sxl2Xg9WD6qMud9CmZlEcHB8eUgiko0vSitJoSZKp4OK+Ah8eBkka3b0UEFIvLE5QhTBjvXgYCKcZhkDShPCnG7LuysLjMCGswySg4nKRIxWLFnPUkhQchkUM/erZZZCh+gwu4pjNiti5DFSM0RFuzNIzqNKOh0shAHrwEHVxWjmGGQQGcKe6+MNB/4ESyMcXJXThPj15gp6UiSCY4ABUVSZve682d79bIeoAloafZzeiuoeHzVDuG+FkDJN1lz5rWoRZFp8eanSZWypv4IQ+pretyJk1wAzviOoHdYEq6MHSsDw7S+WQZzmTbHDzPLlyRMRRPJMNUIRZSA/pymAlK4cJypLQHrX34hgh9uCQj/14ulF/f74qBli0N+wAEHDBu/bRRGs3GLN6uITJ/IMvmb4ntrQEvyrMcWeLbVD3BnwFV4eM9yEm4MQ4r7k+rtmF/b2k2AiiFvKEnCgZc76yRAR3B2mdg8tzUEv3z9qg6gowEpmCwbD6/w0pA2in7hnLv4ZW3r4vW41wr/7/AMGJ5Yb9iknLgAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/9433886e5af04b3a823d34f95a5ea9095204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304DBD1', 'processamento'),
(96, 'da5a70a2-c215-4ccd-ae7e-23929b9f6647', 13, '40.00', 'deposito', '2023-11-08 06:28:40', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACu0lEQVRIie2XQY7jIBBFy2LBDl8AiWuw40rOBWLnAvaV2HENJC4Q71hY1HzSyfRoZjPFulHLar1EBKp+/SoT/ax/18y8aXVWa3R54Bm4ybEhtQc+k8X/a+TmQeQ4lEcsjazxdNd097wP4Z3cI9Gi3eZpGcWdece1MF80hnFLbQkbh862Py7//xjx3n35/vtOgwBjTdWdEXurI5btO/kCPHPhmpfQn6RpTXYZwNFOiW6VN1JP4iO6pxxPEaEipP2WFELevNvleI5g160i/4qTOtkaOZ4Sn4zM2zmhGjJ+qsnxHPOiLQIGEa0JMfscUIJJQ3r2TpAeP717RB7AE9s1ZpyO+RVyP4JNzzmecAjEW236usvxlBCersEWcEBkngawCWoL/MAZWXG8bjEbOSbKFLrNLOQ42Xu4BvBc1YNhM/DLa655fh9QiHG02uVjqDy4NG1JjmEtvSIDvApn5IPfghBhozPydiJdyBvlO5XnAPblYKIAx+J+QNiVHJPGLfOtdvOGBBpdixyb1y2X/mSOtPJbmjLco4V0obJV0w5etcsxIt0IeyNmbvf4ShnAiPcUr5khYXheNppHMKqh5+oifS0+r7UM4LlvDIfIt4Rd0dbcAJ4qXBMaVC3AchQarJFjo2ES5YyQgDojn+gJcjx3yaCsXYNXRYwM76Yrw2gdAd0MEnDM5UjvBiPCqKcnvKobjH1ZzsfwJJjQiNBMEGaPmqB7+NS8BKOMnqFs2FJfps8s7zTIMCNacAjUAUw3T/XdBEQYromChn5fUxgyX5oc90/StWL28V8N7WPrEowp7Ejd83Zv14qLXiTHmAfhl2v3KvRXCDCbARzK0b0K2undYOWvaU6M9z5xIO156jP7bw3K8FFd872st4DUDeH+3uAOvlDZR8V7Q2ly3OPdZ1u8x2CA6jra5fhn/b1+Aag2I8+dIw/vAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/9609b45c0d9141afb4d1b66b6cb7d82f5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304C77E', 'processamento'),
(97, '9432af7e-205a-4eda-a2a2-2ebbb9d2082e', 13, '40.00', 'deposito', '2023-11-08 06:28:42', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACWklEQVRIieWWsc3kIBCFBxGQmQaQaIOMluwG7N0G7JbIaAPJDawzArRzD/v060Lm0t9aWd4vsGbG7z2G6DdflvkVnUr+EwvRyVxEcCL9Mm7JtMbzyPpFQojn6o9aZlMmo/Eghe/qbCoU9cec/wFfgffA3+jmKIfoKJbVFJvbTP+0OQYxzz2cP7+fIQ/Cuyr9jWWihqn+XIPQVvSi98iMqbJ/BRmk2JbaplgWdhs7xTJoq+dKsyGbmsptegYyDFVqU9DvzMz+yu5pahzarK9a1sDgr3jusYhgH2MqS/I74eXoSwYV944UN5X0DjHfQxqHts/QbbkR8ZH9kYoIqsoH00pdzG8GJBGkQFttc++l2exsLiIIHXKCf+FEt7D/BiE0Ze4+QmFtq/6qQkjMCfaBkvEPzzJIsVjWHyqIEbQzGZJBgnlvFQWECTJEBqEfKPnK3cXozj51DkMFC9RzN+jFc7cDiaDNmEnpdkjwEbgMTr2LHtpLwgmiv08qDsO7hTIH+Jcvpu0pSQB75n8MSnIbzBiKCHYX41UJYfIMlmTQMAIfGpjIkdFPfo5DHBlTbCgMIlxYXyyDU/BdS8jAOwk5yaBKzrL/GFoSX1n/VcgwhJLxKdERUkhlN9/zHIeKyxp7jGzZrcFfT0nDcDIncgPpzchAw19TRPAe6Qkf2cRH/6AyiFMbSu4uRoQa3GUQO8OBOcC/1c3dUEKILSWd335q48viLobvftZjYejHt320JIF45xsLQ8IJ2FYqMoiOuCjkNkNL/vO4Yxj2fcnQHDBVbGtu+lm3xuDvvf4Ad860rs2TT80AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/494b6871d9d44b72b3ce113124373e455204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304F0A0', 'processamento'),
(98, '3411bd7a-9927-4ddf-8543-6db0c774d615', 13, '40.00', 'deposito', '2023-11-08 06:28:43', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVElEQVRIieWWPY7kIBCFyyIgwxdA4hpkXKl9Af9cwFyJjGsgcYF25sBy7cPTM7shtem0OrC/lkpQ9d6rJvrNn5F59TUm9Q5lpspcRNCQikwLl4XVqtVKQhhq5GsA8W7XKp5iuGo7nZZC5Vz/A8bkjsx3KOBiiBslVCsj05T+uWYfRD93X3++P03uhK2sd0cqY7IT/x1oJxyzwnViZk5qO9UdhPCkJV8mlIntwnbIQsjuaKNEK3CkMuQiggNfC19TdjGXJbm3FsLEUOAdXEw4EoQhg0Zf44mJWEN21mp7WtoPB+YtoRtQgotctySD5DERtPEiakOJqYggpLhrazTmAj2rLcsghQtz/BrEgFM90+yHqHlkaNg+UnT3tzs64cBQMh/posDxpG8x9MKx+VcxlMzFBL4/RuiFpOFf1IGP6q6LecTQD/EcGRmI9FAtglgGqdWh5SzGt8p4FkF04/b1DnCx48Sf9O6G5O2SrQk0E29w9EeKvRC5vTUlNDIm/CSEGRZWa6CJ+YCkWQbhQWa4QL2JV2r1hfDJz1xevsyBXiSDRrs9tIU1JBiqrl4ICRsTCYBqLY74lMHxrLemKdcNr/4jhn74aJjf6Gdq/ZyyFEK9WD3qxvJFGjw27IcDl9njOtieGGhbYSJoNAJE7YRW4PnZ3RL4tBS5XUxrzpebBLBt7QAbVpSFoeJn8fVCBOD6aGk87av1tshgqBurN+4CKdK3tSUQx3hp/OOCqNr2lMItuZ2wN68p2ZmEsM1RHYxXFEQGkgiinxESQnzhSAn7VwZ/7+cPaMGnYW9zvqEAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/3e41ba795b17490c981ff16ab12c94a95204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63046364', 'processamento'),
(99, '9e85526f-6cb4-4bb2-90d2-3d231823a9ba', 13, '40.00', 'deposito', '2023-11-08 06:28:44', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACtElEQVRIie2XTY6lIBSFr2HADDdAwjaYsSXdgE83oFtixjZI3IDOGBhvH7S6KukeXcZFXkz8fBG4P4cj0e/4f/TMG9su5U/ME5EJfMuxIbWlPCbbs7pJ3R5EjsO+hn1jd2i+fZ48r21YuzWoNWTSeWjFS3Fz2JnVjCdtmNTq3eH32dtPwfV78wKMeK9+//n9pEGAMTreb+9mz3d4XyzGfeSZro4dF3XGbLS75dh46pKbiRGtO1jj1SzHeOtBGTOsPg9BLdEaOcalK3bS6njifWj8S4y7BFBXt0UEjM/0Zl6KCa/k4jiiBnlG3uS4j+rWeYzXGPOgsddraMDJflImlHC4PklhkkOOu4iM2SHUkHOp653k2Ggaox2L/UTkHBVkGzAFtWFR3o6sjoCp3vIRYp3RDVtRDM0r2Cgfcmz0zhFrzH2x0BhOl2nAWFTiR2DUHcD2WY4hTggz2pF5P4LbOA9ybCibgP1VtUPmb9y2YOiTOyDAngawr0KWYfKQFj6hl5A6FDLlqQFrZq7R4vLUMr99KcPY5ViuSVvyVz2LvKUG7HkpNWl9cWfBGt0qx0ToAygEDVW8+eQWjHaEbI8RJ4CCfHbpr3BIsPFXV4OE5nacIHtf3SDCHcMsIE44SfYq5EWtDThBEqpzAUCclm/plWBD6ADE20IyoRAjf+1ShKl2wyuWTzcEN8txF/dqoBDvmj1++luMe/i4+JRPQj/VGRow9HspFgJMWq26HiZHA2YaNI41WDlIJjKfSY6RKy4XPAK06iy557e5Zbg+SfvJUIgLB8JNLRgubEloAhi6a0xu9e8uZfjxyNdEcGGEBl1pb8HVa1THAa0a/FOPTXhhRAt5y3BAMA6mCc8ai4JhQbr4UXE5rh65HrCQPXjtJV4kx/ULJuKaOzjTgg+ILwMlwr/j3/EHQMVmHXTPwgAAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/683103521b4546f7957fc61a1af685e55204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63040F26', 'processamento'),
(100, 'da45917e-e832-4cb3-8a64-c2b1d95ff427', 13, '40.00', 'deposito', '2023-11-08 06:28:46', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACp0lEQVRIie2WPa7rIBCFx6Kggw1Y8jbo2JKzAf9swNkSHdtAYgN2R4E870ySqzy9V0F9URRFnyWc+TtniH7P/8cy71wXosWlIYzG892ODalnma4wklN7mG4H0o593mM+aTSUFo038NGFcfceafbT5mjuxXtIs5u4ZOZKfZjU4ZCtafMIlLdv8A0Y+T5c/n6+ZWjAOEOgmSTEhdJfxW/AljMXpBkhqoOY4zj3YBq4PgLuzjur2/PWjocyIcGzkycnIVB8N2PSwtZSbcgcFfNoOjBNp0flyUa1FwyEOjqwr4uvkjCmNSZ0Yge2rE6X1oBM8+mmPXAHHpgeJaGdb6/Qy6/ZasZGqyvIcEMbNocfohateIj04GR0XbTiMA4xdWCj8+aYQ7WxzpSMtHMHxsX5pow8SRf7ajow+rfwHkfS1ZZkA/VgD5VC+4zynPOtp60d28Io16ahVZhIfnI+OnBElLhbbV40T8Jtx+TkMpFtTzbw/VHNRkzJFswEFAIJQ9nf7dOG3yYG7eeCJI0r17kdQ6ss14Gn0ykkW2ytA8NAIL3Qfoy1S4Z+ytCGX0IlwkmPkIbSgzGXhyhE3nydcbfnDgzxHooUHzqxFrW5atqx0XxxviCWOj+hWPzzyhZs46uDPK5XcPvHR3rbMKTuinxBLOEGsnRwBx4iwlInVbgB45/GcenARSLbI3pnpJdWmQ7MdQ0vOypIOSxu7MEwVY1FbLp1xcWYhh7M4q7QKvgSS+Xz3Y5tEe23RTQGmxTze7jb8FvzNg0vqquYfA/GFvaMIniHU1fBRlZNO0bZMUxYXsSUZIdK1IFlvX1tpizKt370uxkfHskGS0NElKPpws+AZIvJwwf270i1YOzIkDoJlCA2qNvdjiXfaBzZF5ByiN/PAtWCf8+/5w84eklbXjWM1wAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/0fe43fe362074a3d8ec5e7987f228b5d5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630498EA', 'processamento'),
(101, 'ec0a61c2-e6a9-443a-be76-360997d078c9', 13, '40.00', 'deposito', '2023-11-08 06:28:47', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVklEQVRIieWWva3rMAyFabhQJy8gwGuo00rKAv5ZwF5JndYQoAXsToVgvqMk7+KW4mufEQTCF0MIycNDEv3Pz8S8UfLWeBo5ZOYkgprGw5F3deCq1YgXZNDlnfNZkqfMccRBCg9LWqU15j3mf4A7Mxd+HA0sh4hIjY9KUzFT+BVmH0Q+D5t/Pj9J7oTtUXyHNIV8x18V7YMT50cZ3MyRN2VeUQYHTq/Ie0jk3rWwMkgqHy0J885GO75IBoeIa82L54Pq0jQpg6jm5VCRpFXemiSEkMxU5rvw5ZDS5FUSwaGgFrQ0IfEZkv5E1A2n0oJaw8whrSEfLongEPmM+S4Iaj5QzSCD2lXt8JeSdxnXaiuDZOezkFf55Loo89ViNxwKzAc3z2fID0rzzWcvnAJaOG8OUh5PfAUSQbiHprpyam5Q0sQyCN84XH4onzG9CjxEBqEfregVWxc/hJuTCA6BH1t9iwhqRHQyCC0hmZeFd+GFfFmSQcYBUwOdWPX7JxFEHy3OeIcDalG/XdwNJ5RSjYflC3IKRgqRQG/hfmZRzYovJ4Pw3jb44GAFDpYWK4TUpoaHCxFjBn2U3A+HgpFRvaoTmyHUb2t3Q0LrWXQQ8plgCJ9yCCA0jN5xdUVEdt6sDGJ2YGGgJmBMXt6cDMK0m3U3YmChj5LBxi3f8W3+MPAog21q07i55mArf6aYAGJn2NAIJbUuUH9NtR/itlAX9G9MQ3MzkkPMXDg/Nh84iRwiGxZrA/qRNyuEbV/CpjE/TUvjHWUQ+Tz5vWk43sv82Rn64f/7/AFFNoUddgTkdwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/d85c308af2ae4edca3bb46e666ded4585204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041B76', 'processamento');
INSERT INTO `transacoes` (`id`, `transacao_id`, `usuario`, `valor`, `tipo`, `data_hora`, `qrcode`, `code`, `status`) VALUES
(102, '5bbea2bd-9e04-470e-8a2a-335bf99c84d1', 13, '40.00', 'deposito', '2023-11-08 06:28:48', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACtUlEQVRIie2WTY7jIBCFy2LBzr6AJa7Bjis5F/DPBewrseMaSFzA2bFAVD+cZHo0s+nyulEUOV8kDFX1XhXR7/p/Dcy7VUeIj0wzUe+4ynFPanfUhTL4VElVCyLHLh1eceaTTLVxtrzfxGZ37Q2k43QXb5lXl5jT6iLdw6QOpsmm1ZYl4/vP5QX4inf6/vydhh9jrM4jXWa1XN1rYzEePK/tZsxZPX3stal3cHyEtHHaQqpu7K1a5bh3LVRLiEOOk1ObH3s5Jo2bjROhBlu8T21OOe7JcDCrKzhatfwMn8xLMFlIIXG+ttQIW7qBUT6nhSjLw9OkUQVlkuPOlwm65Ei6LEG9XyLEvTObxzFjb5F8HLb5hBSTixNqhxN75BwVNN7ACPMW+HRIlzpxUv8uHxkmmgjxRtXEJeOifMoxOX5mevjS5QKP4VB6Oe5QuRrlEweGGsDSegMHRpB2ZxhV7MzBcZJjKGnguCBCLiLzlWIvx6ji3aJ+1W4RM+T/VchSjEezBezNFYVMcZZjar/gELhlJFcWfutShOFVk2symqm0XmRHkuPOw+2aQwzePLOp2uxyPARaPGqQHtws58m3sEe2UYOpQg0U0asnOe5ynHVziMv50GlfahBij0foyRyoQYKLq12Oezsi3uRGAMRp+ziyEKvq+LTjrOETCNjbTEV4YOhSHc0sLzU4s97A3mwc4RCLHxfPl77lmAsRt3bkmizOj1xFuPN4RIM1q1Y7Bij9SZoIo3YYR2tRX1rmI8kxcoW94RDoA8/LcmY5vvIWMdCtLf/Nq25gTGFbbqpCX30EA9865bjNgxl9DJ53/Ump3sAYb1+TKWYfC41+T70ijHS1nqYhUAgi9rdw664Wbod08eXictxuyfgH4zYzRrlCcox4H2HsfOwwmeZ08KuTyPDv+nd9AeysVUb9q/mZAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/87ec5950ff734e04acf60c48e385049d5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304D8C0', 'processamento'),
(103, '5bb9df03-8d5d-4c17-b1f3-814d5b3eec5a', 13, '40.00', 'deposito', '2023-11-08 06:28:49', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACwElEQVRIie2Wva2sMBCFBzlwZjeA5DacuSW2ARYagJacuQ1LNACZA4t5xyz3rfReNMTXIlh9Xhk8P+cM0e/6f1nmiRSXbfJu8r0JfMqxIbV4twTeNfbd6UHkOGwLqTWqM9R3odHz8ghPQU2ebMpDqMNTvEaewsasppDpGcYtieeCHVyxvcTIMeK9+O37fNMgwO14nd/R4RvXUs03+QJsk9p9ewNz2znDtssxhfzmOmrm5I5Y3wn5F2MT1BH5DDRQj8yb+2wZtjF3Ra3JzSV3qXaxjg9w2lZGpCsh2LTxI4xgW+5J5zE4LvRO+FIxprDNTF3Mg1dHcidtpxzbUomyLdsc++46eHiC3e55xw7j1DoEGuWYPCHtR6qv1FtUor9vKcKXVvVdRNSROj7405dSnLsIwasD5XepNvEux8YjV3xqx7ElcCC3yDEFyG2PK3alvgr+0o9ybIjxc0D1MULV2svIMQoHad81tDMPWp30kRkhLi3Sp4ZK4aLZtJ4QY0MZFgQzmWAmTe1uhRBhi2B79HfT78UzevQJRulxNlpx7A36KbgnGG6m8XUVVXwUXstdgzKc+qE5EhIOe4TNZpJjBHhuJq/QE+/YWtzIMWk8FSpuC4oRzaF2Oe4Kz9HN8AFCi6OIfspHgm2iDg6vMxpiJNxYPcG8wdM6qHiBzyPYapJjHAxhGOGNpe+4fzURFWP05Zrgh9vpK3qLy8/EIcFEYASfP/AkjC13GkS4Q7CbM2N4ucLGeXyAGTrXD9rtbVKAnH+6QYYtwnxZKxQL1mT5Nl0RvqKlOLVpDha90N/xR4CvKUydbcLFRRH1WyFEGAfPjOprboaWuo6XY4y3mBcKHKk3mn5uKcZrydBOTMdHzC++BxEpxqS/aDUnx0yv9J2/BRgzsr46SdML6qvvs0W4xZvUHvASDKdor22R49/17/oDn6JOJnGmf2UAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/4c0a7ba5330a407d9d05f851f20c16425204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304178C', 'processamento'),
(104, 'INTERNO 08112023063913', 13, NULL, 'deposito', '2023-11-08 06:39:13', NULL, NULL, 'pago'),
(105, '263707de-ba9c-47ff-884c-21dcd0530909', 13, '5.00', 'deposito', '2023-11-08 06:39:25', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuklEQVRIie2XT87jIAzFjViwSy4QiWuw40rpBfLnAsmV2HENJC6Q7ligeB5tP3U0sxmzHlRF1S8VCfbzs0v0f/29Rua9pEfgw+jD1MHzLccD6YPS4PRm9F74diBy7PMeq+J8U1oMLY6PLnz4NDt7eLs5mnvxHqeRM5fMXKkPt1PWxeXNT2Db74f/Z4x4Hy5/P980CDCWijQY7IpXy9s3+QKM890uLd7ilHvRHKdZjsnQg+2z1IUQb3uGd6hkGHtfhp+Rz6A51EewmxwPNI1B31RXJC1q5ok6sEOA7R7xpjhlUkFvcqzKNDtocELC15hmPw1yjGK6TAvY7Plydv+ESoYVV1XyM0xD2xUP0R14ZHuWNCN1gXfWt8m3HA8el7SWVge4cxaa5RjVwEzQ4JMth7R8S0qAVaizr4+XBpuKfe3A5PLl4S4IeR1LGgMtcqwYR6yQM4pyR3mZt5CFuDC3/eBVqEg+2/0OnEamMfLmeaNpIb7keIwZmR/QRjytRd/uHSoZVgHhgQb15nFFedWlA0d85TMi/3AIvOxnbxEmk9aYr5eRI9gc7CHHKlhsDIdYjD1cE8Itx0TIVetpqINHgEN8zFSGXebQetFioOjmf0MH9pOKiDReEyypUjuwivbCfq2qmpD5R4NCDO3UFd6PocNZSOCSY4JTQoN+Ggv6wDSbT3cVYRWacaKNHHAIzmf82LoID9QsCg6B7eF85FIHHguEg7EF5ZgeBQ2/dmBocA8WrR5eNThaQxdmtDILd3m2KseAqW85HpsrwGPQnJFAXLkD06s3YmbBnat5zEeaIowgnc04MVTiJn7ythkZhjFsBN1BgM1p2rzcgdt4C4fA+RISuPJPdxXis8mn+YSK8G979GHmDQpCVXmMcl2Y9FlqEzJhzsVD8i3Hrxm5/XHB1HObputBjv+vP9cvQlo9+rLQTdIAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/3fd3f00aa91d466ca2f379d77fb0e7fe5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304A0C8', 'processamento'),
(106, '53a98344-0cda-4271-9318-6cf5e75fad00', 13, '5.00', 'deposito', '2023-11-08 06:39:26', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVElEQVRIieWWPa6sMAyFjVKkgw1EyjbSZUuwAQY2AFtKl21Eygago4jG74T5a+PXXjRCmQ8pxMfHNkR/+RqYFzIj5cOnmTJzEsGe1Mqlu+zT5z2qhYSwrsusafR50Wq/xBBH6rXprtLr/D9Qm+FiDmZgOSS1eDP7NOBg9AuzEULPzeXv7ytyI7xPZbqYeipT/CW0ESKWJ6nNMV92Z7s4IYzmcfHJaWLzYENeCNkeGhmhKZQuliEkIUxTzIfjQ8MSZogkgxf8wztUhZ0ckpJEsGMzBbtQ6b2CHyaWwaqnK1PgxcFR+flNRxuEgDPRqLHiPdj9FqQddkHByRPM4HhlQJJBpt4B0oMLMtv7JIMXrwFmNl1Vwz5JBntKvYcP+YyFCNrKIDl+anVC1ZpNaCuEqN/AKwTx6VGriUSwth3OZ0D3yGv49JBm2DF2swfVKkZ0Hyu2wttLeYMmwXKAMkIYy+jteakz2DOaVxtph8jFCRuDBzQidbybfzPUsBCmjz0ceohdX3s2QyK7OcydMmpsiHUSwV7XO/oP6Tuu94ta4YAMBlXN4OyGOXLv2Q6RzdmhGOEEtNB8XiSDEX/N7NQaSl+fJhEcLowtKEmPgFLid0TNkCgvaH1sOaJ7f0VuhYiIMPcxdmvnp8cnzEaIOjoc1vz0WONREsGbm7ua8DS9Olg7rFO7+rCW0hrzRjKIb4YNXuIEYcdPFQtgVQN5RP1SvbMYLoTD4IOhTLWBkxTuCAT3AG7m38deGyQFuDh7Vhvzy8ntEHruMWGCHB7VZHqXRPDvXv8A5/DH/iC6d4UAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/7b18282f65a74c36be89bfb44297564e5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63049A9A', 'processamento'),
(107, '97244c51-cf81-4393-8377-8660d7e4e7d7', 13, '5.00', 'deposito', '2023-11-08 06:39:30', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVElEQVRIieWWva3sIBCFxyIgww1Yog0yWrIb8E8D65ac0QYSDdgZAfK8g/326obMSx9abfCtxM7fOQPR/3x65o3VqWkkmikxRxE0pHZOp8dPpQtqJSH0aSWauEyH3YLasxh+PI0+zm6YQvoHuIW4ZL4d0pFDZJTtrWN/qOv4lWYbRD0/Lv18forcCOvR9mLcma7jS5phzwm5bJk58KpRExkkP5COc61M7UV3yGCf0US7Eu88GM8nCeFBS0gXWw4WGU2HFDJqaBCVI+OG0ctgF8rEcWIIAZNQxqeb7ZBcWjXNvnTZXjmatx/NsD+KoWHJw3LE5cA8RBkMdg/DlAej7QfdfAvSDMlT9wwwFMFHNM+dEohGoA6wgjLrgRzJoB7QiIntdtgrxFlHEYSObiqk+fZlCtAyiWCHLHxZQp2HJcc+y6BxaQ+8wXwQUsY8yCDurEqkqmI4yVvPdmiQCwjXczrm948EMHZoBKlPvZ9GJ4NEdstxdHChYhzNUqjLhDqw2oPaMMxZBvusbqdWVxAMFPGG1A6RkfGwEcW57q9TCj0/HbScVZXz245m2CML2AgCI96y/RpgK6zqC7Tk0vHQBZpCFMHK4VoIhmDd5a8JCCC8N84ejRh+tbgVdhxHnS7sHcLqie/qaYdGJ1Ty46BihZ9uL4NPTeDeMN7YBagpimDd2sQnHh6E1Y9vEkG8GVaPQYJ+MQxfFbfD+uDB2sLWRjsgZZJCKOiq5p82rmtUCnHn497wYV6dEMI98FrTWEB8akhJBlHPPdfnIhQ0u686muH/e/4A5wCMRly3GCgAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/d0cb33bf50c34e0086601c71d3740fa35204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63043F32', 'processamento'),
(108, '2d2f5e58-19de-4db2-acae-de0204c92911', 13, '6.00', 'deposito', '2023-11-08 06:39:40', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACSElEQVRIieWWva2sMBCFBxE4ww0guQ1nboltYIEGoCVnbsOSG1gyBxbzzsDV1YbMS6+1WrGfVsZnfs6Y6C8vy7x53qi9uOdYmLMKDtSDzBXPrUv9QkoYyubL4nmPmUy/Vz0MjLUEt6byH3CNo43Mtaysh6IIMcmDcRt9y3wEr3iW389XkB9BWWGcTLZx7Pgro88gtKyx35lPz5zodb/oOUw0+UamzbH/eD6UEBncDL2llspG7rzP9Bz6TJ5mHueYochWHewiH6lf6zincbjyooJ0HeZDvWjx/DE6aCHEYCvCkV4pz6yDXW2T6Y/q1uiY+zWSChJBDh+V9+pEWtLCTAEZaTaWhfg0SuhxHlRUhoecvg2kgx0I4pDGLrVX/SnF5xApOIM74lXG+FbCLqGDUELo4oKE2qqDYkEGpQj3aBOeSQdlN9/eJF38Dtle6XgORZFnJPQkJPRL5jM4BJorfwg/0Yz9YpTQwDbRRLARKYn5KkUFDOgFwDZRnmBlXgdRh0dsFPIrFrHfkHUQ5Rf6T3CMPEKO10EZdsZxvI7kCY2sgrKnKbCOSf6AAUQq2NXC0Z0iZHwjKfeLHkNb0T6j5WY5v00jo4NEhev49m6tRSYgkQp2DNNuRE4O42FiOohosHjgPbaYa1ZBugc3pnYQUfAiFcTUXsjtSeQs/ufO8Bxiw12uHNLLKKS7ixVQfEPuPKfPks2qhis71JKt5fTuvLKpgouMHgSznJAWSQcRzNDEveVnuWfHc4h47hGXTLjHOICErIJ/d/0DMgm/fAXABmEAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/8914083b1f594650897efab3d4f1bf2f5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630416BD', 'processamento'),
(109, '95be586a-48b5-4490-8c6c-409a2ee57bd2', 13, '7.00', 'deposito', '2023-11-08 06:39:45', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACSklEQVRIieWWsY20MBCFBzlwZhpAchvO3BI0wEID0JIzt2HJDUDmwGLumd3//guZSw+tEPoCy/PmvZkl+stPz7z4fAYafRopMycRNKR2VmsYXqw2rRYSQp8318jieI1qL2KIA7tSyalL51/AzaU+MnNGaWKIigpflIxPM/0o8xmEnpvL379vkR/CxmOaQurDMPGPhj6DfVRnyTsqCmot6vJCiD5GPnyaGE0ZuiiDpNXmeXFqI1wpkU4i2BW0MnO0HGFIewghkT2IZm33MJDLK8ugocFQnT2u1NTopVCrPVTyOJlhpC6QCKKiifMFTQAjLpZkMNiz2MXXvtgzqjXKYB/RwbwzdRH3sTuTCBrNh6vGD12zor1cEkEc9So0N0ntWpqrRZCIL6cYTi7qcPgmGfTv/Cb0FB/mTrEAUt4IOuCdD5f3TxKfw9QXhoFNkyKZj5OfQswQDnnReNu7LhJBdAFzADqMxCvTJIUFQzvDgV1pA2EmGSQaOkaC1NlmiD1ZBnHm5ZuFRk+j+2fvx9Dolv0zpKlUjK+RZLC/XbR5MpjeHvtLCoee89pOa5H89OgxbFMr1le8d5bP19uKAojdBx3oFfiMaA3JIAysK9bfpe8Uf/z5FHacRlfRU9TFaCvJoNGYfigETh6miM7K4J2FdhNzZ8p4EkHkaI91CljZrbo9yCCkWBlKIssDjNRLoUeE2/CHmWfU9V49ErhzmmKFsK/CmxfDhaAnlk6d4jA7IcT/pYAuIP6wBNY3iWDTsyCDdwQ0/xf5Gfy7zxcuHqsYs1UNeAAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/215acc616f8e452c964f05b01fd87d675204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63049950', 'processamento'),
(110, '034a2fd3-3773-445a-b8ec-a90408c17b81', 13, '8.00', 'deposito', '2023-11-08 06:39:51', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuElEQVRIie2Wu62lMBCGBzlwhhtAchtkbgka4NEAtOTMbVhyA5zMgcXsb+Deu9pNdojXOiL4DsLz/GeI/p+/j2HeerX1vAZefWkdn3LcklpzR709+25yeILIsUu759OpNaidy9Tz9gpvGtbR4OzS0/AW7z6tPnHuhh6WvsKkFvjX42k/Hs9v5wX4inf6+f2ehn/GOI1XMBA3GNj4k3wBNowwwzNmpsnR7G8vZbh1+CfWIDkEu4zZni8wIsTpExD1Mgc+EDk5bnwZ+mhCHFxEFSPkpxy3Th0OBlLDqOjYvMKk4xzsqe2eLaxbcYkctz2qL5KLxncNKpHT8gLrMnq16XRSNDVmT2kKMby0j12axlxIjk0oM9LFccxoLILHywtcjWL2vPsOr0wukhwj3kj7WKNFA/EeaJLjVqedFeTB1BLuRraLHJsqmbUbWkorp1OrF7gJfOp0aORccehmRkPIMUck38CuHt1g0eWnHJsAiUI/QbHI+DhBruQY3zbh1irFDF/vbpDhtmc4NxBCTojZzPe3ZbhhzJAOErWRQnd+/J00IfYM0zBXh/pKuhRUjOFWi06qszEtrtCTeSGuQ6xMhEIul+Y9zS3C8NLcWhUKLhnwk2Pj0ydT7W+PZaHK1SLHkBaq472O2cNduiXHiPfK+Cri1GGSoEcPOYbikrYbVobqpV3z064yzApatYZu0h3VqF9WC3FLHdQX3fDhmnzsUIMcNx7WQaXsJ1v2ZQyRXmCmOfPR252rr2sukxybGptugFZlzJPO8DNJRPiqZbWHuvuQw3x+ykeEsYVhoE11TcZsxCvPlSJc90EHuUX5QMXjRF9pEGFU35U3zrCufHkpxptDhOKMnSWggtT2CtcSptrWJhd4ObzAhKUy1iXdVak49D2OZBjx3rF5YZJoKDfM/F60Bfj/+fP8AnOKGGvuGhw0AAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/00ee7cd2a75e4ebca2be2e11009ba10d5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304EE44', 'processamento'),
(111, '7ccee74f-7a73-48a8-b6a4-151367c0a93c', 13, '60.00', 'deposito', '2023-11-08 06:39:55', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVklEQVRIieWWsa30IBCEFxGQmQaQ3AYZLdkNnO8awC2R0QaSG7AzAnT7D77Teyn7p886nawvWJnZmV2I/vJjmZ+Go+EzlIkO5iKCE+mn0Zz5HY7T6CcJYTiiPy7WFx+c9V7FEDWvdLx4fpvjfyAdV2JO+gxySPqV2spl8o7o95iDEHriRD+/H5EHYS/raSH0oqn829BBaCtDhxcz13nn+ellUCW3GKcY3+Y2dmSEkHX0/PZkEz6pTb6IIIWysT5p3lPpBe+a49DmGU2MgdHT6NHQIoKK3cO3h3E2M2e0lUTQVh2Nm4J+BkiKpsigSkUldARG4j3jXDI4+R6fGKAkIwt7LiJoc1sICSorN5txLhkkj7O4NTmb3MozVxlUFX/Npvkk+JlWKczdwxDzjc+DMl4GiQpM+MD0MzAD/kkIYaT2QIThyfqdIeNwQs08v1JP8f1OIqiQYrgXRkoz99MVGUzQBI3AHJuvpK9PzWEIC50GRsIEdqr3tIigrWVDzerQyiXQmkkEURMaLgZ7B6rO0RcRVNwm08hjBUBPfBgJYZ8/0dPGsMTxnZ/DEF5a2dmK7YMXrL8ighY2pj4DsYAwPG0iEbxD1DZGWxkdWbMUHhFDIMBITSGMvoig4rL1ahhEKKuvSiKI9KERC2EGNoX99bmxDMOuSXYqQwrEsExBBu+tDQcixQfuPNHIIPwTQ/e/7WYu33SMQ9xSEiRFfrur+V49IvjK2PVl7WurfQeLBEaPLKByW+GK3yvcGKS++NZ7epPhT47G4a1nvzbslbbUvjNkGP7d5x/CZ6YObVsWjAAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/62fbb8ea7609414f8bd6a12342a192145204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630463A1', 'processamento'),
(112, '0425bcaf-59da-4940-bede-9ca7bd49a56d', 13, '60.00', 'deposito', '2023-11-08 06:40:27', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACSElEQVRIieWWva2sMBCFBzlwBg1Yog1nboltgJ8GoCUyt2HJDUDmwGLeGXbvvhcyL71otYIvsObvnDHRb3465mWnMbiBaKTMnFSwJbP6/gip4TpFM5MShjwHepX+3PNhzVbUcA3mCHXivMX8HxBhdIWvYOagh2Q2lkS6SNP+N82HEPVcff7+vkV+COXx9Iqp2/MS/+noM9hxvoJrA3Pk2bpX1MGGwfvZ0xCkF82uhMXMnlfLC8vJh9fBNlSyaYr9Rcx7bYoOkmWJxyayedvRUx3soAIyOG2Q8PgiHSTbYwBGCyE4CnzZpIJdQT3r6JEO8sI8kAo2EbNkDuta26/SzaSCrU3IZfDwgYxju10L81Lq4A0jMOvo3c3HEMMjQvb9SugFfCCpoMzw7gYLUr/tUECfWvGQ1FrMJNxAB5uCEXKth3u4Du+3ip9DIjnzZFHxhXevg11keUdezIf8kwpSSBP3C5tVatu/ZfgcQsVnwTDXF9f23iAqSD4NAQYCI00T1OR1UGpY3BiwfXgpTg2j1HMpsEEY+MeCnkPMwEFiYkus8P8xJBWk4MjiE1sDIfHxLshj2DCfMZ9cO3bNnj7SfgxvKaVRVhisO38cTAHzwhU64oJ5xvrWwYZl527MYoNYu1EH4SFc6AXftvdUBx2ke/fNomLsTahJB++tjZBw8agDvIh0EHcGufAw9Gtmi7lKOnjfUgZsvYh2fFSsgwwdVclITtbD4ibxLocFtBQlvO9LJ8M9EE8+gg5KPamOd1u38qPNx/D3Pn8Am+iIdCILpU0AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/6cfb7a907282428389da3c92c78f6fbe5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304F55C', 'processamento'),
(113, 'INTERNO 08112023064331', 13, NULL, 'deposito', '2023-11-08 06:43:31', NULL, NULL, 'pago'),
(114, '99560629-cf31-4151-9ea1-ef8bbec18d82', 13, '40.00', 'deposito', '2023-11-08 06:53:55', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACV0lEQVRIieWWMY7EIAxFHVHQJRdA4hp0XGnmAkm4QHIlOq6BxAUyHUUU72cyu9oSb7tRNMWLxGD7+9tE//mZmPdIU+SDaImFOYvgSGrVeamFYwlJrSSEvuycl6i45mdSexXDzWfyZqlm1OUvUNvV8eXPh5dDRORP0nkkesZfYfZB5HNz5ef9SXInbI9TIeWJz1n/qmgfnFjtjHD4IvPkc6pZBFsmo31FZOZTCxEcNb/SOST1iipUM8QsgkTnw5khQU7qcigoieAU7dZq2hIyxbywDOIOo2MUFKp44WLvcghgVRzxCd2EAw15IWREZDniRTtA1SSCU1KQUEjm4drJq8siOLBZ+HyyDZVGZx5eBkeyIfHhS2hSNORIBFsJaglRXcQbIZ9CyMyRL3SxQzKZkwyimtADo49iuRwkkUVw4rInelDZ40nwE5JBcnmEkOAhmtCDH3l3w6kilnJpBIas8sdYuiFOgx5WD2I3/W2//dDZo3Vfnl1Ly30lAdT3xFFb85BykBD6poFWDra42K3kfjjUc2mDz76SgYlt7zP74ejUoc8ZJ2uYMM33H3VDcnAPOBjyCTMxQyURhHPu6ZxdORwfzoZbn/2w0uzv7ssDJpcjESSC7zXnx8QPGP0f/++FA2fc6mqNgMzcBwogBv2qYWLQcMvq5WXw3Ym8oo/g/7X9imAjRO9twR76vX5IIHaG0GYWStkWp9EJoS8rYfIyV8gJs5ukcHMGjRwijAg7jxzCumGDbGZvbzEIIKk9wv/LBT1XVDaLYNuXtL3awmYPUp/B1w3/7/MFnE58U9820YwAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/6fb2bab886dc4d289d731b558c011d705204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630427AF', 'processamento'),
(115, '1acd085a-d531-453e-90db-6dd35e318248', 13, '60.00', 'deposito', '2023-11-08 06:54:00', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACT0lEQVRIieWWva3sIBCFj0VAZjdgiTbIaMluYG03sG6JjDaQaGA3I7A87+C7Wt3Q89JrIYS+lWaZvzMAf/kbRNYgJ8or5CUWkayCPczTFokiYlZrVihhKE+Lybut5iGZvarhao+5ypYwp/IfcI/y5o3iOIge0qOAB/JQMeGXm/cg4/n05bu+Qb4Jm1k7zjEPcZxr/ib0JmQMXzY/Aj0yWzVn0MFOjjnJO+VFRi5YJayyC29VToyz5O7y6D4E8izjBLdakWq2pISB9zkAx6T03rxFB3uPLjGnPOQuqeFQDTvoETCFcQp5TlDBrh4DY5LcCu5cWQV73zwaWAzVvZPZog4C4xKZUFZF7qLbE1SQh2fTgWNhKYo7r0a4D4c0Di2JNEsFMJvoICCnPbpIETu6xB0q2NvcVChQf9wec//T2rfhkKhgsqLsUq4dKohAO5c1n0H70EF6Ia0H2cVOeL504D6kkUVYUTzIVpkdqGCXmm6zIMmZmqXqYI+DLTCzDqWc4aMh9+Eg5oWyBpaxO71ZQ1ZBejS3QsIszbXp80d3IXxTHhYD2MiWxnVwYPwtPr3f0qGDwFWHsbz5KwMCHeyo2DjmyDxSDcYl6SBtbnV8wJ22JeVHgu7Drgm+7NWxHc7gXtBBTo3VU0bk9Jkz9LQ62Lg3VB5WMid+6yYNbFPbspgZVcoX3w9QQb4ZNpEX71M5v6gkWQfbgydPvnn0AJsZWvj0bg1NOZcW1ayFW5sdsrcRcDy8EsLsYiSNCHwsFUlQQcaT8+4dGczxyogO/t3vH+YemyWXJg8uAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/f25c11d79d474850a847e1e4752346935204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63046CE2', 'processamento'),
(116, 'f0580ca8-dcff-42a1-8903-ff3852487a45', 13, '60.00', 'deposito', '2023-11-08 06:54:01', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACwUlEQVRIie2XQY7jIBBFy2LhHb4AEtdgx5WcC9jOBewrseMaSFzA3rFArvmkE3VrZjPFulEURc8Spqqo/ytEv+vfNTE/A2mvtpHWUrXnW441qSPa29mL6wzmQOTY5yPmZ8xc6lpocbx34WfIm8NJ0+zr3IuPwJvPzHnzifowqd0ZIt4cYlXbd/ACjHzvLn9/vssgwK8nKJfdXJqK3X8W/7/xFNVJZirMhXdfF59POSaXHqyuaNZAQzRDtB1YO749n16dTp3IfVFbBybzCPkKaWDsXddQtRyTt1dsmX5GtVPmPjymKVR8z85yobVlTownzhfbZ8HtQ8LsTXXpwAVf9nVAo/Gk0CzHekSV7O2TJtQ8n/5rbxkm3B2252hQ/x17h0RyPKCzvZkCH0Fxscx2k+OpSYtqQuUSBG+I704T4aHYAz9HWihplI7erxRhojqweUSzIFAcsJhFjoeCjdEKUE3EmlZOWo61S3CAc4Rw5tfGaZHjqeSDAVAxaGfSb9WUYaRniq0VNsfQm4X4lGPyUCl0NvQbJmBWzncHdvUR0QHqGQzu8u0/EibBA+6vb/FBd6/CF1ylBxtycCRagzoCzCR3YOQbnb3BiMhAY65itBwPDKVMAzRvrFPB9vmUY+R7IxQNLYVxI9FHIUR4iHAk1Co9Yjtmc4MOzMgxHircxA12TWrrwNDsYBaHmcUMBa1ZSY7RT/dY15hvh1Tlc/wMIhIMR9W+lR0CfEV0xvsOynCwbf5iOAByRg+2dwfGuBEh3vDYOgWo3Tt4EcaV2cbm8xDvk/jgj8xI8CtbZh7RVdAtFK2SHLcprKlm88artJa65Rjz4BNiOUKrkPWMeaEH+/ySB0Rp9IhXvU1Xio8C4U8Ysb8moLkLtybwcDZYK6Gx9g6M/w1twjU04gY1Z5vlGPk+SoWpnoiV24i6y/Hv+nv9AVb8Tu8KPS3oAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/05094aa0d5254c159d1f003524f1e0b25204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63046818', 'processamento'),
(117, '1a58e96f-9e34-440a-8bff-b0f2e6271181', 13, '60.00', 'deposito', '2023-11-08 06:54:03', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACWElEQVRIieWWPa7sIAyFjSjoYANI2QYdW5rZQH42kGyJjm0gZQOZLgWK3yEz96fEr73R6Ap9V0K28Tk20V/+HPOW9yXTk/VKO3MRQUt6Nbycw0xVZT2TEMZ9NfsrD2v0LuvtFMMtk8q8sEZs/wHnSOrkKxaKckgIQ29c3KkP+kmzE6Kea9i/f99F7oTtC8MrFZe84l8v2gdd4iUXMnwF5vamRQRtrKMZOHuX9BH4MDKIGuIwcZ14X2ngRCKoUn2ezGcdIzJCbaWwXXUEb6k6NEMqIuiYcJ7j/uJ9OeuDZBC9BBGp5KfsbaDnHVI/pOCnVKY0LGlgXJuLCCKj2Xhr0IrDK2vcL4KO68MU1V5znwlykEFLqIa+QoGHXKG6JIN4TWjwlSpFxlMqLiLoMsKoI4Ix/mGYpTAVa/QCHTEcDGWRQTL7GisRfAxRoa9IBNXZHgL+AxWP+JulEFkMR+SLUBCcZdAaTwZtAP+kEYp4S7sbKmg/woL2rc2Ooj6v2QttKOPtovgXrv2ooxvCwTB6LgPv5Zn08mVrnZBieQT0Pzzk9t4ggzYOyOUiP7FHOs93Rt0QKlap1eHRigMrKyJoAy8JnQzo4cNblkFCH6KSqTouo+HZCCFh7GLgQoytmae3g3VDyBYWOuHC5gD6xTJoDUyPWyejKyJzKiJ41wSVxM1tbL0tqB/ivGT/TO90PjtDP2z7ErVIbKhoJJeFEL4RoL47I/pSsQQuWNLgHud+xXvtkcI2etrgu9BLiWTw3pcO42Eg2NY+IXXDe1PF1lHhRepsqhTBv/v9Aw+6ws24Sm5JAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/b2323cdcd8ff4df780e997d261a15a755204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304B14F', 'processamento'),
(118, 'db094e67-5e47-400d-937a-9e057773b868', 13, '60.00', 'deposito', '2023-11-08 06:54:04', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACT0lEQVRIieWWPa6sMAyFjVKkgw1EyjbSZUvDBhjYANlSumwDKRuALgXC7/jOj26JX3vRCDFfYdmxz3GI/vIzMM+Bmd0j1p0q86aCPZkV3w3ccDEzKWGsa6yp1KURWZOaGi7Fjc3PlrnU/4Cp+aUwt7pHPURFFu9tyFuXf5V5D+I811C/v+8h34TCMydGTNe1Xw29B4didkmDOZulmSvqYMfbs51j2UZ2T3ZkdRAdPIq/UA65EeXYTQURcyKzB79av5PflVAmOdIU/BxMyucUdZAIhfBRzqG4R6BnU0Jb57g92ezRTTLSpIT0sJ75REdSYS0cSsUodkip+aOYJetgH2jM0C84Jtm/Yt6HA/s9wAdOjOLI/noL4S4kQje3Zz5HhgMgQx3siS/0sTGiobP8qug2xOxBwmMWHU34fs/nXdjbmjJ1GX3E35qYVHBom2RFWx9EBa+Y92EfUVEVB8ueM3xMBymI7a/yxQsjMqng0OBgBgEX6QWEoIT4KOaChCONBZrSwT7AtRDwfMA8m5l/VHwfYoCHJiYA9+gYmtJBVATbXKUX2AJm/hzITdjl89mQDE0SH+1QQjazBanSx/CShgL2EGDbcKrYIEcWM1RBTO+KMcj+slCx+/jnXSjuHbF0HPYvLh5T0EHo6MjmgIoj8sFbB+ltYlAQ9uaPmjRQtjb5xHBR11P9GOBdiDvDHM4RR9rcQ24OShgrdpbUEuCEX2krYMoy/7K+kZ5Vw6W8LjxY/W4iJcR9SRYfJqFeJEtEBXGeSZQIGWJrc2o6+Heff75zlu0J+IkJAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/0135d7349a8141a6b7324270c01dd8425204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042D5E', 'processamento'),
(119, '33d9aedb-e0de-43fc-ad3a-f9c72b62be4f', 13, '60.00', 'deposito', '2023-11-08 06:54:07', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACXUlEQVRIieWWu63tIBBFx3JABg0g0QYZLdkNHB83YLdERhtINGBnBJbnbc7n6obMS6+FLLQCNL+9gegvf4Z5Te5kd4SyUWHOIqhpXOu1JL4B1fgkIQxlZzKVz2hJjXsVwydZrdwax0OV/4HBGoTkyxbkEBnF8Q4ZUe3xV5p9EPXccNp3/RS5Ezae7BKzpmtOvxraBxEJGrFH5up2dk8vg1rRXN2haGC7sB2SDA7RcS2HzyZeQ7r0qyD98LVHJfkIeU72nVQ/JD+uPN7erRV5ZR2yCGqVB84zj5u3S3VnlcEhchtCTJTCKNI3zV6IvyZmxhZ5OUQlgia5TRVGLp5XBiQRJH+9AssLXxgq8x7FbqgDBHhpdZloZ3a3F0J/Td7OlQ/FZ6UlyiDqiXQeHirGGLe9CJLPaCiOMgk+htqSCA4M67Bwki3QRB8P6YfmpV9T2x+HmyiDOkC//MrFcdMyieBQ27EzQwXuTPmto35oIhzMTmqEew9o6CfOXkiBHvCuek0BLtq0IILoJjaP4A7vfoTQD4kQD00BKihrRWAkgoYhYUC4x3im8jHVbqgDLVzOiNWqerIMDhHn4Oocm5r8ZT5p9kIKzbEXrMhncs9AMkjlhgvhzkrwYWtqFkGYJynI3z5CwRzOkURQq7Im3B3c3ANTnbIIto6k8YaCYCBQk5dB3No77ruK1w56iicTiSDeDBsySjjTTgQnEUKcA99OTb8wcP4+Y/rhGvmpoN8LVTWfARPAPZVbtft3jrj7sgwiIwjZ49kAIbjjpyB9sL2XmnPCSdCX6z1L/fDvfv8AYC68QAeQXBAAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/966445d7ef964dd990cf6aa66d7624585204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042A47', 'processamento'),
(120, '8dc4d48b-5c79-4644-95d8-724716a82319', 13, '60.00', 'deposito', '2023-11-08 06:54:08', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACSklEQVRIieWWQY7kIAxFjViwIxdA4hrsuFLlAp3kAsmV2HENJC5Q2bFA8Xwqre5ZxrOdqFRCryRXbP9vQ/Q/PxPzavhI+h3rTpW5iKAlvTV9pnrFehm9khB+Qm1c36RXo48mhqtxKnWKlXP9Fxj4aMxMryiHI6NCpkzZLenvNB9B1HMP9efzU+SH8A57pmKpq/zb0IdwanwFZ4m5+YP9GmRw8NRtLDO7hd1v2KeQEccaQkdU7paKEPY5uTmjHX3OfvuO+RSqBg2UV/RHwivxGosIkumvABcAIi9/NBLBKXkIGKFU09DzTkLYoOG+ZIfKHBl+lEGKQ8NEeg+8sT9yEUELEzEyopk7xDxJITGGwB7chKaw5yaDNHRYljzeh5ObxJA568vgu4/skgyqXGzUbypTQi/gJhJBGzA3kNSw8NHqwTKo4F9TrzBcbMckkcGRUdPXyAUFwVkIjVtQiqABzwwryaAdMetK/kyYAKMyIqhg3jTMOzOfGKF3QR7Diesa9UWEn94BZiwy2GjO5SviOOx8ZhJBMkO9UKBKejfYI0UGY/+KKOMY4HOrJ5MIKvYbdpYBxAjSWxLCNMbIK6AgfI5BKoNE9W1GQSAJlfz+Pb2fQsVF5XpiCDe3NH9L8TmEC3BXeQ9F4QwvFxH86KG8hovLAk9FEsHP1vb3yv5cmYoIYmXvuOdk6MHdkWUQt5QEJX8yGnmJ4QYVZfSxz83dM0QEsW4sjcU3p778/tEzSBpwuecPjPyR4nOIeh6ZvnBhy2P721BE8P99/gCfh8QUSs2sVgAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/bd2b0a1d08a44b81bd63e1f4272eeb615204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63043E7A', 'processamento'),
(121, 'fd4e8f83-2177-4111-9743-ee3b4a02efb3', 13, '60.00', 'deposito', '2023-11-08 06:54:09', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTklEQVRIieWWPa6sMAyFHVGkgw1EYhvpsiXYAD8bgC2lyzYiZQPQpUD4Hc/M/Snxa2+EZtA3kiexz7FD9JdXx7xGmms5iMZYmLMKttRsIbc2G77m1CykhKGsyc2Vz9TvqdmrGm6EdzenctvyH3Cx/eH59jQEPcSJvJsod5KTX8d8BpHPzZfv5zvJD6EsmyVmLKjLz3oGOy5cL1OZEy/WjUkHKeQhkKm5DZ9aqKCJPVfw/mTXBj68FrqZaUz9ypLMQQm7iGjN4qm1DFWsSQcN41AOFjh8c8ZrIB0k6hFwIvfaXtZC2GeMkKKbY54jdJVVsIWGqWG+WttvqOZLD88htjEn/CSO4Ag9ZxXsICFo2DY7X5N1ppIO1mtMebL9bSFFPmxWQdFwhYNEyTfhIR1MaF/XgCYmTSB3Lxs+h4S+kfqzlj06ea+kgh1yiHwGcfFt4aasgmRxFviIsdDH+P1Hz6FEA2zutxS9DhruF5jXlhNy8l9aegyRwLFmU11LNBCfStiKivANO6CBu/eWnkMTLxMR6pqwn8RHyCoI+yzogZYxtqDD6fNHj6H0bb4D2hevFZnRQVQTfW+y18zOJGwvqyB8N6ZmZQmO09HHHU8hETQsE5NRkUBj1UHDYmGkEW28S+UIOthaTG18i4V3GNnq4MtKuDDAxW6w4ikVxNTeK1yAiweGCD6zCuLOgAbIErNZrHQSHXzfUoJ4GZp8u1gFN4KEms2WtUJXeugx9XA0N3noSglxVYtXx5g75Yxf1XwM5b4UZGrPUko+SAf/7voHHPx9QKZI+ZsAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/cf6467ab508d4ca18f3eba2fd83958545204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304C906', 'processamento'),
(122, 'ec3d98c8-3ef1-4806-8bc5-6418c89fa8c5', 13, '60.00', 'deposito', '2023-11-08 06:54:10', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACT0lEQVRIieWWQa7rIAxFHTFgRjaAlG0wY0vpBtJkA+mWmLENS2ygnTGI4n9J+6o3xH/6EIrQaYXAvteY6C+PUWQPvEQ/k1mpiLAKOqxj2bK/p3JacCWM5SHeRVosDdk8qh5ms8fjLliU/4A7JslJfhQ9bHGYzsCO8NOva/bBK57lO38FuQtiDMkgI6McC/E3oZ1wFESDZttudJNjrKyCQ+UxT2vgOV65CKSCYxKQuxhJZqueAutgpoUOLG7Zu9AkoYLOIhdEkcmWR5IzKmH0FKe1LaY9Qg86SKFs6aAw7UFeGabQwQEk+iVMkvieoQcdxEk2weQ54A+IrQ6OmWdbdiuvSi74ObIKwrlPSyggAila/1FIN0QGUQFQQJ6RbxX/0UHc4rTQg0idnvTJpgJmdva4ta9Zm5t00MG8FjJuhWhtxUQHh8QuHO1rCR50llUQPjrD4aJgPPGtOjgIL7AwgUy7Pd427IejoAKUk8oJNWYUBNLB1NTYhER8TwcSqoLwkWANCxDjXut1pH7YlBzw+mA3c0bzTkc/HBIkBBnIlo9Wjt5R6ofVLxEygAhxJD9UHUQ0oN4xFWz7DChBOoh4Yp+lPWE8pCI/Qe6EROVVzZavKeUT5G54ack84SC8+Hl6JVJBZwvMi+IJL4/5W9J74cXNapubXNMDqyBe7a1Kc3GdNihKCdEzbBXtCva8dn6fsx+i1xLTtq2yt7ebtRDmRbuyJTz9frakhoT62Xq2BXquSkhoFQQy2O31+mRWQcTzIWgyJxxpIbO/O4Fu+HfHP6QbWPKlKYkfAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/321d00bd42b643a191926062c150f7505204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630449C9', 'processamento'),
(123, '9ee11313-bdcc-4a89-a082-127696345008', 14, '10.00', 'deposito', '2023-11-08 14:51:22', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuElEQVRIie2XQc7jIAyFjViwIxdA4hrsuFJ6gTS5QHIldlwDKRdIdyyieB5p5680szLrH0UV+irRYD8/u0S/6/81MC95vwJz4iWdNvIlx5b0xoXCvkb9qnwFEDmO+2zcs+qLymRoCrx24Y1pDH7LPAdsOvGSz4F3Zs18Uh8mvcb9on2ODmz+Xl6AEe8Vcfp5vmkQYCyVcTxOxfE8f5MvwO1+uUyRmfctnyq7UY6tOR+1jMFNhE/s/SXHqiLS/Mq8ZX2QU5U7MEU3GmjHvxLeFHp8v6AMI2mI0JKJjF5qUUlfcjyk8kj3LWN55jJGZztw1atxZBAzfwTfSlOOFTuV3KO6oRYk8JWpA8MSVlNGPMRb2iGfSY4HPlXF1s8RRdn2Vo4V70siaPDFbsgnAkZyPLTKhvROeANnRP3swNbo22aaolu00idUIjzgVNNsZqZ94f0yepZjlZlbqHauroWc91WOKRQbcFeeo2Z0A1SnHA8V/tTuukZcsUzhfbYM2wDplel2TYT8oreQhZiQK34lD696JYcEkhwr1CXvhymo8svAJ/wsx3c79QuEY/waaDJwLDFWEGCGfByEg80UnJVjtKClnnAISHiMxUbqwTAYVCR5VPaCh88u7BkV0AwYXbo8uzAs4cH6aH1VH/F8JL3KMbVgQ0TOhtZJJsMdWGHwIYwt/qCmIJiElWOi1kCQNFyUqFAkkmN7WzhGhiOUB6rc/B1EJFglpMtNoZA5W5XXzy1lmO/kG/QQjyEIUprkGD0Ns+Rs0O3vGm2FLsbtG0aDbYMPRob14xAyjCBtFRdFUcLtIIFPbxBhGAOK4MDIgE7CEGCxHbiNt5g4MJaWodLz499ivNI9cYSCOQ5q6sMYA6lNK+jSd412YPxvSBBg60gXfie8kybDbUaG+gyS3+L0/JkhJPh3/bv+AM9fFtlugT7nAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/dab9c429dcce40bcaa96fe8555af6ae85204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304344D', 'processamento'),
(124, '7ff9560b-ef93-4f80-9501-40ba8e20ed08', 13, '40.00', 'deposito', '2023-11-08 16:34:47', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVklEQVRIieWWsa30IBCE1yJwBg1YchtktGQaOJ8bsFsiow0kGjhnBMj7D76791L2T591QtZn6cQuM7MQ/eXHMD9perj8cmmhzJxEUJPayvy0FfyM6klC6PJOebfkmZZRHUUMn2P1Yd5i9TH/D3T5CHyRai9SiIpi5pLwtXGSQfRzt/nn99PkTnj/bV1swjrE3wPthKYwB7Vb5jIfjHORwSFWsnWN2Nu08jSwDKIhR0RXyQRsqWqbRNDECbVoO5+haqfOu6h+qClfTcbzVvLG+fgouReSqw+blrHiXM6ITySCQ+ELVYxqC81N+y2GfqiJ8H45vPIR5yMKocNO+CgzDnTj+QgySC55bgmwckVvDcugYcUQwDiZMHmeL5LBARoo8C9OE92YfJBBVMRlelh0FVkEVcvgEBM0/CCsM4gmGSSY16mnzUfktr4V0g3RQG2bnJqex2SiDA53FdAhB2wJ1SUR1Pb2b1RnQEund4z0Q9NUlNaYPEhQ5/2f/VC3uTNvgRZU5CbzcXE3hP1ZXUS+ieEr724I9Q6M/FQbV19QlwzCvy9Kj5HW0ibX08qgdkmPdXEKhwJDfRrSDYc4c4GKkCGIQfiCRBBaMpzRTx/4bNNTBqnlJ7+wpdhGz8cI3XDgtIaEyYXVB2iDRFCPmSNgc/Hu+HJJBG+u8G5gBMxuSyIIBx3cLi1HgA4/6d0P34PPI0nKtCBJAskgbikRWoJ/oeqviyWw3ZRgYawF84ukcCd1IbsCQhhBmmSQFOBZmgERwue3zE5491O9LO+49oxV/za5C/7d5x+R7ci1i7vP1AAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/e4c8f09fdab54d0499fb1b6ad04be2225204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304FE00', 'processamento'),
(125, '7f74784a-8904-45bc-9344-210def6d6bea', 33, '20.00', 'deposito', '2023-11-08 20:10:51', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACSUlEQVRIieWWPY7kIBCFyyIggwsg+RpkXMl9AY99AXwlMq6BxAXsjAC59tG9M9rQtelYrRb9Waqmft4Dot/8WOa98Z7nk9SRKnMRQUMqenXrMnFftdpICEPdtLo9n9S/sjqaGB5Mywhbj1z/A+5co+fb08RyiIwCXhXL857+SfMZRD2jrz+fnyI/hO/HTanYVPf8Q55Cy/X25dWYM2/avbIMUuhLQD1pDe9eeBmcktpbWWhmdibw1YQwuxX19DPm8Pb9lWQQcc6AKUI76t7qGWRwwn7GACMvNaAuIohQWKwQQnqvSQaNH+sjMacCIcTPPh9DCpAwXjmj54huJhm0uUxZbaFQqAhrPvt8DI1Xp6aF1D5MADNJImgx+ZqvPEfCNJYlFBE0nplHXjCBPfNNJIKkiwn0ysXoYhtGQgiHBfWVxrfx8BAZNL5gVzEMFd+E+EUECRnlvmjkxSfWnz96DG1ztkFBKg5J9sULYYZ26gkBjoxICslj/DgOI4UDf7fjMTRBXfzRMvbmPjGfQ5scKhkD5rBu45UMGg3HRii+GEnR6osMohQNKkA9x/kLUYggeXUllLRbhohw+sigoU7BvcYMwIXQVhkkqldSNyy0OZjwRjI4MRQ0n2OA4WBwQhlEPa8Mwnfgg6FlGXwPcx8qDsPNbC4iiFP7yArDfGAqco0kg7gz7M19wTm92t5+IoNhXFeucWqjHX9VLIOoBnGEATKcRAyPVjd4F7v1u5sCOG6YnTR+FlwbziCD475E6vRoKyyIrySDv/f5Az6ojVc9DqV+AAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/29a4706d5082432494aec5cf62b69d455204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042262', 'processamento'),
(126, '9da1370f-47c6-41f9-8a3c-06ba724445b1', 33, '20.00', 'deposito', '2023-11-08 20:26:29', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuUlEQVRIie2XP86jMBDFB7lwZy6A5Gu485XgAgQuAFdyxzUs+QKkc2Ex+5yQjXa32XH9oRToF8nx/HlvJkQ/z79Pz7xmegR7eXW6YjxfcmxI7UyjK/0RH4EvByLHPi2uTFkBzJpmx1sT3gPOtpvnxeGlES+69Jw4J+ZCbZjU5tLl0uIrW77BCzDyDfz9fMsgwPVx9cvFD134o/r/j2t8HI1mZsVZrccwyrHxcfbp+WqfZ+YdL3LcBfU87H6UvnZiOumdbxnG2capiwZ0EB+KeTByTJqfgRFcf6Q1R/zUJccdD12OoxuQ9ccRR/+uvAwbjyQV8tQffDq7htKCqfTBnjQYrXakyrXgDorURD5OIZKuBbzkmHSpwUEHpBaye4hjA/YodaxnH5DmyyfkGAoYNWymwCT4GMjfUYow+bRpXBAvaMPYB2rAMEujBwhro7RyurRdGnBmzmUmhAhF8s5vNQgxlA1BwDJrzlAxPlswokQnqs2rlZHvYuSYCLq0l1OLt6eD27Vg4+BSFiZRvSoMDy6zHHcwftSNhhE+odGDdpNjwr20hUPM3m4OzXgbhwgbP8Dq4BBonClgNn40L8Ewhj1DWDR79DJ68K68CJuqJzg3zsapMLzUgAmadhEJw6ZQU84tuM9wCBpf3j8F2LBqwZgkAbOx5ptDnDUvcmwwQ44ycYJR4XYwCSPHHWIL1SF6HtDUhOI3YPhTdYgyUpxq9e55KcMB0wNztcCDDSZSVi2Y0TjVJyaGDrD+3HNehHtM5gyMmtOjbh9vXcrwy2nUyyHSWkX5MQ4Jxuq0M+wfS6XaDxjG/ZMijH1wwYpd27k2MkZTC66TBBsHoox1/eF0NuH9tXHMECW6gOzWhDeNNRk3tUsVxGevEmH8b8i4VD3b1An5O1UCXHdkuBQms0ag8Jtb3CL88/z9/ALcLxeNs2q+YwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/375b38b29dc5445b9b7fdcd7309b9b6a5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041836', 'processamento'),
(127, 'ae90dac4-efd4-4570-9413-ac7b07105186', 14, '20.00', 'deposito', '2023-11-08 20:39:14', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuElEQVRIie2WO47kIBCGyyJwhi+AxDXIuJL7An5cwL4SGddA4gLujAC59qfdPTPaTbYcD0KW+rNFU8+/iH7Xv2tg3npegz0Jz6o9n3KsSa3RkKuPaCZvTwcixz7vhRef16h2rpPj7RbePK+RHtEujsa7eI9qDZlLHR1ueguTWpw625OfAc8v4wW4+dvl7/0jDP+PsbqQiPLi61DM+B18AR5YbVS7aLnQ5GkOl5VCXMyD4Wa79HjWR7GnHLegUfP3Xuoc+YDP5HgICbuLaWZ80lx+yjGctAdcjbqY15K6e9gZxO3s7bPYo1VGGuVY9/lwRH2ag+mQiZwXOe4KIlbx8nRp4PyMVw7K8BD4cPD36149PUolOdYOBxvdQF4DzahOOR5CRjFx4D2YIdbJJ5JjTUZ72JrI00i8R5rkGNWwBsXFaIcURlK/LyjCCNejpY+ZKK+cz17dwF1hjogVYq44mplREGKMUoC/B9zLJe3tRnzKMRJnI7xBx2qfTGhXN7BPQ0HcsBWz0fSuBhHuWj3hF/o3ygslfp0tw0iZsUe/RJ9TrTrDO5YirMmuBcGvY/ufvPNHSSS4dSkI2lXWrtIn8iKsfZPoCcDX0SNuH4mWYOQg/M1s99YnaMS+gaGuAWcb9KrJt3a1yLH2pplYEmT28PUR1CbHaNtP9KemqwZKsrM65HhgMLv5y8oWwOUGRuK8xpapN0St2ZAcaweA9OEnMhpu4zrKcRfsAXkvCinMAQNdohuYWyVB53eGrdDGOsnxUF4tKqJxWiRj85wcX8HvIuYvQx76/M4qEYY+rwWtV2EEO1/qRHLc5kGMxihHD1vTRO8wyLDHjSCMsBK3qx8rxXhr/TvNmFkwtpPabmLeizp6+L7CyvEGxmEekwvEGR3UHv0lRzIMfyN5qbfbS1Lm8jVoC/Dv+nv9AbxsEJe1TQVNAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/1db55bf6c9c54d778a6d0988e859a8d25204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63043A86', 'processamento'),
(128, '92453e00-9bce-4d2f-a921-8f0beac2d35f', 37, '20.00', 'deposito', '2023-11-10 03:03:01', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVElEQVRIieWWTY6nIBDFy7hghxcg4RrsuJJewI8L6JXYcQ0SLqA7FsaaR/vvnllSs21jjPmZIFS994DoN18D8xHzSWYk6kJmTiKoqV+p38q9hPwovAuhzwfbo/BDaVT9UcRwV0l7+7i0xPw/0BtyzAEvcojlMF+chsBX+LvMRoh67i7/3D9FboRUu8BY1MD3/E9DG+HA/a7yxainmfgeSpLBeI8uaYfK1F50hUSQyF6cUQoOkITpShJBjLYwBsTgaSlmiCSCpHqOiRS+Qgw0eiF0qYt59WYIqXb2nWczBNkJdQChJdjVkQhqb2YsqmQOCVbaXRLBrvQP5S2k0VVVrF4GMROtDHy0FdTETFEGSfHq8uMgp3tW5qPFZthFKDBv3F/hJgdZyiB5flATYoYkCO8yCAnhngqeBBcMLINUzZtGX5+aahwJIeLLaEpa1TE1CSHWUpBdWBGfyLGPDVshhpoCI8ROb3fFUIUIDpEPRFCNX8vhfm0ogIFGZR/iGkQhn04G4SOOyAGUBbP6TKkdVhcz7IDRLMdvLTVDrexKdvV2VXb3aX692QxJmSnARBBhbWv3aqkZdtFewe6UV4du0iSFhWaHAIcLapRdRQaJ8hGRuqaL2AFrmolgx0g/hBgcxDgzbO+PmqGGBtAFh50rP1XPMkhviBF27X7/2sJEEDPZAjScj9Cf9fwgg/W8hHqila5fcXR5FdIOfd6iGRX8Cy+gJmK4O+gQ+Q9D4StJ4RFuhPDAaIrFJxmkelRY6mkTMQhPJRH8Oi/VHLi4Px10RSL4e68/enR4OblUnaUAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/8ab6ed5d8ccb46db82538db85ddf31365204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041496', 'processamento'),
(129, '756a0fce-4bc7-442b-9877-0bc7bb872dee', 37, '20.00', 'deposito', '2023-11-10 03:03:42', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVUlEQVRIieWWP47zIBDFx6KgMxdA4hp0XMm5QGxfwL4Sna+BxAWcjgJ5voez2d2S+dqNLCv6RSLMn/dmiP7yxzDvJc2HHQpzzMxJBEdSm1dLIFP40mohIQx5jelJCm9zKJwvhYtWZ7BTINL5P+COMzVfnneWwxYRv9p9Ki72K8wuiHxuPn8/30nuhI3HfGcjTZR+CtoHTXEbOY58BXV5d+kkg2wN47Q6eRo9TV+91AuREGTyVexTtys9QxJBgz4sdvJ5CQo/fSLqhWNQa7FDzDta+siXTyJoin1Etx5pZjv6NAYZRPtBCKfn06tXO1YGkc8hWhPTA/dBcj5J7oRD5PVwfNSZM46VQlOIAq8F1YQY6fmVkF5IpF7R3VIi8moLMjiSpYCLwUbcCS6EcB4+kBDmUs2BfhZCKIjrUJKJLShzkAiOhGraOeYtuLXgLYQ6jdQkjGeO+C6DzXVDnWPz3k3/hNkLj0oeRXQbrFsTtCyCiIi5PmBcINp9qtkNg50PtSKNUHFsNiKDyCdVEyGoFtT1+aNOCBFNHhC3QnRu0UKIacXu9HUumALuxUJY0hDrENHGSCwvXgYpQPuwIJQDLqROLYRUH7FCTaPGAE1DISHMqIWJFg2Jan4mVy8cOA1Hs82xTW31FkI/xE24mRhUbGd09XsWd8NbyM0/EdQDamIZxNReI5+hefjl8/52hm547wytFoiohUZCiH2p1KeHfu3MeIvhQoy533YVyJnEcEcm4Zx3F8GIZJDUHt29sCkubWkUwXtfwtaREQvaaf5Zorrg3/38A4ViaK+udI8oAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/4147e3c505e04b7ca587b51da8b339e65204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63046345', 'pago'),
(130, '02034f9c-3f15-40bc-b86b-a3ed463f6099', 37, '40.00', 'deposito', '2023-11-10 21:54:09', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACt0lEQVRIie2WTW7kIBCFy2LBzr4AEtdgx5XcF7DdF7CvxI5rIHGB9o4Fcs2j3VGimU2K9aAo6nyRaOrnvSqi/+ffMzE/izpDJaeexYyeLzkeSR1sz0hTSGvgy4HIsc+bU5c2o6NF0+J478JH4GekWdvN0dyLn4y/LJfMjFi7MKJEnrzdfGPbj+B/j5Hv3eXvn+8yCHA7nl+EEPEleftR/d/jiTMHRKmYE2lao5nleGDziLQGu2n1Ij6CfXVgAJdQ8BNfUvLl7C7H5MxQzKPwC2+M6mQzdmC0T6s8WgBqSENQlxxPEf8xSBieucY0+/uBMgw5Xr4iyoPxRvsM3IN1WnQadb6gBlIv14OHYlHzkeANiovadF06cKRHZI6Mu3HxEagL4118RnsExaE+QhrlGFE+CmymzmQ5msXXHtzMEjajdl2nkqbPA2V4CBWBzs6sAX6DrBuSYyLYbYLNcIEiW/13OR5CmgoKrjYPHaSF8kuO0TgHelnDsbg9EHYlx0jP6JHy5pcQ+kV1luM7yubfOIFWvntQhifku6BceCDqjyb6yFWEh/KeRc0h7I7Ef6KU4SnCGOrEeCNkAYFyB0Z6duibKqGXfVpL7sATm5XxDflsjYOxZjsw8o3pSjAYjYGAefKRlAzrujLWFvQRfvMZ1C7HuA+6ZDSOVm246Xu6CnHBQMM0SwSHYDT1PUlkeETLRBTfLE3WEOjtEELcvKE18hGgCVr8Z20R4VZ5LGL+bXVtZ7nzLcSMjxmD6IBAKUEZixzDYy6H++4tDJXPlxy3QH19lLb7vAfaV1dJMLawo01mtXuzFgRaSY6xD6JiU7sbPoMGTGMHbuvt7VXwYHjVvc3JMe5myDoNER1kxj7cHBfWiw0XTdSFCSOxddCT1VFgw/mS4/eOjI2yjm0tzWf5ch8J/n/+Pn8AJIAs2F1wObAAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/660d4ce2bdd54e26b3799dea7a18d81e5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042703', 'processamento'),
(131, '18d24a72-b75d-4b75-9f6a-afa1a1e0f62e', 37, '40.00', 'deposito', '2023-11-10 21:54:10', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY3zMAyFaahQZy8gQGuo00r2Aj57AXsldVpDgBawOxeC+T9eLvlb89ozAiX5EhDSo/hIor/8DMxLMIv1Bz6nylxUsCezWbNEs3IbsllICWNdMx/kpsSHNfulhjtCxXpH1+X6C7gEN1182yJ/0ELCNvyay5D8mf4f8yGEnluon9dH5IdQnmgOQsx6pjd5DAeunAtOxJkX66ashFebspsJakguuqSDfeD14o14Z9dHPoIOIsgYypD9nsyaykg6SNHvl9kizRFq/JzoORxy+UptSmXiegcarQ6S9RuV2fr1Moelny09ht3VEPNLVgSvm2xMA3H58fWqG4Ijm9/peA4pQlKRcY6VU+lDUUHcpZORxLpzm62jQCpIsY0EMf1CfrH1sEUFh8x8QVW+gzkTVlJBQu2TPxkr9CzDqwwfw55gQQwL2ggWCg8hFaQIDQ1qH1V800fkp7BjnKhQxBtU/T6dBlJ0vfXM5paL0Yh0EA524v7YNnHrIWbQwd6WLsM5HQr5oLczPIZD4pMR040BfuJedfQcoo5Isolr3MSC3sX1EKLZ3VZ8bCM4QJmDFjqso1wGXpGR1z4VsIrvhfbFDvU45aKCvRS+fICBd2JlpIJEFX1nynAh1wd/kw52jFCQsXXJYx1YB3tbF6kFviN6EPqXDgoP4t5QBn1/UELcZKlcOFhC40BSdBAzw/qaN2ToQvcsOhjFvQfp2qLMq4p18PK3bVBmhZP8AmJaQ8dnNweYsBJiXkr4CX3HrxhaWAdFT8aUJSXcWz4vHfy7zz+OY4tEWvnjSwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/3e1d6c78a2f24b798ff9d7f9df9a23675204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304C2DC', 'processamento'),
(132, '65086300-bde1-43db-8ead-721283784ecb', 13, '5.00', 'deposito', '2023-11-12 01:48:35', '', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/e136081455254ee9a24087a5124f51de5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304EF0E', 'processamento'),
(133, '57aac4a8-de1b-4093-a0cf-f33cfa9f6629', 13, '5.00', 'deposito', '2023-11-12 01:48:42', '', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/7cded3b74ab94ecc8e56b23a3cbcded45204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63046AED', 'processamento'),
(134, '1adc2911-88e5-47ce-b209-106a4d6a0182', 13, '5.00', 'deposito', '2023-11-12 01:49:20', '', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/0ef24678535a47b6ae1b46ad828a729b5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63043B9E', 'processamento'),
(135, 'ca8c8749-4149-4974-9ae0-fa173b74fa75', 13, '5.00', 'deposito', '2023-11-12 01:49:57', '', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/17666a90199549188722e13c51e2d0b45204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63045005', 'processamento'),
(136, 'a6d08a0c-3005-4866-9f6b-5144465dd414', 13, '5.00', 'deposito', '2023-11-12 01:50:16', '', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/de10601c422e4f978a5005e12b91593a5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63040120', 'processamento'),
(137, '6ca6a3fd-76b7-4149-af50-65b641f00642', 13, '5.00', 'deposito', '2023-11-12 01:51:25', '', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/531dbb71eaf24a1aab0c4d75110ac3a55204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042B71', 'processamento'),
(138, '5645f50f-4539-4f5b-9d0b-3f5f0abdb3b5', 13, '5.00', 'deposito', '2023-11-12 01:54:04', '', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/67ac9f39b832475ebc50416eecadf44c5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630407D8', 'processamento'),
(139, 'abd84bd1-1e97-4cf5-afee-c8b5491c3b76', 13, '5.00', 'deposito', '2023-11-12 01:55:22', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY3zMAyFaahQZy8gQGuo00r2Aj57AXsldVpDgBawOxeC+T9eLvlb89ozAiX5EhDSo/hIor/8DMxLMIv1Bz6nylxUsCezWbNEs3IbsllICWNdMx/kpsSHNfulhjtCxXpH1+X6C7gEN1182yJ/0ELCNvyay5D8mf4f8yGEnluon9dH5IdQnmgOQsx6pjd5DAeunAtOxJkX66ashFebspsJakguuqSDfeD14o14Z9dHPoIOIsgYypD9nsyaykg6SNHvl9kizRFq/JzoORxy+UptSmXiegcarQ6S9RuV2fr1Moelny09ht3VEPNLVgSvm2xMA3H58fWqG4Ijm9/peA4pQlKRcY6VU+lDUUHcpZORxLpzm62jQCpIsY0EMf1CfrH1sEUFh8x8QVW+gzkTVlJBQu2TPxkr9CzDqwwfw55gQQwL2ggWCg8hFaQIDQ1qH1V800fkp7BjnKhQxBtU/T6dBlJ0vfXM5paL0Yh0EA524v7YNnHrIWbQwd6WLsM5HQr5oLczPIZD4pMR040BfuJedfQcoo5Isolr3MSC3sX1EKLZ3VZ8bCM4QJmDFjqso1wGXpGR1z4VsIrvhfbFDvU45aKCvRS+fICBd2JlpIJEFX1nynAh1wd/kw52jFCQsXXJYx1YB3tbF6kFviN6EPqXDgoP4t5QBn1/UELcZKlcOFhC40BSdBAzw/qaN2ToQvcsOhjFvQfp2qLMq4p18PK3bVBmhZP8AmJaQ8dnNweYsBJiXkr4CX3HrxhaWAdFT8aUJSXcWz4vHfy7zz+OY4tEWvnjSwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/9b583438d1c14249bb3a8ab49654f72b5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304BF25', 'processamento'),
(140, 'c6e5e321-fc09-49c4-81dd-b860186dda05', 13, '5.00', 'deposito', '2023-11-12 01:55:33', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY3zMAyFaahQZy8gQGuo00r2Aj57AXsldVpDgBawOxeC+T9eLvlb89ozAiX5EhDSo/hIor/8DMxLMIv1Bz6nylxUsCezWbNEs3IbsllICWNdMx/kpsSHNfulhjtCxXpH1+X6C7gEN1182yJ/0ELCNvyay5D8mf4f8yGEnluon9dH5IdQnmgOQsx6pjd5DAeunAtOxJkX66ashFebspsJakguuqSDfeD14o14Z9dHPoIOIsgYypD9nsyaykg6SNHvl9kizRFq/JzoORxy+UptSmXiegcarQ6S9RuV2fr1Moelny09ht3VEPNLVgSvm2xMA3H58fWqG4Ijm9/peA4pQlKRcY6VU+lDUUHcpZORxLpzm62jQCpIsY0EMf1CfrH1sEUFh8x8QVW+gzkTVlJBQu2TPxkr9CzDqwwfw55gQQwL2ggWCg8hFaQIDQ1qH1V800fkp7BjnKhQxBtU/T6dBlJ0vfXM5paL0Yh0EA524v7YNnHrIWbQwd6WLsM5HQr5oLczPIZD4pMR040BfuJedfQcoo5Isolr3MSC3sX1EKLZ3VZ8bCM4QJmDFjqso1wGXpGR1z4VsIrvhfbFDvU45aKCvRS+fICBd2JlpIJEFX1nynAh1wd/kw52jFCQsXXJYx1YB3tbF6kFviN6EPqXDgoP4t5QBn1/UELcZKlcOFhC40BSdBAzw/qaN2ToQvcsOhjFvQfp2qLMq4p18PK3bVBmhZP8AmJaQ8dnNweYsBJiXkr4CX3HrxhaWAdFT8aUJSXcWz4vHfy7zz+OY4tEWvnjSwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/fae3308c74ec44fb80976a01fb70f6675204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63045F8F', 'processamento'),
(141, '758c5e33-4385-4552-81fa-09221aa7ad04', 13, '5.00', 'deposito', '2023-11-12 01:55:56', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY3zMAyFaahQZy8gQGuo00r2Aj57AXsldVpDgBawOxeC+T9eLvlb89ozAiX5EhDSo/hIor/8DMxLMIv1Bz6nylxUsCezWbNEs3IbsllICWNdMx/kpsSHNfulhjtCxXpH1+X6C7gEN1182yJ/0ELCNvyay5D8mf4f8yGEnluon9dH5IdQnmgOQsx6pjd5DAeunAtOxJkX66ashFebspsJakguuqSDfeD14o14Z9dHPoIOIsgYypD9nsyaykg6SNHvl9kizRFq/JzoORxy+UptSmXiegcarQ6S9RuV2fr1Moelny09ht3VEPNLVgSvm2xMA3H58fWqG4Ijm9/peA4pQlKRcY6VU+lDUUHcpZORxLpzm62jQCpIsY0EMf1CfrH1sEUFh8x8QVW+gzkTVlJBQu2TPxkr9CzDqwwfw55gQQwL2ggWCg8hFaQIDQ1qH1V800fkp7BjnKhQxBtU/T6dBlJ0vfXM5paL0Yh0EA524v7YNnHrIWbQwd6WLsM5HQr5oLczPIZD4pMR040BfuJedfQcoo5Isolr3MSC3sX1EKLZ3VZ8bCM4QJmDFjqso1wGXpGR1z4VsIrvhfbFDvU45aKCvRS+fICBd2JlpIJEFX1nynAh1wd/kw52jFCQsXXJYx1YB3tbF6kFviN6EPqXDgoP4t5QBn1/UELcZKlcOFhC40BSdBAzw/qaN2ToQvcsOhjFvQfp2qLMq4p18PK3bVBmhZP8AmJaQ8dnNweYsBJiXkr4CX3HrxhaWAdFT8aUJSXcWz4vHfy7zz+OY4tEWvnjSwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/696102ccfcb7438db70c797d0c69947a5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042882', 'processamento'),
(142, 'c56b1479-a88e-4b9c-8383-c856e78210d4', 13, '5.00', 'deposito', '2023-11-12 01:56:09', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY3zMAyFaahQZy8gQGuo00r2Aj57AXsldVpDgBawOxeC+T9eLvlb89ozAiX5EhDSo/hIor/8DMxLMIv1Bz6nylxUsCezWbNEs3IbsllICWNdMx/kpsSHNfulhjtCxXpH1+X6C7gEN1182yJ/0ELCNvyay5D8mf4f8yGEnluon9dH5IdQnmgOQsx6pjd5DAeunAtOxJkX66ashFebspsJakguuqSDfeD14o14Z9dHPoIOIsgYypD9nsyaykg6SNHvl9kizRFq/JzoORxy+UptSmXiegcarQ6S9RuV2fr1Moelny09ht3VEPNLVgSvm2xMA3H58fWqG4Ijm9/peA4pQlKRcY6VU+lDUUHcpZORxLpzm62jQCpIsY0EMf1CfrH1sEUFh8x8QVW+gzkTVlJBQu2TPxkr9CzDqwwfw55gQQwL2ggWCg8hFaQIDQ1qH1V800fkp7BjnKhQxBtU/T6dBlJ0vfXM5paL0Yh0EA524v7YNnHrIWbQwd6WLsM5HQr5oLczPIZD4pMR040BfuJedfQcoo5Isolr3MSC3sX1EKLZ3VZ8bCM4QJmDFjqso1wGXpGR1z4VsIrvhfbFDvU45aKCvRS+fICBd2JlpIJEFX1nynAh1wd/kw52jFCQsXXJYx1YB3tbF6kFviN6EPqXDgoP4t5QBn1/UELcZKlcOFhC40BSdBAzw/qaN2ToQvcsOhjFvQfp2qLMq4p18PK3bVBmhZP8AmJaQ8dnNweYsBJiXkr4CX3HrxhaWAdFT8aUJSXcWz4vHfy7zz+OY4tEWvnjSwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/9e14dddc5c6c495985d4cd999c9d97b35204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63042496', 'processamento'),
(143, '4a3170dd-6b10-484e-9553-3fc34f88940f', 13, '40.00', 'deposito', '2023-11-12 01:56:36', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY3zMAyFaahQZy8gQGuo00r2Aj57AXsldVpDgBawOxeC+T9eLvlb89ozAiX5EhDSo/hIor/8DMxLMIv1Bz6nylxUsCezWbNEs3IbsllICWNdMx/kpsSHNfulhjtCxXpH1+X6C7gEN1182yJ/0ELCNvyay5D8mf4f8yGEnluon9dH5IdQnmgOQsx6pjd5DAeunAtOxJkX66ashFebspsJakguuqSDfeD14o14Z9dHPoIOIsgYypD9nsyaykg6SNHvl9kizRFq/JzoORxy+UptSmXiegcarQ6S9RuV2fr1Moelny09ht3VEPNLVgSvm2xMA3H58fWqG4Ijm9/peA4pQlKRcY6VU+lDUUHcpZORxLpzm62jQCpIsY0EMf1CfrH1sEUFh8x8QVW+gzkTVlJBQu2TPxkr9CzDqwwfw55gQQwL2ggWCg8hFaQIDQ1qH1V800fkp7BjnKhQxBtU/T6dBlJ0vfXM5paL0Yh0EA524v7YNnHrIWbQwd6WLsM5HQr5oLczPIZD4pMR040BfuJedfQcoo5Isolr3MSC3sX1EKLZ3VZ8bCM4QJmDFjqso1wGXpGR1z4VsIrvhfbFDvU45aKCvRS+fICBd2JlpIJEFX1nynAh1wd/kw52jFCQsXXJYx1YB3tbF6kFviN6EPqXDgoP4t5QBn1/UELcZKlcOFhC40BSdBAzw/qaN2ToQvcsOhjFvQfp2qLMq4p18PK3bVBmhZP8AmJaQ8dnNweYsBJiXkr4CX3HrxhaWAdFT8aUJSXcWz4vHfy7zz+OY4tEWvnjSwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/827c1591d09c4d5fb53df918ce7e6b545204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63048502', 'processamento'),
(144, '882bff73-4272-4ae2-b21d-ee4edfd25f50', 13, '40.00', 'deposito', '2023-11-12 01:57:15', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWsY3zMAyFaahQZy8gQGuo00r2Aj57AXsldVpDgBawOxeC+T9eLvlb89ozAiX5EhDSo/hIor/8DMxLMIv1Bz6nylxUsCezWbNEs3IbsllICWNdMx/kpsSHNfulhjtCxXpH1+X6C7gEN1182yJ/0ELCNvyay5D8mf4f8yGEnluon9dH5IdQnmgOQsx6pjd5DAeunAtOxJkX66ashFebspsJakguuqSDfeD14o14Z9dHPoIOIsgYypD9nsyaykg6SNHvl9kizRFq/JzoORxy+UptSmXiegcarQ6S9RuV2fr1Moelny09ht3VEPNLVgSvm2xMA3H58fWqG4Ijm9/peA4pQlKRcY6VU+lDUUHcpZORxLpzm62jQCpIsY0EMf1CfrH1sEUFh8x8QVW+gzkTVlJBQu2TPxkr9CzDqwwfw55gQQwL2ggWCg8hFaQIDQ1qH1V800fkp7BjnKhQxBtU/T6dBlJ0vfXM5paL0Yh0EA524v7YNnHrIWbQwd6WLsM5HQr5oLczPIZD4pMR040BfuJedfQcoo5Isolr3MSC3sX1EKLZ3VZ8bCM4QJmDFjqso1wGXpGR1z4VsIrvhfbFDvU45aKCvRS+fICBd2JlpIJEFX1nynAh1wd/kw52jFCQsXXJYx1YB3tbF6kFviN6EPqXDgoP4t5QBn1/UELcZKlcOFhC40BSdBAzw/qaN2ToQvcsOhjFvQfp2qLMq4p18PK3bVBmhZP8AmJaQ8dnNweYsBJiXkr4CX3HrxhaWAdFT8aUJSXcWz4vHfy7zz+OY4tEWvnjSwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/89028b95812f40ff8288ef314753ae835204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304857C', 'processamento'),
(145, 'fcc05d59-ec23-4161-8c54-cb208be5fd8a', 13, '40.00', 'deposito', '2023-11-12 02:02:47', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACVUlEQVRIieWWwa2sMAxFjVhkFxpAShvZ0RI0MAwNQEvZpY1IaYDssojwv4F5o7eM//YhhJiDlJHt62sT/eVrYN78OFM8p7hTZA4iqKnfMm/OXFM8fP8mIcRRalw9zVN8q/7IYvi2ZfVjl4tW8X+g4pSZ3TiwHNaIyjyFwZcX/Q6zCSKfu43f+5vkRli5R0KCprL4XwVtgwNi8XGfmLM52LytFJY1m8S08Ljy2LEMavs5Z3Gl80XbIIJ3ROYkPlV5qXH4BtUGO0ShICfeFc0WRQky6Iqextni2UMPSyYRRD4TVOT4bcchx+sRQzPUU9EUXgqvfDhzeCGEhBRkELTljc3hZHDIYUUgnlYuENWTEAlE+/eHGzt8YnNZIfQ4Ex3EyRci5FMGu8zXVLN61WpCzzJIKgyuP6egp3B3kxRW20wO7hE39/GQdtgxzuSTahfjwMFJIaK4u9gZdj9htsMMFzIp98mZ5FEREkGy1cGqhaKgvk9PmM0Qpv2ytSinhYeY7fNHrRACTiiHLbPqTzIf926GhJ9wTldI3XE9xiKAcDC8o4/MXsdQEEGtAuS0OighLBwTy+CAImLoWECYJxxJBrUtt2/T6tBKnD75bIVEGFjhhQ7ycG+zP43QDKFk5BNyAhwcrY+pNkMM+tPGy9Ze1gonBxG8c4J9A12Mr3iSCGJqH54vW1tpwwBVQQSxM+zWYNYPGUsXuphkEPvSBI7+rapmFsO3qgN3wV0NXAwPh2PxBB9fP8teK6T+8Gara0PE0pUyiWDNp+MLQ3/qsbI+O0M7/LvXP0dA7cYQ4YjzAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/04962347e26f4703b138599424d0a35e5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304C485', 'processamento'),
(146, '6af75ea7-b156-42a6-992d-65917b87a0dd', 13, '40.00', 'deposito', '2023-11-12 02:02:58', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACS0lEQVRIieWWva3rMAxGaahQZy1gQGuo00rxAv5ZwF5JndYQoAVuOhWC+T4mQd4rzddeIwjsk8AQyUNKRL/5csx7q0cwP7G4VJmLCo5kzjbN7JnNns1GShjrYc0Tj7HPGX9Qwz1Nc/Lynet/QCxpZb6Ir6iHZI5QOZUx9iH9DfMmRD4Bv59vkm9CeW3oC6EW09zKt6A3ocuoI/LJnMzezBV1cOD+CHI/MNIyDayFfiO/WXMRlChDLjqYac3+mVFNfyYPIVUQ5XgydOItlpHqmXXQJVosNEA+y5xRHVLBMYr/Z65YFX5akw661h+2LxYW8Zn5TEUFx2BOGGgn15AWvF8HEYJDRSLCKUPyhyUVpOif3ClOoiJGwWtJCkh9ld6HUfwTpjXr4CAOe6SCG8PnK5AKjlbmHhQaw7RY+FCUsB7oo1ZP5mfCtw4OqbjGO2ZIKCTvJB2UKMRkxMUJcemgk9bznHHLO9OqhGPAfV9bGRrmCczUQZe7+JAxvqZB2lkHRxnaMBlGSUd/9L4PbSGZun3mPlp6kA6+preEs6KPuG6BVBCPi6U5lcdby7cM92FCKaFTZUz+2N9Lug9xLdjvEq0JKqKPSAkrtssjYGGoCMFGFRxYsjEnDAFzRH+RDqKPNitGcesuyxxWwTeHA7ACdRkjqaBUM/KJLs5GujjpoOjXEA56eUIt3MfP2zDCHy/HlVAW+sigghg7C4LisrI/ohputl7YMRNOa30JSojzksWuNz1CxZmTP118F77yiWxggPu98T9JvgV/7/UHx6nMG2RCfC4AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/bde43eab405040c8911754ad76f7f0d35204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63048AD3', 'processamento'),
(147, 'c58d2b01-9af4-40ae-af81-686382041cde', 13, '40.00', 'deposito', '2023-11-12 02:03:39', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACUUlEQVRIieWWsY30IBCFxyIgMw0g0QYZLdkNeO0GcEtktIFEA3ZGYHn+x97eXer500OnC76VLObNezMQ/eVjmPdUJq22xmeqzEUER1JrKKQvomvRaiUhDBVwCXZuZc5qb2K4Jb4Dc7pMrv8DWUXPty8zyyGpLdnFl5Hcln7LfAihZ/T15+9H5Iew81SGVHC3SOW3oc8gRNgyrsS3dkf4vtJjOLQycD0TR6or1VsIDbvo1Z4dZyJ/zUkGydtFl1crk78oFNNIBAdcRrud60H1bPy552OIAwdurR5vV6xCOHq3Zd5goaDODFVJBIdMC6LkFTNNvkyhiKBpyM77p95Kd5AMDgkyws8IgrtDmZsQogpSnGhBLV5FLYRMFC7DCvPnCBd5EkHk6NbXQl3JV+LuKBFM3T8mI0fu8MWwDCIFe+KTawxoK4IshLmY7GAG/McE+HxTALkfzECtIur6OOQpHH0XE/NzZ5jqGoWQCJ+ymN5TsAtZk0kE8ZEhuxi6FHDU6osImoT41DNbKLMEdzYZ7CXAfsFFDUOiLiH0fCJKyb4yzcmdTDKI7CREgDfu24e0DKIirIwj8BquuX30fA4xvU3CvuMYemfpe6Q/hISZH6Cn2/vF7NBkcGB0E9sH4xdvDyw+EsFRVyyOrgZBGVi6iOCbW9MT1NuKOIsgZsjqEf+6M8NU8asdj2F/M7Q+/PvduIxeCAMqskNPMh48bz9IYVK3xr52K7ZYIinEaw2779ZdkFEXGcQQCH3n4sGJGUJeBvtLtaEj2Bpoivoyw3P4d88/9dC1dz6tckIAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/47f003a455c54793b72618696cb4ff555204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304AE3E', 'processamento'),
(148, 'aa2f0c7c-f781-4404-ba0f-81f34c5bd1a6', 13, '20.00', 'deposito', '2023-11-12 02:03:54', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACwElEQVRIie2Xwa2sMAxFjbLILjQQKW1kl5aYBoBpAFrKLm1ESgOwywLhfzPwNNL7K7N+CI3EQQqx43vtIfq7/r965ndV73r0qXA8TOBTjg2pRec+5lEzszs9iByHslZrvDXaTpVGz8sjPIfjldym8xCO4Slea+HquOJ9pmeYFDY4BjUHhKjmb/ACjHwvvnzv7zEI8Gf53CWeg3pzNt/DF+A+qZ3zC8de+dTqDGWT464eHbst4Be3WoKb5dh4heOaEmLF00FaLXLcR4vlh8CzR6zHFA+SYyy2kZ1S7mtZqAlilGMsPPo8RbczKoimpDY5Jq+Y7YRsUdmTO6mcctyxfWE9bV94mdyejkGOEeW7adoOd9bdKcemiRKFc/RQNuWeaZTjrro1Qkn5dSXJX2qQ4bYkjIEYbGq2x5scU3Cc8LItbOA0dAcvw9pClwZn5Y9XM5snuKtwXLivw/nDgCcuywMcs9EwOTe3WO1IdwZluDaLOsPHsTRk+vNJCTYBp817bL47aIR45VuIqXWhhVTzqmD7O0oZ7pOFV63QRETiYb1uk2N41VrpFVsz2Stvdw0KsUbpoaHxO6o1NW3RE6xOXU6NJe0Uyx7vLiXCHznCWhAlzBv7zcMDHN3moaoy4yOE9ni5pgyThxbhMUiSe0Pf4cc1JbhPeOItQAdoRKhoNctxlxAfMuRmjxLA5HJ1Eiluzr20QQOeB4nf/VKEDaH00A/LimaCpsSXf8twF+ENTZ1bixiZs+MDDIZZsg0sNOq231mO4ZcrTM4zuiKFo+c8yvGnlg80VTjEBN+iu8+LMDxmhb5jcyzMUKcvpxxjHpx9YS6YBCEpzAvzAwwdwG7h35iUNT51bVCMm1ElzNrwztwmskd41pivC7o9SqBP2TzA+N9AFlMYxu1Nw7TsIMdtRkYbCRkVtCHKehg5/rt+X/8Al09B85XUlLUAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/dec6e2ebe4874e599a0ad1b6782b95fc5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***630444F7', 'processamento');
INSERT INTO `transacoes` (`id`, `transacao_id`, `usuario`, `valor`, `tipo`, `data_hora`, `qrcode`, `code`, `status`) VALUES
(149, '7f93f0c0-7ccd-4312-bec4-65087aa16b66', 13, '40.00', 'deposito', '2023-11-12 02:04:02', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACU0lEQVRIieWWva3jMBCER1DATGqAgNpgxpasBvTTgNSSMrZBgA3IGQNCe0PZ916qvfQMgbA/A2vvzwwX+J9fvcjmbXMMay5AEokq2KHdg+2c7Fku0y5QQp9WQed42ia0e1bDxZTOt+9gXyb9A9yQTi+XG3bRQ7QbMB6xc+16/Kb5ENZ6uvTz/Bb5GbzDWrjYB36MPw19CPs87MewB7l8y6QuE1WwQ+xzaUKZHJuC1/dXnsI+DGtoL5SXiS/EyUcVhI9ziKzqmhncjgdUsAnprNVgWI50kiPq4FHYEU7jZCgHwEEHs5yOgxTHMIjYOUQVBEqHWskxpAt8oIK9DO8Qm8yATI15RR08ylTrUMdpAuZDCTNFlN45dobVaDevg523dyvTyXTMsBgdBERymYUndcR51kHKpw8Fhict6KMmBYRLVUeZZ+lM+mT0HHb+HuOjRmMxa1lUkFkgzrf3boYZaSEmZ1ErSfsaFuggai+EHrIYvAxHK6ogi8mwnaEVsCO0I6ggMFzgtVVvLl4Bf1v8FDasoWfMOB52lO8sPYfwLR17zoX+P2Z5C1SwD9QOv5LTFPhh+Y7iU8g3J+dQqm/PwlsMSmip4qU2NNWGOiXknhDsfAwb4svY8SOEx7CROAqdn/NQTXgNUEFqZxW6ULXQPsvHwZ7DWlKpkTvDnYFcB2/np3OmPdS9ZQ9QwXtfilXLntcQFR110N8ZVf1a+thXxRpYW8m1gdHcPVdKyOuSe85UJVD/mw5yX/KWfTzBtaFdPFSQ9dyljHVP47bJYY4q+P++/gCT5HJLxbfx9AAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/4f839f2505b84667990ac6839533e6295204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63043A7A', 'processamento'),
(150, '5c1f3724-8efc-4d1c-bdb9-49f14734ffe0', 13, '60.00', 'deposito', '2023-11-12 02:04:24', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACWElEQVRIieWWP470IAzFHaWggwsgcQ06rjS5QP5cYHIlOq6BxAUmXQoUf49svt0Wb7vRiJn5KULYfn6G6C8/hnlPvCWaeHxTYc4iqGncE77dSnVK40pCGMpb0ZTcO1iTxv38DTTsNsbm5Rdw9dkkvkKmIIc0vlU5zmzO8UM/YXZC5PPty/fnO8mdEM9wMsdsop34p6Cd0ERePZHiyzO3mmYRJG91+1tNHD+ejySD5nQfoiXVhcub3PV1pG6oVR7Okc86Bzsw3pFB8u7ydSarqaKmqKwIDmzvtRxcNihBCWF0R8wTIkpWBxyPRFCHas48Rd6iYx63KIS+bNEiLUjskcYtyaBJeYh1SNbEslLTgwhq7/ZIs8/wECRWexkkn1+qTrFS4P1EI2cR1IEv5SDCS9kXjsQyOLQOQhqzYcSFVQgh4GBnghHhVBAziSA2McmtoXXxjPWrj/ph5Iu4RUS88xNRP2z6P8sB/2eayT357IYglxoPGC9mh8rLSTLI9QU9wDwDDJyWKIXlo+qL4L28wn5DFsEh1dmPO8NDbu+9pdgPyZcrIC12YQthTDGLoFY0qxbI6zYEfmytFzb3JpQS0M7qfzm6oW7ubREXRAW4KhmkpmGUsg5naXeGuxz9cICSUcSUZ9/Gx5FkUGPD5K42ufIc2iqCtxrvXmb+wAafc/ZC/Ma8mGLr4uXEnUEG230JgyNm7Sv5p4sFEL4Rxs9XRM3BSAo3CBjugX4M7gpZCtE7S2yD74IJPJOrG+K+RLir2GYgcURTiGC7qcIHVNXKtqH5tHYv/LvPPx2csCiTt8AaAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/31a1e8e1e4c84c8eb70c7a6af798240d5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63045808', 'processamento'),
(151, '43d3395b-6b18-4ec5-bf7a-17cca6dfe5a1', 13, '20.00', 'deposito', '2023-11-12 02:08:00', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACuklEQVRIie2XQY7kIAxFHbFgRy6AxDXYcaXkAunkAsmV2HENJC6Q2rFA8XyqqqdGM5t21oNKpfRLyQkf+9tN9H/9u0bmPeQxWtL4q5nAlxwbUiuVR3In2SG5y4PIcSi7zkNqc1IHt8Xzfg8TTd7tgVePi5v4wHtpx2wnb+kexi59I43A7hFx/dn8z3HX25fP549j+DnGGpgvjajWhDx9Dl+AR+4yG6+42rnyI752KcPGty+mOdql3yknufUG1rz12BAbb2qNL5ccU0BgHLvilJHFW1S7HCPYSm5LamO11TxEdcrxmOxQ1RYzeRSE2tJLchkeojsqduaOaIdYmMt6Aycin+faRdqSndPr0GR4rLyG3JXuaimOvMrx0LOmzUii2AyOPbg7GAJr1HSb4BPRPWo2cjxWJI67qKy4SfxI72qQ4QhgjXZbxU07szvl2Oi2kB0Z51Y2fKNA5RgGc+lyRHgV9LZfXE45HqFNr6cCx0KNGsKjxNh0f6IldJc66ePfIjxE9CJUg4NrngGW+V0NEmw8X7BwbLHm7jTvapDhIeIDeZA1Cq0AD7nkGLF7Dwmt/wQmkdwux+jMk25GA3TJl98nL8LBnbjU9iu1KfRH7Tewhlk+N4onkHpUmuR4YLgU4imo/qgN91c5Nh4e07Nm9YWrQoO9bmBSR0I15Dk2OBZa3CnHcM2Z85zsmLpXIfwqx90sY556f7ZEeeRsbmCN/EV999kHaiEHTzmGUyI25oWj4gKH/35vGUaTR/LqcgYLqYZkFzkeK/RuyERMHEuA3t8NRoLf58ZwCAxQmJ7ePijCCAbnxkj4nMJenifGfR7E0PFsj5PPCzW6gXFQ3ah64lzURr6Jd/9MH8K4jW+338JHpCnkmaF9I/+SSoghNiavALV6f0OjnuT4+R9MH7TR1k4UelW7HP9ff69fCLICovWLHbcAAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/03e2094b3dba43cba1dd6ccd5091847f5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304C35A', 'processamento'),
(152, 'fa55c1a5-48d5-4866-be86-4e2a3a33c1c0', 13, '40.00', 'deposito', '2023-11-12 02:51:04', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACtklEQVRIie2Wv62kMBDGBxE4sxtAchvO3BI0sAsNQEvO3IYlNwCZA4u5z/D2vdNdckN8FtrgZ8k7f78Zov/n72OYl1hHP2iXT6ra8ynHmvrVJRMsh0rKng5Ejn1ePZ6sWg3vQi/H6yM8qzpFuysafR2f4q30XCyXfvaJnmHqNx7eEYxP188/zgsw4r26/PP9pEGA201IHfPs68SD/i35/45N7HefuuZo7QJKIO9y3BWkPb0LbuqrAfsER14VfnuEWbvaxXw+wAWJgl00BVxeNsoxeTsTkgYz80qZH2Gt0qjSO9jdMRd6x9tLGUYzLaG+2R6hP6I96asgRJg8nh+miC8hbAenUY41Mepu9cPo08SZy0chJNgEdFVzcYvNxlndbwtxvDrS5SPk06UX3X0pxFw1IVEIOSoRUvHpNAnuSl5CMqXf3ZXA7/qWYI3qYwQsb6FOl9icckyKme3qLfPQeqvZ+wAnCP/q7Ozu8smnHMPLLeDDDeJUMU9WOTYtTkPHeXbV8ICk7XJM/vKSoFW8Q8v5y24RNkwvsgfjTyCZkF77CCNI0BjUjj0Kz4iZHEOoOpimoFL91gow0QNMdgs9x/pybSgt5Y63DKMb4GjTKoViTOajVSJMlI/YH9AGtlg96HumSXAX0+hSB9njNklG369ybGLelW0TXtmttcITTKqNemjMhkosgymV5FhfKtUmPFVTsMLYVY5Nm67Yv4DtERO0fJTjK0j4bYprIprjlhkhZppaf7eVcFZ54bsGZRh6CXk4oVUFFZSwCp1yTNciNlOePUF3ETAtx3hsi7UNeYeeSK+PVokwHl5iXtpEQk+0feF8gLHeOj4VvBy0ah32eoQxnzHnTeADUWcaH+EFXUVXyJHAWPUDjB0ZUxELO9YxXKqvt0W47ch0bQowTeWjJC3H/8+f5xfC9myhu1yakwAAAABJRU5ErkJggg==', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/20ccd756637c4d4f828d5fc3740f88e25204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***6304D1AB', 'processamento'),
(153, 'ad4d30aa-453d-4ffd-92c1-bca2e4020b94', 37, '40.00', 'deposito', '2023-11-13 00:42:54', 'iVBORw0KGgoAAAANSUhEUgAAAJ8AAACfAQMAAADd1ZmjAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACTklEQVRIieWWMc7jIBCFB7mggwsg+Rp0XMm5gGNfwL4SHddA4gJ2R4E8+3Cif7f0bPujyHE+RSNm3rwBot+8LPOaaA5u6r8KcxZBQ8Oe2hSy4qbSsJAQhrKE4azjGcuhh72KIV4m3d5c9lT+A66Jz8pXGJYgh8goDpfONtE7/pPmM4h6br78fH6K/BBiqUivmG0sZ/or6ENouXBtxjMnXrR7JRk0AXsYl5CncGvhZbD3TyWbeGVnAh8kg3cZyxXGi5hjIynkrxykyx6hqQwqxEzuFRuMoNASOosgmuGsedak2FHgi4RQZ+Md+ZFjfqey3Vt6DlVEL7VJO6PHDWpGGTQeSQ2HxxwoCGs+W3oMVS0rAw7Mbdbu0wzPodEEC9s4bgQtyhGyCCru7xsqGVqX42ONx9DWbOu4pmz0sPhsP958DJHRpsvhMT2crXiSCBLBv8PJ3cXohNtWAgg1L9/gIKwDzyqDhujNIxTZ+h8whEkGMTbxFdyLEdlNXgZVRRbuVRE8v2P79udjCPOuqSx+RDprdVJoq5s9r32MYICjJjKImBtUAE8N42j2WQQV48Sk+8TElr4DUACRji4nN8tOxfytkgA6dY8g1FNFGFkGMb13xuRHFzkMhMnLYM8o8s6MExNjZE8yaFDPkKHIpfsJcgUZ7IJGdAJcjK6AoFkEcWrjvMPpuQVce7qyIojhv/juYuOHpU9yIbzjTDj1Uq8MVzHcmabQekY9Mkkh7D93TW9HVCHsd0XEHA/cOrh8fPQc9vuShou7rDuM4GXw964/Y5GdzlWHyk8AAAAASUVORK5CYII=', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/ab9c9fbb590643708e3cfa185a6ce5055204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63041A02', 'processamento'),
(154, '7f17687d-a7e8-4b94-8987-0b7c68cc4dbf', 37, '40.00', 'deposito', '2023-11-13 00:42:55', 'iVBORw0KGgoAAAANSUhEUgAAAKsAAACrAQMAAAAjJv5aAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAACu0lEQVRIie2WQa7rIAxFHTFglmwAiW0wY0vJBtp0A8mWmLENJDaQzhig+F/S9lV6f2TGD0WVeiIRjK+vTfS3/l8T817MTau92JPS6PmU45HURmmIvFHeXD4diBz7vOmMjQ+yp0s3h/dd2NvNq00T6TT34kfg1WcuavWJ+jCpne2z5NXXO36/wQsw7hs39H2+aRBgrCGme7GrM0R2+yZfgKfADzYDM5d8aDz2lGPc8Y3siuQHmkp+cO7AQ7FPTlNIE5vZ15EqyTFpmp3B9pu77lu/AxXhofAjWmRsKup0/Ix8duAIySgu1w1pXl0a5ZhIHVRnPJ5mDRXw0YE1DYxrTkj7HtTpVQeeWO0xHx7nsu0jut7keOCK24JwuLTMP7mOHTigrPnwdQnwCbPEt3xEmJAunLGgplETdXknTYjJPkNaQlMfPIZjHeV4QnARNpPa0ZqQee3A7URpirbVpbc7p1mOR5ew/c2py6vUCRfvwM37eWe4FM3UNNiDNcqam2s6MxWI6FUNMgztIMolwKzMwkjgT7mKcFoKrhmOVdGLzuYWHRgChEO0ang2Eb3qUorNPaIUYHuImDf/iVKC0cQObRDlqVtZD/Fd8yI8enRUQx7ui1ZwlZccY7MTduXRSfARTB80yjEEeEdv9BUbQ0SP+JKPEOMf+rwzl3FWJH+W4yEkItx3bg4RcFJ79GBcDzSYOZh74MO9W50Ij2SQN8hniml0aGh1lOMhQHrYXq26fYToE6UIM908PAb1lK7Z8OVVMoymCn9CR0ITWFq3fzcYEW5vQsMrDKZNH5/uKsGwhPVS4oayRj25n+FMgFtkvrbxx9E9IP/56MAerew1maK24N8/A6sMrx4TB6b+hMEfVdWJNT+b+pB2/H4cQoQRJcSLcRvbk3qEvMpxm5GhZYzbmBQCWkod5fhv/V7/AA3hfgJuwTSmAAAAAElFTkSuQmCC', '00020101021226790014br.gov.bcb.pix2557brcode.starkinfra.com/v2/09af84b96baf438cb15002fb50e809fe5204000053039865802BR5925Suitpay Instituicao de Pa6007Goiania62070503***63044A57', 'processamento'),
(155, 'INTERNO 13112023062250', 39, NULL, 'deposito', '2023-11-13 06:22:50', NULL, NULL, 'pago');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `nascimento` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `afiliado` varchar(255) DEFAULT NULL,
  `endereco` text,
  `cep` text,
  `chave_pix` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `nascimento`, `senha`, `cpf`, `telefone`, `email`, `afiliado`, `endereco`, `cep`, `chave_pix`) VALUES
(39, 'influencer01~04', '1247920231113', '', '8434da3ff4914bb1b1a0dae2f692a2b3', '081.039.861-35', '(67) 99184-5708', 'influencer01~04@gmail.com', '', NULL, NULL, NULL),
(40, 'Vinicius', '1105520231113', '', '202cb962ac59075b964b07152d234b70', '549.879.821-68', '(12) 39182-3091', 'garotao@gmail.com', '', NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Índices para tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ezzebank`
--
ALTER TABLE `ezzebank`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `financeiro`
--
ALTER TABLE `financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fiverscan`
--
ALTER TABLE `fiverscan`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `populares`
--
ALTER TABLE `populares`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `suitpay`
--
ALTER TABLE `suitpay`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `financeiro`
--
ALTER TABLE `financeiro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1344;

--
-- AUTO_INCREMENT de tabela `populares`
--
ALTER TABLE `populares`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
