-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 06 月 14 日 11:54
-- 服务器版本: 5.5.36
-- PHP 版本: 5.4.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
--
-- 表的结构 `tp_agent`
--

CREATE TABLE IF NOT EXISTS `tp_agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(800) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `usercount` int(10) NOT NULL DEFAULT '0',
  `wxusercount` int(10) NOT NULL DEFAULT '0',
  `sitename` varchar(50) NOT NULL DEFAULT '',
  `sitelogo` varchar(200) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `sitetitle` varchar(60) NOT NULL DEFAULT '',
  `siteurl` varchar(100) NOT NULL DEFAULT '',
  `robotname` varchar(40) NOT NULL DEFAULT '',
  `connectouttip` varchar(50) NOT NULL DEFAULT '',
  `needcheckuser` tinyint(1) NOT NULL DEFAULT '0',
  `regneedmp` tinyint(1) NOT NULL DEFAULT '1',
  `reggid` int(10) NOT NULL DEFAULT '0',
  `regvaliddays` mediumint(4) NOT NULL DEFAULT '30',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `metades` varchar(300) NOT NULL DEFAULT '',
  `metakeywords` varchar(200) NOT NULL DEFAULT '',
  `statisticcode` varchar(300) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `alipayaccount` varchar(50) NOT NULL DEFAULT '',
  `alipaypid` varchar(100) NOT NULL DEFAULT '',
  `alipaykey` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(6) NOT NULL DEFAULT '',
  `money` int(10) NOT NULL DEFAULT '0',
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `lastloginip` varchar(26) NOT NULL DEFAULT '',
  `lastlogintime` int(11) NOT NULL DEFAULT '0',
  `wxacountprice` mediumint(4) NOT NULL DEFAULT '0',
  `monthprice` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_agent_expenserecords`
--

CREATE TABLE IF NOT EXISTS `tp_agent_expenserecords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  `orderid` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_agent_function`
--

CREATE TABLE IF NOT EXISTS `tp_agent_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_agent_price`
--

CREATE TABLE IF NOT EXISTS `tp_agent_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `minaccount` int(10) NOT NULL DEFAULT '0',
  `maxaccount` int(10) NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------


ALTER TABLE  `tp_api` ADD `apitoken` varchar(100) NOT NULL DEFAULT '' AFTER `url`,
ADD `noanswer` tinyint(1) NOT NULL DEFAULT '0';



ALTER TABLE  `tp_busines` ADD  `path` varchar(3000) DEFAULT '0',
ADD  `tpid` int(11) DEFAULT '36',
ADD  `conttpid` int(11) DEFAULT '36';

alter table `tp_carmodel` change `guide_price` `guide_price` varchar(50) NOT NULL DEFAULT '',
change `dealer_price` `dealer_price` varchar(50) NOT NULL DEFAULT '',
ADD `type` tinyint(3) NOT NULL DEFAULT '1';

ALTER TABLE  `tp_carset` ADD  `path` varchar(3000) DEFAULT '0',
ADD  `tpid` tinyint(4) DEFAULT '23',
ADD  `conttpid` tinyint(4) DEFAULT '23';


ALTER TABLE  `tp_car_utility` ADD  `token` varchar(50) NOT NULL DEFAULT '';



ALTER TABLE  `tp_company` ADD `area_id` int(11) NOT NULL DEFAULT '0' AFTER `logourl`,
ADD `cate_id` int(11) NOT NULL DEFAULT '0' AFTER `area_id`,
ADD `market_id` int(11) NOT NULL DEFAULT '0' AFTER `cate_id`,
ADD `mark_url` varchar(200) NOT NULL DEFAULT '' AFTER `market_id`,
ADD `add_time` char(10) NOT NULL DEFAULT '0' AFTER `mark_url`;


--
-- 表的结构 `tp_custom_field`
--

CREATE TABLE IF NOT EXISTS `tp_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `filed_option` char(60) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 表的结构 `tp_custom_info`
--

CREATE TABLE IF NOT EXISTS `tp_custom_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(30) NOT NULL,
  `set_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `user_name` char(35) NOT NULL,
  `phone` char(11) NOT NULL,
  `sub_info` text NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_custom_limit`
--

CREATE TABLE IF NOT EXISTS `tp_custom_limit` (
  `limit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enddate` char(10) NOT NULL,
  `sub_total` smallint(6) NOT NULL,
  `today_total` smallint(6) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`limit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 表的结构 `tp_custom_set`
--

CREATE TABLE IF NOT EXISTS `tp_custom_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL,
  `keyword` char(25) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `addtime` char(10) NOT NULL,
  `top_pic` char(100) NOT NULL,
  `succ_info` char(35) NOT NULL,
  `err_info` char(35) NOT NULL,
  `detail` text NOT NULL,
  `limit_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `address` char(80) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------


alter table `tp_diymen_class` change `url` `url` varchar(300) NOT NULL DEFAULT '';



ALTER TABLE  `tp_estate` ADD `path` varchar(3000) DEFAULT '0',
ADD `tpid` tinyint(4) DEFAULT '36',
ADD `conttpid` tinyint(4) DEFAULT '36',
ADD `menu1` varchar(50) NOT NULL,
ADD `menu2` varchar(50) NOT NULL,
ADD `menu3` varchar(50) NOT NULL,
ADD `menu4` varchar(50) NOT NULL,
ADD `menu5` varchar(50) NOT NULL,
ADD `menu6` varchar(50) NOT NULL,
ADD `menu7` varchar(50) NOT NULL,
ADD `menu8` varchar(50) NOT NULL,
ADD `picurl1` varchar(500) NOT NULL,
ADD `picurl2` varchar(500) NOT NULL,
ADD `picurl3` varchar(500) NOT NULL,
ADD `picurl4` varchar(500) NOT NULL,
ADD `picurl5` varchar(500) NOT NULL,
ADD `picurl6` varchar(500) NOT NULL,
ADD `picurl7` varchar(500) NOT NULL,
ADD `picurl8` varchar(500) NOT NULL;



--
-- 表的结构 `tp_funintro`
--

CREATE TABLE IF NOT EXISTS `tp_funintro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


alter table `tp_img` change `info` `info` longtext NOT NULL;


-- 表的结构 `tp_img_multi`
--

CREATE TABLE IF NOT EXISTS `tp_img_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '',
  `imgs` varchar(100) DEFAULT '',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- 表的结构 `tp_market`
--

CREATE TABLE IF NOT EXISTS `tp_market` (
  `market_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `title` char(30) NOT NULL,
  `keyword` char(20) NOT NULL,
  `tel` char(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `line` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `logo_pic` char(100) NOT NULL,
  `token` char(20) NOT NULL,
  `market_index_tpl` mediumint(9) NOT NULL,
  `tenant_index_tpl` mediumint(9) NOT NULL,
  `tenant_list_tpl` mediumint(9) NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



-- 表的结构 `tp_market_area`
--

CREATE TABLE IF NOT EXISTS `tp_market_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` char(35) NOT NULL,
  `manage` char(50) NOT NULL,
  `area_pic` char(100) NOT NULL,
  `area_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



-- 表的结构 `tp_market_cate`
--

CREATE TABLE IF NOT EXISTS `tp_market_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` char(35) NOT NULL,
  `cate_pic` char(100) NOT NULL,
  `cate_intro` varchar(200) NOT NULL,
  `cate_pid` int(11) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



--
-- 表的结构 `tp_market_nav`
--

CREATE TABLE IF NOT EXISTS `tp_market_nav` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` char(35) NOT NULL,
  `nav_pic` varchar(200) NOT NULL,
  `nav_link` varchar(200) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



--
-- 表的结构 `tp_market_park`
--

CREATE TABLE IF NOT EXISTS `tp_market_park` (
  `park_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `park_name` char(35) NOT NULL,
  `park_num` tinyint(4) NOT NULL,
  `park_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



--
-- 表的结构 `tp_market_slide`
--

CREATE TABLE IF NOT EXISTS `tp_market_slide` (
  `slide_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_title` char(35) NOT NULL,
  `slide_url` char(100) NOT NULL,
  `slide_link` char(80) NOT NULL,
  `market_id` int(11) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--



ALTER TABLE  `tp_medical_set` ADD `menu9` varchar(50) NOT NULL DEFAULT '' AFTER `menu8`,
ADD  `menu10` varchar(50) NOT NULL DEFAULT '' AFTER `menu9`,
ADD  `picurl1` varchar(200) NOT NULL DEFAULT '' AFTER `menu10`,
ADD  `picurl2` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl3` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl4` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl5` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl6` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl7` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl8` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl9` varchar(200) NOT NULL DEFAULT '',
ADD  `picurl10` varchar(200) NOT NULL DEFAULT '';



ALTER TABLE  `tp_medical_user` ADD `paid` tinyint(4) DEFAULT '0',
ADD  `orderid` bigint(20) DEFAULT NULL,
ADD  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
ADD  `orderName` varchar(200) NOT NULL DEFAULT '',
ADD  `txt3name` varchar(50) NOT NULL DEFAULT '',
ADD  `txt4name` varchar(50) NOT NULL DEFAULT '',
ADD  `txt5name` varchar(50) NOT NULL DEFAULT '',
ADD  `select4name` varchar(50) NOT NULL DEFAULT '',
ADD  `select5name` varchar(50) NOT NULL DEFAULT '';




-- 表的结构 `tp_member_card_custom`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_custom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wechaname` tinyint(4) NOT NULL DEFAULT '1',
  `tel` tinyint(4) NOT NULL DEFAULT '1',
  `truename` tinyint(4) NOT NULL DEFAULT '0',
  `qq` tinyint(4) NOT NULL DEFAULT '0',
  `paypass` tinyint(4) NOT NULL DEFAULT '1',
  `portrait` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `bornyear` tinyint(4) NOT NULL DEFAULT '0',
  `bornmonth` tinyint(4) NOT NULL DEFAULT '0',
  `bornday` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



--
-- 表的结构 `tp_member_card_focus`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `token` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;




--
-- 表的结构 `tp_member_card_pay_record`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` char(30) NOT NULL,
  `ordername` varchar(1000) NOT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `paytype` char(30) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `paytime` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT 'Card',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;



ALTER TABLE  `tp_member_card_set` ADD   `recharge` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/recharge.jpg',
ADD `payrecord` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/payrecord.jpg';



alter table `tp_member_card_vip` change `info` `info` text NOT NULL;


-- 表的结构 `tp_photo_log`
--

CREATE TABLE IF NOT EXISTS `tp_photo_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



-- 表的结构 `tp_product_comment`
--

CREATE TABLE IF NOT EXISTS `tp_product_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `cartid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `detailid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `truename` varchar(20) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `content` varchar(500) NOT NULL,
  `productinfo` varchar(80) NOT NULL,
  `score` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `isdelete` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `token` (`token`),
  KEY `cartid` (`cartid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;







-- 表的结构 `tp_qcloud_user`
--

CREATE TABLE IF NOT EXISTS `tp_qcloud_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL,
  `token` char(255) NOT NULL,
  `mpname` char(60) NOT NULL,
  `mporiginalid` char(60) NOT NULL,
  `mpid` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



--
-- 表的结构 `tp_research`
--

CREATE TABLE IF NOT EXISTS `tp_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `logourl` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_research_answer`
--

CREATE TABLE IF NOT EXISTS `tp_research_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_research_question`
--

CREATE TABLE IF NOT EXISTS `tp_research_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_research_result`
--

CREATE TABLE IF NOT EXISTS `tp_research_result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `aids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `wecha_id` (`wecha_id`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------


ALTER TABLE  `tp_reservation` ADD `price` decimal(10,2) NOT NULL DEFAULT '0.00';


ALTER TABLE  `tp_school_set_index` ADD `menu9` varchar(50) NOT NULL DEFAULT '' AFTER `menu8`,
ADD `menu10` varchar(50) NOT NULL DEFAULT '' AFTER `menu9`,
ADD `path` varchar(3000) NOT NULL DEFAULT '0' AFTER `menu6_id`,
ADD `tpid` int(11) DEFAULT NULL,
ADD `conttpid` int(11) DEFAULT NULL,
ADD `picurl1` varchar(200) NOT NULL DEFAULT '',
ADD `picurl2` varchar(200) NOT NULL DEFAULT '',
ADD `picurl3` varchar(200) NOT NULL DEFAULT '',
ADD `picurl4` varchar(200) NOT NULL DEFAULT '',
ADD `picurl5` varchar(200) NOT NULL DEFAULT '',
ADD `picurl6` varchar(200) NOT NULL DEFAULT '',
ADD `picurl7` varchar(200) NOT NULL DEFAULT '',
ADD `picurl8` varchar(200) NOT NULL DEFAULT '',
ADD `picurl9` varchar(200) NOT NULL DEFAULT '',
ADD `picurl10` varchar(200) NOT NULL DEFAULT '';

ALTER TABLE  `tp_router_config` ADD `password` varchar(60) NOT NULL DEFAULT '' AFTER `title`;

ALTER TABLE  `tp_shake_rt` ADD `is_scene` enum('0','1') NOT NULL;



--
-- 表的结构 `tp_sign_conf`
--

CREATE TABLE IF NOT EXISTS `tp_sign_conf` (
  `conf_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `use` enum('0','1') NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `stair` tinyint(4) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sign_in`
--

CREATE TABLE IF NOT EXISTS `tp_sign_in` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(60) NOT NULL,
  `user_name` char(50) NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `time` char(11) NOT NULL,
  `continue` tinyint(2) NOT NULL,
  `phone` char(11) NOT NULL,
  `set_id` int(11) NOT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sign_set`
--

CREATE TABLE IF NOT EXISTS `tp_sign_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` char(25) NOT NULL,
  `title` char(60) NOT NULL,
  `content` varchar(250) NOT NULL,
  `token` char(35) NOT NULL,
  `reply_img` char(150) NOT NULL,
  `top_pic` char(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


ALTER TABLE  `tp_vote` ADD `count` int(11) NOT NULL DEFAULT '0';

ALTER TABLE  `tp_userinfo` ADD `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
ADD `paypass` varchar(32) DEFAULT NULL;

ALTER TABLE  `tp_users` ADD `openid` varchar(80) NOT NULL DEFAULT '',
ADD `remark` varchar(200) NOT NULL DEFAULT '';


ALTER TABLE  `tp_wall_member` ADD `act_id` int(11) NOT NULL,
ADD `act_type` enum('1','2','3') NOT NULL;


ALTER TABLE  `tp_wall_message` ADD `is_scene` enum('0','1') NOT NULL;

ALTER TABLE  `tp_case` ADD `agentid` int(10) NOT NULL DEFAULT '0';
ALTER TABLE  `tp_links` ADD `agentid` int(10) NOT NULL DEFAULT '0';
ALTER TABLE  `tp_users` ADD `agentid` int(10) NOT NULL DEFAULT '0';
ALTER TABLE  `tp_user_group` ADD `agentid` int(10) NOT NULL DEFAULT '0';


-- 表的结构 `tp_wall_prize`
--

CREATE TABLE IF NOT EXISTS `tp_wall_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `pname` char(40) NOT NULL,
  `pic` char(100) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `token` char(20) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


ALTER TABLE  `tp_wall_prize_record` ADD `sceneid` int(11) NOT NULL;


--
-- 表的结构 `tp_wall_supperzzle`
--

CREATE TABLE IF NOT EXISTS `tp_wall_supperzzle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sceneid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;



-- 表的结构 `tp_wechat_scene`
--

CREATE TABLE IF NOT EXISTS `tp_wechat_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL,
  `title` char(50) NOT NULL,
  `pic` char(100) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `wall_id` int(10) unsigned NOT NULL,
  `vote_id` char(25) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `open_vote` enum('0','1') NOT NULL,
  `open_zzle` enum('0','1') NOT NULL,
  `open_lottery` enum('0','1') NOT NULL,
  `token` char(20) NOT NULL,
  `logo` char(100) NOT NULL,
  `background` char(100) NOT NULL,
  `qrcode` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


ALTER TABLE  `tp_wxuser` ADD `pigsecret` varchar(150) NOT NULL DEFAULT '' AFTER `token`,
ADD `openphotoprint` tinyint(1) NOT NULL DEFAULT '0',
ADD `freephotocount` mediumint(4) NOT NULL DEFAULT '3',
ADD `oauth` tinyint(1) NOT NULL DEFAULT '0';



--
-- 表的结构 `tp_system_info`
--

CREATE TABLE IF NOT EXISTS `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;