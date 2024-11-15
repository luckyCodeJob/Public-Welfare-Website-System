/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gongyiwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gongyiwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gongyiwangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/gongyiwangzhan/upload/1621318679504.jpg'),(2,'轮播图2','http://localhost:8080/gongyiwangzhan/upload/1621335569157.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-18 14:03:25'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-18 14:03:25'),(3,'role_types','权限名称',1,'普通用户',NULL,'2021-05-18 14:03:25'),(4,'role_types','权限名称',2,'志愿者',NULL,'2021-05-18 14:03:25'),(5,'zhiyuanzheshenqing_yesno_types','是否同意',1,'待审核',NULL,'2021-05-18 14:03:25'),(6,'zhiyuanzheshenqing_yesno_types','是否同意',2,'同意',NULL,'2021-05-18 14:03:25'),(7,'zhiyuanzheshenqing_yesno_types','是否同意',3,'不同意',NULL,'2021-05-18 14:03:25'),(8,'gongyihuodong_order_types','是否同意',1,'待审核',NULL,'2021-05-18 14:03:26'),(9,'gongyihuodong_order_types','是否同意',2,'同意',NULL,'2021-05-18 14:03:26'),(10,'gongyihuodong_order_types','是否同意',3,'不同意',NULL,'2021-05-18 14:03:26'),(11,'juanzeng_types','是否同意接收',1,'待审核',NULL,'2021-05-18 14:03:26'),(12,'juanzeng_types','是否同意接收',2,'同意',NULL,'2021-05-18 14:03:26'),(13,'juanzeng_types','是否同意接收',3,'不同意',NULL,'2021-05-18 14:03:26'),(14,'wupin_types','物品类型名称',1,'物品类型1',NULL,'2021-05-18 14:03:26'),(15,'wupin_types','物品类型名称',2,'物品类型2',NULL,'2021-05-18 14:03:26'),(16,'wupin_types','物品类型名称',3,'物品类型3',NULL,'2021-05-18 14:03:26'),(17,'wupin_types','物品类型名称',4,'物品类型4',NULL,'2021-05-18 14:03:26'),(18,'gongyihuodong_types','公益活动类型名称',1,'公益类型1',NULL,'2021-05-18 14:03:26'),(19,'gongyihuodong_types','公益活动类型名称',2,'公益类型2',NULL,'2021-05-18 14:03:26'),(20,'gongyihuodong_types','公益活动类型名称',3,'公益类型3',NULL,'2021-05-18 14:03:26'),(21,'minshengxinwen_types','民生新闻类型名称',1,'民生新闻类型1',NULL,'2021-05-18 14:03:26'),(22,'minshengxinwen_types','民生新闻类型名称',2,'民生新闻类型2',NULL,'2021-05-18 14:03:26'),(23,'minshengxinwen_types','民生新闻类型名称',3,'民生新闻类型3',NULL,'2021-05-18 14:03:26'),(24,'xiaoyuanxinwen_types','校园新闻类型名称',1,'校园新闻类型1',NULL,'2021-05-18 14:03:26'),(25,'xiaoyuanxinwen_types','校园新闻类型名称',2,'校园新闻类型2',NULL,'2021-05-18 14:03:26'),(26,'xiaoyuanxinwen_types','校园新闻类型名称',3,'校园新闻类型3',NULL,'2021-05-18 14:03:26'),(27,'xiaoyuanxinwen_types','校园新闻类型名称',4,'校园新闻类型4',NULL,'2021-05-18 19:09:20');

/*Table structure for table `gongyihuodong` */

DROP TABLE IF EXISTS `gongyihuodong`;

CREATE TABLE `gongyihuodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyihuodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称 Search111 ',
  `gongyihuodong_types` int(11) DEFAULT NULL COMMENT '活动类型 Search111 ',
  `gongyihuodong_photo` varchar(200) DEFAULT NULL COMMENT '活动照片',
  `gongyihuodong_content` text COMMENT '活动详情',
  `canyu_time` varchar(200) DEFAULT NULL COMMENT '参与时间 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公益活动';

/*Data for the table `gongyihuodong` */

insert  into `gongyihuodong`(`id`,`gongyihuodong_name`,`gongyihuodong_types`,`gongyihuodong_photo`,`gongyihuodong_content`,`canyu_time`,`insert_time`,`create_time`) values (1,'公益活动1',1,'http://localhost:8080/gongyiwangzhan/file/download?fileName=1621326165460.jpg','公益活动1的详情\r\n','2021-05-20 00:00:00','2021-05-18 16:22:53','2021-05-18 16:22:53'),(2,'公益活动2',2,'http://localhost:8080/gongyiwangzhan/file/download?fileName=1621335650371.jpg','公益活动2的详情\r\n','2021-05-20 00:00:00','2021-05-18 19:01:03','2021-05-18 19:01:03');

/*Table structure for table `gongyihuodong_collection` */

DROP TABLE IF EXISTS `gongyihuodong_collection`;

CREATE TABLE `gongyihuodong_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyihuodong_id` int(11) DEFAULT NULL COMMENT '公益活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公益活动收藏';

/*Data for the table `gongyihuodong_collection` */

insert  into `gongyihuodong_collection`(`id`,`gongyihuodong_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-05-18 16:42:37','2021-05-18 16:42:37'),(2,2,2,'2021-05-18 19:01:20','2021-05-18 19:01:20');

/*Table structure for table `gongyihuodong_order` */

DROP TABLE IF EXISTS `gongyihuodong_order`;

CREATE TABLE `gongyihuodong_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyihuodong_id` int(11) DEFAULT NULL COMMENT '公益活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongyihuodong_order_types` int(11) DEFAULT NULL COMMENT '是否同意',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公益活动预约';

/*Data for the table `gongyihuodong_order` */

insert  into `gongyihuodong_order`(`id`,`gongyihuodong_id`,`yonghu_id`,`gongyihuodong_order_types`,`insert_time`,`create_time`) values (3,1,1,2,'2021-05-18 16:46:35','2021-05-18 16:46:35'),(4,2,2,2,'2021-05-18 19:01:24','2021-05-18 19:01:24');

/*Table structure for table `juanzeng` */

DROP TABLE IF EXISTS `juanzeng`;

CREATE TABLE `juanzeng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupin_name` varchar(200) DEFAULT NULL COMMENT '物品名字 Search111 ',
  `wupin_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111 ',
  `wupin_number` int(11) DEFAULT NULL COMMENT '物品数量',
  `qujian_address` varchar(200) DEFAULT NULL COMMENT '取件地址 Search111 ',
  `juanzeng_content` text COMMENT '捐赠详情',
  `juanzeng_types` int(11) DEFAULT NULL COMMENT '是否接收',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物品捐赠';

/*Data for the table `juanzeng` */

insert  into `juanzeng`(`id`,`yonghu_id`,`wupin_name`,`wupin_types`,`wupin_number`,`qujian_address`,`juanzeng_content`,`juanzeng_types`,`insert_time`,`create_time`) values (1,1,'物品1',3,1,'地址1',NULL,1,'2021-05-18 16:30:05','2021-05-18 16:30:05'),(2,1,'物品3',4,3,'物品3的取件地址',NULL,1,'2021-05-18 16:37:18','2021-05-18 16:37:18'),(3,1,'物品1',4,23,'撒打算',NULL,1,'2021-05-18 16:38:36','2021-05-18 16:38:36'),(4,1,'87',4,7,'问清',NULL,1,'2021-05-18 16:41:01','2021-05-18 16:41:01'),(5,2,'物品8',3,7,'地址8','',2,'2021-05-18 19:07:53','2021-05-18 19:07:53'),(6,1,'物品9',3,1,'取件地址9','捐赠详情\r\n',1,'2021-05-18 19:18:44','2021-05-18 19:18:44');

/*Table structure for table `minshengxinwen` */

DROP TABLE IF EXISTS `minshengxinwen`;

CREATE TABLE `minshengxinwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `minshengxinwen_name` varchar(200) DEFAULT NULL COMMENT '民生新闻名称 Search111 ',
  `minshengxinwen_types` int(11) DEFAULT NULL COMMENT '民生新闻类型 Search111 ',
  `minshengxinwen_photo` varchar(200) DEFAULT NULL COMMENT '新闻照片',
  `minshengxinwen_content` text COMMENT '新闻详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='民生新闻';

/*Data for the table `minshengxinwen` */

insert  into `minshengxinwen`(`id`,`minshengxinwen_name`,`minshengxinwen_types`,`minshengxinwen_photo`,`minshengxinwen_content`,`insert_time`,`create_time`) values (3,'新闻1',2,'http://localhost:8080/gongyiwangzhan/file/download?fileName=1621325624045.jpg','新闻1的详情\r\n','2021-05-18 16:13:47','2021-05-18 16:13:47');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','icrn6ufj6pxs54blw39yhpfpbty6xrcr','2021-05-18 14:17:47','2021-05-18 20:20:28'),(2,1,'a1','yonghu','用户','7mnpvfufy5to3j84z8hygrqor8f350yv','2021-05-18 16:14:12','2021-05-18 20:19:15'),(3,2,'a2','yonghu','用户','ap6ps8r523mtgmu5s7l9cki3dmy3roez','2021-05-18 19:01:13','2021-05-18 20:01:13'),(4,3,'a3','yonghu','用户','a1upktzxq93fts26412iowx3dvfq50zv','2021-05-18 19:21:41','2021-05-18 20:21:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xiaoyuanxinwen` */

DROP TABLE IF EXISTS `xiaoyuanxinwen`;

CREATE TABLE `xiaoyuanxinwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoyuanxinwen_name` varchar(200) DEFAULT NULL COMMENT '校园新闻名称 Search111 ',
  `xiaoyuanxinwen_types` int(11) DEFAULT NULL COMMENT '校园新闻类型 Search111 ',
  `xiaoyuanxinwen_photo` varchar(200) DEFAULT NULL COMMENT '新闻照片',
  `xiaoyuanxinwen_content` text COMMENT '新闻详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='校园新闻';

/*Data for the table `xiaoyuanxinwen` */

insert  into `xiaoyuanxinwen`(`id`,`xiaoyuanxinwen_name`,`xiaoyuanxinwen_types`,`xiaoyuanxinwen_photo`,`xiaoyuanxinwen_content`,`insert_time`,`create_time`) values (3,'新闻2',2,'http://localhost:8080/gongyiwangzhan/file/download?fileName=1621325639481.jpg','新闻2的详情\r\n','2021-05-18 16:14:03','2021-05-18 16:14:03'),(4,'新闻3',3,'http://localhost:8080/gongyiwangzhan/file/download?fileName=1621336104963.jpg','新闻3的详情\r\n','2021-05-18 19:08:29','2021-05-18 19:08:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `role_types` int(11) DEFAULT NULL COMMENT '角色 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`role_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/gongyiwangzhan/file/download?fileName=1621318703821.jpg',2,2,'2021-05-18 14:18:28'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/gongyiwangzhan/file/download?fileName=1621335617075.jpg',2,1,'2021-05-18 19:00:19'),(3,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/gongyiwangzhan/upload/1621336913813.jpg',1,1,'2021-05-18 19:21:37');

/*Table structure for table `zhiyuanzheshenqing` */

DROP TABLE IF EXISTS `zhiyuanzheshenqing`;

CREATE TABLE `zhiyuanzheshenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhiyuanzheshenqing_content` text COMMENT '申请内容',
  `zhiyuanzheshenqing_file` varchar(200) DEFAULT NULL COMMENT '申请材料',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `zhiyuanzheshenqing_yesno_types` int(11) DEFAULT NULL COMMENT '是否同意',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='志愿者申请';

/*Data for the table `zhiyuanzheshenqing` */

insert  into `zhiyuanzheshenqing`(`id`,`yonghu_id`,`zhiyuanzheshenqing_content`,`zhiyuanzheshenqing_file`,`insert_time`,`zhiyuanzheshenqing_yesno_types`,`create_time`) values (1,1,'申请内容\r\n','http://localhost:8080/gongyiwangzhan/file/download?fileName=1621336311207.txt','2021-05-18 19:11:52',2,'2021-05-18 19:11:52');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
