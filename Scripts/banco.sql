-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.16-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para testedb
CREATE DATABASE IF NOT EXISTS `testedb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `testedb`;


-- Copiando estrutura para função testedb.fct_crypt_str
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `fct_crypt_str`(p_str VARCHAR(15)) RETURNS varchar(40) CHARSET latin1
BEGIN    
                        
    RETURN SHA1(p_str);  
     
END//
DELIMITER ;


-- Copiando estrutura para tabela testedb.tab_categorias
CREATE TABLE IF NOT EXISTS `tab_categorias` (
  `id_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela testedb.tab_categorias: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_categorias` DISABLE KEYS */;
INSERT INTO `tab_categorias` (`id_categoria`, `ds_categoria`) VALUES
	(1, 'ALIMENTOS'),
	(2, 'VESTUÁRIO'),
	(3, 'BEBIDAS'),
	(4, 'HIGIENE'),
	(5, 'LIMPEZA');
/*!40000 ALTER TABLE `tab_categorias` ENABLE KEYS */;


-- Copiando estrutura para tabela testedb.tab_cliente
CREATE TABLE IF NOT EXISTS `tab_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo_cliente` char(1) NOT NULL COMMENT 'F-Pessoa Fisica / J-Pessoa Jurídica',
  `cpfcnpj` varchar(15) NOT NULL,
  `data_nasc` date NOT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `fone1` varchar(15) DEFAULT NULL,
  `fone2` varchar(15) DEFAULT NULL,
  `usu_cadastro` int(10) unsigned NOT NULL,
  `dthr_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_tab_cliente_tab_usuario1_idx` (`usu_cadastro`),
  CONSTRAINT `fk_tab_cliente_tab_usuario` FOREIGN KEY (`usu_cadastro`) REFERENCES `tab_usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela testedb.tab_cliente: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_cliente` DISABLE KEYS */;
INSERT INTO `tab_cliente` (`id_cliente`, `nome`, `tipo_cliente`, `cpfcnpj`, `data_nasc`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `complemento`, `fone1`, `fone2`, `usu_cadastro`, `dthr_cadastro`) VALUES
	(1, 'IAUATA FIRMO DA SILVA', 'F', '61446017249', '1977-12-12', 'RUA JAPURA', '1164', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-07-09 18:13:42'),
	(3, 'TESTE DE CADASTRO', 'F', '99999999999', '1999-12-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-07-09 22:50:54');
/*!40000 ALTER TABLE `tab_cliente` ENABLE KEYS */;


-- Copiando estrutura para tabela testedb.tab_produtos
CREATE TABLE IF NOT EXISTS `tab_produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `ds_produto` varchar(45) NOT NULL,
  `dthr_cadastro` datetime NOT NULL,
  `usu_cadastro` int(10) unsigned NOT NULL,
  `preco_custo` decimal(8,2) unsigned NOT NULL,
  `preco_venda` decimal(8,2) NOT NULL,
  `unidade` varchar(25) DEFAULT NULL,
  `id_categoria` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1-Ativo e 2-Inativo',
  `qtd_estoque` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_produto`),
  KEY `fk_tab_produtos_tab_usuario1_idx` (`usu_cadastro`),
  KEY `fk_tab_produtos_tab_categorias1_idx` (`id_categoria`),
  CONSTRAINT `fk_tab_produtos_tab_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `tab_categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tab_produtos_tab_usuario` FOREIGN KEY (`usu_cadastro`) REFERENCES `tab_usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela testedb.tab_produtos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_produtos` DISABLE KEYS */;
INSERT INTO `tab_produtos` (`id_produto`, `ds_produto`, `dthr_cadastro`, `usu_cadastro`, `preco_custo`, `preco_venda`, `unidade`, `id_categoria`, `status`, `qtd_estoque`) VALUES
	(1, 'SABÃO EM PÓ', '2018-07-10 00:11:29', 1, 3.00, 5.00, 'UND', 5, 1, 30.00),
	(2, 'ESCOVA DE DENTE ORAL B (MACIA)', '2018-07-10 00:12:11', 1, 4.00, 6.00, 'UND', 4, 1, 50.00);
/*!40000 ALTER TABLE `tab_produtos` ENABLE KEYS */;


-- Copiando estrutura para tabela testedb.tab_tipo_usuario
CREATE TABLE IF NOT EXISTS `tab_tipo_usuario` (
  `id_tipo_usuario` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ds_tipo_usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela testedb.tab_tipo_usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_tipo_usuario` DISABLE KEYS */;
INSERT INTO `tab_tipo_usuario` (`id_tipo_usuario`, `ds_tipo_usuario`) VALUES
	(1, 'Administrador'),
	(2, 'Operador');
/*!40000 ALTER TABLE `tab_tipo_usuario` ENABLE KEYS */;


-- Copiando estrutura para tabela testedb.tab_usuario
CREATE TABLE IF NOT EXISTS `tab_usuario` (
  `usu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usu_nome` varchar(45) NOT NULL,
  `usu_login` varchar(45) NOT NULL,
  `usu_senha` varchar(45) NOT NULL,
  `usu_email` varchar(80) NOT NULL,
  `id_tipo_usuario` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`usu_id`),
  KEY `idx_tab_usuario_01` (`id_tipo_usuario`),
  CONSTRAINT `fk_tab_usuario_tab_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tab_tipo_usuario` (`id_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela testedb.tab_usuario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_usuario` DISABLE KEYS */;
INSERT INTO `tab_usuario` (`usu_id`, `usu_nome`, `usu_login`, `usu_senha`, `usu_email`, `id_tipo_usuario`) VALUES
	(1, 'IAUATA FIRMO', 'IAUATA', 'teste123', 'iauata@hotmail.com', 1);
/*!40000 ALTER TABLE `tab_usuario` ENABLE KEYS */;


-- Copiando estrutura para tabela testedb.tab_vendas
CREATE TABLE IF NOT EXISTS `tab_vendas` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `dthr_venda` varchar(45) NOT NULL COMMENT 'Data e Hora da Venda',
  `valor_venda` decimal(8,2) NOT NULL DEFAULT '0.00',
  `desconto` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `fk_tab_vendas_tab_cliente1_idx` (`id_cliente`),
  CONSTRAINT `fk_tab_vendas_tab_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tab_cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela testedb.tab_vendas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_vendas` ENABLE KEYS */;


-- Copiando estrutura para tabela testedb.tab_vendas_itens
CREATE TABLE IF NOT EXISTS `tab_vendas_itens` (
  `id_venda_item` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor_produto` decimal(8,2) NOT NULL,
  `valor_desc` decimal(8,2) NOT NULL,
  `qtd_venda` decimal(6,2) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_venda_item`),
  KEY `fk_tab_vendas_itens_tab_vendas1_idx` (`id_venda`),
  CONSTRAINT `fk_tab_vendas_itens_tab_vendas1` FOREIGN KEY (`id_venda`) REFERENCES `tab_vendas` (`id_venda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela testedb.tab_vendas_itens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tab_vendas_itens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_vendas_itens` ENABLE KEYS */;


-- Copiando estrutura para view testedb.vw_produtos
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_produtos` (
	`id_produto` INT(11) NOT NULL,
	`ds_produto` VARCHAR(45) NOT NULL COLLATE 'latin1_swedish_ci',
	`preco_custo` DECIMAL(8,2) UNSIGNED NOT NULL,
	`preco_venda` DECIMAL(8,2) NOT NULL,
	`unidade` VARCHAR(25) NULL COLLATE 'latin1_swedish_ci',
	`id_categoria` INT(10) UNSIGNED NOT NULL,
	`ds_categoria` VARCHAR(45) NOT NULL COLLATE 'latin1_swedish_ci',
	`dsstatus` VARCHAR(7) NOT NULL COLLATE 'utf8mb4_general_ci',
	`qtd_estoque` DECIMAL(8,2) UNSIGNED NOT NULL
) ENGINE=MyISAM;


-- Copiando estrutura para trigger testedb.tg_tab_user_BI
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tg_tab_user_BI` BEFORE INSERT ON `tab_usuario` FOR EACH ROW BEGIN
       SET NEW.usu_senha = fct_crypt_str(NEW.usu_senha);
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Copiando estrutura para trigger testedb.tg_tab_user_BU
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tg_tab_user_BU` BEFORE UPDATE ON `tab_usuario` FOR EACH ROW BEGIN
       SET NEW.usu_senha = fct_crypt_str(NEW.usu_senha);
    END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Copiando estrutura para view testedb.vw_produtos
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_produtos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `vw_produtos` AS SELECT a.id_produto
     , a.ds_produto
     , a.preco_custo
     , a.preco_venda
     , a.unidade
	  , a.id_categoria
	  , b.ds_categoria
	  , CASE WHEN a.status = 1 THEN 'ATIVO'
	         ELSE 'INATIVO' END AS dsstatus
	  , a.qtd_estoque
    FROM testedb.tab_produtos a, 
	      testedb.tab_categorias b
    WHERE a.id_categoria = b.id_categoria
    ORDER BY a.ds_produto ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
