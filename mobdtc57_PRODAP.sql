-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08/09/2023 às 12:13
-- Versão do servidor: 5.7.23-23
-- Versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mobdtc57_PRODAP`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `user` longtext COLLATE utf8_unicode_ci,
  `senha` longtext COLLATE utf8_unicode_ci,
  `foto` longtext COLLATE utf8_unicode_ci,
  `nome` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `sobrenome` longtext COLLATE utf8_unicode_ci,
  `firstaccess` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `admin`
--

INSERT INTO `admin` (`user`, `senha`, `foto`, `nome`, `email`, `sobrenome`, `firstaccess`) VALUES
('vimplicyo', '14849002', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Atributos`
--

CREATE TABLE `Atributos` (
  `id` int(11) DEFAULT NULL,
  `link` longtext COLLATE utf8_unicode_ci,
  `foto` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Atributos`
--

INSERT INTO `Atributos` (`id`, `link`, `foto`) VALUES
(65, 'YCGxnKvhfMQ', 'fotos/Cidades/Porto Da Folha Sinal 1.png'),
(7, 'SWSYDSXZKVg', 'fotos/Bairros/Atalaia.png'),
(8, 'OykY_--iLHU', 'fotos/Bairros/Bugio.png'),
(2, 'ZQZTsDe75Oc', 'fotos/Bairros/Japãozinho sinal 1.png'),
(66, 'S_AAw6m_N5Y', 'fotos/Cidades/Poço Verde.png'),
(10, 'R8ioSU8ZfjE', 'fotos/Bairros/Bairro industrial.png'),
(4, 'ChtUGf_vGAE', 'fotos/Bairros/Santo antonio.png'),
(1, 'LHjOiJbjkWw', 'fotos/Bairros/Centro.png'),
(15, '-_9LBQRyziE', 'fotos/Bairros/Santa Maria sinal 1.png'),
(13, 'bIRpttG2SVE', 'fotos/Bairros/Porto Dantas.png'),
(14, 'LXGBMVkXpmo', 'fotos/Bairros/Salgado Filho.png'),
(17, 'R8KhrvIroeo', 'fotos/Bairros/Santos Dumont.png'),
(12, 'gpk0RPuUF6A', 'fotos/Bairros/América.png'),
(11, 'xzLaopfDPNA', 'fotos/Bairros/18 do forte.png'),
(35, 'xkrprWivvfw', 'fotos/Bairros/Pereira Lobo.png'),
(26, 'gwZSMOHNqMg', 'fotos/Bairros/Inacio Barbosa.png'),
(34, 'yI38BbXIohU', 'fotos/Bairros/Orlando Dantas e São Conrado.png'),
(36, 'il6sOxfmSlQ', 'fotos/Bairros/Ponto Novo sinal 1.png'),
(20, 'GePbXOPWjuU', 'fotos/Bairros/Coroa do meio 1.png'),
(30, '732dhbNAwlY', 'fotos/Bairros/Jardins.png'),
(33, 'TBpEWejTxfg', 'fotos/Bairros/Novo Paraíso.png'),
(24, 'VS8mkEelWWE', 'fotos/Bairros/Getulio Vargas.png'),
(32, '9ZKIv26jcq4', 'fotos/Bairros/Mosqueiro.png'),
(23, 'rFuXlOep6uQ', 'fotos/Bairros/Farolandia.png'),
(18, 'LY5ad5tLDJI', 'fotos/Bairros/Cidade Nova.png'),
(19, 'd2jaXyvTbG0', 'fotos/Bairros/Cirurgia.png'),
(31, 'VXd-K_0K9aI', 'fotos/Bairros/Lamarão.png'),
(39, '3ltUlB2toeA', 'fotos/Bairros/são José.png'),
(42, 'MYZnV4TlBYI', 'fotos/Bairros/Aeroporto.png'),
(40, 'Z0uT4tgDcyQ', 'fotos/Bairros/Siqueira Campos.png'),
(38, '6Fv1TKZnPYE', 'fotos/Bairros/17 de Março.png'),
(43, 'PBlV0FTCsqQ', 'fotos/Bancos/Banco do Brasil.png'),
(44, 'nD9RRxe5vDw', 'fotos/Bancos/BMG.png'),
(45, 'ZKUI8iNLboA', 'fotos/Bancos/BNB.png'),
(46, 'qZRUB0xDzpE', 'fotos/Bancos/CAIXA.png'),
(47, 'fDMVqD2Epmc', 'fotos/Bancos/HSBC.png'),
(48, 'a38CJrBy590', 'fotos/Bancos/Itau.png'),
(2, 'JstxV6hhbII', 'fotos/Bairros/Japãozinho sinal 2.png'),
(36, '0XcwUonEdfc', 'fotos/Bairros/Ponto Novo sinal 2.png'),
(15, 'qZ-Wn0d8lnQ', 'fotos/Bairros/Santa Maria sinal 2.png'),
(67, 'vTSsfX5tQZI', 'fotos/Cidades/Poço Redondo.png'),
(68, 'o3gGt73_Ik8', 'fotos/Cidades/Pirambu.png'),
(69, 'b0qjb1S42wA', 'fotos/Cidades/Pedrinhas.png'),
(70, 'MWDRRM4fszc', 'fotos/Cidades/Nossa Senhora Do Socorro.png'),
(71, 'aZh-CiU06Hs', 'fotos/Cidades/Nossa Senhora De Lourdes.png'),
(72, '-52zzJK1NJE', 'fotos/Cidades/Nossa Senhora Das Dores.png'),
(73, 'JbkgJGxKnlU', 'fotos/Cidades/Nossa Senhora Aparecida.png'),
(75, 'fvk-wZsybuk', 'fotos/Cidades/Neópolis 2.png'),
(77, 'CcCPqmSufbQ', 'fotos/Cidades/Moita Bonita Sinal 1.png'),
(78, 'ywO9miZ5Byk', 'fotos/Cidades/Maruim.png'),
(80, 'fxzPhigpjzk', 'fotos/Cidades/Malhador Sinal 1.png'),
(81, 'esuCEmDI0jw', 'fotos/Cidades/Malhada Dos Bois.png'),
(83, 'UmGXQa0dBCs', 'fotos/Cidades/Macambira Sinal 1.png'),
(84, 'T_mKxgGX-kE', 'fotos/Cidades/Laranjeiras.png'),
(85, 'LsBB_zWiq9o', 'fotos/Cidades/Lagarto.png'),
(115, 'Q9LG0mTmTfM', 'fotos/Cidades/Campo do Brito 1.png'),
(120, 'ITwZpO9_5Yk', 'fotos/Cidades/Areia Branca.png'),
(121, 'oNf-TJRDVaw', 'fotos/Cidades/Aracaju.png'),
(122, 'TRc9t6oP8PQ', 'fotos/Cidades/Aquidabã.png'),
(123, 'Of1vBwxyI58', 'fotos/Cidades/Umbaúba 1.png'),
(124, 'r-FUbGpHkDM', 'fotos/Cidades/Tobias Barreto.png'),
(125, '_h9eYVndSJI', 'fotos/Cidades/Siriri.png'),
(127, 'TH6zs4KDBpM', 'fotos/Cidades/São Miguel do Aleixo.png'),
(128, 'pEP4uYkGfFQ', 'fotos/Cidades/São Francisco.png'),
(129, 'VBc2vhBmJpY', 'fotos/Cidades/São Domingos.png'),
(115, 'Taj1Qqk73yQ', 'fotos/Cidades/Campo do Brito 2.png'),
(138, 'fKal943ndCQ', 'fotos/Comidas/Caranguejo sinal 1.png'),
(230, 'DKVVV9-HhyE', 'fotos/Pontos/Centro turistico rua 24 horas.png'),
(197, 'd5KGAWSS1vk', 'fotos/Pontos/Cidade historica laranjeiras.png'),
(198, 'Q0ezg4S7whE', 'fotos/Pontos/Cidade historica são cristóvão.png'),
(199, 'vys4uwZm-OQ', 'fotos/Pontos/Colina do santo antônio.png'),
(200, 'Ix1OodiRBXo', 'fotos/Pontos/Croa do goré.png'),
(201, 'rAykz_zlB6Q', 'fotos/Pontos/Espaço zé peixe.png'),
(191, 'OP4S19dVtTw', 'fotos/Pontos/Calçadão da joão pessoa sinal 2.png'),
(190, 'tLTssJzeX0g', 'fotos/Pontos/Calçadão da 13 de julho.png'),
(191, 'Mc2H-Wp6nUo', 'fotos/Pontos/Calçadão da joão pessoa sinal 1.png'),
(193, '0CFsP_bOrAU', 'fotos/Pontos/Calçadão praia formosa.png'),
(194, '7TnooC8xuCA', 'fotos/Pontos/Centro de arte e cultura de sergipe.png'),
(195, 'V62Xwt0ikGI', 'fotos/Pontos/Centro historico de aracaju.png'),
(157, 'AhqkLMmmwec', 'fotos/Comidas/Tapioca1.png'),
(83, '1Aus20aSwak', 'fotos/Cidades/Macambira Sinal 2.png'),
(80, 'bDoRCkc7XuQ', 'fotos/Cidades/Malhador Sinal 2.png'),
(77, '_ls5LvbKTRo', 'fotos/Cidades/Moita Bonita Sinal 2.png'),
(75, 'G8vkgNW8XYI', 'fotos/Cidades/Nepolis 1.png'),
(65, 't5vHDvWf8Tg', 'fotos/Cidades/Porto Da Folha Sinal 2.png'),
(123, 'xU985ZQT0l0', 'fotos/Cidades/Umbaúba 2.png'),
(3, 'M7_-dCxeqZ0', 'fotos/Bairros/Jardim centenário sinal 1.png'),
(29, 'NVFfS2y4Y7c', 'fotos/Bairros/Jose Conrado de Araujo.png'),
(242, '3g_d7evvOzg', ''),
(157, '3Wx8sxQkjAw', 'fotos/Comidas/Tapioca sinal 2.png'),
(143, 'B3hmhxCLRj0', 'fotos/Comidas/Dobradinha sinal 2.png'),
(151, 'qKtQIP7R79o', 'fotos/Comidas/Mocotó sinal 2.png'),
(138, '6UC-gVxUbF8', 'fotos/Comidas/CAranguejo sinal 2.png'),
(214, 'GBFk5iXVXDo', 'fotos/Pontos/Orlinha do bairro industrial.png'),
(215, 'ZaT9mQSRcDs', 'fotos/Pontos/Parque da sementeira sinal 1.png'),
(217, 'ykYQV8hr9p0', 'fotos/Pontos/Passarela do caranguejo.png'),
(218, 'mqPPFvQb9os', 'fotos/Pontos/Ponte do imperador.png'),
(209, '8GjdLmaMsc0', 'fotos/Pontos/Museo Olimpio Campos.png'),
(203, 'EnwiwHN4Qcc', 'fotos/Pontos/Fazenda boa luz sinal 2.png'),
(206, 'PHdJd6lYes8', 'fotos/Pontos/Mini zoológico sinal 2.png'),
(210, 'pztxv6UuEns', 'fotos/Pontos/Oceanário sinal 2.png'),
(154, '6WbR0G8z7u8', 'fotos/Comidas/Pamonha.png'),
(157, '3rOPABziox8', 'fotos/Comidas/Tapioca sinal 3.png'),
(202, 'eJYKSNSa0GQ', 'fotos/Pontos/Farol farolândia.png'),
(131, 'iL31M2ARnQY', 'fotos/Comidas/Amendoim sinal 1.png'),
(132, 'uPDl-byOn3E', 'fotos/Comidas/Arroz Doce.png'),
(133, 'YDu4bGxYViU', 'fotos/Comidas/Bolo de Arroz.png'),
(134, '17HP8zUNQrI', 'fotos/Comidas/Bolo de Macaxeira.png'),
(135, 'Y0C2e47XH-g', 'fotos/Comidas/Bolo de Milho.png'),
(136, 'A7r6qakpFWg', 'fotos/Comidas/Bucho.png'),
(137, 'X7m5eCEo7jg', 'fotos/Comidas/Caldinho.png'),
(219, '5NbgSjSLOjA', 'fotos/Pontos/Praça olímpio campos sinal 2.png'),
(140, 'xUJGL2KsKLc', 'fotos/Comidas/Carne do Sol.png'),
(141, 'Lhn-bQOIaNc', 'fotos/Comidas/Charque.png'),
(142, 'ZdcaRBV3WeM', 'fotos/Comidas/Cuscuz.png'),
(143, 'TYj3Z2s4xuY', 'fotos/Comidas/Dobradinha sinal 1.png'),
(145, '0Q5G5OcBM3g', 'fotos/Comidas/Escondidinho.png'),
(146, 'Q5JQdzqA3IQ', 'fotos/Comidas/Inhame.png'),
(147, 'qWmJf3dJlNc', 'fotos/Comidas/Macaxeira.png'),
(148, 'Qv79_Ny2988', 'fotos/Comidas/Milho Assado.png'),
(149, 'ZHPCiVNUnH0', 'fotos/Comidas/Milho cozido.png'),
(150, '5-oeT5WdZcA', 'fotos/Comidas/Mingau de Puba.png'),
(215, 'Alp5Vgmx4dg', 'fotos/Pontos/Parque da sementeira sinal 2.png'),
(153, 'HR6zTp03JkU', 'fotos/Comidas/Munguzá.png'),
(155, '1SBCByJcNV8', 'fotos/Comidas/Quiabada.png'),
(156, 'NoJAb_D-L4Y', 'fotos/Comidas/Sururu.png'),
(160, 'jWBTPm9LNaQ', 'fotos/Comidas/Tripa de Porco.png'),
(161, 'TKRCm6cSn-Q', 'fotos/Instituicoes/Estacio FASE.png'),
(162, 'vs8DLxep05k', 'fotos/Instituicoes/Faculdade Jardins.png'),
(163, 'xMmgi2j3EG4', 'fotos/Instituicoes/Faculdade Mauricio de Nassau sinal 1.png'),
(165, 'SSEGu8BR6YQ', 'fotos/Instituicoes/Faculdade Pio X.png'),
(166, 'AUYtB930378', 'fotos/Instituicoes/Faculdade Sao Luis de Franca.png'),
(167, 'QGOQrEaB3Q0', 'fotos/Instituicoes/FAMA.png'),
(168, 'aldwH8ymnkk', 'fotos/Instituicoes/FANESE.png'),
(169, 'QM9g8n2Luf4', 'fotos/Instituicoes/IFS sinal 1.png'),
(171, '0B_xqavzEgk', 'fotos/Instituicoes/UFS sinal 1.png'),
(173, '_tbThUBao1Y', 'fotos/Instituicoes/UNIT.png'),
(174, 'IboiB4is1-o', 'fotos/Lojas/Centauro sinal 1.png'),
(176, 'ZSiX44fgjm4', 'fotos/Lojas/Le Biscuit.png'),
(177, '0TPjyPs6Z6k', 'fotos/Lojas/Login sinal 1.png'),
(178, 'Hjf5hOQo8L4', 'fotos/Lojas/Loja CeA.png'),
(179, 'nNHBsuu9Woo', 'fotos/Lojas/Loja Emanuelle .png'),
(180, 'e1WK-iYUMqQ', 'fotos/Lojas/Loja Huteba.png'),
(181, 'jQZFMArx4BI', 'fotos/Lojas/Loja Imperador sinal 1.png'),
(183, '2Npk-uFTKMw', 'fotos/Lojas/Loja Jurandir Pires.png'),
(184, '3l3xyLx5EUY', 'fotos/Lojas/Loja Marisa Sinal 1.png'),
(186, 'gV7-JKG036w', 'fotos/Lojas/Loja Renner.png'),
(187, '9CfS_y2wcAI', 'fotos/Lojas/Loja Riachuelo sinal 1.png'),
(189, 'CtBMZqGfv1M', 'fotos/Lojas/Lojas Americanas.png'),
(203, '_mq3avLdvN0', 'fotos/Pontos/Fazenda boa luz sinal 1.png'),
(205, 'GgrGwtWJppY', 'fotos/Pontos/Mercado.png'),
(206, 'sMYNFGVk8nU', 'fotos/Pontos/Mini zoológico sinal 1.png'),
(208, '5Vq8wr_5XEk', 'fotos/Pontos/Mirante da 13 de julho.png'),
(210, '82H3cwwT9Co', 'fotos/Pontos/Oceanário sinal 1.png'),
(212, 'Nu-1znvnzP4', 'fotos/Pontos/Orla de atalaia.png'),
(213, 'vur5R2F2mVA', 'fotos/Pontos/Orla pôr do sol.png'),
(219, '4uRTMwsH5lw', 'fotos/Pontos/Praça olímpio campos sinal 1.png'),
(221, 'EDgAWrt7vL4', 'fotos/Pontos/Praia da coroa do meio.png'),
(163, 'qY9sRzGjFZ4', 'fotos/Instituicoes/Faculdade Mauricio de Nassau sinal 2.png'),
(169, '0cnN1Jd3eLw', 'fotos/Instituicoes/IFS sinal 2.png'),
(171, 'CY1_lrz0MI0', 'fotos/Instituicoes/UFS sinal 2.png'),
(174, 'ElFOqVEXXHg', 'fotos/Lojas/Centauro sinal 2.png'),
(181, 'HV-n-451QmU', 'fotos/Lojas/Loja Imperador sinal 2.png'),
(187, 'E7lAlCbEtw4', 'fotos/Lojas/Loja Riachuelo sinal 2.png'),
(184, 'SMcNRKGqEEg', 'fotos/Lojas/Loja Marisa sinal 2.png'),
(222, 'WKs-nvF2HHo', 'fotos/Pontos/Praia da costa.png'),
(223, 'BZPoW-RofC8', 'fotos/Pontos/Praia de atalaia.png'),
(224, 'BJsKicWLQbY', 'fotos/Pontos/Praia de pirambu.png'),
(225, 'MYLqI7-0KSI', 'fotos/Pontos/Praia do abais.png'),
(228, 'LR-E57f7Un8', 'fotos/Pontos/Projeto tamar sinal 2.png'),
(226, 'K8WUH-VrgOc', 'fotos/Pontos/Praia do farol.png'),
(227, '2Qw4ltgmO-Y', 'fotos/Pontos/Praia do mosqueiro.png'),
(228, 'w6kKsRrIwzE', 'fotos/Pontos/Projeto tamar sinal 1.png'),
(230, 'fSkktyp6U3E', 'fotos/Pontos/Rua 24 horas.png'),
(231, 'fasdf', 'fotos/Pontos/sdfasdf.png'),
(232, 'TXuIb032g-4', 'fotos/Pontos/Shopping jardins.png'),
(233, 'k4m2H_XQNmQ', 'fotos/Pontos/Shopping prêmio.png'),
(234, 'k-TGQxrYxZY', 'fotos/Pontos/Shopping riomar aracaju.png'),
(235, '7y_GgbsWkCs', 'fotos/Pontos/Teatro atheneu.png'),
(236, 'q07QmrIAM0I', 'fotos/Pontos/Teatro tiradentes.png'),
(237, 'U4lxumMr6bI', 'fotos/Pontos/Teatro tobias barreto.png'),
(238, '1u_bAjAy8jg', 'fotos/Pontos/Xingó sinal 1.png'),
(239, '5JNVPe6g7tw', 'fotos/Pontos/Xingó sinal 2.png'),
(240, 'INnEBaiCiGg', 'fotos/Pontos/Zoo Industrial.png'),
(241, 'INnEBaiCiGg', 'fotos/Pontos/Zoológico bairro industrial.png'),
(243, '3g_d7evvOzg', ''),
(253, 'F99W4v7LcqU', ''),
(244, '3g_d7evvOzg', 'fotos/Supermercados/Atacadão sinal 1.png'),
(246, 'yvVJeSvihWc', 'fotos/Supermercados/Makro.png'),
(247, '5dLDUkmDCaw', 'fotos/Supermercados/Pão de Açúcar.png'),
(248, 'aWaMtM9OLRk', 'fotos/Supermercados/Supermercado Bompreço.png'),
(249, 'HHRRamFjNaM', 'fotos/Supermercados/Supermercado Extra.png'),
(250, 'omUgj4g7qEA', 'fotos/Supermercados/Supermercado GBarbosa.png'),
(251, 'yvVJeSvihWc', 'fotos/Supermercados/Supermercado Makro.png'),
(252, '5dLDUkmDCaw', 'fotos/Supermercados/Supermercado Pao de Açucar.png'),
(254, 'F99W4v7LcqU', 'fotos/Supermercados/Todo Dia.png'),
(244, 'W2IGkuyU28w', 'fotos/Supermercados/Atacadão sinal 2.png'),
(49, 'qDi44UoAQx4', 'fotos/Cidades/São Cristovão Sinal 2.png'),
(61, '6V7R5bJ7IO0', 'fotos/Cidades/Riachuelo Sinal 2.png'),
(58, 'u3sFzk86URQ', 'fotos/Cidades/Rosrio do Catete 2.png'),
(56, 'YX1sYsbFbaA', 'fotos/Cidades/Salgado Sinal 2.png'),
(52, 'PnRKIhGtJ0s', 'fotos/Cidades/Santo Amaro Das Brotas Sinal 2.png'),
(49, 'o9y_I7s0O2k', 'fotos/Cidades/São Cristovão Sinal 1.png'),
(52, '20obmiecOdQ', 'fotos/Cidades/Santo Amaro Das Brotas Sinal 1.png'),
(53, 'DGyq4-qwU68', 'fotos/Cidades/Santa Rosa De Lima.png'),
(54, 'Md8PTdrfaxs', 'fotos/Cidades/Santa Luzia Do Itanhy.png'),
(56, 'hLj1xmybpg8', 'fotos/Cidades/Salgado Sinal 1.png'),
(58, 'DzIdIYBtc7o', 'fotos/Cidades/Rosrio do Catete 1.png'),
(59, 'rr8R6v7UWCA', 'fotos/Cidades/Ribeirópolis.png'),
(61, '0lAjxzkBCm4', 'fotos/Cidades/Riachuelo Sinal 1.png'),
(62, 'JWRkz4rZ3Mc', 'fotos/Cidades/Riachão do Dantas.png'),
(63, 'LRpR1Bj3XnE', 'fotos/Cidades/Propriá.png'),
(100, 'Frcq7TmvWR8', 'fotos/Cidades/Frei Paulo Sinal 2.png'),
(113, '2t1xnbI_ZKk', 'fotos/Cidades/Canindé 2.png'),
(109, 'tmNG-BbX_A0', 'fotos/Cidades/Carmópolis 2.png'),
(109, 'eIiAUSzpS8w', 'fotos/Cidades/Carmópolis 3.png'),
(97, 'yLQg1j6pf3Y', 'fotos/Cidades/Glória 2.png'),
(87, 'swoZWUqfC_c', 'fotos/Cidades/Itaporanda D\'Ajuda 2.png'),
(86, 'WpBQtF--tfA', 'fotos/Cidades/Japaratuba.png'),
(87, '0WbPXdKl1uw', 'fotos/Cidades/Itaporanda D\'Ajuda 1.png'),
(90, 'pEO1SQlimio', 'fotos/Cidades/Itabi.png'),
(92, 'RVhrDIYbNjU', 'fotos/Cidades/Itabaiana.png'),
(93, 'bnQIqpaq6P0', 'fotos/Cidades/Indiaroba.png'),
(94, 'ktrbsSA6zCM', 'fotos/Cidades/Ilha Das Flores.png'),
(95, 'qvZ-y1EkW34', 'fotos/Cidades/Graccho Cardoso.png'),
(97, 'P6ttLbU2tNM', 'fotos/Cidades/Glória 1.png'),
(98, 'iC7MPmJft50', 'fotos/Cidades/General Maynard.png'),
(100, 'OkmyHnlPojo', 'fotos/Cidades/Frei Paulo Sinal 1.png'),
(101, 'sRvhIh_8w2Q', 'fotos/Cidades/Feira Nova.png'),
(102, 'KnmFZODEhEI', 'fotos/Cidades/Estância.png'),
(103, 'H7zvIwhx5sQ', 'fotos/Cidades/Divina Pastora.png'),
(104, '9iAo2Ms2EwA', 'fotos/Cidades/Cristinápolis.png'),
(105, 'zqZ4t009Bs8', 'fotos/Cidades/Cidades Sergipanas.png'),
(106, 'uRsG2dVuOVM', 'fotos/Cidades/Cedro de São João.png'),
(109, 'cFKJE3PYIjg', 'fotos/Cidades/Carmópolis 1.png'),
(110, 'k7aGpU18ick', 'fotos/Cidades/Carira.png'),
(111, 'FLyiUsWAELA', 'fotos/Cidades/Capela.png'),
(113, '360bzxLzrtY', 'fotos/Cidades/Canindé 1.png'),
(116, 'RIYSpPjOenY', 'fotos/Cidades/Boquim.png'),
(65, 'YCGxnKvhfMQ', 'fotos/Cidades/Porto Da Folha Sinal 1.png'),
(7, 'SWSYDSXZKVg', 'fotos/Bairros/Atalaia.png'),
(8, 'OykY_--iLHU', 'fotos/Bairros/Bugio.png'),
(2, 'ZQZTsDe75Oc', 'fotos/Bairros/Japãozinho sinal 1.png'),
(66, 'S_AAw6m_N5Y', 'fotos/Cidades/Poço Verde.png'),
(10, 'R8ioSU8ZfjE', 'fotos/Bairros/Bairro industrial.png'),
(4, 'ChtUGf_vGAE', 'fotos/Bairros/Santo antonio.png'),
(1, 'LHjOiJbjkWw', 'fotos/Bairros/Centro.png'),
(15, '-_9LBQRyziE', 'fotos/Bairros/Santa Maria sinal 1.png'),
(13, 'bIRpttG2SVE', 'fotos/Bairros/Porto Dantas.png'),
(14, 'LXGBMVkXpmo', 'fotos/Bairros/Salgado Filho.png'),
(17, 'R8KhrvIroeo', 'fotos/Bairros/Santos Dumont.png'),
(12, 'gpk0RPuUF6A', 'fotos/Bairros/América.png'),
(11, 'xzLaopfDPNA', 'fotos/Bairros/18 do forte.png'),
(35, 'xkrprWivvfw', 'fotos/Bairros/Pereira Lobo.png'),
(26, 'gwZSMOHNqMg', 'fotos/Bairros/Inacio Barbosa.png'),
(34, 'yI38BbXIohU', 'fotos/Bairros/Orlando Dantas e São Conrado.png'),
(36, 'il6sOxfmSlQ', 'fotos/Bairros/Ponto Novo sinal 1.png'),
(20, 'GePbXOPWjuU', 'fotos/Bairros/Coroa do meio 1.png'),
(30, '732dhbNAwlY', 'fotos/Bairros/Jardins.png'),
(33, 'TBpEWejTxfg', 'fotos/Bairros/Novo Paraíso.png'),
(24, 'VS8mkEelWWE', 'fotos/Bairros/Getulio Vargas.png'),
(32, '9ZKIv26jcq4', 'fotos/Bairros/Mosqueiro.png'),
(23, 'rFuXlOep6uQ', 'fotos/Bairros/Farolandia.png'),
(18, 'LY5ad5tLDJI', 'fotos/Bairros/Cidade Nova.png'),
(19, 'd2jaXyvTbG0', 'fotos/Bairros/Cirurgia.png'),
(31, 'VXd-K_0K9aI', 'fotos/Bairros/Lamarão.png'),
(39, '3ltUlB2toeA', 'fotos/Bairros/são José.png'),
(42, 'MYZnV4TlBYI', 'fotos/Bairros/Aeroporto.png'),
(40, 'Z0uT4tgDcyQ', 'fotos/Bairros/Siqueira Campos.png'),
(38, '6Fv1TKZnPYE', 'fotos/Bairros/17 de Março.png'),
(43, 'PBlV0FTCsqQ', 'fotos/Bancos/Banco do Brasil.png'),
(44, 'nD9RRxe5vDw', 'fotos/Bancos/BMG.png'),
(45, 'ZKUI8iNLboA', 'fotos/Bancos/BNB.png'),
(46, 'qZRUB0xDzpE', 'fotos/Bancos/CAIXA.png'),
(47, 'fDMVqD2Epmc', 'fotos/Bancos/HSBC.png'),
(48, 'a38CJrBy590', 'fotos/Bancos/Itau.png'),
(2, 'JstxV6hhbII', 'fotos/Bairros/Japãozinho sinal 2.png'),
(36, '0XcwUonEdfc', 'fotos/Bairros/Ponto Novo sinal 2.png'),
(15, 'qZ-Wn0d8lnQ', 'fotos/Bairros/Santa Maria sinal 2.png'),
(67, 'vTSsfX5tQZI', 'fotos/Cidades/Poço Redondo.png'),
(68, 'o3gGt73_Ik8', 'fotos/Cidades/Pirambu.png'),
(69, 'b0qjb1S42wA', 'fotos/Cidades/Pedrinhas.png'),
(70, 'MWDRRM4fszc', 'fotos/Cidades/Nossa Senhora Do Socorro.png'),
(71, 'aZh-CiU06Hs', 'fotos/Cidades/Nossa Senhora De Lourdes.png'),
(72, '-52zzJK1NJE', 'fotos/Cidades/Nossa Senhora Das Dores.png'),
(73, 'JbkgJGxKnlU', 'fotos/Cidades/Nossa Senhora Aparecida.png'),
(75, 'fvk-wZsybuk', 'fotos/Cidades/Neópolis 2.png'),
(77, 'CcCPqmSufbQ', 'fotos/Cidades/Moita Bonita Sinal 1.png'),
(78, 'ywO9miZ5Byk', 'fotos/Cidades/Maruim.png'),
(80, 'fxzPhigpjzk', 'fotos/Cidades/Malhador Sinal 1.png'),
(81, 'esuCEmDI0jw', 'fotos/Cidades/Malhada Dos Bois.png'),
(83, 'UmGXQa0dBCs', 'fotos/Cidades/Macambira Sinal 1.png'),
(84, 'T_mKxgGX-kE', 'fotos/Cidades/Laranjeiras.png'),
(85, 'LsBB_zWiq9o', 'fotos/Cidades/Lagarto.png'),
(115, 'Q9LG0mTmTfM', 'fotos/Cidades/Campo do Brito 1.png'),
(120, 'ITwZpO9_5Yk', 'fotos/Cidades/Areia Branca.png'),
(121, 'oNf-TJRDVaw', 'fotos/Cidades/Aracaju.png'),
(122, 'TRc9t6oP8PQ', 'fotos/Cidades/Aquidabã.png'),
(123, 'Of1vBwxyI58', 'fotos/Cidades/Umbaúba 1.png'),
(124, 'r-FUbGpHkDM', 'fotos/Cidades/Tobias Barreto.png'),
(125, '_h9eYVndSJI', 'fotos/Cidades/Siriri.png'),
(127, 'TH6zs4KDBpM', 'fotos/Cidades/São Miguel do Aleixo.png'),
(128, 'pEP4uYkGfFQ', 'fotos/Cidades/São Francisco.png'),
(129, 'VBc2vhBmJpY', 'fotos/Cidades/São Domingos.png'),
(115, 'Taj1Qqk73yQ', 'fotos/Cidades/Campo do Brito 2.png'),
(138, 'fKal943ndCQ', 'fotos/Comidas/Caranguejo sinal 1.png'),
(230, 'DKVVV9-HhyE', 'fotos/Pontos/Centro turistico rua 24 horas.png'),
(197, 'd5KGAWSS1vk', 'fotos/Pontos/Cidade historica laranjeiras.png'),
(198, 'Q0ezg4S7whE', 'fotos/Pontos/Cidade historica são cristóvão.png'),
(199, 'vys4uwZm-OQ', 'fotos/Pontos/Colina do santo antônio.png'),
(200, 'Ix1OodiRBXo', 'fotos/Pontos/Croa do goré.png'),
(201, 'rAykz_zlB6Q', 'fotos/Pontos/Espaço zé peixe.png'),
(191, 'OP4S19dVtTw', 'fotos/Pontos/Calçadão da joão pessoa sinal 2.png'),
(190, 'tLTssJzeX0g', 'fotos/Pontos/Calçadão da 13 de julho.png'),
(191, 'Mc2H-Wp6nUo', 'fotos/Pontos/Calçadão da joão pessoa sinal 1.png'),
(193, '0CFsP_bOrAU', 'fotos/Pontos/Calçadão praia formosa.png'),
(194, '7TnooC8xuCA', 'fotos/Pontos/Centro de arte e cultura de sergipe.png'),
(195, 'V62Xwt0ikGI', 'fotos/Pontos/Centro historico de aracaju.png'),
(157, 'AhqkLMmmwec', 'fotos/Comidas/Tapioca1.png'),
(83, '1Aus20aSwak', 'fotos/Cidades/Macambira Sinal 2.png'),
(80, 'bDoRCkc7XuQ', 'fotos/Cidades/Malhador Sinal 2.png'),
(77, '_ls5LvbKTRo', 'fotos/Cidades/Moita Bonita Sinal 2.png'),
(75, 'G8vkgNW8XYI', 'fotos/Cidades/Nepolis 1.png'),
(65, 't5vHDvWf8Tg', 'fotos/Cidades/Porto Da Folha Sinal 2.png'),
(123, 'xU985ZQT0l0', 'fotos/Cidades/Umbaúba 2.png'),
(3, 'M7_-dCxeqZ0', 'fotos/Bairros/Jardim centenário sinal 1.png'),
(29, 'NVFfS2y4Y7c', 'fotos/Bairros/Jose Conrado de Araujo.png'),
(242, '3g_d7evvOzg', ''),
(157, '3Wx8sxQkjAw', 'fotos/Comidas/Tapioca sinal 2.png'),
(143, 'B3hmhxCLRj0', 'fotos/Comidas/Dobradinha sinal 2.png'),
(151, 'qKtQIP7R79o', 'fotos/Comidas/Mocotó sinal 2.png'),
(138, '6UC-gVxUbF8', 'fotos/Comidas/CAranguejo sinal 2.png'),
(214, 'GBFk5iXVXDo', 'fotos/Pontos/Orlinha do bairro industrial.png'),
(215, 'ZaT9mQSRcDs', 'fotos/Pontos/Parque da sementeira sinal 1.png'),
(217, 'ykYQV8hr9p0', 'fotos/Pontos/Passarela do caranguejo.png'),
(218, 'mqPPFvQb9os', 'fotos/Pontos/Ponte do imperador.png'),
(209, '8GjdLmaMsc0', 'fotos/Pontos/Museo Olimpio Campos.png'),
(203, 'EnwiwHN4Qcc', 'fotos/Pontos/Fazenda boa luz sinal 2.png'),
(206, 'PHdJd6lYes8', 'fotos/Pontos/Mini zoológico sinal 2.png'),
(210, 'pztxv6UuEns', 'fotos/Pontos/Oceanário sinal 2.png'),
(154, '6WbR0G8z7u8', 'fotos/Comidas/Pamonha.png'),
(157, '3rOPABziox8', 'fotos/Comidas/Tapioca sinal 3.png'),
(202, 'eJYKSNSa0GQ', 'fotos/Pontos/Farol farolândia.png'),
(131, 'iL31M2ARnQY', 'fotos/Comidas/Amendoim sinal 1.png'),
(132, 'uPDl-byOn3E', 'fotos/Comidas/Arroz Doce.png'),
(133, 'YDu4bGxYViU', 'fotos/Comidas/Bolo de Arroz.png'),
(134, '17HP8zUNQrI', 'fotos/Comidas/Bolo de Macaxeira.png'),
(135, 'Y0C2e47XH-g', 'fotos/Comidas/Bolo de Milho.png'),
(136, 'A7r6qakpFWg', 'fotos/Comidas/Bucho.png'),
(137, 'X7m5eCEo7jg', 'fotos/Comidas/Caldinho.png'),
(219, '5NbgSjSLOjA', 'fotos/Pontos/Praça olímpio campos sinal 2.png'),
(140, 'xUJGL2KsKLc', 'fotos/Comidas/Carne do Sol.png'),
(141, 'Lhn-bQOIaNc', 'fotos/Comidas/Charque.png'),
(142, 'ZdcaRBV3WeM', 'fotos/Comidas/Cuscuz.png'),
(143, 'TYj3Z2s4xuY', 'fotos/Comidas/Dobradinha sinal 1.png'),
(145, '0Q5G5OcBM3g', 'fotos/Comidas/Escondidinho.png'),
(146, 'Q5JQdzqA3IQ', 'fotos/Comidas/Inhame.png'),
(147, 'qWmJf3dJlNc', 'fotos/Comidas/Macaxeira.png'),
(148, 'Qv79_Ny2988', 'fotos/Comidas/Milho Assado.png'),
(149, 'ZHPCiVNUnH0', 'fotos/Comidas/Milho cozido.png'),
(150, '5-oeT5WdZcA', 'fotos/Comidas/Mingau de Puba.png'),
(215, 'Alp5Vgmx4dg', 'fotos/Pontos/Parque da sementeira sinal 2.png'),
(153, 'HR6zTp03JkU', 'fotos/Comidas/Munguzá.png'),
(155, '1SBCByJcNV8', 'fotos/Comidas/Quiabada.png'),
(156, 'NoJAb_D-L4Y', 'fotos/Comidas/Sururu.png'),
(160, 'jWBTPm9LNaQ', 'fotos/Comidas/Tripa de Porco.png'),
(161, 'TKRCm6cSn-Q', 'fotos/Instituicoes/Estacio FASE.png'),
(162, 'vs8DLxep05k', 'fotos/Instituicoes/Faculdade Jardins.png'),
(163, 'xMmgi2j3EG4', 'fotos/Instituicoes/Faculdade Mauricio de Nassau sinal 1.png'),
(165, 'SSEGu8BR6YQ', 'fotos/Instituicoes/Faculdade Pio X.png'),
(166, 'AUYtB930378', 'fotos/Instituicoes/Faculdade Sao Luis de Franca.png'),
(167, 'QGOQrEaB3Q0', 'fotos/Instituicoes/FAMA.png'),
(168, 'aldwH8ymnkk', 'fotos/Instituicoes/FANESE.png'),
(169, 'QM9g8n2Luf4', 'fotos/Instituicoes/IFS sinal 1.png'),
(171, '0B_xqavzEgk', 'fotos/Instituicoes/UFS sinal 1.png'),
(173, '_tbThUBao1Y', 'fotos/Instituicoes/UNIT.png'),
(174, 'IboiB4is1-o', 'fotos/Lojas/Centauro sinal 1.png'),
(176, 'ZSiX44fgjm4', 'fotos/Lojas/Le Biscuit.png'),
(177, '0TPjyPs6Z6k', 'fotos/Lojas/Login sinal 1.png'),
(178, 'Hjf5hOQo8L4', 'fotos/Lojas/Loja CeA.png'),
(179, 'nNHBsuu9Woo', 'fotos/Lojas/Loja Emanuelle .png'),
(180, 'e1WK-iYUMqQ', 'fotos/Lojas/Loja Huteba.png'),
(181, 'jQZFMArx4BI', 'fotos/Lojas/Loja Imperador sinal 1.png'),
(183, '2Npk-uFTKMw', 'fotos/Lojas/Loja Jurandir Pires.png'),
(184, '3l3xyLx5EUY', 'fotos/Lojas/Loja Marisa Sinal 1.png'),
(186, 'gV7-JKG036w', 'fotos/Lojas/Loja Renner.png'),
(187, '9CfS_y2wcAI', 'fotos/Lojas/Loja Riachuelo sinal 1.png'),
(189, 'CtBMZqGfv1M', 'fotos/Lojas/Lojas Americanas.png'),
(203, '_mq3avLdvN0', 'fotos/Pontos/Fazenda boa luz sinal 1.png'),
(205, 'GgrGwtWJppY', 'fotos/Pontos/Mercado.png'),
(206, 'sMYNFGVk8nU', 'fotos/Pontos/Mini zoológico sinal 1.png'),
(208, '5Vq8wr_5XEk', 'fotos/Pontos/Mirante da 13 de julho.png'),
(210, '82H3cwwT9Co', 'fotos/Pontos/Oceanário sinal 1.png'),
(212, 'Nu-1znvnzP4', 'fotos/Pontos/Orla de atalaia.png'),
(213, 'vur5R2F2mVA', 'fotos/Pontos/Orla pôr do sol.png'),
(219, '4uRTMwsH5lw', 'fotos/Pontos/Praça olímpio campos sinal 1.png'),
(221, 'EDgAWrt7vL4', 'fotos/Pontos/Praia da coroa do meio.png'),
(163, 'qY9sRzGjFZ4', 'fotos/Instituicoes/Faculdade Mauricio de Nassau sinal 2.png'),
(169, '0cnN1Jd3eLw', 'fotos/Instituicoes/IFS sinal 2.png'),
(171, 'CY1_lrz0MI0', 'fotos/Instituicoes/UFS sinal 2.png'),
(174, 'ElFOqVEXXHg', 'fotos/Lojas/Centauro sinal 2.png'),
(181, 'HV-n-451QmU', 'fotos/Lojas/Loja Imperador sinal 2.png'),
(187, 'E7lAlCbEtw4', 'fotos/Lojas/Loja Riachuelo sinal 2.png'),
(184, 'SMcNRKGqEEg', 'fotos/Lojas/Loja Marisa sinal 2.png'),
(222, 'WKs-nvF2HHo', 'fotos/Pontos/Praia da costa.png'),
(223, 'BZPoW-RofC8', 'fotos/Pontos/Praia de atalaia.png'),
(224, 'BJsKicWLQbY', 'fotos/Pontos/Praia de pirambu.png'),
(225, 'MYLqI7-0KSI', 'fotos/Pontos/Praia do abais.png'),
(228, 'LR-E57f7Un8', 'fotos/Pontos/Projeto tamar sinal 2.png'),
(226, 'K8WUH-VrgOc', 'fotos/Pontos/Praia do farol.png'),
(227, '2Qw4ltgmO-Y', 'fotos/Pontos/Praia do mosqueiro.png'),
(228, 'w6kKsRrIwzE', 'fotos/Pontos/Projeto tamar sinal 1.png'),
(230, 'fSkktyp6U3E', 'fotos/Pontos/Rua 24 horas.png'),
(231, 'fasdf', 'fotos/Pontos/sdfasdf.png'),
(232, 'TXuIb032g-4', 'fotos/Pontos/Shopping jardins.png'),
(233, 'k4m2H_XQNmQ', 'fotos/Pontos/Shopping prêmio.png'),
(234, 'k-TGQxrYxZY', 'fotos/Pontos/Shopping riomar aracaju.png'),
(235, '7y_GgbsWkCs', 'fotos/Pontos/Teatro atheneu.png'),
(236, 'q07QmrIAM0I', 'fotos/Pontos/Teatro tiradentes.png'),
(237, 'U4lxumMr6bI', 'fotos/Pontos/Teatro tobias barreto.png'),
(238, '1u_bAjAy8jg', 'fotos/Pontos/Xingó sinal 1.png'),
(239, '5JNVPe6g7tw', 'fotos/Pontos/Xingó sinal 2.png'),
(240, 'INnEBaiCiGg', 'fotos/Pontos/Zoo Industrial.png'),
(241, 'INnEBaiCiGg', 'fotos/Pontos/Zoológico bairro industrial.png'),
(243, '3g_d7evvOzg', ''),
(253, 'F99W4v7LcqU', ''),
(244, '3g_d7evvOzg', 'fotos/Supermercados/Atacadão sinal 1.png'),
(246, 'yvVJeSvihWc', 'fotos/Supermercados/Makro.png'),
(247, '5dLDUkmDCaw', 'fotos/Supermercados/Pão de Açúcar.png'),
(248, 'aWaMtM9OLRk', 'fotos/Supermercados/Supermercado Bompreço.png'),
(249, 'HHRRamFjNaM', 'fotos/Supermercados/Supermercado Extra.png'),
(250, 'omUgj4g7qEA', 'fotos/Supermercados/Supermercado GBarbosa.png'),
(251, 'yvVJeSvihWc', 'fotos/Supermercados/Supermercado Makro.png'),
(252, '5dLDUkmDCaw', 'fotos/Supermercados/Supermercado Pao de Açucar.png'),
(254, 'F99W4v7LcqU', 'fotos/Supermercados/Todo Dia.png'),
(244, 'W2IGkuyU28w', 'fotos/Supermercados/Atacadão sinal 2.png'),
(49, 'qDi44UoAQx4', 'fotos/Cidades/São Cristovão Sinal 2.png'),
(61, '6V7R5bJ7IO0', 'fotos/Cidades/Riachuelo Sinal 2.png'),
(58, 'u3sFzk86URQ', 'fotos/Cidades/Rosrio do Catete 2.png'),
(56, 'YX1sYsbFbaA', 'fotos/Cidades/Salgado Sinal 2.png'),
(52, 'PnRKIhGtJ0s', 'fotos/Cidades/Santo Amaro Das Brotas Sinal 2.png'),
(49, 'o9y_I7s0O2k', 'fotos/Cidades/São Cristovão Sinal 1.png'),
(52, '20obmiecOdQ', 'fotos/Cidades/Santo Amaro Das Brotas Sinal 1.png'),
(53, 'DGyq4-qwU68', 'fotos/Cidades/Santa Rosa De Lima.png'),
(54, 'Md8PTdrfaxs', 'fotos/Cidades/Santa Luzia Do Itanhy.png'),
(56, 'hLj1xmybpg8', 'fotos/Cidades/Salgado Sinal 1.png'),
(58, 'DzIdIYBtc7o', 'fotos/Cidades/Rosrio do Catete 1.png'),
(59, 'rr8R6v7UWCA', 'fotos/Cidades/Ribeirópolis.png'),
(61, '0lAjxzkBCm4', 'fotos/Cidades/Riachuelo Sinal 1.png'),
(62, 'JWRkz4rZ3Mc', 'fotos/Cidades/Riachão do Dantas.png'),
(63, 'LRpR1Bj3XnE', 'fotos/Cidades/Propriá.png'),
(100, 'Frcq7TmvWR8', 'fotos/Cidades/Frei Paulo Sinal 2.png'),
(113, '2t1xnbI_ZKk', 'fotos/Cidades/Canindé 2.png'),
(109, 'tmNG-BbX_A0', 'fotos/Cidades/Carmópolis 2.png'),
(109, 'eIiAUSzpS8w', 'fotos/Cidades/Carmópolis 3.png'),
(97, 'yLQg1j6pf3Y', 'fotos/Cidades/Glória 2.png'),
(87, 'swoZWUqfC_c', 'fotos/Cidades/Itaporanda D\'Ajuda 2.png'),
(86, 'WpBQtF--tfA', 'fotos/Cidades/Japaratuba.png'),
(87, '0WbPXdKl1uw', 'fotos/Cidades/Itaporanda D\'Ajuda 1.png'),
(90, 'pEO1SQlimio', 'fotos/Cidades/Itabi.png'),
(92, 'RVhrDIYbNjU', 'fotos/Cidades/Itabaiana.png'),
(93, 'bnQIqpaq6P0', 'fotos/Cidades/Indiaroba.png'),
(94, 'ktrbsSA6zCM', 'fotos/Cidades/Ilha Das Flores.png'),
(95, 'qvZ-y1EkW34', 'fotos/Cidades/Graccho Cardoso.png'),
(97, 'P6ttLbU2tNM', 'fotos/Cidades/Glória 1.png'),
(98, 'iC7MPmJft50', 'fotos/Cidades/General Maynard.png'),
(100, 'OkmyHnlPojo', 'fotos/Cidades/Frei Paulo Sinal 1.png'),
(101, 'sRvhIh_8w2Q', 'fotos/Cidades/Feira Nova.png'),
(102, 'KnmFZODEhEI', 'fotos/Cidades/Estância.png'),
(103, 'H7zvIwhx5sQ', 'fotos/Cidades/Divina Pastora.png'),
(104, '9iAo2Ms2EwA', 'fotos/Cidades/Cristinápolis.png'),
(105, 'zqZ4t009Bs8', 'fotos/Cidades/Cidades Sergipanas.png'),
(106, 'uRsG2dVuOVM', 'fotos/Cidades/Cedro de São João.png'),
(109, 'cFKJE3PYIjg', 'fotos/Cidades/Carmópolis 1.png'),
(110, 'k7aGpU18ick', 'fotos/Cidades/Carira.png'),
(111, 'FLyiUsWAELA', 'fotos/Cidades/Capela.png'),
(113, '360bzxLzrtY', 'fotos/Cidades/Canindé 1.png'),
(116, 'RIYSpPjOenY', 'fotos/Cidades/Boquim.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Categorias`
--

CREATE TABLE `Categorias` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `foto` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Categorias`
--

INSERT INTO `Categorias` (`nome`, `link`, `foto`, `coment`, `id`) VALUES
('Lojas', NULL, NULL, NULL, 5),
('Supermercados', NULL, NULL, NULL, 8),
('Bairros de Aracaju', 'https://youtu.be/5CPeRlGFSDQ', NULL, NULL, 1),
('Comidas Típicas', NULL, NULL, NULL, 2),
('Pontos Turísticos', NULL, NULL, NULL, 7),
('Bancos/Instituições Financeiras', NULL, NULL, NULL, 3),
('Municípios de Sergipe', NULL, NULL, NULL, 6),
('Instituições de Ensino Superior', NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Cidades`
--

CREATE TABLE `Cidades` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `local` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Comidas`
--

CREATE TABLE `Comidas` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `foto` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Comidas`
--

INSERT INTO `Comidas` (`nome`, `link`, `foto`, `coment`, `id`) VALUES
('Caldinho', 'X7m5eCEo7jg', 'fotos/Comidas/Caldinho.png', 'Comidas Tipicas', 7),
('Caranguejo sinal 1', 'fKal943ndCQ', 'fotos/Comidas/Caranguejo sinal 1.png', 'Comidas Tipicas', 8),
('CAranguejo sinal 2', '6UC-gVxUbF8', 'fotos/Comidas/CAranguejo sinal 2.png', 'Comidas Tipicas', 9),
('Carne do Sol', 'xUJGL2KsKLc', 'fotos/Comidas/Carne do Sol.png', 'Comidas Tipicas', 10),
('Charque', 'Lhn-bQOIaNc', 'fotos/Comidas/Charque.png', 'Comidas Tipicas', 11),
('Amendoim sinal 1', 'iL31M2ARnQY', 'fotos/Comidas/Amendoim sinal 1.png', 'Comidas Tipicas', 1),
('Arroz Doce', 'uPDl-byOn3E', 'fotos/Comidas/Arroz Doce.png', 'Comidas Tipicas', 2),
('Bolo de Arroz', 'YDu4bGxYViU', 'fotos/Comidas/Bolo de Arroz.png', 'Comidas Tipicas', 3),
('Bolo de Macaxeira', '17HP8zUNQrI', 'fotos/Comidas/Bolo de Macaxeira.png', 'Comidas Tipicas', 4),
('Bolo de Milho', 'Y0C2e47XH-g', 'fotos/Comidas/Bolo de Milho.png', 'Comidas Tipicas', 5),
('Bucho', 'A7r6qakpFWg', 'fotos/Comidas/Bucho.png', 'Comidas Tipicas', 6),
('Cuscuz', 'ZdcaRBV3WeM', 'fotos/Comidas/Cuscuz.png', 'Comidas Tipicas', 12),
('Dobradinha sinal 1', 'TYj3Z2s4xuY', 'fotos/Comidas/Dobradinha sinal 1.png', 'Comidas Tipicas', 13),
('Dobradinha sinal 2', 'B3hmhxCLRj0', 'fotos/Comidas/Dobradinha sinal 2.png', 'Comidas Tipicas', 14),
('Escondidinho', '0Q5G5OcBM3g', 'fotos/Comidas/Escondidinho.png', 'Comidas Tipicas', 15),
('Inhame', 'Q5JQdzqA3IQ', 'fotos/Comidas/Inhame.png', 'Comidas Tipicas', 16),
('Macaxeira', 'qWmJf3dJlNc', 'fotos/Comidas/Macaxeira.png', 'Comidas Tipicas', 17),
('Milho Assado', 'Qv79_Ny2988', 'fotos/Comidas/Milho Assado.png', 'Comidas Tipicas', 18),
('Milho cozido', 'ZHPCiVNUnH0', 'fotos/Comidas/Milho cozido.png', 'Comidas Tipicas', 19),
('Mingau de Puba', '5-oeT5WdZcA', 'fotos/Comidas/Mingau de Puba.png', 'Comida Tipicas', 20),
('Mocotó ', 'sxmC5rgFvIw', 'fotos/Comidas/Mocotó .png', 'Comidas Tipicas', 21),
('Mocotó sinal 2', 'qKtQIP7R79o', 'fotos/Comidas/Mocotó sinal 2.png', 'Comidas Tipicas', 22),
('Munguzá', 'HR6zTp03JkU', 'fotos/Comidas/Munguzá.png', 'Comidas Tipicas', 23),
('Pamonha', 'https://youtu.be/6WbR0G8z7u8', NULL, NULL, 24),
('Quiabada', '1SBCByJcNV8', 'fotos/Comidas/Quiabada.png', 'Comidas Tipicas', 25),
('Sururu', 'NoJAb_D-L4Y', 'fotos/Comidas/Sururu.png', 'Comidas Tipicas', 26),
('Tapioca sinal 1', 'https://youtu.be/AhqkLMmmwec', NULL, NULL, 27),
('Tapioca sinal 2', '3Wx8sxQkjAw', 'fotos/Comidas/Tapioca sinal 2.png', 'Comidas Tipicas', 28),
('Tapioca sinal 3', '3rOPABziox8', 'fotos/Comidas/Tapioca sinal 3.png', 'Comidas Tipicas', 29),
('Tripa de Porco', 'jWBTPm9LNaQ', 'fotos/Comidas/Tripa de Porco.png', 'Comidas Tipicas', 30);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Instituicoes`
--

CREATE TABLE `Instituicoes` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `foto` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Instituicoes`
--

INSERT INTO `Instituicoes` (`nome`, `link`, `foto`, `coment`, `id`) VALUES
('Estacio FASE', 'TKRCm6cSn-Q', 'fotos/Instituicoes/Estacio FASE.png', 'Faculdade em Aracaju', 1),
('Faculdade Jardins', 'vs8DLxep05k', 'fotos/Instituicoes/Faculdade Jardins.png', 'Faculdade em Sergipe', 2),
('Faculdade Mauricio de Nassau sinal 1', 'xMmgi2j3EG4', 'fotos/Instituicoes/Faculdade Mauricio de Nassau sinal 1.png', 'Faculdade em Aracaju', 3),
('Faculdade Mauricio de Nassau sinal 2', 'qY9sRzGjFZ4', 'fotos/Instituicoes/Faculdade Mauricio de Nassau sinal 2.png', 'Faculdade em Aracaju', 4),
('Faculdade Pio X', 'SSEGu8BR6YQ', 'fotos/Instituicoes/Faculdade Pio X.png', 'Faculdade em Aracaju', 5),
('Faculdade Sao Luis de Franca', 'AUYtB930378', 'fotos/Instituicoes/Faculdade Sao Luis de Franca.png', 'Faculdade em Aracaju', 6),
('FAMA', 'QGOQrEaB3Q0', 'fotos/Instituicoes/FAMA.png', 'Faculdade em Aracaju', 7),
('FANESE', 'aldwH8ymnkk', 'fotos/Instituicoes/FANESE.png', 'Faculdade de Negocios em Sergipe', 8),
('IFS sinal 1', 'QM9g8n2Luf4', 'fotos/Instituicoes/IFS sinal 1.png', 'Instituição em Sergipe', 9),
('IFS sinal 2', '0cnN1Jd3eLw', 'fotos/Instituicoes/IFS sinal 2.png', 'Instituição em Aracaju', 10),
('UFS sinal 1', '0B_xqavzEgk', 'fotos/Instituicoes/UFS sinal 1.png', 'Universidade em Sergipe', 11),
('UFS sinal 2', 'CY1_lrz0MI0', 'fotos/Instituicoes/UFS sinal 2.png', 'Universidade em Sergipe', 12),
('UNIT', '_tbThUBao1Y', 'fotos/Instituicoes/UNIT.png', 'Universidade em Aracaju', 13);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Lojas`
--

CREATE TABLE `Lojas` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `foto` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Lojas`
--

INSERT INTO `Lojas` (`nome`, `link`, `foto`, `coment`, `id`) VALUES
('Centauro sinal 1', 'IboiB4is1-o', 'fotos/Lojas/Centauro sinal 1.png', 'Lojas', 2),
('Centauro sinal 2', 'ElFOqVEXXHg', 'fotos/Lojas/Centauro sinal 2.png', 'Lojas', 3),
('Le Biscuit', 'ZSiX44fgjm4', 'fotos/Lojas/Le Biscuit.png', 'Lojas', 4),
('Login sinal 1', '0TPjyPs6Z6k', 'fotos/Lojas/Login sinal 1.png', 'Lojas', 5),
('Loja CeA', 'Hjf5hOQo8L4', 'fotos/Lojas/Loja CeA.png', 'Lojas', 6),
('Loja Emanuelle ', 'nNHBsuu9Woo', 'fotos/Lojas/Loja Emanuelle .png', 'Lojas', 7),
('Loja Huteba', 'e1WK-iYUMqQ', 'fotos/Lojas/Loja Huteba.png', 'Lojas', 8),
('Loja Imperador sinal 1', 'jQZFMArx4BI', 'fotos/Lojas/Loja Imperador sinal 1.png', 'Lojas', 9),
('Loja Imperador sinal 2', 'HV-n-451QmU', 'fotos/Lojas/Loja Imperador sinal 2.png', 'Lojas', 10),
('Loja Jurandir Pires', '2Npk-uFTKMw', 'fotos/Lojas/Loja Jurandir Pires.png', 'Lojas', 11),
('Loja Marisa Sinal 1', '3l3xyLx5EUY', 'fotos/Lojas/Loja Marisa Sinal 1.png', 'Lojas', 12),
('Loja Marisa sinal 2', 'SMcNRKGqEEg', 'fotos/Lojas/Loja Marisa sinal 2.png', 'Lojas', 13),
('Loja Renner', 'gV7-JKG036w', 'fotos/Lojas/Loja Renner.png', 'Lojas', 14),
('Loja Riachuelo sinal 1', '9CfS_y2wcAI', 'fotos/Lojas/Loja Riachuelo sinal 1.png', 'Lojas', 15),
('Loja Riachuelo sinal 2', 'E7lAlCbEtw4', 'fotos/Lojas/Loja Riachuelo sinal 2.png', 'Lojas', 16),
('Lojas Americanas', 'CtBMZqGfv1M', 'fotos/Lojas/Lojas Americanas.png', 'Lojas', 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Municipios`
--

CREATE TABLE `Municipios` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `local` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Municipios`
--

INSERT INTO `Municipios` (`nome`, `link`, `local`, `coment`, `id`) VALUES
('Itaporanga dajuda sinal 1', 'https://www.youtube.com/watch?v=swoZWUqfC_c&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=41', NULL, NULL, 34),
('Malhador sinal 1', 'https://www.youtube.com/watch?v=fxzPhigpjzk&index=32&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 43),
('Malhador sinal 2', 'https://www.youtube.com/watch?v=bDoRCkc7XuQ&index=31&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 44),
('Moita bonita sinal 1', 'https://www.youtube.com/watch?v=CcCPqmSufbQ&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=29', NULL, NULL, 46),
('Moita bonita sinal 2', 'https://www.youtube.com/watch?v=_ls5LvbKTRo&index=28&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 47),
('Neóplois sinal 2', 'https://www.youtube.com/watch?v=fvk-wZsybuk&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=27', NULL, NULL, 48),
('Neópolis sinal 1', 'https://www.youtube.com/watch?v=G8vkgNW8XYI&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=26', NULL, NULL, 49),
('Nossa senhora aparecida', 'https://www.youtube.com/watch?v=JbkgJGxKnlU&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=25', NULL, NULL, 50),
('Areia branca', 'https://www.youtube.com/watch?v=ITwZpO9_5Yk&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=72', NULL, NULL, 3),
('Barra dos coqueiros sinal 1', 'https://www.youtube.com/watch?v=_UKrWBb-2l0&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=71', NULL, NULL, 4),
('Barra dos coqueiros sinal 2', 'https://www.youtube.com/watch?v=FEDEcbgZWmc&index=70&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 5),
('Barra dos coqueiros sinal 3', 'https://www.youtube.com/watch?v=as_KOqmOfa4&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=69', NULL, NULL, 6),
('Boquim', 'https://www.youtube.com/watch?v=RIYSpPjOenY&index=68&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 7),
('Campo do brito sinal 1', 'https://www.youtube.com/watch?v=Q9LG0mTmTfM&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=67', NULL, NULL, 8),
('Campo do brito sinal 2', 'https://www.youtube.com/watch?v=Taj1Qqk73yQ&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=66', NULL, NULL, 9),
('Canidé sinal 1', 'https://www.youtube.com/watch?v=360bzxLzrtY&index=65&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 10),
('Canidé sinal 2', 'https://www.youtube.com/watch?v=2t1xnbI_ZKk&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=64', NULL, NULL, 11),
('Capela', 'https://www.youtube.com/watch?v=FLyiUsWAELA&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=63', NULL, NULL, 12),
('Carira', 'https://www.youtube.com/watch?v=k7aGpU18ick&index=62&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 13),
('Carmópolis sinal 1', 'https://www.youtube.com/watch?v=cFKJE3PYIjg&index=61&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 14),
('Carmópolis sinal 2', 'https://www.youtube.com/watch?v=tmNG-BbX_A0&index=60&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 15),
('Carmópolis sinal 3', 'https://www.youtube.com/watch?v=eIiAUSzpS8w&index=59&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 16),
('Cedro de são joão', 'https://www.youtube.com/watch?v=uRsG2dVuOVM&index=58&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 17),
('Cidades sergipanas', 'https://www.youtube.com/watch?v=zqZ4t009Bs8&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=57', NULL, NULL, 18),
('Cristinápolis', 'https://www.youtube.com/watch?v=9iAo2Ms2EwA&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=56', NULL, NULL, 19),
('Divina pastora', 'https://www.youtube.com/watch?v=H7zvIwhx5sQ&index=55&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 20),
('Estância', 'https://www.youtube.com/watch?v=KnmFZODEhEI&index=54&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 21),
('Feira nova', 'https://www.youtube.com/watch?v=sRvhIh_8w2Q&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=53', NULL, NULL, 22),
('Frei paulo sinal 1', 'https://www.youtube.com/watch?v=OkmyHnlPojo&index=52&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 23),
('Frei paulo sinal 2', 'https://www.youtube.com/watch?v=Frcq7TmvWR8&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=51', NULL, NULL, 24),
('General maynard', 'https://www.youtube.com/watch?v=iC7MPmJft50&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=50', NULL, NULL, 25),
('Glória sinal 1', 'https://www.youtube.com/watch?v=P6ttLbU2tNM&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=49', NULL, NULL, 26),
('Glória sinal 2', 'https://www.youtube.com/watch?v=yLQg1j6pf3Y&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=48', NULL, NULL, 27),
('Graco cardoso', 'https://www.youtube.com/watch?v=qvZ-y1EkW34&index=47&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 28),
('Ilha das flores', 'https://www.youtube.com/watch?v=ktrbsSA6zCM&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=46', NULL, NULL, 29),
('Indiaroba', 'https://www.youtube.com/watch?v=bnQIqpaq6P0&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=45', NULL, NULL, 30),
('Itabaiana', 'https://www.youtube.com/watch?v=RVhrDIYbNjU&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=44', NULL, NULL, 31),
('Itabaianinha', 'https://www.youtube.com/watch?v=Yi3hFBmCbcc&index=43&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 32),
('Itabi', 'https://www.youtube.com/watch?v=pEO1SQlimio&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=42', NULL, NULL, 33),
('Poço redondo', 'https://www.youtube.com/watch?v=vTSsfX5tQZI&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=19', NULL, NULL, 56),
('Poço verde', 'https://www.youtube.com/watch?v=S_AAw6m_N5Y&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=18', NULL, NULL, 57),
('Macambira sinal 2', 'https://www.youtube.com/watch?v=1Aus20aSwak&index=34&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 41),
('Malhada dos bois', 'https://www.youtube.com/watch?v=esuCEmDI0jw&index=33&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 42),
('Maruim', 'https://www.youtube.com/watch?v=ywO9miZ5Byk&index=30&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 45),
('Nossa senhora das dores', 'https://www.youtube.com/watch?v=-52zzJK1NJE&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=24', NULL, NULL, 51),
('Nossa senhora de lourdes', 'https://www.youtube.com/watch?v=aZh-CiU06Hs&index=23&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 52),
('Nossa senhora do socorro', 'https://www.youtube.com/watch?v=MWDRRM4fszc&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=22', NULL, NULL, 53),
('Aquidabã', 'https://www.youtube.com/watch?v=TRc9t6oP8PQ&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=74', NULL, NULL, 1),
('Aracaju', 'https://www.youtube.com/watch?v=oNf-TJRDVaw&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=73', NULL, NULL, 2),
('Itaporanga dajuda sinal 2', 'https://www.youtube.com/watch?v=rtQEQpW9Hu4&index=40&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 35),
('Itaporanga dajuda sinal 3', 'https://www.youtube.com/watch?v=0WbPXdKl1uw&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=39', NULL, NULL, 36),
('Japaratuba', 'https://www.youtube.com/watch?v=WpBQtF--tfA&index=38&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 37),
('Lagarto', 'https://www.youtube.com/watch?v=LsBB_zWiq9o&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=37', NULL, NULL, 38),
('Laranjeiras', 'https://www.youtube.com/watch?v=T_mKxgGX-kE&index=36&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 39),
('Pedrinhas', 'https://www.youtube.com/watch?v=b0qjb1S42wA&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=21', NULL, NULL, 54),
('Macambira sinal 1', 'https://www.youtube.com/watch?v=UmGXQa0dBCs&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=35', NULL, NULL, 40),
('Pirambu', 'https://www.youtube.com/watch?v=o3gGt73_Ik8&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=20', NULL, NULL, 55),
('Porto da folha sinal 1', 'https://www.youtube.com/watch?v=YCGxnKvhfMQ&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=17', NULL, NULL, 58),
('Porto da folha sinal 2', 'https://www.youtube.com/watch?v=t5vHDvWf8Tg&index=16&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 59),
('Propriá', 'https://www.youtube.com/watch?v=LRpR1Bj3XnE&index=15&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 60),
('Riachão do dantas', 'https://www.youtube.com/watch?v=JWRkz4rZ3Mc&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=14', NULL, NULL, 61),
('Riachuelo sinal 1', 'https://www.youtube.com/watch?v=0lAjxzkBCm4&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=13', NULL, NULL, 62),
('Riachuelo sinal 2', 'https://www.youtube.com/watch?v=6V7R5bJ7IO0&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=12', NULL, NULL, 63),
('Ribeirópolis', 'https://www.youtube.com/watch?v=rr8R6v7UWCA&index=11&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 64),
('Rosário do catete sinal 1', 'https://www.youtube.com/watch?v=DzIdIYBtc7o&index=10&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 65),
('Rosário do catete sinal 2', 'https://www.youtube.com/watch?v=u3sFzk86URQ&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=9', NULL, NULL, 66),
('Salgado sinal 1', 'https://www.youtube.com/watch?v=hLj1xmybpg8&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=8', NULL, NULL, 67),
('Salgado sinal 2', 'https://www.youtube.com/watch?v=YX1sYsbFbaA&index=7&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 68),
('Santa luzia do itanhy', 'https://www.youtube.com/watch?v=Md8PTdrfaxs&index=6&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 69),
('Santa rosa de lima', 'https://www.youtube.com/watch?v=DGyq4-qwU68&index=5&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 70),
('Santo amaro das brotas sinal 1', 'https://www.youtube.com/watch?v=20obmiecOdQ&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=4', NULL, NULL, 71),
('Santo amaro das brotas sinal 2', 'https://www.youtube.com/watch?v=PnRKIhGtJ0s&index=3&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 72),
('São cristovão sinal 1', 'https://www.youtube.com/watch?v=o9y_I7s0O2k&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=2', NULL, NULL, 73),
('São cristovão sinal 2', 'https://www.youtube.com/watch?v=qDi44UoAQx4&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=1', NULL, NULL, 74),
('São domingos', 'https://www.youtube.com/watch?v=VBc2vhBmJpY&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=81', NULL, NULL, 75),
('São frascisco', 'https://www.youtube.com/watch?v=pEP4uYkGfFQ&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=80', NULL, NULL, 76),
('São miguel do aleixo', 'https://www.youtube.com/watch?v=TH6zs4KDBpM&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=79', NULL, NULL, 77),
('Simão dias', 'https://www.youtube.com/watch?v=cf-DiqSoI5k&index=78&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 78),
('Siriri', 'https://www.youtube.com/watch?v=_h9eYVndSJI&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd&index=77', NULL, NULL, 79),
('Tobias barreto', 'https://www.youtube.com/watch?v=r-FUbGpHkDM&index=76&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 80),
('Umbaúba sinal 1', 'https://www.youtube.com/watch?v=Of1vBwxyI58&index=75&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 81),
('Umbaúba sinal 2', 'https://www.youtube.com/watch?v=xU985ZQT0l0&index=82&list=PL34DsB3FcQ1esdUtYn7vrL6beVS50yJrd', NULL, NULL, 82);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Palavras`
--

CREATE TABLE `Palavras` (
  `id` int(11) NOT NULL,
  `nome` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Palavras`
--

INSERT INTO `Palavras` (`id`, `nome`, `coment`, `categoria`) VALUES
(66, 'Poço Verde', 'Localizado na mesorregião do Agreste Sergipano e microrregião de Tobias Barreto. Está a 145 km de distância da capital. Fundado em 25 de novembro de 1953.\n', 6),
(12, 'América', 'Localizado na Zona Oeste da capital. Encontra-se a Igreja São Judas Tadeu(Capuchinho).\n', 1),
(56, 'Salgado', 'Localizado no Leste Sergipano, na microrregião de Boquim. Está a 54 km de distância da capital. Fundado em 4 de outubro de 1927.\n', 6),
(128, 'São Francisco', 'Localizado na mesorregião do Leste Sergipano e microrregião de Japaratuba. Está a 67 km de distância da capital. Fundado em 17 de junho de 1963.\n', 6),
(85, 'Lagarto ', 'Localizado na mesorregião do Agreste Sergipano e microrregião do Agreste de Lagarto. Está a 75 km de distância da capital. Fundado em 1698. Terceiro município mais populoso de Sergipe.\n', 6),
(80, 'Malhador', 'Localizado na mesorregião do Agreste Sergipano e na microrregião do Agreste de Itabaiana. Está a 49 km de distância da capital. Fundado em 25 de novembro de 1953\n', 6),
(71, 'Nossa Senhora de Lourdes', 'Localizado na mesorregião do Leste Sergipano e microrregião de Propriá. Está a 135 km de distância da capital. Fundado em 13 de maio de 1963.\n', 6),
(69, 'Pedrinhas ', 'Localizado no Leste Sergipano, na microrregião de Boquim. Está a 89 km de distância da capital. Fundado em 25 de novembro de 1953. \n', 6),
(52, 'Santo Amaro das Brotas', 'Localizado na mesorregião do Leste Sergipano e microrregião do Baixo Continguiba. Está a 32 km de distância da capital. Fundado em 1697.\n', 6),
(61, 'Riachuelo', 'Estabelecimento comercial de departamento têxtil e calçados.\n', 6),
(7, 'Atalaia', 'Localizado na Zona Sul da capital. Encontra-se praia de Atalaia.\n', 1),
(8, 'Bugio', 'Localizado na Zona Norte da capital. Encontra-se o Mercado Setorial Do Bugio.\n', 1),
(1, 'Centro', 'Localizado na Zona Central da capital. Encontra-se a Praça Fausto Cardoso.\n', 1),
(11, 'Dezoito do Forte', 'Localizado na Zona Norte. Encontra-se o Quartel 28º BC-Batalhão de Caçadores.\n', 1),
(26, 'Inácio Barbosa', 'Localizado na Zona Sul da capital. Encontra-se o terminal D.I.A.\n', 1),
(10, 'Industrial', 'Localizado na Zona norte da capital. Encontra-se a Orlinha do Bairro Industrial.\n', 1),
(2, 'Japãozinho', 'Localizado na Zona Norte da capital. Encontra-se a Casa comercial de Alimentos Tabajara.\n', 1),
(3, 'Jardim Centenário', 'Localizado na Zona Oeste da capital. Encontra-se a Unidade de Saúde da Família Onésimo Pinto. \n', 1),
(29, 'José Conrado de Araújo', 'Localizado na Zona Oeste da capital. Encontra-se o Parque João Cleofas.\n', 1),
(35, 'Pereira Lobo', 'Localizado na Zona Sul da capital. Encontra-o Posto de combustível Aperipê.\n', 1),
(13, 'Porto Dantas', 'Localizado na Zona Norte da capital. Encontra-se o Parque da Cidade Gov. José Rollemberg leite.\n', 1),
(14, 'Salgado Filho', 'Localizado na Zona Sul da capital. Encontra-se o Centro Médico Luiz Cunha.\n', 1),
(15, 'Santa Maria', 'Localizado na Zona Sul da capital. Encontra-se Complexo Penitenciário Advogado Antonio Jacinto Filho.\n', 1),
(17, 'Santos Dumont', 'Localizado na Zona Norte da capital. Encontra-se o Terminal de Integração Maracaju.\n', 1),
(94, 'Ilha das Flores', 'Localizado na mesorregião do Leste Sergipano e microrregião de Propriá. Fica a 135 km da capital.\n', 6),
(93, 'Indiaroba ', 'Localizado na mesorregião do Leste Sergipano e microrregião de Estância. Fica a 100 km da capital. Fundado em 1846. ', 6),
(121, 'Aracaju ', 'Localizado no Leste sergipano. É a capital do estado, fundada em 17 de março de 1855. E o centro econômico e administrativo do estado, além de oferecer atividades de turismo e lazer. ', 6),
(111, 'Capela ', 'Localizado no Leste Sergipano, na microrregião do Cotinguiba. Está a 67 km de Aracaju. Fundado em 28 de agosto de 1888. É famosa pela sua Festa de São Pedro. ', 6),
(109, 'Carmópolis', 'Localizado no Leste Sergipano, na microrregião‎ do Baixo Cotinguiba, fica a 30,6 km da capital. Foi fundado em 16 de outubro de 1922. É referencia na extração de petróleo.\n', 6),
(106, 'Cedro de São João', 'Localizado no Leste Sergipano, na microrregião de Propriá. Fica a 94 km da capital. Fundado em 4 de Outubro 1928. É o maior produtor de carne-de-sol do Estado.\n', 6),
(97, 'Nossa Senhoga da Glória', NULL, 6),
(87, 'Itaporanga D\'Ajuda', 'Localizado na mesorregião do Leste Sergipano e microrregião de Estância. Está a 29 km de distância da capital. Fundado em 28 de março de 1854.', 6),
(120, 'Areia Branca ', 'Localizado na mesorregião do Agreste Sergipano e na microrregião do Agreste de Itabaiana. Está a 32 km de distância de Aracaju. Teve início em 11 de novembro de 1963. ', 6),
(116, 'Boquim ', 'Localizado no Leste Sergipano, na microrregião de Boquim. Está a 84 km de Aracaju. Fundado em 20 de fevereiro de 1857. É conhecido por ser a \"Terra da Laranja\". ', 6),
(122, 'Aquidabã', 'Localizado no Agreste Sergipano e na microrregião de N.S. das Dores. Está a 98 km de distância de Aracaju. Teve início em 11 de abril de 1872.\n', 6),
(115, 'Campo do Brito', 'Localizado na mesorregião do Agreste Sergipano e na microrregião do Agreste de Itabaiana. Está a 64 km de Aracaju. Fundado em 29 de outubro de 1912. ', 6),
(113, 'Canindé', 'Localizado na mesorregião do Sertão e microrregião do Sertão do São Francisco. Está a 213 km da capital. Emancipado em 25 de novembro de 1953, é famoso pelos cânions do Rio São Francisco.\n', 6),
(100, 'Frei Paulo', 'Localizado na mesorregião do Sertão e microrregião de Carira. Está a 76 km da capital. Fundado em 23 de outubro de 1890.\n', 6),
(86, 'Japaratuba ', 'Localizado na mesorregião do Leste Sergipano e microrregião de Japaratuba. Está a 54 km de distância da capital. Fundado em 11 de junho de 1859. ', 6),
(189, 'Americanas', 'Estabelecimento comercial de produtos de casa e pessoal variados.\n', 5),
(127, 'São Miguel do Aleixo', 'Localizado na mesorregião do Agreste Sergipano e microrregião de Nossa Senhora das Dores. Está a 67 km de distância da capital. Fundado em 1963.\n', 6),
(53, 'Santa Rosa de Lima', 'Localizado na mesorregião do Leste Sergipano e microrregião do Continguiba. Está a 36 km de distância da capital. Fundado em 1953.\n', 6),
(129, 'Simão Dias', 'Localizado na Região Intermediária de Itabaiana e Região Imediata de Lagarto. Está a 100 km de distância da capital. Fundado em 12 de junho de 1890. Nesse município fica a \"Toca da Raposa\", a maior caverna do estado.\n', 6),
(123, 'Umbaúba', 'Localizado na mesorregião do Leste Sergipano e microrregião de Boquim. Está a 109 km de distância da capital. Fundado em 6 de fevereiro de 1954, é um grande produtor de laranja do estado.\n', 6),
(135, 'Bolo de Milho', 'Bolo doce cuja massa é de milho e coco ralados, água, óleo e farinha de trigo.\n', 2),
(83, 'Macambira', 'Localizado na mesorregião do Agreste Sergipano e na microrregião do Agreste de Itabaiana. Está a 58 km de distância da capital. Fundado em 25 de novembro de 1953.\n', 6),
(142, 'Cuscuz', 'Alimento feito à base de farinha  de milho. Cozido ao vapor. \n', 2),
(136, 'Bucho', 'É o estômago do boi, ingrediente de base da dobradinha\n', 2),
(138, 'Caranguejo', 'Pescado no mangue, é cozido com água, sal, limão e temperos.\n', 2),
(167, 'Faculdade Amadeus - FAMA', 'Instituição de ensino superior privada\n', 4),
(132, 'Arroz Doce', 'Arroz cozido em leite e açúcar, temperado com casca de limão, canela.\n', 2),
(131, 'Amendoim', 'É uma vagem e no  modo cozido do  na água, sal e limão se tornou Patrimônio Imaterial de Sergipe no ano de 2013.\n', 2),
(133, 'Bolo de Arroz', 'Bolo doce cuja massa é composta em sua maioria de farrinha de arroz cozido em leite.\n', 2),
(168, 'Faculdade de Administração e Negócios de Sergipe - FANESE', 'Instituição de ensino superior privada\n', 4),
(161, 'Faculdade Estácio de Sergipe - FaSe', 'Instituição de ensino superior privada\n', 4),
(162, 'Faculdade Jardins', 'Instituição de ensino superior privada\n', 4),
(165, 'Faculdade Pio X', 'Instituição de ensino superior privada\n', 4),
(169, 'Instituto Federal de Sergipe - IFS', 'Instituição de ensino básico, técnico e superior pública\n', 4),
(173, 'Universidade Tiradentes - UNIT', 'Instituição de ensino superior privada\n', 4),
(179, 'Emanuelle', 'Estabelecimento comercial de departamento têxtil e calçados.\n', 5),
(181, 'Imperador', 'Estabelecimento comercial de produtos de casa e pessoal variados.\n', 5),
(177, 'Login', 'Estabelecimento comercial de produtos tecnológicos.\n', 5),
(187, 'Riachuelo', 'Estabelecimento comercial de departamento têxtil e calçados.\n', 5),
(143, 'Dobradinha', 'Alimento feito com  bucho de boi  e feijão branco com  condimentos variados.\n', 2),
(146, 'Inhame', 'Tubérculo da mesma famílias das batatas. Cozida na água.\n', 2),
(149, 'Milho cozido', 'Cozido na água e sal. Comido em especial nas festas juninas.\n', 2),
(153, 'Munguzá', 'Alimento adocicado a base de milho branco ou amarelo levemente triturados e cozido no leite.\n', 2),
(156, 'Sururu', 'Molusco cozido e feito em forma de caldo com leite de coco.\n', 2),
(160, 'Tripa de Porco', 'Intestino de porco que pode ser comido cozido ou assado.\n', 2),
(18, 'Cidade Nova', 'Localizado na Zona Norte da capital. Encontra-se o Hospital Universitário.\n', 1),
(19, 'Cirurgia', 'Localizado na Zona Central da capital. Encontra-se o Hospital Cirurgia.\n', 1),
(20, 'Coroa do Meio', 'Localizado na Zona Sul da capital. Encontra-se o Shopping Riomar.\n', 1),
(38, 'Dezessete de Março', 'Localizado na Zona Sul da capital. Encontra-se a Unidade De Qualificação Profissional 17 de Março.\n', 1),
(23, 'Farolândia', 'Localizado na Zona Sul da capital. Encontra-se o segundo Campus da Universidade Tiradentes\n', 1),
(24, 'Getúlio Vargas', 'Localizado na Zona Central da capital. Encontra-se a Central de Abastecimento de Sergipe, CEASA\n', 1),
(30, 'Jardins', 'Localizado na Zona Sul da capital. Encontra-se o Shopping Jardins.\n', 1),
(43, 'BB - Banco do Brasil S.A.', 'Instituição financeira federal\n', 3),
(31, 'Lamarão', 'Localizado na Zona Norte da capital. Encontra-se a Igreja Nossa Senhora das Graças.\n', 1),
(32, 'Mosqueiro', 'Localizado na Zona Sul da capital. Encontra-se a Orlinha Pôr do Sol.\n', 1),
(33, 'Novo Paraíso', 'Localizado na Zona Oeste da capital. Encontra-se o Hotel Nobile Express Aracaju.\n', 1),
(36, 'Ponto Novo', 'Localizado na Zona Sul da capital. Encontra-se o Cemitério São João Batista.\n', 1),
(34, 'São Conrado', 'Localizado na Zona Sul da capital. Encontra-se a Madeireira Padre Cícero.\n', 1),
(39, 'São José', 'Localizado na Zona Sul da capital. Encontra-se o Teatro Ateneu.\n', 1),
(40, 'Siqueira Campos', 'Localizado na Zona Oeste da capital. Encontra-se a Praça Dom José Thomaz.\n', 1),
(44, 'BMG - Banco do Estado de Minas Gerais S.A.', 'Instituição financeira estadual\n', 3),
(45, 'BNB - Banco do Nordeste do Brasil S.A.', 'Instituição financeira estadual\n', 3),
(183, 'Jurandir Pires', '', 5),
(46, 'CEF - Caixa Econômica Federal', 'Instituição financeira federal\n', 3),
(47, 'HSBC - Hong Kong and Shanghal Banking Corporation', 'Instituição financeira privada\n', 3),
(48, 'Itaú Unibanco', 'Instituição financeira privada\n', 3),
(77, 'Moita Bonita', 'Localizado na mesorregião do Agreste Sergipano e na microrregião do Agreste de Itabaiana. Está a 64 km de distância da capital. Fundado em 12 de março de 1963.\n', 6),
(75, 'Neópolis', 'Localizado na mesorregião do Leste Sergipano e microrregião de Propriá. Está a 121 km de distância da capital. Fundado em 18 de outubro de 1679.\n', 6),
(72, 'Nossa Senhora das Dores', 'Localizado na mesorregião do Médio Sertão Sergipano e microrregião de Nossa Senhora das Dores. Está a 72 km de distância da capital. Fundado em 11 de junho de 1859. \n', 6),
(67, 'Poço Redondo', 'Localizado na mesorregião do Sertão e microrregião do Sertão do São Francisco. Está a 174 km de distância da capital. Fundado em 23 de novembro de 1953.\n', 6),
(65, 'Porto da Folha', 'Localizado na mesorregião do Sertão e microrregião do Sertão do São Francisco. Está a 190 km de distância da capital. Fundado em 19 de fevereiro de 1835.\n', 6),
(63, 'Propriá', 'Localizado na mesorregião do Leste Sergipano e microrregião de Propriá. Está a 98 km de distância da capital. Fundado em 7 de fevereiro de 1802. Conhecido pelo doce de batata, considerado o melhor do estado de Sergipe \n', 6),
(62, 'Riachão do Dantas', 'Localizado na mesorregião do Agreste Sergipano e microrregião do Agreste de Lagarto. Está a 99 km de distância da capital. Fundado em 9 de maio de 1870. \n', 6),
(59, 'Ribeirópolis', 'Localizado na mesorregião do Sertão e microrregião de Carira. Está a 75 km de distância da capital. Fundado em 18 de dezembro de 1933.\n', 6),
(58, 'Rosário do Catete', 'Localizado na mesorregião do Leste Sergipano e microrregião do Baixo Continguiba. Está a 37 km de distância da capital. Fundado em 1836.\n', 6),
(54, 'Santa Luzia do Itanhy', 'Localizado na mesorregião do Leste Sergipano e microrregião de Estância. Está a 86 km de distância da capital. Fundado em 16 de fevereiro. É a povoação mais antiga de Sergipe.\n', 6),
(244, 'Atacadão', 'Estabelecimento comercial de autosserviço no varejo e no atacado\n', 8),
(81, 'Malhada dos Bois', 'Localizado na mesorregião do Agreste Sergipano e microrregião de Nossa Senhora das Dores. Está a 64 km de distância da capital. Fundado em 1953.\n', 6),
(248, 'Bompreço', 'Estabelecimento comercial de autosserviço no varejo \n', 8),
(249, 'Extra', 'Estabelecimento comercial de autosserviço no varejo \n', 8),
(250, 'GBarbosa', 'Estabelecimento comercial de autosserviço no varejo \n', 8),
(246, 'Makro', 'Estabelecimento comercial de autosserviço no varejo e no atacado\n', 8),
(247, 'Pão de Açúcar', 'Estabelecimento comercial de autosserviço no varejo \n', 8),
(254, 'Todo Dia', 'Estabelecimento comercial de autosserviço no varejo \n', 8),
(205, 'Mercado', '', 7),
(230, 'Rua 24 horas', '', 7),
(190, 'Calçadão da Treze de Julho', '', 7),
(193, 'Calçadão Praia Formosa', '', 7),
(194, 'Centro de Arte e Cultura de Sergipe', '', 7),
(195, 'Centro Histórico de Aracaju', '', 7),
(102, 'Estância', 'Localizado na mesorregião do Leste Sergipano e microrregião de Estância. Está a 66 km da capital. Fundado em 25 de outubro de 1831. Conhecida como \"Cidade Jardim\". \n', 6),
(197, 'Cidade Histórica Laranjeiras', '', 7),
(198, 'Cidade Histórica São Cristóvão', '', 7),
(199, 'Colina do Santo Antônio', '', 7),
(200, 'Croa do Goré', '', 7),
(201, 'Espaço Zé Peixe', '', 7),
(202, 'Farol da Farolândia', '', 7),
(95, 'Graccho Cardoso', 'Localizado na mesorregião do Sertão e microrregião do Sertão do São Francisco. Fica a 77 km da capital. Fundado em 1955.\n', 6),
(208, 'Mirante da Treze de Julho', '', 7),
(209, 'Museo Olmpio Campos ', '', 7),
(212, 'Orla de Atalaia', '', 7),
(103, 'Divina Pastora ', 'Localizado na mesorregião do Leste Sergipano e microrregião de Continguiba. Está a 34 km de distância da capital. Fundado em 15 de dezembro de 1938. ', 6),
(101, 'Feira Nova ', 'Localizado na mesorregião do Sertão e microrregião do Sertão do São Francisco. Está a 104 km da capital. Fundado em 18 de outubro de 1963. ', 6),
(213, 'Orla Pôr do Sol', '', 7),
(214, 'Orlinha do Bairro Industrial', '', 7),
(217, 'Passarela do Caranguejo', '', 7),
(218, 'Ponte do Imperado', '', 7),
(221, 'Praia da Coroa do Meio', '', 7),
(222, 'Praia da Costa', '', 7),
(223, 'Praia de Atalaia', '', 7),
(224, 'Praia de Pirambu', '', 7),
(225, 'Praia do Abais', '', 7),
(226, 'Praia do Farol', '', 7),
(98, 'General Maynard ', 'Localizado na mesorregião do Leste Sergipano e microrregião do Baixo Continguiba. Fica a 45 km da capital. Fundado em 21 de novembro de 1963. É o menor município do estado. ', 6),
(227, 'Praia do Mosqueiro', '', 7),
(232, 'Shopping Jardins', '', 7),
(233, 'Shopping Prêmio', '', 7),
(234, 'Shopping Riomar', '', 7),
(235, 'Teatro Atheneu', '', 7),
(236, 'Teatro Tiradentes', '', 7),
(237, 'Teatro Tobias Barreto', '', 7),
(241, 'Zoológico', '', 7),
(203, 'Fazenda Boa Luz', '', 7),
(206, 'Mini Zoológico', '', 7),
(210, 'Oceanário', '', 7),
(219, 'Praça olímpio campos', '', 7),
(228, 'Projeto Tamar', '', 7),
(238, 'Xingó', '', 7),
(215, 'Parque da Sementeira', '', 7),
(110, 'Carira ', '‎Localizado na mesorregião do Sertão e microrregião de Carira. Fica a 112 km da capital. Foi fundado em 23 de novembro de 1953. ', 6),
(104, 'Cristinápolis', 'Localizado na mesorregião do Leste Sergipano e microrregião de Boquim,na região do Vale do Rio Real. Está a 115 km de distância da capital. Fundado em 24 de abril de 1882.\n', 6),
(92, 'Itabaiana ', 'Localizado na mesorregião do Agreste Sergipano e na microrregião do Agreste de Itabaiana. Fica a 54 km da capital. Fundado em 1675. É conhecida como a \"Capital dos Caminhões”. ', 6),
(90, 'Itabi ', 'Localizado na mesorregião do Sertão Sergipano e microrregião do Sertão do São Francisco. Está a 138 km de distância da capital. Fundado em 25 de novembro de 1953. ', 6),
(70, 'Nossa Senhora do Socorro', 'Localizado na mesorregião do Leste Sergipano e microrregião de Aracaju. Está a 8 km de distância da capital. Fundado em 1864. É o segundo município mais populoso do estado.\n', 6),
(49, 'São Cristóvão', 'Localizado na mesorregião do Leste Sergipano e microrregião de Aracaju. Está a 26 km de distância da capital. Fundado em 1º de janeiro de 1590.  É a quarta cidade mais antiga do país e foi a primeira capital de Sergipe.\n', 6),
(84, 'Laranjeiras ', 'Localizado na mesorregião do Leste Sergipano e microrregião do Baixo Continguiba. Está a 19 km de distância da capital. Fundado em 7 de agosto de 1832. É o berço da cultura, educação, política e economia do estado. \n', 6),
(78, 'Maruim ', 'Localizado na mesorregião do Leste Sergipano e microrregião do Baixo Continguiba. Está a 30 km de distância da capital. Fundado em 5 de maio de 1854.\n', 6),
(73, 'Nossa Senhora Aparecida ', 'Localizado na mesorregião do Sertão e microrregião de Carira. Está a 99 km de distância da capital. Fundado em 26 de novembro de 1963.\n', 6),
(68, 'Pirambu ', 'Localizado na mesorregião do Leste Sergipano e microrregião de Japaratuba. Está a 30 km de distância da capital. Fundado em 26 de novembro de 1963. \n', 6),
(125, 'Siriri ', 'Localizado na mesorregião do Leste Sergipano e microrregião do Continguiba. Está a 34 km de distância da capital. Fundado em 26 de março de 1874.\n', 6),
(124, 'Tobias Barreto ', 'Localizado na mesorregião do Agreste Sergipano e microrregião de Tobias Barreto. Está a 105 km de distância da capital. Fundado em 17 de janeiro de 1599. Sua atividade comercial e a maior da região.\n', 6),
(134, 'Bolo de Macaxeira', 'Bolo doce cuja massa é composta macaxeira crua e ralada, leite de coco, açúcar, ovos, farinha de trigo e fermento \n', 2),
(137, 'Caldinho', 'Consiste num caldo, que funciona como um molho  e pode ser preparado com peixe, com frango e carnes.\n', 2),
(140, 'Carne do Sol', 'Carne bovina salgada e parcialmente seca. \n', 2),
(141, 'Charque', 'Carne bovina cortada em mantas, salgada e seca ao sol, com o objetivo de mantê-la própria ao consumo por mais tempo.  \n', 2),
(163, 'Faculdade Mauricio de Nassau', 'Instituição de ensino superior privada\n', 4),
(166, 'Faculdade Sao Luis de Franca', 'Instituição de ensino superior privada\n', 4),
(171, 'Universidade Federal de Sergipe - UFS', 'Instituição de ensino superior superior\n', 4),
(178, 'C&A', 'Estabelecimento comercial de departamento têxtil e calçados.\n', 5),
(174, 'Centauro', 'Estabelecimento comercial de produtos esportivos\n', 5),
(180, 'Huteba', 'Estabelecimento comercial de produtos de casa e pessoal variados.\n', 5),
(176, 'Le Biscuit', 'Estabelecimento comercial de produtos de casa e pessoal variados.\n', 5),
(184, 'Marisa', 'Estabelecimento comercial de departamento têxtil e calçados.\n', 5),
(186, 'Renner', 'Estabelecimento comercial de departamento têxtil e calçados.\n', 5),
(191, 'Calçadão da João Pessoa', 'Localizado no Centro Histórico de Aracaju, via reservada para pedestres em compras. Nela encontra-se lojas variadas.', 7),
(145, 'Escondidinho', 'Alimento feito com macaxeira em creme e com carne de sol.\n', 2),
(147, 'Macaxeira', 'Tubérculo utilizado na produção de farinha, tapioca, polvilho, além de ser cozido na água e sal, frito ou em creme.\n', 2),
(148, 'Milho Assado', 'Assado diretamente na fogueira. Comido em especial nas festas juninas.\n', 2),
(150, 'Mingau de Puba', 'Extraída da mandioca. Em forma de polvilho é cozido ao leite e açúcar.\n', 2),
(154, 'Pamonha', 'Alimento  cozido a base de  milho verde  ralado misturado ao leite de coco, sal, açúcar, manteiga, canela e cravo embrulhado na própria palha  do milho. \n', 2),
(155, 'Quiabada', 'Alimento feito a base de quiabo, carne bovina, camarão seco e coentro.\n', 2),
(157, 'Tapioca', 'Fécula extraída da mandioca em modo granulado. Pode ser servida com recheios doces ou salgados.  \n', 2),
(151, 'Mocotó ', 'Patas cozidas do animal adicionado de pedaços de linguiça, feijão branco, ovos cozidos e temperos.\n', 2),
(42, 'Aeroporto', 'Localizado na Zona Sul da capital. Encontra-se o Aeroporto Internacional Santa Maria.\n', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Pontos`
--

CREATE TABLE `Pontos` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `foto` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Pontos`
--

INSERT INTO `Pontos` (`nome`, `link`, `foto`, `coment`, `id`) VALUES
('Praça olímpio campos sinal 2', 'https://www.youtube.com/watch?v=5NbgSjSLOjA&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=20', NULL, NULL, 31),
('Praia da coroa do meio', 'https://www.youtube.com/watch?v=EDgAWrt7vL4&index=19&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 32),
('Praia da costa', 'https://www.youtube.com/watch?v=WKs-nvF2HHo&index=18&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 33),
('Praia de atalaia', 'https://www.youtube.com/watch?v=BZPoW-RofC8&index=17&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 34),
('Praia de pirambu', 'https://www.youtube.com/watch?v=BJsKicWLQbY&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=16', NULL, NULL, 35),
('Praia do abais', 'https://www.youtube.com/watch?v=MYLqI7-0KSI&index=15&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 36),
('Praia do farol', 'https://www.youtube.com/watch?v=K8WUH-VrgOc&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=14', NULL, NULL, 37),
('Praia do mosqueiro', 'https://www.youtube.com/watch?v=2Qw4ltgmO-Y&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=13', NULL, NULL, 38),
('sdfasdf', 'fasdf', 'fotos/Pontos/sdfasdf.png', 'dsfasdf', 42),
('Teatro tobias barreto', 'https://www.youtube.com/watch?v=U4lxumMr6bI&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=4', NULL, NULL, 48),
('Xingó sinal 1', 'https://www.youtube.com/watch?v=1u_bAjAy8jg&index=3&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 49),
('Xingó sinal 2', 'https://www.youtube.com/watch?v=5JNVPe6g7tw&index=2&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 50),
('Zoo Industrial', 'INnEBaiCiGg', 'fotos/Pontos/Zoo Industrial.png', 'Zoo Industrial', 51),
('Zoológico bairro industrial', 'https://www.youtube.com/watch?v=INnEBaiCiGg&index=1&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 52),
('Cidade historica são cristóvão', 'https://www.youtube.com/watch?v=Q0ezg4S7whE&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=43', NULL, NULL, 9),
('Calçadão da joão pessoa sinal 1', 'https://www.youtube.com/watch?v=Mc2H-Wp6nUo&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=50', NULL, NULL, 2),
('Calçadão da joão pessoa sinal 2', 'https://www.youtube.com/watch?v=OP4S19dVtTw&index=49&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 3),
('Calçadão praia formosa', 'https://www.youtube.com/watch?v=0CFsP_bOrAU&index=48&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 4),
('Centro de arte e cultura de sergipe', 'https://www.youtube.com/watch?v=7TnooC8xuCA&index=47&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 5),
('Centro historico de aracaju', 'https://www.youtube.com/watch?v=V62Xwt0ikGI&index=46&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 6),
('Centro turistico rua 24 horas', 'https://www.youtube.com/watch?v=DKVVV9-HhyE&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=45', NULL, NULL, 7),
('Cidade historica laranjeiras', 'https://www.youtube.com/watch?v=d5KGAWSS1vk&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=44', NULL, NULL, 8),
('Colina do santo antônio', 'https://www.youtube.com/watch?v=vys4uwZm-OQ&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=42', NULL, NULL, 10),
('Croa do goré', 'https://www.youtube.com/watch?v=Ix1OodiRBXo&index=41&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 11),
('Espaço zé peixe', 'https://www.youtube.com/watch?v=rAykz_zlB6Q&index=40&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 12),
('Farol farolândia', 'https://www.youtube.com/watch?v=eJYKSNSa0GQ&index=39&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 13),
('Fazenda boa luz sinal 1', 'https://www.youtube.com/watch?v=_mq3avLdvN0&index=38&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 14),
('Fazenda boa luz sinal 2', 'https://www.youtube.com/watch?v=EnwiwHN4Qcc&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=37', NULL, NULL, 15),
('Mercado', 'https://www.youtube.com/watch?v=GgrGwtWJppY&index=36&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 16),
('Mini zoológico sinal 1', 'https://www.youtube.com/watch?v=sMYNFGVk8nU&index=35&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 17),
('Mini zoológico sinal 2', 'https://www.youtube.com/watch?v=PHdJd6lYes8&index=34&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 18),
('Mirante da 13 de julho', 'https://www.youtube.com/watch?v=5Vq8wr_5XEk&index=33&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 19),
('Museo da gente sergipana', 'https://www.youtube.com/watch?v=8GjdLmaMsc0&index=32&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 20),
('Oceanário sinal 1', 'https://www.youtube.com/watch?v=82H3cwwT9Co&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=31', NULL, NULL, 21),
('Oceanário sinal 2', 'https://www.youtube.com/watch?v=pztxv6UuEns&index=30&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 22),
('Orla de atalaia', 'https://www.youtube.com/watch?v=Nu-1znvnzP4&index=29&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 23),
('Orla pôr do sol', 'https://www.youtube.com/watch?v=vur5R2F2mVA&index=28&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 24),
('Orlinha do bairro industrial', 'https://www.youtube.com/watch?v=GBFk5iXVXDo&index=27&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 25),
('Parque da sementeira sinal 1', 'https://www.youtube.com/watch?v=ZaT9mQSRcDs&index=26&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 26),
('Parque da sementeira sinal 2', 'https://www.youtube.com/watch?v=Alp5Vgmx4dg&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=25', NULL, NULL, 27),
('Passarela do caranguejo', 'https://www.youtube.com/watch?v=ykYQV8hr9p0&index=24&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 28),
('Ponte do imperador', 'https://www.youtube.com/watch?v=mqPPFvQb9os&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=23', NULL, NULL, 29),
('Praça olímpio campos sinal 1', 'https://www.youtube.com/watch?v=4uRTMwsH5lw&index=21&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 30),
('Projeto tamar sinal 1', 'https://www.youtube.com/watch?v=w6kKsRrIwzE&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=12', NULL, NULL, 39),
('Projeto tamar sinal 2', 'https://www.youtube.com/watch?v=LR-E57f7Un8&index=11&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 40),
('Rua 24 horas', 'https://www.youtube.com/watch?v=fSkktyp6U3E&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv&index=10', NULL, NULL, 41),
('Shopping jardins', 'https://www.youtube.com/watch?v=TXuIb032g-4&index=9&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 43),
('Shopping prêmio', 'https://www.youtube.com/watch?v=k4m2H_XQNmQ&index=8&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 44),
('Shopping riomar aracaju', 'https://www.youtube.com/watch?v=k-TGQxrYxZY&index=7&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 45),
('Teatro atheneu', 'https://www.youtube.com/watch?v=7y_GgbsWkCs&index=6&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 46),
('Teatro tiradentes', 'https://www.youtube.com/watch?v=q07QmrIAM0I&index=5&list=PL34DsB3FcQ1c1dKAu5fmJ51n0R0bxNvPv', NULL, NULL, 47),
('Calçadão da 13 de julho', 'https://www.youtube.com/watch?v=tLTssJzeX0g', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Supermercados`
--

CREATE TABLE `Supermercados` (
  `nome` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `local` longtext COLLATE utf8_unicode_ci,
  `coment` longtext COLLATE utf8_unicode_ci,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `Supermercados`
--

INSERT INTO `Supermercados` (`nome`, `link`, `local`, `coment`, `id`) VALUES
('Atacadão sinal 1', '3g_d7evvOzg', 'fotos/Supermercados/Atacadão sinal 1.png', 'Supermercados', 6),
('Atacadão sinal 1', '3g_d7evvOzg', 'fotos/Supermercados/Atacadão sinal 1.png', 'Supermercados', 6),
('Atacadão sinal 1', '3g_d7evvOzg', 'fotos/Supermercados/Atacadão sinal 1.png', 'Supermercados', 6),
('Atacadão sinal 2', 'W2IGkuyU28w', 'fotos/Supermercados/Atacadão sinal 2.png', 'supermercados', 7),
('Supermercado Bompreço', 'aWaMtM9OLRk', 'fotos/Supermercados/Supermercado Bompreço.png', 'Supermercados', 9),
('Supermercado Extra', 'HHRRamFjNaM', 'fotos/Supermercados/Supermercado Extra.png', 'Supermercados', 10),
('Supermercado GBarbosa', 'omUgj4g7qEA', 'fotos/Supermercados/Supermercado GBarbosa.png', 'Supermercados', 11),
('Supermercado Makro', 'yvVJeSvihWc', 'fotos/Supermercados/Supermercado Makro.png', 'Supermercados', 12),
('Supermercado Pao de Açucar', '5dLDUkmDCaw', 'fotos/Supermercados/Supermercado Pao de Açucar.png', 'Supermercados', 13),
('Supermercado TodoDia', 'F99W4v7LcqU', 'fotos/Supermercados/Supermercado TodoDia.png', 'Supermercados', 14),
('Makro', 'yvVJeSvihWc', '', '', 15),
('Pão de Açúcar', '5dLDUkmDCaw', '', '', 16),
('Todo Dia', 'F99W4v7LcqU', '', '', 17);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Palavras`
--
ALTER TABLE `Palavras`
  ADD KEY `ix_tmp_autoinc` (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Palavras`
--
ALTER TABLE `Palavras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
