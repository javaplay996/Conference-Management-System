/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - huiyiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huiyiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `huiyiguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-16 13:52:00'),(2,'sex_types','性别',2,'女',NULL,'2021-03-16 13:52:00'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-16 13:52:00'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-16 13:52:00'),(5,'role_types','权限类型',1,'经理',NULL,'2021-03-16 13:52:00'),(6,'role_types','权限类型',2,'用户',NULL,'2021-03-16 13:52:00'),(7,'huiyishi_types','会议室',1,'会议室1',NULL,'2021-03-16 13:52:00'),(8,'huiyishi_types','会议室',2,'会议室2',NULL,'2021-03-16 13:52:00'),(9,'huiyishi_types','会议室',3,'会议室3',NULL,'2021-03-16 13:52:00'),(10,'huiyishi_types','会议室',4,'会议室4',NULL,'2021-03-16 13:52:00'),(11,'huiyishi_types','会议室',5,'会议室5',NULL,'2021-03-16 13:52:00'),(12,'huiyishi_types','会议室',6,'会议室6',NULL,'2021-03-16 13:52:00'),(13,'huiyi_types','会议状态',1,'已完成',NULL,'2021-03-16 13:52:00'),(14,'huiyi_types','会议状态',2,'已预订',NULL,'2021-03-16 13:52:00'),(15,'huiyi_types','会议状态',3,'拒绝',NULL,'2021-03-16 13:52:00'),(16,'huiyi_types','会议状态',4,'申请',NULL,'2021-03-16 13:52:00'),(17,'chakan_types','是否查看',1,'查看',NULL,'2021-03-16 13:52:00'),(18,'chakan_types','是否查看',2,'未查看',NULL,'2021-03-16 13:52:00'),(19,'renwu_one_types','任务类型',1,'紧急任务',NULL,'2021-03-16 13:52:00'),(20,'renwu_one_types','任务类型',2,'日常任务',NULL,'2021-03-16 13:52:00'),(21,'renwu_one_types','任务类型',3,'通知任务',NULL,'2021-03-16 13:52:00'),(22,'huiyishi_types','会议室',7,'999',NULL,'2021-03-16 19:15:51');

/*Table structure for table `huiyi` */

DROP TABLE IF EXISTS `huiyi`;

CREATE TABLE `huiyi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyishi_types` int(11) DEFAULT NULL COMMENT '会议室',
  `huiyi_name` varchar(200) DEFAULT NULL COMMENT '会议名  ',
  `huiyiyuanyou_content` varchar(200) DEFAULT NULL COMMENT '会议缘由',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '会议发起人id',
  `huiyi_types` int(11) DEFAULT NULL COMMENT '会议状态',
  `huiyi_content` varchar(200) DEFAULT NULL COMMENT '会议内容',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '会议开始时间   ',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '会议结束时间  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='会议管理';

/*Data for the table `huiyi` */

insert  into `huiyi`(`id`,`huiyishi_types`,`huiyi_name`,`huiyiyuanyou_content`,`yonghu_id`,`huiyi_types`,`huiyi_content`,`kaishi_time`,`jieshu_time`,`create_time`) values (2,5,'第一次会议','开个早会\r\n',2,2,'萨达\r\n','2021-03-16 16:00:00','2021-03-16 18:00:00','2021-03-16 16:58:06'),(3,5,'用户a22的第一次会议','会议原油\r\n',4,4,'a22的会议内容\r\n','2021-03-16 19:01:42','2021-03-17 00:00:00','2021-03-16 19:01:51'),(4,4,'用户a22的第二次会议','萨达s\r\n',4,2,' 打赏打赏\r\n','2021-03-16 16:00:00','2021-03-16 18:00:00','2021-03-16 19:02:41');

/*Table structure for table `huiyiwenjian` */

DROP TABLE IF EXISTS `huiyiwenjian`;

CREATE TABLE `huiyiwenjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyi_id` int(11) DEFAULT NULL COMMENT '会议id',
  `huiyiwenjian_name` varchar(200) DEFAULT NULL COMMENT '文件名',
  `huiyiwenjian_content` varchar(200) DEFAULT NULL COMMENT '文件大致简介',
  `huiyiwenjian_file` varchar(200) DEFAULT NULL COMMENT '会议文件',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会议文件管理';

/*Data for the table `huiyiwenjian` */

insert  into `huiyiwenjian`(`id`,`huiyi_id`,`huiyiwenjian_name`,`huiyiwenjian_content`,`huiyiwenjian_file`,`insert_time`,`create_time`) values (1,2,'文件1','撒大大撒\r\n','http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615885449114.jpg','2021-03-16 17:04:11','2021-03-16 17:04:11'),(2,2,'第一次会议的文件2','文件2的简介\r\n','http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615885483940.jpg','2021-03-16 17:04:45','2021-03-16 17:04:45');

/*Table structure for table `renwu_one` */

DROP TABLE IF EXISTS `renwu_one`;

CREATE TABLE `renwu_one` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fabuyonghu_id` int(11) DEFAULT NULL COMMENT '发布人',
  `jieshouyonghu_id` int(11) DEFAULT NULL COMMENT '接收人',
  `renwu_one_types` int(11) DEFAULT NULL COMMENT '任务类型   ',
  `renwu_one_content` varchar(200) DEFAULT NULL COMMENT '任务内容',
  `chakan_types` int(11) DEFAULT NULL COMMENT '接收人是否查看',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='任务管理';

/*Data for the table `renwu_one` */

insert  into `renwu_one`(`id`,`fabuyonghu_id`,`jieshouyonghu_id`,`renwu_one_types`,`renwu_one_content`,`chakan_types`,`insert_time`,`create_time`) values (1,2,5,2,'任务1\r\n',2,'2021-03-16 17:25:12','2021-03-16 17:25:12'),(2,2,5,3,'111\r\n',2,'2021-03-16 17:26:32','2021-03-16 17:26:32'),(3,2,4,3,'111\r\n',1,'2021-03-16 17:29:49','2021-03-16 17:29:49'),(4,2,7,2,'任务内容啊啊啊\r\n',1,'2021-03-16 19:28:08','2021-03-16 19:28:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','4cdvijhndgfzc9k3pj5lx2enqg6yqaeu','2021-03-16 11:52:24','2021-03-16 20:32:54'),(2,2,'a2','yonghu','经理','lf4dgjbegsfxt5k4sdtnvesga5qjoevl','2021-03-16 15:51:40','2021-03-16 20:29:17'),(3,4,'a22','yonghu','用户','yqfdd05kety8evnedlaeokui9nxcosml','2021-03-16 18:43:33','2021-03-16 20:00:32'),(4,7,'a44','yonghu','用户','8z4upuf7femicjta18ba2o7l1o4jevvk','2021-03-16 19:28:58','2021-03-16 20:31:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-16 13:51:59','日常公告','日常公告','公告信息','2021-03-16 13:51:59'),(2,'2021-03-16 13:51:59','紧急公告','紧急公告','公告信息','2021-03-16 13:51:59'),(3,'2021-03-16 13:51:59','其他公告','其他公告','公告信息','2021-03-16 13:51:59'),(4,'2021-03-16 19:31:30','wds ','日常公告','3..33','2021-03-16 19:31:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别   ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `role_types` int(11) DEFAULT NULL COMMENT '权限    ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`youxiang`,`sex_types`,`yonghu_photo`,`nation`,`politics_types`,`birthplace`,`role_types`,`create_time`) values (1,'a1','123456','张1','17703789991','410224199610232021','22@qq.com',2,'http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615880636113.jpg','汉',2,'审犯罪',1,'2021-03-16 15:44:07'),(2,'a2','123456','张2','17703789992','410224199610232012','22@qq.com1',2,'http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615880700807.jpg','汉',2,'审犯罪1',1,'2021-03-16 15:45:09'),(3,'a11','123456','张11','17703789911','410224199610232011','22@qq.com',1,'http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615880755485.jpg','维吾尔族',2,'河南开封',2,'2021-03-16 15:46:02'),(4,'a22','123456','张22','17703789922','410224199610232022','88@qq.com',2,'http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615880791503.jpg','苗族',1,'浙江杭州',2,'2021-03-16 15:46:41'),(5,'a33','123456','张33','17703789933','410224199610232033','99@qq.com',2,'http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615880999085.jpg','汉',2,'浙江杭州',2,'2021-03-16 15:50:00'),(6,'a3','123456','张三','17703789993','410224199610232013','88@qq.com',1,'http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615893124132.jpg','维吾尔族',2,'河南开封',1,'2021-03-16 19:12:49'),(7,'a44','123456','张四四','17703789944','410224199610232044','99@qq.com',2,'http://localhost:8080/huiyiguanlixitong/file/download?fileName=1615893207042.jpg','汉族',2,'浙江杭州',2,'2021-03-16 19:13:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
