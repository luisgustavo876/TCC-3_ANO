-- sitio primavera

-- quadra1
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 2', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 3', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 4', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 5', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 6', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 7', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 8', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 9', 1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 10',1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 11',1, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 12',1, 0, 0, 0, 0);

-- Inserir os ramais para a Quadra 2 no sitio "Primavera"-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/10/2023 às 03:58
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `resina`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `quadras`
--

CREATE TABLE `quadras` (
  `quadra_id` int(11) NOT NULL,
  `sitio_id` int(11) DEFAULT NULL,
  `nome_quadra` varchar(255) NOT NULL,
  `id_sitio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quadras`
--

INSERT INTO `quadras` (`quadra_id`, `sitio_id`, `nome_quadra`, `id_sitio`) VALUES
(1, 1, 'Quadra 1', NULL),
(2, 1, 'Quadra 2', 1),
(3, 1, 'Quadra 3', 1),
(4, 1, 'Quadra 4', 1),
(5, 1, 'Quadra 5', 1),
(6, 1, 'Quadra 6', 1),
(7, 1, 'Quadra 7', 1),
(8, 1, 'Quadra 8', 1),
(9, 1, 'Quadra 9', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ramais`
--

CREATE TABLE `ramais` (
  `ramal_id` int(11) NOT NULL,
  `quadra_id` int(11) DEFAULT NULL,
  `nome_ramal` varchar(255) NOT NULL,
  `N` int(11) NOT NULL,
  `V` int(11) NOT NULL,
  `F` int(11) NOT NULL,
  `Seca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ramais`
--

INSERT INTO `ramais` (`ramal_id`, `quadra_id`, `nome_ramal`, `N`, `V`, `F`, `Seca`) VALUES
(13, 1, 'Ramal 2', 0, 0, 0, 0),
(14, 1, 'Ramal 3', 0, 0, 0, 0),
(15, 1, 'Ramal 4', 0, 0, 0, 0),
(16, 1, 'Ramal 5', 0, 0, 0, 0),
(17, 1, 'Ramal 6', 0, 0, 0, 0),
(18, 1, 'Ramal 7', 0, 0, 0, 0),
(19, 1, 'Ramal 8', 0, 0, 0, 0),
(20, 1, 'Ramal 9', 0, 0, 0, 0),
(21, 1, 'Ramal 10', 0, 0, 0, 0),
(22, 1, 'Ramal 11', 0, 0, 0, 0),
(23, 1, 'Ramal 12', 0, 0, 0, 0),
(24, 2, 'Ramal 1', 0, 0, 0, 0),
(25, 2, 'Ramal 2', 0, 0, 0, 0),
(26, 2, 'Ramal 3', 0, 0, 0, 0),
(27, 2, 'Ramal 4', 0, 0, 0, 0),
(28, 2, 'Ramal 5', 0, 0, 0, 0),
(29, 2, 'Ramal 6', 0, 0, 0, 0),
(30, 3, 'Ramal 1', 0, 0, 0, 0),
(31, 3, 'Ramal 2', 0, 0, 0, 0),
(32, 3, 'Ramal 3', 0, 0, 0, 0),
(33, 3, 'Ramal 4', 0, 0, 0, 0),
(34, 3, 'Ramal 5', 0, 0, 0, 0),
(35, 3, 'Ramal 6', 0, 0, 0, 0),
(36, 4, 'Ramal 1', 0, 0, 0, 0),
(37, 4, 'Ramal 2', 0, 0, 0, 0),
(38, 4, 'Ramal 3', 0, 0, 0, 0),
(39, 4, 'Ramal 4', 0, 0, 0, 0),
(40, 4, 'Ramal 5', 0, 0, 0, 0),
(41, 4, 'Ramal 6', 0, 0, 0, 0),
(42, 5, 'Ramal 1', 0, 0, 0, 0),
(43, 5, 'Ramal 2', 0, 0, 0, 0),
(44, 5, 'Ramal 3', 0, 0, 0, 0),
(45, 5, 'Ramal 4', 0, 0, 0, 0),
(46, 5, 'Ramal 5', 0, 0, 0, 0),
(47, 5, 'Ramal 6', 0, 0, 0, 0),
(48, 5, 'Ramal 7', 0, 0, 0, 0),
(49, 5, 'Ramal 8', 0, 0, 0, 0),
(50, 5, 'Ramal 9', 0, 0, 0, 0),
(51, 5, 'Ramal 10', 0, 0, 0, 0),
(52, 5, 'Ramal 11', 0, 0, 0, 0),
(53, 5, 'Ramal 12', 0, 0, 0, 0),
(54, 5, 'Ramal 13', 0, 0, 0, 0),
(55, 5, 'Ramal 14', 0, 0, 0, 0),
(56, 5, 'Ramal 15', 0, 0, 0, 0),
(57, 5, 'Ramal 16', 0, 0, 0, 0),
(58, 5, 'Ramal 17', 0, 0, 0, 0),
(59, 5, 'Ramal 18', 0, 0, 0, 0),
(60, 5, 'Ramal 19', 0, 0, 0, 0),
(61, 5, 'Ramal 20', 0, 0, 0, 0),
(62, 5, 'Ramal 21', 0, 0, 0, 0),
(63, 6, 'Ramal 1', 0, 0, 0, 0),
(64, 6, 'Ramal 2', 0, 0, 0, 0),
(65, 6, 'Ramal 3', 0, 0, 0, 0),
(66, 6, 'Ramal 4', 0, 0, 0, 0),
(67, 6, 'Ramal 5', 0, 0, 0, 0),
(68, 6, 'Ramal 6', 0, 0, 0, 0),
(69, 6, 'Ramal 7', 0, 0, 0, 0),
(70, 6, 'Ramal 8', 0, 0, 0, 0),
(71, 6, 'Ramal 9', 0, 0, 0, 0),
(72, 6, 'Ramal 10', 0, 0, 0, 0),
(73, 7, 'Ramal 1', 0, 0, 0, 0),
(74, 7, 'Ramal 2', 0, 0, 0, 0),
(75, 7, 'Ramal 3', 0, 0, 0, 0),
(76, 8, 'Ramal 1', 0, 0, 0, 0),
(77, 8, 'Ramal 2', 0, 0, 0, 0),
(78, 8, 'Ramal 3', 0, 0, 0, 0),
(79, 8, 'Ramal 4', 0, 0, 0, 0),
(80, 8, 'Ramal 5', 0, 0, 0, 0),
(81, 8, 'Ramal 6', 0, 0, 0, 0),
(82, 9, 'Ramal 1', 0, 0, 0, 0),
(83, 9, 'Ramal 2', 0, 0, 0, 0),
(84, 9, 'Ramal 3', 0, 0, 0, 0),
(85, 9, 'Ramal 4', 0, 0, 0, 0),
(86, 9, 'Ramal 5', 0, 0, 0, 0),
(87, 9, 'Ramal 6', 0, 0, 0, 0),
(88, 9, 'Ramal 7', 0, 0, 0, 0),
(89, 9, 'Ramal 8', 0, 0, 0, 0),
(90, 9, 'Ramal 9', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sitios`
--

CREATE TABLE `sitios` (
  `sitio_id` int(11) NOT NULL,
  `nome_sitio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sitios`
--

INSERT INTO `sitios` (`sitio_id`, `nome_sitio`) VALUES
(1, 'primavera'),
(2, 'matao'),
(3, 'vileiro'),
(4, 'acacia'),
(5, 'enxovia'),
(6, 'sta-lucia'),
(7, 'bela-vista'),
(8, 'nsa');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `quadras`
--
ALTER TABLE `quadras`
  ADD PRIMARY KEY (`quadra_id`),
  ADD KEY `sitio_id` (`sitio_id`);

--
-- Índices de tabela `ramais`
--
ALTER TABLE `ramais`
  ADD PRIMARY KEY (`ramal_id`),
  ADD KEY `quadra_id` (`quadra_id`);

--
-- Índices de tabela `sitios`
--
ALTER TABLE `sitios`
  ADD PRIMARY KEY (`sitio_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `quadras`
--
ALTER TABLE `quadras`
  MODIFY `quadra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `ramais`
--
ALTER TABLE `ramais`
  MODIFY `ramal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `sitios`
--
ALTER TABLE `sitios`
  MODIFY `sitio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `quadras`
--
ALTER TABLE `quadras`
  ADD CONSTRAINT `quadras_ibfk_1` FOREIGN KEY (`sitio_id`) REFERENCES `sitios` (`sitio_id`);

--
-- Restrições para tabelas `ramais`
--
ALTER TABLE `ramais`
  ADD CONSTRAINT `ramais_ibfk_1` FOREIGN KEY (`quadra_id`) REFERENCES `quadras` (`quadra_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 1', 2, 0, 0, 0, 0);

-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 2', 2, 0, 0, 0, 0);

-- Ramal 3
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 3', 2, 0, 0, 0, 0);

-- Ramal 4
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 4', 2, 0, 0, 0, 0);

-- Ramal 5
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 5', 2, 0, 0, 0, 0);

-- Ramal 6
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 6', 2, 0, 0, 0, 0);


-- Inserir os ramais para a Quadra 3 no sitio "Primavera"

-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 1', 3, 0, 0, 0, 0);

-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 2', 3, 0, 0, 0, 0);

-- Ramal 3
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 3', 3, 0, 0, 0, 0);

-- Ramal 4
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 4', 3, 0, 0, 0, 0);

-- Ramal 5
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 5', 3, 0, 0, 0, 0);

-- Ramal 6
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 6', 3, 0, 0, 0, 0);


-- Inserir os ramais para a Quadra 4 no sitio "Primavera"

-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 1', 4, 0, 0, 0, 0);

-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 2', 4, 0, 0, 0, 0);

-- Ramal 3
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 3', 4, 0, 0, 0, 0);

-- Ramal 4
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 4', 4, 0, 0, 0, 0);

-- Ramal 5
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 5', 4, 0, 0, 0, 0);

-- Ramal 6
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 6', 4, 0, 0, 0, 0);


-- Inserir os ramais para a Quadra 5 no sítio "Primavera"
-- Repita para os ramais 2 a 21, mudando o nome do ramal e o ID da quadra.

-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 1', 5, 0, 0, 0, 0);

-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 2', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 3', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 4', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 5', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 6', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 7', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 8', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 9', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 10', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 11', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 12', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 13', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 14', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 15', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 16', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 17', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 18', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 19', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 20', 5, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 21', 5, 0, 0, 0, 0);



-- Repita até o Ramal 21
-- ...

-- Inserir os ramais para a Quadra 6 no sítio "Primavera"
-- Repita para os ramais 2 a 10, mudando o nome do ramal e o ID da quadra.

-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 1', 6, 0, 0, 0, 0);

-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 2', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 3', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 4', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 5', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 6', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 7', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 8', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 9', 6, 0, 0, 0, 0);
-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id,  N, V, F, Seca) VALUES ('Ramal 10', 6, 0, 0, 0, 0);


-- Inserir os ramais para a Quadra 7 no sítio "Primavera"
-- Repita para os ramais 2 a 3, mudando o nome do ramal e os valores de N, V, F e Seca.

-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 1', 7, 0, 0, 0, 0);

-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 2', 7, 0, 0, 0, 0);

-- Ramal 3
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 3', 7, 0, 0, 0, 0);

-- Inserir os ramais para a Quadra 8 no sítio "Primavera"
-- Repita para os ramais 2 a 6, mudando o nome do ramal e os valores de N, V, F e Seca.

-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 1', 8, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 2', 8, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 3', 8, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 4', 8, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 5', 8, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 6', 8, 0, 0, 0, 0);
-- Repita até o Ramal 6
-- ...

-- Inserir os ramais para a Quadra 9 no sítio "Primavera"
-- Repita para os ramais 2 a 14, mudando o nome do ramal e os valores de N, V, F e Seca.

-- Ramal 1
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 1', 9, 0, 0, 0, 0);

-- Ramal 2
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 2', 9, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 3', 9, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 4', 9, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 5', 9, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 6', 9, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 7', 9, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 8', 9, 0, 0, 0, 0);
INSERT INTO ramais (nome_ramal, quadra_id, N, V, F, Seca) VALUES ('Ramal 9', 9, 0, 0, 0, 0);

