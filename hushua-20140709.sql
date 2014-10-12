/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : hushua

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2014-07-09 20:12:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bf_ad`
-- ----------------------------
DROP TABLE IF EXISTS `bf_ad`;
CREATE TABLE `bf_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `remark` varchar(32) DEFAULT NULL,
  `marker` varchar(32) DEFAULT NULL,
  `content` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`marker`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_ad
-- ----------------------------
INSERT INTO `bf_ad` VALUES ('1', '1', '用户中心顶部广告', 'ad_memberHeadTop', '<img src=\"/images/ad/bar_member.jpg\" alt=\"\" />', '0');
INSERT INTO `bf_ad` VALUES ('3', '2', '客服中心顶部广告', 'info_top1', '<img src=\"/images/ad/pro.jpg\" />', '0');
INSERT INTO `bf_ad` VALUES ('4', '4', '顶部滚动公告', 'index_head_scroll', '<li><a href=\"/bbs/t61/\" class=\"link_a\" target=\"_blank\">【吐血推荐刷信誉经验】深度解析淘宝客<a href=\"/bbs/t32/\" class=\"link_a\" target=\"_blank\">新用户“免费发布一元体验任务”功能上线！</a></li>', '0');
INSERT INTO `bf_ad` VALUES ('5', '4', '首页广告1', 'index_ad1', '<a href=\"http://www.sszgclub.com/\" target=\"_blank\"><img src=\"/images/bar_pro.jpg\" alt=\"甩手掌柜 - 美乐平台、刷信誉的合作伙伴\" /></a>', '0');

-- ----------------------------
-- Table structure for `bf_admins`
-- ----------------------------
DROP TABLE IF EXISTS `bf_admins`;
CREATE TABLE `bf_admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `salt` char(6) DEFAULT NULL,
  `regTimestamp` int(10) unsigned NOT NULL,
  `lastLoginTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `loginTimes` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_admins
-- ----------------------------
INSERT INTO `bf_admins` VALUES ('4', 'test', '394eb1553c5b4f1d2e67737a07cd1500', '8522dc', '1360050920', '1402198417', '13');

-- ----------------------------
-- Table structure for `bf_admin_authority`
-- ----------------------------
DROP TABLE IF EXISTS `bf_admin_authority`;
CREATE TABLE `bf_admin_authority` (
  `aid` int(10) unsigned NOT NULL,
  `key` varchar(32) DEFAULT NULL,
  `value` int(10) unsigned NOT NULL,
  KEY `i1` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_admin_authority
-- ----------------------------
INSERT INTO `bf_admin_authority` VALUES ('1', 'i_complain', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'i_task', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'i_bs', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'i_soft', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'i_shop', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'i_rcard', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'log_finance', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'log_payment', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'log_topup', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'log_users', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'bbs_index', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'bbs_icon', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'info_email', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'bbs_settings', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'info_message', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'info_related_links', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'tools_strFind', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'tools_js', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'tools_cache', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'tools_sql', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'tools_table', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'tools_database', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'data_ad', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'data_article', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'data_pageArticle', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'data_block', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'user_admin', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'user_group', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'user_user', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_express', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_from', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_e_question', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_menu', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_help', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_kefu', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_credits', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_reg', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_clearTpl', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_css', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_js', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_tpl', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_var', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_base', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_founder', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'sys_setting', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'i_club', '1');
INSERT INTO `bf_admin_authority` VALUES ('1', 'plugins_manage', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_founder', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_base', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_var', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_cfg', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_tpl', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_js', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_css', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_reg', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_credits', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_kefu', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_help', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_menu', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_e_question', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_from', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'sys_express', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'user_user', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'user_group', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'data_block', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'data_pageArticle', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'data_article', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'data_ad', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'tools_database', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'tools_table', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'tools_sql', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'tools_cache', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'tools_js', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'tools_strFind', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'info_related_links', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'info_email', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'info_msg', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'bbs_settings', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'bbs_icon', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'bbs_index', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'log_users', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'log_topup', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'log_payment', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'log_finance', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_rcard', '3');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_shop', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_soft', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_bs', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_task', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_reflow', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_complain', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_ensure', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_club', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_eids', '1');
INSERT INTO `bf_admin_authority` VALUES ('2', 'i_payfor', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_founder', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_base', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_var', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_cfg', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_tpl', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_js', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_css', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_reg', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_credits', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_kefu', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_help', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_menu', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_e_question', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_from', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'sys_express', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'user_user', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'user_group', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'data_block', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'data_pageArticle', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'data_article', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'data_ad', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'tools_database', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'tools_table', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'tools_sql', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'tools_cache', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'tools_js', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'tools_strFind', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'info_related_links', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'info_email', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'info_msg', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'bbs_settings', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'bbs_icon', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'bbs_index', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'log_users', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'log_topup', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'log_payment', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'log_finance', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_rcard', '3');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_shop', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_soft', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_bs', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_task', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_reflow', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_complain', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_ensure', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_club', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_eids', '1');
INSERT INTO `bf_admin_authority` VALUES ('3', 'i_payfor', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_reflow', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_task', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_bs', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_soft', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_shop', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_rcard', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'log_finance', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'log_payment', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'log_topup', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'log_users', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'bbs_index', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'bbs_icon', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'tools_strFind', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'tools_js', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'tools_cache', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'tools_sql', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'tools_table', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'tools_database', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'data_ad', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'data_article', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'data_pageArticle', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'data_block', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'user_admin', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'user_group', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'user_user', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_express', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_from', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_e_question', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_menu', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_help', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_kefu', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_credits', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_reg', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_tpl', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_cfg', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_var', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_base', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_founder', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_setting', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'sys_nav', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_complain', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_ensure', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_club', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_eids', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'i_payfor', '1');
INSERT INTO `bf_admin_authority` VALUES ('4', 'plugins_manage', '1');

-- ----------------------------
-- Table structure for `bf_admin_custom_menu`
-- ----------------------------
DROP TABLE IF EXISTS `bf_admin_custom_menu`;
CREATE TABLE `bf_admin_custom_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(64) DEFAULT NULL,
  `operation` varchar(64) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_admin_custom_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_ad_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_ad_cate`;
CREATE TABLE `bf_ad_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_ad_cate
-- ----------------------------
INSERT INTO `bf_ad_cate` VALUES ('1', '0', '用户中心', '0');
INSERT INTO `bf_ad_cate` VALUES ('2', '0', '系统文章', '0');
INSERT INTO `bf_ad_cate` VALUES ('3', '0', '论坛', '0');
INSERT INTO `bf_ad_cate` VALUES ('4', '0', '前台', '0');

-- ----------------------------
-- Table structure for `bf_attach`
-- ----------------------------
DROP TABLE IF EXISTS `bf_attach`;
CREATE TABLE `bf_attach` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `filetype` varchar(10) DEFAULT NULL,
  `src` varchar(100) DEFAULT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`uid`,`timestamp`,`id`),
  KEY `i2` (`status`,`id`),
  KEY `i3` (`pid`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_attach
-- ----------------------------
INSERT INTO `bf_attach` VALUES ('12', '1', '3', '105455', 'img', '2011/03/198.jpg', '2011/03/198_thumb.jpg', '1300700696', '1');
INSERT INTO `bf_attach` VALUES ('13', '1', '3', '77119', 'img', '2011/03/1B6.jpg', '2011/03/1B6_thumb.jpg', '1300702889', '1');
INSERT INTO `bf_attach` VALUES ('14', '22', '3', '201992', 'img', '2011/03/85.jpg', '2011/03/85_thumb.jpg', '1300772435', '1');
INSERT INTO `bf_attach` VALUES ('15', '0', '10', '105455', 'img', '2011/04/2A2.jpg', '2011/04/2A2_thumb.jpg', '1302193428', '0');
INSERT INTO `bf_attach` VALUES ('16', '115', '3', '105455', 'img', '2011/04/33E.jpg', '2011/04/33E_thumb.jpg', '1302360993', '1');
INSERT INTO `bf_attach` VALUES ('17', '117', '10', '105455', 'img', '2011/04/108.jpg', '2011/04/108_thumb.jpg', '1302783903', '1');
INSERT INTO `bf_attach` VALUES ('18', '117', '10', '54461', 'img', '2011/04/10B.jpg', '2011/04/10B_thumb.jpg', '1302783928', '1');
INSERT INTO `bf_attach` VALUES ('19', '117', '10', '77119', 'img', '2011/04/111.jpg', '2011/04/111_thumb.jpg', '1302784033', '1');
INSERT INTO `bf_attach` VALUES ('20', '0', '3', '29820', 'img', '2012/02/3FD.jpg', '2012/02/3FD_thumb.jpg', '1328630023', '0');

-- ----------------------------
-- Table structure for `bf_bbs_keys`
-- ----------------------------
DROP TABLE IF EXISTS `bf_bbs_keys`;
CREATE TABLE `bf_bbs_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL,
  `key` varchar(20) DEFAULT NULL,
  `threads` int(10) unsigned NOT NULL DEFAULT '0',
  `searchs` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_bbs_keys
-- ----------------------------
INSERT INTO `bf_bbs_keys` VALUES ('2', '0', '【 】', '51', '1', '1300861065');
INSERT INTO `bf_bbs_keys` VALUES ('3', '1', '【 】', '8', '1', '1300861139');
INSERT INTO `bf_bbs_keys` VALUES ('4', '1', '好消息拉！', '0', '152', '1300862857');
INSERT INTO `bf_bbs_keys` VALUES ('5', '0', '刷手吐血推荐', '0', '143', '1300863449');
INSERT INTO `bf_bbs_keys` VALUES ('6', '0', '积分级别详情', '1', '1', '1300923576');
INSERT INTO `bf_bbs_keys` VALUES ('7', '0', '平台充值有奖励喽', '2', '2', '1300965777');
INSERT INTO `bf_bbs_keys` VALUES ('8', '0', '网银充值答疑', '0', '1', '1300973121');
INSERT INTO `bf_bbs_keys` VALUES ('9', '0', '什么是操作码？？', '0', '1', '1301148710');
INSERT INTO `bf_bbs_keys` VALUES ('10', '0', '平台提现规定细', '1', '1', '1301151970');
INSERT INTO `bf_bbs_keys` VALUES ('11', '0', '信托卡信托会员特权详情', '1', '1', '1301295807');
INSERT INTO `bf_bbs_keys` VALUES ('12', '0', '怎么赚取美乐兔粮', '0', '125', '1301476623');
INSERT INTO `bf_bbs_keys` VALUES ('13', '0', '刷钻要不要加入淘宝消', '0', '1', '1301598776');
INSERT INTO `bf_bbs_keys` VALUES ('14', '0', '了解VIP特权', '1', '1', '1301599447');
INSERT INTO `bf_bbs_keys` VALUES ('15', '0', '任务商品价格与所需基本兔粮数的对应关系', '2', '1', '1301599502');
INSERT INTO `bf_bbs_keys` VALUES ('16', '0', '一元任务', '0', '123', '1301663118');
INSERT INTO `bf_bbs_keys` VALUES ('17', '0', '为什么要绑定多个买号', '0', '2', '1301663154');
INSERT INTO `bf_bbs_keys` VALUES ('18', '0', '什么是买号动态寿命值', '1', '1', '1301663259');
INSERT INTO `bf_bbs_keys` VALUES ('19', '0', '如何修改淘宝发货地址', '0', '1', '1301676464');
INSERT INTO `bf_bbs_keys` VALUES ('20', '0', '【买家教程】如何在双赢设置买号的收货地址', '0', '1', '1301676555');
INSERT INTO `bf_bbs_keys` VALUES ('21', '0', '如何增加存款', '1', '1', '1302096426');
INSERT INTO `bf_bbs_keys` VALUES ('22', '0', '务商品价格与所需基本兔粮', '2', '1', '1302096481');
INSERT INTO `bf_bbs_keys` VALUES ('23', '0', '如何获得积分', '1', '1', '1302256212');
INSERT INTO `bf_bbs_keys` VALUES ('24', '0', '什么是门派', '1', '2', '1302256259');
INSERT INTO `bf_bbs_keys` VALUES ('25', '0', '积分', '4', '2', '1302365953');
INSERT INTO `bf_bbs_keys` VALUES ('26', '0', '积分关系', '0', '1', '1302785144');
INSERT INTO `bf_bbs_keys` VALUES ('28', '0', '什么是买号', '2', '172', '1322488302');
INSERT INTO `bf_bbs_keys` VALUES ('29', '0', '激活码', '0', '1', '1348409911');
INSERT INTO `bf_bbs_keys` VALUES ('31', '0', '医院', '0', '1', '1358422995');
INSERT INTO `bf_bbs_keys` VALUES ('32', '0', '一元', '1', '2', '1358422999');
INSERT INTO `bf_bbs_keys` VALUES ('33', '0', '一元体验', '1', '35', '1358449474');
INSERT INTO `bf_bbs_keys` VALUES ('34', '0', '美乐平台', '2', '15', '1358450663');
INSERT INTO `bf_bbs_keys` VALUES ('35', '0', '免费任务', '0', '34', '1358451348');
INSERT INTO `bf_bbs_keys` VALUES ('36', '0', '免费发布一', '1', '1', '1358558995');
INSERT INTO `bf_bbs_keys` VALUES ('37', '0', '  如何赚取美乐兔粮 ', '79', '5', '1358562668');
INSERT INTO `bf_bbs_keys` VALUES ('38', '0', '如何赚取美乐兔粮', '1', '10', '1358564296');
INSERT INTO `bf_bbs_keys` VALUES ('39', '0', '美乐真实快递任务功能正式上线！', '0', '1', '1358567592');
INSERT INTO `bf_bbs_keys` VALUES ('40', '0', '点卡中心推出双倍积分卡，积分翻倍增长的秘', '1', '1', '1358569382');
INSERT INTO `bf_bbs_keys` VALUES ('41', '0', '如何赚取双赢兔粮', '0', '8', '1358580815');
INSERT INTO `bf_bbs_keys` VALUES ('42', '0', '等级', '0', '1', '1358593672');
INSERT INTO `bf_bbs_keys` VALUES ('43', '0', '怎么赚取美乐兔粮\\\' and(0)=\\', '0', '1', '1358616906');
INSERT INTO `bf_bbs_keys` VALUES ('44', '0', '怎么赚取美乐兔粮\\\' and(123)', '0', '1', '1358616907');
INSERT INTO `bf_bbs_keys` VALUES ('45', '0', '怎么赚取美乐兔粮\\\' and(123)', '0', '1', '1358616908');
INSERT INTO `bf_bbs_keys` VALUES ('46', '0', '怎么赚取美乐兔粮\\\' and(0)=\\', '0', '1', '1358616910');
INSERT INTO `bf_bbs_keys` VALUES ('47', '0', '怎么赚取美乐兔粮\\\' and(123)', '0', '1', '1358616911');
INSERT INTO `bf_bbs_keys` VALUES ('48', '0', '怎么赚取美乐兔粮\\\' and(123)', '0', '1', '1358616913');
INSERT INTO `bf_bbs_keys` VALUES ('49', '0', '怎么赚取美乐兔粮%\\\' and(0=0', '0', '1', '1358616917');
INSERT INTO `bf_bbs_keys` VALUES ('50', '0', '怎么赚取美乐兔粮%\\\' and(123', '0', '1', '1358616918');
INSERT INTO `bf_bbs_keys` VALUES ('51', '0', '怎么赚取美乐兔粮%\\\' and(123', '0', '1', '1358616919');
INSERT INTO `bf_bbs_keys` VALUES ('52', '0', '怎么赚取美乐兔粮x1', '0', '1', '1358616922');
INSERT INTO `bf_bbs_keys` VALUES ('53', '0', '怎么赚取美乐兔粮x1', '0', '1', '1358616923');
INSERT INTO `bf_bbs_keys` VALUES ('54', '0', '怎么赚取美乐兔粮x1', '0', '1', '1358616924');
INSERT INTO `bf_bbs_keys` VALUES ('55', '0', '怎么赚取美乐兔粮\\\' and slee', '0', '1', '1358616927');
INSERT INTO `bf_bbs_keys` VALUES ('56', '0', '怎么赚取美乐兔粮\\\' and slee', '0', '1', '1358616927');
INSERT INTO `bf_bbs_keys` VALUES ('57', '0', '怎么赚取美乐兔粮\\\' and slee', '0', '1', '1358616929');
INSERT INTO `bf_bbs_keys` VALUES ('58', '0', '怎么赚取美乐兔粮x3x5x7', '0', '1', '1358616929');
INSERT INTO `bf_bbs_keys` VALUES ('59', '0', '怎么赚取美乐兔粮x3x5x7\\\'\\\'', '0', '1', '1358616930');
INSERT INTO `bf_bbs_keys` VALUES ('60', '0', '怎么赚取美乐兔粮x3x5x7\\\'', '0', '1', '1358616931');
INSERT INTO `bf_bbs_keys` VALUES ('61', '0', '怎么赚取美乐兔粮abccba2011', '0', '1', '1358616938');
INSERT INTO `bf_bbs_keys` VALUES ('62', '0', '怎么赚取美乐兔粮\r\nxheader:x', '72', '1', '1358616941');
INSERT INTO `bf_bbs_keys` VALUES ('63', '0', '../../../../../../..', '0', '1', '1358616959');
INSERT INTO `bf_bbs_keys` VALUES ('64', '0', '../../../../../../..', '0', '1', '1358616960');
INSERT INTO `bf_bbs_keys` VALUES ('65', '0', '../../../../../../..', '0', '1', '1358616962');
INSERT INTO `bf_bbs_keys` VALUES ('66', '0', '../../../../../../..', '0', '1', '1358616963');
INSERT INTO `bf_bbs_keys` VALUES ('67', '0', '一元任务\\\' and(0)=\\\'0', '0', '1', '1358617274');
INSERT INTO `bf_bbs_keys` VALUES ('68', '0', '一元任务\\\' and(123)=\\\'12', '0', '1', '1358617275');
INSERT INTO `bf_bbs_keys` VALUES ('69', '0', '一元任务\\\' and(123)=\\\'32', '0', '1', '1358617275');
INSERT INTO `bf_bbs_keys` VALUES ('70', '0', '一元任务\\\' and(0)=\\\'0\\\'#', '0', '1', '1358617277');
INSERT INTO `bf_bbs_keys` VALUES ('71', '0', '一元任务\\\' and(123)=\\\'12', '0', '1', '1358617278');
INSERT INTO `bf_bbs_keys` VALUES ('72', '0', '一元任务\\\' and(123)=\\\'32', '0', '1', '1358617278');
INSERT INTO `bf_bbs_keys` VALUES ('73', '0', '一元任务%\\\' and(0=0)and(', '0', '1', '1358617280');
INSERT INTO `bf_bbs_keys` VALUES ('74', '0', '一元任务%\\\' and(123=123)', '0', '1', '1358617281');
INSERT INTO `bf_bbs_keys` VALUES ('75', '0', '一元任务%\\\' and(123=321)', '0', '1', '1358617281');
INSERT INTO `bf_bbs_keys` VALUES ('76', '0', '一元任务x1', '0', '1', '1358617283');
INSERT INTO `bf_bbs_keys` VALUES ('77', '0', '一元任务x1', '0', '1', '1358617284');
INSERT INTO `bf_bbs_keys` VALUES ('78', '0', '一元任务x1', '0', '1', '1358617284');
INSERT INTO `bf_bbs_keys` VALUES ('79', '0', '一元任务\\\' and sleep(0)#', '0', '1', '1358617286');
INSERT INTO `bf_bbs_keys` VALUES ('80', '0', '一元任务\\\' and sleep(5-5', '0', '1', '1358617287');
INSERT INTO `bf_bbs_keys` VALUES ('81', '0', '一元任务\\\' and sleep(5)#', '0', '1', '1358617287');
INSERT INTO `bf_bbs_keys` VALUES ('82', '0', '一元任务x3x5x7', '0', '1', '1358617287');
INSERT INTO `bf_bbs_keys` VALUES ('83', '0', '一元任务x3x5x7\\\'\\\'', '0', '1', '1358617288');
INSERT INTO `bf_bbs_keys` VALUES ('84', '0', '一元任务x3x5x7\\\'', '0', '1', '1358617288');
INSERT INTO `bf_bbs_keys` VALUES ('85', '0', '一元任务abccba2011', '0', '1', '1358617291');
INSERT INTO `bf_bbs_keys` VALUES ('86', '0', '一元任务\r\nxheader:xheade', '72', '1', '1358617293');
INSERT INTO `bf_bbs_keys` VALUES ('87', '0', '../../../../../../..', '0', '1', '1358617301');
INSERT INTO `bf_bbs_keys` VALUES ('88', '0', '../../../../../../..', '0', '1', '1358617301');
INSERT INTO `bf_bbs_keys` VALUES ('89', '0', '../../../../../../..', '0', '1', '1358617302');
INSERT INTO `bf_bbs_keys` VALUES ('90', '0', '../../../../../../..', '0', '1', '1358617302');
INSERT INTO `bf_bbs_keys` VALUES ('91', '0', '刷手吐血推荐\\\' and(0)=\\\'0', '0', '1', '1358617347');
INSERT INTO `bf_bbs_keys` VALUES ('92', '0', '刷手吐血推荐\\\' and(123)=\\\'', '0', '1', '1358617347');
INSERT INTO `bf_bbs_keys` VALUES ('93', '0', '刷手吐血推荐\\\' and(123)=\\\'', '0', '1', '1358617348');
INSERT INTO `bf_bbs_keys` VALUES ('94', '0', '刷手吐血推荐\\\' and(0)=\\\'0\\', '0', '1', '1358617350');
INSERT INTO `bf_bbs_keys` VALUES ('95', '0', '刷手吐血推荐\\\' and(123)=\\\'', '0', '1', '1358617350');
INSERT INTO `bf_bbs_keys` VALUES ('96', '0', '刷手吐血推荐\\\' and(123)=\\\'', '0', '1', '1358617351');
INSERT INTO `bf_bbs_keys` VALUES ('97', '0', '刷手吐血推荐%\\\' and(0=0)an', '0', '1', '1358617353');
INSERT INTO `bf_bbs_keys` VALUES ('98', '0', '刷手吐血推荐%\\\' and(123=12', '0', '1', '1358617353');
INSERT INTO `bf_bbs_keys` VALUES ('99', '0', '刷手吐血推荐%\\\' and(123=32', '0', '1', '1358617354');
INSERT INTO `bf_bbs_keys` VALUES ('100', '0', '刷手吐血推荐x1', '0', '1', '1358617356');
INSERT INTO `bf_bbs_keys` VALUES ('101', '0', '刷手吐血推荐x1', '0', '1', '1358617356');
INSERT INTO `bf_bbs_keys` VALUES ('102', '0', '刷手吐血推荐x1', '0', '1', '1358617357');
INSERT INTO `bf_bbs_keys` VALUES ('103', '0', '刷手吐血推荐\\\' and sleep(0', '0', '1', '1358617359');
INSERT INTO `bf_bbs_keys` VALUES ('104', '0', '刷手吐血推荐\\\' and sleep(5', '0', '1', '1358617359');
INSERT INTO `bf_bbs_keys` VALUES ('105', '0', '刷手吐血推荐\\\' and sleep(5', '0', '1', '1358617360');
INSERT INTO `bf_bbs_keys` VALUES ('106', '0', '刷手吐血推荐x3x5x7', '0', '1', '1358617360');
INSERT INTO `bf_bbs_keys` VALUES ('107', '0', '刷手吐血推荐x3x5x7\\\'\\\'', '0', '1', '1358617360');
INSERT INTO `bf_bbs_keys` VALUES ('108', '0', '刷手吐血推荐x3x5x7\\\'', '0', '1', '1358617361');
INSERT INTO `bf_bbs_keys` VALUES ('109', '0', '刷手吐血推荐abccba2011', '0', '1', '1358617364');
INSERT INTO `bf_bbs_keys` VALUES ('110', '0', '刷手吐血推荐\r\nxheader:xhea', '72', '1', '1358617365');
INSERT INTO `bf_bbs_keys` VALUES ('111', '0', '../../../../../../..', '0', '1', '1358617372');
INSERT INTO `bf_bbs_keys` VALUES ('112', '0', '../../../../../../..', '0', '1', '1358617372');
INSERT INTO `bf_bbs_keys` VALUES ('113', '0', '../../../../../../..', '0', '1', '1358617373');
INSERT INTO `bf_bbs_keys` VALUES ('114', '0', '../../../../../../..', '0', '1', '1358617373');
INSERT INTO `bf_bbs_keys` VALUES ('115', '0', '什么是买号\\\' and(0)=\\\'0', '0', '1', '1358617424');
INSERT INTO `bf_bbs_keys` VALUES ('116', '0', '什么是买号\\\' and(123)=\\\'1', '0', '1', '1358617425');
INSERT INTO `bf_bbs_keys` VALUES ('117', '0', '什么是买号\\\' and(123)=\\\'3', '0', '1', '1358617425');
INSERT INTO `bf_bbs_keys` VALUES ('118', '0', '135791', '0', '27', '1358617426');
INSERT INTO `bf_bbs_keys` VALUES ('119', '0', '什么是买号\\\' and(0)=\\\'0\\\'', '0', '1', '1358617427');
INSERT INTO `bf_bbs_keys` VALUES ('120', '0', '什么是买号\\\' and(123)=\\\'1', '0', '1', '1358617428');
INSERT INTO `bf_bbs_keys` VALUES ('121', '0', '什么是买号\\\' and(123)=\\\'3', '0', '1', '1358617428');
INSERT INTO `bf_bbs_keys` VALUES ('122', '0', '什么是买号%\\\' and(0=0)and', '0', '1', '1358617431');
INSERT INTO `bf_bbs_keys` VALUES ('123', '0', '什么是买号%\\\' and(123=123', '0', '1', '1358617431');
INSERT INTO `bf_bbs_keys` VALUES ('124', '0', '什么是买号%\\\' and(123=321', '0', '1', '1358617432');
INSERT INTO `bf_bbs_keys` VALUES ('125', '0', '什么是买号x1', '0', '1', '1358617434');
INSERT INTO `bf_bbs_keys` VALUES ('126', '0', '什么是买号x1', '0', '1', '1358617435');
INSERT INTO `bf_bbs_keys` VALUES ('127', '0', '什么是买号x1', '0', '1', '1358617435');
INSERT INTO `bf_bbs_keys` VALUES ('128', '0', '什么是买号\\\' and sleep(0)', '0', '1', '1358617438');
INSERT INTO `bf_bbs_keys` VALUES ('129', '0', '什么是买号\\\' and sleep(5-', '0', '1', '1358617438');
INSERT INTO `bf_bbs_keys` VALUES ('130', '0', '什么是买号\\\' and sleep(5)', '0', '1', '1358617438');
INSERT INTO `bf_bbs_keys` VALUES ('131', '0', '什么是买号x3x5x7', '0', '1', '1358617439');
INSERT INTO `bf_bbs_keys` VALUES ('132', '0', '什么是买号x3x5x7\\\'\\\'', '0', '1', '1358617439');
INSERT INTO `bf_bbs_keys` VALUES ('133', '0', '什么是买号x3x5x7\\\'', '0', '1', '1358617440');
INSERT INTO `bf_bbs_keys` VALUES ('134', '0', '什么是买号abccba2011', '0', '1', '1358617444');
INSERT INTO `bf_bbs_keys` VALUES ('135', '0', '什么是买号\r\nxheader:xhead', '72', '1', '1358617446');
INSERT INTO `bf_bbs_keys` VALUES ('136', '1', '好消息拉！\\\' and(0)=\\\'0', '0', '1', '1358617450');
INSERT INTO `bf_bbs_keys` VALUES ('137', '1', '好消息拉！\\\' and(123)=\\\'1', '0', '1', '1358617450');
INSERT INTO `bf_bbs_keys` VALUES ('138', '1', '好消息拉！\\\' and(123)=\\\'3', '0', '1', '1358617451');
INSERT INTO `bf_bbs_keys` VALUES ('139', '0', '135791-(-0)-0-0-0-0', '0', '1', '1358617453');
INSERT INTO `bf_bbs_keys` VALUES ('140', '0', '135791-(-1)-1-0-0-0', '0', '1', '1358617453');
INSERT INTO `bf_bbs_keys` VALUES ('141', '1', '好消息拉！\\\' and(0)=\\\'0\\\'', '0', '1', '1358617453');
INSERT INTO `bf_bbs_keys` VALUES ('142', '0', '135791-(-9999998)-0', '0', '1', '1358617453');
INSERT INTO `bf_bbs_keys` VALUES ('143', '1', '好消息拉！\\\' and(123)=\\\'1', '0', '1', '1358617454');
INSERT INTO `bf_bbs_keys` VALUES ('144', '1', '好消息拉！\\\' and(123)=\\\'3', '0', '1', '1358617454');
INSERT INTO `bf_bbs_keys` VALUES ('145', '0', '../../../../../../..', '0', '1', '1358617455');
INSERT INTO `bf_bbs_keys` VALUES ('146', '0', '../../../../../../..', '0', '1', '1358617456');
INSERT INTO `bf_bbs_keys` VALUES ('147', '0', '../../../../../../..', '0', '1', '1358617456');
INSERT INTO `bf_bbs_keys` VALUES ('148', '0', '135791-(-0)-0-0-0-0#', '0', '1', '1358617456');
INSERT INTO `bf_bbs_keys` VALUES ('149', '0', '../../../../../../..', '0', '1', '1358617456');
INSERT INTO `bf_bbs_keys` VALUES ('150', '0', '135791-(-1)-1-0-0-0#', '0', '1', '1358617456');
INSERT INTO `bf_bbs_keys` VALUES ('151', '0', '135791-(-9999998)-0#', '0', '1', '1358617457');
INSERT INTO `bf_bbs_keys` VALUES ('152', '1', '好消息拉！%\\\' and(0=0)and', '0', '1', '1358617457');
INSERT INTO `bf_bbs_keys` VALUES ('153', '1', '好消息拉！%\\\' and(123=123', '0', '1', '1358617457');
INSERT INTO `bf_bbs_keys` VALUES ('154', '1', '好消息拉！%\\\' and(123=321', '0', '1', '1358617458');
INSERT INTO `bf_bbs_keys` VALUES ('155', '0', '135791\\\' and(0)=\\\'0', '0', '1', '1358617459');
INSERT INTO `bf_bbs_keys` VALUES ('156', '0', '135791\\\' and(123)=\\\'', '0', '1', '1358617460');
INSERT INTO `bf_bbs_keys` VALUES ('157', '0', '135791\\\' and(123)=\\\'', '0', '1', '1358617460');
INSERT INTO `bf_bbs_keys` VALUES ('158', '1', '好消息拉！x1', '0', '1', '1358617460');
INSERT INTO `bf_bbs_keys` VALUES ('159', '1', '好消息拉！x1', '0', '1', '1358617461');
INSERT INTO `bf_bbs_keys` VALUES ('160', '1', '好消息拉！x1', '0', '1', '1358617461');
INSERT INTO `bf_bbs_keys` VALUES ('161', '0', '135791\\\' and(0)=\\\'0\\', '0', '1', '1358617462');
INSERT INTO `bf_bbs_keys` VALUES ('162', '0', '135791\\\' and(123)=\\\'', '0', '1', '1358617463');
INSERT INTO `bf_bbs_keys` VALUES ('163', '0', '135791\\\' and(123)=\\\'', '0', '1', '1358617463');
INSERT INTO `bf_bbs_keys` VALUES ('164', '1', '好消息拉！\\\' and sleep(0)', '0', '1', '1358617463');
INSERT INTO `bf_bbs_keys` VALUES ('165', '1', '好消息拉！\\\' and sleep(5-', '0', '1', '1358617464');
INSERT INTO `bf_bbs_keys` VALUES ('166', '1', '好消息拉！\\\' and sleep(5)', '0', '1', '1358617464');
INSERT INTO `bf_bbs_keys` VALUES ('167', '1', '好消息拉！x3x5x7', '0', '1', '1358617464');
INSERT INTO `bf_bbs_keys` VALUES ('168', '1', '好消息拉！x3x5x7\\\'\\\'', '0', '1', '1358617465');
INSERT INTO `bf_bbs_keys` VALUES ('169', '1', '好消息拉！x3x5x7\\\'', '0', '1', '1358617465');
INSERT INTO `bf_bbs_keys` VALUES ('170', '0', '135791%\\\' and(0=0)an', '0', '1', '1358617465');
INSERT INTO `bf_bbs_keys` VALUES ('171', '0', '135791%\\\' and(123=12', '0', '1', '1358617466');
INSERT INTO `bf_bbs_keys` VALUES ('172', '0', '135791%\\\' and(123=32', '0', '1', '1358617466');
INSERT INTO `bf_bbs_keys` VALUES ('173', '1', '好消息拉！abccba2011', '0', '1', '1358617468');
INSERT INTO `bf_bbs_keys` VALUES ('174', '0', '135791x1', '0', '1', '1358617468');
INSERT INTO `bf_bbs_keys` VALUES ('175', '0', '135791x1', '0', '1', '1358617469');
INSERT INTO `bf_bbs_keys` VALUES ('176', '0', '135791x1', '0', '1', '1358617469');
INSERT INTO `bf_bbs_keys` VALUES ('177', '1', '好消息拉！\r\nxheader:xhead', '11', '1', '1358617470');
INSERT INTO `bf_bbs_keys` VALUES ('178', '0', '135791 and sleep(0)', '0', '1', '1358617472');
INSERT INTO `bf_bbs_keys` VALUES ('179', '0', '135791 and sleep(5-5', '0', '1', '1358617472');
INSERT INTO `bf_bbs_keys` VALUES ('180', '0', '135791 and sleep(5)', '0', '1', '1358617472');
INSERT INTO `bf_bbs_keys` VALUES ('181', '0', '135791\\\' and sleep(0', '0', '1', '1358617473');
INSERT INTO `bf_bbs_keys` VALUES ('182', '0', '135791\\\' and sleep(5', '0', '1', '1358617473');
INSERT INTO `bf_bbs_keys` VALUES ('183', '0', '135791\\\' and sleep(5', '0', '1', '1358617474');
INSERT INTO `bf_bbs_keys` VALUES ('184', '0', '135791x3x5x7', '0', '1', '1358617474');
INSERT INTO `bf_bbs_keys` VALUES ('185', '0', '135791x3x5x7\\\'\\\'', '0', '1', '1358617475');
INSERT INTO `bf_bbs_keys` VALUES ('186', '0', '135791x3x5x7\\\'', '0', '1', '1358617476');
INSERT INTO `bf_bbs_keys` VALUES ('187', '0', '好消息拉！', '0', '4', '1358617476');
INSERT INTO `bf_bbs_keys` VALUES ('188', '1', '../../../../../../..', '0', '1', '1358617478');
INSERT INTO `bf_bbs_keys` VALUES ('189', '1', '../../../../../../..', '0', '1', '1358617478');
INSERT INTO `bf_bbs_keys` VALUES ('190', '1', '../../../../../../..', '0', '1', '1358617479');
INSERT INTO `bf_bbs_keys` VALUES ('191', '0', 'abccba2011', '0', '1', '1358617479');
INSERT INTO `bf_bbs_keys` VALUES ('192', '1', '../../../../../../..', '0', '1', '1358617479');
INSERT INTO `bf_bbs_keys` VALUES ('193', '0', '\r\nxheader:xheader\r\n', '72', '1', '1358617480');
INSERT INTO `bf_bbs_keys` VALUES ('194', '0', '8e309', '0', '1', '1358617481');
INSERT INTO `bf_bbs_keys` VALUES ('195', '0', '../../../../../../..', '0', '1', '1358617486');
INSERT INTO `bf_bbs_keys` VALUES ('196', '0', '../../../../../../..', '0', '1', '1358617487');
INSERT INTO `bf_bbs_keys` VALUES ('197', '0', '../../../../../../..', '0', '1', '1358617487');
INSERT INTO `bf_bbs_keys` VALUES ('198', '0', '../../../../../../..', '0', '1', '1358617487');
INSERT INTO `bf_bbs_keys` VALUES ('199', '0', '吐血推荐', '1', '19', '1358650083');
INSERT INTO `bf_bbs_keys` VALUES ('200', '0', '买号', '6', '14', '1358668310');
INSERT INTO `bf_bbs_keys` VALUES ('201', '1', '好消息', '3', '13', '1358669312');
INSERT INTO `bf_bbs_keys` VALUES ('202', '0', 'www.zhaoyaofang.cn', '0', '2', '1359190077');

-- ----------------------------
-- Table structure for `bf_bbs_key_threads`
-- ----------------------------
DROP TABLE IF EXISTS `bf_bbs_key_threads`;
CREATE TABLE `bf_bbs_key_threads` (
  `kid` int(10) unsigned NOT NULL,
  `tid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_bbs_key_threads
-- ----------------------------
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('2', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('3', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('6', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('7', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('7', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('10', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('11', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('14', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('15', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('15', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('18', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('21', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('22', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('22', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('23', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('25', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('16', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('5', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('12', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('4', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('32', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('36', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '68');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('24', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('40', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '68');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('62', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '68');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('86', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '68');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('110', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '68');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('135', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('177', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '68');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('193', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '86');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '87');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '88');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '89');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '90');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '91');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '92');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '93');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '86');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '87');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '88');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '89');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '90');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '91');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '92');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '93');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '86');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '87');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '88');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '89');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '90');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '91');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '92');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '93');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '15');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '10');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '11');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '12');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '16');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '17');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '18');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '19');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '20');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '21');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '22');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '23');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '27');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '28');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '29');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '30');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '31');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '33');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '34');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '35');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '36');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '37');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '38');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '39');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '40');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '41');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '42');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '43');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '44');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '45');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '46');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '47');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '49');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '51');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '52');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '53');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '54');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '55');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '56');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '57');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '58');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '59');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '60');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '62');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '63');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '65');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '66');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '67');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '69');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '70');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '72');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '83');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '76');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '77');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '78');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '79');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '84');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '85');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '86');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '87');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '88');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '89');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '90');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '91');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '92');
INSERT INTO `bf_bbs_key_threads` VALUES ('37', '93');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('33', '32');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '48');
INSERT INTO `bf_bbs_key_threads` VALUES ('34', '74');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('38', '64');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '100');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '100');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '13');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '14');
INSERT INTO `bf_bbs_key_threads` VALUES ('201', '50');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('199', '61');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '25');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '26');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '71');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '73');
INSERT INTO `bf_bbs_key_threads` VALUES ('200', '100');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '24');
INSERT INTO `bf_bbs_key_threads` VALUES ('28', '25');

-- ----------------------------
-- Table structure for `bf_blacks`
-- ----------------------------
DROP TABLE IF EXISTS `bf_blacks`;
CREATE TABLE `bf_blacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fuid` int(10) unsigned NOT NULL,
  `fusername` varchar(16) DEFAULT NULL,
  `tuid` int(10) unsigned NOT NULL,
  `tusername` varchar(16) DEFAULT NULL,
  `days` smallint(5) unsigned NOT NULL,
  `daysTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `isFriend` tinyint(3) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_blacks
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_block`
-- ----------------------------
DROP TABLE IF EXISTS `bf_block`;
CREATE TABLE `bf_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `marker` varchar(64) DEFAULT NULL,
  `data` text,
  `add_timestamp` int(10) unsigned NOT NULL,
  `edit_timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index1` (`cid`,`sort`,`edit_timestamp`),
  KEY `index2` (`marker`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_block
-- ----------------------------
INSERT INTO `bf_block` VALUES ('13', '14', '0', '商务合作模块', '右_商务', '<div class=\"sbox side-business-tip\">\r\n	<h2>商务合作</h2>\r\n	<p class=\"text\" style=\"margin-bottom:5px;\">希望在{$web_name}组织团购么？请<a href=\"/feedback/seller.php\">提交团购信息</a></p>\r\n	<a href=\"/help/works\" target=\"_blank\" class=\"jzyx\" style=\"width:130px; height:20px; display:block; background:url({$weburl2}css/index/block_side_bussiness_jzyx.gif) no-repeat; text-indent:-99999px;margin-left:60px;\">目标用户精准营销</a>\r\n	<div class=\"sbox_bottom\"></div>\r\n</div>', '1291964714', '1291964721');
INSERT INTO `bf_block` VALUES ('14', '14', '0', '工作', '右_工作', '<div id=\"recruitment\"> <a style=\" \" href=\"{rewrite}/about/job\"></a> </div>', '1291965284', '1291965284');
INSERT INTO `bf_block` VALUES ('15', '14', '0', '调查', '右_调查', '<div class=\"sbox side-vote-tip\">\r\n	<h2>小调查</h2>\r\n	<div class=\"text\">\r\n		<p class=\"mark\"><a href=\"{rewrite}/vote/\">您最想团购的是什么？</a></p>\r\n		<p>请告诉{$web_name}，让{$web_name}更好地为您服务！</p>\r\n	</div>\r\n	<p class=\"link\"><a href=\"{rewrite}/vote/\"><img src=\"{$weburl2}images/ico/button-deal-vote.gif\"></a></p>\r\n	<div class=\"sbox_bottom\"></div>\r\n</div>', '1291965351', '1291965351');
INSERT INTO `bf_block` VALUES ('16', '14', '0', '邮件订阅', '右_订阅', '<div class=\"deal-subscribe sbox\">\r\n	<h2>想知道</h2>\r\n	<div class=\"sidebar_div_inside\">\r\n		<form id=\"deal-subscribe-form\" method=\"post\" action=\"{rewrite}/subscribe/\">\r\n			$sys_hash_code\r\n			<table class=\"address\">\r\n				<tr>\r\n					<td><input type=\"text\" name=\"email\" class=\"f-text\" id=\"deal-subscribe-form-email\" xtip=\"请输入您的Email...\" value=\"\" /></td>\r\n					<td><input type=\"hidden\" name=\"city_id\" value=\"$city_id\" />\r\n						<input type=\"image\" src=\"{$weburl2}images/ico/button-subscribe.gif\" value=\"订阅\" /></td>\r\n				</tr>\r\n			</table>\r\n		</form>\r\n		<p class=\"text\">邮件订阅第一时间通知<br />\r\n			明天再来看又有新惊喜<br />\r\n			<span class=\"required\">*</span> 此服务可以随时取消</p>\r\n	</div>\r\n	<div class=\"sbox_bottom\"></div>\r\n</div>', '1291965455', '1291965455');
INSERT INTO `bf_block` VALUES ('17', '14', '0', '观察', '右_观察', '<div class=\"sbox\">\r\n	<h2>{$web_name2}观察</h2>\r\n	<div class=\"sidebar_div_inside\">\r\n		<h3 style=\"font-size:14px; font-weight:bold;\">{$web_name}用户既是社交活跃者也是网络的活跃用户</h3>\r\n		<ul>\r\n			<li style=\"text-indent:0; list-style:inside disc; font-size:12px;\">60%的用户每周出去消费两次一下行;</li>\r\n			<li style=\"text-indent:0; list-style:inside disc; font-size:12px;\">绝大部分用户会通过QQ，微博，博客，论坛传播自己的消费体验。</li>\r\n		</ul>\r\n		<h3 style=\"font-size:14px; font-weight:bold; margin-top:20px;\">我们通过对商家的回访知道</h3>\r\n		<ul>\r\n			<li style=\"text-indent:0; list-style:inside disc; font-size:12px;\">我们为商家带去的用户里其中80%是商家的目标用户;</li>\r\n			<li style=\"text-indent:0; list-style:inside disc; font-size:12px;\">至少有50%以上的用户会成为回头客。</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"sbox_bottom\"></div>\r\n</div>', '1291970143', '1291970143');
INSERT INTO `bf_block` VALUES ('18', '16', '0', '用户帮助', '底_帮助', '<li class=\"col\">\r\n	<h3>用户帮助</h3>\r\n	<ul class=\"sub-list\">\r\n		<li><a href=\"{rewrite}/help/tour\">玩转{$web_name}</a></li>\r\n		<li><a href=\"{rewrite}/help/faqs\">常见问题</a></li>\r\n		<li><a href=\"{rewrite}/help/sys\">{$web_name}概念</a></li>\r\n		<!--<li><a href=\"{rewrite}/help/api\">开发API</a></li>-->\r\n	</ul>\r\n</li>', '1291971982', '1291971982');
INSERT INTO `bf_block` VALUES ('19', '16', '0', '获取更新', '底_更新', '<li class=\"col\">\r\n	<h3>获取更新</h3>\r\n	<ul class=\"sub-list\">\r\n		<li><a href=\"{rewrite}/subscribe/\">邮件订阅</a></li>\r\n		<li><a href=\"/feed.php?ename=tanggu\">RSS订阅</a></li>\r\n	</ul>\r\n</li>', '1291972051', '1291972345');
INSERT INTO `bf_block` VALUES ('23', '14', '0', '右侧公告', '右_公告', '{eval\r\n		$public_notice=db::one_one(\'web_fields\',\'public_notice\',\"wid=\'$city_id\'\");\r\n		}\r\n		<div class=\"sbox side-business side_bulletin\">\r\n			<h2>$city[name]公告</h2>\r\n			<div class=\"sidebar_div_inside\">\r\n				<div>\r\n					$public_notice\r\n				</div>\r\n			</div>\r\n			<div class=\"sbox_bottom\"></div>\r\n		</div>', '1292165989', '1292590883');
INSERT INTO `bf_block` VALUES ('20', '16', '0', '合作联系', '底_合作', '<li class=\"col\">\r\n	<h3>合作联系</h3>\r\n	<ul class=\"sub-list\">\r\n		<li><a href=\"/feedback/seller/\">商务合作</a></li>\r\n		<li><a href=\"/feedback/suggest/\">意见反馈</a></li>\r\n		<li><a href=\"/help/works\">达人一派</a></li>\r\n		<li><a href=\"/seller/\">商家后台</a></li>\r\n		<li><a href=\"/related_links\">友情链接</a></li>\r\n	</ul>\r\n</li>', '1291972073', '1292466250');
INSERT INTO `bf_block` VALUES ('24', '16', '0', '友情链接联系QQ', '底_QQ', '市场合作、友情链接: QQ:1341794', '1292212895', '1292212895');
INSERT INTO `bf_block` VALUES ('21', '16', '0', '公司信息', '底_公司', '<li class=\"col\">\r\n	<h3>公司信息</h3>\r\n	<ul class=\"sub-list\">\r\n		<li><a href=\"/about/us\">关于$web_name</a></li>\r\n		<li><a href=\"/about/job\">工作机会</a></li>\r\n		<li><a href=\"/about/contact\">联系方式</a></li>\r\n		<li><a href=\"/about/terms\">用户协议</a></li>\r\n		<li><a href=\"/cities\">开通城市</a></li>\r\n	</ul>\r\n</li>', '1291972106', '1292221747');
INSERT INTO `bf_block` VALUES ('22', '16', '0', '底部图片链接', '底_图片链接', '<li id=\"cooperation\" style=\"float:left; display:inline; padding:20px 0 0 20px; width:350px;\"> <img src=\"https://img.alipay.com/img/logo/aip/logo154x50.jpg\"> <a href=\"http://www.itrust.org.cn/yz/pjwx.asp?wm=1562144102\" target=\"_blank\"><img src=\"{$weburl2}images/ico/wxrz.png\" /></a> <img src=\"{$weburl2}images/ico/swbrz.gif\" /> <a href=\"/\"><img src=\"{$weburl2}images/ico/logo_ico.gif\" /></a> </li>\r\n', '1291972159', '1291972159');
INSERT INTO `bf_block` VALUES ('25', '18', '0', '关于我们', '关于_我们', '<p style=\"PADDING-BOTTOM: 0px; OVERFLOW-Y: auto; BACKGROUND-COLOR: rgb(255,255,255); MARGIN: 5px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: Arial, Verdana, sans-serif; WORD-WRAP: break-word; WHITE-SPACE: pre-line; FONT-SIZE: 12px; PADDING-TOP: 0px\"></p>\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"></blockquote>\r\n<p>&nbsp;&nbsp; &nbsp; &nbsp; 我们的创业团队来自知名互联网公司及世界500强企业，包括谷歌, 雅虎, 惠普, 诺基亚, 宝洁等等，大家放弃知名企业的光环，为了一个共同的理想聚首{$web_name}。</p>\r\n<p>&nbsp;&nbsp; &nbsp; &nbsp; 现在，我们每天关注这座城市，寻找城市中最精彩的东西，用团购的优惠方式呈现给大家；生活如此精彩，我们乐此不疲...&nbsp;</p>\r\n<p class=\"p1\"><strong>我们的团队包括： &nbsp;</strong></p>\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\">\r\n	<p class=\"p1\">o 朱海波：美乐信息网总裁、SEO大师。</p>\r\n	<p class=\"p1\">o 刘&nbsp;&nbsp;&nbsp;&nbsp;江：美乐信息网副总裁、美乐信息网技术总监。</p>\r\n	<p class=\"p1\">o 隆&nbsp;&nbsp;&nbsp;&nbsp;梦：美乐信息网总经理、美乐信息网顾问。</p>\r\n</blockquote>\r\n<p class=\"p1\"><strong>我们将提供：</strong></p>\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\">\r\n	<p class=\"p1\">绝佳的<strong>共同创业</strong>的机会，具备<strong>竞争力的薪酬</strong>，以及一个<strong>团结温馨的工作团队</strong>！</p>\r\n</blockquote>\r\n<p class=\"p1\"><strong>期待你的加盟！</strong></p>\r\n', '1292222356', '1292222385');
INSERT INTO `bf_block` VALUES ('26', '19', '0', '关于我们导航', '导航_关于', '{loop $op_list $k $v}\r\n<li{if $k==$operation} class=\"current\"{/if}><a href=\"{rewrite}/about/$k\">$v</a><span></span></li>\r\n{/loop}', '1292223278', '1292223278');
INSERT INTO `bf_block` VALUES ('27', '14', '0', '右侧动态信息', '右_动态', '{eval\r\n$sns_list=db::get_list(\'sns\',\'*\',\'\',\'timestamp desc\');\r\n}\r\n<div class=\"sbox\" id=\"media\">\r\n	<h2>{$web_name}动态</h2>\r\n	<div class=\"sidebar_div_inside\">\r\n		<table>\r\n			{loop $sns_list $v}\r\n			<tr>\r\n				<td valign=\"top\" class=\"table_left media_time\">{eval echo date(\'m月d日\',$v[timestamp]);}</td>\r\n				<td valign=\"top\" class=\"table_right\"><a href=\"$v[url]\" target=\"_blank\">$v[title]</a></td>\r\n			</tr>\r\n			{/loop}\r\n		</table>\r\n		<a href=\"/about/media\" class=\"mtbd\" style=\"width:81px; height:21px; background:url(../../static/img/block_side_media_mtbd.gif) no-repeat; display:block; margin:7px auto 0 auto;text-indent:-999999px;\">媒体报道</a> </div>\r\n	<div class=\"sbox_bottom\"></div>\r\n</div>\r\n', '1292230034', '1292230074');
INSERT INTO `bf_block` VALUES ('28', '18', '0', '联系方式', '关于_联系', '<p><strong><span style=\"font-size:large;\">业务合作：</span></strong></p>\r\n<blockquote style=\"BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 40px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: medium none; BORDER-RIGHT: medium none; PADDING-TOP: 0px\">\r\n	<p>如果您希望和我们进行媒体合作，业务合作，广告代理，资源置换等，请联系：</p>\r\n	<p>tuangou@100fu.com</p>\r\n	<p>市场合作、友情链接: QQ:<strong>1341794</strong></p>\r\n</blockquote>\r\n<p><strong><span style=\"font-size:large;\">团购服务：</span></strong></p>\r\n<blockquote style=\"BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; MARGIN: 0px 0px 0px 40px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: medium none; BORDER-RIGHT: medium none; PADDING-TOP: 0px\">\r\n	<p>如果您在参与团购过程中遇到问题，或者对我们有任何的意见或建议，请联系客服人员：</p>\r\n	<p>tuangou@100fu.com</p>\r\n</blockquote>\r\n', '1292249110', '1292249110');
INSERT INTO `bf_block` VALUES ('29', '18', '0', '用户协议', '关于_协议', '<span style=\"font-family:Tahoma, Helvetica, arial, sans-serif;LINE-HEIGHT: 21px; WHITE-SPACE: normal; FONT-SIZE: 14px\"></span>\r\n<div style=\"PADDING-BOTTOM: 10px; MARGIN: 0px; PADDING-LEFT: 10px; WIDTH: 678px; PADDING-RIGHT: 10px; BORDER-TOP: rgb(221,238,255) 1px solid; PADDING-TOP: 10px\" class=\"sect\">\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">一、{$web_name}服务条款的确认和接纳</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">{$web_name}（以下简称本站）的各项电子服务的所有权和运作权归本站。本站提供的服务将完全按照其发布的服务条款和操作规则严格执行。用户必须完全同意所有服务条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的当然约定依据，除非违反国家强制性法律，否则始终有效。在下订单的同时，您也同时承认了您拥有购买这些产品的权利能力和行为能力，并且将您对您在订单中提供的所有信息的真实性负责。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">二、服务简介</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站运用自己的操作系统通过国际互联网络为用户提供网络服务。同时，用户必须：</p>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"></p>\r\n	<ol style=\"PADDING-BOTTOM: 0px; MARGIN: 10px 20px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\" class=\"list\">\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置。</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">自行负担个人上网所支付的与此服务有关的电话费用、网络费用。</li>\r\n	</ol>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">基于本站所提供的网络服务的重要性，用户应同意：</p>\r\n	<ol style=\"PADDING-BOTTOM: 0px; MARGIN: 10px 20px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\" class=\"list\">\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">提供详尽、准确的个人资料。</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">不断更新注册资料，符合及时、详尽、准确的要求。</li>\r\n	</ol>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站对用户的电子邮件、手机号等隐私资料进行保护，承诺不会在未获得用户许可的情况下擅自将用户的个人资料信息出租或出售给任何第三方，但以下情况除外：</p>\r\n	<ol style=\"PADDING-BOTTOM: 0px; MARGIN: 10px 20px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\" class=\"list\">\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户同意让第三方共享资料；</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户同意公开其个人资料，享受为其提供的产品和服务；</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站需要听从法庭传票、法律命令或遵循法律程序；</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站发现用户违反了本站服务条款或本站其它使用规定。</li>\r\n	</ol>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">关于用户隐私的具体协议以本站的<a style=\"COLOR: rgb(51,153,153); TEXT-DECORATION: none\" href=\"{rewrite}/about/privacy\">隐私声明</a>为准。</p>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">如果用户提供的资料包含有不正确的信息，本站保留结束用户使用网络服务资格的权利。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">三、价格和数量</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站将尽最大努力保证您所购商品与网站上公布的价格一致，但价目表和声明并不构成要约。本站有权在发现了其网站上显现的产品及订单的明显错误或缺货的情况下，单方面撤回任何承诺。同时，本站保留对产品订购的数量的限制权。</p>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">产品的价格和可获性都在本站上指明。这类信息将随时更改且不发任何通知。商品的价格都包含了增值税。如果发生了意外情况，在确认了您的订单后，由于供应商提价，税额变化引起的价格变化，或是由于网站的错误等造成商品价格变化，您有权取消您的订单，并希望您能及时通过电子邮件或电话通知本站客户服务部。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">四、服务条款的修改</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站将可能不定期的修改本用户协议的有关条款，一旦条款及服务内容产生变动，本站将会在重要页面上提示修改内容。如果不同意本站对条款内容所做的修改，用户可以主动取消获得的网络服务。如果用户继续使用本站的服务，则视为接受服务条款的变动。本站保留随时修改或中断服务而不需告知用户的权利。本站行使修改或中断服务的权利，不需对用户或第三方负责。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">五、用户的帐户，密码和安全性</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户一旦注册成功，成为本站的合法用户，将得到一个密码和用户名。您可随时根据指示改变您的密码。用户将对用户名和密码安全负全部责任。另外，每个用户都要对以其用户名进行的所有活动和事件负全责。用户若发现任何非法使用用户帐户或存在安全漏洞的情况，请立即通告本站。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">六、拒绝提供担保</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户个人对网络服务的使用承担风险。本站对此不作任何类型的担保，不论是明确的或隐含的，但是不对商业性的隐含担保、特定目的和不违反规定的适当担保作限制。本站不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。本站对在本站上得到的任何商品购物服务或交易进程，不作担保。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">七、有限责任</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害可能来自：不正当使用网络服务，在网上购买商品或进行同类型服务，在网上进行交易，非法使用网络服务或用户传送的信息有所变动。这些行为都有可能会导致本站的形象受损，所以本站事先提出这种损害的可能性。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">八、对用户信息的存储和限制</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站不对用户所发布信息的删除或储存失败负责。本站有判定用户的行为是否符合本站服务条款的要求和精神的保留权利，如果用户违背了服务条款的规定，本站有中断对其提供网络服务的权利。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">九、保障用户</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">同意保障和维护本站全体成员的利益，负责支付由用户使用超出业务范围引起的律师费用，违反服务条款的损害补偿费用等。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">十、结束服务</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户或本站可随时根据实际情况中断一项或多项网络服务。本站不需对任何个人或第三方负责而随时中断服务。用户对后来的条款修改有 异议，或对本站的服务不满，可以行使如下权利：</p>\r\n	<ol style=\"PADDING-BOTTOM: 0px; MARGIN: 10px 20px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\" class=\"list\">\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">停止使用本站的网络服务。</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">通告本站停止对该用户的服务。</li>\r\n	</ol>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">结束用户服务后，用户使用网络服务的权利马上中止。从那时起，用户有权利，本站也没有义务传送任何未处理的信息或未完成的服务给户或第三方。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">十一、通告</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。本站的活动信息也将定期通过页面公告及电子邮件方式向用户发送。用户协议条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">十二、参与广告策划</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户在他们发表的信息中加入宣传资料或参与广告策划，在本站的免费服务上展示他们的产品，任何这类促销方法，包括运输货物、付款、服务、商业条件、担保及与广告有关的描述都只是在相应的用户和广告销售商之间发生。本站不承担任何责任，本站没有义务为这类广告销售负任何一部分的责任。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">十三、网络服务内容的所有权</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站定义的网络服务内容包括：文字、软件、声音、图片、录象、图表、广告中的全部内容；电子邮件的全部内容；本站为用户提供的其他信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">十四、责任限制</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">如因不可抗力或其他本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，本站不承担责任。但是本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失。</p>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">除了本站的使用条件中规定的其它限制和除外情况之外，在中国法律法规所允许的限度内，对于因交易而引起的或与之有关的任何直接的、间接的、特殊的、附带的、后果性的或惩罚性的损害，或任何其它性质的损害，本站、本站的董事、管理人员、雇员、代理或其它代表在任何情况下都不承担责任。本站的全部责任，不论是合同、保证、侵权（包括过失）项下的还是其它的责任，均不超过您所购买的与该索赔有关的商品价值额。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">十五、法律管辖和适用</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本协议的订立、执行和解释及争议的解决均应适用中国法律。</p>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">如发生本站服务条款与中国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它合法条款则依旧保持对用户产生法律效力和影响。</p>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。</p>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向本站所在地的人民法院提起诉讼。</p>\r\n</div>\r\n', '1292249355', '1292249355');
INSERT INTO `bf_block` VALUES ('30', '18', '0', '隐私申明', '关于_隐私', '<span style=\"font-family:Tahoma, Helvetica, arial, sans-serif;LINE-HEIGHT: 21px; WHITE-SPACE: normal; FONT-SIZE: 14px\"></span>\r\n<div style=\"PADDING-BOTTOM: 10px; MARGIN: 0px; PADDING-LEFT: 10px; WIDTH: 678px; PADDING-RIGHT: 10px; BORDER-TOP: rgb(221,238,255) 1px solid; PADDING-TOP: 10px\" class=\"sect\">\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">{$web_name}（$domains[0]）以此声明对本站用户隐私保护的许诺。{$web_name}的隐私声明正在不断改进中，随着本站服务范围的扩大，会随时更新隐私声明。我们欢迎您随时查看隐私声明。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">隐私政策</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">我们非常重视对用户隐私权的保护，用户的邮件及手机号等个人资料为用户重要隐私，{$web_name}承诺不会将个人资料用作它途；承诺不会在未获得用户许可的情况下擅自将用户的个人资料信息出租或出售给任何第三方，但以下情况除外：</p>\r\n	<ol style=\"PADDING-BOTTOM: 0px; MARGIN: 10px 20px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\" class=\"list\">\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户同意让第三方共享资料；</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">用户同意公开其个人资料，享受为其提供的产品和服务；</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站需要听从法庭传票、法律命令或遵循法律程序；</li>\r\n		<li style=\"LIST-STYLE-POSITION: inside; PADDING-BOTTOM: 0px; LIST-STYLE-TYPE: decimal; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">本站发现用户违反了本站服务条款或本站其它使用规定。</li>\r\n	</ol>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">使用说明</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">{$web_name}用户可以通过设定的密码来保护帐户和资料安全。用户应当对其密码的保密负全部责任。请不要和他人分享此信息。如果您使用的是公共电脑，请在离开电脑时退出{$web_name}以保证您的信息不被后来的使用者获取。</p>\r\n	<h4 style=\"PADDING-BOTTOM: 0px; MARGIN: 25px 0px 10px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; FONT-SIZE: 1em; PADDING-TOP: 0px\">服务条款</h4>\r\n	<p style=\"PADDING-BOTTOM: 0px; LINE-HEIGHT: 1.5em; MARGIN: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">使用{$web_name}的服务同时受本站<a style=\"COLOR: rgb(51,153,153); TEXT-DECORATION: none\" href=\"{rewrite}/about/terms\">用户协议</a>的约束。</p>\r\n</div>\r\n', '1292249512', '1292249551');
INSERT INTO `bf_block` VALUES ('31', '14', '0', '右侧邀请', '右_邀请', '<div class=\"sbox side-invite-tip\">\r\n			<h2>邀请有奖</h2>\r\n			<p class=\"text\">每邀请一位好友首次购买，您将获<strong><span class=\"money\">yen</span>10</strong>元返利</p>\r\n			<p class=\"link\"><a href=\"{rewrite}/user/invite/\">&raquo;&nbsp;点击获取您的专用邀请链接</a></p>\r\n			<div class=\"sbox_bottom\"></div>\r\n		</div>', '1292580535', '1292580535');
INSERT INTO `bf_block` VALUES ('32', '14', '0', '右侧问答', '右_问答', '{eval $question_list=db::get_list(\'ask\',\'id,content\',\"reply=\'1\'\",\'timestamp desc\',1,3);}\r\n		<div class=\"deal-consult sbox\">\r\n			<div class=\"deal-consult-tip\">\r\n				<h2>{$web_name2}问答</h2>\r\n				<div class=\"sidebar_div_inside\">\r\n					<p class=\"nav\"><a href=\"{rewrite}/team/ask\">查看全部</a> | <a href=\"{rewrite}/team/ask#post\">我要提问</a> | <a href=\"{rewrite}/user/ask\">我的问答</a></p>\r\n					<ul class=\"list\">\r\n						{loop $question_list $v}\r\n						<li><a href=\"/team/ask#ask-entry-$v[id]\" target=\"_blank\">{cut $v[content],22}</a></li>\r\n						{/loop}\r\n					</ul>\r\n					<div class=\"custom-service\">\r\n						<p class=\"time\"> 客服电话：13982017238<br>\r\n						</p>\r\n						<p class=\"time\">周一至周五 9:00-18:00</p>\r\n					</div>\r\n				</div>\r\n				<div class=\"sbox_bottom\"></div>\r\n			</div>\r\n		</div>', '1292589543', '1292589593');
INSERT INTO `bf_block` VALUES ('33', '14', '0', '账户余额', '右_余额', '<div id=\"sidebar\">\r\n	<div class=\"sbox\">\r\n		<h2>账户余额</h2>\r\n		<p>您的账户余额：<span class=\"money\">yen</span>{if $logined}$user_fields[money]{else}0{/if}</p>\r\n		<div class=\"sbox_bottom\"></div>\r\n	</div>\r\n</div>', '1292653102', '1292666809');
INSERT INTO `bf_block` VALUES ('34', '14', '0', '右侧余额讲解', '右_关于余额', '<div class=\"sbox\">\r\n			<h2 class=\"first\">什么是账户余额？</h2>\r\n			<div class=\"sidebar_div_inside\">\r\n				<p>账户余额是您在嘀嗒团团购时可用于支付的金额。</p>\r\n			</div>\r\n			<h2 class=\"sidebar_h2_inside\">可以往账户里充值么？</h2>\r\n			<div class=\"sidebar_div_inside\">\r\n				<p>请到<a href=\"{rewrite}/user/credit\">账户余额</a>菜单，在线充值。</p>\r\n			</div>\r\n			<h2 class=\"sidebar_h2_inside\">那怎样才能有余额？</h2>\r\n			<div class=\"sidebar_div_inside\">\r\n				<p>邀请好友获得返利将充值到账户余额，参加团购亦可获得返利。</p>\r\n			</div>\r\n			<div class=\"sbox_bottom\"></div>\r\n		</div>', '1292739140', '1292739140');

-- ----------------------------
-- Table structure for `bf_buyers`
-- ----------------------------
DROP TABLE IF EXISTS `bf_buyers`;
CREATE TABLE `bf_buyers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `isreal` int(2) unsigned NOT NULL DEFAULT '0',
  `password` varchar(32) DEFAULT NULL,
  `score0` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `maxScore` int(10) unsigned NOT NULL,
  `utype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `express` varchar(255) DEFAULT NULL,
  `todayTask` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tswkTask` smallint(5) unsigned NOT NULL DEFAULT '0',
  `task` int(10) unsigned NOT NULL DEFAULT '0',
  `tasking` int(10) unsigned NOT NULL DEFAULT '0',
  `updateTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `pauseTimestamp` int(10) unsigned NOT NULL,
  `ing` int(10) unsigned NOT NULL DEFAULT '0',
  `complate` int(10) unsigned NOT NULL DEFAULT '0',
  `cStatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `runTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(120) DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hasShop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`uid`,`score`,`status`,`timestamp`,`id`),
  KEY `i2` (`type`,`nickname`,`uid`,`id`),
  KEY `i3` (`type`,`status`,`cStatus`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_buyers
-- ----------------------------
INSERT INTO `bf_buyers` VALUES ('1', '1', '5', 'ceshi2', 'zhanglinlin711', '1', '', '313', '314', '50000', '1', '0', '1404934666', '0', '0', '1', '1', '2', '0', '0', '0', '0', '0', '0', null, '0', '0');

-- ----------------------------
-- Table structure for `bf_b_navs`
-- ----------------------------
DROP TABLE IF EXISTS `bf_b_navs`;
CREATE TABLE `bf_b_navs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `ename` varchar(32) DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_b_navs
-- ----------------------------
INSERT INTO `bf_b_navs` VALUES ('5', '4', '0', '插件管理', 'manage', '0', '0');
INSERT INTO `bf_b_navs` VALUES ('4', '0', '0', '插件中心', 'plugins', '0', '5');
INSERT INTO `bf_b_navs` VALUES ('8', '4', '0', '多功能文章模型', 'cms', '0', '0');
INSERT INTO `bf_b_navs` VALUES ('12', '4', '1', '视频教程', 'video', '0', '0');
INSERT INTO `bf_b_navs` VALUES ('13', '4', '0', '新手任务', 'tyrotask', '0', '0');
INSERT INTO `bf_b_navs` VALUES ('14', '4', '0', '快递号配置', 'epcfg', '0', '0');

-- ----------------------------
-- Table structure for `bf_cache_upload`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cache_upload`;
CREATE TABLE `bf_cache_upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmp_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `suffix` varchar(40) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  `size` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cache_upload
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_card`
-- ----------------------------
DROP TABLE IF EXISTS `bf_card`;
CREATE TABLE `bf_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cid` tinyint(3) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `money` decimal(9,2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `total1` int(10) unsigned NOT NULL,
  `total2` int(10) unsigned NOT NULL,
  `total3` int(10) unsigned NOT NULL DEFAULT '0',
  `total4` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp1` int(10) unsigned NOT NULL,
  `timestamp2` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp3` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`uid`,`status`,`timestamp1`,`id`),
  KEY `i2` (`type`,`status`,`timestamp2`,`id`),
  KEY `i3` (`type`,`cid`,`uid`,`status`,`timestamp1`,`id`),
  KEY `i4` (`cid`,`status`,`timestamp3`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_card
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_cate_block`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cate_block`;
CREATE TABLE `bf_cate_block` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cate_block
-- ----------------------------
INSERT INTO `bf_cate_block` VALUES ('20', '关于我们相关数据', '0', '0');
INSERT INTO `bf_cate_block` VALUES ('21', '右侧列表小模块', '0', '0');
INSERT INTO `bf_cate_block` VALUES ('22', '底部链接', '0', '0');
INSERT INTO `bf_cate_block` VALUES ('23', '导航', '0', '0');

-- ----------------------------
-- Table structure for `bf_club`
-- ----------------------------
DROP TABLE IF EXISTS `bf_club`;
CREATE TABLE `bf_club` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `users` int(10) unsigned NOT NULL DEFAULT '0',
  `qq` varchar(11) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_club
-- ----------------------------
INSERT INTO `bf_club` VALUES ('1', '3', '美乐联盟', '2011/04/1E11.jpg', '美乐刷客联盟，刷出激情，刷出精彩', '123456', '2', '', '1302259994', '1');

-- ----------------------------
-- Table structure for `bf_cms_epcfg`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_epcfg`;
CREATE TABLE `bf_cms_epcfg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `editTime` int(10) unsigned NOT NULL DEFAULT '0',
  `addIp` int(10) unsigned NOT NULL,
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `top` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `marker` varchar(32) DEFAULT NULL,
  `length` varchar(32) DEFAULT NULL,
  `start` varchar(32) DEFAULT NULL,
  `end` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_epcfg
-- ----------------------------
INSERT INTO `bf_cms_epcfg` VALUES ('1', '0', '1', '1332082898', '1332082898', '2130706433', '0', '0', '10', '13', '1', '200000000');
INSERT INTO `bf_cms_epcfg` VALUES ('2', '0', '1', '1332083074', '1332083074', '2130706433', '0', '0', '19', '13', '1', '142236000');
INSERT INTO `bf_cms_epcfg` VALUES ('3', '0', '1', '1332083269', '1332083269', '2130706433', '0', '0', '12', '13', '1', '463580000');
INSERT INTO `bf_cms_epcfg` VALUES ('4', '0', '2', '1332098541', '1332098541', '2130706433', '0', '0', '1', '10', '1', '120000000');
INSERT INTO `bf_cms_epcfg` VALUES ('5', '0', '2', '1332098548', '1332098548', '2130706433', '0', '0', '2', '10', '1', '120000000');
INSERT INTO `bf_cms_epcfg` VALUES ('6', '0', '2', '1332098559', '1332098559', '2130706433', '0', '0', '6', '10', '1', '120000000');

-- ----------------------------
-- Table structure for `bf_cms_epcfg_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_epcfg_cate`;
CREATE TABLE `bf_cms_epcfg_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `ename` varchar(32) DEFAULT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `editTime` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_epcfg_cate
-- ----------------------------
INSERT INTO `bf_cms_epcfg_cate` VALUES ('1', '0', '韵达', 'yunda', '1332082377', '1332085134', '3');
INSERT INTO `bf_cms_epcfg_cate` VALUES ('2', '0', '圆通', 'yuantong', '1332097959', '1332097959', '3');
INSERT INTO `bf_cms_epcfg_cate` VALUES ('3', '0', '申通', 'shentong', '1332097959', '1332097959', '3');

-- ----------------------------
-- Table structure for `bf_cms_model`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_model`;
CREATE TABLE `bf_cms_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `ename` varchar(32) DEFAULT NULL,
  `menuId` int(10) unsigned NOT NULL,
  `menuName` varchar(32) DEFAULT NULL,
  `parentMenuId` int(10) unsigned NOT NULL,
  `parentMenuName` varchar(32) DEFAULT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `lastEditTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_model
-- ----------------------------
INSERT INTO `bf_cms_model` VALUES ('4', '0', '视频教程', 'video', '12', '视频教程', '4', '插件中心', '1331620479', '0');
INSERT INTO `bf_cms_model` VALUES ('5', '0', '新手任务', 'tyrotask', '13', '新手任务', '4', '插件中心', '1331707312', '0');
INSERT INTO `bf_cms_model` VALUES ('6', '0', '快递号配置', 'epcfg', '14', '快递号配置', '4', '插件中心', '1332082377', '0');

-- ----------------------------
-- Table structure for `bf_cms_model_fields`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_model_fields`;
CREATE TABLE `bf_cms_model_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `fieldName` varchar(128) DEFAULT NULL,
  `fieldType` varchar(128) DEFAULT NULL,
  `htmlName` varchar(32) DEFAULT NULL,
  `htmlType` varchar(32) DEFAULT NULL,
  `htmlWidth` varchar(6) DEFAULT NULL,
  `htmlHeight` varchar(6) DEFAULT NULL,
  `imageWidth` varchar(6) DEFAULT NULL,
  `imageHeight` varchar(6) DEFAULT NULL,
  `htmlListValue` text,
  `htmlDefaultValue` varchar(32) DEFAULT NULL,
  `htmlIsReg` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `htmlRegStr` varchar(255) DEFAULT NULL,
  `tip` varchar(255) DEFAULT NULL,
  `bListShow` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_model_fields
-- ----------------------------
INSERT INTO `bf_cms_model_fields` VALUES ('1', '4', '1', '标题', 'title', 'varchar(64) DEFAULT NULL', 'title', 'txt', '480', '0', '0', '0', '', '', '1', '/^.+$/', '请输入视频标题', '1');
INSERT INTO `bf_cms_model_fields` VALUES ('2', '4', '3', '视频简介', 'des', 'text', 'des', 'editor', '600', '200', '0', '0', '', '', '0', '', '', '0');
INSERT INTO `bf_cms_model_fields` VALUES ('3', '4', '2', '视频地址(SWF)', 'url', 'varchar(255) DEFAULT NULL', 'url', 'txt', '480', '0', '0', '0', '', '', '1', '/^http:\\/\\//i', '请输入视频地址http://开头', '0');
INSERT INTO `bf_cms_model_fields` VALUES ('4', '5', '1', '任务名称', 'title', 'varchar(32) DEFAULT NULL', 'title', 'txt', '240', '0', '0', '0', '', '', '1', '/^.{1,32}$/', '请输入任务名称', '1');
INSERT INTO `bf_cms_model_fields` VALUES ('5', '5', '2', '任务详情', 'des', 'text', 'des', 'editor', '600', '200', '0', '0', '', '', '0', '', '', '0');
INSERT INTO `bf_cms_model_fields` VALUES ('6', '5', '3', '奖励类型', 'jiangli', 'tinyint UNSIGNED NOT NULL DEFAULT \'0\'', 'jiangli', 'select', '0', '0', '0', '0', '1=系统自动\r\n2=积分\r\n3=兔粮\r\n4=存款\r\n5=平台收购', '', '1', '', '', '1');
INSERT INTO `bf_cms_model_fields` VALUES ('7', '5', '4', '奖励数据', 'jiangliData', 'varchar(128) DEFAULT NULL', 'jiangliData', 'txt', '480', '0', '0', '0', '', '', '1', '/^.{1,128}$/', '请输入奖励数据1~128个字符', '1');
INSERT INTO `bf_cms_model_fields` VALUES ('8', '5', '5', '检测代码(PHP代码)', 'checkCode', 'text', 'checkCode', 'textarea', '600', '200', '0', '0', '', '', '1', '', '', '0');
INSERT INTO `bf_cms_model_fields` VALUES ('12', '6', '2', '长度', 'length', 'varchar(32) DEFAULT NULL', 'length', 'txt', '240', '0', '0', '0', '', '', '0', '', '', '1');
INSERT INTO `bf_cms_model_fields` VALUES ('11', '6', '1', '开头标记', 'marker', 'varchar(32) DEFAULT NULL', 'marker', 'txt', '240', '0', '0', '0', '', '', '0', '', '', '1');
INSERT INTO `bf_cms_model_fields` VALUES ('13', '6', '3', '开始数', 'start', 'varchar(32) DEFAULT NULL', 'start', 'txt', '240', '0', '0', '0', '', '', '0', '', '', '1');
INSERT INTO `bf_cms_model_fields` VALUES ('14', '6', '4', '结束数', 'end', 'varchar(32) DEFAULT NULL', 'end', 'txt', '240', '0', '0', '0', '', '', '0', '', '', '1');

-- ----------------------------
-- Table structure for `bf_cms_model_index`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_model_index`;
CREATE TABLE `bf_cms_model_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `indexName` varchar(128) DEFAULT NULL,
  `indexFields` varchar(128) DEFAULT NULL,
  `indexType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_model_index
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_cms_tyrotask`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_tyrotask`;
CREATE TABLE `bf_cms_tyrotask` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `editTime` int(10) unsigned NOT NULL DEFAULT '0',
  `addIp` int(10) unsigned NOT NULL,
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `top` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(32) DEFAULT NULL,
  `des` text,
  `jiangli` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `jiangliData` varchar(128) DEFAULT NULL,
  `checkCode` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_tyrotask
-- ----------------------------
INSERT INTO `bf_cms_tyrotask` VALUES ('7', '1', '1', '1331712384', '1331712384', '2130706433', '0', '0', '绑定买号', '<p>\r\n	<span style=\"color: #ff0000\"><em><u><strong>绑定买号</strong></u></em></span></p>\r\n', '2', '10', 'return db::exists(\'buyers\', array(\'uid\' => $uid));');
INSERT INTO `bf_cms_tyrotask` VALUES ('8', '2', '1', '1331712412', '1331712412', '2130706433', '0', '0', '绑定掌柜号', '<p>\r\n	绑定掌柜号绑定掌柜号绑定掌柜号绑定掌柜号</p>\r\n', '2', '10', 'return db::exists(\'sellers\', array(\'uid\' => $uid));');
INSERT INTO `bf_cms_tyrotask` VALUES ('9', '3', '1', '1331712472', '1331712472', '2130706433', '0', '0', '承接任务', '<p>\r\n	承接任务承接任务承接任务</p>\r\n', '2', '10', 'return db::exists(\'task\', array(\'buid\' => $uid));');
INSERT INTO `bf_cms_tyrotask` VALUES ('10', '4', '1', '1331712502', '1331712502', '2130706433', '0', '0', '发布任务', '<p>\r\n	发布任务发布任务发布任务</p>\r\n', '2', '10', 'return db::exists(\'task\', array(\'suid\' => $uid));');
INSERT INTO `bf_cms_tyrotask` VALUES ('11', '5', '1', '1331712644', '1331712644', '2130706433', '0', '0', '手机认证', '<p>\r\n	手机认证手机认证手机认证</p>\r\n', '3', '2', 'return db::exists(\'members\', array(\'id\' => $uid, \'status\' => 1));');
INSERT INTO `bf_cms_tyrotask` VALUES ('12', '6', '1', '1331712689', '1331712689', '2130706433', '0', '0', '推广平台', '<p>\r\n	推广平台推广平台推广平台推广平台</p>\r\n', '1', '推广奖励XXXX', '');
INSERT INTO `bf_cms_tyrotask` VALUES ('13', '7', '1', '1331712743', '1331712743', '2130706433', '0', '0', '我要赚钱', '<p>\r\n	我要赚钱我要赚钱</p>\r\n', '5', '我要赚钱我要赚钱', '');
INSERT INTO `bf_cms_tyrotask` VALUES ('14', '8', '1', '1331713198', '1331713198', '2130706433', '0', '0', '考试通过', '<p>\r\n	考试考试。。。</p>\r\n', '3', '2', 'return db::exists(\'memberfields\', array(\'uid\' => $uid, \'exam\' => 1));');

-- ----------------------------
-- Table structure for `bf_cms_tyrotask_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_tyrotask_cate`;
CREATE TABLE `bf_cms_tyrotask_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `ename` varchar(32) DEFAULT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `editTime` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_tyrotask_cate
-- ----------------------------
INSERT INTO `bf_cms_tyrotask_cate` VALUES ('1', '0', '默认分类', 'default', '1331707312', '1331707312', '8');

-- ----------------------------
-- Table structure for `bf_cms_video`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_video`;
CREATE TABLE `bf_cms_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `editTime` int(10) unsigned NOT NULL DEFAULT '0',
  `addIp` int(10) unsigned NOT NULL,
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `top` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `des` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_video
-- ----------------------------
INSERT INTO `bf_cms_video` VALUES ('1', '0', '1', '1331622362', '1331622396', '2130706433', '0', '0', '测试1', 'http://player.youku.com/player.php/Type/Folder/Fid/17164104/Ob/1/Pt/0/sid/XMzY0NzIyMDU2/v.swf', '<p>\r\n	12313131312</p>\r\n');
INSERT INTO `bf_cms_video` VALUES ('2', '0', '1', '1331622417', '1331622417', '2130706433', '0', '0', '视频2', 'http://player.youku.com/player.php/Type/Folder/Fid/17164104/Ob/1/Pt/0/sid/XMzY0NzIyMDU2/v.swf', '<p>\r\n	<strong>1232323</strong></p>\r\n');

-- ----------------------------
-- Table structure for `bf_cms_video_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_cms_video_cate`;
CREATE TABLE `bf_cms_video_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `ename` varchar(32) DEFAULT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `editTime` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_cms_video_cate
-- ----------------------------
INSERT INTO `bf_cms_video_cate` VALUES ('1', '0', '默认分类', 'default', '1331620479', '1331620479', '2');

-- ----------------------------
-- Table structure for `bf_collect`
-- ----------------------------
DROP TABLE IF EXISTS `bf_collect`;
CREATE TABLE `bf_collect` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `user_tel` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `user_qq` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `user_tname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cs_url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cs_mark` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `nums` int(5) DEFAULT NULL,
  `cs_atime` int(12) DEFAULT NULL,
  `cs_ip` int(12) DEFAULT NULL,
  `cs_ptime` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bf_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_collection`
-- ----------------------------
DROP TABLE IF EXISTS `bf_collection`;
CREATE TABLE `bf_collection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_collection
-- ----------------------------
INSERT INTO `bf_collection` VALUES ('2', '3', '【美乐搜索】深度解析淘宝客', '/bbs/t61/', '0');
INSERT INTO `bf_collection` VALUES ('3', '3', '【账号资金】如何查询我的账户资产变化记录', '/bbs/t49/', '0');
INSERT INTO `bf_collection` VALUES ('4', '3', '【VIP卡信托】怎样成为双赢卡信托用户', '/bbs/t55/', '0');
INSERT INTO `bf_collection` VALUES ('5', '3', '【VIP卡信托】怎样识别是否是卡信托用户', '/bbs/t60/', '1300887515');

-- ----------------------------
-- Table structure for `bf_complain`
-- ----------------------------
DROP TABLE IF EXISTS `bf_complain`;
CREATE TABLE `bf_complain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `fuid` int(10) unsigned NOT NULL,
  `fusername` varchar(16) DEFAULT NULL,
  `tuid` int(10) unsigned NOT NULL,
  `tusername` varchar(16) DEFAULT NULL,
  `tid` varchar(20) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timestamp1` int(10) unsigned NOT NULL,
  `timestamp2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i2` (`tid`,`id`),
  KEY `i1` (`type`,`fuid`,`tuid`,`status`,`timestamp1`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_complain
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_complain_message`
-- ----------------------------
DROP TABLE IF EXISTS `bf_complain_message`;
CREATE TABLE `bf_complain_message` (
  `cid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `timestamp` int(10) unsigned NOT NULL,
  KEY `i1` (`cid`,`type`,`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_complain_message
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_credits`
-- ----------------------------
DROP TABLE IF EXISTS `bf_credits`;
CREATE TABLE `bf_credits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` varchar(20) DEFAULT NULL,
  `fuid` int(10) unsigned NOT NULL,
  `fusername` varchar(16) DEFAULT NULL,
  `tuid` int(10) unsigned NOT NULL,
  `tusername` varchar(16) DEFAULT NULL,
  `isBuyer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(4) NOT NULL,
  `isHide` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`tid`,`fuid`),
  KEY `i2` (`tuid`,`isBuyer`,`timestamp`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_credits
-- ----------------------------
INSERT INTO `bf_credits` VALUES ('1', 'TB0710053652057318', '4', 'ceshi1', '5', 'ceshi2', '0', '1', '0', '0', '范德萨发生的', '1404941916');
INSERT INTO `bf_credits` VALUES ('2', 'TB0710053652057318', '5', 'ceshi2', '4', 'ceshi1', '1', '1', '0', '0', '发生大法师的', '1404941928');

-- ----------------------------
-- Table structure for `bf_eids`
-- ----------------------------
DROP TABLE IF EXISTS `bf_eids`;
CREATE TABLE `bf_eids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(125) DEFAULT NULL,
  `eid` varchar(125) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(16) DEFAULT NULL,
  `addTime` int(10) unsigned NOT NULL,
  `useTime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_eids
-- ----------------------------
INSERT INTO `bf_eids` VALUES ('5', null, '圆通快递 1878888215  2012-09-17 17:57 上海市长宁区/业务员收件 2012-09-18 11:12 浙江省杭州市九堡/PDA正常签收扫描 签收人:小周。', '14', 'asdasd', '1348066867', '1348073105', '1');
INSERT INTO `bf_eids` VALUES ('9', null, '圆通快递 1878888215  2012-09-17 17:57 上海市长宁区/业务员收件 2012-09-18 11:12 ', '14', 'asdasd', '1348070415', '1348079442', '1');
INSERT INTO `bf_eids` VALUES ('10', null, '圆通快递 1878888215 2012-09-17 17:57 上海市长宁区/业务员收件 2012-09-18 11:12 d', '14', 'asdasd', '1348070542', '1348081267', '1');
INSERT INTO `bf_eids` VALUES ('15', null, '圆通快递 1878888215 2012-09-17 17:57 上海市长宁区/业务员收件 2012-09-18 11:12 浙江省杭州市九堡/PDA正常签收扫描 签收人:小周。1234567890123456789012345678901', '14', 'asdasd', '1348071843', '1348365434', '1');
INSERT INTO `bf_eids` VALUES ('13', null, '圆通快递 1878888215 2012-09-17 17:57 上海市长宁区/业务员收件 2012-09-18 11:12 浙', '14', 'asdasd', '1348071621', '1348092613', '1');
INSERT INTO `bf_eids` VALUES ('14', null, '圆通快递 1878888215 2012-09-17 17:57 上海市长宁区/业务员收件 2012-09-18 11:12 浙', '14', 'asdasd', '1348071695', '1348244468', '1');

-- ----------------------------
-- Table structure for `bf_ensure`
-- ----------------------------
DROP TABLE IF EXISTS `bf_ensure`;
CREATE TABLE `bf_ensure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `fuid` int(10) unsigned NOT NULL,
  `fusername` varchar(16) DEFAULT NULL,
  `tuid` int(10) unsigned NOT NULL,
  `tusername` varchar(16) DEFAULT NULL,
  `tid` varchar(20) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timestamp1` int(10) unsigned NOT NULL,
  `timestamp2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i2` (`tid`,`id`),
  KEY `i1` (`type`,`fuid`,`tuid`,`status`,`timestamp1`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_ensure
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_ensure_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_ensure_log`;
CREATE TABLE `bf_ensure_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `money` decimal(9,2) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_ensure_log
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_ensure_message`
-- ----------------------------
DROP TABLE IF EXISTS `bf_ensure_message`;
CREATE TABLE `bf_ensure_message` (
  `cid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `timestamp` int(10) unsigned NOT NULL,
  KEY `i1` (`cid`,`type`,`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_ensure_message
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_express`
-- ----------------------------
DROP TABLE IF EXISTS `bf_express`;
CREATE TABLE `bf_express` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(16) DEFAULT NULL,
  `marker` varchar(16) DEFAULT NULL,
  `city1` text,
  `city2` text,
  `city3` text,
  `timestamp` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`sort`,`timestamp`,`name`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_express
-- ----------------------------
INSERT INTO `bf_express` VALUES ('1', '1', '汇通', 'MG', '上海{上海市{闵行区{华漕镇}宝山区{淞南镇}嘉定区{南翔镇}浦东新区{张江}金山区{漕泾镇}松江区{茸北镇}青浦区{赵巷镇}奉贤区{南桥镇}崇明县{城桥镇}普陀区{金沙新村}南汇区{新场镇}闸北区{宝昌路}长宁区{长宁路}}}江苏省{南京市{鼓楼区{江东街道}下关区{阅江楼街道}玄武区{孝陵卫街道}秦淮区{秦虹街道}雨花台{赛虹桥街道}栖霞区{燕子矶街道}浦口区{盘城镇}江宁区{江宁街道}高淳县{淳溪镇}}无锡市{崇安区{崇安寺街道}北塘区{黄巷街道}南长区{迎龙桥街道}滨湖区{荣巷街道}锡山区{安镇街道}惠山区{堰桥镇}}苏州市{沧浪区{吴门桥街道}平江区{观前街道}虎丘区{横塘街道}吴江市{盛泽镇}张家港市{港区镇}昆山市{玉山镇}}南通市{崇川区{新开镇}港闸区{唐闸镇}通州市{金沙镇}海门市{海门镇}启东市{大兴镇}}扬州市{宝应县{沿河镇}江都市{仙女镇}}镇江市{辛丰镇{辛丰镇街道}}丹阳市{前艾镇}扬中市{八桥镇}句容市{华阳镇}}浙江省{宁波市{江北区{马河街道}慈溪市{横河镇}宁海县{桑洲镇}江东区{东胜街道}海曙区{灵塔街道}奉化市{江口镇}}嘉兴市{平湖市{乍浦镇}秀洲区{王店镇}桐乡市{大麻镇}海宁市{许村镇}嘉善县{西唐镇}海盐县{武原镇}}金华市{金东区{孝顺镇}义乌市{上溪镇}东阳市{巍山镇}浦江县{黄宅镇}兰溪市{诸葛镇}武义县{武阳镇}永康市{江南街道}}台州市{路桥区{路桥街道}淑江区{海门街道}温岭市{松门镇}黄岩区{江口街道}三门县{海游镇}天台县{白鹤镇}仙居县{横溪镇}玉环县{珠港镇}}杭州市{上城区{小营街道}西湖区{北山街道}滨江区{长河街道}}余杭市{临平镇}富阳市{大源镇}临安市{高虹镇}桐庐市{凤川镇}}', '上海{上海市{嘉定区{南翔镇}浦东新区{张江}普陀区{金沙新村}南汇区{新场镇}闸北区{宝昌路}}}浙江市{金华市{义乌市{上溪镇}永康市{江南街道}}}', '浙江省{温州市{昌南县{灵溪镇;龙港镇;宜山镇;钱库镇;巴艚镇;炎亭镇;大渔镇;赤溪镇;矾山镇;望里镇;澡溪镇}}}', '1301589687', '0');
INSERT INTO `bf_express` VALUES ('2', '2', '星辰', 'MG', '浙江省{杭州市{滨江区{滨江市区}拱墅区{拱墅市区}江干区{江干市区}上城区{上城市区}西湖区{西湖市区}下城区{下城市区}萧山区{萧山市区}余杭区{临平市区}富阳市{富阳市区}临安市{临安市区}桐庐县{桐君街道}}湖州市{吴兴区{红丰路}安吉县{递铺城区}长兴县{雉城镇}}嘉兴市{秀洲区{秀洲市区}南湖区{南湖市区}海宁市{海宁市区}平湖市{平湖市区}桐乡市{梧桐街道}海盐县{武原镇}}金华市{金东区{金东市区}婺城区{婺城市区}东阳市{东阳市区}兰溪市{兰溪市区}义乌市{商贸城}永康市{永康市区}浦江县{浦江县城城区}武义县{武义城区}}丽水市{莲都区{莲都市区}缙云县{县城}}宁波市{北仑区{新碶街道}海曙区{月湖街道}江东区{东胜街道}镇海区{招宝山街道}慈溪市{浒山街道}余姚市{凤山街道}}衢州市{柯城区{柯城区市中心}龙游县{龙游市区}}绍兴市{越城区{越城市区}绍兴县{柯桥}}台州市{黄岩区{黄岩市区}椒江区{经济开发区}路桥区{路南街道}临海市{临海市区}温岭市{温岭市区}天台县{天台县市区}}温州市{龙湾区{温州经济技术开发区}瓯海区{新桥镇}瑞安市{瑞安市区}苍南县{龙港镇区}平阳县{郑楼镇区}}}', '浙江省{杭州市{滨江区{滨江市区}拱墅区{拱墅市区}江干区{江干市区}上城区{上城市区}下城区{下城市区}萧山区{萧山市区}余杭区{临平市区}富阳市{富阳市区}临安市{临安市区}桐庐县{桐君街道}}}', '浙江省{嘉兴市{桐乡市{梧桐街道;濮院镇}}}', '1301589690', '0');

-- ----------------------------
-- Table structure for `bf_express_buyers`
-- ----------------------------
DROP TABLE IF EXISTS `bf_express_buyers`;
CREATE TABLE `bf_express_buyers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(10) unsigned NOT NULL,
  `eid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `area` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `nickname` varchar(16) DEFAULT NULL,
  `mobilephone` varchar(16) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`bid`,`eid`,`uid`,`id`),
  KEY `i2` (`timestamp`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_express_buyers
-- ----------------------------
INSERT INTO `bf_express_buyers` VALUES ('1', '1', '1', '3', '', '浙江市 金华市 义乌市 上溪镇', '上溪东南街18号', '阿江', '13982017238', '1301678299');
INSERT INTO `bf_express_buyers` VALUES ('2', '1', '2', '3', '', '浙江省 杭州市 滨江区 滨江市区', '滨河路18号', '阿江', '13982017238', '1301678333');
INSERT INTO `bf_express_buyers` VALUES ('3', '2', '1', '3', '', '上海 上海市 闵行区 华漕镇', '香格里1单元2218室', '江民', '13982017238', '1301678383');
INSERT INTO `bf_express_buyers` VALUES ('4', '18', '1', '10', '', '上海 上海市 闵行区 华漕镇', '滨江路11号', '阿江', '13982017238', '1301987092');
INSERT INTO `bf_express_buyers` VALUES ('5', '46', '1', '54', '', '', '未央达到', '伍皓博', '13288888888', '1393592417');

-- ----------------------------
-- Table structure for `bf_express_sellers`
-- ----------------------------
DROP TABLE IF EXISTS `bf_express_sellers`;
CREATE TABLE `bf_express_sellers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL,
  `eid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `area` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `nickname` varchar(16) DEFAULT NULL,
  `mobilephone` varchar(16) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`sid`,`eid`,`uid`,`id`),
  KEY `i2` (`timestamp`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_express_sellers
-- ----------------------------
INSERT INTO `bf_express_sellers` VALUES ('11', '1', '1', '3', '', '浙江省 温州市 昌南县 灵溪镇', '滨河路11号', '阿江MG', '13982017238', '1301596241');
INSERT INTO `bf_express_sellers` VALUES ('12', '1', '2', '3', '', '浙江省 嘉兴市 桐乡市 梧桐街道', '金河路79号', '阿莎MG', '13982017238', '1301596285');
INSERT INTO `bf_express_sellers` VALUES ('13', '2', '1', '3', '', '浙江省 温州市 昌南县 灵溪镇', '火车站旁杏林小区', '降降MG', '13982017238', '1301596380');
INSERT INTO `bf_express_sellers` VALUES ('14', '7', '1', '3', '', '浙江省 温州市 昌南县 灵溪镇', '搞忘了', '阿江MG', '13982017238', '1302150787');
INSERT INTO `bf_express_sellers` VALUES ('15', '7', '2', '3', '', '浙江省 嘉兴市 桐乡市 梧桐街道', '官网帮我随便写吧', '江哥MG', '13982017238', '1302150822');

-- ----------------------------
-- Table structure for `bf_e_answer`
-- ----------------------------
DROP TABLE IF EXISTS `bf_e_answer`;
CREATE TABLE `bf_e_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `eid` int(10) unsigned NOT NULL,
  `answer` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_e_answer
-- ----------------------------
INSERT INTO `bf_e_answer` VALUES ('38', '3', '18', '0', '1', '1300949128');
INSERT INTO `bf_e_answer` VALUES ('37', '3', '19', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('36', '3', '16', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('35', '3', '14', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('34', '3', '12', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('33', '3', '9', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('32', '3', '7', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('31', '3', '5', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('30', '3', '2', '0', '1', '1300949116');
INSERT INTO `bf_e_answer` VALUES ('29', '3', '11', '0', '1', '1300949094');
INSERT INTO `bf_e_answer` VALUES ('28', '3', '17', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('27', '3', '15', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('26', '3', '13', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('25', '3', '10', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('24', '3', '8', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('23', '3', '6', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('22', '3', '4', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('21', '3', '3', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('20', '3', '1', '0', '1', '1300948976');
INSERT INTO `bf_e_answer` VALUES ('39', '10', '1', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('40', '10', '3', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('41', '10', '4', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('42', '10', '6', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('43', '10', '8', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('44', '10', '10', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('45', '10', '13', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('46', '10', '15', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('47', '10', '17', '0', '1', '1302070719');
INSERT INTO `bf_e_answer` VALUES ('48', '10', '2', '0', '1', '1302070744');
INSERT INTO `bf_e_answer` VALUES ('49', '10', '5', '0', '1', '1302070744');
INSERT INTO `bf_e_answer` VALUES ('50', '10', '7', '0', '1', '1302070744');
INSERT INTO `bf_e_answer` VALUES ('51', '10', '9', '0', '1', '1302070744');
INSERT INTO `bf_e_answer` VALUES ('52', '10', '11', '0', '1', '1302070744');
INSERT INTO `bf_e_answer` VALUES ('53', '10', '12', '0', '1', '1302070744');
INSERT INTO `bf_e_answer` VALUES ('54', '10', '14', '0', '1', '1302070744');
INSERT INTO `bf_e_answer` VALUES ('55', '10', '16', '0', '1', '1302070752');
INSERT INTO `bf_e_answer` VALUES ('56', '10', '18', '0', '1', '1302070752');
INSERT INTO `bf_e_answer` VALUES ('57', '10', '19', '0', '1', '1302070752');
INSERT INTO `bf_e_answer` VALUES ('58', '27', '1', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('59', '27', '2', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('60', '27', '3', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('61', '27', '4', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('62', '27', '5', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('63', '27', '6', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('64', '27', '7', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('65', '27', '8', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('66', '27', '9', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('67', '27', '10', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('68', '27', '11', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('69', '27', '12', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('70', '27', '13', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('71', '27', '14', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('72', '27', '15', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('73', '27', '16', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('74', '27', '17', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('75', '27', '18', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('76', '27', '19', '0', '1', '1348098741');
INSERT INTO `bf_e_answer` VALUES ('77', '34', '6', '0', '1', '1348407972');
INSERT INTO `bf_e_answer` VALUES ('78', '34', '7', '0', '1', '1348407972');
INSERT INTO `bf_e_answer` VALUES ('79', '34', '14', '0', '1', '1348407972');
INSERT INTO `bf_e_answer` VALUES ('80', '34', '1', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('81', '34', '2', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('82', '34', '3', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('83', '34', '4', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('84', '34', '5', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('85', '34', '8', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('86', '34', '9', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('87', '34', '10', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('88', '34', '11', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('89', '34', '12', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('90', '34', '13', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('91', '34', '15', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('92', '34', '16', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('93', '34', '17', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('94', '34', '18', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('95', '34', '19', '0', '1', '1348408044');
INSERT INTO `bf_e_answer` VALUES ('96', '59', '19', '0', '1', '1392409104');
INSERT INTO `bf_e_answer` VALUES ('97', '59', '18', '0', '1', '1392409142');
INSERT INTO `bf_e_answer` VALUES ('98', '59', '17', '0', '1', '1392409160');
INSERT INTO `bf_e_answer` VALUES ('99', '59', '16', '0', '1', '1392409170');
INSERT INTO `bf_e_answer` VALUES ('100', '59', '15', '0', '1', '1392409175');
INSERT INTO `bf_e_answer` VALUES ('101', '59', '14', '0', '1', '1392409182');
INSERT INTO `bf_e_answer` VALUES ('102', '59', '13', '0', '1', '1392409187');
INSERT INTO `bf_e_answer` VALUES ('103', '59', '12', '0', '1', '1392409197');
INSERT INTO `bf_e_answer` VALUES ('104', '59', '11', '0', '1', '1392409201');
INSERT INTO `bf_e_answer` VALUES ('105', '59', '10', '0', '1', '1392409205');
INSERT INTO `bf_e_answer` VALUES ('106', '59', '9', '0', '1', '1392409210');
INSERT INTO `bf_e_answer` VALUES ('107', '59', '8', '0', '1', '1392409219');
INSERT INTO `bf_e_answer` VALUES ('108', '59', '7', '0', '1', '1392409229');
INSERT INTO `bf_e_answer` VALUES ('109', '59', '6', '0', '1', '1392409233');
INSERT INTO `bf_e_answer` VALUES ('110', '59', '5', '0', '1', '1392409238');
INSERT INTO `bf_e_answer` VALUES ('111', '59', '4', '0', '1', '1392409243');
INSERT INTO `bf_e_answer` VALUES ('112', '59', '3', '0', '1', '1392409248');
INSERT INTO `bf_e_answer` VALUES ('113', '59', '2', '0', '1', '1392409257');
INSERT INTO `bf_e_answer` VALUES ('114', '59', '1', '0', '1', '1392409261');
INSERT INTO `bf_e_answer` VALUES ('115', '64', '19', '0', '1', '1393079752');
INSERT INTO `bf_e_answer` VALUES ('116', '64', '18', '0', '1', '1393080938');
INSERT INTO `bf_e_answer` VALUES ('117', '64', '17', '0', '1', '1393080962');
INSERT INTO `bf_e_answer` VALUES ('118', '64', '16', '0', '1', '1393080973');
INSERT INTO `bf_e_answer` VALUES ('119', '64', '15', '0', '1', '1393080990');
INSERT INTO `bf_e_answer` VALUES ('120', '64', '14', '0', '1', '1393080994');
INSERT INTO `bf_e_answer` VALUES ('121', '64', '13', '0', '1', '1393080998');
INSERT INTO `bf_e_answer` VALUES ('122', '64', '12', '0', '1', '1393081002');
INSERT INTO `bf_e_answer` VALUES ('123', '64', '11', '0', '1', '1393081007');
INSERT INTO `bf_e_answer` VALUES ('124', '64', '10', '0', '1', '1393081011');
INSERT INTO `bf_e_answer` VALUES ('125', '64', '9', '0', '1', '1393081015');
INSERT INTO `bf_e_answer` VALUES ('126', '64', '8', '0', '1', '1393081019');
INSERT INTO `bf_e_answer` VALUES ('127', '64', '7', '0', '1', '1393081026');
INSERT INTO `bf_e_answer` VALUES ('128', '64', '6', '0', '1', '1393081030');
INSERT INTO `bf_e_answer` VALUES ('129', '64', '5', '0', '1', '1393081034');
INSERT INTO `bf_e_answer` VALUES ('130', '64', '4', '0', '1', '1393081042');
INSERT INTO `bf_e_answer` VALUES ('131', '64', '3', '0', '1', '1393081050');
INSERT INTO `bf_e_answer` VALUES ('132', '64', '2', '0', '1', '1393081054');
INSERT INTO `bf_e_answer` VALUES ('133', '64', '1', '0', '1', '1393081063');
INSERT INTO `bf_e_answer` VALUES ('134', '74', '19', '0', '1', '1393315379');
INSERT INTO `bf_e_answer` VALUES ('135', '74', '18', '0', '1', '1393315389');
INSERT INTO `bf_e_answer` VALUES ('136', '74', '17', '0', '1', '1393315403');
INSERT INTO `bf_e_answer` VALUES ('137', '74', '16', '0', '1', '1393315449');
INSERT INTO `bf_e_answer` VALUES ('138', '74', '15', '0', '1', '1393315473');
INSERT INTO `bf_e_answer` VALUES ('139', '74', '14', '0', '1', '1393315499');
INSERT INTO `bf_e_answer` VALUES ('140', '74', '13', '0', '1', '1393315512');
INSERT INTO `bf_e_answer` VALUES ('141', '74', '12', '0', '1', '1393315548');
INSERT INTO `bf_e_answer` VALUES ('142', '74', '11', '0', '1', '1393315565');
INSERT INTO `bf_e_answer` VALUES ('143', '74', '10', '0', '1', '1393315570');
INSERT INTO `bf_e_answer` VALUES ('144', '74', '9', '0', '1', '1393315586');
INSERT INTO `bf_e_answer` VALUES ('145', '74', '8', '0', '1', '1393315654');
INSERT INTO `bf_e_answer` VALUES ('146', '74', '7', '0', '1', '1393315721');
INSERT INTO `bf_e_answer` VALUES ('147', '74', '6', '0', '1', '1393315759');
INSERT INTO `bf_e_answer` VALUES ('148', '74', '5', '0', '1', '1393315811');
INSERT INTO `bf_e_answer` VALUES ('149', '74', '4', '0', '1', '1393315817');
INSERT INTO `bf_e_answer` VALUES ('150', '74', '3', '0', '1', '1393315825');
INSERT INTO `bf_e_answer` VALUES ('151', '74', '2', '0', '1', '1393315871');
INSERT INTO `bf_e_answer` VALUES ('152', '74', '1', '0', '1', '1393315875');
INSERT INTO `bf_e_answer` VALUES ('153', '75', '19', '0', '1', '1393317632');
INSERT INTO `bf_e_answer` VALUES ('154', '75', '18', '0', '1', '1393317702');
INSERT INTO `bf_e_answer` VALUES ('155', '75', '17', '0', '1', '1393317744');
INSERT INTO `bf_e_answer` VALUES ('156', '75', '16', '0', '1', '1393317769');
INSERT INTO `bf_e_answer` VALUES ('157', '75', '15', '0', '1', '1393317817');
INSERT INTO `bf_e_answer` VALUES ('158', '75', '14', '0', '1', '1393317846');
INSERT INTO `bf_e_answer` VALUES ('159', '75', '13', '0', '1', '1393317908');
INSERT INTO `bf_e_answer` VALUES ('160', '75', '12', '0', '1', '1393317971');
INSERT INTO `bf_e_answer` VALUES ('161', '75', '11', '0', '1', '1393318026');
INSERT INTO `bf_e_answer` VALUES ('162', '75', '10', '0', '1', '1393318037');
INSERT INTO `bf_e_answer` VALUES ('163', '75', '9', '0', '1', '1393318051');
INSERT INTO `bf_e_answer` VALUES ('164', '75', '8', '0', '1', '1393318064');
INSERT INTO `bf_e_answer` VALUES ('165', '75', '7', '0', '1', '1393318069');
INSERT INTO `bf_e_answer` VALUES ('166', '75', '6', '0', '1', '1393318075');
INSERT INTO `bf_e_answer` VALUES ('167', '75', '5', '0', '1', '1393318082');
INSERT INTO `bf_e_answer` VALUES ('168', '75', '4', '0', '1', '1393318088');
INSERT INTO `bf_e_answer` VALUES ('169', '75', '3', '0', '1', '1393318099');
INSERT INTO `bf_e_answer` VALUES ('170', '75', '2', '0', '1', '1393318107');
INSERT INTO `bf_e_answer` VALUES ('171', '75', '1', '0', '1', '1393318113');
INSERT INTO `bf_e_answer` VALUES ('172', '40', '19', '0', '1', '1393326785');
INSERT INTO `bf_e_answer` VALUES ('173', '40', '18', '0', '1', '1393326793');
INSERT INTO `bf_e_answer` VALUES ('174', '40', '17', '0', '1', '1393326801');
INSERT INTO `bf_e_answer` VALUES ('175', '40', '16', '0', '1', '1393326807');
INSERT INTO `bf_e_answer` VALUES ('176', '40', '15', '0', '1', '1393326813');
INSERT INTO `bf_e_answer` VALUES ('177', '40', '14', '0', '1', '1393326819');
INSERT INTO `bf_e_answer` VALUES ('178', '40', '13', '0', '1', '1393326827');
INSERT INTO `bf_e_answer` VALUES ('179', '40', '12', '0', '1', '1393326838');
INSERT INTO `bf_e_answer` VALUES ('180', '40', '11', '0', '1', '1393326845');
INSERT INTO `bf_e_answer` VALUES ('181', '40', '10', '0', '1', '1393326851');
INSERT INTO `bf_e_answer` VALUES ('182', '40', '9', '0', '1', '1393326856');
INSERT INTO `bf_e_answer` VALUES ('183', '40', '8', '0', '1', '1393326862');
INSERT INTO `bf_e_answer` VALUES ('184', '40', '7', '0', '1', '1393326868');
INSERT INTO `bf_e_answer` VALUES ('185', '40', '6', '0', '1', '1393326879');
INSERT INTO `bf_e_answer` VALUES ('186', '40', '5', '0', '1', '1393326884');
INSERT INTO `bf_e_answer` VALUES ('187', '40', '4', '0', '1', '1393326899');
INSERT INTO `bf_e_answer` VALUES ('188', '40', '3', '0', '1', '1393326909');
INSERT INTO `bf_e_answer` VALUES ('189', '40', '2', '0', '1', '1393326916');
INSERT INTO `bf_e_answer` VALUES ('190', '40', '1', '0', '1', '1393326923');
INSERT INTO `bf_e_answer` VALUES ('191', '69', '19', '0', '1', '1393431103');
INSERT INTO `bf_e_answer` VALUES ('192', '54', '19', '0', '1', '1393566527');
INSERT INTO `bf_e_answer` VALUES ('193', '54', '18', '0', '1', '1393566534');
INSERT INTO `bf_e_answer` VALUES ('194', '54', '17', '0', '1', '1393566539');
INSERT INTO `bf_e_answer` VALUES ('195', '54', '16', '0', '1', '1393566544');
INSERT INTO `bf_e_answer` VALUES ('196', '54', '15', '0', '1', '1393566548');
INSERT INTO `bf_e_answer` VALUES ('197', '54', '14', '0', '1', '1393566554');
INSERT INTO `bf_e_answer` VALUES ('198', '54', '13', '0', '1', '1393566559');
INSERT INTO `bf_e_answer` VALUES ('199', '54', '12', '0', '1', '1393566564');
INSERT INTO `bf_e_answer` VALUES ('200', '54', '11', '0', '1', '1393566569');
INSERT INTO `bf_e_answer` VALUES ('201', '54', '10', '0', '1', '1393566573');
INSERT INTO `bf_e_answer` VALUES ('202', '54', '9', '0', '1', '1393566577');
INSERT INTO `bf_e_answer` VALUES ('203', '54', '8', '0', '1', '1393566581');
INSERT INTO `bf_e_answer` VALUES ('204', '54', '7', '0', '1', '1393566586');
INSERT INTO `bf_e_answer` VALUES ('205', '54', '6', '0', '1', '1393566590');
INSERT INTO `bf_e_answer` VALUES ('206', '54', '5', '0', '1', '1393566595');
INSERT INTO `bf_e_answer` VALUES ('207', '54', '4', '0', '1', '1393566599');
INSERT INTO `bf_e_answer` VALUES ('208', '54', '3', '0', '1', '1393566606');
INSERT INTO `bf_e_answer` VALUES ('209', '54', '2', '0', '1', '1393566610');
INSERT INTO `bf_e_answer` VALUES ('210', '54', '1', '0', '1', '1393566615');
INSERT INTO `bf_e_answer` VALUES ('211', '83', '19', '0', '1', '1393759351');
INSERT INTO `bf_e_answer` VALUES ('212', '83', '18', '0', '1', '1393759360');
INSERT INTO `bf_e_answer` VALUES ('213', '83', '17', '0', '1', '1393759374');
INSERT INTO `bf_e_answer` VALUES ('214', '83', '16', '0', '1', '1393759381');
INSERT INTO `bf_e_answer` VALUES ('215', '83', '15', '0', '1', '1393759386');
INSERT INTO `bf_e_answer` VALUES ('216', '83', '14', '0', '1', '1393759390');
INSERT INTO `bf_e_answer` VALUES ('217', '83', '13', '0', '1', '1393759397');
INSERT INTO `bf_e_answer` VALUES ('218', '83', '12', '0', '1', '1393759403');
INSERT INTO `bf_e_answer` VALUES ('219', '83', '11', '0', '1', '1393759409');
INSERT INTO `bf_e_answer` VALUES ('220', '83', '10', '0', '1', '1393759416');
INSERT INTO `bf_e_answer` VALUES ('221', '83', '9', '0', '1', '1393759423');
INSERT INTO `bf_e_answer` VALUES ('222', '83', '8', '0', '1', '1393759428');
INSERT INTO `bf_e_answer` VALUES ('223', '83', '7', '0', '1', '1393759436');
INSERT INTO `bf_e_answer` VALUES ('224', '83', '6', '0', '1', '1393759457');
INSERT INTO `bf_e_answer` VALUES ('225', '83', '5', '0', '1', '1393759463');
INSERT INTO `bf_e_answer` VALUES ('226', '83', '4', '0', '1', '1393759483');
INSERT INTO `bf_e_answer` VALUES ('227', '83', '3', '0', '1', '1393759639');
INSERT INTO `bf_e_answer` VALUES ('228', '83', '2', '0', '1', '1393759649');
INSERT INTO `bf_e_answer` VALUES ('229', '83', '1', '0', '1', '1393759663');
INSERT INTO `bf_e_answer` VALUES ('230', '84', '19', '0', '1', '1393771801');
INSERT INTO `bf_e_answer` VALUES ('231', '88', '19', '0', '1', '1393945584');
INSERT INTO `bf_e_answer` VALUES ('232', '87', '19', '0', '1', '1393945773');
INSERT INTO `bf_e_answer` VALUES ('233', '79', '19', '0', '1', '1394309725');
INSERT INTO `bf_e_answer` VALUES ('234', '79', '18', '0', '1', '1394309727');
INSERT INTO `bf_e_answer` VALUES ('235', '79', '17', '0', '1', '1394309733');
INSERT INTO `bf_e_answer` VALUES ('236', '79', '16', '0', '1', '1394309737');
INSERT INTO `bf_e_answer` VALUES ('237', '79', '15', '0', '1', '1394309741');
INSERT INTO `bf_e_answer` VALUES ('238', '79', '14', '0', '1', '1394309744');
INSERT INTO `bf_e_answer` VALUES ('239', '79', '13', '0', '1', '1394309748');
INSERT INTO `bf_e_answer` VALUES ('240', '79', '12', '0', '1', '1394309751');
INSERT INTO `bf_e_answer` VALUES ('241', '79', '11', '0', '1', '1394309759');
INSERT INTO `bf_e_answer` VALUES ('242', '79', '10', '0', '1', '1394309762');
INSERT INTO `bf_e_answer` VALUES ('243', '79', '9', '0', '1', '1394309765');
INSERT INTO `bf_e_answer` VALUES ('244', '79', '8', '0', '1', '1394309769');
INSERT INTO `bf_e_answer` VALUES ('245', '79', '7', '0', '1', '1394309772');
INSERT INTO `bf_e_answer` VALUES ('246', '79', '6', '0', '1', '1394309775');
INSERT INTO `bf_e_answer` VALUES ('247', '79', '5', '0', '1', '1394309778');
INSERT INTO `bf_e_answer` VALUES ('248', '79', '4', '0', '1', '1394309781');
INSERT INTO `bf_e_answer` VALUES ('249', '79', '3', '0', '1', '1394309784');
INSERT INTO `bf_e_answer` VALUES ('250', '79', '2', '0', '1', '1394309787');
INSERT INTO `bf_e_answer` VALUES ('251', '79', '1', '0', '1', '1394309789');
INSERT INTO `bf_e_answer` VALUES ('252', '98', '19', '0', '1', '1394706377');
INSERT INTO `bf_e_answer` VALUES ('253', '102', '19', '0', '1', '1395035608');
INSERT INTO `bf_e_answer` VALUES ('254', '102', '18', '0', '1', '1395035614');
INSERT INTO `bf_e_answer` VALUES ('255', '91', '19', '0', '1', '1395135681');
INSERT INTO `bf_e_answer` VALUES ('256', '91', '18', '0', '1', '1395135696');
INSERT INTO `bf_e_answer` VALUES ('257', '91', '17', '0', '1', '1395135705');
INSERT INTO `bf_e_answer` VALUES ('258', '91', '16', '0', '1', '1395135715');
INSERT INTO `bf_e_answer` VALUES ('259', '91', '15', '0', '1', '1395135719');
INSERT INTO `bf_e_answer` VALUES ('260', '91', '14', '0', '1', '1395135723');
INSERT INTO `bf_e_answer` VALUES ('261', '91', '13', '0', '1', '1395135728');
INSERT INTO `bf_e_answer` VALUES ('262', '91', '12', '0', '1', '1395135741');
INSERT INTO `bf_e_answer` VALUES ('263', '91', '11', '0', '1', '1395135748');
INSERT INTO `bf_e_answer` VALUES ('264', '90', '19', '0', '1', '1395286843');
INSERT INTO `bf_e_answer` VALUES ('265', '90', '18', '0', '1', '1395286848');
INSERT INTO `bf_e_answer` VALUES ('266', '90', '17', '0', '1', '1395286853');
INSERT INTO `bf_e_answer` VALUES ('267', '90', '16', '0', '1', '1395286857');
INSERT INTO `bf_e_answer` VALUES ('268', '90', '15', '0', '1', '1395286863');
INSERT INTO `bf_e_answer` VALUES ('269', '90', '14', '0', '1', '1395286868');
INSERT INTO `bf_e_answer` VALUES ('270', '90', '13', '0', '1', '1395286876');
INSERT INTO `bf_e_answer` VALUES ('271', '90', '12', '0', '1', '1395286888');
INSERT INTO `bf_e_answer` VALUES ('272', '90', '11', '0', '1', '1395286893');
INSERT INTO `bf_e_answer` VALUES ('273', '90', '10', '0', '1', '1395286897');
INSERT INTO `bf_e_answer` VALUES ('274', '90', '9', '0', '1', '1395286901');
INSERT INTO `bf_e_answer` VALUES ('275', '90', '8', '0', '1', '1395286905');
INSERT INTO `bf_e_answer` VALUES ('276', '90', '7', '0', '1', '1395286910');
INSERT INTO `bf_e_answer` VALUES ('277', '90', '6', '0', '1', '1395286916');
INSERT INTO `bf_e_answer` VALUES ('278', '90', '5', '0', '1', '1395286922');
INSERT INTO `bf_e_answer` VALUES ('279', '90', '4', '0', '1', '1395286926');
INSERT INTO `bf_e_answer` VALUES ('280', '90', '3', '0', '1', '1395286929');
INSERT INTO `bf_e_answer` VALUES ('281', '90', '2', '0', '1', '1395286935');
INSERT INTO `bf_e_answer` VALUES ('282', '90', '1', '0', '1', '1395286938');
INSERT INTO `bf_e_answer` VALUES ('283', '107', '19', '0', '1', '1395983077');
INSERT INTO `bf_e_answer` VALUES ('284', '108', '19', '0', '1', '1396053134');
INSERT INTO `bf_e_answer` VALUES ('285', '108', '18', '0', '1', '1396053138');
INSERT INTO `bf_e_answer` VALUES ('286', '108', '17', '0', '1', '1396053143');
INSERT INTO `bf_e_answer` VALUES ('287', '108', '16', '0', '1', '1396053149');
INSERT INTO `bf_e_answer` VALUES ('288', '108', '15', '0', '1', '1396053154');
INSERT INTO `bf_e_answer` VALUES ('289', '108', '14', '0', '1', '1396053159');
INSERT INTO `bf_e_answer` VALUES ('290', '108', '13', '0', '1', '1396053164');
INSERT INTO `bf_e_answer` VALUES ('291', '108', '12', '0', '1', '1396053170');
INSERT INTO `bf_e_answer` VALUES ('292', '108', '11', '0', '1', '1396053175');
INSERT INTO `bf_e_answer` VALUES ('293', '108', '10', '0', '1', '1396053181');
INSERT INTO `bf_e_answer` VALUES ('294', '108', '9', '0', '1', '1396053186');
INSERT INTO `bf_e_answer` VALUES ('295', '108', '8', '0', '1', '1396053190');
INSERT INTO `bf_e_answer` VALUES ('296', '108', '7', '0', '1', '1396053195');
INSERT INTO `bf_e_answer` VALUES ('297', '108', '6', '0', '1', '1396053199');
INSERT INTO `bf_e_answer` VALUES ('298', '108', '5', '0', '1', '1396053209');
INSERT INTO `bf_e_answer` VALUES ('299', '108', '4', '0', '1', '1396053214');
INSERT INTO `bf_e_answer` VALUES ('300', '108', '3', '0', '1', '1396053219');
INSERT INTO `bf_e_answer` VALUES ('301', '108', '2', '0', '1', '1396053225');
INSERT INTO `bf_e_answer` VALUES ('302', '108', '1', '0', '1', '1396053230');
INSERT INTO `bf_e_answer` VALUES ('303', '62', '19', '0', '1', '1396147596');
INSERT INTO `bf_e_answer` VALUES ('304', '62', '18', '0', '1', '1396147602');
INSERT INTO `bf_e_answer` VALUES ('305', '62', '17', '0', '1', '1396147627');
INSERT INTO `bf_e_answer` VALUES ('306', '62', '16', '0', '1', '1396147644');
INSERT INTO `bf_e_answer` VALUES ('307', '62', '15', '0', '1', '1396147799');
INSERT INTO `bf_e_answer` VALUES ('308', '62', '14', '0', '1', '1396147819');
INSERT INTO `bf_e_answer` VALUES ('309', '62', '13', '0', '1', '1396147846');
INSERT INTO `bf_e_answer` VALUES ('310', '62', '12', '0', '1', '1396147857');
INSERT INTO `bf_e_answer` VALUES ('311', '62', '11', '0', '1', '1396147863');
INSERT INTO `bf_e_answer` VALUES ('312', '62', '10', '0', '1', '1396147884');
INSERT INTO `bf_e_answer` VALUES ('313', '62', '9', '0', '1', '1396147907');
INSERT INTO `bf_e_answer` VALUES ('314', '62', '8', '0', '1', '1396147915');
INSERT INTO `bf_e_answer` VALUES ('315', '62', '7', '0', '1', '1396147920');
INSERT INTO `bf_e_answer` VALUES ('316', '62', '6', '0', '1', '1396147926');
INSERT INTO `bf_e_answer` VALUES ('317', '62', '5', '0', '1', '1396147931');
INSERT INTO `bf_e_answer` VALUES ('318', '62', '4', '0', '1', '1396147937');
INSERT INTO `bf_e_answer` VALUES ('319', '62', '3', '0', '1', '1396147942');
INSERT INTO `bf_e_answer` VALUES ('320', '62', '2', '0', '1', '1396147948');
INSERT INTO `bf_e_answer` VALUES ('321', '62', '1', '0', '1', '1396147959');
INSERT INTO `bf_e_answer` VALUES ('322', '117', '19', '0', '1', '1401802650');
INSERT INTO `bf_e_answer` VALUES ('323', '121', '19', '0', '1', '1401849778');
INSERT INTO `bf_e_answer` VALUES ('324', '121', '18', '0', '1', '1401849788');
INSERT INTO `bf_e_answer` VALUES ('325', '121', '17', '0', '1', '1401849794');
INSERT INTO `bf_e_answer` VALUES ('326', '121', '16', '0', '1', '1401849797');
INSERT INTO `bf_e_answer` VALUES ('327', '121', '15', '0', '1', '1401849804');
INSERT INTO `bf_e_answer` VALUES ('328', '121', '14', '0', '1', '1401849815');
INSERT INTO `bf_e_answer` VALUES ('329', '122', '5', '0', '1', '1402055448');
INSERT INTO `bf_e_answer` VALUES ('330', '122', '4', '0', '1', '1402055452');
INSERT INTO `bf_e_answer` VALUES ('331', '122', '3', '0', '1', '1402055456');
INSERT INTO `bf_e_answer` VALUES ('332', '122', '2', '0', '1', '1402055460');
INSERT INTO `bf_e_answer` VALUES ('333', '122', '1', '0', '1', '1402055463');
INSERT INTO `bf_e_answer` VALUES ('334', '126', '5', '0', '1', '1402058278');
INSERT INTO `bf_e_answer` VALUES ('335', '126', '4', '0', '1', '1402058282');
INSERT INTO `bf_e_answer` VALUES ('336', '126', '3', '0', '1', '1402058288');
INSERT INTO `bf_e_answer` VALUES ('337', '126', '2', '0', '1', '1402058291');
INSERT INTO `bf_e_answer` VALUES ('338', '126', '1', '0', '1', '1402058322');
INSERT INTO `bf_e_answer` VALUES ('339', '42', '5', '0', '1', '1402152310');
INSERT INTO `bf_e_answer` VALUES ('340', '42', '4', '0', '1', '1402152313');
INSERT INTO `bf_e_answer` VALUES ('341', '42', '3', '0', '1', '1402152316');
INSERT INTO `bf_e_answer` VALUES ('342', '42', '2', '0', '1', '1402152320');
INSERT INTO `bf_e_answer` VALUES ('343', '42', '1', '0', '1', '1402152323');
INSERT INTO `bf_e_answer` VALUES ('344', '141', '5', '0', '1', '1402575663');
INSERT INTO `bf_e_answer` VALUES ('345', '141', '4', '0', '1', '1402575681');
INSERT INTO `bf_e_answer` VALUES ('346', '141', '3', '0', '1', '1402575688');
INSERT INTO `bf_e_answer` VALUES ('347', '141', '2', '0', '1', '1402575691');
INSERT INTO `bf_e_answer` VALUES ('348', '141', '1', '0', '1', '1402575698');
INSERT INTO `bf_e_answer` VALUES ('349', '5', '5', '0', '1', '1404934555');
INSERT INTO `bf_e_answer` VALUES ('350', '5', '4', '0', '1', '1404934558');
INSERT INTO `bf_e_answer` VALUES ('351', '5', '3', '0', '1', '1404934561');
INSERT INTO `bf_e_answer` VALUES ('352', '5', '2', '0', '1', '1404934567');
INSERT INTO `bf_e_answer` VALUES ('353', '5', '1', '0', '1', '1404934569');

-- ----------------------------
-- Table structure for `bf_e_question`
-- ----------------------------
DROP TABLE IF EXISTS `bf_e_question`;
CREATE TABLE `bf_e_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `answer` int(10) unsigned NOT NULL,
  `multi` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_e_question
-- ----------------------------
INSERT INTO `bf_e_question` VALUES ('1', '1', '美乐专业平台是怎么提升会员网店信誉的？D', '8', '0', '1348098496');
INSERT INTO `bf_e_question` VALUES ('2', '2', '下面关于美乐上接发任务的描述哪个是不正确的C', '4', '0', '1348098506');
INSERT INTO `bf_e_question` VALUES ('3', '3', '下面关于兔粮的描述那个正确f', '32', '0', '1348098516');
INSERT INTO `bf_e_question` VALUES ('4', '4', '下面关于美乐积分的描述哪个是不正确的f', '32', '0', '1348098525');
INSERT INTO `bf_e_question` VALUES ('5', '5', '下面哪项不属于九大平台禁忌a', '1', '0', '1348098535');

-- ----------------------------
-- Table structure for `bf_e_select`
-- ----------------------------
DROP TABLE IF EXISTS `bf_e_select`;
CREATE TABLE `bf_e_select` (
  `eid` int(10) unsigned NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_e_select
-- ----------------------------
INSERT INTO `bf_e_select` VALUES ('1', '2', '接手任务后，您要通过网店购买对方的任务商品并付款，任务完成后，您帮对方刷1个信誉，并获得兔粮奖励和购买商品花费等值的保证金');
INSERT INTO `bf_e_select` VALUES ('1', '1', '发布任务需要平台扣押商品+运费等值的保证金，任务接手人购买您的商品，给您支付宝付款，您获得1个好评信誉，同时您的任务保证金会自动转到接手人平台账户');
INSERT INTO `bf_e_select` VALUES ('2', '4', '在拍下商品后，一定要仔细检查淘宝上所需支付的货款总额（商品售价+运费）是否与平台上任务担保价相等，如果不等要先联系发布人改价，然后再支付。');
INSERT INTO `bf_e_select` VALUES ('2', '3', '接手任务就是指你去互动区中接手其他会员发布的任务，然后去淘宝上购买任务中标明的商品；交易结束，提交好评后，您的美乐账户内就可以得到和你支付宝支付的商品货款等额的平台存款，同时获得相应的兔粮奖励；兔粮可用于自己发任务或者兑换成现金；');
INSERT INTO `bf_e_select` VALUES ('2', '1', '发布任务时平台需要冻结你美乐账户内的任务保证金（保证金金额=商品标价+快递运费），和相应的【兔粮】；在任务结束后发放给接手人；');
INSERT INTO `bf_e_select` VALUES ('2', '2', '美乐上接手任务后，只要接手人在发布人店铺里拍下和任务金额相等的任意商品提交好评，即可完成任务；');
INSERT INTO `bf_e_select` VALUES ('2', '0', '发布任务就是把你的网店（淘宝）中一个商品发布到互动区中，让别人来接手任务，然后来你的网店（淘宝）中购买这个商品，交易结束后你的就获得一个好评，信誉就长了一个值；');
INSERT INTO `bf_e_select` VALUES ('3', '3', '去互动区接手任务，完成任务后即可赚取兔粮，或者直接使用存款在点卡中心购买');
INSERT INTO `bf_e_select` VALUES ('3', '2', '平台的任务奖励计算单位，能够用于发布任务，提高信誉');
INSERT INTO `bf_e_select` VALUES ('3', '1', '代表平台存款，兔粮可用于平台现金交易和充当任务押金');
INSERT INTO `bf_e_select` VALUES ('4', '3', '刚来平台可以通过接发任务，论坛学习和发帖回帖，大额充值等操作来快速提高积分');
INSERT INTO `bf_e_select` VALUES ('4', '2', '平台积分越高代表用户绑定的网店信誉级别越高');
INSERT INTO `bf_e_select` VALUES ('4', '1', '最有效的提高积分的方法是去美乐论坛灌水');
INSERT INTO `bf_e_select` VALUES ('5', '3', '通过旺旺联系任务对方，沟通任务进展');
INSERT INTO `bf_e_select` VALUES ('5', '2', '发了任务到我发货时，为了能让接手人晚点收货，使整个交易时间延长点，我平台上晚几个小时再发货');
INSERT INTO `bf_e_select` VALUES ('5', '1', '看发布人不爽，接手他任务后给他淘宝上来个中评或者店铺评分一分');
INSERT INTO `bf_e_select` VALUES ('6', '2', '为了让我的店更正规，我开通了信用卡支付，加入了消保还开通了淘客推广');
INSERT INTO `bf_e_select` VALUES ('6', '1', '我接手了一个任务，绑定买号后，就去淘宝上拍下商品付款了；可是过了一阵（15分钟）我才发现我忘记回平台同步更新平台任务状态了，555由于超时自动退出，我的已接手任务中找不到那个任务了');
INSERT INTO `bf_e_select` VALUES ('7', '3', 'sddsl123，dsflj232dsfs，fds23dfs54');
INSERT INTO `bf_e_select` VALUES ('7', '2', '好人马克，我爱钉子户，现代大马力，李华与赵刚');
INSERT INTO `bf_e_select` VALUES ('7', '1', '大咪咪，爱上吃屎，XXX.com, 我是你爸');
INSERT INTO `bf_e_select` VALUES ('8', '3', '当用户的信用额度低于一定的值的时候会影响其在平台接发任务的权利；');
INSERT INTO `bf_e_select` VALUES ('8', '2', '每完成一个任务后，可以到【已接任务】/【已发任务】页面中给任务对方在本次任务中的表现打分，该分数直接影响对方的平台信用额度；');
INSERT INTO `bf_e_select` VALUES ('8', '1', '在【联盟中心】--【个人信用中心】可以看到自己的账号的当前信用额度');
INSERT INTO `bf_e_select` VALUES ('9', '3', '不管是什么时限的任务，我越晚收货，发布人越开心。');
INSERT INTO `bf_e_select` VALUES ('9', '2', '接手方没有到时就提前在网店收货好评的，一经发布人申诉将会返还所有任务奖励兔粮给发布人；');
INSERT INTO `bf_e_select` VALUES ('9', '1', '时限要求计算从任务发布人平台发货开始算起，在间隔时间满足任务要求后才可以到网店与平台收货好评');
INSERT INTO `bf_e_select` VALUES ('10', '3', '不要设置与用户名一致的密码或者与qq账号一致的密码；');
INSERT INTO `bf_e_select` VALUES ('10', '2', '给账户设置尽可能复杂的密码与安全问题，不将手机验证码随意透漏给第三者；');
INSERT INTO `bf_e_select` VALUES ('10', '1', '不随意透漏账号密码给别人，不使用诸如123456，123abc，000000，888888等黑客必试密码；');
INSERT INTO `bf_e_select` VALUES ('11', '4', '申诉发起后如果双方不能自行协商解决，申诉专员将会在申诉发起36小时后介入处理；');
INSERT INTO `bf_e_select` VALUES ('11', '3', '在提交申诉内容时，应该尽量详细描述情况，同时提供淘宝截图，聊天记录截图等作为有力证据；');
INSERT INTO `bf_e_select` VALUES ('11', '2', '收到申诉后，我可以改正申诉中自己的失误，然后申请申诉发起人撤销申诉');
INSERT INTO `bf_e_select` VALUES ('11', '1', '收到申诉后，我发现自己根本没有其描述的问题，他竟敢诬陷我，哼我这就去淘宝投诉他刷钻，让他吃不了兜着走！');
INSERT INTO `bf_e_select` VALUES ('12', '4', '美乐在工作日每天 10:00、15:00、21:00 处理三次提现，每次提现处理该时间点前提交的申请');
INSERT INTO `bf_e_select` VALUES ('12', '3', '美乐的提现支持淘宝商品地址（下限500元），支付宝（下限200元） 两种提现方式；小于200元的提现可以通过在互动区发任务实时提现；');
INSERT INTO `bf_e_select` VALUES ('12', '2', '在任何时间都可以通过网银在线充值实现全自助免手续费充值；');
INSERT INTO `bf_e_select` VALUES ('12', '1', '美乐支持淘宝卡密充值，支付宝转账充值，财付通转账，网银在线充值，四种充值方式；而且都是免手续费的；');
INSERT INTO `bf_e_select` VALUES ('12', '0', '美乐对提现用户积分没有任何限制，0积分的用户也可以申请提现；');
INSERT INTO `bf_e_select` VALUES ('13', '3', '选择淘宝在线联网的快递公司，然后自己编写一个单号或者使用他人用过的单号发货；');
INSERT INTO `bf_e_select` VALUES ('13', '2', '发货时选择其他物流，然后自己编写一个物流公司名字，或者选择一个没有与淘宝联网的小型快递公司，按照一定规则自己编写一个快递单号；');
INSERT INTO `bf_e_select` VALUES ('13', '1', '选择无需物流');
INSERT INTO `bf_e_select` VALUES ('14', '5', '商品价格高了多浪费兔粮啊，我先吧价格全改成十几块的再刷，以后在把商品价格全改回来；');
INSERT INTO `bf_e_select` VALUES ('14', '4', '听说卖点卡信誉升的比加快，我把店里全上点卡，以后到钻后我再换成衣服；');
INSERT INTO `bf_e_select` VALUES ('14', '3', '今天有时间多发点任务，把明后天的量都发出来，明后天休息呵呵；');
INSERT INTO `bf_e_select` VALUES ('14', '2', '以后卖什么我就刷什么，尽量不发改价任务，根据我现在的店铺信誉和实际流量稳定的慢慢增长每天发任务的数量，时不时的穿插一些来路任务和实名买号任务；一步一个脚印的刷');
INSERT INTO `bf_e_select` VALUES ('14', '1', '购物车任务多方便啊，一下子就能最多有六个好评，我全发购物车任务真爽；');
INSERT INTO `bf_e_select` VALUES ('14', '0', '撑死胆大的，饿死胆小的，我就不信我这么背，刚注册的小店先一天发50个一块钱的马上好评任务；用不了一个礼拜就到钻了哦');
INSERT INTO `bf_e_select` VALUES ('15', '4', '开通淘宝直通车，根据后台的量子统计统计的进店流量，适当的按照十比一左右的比例发布任务，同时任务中尽可能多的设置来路任务，让接手人通过淘宝搜索进入我的店铺和商品而不是直接访问地址；');
INSERT INTO `bf_e_select` VALUES ('15', '3', '开通一个直通车后，我就可以猛发任务了，有了直通车+来路任务，淘宝降权根本抓不到我');
INSERT INTO `bf_e_select` VALUES ('15', '2', '为了发任务少消耗兔粮我把商品价格尽量设低点，运费还是正常收；');
INSERT INTO `bf_e_select` VALUES ('15', '1', '为了以后转行方便，我把充值卡先放在服装类目下来卖');
INSERT INTO `bf_e_select` VALUES ('15', '0', '我没有那么多商品卖，不过我想店里东西看起来多点，我把一个商品标题稍微改改就当一个新商品上架；');
INSERT INTO `bf_e_select` VALUES ('16', '2', '对方旺旺在线，直接旺旺联系');
INSERT INTO `bf_e_select` VALUES ('16', '3', '在已接任务和已发任务中找到需要联系对方的任务，点击对方名字发送站内信联系');
INSERT INTO `bf_e_select` VALUES ('16', '1', '在已接任务和已发任务中找到需要联系对方的任务，点击手机图标发短信通知');
INSERT INTO `bf_e_select` VALUES ('16', '0', '在已接任务和已发任务中找到需要联系对方的任务，点击QQ图标进行联系');
INSERT INTO `bf_e_select` VALUES ('17', '4', '非限制接手人或者审核接手人任务，留言中强制要求多长时间内未接手过自己任务的接手人才可以接手，否则任务差评拉黑等等；');
INSERT INTO `bf_e_select` VALUES ('17', '3', '非来路任务，留言或者QQ强制要求用户采用某种搜索方式进店；');
INSERT INTO `bf_e_select` VALUES ('17', '2', '非聊天任务任务留言或者QQ要求强制旺旺聊天，或者非平台规定收货地址的任务强制要求接手人按照要求修改小号收货地址');
INSERT INTO `bf_e_select` VALUES ('17', '1', '任务留言要求或者qq联系要求接手方拍任务以外的商品链接；');
INSERT INTO `bf_e_select` VALUES ('18', '3', '付款时使用自己的信用卡付款，这样又可以信用卡赚积分又不用花自己现金');
INSERT INTO `bf_e_select` VALUES ('18', '2', '拍下宝贝后，在支付宝付款时选择银行卡支付，然后使用网银直接为交易付款');
INSERT INTO `bf_e_select` VALUES ('18', '1', '拍下宝贝时选择代付，然后使用自己掌柜号支付宝为之付款');
INSERT INTO `bf_e_select` VALUES ('19', '3', '在首页点击在线客服QQ图标，加客服妹妹好友后，再QQ正式对话框咨询问题');
INSERT INTO `bf_e_select` VALUES ('19', '2', '在美乐论坛有问必答版块发帖，寻求版主和各位老鸟的帮助');
INSERT INTO `bf_e_select` VALUES ('19', '1', '在工作时间拨打美乐热线电话400678-7788');
INSERT INTO `bf_e_select` VALUES ('19', '0', '在首页直接点击在线客服QQ图标，然后在弹出的临时通话对话框中和客服妹妹咨询');
INSERT INTO `bf_e_select` VALUES ('3', '0', '代表平台用户级别，拥有的兔粮越多，用户级别就越高');
INSERT INTO `bf_e_select` VALUES ('4', '0', '用户积分级别代表该用户的经验值与做任务熟练程度；一般说来积分等级越高的用户说明其越能熟练的掌握任务操作流程');
INSERT INTO `bf_e_select` VALUES ('5', '0', '发布人发布任务没有发规定好评内容任务而只在【任务留言】中要求接手人一定要带字好评，接手方在评价时没有带字好评');
INSERT INTO `bf_e_select` VALUES ('6', '0', '平台上任务做完了，我才发现人家淘宝上根本没有拍的东西或者根本没有收货好评');
INSERT INTO `bf_e_select` VALUES ('7', '0', '买号刚注册，还没填写完整个人交易信息等基本资料');
INSERT INTO `bf_e_select` VALUES ('8', '0', '信用额度不一定是你接发任务越多就能越高,这个指标是为了让别的刷客能一眼就了解你的“刷品”；');
INSERT INTO `bf_e_select` VALUES ('9', '0', '平台的任务根据好评时限要求分为：马上好评，24小时，48小时，72小时 四种');
INSERT INTO `bf_e_select` VALUES ('10', '0', '不访问未知链接与不规范网站，不随便下载未知软件，电脑安装正版杀毒软件与防火墙，及时升级病毒库，同时定期进行查毒杀毒；');
INSERT INTO `bf_e_select` VALUES ('11', '0', '在任务过程中发现有问题或者对方违规可以直接在任务列表右侧点击【我要申诉】按钮发起任务申诉；');
INSERT INTO `bf_e_select` VALUES ('13', '0', '购买平台快递任务，然后使用快递公司提供的专用快递单号发货');
INSERT INTO `bf_e_select` VALUES ('17', '0', '留言或者QQ要求“强制收藏店铺或者该商品，否则平台拉黑，不给核实货款；”');
INSERT INTO `bf_e_select` VALUES ('18', '0', '先用银行卡或者自己掌柜号支付宝给小号支付宝内充值或者转款，然后用小号支付宝余额直接付款');
INSERT INTO `bf_e_select` VALUES ('1', '0', '通过发布任务来提升信誉，一个任务包含1个或者多个商品，完成后获得1个或者多个信誉');
INSERT INTO `bf_e_select` VALUES ('1', '3', '以上全对');
INSERT INTO `bf_e_select` VALUES ('3', '4', 'A B D 正确');
INSERT INTO `bf_e_select` VALUES ('3', '5', 'C D正确');
INSERT INTO `bf_e_select` VALUES ('4', '4', '美乐用户您的美乐平台积分直接同可同时操作任务数量挂钩');
INSERT INTO `bf_e_select` VALUES ('4', '5', '【B C】都不对');
INSERT INTO `bf_e_select` VALUES ('5', '4', '接任务时使用淘宝客链接赚取佣金或者使用信用卡支付货款。');
INSERT INTO `bf_e_select` VALUES ('5', '5', '以上全不对');
INSERT INTO `bf_e_select` VALUES ('6', '3', 'A，B，C三种情况都会有可能导致用户资金损失');
INSERT INTO `bf_e_select` VALUES ('7', '4', 'bigboy001，bigboy002，bigboy003，bigboy004');
INSERT INTO `bf_e_select` VALUES ('7', '5', '多大个事，多达个事，多太个事，多大人事');
INSERT INTO `bf_e_select` VALUES ('8', '4', '不给对方评分的任务，在一周后美乐系统会自动默认好评');
INSERT INTO `bf_e_select` VALUES ('8', '5', 'A，B，C，D，E都正确');
INSERT INTO `bf_e_select` VALUES ('9', '4', '针对非马上好评任务，在发布人发货后平台任务列表中有倒数计时显示收货时间；');
INSERT INTO `bf_e_select` VALUES ('10', '4', '定期修改自己的密码，同时牢记新的密码');
INSERT INTO `bf_e_select` VALUES ('10', '5', '以上几点都正确');
INSERT INTO `bf_e_select` VALUES ('11', '5', '申诉裁决后，我可以在【联盟中心】--【申诉中心】查看裁决结果；');
INSERT INTO `bf_e_select` VALUES ('12', '5', '提现金额限制为一般会员2000/日，信托会员3000/日，VIP会员6000/日;');
INSERT INTO `bf_e_select` VALUES ('13', '4', '选择平邮方式发货');
INSERT INTO `bf_e_select` VALUES ('13', '5', 'B，D，E都不安全');
INSERT INTO `bf_e_select` VALUES ('18', '4', 'A B C都正确');
INSERT INTO `bf_e_select` VALUES ('17', '5', '以上几种都是；');

-- ----------------------------
-- Table structure for `bf_flow_cache`
-- ----------------------------
DROP TABLE IF EXISTS `bf_flow_cache`;
CREATE TABLE `bf_flow_cache` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `ip` int(10) unsigned DEFAULT NULL,
  `total` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_flow_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_forums`
-- ----------------------------
DROP TABLE IF EXISTS `bf_forums`;
CREATE TABLE `bf_forums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `ename` varchar(32) DEFAULT NULL,
  `des` text,
  `posts` int(10) unsigned NOT NULL DEFAULT '0',
  `threads` int(10) unsigned NOT NULL DEFAULT '0',
  `today_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `today_threads` int(10) unsigned NOT NULL DEFAULT '0',
  `last_tid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_thread_title` varchar(80) DEFAULT NULL,
  `last_thread_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `last_thread_uid` int(10) unsigned NOT NULL,
  `last_thread_username` varchar(16) DEFAULT NULL,
  `last_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_username` varchar(16) DEFAULT NULL,
  `view_group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view_credits` int(10) unsigned NOT NULL DEFAULT '0',
  `post_group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `post_credits` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_forums
-- ----------------------------
INSERT INTO `bf_forums` VALUES ('1', '1', '官方公告', 'gonggao', '官方公告版块，显示美乐平台官方的重要公告，只有官方人员能发表；请广大美乐会员注意这里发布的重要信息哦；                   ', '26', '19', '0', '0', '101', '【新手入门】如何使用卡密充值，卡密充值流程详解', '1360044880', '3', '美乐管理员', '142', '1360044880', '3', '美乐管理员', '0', '0', '3', '0', '1358416632');
INSERT INTO `bf_forums` VALUES ('3', '2', '新手入门', 'novice', '新手入门版块，新加入美乐网盟用户在平台进行相关功能操作时如果遇到了疑难问题可以在这里发布求助帖，我们的斑竹和热心的老刷客们都会及时的给您提供帮助哦；发帖积分要求>50   ', '39', '38', '0', '0', '105', 'ddddddddddddddd', '1402044807', '121', 'ceshi1', '148', '1402044807', '121', 'ceshi1', '0', '0', '0', '0', '1359990811');
INSERT INTO `bf_forums` VALUES ('4', '3', '卖家教程', 'seller', '卖家教程版块，该板块主要用来发布卖家在售卖商品过程或者平台任务发布方在发布任务过程中遇到问题的解决方法教程；欢迎各新老刷客踊跃发布教程。发帖积分要求>50  ', '7', '7', '0', '0', '97', '淘宝最牛骂人掌柜以骂人作为最佳推广方式', '1359899461', '52', '美乐客服部', '137', '1359899461', '52', '美乐客服部', '0', '0', '0', '0', '1299644143');
INSERT INTO `bf_forums` VALUES ('5', '4', '买家教程', 'buyer', '买家教程版块，该板块主要用来发布买家在购买商品过程或者平台任务接手方在接手任务过程中遇到问题的解决方法教程；欢迎各新老刷客踊跃发布教程。发帖积分要求>50 ', '8', '8', '0', '0', '73', '【买家教程】如何在美乐设置买号的收货地址', '1360047603', '3', '美乐管理员', '108', '1360047603', '3', '美乐管理员', '0', '0', '0', '0', '1299644157');
INSERT INTO `bf_forums` VALUES ('6', '5', '刷信誉技巧', 'skill', '淘宝刷信誉技巧版块，该板块主要用来发布一些刷客在接发任务过程中的高级技巧；欢迎广大高手们在此发布您的任务操作技巧； 发帖积分要求>50 ', '11', '9', '0', '0', '103', '【重要】淘宝客出没，请发布方谨慎核实货款以免被骗！', '1360048433', '3', '美乐管理员', '145', '1392053339', '55', 'Q906818', '0', '0', '0', '0', '1299644205');
INSERT INTO `bf_forums` VALUES ('7', '6', '有问必答', 'question', '有问必答版块，该板块主要供刚注册的超新手刷客们咨询问题所设；欢迎新来平台的朋友们咨询所有相关问题哦；我们的版主妹妹与各位老刷客一定为热情的回答您的问题； 发帖积分要求>0 ', '3', '1', '0', '0', '83', '我发布的任务，有时候会卡住是什么原因啊', '1358512081', '39', 'windows', '146', '1393500432', '59', 'l215250260', '0', '0', '0', '0', '1299644258');
INSERT INTO `bf_forums` VALUES ('8', '7', '投诉建议', 'sfc', '投诉建议版块，该板块供新老刷客们给平台提建议和意见，这里不针对某任务的申诉而是对平台本身的功能改善建议和问题投诉；一旦建议被接受将获得丰厚积分奖励哦。发帖积分要求>50 ', '1', '1', '0', '0', '66', '被人淘宝 投诉了 速度帮我冻结对方', '1360049012', '3', '美乐管理员', '101', '1360049012', '3', '美乐管理员', '0', '0', '0', '0', '1299644355');
INSERT INTO `bf_forums` VALUES ('9', '8', '灌水乐园', '', '本版发帖、回复不得积分，精华帖子版主可以加分；本版不允许发布有关政策敏感的话题，违者扣分加删帖，严重者论坛禁言', '9', '8', '0', '0', '95', '淘宝分销商好做吗?分销商如何保护自身利益！', '1359898143', '39', 'windows', '135', '1359898577', '51', '懒懒的温暖', '0', '0', '0', '0', '1299497092');

-- ----------------------------
-- Table structure for `bf_from`
-- ----------------------------
DROP TABLE IF EXISTS `bf_from`;
CREATE TABLE `bf_from` (
  `fid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_from
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_from_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_from_cate`;
CREATE TABLE `bf_from_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `input` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inputName` varchar(32) DEFAULT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_from_cate
-- ----------------------------
INSERT INTO `bf_from_cate` VALUES ('1', '1', 'Google', '0', '', '3');
INSERT INTO `bf_from_cate` VALUES ('2', '2', '百度搜索', '0', '', '2');
INSERT INTO `bf_from_cate` VALUES ('3', '3', '百度贴吧', '0', '', '1');
INSERT INTO `bf_from_cate` VALUES ('4', '4', '其它论坛', '1', '请输入论坛名称', '1');
INSERT INTO `bf_from_cate` VALUES ('5', '5', '旺旺宣传', '0', '', '0');
INSERT INTO `bf_from_cate` VALUES ('6', '6', '朋友介绍', '0', '', '1');
INSERT INTO `bf_from_cate` VALUES ('7', '7', '平台邀请', '0', '', '0');

-- ----------------------------
-- Table structure for `bf_groups`
-- ----------------------------
DROP TABLE IF EXISTS `bf_groups`;
CREATE TABLE `bf_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `key` varchar(32) DEFAULT NULL,
  `users` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_help`
-- ----------------------------
DROP TABLE IF EXISTS `bf_help`;
CREATE TABLE `bf_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(32) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`cid`,`id`),
  KEY `i2` (`cid`,`sort`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_help
-- ----------------------------
INSERT INTO `bf_help` VALUES ('2', '1', '1', '如何注册新的账号，账号注册流程', '/help/jiaocheng/?cate=a', '1300817250');
INSERT INTO `bf_help` VALUES ('4', '1', '2', '如何短信激活账户，如何短信认证帐户', '/bbs/t10/', '1300817260');
INSERT INTO `bf_help` VALUES ('5', '1', '3', '什么是积分，积分何如增长', '/bbs/t11/', '1300817339');
INSERT INTO `bf_help` VALUES ('6', '1', '4', '用户积分与用户权限的对应关系', '/bbs/t12/', '1300817397');
INSERT INTO `bf_help` VALUES ('7', '1', '5', '如何快速的增长积分', '/bbs/t13/', '1300817443');
INSERT INTO `bf_help` VALUES ('8', '1', '6', '充值送积分', '/bbs/t14/', '1300817479');
INSERT INTO `bf_help` VALUES ('9', '1', '7', '什么是平台信用额度（刷客满意度）', '/bbs/t15/', '1300817520');
INSERT INTO `bf_help` VALUES ('10', '1', '8', '如何维护个人资料', '/bbs/t16/', '1300817554');
INSERT INTO `bf_help` VALUES ('11', '1', '9', '如何修改密码与操作码', '/bbs/t17/', '1300817599');
INSERT INTO `bf_help` VALUES ('12', '1', '10', '了解‘我的宝物’功能', '/bbs/t18/', '1300817632');
INSERT INTO `bf_help` VALUES ('13', '1', '11', '怎样查看我的账户基本情况', '/bbs/t19/', '1300817682');
INSERT INTO `bf_help` VALUES ('14', '1', '12', '如何申请成为教官，教官资质', '/bbs/t20/', '1300817710');
INSERT INTO `bf_help` VALUES ('15', '2', '1', '开始接手任务之前需要准备什么', '/bbs/t21/', '1300817757');
INSERT INTO `bf_help` VALUES ('16', '2', '2', '如何接手任务，接手任务步骤详解', '/help/jiaocheng/?cate=d', '1300817781');
INSERT INTO `bf_help` VALUES ('17', '2', '3', '如何查看已经接手的任务', '/bbs/t22/', '1300817811');
INSERT INTO `bf_help` VALUES ('18', '2', '4', '平台对接手任务有什么限制', '/bbs/t23/', '1300817848');
INSERT INTO `bf_help` VALUES ('19', '2', '5', '如何绑定买号', '/help/jiaocheng/?cate=c', '1300817863');
INSERT INTO `bf_help` VALUES ('20', '2', '6', '什么是买号，什么是小号', '/bbs/t24/', '1300817904');
INSERT INTO `bf_help` VALUES ('21', '2', '7', '什么是买号动态寿命值', '/bbs/t25/', '1300817945');
INSERT INTO `bf_help` VALUES ('22', '2', '8', '买号各种状态详细解读', '/bbs/t26/', '1300817977');
INSERT INTO `bf_help` VALUES ('23', '2', '9', '接手任务注意事项', '/bbs/t27/', '1300818007');
INSERT INTO `bf_help` VALUES ('24', '3', '1', '同时发布任务个数与积分对应关系', '/bbs/t28/', '1300818049');
INSERT INTO `bf_help` VALUES ('25', '3', '2', '如何发布任务，任务发布流程', '/help/jiaocheng/?cate=g', '1300818062');
INSERT INTO `bf_help` VALUES ('26', '3', '3', '任务担保价与所需基本兔粮对应关系', '/bbs/t30/', '1300818109');
INSERT INTO `bf_help` VALUES ('27', '3', '4', '任务增值服务区功能详解', '/bbs/t31/', '1300818144');
INSERT INTO `bf_help` VALUES ('28', '3', '5', '新人免费发布一元体验任务功能介绍', '/bbs/t32/', '1300818187');
INSERT INTO `bf_help` VALUES ('29', '3', '6', '如何善用发布任务模板', '/bbs/t33/', '1300818218');
INSERT INTO `bf_help` VALUES ('30', '3', '7', '任务价格与商品标价对应关系', '/bbs/t34/', '1300818249');
INSERT INTO `bf_help` VALUES ('31', '3', '8', '批量发布任务教程详解', '/bbs/t35/', '1300818339');
INSERT INTO `bf_help` VALUES ('32', '3', '9', '掌柜热卖发布教程详解', '/bbs/t36/', '1300818327');
INSERT INTO `bf_help` VALUES ('33', '3', '10', '如何绑定卖号(大号，掌柜号)', '/bbs/t37/', '1300818368');
INSERT INTO `bf_help` VALUES ('34', '4', '1', '任务过程中怎样发起申诉', '/bbs/t38/', '1300818408');
INSERT INTO `bf_help` VALUES ('35', '4', '2', '任务申诉的流程详解', '/bbs/t39/', '1300818445');
INSERT INTO `bf_help` VALUES ('36', '4', '3', '发起各类申诉需要满足的条件', '/bbs/t40/', '1300818484');
INSERT INTO `bf_help` VALUES ('37', '4', '4', '在任务不同状态时允许申诉的项目', '/bbs/t41/', '1300818537');
INSERT INTO `bf_help` VALUES ('38', '4', '5', '如何处理收到的任务申诉', '/bbs/t42/', '1300818565');
INSERT INTO `bf_help` VALUES ('39', '4', '6', '提交申诉证据时的注意事项', '/bbs/t43/', '1300818593');
INSERT INTO `bf_help` VALUES ('40', '4', '7', '如何查看申诉结果', '/bbs/t44/', '1300818626');
INSERT INTO `bf_help` VALUES ('41', '5', '1', '如何为自己的账号存款充值', '/bbs/t45/', '1300818682');
INSERT INTO `bf_help` VALUES ('42', '5', '2', '存款如何提现', '/bbs/t46/', '1300818713');
INSERT INTO `bf_help` VALUES ('43', '5', '3', '您的账户内存款有什么用处', '/bbs/t47/', '1300818736');
INSERT INTO `bf_help` VALUES ('44', '5', '4', '提现规则要求', '/bbs/t48/', '1300818783');
INSERT INTO `bf_help` VALUES ('45', '5', '5', '如何查询我的账户资产变化记录', '/bbs/t49/', '1300818811');
INSERT INTO `bf_help` VALUES ('46', '5', '6', '充值送积分活动', '/bbs/t50/', '1300818837');
INSERT INTO `bf_help` VALUES ('47', '5', '7', '如何查询我的充值记录', '/bbs/t51/', '1300818865');
INSERT INTO `bf_help` VALUES ('48', '5', '8', '如何查询我的提现记录', '/bbs/t52/', '1300818890');
INSERT INTO `bf_help` VALUES ('49', '6', '1', '怎样申请成为尊享VIP', '/bbs/t53/', '1300818938');
INSERT INTO `bf_help` VALUES ('50', '6', '2', '尊享VIP有什么特权', '/bbs/t54/', '1300819213');
INSERT INTO `bf_help` VALUES ('51', '6', '3', '怎样成为卡信托用户', '/bbs/t55/', '1300819242');
INSERT INTO `bf_help` VALUES ('52', '6', '4', '尊享VIP的收费标准', '/bbs/t56/', '1300819267');
INSERT INTO `bf_help` VALUES ('53', '6', '5', '可以在申请正式VIP之前先体验一下么', '/bbs/t57/', '1300819294');
INSERT INTO `bf_help` VALUES ('54', '6', '6', '卡信托用户的特权', '/bbs/t58/', '1300819426');
INSERT INTO `bf_help` VALUES ('55', '6', '7', '怎样识别用户是否是VIP', '/bbs/t59/', '1300819485');
INSERT INTO `bf_help` VALUES ('56', '6', '8', '怎样识别是否是卡信托用户', '/bbs/t60/', '1300819488');

-- ----------------------------
-- Table structure for `bf_help_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_help_cate`;
CREATE TABLE `bf_help_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `ico` varchar(128) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_help_cate
-- ----------------------------
INSERT INTO `bf_help_cate` VALUES ('1', '1', '/images/help/ico_1.gif', '账号相关帮助', '12');
INSERT INTO `bf_help_cate` VALUES ('2', '2', '/images/help/ico_2.gif', '接手任务帮助', '9');
INSERT INTO `bf_help_cate` VALUES ('3', '2', '/images/help/ico_3.gif', '发布任务帮助', '10');
INSERT INTO `bf_help_cate` VALUES ('4', '3', '/images/help/ico_4.gif', '任务申诉帮助', '7');
INSERT INTO `bf_help_cate` VALUES ('5', '4', '/images/help/ico_5.gif', '帐户资金帮助', '8');
INSERT INTO `bf_help_cate` VALUES ('6', '6', '/images/help/ico_6.gif', 'VIP信托帮助', '8');

-- ----------------------------
-- Table structure for `bf_kefu`
-- ----------------------------
DROP TABLE IF EXISTS `bf_kefu`;
CREATE TABLE `bf_kefu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `qq` varchar(11) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  `grade1` int(10) unsigned NOT NULL DEFAULT '0',
  `grade2` int(10) unsigned NOT NULL DEFAULT '0',
  `grade3` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`cid`,`id`),
  KEY `i2` (`cid`,`sort`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_kefu
-- ----------------------------
INSERT INTO `bf_kefu` VALUES ('1', '1', '1', '1号业务客服', '2011/03/2901.jpg', '908290411', '4', '4', '2', '2', '1300115012');
INSERT INTO `bf_kefu` VALUES ('6', '0', '2', '财务1号', '2011/03/19E1.jpg', '8733829', '2', '1', '0', '0', '1300174156');
INSERT INTO `bf_kefu` VALUES ('7', '0', '3', '申诉1号', '2011/03/1A11.jpg', '799808427', '0', '0', '0', '0', '1300174177');
INSERT INTO `bf_kefu` VALUES ('8', '0', '4', 'VIP1号', '2011/03/1A41.jpg', '1216744756', '0', '0', '0', '0', '1300174195');
INSERT INTO `bf_kefu` VALUES ('9', '0', '7', '智能客服1', '2011/03/2031.jpg', '914527864', '0', '0', '0', '0', '1300203957');

-- ----------------------------
-- Table structure for `bf_kefu_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_kefu_cate`;
CREATE TABLE `bf_kefu_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `members` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_kefu_cate
-- ----------------------------
INSERT INTO `bf_kefu_cate` VALUES ('1', '1', '业务指导', '1');
INSERT INTO `bf_kefu_cate` VALUES ('2', '2', '财务专员', '1');
INSERT INTO `bf_kefu_cate` VALUES ('3', '3', '申诉建议', '1');
INSERT INTO `bf_kefu_cate` VALUES ('4', '4', 'VIP专员', '1');
INSERT INTO `bf_kefu_cate` VALUES ('7', '5', '其它客服', '1');

-- ----------------------------
-- Table structure for `bf_kefu_review`
-- ----------------------------
DROP TABLE IF EXISTS `bf_kefu_review`;
CREATE TABLE `bf_kefu_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kid` int(10) unsigned NOT NULL,
  `kefu_nickname` varchar(32) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `hide_user` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL,
  `credit` tinyint(4) DEFAULT NULL,
  `content` text,
  `timestamp` int(10) unsigned NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`kid`,`timestamp`,`id`),
  KEY `i2` (`uid`,`timestamp`,`id`),
  KEY `i3` (`kid`,`timestamp`,`uid`),
  KEY `i4` (`kid`,`timestamp`,`credit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_kefu_review
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_kill`
-- ----------------------------
DROP TABLE IF EXISTS `bf_kill`;
CREATE TABLE `bf_kill` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bf_kill
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log`;
CREATE TABLE `bf_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(16) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `val` decimal(9,2) DEFAULT NULL,
  `fabudian` float(11,5) DEFAULT '0.00000' COMMENT '兔粮',
  `totalcredits` float(11,5) NOT NULL DEFAULT '0.00000' COMMENT '总积分数',
  `totalmoney` float(11,5) DEFAULT '0.00000' COMMENT '存款',
  `tasktype` int(3) NOT NULL COMMENT '任务类型',
  `remark` varchar(255) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`uid`,`id`,`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log
-- ----------------------------
INSERT INTO `bf_log` VALUES ('1', 'money', '4', 'ceshi1', '100.00', '0.00000', '0.00000', '100.00000', '0', '充值卡支付', '1404933776');
INSERT INTO `bf_log` VALUES ('2', 'money', '4', 'ceshi1', '100.00', '0.00000', '0.00000', '200.00000', '0', '充值卡支付', '1404933869');
INSERT INTO `bf_log` VALUES ('3', 'fabudian', '4', 'ceshi1', '5.00', '5.00000', '0.00000', '0.00000', '1', '购买兔粮', '1404933958');
INSERT INTO `bf_log` VALUES ('4', 'money', '4', 'ceshi1', '-3.40', '0.00000', '0.00000', '196.60001', '0', '购买兔粮', '1404933958');
INSERT INTO `bf_log` VALUES ('5', 'fabudian', '4', 'ceshi1', '10.00', '15.00000', '0.00000', '0.00000', '1', '购买兔粮', '1404933984');
INSERT INTO `bf_log` VALUES ('6', 'money', '4', 'ceshi1', '-6.80', '0.00000', '0.00000', '189.80000', '0', '购买兔粮', '1404933984');
INSERT INTO `bf_log` VALUES ('7', 'money', '5', 'ceshi2', '600.00', '0.00000', '0.00000', '600.00000', '0', '充值卡支付', '1404934136');
INSERT INTO `bf_log` VALUES ('8', 'credits', '5', 'ceshi2', '40.00', '0.00000', '40.00000', '0.00000', '0', '充值奖励', '1404934136');
INSERT INTO `bf_log` VALUES ('9', 'money', '4', 'ceshi1', '-25.00', '0.00000', '0.00000', '164.80000', '0', '淘宝区发布任务', '1404934544');
INSERT INTO `bf_log` VALUES ('10', 'fabudian', '4', 'ceshi1', '-3.40', '11.60000', '0.00000', '0.00000', '1', '淘宝区发布任务', '1404934544');
INSERT INTO `bf_log` VALUES ('11', 'credits', '4', 'ceshi1', '5.00', '0.00000', '5.00000', '0.00000', '0', '淘宝区发任务奖励积分', '1404934544');
INSERT INTO `bf_log` VALUES ('12', 'fabudian', '5', 'ceshi2', '1.00', '1.00000', '0.00000', '0.00000', '1', '调查考试通过奖励', '1404934569');
INSERT INTO `bf_log` VALUES ('13', 'money', '4', 'ceshi1', '-10.00', '0.00000', '0.00000', '154.80000', '0', '淘宝区发布任务', '1404941811');
INSERT INTO `bf_log` VALUES ('14', 'fabudian', '4', 'ceshi1', '-1.00', '10.60000', '0.00000', '0.00000', '1', '淘宝区发布任务', '1404941811');
INSERT INTO `bf_log` VALUES ('15', 'credits', '4', 'ceshi1', '5.00', '0.00000', '10.00000', '0.00000', '0', '淘宝区发任务奖励积分', '1404941811');
INSERT INTO `bf_log` VALUES ('16', 'money', '5', 'ceshi2', '10.00', '0.00000', '0.00000', '610.00000', '0', '完成任务TB0710053652057318', '1404941910');
INSERT INTO `bf_log` VALUES ('17', 'fabudian', '5', 'ceshi2', '1.00', '2.00000', '0.00000', '0.00000', '1', '完成任务TB0710053652057318奖励兔粮', '1404941910');
INSERT INTO `bf_log` VALUES ('18', 'credits', '5', 'ceshi2', '5.00', '0.00000', '45.00000', '0.00000', '0', '完成任务TB0710053652057318', '1404941910');
INSERT INTO `bf_log` VALUES ('19', 'money', '4', 'ceshi1', '-15.00', '0.00000', '0.00000', '139.80000', '0', '淘宝区发布任务', '1404905730');
INSERT INTO `bf_log` VALUES ('20', 'fabudian', '4', 'ceshi1', '-3.20', '7.40000', '0.00000', '0.00000', '1', '淘宝区发布任务', '1404905730');
INSERT INTO `bf_log` VALUES ('21', 'credits', '4', 'ceshi1', '5.00', '0.00000', '15.00000', '0.00000', '0', '淘宝区发任务奖励积分', '1404905730');

-- ----------------------------
-- Table structure for `bf_log_exception`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log_exception`;
CREATE TABLE `bf_log_exception` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `code` varchar(16) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log_exception
-- ----------------------------
INSERT INTO `bf_log_exception` VALUES ('1', '3', '美乐管理员', 'Donkkp4KM97SUl7h', '1331742992');
INSERT INTO `bf_log_exception` VALUES ('2', '3', '美乐管理员', 'qS6b7J3u6n6y7d98', '1331744340');
INSERT INTO `bf_log_exception` VALUES ('3', '3', '美乐管理员', '84181394', '1331745200');

-- ----------------------------
-- Table structure for `bf_log_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log_exchange`;
CREATE TABLE `bf_log_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `total1` decimal(9,2) NOT NULL,
  `total2` decimal(9,2) NOT NULL,
  `total3` decimal(9,2) NOT NULL DEFAULT '0.00',
  `p` decimal(4,3) NOT NULL DEFAULT '0.000',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log_exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_log_express`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log_express`;
CREATE TABLE `bf_log_express` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `eid` varchar(32) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log_express
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_log_flow_vip`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log_flow_vip`;
CREATE TABLE `bf_log_flow_vip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `month` tinyint(3) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log_flow_vip
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_log_member`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log_member`;
CREATE TABLE `bf_log_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `ip` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`uid`,`timestamp`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log_member
-- ----------------------------
INSERT INTO `bf_log_member` VALUES ('1', '4', 'ceshi1', '登陆网站', 'ceshi1登陆网站', '2365229623', '1404931980');
INSERT INTO `bf_log_member` VALUES ('2', '4', 'ceshi1', '登陆网站', 'ceshi1登陆网站', '2365229623', '1404931999');
INSERT INTO `bf_log_member` VALUES ('3', '5', 'ceshi2', '登陆网站', 'ceshi2登陆网站', '2365229623', '1404932014');
INSERT INTO `bf_log_member` VALUES ('4', '4', 'ceshi1', '登陆网站', 'ceshi1登陆网站', '2074697757', '1404941502');
INSERT INTO `bf_log_member` VALUES ('5', '5', 'ceshi2', '登陆网站', 'ceshi2登陆网站', '2074697757', '1404941842');
INSERT INTO `bf_log_member` VALUES ('6', '4', 'ceshi1', '登陆网站', 'ceshi1登陆网站', '2365229623', '1404905497');

-- ----------------------------
-- Table structure for `bf_log_soft`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log_soft`;
CREATE TABLE `bf_log_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log_soft
-- ----------------------------
INSERT INTO `bf_log_soft` VALUES ('1', '5', '测试软件', '3', '美乐管理员', '1301499493', '2130706433');
INSERT INTO `bf_log_soft` VALUES ('2', '5', '测试软件', '3', '美乐管理员', '1301499883', '2130706433');
INSERT INTO `bf_log_soft` VALUES ('3', '5', '测试软件', '3', '美乐管理员', '1301499892', '2130706433');
INSERT INTO `bf_log_soft` VALUES ('4', '6', '测试扣钱软件', '3', '美乐管理员', '1301500118', '2130706433');
INSERT INTO `bf_log_soft` VALUES ('5', '6', '测试扣钱软件', '3', '美乐管理员', '1331567989', '2130706433');

-- ----------------------------
-- Table structure for `bf_log_vip`
-- ----------------------------
DROP TABLE IF EXISTS `bf_log_vip`;
CREATE TABLE `bf_log_vip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `month` tinyint(3) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `auto` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vip_style` int(3) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_log_vip
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_memberconfigs`
-- ----------------------------
DROP TABLE IF EXISTS `bf_memberconfigs`;
CREATE TABLE `bf_memberconfigs` (
  `uid` int(10) unsigned NOT NULL,
  `out_take` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `out_pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `out_receive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `out_comment` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `out_to_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `out_complain` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `out_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `in_verify` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `in_send` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `in_confirm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `in_to_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `acc_high` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `acc_ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `in_book` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `in_grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `complain` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `complain_end` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ensure` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ensure_end` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `black` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remit_fail` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `payment_app` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `payment` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buy_points` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `score_points` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `points_gold` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `luck` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rmd_bonus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rmd_reg` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `post_reply` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `post_move` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `post_del` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `getpm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lock` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ban` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vip_end` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mod_per` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `u` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_memberconfigs
-- ----------------------------
INSERT INTO `bf_memberconfigs` VALUES ('4', '1', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', '1', '0', '1', '1', '0', '1', '1', '1', '1');
INSERT INTO `bf_memberconfigs` VALUES ('5', '1', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', '1', '0', '1', '1', '0', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `bf_memberfields`
-- ----------------------------
DROP TABLE IF EXISTS `bf_memberfields`;
CREATE TABLE `bf_memberfields` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(16) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  `double_credit` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(9,2) DEFAULT NULL,
  `borrowMoney` decimal(9,2) DEFAULT NULL,
  `msg` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` int(10) unsigned NOT NULL DEFAULT '0',
  `exam` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shuake_expire` int(12) DEFAULT '0',
  `shuake` int(3) DEFAULT '0',
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vip_expire` int(10) unsigned NOT NULL DEFAULT '0',
  `vip2` int(3) DEFAULT '0',
  `vip2_expire` int(10) DEFAULT '0',
  `vip3` int(3) DEFAULT '0',
  `vip3_expire` int(10) DEFAULT '0',
  `vip_auto` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flowVip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flowVipExpire` int(10) unsigned NOT NULL DEFAULT '0',
  `fabudian` decimal(9,2) NOT NULL DEFAULT '0.00',
  `fabudian2` decimal(9,2) NOT NULL DEFAULT '0.00',
  `fabudian3` decimal(9,2) NOT NULL DEFAULT '0.00',
  `liuliang` int(10) unsigned NOT NULL DEFAULT '0',
  `buyers1` int(10) unsigned NOT NULL DEFAULT '0',
  `sellers1` int(10) unsigned NOT NULL DEFAULT '0',
  `buyers2` int(10) unsigned NOT NULL DEFAULT '0',
  `sellers2` int(10) unsigned NOT NULL DEFAULT '0',
  `buyers3` int(10) unsigned NOT NULL DEFAULT '0',
  `sellers3` int(10) unsigned NOT NULL DEFAULT '0',
  `sgrade1` int(10) unsigned NOT NULL DEFAULT '0',
  `sgrade2` int(10) unsigned NOT NULL DEFAULT '0',
  `sgrade3` int(10) unsigned NOT NULL DEFAULT '0',
  `bgrade1` int(10) unsigned NOT NULL DEFAULT '0',
  `bgrade2` int(10) unsigned NOT NULL DEFAULT '0',
  `bgrade3` int(10) unsigned NOT NULL DEFAULT '0',
  `black1` int(10) unsigned NOT NULL DEFAULT '0',
  `black2` int(10) unsigned NOT NULL DEFAULT '0',
  `freeTask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `club` int(10) unsigned NOT NULL DEFAULT '0',
  `from` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isEnsure` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ensureMoney` decimal(9,2) NOT NULL DEFAULT '0.00',
  `ensureFirstTime` int(10) unsigned NOT NULL DEFAULT '0',
  `ensureLastTime` int(10) unsigned NOT NULL DEFAULT '0',
  `tyroTaskCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tyroTaskAll` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isGivePoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isShowTip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `state` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `i1` (`vip`,`vip_expire`,`uid`),
  KEY `i2` (`black2`,`uid`),
  KEY `i3` (`credits`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_memberfields
-- ----------------------------
INSERT INTO `bf_memberfields` VALUES ('4', null, '15', '0', '139.80', null, '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7.40', '0.00', '0.00', '0', '0', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '8', '0', '0', '0');
INSERT INTO `bf_memberfields` VALUES ('5', null, '45', '0', '610.00', null, '11', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.00', '0.00', '0.00', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.00', '0', '0', '0', '8', '0', '0', '0');

-- ----------------------------
-- Table structure for `bf_memberlog`
-- ----------------------------
DROP TABLE IF EXISTS `bf_memberlog`;
CREATE TABLE `bf_memberlog` (
  `uid` int(10) unsigned NOT NULL,
  `pwd2_err_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `pwd2_err_count` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_memberlog
-- ----------------------------
INSERT INTO `bf_memberlog` VALUES ('4', '0', '0');
INSERT INTO `bf_memberlog` VALUES ('5', '0', '0');

-- ----------------------------
-- Table structure for `bf_members`
-- ----------------------------
DROP TABLE IF EXISTS `bf_members`;
CREATE TABLE `bf_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientId` varchar(32) DEFAULT NULL,
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `expressId` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `password2` varchar(32) DEFAULT NULL,
  `truename` varchar(4) DEFAULT NULL,
  `qq` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `mobilephone` varchar(11) DEFAULT NULL,
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `address` varchar(100) DEFAULT NULL,
  `parent` varchar(25) NOT NULL,
  `child1` int(10) unsigned NOT NULL DEFAULT '0',
  `child2` int(10) unsigned NOT NULL DEFAULT '0',
  `childMonth` int(10) unsigned NOT NULL DEFAULT '0',
  `rewordPoint1` int(10) unsigned NOT NULL DEFAULT '0',
  `rewordPoint2` int(10) unsigned NOT NULL DEFAULT '0',
  `rewordPointMonth` int(10) unsigned NOT NULL DEFAULT '0',
  `questionid` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` varchar(20) DEFAULT NULL,
  `salt` varchar(6) DEFAULT NULL,
  `reg_timestamp` int(10) unsigned NOT NULL,
  `reg_ip` int(10) unsigned NOT NULL,
  `last_login_timestamp` int(10) unsigned NOT NULL,
  `last_login_ip` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `monthCount` int(10) unsigned NOT NULL DEFAULT '0',
  `forbidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sys` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lastActTime` int(10) unsigned NOT NULL DEFAULT '0',
  `showMsg` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index1` (`username`,`reg_timestamp`,`id`),
  KEY `i_group` (`groupid`,`reg_timestamp`,`id`),
  KEY `i3` (`qq`,`id`),
  KEY `i4` (`email`,`id`),
  KEY `i5` (`mobilephone`,`id`),
  KEY `i6` (`child2`,`id`),
  KEY `i7` (`parent`,`status`,`reg_timestamp`,`id`),
  KEY `i8` (`childMonth`,`id`),
  KEY `i9` (`clientId`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_members
-- ----------------------------
INSERT INTO `bf_members` VALUES ('3', '952c5e4fe106d5f8a08df8809e0348b9', '3', '0', '美乐管理员', '0c564666608fa4d9355b5421587a811c', '0c564666608fa4d9355b5421587a811c', '阿江', '373718549', '373718549@qq.com', '13982017238', '2', '河北省秦皇岛市海港区迎宾路天洋新城1号1单元602', '0', '5', '3', '0', '10', '0', '10', '0', '', 'e9bb48', '1299826011', '2130706433', '1360043711', '3084473953', '1', '17', '0', '0', '0', '1', '0');
INSERT INTO `bf_members` VALUES ('4', null, '11', '0', 'ceshi1', 'ee1397baf74810b0bf412f422d013746', 'c5f97af8e05563ec6965fd343240bff9', '臧涛', '30743', '30743@qq.com', '15550866333', '1', null, '', '0', '0', '0', '0', '0', '0', '0', '', '1da59c', '1404931889', '2365229623', '1404905497', '2365229623', '0', '0', '0', '0', '1404931910', '1', '4');
INSERT INTO `bf_members` VALUES ('5', null, '11', '0', 'ceshi2', '85eaf22b886cc495d99c00c34375d07b', 'e37821f7180a424b058e1836fb60cd40', '张琳', '8733829', '8733829@qq.com', '15905383880', '1', null, '', '0', '0', '0', '0', '0', '0', '0', '', '1be07c', '1404931953', '2365229623', '1404941842', '2074697757', '0', '0', '0', '0', '1404931971', '1', '2');

-- ----------------------------
-- Table structure for `bf_membertask`
-- ----------------------------
DROP TABLE IF EXISTS `bf_membertask`;
CREATE TABLE `bf_membertask` (
  `uid` int(10) unsigned NOT NULL,
  `in1` int(10) unsigned NOT NULL DEFAULT '0',
  `in2` int(10) unsigned NOT NULL DEFAULT '0',
  `in3` int(10) unsigned NOT NULL DEFAULT '0',
  `in4` int(10) unsigned NOT NULL DEFAULT '0',
  `ining1` int(10) unsigned NOT NULL DEFAULT '0',
  `ining2` int(10) unsigned NOT NULL DEFAULT '0',
  `ining3` int(10) unsigned NOT NULL DEFAULT '0',
  `ining4` int(10) unsigned NOT NULL DEFAULT '0',
  `inExpire1` int(10) unsigned NOT NULL DEFAULT '0',
  `inExpire2` int(10) unsigned NOT NULL DEFAULT '0',
  `inExpire3` int(10) unsigned NOT NULL DEFAULT '0',
  `inExpire4` int(10) unsigned NOT NULL DEFAULT '0',
  `inComplate1` int(10) unsigned NOT NULL DEFAULT '0',
  `inComplate2` int(10) unsigned NOT NULL DEFAULT '0',
  `inComplate3` int(10) unsigned NOT NULL DEFAULT '0',
  `inComplate4` int(10) unsigned NOT NULL DEFAULT '0',
  `inComplate` int(10) unsigned NOT NULL DEFAULT '0',
  `out1` int(10) unsigned NOT NULL DEFAULT '0',
  `out2` int(10) unsigned NOT NULL DEFAULT '0',
  `out3` int(10) unsigned NOT NULL DEFAULT '0',
  `out4` int(10) unsigned NOT NULL DEFAULT '0',
  `outWaiting1` int(10) unsigned NOT NULL DEFAULT '0',
  `outWaiting2` int(10) unsigned NOT NULL DEFAULT '0',
  `outWaiting3` int(10) unsigned NOT NULL DEFAULT '0',
  `outWaiting4` int(10) unsigned NOT NULL DEFAULT '0',
  `outPause1` int(10) unsigned NOT NULL DEFAULT '0',
  `outPause2` int(10) unsigned NOT NULL DEFAULT '0',
  `outPause3` int(10) unsigned NOT NULL DEFAULT '0',
  `outPause4` int(10) unsigned NOT NULL DEFAULT '0',
  `outing1` int(10) unsigned NOT NULL DEFAULT '0',
  `outing2` int(10) unsigned NOT NULL DEFAULT '0',
  `outing3` int(10) unsigned NOT NULL DEFAULT '0',
  `outing4` int(10) unsigned NOT NULL DEFAULT '0',
  `outExpire1` int(10) unsigned NOT NULL DEFAULT '0',
  `outExpire2` int(10) unsigned NOT NULL DEFAULT '0',
  `outExpire3` int(10) unsigned NOT NULL DEFAULT '0',
  `outExpire4` int(10) unsigned NOT NULL DEFAULT '0',
  `outComplate1` int(10) unsigned NOT NULL DEFAULT '0',
  `outComplate2` int(10) unsigned NOT NULL DEFAULT '0',
  `outComplate3` int(10) unsigned NOT NULL DEFAULT '0',
  `outComplate4` int(10) unsigned NOT NULL DEFAULT '0',
  `outComplate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `i1` (`inComplate`,`outComplate`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_membertask
-- ----------------------------
INSERT INTO `bf_membertask` VALUES ('4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '1', '0', '0', '0', '1');
INSERT INTO `bf_membertask` VALUES ('5', '3', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `bf_member_questions`
-- ----------------------------
DROP TABLE IF EXISTS `bf_member_questions`;
CREATE TABLE `bf_member_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `question` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_member_questions
-- ----------------------------
INSERT INTO `bf_member_questions` VALUES ('1', '1', '母亲的名字？');
INSERT INTO `bf_member_questions` VALUES ('2', '2', '父亲的职业？');
INSERT INTO `bf_member_questions` VALUES ('3', '3', '好朋友的名字？');
INSERT INTO `bf_member_questions` VALUES ('4', '4', '学校舍友的名字？');
INSERT INTO `bf_member_questions` VALUES ('5', '5', '爱人的生日？');
INSERT INTO `bf_member_questions` VALUES ('8', '6', '你大爷叫什么？');

-- ----------------------------
-- Table structure for `bf_message_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_message_log`;
CREATE TABLE `bf_message_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobilephone` varchar(11) DEFAULT NULL,
  `content` varchar(70) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `money` decimal(2,1) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`status`,`timestamp`,`id`),
  KEY `i2` (`mobilephone`,`timestamp`,`id`),
  KEY `i3` (`status`,`money`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_message_log
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_moderator`
-- ----------------------------
DROP TABLE IF EXISTS `bf_moderator`;
CREATE TABLE `bf_moderator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_moderator
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_msg`
-- ----------------------------
DROP TABLE IF EXISTS `bf_msg`;
CREATE TABLE `bf_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_uid` int(10) unsigned NOT NULL,
  `from_username` varchar(16) DEFAULT NULL,
  `to_uid` int(10) unsigned NOT NULL,
  `to_username` varchar(16) DEFAULT NULL,
  `read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `message` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`from_uid`,`to_uid`,`timestamp`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_msg
-- ----------------------------
INSERT INTO `bf_msg` VALUES ('1', '1', '0', '', '4', 'ceshi1', '1', '网站提醒：充值成功', '恭喜您，您成功充值了100.00元存款', '1404933776');
INSERT INTO `bf_msg` VALUES ('2', '1', '0', '', '4', 'ceshi1', '0', '网站提醒：充值成功', '恭喜您，您成功充值了100.00元存款', '1404933869');
INSERT INTO `bf_msg` VALUES ('3', '1', '0', '', '5', 'ceshi2', '1', '充值卡密', '互动吧平台600.00元充值卡号：20140710032734437230<br />\r\n充值密码：6637C6C1842D0B4C837AFB672D2FB3F2<br />\r\n友情提醒：充值成功后请您10分钟内，给互动吧平台淘宝官方网店确认付款，以防系统自动冻结您互动吧平台平台帐号。谢谢合作！', '1404934065');
INSERT INTO `bf_msg` VALUES ('4', '1', '0', '', '5', 'ceshi2', '0', '网站提醒：充值成功', '恭喜您，您成功充值了600.00元存款', '1404934136');
INSERT INTO `bf_msg` VALUES ('5', '1', '0', '', '4', 'ceshi1', '0', '任务“TB0710033548212906”被接手', '您的任务“TB0710033548212906”被ceshi2接手了', '1404934684');
INSERT INTO `bf_msg` VALUES ('6', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0710033548212906”已通过审核', '您在淘宝区接手的任务“TB0710033548212906”，已通过审核', '1404941522');
INSERT INTO `bf_msg` VALUES ('7', '1', '0', '', '4', 'ceshi1', '0', '任务“TB0710053652057318”被接手', '您的任务“TB0710053652057318”被ceshi2接手了', '1404941854');
INSERT INTO `bf_msg` VALUES ('8', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0710053652057318”卖家已发货', '您在淘宝区接手的任务“TB0710053652057318”，卖家已发货', '1404941880');
INSERT INTO `bf_msg` VALUES ('9', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0710053652057318”已到期，请收货好评', '', '1404941881');
INSERT INTO `bf_msg` VALUES ('10', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0710033548212906”卖家已发货', '您在淘宝区接手的任务“TB0710033548212906”，卖家已发货', '1404941886');
INSERT INTO `bf_msg` VALUES ('11', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0710033548212906”已到期，请收货好评', '', '1404941887');
INSERT INTO `bf_msg` VALUES ('12', '1', '0', '', '4', 'ceshi1', '0', '任务“TB0710053652057318”已确认好评', '您在淘宝区的任务“TB0710053652057318”，买家已确认好评', '1404941898');
INSERT INTO `bf_msg` VALUES ('13', '1', '0', '', '4', 'ceshi1', '0', '请核实任务“TB0710053652057318”的货款', '您在淘宝区的任务“TB0710053652057318”，买家已确认收货并好评，请核实货款', '1404941898');
INSERT INTO `bf_msg` VALUES ('14', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0710053652057318”卖家已核实货款', '您在淘宝区接手的任务“TB0710053652057318”，卖家已核实货款', '1404941910');
INSERT INTO `bf_msg` VALUES ('15', '1', '0', '', '5', 'ceshi2', '0', '任务“TB0710053652057318”，卖家已评分', '您在淘宝区接的任务“TB0710053652057318”，卖家已评分', '1404941916');
INSERT INTO `bf_msg` VALUES ('16', '1', '0', '', '4', 'ceshi1', '0', '任务“TB0710053652057318”，买家已评分', '您在淘宝区的任务“TB0710053652057318”，买家已评分', '1404941928');
INSERT INTO `bf_msg` VALUES ('17', '1', '0', '', '4', 'ceshi1', '0', '任务“TB0709193531006080”被接手', '您的任务“TB0709193531006080”被ceshi2接手了', '1404905781');
INSERT INTO `bf_msg` VALUES ('18', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0709193531006080”已通过审核', '您在淘宝区接手的任务“TB0709193531006080”，已通过审核', '1404906076');
INSERT INTO `bf_msg` VALUES ('19', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0709193531006080”卖家已发货', '您在淘宝区接手的任务“TB0709193531006080”，卖家已发货', '1404906087');
INSERT INTO `bf_msg` VALUES ('20', '1', '0', '', '5', 'ceshi2', '0', '接手的任务“TB0709193531006080”已到期，请收货好评', '', '1404906088');
INSERT INTO `bf_msg` VALUES ('21', '1', '0', '', '4', 'ceshi1', '0', '任务“TB0709193531006080”已确认好评', '您在淘宝区的任务“TB0709193531006080”，买家已确认好评', '1404906335');
INSERT INTO `bf_msg` VALUES ('22', '1', '0', '', '4', 'ceshi1', '0', '请核实任务“TB0709193531006080”的货款', '您在淘宝区的任务“TB0709193531006080”，买家已确认收货并好评，请核实货款', '1404906335');

-- ----------------------------
-- Table structure for `bf_page_article`
-- ----------------------------
DROP TABLE IF EXISTS `bf_page_article`;
CREATE TABLE `bf_page_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `remark` varchar(32) DEFAULT NULL,
  `marker` varchar(32) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `list` (`cid`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_page_article
-- ----------------------------
INSERT INTO `bf_page_article` VALUES ('1', '1', '注册协议', 'protocol', ' 一.本服务条款是用户（您）与美乐网商联盟平台（下称美乐）之间的协议。\r\n1. 重要须知： 美乐在此特别提醒，用户（您）欲访问和使用美乐平台，必须事先认真阅读本服务条款中各条款， 包括免除或者限制美乐责任的免责条款及对用户的权利 限制。请您审阅并接受或不接受本服务条款（未成年人审阅时应得到法定监护人的陪同）。如您不同意本服务条款及/或随时对其的修改，您应不使用或主动取消美乐平台提供的服务。您的使用行为将被视为您对本服务条款全部的完全接受，包括接受美乐对服务条款随时所做的任何修改。除遵守本制度以外，平台一切公开规则同等有效。有重复则按此制度执行。\r\n2. 这些条款可由美乐随时更新，且毋须另行通知。美乐平台服务条款(以下简称“服务条款”)一旦发生变更, 美乐将在网页上公布修改内容。修改后的服务一旦在网页上公布即有效代替原来的服务条款。您可随时登陆美乐网查阅最新版服务条款。\r\n3. 美乐目前重要是针对C2C平台用户提高刷信用互刷服务。包括淘宝，百度有啊，腾讯拍拍等。本服务条款适用于美乐提供的各种服务，但当您使用美乐某一特定服务时，如该服务另有单独的服务条款、指引或规则，您应遵守本服务条款及美乐随时公布的与该服务相关的服务条款、指引或规则等。前述所有的指引和规则，均构成本服务条款的一部分。除非本服务条款另有其他明示规定，新推出的产品或服务、增加或强化目前本服务的任何新功能，均受到本服务条款之规范。\r\n1 用户必须自行配备上网和使用电信增值业务所需的设备，自行负担个人上网或第三方（包括但不限于电信或移动通信提供商）收取的通讯费、信息费等有关费用。如涉及电信增值服务的，我们建议您与您的电信增值服务提供商确认相关的费用问题。\r\n2 除您与美乐公司另有约定外，您同意本服务仅供个人使用且非商业性质的使用，您不可对本服务任何部分或本服务之使用或获得顾客QQ号或者我们建立的互动群，进行复制、拷贝、出售、或利用本服务进行调查、广告、或用于其他商业目的，其中，您不得将任何广告信函与信息、促销资料、垃圾邮件与信息、滥发邮件与信息、直销及传销邮件与信息以短信、即时通信或以其他方式传送，但美乐公司对特定服务另有适用指引或规则的除外。\r\n3 您不可以在网站发送任何妨碍社会治安或非法、虚假、骚扰性、侮辱性、恐吓性、伤害性、破坏性、挑衅性、淫秽色情性等内容的信息。\r\n4 保证自己在使用各服务时用户身份的真实性和正确性及完整性，如果资料发生变化，　您应及时更改。　在安全完成本服务的登记程序并收到一个密码及帐号后，您应维持密码及帐号的机密安全。您应对任何人利用您的密码及帐号。所进行的活动负完全的责任，美乐公司无法对非法或未经您授权使用您帐号及密码的行为作出甄别，因此美乐公司不承担任何责任。在此，您同意并承诺做到∶ \r\n4.1 当您的密码或帐号遭到未获授权的使用，或者发生其他任何安全问题时，您会立即有效通知到美乐公司；\r\n4.2 当您每次上网或使用其他服务完毕后，会将有关信息，例如平台账号等安全退出。\r\n5 用户同意接受美乐通过电子邮件、即时通信的客户端、网页或其他合法方式向用户发送商品促销或其他相关商业信息。在使用电信增值服务的情况下，　用户同意接受本公司及合作公司通过增值服务系统或其他方式向用户发送的相关服务信息或其他信息，其他信息包括但不限于通知信息、宣传信息、广告信息等。\r\n　　\r\n三.服务风险及免责声明\r\n1 用户须明白，本服务仅依其当前所呈现的状况提供，本服务涉及到互联网及移动通讯等服务，可能会受到各个环节不稳定因素的影响。因此服务存在因上述不可抗力、计算机病毒或黑客攻击、系统不稳定、用户所在位置、用户关机、GSM网络、互联网络、通信线路原因等造成的服务中断或不能满足用户要求的风险。开通服务的用户须承担以上风险，本公司和合作公司对服务之及时性、安全性、准确性不作担保，对因此导致用户不能互刷接、或传递错误，个人设定之时效、未予储存或其他问题不承担任何责任。\r\n2 如本公司的系统发生故障影响到本服务的正常运行，本公司承诺在第一时间内与相关单位配合，及时处理进行修复。但用户因此而产生的经济损失，本公司和合作公司不承担责任。此外，美乐保留不经事先通知为维修保养、升级或其他目的暂停本服务任何部分的权利。\r\n3 美乐公司在此郑重提请您注意，任何经由本服务以上载、张贴、发送即时信息、电子邮件或任何其他方式传送的资讯、资料、文字、软件、音乐、音讯、照片、图形、视讯、信息、用户的登记资料或其他资料（以下简称“内容”），无论系公开还是私下传送，均由内容提供者承担责任。美乐公司无法控制经由本服务传送之内容，也无法对用户的使用行为进行全面控制，因此不保证内容的合法性、正确性、完整性、真实性或品质；您已预知使用本服务时，可能会接触到令人不快、不适当或令人厌恶之内容，并同意将自行加以判断并承担所有风险，而不依赖于美乐公司。但在任何情况下，美乐公司有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用本服务的全部或部分，保存有关记录，并向有关机关报告。但美乐公司有权(但无义务)依其自行之考量，拒绝和删除可经由本服务提供之违反本条款的或其他引起美乐公司或其他用户反感的任何内容。\r\n4 关于使用及储存之一般措施：　您承认关於本服务的使用美乐有权制订一般措施及限制，包含但不限於本服务将保留用户信息、电子邮件信息、所张贴内容或其他上载内容之最长期间、本服务一个帐号当中可收发电子邮件或短信讯息等的最大数量、本服务一个帐号当中可收发的单个信息或电子邮件的大小、美乐服务器为您分配的最大使用空间，以及一定期间内您使用本服务之次数上限（及每次使用时间之上限）。通过本服务存储或传送之任何信息、通讯资料和其他内容，如被删除或未予储存，您同意美乐毋须承担任何责任。您亦同意，长时间未使用的帐号，美乐有权关闭并收回帐号。您也同意，美乐有权依其自行之考量，不论通知与否，随时变更这些一般措施及限制。 \r\n5 与广告商进行之交易 : 您通过本服务与广告商进行任何形式的通讯或商业往来，或参与促销活动，包含相关商品或服务之付款及交付，以及达成的其他任何相关条款、条件、保证或声明，完全为您与广告商之间之行为。除有关法律有明文规定要求美乐承担责任以外，您因前述任何交易或前述广告商而遭受的任何性质的损失或损害，美乐均不予负责。 \r\n6 链接及搜索引擎服务： 本服务或第三人可提供与其他国际互联网上之网站或资源之链接。由於美乐无法控制这些网站及资源，您了解并同意：无论此类网站或资源是否可供利用，美乐不予负责；美乐亦对存在或源于此类网站或资源之任何内容、广告、产品或其他资料不予保证或负责。因您使用或依赖任何此类网站或资源发布的或经由此类网站或资源获得的任何内容、商品或服务所产生的任何损害或损失，美乐不负任何直接或间接之责任。若您认为该链接所载的内容或搜索引擎所提供之链接的内容侵犯您的权利，美乐声明与上述内容无关，不承担任何责任。美乐建议您与该网站或法律部门联系，寻求法律保护；若您需要更多了解美乐之搜索服务，请参见美乐关于搜索引擎服务的相关说明。\r\n7 若在本网站的信息存储服务、搜索服务、链接服务中涉及的信息内容存在侵犯第三人著作权的可能，美乐公司将遵循“版权保护投诉指引”处理该信息内容。详细处理程序请参见具体规则。\r\n\r\n四.服务变更、中断或终止及服务条款的修改\r\n1 本服务的所有权和运作权、一切解释权归美乐公司。美乐公司提供的服务将按照其发布的章程、服务条款和操作规则严格执行。\r\n2 本公司有权在必要时修改服务条款，服务条款一旦发生变动，将会在相关页面上公布修改后的服务条款。如果不同意所改动的内容，用户应主动取消此项服务。如果用户继续使用服务，则视为接受服务条款的变动。\r\n3 本公司和合作公司有权按需要修改或变更所提供的收费服务、收费标准、收费方式、服务费、及服务条款。美乐在提供服务时，可能现在或日后对部分服务的用户开始收取一定的费用如用户拒绝支付该等费用，则不能在收费开始后继续使用相关的服务。但美乐和合作公司将尽最大努力通过电邮或其他有效方式通知用户有关的修改或变更。\r\n4 本公司特别提请用户注意，本公司为了保障公司业务发展和调整的自主权，本公司拥有经或未经事先通知而修改服务内容、中断或中止部分或全部服务的权利，修改会公布于美乐网站相关页面上，一经公布视为通知。 美乐公司行使修改或中断服务的权利而造成损失的，美乐公司不需对用户或任何第三方负责。\r\n5 如发生下列任何一种情形，本公司有权随时中断或终止向用户提供服务而无需通知用户：\r\n5.1 用户提供的个人资料不真实；\r\n5.2 用户违反本服务条款的规定；\r\n5.3 按照主管部门的要求；\r\n5.4 其他本公司认为是符合整体服务需求的特殊情形。\r\n　　\r\n五. 隐私权保护：\r\n1 美乐重视对用户隐私的保护，保护隐私是美乐的一项基本政策。您提供的登记资料及美乐公司保留的有关您的若干其他个人资料将受到中国有关隐私的法律和本公司《隐私保护声明》之规范。\r\n2 您使用美乐服务时，美乐有权用数字代码、通用唯一标识符、cookies或其他技术确定进入服务的计算机。美乐有可能利用所得信息对服务的使用进行总体性及匿名的数据统计及分析，　所得数据可供美乐或其合作人使用。　计算机识别技术也会用于执行相关的服务条款。\r\n3 美乐可能会与第三方合作向用户提供相关的服务，如该第三方为合法经营的公司且提供同等的用户隐私保护（如电信运营商），美乐有权将用户的注册资料等提供给该第三方。\r\n\r\n六.美乐商标信息\r\n1 美乐、网站logo等，以及其他美乐标志及产品、服务名称，均为美乐公司之商标（以下简称“美乐标识”）。未经美乐事先书面同意，您不得将美乐标记以任何方式展示或使用或作其他处理，也不得向他人表明您有权展示、使用、或其他有权处理美乐标识的行为。　\r\n\r\n七 信息内容的所有权\r\n1 本公司定义的信息内容包括：文字、软件、声音、相片、录像、图表；网页；广告中全部内容；本公司为用户提供的商业信息。所有这些内容受版权、商标权、和其它知识产权和所有权法律的保护。所以，用户只能在本公司和相关权利人授权下才能使用这些内容，而不能擅自使用、抄袭、复制、修改、编撰这些内容、或创造与内容有关的衍生产品。\r\n2 关于美乐提供的软件：您了解并同意，本服务及本服务所使用或提供之相关软件（以下简称“软件”）（但不包括两用户之间直接传递的资料）是由美乐公司拥有所有相关知识产权及其他法律保护之专有之知识产权（包括但不限于版权、商标权、专利权、及商业秘密）资料。若就某一具体软件存在单独的最终用户软件授权协议，您除应遵守本协议有关规定外，亦应遵守该软件授权协议。　除非您亦同意该软件授权协议，否则您不得安装或使用该软件。对于未提供单独的软件授权协议的软件，　除您应遵守本服务协议外，美乐公司或所有权人仅将为您个人提供可取消、不可转让、非专属的软件授权许可，　并仅为访问或使用本服务之目的而使用该软件。此外，在任何情况下，未经美乐明示授权，您均不得修改、出租、出借、出售、散布本软件之任何部份或全部，或据以制作衍生著作，或使用擅自修改后的软件，或进行还原工程、反向编译，或以其他方式发现原始编码，包括但不限於为了未经授权而使用本服务之目的。您同意将通过由美乐所提供的界面而非任何其他途径使用本服务。\r\n\r\n八. 法律\r\n1 本服务条款要与国家相关法律、法规一致，如发生服务条款与相关法律、法规条款有相抵触的内容，抵触部分以法律、法规条款为准。\r\n九. 保障\r\n1 用户同意保障和维护本公司全体成员的利益，负责支付由用户使用超出服务范围引起的一切费用（包括但不限于：律师费用、违反服务条款的损害补偿费用以及其它第三人使用用户的电脑、帐号和其它知识产权的追索费）。\r\n2 用户须对违反国家法律规定及本服务条款所产生的一切后果承担法律责任。\r\n\r\n十 美乐互动信誉平台会员制度\r\n1.用户注册时应填写各项真实资料（姓名.QQ.电话及邮箱），如资料不真实出现任何问题官方都不予保护及处理。认证时请填写自己的淘宝大号掌柜名，填写错误官方不予修改。一旦发生任务纠纷，任务一方电话联系对方如发现其电话或qq不真实，经官方核实将立即封停此帐号！\r\n\r\n2.所有会员注册后，当积分达到100分后请立即到提现区填写真实的支付宝帐号与姓名绑定自己的提现支付宝帐号，防止他人盗号将存款提走。（请认真填写自己的真实支付宝名与真实姓名，填写错误不予修改），如出现帐号被人盗取存款被他人提现官方不负任何责任。\r\n\r\n3.所有平台会员在平台应当互敬互爱，严禁言语辱骂，恐吓对方。\r\n如有会员发生此的情况可向客服投诉对方。官方予以警告，如果情节严重官方将直接封停此帐号！\r\n\r\n4.严禁使用任何手段欺骗，恐吓等办法骗取其他会员资金或存款，如淘宝恶性退款包括但不仅限于一经发现立即封号！情节严重将移交公安部门处理并予以平台公示！\r\n\r\n5.严禁通过旺旺联系对方并带有平台、联盟、信用、信誉等敏感字眼。\r\n\r\n6.任何会员在做任务时严禁拖对方任务。（如遇特殊情况可QQ或电话联系对方）\r\n\r\n7.如被投诉6次系统将自动封停此帐号，如须开通可联系官方人员罚款30元清空投诉记录并开通帐号。如出现乱投诉的情况将封停帐号，罚款10元解封。\r\n\r\n8.如有任务投诉官方客服都会给您留言，如在三天内不上线与客服联系处理。将被视为默认放弃。客服将按对方所提供证据进行裁定。（请各位会员在下线时检查自己所有任务是否都已完成）\r\n\r\n9.官方对任何已经完成的或超速操作的任务申诉不予任何受理。请各位会员认真对待自己的每一个任务，不要拿自己的金钱当作游戏。也不要图一时之快浪费更多的时间精力。\r\n\r\n10.不允许发一个任务却让接手方拍淘宝多个连接。\r\n\r\n11.严禁乱写评语，恶意评语及广告评语，一经发现立即封号，罚款30元解封。\r\n\r\n12.禁止任何理由给对方差评，一经发现终身封停其帐号。\r\n\r\n十四.除官方明确规定可罚款解封的情况，其他封停帐号一律不退还存款及兔粮。\r\n\r\n十五：禁止帮他人发布任务，这样会导致您的朋友无法在美乐平台发布。平台监控程序如发现代发任务情况将该会对涉及到的平台帐号进行封号处理；\r\n\r\n除遵守本制度外，其他平台公告制度同等有效，如平台其他制度与本制度重复，以本制度为最终依据。');
INSERT INTO `bf_page_article` VALUES ('2', '1', '会员中心首页中上提示规则', 'memberIndexRegulation', '[b][back=#ffffff][color=#006600] 请新来平台的朋友注意平台基本规则：\r\n一、严禁通过旺旺联系对方并带有平台，美乐，刷钻，刷信誉等忌讳字眼；\r\n　　(请使用QQ联系对方)\r\n二、禁止以任何理由给对方差评及非100%好评等行为；\r\n三、严禁使用任何欺骗、恐吓等办法骗取其它会员资金或存款；\r\n四、禁止匿名购买对方商品或者匿名评价；\r\n　　(注：如对方要求匿名评价或特殊商品类如成人用品则该规定无效)\r\n五、禁止任何会员在做任务时故意拖卡对方任务；\r\n六、严禁好评乱写评语，广告评语或恶意乱写评语；\r\n七、禁止在发布一个任务却以各种理由让接手方拍淘宝多个商品/链接；\r\n　　(注：真实快递单任务除外)\r\n八、禁止在任务过程中，辱骂任务一方，出言不逊；\r\n九、禁止接手人使用淘宝客链接赚取佣金以及使用信用卡购买任务商品；\r\n十、平台禁止使用外挂，否则处罚！！！\r\n[/color][/back][color=#ff6600]【注：以上一至三点违反任何一条，一经核实马上封号！四至九点凡发现初犯者警告，返还非法所得、再犯者扣罚双倍非法所得、累计三次不改者将封号处理。】\r\n[/color][color=#006600]以上信息积分>150将不再显示[/color][/b]    ');
INSERT INTO `bf_page_article` VALUES ('3', '1', '会员中心首页DIALOG提示规则', 'memberDialogRegulation', '请新来平台的朋友注意平台基本规则：\r\n一、严禁通过旺旺联系对方并带有平台，美乐，刷钻，刷信誉等忌讳字眼；(请使用QQ联系对方)\r\n二、禁止以任何理由给对方差评及非100%好评等行为；\r\n三、严禁使用任何欺骗、恐吓等办法骗取其它会员资金或存款；\r\n四、禁止匿名购买对方商品或者匿名评价；(注:如对方要求匿名评价或特殊商品类如成人用品则该规定无效)\r\n五、禁止任何会员在做任务时故意拖卡对方任务；\r\n六、严禁好评乱写评语，广告评语或恶意乱写评语；\r\n七、禁止在发布一个任务却以各种理由让接手方拍淘宝多个商品/链接；(注：真实快递单任务除外)\r\n八、禁止在任务过程中，辱骂任务一方，出言不逊；\r\n九、禁止接手人使用淘宝客链接赚取佣金以及使用信用卡购买任务商品；\r\n十、平台禁止使用外挂，否则处罚！！！\r\n[color=#006600]【注：以上一至三点违反任何一条，一经核实马上封号！四至九点凡发现初犯者警告，返还非法所得、再犯者扣罚双倍非法所得、累计三次不改者将封号处理。】\r\n[/color]以上信息积分>50不再显示 ');
INSERT INTO `bf_page_article` VALUES ('4', '1', '客服评分', 'kefu_review', ' [b]评分说明：[/b]\r\n为了避免恶意评分，刷客积分满五十分后才可以对客服进行评分！\r\n您可以在这里对给您服务过的联盟客服打分；客服评分 计分规则：好评加两分，中评加一分，差评减三分；每位刷客每周只能对同一位客服进行一次评价；为了给每位刷客提供最优质的服务，联盟会把客服每个月的积分与其奖金直接挂钩，请您根据得到的服务，给予真实客观、仔细地评价。\r\n为了奖励您对改善美乐客服工作作出的贡献，系统会在您打分后自动为您增加平台积分3分。 ');

-- ----------------------------
-- Table structure for `bf_page_article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_page_article_cate`;
CREATE TABLE `bf_page_article_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_page_article_cate
-- ----------------------------
INSERT INTO `bf_page_article_cate` VALUES ('1', '0', '前台页面调用', '0');

-- ----------------------------
-- Table structure for `bf_payfor_interface`
-- ----------------------------
DROP TABLE IF EXISTS `bf_payfor_interface`;
CREATE TABLE `bf_payfor_interface` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `ename` varchar(64) DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `userid` varchar(64) DEFAULT NULL,
  `userpwd` varchar(128) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_payfor_interface
-- ----------------------------
INSERT INTO `bf_payfor_interface` VALUES ('1', '4', '网银在线', 'chinabank', '1', '', '21557434', 'cn12315119', '1', '1347345313');
INSERT INTO `bf_payfor_interface` VALUES ('2', '1', '充值卡', 'card', '0', '', '', '', '1', '1323833630');
INSERT INTO `bf_payfor_interface` VALUES ('3', '5', '易宝', 'yeepay', '1', '', '10001082984', '2qa0X62Bd0kz07m11E9u9a110att4jCF0K1wv2GX8a5f3nKo0E6p23b8ArD4', '1', '1318353510');
INSERT INTO `bf_payfor_interface` VALUES ('4', '2', '支付宝转账', 'alipay', '1', 'woaiwojialin@126.com', ' ', ' ', '1', '1404932536');
INSERT INTO `bf_payfor_interface` VALUES ('5', '3', '财付通转账', 'tenpay', '0', '', '', '', '1', '1347345325');

-- ----------------------------
-- Table structure for `bf_payment`
-- ----------------------------
DROP TABLE IF EXISTS `bf_payment`;
CREATE TABLE `bf_payment` (
  `id` char(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `truename` varchar(4) DEFAULT NULL,
  `money` decimal(9,2) DEFAULT NULL,
  `mp` decimal(4,3) DEFAULT NULL,
  `money2` decimal(9,2) DEFAULT NULL,
  `remark1` varchar(128) DEFAULT NULL,
  `remark2` varchar(128) DEFAULT NULL,
  `remark3` varchar(128) DEFAULT NULL,
  `remark4` varchar(128) DEFAULT NULL,
  `timestamp1` int(10) unsigned NOT NULL,
  `timestamp2` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  FULLTEXT KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_payment
-- ----------------------------
INSERT INTO `bf_payment` VALUES ('20110326214731501295', 'alipay', '3', '美乐管理员', '阿江', '1000.00', '0.015', '1015.00', '阿江', '13982017238', '', '', '1301147251', '1301147289', '5');
INSERT INTO `bf_payment` VALUES ('20120314004118747975', 'bank', '3', '美乐管理员', '阿江', '300.00', '0.005', '301.50', '中国农业银行', '622202440201555555', '阿江', '四川成都', '1331656878', '1402218076', '5');
INSERT INTO `bf_payment` VALUES ('20120314004444524568', 'bank', '3', '美乐管理员', '阿江', '1000.00', '0.005', '1005.00', '中国农业银行', '6222', '阿江', '四川成都', '1331657084', '1331657355', '3');
INSERT INTO `bf_payment` VALUES ('20140302105701112457', 'alipay', '54', 'wulanyang', '吴海波', '50.00', '0.015', '50.75', '吴兰洋', 'wulanyang@126.com', null, null, '1393729020', '1402217631', '3');
INSERT INTO `bf_payment` VALUES ('TB0608163546280334', 'bank', '121', 'ceshi1', '地方', '100.00', '0.005', '100.50', '中国工商银行', '6222021617000450189', '臧涛', '山东', '1402216546', '1402218085', '2');
INSERT INTO `bf_payment` VALUES ('TB0608163745410762', 'bank', '121', 'ceshi1', '地方', '200.00', '0.005', '201.00', '中国农业银行', '6554455155221123411', '卡尔', '河南', '1402216665', '1402218092', '3');
INSERT INTO `bf_payment` VALUES ('TB0608163815755112', 'bank', '121', 'ceshi1', '地方', '500.00', '0.005', '502.50', '中国农业银行', '567643164613', '开空间', '对方答复', '1402216695', '1402217556', '2');
INSERT INTO `bf_payment` VALUES ('TB0608164111325170', 'bank', '121', 'ceshi1', '地方', '100.00', '0.005', '100.50', '中国农业银行', '56467461', '地方打算', '地方的', '1402216871', '1402217552', '2');
INSERT INTO `bf_payment` VALUES ('TB0608164849885507', 'alipay', '122', 'ceshi2', '风格', '100.00', '0.015', '101.50', 'wulanyang', '15905383880', null, null, '1402217329', '1402217619', '5');
INSERT INTO `bf_payment` VALUES ('TB0608164912747165', 'alipay', '122', 'ceshi2', '风格', '50.00', '0.015', '50.75', 'wulanyang', '15905383880', null, null, '1402217352', '1402217578', '2');
INSERT INTO `bf_payment` VALUES ('TB0608170212204513', 'bank', '121', 'ceshi1', '地方', '100.00', '0.005', '100.50', '中国农业银行', '44545424', '更好', '该好好干', '1402218132', '1402218278', '3');
INSERT INTO `bf_payment` VALUES ('TB0608170227520055', 'bank', '121', 'ceshi1', '地方', '100.00', '0.005', '100.50', '中国农业银行', '646+4631346', '非规范规范', '鼓风管', '1402218147', '1402218284', '2');
INSERT INTO `bf_payment` VALUES ('TB0608170323982992', 'bank', '121', 'ceshi1', '地方', '100.00', '0.005', '100.50', '中国农业银行', '524654165', '地方的', '地方', '1402218203', '1402218274', '5');
INSERT INTO `bf_payment` VALUES ('TB0608170345049915', 'bank', '121', 'ceshi1', '地方', '100.00', '0.005', '100.50', '中国农业银行', '6546416163', '覆盖后', '风格', '1402218224', '1402218245', '3');
INSERT INTO `bf_payment` VALUES ('TB0610220133011957', 'alipay', '121', 'ceshi1', '地方', '100.00', '0.015', '101.50', '张琳', 'woaiwojialin@126.com', null, null, '1402408892', '0', '0');

-- ----------------------------
-- Table structure for `bf_posts`
-- ----------------------------
DROP TABLE IF EXISTS `bf_posts`;
CREATE TABLE `bf_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `first` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attachs` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) DEFAULT NULL,
  `message` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`tid`,`first`,`id`),
  KEY `i2` (`uid`,`tid`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_posts
-- ----------------------------
INSERT INTO `bf_posts` VALUES ('40', '10', '3', '美乐管理员', '1', '0', '【新手教程】如何短信激活账户，如何短信认证帐户', '在每个用户注册后，系统会提示用户进行短信认证激活账号；首先要声明的是，美乐的整个注册和激活过程不会收取任务形式的费用，是完全免费的；更加不会收取短信费用或者开通短信套餐等等；\r\n\r\n如果在注册时用户没有去激活账户，那么将不能进入任何互动区操作任务；如果用户想自己进行短信激活，请按照如下步骤进行：\r\n第一步：登陆美乐平台\r\n第二步：进入【联盟中心】\r\n第三步：点击【短信认证帐号】开始短信认证帐号\r\n[img=,162,210]/img/bbs/2013/02/272F.jpg[/img]\r\n\r\n绑定手机最主要的作用是为了您的账户安全的哦！\r\n\r\n[color=#f328ff][img=,501,113]/img/bbs/2013/02/2732.jpg[/img]\r\n[color=#000000]第三步：查看默认显示的手机号码是否是您要绑定的手机号，如下图（[/color][b][color=#000000]默认显示的是您在美乐注册账户时填[/color][color=#000000]写的[/color][color=#000000][color=#000000]联系手机[/color][/color][color=#000000][color=#000000]电话[/color][/color][/b][color=#000000]）\r\n[/color]\r\n[img=,322,339]/img/bbs/2013/02/2739.jpg[/img]\r\n\r\n[color=#000000]第四步：【输入操作码】 →点击按钮【获取认证码】（这是千万不要顺手就关了这个窗口哦，因为下面您还要往里面输入验证码呢）[/color]\r\n\r\n[color=#000000]第五步：等待查看手机收到的验证码，如果长时间没有收到验证码可以选择重新发送；或者联系美乐客服美眉，告知验证码；[/color]\r\n\r\n[color=#000000]第六步：在刚刚第四步的页面上输入收到的收到的验证码；[/color]\r\n[img=,322,339]/img/bbs/2013/02/273C.jpg[/img]\r\n\r\n恭喜你，这样您就成功绑定了手机号了，可以安全的去提升信誉了哦哈哈！\r\n[img=,251,179]/img/bbs/2013/02/273F.jpg[/img]\r\n[/color]', '1360047170');
INSERT INTO `bf_posts` VALUES ('41', '11', '3', '美乐管理员', '1', '0', '了解美乐平台积分级别详情，如何获得积分', '美乐平台用户积分级别代表该用户的经验值与做任务熟练程度；积分等级越高的用户说明其越能熟练的掌握任务流程；\r\n\r\n[b][color=#0000ff]1） 刷客平台操作与其积分奖惩关系：[/color][/b]\r\n\r\n[tr][td][align=center][font=宋体][size=3][b]操作项目[/b][/size][/font][/align][/td][td][align=center][font=宋体][size=3][b]普通用户积分变化[/b][/size][/font][/align][/td][td][align=center][b][size=3][color=#fe2419]VIP[/color][/size][font=宋体][size=3][color=#fe2419]积分变化[/color][/size][/font][/b][/align][/td][/tr][tr][td][font=宋体][size=3]单次充值满[/size][/font][size=3]500[/size][font=宋体][size=3]元[/size][/font][/td][td][size=3]40[/size][/td][td][size=3][color=#fe2419]50[/color][/size][/td][/tr][tr][td][font=宋体][size=3]单次充值满[/size][/font][size=3]1000[/size][font=宋体][size=3]元[/size][/font][/td][td][size=3]90[/size][/td][td][size=3][color=#fe2419]100[/color][/size][/td][/tr][tr][td][font=宋体][size=3]单次充值满[/size][/font][size=3]5000[/size][font=宋体][size=3]元[/size][/font][/td][td][size=3]500[/size][/td][td][size=3][color=#fe2419]600[/color][/size][/td][/tr][tr][td][font=宋体][size=3]接手任务[/size][/font][/td][td][size=3]5/[/size][font=宋体][size=3]次[/size][/font][/td][td][size=3][color=#fe2419]6/[/color][/size][font=宋体][size=3][color=#fe2419]次[/color][/size][/font][/td][/tr][tr][td][font=宋体][size=3]发布任务[/size][/font][/td][td][size=3]5/[/size][font=宋体][size=3]次[/size][/font][/td][td][size=3][color=#f10b00]6/[/color][/size][font=宋体][size=3][color=#f10b00]次[/color][/size][/font][/td][/tr][tr][td]发布收藏任务[/td][td]1/次[/td][td][color=#f10b00]1/次[/color][/td][/tr][tr][td]接手收藏任务[/td][td]1/次[/td][td][color=#f10b00]1/次[/color][/td][/tr][tr][td][font=宋体][size=3]论坛发帖[/size][/font][/td][td][size=3]2[font=宋体]分[/font]/[/size][font=宋体][size=3]次[/size][/font][/td][td][size=3][color=#fe2419]2[/color][color=#fe2419][font=宋体]分[/font][/color][color=#fe2419]/[/color][/size][font=宋体][size=3][color=#fe2419]次[/color][/size][/font][/td][/tr][tr][td][font=宋体][size=3]论坛回帖[/size][/font][/td][td][size=3]1[font=宋体]分[/font]/[/size][font=宋体][size=3]次[/size][/font][/td][td][size=3][color=#f10b00]1[/color][color=#f10b00][font=宋体]分[/font][/color][color=#f10b00]/[/color][/size][font=宋体][size=3][color=#f10b00]次[/color][/size][/font][/td][/tr][tr][td][font=宋体][size=3]推广一人成功注册激活[/size][/font][/td][td][size=3]20[font=宋体]分[/font]/[/size][font=宋体][size=3]人[/size][/font][/td][td][size=3][color=#f10b00]20[/color][color=#f10b00][font=宋体]分[/font][/color][color=#f10b00]/[/color][/size][font=宋体][size=3][color=#f10b00]人[/color][/size][/font][/td][/tr][tr][td][font=宋体][size=3]论坛被删帖一次[/size][/font][/td][td][size=3]-10[font=宋体]分[/font]/[/size][font=宋体][size=3]次[/size][/font][/td][td][size=3][color=#f10b00]-10[/color][color=#f10b00][font=宋体]分[/font][/color][color=#f10b00]/[/color][/size][font=宋体][size=3][color=#f10b00]次[/color][/size][/font][/td][/tr][tr][td][font=宋体][size=3]论坛发灌水贴一次[/size][/font][/td][td][size=3]-2[font=宋体]分[/font]/[/size][font=宋体][size=3]次[/size][/font][/td][td][size=3][color=#f10b00]-2[/color][color=#f10b00][font=宋体]分[/font][/color][color=#f10b00]/[/color][/size][font=宋体][size=3][color=#f10b00]次[/color][/size][/font][/td][/tr][tr][td][font=宋体][size=3]被拉黑名单[/size][/font][/td][td][size=3]-5[font=宋体]分[/font]/[/size][font=宋体][size=3]人次[/size][/font][/td][td][size=3][color=#f10b00]-5[/color][color=#f10b00][font=宋体]分[/font][/color][color=#f10b00]/[/color][/size][font=宋体][size=3][color=#f10b00]人次[/color][/size][/font][/td][/tr][tr][td][font=宋体][size=3]帐号被平台挂起一次[/size][/font][/td][td][size=3]-200[font=宋体]分[/font]/[/size][font=宋体][size=3]次[/size][/font][/td][td][size=3][color=#f10b00]-200[/color][color=#f10b00][font=宋体]分[/font][/color][color=#f10b00]/[/color][/size][font=宋体][size=3][color=#f10b00]次[/color][/size][/font][/td][/tr]\r\n\r\n　\r\n\r\n[color=#0000ff][b]2）刷客平台积分与图示对应关系[/b][/color]\r\n\r\n[font=宋体]积分架构：积分越高的，代表经验与信誉越高，同时享受的权限也越高。[/font]\r\n\r\n[font=宋体]如果积分是[/font]0[font=宋体]的话，他接了你的任务[/font]  [font=宋体]很多人会知道，容易造成任务搁置；[/font]\r\n\r\n[font=宋体]但是[/font][font=宋体]皇冠接你任务[/font][font=宋体]那就没得说[/font]\r\n\r\n[font=宋体]积分用来代表刷客的级别[/font]\r\n\r\n[font=宋体]并且以后会越来越重要的[/font][font=times new roman][/font][font=宋体]呵呵[/font]\r\n\r\n[font=宋体]---------------------------[/font]\r\n\r\n[b][size=4]0[font=宋体]分[/font]-100[font=宋体]分[img=,17,14]http://www.hiwinwin.com/upload/2010/2/23/038ac0c6-5f59-45e6-b225-c295c38e1001.gif[/img][/font]\r\n101[font=宋体]分[/font]-400[font=宋体]分[img=,33,14]http://www.hiwinwin.com/upload/2010/2/23/0b108a9d-be91-4af9-8ac7-dd695b9f049a.gif[/img][/font]\r\n401[font=宋体]分[/font]-900[font=宋体]分[img=,50,14]http://www.hiwinwin.com/upload/2010/2/23/afddf326-0706-4de0-8788-3dbaff5f380f.gif[/img][/font]\r\n901[font=宋体]分[/font]-1500[font=宋体]分[img=,16,16]http://www.hiwinwin.com/upload/2010/2/23/87122b33-ee89-40e1-bc98-522a6bbdb3be.gif[/img][/font]\r\n1501[font=宋体]分[/font]-2500[font=宋体]分[img=,34,16]http://www.hiwinwin.com/upload/2010/2/23/fbabd11f-ed6d-45d2-b89c-62e20c88b19f.gif[/img][/font]\r\n2501[font=宋体]分[/font]-5000[font=宋体]分[img=,51,16]http://www.hiwinwin.com/upload/2010/2/23/6fbf2e36-0ce9-4765-b5b2-91411b025e6b.gif[/img][/font]\r\n5001[font=宋体]分[/font]-10000[font=宋体]分[img=,16,16]http://www.hiwinwin.com/upload/2010/2/23/5a312bfa-a0d9-4255-ab26-a9a7e834e40d.gif[/img][/font]\r\n10001[font=宋体]分[/font]-20000[font=宋体]分[img=,34,16]http://www.hiwinwin.com/upload/2010/2/23/5e3b4cc1-7d2e-4ace-8738-c9bc02e556de.gif[/img][/font]\r\n20001[font=宋体]分[/font]-50000[font=宋体]分[img=,52,16]http://www.hiwinwin.com/upload/2010/2/23/bb8ccb82-173a-42bb-b205-a3a000d0c923.gif[/img][/font]\r\n50001分-150000分[img]http://www.hiwinwin.com/images/score_10.gif[/img]\r\n150001分-500000分[img]http://www.hiwinwin.com/images/score_11.gif[/img]\r\n500001分-1000000分[img]http://www.hiwinwin.com/images/score_12.gif[/img][/size][/b]  ', '1360046983');
INSERT INTO `bf_posts` VALUES ('42', '12', '3', '美乐管理员', '1', '0', '【赢规定】美乐刷客积分与接发任务数量对应关系', '在美乐平台中，您的可同时操作任务数量直接同您的美乐平台积分挂钩的哦，下面就了解一下具体的功能与积分要求吧！\r\n\r\n[b][/b][table][tr][td][color=#0066cc]积分区间[/color][/td][td]同时接手任务数[/td][td][color=#0066cc]同时发布任务数[/color][/td][/tr][tr][td]0-100[/td][td]10[/td][td]10[/td][/tr][tr][td]101-1000[/td][td]20[/td][td]20[/td][/tr][tr][td]1001-3000[/td][td]70[/td][td]35[/td][/tr][tr][td]3000或VIP[/td][td]130[/td][td]100[/td][/tr][tr][td]VIP+卡信托[/td][td]130[/td][td][b]1000[/b][/td][/tr][/table]\r\n\r\n[b]注：可同时进行的任务指：您已经发布或者接手但是还没有完成的任务数，与时间无关；[/b]', '1300817389');
INSERT INTO `bf_posts` VALUES ('43', '13', '3', '美乐管理员', '1', '0', '【好消息】点卡中心推出双倍积分卡，积分翻倍增长的秘密！', '[b][color=#ff0000]好消息，平台推出了双倍积分卡；激活该卡后，购卡的用户在有效期内所有操作积分翻番！[/color]\r\n\r\n[color=#0000ff]绝对是新手们积分迅速增长的利器！[/color][/b]\r\n\r\n[color=#008000]【首页】--【点卡中心】--【特权道具卡】[/color]\r\n\r\n[b][color=#008000]有【双倍积分日卡】与【双倍积分周卡】两种选择哦；[/color][/b]', '1358766961');
INSERT INTO `bf_posts` VALUES ('44', '14', '3', '美乐管理员', '1', '0', '【好消息】平台充值有奖励喽！', '[color=#f10b00][b]好消息，好消息！[/b][/color]\r\n\r\n2010年02月22日起，每次给支付宝账户充值，单笔金额不小于[b][color=#fe2419]500[/color][/b]元即可获得1次积分奖励哦；如果您是VIP会员将会得到额外的更多奖励呢；\r\n\r\n[b]具体奖励积分办法如下：[/b]\r\n\r\n[table=416][tr][td][align=center][font=宋体]充值金额[/font][/align][/td][td][align=center][font=宋体]会员类型[/font][/align][/td][td][align=center][font=宋体]充值奖励积分[/font][/align][/td][/tr][tr][td]\r\n\r\n500\r\n\r\n[/td][td]\r\n\r\n[font=宋体]普通会员[/font]\r\n\r\n[/td][td]\r\n\r\n40\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[color=#ff0000]500[/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]VIP[font=宋体]会员[/font][/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]50[/color]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n1000\r\n\r\n[/td][td]\r\n\r\n[font=宋体]普通会员[/font]\r\n\r\n[/td][td]\r\n\r\n90\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[color=#ff0000]1000[/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]VIP[font=宋体]会员[/font][/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]100[/color]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n5000\r\n\r\n[/td][td]\r\n\r\n[font=宋体]普通会员[/font]\r\n\r\n[/td][td]\r\n\r\n500\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[color=#ff0000]5000[/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]VIP[font=宋体]会员[/font][/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]600[/color]\r\n\r\n[/td][/tr][/table]', '1300817471');
INSERT INTO `bf_posts` VALUES ('45', '15', '3', '美乐管理员', '1', '0', '【大讲堂】美乐信用额度，刷客满意度 详细解读', '大家好，大家都看到过有些任务是要求接手人的[b]“[color=#0000ff]信用额度”大于XX分[/color][/b]的吧！\r\n很多人不明白这个信用额度是什么东西呵呵，今天我就给大家讲解一下；\r\n\r\n[color=#ff0000][b]两大指标：[/b][/color]\r\n\r\n第一、[color=#0000ff][b]美乐积分[/b][/color]大家可能都清楚了美乐积分这个东东，它代表着一个刷客在平台的经验值，你接发越多任务，论坛发回帖越多就可以得到越高的积分了呵呵；\r\n\r\n第二、[color=#0000ff][b]信用额度[/b][/color]但是信用额度这个东西可不一定是你接发任务越多就能越高的哦！因为这个指标是为了让别的刷客能一眼就了解你的“刷品”哈哈；也就是你在平台做任务时是否能够很好的按照任务对方的要求积极的完成你接手/发布的每个任务；\r\n\r\n[b][color=#ff0000]那么具体在哪里能看到你自己的信用额度呢？[/color][/b]\r\n首先进入【联盟中心】 然后 看左下方【个人信用中心】，点击进去就能对你的个人信用记录一目了然了哦；里面还有以往你做任务时每个任务对方对您的评价呢哈哈；\r\n\r\n所以兽兽我严重推荐大家在平台完成任务后，到【已接任务】/【已发任务】 的【已经完成任务】页面都去给你的另一半打个分吧哈哈！\r\n\r\n[b]在这里在这里[/b]\r\n[img=,490,121]/img/bbs/2013/02/2729.jpg[/img]\r\n\r\n[b]点这里点这里\r\n[img=,261,96]/img/bbs/2013/02/272C.jpg[/img]\r\n\r\n[color=#ff0000][size=5]现在就行动起来哈哈，让每个人的刷品都暴露无遗吧![/size][/color][/b] ', '1360046930');
INSERT INTO `bf_posts` VALUES ('46', '16', '3', '美乐管理员', '1', '0', '【新手教程】如何维护个人资料', ' 第一步：登陆美乐平台\r\n第二步：点击首页上方【联盟中心】进入联盟中心；\r\n第三步：点击联盟中心页面左下方【维护个人资料】\r\n[img=,158,140]/img/bbs/2013/02/2726.jpg[/img]\r\n第四步：进入维护个人资料页面；可以为你的账号添加头像，修改联系用email，与通讯地址；\r\n\r\n注：修改注册激活手机号码，不在这里进行，需要联系客服帮你设置重新激活\r\n注册后，qq号不能自主随意修改，一定要修改的需要联系客服妹妹帮助你设置 ', '1360046841');
INSERT INTO `bf_posts` VALUES ('47', '17', '3', '美乐管理员', '1', '0', '【新手教程】如何修改密码，操作码', ' 第一步：登陆美乐\r\n第二步：从首页右上角进入【联盟中心】\r\n第三步：点击【维护密码/操作码】进入维护界面\r\n[img=,159,187]/img/bbs/2013/02/271E.jpg[/img]\r\n\r\n第四步：在密码操作码维护界面先输入【老的操作密码】；然后再下面相应的地方填入你要修改的新的登陆密码或者新的操作密码；点击【确认修改】按钮后，你的密码就修改成功了\r\n[img=,427,319]/img/bbs/2013/02/2723.jpg[/img] ', '1360046789');
INSERT INTO `bf_posts` VALUES ('48', '18', '3', '美乐管理员', '1', '0', '【新手教程】了解我的宝物功能', ' 大家好，美乐的【我的宝物】功能相当于每个人的小宝库；你在美乐购买的任何点卡，获得的奖励等等，在没有激活前都是存放在这里的哦；\r\n进入【我的宝物】页面首先映入眼帘的是一张宝贝清单，这里可以对你名下的宝贝一目了然哦；\r\n\r\n[img=,700,161]/img/bbs/2013/02/2714.jpg[/img]\r\n\r\n我的宝物里边现在分为七个小页面，将你的宝物分成了七个类别，它们分别是：【系统奖励】【兔粮信托卡】【双倍积分卡】【预定任务磁卡】【联盟收费软件】【尊享VIP体验卡】；\r\n进入每个页面就能看到你账户下拥有的这类宝贝数量，以及宝贝状态等等信息哦；\r\n\r\n[img=,657,85]/img/bbs/2013/02/2717.jpg[/img]\r\n\r\n所以大家要记住，你在美乐上购买了任何东西，都不是马上激活的，你可以在你想用到的时候来【我的宝物】里去激活它； ', '1360046673');
INSERT INTO `bf_posts` VALUES ('49', '19', '3', '美乐管理员', '1', '0', '【新手教程】如何查看自己账户的基本信息', ' 一个账户的基本信息大致包括但是不限于如下几个内容：\r\n【上次登录时间】【美乐积分】【存款余额】【兔粮个数】【流量点个数】【刷客满意度】【我的宝物】【到期好评任务】【个人资料】.....\r\n\r\n登录美乐后，进入【联盟中心】，就能基本看到所有这些信息了；\r\n[img=,414,277]/img/bbs/2013/02/26F7.jpg[/img]\r\n\r\n【我的宝物】可以直接到【联盟中心】--【我的宝物】页面里去查看\r\n\r\n【刷客满意度】详情可以直接到【联盟中心】--【个人信用中心】去查看\r\n\r\n【个人资料】详情可以到【联盟中心】-【维护个人资料】页面查看\r\n\r\n【联盟中心】中显示的兔粮个数是集合了所有互动区兔粮个数之和的；要想了解每个互动区内兔粮个数，请到相应的互动区内即可看到了\r\n\r\n【到期好评任务】可以到相应的互动区内，选择【已接任务】或者【已发任务】 然后选择【到期好评任务】就可以看到现在等你好评的任务了呢；\r\n[img=,490,128]/img/bbs/2013/02/26FA.jpg[/img] ', '1360046120');
INSERT INTO `bf_posts` VALUES ('50', '20', '3', '美乐管理员', '1', '0', '如何申请成为【美乐教官】，美乐教官的资质？', '[color=#fe2419][color=#000000][b]为了配合新手【一元免费体验任务】功能的上线，美乐特别设置了【美乐教官】这个职位；[/b][/color][/color]\r\n\r\n[b][color=#013add]*美乐教官的优势：[/color]\r\n\r\n只有美乐教官才能接手新人发布的一元体验任务，教官接手体验任务可以实现已最小的流动资金：[color=#fe2419]“一元”， 获得双倍的积分 ：“十分”和双倍的兔粮：“两个”[/color]；为了鼓励教官们耐心细心的帮助新来到平台的朋友们；平台规定教官每完成一个教学体验任务，就可以得到[color=#fe2419]双倍的积分和兔粮哦！\r\n[/color]\r\n\r\n[color=#013add]*美乐教官的职责：[/color]\r\n\r\n平台中只有开通了美乐教官资质的刷客才能接手新手互动区中的【一元体验任务】，并且有义务耐心的指导新手一步一步的完成这个加入平台的第一个任务；[/b]\r\n\r\n[color=#fe2419][b]注：美乐教官并不是美乐的官方工作人员，是每一个[/b][/color][color=#fe2419][b]刷客都可以申请成为美乐教官哦\r\n[/b][/color]\r\n\r\n[b][color=#013add]*申请成为美乐教官的资质要求：[/color][/b]\r\n\r\n[color=#ff0000][b]所谓名师出高徒，为了保证美乐教官的整体素质，我们对美乐教官做出了近乎苛刻的资质要求！[/b][/color]\r\n\r\n[b]第一[/b][color=#fe2419][b][color=#000000]：当然是有经验了，所以要求申请人的美乐积分要满：200分[color=#000000]以上才能申请；[/color][/color]200分[/b][color=#000000]以上才能申请；[/color][/color]\r\n\r\n[b]第二[color=#fe2419][color=#000000]：当然是品格，只有[/color][/color][color=#ff0000]无不良投诉记录[/color][color=#000000]，美乐[color=#f10b00]接手[/color][/color][color=#ff0000]信用额度在50分以上[/color][color=#000000]，[/color][color=#ff0000]被拉黑名单次数小于3次[/color][color=#000000]，且[/color][color=#ff0000]接手任务好评率在95%以上[/color][color=#000000]的刷客才能申请；（进入【联盟中心】-【个人信用中心】即可查看你当前的信用额度，与接手任务好评率；[url=http://www.mei-le.com]点击查看[/url]）[/color]\r\n\r\n第三：限制教官申请名额[color=#f10b00]每周三个，先到先得；[/color][/b]\r\n\r\n[color=#ff0000][b]注：对于已经开通了美乐教官资格的刷客，如果不维护自己良好的信誉导致信用记录不满足上述要求者将会被清退出教官行列；[/b][/color]\r\n\r\n[b][color=#ff0000]如果您已经满足了上述资质要求，就向我们的客服妹妹们提交申请吧！[/color][/b][color=#fe2419][b][color=#000000]\r\n [/color][/b][/color] ', '1360046191');
INSERT INTO `bf_posts` VALUES ('51', '21', '3', '美乐管理员', '1', '0', '【帮助中心】开始接手任务之前需要准备什么', ' 各位新加入平台的朋友们，平台注册以后，如果想接手任务赚取兔粮来发布自己任务；或者想赚取兔粮换现金 用户都需要在开始工作前准备一下几项准备工作：\r\n第一：一张开通了网银的银行卡；（记住，要去支付宝网页上去查看一下，一定要是支付宝支持的网银才行哦；）\r\n第二：卡内准备一些流动资金，对于一般用户来说大概两百块左右足够了；\r\n第三：新注册几个淘宝账号也就是平台上说的小号，注意这些小号不要与你的店铺掌柜号有任务关系；小号因为只买东西，不需要实名认证的，所以也千万不要往里边充钱；使用小号购买任务商品时，只要直接选择网银支付就可以了；\r\n\r\n准备好上面的三件物品后，你就可以开始你的刷钻之旅了哦；', '1300817747');
INSERT INTO `bf_posts` VALUES ('52', '22', '3', '美乐管理员', '1', '0', '【帮助中心】如何查看已经接手的任务', ' 第一步：进入相应的互动区，这里以淘宝互动区为例：\r\n[img=,585,125]/img/bbs/2013/02/277B.jpg[/img]\r\n\r\n第二步：点击【已接任务】按钮，进入已接手任务列表页面\r\n\r\n[img=,481,89]/img/bbs/2013/02/277E.jpg[/img]\r\n\r\n第三步：系统默认选择的是【进行中任务】，这个页面你可以看到所有你已经接手，但是尚未完成的任务哦；这个页面是整个接手任务过程中用到最多的页面了，基本上所有的更新任务状态的操作都是在这里完成的；\r\n【所有任务】页面则显示了所有你接手的任务，包括进行中的和已经结束的任务；\r\n【到期好评任务】这个页面是在进行中任务中进一步为你挑选出了当前到期好评的任务；每次登陆后到这里看下有没有到期需要你好评的任务，是一个很好的习惯哦；\r\n【已经完成任务】这里显示的是已经完成任务声明周期的任务了；在这里可以给任务发布人在任务中的表现评分；\r\n[img=,550,114]/img/bbs/2013/02/2781.jpg[/img]\r\n\r\n已接任务列表，系统默认的排序方式是按照接手时间由近到远排列的；\r\n用户可以根据自己的需要对已接手任务列表进行过滤；目前平台支持对【任务编号】【任务发布人】以及【接手买号】的多种查询方式：\r\n[img=,676,35]/img/bbs/2013/02/2784.jpg[/img] ', '1360047979');
INSERT INTO `bf_posts` VALUES ('53', '23', '3', '美乐管理员', '1', '0', '【帮助中心】平台对接手任务有什么限制', '为了每个在平台提升信誉的朋友都能够安全的实现你们的愿望；平台针对淘宝的稽查程序，对平台接手任务做了一系列必要的限制；\r\n[b]第一：是用户的积分对可以同时接手的任务数量有一定的限制：具体限制如下：[/b]\r\n\r\n[align=left] [/align]\r\n\r\n[table][tr][td][align=center][b]  同时接手任务数   [/b][/align][/td][td][align=center][b]  同时发布任务数   [/b][/align][/td][td][align=center][b]     积分区间      [/b][/align][/td][/tr][tr][td][align=left]10[/align][/td][td][align=left]10[/align][/td][td][align=left]0-100[/align][/td][/tr][tr][td][align=left]20[/align][/td][td][align=left]10[/align][/td][td][align=left]101-1000[/align][/td][/tr][tr][td][align=left]70[/align][/td][td][align=left]35[/align][/td][td][align=left]1001-3000[/align][/td][/tr][tr][td][align=left]130[/align][/td][td][align=left]100[/align][/td][td][align=left]3000或VIP[/align][/td][/tr][tr][td][align=left]130[/align][/td][td][align=left]1000[/align][/td][td][align=left]VIP+卡信托[/align][/td][/tr][/table]\r\n\r\n[align=left] [/align]\r\n\r\n[b]第二：对每个用户的接手频率限制：[/b]\r\n\r\n[b]一、[/b]每个买号每日最多接手[color=#ff0000][b]6个[/b][/color]任务，每周最多接手[color=#ff0000][b]35个[/b][/color]任务\r\n二、检测：接手人IP与发布人[color=#ff0000][b]IP不得相同[/b][/color]；\r\n三、检测：同一买号不能在[color=#ff0000][b]一个自然月内[/b][/color]接同一发布人同一网店任务超过[color=#ff0000][b]六个[/b][/color]；\r\n四、检测：[color=#ff0000][b]十四天内[/b][/color]同一买号接手同一产品的任务不能超过一次；\r\n五、同一IP一次只能接手[color=#ff0000][b]9个任务[/b][/color]；\r\n六、为每个绑定买号，设置[color=#ff0000][b]动态寿命值[/b][/color]，保证卖家信誉列表真实！（区别于别的平台单纯拒绝黄钻，结果五心买家成排现象;）\r\n七、[b]新增安全限制[/b]：[color=#fe2419][b]同一个IP[/b][/color]在24小时内不允许使用[color=#fe2419][b]不同的买号[/b][/color]绑定到[color=#fe2419][b]同一个店铺[/b][/color]的任务\r\n\r\n当然上面所有的限制都是系统自动检测的，所有各位接手的只要尽情去接手就行了，不用自己考虑这些，等到你的接手违反了某条规则时，平台会自动检测出来并且拒绝你的接手哦；', '1300817838');
INSERT INTO `bf_posts` VALUES ('54', '24', '3', '美乐管理员', '1', '0', '【新手入门】什么是买号，什么是小号？', '[b][color=#fe2419]以淘宝买号为例说明：[/color][/b] \r\n淘宝买号是指专门用来买东西的，不卖东西的，跟开店的id区分的淘宝帐户，可以不用绑定支付宝，不需要认证，付款的时候在支付宝付款页面，不选择支付宝余额，而是网上银行付款。 \r\n淘宝买号又称淘宝小号。 \r\n\r\n[b][color=#fe2419]在淘宝注册买号时注意事项：[/color][/b]\r\n买号资料没填好，经常有买号资料没填好，特别是姓名，电话，固话填手机，或者区号电话全填一格，这是错的，可能你说，都交易好几笔了，都没事呀，那是因为高手们都追求高效率，懒得打字和你解释，结果每个卖家都要手动帮你改，你慢了多少？正确做法，正确的号码填在正确的位置，关键是位数对，号码假的没关系。\r\n\r\n[b][color=#fe2419]使用买号时的限定：[/color][/b]\r\n[color=#0000ff]1. 美乐平台会为每个绑定的买号随机设定一个信誉生命值，当该买号的买家信誉达到生命值后就不能再使用它接手任务了；[/color]（原因是：尽量避免黄钻号买东西，我是黄钻，等级那么高，买你东西是看得起你，给你增加信誉度，这是错的，这条逻辑正常来说是对的，可这里是对刷，每天都刷10条以上吧，要是都是黄钻，那么就会造成卖家整版的好评都是黄澄澄的一片金光，就像周星驰电影中打开存折本本一样，满脸被金光照着，多假呀，你当时笑了吗？真正买家看到，也被这层金光照到，不是傻子的都会怀疑。）\r\n\r\n[color=#0000ff]2. 同一买号不能在一个自然月内接同一发布人任务超过六个(系统自动限制)\r\n\r\n3. 同一买号十四天内不能接手购买同一产品的任务不能超过一次(系统自动限制)\r\n\r\n4. 同一买号每周接手购买任务数：不能大于35个(系统自动限制)[/color]\r\n\r\n[color=#0000ff]5. 普通会员只能绑定五个买号；信托会员可以绑定10个买号；如果VIP可以绑定买号数不限[/color]\r\n\r\n美乐平台是为了保障广大网商的店铺信誉安全与真实，才会设定上面的限制，因此各位刷客需要多注册几个淘宝买号，换着用。\r\n[img=,128,128]/img/bbs/2013/02/26FD.gif[/img] ', '1360046250');
INSERT INTO `bf_posts` VALUES ('55', '25', '3', '美乐管理员', '1', '0', '【帮助中心】什么是买号动态寿命值', ' [table][tr][td][i]本帖最后由 美乐官方 于 2011-02-17 20:12:02 编辑[/i] \r\n\r\n平台刷钻有一个病根，也就是各位会员最最忌讳的事情。那就是自己的买家都是职业刷客，结果卖家信誉里一看一排排的黄钻；\r\n买号动态寿命值是美乐平台独创的最新机制，从根本上解决了这个问题；区别于别的平台单纯拒绝黄钻，结果又出现五心买家成排现象;\r\n\r\n 美乐平台不会单纯的限制买号绑定时的初始信誉度，还会为每个绑定的买号随机设定一个信誉生命值，当该买号的买家信誉达到生命值后就不能再使用它接手任务了；这样限制的结果是，平台上刷的买号，每一个寿终正寝的买家信誉分数都不相同；这样就能使平台上卖家的信誉列表里看到的买家什么级别的都有，与真实交易没有任何区别了；\r\n\r\n买号的寿命值，在用户绑定买号时系统就自动赋予了：\r\n\r\n如下图的三个买号虽然初始绑定时信誉都是零，但是每个买号最终能达到最高的买家信誉度是不同的；\r\n[img=,409,147]/img/bbs/2013/02/2774.jpg[/img]\r\n\r\n[b][color=#0162f4]具体点说：[/color]\r\n普通小号：[/b]在绑定的时候只要都是会在绑定时小号买家信誉的基础上赋予一个80-400之间的动态寿命增值；绑定时买家信誉超过400的普通买号，绑定的时候自动给一倍的寿命值\r\n[b]手机验证小号：[/b]在绑定时会自动赋予一个500-5000之间的寿命值；\r\n[b]实名买号：[/b]在绑定的时候会赋予50000的寿命值；\r\n\r\n[b][color=#fe2419]以上三种小号在寿命值低于350时如果暂停使用时间超过3天的在恢复使用时会根据暂停天数自动增加相应的寿命值；[/color][/b]\r\n\r\n[/td][/tr][/table]', '1360047772');
INSERT INTO `bf_posts` VALUES ('56', '26', '3', '美乐管理员', '1', '0', '【帮助中心】美乐买号（小号）各种状态详细解读', '大家在绑定买号的页面，能够看到以前绑定的买号在使用一段时间后，其状态会发生变化；这也是美乐独有的功能；有点类似于游戏里boss的血一样；下面给大家详细解读一下各个状态的区别：\r\n\r\n[img=,401,97]/img/bbs/2013/02/2771.jpg[/img] \r\n\r\n【正常状态】是指该买号[font=宋体]买家信誉值小于（其寿命值[/font][font=times new roman]-10[/font][font=宋体]）且今日接任务数小于[/font][font=times new roman]5[/font][font=宋体]个 且本周接手任务数小于[/font][font=times new roman]30[/font][font=宋体]个 的买号，这样的买号非常健康大家可以放心使用哦；\r\n\r\n【危险买号】是指该买号买家信誉值介于（寿命值[font=times new roman]-10[/font]）与（寿命值）之间[font=times new roman] [/font]或者今日接任务数介于[font=times new roman]5-6[/font]个 或者本周接手任务数介于[font=times new roman]30-35[/font]之间；这样的买号已经处于危险的边缘了，但是还能用，只是最近一两天要尽量少用为妙了；\r\n\r\n【挂起买号】是指该买号今日接任务数达到[font=times new roman]6[/font]个或者本周接手任务数达到[font=宋体]35，这样的买号已经被美乐暂时锁定不能接手任务了，但是过了今天或者本周以后，就能自动解挂了；\r\n\r\n[/font]【失效买号】是指该买号的买家信誉值已经[b][color=red]达到[/color][/b]寿命值，在平台永远不能用了呵呵；[/font]\r\n\r\n[font=宋体]【锁定买号】买号由于淘宝上[b][color=#f10b00]个人交易资料未填写完整[/color][/b]或者其他原因被发布人举报后，我们客服后台锁定该买号；请补齐资料后，再联系客服解锁；\r\n [/font] ', '1360047707');
INSERT INTO `bf_posts` VALUES ('57', '27', '3', '美乐管理员', '1', '0', '【帮助中心】接手任务注意事项', '各位在接手任务时除了平台一再强调的三大禁忌以外，还需要注意些什么呢？\r\n第一：尽量轮换使用买号；这样是为了使你的小号和卖家的网店都能健康的成长；\r\n第二：在接手任务后，先看卖家QQ是否在线，卖家在线的在把任务做下去，不在线的直接退出任务；这样的好处时卡任务的概率会大大降低；\r\n第三：绑定买号后，淘宝支付前一定要看清楚任务商品的标价+运费是否等于任务担保价；不一致的在你拍下货物未支付前就请发布人去改价；\r\n第四：立刻好评任务，尽量不要隔天完成；能当天完成就当天结束；不留后遗症；\r\n第五：每次登陆后关注【平台到期好评】提醒，及时给任务发布方好评\r\n第六：24小时好评或者48小时好评任务 最好等到卖家发货满十二小时候在收货，利人利己；\r\n第七：提交好评时，先看任务要求，有好评内容要求的一定别忘记复制好评内容；你要记住卖家选择这个选项时要多支付兔粮的，而这个兔粮最终是要落入你的口袋的；所以请负起自己的那份责任来；\r\n第八：任务结束后，别忘记去已完成任务里，给对方平台打分哦；你的简单一点将会为平台创造洁净的互动环境奉献很大的力量；\r\n\r\n第九：接下任务，别忘记要在15分钟内完成支付的操作，15分钟内，在淘宝付款后，也切忌别忘了回到平台点击【我已付款】，如果超时没有点击支付，任务将退出重返任务大厅；', '1300818001');
INSERT INTO `bf_posts` VALUES ('58', '28', '3', '美乐管理员', '1', '0', '【美乐强调】美乐刷客积分与接发任务数量对应关系', '在美乐平台中，您的可同时操作任务数量直接同您的美乐平台积分挂钩的哦，下面就了解一下具体的功能与积分要求吧！\r\n\r\n[b][/b][table][tr][td][color=#0066cc]积分区间[/color][/td][td]同时接手任务数[/td][td][color=#0066cc]同时发布任务数[/color][/td][/tr][tr][td]0-100[/td][td]10[/td][td]10[/td][/tr][tr][td]101-1000[/td][td]20[/td][td]20[/td][/tr][tr][td]1001-3000[/td][td]70[/td][td]35[/td][/tr][tr][td]3000或VIP[/td][td]130[/td][td]100[/td][/tr][tr][td]VIP+卡信托[/td][td]130[/td][td][b]1000[/b][/td][/tr][/table]\r\n\r\n[b]注：可同时进行的任务指：您已经发布或者接手但是还没有完成的任务数，与时间无关；[/b]\r\n\r\n   ', '1360046284');
INSERT INTO `bf_posts` VALUES ('59', '29', '3', '美乐管理员', '1', '0', '【新手必读】任务商品价格与所需基本兔粮数的对应关系', '[b]发布任务商品价格与所需基本兔粮数的对应关系[/b]\r\n\r\n发布方发布任务需要消耗一定的兔粮，消耗的兔粮数目随任务担保价不同而不同；请看下表\r\n\r\n[b][color=#fe2419][/color][/b]\r\n\r\n[table][tr][td=1,1,103]\r\n\r\n[font=宋体]任务价格[/font]\r\n\r\n[/td][td=1,1,84]\r\n\r\n[font=宋体]任务基本兔粮[/font]\r\n\r\n[/td][td=1,1,120]\r\n\r\n[font=宋体]新用户接手获得兔粮[/font](100%)\r\n\r\n[/td][td=1,1,120]\r\n\r\n[font=宋体]普通老用户接手获得兔粮[/font](85%)\r\n\r\n[/td][td=1,1,120]\r\n\r\nVIP[font=宋体]老用户接手获得兔粮[/font](90%)\r\n\r\n[/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]1-40[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]1[/color][/align][/td][td=1,1,120][align=center][color=#000000]1[/color][/align][/td][td=1,1,120][align=center][color=#000000]0.85[/color][/align][/td][td=1,1,120][align=center][color=#000000]0.9[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]41-80[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]1.5[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.5[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.275[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.35[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]81-120[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]2[/color][/align][/td][td=1,1,120][align=center][color=#000000]2[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.7[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.8[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]121-200[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]3[/color][/align][/td][td=1,1,120][align=center][color=#000000]3[/color][/align][/td][td=1,1,120][align=center][color=#000000]2.55[/color][/align][/td][td=1,1,120][align=center][color=#000000]2.7[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]201-500[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]4[/color][/align][/td][td=1,1,120][align=center][color=#000000]4[/color][/align][/td][td=1,1,120][align=center][color=#000000]3.4[/color][/align][/td][td=1,1,120][align=center][color=#000000]3.6[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]501-1000[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]5[/color][/align][/td][td=1,1,120][align=center][color=#000000]5[/color][/align][/td][td=1,1,120][align=center][color=#000000]4.25[/color][/align][/td][td=1,1,120][align=center][color=#000000]4.5[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]1001-1500[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]6[/color][/align][/td][td=1,1,120][align=center][color=#000000]6[/color][/align][/td][td=1,1,120][align=center][color=#000000]5.1[/color][/align][/td][td=1,1,120][align=center][color=#000000]5.4[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]1501-1999[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]7[/color][/align][/td][td=1,1,120][align=center][color=#000000]7[/color][/align][/td][td=1,1,120][align=center][color=#000000]5.95[/color][/align][/td][td=1,1,120][align=center][color=#000000]6.3[/color][/align][/td][/tr][/table]\r\n\r\n[color=#5c585a][b]上面新用户指指平台积分=300分的用户[/b][/color]\r\n\r\n[b]（[color=#307f00]注：为了保证平台能够长期维持良好的运作，给大家提供一个免费安全高效的互动场所，对于经验值达到三百的老用户平台会[color=#307f00]从奖励给接手方的每个兔粮中抽取0.15个（VIP 0.1个）兔粮作为任务损耗；扣除的损耗主要用于[/color]平台购买维护服务器与租用宽带与机房的费用、租用办公场所、开销客服工资、技术部门研发、推广等等一系列的开支，所以请各位会员理解并继续支持[/color][color=#307f00]；[/color]）[/b]\r\n\r\n[b][color=#013add]淘宝商城套餐链接的任务，计算方法不按照套餐总价计算而是按照套餐内各个商品的标价分别结算对应兔粮然后求和（与购物车任务相同）！[/color][/b]', '1300818093');
INSERT INTO `bf_posts` VALUES ('60', '30', '3', '美乐管理员', '1', '0', '【新手必读】任务商品价格与所需基本兔粮数的对应关系', '[b]发布任务商品价格与所需基本兔粮数的对应关系[/b]\r\n\r\n发布方发布任务需要消耗一定的兔粮，消耗的兔粮数目随任务担保价不同而不同；请看下表\r\n\r\n[b][color=#fe2419][/color][/b]\r\n\r\n[table][tr][td=1,1,103]\r\n\r\n[font=宋体]任务价格[/font]\r\n\r\n[/td][td=1,1,84]\r\n\r\n[font=宋体]任务基本兔粮[/font]\r\n\r\n[/td][td=1,1,120]\r\n\r\n[font=宋体]新用户接手获得兔粮[/font](100%)\r\n\r\n[/td][td=1,1,120]\r\n\r\n[font=宋体]普通老用户接手获得兔粮[/font](85%)\r\n\r\n[/td][td=1,1,120]\r\n\r\nVIP[font=宋体]老用户接手获得兔粮[/font](90%)\r\n\r\n[/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]1-40[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]1[/color][/align][/td][td=1,1,120][align=center][color=#000000]1[/color][/align][/td][td=1,1,120][align=center][color=#000000]0.85[/color][/align][/td][td=1,1,120][align=center][color=#000000]0.9[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]41-80[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]1.5[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.5[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.275[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.35[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]81-120[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]2[/color][/align][/td][td=1,1,120][align=center][color=#000000]2[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.7[/color][/align][/td][td=1,1,120][align=center][color=#000000]1.8[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]121-200[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]3[/color][/align][/td][td=1,1,120][align=center][color=#000000]3[/color][/align][/td][td=1,1,120][align=center][color=#000000]2.55[/color][/align][/td][td=1,1,120][align=center][color=#000000]2.7[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]201-500[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]4[/color][/align][/td][td=1,1,120][align=center][color=#000000]4[/color][/align][/td][td=1,1,120][align=center][color=#000000]3.4[/color][/align][/td][td=1,1,120][align=center][color=#000000]3.6[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]501-1000[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]5[/color][/align][/td][td=1,1,120][align=center][color=#000000]5[/color][/align][/td][td=1,1,120][align=center][color=#000000]4.25[/color][/align][/td][td=1,1,120][align=center][color=#000000]4.5[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]1001-1500[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]6[/color][/align][/td][td=1,1,120][align=center][color=#000000]6[/color][/align][/td][td=1,1,120][align=center][color=#000000]5.1[/color][/align][/td][td=1,1,120][align=center][color=#000000]5.4[/color][/align][/td][/tr][tr][td=1,1,103]\r\n\r\n[color=red]1501-1999[/color][color=red][font=宋体]元[/font][/color]\r\n\r\n[/td][td=1,1,84][align=center][color=blue]7[/color][/align][/td][td=1,1,120][align=center][color=#000000]7[/color][/align][/td][td=1,1,120][align=center][color=#000000]5.95[/color][/align][/td][td=1,1,120][align=center][color=#000000]6.3[/color][/align][/td][/tr][/table]\r\n\r\n[color=#5c585a][b]上面新用户指指平台积分=300分的用户[/b][/color]\r\n\r\n[b]（[color=#307f00]注：为了保证平台能够长期维持良好的运作，给大家提供一个免费安全高效的互动场所，对于经验值达到三百的老用户平台会[color=#307f00]从奖励给接手方的每个兔粮中抽取0.15个（VIP 0.1个）兔粮作为任务损耗；扣除的损耗主要用于[/color]平台购买维护服务器与租用宽带与机房的费用、租用办公场所、开销客服工资、技术部门研发、推广等等一系列的开支，所以请各位会员理解并继续支持[/color][color=#307f00]；[/color]）[/b]\r\n\r\n[b][color=#013add]淘宝商城套餐链接的任务，计算方法不按照套餐总价计算而是按照套餐内各个商品的标价分别结算对应兔粮然后求和（与购物车任务相同）！[/color][/b]', '1300818093');
INSERT INTO `bf_posts` VALUES ('61', '31', '3', '美乐管理员', '1', '0', '【发布任务】发布任务增值服务区详解', '[b][color=#0000ff]大家在发布任务时可以看到在发布任务页面下方有个蓝色框框住的区域；这里边的所有功能都是增值功能了；现在我给大家详细讲解一下增值功能区的各项功能的详细用处：[/color]\r\n\r\n[color=#0000ff]功能一：规定好评内容[/color][/b]：您可以规定接手方在淘宝交易好评时填写规定的内容。让你的信誉记录丰富多彩；你发布的任务规定了好评内容以后，接手人在已接手任务的任务列表右侧将会看到【复制好评内容】的按钮；只要点击一下按钮就可以将你要求的好评内容复制到剪贴板里了；在好评时是要黏贴一下就可以把你规定的好评内容填写到好评里；该功能需额外支付兔粮:0.1个；\r\n\r\n[img=,421,91]/img/bbs/2013/02/27AF.jpg[/img]\r\n\r\n[b][color=#0000ff]功能二：审核接手人[/color][/b]：接手者接您任务后，要您亲自审核才可看到商品地址，对刷实物商家特别有用；你可以完全按照你的要求来人工筛选接手人！审核接手人的任务，在接手人绑定买号后，并不能直接进入待付款状态，而是要多一个【等待接手人审核】的任务状态；在发布人亲自审核了接手人通过以后才能，把任务继续下去；该功能需额外支付兔粮：0.3个；\r\n\r\n[img=,443,91]/img/bbs/2013/02/27B2.jpg[/img]\r\n\r\n每个审核接手人任务发布人有三次免费辞退接手人的机会；超过三次每辞退一个接手人，系统会额外扣除发布人0.2个兔粮；\r\n\r\n[img=,442,111]/img/bbs/2013/02/27B5.jpg[/img]\r\n\r\n[b][color=#0000ff]功能三：百分百真实：[/color][/b]要求买家只能在卖方虚拟发货12小时后才能淘宝及平台确认收货，否则接手方将只能得到50%的任务兔粮；这样的任务在发布人平台确认发货后，接手人会在已接手任务列表里看到一个收货倒计时时钟；只有倒计时结束才允许进行收货；该功能需额外支付0.5个兔粮；\r\n\r\n[color=#0000ff][b]功能四：自动过滤接手人：[/b][/color]您可以设置接手人的最低资质要求，系统将自动为您过滤掉不合格的接手人。（这里切忌把过滤条件设置的太高啊，这样会影响你的任务的接手速度的）每个选项每条任务需额外支付0.1个兔粮\r\n\r\n功能五：计划发布任务：设定任务计划发布的时间，平台将在您规定的时间自动为您发布到互动区。额外支付的0.1个兔粮\r\n\r\n[img=,402,258]/img/bbs/2013/02/27B8.jpg[/img]\r\n\r\n设定好后该功能就是能实现您这个任务在您点击确认以后不会立刻尽到互动区内；而是放在计划区内等待发布；此时您可以到这里看到你的待发任务：\r\n[img=,518,120]/img/bbs/2013/02/27BB.jpg[/img]\r\n\r\n[b]当您设定的时间到了以后，平台自动将该条任务发布到互动区中！[/b] ', '1360048938');
INSERT INTO `bf_posts` VALUES ('62', '32', '3', '美乐管理员', '1', '0', '【新功能】新用户“免费发布一元体验任务”功能上线！', '[color=#ff0000]好消息，新用户的福音来了呵呵！[/color]平台采纳了大家的意见，为了广大刷客能够尽快的掌握平台刷信誉的操作流程，\r\n特意为每位新用户提供一次[b]免费发布[/b][color=#ff0000]“一元体验任务”[/color]的机会；\r\n发布成功后【体验任务】将出现在新手互动区；【体验任务】只能具有【美乐教官】资格的老刷客才能接手哦；\r\n美乐教官会在和您做任务的过程中手把手教您一步一步完成整个任务流程！\r\n如何申请【美乐教官】详情请移步（[url]http://www.hiwinwin.com/bbs/Thread.aspx?id=140[/url]）\r\n\r\n[b][color=#fe2419]发布一元体验任务有什么注意事项：\r\n[/color][color=#000000] [/color][/b][color=#000000][color=#000000]一、因为任务值已经固定为一元钱了，所以切记这个任务里发布的你的淘宝店商品价格改为一元哦！[/color]\r\n[color=#000000] 二、为了你的体验任务流程走的更快，我们建议任务好评时限最好选为[color=#fe2419]“立刻好评[/color]”；\r\n[/color] 三、还有一点最重要，尽量不要在发任务的增值服务区把接手人自动过滤条设置的太高啊！！不然可能很久都没人来接手这个任务哦呵呵\r\n[color=#000000]设置[/color][b][color=#000000]小窍门：如果你的网店商品，都比较贵，建议新建一个小的零配件之类的商品作为任务商品，来体验我们的免费任务！[/color][/b][/color]\r\n\r\n[b][color=#fe2419]如何发布一元体验任务？[/color][/b]\r\n一、您如果是美乐新注册的用户，在积分满15分之前，每次进入新手互动区，平台都会弹出提示框如下图：\r\n[img=,501,326]http://www.hiwinwin.com/upload/2010/3/4/487e03fa-bb22-4050-b58f-d596869d8fd2.jpg[/img]\r\n这时你点击提示框中橘红色的超链接：[color=#ff0000]“现在就发布体验任务”[/color][color=#ff7a4e][color=#000000] 就可以进入一元体验任务发布页面了哦；\r\n[/color][/color]\r\n\r\n二、为了不打扰您的正常操作，在您的平台[color=#fe2419][b]积分超过15分[/b][/color]后，再进入新手互动区就不会弹出这个提示框了；这时如果您想发布一元体验任务了，您就可以在新手互动区上部的提示区域内看到如下信息，点击其中红色超链接[color=#ff7a4e]“现在就发布体验任务”[/color]仍然能发布体验任务哦：\r\n\r\n[color=#ff7a4e][img=,700,74]http://www.hiwinwin.com/upload/2010/3/4/b03e6701-ac10-439f-a95c-7b991fbe8c95.jpg[/img]\r\n\r\n[color=#fe2419][b]特别提示：这个任务中的一元任务押金是平台提供的哦，所以你不需要在平台充一分钱押金就可以获得一个卖家信誉了啊呵呵！\r\n[/b][/color][/color]', '1300818173');
INSERT INTO `bf_posts` VALUES ('63', '33', '3', '美乐管理员', '1', '0', '【发布任务】善用发布任务模板', '[b][color=#0000ff]各位经常发布任务的朋友，美乐为你们量身定制了发布任务模板功能；[/color][/b]\r\n\r\n你可以把经常要发布的任务，保存成模板；\r\n\r\n[img=,450,136]/img/bbs/2013/02/275F.jpg[/img]\r\n\r\n再下次发布任务时只要选择从模板创建就可以这个任务的所有信息自动填写进任务发布页；真正实现一键发任务了呵呵（批量发布任务功能模板暂时没有开放；）\r\n[img=,416,103]/img/bbs/2013/02/2762.jpg[/img]\r\n\r\n[b]小窍门：模板的名字最好和任务商品本身有关好些，这样下次用时才一目了然啊；\r\n\r\n模板数量限制：[/b]\r\n普通用户最多可保存三个任务发布模板，信托会员可保存五个任务发布模板尊享VIP可拥有十个任务发布模板 ', '1360047506');
INSERT INTO `bf_posts` VALUES ('64', '34', '3', '美乐管理员', '1', '0', '【美乐规定】任务价必须大于商品标价一半以上', ' [b]本规定是针对淘宝的全新稽查系统指标之一：【支付宝使用率】而特别推出的新规定！\r\n \r\n所谓支付宝使用率就是指：（商品实际售价+运费） / 商品标价；\r\n[/b] 淘宝推出这个指标主要针对那些为了能用最少的流动资金尽快提升自己网店信誉的初级刷客！他们很多时候，商品标价和市场价一致；但是为了低资金流刷钻，特别将平台任务担保价标的很低；这样有人接手他的任务时，在拍下该商品后，在付款前改价，再将实际售价狠降下来，以达到和平台任务价相同！\r\n \r\n [b]为了提醒初级刷客不要再钻这个风险很大的“漏洞”！！！[/b]\r\n 平台特别推出了任务价格监控程序，该程序在您发布任务提交确认时，自动检查任务担保价是否小于淘宝上该商品标价的一半；如果小于则提示用户调整任务价格；\r\n \r\n [color=#f10b00][b]为了大家辛苦经营的网店的安全，请大家切记千万不要[color=#f10b00]贪小便宜吃大亏啊！[/color][/b][/color] ', '1358766787');
INSERT INTO `bf_posts` VALUES ('65', '35', '3', '美乐管理员', '1', '0', '【发布任务】批量发布任务教程详解', ' [color=#0000ff][b]该功能可以方便的进行批量发布任务操作，实现任务计划连发；提高刷钻效率，事半功倍。为您节省出宝贵的时间；[/b][/color]\r\n\r\n[b][color=#ff0000]要求如下：[/color][/b]\r\n1. 你在平台中的存款中不得少于所有任务价总合；\r\n2. 您需要保证账户中拥有足够的兔粮数，连发任务将扣除所有任务所需兔粮数总和；\r\n3. 所有任务商品需归属一个网店掌柜； \r\n4.美乐平台只对VIP用户和卡信托客户开放批量发布任务功能；\r\n\r\n[color=#0000ff][b]第一步：[/b][/color]进入淘宝互动区（有啊互动区、拍拍互动区 都有此功能；）点击【批量发布任务】进入批量发布任务页面\r\n[img=,453,102]/img/bbs/2013/02/2705.jpg[/img]\r\n\r\n[b][color=#0000ff]第二步：[/color][/b]填写【掌柜名】【商品地址】【任务要求】等信息；\r\n[b][color=#0000ff]第三步：[/color][/b]点击【发布】按钮将任务发布出去\r\n\r\n为了保证发布人能够有充分的时间处理每个任务，美乐不会一次性把所有任务释放到互动区；而是以5分钟的递增间隔时间的频率来释放任务，任务间隔时间上限为30分钟；\r\n\r\n例如:您与10:00批量发布了十条任务，那么您的十条任务进入互动区的时间将是：\r\n[b][color=#013add]10:00[/color]\r\n[color=#013add]10:05[/color]\r\n[color=#013add]10:15[/color]\r\n[color=#013add]10:30[/color]\r\n[color=#013add]10:50[/color]\r\n[color=#013add]11:15[/color]\r\n[color=#013add]11:45[/color]\r\n[color=#f10b00]12:15[/color]\r\n[color=#f10b00]12:45[/color]\r\n[color=#f10b00]13:15[/color]\r\n\r\n还未到时间释放到互动区的任务，您可以在【已发任务】-【所有已发任务】里看到\r\n[/b][img=,518,120]/img/bbs/2013/02/2708.jpg[/img] ', '1360046471');
INSERT INTO `bf_posts` VALUES ('66', '36', '3', '美乐管理员', '1', '0', '【发布任务】掌柜热卖发布教程详解', '[color=#0000ff][b]该页面帮助掌柜打造热卖商品，众所周知买家的趋众心态，只要某商品成交记录够多就一定能吸引更多的买家跟风；美乐联盟独创热卖商品任务页面， 100%高效安全的为掌柜量身打造热卖商品；[/b][/color]\r\n\r\n[b][color=#ff0000]要求如下：[/color][/b]\r\n1.你在平台中的存款中不得少于任务价乘以发布次数；\r\n2.保证您拥有足够的兔粮数；\r\n3.为保证热卖交易记录的真实性，联盟强烈推荐使用计划发布！\r\n4.美乐平台只对VIP用户开放掌柜热卖发布任务功能；\r\n\r\n[b][color=#ff0000]为什么推出【掌柜热卖发布】功能：[/color][/b]\r\n\r\n大家知道现在淘宝页面查询结果页面的最新变化么？？看看下面这个图是什么\r\n[img=,666,224]/img/bbs/2013/02/2699.jpg[/img]\r\n\r\n大家可以看到红框里的按照销量排序的按钮了吧哈哈，这个就是今天的关键；\r\n淘宝已经在原来只有按照信用和价格的排序功能升级出了个按照销量排序的功能啊！\r\n[b][color=#fe2419]有了它，你的产品就可以永远排在列表的第一位！还愁卖不出么？快来体验一下吧！[/color]\r\n\r\n[color=#ff0000]【掌柜热卖发布】有什么特点！[/color][/b]\r\n为了对应这个淘宝的新变化，美乐在淘宝互动区，特别推出了【掌柜热卖发布】功能；\r\n这个功能的特点是发布人可以按照自己的意愿打造单个商品的销量，销售时间等数据哦\r\n你想让你的这个商品销量是多少就可以销售多少！\r\n你想让你的商品在什么时候销出去就销出去！\r\n是不是很强大呢哈哈\r\n\r\n[color=#ff0000][b]如何操作【掌柜热卖发布】功能！[/b][/color]\r\n进入美乐平台【淘宝互动区】--点击页面上方的【掌柜热卖发布】按钮，就会进入该功能了哦！[img=,595,111]/img/bbs/2013/02/269C.jpg[/img]\r\n\r\n进入该功能界面后，您就能看到这个界面同【单个发布任务】很相像哦；但是关键的区别在这里在这里哈哈：\r\n[b]第一：设定任务发布次数[/b]\r\n[img=,636,51]/img/bbs/2013/02/269F.jpg[/img]\r\n[b]第二：可以计划任务发布的时间[/b]！\r\n[img=,391,252]/img/bbs/2013/02/26A2.jpg[/img]\r\n\r\n这样就能打造你自己的热销商品了哦哈哈，简单吧；\r\n\r\n[b]第三：[/b]点击【发布】按钮将任务发布出去\r\n\r\n为了保证发布人能够有充分的时间处理每个任务，美乐不会一次性把所有任务释放到互动区；而是以5分钟的递增间隔时间的频率来释放任务，任务间隔时间上限为30分钟；\r\n\r\n例如:您与10:00批量发布了十条任务，那么您的十条任务进入互动区的时间将是：\r\n[b][color=#013add]10:00[/color]\r\n[color=#013add]10:05[/color]\r\n[color=#013add]10:15[/color]\r\n[color=#013add]10:30[/color]\r\n[color=#013add]10:50[/color]\r\n[color=#013add]11:15[/color]\r\n[color=#013add]11:45[/color]\r\n[color=#f10b00]12:15[/color]\r\n[color=#f10b00]12:45[/color]\r\n[color=#f10b00]13:15[/color]\r\n\r\n还未到时间释放到互动区的任务，您可以在【已发任务】-【所有已发任务】里看到\r\n[/b][img=,518,120]/img/bbs/2013/02/26A5.jpg[/img]\r\n\r\n[b]注：为了保障VIP的优先性，先该功能只针对平台的尊享VIP会员开放哦！[/b] ', '1360044490');
INSERT INTO `bf_posts` VALUES ('142', '101', '3', '美乐管理员', '1', '0', '【新手入门】如何使用卡密充值，卡密充值流程详解', ' 注意事项：\r\n\r\n[b][size=4][/size][size=4]1.为了避免充值后恶意退款现象，充值卡只有在您[color=#ff0000]确认收货[/color]后，充值卡密才能激活；请收货后联系充值专员激活卡密；[/size][/b]\r\n\r\n[b][size=4]2.本店由人工职守，发货时间[color=#ff0000]9：30-17：30 19：30-22：00[/color]；如遇拍下商品后[color=#ff0000]五分钟[/color]仍未发货，请联系双赢充值客服[color=#ff0000]QQ:914527864[/color]；[/size][/b]\r\n\r\n[b][size=4]3.充值卡密激活有时间限制，请 【激活卡密 --> 平台充值】，时间不要超过[color=#ff0000]20分钟[/color]；[/size][/b]\r\n\r\n[b][size=4]4.卡密信息请于卖家发货后到“已买到宝贝”的[color=#ff0000]物流信息[/color]里查看；[/size][/b]\r\n\r\n[b][size=4][color=#ff0000]5[/color][color=#ff0000].第一次来充值的朋友请认真阅读下面的卡密充值教程哦[/color][/size][/b]\r\n\r\n[b]===============================================================================================美乐网[color=#0000ff][size=4]-卡密充值教程[/size][/color][/b]\r\n\r\n[b][color=#0000ff][size=4][/size][/color][/b]\r\n\r\n[b][size=4]第一步：[/size][/b]点击本卡密商品页[img=,144,40]/img/bbs/2013/02/26B2.gif[/img] 按钮，拍下并且确认支付交易；卡密发放程序会在[b][color=#ff0000]一分钟[/color][/b]内自动将所购卡密资料[color=#ff0000][b]以站内信的形式发送到您的美乐账户内[/b][/color]，请登录双赢后自行查看；\r\n\r\n在淘宝[b][color=#ff0000]“确认购买信息”[/color][/b]页面操作提示：[url=http://www.mei-le.com][color=#ffffff]www.mei-le.com[/color][/url]\r\n\r\n[b][size=4]第二步：[/size][/b]进入【[b][color=#0000ff]我的淘宝-已买到的宝贝[/color][/b]】页面，刷新页面查看充值卡密的交易记录，等卖家发货后点击[img=,65,24]/img/bbs/2013/02/26B5.gif[/img] 进行确认收货操作；（如下图）\r\n\r\n[size=4][b]第三步：[color=#ff0000]使用第一步中“游戏账号”处填写的双赢账号[/color][/b][/size][color=#0000ff][b]登录美乐[/b][/color]，点击首页上方[b][color=#0000ff]站内信[/color][/b]，进入[color=#0000ff][b]官方收件箱[/b][/color]查看系统发送给您的充值卡密：\r\n\r\n[img=,507,227]/img/bbs/2013/02/26AF.jpg[/img]\r\n\r\n[b][size=4]第四步：[/size][/b]回到【[b][color=#0000ff]联盟中心-帐号充值[/color][/b]】页面（如下图），将得到的卡号与密码信息输入后点击[img]http://www.hiwinwin.com/upload/2011/10/19/0a7a2cc9-eece-44af-a0f1-5520c10bc926.gif[/img] 为您的双赢平台帐号充值；\r\n\r\n[img]/img/bbs/2013/02/26AC.jpg[/img]', '1360044880');
INSERT INTO `bf_posts` VALUES ('67', '37', '3', '美乐管理员', '1', '0', '【卖家教程】美乐如何绑定卖号(大号，掌柜号)', ' 下面以绑定淘宝掌柜号为例进行说明\r\n[b]第一步：登录美乐后，进入新手互动区--选择【绑定掌柜】[/b]\r\n[img=,596,193]/img/bbs/2013/02/2755.jpg[/img]\r\n\r\n[b]第二步：进入绑定掌柜页面后，在输入框里输入您要绑定的淘宝掌柜账号，然后点击【添加绑定该掌柜】即可[/b]\r\n[img=,700,182]/img/bbs/2013/02/2758.jpg[/img] ', '1360047458');
INSERT INTO `bf_posts` VALUES ('68', '38', '3', '美乐管理员', '1', '0', '【申诉相关】如何发起任务申诉', ' 在任务进行过程中，发现对方有卡任务或者提前收货，甚至诈骗的嫌疑时您就可以对任务对方提起申诉；\r\n只要点击任务列表右侧的【发起申诉】按钮就可以进入申诉界面填写申诉内容了；', '1300818402');
INSERT INTO `bf_posts` VALUES ('69', '39', '3', '美乐管理员', '1', '0', '【兽兽讲堂】如何发起申诉，申诉注意事项，任务申诉须知', '[b][color=#0000ff]各位新老朋友大家好，今天我来给大家讲讲美乐平台的[/color][color=#ff0000]【申诉功能】[/color][/b]\r\n\r\n熟话说得好，常在河边走哪有不湿鞋；在平台做任务做多了难免碰到一个半个不守规矩的刷客；\r\n如果真的碰到任务对方故意卡任务，或者不按步骤来做任务时，我们该怎么办啊？除了使用QQ，站内信，甚至短信提醒对方以外，平台还为我们提供了一个有力武器，那就是【任务申诉】功能；\r\n\r\n[b][color=#0000ff]第一步：[/color][/b]\r\n\r\n大家在任务互动区中，【已接手】或者【已发布】 的任务中，进行中的任务列表随便找一个任务，看任务的右侧几乎都会有一个蓝色的小按钮[color=#0000ff]【发起申诉】[/color]；这表示在几乎所有状态都能对任务对方发起申诉的；如下图：\r\n\r\n[img=,432,70]/img/bbs/2013/02/268D.jpg[/img]\r\n\r\n[color=#0000ff][b]第二步：[/b][/color]\r\n\r\n点击【发起申诉】按钮就能对该条任务发起申诉了，下面是申诉内容填写界面：\r\n[img=,407,210]/img/bbs/2013/02/2690.jpg[/img]\r\n首先要正确的选择好【投诉类别】，也就是投诉标题；这样美乐申诉专员才能对你要申诉的内容一目了然；美乐平台在你发起申诉时会自动根据当前任务状态可能发生的异常情况，提供给不同的类别选项，各位只要在下拉列表中找到适合自己的选中它就好了；\r\n\r\n然后，就可以在下方的【投诉内容描述框】里填写你要投诉的任务的详细情况了，[b][color=#0000ff]这里一定要描述详细一些[/color][/b]，这里懒得填写清楚，换来的结果就是投诉专员更长时间的调查和二次取证；那就和你提起申诉的目的背道而驰了你说是么？\r\n\r\n[b][color=#0000ff]有一点我在这里一定要严重的强调一下：[/color]\r\n[color=#ff0000]务必对该任务涉及的淘宝交易进行截图，来证明你的描述内容；切记切记；不然申诉专员怎么知道你说的是真的还是被申诉人说的是真的呢？？？记住这句话，有图有真相！[/color][/b]\r\n\r\n[color=#0000ff]有个需要特殊说明，如果接手人在平台点了我已支付，但是在淘宝压根就没拍，那么你的淘宝交易记录里根本就没有这个交易，怎么截图呢？[/color]\r\n\r\n[color=#0000ff]处理方法是，把交易列表中接手人接手任务时间后，一个小时以内的交易记录列表进行截图；[/color]\r\n\r\n[b][color=#0000ff]上传图片的方法：[/color][/b]直接点击详情描述编辑框右上角的小树图标，就可以上传了哦：\r\n\r\n[img=,206,65]/img/bbs/2013/02/2693.jpg[/img]\r\n\r\n[b][color=#0000ff]第三步：[/color][/b]\r\n\r\n发起任务申诉后，平台会根据投诉内容自动判断是否需要锁定任务；你可以到【联盟中心】---【申诉中心】里看到你发起的申诉或者收到的申诉；\r\n任务申诉提交了以后，为了公平起见，美乐会给被申诉方[color=#ff0000][b]36个小时[/b][/color]的反应期；这期间，被申诉人可以选择解决问题然后申请撤销申诉，或者选择上传证据，跟申诉人提交给申诉专员来裁决；\r\n\r\n[color=#0000ff][b]第四步：[/b][/color]\r\n\r\n在任务满36小时后，美乐的申诉专员才有权限在后台处理你们的申诉，处理后的结果你们也就可以在【申诉中心】查看申诉结果了哦；\r\n[b][color=#ff0000]鼠标移上去能看到申诉结果处理的详情[/color][/b]（例如：任务结束还是继续，兔粮归属，任务押金归属 等等）\r\n\r\n[img]http://www.hiwinwin.com/upload/2010/3/14/73c3608c-9fdf-4970-be38-77657bd2a485.bmp[/img] ', '1360044301');
INSERT INTO `bf_posts` VALUES ('70', '40', '3', '美乐管理员', '1', '0', '【申诉相关】发起各类申诉需要满足的条件', '[size=6][b]【申诉相关】发起各类申诉需要满足的条件[/b][/size]\r\n\r\n[table][tr][td][i]本帖最后由 美乐官方 于 2010-11-03 10:55:27 编辑[/i] [table][tr][td][align=center][size=2][font=宋体]申诉类型[/font][/size][/align][/td][td][align=center][size=2][font=宋体]合法性检查[/font][/size][/align][/td][td][align=center][size=2][font=宋体]提示信息[/font][/size][/align][/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉接手方：接手方平台确认付款，但是淘宝却未支付！[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font] –[font=宋体]接手方平台确认支付时间[/font]>[font=宋体]两小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]你只有在接手方平台确认付款两小时后才能发起该项申诉[/font][/size]\r\n\r\n\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉接手方：接手方不及时确认收货！[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font] – [font=宋体]发布方平台确认发货时间[/font]>好评时限+8[font=宋体]小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2]24/48[font=宋体]小时好评任务只能在发布方平台确认发货八小时后才能发起该项申诉；[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉接手方：接手方不及时确认收货！[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font] – [font=宋体]发布方平台确认发货时间[/font]>3[font=宋体]小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]马上好评任务只能在发布方平台确认发货三小时后才能发起该项申诉；[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉发布方：我已支付，发布方网店长期不确认发货！[/font][/size]\r\n\r\n\r\n\r\n[size=2][font=宋体]投诉发布方：我已支付，发布方平台长期不确认发货！[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font] –[font=宋体]接手方平台确认支付时间[/font]>8[font=宋体]小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]只能在接手方平台确认付款八小时后才能发起该项申诉[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉发布方：我已确认收货，发布方平台不最后确认[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font] – [font=宋体]接手方平台确认收货时间[/font]>8[font=宋体]小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]只能在接手方平台确认好评八小时后才能发起该项申诉[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉接手方：立刻好评任务，长时间未好评[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font]-[font=宋体]发布方平台确认收到货款时间[/font] > [font=宋体]三小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]只能在超过好评时限三小时后才能发起该项申诉[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉接手方：[/font]24[font=宋体]小时好评任务，到期未好评[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font]-[font=宋体]发布方平台确认收到货款时间[/font] > 24+24[font=宋体]小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]只能在超过好评时限[/font]24[font=宋体]小时后才能发起该项申诉[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]投诉接手方：[/font]48[font=宋体]小时好评任务，到期未好评[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]当前时间[/font]-[font=宋体]发布方平台确认收到货款时间[/font] > 48+24[font=宋体]小时[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]只能在超过好评时限[/font]24[font=宋体]小时后才能发起该[/font][/size]\r\n\r\n[/td][/tr][/table][/td][/tr][/table]', '1300818472');
INSERT INTO `bf_posts` VALUES ('71', '41', '3', '美乐管理员', '1', '0', '【申诉相关】在任务不同状态时美乐允许申诉的项目', '[size=6][b]【申诉相关】在任务不同状态时美乐允许申诉的项目[/b][/size]\r\n\r\n[table][tr][td][i]本帖最后由 美乐教官 于 2010-03-17 16:49:33 编辑[/i] \r\n\r\n[table][tr][td][align=center][b][size=2][font=宋体]发起申诉人[/font][/size][/b][/align][/td][td][align=center][b][size=2][font=宋体]任务状态[/font][/size][/b][/align][/td][td][align=center][b][size=2][font=宋体]显示可选申诉标题[/font][/size][/b][/align][/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]发布方[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]接手方已确认付款，等待发布方发货[/font][/size]\r\n\r\n[/td][td][/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]发布方已发货，百分百真实任务未到期收货[/font][/size]\r\n\r\n[/td][td][/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]发布方已发货，等待接手方确认收货[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]投诉接手方：接手方不及时确认收货！[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]接手方已平台确认收货[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2]1.[font=宋体]投诉接手方：接手方平台确认收货，但是淘宝上却未确认；[/font][/size]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[size=2]2.[font=宋体]投诉接手方：接手方平台确认收货，但是淘宝上却为申请退款；[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]已确认收到货款，等待接手方好评[/font][/size]\r\n\r\n[/td][td][/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]接手方已提交好评，任务结束[/font][/size]\r\n\r\n[/td][td][/td][/tr][tr][td]\r\n\r\n[size=2][font=宋体]接手方[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]接手方已支付，等待发布方发货[/font][/size]\r\n\r\n[/td][td][/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]发布方已发货，百分百真实任务未到期收货[/font][/size]\r\n\r\n[/td][td][/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]发布方已发货，等待接手方确认收货[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]投诉发布方：发布方淘宝未发货，就平台发货！[/font][/size]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n\r\n\r\n[size=2] [/size]\r\n\r\n[/td][td]\r\n\r\n[size=2][font=宋体]接手方已确认收货，等待发布方确认[/font][/size]\r\n\r\n[/td][td]\r\n\r\n[font=宋体][size=2]投诉发布方：我已确认收货，发布方平台不最后确认！[/size][/font]\r\n\r\n[/td][/tr][/table]\r\n\r\n[/td][/tr][/table]', '1300818528');
INSERT INTO `bf_posts` VALUES ('72', '42', '3', '美乐管理员', '1', '0', '【申诉相关】如何处理任务对方发起的申诉，收到申诉怎么办', ' 第一：首先收到对方的申诉不要慌；先到【联盟中心】--【申诉中心】页面中查看【我收到的申诉】\r\n了解对方申诉自己的内容；是否和事实相符；美乐会给每个被申诉人36个小时的处理时间，来解决问题或者提交证明材料；\r\n第二：\r\nA.如果申诉的问题属实，可以先试着解决申诉中的问题；在申诉中的问题解决后，点击【申请撤诉】按钮，像申诉发起人提交撤诉申请；同时可以通过任务列表中的QQ和短信等方式联系对方；\r\nB.申诉发起人同意撤销申诉，那么这个申诉就成功解决了；如果申诉发起人不同意撤销申诉，就会将申诉走到美乐裁决阶段了；\r\n第三：\r\n如果您觉得申诉的问题不符合事实，您也可以选择提交证据；在申诉发起满36小时之前您都可以对申诉事实提交不同的证据；\r\n\r\n36小时过后，美乐的申诉专员将会根据你们提交的材料来裁决申诉结果；', '1300818560');
INSERT INTO `bf_posts` VALUES ('73', '43', '3', '美乐管理员', '1', '0', '【申诉相关】提交申诉证据时的注意事项', '[color=#000000]申诉证据[/color][color=#0000ff][color=#000000]一定要描述详细一些[/color][/color]，这里懒得填写清楚，换来的结果就是投诉专员更长时间的调查和二次取证；那就和你提起申诉的目的背道而驰了你说是么？\r\n\r\n[b][color=#0000ff]有一点我在这里一定要严重的强调一下：[/color]\r\n[color=#ff0000]一定要对该任务涉及的淘宝交易进行截图，来证明你的描述内容；切记切记；不然申诉专员怎么知道你说的是真的还是被申诉人说的是真的呢？？？记住这句话，有图有真相！[/color][/b]\r\n\r\n[color=#0000ff]有个需要特殊说明，如果接手人在平台点了我已支付，但是在淘宝压根就没拍，那么你的淘宝交易记录里根本就没有这个交易，怎么截图呢？[/color]\r\n\r\n[color=#0000ff]处理方法是，把交易列表中接手人接手任务时间后，一个小时以内的交易记录列表进行截图；[/color]\r\n\r\n[b][color=#0000ff]上传图片的方法：[/color][/b]直接点击详情描述***框右上角的小树图标，就可以上传了哦：\r\n\r\n[img=,206,65]/img/bbs/2013/02/27A8.jpg[/img] ', '1360048733');
INSERT INTO `bf_posts` VALUES ('74', '44', '3', '美乐管理员', '1', '0', '【申诉相关】如何查看申诉裁决结果', '在申诉满36小时后，美乐的申诉专员才有权限在后台处理你们的申诉，处理后的结果你们也就可以在【申诉中心】查看申诉结果了哦；\r\n[b][color=#ff0000]\r\n鼠标移到该条申诉右侧的小短信标志上，就能看到申诉结果处理的详情[/color][/b]（例如：任务结束还是继续，兔粮归属，任务押金归属 等等）\r\n\r\n[img=,395,111]/img/bbs/2013/02/27A5.jpg[/img] ', '1360048551');
INSERT INTO `bf_posts` VALUES ('75', '45', '3', '美乐管理员', '1', '0', '【美乐教程】如何增加存款，如何充值，怎样充值；', '[b][color=#000000]大家都知道在平台发任务是需要抵押和任务金额等值的押金的；任务押金[/color][color=#000000]是从[/color][color=#000000]我[/color]们的美乐账户中扣除的；那么我们怎么才能让我们的美乐账户中有存款呢？其实是有多种方法的哦；\r\n\r\n[color=#013add]第一种方法：[/color][/b]去任务互动区接手别人的任务；这样任务结束后，您平台上的账户就获得了任务发布方的任务押金了；这样您的帐户里就有钱了哦；\r\n\r\n[b][color=#013add]第二种方法：[/color][color=#f10b00]在线自动充值卡卡密充值[/color][/b][color=#013add]；（[/color][url=http://www.mei-le.com/bbs/t101/][color=#013add]卡密充值详细教程[/color][/url]）\r\n[b]第一步：[/b] 在美乐首页点击【存款充值】进入美乐充值中心\r\n\r\n[img=,423,124]/img/bbs/2013/02/26BC.jpg[/img] \r\n\r\n[b]第二步：[/b]进入充值中心后，您可以看到美乐提供了四种充值方式，首先是【在线自动充值卡】\r\n[url=http://www.mei-le.com/img/bbs/2013/02/26AC.jpg][img=,563,669]http://www.mei-le.com/img/bbs/2013/02/26AC.jpg[/img][/url] \r\n选择要充值的金额后，点击相应的金额链接进入美乐淘宝官方网店购买充值卡就行了；美乐平台店是自动发货的哦；在购买到充值卡后将得到的卡密信息直接填入下方的空格内然后点击【立即充值】就完成了充值了哦；\r\n\r\n[b][color=#013add]第三种方法：[/color][color=#fe2419]网上银行充值[/color][/b]   \r\n[color=#000000]这种方法更加[/color][color=#000000]快捷，直接点击【[/color]网上银行在线充值】 选择充值金额后，点击【去网上银行付款】按钮，按照提示一步步就可以直接给您的美乐帐号充值了哦\r\n[img=,548,258]/img/bbs/2013/02/26BF.jpg[/img]\r\n\r\n[b][color=#013add]第四种方法：[/color][color=#f10b00]支付宝转账充值[/color]   \r\n第一步：[/b]在美乐充值中心点击【支付宝转账充值】进入相应充值界面，填写好要支付汇款的支付宝帐号，和选择充值金额后，点击【提交充值申报】；\r\n[b]第二步：[/b]然后就可以去支付宝页面进行转账操作了哦；\r\n[b]（不会在支付宝网站转账的朋友可以到这里学习下：[/b][url=http://www.hiwinwin.com/bbs/Thread.aspx?id=836][b]http://www.mei-le.com/bbs/[/b][/url][b]）\r\n第三步：[/b]您在支付宝转账后就可以直接联系我们的充值专员（首页在线客服处有充值专员的QQ）；\r\n充值专员在确认收到了您的汇款后，第一时间将相应金额增加到您的美乐账户名下的；\r\n [img=,557,443]/img/bbs/2013/02/26C2.jpg[/img]\r\n\r\n[b][color=#013add]第五种方法：[/color][color=#f10b00]财付通转账充值[/color]   \r\n第一步：[/b]在美乐充值中心点击【财付通转账充值】进入相应充值界面，填写好要支付汇款的财付通帐号，和选择充值金额后，点击【提交充值申报】；\r\n[b]第二步：[/b]然后就可以去财付通网站进行转账操作了哦；\r\n[b]（不会在财付通网站转账的朋友可以到这里学习下：[url=http://www.mei-le.com/bbs/t102/][color=#33ccff]http://www.mei-le.com/bbs/t102/[/color][/url]）\r\n第三步：[/b]您在财付通转账后就可以直接联系我们的充值专员（首页在线客服处有充值专员的QQ）；\r\n充值专员在确认收到了您的汇款后，第一时间将相应金额增加到您的美乐账户名下的；\r\n[img=,552,456]/img/bbs/2013/02/26C5.jpg[/img]   ', '1360045604');
INSERT INTO `bf_posts` VALUES ('143', '102', '3', '美乐管理员', '1', '0', '【新手入门】如何在支付宝转账（新版支付宝）', '[size=6][b]【新手入门】如何在支付宝转账（新版支付宝）[/b][/size]\r\n\r\n[table cellspacing=\"0\" cellpadding=\"0\"][tr][td class=\"t_msgfont\"]有很多新人问我们的充值专员：“我怎么在支付宝给你们转账啊？”\r\n其实这属于淘宝的基本操作了，不过还是讲一下吧：\r\n\r\n[b]第一步：登陆支付宝网页[/b][url=http://www.alipay.com/][b]www.alipay.com\r\n\r\n[/b][/url][b]第二步：选择页面左上角的我的支付宝：[/b]\r\n[img=,469,129]/img/bbs/2013/02/26C8.jpg[/img]\r\n\r\n[b]第三步：滚动到页面下方看到【我要付款】的淡蓝色按钮：[/b]\r\n[img=,697,151]/img/bbs/2013/02/26CB.jpg[/img]\r\n\r\n[b]\r\n第四步：点击【我要付款】按钮进入转账页面：\r\n对方支付宝帐户：填写美乐官方充值帐号“13684823483”；\r\n付款理由：填写“充值”即可；\r\n付款金额：需要与平台申请中申请的金额一致才能及时入账；\r\n\r\n第五步：点击下一步进入付款信息确认页面：仔细检查过无误后点击【确认信息并付款】\r\n\r\n第六步：通过余额支付或者选择网银支付，输入支付密码后看到下面这样的页面后，就表示您已经支付成功了，你只要联系我们【充值专员】就可以即刻入账了；[/b]\r\n[img=,434,206]/img/bbs/2013/02/26CE.jpg[/img][/td][/tr][/table]', '1360045559');
INSERT INTO `bf_posts` VALUES ('76', '46', '3', '美乐管理员', '1', '0', '【账户资金】美乐账户内存款如何提现，提现教程，提现办法', '[b][color=#ff0000]美乐提现的规定细则可以参考[url=http://www.mei-le.com][color=#ffffff][size=1]www.mei-le.com[/size][/color][/url]\r\n\r\n提现教程如下：\r\n首先：其实最好的提现方式就是 在平台发布一个任务,这样信誉有了；钱也到帐拉.很方便的；[/color][/b]\r\n\r\n平台提供的提现方式有两种：在[b][color=#0000ff]【联盟中心】--【我要提现】[/color][/b] 就能进入您的提现申请页面；\r\n[img=,160,205]/img/bbs/2013/02/2672.jpg[/img]\r\n\r\n[b][color=#0000ff]您可以看到第一种官方提现方法：【淘宝商品地址提现】[/color][/b]\r\n\r\n这种方法说的简单点就是你在淘宝上发一个商品，然后把商品价格改成你要提现的金额一致；然后把这个商品的链接告诉我们；由我们的提现专员用一个淘宝账号去购买你的这个产品；这样任务结束就相当于你的存款从平台转移到了你的支付宝里了；这种方法是免收手续费的！所以我们也最推荐大家使用；\r\n[img=,539,363]/img/bbs/2013/02/2683.jpg[/img]\r\n\r\n[b][color=#0000ff]第二种官方提现方法是：【支付宝提现】[/color][/b]\r\n\r\n也就是你提供你的支付宝账号给我们，（[color=#f10b00]支付宝账号不同于淘宝账号哦，是手机号码或者email格式的，各位可别填错了耽误了提现[/color]）我们的提现专员会用我们的支付宝直接打款到你提供给我们的账户内；不过因为支付宝对于这种交易要收取手续费，为了收支平衡所以平台也按照支付宝的收费标准收取1.5%的手续费；\r\n\r\n[img=,533,359]/img/bbs/2013/02/2686.jpg[/img] ', '1360044076');
INSERT INTO `bf_posts` VALUES ('77', '47', '3', '美乐管理员', '1', '0', '【账户资金】您的美乐账户内存款有什么用处', ' 第一：美乐存款最主要的作用是会员发布任务时作为任务押金使用；发布任务时，美乐会冻结您账户名下和任务价格等额的任务押金；在任务结束后，由于买家在淘宝上给您付款了，所以您美乐上的押金就会转入买家的美乐账户中；\r\n\r\n第二：用来购买兔粮卡：有很多会员由于工作繁忙没有时间替别的会员接手任务来赚取兔粮，但是他发布任务又需要兔粮，就可以在点卡中心问美乐购买兔粮卡；\r\n\r\n第三：可以在购买美乐平台增值服务的时候使用：比如尊享VIP，特权道具卡，发送短信，购买快递服务.....时使用；', '1300818732');
INSERT INTO `bf_posts` VALUES ('78', '48', '3', '美乐管理员', '1', '0', '【新手必读】美乐平台盟平台提现规定细则', ' [table][tr][td][i]本帖最后由 美乐官方 于 2011-03-20 17:53:12 编辑[/i] \r\n\r\n[b][color=#307f00]==美乐提现功能入口（联盟中心-我要提现）==[/color]\r\n[url]http://mei-le.com/member/payment/[/url]\r\n\r\n[color=#307f00]==美乐平台提现规定细则==[/color][/b]\r\n\r\n积分不满五十分或是提现金额小于200元的用户，请通过在[b][color=#0000ff]互动区发任务[/color][/b]的方式提现，您的存款会于任务结束后，通过接手方支付货款的方式转移到您的网店支付宝账号中；[color=#ff0000][b]这样提现的好处是不受时间金额积分的限制，同时还能为您的店铺增加一个信誉度[/b][/color]；\r\n\r\n[b][color=#0000ff]【提现金额】：[/color][/b]以【[b]淘宝商品地址提现[/b]】方式提现的，商品链接金额不得低于[color=#ff0000][b]500[/b][/color]元；以【[b]支付宝提现[/b]】方式提现的，提现金额不得低于[color=#ff0000][b]200[/b][/color]元的提现；每日提现上限 普通用户[color=#ff0000][b]2000[/b][/color]，信托用户每日[color=#ff0000][b]3000[/b][/color]，VIP每日[b][color=#ff0000]6000[/color]\r\n\r\n[color=#0000ff]【提现次数】：[/color][/b]美乐积分满[color=#ff0000][b]50[/b][/color]以上用户开放官方提现功能、普通用户每日[color=#ff0000][b]一次[/b][/color]，信托用户每日[color=#ff0000][b]两次[/b][/color]，VIP每日[color=#ff0000][b]三次；[/b][/color]\r\n\r\n[b][/b]\r\n\r\n[color=#013add]【提现时间】：[/color]周一至周五：[color=#fe2419]每日 早10：00 ，[/color][color=#fe2419]下午：15:00 ，[/color][color=#fe2419]晚上21:00 ，[color=#000000]分[/color][/color][color=#fe2419]三次[/color]处理该时段前提交的提现申请；周六，日：[color=#fe2419]晚上21:00一次集中处理；[/color]\r\n\r\n[b][color=#0000ff]【提现费用】：[/color][/b]通过淘宝商品地址提现方式提现是[b][color=#ff0000]完全免费[/color][/b]的，通过支付宝转账提现的用户，因为支付宝方需要收取[color=#ff0000][b]1.5%[/b][/color]的手续费；所以平台对每笔支付宝转账提现也需要收取相应的费用；但是为了答谢广大客户对美乐的支持，平台会针对不同用户有不同的优惠；\r\n\r\n[b][color=#307f00]==美乐平台提现注意事项==[/color]\r\n\r\n[color=#0000ff]第一：[/color][color=#000000]使用商品地址方式提现的，请务必[color=#f10b00]设置好您的商品价格或商品价格的倍数加上运费后的货款总值与体现金额相等[/color]；因为提现都是使用合并付款方式进行支付的，业务量大，提现专员无法单个单个拍下商品后再联系卖家改价；[color=#f10b00]欢迎使用虚拟物品提现[/color]，这样可以马上收货，在最短时间内为您资金回流！[/color]\r\n\r\n[color=#ff0000][color=#013add]第二[/color][color=#013add]：[/color][color=#000000]如果提现商品需要运费，[color=#f10b00]尽量设置卖家承担运费，或者是全国统一运费[/color]；[/color][/color]\r\n\r\n[color=#ff0000][color=#013add]第三[/color][color=#013add]：[/color][color=#000000][color=#f10b00]去掉购买金额满XX元，优惠X元的设置[/color]；否者容易造成提现金额少于申请金额；[/color][/color]\r\n\r\n[color=#013add]第四：[color=#000000]因为平台提现用淘宝账号交易量大，为了您的提现资金安全，淘宝商品地址[color=#f10b00]提现交易双方不进行淘宝评价[/color]；[/color][/color]\r\n\r\n[color=#013add][color=#000000][color=#0162f4]第五：[/color]提现是精确到秒的，所以申请提现必须在处理提现时段之前。[/color][/color]\r\n[/b]\r\n\r\n[/td][/tr][/table]', '1358766756');
INSERT INTO `bf_posts` VALUES ('79', '49', '3', '美乐管理员', '1', '0', '【账号资金】如何查询我的账户资产变化记录', ' 美乐提供了详尽的账户日志查询界面；\r\n您可以通过【联盟中心】-【资金变化日志】 进入你的账户资产变化查询界面：\r\n[img=,151,118]/img/bbs/2013/01/3E7.jpg[/img]\r\n\r\n进入日志查询界面后，你可以看到该界面分为四部分：【所有资产日志】【存款变化日志】【兔粮变化日志】【积分变化日志】\r\n\r\n进入不同的部分就可以查询不同的资产变化记录了，另外平台还为大家提供了日期段查询功能，这样大家就可以轻而易举的对自己账户各项资产在某个时间段内的动向了如指掌喽：\r\n[img=,675,225]/img/bbs/2013/01/3EA.jpg[/img] ', '1358766651');
INSERT INTO `bf_posts` VALUES ('80', '50', '3', '美乐管理员', '1', '0', '【好消息】平台充值有奖励喽！', ' [table][tr][td][i]本帖最后由 美乐官方 于 2010-03-31 14:22:53 编辑[/i] \r\n\r\n[color=#f10b00][b]好消息，好消息！[/b][/color]\r\n\r\n2010年02月22日起，每次给支付宝账户充值，单笔金额不小于[b][color=#fe2419]500[/color][/b]元即可获得1次积分奖励哦；如果您是VIP会员将会得到额外的更多奖励呢；\r\n\r\n[b]具体奖励积分办法如下：[/b]\r\n\r\n[table=416][tr][td][align=center][font=宋体]充值金额[/font][/align][/td][td][align=center][font=宋体]会员类型[/font][/align][/td][td][align=center][font=宋体]充值奖励积分[/font][/align][/td][/tr][tr][td]\r\n\r\n500\r\n\r\n[/td][td]\r\n\r\n[font=宋体]普通会员[/font]\r\n\r\n[/td][td]\r\n\r\n40\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[color=#ff0000]500[/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]VIP[font=宋体]会员[/font][/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]50[/color]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n1000\r\n\r\n[/td][td]\r\n\r\n[font=宋体]普通会员[/font]\r\n\r\n[/td][td]\r\n\r\n90\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[color=#ff0000]1000[/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]VIP[font=宋体]会员[/font][/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]100[/color]\r\n\r\n[/td][/tr][tr][td]\r\n\r\n5000\r\n\r\n[/td][td]\r\n\r\n[font=宋体]普通会员[/font]\r\n\r\n[/td][td]\r\n\r\n500\r\n\r\n[/td][/tr][tr][td]\r\n\r\n[color=#ff0000]5000[/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]VIP[font=宋体]会员[/font][/color]\r\n\r\n[/td][td]\r\n\r\n[color=#ff0000]600[/color]\r\n\r\n[/td][/tr][/table][/td][/tr][/table]', '1300818832');
INSERT INTO `bf_posts` VALUES ('81', '51', '3', '美乐管理员', '1', '0', '【账户资金】如何查询我的充值记录', '[b][color=#0000ff]进入【联盟中心】--【充值记录】页面就能看到你以往的所有充值记录[/color][/b]\r\n\r\n[img=,164,206]/img/bbs/2013/02/270B.jpg[/img]\r\n\r\n[b][color=#0000ff]进入充值记录页面：[/color][/b]\r\n\r\n可以，清楚的查看以往的所有充值记录，以及是否成功，充值方法，充值日期，是否奖励积分，充值后余额等详细的充值信息；甚至可以按照你的需要对充值记录进行简单的过滤查询：\r\n[img=,700,124]/img/bbs/2013/02/270E.jpg[/img] ', '1360046541');
INSERT INTO `bf_posts` VALUES ('82', '52', '3', '美乐管理员', '1', '0', '【账户资金】如何查询我的提现记录', '[b][color=#0000ff]进入【联盟中心】--【提现记录】页面就能看到你以往的所有提现记录[/color][/b]\r\n\r\n[img=,161,196]/img/bbs/2013/02/26F1.jpg[/img]\r\n\r\n[b][color=#0000ff]进入提现记录页面：[/color][/b]\r\n\r\n可以，清楚的查看以往的所有提现记录，以及是否成功，提现方式，申请日期，处理时间等详细的提现信息；甚至可以按照你的需要对充值记录进行简单的过滤查询：同时在这里你还可以把你提交申请但是还未发放的提现申请进行撤销；\r\n[img=,700,135]/img/bbs/2013/02/26F4.jpg[/img] ', '1360045970');
INSERT INTO `bf_posts` VALUES ('83', '53', '3', '美乐管理员', '1', '0', '【VIP卡信托】怎样申请成为美乐尊享VIP', ' [b]第一步：[/b]美乐首页点击【联盟中心】进入美乐联盟中心页面\r\n\r\n[b]第二步：[/b]【联盟中心】左下方点击【尊享VIP申请】进入VIP申请页面\r\n[img=,158,269]/img/bbs/2013/02/26E4.jpg[/img]\r\n\r\n[b]第三步：[/b]进入【尊享VIP申请】页面后，可以了解VIP的相关特权；\r\n[img=,554,315]/img/bbs/2013/02/26E7.jpg[/img]\r\n\r\n[b]第四步：[/b]点击页面右侧的【申请VIP】按钮可进入VIP申请页面，选择好需要开通的期限后，点击【提交申请】即刻成为美乐尊享VIP：\r\n[img=,517,323]/img/bbs/2013/02/26EA.jpg[/img] ', '1360045916');
INSERT INTO `bf_posts` VALUES ('84', '54', '3', '美乐管理员', '1', '0', '【新手入门】了解VIP特权', 'VIP会员是美乐平台商联盟的一种付费会员；平台给VIP会员提供了更加强大的平台功能；现在就来了解一下吧：\r\n\r\n您也可以申请成为联盟的尊享VIP会员；一天不到一块钱即可拥有强大的VIP特权哦；[img=,130,130]http://www.hiwinwin.com/upload/2010/2/23/caca18f7-76cb-4a7c-83b5-a1b802bb0709.gif[/img]\r\n\r\n[b][color=#fe2419]新增特权：VIP老用户接手任务兔粮损耗仅为10%， 普通老用户损耗为15%[/color]\r\n\r\n                特权简称\r\n                特权详情[/b]\r\n\r\n                任务排名靠前\r\n                任务排名处于互动区待接手任务列表最前部分；\r\n\r\n                提现优先处理\r\n                平台提现申请优先处理；\r\n\r\n                申诉优先解决\r\n                任务申诉，客服优先解决\r\n\r\n                更多提现次数\r\n                一般会员一次每日，信托会员二次每日，VIP会员三次每日\r\n\r\n                更高提现金额\r\n                一般会员1000每日，信托会员2000每日，VIP会员5000每日\r\n\r\n                积分增长加速（1.2倍）\r\n                积分增长迅速：1.2倍于其他会员； 可兑换更多现金；\r\n\r\n                兔粮兑换损耗减半\r\n                普通会员损耗10%!  信托会员损耗8%! 尊享VIP损耗5%\r\n\r\n                充值奖励更多积分；\r\n                普通会员奖励单次充值金额8%的积分；VIP奖励10%的积分\r\n\r\n                平台短信更优惠（6分/条）\r\n                普通会员7分每条，VIP会员6分每条\r\n\r\n                醒目红名\r\n                有涉及刷客信息和刷客列表的地方：会员名用醒目中国红字体表示；\r\n\r\n                金色VIP标志\r\n                所有涉及刷客信息和刷客列表的地方：金色VIP标志，彰显尊贵身份！\r\n\r\n                超酷动态头像\r\n                VIP支持超酷动态gif论坛头像\r\n\r\n                体贴登陆提示\r\n                每次上线都有联盟亲切的问候，并且告诉您上次登陆的时间和地址，便于您对自己VIP账号进行监控\r\n\r\n                在线客服优先回复[emot=qq,13/]\r\n                VIP会员用户所提交的所有会员业务问题，我们的客服人员会在2小时内（正常上班时间段9：00--21：00）优先给您答复。\r\n\r\n                专职VIP客服\r\n                专职VIP客服一对一服务；让尊贵的您体验更加贴心快捷的Vip享受！\r\n\r\n                热线直通人工服务\r\n                400热线人工服务VIP特别直通通道；一键接通人工客服；\r\n\r\n                账号异常短信通知\r\n                异常发布任务，异常提现，异常登录，异常任务操作；短信通知\r\n\r\n                创立门派\r\n                申请成立自己的联盟门派，体验威风掌门人\r\n\r\n                五倍黑名单上限（50个）\r\n                VIP黑名单人数上限是普通会员的5倍；普通会员10个，信托会员20个)\r\n\r\n                更多掌柜名\r\n                支持多达五个掌柜；信托三个，普通两个\r\n\r\n                绑定买号数无上限\r\n                普通会员七个，信托会员二十个\r\n\r\n                手机动态密码\r\n                针对提现，发布批量任务等操作，提供免费动态手机密码服务\r\n\r\n                任务一键抢接\r\n                VIP专属任务直抢键，一键快速抢接任务\r\n\r\n                任务批量发布\r\n                批量发布任务功能，省时省力省钱！\r\n\r\n                热销商品任务\r\n                VIP专属批量发布掌柜热销商品任务；打造属于您的热销产品\r\n\r\n                更多任务模板（30个）\r\n                每个互动区可以保存多达三十个任务模板，普通会员只能有五个；信托会员可以有十个任务模板　　　　 ', '1360046589');
INSERT INTO `bf_posts` VALUES ('85', '55', '3', '美乐管理员', '1', '0', '【VIP卡信托】怎样成为美乐卡信托用户', ' 只要去美乐点卡中心购买美乐兔粮卡，购买【单钻卡】以上的任何卡种都可以即刻成为美乐的卡信托客户：\r\n第一步：【点卡中心】\r\n[img=,403,79]/img/bbs/2013/02/26D5.jpg[/img]\r\n\r\n第二步：【兔粮卡】\r\n[img=,563,126]/img/bbs/2013/02/26D8.jpg[/img]\r\n\r\n第三步：【购买信托卡】\r\n\r\n[img=,532,331]/img/bbs/2013/02/26DB.jpg[/img] ', '1360045726');
INSERT INTO `bf_posts` VALUES ('86', '56', '3', '美乐管理员', '1', '0', '【VIP卡信托】美乐尊享VIP的收费标准', ' 【VIP体验卡】 售价：五元 有效期：三日（激活时间开始计算）\r\n[img=,542,106]/img/bbs/2013/02/26DE.jpg[/img]\r\n\r\n【一个月正式尊享VIP】  售价：三十元 有效期：一个月\r\n【三个月正式尊享VIP】  售价：七十八元 有效期：三个月\r\n【六个月正式尊享VIP】  售价：一百三十八元 有效期：六个月\r\n【一年正式尊享VIP】  售价：两百四十八元 有效期：十二个月\r\n[img=,517,323]/img/bbs/2013/02/26E1.jpg[/img] ', '1360045816');
INSERT INTO `bf_posts` VALUES ('87', '57', '3', '美乐管理员', '1', '0', '【VIP卡信托】可以在申请正式VIP之前先体验一下么', '为了能让大家可以在正式申请VIP之前能有机会体验一下VIP的便捷强大功能；美乐特别推出了三日【VIP体验卡】，会员们可以到【点卡中心】-【特权道具卡】里找到VIP体验卡，感兴趣的朋友快去看下吧：\r\n\r\n第一步：点卡中心\r\n[img=,403,79]/img/bbs/2013/01/42C.jpg[/img]\r\n\r\n第二步：特权道具卡\r\n[img=,426,94]/img/bbs/2013/01/429.jpg[/img]\r\n\r\n第三步：尊享VIP体验卡\r\n[img=,542,106]/img/bbs/2013/01/426.jpg[/img] ', '1358768741');
INSERT INTO `bf_posts` VALUES ('88', '58', '3', '美乐管理员', '1', '0', '【VIP卡信托】信托卡信托会员特权详情', '[table][tr][td][i]本帖最后由 美乐官方 于 2011-03-10 06:45:01 编辑[/i] \r\n\r\n[color=#fe2419]任何美乐会员在购买了信托兔粮卡后（无论哪种类型的信托兔粮卡都可以）即刻从普通会员升级成为美乐的信托会员；平台给信托会员提供较普通会员更加强大的平台功能；现在就来了解一下吧：[/color]\r\n\r\n   特权类别\r\n   特权简称\r\n   特权详情\r\n\r\n   更尊贵\r\n   任务排名靠前\r\n   任务排名处于互动区待接手任务列表中普通会员前面；\r\n\r\n   提现优先处理\r\n   平台提现申请优先处理；\r\n\r\n   申诉优先解决\r\n   任务申诉，客服优先解决\r\n\r\n   更多提现次数\r\n   一般会员一次每日，信托会员二次每日，VIP会员三次每日\r\n\r\n   更高提现金额\r\n   一般会员1000每日，信托会员2000每日，VIP会员5000每日\r\n\r\n   更经济\r\n   更优惠价格购买兔粮\r\n   已信托卡形式批量购买兔粮，根据购买数量可以享受更低的购买价格\r\n\r\n   兔粮兑换损耗减半\r\n   普通会员损耗10%!    信托会员损耗8%! 尊享VIP损耗5%\r\n\r\n   更贴心\r\n   体贴登陆提示\r\n   每次上线都有联盟亲切的问候，并且告诉您上次登陆的时间和地址，便于您对自己账号进行监控\r\n\r\n   在线客服优先回复\r\n   在客服人员繁忙时，信托会员用户所提交的所有会员业务问题，我们的客服人员会优先给您答复。\r\n\r\n   账号异常短信通知\r\n   异常发布任务，异常提现，异常登录，异常任务操作；短信通知\r\n\r\n   更强大\r\n   申请成为门派护法\r\n   可以申请成为门派护法，协助掌门管理门派；\r\n\r\n   五倍黑名单上限（20个）\r\n   信托会员黑名单人数上限是普通会员的2倍；普通会员10个，VIP会员50个)\r\n\r\n   更多掌柜名\r\n   VIP支持多达五个掌柜；信托三个，普通两个\r\n\r\n   绑定更多买号\r\n   普通会员七个，信托会员二十个 ，VIP无上限\r\n\r\n   手机动态密码\r\n   针对提现，发布批量任务等操作，提供免费动态手机密码服务\r\n\r\n   更便捷\r\n\r\n   任务批量发布\r\n   批量发布任务功能，省时省力省钱！\r\n\r\n   更多任务模板（十个）\r\n   每个互动区可以保存多达十个任务模板，普通会员只能有五个；VIP会员可以有三十个任务模板\r\n\r\n　各位盟友们，清楚了没有哈哈 \r\n\r\n[/td][/tr][/table]', '1358417287');
INSERT INTO `bf_posts` VALUES ('119', '76', '39', 'windows', '0', '0', '', '[emot=qq,13/]赞一个，大力支持啊', '1358512022');
INSERT INTO `bf_posts` VALUES ('89', '59', '3', '美乐管理员', '1', '0', '【VIP卡信托】怎样识别用户是否是VIP', ' 如果成为我们的VIP会员后，在美乐平台任何出现你美乐帐号的地方都会在你账号右侧明显的显示出VIP专属图标：\r\n\r\n[b]互动区中：[/b]\r\n[img=,246,49]http://www.hiwinwin.com/upload/2010/3/18/2846caa8-9fa0-46d7-9b71-a52e540c5470.jpg[/img]\r\n\r\n[b]论坛中：[/b]\r\n[img=,146,295]/img/bbs/2013/01/423.jpg[/img]\r\n\r\n[b]首页任务动态：[/b]\r\n[img=,263,172]http://www.hiwinwin.com/upload/2010/3/18/7065ce50-b268-41f0-bb5a-9b4fd5486555.jpg[/img] ', '1358768595');
INSERT INTO `bf_posts` VALUES ('90', '60', '3', '美乐管理员', '1', '0', '【VIP卡信托】怎样识别是否是卡信托用户', ' 如果成为我们的卡信托会员后，在美乐平台任何出现你美乐帐号的地方都会在你账号右侧明显的显示出卡信托专属图标：\r\n\r\n[b]互动区中：[/b]\r\n[img=,397,58]/img/bbs/2013/01/418.jpg[/img]\r\n\r\n[b]首页任务动态：[/b]\r\n[img=,293,60]/img/bbs/2013/01/41E.jpg[/img]  ', '1358768996');
INSERT INTO `bf_posts` VALUES ('133', '94', '39', 'windows', '1', '0', '想虚拟转实物的卖家需要注意的问题', '大家都知道虚拟信誉比较轻易获得，所以良多卖家都想通过虚拟信誉把店铺做成钻石或者皇冠，再转什物。但是有些事情你你知道吗？\r\n\r\n虚拟法宝在淘宝首页搜索你能找到你的店铺吗？谜底肯定是否定的。根本就得不到曝光率... 淘巧好，好淘巧\r\n\r\n消费者保障服务中的七天退换当中的一个前提就是：店铺虚拟商品交易信用比例低于5%；你能达到吗？就是达不到啊，刚转过去，木有流量，木有叮咚。。。\r\n\r\n虚拟信誉跟实体信誉是分开算的你知道吗？搜索什物的时候，虚拟信誉是不算进来的。 现在知道了。 [url=http://www.mei-le.com/]www.mei-le.com[/url]\r\n\r\n在淘宝的分销平台中，有良多的供销商都是需要零虚拟交易量的。\r\n\r\n以上都是亲自体验，，现在后悔已经晚了。。。。', '1359897993');
INSERT INTO `bf_posts` VALUES ('91', '61', '3', '美乐管理员', '1', '0', '【吐血推荐刷信誉经验】深度解析淘宝客', ' [table][tr][td][i]本帖最后由 美乐官方 于 2011-03-05 02:14:15 编辑[/i] \r\n\r\n[emot=qq,13/]hello！各位美乐会员们，由于大部分会员对于[color=#fe2419][b]【淘宝客】[/b][/color]的认识不多，但是做任务的过程中，往往一点点小失误，就会导致佣金的产生。在处理淘宝客的问题上，往往因为金钱纠纷和缺乏此方面的知识而造成会员与会员之间，会员与客服之间的不愉快，因此，现在把我所了解到的[b][color=#fe2419]【淘宝客】[/color][/b]整理出来，希望以后能尽量避免佣金的产生。\r\n\r\n[b][color=#0162f4][size=3]解答疑问：为什么会产生淘宝客佣金呢？[/size][/color]\r\n第一种情况[/b]：接手人主动去[b]【淘宝联盟网站】[/b]搜索关键词，提取淘宝客链接，从而达到骗取佣金的目的[b][color=#fe2419]。【这种行为是平台禁止的，也请各位会员严于律己，但凡发现是这种方式骗取佣金的，将永久冻结平台账户】[/color][/b]。\r\n\r\n[b]第二种情况[/b]：在【[b]进行来路搜索】[/b]的过程中，接手人用关键词搜索到宝贝结果后，无视发布人的提示，随便点击淘宝网上的页面，导致误点击淘宝客链接。\r\n\r\n[b]第三种情况[/b]：【[b]电脑中了淘宝客病毒】[/b]或者用了不知名的浏览器自备的搜索框进行搜索。\r\n\r\n[b]第四种情况[/b]：接手人的【[b]买号既用来接任务也用来买真实的商品】[/b]，相信大部分的人在购买自己所需的物品时，都是到淘宝上随便搜索，随便点击图片，淘宝客的链接是无所不在的，散播在淘宝网页上的各个角落，一不小心就踩中地雷，当你真实购买物品是以淘宝客的方式进行购买的，[b]在15天内[/b]再用这个买号去接其他有做淘宝客推广店铺的任务，佣金也就自然而然产生了。【淘宝客链接有效期15天】\r\n\r\n[b]第五种情况[/b]：[b]误信他人，接收广告链接或者去一些【返利】的网站[/b]。\r\n\r\n[b]第六种情况[/b]：当你在[b]登陆淘宝账号情况下，进入一些推广的网站[/b]，例如qq空间，论坛，博客等所介绍的商品，一般一点击图片或者网址都是淘宝客链接【要知道，几乎没有人会那么善心去免费帮别人推广或者介绍商品】\r\n\r\n[color=#f10b00][size=5]淘宝客链接的格式：[/size][/color][url=http://s.click.taobao.com/t_8?e=xxxxxxxxxxxxxxxxxxxxx][color=#f10b00][size=5]http://s.click.taobao.com/t_8?e=xxxxxxxxxxxxxxxxxxxxx[/size][/color][/url][color=#f10b00][size=5]【前缀都是s.click】[/size][/color]\r\n[color=#f10b00][size=5]直通车链接的格式前缀大部分是【click】点击直通车的商品不会被扣佣金，但是会扣直通车的费用。[/size][/color]\r\n\r\n[b][color=#0162f4][size=3]错误思想：[/size][/color]\r\n错误一：[/b]有佣金的产生除了接手人要负责，发布人也应该承担责任，如果卖家不去开推广，怎么会被扣佣金，他开了推广就是默认可以扣的。\r\n[b][color=#307f00]正确：[/color][/b]如果你是真实买家，淘宝客，随便用！\r\n但记住自己的身份：在平台，是互惠互利，发布人既付出了报酬，接手人也得到了该有的收益。\r\n如果不是接手人主动去提取或者随便点击淘宝网上的信息，即使佣金放在你眼前，你也得不到，更没有傻傻送钱给你的卖家。\r\n\r\n[b]错误二：[/b]有佣金肯定是发布人给的链接有问题，或者是平台没有过滤淘宝客链接。\r\n[b][color=#307f00]正确：[/color][/b]平台不支持淘宝客链接的格式，因此发布人无法发布那样的链接格式。\r\n\r\n[b]错误三：[/b]发布人自己弄了淘宝客的链接，让我中陷阱，淘宝上的钱得到了，又回到平台投诉我。\r\n[b][color=#307f00]正确：[/color][/b]如果发布人是为了坑坑骗骗【几块，几十，甚至更多的佣金】，何必大费周章来到平台刷，况且佣金淘宝是会抽成的，这样循环下去岂不是越来越少？拿自己的钱来赚自己的钱。更何况，要经营好网店，单靠这些佣金，能做得了大事么？\r\n\r\n[color=#f10b00][b][size=5]区别：集市和商城淘客[/size][/b][/color]\r\n\r\n1.淘宝对于商城的管理是非常苛刻和霸道的，在15天内，如果买号曾经点击过淘宝客链接或者以淘宝客链接的方式进行购买，再去购买商城里任何一个卖家的宝贝，不管商城做没做推广，均扣除相应的佣金。\r\n\r\n2.在15天内，如果买号曾经点击过集市的淘宝客链接或者以淘客方式进行购买，再去买其他集市店铺有做推广的商品，需要主动提取淘客链接才会被扣佣金，但不排除中病毒的情况，连连相扣【购买的均被扣下】\r\n\r\n3、当你发现你的买号点击过这种类型的链接[url=http://s.click.taobao.com/t_8?e=xxxxxxxxxxxxxxxxxxxxx][color=#f10b00][size=5]http://s.click.taobao.com/t_8?e=xxxxxxxxxxxxxxxxxxxxx[/size][/color][/url]，如果任务还开始做或者还没付款，请停止操作该任务。并且15天内不使用该买号做任务。\r\n\r\n[b][color=#f10b00][size=5]方法：接手人如何避免淘宝客佣金[/size][/color][/b]\r\n\r\n1、不允许主动到淘客联盟网站搜索关键词，提取淘宝客链接进店后，再以正常方式进行搜索回到平台验证。\r\n\r\n2、来路任务搜索时，登录买号后，打开淘宝网首页[b][color=#f10b00][size=3]【[/size][/color][/b][url=http://www.taobao.com/][b][color=#f10b00][size=3]www.taobao.com[/size][/color][/b][/url][b][color=#f10b00][size=3]】[/size][/color][/b]的搜索框进行搜索。\r\n[img=,640,191]/img/bbs/2013/02/2789.jpg[/img] \r\n[color=#f10b00][size=3][back=#000000][b]蓝色框为正确的搜索地，请别误点红色箭头的广告。[/b][/back][/size][/color]\r\n\r\n3、来路搜索过程中，看清发布方给的提示进行搜索，例如：输入关键词后，根据发布人提供的掌柜号或其他提示，点击搜索框正下方的宝贝，\r\n不要东点点，西点点。\r\n\r\n[img=,741,624]/img/bbs/2013/02/278C.jpg[/img] \r\n\r\n四：当你登陆买号时，[b][color=#fe2419]请不要点击[/color][/b]淘宝网搜索框右侧的[b][color=#d40a00]【掌柜热卖】[/color][/b]\r\n[img=,218,493]/img/bbs/2013/02/278F.jpg[/img] 【细心的朋友一定能发现的】\r\n\r\n五：等你登陆旺旺聊天工具时，不接收他人传过来的文件，或者不点击他们的广告链接和图片。直接关闭是明智之之举。\r\n\r\n六：自己买东西的号和平台刷任务的号区分开来。最好能不混绕使用。\r\n\r\n七：登录旺旺后，淘宝的[b][color=#f10b00][size=3]【每日焦点】[/size][/color][/b]会自动弹出，爱看的人请不要登录刷的号来看。[img=,510,454]/img/bbs/2013/02/2795.jpg[/img] \r\n基本上里面的宝贝，集中在[b][color=#f10b00][size=3]【画报】[/size][/color][/b]里，尤其是明星或者模特穿的衣服鞋子，[b][color=#f10b00]大多数都是经过处理的淘宝客链接[/color][/b]。\r\n【漂亮的外表下都是暗藏杀机的。】\r\n\r\n八：当你登录旺旺号时，不去点击任何不知名的推广网站，包括博客，空间，论坛，最主要是所有的[b][color=#f10b00][size=3]返利网[/size][/color][/b]。\r\n\r\n九：除了任务外的链接，其他链接一律不拍，包括发布人在qq上或者旺旺给的链接。【在此也请发布人严格要求自己，不要背负起自己给淘宝客链接的罪名】\r\n\r\n十：遇到无法搜索的任务，请联系客服帮助，不要自己瞎蒙瞎点。\r\n\r\n[b][color=#f10b00][size=5]方法二：遇到淘宝客后该怎么办？[/size][/color][/b]\r\n一：当你发现自己的美乐账户被挂起是因为淘宝客原因时，请先保持冷静，qq上或者电话上咨询我们。\r\n\r\n二：致电淘宝【阿里妈妈】客服进行咨询，提供以下相关资料：淘宝买号id，淘宝交易订单号，询问是以什么方式进店的，佣金是否产生，被扣到哪个淘客账户上。一般情况下，如果阿里妈妈客服告知是以淘宝客链接方式进店的，那就说明你已经踩到了地雷了。\r\n\r\n三：退还卖家相应的佣金。【屡次违反淘宝客的将按此[url=http://www.mei-le.com/bbs/t103/][color=#99ffff]http://www.mei-le.com/bbs/t103/[/color][/url]公告进行处罚】\r\n\r\n四：停止使用产生佣金的淘宝买号【15天】\r\n\r\n五：美乐账户将冻结15天，不做任何操作。15天后再与客服联系进行处理。\r\n\r\n六：重装电脑和浏览器，用ie，火狐，搜狗等知名的浏览器。\r\n\r\n[b][color=#fe2419][size=5]最后给予的发布人（卖家）的提醒：[/size][/color][/b]\r\n对于一些正在起步的卖家，淘宝客推广和直通车其实并不能达到很好的效果，还是先把信誉，人气，销量做上去再来考虑以后的推广形式。\r\n对于一些本身就需要淘客和直通车推广的卖家，请关注你的【量子统计进店方式】，如果发现有接手人用淘宝客进店方式，请立即联系客服。最重要一点，[b][color=#f10b00]在核实货款之前，请先查询自己的支付宝是否产生佣金，事后再联系客服处理的一般无效[/color][/b]。\r\n\r\n对于接手人的提醒已经说了很多，就是小心，仔细，还要有一个良好的职业道德和做人品德。不该赚的钱，切勿动起贪念，留下骂名。\r\n\r\n实属原创，谢绝盗版！[img]http://www.hiwinwin.com/images/bbs/qq/13.gif[/img] \r\n\r\n[/td][/tr][/table]', '1360048471');
INSERT INTO `bf_posts` VALUES ('144', '103', '3', '美乐管理员', '1', '0', '【重要】淘宝客出没，请发布方谨慎核实货款以免被骗！', '[b]各位会员：[/b]\r\n\r\n近期有会员反映，发布任务结束后发现掌柜账号收到货款与商品售价不符；经过我们的调查发现出现该类问题的会员有一个共同的特点，这些发布人的店铺都是[color=#fe2419][b]开通了阿里妈妈推广[/b][/color]的；林子大了神马动物都可能有，平台有个别别有用心的接手人就是想钻这个空子，利用淘宝客链接购买任务商品，除了赚取任务的兔粮还还想顺手牵羊赚取发布人的推广佣金！！[b][color=#fe2419]平台针对此类事件查到一笔处理一笔，对别有用心的会员一定会严肃处理绝不姑息！ ！[/color][/b]\r\n\r\n虽然我们推荐您在刷钻期间不要参加阿里妈妈推广，消保等淘宝资质，但是我们知道随着淘宝的竞争越来越激烈，不少发布人为了能够引来更多的流量开通了阿里妈妈推广，这点无可厚非；不过既然您决定开通了推广为了避免不必要的损失就要在做任务的时候格外小心！\r\n\r\n[b][color=#fe2419]在此提醒开通了阿里妈妈推广的发布人，为了防止无谓的损失，请务必按照以下方式预防：[/color][/b]\r\n\r\n[b][color=#013add]第一、在已发任务最后核实放款前除了检查接手人是否按照任务要求收货好评以外，还需要登陆支付宝查看有消费记录。这个地方的记录是即时的，只要对方收货后的24小时内就能看见，不过通常都是实时到账的。[/color][/b]\r\n\r\n例如[img=,690,74]/img/bbs/2013/02/279C.jpg[/img] \r\n\r\n根据cps_xxxxxxx[b][color=#e95d00]【x实质是指淘宝已卖出宝贝里面的订单编号】，[/color][/b]在淘宝已卖出宝贝里面查询是哪一笔交易，根据相对应的买号再回到平台找到相对应的任务编号。告知客服mm。\r\n[img=,687,146]/img/bbs/2013/02/279F.jpg[/img]\r\n\r\n[color=#013add][b]第二、[color=#013add]马上在登陆淘宝客的后台[/color][color=#000000][color=#013add]查看 是哪个产品 所扣的费用， 然后在根据 自己发布的任务 是否同一个产品， 是否同一个时间， 同金额等。 判断是不是此人使用淘宝客赚取佣金。[/color][/color][/b][/color]\r\n\r\n[img=,700,246]/img/bbs/2013/02/27A2.jpg[/img]\r\n\r\n[b][color=#013add]第三、 请不要核实该任务， 立刻发起申诉，并上传自己的所有证据截图，并且马上通知申诉客服。[/color][/b]\r\n\r\n[b][color=#f328ff]（特别鸣谢司徒静的经验分享）[/color][/b]\r\n\r\n[b][color=#fe2419]现在赚点钱都不容易，如果你嫌麻烦不愿意去查看， 损失是你自己的金钱，我只能替那位接手人谢谢你的慷慨。[/color][/b]\r\n\r\n[b][color=#0021b0]平台对使用淘宝客赚取佣金的用户处罚措施：[/color][/b]\r\n\r\n[b]使用者平台任务买号冻结15天 退还佣金给发布人，扣除积分3000分，强制加入商保。态度恶劣者禁止接任务数天。情节严重者关闭账号[/b]\r\n\r\n[b][color=#fd1289][color=#0021b0]特此声明[/color]：发布人如在任务平台核实放款以后才发现被掏了佣金，致使淘宝客已经资金转移出了平台，平台客服也无法帮您追回损失。请各位发布人在接手人收货好评后，一定要先核对自己的支付宝金额，再平台放款！！如果发现了被淘佣金，请立即与客服联系，切记手快去核实任务。[/color]\r\n[/b]', '1360048433');
INSERT INTO `bf_posts` VALUES ('92', '50', '3', '美乐管理员', '0', '0', '', '[emot=qq,2/]', '1300886281');
INSERT INTO `bf_posts` VALUES ('93', '61', '3', '美乐管理员', '0', '0', '', '[emot=qq,3/]', '1300949725');
INSERT INTO `bf_posts` VALUES ('94', '62', '3', '美乐管理员', '1', '0', '网银充值答疑', ' [table][tr][td][color=#ff0000][b]网银充值答疑：[/b]\r\n充值订单失效的问题：易宝支付是很快到账的，10分钟内都会到账，如果充值订单失效则是下列两种情况：\r\n（1）网银钓鱼系统拦截，如果支付时候弹出一个提示框，提示存在风险，无论是确定付款还是取消，银行一样会扣款，但款会被拦截，易宝会进行退款操作，在三个工作日内返还到您的银行卡中（不包括周六日）。这个系统是防止被钓鱼的，已经成功拦截了不少被钓鱼的会员。\r\n（2）多次支付，有的会员的机器系统存在问题，在进入易宝支付的时候，进行了重复支付，那这样有一笔支付就会视为无效支付，但款已经被扣，易宝会进行退款操作，在三个工作日内返还到您的银行卡中（不包括周六日）。\r\n（3）其他原因，如果有任何问题可咨询客服，客服会协调为大家解决问题。\r\n（4）因为充值不到帐的几率还是有的，再次声明，希望会员遇到的话能冷静和客服沟通，钱是不会少的，只是易宝需要走流程给银行退款，银行处理也需要时间。因此平台限制了网银充值每笔至多只能充5000元，防止不到帐影响会员资金周转。[/color][/td][/tr][/table]', '1300973277');
INSERT INTO `bf_posts` VALUES ('95', '63', '3', '美乐管理员', '1', '0', '什么是操作码', ' [table][tr][td][i]本帖最后由 胖勇 于 2010-02-23 15:51:08 编辑[/i] \r\n\r\n[color=#0000ff][b]操作码说明：[/b][/color]\r\n\r\n操作码相当于支付宝的支付密码，在您登陆美乐后第一次发布任务，或者进行修改资料等重要操作时候系统会要求您输入，防止您不小心密码被盗后通过发布任务的方式或者提现等操作把你的存款及兔粮转移。\r\n　\r\n\r\n---------------------------------------------------------------\r\n[color=#0000ff][b]操作码设置：[/b][/color]\r\n\r\n您平台帐号的操作码是您在注册新平台用户时就设置好了的；见下面截图中红框内：\r\n\r\n----------------------------------------------------\r\n\r\n[color=#0000ff][b]平台哪些操作需要输入操作码：[/b][/color]\r\n\r\n1.登陆平台后第一次发任务是需要操作码；\r\n\r\n2.绑定手机号码需要提供操作码；\r\n\r\n3.修改个人资料；\r\n\r\n4.提现操作；\r\n\r\n5.兔粮兑换；\r\n\r\n----------------------------------------------------\r\n\r\n[color=#0000ff][b]忘记操作码该怎么办：[/b][/color]\r\n忘记了可以联系客服，在提供一些必要的证明信息后，客服会帮助您重置操作码的哦！请各位刷客一定要记牢操作码哦；\r\n\r\n大家都明白了么[img=,128,128]/img/bbs/2013/01/3F1.gif[/img]\r\n\r\n[/td][/tr][/table]', '1359990546');
INSERT INTO `bf_posts` VALUES ('96', '50', '3', '美乐管理员', '0', '0', '', '[emot=qq,2/]已经体验到啦', '1301318655');
INSERT INTO `bf_posts` VALUES ('97', '50', '3', '美乐管理员', '0', '0', '', '[emot=qq,2/]已经体验到啦', '1301318688');
INSERT INTO `bf_posts` VALUES ('98', '58', '3', '美乐管理员', '0', '0', '', '[emot=qq,4/]', '1301320720');
INSERT INTO `bf_posts` VALUES ('99', '64', '3', '美乐管理员', '1', '0', '如何赚取美乐兔粮', '[color=#0000ff][b]什么是兔粮：[/b][/color]\r\n\r\n[color=#ff0000][b]在平台互动，很关键的一点是，你需要有兔粮，才能发布自己的任务， \r\n在美乐里，本质上： 【一个兔粮 = 一个淘宝好评】\r\n兔粮代表着：你帮别人接手了几次任务，提升了几次信誉； \r\n所以新手做买家 就是为了第一次的互动，获得一个发布任务的机会。[/b]\r\n[/color]\r\n记住以上的概念，然后继续往下看，\r\n\r\n发布任务必须有兔粮，兔粮可以购买，也可以免费获得；\r\n\r\n所以你有几个兔粮，就可以发布几条任务， \r\n\r\n你想刷到什么级别的淘宝信誉，就必须要用兔粮来换，一比一的， \r\n\r\n每接一次任务都可以获得一个兔粮。 \r\n\r\n兔粮代表着你接了几次任务，可以发布几次任务。\r\n\r\n　\r\n\r\n[b][color=#0000ff]如何获得兔粮[/color][/b]\r\n\r\n1、免费方法一：先去帮别人好评，接一个任务完成后，会得到相应的兔粮，有了兔粮就可以去发布好评任务了，呵呵 简单吧！！\r\n\r\n系统自动给您冲入任务对应的兔粮和您接别人任务支付的金额 \r\n\r\n2、免费方法二：将平台接发任务与论坛发帖回帖赚取的积分到美乐的【兑换中心】将积分兑换成兔粮；\r\n\r\n3、付费方法：直接到美乐平台【点卡中心】，购买兔粮卡或者兔粮信托卡；即可获得兔粮；\r\n\r\n[b]各位刷友有什么不明白的都可以亲自call本帅哥哦[/b][img=,100,103]/img/bbs/2013/02/24E1.gif[/img] ', '1359990729');
INSERT INTO `bf_posts` VALUES ('100', '65', '3', '美乐管理员', '1', '0', '【新手入门】教您快速了解平台任务标示图标', ' [color=blue][font=宋体][b][color=#307f00]针对淘宝的各项交易特性，美乐推出了很多相对应的功能，导致美乐任务特性比较多，这也给很多新的接手人带来了一定的困扰，不太清楚任务中这些标示都是什么含义，下面我给大家简单讲解一下：[/color][/b][/font][/color]\r\n\r\n[color=blue][font=宋体][b]一：马上好评 24 48 72[/b][/font][/color]\r\n[color=blue][font=宋体][b][img=,700,47]/img/bbs/2013/01/3F4.jpg[/img][/b][/font][/color]\r\n[font=宋体][b][color=blue][font=宋体][b][img=,700,49]/img/bbs/2013/01/3F7.jpg[/img][/b][/font][/color][/b][/font]\r\n[font=宋体][b][color=blue][font=宋体][img=,700,45]/img/bbs/2013/01/3FA.jpg[/img][/font][/color][/b][/font]\r\n[font=宋体][b][color=blue][font=宋体][img=,700,49]/img/bbs/2013/01/3FD.jpg[/img][/font][/color][/b][/font]\r\n\r\n[color=blue][font=宋体][b][color=#000000]为任务好评时限标示，分别标示任务从卖家发货到您允许收货的时间间隔分别为 半小时内，24小时，48小时，72小时，提前收货一旦被投诉将不能获得任务奖励兔粮[/color]；[/b][/font][/color]\r\n\r\n[color=blue][font=宋体][b]二：递[/b][/font][/color]\r\n[color=blue][font=宋体][b][img=,700,49]/img/bbs/2013/01/400.jpg[/img][/b][/font][/color]\r\n[font=宋体][b][color=#000000]表明该任务为真实快递任务，即此发布人购买了平台合作伙伴的真实快递业务，接手人需要为自己的买号设置相应的收货地址，同时72小时内如果快递未被签收则不能提前收货；[/color][url=http://www.mei-le.com/bbs/][color=#000000][color=#5c585a]点此了解快递任务详情[/color][/color][/url][/b][/font]\r\n\r\n[color=blue][font=宋体][b]三：实名[/b][/font][/color]\r\n[color=blue][font=宋体][img=,681,53]/img/bbs/2013/01/403.jpg[/img][/font][/color]\r\n[font=宋体][b][color=#000000]实名：要求使用实名认证过的淘宝账号接手此任务；[/color][color=#000000][color=#5c585a][url=http://www.mei-le.com/bbs/]点此了解实名买号任务详情[/url][/color][/color][/b][/font]\r\n\r\n[color=blue][font=宋体][b]四：来路[/b][/font][/color]\r\n[color=blue][font=宋体][b][img=,700,47]/img/bbs/2013/01/406.jpg[/img][/b][/font][/color]\r\n[font=宋体][b][color=#000000]表明此任务为规定了来路的任务，要求接手人按照任务要求搜索到发布人店铺/宝贝，验证地址无误后再拍下购买；[/color][url=http://www.hiwinwin.com/bbs/Thread.aspx?id=5829][color=#000000][color=#5c585a]点此了解来路任务详情[/color][/color][/url][/b][/font]\r\n\r\n[color=blue][font=宋体][b]五：分享[/b][/font][/color]\r\n[color=blue][font=宋体][img=,700,45]/img/bbs/2013/01/409.jpg[/img][/font][/color]\r\n[font=宋体][b][color=#000000]分享：表明此任务商品购买后需要进行淘分享操作，分为匿名分享，和非匿名分享两种方式；[/color][url=http://www.hiwinwin.com/bbs/Thread.aspx?id=7159][color=#000000][color=#5c585a]点此了解分享任务详情[/color][/color][/url][/b][/font]\r\n\r\n[color=blue][font=宋体][b]六：聊天[/b][/font][/color]\r\n[color=blue][font=宋体][img=,700,43]/img/bbs/2013/01/40C.jpg[/img][/font][/color]\r\n[color=blue][font=宋体][b][color=#000000]拍前聊：主要为虚拟商品成交前提供聊天记录，需要接手人使用绑定买号登陆旺旺后与卖家制造聊天记录；[/color][/b][/font][/color]\r\n[color=blue][font=宋体][b][color=#000000]聊后收：主要针对消保店铺使用，接手人需要在收货时使用买号登陆淘宝旺旺与卖家沟通表示货已收到质量满意；[/color][/b][/font][/color]\r\n\r\n[color=blue][font=宋体][b]七：购物车[/b][/font][/color]\r\n[color=blue][font=宋体][img=,700,46]/img/bbs/2013/01/40F.jpg[/img][/font][/color]\r\n[font=宋体][b][color=#000000]购物车：针对发布人想一个任务发多个商品的需求设计，接手人需要使用淘宝购物车购买任务中多个商品，一次付款；[/color][color=#000000][color=#5c585a][url=http://www.mei-le.com/bbs/]点此了解购物车任务详情[/url][/color][/color][/b][/font]\r\n\r\n[color=blue][font=宋体][b]八：需改价[/b][/font][/color]\r\n[color=blue][font=宋体][img=,700,50]/img/bbs/2013/01/412.jpg[/img][/font][/color]\r\n[b][color=blue][font=宋体][b][color=#000000]需改价：表明任务担保金与(商品淘宝标价+运费)之和不一致，需要接手人拍下后联系发布人改好价格后再进行付款操作；[/color][/b][/font][/color]\r\n[/b]\r\n[color=blue][font=宋体][b]九：带字[/b][/font][/color]\r\n[color=blue][font=宋体][img=,700,45]/img/bbs/2013/01/415.jpg[/img][/font][/color]\r\n[color=blue][font=宋体][b][color=#000000]规定好评内容：发布人为该任务交易规定了好评的具体内容，需要接手人在淘宝提交好评时将该好评复制黏贴到好评内容中即可；[/color][/b][/font][/color] ', '1358768272');
INSERT INTO `bf_posts` VALUES ('134', '95', '39', 'windows', '1', '0', '淘宝分销商好做吗?分销商如何保护自身利益！', '淘宝分销商好做吗？这个题目很让代办代理商们纠结，找到一个好的供货商是成功开店的枢纽。但是我们这些分销商往往会成为大供货商成功道路上的垫脚石，一旦供货商自己的店铺货源吃紧的时候，吃亏的往往是我们这些分销商。所以作为一个淘宝分销商要怎么来保护自身的权利呢？有时候供货商对于我们的不正视，倒是我们会夹在买家和供货商之间十分两难，所有的矛盾都是我们来承担。\r\n\r\n有良多新手卖家图省事帮别的卖家做代办代理，或者申请做分销商，一定要留意以下几点：\r\n 上家的商品质量、优惠措施和服务质量你无法完全掌控，在跟你的买家承诺时最好留有一定的余地，有可能的话最好事先再跟上家一一确认。有不少新手卖家为图短时间内晋升信用，将自己的利润余地几乎降低为0，一旦有纠纷自己就赔钱又不讨好；\r\n 上家实在就是你的卖家，你是上家的买家，一旦有纠纷协商不成时一定要及时维权~\r\n\r\n淘宝客服电话：集市商家热线 0571-88157858\r\n人工在线客服：[url]http://service.taobao.com/support/onlinecs/onlineServiceAsk.htm?source_id=175[/url]\r\n\r\n阿里巴巴服务热线\r\n 电话: 400-800-1688 本文来自美乐网 \r\n          0571-85027110\r\n\r\n阿里巴巴客服中央：[url]http://view.china.alibaba.com/cms/promotion/service/zzfw/gc/index.html?tracelog=kf2011_zzfw_more[/url]\r\n\r\n有其他情况，我第一次在淘宝上面创业并选择分销这个平台！由于全无新店，良多供给商都不愿合作，要不就是必需要一个月有销量，还要划定有多少销量，要不然就自动终止合作。好不轻易在天猫分销里面找到两个需要交保证金而且未几就可以成为终身的合作商，无论您的销量如何，如何做流动！只要你有单就给你发货！有一家承认是做高仿的，价格实惠，可惜就是客服的立场不好，而且回的很慢，但是由于他们其实，所以仍是能忍即忍。！而另一家呢，保证是有实体店，品牌销售，假一赔十，但是就是价格贵了点，考虑再三，觉得有品牌保证，我向客人描述的时候就有了底气，所以也忍痛与他们合作！由于觉得是在天猫里面的，所以加上供给商又有保障，所以就交上加盟金（不可退的）与他们合作。开店也快两个月了，经由良多渠道的宣传，高仿的那家店还可以，至少没有客人投诉之类的，大家反应还可以，究竟一分钱一分货。而且我自己也几乎没怎么赚，大部门都是只赚几块钱。反正我的原则就是”宁可不赚，也不亏本！“\r\n\r\n    这几天大家都快放假，都会在网上为自己买一件新衣过年，所以终于有人看重了那个品牌保证的供给商的东西，而且是店里唯逐一件上千的羽绒服，由于和他保证是品牌销售，假一赔十，再加上我以我能承受的最低价卖给她，所以终于成交了。可是就这一件，似乎把分销商和供给商还有客人的矛盾全都一体化了，刚开始问了供给商，供给商有货，而且是早上十二点前成交的单，所以按照供给商的保证，当天十二点前的货当天发，我也向客人保证了。结果那天下战书，供给商要我问清晰客人的身高和体重，由于是上千元的衣服，而且也接近要过年了，所以十八号以后售出的货不能退换：当时我就在想真不亏是品牌直营的，客服的立场就是好，而且回复的速度也很快，可是麻烦就在这，下战书问我这个题目，也就是说货今天发不出去了。不外也是，上千元的衣服，最重要的是质量好和服务才能迎来更多客人，所以我赶快打电话跟客人询问。并保证实早一定会发货。\r\n   结果第二天上午，供给商跟我说客人要的那件颜色的衣服已经没货了，工厂不愿意出产，我很无奈，不知道怎么跟客人说，就叫供给商自己打电话给我的客人说清晰。本来客人当时是想退的，但是由于我的服务立场比较好，再加上她想给我小卖家增加点信誉，而且大部门都是卖一样的，价格还比我高，都是有品牌保证的，所以她就选择换色照发。我非常感谢她！也非常兴奋碰到了这样的客人。我非常珍惜她，所以对她的货，都一直跟踪着。也一直催供给商快点发货，我想供给商的客服都快烦死了我了吧！不外我想，谁叫你们搞那么多乌龙呢？事情还没完~~~ \r\n浙江发货，发货第二天，既然还在浙江嘉兴就开始派件了，由于客人是四川的，由于我第一次搞淘宝，所以良多术语都不熟悉，我自己也看了，但是没注意什么叫派件，直到客人跟我说，我才知道，我马上跟供给商联系，供给商也马上让快递更改，我看了一下，签收人是物流。晚上，我要供给商给我一个理由，结果她说快递那么犯错了，我想客人都没计较，我也就算了，供给商隔天早上跟我说，换了个物流，顺丰的，估计一天就能到。我也跟客人这么说，可是我隔天帮她查快递，还在浙江，问了供给商，供给商说那估计明天能到。我已经不敢在相信供给商的话了，所以客人问我，我只能跟她说，换了个物流公司，相对比较快，三天左右能到，请耐心等待！谢谢她一直以来的信任和支持！我真的非常的在意每一个客人。\r\n \r\n  结果真的三天后早上终于到了，我捏了一把冷汗，也终于松懈了。但这件事还没完。晚上客人很生气的跟我说，发的衣服不是她要的牌子和款式，（都是和描述不符的）这点我仍是知道的，我马上叫他什么都不要拆和撕，把她以为和描述不符合的全部照下来给我，我马上复制给供给商，要求他们退货。我真的收到这个动静，真的崩溃了，别说是客人了，连我都对这家供给商没什么信任可言了，我据理力争一定要帮客人争取退货，由于从相片看上去的那件衣服完全不是那质量和价格，更不要说那牌子了！结果供给商说他们会解决的，叫我等待，我一直催他们，要怎么解决，他们说会打电话跟客人协商的，我就叫他们今晚一定要解决好，否则谁都别想睡，别想走。(反正我是一定要为客人讨回合理的，究竟将心比心，是我们经历了那么多乌龙，仍是选择相信这个卖家，结果收到的货仍是次品，把之前的保证都当放屁一样的，这对我们小卖家还有什么信誉可言，到时客人都不愿意给小卖家机会了，那我们岂不是更难存活了）然后他们的主管就打电话给她跟她说什么，早就换款式和品牌了，只是没跟分销商说。听到这句话，我就郁闷了，这是什么理由，当初要发货之前就应该跟我们分销商说清晰，现在就把责任推到我这了，别说客人了，连我都无语了。客人激动，我比她更激动，一边安抚客人，一边跟供给商要一个交代！结果终于熬不外我，他们发了一个收货地址给客人，可是却是私家的，由于她们客服没有休息的，可是我不再信任了，就一定要他们公司的，可是他说他们公司过年要放假了，收不到货，寄到他们私家地址比较安全。我要求他们给个保证，万一你们由于超时，或者拘留收禁，以任何借口不肯退怎么办，千元不肯退怎么办，她马上就发他们公司的地址给我们。结果没事了，还好供给商肯退，所以就算没事了。大家都去休息了。不外事情还没完~~\r\n\r\n第二天客服主动跟我说，叫客人先不要寄昨晚的地址。我问为什么；她说由于他们全部从仲春一号就开始休息了，到时怕他们收不到货，就坚持发给他们私家的地址，这个完全是私家的地址了。我不相信，我说，那你们到时叫人去拿货。反正僵持不下，我就说，你去联系客人，假如他还没有寄出去肯换地址，我没话说。等他们联系后跟我说，客人已经快递出去了。我的心才放下来，究竟寄到私家地址，到时怎样的题目都不知道，仍是寄到他们公司地址我才放心。但是我想想仍是不放心，反正客人已经在我这里退款了，我马上在供给商那边申请退款，由于有客人的照片，所以我就有理申请退款。由于申请退款了，假如他们不肯，我就又要让他们烦了。不外还好他们接受了。\r\n \r\n今晚客人跟我说由于他出差，所以叫别人寄，付了快递费。我马上跟供给商说，供给商竟然跟我说非质量题目，邮费由客人自己出。这次我就真的火了。什么叫质量题目？相对于平等品牌平等商品，非质量题目，客人要求退货，我可以跟客人谈清晰。可是这件不用和客人说，我一定要为客人争取邮费和退款！假如和供给商谈不拢，我就要求淘宝参与!~~~~~~此事还没完，还要等供给商收到货后，再退款！\r\n \r\n    之后我再找供给商，一定要找有品牌授权的标记，比那些口头保证的供给商来的好点！！小卖家伤不起啊！尤其碰到这样的供给商，真的其实是无语啊！所以每个做分销商的小卖家，我也不知道该如何预防供给商的虚假承诺，我只知道，能为客人讨回合理，必需据理力争，就算从此失去这个客人，至少我们心安！不外我也但愿淘宝分销能为分销商提供保证，检修每家供给商，才宣布在天猫分销中给我们小卖家选择！\r\n\r\n小卖家真的伤不起，最怕质量题目，再加上不愿负责的供销商，真的就无语了。加盟费还不能退！反正只要在发生一件这样的事，我一定要让淘宝参与，终止合作关系和退回我的加盟费！', '1359898143');
INSERT INTO `bf_posts` VALUES ('101', '66', '3', '美乐管理员', '1', '0', '被人淘宝 投诉了 速度帮我冻结对方', ' 任务编号：20120909170154312850\r\n接手人：king888 \r\n接手买号：jiandanxxx \r\n快 帮忙 冻结对方\r\n\r\n日的 从对方刚接任务 我就有这个担心了 积分低 买号是刚申请的 看到这种我就怕的要命 但是对方 直接拍了付款 我也不能说什么\r\n\r\n核实货款好评时候  对方死命的催  又是QQ 又是短信的\r\n[emot=qq,11/]\r\n[img=,504,333]/img/bbs/2013/02/27BE.jpg[/img]\r\n\r\n[b][color=#013add][size=3]我们其实是[color=#f10b00]强烈建议大家退出七天包退换的消保[/color]再来刷信誉的；如果发布人一定要用消保店铺发任务，我们[color=#f10b00]建议发布方在发布任务的时候选择自动过滤接手人平台积分（比如大于四百[/color][color=#f10b00]）[/color]，这样子可以大大增加骗子的作案难度；因为骗子都是用新注册的账号来做任务的，不会等到积分到了几百分以后才发起维权；[/size][/color]\r\n\r\n[color=#013add][size=3][img=,477,128]/img/bbs/2013/02/27C1.jpg[/img][/size][/color]\r\n\r\n[color=#013add][size=3]---美乐官方[/size][/color][/b] ', '1360049012');
INSERT INTO `bf_posts` VALUES ('102', '67', '3', '美乐管理员', '1', '0', '【新手入门】刷钻要不要加入淘宝消保？消保店铺如何刷？', ' [b][color=#307f00][size=2][size=3]很多来平台的朋友都喜欢问我要不要加入消保呢？ 消保对刷钻有没有影响呢？[/size][/size][/color]\r\n\r\n[size=2][size=3][color=#013add]第一点：[/color]我们能够理解其实很多用户加入消保的[/size][color=#fe2419][size=3]目的[/size][/color][size=3]不是为了加入消保而是因为江湖上流传的加入消保给淘宝钱了，淘宝就会你的违规行为网开一面或者从宽处理这样的传言；[/size][/size]\r\n[size=2][size=3]这里我可以给大家一个[/size][color=#f10b00][size=3]很明确的答案：不会！[/size][/color][size=3]事实上加入消保甚至直通车等等淘宝烧钱行为对您的任何违规都不会有任何帮助；[/size][/size]\r\n\r\n[size=3][color=#013add]第二点: [/color]在平台上刷信誉的朋友都是不会真正发货的，所以一旦有人恶意[/size][color=#fe2419][size=3]利用消[/size][/color][color=#f10b00][color=#fe2419][size=3]保金进行威胁[/size][/color][size=3]，[/size][color=#000000][size=3]那么您将[/size][/color][/color][size=3]会面临一堆麻烦去处理；[/size]\r\n\r\n[size=2][size=3]我们研究过一些淘宝上的一些利用消保进行恶意退款的案例，虽然[/size][color=#f10b00][size=3]大部分是以失败告终[/size][/color][size=3]但是也会给发布人带来不少的麻烦；（淘宝上买家申请消保退款是需要提供商品不影响二次使用证明，还有退还货品的证明的；如果发布人没发货，买家也是很难提供这些有效证据的；）[/size][/size]\r\n\r\n[size=3][color=#307f00][size=3]如何远离骗子安全刷钻：[/size][/color][/size]\r\n[size=3][color=#013add]第一：[/color]广大[color=#f10b00]发布人[/color]尤其是充值类店铺，在刷钻期间不要开通淘宝消保，给骗子可乘之机！如果一定要开通消保，那么请发任务的时候选择[color=#f10b00]自动过滤接手人平台积分>400[/color]，或者[color=#fe2419]人工审核接手人[/color]，另外最好能[color=#fe2419]发聊天任务[/color]，[color=#fe2419][color=#000000]要求接手人在收货后旺旺联系说[/color]“货已收到质量很好很满意”[color=#000000]之类可以作为收到货证据的内容，然后在平台核实货款[/color][/color]；这样能大大增加骗子的行骗成本与难度，将骗子限制在你的积分范围之外；\r\n[/size]\r\n[size=3][color=#013add]第二：[/color]广大[color=#f10b00]接手人[/color]一定不要去拍任务商品以外的任何链接，因为平台只会查看接手方是否购买了任务链接而不是任何其他链接！[/size]\r\n\r\n[size=3][color=#013add]第三：[/color]严格按照任务流程一步一步操作，不提前或跳过任何一步；[color=#fe2419]先核实再操作！[/color][/size]\r\n[size=3]只要大家能够严格按照任务流程一步步操作，任何骗子也不会有可乘之机的！[/size]\r\n\r\n希望广大接手人能够提高警惕，遇到这样的要求拍任务以外链接的任务时及时告知我们平台客服！\r\n\r\n[color=#307f00][size=5][color=#013add]要求拍任务外连接对发布人处罚措施：[/color][/size][/color]\r\n[color=#307f00][size=5]首犯我们客服将会第一时间终止该任务[/size][/color]\r\n[color=#307f00][size=5]二次被举报者将会被扣除任务一半兔粮[/size][/color]\r\n[color=#307f00][size=5]三次以上被举报将会扣除任务所有的兔粮（如接手人使用的预订卡将返还等额的兔粮给接手方！）[/size][/color]\r\n\r\n[color=#307f00][size=5][color=#f10b00]只有大家共同努力才能为大家自己创建一个安全顺畅的平台环境![/color][/size][/color][/b]', '1301598806');
INSERT INTO `bf_posts` VALUES ('104', '69', '3', '美乐管理员', '1', '0', '【新手必读】我一天刷多少个信誉安全？', ' [b][color=#156200]近来总是有新来的刷客问怎么才能真正安全的刷钻！[/color]\r\n[color=#156200]我这里就为大家总结一下，希望有什么遗漏的大家可以帮我补充；[/color]\r\n[/b]\r\n[color=#0021b0][b]知己知彼方能百战不殆，希望大家先了解淘宝第二代稽查系统的封店策略：[/b][/color]\r\n[color=#0021b0][b]我们还需要注意些什么：[/b][/color]\r\n[b][color=#f10b00]速度，销量和频率[/color]：[/b][color=#f10b00]速度[/color][color=#f10b00]切忌贪快[/color]，一定要循序渐进；永远记住一点，刷的快查的快！每天发的任务最多不能超过自己店铺当前信誉的10%。如店铺100点信誉，那么平台发任务也就不能超过10个；[color=#f10b00]销量切忌突然变化[/color]，一定要渐渐的增长您的商品销量，突然大幅增加您的销量无异于你去打电话通知淘宝我在刷钻；[color=#f10b00]频率切忌集中在某个时段[/color]，一定要把时间均匀分不开，不要每天的销售都集中在一两个小时内；尽量均匀分布；\r\n\r\n[color=#f10b00][b]小号的安全：[/b][/color]与大家网店的安全同样重要：很多网店被查最后淘宝给出的原因是，购买您的商品的小号被查封牵连到了卖家店铺；所以小号的安全与大号的安全是同等重要的； [color=#f10b00]小号注册与[/color][color=#f10b00]使用切忌懒：注册时换Ip，清cookies，小号名字不要相近，填写完整个人信息；小号使用时，不要一号到底，经常切换小号，每次切换都要换Ip，清cookies；[/color]\r\n\r\n[color=#f10b00][b]虚拟与真实[/b][/color]\r\n[b]实物交易：[/b]最好能用真实快递任务，不想用真实快递的，[color=#f10b00]最少也要24小时[/color]以上的好评时限；\r\n[b]虚拟交易：[/b]最好能有旺旺交易相关[color=#f10b00]聊天记录[/color]；\r\n\r\n想先卖虚拟物品到钻后再转实物的，我这里奉劝您还是不要钻这个空子了；因为淘宝早在一年前就已经针对这个漏洞做了稽查触发；\r\n[b]第一：[/b]尽量不要虚物 实物 在一个店里卖；\r\n[b]第二：[/b]以后准备卖什么现在就刷什么，突然改变店内商品目录，甚至虚拟转实物的，都将是一个结果 ：自查\r\n[b]第三：[/b]如果真的要转，不要马上转，淘宝官方的说法是，停止店内一切活动 六周以上；\r\n\r\n[b][color=#fe2419]关于淘宝直通车[/color][/b]\r\n加入直通车的目的是告诉淘宝，我有消费能力，以后会消费更多，惩罚我太多对他们没好处。另外开通了直通车可以给店铺带来很多真实流量，这对您刷交易和打造热销宝贝都是益处多多的；直通车配合上平台的来路任务可以说是平台老用户打造爆款的最佳组合了；\r\n\r\n[b][color=#f10b00]关于购物车任务：[/color]\r\n第一：[/b]发布购物车，不能超过当天任务总量的10%-20%，如每天10任务，那么购物车最多只能是1-2个\r\n\r\n[b]第二：[/b]购物车任务不能次次都是6个商品，最好是2-6商品轮替，无规律\r\n\r\n[b][color=#f10b00]商品的价格[/color][/b]\r\n经过我们对大量数据的统计，发现一个很重要的规律：[color=#f10b00]淘宝是嫌贫爱富的[/color]；\r\n一个刚刚起步的小卖家如果卖的都是三五块的东西，哪怕每天只刷5个，10个也有机会触发自查；\r\n另外一个卖家如果卖的是几百元的东西，哪怕每天刷十个二十个，也很少被自查；\r\n或许淘宝监察系统的设计者认为刷钻的人都是想用最低的成本来操作的吧；\r\n这一点仅作为我们的建议，供各位参考！\r\n\r\n[b][color=#fe2419]善用系统默认好评（有效！）[/color][/b]\r\n论坛里有人反映有人两个月上三皇冠了，经过调查竟然有数个类似的店铺；查看了其信誉列表所有信誉的[color=#f10b00]99%[/color][color=#f10b00]为买家非主动好评的系统默认好评；[/color]这么短时间上三皇冠，又没有被淘宝稽查，说明什么？ [color=#f10b00]淘宝对[/color][color=#f10b00]这种非主动的系统默认好评监管是非常松的；如果大家不急于一天两天的信誉增长速度，希望大家可以利用[/color][color=#fe2419]淘宝这一漏洞[/color]，多在发布任务时考虑下买家不主动提交好评（或者卖家不给回评），而是等淘宝系统默认好评；\r\n（这里有一个典型的例子大家可以参考一下：[url]http://rate.taobao.com/user-rate-43656d088a2bee69f5a1bb7a56003339.htm[/url]）[b]有图有真相上图[/b]：\r\n\r\n[img]http://www.hiwinwin.com/upload/2010/6/19/2feb3aeb-b483-4d3f-af9f-eb99d0c77d61.jpg[/img]\r\n\r\n[img]http://www.hiwinwin.com/upload/2010/6/19/3ea7f41e-89d3-48b2-a74d-9dacd166f9cd.jpg[/img]\r\n\r\n[b][color=#f10b00]真实快递任务[/color][/b]\r\n发布人为了降低单个快递任务的平均成本，总是尽量想要把每个快递任务都做成有五六个链接的任务；这样会造成的结果就是，[color=#f10b00]卖[/color][color=#f10b00][color=#f10b00]家的信誉里面全是单个买家的批量购买记录[/color][b]；[/b][/color]\r\n事实证明这样做的结果就是：当你的卖家信誉中，单用户批量购买的类型交易比例达到一定的值的时候，也是能够[b][color=#f10b00]引起淘宝自查[/color][/b]的；\r\n所以我建议大家有两种方法可以避免这类情况的发生：\r\n\r\n[b][color=#013add]第一种：最安全的方法，都发布快递任务的时候，尽量让商品链接超过两个的快递任务比例低于你所有卖家信誉值的[color=#f10b00]50%[/color]；[/color]\r\n[color=#013add]第二种：穿插着发快递任务和普通任务实物任务；这样的方法虽然存在一定的风险，但是也比所有任务都发多连接的快递任务安全；[/color][/b]\r\n\r\n[color=#f10b00][b][size=3]我打造的卖家信誉什么才是安全的呢？有一点永远不会错，那就是和实际交易一致就越安全！[/size][/b][/color] ', '1358767782');
INSERT INTO `bf_posts` VALUES ('105', '70', '3', '美乐管理员', '1', '0', '【公告】关于任务留言被滥用的处理方法！', ' [b][color=#013add]我们推出任务留言功能本是好意，希望大家能够给接手人一些必要的提示信息；用来给发布人向接手人传达诸如某充值的手机号码格式啊，游戏账号格式啊等等这些提醒内容；但是没想到这个功能被发布人无限放大了；我们再三强调这个功能仅作提示用，不具备任务强制性，更不能作为申诉的理由的；所以接手人完全可以根据自身的情况来决定做还是不做；[/color]\r\n\r\n[color=#013add]但是越来越多人反映很多发布人留言中要求：收藏啊、拍多个链接啊、发马上好评任务要求24小时以上收货啊等等这些违规行为；要知道在平台上您的兔粮是钱，广大接手人的时间和精力也是同样是钱；[/color]\r\n\r\n[color=#013add][color=#000000]任务留言中如果涉及如下内容将会被判定为违规任务：[/color][/color]\r\n[color=#013add][color=#307f00]一：要求店铺收藏或者商品收藏；[/color][/color]\r\n[color=#013add][color=#307f00]二：要求接手人拍任务链接以外的多个链接；[/color][/color]\r\n[color=#013add][color=#307f00]三：要求接手人收货时间比任务要求好评时限晚（例如：马上好评任务，要求24小时收货等）；[/color][/color]\r\n[color=#013add][color=#307f00]四：要求接手人进行旺旺聊天[/color][/color]\r\n[color=#013add][color=#307f00]五：规定接手人按其要求设置收货地址[/color][/color]\r\n[color=#307f00]六：强制要求好评带字[/color]\r\n[color=#307f00]七：强制要求X时间内没有接手过任务的接手人才能接手的[/color]\r\n[color=#307f00]八：强制要求X时间内才在平台或者淘宝发货[/color]\r\n[color=#307f00]九：强制要求通过各种方式【进店搜索，例如搜宝贝后拍，搜掌柜号，或者进店X时间内通过量子统计】拍宝贝[/color]\r\n[color=#307f00]十：强制要求接手人分享宝贝[/color]\r\n[color=#3fa701][color=#307f00]十一：强制要求接手人用实名买号做任务【只限于非实名任务】[/color][/color]\r\n[color=#307f00]十二：强制要求一个链接分开多次拍件数【除开拍一次多件的情况】[/color]\r\n\r\n[color=#f10b00]为了体现平台上公平公正的原则，所以自公告发放之日起，希望广大接手人能配合我们整治，发现了这样的任务就可以及时联系我们客服妹妹，我们客服在核实任务性质后，会把这这种任务后台进行终止；[/color]\r\n\r\n[color=#f10b00][color=#000000]处罚措施如下：[/color][/color]\r\n\r\n自本公告发布之日起，单一用户\r\n[color=#f10b00]第一次被举报仅进行[color=#000000]警告[/color]处理；[/color]\r\n[color=#f10b00]第二次被举报将会[color=#000000]扣除5分平台积分[/color]；[/color]\r\n[color=#f10b00]第三次被举报开始在每结束一个违规任务同时将[color=#000000]扣除任务一半兔粮[/color]作为惩罚！同时关闭该用户任务留言功能！！[/color][/b]', '1301599234');
INSERT INTO `bf_posts` VALUES ('106', '71', '3', '美乐管理员', '1', '0', '为什么要绑定多个买号', '为什么要准备多个买号？\r\n\r\n美乐平台是为了保障广大网商的店铺信誉安全与真实，对每个买号接手任务的频率以及总任务数都有着严格的限制；\r\n\r\n[img=,96,95]/img/bbs/2013/02/276E.jpg[/img]\r\n美乐平台使用买号时的限定：\r\n\r\n[color=#0000ff]1. 美乐平台会为每个绑定的买号随机设定一个信誉生命值，当该买号的买家信誉达到生命值后就不能再使用它接手任务了；[/color]（原因是：尽量避免黄钻号买东西，我是黄钻，等级那么高，买你东西是看得起你，给你增加信誉度，这是错的，这条逻辑正常来说是对的，可这里是对刷，每天都刷10条以上吧，要是都是黄钻，那么就会造成卖家整版的好评都是黄澄澄的一片金光，就像周星驰电影中打开存折本本一样，满脸被金光照着，多假呀，你当时笑了吗？真正买家看到，也被这层金光照到，不是傻子的都会怀疑。）\r\n\r\n[color=#0000ff]2. 同一买号不能在一个自然月内接同一发布人任务超过六个(系统自动限制)\r\n\r\n3. 同一买号十四天内不能接手购买同一产品的任务不能超过一次(系统自动限制)\r\n\r\n4. 同一买号每周接手购买任务数：不能大于35个(系统自动限制)[/color]\r\n\r\n[color=#0000ff]5. 普通会员只能绑定五个买号；信托会员可以绑定10个买号；如果VIP可以绑定买号数不限[/color]\r\n\r\n因此各位刷客需要多注册几个淘宝买号，换着用。 ', '1360047647');
INSERT INTO `bf_posts` VALUES ('107', '72', '3', '美乐管理员', '1', '0', '如何修改淘宝发货地址', '[b]第一步：[/b]使用掌柜号登陆淘宝\r\n[b]第二步：[/b]进入【我的淘宝】--点击【我是卖家】\r\n\r\n[img=,315,102]/img/bbs/2013/02/2742.jpg[/img] \r\n\r\n[b]第三步：[/b]点击左侧导航栏下方【发货管理】进入发货管理界面\r\n[img=,204,256]/img/bbs/2013/02/2745.jpg[/img] \r\n\r\n[b]第四步：[/b]进入发货管理界面后点击左边导航栏里【发货设置】 进入发货地址管理界面\r\n[img=,178,254]/img/bbs/2013/02/2748.jpg[/img] \r\n\r\n[b]第五步：[/b]在右侧的发货地址设置界面填写：发货地址，联系人，联系电话等等信息（[b][color=#f10b00]注：掌柜的发货地址一定要和美乐内设置的所有发货信息一致，才能保障你发布的快递任务的信誉100%安全！[/color][/b]）\r\n[img=,706,409]/img/bbs/2013/02/274B.jpg[/img]\r\n\r\n[b][color=#f10b00]注：请将默认取货地址和收货地址同时设为该地址，如下图[/color][/b]\r\n\r\n[img=,723,179]/img/bbs/2013/02/274E.jpg[/img] ', '1360047328');
INSERT INTO `bf_posts` VALUES ('108', '73', '3', '美乐管理员', '1', '0', '【买家教程】如何在美乐设置买号的收货地址', ' [b]设置您在美乐绑定的买号（小号）的收货地址：\r\n \r\n [color=#013add]第一步：登陆美乐 -进入【淘宝互动区】或者【新手互动区】 选择 【绑定买号】 进入买号维护界面；[/color]\r\n[/b]\r\n[img=,409,126]/img/bbs/2013/02/2765.jpg[/img] \r\n\r\n[b][color=#013add]第二步：在已绑定的买号列表中选择想要用来接手【真实快递任务】的买号，点击右侧的【收货地址】按钮[/color][/b]\r\n\r\n[img=,407,73]/img/bbs/2013/02/2768.jpg[/img]\r\n\r\n[b][color=#013add]第三步：进入收货地址设置界面，填写收货地址，收货人姓名，联系电话 等等收货人信息；[/color]\r\n[/b]省、市、区、街道、从下拉列表中选[color=#000000]择，[b]下拉列表中有的地址才是现在美乐【真实快递任务】业务[/b][/color][color=#000000][b]支持的地区范围[/b][/color][color=#d40a00][color=#000000]；所有收货信息可不必完全真实存在，但最少要貌似真实[/color][/color]；详细地址可以自己编写；（不会编的，到百度搜一下；例如：想查上海市闵行区“华漕镇”的地址 就可以得到这个结果：[url=http://www.baidu.com/s?word=%BB%AA%E4%EE%D5%F2&si=www.yellowurl.cn&tn=ad13china_pg&sts=www.yellowurl.cn&tr=8qVf6uZgJ56&ct=2097152]点击进入[/url]） [b][color=#d40a00]注：[/color][color=#d40a00] 所有收货人[/color][color=#d40a00]信息务必要与淘宝上该买号的收货人信息保持一致！否则接手任务的所有奖励将被扣除[/color][color=#d40a00]；\r\n[/color][/b]点击【确定】就成功设定好这个买号的收货信息了；\r\n [img=,626,464]/img/bbs/2013/02/276B.jpg[/img] ', '1360047603');
INSERT INTO `bf_posts` VALUES ('109', '74', '3', '美乐管理员', '1', '0', '【热烈庆祝】美乐平台真实快递任务功能正式上线！', '[b][color=#ff0000]“美乐” 联手“快递公司”推出：【真实快递任务】 模块![/color]\r\n\r\n[color=#ff0000]平台万人互刷 + 真实快递 打造史上最安全完美刷钻模式！[/color][/b]\r\n\r\n[img=,612,269]/img/bbs/2013/01/4B2.jpg[/img]\r\n\r\n大家都知道以前的平台担保互刷在所有刷钻模式中已经是最为安全高效的；在与淘宝真实交易的一致程度上也是臻于完美的，[b]但是唯一的硬伤就是不能为你的任务交易提供有效的快递单数据；[/b]为了解决这个棘手的硬伤，给大家刷信誉提供100分的安全保障，美乐平台历时三个多月与数家快递公司洽谈合作模式与流程测试，经过仔细的比较信价比与服务质量，终于敲定了快递合作伙伴!\r\n\r\n[b][color=#0000ff]\r\n [/color]\r\n\r\n[color=#0000ff]真实快递功能简介：[/color]\r\n\r\n所谓快递任务：[/b]就是任务发布人可以给平台发布的24/48小时好评任务，同时为任务订制一个[b][color=#ff0000]真实的快递业务[/color][/b]；与平台合作的快递公司在收到您的订单后，会采取真实发快递件（空信件快递），快递公司目的地办事处代签收的方式完成整个快递收发流程；所有快递环节均[b][color=#ff0000]上网可查[/color][/b]，同时可以[b][color=#ff0000]完美匹配淘宝上的收/发货时间地址收件人[/color][/b]，而且在淘宝发起自查时可以依据自查截图索要[b][color=#ff0000]发货底单照片[/color][/b]，作为自查证据。\r\n\r\n[b][color=#ff0000]优势一：全真实快递，所有环节官网可查！[/color]\r\n\r\n[color=#ff0000]优势二：收发货时间、地址、姓名、联系方法 等所有信息与淘宝交易记录完美匹配！[/color]\r\n\r\n[color=#ff0000]优势三：所有单据快递留底，遇淘宝抽查可提供底单照片；打造真正不可删除的完美信誉！[/color][/b]\r\n\r\n[color=#0000ff][b]发布人与接手人“美乐”的任务[/b][/color]\r\n\r\n[b]发布人：[color=#ff0000]发布一个快递任务可得六个完美真实信誉度！[/color]\r\n\r\n接手人：[color=#ff0000]接手一个快递任务可一次赚取六倍于普通任务的兔粮！[/color]\r\n\r\n[color=#0000ff]接发快递任务详细教程：[/color]\r\n\r\n[color=#008000]A：发布快递任务教程>>>>[url=http://www.hiwinwin.com/bbs/Thread.aspx?id=418]点击查看[/url][/color][/b]\r\n\r\n[color=#008000][b]B：接手快递任务教程>>>>[url=http://www.mei-le.com/bbs/]点击查看[/url][/b][/color]\r\n\r\n[b][color=#0000ff]特别说明：[/color]\r\n\r\n1、[/b]目前只提供星辰急便快递单号，先在[b][color=#ff0000]江苏，浙江，上海[/color][/b]三地进行测试使用，如果买家不是江沪浙地区的，接任务时候就必须在淘宝上修改收货地址为[b][color=#fe2419]与平台小号设定的地址一致[/color][/b]（注意修改以后，淘宝就会保存此收货地址，以后不用再修改，即每个小号只用修改一次地址）\r\n\r\n[b]2、[/b]所有购买了发货单号的任务交易[b][color=#ff0000]统一由浙江嘉兴市桐乡市的快递公司代发[/color][/b]货。（嘉兴发货，淘宝会认为卖家是由嘉兴厂家发货）\r\n\r\n[b]3、[/b]由于是全真实发货时，货物扫描及运费等操作需要较高成本费用，所以每个发货单号[b][color=#ff0000]订价为：3.0元一个[/color][/b]。为了降低会员提升信用的成本，平台开发了批量快递任务的功能：会员发一个快递任务可以包含六个宝贝连接，买家接了以后须要拍下六个宝贝，即一个单号可以获得六个好评；每个小号每月只能拍同一个掌柜号的任务一次！\r\n\r\n[b]4、[/b]买家接拍任务并付款后，卖家要注意买家的平台小号收货地址是否是江沪浙地区的，且与淘宝上收货人信息一致；如果不是须要及时联系买家更正。以免不能及时获得真实发货单号。\r\n\r\n[b]5、[/b]为确保真实性，每天的任务统一在当天[b][color=#ff0000]下午17：00发货[/color][/b]，17：00以后的任务就等到次日下午17：00发货。\r\n[b][color=#307f00]（发布人请谨记在当天下午4点前核对地址，准备得到单号）[/color]\r\n6、[/b]特别注意：[b][color=#ff0000]每个单号只能用一次[/color][/b]！请会员切勿重复使用单号！平台保证每个单号只有您用过一次。重复使用会引起淘宝注意，失去不可删除的优势和申诉证据，测如不听劝告重复使用单号被淘宝查处的，平台概不负责。\r\n\r\n[color=#0000ff][b]真实快递任务常见问题解答：[/b][/color]\r\n\r\n[b]1、哪个物流公司的单号？\r\n答：[/b]与美乐合作的推出真实单号业务的快递公司为【[url=http://www.4006688400.com/]星辰急便[/url]】等.....\r\n\r\n[b]2、收/发货地址有限制吗？\r\n答：[/b]收/发货地址限江浙沪部分地区。具体可收发货区域参见：掌柜发货地址设置窗口中地址栏下拉项 和 接手人买号收货地址设置窗口中地址栏下拉项。\r\n\r\n[b]3、快递单真正发货地址是哪里？\r\n答：[/b]浙江温州；这个不必担心，完全服务淘宝上小额批发的交易模式；由生产厂家代发货；\r\n\r\n[b]4、单号是别人用过的吗？\r\n答：[/b]购买者一个人使用的，就是一个真实的快递；除了快递里面没有产品是个空快递以外，其他完全一样。\r\n\r\n[b]5、多少一单？\r\n答：[/b]3元一单。建议一个任务发多个连接，如发6个链接，一单就可以刷6个信誉，每个信誉就5毛真实单号成本。\r\n\r\n[b]6、如何购买？\r\n答：[/b]无需单独购买，只要在互动区批量发布任务时，发布任务界面中选中发布快递任务[ ]即可！\r\n\r\n[b]7、发任务时候我需要提供收货地址给接手人吗？\r\n答：[/b]不需要，接手人接手快递任务前必须先设置好小号的收货地址方可接手任务。同时要求接手人在平台设置的地址跟淘宝实际拍的可能不一致，这是违规行为，如有发现，可以在平台投诉。\r\n\r\n[b]8、怎么知道接手人提供的地址是否代签地址？\r\n答：[/b]具体可收货区域参见：接手人买号收货地址设置窗口中地址栏下拉项。后面的详细地址可以随意，收货人可以随意 但是必须与淘宝上保持一致。\r\n\r\n[b]9、购买单号之后什么时候提供单号？\r\n答：[/b]快递公司一般每天下午5点提供单号。\r\n\r\n[b]10、快递发出之后什么时候送到？\r\n答：[/b]跟真实交易一样，江浙沪一般隔日送达。  ', '1358416963');
INSERT INTO `bf_posts` VALUES ('122', '84', '40', 'big米涛', '1', '0', '说点实际的，真的我对游戏非常的无语！@！', '   几年前偶陷溺魔兽，还带过PFU团，团里有个圣骑士意识和立场很好，一直全勤。所以聊的比较多。 \r\n我一般不去参加公会聚会，听说他唱带着大伙儿吃鱼翅泡饭，FD之后半夜还常组团去腐败，大伙儿都说太子党。\r\n\r\n他是个单亲家庭的孩子，常常和我埋怨。大学才毕业，他爹是做大买卖的，一年到头最多只有三四天在家，特别伶丁。 \r\n他爹呢，一直觉得，这么多年这孩子有爹没娘的。作为富二代，成绩也不错，除了打打游戏上上猫扑也没有不良癖好。孩子越大越觉得愧疚。 \r\n\r\n这哥们青春期之后，就常常在自己家里开party，请一群同学、猫扑网友之类的来玩儿，富豪嘛，天然是住别墅。有一次他爹溘然回家，看到一大群少男女郎吓了一跳。 \r\n\r\n他这群常来玩儿的朋友里，有一个女孩子小A，和他私情很好，比他还小一岁，人长的很漂亮，性格也很不错。只是朋友，他一直也没固定女友。来得多了，和他爸也见过几回。也换了联系方式，他叛逆期之后，他爸就常常通过这个女孩子，了解他儿子的近况。 \r\n\r\n前年年底，他QQ上跟我说，他爹再婚了，就是和小A… \r\n我五雷轰顶，问他：你爹现在带着小A满世界跑生意？ \r\n他说：我后妈跟我一起住，我爹说了，他年纪也大了，是不是再婚，和谁再婚也没什么差别，他就是想找个和自己儿子关系好的，每天可以陪儿子说说话，能照顾儿子。 \r\n我问：那你什么立场？ \r\n他说：他爹要和谁结婚是他的事，我想管也管不了啊，再说小A人挺好的，就一点不好，我管她叫妈很别扭。 \r\n\r\n于是我在这对爷俩这种思维方式眼前彻底崩溃了… \r\n然后差未几有两年我跟他没联系。 \r\n\r\n前几天，他QQ上有找我，说他后妈生了，是个儿子。 \r\n我说那恭喜啊，你有弟弟了。 \r\n他发了一个害羞的表情过来，隔了半天又说：我爹，一年多没回过家了，他还不知道，大哥你人智慧，你帮我想想怎么和他说…', '1358521732');
INSERT INTO `bf_posts` VALUES ('123', '85', '39', 'windows', '1', '0', '【重要提示】还是账户安全问题！', '[b][color=#307f00]昨天有个会员反映，说自己的帐号被盗；而且根据数据显示操纵密码仅仅试验了两次就成功了；\r\n该会员自称自己是程序员，矢口不移是我们的程序员或者同伙盗取了他的帐号；\r\n\r\n[/color][color=#013add]首先一点要明白，我们的数据库内密码字段都是经由加密后才保留的，就算有人能看到数据库数据也根本无法得知用户的密码操纵码；[/color][/b]\r\n[b][color=#013add]第二，经由我们技术职员使用加密后的字符串去破解发现原来这个自称程序员的用户密码就是那么简朴.[/color]\r\n\r\n[color=#fe2419][size=5]登陆密码：123456[/size][/color]\r\n[color=#fe2419][size=5]操纵密码：654321[/size][/color]\r\n\r\n[color=#f10b00]假如平台上还有哪个用户的密码诸如斯类，我建议仍是直接把钱捐给但愿工程更有意义；您的密码已经跟芝麻开门一样尽人皆知了，还要密码干么呢？[/color][/b]\r\n\r\n[color=#307f00][b][size=3]人家都说好话不说二遍，可是为了大家帐户的安全下面这段好话我只能再跟大家唠叨一遍了：[/size][/b][/color]\r\n\r\n[b][color=#ff0000]第一：这里要特别提醒各位，要加强自己的防范意识，保管好自己的双赢账号，密码操纵码，还有QQ密码哦；一定不要访问不着名的链接，不要访问不规范的网站；[/color]\r\n[color=#ff0000]第二：一定要在自己的电脑上安装好杀毒软件和防火墙，同时按期杀毒，更改自己的密码；\r\n[/color]第三：密码禁忌：密码尽量复杂点，不要用123456，888888，000000这些傻子都能猜到的密码；不要用和帐户相同或是局部完全相同的密码；不要用生日、纯数字、手机号码、或者简朴的字母加数字（如abc123）\r\n第四：不要嫌登录麻烦就不去设置安全题目，就像某个广告里说的那样，我就喜欢多重保护呵呵，这个很重要的\r\n\r\n[size=5][color=#ff0000]各位会员，您们账号里的都是真金白银啊，千万要保护好您的财产！[/color][/size][/b]', '1358607259');
INSERT INTO `bf_posts` VALUES ('124', '86', '45', '旺旺tbba', '1', '0', '关于近期的旺旺监控，觉得这个还可以，发给大家看看', '  网上的回答良多，只能确定是淘宝旺旺的文件，是从，7.00.11C版本开始有的本人建议：一定要解决掉这个进程，太狗皮膏药了，而且太另人不爽了！！！本人使用感想：在文件夹里删除后再重新开旺旺仍是会自动天生该文件，并且这个文件是有联网发送数据的（在它要求联网并发送数据的时候我的杀毒是有提示有软件要求联网的）；关了旺旺后，至少十多分钟这个文件仍是在继承运行的，更长的时候没有尝试（没那个耐心）；固然旺旺自己的解释是什么杀毒啊防钓鱼啊云程序的，但是本人觉得不像，更像是流氓软件。 解决方法：1.这个是个旺旺的进程。您假如不想在启动旺旺时启动该进程，可以点击阿里旺旺主界面下方的“安全”按钮，在弹出安全中央弹框后，选中“安全检查”选项，将“启动阿里旺旺钓鱼木马检查”的勾选去掉，即可不启用该进程2.土办法，如下几步：1先在任务治理器里封闭它；2删了它；3打开记事本；4啥都不用输入，直接另存为该文件同名文件；(留意:文件名要输入带扩展名的全名，[例如&quot;miser.exe&quot;就不要把&quot;.exe&quot;给省了，得一起打上]，保留类型选&quot;所有文件&quot;)6搞掂 3.假如是NTFS格局文件系统，可以在“共享和安全”里设置，右键点击Miser文件夹、共享和安全、安全，把“组或用户名称”里留空（全删除掉）、会显示一个对话框--你已经拒绝任何人访问。。。。。点确认即可；也可以找到该文件、右键点击属性，在安全里设置（同前面设置文件夹一样）。解决方法使用感想，方法1是有效果的，设置后是没有再运行这个进程，但是文件夹里被删除的程序仍是有自动天生的；方法2也是有效果的，建立文件后，启动旺旺，没有再运行这个程序，并且建立的文件没有再被修改；方法3因为本人电脑设置的题目，无法尝试。本人是先用的方法2，之后又去尝试的方法1。个人觉得两个都用上比较保险~最最最讨厌这种狗皮膏药程序了！！--------------------------------------------------------------------增补：关于大家对于这个程序的一些看法：1.要帮一朋友买点东西，开了旺旺，结果卡巴在右下角疯狂提示，拒绝了MISER.EXE试图注入代码，进了通知具体一看，MISER.EXE可以说是遍历了计算机里的进程，每个进程都试图注入代码。心惊之下开了Process Monitor监控了下，发现这个进程不断在非自身文件夹下创建、读取 文件、映像，注册表方面 也在修改包含CurrentControlSet里的内容，它想干嘛？退旺旺，开了Process Explorer，再启动旺旺，发现MISER.EXE是AliIM.exe的子进程，而且是用红色标注的，看了下颜色的解释是“Deleted Objects”，一泛起这个进程卡巴就开始提示，然后进程消失。。MISER.EXE在度娘那说是阿里旺旺的进级程序文件，一个进级程序文件岂非要需要这样遍历几乎是所有的进程并注入代码，再访问修改如斯多的文件、键值吗？本人是菜鸟，以个人了解，进级程序应该是分析当前安装着的文件，联网下载需要的文件，再替代或添加就成了，最多就调用下公用的DLL文件啊。2.不是病毒，是新版淘宝旺旺的文件。固然不是病毒，但是其流氓软件的特征十分显著，它会在内存中直接访问你运行的所有进程，无论是你炒股的软件，仍是你的网银，仍是你用的各个浏览器，无论是什么，只要你运行，这个miser.exe就会在内存中直接读取你当前运行的进程。你找到这个进程删除，淘宝旺旺再次运行的时候还会天生这个文件。从保护用户个人信息和个人隐私的角度，这个miser.exe的危险等级是十分高的。我目前用HIPS（主机入侵防备系统）限制了miser.exe的动作，禁止它在内存中访问别的进程。假如你会用HIPS，你也可以这么做。假如你不认识各个进程，不建议使用HIPS[size=3][b]追问[/b][/size]自从出来这个进程后，直接封闭了旺旺。过了一天后，发现电脑上的其它进程占用的内存也异常的大。电脑放着不用，过十分钟就会死机，是旺旺的影响吗？ [size=3][b]回答[/b][/size]怎么说呢，我一开始是昨天晚上旧的那版的旺旺开了后，显示有两个旺旺程序，但是我是只开了一个的，之后CPU一直占用100%，重新开机与重新上旺旺都无法解决，之后连开了几分钟旺旺后，电脑就黑屏自动重启了。然后用360的软件管家把旺旺彻底删除后，又下的最新版~结果又出了miser.exe这个毛病！唉现在解决了，暂时来说是没新题目了，试用时间还不到24小时~题目：你的是哪个程序占用内存大？大概多少？CPU使用率占了多少？有没有仔细的研究下任务治理器？看看都有什么程序在运行？（我的之前就是旺旺主程序关掉后，那个miser.exe却仍是一直在运行，一定要进任务治理器的进程栏结束进程才行）以下建议你可以先尝试下，1.用360的开机加速功能进去看看有没有关于旺旺的开机程序，实际上旺旺的所有相关程序是没有必要在开机的时候启动的！另外，请留意，开机加速的“启动项”里的第2个选项-“计划任务”里面的“阿里旺旺的进级任务”，这个一定要关掉，禁止掉，这个假如开启的话，就算你N天没开旺旺，它也会天天自己启动，就是开机一段时间后任务治理器里这个程序就运行了，并且是要联网发送数据的，半天都不会自己关掉的！2.用360的“清理插件”功能，看看是不是加了没有必要的插件3.用360的系统修复功能，看看是不是多了不该有的东西~4.扫描下有没有流氓软件或是杀毒~5.下个新的旺旺安装包，或是找个旧版的旺旺安装包，把你电脑上旺旺卸干净它，用软件管家之类的软件来卸，之后重新装上旺旺，假如是新版的话，请先把那个miser.exe的题目解决好，再开启旺旺的主程序。以上的方法你可以尝试下，也可以等你查了任务治理器再找我，还有，最好用360的进程治理器功能查看下，那个更利便一点~实际上一般我的电脑出题目都是自己是用360和瑞星+卡卡一起查的~看看哪出了毛病，太深的东西咱也不懂啊~补下：关于旺旺这个程序要求联网的子程序AliIM.exe-6模块；Miser.exe-7模块；alicert_s.exe-6模块；CrashDumper.exe-6模块；AliLogHelper.exe-5模块。好象还有一个是关于自动更新的程序，不外那个被我从注册表那边解决了~这里面只有AliIM.exe 是有用的，是旺旺的主程序其他的联网被禁止是不影响旺旺的使用的~总之是，很流氓啊~声明下，本人用的是买家版', '1358690469');
INSERT INTO `bf_posts` VALUES ('125', '87', '45', '旺旺tbba', '1', '0', '2000元十几个小号每天在线十个小时问每个月能挣多少钱啊？', ' 我想在美乐平台上上挣钱，有3000元钱有十几个小号，每天在线十个小时，想问问这样刷一个月能挣多少钱啊？', '1358690601');
INSERT INTO `bf_posts` VALUES ('126', '88', '45', '旺旺tbba', '1', '0', '【必读】一次设置永远远离淘宝客，接手人必读！', '[b][color=#fe2419]转发这个帖子的目的是想让大家都可以通过以下两种方法中的一种来杜绝访问淘宝客链接给自己带来无名的损失：[/color]\r\n\r\n[color=#f546ff]方法一（推荐）：推荐方法一是因为方法一不受浏览器类型的限制，方法二中方法如果您使用的是360防火墙搜狗浏览器会不理睬360的警告直接访问[/color][/b]\r\n\r\n[color=#fe2419][size=3][size=7][b][img=,723,542]/img/bbs/2013/01/202.jpg[/img] [/b][/size][/size][/color]\r\n\r\n[b][color=#f328ff]方法二：请注意！！如果您使用的是360防火墙搜狗浏览器会不理睬360的警告直接访问[/color]\r\n\r\n[color=#fe2419]把“http://s8.taobao.com” 和 “http://s.click.taobao.com”[/color][/b][color=#fe2419][b]这两个淘宝客地址头加入您的防火墙的访问黑名单，来让您彻底安全的接手任务；从此不再为淘宝客烦恼！！[/b][/color]\r\n\r\n[color=#fe2419][b]：[url=http://www.hiwinwin.com/bbs/Thread.aspx?id=16266]http://www.mei-le.com/bbs/[/url][/b][/color]\r\n\r\n[b][color=#fe2419]===================================================[/color][/b]\r\n\r\n[color=#0000ff][size=2]淘宝客大家很熟悉了，实际上我也开通了淘宝客，佣金平均是10%左右，个别商品达到15%，本来也没啥，淘客帮我推广，我少赚一点也没事，只要能亏，生意还是得做，但是后来发现经常有莫名其妙的被淘客扣走佣金，甚至我自己在本机用另一个账号给自己刷信用也会被淘客扣佣金，某天居然扣了40多块，那叫我一个火大啊，起初我还是相信淘宝，以为只是我自己误点了别人发的我的商品的淘客链接，自认倒霉。[/size][/color]\r\n\r\n[color=#0000ff][size=3][size=2]据说淘宝客信息是写在cookie里面的，然后我每次给自己刷信用的时候都会清除掉cookie，发现还是有被淘客扣佣金的情况，然后我发现在淘宝首页搜索的时候，会自动跳转到s.taobao.com，这个是淘宝的搜索引擎，通过此引擎搜索到的是全部商品，但是有时候会跳转到s8.taobao.com，搜索同一关键词搜索到的商品明显比s.taobao.com这个引擎搜索到的商品数量要少，因为这个搜索引擎搜到的商品全部是淘客推广链接，起初以为这个引擎不是淘宝的，是非淘宝官方人员为了赚取佣金，用木马或者其他手段在我电脑上安装插件来赚我的佣金，经过进一步查证，发现s8.taobao.com这个搜索引擎就是淘宝官方的，而且出现的几率是相当高啊，在首页搜索关键字，有一半以上的几率会跳转到这个坑爹的搜索引擎，果然是坑爹啊坑爹，于是我把这个网址加入到黑名单，只要跳转到这个坑爹网址，就拦截，从此以后自己给自己刷信用的时候再也不会被扣佣金了，唉[/size][/size][/color]\r\n\r\n[color=#ff0000][size=3][size=2]很多同学们发布来路任务的时候也要注意，如果开通了淘客，很可能会被淘客赚走佣金的哦，不是接任务的人赚走的哦，是被坑爹的淘宝官方赚走的啊啊啊啊啊[/size][/size][/color]\r\n\r\n[color=#ff0000][size=3][size=2]不多说了大家看图，以上文字全部自己手打，图床都是国外的，图片打开可能有点慢，见谅[/size][/size][/color]\r\n\r\n[color=#ff0000][size=3][size=2]\r\n[/size][/size][/color]\r\n\r\n[size=6][color=#000000][size=5]这是s.taobao.com引擎搜索“移动硬盘”关键词搜索到的商品总数，有197531件[/size][/color][/size]\r\n\r\n[color=#ff0000][size=3][/size][/color]\r\n\r\n[color=#000000][size=6][size=5][img=,705,524]/img/bbs/2013/01/205.jpg[/img] [/size][/size][/color]\r\n\r\n[color=#000000][size=6][size=5]点开，是正常的商品链接网址，很正常，非常正常[/size][/size][/color]\r\n\r\n[color=#0000ff][size=3][size=5][img=,700,407]/img/bbs/2013/01/208.jpg[/img] [/size][/size][/color]\r\n\r\n[color=#000000][size=6][size=5]或者，在淘宝首页输入“移动硬盘”关键词，跳转到s8.taobao.com坑爹引擎，搜索到的商品总数是52503件，这全部是加了淘客代码的[/size][/size][/color]\r\n\r\n[size=6][color=#000000][size=5][img=,694,511]/img/bbs/2013/01/20B.jpg[/img] [/size][/color][/size]\r\n\r\n[size=6][color=#000000][size=5]点开商品，很不正常，链接被加上淘客代码，很坑爹，买了就扣佣金[/size][/color][/size]\r\n\r\n[color=#000000][size=6][size=5][img=,708,471]/img/bbs/2013/01/20E.jpg[/img] [/size][/size][/color]\r\n\r\n[color=#000000][size=6][size=5]于是，我就把坑爹网址s8.taobao.com加到360的网址很名单里了[/size][/size][/color]\r\n\r\n[color=#000000][size=6][size=5][img=,698,460]/img/bbs/2013/01/211.jpg[/img] [/size][/size][/color]\r\n\r\n[color=#000000][size=6][size=5]于是，在淘宝首页搜索的时候，再跳转到s8.taobao.com坑爹引擎的时候就被拦截了[/size][/size][/color]\r\n\r\n[color=#000000][size=6][size=5][img=,613,378]/img/bbs/2013/01/214.jpg[/img] [/size][/size][/color]\r\n\r\n[color=#000000][size=6][size=5]再来看看坑爹引擎是谁家的啊，咋这么坑爹呢[/size][/size][/color]\r\n\r\n[img=,709,118]/img/bbs/2013/01/217.jpg[/img]\r\n\r\n[b][color=#fe2419]转发这个帖子的目的是想让大家都可以通过把“http://s8.taobao.com” 和 “http://s.click.taobao.com”[/color][color=#fe2419]这两个淘宝客地址头加入您的防火墙的访问黑名单，来让您彻底安全的接手任务；从此不再为淘宝客烦恼！！[/color][/b] ', '1358691089');
INSERT INTO `bf_posts` VALUES ('111', '76', '3', '美乐管理员', '1', '0', '【美乐】用户的需求是我们永远的追求！', '[table][tr][td]\r\n[b][color=#ff0000][size=4]我们致力于打造全免费，更安全，更高效，更专业的互刷信誉平台！[/size][/color]\r\n\r\n[size=5][color=#d801e5]五万卖家平台互刷[/color][color=#f10b00][color=#f10b00]+[/color][color=#d15502]真实快递+[/color][/color][color=#307f00]商品浏览量[/color][color=#f10b00]+[/color][color=#0162f4]自动收藏[/color][color=#f10b00] [/color][/size]\r\n\r\n[color=#ff0000][size=5][color=#f10b00]助您打造完美的金冠网店！[img]http://www.hiwinwin.com/images/score_12.gif[/img] [/color][/size][/color]\r\n\r\n[color=#f10b00][size=5][color=#013add]感谢您选择了美乐：[/color][/size][/color]\r\n\r\n[color=#f10b00][size=5]一直以来互动吧都把用户的安全作为我们的终极目标，并为之不断的努力和奋斗；在淘宝的不断变革中积极寻找突破口，不断推陈出新，并且创造了同类平台的多项第一：[/size][/color]\r\n\r\n[size=5][color=#307f00]一、全网首家推出：[/color][color=#307f00][color=#307f00]【[/color]真实快递任务】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size]\r\n\r\n[color=#f10b00][size=5][color=#000000]和知名淘宝联网物流企业合作，以为任务量身定制收发货信息，可在线跟踪，自查可提供底单 三大特点应对淘宝针对物流的自查系统；[/color][/size][/color]\r\n\r\n[size=5][color=#307f00]二、全网首家推出：[/color][color=#307f00][color=#307f00]【[/color]来路订制任务】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size]\r\n\r\n[color=#f10b00][size=5][color=#000000]接手人采用搜索方式进入商品地址，从根本上改变平台任务都是直接访问商品地址造成的商品降权难题，最大程度解决了用户刷爆款商品的后顾之忧；[/color] [/size][/color]\r\n\r\n[size=5][color=#307f00]三、全网首家推出：[/color][color=#307f00][color=#307f00]【[/color]实名买号任务】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size]\r\n\r\n[color=#f10b00][size=5][color=#000000]自动识别买号性质，强制接手人使用实名买号接手任务，并因此大幅提高互动安全性，将自查几率降到最低！[/color][/size][/color]\r\n\r\n[size=5][color=#307f00]四、全网首家推出：[/color][color=#307f00][color=#307f00]【[/color]买号动态寿命】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size]\r\n\r\n[color=#f10b00][size=5][color=#000000]平台绑定买号自动随机分配寿命值，同时具备自适应增寿机制； 让平台买号更贴近真实交易！[/color][/size][/color]\r\n\r\n[size=5][color=#307f00]五、全网首家推出：[/color][color=#307f00][color=#307f00]【[/color]任务随身申诉】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size]\r\n\r\n[color=#f10b00][size=5][color=#000000]申诉功能贯穿整个任务生命周期，做到任务哪步出问题、哪步发起申诉、哪步处理解决问题；同时自动根据任务状态提供对应申诉选项；[/color][/size][/color]\r\n\r\n[size=5][color=#307f00]六、全网首家推出：[/color][color=#307f00][color=#307f00]【[/color]卡任务提醒功能】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size]\r\n\r\n[color=#f10b00][size=5][color=#000000]针对个别发布方拖延发货，拖延核实货款的不良习惯，推出专门的短信提醒功能与对应的处罚措施；最大程度的保证了任务的顺利进行；杜绝卡任务的现象发生；[/color][/size][/color]\r\n\r\n[size=5][color=#307f00]七、全网首家推出：[/color][color=#307f00][color=#307f00]【[/color]旺旺聊天收货】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size]\r\n\r\n[color=#f10b00][size=5][color=#000000]应对淘宝2011全网消保的政策，特推出旺旺聊天收货，根据维权辩护原理，可作为被维权的有力武器；让别有用心的骗子们知难而退！[/color][/size][/color]\r\n\r\n[color=#f10b00][size=5][color=#307f00]八、全网首家推出：[/color][color=#307f00]【手机验证码服务】[url=http://www.mei-le.com/bbs/]了解详情[/url][/color][/size][/color]\r\n\r\n[color=#f10b00][size=5][color=#000000]应对淘宝2011实施的注册新号强制手机验证升级，美乐推出手机验证码服务；兵来将挡，水来土屯 解决淘宝升级后小号注册难题；[/color][/size][/color]\r\n\r\n[color=#f10b00][size=5][color=#013add]我们会永远和您们站在一起，让我们共同迈向明天的成功！！[/color][/size][/color]\r\n\r\n[color=#008000]美乐的特色功能详解：[/color]\r\n\r\n[color=#0000ff]全面升级任务流程，严格把关任务质量，淘宝刷钻更安全：[/color]\r\n\r\n一、[/b]每个买号每日最多接手[b][color=#ff0000]6个[/color][/b]任务，每周最多接手[b][color=#ff0000]35个[/color][/b]任务\r\n\r\n二、检测：接手人IP与发布人[b][color=#ff0000]IP不得相同[/color][/b]；\r\n\r\n三、检测：同一买号不能在[b][color=#ff0000]一个自然月内[/color][/b]接同一发布人同一网店任务超过[b][color=#ff0000]六个[/color][/b]；\r\n\r\n四、检测：[b][color=#ff0000]十四天内[/color][/b]同一买号接手同一产品的任务不能超过一次；\r\n\r\n五、同一IP一次只能接手[color=#ff0000][b]9个任务[/b][/color]；\r\n\r\n六、为每个绑定买号，设置[b][color=#ff0000]动态寿命值[/color][/b]，保证卖家信誉列表真实！（区别于别的平台单纯拒绝黄钻，结果五心买家成排现象;）\r\n\r\n七、接手方绑定买号，[b][color=#ff0000]系统实名认证监控[/color][/b]；杜绝高危小号接手任务！为您的网店信誉保驾护航\r\n\r\n八、定期循环检测清除接手方[b][color=#f10b00]相似度过高小号与序列小号[/color][/b]（XXXX01 XXXX02 XXXX03 ）\r\n\r\n九、[b][color=#3fa701]【新】[/color][/b]独家限制：[color=#fe2419][b]同一个IP[/b][/color]在24小时内不允许使用[b][color=#fe2419]不同的买号[/color][/b]绑定到[b][color=#fe2419]同一个店铺[/color][/b]的任务\r\n十、[b][color=#ff0000]分步发放奖励兔粮与积分[/color][/b]，使任务好评全程受控，杜绝卡任务、提前好评、拖延好评、非任务要求好评的出现；\r\n\r\n十一、[b][color=#ff0000]100%真实任务流程[/color][/b]，限制买家只能在发货[color=#ff0000][b]24/48/72小时[/b][/color]后收货；信誉更安全；\r\n\r\n十二、[b][color=#f10b00]新增限定接手人功能：[/color][/b]限制同一平台接手人（非小号）每日只能接手一次您的同掌柜任务；\r\n\r\n十三、[color=#3fa701][b]【新】[/b][/color]自动[b][color=#f10b00]根据买号淘宝注册日期动态限制新买号每日接手任务数[/color][/b]，规避淘宝对新注册账号的严格稽查；\r\n\r\n十四、[b][color=#3fa701]【新】[/color][color=#fe2419]任务全程IP控制[/color][/b]（不同于其他平台仅仅限制接手任务时IP），全网独家限制[b][color=#f10b00]接[/color][color=#f10b00]手方切换不同买号收货好评前必须切换IP；[/color][/b]\r\n\r\n[color=#f10b00][color=#000000]十五、[/color][b][color=#3fa701]【新】[/color][/b][color=#000000]独有发货与平台核实[/color][b][color=#f10b00]短信提醒按钮[/color][/b]，[b]全自动提醒超时惩罚制度杜绝一切拖任务行为！[/b][/color]\r\n\r\n[color=#f10b00][color=#000000]十六、[/color][b][color=#3fa701]【新】[/color][/b][color=#000000]全网独家推出[b][color=#f10b00]实名买号任务[/color][/b]，给您[b]店铺信誉[/b]百倍于未认证买号的[b]五星安全[/b]！[/color][/color]\r\n\r\n十七、[color=#3fa701][b]【新】[/b][color=#000000]与时俱进，[b][color=#fe2419]针对淘宝2011全网消保[/color][/b]，特推出[b][color=#fe2419]旺旺聊天收货功能[/color][/b]，[b]远离维权骗局，刷钻更安心[/b]！[/color][/color]\r\n\r\n[color=#0000ff][b]多项创新功能，淘宝刷信誉更便捷！[/b][/color]\r\n\r\n一、[b][color=#ff0000]任务连发[/color][/b]功能，一次操作可发布多达20条任务，系统自动间隔时间发放；\r\n\r\n二、[b][color=#ff0000]掌柜热销发布[/color][/b]，打造掌柜自己的热销商品，永远占据淘宝搜索按销量排行榜第一；[b][color=#f10b00]自定义发布频率[/color][/b]秒杀效果自己定；\r\n\r\n三、独创[b][color=#ff0000]计划发布任务[/color][/b]，任务发布随时随心；\r\n\r\n四、独家推出[b][color=#ff0000]接手方任务预定模块[/color][/b]，接手任务抢先一步，只选对的不选贵的!\r\n\r\n五、掌柜[b][color=#ff0000]自定义好评内容[/color][/b]，让你的信誉记录丰富多彩（批量任务支持多条不同好评）；\r\n\r\n六、[b][color=#ff0000]接手人自动过滤[/color][/b]：多项条件设置，自动拒绝不符合条件接手人接手任务；\r\n\r\n七、[b][color=#ff0000]24小时平台便利站[/color][/b]：随时随地 账户充值、发短信、购买兔粮....\r\n\r\n八、[b][color=#ff0000]账户日志中心[/color][/b]：详尽记录账户每一步操作各项重要数据，账户历史想查就查；\r\n\r\n九、特有[b][color=#ff0000]流量互动区[/color][/b]，掌柜互助免费实现宝贝流量猛增；\r\n十一、[color=#d40a00][b]VIP抢任务[/b][/color] 功能，实现一键超快抢任务；\r\n\r\n十二、[color=#f10b00][b]特有美乐客户端工具，[/b][color=#000000]全自动执行收藏，完全模拟真实收藏情景；发布放心，收藏省心！！[/color][/color]\r\n\r\n[color=#f10b00][color=#000000]十三、[color=#f10b00][b]购物车任务：[/b][/color][color=#f10b00]单个任务发布多个链接，完美配合淘宝购物车功能；[b]一箭多雕！[/b][/color][/color][/color]\r\n\r\n[color=#f10b00][color=#000000][/color][/color]\r\n\r\n十四、发布任务模板功能：自动保存[color=#ff0000][b]发布任务模板[/b][/color]，任务发布不再烦!\r\n十五、[b][color=#f10b00]真实快递功能：[/color][/b] [color=#d40a00][b][color=#f10b00]平台互刷+真实快递（1.支持淘宝在线下单 2.官网可查 3.自检提供底单）[/color][/b][/color] 打造史上最安全的 信誉钻石！\r\n\r\n十六、[color=#f10b00][b]收藏互动区：[/b][/color][color=#f10b00][color=#000000]依托平台五万会员的[b]庞大用户群[/b]，真正[b]全国各地IP[/b]，[b]双心买号[/b]执行收藏！[/color][/color]\r\n\r\n[color=#f10b00][color=#000000]十七、[/color][color=#f10b00][b]指定收货地址：[/b][/color][color=#000000]发布方指定收货地址功能，让您[b][color=#f10b00]充分利用自有快递单[/color][/b]！[/color][/color]\r\n\r\n[color=#000000]十八、[color=#3fa701][b]【新】[/b][/color]全面升级[b][color=#f10b00][size=3]支持淘宝商城任务，更独家支持商城优惠套餐任务发布；[/size][/color][/b][/color]\r\n\r\n[color=#f10b00][color=#000000][color=#000000]十九、[b]【新】[/b]独家推出[b]来路设置暨搜索进店任务功能[/b]，量子统计更真实，从此[b]远离降权烦扰[/b]；[/color][/color][/color]\r\n\r\n[color=#000000][color=#000000][color=#000000]二十、[b]【新】[/b]全新升级支持[b]淘宝商城、无名良品[/b] 同步支持[b]折扣、限时促销、秒杀[/b]等售价低于50%标价商品任务[/color][/color][/color]\r\n\r\n[b][color=#0000ff]用户的需求永远第一[/color][/b]\r\n\r\n一、特有[b][color=#ff0000]客服评价机制[/color][/b]，真正做到刷客的需求永远第一；\r\n\r\n二、[b][color=#ff0000]便捷提现业务[/color][/b]，每日三次，当天处理，拒绝拖延提现，变向占用平台资金，我的资金我做主；\r\n\r\n三、[b][color=#ff0000]全动画-新手帮助流程演示[/color][/b]；让你轻松上手；独创导航式平台功能新手指引，一步步成就新的刷客精英！\r\n\r\n四、[b][color=#ff0000]用户平台信用度制度[/color][/b]，轻松了解刷客素质；\r\n\r\n[color=#ff0000][color=#000000]五、[/color][b]黑名单功能：[/b][/color]让无良刷客无处藏身。特有[b][color=#f10b00]友好拉黑功能[/color][/b]只屏蔽不扣分；\r\n\r\n六、特有[b][color=#ff0000]新手互动区[/color][/b]：任务全程跟踪，开辟专区提供详细帮助，操作提醒，细致入微；[b][color=#ff0000]专职客服[/color][/b]有问必答！\r\n\r\n七、特有[b][color=#ff0000]任务申诉模块[/color][/b]，平台刷客信用评价体系； 打造高效有序得平台环境；\r\n\r\n八、[b][color=#ff0000]集成短信平台[/color][/b]，免费[b][color=#ff0000]动态提现密码[/color][/b]，到期任务操作提醒，及时短信联系任务双方，任务进行更顺畅；\r\n\r\n九、每日[b][color=#ff0000]十五小时[/color][/b]客服在线时间，更有美乐[b][color=#ff0000]智能客服机器人小盈盈[/color][/b]二十四小时随时为您服务；\r\n\r\n十、[b][color=#f10b00]收藏总量，每日收藏个数，甚至收藏时间，发布人全权自主[/color][/b]\r\n\r\n[color=#f10b00][color=#000000]十一、[/color][b]火爆刷客论坛，[/b][color=#000000]提供完备刷钻教程，刷客沟通无障碍，开通特色有问必答版块；[/color][/color]\r\n\r\n[color=#f10b00][color=#000000][/color][/color]\r\n\r\n十二、任务沟通不再愁，平台提供[b][color=#ff0000]站内信、QQ、短信[/color][/b]等多种任务沟通提醒方式；\r\n\r\n十三、任务占用资金统计，[b][color=#f10b00]任务占用资金一目了然[/color][/b]，告别你的计算器；\r\n\r\n十四、[color=#3fa701][b]【新】[/b][/color]全网独家[b][color=#f10b00]手机验证码服务[/color][/b] 完美解决淘宝注册账号需手机验证新政\r\n\r\n[b][color=#0000ff]更实惠更安全的美乐：边接边发，刷淘宝信誉不要钱；[/color][/b]\r\n\r\n一、兔粮更低售卖价，兔粮平台售价低[b][color=#fe2419]零售0.64元，[/color][/b]批发更低至[color=#ff0000][b]0.54元(皇冠卡)[/b][/color]；\r\n\r\n二、更高官方回收价；平台回收价：[color=#ff0000][b]0.4元[/b][/color]一个；不设门槛一个起收；\r\n\r\n三、短信平台，短信低至[color=#ff0000][b]六分钱[/b][/color]一条；\r\n\r\n四、收藏互动[b][color=#f10b00]门槛低，价格平；十个起收，一个兔粮可发布十个收藏任务；[/color][/b]\r\n\r\n[color=#f10b00][color=#000000]五、登陆密码、操作密码、安全问题[b][color=#fe2419]三重保护[/color][/b]，提现、绑定新掌柜号免费动态手机验证码，[b][color=#f10b00]平台[/color][color=#fe2419]账户[/color][color=#f10b00]资金安全比肩银行！[/color][/b][/color][/color]\r\n\r\n六、[color=#307f00][b]【新】[/b][/color]二十四小时网银自动充值，[b][color=#f10b00]方便快捷[/color][color=#f10b00]手续费全免[/color][color=#f10b00]；[/color][/b]\r\n\r\n[color=#f10b00][color=#000000]七、[b][color=#307f00]【新】[/color][/b]全新升级兔粮消耗矩阵。[b][color=#fe2419]合理细化价格区间，实物任务耗点直降25%[/color][/b]！[/color][/color]\r\n\r\n[color=#0000ff][b]更惊喜的美乐：[/b][/color]\r\n\r\n一、每个注册新人，参与[b][color=#ff0000]来路调查[/color][/b]即刻[b][color=#f10b00]送兔粮[/color][/b]；\r\n\r\n二、特有[b][color=#ff0000]新人免费体验任务[/color][/b]，美乐[b][color=#ff0000]送你任务保证金[/color][/b]，全面费体验美乐刷钻的快捷流程；任务全程美乐教官步步指导，刷钻入门不再难；\r\n\r\n三、每月[b][color=#ff0000]【推广排行榜】[/color][/b]，每周[b][color=#ff0000]【发布王】、【接手王】、【红人榜】[/color][/b] 三大排行榜，榜榜都有丰厚奖金；\r\n四、不定期进行[color=#f10b00][b]【美乐秒杀】[/b][/color]，定时推出一元超值官方任务 奖励十个兔粮、五元官方任务 奖励五十个兔粮，新鲜刺激又赚钱！\r\n\r\n[b][color=#008000]更多实用的功能仍在开发中........[/color]\r\n\r\n[color=#008000]请各位平台的朋友们留意首页官方公告栏；[/color][/b]\r\n\r\n[/td][/tr][/table]', '1358417142');
INSERT INTO `bf_posts` VALUES ('118', '58', '3', '美乐管理员', '0', '0', '', '[emot=qq,0/]', '1358417258');
INSERT INTO `bf_posts` VALUES ('120', '83', '39', 'windows', '1', '0', '我发布的任务，有时候会卡住是什么原因啊', '我昨天发布任务的时候就这样，亲问是什么原因啊', '1358512081');
INSERT INTO `bf_posts` VALUES ('121', '32', '39', 'windows', '0', '0', '', '嗯 ，支持', '1358520765');
INSERT INTO `bf_posts` VALUES ('112', '77', '10', 'test5', '1', '0', '什么是门派?', '[b][color=#0000ff]门派简介：[/color][/b]\r\n\r\n所有新加入美乐平台商联盟的朋友都需要选择一个自己喜欢的门派加入；美乐门派的作用与淘宝中卖家联盟类似，主要是为了给为新加入平台的朋友们提供帮助的同时赚取宝贵的联盟积分；同时可以开辟一块专属于该门派的交流空间供盟友们畅快的沟通；\r\n\r\n如果您是新来的朋友，在加入门派后您就可以得到师兄师姐们的无微不至的帮助和指导，在最短的时间内掌握任务操作的知识技巧，使您的网点信誉得到最快的增长；如果您已经是平台的老朋友了那么为了共同营造一个轻松高效的平台环境，赠人玫瑰手留余香，您在帮助他人的同时也可以赢取更多的平台积分哦；\r\n\r\n---------------------------------------\r\n\r\n[b][color=#0000ff]门派构成：[/color]\r\n\r\n掌门：[/b]每个门派都设有一个掌门，掌管门派中大小事务；\r\n\r\n[b]成员：[/b]每一个加入了该门派的联盟会员都即刻成为该门派的一员；\r\n\r\n[b]门派聚义厅：[/b]是美乐平台商联盟为每个门派提供的一个论坛交流区，所有该门派的成员都可以在交流区内发帖咨询问题与回帖提供帮助；\r\n\r\n[b]门派QQ群：[/b]每个门派都设有一个QQ群供门派成员之间更好的沟通与做任务交流；\r\n\r\n---------------------------------------\r\n\r\n[b][color=#0000ff]如何加入门派：[/color][/b]\r\n\r\n在【联盟中心】-【我的门派】功能中选择【江湖】tab页，然后选择想要加入的门派，问掌门提出加入申请，申请通过后，掌门会发放该门派的通行码给该申请人；申请人使用通行码即可加入门派称为门派中的新成员；\r\n ', '1358767733');
INSERT INTO `bf_posts` VALUES ('113', '78', '10', 'test5', '1', '0', '为什么要加入门派？', ' [table][tr][td]\r\n\r\n[color=#0000ff][b]为什么要加入门派：[/b][/color]\r\n\r\n1、美乐门派的作用与淘宝中卖家联盟类似，主要是为了给为新加入平台的朋友们提供帮助的同时赚取宝贵的联盟积分；\r\n\r\n2、门派开辟一块专属于该门派的交流空间供盟友们畅快的沟通；\r\n\r\n3、如果您是新来的朋友，在加入门派后您就可以得到师兄师姐们的无微不至的帮助和指导，在最短的时间内掌握任务操作的知识技巧，使您的网点信誉得到最快的增长；\r\n\r\n4、如果您已经是平台的老朋友了那么为了共同营造一个轻松高效的平台环境，赠人玫瑰手留余香，您在帮助他人的同时也可以赢取更多的平台积分哦；\r\n\r\n[/td][/tr][/table]', '1302256319');
INSERT INTO `bf_posts` VALUES ('114', '79', '10', 'test5', '1', '0', '怎样加入门派？', '[b][color=#0000ff]如何加入门派：[/color]\r\n\r\n第一步：[/b]进入在【联盟中心】-【我的门派】功能中选择【江湖】tab页：\r\n\r\n　\r\n\r\n　\r\n\r\n[b]第二步：[/b]选择想要加入的门派，点击门派简介上的掌门QQ标志；与掌门发起QQ对话，问掌门提出加入申请，掌门会发放该门派的通行码给该申请人；\r\n\r\n[b]第三步：[/b]点击【申请加入】按钮，填写争取的通行码即可加入门派称为门派中的新成员；\r\n\r\n[b]第四步：[/b]加入成功后，就可以进入该门派聚义厅与同门师兄弟们进行交流了，您如果在平台任务过程中有什么不明白的地方都可以在这里向师兄弟们咨询哦；\r\n\r\n ', '1358767706');
INSERT INTO `bf_posts` VALUES ('127', '89', '39', 'windows', '1', '0', '【精华】防止小号登录验证码，最好的清理电脑痕迹方法', ' 由于IE系浏览器存在某些不为人知的痕迹，登陆买号十次就会出验证，所以本方法只用谷歌浏览器作示范，谷歌本身不支持招行网银，因此请安装插件：[b][color=#ff6600]Activex for Chrome网银助手[/color][/b](使用谷歌浏览器进入下载地址：[url]https://chrome.google.com/webstore/detail/activex-for-chrome/lgllffgicojgllpmdbemgglaponefajn[/url]),另外还要安[color=#000000]装[/color][size=2][color=#000000][b][color=#ff6600]清理插件Click&Clean[/color][/b]（下载地址：[url]http://clickclean.cn.uptodown.com/[/url]），把所有选项都打开[size=2]。[/size][/color][/size]\r\n跟着是登陆买号，先用[b][color=#ff6600]CCleaner64位 3.22.1800[/color][/b]清理痕迹，之前登陆过其他买号的要换IP，然后点击谷歌浏览器，弹出淘宝页面，点击浏览器右上角的[b][color=#fe2419]红色字母C标志[/color][/b][img=,131,100]/img/bbs/2013/01/221.jpg[/img]\r\n会出现选项框，移动鼠标点选红色框框位置：\r\n[img=,322,444]/img/bbs/2013/01/21E.jpg[/img]\r\n选择：高的。\r\n\r\n[img=,700,426]/img/bbs/2013/01/224.jpg[/img]\r\n[img=,322,444]/img/bbs/2013/01/227.jpg[/img]\r\n\r\n设置好后按：[b][color=#ff6600]【[/color][color=#ff6600]清理隐私数据】[/color]，[/b]完成后登陆买号；\r\n\r\n买号完成任务后又要再清理浏览数据一次，关闭浏览器，让Click&Clean插件自动清理一次，跟着再用CCleaner再清理一次，这样清理痕迹的流程就算完成了。\r\n，之前我就忽略了手动清理浏览数据这环节，认为CC加谷歌插件一起清理就能清除干净，导致国庆以来频频出现验证登陆。\r\n[b][color=#ff6600]如果大家还有更好的方法，欢迎跟进补充，人人都出力，才能营造更安全的生存环境，呵呵...[/color][/b]', '1358691611');
INSERT INTO `bf_posts` VALUES ('128', '90', '42', 'Yi557', '1', '0', '抢票软件禁而不止 仍有市民用此方式买到票', '前天，工信部下达通知，要求360、搜狗、金山、[color=#0084d8]傲游[/color]等浏览器停用抢票插件。记者发现，昨天360、搜狗等抢票插件依然可用。\r\n\r\n　　虽然是个周六，可是张小姐依然早早地到了办公室。“家里网络不给力，没有办公室的100M光纤网速快。”张小姐打开搜狗浏览器，登录12306订票网站，待输入用户名和密码、选定出发日期和目的地后，张小姐便在页面下方的抢票[color=#0084d8]插件[/color]处，将“定时刷票” 设置成了“11:00”。\r\n\r\n　　11时整，果然，屏幕右下方弹出了有票的窗口。张小姐关掉微博，转到事先登录进的12306[color=#0084d8]页面[/color]上。只见尚有余票的车次均被系统以橙色标出，不同的席别还呈现出鲜艳的绿色。张小姐眼疾手快地选择了一张下昼2:10由广州南发出的G546次二等座车票。提交订单、登录网银、付款，整套购买流程结束后，记者的手表刚刚指向11时02分。\r\n\r\n　　而另一位抢票插件的受益者——王先生则充分享受到了“自动刷票”的好处。在“360春运抢票专用浏览器”上，王先生登录12306之后，看到自己想买的车次已经只剩下硬座和无票了，于是便点击了“开始刷票”的按钮。记者看到，随着系统的不断自动刷票，不同车次的余票信息也在不停变动。大约两分钟后，王先生看到有一趟车显示还余有一张硬卧票，便下了订单。直到系统显示支付成功，王先生才松了一口气。\r\n\r\n　　昨天，记者和准备买票回韶关的市民小芹一起体验了一回无插件抢票的曲折。上午11时不到，记者和小芹分别在家守住12306，全神贯注掐着表，不停刷新页面，只等票仓一开便进去“厮杀”。\r\n\r\n　　11时01分，页面刷新等了10多秒都显示不出来，票来了，连续几次依然如此。1分钟后，页面终于能够打开，最新的高铁车票已经大面积被订完。个别车次还有一两张余票，可是等记者输入完验证码和身份信息，系统却显示排队人数已经超过余票，抢票失败。\r\n\r\n　　记者和小芹接着等中午12时普通列车开票，大家提前瞄准相对冷门的车次T8372。这一次，网络倒是没有卡壳。记者在半分钟内选定车次，提交订单。看到还有4张以上的余票，记者提交了不下数十次，系统显示排队人数超过余票数量，直到数字归零。无意偶然能够进入确认订单的环节，距离成功只差一步，但车票依然在瞬间被抢。\r\n\r\n　　26日起部分旅客请到琶洲候车\r\n\r\n　　春运26日拉开大幕，届时琶洲展馆异地候乘将启动。凡购买节前（1月26日至2月8日）广州火车站普速长途列车车票的乘客请留意，如果你的车票票面印有“候车地点：琶洲”字样，请于开车前4小时到达琶洲展馆A区（具体地址：广州市海珠区新港东路）。到达展馆后，旅客可按照现场候车指引到所乘列车车次候车区候车。届时将有工作人员组织，旅客免费搭乘地铁专列直接进入广州火车站上车。\r\n\r\n　　广铁继续推出节前预售节后返程票服务，1月20日至2月8日，旅客可通过电话订票的方式预订湖南、粤北地区返程票。', '1358692054');
INSERT INTO `bf_posts` VALUES ('129', '91', '3', '美乐管理员', '1', '0', '【注意！】警惕任务外链接木马网站！', '[b][color=#fe2419]=====================================================[/color]\r\n\r\n[color=#fe2419]敬告：接手人一定不要访问甚至拍任务外的任何链接地址，切记！[/color]\r\n\r\n[color=#fe2419]=====================================================[/color]\r\n\r\n昨天平台抓获一个[/b][color=#fe2419][b]骗子发布人（liangpeng ）([color=#000000][color=#fe2419]liangpeng611 [/color][/color])[/b][/color][b]该发布人发布任务的时候故意发布低价马上好评的任务，任务中商品地址固然为正当有效的淘宝商品地址（[color=#307f00]平台有网址检测，非淘宝/有啊/拍拍正式商品网址不能发布[/color]），但是在任务发出后该[color=#fe2419]发布人就在淘宝上把该商品下架[/color]；\r\n\r\n接手人接到任务看到商品下架后，发布人就会联系接手人[color=#fe2419]让接手人拍任务外的链接；而题目就出在这里，发布人给的链接是个伪装成淘宝地址的木马网站；[/color]\r\n\r\n[color=#fe2419][b][img=,349,340]/img/bbs/2013/01/22E.jpg[/img][/b][/color]\r\n\r\n接手人假如贪图便宜点击进入后就会提示接手人输入登录用户名和密码；您要是输入了，那么[color=#fe2419]您的账号密码就被骗子窃取[/color]；骗子得到您的账号密码后由于淘宝自身的邮箱绑定或者手机绑定固然不能保证能修改您的密码，但是可以[color=#fe2419]给您买号的未结束[/color][color=#fe2419]交易申请退款甚至通过[/color][color=#fe2419]维权、[/color][color=#fe2419]差评来威胁您已接手任务的发布人；由此造成的发布人的损失接手人是脱不了干系的；[/color]\r\n\r\n[color=#013add]平台一直以来就有明文划定：发布人不可要求接手人拍任务外链接，就是为了保障接手人的账号安全[/color][color=#013add]（[/color][/b][url]http://www.mei-le.com/bbs/t93/[/url][b][color=#013add]）；[/color]\r\n\r\n可是今天的竟然仍是有个别接手人上当受骗导致自己的接手买号密码被盗，进而骗子利用其买号账号威胁发布人退款！！ 此骗子的账号已经被我们封闭，同时其个人信息已经记实后台黑名单；另外为了保障其他发布人的安全，接手过该骗子的任务的接手人的买号已经被平台锁定，等接手人检查过自己的买号安全性同时修改了新的密码后才可恢复！！\r\n\r\n[color=#f10b00]我要在这里声明，以后各位接手人凡事碰到发布人要求拍任务外链接的，一律通过任务中举报按钮举报，或者直接向在线客服举报；凡事因为接手人听信骗子所言贪小便宜擅自点击任务外链接导致买号被盗进而给该买号之前接手过任务的发布人造成损失的，由骗子与接手人共同承担！！[/color][color=#f10b00]但愿大家能够严格按照平台的划定做任务，不要给骗子任何可乘之机！！[/color][/b] ', '1358693422');
INSERT INTO `bf_posts` VALUES ('132', '83', '3', '美乐管理员', '0', '0', '', '[emot=qq,11/]', '1358693816');
INSERT INTO `bf_posts` VALUES ('130', '92', '3', '美乐管理员', '1', '0', '【公告】警告发布人与接手人要小心骗子！', '[b][b][b][color=#fe2419]林子大了什么鸟都有，近来平台泛起了骗子：\r\n\r\n[/color][size=3][color=#013add]骗子一：[/color][/size]\r\n[color=#307f00][size=3]诈骗对象：平台接手人[/size][/color]\r\n[color=#fe2419][size=3]专门通过发任务时qq要求或者留言[/size][/color][size=5][color=#f10b00]要求接手人去拍任务以外的链接来骗取接手人的金钱；[/color][/size]\r\n\r\n[color=#013add][size=3]骗子二：[/size][/color]\r\n[color=#307f00][size=3]诈骗对象：平台发布人[/size][/color]\r\n[color=#fe2419]专门[/color][size=5][color=#f10b00]接手已经在淘宝开启了消保的充值类店铺的任务[/color][/size][color=#fe2419]，在任务结束后随即转移平台资金，[size=5]然后去淘宝利用【消保维权】来要回发布人已经得到的货款！[/size][/color]\r\n\r\n[color=#013add]骗子三[/color][color=#013add][size=2]：[/size][/color]\r\n[color=#307f00]诈骗对象：平台发布人[/color]\r\n[color=#000000]专找平台新注册用户发布的任务，然后[/color][color=#fe2419][size=2][size=5]淘宝上没有确认收货，却以各种甜言蜜语[/size][/size]（例如:晚点收货更安全啊、我是新手想多接任务，先帮我确认啊.....）[size=5]让发布人在平台先给确认收货，[/size][/color][color=#000000]得到平台保证金后，淘宝再申请退款！[/color]\r\n\r\n[color=#013add][size=3]这里再一次郑重提醒：[/size][/color]\r\n[size=3][color=#013add]第一：[/color][color=#fe2419]泛博[/color][color=#f10b00]发布人[/color][color=#fe2419]尤其是充值类店铺，在刷钻期间不要开通淘宝消保，给骗子可乘之机！假如一定要开通消保，那么请发任务的时候选择[/color][color=#f10b00]自动过滤接手人平台积分>400[/color][color=#fe2419]，或者人工审核接手人，另外最好能发聊天任务，[/color][color=#000000][color=#fe2419]要求接手人在收货后旺旺联系说[/color]“货已收到质量很好很满足”[color=#000000]之类可以作为收到货证据的内容，然后在平台核实货款[/color][/color][color=#fe2419]；这样能大大增加骗子的行骗本钱与难度，将骗子限制在你的积分范围之外；[/color][/size]\r\n[size=3][color=#013add]第二：[/color][color=#fe2419]泛博[/color][color=#f10b00]接手人[/color][color=#fe2419]一定不要去拍任务商品以外的任何链接，由于平台只会查看接手方是否购买了任务链接而不是任何其他链接！[/color][/size]\r\n[size=3][color=#013add]第三：[/color][color=#fe2419]严格按照任务流程一步一步操纵，不提前或跳过任何一步；先核实再操纵！[/color][/size]\r\n[color=#fe2419][size=3]只要大家能够严格按照任务流程一步步操纵，任何骗子也不会有可乘之机的！[/size]\r\n\r\n但愿泛博接手人能够进步警惕，碰到这样的要求拍任务以外链接的任务时及时告知我们平台客服！[/color][size=5][color=#307f00]我们客服将会终止该任务同时扣除任务所有的兔粮奖励给接手方！[color=#f10b00]只有大家共同努力才能为大家自己创建一个安全顺畅的平台环境![/color][/color][/size]\r\n\r\n[color=#013add]曝光一下这个骗子的三个淘宝掌柜，以后用户们假如碰到任务中要求拍任务以外链接的，可以直接向客服举报，假如发现是这三个网店的，举报有奖！\r\n[/color][color=#f10b00]掌柜名：[/color][/b][url=http://183776122.taobao.com/][color=#f10b00][b]ayong9884067[/b][/color][/url]\r\n[color=#f10b00][b]网店截图：[/b][/color]\r\n[/b]\r\n\r\n[img=,700,251]/img/bbs/2013/01/231.jpg[/img] \r\n\r\n[b][color=#f10b00]===========================[/color]\r\n[color=#f10b00]淘宝掌柜名：zfzl1314[/color]\r\n[color=#f10b00]网店截图：[/color][/b]\r\n\r\n[img=,700,206]/img/bbs/2013/01/234.jpg[/img] \r\n\r\n[b][color=#f10b00]淘宝掌柜名：tianxianfeng88[/color]\r\n[color=#f10b00]网店截图：[/color][/b][img=,642,152]/img/bbs/2013/01/239.jpg[/img]\r\n\r\n[color=#f10b00][b]淘宝掌柜名：[color=#000000][color=#fe2419]冒泡泡o[/color][/color]\r\n网店截图：[/b][/color]\r\n\r\n[img=,736,164]http://www.hiwinwin.com/upload/2010/9/27/257f75fc-cf65-4887-bedb-7fddada9e25f.jpg[/img]\r\n\r\n[b][size=3]---美乐官方[/size][/b][/b] ', '1359952807');
INSERT INTO `bf_posts` VALUES ('131', '93', '3', '美乐管理员', '1', '0', '【安全刷信誉指南】美乐网安全刷钻手册！', '              本帖最后由 美乐管理员官方 于 2011-04-11 22:51:07 编辑 \r\n\r\n[b][color=#156200] [/color]\r\n\r\n[color=#156200]近来老是有新来的刷客问怎么才能真正安全的刷钻！[/color]\r\n[color=#156200][color=#fe2419]因为淘宝的自查与降权系统已经非常复杂，所以我们在发任务的时候留意的东西比以前要多多了，假如您是本着对自己的店铺负责任的立场，那么我但愿您能静下心来把它看完[/color]；[/color]\r\n\r\n[color=#008000]发布速度和频率：[/color]\r\n[color=#013add]1.速度切忌贪快，[/color][/b]一定要循序渐进；永远记住一点，刷的快查的快！\r\n[b][color=#013add]2.销量切忌溘然变化，[/color][/b]一定要徐徐的增长您的商品销量，溘然大幅增加您的销量无异于你去打电话通知淘宝我在刷钻；\r\n[b][color=#013add]3.店铺销量不可过于集中于某个产品[/color]，[/b]销量除了照顾您想打造的热销法宝外一定要适当的分散到其他商品上；\r\n[b][color=#013add]4.频率切忌集中在某个时段[/color][/b]，一定要把时间平均分不开，不要天天的销售都集中在一两个小时内；尽量平均分布，记住没有规律的规律才是最安全的；\r\n[b][color=#013add]5.天天发布任务的个数要参考您店内的公道有效流量，还有店铺当前的卖家信誉度[/color]\r\n\r\n[color=#f10b00]发布人可以通过购买淘宝纵贯车，配合我们稍后会推出模拟真实顾客的来路流量任务来打造您的有效流量；[/color]\r\n\r\n[color=#008000]任务的留意事项：[/color][/b]\r\n[color=#013add][b]1.关于商品价格[/b]：[/color]经由我们对大量数据的统计，发现一个很重要的规律：[color=#f10b00]淘宝是嫌贫爱富的[/color]；一个刚刚起步的小卖家假如卖的都是三五块的东西，哪怕天天只刷5个，10个也有机会触发自查；另外一个卖家假如卖的是几百元的东西，哪怕天天刷十个二十个，也很少被自查；或许淘宝监察系统的设计者以为刷钻的人都是想用最低的本钱来操纵的吧；\r\n这一点仅作为我们的建议，供各位参考！尽量不要使用低价位（售价小于20元）的商品发布任务，且您的商品标价不能低于该商品淘宝均匀价，不然很可能会触发 SKU降权；低价位的商品属于淘宝自查的重点监控区域；[color=#fe2419]尽量不要改价[/color]，频繁改价必然会引发自查！！\r\n\r\n[b][color=#013add]2.单个任务购买商品个数：[/color][/b]千万不要为了冲高的销量就每个任务都设置接手人拍多个，这长短常危险的，一次拍多个的交易不要超过总交易数的1/10 这个也是淘宝判定虚假交易的重要手段！\r\n\r\n[b][color=#013add]3.旺旺聊天很重要：[/color][/b]另外买家什么都不问就拍下多个也属于淘宝降权自查的重点监控点，当您发需要拍下多件数的任务（购物车，快递任务也一样）的时候切记要勾选拍前聊选项，并和接手人在qq上沟通好聊天内容一定要涉及买家自己有意向拍下多个；[color=#fe2419]旺旺聊天记实是淘宝发起自查需要提供的必要证据！[/color]\r\n\r\n[b][color=#ff0000]一定一定要避免拍下多件+改价 两种情况同时 存在的任务[/color]\r\n\r\n[color=#156200]关于购物车任务：[/color][/b]\r\n\r\n[color=#fe2419][b]有良多新掌柜喜欢发购物车任务，以为这样涨信誉快，殊不知淘宝也明白这一点[/b][/color]\r\n[b][color=#013add]1.尽量少发布购物车任务[/color][/b]，购物车任务数不能超过当天任务总量的二十分之一，如天天20任务，那么购物车最多只能是1个\r\n[b][color=#013add]2.购物车任务不能次次都是6个商品[/color][/b]，最好是2-6商品轮替，无规律\r\n[color=#013add][b]3.购物车任务一定要配合上拍前聊[/b][/color]（表明买家有意向买多个）与真什物流；且不要改价\r\n\r\n[b][color=#156200]善用系统默认好评[/color][/b]\r\n论坛里有人反映有人两个月上三皇冠了，经由调查竟然有数个类似的店铺；查看了其信誉列表所有信誉的[color=#f10b00]99%为买家非主动好评的系统默认好评；[/color]这么短时间上三皇冠，又没有被淘宝稽察查察，说明什么？ [color=#f10b00]淘宝对这种非主动的系统默认好评监管长短常松的；假如大家不急于一天两天的信誉增长速度，但愿大家可以利用[/color][color=#fe2419]淘宝这一漏洞[/color]，多在发布任务时考虑下买家不主动提交好评（或者卖家不给回评），而是等淘宝系统默认好评；\r\n（这里有一个典型的例子大家可以参考一下，这孩子已经金冠了：[url]http://rate.taobao.com/user-rate-43656d088a2bee69f5a1bb7a56003339.htm[/url]）\r\n\r\n[b][color=#156200]发货物流方面留意事项：[/color]\r\n[color=#013add]1.什物交易：[/color][/b]最好能用真实快递任务，；[color=#f10b00]切忌使用 淘宝发货中的“无需物流”[/color]，使用这个发货即使是真实交易的同城店主自送都会被自查！！好评时限[color=#f10b00]起码也要24小时[/color]以上的好评时限；\r\n\r\n[b][color=#013add]2.虚拟交易：[/color][/b]最好能有旺旺交易相关[color=#f10b00]聊天记实[/color]；[color=#fe2419]接手人提供邮箱[/color]，任务发货时往该邮箱发带附件的邮件一个；可在日后万一碰到自查或者降权时凭这两样证据顺利过关！\r\n\r\n[color=#156200][b]小号的安全[/b][/color]\r\n与大家网店的安全同样重要：良多网店被查最后淘宝给出的原因是，购买您的商品的小号被查封牵连到了卖家店铺；所以小号的安全与大号的安全是平等重要的；\r\n\r\n[b][color=#013add]1.注册不同小号[/color][/b]时一定要记住换Ip，清cookies，\r\n\r\n[b][color=#013add]2.小号名字不要相近或者序列[/color][/b]，填写完整个人信息；尽量不使用阿里巴巴旗下的邮箱[color=#f10b00]好比yahoo邮箱[/color]；\r\n[b][color=#013add]3.小号使用时，不要一号到底[/color][/b]，常常切换小号，每次切换都要换Ip，清cookies；尽量减少天天的购买次数[b][color=#f10b00]（不同小号购买、收货前不换IP清除cookies的必自查！！）[/color]\r\n\r\n[color=#013add]4.发布人可以使用审核接手人[/color][/b]来对接手人的小号资料与交易频率进行审核\r\n[color=#156200][b]关于刷虚卖实[/b][/color]\r\n想先卖虚拟物品到钻后再转什物的，我这里劝告您仍是不要钻这个空子了；由于淘宝早在一年前就已经针对这个漏洞做了稽察查察触发；\r\n[color=#013add][b]1.尽量不要虚物 什物 在一个店里卖[/b][/color]；\r\n[color=#013add][b]2.以后预备卖什么现在就刷什么[/b][/color]，溘然改变店内商品目录，甚至虚拟转什物的，都将是一个结果 ：自查\r\n[b][color=#013add]3.假如真的要转，不要马上转[/color][/b]，淘宝官方的说法是，休止店内一切流动 六周以上；\r\n\r\n[b][color=#156200]关于淘宝纵贯车[/color][/b]\r\n加入纵贯车的目的是告诉淘宝，我有消费能力，以后会消费更多，惩罚我太多对他们没好处。另外开通了纵贯车可以给店铺带来良多真实流量，这对您刷交易和打造热销法宝都是益处多多的；[color=#ff0000]纵贯车配合上平台的来路任务可以说是平台老用户打造爆款的最佳组合了[/color]；\r\n\r\n[b][color=#156200]真实快递任务[/color][/b]\r\n发布人为了降低单个快递任务的均匀本钱，老是尽量想要把每个快递任务都做成有五六个链接的任务；这样会造成的结果就是，[color=#f10b00]卖家的信誉里面全是单个买家的批量购买记实[b]；[/b][/color]\r\n事实证实这样做的结果就是：当你的卖家信誉中，单用户批量购买的类型交易比例达到一定的值的时候，也是能够[b][color=#f10b00]引起淘宝自查[/color][/b]的；\r\n所以我建议大家有两种方法可以避免这类情况的发生：\r\n\r\n[b][color=#013add]第一种：最安全的方法，都发布快递任务的时候，尽量让商品链接超过两个的快递任务比例低于你所有卖家信誉值的[color=#f10b00]50%[/color]；[/color]\r\n[color=#013add]第二种：穿插着发快递任务和普通任务什物任务；这样的方法固然存在一定的风险，但是也比所有任务都发多连接的快递任务安全；[/color][/b]\r\n\r\n[color=#fe2419][b]总结说来一句话：[/b][/color][color=#f10b00][b][size=3]我打造的卖家信誉什么才是安全的呢？有一点永远不会错，那就是和实际交易一致就越安全！[/size][/b][/color]   ', '1359989773');
INSERT INTO `bf_posts` VALUES ('135', '95', '51', '懒懒的温暖', '0', '0', '', '是啊，淘宝真的做的很累啊，不知道该怎么做，就是有的买家恶意敲诈，真的无语啊，给差评的。再加上上家的服务也不好，哟啊崩溃的', '1359898577');
INSERT INTO `bf_posts` VALUES ('136', '96', '52', '美乐客服部', '1', '0', '淘宝小卖家寻找供应商的途径有哪些?', '     [color=#ff0000]  在淘宝卖的是货，所以假如你有好的货源加上适当价格真的好做。但是作为一个淘宝小卖家怎么又比得上大卖家有自己不乱的货源供给呢？淘宝小卖家寻找供给商的途径有哪些?首先，是淘宝严令禁止的盗图题目，这个规则对于净化淘宝市场是好的，但是作为代销的小卖家如何自己实拍呢？既然是代销就是追求零库存和资金不积存，假如自己实拍的话还做什么代销呢？淘宝市场发展很大，可是制定规则的时候，为淘宝诚信经营的小卖家们考虑过了吗？盗用图片淘宝就应该从供给的源头上抓起才对啊。[/color]\r\n \r\n[color=#999900]第二[/color]、供给商题目\r\n 1、商品的质量题目，加盟代办代理之前说的天花乱坠，把自己倾销的商品夸得只应天上有、人间哪得见一般，可实际上法宝描述与商品本身存在很大的误差，碰到这样的情况，作为代销的小卖家怎么办呢？我的选择是发现质量题目立刻下架代销的所有产品永不上架，道理很简朴，我不答应自己店铺的商品有显著的人为瑕疵。\r\n \r\n2、[color=#cc0000][u]供给商响应速度题目。代办代理之前供给商的响应速度没的说，可一旦代办代理之后就变成了蜗牛速度（当然，也许这是我碰到的极品吧），更要命的是库存量非得咨询供给商之后才能知道，将心比心，一个客户进你的店铺等上差未几十分钟还没有明确的谜底，那么这个客户会怎么选择呢？要是我的话，绝对一个百米冲刺的速度逃之夭夭。 本文来自美乐网[/u][/color]\r\n\r\n淘宝小卖家找供给商有良多方法，\r\n \r\n[color=#ff0000]1、网上采购平台，如阿里巴巴[/color]\r\n 到现在为止，已经有良多人在网上成功找到货源。目前为止，全国最大的网上采购批发平台为阿里巴巴。阿里巴巴是由马云在1999年一手创立企业对企业的网上商业市场平台。阿里巴巴有非常多的货源，可选择的空间很大。正由于选择空间大，我们在选择的时候更应该慎重。\r\n \r\n[color=#ff0000]2、到批发市场或者厂商进货[/color]\r\n   去当地的批发市场或者去一些比较有名、质量好的的批发市场地进货。假如能在当地找到合适的厂商，也是不错的选择。亲眼看到、摸到的让人比较放心，而且都是现场挑货。但是进货时决不能马虎，进货时一定要仔细看，三思而后行。挑货的时候一定要货比三家、多看、多听、多问、多想，不要等闲的下决定，一定要慎而慎重的选择。\r\n 缺点是需要的资金根据产品的数目、单价决定，少则少，多则多。不外，一般没有几万是做不好的。也有压货的风险。长处是选择空间很大，价格、进货的产品、数目完全有自己来决定\r\n \r\n[color=#cc0000]3、做品牌代办代理商、经销商[/color]\r\n   找网上或者网下找一家厂商，做其代办代理商或经销商。需要留意的是，在价格方面。尽力拿到最低的价格，这样才能更好地应对淘宝日益激烈的竞争。库存方面一定要预备充足。产品的质量是否够好。公司的首选信誉好、规模大的厂商。物流也是一个重要点，顾客覆信为货品没有及时达到二不满，也会由于包装题目而给出不好的评价。比拟于上述的方法，第二种方法更加省钱，而且没有压货的风险。\r\n\r\n[color=#ff0000]4、自创货源[/color]\r\n     自创货源就是不用进货，靠自己的创意和手机就能制造出商品。好比缝制的鞋，手编的衣服、书法、画、会用ps制作出好的图片，对于有自创能力的卖家来说，自创货源是最好的货源。\r\n \r\n前文发了良多的牢骚，但是我内心仍是不想抛却淘宝，说是不想靠淘宝赚钱是自欺欺人的鬼话，只是想问一问：在这样的一个大环境下，寻找质量好的供给商为何如斯的艰难啊……………', '1359898985');
INSERT INTO `bf_posts` VALUES ('137', '97', '52', '美乐客服部', '1', '0', '淘宝最牛骂人掌柜以骂人作为最佳推广方式', '[list=1][*][size=4][b] [/b][/size]\r\n\r\n[size=4][b]  很多开店的朋友最缺少的就是资金，没有资金就不能做大量的推广，没有推广就没有流量没有销售，但是互联网给人的创造力真的是无限的，目前“淘宝最牛骂人掌柜”胡公子红了，胡公子的网店也随着火了，天天都有海角、开心网等网友“组团膜拜” 胡公子的网店。为什么胡公子会这么红呢？甚至更有大量网友买了东西故意给中差评，抛砖引玉只为求胡公子一“骂”。那么胡公子的“骂”到底多有水平值得网友求“骂”，胡公子何以堪称“淘宝最牛骂人掌柜”呢？ \r\n[/b][/size]\r\n\r\n[size=4][b]为什么当淘友们都是以百分之百的好评为目标，而胡公子确是以中低评为自身的特点呢？岂非一开始胡公子就知道凭骂人就能成功吗？那大家都开始骂好了，实在胡公子之所以以骂来作为自己的店铺特点，也算是无心插柳柳成荫。一开始胡公子也是以百分之百好评为目的，然而，当胡公子的网店溘然得到了一个中评，他顿时懵了。一位顾客买了双拖鞋，说拖鞋接缝是胶水粘的，所以给了他一个中评。“拖鞋本就是用胶水粘的，我是15块8进的货，只卖16块钱，为的是冲销量，卖了800多双，这是第一次出题目。”胡为当即打电话跟买家解释，假如买家以为是质量题目，可以退货，只要能将中评改成好评。可买家不听解释，也不接受退货。整整一个月，胡为天天都为这个中评跟买家协商，甚至恳求对方退货，结果一切都是徒劳。坚持了几个月的“100%好评”，因此子虚乌有。胡为十分委屈和痛苦，便开始在回应中以“胡公子”的名义炮轰买家：“拖鞋不用胶水粘，岂非用你的口水粘？” [/b][/size]\r\n\r\n[size=4][b]\r\n[/b][/size]\r\n\r\n[size=4][b] [/b][/size]\r\n\r\n[size=4][b]\r\n[/b][/size]\r\n\r\n[size=4][b] [/b][/size]\r\n\r\n[size=4][b]\r\n[/b][/size]\r\n\r\n[size=4][b]　　买家的评价对淘宝卖家十分重要，好评率就代表着店铺的信誉，尤其是对于新开店铺，好评率可以说是“性命攸关”。一开始，胡为还会赔笑容赔不是，但愿买家将中评和差评改为好评。不外，各种“极品状况”仍是常常碰到，良多顾客无论青红皂白，甚至故意给他中差评，让他又可笑又好气，其实忍不住，便针锋相对。 [/b][/size]\r\n\r\n[size=4][b]\r\n[/b][/size]\r\n\r\n[size=4][b]\r\n淘宝骂人掌柜照片\r\n[/b][/size]\r\n\r\n[size=4][b]\r\n[/b][/size]\r\n\r\n[size=4][b]　　胡为回忆说，刚开始被网友回应为中差评，确实很痛苦，但经由反思，他发现根源并不在他的店铺。例如，一个买家购买了一款静音闹钟后给了一个中评，原因是买家把闹钟贴在耳朵上，听出了细微的声音，于是说掌柜欺骗大众，不诚信。胡公子气得咬牙切齿，恨不得跳到电脑荧屏内把买家揪出来。胡为沉思后在回复中写道：“买家真有正义感，岂非是奥特曼的化身？”没想到这段调侃的文字，却换来一批网友的喝彩。\r\n　　胡为好像找到了化解悲愤的办法。他以一种自嘲的娱乐方式，来写对中差评的解释和回应，这些彪悍的回应，吸引来众多网友的围观。正由于不按常理出牌，胡公子红了，胡公子的网店火了。这种幽默的回复方式，不但成为胡为的特色，更成了网店的招牌。\r\n　　对此，胡为在电话中向记者解释：“从一个不起眼的小网店到现在很红很火，我窃喜过、高兴过，但现在完全是疲劳不堪。这种现象很不正常，且势头到了无法控制的地步。为此，我曾封笔不再回应，我觉得没有必要为了流量来写解释，这些都有违正常的贸易规则。我渴想自己的努力获得顾客的尊重和理解，更但愿大家能遗忘我的回应，而记住我的商品。” 淘巧好，好淘巧 \r\n　　不外，胡为最近又开始写回应了，他的解释是：“这段时间一直在思索两个题目，一个是，自己没有花一分钱做广告宣传，自己的网店便出了名，这是不是电子商务营销的特例？另一个是，在文化走向方面，大众到底愿意接受什么？每一个卖家碰到中差评，肯定是不兴奋的，与其同买家协商甚至谩骂，最后不但没有结果还搞得双方心情很糟糕，不如把心中的痛苦用笑剧的方式表达出来，至少可以化解自己的痛苦。”\r\n　　如今，越来越多的网友只为博店主一骂而来购物，胡为说：“假如是抱着娱乐的心理来给个中评或差评，我一笑了之。自己心情好或店里不忙的话，我会去幽默地回复部门网友，但我的幽默是建立在诚信的基础上。假如是指责商品的质量有题目，那我心里肯定是无法承担的。”\r\n　　至于网店将来的发展，胡为说，自己将会花更多的经历去完善店铺，默默无闻地、用心地去经营店铺，现在的情况只是创业过程中的一个点滴罢了。\r\n本文来自美乐网 [/b][/size]\r\n\r\n[size=4][b]\r\n[/b][/size]\r\n\r\n[size=4][b]子雨点评：这里胡公子的成功与自身的文学涵养或者说心思灵敏无不有关系，假如没有一定的才气那么干瘪瘪的文字是没有人爱读或者说是感动不了大家的，恰是胡公子幽默的回复是良多人在冬日里有了一缕阳光。当大家在一个循分守纪的社会里看着一样的东西，一样的文字是否另类的文字让良多人感到了新鲜，大家可以鉴戒这个例子寻找一些另类的途径来推泛博家的网店，好比一些超级雷的店铺，以男人穿女装或者女人穿男装。 [/b][/size][/list]', '1359899461');
INSERT INTO `bf_posts` VALUES ('138', '98', '3', '美乐管理员', '1', '0', '【新功能！】注册淘宝账号必备手机验证码服务，任务举报', '[b][color=#f10b00][img]http://www.hiwinwin.com/images/bbs/qq/63.gif[/img] [img]http://www.hiwinwin.com/images/bbs/qq/63.gif[/img] [img]http://www.hiwinwin.com/images/bbs/qq/63.gif[/img] ======[size=5]美乐手机验证码服务上线[/size]======[img]http://www.hiwinwin.com/images/bbs/qq/63.gif[/img] [img]http://www.hiwinwin.com/images/bbs/qq/63.gif[/img] [img]http://www.hiwinwin.com/images/bbs/qq/63.gif[/img] [/color]\r\n\r\n[color=#307f00]大家都知道自2010-12-02号淘宝升级后，[color=#f10b00]所有的淘宝新账号注册都需要提供手机号码收取验证码[img]http://www.hiwinwin.com/images/bbs/qq/129.gif[/img] [/color]，即使是注册[/color][color=#307f00]第二步选择其他方式注册，最后一步也是需要手机收取验证码的，本次淘宝升级给平台广大用户带来了比较大的[/color][color=#307f00]困扰[img]http://www.hiwinwin.com/images/bbs/qq/9.gif[/img] ，因为即使是选择邮箱注册方式也需要提供手机号，虽然不像绑定手机注册方式一样限制一机一号，但是[/color][color=#307f00][color=#f10b00]如果同一手机号注册过多账号无异于等于告诉淘宝此小号是用来刷信誉的[img]http://www.hiwinwin.com/images/bbs/qq/37.gif[/img] ；[color=#307f00]尽管在淘宝升级后，美乐强大的用户想出了“老地址注册”、“旺旺注册”、“先支付宝后淘宝” 等等多种对应招数，但是我们明白这些只能是权宜之计，因为这些端口会被淘宝逐步关闭（就像老版支付宝一样），此时我们大家最最迫切需要的是一个更安全更有效的完美解决方案！！[/color][/color][/color]\r\n\r\n[color=#013add]塞翁失马，[color=#013add]焉知非福：[/color][/color]\r\n\r\n[color=#307f00]据我们对淘宝的分析发现，淘宝针对其系统内的[color=#f10b00]新注册账号是会分安全级别的，安全级别从低到高依次是： [color=#f10b00]机器小号[/color][color=#f10b00]-[/color][/color][/color][color=#307f00][color=#f10b00]-->[color=#f10b00]邮箱认证人工号[/color]---->[color=#d40a00]手机绑定号[/color]---->实名认证号[/color]；[img]http://www.hiwinwin.com/images/bbs/qq/22.gif[/img] 安全级别越高的小号越不容易被冻结，同时该小号评价的[/color][color=#307f00]店铺信誉也就越真是安全；[/color]\r\n\r\n[color=#307f00]所以我们换个角度考虑问题如果大家的买号都是高级别的买号那么对于接发任务双方来说都是件美乐网的好事；也正是因为[/color][color=#307f00]这个原因，在不久前我们才刚推出了美乐[color=#fe2419]“[/color][color=#fe2419]实名买号任务”[img]http://www.hiwinwin.com/images/bbs/qq/29.gif[/img] ；熟话说得好“兵来将挡水来土屯”可是使用对抗解决问题方式是不够智慧的，[color=#307f00]此次美乐借鉴“太极”的借力打力，决定以疏代堵依托淘宝的此次升级的东风把大家的淘宝买号安全级别都升级为“手机绑定”的高安全买号 [/color][/color]，从而使美乐上的信誉安全级别更上一层楼！[/color]\r\n\r\n[color=#307f00][color=#013add]今天正式推出淘宝注册完美解决方案：[/color][/color]\r\n\r\n[color=#307f00][color=#f10b00] [emot=qq,66/][emot=qq,66/] [img]http://www.hiwinwin.com/images/bbs/qq/66.gif[/img] [emot=qq,66/] [emot=qq,66/] 手机[/color][/color][color=#307f00][color=#f10b00]验证码服务[emot=qq,66/] [emot=qq,66/] [emot=qq,66/] [emot=qq,66/] [emot=qq,66/] [/color][/color]\r\n\r\n[color=#013add]美乐手机验证码服务的最大特点是：[/color]\r\n\r\n[color=#f10b00][color=#307f00]可以实[color=#f10b00]“一机一号”[/color]，实现[color=#f10b00]绑定手机号方式注册[/color]高安全级别的淘宝新号；[emot=qq,47/][/color] [emot=qq,44/] [/color]\r\n\r\n[color=#f10b00][color=#013add]手机验证码服务收费标准：[/color][/color]\r\n\r\n[color=#f10b00]淘宝+支付宝激活 1.5元/个[color=#767173]（可用其注册一个绑定手机的高安全级别淘宝买号，接手一个任务就赚回来了，绝对物超所值！！）[/color][/color]\r\n\r\n[color=#f10b00][color=#307f00]注：服务提供商会于[color=#f10b00]周一至周五 [/color][color=#f10b00]每[/color][color=#f10b00]天 早十一点 至 晚六点 [/color]处理当天的手机认证任务；为了保证购买动作的连续性请[color=#fe2419]购买的会员务必平台在线等待，及时操作[/color]，半途中止的操作将会只能排在空闲时处理；[/color][/color]\r\n\r\n[color=#f10b00][/color]\r\n\r\n[color=#5c585a]====================================================[/color]\r\n\r\n[color=#013add]此次伴随手机验证码服务一起升级的功能还有如下几项功能：[/color]\r\n\r\n[color=#f10b00][/color][/b]\r\n\r\n[color=#d801e5]第一：[/color][color=#000000]为了避免因为QQ临时通话丢失造成用户对美乐客服无谓的误会，[color=#f10b00]新增点击客服的QQ将先弹出先添加好友[/color][/color][color=#000000][color=#f10b00]的网页提示[/color]；[/color]\r\n\r\n[color=#000000][img=,291,119]/img/bbs/2013/02/24BB.jpg[/img] [/color]\r\n\r\n[color=#d801e5]第二：[/color][color=#000000]针对[color=#f10b00]任务留言违规[/color][color=#f10b00]，来路任务来路提示无效 以及 接手人多次拍下不付款等情况，[color=#000000]推出在已[/color][/color]接手任务和已[/color][color=#000000]发布任务列表中增加[color=#f10b00]任务[/color][color=#f10b00]问题举报功能；[/color][/color]\r\n\r\n[color=#000000][color=#f10b00][img=,589,201]/img/bbs/2013/02/24BE.jpg[/img] [/color][/color]\r\n\r\n[color=#000000][color=#5c585a]在已接任务或者已发任务列表右侧能看到[color=#013add][url=http://www.mei-le.com]【问题举报】[/url][/color]按钮，点击后进入举报页面，选择举报问题类别后，请详[/color][/color][color=#000000][color=#5c585a]细描述问题；客服每天会定时处理任务举报；[/color][/color]\r\n\r\n[color=#000000][color=#f10b00][img=,491,242]/img/bbs/2013/02/24C1.jpg[/img] [/color][/color]\r\n\r\n[color=#d801e5]第三：[color=#000000]发布任务界面，任务增值功能区“[/color][/color][color=#000000][color=#000000]限制接手人”[/color][color=#fe2419]新增一天同一接手人可接手两个同一掌柜任务选项[/color]；同时[/color][color=#000000]调整发布限制接手人任务所需增值兔粮为：[/color][color=#000000][color=#fe2419]1天接1个扣除0.5个兔粮，1天接[/color][color=#fe2419]2个扣除0.2个兔粮；[/color][/color]\r\n\r\n[color=#000000][color=#fe2419][img=,589,112]/img/bbs/2013/02/24C4.jpg[/img] [/color][/color]\r\n\r\n[color=#d801e5]第四：[/color][color=#000000]发布人自行[color=#fe2419]取消已发布任务[/color]，扣除兔粮由原来扣除任务50%任务兔粮调整为[color=#fe2419]一律扣除0.5个兔粮[/color]；[/color]\r\n\r\n[img=,733,193]/img/bbs/2013/02/24C7.jpg[/img]\r\n\r\n[color=#d801e5]第五：[/color][color=#000000]任务暂停状态下[color=#fe2419]重新开放“重新发布”功能[/color]，重新发布后，任务作为新任务出现在互动区可用来提高任务[/color][color=#000000]在互动区中排名，重新发布任务需支付[color=#fe2419]0.5个兔粮/次；[/color][/color]\r\n\r\n[color=#000000][color=#fe2419][img=,698,210]/img/bbs/2013/02/24CA.jpg[/img] [/color][/color]\r\n\r\n[emot=qq,66/]  ', '1359989334');
INSERT INTO `bf_posts` VALUES ('139', '99', '3', '美乐管理员', '1', '0', '【公告】关于24/48/72小时任务，接手人淘宝提前好评的处罚通知', '[b][color=#013add]近来有不少新人甚至老刷客，在接手了非马上好评的任务后，在发布人淘宝发货没几分钟就给人家淘宝收货了；可是平台上对收货是有时间限制的，您平台上又无法确认收货，还不是要等到时间到了才能拿到任务押金？ \r\n[/color][color=#013add]卖家申诉后，买家老是以[color=#f10b00]不知道，没看清，误操作[/color]等等作为借口；凡事要换位思考，如果是你自己的店出现这个问题，你能接受么？[/color]\r\n[color=#013add]试问这样因为你的一时快意，导致卖家店铺被查，您又能得到什么好处呢？？这样损人不利己的事情还是少做吧！[/color]\r\n\r\n[color=#f10b00]自本公告发布之日起，凡是因为这个原因引起发布人申诉的，申诉裁决时一律返还所有兔粮给发布方，同时扣除接手人积分12分作为惩戒！\r\n[/color]\r\n[color=#f10b00]请广大新老刷客都要遵守一个刷客最最基本的品德！[/color]\r\n[/b]', '1359989555');
INSERT INTO `bf_posts` VALUES ('140', '100', '3', '美乐管理员', '1', '0', '【注意】关于不使用绑定买号购买任务商品的规定', '[b]近来很多会员以“不知道”/“不清楚”为由，使用非任务中绑定的淘宝买号去购买任务商品；造成发布人无法确认是否是任务接手人去执行的购买；更有甚者个别接手者是为了避开买号限制，或者其他目的而故意使用其他买号购买任务商品的情况！\r\n\r\n从而导致很多任务申诉的发生！我们的申诉专员每天要耗费大量的精力和时间去验证这个本来只要接手人稍加注意就可以完全避免的问题，大大影响了其他任务申诉的处理效率！\r\n\r\n[color=#d40a00]美乐特此郑重声明：[/color]\r\n\r\n[color=#d40a00]第一：但凡是没有使用任务中绑定买号去执行的商品购买动作，同时无法证明买号为接手人所有的，在申诉中都会做无效购买处理；[/color][color=#d40a00]由此导致申诉失败，接手人将无法得到任何任务保证金；[/color]\r\n\r\n[color=#d40a00]第二：对于能通过提供交易买号密码，证明交易买号是属于接手人的交易，仅仅发放任务保证金；任务兔粮将会全额返还给发布方；[/color]\r\n\r\n[color=#d40a00][color=#d40a00]第三：如果接手人未能理解绑定买号的真正意义，或者为屡次犯同样错误者，将会处以禁止接手任务三至七天的处罚；[/color][/color]\r\n[/b]\r\n[color=#d40a00][b][color=#d40a00]请各位接手人切记，使用不一致买号购买任务商品是拿你自己的金钱和发布方的网店信誉在儿戏！！！[/color][/b][/color] ', '1359989798');
INSERT INTO `bf_posts` VALUES ('141', '55', '3', '美乐管理员', '0', '0', '', '[emot=qq,47/]', '1359990763');
INSERT INTO `bf_posts` VALUES ('145', '43', '55', 'Q906818', '0', '0', '', '反对党孙菲菲', '1392053339');
INSERT INTO `bf_posts` VALUES ('146', '83', '59', 'l215250260', '0', '0', '', '[emot=qq,25/][emot=qq,25/][emot=qq,25/][emot=qq,25/][emot=qq,25/][emot=qq,25/][emot=qq,31/][emot=qq,31/][emot=qq,53/]sdsdfgdg', '1393500432');
INSERT INTO `bf_posts` VALUES ('147', '104', '121', 'ceshi1', '1', '0', 'ggggdddddddddddddd', 'ggggdddddddddddddddddddd', '1402044577');
INSERT INTO `bf_posts` VALUES ('148', '105', '121', 'ceshi1', '1', '0', 'ddddddddddddddd', 'dddddddddddddddddddddddddddd', '1402044807');

-- ----------------------------
-- Table structure for `bf_pwd2_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_pwd2_log`;
CREATE TABLE `bf_pwd2_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `mobilephone` varchar(16) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_pwd2_log
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_pwd_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_pwd_log`;
CREATE TABLE `bf_pwd_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `mobilephone` varchar(16) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_pwd_log
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_rate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_rate`;
CREATE TABLE `bf_rate` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `user_tname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `user_tel` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `user_qq` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `days` int(5) DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ips` int(5) DEFAULT NULL,
  `atime` int(12) DEFAULT NULL,
  `ip` int(12) DEFAULT NULL,
  `ptime` int(12) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bf_rate
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_rcard`
-- ----------------------------
DROP TABLE IF EXISTS `bf_rcard`;
CREATE TABLE `bf_rcard` (
  `id` char(20) DEFAULT NULL,
  `money` decimal(9,2) DEFAULT NULL,
  `pwd` char(32) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(16) DEFAULT NULL,
  `ctimestamp` int(10) unsigned NOT NULL,
  `utimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_rcard
-- ----------------------------
INSERT INTO `bf_rcard` VALUES ('20140710032129693223', '100.00', 'A7E480F9652BD9CF6F181E836EAE5A2A', '4', 'ceshi1', '1404933689', '1404933776', '1');
INSERT INTO `bf_rcard` VALUES ('20140710032129694292', '100.00', '271C75983B511E52C0F298D5F2EFE9CB', '4', 'ceshi1', '1404933689', '1404933869', '1');
INSERT INTO `bf_rcard` VALUES ('20140710032129695163', '100.00', 'F4208E9F3F0A0BC66A2AB6A3F806C987', '0', null, '1404933689', '0', '0');
INSERT INTO `bf_rcard` VALUES ('20140710032734437230', '600.00', '6637C6C1842D0B4C837AFB672D2FB3F2', '5', 'ceshi2', '1404934054', '1404934136', '1');

-- ----------------------------
-- Table structure for `bf_related_links`
-- ----------------------------
DROP TABLE IF EXISTS `bf_related_links`;
CREATE TABLE `bf_related_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index1` (`status`,`sort`,`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_related_links
-- ----------------------------
INSERT INTO `bf_related_links` VALUES ('6', '2', '财付通', 'https://www.tenpay.com/', '/images/links/tenpay.gif', '1', '1306116970');
INSERT INTO `bf_related_links` VALUES ('5', '1', '支付宝', 'https://www.alipay.com/', '/images/links/alipay.gif', '1', '1306116944');
INSERT INTO `bf_related_links` VALUES ('7', '3', '中国银行', 'http://www.boc.cn/', '/images/links/boc.gif', '1', '1306116998');
INSERT INTO `bf_related_links` VALUES ('8', '4', '中国农业银行', 'http://www.95599.cn/', '/images/links/aboc.gif', '1', '1306117141');
INSERT INTO `bf_related_links` VALUES ('9', '5', '招商银行', 'http://www.cmbchina.com/', '/images/links/cmbc.gif', '1', '1306117133');
INSERT INTO `bf_related_links` VALUES ('10', '6', '深圳发展银行', 'http://www.sdb.com.cn/', '/images/links/sdb.gif', '1', '1306117126');
INSERT INTO `bf_related_links` VALUES ('11', '7', '美乐专业平台', 'http://www.mei-le.com/', '/images/links/yeepay.gif', '1', '1360065857');

-- ----------------------------
-- Table structure for `bf_sellers`
-- ----------------------------
DROP TABLE IF EXISTS `bf_sellers`;
CREATE TABLE `bf_sellers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(16) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `truth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `express` varchar(128) DEFAULT NULL,
  `timestamp1` int(10) unsigned NOT NULL,
  `timestamp2` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `task` int(10) unsigned NOT NULL DEFAULT '0',
  `tasking` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`uid`,`timestamp1`,`id`),
  KEY `i2` (`type`,`nickname`,`uid`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_sellers
-- ----------------------------
INSERT INTO `bf_sellers` VALUES ('1', '1', '4', 'ceshi1', 'lubingss', '0', '', '1404934449', '0', '1', '0', '2');
INSERT INTO `bf_sellers` VALUES ('2', '1', '4', 'ceshi1', '优客舍', '0', '', '1404941694', '0', '1', '1', '0');

-- ----------------------------
-- Table structure for `bf_shops`
-- ----------------------------
DROP TABLE IF EXISTS `bf_shops`;
CREATE TABLE `bf_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(16) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `des` text,
  `content` text,
  `price` decimal(9,2) DEFAULT NULL,
  `count` int(10) unsigned NOT NULL,
  `timestamp1` int(10) unsigned NOT NULL,
  `timestamp2` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp3` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`cid`,`status`,`timestamp1`,`id`),
  KEY `i2` (`cid`,`uid`,`timestamp3`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_shops
-- ----------------------------
INSERT INTO `bf_shops` VALUES ('2', '1', '3', '美乐管理员', '支付宝实名帐号', '一经卖出，概不退货', '测试,HOHO', '10.00', '1', '1301245945', '1301414399', '1301246252', '1');
INSERT INTO `bf_shops` VALUES ('3', '1', '3', '美乐管理员', '支付宝实名帐号', '一经卖出，概不退货', '测试', '10.00', '1', '1301245963', '0', '1301246085', '1');
INSERT INTO `bf_shops` VALUES ('4', '1', '0', null, '旺旺账号', '蓝精灵卡 ', '健康蓝精灵 ', '10.00', '52134', '1402220795', '0', '0', '0');

-- ----------------------------
-- Table structure for `bf_shop_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_shop_cate`;
CREATE TABLE `bf_shop_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(16) DEFAULT NULL,
  `total1` int(10) unsigned NOT NULL DEFAULT '0',
  `total2` int(10) unsigned NOT NULL DEFAULT '0',
  `total3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_shop_cate
-- ----------------------------
INSERT INTO `bf_shop_cate` VALUES ('1', '0', '支付宝实名帐号', '3', '0', '1');

-- ----------------------------
-- Table structure for `bf_sms`
-- ----------------------------
DROP TABLE IF EXISTS `bf_sms`;
CREATE TABLE `bf_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `message` varchar(74) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_softs`
-- ----------------------------
DROP TABLE IF EXISTS `bf_softs`;
CREATE TABLE `bf_softs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` text,
  `img` varchar(128) DEFAULT NULL,
  `soft` varchar(128) DEFAULT NULL,
  `size` int(10) unsigned NOT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`cid`,`timestamp`,`id`),
  KEY `i2` (`downloads`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_softs
-- ----------------------------
INSERT INTO `bf_softs` VALUES ('8', '3', '淘宝拉客助手(破解版)', '本软件Windows Vista ,Windows7,Windows8 或更高版本可直接完美运行。\r\n\r\n如果本软件您不能正常运行一般是因为您系统中缺少 .NetFramework 2.0 ,安装后即可正常运行。\r\n您可从WindowsUpdate进行更新或者直接下载安装，安装.Net 2.0 是一次性的，安装后以后不必再次安装,这将提高您系统的兼容性。\r\n\r\n.Net 2.0 下载地址。\r\n\r\n[天空软件站下载（下载速度快）] [url]http://www.skycn.com/soft/39946.html[/url]\r\n\r\n[太平洋下载（下载速度快）] [url]http://dl.pconline.com.cn/html_2/1/82/id=10637&pn=0.html[/url]\r\n\r\n[新浪网下载（下载速度快）] [url]http://down.tech.sina.com.cn/content/16927.html[/url]\r\n\r\n[微软官方站下载（下载速度慢）] [url]http://www.microsoft.com/downloads/details.aspx?familyid=0856EACB-4362-4B0D-8EDD-AAB15C5E04F5&displaylang=zh-cn[/url]\r\n\r\n其他帮助进行运行起软件，软件内部有帮助.    ', '2013/02/23441.jpg', '2013/02/217F.rar', '1218143', '0.00', '0', '0', '1359953937');
INSERT INTO `bf_softs` VALUES ('7', '3', '提升店铺宝贝浏览量工具', '本软件经过处理，可以提升淘宝店铺卖家店铺宝贝流量！\r\n\r\n安装过程中会检查用户是否已经安装.net framework 2.0，如果没有安装则提醒用户先安装.net。\r\n\r\n没有安装.net 2.0以上的用户是无法运行本工具的', '2013/02/21751.jpg', '2013/02/2177.zip', '1515871', '0.00', '20', '0', '1359896442');

-- ----------------------------
-- Table structure for `bf_soft_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_soft_cate`;
CREATE TABLE `bf_soft_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(16) DEFAULT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_soft_cate
-- ----------------------------
INSERT INTO `bf_soft_cate` VALUES ('2', '2', '推广软件', '0');
INSERT INTO `bf_soft_cate` VALUES ('3', '1', '网店助手软件', '2');

-- ----------------------------
-- Table structure for `bf_spread`
-- ----------------------------
DROP TABLE IF EXISTS `bf_spread`;
CREATE TABLE `bf_spread` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(5) DEFAULT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tj_username` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tj_atime` int(12) DEFAULT NULL,
  `tj_ip` int(12) DEFAULT NULL,
  `task_accept` int(5) DEFAULT NULL,
  `task_send` int(5) DEFAULT NULL,
  `tj_award` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bf_spread
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_sql`
-- ----------------------------
DROP TABLE IF EXISTS `bf_sql`;
CREATE TABLE `bf_sql` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `sql` text,
  `args` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_sql
-- ----------------------------
INSERT INTO `bf_sql` VALUES ('2', '简单创建数据库', 'create database {db}', 'a:1:{s:2:\"db\";s:12:\"数据库名\";}');
INSERT INTO `bf_sql` VALUES ('4', '表名', 'create table `{pre}{name}`(\r\n`id` int,\r\n{f}\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;', 'a:2:{s:4:\"name\";s:6:\"表名\";s:1:\"f\";s:6:\"字段\";}');
INSERT INTO `bf_sql` VALUES ('6', '删除指定ID的用户', 'delete from {pre}members where id=\'{id}\';\r\ndelete from {pre}memberfields where uid=\'{id}\';', 'a:1:{s:2:\"id\";s:8:\"用户ID\";}');
INSERT INTO `bf_sql` VALUES ('7', '设置表的auto_increment', 'alter table {pre}{tbName} auto_increment={num}', 'a:2:{s:6:\"tbName\";s:6:\"表名\";s:3:\"num\";s:9:\"初始值\";}');
INSERT INTO `bf_sql` VALUES ('9', '校正掌柜号和小号数量', 'UPDATE \r\n	{pre}memberfields t0 \r\nLEFT JOIN \r\n	(SELECT \r\n		t0.uid,IFNULL(t1.total,0) sellers1,IFNULL(t2.total,0) sellers2,IFNULL(t3.total,0) sellers3\r\n	FROM\r\n		{pre}memberfields t0\r\n	LEFT JOIN\r\n		(SELECT uid,COUNT(*) total FROM {pre}sellers WHERE type=\'1\' GROUP BY uid) t1\r\n	ON\r\n		t1.uid=t0.uid\r\n	LEFT JOIN\r\n		(SELECT uid,COUNT(*) total FROM {pre}sellers WHERE type=\'2\' GROUP BY uid) t2\r\n	ON\r\n		t2.uid=t0.uid\r\n	LEFT JOIN\r\n		(SELECT uid,COUNT(*) total FROM {pre}sellers WHERE type=\'3\' GROUP BY uid) t3\r\n	ON \r\n		t3.uid=t0.uid) t1\r\nON\r\n	t1.uid=t0.uid\r\nSET\r\n	t0.sellers1=t1.sellers1,t0.sellers2=t1.sellers2,t0.sellers3=t1.sellers3;\r\nUPDATE \r\n	{pre}memberfields t0 \r\nLEFT JOIN \r\n	(SELECT \r\n		t0.uid,IFNULL(t1.total,0) buyers1,IFNULL(t2.total,0) buyers2,IFNULL(t3.total,0) buyers3\r\n	FROM\r\n		{pre}memberfields t0\r\n	LEFT JOIN\r\n		(SELECT uid,COUNT(*) total FROM {pre}buyers WHERE type=\'1\' GROUP BY uid) t1\r\n	ON\r\n		t1.uid=t0.uid\r\n	LEFT JOIN\r\n		(SELECT uid,COUNT(*) total FROM {pre}buyers WHERE type=\'2\' GROUP BY uid) t2\r\n	ON\r\n		t2.uid=t0.uid\r\n	LEFT JOIN\r\n		(SELECT uid,COUNT(*) total FROM {pre}buyers WHERE type=\'3\' GROUP BY uid) t3\r\n	ON \r\n		t3.uid=t0.uid) t1\r\nON\r\n	t1.uid=t0.uid\r\nSET\r\n	t0.buyers1=t1.buyers1,t0.buyers2=t1.buyers2,t0.buyers3=t1.buyers3', '');

-- ----------------------------
-- Table structure for `bf_sql_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_sql_log`;
CREATE TABLE `bf_sql_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `sql` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_sql_log
-- ----------------------------
INSERT INTO `bf_sql_log` VALUES ('3', '查询所有快捷SQL', 'select * from bf_sql_log;', '1306854177');
INSERT INTO `bf_sql_log` VALUES ('4', '查询所有快递', 'select id,name from bf_express;', '1306854267');
INSERT INTO `bf_sql_log` VALUES ('5', '更新小号状态', 'update bf_buyers set status=0 where status in(1,2);\nupdate bf_buyers set todayTask=\'0\';', '1306906952');

-- ----------------------------
-- Table structure for `bf_store`
-- ----------------------------
DROP TABLE IF EXISTS `bf_store`;
CREATE TABLE `bf_store` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `username` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `usertname` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `user_tel` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `user_qq` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `store_deal` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `store_price` decimal(10,2) DEFAULT NULL,
  `store_day` int(5) DEFAULT NULL,
  `store_att` int(2) DEFAULT NULL,
  `store_atime` int(12) DEFAULT NULL,
  `store_state` int(2) DEFAULT NULL,
  `store_ip` int(12) DEFAULT NULL,
  `store_ptime` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bf_store
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_sys_article`
-- ----------------------------
DROP TABLE IF EXISTS `bf_sys_article`;
CREATE TABLE `bf_sys_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(32) DEFAULT NULL,
  `cid` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`cid`,`sort`,`timestamp`,`id`),
  KEY `i2` (`ename`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_sys_article
-- ----------------------------
INSERT INTO `bf_sys_article` VALUES ('3', 'agreement', '1', '1', '美乐平台服务条款', '[b][color=#ff6600][size=3]一.本服务条款是用户（您）与美乐平台（下称美乐）之间的协议。[/size][/color][/b]\r\n\r\n[color=#666666]1. 重要须知： 美乐在此特别提醒，用户（您）欲访问和使用美乐平台，必须事先认真阅读本服务条款中各条款， 包括免除或者限制美乐责任的免责条款及对用户的权利 限制。请您审阅并接受或不接受本服务条款（未成年人审阅时应得到法定监护人的陪同）。如您不同意本服务条款及/或随时对其的修改，您应不使用或主动取消美乐平台提供的服务。您的使用行为将被视为您对本服务条款全部的完全接受，包括接受美乐对服务条款随时所做的任何修改。除遵守本制度以外，平台一切公开规则同等有效。有重复则按此制度执行。[/color]\r\n\r\n[color=#666666]2. 这些条款可由美乐随时更新，且毋须另行通知。美乐平台服务条款(以下简称“服务条款”)一旦发生变更, 美乐将在网页上公布修改内容。修改后的服务一旦在网页上公布即有效代替原来的服务条款。您可随时登陆美乐网查阅最新版服务条款。[/color]\r\n\r\n[color=#666666]3. 美乐目前重要是针对C2C平台用户提高信誉服务。包括淘宝，百度有啊，腾讯拍拍等。本服务条款适用于美乐提供的各种服务，但当您使用美乐某一特定服务时，如该服务另有单独的服务条款、指引或规则，您应遵守本服务条款及美乐随时公布的与该服务相关的服务条款、指引或规则等。前述所有的指引和规则，均构成本服务条款的一部分。除非本服务条款另有其他明示规定，新推出的产品或服务、增加或强化目前本服务的任何新功能，均受到本服务条款之规范。[/color]\r\n\r\n[b][color=#ff6600][size=3]二．美乐服务介绍及用户使用规则[/size][/color][/b]\r\n\r\n[color=#666666]1 用户必须自行配备上网和使用电信增值业务所需的设备，自行负担个人上网或第三方（包括但不限于电信或移动通信提供商）收取的通讯费、信息费等有关费用。如涉及电信增值服务的，我们建议您与您的电信增值服务提供商确认相关的费用问题。[/color]\r\n\r\n[color=#666666]2 除您与美乐公司另有约定外，您同意本服务仅供个人使用且非商业性质的使用，您不可对本服务任何部分或本服务之使用或获得顾客QQ号或者我们建立的互动群，进行复制、拷贝、出售、或利用本服务进行调查、广告、或用于其他商业目的，其中，您不得将任何广告信函与信息、促销资料、垃圾邮件与信息、滥发邮件与信息、直销及传销邮件与信息以短信、即时通信或以其他方式传送，但美乐公司对特定服务另有适用指引或规则的除外。[/color]\r\n\r\n[color=#666666]3 您不可以在网站发送任何妨碍社会治安或非法、虚假、骚扰性、侮辱性、恐吓性、伤害性、破坏性、挑衅性、淫秽色情性等内容的信息。[/color]\r\n\r\n[color=#666666]4 保证自己在使用各服务时用户身份的真实性和正确性及完整性，如果资料发生变化，　您应及时更改。　在安全完成本服务的登记程序并收到一个密码及帐号后，您应维持密码及帐号的机密安全。您应对任何人利用您的密码及帐号。所进行的活动负完全的责任，美乐公司无法对非法或未经您授权使用您帐号及密码的行为作出甄别，因此美乐公司不承担任何责任。在此，您同意并承诺做到∶ [/color]\r\n\r\n[color=#666666]4.1 当您的密码或帐号遭到未获授权的使用，或者发生其他任何安全问题时，您会立即有效通知到美乐公司；[/color]\r\n\r\n[color=#666666]4.2 当您每次上网或使用其他服务完毕后，会将有关信息，例如平台账号等安全退出。[/color]\r\n\r\n[color=#666666]5 用户同意接受美乐通过电子邮件、即时通信的客户端、网页或其他合法方式向用户发送商品促销或其他相关商业信息。在使用电信增值服务的情况下，　用户同意接受本公司及合作公司通过增值服务系统或其他方式向用户发送的相关服务信息或其他信息，其他信息包括但不限于通知信息、宣传信息、广告信息等。[/color]\r\n\r\n[color=#666666]　　[/color]\r\n\r\n[b][color=#ff6600][size=3]三.服务风险及免责声明[/size][/color][/b]\r\n\r\n[color=#666666]1 用户须明白，本服务仅依其当前所呈现的状况提供，本服务涉及到互联网及移动通讯等服务，可能会受到各个环节不稳定因素的影响。因此服务存在因上述不可抗力、计算机病毒或黑客攻击、系统不稳定、用户所在位置、用户关机、GSM网络、互联网络、通信线路原因等造成的服务中断或不能满足用户要求的风险。开通服务的用户须承担以上风险，本公司和合作公司对服务之及时性、安全性、准确性不作担保，对因此导致用户不能互接、或传递错误，个人设定之时效、未予储存或其他问题不承担任何责任。[/color]\r\n\r\n[color=#666666]2 如本公司的系统发生故障影响到本服务的正常运行，本公司承诺在第一时间内与相关单位配合，及时处理进行修复。但用户因此而产生的经济损失，本公司和合作公司不承担责任。此外，美乐保留不经事先通知为维修保养、升级或其他目的暂停本服务任何部分的权利。[/color]\r\n\r\n[color=#666666]3 美乐公司在此郑重提请您注意，任何经由本服务以上载、张贴、发送即时信息、电子邮件或任何其他方式传送的资讯、资料、文字、软件、音乐、音讯、照片、图形、视讯、信息、用户的登记资料或其他资料（以下简称“内容”），无论系公开还是私下传送，均由内容提供者承担责任。美乐公司无法控制经由本服务传送之内容，也无法对用户的使用行为进行全面控制，因此不保证内容的合法性、正确性、完整性、真实性或品质；您已预知使用本服务时，可能会接触到令人不快、不适当或令人厌恶之内容，并同意将自行加以判断并承担所有风险，而不依赖于美乐公司。但在任何情况下，美乐公司有权依法停止传输任何前述内容并采取相应行动，包括但不限于暂停用户使用本服务的全部或部分，保存有关记录，并向有关机关报告。但美乐公司有权(但无义务)依其自行之考量，拒绝和删除可经由本服务提供之违反本条款的或其他引起美乐公司或其他用户反感的任何内容。[/color]\r\n\r\n[color=#666666]4 关于使用及储存之一般措施：　您承认关於本服务的使用美乐有权制订一般措施及限制，包含但不限於本服务将保留用户信息、电子邮件信息、所张贴内容或其他上载内容之最长期间、本服务一个帐号当中可收发电子邮件或短信讯息等的最大数量、本服务一个帐号当中可收发的单个信息或电子邮件的大小、美乐服务器为您分配的最大使用空间，以及一定期间内您使用本服务之次数上限（及每次使用时间之上限）。通过本服务存储或传送之任何信息、通讯资料和其他内容，如被删除或未予储存，您同意美乐毋须承担任何责任。您亦同意，长时间未使用的帐号，美乐有权关闭并收回帐号。您也同意，美乐有权依其自行之考量，不论通知与否，随时变更这些一般措施及限制。 [/color]\r\n\r\n[color=#666666]5 与广告商进行之交易 : 您通过本服务与广告商进行任何形式的通讯或商业往来，或参与促销活动，包含相关商品或服务之付款及交付，以及达成的其他任何相关条款、条件、保证或声明，完全为您与广告商之间之行为。除有关法律有明文规定要求美乐承担责任以外，您因前述任何交易或前述广告商而遭受的任何性质的损失或损害，美乐均不予负责。 [/color]\r\n\r\n[color=#666666]6 链接及搜索引擎服务： 本服务或第三人可提供与其他国际互联网上之网站或资源之链接。由於美乐无法控制这些网站及资源，您了解并同意：无论此类网站或资源是否可供利用，美乐不予负责；美乐亦对存在或源于此类网站或资源之任何内容、广告、产品或其他资料不予保证或负责。因您使用或依赖任何此类网站或资源发布的或经由此类网站或资源获得的任何内容、商品或服务所产生的任何损害或损失，美乐不负任何直接或间接之责任。若您认为该链接所载的内容或搜索引擎所提供之链接的内容侵犯您的权利，美乐声明与上述内容无关，不承担任何责任。美乐建议您与该网站或法律部门联系，寻求法律保护；若您需要更多了解美乐之搜索服务，请参见美乐关于搜索引擎服务的相关说明。[/color]\r\n\r\n[color=#666666]7 若在本网站的信息存储服务、搜索服务、链接服务中涉及的信息内容存在侵犯第三人著作权的可能，美乐公司将遵循“版权保护投诉指引”处理该信息内容。详细处理程序请参见具体规则。[/color]\r\n\r\n[b][color=#ff6600][size=3]四.服务变更、中断或终止及服务条款的修改[/size][/color][/b]\r\n\r\n[color=#666666]1 本服务的所有权和运作权、一切解释权归美乐公司。美乐公司提供的服务将按照其发布的章程、服务条款和操作规则严格执行。[/color]\r\n\r\n[color=#666666]2 本公司有权在必要时修改服务条款，服务条款一旦发生变动，将会在相关页面上公布修改后的服务条款。如果不同意所改动的内容，用户应主动取消此项服务。如果用户继续使用服务，则视为接受服务条款的变动。[/color]\r\n\r\n[color=#666666]3 本公司和合作公司有权按需要修改或变更所提供的收费服务、收费标准、收费方式、服务费、及服务条款。美乐在提供服务时，可能现在或日后对部分服务的用户开始收取一定的费用如用户拒绝支付该等费用，则不能在收费开始后继续使用相关的服务。但美乐和合作公司将尽最大努力通过电邮或其他有效方式通知用户有关的修改或变更。[/color]\r\n\r\n[color=#666666]4 本公司特别提请用户注意，本公司为了保障公司业务发展和调整的自主权，本公司拥有经或未经事先通知而修改服务内容、中断或中止部分或全部服务的权利，修改会公布于美乐网站相关页面上，一经公布视为通知。 美乐公司行使修改或中断服务的权利而造成损失的，美乐公司不需对用户或任何第三方负责。[/color]\r\n\r\n[color=#666666]5 如发生下列任何一种情形，本公司有权随时中断或终止向用户提供服务而无需通知用户：[/color]\r\n\r\n[color=#666666]5.1 用户提供的个人资料不真实；[/color]\r\n\r\n[color=#666666]5.2 用户违反本服务条款的规定；[/color]\r\n\r\n[color=#666666]5.3 按照主管部门的要求；[/color]\r\n\r\n[color=#666666]5.4 其他本公司认为是符合整体服务需求的特殊情形。[/color]\r\n\r\n[color=#666666]　　[/color]\r\n\r\n[b][color=#ff6600][size=3]五. 隐私权保护[/size][/color][/b]\r\n\r\n[color=#666666]1 美乐重视对用户隐私的保护，保护隐私是美乐的一项基本政策。您提供的登记资料及美乐公司保留的有关您的若干其他个人资料将受到中国有关隐私的法律和本公司《隐私保护声明》之规范。[/color]\r\n\r\n[color=#666666]2 您使用美乐服务时，美乐有权用数字代码、通用唯一标识符、cookies或其他技术确定进入服务的计算机。美乐有可能利用所得信息对服务的使用进行总体性及匿名的数据统计及分析，　所得数据可供美乐或其合作人使用。　计算机识别技术也会用于执行相关的服务条款。[/color]\r\n\r\n[color=#666666]3 美乐可能会与第三方合作向用户提供相关的服务，如该第三方为合法经营的公司且提供同等的用户隐私保护（如电信运营商），美乐有权将用户的注册资料等提供给该第三方。[/color]\r\n\r\n[b][color=#ff6600][size=3]六.美乐商标信息[/size][/color][/b]\r\n\r\n[color=#666666]1 美乐、网站logo等，以及其他美乐标志及产品、服务名称，均为美乐公司之商标（以下简称“美乐标识”）。未经美乐事先书面同意，您不得将美乐标记以任何方式展示或使用或作其他处理，也不得向他人表明您有权展示、使用、或其他有权处理美乐标识的行为。　[/color]\r\n\r\n[b][color=#ff6600][size=3]七 信息内容的所有权[/size][/color][/b]\r\n\r\n[color=#666666]1 本公司定义的信息内容包括：文字、软件、声音、相片、录像、图表；网页；广告中全部内容；本公司为用户提供的商业信息。所有这些内容受版权、商标权、和其它知识产权和所有权法律的保护。所以，用户只能在本公司和相关权利人授权下才能使用这些内容，而不能擅自使用、抄袭、复制、修改、编撰这些内容、或创造与内容有关的衍生产品。[/color]\r\n\r\n[color=#666666]2 关于美乐提供的软件：您了解并同意，本服务及本服务所使用或提供之相关软件（以下简称“软件”）（但不包括两用户之间直接传递的资料）是由美乐公司拥有所有相关知识产权及其他法律保护之专有之知识产权（包括但不限于版权、商标权、专利权、及商业秘密）资料。若就某一具体软件存在单独的最终用户软件授权协议，您除应遵守本协议有关规定外，亦应遵守该软件授权协议。　除非您亦同意该软件授权协议，否则您不得安装或使用该软件。对于未提供单独的软件授权协议的软件，　除您应遵守本服务协议外，美乐公司或所有权人仅将为您个人提供可取消、不可转让、非专属的软件授权许可，　并仅为访问或使用本服务之目的而使用该软件。此外，在任何情况下，未经美乐明示授权，您均不得修改、出租、出借、出售、散布本软件之任何部份或全部，或据以制作衍生著作，或使用擅自修改后的软件，或进行还原工程、反向编译，或以其他方式发现原始编码，包括但不限於为了未经授权而使用本服务之目的。您同意将通过由美乐所提供的界面而非任何其他途径使用本服务。[/color]\r\n\r\n[b][color=#ff6600][size=3]八. 法律[/size][/color][/b]\r\n\r\n[color=#666666]1 本服务条款要与国家相关法律、法规一致，如发生服务条款与相关法律、法规条款有相抵触的内容，抵触部分以法律、法规条款为准。[/color]\r\n\r\n[b][color=#ff6600][size=3]九. 保障[/size][/color][/b]\r\n\r\n[color=#666666]1 用户同意保障和维护本公司全体成员的利益，负责支付由用户使用超出服务范围引起的一切费用（包括但不限于：律师费用、违反服务条款的损害补偿费用以及其它第三人使用用户的电脑、帐号和其它知识产权的追索费）。[/color]\r\n\r\n[color=#666666]2 用户须对违反国家法律规定及本服务条款所产生的一切后果承担法律责任。[/color]\r\n\r\n[b][color=#ff6600][size=3]十 美乐互动信誉平台会员制度[/size][/color][/b]\r\n\r\n[color=#666666]1.用户注册时应填写各项真实资料（姓名.QQ.电话及邮箱），如资料不真实出现任何问题官方都不予保护及处理。认证时请填写自己的淘宝大号掌柜名，填写错误官方不予修改。一旦发生任务纠纷，任务一方电话联系对方如发现其电话或QQ不真实，经官方核实将立即封停此帐号！[/color]\r\n\r\n[color=#666666]2.所有会员注册后，当积分达到100分后请立即到提现区填写真实的支付宝帐号与姓名绑定自己的提现支付宝帐号，防止他人盗号将存款提走。（请认真填写自己的真实支付宝名与真实姓名，填写错误不予修改），如出现帐号被人盗取存款被他人提现官方不负任何责任。[/color]\r\n\r\n[color=#666666]3.所有平台会员在平台应当互敬互爱，严禁言语辱骂，恐吓对方。[/color]\r\n\r\n[color=#666666]如有会员发生此的情况可向客服投诉对方。官方予以警告，如果情节严重官方将直接封停此帐号！[/color]\r\n\r\n[color=#666666]4.严禁使用任何手段欺骗，恐吓等办法骗取其他会员资金或存款，如淘宝恶性退款包括但不仅限于一经发现立即封号！情节严重将移交公安部门处理并予以平台公示！[/color]\r\n\r\n[color=#666666]5.严禁通过旺旺联系对方并带有平台、联盟、信用、信誉等敏感字眼。[/color]\r\n\r\n[color=#666666]6.任何会员在做任务时严禁拖对方任务。（如遇特殊情况可QQ或电话联系对方）[/color]\r\n\r\n[color=#666666]7.如被投诉6次系统将自动封停此帐号，如须开通可联系官方人员罚款30元清空投诉记录并开通帐号。如出现乱投诉的情况将封停帐号，罚款10元解封。[/color]\r\n\r\n[color=#666666]8.如有任务投诉官方客服都会给您留言，如在三天内不上线与客服联系处理。将被视为默认放弃。客服将按对方所提供证据进行裁定。（请各位会员在下线时检查自己所有任务是否都已完成）[/color]\r\n\r\n[color=#666666]9.官方对任何已经完成的或超速操作的任务申诉不予任何受理。请各位会员认真对待自己的每一个任务，不要拿自己的金钱当作游戏。也不要图一时之快浪费更多的时间精力。[/color]\r\n\r\n[color=#666666]10.不允许发一个任务却让接手方拍淘宝多个连接或者同一产品连拍多件，任何形式的以一个任务骗取多个信誉的行为一经核实账号挂起，罚款10元解封。[/color]\r\n\r\n[color=#666666]11.严禁淘宝给对方中评，严禁乱写评语，恶意评语，淘宝投诉交易对方及广告评语等行为，一经发现立即封号，罚款30元解封。[/color]\r\n\r\n[color=#666666]12.禁止任何理由给对方差评，一经发现终身封停其帐号。[/color]\r\n\r\n[color=#666666]13.除官方明确规定可罚款解封的情况，其他封停帐号一律不退还存款及兔粮。[/color]\r\n\r\n[color=#666666]14.禁止帮他人发布任务，这样会导致您的朋友无法在美乐平台发布。平台监控程序如发现代发任务情况将该会对涉及到的平台帐号进行封号处理；[/color]\r\n\r\n[color=#666666]除遵守本制度外，其他平台公告制度同等有效，如平台其他制度与本制度重复，以本制度为最终依据。[/color]    ', '1357798361');
INSERT INTO `bf_sys_article` VALUES ('4', 'service', '1', '2', '客户服务', '[b]\r\n\r\n联系我们[/b]\r\n\r\n 服务类别 服务号码[td]服务时间[/td]简要说明[tr]客服热线 400-678-7788天×8小时 为您服务;\r\n周一～周五 9:30-17:30为保证服务质量,您拨打的服务热线有可能被录音[/tr][tr]客服QQ[b]业务一号：[/b]1341794 [url=tencent://message/?uin=1341794][img]http://wpa.qq.com/pa?p=1:373718549:17[/img][/url]\r\n\r\n[b]我们的承诺[/b]\r\n\r\n      1、我们承诺在任务生命周期全程照顾您我们将处理任务中的任何问题：支付问题、发货问题、货款确认、评价不符合要求等，这些在任务中可能遇到的问题将不再成为您愉快刷钻的阻挠。我们将确保您拥有美好的平台刷钻体验。 [/tr][tr][td]2、我们承诺为您提供公平、公正、透明的互动平台我们了解您希望掌握所有的细节和正确的资讯以确保舒适的提升信誉体验。我们为您提供一个公平、公正、透明的任务平台。在这个平台上，您合理、合法的权益将得到我们的支持。我们拥有强大的服务团队来帮助您顺利完成交易。[/td][/tr][tr][td]3、我们承诺提供给您的是真实的信息对于会员的评价信息，无论好的，还是坏的，我们都将公开展示。 [/td][/tr][tr][td]4、我们承诺在您需要的时候能够快捷地找到我们，我们始终在您身边：\r\nA．电话：6天×10小时 受理\r\nB．留言：48小时内答复\r\nC．申诉：7天内处理完毕\r\nD．问题及纠纷：30天内处理完毕 [/td][/tr][tr][td]5、我们承诺一心一意地为您提供舒适、满意的服务我们努力提供给您最满意的服务。任何一次的服务，我们会始终专注如一，热情如一。如果您在任意时间、任何原因,对服务不满意,您可以通过拨打美乐的客服热线075521500513，反馈您的问题，我们承诺在24小时之内给您答复；您也可以通过留言向我们反馈，我们承诺48小时内给您回复。 [/td][/tr][tr][td]6、我们承诺用公平公正地态度处理您的任务纠纷，保障您在刷钻过程中的权益任务过程中可能会发生任务纠纷，但是您不需要担忧，您只要告诉我们事实和提供支持这种事实的有效凭证，我们的座席代表，会做出最合理的判断，最大程度保护您的权利。[/td][/tr] ', '1357798464');
INSERT INTO `bf_sys_article` VALUES ('5', 'aboutus', '1', '3', '关于我们', '[b]公司简介[/b]\r\n\r\n美乐网商联盟是2007年10月在深圳高新区注册的高新技术企业，注册资金50万人民币。自成立以来，凭借强大的技术实力和崭新的网业管理服务模式，为互联网服务商与用户间架起一座桥梁，有效解决用户在使用互联网服务商产品时，在技术、时间、操作经验上的不足而影响服务质量的瓶颈问题。为互联网行业深入广泛普及，创造更加有利的条件！ 　　\r\n美乐致力于为客户提供专业、周到、快捷的基于互联网业务的咨询、顾问、信托等服务。\r\n\r\n[b]我们的服务理念与目标\r\n\r\n服务理念：[/b]\r\n\r\n从创建伊始就致力于为网店提供免费，安全，快捷的信誉互助平台；秉承“开放，专业，高效，互助”的理念，通过开放的互动平台，使美乐网盟真正成为广大网商值得信赖的信誉伙伴；\r\n\r\n美乐网盟的出现将为广大新进网商提供一个短时间内免费提升信誉的快车道从而能够以最短的时间与前辈网店站在同一起跑线上，为广大新进商家提供一个以商品品质，服务质量为唯一决定因素的公平竞争的机会；\r\n\r\n[b]我们的目标：[/b]\r\n\r\n以100%专注，以人性化的管理，以专业领先的技术，打造国内最专业的网商信誉互动平台。使美乐网商联盟（[url=http://www.mei-le.com/]www.mei-le.com[/url]）早日成为所有网商的“信誉4S店”。\r\n\r\n[b]服务理念：[/b]\r\n\r\n客户就是价值 员工就是财富 创新就是未来 以满足商家需求为己任；\r\n\r\n在为广大网商打造更安全高效的信誉互动平台的同时，美乐网也全心营造和倡导互帮互助、轻松活泼的家庭式氛围。每位在美乐网互动的店主，不但能更迅速高效安全的提升信誉，而且交到更多朋友。\r\n\r\n　　秉承美乐一贯以来的服务理念，美乐网商联盟自设计伊始就始终以顾客需求至上为准绳，通过对海量的网络交易分析、调研，在倾听和挖掘了各种任务需求后，对任务流程进行了特别的优化和处理，不仅让发布方发布、管理和操作更加简易快捷；同时还做到了让接手方接手、监管、评价更加通畅。\r\n\r\n　　依托美乐庞大的客户群，基于其独有的技术和强大社区资源，美乐网盟突破性实现了网络交易和网络社区的无缝结合，以打造满足用户期望的体验式服务为宗旨，为庞大的中国互联网电子商务用户提供更贴心、更诚信的专属服务。\r\n\r\n“网商赚到钱，刷客得实惠”，美乐网盟必将会因为影响和改变众多网商创业历程而载入史册！\r\n\r\n[b]为什么要提升信誉以及C2C形式分析[/b]\r\n\r\n刚开了网店，是不是觉得自己的东西质量保证，价格再低廉还是因为信用低而无人问津？因为您缺少了一样东西--信誉度，现在卖家的信誉就像打广告，是为了提升自己的影响力，是吸引顾客的有效途径！想办法吸引顾客过来，用质量与服务留住顾客。在竞争日益激烈的网络市场，信誉是保证生意日益增多的唯一途径，没有信誉度是没有发展的！说的直白点，你没有信誉度，买家看都懒得看！现在所有的C2C平台基本都是按卖家信誉排名的规则，使信誉度又身价倍增。那么多的名品店每天的交易那么多，其实近乎90%以上的商家在开店之初都有自行提升过信誉，靠着这些信誉再慢慢提高订单量的，你可以说这样的做法是卑鄙的，是不敬业的行为，但能赚钱就是真本领，能留得住客户才是真品质，为了所谓的“敬业”，你还在电子商务的谷底慢慢往上爬吗？你是不是也想要自己的生意和信用稳步提升呢？那就赶快开始快速提升您网店信誉吧！\r\n\r\n[font=宋体]然而信用增长目前分[/font]2[font=宋体]种趋势。一种平台提升，一种群互买。这样给了很多骗子机会，相信也有些卖家是受害者。当然也有部分非常不错的团队，而且前两种已经满足不了当前的趋势，所以必须出现第[/font]3[font=宋体]种来取代。互动平台是一种目前来说是最安全的平台[/font].[font=宋体]其优点克服了前两种方式的不足[/font]\r\n\r\n[b]美乐网商联盟有什么优势[/b]\r\n\r\n我们根据目前的实际情况, 汇聚天下 博采众长.分析了各个平台的优点以及结合我们近几年来对电子商务平台的了解.经过一年多的策划,成立了美乐网商联盟.同时我们开发部将不段的同各位商家共同学习进步.进一步调整平台的各方面的性能,以满足商家的需求.同时我们将开发更多的服务，免费提供各位商家。 　　\r\n\r\n当前公司推出的网商管家信托平台，是专为淘宝、拍拍、有啊等店主互动提升信用所开发的全自动互动操作平台，以完全创新的理念结合实际出发，打破了传统互动模式的不规范不安全问题，传统的信誉互动方式，本质对广大店家存在很高的风险，而网商管家为广大店主提供了一个能让大家更安全更放心互动的平台，用户的每一次交易都会在我们提供的平台严格担保流程规控下安全进行。全国卖家互动IP，确保你的每一点信用都是真实交易累积。\r\n\r\n[b]美乐平台的优点：[/b]\r\n\r\n1）平台完全免费,操作简单方便，人性化的管理系统。\r\n\r\n2）提升速度自行控制，想升就升，可以边做生意边维护信誉，也避免交易量猛增与猛减\r\n\r\n3）全国各地IP购买您商品，时间自己控制，完全模拟真实交易。\r\n\r\n4）资金第三方保证金担保，需要多少充多少。随时可以提现，将钱转自己账号中。\r\n\r\n5）让您免去被任务对方诈骗的可能性，所以完全符合实物互动的可行性，安全系数达到了100%\r\n\r\n6）7*12小时的免费在线咨询，让您在平台中遇到的问题快速解决。\r\n\r\n7）全国服务热线：[color=#0162f4][b]13982017238[/b][/color]   ', '1357798514');
INSERT INTO `bf_sys_article` VALUES ('6', 'sol', '1', '4', '法律声明', '[b]法律声明[/b][color=#666666]\r\n \r\n 美乐网商联盟（以下简称美乐网）提醒您：在使用美乐网各项服务前，请您务必仔细阅读并透彻理解本声明。您可以选择不使用美乐网，但如果您使用美乐网，您的使用行为将被视为对本声明全部内容的认可。\r\n \r\n 鉴于美乐网提供的服务属于电子公告牌（BBS）服务，美乐网上关于美乐（meile）会员或其发布的相关商品（包括但不限于店铺名称、公司名称、 联系人及联络信息，产品的描述和说明，相关图片、视讯等）的信息均由会员自行提供，会员依法应对其提供的任何信息承担全部责任。\r\n \r\n 美乐网尊重并保护所有使用美乐网用户的个人隐私权，您注册的用户名、电子邮件地址、联系电话等个人资料，非经您亲自许可或根据相关法律、法规的强制性规定，美乐网不会主动地泄露给第三方（因政府执法部门、国家司法部门要求除外）。美乐网提醒您：您在使用美乐网提供的搜索服务时输入的关键字将不被认为是您的个人隐私资料。\r\n \r\n 任何单位或个人认为美乐网网页内容（包括但不限于美乐网会员发布的商品信息）可能涉嫌侵犯其信息网络传播权，应该及时向美乐网提出书面权利通知，并提供身份证明、权属证明、具体链接（URL）及详细侵权情况证明。美乐网在收到上述法律文件后，将会依法尽快移除相关涉嫌侵权的内容。[/color]   ', '1357798547');
INSERT INTO `bf_sys_article` VALUES ('7', 'copyright', '1', '5', '知识产权', '[b]知识产权声明[/b][color=#666666]\r\n美乐网拥有本网站内所有信息内容（除美乐网会员发布的任务信息外，包括但不限于文字、图片、软件、音频、视频）的版权。\r\n[/color][color=#666666]\r\n任何被授权的浏览、复制、打印和传播属于本网站内信息内容都不得用于商业目的且所有信息内容及其任何部分的使用都必须包括此版权声明；\r\n[/color][color=#666666]美乐网（[b][url=http://www.mei-le.com/][color=#3366ff]www.mei-le.com[/color][/url][/b]）所有的产品、技术与所有程序均属于美乐网知识产权。“[/color][color=#666666]”、 “美乐网商联盟”、 “美乐网盟”、“美乐网”、“meile”等美乐网其他产品服务名称及相关图形、标识等为美乐网的注册商标。未经美乐网许可，任何人不得擅自（包括但不限于：以非法的方式复制、传播、展示、镜像、上载、下载）使用。否则，美乐网将依法追究法律责任。[/color]   ', '1357798578');
INSERT INTO `bf_sys_article` VALUES ('8', 'duty', '1', '6', '免责声明', '[color=#ff6600][b]免责声明[/b][/color][color=#666666]\r\n  鉴于美乐网提供的服务属于电子公告牌（BBS）服务，美乐网上关于美乐（360sxy.com）会员或其发布的相关任务（包括但不限于任务掌柜名称、任务商品地址、好评要求、联系人及联络信息，任务的描述和说明，相关图片、链接等）的信息均由会员自行提供，会员依法应对其提供的任何信息承担全部责任。美乐网对此等信息的准确性、完整性、合法性或真实性均不承担任何责任。此外，美乐网对任何使用或提供本网站信息的商业活动及其风险不承担任何责任。\r\n\r\n您应该对使用美乐网提供的服务结果自行承担风险。美乐网不做任何形式的保证：不保证服务一定满足您的要求，不保证服务不中断，不保证交易结果的安全性、正确性、及时性、合法性（但上述情况可以通过美乐网相关规则进行相应处理）。因网络状况、通讯线路、第三方网站等任何原因而导致您不能正常使用美乐网服务，美乐网不承担任何法律责任。 \r\n\r\n任何单位或个人认为美乐网网页内容（包括但不限于美乐网会员发布的商品信息）可能涉嫌侵犯其信息网络传播权，应该及时向美乐网提出书面权利通知，并提供身份证明、权属证明、具体链接（URL）及详细侵权情况证明。美乐网在收到上述法律文件后，将会依法尽快移除相关涉嫌侵权的内容。在此情况下，美乐网依法不承担任何责任。\r\n\r\n美乐网转载作品（包括论坛内容）出于传递更多信息之目的，并不意味美乐网（包括美乐网关联企业）赞同其观点或证实其内容的真实性。由于地址不明等原因，美乐网使用部分文字、摄影作品报酬未能及时支付，在此深表歉意，相关权利人可与中华版权代理中心联系协助解决。\r\n[/color][color=#ff6600][b]具体措施和步骤如下[/b][/color][color=#666666]\r\n[b]权利通知[/b] \r\n任何个人或单位如果同时符合以下条件： 是某一作品的著作权人和/或依法可以行使著作权的权利人； \r\n请上述个人或单位务必以书面的通讯方式向美乐提交权利通知。 \r\n请注意：如果权利通知的陈述失实，权利通知提交者将承担对由此造成的全部法律责任（包括但不限于赔偿各种费用及律师费）。如果上述个人或单位不确定网络上可获取的资料是否侵犯了其著作权，美乐建议该个人或单位首先咨询专业人士。 \r\n\r\n为了美乐有效处理上述个人或单位的权利通知，请使用以下格式（包括各条款的序号）： \r\n\r\n　　1. 权利人对涉嫌侵权内容拥有著作权和/或依法可以行使著作权的权属证明；\r\n　　2. 请充分、明确地描述确信被侵犯了著作权的作品并请提供非法登载该作品的第三方网址。\r\n　　3. 请指明涉嫌侵权网页的哪些内容侵犯了第2项中列明的作品的著作权。\r\n　　4. 请提供权利人具体的联络信息，包括姓名、身份证或护照复印件（对自然人）、单位登记证明\r\n　　　 复印件（对单位）、通信地址、电话号码、传真和电子邮件。\r\n　　5. 请提供涉嫌侵权内容在信息网络上的位置（如指明您举报的含有侵权内容的出处，即：指网页地址或\r\n　　　 网页内的位置）以便我们与您举报的含有侵权内容的网页的所有权人/管理人联系。\r\n　　6. 请在权利通知中加入如下关于通知内容真实性的声明：\r\n　　　“（1）我本人为该作品的著作权人和/或依法可以行使著作权的合法权利人；\r\n　　　　（2）在我举报的第三方网页上登载的内容侵犯了本人相应的著作权。\r\n　　　　（3）本人确认：如果本权利通知内容不完全属实，本人将承担由此产生的一切法律责任。”\r\n　　7. 请在权利通知中加入以下陈述：“我保证，本通知中所述信息是充分、真实、准确的，我是该作品\r\n　　　 的著作权人，或，我已获授权，有权行使第2项中列明作品的著作权。”\r\n　　8. 请您签署该文件，如果您是依法成立的机构或组织，请您加盖公章。 \r\n\r\n请您把以上资料和联络方式书面发往以下地址：\r\n四川省成都市青羊区四屏路1号金沙蜜地1单元2218室\r\n中华版权代理中心\r\n邮政编码：610072 \r\n或，电子邮件：[email=hotdogwindows@hotmail.com][color=#3366ff]hotdogwindows@hotmail.com[/color][/email]\r\n\r\n[/color][b][color=#666666]反通知[/color][/b][color=#666666]\r\n美乐根据前述通知移除相关内容或链接的，被移除内容的内容提供者或被移除链接的网站的所有权人/管理人可以依法向美乐发出关于被移除内容不侵犯著作权的反通知。反通知发出后，美乐可以恢复被移除的内容或链接，且依法对该恢复行为不承担法律责任。\r\n\r\n请您务必以书面（传真或邮寄信件）的通讯方式向我们提交“反通知”（除非有事先经美乐同意，请勿使用电子邮件方式提交通知）。请注意：如果您“反通知”的陈述失实，您将承担对由此造成的全部法律责任（包括但不限于赔偿各种费用及律师费）。如果您不确定网络上可获取的资料是否侵犯了他人的权利，我们建议您首先咨询专业人士。\r\n\r\n为了便于我们处理您的反对通知，请使用以下格式（包括各条款的序号）：\r\n\r\n　　1. 请指明被美乐移除的信息或内容及其网址。\r\n　　2. 被移除内容的合法性证明，包括但不限于您对已移除的内容拥有著作权的权属证明或您可以合法使用\r\n　　　 该作品的证明。\r\n　　3. 请提供具体的联络信息， 包括姓名、身份证或护照复印件（对自然人）、单位登记证明复印件\r\n　　　 （对单位）、通信地址、电话号码、传真和电子邮件。\r\n　　4. 请在反通知中加入如下关于反通知内容真实性的声明：\r\n　　　“（1）我本人为该作品的著作权人和/或被授权或依法可以使用该作品的权利人；\r\n　　　　（2）我有权或已获授权提供或刊登上述被移除的信息或内容。\r\n　　　　（3）本人确认：如果本“反通知”内容不完全属实，本人将承担由此产生的一切法律责任。”\r\n　　5. 请在反通知中加入以下陈述：“我保证，本反通知中所述信息是充分、真实、准确的，我是该\r\n　　　 作品的著作权人，或我已获授权或依法可以使用第2项中列明作品。”\r\n　　6. 请您签署该文件，如果您是依法成立的机构或组织，请您加盖公章。\r\n\r\n电子邮件：[email=hotdogwindows@hotmail.com][color=#3366ff]hotdogwindows@hotmail.com[/color][/email]\r\n[/color]', '1357798651');
INSERT INTO `bf_sys_article` VALUES ('9', 'private', '1', '7', '隐私保护', '[color=#666666]  百服网非常重视对您隐私的保护，在您使用百服网提供的服务前，请您仔细阅读以下声明。为了给您提供更准确、更有个性化的服务，百服网可能会以如下方式，使用您提交的个人信息。但百服网会以高度的勤勉、审慎义务对待这些信息，您注册的用户名、电子邮件地址等个人资料，非经您亲自许可或根据相关法律、法规的强制性规定，百服网不会主动地泄露给第三方（因政府执法部门、国家司法部门要求除外）。百服网提醒您：您在使用百服网提供的搜索服务时输入的关键字将不被认为是您的个人隐私资料。。百服搜集的信息通常仅限于您的姓名、性别、年龄、出生日期、身份证号、家庭住址、教育程度、兴趣爱好等。\r\n\r\n[/color][color=#ff6600][b]保有您提供的信息[/b][/color][color=#666666]\r\n百服网会在您自愿选择服务或提供信息的情况下收集您的个人信息，并将这些信息进行整合，以便向您提供更好的用户服务。请您在注册时及时、详尽及准确的提供个人资料，并不断更新注册资料，符合及时、详尽准确的要求。如果因注册信息不真实而导致的问题，由您自行承担相应的后果。请您不要将您的帐号、密码转让或出借予他人使用。如您发现您的帐号遭他人非法使用，应立即通知百服网。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，百服网不承担责任。\r\n\r\n[/color][color=#ff6600][b]Cookies等技术的使用[/b][/color][color=#666666]\r\n百服网使用cookies，以便您能登录我们的服务，并允许设定您特定的服务选项。运用cookies技术，百服网能够为您提供更加周到的个性化服务。您可以选择接受或拒绝 cookies。您可以通过修改浏览器设置的方式拒绝cookies。如果您选择拒绝cookies，则您可能无法登录或使用依赖于cookies 的百服网服务或功能。\r\n\r\n[/color][color=#ff6600][b]保有您的使用记录[/b][/color][color=#666666]\r\n当您使用百服网提供的服务时，服务器会自动记录一些信息，包括URL、IP地址、浏览器的类型和使用的语言以及访问日期和时间等。 \r\n在如下情况下，百服网会根据您的意愿或法律的规定披露您的个人信息，由此引发的问题将由您个人承担：\r\n（1）事先获得您的授权；\r\n（2）只有透露您的个人资料，才能提供您所要求的产品和服务；\r\n（3）根据有关的法律法规要求；\r\n（4）按照相关政府主管部门的要求；\r\n（5）为维护百服网的合法权益。\r\n（6）您同意让第三方共享资料。\r\n（7）我们发现您违反了百服网服务协议或相关规则，根据协议约定或相关规则规定应当披露您的个人信息。\r\n（8）我们需要向代表我们提供产品或服务的公司提供资料（除非我们另行通知你，否则这些公司无权使用你的身份识别资料）。 \r\n百服网盟会始终致力于在充分保护您隐私的前提下，为您提供更优质的体验和服务。[/color] ', '1300264648');
INSERT INTO `bf_sys_article` VALUES ('10', 'cooperate', '1', '8', '广告合作', '[b][color=#ff6600][size=4]广告合作[/size][/color][/b][color=#666666]\r\n\r\n美乐黄金广告位招商中，欢迎各位朋友，各位广告主 前来投放。 您的投放 是对美乐的支持，同时您也会获得绝对意想不到的广告效果。美乐用户含金量极高，全部皆为商业人士。投放美乐广告，让您的的产品在一瞬间 让更多的人知道。[/color]\r\n\r\n[color=#666666]\r\n[b]广告位购买联系人[/b][/color]\r\n\r\n [color=#666666]联系部门：[/color][td][color=#666666]美乐广告部[/color][/td][tr][td][color=#666666]邮箱：[/color][/td][td][color=#666666][b][color=#3366ff][email=hotdogwindows@hotmail.com][color=#3366ff]hotdogwindows@hotmail.com[/color][/email][/color][/b][/color][/td][/tr][tr][td][color=#666666]QQ:1341794[/color][/td][td]\r\n[color=#666666][b]广告位报价[/b][/color]\r\n\r\n [color=#666666]a1 全站底部 15个字文字广告 100元/月[/color][/td][/tr][tr][td][color=#666666]图例[/color][/td][/tr][tr][td][color=#666666]a2 全站右侧 图片广告115x150 600元/月[/color][/td][/tr][tr][td][color=#666666]图例[/color][/td][/tr][tr][td][color=#666666]a3 淘宝刷钻区刷新提示 15个字文字广告 200元/月[/color][/td][/tr][tr][td][color=#666666]图例[/color][/td][/tr][tr][td][color=#666666]a4 淘宝区填写买号下 15个字文字广告 200元/月[/color][/td][/tr][tr][td][color=#666666]图例[/color][/td][/tr][tr][td][color=#666666]a5 论坛所有帖子1楼 120x80图片广告 150元/月[/color][/td][/tr][tr][td][color=#666666]图例[/color][/td][/tr]\r\n\r\n[color=#666666]更多广告位置，正在更新，如果您有意向的广告位置，请联系广告部洽谈投放。\r\n\r\n[/color][b][color=#ff6600][size=4]友情链接[/size][/color][/b][color=#666666]\r\n为了共同的发展，本站诚招各类友情链接。要求链接站必须有一定的访问量。与本站链接的网站必须无不良信息，无违反国家法律的信息。\r\n[/color]', '1357798713');
INSERT INTO `bf_sys_article` VALUES ('11', 'hr', '1', '9', '招贤纳士', '[color=#666666]美乐网讯科技有限公司是2009年10月在深圳高新区注册的高新技术企业，注册资金50万人民币。自成立以来，凭借强大的技术实力和崭新的网业管理服务模式，为互联网服务商与用户间架起一座桥梁，有效解决用户在使用互联网服务商产品时，在技术、时间、操作经验上的不足而影响服务质量的瓶颈问题。为互联网行业深入广泛普及，创造更加有利的条件！\r\n　美乐致力于为客户提供专业、周到、快捷的基于互联网业务的咨询、顾问、信托等服务。\r\n[b]我们的目标：[/b]\r\n以100%专注，以人性化的管理，以专业领先的技术，打造国内最专业的网商信誉互动平台。使美乐网商联盟（[url=http://www.mei-le.com]www.mei-le.com[/url]）早日成为所有网商的“信誉4S店”。\r\n[b]服务理念[/b]：\r\n客户就是价值 员工就是财富 创新就是未来 以满足商家需求为己任；\r\n在为广大网商打造更安全高效的信誉互动平台的同时，美乐网也全心营造和倡导互帮互助、轻松活泼的家庭式氛围。每位在美乐网互动的店主，不但能更迅速高效安全的提升信誉，而且交到更多朋友。\r\n　　秉承美乐一贯以来的服务理念，美乐网商联盟自设计伊始就始终以刷客需求至上为准绳，通过对海量的网络交易分析、调研，在倾听和挖掘了各种任务需求后，对任务流程进行了特别的优化和处理，不仅让发布方发布、管理和操作更加简易快捷；同时还做到了让接手方接手、监管、评价更加通畅。\r\n　　依托美乐庞大的客户群，基于其独有的技术和强大社区资源，美乐网盟突破性实现了网络交易和网络社区的无缝结合，以打造满足用户期望的体验式服务为宗旨，为庞大的中国互联网电子商务用户提供更贴心、更诚信的专属服务。\r\n“网商赚到钱，刷客得实惠”，美乐网盟必将会因为影响和改变众多网商创业历程而载入史册！\r\n\r\n一个服务于平台的团队，美乐网商联盟期待您的加入！\r\n我们心中充满对非凡成就的渴望，\r\n我们钦佩出色的精英，\r\n你心中也充满对激情事业的渴望？\r\n加入我们，成就非凡事业！\r\n\r\n此时此刻，非你莫属! [/color]\r\n\r\n[color=#666666]\r\n[b]应聘说明：[/b]\r\n1.有意应聘者请发EMAIL至 [/color][color=#3366ff][email=hiwinwin@163.com?subject=应聘美乐职位][color=#3366ff]hotdogwindows@hotmailcom[/color][/email][/color][color=#666666] 合则约见！\r\n2.请注明&quot;应聘XXX职位&quot;，请用文本格式，不要附件带WORD等文件\r\n3.请提交至少一份中文的个人简历，可附带待遇要求工作经验等详细信息以及免冠近照一张。\r\n4.如无具体说明，以下职位不限学历。\r\n5. 所有投递简历者合则约见,若1个月之内没有回复,您的简历将被存入公司人才库,谢谢! [/color]\r\n\r\n [b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#网页设计师，网页美工][color=#3366ff]网页设计师，网页美工[/color][/url][/color][/b][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#网络推广专员][color=#3366ff]网络推广专员[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#兼职网站推广专员][color=#3366ff]兼职网站推广专员[/color][/url][/color][/b][/td][tr][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#客户服务专员][color=#3366ff]客户服务专员[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#.net 高级工程师][color=#3366ff].net 高级工程师[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#系统工程师][color=#3366ff]系统工程师[/color][/url][/color][/b][/td][/tr][tr][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#资金流运营专员][color=#3366ff]资金流运营专员[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#用户体验分析师][color=#3366ff]用户体验分析师[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#广告销售经理][color=#3366ff]广告销售经理[/color][/url][/color][/b][/td][/tr][tr][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#前端开发工程师][color=#3366ff]前端开发工程师[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#网络工程师][color=#3366ff]网络工程师[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#资深平台架构设计师][color=#3366ff]资深平台架构设计师[/color][/url][/color][/b][/td][/tr][tr][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#资深平台架构设计师][color=#3366ff]数据库开发工程师[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#资深品牌推广专员][color=#3366ff]资深品牌推广专员[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#Java开发工程师][color=#3366ff]Java开发工程师[/color][/url][/color][/b][/td][/tr][tr][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#数据仓库工程师][color=#3366ff]数据仓库工程师[/color][/url][/color][/b][/td][td][b][color=#3366ff][url=http://www.100fu.cc/Info.aspx?ename=hr#资深会计][color=#3366ff]资深会计[/color][/url][/color][/b][/td][td]　[/td][/tr]\r\n\r\n　\r\n\r\n [b][color=#3366ff][font=宋体] 网页设计师，网页美工[/font][/color][/b][tr][td][color=#666666][font=宋体]招聘要求：[/font][/color] \r\n\r\n[color=#666666][font=宋体]1：精通Photoshop、Dreamweaver、Fireworks、Flash等相关图形设计软件；\r\n2：精通HTML、CSS代码，掌握Java Script应用；\r\n3：一年以上网页制作实际工作经验优先。\r\n招聘人数：2人\r\n　[/font][/color]\r\n\r\n[/td][/tr][tr][td][b][color=#3366ff][font=宋体]¤[/font][font=宋体] 网络推广专员[/font][/color][/b][/td][/tr][tr][td][color=#666666][font=宋体]发布日期：[/font][font=宋体]工作地点：[/font][font=宋体] [/font][font=宋体]深圳市[/font][font=宋体] [/font][font=宋体]招聘人数：[/font][font=宋体] 2 [/font][font=宋体]工作年限：[/font][font=宋体] [/font][font=宋体]一年以上[/font][font=宋体] [/font][/color]\r\n\r\n[color=#666666][font=宋体]学历：[/font][font=宋体] [/font][font=宋体]大专[/font][font=宋体] [/font][/color]\r\n\r\n[color=#666666][font=宋体]工作待遇：面议，（底薪[/font][font=宋体]+[/font][font=宋体]宣传效果提成）[/font][/color]\r\n\r\n[color=#666666][font=宋体]职位描述：[/font][/color]\r\n\r\n[color=#666666][font=宋体]1[/font][font=宋体]．做网络宣传、策划方面的工作，将美乐网盟通过互联网，推到一个新的高度，为众人所周知；[/font][/color]\r\n\r\n[color=#666666][font=宋体]2. [/font][font=宋体]将公司的经营模式清晰的传递给合作者或用户；[/font][/color]\r\n\r\n[color=#666666][font=宋体]3[/font][font=宋体]、策划、执行推广方案与推广活动，并逐一落实，达成目标；通过网络联盟推广、网站流量推广、网络社区推广、搜索引擎优化及推广、论坛、博客、[/font][font=宋体]SNS[/font][font=宋体]、网络发稿推广、邮件群发、[/font][font=宋体]QQ[/font][font=宋体]群推广、友情链接交换、网络广告置换等形式，进行品牌形象的传播、业务开拓和客户挖掘，提高公司产品和网站的用户量和知名度；[/font][/color]\r\n\r\n[color=#666666][font=宋体]4[/font][font=宋体]、负责管理公司网络推广团队，指导并提供团队成员网络推广能力和水平。[/font][/color]\r\n\r\n[color=#666666][font=宋体]5[/font][font=宋体]、维护与发展目标网络媒体与网络资源的关系，并建立长期稳定的合作关系；[/font][/color]\r\n\r\n[color=#666666][font=宋体]6[/font][font=宋体]、定期对网站流量、在线咨询数据进行分析，以及同行业网络信息收集分析，监测品牌的互联网口碑，及时做出反应；严格监控网站的推广效果，并根据推广效果提出调整建议；[/font][/color]\r\n\r\n[color=#666666][font=宋体]任职条件：[/font][/color]\r\n\r\n[color=#666666][font=宋体]1[/font][font=宋体]、新闻传播学、市场营销、网络营销、计算机或电子商务相关专业大专以上学历；[/font][/color]\r\n\r\n[color=#666666][font=宋体]2[/font][font=宋体]、两年以上网络市场、电子商务工作经验，具有丰富的网络推广实战经验，并有通过创造性及有效的线上市场实战证明市场推广的成果；能清晰表达出网络营销策划方案的技术实现；[/font][/color]\r\n\r\n[color=#666666][font=宋体]3[/font][font=宋体]、深刻理解搜索引擎，电子邮件，网络广告，赞助和投资回报率等方面的网络营销，具有组织、理性分析数据的能力，并会使用网站分析工具，对网站流量统计分析、跟踪广告投放及邮件群发有丰富经验，可以通过数据提出有价值的报告并执行；必须理解网络营销指标，例如[/font][font=宋体]CPA[/font][font=宋体]，[/font][font=宋体]CPC[/font][font=宋体]，[/font][font=宋体]CPM[/font][font=宋体]，[/font][font=宋体]CTR[/font][font=宋体]及转换率等；熟悉新闻门户、[/font][font=宋体]BBS[/font][font=宋体]、[/font][font=宋体]blog[/font][font=宋体]、视频、圈子、[/font][font=宋体]Mini-Site[/font][font=宋体]等网络传播手段、有丰富网络行业资源（如网站站长资源、网络联盟资源、网络媒体资源等）；[/font][font=宋体]B2C[/font][font=宋体]领域经验优先。[/font][/color]\r\n\r\n[color=#666666][font=宋体]4[/font][font=宋体]、优秀的文案设计及较强的文案撰写功底；有一定的策划和文字组织能力。[/font][/color]\r\n\r\n[color=#666666][font=宋体]5[/font][font=宋体]、关注互联网发展趋势，关注新的有特色的网站，具备快速准确的反应能力、敏锐的行业分析能力、较强的执行能力；[/font][/color]\r\n\r\n[color=#666666][font=宋体]6[/font][font=宋体]、有较强的自律性与承受能力，良好的沟通能力和协调能力，有团队合作精神；[/font][/color]\r\n\r\n[color=#666666][font=宋体]7. [/font][font=宋体]有一定的线上线下活动企划能力，积极主动，思维敏捷，逻辑清晰，奇思妙想，锐意创新；[/font][/color]\r\n\r\n[color=#666666][font=宋体]8. [/font][font=宋体]热爱网络营销推广工作，能独立开展工作。具备优秀的学习能力和较强的团队合作意识，诚实、守信、责任心强；[/font][/color] \r\n\r\n[size=2][font=宋体][url=http://www.100fu.cc/Info.aspx?ename=hr#top][color=#3366ff]\r\n[/color][/url][/font][/size]\r\n\r\n[/td][/tr][tr][td][b][color=#3366ff][font=宋体]¤[/font][font=宋体] 兼职网站推广专员[/font][/color][/b][/td][/tr][tr][td][color=#666666][font=宋体]任职要求：\r\n1. 专科及以上学历，专业不限，市场营销、公共关系、计算机等相关专业优先； \r\n2. 有网络平台如淘宝、易趣、拍拍等C2C网络销售推广经验；\r\n3. 熟悉互联网，熟悉了解社区、论坛，博客等各种网络营销、推广方式。每天保证一定的上网时间；\r\n4. 较强的文字功底，有一定的文字表达及数据分析能力，善于收集、整理文档；\r\n5. 敢于挑战自我，热爱网络推广工作，对电子商务发展有清晰的认识，有创新意识\r\n6. 可适应SOHO工作方式 \r\n\r\n工作内容：\r\n1． 负责所有与网络推广相关的工作，包括创意发布、维护、资料收集。利用线上市场活动推广公司网站，负责新的推广渠道和营销形式的开发。\r\n2． 不断开发新的论坛，对论坛帐号进行日常管理；\r\n3． 推广公司网络平台，吸引新用户关注，以及注册会员；\r\n4． 建立论坛资源数据库，对各大论坛属性、流量、活跃板块等进行统计汇总；\r\n5． 负责口碑话题的制作、发布、维护、监测及其口碑报表的制作。\r\n工作待遇：面议，（底薪+提成）\r\n　[/font][/color]\r\n\r\n[/td][/tr][tr][td][b][color=#3366ff][font=宋体]¤ 客户服务专员[/font][/color][/b][/td][/tr][tr][td]\r\n\r\n[color=#666666][font=宋体]发布日期：[/font][font=宋体] [/font][font=宋体]工作地点：深圳市[/font][font=宋体] [/font][/color]\r\n\r\n[color=#666666][font=宋体]招聘人数：若干[/font][font=宋体] [/font][font=宋体]学历：高中[/font][font=宋体] [/font][/color]\r\n\r\n[color=#666666][font=宋体]工作年限：不限[/font][font=宋体] [/font][font=宋体]外语要求：无[/font][font=宋体] [/font][/color]\r\n\r\n[color=#666666][font=宋体]岗位描述： \r\n1、主要负责我司自主创立的电子商务平台网站客服工作\r\n2、负责接听客户咨询热线、信息查询及疑难问题的解答工作； \r\n3、与客户在线交流，对于客户的咨询给予详细的解答和帮助；\r\n4、协助客户进行信息登记和操作，及时有效地协调及处理客户投诉与建议；\r\n5、网站数据信息准确录入及反馈，公司网站后台功能操作，保障网站功能正常运作；\r\n6、管理公司客户QQ群与论坛，收集整理用户对网站的反馈信息； \r\n7、以良好心态及时为网上客户提供优质的售后服务；维护良好的客户关系，掌握客户要求；\r\n8、协助运营部门其它工作人员完成团队目标及任务；\r\n9、领导交办的其他工作。\r\n\r\n工作待遇：底薪+提成\r\n\r\n岗位要求： \r\n1、高中/中专以上学历，18-35岁女性，有传呼台或电话呼叫中心或者客户服务工作经验者优先考虑； \r\n2、普通话标准，口齿伶俐，声音甜美，良好的口头表达能力、有一定的文字表达及数据分析能力，善于收集、整理文档和谈判能力；打字速度快，具备良好的沟通能力； \r\n3、有良好的服务意识，工作耐心细致；高度的责任心和全心为客户着想的服务意识，亲和力强，有耐心； \r\n4、性格开朗，能接受轮班工作制和承受较大的工作压力；有吃苦耐劳的敬业精神和创业精神，视公司事业为自己的事业来经营，且能够长期稳定工作至少一年以上；\r\n5、有团队合作精神。具有较强的沟通能力、逻辑思维能力和服务意识；工作诚恳热忱，细致耐心\r\n6、熟悉网络购物（淘宝、易趣、拍拍等C2C平台），熟悉电脑办公软件操作以及网络营销者优先考虑；\r\n7、学习能力强，较强的进取精神和认真负责的工作态度；敢于挑战自我，热爱客服工作，对电子商务发展有清晰的认识；\r\n　[/font][/color]\r\n\r\n[/td][/tr]', '1357798812');
INSERT INTO `bf_sys_article` VALUES ('12', 'map', '1', '10', '网站地图', '[align=center][b][color=#ff6600] 有任何疑问请您联系在线客服！[/color][/b][/align]', '1357798834');

-- ----------------------------
-- Table structure for `bf_sys_article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_sys_article_cate`;
CREATE TABLE `bf_sys_article_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_sys_article_cate
-- ----------------------------
INSERT INTO `bf_sys_article_cate` VALUES ('1', '1', '客户服务', '10');

-- ----------------------------
-- Table structure for `bf_sys_cfg_cate`
-- ----------------------------
DROP TABLE IF EXISTS `bf_sys_cfg_cate`;
CREATE TABLE `bf_sys_cfg_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_sys_cfg_cate
-- ----------------------------
INSERT INTO `bf_sys_cfg_cate` VALUES ('4', 'sys', '系统配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('5', 'reflow', '来路流量区配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('6', 'card', '点卡费用');
INSERT INTO `bf_sys_cfg_cate` VALUES ('7', 'exchange', '兑换比例配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('8', 'collect', '收藏任务区配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('9', 'ad_duilian', '对联广告');
INSERT INTO `bf_sys_cfg_cate` VALUES ('10', 'ad_line', '首页横幅广告');
INSERT INTO `bf_sys_cfg_cate` VALUES ('12', 'call', '数据调用');
INSERT INTO `bf_sys_cfg_cate` VALUES ('13', 'payment', '提现配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('16', 'email', '邮件发送内容配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('15', 'message', '短信发送内容配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('17', 'msgContent', '站内信内容模板');
INSERT INTO `bf_sys_cfg_cate` VALUES ('18', 'epCfg', '快递单号获取配置');
INSERT INTO `bf_sys_cfg_cate` VALUES ('19', 'store', '网店托管');

-- ----------------------------
-- Table structure for `bf_sys_cfg_list`
-- ----------------------------
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

-- ----------------------------
-- Records of bf_sys_cfg_list
-- ----------------------------
INSERT INTO `bf_sys_cfg_list` VALUES ('21', '4', 'reflow_vip_min', '1', '', 'text', '流量会员购买最少月数');
INSERT INTO `bf_sys_cfg_list` VALUES ('22', '4', 'reflow_vip_max', '99', '', 'text', '流量会员购买最大月数');
INSERT INTO `bf_sys_cfg_list` VALUES ('20', '4', 'reflow_vip_money', '10', '', 'text', '流量会员每月价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('23', '5', 'price_once', '0.31', '', 'text', '每次访问所需兔粮');
INSERT INTO `bf_sys_cfg_list` VALUES ('24', '5', 'tip', '', '', 'textarea', '说明提示');
INSERT INTO `bf_sys_cfg_list` VALUES ('25', '5', 'count_min', '10', '', 'text', '最小发布次数');
INSERT INTO `bf_sys_cfg_list` VALUES ('26', '5', 'count_default', '50', '', 'text', '默认访问次数');
INSERT INTO `bf_sys_cfg_list` VALUES ('27', '5', 'ip_count1', '3,0.1;10,0,1', '', 'text', '每天限制IP，格式：数量,价格,选中;数量,价格,选中...');
INSERT INTO `bf_sys_cfg_list` VALUES ('28', '5', 'ip_count2', '3,0.1;10,0,1', '', 'text', '每天限制IP，格式：数量,价格,选中;数量,价格,选中...');
INSERT INTO `bf_sys_cfg_list` VALUES ('29', '5', 'bidUp', '0.05;0.08', '', 'text', '竞价默认价格列表，用分号;隔开');
INSERT INTO `bf_sys_cfg_list` VALUES ('30', '5', 'tplSaveCount', '15', '', 'text', '模板保存最大数量');
INSERT INTO `bf_sys_cfg_list` VALUES ('31', '5', 'isIP', '1', '1=是\r\n2=否', 'radio', '是否强制限制IP');
INSERT INTO `bf_sys_cfg_list` VALUES ('32', '5', 'isLimit', '1', '1=是\r\n2=否', 'radio', '是否强制限制接手人');
INSERT INTO `bf_sys_cfg_list` VALUES ('33', '5', 'isRate', '1', '1=是\r\n2=否', 'radio', '是否强制限制来路访问频率');
INSERT INTO `bf_sys_cfg_list` VALUES ('34', '5', 'price_once_vip', '0.3', '', 'text', '每次所需兔粮(流量VIP)');
INSERT INTO `bf_sys_cfg_list` VALUES ('35', '5', 'price_planDate', '0.1', '', 'text', '计划发布时间收取兔粮');
INSERT INTO `bf_sys_cfg_list` VALUES ('36', '5', 'count_max', '200', '', 'text', '来路次数最大值');
INSERT INTO `bf_sys_cfg_list` VALUES ('37', '5', 'minute_min', '0', '', 'text', '来路频率最小值');
INSERT INTO `bf_sys_cfg_list` VALUES ('38', '5', 'minute_max', '30', '', 'text', '来路频率最大值');
INSERT INTO `bf_sys_cfg_list` VALUES ('39', '5', 'buyer_max', '5', '', 'text', '同时接手任务的最大数');
INSERT INTO `bf_sys_cfg_list` VALUES ('40', '5', 'check_error', '4', '', 'text', '第一验证错误X次锁定任务，0为不锁定');
INSERT INTO `bf_sys_cfg_list` VALUES ('41', '5', 'payfor_count', '100', '', 'text', '最少多少个才能结算');
INSERT INTO `bf_sys_cfg_list` VALUES ('42', '5', 'price_pay_one', '0.3', '', 'text', '每个任务结算多少个兔粮');
INSERT INTO `bf_sys_cfg_list` VALUES ('43', '4', 'reflow_vip_money_list', '1,10,1;3,28;6,48;12,98', '', 'text', '流量会员月数选择，月数,价格,是否选中;.......');
INSERT INTO `bf_sys_cfg_list` VALUES ('44', '5', 'time_expire', '1800', '', 'text', '任务超时退出时间，单位：秒');
INSERT INTO `bf_sys_cfg_list` VALUES ('45', '4', 'reflow_vip_tip', '（注）如自动充值未成功，请联系客服！', '', 'text', '加入VIP页面提示');
INSERT INTO `bf_sys_cfg_list` VALUES ('46', '5', 'bidUp_min', '0.01', '', 'text', '竞价自定义兔粮最小');
INSERT INTO `bf_sys_cfg_list` VALUES ('47', '5', 'bidUp_max', '1', '', 'text', '竞价自定义兔粮最大');
INSERT INTO `bf_sys_cfg_list` VALUES ('48', '6', 'card1', '0.2', '', 'text', '单次兔粮卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('49', '6', 'card2', '0.01', '', 'text', '单次流量点卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('50', '6', 'card3', '155', '', 'text', '单钻信托卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('51', '6', 'card4', '305', '', 'text', '双钻信托卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('52', '6', 'card5', '590', '', 'text', '三钻信托卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('53', '6', 'card6', '1140', '', 'text', '四钻信托卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('54', '6', 'card7', '2750', '', 'text', '五钻信托卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('55', '6', 'card8', '5400', '', 'text', '至尊皇冠卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('56', '6', 'card9', '3', '', 'text', '24小时双倍积分卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('57', '6', 'card10', '16', '', 'text', '双倍积分周卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('58', '6', 'card11', '0.2', '', 'text', '预定任务次卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('59', '6', 'card12', '5', '', 'text', '至尊VIP体验卡');
INSERT INTO `bf_sys_cfg_list` VALUES ('60', '7', 'point_user', '0.1', '', 'text', '兔粮兑换亏损(普通用户)');
INSERT INTO `bf_sys_cfg_list` VALUES ('61', '7', 'point_vip', '0.05', '', 'text', '兔粮兑换亏损(尊贵VIP)');
INSERT INTO `bf_sys_cfg_list` VALUES ('62', '7', 'point_vip2', '0.08', '', 'text', '兔粮兑换亏损(信托VIP)');
INSERT INTO `bf_sys_cfg_list` VALUES ('63', '7', 'credit_min', '1000', '', 'text', '积分兑换兔粮(最小分数)');
INSERT INTO `bf_sys_cfg_list` VALUES ('64', '7', 'credit_point', '300', '', 'text', '积分兑换兔粮(多少积分兑换一个兔粮)');
INSERT INTO `bf_sys_cfg_list` VALUES ('65', '7', 'money_point', '0.1', '', 'text', '每个兔粮兑换多少元');
INSERT INTO `bf_sys_cfg_list` VALUES ('66', '4', 'tie_alipay_count', '3', '', 'text', '支付宝允许绑定个数');
INSERT INTO `bf_sys_cfg_list` VALUES ('67', '4', 'sys_logout', '1800', '', 'text', '用户登录超时时间，单位秒');
INSERT INTO `bf_sys_cfg_list` VALUES ('68', '4', 'vip_money_list', '1,30,1;3,78;6,138;12,248', '', 'text', '会员月数选择，月数,价格,是否选中;.......');
INSERT INTO `bf_sys_cfg_list` VALUES ('69', '4', 'vip_money', '30', '', 'text', '会员每月价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('70', '4', 'point_get', '0.85', '', 'text', '普通会员兔粮比例');
INSERT INTO `bf_sys_cfg_list` VALUES ('71', '4', 'point_get_vip', '0.9', '', 'text', 'VIP接任务所得兔粮比例');
INSERT INTO `bf_sys_cfg_list` VALUES ('72', '4', 'point_reword', '10', '', 'text', '推广奖励兔粮个数');
INSERT INTO `bf_sys_cfg_list` VALUES ('73', '4', 'buyer_level_list', '3,0.5,1;4,1;5,1.5', '', 'text', '星级买号星级列表，分号隔开，3,0.5,1;4,1;5,1.5');
INSERT INTO `bf_sys_cfg_list` VALUES ('74', '4', 'buyer_level_count', '3:3,15,60;4:2,10,40;5:1,5,20', '', 'text', '星级买号个数限制，星级:每日个数,每周,每月;.....');
INSERT INTO `bf_sys_cfg_list` VALUES ('75', '8', 'cg_min', '100', '', 'text', '最小兑换数量');
INSERT INTO `bf_sys_cfg_list` VALUES ('76', '8', 'cg_one_point', '0.09', '', 'text', '每个兑换多少兔粮');
INSERT INTO `bf_sys_cfg_list` VALUES ('77', '4', 'point_task_del', '0.1', '', 'text', '任务退出扣点');
INSERT INTO `bf_sys_cfg_list` VALUES ('78', '9', 'openLeft', '1', '1=是\r\n0=否', 'select', '左侧广告是否显示');
INSERT INTO `bf_sys_cfg_list` VALUES ('79', '9', 'openRight', '1', '1=是\r\n0=否', 'select', '右侧广告是否显示');
INSERT INTO `bf_sys_cfg_list` VALUES ('80', '9', 'leftPic', 'img/cfg/ad_duilian/1621.jpg', 'width=100\r\nheight=200', 'image', '左侧图片');
INSERT INTO `bf_sys_cfg_list` VALUES ('81', '9', 'rightPic', 'img/cfg/ad_duilian/1641.jpg', 'width=100\r\nheight=200', 'image', '右侧图片');
INSERT INTO `bf_sys_cfg_list` VALUES ('82', '9', 'leftUrl', 'http://www.my.com/', '', 'text', '左侧对应链接');
INSERT INTO `bf_sys_cfg_list` VALUES ('83', '9', 'rightUrl', '', '', 'text', '右侧对应链接');
INSERT INTO `bf_sys_cfg_list` VALUES ('84', '10', 'status', '0', '1=是\r\n0=否', 'radio', '是否显示');
INSERT INTO `bf_sys_cfg_list` VALUES ('85', '10', 'pic', 'img/cfg/ad_line/1A41.jpg', 'width=950\r\nheight=60', 'image', '广告图片');
INSERT INTO `bf_sys_cfg_list` VALUES ('86', '10', 'url', 'http://www.baidu.com/', '', 'text', '广告链接');
INSERT INTO `bf_sys_cfg_list` VALUES ('88', '12', 'express', '6', '', 'text', '快递软件');
INSERT INTO `bf_sys_cfg_list` VALUES ('89', '13', 'taobaoMinMoney', '500', '', 'text', '淘宝提现最小额度');
INSERT INTO `bf_sys_cfg_list` VALUES ('90', '13', 'taobaoSXF', '0', '', 'text', '淘宝提现手续费比率');
INSERT INTO `bf_sys_cfg_list` VALUES ('91', '13', 'alipayMinMoney', '200', '', 'text', '支付宝提现最小额度');
INSERT INTO `bf_sys_cfg_list` VALUES ('92', '13', 'alipaySXF', '0.015', '', 'text', '支付宝提现手续费比率');
INSERT INTO `bf_sys_cfg_list` VALUES ('93', '13', 'taobaoStatus', '1', '1=是\r\n0=否', 'radio', '淘宝提现是否启用');
INSERT INTO `bf_sys_cfg_list` VALUES ('94', '13', 'alipayStatus', '1', '1=是\r\n0=否', 'radio', '支付宝提现是否启用');
INSERT INTO `bf_sys_cfg_list` VALUES ('95', '13', 'vipCount', '3', '', 'text', '会员每日提现次数');
INSERT INTO `bf_sys_cfg_list` VALUES ('96', '13', 'vip2Count', '2', '', 'text', '信托会员每日提现次数');
INSERT INTO `bf_sys_cfg_list` VALUES ('97', '13', 'memberCount', '1', '', 'text', '普通会员每日提现次数');
INSERT INTO `bf_sys_cfg_list` VALUES ('98', '13', 'vipMaxMoney', '6000', '', 'text', '会员每日提现最大额度');
INSERT INTO `bf_sys_cfg_list` VALUES ('99', '13', 'vip2MaxMoney', '3000', '', 'text', '信托会员每日提现最大额度');
INSERT INTO `bf_sys_cfg_list` VALUES ('100', '13', 'memberMaxMoney', '2000', '', 'text', '普通会员每日提现最大额度');
INSERT INTO `bf_sys_cfg_list` VALUES ('101', '13', 'bankType', '工商银行,中国工商银行;农业银行,中国农业银行,1', '工商银行=工商银行\r\n农业银行=农业银行', 'textarea', '提现银行类型');
INSERT INTO `bf_sys_cfg_list` VALUES ('102', '13', 'bankMinMoney', '200', '', 'text', '银行卡提现最小额度');
INSERT INTO `bf_sys_cfg_list` VALUES ('103', '13', 'bankSXF', '0.005', '', 'text', '银行卡提现手续费');
INSERT INTO `bf_sys_cfg_list` VALUES ('104', '13', 'bankStatus', '1', '1=是\r\n0=否', 'radio', '银行卡提现是否有效');
INSERT INTO `bf_sys_cfg_list` VALUES ('105', '4', 'checkIP', '1', '1=是\r\n0=否', 'radio', '检查用户异地登录');
INSERT INTO `bf_sys_cfg_list` VALUES ('106', '4', 'checkIPTime', '800', '', 'text', '检测间隔时间(秒)');
INSERT INTO `bf_sys_cfg_list` VALUES ('110', '16', 'ecpTitle', '{webName}帐号异常激活', '', 'text', '帐户激活标题');
INSERT INTO `bf_sys_cfg_list` VALUES ('111', '16', 'ecpContent', '<p>您好,&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n美乐会员，您的帐号：{username}因异地登录出现异常，请点击一下链接激活&lt;br /&gt;&lt;a href=&quot;{activeUrl}&quot;&gt;{activeUrl}&lt;/a&gt;<br />\r\n若不能点击，请复制到浏览器打开。<br />\r\n<br />\r\n-----------------------------------------------------------------------------------<br />\r\n<br />\r\n如果您有什么疑问或建议，欢迎给我们提供，客服邮箱：<a target=\"_blank\" swaped=\"true\" href=\"mailto:admin@aadiy.cn\">hotdogwindows@hotmail.com</a><br />\r\n该邮件由系统自动发送，请勿直接回复。<br />\r\n<br />\r\n感谢您对美乐的支持!<br />\r\n<br />\r\n美乐平台客服部</p>', '', 'textarea', '帐户激活内容');
INSERT INTO `bf_sys_cfg_list` VALUES ('109', '15', 'ecpContent', '{webName}帐号异常验证，您的验证码为：{code}', '', 'textarea', '手机验证异地帐户内容');
INSERT INTO `bf_sys_cfg_list` VALUES ('112', '17', 'sendCardTitle', '充值卡密', '', 'text', '后台发送卡密标题');
INSERT INTO `bf_sys_cfg_list` VALUES ('113', '17', 'sendCardContent', '{webName}{cardMoney}元充值卡号：{cardId}<br />\r\n充值密码：{cardPwd}<br />\r\n友情提醒：充值成功后请您10分钟内，给{webName}客服确认付款，以防系统自动冻结您{webName}平台帐号。谢谢合作！', '', 'textarea', '后台发送卡密内容');
INSERT INTO `bf_sys_cfg_list` VALUES ('114', '18', 'memberCount', '40', '', 'text', '普通用户次数限制(一天)');
INSERT INTO `bf_sys_cfg_list` VALUES ('115', '18', 'vipCount', '0', '', 'text', 'VIP用户次数限制(一天)');
INSERT INTO `bf_sys_cfg_list` VALUES ('116', '18', 'memberSendTask', '0', '', 'text', '普通用户发布X次才能使用');
INSERT INTO `bf_sys_cfg_list` VALUES ('117', '18', 'vipSendTask', '0', '', 'text', 'VIP发布X条才能使用');
INSERT INTO `bf_sys_cfg_list` VALUES ('118', '18', 'memberGetTask', '0', '', 'text', '普通用户接手X任务才能使用');
INSERT INTO `bf_sys_cfg_list` VALUES ('119', '18', 'vipGetTask', '0', '', 'text', 'VIP接手X任务才能使用');
INSERT INTO `bf_sys_cfg_list` VALUES ('120', '4', 'isGivePoint', '1', '', 'text', '注册是否赠送兔粮0不赠送');
INSERT INTO `bf_sys_cfg_list` VALUES ('121', '4', 'formExpireTime', '800', '', 'text', '表单超时时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('122', '19', 'store_deal_1', null, '250', 'text', '打理250笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('123', '19', 'store_deal_2', null, '500', 'text', '打理500笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('124', '19', 'store_deal_3', null, '1000', 'text', '打理1000笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('125', '19', 'store_deal_4', null, '2000', 'text', '打理2000笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('126', '19', 'store_deal_5', null, '5000', 'text', '打理5000笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('127', '19', 'store_deal_6', null, '10000', 'text', '打理10001笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('128', '19', 'store_deal_7', null, '20001', 'text', '打理20001笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('129', '19', 'store_deal_8', null, '50001', 'text', '打理50001笔交易');
INSERT INTO `bf_sys_cfg_list` VALUES ('130', '19', 'store_money_1', null, '599', 'text', '打理250笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('131', '19', 'store_money_2', null, '', 'text', '打理500笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('132', '19', 'store_money_3', null, '', 'text', '打理1000笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('133', '19', 'store_money_4', null, '', 'text', '打理2000笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('134', '19', 'store_money_5', null, '', 'text', '打理5000笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('135', '19', 'store_money_6', null, '', 'text', '打理10001笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('136', '19', 'store_money_7', null, '', 'text', '打理20001笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('137', '19', 'store_money_8', null, '', 'text', '打理50001笔交易价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('138', '19', 'store_day_1', null, '', 'text', '打理250笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('139', '19', 'store_day_2', null, '', 'text', '打理500笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('140', '19', 'store_day_3', null, '', 'text', '打理1000笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('141', '19', 'store_day_4', null, '', 'text', '打理2000笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('142', '19', 'store_day_5', null, '', 'text', '打理5000笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('143', '19', 'store_day_6', null, '', 'text', '打理10001笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('144', '19', 'store_day_7', null, '', 'text', '打理20001笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('145', '19', 'store_day_8', null, '', 'text', '打理50001笔交易时间');
INSERT INTO `bf_sys_cfg_list` VALUES ('146', '4', 'jewel_vip_money_list', '1,48;2,89;3,129;6,246;12,456;24,839', '', 'text', '钻石VIP月数选择');
INSERT INTO `bf_sys_cfg_list` VALUES ('147', '4', 'jewel_vip_money', '48', '', 'text', '钻石VIP价格');
INSERT INTO `bf_sys_cfg_list` VALUES ('148', '4', 'crown_vip_money_list', '1,99;2,189;3,279;6,468;12,1058;24,2046', '', 'text', '皇冠VIP月数选择');
INSERT INTO `bf_sys_cfg_list` VALUES ('149', '4', 'crown_vip_money', '99', '', 'text', '皇冠VIP价格');

-- ----------------------------
-- Table structure for `bf_task`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task`;
CREATE TABLE `bf_task` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL,
  `meal` int(3) NOT NULL,
  `freeTask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `suid` int(10) unsigned NOT NULL,
  `qq` varchar(12) NOT NULL,
  `svip` tinyint(3) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `susername` varchar(16) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `shopCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `itemid` bigint(20) unsigned NOT NULL,
  `itemurl` varchar(240) DEFAULT NULL,
  `shopPrice` decimal(9,2) NOT NULL,
  `visitWay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `visitKey` varchar(240) DEFAULT NULL,
  `visitTip` varchar(240) DEFAULT NULL,
  `isVisit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` decimal(9,2) DEFAULT NULL,
  `isPriceFit` tinyint(3) unsigned NOT NULL,
  `point` decimal(9,2) DEFAULT NULL,
  `pointExt` decimal(9,2) DEFAULT NULL,
  `times` tinyint(3) unsigned NOT NULL,
  `scores` tinyint(3) unsigned NOT NULL,
  `isRemark` tinyint(3) unsigned NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `isLytxzz` tinyint(3) unsigned NOT NULL,
  `Lytxzz` varchar(200) DEFAULT NULL,
  `isShare` tinyint(3) unsigned NOT NULL,
  `share` tinyint(3) unsigned NOT NULL,
  `isLimitAddress` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `limitAddress` varchar(60) DEFAULT NULL,
  `tips` varchar(100) DEFAULT NULL,
  `isVerify` tinyint(3) unsigned NOT NULL,
  `isDbssc` tinyint(3) unsigned NOT NULL,
  `isLimit` tinyint(3) unsigned NOT NULL,
  `limit` tinyint(3) unsigned NOT NULL,
  `isCart` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isAddress` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `address` varchar(64) DEFAULT NULL,
  `isExpress` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expressTM` int(10) unsigned NOT NULL DEFAULT '0',
  `expressName` varchar(16) DEFAULT NULL,
  `expressNum` varchar(16) DEFAULT NULL,
  `isReal` tinyint(3) unsigned NOT NULL,
  `realname` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isChat` tinyint(3) unsigned NOT NULL,
  `isChatDone` tinyint(3) unsigned NOT NULL,
  `isStar` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lvlStar` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isEnsure` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ensurePoint` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `isScore` tinyint(3) unsigned NOT NULL,
  `scoreLvl` int(10) unsigned NOT NULL,
  `isCredit` tinyint(3) unsigned NOT NULL,
  `creditLvl` int(10) unsigned NOT NULL,
  `isGood` tinyint(3) unsigned NOT NULL,
  `goodLvl` tinyint(3) unsigned NOT NULL,
  `isBlack` tinyint(3) unsigned NOT NULL,
  `blackLvl` int(10) unsigned NOT NULL,
  `isFame` tinyint(3) unsigned NOT NULL,
  `fameLvl` int(10) unsigned NOT NULL,
  `isBuyerHyper` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buyerHyper` int(10) unsigned NOT NULL DEFAULT '0',
  `isPlan` tinyint(3) unsigned NOT NULL,
  `planDate` int(10) unsigned NOT NULL,
  `sip` int(10) unsigned NOT NULL,
  `stimestamp` int(10) unsigned NOT NULL,
  `buid` int(10) unsigned NOT NULL DEFAULT '0',
  `busername` varchar(16) DEFAULT NULL,
  `bid` int(10) unsigned NOT NULL DEFAULT '0',
  `bnickname` varchar(20) DEFAULT NULL,
  `bip` int(10) unsigned NOT NULL DEFAULT '0',
  `btimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ttimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `etimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ctimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reject` smallint(5) unsigned NOT NULL DEFAULT '0',
  `credit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `complain` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ensureStatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isSendMsg` int(10) unsigned NOT NULL DEFAULT '0',
  `isPhone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(16) DEFAULT NULL,
  `ispinimage` int(2) DEFAULT NULL,
  `pinimage` varchar(255) DEFAULT NULL COMMENT '好评图',
  `chssp` int(3) DEFAULT NULL,
  `isNoword` int(3) DEFAULT NULL,
  `txtMinMPrice` int(3) DEFAULT NULL,
  `cbxIsTip` int(3) DEFAULT NULL,
  `txtBuyCount` int(5) DEFAULT NULL,
  `cbIsHiddenName` int(2) DEFAULT NULL,
  `cbIsNoneAssess` int(1) DEFAULT NULL,
  `txtAreaService` varchar(200) DEFAULT NULL,
  `txtAccount` varchar(200) DEFAULT NULL,
  `txtMobile` varchar(12) DEFAULT NULL,
  `txtSpecs` varchar(200) DEFAULT NULL,
  `ddlDeliver` varchar(50) DEFAULT NULL,
  `cbxName` varchar(20) DEFAULT NULL,
  `cbxMobile` varchar(12) DEFAULT NULL,
  `cbxcode` int(6) DEFAULT NULL,
  `cbxAddress` varchar(200) DEFAULT NULL,
  `FMaxBTSCount` int(3) DEFAULT NULL,
  `cbxIsTaoG` int(2) DEFAULT NULL,
  `txtTaoG` int(5) DEFAULT NULL,
  `isawb` int(2) DEFAULT '0',
  `expressfull` varchar(40) DEFAULT NULL,
  `isSign` int(2) DEFAULT NULL,
  `Express` int(2) DEFAULT NULL,
  `isLimitCity` int(2) DEFAULT NULL,
  `isMultiple` int(2) DEFAULT NULL,
  `c_title` varchar(255) DEFAULT NULL,
  `c_price` decimal(5,2) DEFAULT NULL,
  `c_text` varchar(255) DEFAULT NULL,
  `c_chssp` int(2) DEFAULT NULL,
  `c_cbhp` int(2) unsigned DEFAULT NULL,
  `shareimage` varchar(255) DEFAULT NULL COMMENT '分享图',
  `s_memo` varchar(255) DEFAULT NULL,
  `b_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`status`,`point`,`svip`,`stimestamp`,`id`),
  KEY `i2` (`type`,`suid`,`buid`,`status`,`stimestamp`,`btimestamp`,`id`),
  KEY `i3` (`status`,`isPlan`,`planDate`,`id`,`suid`,`type`),
  KEY `i4` (`isVerify`,`status`,`ctimestamp`,`id`),
  KEY `i5` (`sid`,`buid`,`btimestamp`),
  KEY `i6` (`status`,`credit`,`ctimestamp`,`suid`,`buid`,`id`),
  KEY `i7` (`status`,`isSendMsg`,`etimestamp`,`id`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task
-- ----------------------------
INSERT INTO `bf_task` VALUES ('TB0710033548212906', '1', '0', '0', '4', '30743', '0', '1', 'ceshi1', 'lubingss', '1', '', '38652343775', 'http://item.taobao.com/item.htm?spm=a230r.1.14.149.5ZDMs7&id=38652343775&ns=1#detail', '0.00', '0', null, null, '0', '25.00', '0', '3.40', '0.00', '0', '0', '1', 'dsfasd ', '0', null, '1', '1', '0', '', '', '1', '0', '0', '1', '0', '1', null, '0', '0', null, null, '0', '1', '1', '1', '0', '3', '0', '0.30', '0', '100', '0', '30', '0', '90', '0', '3', '0', '90', '0', '41', '0', '0', '2365229623', '1404934544', '5', 'ceshi2', '1', 'zhanglinlin711', '2365228725', '1404934680', '1404943322', '1404941886', '0', '8', '0', '0', '0', '0', '1', '0', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, '臧涛', '15550866333', '246589', '山东省 上海市 南京区', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bf_task` VALUES ('TB0710053652057318', '1', '0', '0', '4', '30743', '0', '2', 'ceshi1', '优客舍', '1', '', '39503283804', 'http://item.taobao.com/item.htm?id=39503283804', '0.00', '0', null, null, '0', '10.00', '0', '1.00', '0.00', '0', '0', '0', '此处填写您希望接手人对您的任务商品的评语内容，例如：“掌柜妹妹很热情，发货速度很快，商品拿到了,感觉比图片上还要漂亮”。请不要填写“请带字好评”等引导的文字', '0', null, '0', '0', '0', '', '', '0', '0', '0', '1', '0', '0', null, '0', '0', null, null, '0', '1', '0', '0', '0', '3', '0', '0.30', '0', '100', '0', '30', '0', '90', '0', '3', '0', '90', '0', '41', '0', '0', '2074697757', '1404941811', '5', 'ceshi2', '1', 'zhanglinlin711', '2074697757', '1404941850', '1404942754', '1404941880', '1404941910', '10', '0', '3', '0', '0', '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '', '', '0', '此处填写您要求接手人的修改的收货地址，包含具体省、市、区及详细地址，请不要填写“请带字好评”等引导的文字。', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bf_task` VALUES ('TB0709193531006080', '1', '0', '0', '4', '30743', '0', '1', 'ceshi1', 'lubingss', '1', '', '38986550392', 'http://item.taobao.com/item.htm?id=38986550392&pm2=1', '0.00', '0', null, null, '0', '15.00', '0', '3.20', '0.00', '0', '0', '1', '111', '0', null, '0', '0', '0', '', '', '1', '0', '0', '1', '0', '1', null, '0', '0', null, null, '0', '1', '1', '1', '0', '3', '0', '0.30', '0', '100', '0', '30', '0', '90', '0', '3', '0', '90', '0', '41', '0', '0', '2365229623', '1404905730', '5', 'ceshi2', '1', 'zhanglinlin711', '2365228725', '1404905776', '1404906976', '1404906087', '0', '9', '0', '0', '0', '0', '1', '0', null, '1', '/img/attach/2014/07/7C.jpg', null, null, null, null, null, null, null, null, null, null, null, null, 'dd', '51464646164', '445515', 'fddff', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `bf_taskshops`
-- ----------------------------
DROP TABLE IF EXISTS `bf_taskshops`;
CREATE TABLE `bf_taskshops` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tid` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `itemurl` varchar(255) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `pointExt` decimal(5,2) DEFAULT NULL,
  `cbhp` int(2) DEFAULT NULL,
  `chssp` int(2) DEFAULT NULL,
  `texts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_taskshops
-- ----------------------------
INSERT INTO `bf_taskshops` VALUES ('1', 'TB0710033548212906', '', 'http://item.taobao.com/item.htm?spm=a230r.1.14.149.5ZDMs7&id=38652343775&ns=1#detail', '0.00', '0.00', null, null, null);
INSERT INTO `bf_taskshops` VALUES ('2', 'TB0710053652057318', '', 'http://item.taobao.com/item.htm?id=39503283804', '0.00', '0.00', null, null, null);
INSERT INTO `bf_taskshops` VALUES ('3', 'TB0709193531006080', '', 'http://item.taobao.com/item.htm?id=38986550392&pm2=1', '0.00', '0.00', null, null, null);

-- ----------------------------
-- Table structure for `bf_task_book`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_book`;
CREATE TABLE `bf_task_book` (
  `type` tinyint(3) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `ing` smallint(6) DEFAULT NULL,
  `priceLow` decimal(9,2) DEFAULT NULL,
  `priceHigh` decimal(9,2) DEFAULT NULL,
  `times` tinyint(3) unsigned DEFAULT NULL,
  `isVerify` tinyint(3) unsigned DEFAULT NULL,
  `isReal` tinyint(3) unsigned DEFAULT NULL,
  `isSms` tinyint(3) unsigned DEFAULT NULL,
  `isStop` tinyint(3) unsigned DEFAULT NULL,
  `rejects` text,
  UNIQUE KEY `i1` (`type`,`uid`),
  KEY `i2` (`isStop`,`ing`,`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_book
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_book_filter`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_book_filter`;
CREATE TABLE `bf_task_book_filter` (
  `type` tinyint(3) unsigned DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `fuid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_book_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_collect`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_collect`;
CREATE TABLE `bf_task_collect` (
  `id` char(20) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `ctype` tinyint(3) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `curl` varchar(255) DEFAULT NULL,
  `shopKey` varchar(32) DEFAULT NULL,
  `point` decimal(9,2) DEFAULT NULL,
  `total` int(10) unsigned DEFAULT NULL,
  `totalIng` int(10) unsigned DEFAULT NULL,
  `totalComplate` int(11) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i2` (`type`,`totalComplate`),
  KEY `i1` (`type`,`status`,`total`,`totalComplate`,`timestamp`,`id`),
  KEY `i3` (`type`,`uid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_collects`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_collects`;
CREATE TABLE `bf_task_collects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `tid` char(20) DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `count` int(10) unsigned NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `timestamp1` int(10) unsigned NOT NULL,
  `timestamp2` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isChange` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`uid`,`status`),
  KEY `i2` (`type`,`tid`,`bid`,`id`),
  KEY `i3` (`type`,`uid`,`status`,`isChange`),
  KEY `i4` (`status`,`timestamp1`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_collects
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_flow`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_flow`;
CREATE TABLE `bf_task_flow` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `itemid` bigint(20) unsigned NOT NULL,
  `title` varchar(240) DEFAULT NULL,
  `itemurl` varchar(240) DEFAULT NULL,
  `isAddress1` varchar(50) DEFAULT NULL,
  `sign` char(32) DEFAULT NULL,
  `flowAll` int(10) unsigned NOT NULL,
  `flowComplate` int(10) unsigned NOT NULL,
  `flowLock` int(10) unsigned NOT NULL,
  `flowTotal` int(10) unsigned NOT NULL,
  `isIp` tinyint(3) unsigned DEFAULT NULL,
  `times` int(10) unsigned DEFAULT NULL,
  `isPlan` tinyint(3) unsigned DEFAULT NULL,
  `planDate` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`status`,`flowTotal`,`timestamp`,`id`),
  KEY `i2` (`type`,`uid`,`status`,`timestamp`,`id`),
  KEY `i3` (`type`,`flowComplate`),
  KEY `i4` (`status`,`isPlan`,`planDate`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_flow
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_log`;
CREATE TABLE `bf_task_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` varchar(20) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `isBuyer` tinyint(3) unsigned NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_log
-- ----------------------------
INSERT INTO `bf_task_log` VALUES ('1', 'TB0710033548212906', '4', '0', '绑定买号', 'ceshi2向任务TB0710033548212906绑定了买号', '1404934684');
INSERT INTO `bf_task_log` VALUES ('2', 'TB0710033548212906', '5', '1', '绑定买号', 'ceshi2向任务TB0710033548212906绑定了买号', '1404934684');
INSERT INTO `bf_task_log` VALUES ('3', 'TB0710033548212906', '4', '0', '任务审核', 'ceshi1审核了任务TB0710033548212906的接手方ceshi2', '1404941522');
INSERT INTO `bf_task_log` VALUES ('4', 'TB0710033548212906', '5', '1', '任务审核', 'ceshi1审核了任务TB0710033548212906的接手方ceshi2', '1404941522');
INSERT INTO `bf_task_log` VALUES ('5', 'TB0710033548212906', '4', '0', '为接手方加时', 'ceshi1为任务TB0710033548212906加时', '1404941525');
INSERT INTO `bf_task_log` VALUES ('6', 'TB0710033548212906', '5', '1', '为接手方加时', 'ceshi1为任务TB0710033548212906加时', '1404941525');
INSERT INTO `bf_task_log` VALUES ('7', 'TB0710053652057318', '4', '0', '绑定买号', 'ceshi2向任务TB0710053652057318绑定了买号', '1404941854');
INSERT INTO `bf_task_log` VALUES ('8', 'TB0710053652057318', '5', '1', '绑定买号', 'ceshi2向任务TB0710053652057318绑定了买号', '1404941854');
INSERT INTO `bf_task_log` VALUES ('9', 'TB0710053652057318', '4', '0', '确认支付', 'ceshi2确认支付任务TB0710053652057318', '1404941863');
INSERT INTO `bf_task_log` VALUES ('10', 'TB0710053652057318', '5', '1', '确认支付', 'ceshi2确认支付任务TB0710053652057318', '1404941863');
INSERT INTO `bf_task_log` VALUES ('11', 'TB0710033548212906', '4', '0', '确认支付', 'ceshi2确认支付任务TB0710033548212906', '1404941866');
INSERT INTO `bf_task_log` VALUES ('12', 'TB0710033548212906', '5', '1', '确认支付', 'ceshi2确认支付任务TB0710033548212906', '1404941866');
INSERT INTO `bf_task_log` VALUES ('13', 'TB0710053652057318', '4', '0', '确认发布', 'ceshi1确认了任务TB0710053652057318的发货', '1404941880');
INSERT INTO `bf_task_log` VALUES ('14', 'TB0710053652057318', '5', '1', '确认发布', 'ceshi1确认了任务TB0710053652057318的发货', '1404941880');
INSERT INTO `bf_task_log` VALUES ('15', 'TB0710033548212906', '4', '0', '确认发布', 'ceshi1确认了任务TB0710033548212906的发货', '1404941886');
INSERT INTO `bf_task_log` VALUES ('16', 'TB0710033548212906', '5', '1', '确认发布', 'ceshi1确认了任务TB0710033548212906的发货', '1404941886');
INSERT INTO `bf_task_log` VALUES ('17', 'TB0710053652057318', '4', '0', '确认收货', 'ceshi2确认了任务TB0710053652057318的收货', '1404941898');
INSERT INTO `bf_task_log` VALUES ('18', 'TB0710053652057318', '5', '1', '确认收货', 'ceshi2确认了任务TB0710053652057318的收货', '1404941898');
INSERT INTO `bf_task_log` VALUES ('19', 'TB0710053652057318', '4', '0', '核实货款', 'ceshi1已核实货款任务TB0710053652057318', '1404941910');
INSERT INTO `bf_task_log` VALUES ('20', 'TB0710053652057318', '5', '1', '核实货款', 'ceshi1已核实货款任务TB0710053652057318', '1404941910');
INSERT INTO `bf_task_log` VALUES ('21', 'TB0709193531006080', '4', '0', '绑定买号', 'ceshi2向任务TB0709193531006080绑定了买号', '1404905781');
INSERT INTO `bf_task_log` VALUES ('22', 'TB0709193531006080', '5', '1', '绑定买号', 'ceshi2向任务TB0709193531006080绑定了买号', '1404905781');
INSERT INTO `bf_task_log` VALUES ('23', 'TB0709193531006080', '4', '0', '任务审核', 'ceshi1审核了任务TB0709193531006080的接手方ceshi2', '1404906076');
INSERT INTO `bf_task_log` VALUES ('24', 'TB0709193531006080', '5', '1', '任务审核', 'ceshi1审核了任务TB0709193531006080的接手方ceshi2', '1404906076');
INSERT INTO `bf_task_log` VALUES ('25', 'TB0709193531006080', '4', '0', '确认支付', 'ceshi2确认支付任务TB0709193531006080', '1404906083');
INSERT INTO `bf_task_log` VALUES ('26', 'TB0709193531006080', '5', '1', '确认支付', 'ceshi2确认支付任务TB0709193531006080', '1404906083');
INSERT INTO `bf_task_log` VALUES ('27', 'TB0709193531006080', '4', '0', '确认发布', 'ceshi1确认了任务TB0709193531006080的发货', '1404906087');
INSERT INTO `bf_task_log` VALUES ('28', 'TB0709193531006080', '5', '1', '确认发布', 'ceshi1确认了任务TB0709193531006080的发货', '1404906087');
INSERT INTO `bf_task_log` VALUES ('29', 'TB0709193531006080', '4', '0', '确认收货', 'ceshi2确认了任务TB0709193531006080的收货', '1404906335');
INSERT INTO `bf_task_log` VALUES ('30', 'TB0709193531006080', '5', '1', '确认收货', 'ceshi2确认了任务TB0709193531006080的收货', '1404906335');

-- ----------------------------
-- Table structure for `bf_task_reflow`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_reflow`;
CREATE TABLE `bf_task_reflow` (
  `id` char(20) DEFAULT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `suid` int(10) unsigned NOT NULL,
  `susername` varchar(16) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL,
  `snickname` varchar(20) DEFAULT NULL,
  `itemid` bigint(20) unsigned NOT NULL,
  `itemurl` varchar(240) DEFAULT NULL,
  `itemtitle` varchar(240) DEFAULT NULL,
  `isAddress2` varchar(60) DEFAULT NULL,
  `itemprice` decimal(10,0) DEFAULT NULL,
  `wayId` tinyint(3) unsigned NOT NULL,
  `visitKey` varchar(100) DEFAULT NULL,
  `visitTip` varchar(200) DEFAULT NULL,
  `checkType` tinyint(3) unsigned NOT NULL,
  `checkValue` varchar(10) DEFAULT NULL,
  `isIP` tinyint(3) unsigned NOT NULL,
  `numIP` int(10) unsigned NOT NULL,
  `isLimit` tinyint(3) unsigned NOT NULL,
  `numUser` int(10) unsigned NOT NULL,
  `isPlan` tinyint(3) unsigned NOT NULL,
  `planDate` int(10) unsigned NOT NULL,
  `isRate` tinyint(3) unsigned NOT NULL,
  `minute` int(10) unsigned NOT NULL DEFAULT '0',
  `rateTime` int(10) unsigned NOT NULL DEFAULT '0',
  `bidUp` decimal(9,2) DEFAULT NULL,
  `flowAll` int(10) unsigned NOT NULL,
  `flowComplate` int(10) unsigned NOT NULL,
  `flowLock` int(10) unsigned NOT NULL,
  `flowTotal` int(10) unsigned NOT NULL,
  `point` decimal(9,2) DEFAULT NULL,
  `point1` decimal(9,2) DEFAULT NULL,
  `point2` decimal(9,2) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastTime` int(10) unsigned NOT NULL DEFAULT '0',
  `errTime` int(10) unsigned NOT NULL DEFAULT '0',
  `errCount` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockTime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `i1` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_reflow
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_reflow_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_reflow_log`;
CREATE TABLE `bf_task_reflow_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `tid` char(20) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `total` int(10) unsigned NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `checkCount` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `i1` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_reflow_log
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_reflow_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_reflow_tpl`;
CREATE TABLE `bf_task_reflow_tpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `datas` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`uid`,`timestamp`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_reflow_tpl
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_task_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `bf_task_tpl`;
CREATE TABLE `bf_task_tpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stype` int(11) DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `isAdds` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `datas` text,
  `timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`type`,`uid`,`isAdds`,`timestamp`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_task_tpl
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_threads`
-- ----------------------------
DROP TABLE IF EXISTS `bf_threads`;
CREATE TABLE `bf_threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL,
  `top` int(10) unsigned NOT NULL DEFAULT '0',
  `digest` int(10) unsigned NOT NULL DEFAULT '0',
  `iconid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title_color` varchar(7) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL,
  `posts` int(10) unsigned NOT NULL,
  `last_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_username` varchar(16) DEFAULT NULL,
  `last_post_timestamp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i1` (`fid`,`top`,`posts`,`id`),
  KEY `i2` (`top`,`timestamp`,`id`),
  KEY `i3` (`digest`,`timestamp`,`id`),
  KEY `i4` (`last_post_timestamp`,`id`),
  KEY `i5` (`uid`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_threads
-- ----------------------------
INSERT INTO `bf_threads` VALUES ('15', '3', '0', '0', '5', '0', '', '【大讲堂】美乐信用额度，刷客满意度 详细解读', '3', '美乐管理员', '65', '1360046930', '1', '45', '3', '', '1360046930');
INSERT INTO `bf_threads` VALUES ('10', '3', '0', '0', '8', '0', '', '【新手教程】如何短信激活账户，如何短信认证帐户', '3', '美乐管理员', '85', '1360047170', '1', '40', '3', '', '1360047170');
INSERT INTO `bf_threads` VALUES ('11', '3', '0', '0', '2', '0', '', '了解美乐平台积分级别详情，如何获得积分', '3', '美乐管理员', '80', '1360046983', '1', '41', '3', '', '1360046983');
INSERT INTO `bf_threads` VALUES ('12', '3', '0', '0', '0', '0', '', '【赢规定】美乐刷客积分与接发任务数量对应关系', '3', '美乐管理员', '85', '1300817389', '1', '42', '3', '美乐管理员', '1300817389');
INSERT INTO `bf_threads` VALUES ('13', '1', '0', '0', '0', '0', '', '【好消息】点卡中心推出双倍积分卡，积分翻倍增长的秘密！', '3', '美乐管理员', '152', '1358766961', '1', '43', '3', '', '1358766961');
INSERT INTO `bf_threads` VALUES ('14', '1', '0', '0', '0', '0', '', '【好消息】平台充值有奖励喽！', '3', '美乐管理员', '141', '1300817471', '1', '44', '3', '美乐管理员', '1300817471');
INSERT INTO `bf_threads` VALUES ('16', '3', '0', '0', '5', '0', '', '【新手教程】如何维护个人资料', '3', '美乐管理员', '66', '1360046841', '1', '46', '3', '', '1360046841');
INSERT INTO `bf_threads` VALUES ('17', '3', '0', '0', '4', '0', '', '【新手教程】如何修改密码，操作码', '3', '美乐管理员', '63', '1360046789', '1', '47', '3', '', '1360046789');
INSERT INTO `bf_threads` VALUES ('18', '3', '0', '0', '11', '0', '', '【新手教程】了解我的宝物功能', '3', '美乐管理员', '61', '1360046673', '1', '48', '3', '', '1360046673');
INSERT INTO `bf_threads` VALUES ('19', '3', '0', '0', '4', '0', '', '【新手教程】如何查看自己账户的基本信息', '3', '美乐管理员', '62', '1360046120', '1', '49', '3', '', '1360046120');
INSERT INTO `bf_threads` VALUES ('20', '3', '0', '0', '3', '0', '', '如何申请成为【美乐教官】，美乐教官的资质？', '3', '美乐管理员', '66', '1360046191', '1', '50', '3', '', '1360046191');
INSERT INTO `bf_threads` VALUES ('21', '5', '0', '0', '0', '0', '', '【帮助中心】开始接手任务之前需要准备什么', '3', '美乐管理员', '115', '1300817747', '1', '51', '3', '美乐管理员', '1300817747');
INSERT INTO `bf_threads` VALUES ('22', '5', '0', '0', '4', '0', '', '【帮助中心】如何查看已经接手的任务', '3', '美乐管理员', '114', '1360047979', '1', '52', '3', '', '1360047979');
INSERT INTO `bf_threads` VALUES ('23', '5', '0', '0', '0', '0', '', '【帮助中心】平台对接手任务有什么限制', '3', '美乐管理员', '125', '1300817838', '1', '53', '3', '美乐管理员', '1300817838');
INSERT INTO `bf_threads` VALUES ('24', '3', '0', '0', '8', '0', '', '【新手入门】什么是买号，什么是小号？', '3', '美乐管理员', '109', '1360046250', '1', '54', '3', '', '1360046250');
INSERT INTO `bf_threads` VALUES ('25', '5', '0', '0', '0', '0', '', '【帮助中心】什么是买号动态寿命值', '3', '美乐管理员', '135', '1360047772', '1', '55', '3', '', '1360047772');
INSERT INTO `bf_threads` VALUES ('26', '5', '0', '0', '0', '0', '', '【帮助中心】美乐买号（小号）各种状态详细解读', '3', '美乐管理员', '148', '1360047707', '1', '56', '3', '', '1360047707');
INSERT INTO `bf_threads` VALUES ('27', '5', '0', '0', '0', '0', '', '【帮助中心】接手任务注意事项', '3', '美乐管理员', '125', '1300818001', '1', '57', '3', '美乐管理员', '1300818001');
INSERT INTO `bf_threads` VALUES ('28', '3', '0', '0', '0', '0', '', '【美乐强调】美乐刷客积分与接发任务数量对应关系', '3', '美乐管理员', '68', '1360046284', '1', '58', '3', '', '1360046284');
INSERT INTO `bf_threads` VALUES ('29', '4', '0', '0', '0', '0', '', '【新手必读】任务商品价格与所需基本兔粮数的对应关系', '3', '美乐管理员', '150', '1300818093', '1', '59', '3', '美乐管理员', '1300818093');
INSERT INTO `bf_threads` VALUES ('30', '4', '0', '0', '0', '0', '', '【新手必读】任务商品价格与所需基本兔粮数的对应关系', '3', '美乐管理员', '130', '1300818093', '1', '60', '3', '美乐管理员', '1300818093');
INSERT INTO `bf_threads` VALUES ('31', '6', '0', '0', '4', '0', '', '【发布任务】发布任务增值服务区详解', '3', '美乐管理员', '170', '1360048938', '1', '61', '3', '', '1360048938');
INSERT INTO `bf_threads` VALUES ('32', '1', '2', '3', '0', '1', '#ff0000', '【新功能】新用户“免费发布一元体验任务”功能上线！', '3', '美乐管理员', '207', '1300818173', '2', '121', '39', 'windows', '1358520765');
INSERT INTO `bf_threads` VALUES ('33', '4', '0', '0', '0', '0', '', '【发布任务】善用发布任务模板', '3', '美乐管理员', '134', '1360047506', '1', '63', '3', '', '1360047506');
INSERT INTO `bf_threads` VALUES ('34', '1', '0', '0', '0', '0', '', '【美乐规定】任务价必须大于商品标价一半以上', '3', '美乐管理员', '138', '1358766787', '1', '64', '3', '', '1358766787');
INSERT INTO `bf_threads` VALUES ('35', '3', '0', '0', '3', '0', '', '【发布任务】批量发布任务教程详解', '3', '美乐管理员', '71', '1360046471', '1', '65', '3', '', '1360046471');
INSERT INTO `bf_threads` VALUES ('36', '3', '0', '0', '3', '0', '', '【发布任务】掌柜热卖发布教程详解', '3', '美乐管理员', '80', '1360044490', '1', '66', '3', '', '1360044490');
INSERT INTO `bf_threads` VALUES ('37', '4', '0', '0', '3', '0', '', '【卖家教程】美乐如何绑定卖号(大号，掌柜号)', '3', '美乐管理员', '156', '1360047458', '1', '67', '3', '', '1360047458');
INSERT INTO `bf_threads` VALUES ('38', '6', '0', '0', '0', '0', '', '【申诉相关】如何发起任务申诉', '3', '美乐管理员', '141', '1300818402', '1', '68', '3', '美乐管理员', '1300818402');
INSERT INTO `bf_threads` VALUES ('39', '3', '0', '0', '2', '0', '', '【兽兽讲堂】如何发起申诉，申诉注意事项，任务申诉须知', '3', '美乐管理员', '84', '1360044301', '1', '69', '3', '', '1360044301');
INSERT INTO `bf_threads` VALUES ('40', '6', '0', '0', '0', '0', '', '【申诉相关】发起各类申诉需要满足的条件', '3', '美乐管理员', '119', '1300818472', '1', '70', '3', '美乐管理员', '1300818472');
INSERT INTO `bf_threads` VALUES ('41', '6', '0', '0', '0', '0', '', '【申诉相关】在任务不同状态时美乐允许申诉的项目', '3', '美乐管理员', '138', '1300818528', '1', '71', '3', '美乐管理员', '1300818528');
INSERT INTO `bf_threads` VALUES ('42', '6', '0', '0', '0', '0', '', '【申诉相关】如何处理任务对方发起的申诉，收到申诉怎么办', '3', '美乐管理员', '148', '1300818560', '1', '72', '3', '美乐管理员', '1300818560');
INSERT INTO `bf_threads` VALUES ('43', '6', '0', '0', '3', '0', '', '【申诉相关】提交申诉证据时的注意事项', '3', '美乐管理员', '150', '1360048733', '2', '145', '55', 'Q906818', '1392053339');
INSERT INTO `bf_threads` VALUES ('44', '6', '0', '0', '0', '0', '', '【申诉相关】如何查看申诉裁决结果', '3', '美乐管理员', '144', '1360048551', '1', '74', '3', '', '1360048551');
INSERT INTO `bf_threads` VALUES ('45', '3', '0', '0', '2', '0', '', '【美乐教程】如何增加存款，如何充值，怎样充值；', '3', '美乐管理员', '94', '1360045604', '1', '75', '3', '', '1360045604');
INSERT INTO `bf_threads` VALUES ('46', '3', '0', '0', '0', '0', '', '【账户资金】美乐账户内存款如何提现，提现教程，提现办法', '3', '美乐管理员', '81', '1360044076', '1', '76', '3', '', '1360044076');
INSERT INTO `bf_threads` VALUES ('47', '3', '0', '0', '0', '0', '', '【账户资金】您的美乐账户内存款有什么用处', '3', '美乐管理员', '88', '1300818732', '1', '77', '3', '美乐管理员', '1300818732');
INSERT INTO `bf_threads` VALUES ('48', '1', '2', '2', '0', '1', '#cc00ff', '【新手必读】美乐平台盟平台提现规定细则', '3', '美乐管理员', '184', '1358766756', '1', '78', '3', '', '1358766756');
INSERT INTO `bf_threads` VALUES ('49', '1', '2', '2', '0', '1', '#cc00ff', '【账号资金】如何查询我的账户资产变化记录', '3', '美乐管理员', '194', '1358766651', '1', '79', '3', '', '1358766651');
INSERT INTO `bf_threads` VALUES ('50', '1', '0', '3', '0', '1', '#00ff00', '【好消息】平台充值有奖励喽！', '3', '美乐管理员', '194', '1300818832', '4', '97', '3', '美乐管理员', '1301318688');
INSERT INTO `bf_threads` VALUES ('51', '3', '0', '0', '3', '0', '', '【账户资金】如何查询我的充值记录', '3', '美乐管理员', '71', '1360046541', '1', '81', '3', '', '1360046541');
INSERT INTO `bf_threads` VALUES ('52', '3', '0', '0', '11', '0', '', '【账户资金】如何查询我的提现记录', '3', '美乐管理员', '75', '1360045970', '1', '82', '3', '', '1360045970');
INSERT INTO `bf_threads` VALUES ('53', '3', '0', '0', '10', '0', '', '【VIP卡信托】怎样申请成为美乐尊享VIP', '3', '美乐管理员', '88', '1360045916', '1', '83', '3', '', '1360045916');
INSERT INTO `bf_threads` VALUES ('54', '3', '0', '0', '7', '0', '', '【新手入门】了解VIP特权', '3', '美乐管理员', '88', '1360046589', '1', '84', '3', '', '1360046589');
INSERT INTO `bf_threads` VALUES ('55', '3', '0', '0', '3', '0', '', '【VIP卡信托】怎样成为美乐卡信托用户', '3', '美乐管理员', '84', '1360045726', '2', '141', '3', '美乐管理员', '1359990763');
INSERT INTO `bf_threads` VALUES ('56', '3', '0', '0', '6', '0', '', '【VIP卡信托】美乐尊享VIP的收费标准', '3', '美乐管理员', '77', '1360045816', '1', '86', '3', '', '1360045816');
INSERT INTO `bf_threads` VALUES ('57', '3', '0', '0', '0', '0', '', '【VIP卡信托】可以在申请正式VIP之前先体验一下么', '3', '美乐管理员', '83', '1358768741', '1', '87', '3', '', '1358768741');
INSERT INTO `bf_threads` VALUES ('58', '1', '2', '2', '0', '1', '#cc00ff', '【VIP卡信托】信托卡信托会员特权详情', '3', '美乐管理员', '166', '1358417287', '3', '118', '3', '美乐管理员', '1358417258');
INSERT INTO `bf_threads` VALUES ('59', '3', '0', '0', '0', '0', '', '【VIP卡信托】怎样识别用户是否是VIP', '3', '美乐管理员', '90', '1358768595', '1', '89', '3', '', '1358768595');
INSERT INTO `bf_threads` VALUES ('60', '3', '0', '0', '0', '0', '', '【VIP卡信托】怎样识别是否是卡信托用户', '3', '美乐管理员', '101', '1358768996', '1', '90', '3', '', '1358768996');
INSERT INTO `bf_threads` VALUES ('61', '6', '0', '0', '2', '0', '', '【吐血推荐刷信誉经验】深度解析淘宝客', '3', '美乐管理员', '218', '1360048471', '2', '93', '3', '美乐管理员', '1300949725');
INSERT INTO `bf_threads` VALUES ('62', '3', '2', '3', '0', '0', '', '网银充值答疑', '3', '美乐管理员', '65', '1300973277', '1', '94', '3', '美乐管理员', '1300973277');
INSERT INTO `bf_threads` VALUES ('63', '3', '2', '1', '3', '1', '#ff0000', '什么是操作码', '3', '美乐管理员', '94', '1359990546', '1', '95', '3', '', '1359990546');
INSERT INTO `bf_threads` VALUES ('64', '3', '2', '1', '0', '0', '', '如何赚取美乐兔粮', '3', '美乐管理员', '128', '1359990729', '1', '99', '3', '', '1359990729');
INSERT INTO `bf_threads` VALUES ('65', '3', '2', '1', '0', '1', '#0000ff', '【新手入门】教您快速了解平台任务标示图标', '3', '美乐管理员', '117', '1358768272', '1', '100', '3', '', '1358768272');
INSERT INTO `bf_threads` VALUES ('66', '8', '0', '0', '0', '0', '', '被人淘宝 投诉了 速度帮我冻结对方', '3', '美乐管理员', '116', '1360049012', '1', '101', '3', '', '1360049012');
INSERT INTO `bf_threads` VALUES ('67', '3', '2', '1', '0', '0', '', '【新手入门】刷钻要不要加入淘宝消保？消保店铺如何刷？', '3', '美乐管理员', '78', '1301598806', '1', '102', '3', '美乐管理员', '1301598806');
INSERT INTO `bf_threads` VALUES ('101', '1', '2', '3', '3', '1', '#cc3399', '【新手入门】如何使用卡密充值，卡密充值流程详解', '3', '美乐管理员', '28', '1360044880', '1', '142', '3', '美乐管理员', '1360044880');
INSERT INTO `bf_threads` VALUES ('69', '3', '2', '1', '0', '0', '', '【新手必读】我一天刷多少个信誉安全？', '3', '美乐管理员', '85', '1358767782', '1', '104', '3', '', '1358767782');
INSERT INTO `bf_threads` VALUES ('70', '1', '2', '1', '0', '1', '#ff6600', '【公告】关于任务留言被滥用的处理方法！', '3', '美乐管理员', '153', '1301599234', '1', '105', '3', '美乐管理员', '1301599234');
INSERT INTO `bf_threads` VALUES ('71', '5', '0', '0', '0', '0', '', '为什么要绑定多个买号', '3', '美乐管理员', '123', '1360047647', '1', '106', '3', '', '1360047647');
INSERT INTO `bf_threads` VALUES ('72', '4', '0', '0', '3', '0', '', '如何修改淘宝发货地址', '3', '美乐管理员', '136', '1360047328', '1', '107', '3', '', '1360047328');
INSERT INTO `bf_threads` VALUES ('73', '5', '0', '0', '4', '0', '', '【买家教程】如何在美乐设置买号的收货地址', '3', '美乐管理员', '143', '1360047603', '1', '108', '3', '', '1360047603');
INSERT INTO `bf_threads` VALUES ('74', '1', '2', '3', '10', '5', '#0000ff', '【热烈庆祝】美乐平台真实快递任务功能正式上线！', '3', '美乐管理员', '207', '1358416963', '1', '109', '3', '', '1358416963');
INSERT INTO `bf_threads` VALUES ('83', '7', '0', '0', '0', '0', '', '我发布的任务，有时候会卡住是什么原因啊', '39', 'windows', '132', '1358512081', '3', '146', '59', 'l215250260', '1393500432');
INSERT INTO `bf_threads` VALUES ('76', '1', '2', '3', '0', '1', '#ff6633', '【美乐】用户的需求是我们永远的追求！', '3', '美乐管理员', '245', '1358417142', '2', '119', '39', 'windows', '1358512022');
INSERT INTO `bf_threads` VALUES ('77', '3', '2', '1', '0', '0', '', '什么是门派?', '10', '贝贝霜', '86', '1358767733', '1', '112', '10', '', '1358767733');
INSERT INTO `bf_threads` VALUES ('78', '3', '2', '1', '0', '0', '', '为什么要加入门派？', '10', '贝贝霜', '68', '1302256319', '1', '113', '10', '贝贝霜', '1302256319');
INSERT INTO `bf_threads` VALUES ('79', '3', '2', '1', '0', '0', '', '怎样加入门派？', '10', '贝贝霜', '86', '1358767706', '1', '114', '10', '', '1358767706');
INSERT INTO `bf_threads` VALUES ('84', '9', '0', '0', '5', '0', '', '说点实际的，真的我对游戏非常的无语！@！', '40', 'big米涛', '102', '1358521732', '1', '122', '40', 'big米涛', '1358521732');
INSERT INTO `bf_threads` VALUES ('85', '9', '1', '3', '0', '1', '#ff0000', '【重要提示】还是账户安全问题！', '39', 'windows', '93', '1358607259', '1', '123', '39', 'windows', '1358607259');
INSERT INTO `bf_threads` VALUES ('86', '9', '1', '3', '1', '1', '#ff0000', '关于近期的旺旺监控，觉得这个还可以，发给大家看看', '45', '旺旺tbba', '71', '1358690469', '1', '124', '45', '旺旺tbba', '1358690469');
INSERT INTO `bf_threads` VALUES ('87', '9', '0', '0', '0', '0', '', '2000元十几个小号每天在线十个小时问每个月能挣多少钱啊？', '45', '旺旺tbba', '60', '1358690601', '1', '125', '45', '旺旺tbba', '1358690601');
INSERT INTO `bf_threads` VALUES ('88', '9', '1', '3', '10', '1', '#ff0000', '【必读】一次设置永远远离淘宝客，接手人必读！', '45', '旺旺tbba', '71', '1358691089', '1', '126', '45', '', '1358691089');
INSERT INTO `bf_threads` VALUES ('89', '1', '2', '2', '2', '1', '#ff0000', '【精华】防止小号登录验证码，最好的清理电脑痕迹方法', '39', 'windows', '57', '1358691611', '1', '127', '39', 'windows', '1358691611');
INSERT INTO `bf_threads` VALUES ('90', '9', '0', '0', '0', '0', '', '抢票软件禁而不止 仍有市民用此方式买到票', '42', 'Yi557', '45', '1358692054', '1', '128', '42', 'Yi557', '1358692054');
INSERT INTO `bf_threads` VALUES ('91', '1', '2', '2', '0', '1', '#ff00ff', '【注意！】警惕任务外链接木马网站！', '3', '美乐管理员', '104', '1358693422', '1', '129', '3', '', '1358693422');
INSERT INTO `bf_threads` VALUES ('92', '1', '2', '0', '0', '1', '#00ff00', '【公告】警告发布人与接手人要小心骗子！', '3', '美乐管理员', '139', '1359952807', '1', '130', '3', '', '1359952807');
INSERT INTO `bf_threads` VALUES ('93', '1', '2', '3', '0', '1', '#000000', '【安全刷信誉指南】美乐网安全刷钻手册！', '3', '美乐管理员', '129', '1359989773', '1', '131', '3', '', '1359989773');
INSERT INTO `bf_threads` VALUES ('98', '1', '1', '3', '2', '1', '#990099', '【新功能！】注册淘宝账号必备手机验证码服务，任务举报', '3', '美乐管理员', '33', '1359989334', '1', '138', '3', '', '1359989334');
INSERT INTO `bf_threads` VALUES ('94', '9', '0', '0', '0', '0', '', '想虚拟转实物的卖家需要注意的问题', '39', 'windows', '7', '1359897993', '1', '133', '39', 'windows', '1359897993');
INSERT INTO `bf_threads` VALUES ('95', '9', '0', '0', '0', '0', '', '淘宝分销商好做吗?分销商如何保护自身利益！', '39', 'windows', '16', '1359898143', '2', '135', '51', '懒懒的温暖', '1359898577');
INSERT INTO `bf_threads` VALUES ('96', '4', '0', '0', '2', '0', '', '淘宝小卖家寻找供应商的途径有哪些?', '52', '美乐客服部', '27', '1359898985', '1', '136', '52', '美乐客服部', '1359898985');
INSERT INTO `bf_threads` VALUES ('97', '4', '0', '0', '10', '0', '', '淘宝最牛骂人掌柜以骂人作为最佳推广方式', '52', '美乐客服部', '38', '1359899461', '1', '137', '52', '', '1359899461');
INSERT INTO `bf_threads` VALUES ('99', '1', '2', '0', '2', '1', '#000099', '【公告】关于24/48/72小时任务，接手人淘宝提前好评的处罚通知', '3', '美乐管理员', '17', '1359989555', '1', '139', '3', '美乐管理员', '1359989555');
INSERT INTO `bf_threads` VALUES ('100', '1', '2', '3', '4', '1', '#ff0000', '【注意】关于不使用绑定买号购买任务商品的规定', '3', '美乐管理员', '27', '1359989798', '1', '140', '3', '', '1359989798');
INSERT INTO `bf_threads` VALUES ('102', '3', '0', '0', '2', '0', '', '【新手入门】如何在支付宝转账（新版支付宝）', '3', '美乐管理员', '12', '1360045559', '1', '143', '3', '美乐管理员', '1360045559');
INSERT INTO `bf_threads` VALUES ('103', '6', '0', '0', '3', '0', '', '【重要】淘宝客出没，请发布方谨慎核实货款以免被骗！', '3', '美乐管理员', '14', '1360048433', '1', '144', '3', '美乐管理员', '1360048433');
INSERT INTO `bf_threads` VALUES ('104', '3', '0', '0', '0', '0', '', 'ggggdddddddddddddd', '121', 'ceshi1', '3', '1402044577', '1', '147', '121', 'ceshi1', '1402044577');
INSERT INTO `bf_threads` VALUES ('105', '3', '0', '0', '0', '0', '', 'ddddddddddddddd', '121', 'ceshi1', '3', '1402044807', '1', '148', '121', 'ceshi1', '1402044807');

-- ----------------------------
-- Table structure for `bf_tie_account`
-- ----------------------------
DROP TABLE IF EXISTS `bf_tie_account`;
CREATE TABLE `bf_tie_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_tie_account
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_topup`
-- ----------------------------
DROP TABLE IF EXISTS `bf_topup`;
CREATE TABLE `bf_topup` (
  `id` char(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `money` decimal(9,2) DEFAULT '0.00',
  `money1` decimal(9,2) DEFAULT NULL,
  `money2` decimal(9,2) DEFAULT NULL,
  `mp` decimal(4,3) DEFAULT NULL,
  `credit` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ptimestamp` int(10) unsigned NOT NULL,
  `ctimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `remark1` varchar(64) DEFAULT NULL,
  `remark2` varchar(64) DEFAULT NULL,
  `softIsGet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `i1` (`id`),
  KEY `i2` (`type`,`uid`,`ptimestamp`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_topup
-- ----------------------------
INSERT INTO `bf_topup` VALUES ('20140710032856997517', 'card', '5', 'ceshi2', '600.00', '600.00', '600.00', '0.000', '40', '1', '1404934136', '1404934136', null, null, '0');
INSERT INTO `bf_topup` VALUES ('20140710032429364631', 'card', '4', 'ceshi1', '200.00', '100.00', '100.00', '0.000', '0', '1', '1404933869', '1404933869', null, null, '0');
INSERT INTO `bf_topup` VALUES ('20140710030230019145', 'alipay', '4', 'ceshi1', '0.00', '1120.00', '1120.00', '0.000', '0', '0', '1404932549', '0', '', '11111111111111111111', '0');
INSERT INTO `bf_topup` VALUES ('20140710032256496984', 'card', '4', 'ceshi1', '100.00', '100.00', '100.00', '0.000', '0', '1', '1404933776', '1404933776', null, null, '0');
INSERT INTO `bf_topup` VALUES ('20140710030139945623', 'alipay', '4', 'ceshi1', '0.00', '50.00', '50.00', '0.000', '0', '0', '1404932499', '0', '', '1111111111111111', '0');

-- ----------------------------
-- Table structure for `bf_top_buyer`
-- ----------------------------
DROP TABLE IF EXISTS `bf_top_buyer`;
CREATE TABLE `bf_top_buyer` (
  `uid` int(10) unsigned NOT NULL,
  `lastTop` int(10) unsigned NOT NULL DEFAULT '0',
  `top` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_top_buyer
-- ----------------------------
INSERT INTO `bf_top_buyer` VALUES ('4', '0', '0');
INSERT INTO `bf_top_buyer` VALUES ('5', '0', '0');

-- ----------------------------
-- Table structure for `bf_top_credit`
-- ----------------------------
DROP TABLE IF EXISTS `bf_top_credit`;
CREATE TABLE `bf_top_credit` (
  `uid` int(10) unsigned NOT NULL,
  `lastTop` int(10) unsigned NOT NULL DEFAULT '0',
  `top` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_top_credit
-- ----------------------------
INSERT INTO `bf_top_credit` VALUES ('4', '0', '0');
INSERT INTO `bf_top_credit` VALUES ('5', '0', '0');

-- ----------------------------
-- Table structure for `bf_top_seller`
-- ----------------------------
DROP TABLE IF EXISTS `bf_top_seller`;
CREATE TABLE `bf_top_seller` (
  `uid` int(10) unsigned NOT NULL,
  `lastTop` int(10) unsigned NOT NULL DEFAULT '0',
  `top` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_top_seller
-- ----------------------------
INSERT INTO `bf_top_seller` VALUES ('4', '0', '0');
INSERT INTO `bf_top_seller` VALUES ('5', '0', '0');

-- ----------------------------
-- Table structure for `bf_top_spread`
-- ----------------------------
DROP TABLE IF EXISTS `bf_top_spread`;
CREATE TABLE `bf_top_spread` (
  `uid` int(10) unsigned NOT NULL,
  `lastTop` int(10) unsigned NOT NULL DEFAULT '0',
  `top` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_top_spread
-- ----------------------------
INSERT INTO `bf_top_spread` VALUES ('4', '0', '0');
INSERT INTO `bf_top_spread` VALUES ('5', '0', '0');

-- ----------------------------
-- Table structure for `bf_tyro_task_list`
-- ----------------------------
DROP TABLE IF EXISTS `bf_tyro_task_list`;
CREATE TABLE `bf_tyro_task_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_tyro_task_list
-- ----------------------------

-- ----------------------------
-- Table structure for `bf_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `bf_user_groups`;
CREATE TABLE `bf_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `users` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_user_groups
-- ----------------------------
INSERT INTO `bf_user_groups` VALUES ('1', '1', 'admin', '管理员', '0');
INSERT INTO `bf_user_groups` VALUES ('2', '2', 'moderator', '版主', '0');
INSERT INTO `bf_user_groups` VALUES ('6', '6', 'vip', '一级VIP', '0');
INSERT INTO `bf_user_groups` VALUES ('9', '9', 'ordinary_users', '普通会员', '0');
INSERT INTO `bf_user_groups` VALUES ('3', '3', 'drillmaster', '教官', '1');
INSERT INTO `bf_user_groups` VALUES ('11', '11', 'novice_users', '新手会员', '2');
INSERT INTO `bf_user_groups` VALUES ('10', '10', 'gold_users', '金牌会员', '0');
INSERT INTO `bf_user_groups` VALUES ('8', '8', 'platinum_users', '白金会员', '0');
INSERT INTO `bf_user_groups` VALUES ('7', '7', 'diamond_users', '钻石会员', '0');
INSERT INTO `bf_user_groups` VALUES ('5', '5', 'jewel_vip', '钻石VIP', '0');
INSERT INTO `bf_user_groups` VALUES ('4', '4', 'crown_vip', '皇冠VIP', '0');

-- ----------------------------
-- Table structure for `bf_vars`
-- ----------------------------
DROP TABLE IF EXISTS `bf_vars`;
CREATE TABLE `bf_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `val` text,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_vars
-- ----------------------------
INSERT INTO `bf_vars` VALUES ('1', 'imgSavePath', './img/', '图片上传保存目录');
INSERT INTO `bf_vars` VALUES ('31', 'sys_reg_add_credit', '20', '注册奖励给推荐人的积分');
INSERT INTO `bf_vars` VALUES ('30', 'sys_msg_debug', '0', '短信是否调试');
INSERT INTO `bf_vars` VALUES ('29', 'sys_phone1', '400-600-7788', '官方电话1');
INSERT INTO `bf_vars` VALUES ('28', 'msg_vcode_time', '180', '激活码发送间隔时间(秒)');
INSERT INTO `bf_vars` VALUES ('27', 'msg_vip_price', '0.1', '每条短信会员价格');
INSERT INTO `bf_vars` VALUES ('26', 'msg_price', '0.1', '每条短信价格');
INSERT INTO `bf_vars` VALUES ('25', 'msg_password', 'dakun12366', '短信密码');
INSERT INTO `bf_vars` VALUES ('24', 'msg_username', '90681866', '短信帐号');
INSERT INTO `bf_vars` VALUES ('32', 'sys_pwd2_err_count', '3', '操作码允许输入错误的次数');
INSERT INTO `bf_vars` VALUES ('33', 'msg_user_price', '0.1', '每条短信普通用户价格');
INSERT INTO `bf_vars` VALUES ('34', 'img_avatar', 'img/avatar/', '用户头像保存目录');
INSERT INTO `bf_vars` VALUES ('35', 'sys_credit_post', '3', '发帖奖励积分');
INSERT INTO `bf_vars` VALUES ('36', 'sys_debug', '0', '网站是否为调试状态');
INSERT INTO `bf_vars` VALUES ('37', 'sys_ensure_min_money', '200', '商保最低金额');
INSERT INTO `bf_vars` VALUES ('38', 'sys_ensure_max_money', '2000', '商保最高金额');
INSERT INTO `bf_vars` VALUES ('39', 'sys_time_space_getEid', '1200', '获取真实快递号间隔时间');
INSERT INTO `bf_vars` VALUES ('40', 'mail_server', 'smtp.exmail.qq.com', 'SMTP服务器');
INSERT INTO `bf_vars` VALUES ('41', 'mail_port', '25', 'SMTP端口');
INSERT INTO `bf_vars` VALUES ('42', 'mail_username', 'hainuo@hainuo.info', 'SMTP帐号');
INSERT INTO `bf_vars` VALUES ('43', 'mail_from', 'hainuo@hainuo.info', '邮箱地址');
INSERT INTO `bf_vars` VALUES ('44', 'mail_password', '123456@a', 'SMTP密码');
INSERT INTO `bf_vars` VALUES ('45', 'kill_price', '0.5', '兔粮秒杀');
INSERT INTO `bf_vars` VALUES ('46', 'kill_all', '2000', '兔粮秒杀数量');
INSERT INTO `bf_vars` VALUES ('47', 'v_num', '14', '虚拟任务每页显示数量');
INSERT INTO `bf_vars` VALUES ('48', 'is_v_num', '0', '是否开启虚拟任务,1开,0关');
INSERT INTO `bf_vars` VALUES ('49', 'r_num', '15', '每页真实任务显示数量');

-- ----------------------------
-- Table structure for `bf_vcode_log`
-- ----------------------------
DROP TABLE IF EXISTS `bf_vcode_log`;
CREATE TABLE `bf_vcode_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `mobilephone` varchar(11) DEFAULT NULL,
  `vcode` varchar(6) DEFAULT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_vcode_log
-- ----------------------------
