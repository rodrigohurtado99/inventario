-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/03/2025 às 20:44
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `inventario-celulares`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `manutencao`
--

CREATE TABLE `manutencao` (
  `id` int(11) DEFAULT NULL,
  `num` int(20) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `data` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `manutencao`
--

INSERT INTO `manutencao` (`id`, `num`, `usuario`, `data`, `tipo`, `descricao`) VALUES
(15, 395, 'BKP TI - PABLO GENRICH ARROYO', '23-08-2024', 'interna', 'Feito a troca película do aparelho'),
(207, 399, 'ALMOXARIFADO GALPÃO 2 (REPORTE)', '23-08-2024', 'interna', 'Aparelho tinha sido feito a troca da tela por conta de problemas no TOUCH SCREEN, voltou a apresenta o mesmo problema, feito a formatação e testes aparentemente o problema resolveu, será acompanhado nos próximos dias'),
(210, 400, 'BKP - FABRICIO BROCKVELD', '26-08-2024', 'interna', 'Aparelho do Fabricio estava cheio o armazenamento, foi feito a substituição por um SAMSUNG A34'),
(211, 402, 'BKP - JEFERSON LUIZ DIAS', '26-08-2024', 'interna', 'Aparelho do Jeferson foi substituído por que o mesmo apresentou problemas no display, feito a troca do display mas o erro ainda persiste.'),
(212, 403, 'BKP - ALMOXARIFADO (LIBERAÇÃO)', '26-08-2024', 'interna', 'Aparelho possui problema no display, as vezes o TOUCH SCREEN não responde'),
(213, 404, 'BKP - JOSE CLERICE (EXPEDIÇÃO)', '26-08-2024', 'interna', 'Celular estava descarregando a bateria muito rápido, José recebeu um novo celular.'),
(213, 405, 'BKP - JOSE CLERICE (EXPEDIÇÃO)', '26-08-2024', 'interna', 'Feito a troca da bateria, a tela está quebrada, aguardara futuramente para fazer a troca'),
(103, 407, 'BKP TI', '27-08-2024', 'interna', 'Tablet não estava sendo utilizado, então foi transferido pro T.I, foi de EMBALAGEM COSMO (30900) para BKP TI (40500)'),
(207, 408, 'ALMOXARIFADO GALPÃO 2 (REPORTE)', '28-08-2024', 'interna', 'Aparelho voltou a dar o problema novamente no TOUCH SCREEN, ficará no T.I aguardando reparos'),
(207, 409, 'ALMOXARIFADO GALPÃO 2 (REPORTE)', '24-06-2024', 'interna', 'Feito a troca da tela do aparelho, que o mesmo estava com a tela danificada'),
(207, 410, 'BKP TI - ALMOXARIFADO GALPÃO 2 (REPORTE)', '28-08-2024', 'interna', 'Celular foi transferido de ALMOXARIFADO GALPÃO 2 (REPORTE) (60200) para BKP TI - ALMOXARIFADO GALPÃO 2 (REPORTE) \r\n (40500)'),
(88, 411, 'BKP TI', '28-08-2024', 'interna', 'Celular está com problema no display, está no T.I aguardando ser trocado display\r\n'),
(208, 412, 'BKP TI - LETICIA LYRA', '30-08-2024', 'interna', 'Celular foi transferido de BKP TI - LETICIA LYRA (80300) para SEPARAÇÃO DE PEÇAS - 01 (60200)'),
(65, 415, 'JEFERSON SANNI PEREIRA', '05-09-2024', 'interna', 'Celular foi transferido de SOLDA-02 CEL-21 (30000) para JEFERSON SANNI PEREIRA (50200)'),
(224, 416, 'SOLDA-02 CEL-21', '05-09-2024', 'interna', 'Celular foi transferido de JEFERSON SANNI PEREIRA (50200) para SOLDA-02 CEL-21 (30000), celular possui um problema no conector, o qual atrapalhava na hora de scannearem o código de barras'),
(71, 418, 'GT - 250MA CNC-17', '09-09-2024', 'interna', 'Celular apresentou um problema no display, ficará no T.I aguardando reparo.'),
(71, 419, 'BKP TI - GT - 250MA CNC-17', '09-09-2024', 'interna', 'Celular foi transferido de GT - 250MA CNC-17 (30000) para BKP TI - GT - 250MA CNC-17 (40500)'),
(103, 420, 'BKP TI - EMBALAGEM COSMO', '09-09-2024', 'interna', 'Celular foi transferido de BKP TI - EMBALAGEM COSMO (40500) para GT - 250MA CNC-17 (30000)'),
(29, 422, 'RICARDO VARGAS', '11-09-2024', 'interna', 'Celular foi transferido da Jessica da dalenshop, para Ricardo Vargas'),
(225, 425, 'BKP - GUSTAVO PAULO FEIX', '11-09-2024', 'interna', 'Tablet foi transferido de GUSTAVO PAULO FEIX (50200) para BKP - GUSTAVO PAULO FEIX (50200), Gustavo foi desligado do quadro de funcionários da Skymsen'),
(227, 428, 'BKP TI - ITALLO (REUNIÕES)', '11-09-2024', 'interna', 'Celular foi transferido de BKP - ITALLO (REUNIÕES) (30200) para SOLDA-03 (LADO B) (30000)'),
(209, 429, 'BKP TI - DALEN SHOP', '10-07-2024', 'interna', 'Aparelho tinha sido quebrado o display, feito a troca da tela do display do mesmo.'),
(209, 430, 'ALIMENTADORES USINAGEM - 01', '12-09-2024', 'interna', 'Celular foi transferido de BKP TI - DALEN SHOP (40500) para ALIMENTADORES USINAGEM - 01 (30000), celular será utilizado para alimentação de peças na usinagem.'),
(207, 431, 'BKP TI - ALMOXARIFADO GALPÃO 2 (REPORTE)', '12-09-2024', 'interna', 'Celular foi transferido de BKP TI - ALMOXARIFADO GALPÃO 2 (REPORTE) (40500) para ALIMENTADORES USINAGEM - 02 (30000), celular será utilizado para os alimentadores de peças da usinagem.'),
(210, 432, 'JESSICA VILL BRETZKE', '13-09-2024', 'interna', 'Celular foi transferido de BKP TI - FABRICIO BROCKVELD (50300) para JESSICA VILL BRETZKE (51200)'),
(32, 433, 'BKP TI - JESSICA VILL BRETZKE', '13-09-2024', 'interna', 'Celular foi transferido de JESSICA VILL BRETZKE (51200) para BKP TI - JESSICA VILL BRETZKE (40500)'),
(15, 435, 'LUIZ CARLOS BERNARDINO', '18-09-2024', 'interna', 'Celular foi transferido de BKP TI - PABLO GENRICH ARROYO (50700) para LUIZ CARLOS BERNARDINO (50700). '),
(15, 436, 'LUIZ CARLOS BERNARDINO', '18-09-2024', 'interna', 'Troca do chip do aparelho, número antigo era o (47) 99115-8949.'),
(12, 437, 'BKP - LUIZ CARLOS BERNARDINO', '18-09-2024', 'interna', 'Celular foi FURTADO, está sendo a averiguação do caso e o possível retorno do aparelho.'),
(228, 438, 'CHEFIAS PRODUÇÃO', '18-09-2024', 'interna', 'Feito a troca da película do aparelho.'),
(229, 439, 'ALIMENTADORES USINAGEM - 03', '18-09-2024', 'interna', 'Feito a troca da película do aparelho.'),
(36, 440, 'GABRIEL DE ASSIS MONTEIRO LIMA', '23-08-2024', 'interna', 'Feito a troca da película do aparelho e colocado uma nova capa.'),
(21, 447, 'WENNEDY DA SILVA MONTEIRO', '30-10-2024', 'interna', 'Entrou óleo no display do aparelho, foi feito a solicitação de um display novo para ser efetuado a respectiva troca.'),
(219, 448, 'SEPARAÇÃO DE PEÇAS - 02 (ALMOXARIFADO)', '01-11-2024', 'interna', 'Aparelho sofreu uma queda, o qual danificou parte do display, realizado uma solicitação de compra da tela.'),
(230, 449, 'JABSON DO ROSARIO DA PAZ', '01-11-2024', 'interna', 'Feito troca da película e da capa do aparelho.'),
(210, 451, 'JESSICA VILL BRETZKE', '01-11-2024', 'interna', 'Feito a atualização do software do aparelho.'),
(212, 452, 'BKP - ALMOXARIFADO (LIBERAÇÃO)', '04-11-2024', 'interna', 'Tela do aparelho foi trincada, solicitado um novo display pro aparelho.'),
(219, 453, 'SEPARAÇÃO DE PEÇAS - 02 (ALMOXARIFADO)', '05-11-2024', 'interna', 'Feito a troca do display do aparelho, feito testes funcionando corretamente.'),
(21, 454, 'WENNEDY DA SILVA MONTEIRO', '05-11-2024', 'interna', 'Feito a troca do display do aparelho, aparentemente funcionando corretamente.'),
(234, 455, 'SEPARAÇÃO DE PEÇAS - 07', '06-11-2024', 'interna', 'Tela descolou, feito a colação dela novamente.'),
(211, 456, 'SEPARAÇÃO DE PEÇAS - 08 (ALMOXARIFADO)', '07-11-2024', 'interna', 'Celular era utilizado por JEFERSON DIAS setor de compras, foi transferido para o setor do almoxarifado para ser utilizado como separação de peças'),
(211, 457, 'SEPARAÇÃO DE PEÇAS - 08 (ALMOXARIFADO)', '07-11-2024', 'interna', 'Feito a troca do display do aparelho.'),
(219, 458, 'SEPARAÇÃO DE PEÇAS - 02 (ALMOXARIFADO)', '12-11-2024', 'interna', 'Celular estava descolando a tela, feito a colagem da tela novamente, porém apresentou alguns problemas na tela, então foi retirado a carcaça do aparelho e deixado sem, dai até então não deu o problema mais.'),
(10, 459, 'THIAGO LOMBARDI', '14-11-2024', 'interna', 'Troca da película do aparelho.'),
(212, 460, 'BKP - ALMOXARIFADO (LIBERAÇÃO)', '18-11-2024', 'interna', 'Ao realizar a montagem do aparelho a bateria que residia no mesmo furou, feito então a troca por uma bateria nova, feito testes no celular funcionando corretamente.'),
(212, 461, 'BKP - ALMOXARIFADO (LIBERAÇÃO)', '18-11-2024', 'interna', 'Celular foi transferido BKP - ALMOXARIFADO (LIBERAÇÃO) 60200 para SEPARAÇÃO DE PEÇAS - 08 (ALMOXARIFADO) 60200.'),
(219, 463, 'SEPARAÇÃO DE PEÇAS - 02 (ALMOXARIFADO)', '21-11-2024', 'interna', 'Celular voltou a dar problema novamente no display, ficara no T.I aguardando reparos.'),
(21, 464, 'WENNEDY DA SILVA MONTEIRO', '21-11-2024', 'interna', 'Celular apresentava problema no touch e ao carregar, verificado que o flex estava um pouco solto, feito a remontagem do aparelho. '),
(232, 465, 'FURADEIRA FB-56', '21-11-2024', 'interna', 'Celular iria ser utilizado na FURADEIRA mas devido uma necessidade da expedição foi transferido pra lá, pois o celular do Correa não carregava a bateria 100%'),
(97, 466, 'BKP TI - ANTONIO CARLOS CORREA', '25-11-2024', 'interna', 'Celular carregava até 80%, está no TI sendo realizados testes para verificar o real problema.'),
(219, 467, 'SEPARAÇÃO DE PEÇAS - 02 (ALMOXARIFADO)', '28-11-2024', 'interna', 'Feito a troca do display com aro novamente, pois o antigo display possuía defeito.'),
(235, 468, 'FABRICIO MARKETPLACE', '02-12-2024', 'interna', 'Atualizado o software do celular.'),
(235, 469, 'BKP TI - LOJA SKYMSEN', '03-12-2024', 'interna', 'Celular foi transferido de FABRICIO LOJA (50300) para BKP TI - FABRICIO LOJA  (40500), celular estava com pouca memória e apresentando lentidão.'),
(236, 470, 'FABRICIO LOJA', '03-12-2024', 'interna', 'Atualizado o software do aparelho.'),
(20, 471, 'LUIS ROCHA DE BRITO', '04-12-2024', 'interna', 'Feito a troca da película do aparelho.'),
(21, 472, 'WENNEDY DA SILVA MONTEIRO', '04-12-2024', 'interna', 'Aparelho voltou a dar problemas no touch novamente, na parte de baixo onde fica o áudio, será feito a compra de uma tela através de um novo fornecedor para realizar a troca.'),
(2, 474, 'JACO CORREA BRITO', '05-12-2024', 'interna', 'Feito a troca da película do aparelho.'),
(97, 476, 'DOBRADEIRA 74', '06-12-2024', 'interna', 'O aparelho carregava somente ate os 85%, feito a abertura do mesmo, e retirado os periféricos que ligam a bateria, feito testes voltou a funcionar normalmente.'),
(97, 477, 'ANTONIO CARLOS CORREA', '06-12-2024', 'interna', 'Celular estava sendo utilizado na DOBRADEIRA 74 (30000) e foi transferido para ANTONIO CARLOS CORREA (50200), tablet que o correa possuía estava com lentidão ao scannear itens da separação, então foi trocado por um outro modelo de tablet para acelerar o processo. '),
(232, 478, 'ANTONIO CARLOS CORREA - EXPEDIÇÃO', '06-12-2024', 'interna', 'Celular foi transferido de ANTONIO CARLOS CORREA (50200) para DOBRADEIRA 74 (30000), celular apresentava lentidão ao scannear os itens com o leitor de código de barras, devido a necessidade urgente foi feito está troca para acelerar o processo.'),
(21, 479, 'WENNEDY DA SILVA MONTEIRO', '09-12-2024', 'interna', 'Feito a troca do display sem aro, feito testes funcionando corretamente.'),
(238, 481, 'BKP TI', '13-12-2024', 'interna', 'Tablet foi transferido de BKP TI (40500) para ANTONIO CARLOS CORREA (50200).'),
(97, 482, 'ANTONIO CARLOS CORREA', '13-12-2024', 'interna', 'Máquina foi transferida de ANTONIO CARLOS CORREA (50200) para BKP TI (40500), celular não passava dos 47%, algo que vinha acontecendo algumas vezes, sendo assim foi realizado a troca deste tablet, está no T.I sendo verificado a possível causa.'),
(222, 483, 'SEPARAÇÃO DE PEÇAS - 05 (ALMOXARIFADO)', '16-12-2024', 'interna', 'Feito a troca da película do aparelho.'),
(212, 495, 'SEPARAÇÃO DE PEÇAS - 09 (ALMOXARIFADO)', '16-01-2025', 'interna', 'Feito a troca do dock de carga do aparelho, que o mesmo estava tendo problemas ao carregar.'),
(235, 496, 'BKP TI - MARKETPLACE', '23-01-2025', 'interna', 'Celular foi transferido de BKP TI - MARKETPLACE (40500) para FABRICIO MPA (50300)'),
(241, 497, 'ARTUR HEMMEL', '11-02-2025', 'interna', 'Aparelho estava com a tela solta, feito a colagem novamente.'),
(238, 499, 'ANTONIO CARLOS CORREA', '11-02-2025', 'interna', 'Feito a formatação do aparelho, pois o mesmo estava apresentando constantes travamentos ao decorrer do dia.'),
(206, 500, 'DOBRADEIRA 74', '12-02-2025', 'interna', 'Aparelho ao se desconectar do carregador desligava, foi constatado que o problema se tratava da bateria, feito então a substituição da bateria por um outro que estava no TI, funcionando corretamente.'),
(101, 502, 'PEDRO EXPEDIÇÃO', '12-02-2025', 'interna', 'Aparelho apresentava constantes travamentos, feito então uma formatação do aparelho pra ver se o erro persiste.'),
(227, 503, 'SOLDA-03 (LADO B)', '13-02-2025', 'interna', 'Celular não aparentava sinal de display e nem de bateria, feito o descarte do mesmo.'),
(27, 504, 'SAIANI WEIDGENANNT', '14-02-2025', 'interna', 'Tela do celular manchada, foi verificado que entrou água no display do aparelho, solicitado um display para a troca do mesmo.'),
(37, 505, 'LUIZA GUEDES', '24-02-2025', 'interna', 'Celular foi de DAIANA MAURICI (60100) para LUIZA GUEDES (60100), celular da DAIANA não tinha compatibilidade com o Wechat, um app chinês no qual ela necessitava para se comunicar quando estivesse na china, feito então a troca dos aparelhos temporariamente.'),
(18, 506, 'DAIANA MAURICI', '24-02-2025', 'interna', 'Celular foi de LUIZA GUEDES (60100)  para DAIANA MAURICI (60100), celular da DAIANA não tinha compatibilidade com o Wechat, um app chinês no qual ela necessitava para se comunicar quando estivesse na china, feito então a troca dos aparelhos temporariamente.'),
(97, 507, 'BKP TI - ANTONIO CARLOS CORREA', '25-02-2025', 'interna', 'Aparelho não segurava mais carga, ao plugar o carregador desligava feito então a troca da bateria do aparelho e foi alocado para o setor de SOLDA'),
(27, 508, 'SAIANI WEIDGENANNT', '26-02-2025', 'interna', 'Feito a troca do display do aparelho.'),
(234, 509, 'SEPARAÇÃO DE PEÇAS - 07 (ALMOXARIFADO)', '13-03-2025', 'interna', 'Tela descolou novamente, feito a colagem da mesma.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `manutencao`
--
ALTER TABLE `manutencao`
  ADD PRIMARY KEY (`num`),
  ADD KEY `id` (`id`),
  ADD KEY `celulares` (`usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `manutencao`
--
ALTER TABLE `manutencao`
  MODIFY `num` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `manutencao`
--
ALTER TABLE `manutencao`
  ADD CONSTRAINT `manutencao_ibfk_1` FOREIGN KEY (`id`) REFERENCES `celulares` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
