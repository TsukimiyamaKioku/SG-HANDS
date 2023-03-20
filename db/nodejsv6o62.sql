-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: nodejsv6o62
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
-- Current Database: `nodejsv6o62`
--

/*!40000 DROP DATABASE IF EXISTS `nodejsv6o62`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nodejsv6o62` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `nodejsv6o62`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-03-07 12:48:09','关于我们','ABOUT US','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢? 你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p>','upload/aboutus_picture1.jpg','upload/2021472122247640-1678193930150.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
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
-- Table structure for table `discussgongyitonggao`
--

DROP TABLE IF EXISTS `discussgongyitonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgongyitonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公益通告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgongyitonggao`
--

LOCK TABLES `discussgongyitonggao` WRITE;
/*!40000 ALTER TABLE `discussgongyitonggao` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussgongyitonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswupinxinxi`
--

DROP TABLE IF EXISTS `discusswupinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswupinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswupinxinxi`
--

LOCK TABLES `discusswupinxinxi` WRITE;
/*!40000 ALTER TABLE `discusswupinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusswupinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ganxiepingjia`
--

DROP TABLE IF EXISTS `ganxiepingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ganxiepingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingjiabianhao` varchar(200) DEFAULT NULL COMMENT '评价编号',
  `pingjianeirong` longtext COMMENT '评价内容',
  `xuniliwu` varchar(200) DEFAULT NULL COMMENT '虚拟礼物',
  `pingjiashijian` date DEFAULT NULL COMMENT '评价时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pingjiabianhao` (`pingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='感谢评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganxiepingjia`
--

LOCK TABLES `ganxiepingjia` WRITE;
/*!40000 ALTER TABLE `ganxiepingjia` DISABLE KEYS */;
INSERT INTO `ganxiepingjia` VALUES (91,'2023-03-07 12:48:09','1111111111','评价内容1','鲜花','2023-03-07','用户账号1'),(92,'2023-03-07 12:48:09','2222222222','评价内容2','鲜花','2023-03-07','用户账号2'),(93,'2023-03-07 12:48:09','3333333333','评价内容3','鲜花','2023-03-07','用户账号3'),(94,'2023-03-07 12:48:09','4444444444','评价内容4','鲜花','2023-03-07','用户账号4'),(95,'2023-03-07 12:48:09','5555555555','评价内容5','鲜花','2023-03-07','用户账号5'),(96,'2023-03-07 12:48:09','6666666666','评价内容6','鲜花','2023-03-07','用户账号6'),(97,'2023-03-07 12:48:09','7777777777','评价内容7','鲜花','2023-03-07','用户账号7'),(98,'2023-03-07 12:48:09','8888888888','评价内容8','鲜花','2023-03-07','用户账号8'),(99,'2023-03-07 12:57:46','1678193799631','111','鲜花,汽车,小心心,笑脸,烟花,咖啡,啤酒','2023-03-07','111');
/*!40000 ALTER TABLE `ganxiepingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyijuanzeng`
--

DROP TABLE IF EXISTS `gongyijuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyijuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengbianhao` varchar(200) DEFAULT NULL COMMENT '捐赠编号',
  `juanzengmingcheng` varchar(200) NOT NULL COMMENT '捐赠名称',
  `juanzengleixing` varchar(200) NOT NULL COMMENT '捐赠类型',
  `juanzengshuliang` int(11) NOT NULL COMMENT '捐赠数量',
  `juanzengmubiao` varchar(200) NOT NULL COMMENT '捐赠目标',
  `juanzengshijian` datetime DEFAULT NULL COMMENT '捐赠时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `juanzengbianhao` (`juanzengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='公益捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyijuanzeng`
--

LOCK TABLES `gongyijuanzeng` WRITE;
/*!40000 ALTER TABLE `gongyijuanzeng` DISABLE KEYS */;
INSERT INTO `gongyijuanzeng` VALUES (81,'2023-03-07 12:48:09','1111111111','捐赠名称1','捐赠类型1',1,'捐赠目标1','2023-03-07 20:48:09','用户账号1','用户姓名1'),(82,'2023-03-07 12:48:09','2222222222','捐赠名称2','捐赠类型2',2,'捐赠目标2','2023-03-07 20:48:09','用户账号2','用户姓名2'),(83,'2023-03-07 12:48:09','3333333333','捐赠名称3','捐赠类型3',3,'捐赠目标3','2023-03-07 20:48:09','用户账号3','用户姓名3'),(84,'2023-03-07 12:48:09','4444444444','捐赠名称4','捐赠类型4',4,'捐赠目标4','2023-03-07 20:48:09','用户账号4','用户姓名4'),(85,'2023-03-07 12:48:09','5555555555','捐赠名称5','捐赠类型5',5,'捐赠目标5','2023-03-07 20:48:09','用户账号5','用户姓名5'),(86,'2023-03-07 12:48:09','6666666666','捐赠名称6','捐赠类型6',6,'捐赠目标6','2023-03-07 20:48:09','用户账号6','用户姓名6'),(87,'2023-03-07 12:48:09','7777777777','捐赠名称7','捐赠类型7',7,'捐赠目标7','2023-03-07 20:48:09','用户账号7','用户姓名7'),(88,'2023-03-07 12:48:09','8888888888','捐赠名称8','捐赠类型8',8,'捐赠目标8','2023-03-07 20:48:09','用户账号8','用户姓名8'),(89,'2023-03-07 12:55:13','1678193646808','1','1',1,'1','2023-03-07 12:54:06','111','111');
/*!40000 ALTER TABLE `gongyijuanzeng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyitonggao`
--

DROP TABLE IF EXISTS `gongyitonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyitonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyibiaoti` varchar(200) DEFAULT NULL COMMENT '公益标题',
  `fengmian` longtext COMMENT '封面',
  `jianjie` longtext COMMENT '简介',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='公益通告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyitonggao`
--

LOCK TABLES `gongyitonggao` WRITE;
/*!40000 ALTER TABLE `gongyitonggao` DISABLE KEYS */;
INSERT INTO `gongyitonggao` VALUES (51,'2023-03-07 12:48:09','公益标题1','upload/gongyitonggao_fengmian1.jpg,upload/gongyitonggao_fengmian2.jpg,upload/gongyitonggao_fengmian3.jpg','简介1','公告内容1','2023-03-07','2023-03-07 20:48:09',1),(52,'2023-03-07 12:48:09','公益标题2','upload/gongyitonggao_fengmian2.jpg,upload/gongyitonggao_fengmian3.jpg,upload/gongyitonggao_fengmian4.jpg','简介2','公告内容2','2023-03-07','2023-03-07 20:48:09',2),(53,'2023-03-07 12:48:09','公益标题3','upload/gongyitonggao_fengmian3.jpg,upload/gongyitonggao_fengmian4.jpg,upload/gongyitonggao_fengmian5.jpg','简介3','公告内容3','2023-03-07','2023-03-07 20:48:09',3),(54,'2023-03-07 12:48:09','公益标题4','upload/gongyitonggao_fengmian4.jpg,upload/gongyitonggao_fengmian5.jpg,upload/gongyitonggao_fengmian6.jpg','简介4','公告内容4','2023-03-07','2023-03-07 12:50:33',5),(55,'2023-03-07 12:48:09','公益标题5','upload/gongyitonggao_fengmian5.jpg,upload/gongyitonggao_fengmian6.jpg,upload/gongyitonggao_fengmian7.jpg','简介5','公告内容5','2023-03-07','2023-03-07 20:48:09',5),(56,'2023-03-07 12:48:09','公益标题6','upload/gongyitonggao_fengmian6.jpg,upload/gongyitonggao_fengmian7.jpg,upload/gongyitonggao_fengmian8.jpg','简介6','公告内容6','2023-03-07','2023-03-07 20:48:09',6),(57,'2023-03-07 12:48:09','公益标题7','upload/gongyitonggao_fengmian7.jpg,upload/gongyitonggao_fengmian8.jpg,upload/gongyitonggao_fengmian9.jpg','简介7','公告内容7','2023-03-07','2023-03-07 20:48:09',7),(58,'2023-03-07 12:48:09','公益标题8','upload/gongyitonggao_fengmian8.jpg,upload/gongyitonggao_fengmian9.jpg,upload/gongyitonggao_fengmian10.jpg','简介8','公告内容8','2023-03-07','2023-03-07 20:48:09',8),(59,'2023-03-07 12:53:32','1','upload/85ba9ceb20704bb984aa142fc4c70c95!400x400-1678193610644.jpeg','测试','<p>测试</p>','2023-03-07','2023-03-07 12:55:46',3);
/*!40000 ALTER TABLE `gongyitonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoyixinxi`
--

DROP TABLE IF EXISTS `jiaoyixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoyixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoyibianhao` varchar(200) DEFAULT NULL COMMENT '交易编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `wupintupian` longtext COMMENT '物品图片',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` int(11) NOT NULL COMMENT '总价格',
  `jiaoyishijian` date DEFAULT NULL COMMENT '交易时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoyibianhao` (`jiaoyibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='交易信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoyixinxi`
--

LOCK TABLES `jiaoyixinxi` WRITE;
/*!40000 ALTER TABLE `jiaoyixinxi` DISABLE KEYS */;
INSERT INTO `jiaoyixinxi` VALUES (41,'2023-03-07 12:48:09','1111111111','物品名称1','物品类型1','upload/jiaoyixinxi_wupintupian1.jpg,upload/jiaoyixinxi_wupintupian2.jpg,upload/jiaoyixinxi_wupintupian3.jpg',1,1,1,'2023-03-07','用户账号1','用户姓名1','未支付'),(42,'2023-03-07 12:48:09','2222222222','物品名称2','物品类型2','upload/jiaoyixinxi_wupintupian2.jpg,upload/jiaoyixinxi_wupintupian3.jpg,upload/jiaoyixinxi_wupintupian4.jpg',2,2,2,'2023-03-07','用户账号2','用户姓名2','未支付'),(43,'2023-03-07 12:48:09','3333333333','物品名称3','物品类型3','upload/jiaoyixinxi_wupintupian3.jpg,upload/jiaoyixinxi_wupintupian4.jpg,upload/jiaoyixinxi_wupintupian5.jpg',3,3,3,'2023-03-07','用户账号3','用户姓名3','未支付'),(44,'2023-03-07 12:48:09','4444444444','物品名称4','物品类型4','upload/jiaoyixinxi_wupintupian4.jpg,upload/jiaoyixinxi_wupintupian5.jpg,upload/jiaoyixinxi_wupintupian6.jpg',4,4,4,'2023-03-07','用户账号4','用户姓名4','未支付'),(45,'2023-03-07 12:48:09','5555555555','物品名称5','物品类型5','upload/jiaoyixinxi_wupintupian5.jpg,upload/jiaoyixinxi_wupintupian6.jpg,upload/jiaoyixinxi_wupintupian7.jpg',5,5,5,'2023-03-07','用户账号5','用户姓名5','未支付'),(46,'2023-03-07 12:48:09','6666666666','物品名称6','物品类型6','upload/jiaoyixinxi_wupintupian6.jpg,upload/jiaoyixinxi_wupintupian7.jpg,upload/jiaoyixinxi_wupintupian8.jpg',6,6,6,'2023-03-07','用户账号6','用户姓名6','未支付'),(47,'2023-03-07 12:48:09','7777777777','物品名称7','物品类型7','upload/jiaoyixinxi_wupintupian7.jpg,upload/jiaoyixinxi_wupintupian8.jpg,upload/jiaoyixinxi_wupintupian9.jpg',7,7,7,'2023-03-07','用户账号7','用户姓名7','未支付'),(48,'2023-03-07 12:48:09','8888888888','物品名称8','物品类型8','upload/jiaoyixinxi_wupintupian8.jpg,upload/jiaoyixinxi_wupintupian9.jpg,upload/jiaoyixinxi_wupintupian10.jpg',8,8,8,'2023-03-07','用户账号8','用户姓名8','未支付'),(49,'2023-03-07 12:51:37','1678193430645','222','222','upload/20210401102025_eec27-1678193468347.jpg',2,5,10,'2023-03-07','111','111','已支付');
/*!40000 ALTER TABLE `jiaoyixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinjichengdu`
--

DROP TABLE IF EXISTS `jinjichengdu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinjichengdu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinjibianhao` varchar(200) DEFAULT NULL COMMENT '紧急编号',
  `jinjimingcheng` varchar(200) DEFAULT NULL COMMENT '紧急名称',
  `jinjifengmian` longtext COMMENT '紧急封面',
  `jinjishijian` varchar(200) DEFAULT NULL COMMENT '紧急事件',
  `jinjineirong` varchar(200) DEFAULT NULL COMMENT '紧急内容',
  `fabushijian` varchar(200) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jinjibianhao` (`jinjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='紧急程度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinjichengdu`
--

LOCK TABLES `jinjichengdu` WRITE;
/*!40000 ALTER TABLE `jinjichengdu` DISABLE KEYS */;
INSERT INTO `jinjichengdu` VALUES (61,'2023-03-07 12:48:09','1111111111','紧急名称1','upload/jinjichengdu_jinjifengmian1.jpg,upload/jinjichengdu_jinjifengmian2.jpg,upload/jinjichengdu_jinjifengmian3.jpg','紧急事件1','紧急内容1','发布时间1'),(62,'2023-03-07 12:48:09','2222222222','紧急名称2','upload/jinjichengdu_jinjifengmian2.jpg,upload/jinjichengdu_jinjifengmian3.jpg,upload/jinjichengdu_jinjifengmian4.jpg','紧急事件2','紧急内容2','发布时间2'),(63,'2023-03-07 12:48:09','3333333333','紧急名称3','upload/jinjichengdu_jinjifengmian3.jpg,upload/jinjichengdu_jinjifengmian4.jpg,upload/jinjichengdu_jinjifengmian5.jpg','紧急事件3','紧急内容3','发布时间3'),(64,'2023-03-07 12:48:09','4444444444','紧急名称4','upload/jinjichengdu_jinjifengmian4.jpg,upload/jinjichengdu_jinjifengmian5.jpg,upload/jinjichengdu_jinjifengmian6.jpg','紧急事件4','紧急内容4','发布时间4'),(65,'2023-03-07 12:48:09','5555555555','紧急名称5','upload/jinjichengdu_jinjifengmian5.jpg,upload/jinjichengdu_jinjifengmian6.jpg,upload/jinjichengdu_jinjifengmian7.jpg','紧急事件5','紧急内容5','发布时间5'),(66,'2023-03-07 12:48:09','6666666666','紧急名称6','upload/jinjichengdu_jinjifengmian6.jpg,upload/jinjichengdu_jinjifengmian7.jpg,upload/jinjichengdu_jinjifengmian8.jpg','紧急事件6','紧急内容6','发布时间6'),(67,'2023-03-07 12:48:09','7777777777','紧急名称7','upload/jinjichengdu_jinjifengmian7.jpg,upload/jinjichengdu_jinjifengmian8.jpg,upload/jinjichengdu_jinjifengmian9.jpg','紧急事件7','紧急内容7','发布时间7'),(68,'2023-03-07 12:48:09','8888888888','紧急名称8','upload/jinjichengdu_jinjifengmian8.jpg,upload/jinjichengdu_jinjifengmian9.jpg,upload/jinjichengdu_jinjifengmian10.jpg','紧急事件8','紧急内容8','发布时间8'),(69,'2023-03-07 12:53:59','1678193565215','11','upload/lg_3085384_1589975250_5ec518d25f4eb-1678193631266.jpg','11','11','12.21');
/*!40000 ALTER TABLE `jinjichengdu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juanzengleixing`
--

DROP TABLE IF EXISTS `juanzengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juanzengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengleixing` varchar(200) DEFAULT NULL COMMENT '捐赠类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='捐赠类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juanzengleixing`
--

LOCK TABLES `juanzengleixing` WRITE;
/*!40000 ALTER TABLE `juanzengleixing` DISABLE KEYS */;
INSERT INTO `juanzengleixing` VALUES (71,'2023-03-07 12:48:09','捐赠类型1'),(72,'2023-03-07 12:48:09','捐赠类型2'),(73,'2023-03-07 12:48:09','捐赠类型3'),(74,'2023-03-07 12:48:09','捐赠类型4'),(75,'2023-03-07 12:48:09','捐赠类型5'),(76,'2023-03-07 12:48:09','捐赠类型6'),(77,'2023-03-07 12:48:09','捐赠类型7'),(78,'2023-03-07 12:48:09','捐赠类型8');
/*!40000 ALTER TABLE `juanzengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2023-03-07 12:48:09','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(112,'2023-03-07 12:48:09','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(113,'2023-03-07 12:48:09','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2023-03-07 12:48:09','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2023-03-07 12:48:09','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2023-03-07 12:48:09','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(117,'2023-03-07 12:48:09','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(118,'2023-03-07 12:48:09','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2023-03-07 12:50:29',19,32,'wupinxinxi','物品名称2','upload/wupinxinxi_wupintupian2.jpg','1','',''),(2,'2023-03-07 12:50:36',19,54,'gongyitonggao','公益标题4','upload/gongyitonggao_fengmian4.jpg','1','','');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-03-07 12:48:09','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-07 12:48:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinleixing`
--

DROP TABLE IF EXISTS `wupinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='物品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinleixing`
--

LOCK TABLES `wupinleixing` WRITE;
/*!40000 ALTER TABLE `wupinleixing` DISABLE KEYS */;
INSERT INTO `wupinleixing` VALUES (21,'2023-03-07 12:48:09','物品类型1'),(22,'2023-03-07 12:48:09','物品类型2'),(23,'2023-03-07 12:48:09','物品类型3'),(24,'2023-03-07 12:48:09','物品类型4'),(25,'2023-03-07 12:48:09','物品类型5'),(26,'2023-03-07 12:48:09','物品类型6'),(27,'2023-03-07 12:48:09','物品类型7'),(28,'2023-03-07 12:48:09','物品类型8'),(29,'2023-03-07 12:50:55','222');
/*!40000 ALTER TABLE `wupinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinxinxi`
--

DROP TABLE IF EXISTS `wupinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `wupintupian` longtext COMMENT '物品图片',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wupinbianhao` (`wupinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinxinxi`
--

LOCK TABLES `wupinxinxi` WRITE;
/*!40000 ALTER TABLE `wupinxinxi` DISABLE KEYS */;
INSERT INTO `wupinxinxi` VALUES (31,'2023-03-07 12:48:09','1111111111','物品名称1','物品类型1','upload/wupinxinxi_wupintupian1.jpg,upload/wupinxinxi_wupintupian2.jpg,upload/wupinxinxi_wupintupian3.jpg',1,1,'规格1','2023-03-07','物品详情1','2023-03-07 20:48:09',1),(32,'2023-03-07 12:48:09','2222222222','物品名称2','物品类型2','upload/wupinxinxi_wupintupian2.jpg,upload/wupinxinxi_wupintupian3.jpg,upload/wupinxinxi_wupintupian4.jpg',2,2,'规格2','2023-03-07','物品详情2','2023-03-07 12:50:26',3),(33,'2023-03-07 12:48:09','3333333333','物品名称3','物品类型3','upload/wupinxinxi_wupintupian3.jpg,upload/wupinxinxi_wupintupian4.jpg,upload/wupinxinxi_wupintupian5.jpg',3,3,'规格3','2023-03-07','物品详情3','2023-03-07 20:48:09',3),(34,'2023-03-07 12:48:09','4444444444','物品名称4','物品类型4','upload/wupinxinxi_wupintupian4.jpg,upload/wupinxinxi_wupintupian5.jpg,upload/wupinxinxi_wupintupian6.jpg',4,4,'规格4','2023-03-07','物品详情4','2023-03-07 20:48:09',4),(35,'2023-03-07 12:48:09','5555555555','物品名称5','物品类型5','upload/wupinxinxi_wupintupian5.jpg,upload/wupinxinxi_wupintupian6.jpg,upload/wupinxinxi_wupintupian7.jpg',5,5,'规格5','2023-03-07','物品详情5','2023-03-07 20:48:09',5),(36,'2023-03-07 12:48:09','6666666666','物品名称6','物品类型6','upload/wupinxinxi_wupintupian6.jpg,upload/wupinxinxi_wupintupian7.jpg,upload/wupinxinxi_wupintupian8.jpg',6,6,'规格6','2023-03-07','物品详情6','2023-03-07 20:48:09',6),(37,'2023-03-07 12:48:09','7777777777','物品名称7','物品类型7','upload/wupinxinxi_wupintupian7.jpg,upload/wupinxinxi_wupintupian8.jpg,upload/wupinxinxi_wupintupian9.jpg',7,7,'规格7','2023-03-07','物品详情7','2023-03-07 20:48:09',7),(38,'2023-03-07 12:48:09','8888888888','物品名称8','物品类型8','upload/wupinxinxi_wupintupian8.jpg,upload/wupinxinxi_wupintupian9.jpg,upload/wupinxinxi_wupintupian10.jpg',8,8,'规格8','2023-03-07','物品详情8','2023-03-07 20:48:09',8),(39,'2023-03-07 12:51:18','1678193402591','222','222','upload/20210401102025_eec27-1678193468347.jpg',2,2,'2','2023-03-07','<p>测试</p>','2023-03-07 12:51:38',2);
/*!40000 ALTER TABLE `wupinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-03-07 12:48:09','用户账号1','用户姓名1','123456','男','upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001'),(12,'2023-03-07 12:48:09','用户账号2','用户姓名2','123456','男','upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002'),(13,'2023-03-07 12:48:09','用户账号3','用户姓名3','123456','男','upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003'),(14,'2023-03-07 12:48:09','用户账号4','用户姓名4','123456','男','upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','440300199404040004'),(15,'2023-03-07 12:48:09','用户账号5','用户姓名5','123456','男','upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com','440300199505050005'),(16,'2023-03-07 12:48:09','用户账号6','用户姓名6','123456','男','upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','440300199606060006'),(17,'2023-03-07 12:48:09','用户账号7','用户姓名7','123456','男','upload/yonghu_touxiang7.jpg','13823888887','773890007@qq.com','440300199707070007'),(18,'2023-03-07 12:48:09','用户账号8','用户姓名8','123456','男','upload/yonghu_touxiang8.jpg','13823888888','773890008@qq.com','440300199808080008'),(19,'2023-03-07 12:50:11','111','111','111','女','upload/20210621095727_afb21-1678193388610.jpg','15825888888','111@qq.com','441632546987965');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 23:14:19
