-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Nov-2017 às 02:38
-- Versão do servidor: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenda`
--
CREATE DATABASE IF NOT EXISTS `agenda` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agenda`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `endereco` varchar(25) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `nascimento`, `endereco`, `telefone`) VALUES
(6, 'daniel', '1997-01-17', 'Rua joÃ£o xxlll', '35999787094');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `bdbusca`
--
CREATE DATABASE IF NOT EXISTS `bdbusca` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdbusca`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `produto` varchar(100) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `produto`, `valor`) VALUES
(1, 'Carro', 50000),
(2, 'Moto', 20000),
(3, 'Helicoptero', 100000),
(4, 'Tricilulo', 100),
(5, 'Carro Novo', 4000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `bdexemplo`
--
CREATE DATABASE IF NOT EXISTS `bdexemplo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bdexemplo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpessoa`
--

CREATE TABLE `tblpessoa` (
  `idpessoa` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblpessoa`
--

INSERT INTO `tblpessoa` (`idpessoa`, `nome`, `telefone`, `email`, `foto`) VALUES
(3, 'daniel', '776', 'ds', 'download.jpg'),
(4, '', '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblpessoa`
--
ALTER TABLE `tblpessoa`
  ADD PRIMARY KEY (`idpessoa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblpessoa`
--
ALTER TABLE `tblpessoa`
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `caixa`
--
CREATE DATABASE IF NOT EXISTS `caixa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `caixa`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idNome` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idNome`, `nome`, `preco`) VALUES
(1, 'Coxinha', 'R$3,50'),
(2, 'Carne', 'R$10'),
(3, 'Pastel', 'R$5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idNome`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idNome` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `ecomerce`
--
CREATE DATABASE IF NOT EXISTS `ecomerce` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ecomerce`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endpessoa`
--

CREATE TABLE `endpessoa` (
  `codEndPessoa` int(11) NOT NULL,
  `codPessoa` int(11) NOT NULL,
  `cep` int(8) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0 excluido     1 ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endpessoa`
--

INSERT INTO `endpessoa` (`codEndPessoa`, `codPessoa`, `cep`, `logradouro`, `numero`, `bairro`, `complemento`, `status`) VALUES
(1, 1, 37902373, 'Rua joÃ£o xxlll', 905, 'ExposiÃ§Ã£o', 'Teste', 1),
(2, 1, 37902373, 'Rua Patativa', 123, 'ExposiÃ§Ã£o', 'Apartamento 2', 1),
(3, 1, 37902382, 'Rua do LimÃ£o', 900, 'Nossa Senhora das GraÃ§as', '', 1),
(4, 3, 27902382, 'rua teste', 224, 'exposiÃ§Ã£o', '', 1),
(5, 3, 37902382, 'rua teste2', 332, 'TESTE5', 'aprto 3', 1),
(6, 5, 37902373, 'Rua joÃ£o xxlll', 334, 'exposiÃ§Ã£o', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrada`
--

CREATE TABLE `entrada` (
  `codProduto` int(11) NOT NULL,
  `codFornecedor` int(11) NOT NULL,
  `codEntrada` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `dataEntrada` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `nomeEmp` varchar(1000) NOT NULL,
  `logradouroEmp` varchar(200) NOT NULL,
  `numeroEmp` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `cep` int(8) NOT NULL,
  `ddd` int(2) NOT NULL,
  `telefone` int(9) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idFornecedor`, `nomeEmp`, `logradouroEmp`, `numeroEmp`, `bairro`, `complemento`, `cep`, `ddd`, `telefone`, `email`) VALUES
(1, 'testeee', 'testeee2', 325, 'testeeee3', 'teste4', 99999999, 99, 222222222, 'teste@teste.com'),
(2, 'kabum', '', 0, '', '', 0, 0, 0, ''),
(3, 'distribuidora ltda', 'Rua patativa', 245, 'exposiÃ§Ã£o', '', 37508985, 21, 78475858, 'distribuidora@distribuidora'),
(4, 'Outra distribuidora', 'Avenida passos', 231, 'vila rica', 'teste', 37902373, 35, 999787094, 'daniel@123.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `codPessoa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `CPF` char(11) NOT NULL,
  `RG` char(10) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `tipoAcesso` int(11) DEFAULT '1' COMMENT '0 adm   1 cliente',
  `foto` varchar(200) DEFAULT 'padrao.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`codPessoa`, `nome`, `CPF`, `RG`, `dataNasc`, `email`, `senha`, `tipoAcesso`, `foto`) VALUES
(1, 'Fernando', '12341454543', 'mg2132312', '1997-01-17', 'dsfranca001@hotmail.com', '123', 0, 'images.jpg'),
(2, 'Norival', '12345678910', 'mg12345678', '1980-01-01', 'norival@norival.com', 'moto123', 1, 'download.jpg'),
(3, 'Rhamon', '02073213618', 'mg14995140', '0000-00-00', 'rhamon@hotmail.com', 'fanta123', 1, 'padrao.jpg'),
(4, 'Daniel', '88888888888', 'mg14555555', '1997-01-17', 'xxdanielxxpb19@hotmail.com', 'Intelbraz2', 1, '1458542_605430162852154_784447033_n.jpg'),
(5, 'Ricardo', '12345612345', 'mg23333333', '1996-06-16', 'pom@pom', '123', 1, 'padrao.jpg'),
(6, 'Daniel FranÃ§a', '02073213617', 'MG32445324', '1997-01-17', 'daniel@teste', '1234', 1, 'padrao.jpg'),
(7, 'fernando', '23143245634', 'mg43245343', '2011-11-11', 'cadeira@teste', '123456', 1, 'padrao.jpg'),
(8, 'mesa', '34256784354', 'mg4586594', '2000-11-11', 'trabalho@', '123', 1, 'padrao.jpg'),
(9, 'blusa', '84586734564', 'mg34256734', '2012-12-22', 'teste@uai', 'lolviad', 1, 'padrao.jpg'),
(10, 'Ricardo', '02034587623', 'mg45623874', '1997-01-17', 'ricardo@ricardo', '123', 0, 'padrao.jpg'),
(11, 'Fernando ProenÃ§a', '44444444444', 'MG55555555', '2000-01-01', 'fernando@fernando', '123', 0, 'padrao.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codProduto` int(11) NOT NULL,
  `tipo` varchar(2000) NOT NULL,
  `nomeProduto` varchar(2000) NOT NULL,
  `marca` varchar(2000) NOT NULL,
  `valor` float NOT NULL,
  `descricao` varchar(2000) DEFAULT NULL,
  `especTecnica` varchar(2000) DEFAULT NULL,
  `fotoUm` varchar(200) DEFAULT NULL,
  `fotoDois` varchar(200) DEFAULT NULL,
  `fotoTres` varchar(200) DEFAULT NULL,
  `fotoQuatro` varchar(200) DEFAULT NULL,
  `percentDesconto` int(11) DEFAULT NULL,
  `dataInicioPromo` date DEFAULT NULL,
  `dataFimPromo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codProduto`, `tipo`, `nomeProduto`, `marca`, `valor`, `descricao`, `especTecnica`, `fotoUm`, `fotoDois`, `fotoTres`, `fotoQuatro`, `percentDesconto`, `dataInicioPromo`, `dataFimPromo`) VALUES
(1, 'MemÃ³ria', 'MemÃ³ria Kingston HyperX FURY  8GB  2666MHz DDR4 CL15 Black -  HX426C15FB/8', 'KingSton', 409.9, 'MemÃ³ria Kingston HyperX FURY  8GB 2666Mhz DDR4 CL15 Black - HX426C15FB/8', 'CaracterÃ­sticas: - Marca: Kingston HyperX - Modelo: HX426C15FB/8  EspecificaÃ§Ãµes:  - Capacidade: 8GB - 2666Mhz - DDR4-2666 - LatÃªncia: 15-17-17 a 1.2V - CL15-17-17 @1.2V - 288-Pin DIMM - ClassificaÃ§Ã£o UL: 94 V - 0 - Temperatura de OperaÃ§Ã£o: 0Âº C a +85Âº C  - Temperatura de Armazenamento: -55Â° C a +100Âº C  ConteÃºdo da Embalagem: - 01 MemÃ³ria Kingston HyperX FURY 8GB    Garantia 12 meses de garantia  Peso 55 gramas (bruto com embalagem)', '09b0f28c08df8d16349b2afb89009b48.jpg', '79939_index_gg.jpg', 'Memoria kingdton Hyper 8gb 2666mhz DDR4 CL15_index_g.jpg', 'MemÃ³ria Kingston HyperX FURY  8GB - 3.jpg', NULL, NULL, NULL),
(2, 'MemÃ³ria', 'MÃ©moria Kingston HyperX FURY 8GB  1600MHz DDR3 CL10 Blue Series', 'KingSton', 329.9, 'A memÃ³ria HyperX FURY estÃ¡ disponÃ­vel  nas capacidades de 4GB e 8GB com frequÃªncias que variam entre 1333MHz, 1600MHz e 1866MHz. Todas as memÃ³rias HyperX FURY possuem o PCB preto e um dissipador de calor assimÃ©trico, este podendo ser Azul, Preto, Vermelho ou, pela primeira vez, branco. Perfeita para quem procura uma memÃ³ria de desempenho com um preÃ§o acessÃ­vel, a HyperX FURY Ã© Plug and Play, basta conecta-la que o reconhecimento de sua plataforma host e o overclock Ã© feito automaticamente. Agora cabe a vocÃª optar pela HyperX FURY e fazer este upgrade de performance e estilo.', 'CaracterÃ­sticas: - Marca: HyperX - Modelo: HX316C10F/8   EspecificaÃ§Ãµes: - Tipo: SDRAM DDR3 de 240 pinos - Capacidade: 8GB - AceleraÃ§Ã£o: DDR3 1600 (PC3 12800) - Cas LatÃªncia:10 - TensÃ£o: 1.5V  ConteÃºdo da embalagem:  - 01 MemÃ³ria HyperX HX316C10F/8  Garantia 12 meses de garantia  Peso 52 gramas (bruto com embalagem)', 'ArquivoExibir.jpg', 'Memoria Kingston HyperX FURY 8GB 1600MHz DDR3 CL10 Blue Series - HX316C10F8- 2.jpg', 'HyperX FURY memory packaged_HyperX_FURY_Blue_DIMM_1_peb_hr_28_07_2014 19_04-500x500.jpg', '50768_1398163481_g.jpg', NULL, NULL, NULL),
(3, 'MemÃ³ria', 'MemÃ³ria Kingston HyperX FURY 8GB  2133Mhz DDR4 CL14 White - HX421C14FW2/8', 'KingSton', 389.9, 'MemÃ³ria Kingston HyperX FURY 8GB  2133Mhz DDR4 CL14 White - HX421C14FW2/8', 'CaracterÃ­sticas: - Marca: HyperX - Modelo: HX421C14FW2/8  EspecificaÃ§Ãµes: - 8GB - 2133MHz - DDR4 - CL14 - DIMM - HyperX FURY White    ConteÃºdo da embalagem: - 01 MemÃ³ria Kingston HyperX FURY 8GB    Garantia 12 meses de garantia  Peso 55 gramas (bruto com embalagem)', '515991_3_kingston-8gb-hyperx-fury-ddr4-2133mhz-cl14-hx421c14fw2-8.jpg', 'MemÃ³ria Kingston HyperX FURY 8GB 2133Mhz DDR4 CL14 White - HX421C14FW .jpg', 'download.jpg', '88081_1491220224_g.jpg', NULL, NULL, NULL),
(4, 'MemÃ³ria', 'MemÃ³ria Corsair Vengeance LPX 8GB 2400Mhz  DDR4 CL14 Black - CMK8GX4M1A2400C14', 'Corsair', 389.9, 'MemÃ³ria Corsair Vengeance LPX 8GB  2400Mhz DDR4 CL14 Black - CMK8GX4M1A2400C14', '\"CaracterÃ­sticas: - Marca: Corsair - Modelo: CMK8GX4M1A2400C14   EspecificaÃ§Ãµes: - Dissipador de calor: Vengeance LPX - ConfiguraÃ§Ã£o da memÃ³ria: Dual / Quad Channel - SÃ©ries da memÃ³ria: Vengeance - Tipo de memÃ³ria: DDR4 - Formato: DIMM - Pino: 288 - Perfil de desempenho: XMP 2.0 - Tamanho: 8GB Kit (1 x 8GB) - LatÃªncia SPD: 15-15-15-36 - Velocidade SPD: 2133MHz - Voltagem: 1.2V - AvaliaÃ§Ã£o de velocidade: PC4-19200 (2400MHz) - LatÃªncia testada: 14-16-16-31 - Velocidade testada: 2400MHz - Voltagem testada: 1.2V - Compatibilidade: Plataforma IntelÂ® X99   ConteÃºdo da Embalagem: - 01 MemÃ³ria Corsair  Garantia 12 meses de garantia  Peso 60 gramas (bruto com embalagem)\"', '48697_1505220047_g.jpg', '2000000012575716721.jpg', 'MemÃ³ria Corsair 4GB 1600Mhz DDR3 CL11 - CMV4GX3M1A1600C11.jpg', 'memoria-corsair-8gb-ddr4-2133mhz-cmv8gx4m1a2133c15-p-pc_iZ144499630XvZcXpZ3XfZ190072965-831997626-3.jpgXsZ190072965xIM.jpg', 60, '2016-12-12', '2018-12-12'),
(5, 'MemÃ³ria', 'MemÃ³ria Corsair CMZ4GX3M1A1600C9 Vengeance 4GB DDR3 RAM ', 'Corsair', 223.41, 'A Corsair CMZ4GX3M1A1600C9 Vengeance 4GB DDR3 RAM  faz parte da linha da Corsair Desktop da memÃ³ria DDR3.  Este mÃ³dulo permite aos usuÃ¡rios experimentar o desempenho da  memÃ³ria excepcional e estabilidade. Cada mÃ³dulo Ã© construÃ­do  usando RAMs cuidadosamente selecionados.  Este CMZ4GX3M1A1600C9 Corsair Vengeance 4GB RAM DDR3  roda a 1600MHz com latÃªncia CAS de 9-9-9-24. Aumente o desempenho de  computadores e compre o CMZ4GX3M1A1600C9 Corsair Vengeance 4GB de RAM DDR3 soluÃ§Ã£o hoje.', 'CaracterÃ­sticas: - Marca: Corsair - Modelo: CMZ4GX3M1A1600C9   EspecificaÃ§Ãµes: - Dissipador de calor Vengeance - ConfiguraÃ§Ã£o da memÃ³ria Single Module - Tipo: DDR3 - Pinagem: 240 pin - Perfil de desempenho XMP - Capacidade: 4GB (1x 4GB) - LatÃªncia SPD 9-9-9-24 - LatÃªncia testada 9-9-9-24 - Velocidade testada 1600Mhz - Voltagem testada 1.5V   InformaÃ§Ãµes Adicionais: - Feito para AMD e Intel Dual e prÃ³ximos da 2Âª geraÃ§Ã£o - Vengeance, difusor de estilo e performance - CompatÃ­vel Intel XMP (Extreme Memory Profile)   ConteÃºdo da Embalagem: - 01 MemÃ³ria Vengeance Corsair 4GB    Garantia 12 meses de garantia  Peso 144 gramas (bruto com embalagem)', 'MemÃ³ria Corsair 8GB 2133MHz DDR4 CL15 - CMV8GX4M1A2133C15 .jpg', 'memoria8gbcorsair2133mhzcl15ddr4cmv8gx4m1a2133c15d_nq_np_343505mlb25045549621_092016o.jpg.jpg', 'download.jpg', 'memoria-corsair-8gb-ddr4-2133mhz-cmv8gx4m1a2133c15-p-pc_iZ144499630XvZcXpZ3XfZ190072965-831997626-3.jpgXsZ190072965xIM.jpg', 50, '2017-10-10', '2018-12-20'),
(6, 'MemÃ³ria', 'MemÃ³ria Corsair 8GB 2133MHz DDR4 CL15 - CMV8GX4M1A2133C15', 'Corsair', 470.47, 'MemÃ³ria Corsair 8GB 2133MHz DDR4 CL15  Modelo: CMV8GX4M1A2133C15', '\"CaracterÃ­sticas: Marca: Corsair Gaming Modelo: CMV8GX4M1A2133C15   EspecificaÃ§Ãµes: - ConfiguraÃ§Ã£o da memÃ³ria: Dual Channel - Tipo de memÃ³ria: DDR4 - Formato da embalagem da memÃ³ria: DIMM - Pino da embalagem da memÃ³ria: 288 - Tamanho da memÃ³ria: 8GB Kit (1 x 8GB) - LatÃªncia SPD: 15-15-15-36 - Velocidade SPD: 2133MHz - AvaliaÃ§Ã£o de velocidade: PC4-17000 (2133MHz) - LatÃªncia testada: 15-15-15-36 - Velocidade testada: 2133MHz - Voltagem testada: 1.2V   ConteÃºdo da embalagem: - 01 MemÃ³ria Corsair 8GB    Garantia 12 meses de garantia  Peso 40 gramas (bruto com embalagem)\"', 'MemÃ³ria Corsair Vengeance 4GB 1600Mhz DDR3 CL9 Black - CMZ4GX3M1A1600C9.jpg', 'jpg.jpg', '94152corsair-memoria.jpg', 'memoria-corsair-8gb-ddr4-2133mhz-cmv8gx4m1a2133c15-p-pc_iZ144499630XvZcXpZ3XfZ190072965-831997626-3.jpgXsZ190072965xIM.jpg', 25, '2017-05-05', '2017-12-12'),
(7, 'Processador', 'Processador AMD Ryzen 7 1800X, Octa Core, Cache 20MB, 3.6Ghz (4.0GHz Max Turbo) AM4 YD180XBCAEWOF', 'AMD', 2235.18, 'Processador AMD Ryzen 7 1800X, Octa Core, Cache 20MB,  3.6Ghz (4.0GHz Max Turbo) AM4 YD180XBCAEWOF -  Ã“timo processador, muito rÃ¡pido, estÃ¡vel e confiÃ¡vel!', '\"CaracterÃ­sticas: - Marca: AMD - Modelo: YD180XBCAEWOF   EspecificaÃ§Ãµes: - SÃ©ries: Ryzen 7 - Socket: Socket AM4 - NÃºcleos: 8 core - FrequÃªncia de OperaÃ§Ã£o: 3.6 GHz (4.0GHz Max Turbo) - L2 Cache: 4MB - L3 cache: 16MB - Modo de operaÃ§Ã£o 64 Bit - PotÃªncia: 95 W    ConteÃºdo da Embalagem: - 01 Processador AMD ObservaÃ§Ã£o: * As linhas de processadores Ryzen 3, 5 e 7 nÃ£o possuem vÃ­deo integrado, necessÃ¡rio ter uma placa de vÃ­deo off-board. Garantia 12 meses de garantia  Peso 135 gramas (bruto com embalagem)\"', 'Processador AMD Ryzen 7 1800X.jpg', 'download.jpg', 'amd-ryzen-r7-1800X-review-1260x603.jpg', '10788-ryzen-chip-left-angle-960x548.png', NULL, NULL, NULL),
(8, 'Processador', 'Processador AMD Ryzen Threadripper 1950X,  Hexadeca-Core, Cache 40MB,  3.4GHz (4GHz Max Turbo), TR4 YD195XA8AEWOF', 'AMD', 5141.06, 'Processador AMD Ryzen Threadripper 1950X,  Hexadeca-Core, Cache 40MB,  3.4GHz (4GHz Max Turbo), TR4 YD195XA8AEWOF Com melhor performace e desempenho!', 'CaracterÃ­sticas: - Marca: AMD - Modelo: YD195XA8AEWOF   EspecificaÃ§Ãµes: - FamÃ­lia: AMD Ryzen  - Linha: AMD Ryzen Threadripper - Plataforma: Ãrea de Trabalho   Desempenho: - Cache L1 Total: 1.125 MB - Cache L2 Total: 8 MB - Cache L3 Total: 32 MB - Desbloqueado - CMOS: 14nm - PCI Express: PCIe 3.0   Performance: - NÃºcleo de CPU: 16 - Threads: 32 - Velocidade do Clock: 3,4 GHz - Velocidade MÃ¡x Turbo: 4 GHz - Temperatura MÃ¡xima: 68ÂºC - TDP: 180 W   MemÃ³ria: - Velocidade MÃ¡xima: 2667 Mhz - Interface: DDR4 - Canais: 3   Recursos: - Suporte AES  - FMA: FMA3 - AVX: AVX2 - VirtualizaÃ§Ã£o AMD - XFR - Tecnologia AMD Sensemi  ConteÃºdo da Embalagem: - Processador AMD Ryzen Threadripper 1950X   ObservaÃ§Ã£o: * O Processador AMD Ryzen Threadripper nÃ£o possuÃ­ vÃ­deo integrado, necessÃ¡rio ter uma placa de vÃ­deo off-board. * NÃ£o acompanha Cooler.  Garantia 12 meses de garantia Peso 860 gramas (bruto com embalagem)', '10788-ryzen-chip-left-angle-960x548.png', 'Processador AMD Ryzen Threadripper 1950X, .jpg', 'download (1).jpg', '11859-vr-man-premium-tile-1260x709.jpg', NULL, NULL, NULL),
(9, 'Processador', 'Processador AMD Ryzen 7 1700 c/ Wraith Spire,  Octa Core, Cache 20MB,  3.0GHz (3.7GHz Max Turbo) AM4 YD1700BBAEBOX', 'AMD', 1176.35, 'Processador AMD Ryzen 7 1700 c/ Wraith Spire,  Octa Core, Cache 20MB, 3.0GHz (3.7GHz Max Turbo)  AM4 YD1700BBAEBOX.  Com melhor performace e desempenho para seu PC!', 'CaracterÃ­sticas: - Marca: AMD - Modelo: YD1700BBAEBOX   EspecificaÃ§Ãµes: - SÃ©ries: Ryzen 7 - Socket: Socket AM4 - NÃºcleos: 8 core - FrequÃªncia de OperaÃ§Ã£o: 3.0GHz (3.7GHz Max Turbo) - L2 Cache: 4MB - L3 cache: 16MB - Modo de operaÃ§Ã£o 64 Bit - PotÃªncia: 65 W    ConteÃºdo da embalagem: - 01 Processador AMD  - 01 Cooler Wraith Spire 95W   ObservaÃ§Ã£o: * As linhas de processadores Ryzen 3, 5 e 7 nÃ£o possuem vÃ­deo integrado, necessÃ¡rio ter uma placa de vÃ­deo off-board.  Garantia 12 meses de garantia Peso 670 gramas (bruto com embalagem)', 'Processador AMD Ryzen 7 1700 .jpg', '86139_1487800617_g.jpg', '10788-ryzen-chip-left-angle-960x548.png', 'download.jpg', NULL, NULL, NULL),
(10, 'Processador', 'Processador Intel Core i7-7820x Kaby Lake-X  7a GeraÃ§Ã£o, Cache 11MB, 3.6GHz  (4.5GHz Max Turbo), LGA 2066 - BX80673I77820X', 'Intel', 3058.71, 'Processador Intel Core i7-7820x Kaby Lake-X 7a  GeraÃ§Ã£o, Cache 11MB, 3.6GHz (4.5GHz Max Turbo),  LGA 2066 - BX80673I77820X.', '', 'i7-extreme-5.jpg', 'Processador Intel Core i7-7820x .jpg', 'Core i7.jpg', '90446_1499191232_g.jpg', NULL, NULL, NULL),
(11, 'Processador', 'Processador Intel Deca Core I7-6950X LGA 2011- V3 3.0Ghz 25MB Cache s/Cooler - BX80671I76950X', 'Intel', 8235.18, 'Processador Intel Deca Core I7-6950X LGA 2011 -V3 3.0Ghz 25MB Cache s/Cooler - BX80671I76950X', 'CaracterÃ­sticas: - Marca: Intel - Modelo: BX80671I76950X    EspecificaÃ§Ãµes:  - Processador: I7-6950X - Cache: 25 MB - Conjunto de instruÃ§Ãµes: 64 bits - Litografia: 14 nm - Escabilidade: 1S   AtuaÃ§Ã£o: - NÃºmero de nÃºcleos: 10 - NÃºmero de Threads: 20 - Base de dados de frequÃªncia: 3 Ghz - FrequÃªncia mÃ¡x. Turbo: 4 GHz - TDP: 140W   MemÃ³ria: - Tamanho mÃ¡x. da memÃ³ria: 128GB - Tipos de memÃ³ria: DDR4 2400/2133 - MÃ¡x. de canais de memÃ³ria: 4   OpÃ§Ãµes de expansÃ£o: - RevisÃ£o PCI Express: 3.0 - ConfiguraÃ§Ã£o mÃ¡xima da CPU: 1   Tecnologias: - Tecnologia Intel Turbo Boost Max 3.0 â€¡ - Tecnologia Intel Turbo Boost â€¡: 2.0 - Tecnologia Hyper-Threading Intel â€¡ - Tecnologia de virtualizaÃ§Ã£o Intel (VT-x) â€¡ - Tecnologia de virtualizaÃ§Ã£o Intel para E/S direcionada (VT-d) â€¡ Sim - IntelÂ® VT-x com Tabelas de pÃ¡gina estendida (EPT) â€¡  - Intel 64 â€¡  - Estados ociosos - Tecnologia Enhanced Intel SpeedStep  - Tecnologia Intel de resposta inteligente   ConteÃºdo da Embalagem: - 01 Processador Intel   Garantia 12 meses de garantia Peso 185 gramas (bruto com embalagem)', 'Processador Intel Deca Core I7-6950X .jpg', 'images.jpg', 'i7-extreme-5.jpg', 'i7-extreme-2.jpg', NULL, NULL, NULL),
(12, 'Placa MÃ£e', 'Placa-MÃ£e ASUS p/ Intel LGA 1151 ATX ROG  STRIX Z270E GAMING,DDR4,Aura Sync, Ãudio Gamer,  Rede Intel, SLI/CFX, Wi-Fi, USB 3.1 Frontal,HDMI/DP', 'ASUS', 1442.24, 'Placa-MÃ£e ASUS p/ Intel LGA 1151 ATX ROG STRIX  Z270E GAMING,DDR4,Aura Sync, Ãudio Gamer,  Rede Intel, SLI/CFX, Wi-Fi, USB 3.1 Frontal,HDMI/DP. As placas-mÃ£e gamer ROG Strix sÃ©rie Z270 combinam estÃ©tica  robusta com alto desempenho e Ã¡udio incrÃ­vel para entregar  estilo e experiÃªncia gamer incomparÃ¡veis. CompatÃ­vel nova geraÃ§Ã£o de  processadores IntelÂ® e tecnologias mais recentes,  a ROG Strix leva o desempenho para um novo nÃ­vel  e maior vantagem contra os adversÃ¡rios', 'CaracterÃ­sticas: - Marca: ASUS - Modelo: STRIX Z270E GAMING Â  EspecificaÃ§Ãµes: Â  CPU: - Intel Socket 1151 para Processadores de 7Âª / 6Âª GeraÃ§Ã£o i7 / Core i5 / Core i3 / Pentium / Celeron - Suporta 14nm CPU - Suporta Intel Turbo Boost Technology 2.0* * O suporte desses recursos depende dos tipos de CPU. Â  Chipset: - Intel Z270 Chipset Â  MemÃ³ria: - 4x DIMM, mÃ¡x. 64GB DDR4 3866 (OC) * / 3733 (OC) * / 3600 (OC) * / 3466 (OC) * / 3400 (OC) * / 3333 (OC) * / 3300 OC) * / 2800 (OC) * / 2666 (OC) * / 2400 (OC) * / 2133 MHz - Arquitetura da memÃ³ria Dual Channel - Suporta o Intel Extreme Memory Profile (XMP)* * O suporte Hyper DIMM estÃ¡ sujeito Ã s caracterÃ­sticas fÃ­sicas de cada CPUs. Consulte a MemÃ³ria QVL (Qualified Vendors List) para obter detalhes. Â  Slots de expansÃ£o: - 2x Slots PCIe 3.0 / 2.0 x16 (suporta x16, x8 / x8) - 1x Slot PCIe 3.0 / 2.0 x16 (no modo x4 mÃ¡ximo) - 4x Slots PCIe 3.0 / 2.0 x1 Â  VGA: - Processador GrÃ¡fico Integrado - Suporte GrÃ¡ficos Intel HD - Suporte de saÃ­da Multi-VGA: Portas DisplayPort / HDMI / DVI-D - Suporta DisplayPort 1.2* com mÃ¡x. ResoluÃ§Ã£o 4096 x 2304 @ 60Hz - Suporta HDMI 1.4b com mÃ¡x. ResoluÃ§Ã£o 4096 x 2160 @ 24Hz - Suporta DVI-D com mÃ¡x. ResoluÃ§Ã£o 1920 x 1200 @ 60Hz - Suporta Intel InTru 3D / Quick Sync Video / Tecnologia Clear Video HD / Insider - Suporta atÃ© 3 monitores simultaneamente - MÃ¡xima memÃ³ria compartilhada de 1024MB * DP 1.2 Multi-Stream Transport compatÃ­vel, suporta DP 1.2 monitor daisy chain atÃ© 3 monitores. Â  Multi-GPU: - Suporte Suporta a tecnologia NVIDIA 2-Way SLI - Suporta a tecnologia AMD 3-Way CrossFireXÂ  Â  Armazenamento: - Chipset Intel Z270 com suporte a RAID 0, 1, 5, 10 e Intel Rapid Storage Technology 15 - 6x Portas SATA 6Gb/s - 1x M.2_1 Soquete 3 com chave M, tipo 2242/2260/2280/22110 suporte a dispositivos de armazenamento (ambos SATA e PCIE 3.0 x 4 modo) * - 1x M.2_2 Soquete 3 com chave M, tipo 2242/2260/2280 suporte a dispositivos de armazenamento (modo PCIE 3.0 x 4) *', 'Placa-MÃ£e ASUS  .jpg', 'STRIX-Z270E-GAMING1.jpg', 'STRIX-Z270E-GAMING10.jpg', 'download.jpg', NULL, NULL, NULL),
(13, 'Placa MÃ£e', 'Placa-MÃ£e ASUS p/ Intel LGA 1151 ATX MAXIMUS  IX CODE Z270 DDR4,USB 3.1 Tipo A e C,Aura  Sync,Ãudio Gamer, SLI/CFX, Rede Intel,2-M.2, HDMI/DP ', 'ASUS', 1957.53, 'Placa-MÃ£e ASUS p/ Intel LGA 1151 ATX MAXIMUS IX  CODE Z270 DDR4,USB 3.1 Tipo A e C,Aura Sync, Ãudio Gamer, SLI/CFX, Rede Intel,2-M.2, HDMI/DP.', '\"CaracterÃ­sticas: - Marca: ASUS - Modelo:Â MAXIMUS IX CODE Â  EspecificaÃ§Ãµes: Â  CPU: - Intel Socket 1151 para 7Âª / 6Âª GeraÃ§Ã£o Core i7 / Core i5 / Core i3 / Pentium / Celeron Processadores - Suporta 14nm CPU - Suporta tecnologia Intel Turbo Boost 2.0 Â  Chipset: - Intel Z270 Chipset Â  MemÃ³ria: - 4x DIMM, mÃ¡ximo de 64GB DDR4 4133+ (OC) * / 4000 (OC) * / 3866 (OC) * / 3733 (OC) * / 3600 (OC) * / 3466 (OC) * / 3400 (OC) * / 3333 (OC) * / 3300 (OC) * / 3200 (OC) * / 3000 (OC) * / 2800 (OC) * / 2666 (OC) * / 2400 (OC) * / 2133 MHz - Arquitetura de canal duplo - Suporta o Intel Extreme Memory Profile (XMP) Â  Slots de ExpansÃ£o: - Novos processadores Intel Core 7th Gen - 2x PCIe 3.0 x16 slots (suporte x16, x8 / x8) Â  Chipset Intel Z270: - 1x slot PCIe 3.0 x16 (mÃ¡ximo no modo x4) - 3x slots PCIe 3.0 x1 Â  GrÃ¡fico: - Processador GrÃ¡fico Integrado: Suporte GrÃ¡ficos Intel HD - Suporte de saÃ­da Multi-VGA: HDMI / DisplayPort - Suporta DisplayPort 1.2 com mÃ¡x. ResoluÃ§Ã£o 4096 x 2304 @ 60Hz - Suporta HDMI 1.4b com mÃ¡x. ResoluÃ§Ã£o 4096 x 2160 @ 24Hz - MÃ¡xima memÃ³ria compartilhada de 1024MB Â  Suporte Multi-GPU: - Suporta a tecnologia NVIDIA: 2-Way / Quad-GPU SLI - Suporta a tecnologia AMD: 3-Way / Quad-GPU CrossFireX Â  Armazenamento: - Chipset Intel Z270 com tecnologia RAID 0, 1, 5, 10 e Intel Rapid Storage 14 - 1 x M.2 Soquete 3 com chave M, tipo 2242/2260/2280/22110 (PCIe 3.0 x4 e SATA modes_M.2_1) - 1 x M.2 Soquete 3 com chave M, tipo 2242/2260/2280 (suporta PCIe 3.0 x4 mode_M.2_2) - 6 portas SATA 6Gb / s - Intel Optane MemÃ³ria Pronto - Suporta Intel Smart Response Technology Â   12 meses de garantia  Peso 2685 gramas (bruto com embalagem)\"', 'download (1).jpg', 'Placa-MÃ£e ASUS p Intel LGA 1151 ATX MAXIMUS IX CODE Z270.jpg', 'rog-maximus-ix-formula5.jpg', 'download.jpg', NULL, NULL, NULL),
(14, 'Placa MÃ£e', 'Placa-MÃ£ee ASUS p/ Intel LGA 1151 ATX PRIME Z270-A 4 X  DDR4, 2-M.2, Rede Intel, ThunderboltEX , audio DTS, Aura Sync, SLI/CFX,DVI/HDMI/DP', 'ASUS', 1164.59, 'Placa-MÃ£ee ASUS p/ Intel LGA 1151 ATX PRIME Z270-A 4 X  DDR4, 2-M.2, Rede Intel, ThunderboltEX. Com excelente desempenho e performace!', 'CaracterÃ­sticas: - Marca: ASUS - Modelo: PRIME Z270-A Â  EspecificaÃ§Ãµes: Â  CPU: - Intel Socket 1151 para 7 / 6 GeraÃ§Ã£o NÃºcleo i7 / Core i5 / Core i3 / Pentium / Celeron - Suporta Intel 14 nm CPU - Suporta Tecnologia Intel Turbo Boost 2.0 * A Tecnologia Intel Turbo Boost 2.0 Depende dos tipos de CPU. Â  Chipset: - Intel Z270 Â  MemÃ³ria: - 4 x DIMM, Max. (OC) / 3300 (OC) / 3300 (OC) / 3200 (OC) / 3000 (OC) / 2800 (OC) / 3600 OC) / 2666 (OC) / 2400 (OC) / 2133 MHz nÃ£o-ECC, Un-buffered MemÃ³riaÂ  - Arquitetura de memÃ³ria dual ChannelÂ  - Suporta Intel Extreme perfil de memÃ³ria (XMP)Â  * A freqÃ¼Ãªncia de memÃ³ria mÃ¡xima suportada varia de acordo com o processador. Â  GrÃ¡fico: - Processador Intel HD Graphics - Suporte de saÃ­da Multi-VGA: portas HDMI / DVI-D / DisplayPortÂ  - Suporta HDMI 1.4b com mÃ¡x. resoluÃ§Ã£o 4096 x 2160 @ 24 Hz / 2560 x 1600 @ 60 HzÂ  - Suporta DVI-D com mÃ¡x. resoluÃ§Ã£o 1920 x 1200 @ 60 HzÂ  - Suporta DisplayPort com mÃ¡x. resoluÃ§Ã£o 4096 x 2304 @ 24 HzÂ  - MÃ¡xima de memÃ³ria compartilhada de 1024 MBÂ  - Suporta atÃ© 3 exibe simultaneamenteÂ  - DP 1.2 multi-Stream compatÃ­veis Transportes, suporta DP cadeia 1.2 monitor de atÃ© 3 monitores Â  Suporte Multi-GPU: - Suporta NVIDIA 2-Way SLI - Suporta AMD tecnologia 3-way CrossFireX Â  Slots de expansÃ£o: - 1x PCIe 3.0 / 2.0 x16 (x16 ou duplo x8)Â  - 1x PCIe 3.0 / 2.0 x16 (max no modo x4)Â  - 4x PCIe 3.0 / 2.0 x1 Â  Armazenamento: - 1x M2 soquete 3, com M Key, suporte tipo 2242 / 2260 / 2280 / 22110 dispositivos de armazenamento (mode & PCIE X4 modo SATA)Â  - 1x M2 soquete 3, com M Key, tipo 2242 / 2260 / 2280 dispositivos de armazenamento de apoio (modo PCIE apenas) - 6x porta SATA 6Gb/s, cinza - Suporte RAID 0, 1, 5, 10 - Intel Rapid Storage Technology 15 suporte - Suporta Tecnologia Intel Smart Response - Intel Optane MemÃ³ria Ready Â    Garantia 12 meses de garantia  Peso 1400 gramas (bruto com embalagem)', 'Placa-Mae ASUS p Intel LGA 1151 .jpg', '84271_1482341448_g.jpg', '84271_1482341443_g.jpg', '84271_1482341423_g.jpg', NULL, NULL, NULL),
(15, 'Fonte', 'Fonte Corsair 750W 80 Plus Bronze  Semi Modular CX750M - CP-9020061', 'Corsair', 577.53, '', 'CaracterÃ­sticas: - Marca:Â Corsair  - Modelo:Â CP-9020061  EspecificaÃ§Ãµes: - DimensÃ£o:Â 5,9 ', 'Fonte Corsair 750W 80 Plus Bronze Semi Modular CX750M - CP-9020061 .jpg', '0002068_700_6.jpg', '39786_1367525228_g.jpg', 'images (1).jpg', NULL, NULL, NULL),
(16, 'Fonte', 'Fonte Corsair 600W 80 Plus White VS600 - CP-9020119 ', 'Corsair', 288.12, 'A VS600 da Corsair Ã© uma Ã³tima opÃ§Ã£o se vocÃª estÃ¡ montando  um sistema domÃ©stico ou comercial com demandas  de baixa potÃªncia, mas ainda procura a  compatibilidade e confiabilidade pelas quais a Corsair Ã© conhecida.', 'CaracterÃ­sticas: - Marca: Corsair - Modelo: CP-9020119-LA Â  EspecificaÃ§Ãµes:Â  - Tipo: ATX 12V v2.31 e EPS 2.92Â  - PotÃªncia mÃ¡xima: 600W - Barramento: trilho Ãºnico de +12VÂ  - TensÃ£o de entrada: 100 - 240V (automÃ¡tico) - Corrente de entrada: 10.0 - 5.0A - FrequÃªncia: 47Hz - 63Hz - CertificaÃ§Ã£o: 80 Plus White - EficiÃªncia: 80% tÃ­pica - Ventoinha: 1 x 120mmÂ  - AprovaÃ§Ãµes de seguranÃ§a: FCC, CE, TÃœV, TÃœV-S, REEE e RoHS - ProteÃ§Ãµes contra: sobrecargas, baixa tensÃ£o, curto-circuito, picos decorrente e superaquecimentoÂ  - MTBF: 100.000 Horas - Cabeamento: Fixo Â  Conectores: - 1 x ATXÂ  - 1 x EPSÂ  - 2 x PCIe - 5 x SATA - 5 x PerifÃ©ricos 4-PinÂ  Â  Compatibilidade: - Ã‰ compatÃ­vel com os padrÃµes ATX12V v2.31 e EPS 2.92 mais recentes e com as versÃµes anteriores dos sistemas ATX12V 2.2 e mais antigos Â  ConteÃºdo da embalagem: - 01 Fonte CorsairÂ  - Parafusos de montagem - Certificado de garantia    Garantia 12 meses de garantia  Peso 2195 gramas (bruto com embalagem)', 'jpg.jpg', 'Fonte Corsair 600W 80 Plus White VS600 - CP-9020119 .jpg', 'cp-9020119-la6.jpg', '83547_1478627548_g.jpg', NULL, NULL, NULL),
(17, 'Fonte', 'Fonte Corsair 1000W 80 Plus Platinum Modular HX1000i - CP-9020074 ', 'Corsair', 1350.47, 'Corsair Fonte HX1000i 1000W 80 Plus Platinum CP-9020074. Excelente Desempenho!', 'CaracterÃ­sticas: - Marca: Corsair - Modelo: CP-9020074 Â  EspecificaÃ§Ãµes: - CertificaÃ§Ã£o 80 Plus NÃ­vel Platina - PotÃªncia: 1000 Watts - Tecnologia Bearing Fan Fluid Dynamic Bearing - Tamanho do ventilador 140 mm - Suporte Corsair link - SaÃ­da contÃ­nua de temperatura nominal 50Â° C - DimensÃµes 150 Â x 86 Â x 180 mm - Full Modular - Tipo de cabo Low-profile Â  Cabos: - 1x ATX Connector - 2x EPS Connector - 2x Floppy Connector - 12x 4-Pin Peripheral Connector - 8x PCI-E Connector - 12x SATA Connector Â  ConteÃºdo da Embalagem: - Fonte Corsair - Conjunto de cabos    Garantia 12 meses de garantia  Peso 4220 gramas (bruto com embalagem)', '60668_index_g.jpg', 'fonte-corsair-hx1000i-1000w-reais-80-plus-platinum-cabos-modulares-pfc-ativo_25102.png', '60668_1421167411_g.jpg', '60668_1421167407_g.jpg', NULL, NULL, NULL),
(18, 'Fonte', 'Fonte Pixxo ATX 1000W PE1K0S0PSB ', 'PIXXO', 935.35, 'Fonte de 1000w com certificado 80 Plus Prata, possui suporte a tecnologia SLI, 1000w de saÃ­da continua a 50Âºc, com pfc ativo proporcionando menor gasto com energia elÃ©trica. Perfeita para seu pc gamer.', 'CaracterÃ­sticas: - Auto Switch - Bivolt - NÃ£o acompanha cabo de forÃ§a - Cor: Preto fosco - EficiÃªncia: Acima de 85% - Faixa de operaÃ§Ã£o: 100 ~ 240vac / 60~50hz - DimensÃµes aproximadas (C x L x A): 14.2 x 15.0 x 8.6 cm - PFC ativo - PotÃªncia: 1000 Watts real - 1 x ventoinha - VersÃ£o ATX 2.2_ProteÃ§Ãµes: - ProteÃ§Ã£o contra curto circuito em todas as saÃ­das - ProteÃ§Ã£o contra sobretensÃµes: +5v, +12v, +3.3v_Conectores: - Conector principal 20+4 pinos - 1 x Conector EPS 12V (4+4 pinos atx12v) - 1 x Conector Floppy - 3 x Conectores IDE - 2 x Conectores PCI-Express: 1 de 6 pinos e 1 de 6+2 pinos - 9 x Conectores SATA', 'download (1).jpg', 'Fonte Pixxo ATX 1000W PE1K0S0PSB .jpg', '18462_1338395682_g.jpg', 'pe1k0s0psb_5.jpg', NULL, NULL, NULL),
(19, 'Fonte', 'Fonte Pixxo ATX 800W PE800S0PSB', 'PIXXO', 558.71, '\"Fonte de 800w com certificado 80 Plus Prata,  possui suporte a tecnologia SLI, 800w de saÃ­da  continua a 50Âºc, com pfc ativo com eficiÃªncia acima de 85%. \"', '\"CaracterÃ­sticas: - Marca: Pixxo - Modelo: PE800S0PSB Â  EspecificaÃ§Ãµes: - Auto-Switch - Bivolt - Cor: Preto fosco - EficiÃªncia: Acima de 85% - Faixa de operaÃ§Ã£o: 100 ~ 240V (60/50hz) - DimensÃ£o Aproximada: 14.2 x 15.0 x 8.6cm - PFC ativo - PotÃªncia: 800 watts real - FAN: 120mm - VersÃ£o ATX: 2.2 Â  ProteÃ§Ãµes: - ProteÃ§Ã£o contra curto circuito em todas as saÃ­das - ProteÃ§Ã£o contra sobretensÃµes: +5v, +12v, +3.3v Â  Conectores: - 1x 20+4 pinos - 1x Conector EPS 12V - 1x Conector Floppy - 3x Conectores IDE - 2x Conectores PCI-Express: 1 de 6 / 1 de 6+2 pinos - 9x Conectores SATA Garantia 12 meses de garantia  Peso 2882 gramas (bruto com embalagem)  OPINIÃ•ES\"', '18466_1338401587_g.jpg', 'Fonte Pixxo ATX 800W PE800S0PSB.jpg', 'download (1).jpg', 'pe800sopsb_5.jpg', NULL, NULL, NULL),
(20, 'Fonte', 'Fonte EVGA 1600W 80 Plus Gold  Modular SuperNova 120-G2-1600-X1', 'EVGA', 2352.82, '\"Apresentamos a fonte de alimentaÃ§Ã£o EVGA SuporNOVA 1600.  Esta fonte eleva o nivel com 1600W de entrega do potÃªncia  contÃ­nua e 90% de eficiÃªncia. Um projeto totalmente modular  reduz a desordem no gabinete, usando 100% de capacitores  japoneses garante apenas a utilizaÃ§Ã£o dos melhores componentes.  O que isto significa? A melhor estabilidade, confiabilidade,  overclocking e controle sem precedentes.  A EVGA SuperNOVA 1600 Ã© a melhor ferramenta para remover  todos os gargalos no sistema e obter um desempenho incomparÃ¡vel.\"', '\"CaracterÃ­sticas: - Marca: EVGA - Modelo:Â 120-G2-1600-X1  EspecificaÃ§Ãµes:Â  - Tipo:Â ATX12V / EPS12V - PotÃªncia MÃ¡x:Â 1600WÂ  - FÃ£s: 140mm -Â Connector Principal: 24 pinos -Â + 12V Rails: Ãšnico - ConectorÂ PCI-Express:Â 9x 8pin (6 + 2), 6 pinos 5x - Conector de AlimentaÃ§Ã£o SATA: 16 - SLI Pronto - Modular completa - EficiÃªncia: 90% -Â 80 Plus Gold Certified -Â ProteÃ§Ã£o contra sobrecarga -Â TensÃ£o de entrada:Â 115-240 V - Faixa de FrequÃªncia Entrada:Â 17-10A - SaÃ­da:Â +3.3V@24A, + 5V @ 24A, +12V@133.3A, + 5VSB @ 3A, -12V@0.5A - MTBF:Â > 100.000 Horas  Conectores: - 1 x ATX de 24 pinosÂ  - EPS (CPU): 2 x 8pin (4 + 4)Â  - PCIE: 9 x 8pin (6 + 2), 5 x 6pinÂ  - 16 xÂ  - 6 xÂ SATAÂ de quatro pinos PeripheralÂ  - 2 x FloppyÂ   \"', 'fonte.jpg', '60444_1418986378_g.jpg', '60444_1418986374_g.jpg', '60444_1418986387_g.jpg', NULL, NULL, NULL),
(21, 'Fonte', '\"Fonte EVGA 1000W 80 Plus Gold Modular  SuperNova Modo ECO 220-G3-1000-X \"', 'EVGA', 1744.59, 'Nova Fonte da EVGA para aumentar a performace de seu PC.', '\"CaracterÃ­sticas: - Marca: EVGA - Modelo: 220-G3-1000-X Â  EspecificaÃ§Ãµes: Â  Comprimento dos cabos: - ATX: 1x 600mm (m) - EPS: 2x 750mm (m) - PCIE: 2x 700mm, 3x 750mm, 850mm (m) - SATA: 4x 550mm, 650mm, 750mm (m) - Cabo perifÃ©rico 4 pinos: 1x 550mm, 650mm, 750mm, 850mm (m) - Adaptador Floppy: 1x 100mm - AC Power: 1x 1500mm (m) - Tipo de cabo modular: Full Â  Quantidade de conector: - 24 pin ATX: 1x - EPS (CPU) 2x 8pin (4+4) - PCIE: 8x 8pin (6+2) - SATA: 12x - PerifÃ©ricos 4 pinos: 4x - Floppy: 1x Â  Energia: - Entrada de AC: 100 - 240 VAC, 15A, 50 - 60 Hz - PotÃªncia de saÃ­da: 1000W @ +50C Â  SaÃ­da mÃ¡xima: - +3.3V: 24A 120W - +5V: 24A 120W - +12V: 83.3A 999.6W - +5Vsb: 3A 15W - -12V: 0.5A 6W Â  InformaÃ§Ãµes adicionais: - Temperatura de operaÃ§Ã£o: 0Â° to 50Â° C - Capacitores japoneses: 100% - Modo ECO - DimensÃµes: 85mm (H) x 150mm (W) x 150mm (L) Â  ConteÃºdo da embalagem: - Fonte EVGA Garantia 12 meses de garantia  Peso 3180 gramas (bruto com embalagem)  OPINIÃ•ES\"', 'Fonte EVGA 1000W 80 Plus Gold Modular SuperNova Modo ECO 220-G3-1000-X .jpg', '86096_1487763784_g.jpg', '86096_1487763779_g.jpg', '86096_1487763761_g.jpg', NULL, NULL, NULL),
(22, 'Placa MÃ£e', 'Placa-MÃ£e GIGABYTE p/ AMD AM4 ATX  AORUS GA-AX370-GAMING K7 DDR4', 'GYGABYTE', 1464.59, 'As placas-mÃ£e da AORUS possuem o sistema mais avanÃ§ado do mercado atualmente. Com mais capacidade de personalizaÃ§Ã£o do que nunca e uma interface de usuÃ¡rio conveniente e intuitiva, tudo isso graÃ§as ao RGB Fusion, vocÃª farÃ¡ a sua AORUS a sua maneira. Os entusiastas agora tÃªm ainda mais opÃ§Ãµes com a capacidade de personalizar vÃ¡rias zonas independentemente. Para um uso mais funcional, os LEDs brilhantes e vibrantes podem ser configurados para exibir a temperatura ou carga do PC.', 'As placas-mÃ£e da AORUS possuem o sistema mais avanÃ§ado do mercado atualmente. Com mais capacidade de personalizaÃ§Ã£o do que nunca e uma interface de usuÃ¡rio conveniente e intuitiva, tudo isso graÃ§as ao RGB Fusion,', 'Placa-MÃ£e GIGABYTE p AMD AM4 ATX AORUS GA-AX370-GAMING K7 DDR4 .jpg', 'AM4_1920.jpg', '2017021610381289-big.jpg', '86501_1488918358_g.jpg', 50, '2017-06-06', '2018-06-06'),
(23, 'Placa MÃ£e', 'Placa-MÃ£e GIGABYTE p/ Intel LGA 1151  ATX AORUS GA-Z270X-GAMING 8 DDR4 ', 'GYGABYTE', 2352.82, '\"Placa-MÃ£e GIGABYTE p/ Intel LGA 1151  ATX AORUS GA-Z270X-GAMING. Melhor configuraÃ§Ã£o do mercado!\"', '\"CaracterÃ­sticas: - Marca: Gigabyte - Modelo: AORUS GA-Z270X-GAMING 8 Â  EspecificaÃ§Ãµes: Â  CPU: - Suporte para 7 Âª e 6 Âª geraÃ§Ã£o Intel Â® processadores Core â„¢ i7 / Intel Â® Core i5 â„¢ / Intel Â® Core i3 â„¢ / Intel Â® Pentium Â® processadores / Intel Â® Celeron Â® processadores no pacote LGA1151 - O cache L3 varia com a CPU Â  Chipset: - Intel Express Chipset Z270 Â  MemÃ³ria: - 4 x soquetes DIMM DDR4 que suportam atÃ© 64 GB de memÃ³ria do sistemaÂ  *Devido a uma limitaÃ§Ã£o do sistema operacional do Windows 32 bits, quando mais de 4 GB de memÃ³ria fÃ­sica estiver instalada, o tamanho da memÃ³ria real exibida serÃ¡ menor que o tamanho do fÃ­sico MemÃ³ria instalada. - Arquitetura de memÃ³ria de canal duplo - Suporte para DDR4 4133 (OC) / 4000 (OC) / 3866 (OC) / 3800 (OC) / 3733 (OC) / 3666 (OC) / 3600 (OC) / 3466 (OC) / 3400 (OC) / 3333 ( OC) / 3300 (OC) / 3200 (OC) / 3000 (OC) / 2800 (OC) / 2666 (OC) / 2400/2133 MHz mÃ³dulos de memÃ³ria - Suporte para mÃ³dulos de memÃ³ria ECC Un-buffered DIMM 1Rx8 / 2Rx8 (operar em modo nÃ£o ECC) - Â Suporte para mÃ³dulos de memÃ³ria nÃ£o DIMM 1Rx8 / 2Rx8 / 1Rx16 nÃ£o-ECC - Suporte para mÃ³dulos de memÃ³ria Extreme Memory Profile (XMP) Â  GrÃ¡ficos a bordo: Â   Â \"', 'Placa-MÃ£e GIGABYTE p Intel LGA 1151 ATX AORUS GA-Z270X-GAMING 8 DDR4 .jpg', 'D_Q_NP_761450-MLB25884603356_082017-Q.jpg', '90483_1499695863_g.jpg', 'Placa-MÃ£e GIGABYTE p Intel LGA 1151 mATX GA-Z270MX-GAMING 5 DDR4 .jpg', NULL, NULL, NULL),
(24, 'Placa MÃ£e', '\"Placa-MÃ£e GIGABYTE p/ Intel LGA 1151  mATX GA-Z270MX-GAMING 5 DDR4\"', 'GYGABYTE', 1163.41, 'Placa-MÃ£e GIGABYTE p/ Intel LGA 1151 mATX GA-Z270MX-GAMING 5 DDR4', '\"CaracterÃ­sticas:Â  - Marca: Gigabyte - Modelo: GA-Z270MX-GAMING 5 Â  EspecificaÃ§Ãµes: Â  CPU: - Suporte para 7Âª e 6Âª geraÃ§Ã£o Intel processadores Core i7 / Intel Core i5 / Intel Core i3 / Intel Pentium processadores / Intel Celeron processadores no pacote LGA1151 - O cache L3 varia de acordo com a CPU Â  Chipset: - Intel Express Chipset Z270 Â  MemÃ³ria: - 4 x DIMM DDR4 suporta atÃ© 64 GB de memÃ³ria do sistemaÂ  *Devido a uma limitaÃ§Ã£o do sistema operacional Windows de 32 bits, quando mais de 4 GB de memÃ³ria fÃ­sica Ã© instalada, o tamanho real da memÃ³ria exibida serÃ¡ menor que o tamanho do fÃ­sico MemÃ³ria instalada. - Arquitetura de memÃ³ria de canal duplo - Suporte para DDR4 4133 (OC) / 4000 (OC) / 3866 (OC) / 3800 (OC) / 3733 (OC) / 3666 (OC) / 3600 (OC) / 3466 (OC) / 3400 (OC) / 3333 OC) / 3300 (OC) / 3200 (OC) / 3000 (OC) / 2800 (OC) / 2666 (OC) / 2400/2133 MHz - Suporte para mÃ³dulos de memÃ³ria DIMM 1Rx8 / 2Rx8 nÃ£o-protegidos ECC (operam em modo nÃ£o-ECC) - Suporte para mÃ³dulos de memÃ³ria DIMM 1Rx8 / 2Rx8 / 1Rx16 nÃ£o-protegidos com ECC nÃ£o-ECC - Suporte para mÃ³dulos de memÃ³ria Extreme Memory Profile (XMP) Â  GrÃ¡ficos Onboard: - Integrated Graphics Processor-Intel suporte HD Graphics: 1x DisplayPort, suportando uma resoluÃ§Ã£o mÃ¡xima de 4096x2304 @ 60 HzÂ  * Suporte para a versÃ£o DisplayPort 1.2. - 1x porta HDMI, suportando uma resoluÃ§Ã£o mÃ¡xima de 4096x2160 @ 24 HzÂ  * Suporte para HDMI versÃ£o 1.4. - MÃ¡xima memÃ³ria compartilhada de 1 GB Â \"', 'Placa-MÃ£e GIGABYTE p Intel LGA 1151 ATX AORUS GA-Z270X-GAMING 8 DDR4 .jpg', 'D_Q_NP_761450-MLB25884603356_082017-Q.jpg', '90483_1499695863_g.jpg', '2017021610381289-big.jpg', NULL, NULL, NULL),
(25, 'Placa MÃ£e', 'Placa-MÃ£e MSI p/ Intel LGA 2066  ATX X299 SLI PLUS DDR4', 'MSI', 1576.35, 'Placa-MÃ£e MSI p/ Intel LGA 2066  ATX X299 SLI PLUS DDR4', 'CaracterÃ­sticas: - Marca: MSI - Modelo: X299 SLI PLUS  EspecificaÃ§Ãµes: Â  CPU: - Suporte: Suporta novos processadores IntelÂ® Core â„¢ X-series - Socket: LGA 2066 Â  Chipset: - IntelÂ® X299 Chipset Â  Graphics Interface: - 4 x PCI-E 3.0 x16 slots - 3-way SLI / CrossFire Â  MemÃ³ria: - 8 DIMMs - Quad Channel DDR4-4266MHz Â  Slots de expansÃ£o: - 2 x PCI-E 3.0 x1 Slot Â  SATA / M.2 / U.2: - 8 x SATA 6Gb.s ports - 2 x Turbo M.2 slots - 1 x Turbo U.2 conector Â  Intel Optane: - IntelÂ® Optaneâ„¢ Memory Ready Â  Portas USB: - USB 3.1 Gen2: 3 x USB 3.1 Gen2 (Type A+C) - USB 3.1 Gen1: 8 x USB 3.1 Gen1 - USB 2.0: 8 x USB 2.0 Â  LAN: - IntelÂ® I219V + IntelÂ® I211-AT Gigabit LAN Â  Ãudio: - 7.1 Channel High Definition Audio com S/PDIF Â  Fator de Forma: - ATX  Conectores: - Clear CMOS Button - Teclado/ Mouse - USB 2.0 - Dual IntelÂ® LAN - Golden Audio Connectors - BIOS Flashback Button - USB 2.0 / BIOS Flashback+ - USB 3.1 Gen1 - USB 3.1 Gen2 Type-A/C - Optical S/PDIF-Out Â  ConteÃºdo da embalagem: - Placa-MÃ£e MSIÂ  - Driver de instalaÃ§Ã£o - Guia RÃ¡pido  Garantia 12 meses de garantia Peso 1785 gramas (bruto com embalagem)', '90655_1499698604_g.jpg', 'images.jpg', '90655_1499698620_g.jpg', 'Placa-MÃ£e MSI p Intel LGA 2066 ATX X299 TOMAHAWK DDR4 .jpg', NULL, NULL, NULL),
(26, 'Placa MÃ£e', 'Placa-MÃ£e MSI p/ AMD AM4 ATX X370  XPOWER GAMING TITANIUM DDR4', 'MSI', 1870.47, 'Placa-MÃ£e MSI p/ AMD AM4 ATX X370 XPOWER GAMING TITANIUM', '\"CaracterÃ­sticas: - Marca: MSI - Modelo: X370 XPOWER GAMING TITANIUM Â  EspecificaÃ§Ãµes: Â  CPU: - Suporta processadores da sÃ©rie RYZEN da AMD e processadores da 7Âª sÃ©rie Gen A / Athlon para Socket AM4 * Esta funÃ§Ã£o serÃ¡ suportada dependendo da CPU. Â  Chipset: - AMD Chipset X370 Â  MemÃ³ria: - 4 slots de memÃ³ria DDR4, suporta atÃ© 64GB - Suporta DDR4 1866/2133/2400/2667 (OC) / 2933 (OC) / 3200 (OC) + Mhz* - Arquitetura de memÃ³ria de canal duplo * 7Âª SÃ©rie Gen A / Athlon suporta um mÃ¡ximo de 2400 MHz Â  Slots: - 2x slots PCIe 3.0 x16 (PCIE_2, PCIE_4) - Os processadores da sÃ©rie RYZEN suportam o modo x16 / x0, x8 / x8 - Os 7Âª processadores da sÃ©rie Gen A / Athlon suportam o modo x8 / x0 - 1x slot PCIe 2.0 x16 (PCIE_6 , Suporta modo x4) - 3x PCIe 2.0 x1 slots Â  GrÃ¡ficos: - 1x HDMI 2.0, suporta uma resoluÃ§Ã£o mÃ¡xima de 4096x2160 @ 60Hz* - 1x DisplayPort, suporta uma resoluÃ§Ã£o mÃ¡xima de 4096x2160 @ 60Hz* * Somente suporte ao usar processadores 7th Gen A-series / Athlon. Â  Multi-GPU: - SÃ©rie RYZEN - Suporta 2-Way NVIDIA SLI - Suporta 3-Way AMD Tecnologia CrossFire - 7Âª Gen A-series / Athlon processador - Suporta 2-Way AMD Tecnologia CrossFire Â  Armazenamento: Â  AMD x370 Chipset: - 6x SATA 6Gb / s portas* - 2x M2 portas (M Key) - Slot M2_1 suporta PCIe 3.0 x4 (processador sÃ©rie RYZEN) ou PCIe 3.0 x2 (7Âª Gen A-series / Athlon M2_2 suporta PCIe 2.0 x4 e SATA 6Gb/s 2242/2260/2280 dispositivos de armazenamento - 1x porta U.2 - Suporta PCIe 3.0 x4 (RYZEN Processador sÃ©rie) ou PCIe 3.0 x2 (processadores 7th Gen A / Athlon) Armazenamento NVMe * Suporte mÃ¡ximo 2x M2 PCIe SSDs + 6x SATA HDDs ou 2x M.2 SATA SSDs + 4x SATA HDDs.Â  Â  RAID: - AMD x370 Chipset - Suporta RAID 0 Â  USB: Â  ASMedia ASM2142 Chipset: - 1x USB 3.1 Porta Gen2 (SuperSpeed â€‹â€‹USB 10 Gbps) no painel traseiro - 1x USB 3.1 Porta Gen2 (SuperSpeed â€‹â€‹USB 10 Gbps) no painel traseiro Â  Chipset AMD X370: - 1x Porta USB 3.0 Gen2 (SuperSpeed â€‹â€‹USB 10Gbps) atravÃ©s do conector U', '86282_1488488303_g.jpg', 'msi-z270_xpower_gaming_te-cooling-hero.jpg', 'Placa-MÃ£e MSI p AMD AM4 ATX X370 XPOWER GAMING TITANIUM DDR4 .jpg', '86282_1488488313_g.jpg', NULL, NULL, NULL),
(27, 'Placa de Video', 'Placa de VÃ­deo VGA NVIDIA ASUS GEFORCE  GTX 1060 6Gb GDDR5, 192-Bits, VR Ready,  Auto-Extreme, Wing-Blade Fans,  DVI/2-HDMI/2-DP, DUAL-GTX1060-O6G', 'NVIDIA', 1470.47, '\"Placa de VÃ­deo VGA NVIDIA ASUS GEFORCE GTX 1060 6Gb GDDR5,  192-Bits, VR Ready, Auto-Extreme,  Wing-Blade Fans, DVI/2-HDMI/2-DP, DUAL-GTX1060-O6G. A placa de video ASUS SÃ©rie Dual GeForceÂ® GTX 1060 e a  placa-mÃ£e X99-A II compartilham temas de cores perfeitamente e estÃ£o prontos para o Windows 10. Esta placa vem equipada com DirectX 12 para conseguir mais desempenho grÃ¡fico da CPU e evitar gargalos na GPU.\"', '\"CaracterÃ­sticas:Â  - Marca: ASUS - Modelo: DUAL-GTX1060-O6G Â  EspecificaÃ§Ãµes: Â  Processador GrÃ¡fico: - NVIDIA GeForce GTX 1060 - Barramento: PCI Express 3.0 - CUDA Core: 1280 Â  MemÃ³ria: - Tipo: GDDR5 - Capacidade: 6GB - Clock de memÃ³ria: 8008 Mhz - Interface de memÃ³ria: 192-bits Â  Modo OC: - GPU Boost Clock: 1809 MHz - GPU base Clock: 1594 MHz Â  Gaming Mode: - GPU Boost Clock: 1785 MHz - GPU Base Clock: 1569 MHz Â  Recursos: - Open GL 4.5 - Software: ASUS GPU Tweak II & DriverÂ  Â  ResoluÃ§Ã£o: - ResoluÃ§Ã£o Digital: 7680 x 4320 (Max) Â  Interface: - 1x SaÃ­da de DVI-D - 2x SaÃ­da para HDMI 2.0 - 2x Porta de Display (DP Regular) - Suporta HDCP Â  AlimentaÃ§Ã£o: - Conectores: 1x 6-pin Â  FÃ­sico: - DimensÃµes: 24.2 x 13 x 4.3 cm Â  ConteÃºdo da Embalagem: - Placa de VÃ­deo VGA ASUS GTX 1060 6GB - Driver de InstalaÃ§Ã£o - Guia do UsuÃ¡rio    Garantia 12 meses de garantia  Peso 1015 gramas (bruto com embalagem)\"', '60nrh7dsl9oc2.jpg', '32415-3_311016144744.jpg', '60nrh7dvm3vw2.jpg', 'Placa de VÃ­deo VGA NVIDIA Galax GEFORCE GTX 1060 OC Entusiasta 6GB .jpg', NULL, NULL, NULL),
(28, 'placa de video', 'Placa de VÃ­deo VGA NVIDIA Galax GEFORCE  GTX 1060 OC Entusiasta 6GB DDR5 192Bits  8008MHZ 60NRH7DSL9OC ', 'NVIDIA', 1294, 'Dual fan 80mm Aumenta a estabilidade e performance de resfriamento Design Eficiente Heatpipes de Cobre 6mmx2 Resfriamento imediato da GPU DissipaÃ§Ã£o de Calor Superior Materiais Premium Layout do PCB otimizado para aprimorar o desempenho elÃ©trico PotÃªncia digital de alimentaÃ§Ã£o trifÃ¡sica (3+1) Capacitores sÃ³lidos, indutores de alta qualidade Total estabilidade no jogo', '\"CaracterÃ­sticas: - Marca: Galax - Modelo: 60NRH7DSL9OC Â  EspecificaÃ§Ãµes: Â  Interface: - PCI Express 3.0 x16 (Compatible with 1.1) Â  GPU: - CUDA Cores: 1280 - FrequÃªncia Base (MHz): 1518 - FrequÃªncia Boost (MHz): 1733 Â  MemÃ³ria: - MemÃ³ria Clock: 8.000MHz (8.0Gbps) - Capacidade de memÃ³ria: 6GB - Interface de memÃ³ria Largura: 192-bit DDR5 Â   Suporte: - OpenGL: 4.5 - DirectX 12 Â  Display: - VÃ¡rios monitores: 3 com G-Sync - HDMI 2.0b -1080p HD Video - resoluÃ§Ã£o 4K (3840x2160 @60Hz) - DisplayPort 1.4-ResoluÃ§Ã£o 4K (4096x2160-incluindo 3840x2160 @60Hz) - Dual Link DVI-D - ResoluÃ§Ã£o -2560x1600. Â  Conectores: - 1x DVI - 1x HDMI 2.0 - 1x DP 1,4 Â  Energia: - Fonte recomendada: 400W 80 PLUS - Consumo mÃ¡ximo: 120W - 1x 6-pin Power Connect Â  Tecnologias NVIDIA: - VR Ready - NVIDIA Ansel - NVIDIA G-SYNCâ„¢ - NVIDIA GameStreamâ„¢ Â  ConteÃºdo da embalagem: - Placa de VÃ­deo VGA Galax - Drive de instalaÃ§Ã£o - Guia RÃ¡pido Garantia 12 meses de garantia Peso 865 gramas (bruto com embalagem)\"', 'VGA NVIDIA .jpg', 'download.jpg', 'download (1).jpg', 'placa de video 1050.jpg', 30, '2015-12-12', '2018-12-25'),
(29, 'placa de video', 'Placa de Video VGA NVIDIA ASUS GEFORCE GTX 1050 Ti 4GB Expedition DDR5 - EX-GTX1050TI-O4G', 'NVIDIA', 926.24, 'Placa de Video VGA NVIDIA ASUS GEFORCE GTX 1050 Ti 4GB Expedition DDR5 - EX-GTX1050TI-O4G', '\"Caracteristicas: - Marca: ASUS - Modelo: EX-GTX1050TI-O4G   EspecificaÃ§Ãµes:   Processador GrÃ¡fico: - NVIDIA GeForce GTX 1050 Ti - CUDA NÃºcleo: 768   Barramento: - PCI Express 3.0   Clock do processador: - Clock da GPU Boost: 1455 MHz - Clock da GPU PadrÃ£o: 1341 MHz   MemÃ³ria: - Capacidade: 4GB - Tipo: GDDR5 - Clock: 7008 MHz - Interface: 128-bits   Interface: - 1x DVI-D - 1x HDMI 2.0 - 1x DP Regular - Suporta HDCP   Recursos: - OpenGL 4.5 - DirectX 12 - NVIDIA ANSEL - NVIDIA GameWorks - NVIDIA GPU Boost 3.0   ConteÃºdo da Embalagem: - Placa de VÃ­deo ASUS - Driver de InstalaÃ§Ã£o - Guia do UsuÃ¡rio    Garantia 12 meses de garantia  Peso 855 gramas (bruto com embalagem)\"', '89537_1495540873_gg.jpg', 'asus-gtx1050ti-expidition-review14.jpg', '89537_1495540866_gg.jpg', '89537_index_gg.jpg', NULL, NULL, NULL),
(30, 'placa de video', 'Placa de Video VGA AMD PowerColor RADEON  RX 570 4GB Red Devil AXRX 570 4GBD5-3DH/OC  - 4715409 188902', 'AMD', 1458.7, 'Placa de Video VGA AMD PowerColor RADEON  RX 570 4GB Red Devil AXRX 570 4GBD5-3DH/OC  - 4715409 188902', 'CaracterÃ­sticas: - Marca: PowerColor - Modelo: AXRX 570 4GBD5-3DH/OC Â  EspecificaÃ§Ãµes: Â  Engenho GrÃ¡fico: - RADEON RX 570 - Clock: AtÃ© 1320MHz com boost Â  MemÃ³ria: - Capacidade: 4GB - Tipo: GDDR5 - Clock: 1750MHz x4 (7.0Gbps) - Interface: 256bit Â  Recursos: - DirectX: 12 - OpenGL - Tecnologia CrossFireX - Tecnologia ATI Stream - Tecnologia ATI Eyefinity - Suporte HDCP Â  Interface: - PCIE 3.0 Â  Conectores: - 1x DL DVI-D - 1x HDMIÂ  - 3x DisplayPort Â  ResoluÃ§Ãµes Suportadas: - DVI: 2560x1600 - DisplayPort: 4096x2160 - HDMI: 4096x2160 Â  FÃ­sico: - DimensÃµes da Placa: 310 x 128 x 388 mm - Requisito mÃ­nimo de energia: 450W - Conector 8-Pin PCI Express Â  ConteÃºdo da Embalagem: - Placa de VÃ­deo Powercolor - Driver de InstalaÃ§Ã£o - Guia do UsuÃ¡rio  Garantia 12 meses de garantia  Peso 1390 gramas (bruto com embalagem)', '14-131-716-Z01.jpg', 'Placa de Video VGA AMD PowerColor RADEON RX 570 4GB Red Devil  .jpg', 'show_img_4.jpg_2.jpg', 'Placa de Video VGA AMD ASUS RADEON RX 580 ROG Strix Gaming 8GB .jpg', 55, '2017-05-16', '2019-08-19'),
(31, 'placa de video', 'Placa de Video VGA AMD ASUS  RADEON RX 570 Gaming 4GB  GDDR5 256 Bits - ROG-STRIX-RX570-O4G-GAMING', 'AMD', 1868.39, 'Placa de Video VGA AMD ASUS  RADEON RX 570 Gaming 4GB  GDDR5 256 Bits - ROG-STRIX-RX570-O4G-GAMING', 'CaracterÃ­sticas: - Marca: ASUS - Modelo: ROG-STRIX-RX570-O4G-GAMING  EspecificaÃ§Ãµes:  Interface: -Â PCI Express 3.0  Chipset: - Fabricante: AMD -Â SÃ©rie AMD Radeon RX 500Â  - GPU:Â Radeon RX 570 - Boost Clock:Â 1310 MHz (modo OC)Â  /Â 1300 MHz (modo de jogo) - Stream Processors: 2048  MemÃ³ria: - Clock eficaz de memÃ³ria:Â 7000 MHz (1750 MHz)Â Â  - Tamanho da memÃ³ria: 4GB - Interface de memÃ³ria: 256 bits - Tipo de MemÃ³ria: GDDR5  API 3D:  -Â OpenGL 4.5  Portas: -Â 1 x HDMI 2.0 -Â 1 x DisplayPort 1.4 -Â 2 x DVI-D  Geral: - ResoluÃ§Ã£o mÃ¡xima:Â 5120 x 2880 - Suporte CrossFireX -Â Resfriador: Com ventilador  ConteÃºdo da embalagem: - 01Â Placa de Video VGA ASUS  Garantia 12 meses de garantia  Peso 1045 gramas (bruto com embalagem)', 'Placa de Video VGA AMD ASUS RADEON RX 570 Gaming 4GB GDDR5 256 Bits .jpg', '114699-5-Placa_de_video_AMD_Radeon_RX_570_4GB_PCI_E_Asus_ROG_RO.jpg', '88627_1492605441_g.jpg', '20070_3_20170518015433.jpg', NULL, NULL, NULL),
(32, 'HD', 'HD Toshiba SATA 3.5Â´ P300 2TB 7200RPM  64MB Cache SATA 6.0Gb/s - HDWD120EZSTA', 'Toshiba', 411.65, 'Tendo maior espaÃ§o para armazenamento de dados! Modo SATA3.5, dando maior velocidade na trasmissÃ£o dos dados!', '\"CaracterÃ­sticas: - Marca: Toshiba - Modelo: HDWD120EZSTA Â  EspecificaÃ§Ãµes: - Fator de forma: 3,5 polegadas - Interface: SATA 6.0 Gbit/s - Capacidade: 2 TB - Velocidade rotacional: 7200 rpm - Tamanho do buffer: 64 MB - DimensÃµes: 147 x 101,6 x 26,1mm Â  Gerenciamento de energia: - TensÃ£o de alimentaÃ§Ã£o: 5VDC (Â± 5%) / 12VDC (Â± 10%) - Consumo - Leitura / GravaÃ§Ã£o: 6,4 W tip. - Consumo - Baixo consumo de energia ocioso: 5,2 W tip.  InformaÃ§Ãµes Adicionais: - Formato AvanÃ§ado (AF) - CompatÃ­vel com RoHS - Livre de halogÃªnio Â  Confiabilidade: - Taxa de erro irrecuperÃ¡vel: 1 por 10E14 bits lidos  ConteÃºdo da Embalagem: - Disco rÃ­gido interno Toshiba - Guia de inÃ­cio rÃ¡pidoÂ  - Folheto de garantiaÂ   Garantia 12 meses de garantia  Peso 755 gramas (bruto com embalagem)\"', '91138_1500645486_g.jpg', 'download.jpg', '72217_1501007492_g.jpg', 'HD Toshiba SATA 3.5Â´ P300 2TB 7200RPM 64MB Cache SATA 6.0Gb-s - HDWD120EZSTA .jpg', NULL, NULL, NULL),
(33, 'HD', 'HDÂ Toshiba SATA 2.5Â´ p/ Notebook L200 1TB  5400RPM 8MB Cache SATA 3Gbs/s HDWJ110XZSTA ', 'Toshiba', 349.29, 'HDÂ Toshiba SATA 2.5Â´ p/ Notebook L200 1TB  5400RPM 8MB Cache SATA 3Gbs/s HDWJ110XZSTA', '\"CaracterÃ­sticas: - Marca: Toshiba - Modelo:Â HDWJ110XZSTA  EspecificaÃ§Ãµes:Â  - Capacidades de Armazenamento: 1TB - Interface:Â Serial ATA 2,6 (SATA) - Velocidade de interface: Â AtÃ© 3Gb/s - Fator de forma: 2.5\"\" - Velocidade de rotaÃ§Ã£o: 5400 RPM - Tempo mÃ©dio de latÃªncia: 5.56ms - Tamanho do buffer: 8MB - DimensÃµes: 9 x 0.94 x 6,86 cm - CompatÃ­vel com computadores desktop SATA - Baixo consumo de energiaÂ   ConteÃºdo da Embalagem: - 01 HD Toshiba  * Imagem meramente ilustrativaÂ   Garantia 12 meses de garantia  Peso 160 gramas (bruto com embalagem)\"', 'hd-toshiba-p300-1tb-hdwd110xzsta-7200rpm-sata-6-gbs-64mb-cache-35_43835.jpg', '207582801.jpg', '72217_1501007492_g.jpg', '72217_1501007475_g.jpg', NULL, NULL, NULL),
(34, 'HD', 'HD WD SATA 3,5Â´ RED NAS 2TB  5400RPM 64MB Cache SATA 6.0Gb/s - WD20EFRX', 'WD', 1025.76, 'Nossa fÃ³rmula de sucesso levou ao crescimento de WD Red  para as maiores capacidades possÃ­veis. DisponÃ­vel em atÃ©  6 TB, a WD oferece um portfÃ³lio de soluÃ§Ãµes de NAS ainda  mais amplo e abrangente para nossos clientes, com opÃ§Ãµes  totais de 1 a 16 compartimentos. A famÃ­lia WD Red acabou de crescer.', '\"Â  CaracterÃ­sticas: - Marca:Â WD - Modelo:Â WD20EFRX-68EUZN0  EspecificaÃ§Ãµes: - SÃ©rie: Red - Acondicionamento:Â Bare Drive - Interface:Â SATA 6.0Gb/s - Capacidade:Â 2TB - RPM:Â IntelliPower - Cache:Â 64MB -Â Form Factor:Â 3.5\"\"Â  -Â Taxa de dados internos:Â 145 MBpsÂ  -Â Velocidade de transferÃªncia de drive:Â 600 MBps (externo)Â   Garantia 12 meses de garantia  Peso 604 gramas (bruto com embalagem)\"', 'HD WD SATA 3,5Â´ RED NAS 2TB 5400RPM 64MB Cache SATA 6.0Gb-s - WD20EFRX .jpg', 'D_Q_NP_916016-MLB25739931090_072017-Q.jpg', '48171_1386780802_g.jpg', '48171_1386780795_g.jpg', NULL, NULL, NULL),
(35, 'HD SSD', 'SSD Kingston 2.5Â´ 120GB A400 SATA III Leituras: 500MBs  / GravaÃ§Ãµes: 320MBs - SA400S37/120G', 'KingSton', 339.88, 'SSD Kingston 2.5Â´ 120GB A400 SATA III Leituras: 500MBs  / GravaÃ§Ãµes: 320MBs - SA400S37/120G', '\" CaracterÃ­sticas: - Marca: Kingston - Modelo: SA400S37/120G Â  EspecificaÃ§Ãµes: - Formato: 2,5 polÂ  - Interface: SATA Rev. 3.0 (6Gb/s) â€” compatÃ­vel com a versÃ£o anterior SATA Rev. 2.0 (3Gb/s) - Capacidades: 120GB - NAND: TLCÂ  - Performance de referÃªncia - atÃ© 500MB/s para leitura e 320MB/s para gravaÃ§Ã£oÂ  - Temperatura de armazenamento: -40 Â°C a 85 Â°CÂ  - Temperatura de operaÃ§Ã£o: 0 Â°C a 70 Â°C - VibraÃ§Ã£o quando em operaÃ§Ã£o: 2,17G pico (7 â€“ 800 Hz) - VibraÃ§Ã£o quando nÃ£o estÃ¡ em operaÃ§Ã£o: 20G pico (10 â€“ 2000 Hz) - Expectativa de vida Ãºtil: 1 milhÃ£o de horas MTB  \"', 'ssd-120gb-kingston-a400-sata-iii-sa400s37120g-a-500x500.jpg', 'SSD Kingston 2.5 120GB A400 SATA III Leituras 500MBs - Gravacoes 320MBs - SA400S37-120G .jpg', '020724031148202.jpg', 'SSD Kingston 2.5Â´ 240GB A400 SATA III Leituras 500MBs - GravaÃ§Ãµes 350MBs - SA400S37-240G.jpg', NULL, NULL, NULL),
(36, 'HD SSD', 'SSD Kingston 2.5Â´ 240GB A400 SATA III  Leituras: 500MBs / GravaÃ§Ãµes: 350MBs - SA400S37/240G', 'KingSton', 552.82, 'SSD Kingston 2.5Â´ 240GB A400 SATA III Leituras: 500MBs  / GravaÃ§Ãµes: 350MBs - SA400S37/240G', '\" CaracterÃ­sticas: - Marca: Kingston - Modelo: SA400S37/240G Â  EspecificaÃ§Ãµes: - Formato: 2,5 polÂ  - Interface: SATA Rev. 3.0 (6Gb/s) â€” compatÃ­vel com a versÃ£o anterior SATA Rev. 2.0 (3Gb/s) - Capacidades: 240GB - NAND: TLCÂ  - Performance de referÃªncia - atÃ© 500MB/s para leitura e 350MB/s para gravaÃ§Ã£oÂ  - Temperatura de armazenamento: -40 Â°C a 85 Â°CÂ  - Temperatura de operaÃ§Ã£o: 0 Â°C a 70 Â°C - VibraÃ§Ã£o quando em operaÃ§Ã£o: 2,17G pico (7 â€“ 800 Hz) - VibraÃ§Ã£o quando nÃ£o estÃ¡ em operaÃ§Ã£o: 20G pico (10 â€“ 2000 Hz) - Expectativa de vida Ãºtil: 1 milhÃ£o de horas MTB  \"', 'hd_ssd_kingston_2_5_240gb_a400_sata_iii_leituras_500mbs_gravacoes_350mbs_sa400s37_240g_2.jpg', 'SSD Kingston 2.5Â´ 240GB A400 SATA III Leituras 500MBs - GravaÃ§Ãµes 350MBs - SA400S37-240G.jpg', '85197_1484306080_g.jpg', 'SSD Kingston 2.5Â´ 960GB UV400 SATA III Leituras 540MB-s e GravaÃ§Ãµes 500MB-s - SUV400S37-960G .jpg', NULL, NULL, NULL),
(37, 'HD SSD', 'SSD Sandisk PLUS 2.5Â´ SATA III 6Gb/s 960GB Leitura: 535MB/s e GravaÃ§Ãµes: 450MB/s - SDSSDA-960G-G26 ', 'Sandisk', 1799.88, '\"SSD Sandisk PLUS 2.5Â´ SATA III 6Gb/s 960GB  Leitura: 535MB/s e GravaÃ§Ãµes: 450MB/s - SDSSDA-960G-G26 \"', '\"CaracterÃ­sticas: - Marca: SandiskÂ  - Modelo: SDSSDA-960G-G26 Â  EspecificaÃ§Ãµes: - Capacidade: 960GB - Fator de forma: 2.5\"\" - Componentes da memÃ³ria: MLC - Interface: SATA III Â  AtuaÃ§Ã£o: - Leitura Sequencial MÃ¡xima: AtÃ© 535 MBps - Escrita Sequencial MÃ¡xima: AtÃ© 450 MBps Â  Meio Ambiente: - Temperatura de operaÃ§Ã£o: 0 Â° C ~ + 70 Â° C - ResistÃªncia de choque mÃ¡ximo: 1500G - ResistÃªncia de vibraÃ§Ã£o mÃ¡xima: 5 gRMS, 10-2000 Hz Â / 4,9 gRMS, 7-800 Hz  ConteÃºdo da embalagem: - SSD SandiskÂ     Garantia 12 meses de garantia  Peso 60 gramas (bruto com embalagem)\"', 'SSD Sandisk PLUS 2.5Â´ SATA III 6Gb-s 480GB.jpg', 'hd-ssd-sandisk-plus-480gb-535mbs-g26-sata3-pronta-entrega-D_NQ_NP_451711-MLB20619.jpg', 'Z1166.jpg', 'D_Q_NP_448115-MLB25145459286_112016-Q.jpg', NULL, NULL, NULL);
INSERT INTO `produto` (`codProduto`, `tipo`, `nomeProduto`, `marca`, `valor`, `descricao`, `especTecnica`, `fotoUm`, `fotoDois`, `fotoTres`, `fotoQuatro`, `percentDesconto`, `dataInicioPromo`, `dataFimPromo`) VALUES
(38, 'HD SSD', 'SSD Sandisk PLUS 2.5Â´ SATA III 6Gb/s 960GB  Leitura: 535MB/s e GravaÃ§Ãµes: 450MB/s - SDSSDA-960G-G26', 'Sandisk', 988.12, 'ConfiÃ¡vel, rÃ¡pido e muita capacidade. A SanDisk, pioneira em  tecnologias de armazenamento de estado sÃ³lido Ã© a marca  de confianÃ§a dos profissionais da Ã¡rea, oferece maior velocidade  e desempenho com o SanDisk SS Plus.', '\"CaracterÃ­sticas: - Marca: Sandisk - Modelo: SDSSDA-480-G26 Â  EspecificaÃ§Ãµes: - Capacidade: 480 GB - DimensÃµes: 69,85 x 100,5 x 7,0 mm - Interface: SATA RevisÃ£o 3.0 (6 Gb/s) - Temperatura operacional: 32 ÂºF a 158 ÂºF (0 ÂºC a 70 ÂºC) - Choque: Resistente a atÃ© 1500 G Â  Desempenho: - Leitura: atÃ© 535MB/s - GravaÃ§Ãµes: atÃ© 445MB/s Â  VibraÃ§Ã£o: - 5 gRMS, 10-2000 HZ - 4,9 gRMS, 7-800 HZ Â  ConteÃºdo da Embalagem: - SSD Sandisk PLUS 2.5\"\"  Garantia 12 meses de garantia  Peso 60 gramas (bruto com embalagem)\"', '92266_index_gg.jpg', 'SSD Sandisk PLUS 2.5Â´ SATA III 6Gbs 960GB .jpg', 'sandisk-ultra-ii-box-intro-450r_400-Wide.jpg', '92266_1505908015_gg.jpg', 40, '2017-09-16', '2019-12-12'),
(39, 'HD SSD', 'SSD Samsung 850 PRO 2.5Â´ 256GB SATA III 6Gb/s Leituras: 550MB/s e GravaÃ§Ãµes: 520MB/s - MZ-7KE256BW', 'Samsung', 770.9, 'SSD Samsung 850 PRO 2.5Â´ 256GB SATA III 6Gb/s  Leituras: 550MB/s e GravaÃ§Ãµes: 520MB/s - MZ-7KE256BW', '\"CaracterÃ­sticas: - Marca: Samsung - Modelo: MZ-7KE256BW  EspecificaÃ§Ãµes:  - TIpo: SSD ( Internal Solid State Drive) - Fator de Forma: 2.5\"\" - Capacidade: 256GB - Interface: SATA III - Componentes de MemÃ³ria: 3-D Vertical - Controlador: Samsung MEX - MTBF: 2.000.000 horas - DimensÃµes aprox. do produto: 7x 69,85 x 100 mm  AtuaÃ§Ã£o: - Leitura sequÃªncial mÃ¡x: AtÃ© 550 MBps - Escrita sequÃªncial mÃ¡x: AtÃ© 520 MBps - Leitura 4KB aleatÃ³ria: AtÃ© 100.000 IOPS - Escrita 4KB AleatÃ³ria: AtÃ© 90.000 IOPS  Ambiente: - Temperatura de OperaÃ§Ã£o: 0 ÂºC ~ + 70ÂºC  - Umidade de OperaÃ§Ã£o: 5% a 95% - Consumo de Energia: 3.5W - Consmuo de Energia (em espera): 0.05W  ConteÃºdo da embalagem: - 01 SSD Samsung 850 PRO 2.5Â´  - 01 Manual do UsuÃ¡rio     Garantia 12 meses de garantia Peso 120 gramas (bruto com embalagem)\"', '68077_1459803438_gg.jpg', '68077_1459803443_gg.jpg', '68077_1459803453_gg.jpg', '68077_index_gg.jpg', NULL, NULL, NULL),
(40, 'HD SSD', 'SSD Samsung 850 EVO 2.5Â´ 1TB SATA III 6Gb/s Leituras: 540MB/s e GravaÃ§Ãµes: 520MB/s - MZ-75E1T0B/AM', 'Samsung', 2294.9, 'SSD Samsung 850 EVO 2.5Â´ 1TB SATA III 6Gb/s Leituras: 540MB/s e GravaÃ§Ãµes: 520MB/s - MZ-75E1T0B/AM', '\"CaracterÃ­sticas: - Marca: SSD - Modelo: MZ-75E1T0B/AM  EspecificaÃ§Ãµes:  - TIpo: SSD ( Internal Solid State Drive) - Fator de Forma: 2.5\"\" - Capacidade: 1TB - Interface: SATA III - Componentes de MemÃ³ria: 3-D Vertical - Controlador: Samsung MGX - MTBF: 2.000.000 horas - DimensÃµes aprox. do produto: 6,86 x 69,85 x 100,08 mm  AtuaÃ§Ã£o: - Leitura sequÃªncial mÃ¡x: AtÃ© 540 MBps - Escrita sequÃªncial mÃ¡x: AtÃ© 520 MBps - Leitura 4KB aleatÃ³ria: (QD1) [IOPS]: atÃ© 10.000 IOPS  / (QD32) [IOPS]: atÃ© 98.000 IOPS - Escrita 4KB AleatÃ³ria: (QD1) [IOPS]: atÃ© 40.000 IOPS  / (QD32) [IOPS]: atÃ© 90.000 IOPS  Ambiente: - Temperatura de OperaÃ§Ã£o: 0 ÂºC ~ + 70ÂºC  - Umidade de OperaÃ§Ã£o: 5% a 95%   ConteÃºdo da embalagem: - 01 SSD Samsung 850 EVO 2.5Â´ 1TB SATA III - MZ-75E1T0B/AM - 01 Manual do UsuÃ¡rio    Garantia 12 meses de garantia Peso 135 gramas (bruto com embalagem)\"', '68075_index_gg.jpg', '68075_1443613641_gg.jpg', '68075_1443613635_gg.jpg', '68075_1443613567_gg.jpg', NULL, NULL, NULL),
(41, 'Mouse', '\"Mouse Gamer Razer Naga  Green Special Edition 8200 DPI', 'Razer', 354, 'Mouse Gamer Razer Naga  Green Special Edition 8200 DPI', '\" CaracterÃ­sticas: - Marca: Razer - Modelo: Naga Green Special Edition  EspecificaÃ§Ãµes: - Total de 19 botÃµes programÃ¡veis â€‹â€‹otimizados para MMO - Grade de polegar mecÃ¢nico de 12 botÃµes - Roda de rolagem de clique inclinado - 8200dpi sensor laser 4G - Razer Synapse 2.0 ativado - RetroiluminaÃ§Ã£o LED verde - 1000xl Ultrapolling - AtÃ© 200 polegadas por segundo / 50 g de aceleraÃ§Ã£o - PÃ©s do mouse Ultraslick zero-acÃºsticos - Cabo de fibra tranÃ§ada de 7 pÃ©s / 2,1 m  Requisitos dos Sistema: - PC / Mac com porta USB - Windows 10 / Windows 8 / Windows 7 / Mac OS X (v10.8 - 10.11) - ConexÃ£o de internet - 100 MB de espaÃ§o livre no disco rÃ­gido - Registro do Razer Synapse 2.0 (exigindo um e-mail vÃ¡lido), download de software, aceitaÃ§Ã£o de licenÃ§a e conexÃ£o de internet necessÃ¡ria para ativar recursos completos do produto e atualizaÃ§Ãµes de software. ApÃ³s a ativaÃ§Ã£o, os recursos completos estÃ£o disponÃ­veis no modo off-line opcional.   ConteÃºdo da embalagem: - Mouse Gamer Razer Naga Green Special Edition    Garantia 12 meses de garantia  Peso 270 gramas (bruto com embalagem)\"', '74240_index_gg.jpg', '74240_1456341659_gg.jpg', '74240_1456341662_gg.jpg', '92803_1506686330_gg.jpg', NULL, NULL, NULL),
(43, 'Mouse', 'Mouse Gamer Zowie  EC1-A 3200DPI USB Preto', 'Razer', 449, '\"Mouse Gamer Zowie  EC1-A 3200DPI USB Preto\"', '\"CaracterÃ­sticas: - Marca: Zowie - Modelo: EC1-A    EspecificaÃ§Ãµes: - Interface: USB - Comprimento do cabo: 2m - 5 botÃµes - Tamanho: Large - Design ergonÃ´mico para destros - Plug & Play (NÃ£o precisa de Drivers) - Ajustes de DPI 400/ 800/ 1600/ 3200 - Ajuste do tempo de respota do Mouse: 125 / 500 / 1000 Hz - DistÃ¢ncia perfeita do Mouse Pad = 1.5 ~ 1.8mm - Sistema Operacional: Windows 2000/XP/Vista/7/8 Mac OS x v10.2   ConteÃºdo da embalagem: - 01 Mouse Zowie    Garantia 12 meses de garantia  Peso 310 gramas (bruto com embalagem)\"', '92803_index_gg.jpg', '92803_1506686330_gg.jpg', '92803_1506686324_gg.jpg', '92803_1506686330_gg.jpg', 60, '2015-10-10', '2018-12-20'),
(44, 'Mouse', 'Mouse Gamer Zowie FK1+  3200DPI USB Preto', 'Zowie', 449, '\"Mouse Gamer Zowie FK1+  3200DPI USB Preto\"', '\"CaracterÃ­sticas: - Marca: Zowie - Modelo: EC1-A    EspecificaÃ§Ãµes: - Interface: USB - Comprimento do cabo: 2m - 5 botÃµes - Tamanho: Large - Design ergonÃ´mico para destros - Plug & Play (NÃ£o precisa de Drivers) - Ajustes de DPI 400/ 800/ 1600/ 3200 - Ajuste do tempo de respota do Mouse: 125 / 500 / 1000 Hz - DistÃ¢ncia perfeita do Mouse Pad = 1.5 ~ 1.8mm - Sistema Operacional: Windows 2000/XP/Vista/7/8 Mac OS x v10.2   ConteÃºdo da embalagem: - 01 Mouse Zowie    Garantia 12 meses de garantia  Peso 310 gramas (bruto com embalagem)\"', '81389_1476367572_gg.jpg', '81389_index_gg.jpg', 'mouse-gamer-zowie-fk1-3200dpi-usb-preto-D_NQ_NP_636433-MLB26083350462_092017-O.jpg', 'Sem tÃ­tulo.jpg', NULL, NULL, NULL),
(45, 'Mouse', 'Mouse Gamer Zowie  ZA12 3200DPI USB Preto', 'Zowie', 450, '\"Mouse Gamer Zowie  ZA12 3200DPI USB Preto Projetado para uso confortÃ¡vel de destros e canhotos,  o design alto oferece apoio para palma da mÃ£o.  DisponÃ­vel em trÃªs tamanhos diferentes  para que caiba perfeitamente em sua mÃ£o. ', 'CaracterÃ­sticas: - Marca: Zowie - Modelo: ZA12   EspecificaÃ§Ãµes: - Interface: USB  - BotÃµes: 5 - Comprimento do cabo: 2m - Tamanho: MÃ©dio - Mouse para ambidestros, desenhado para ser usado com a palma da mÃ£o e pegada de garra - Dois botÃµes em ambos os lados, servindo confortavelmente jogadores canhotes e destros - DistÃ¢ncia perfeita do Mouse Pad = 1.5 ~ 1.8mm; Plug & Play (NÃ£o precisa de driver!) - Alterne facilmente as funcionalidades para mÃ£o direita / esquerda - Ajustes de DPI 400/ 800/ 1600/ 3200 DPI - Ajuste do tempo de respota do Mouse: 125 / 500 / 1000 Hz   ConteÃºdo da embalagem: - 01 Mouse Zowie    Garantia 12 meses de garantia  Peso 300 gramas (bruto com embalagem)', 'Sem tÃ­tulo.jpg', '81394_index_gg.jpg', '81394_1476369781_gg.jpg', '81387_1476366656_gg.jpg', 60, '2017-08-26', '2017-12-26'),
(46, 'Mouse', 'Mouse Gamer Steelseries  Ã“ptico Rival 300 BR 62354', 'SteelSeries', 356.9, 'Mouse Gamer Steelseries  Ã“ptico Rival 300 BR 62354\"', 'CaracterÃ­sticas: - Marca: Steelseries - Modelo: 62354  EspecificaÃ§Ãµes:  - BotÃµes: 6 - Layout: Palm - Tipo Sensor: Ã“ptico 6500 CPI (Pixart PMW3310) - Tempo de Resposta: 1 ms - Suporte a Software: SteelSeries Engine 3 - Switches SteelSeries: Classificado para 30 MilhÃµes de Cliques - MemÃ³ria de Bordo - IPS: 200 - AceleraÃ§Ã£o: 50gs - Ajuste de Perfi - ConexÃ£o: USB - Mouse para destros  - Comprimento do Cabo: 2 m  ConteÃºdo da embalagem: - 01 Mouse Gamer Steelseries  - 01 Guia RÃ¡pido    Garantia 12 meses de garantia  Peso 285 gramas (bruto com embalagem)\"', '73062_1453895974_gg.jpg', '73062_index_gg.jpg', '73062_1453895969_gg.jpg', '92427_1504884963_gg.jpg', NULL, NULL, NULL),
(47, 'Mouse', 'Mouse Gamer Steelseries Rival  500 15 botÃµes 16.000DPI - 62051', 'SteelSeries', 461.9, 'Mouse Gamer Steelseries Rival  500 15 botÃµes 16.000DPI - 62051', 'CaracterÃ­sticas: - Marca: Steelseries - Modelo: Rival 500  EspecificaÃ§Ãµes: - Material: Capa superior mate - Forma: destro - Estilo Grip: Palma, Garra e Dedo - NÃºmero de botÃµes: 15 - Switches SteelSeries: Switches SteelSeries - Comprimento do cabo: 2 m - OpÃ§Ãµes de cores: 16,8 milhÃµes - BotÃµes programÃ¡veis  Sensores: - Sensor: PixArt PMW3360 - Tipo de sensor: Ã“ptico - CPI: 100 a 16,000 - IPS: 300 - AceleraÃ§Ã£o: 50g - Taxa de Sondagem: 1 ms (1000 Hz) - PrecisÃ£o de rastreamento: 1:1  DimensÃµes: - Altura: 118.75mm - Largura: 78,34 mm - Profundidade: 43,34 mm  ConteÃºdo da embalagem: - 01 Mouse Gamer Steelseries Rival 500    Garantia 12 meses de garantia  Peso 302 gramas (bruto com embalagem', '92427_1504884963_gg.jpg', '92427_index_gg.jpg', '92427_1504884876_gg.jpg', '92_index_gg (1).jpg', NULL, NULL, NULL),
(48, 'Teclado', 'Teclado Gamer Razer  Blackwidow Ultimate 2016 ', 'Razer', 615.9, 'Teclado Gamer Razer Blackwidow  Ultimate Stealth 2016 - US', '\"CaracterÃ­sticas: - Marca: Razer - Modelo: Ultimate Stealth 2016    EspecificaÃ§Ãµes: - ForÃ§a de atuaÃ§Ã£o: 45g - Expectativa de vida: 60 milhÃµes keystroke - Teclas individualmente iluminadas - Razer Synapse habilitado - 10 teclas de substituiÃ§Ã£o anti-ghosting - Teclas totalmente programÃ¡veis - OpÃ§Ã£o modo de jogo - Ãudio-in e Microfone-out - ConexÃ£o USB  - Ultrapolling 1000Hz  - Cabo de fibra tranÃ§ada   Requerimentos do sistemas: - PC ou Mac com uma porta USB livre - WindowsÂ® 10 / WindowsÂ® 8 / WindowsÂ® 7 / Mac OS X (v10.8-10.11) - ConexÃ£o de internet - 100 MB de espaÃ§o no disco rÃ­gido  ConteÃºdo da embalagem: - 01 Teclado Gamer Razer    Garantia 12 meses de garantia  Peso 1925 gramas (bruto com embalagem)\"', '75444_index_gg.jpg', '75444_1468444949_gg.jpg', '75444_1468444947_gg.jpg', '75444_1468444944_gg.jpg', NULL, NULL, NULL),
(49, 'Teclado', 'Teclado Gamer Zowie  Celeritas II Led Vermelho', 'Zowie', 999, 'O ZOWIE CELERITAS II apresenta uma distÃ¢ncia ideal  e mais precisa de ativaÃ§Ã£o das teclas; ou seja,  a distÃ¢ncia que a tecla deve percorrer antes de  realizar a sua aÃ§Ã£o. Uma mola de ferro de alta qualidade  permite que cada pressÃ£o na tecla seja executada com  um aumento consistente da forÃ§a, melhorando tambÃ©m  a durabilidade para satisfazer os nÃ­veis exigidos nos  desportos eletrÃ´nicos. O CELERITAS II apresenta interruptores Ã³ticos,  o que permite que os jogadores evitem pressionar duplamente as teclas.  TambÃ©m possui teclas retroiluminadas, com nÃ­veis de brilho  que podem ser ajustados ou completamente desligados.', '\"CaracterÃ­sticas: - Marca: Zowie - Modelo: Celeritas II   EspecificaÃ§Ãµes: - DistÃ¢ncia de ativaÃ§Ã£o de teclas ideal e mais precisa - Mola de ferro de alta qualidade, pressÃ£o consistente das teclas e durabilidade melhorada - Interruptores Ã³ticos que evitam como pressÃµes duplas na tecla - NÃ£o precisa de controladores: Ã© plug & play - Teclas retroiluminadas por LED vermelhos com brilho ajustÃ¡vel - RTR (resposta em tempo real, 1x 2x 4x 8x) atravÃ©s da interface PS / 2 e reconhecimento das pressÃµes simultÃ¢neas nas teclas (NKRO) totalmente ilimitado   ConteÃºdo da Embalagem: - Teclado Gamer Zowie Celeritas II Led Vermelho    Garantia 12 meses de garantia  Peso 1945 gramas (bruto com embalagem)', '93250_1508154432_index_gg.jpg', '93250_3_1508153937_gg.jpg', '93250_4_1508153937_gg.jpg', '93250_2_1508153937_gg.jpg', NULL, NULL, NULL),
(50, 'Teclado', 'Teclado CoolerMaster Masterkeys Pro  M Switch Azul, ABNT 2, Cherry MX,  LED Branco - SGK-4080-KKCL1-BR', 'CoolerMaster', 459.9, 'Teclado CoolerMaster Masterkeys Pro  M Switch Azul, ABNT 2, Cherry MX,  LED Branco - SGK-4080-KKCL1-BR', 'CaracterÃ­sticas: - Marca: Cooler Master - Modelo: SGK-4080-KKCL1-BR   EspecificaÃ§Ãµes: - Tipo de interruptor: CHERRY MX - Material: PlÃ¡stico / Metal - Switch: Azul - Layout: ABNT 2 - Cor: Preto - Cor LED: Branco - Taxa de Polling: 1000 Hz - Taxa de repetiÃ§Ã£o: 1x / 2x / 4x / 8x - Taxa de resposta: 1ms - MCU 32bit ARM Cortex M0 - MemÃ³ria on-board: 512KB - On-the-fly: Sistema de Gravar Macro e IluminaÃ§Ã£o - DimensÃµes: 38.01 x 14.38 x 4.24 cm   Cabeamento: - DestacÃ¡vel cabo com Micro-USB - Conector do cabo: USB 2.0 - Comprimento do cabo: 1.5 metros - Gerenciamento inteligente de cabos em 180 graus   ConteÃºdo da Embalagem: - Teclado CoolerMaster Masterkeys Pro M   *Imagens meramente ilustrativas.    Garantia 12 meses de garantia  Peso 1285 gramas (bruto com embalagem)', '85927_1487181504_gg.jpg', '85927_1487181509_gg.jpg', '85927_1487181515_gg.jpg', 'TECLADO.jpg', NULL, NULL, NULL),
(51, 'HeadSet', 'Headset Razer Kraken Pro 2015 com  Microfone e Controle de Volume Green', 'Razer', 354.9, '\"Headset Razer Kraken Pro 2015 com  Microfone e Controle de Volume Green\"', '\"CaracterÃ­sticas: - Marca: Razer - Modelo: RZ04-01380200  EspecificaÃ§Ãµes:  - Comprimento do cabo: 1,3 m + 2m adaptador splitter - Conector: 3.5 mm - Controle no fio  Fone: - FrequÃªncia de resposta: 20 - 20.000 Hz - ImpedÃ¢ncia: 32 ohms  a 1 kHz - Sensibilidade: 110 Â± 4 dB a 1 kHz, 1V / Pa (mÃ¡x.) - PotÃªncia de entrada: 50 mW  - Drivers: 40 mm com imÃ£s de neodÃ­mio  - DiÃ¢metro da concha do fone: 5 cm  Microfone: - FrequÃªncia de resposta: 100 - 10.000 Hz - RelaÃ§Ã£o sinal-ruÃ­do: 52 dB - Sensibilidade (a 1 kHz, 1 V/Pa): - 40 Â± 3 dB - PadrÃ£o de captaÃ§Ã£o: unidirecional   Compatibilidade:  - Computador - iPod, iPhone, iPad, Kindle Fire, Android, Razer Blade, Macbook Pro, Ultrabooks  ConteÃºdo da Embalagem: - 01 Headphone Razer Kraken Pro      Garantia 12 meses de garantia  Peso 700 gramas (bruto com embalagem)\"', '63197_index_gg.jpg', '63197_1428674468_gg.jpg', '63197_1428674457_gg.jpg', '63197_1428674452_gg.jpg', NULL, NULL, NULL),
(52, 'HeadSet', 'Headset Razer Man OÂ´War  Tournament Edition Overwatch', 'Razer', 651.65, 'Headset Razer Man OÂ´War  Tournament Edition Overwatch', '\"  CaracterÃ­sticas: - Marca: Razer - Modelo: Man OÂ´War Tournament Edition Overwatch   EspecificaÃ§Ãµes:  Fones de ouvido: - Resposta de frequÃªncia: 20 â€“ 20.000 Hz - ImpedÃ¢ncia: 32â„¦ a 1 kHz - Sensibilidade (a 1 kHz): -112 Â± 3 dB - PotÃªncia de entrada: 30 mW - Drivers: 50 mm, com Ã­mÃ£s de neodÃ­mio - DiÃ¢metro interno da concha auricular: 60 mm - Tipo de conexÃ£o: analÃ³gica (3,5 mm) - Comprimento do cabo: 1,3 m mais cabo divisor de 2 m   Microfone: - Resposta de frequÃªncia: 100 Hz â€“ 10 kHz - RelaÃ§Ã£o sinal-ruÃ­do: > 55 dB - Sensibilidade (a 1 kHz): -42 Â± 3 dB - PadrÃ£o de captaÃ§Ã£o: unidirecional   Controle no fio: - Seletor analÃ³gico de volume - AtivaÃ§Ã£o/desativaÃ§Ã£o rÃ¡pida do microfone   UtilizaÃ§Ã£o de Ã¡udio e microfone: - Dispositivos com conector de Ã¡udio de 3,5 mm - Dispositivos com conectores de Ã¡udio e microfone de 3,5 mm - Dispositivos com conector combinado de 3,5 mm, Ã¡udio + microfone - CompatÃ­vel com PC/Mac/PS4/Xbox One (pode ser necessÃ¡rio adaptador estÃ©reo para Xbox One, adquirido separadamente)   ConteÃºdo da Embalagem: - Headset Razer Man OÂ´War Tournament Edition Overwatch - Manual do UsuÃ¡rio    Garantia 6 meses de garantia  Peso 775 gramas (bruto com embalagem)\"', '57004_index_g.jpg', '57004_1414501713_g.jpg', '57004_1409597383_g.jpg', '57004_1409597388_g.jpg', NULL, NULL, NULL),
(53, 'HeadSet', '\"Headset Gamer Steelseries  Arctis 5 White 7.1 RGB - 61444\"', 'SteelSeries', 714.9, '\"Headset Gamer Steelseries  Arctis 5 White 7.1 RGB - 61444', '\" CaracterÃ­sticas: - Marca: Steelserie - Modelo: Arctis 5 RGB  EspecificaÃ§Ãµes: - Drivers de neodimio: 40 mm - Resposta de frequÃªncia de fone de ouvido: 20-22000 Hz - Sensibilidade de fone de ouvido: 98 dB - ImpedÃ¢ncia para fone de ouvido: 32 Ohm - DistorÃ§Ã£o harmÃ´nica total de fone de ouvido: <3% - Controle de volume de fone de ouvido: On Ear Cup  Microfone: - Resposta de frequÃªncia do microfone: 100Hz - 10000Hz - PadrÃ£o de microfone: Bidirecional - Sensibilidade do microfone: -48 db - ImpedÃ¢ncia do microfone: 2200 Ohm - Cancelamento de ruÃ­do no microfone - LocalizaÃ§Ã£o do microfone: RetrÃ¡til - Mudo do Microfone: On Ear Cup  ConexÃ£o: - Tipo de conector: USB ou Single 3.5mm, 4-Pole Plug via adaptador incluÃ­do - Comprimento do cabo: 3m - Material do cabo: Borracha - Adaptador: Single 3.5mm, 4-Pole Plug  ConteÃºdo da embalagem: - 01 Headset Gamer Steelserie Arctis 5 - 01 Guia do usuÃ¡rio    Garantia 12 meses de garantia  Peso 850 gramas (bruto com embalagem)', '92432_1504904777_gg.jpg', '92432_1504904785_gg.jpg', '92432_1504904793_gg.jpg', '92432_index_gg.jpg', NULL, NULL, NULL),
(54, 'MousePad', '\"Mousepad Gamer Razer  Firefly Cloth', 'Razer', 470.9, 'A fim de alcanÃ§ar o equilÃ­brio perfeito  entre velocidade e controle, o Razer  Firefly Cloth Edition conta com uma  superfÃ­cie de tecido que proporciona  conforto e exatidÃ£o absoluta.', '\"  CaracterÃ­sticas: - Marca: Razer - Modelo: Firefly Cloth  EspecificaÃ§Ãµes: - SuperfÃ­cie de tecido para equilÃ­brio na jogabilidade - Trama texturizada, otimizada para responder prontamente ao rastreamento - IluminaÃ§Ã£o personalizÃ¡vel Razer Chroma - Base de borracha antideslizante - Habilitado pelo Razer Synapse (para personalizaÃ§Ã£o da iluminaÃ§Ã£o Razer Chroma) - Conector USB banhado a ouro (para alimentar a iluminaÃ§Ã£o personalizÃ¡vel Razer Chroma) - Cabo leve de fibra tranÃ§ada com 2,13 m - DimensÃµes aproximadas: 355 mm (comprimento) x 255 mm (largura) x 3,5 mm (altura)   ConteÃºdo da embalagem: - 01 Mousepad Gamer Razer  * OBS: Mouse nÃ£o incluso    Garantia 12 meses de garantia  Peso 870 gramas (bruto com embalagem)\"', '78157_1465500569_gg.jpg', '78157_index_gg.jpg', '78157_1465500566_gg.jpg', '75749_index_gg.jpg', NULL, NULL, NULL),
(55, 'Mousepad Razer Invicta Mercury White', 'Mousepad Razer Invicta Mercury White', 'Invicta', 367.9, '\"O Razer Invicta apresenta um revestimento totalmente  novo, testado em laboratÃ³rio, com um acabamento  especialmente escolhido em ambos os lados  para melhorar a qualidade reflexiva da superfÃ­cie\"', '\"CaracterÃ­sticas: - Marca: Razer - Modelo: Invicta  EspecificaÃ§Ãµes: - SuperfÃ­cie SPEED para movimentos rÃ¡pidos do mouse - SuperfÃ­cie de controle para movimentos precisos do mouse - Revestimento de superfÃ­cie otimizado para rastreamento de mouse altamente responsivo - Placa base de alumÃ­nio robusta  DimensÃµes do produto:  - Largura: 255 mm / 10,04 \"\"  - Comprimento: 355 mm / 13,98\"\"  - Altura: 4,5 mm / 0,18 \"\"   ConteÃºdo da embalagem: - 01 Mousepad Razer Invicta     Garantia 12 meses de garantia  Peso 2130 gramas (bruto com embalagem)\"', '79279_index_gg.jpg', '79279_1502734858_gg.jpg', '79279_1502734852_gg.jpg', '79279_index_gg.jpg', NULL, NULL, NULL),
(56, 'MousePad', 'Mousepad Gamer HyperX Fury S,  Tamanho Extra Grande - HX-MPFS-XL', 'HyperX', 149.9, '\"O Mouse Pad Gamer HyperX FURY S possui bordas com  costuras perfeitas que nÃ£o desfiam proporcionando uma  superfÃ­cie uniforme para um deslizar controlado.  O mouse pad de tecido com trama compacta oferece uma  superfÃ­cie com sensaÃ§Ã£o suave ao toque, sendo texturizada  para o movimento preciso do mouse Ã³ptico. O HyperX FURY S  apresenta uma superfÃ­cie em tecido macio para conforto do  pulso e uma borracha natural texturizada no verso, projetado  para se manter firme quando a aÃ§Ã£o torna-se frenÃ©tica.  FURY S estÃ¡ disponÃ­vel em quatro tamanhos para se  ajustar Ã  sua configuraÃ§Ã£o e pode ser  enrolado para facilitar o transporte.\"', '\"CaracterÃ­sticas: - Marca: HyperX - Modelo: HX-MPFS-XL   EspecificaÃ§Ãµes: - Material: Tecido, borracha - Tamanho: 900 mm x 420 mm - Espessura: 3 - 4 mm - Cor: Preto   Recursos: - Bordas com costuras perfeitas que nÃ£o desfiam - SuperfÃ­cie com trama compacta para movimento Ã³ptico preciso - Borracha natural texturizada no verso para maior estabilidade - Quatro tamanhos adequados para a maioria dos espaÃ§os e estilos - PortÃ¡teis e durÃ¡veis   Conteudo da Embalagem: - Mousepad Gamer HyperX Fury S    Garantia 3 meses de garantia  Peso 1095 gramas (bruto com embalagem)\"', '91745_index_gg.jpg', '91745_1502464373_gg.jpg', '91745_1502464368_gg.jpg', '91743_1502463217_gg.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefonepessoa`
--

CREATE TABLE `telefonepessoa` (
  `codTelPessoa` int(11) NOT NULL,
  `idPessoa` int(11) NOT NULL,
  `DDD` int(2) NOT NULL,
  `telefone` int(9) NOT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0 excluido     1 ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefonepessoa`
--

INSERT INTO `telefonepessoa` (`codTelPessoa`, `idPessoa`, `DDD`, `telefone`, `status`) VALUES
(1, 1, 35, 3526, 1),
(2, 5, 34, 23123212, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `endpessoa`
--
ALTER TABLE `endpessoa`
  ADD PRIMARY KEY (`codEndPessoa`);

--
-- Indexes for table `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`codEntrada`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idFornecedor`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`codPessoa`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codProduto`);

--
-- Indexes for table `telefonepessoa`
--
ALTER TABLE `telefonepessoa`
  ADD PRIMARY KEY (`codTelPessoa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `endpessoa`
--
ALTER TABLE `endpessoa`
  MODIFY `codEndPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `entrada`
--
ALTER TABLE `entrada`
  MODIFY `codEntrada` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `codPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `codProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `telefonepessoa`
--
ALTER TABLE `telefonepessoa`
  MODIFY `codTelPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `estoque`
--
CREATE DATABASE IF NOT EXISTS `estoque` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estoque`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `descricao` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `funildevendas`
--
CREATE DATABASE IF NOT EXISTS `funildevendas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `funildevendas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome_imagem` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome_imagem`) VALUES
(1, 'download.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Extraindo dados da tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'ecomerce', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"agenda\",\"bdbusca\",\"bdexemplo\",\"caixa\",\"ecomerce\",\"estoque\",\"funildevendas\",\"phpmyadmin\",\"usuariosbd\",\"zerobugs\"],\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"estructura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"estructura da tabela @TABLE@ (continuaÃ§Ã£o)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"ConteÃºdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"ConteÃºdo da tabela @TABLE@ (continuaÃ§Ã£o)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"zerobugs\",\"table\":\"arquivo\"},{\"db\":\"funildevendas\",\"table\":\"usuarios\"},{\"db\":\"bdbusca\",\"table\":\"produtos\"},{\"db\":\"bdexemplo\",\"table\":\"tblpessoa\"},{\"db\":\"usuariosbd\",\"table\":\"usuariostb\"},{\"db\":\"bdBusca\",\"table\":\"produtos\"},{\"db\":\"agenda\",\"table\":\"pessoas\"},{\"db\":\"bdExemplo\",\"table\":\"tblPessoas\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-07-06 13:39:22', '{\"lang\":\"pt\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `usuariosbd`
--
CREATE DATABASE IF NOT EXISTS `usuariosbd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `usuariosbd`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariostb`
--

CREATE TABLE `usuariostb` (
  `nome` varchar(250) NOT NULL,
  `sobrenome` varchar(250) NOT NULL,
  `idade` int(3) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuariostb`
--

INSERT INTO `usuariostb` (`nome`, `sobrenome`, `idade`, `descricao`) VALUES
('Daniel', 'França', 20, 'Daniel França é programador e web design'),
('João', 'Paulo', 47, 'João Paulo é gerente de uma loja no centro da cidade'),
('Maria', 'Matilde', 22, 'Maria Matilde gosta de passear com seus animais de estimação');
--
-- Database: `zerobugs`
--
CREATE DATABASE IF NOT EXISTS `zerobugs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zerobugs`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE `arquivo` (
  `codigo` int(11) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `arquivo`
--

INSERT INTO `arquivo` (`codigo`, `arquivo`, `data`) VALUES
(10, '6f3d699401b2df11915616289c348659.jpg', '2017-11-23 09:31:44'),
(11, '3db0d3cc2c8bdb1c4629bc14fbf7c573.jpg', '2017-11-23 11:42:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arquivo`
--
ALTER TABLE `arquivo`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arquivo`
--
ALTER TABLE `arquivo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
