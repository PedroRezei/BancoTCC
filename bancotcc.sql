-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: tcc
-- ------------------------------------------------------
-- Server version	8.0.41

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

create database tcc;
use tcc;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinatura`
--

LOCK TABLES `assinatura` WRITE;
/*!40000 ALTER TABLE `assinatura` DISABLE KEYS */;
INSERT INTO `assinatura` VALUES (1,1,'premium','2025-03-11 14:30:00','2025-04-11 14:30:00',8.99),(2,2,'premium','2025-03-11 16:00:00','2025-04-11 16:00:00',8.99),(3,4,'premium','2025-03-12 10:50:00','2025-04-12 10:50:00',8.99),(4,9,'premium','2025-03-13 23:00:00','2025-04-13 23:00:00',8.99),(5,12,'premium','2025-03-13 20:00:00','2025-04-13 20:00:00',8.99),(6,13,'premium','2025-03-14 12:25:00','2025-04-14 12:25:00',8.99),(7,15,'premium','2025-03-14 15:00:00','2025-04-14 15:00:00',8.99),(8,17,'premium','2025-03-14 21:30:00','2025-04-14 21:30:00',8.99),(9,20,'premium','2025-03-16 18:45:00','2025-04-16 18:45:00',8.99),(10,3,'premium','2025-03-16 19:00:00','2025-04-16 19:00:00',8.99),(11,7,'premium','2025-03-17 17:15:00','2025-04-17 17:15:00',8.99);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,5,'obrigado, eu estava com duvidas sobre cardinalidade e voce conseguiu tirar elas'),(2,5,'O segundo exercicio eu tive muita duvida na hora de fazer, mas agora conseguir entender, vlw'),(3,5,'puxa, na aula achei que era muito dificil, mas depois que vi seu video percebi o quao facil e, nota 10.'),(4,4,NULL),(5,5,'você explica bem demais, professor top, 5 estrelas!'),(6,5,'pelo seu video consegui entender, muito obrigado.'),(7,4,'obrigado, tenho prova amanhã e tava sem saber da matéria.'),(8,3,NULL),(9,5,'Você explica muito bem professor.'),(10,5,'Obrigado pelo video, meu professor não passou oracle e eu queria aprender mais sobre.'),(11,4,NULL),(12,5,'muito bom o video.'),(13,5,'nossa, mongodb é mais facil que eu imaginei, tu explica muito bem.');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criador`
--

LOCK TABLES `criador` WRITE;
/*!40000 ALTER TABLE `criador` DISABLE KEYS */;
INSERT INTO `criador` VALUES (1,'Adecio','adeciobanco@gmail.com','adeciofazsql','123.456.789-01','12.345.678-9','ciencia de dados'),(2,'Rodolfo','rodolfo.bispo@gmail.com','theresameuamor','901.234.567-89','90.123.456-7','engenharia de software'),(3,'Sandra','sandra_espanha@gmail.com','holachicosquetal','123.345.678-90','12.345.678-9	','desenvolvimento web'),(4,'Cassio','cassioabel','csml10223005','234.456.789-01','23.456.789-0','ciencia da computacao'),(5,'Elaine','elaine1978@gmail.com','elaine2874617491','345.678.901-23','34.567.890-1	','desenvolvimento mobile'),(6,'Joaquim','joaquim.rocha@gmail.com','vitalicioseilauimasenha','789.012.345-67','78.901.234-5','analise e desenvolvimento de sistemas '),(7,'Francisco','francisco.oliveira@gmail.com','umasenhamuitolouca ','456.789.012-34','45.678.901-2','administracao de banco de dados'),(8,'Giovana','Giovanamaria_flor@gmail.com','giovanamariaflorjj26','678.901.234-56','67.890.123-4','arquitetura de software'),(9,'Regina','regina.santos@gmail.com','todasassenhasjesusamado','567.789.012-34','56.789.012-3','engenharia da computacao'),(10,'Paulo','paulogustavo@gmail.com','4567324632','890.123.456-78','89.012.345-6','ciencia de dados'),(11,'Elisangela','profelisangela@gmail.com','professoraelisangeladeti','716.206.990-87','29.990.339-4','analise e desenvolvimento de sistemas'),(12,'Joel','joeldacomputacao@gmail.com','joelformadoemcomputacao','434.289.500-54','38.812.527-5','ciencia da computacao'),(13,'Vladimir','vladimiroensino@gmail.com','euensinomuitobem','575.418.020-93','42.399.415-3','desenvolvimento web'),(14,'Oscar','oscar.ramalho@gmail.com','7573819475981','729.997.470-39','11.956.853-6','engenharia de software'),(15,'Rosimar','rosimar.gouveia@gmail.com','tenhomuitasenhas','861.653.230-73','23.453.033-9','administracao de banco de dados');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juliana','jujubastos06@gmail.com','amominhamae2006','python, portugol, java'),(2,'Gabriel','gabsferreira@gmail.com','31012007','php, javascript'),(3,'Ivan','ivan_belario@gmail.com','ivfutebol@','typescript, java, javascript'),(4,'Heloísa','helonunes_19@gmail.com','hntvlpostag','mysql, mongodb, oracle'),(5,'Maria','maria.oliveira@gmail.com','456123987','java, php'),(6,'Lucas','lucas.souza@gmail.com','789653413','C++, Ruby'),(7,'Bruno','bruno.martins@gmail.com','48237589372','kotlin, java, javascript'),(8,'Rodrigo','rodlima.01@gmail.com','5738736347185','react, java'),(9,'Thiago','titigas_4910@gmail.com','titigasloverock','mysql, oracle'),(10,'Camila','camis_viera@gmail.com','araciosvaldokellycamila','html, css, java'),(11,'Jonas','jonas103452@gmail.com','14356335631','python, php'),(12,'Carla','carlinhabale@gmail.com','dancaevidas2','javascript, java, react, css'),(13,'Barbara','barezeil.lima@gmail.com','slalesbiana','mysql, mongodb, oracle'),(14,'Bruno','brunotava@gmail.com','essasenhatoperson','javascript, php'),(15,'Renato','renatolyra@gmail.com','shirtlessrenato@34','kotlin, java, python, php'),(16,'Donatella','donatellaversace@gmai.com','elaericademais426','html, css, react'),(17,'Evandro','evandrodj@gmail.com','284756352musica','C++, php'),(18,'Fernando','fernand0_4168@gmail.com','f3rn4nd0arribameo','groovy, kotlin, java'),(19,'Rafael','rafinha5642@gmail.com','alunodafiec37485','react, css'),(20,'Thalita','thalita_35@gmail.com','friendlycompetition','java, javascript'),(21,'Natan','natan7831@gmail.com','ticriticam59482','typescript, javascript'),(22,'Gustavo','gustavokido@gmail.com','muitacriatividadeveyr','mysql, oracle'),(23,'Paola','paola.tidinha@gmail.com','batatinhabemquentinha','kotlin, javascript'),(24,'Hemilio','hemili2047@gmail.com','espaguetegostosinho','python, portugol');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_avaliacao`
--

DROP TABLE IF EXISTS `usuario_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_avaliacao` (
  `sóprabotadado` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_video` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  `data_inicio` datetime NOT NULL,
  `tempo_assistido` time NOT NULL,
  PRIMARY KEY (`sóprabotadado`),
  KEY `fk_usuario_id_usuario_idx` (`id_usuario`),
  KEY `fk_video_id_video_idx` (`id_video`),
  KEY `fk_avaliacao_avaliacao_idx` (`id_avaliacao`),
  CONSTRAINT `fk_avaliacao_avaliacao` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacao` (`id_avaliacao`),
  CONSTRAINT `fk_usuario_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_video_id_video` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_avaliacao`
--

LOCK TABLES `usuario_avaliacao` WRITE;
/*!40000 ALTER TABLE `usuario_avaliacao` DISABLE KEYS */;
INSERT INTO `usuario_avaliacao` VALUES (1,1,1,1,'2025-03-11 13:30:23','00:21:47'),(2,2,3,2,'2025-03-11 14:07:12','00:17:57'),(3,3,3,3,'2025-03-11 14:20:12','00:17:57'),(4,4,4,4,'2025-03-11 15:02:52','00:19:21'),(5,5,4,5,'2025-03-11 15:47:14','00:19:21'),(6,6,5,6,'2025-03-11 16:12:46','00:22:21'),(7,9,6,7,'2025-03-11 16:30:00','00:28:15'),(8,14,7,8,'2025-03-11 17:05:42','00:15:59'),(9,17,7,9,'2025-03-11 17:40:10','00:15:59'),(10,13,10,10,'2025-03-11 18:12:25','00:22:30'),(11,22,10,11,'2025-03-11 18:45:00','00:22:30'),(12,21,8,12,'2025-03-12 08:30:00','00:17:51'),(13,23,7,13,'2025-03-12 09:45:00','00:15:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,1,'APRENDENDO A FAZER MODELOS CONCEITUAIS','Nesse video, ensino como funciona um modelo conceitual e como criar ele','https://www.youtube.com/watch?v=BzQ7kkTZVIo','2025-03-10 12:12:42','banco de dados','conceitual'),(2,2,'PYTHON LISTAS. RESOLVENDO EXERCÍCIOS','Nesse video, estou resolvendo os exercicios que passei no final do video de semana passada, onde vimos um pouco sobre listas no python','https://www.youtube.com/watch?v=ZFAOxCyC4tU&list=PLNyCgqr3-6Amx5T15bW-7k70wtzk9ZK16&index=3','2025-03-10 12:42:18','programação','python'),(3,3,'HTML E CSS, APRENDA DO INÍCIO.','Nesse video, voce aprendera a comecar um projeto html e css.','https://www.youtube.com/watch?v=n_Etdr7Dbjs','2025-03-10 13:55:21','programação','html'),(4,4,'APRENDA O ESSENCIAL DE SEGURANÇA DA INFORMAÇÃO','Nesse video, aprenderemos quais sao os conceitos, fundamento e mecanismos de seguranca da informacao','https://www.youtube.com/watch?v=Gfh2bxe3hGU&pp=ygUac2VndXJhbsOnYSBkYSBpbmZvcm1hw6fDo28%3D','2025-03-10 14:06:41','ciencia da computação','segurança'),(5,5,'REACT NO MOBILE, APRENDA DESDE O INÍCIO.','Nesse video, veremos as funcionalidades do react no mobile e como ele se diferencia do react para html.','https://www.youtube.com/watch?v=71shcOjC_a4&pp=ygUMcmVhY3QgbW9iaWxl','2025-03-10 15:12:42','programação','react'),(6,6,'O BÁSICO DE C++, VEJA AQUI.','Nesse video, ensino basico de c++ para iniciantes e no final do video, resolvo um exercicio.','https://www.youtube.com/watch?v=McbdxZ3Se2U&pp=ygUKYysrIGJhc2ljbw%3D%3D','2025-03-10 16:00:30','programação','c++'),(7,7,'CRIANDO UM PROJETO NO MONGODB.','Nesse video, ensino a criar um banco de dados no mongodb.','https://www.youtube.com/watch?v=4dTI1mVLX3I&pp=ygUIbW9uZ28gZGI%3D','2025-03-10 17:15:00','banco de dados','mongodb'),(8,8,'COMO ESTRUTURAR UM PROJETO.','Nesse video, aprendemos a melhor forma de estruturar um projeto de programação.','https://www.youtube.com/watch?v=tbtQnKRttL8&pp=ygUqY29tbyBlc3RydXR1cmFyIHVtIHByb2pldG8gZGUgcHJvZ3JhbWHDp2Fv','2025-03-10 18:05:00','estrutura de software','projeto'),(9,9,'PHP, AULA 1.','Nesse video, ensino por meio de exercicios o basico de php.','https://www.youtube.com/watch?v=YCXtaBXgP5A&pp=ygUEcGhwINIHCQm9AIO1pN6f1A%3D%3D','2025-03-10 19:25:00','programação','php'),(10,10,'ORACLE, COMO FUNCIONA.','Nesse video, conhecemos o básico do oracle e o porque dele ser um banco de dados muito utilizado no mercado.','https://www.youtube.com/watch?v=DEDPnjh4E6s&list=PLJZRlbWeQvwI8nRzviH5ckXwYudrw2T56&index=4','2025-03-10 19:30:00','banco de dados','oracle'),(11,11,'PORTUGOL, O BÁSICO DA PROGRAMAÇÃO','Nesse video, aprenderemos o básico da programação, o portugol.','https://www.youtube.com/watch?v=jndzJGPlgrc&list=PLEFQxmyNTPkGcP-PVIDZAOP3bxAa0_caE','2025-03-10 19:45:00','programação','portugol'),(12,12,'JAVASCRIPT, COMO CRIAR UM PROJETO DE BACK END.','Nesse video, ensino como funciona o back end e sua programação.','https://www.youtube.com/watch?v=YeEX1s4M9xg','2025-03-10 20:00:30','programação','javascript'),(13,13,'COMO USAR CSS COM REACT.','Nesse video, ensino como implementar css no react.','https://www.youtube.com/watch?v=20hlPRPVMoU','2025-03-10 20:15:00','programação','css'),(14,14,'NOSQL, CONCEITOS E FUNCIONALIDADES','Nesse video, vemos as diferenças do mysql do nosql.','https://www.youtube.com/watch?v=1B64oqE8PLs','2025-03-11 12:30:00','banco de dados','nosql'),(15,15,'POSTGRESQL, CRIANDO UM BANCO DO ZERO.','Nesse video, ensino como trabalhar com o PostgreSQL.','https://www.youtube.com/watch?v=Ft3F7wWA-x8&list=PLucm8g_ezqNoAkYKXN_zWupyH6hQCAwxY&index=6','2025-03-11 13:15:00','banco de dados','postgresql');
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

-- Dump completed on 2025-03-31 15:21:40
