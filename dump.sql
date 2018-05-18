-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: adega
-- ------------------------------------------------------
-- Server version	5.7.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente_pf`
--

DROP TABLE IF EXISTS `cliente_pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_pf` (
  `tipo` varchar(25) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `nome_cliente` varchar(45) DEFAULT NULL,
  `sobrenome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pf`
--

LOCK TABLES `cliente_pf` WRITE;
/*!40000 ALTER TABLE `cliente_pf` DISABLE KEYS */;
INSERT INTO `cliente_pf` VALUES (NULL,'40528896814','HUGO','DIAS');
/*!40000 ALTER TABLE `cliente_pf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_pj`
--

DROP TABLE IF EXISTS `cliente_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_pj` (
  `tipo` varchar(25) DEFAULT NULL,
  `cnpj` varchar(25) NOT NULL,
  `nome_cliente` varchar(45) DEFAULT NULL,
  `sobrenome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pj`
--

LOCK TABLES `cliente_pj` WRITE;
/*!40000 ALTER TABLE `cliente_pj` DISABLE KEYS */;
INSERT INTO `cliente_pj` VALUES ('COMBOBOXCHANGED','28.554.279/0001-70','FACEBOOK','DIAS'),('COMBOBOXCHANGED','28.554.279/0001-74','HUGO','DIAS');
/*!40000 ALTER TABLE `cliente_pj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco_fornecedor`
--

DROP TABLE IF EXISTS `endereco_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco_fornecedor` (
  `cep` varchar(12) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `fk_cnpj_fornecedor` varchar(25) DEFAULT NULL,
  KEY `fk_cnpj_fornecedor` (`fk_cnpj_fornecedor`),
  CONSTRAINT `fk_cnpj_fornecedor` FOREIGN KEY (`fk_cnpj_fornecedor`) REFERENCES `fornecedor` (`cnpj`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_fornecedor`
--

LOCK TABLES `endereco_fornecedor` WRITE;
/*!40000 ALTER TABLE `endereco_fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco_funcionario`
--

DROP TABLE IF EXISTS `endereco_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco_funcionario` (
  `cpf` varchar(25) DEFAULT NULL,
  `CEP` varchar(11) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` char(2) DEFAULT NULL,
  `NUMERO` varchar(5) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_funcionario`
--

LOCK TABLES `endereco_funcionario` WRITE;
/*!40000 ALTER TABLE `endereco_funcionario` DISABLE KEYS */;
INSERT INTO `endereco_funcionario` VALUES ('13310339858','06654810','52','ITAPEVI','SP','VINHO','ITAPARICA','CASA');
/*!40000 ALTER TABLE `endereco_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco_pf`
--

DROP TABLE IF EXISTS `endereco_pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco_pf` (
  `CEP` varchar(11) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` char(2) DEFAULT NULL,
  `NUMERO` varchar(5) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `fk_cpf_cliente` varchar(20) DEFAULT NULL,
  KEY `fk_endereco_pf` (`fk_cpf_cliente`),
  CONSTRAINT `fk_cpf_cliente` FOREIGN KEY (`fk_cpf_cliente`) REFERENCES `cliente_pf` (`cpf`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_pf`
--

LOCK TABLES `endereco_pf` WRITE;
/*!40000 ALTER TABLE `endereco_pf` DISABLE KEYS */;
INSERT INTO `endereco_pf` VALUES ('06654810','VINHO','SAO PAULO','SP','52','ITAPEVI','CASA','40528896814');
/*!40000 ALTER TABLE `endereco_pf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco_pj`
--

DROP TABLE IF EXISTS `endereco_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco_pj` (
  `CEP` varchar(11) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` char(2) DEFAULT NULL,
  `NUMERO` varchar(5) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `fk_cnpj_cliente` varchar(20) DEFAULT NULL,
  KEY `fk_endereco_pj` (`fk_cnpj_cliente`),
  CONSTRAINT `fk_endereco_pj` FOREIGN KEY (`fk_cnpj_cliente`) REFERENCES `cliente_pj` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_pj`
--

LOCK TABLES `endereco_pj` WRITE;
/*!40000 ALTER TABLE `endereco_pj` DISABLE KEYS */;
INSERT INTO `endereco_pj` VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `endereco_pj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `cnpj` varchar(25) NOT NULL,
  `nomeFantasia` varchar(255) DEFAULT NULL,
  `razaoSocial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `nome` varchar(25) DEFAULT NULL,
  `sobrenome` varchar(25) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `cpf` varchar(45) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('JORGE','COLOMO','409520539','GERENTE','13310339858');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `nome` varchar(15) DEFAULT NULL,
  `senha` int(15) DEFAULT NULL,
  `nivel` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('gerente',12345,'1'),('funcionario',0,'0');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `cd_produto` int(15) DEFAULT NULL,
  `descricao` varchar(85) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `qtd_estoque` int(11) DEFAULT NULL,
  `data_fabricacao` varchar(15) DEFAULT NULL,
  `data_validade` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'CERVEJA','SONGHEG',881,'10/10/2018','10/10/2019'),(2,'PINGA','51',150,'10/10/2015','10/10/2030'),(3,'CACHACA','51',150,'10/10/2015','10/10/2030'),(1,'CERVEJA','DEUTSCA',850,'10/10/2010','20/20/1255'),(5,'REFRIGERANTE','COCA COLA',300,'10/10/2010','10/10/2020'),(1,'CERVEJA','SKOL',300,'10/10/2000','10/10/2018'),(1,'CERVEJA','SWEBEAR',150,'10/10/2010','20/05/2019');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_fornecedor`
--

DROP TABLE IF EXISTS `telefone_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone_fornecedor` (
  `ddd` int(11) DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `cel` varchar(15) DEFAULT NULL,
  `fk_cnpj_fornecedor` varchar(25) DEFAULT NULL,
  KEY `fk_telcnpj_fornecedor` (`fk_cnpj_fornecedor`),
  CONSTRAINT `fk_telcnpj_fornecedor` FOREIGN KEY (`fk_cnpj_fornecedor`) REFERENCES `fornecedor` (`cnpj`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_fornecedor`
--

LOCK TABLES `telefone_fornecedor` WRITE;
/*!40000 ALTER TABLE `telefone_fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefone_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_funcionario`
--

DROP TABLE IF EXISTS `telefone_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone_funcionario` (
  `cpf` varchar(25) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `cel` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_funcionario`
--

LOCK TABLES `telefone_funcionario` WRITE;
/*!40000 ALTER TABLE `telefone_funcionario` DISABLE KEYS */;
INSERT INTO `telefone_funcionario` VALUES ('13310339858',11,'4773-1983','4553-6758','95248-4510');
/*!40000 ALTER TABLE `telefone_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefones_pf`
--

DROP TABLE IF EXISTS `telefones_pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefones_pf` (
  `ddd` int(11) DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `cel` varchar(15) DEFAULT NULL,
  `cliente_cpf` varchar(20) DEFAULT NULL,
  KEY `fk_cliente_pk` (`cliente_cpf`),
  CONSTRAINT `fk_cliente_pf` FOREIGN KEY (`cliente_cpf`) REFERENCES `cliente_pf` (`cpf`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefones_pf`
--

LOCK TABLES `telefones_pf` WRITE;
/*!40000 ALTER TABLE `telefones_pf` DISABLE KEYS */;
INSERT INTO `telefones_pf` VALUES (11,'4773-1983','4553-6757','95248-4510','40528896814');
/*!40000 ALTER TABLE `telefones_pf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefones_pj`
--

DROP TABLE IF EXISTS `telefones_pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefones_pj` (
  `ddd` int(11) DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `cel` varchar(15) DEFAULT NULL,
  `cliente_cnpj` varchar(20) DEFAULT NULL,
  KEY `fk_cliente_pj` (`cliente_cnpj`),
  CONSTRAINT `fk_cliente_pj` FOREIGN KEY (`cliente_cnpj`) REFERENCES `cliente_pj` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefones_pj`
--

LOCK TABLES `telefones_pj` WRITE;
/*!40000 ALTER TABLE `telefones_pj` DISABLE KEYS */;
INSERT INTO `telefones_pj` VALUES (11,'4773-1983','    -    ','     -    ','28.554.279/0001-74'),(11,'4773-1983','4553-6757','95248-4510','28.554.279/0001-70');
/*!40000 ALTER TABLE `telefones_pj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-18 16:27:39
