-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Out-2017 às 03:29
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdsispre`
--
CREATE DATABASE IF NOT EXISTS `bdsispre` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdsispre`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbano`
--

CREATE TABLE `tbano` (
  `id_ano` int(3) NOT NULL,
  `ano` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbavaliacao_economia`
--

CREATE TABLE `tbavaliacao_economia` (
  `descricao` varchar(100) DEFAULT NULL,
  `id_quesito_economia` int(3) NOT NULL,
  `id_avaliacoes` int(2) NOT NULL,
  `id_mes` int(3) NOT NULL,
  `id_pontuacao` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbavaliacao_higiene`
--

CREATE TABLE `tbavaliacao_higiene` (
  `descricao` varchar(100) DEFAULT NULL,
  `id_quesito_higiene` int(3) NOT NULL,
  `id_avaliacoes` int(2) NOT NULL,
  `id_mes` int(3) NOT NULL,
  `id_pontuacao` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbavaliacao_material`
--

CREATE TABLE `tbavaliacao_material` (
  `descricao` varchar(100) DEFAULT NULL,
  `id_quesito_material` int(3) NOT NULL,
  `id_avaliacoes` int(2) NOT NULL,
  `id_mes` int(3) NOT NULL,
  `id_pontuacao` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbavaliacao_refeicao`
--

CREATE TABLE `tbavaliacao_refeicao` (
  `descricao` varchar(100) DEFAULT NULL,
  `id_quesito_refeicao` int(3) NOT NULL,
  `id_avaliacoes` int(2) NOT NULL,
  `id_mes` int(3) NOT NULL,
  `id_pontuacao` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbavaliacao_seguranca`
--

CREATE TABLE `tbavaliacao_seguranca` (
  `descricao` varchar(100) DEFAULT NULL,
  `id_quesito_seguranca` int(3) NOT NULL,
  `id_avaliacoes` int(2) NOT NULL,
  `id_mes` int(3) NOT NULL,
  `id_pontuacao` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbempresa`
--

CREATE TABLE `tbempresa` (
  `id_empresa` int(3) NOT NULL,
  `nome_empresa` varchar(50) NOT NULL,
  `nome_fantasia` varchar(50) NOT NULL,
  `cnpj` varchar(17) NOT NULL,
  `ativo` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbempresa`
--

INSERT INTO `tbempresa` (`id_empresa`, `nome_empresa`, `nome_fantasia`, `cnpj`, `ativo`) VALUES
(1, 'Sispre', 'TCC', '42.505.17/1234-01', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbficha_mes`
--

CREATE TABLE `tbficha_mes` (
  `id_ficha_mes` int(5) NOT NULL,
  `horario_servico` varchar(5) NOT NULL,
  `horario_entrada` varchar(5) NOT NULL,
  `horario_saida` varchar(5) NOT NULL,
  `id_funcionario` int(4) NOT NULL,
  `id_mes` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfuncionario`
--

CREATE TABLE `tbfuncionario` (
  `id_funcionario` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `rg` char(12) NOT NULL,
  `cpf` char(14) NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `data_nasc` date NOT NULL,
  `telefone` varchar(17) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `data_admissao` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `id_funcao` int(2) NOT NULL,
  `id_empresa` int(3) NOT NULL,
  `tipo_funcionario` set('','Estagiário','Terceirizado') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbfuncionario`
--

INSERT INTO `tbfuncionario` (`id_funcionario`, `nome`, `rg`, `cpf`, `sexo`, `data_nasc`, `telefone`, `email`, `pais`, `estado`, `cidade`, `bairro`, `rua`, `cep`, `data_admissao`, `ativo`, `id_funcao`, `id_empresa`, `tipo_funcionario`) VALUES
(1, 'Lucas Lima', '52.405.204-x', '982.394.394-33', 'Masculino', '1996-05-08', '+55(11)91234-1234', 'lucas@teste.com', 'Brasil', 'São Paulo', 'SP', 'A. E. Carvalho', 'Irara', '08220-200', '2017-01-30', b'1', 1, 1, 'Estagiário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfuncoes`
--

CREATE TABLE `tbfuncoes` (
  `id_funcao` int(2) NOT NULL,
  `funcao` varchar(24) NOT NULL,
  `salario` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbfuncoes`
--

INSERT INTO `tbfuncoes` (`id_funcao`, `funcao`, `salario`) VALUES
(1, 'Ladrão de Barrinha', '500.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmes`
--

CREATE TABLE `tbmes` (
  `id_mes` int(3) NOT NULL,
  `nome_mes` int(9) NOT NULL,
  `id_ano` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpontuacao`
--

CREATE TABLE `tbpontuacao` (
  `id_pontuacao` int(1) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `pontuacao` varchar(2) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpontuacao_economia`
--

CREATE TABLE `tbpontuacao_economia` (
  `id_quesito_economia` int(3) NOT NULL,
  `id_empresa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpontuacao_higiene`
--

CREATE TABLE `tbpontuacao_higiene` (
  `id_quesito_higiene` int(3) NOT NULL,
  `id_empresa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpontuacao_material`
--

CREATE TABLE `tbpontuacao_material` (
  `id_quesito_material` int(3) NOT NULL,
  `id_empresa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpontuacao_refeicao`
--

CREATE TABLE `tbpontuacao_refeicao` (
  `id_quesito_refeicao` int(3) NOT NULL,
  `id_empresa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpontuacao_seguranca`
--

CREATE TABLE `tbpontuacao_seguranca` (
  `id_quesito_seguranca` int(3) NOT NULL,
  `id_empresa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpontuacao_total`
--

CREATE TABLE `tbpontuacao_total` (
  `id_pontuacao_total` int(4) NOT NULL,
  `pontuacao_total` varchar(3) NOT NULL,
  `poncentagem_desconto` varchar(2) NOT NULL,
  `id_mes` int(3) NOT NULL,
  `id_empresa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtodas_avaliacoes`
--

CREATE TABLE `tbtodas_avaliacoes` (
  `id_avaliacoes` int(2) NOT NULL,
  `tipo_avaliacao` varchar(15) NOT NULL,
  `descricao_avaliacao` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuario`
--

CREATE TABLE `tbusuario` (
  `id_usuario` int(2) NOT NULL,
  `acesso_total` bit(1) NOT NULL,
  `usuario_login` varchar(30) NOT NULL,
  `usuario_senha` varchar(30) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `id_funcionario` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbano`
--
ALTER TABLE `tbano`
  ADD PRIMARY KEY (`id_ano`);

--
-- Indexes for table `tbavaliacao_economia`
--
ALTER TABLE `tbavaliacao_economia`
  ADD KEY `fk_quesito_avaliacao_economia` (`id_quesito_economia`),
  ADD KEY `fk_avaliacoes_avaliacao_economia` (`id_avaliacoes`),
  ADD KEY `fk_mes_avaliacao_economia` (`id_mes`),
  ADD KEY `fk_pontuacao_avaliacao_economia` (`id_pontuacao`);

--
-- Indexes for table `tbavaliacao_higiene`
--
ALTER TABLE `tbavaliacao_higiene`
  ADD KEY `fk_quesito_avaliacao_higiene` (`id_quesito_higiene`),
  ADD KEY `fk_avaliacoes_avaliacao_higiene` (`id_avaliacoes`),
  ADD KEY `fk_mes_avaliacao_higiene` (`id_mes`),
  ADD KEY `fk_pontuacao_avaliacao_higiene` (`id_pontuacao`);

--
-- Indexes for table `tbavaliacao_material`
--
ALTER TABLE `tbavaliacao_material`
  ADD KEY `fk_quesito_avaliacao_material` (`id_quesito_material`),
  ADD KEY `fk_avaliacoes_avaliacao_material` (`id_avaliacoes`),
  ADD KEY `fk_mes_avaliacao_material` (`id_mes`),
  ADD KEY `fk_pontuacao_avaliacao_material` (`id_pontuacao`);

--
-- Indexes for table `tbavaliacao_refeicao`
--
ALTER TABLE `tbavaliacao_refeicao`
  ADD KEY `fk_quesito_avaliacao_refeicao` (`id_quesito_refeicao`),
  ADD KEY `fk_avaliacoes_avaliacao_refeicao` (`id_avaliacoes`),
  ADD KEY `fk_mes_avaliacao_refeicao` (`id_mes`),
  ADD KEY `fk_pontuacao_avaliacao_refeicao` (`id_pontuacao`);

--
-- Indexes for table `tbavaliacao_seguranca`
--
ALTER TABLE `tbavaliacao_seguranca`
  ADD KEY `fk_quesito_avaliacao_seguranca` (`id_quesito_seguranca`),
  ADD KEY `fk_avaliacoes_avaliacao_seguranca` (`id_avaliacoes`),
  ADD KEY `fk_mes_avaliacao_seguranca` (`id_mes`),
  ADD KEY `fk_pontuacao_avaliacao_seguranca` (`id_pontuacao`);

--
-- Indexes for table `tbempresa`
--
ALTER TABLE `tbempresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indexes for table `tbficha_mes`
--
ALTER TABLE `tbficha_mes`
  ADD PRIMARY KEY (`id_ficha_mes`),
  ADD KEY `fk_funcionario_ficha` (`id_funcionario`),
  ADD KEY `fk_mes_ficha` (`id_mes`);

--
-- Indexes for table `tbfuncionario`
--
ALTER TABLE `tbfuncionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD KEY `fk_funcao_funcionario` (`id_funcao`),
  ADD KEY `fk_empresa_funcionario` (`id_empresa`);

--
-- Indexes for table `tbfuncoes`
--
ALTER TABLE `tbfuncoes`
  ADD PRIMARY KEY (`id_funcao`);

--
-- Indexes for table `tbmes`
--
ALTER TABLE `tbmes`
  ADD PRIMARY KEY (`id_mes`),
  ADD KEY `fk_ano_mes` (`id_ano`);

--
-- Indexes for table `tbpontuacao`
--
ALTER TABLE `tbpontuacao`
  ADD PRIMARY KEY (`id_pontuacao`);

--
-- Indexes for table `tbpontuacao_economia`
--
ALTER TABLE `tbpontuacao_economia`
  ADD PRIMARY KEY (`id_quesito_economia`),
  ADD KEY `fk_empresa_pontuacao_economia` (`id_empresa`);

--
-- Indexes for table `tbpontuacao_higiene`
--
ALTER TABLE `tbpontuacao_higiene`
  ADD PRIMARY KEY (`id_quesito_higiene`),
  ADD KEY `fk_empresa_pontuacao_higiene` (`id_empresa`);

--
-- Indexes for table `tbpontuacao_material`
--
ALTER TABLE `tbpontuacao_material`
  ADD PRIMARY KEY (`id_quesito_material`),
  ADD KEY `fk_empresa_pontuacao_material` (`id_empresa`);

--
-- Indexes for table `tbpontuacao_refeicao`
--
ALTER TABLE `tbpontuacao_refeicao`
  ADD PRIMARY KEY (`id_quesito_refeicao`),
  ADD KEY `fk_empresa_pontuacao_refeicao` (`id_empresa`);

--
-- Indexes for table `tbpontuacao_seguranca`
--
ALTER TABLE `tbpontuacao_seguranca`
  ADD PRIMARY KEY (`id_quesito_seguranca`),
  ADD KEY `fk_empresa_pontuacao_seguranca` (`id_empresa`);

--
-- Indexes for table `tbpontuacao_total`
--
ALTER TABLE `tbpontuacao_total`
  ADD PRIMARY KEY (`id_pontuacao_total`),
  ADD KEY `fk_mes_pontuacao_total` (`id_mes`),
  ADD KEY `fk_empresa_pontuacao_total` (`id_empresa`);

--
-- Indexes for table `tbtodas_avaliacoes`
--
ALTER TABLE `tbtodas_avaliacoes`
  ADD PRIMARY KEY (`id_avaliacoes`);

--
-- Indexes for table `tbusuario`
--
ALTER TABLE `tbusuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_funcionario_usuario` (`id_funcionario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbano`
--
ALTER TABLE `tbano`
  MODIFY `id_ano` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbempresa`
--
ALTER TABLE `tbempresa`
  MODIFY `id_empresa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbficha_mes`
--
ALTER TABLE `tbficha_mes`
  MODIFY `id_ficha_mes` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbfuncionario`
--
ALTER TABLE `tbfuncionario`
  MODIFY `id_funcionario` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbfuncoes`
--
ALTER TABLE `tbfuncoes`
  MODIFY `id_funcao` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbmes`
--
ALTER TABLE `tbmes`
  MODIFY `id_mes` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbpontuacao`
--
ALTER TABLE `tbpontuacao`
  MODIFY `id_pontuacao` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbpontuacao_economia`
--
ALTER TABLE `tbpontuacao_economia`
  MODIFY `id_quesito_economia` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbpontuacao_higiene`
--
ALTER TABLE `tbpontuacao_higiene`
  MODIFY `id_quesito_higiene` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbpontuacao_material`
--
ALTER TABLE `tbpontuacao_material`
  MODIFY `id_quesito_material` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbpontuacao_refeicao`
--
ALTER TABLE `tbpontuacao_refeicao`
  MODIFY `id_quesito_refeicao` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbpontuacao_seguranca`
--
ALTER TABLE `tbpontuacao_seguranca`
  MODIFY `id_quesito_seguranca` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbpontuacao_total`
--
ALTER TABLE `tbpontuacao_total`
  MODIFY `id_pontuacao_total` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbtodas_avaliacoes`
--
ALTER TABLE `tbtodas_avaliacoes`
  MODIFY `id_avaliacoes` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbusuario`
--
ALTER TABLE `tbusuario`
  MODIFY `id_usuario` int(2) NOT NULL AUTO_INCREMENT;--
-- Database: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `nome` varchar(60) NOT NULL,
  `rm` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`nome`, `rm`) VALUES
('22', '22'),
('22', '22'),
('aluno1', '123'),
('aluno2', '124');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `usuario` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`usuario`, `senha`) VALUES
('admin', 'admin'),
('admin', '123456');
--
-- Database: `escola2`
--
CREATE DATABASE IF NOT EXISTS `escola2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escola2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `nome` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`nome`) VALUES
('PC II'),
('PC II'),
('PC II'),
('PC II'),
('PC II'),
('PC II'),
('PC II'),
('PC II');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `nome` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`nome`) VALUES
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho'),
('Zezinho');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
