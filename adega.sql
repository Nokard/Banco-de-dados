CREATE DATABASE  IF NOT EXISTS `adega` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `adega`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: adega
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
INSERT INTO `cliente_pf` VALUES (NULL,'13245678954','joao','pedro'),(NULL,'13310339852','MARCO','BAIA'),(NULL,'13310339857','ASDASD','ASDAS'),(NULL,'13310339858','ELIENE','DIAS'),(NULL,'13310339859','ELIENE','DIAS'),(NULL,'28.554.279/0001-74','ELIENE ','DIAS'),(NULL,'40528896810','HUGO ','RODRIGUES '),(NULL,'40528896814','HUGO','DIAS'),(NULL,'40528896817','PEDRO','DIAS');
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
-- Table structure for table `endereco_funcionario`
--

DROP TABLE IF EXISTS `endereco_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco_funcionario` (
  `CEP` varchar(11) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` char(2) DEFAULT NULL,
  `NUMERO` varchar(5) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `fk_cpf_funcionario` varchar(15) DEFAULT NULL,
  KEY `fk_cpf_funcionario` (`fk_cpf_funcionario`),
  CONSTRAINT `fk_cpf_funcionario` FOREIGN KEY (`fk_cpf_funcionario`) REFERENCES `funcionario` (`cpf`),
  CONSTRAINT `fk_end_func` FOREIGN KEY (`fk_cpf_funcionario`) REFERENCES `funcionario` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_funcionario`
--

LOCK TABLES `endereco_funcionario` WRITE;
/*!40000 ALTER TABLE `endereco_funcionario` DISABLE KEYS */;
INSERT INTO `endereco_funcionario` VALUES ('06654810','VINHO','SAO PAULO ','SP','52','ITAPEVI','casa','40528896815'),('06654810','VINHO','SAO PAULO','SO','52','OSASCO','CASA','40528896814');
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
  CONSTRAINT `fk_endereco_pf` FOREIGN KEY (`fk_cpf_cliente`) REFERENCES `cliente_pf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_pf`
--

LOCK TABLES `endereco_pf` WRITE;
/*!40000 ALTER TABLE `endereco_pf` DISABLE KEYS */;
INSERT INTO `endereco_pf` VALUES ('06654810','VINHO','OSASCO','SP','52',NULL,NULL,'13310339857'),('','','','','',NULL,NULL,'28.554.279/0001-74'),('06654810','VINHO','SAO PAULO','SP','52',NULL,NULL,'40528896810'),('06654810','VIOLETA','ITAPEVI','SP','65',NULL,NULL,'40528896817'),('0666666','ASDWE','ASDASD','AS','54',NULL,'AP','13245678954'),('06654810','RUA VINHO','65A5454','SP','52',NULL,'OSASCO','13310339852');
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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `nome` varchar(25) DEFAULT NULL,
  `sobrenome` varchar(25) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `cpf` varchar(15) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('JOAO','MARIA','13310339858','40528896814','GEENTE'),('MARIA ','LURDERS ','409520537','40528896815','gerente');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
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
INSERT INTO `produtos` VALUES (1,'CERVEJA','SONGHEG',881,'10/10/2018','10/10/2019'),(2,'PINGA','51',150,'10/10/2015','10/10/2030'),(3,'CACHACA','51',150,'10/10/2015','10/10/2030'),(1,'CERVEJA','DEUTSCA',850,'10/10/2010','20/20/1255'),(5,'REFRIGERANTE','COCA COLA',300,'10/10/2010','10/10/2020');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senhagerente`
--

DROP TABLE IF EXISTS `senhagerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `senhagerente` (
  `nome` varchar(15) DEFAULT NULL,
  `senha` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senhagerente`
--

LOCK TABLES `senhagerente` WRITE;
/*!40000 ALTER TABLE `senhagerente` DISABLE KEYS */;
INSERT INTO `senhagerente` VALUES ('hugo',123456);
/*!40000 ALTER TABLE `senhagerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_funcionario`
--

DROP TABLE IF EXISTS `telefone_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone_funcionario` (
  `ddd` int(11) DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `tel2` varchar(15) DEFAULT NULL,
  `cel` varchar(15) DEFAULT NULL,
  `fk_cpf_funcionario` varchar(15) DEFAULT NULL,
  KEY `fk_cpf_funcionario_tel` (`fk_cpf_funcionario`),
  CONSTRAINT `fk_cpf_funcionario_tel` FOREIGN KEY (`fk_cpf_funcionario`) REFERENCES `funcionario` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_funcionario`
--

LOCK TABLES `telefone_funcionario` WRITE;
/*!40000 ALTER TABLE `telefone_funcionario` DISABLE KEYS */;
INSERT INTO `telefone_funcionario` VALUES (11,'4773-1983','4553-6757','95248-4510','40528896815'),(11,'4553-6757','4773-1983','95248-4510','40528896814');
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
  CONSTRAINT `fk_cliente_pk` FOREIGN KEY (`cliente_cpf`) REFERENCES `cliente_pf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefones_pf`
--

LOCK TABLES `telefones_pf` WRITE;
/*!40000 ALTER TABLE `telefones_pf` DISABLE KEYS */;
INSERT INTO `telefones_pf` VALUES (11,'4773-1983','4553-6757','95248-4510','40528896817'),(11,'5654-5454','5555-5555','44444-4444','13245678954'),(11,'5465-1564','6546-5465','65465-4654','13310339852');
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

-- Dump completed on 2018-04-22 18:51:44
