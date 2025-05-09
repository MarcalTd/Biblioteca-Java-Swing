-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 09-Maio-2025 às 18:39
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `autentificacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) DEFAULT NULL,
  `data_Criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `data_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_login` (`login`(250))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `CPF`, `RG`, `idade`, `data_criacao`, `login`, `senha`) VALUES
(5, 'Vinicius', '4860440080', '532969492', 56, '2023-11-23 00:00:00', 'user', 'user'),
(7, 'Joao', '45465456', '468489789', 56, '2023-11-23 00:00:00', 'joazinho', '1234'),
(8, 'Joao', '45465456', '468489789', 56, '2023-11-23 00:00:00', 'joazinho', '1234'),
(9, 'teste', '25646456', '6546848', 21, '2023-11-23 00:00:00', 'teste1', 'teste1'),
(10, 'teste', '25646456', '6546848', 21, '2023-11-23 00:00:00', 'teste1', 'teste1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `data_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `id_login` (`login`(250))
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `CPF`, `RG`, `idade`, `data_criacao`, `login`, `senha`) VALUES
(1, 'Vinicius', '48604400800', '532969492', 22, '2023-11-23 00:00:00', NULL, NULL),
(2, 'Marcal', '71886915920', '532969492', 22, '2023-11-23 00:00:00', 'admin', 'admin'),
(3, 'Vinicius', '48604400800', '532969492', 43, '2023-11-23 00:00:00', 'Vinicius', '1234'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'teste', '2514544', '4545456456', 21, '2023-11-23 00:00:00', 'teste', 'admin2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

DROP TABLE IF EXISTS `livro`;
CREATE TABLE IF NOT EXISTS `livro` (
  `id_livro` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(300) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `data_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_categoria` varchar(200) DEFAULT NULL,
  `autor` varchar(280) DEFAULT NULL,
  `editora` varchar(280) DEFAULT NULL,
  `titulo` varchar(280) DEFAULT NULL,
  `nota` int DEFAULT NULL,
  PRIMARY KEY (`id_livro`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `descricao`, `valor`, `data_criacao`, `id_categoria`, `autor`, `editora`, `titulo`, `nota`) VALUES
(9, 'teste', '20', '2023-11-23 00:00:00', 'teste', 'teste', 'teste', 'teste', 10),
(10, 'teste', '20', '2021-11-21 00:00:00', 'terror', 'teste', 'teste', 'Teste', 10),
(8, 'Um jovem rapaz apaixonado queria um romance onde tinha o objetivo de se casar com a mulher de seus sonhos', '32', '2011-10-22 00:00:00', 'Romance', 'Vinicius', 'java', 'uma aventura Feliz', 3),
(11, '', '25', NULL, 'saassa', 'assaassa', 'assaasas', 'assasa', 3),
(12, '', '36', '2056-10-22 00:00:00', 'asasas', 'asasasa', 'assaas', 'asasa', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `id_funcionario` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_livro` int DEFAULT NULL,
  `datainicio` datetime DEFAULT NULL,
  `datafim` datetime DEFAULT NULL,
  `data_criacao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_reserva`),
  KEY `id_funcionario` (`id_funcionario`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_livro` (`id_livro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
