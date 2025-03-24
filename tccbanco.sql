-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: tcc
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assinatura`
--

DROP TABLE IF EXISTS `assinatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assinatura` (
  `id_assinatura` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `plano` enum('premium','premium_plus') NOT NULL,
  `data_inicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_fim` timestamp NOT NULL,
  `preço` float NOT NULL,
  PRIMARY KEY (`id_assinatura`),
  KEY `assinatura_ibfk_1_idx` (`id_usuario`),
  CONSTRAINT `assinatura_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinatura`
--

LOCK TABLES `assinatura` WRITE;
/*!40000 ALTER TABLE `assinatura` DISABLE KEYS */;
INSERT INTO `assinatura` VALUES (1,1,'premium','2025-03-11 14:30:00','2025-04-11 15:00:00',8.99),(2,2,'premium','2025-03-20 16:00:00','2025-04-20 16:30:00',8.99),(3,4,'premium','2025-04-15 10:50:00','2025-05-15 11:00:00',8.99),(4,9,'premium','2025-05-19 23:00:00','2025-06-19 23:00:00',8.99),(5,12,'premium','2025-06-14 20:00:00','2025-07-14 20:00:00',8.99);
/*!40000 ALTER TABLE `assinatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `id_avaliacao` int NOT NULL AUTO_INCREMENT,
  `nota` int DEFAULT NULL,
  `comentario` text,
  PRIMARY KEY (`id_avaliacao`),
  CONSTRAINT `avaliacao_chk_1` CHECK ((`nota` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,5,'obrigado, eu estava com duvidas sobre cardinalidade e voce conseguiu tirar elas'),(2,5,'O segundo exercicio eu tive muita duvida na hora de fazer, mas agora conseguir entender, vlw'),(3,5,'puxa, na aula achei que era muito dificil, mas depois que vi seu video percebi o quao facil e, nota 10.'),(4,4,NULL),(5,5,'voce explica bem demais, professor top, 5 estrelas!');
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criador`
--

DROP TABLE IF EXISTS `criador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criador` (
  `id_criador` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `formacao` text NOT NULL,
  PRIMARY KEY (`id_criador`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criador`
--

LOCK TABLES `criador` WRITE;
/*!40000 ALTER TABLE `criador` DISABLE KEYS */;
INSERT INTO `criador` VALUES (1,'Adecio','adeciobanco@gmail.com','adeciofazsql','123.456.789-01','12.345.678-9','ciencia de dados'),(2,'Rodolfo','rodolfo.bispo@gmail.com','theresameuamor','901.234.567-89','90.123.456-7','engenharia de software'),(3,'Sandra','sandra_espanha@gmail.com','holachicosquetal','123.345.678-90','12.345.678-9	','desenvolvimento web'),(4,'Cassio','cassioabel','csml10223005','234.456.789-01','23.456.789-0','ciencia da computacao'),(5,'Elaine','elaine1978@gmail.com','elaine2874617491','345.678.901-23','34.567.890-1	','desenvolvimento mobile'),(6,'Joaquim','joaquim.rocha@gmail.com','vitalicioseilauimasenha','789.012.345-67','78.901.234-5','analise e desenvolvimento de sistemas '),(7,'Francisco','francisco.oliveira@gmail.com','umasenhamuitolouca ','456.789.012-34','45.678.901-2','administracao de banco de dados'),(8,'Giovana','Giovanamaria_flor@gmail.com','giovanamariaflorjj26','678.901.234-56','67.890.123-4','arquitetura de software'),(9,'Regina','regina.santos@gmail.com','todasassenhasjesusamado','567.789.012-34','56.789.012-3','engenharia da computacao'),(10,'Paulo','paulogustavo@gmail.com','4567324632','890.123.456-78','89.012.345-6','ciencia de dados');
/*!40000 ALTER TABLE `criador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id_playlist` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_criador` int DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `visibilidade` enum('publica','privada') NOT NULL,
  PRIMARY KEY (`id_playlist`),
  KEY `playlist_ibfk_1_idx` (`id_usuario`),
  KEY `playlist_ibfk_2_idx` (`id_criador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (5,1,NULL,'playlist da juliana','privada'),(6,NULL,2,'aulas de python','publica'),(7,3,NULL,'playlist do Ivan','privada'),(8,4,NULL,'playlist da Heloisa','privada'),(9,NULL,5,'aulas de react ','publica'),(10,NULL,1,'aula de banco de dados','publica');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_video`
--

DROP TABLE IF EXISTS `playlist_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_video` (
  `id_playlistvideo` int NOT NULL AUTO_INCREMENT,
  `id_playlist` int NOT NULL,
  `id_video` int NOT NULL,
  `data_adicao` date NOT NULL,
  `posicao_video` int NOT NULL,
  PRIMARY KEY (`id_playlistvideo`),
  KEY `fk_playlist_idx` (`id_playlist`),
  KEY `fk_video_idx` (`id_video`),
  CONSTRAINT `fk_playlist` FOREIGN KEY (`id_playlist`) REFERENCES `playlist` (`id_playlist`),
  CONSTRAINT `fk_video` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_video`
--

LOCK TABLES `playlist_video` WRITE;
/*!40000 ALTER TABLE `playlist_video` DISABLE KEYS */;
INSERT INTO `playlist_video` VALUES (1,5,1,'2025-03-11',1),(2,5,2,'2025-03-11',2),(3,5,3,'2025-03-12',3),(4,6,1,'2025-03-12',1),(5,6,2,'2025-03-13',2),(6,6,4,'2025-03-13',3),(7,7,1,'2025-03-14',1),(8,7,3,'2025-03-14',2),(9,8,4,'2025-03-15',1),(10,8,3,'2025-03-15',2),(11,8,1,'2025-03-15',3),(12,9,2,'2025-03-16',1),(13,9,1,'2025-03-16',2),(14,9,3,'2025-03-16',3),(15,10,1,'2025-03-17',1),(16,10,2,'2025-03-17',2),(17,10,3,'2025-03-17',3),(18,10,4,'2025-03-17',4);
/*!40000 ALTER TABLE `playlist_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `interesses` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juliana','jujubastos06@gmail.com','amominhamae2006','Python, Portugol, Java'),(2,'Gabriel','gabsferreira@gmail.com','31012007','PHP, javascript'),(3,'Ivan','ivan_belario@gmail.com','ivfutebol@','Typescript, java, javascript'),(4,'Heloísa','helonunes_19@gmail.com','hntvlpostag','mysql, mongodb, oracle'),(5,'Maria','maria.oliveira@gmail.com','456123987','java, php'),(6,'Lucas','lucas.souza@gmail.com','789653413','C++, Ruby'),(7,'Bruno','bruno.martins@gmail.com','48237589372','kotlin, java, javascript'),(8,'Rodrigo','rodlima.01@gmail.com','5738736347185','React, java'),(9,'Thiago','titigas_4910@gmail.com','titigasloverock','mysql, oracle'),(10,'Camila','camis_viera@gmail.com','araciosvaldokellycamila','html, css, java'),(11,'Jonas','jonas103452@gmail.com','14356335631','python, php'),(12,'Carla','carlinhabale@gmail.com','dancaevidas2','javascript, java, react, css');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_avaliacao`
--

DROP TABLE IF EXISTS `usuario_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_avaliacao` (
  `id_usuario` int NOT NULL,
  `id_video` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  `data_inicio` datetime NOT NULL,
  `tempo_assistido` time NOT NULL,
  KEY `fk_usuario_id_usuario_idx` (`id_usuario`),
  KEY `fk_video_id_video_idx` (`id_video`),
  KEY `fk_avaliacao_avaliacao_idx` (`id_avaliacao`),
  CONSTRAINT `fk_avaliacao_avaliacao` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacao` (`id_avaliacao`),
  CONSTRAINT `fk_usuario_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_video_id_video` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_avaliacao`
--

LOCK TABLES `usuario_avaliacao` WRITE;
/*!40000 ALTER TABLE `usuario_avaliacao` DISABLE KEYS */;
INSERT INTO `usuario_avaliacao` VALUES (1,1,1,'2025-03-11 13:30:23','00:21:47'),(2,3,2,'2025-03-11 14:07:12','00:17:57'),(3,3,3,'2025-03-11 14:20:12','00:25:16'),(4,4,4,'2025-03-11 15:02:52','00:19:21'),(5,4,5,'2025-02-11 15:47:14','00:20:42');
/*!40000 ALTER TABLE `usuario_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id_video` int NOT NULL AUTO_INCREMENT,
  `id_criador` int NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `url` varchar(500) NOT NULL,
  `data_publicacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoria` varchar(100) NOT NULL,
  `palavra_chave` varchar(100) NOT NULL,
  PRIMARY KEY (`id_video`),
  KEY `video_ibfk_1_idx` (`id_criador`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`id_criador`) REFERENCES `criador` (`id_criador`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,1,'APRENDENDO A FAZER BODELOS CONCEITUAIS','Nesse video, ensino como funciona um modelo conceitual e como criar ele','https://www.youtube.com/watch?v=BzQ7kkTZVIo','2025-03-10 12:12:42','banco de dados','conceitual'),(2,2,'PYTHON LISTAS. RESOLVENDO EXERCICIOS','Nesse video, estou resolvendo os exercicios que passei no final do video de semana passada, onde vimos um pouco sobre listas no python','https://www.youtube.com/watch?v=ZFAOxCyC4tU&list=PLNyCgqr3-6Amx5T15bW-7k70wtzk9ZK16&index=3','2025-03-10 12:42:18','python','python'),(3,3,'HTML E CSS, APRENDA DO INICIO.','Nesse video, voce aprendera a comecar um projeto html e css.','https://www.youtube.com/watch?v=n_Etdr7Dbjs','2025-03-10 13:55:21','web','html'),(4,4,'APRENDA O ESSENCIAL DE SEGURANCA DA INFORMACAO','Nesse video, aprenderemos quais sao os conceitos, fundamento e mecanismos de seguranca da informacao','https://www.youtube.com/watch?v=Gfh2bxe3hGU&pp=ygUac2VndXJhbsOnYSBkYSBpbmZvcm1hw6fDo28%3D','2025-03-10 14:06:41','ciencia da computacao','seguranca');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-24 20:01:53
