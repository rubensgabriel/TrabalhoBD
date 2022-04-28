-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: localhost    Database: aulabd
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resposta` (
  `numQuestao` int(11) NOT NULL,
  `desResposta` varchar(500) NOT NULL,
  PRIMARY KEY (`numQuestao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (2,'Chaves primárias ou PK é um conjunto de um ou mais valores nos campos, cujo os valores ou conjunto de valores no caso de mais de uma PK, numca se repetem na mesma tabela é usado também como índice de referência para criar relacionamentos com as demais tabelas.'),(3,'Chave estrangeira, ou Foreign Key (FK), ou ainda chave externa é a chave que permite a referência a registros oriundos de outras tabelas, é o campo ou conjunto de campos que compõem a chave primária de uma outra tabela.'),(4,'CREATE TABLE curso(id int primary key auto_increment,descricao varchar(500));'),(5,'CREATE TABLE alunos(id int primary key auto_increment,nome varchar(100),matricula int,estado varchar(30),sexo char,fk_curso int,foreign key alunos_fk_cuso(fk_curso) REFERENCES alunos(id) on update no action);'),(6,'ALTER TABLE alunos ADD column email varchar(100) after sexo;'),(7,'ALTER TABLE professor DROP COLUMN fone;'),(8,'UPDATE aulabd.professor SET sexo = \'M\' WHERE codigo AND sexo = \'F\';'),(9,'DELETE FROM professor WHERE codigo and  sexo = \'F\';'),(10,'SELECT alunos.nome, alunos.matricula FROM alunos;'),(11,'SELECT professor.nome, professor.sexo FROM professor WHERE sexo = \'M\';'),(12,'SELECT alunos.nome, curso.descricao FROM alunos,curso;'),(13,'CREATE TABLE estado( UF VARCHAR(2) PRIMARY KEY, nomeEstado VARCHAR(50) );  CREATE TABLE cidade( nomeCidade VARCHAR(80), UFcidade VARCHAR(2), FOREIGN KEY estado_fk_cidade(UFcidade) REFERENCES estado(UF) on update no action);'),(14,'SELECT *FROM cidade WHERE nomeCidade LIKE \"A%\";'),(15,'SELECT *FROM cidade WHERE UFcidade = \"MG\";'),(16,'SELECT cidade.nomeCidade, estado.nomeEstado FROM cidade, estado WHERE UFcidade = UF ORDER BY nomeCidade ASC;'),(17,'SELECT  lower(nomeCidade) FROM cidade; '),(18,'SELECT  upper(nomeCidade) FROM cidade; '),(19,'SELECT  count(nomeCidade) as QtdCidadeEstado, nomeEstado as estado FROM cidade, estado WHERE estado.UF = cidade.UFcidade group by cidade.UFcidade; ');
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 20:07:58
