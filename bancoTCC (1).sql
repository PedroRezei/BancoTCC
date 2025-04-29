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
  `preco` float NOT NULL,
  PRIMARY KEY (`id_assinatura`),
  KEY `assinatura_ibfk_1_idx` (`id_usuario`),
  CONSTRAINT `assinatura_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinatura`
--

LOCK TABLES `assinatura` WRITE;
/*!40000 ALTER TABLE `assinatura` DISABLE KEYS */;
INSERT INTO `assinatura` VALUES (1,1,'premium','2025-03-11 14:30:00','2025-04-11 14:30:00',8.99),(2,2,'premium','2025-03-11 16:00:00','2025-04-11 16:00:00',8.99),(3,4,'premium','2025-03-12 10:50:00','2025-04-12 10:50:00',8.99),(4,9,'premium','2025-03-13 23:00:00','2025-04-13 23:00:00',8.99),(5,12,'premium','2025-03-13 20:00:00','2025-04-13 20:00:00',8.99),(6,13,'premium','2025-03-14 12:25:00','2025-04-14 12:25:00',8.99),(7,15,'premium','2025-03-14 15:00:00','2025-04-14 15:00:00',8.99),(8,17,'premium','2025-03-14 21:30:00','2025-04-14 21:30:00',8.99),(9,20,'premium','2025-03-16 18:45:00','2025-04-16 18:45:00',8.99),(10,3,'premium','2025-03-16 19:00:00','2025-04-16 19:00:00',8.99),(11,7,'premium','2025-03-17 17:15:00','2025-04-17 17:15:00',8.99),(12,6,'premium','2025-04-01 02:00:00','2025-05-02 02:00:00',8.99),(13,8,'premium','2025-03-30 21:00:00','2025-04-30 21:00:00',8.99),(14,10,'premium','2025-04-15 22:00:00','2025-05-15 22:00:00',8.99),(15,1,'premium','2025-04-01 19:30:00','2025-05-01 19:30:00',8.99),(16,5,'premium','2025-04-02 16:00:00','2025-05-02 16:00:00',8.99),(17,11,'premium','2025-04-03 20:30:00','2025-05-03 20:30:00',8.99),(18,14,'premium','2025-04-04 14:15:00','2025-05-04 14:15:00',8.99),(19,16,'premium','2025-04-06 00:45:00','2025-05-06 00:45:00',8.99),(20,18,'premium','2025-04-07 02:10:00','2025-05-07 02:10:00',8.99),(21,19,'premium','2025-04-07 13:30:00','2025-05-07 13:30:00',8.99),(22,21,'premium','2025-04-08 18:50:00','2025-05-08 18:50:00',8.99),(23,22,'premium','2025-04-09 22:20:00','2025-05-09 22:20:00',8.99),(24,23,'premium','2025-04-10 15:40:00','2025-05-10 15:40:00',8.99),(25,6,'premium','2025-04-12 12:00:00','2025-05-12 12:00:00',8.99),(26,24,'premium','2025-04-12 13:00:00','2025-05-12 13:00:00',8.99),(27,10,'premium','2025-04-12 14:00:00','2025-05-12 14:00:00',8.99),(28,11,'premium','2025-04-12 15:00:00','2025-05-12 15:00:00',8.99),(29,3,'premium','2025-04-12 16:00:00','2025-05-12 16:00:00',8.99),(30,27,'premium','2025-04-12 17:00:00','2025-05-12 17:00:00',8.99),(31,19,'premium','2025-04-12 18:00:00','2025-05-12 18:00:00',8.99),(32,29,'premium','2025-04-12 19:00:00','2025-05-12 19:00:00',8.99),(33,25,'premium','2025-04-12 20:00:00','2025-05-12 20:00:00',8.99),(34,30,'premium','2025-04-12 21:00:00','2025-05-12 21:00:00',8.99),(35,26,'premium','2025-04-12 22:00:00','2025-05-12 22:00:00',8.99),(36,31,'premium','2025-04-12 23:00:00','2025-05-12 23:00:00',8.99),(37,32,'premium','2025-04-13 00:00:00','2025-05-13 00:00:00',8.99),(38,33,'premium','2025-04-13 01:00:00','2025-05-13 01:00:00',8.99),(39,34,'premium','2025-04-13 02:00:00','2025-05-13 02:00:00',8.99),(40,35,'premium','2025-04-13 03:00:00','2025-05-13 03:00:00',8.99),(41,36,'premium','2025-04-13 04:00:00','2025-05-13 04:00:00',8.99),(42,37,'premium','2025-04-13 05:00:00','2025-05-13 05:00:00',8.99),(43,38,'premium','2025-04-13 06:00:00','2025-05-13 06:00:00',8.99),(44,39,'premium','2025-04-13 07:00:00','2025-05-13 07:00:00',8.99),(45,40,'premium','2025-04-13 08:00:00','2025-05-13 08:00:00',8.99),(46,41,'premium','2025-04-13 09:00:00','2025-05-13 09:00:00',8.99),(47,42,'premium','2025-04-13 10:00:00','2025-05-13 10:00:00',8.99),(48,43,'premium','2025-04-13 11:00:00','2025-05-13 11:00:00',8.99),(49,44,'premium','2025-04-13 12:00:00','2025-05-13 12:00:00',8.99),(50,45,'premium','2025-04-13 13:00:00','2025-05-13 13:00:00',8.99),(51,46,'premium','2025-04-13 14:00:00','2025-05-13 14:00:00',8.99),(52,47,'premium','2025-04-13 15:00:00','2025-05-13 15:00:00',8.99),(53,48,'premium','2025-04-13 16:00:00','2025-05-13 16:00:00',8.99),(54,49,'premium','2025-04-13 17:00:00','2025-05-13 17:00:00',8.99),(55,50,'premium','2025-04-13 18:00:00','2025-05-13 18:00:00',8.99),(56,51,'premium','2025-04-13 19:00:00','2025-05-13 19:00:00',8.99),(57,52,'premium','2025-04-13 20:00:00','2025-05-13 20:00:00',8.99),(58,53,'premium','2025-04-13 21:00:00','2025-05-13 21:00:00',8.99),(59,54,'premium','2025-04-13 22:00:00','2025-05-13 22:00:00',8.99),(60,55,'premium','2025-04-13 23:00:00','2025-05-13 23:00:00',8.99),(61,56,'premium','2025-04-14 00:00:00','2025-05-14 00:00:00',8.99),(62,57,'premium','2025-04-14 01:00:00','2025-05-14 01:00:00',8.99),(63,58,'premium','2025-04-14 02:00:00','2025-05-14 02:00:00',8.99),(64,59,'premium','2025-04-14 03:00:00','2025-05-14 03:00:00',8.99),(65,60,'premium','2025-04-14 04:00:00','2025-05-14 04:00:00',8.99),(66,61,'premium','2025-04-14 05:00:00','2025-05-14 05:00:00',8.99),(67,62,'premium','2025-04-14 06:00:00','2025-05-14 06:00:00',8.99),(68,63,'premium','2025-04-14 07:00:00','2025-05-14 07:00:00',8.99);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,5,'obrigado, eu estava com duvidas sobre cardinalidade e voce conseguiu tirar elas'),(2,5,'O segundo exercicio eu tive muita duvida na hora de fazer, mas agora conseguir entender, vlw'),(3,5,'puxa, na aula achei que era muito dificil, mas depois que vi seu video percebi o quao facil e, nota 10.'),(4,4,NULL),(5,5,'você explica bem demais, professor top, 5 estrelas!'),(6,5,'pelo seu video consegui entender, muito obrigado.'),(7,4,'obrigado, tenho prova amanhã e tava sem saber da matéria.'),(8,3,NULL),(9,5,'Você explica muito bem professor.'),(10,5,'Obrigado pelo video, meu professor não passou oracle e eu queria aprender mais sobre.'),(11,4,NULL),(12,5,'muito bom o video.'),(13,5,'nossa, mongodb é mais facil que eu imaginei, tu explica muito bem.'),(14,5,NULL),(15,4,'Parabéns, explica muito bem'),(16,5,'nossa, explição top, 5 estrelas.'),(17,5,'meu professor tinha passado uns exercicios q eu não tinha entendido, mas dps de ver seu video ficou facil fazer, vlw.'),(18,4,'quando a minha professora passou listas eu tinha achado muito dificil, mas agora vi q é bem simples.'),(19,4,NULL),(20,5,'só consigo aprender com vídeos, obrigado.'),(21,5,'queria que meu professor explicasse desse jeito, deixou tudo tão claro'),(22,4,NULL),(23,5,'Professora top, explica demais'),(24,4,NULL),(25,5,'Finalmente consegui entender consultas complexas no SQL.'),(26,5,'Explicação sobre chaves estrangeiras ficou muito clara, obrigado.'),(27,3,NULL),(28,5,'Não sabia nada de Vue.js, mas agora já consigo fazer meu primeiro projeto.'),(29,5,'Cara, nunca achei que entenderia recursividade, muito bom!'),(30,4,NULL),(31,5,'Eu estava apanhando para entender Docker, seu vídeo salvou meu projeto.'),(32,5,'Ótima explicação sobre API GraphQL, muito obrigado!'),(33,5,'Consegui fazer meu primeiro CRUD em Laravel, graças ao vídeo.'),(34,4,NULL),(35,5,'Explicação sobre versionamento Git foi excelente, obrigado!'),(36,5,'Eu precisava entender Entity Framework e seu vídeo foi perfeito.'),(37,3,NULL),(38,5,'Que explicação maravilhosa sobre testes automatizados, gostei muito!'),(39,5,'A didática é excelente, parabéns pelo conteúdo.'),(40,4,NULL),(41,5,'Muito bom! Nunca entendi bem regex, agora ficou claro.'),(42,5,'Gostei muito da explicação sobre AWS, ajudou bastante no meu trabalho.'),(43,5,'Aula sobre segurança em aplicações web foi incrível, parabéns.'),(44,3,NULL),(45,5,'Que curso sensacional, aprendi muito rápido!'),(46,4,'Gostei bastante, mas poderia ter mais exemplos.'),(47,5,'Finalmente entendi relacionamento entre tabelas, obrigado!'),(48,5,'Professor top demais, explica muito bem.'),(49,3,'Achei um pouco corrido, mas no geral foi bom.'),(50,4,'Explicação sobre autenticação JWT foi muito boa.'),(51,5,'Melhor explicação sobre React que já vi!'),(52,5,'Aprendi a usar API REST com Node.js graças a você.'),(53,4,'Faltou explicar um pouco mais sobre hooks, mas foi ótimo.'),(54,5,'Explicação sobre banco de dados foi perfeita, nota 10!'),(55,5,'Muito obrigado, consegui passar na prova de programação.'),(56,4,'Conteúdo excelente, mas o áudio poderia ser melhor.'),(57,5,'Gostei muito da dinâmica do curso. Recomendo!'),(58,5,'Aprendi sobre Docker de forma prática e fácil.'),(59,5,'Explicação sobre autenticação no Spring Boot foi perfeita.'),(60,4,'Material ótimo, só acho que poderia ter mais exercícios.'),(61,4,'Explicação boa, mas o áudio poderia melhorar.'),(62,5,'Curso excelente! Muito didático e prático.'),(63,4,'Gostei bastante, mas poderia ter mais exercícios de fixação.'),(64,5,'Professor incrível, metodologia ótima!'),(65,4,'Bom curso, mas senti falta de exemplos mais avançados.'),(66,5,'Material didático de ótima qualidade, parabéns!'),(67,4,'Gostei da didática, mas poderia melhorar a parte de redes.'),(68,5,'Melhor curso de programação web que já fiz!'),(69,5,'Explicação sobre microserviços muito clara e prática.'),(70,5,'Amei o curso! Super recomendo para quem está começando.');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criador`
--

LOCK TABLES `criador` WRITE;
/*!40000 ALTER TABLE `criador` DISABLE KEYS */;
INSERT INTO `criador` VALUES (1,'Adecio','adeciobanco@gmail.com','adeciofazsql','123.456.789-01','12.345.678-9','ciencia de dados'),(2,'Rodolfo','rodolfo.bispo@gmail.com','theresameuamor','901.234.567-89','90.123.456-7','engenharia de software'),(3,'Sandra','sandra_espanha@gmail.com','holachicosquetal','123.345.678-90','12.345.678-9	','desenvolvimento web'),(4,'Cassio','cassioabel','csml10223005','234.456.789-01','23.456.789-0','ciencia da computacao'),(5,'Elaine','elaine1978@gmail.com','elaine2874617491','345.678.901-23','34.567.890-1	','desenvolvimento mobile'),(6,'Joaquim','joaquim.rocha@gmail.com','vitalicioseilauimasenha','789.012.345-67','78.901.234-5','analise e desenvolvimento de sistemas '),(7,'Francisco','francisco.oliveira@gmail.com','umasenhamuitolouca ','456.789.012-34','45.678.901-2','administracao de banco de dados'),(8,'Giovana','Giovanamaria_flor@gmail.com','giovanamariaflorjj26','678.901.234-56','67.890.123-4','arquitetura de software'),(9,'Regina','regina.santos@gmail.com','todasassenhasjesusamado','567.789.012-34','56.789.012-3','engenharia da computacao'),(10,'Paulo','paulogustavo@gmail.com','4567324632','890.123.456-78','89.012.345-6','ciencia de dados'),(11,'Elisangela','profelisangela@gmail.com','professoraelisangeladeti','716.206.990-87','29.990.339-4','analise e desenvolvimento de sistemas'),(12,'Joel','joeldacomputacao@gmail.com','joelformadoemcomputacao','434.289.500-54','38.812.527-5','ciencia da computacao'),(13,'Vladimir','vladimiroensino@gmail.com','euensinomuitobem','575.418.020-93','42.399.415-3','desenvolvimento web'),(14,'Oscar','oscar.ramalho@gmail.com','7573819475981','729.997.470-39','11.956.853-6','engenharia de software'),(15,'Rosimar','rosimar.gouveia@gmail.com','tenhomuitasenhas','861.653.230-73','23.453.033-9','administracao de banco de dados'),(16,'Maria','maria.silva@gmail.com','senhacomum123','123.987.654-32','21.234.567-8','engenharia de software'),(17,'Carlos','carlos.souza@gmail.com','supersenha789','321.654.987-54','22.345.678-9','analise de sistemas'),(18,'Fernanda','fernanda.mendes@gmail.com','senha123456','654.987.321-00','34.567.890-1','desenvolvimento de software'),(19,'Paula','paula.rodrigues@gmail.com','senhaadmin321','876.543.210-12','45.678.901-2','arquitetura de sistemas'),(20,'João','joao.pereira@gmail.com','senhasecreta234','432.109.876-32','56.789.012-3','ciencia de dados'),(21,'Tatiane','tatiane.oliveira@gmail.com','tatiane@123','765.432.109-76','67.890.123-4','engenharia de computacao'),(22,'Marcos','marcos.santos@gmail.com','senha@marcos2025','234.567.890-56','78.901.234-5','desenvolvimento mobile'),(23,'Roberta','roberta.silveira@gmail.com','senha2023roberta','543.210.987-65','89.012.345-6','analise de sistemas'),(24,'Henrique','henrique.costa@gmail.com','senha123henrique','654.321.098-76','90.123.456-7','ciencia da computacao'),(25,'Ana','ana.carvalho@gmail.com','12345ana','987.654.321-01','21.234.567-8','desenvolvimento web'),(26,'Juliano','juliano.ferreira@gmail.com','senha_juliano','876.543.210-09','34.567.890-1','engenharia de software'),(27,'Lívia','livia.morais@gmail.com','liviamorais@123','765.432.109-87','45.678.901-2','arquitetura de software'),(28,'Gustavo','gustavo.alves@gmail.com','gustavo123','432.109.876-33','56.789.012-3','ciencia de dados'),(29,'Bruna','bruna.santos@gmail.com','senha123bruna','321.654.987-65','67.890.123-4','desenvolvimento de software'),(30,'Eduardo','eduardo.silveira@gmail.com','senhaeduardo2025','234.567.890-45','78.901.234-5','analise e desenvolvimento de sistemas'),(31,'Reinaldo','Reinaldo.professor@gmail.com','reinaldotiinforma','745.145.567-65','51.653.895-1','administracao de banco de dados'),(32,'Patrícia Gomes','patricia.gomes@gmail.com','senhaPat32','111.222.333-44','14.256.789-0','ciência da computação'),(33,'Marcelo Antunes','marcelo.antunes@gmail.com','senhaMar33','555.666.777-88','15.678.945-2','sistemas de informação'),(34,'Fernanda Costa','fernanda.costa@gmail.com','senhaFer34','888.777.666-55','16.987.543-1','engenharia de software'),(35,'Lucas Almeida','lucas.almeida@gmail.com','senhaLuc35','222.333.444-55','17.123.456-7','análise de sistemas'),(36,'Juliana Souza','juliana.souza@gmail.com','senhaJul36','333.222.111-00','18.654.321-8','tecnologia da informação'),(37,'Bruno Ramos','bruno.ramos@gmail.com','senhaBru37','666.555.444-22','19.852.741-3','segurança da informação'),(38,'Camila Rocha','camila.rocha@gmail.com','senhaCam38','444.555.666-77','20.369.258-6','redes de computadores'),(39,'Gabriel Martins','gabriel.martins@gmail.com','senhaGab39','555.444.333-22','21.147.369-5','engenharia da computação'),(40,'Isabela Nunes','isabela.nunes@gmail.com','senhaIsa40','999.888.777-66','22.258.369-4','banco de dados'),(41,'Thiago Dias','thiago.dias@gmail.com','senhaThi41','777.666.555-33','23.753.486-7','desenvolvimento de software'),(42,'Aline Barros','aline.barros@gmail.com','senhaAli42','444.333.222-11','24.357.258-3','engenharia de dados'),(43,'Rodrigo Pereira','rodrigo.pereira@gmail.com','senhaRod43','123.321.456-65','25.159.852-2','programação de sistemas'),(44,'Larissa Lima','larissa.lima@gmail.com','senhaLar44','654.789.321-09','26.456.123-9','ciência de dados'),(45,'Diego Fernandes','diego.fernandes@gmail.com','senhaDie45','789.321.654-87','27.789.456-0','programação web'),(46,'Vanessa Alves','vanessa.alves@gmail.com','senhaVan46','147.258.369-88','28.987.654-1','engenharia de redes'),(47,'Paulo Victor','paulo.victor@gmail.com','senhaPau47','258.369.147-77','29.321.987-2','análise de sistemas'),(48,'Tatiane Melo','tatiane.melo@gmail.com','senhaTat48','369.147.258-66','30.123.654-3','gestão de TI'),(49,'Fábio Monteiro','fabio.monteiro@gmail.com','senhaFab49','741.963.852-70','31.963.741-4','segurança cibernética'),(50,'Renata Carvalho','renata.carvalho@gmail.com','senhaRen50','963.852.741-80','32.741.852-5','inteligência artificial'),(51,'César Silva','cesar.silva@gmail.com','senhaCes51','852.741.963-90','33.963.852-6','programação de aplicações'),(52,'Luciana Prado','luciana.prado@gmail.com','senhaLuc52','951.357.456-10','34.789.123-7','gestão de projetos de TI'),(53,'Maurício Lopes','mauricio.lopes@gmail.com','senhaMau53','159.456.357-20','35.123.456-8','desenvolvimento mobile'),(54,'Elaine Campos','elaine.campos@gmail.com','senhaEla54','357.654.159-30','36.456.789-9','engenharia elétrica'),(55,'André Sampaio','andre.sampaio@gmail.com','senhaAnd55','654.159.357-40','37.654.987-0','ciência da computação'),(56,'Cristina Moraes','cristina.moraes@gmail.com','senhaCris56','159.753.486-50','38.123.789-1','engenharia de computação'),(57,'Rafael Azevedo','rafael.azevedo@gmail.com','senhaRaf57','357.486.159-60','39.654.123-2','arquitetura de software'),(58,'Bruna Teixeira','bruna.teixeira@gmail.com','senhaBru58','486.159.753-70','40.357.951-3','engenharia de redes'),(59,'Henrique Pires','henrique.pires@gmail.com','senhaHen59','753.486.159-80','41.753.159-4','desenvolvimento full stack'),(60,'Natália Ribeiro','natalia.ribeiro@gmail.com','senhaNat60','159.753.486-99','42.951.753-5','banco de dados');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (5,1,NULL,'playlist da juliana','privada'),(6,NULL,2,'aulas de python','publica'),(7,3,NULL,'playlist do Ivan','privada'),(8,4,NULL,'playlist da Heloisa','privada'),(9,NULL,5,'aulas de react ','publica'),(10,NULL,1,'aula de banco de dados','publica'),(11,13,NULL,'bancos da ba','privada'),(12,7,NULL,'minha playlist','publica'),(13,17,NULL,'programação','privada'),(14,5,NULL,'playlist de back-end','privada'),(15,6,NULL,'playlist de fundamentos de programação','privada'),(16,7,NULL,'playlist do Marcos','privada'),(17,8,NULL,'playlist de algoritmos','privada'),(18,9,NULL,'playlist de design patterns','privada'),(19,10,NULL,'playlist de SQL avançado','privada'),(20,11,NULL,'playlist de MongoDB','privada'),(21,12,NULL,'playlist de Vue.js','privada'),(22,13,NULL,'playlist de Angular','privada'),(23,14,NULL,'playlist de C#','privada'),(24,15,NULL,'playlist de Flutter','privada'),(25,NULL,1,'aulas de JavaScript','publica'),(26,NULL,2,'aulas de Ruby','publica'),(27,NULL,3,'aulas de PHP','publica'),(28,NULL,4,'aulas de TypeScript','publica'),(29,NULL,5,'aulas de banco de dados','publica'),(30,NULL,6,'aulas de Docker','publica'),(31,NULL,7,'aulas de Git','publica'),(32,NULL,8,'aulas de API REST','publica'),(33,NULL,9,'aulas de arquitetura de software','publica'),(34,NULL,10,'aulas de Kubernetes','publica'),(35,NULL,11,'aulas de AWS Cloud','publica'),(36,NULL,12,'aulas de Docker Avançado','publica'),(37,NULL,13,'aulas de Machine Learning','publica'),(38,NULL,14,'aulas de Cybersecurity','publica'),(39,NULL,15,'aulas de Blockchain','publica'),(40,NULL,16,'aulas de IoT','publica'),(41,NULL,17,'aulas de DevOps','publica'),(42,NULL,18,'aulas de GraphQL','publica'),(43,NULL,19,'aulas de Next.js','publica'),(44,NULL,20,'aulas de Rust','publica'),(45,NULL,21,'aulas de Golang','publica'),(46,16,NULL,'playlist da Ana - Python','privada'),(47,17,NULL,'playlist do Carlos - Java','privada'),(48,18,NULL,'playlist da Beatriz - SQL','privada'),(49,19,NULL,'playlist do Daniel - React','privada'),(50,20,NULL,'playlist da Eliana - Node.js','privada'),(51,21,NULL,'playlist do Felipe - MongoDB','privada'),(52,22,NULL,'playlist da Gabriela - AWS','privada'),(53,23,NULL,'playlist do Henrique - Docker','privada'),(54,24,NULL,'playlist da Isabela - Cybersecurity','privada'),(55,25,NULL,'playlist do João - Git','privada'),(56,NULL,22,'aulas de TypeScript Avançado','publica'),(57,NULL,23,'aulas de API REST','publica'),(58,NULL,24,'aulas de Microserviços','publica'),(59,NULL,25,'aulas de Kafka','publica'),(60,NULL,26,'aulas de RabbitMQ','publica'),(61,NULL,27,'aulas de Elasticsearch','publica'),(62,NULL,28,'aulas de Redis','publica'),(63,NULL,29,'aulas de NestJS','publica'),(64,NULL,30,'aulas de Deno','publica'),(65,NULL,31,'aulas de Svelte','publica'),(66,26,NULL,'playlist da Karina - Kubernetes','privada'),(67,27,NULL,'playlist do Lucas - DevOps','privada'),(68,28,NULL,'playlist da Mariana - Python','privada'),(69,29,NULL,'playlist do Natan - Java','privada'),(70,30,NULL,'playlist da Olivia - SQL','privada'),(71,31,NULL,'playlist do Pedro - React','privada'),(72,32,NULL,'playlist da Quenia - Node.js','privada'),(73,33,NULL,'playlist do Rafael - MongoDB','privada'),(74,34,NULL,'playlist da Sofia - AWS','privada'),(75,35,NULL,'playlist do Thiago - Docker','privada'),(76,NULL,32,'aulas de Flutter','publica'),(77,NULL,33,'aulas de Firebase','publica'),(78,NULL,34,'aulas de React Native','publica'),(79,NULL,35,'aulas de Swift','publica'),(80,NULL,36,'aulas de Kotlin','publica'),(81,NULL,37,'aulas de CI/CD','publica'),(82,NULL,38,'aulas de Terraform','publica'),(83,NULL,39,'aulas de Ansible','publica'),(84,NULL,40,'aulas de Prometheus','publica'),(85,NULL,41,'aulas de Grafana','publica'),(86,36,NULL,'playlist da Úrsula - Cybersecurity','privada'),(87,37,NULL,'playlist do Victor - Git','privada'),(88,38,NULL,'playlist da Wanessa - TypeScript','privada'),(89,39,NULL,'playlist do Xavier - API REST','privada'),(90,40,NULL,'playlist da Yara - Microserviços','privada'),(91,41,NULL,'playlist do Zeca - Kafka','privada'),(92,42,NULL,'playlist da Alice - Redis','privada'),(93,43,NULL,'playlist do Bruno - NestJS','privada'),(94,44,NULL,'playlist da Clara - Deno','privada'),(95,45,NULL,'playlist do Diego - Svelte','privada'),(96,46,NULL,'playlist da Elena - Flutter','privada'),(97,47,NULL,'playlist do Fabio - Firebase','privada');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_video`
--

LOCK TABLES `playlist_video` WRITE;
/*!40000 ALTER TABLE `playlist_video` DISABLE KEYS */;
INSERT INTO `playlist_video` VALUES (1,5,1,'2025-03-11',1),(2,5,2,'2025-03-11',2),(3,5,3,'2025-03-12',3),(4,6,1,'2025-03-12',1),(5,6,2,'2025-03-13',2),(6,6,4,'2025-03-13',3),(7,7,1,'2025-03-14',1),(8,7,3,'2025-03-14',2),(9,8,4,'2025-03-15',1),(10,8,3,'2025-03-15',2),(11,8,1,'2025-03-15',3),(12,9,2,'2025-03-16',1),(13,9,1,'2025-03-16',2),(14,9,3,'2025-03-16',3),(15,10,1,'2025-03-17',1),(16,10,2,'2025-03-17',2),(17,10,3,'2025-03-17',3),(18,10,4,'2025-03-17',4),(19,11,1,'2025-03-17',1),(20,11,7,'2025-03-17',2),(21,11,10,'2025-03-17',3),(22,11,14,'2025-03-17',4),(23,11,15,'2025-03-18',5),(24,12,12,'2025-03-18',1),(25,12,5,'2025-03-18',2),(26,13,6,'2025-03-18',1),(27,13,9,'2025-03-18',2),(28,14,14,'2025-03-21',1),(29,14,15,'2025-03-21',2),(30,14,16,'2025-03-21',3),(31,15,17,'2025-03-22',1),(32,15,18,'2025-03-22',2),(33,15,19,'2025-03-22',3),(34,16,20,'2025-03-23',1),(35,16,21,'2025-03-23',2),(36,16,22,'2025-03-23',3),(37,17,23,'2025-03-24',1),(38,17,24,'2025-03-24',2),(39,17,25,'2025-03-24',3),(40,18,26,'2025-03-25',1),(41,18,27,'2025-03-25',2),(42,18,28,'2025-03-25',3),(43,19,29,'2025-03-26',1),(44,19,30,'2025-03-26',2),(45,20,1,'2025-03-27',1),(46,20,2,'2025-03-27',2),(47,20,3,'2025-03-27',3),(48,21,4,'2025-03-28',1),(49,21,5,'2025-03-28',2),(50,21,6,'2025-03-28',3),(51,22,7,'2025-03-29',1),(52,22,8,'2025-03-29',2),(53,22,9,'2025-03-29',3),(54,23,10,'2025-03-30',1),(55,23,11,'2025-03-30',2),(56,23,12,'2025-03-30',3),(57,24,13,'2025-03-31',1),(58,24,14,'2025-03-31',2),(59,24,15,'2025-03-31',3),(60,25,16,'2025-04-01',1),(61,25,17,'2025-04-01',2),(62,25,18,'2025-04-01',3),(63,26,19,'2025-04-02',1),(64,26,20,'2025-04-02',2),(65,26,21,'2025-04-02',3),(66,27,22,'2025-04-03',1),(67,27,23,'2025-04-03',2),(68,27,24,'2025-04-03',3),(69,28,25,'2025-04-04',1),(70,28,26,'2025-04-04',2),(71,28,27,'2025-04-04',3),(72,29,28,'2025-04-05',1),(73,29,29,'2025-04-05',2),(74,29,30,'2025-04-05',3),(75,30,31,'2025-04-06',1),(76,30,32,'2025-04-06',2),(77,30,33,'2025-04-06',3),(78,31,34,'2025-04-07',1),(79,31,35,'2025-04-07',2),(80,31,36,'2025-04-07',3),(81,32,37,'2025-04-08',1),(82,32,38,'2025-04-08',2),(83,32,39,'2025-04-08',3),(84,33,40,'2025-04-09',1),(85,33,41,'2025-04-09',2),(86,33,42,'2025-04-09',3),(87,34,43,'2025-04-10',1),(88,34,44,'2025-04-10',2),(89,34,45,'2025-04-10',3),(90,35,46,'2025-04-11',1),(91,35,47,'2025-04-11',2),(92,35,48,'2025-04-11',3),(93,36,49,'2025-04-12',1),(94,36,50,'2025-04-12',2),(95,37,1,'2025-04-13',1),(96,37,2,'2025-04-13',2),(97,37,3,'2025-04-13',3),(98,38,4,'2025-04-14',1),(99,38,5,'2025-04-14',2),(100,38,6,'2025-04-14',3),(101,39,7,'2025-04-15',1),(102,39,8,'2025-04-15',2),(103,39,9,'2025-04-15',3),(104,40,10,'2025-04-16',1),(105,40,11,'2025-04-16',2),(106,40,12,'2025-04-16',3),(107,41,13,'2025-04-17',1),(108,41,14,'2025-04-17',2),(109,41,15,'2025-04-17',3),(110,42,16,'2025-04-18',1),(111,42,17,'2025-04-18',2),(112,42,18,'2025-04-18',3),(113,43,19,'2025-04-19',1),(114,43,20,'2025-04-19',2),(115,43,21,'2025-04-19',3),(116,44,22,'2025-04-20',1),(117,44,23,'2025-04-20',2),(118,44,24,'2025-04-20',3),(119,45,25,'2025-04-21',1),(120,45,26,'2025-04-21',2),(121,45,27,'2025-04-21',3),(122,46,28,'2025-04-22',1),(123,46,29,'2025-04-22',2),(124,46,30,'2025-04-22',3),(125,47,31,'2025-04-23',1),(126,47,32,'2025-04-23',2),(127,47,33,'2025-04-23',3),(128,48,34,'2025-04-24',1),(129,48,35,'2025-04-24',2),(130,48,36,'2025-04-24',3),(131,49,37,'2025-04-25',1),(132,49,38,'2025-04-25',2),(133,49,39,'2025-04-25',3),(134,50,40,'2025-04-26',1),(135,50,41,'2025-04-26',2),(136,50,42,'2025-04-26',3),(137,51,43,'2025-04-27',1),(138,51,44,'2025-04-27',2),(139,51,45,'2025-04-27',3),(140,52,46,'2025-04-28',1),(141,52,47,'2025-04-28',2),(142,52,48,'2025-04-28',3),(143,53,49,'2025-04-29',1),(144,53,50,'2025-04-29',2),(145,54,1,'2025-04-30',1),(146,54,2,'2025-04-30',2),(147,54,3,'2025-04-30',3),(148,55,4,'2025-05-01',1),(149,55,5,'2025-05-01',2),(150,55,6,'2025-05-01',3);
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
  `pergunta_resposta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juliana','jujubastos06@gmail.com','amominhamae2006','python, portugol, java','Escola Jardim das Flores'),(2,'Gabriel','gabsferreira@gmail.com','31012007','php, javascript','Rex'),(3,'Ivan','ivan_belario@gmail.com','ivfutebol@','typescript, java, javascript','São Paulo'),(4,'Heloísa','helonunes_19@gmail.com','hntvlpostag','mysql, mongodb, oracle','Rua das Palmeiras'),(5,'Maria','maria.oliveira@gmail.com','456123987','java, php','Lasanha'),(6,'Lucas','lucas.souza@gmail.com','789653413','C++, ruby','Vingadores'),(7,'Bruno','bruno.martins@gmail.com','48237589372','kotlin, java, javascript','Colégio Estrela do Norte'),(8,'Rodrigo','rodlima.01@gmail.com','5738736347185','react, java','Thor'),(9,'Thiago','titigas_4910@gmail.com','titigasloverock','mysql, oracle','Rio de Janeiro'),(10,'Camila','camis_viera@gmail.com','araciosvaldokellycamila','html, css, java','Avenida Brasil'),(11,'Jonas','jonas103452@gmail.com','14356335631','python, php','Pizza'),(12,'Carla','carlinhabale@gmail.com','dancaevidas2','javascript, java, react, css','Harry Potter'),(13,'Barbara','barezeil.lima@gmail.com','slalesbiana','mysql, mongodb, oracle','Escola Vida Nova'),(14,'Bruno','brunotava@gmail.com','essasenhatoperson','javascript, php','Bob'),(15,'Renato','renatolyra@gmail.com','shirtlessrenato@34','kotlin, java, python, php','Belo Horizonte'),(16,'Donatella','donatellaversace@gmai.com','elaericademais426','html, css, react','Rua das Laranjeiras'),(17,'Evandro','evandrodj@gmail.com','284756352musica','C++, php','Feijoada'),(18,'Fernando','fernand0_4168@gmail.com','f3rn4nd0arribameo','groovy, kotlin, java','Jurassic Park'),(19,'Rafael','rafinha5642@gmail.com','alunodafiec37485','react, css','Escola Nova Geração'),(20,'Thalita','thalita_35@gmail.com','friendlycompetition','java, javascript','Nina'),(21,'Natan','natan7831@gmail.com','ticriticam59482','typescript, javascript','Salvador'),(22,'Gustavo','gustavokido@gmail.com','muitacriatividadeveyr','mysql, oracle','Rua das Flores'),(23,'Paola','paola.tidinha@gmail.com','batatinhabemquentinha','kotlin, javascript','Sushi'),(24,'Hemilio','hemili2047@gmail.com','espaguetegostosinho','python, portugol','Star Wars'),(25,'Murilo ','murilosantanna@gmail.com','acabecomela','python, laravel','Escola Santo Antônio'),(26,'Adriana ','adrianaImai23@gmail.com','amaiordodbd','oracle, postgresql','Mel'),(27,'Diogo','diogo9865@gmail.com','esssasenhagenerica','java, javascript','Curitiba'),(28,'Ulisses','ulio.isses@gmail.com','ulisses6683251','php, python, C++','Rua do Comércio'),(29,'Calebe','calebe.lamaro@gmail.com','5421235886554','html, react, node.js','Hambúrguer'),(30,'Taynara','taynara2007@gmail.com','taynara584284957','ruby, scala','Titanic'),(31,'Omar','omar.camargo@gmail.com','senhasomar','kotlin, typescript','Escola Horizonte'),(32,'Bianca','bianca.roma@gmail.com','essasenha53315','mysql, postgresql','Luna'),(33,'Matheus','matheuskastro02gmail.com','muitaspessoasexistem','java, php','Manaus'),(34,'Oliver','Olivergringo@gmail.com','oimate39475284','flutter, react','Rua da Paz'),(35,'Danilo','danilo653@gmail.com','dalinosenhasahaha','python, C++','Strogonoff'),(36,'Eduardo ','edu85628@gmail.com','eduedududu','laravel, javascript','Matrix'),(37,'Ronaldo','ronnievaldo@gmail.com','6452856ronaldo','mysql, oracle','Colégio São Luiz'),(38,'Rayane','rayane.luara@gmail.com','sabrinacarpenter','python, php','Simba'),(39,'Gabriella','gabi3103@gmail.com','shadowofaman','javascript, mongodb','Recife'),(40,'Fabrício','fabs5628@gmail.com','fabricioanjos','ruby, C++','Rua Nova Esperança'),(41,'Manuella','amanu.bts@gmail.com','jiminjungkook','react, css, java','Nhoque'),(42,'Samuel','samuelalves@gmail.com','samucabiruta','kotlin, scala','O Senhor dos Anéis'),(43,'Thales','thales_3855@gmail.com','tha93754638','typescript, java','Escola Modelo'),(44,'Alessandra','ale.sandra@gmail.com','alessandra123','java, javascript','Doctor Who'),(45,'Ricardo','ricardo.dev@gmail.com','ricardoprograma','python, php','Campinas'),(46,'Patrícia','pati.info@gmail.com','patriciaweb','html, css, javascript','Pipoca'),(47,'Marcelo','marcelo.ti@gmail.com','marcelotecno','C++, python','Colégio Taquaral'),(48,'Fernanda','fernanda.dados@gmail.com','fernandadb','mysql, oracle','Salada'),(49,'Leonardo','leo.mobile@gmail.com','leonardomobile','react, java','Jogos Vorazes'),(50,'Amanda','amanda.cloud@gmail.com','amandacloud','python, php','Elias Fausto'),(51,'Gustavo','guga.ia@gmail.com','gustavoai','python, java','Sorvete'),(52,'Isabela','isa.frontend@gmail.com','isabelafront','react, javascript','Bridgerton'),(53,'Vinícius','vini.seguranca@gmail.com','viniciussecurity','java, php','Escola Araci Medeiros'),(54,'Letícia','le.analista@gmail.com','leticiaanalise','mysql, mongodb','Avenida Salvador Cruzeiro'),(55,'Sérgio','sergio.redes@gmail.com','sergiorede','C++, ruby','Brigadeiro'),(56,'Natália','nati.uxui@gmail.com','nataliaux','html, css','Pânico'),(57,'André','andre.devops@gmail.com','andrevops','java, javascript','Salto'),(58,'Julie','juli.testes@gmail.com','julitestes','python, portugol','Hôrtolandia'),(59,'Felipe','felipe.games@gmail.com','felipejogos','C++, php','LOL'),(60,'Mariana','mari.mobiledev@gmail.com','marianamobile','kotlin, java','Escona Nação Unida'),(61,'Thiago','thiago.iot@gmail.com','thiagoiot','typescript, javascript','Macarronada'),(62,'Camila','cami.suporte@gmail.com','camilasuporte','mysql, oracle','Rua Agatha Ramos'),(63,'Eduardo','edu.inteligencia@gmail.com','eduardoia','react, css','Jujuca');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_avaliacao`
--

LOCK TABLES `usuario_avaliacao` WRITE;
/*!40000 ALTER TABLE `usuario_avaliacao` DISABLE KEYS */;
INSERT INTO `usuario_avaliacao` VALUES (1,1,1,1,'2025-03-11 13:30:23','00:21:47'),(2,2,3,2,'2025-03-11 14:07:12','00:17:57'),(3,3,3,3,'2025-03-11 14:20:12','00:17:57'),(4,4,4,4,'2025-03-11 15:02:52','00:19:21'),(5,5,4,5,'2025-03-11 15:47:14','00:19:21'),(6,6,5,6,'2025-03-11 16:12:46','00:22:21'),(7,9,6,7,'2025-03-11 16:30:00','00:28:15'),(8,14,7,8,'2025-03-11 17:05:42','00:15:59'),(9,17,7,9,'2025-03-11 17:40:10','00:15:59'),(10,13,10,10,'2025-03-11 18:12:25','00:22:30'),(11,22,10,11,'2025-03-11 18:45:00','00:22:30'),(12,21,8,12,'2025-03-12 08:30:00','00:17:51'),(13,23,7,13,'2025-03-12 09:45:00','00:15:59'),(14,4,2,14,'2025-03-12 10:02:24','00:26:41'),(15,18,12,15,'2025-03-12 10:15:21','00:24:13'),(16,11,13,16,'2025-03-12 10:17:44','00:19:59'),(17,17,9,17,'2025-03-12 10:30:31','00:16:43'),(18,15,2,18,'2025-03-12 11:05:02','00:26:41'),(19,13,1,19,'2025-03-12 11:07:52','00:21:47'),(20,24,11,20,'2025-03-12 11:21:30','00:15:42'),(21,20,14,21,'2025-03-12 11:30:31','00:23:52'),(22,13,14,22,'2025-03-12 11:32:51','00:23:52'),(23,4,15,23,'2025-03-12 12:16:25','00:28:31'),(24,24,15,24,'2025-03-12 14:30:00','00:26:05'),(25,1,16,25,'2025-03-12 15:00:30','00:22:20'),(26,2,17,26,'2025-03-12 15:30:45','00:21:55'),(27,3,18,27,'2025-03-12 16:00:10','00:23:15'),(28,4,19,28,'2025-03-12 16:30:00','00:20:25'),(29,5,20,29,'2025-03-12 17:00:20','00:22:30'),(30,6,21,30,'2025-03-12 17:30:40','00:25:40'),(31,7,22,25,'2025-03-12 18:00:15','00:22:00'),(32,8,23,26,'2025-03-12 18:30:25','00:21:40'),(33,9,24,27,'2025-03-12 19:00:30','00:23:10'),(34,10,25,28,'2025-03-12 19:30:45','00:24:05'),(35,11,26,29,'2025-03-12 20:00:10','00:25:00'),(36,12,27,30,'2025-03-12 20:30:25','00:22:50'),(37,13,28,25,'2025-03-12 21:00:00','00:20:40'),(38,14,29,26,'2025-03-12 21:30:15','00:21:30'),(39,15,30,27,'2025-03-12 22:00:30','00:22:20');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,1,'APRENDENDO A FAZER MODELOS CONCEITUAIS','Nesse video, ensino como funciona um modelo conceitual e como criar ele','https://www.youtube.com/watch?v=BzQ7kkTZVIo','2025-03-10 12:12:42','banco de dados','conceitual'),(2,2,'PYTHON LISTAS. RESOLVENDO EXERCÍCIOS','Nesse video, estou resolvendo os exercicios que passei no final do video de semana passada, onde vimos um pouco sobre listas no python','https://www.youtube.com/watch?v=ZFAOxCyC4tU&list=PLNyCgqr3-6Amx5T15bW-7k70wtzk9ZK16&index=3','2025-03-10 12:42:18','programação','python'),(3,3,'HTML E CSS, APRENDA DO INÍCIO.','Nesse video, voce aprendera a comecar um projeto html e css.','https://www.youtube.com/watch?v=n_Etdr7Dbjs','2025-03-10 13:55:21','programação','html'),(4,4,'APRENDA O ESSENCIAL DE SEGURANÇA DA INFORMAÇÃO','Nesse video, aprenderemos quais sao os conceitos, fundamento e mecanismos de seguranca da informacao','https://www.youtube.com/watch?v=Gfh2bxe3hGU&pp=ygUac2VndXJhbsOnYSBkYSBpbmZvcm1hw6fDo28%3D','2025-03-10 14:06:41','ciencia da computação','segurança'),(5,5,'REACT NO MOBILE, APRENDA DESDE O INÍCIO.','Nesse video, veremos as funcionalidades do react no mobile e como ele se diferencia do react para html.','https://www.youtube.com/watch?v=71shcOjC_a4&pp=ygUMcmVhY3QgbW9iaWxl','2025-03-10 15:12:42','programação','react'),(6,6,'O BÁSICO DE C++, VEJA AQUI.','Nesse video, ensino basico de c++ para iniciantes e no final do video, resolvo um exercicio.','https://www.youtube.com/watch?v=McbdxZ3Se2U&pp=ygUKYysrIGJhc2ljbw%3D%3D','2025-03-10 16:00:30','programação','c++'),(7,7,'CRIANDO UM PROJETO NO MONGODB.','Nesse video, ensino a criar um banco de dados no mongodb.','https://www.youtube.com/watch?v=4dTI1mVLX3I&pp=ygUIbW9uZ28gZGI%3D','2025-03-10 17:15:00','banco de dados','mongodb'),(8,8,'COMO ESTRUTURAR UM PROJETO.','Nesse video, aprendemos a melhor forma de estruturar um projeto de programação.','https://www.youtube.com/watch?v=tbtQnKRttL8&pp=ygUqY29tbyBlc3RydXR1cmFyIHVtIHByb2pldG8gZGUgcHJvZ3JhbWHDp2Fv','2025-03-10 18:05:00','estrutura de software','projeto'),(9,9,'PHP, AULA 1.','Nesse video, ensino por meio de exercicios o basico de php.','https://www.youtube.com/watch?v=YCXtaBXgP5A&pp=ygUEcGhwINIHCQm9AIO1pN6f1A%3D%3D','2025-03-10 19:25:00','programação','php'),(10,10,'ORACLE, COMO FUNCIONA.','Nesse video, conhecemos o básico do oracle e o porque dele ser um banco de dados muito utilizado no mercado.','https://www.youtube.com/watch?v=DEDPnjh4E6s&list=PLJZRlbWeQvwI8nRzviH5ckXwYudrw2T56&index=4','2025-03-10 19:30:00','banco de dados','oracle'),(11,11,'PORTUGOL, O BÁSICO DA PROGRAMAÇÃO','Nesse video, aprenderemos o básico da programação, o portugol.','https://www.youtube.com/watch?v=jndzJGPlgrc&list=PLEFQxmyNTPkGcP-PVIDZAOP3bxAa0_caE','2025-03-10 19:45:00','programação','portugol'),(12,12,'JAVASCRIPT, COMO CRIAR UM PROJETO DE BACK END.','Nesse video, ensino como funciona o back end e sua programação.','https://www.youtube.com/watch?v=YeEX1s4M9xg','2025-03-10 20:00:30','programação','javascript'),(13,13,'COMO USAR CSS COM REACT.','Nesse video, ensino como implementar css no react.','https://www.youtube.com/watch?v=20hlPRPVMoU','2025-03-10 20:15:00','programação','css'),(14,14,'NOSQL, CONCEITOS E FUNCIONALIDADES','Nesse video, vemos as diferenças do mysql do nosql.','https://www.youtube.com/watch?v=1B64oqE8PLs','2025-03-11 12:30:00','banco de dados','nosql'),(15,15,'POSTGRESQL, CRIANDO UM BANCO DO ZERO.','Nesse video, ensino como trabalhar com o PostgreSQL.','https://www.youtube.com/watch?v=Ft3F7wWA-x8&list=PLucm8g_ezqNoAkYKXN_zWupyH6hQCAwxY&index=6','2025-03-11 13:15:00','banco de dados','postgresql'),(16,16,'APRENDENDO JAVA DO ZERO','Neste vídeo, ensino o básico do Java e como configurar o ambiente de desenvolvimento.','https://www.youtube.com/watch?v=QEvFjbsXvZo','2025-03-11 17:00:00','programação','java'),(17,17,'INICIANDO COM FLUTTER','Neste vídeo, abordo os primeiros passos para criar aplicativos com Flutter.','https://www.youtube.com/watch?v=1GT0jVxVgSg','2025-03-11 17:30:00','programação','flutter'),(18,18,'APRENDENDO REACT NATIVE','Neste vídeo, ensino a usar React Native para criar aplicativos móveis.','https://www.youtube.com/watch?v=2Mrd7qXIzsE','2025-03-11 18:00:00','programação','react native'),(19,19,'COMO FUNCIONA O GIT','Neste vídeo, explico o funcionamento básico do Git e como utilizá-lo em projetos.','https://www.youtube.com/watch?v=DR2JMbUn6xw','2025-03-11 18:30:00','programação','git'),(20,20,'APRENDENDO SQL BÁSICO','Neste vídeo, ensino o básico sobre SQL e como fazer consultas simples em um banco de dados.','https://www.youtube.com/watch?v=4P9H6OL63Uk','2025-03-11 19:00:00','banco de dados','sql'),(21,21,'TUTORIAL DE POO EM JAVA','Neste vídeo, ensino os conceitos básicos de Programação Orientada a Objetos em Java.','https://www.youtube.com/watch?v=32pZfBQWqLk','2025-03-11 19:30:00','programação','poo, java'),(22,22,'DIFERENÇA ENTRE MYSQL E POSTGRESQL','Neste vídeo, comparo os dois bancos de dados relacionais mais populares, MySQL e PostgreSQL.','https://www.youtube.com/watch?v=UFi0Ul5Zt-k','2025-03-11 20:00:00','banco de dados','mysql, postgresql'),(23,23,'CRIE SEU PRIMEIRO PROJETO EM LARAVEL','Neste vídeo, ensino como iniciar um projeto com o framework Laravel.','https://www.youtube.com/watch?v=gfh3hYzX_4s','2025-03-11 20:30:00','programação','laravel'),(24,24,'CONSTRUINDO UM CRONÔMETRO EM JAVASCRIPT','Neste vídeo, ensino como criar um cronômetro simples com JavaScript.','https://www.youtube.com/watch?v=pPjaHLPoCPk','2025-03-11 21:00:00','programação','javascript, cronômetro'),(25,25,'COMO CRIAR APPS NO ANDROID','Neste vídeo, ensino como criar um aplicativo simples para Android usando Java.','https://www.youtube.com/watch?v=h9JdkWREZ8E','2025-03-11 21:30:00','programação','android, java'),(26,26,'COMO FUNCIONA O VUE.JS','Neste vídeo, explico como o Vue.js pode facilitar o desenvolvimento de front-end.','https://www.youtube.com/watch?v=nz98Cm8K9Gs','2025-03-11 22:00:00','programação','vue.js'),(27,27,'DESENVOLVENDO UMA API COM NODE.JS','Neste vídeo, ensino como criar uma API utilizando o Node.js e Express.','https://www.youtube.com/watch?v=c5hhmPpOtM8','2025-03-11 22:30:00','programação','node.js, express'),(28,28,'PRINCÍPIOS DE DESIGN DE SOFTWARE','Neste vídeo, ensino os principais princípios de design de software que todo desenvolvedor deve conhecer.','https://www.youtube.com/watch?v=V9jICcT1u5o','2025-03-11 23:00:00','estrutura de software','design de software'),(29,29,'USANDO O FRAMEWORK ANGULAR','Neste vídeo, explico como trabalhar com o framework Angular para criar aplicações dinâmicas.','https://www.youtube.com/watch?v=knZ1ks1NlsE','2025-03-11 23:30:00','programação','angular'),(30,30,'AUTOMAÇÃO DE TESTES COM SELENIUM','Neste vídeo, ensino como automatizar testes de aplicativos web utilizando o Selenium.','https://www.youtube.com/watch?v=AoBYGZerf8k','2025-03-12 00:00:00','programação','selenium'),(31,31,'INTRODUÇÃO AO DOCKER','Neste vídeo, ensino os conceitos básicos de Docker e como criar seu primeiro container','https://www.youtube.com/watch?v=dOCKER01','2025-03-12 12:00:00','devops','docker'),(32,32,'PYTHON PARA DATA SCIENCE','Aprenda as bibliotecas essenciais de Python para análise de dados','https://www.youtube.com/watch?v=pyDS01','2025-03-12 13:00:00','data science','python, pandas'),(33,33,'CRIANDO APIS COM EXPRESS.JS','Tutorial completo para criar APIs RESTful com Node.js e Express','https://www.youtube.com/watch?v=expAPI01','2025-03-12 14:00:00','programação','node.js, express'),(34,34,'TUDO SOBRE GIT E GITHUB','Guia completo desde os comandos básicos até workflows avançados','https://www.youtube.com/watch?v=gitHUB02','2025-03-12 15:00:00','devops','git, github'),(35,35,'REACT HOOKS AVANÇADO','Domine os hooks mais avançados do React como useReducer e useContext','https://www.youtube.com/watch?v=rHKS01','2025-03-12 16:00:00','programação','react, hooks'),(36,36,'MONGODB PARA INICIANTES','Aprenda a instalar, configurar e fazer consultas básicas no MongoDB','https://www.youtube.com/watch?v=mongoDB02','2025-03-12 17:00:00','banco de dados','mongodb'),(37,37,'TYPESCRIPT DO ZERO','Introdução completa à linguagem TypeScript e seus benefícios','https://www.youtube.com/watch?v=tSCRIPT01','2025-03-12 18:00:00','programação','typescript'),(38,38,'DEVOPS: CI/CD COM GITHUB ACTIONS','Como implementar pipelines de integração contínua com GitHub Actions','https://www.youtube.com/watch?v=ghACT01','2025-03-12 19:00:00','devops','devops, ci/cd'),(39,39,'PYTHON E MYSQL','Como conectar aplicações Python ao MySQL e executar consultas','https://www.youtube.com/watch?v=pySQL01','2025-03-12 20:00:00','banco de dados','python, mysql'),(40,40,'REACT NATIVE: PRIMEIRO APP','Crie seu primeiro aplicativo mobile com React Native do zero','https://www.youtube.com/watch?v=rnAPP01','2025-03-12 21:00:00','mobile','react native'),(41,41,'MACHINE LEARNING BÁSICO','Introdução aos conceitos fundamentais de machine learning','https://www.youtube.com/watch?v=mlBAS01','2025-03-13 12:00:00','data science','machine learning'),(42,42,'JAVA SPRING BOOT','Como criar uma API REST com Spring Boot e Java','https://www.youtube.com/watch?v=sprNG01','2025-03-13 13:00:00','programação','java, spring'),(43,43,'REDUX PARA INICIANTES','Entenda o gerenciamento de estado com Redux em aplicações React','https://www.youtube.com/watch?v=rdX01','2025-03-13 14:00:00','programação','react, redux'),(44,44,'TESTES UNITÁRIOS EM JAVASCRIPT','Como escrever testes unitários eficientes com Jest','https://www.youtube.com/watch?v=jTEST01','2025-03-13 15:00:00','programação','javascript, testes'),(45,45,'KUBERNETES ESSENCIAL','Conceitos básicos e como orquestrar containers com Kubernetes','https://www.youtube.com/watch?v=k8S01','2025-03-13 16:00:00','devops','kubernetes'),(46,46,'PYTHON PARA AUTOMAÇÃO','Automatize tarefas repetitivas usando scripts Python','https://www.youtube.com/watch?v=pyAUTO01','2025-03-13 17:00:00','programação','python, automação'),(47,47,'ELASTICSEARCH: BUSCAS AVANÇADAS','Como implementar buscas eficientes com Elasticsearch','https://www.youtube.com/watch?v=elSTIC01','2025-03-13 18:00:00','banco de dados','elasticsearch'),(48,48,'MICROSSERVIÇOS COM NODE.JS','Arquitetura de microsserviços implementada com Node.js','https://www.youtube.com/watch?v=micROS01','2025-03-13 19:00:00','arquitetura','node.js, microsserviços'),(49,49,'FLUTTER: GERENCIAMENTO DE ESTADO','Técnicas avançadas para gerenciar estado em aplicações Flutter','https://www.youtube.com/watch?v=flUTTER02','2025-03-13 20:00:00','mobile','flutter'),(50,50,'SEGURANÇA EM APIS REST','Melhores práticas para proteger suas APIs RESTful','https://www.youtube.com/watch?v=secAPI01','2025-03-13 21:00:00','segurança','api, segurança');
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

-- Dump completed on 2025-04-28 21:54:13
