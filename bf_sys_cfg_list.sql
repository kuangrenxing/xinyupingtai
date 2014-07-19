﻿# Host: localhost  (Version: 5.5.38)
# Date: 2014-07-18 23:24:42
# Generator: MySQL-Front 5.3  (Build 4.13)

/*!40101 SET NAMES utf8 */;

#
# Source for table "bf_sys_cfg_list"
#

DROP TABLE IF EXISTS `bf_sys_cfg_list`;
CREATE TABLE `bf_sys_cfg_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  `attach` varchar(255) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`cid`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

#
# Data for table "bf_sys_cfg_list"
#

/*!40000 ALTER TABLE `bf_sys_cfg_list` DISABLE KEYS */;
INSERT INTO `bf_sys_cfg_list` VALUES (20,4,'reflow_vip_money','10','','text','流量会员每月价格'),(21,4,'reflow_vip_min','1','','text','流量会员购买最少月数'),(22,4,'reflow_vip_max','99','','text','流量会员购买最大月数'),(23,5,'price_once','0.31','','text','每次访问所需发布点'),(24,5,'tip','','','textarea','说明提示'),(25,5,'count_min','10','','text','最小发布次数'),(26,5,'count_default','50','','text','默认访问次数'),(27,5,'ip_count1','3,0.1;10,0,1','','text','每天限制IP，格式：数量,价格,选中;数量,价格,选中...'),(28,5,'ip_count2','3,0.1;10,0,1','','text','每天限制IP，格式：数量,价格,选中;数量,价格,选中...'),(29,5,'bidUp','0.05;0.08','','text','竞价默认价格列表，用分号;隔开'),(30,5,'tplSaveCount','15','','text','模板保存最大数量'),(31,5,'isIP','1','1=是\r\n2=否','radio','是否强制限制IP'),(32,5,'isLimit','1','1=是\r\n2=否','radio','是否强制限制接手人'),(33,5,'isRate','1','1=是\r\n2=否','radio','是否强制限制来路访问频率'),(34,5,'price_once_vip','0.3','','text','每次所需发布点(流量VIP)'),(35,5,'price_planDate','0.1','','text','计划发布时间收取发布点'),(36,5,'count_max','200','','text','来路次数最大值'),(37,5,'minute_min','0','','text','来路频率最小值'),(38,5,'minute_max','30','','text','来路频率最大值'),(39,5,'buyer_max','5','','text','同时接手任务的最大数'),(40,5,'check_error','4','','text','第一验证错误X次锁定任务，0为不锁定'),(41,5,'payfor_count','100','','text','最少多少个才能结算'),(42,5,'price_pay_one','0.3','','text','每个任务结算多少个发布点'),(43,4,'reflow_vip_money_list','1,10,1;3,28;6,48;12,98','','text','流量会员月数选择，月数,价格,是否选中;.......'),(44,5,'time_expire','1800','','text','任务超时退出时间，单位：秒'),(45,4,'reflow_vip_tip','（注）如自动充值未成功，请联系客服！','','text','加入VIP页面提示'),(46,5,'bidUp_min','0.01','','text','竞价自定义发布点最小'),(47,5,'bidUp_max','1','','text','竞价自定义发布点最大'),(48,6,'card1','0.2','','text','单次发布点卡'),(49,6,'card2','0.01','','text','单次流量点卡'),(50,6,'card3','155','','text','单钻信托卡'),(51,6,'card4','305','','text','双钻信托卡'),(52,6,'card5','590','','text','三钻信托卡'),(53,6,'card6','1140','','text','四钻信托卡'),(54,6,'card7','2750','','text','五钻信托卡'),(55,6,'card8','5400','','text','至尊皇冠卡'),(56,6,'card9','3','','text','24小时双倍积分卡'),(57,6,'card10','16','','text','双倍积分周卡'),(58,6,'card11','0.2','','text','预定任务次卡'),(59,6,'card12','5','','text','至尊VIP体验卡'),(60,7,'point_user','0.1','','text','发布点兑换亏损(普通用户)'),(61,7,'point_vip','0.05','','text','发布点兑换亏损(尊贵VIP)'),(62,7,'point_vip2','0.08','','text','发布点兑换亏损(信托VIP)'),(63,7,'credit_min','1000','','text','积分兑换发布点(最小分数)'),(64,7,'credit_point','300','','text','积分兑换发布点(多少积分兑换一个发布点)'),(65,7,'money_point','0.1','','text','每个发布点兑换多少元'),(66,4,'tie_alipay_count','3','','text','支付宝允许绑定个数'),(67,4,'sys_logout','1800','','text','用户登录超时时间，单位秒'),(68,4,'vip_money_list','1,30,1;3,78;6,138;12,248','','text','会员月数选择，月数,价格,是否选中;.......'),(69,4,'vip_money','30','','text','会员每月价格'),(70,4,'point_get','0.85','','text','普通会员发布点比例'),(71,4,'point_get_vip','0.9','','text','VIP接任务所得发布点比例'),(72,4,'point_reword','10','','text','推广奖励发布点个数'),(73,4,'buyer_level_list','3,0.5,1;4,1;5,1.5','','text','星级买号星级列表，分号隔开，3,0.5,1;4,1;5,1.5'),(74,4,'buyer_level_count','3:3,15,60;4:2,10,40;5:1,5,20','','text','星级买号个数限制，星级:每日个数,每周,每月;.....'),(75,8,'cg_min','100','','text','最小兑换数量'),(76,8,'cg_one_point','0.09','','text','每个兑换多少发布点'),(77,4,'point_task_del','0.1','','text','任务退出扣点'),(78,9,'openLeft','1','1=是\r\n0=否','select','左侧广告是否显示'),(79,9,'openRight','1','1=是\r\n0=否','select','右侧广告是否显示'),(80,9,'leftPic','img/cfg/ad_duilian/1621.jpg','width=100\r\nheight=200','image','左侧图片'),(81,9,'rightPic','img/cfg/ad_duilian/1641.jpg','width=100\r\nheight=200','image','右侧图片'),(82,9,'leftUrl','http://www.my.com/','','text','左侧对应链接'),(83,9,'rightUrl','','','text','右侧对应链接'),(84,10,'status','0','1=是\r\n0=否','radio','是否显示'),(85,10,'pic','img/cfg/ad_line/1A41.jpg','width=950\r\nheight=60','image','广告图片'),(86,10,'url','http://www.baidu.com/','','text','广告链接'),(88,12,'express','6','','text','快递软件'),(89,13,'taobaoMinMoney','500','','text','淘宝提现最小额度'),(90,13,'taobaoSXF','0','','text','淘宝提现手续费比率'),(91,13,'alipayMinMoney','200','','text','支付宝提现最小额度'),(92,13,'alipaySXF','0.015','','text','支付宝提现手续费比率'),(93,13,'taobaoStatus','1','1=是\r\n0=否','radio','淘宝提现是否启用'),(94,13,'alipayStatus','1','1=是\r\n0=否','radio','支付宝提现是否启用'),(95,13,'vipCount','2','','text','一级会员每日提现次数'),(96,13,'vip2Count','3','','text','钻石会员每日提现次数'),(97,13,'memberCount','1','','text','普通会员每日提现次数'),(98,13,'vipMaxMoney','3000','','text','一级会员每日提现金额'),(99,13,'vip2MaxMoney','6000','','text','信托会员每日提现最大额度'),(100,13,'memberMaxMoney','2000','','text','普通会员每日提现最大额度'),(101,13,'bankType','工商银行,中国工商银行;农业银行,中国农业银行,1','工商银行=工商银行\r\n农业银行=农业银行','textarea','提现银行类型'),(102,13,'bankMinMoney','200','','text','银行卡提现最小额度'),(103,13,'bankSXF','0.005','','text','银行卡提现手续费'),(104,13,'bankStatus','1','1=是\r\n0=否','radio','银行卡提现是否有效'),(105,4,'checkIP','1','1=是\r\n0=否','radio','检查用户异地登录'),(106,4,'checkIPTime','800','','text','检测间隔时间(秒)'),(109,15,'ecpContent','{webName}帐号异常验证，您的验证码为：{code}','','textarea','手机验证异地帐户内容'),(110,16,'ecpTitle','{webName}帐号异常激活','','text','帐户激活标题'),(111,16,'ecpContent','<p>您好,&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n美乐会员，您的帐号：{username}因异地登录出现异常，请点击一下链接激活&lt;br /&gt;&lt;a href=&quot;{activeUrl}&quot;&gt;{activeUrl}&lt;/a&gt;<br />\r\n若不能点击，请复制到浏览器打开。<br />\r\n<br />\r\n-----------------------------------------------------------------------------------<br />\r\n<br />\r\n如果您有什么疑问或建议，欢迎给我们提供，客服邮箱：<a target=\"_blank\" swaped=\"true\" href=\"mailto:admin@aadiy.cn\">hotdogwindows@hotmail.com</a><br />\r\n该邮件由系统自动发送，请勿直接回复。<br />\r\n<br />\r\n感谢您对美乐的支持!<br />\r\n<br />\r\n美乐平台客服部</p>','','textarea','帐户激活内容'),(112,17,'sendCardTitle','充值卡密','','text','后台发送卡密标题'),(113,17,'sendCardContent','{webName}{cardMoney}元充值卡号：{cardId}<br />\r\n充值密码：{cardPwd}<br />\r\n友情提醒：充值成功后请您10分钟内，给{webName}客服确认付款，以防系统自动冻结您{webName}平台帐号。谢谢合作！','','textarea','后台发送卡密内容'),(114,18,'memberCount','40','','text','普通用户次数限制(一天)'),(115,18,'vipCount','0','','text','VIP用户次数限制(一天)'),(116,18,'memberSendTask','0','','text','普通用户发布X次才能使用'),(117,18,'vipSendTask','0','','text','VIP发布X条才能使用'),(118,18,'memberGetTask','0','','text','普通用户接手X任务才能使用'),(119,18,'vipGetTask','0','','text','VIP接手X任务才能使用'),(120,4,'isGivePoint','1','','text','注册是否赠送发布点0不赠送'),(121,4,'formExpireTime','800','','text','表单超时时间'),(122,19,'store_deal_1',NULL,'250','text','打理250笔交易'),(123,19,'store_deal_2',NULL,'500','text','打理500笔交易'),(124,19,'store_deal_3',NULL,'1000','text','打理1000笔交易'),(125,19,'store_deal_4',NULL,'2000','text','打理2000笔交易'),(126,19,'store_deal_5',NULL,'5000','text','打理5000笔交易'),(127,19,'store_deal_6',NULL,'10000','text','打理10001笔交易'),(128,19,'store_deal_7',NULL,'20001','text','打理20001笔交易'),(129,19,'store_deal_8',NULL,'50001','text','打理50001笔交易'),(130,19,'store_money_1',NULL,'599','text','打理250笔交易价格'),(131,19,'store_money_2',NULL,'','text','打理500笔交易价格'),(132,19,'store_money_3',NULL,'','text','打理1000笔交易价格'),(133,19,'store_money_4',NULL,'','text','打理2000笔交易价格'),(134,19,'store_money_5',NULL,'','text','打理5000笔交易价格'),(135,19,'store_money_6',NULL,'','text','打理10001笔交易价格'),(136,19,'store_money_7',NULL,'','text','打理20001笔交易价格'),(137,19,'store_money_8',NULL,'','text','打理50001笔交易价格'),(138,19,'store_day_1',NULL,'','text','打理250笔交易时间'),(139,19,'store_day_2',NULL,'','text','打理500笔交易时间'),(140,19,'store_day_3',NULL,'','text','打理1000笔交易时间'),(141,19,'store_day_4',NULL,'','text','打理2000笔交易时间'),(142,19,'store_day_5',NULL,'','text','打理5000笔交易时间'),(143,19,'store_day_6',NULL,'','text','打理10001笔交易时间'),(144,19,'store_day_7',NULL,'','text','打理20001笔交易时间'),(145,19,'store_day_8',NULL,'','text','打理50001笔交易时间'),(146,4,'jewel_vip_money_list','1,48;2,89;3,129;6,246;12,456;24,839','','text','钻石VIP月数选择'),(147,4,'jewel_vip_money','48','','text','钻石VIP价格'),(148,4,'crown_vip_money_list','1,99;2,189;3,279;6,468;12,1058;24,2046','','text','皇冠VIP月数选择'),(149,4,'crown_vip_money','99','','text','皇冠VIP价格'),(150,13,'vip3Count','4','','text','皇冠会员每日提现次数'),(151,13,'vip3MaxMoney','9000','','text','皇冠会员每日提现金额');
/*!40000 ALTER TABLE `bf_sys_cfg_list` ENABLE KEYS */;