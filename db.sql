/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - sushebaoxiuxiitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sushebaoxiuxiitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sushebaoxiuxiitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/sushebaoxiuxiitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/sushebaoxiuxiitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/sushebaoxiuxiitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'guzhangshangbao_types','故障类型',1,'故障类型1',NULL,NULL,'2022-02-18 13:06:37'),(2,'guzhangshangbao_types','故障类型',2,'故障类型2',NULL,NULL,'2022-02-18 13:06:38'),(3,'guzhangshangbao_types','故障类型',3,'故障类型3',NULL,NULL,'2022-02-18 13:06:38'),(4,'quyu_types','所在区域',1,'所在区域1',NULL,NULL,'2022-02-18 13:06:38'),(5,'quyu_types','所在区域',2,'所在区域2',NULL,NULL,'2022-02-18 13:06:38'),(6,'quyu_types','所在区域',3,'所在区域3',NULL,NULL,'2022-02-18 13:06:38'),(7,'chulijieguo_types','处理结果',1,'未维修',NULL,NULL,'2022-02-18 13:06:38'),(8,'chulijieguo_types','处理结果',2,'正在维修',NULL,NULL,'2022-02-18 13:06:38'),(9,'chulijieguo_types','处理结果',3,'维修成功',NULL,NULL,'2022-02-18 13:06:38'),(10,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-18 13:06:38'),(11,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-18 13:06:38'),(12,'news_types','新闻信息类型',1,'新闻信息类型1',NULL,NULL,'2022-02-18 13:06:38'),(13,'news_types','新闻信息类型',2,'新闻信息类型2',NULL,NULL,'2022-02-18 13:06:38'),(14,'news_types','新闻信息类型',3,'新闻信息类型3',NULL,NULL,'2022-02-18 13:06:38'),(15,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-02-18 13:06:38'),(16,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-02-18 13:06:38'),(17,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2022-02-18 13:06:38'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-18 13:06:38'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-18 13:06:38');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`xuesheng_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,2,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,2,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,3,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,3,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,2,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(6,'帖子标题6',3,NULL,'发布内容6',NULL,2,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(7,'帖子标题7',1,NULL,'发布内容7',NULL,3,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(8,'帖子标题8',2,NULL,'发布内容8',NULL,2,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(9,'帖子标题9',2,NULL,'发布内容9',NULL,2,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(11,'帖子标题11',1,NULL,'发布内容11',NULL,3,1,'2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(12,NULL,1,NULL,'学生评论',11,NULL,2,'2022-02-18 15:21:13',NULL,'2022-02-18 15:21:13'),(13,NULL,NULL,1,'管理评论',11,NULL,2,'2022-02-18 15:24:03',NULL,'2022-02-18 15:24:03');

/*Table structure for table `guzhangshangbao` */

DROP TABLE IF EXISTS `guzhangshangbao`;

CREATE TABLE `guzhangshangbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `guzhangshangbao_uuid_number` varchar(200) DEFAULT NULL COMMENT '任务编号',
  `quyu_types` int(11) DEFAULT NULL COMMENT '区域',
  `guzhangshangbao_address` varchar(200) DEFAULT NULL COMMENT '所在区域',
  `guzhangshangbao_guzhang` varchar(200) DEFAULT NULL COMMENT '故障信息',
  `guzhangshangbao_types` int(11) DEFAULT NULL COMMENT '故障类型',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `chulijieguo_types` int(11) DEFAULT NULL COMMENT '处理结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='故障上报';

/*Data for the table `guzhangshangbao` */

insert  into `guzhangshangbao`(`id`,`xuesheng_id`,`guzhangshangbao_uuid_number`,`quyu_types`,`guzhangshangbao_address`,`guzhangshangbao_guzhang`,`guzhangshangbao_types`,`weixiuyuan_id`,`chulijieguo_types`,`create_time`) values (1,3,'164516082313217',1,'所在区域1','故障信息1',2,3,1,'2022-02-18 13:07:03'),(2,2,'16451608231328',2,'所在区域2','故障信息2',2,2,3,'2022-02-18 13:07:03'),(3,2,'16451608231320',1,'所在区域3','故障信息3',3,2,3,'2022-02-18 13:07:03'),(4,3,'164516082313215',3,'所在区域4','故障信息4',1,1,1,'2022-02-18 13:07:03'),(5,3,'164516082313217',1,'所在区域5','故障信息5',3,1,2,'2022-02-18 13:07:03'),(6,3,'16451608231320',1,'所在区域6','故障信息6',3,2,3,'2022-02-18 13:07:03'),(7,2,'16451608231329',2,'所在区域7','故障信息7',1,2,3,'2022-02-18 13:07:03'),(8,1,'16451608231323',3,'所在区域8','故障信息8',2,1,3,'2022-02-18 13:07:03'),(9,2,'164516082313220',1,'所在区域9','故障信息9',2,NULL,1,'2022-02-18 13:07:03'),(10,2,'164516082313219',1,'所在区域10','故障信息10',1,NULL,1,'2022-02-18 13:07:03'),(11,2,'16451608231328',1,'所在区域11','故障信息11',1,1,2,'2022-02-18 13:07:03'),(14,1,'1645168882426',1,'xx宿舍 xx楼 xx号','灯坏了',3,1,3,'2022-02-18 15:21:51');

/*Table structure for table `guzhangshangbao_commentback` */

DROP TABLE IF EXISTS `guzhangshangbao_commentback`;

CREATE TABLE `guzhangshangbao_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guzhangshangbao_id` int(11) DEFAULT NULL COMMENT '故障上报',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `guzhangshangbao_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='故障上报评价';

/*Data for the table `guzhangshangbao_commentback` */

insert  into `guzhangshangbao_commentback`(`id`,`guzhangshangbao_id`,`xuesheng_id`,`guzhangshangbao_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'评价内容1','回复信息1','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(2,2,2,'评价内容2','回复信息2','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(3,3,2,'评价内容3','回复信息3','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(4,4,1,'评价内容4','回复信息4','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(5,5,3,'评价内容5','回复信息5','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(6,6,2,'评价内容6','回复信息6','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(7,7,1,'评价内容7','回复信息7','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(8,8,2,'评价内容8','回复信息8','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(9,9,1,'评价内容9','回复信息9','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(10,10,3,'评价内容10','回复信息10','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(11,11,1,'评价内容11','回复信息11','2022-02-18 13:07:03','2022-02-18 13:07:03','2022-02-18 13:07:03'),(14,8,1,'维修完成后可以评价','管理可以回复','2022-02-18 15:22:17','2022-02-18 15:24:26','2022-02-18 15:22:17');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻信息时间',
  `news_content` text COMMENT '新闻信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'新闻信息标题1',3,'http://localhost:8080/sushebaoxiuxiitong/upload/1645162359282.webp','2022-02-18 13:07:03','<p>新闻信息详情1</p>',1,'2022-02-18 13:07:03'),(2,'新闻信息标题2',3,'http://localhost:8080/sushebaoxiuxiitong/upload/1645162351083.jpg','2022-02-18 13:07:03','<p>新闻信息详情2</p>',1,'2022-02-18 13:07:03'),(3,'新闻信息标题3',2,'http://localhost:8080/sushebaoxiuxiitong/upload/1645162333441.jpg','2022-02-18 13:07:03','<p>新闻信息详情3</p>',1,'2022-02-18 13:07:03'),(4,'新闻信息标题4',2,'http://localhost:8080/sushebaoxiuxiitong/upload/1645162341958.jpg','2022-02-18 13:07:03','<p>新闻信息详情4</p>',1,'2022-02-18 13:07:03'),(5,'新闻信息标题5',3,'http://localhost:8080/sushebaoxiuxiitong/upload/1645162325939.jpg','2022-02-18 13:07:03','<p>新闻信息详情5</p>',1,'2022-02-18 13:07:03'),(6,'新闻信息标题6',3,'http://localhost:8080/sushebaoxiuxiitong/upload/1645162310455.jpg','2022-02-18 13:07:03','<p>新闻信息详情6</p>',1,'2022-02-18 13:07:03');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','x2xmpyu5tmxcgnl9624zjo7ipweyssjs','2022-02-18 13:12:05','2022-02-18 16:40:52'),(2,1,'a1','weixiuyuan','维修人员','givovn4txtpi70xz2jnjvhfb817ow7b2','2022-02-18 13:49:48','2022-02-18 16:24:44'),(3,1,'a1','xuesheng','学生','bjclwku96b54md1cp6r7oi4oomy2pdjs','2022-02-18 14:18:22','2022-02-18 16:26:53'),(4,2,'a2','xuesheng','学生','yrn4oc9unj3vg30zfj28iv078hdg5qwv','2022-02-18 15:22:37','2022-02-18 16:22:37'),(5,2,'a2','weixiuyuan','维修人员','5cnj6rj611frumd6w445oaimueu6b110','2022-02-18 15:25:34','2022-02-18 16:25:35');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `weixiuyuan` */

DROP TABLE IF EXISTS `weixiuyuan`;

CREATE TABLE `weixiuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `weixiuyuan_name` varchar(200) DEFAULT NULL COMMENT '维修员姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `weixiuyuan_nianxian` varchar(200) DEFAULT NULL COMMENT '工作年限',
  `weixiuyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `weixiuyuan_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `weixiuyuan_content` text COMMENT '维修人员介绍',
  `weixiuyuan_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='维修人员';

/*Data for the table `weixiuyuan` */

insert  into `weixiuyuan`(`id`,`username`,`password`,`weixiuyuan_name`,`sex_types`,`weixiuyuan_nianxian`,`weixiuyuan_phone`,`weixiuyuan_photo`,`weixiuyuan_content`,`weixiuyuan_delete`,`create_time`) values (1,'a1','123456','维修员姓名1',2,'工作年限1','17703786901','http://localhost:8080/sushebaoxiuxiitong/upload/1645162289768.jpg','<p>维修人员介绍1</p>',1,'2022-02-18 13:07:03'),(2,'a2','123456','维修员姓名2',2,'工作年限2','17703786902','http://localhost:8080/sushebaoxiuxiitong/upload/1645162282043.jpg','<p>维修人员介绍2</p>',1,'2022-02-18 13:07:03'),(3,'a3','123456','维修员姓名3',1,'工作年限3','17703786903','http://localhost:8080/sushebaoxiuxiitong/upload/1645162272794.jpg','<p>维修人员介绍3</p>',1,'2022-02-18 13:07:03');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `xuesheng_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`sex_types`,`xuesheng_id_number`,`xuesheng_phone`,`xuesheng_photo`,`xuesheng_delete`,`create_time`) values (1,'a1','123456','学生姓名1',2,'410224199610232001','17703786901','http://localhost:8080/sushebaoxiuxiitong/upload/1645162110717.webp',1,'2022-02-18 13:07:03'),(2,'a2','123456','学生姓名2',1,'410224199610232002','17703786902','http://localhost:8080/sushebaoxiuxiitong/upload/1645162099205.webp',1,'2022-02-18 13:07:03'),(3,'a3','123456','学生姓名3',2,'410224199610232003','17703786903','http://localhost:8080/sushebaoxiuxiitong/upload/1645162092300.jpg',1,'2022-02-18 13:07:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
