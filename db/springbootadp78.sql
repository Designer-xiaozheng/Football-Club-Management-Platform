-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootadp78
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootadp78`
--

/*!40000 DROP DATABASE IF EXISTS `springbootadp78`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootadp78` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootadp78`;

--
-- Table structure for table `changshang`
--

DROP TABLE IF EXISTS `changshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changshangzhanghao` varchar(200) NOT NULL COMMENT '厂商账号',
  `changshangmingcheng` varchar(200) NOT NULL COMMENT '厂商名称',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `changshangzhanghao` (`changshangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='厂商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changshang`
--

LOCK TABLES `changshang` WRITE;
/*!40000 ALTER TABLE `changshang` DISABLE KEYS */;
INSERT INTO `changshang` VALUES (41,'2023-02-21 13:55:11','厂商账号1','厂商名称1','123456','男','13823888881','详细地址1'),(42,'2023-02-21 13:55:11','厂商账号2','厂商名称2','123456','男','13823888882','详细地址2'),(43,'2023-02-21 13:55:11','厂商账号3','厂商名称3','123456','男','13823888883','详细地址3'),(44,'2023-02-21 13:55:11','厂商账号4','厂商名称4','123456','男','13823888884','详细地址4'),(45,'2023-02-21 13:55:11','厂商账号5','厂商名称5','123456','男','13823888885','详细地址5'),(46,'2023-02-21 13:55:11','厂商账号6','厂商名称6','123456','男','13823888886','详细地址6'),(47,'2023-02-21 13:55:11','厂商账号7','厂商名称7','123456','男','13823888887','详细地址7'),(48,'2023-02-21 13:55:11','厂商账号8','厂商名称8','123456','男','13823888888','详细地址8');
/*!40000 ALTER TABLE `changshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinfenlei`
--

DROP TABLE IF EXISTS `chanpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinfenlei` varchar(200) NOT NULL COMMENT '产品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinfenlei`
--

LOCK TABLES `chanpinfenlei` WRITE;
/*!40000 ALTER TABLE `chanpinfenlei` DISABLE KEYS */;
INSERT INTO `chanpinfenlei` VALUES (91,'2023-02-21 13:55:12','产品分类1'),(92,'2023-02-21 13:55:12','产品分类2'),(93,'2023-02-21 13:55:12','产品分类3'),(94,'2023-02-21 13:55:12','产品分类4'),(95,'2023-02-21 13:55:12','产品分类5'),(96,'2023-02-21 13:55:12','产品分类6'),(97,'2023-02-21 13:55:12','产品分类7'),(98,'2023-02-21 13:55:12','产品分类8');
/*!40000 ALTER TABLE `chanpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinweihu`
--

DROP TABLE IF EXISTS `chanpinweihu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinweihu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weihubianhao` varchar(200) DEFAULT NULL COMMENT '维护编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `wuliaomingcheng` varchar(200) DEFAULT NULL COMMENT '物料名称',
  `wuliaoleixing` varchar(200) DEFAULT NULL COMMENT '物料类型',
  `chanpinxinghao` varchar(200) DEFAULT NULL COMMENT '产品型号',
  `weihushijian` date DEFAULT NULL COMMENT '维护时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weihubianhao` (`weihubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='产品维护';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinweihu`
--

LOCK TABLES `chanpinweihu` WRITE;
/*!40000 ALTER TABLE `chanpinweihu` DISABLE KEYS */;
INSERT INTO `chanpinweihu` VALUES (111,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','物料名称1','物料类型1','产品型号1','2023-02-21'),(112,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','物料名称2','物料类型2','产品型号2','2023-02-21'),(113,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','物料名称3','物料类型3','产品型号3','2023-02-21'),(114,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','物料名称4','物料类型4','产品型号4','2023-02-21'),(115,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','物料名称5','物料类型5','产品型号5','2023-02-21'),(116,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','物料名称6','物料类型6','产品型号6','2023-02-21'),(117,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','物料名称7','物料类型7','产品型号7','2023-02-21'),(118,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','物料名称8','物料类型8','产品型号8','2023-02-21');
/*!40000 ALTER TABLE `chanpinweihu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinweixiu`
--

DROP TABLE IF EXISTS `chanpinweixiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanchangbianhao` varchar(200) DEFAULT NULL COMMENT '返厂编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `shiyongwuliao` varchar(200) DEFAULT NULL COMMENT '使用物料',
  `wuliaoleixing` varchar(200) DEFAULT NULL COMMENT '物料类型',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `weixiushijian` date DEFAULT NULL COMMENT '维修时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `changshangzhanghao` varchar(200) DEFAULT NULL COMMENT '厂商账号',
  `changshangmingcheng` varchar(200) DEFAULT NULL COMMENT '厂商名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 COMMENT='产品维修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinweixiu`
--

LOCK TABLES `chanpinweixiu` WRITE;
/*!40000 ALTER TABLE `chanpinweixiu` DISABLE KEYS */;
INSERT INTO `chanpinweixiu` VALUES (291,'2023-02-21 13:55:12','返厂编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','使用物料1','物料类型1','已维修','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','厂商账号1','厂商名称1'),(292,'2023-02-21 13:55:12','返厂编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','使用物料2','物料类型2','已维修','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','厂商账号2','厂商名称2'),(293,'2023-02-21 13:55:12','返厂编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','使用物料3','物料类型3','已维修','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','厂商账号3','厂商名称3'),(294,'2023-02-21 13:55:12','返厂编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','使用物料4','物料类型4','已维修','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','厂商账号4','厂商名称4'),(295,'2023-02-21 13:55:12','返厂编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','使用物料5','物料类型5','已维修','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','厂商账号5','厂商名称5'),(296,'2023-02-21 13:55:12','返厂编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','使用物料6','物料类型6','已维修','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','厂商账号6','厂商名称6'),(297,'2023-02-21 13:55:12','返厂编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','使用物料7','物料类型7','已维修','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','厂商账号7','厂商名称7'),(298,'2023-02-21 13:55:12','返厂编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','使用物料8','物料类型8','已维修','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','厂商账号8','厂商名称8');
/*!40000 ALTER TABLE `chanpinweixiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinxinxi`
--

DROP TABLE IF EXISTS `chanpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `wuliaomingcheng` varchar(200) DEFAULT NULL COMMENT '物料名称',
  `wuliaoleixing` varchar(200) DEFAULT NULL COMMENT '物料类型',
  `chanpinxinghao` varchar(200) DEFAULT NULL COMMENT '产品型号',
  `tupian` longtext COMMENT '图片',
  `chanpinxiangqing` longtext COMMENT '产品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='产品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinxinxi`
--

LOCK TABLES `chanpinxinxi` WRITE;
/*!40000 ALTER TABLE `chanpinxinxi` DISABLE KEYS */;
INSERT INTO `chanpinxinxi` VALUES (101,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','物料名称1','物料类型1','产品型号1','upload/chanpinxinxi_tupian1.jpg,upload/chanpinxinxi_tupian2.jpg,upload/chanpinxinxi_tupian3.jpg','产品详情1'),(102,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','物料名称2','物料类型2','产品型号2','upload/chanpinxinxi_tupian2.jpg,upload/chanpinxinxi_tupian3.jpg,upload/chanpinxinxi_tupian4.jpg','产品详情2'),(103,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','物料名称3','物料类型3','产品型号3','upload/chanpinxinxi_tupian3.jpg,upload/chanpinxinxi_tupian4.jpg,upload/chanpinxinxi_tupian5.jpg','产品详情3'),(104,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','物料名称4','物料类型4','产品型号4','upload/chanpinxinxi_tupian4.jpg,upload/chanpinxinxi_tupian5.jpg,upload/chanpinxinxi_tupian6.jpg','产品详情4'),(105,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','物料名称5','物料类型5','产品型号5','upload/chanpinxinxi_tupian5.jpg,upload/chanpinxinxi_tupian6.jpg,upload/chanpinxinxi_tupian7.jpg','产品详情5'),(106,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','物料名称6','物料类型6','产品型号6','upload/chanpinxinxi_tupian6.jpg,upload/chanpinxinxi_tupian7.jpg,upload/chanpinxinxi_tupian8.jpg','产品详情6'),(107,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','物料名称7','物料类型7','产品型号7','upload/chanpinxinxi_tupian7.jpg,upload/chanpinxinxi_tupian8.jpg,upload/chanpinxinxi_tupian9.jpg','产品详情7'),(108,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','物料名称8','物料类型8','产品型号8','upload/chanpinxinxi_tupian8.jpg,upload/chanpinxinxi_tupian9.jpg,upload/chanpinxinxi_tupian10.jpg','产品详情8');
/*!40000 ALTER TABLE `chanpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianhuagoutong`
--

DROP TABLE IF EXISTS `dianhuagoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianhuagoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` date DEFAULT NULL COMMENT '沟通时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='电话沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianhuagoutong`
--

LOCK TABLES `dianhuagoutong` WRITE;
/*!40000 ALTER TABLE `dianhuagoutong` DISABLE KEYS */;
INSERT INTO `dianhuagoutong` VALUES (241,'2023-02-21 13:55:12','受理编号1','产品名称1','产品分类1','沟通内容1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','电话号码1',''),(242,'2023-02-21 13:55:12','受理编号2','产品名称2','产品分类2','沟通内容2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','电话号码2',''),(243,'2023-02-21 13:55:12','受理编号3','产品名称3','产品分类3','沟通内容3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','电话号码3',''),(244,'2023-02-21 13:55:12','受理编号4','产品名称4','产品分类4','沟通内容4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','电话号码4',''),(245,'2023-02-21 13:55:12','受理编号5','产品名称5','产品分类5','沟通内容5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','电话号码5',''),(246,'2023-02-21 13:55:12','受理编号6','产品名称6','产品分类6','沟通内容6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','电话号码6',''),(247,'2023-02-21 13:55:12','受理编号7','产品名称7','产品分类7','沟通内容7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','电话号码7',''),(248,'2023-02-21 13:55:12','受理编号8','产品名称8','产品分类8','沟通内容8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','电话号码8','');
/*!40000 ALTER TABLE `dianhuagoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diannaodan`
--

DROP TABLE IF EXISTS `diannaodan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diannaodan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diannaodanbianhao` varchar(200) DEFAULT NULL COMMENT '电脑单编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `tianrushijian` date DEFAULT NULL COMMENT '填入时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diannaodanbianhao` (`diannaodanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='电脑单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diannaodan`
--

LOCK TABLES `diannaodan` WRITE;
/*!40000 ALTER TABLE `diannaodan` DISABLE KEYS */;
INSERT INTO `diannaodan` VALUES (161,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1'),(162,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2'),(163,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3'),(164,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4'),(165,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5'),(166,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6'),(167,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7'),(168,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `diannaodan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fanhuijichanpinweixiu`
--

DROP TABLE IF EXISTS `fanhuijichanpinweixiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fanhuijichanpinweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanchangbianhao` varchar(200) DEFAULT NULL COMMENT '返厂编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `shiyongwuliao` varchar(200) DEFAULT NULL COMMENT '使用物料',
  `wuliaoleixing` varchar(200) DEFAULT NULL COMMENT '物料类型',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `weixiushijian` date DEFAULT NULL COMMENT '维修时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `changshangzhanghao` varchar(200) DEFAULT NULL COMMENT '厂商账号',
  `changshangmingcheng` varchar(200) DEFAULT NULL COMMENT '厂商名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8 COMMENT='返回机产品维修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanhuijichanpinweixiu`
--

LOCK TABLES `fanhuijichanpinweixiu` WRITE;
/*!40000 ALTER TABLE `fanhuijichanpinweixiu` DISABLE KEYS */;
INSERT INTO `fanhuijichanpinweixiu` VALUES (301,'2023-02-21 13:55:12','返厂编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','使用物料1','物料类型1','已维修','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','厂商账号1','厂商名称1'),(302,'2023-02-21 13:55:12','返厂编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','使用物料2','物料类型2','已维修','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','厂商账号2','厂商名称2'),(303,'2023-02-21 13:55:12','返厂编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','使用物料3','物料类型3','已维修','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','厂商账号3','厂商名称3'),(304,'2023-02-21 13:55:12','返厂编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','使用物料4','物料类型4','已维修','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','厂商账号4','厂商名称4'),(305,'2023-02-21 13:55:12','返厂编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','使用物料5','物料类型5','已维修','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','厂商账号5','厂商名称5'),(306,'2023-02-21 13:55:12','返厂编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','使用物料6','物料类型6','已维修','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','厂商账号6','厂商名称6'),(307,'2023-02-21 13:55:12','返厂编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','使用物料7','物料类型7','已维修','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','厂商账号7','厂商名称7'),(308,'2023-02-21 13:55:12','返厂编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','使用物料8','物料类型8','已维修','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','厂商账号8','厂商名称8');
/*!40000 ALTER TABLE `fanhuijichanpinweixiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fanhuijidiannaodan`
--

DROP TABLE IF EXISTS `fanhuijidiannaodan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fanhuijidiannaodan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diannaodanbianhao` varchar(200) DEFAULT NULL COMMENT '电脑单编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `tianrushijian` date DEFAULT NULL COMMENT '填入时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diannaodanbianhao` (`diannaodanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COMMENT='返回机电脑单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanhuijidiannaodan`
--

LOCK TABLES `fanhuijidiannaodan` WRITE;
/*!40000 ALTER TABLE `fanhuijidiannaodan` DISABLE KEYS */;
INSERT INTO `fanhuijidiannaodan` VALUES (261,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','电话号码1'),(262,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','电话号码2'),(263,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','电话号码3'),(264,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','电话号码4'),(265,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','电话号码5'),(266,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','电话号码6'),(267,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','电话号码7'),(268,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','电话号码8');
/*!40000 ALTER TABLE `fanhuijidiannaodan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fanhuijiliushuidan`
--

DROP TABLE IF EXISTS `fanhuijiliushuidan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fanhuijiliushuidan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `tianxieshijian` date DEFAULT NULL COMMENT '填写时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 COMMENT='返回机流水单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanhuijiliushuidan`
--

LOCK TABLES `fanhuijiliushuidan` WRITE;
/*!40000 ALTER TABLE `fanhuijiliushuidan` DISABLE KEYS */;
INSERT INTO `fanhuijiliushuidan` VALUES (251,'2023-02-21 13:55:12','受理编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','电话号码1',''),(252,'2023-02-21 13:55:12','受理编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','电话号码2',''),(253,'2023-02-21 13:55:12','受理编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','电话号码3',''),(254,'2023-02-21 13:55:12','受理编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','电话号码4',''),(255,'2023-02-21 13:55:12','受理编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','电话号码5',''),(256,'2023-02-21 13:55:12','受理编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','电话号码6',''),(257,'2023-02-21 13:55:12','受理编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','电话号码7',''),(258,'2023-02-21 13:55:12','受理编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','电话号码8','');
/*!40000 ALTER TABLE `fanhuijiliushuidan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fanhuijiyoujikehu`
--

DROP TABLE IF EXISTS `fanhuijiyoujikehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fanhuijiyoujikehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youjibianhao` varchar(200) DEFAULT NULL COMMENT '邮寄编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `youjishijian` date DEFAULT NULL COMMENT '邮寄时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youjibianhao` (`youjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='返回机邮寄客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanhuijiyoujikehu`
--

LOCK TABLES `fanhuijiyoujikehu` WRITE;
/*!40000 ALTER TABLE `fanhuijiyoujikehu` DISABLE KEYS */;
INSERT INTO `fanhuijiyoujikehu` VALUES (341,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','维修状态1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1'),(342,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','维修状态2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2'),(343,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','维修状态3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3'),(344,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','维修状态4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4'),(345,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','维修状态5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5'),(346,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','维修状态6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6'),(347,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','维修状态7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7'),(348,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','维修状态8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `fanhuijiyoujikehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fanhuijizhenglifenlei`
--

DROP TABLE IF EXISTS `fanhuijizhenglifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fanhuijizhenglifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `fenleishijian` date DEFAULT NULL COMMENT '分类时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8 COMMENT='返回机整理分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanhuijizhenglifenlei`
--

LOCK TABLES `fanhuijizhenglifenlei` WRITE;
/*!40000 ALTER TABLE `fanhuijizhenglifenlei` DISABLE KEYS */;
INSERT INTO `fanhuijizhenglifenlei` VALUES (271,'2023-02-21 13:55:12','受理编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','电话号码1'),(272,'2023-02-21 13:55:12','受理编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','电话号码2'),(273,'2023-02-21 13:55:12','受理编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','电话号码3'),(274,'2023-02-21 13:55:12','受理编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','电话号码4'),(275,'2023-02-21 13:55:12','受理编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','电话号码5'),(276,'2023-02-21 13:55:12','受理编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','电话号码6'),(277,'2023-02-21 13:55:12','受理编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','电话号码7'),(278,'2023-02-21 13:55:12','受理编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','电话号码8');
/*!40000 ALTER TABLE `fanhuijizhenglifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fanhuijizhuangxiangfanchang`
--

DROP TABLE IF EXISTS `fanhuijizhuangxiangfanchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fanhuijizhuangxiangfanchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanchangbianhao` varchar(200) DEFAULT NULL COMMENT '返厂编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `fanchangshijian` date DEFAULT NULL COMMENT '返厂时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `changshangzhanghao` varchar(200) DEFAULT NULL COMMENT '厂商账号',
  `changshangmingcheng` varchar(200) DEFAULT NULL COMMENT '厂商名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fanchangbianhao` (`fanchangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8 COMMENT='返回机装箱返厂';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanhuijizhuangxiangfanchang`
--

LOCK TABLES `fanhuijizhuangxiangfanchang` WRITE;
/*!40000 ALTER TABLE `fanhuijizhuangxiangfanchang` DISABLE KEYS */;
INSERT INTO `fanhuijizhuangxiangfanchang` VALUES (281,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','厂商账号1','厂商名称1'),(282,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','厂商账号2','厂商名称2'),(283,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','厂商账号3','厂商名称3'),(284,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','厂商账号4','厂商名称4'),(285,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','厂商账号5','厂商名称5'),(286,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','厂商账号6','厂商名称6'),(287,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','厂商账号7','厂商名称7'),(288,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','厂商账号8','厂商名称8');
/*!40000 ALTER TABLE `fanhuijizhuangxiangfanchang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fanhuijizhuangxiangfanhui`
--

DROP TABLE IF EXISTS `fanhuijizhuangxiangfanhui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fanhuijizhuangxiangfanhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanhuibianhao` varchar(200) DEFAULT NULL COMMENT '返回编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `fanhuishijian` date DEFAULT NULL COMMENT '返回时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `changshangzhanghao` varchar(200) DEFAULT NULL COMMENT '厂商账号',
  `changshangmingcheng` varchar(200) DEFAULT NULL COMMENT '厂商名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COMMENT='返回机装箱返回';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fanhuijizhuangxiangfanhui`
--

LOCK TABLES `fanhuijizhuangxiangfanhui` WRITE;
/*!40000 ALTER TABLE `fanhuijizhuangxiangfanhui` DISABLE KEYS */;
INSERT INTO `fanhuijizhuangxiangfanhui` VALUES (321,'2023-02-21 13:55:12','返回编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','维修状态1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','厂商账号1','厂商名称1'),(322,'2023-02-21 13:55:12','返回编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','维修状态2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','厂商账号2','厂商名称2'),(323,'2023-02-21 13:55:12','返回编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','维修状态3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','厂商账号3','厂商名称3'),(324,'2023-02-21 13:55:12','返回编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','维修状态4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','厂商账号4','厂商名称4'),(325,'2023-02-21 13:55:12','返回编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','维修状态5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','厂商账号5','厂商名称5'),(326,'2023-02-21 13:55:12','返回编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','维修状态6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','厂商账号6','厂商名称6'),(327,'2023-02-21 13:55:12','返回编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','维修状态7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','厂商账号7','厂商名称7'),(328,'2023-02-21 13:55:12','返回编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','维修状态8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','厂商账号8','厂商名称8');
/*!40000 ALTER TABLE `fanhuijizhuangxiangfanhui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fenpeigongchengshi`
--

DROP TABLE IF EXISTS `fenpeigongchengshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fenpeigongchengshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenpeibianhao` varchar(200) DEFAULT NULL COMMENT '分配编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `fenpeishijian` date DEFAULT NULL COMMENT '分配时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `gongchengshizhanghao` varchar(200) DEFAULT NULL COMMENT '工程师账号',
  `gongchengshixingming` varchar(200) DEFAULT NULL COMMENT '工程师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenpeibianhao` (`fenpeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COMMENT='分配工程师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fenpeigongchengshi`
--

LOCK TABLES `fenpeigongchengshi` WRITE;
/*!40000 ALTER TABLE `fenpeigongchengshi` DISABLE KEYS */;
INSERT INTO `fenpeigongchengshi` VALUES (191,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','工程师账号1','工程师姓名1'),(192,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','工程师账号2','工程师姓名2'),(193,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','工程师账号3','工程师姓名3'),(194,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','工程师账号4','工程师姓名4'),(195,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','工程师账号5','工程师姓名5'),(196,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','工程师账号6','工程师姓名6'),(197,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','工程师账号7','工程师姓名7'),(198,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','工程师账号8','工程师姓名8');
/*!40000 ALTER TABLE `fenpeigongchengshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongchengshi`
--

DROP TABLE IF EXISTS `gongchengshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongchengshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongchengshizhanghao` varchar(200) NOT NULL COMMENT '工程师账号',
  `gongchengshixingming` varchar(200) NOT NULL COMMENT '工程师姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongchengshizhanghao` (`gongchengshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='工程师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongchengshi`
--

LOCK TABLES `gongchengshi` WRITE;
/*!40000 ALTER TABLE `gongchengshi` DISABLE KEYS */;
INSERT INTO `gongchengshi` VALUES (31,'2023-02-21 13:55:11','工程师账号1','工程师姓名1','123456','男','upload/gongchengshi_touxiang1.jpg','13823888881'),(32,'2023-02-21 13:55:11','工程师账号2','工程师姓名2','123456','男','upload/gongchengshi_touxiang2.jpg','13823888882'),(33,'2023-02-21 13:55:11','工程师账号3','工程师姓名3','123456','男','upload/gongchengshi_touxiang3.jpg','13823888883'),(34,'2023-02-21 13:55:11','工程师账号4','工程师姓名4','123456','男','upload/gongchengshi_touxiang4.jpg','13823888884'),(35,'2023-02-21 13:55:11','工程师账号5','工程师姓名5','123456','男','upload/gongchengshi_touxiang5.jpg','13823888885'),(36,'2023-02-21 13:55:11','工程师账号6','工程师姓名6','123456','男','upload/gongchengshi_touxiang6.jpg','13823888886'),(37,'2023-02-21 13:55:11','工程师账号7','工程师姓名7','123456','男','upload/gongchengshi_touxiang7.jpg','13823888887'),(38,'2023-02-21 13:55:11','工程师账号8','工程师姓名8','123456','男','upload/gongchengshi_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `gongchengshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongchengshifankui`
--

DROP TABLE IF EXISTS `gongchengshifankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongchengshifankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenpeibianhao` varchar(200) DEFAULT NULL COMMENT '分配编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `fankuineirong` varchar(200) DEFAULT NULL COMMENT '反馈内容',
  `fankuishijian` date DEFAULT NULL COMMENT '反馈时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `gongchengshizhanghao` varchar(200) DEFAULT NULL COMMENT '工程师账号',
  `gongchengshixingming` varchar(200) DEFAULT NULL COMMENT '工程师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COMMENT='工程师反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongchengshifankui`
--

LOCK TABLES `gongchengshifankui` WRITE;
/*!40000 ALTER TABLE `gongchengshifankui` DISABLE KEYS */;
INSERT INTO `gongchengshifankui` VALUES (201,'2023-02-21 13:55:12','分配编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','可维修','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','工程师账号1','工程师姓名1'),(202,'2023-02-21 13:55:12','分配编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','可维修','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','工程师账号2','工程师姓名2'),(203,'2023-02-21 13:55:12','分配编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','可维修','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','工程师账号3','工程师姓名3'),(204,'2023-02-21 13:55:12','分配编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','可维修','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','工程师账号4','工程师姓名4'),(205,'2023-02-21 13:55:12','分配编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','可维修','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','工程师账号5','工程师姓名5'),(206,'2023-02-21 13:55:12','分配编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','可维修','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','工程师账号6','工程师姓名6'),(207,'2023-02-21 13:55:12','分配编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','可维修','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','工程师账号7','工程师姓名7'),(208,'2023-02-21 13:55:12','分配编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','可维修','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','工程师账号8','工程师姓名8');
/*!40000 ALTER TABLE `gongchengshifankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goutongqueren`
--

DROP TABLE IF EXISTS `goutongqueren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goutongqueren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `guzhangbiaotie` longtext COMMENT '故障标贴',
  `shifoucunzairenwei` varchar(200) DEFAULT NULL COMMENT '是否存在人为',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` date DEFAULT NULL COMMENT '沟通时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='沟通确认';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goutongqueren`
--

LOCK TABLES `goutongqueren` WRITE;
/*!40000 ALTER TABLE `goutongqueren` DISABLE KEYS */;
INSERT INTO `goutongqueren` VALUES (141,'2023-02-21 13:55:12','受理编号1','产品名称1','产品分类1','故障标贴1','是否存在人为1','沟通内容1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1',''),(142,'2023-02-21 13:55:12','受理编号2','产品名称2','产品分类2','故障标贴2','是否存在人为2','沟通内容2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2',''),(143,'2023-02-21 13:55:12','受理编号3','产品名称3','产品分类3','故障标贴3','是否存在人为3','沟通内容3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3',''),(144,'2023-02-21 13:55:12','受理编号4','产品名称4','产品分类4','故障标贴4','是否存在人为4','沟通内容4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4',''),(145,'2023-02-21 13:55:12','受理编号5','产品名称5','产品分类5','故障标贴5','是否存在人为5','沟通内容5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5',''),(146,'2023-02-21 13:55:12','受理编号6','产品名称6','产品分类6','故障标贴6','是否存在人为6','沟通内容6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6',''),(147,'2023-02-21 13:55:12','受理编号7','产品名称7','产品分类7','故障标贴7','是否存在人为7','沟通内容7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7',''),(148,'2023-02-21 13:55:12','受理编号8','产品名称8','产品分类8','故障标贴8','是否存在人为8','沟通内容8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','');
/*!40000 ALTER TABLE `goutongqueren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guzhangji`
--

DROP TABLE IF EXISTS `guzhangji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guzhangji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `guzhangmiaoshu` longtext COMMENT '故障描述',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='故障机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guzhangji`
--

LOCK TABLES `guzhangji` WRITE;
/*!40000 ALTER TABLE `guzhangji` DISABLE KEYS */;
INSERT INTO `guzhangji` VALUES (121,'2023-02-21 13:55:12','产品名称1','产品分类1','故障描述1','客户账号1','客户姓名1'),(122,'2023-02-21 13:55:12','产品名称2','产品分类2','故障描述2','客户账号2','客户姓名2'),(123,'2023-02-21 13:55:12','产品名称3','产品分类3','故障描述3','客户账号3','客户姓名3'),(124,'2023-02-21 13:55:12','产品名称4','产品分类4','故障描述4','客户账号4','客户姓名4'),(125,'2023-02-21 13:55:12','产品名称5','产品分类5','故障描述5','客户账号5','客户姓名5'),(126,'2023-02-21 13:55:12','产品名称6','产品分类6','故障描述6','客户账号6','客户姓名6'),(127,'2023-02-21 13:55:12','产品名称7','产品分类7','故障描述7','客户账号7','客户姓名7'),(128,'2023-02-21 13:55:12','产品名称8','产品分类8','故障描述8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `guzhangji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehuzhanghao` varchar(200) NOT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) NOT NULL COMMENT '客户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehuzhanghao` (`kehuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (11,'2023-02-21 13:55:11','客户账号1','客户姓名1','123456','男','upload/kehu_touxiang1.jpg','13823888881'),(12,'2023-02-21 13:55:11','客户账号2','客户姓名2','123456','男','upload/kehu_touxiang2.jpg','13823888882'),(13,'2023-02-21 13:55:11','客户账号3','客户姓名3','123456','男','upload/kehu_touxiang3.jpg','13823888883'),(14,'2023-02-21 13:55:11','客户账号4','客户姓名4','123456','男','upload/kehu_touxiang4.jpg','13823888884'),(15,'2023-02-21 13:55:11','客户账号5','客户姓名5','123456','男','upload/kehu_touxiang5.jpg','13823888885'),(16,'2023-02-21 13:55:11','客户账号6','客户姓名6','123456','男','upload/kehu_touxiang6.jpg','13823888886'),(17,'2023-02-21 13:55:11','客户账号7','客户姓名7','123456','男','upload/kehu_touxiang7.jpg','13823888887'),(18,'2023-02-21 13:55:11','客户账号8','客户姓名8','123456','男','upload/kehu_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehuquhui`
--

DROP TABLE IF EXISTS `kehuquhui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehuquhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongzhibianhao` varchar(200) DEFAULT NULL COMMENT '通知编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `chanpinzhuangtai` varchar(200) DEFAULT NULL COMMENT '产品状态',
  `quhuishijian` date DEFAULT NULL COMMENT '取回时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongzhibianhao` (`tongzhibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8 COMMENT='客户取回';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehuquhui`
--

LOCK TABLES `kehuquhui` WRITE;
/*!40000 ALTER TABLE `kehuquhui` DISABLE KEYS */;
INSERT INTO `kehuquhui` VALUES (351,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','已取回','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1'),(352,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','已取回','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2'),(353,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','已取回','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3'),(354,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','已取回','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4'),(355,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','已取回','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5'),(356,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','已取回','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6'),(357,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','已取回','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7'),(358,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','已取回','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `kehuquhui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehushouhuo`
--

DROP TABLE IF EXISTS `kehushouhuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehushouhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youjibianhao` varchar(200) DEFAULT NULL COMMENT '邮寄编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `youjizhuangtai` varchar(200) DEFAULT NULL COMMENT '邮寄状态',
  `shouhuoshijian` date DEFAULT NULL COMMENT '收货时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youjibianhao` (`youjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8 COMMENT='客户收货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehushouhuo`
--

LOCK TABLES `kehushouhuo` WRITE;
/*!40000 ALTER TABLE `kehushouhuo` DISABLE KEYS */;
INSERT INTO `kehushouhuo` VALUES (361,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','已收货','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1'),(362,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','已收货','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2'),(363,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','已收货','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3'),(364,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','已收货','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4'),(365,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','已收货','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5'),(366,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','已收货','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6'),(367,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','已收货','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7'),(368,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','已收货','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `kehushouhuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoulifanhuiji`
--

DROP TABLE IF EXISTS `shoulifanhuiji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoulifanhuiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `guzhangbiaotie` longtext COMMENT '故障标贴',
  `baozhuangshifouposun` varchar(200) DEFAULT NULL COMMENT '包装是否破损',
  `peijianshifouqiquan` varchar(200) DEFAULT NULL COMMENT '配件是否齐全',
  `jianceshijian` date DEFAULT NULL COMMENT '检测时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shoulibianhao` (`shoulibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COMMENT='受理返回机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoulifanhuiji`
--

LOCK TABLES `shoulifanhuiji` WRITE;
/*!40000 ALTER TABLE `shoulifanhuiji` DISABLE KEYS */;
INSERT INTO `shoulifanhuiji` VALUES (231,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','故障标贴1','是','是','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','电话号码1'),(232,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','故障标贴2','是','是','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','电话号码2'),(233,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','故障标贴3','是','是','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','电话号码3'),(234,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','故障标贴4','是','是','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','电话号码4'),(235,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','故障标贴5','是','是','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','电话号码5'),(236,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','故障标贴6','是','是','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','电话号码6'),(237,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','故障标贴7','是','是','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','电话号码7'),(238,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','故障标贴8','是','是','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','电话号码8');
/*!40000 ALTER TABLE `shoulifanhuiji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouliguzhangji`
--

DROP TABLE IF EXISTS `shouliguzhangji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouliguzhangji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `guzhangbiaotie` longtext COMMENT '故障标贴',
  `shifoucunzairenwei` varchar(200) DEFAULT NULL COMMENT '是否存在人为',
  `jianceshijian` date DEFAULT NULL COMMENT '检测时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shoulibianhao` (`shoulibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='受理故障机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouliguzhangji`
--

LOCK TABLES `shouliguzhangji` WRITE;
/*!40000 ALTER TABLE `shouliguzhangji` DISABLE KEYS */;
INSERT INTO `shouliguzhangji` VALUES (131,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','故障标贴1','是','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1'),(132,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','故障标贴2','是','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2'),(133,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','故障标贴3','是','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3'),(134,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','故障标贴4','是','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4'),(135,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','故障标贴5','是','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5'),(136,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','故障标贴6','是','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6'),(137,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','故障标贴7','是','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7'),(138,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','故障标贴8','是','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `shouliguzhangji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoulijifenlei`
--

DROP TABLE IF EXISTS `shoulijifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoulijifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulijifenlei` varchar(200) NOT NULL COMMENT '受理机分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COMMENT='受理机分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoulijifenlei`
--

LOCK TABLES `shoulijifenlei` WRITE;
/*!40000 ALTER TABLE `shoulijifenlei` DISABLE KEYS */;
INSERT INTO `shoulijifenlei` VALUES (171,'2023-02-21 13:55:12','受理机分类1'),(172,'2023-02-21 13:55:12','受理机分类2'),(173,'2023-02-21 13:55:12','受理机分类3'),(174,'2023-02-21 13:55:12','受理机分类4'),(175,'2023-02-21 13:55:12','受理机分类5'),(176,'2023-02-21 13:55:12','受理机分类6'),(177,'2023-02-21 13:55:12','受理机分类7'),(178,'2023-02-21 13:55:12','受理机分类8');
/*!40000 ALTER TABLE `shoulijifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouliliushuidan`
--

DROP TABLE IF EXISTS `shouliliushuidan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouliliushuidan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `tianxieshijian` date DEFAULT NULL COMMENT '填写时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='受理流水单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouliliushuidan`
--

LOCK TABLES `shouliliushuidan` WRITE;
/*!40000 ALTER TABLE `shouliliushuidan` DISABLE KEYS */;
INSERT INTO `shouliliushuidan` VALUES (151,'2023-02-21 13:55:12','受理编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1',''),(152,'2023-02-21 13:55:12','受理编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2',''),(153,'2023-02-21 13:55:12','受理编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3',''),(154,'2023-02-21 13:55:12','受理编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4',''),(155,'2023-02-21 13:55:12','受理编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5',''),(156,'2023-02-21 13:55:12','受理编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6',''),(157,'2023-02-21 13:55:12','受理编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7',''),(158,'2023-02-21 13:55:12','受理编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','');
/*!40000 ALTER TABLE `shouliliushuidan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoulirenyuan`
--

DROP TABLE IF EXISTS `shoulirenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoulirenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renyuanzhanghao` varchar(200) NOT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) NOT NULL COMMENT '人员姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `renyuanzhanghao` (`renyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='受理人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoulirenyuan`
--

LOCK TABLES `shoulirenyuan` WRITE;
/*!40000 ALTER TABLE `shoulirenyuan` DISABLE KEYS */;
INSERT INTO `shoulirenyuan` VALUES (21,'2023-02-21 13:55:11','人员账号1','人员姓名1','123456','男','upload/shoulirenyuan_touxiang1.jpg','13823888881'),(22,'2023-02-21 13:55:11','人员账号2','人员姓名2','123456','男','upload/shoulirenyuan_touxiang2.jpg','13823888882'),(23,'2023-02-21 13:55:11','人员账号3','人员姓名3','123456','男','upload/shoulirenyuan_touxiang3.jpg','13823888883'),(24,'2023-02-21 13:55:11','人员账号4','人员姓名4','123456','男','upload/shoulirenyuan_touxiang4.jpg','13823888884'),(25,'2023-02-21 13:55:11','人员账号5','人员姓名5','123456','男','upload/shoulirenyuan_touxiang5.jpg','13823888885'),(26,'2023-02-21 13:55:11','人员账号6','人员姓名6','123456','男','upload/shoulirenyuan_touxiang6.jpg','13823888886'),(27,'2023-02-21 13:55:11','人员账号7','人员姓名7','123456','男','upload/shoulirenyuan_touxiang7.jpg','13823888887'),(28,'2023-02-21 13:55:11','人员账号8','人员姓名8','123456','男','upload/shoulirenyuan_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `shoulirenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhikehu`
--

DROP TABLE IF EXISTS `tongzhikehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhikehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongzhibianhao` varchar(200) DEFAULT NULL COMMENT '通知编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `tongzhineirong` varchar(200) DEFAULT NULL COMMENT '通知内容',
  `tongzhishijian` date DEFAULT NULL COMMENT '通知时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8 COMMENT='通知客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhikehu`
--

LOCK TABLES `tongzhikehu` WRITE;
/*!40000 ALTER TABLE `tongzhikehu` DISABLE KEYS */;
INSERT INTO `tongzhikehu` VALUES (331,'2023-02-21 13:55:12','通知编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','维修状态1','通知内容1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1'),(332,'2023-02-21 13:55:12','通知编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','维修状态2','通知内容2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2'),(333,'2023-02-21 13:55:12','通知编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','维修状态3','通知内容3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3'),(334,'2023-02-21 13:55:12','通知编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','维修状态4','通知内容4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4'),(335,'2023-02-21 13:55:12','通知编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','维修状态5','通知内容5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5'),(336,'2023-02-21 13:55:12','通知编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','维修状态6','通知内容6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6'),(337,'2023-02-21 13:55:12','通知编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','维修状态7','通知内容7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7'),(338,'2023-02-21 13:55:12','通知编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','维修状态8','通知内容8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `tongzhikehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-21 13:55:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliaochuku`
--

DROP TABLE IF EXISTS `wuliaochuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuliaochuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `wuliaomingcheng` varchar(200) DEFAULT NULL COMMENT '物料名称',
  `wuliaoleixing` varchar(200) DEFAULT NULL COMMENT '物料类型',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `chukushijian` date DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='物料出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliaochuku`
--

LOCK TABLES `wuliaochuku` WRITE;
/*!40000 ALTER TABLE `wuliaochuku` DISABLE KEYS */;
INSERT INTO `wuliaochuku` VALUES (81,'2023-02-21 13:55:12','1111111111','物料名称1','物料类型1','型号1',1,'2023-02-21'),(82,'2023-02-21 13:55:12','2222222222','物料名称2','物料类型2','型号2',2,'2023-02-21'),(83,'2023-02-21 13:55:12','3333333333','物料名称3','物料类型3','型号3',3,'2023-02-21'),(84,'2023-02-21 13:55:12','4444444444','物料名称4','物料类型4','型号4',4,'2023-02-21'),(85,'2023-02-21 13:55:12','5555555555','物料名称5','物料类型5','型号5',5,'2023-02-21'),(86,'2023-02-21 13:55:12','6666666666','物料名称6','物料类型6','型号6',6,'2023-02-21'),(87,'2023-02-21 13:55:12','7777777777','物料名称7','物料类型7','型号7',7,'2023-02-21'),(88,'2023-02-21 13:55:12','8888888888','物料名称8','物料类型8','型号8',8,'2023-02-21');
/*!40000 ALTER TABLE `wuliaochuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliaoleixing`
--

DROP TABLE IF EXISTS `wuliaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuliaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuliaoleixing` varchar(200) NOT NULL COMMENT '物料类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='物料类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliaoleixing`
--

LOCK TABLES `wuliaoleixing` WRITE;
/*!40000 ALTER TABLE `wuliaoleixing` DISABLE KEYS */;
INSERT INTO `wuliaoleixing` VALUES (51,'2023-02-21 13:55:11','物料类型1'),(52,'2023-02-21 13:55:11','物料类型2'),(53,'2023-02-21 13:55:11','物料类型3'),(54,'2023-02-21 13:55:11','物料类型4'),(55,'2023-02-21 13:55:11','物料类型5'),(56,'2023-02-21 13:55:11','物料类型6'),(57,'2023-02-21 13:55:11','物料类型7'),(58,'2023-02-21 13:55:11','物料类型8');
/*!40000 ALTER TABLE `wuliaoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliaoruku`
--

DROP TABLE IF EXISTS `wuliaoruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuliaoruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `wuliaomingcheng` varchar(200) DEFAULT NULL COMMENT '物料名称',
  `wuliaoleixing` varchar(200) DEFAULT NULL COMMENT '物料类型',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `rukushijian` date DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='物料入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliaoruku`
--

LOCK TABLES `wuliaoruku` WRITE;
/*!40000 ALTER TABLE `wuliaoruku` DISABLE KEYS */;
INSERT INTO `wuliaoruku` VALUES (71,'2023-02-21 13:55:12','1111111111','物料名称1','物料类型1','型号1',1,'2023-02-21'),(72,'2023-02-21 13:55:12','2222222222','物料名称2','物料类型2','型号2',2,'2023-02-21'),(73,'2023-02-21 13:55:12','3333333333','物料名称3','物料类型3','型号3',3,'2023-02-21'),(74,'2023-02-21 13:55:12','4444444444','物料名称4','物料类型4','型号4',4,'2023-02-21'),(75,'2023-02-21 13:55:12','5555555555','物料名称5','物料类型5','型号5',5,'2023-02-21'),(76,'2023-02-21 13:55:12','6666666666','物料名称6','物料类型6','型号6',6,'2023-02-21'),(77,'2023-02-21 13:55:12','7777777777','物料名称7','物料类型7','型号7',7,'2023-02-21'),(78,'2023-02-21 13:55:12','8888888888','物料名称8','物料类型8','型号8',8,'2023-02-21');
/*!40000 ALTER TABLE `wuliaoruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliaoxinxi`
--

DROP TABLE IF EXISTS `wuliaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuliaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuliaobianhao` varchar(200) DEFAULT NULL COMMENT '物料编号',
  `wuliaomingcheng` varchar(200) DEFAULT NULL COMMENT '物料名称',
  `wuliaoleixing` varchar(200) DEFAULT NULL COMMENT '物料类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `wuliaoxiangqing` longtext COMMENT '物料详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuliaobianhao` (`wuliaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='物料信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliaoxinxi`
--

LOCK TABLES `wuliaoxinxi` WRITE;
/*!40000 ALTER TABLE `wuliaoxinxi` DISABLE KEYS */;
INSERT INTO `wuliaoxinxi` VALUES (61,'2023-02-21 13:55:12','1111111111','物料名称1','物料类型1',1,'型号1',1,'物料详情1'),(62,'2023-02-21 13:55:12','2222222222','物料名称2','物料类型2',2,'型号2',2,'物料详情2'),(63,'2023-02-21 13:55:12','3333333333','物料名称3','物料类型3',3,'型号3',3,'物料详情3'),(64,'2023-02-21 13:55:12','4444444444','物料名称4','物料类型4',4,'型号4',4,'物料详情4'),(65,'2023-02-21 13:55:12','5555555555','物料名称5','物料类型5',5,'型号5',5,'物料详情5'),(66,'2023-02-21 13:55:12','6666666666','物料名称6','物料类型6',6,'型号6',6,'物料详情6'),(67,'2023-02-21 13:55:12','7777777777','物料名称7','物料类型7',7,'型号7',7,'物料详情7'),(68,'2023-02-21 13:55:12','8888888888','物料名称8','物料类型8',8,'型号8',8,'物料详情8');
/*!40000 ALTER TABLE `wuliaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youjifanhuiji`
--

DROP TABLE IF EXISTS `youjifanhuiji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youjifanhuiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `guzhangmiaoshu` longtext COMMENT '故障描述',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COMMENT='邮寄返回机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youjifanhuiji`
--

LOCK TABLES `youjifanhuiji` WRITE;
/*!40000 ALTER TABLE `youjifanhuiji` DISABLE KEYS */;
INSERT INTO `youjifanhuiji` VALUES (221,'2023-02-21 13:55:12','产品名称1','产品分类1','故障描述1','客户账号1','客户姓名1','电话号码1'),(222,'2023-02-21 13:55:12','产品名称2','产品分类2','故障描述2','客户账号2','客户姓名2','电话号码2'),(223,'2023-02-21 13:55:12','产品名称3','产品分类3','故障描述3','客户账号3','客户姓名3','电话号码3'),(224,'2023-02-21 13:55:12','产品名称4','产品分类4','故障描述4','客户账号4','客户姓名4','电话号码4'),(225,'2023-02-21 13:55:12','产品名称5','产品分类5','故障描述5','客户账号5','客户姓名5','电话号码5'),(226,'2023-02-21 13:55:12','产品名称6','产品分类6','故障描述6','客户账号6','客户姓名6','电话号码6'),(227,'2023-02-21 13:55:12','产品名称7','产品分类7','故障描述7','客户账号7','客户姓名7','电话号码7'),(228,'2023-02-21 13:55:12','产品名称8','产品分类8','故障描述8','客户账号8','客户姓名8','电话号码8');
/*!40000 ALTER TABLE `youjifanhuiji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhenglifenlei`
--

DROP TABLE IF EXISTS `zhenglifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhenglifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoulibianhao` varchar(200) DEFAULT NULL COMMENT '受理编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `fenleishijian` date DEFAULT NULL COMMENT '分类时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COMMENT='整理分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhenglifenlei`
--

LOCK TABLES `zhenglifenlei` WRITE;
/*!40000 ALTER TABLE `zhenglifenlei` DISABLE KEYS */;
INSERT INTO `zhenglifenlei` VALUES (181,'2023-02-21 13:55:12','受理编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1'),(182,'2023-02-21 13:55:12','受理编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2'),(183,'2023-02-21 13:55:12','受理编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3'),(184,'2023-02-21 13:55:12','受理编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4'),(185,'2023-02-21 13:55:12','受理编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5'),(186,'2023-02-21 13:55:12','受理编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6'),(187,'2023-02-21 13:55:12','受理编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7'),(188,'2023-02-21 13:55:12','受理编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8');
/*!40000 ALTER TABLE `zhenglifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuangxiangfanchang`
--

DROP TABLE IF EXISTS `zhuangxiangfanchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuangxiangfanchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanchangbianhao` varchar(200) DEFAULT NULL COMMENT '返厂编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `fanchangshijian` date DEFAULT NULL COMMENT '返厂时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `changshangzhanghao` varchar(200) DEFAULT NULL COMMENT '厂商账号',
  `changshangmingcheng` varchar(200) DEFAULT NULL COMMENT '厂商名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fanchangbianhao` (`fanchangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 COMMENT='装箱返厂';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuangxiangfanchang`
--

LOCK TABLES `zhuangxiangfanchang` WRITE;
/*!40000 ALTER TABLE `zhuangxiangfanchang` DISABLE KEYS */;
INSERT INTO `zhuangxiangfanchang` VALUES (211,'2023-02-21 13:55:12','1111111111','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','厂商账号1','厂商名称1'),(212,'2023-02-21 13:55:12','2222222222','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','厂商账号2','厂商名称2'),(213,'2023-02-21 13:55:12','3333333333','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','厂商账号3','厂商名称3'),(214,'2023-02-21 13:55:12','4444444444','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','厂商账号4','厂商名称4'),(215,'2023-02-21 13:55:12','5555555555','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','厂商账号5','厂商名称5'),(216,'2023-02-21 13:55:12','6666666666','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','厂商账号6','厂商名称6'),(217,'2023-02-21 13:55:12','7777777777','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','厂商账号7','厂商名称7'),(218,'2023-02-21 13:55:12','8888888888','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','厂商账号8','厂商名称8');
/*!40000 ALTER TABLE `zhuangxiangfanchang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuangxiangfanhui`
--

DROP TABLE IF EXISTS `zhuangxiangfanhui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuangxiangfanhui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanhuibianhao` varchar(200) DEFAULT NULL COMMENT '返回编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `zhubanbianhao` varchar(200) DEFAULT NULL COMMENT '主板编号',
  `xianshiqibianhao` varchar(200) DEFAULT NULL COMMENT '显示器编号',
  `wuxianmokuaibianhao` varchar(200) DEFAULT NULL COMMENT '无线模块编号',
  `shoulijifenlei` varchar(200) DEFAULT NULL COMMENT '受理机分类',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `fanhuishijian` date DEFAULT NULL COMMENT '返回时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `changshangzhanghao` varchar(200) DEFAULT NULL COMMENT '厂商账号',
  `changshangmingcheng` varchar(200) DEFAULT NULL COMMENT '厂商名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8 COMMENT='装箱返回';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuangxiangfanhui`
--

LOCK TABLES `zhuangxiangfanhui` WRITE;
/*!40000 ALTER TABLE `zhuangxiangfanhui` DISABLE KEYS */;
INSERT INTO `zhuangxiangfanhui` VALUES (311,'2023-02-21 13:55:12','返回编号1','产品名称1','产品分类1','主板编号1','显示器编号1','无线模块编号1','受理机分类1','维修状态1','2023-02-21','人员账号1','人员姓名1','客户账号1','客户姓名1','厂商账号1','厂商名称1'),(312,'2023-02-21 13:55:12','返回编号2','产品名称2','产品分类2','主板编号2','显示器编号2','无线模块编号2','受理机分类2','维修状态2','2023-02-21','人员账号2','人员姓名2','客户账号2','客户姓名2','厂商账号2','厂商名称2'),(313,'2023-02-21 13:55:12','返回编号3','产品名称3','产品分类3','主板编号3','显示器编号3','无线模块编号3','受理机分类3','维修状态3','2023-02-21','人员账号3','人员姓名3','客户账号3','客户姓名3','厂商账号3','厂商名称3'),(314,'2023-02-21 13:55:12','返回编号4','产品名称4','产品分类4','主板编号4','显示器编号4','无线模块编号4','受理机分类4','维修状态4','2023-02-21','人员账号4','人员姓名4','客户账号4','客户姓名4','厂商账号4','厂商名称4'),(315,'2023-02-21 13:55:12','返回编号5','产品名称5','产品分类5','主板编号5','显示器编号5','无线模块编号5','受理机分类5','维修状态5','2023-02-21','人员账号5','人员姓名5','客户账号5','客户姓名5','厂商账号5','厂商名称5'),(316,'2023-02-21 13:55:12','返回编号6','产品名称6','产品分类6','主板编号6','显示器编号6','无线模块编号6','受理机分类6','维修状态6','2023-02-21','人员账号6','人员姓名6','客户账号6','客户姓名6','厂商账号6','厂商名称6'),(317,'2023-02-21 13:55:12','返回编号7','产品名称7','产品分类7','主板编号7','显示器编号7','无线模块编号7','受理机分类7','维修状态7','2023-02-21','人员账号7','人员姓名7','客户账号7','客户姓名7','厂商账号7','厂商名称7'),(318,'2023-02-21 13:55:12','返回编号8','产品名称8','产品分类8','主板编号8','显示器编号8','无线模块编号8','受理机分类8','维修状态8','2023-02-21','人员账号8','人员姓名8','客户账号8','客户姓名8','厂商账号8','厂商名称8');
/*!40000 ALTER TABLE `zhuangxiangfanhui` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-05 17:06:05
