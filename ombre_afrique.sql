-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: resto
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clients` (
  `idClient` int NOT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `prenom` varchar(500) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `adresse` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,'Dupont','Jean','0601020304','10 rue des Lilas, Paris'),(2,'Martin','Claire','0605060708','25 avenue Victor Hugo, Lyon'),(3,'Nguyen','Thierry','0611121314','7 boulevard Haussmann, Marseille'),(4,'Diallo','Aminata','0622233445','3 rue de la Paix, Toulouse');
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Commande`
--

DROP TABLE IF EXISTS `Commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Commande` (
  `id_Commande` int NOT NULL,
  `id_client` int DEFAULT NULL,
  `id_serveur` int DEFAULT NULL,
  `num_table` int DEFAULT NULL,
  `date_heure` datetime DEFAULT NULL,
  `montant` decimal(5,2) DEFAULT NULL,
  `Type` enum('sur place','a_emporter','livraison') DEFAULT NULL,
  PRIMARY KEY (`id_Commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commande`
--

LOCK TABLES `Commande` WRITE;
/*!40000 ALTER TABLE `Commande` DISABLE KEYS */;
INSERT INTO `Commande` VALUES (1,101,201,1,'2025-06-02 12:30:00',45.50,'sur place'),(2,102,202,2,'2025-06-02 13:00:00',32.00,'a_emporter'),(3,103,203,3,'2025-06-02 13:45:00',60.75,'livraison'),(4,104,204,4,'2025-06-02 14:15:00',28.90,'sur place');
/*!40000 ALTER TABLE `Commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employé`
--

DROP TABLE IF EXISTS `Employé`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employé` (
  `id_Employé` int NOT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `prenom` varchar(500) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `adresse` varchar(250) DEFAULT NULL,
  `post` varchar(250) DEFAULT NULL,
  `salaire` decimal(10,5) DEFAULT NULL,
  `date_emboche` time DEFAULT NULL,
  PRIMARY KEY (`id_Employé`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employé`
--

LOCK TABLES `Employé` WRITE;
/*!40000 ALTER TABLE `Employé` DISABLE KEYS */;
INSERT INTO `Employé` VALUES (1,'Dupont','Jean','0612345678','10 rue de Lyon, Paris','Serveur',1800.00000,'08:00:00'),(2,'Martin','Claire','0678543210','25 avenue de la République, Marseille','Cuisinière',2100.00000,'09:15:00'),(3,'Nguyen','Paul','0754321098','5 rue Victor Hugo, Lille','Plongeur',1600.00000,'10:30:00'),(4,'Moreau','Sophie','0623456789','18 boulevard Haussmann, Paris','Responsable de salle',2500.00000,'07:45:00');
/*!40000 ALTER TABLE `Employé` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facture`
--

DROP TABLE IF EXISTS `Facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Facture` (
  `id_Facture` int NOT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `condition_paiement` text,
  `montant` decimal(8,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`id_Facture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facture`
--

LOCK TABLES `Facture` WRITE;
/*!40000 ALTER TABLE `Facture` DISABLE KEYS */;
INSERT INTO `Facture` VALUES (1,'Facture Eau','Paiement comptant',230.50,'2025-06-01'),(2,'Facture Électricité','30 jours',410.75,'2025-05-28'),(3,'Facture Internet','15 jours fin de mois',89.99,'2025-06-02'),(4,'Facture Gaz','60 jours',375.20,'2025-05-20');
/*!40000 ALTER TABLE `Facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fournisseur`
--

DROP TABLE IF EXISTS `Fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fournisseur` (
  `id_Fournisseur` int NOT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `adresse` varchar(250) DEFAULT NULL,
  `condition_paiement` text,
  `date_livraison` date DEFAULT NULL,
  `montant` decimal(8,2) DEFAULT NULL,
  `spécialité` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_Fournisseur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fournisseur`
--

LOCK TABLES `Fournisseur` WRITE;
/*!40000 ALTER TABLE `Fournisseur` DISABLE KEYS */;
INSERT INTO `Fournisseur` VALUES (1,'DistribBoissons','0611223344','12 rue des Vignes, Bordeaux','30 jours fin de mois','2025-06-01',1500.50,'Boissons'),(2,'Fraîcheur Légumes','0622334455','45 avenue du Marché, Nantes','Paiement à la livraison','2025-06-02',890.75,'Légumes'),(3,'Fromages du Terroir','0633445566','7 place des Alpes, Grenoble','60 jours','2025-06-03',1250.00,'Fromages'),(4,'Viandes & Co','0644556677','23 boulevard Carnot, Lille','Paiement comptant','2025-06-04',2100.99,'Viandes');
/*!40000 ALTER TABLE `Fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredient` (
  `id_Ingredient` int NOT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `description` text,
  `prix` decimal(6,2) DEFAULT NULL,
  `quantité` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`id_Ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (1,'Tomate','Tomates fraîches bio pour salades et sauces',1.20,50.00000),(2,'Mozzarella','Fromage italien pour pizza et pâtes',2.50,25.50000),(3,'Farine','Farine de blé type 55',0.85,100.00000),(4,'Huile d\'olive','Huile d’olive extra vierge première pression à froid',4.70,30.25000);
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plats`
--

DROP TABLE IF EXISTS `Plats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Plats` (
  `id_Plats` int NOT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `code_plat` varchar(500) DEFAULT NULL,
  `description` text,
  `prix` decimal(6,2) DEFAULT NULL,
  `catégorie` varchar(500) DEFAULT NULL,
  `temps_preparation` time DEFAULT NULL,
  PRIMARY KEY (`id_Plats`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plats`
--

LOCK TABLES `Plats` WRITE;
/*!40000 ALTER TABLE `Plats` DISABLE KEYS */;
INSERT INTO `Plats` VALUES (1,'Pizza Margherita','PZ001','Pizza classique avec tomate, mozzarella et basilic',8.50,'Italien','00:15:00');
/*!40000 ALTER TABLE `Plats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Table_Resto`
--

DROP TABLE IF EXISTS `Table_Resto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Table_Resto` (
  `num_table` int NOT NULL,
  `capacite` int DEFAULT NULL,
  `zone_emplacement` varchar(52) DEFAULT NULL,
  `etat` enum('libre','occupee','reservee') DEFAULT NULL,
  PRIMARY KEY (`num_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Table_Resto`
--

LOCK TABLES `Table_Resto` WRITE;
/*!40000 ALTER TABLE `Table_Resto` DISABLE KEYS */;
INSERT INTO `Table_Resto` VALUES (1,4,'Terrasse','libre'),(2,2,'Salle principale','occupee'),(3,6,'Salon privé','reservee'),(4,4,'Salle principale','libre');
/*!40000 ALTER TABLE `Table_Resto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03 15:47:54
