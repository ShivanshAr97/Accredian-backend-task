-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: referral
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `referredBy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `incNormalPage` int NOT NULL DEFAULT '0',
  `incVisitPage` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_email_key` (`email`),
  KEY `User_email_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'tttt','abc@gmttifl.com','$2b$12$qn0ZpnyoVNzu7ZB3qisUbeLSkvHvplc0XhN9cncPRWzLc8fDhjRpW','2024-07-06 19:51:00.973','2024-07-07 11:44:12.996','hor',23,13),(2,'tttryryt','abc@gmtutifl.com','$2b$12$SoaT7TEFL1yf77kJM5NcZOOqgH8vnUHPbIxSnNiuz7pGrG0LJAwFW','2024-07-06 19:51:15.325','2024-07-06 19:51:15.325','hrog',0,0),(3,'vxcb','agwg@gmail.com','Eetet','2024-07-06 19:51:00.933','2024-07-06 19:51:00.933','abc',0,0),(4,'tttryryt','abc@gmtutrrifl.com','$2b$12$omLbpwXr3fWgSmu4VeeBcOiAvealeM1/vDl5srIDS0PZOVW9Gri0i','2024-07-06 20:17:56.760','2024-07-06 20:17:56.760','hrog',0,0),(5,'tttryryt','abc@gmtutrrfifl.com','$2b$12$iE69i2zyuxCm3/lPLFyJG.ecgJPHVR1lcfds/C4fzZncIIt6cVYEm','2024-07-06 20:20:06.406','2024-07-06 20:20:06.406','hrog',0,0),(6,'tttryryt','abc@gmtutrrfifddl.com','$2b$12$NqY1MV7NwfBhjrTuRg1ku.cHDGqwsvyAGGj67jEKce/Ydjo8wsMva','2024-07-06 20:21:55.953','2024-07-06 20:21:55.953','hrog',0,0),(7,'tttryryt','abc@gmtutrrfifgddl.com','$2b$12$okDJYkTmEGTuMwEL5eVo6Oi6XpNqxN0P1Ysd4ry6aOhmFRAGkmkoG','2024-07-06 20:22:34.000','2024-07-06 20:22:34.000','hrog',0,0),(8,'tttryryt','abc@s.com','$2b$12$emp6s5ECcoqzdGBzihU29OKf8C7ORrtSW.ToQOZodtWySbunMsNHG','2024-07-06 20:23:11.291','2024-07-06 20:23:11.291','tttryryt',0,0),(9,'Shivansh Arora','shivansh.arora973@gmail.com','$2b$12$5o/0HPMyJan0.Av/b.GgIe71ktglmCKFT/lZd6CgSdi1Xq7BAmAkG','2024-07-06 20:47:28.380','2024-07-06 20:47:28.380','avee',0,0),(10,'cd','shivansh.arora73@gmail.com','$2b$12$juBq/yM7QsTdg1fDLPgWxu/DE07IHfJ9lodhr9HpMksAHU06hOro.','2024-07-06 20:48:38.821','2024-07-07 11:09:31.532','tttt',9,2),(11,'cdww','shivansh.adrora73@gmail.com','$2b$12$/1TGeDsRwxnjM6PM50cew.qzLuJQuP5j.bS.1a23HUEQXcIN6ET42','2024-07-06 20:49:39.371','2024-07-06 20:49:39.371','tttt',0,0),(12,'etet','etet@gmail.com','$2b$12$vfahu3cI2dLyl6Yzv.VgIOTTqovS28tQvwK0oC9O9u5bVKDSCIeOa','2024-07-06 20:51:00.225','2024-07-06 20:51:00.225','',0,0),(13,'e','et@gmail.com','$2b$12$XtNEQZ5XiNIgV9W14Zc8GuFzlpHo6F8V6yUbKjWLAxtKelyi9pX1C','2024-07-06 21:03:02.310','2024-07-06 21:03:02.310','',0,0),(14,'ee','eg@gmail.com','$2b$12$0GlKb9ArHTTVtDx1g254G.LpxtgQ1dMhA.ejBml9.9/gjUzkzC3Ou','2024-07-06 21:04:30.057','2024-07-06 21:04:30.057','',0,0),(15,'egeg','eg@th.com','$2b$12$VDEihPTiNjC3CMgaVncEXeSyxUeSOaOb3latiSrMelrdm1WMIiQ46','2024-07-06 21:07:42.642','2024-07-07 08:48:20.386','',6,4),(16,'egeg','eg@fth.com','$2b$12$OGI0hjY0RlR2gXTAGpuIpOxnJRzaq.k5Yu0aHofoNhEjY4hMck8BK','2024-07-06 21:08:27.890','2024-07-06 21:08:27.890','',0,0),(17,'neelhgle','krhn@jng','$2b$12$1huXAYCnssmBhseaCz/3m.sKesoWG3rtFNvDHE38pnkMW61gVpKQW','2024-07-07 07:52:48.234','2024-07-07 08:46:56.852','egeg',6,2),(18,'kjey;','jer@R','$2b$12$Os0YSIPsmYJO7ruLKBxD..7QKOuQQkBsjiE9TZnPHqvK4.vw8DuSO','2024-07-07 07:58:04.857','2024-07-07 07:58:04.857','egeg',0,0),(19,'kdm','lmh@knh','$2b$12$RnTDhxVmFiUwfIRjOVdv6uLdSPcaA.zTd6oo3dYi69wnW2UYht59q','2024-07-07 08:00:48.472','2024-07-07 08:43:48.965','kjey',12,3),(20,'kdmv','gw@e','$2b$12$z8OIDLB.fN2l7R4WvvSj6etD3tqWdmlxt.ttGbXAVPA3hF8jtYvy6','2024-07-07 08:03:17.499','2024-07-07 11:54:00.237','kjey',52,3),(21,'kdmv','gw@ef','$2b$12$TXiCJgxBf3cw/dTNV0zfTuIoukF25I3fsr.GT6Y5CS0qBVU237nIu','2024-07-07 08:05:08.664','2024-07-07 08:05:08.664','kjey',0,0),(22,'kdmv','gw@efr','$2b$12$Tx1tMtxfIJzQaWWYbV.D8eJHOv4pu5/fKNPDOguzQoKRqubATGQae','2024-07-07 08:05:21.355','2024-07-07 08:05:21.355','kjey',0,0),(23,'newUser','newUser@gmail.com','$2b$12$Q7OU0MJRl1AHxR.MunPvpu28gj4iNikxVKL650LFn8qNVpkGIi/sC','2024-07-07 11:55:46.197','2024-07-07 11:56:15.605','',6,2),(24,'djgnKN','ng@gmsr','$2b$12$B0D4q8FR7xuDoZf.fQ6/OOMJgOA85TMvEeG7l6pRwe8uDzHiKufNW','2024-07-07 11:56:59.013','2024-07-07 16:18:47.527','newUser',92,1),(25,'kdmhjK','ojkg@oh','$2b$12$9JxQhUNRSpbIUgGsnI4Ww.R2mcLbcBShqA1Xv.kcF9Iu1xLQ.MBd6','2024-07-07 12:04:29.939','2024-07-07 12:04:29.939','djgnKN',0,0),(26,'legn','olmeg@kmg','$2b$12$Q/rfHeVpqICP7LOffGg8qOXgEePw/g3jLax8aQeTLEfpHgI0NdSBq','2024-07-07 14:32:38.061','2024-07-07 14:32:38.061','djgnKN',0,0),(27,'abcd','abcd@gmail.com','$2b$12$m60oUxK6UE75EUr8SmZDF.7AE4fEOIs1A/WY.FCHu0b/KCYH7wu76','2024-07-07 17:57:36.807','2024-07-07 18:21:28.166','',24,3),(28,'sjgilj','ojg@km','$2b$12$i8hkxNW4c1tgUq6FvMtDl.iaMZIi//Vj1fBDmjpQq0lIkhdNXQEy6','2024-07-07 18:00:39.223','2024-07-07 18:00:39.223','abcd',0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08  0:01:11
