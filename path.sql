-- MySQL dump 10.13  Distrib 5.5.47, for Win32 (x86)
--
-- Host: localhost    Database: play
-- ------------------------------------------------------
-- Server version	5.5.47

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
-- Table structure for table `play_admin`
--

DROP TABLE IF EXISTS `play_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(60) NOT NULL COMMENT '管理员名称',
  `password` varchar(60) NOT NULL COMMENT '管理员密码',
  `email` varchar(255) NOT NULL COMMENT '管理员邮箱',
  `thumb_admin` varchar(50) NOT NULL COMMENT '管理员头像',
  `ip` varchar(50) NOT NULL COMMENT '登陆ip',
  `create_time` varchar(50) NOT NULL COMMENT '新建时间',
  `list_time` varchar(50) NOT NULL COMMENT '最后登陆时间',
  `count` char(20) NOT NULL COMMENT '登陆次数',
  `status` int(2) NOT NULL COMMENT '状态',
  `groupid` tinyint(10) NOT NULL COMMENT '所属用户组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_admin`
--

LOCK TABLES `play_admin` WRITE;
/*!40000 ALTER TABLE `play_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `play_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_conf`
--

DROP TABLE IF EXISTS `play_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_conf` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '配置项id',
  `cname` varchar(60) NOT NULL COMMENT '中文名称',
  `ename` varchar(60) NOT NULL COMMENT '英文名称',
  `form_type` varchar(60) NOT NULL DEFAULT 'input' COMMENT '表单类型',
  `conf_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配置类型 1：网店配置 2：商品配置',
  `values` varchar(100) NOT NULL COMMENT '可选值',
  `value` varchar(100) NOT NULL COMMENT '默认值',
  `sort` smallint(60) NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_conf`
--

LOCK TABLES `play_conf` WRITE;
/*!40000 ALTER TABLE `play_conf` DISABLE KEYS */;
INSERT INTO `play_conf` VALUES (1,'dd','dd','input',1,'d','d',1),(2,'sss','ssss','input',2,'sss','ss',1);
/*!40000 ALTER TABLE `play_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_link`
--

DROP TABLE IF EXISTS `play_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_link` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL COMMENT '标题',
  `link_url` varchar(100) NOT NULL COMMENT '链接地址',
  `logo` varchar(100) NOT NULL COMMENT 'logo',
  `description` varchar(255) NOT NULL COMMENT '链接描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '链接类型 1：文字 2：图片',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态1：启用 0：禁用',
  `file` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_link`
--

LOCK TABLES `play_link` WRITE;
/*!40000 ALTER TABLE `play_link` DISABLE KEYS */;
INSERT INTO `play_link` VALUES (1,'啊实打实','http://撒打算','/link/20181010\\40db1d91aac6b3ff862ba75ab2a2f7f9.jpg','的撒旦',1,1,''),(2,'啊实打实的','http://撒大苏打','/link/20181010\\31b173d4f50a6b1c6bedb7fa93b5843f.jpg','',1,1,''),(5,'wewqe','http://weqweqwe','','weqwewqew',1,1,'');
/*!40000 ALTER TABLE `play_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_message`
--

DROP TABLE IF EXISTS `play_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_message` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `title` varchar(60) NOT NULL COMMENT '留言标题',
  `name` varchar(60) NOT NULL COMMENT '留言姓名',
  `email` varchar(200) NOT NULL COMMENT '留言邮箱',
  `content` text NOT NULL COMMENT '留言内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间',
  `ip` varchar(20) NOT NULL COMMENT '留言ip',
  `status` tinyint(2) NOT NULL COMMENT '留言状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_message`
--

LOCK TABLES `play_message` WRITE;
/*!40000 ALTER TABLE `play_message` DISABLE KEYS */;
INSERT INTO `play_message` VALUES (2,'撒大声地','','','','2018-10-21 07:19:57','',1);
/*!40000 ALTER TABLE `play_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-28 18:01:52
