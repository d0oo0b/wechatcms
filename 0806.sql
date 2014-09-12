-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 08 月 06 日 11:46
-- 服务器版本: 5.5.35
-- PHP 版本: 5.3.28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `pig62`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_access`
--

CREATE TABLE IF NOT EXISTS `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_adma`
--

CREATE TABLE IF NOT EXISTS `tp_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_adma`
--

INSERT INTO `tp_adma` (`id`, `uid`, `token`, `url`, `copyright`, `info`, `title`) VALUES
(1, 86, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', '© 2001-2013 某某微信版权所有', '微', '集货地源码');

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_agent`
--

INSERT INTO `tp_agent` (`id`, `name`, `intro`, `mp`, `usercount`, `wxusercount`, `sitename`, `sitelogo`, `qrcode`, `sitetitle`, `siteurl`, `robotname`, `connectouttip`, `needcheckuser`, `regneedmp`, `reggid`, `regvaliddays`, `qq`, `email`, `metades`, `metakeywords`, `statisticcode`, `copyright`, `alipayaccount`, `alipaypid`, `alipaykey`, `password`, `salt`, `money`, `moneybalance`, `time`, `endtime`, `lastloginip`, `lastlogintime`, `wxacountprice`, `monthprice`) VALUES
(1, 'angettest', '一年高级代理', '13888888888', 0, 59, '', '', '', '', '', '', '', 0, 1, 0, 30, '123456', '', '', '', '', '', '', '', '', 'd9e24a9cdf6acae5e82959ceb267ca1a', '372531', 100, 30100, 1406344352, 1437840000, '', 0, 300, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_agent_expenserecords`
--

INSERT INTO `tp_agent_expenserecords` (`id`, `agentid`, `amount`, `orderid`, `des`, `status`, `time`) VALUES
(1, 1, 100, '1_1406348203', '充值100元', 1, 1406348203);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- 转存表中的数据 `tp_agent_function`
--

INSERT INTO `tp_agent_function` (`id`, `gid`, `usenum`, `name`, `funname`, `info`, `isserve`, `status`, `agentid`) VALUES
(1, 1, 0, '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', 1, 1, 1),
(2, 1, 0, '糗事', 'qiushi', '糗事　直接发送糗事', 1, 1, 1),
(3, 1, 0, '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', 1, 1, 1),
(4, 4, 0, '朗读', 'langdu', '朗读＋关键词　例：朗读pigcms多用户营销系统', 1, 1, 1),
(5, 3, 0, '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', 1, 1, 1),
(6, 1, 0, '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', 1, 1, 1),
(7, 1, 0, '笑话', 'xiaohua', '笑话　直接发送笑话', 1, 1, 1),
(8, 2, 0, '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', 1, 1, 1),
(9, 1, 0, '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', 1, 1, 1),
(10, 1, 0, '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', 1, 1, 1),
(11, 3, 0, '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', 1, 1, 1),
(12, 2, 0, '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', 1, 1, 1),
(13, 2, 0, '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', 1, 1, 1),
(14, 2, 0, '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', 1, 1, 1),
(15, 2, 0, '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', 1, 1, 1),
(16, 1, 0, '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912', 1, 1, 1),
(17, 3, 0, '音乐查询', 'yinle', '音乐＋音乐名 ?例：音乐爱你一万年', 1, 1, 1),
(18, 1, 0, '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', 1, 1, 1),
(19, 4, 0, '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', 1, 1, 1),
(20, 3, 0, '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', 2, 1, 1),
(21, 4, 0, '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', 2, 1, 1),
(22, 1, 0, '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', 1, 1, 1),
(23, 4, 0, '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', 1, 1, 1),
(24, 1, 0, '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', 1, 1, 1),
(25, 3, 0, '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', 2, 1, 1),
(26, 2, 0, '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', 1, 1, 1),
(27, 4, 0, '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', 2, 1, 1),
(28, 1, 0, '3G首页', 'shouye', '输入首页,访问微3g 网站', 1, 1, 1),
(29, 1, 0, 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', 1, 1, 1),
(30, 4, 0, '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', 1, 1, 1),
(31, 4, 0, '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', 2, 1, 1),
(32, 1, 0, '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', 1, 1, 1),
(33, 2, 0, '域名whois查询', '', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名xianghebbs.com', 1, 1, 1),
(34, 4, 0, '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', 1, 1, 1),
(35, 2, 0, '无线网络订餐', 'dx', '无线网络订餐', 1, 1, 1),
(36, 2, 0, '在线商城', 'shop', '在线商城,购买系统', 1, 1, 1),
(37, 2, 0, '在线团购系统', 'etuan', '在线团购系统', 1, 1, 1),
(38, 4, 0, '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', 1, 1, 1),
(39, 4, 0, '刮刮卡', 'gua2', '刮刮卡抽奖活动', 1, 1, 1),
(40, 4, 0, '全景', 'panorama', '', 1, 1, 1),
(41, 4, 0, '婚庆喜帖', 'wedding', '', 2, 1, 1),
(42, 4, 0, '投票', 'vote', '', 2, 1, 1),
(43, 4, 0, '房产', 'estate', '', 2, 1, 1),
(44, 4, 0, '3G相册', 'album', '', 1, 1, 1),
(45, 4, 0, '砸金蛋', 'GoldenEgg', '', 2, 1, 1),
(46, 4, 0, '水果机', 'LuckyFruit', '', 2, 1, 1),
(48, 4, 0, '微汽车', 'car', '', 2, 1, 1),
(49, 4, 0, '微信墙', 'wall', '', 1, 1, 1),
(50, 4, 0, '摇一摇', 'shake', '', 1, 1, 1),
(51, 4, 0, '微论坛', 'forum', '', 1, 1, 1),
(52, 4, 0, '微医疗', 'medical', '', 1, 1, 1),
(54, 4, 0, '分享统计', 'share', '', 1, 1, 1),
(55, 4, 0, '酒店宾馆', 'hotel', '', 1, 1, 1),
(56, 4, 0, '微教育', 'school', '', 1, 1, 1),
(57, 4, 0, '照片墙', 'Zhaopianwall', '活动开启后，在聊天窗口中直接发送图片，即可图片上墙！', 2, 1, 1),
(58, 4, 0, '微名片', 'Vcard', '微名片', 2, 1, 1),
(59, 4, 0, '高级模板', 'advanceTpl', '高级模板', 2, 1, 1),
(60, 1, 0, '一站到底', 'Dati', '', 1, 1, 1),
(61, 4, 0, '新版预约', 'Yuyue', '新版预约', 2, 1, 1),
(62, 4, 0, '留言板', 'message', '', 2, 1, 1),
(63, 4, 0, '群发消息', 'message', '', 1, 1, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_agent_price`
--

INSERT INTO `tp_agent_price` (`id`, `agentid`, `minaccount`, `maxaccount`, `price`, `name`) VALUES
(1, 0, 0, 100, 30000, '100套餐');

-- --------------------------------------------------------

--
-- 表的结构 `tp_alipay_config`
--

CREATE TABLE IF NOT EXISTS `tp_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_alipay_config`
--

INSERT INTO `tp_alipay_config` (`token`, `paytype`, `name`, `pid`, `key`, `partnerkey`, `appsecret`, `appid`, `paysignkey`, `partnerid`, `open`) VALUES
('ekfdng1401977502', 'weixin', '', '', '', 'a3d80dd6e74a1771773bb5eaba6b74e9', 'a3d80dd6e74a1771773bb5eaba6b74e9', 'wxa89444fdf275a856', 'a3d80dd6e74a1771773bb5eaba6b74e9', 'wxa89444fdf275a856', 1),
('vmwylz1404883194', 'alipay', 'tianxinyue687@sohu.com', '2088002221461301', 'k20zn91tk9rufye91y60b4oycsq31ck9', '', '', '', '', '', 1),
('shibnn1405586353', 'tenpayComputer', '', '', '', 'a3d80dd6e74a1771773bb5eaba6b74e9', 'a3d80dd6e74a1771773bb5eaba6b74e9', 'wxa89444fdf275a856', '345317h754276', '345317h754276', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_api`
--

CREATE TABLE IF NOT EXISTS `tp_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `url` varchar(100) NOT NULL,
  `apitoken` varchar(100) NOT NULL DEFAULT '',
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` text NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `noanswer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_api`
--

INSERT INTO `tp_api` (`id`, `uid`, `token`, `keyword`, `type`, `url`, `apitoken`, `number`, `order`, `is_colation`, `colation_keyword`, `time`, `status`, `noanswer`) VALUES
(1, 23, 'owikav1406947345', '微营', 1, 'http://42.96.205.246/api.php?hash=GBt4B', 'NDz5h3EW5wfHJojb5bdeST83job44bkH', 0, 0, 1, '', 1406947402, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_areply`
--

CREATE TABLE IF NOT EXISTS `tp_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_areply`
--

INSERT INTO `tp_areply` (`id`, `keyword`, `content`, `uid`, `uname`, `createtime`, `updatetime`, `token`, `home`) VALUES
(1, '', '你好', 23, '', '1406120903', '', 'punypv1406120801', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_article`
--

CREATE TABLE IF NOT EXISTS `tp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `description` char(255) NOT NULL,
  `author` varchar(15) NOT NULL,
  `form` varchar(30) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `content` text NOT NULL,
  `imgs` char(40) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_attribute`
--

CREATE TABLE IF NOT EXISTS `tp_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品的属性' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_attribute`
--

INSERT INTO `tp_attribute` (`id`, `token`, `catid`, `name`, `value`) VALUES
(1, 'shibnn1405586353', 11, '服务', 'SEVER');

-- --------------------------------------------------------

--
-- 表的结构 `tp_behavior`
--

CREATE TABLE IF NOT EXISTS `tp_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=213 ;

--
-- 转存表中的数据 `tp_behavior`
--

INSERT INTO `tp_behavior` (`id`, `fid`, `token`, `openid`, `date`, `enddate`, `model`, `num`, `keyword`, `type`) VALUES
(1, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402015716, 'chat', 1, 'Yyy13511350189', 0),
(2, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402015732, 'Shake', 1, 'yyy', 0),
(3, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402015772, 'Shake', 3, '摇一摇', 0),
(4, 2, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402031965, 'zhaopianwall', 1, '照片墙', 0),
(5, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402032427, 'Wall', 1, '微现场', 0),
(6, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402034386, 'Member_card_set', 1, '会员卡', 0),
(7, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402037257, 'Wedding', 2, '衷', 0),
(8, 1, 'ekfdng1401977502', 'o48e9txwnnJNBIoLGdkCTGketQDA', '2014-06-06', 1402038919, 'follow', 0, '用户关注', 0),
(9, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402058591, 'chat', 1, 'yyy', 0),
(10, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402058769, 'home', 0, '首页', 1),
(11, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402060262, 'chat', 0, '{siteUrl}/index.php?g=Wap&m=Ph', 0),
(12, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-06', 1402060917, 'Wall', 0, '微', 0),
(13, 1, 'ekfdng1401977502', 'o48e9t3VtUFW-RKH9GwtNjevL1jY', '2014-06-08', 1402218065, 'follow', 0, '用户关注', 0),
(14, 1, 'ekfdng1401977502', 'o48e9t3VtUFW-RKH9GwtNjevL1jY', '2014-06-08', 1402218171, 'Member_card_set', 0, '会员卡', 0),
(15, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-11', 1402466422, 'chat', 0, '水果', 0),
(16, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-11', 1402466438, 'Lottery', 0, '水果', 0),
(17, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-06-11', 1402467006, 'Recipe', 0, '食谱', 0),
(18, 1, 'bwvmro1404199686', 'opqOLt5SpEspMCjP6PGsMewSJq5A', '2014-07-01', 1404200350, 'follow', 0, '用户关注', 0),
(19, 0, 'bwvmro1404199686', 'opqOLt5SpEspMCjP6PGsMewSJq5A', '2014-07-01', 1404200377, 'chat', 0, '微餐饮', 0),
(20, 0, 'bwvmro1404199686', 'opqOLt5SpEspMCjP6PGsMewSJq5A', '2014-07-01', 1404200382, 'chat', 0, '微官网', 0),
(21, 0, 'bwvmro1404199686', 'opqOLt5SpEspMCjP6PGsMewSJq5A', '2014-07-01', 1404200412, 'home', 0, '首页', 1),
(22, 0, 'bwvmro1404199686', 'opqOLt5SpEspMCjP6PGsMewSJq5A', '2014-07-03', 1404399258, 'chat', 0, '用户关注', 0),
(23, 0, 'tlpqmn1404450757', 'oWPYdt-Qj1fxjMIlgKAK_1uz1KAY', '2014-07-04', 1404454776, 'home', 1, '首页', 1),
(24, 1, 'tlpqmn1404450757', 'oWPYdt-Qj1fxjMIlgKAK_1uz1KAY', '2014-07-04', 1404461698, 'follow', 0, '用户关注', 0),
(25, 0, 'bwvmro1404199686', 'opqOLt6WXOG-HKsPEWcMIGNyMzjg', '2014-07-04', 1404467895, 'chat', 0, '用户关注', 0),
(26, 1, 'vmwylz1404883194', 'opqOLt5SpEspMCjP6PGsMewSJq5A', '2014-07-10', 1404954087, 'follow', 0, '用户关注', 0),
(27, 1, 'vmwylz1404883194', 'opqOLt_JzmX6rFjN-EhknBAE8YFc', '2014-07-10', 1404957303, 'follow', 0, '用户关注', 0),
(28, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-12', 1405151844, 'home', 0, '首页', 1),
(29, 1, 'vmwylz1404883194', 'opqOLtyGJG0vDR60fnhS2UJA4eD0', '2014-07-14', 1405301750, 'follow', 0, '用户关注', 0),
(30, 1, 'vmwylz1404883194', 'opqOLtyl_y7XfXAhNZ9jN_BZ6vUk', '2014-07-14', 1405348920, 'follow', 0, '用户关注', 0),
(31, 0, 'hzddpv1405521492', 'obxQHt6xC2WZBCp6mqWqD_sB-s64', '2014-07-16', 1405523453, 'home', 0, '首页', 1),
(32, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559026, 'chat', 0, '天气预报', 0),
(33, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559039, 'chat', 0, '天气预报 北京', 0),
(34, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559055, 'chat', 0, '北京天气预报', 0),
(35, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559068, 'chat', 0, '北京 天气预报', 0),
(36, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559082, 'chat', 0, '糗事', 0),
(37, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559122, 'chat', 0, '你好', 0),
(38, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559132, 'chat', 0, '你在干什么', 0),
(39, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559146, 'chat', 0, '你的主人是谁', 0),
(40, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559276, 'chat', 0, '微信墙', 0),
(41, 3, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405559442, 'Wall', 1, '上墙', 0),
(42, 0, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405560373, 'chat', 0, '微论坛', 0),
(43, 1, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2014-07-17', 1405560669, 'Router_config', 1, '我要上网', 0),
(44, 0, 'tjmmox1405563308', 'oVxJktyr88Tfoqzl48_SMYjsrg-4', '2014-07-17', 1405570697, 'chat', 3, '123', 0),
(45, 0, 'tjmmox1405563308', 'oVxJktyr88Tfoqzl48_SMYjsrg-4', '2014-07-17', 1405570949, 'home', 0, '首页', 1),
(46, 0, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-17', 1405586598, 'home', 0, '首页', 1),
(47, 0, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-17', 1405586853, 'chat', 0, '用户关注', 0),
(48, 1, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-17', 1405586921, 'follow', 0, '用户关注', 0),
(49, 0, 'hzddpv1405521492', 'obxQHt6xC2WZBCp6mqWqD_sB-s64', '2014-07-18', 1405613834, 'chat', 0, '花店', 0),
(50, 0, 'hzddpv1405521492', 'obxQHt6xC2WZBCp6mqWqD_sB-s64', '2014-07-18', 1405614134, 'chat', 0, '餐饮', 0),
(51, 2, 'gcccbf1405935616', 'oOn2Xjg9oVxzbwNTTQBi3OjzO8qU', '2014-07-21', 1405935907, 'Router_config', 0, 'wifi', 0),
(52, 0, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', '2014-07-22', 1405958525, 'chat', 0, '？？', 0),
(53, 0, 'xjclzx1405958021', 'oWkrajoQfdtqBXKTUm94pwJeHPbY', '2014-07-22', 1405958554, 'chat', 2, '晚会', 0),
(54, 4, 'xjclzx1405958021', 'oWkrajoQfdtqBXKTUm94pwJeHPbY', '2014-07-22', 1405958563, 'Wall', 1, '111', 0),
(55, 1, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', '2014-07-22', 1405958564, 'Panorama', 0, '一教', 0),
(56, 4, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', '2014-07-22', 1405958714, 'Wall', 1, '111', 0),
(57, 0, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', '2014-07-22', 1405958764, 'chat', 0, '什一\n', 0),
(58, 0, 'xjclzx1405958021', 'oWkrajoQfdtqBXKTUm94pwJeHPbY', '2014-07-22', 1405958897, 'chat', 0, '！', 0),
(59, 0, 'xjclzx1405958021', 'oWkrajoQfdtqBXKTUm94pwJeHPbY', '2014-07-22', 1405959135, 'chat', 0, '发不出？', 0),
(60, 0, 'xjclzx1405958021', 'oWkrajoQfdtqBXKTUm94pwJeHPbY', '2014-07-22', 1405959145, 'chat', 0, '什么', 0),
(61, 6, 'zrkepg1406003661', 'o4kZ4s7XAi0ahnUtU36aUTYsXMiE', '2014-07-22', 1406003870, 'Member_card_set', 0, '会员卡', 0),
(62, 1, 'iihybk1406007981', 'o8FL_jjMy_G-Bsapv_M_vclhqkKU', '2014-07-22', 1406008266, 'Text', 0, '用户关注', 0),
(63, 1, 'iihybk1406007981', 'o8FL_jjMy_G-Bsapv_M_vclhqkKU', '2014-07-22', 1406008279, 'follow', 0, '用户关注', 0),
(64, 1, 'iihybk1406007981', 'o8FL_jjMy_G-Bsapv_M_vclhqkKU', '2014-07-22', 1406008297, 'Text', 0, '147', 0),
(65, 0, 'punypv1406120801', 'oKzsIj6FRYxG_t-TBGjq4ljYGS88', '2014-07-23', 1406121016, 'help', 0, '帮助', 1),
(66, 0, 'punypv1406120801', 'oKzsIj6FRYxG_t-TBGjq4ljYGS88', '2014-07-23', 1406122565, 'chat', 0, 'http://www.466777.com/index.php?g=Wap&m=Repast&a=selectTable', 0),
(67, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-23', 1406130907, 'chat', 0, '你还', 0),
(68, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-23', 1406130943, 'chat', 0, '你好', 0),
(69, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-23', 1406130948, 'chat', 0, '？？？？', 0),
(70, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-23', 1406130953, 'chat', 0, '糗事', 0),
(71, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-23', 1406130962, 'chat', 0, '计算器', 0),
(72, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-23', 1406130991, 'home', 0, '首页', 1),
(73, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-23', 1406131016, 'chat', 0, '歌词朋友', 0),
(74, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-24', 1406133146, 'chat', 0, '你好', 0),
(75, 0, 'wwvwfz1406130726', 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', '2014-07-24', 1406133155, 'chat', 0, '？？', 0),
(76, 0, 'bqtxnv1406167321', 'oZtdUuODeSeDg5gLixUjE6NfY_FQ', '2014-07-24', 1406172914, 'chat', 0, '您', 0),
(77, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406184855, 'home', 1, '首页', 1),
(78, 1, 'bqtxnv1406167321', 'oZtdUuODeSeDg5gLixUjE6NfY_FQ', '2014-07-24', 1406185397, 'Schoolset', 0, '微教育', 0),
(79, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406185499, 'chat', 0, '哈哈哈', 0),
(80, 0, 'bqtxnv1406167321', 'oZtdUuODeSeDg5gLixUjE6NfY_FQ', '2014-07-24', 1406186023, 'home', 1, '首页', 1),
(81, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406186173, 'chat', 0, '糗事', 0),
(82, 0, 'bqtxnv1406167321', 'oZtdUuODeSeDg5gLixUjE6NfY_FQ', '2014-07-24', 1406187118, 'chat', 0, '游戏1', 0),
(83, 4, 'kogqns1406184632', 'oCSt5uEEzEmGvxkTdUNE9jQ7C8YI', '2014-07-24', 1406187479, 'Img', 0, '用户关注', 0),
(84, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406188481, 'chat', 2, '砸金蛋', 0),
(85, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406188491, 'chat', 0, '活动', 0),
(86, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406188579, 'chat', 0, '摇一摇', 0),
(87, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406188805, 'chat', 0, '摇一摇13588888888', 0),
(88, 0, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406188842, 'chat', 1, '9团砸金蛋', 0),
(89, 1, 'kogqns1406184632', 'oCSt5uM4eVjg1VtVdV6-MhhUZS9c', '2014-07-24', 1406189219, 'follow', 0, '用户关注', 0),
(90, 0, 'kogqns1406184632', 'oCSt5uM4eVjg1VtVdV6-MhhUZS9c', '2014-07-24', 1406189238, 'chat', 0, '摇一摇13333333333', 0),
(91, 0, 'kogqns1406184632', 'oCSt5uM4eVjg1VtVdV6-MhhUZS9c', '2014-07-24', 1406189266, 'home', 0, '首页', 1),
(92, 4, 'kogqns1406184632', 'oCSt5uM4eVjg1VtVdV6-MhhUZS9c', '2014-07-24', 1406189403, 'Lottery', 0, '砸金蛋', 0),
(93, 4, 'kogqns1406184632', 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', '2014-07-24', 1406189512, 'Lottery', 0, '砸金蛋', 0),
(94, 0, 'bqtxnv1406167321', 'oZtdUuEHiw1tU4skZKDMlXvdUTE8', '2014-07-24', 1406190773, 'chat', 0, '微信', 0),
(95, 0, 'bqtxnv1406167321', 'oZtdUuEHiw1tU4skZKDMlXvdUTE8', '2014-07-24', 1406190779, 'home', 0, '首页', 1),
(96, 4, 'achbur1406208229', 'oCS7gjkP2ktVR92v_GMrvS3ZPyJM', '2014-07-24', 1406208737, 'Shake', 0, '摇一摇', 0),
(97, 0, 'bqtxnv1406167321', 'oZtdUuM6E9oA3N3OvlG878JCbRcM', '2014-07-25', 1406252771, 'home', 0, '首页', 1),
(98, 1, 'bqtxnv1406167321', 'oZtdUuEHiw1tU4skZKDMlXvdUTE8', '2014-07-25', 1406262612, 'Schoolset', 0, '微教育', 0),
(99, 1, 'bqtxnv1406167321', 'oZtdUuODeSeDg5gLixUjE6NfY_FQ', '2014-07-25', 1406262657, 'Schoolset', 0, '微教育', 0),
(100, 8, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-26', 1406355105, 'Member_card_set', 0, '会员卡', 0),
(101, 1, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-26', 1406359510, 'Business', 1, '乐橙', 0),
(102, 1, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-26', 1406359738, 'Business', 0, '婚庆', 0),
(103, 2, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-26', 1406359799, 'Business', 1, '花店', 0),
(104, 2, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-26', 1406359921, 'Sign', 1, '签到', 0),
(105, 1, 'shibnn1405586353', 'o48e9t0pf5ZWzogSaR3X_rvvz5_I', '2014-07-26', 1406368964, 'follow', 0, '用户关注', 0),
(106, 0, 'ksmbyh1406371219', 'oWoL6juwYeNSs_gei_xj-h3vhO-k', '2014-07-26', 1406371649, 'chat', 0, '用户关注', 0),
(107, 1, 'ksmbyh1406371219', 'oWoL6juwYeNSs_gei_xj-h3vhO-k', '2014-07-26', 1406371666, 'follow', 0, '用户关注', 0),
(108, 0, 'ksmbyh1406371219', 'oWoL6juwYeNSs_gei_xj-h3vhO-k', '2014-07-26', 1406371724, 'chat', 0, '粉丝互动', 0),
(109, 0, 'ksmbyh1406371219', 'oWoL6jvAl3B8XCMbQpgO-H-8EKy8', '2014-07-26', 1406372174, 'chat', 2, '粉丝互动', 0),
(110, 0, 'ksmbyh1406371219', 'oWoL6jvAl3B8XCMbQpgO-H-8EKy8', '2014-07-26', 1406372175, 'chat', 3, '珠宝展示', 0),
(111, 0, 'ksmbyh1406371219', 'oWoL6jvAl3B8XCMbQpgO-H-8EKy8', '2014-07-26', 1406372246, 'chat', 1, '公司简介', 0),
(112, 12, 'ksmbyh1406371219', 'oWoL6joPLI5V2gSi5at_trfYZ7Jk', '2014-07-26', 1406374598, 'Product', 0, '用户关注', 0),
(113, 1, 'ksmbyh1406371219', 'oWoL6jsBk4KGQCbmh6oLQ5sDlC18', '2014-07-26', 1406376025, 'follow', 0, '用户关注', 0),
(114, 12, 'ksmbyh1406371219', 'oWoL6jsBk4KGQCbmh6oLQ5sDlC18', '2014-07-26', 1406376960, 'Product', 0, '用户关注', 0),
(115, 1, 'ksmbyh1406371219', 'oWoL6juZUpup-ehopbrWhIUblDP8', '2014-07-26', 1406377504, 'follow', 0, '用户关注', 0),
(116, 0, 'ksmbyh1406371219', 'oWoL6jtYEWqqZOm9DZRfNO1YG7fI', '2014-07-26', 1406379091, 'chat', 5, '粉丝互动', 0),
(117, 0, 'ksmbyh1406371219', 'oWoL6jtYEWqqZOm9DZRfNO1YG7fI', '2014-07-26', 1406379097, 'chat', 9, '珠宝展示', 0),
(118, 0, 'ksmbyh1406371219', 'oWoL6jpZ2xOI7V_5fCk63TZIdYSc', '2014-07-26', 1406385604, 'chat', 0, '粉丝互动', 0),
(119, 0, 'ksmbyh1406371219', 'oWoL6jpZ2xOI7V_5fCk63TZIdYSc', '2014-07-26', 1406385621, 'chat', 2, '珠宝展示', 0),
(120, 1, 'ksmbyh1406371219', 'oWoL6jimpPhoxgWhozDRA95b6xoE', '2014-07-27', 1406425589, 'follow', 0, '用户关注', 0),
(121, 0, 'ksmbyh1406371219', 'oWoL6jqlwbH8H7T96CWUUwK4_8Eg', '2014-07-27', 1406444280, 'chat', 1, '粉丝互动', 0),
(122, 0, 'ksmbyh1406371219', 'oWoL6jqlwbH8H7T96CWUUwK4_8Eg', '2014-07-27', 1406444285, 'chat', 1, '珠宝展示', 0),
(123, 0, 'ksmbyh1406371219', 'oWoL6jqlwbH8H7T96CWUUwK4_8Eg', '2014-07-27', 1406444503, 'chat', 0, '嗯。', 0),
(124, 2, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-27', 1406447691, 'Sign', 0, ' 签到', 0),
(125, 2, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-27', 1406447737, 'Business', 0, '花店', 0),
(126, 0, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-27', 1406447761, 'chat', 0, '乐橙', 0),
(127, 1, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-07-27', 1406447778, 'Business', 0, '婚庆', 0),
(128, 0, 'ksmbyh1406371219', 'oWoL6jn7LEjWphDLxJ9NNskm8Em0', '2014-07-27', 1406459685, 'chat', 3, '粉丝互动', 0),
(129, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406463610, 'chat', 2, '你好', 0),
(130, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406463702, 'chat', 0, '糗事', 0),
(131, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406463956, 'chat', 1, '50-50', 0),
(132, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464071, 'chat', 0, '手机18950567877', 0),
(133, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464108, 'chat', 0, '手机号13917778912', 0),
(134, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464123, 'chat', 0, '手机13917778912', 0),
(135, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464174, 'chat', 0, '福鼎', 0),
(136, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464305, 'home', 0, '首页', 1),
(137, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464411, 'chat', 0, '域名www.wjwwx.com', 0),
(138, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464432, 'chat', 0, '无线订餐', 0),
(139, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464458, 'chat', 0, '无线网络订餐', 0),
(140, 0, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '2014-07-27', 1406464636, 'chat', 0, '水果机', 0),
(141, 0, 'ksmbyh1406371219', 'oWoL6jr4zphQMJYKUwyNfDhYOHeE', '2014-07-28', 1406480616, 'chat', 0, '粉丝互动', 0),
(142, 0, 'ksmbyh1406371219', 'oWoL6jr4zphQMJYKUwyNfDhYOHeE', '2014-07-28', 1406480618, 'chat', 1, '珠宝展示', 0),
(143, 0, 'ksmbyh1406371219', 'oWoL6jtYEWqqZOm9DZRfNO1YG7fI', '2014-07-28', 1406514356, 'chat', 0, '粉丝互动', 0),
(144, 0, 'ksmbyh1406371219', 'oWoL6jtYEWqqZOm9DZRfNO1YG7fI', '2014-07-28', 1406514359, 'chat', 2, '珠宝展示', 0),
(145, 12, 'ksmbyh1406371219', 'oWoL6jp0nqh5FiyrRGulc-GwOYAE', '2014-07-28', 1406518969, 'Product', 0, '用户关注', 0),
(146, 1, 'ksmbyh1406371219', 'oWoL6joBvjebJdfil8SiDTWgIq4c', '2014-07-28', 1406538566, 'follow', 0, '用户关注', 0),
(147, 0, 'pzbwyi1406724637', 'oOXI2uGLRX0T2Xst3iiARqTXubD4', '2014-07-30', 1406725013, 'home', 3, '首页', 1),
(148, 0, 'pzbwyi1406724637', 'oOXI2uGLRX0T2Xst3iiARqTXubD4', '2014-07-30', 1406727883, 'chat', 0, '天气查询', 0),
(149, 0, 'pzbwyi1406724637', 'oOXI2uGLRX0T2Xst3iiARqTXubD4', '2014-07-31', 1406791630, 'home', 3, '首页', 1),
(150, 0, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-01', 1406868098, 'chat', 1, '？', 0),
(151, 0, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-01', 1406868145, 'chat', 1, '你是', 0),
(152, 0, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-01', 1406868160, 'chat', 0, '你父母是谁', 0),
(153, 0, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-01', 1406868172, 'chat', 0, '麻批', 0),
(154, 0, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-01', 1406868208, 'chat', 0, '一站到底', 0),
(155, 5, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-01', 1406868435, 'Wall', 0, '庆典', 0),
(156, 0, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-01', 1406870898, 'chat', 0, '微信墙', 0),
(157, 1, 'xctvth1406867781', 'ojmeHuB-ho-NE7D0wPkUWFxa2_gQ', '2014-08-02', 1406910533, 'follow', 0, '用户关注', 0),
(158, 0, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '2014-08-02', 1406937310, 'chat', 0, '鸡蛋', 0),
(159, 2, 'owikav1406947345', 'oq5sJtyP86zYugIpvS5RXa00nh7w', '2014-08-02', 1406947480, 'Text', 0, '111', 0),
(160, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-02', 1406953114, 'chat', 2, '2048', 0),
(161, 6, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-02', 1406953454, 'Lottery', 0, '走鹊桥', 0),
(162, 7, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-02', 1406953547, 'Lottery', 0, '小情侣', 0),
(163, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-02', 1406954082, 'chat', 0, '高考', 0),
(164, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-02', 1406970947, 'Member_card_set', 0, '会员卡', 0),
(165, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-03', 1407034804, 'home', 3, '首页', 1),
(166, 1, 'owikav1406947345', 'oq5sJt4scMW5RvI3t-UNxHkyzt7E', '2014-08-04', 1407124199, 'follow', 0, '用户关注', 0),
(167, 2, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-04', 1407127370, 'medicalSet', 1, '医疗', 0),
(168, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-04', 1407128153, 'home', 0, '首页', 1),
(169, 10, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', '2014-08-05', 1407201104, 'Member_card_set', 1, '会员卡', 0),
(170, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-05', 1407206396, 'chat', 0, '签到', 0),
(171, 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-05', 1407206424, 'chat', 1, 'Pigcms', 0),
(172, 9, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '2014-08-05', 1407209901, 'Router_config', 0, '我要上网', 0),
(173, 1, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407230710, 'follow', 0, '用户关注', 0),
(174, 5, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407230724, 'Img', 0, '测试地址', 0),
(175, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407231062, 'home', 0, '首页', 1),
(176, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407231132, 'chat', 4, '聊天', 0),
(177, 0, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407233871, 'home', 1, '首页', 1),
(178, 2, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407234722, 'Custom', 1, '11', 0),
(179, 0, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407234730, 'chat', 0, '112', 0),
(180, 0, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407234853, 'chat', 0, '加强版2048', 0),
(181, 3, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407235334, 'Panorama', 0, '11', 0),
(182, 3, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407235744, 'Text', 1, '11', 0),
(183, 4, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407236884, 'Sign', 1, '签到', 0),
(184, 0, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407237060, 'album', 0, '相册', 1),
(185, 2, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407237282, 'Vote', 1, '投票', 0),
(186, 2, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407237452, 'Custom', 0, '222', 0),
(187, 1, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407237528, 'Research', 0, '2222', 0),
(188, 2, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407237646, 'Invites', 0, '邀请', 0),
(189, 2, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407237800, 'Wedding', 0, '喜帖', 0),
(190, 1, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407238196, 'Carset', 3, '汽车', 0),
(191, 0, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407238272, 'chat', 0, '微汽车', 0),
(192, 1, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407238606, 'Estate', 0, '房子', 0),
(193, 3, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407238855, 'medicalSet', 2, '医疗', 0),
(194, 1, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407239152, 'Host', 0, 'ktv123', 0),
(195, 5, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407239301, 'Shake', 1, 'Yao', 0),
(196, 6, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407239402, 'Wall', 0, 'wxq', 0),
(197, 1, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407240030, 'Market', 1, 'quan', 0),
(198, 12, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407240323, 'Lottery', 1, '大转盘', 0),
(199, 13, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407240359, 'Lottery', 1, '刮刮卡', 0),
(200, 14, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407240445, 'Lottery', 1, '水果达人', 0),
(201, 12, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', '2014-08-05', 1407240557, 'Member_card_set', 1, '会员卡', 0),
(202, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407243510, 'chat', 1, '糗事', 0),
(203, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407243852, 'chat', 1, '计算50-20', 0),
(204, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407243913, 'chat', 4, '啥', 0),
(205, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407243953, 'chat', 3, '什么', 0),
(206, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407244016, 'chat', 1, '歌词蝴蝶飞', 0),
(207, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407244057, 'chat', 2, '一站到底', 0),
(208, 0, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '2014-08-05', 1407244080, 'chat', 2, '植物', 0),
(209, 1, 'owikav1406947345', 'oq5sJt1vfvyH-sZOw0E3mWwxeWlU', '2014-08-06', 1407258094, 'follow', 1, '用户关注', 0),
(210, 0, 'owikav1406947345', 'oq5sJt1vfvyH-sZOw0E3mWwxeWlU', '2014-08-06', 1407258124, 'home', 1, '首页', 1),
(211, 2, 'owikav1406947345', 'oq5sJt1vfvyH-sZOw0E3mWwxeWlU', '2014-08-06', 1407258142, 'Text', 1, '111', 0),
(212, 3, 'owikav1406947345', 'oq5sJt1vfvyH-sZOw0E3mWwxeWlU', '2014-08-06', 1407258577, 'Business', 1, '旅游', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines`
--

CREATE TABLE IF NOT EXISTS `tp_busines` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(12) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '36',
  `conttpid` int(11) DEFAULT '36',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_busines`
--

INSERT INTO `tp_busines` (`bid`, `token`, `keyword`, `mtitle`, `title`, `picurl`, `album_id`, `toppicurl`, `roompicurl`, `address`, `longitude`, `latitude`, `business_desc`, `type`, `sort`, `blogo`, `businesphone`, `orderInfo`, `compyphone`, `path`, `tpid`, `conttpid`) VALUES
(1, 'shibnn1405586353', '婚庆', '海宁乐橙婚庆', '欢迎进入海宁乐橙婚庆', 'http://www.466777.com/tpl/static/attachment/background/view/../wedding/1.jpg', 4, 'http://www.466777.com/tpl/static/attachment/background/view/9.jpg', 'http://www.466777.com/uploads/s/shibnn1405586353/a/f/0/d/53d3576d60969.jpg', '浙江海宁文化路161号', '120.761006', '30.774043', '1', 'wedding', 1, '', '', '1', '0573-8729929', '0', 36, 36),
(2, 'shibnn1405586353', '花店', '海宁乐橙婚庆', '乐橙', 'http://kq.466777.com/tpl/static/images/02.jpg', 4, 'http://www.466777.com/tpl/static/attachment/background/view/../wedding/9.jpg', 'http://www.466777.com/uploads/s/shibnn1405586353/a/f/0/d/53d3576d60969.jpg', '海宁市文宗路161号', '120.761006', '30.774043', '1', 'flower', 1, '', '', '1', '0573-8729929', '0', 36, 36),
(3, 'owikav1406947345', '旅游', '撒旦飞洒到了', '阿萨德发生的法律监控', 'http://weixin.jihuodi.com/tpl/static/attachment/background/view/4.jpg', 7, 'http://weixin.jihuodi.com/tpl/static/attachment/background/view/../canyin/4.jpg', 'http://weixin.jihuodi.com/tpl/static/attachment/focus/default/../canyin/2.jpg', '电饭锅电饭锅的双方各', '117.225851', '34.238019', '简介', 'travel', 1, '', '', '撒旦飞洒地方', '0551-6537199', '0', 100, 36);

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_comment`
--

CREATE TABLE IF NOT EXISTS `tp_busines_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_main`
--

CREATE TABLE IF NOT EXISTS `tp_busines_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_busines_main`
--

INSERT INTO `tp_busines_main` (`mid`, `token`, `bid_id`, `name`, `sort`, `main_desc`, `type`, `telphone`, `maddress`, `desc_pic`) VALUES
(1, 'shibnn1405586353', 1, '回复专用', 1, '1', 'wedding', '1234544', '', 'http://www.466777.com/uploads/s/shibnn1405586353/a/f/0/d/53d3576d60969.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_pic`
--

CREATE TABLE IF NOT EXISTS `tp_busines_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_busines_pic`
--

INSERT INTO `tp_busines_pic` (`pid`, `name`, `bid_id`, `picurl_1`, `picurl_2`, `picurl_3`, `picurl_4`, `picurl_5`, `token`, `type`, `ablum_id`) VALUES
(1, '', 1, 'http://www.466777.com/uploads/s/shibnn1405586353/a/f/0/d/53d3576d60969.jpg', '', '', '', '', 'shibnn1405586353', 'wedding', 4);

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_second`
--

CREATE TABLE IF NOT EXISTS `tp_busines_second` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_busines_second`
--

INSERT INTO `tp_busines_second` (`sid`, `token`, `type`, `name`, `mid_id`, `picurl`, `learntime`, `datatype`, `sort`, `second_desc`, `oneprice`, `googsnumber`, `havenumber`) VALUES
(1, 'shibnn1405586353', 'wedding', '111', 1, 'http://www.466777.com/uploads/s/shibnn1405586353/a/f/0/d/53d3576d60969.jpg', '8800', '婚车租赁 流程策划 司仪督导 乐队视频 摄像摄影 婚', 1, '111', '8800.00', 10, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_car`
--

CREATE TABLE IF NOT EXISTS `tp_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_car`
--

INSERT INTO `tp_car` (`id`, `token`, `name`, `www`, `logo`, `sort`, `info`) VALUES
(1, 'xbgzcp1407232534', '四川', '', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', 1, '11');

-- --------------------------------------------------------

--
-- 表的结构 `tp_carmodel`
--

CREATE TABLE IF NOT EXISTS `tp_carmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) NOT NULL,
  `guide_price` varchar(50) NOT NULL DEFAULT '',
  `dealer_price` varchar(50) NOT NULL DEFAULT '',
  `emission` double NOT NULL,
  `stalls` tinyint(4) NOT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_carmodel`
--

INSERT INTO `tp_carmodel` (`id`, `token`, `name`, `brand_serise`, `model_year`, `sort`, `panorama_id`, `guide_price`, `dealer_price`, `emission`, `stalls`, `box`, `pic_url`, `s_id`, `type`) VALUES
(1, 'xbgzcp1407232534', '11', '四川/11', 2014, 1, 0, '111', '22', 1, 2, 1, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/d/9/a/8/53e0bc03bebc2.jpg', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_carnews`
--

CREATE TABLE IF NOT EXISTS `tp_carnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_carnews`
--

INSERT INTO `tp_carnews` (`id`, `token`, `news_id`, `pre_id`, `usedcar_id`, `album_id`, `company_id`) VALUES
(1, 'xbgzcp1407232534', 40, 40, 40, 6, 27);

-- --------------------------------------------------------

--
-- 表的结构 `tp_carowner`
--

CREATE TABLE IF NOT EXISTS `tp_carowner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_carowner`
--

INSERT INTO `tp_carowner` (`id`, `token`, `keyword`, `title`, `head_url`, `info`) VALUES
(1, 'xbgzcp1407232534', '333', '1', 'tpl/User/default/common/car/car_woner.png', '111');

-- --------------------------------------------------------

--
-- 表的结构 `tp_carsaler`
--

CREATE TABLE IF NOT EXISTS `tp_carsaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_carsaler`
--

INSERT INTO `tp_carsaler` (`id`, `token`, `name`, `picture`, `mobile`, `sort`, `salestype`, `info`) VALUES
(1, 'xbgzcp1407232534', '陈', 'tpl/User/default/common/car/car_sell.png', '11111111', 1, 1, '1111');

-- --------------------------------------------------------

--
-- 表的结构 `tp_carseries`
--

CREATE TABLE IF NOT EXISTS `tp_carseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_carseries`
--

INSERT INTO `tp_carseries` (`id`, `brand_id`, `brand`, `token`, `name`, `shortname`, `picture`, `sort`, `info`) VALUES
(1, 1, '1@四川', 'xbgzcp1407232534', '11', '11', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/b/4/thumb_53e0bc4b9c671.jpg', 1, '11');

-- --------------------------------------------------------

--
-- 表的结构 `tp_carset`
--

CREATE TABLE IF NOT EXISTS `tp_carset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '23',
  `conttpid` tinyint(4) DEFAULT '23',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_carset`
--

INSERT INTO `tp_carset` (`id`, `token`, `keyword`, `title`, `head_url`, `url`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `head_url_1`, `head_url_2`, `head_url_3`, `head_url_4`, `head_url_5`, `head_url_6`, `url1`, `url2`, `url3`, `url4`, `url5`, `url6`, `path`, `tpid`, `conttpid`) VALUES
(1, 'xbgzcp1407232534', '汽车', '11', 'tpl/User/default/common/car/car_title.jpg', 'http://baidu.com', '经销车型', '销售顾问', '在线预约', '车主关怀', '实用工具', '车型欣赏', 'tpl/User/default/common/car/car_jx.jpg', 'tpl/User/default/common/car/car_yuyue.jpg', 'tpl/User/default/common/car/car_yuyue.jpg', 'tpl/User/default/common/car/carowner.png', 'tpl/User/default/common/car/tool-box-preferences.png', 'tpl/User/default/common/car/lanbo14.jpg', '22', 'http://baidu.com', 'http://baidu.com', 'http://baidu.com', 'http://baidu.com', 'http://baidu.com', '0', 23, 23);

-- --------------------------------------------------------

--
-- 表的结构 `tp_caruser`
--

CREATE TABLE IF NOT EXISTS `tp_caruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_car_utility`
--

CREATE TABLE IF NOT EXISTS `tp_car_utility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_car_utility`
--

INSERT INTO `tp_car_utility` (`id`, `name`, `url`, `status`, `token`) VALUES
(1, '车贷计算器', 'http://car.m.yiche.com/qichedaikuanjisuanqi/', 1, ''),
(2, '保险计算', 'http://car.m.yiche.com/qichebaoxianjisuan/', 1, ''),
(3, '全款计算', 'http://car.m.yiche.com/gouchejisuanqi/', 1, ''),
(4, '车型比较', 'http://car.m.yiche.com/chexingduibi/?carIDs=102501', 1, ''),
(5, '违章查询', 'http://wap.bjjtgl.gov.cn/wimframework/portal/wwwroot/bjjgj/xxcx.psml?contentType=%E8%BF%9D%E6%B3%95%', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_case`
--

CREATE TABLE IF NOT EXISTS `tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_catemenu`
--

CREATE TABLE IF NOT EXISTS `tp_catemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` varchar(120) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_catemenu`
--

INSERT INTO `tp_catemenu` (`id`, `fid`, `token`, `name`, `orderss`, `picurl`, `url`, `status`, `RadioGroup1`) VALUES
(1, 0, 'hzddpv1405521492', '首页', '0', 'http://www.466777.com/tpl/User/default/common/images/photo/plugmenu6.png', '{siteUrl}/index.php?g=Wap&amp;m=Photo&amp;a=plist&amp;token=hzddpv1405521492&amp;wecha_id={wechat_id}&amp;id=1', '1', '0'),
(2, 0, 'hzddpv1405521492', '电话', '0', 'http://www.466777.com/tpl/User/default/common/images/photo/plugmenu1.png', '', '1', '0'),
(3, 0, 'hzddpv1405521492', '我的', '0', 'http://www.466777.com/tpl/User/default/common/images/photo/plugmenu2.png', '', '1', '0'),
(4, 0, 'hzddpv1405521492', '相册', '0', '相册', '', '1', '0'),
(5, 0, 'kogqns1406184632', '首页', '01', 'http://www.466777.com/tpl/User/default/common/images/photo/plugmenu6.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=index&amp;token=kogqns1406184632&amp;wecha_id={wechat_id}', '1', '0'),
(6, 0, 'xbgzcp1407232534', '首页', '0', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu6.png', '', '1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_classify`
--

CREATE TABLE IF NOT EXISTS `tp_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` varchar(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) NOT NULL,
  `tpid` tinyint(4) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `tp_classify`
--

INSERT INTO `tp_classify` (`id`, `fid`, `name`, `info`, `sorts`, `img`, `url`, `status`, `token`, `path`, `tpid`, `conttpid`) VALUES
(1, 0, '竹纤维袜', '竹纤维袜-男袜，女袜', '1', 'http://www.466777.com/tpl/static/attachment/icon/line/clock.png', '{siteUrl}/index.php?g=Wap&amp;m=Hotels&amp;a=index&amp;token=tlpqmn1404450757&amp;wecha_id={wechat_id}', '1', 'tlpqmn1404450757', '', 127, 8),
(2, 0, '我', '问问', '1', 'http://www.466777.com/tpl/static/attachment/icon/lovely/bookmark.png', '', '1', 'hgfgmt1404896579', '', 38, 1),
(3, 0, '11', '1', '1', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/2.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=index&amp;token=ekfdng1401977502&amp;wecha_id={wechat_id}', '1', 'ekfdng1401977502', '', 127, 8),
(4, 0, '世界杯主题商品', '世界杯主题商品', '1', 'http://www.466777.com/uploads/a/azleau1404838233/c/7/0/2/thumb_53c5413bb8efc.jpg', '', '1', 'azleau1404838233', '', 4, 4),
(5, 0, '按钮1', '按钮1', '1', 'http://www.466777.com/tpl/static/attachment/icon/lovely/bill.png', '', '1', 'hzddpv1405521492', '', 127, 1),
(6, 0, '分类2', '分类2', '1', 'http://www.466777.com/tpl/static/attachment/icon/lovely/clock.png', '', '1', 'hzddpv1405521492', '', 127, 1),
(7, 5, '按钮111', '按钮111', '1', 'http://www.466777.com/tpl/static/attachment/icon/lovely/drop.png', '', '1', 'hzddpv1405521492', '-5', 38, 8),
(8, 0, '123123', '123213', '1', '213232', '32132132', '1', 'thvusk1405647851', '', 87, 3),
(9, 0, '测试', '', '1', 'http://www.466777.com/tpl/static/attachment/icon/lovely/train.png', '', '1', 'punypv1406120801', '', 93, 6),
(10, 0, '学生相册', '学生相册的分类描述', '7', 'http://www.466777.com/uploads/b/bqtxnv1406167321/5/5/0/4/thumb_53d0a73a4a4f7.jpg', '', '1', 'bqtxnv1406167321', '', 121, 1),
(11, 0, '班级作业', '班级作业的描述', '2', 'http://www.466777.com/uploads/b/bqtxnv1406167321/9/4/7/0/thumb_53d0accec4617.jpg', '', '1', 'bqtxnv1406167321', '', 97, 1),
(12, 0, '公告板', '公告板的描述 ', '3', 'http://www.466777.com/uploads/b/bqtxnv1406167321/b/3/e/3/thumb_53d0ad38cc029.jpg', '', '1', 'bqtxnv1406167321', '', 111, 1),
(14, 10, '一般相册', '一般相册', '1', 'http://www.466777.com/tpl/static/attachment/icon/lovely/cloud-error.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(15, 10, '2班相册', '2班相册', '2', 'http://www.466777.com/tpl/static/attachment/icon/lovely/eye.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(16, 10, '2班相册', '2班相册', '3', 'http://www.466777.com/tpl/static/attachment/icon/lovely/backpack-2.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(17, 10, '2班相册', '2班相册', '4', 'http://www.466777.com/tpl/static/attachment/icon/lovely/calc.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(18, 10, '2班相册', '2班相册', '5', 'http://www.466777.com/tpl/static/attachment/icon/lovely/hand.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(19, 10, '2班相册', '2班相册', '6', 'http://www.466777.com/tpl/static/attachment/icon/lovely/cloud-error.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(20, 10, '2班相册', '2班相册', '7', 'http://www.466777.com/tpl/static/attachment/icon/lovely/calc.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(21, 10, '2班相册', '2班相册', '8', 'http://www.466777.com/tpl/static/attachment/icon/lovely/clock.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(22, 0, '测试1', '', '1', 'http://www.466777.com/uploads/k/kogqns1406184632/8/7/e/6/thumb_53d0ae99b8efc.jpg', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=index&amp;token=kogqns1406184632&amp;wecha_id={wechat_id}', '1', 'kogqns1406184632', '', 38, 1),
(23, 10, '2班相册', '2班相册', '9', 'http://www.466777.com/tpl/static/attachment/icon/lovely/car.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(24, 10, '2班相册', '2班相册', '10', 'http://www.466777.com/tpl/static/attachment/icon/lovely/medicine.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(25, 10, '2班相册', '2班相册', '11', 'http://www.466777.com/tpl/static/attachment/icon/lovely/hotdog.png', '', '1', 'bqtxnv1406167321', '-10', 38, 1),
(26, 0, '01', '01', '1', 'http://www.466777.com/tpl/static/attachment/background/view/8.jpg', '', '1', 'kogqns1406184632', '', 38, 1),
(27, 0, '分类', '分类', '1', 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/d/a/6/thumb_53d0aea8a20c6.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(28, 0, '分类', '分类', '6', 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/a/3/7/thumb_53d0ae872429d.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(29, 0, '分类', '分类', '4', 'http://www.466777.com/uploads/b/bqtxnv1406167321/5/f/c/b/thumb_53d0ae6cd3a3b.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(30, 0, '分类', '分类', '5', 'http://www.466777.com/uploads/b/bqtxnv1406167321/3/8/9/4/thumb_53d0af2387587.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(31, 0, '分类', '分类', '8', 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/d/a/6/thumb_53d0aea8a20c6.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(32, 0, '分类', '分类', '10', 'http://www.466777.com/uploads/b/bqtxnv1406167321/5/f/c/b/thumb_53d0ae6cd3a3b.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(33, 0, '分类', '分类', '9', 'http://www.466777.com/uploads/b/bqtxnv1406167321/a/d/9/3/thumb_53d0aede8b290.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(34, 0, '分类', '分类', '12', 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/a/3/7/thumb_53d0ae872429d.jpg', '', '1', 'bqtxnv1406167321', '', 38, 1),
(35, 0, '关于我们', '关于我们', '1', 'http://www.466777.com/tpl/static/attachment/focus/default/5.gif', '', '1', 'ksmbyh1406371219', '', 37, 6),
(36, 0, '优惠活动', '优惠活动', '1', 'http://www.466777.com/tpl/static/attachment/focus/default/../canyin/1.jpg', '', '1', 'ksmbyh1406371219', '', 37, 5),
(37, 0, '22', '1', '1', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_orange/5.png', '{siteUrl}/index.php?g=Wap&amp;m=AppleGame&amp;a=index&amp;token=ekfdng1401977502&amp;wecha_id={wechat_id}&amp;id=6', '1', 'ekfdng1401977502', '', 1, 1),
(38, 0, '测试分类', '测试分类描述', '1', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/15.png', '{siteUrl}/index.php?g=Wap&amp;m=Company&amp;a=map&amp;token=qzembv1407229744&amp;wecha_id={wechat_id}', '1', 'qzembv1407229744', '', 127, 8),
(39, 0, '菜品', '辣椒', '1', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/b/0/9/4/thumb_53e0b8602625a.jpg', '', '1', 'xbgzcp1407232534', '', 127, 8),
(40, 39, '京酱肉丝', '11', '1', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/5.png', '{siteUrl}/index.php?g=Wap&amp;m=Groupon&amp;a=grouponIndex&amp;token=xbgzcp1407232534&amp;wecha_id={wechat_id}', '1', 'xbgzcp1407232534', '-39', 127, 6);

-- --------------------------------------------------------

--
-- 表的结构 `tp_company`
--

CREATE TABLE IF NOT EXISTS `tp_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0',
  `market_id` int(11) NOT NULL DEFAULT '0',
  `mark_url` varchar(200) NOT NULL DEFAULT '',
  `add_time` char(10) NOT NULL DEFAULT '0',
  `display` tinyint(1) DEFAULT '1',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `tp_company`
--

INSERT INTO `tp_company` (`id`, `token`, `name`, `shortname`, `mp`, `tel`, `address`, `latitude`, `longitude`, `intro`, `catid`, `taxis`, `isbranch`, `logourl`, `area_id`, `cate_id`, `market_id`, `mark_url`, `add_time`, `display`, `username`, `password`) VALUES
(1, 'ekfdng1401977502', '同创科技', '同创科技', '13257941868', '13257941868', '江西省南丰县', 0, 0, '2', 0, 0, 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/clock.png', 0, 0, 0, '', '0', 1, '', ''),
(2, 'ficefo1403523346', '2222222@qq.com2222222', '22222222222222', '13899862300', '13899862300', '111111', 1, 1, '11111111', 0, 1, 0, '1', 0, 0, 0, '', '0', 1, '', ''),
(3, 'bwvmro1404199686', '隆福生', '隆福生', '18766432627', '0533-3070221', '淄博市张店区', 10, 10, '', 0, 0, 0, 'http://img0.imgtn.bdimg.com/it/u=3352574024,2767877216&amp;fm=21&amp;gp=0.jpg', 0, 0, 0, '', '0', 1, '', ''),
(4, 'psuyri1404444703', 'erswerearae', 'rarearr', '13100000000', '23123123123', '23dsfsdfdxzzxd', 30.315221, 112.235009, 'sdfd', 0, 0, 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/chalkboard.png', 0, 0, 0, '', '0', 1, '', ''),
(5, 'ekfdng1401977502', '同创科技二店', '二店', '13511350189', '13511350189', '文宗路161号', 30.774043, 120.761006, '1', 0, 2, 1, 'http://www.466777.com/tpl/static/attachment/icon/lovely/backpack-2.png', 0, 0, 0, '', '0', 1, 'party20082', '492be47ff4ba4316ceb36bca752069fb'),
(6, 'azleau1404838233', '公司信息1', '公司信息1', '13767667890', '13767667890', '公司信息1', 22.544098, 114.020697, '1111', 0, 1, 0, 'http://www.466777.com/uploads/a/azleau1404838233/c/7/0/2/thumb_53c5413bb8efc.jpg', 0, 0, 0, '', '0', 1, '', ''),
(7, 'hgfgmt1404896579', 'xxxx', 'xxxxxx', '12321321321', '123213213', '2132131', 43.866478, 125.345958, '23424', 0, 0, 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/backpack-2.png', 0, 0, 0, '', '0', 1, '', ''),
(8, 'hgfgmt1404896579', '测试商家', '测试', '13800000000', '0592-2222222', '福建省厦门市', 24.508686, 117.874355, '测试是哪家', 0, 1, 1, 'http://www.466777.com/uploads/h/hgfgmt1404896579/0/e/b/8/thumb_53c77db765036.jpg', 0, 0, 0, '', '0', 1, '456', '250cf8b51c773f3f8dc8b4be867a9a02'),
(9, 'thvusk1405647851', '123', '213213', '13333333333', '21312', '13312213', 34.791499, 113.640103, '12321312321', 0, 0, 0, 'http://www.466777.com/tpl/static/attachment/background/view/2.jpg', 0, 0, 0, '', '0', 1, '', ''),
(10, 'negttb1405850678', 'FTGH', 'FGJH', '15530444875', '645', 'GFH', 0, 0, 'GH', 0, 0, 0, 'FGH', 0, 0, 0, '', '0', 1, '', ''),
(11, 'gcccbf1405935616', '梦想客机', '梦想', '13333333333', '13333333333', '辽宁省鞍山市立山区', 41.119366, 122.998865, '', 0, 0, 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/clock.png', 0, 0, 0, '', '0', 1, '', ''),
(12, 'mnzqdb1406009469', '213', '213', '15530444632', '213', '213', 213, 213, '213', 0, 123, 0, '213', 0, 0, 0, '', '0', 1, '', ''),
(13, 'punypv1406120801', '测试', '测试', '15115467890', '66888633', '测试', 26.899839, 112.626527, '上号', 0, 0, 0, 'http://www.466777.com/tpl/static/attachment/focus/default/3.jpg', 0, 0, 0, '', '0', 1, '', ''),
(14, 'punypv1406120801', '压实', '压实', '15115467990', '15115467990', '上海', 0, 0, '', 0, 0, 1, 'http://www.466777.com/uploads/p/punypv1406120801/9/7/9/1/thumb_53cfb685a5dcf.jpg', 0, 0, 0, '', '0', 1, 'yanshi', '477640480e13a6cec8fecc20d121e7dc'),
(15, 'gwtuam1406201970', '1', '1', '13543554444', '21', 'fdsfsdfsd', 11, 11, '', 0, 0, 0, 'eqweweeqw', 0, 0, 0, '', '0', 1, '', ''),
(16, 'wpirvf1406216732', '111', '1111', '13546100899', '0350—8227558', '太原市委党校', 38.746455, 112.716079, '', 0, 0, 0, 'http://weixin.sx0350.com/uploads/7/748950d990538a2/3/e/1/f/thumb_536922d606f61.jpg', 0, 0, 0, '', '0', 1, '', ''),
(17, 'shibnn1405586353', '同创科技', '同创科技', '13511350187', '13511350187', '江西省南丰县', 30.774043, 120.760431, '1', 0, 1, 0, 'http://www.466777.com/tpl/static/attachment/icon/canyin/canyin_red/4.png', 0, 0, 0, '', '0', 1, '', ''),
(18, 'yorbbr1406463012', '1', '1', '15262688631', '1', '1', 1, 1, '1', 0, 1, 0, '1', 0, 0, 0, '', '0', 1, '', ''),
(19, 'ksmbyh1406371219', '额', '是法师打发', '13333333333', '13333333333', '13333333333', 11, 11, '1', 0, 1, 0, 'http://www.466777.com/uploads/k/ksmbyh1406371219/1/0/2/9/thumb_53d9bf6cb8538.png', 0, 0, 0, '', '0', 1, '', ''),
(20, 'xctvth1406867781', '四喜庆典', '四喜庆典', '18980083847', '83283333', '成都实习建设路', 30.680168, 104.108578, '&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', 0, 0, 0, 'http://weixin.jihuodi.com/uploads/x/xctvth1406867781/a/c/8/1/thumb_53db273e790a8.jpg', 0, 0, 0, '', '0', 1, '', ''),
(21, 'xmsxhg1406875274', '名称名称名称名称名称', '名称名称', '13566668888', '13688888888', '名称名称名称名称', 0, 0, '', 0, 0, 0, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/20.png', 0, 0, 0, '', '0', 1, '', ''),
(22, 'kmnwkp1406885165', '微商城', '名称名称', '13566668888', '13688888888', '地址地址', 0, 0, '', 0, 0, 0, 'http://weixin.ykigo.com/tpl/static/attachment/icon/lovely/candy.png', 0, 0, 0, '', '0', 1, '', ''),
(23, 'vzohcb1406947236', 'wwww', 'wwwddsd', '13702699999', '13702699999', '广东省佛山市', 22.820765, 113.286781, 'sssss', 0, 10, 0, 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/1/f/5/thumb_53dc59454dd2a.png', 0, 0, 0, '', '0', 1, '', ''),
(24, 'qzembv1407229744', '公司名称测试', '名称测试', '18888888888', '88888888', '测试地址', 36.086787, 120.422381, '测试图文详细', 0, 0, 0, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/1.png', 0, 0, 0, '', '0', 1, '', ''),
(25, 'qzembv1407229744', '机构1', '机1', '16668889999', '99999999', '地址1', 36.085387, 120.36374, '测试详细1', 0, 0, 1, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/10.png', 0, 0, 0, '', '0', 1, 'test_wx1', '09988fb29ee55a513d071d7c35530880'),
(26, 'qzembv1407229744', '机构2', '机2', '19999999999', '88888888', '分支地址2', 36.130175, 120.400534, '测试详细2', 0, 0, 1, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/13.png', 0, 0, 0, '', '0', 1, 'test_wx', 'e10adc3949ba59abbe56e057f20f883e'),
(27, 'xbgzcp1407232534', '四川理工', '111', '18227757061', '18227757071', '四川省自贡市四川理工学院', 0, 0, '111', 0, 0, 0, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/d/d/e/0/thumb_53e0ae58a4083.jpg', 0, 0, 0, '', '0', 1, '', ''),
(28, 'xbgzcp1407232534', '111', '111', '18227757061', '18227757061', '四川理工学院', 11, 11, '11', 0, 1, 1, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/b/4/thumb_53e0bc4b9c671.jpg', 1, 1, 1, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', '1407240014', 1, '', ''),
(29, 'oblian1407245051', '分支1', '分支1', '18888888888', '99999999', '测试地址', 36.059248, 120.406283, '测试分支图文1', 0, 0, 0, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/19.png', 0, 0, 0, '', '0', 1, '', ''),
(30, 'wnncyu1407245884', 'wx分支1', 'wx分支1', '19999998888', '090988888888', '测试地址', 36.202435, 120.303374, '测试方特', 0, 0, 0, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/3.png', 0, 0, 0, '', '0', 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_company_staff`
--

CREATE TABLE IF NOT EXISTS `tp_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_custom_field`
--

INSERT INTO `tp_custom_field` (`field_id`, `field_name`, `filed_option`, `field_type`, `item_name`, `field_match`, `is_show`, `is_empty`, `sort`, `err_info`, `set_id`, `token`) VALUES
(1, '12', '', 'text', 'd7es0i_2', '^[\\u4e00-\\u9fa5\\a-zA-Z0-9]+$', '1', '0', 50, '2', 2, 'xbgzcp1407232534'),
(2, '13', '', 'text', 'oaa3mf_2', '^[\\u4e00-\\u9fa5\\a-zA-Z0-9]+$', '1', '0', 50, '33', 2, 'xbgzcp1407232534');

-- --------------------------------------------------------

--
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_custom_info`
--

INSERT INTO `tp_custom_info` (`info_id`, `token`, `wecha_id`, `set_id`, `add_time`, `user_name`, `phone`, `sub_info`) VALUES
(1, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 2, '1407237467', '匿名', '匿名', 'a:2:{i:0;a:2:{s:4:"name";s:2:"12";s:5:"value";s:2:"11";}i:1;a:2:{s:4:"name";s:2:"13";s:5:"value";s:2:"22";}}'),
(2, 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 2, '1407237476', '匿名', '匿名', 'a:2:{i:0;a:2:{s:4:"name";s:2:"12";s:5:"value";s:2:"11";}i:1;a:2:{s:4:"name";s:2:"13";s:5:"value";s:2:"22";}}');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_custom_limit`
--

INSERT INTO `tp_custom_limit` (`limit_id`, `enddate`, `sub_total`, `today_total`, `type`) VALUES
(1, '', 0, 0, 0),
(2, '', 0, 0, 0);

-- --------------------------------------------------------

--
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_custom_set`
--

INSERT INTO `tp_custom_set` (`set_id`, `title`, `keyword`, `intro`, `addtime`, `top_pic`, `succ_info`, `err_info`, `detail`, `limit_id`, `token`, `tel`, `address`, `longitude`, `latitude`) VALUES
(1, 'asdas', 'asdas', 'asdas', '1407227166', 'asdas', 'asdas', 'asdas', 'asdasasdas', 1, 'vzohcb1406947236', '0769-22305675', '东莞市国泰大厦', '116.481335', '22.336722'),
(2, '111', '222', '11', '1407234273', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/9/8/4/e/thumb_53e0b0d8d9701.jpg', '11', '12', '212', 2, 'xbgzcp1407232534', '18227757061', '四川理工', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_czzreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_czzreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `bg` varchar(120) NOT NULL,
  `wx` varchar(120) NOT NULL,
  `zz` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_dati`
--

CREATE TABLE IF NOT EXISTS `tp_dati` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL COMMENT '题目标题',
  `picurl` varchar(200) DEFAULT NULL COMMENT '图片地址',
  `info` varchar(300) DEFAULT NULL COMMENT '图文简介',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 选择题 1 简答题 2 看图猜',
  `daan` varchar(200) NOT NULL COMMENT '答案',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '回答完全正确积分',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_dati`
--

INSERT INTO `tp_dati` (`id`, `token`, `title`, `picurl`, `info`, `type`, `daan`, `score`, `sort`) VALUES
(2, 'vzohcb1406947236', '简答题1答案是b', NULL, NULL, 0, 'b', 1, 0),
(3, 'xbgzcp1407232534', '11', NULL, NULL, 1, '1', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dati_record`
--

CREATE TABLE IF NOT EXISTS `tp_dati_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL COMMENT 'token',
  `wecha_id` varchar(200) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `playtime` int(15) DEFAULT NULL COMMENT '第一次玩的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diaoyan`
--

CREATE TABLE IF NOT EXISTS `tp_diaoyan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `stime` date DEFAULT NULL,
  `etime` date DEFAULT NULL,
  `stat` tinyint(2) DEFAULT '0',
  `pic` varchar(200) DEFAULT NULL,
  `sinfo` varchar(500) DEFAULT NULL,
  `einfo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_diaoyan`
--

INSERT INTO `tp_diaoyan` (`id`, `token`, `keyword`, `title`, `stime`, `etime`, `stat`, `pic`, `sinfo`, `einfo`) VALUES
(2, 'nszorb1402857075', 'ewwwww', 'wwwwwwwwwww', '2014-06-16', '2014-06-19', 0, 'http://www.466777.com/tpl/static/attachment/background/view/3.jpg', 'ewwwwwwwww', 'eww'),
(3, 'xshtyn1403100790', 'dy', 'dy', '2014-06-18', '2014-06-21', 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_diaoyan_timu`
--

CREATE TABLE IF NOT EXISTS `tp_diaoyan_timu` (
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `optia` varchar(200) DEFAULT NULL,
  `optib` varchar(200) DEFAULT NULL,
  `optic` varchar(200) DEFAULT NULL,
  `optid` varchar(200) DEFAULT NULL,
  `optie` varchar(200) DEFAULT NULL,
  `max` smallint(2) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `perca` int(11) DEFAULT '0',
  `percb` int(11) DEFAULT '0',
  `percc` int(11) DEFAULT '0',
  `percd` int(11) DEFAULT '0',
  `perce` int(11) DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diaoyan_user`
--

CREATE TABLE IF NOT EXISTS `tp_diaoyan_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diaoyan_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `ans` varchar(20) DEFAULT NULL,
  `jianyi` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_dining_table`
--

CREATE TABLE IF NOT EXISTS `tp_dining_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `isbox` (`isbox`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_dining_table`
--

INSERT INTO `tp_dining_table` (`id`, `cid`, `name`, `num`, `image`, `isbox`, `isorder`, `status`, `catid`) VALUES
(12, 24, '餐台3', 10, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_orange/6.png', 0, 0, 0, 24),
(11, 24, '餐台2', 10, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/12.png', 0, 0, 0, 24),
(10, 24, '餐台1', 30, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_orange/1.png', 0, 0, 0, 24),
(13, 29, '分支餐台', 10, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_green/5.png', 0, 0, 0, 29),
(14, 30, 'cantai', 30, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_blue/11.png', 0, 0, 0, 30);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish`
--

CREATE TABLE IF NOT EXISTS `tp_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `isopen` (`isopen`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tp_dish`
--

INSERT INTO `tp_dish` (`id`, `cid`, `sid`, `name`, `unit`, `price`, `ishot`, `isopen`, `image`, `des`, `creattime`, `catid`) VALUES
(1, 1, 1, '测试1', '份', 10, 1, 1, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/1.png', 'TEST', 1402465707, 1),
(2, 3, 2, '烤肉', '1', 100, 1, 1, 'http://img0.imgtn.bdimg.com/it/u=3322811983,2090993631&amp;fm=21&amp;gp=0.jpg', '烤肉烤肉烤肉烤肉烤肉烤肉烤肉烤肉烤肉', 1404200179, 0),
(3, 6, 3, '毛雪红', '份', 10, 1, 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '111', 1405437551, 6),
(4, 13, 4, '商品1', '分', 12, 1, 1, '', '', 1406122188, 13),
(5, 13, 4, '商品2', '23', 12, 0, 1, '', '', 1406122204, 14),
(6, 17, 5, '红烧鱼', '份', 50, 1, 1, '', '好辣', 1406354437, 17),
(7, 24, 6, '菜品1', '分', 999, 1, 1, 'http://weixin.jihuodi.com/uploads/q/qzembv1407229744/2/8/2/6/thumb_53e0d98639387.jpg', '描述1', 1407244688, 24),
(8, 29, 8, '分支菜品1', '份', 500, 1, 1, 'http://weixin.jihuodi.com/uploads/o/oblian1407245051/0/c/d/9/thumb_53e0dc4c90f56.jpg', '分支菜品描述1', 1407245401, 29),
(9, 30, 9, 'caipin1', 'pi', 333, 1, 1, 'http://weixin.jihuodi.com/uploads/w/wnncyu1407245884/a/1/8/4/thumb_53e0df9ebebc2.jpg', 'miaoshu1', 1407246246, 30);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_company`
--

CREATE TABLE IF NOT EXISTS `tp_dish_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺选择',
  `bulletin` varchar(128) NOT NULL COMMENT '店铺公告',
  `status` char(1) NOT NULL COMMENT '店铺状态0营业1未营业',
  `category` varchar(128) NOT NULL COMMENT '店铺类型',
  `time` varchar(128) NOT NULL COMMENT '营业时间',
  `money` varchar(16) NOT NULL COMMENT '起送价格',
  `radius` varchar(16) NOT NULL COMMENT '服务半径',
  `scope` varchar(128) NOT NULL COMMENT '配送区域',
  `phone` varchar(16) NOT NULL COMMENT '短信通知',
  `email` varchar(64) NOT NULL COMMENT '邮件通知',
  `print_status` char(1) NOT NULL COMMENT '无线打印',
  `phone_authorize` int(1) NOT NULL COMMENT '手机订单短信验证开关',
  `memberCode` varchar(64) NOT NULL COMMENT '商户代码',
  `feiyin_key` varchar(64) NOT NULL COMMENT 'API 密钥',
  `deviceNo` varchar(64) NOT NULL COMMENT '设备编码',
  `phone_status` char(1) NOT NULL COMMENT '短信通知',
  `email_status` char(1) NOT NULL COMMENT '邮件通知',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `tp_dish_company`
--

INSERT INTO `tp_dish_company` (`id`, `cid`, `istakeaway`, `price`, `payonline`, `token`, `catid`, `bulletin`, `status`, `category`, `time`, `money`, `radius`, `scope`, `phone`, `email`, `print_status`, `phone_authorize`, `memberCode`, `feiyin_key`, `deviceNo`, `phone_status`, `email_status`) VALUES
(1, 1, 1, 3, 1, '', 1, '', '', '快餐', '', '', '', '', '', '271356340@qq.com', '1', 0, '123', '123123', '12312', '1', '1'),
(2, 3, 1, 10, 1, '', 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(3, 6, 0, 10, 0, '', 6, '', '', '', '', '', '', '', '', '', '0', 0, '', '', '', '0', '0'),
(4, 13, 1, 0, 1, '', 13, '', '', '', '', '', '', '', '', '402677701@qq.com', '0', 0, '', '', '', '0', '1'),
(5, 13, 1, 0, 1, '', 14, '', '', '小吃', '', '', '', '', '', '402677701@qq.com', '0', 0, '', '', '', '0', '1'),
(6, 17, 0, 10, 0, '', 17, '', '', '快餐', '', '', '', '', '', '271356340@qq.com', '0', 0, '', '', '', '1', '1'),
(7, 19, 0, 0, 0, '', 19, '', '', '小吃', '', '', '', '', '', '56293210@qq.com', '0', 0, '', '', '', '0', '1'),
(8, 23, 0, 10, 0, '', 23, '', '', '', '', '', '', '', '', '', '0', 0, '', '', '', '0', '0'),
(9, 24, 1, 50, 1, '', 24, '', '', '快餐', '', '', '', '', '', '', '0', 0, '', '', '', '0', '0'),
(10, 24, 0, 0, 0, '', 25, '', '', '小吃', '', '', '', '', '', '', '0', 0, '', '', '', '0', '0'),
(11, 29, 0, 0, 0, '', 29, '', '', '小吃分支', '', '', '', '', '', '', '0', 0, '', '', '', '0', '0'),
(12, 30, 0, 0, 0, '', 30, '', '', 'xiaoc', '', '', '', '', '', '', '0', 0, '', '', '', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_like`
--

CREATE TABLE IF NOT EXISTS `tp_dish_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_dish_like`
--

INSERT INTO `tp_dish_like` (`id`, `did`, `cid`, `wecha_id`) VALUES
(1, 1, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0'),
(2, 4, 13, 'oKzsIj6FRYxG_t-TBGjq4ljYGS88'),
(3, 5, 13, 'oKzsIj6FRYxG_t-TBGjq4ljYGS88'),
(4, 7, 24, 'oM40BuImzFG46rasnGQt_rjK7f1Y');

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_order`
--

CREATE TABLE IF NOT EXISTS `tp_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  `send_mail` int(8) NOT NULL COMMENT '1已发0失败',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `tp_dish_order`
--

INSERT INTO `tp_dish_order` (`id`, `cid`, `wecha_id`, `token`, `total`, `price`, `nums`, `info`, `name`, `sex`, `tel`, `address`, `tableid`, `time`, `reservetime`, `isuse`, `paid`, `orderid`, `printed`, `des`, `takeaway`, `catid`, `send_mail`) VALUES
(28, 24, 'oM40BuImzFG46rasnGQt_rjK7f1Y', 'qzembv1407229744', 1, 1049, 1, 'a:2:{s:13:"takeAwayPrice";s:2:"50";s:4:"list";a:1:{i:7;a:4:{s:5:"price";s:3:"999";s:3:"num";i:1;s:4:"name";s:7:"菜品1";s:3:"des";s:0:"";}}}', '测试', 0, '18888888888', '测试地址', 0, 1407245618, 1407718800, 0, 0, 'Y20140805213338', 0, '', 1, 0, 0),
(26, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 2, 23, 1, 'a:2:{s:13:"takeAwayPrice";s:1:"3";s:4:"list";a:1:{i:1;a:4:{s:5:"price";s:2:"10";s:3:"num";i:2;s:4:"name";s:7:"测试1";s:3:"des";s:0:"";}}}', '衷国强', 0, '13511350189', '哈哈还123给你', 0, 1406971299, 1407081600, 0, 0, '020140802172139', 0, '', 1, 0, 0),
(27, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 2, 23, 1, 'a:2:{s:13:"takeAwayPrice";s:1:"3";s:4:"list";a:1:{i:1;a:4:{s:5:"price";s:2:"10";s:3:"num";i:2;s:4:"name";s:7:"测试1";s:3:"des";s:0:"";}}}', '衷国强', 0, '13511350189', '哈哈还123给你', 0, 1406971396, 1406995200, 0, 0, '020140802172316', 0, '', 1, 0, 0),
(25, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 1, 13, 1, 'a:2:{s:13:"takeAwayPrice";s:1:"3";s:4:"list";a:1:{i:1;a:4:{s:5:"price";s:2:"10";s:3:"num";i:1;s:4:"name";s:7:"测试1";s:3:"des";s:0:"";}}}', '衷国强', 0, '13511350189', '哈哈还123给你', 0, 1406970849, 1407168000, 0, 0, '020140802171409', 0, '', 1, 0, 0),
(24, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 1, 10, 1, 'a:2:{s:13:"takeAwayPrice";i:0;s:4:"list";a:1:{i:1;a:4:{s:5:"price";s:2:"10";s:3:"num";i:1;s:4:"name";s:7:"测试1";s:3:"des";s:0:"";}}}', '衷国强', 0, '13511350189', '', 1, 1406967105, 1406977200, 0, 0, '020140802161145', 0, '', 0, 0, 0),
(17, 17, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'shibnn1405586353', 1, 50, 1, 'a:2:{s:13:"takeAwayPrice";i:0;s:4:"list";a:1:{i:6;a:4:{s:5:"price";s:2:"50";s:3:"num";i:1;s:4:"name";s:9:"红烧鱼";s:3:"des";s:0:"";}}}', '', 1, '', '', 0, 1406448444, 1406449038, 0, 0, '020140727160724', 0, '', 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_sort`
--

CREATE TABLE IF NOT EXISTS `tp_dish_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tp_dish_sort`
--

INSERT INTO `tp_dish_sort` (`id`, `cid`, `name`, `des`, `image`, `num`, `catid`) VALUES
(1, 1, '快餐', '11', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/2.png', 1, 1),
(2, 3, '麻辣', '麻辣麻辣麻辣麻辣麻辣麻辣麻辣麻辣', 'http://img1.imgtn.bdimg.com/it/u=2853713925,2603357084&amp;fm=21&amp;gp=0.jpg', 1, 0),
(3, 6, '分类1', '1', 'http://www.466777.com/tpl/static/attachment/focus/default/1.gif', 1, 6),
(4, 13, '外卖', '', '', 2, 13),
(5, 17, '快炒', '', '', 1, 17),
(6, 24, '分类1', '分类描述1', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_orange/5.png', 1, 24),
(7, 25, '分类2', '分类描述2', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/20.png', 0, 25),
(8, 29, '分支分类', '分支分类描述1', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_green/13.png', 1, 29),
(9, 30, 'wx分类1', 'wx分类描述', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_blue/4.png', 1, 30);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_table`
--

CREATE TABLE IF NOT EXISTS `tp_dish_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`,`reservetime`),
  KEY `tableid` (`tableid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_dish_table`
--

INSERT INTO `tp_dish_table` (`id`, `cid`, `tableid`, `wecha_id`, `reservetime`, `creattime`, `orderid`, `isuse`) VALUES
(1, 1, 3, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 1402480800, 1402465873, 2, 0),
(2, 1, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 1402993624, 1402993036, 3, 0),
(3, 3, 4, 'opqOLt5SpEspMCjP6PGsMewSJq5A', 1404201094, 1404200503, 4, 0),
(7, 17, 9, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 1406359058, 1406358464, 15, 0),
(8, 17, 9, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 1406448977, 1406448388, 16, 0),
(14, 1, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 1406977200, 1406967105, 24, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_diyform`
--

CREATE TABLE IF NOT EXISTS `tp_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diyform_set`
--

CREATE TABLE IF NOT EXISTS `tp_diyform_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diymen_class`
--

CREATE TABLE IF NOT EXISTS `tp_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(300) NOT NULL DEFAULT '',
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `tp_diymen_class`
--

INSERT INTO `tp_diymen_class` (`id`, `token`, `pid`, `title`, `keyword`, `url`, `is_show`, `sort`) VALUES
(5, 'hzddpv1405521492', 0, '测试2', '测试2', 'baidu.com', 1, 2),
(4, 'hzddpv1405521492', 0, '新测试1', '新测试1', 'weibo.com', 1, 1),
(6, 'hzddpv1405521492', 0, '测试3', '测试3', 'xinlang.com', 1, 0),
(7, 'tjmmox1405563308', 0, '12312', '123', '', 1, 1),
(9, 'hgfgmt1404896579', 0, '2', '团购', '2', 1, 2),
(12, 'shibnn1405586353', 0, '首页', '首页', '', 1, 1),
(11, 'hgfgmt1404896579', 0, '22', '订餐', '1', 1, 3),
(13, 'shibnn1405586353', 0, '团购系统', '团购', '', 1, 2),
(14, 'shibnn1405586353', 0, '商城系统', '商城', '', 1, 3),
(15, 'shibnn1405586353', 14, '订餐', '订餐', '', 1, 0),
(16, 'ksmbyh1406371219', 0, '关于我们', '关于我们', '', 1, 0),
(17, 'ksmbyh1406371219', 0, '粉丝互动', '粉丝互动', '', 1, 0),
(18, 'ksmbyh1406371219', 0, '珠宝展示', '珠宝展示', '', 1, 0),
(19, 'ksmbyh1406371219', 16, '公司简介', '公司简介', '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_diymen_set`
--

CREATE TABLE IF NOT EXISTS `tp_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- 转存表中的数据 `tp_diymen_set`
--

INSERT INTO `tp_diymen_set` (`id`, `token`, `appid`, `appsecret`) VALUES
(3, 'ekfdng1401977502', 'wxa89444fdf275a856', 'a3d80dd6e74a1771773bb5eaba6b74e9'),
(4, 'ooeiuv1402737849', '', ''),
(5, 'pteilr1402833110', '', ''),
(6, 'nszorb1402857075', '', ''),
(7, 'xshtyn1403100790', '998998', '998998'),
(8, 'ficefo1403523346', '2', '2'),
(9, 'bwvmro1404199686', '', ''),
(10, 'psuyri1404444703', '', ''),
(11, 'tlpqmn1404450757', '', ''),
(12, 'dxgyrd1404462982', '', ''),
(13, 'vzukui1404545578', '', ''),
(14, 'qzwpqe1404546345', '', ''),
(15, 'hpwshv1404715458', '3', '3'),
(16, 'vtdscs1404740044', '', ''),
(17, 'pwearo1404791557', '', ''),
(18, 'azleau1404838233', 'wxa4385c65962ef0f3', 'f8a5bb5b8a5725b2999c1c54cda45e07'),
(19, 'vmwylz1404883194', '', ''),
(20, 'knekzj1404896275', '', ''),
(21, 'hgfgmt1404896579', 'wxa89444fdf275a856', 'a3d80dd6e74a1771773bb5eaba6b74e9'),
(22, 'gmrqhe1405059770', '', ''),
(23, 'ofrbtc1405169766', '123321', '123321'),
(24, 'smdqgn1405176606', '', ''),
(25, 'qzqmzz1405433484', '', ''),
(26, 'ldaulo1405482578', '', ''),
(27, 'kyhwga1405500137', '', ''),
(28, 'hzddpv1405521492', 'wxa4385c65962ef0f3', 'f8a5bb5b8a5725b2999c1c54cda45e07'),
(29, 'tjmmox1405563308', 'wx67df04561a1c0bb3', 'eb4163a1224d6856e12db114ba2a9cc8'),
(30, 'shibnn1405586353', 'wxa89444fdf275a856', 'a3d80dd6e74a1771773bb5eaba6b74e9'),
(31, 'sdsrvl1405589701', '', ''),
(32, 'cahcww1405590711', '', ''),
(33, 'thvusk1405647851', '3213123', '213213213'),
(34, 'rqnkyd1405672139', '', ''),
(35, 'ubtrwc1405702514', '', ''),
(36, 'dzucxy1405741000', '', ''),
(37, 'ylzodr1405747302', '', ''),
(38, 'tiqlly1405761617', '', ''),
(39, 'spzzkp1405790344', '', ''),
(40, 'vfrcfa1405826496', '', ''),
(41, 'negttb1405850678', '', ''),
(42, 'mxnkmq1405914043', '', ''),
(43, 'gcccbf1405935616', '', ''),
(44, 'iqdbrg1405937896', '', ''),
(45, 'xjclzx1405958021', '', ''),
(46, 'xyhsmo1405967053', '', ''),
(47, 'qajxvf1405996113', '', ''),
(48, 'zrkepg1406003661', 'wx04fda9731b0766fa', '6ca6d8326dacc202c769d4ae87196db8'),
(49, 'iihybk1406007981', '', ''),
(50, 'mnzqdb1406009469', '', ''),
(51, 'jguphy1406010039', '', ''),
(52, 'tccwvw1406014990', '', ''),
(53, 'xcmcbn1406020997', '', ''),
(54, 'xtqgxk1406024082', '', ''),
(55, 'punypv1406120801', '', ''),
(56, 'oalaxv1406127433', '', ''),
(57, 'wwvwfz1406130726', '8', '890'),
(58, 'bqtxnv1406167321', '', ''),
(59, 'lrjngf1406171501', '', ''),
(60, 'glpuql1406183745', '', ''),
(61, 'kogqns1406184632', '', ''),
(62, 'ueotip1406188853', '', ''),
(63, 'gwtuam1406201970', '', ''),
(64, 'achbur1406208229', '', ''),
(65, 'wpirvf1406216732', '', ''),
(66, 'prqrpe1406264162', 'wx62ed6af390cd76cb', '205b9d1d118099e380a6cfc15629a77b'),
(67, 'msflwi1406266826', '', ''),
(68, 'zqrmsx1406336165', 'cqipnetcqipnet', 'cqipnetcqipnetcqipnetcqipnetcqip'),
(69, 'lutuse1406361038', '', ''),
(70, 'ksmbyh1406371219', 'wxfaeed697f16a681a', '655e934b93bd5a8e91f5dbe821f8cd3a'),
(71, 'yorbbr1406463012', '', ''),
(72, 'bnvweb1406514635', '', ''),
(73, 'svmfnd1406520959', '', ''),
(74, 'pzbwyi1406724637', '', ''),
(75, 'glgzhr1406775560', 'adf', ''),
(76, 'eaclnz1406783725', '', ''),
(77, 'xctvth1406867781', '', ''),
(78, 'xmsxhg1406875274', '', ''),
(79, 'kmnwkp1406885165', '', ''),
(80, 'igslhu1406887106', '', ''),
(81, 'inwwwf1406943327', 'wxd5a36aa03ed8fbfa', '518bfd79db2c31b3055d69cddb2f38b1'),
(82, 'vzohcb1406947236', '', ''),
(83, 'owikav1406947345', 'safsdaf', 'sdfsfd'),
(84, 'pgedyf1407030714', '', ''),
(85, 'qzembv1407229744', 'wx956fea45065d6b22', '776be52b1ef1115a7e57184e5b25e93b'),
(86, 'xbgzcp1407232534', '', ''),
(87, 'oblian1407245051', '', ''),
(88, 'wnncyu1407245884', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_dream`
--

CREATE TABLE IF NOT EXISTS `tp_dream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate`
--

CREATE TABLE IF NOT EXISTS `tp_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '36',
  `conttpid` tinyint(4) DEFAULT '36',
  `menu1` varchar(50) NOT NULL,
  `menu2` varchar(50) NOT NULL,
  `menu3` varchar(50) NOT NULL,
  `menu4` varchar(50) NOT NULL,
  `menu5` varchar(50) NOT NULL,
  `menu6` varchar(50) NOT NULL,
  `menu7` varchar(50) NOT NULL,
  `menu8` varchar(50) NOT NULL,
  `picurl1` varchar(500) NOT NULL,
  `picurl2` varchar(500) NOT NULL,
  `picurl3` varchar(500) NOT NULL,
  `picurl4` varchar(500) NOT NULL,
  `picurl5` varchar(500) NOT NULL,
  `picurl6` varchar(500) NOT NULL,
  `picurl7` varchar(500) NOT NULL,
  `picurl8` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_estate`
--

INSERT INTO `tp_estate` (`id`, `token`, `title`, `keyword`, `matchtype`, `cover`, `panorama_id`, `classify_id`, `res_id`, `banner`, `video`, `house_banner`, `place`, `lng`, `lat`, `estate_desc`, `project_brief`, `traffic_desc`, `path`, `tpid`, `conttpid`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `picurl1`, `picurl2`, `picurl3`, `picurl4`, `picurl5`, `picurl6`, `picurl7`, `picurl8`) VALUES
(1, 'xbgzcp1407232534', '房子', '房子', 0, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', 0, 0, 0, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/b/4/thumb_53e0bc4b9c671.jpg', '', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', '四川理工学院', '', '', '11', '11', '11', '0', 36, 36, '楼盘首页', '楼盘介绍', '户型全景', '楼盘相册', '楼盘信息', '点评印象', '预约看房', '关于我们', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu6.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu2.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu6.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu12.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu3.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu4.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu5.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu6.png');

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_album`
--

CREATE TABLE IF NOT EXISTS `tp_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_estate_album`
--

INSERT INTO `tp_estate_album` (`id`, `pid`, `poid`, `token`) VALUES
(1, 0, 6, 'xbgzcp1407232534');

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_expert`
--

CREATE TABLE IF NOT EXISTS `tp_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_estate_expert`
--

INSERT INTO `tp_estate_expert` (`id`, `token`, `pid`, `title`, `sort`, `name`, `position`, `face`, `description`, `comment`) VALUES
(1, 'xbgzcp1407232534', 0, '1111', 1, '22', '3333', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/3/6/6/e/53e0bc064c4b4.jpg', '22222', '2222');

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_housetype`
--

CREATE TABLE IF NOT EXISTS `tp_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_estate_housetype`
--

INSERT INTO `tp_estate_housetype` (`id`, `panorama_id`, `son_id`, `token`, `name`, `floor_num`, `area`, `fang`, `ting`, `sort`, `description`, `abid`, `type1`, `type2`, `type3`, `type4`) VALUES
(1, 3, 0, 'xbgzcp1407232534', '12', '1', '111', 1, 1, 1, '11', '', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/3/6/6/e/53e0bc064c4b4.jpg', '', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/3/6/6/e/53e0bc064c4b4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_impress`
--

CREATE TABLE IF NOT EXISTS `tp_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_estate_impress`
--

INSERT INTO `tp_estate_impress` (`id`, `token`, `pid`, `title`, `sort`, `comment`, `is_show`) VALUES
(1, 'xbgzcp1407232534', 0, '1', 1, '11', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_impress_add`
--

CREATE TABLE IF NOT EXISTS `tp_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imp_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_son`
--

CREATE TABLE IF NOT EXISTS `tp_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_estate_son`
--

INSERT INTO `tp_estate_son` (`id`, `pid`, `token`, `title`, `sort`, `description`) VALUES
(1, 1, 'xbgzcp1407232534', '1', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_files`
--

CREATE TABLE IF NOT EXISTS `tp_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- 转存表中的数据 `tp_files`
--

INSERT INTO `tp_files` (`id`, `token`, `url`, `size`, `type`, `time`) VALUES
(1, 'admin', 'http://www.466777.com/uploads/a/admin/3/2/4/f/thumb_53915e5f8bfd0.png', 21161, 'png', 1402035807),
(2, 'tlpqmn1404450757', 'http://www.466777.com/uploads/t/tlpqmn1404450757/4/3/e/8/thumb_53b6431e7a120.jpg', 30263, 'jpg', 1404453662),
(3, 'vmwylz1404883194', 'http://www.466777.com/uploads/v/vmwylz1404883194/7/d/1/5/thumb_53bcd21c5b3a2.jpg', 81152, 'jpg', 1404883484),
(4, 'vmwylz1404883194', 'http://www.466777.com/uploads/v/vmwylz1404883194/a/a/0/6/thumb_53bcd2884456c.jpg', 81152, 'jpg', 1404883592),
(5, 'ekfdng1401977502', 'http://www.466777.com/uploads/e/ekfdng1401977502/d/2/6/1/thumb_53bfa4b7d1cef.jpeg', 231727, 'jpeg', 1405068472),
(6, 'azleau1404838233', 'http://www.466777.com/uploads/a/azleau1404838233/c/7/0/2/thumb_53c5413bb8efc.jpg', 10238, 'jpg', 1405436219),
(7, 'hzddpv1405521492', 'http://www.466777.com/uploads/h/hzddpv1405521492/e/b/c/a/thumb_53c691952bcaf.jpg', 30608, 'jpg', 1405522325),
(8, 'hzddpv1405521492', 'http://www.466777.com/uploads/h/hzddpv1405521492/9/a/5/c/thumb_53c6989f2429d.jpg', 9395, 'jpg', 1405524127),
(9, 'hzddpv1405521492', 'http://www.466777.com/uploads/h/hzddpv1405521492/4/e/6/3/thumb_53c69ddf27fa6.jpg', 29598, 'jpg', 1405525471),
(10, 'hzddpv1405521492', 'http://www.466777.com/uploads/h/hzddpv1405521492/2/f/7/5/thumb_53c69e11f2283.jpg', 32555, 'jpg', 1405525522),
(11, 'hzddpv1405521492', 'http://www.466777.com/uploads/h/hzddpv1405521492/9/4/f/c/thumb_53c69e2a2f9b8.jpg', 9395, 'jpg', 1405525546),
(12, 'hzddpv1405521492', 'http://www.466777.com/uploads/h/hzddpv1405521492/9/4/1/d/thumb_53c69e43df156.jpg', 33787, 'jpg', 1405525572),
(13, 'hzddpv1405521492', 'http://www.466777.com/uploads/h/hzddpv1405521492/f/4/3/a/thumb_53c6a484b8efc.jpg', 32555, 'jpg', 1405527172),
(14, 'hgfgmt1404896579', 'http://www.466777.com/uploads/h/hgfgmt1404896579/0/e/b/8/thumb_53c77db765036.jpg', 17384, 'jpg', 1405582775),
(15, 'punypv1406120801', 'http://www.466777.com/uploads/p/punypv1406120801/2/5/7/0/thumb_53cfb51b4e200.jpg', 35162, 'jpg', 1406121243),
(16, 'punypv1406120801', 'http://www.466777.com/uploads/p/punypv1406120801/9/7/9/1/thumb_53cfb685a5dcf.jpg', 39522, 'jpg', 1406121605),
(17, 'punypv1406120801', 'http://www.466777.com/uploads/p/punypv1406120801/c/f/b/6/thumb_53cfb70c92ca2.png', 1188022, 'png', 1406121741),
(18, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/5/5/0/4/thumb_53d0a73a4a4f7.jpg', 10917, 'jpg', 1406183226),
(19, 'glpuql1406183745', 'http://www.466777.com/uploads/g/glpuql1406183745/1/b/2/7/thumb_53d0aa91c8320.jpg', 109281, 'jpg', 1406184082),
(20, 'glpuql1406183745', 'http://www.466777.com/uploads/g/glpuql1406183745/6/9/5/1/thumb_53d0aaa34a4f7.jpg', 109281, 'jpg', 1406184099),
(21, 'glpuql1406183745', 'http://www.466777.com/uploads/g/glpuql1406183745/3/e/9/b/thumb_53d0aae2a20c6.jpg', 109281, 'jpg', 1406184162),
(22, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/9/4/7/0/thumb_53d0accec4617.jpg', 10889, 'jpg', 1406184654),
(23, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/b/3/e/3/thumb_53d0ad38cc029.jpg', 29137, 'jpg', 1406184760),
(24, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/6/c/0/b/thumb_53d0adada9ad8.jpg', 10330, 'jpg', 1406184877),
(25, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/a/8/6/f/thumb_53d0adb9a5dcf.jpg', 10330, 'jpg', 1406184889),
(26, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/5/f/c/b/thumb_53d0ae6cd3a3b.jpg', 14400, 'jpg', 1406185068),
(27, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/a/3/7/thumb_53d0ae872429d.jpg', 7032, 'jpg', 1406185095),
(28, 'kogqns1406184632', 'http://www.466777.com/uploads/k/kogqns1406184632/8/7/e/6/thumb_53d0ae99b8efc.jpg', 109281, 'jpg', 1406185113),
(29, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/d/a/6/thumb_53d0aea8a20c6.jpg', 22478, 'jpg', 1406185128),
(30, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/a/d/9/3/thumb_53d0aede8b290.jpg', 8298, 'jpg', 1406185182),
(31, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/3/8/9/4/thumb_53d0af2387587.jpg', 19489, 'jpg', 1406185251),
(32, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/7/4/2/4/thumb_53d0b52501d4c.jpg', 8202, 'jpg', 1406186789),
(33, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/4/1/f/6/thumb_53d0b5443eddc.jpg', 46439, 'jpg', 1406186820),
(34, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/6/5/f/6/thumb_53d0b553bcc05.jpg', 8202, 'jpg', 1406186835),
(35, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/f/1/e/4/thumb_53d0b5752f9b8.png', 933028, 'png', 1406186870),
(36, 'bqtxnv1406167321', 'http://www.466777.com/uploads/b/bqtxnv1406167321/f/c/2/d/thumb_53d0b57e11170.jpg', 52919, 'jpg', 1406186878),
(37, 'achbur1406208229', 'http://www.466777.com/uploads/a/achbur1406208229/c/5/1/c/thumb_53d109a1c4617.jpg', 58616, 'jpg', 1406208417),
(38, 'achbur1406208229', 'http://www.466777.com/uploads/a/achbur1406208229/a/3/1/5/thumb_53d10abcdf156.png', 1476, 'png', 1406208700),
(39, 'shibnn1405586353', 'http://www.466777.com/uploads/s/shibnn1405586353/a/f/0/d/53d3576d60969.jpg', 32516, 'jpg', 1406359405),
(40, 'ksmbyh1406371219', 'http://www.466777.com/uploads/k/ksmbyh1406371219/a/c/6/3/thumb_53d54e5c5cc60.jpg', 28539, 'jpg', 1406488156),
(41, 'ksmbyh1406371219', 'http://www.466777.com/uploads/k/ksmbyh1406371219/1/0/2/9/thumb_53d9bf6cb8538.png', 7998, 'png', 1406779244),
(42, 'xctvth1406867781', 'http://weixin.jihuodi.com/uploads/x/xctvth1406867781/a/c/8/1/thumb_53db273e790a8.jpg', 31499, 'jpg', 1406871358),
(43, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/1/f/5/thumb_53dc59454dd2a.png', 16590, 'png', 1406949701),
(44, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/6/f/4/f/thumb_53dc59db11acb.jpg', 21456, 'jpg', 1406949851),
(45, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/3/1/9/thumb_53dc59e76bb10.jpg', 12038, 'jpg', 1406949863),
(46, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/c/0/0/c/thumb_53dc5a23c31b0.png', 305415, 'png', 1406949924),
(51, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/6/3/5/d/thumb_53e05af2ec82e.php', 21804, 'php', 1407212275),
(48, 'ekfdng1401977502', 'http://weixin.jihuodi.com/uploads/e/ekfdng1401977502/1/6/e/b/thumb_53ddc5ab16e36.jpg', 70530, 'jpg', 1407042987),
(49, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/1/a/9/b/thumb_53ddf1ada037a.jpg', 43010, 'jpg', 1407054253),
(50, 'ekfdng1401977502', 'http://weixin.jihuodi.com/uploads/e/ekfdng1401977502/3/e/d/3/thumb_53ddf1fd4c4b4.png', 11260, 'png', 1407054333),
(52, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/e/a/1/8/thumb_53e05b1fc28cb.php', 141093, 'php', 1407212319),
(53, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/7/8/4/8/thumb_53e05b7dec82e.jpg', 51128, 'jpg', 1407212414),
(54, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/a/e/1/5/thumb_53e05bab76417.php', 141093, 'php', 1407212459),
(55, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/f/7/5/4/thumb_53e05be640d99.php', 141093, 'php', 1407212518),
(56, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/2/e/6/thumb_53e05c27f0537.php', 141093, 'php', 1407212584),
(57, 'vzohcb1406947236', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/3/0/3/thumb_53e05e8c16e36.php', 141093, 'php', 1407213196),
(58, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/2/d/7/8/thumb_53e0ad100f424.jpg', 32229, 'jpg', 1407233296),
(59, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/e/c/7/2/thumb_53e0ad3394c5f.jpg', 11502, 'jpg', 1407233331),
(60, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/5/8/0/thumb_53e0ad54b34a7.jpg', 43574, 'jpg', 1407233365),
(61, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/8/d/f/4/thumb_53e0ad6322551.jpg', 43574, 'jpg', 1407233379),
(62, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/9/5/a/b/thumb_53e0add25f5e1.jpg', 6489, 'jpg', 1407233490),
(63, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/b/7/f/2/thumb_53e0ade21ab3f.png', 4494, 'png', 1407233506),
(64, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/d/d/e/0/thumb_53e0ae58a4083.jpg', 6489, 'jpg', 1407233624),
(65, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/c/6/4/7/thumb_53e0af828583b.jpg', 137475, 'jpg', 1407233922),
(66, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/9/8/4/e/thumb_53e0b0d8d9701.jpg', 137475, 'jpg', 1407234265),
(67, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/c/1/1/thumb_53e0b1f198968.jpg', 6489, 'jpg', 1407234545),
(68, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/1/6/4/d/thumb_53e0b1f8487ab.jpg', 6489, 'jpg', 1407234552),
(69, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/b/0/9/4/thumb_53e0b8602625a.jpg', 39166, 'jpg', 1407236192),
(70, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/4/d/thumb_53e0bb6490f56.jpg', 6489, 'jpg', 1407236964),
(71, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/c/6/f/9/thumb_53e0bb6ba7d8c.jpg', 6489, 'jpg', 1407236971),
(72, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/8/b/b/thumb_53e0bba000000.jpg', 82542, 'jpg', 1407237024),
(73, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/d/9/a/8/53e0bc03bebc2.jpg', 137475, 'jpg', 1407237123),
(74, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/3/6/6/e/53e0bc064c4b4.jpg', 47681, 'jpg', 1407237126),
(75, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/b/4/thumb_53e0bc4b9c671.jpg', 39166, 'jpg', 1407237195),
(76, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', 32229, 'jpg', 1407237775),
(77, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', 82542, 'jpg', 1407238448),
(78, 'qzembv1407229744', 'http://weixin.jihuodi.com/uploads/q/qzembv1407229744/2/8/2/6/thumb_53e0d98639387.jpg', 104431, 'jpg', 1407244678),
(79, 'oblian1407245051', 'http://weixin.jihuodi.com/uploads/o/oblian1407245051/0/c/d/9/thumb_53e0dc4c90f56.jpg', 62491, 'jpg', 1407245388),
(80, 'wnncyu1407245884', 'http://weixin.jihuodi.com/uploads/w/wnncyu1407245884/a/1/8/4/thumb_53e0df9ebebc2.jpg', 104691, 'jpg', 1407246239);

-- --------------------------------------------------------

--
-- 表的结构 `tp_flash`
--

CREATE TABLE IF NOT EXISTS `tp_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `tp_flash`
--

INSERT INTO `tp_flash` (`id`, `token`, `img`, `url`, `info`, `tip`) VALUES
(1, 'tlpqmn1404450757', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', 'http://meilumi.tmall.com/', '11111111111', 1),
(2, 'tlpqmn1404450757', 'http://www.466777.com/tpl/static/attachment/background/view/9.jpg', '', '背景222222222222', 2),
(16, 'ekfdng1401977502', 'http://weixin.jihuodi.com/uploads/e/ekfdng1401977502/1/6/e/b/thumb_53ddc5ab16e36.jpg', '', '', 2),
(17, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/9/5/a/b/thumb_53e0add25f5e1.jpg', '', '', 1),
(7, 'azleau1404838233', 'http://www.466777.com/tpl/static/attachment/background/view/5.jpg', '', '描述1', 2),
(8, 'hzddpv1405521492', 'http://www.466777.com/tpl/static/attachment/background/view/3.jpg', '', '描述1', 2),
(9, 'kogqns1406184632', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '', '11', 1),
(10, 'bqtxnv1406167321', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '{siteUrl}/index.php?g=Wap&amp;amp;m=Photo&amp;amp;a=plist&amp;amp;token=bqtxnv1406167321&amp;amp;wecha_id={wechat_id}&amp;amp;id=2', '幻灯片描述', 1),
(11, 'ksmbyh1406371219', 'http://www.466777.com/uploads/k/ksmbyh1406371219/a/c/6/3/thumb_53d54e5c5cc60.jpg', '', '', 1),
(12, 'ksmbyh1406371219', 'http://www.466777.com/tpl/static/attachment/background/view/../fangdichan/3.jpg', '', '', 2),
(13, 'pzbwyi1406724637', 'http://www.466777.com/tpl/static/attachment/background/view/1.jpg', '', '微商城', 2),
(18, 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/b/7/f/2/thumb_53e0ade21ab3f.png', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_comment`
--

CREATE TABLE IF NOT EXISTS `tp_forum_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_config`
--

CREATE TABLE IF NOT EXISTS `tp_forum_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_forum_config`
--

INSERT INTO `tp_forum_config` (`id`, `bgurl`, `picurl`, `comcheck`, `intro`, `ischeck`, `pv`, `forumname`, `logo`, `token`, `isopen`) VALUES
(1, '', '', '0', '', 0, 2, '同创科技官方粉丝社区', '/tpl/Wap/default/common/images/forum/face.png', 'ekfdng1401977502', 1),
(2, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/c/6/f/9/thumb_53e0bb6ba7d8c.jpg', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/4/d/thumb_53e0bb6490f56.jpg', '0', '', 0, 1, '四川理工零校网官方粉丝社区', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/8/d/f/4/thumb_53e0ad6322551.jpg', 'xbgzcp1407232534', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_message`
--

CREATE TABLE IF NOT EXISTS `tp_forum_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_topics`
--

CREATE TABLE IF NOT EXISTS `tp_forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(300) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_forum_topics`
--

INSERT INTO `tp_forum_topics` (`id`, `title`, `content`, `likeid`, `commentid`, `favourid`, `createtime`, `updatetime`, `uid`, `uname`, `token`, `photos`, `status`) VALUES
(1, '神奇', '真神奇', NULL, NULL, NULL, 1402034133, NULL, 'o48e9t55kSHy8cNLYPkhzCxtriG0', '小衷', 'ekfdng1401977502', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_function`
--

CREATE TABLE IF NOT EXISTS `tp_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `tp_function`
--

INSERT INTO `tp_function` (`id`, `gid`, `usenum`, `name`, `funname`, `info`, `isserve`, `status`) VALUES
(1, 1, 0, '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', 1, 1),
(2, 1, 0, '糗事', 'qiushi', '糗事　直接发送糗事', 1, 1),
(3, 1, 0, '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', 1, 1),
(4, 4, 0, '朗读', 'langdu', '朗读＋关键词　例：朗读pigcms多用户营销系统', 1, 1),
(5, 3, 0, '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', 1, 1),
(6, 1, 0, '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', 1, 1),
(7, 1, 0, '笑话', 'xiaohua', '笑话　直接发送笑话', 1, 1),
(8, 2, 0, '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', 1, 1),
(9, 1, 0, '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', 1, 1),
(10, 1, 0, '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', 1, 1),
(11, 3, 0, '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', 1, 1),
(12, 2, 0, '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', 1, 1),
(13, 2, 0, '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', 1, 1),
(14, 2, 0, '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', 1, 1),
(15, 2, 0, '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', 1, 1),
(16, 1, 0, '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912', 1, 1),
(17, 3, 0, '音乐查询', 'yinle', '音乐＋音乐名 ?例：音乐爱你一万年', 1, 1),
(18, 1, 0, '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', 1, 1),
(43, 4, 0, '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', 1, 1),
(20, 3, 0, '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', 2, 1),
(21, 4, 0, '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', 2, 1),
(22, 1, 0, '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', 1, 1),
(23, 4, 0, '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', 1, 1),
(24, 1, 0, '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', 1, 1),
(25, 3, 0, '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', 2, 1),
(26, 2, 0, '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', 1, 1),
(42, 4, 0, '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', 2, 1),
(29, 1, 0, '3G首页', 'shouye', '输入首页,访问微3g 网站', 1, 1),
(30, 1, 0, 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', 1, 1),
(31, 4, 0, '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', 1, 1),
(36, 4, 0, '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', 2, 1),
(34, 1, 0, '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', 1, 1),
(35, 2, 0, '域名whois查询', '', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名xianghebbs.com', 1, 1),
(37, 4, 0, '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', 1, 1),
(38, 2, 0, '无线网络订餐', 'dx', '无线网络订餐', 1, 1),
(39, 2, 0, '在线商城', 'shop', '在线商城,购买系统', 1, 1),
(40, 2, 0, '在线团购系统', 'etuan', '在线团购系统', 1, 1),
(41, 4, 0, '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', 1, 1),
(44, 4, 0, '刮刮卡', 'gua2', '刮刮卡抽奖活动', 1, 1),
(45, 4, 0, '全景', 'panorama', '', 1, 1),
(46, 4, 0, '婚庆喜帖', 'wedding', '', 2, 1),
(47, 4, 0, '投票', 'vote', '', 2, 1),
(48, 4, 0, '房产', 'estate', '', 2, 1),
(49, 4, 0, '3G相册', 'album', '', 1, 1),
(50, 4, 0, '砸金蛋', 'GoldenEgg', '', 2, 1),
(51, 4, 0, '水果机', 'LuckyFruit', '', 2, 1),
(52, 4, 0, '留言板', 'message', '', 2, 1),
(53, 4, 0, '微汽车', 'car', '', 2, 1),
(54, 4, 0, '微信墙', 'wall', '', 1, 1),
(55, 4, 0, '摇一摇', 'shake', '', 1, 1),
(56, 4, 0, '微论坛', 'forum', '', 1, 1),
(57, 4, 0, '微医疗', 'medical', '', 1, 1),
(58, 4, 0, '群发消息', 'message', '', 1, 1),
(59, 4, 0, '分享统计', 'share', '', 1, 1),
(60, 4, 0, '酒店宾馆', 'hotel', '', 1, 1),
(61, 4, 0, '微教育', 'school', '', 1, 1),
(62, 4, 0, '照片墙', 'Zhaopianwall', '活动开启后，在聊天窗口中直接发送图片，即可图片上墙！', 2, 1),
(63, 4, 0, '微名片', 'Vcard', '微名片', 2, 1),
(64, 4, 0, '高级模板', 'advanceTpl', '高级模板', 2, 1),
(65, 1, 0, '一站到底', 'Dati', '', 1, 1),
(67, 4, 0, '新版预约', 'Yuyue', '新版预约', 2, 1),
(68, 4, 0, '微WIFI', 'rippleos', '1.  微信平台管理员在向 RippleTek 平台申请对应的信息后，即可 在第三方微信平台中完成路由器认证配置，不再需要到 RippleTek 云平台进行操作。\r\n2. 完成关注公众号并交互式认证，', 2, 1);

-- --------------------------------------------------------

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

-- --------------------------------------------------------

--
-- 表的结构 `tp_gamereply_info`
--

CREATE TABLE IF NOT EXISTS `tp_gamereply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `tp_gamereply_info`
--

INSERT INTO `tp_gamereply_info` (`id`, `token`, `title`, `picurl`, `picurls1`, `info`, `keyword`, `copyright`, `ad`) VALUES
(27, 'xctvth1406867781', '2048', '', '', '', '', '', ''),
(28, 'ekfdng1401977502', '欢迎您进入2048游戏', 'http://weixin.jihuodi.com/tpl/static/attachment/focus/default/5.gif', 'http://weixin.jihuodi.com/tpl/static/attachment/focus/default/../canyin/4.jpg', '要高分，就来挑战我吧，呵呵', '', '', '测试一下广告'),
(29, 'xbgzcp1407232534', '111', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_gametreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_gametreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_gametreply_info`
--

INSERT INTO `tp_gametreply_info` (`id`, `token`, `title`, `picurl`, `picurls1`, `info`, `keyword`, `copyright`, `ad`) VALUES
(10, 'hgfgmt1404896579', '2048', '', '', '212', '', '', ''),
(11, 'bqtxnv1406167321', '游戏1', 'http://www.466777.com/uploads/b/bqtxnv1406167321/6/5/f/6/thumb_53d0b553bcc05.jpg', 'http://www.466777.com/uploads/b/bqtxnv1406167321/f/c/2/d/thumb_53d0b57e11170.jpg', '内容介绍', '', '', '穿出出彩人生'),
(12, 'xbgzcp1407232534', '111', '', '', '', '', '', ''),
(13, 'vzohcb1406947236', '242', '', '', '424', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_gamettreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_gamettreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_greeting_card`
--

CREATE TABLE IF NOT EXISTS `tp_greeting_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_home`
--

CREATE TABLE IF NOT EXISTS `tp_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `homeurl` varchar(150) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL,
  `apiurl` varchar(200) NOT NULL DEFAULT '',
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `bjdh` int(11) NOT NULL,
  `tongji` varchar(500) NOT NULL,
  `dianhua` varchar(500) NOT NULL,
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `tp_home`
--

INSERT INTO `tp_home` (`id`, `token`, `title`, `picurl`, `homeurl`, `info`, `apiurl`, `musicurl`, `plugmenucolor`, `copyright`, `logo`, `bjdh`, `tongji`, `dianhua`, `radiogroup`, `advancetpl`) VALUES
(1, 'ficefo1403523346', '22', '2', '', '2', '2', '222', '', '', '2', 0, '', '', 0, 0),
(2, 'bwvmro1404199686', '微官网', 'http://img1.imgtn.bdimg.com/it/u=3846552793,1062132844&amp;fm=21&amp;gp=0.jpg', '', '微官网微官网微官网微官网微官网微官网微官网微官网微官网微官网', '', '', '', '', '', 0, '', '', 0, 0),
(3, 'tlpqmn1404450757', '123', 'http://www.466777.com/uploads/t/tlpqmn1404450757/4/3/e/8/thumb_53b6431e7a120.jpg', '', 'dfsafdsafdsafsafdsaf', '', '', '', '', '', 0, '', '', 0, 0),
(4, 'ekfdng1401977502', '微网站测试', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '', '111', '', '', '', '', '', 0, '', '', 0, 0),
(6, 'hzddpv1405521492', '欢迎光临', 'http://www.466777.com/uploads/h/hzddpv1405521492/e/b/c/a/thumb_53c691952bcaf.jpg', '', '这是首页', '', '', '', '', 'http://www.466777.com/tpl/static/attachment/icon/lovely/backpack-2.png', 0, '', '', 16, 0),
(7, 'glpuql1406183745', '9团网', 'http://www.466777.com/tpl/static/attachment/focus/default/4.jpg', '', '欢迎关注9团网', '', '', '', '', '', 0, '', '', 0, 0),
(8, 'kogqns1406184632', '首页', 'http://www.466777.com/tpl/static/attachment/focus/default/1.gif', '', '欢迎关注九团网官方', '', 'http://www.466777.com/tpl/static/attachment/music/default/1.mp3', '', '', '', 0, '', '', 0, 0),
(9, 'bqtxnv1406167321', '首页', 'http://www.466777.com/uploads/b/bqtxnv1406167321/3/8/9/4/thumb_53d0af2387587.jpg', '', '2班相册2班相册2班相册2班相册2班相册2班相册', '', 'http://www.466777.com/tpl/static/attachment/music/default/1.mp3 ', '', '', '', 0, '', '', 0, 0),
(10, 'pzbwyi1406724637', 'jackx', 'http://weixin.jihuodi.com//tpl/static/attachment/background/view/2.jpg', '', '我是JACKX', '', '', '', '', '', 0, '', '', 0, 0),
(11, 'xbgzcp1407232534', '欢迎关注零校网', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/5/8/0/thumb_53e0ad54b34a7.jpg', '', '欢迎关注零校网', '', '', '#FF0000', '', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/8/d/f/4/thumb_53e0ad6322551.jpg', 0, '', '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_home_background`
--

CREATE TABLE IF NOT EXISTS `tp_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_host`
--

CREATE TABLE IF NOT EXISTS `tp_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_host`
--

INSERT INTO `tp_host` (`id`, `token`, `keyword`, `title`, `address`, `tel`, `tel2`, `ppicurl`, `headpic`, `name`, `sort`, `picurl`, `url`, `info`, `info2`, `creattime`) VALUES
(1, 'xbgzcp1407232534', 'ktv123', '123', '', '18227757061', '12222222222', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', './tpl/User/default/common/images/cart_info/online.jpg', '11', 0, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', '', '11', '11', 1407239134);

-- --------------------------------------------------------

--
-- 表的结构 `tp_host_list_add`
--

CREATE TABLE IF NOT EXISTS `tp_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(100) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_host_order`
--

CREATE TABLE IF NOT EXISTS `tp_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_hotels_house`
--

CREATE TABLE IF NOT EXISTS `tp_hotels_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_hotels_house`
--

INSERT INTO `tp_hotels_house` (`id`, `cid`, `token`, `name`, `image`, `sid`, `note`) VALUES
(1, 27, 'xbgzcp1407232534', '111', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `tp_hotels_house_sort`
--

CREATE TABLE IF NOT EXISTS `tp_hotels_house_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_hotels_house_sort`
--

INSERT INTO `tp_hotels_house_sort` (`id`, `cid`, `token`, `name`, `image`, `price`, `vprice`, `note`, `num`, `houses`) VALUES
(1, 27, 'xbgzcp1407232534', '1111', '', 1111, 11, '11', 11, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_hotels_order`
--

CREATE TABLE IF NOT EXISTS `tp_hotels_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `enddate` (`enddate`),
  KEY `sid` (`sid`),
  KEY `stardate` (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_img`
--

CREATE TABLE IF NOT EXISTS `tp_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT '关键词匹配类型',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` longtext NOT NULL,
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_img`
--

INSERT INTO `tp_img` (`id`, `uid`, `uname`, `keyword`, `type`, `text`, `classid`, `classname`, `pic`, `showpic`, `info`, `url`, `createtime`, `uptatetime`, `click`, `token`, `title`, `usort`) VALUES
(1, 23, '123', ' 饿我去我v', '2', '', 2, '我', 'http://www.466777.com/tpl/static/attachment/focus/default/2.jpg', '1', '', '', '1405072812', '1405072812', 14, 'hgfgmt1404896579', ' 我我 ', 1),
(2, 30, '254519867', '回复一', '2', '复一是按钮111的内容回', 7, '按钮111', 'http://www.466777.com/uploads/h/hzddpv1405521492/9/a/5/c/thumb_53c6989f2429d.jpg', '1', '复一是按钮111的内容回，复一是按钮111的内容回，复一是按钮111的内容回，复一是按钮111的内容回，复一是按钮111的内容回，复一是按钮111的内容回', '', '1405524159', '1405524159', 3, 'hzddpv1405521492', '回复一', 1),
(3, 23, '123', '点餐', '2', '你好', 9, '测试', 'http://www.466777.com/uploads/p/punypv1406120801/2/5/7/0/thumb_53cfb51b4e200.jpg', '1', '你的烦恼', '', '1406121273', '1406121273', 3, 'punypv1406120801', '你好', 1),
(4, 23, '123', '', '2', 'WWWWWWWWWWWWW', 26, '01', '', '1', 'WWWWWWWWWWWWWWWWWWWWWWW', '', '1406186111', '1406186111', 3, 'kogqns1406184632', 'WWWWWWWWWWWWWWWWWWWW', 1),
(5, 85, 'test_wx', '测试地址', '2', '测试地址列表', 38, '测试分类', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/6.png', '1', '', '{siteUrl}/index.php?g=Wap&amp;m=Company&amp;a=map&amp;token=qzembv1407229744&amp;wecha_id={wechat_id}', '1407230587', '1407230587', 1, 'qzembv1407229744', '地址', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_img_multi`
--

CREATE TABLE IF NOT EXISTS `tp_img_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '',
  `imgs` varchar(100) DEFAULT '',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_indent`
--

CREATE TABLE IF NOT EXISTS `tp_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` int(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `tp_indent`
--

INSERT INTO `tp_indent` (`id`, `uid`, `gid`, `month`, `uname`, `title`, `info`, `indent_id`, `widtrade_no`, `price`, `create_time`, `status`) VALUES
(2, 4, 0, 0, 'party2008', '购买短信100条', 0, '1404461609', 0, 0, 1404461609, 1),
(3, 4, 0, 0, 'party2008', '购买短信100条', 0, '1404462293', 0, 0, 1404462293, 1),
(4, 21, 0, 0, '我是天才', '充值', 0, '21_1404807711', 0, 300, 1404807711, 0),
(5, 22, 0, 0, '254519866', '充值', 0, '22_1404838171', 0, 300, 1404838171, 0),
(6, 23, 0, 0, '123', '充值', 0, '23_1405075363', 0, 300, 1405075363, 0),
(7, 23, 0, 0, '123', '充值', 0, '23_1405482562', 0, 300, 1405482562, 0),
(8, 23, 0, 0, '123', '充值', 0, '23_1405758066', 0, 300, 1405758066, 0),
(9, 23, 0, 0, '123', '充值', 0, '23_1405759365', 0, 300, 1405759365, 0),
(10, 23, 0, 0, '123', '充值', 0, '23_1405913432', 0, 300, 1405913432, 0),
(11, 23, 0, 0, '123', '充值', 0, '23_1406120568', 0, 300, 1406120568, 0),
(12, 23, 0, 0, '123', '充值', 0, '23_1406123099', 0, 300, 1406123099, 0),
(13, 23, 0, 0, '123', '充值', 0, '23_1406184331', 0, 300, 1406184331, 0),
(14, 69, 0, 0, 'a888888', '充值', 0, '69_1406264348', 0, 300, 1406264348, 0),
(15, 72, 0, 0, 'hz366', '充值', 0, '72_1406336341', 0, 300, 1406336341, 0),
(16, 23, 4, 1, '123', '购买服务', 0, '1406350121', 0, -300, 1406350121, 1),
(17, 23, 4, 1, '123', '购买服务', 0, '1406350174', 0, -300, 1406350174, 1),
(18, 23, 4, 1, '123', '购买服务', 0, '1406350244', 0, -300, 1406350244, 1),
(19, 23, 0, 0, '123', '充值', 0, '23_1406463788', 0, 300, 1406463788, 0),
(20, 23, 0, 0, '123', '充值', 0, '23_1406537558', 0, 300, 1406537558, 0),
(21, 23, 2, 1, '123', '购买服务', 0, '1406699069', 0, -100, 1406699069, 1),
(22, 80, 0, 0, 'test2', '购买短信100条', 0, '1406875545', 0, 0, 1406875545, 1),
(23, 23, 0, 0, '123', '充值', 0, '23_1406880448', 0, 100, 1406880448, 0),
(24, 23, 0, 0, '123', '充值', 0, '23_1407035487', 0, 300, 1407035487, 0),
(25, 23, 0, 0, '123', '充值', 0, '23_1407038894', 0, 300, 1407038894, 0),
(26, 4, 0, 0, 'party2008', '购买短信100条', 0, '1407054663', 0, -8, 1407054663, 1),
(27, 4, 0, 0, 'party2008', '购买短信100条', 0, '1407054677', 0, -8, 1407054677, 1),
(28, 23, 0, 0, '123', '充值', 0, '23_1407226759', 0, 300, 1407226759, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_invites`
--

CREATE TABLE IF NOT EXISTS `tp_invites` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `type` int(3) NOT NULL,
  `brief` varchar(200) NOT NULL,
  `content` varchar(300) NOT NULL,
  `statdate` varchar(30) NOT NULL,
  `address` varchar(120) NOT NULL,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `qr_code` varchar(120) NOT NULL,
  `copyrite` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_invites`
--

INSERT INTO `tp_invites` (`id`, `token`, `title`, `keyword`, `picurl`, `type`, `brief`, `content`, `statdate`, `address`, `lng`, `lat`, `qr_code`, `copyrite`) VALUES
(2, 'xbgzcp1407232534', '邀请', '邀请', 'http://weixin.jihuodi.com/tpl/Wap/default/common/css/invites/yqh.jpg', 1, '11', '11', '2014-08-05 19:19:24', '四川理工学院', 0, 0, '', '11');

-- --------------------------------------------------------

--
-- 表的结构 `tp_invites_info`
--

CREATE TABLE IF NOT EXISTS `tp_invites_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `username` varchar(20) NOT NULL,
  `telphone` varchar(15) NOT NULL,
  `rdo_go` int(2) NOT NULL,
  `content` varchar(200) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_kefu`
--

CREATE TABLE IF NOT EXISTS `tp_kefu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `info2` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL,
  `status` text NOT NULL,
  `sc` text NOT NULL,
  `cy` text NOT NULL,
  `lt` text NOT NULL,
  `yy` text NOT NULL,
  `hyk` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_keyword`
--

CREATE TABLE IF NOT EXISTS `tp_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- 转存表中的数据 `tp_keyword`
--

INSERT INTO `tp_keyword` (`id`, `keyword`, `pid`, `token`, `module`) VALUES
(1, '摇一摇', 1, 'ekfdng1401977502', 'Shake'),
(2, '衷', 1, 'ekfdng1401977502', 'Wedding'),
(3, '照片墙', 2, 'ekfdng1401977502', 'zhaopianwall'),
(4, '微现场', 1, 'ekfdng1401977502', 'Wall'),
(5, '水果', 1, 'ekfdng1401977502', 'Lottery'),
(6, '食谱', 1, 'ekfdng1401977502', 'Recipe'),
(7, 'DSA', 2, 'ooeiuv1402737849', 'Wall'),
(8, '照片墙', 3, 'ooeiuv1402737849', 'zhaopianwall'),
(9, 'ewwwww', 2, 'nszorb1402857075', 'Diaoyan'),
(10, 'dy', 3, 'xshtyn1403100790', 'Diaoyan'),
(11, '美容预约', 1, 'xshtyn1403100790', 'Selfform'),
(12, '投票', 1, 'xshtyn1403100790', 'Vote'),
(13, 'sdf', 2, 'hpwshv1404715458', 'Shake'),
(14, '照片墙', 4, 'hpwshv1404715458', 'zhaopianwall'),
(15, '9.9', 2, 'vmwylz1404883194', 'Product'),
(16, ' 饿我去我v', 1, 'hgfgmt1404896579', 'Img'),
(32, '砸金蛋', 4, 'kogqns1406184632', 'Lottery'),
(18, '刮刮卡', 2, 'hgfgmt1404896579', 'Lottery'),
(19, '回复一', 2, 'hzddpv1405521492', 'Img'),
(20, '上墙', 3, 'hgfgmt1404896579', 'Wall'),
(21, '我要上网', 1, 'hgfgmt1404896579', 'Router_config'),
(22, '23123', 2, 'thvusk1405647851', 'Yuyue'),
(23, 'wifi', 2, 'gcccbf1405935616', 'Router_config'),
(24, '111', 4, 'xjclzx1405958021', 'Wall'),
(25, '一教', 1, 'xjclzx1405958021', 'Panorama'),
(26, '147', 1, 'iihybk1406007981', 'Text'),
(27, '点餐', 3, 'punypv1406120801', 'Img'),
(28, '食谱', 2, 'bqtxnv1406167321', 'Recipe'),
(29, '微教育', 1, 'bqtxnv1406167321', 'Schoolset'),
(30, '', 4, 'kogqns1406184632', 'Img'),
(31, '9团砸金蛋', 3, 'hgfgmt1404896579', 'Lottery'),
(33, 'wewqe', 3, 'gwtuam1406201970', 'Router_config'),
(34, '摇一摇', 4, 'achbur1406208229', 'Shake'),
(35, 'sfffff', 4, 'wpirvf1406216732', 'Router_config'),
(36, '测试一下一', 11, 'shibnn1405586353', 'Product'),
(37, '婚庆', 1, 'shibnn1405586353', 'Business'),
(38, '花店', 2, 'shibnn1405586353', 'Business'),
(39, '签到', 2, 'shibnn1405586353', 'Sign'),
(40, '金太福', 12, 'ksmbyh1406371219', 'Product'),
(41, '测试一下', 13, 'shibnn1405586353', 'Product'),
(42, '衣服', 14, 'shibnn1405586353', 'Product'),
(43, '1', 5, 'yorbbr1406463012', 'Router_config'),
(44, '我要上网', 6, 'ksmbyh1406371219', 'Router_config'),
(45, '庆典', 5, 'xctvth1406867781', 'Wall'),
(46, '我要上网', 7, 'xctvth1406867781', 'Router_config'),
(47, '111', 2, 'owikav1406947345', 'Text'),
(48, '摁死小情侣', 5, 'vzohcb1406947236', 'Lottery'),
(49, '我要上网', 8, 'vzohcb1406947236', 'Router_config'),
(50, '走鹊桥', 6, 'ekfdng1401977502', 'Lottery'),
(51, '小情侣', 7, 'ekfdng1401977502', 'Lottery'),
(52, '摁死小情侣', 8, 'vzohcb1406947236', 'Lottery'),
(53, '', 2, 'vzohcb1406947236', 'Panorama'),
(54, '', 3, 'ekfdng1401977502', 'Sign'),
(55, '医疗', 2, 'ekfdng1401977502', 'medicalSet'),
(56, '我要上网', 9, 'ekfdng1401977502', 'Router_config'),
(57, '11', 15, 'vzohcb1406947236', 'Product'),
(58, 'asdas', 1, 'vzohcb1406947236', 'Custom'),
(59, '走鹊桥你', 9, 'vzohcb1406947236', 'Lottery'),
(60, '测试地址', 5, 'qzembv1407229744', 'Img'),
(61, '222', 2, 'xbgzcp1407232534', 'Custom'),
(62, '走鹊桥', 10, 'xbgzcp1407232534', 'Lottery'),
(63, '摁死小情侣', 11, 'xbgzcp1407232534', 'Lottery'),
(64, '11', 3, 'xbgzcp1407232534', 'Panorama'),
(65, '11', 3, 'xbgzcp1407232534', 'Text'),
(66, '签到', 4, 'xbgzcp1407232534', 'Sign'),
(67, '投票', 2, 'xbgzcp1407232534', 'Vote'),
(68, '2222', 1, 'xbgzcp1407232534', 'Research'),
(69, '邀请', 2, 'xbgzcp1407232534', 'Invites'),
(70, '喜帖', 2, 'xbgzcp1407232534', 'Wedding'),
(71, '1134', 2, 'xbgzcp1407232534', 'Reservation'),
(72, '333', 1, 'xbgzcp1407232534', 'Carowner'),
(73, '汽车', 1, 'xbgzcp1407232534', 'Carset'),
(74, '房子', 1, 'xbgzcp1407232534', 'Estate'),
(75, '111', 3, 'xbgzcp1407232534', 'Reservation'),
(76, '医疗', 3, 'xbgzcp1407232534', 'medicalSet'),
(77, 'ktv123', 1, 'xbgzcp1407232534', 'Host'),
(78, 'yao', 5, 'xbgzcp1407232534', 'Shake'),
(79, 'wxq', 6, 'xbgzcp1407232534', 'Wall'),
(80, '2234', 16, 'xbgzcp1407232534', 'Product'),
(81, 'quan', 1, 'xbgzcp1407232534', 'Market'),
(82, '大转盘', 12, 'xbgzcp1407232534', 'Lottery'),
(83, '刮刮卡', 13, 'xbgzcp1407232534', 'Lottery'),
(84, '水果达人', 14, 'xbgzcp1407232534', 'Lottery'),
(85, '旅游', 3, 'owikav1406947345', 'Business');

-- --------------------------------------------------------

--
-- 表的结构 `tp_leave`
--

CREATE TABLE IF NOT EXISTS `tp_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_leave`
--

INSERT INTO `tp_leave` (`id`, `wecha_id`, `checked`, `name`, `message`, `token`, `time`) VALUES
(1, 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 1, '11', '1', 'xbgzcp1407232534', '1407236944');

-- --------------------------------------------------------

--
-- 表的结构 `tp_links`
--

CREATE TABLE IF NOT EXISTS `tp_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_lottery`
--

CREATE TABLE IF NOT EXISTS `tp_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_lottery`
--

INSERT INTO `tp_lottery` (`id`, `joinnum`, `click`, `token`, `keyword`, `starpicurl`, `title`, `txt`, `sttxt`, `statdate`, `enddate`, `info`, `aginfo`, `endtite`, `endpicurl`, `endinfo`, `fist`, `fistnums`, `fistlucknums`, `second`, `type`, `secondnums`, `secondlucknums`, `third`, `thirdnums`, `thirdlucknums`, `allpeople`, `canrqnums`, `parssword`, `renamesn`, `renametel`, `displayjpnums`, `createtime`, `status`, `four`, `fournums`, `fourlucknums`, `five`, `fivenums`, `fivelucknums`, `six`, `sixnums`, `sixlucknums`, `zjpic`, `daynums`, `maxgetprizenum`, `needreg`) VALUES
(1, 1, 0, 'ekfdng1401977502', '水果', 'http://www.466777.com/tpl/static/luckyFruit/user/start.jpg', '水果达人活动开始了', '兑奖请联系我们，电话138********', '中奖', 1402416000, 1405008000, '亲，请点击进入水果达人活动页面，祝您好运哦！', '亲，继续努力哦！', '水果达人活动已经结束了', 'http://www.466777.com/tpl/static/luckyFruit/user/end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '1', 1000, 1, '', 4, 0, 0, '', 0, 0, 1, 1, 888888, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(2, 0, 0, 'hgfgmt1404896579', '刮刮卡', 'http://www.466777.com/tpl/User/default/common/images/img/activity-scratch-card-start.jpg', '刮刮卡活动开始了', '兑奖请联系我们，电话138********', '', 1405440000, 1408032000, '亲，请点击进入刮刮卡抽奖活动页面，祝您好运哦！', '', '刮刮卡活动已经结束了', 'http://www.466777.com/tpl/User/default/common/images/img/activity-scratch-card-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '111', 1, 0, '222', 2, 2, 0, '333', 3, 0, 200, 1, 12345678, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(3, 0, 0, 'hgfgmt1404896579', '9团砸金蛋', 'http://www.466777.com/tpl/static/goldenEgg/user/start.jpg', '砸金蛋活动开始了', '', '恭喜', 1406131200, 1408723200, '亲，请点击进入砸金蛋活动页面，祝您好运哦！', '亲，继续努力哦！', '砸金蛋活动已经结束了', 'http://www.466777.com/tpl/static/goldenEgg/user/end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '123', 1, 0, '', 5, 0, 0, '', 0, 0, 50, 1, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(4, 0, 0, 'kogqns1406184632', '砸金蛋', 'http://www.466777.com/tpl/static/goldenEgg/user/start.jpg', '砸金蛋活动开始了', '兑奖请联系我们，电话138********', '111', 1406131200, 1408723200, '亲，请点击进入砸金蛋活动页面，祝您好运哦！', '亲，继续努力哦！', '砸金蛋活动已经结束了', 'http://www.466777.com/tpl/static/goldenEgg/user/end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '100', 10000, 0, '', 5, 0, 0, '', 0, 0, 0, 0, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(5, 0, 0, 'vzohcb1406947236', '摁死小情侣', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '摁死小情侣活动开始了', '兑奖请联系我们，电话138********', '', 1406908800, 1409500800, '亲，请点击进入摁死小情侣活动页面，祝您好运哦！', '亲，继续努力哦！', '摁死小情侣活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '100', 10000, 0, '', 8, 0, 0, '', 0, 0, 0, 1, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(6, 0, 0, 'ekfdng1401977502', '走鹊桥', 'http://weixin.jihuodi.com/tpl/static/applegame/start.jpg', '走鹊桥活动开始了', '兑奖请联系我们，电话138********', '', 1406908800, 1409500800, '亲，请点击进入走鹊桥活动页面，祝您好运哦！', '亲，继续努力哦！', '走鹊桥活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/applegame/start.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '100', 10000, 0, '', 7, 0, 0, '', 0, 0, 0, 1, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(7, 0, 0, 'ekfdng1401977502', '小情侣', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '摁死小情侣活动开始了', '兑奖请联系我们，电话138********', '', 1406908800, 1409500800, '亲，请点击进入摁死小情侣活动页面，祝您好运哦！', '亲，继续努力哦！', '摁死小情侣活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '100', 10000, 0, '', 8, 0, 0, '', 0, 0, 0, 1, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(8, 0, 0, 'vzohcb1406947236', '摁死小情侣', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '摁死小情侣活动开始了', '兑奖请联系我们，电话138********', '', 1406908800, 1409500800, '亲，请点击进入摁死小情侣活动页面，祝您好运哦！', '亲，继续努力哦！', '摁死小情侣活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '', 0, 0, '', 8, 0, 0, '', 0, 0, 0, 1, 0, '', '', 0, 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(9, 0, 0, 'vzohcb1406947236', '走鹊桥你', 'http://weixin.jihuodi.com/tpl/static/applegame/start.jpg', '走鹊桥活动开始了', '兑奖请联系我们，电话138********', '', 1407168000, 1409760000, '亲，请点击进入走鹊桥活动页面，祝您好运哦！', '亲，继续努力哦！', '走鹊桥活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/applegame/start.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '4', 0, 0, '', 7, 0, 0, '', 7, 0, 0, 17, 0, '', '', 0, 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(10, 0, 0, 'xbgzcp1407232534', '走鹊桥', 'http://weixin.jihuodi.com/tpl/static/applegame/start.jpg', '走鹊桥活动开始了', '兑奖请联系我们，电话138********', '', 1407168000, 1409760000, '亲，请点击进入走鹊桥活动页面，祝您好运哦！', '亲，继续努力哦！', '走鹊桥活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/applegame/start.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '', 0, 0, '', 7, 0, 0, '', 0, 0, 0, 1, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(11, 0, 0, 'xbgzcp1407232534', '摁死小情侣', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '摁死小情侣活动开始了', '兑奖请联系我们，电话138********', '', 1407168000, 1409760000, '亲，请点击进入摁死小情侣活动页面，祝您好运哦！', '亲，继续努力哦！', '摁死小情侣活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/applegame/start2.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '', 0, 0, '', 8, 0, 0, '', 0, 0, 0, 1, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(12, 0, 0, 'xbgzcp1407232534', '大转盘', 'http://weixin.jihuodi.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话138********', '11', 1407168000, 1409760000, '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://weixin.jihuodi.com/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '1', 1, 0, '', 1, 0, 0, '', 0, 0, 0, 0, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(13, 1, 0, 'xbgzcp1407232534', '刮刮卡', 'http://weixin.jihuodi.com/tpl/User/default/common/images/img/activity-scratch-card-start.jpg', '刮刮卡活动开始了', '兑奖请联系我们，电话138********', '', 1407168000, 1409760000, '亲，请点击进入刮刮卡抽奖活动页面，祝您好运哦！', '', '刮刮卡活动已经结束了', 'http://weixin.jihuodi.com/tpl/User/default/common/images/img/activity-scratch-card-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '1', 1, 0, '', 2, 0, 0, '', 0, 0, 111, 5, 0, '', '', 0, 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(14, 0, 0, 'xbgzcp1407232534', '水果达人', 'http://weixin.jihuodi.com/tpl/static/luckyFruit/user/start.jpg', '水果达人活动开始了', '兑奖请联系我们，电话138********', '', 1407168000, 1409760000, '亲，请点击进入水果达人活动页面，祝您好运哦！', '亲，继续努力哦！', '水果达人活动已经结束了', 'http://weixin.jihuodi.com/tpl/static/luckyFruit/user/end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '11', 1, 0, '', 4, 0, 0, '', 0, 0, 11, 5, 0, '', '', 0, 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_lottery_cheat`
--

CREATE TABLE IF NOT EXISTS `tp_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_lottery_record`
--

CREATE TABLE IF NOT EXISTS `tp_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_lottery_record`
--

INSERT INTO `tp_lottery_record` (`id`, `lid`, `usenums`, `wecha_id`, `token`, `islottery`, `wecha_name`, `phone`, `sn`, `time`, `prize`, `sendstutas`, `sendtime`) VALUES
(1, 1, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 1, '', '13511350189', '539ff8eb7b90d', 1402992875, '1', 0, 0),
(2, 6, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 0, '小衷', '13511350189', '', 98, '', 0, 0),
(3, 7, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 0, '小衷', '13511350189', '', 77, '', 0, 0),
(4, 13, 1, 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 'xbgzcp1407232534', 0, '', '', '', 1407240369, '7', 0, 0);

-- --------------------------------------------------------

--
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_market`
--

INSERT INTO `tp_market` (`market_id`, `name`, `title`, `keyword`, `tel`, `address`, `longitude`, `latitude`, `line`, `intro`, `logo_pic`, `token`, `market_index_tpl`, `tenant_index_tpl`, `tenant_list_tpl`) VALUES
(1, '111', '111', 'quan', '18227757061', '四川理工学院', '111', '111', '', '111', './tpl/static/market/default.jpg', 'xbgzcp1407232534', 139, 116, 139);

-- --------------------------------------------------------

--
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_market_area`
--

INSERT INTO `tp_market_area` (`area_id`, `area_name`, `manage`, `area_pic`, `area_intro`, `is_use`, `add_time`, `sort`, `market_id`, `token`) VALUES
(1, '11', '11', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', '11', '1', '1407239963', 50, 1, 'xbgzcp1407232534');

-- --------------------------------------------------------

--
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_market_cate`
--

INSERT INTO `tp_market_cate` (`cate_id`, `cate_name`, `cate_pic`, `cate_intro`, `cate_pid`, `path_info`, `is_show`, `sort`, `market_id`, `token`) VALUES
(1, '1', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', '11', 0, '', '1', 50, 1, 'xbgzcp1407232534');

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_market_nav`
--

INSERT INTO `tp_market_nav` (`nav_id`, `nav_name`, `nav_pic`, `nav_link`, `is_show`, `sort`, `market_id`, `token`, `is_system`) VALUES
(1, '商家', './tpl/static/attachment/icon/white/1.png', '{siteUrl}/index.php?g=Wap&m=Market&a=tenant&token=xbgzcp1407232534&wecha_id={$wecha_id}', '1', 100, 1, 'xbgzcp1407232534', '1'),
(2, '停车场', './tpl/static/attachment/icon/white/4.png', '{siteUrl}/index.php?g=Wap&m=Market&a=park&token=xbgzcp1407232534&wecha_id={$wecha_id}', '1', 99, 1, 'xbgzcp1407232534', '1'),
(3, '简介', './tpl/static/attachment/icon/white/9.png', '{siteUrl}/index.php?g=Wap&m=Market&a=intro&token=xbgzcp1407232534&wecha_id={$wecha_id}', '1', 98, 1, 'xbgzcp1407232534', '1'),
(4, '团购', './tpl/static/attachment/icon/white/7.png', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex&token=xbgzcp1407232534&wecha_id={wechat_id}', '1', 97, 1, 'xbgzcp1407232534', '1');

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_market_park`
--

INSERT INTO `tp_market_park` (`park_id`, `park_name`, `park_num`, `park_intro`, `is_use`, `add_time`, `market_id`, `token`) VALUES
(1, '11', 11, '1', '0', '1407239974', 1, 'xbgzcp1407232534');

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `tp_market_slide`
--

INSERT INTO `tp_market_slide` (`slide_id`, `slide_title`, `slide_url`, `slide_link`, `market_id`) VALUES
(11, '', './tpl/static/attachment/focus/default/2.jpg', '', 1),
(12, '', './tpl/static/attachment/focus/default/3.jpg', '', 1),
(13, '', './tpl/static/attachment/focus/default/4.jpg', '', 1),
(14, '', '', '', 1),
(15, '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical_set`
--

CREATE TABLE IF NOT EXISTS `tp_medical_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `menu9` varchar(50) NOT NULL DEFAULT '',
  `menu10` varchar(50) NOT NULL DEFAULT '',
  `picurl1` varchar(200) NOT NULL DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1',
  `picurl2` varchar(200) NOT NULL DEFAULT '',
  `picurl3` varchar(200) NOT NULL DEFAULT '',
  `picurl4` varchar(200) NOT NULL DEFAULT '',
  `picurl5` varchar(200) NOT NULL DEFAULT '',
  `picurl6` varchar(200) NOT NULL DEFAULT '',
  `picurl7` varchar(200) NOT NULL DEFAULT '',
  `picurl8` varchar(200) NOT NULL DEFAULT '',
  `picurl9` varchar(200) NOT NULL DEFAULT '',
  `picurl10` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_medical_set`
--

INSERT INTO `tp_medical_set` (`id`, `keyword`, `title`, `token`, `head_url`, `album_id`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `picurl1`, `hotfocus_id`, `experts_id`, `ceem_id`, `Rcase_id`, `technology_id`, `drug_id`, `evants_id`, `video`, `symptoms_id`, `info`, `path`, `tpid`, `conttpid`, `picurl2`, `picurl3`, `picurl4`, `picurl5`, `picurl6`, `picurl7`, `picurl8`, `picurl9`, `picurl10`) VALUES
(2, '医疗', '欢迎您关注南丰人民医院', 'ekfdng1401977502', 'http://weixin.jihuodi.com/tpl/static/attachment/focus/default/3.jpg', 0, '医院简介', '热点聚焦', '医院专家', '尖端设备', '康复案例', '先进技术', '研发药物', '就医指南', '症状自查', '官方活动', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/1.png', 37, 37, 37, 37, 37, 37, 37, '', 37, '欢迎您关注南丰人民医院', '0', 127, 1, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/2.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/5.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/6.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/7.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/8.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/10.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/13.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/15.png', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/21.png'),
(3, '医疗', '11', 'xbgzcp1407232534', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', 6, '医院简介', '热点聚焦', '医院专家', '尖端设备', '康复案例', '先进技术', '研发药物', '就医指南', '症状自查', '官方活动', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 40, 39, 40, 40, 39, 40, 39, '', 40, '1111', '0', 127, 1, 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png', 'http://weixin.jihuodi.com/tpl/User/default/common/images/photo/plugmenu1.png');

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical_user`
--

CREATE TABLE IF NOT EXISTS `tp_medical_user` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `orderid` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderName` varchar(200) NOT NULL DEFAULT '',
  `txt3name` varchar(50) NOT NULL DEFAULT '',
  `txt4name` varchar(50) NOT NULL DEFAULT '',
  `txt5name` varchar(50) NOT NULL DEFAULT '',
  `select4name` varchar(50) NOT NULL DEFAULT '',
  `select5name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member`
--

CREATE TABLE IF NOT EXISTS `tp_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_contact`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_coupon`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_member_card_coupon`
--

INSERT INTO `tp_member_card_coupon` (`id`, `cardid`, `token`, `title`, `group`, `type`, `price`, `people`, `statdate`, `enddate`, `info`, `usetime`, `create_time`) VALUES
(1, 1, 'ekfdng1401977502', '幸福的见证', 1, 0, 10, 1, 1401984000, 1402848000, '10', 0, 1402034976);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_create`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=691 ;

--
-- 转存表中的数据 `tp_member_card_create`
--

INSERT INTO `tp_member_card_create` (`id`, `cardid`, `token`, `number`, `wecha_id`) VALUES
(1, 1, 'ekfdng1401977502', 'TCKJ1001', 'o48e9t55kSHy8cNLYPkhzCxtriG0'),
(2, 1, 'ekfdng1401977502', 'TCKJ1002', 'o48e9t3VtUFW-RKH9GwtNjevL1jY'),
(3, 1, 'ekfdng1401977502', 'TCKJ1003', ''),
(4, 1, 'ekfdng1401977502', 'TCKJ1004', ''),
(5, 1, 'ekfdng1401977502', 'TCKJ1005', ''),
(6, 1, 'ekfdng1401977502', 'TCKJ1006', ''),
(7, 1, 'ekfdng1401977502', 'TCKJ1007', ''),
(8, 1, 'ekfdng1401977502', 'TCKJ1008', ''),
(9, 1, 'ekfdng1401977502', 'TCKJ1009', ''),
(10, 1, 'ekfdng1401977502', 'TCKJ1010', ''),
(11, 1, 'ekfdng1401977502', 'TCKJ1011', ''),
(12, 1, 'ekfdng1401977502', 'TCKJ1012', ''),
(13, 1, 'ekfdng1401977502', 'TCKJ1013', ''),
(14, 1, 'ekfdng1401977502', 'TCKJ1014', ''),
(15, 1, 'ekfdng1401977502', 'TCKJ1015', ''),
(16, 1, 'ekfdng1401977502', 'TCKJ1016', ''),
(17, 1, 'ekfdng1401977502', 'TCKJ1017', ''),
(18, 1, 'ekfdng1401977502', 'TCKJ1018', ''),
(19, 1, 'ekfdng1401977502', 'TCKJ1019', ''),
(20, 1, 'ekfdng1401977502', 'TCKJ1020', ''),
(21, 1, 'ekfdng1401977502', 'TCKJ1021', ''),
(22, 1, 'ekfdng1401977502', 'TCKJ1022', ''),
(23, 1, 'ekfdng1401977502', 'TCKJ1023', ''),
(24, 1, 'ekfdng1401977502', 'TCKJ1024', ''),
(25, 1, 'ekfdng1401977502', 'TCKJ1025', ''),
(26, 1, 'ekfdng1401977502', 'TCKJ1026', ''),
(27, 1, 'ekfdng1401977502', 'TCKJ1027', ''),
(28, 1, 'ekfdng1401977502', 'TCKJ1028', ''),
(29, 1, 'ekfdng1401977502', 'TCKJ1029', ''),
(30, 1, 'ekfdng1401977502', 'TCKJ1030', ''),
(31, 1, 'ekfdng1401977502', 'TCKJ1031', ''),
(32, 1, 'ekfdng1401977502', 'TCKJ1032', ''),
(33, 1, 'ekfdng1401977502', 'TCKJ1033', ''),
(34, 1, 'ekfdng1401977502', 'TCKJ1034', ''),
(35, 1, 'ekfdng1401977502', 'TCKJ1035', ''),
(36, 1, 'ekfdng1401977502', 'TCKJ1036', ''),
(37, 1, 'ekfdng1401977502', 'TCKJ1037', ''),
(38, 1, 'ekfdng1401977502', 'TCKJ1038', ''),
(39, 1, 'ekfdng1401977502', 'TCKJ1039', ''),
(40, 1, 'ekfdng1401977502', 'TCKJ1040', ''),
(41, 1, 'ekfdng1401977502', 'TCKJ1041', ''),
(42, 1, 'ekfdng1401977502', 'TCKJ1042', ''),
(43, 1, 'ekfdng1401977502', 'TCKJ1043', ''),
(44, 1, 'ekfdng1401977502', 'TCKJ1044', ''),
(45, 1, 'ekfdng1401977502', 'TCKJ1045', ''),
(46, 1, 'ekfdng1401977502', 'TCKJ1046', ''),
(47, 1, 'ekfdng1401977502', 'TCKJ1047', ''),
(48, 1, 'ekfdng1401977502', 'TCKJ1048', ''),
(49, 1, 'ekfdng1401977502', 'TCKJ1049', ''),
(50, 1, 'ekfdng1401977502', 'TCKJ1050', ''),
(51, 2, 'ficefo1403523346', 's2', ''),
(52, 2, 'ficefo1403523346', 's3', ''),
(53, 2, 'ficefo1403523346', 's4', ''),
(54, 2, 'ficefo1403523346', 's5', ''),
(55, 2, 'ficefo1403523346', 's6', ''),
(56, 2, 'ficefo1403523346', 's7', ''),
(57, 2, 'ficefo1403523346', 's8', ''),
(58, 2, 'ficefo1403523346', 's9', ''),
(59, 2, 'ficefo1403523346', 's10', ''),
(60, 2, 'ficefo1403523346', 's11', ''),
(61, 6, 'zrkepg1406003661', '1232', 'o4kZ4s7XAi0ahnUtU36aUTYsXMiE'),
(62, 6, 'zrkepg1406003661', '1233', ''),
(63, 6, 'zrkepg1406003661', '1234', ''),
(64, 6, 'zrkepg1406003661', '1235', ''),
(65, 6, 'zrkepg1406003661', '1236', ''),
(66, 6, 'zrkepg1406003661', '1237', ''),
(67, 6, 'zrkepg1406003661', '1238', ''),
(68, 6, 'zrkepg1406003661', '1239', ''),
(69, 6, 'zrkepg1406003661', '12310', ''),
(70, 7, 'oalaxv1406127433', 'WJZ-8888882', ''),
(71, 7, 'oalaxv1406127433', 'WJZ-8888883', ''),
(72, 7, 'oalaxv1406127433', 'WJZ-8888884', ''),
(73, 7, 'oalaxv1406127433', 'WJZ-8888885', ''),
(74, 7, 'oalaxv1406127433', 'WJZ-8888886', ''),
(75, 7, 'oalaxv1406127433', 'WJZ-8888887', ''),
(76, 7, 'oalaxv1406127433', 'WJZ-8888888', ''),
(77, 7, 'oalaxv1406127433', 'WJZ-8888889', ''),
(78, 7, 'oalaxv1406127433', 'WJZ-88888810', ''),
(79, 7, 'oalaxv1406127433', 'WJZ-88888811', ''),
(80, 7, 'oalaxv1406127433', 'WJZ-88888812', ''),
(81, 7, 'oalaxv1406127433', 'WJZ-88888813', ''),
(82, 7, 'oalaxv1406127433', 'WJZ-88888814', ''),
(83, 7, 'oalaxv1406127433', 'WJZ-88888815', ''),
(84, 7, 'oalaxv1406127433', 'WJZ-88888816', ''),
(85, 7, 'oalaxv1406127433', 'WJZ-88888817', ''),
(86, 7, 'oalaxv1406127433', 'WJZ-88888818', ''),
(87, 7, 'oalaxv1406127433', 'WJZ-88888819', ''),
(88, 7, 'oalaxv1406127433', 'WJZ-88888820', ''),
(89, 7, 'oalaxv1406127433', 'WJZ-88888821', ''),
(90, 7, 'oalaxv1406127433', 'WJZ-88888822', ''),
(91, 7, 'oalaxv1406127433', 'WJZ-88888823', ''),
(92, 7, 'oalaxv1406127433', 'WJZ-88888824', ''),
(93, 7, 'oalaxv1406127433', 'WJZ-88888825', ''),
(94, 7, 'oalaxv1406127433', 'WJZ-88888826', ''),
(95, 7, 'oalaxv1406127433', 'WJZ-88888827', ''),
(96, 7, 'oalaxv1406127433', 'WJZ-88888828', ''),
(97, 7, 'oalaxv1406127433', 'WJZ-88888829', ''),
(98, 7, 'oalaxv1406127433', 'WJZ-88888830', ''),
(99, 7, 'oalaxv1406127433', 'WJZ-88888831', ''),
(100, 7, 'oalaxv1406127433', 'WJZ-88888832', ''),
(101, 7, 'oalaxv1406127433', 'WJZ-88888833', ''),
(102, 7, 'oalaxv1406127433', 'WJZ-88888834', ''),
(103, 7, 'oalaxv1406127433', 'WJZ-88888835', ''),
(104, 7, 'oalaxv1406127433', 'WJZ-88888836', ''),
(105, 7, 'oalaxv1406127433', 'WJZ-88888837', ''),
(106, 7, 'oalaxv1406127433', 'WJZ-88888838', ''),
(107, 7, 'oalaxv1406127433', 'WJZ-88888839', ''),
(108, 7, 'oalaxv1406127433', 'WJZ-88888840', ''),
(109, 7, 'oalaxv1406127433', 'WJZ-88888841', ''),
(110, 7, 'oalaxv1406127433', 'WJZ-88888842', ''),
(111, 7, 'oalaxv1406127433', 'WJZ-88888843', ''),
(112, 7, 'oalaxv1406127433', 'WJZ-88888844', ''),
(113, 7, 'oalaxv1406127433', 'WJZ-88888845', ''),
(114, 7, 'oalaxv1406127433', 'WJZ-88888846', ''),
(115, 7, 'oalaxv1406127433', 'WJZ-88888847', ''),
(116, 7, 'oalaxv1406127433', 'WJZ-88888848', ''),
(117, 7, 'oalaxv1406127433', 'WJZ-88888849', ''),
(118, 7, 'oalaxv1406127433', 'WJZ-88888850', ''),
(119, 7, 'oalaxv1406127433', 'WJZ-88888851', ''),
(120, 7, 'oalaxv1406127433', 'WJZ-88888852', ''),
(121, 7, 'oalaxv1406127433', 'WJZ-88888853', ''),
(122, 7, 'oalaxv1406127433', 'WJZ-88888854', ''),
(123, 7, 'oalaxv1406127433', 'WJZ-88888855', ''),
(124, 7, 'oalaxv1406127433', 'WJZ-88888856', ''),
(125, 7, 'oalaxv1406127433', 'WJZ-88888857', ''),
(126, 7, 'oalaxv1406127433', 'WJZ-88888858', ''),
(127, 7, 'oalaxv1406127433', 'WJZ-88888859', ''),
(128, 7, 'oalaxv1406127433', 'WJZ-88888860', ''),
(129, 7, 'oalaxv1406127433', 'WJZ-88888861', ''),
(130, 7, 'oalaxv1406127433', 'WJZ-88888862', ''),
(131, 7, 'oalaxv1406127433', 'WJZ-88888863', ''),
(132, 7, 'oalaxv1406127433', 'WJZ-88888864', ''),
(133, 7, 'oalaxv1406127433', 'WJZ-88888865', ''),
(134, 7, 'oalaxv1406127433', 'WJZ-88888866', ''),
(135, 7, 'oalaxv1406127433', 'WJZ-88888867', ''),
(136, 7, 'oalaxv1406127433', 'WJZ-88888868', ''),
(137, 7, 'oalaxv1406127433', 'WJZ-88888869', ''),
(138, 7, 'oalaxv1406127433', 'WJZ-88888870', ''),
(139, 7, 'oalaxv1406127433', 'WJZ-88888871', ''),
(140, 7, 'oalaxv1406127433', 'WJZ-88888872', ''),
(141, 7, 'oalaxv1406127433', 'WJZ-88888873', ''),
(142, 7, 'oalaxv1406127433', 'WJZ-88888874', ''),
(143, 7, 'oalaxv1406127433', 'WJZ-88888875', ''),
(144, 7, 'oalaxv1406127433', 'WJZ-88888876', ''),
(145, 7, 'oalaxv1406127433', 'WJZ-88888877', ''),
(146, 7, 'oalaxv1406127433', 'WJZ-88888878', ''),
(147, 7, 'oalaxv1406127433', 'WJZ-88888879', ''),
(148, 7, 'oalaxv1406127433', 'WJZ-88888880', ''),
(149, 7, 'oalaxv1406127433', 'WJZ-88888881', ''),
(150, 7, 'oalaxv1406127433', 'WJZ-88888882', ''),
(151, 7, 'oalaxv1406127433', 'WJZ-88888883', ''),
(152, 7, 'oalaxv1406127433', 'WJZ-88888884', ''),
(153, 7, 'oalaxv1406127433', 'WJZ-88888885', ''),
(154, 7, 'oalaxv1406127433', 'WJZ-88888886', ''),
(155, 7, 'oalaxv1406127433', 'WJZ-88888887', ''),
(156, 7, 'oalaxv1406127433', 'WJZ-88888888', ''),
(157, 7, 'oalaxv1406127433', 'WJZ-88888889', ''),
(158, 7, 'oalaxv1406127433', 'WJZ-88888890', ''),
(159, 7, 'oalaxv1406127433', 'WJZ-88888891', ''),
(160, 7, 'oalaxv1406127433', 'WJZ-88888892', ''),
(161, 7, 'oalaxv1406127433', 'WJZ-88888893', ''),
(162, 7, 'oalaxv1406127433', 'WJZ-88888894', ''),
(163, 7, 'oalaxv1406127433', 'WJZ-88888895', ''),
(164, 7, 'oalaxv1406127433', 'WJZ-88888896', ''),
(165, 7, 'oalaxv1406127433', 'WJZ-88888897', ''),
(166, 7, 'oalaxv1406127433', 'WJZ-88888898', ''),
(167, 7, 'oalaxv1406127433', 'WJZ-88888899', ''),
(168, 7, 'oalaxv1406127433', 'WJZ-888888100', ''),
(169, 7, 'oalaxv1406127433', 'WJZ-888888101', ''),
(170, 7, 'oalaxv1406127433', 'WJZ-888888102', ''),
(171, 7, 'oalaxv1406127433', 'WJZ-888888103', ''),
(172, 7, 'oalaxv1406127433', 'WJZ-888888104', ''),
(173, 7, 'oalaxv1406127433', 'WJZ-888888105', ''),
(174, 7, 'oalaxv1406127433', 'WJZ-888888106', ''),
(175, 7, 'oalaxv1406127433', 'WJZ-888888107', ''),
(176, 7, 'oalaxv1406127433', 'WJZ-888888108', ''),
(177, 7, 'oalaxv1406127433', 'WJZ-888888109', ''),
(178, 7, 'oalaxv1406127433', 'WJZ-888888110', ''),
(179, 7, 'oalaxv1406127433', 'WJZ-888888111', ''),
(180, 7, 'oalaxv1406127433', 'WJZ-888888112', ''),
(181, 7, 'oalaxv1406127433', 'WJZ-888888113', ''),
(182, 7, 'oalaxv1406127433', 'WJZ-888888114', ''),
(183, 8, 'shibnn1405586353', 'WNF-1001', 'o48e9t55kSHy8cNLYPkhzCxtriG0'),
(184, 8, 'shibnn1405586353', 'WNF-1002', ''),
(185, 8, 'shibnn1405586353', 'WNF-1003', ''),
(186, 8, 'shibnn1405586353', 'WNF-1004', ''),
(187, 8, 'shibnn1405586353', 'WNF-1005', ''),
(188, 8, 'shibnn1405586353', 'WNF-1006', ''),
(189, 8, 'shibnn1405586353', 'WNF-1007', ''),
(190, 8, 'shibnn1405586353', 'WNF-1008', ''),
(191, 8, 'shibnn1405586353', 'WNF-1009', ''),
(192, 8, 'shibnn1405586353', 'WNF-1010', ''),
(193, 8, 'shibnn1405586353', 'WNF-1011', ''),
(194, 8, 'shibnn1405586353', 'WNF-1012', ''),
(195, 8, 'shibnn1405586353', 'WNF-1013', ''),
(196, 8, 'shibnn1405586353', 'WNF-1014', ''),
(197, 8, 'shibnn1405586353', 'WNF-1015', ''),
(198, 8, 'shibnn1405586353', 'WNF-1016', ''),
(199, 8, 'shibnn1405586353', 'WNF-1017', ''),
(200, 8, 'shibnn1405586353', 'WNF-1018', ''),
(201, 8, 'shibnn1405586353', 'WNF-1019', ''),
(202, 8, 'shibnn1405586353', 'WNF-1020', ''),
(203, 8, 'shibnn1405586353', 'WNF-1021', ''),
(204, 8, 'shibnn1405586353', 'WNF-1022', ''),
(205, 8, 'shibnn1405586353', 'WNF-1023', ''),
(206, 8, 'shibnn1405586353', 'WNF-1024', ''),
(207, 8, 'shibnn1405586353', 'WNF-1025', ''),
(208, 8, 'shibnn1405586353', 'WNF-1026', ''),
(209, 8, 'shibnn1405586353', 'WNF-1027', ''),
(210, 8, 'shibnn1405586353', 'WNF-1028', ''),
(211, 8, 'shibnn1405586353', 'WNF-1029', ''),
(212, 8, 'shibnn1405586353', 'WNF-1030', ''),
(213, 8, 'shibnn1405586353', 'WNF-1031', ''),
(214, 8, 'shibnn1405586353', 'WNF-1032', ''),
(215, 8, 'shibnn1405586353', 'WNF-1033', ''),
(216, 8, 'shibnn1405586353', 'WNF-1034', ''),
(217, 8, 'shibnn1405586353', 'WNF-1035', ''),
(218, 8, 'shibnn1405586353', 'WNF-1036', ''),
(219, 8, 'shibnn1405586353', 'WNF-1037', ''),
(220, 8, 'shibnn1405586353', 'WNF-1038', ''),
(221, 8, 'shibnn1405586353', 'WNF-1039', ''),
(222, 8, 'shibnn1405586353', 'WNF-1040', ''),
(223, 8, 'shibnn1405586353', 'WNF-1041', ''),
(224, 8, 'shibnn1405586353', 'WNF-1042', ''),
(225, 8, 'shibnn1405586353', 'WNF-1043', ''),
(226, 8, 'shibnn1405586353', 'WNF-1044', ''),
(227, 8, 'shibnn1405586353', 'WNF-1045', ''),
(228, 8, 'shibnn1405586353', 'WNF-1046', ''),
(229, 8, 'shibnn1405586353', 'WNF-1047', ''),
(230, 8, 'shibnn1405586353', 'WNF-1048', ''),
(231, 8, 'shibnn1405586353', 'WNF-1049', ''),
(232, 8, 'shibnn1405586353', 'WNF-1050', ''),
(233, 8, 'shibnn1405586353', 'WNF-1051', ''),
(234, 8, 'shibnn1405586353', 'WNF-1052', ''),
(235, 8, 'shibnn1405586353', 'WNF-1053', ''),
(236, 8, 'shibnn1405586353', 'WNF-1054', ''),
(237, 8, 'shibnn1405586353', 'WNF-1055', ''),
(238, 8, 'shibnn1405586353', 'WNF-1056', ''),
(239, 8, 'shibnn1405586353', 'WNF-1057', ''),
(240, 8, 'shibnn1405586353', 'WNF-1058', ''),
(241, 8, 'shibnn1405586353', 'WNF-1059', ''),
(242, 8, 'shibnn1405586353', 'WNF-1060', ''),
(243, 8, 'shibnn1405586353', 'WNF-1061', ''),
(244, 8, 'shibnn1405586353', 'WNF-1062', ''),
(245, 8, 'shibnn1405586353', 'WNF-1063', ''),
(246, 8, 'shibnn1405586353', 'WNF-1064', ''),
(247, 8, 'shibnn1405586353', 'WNF-1065', ''),
(248, 8, 'shibnn1405586353', 'WNF-1066', ''),
(249, 8, 'shibnn1405586353', 'WNF-1067', ''),
(250, 8, 'shibnn1405586353', 'WNF-1068', ''),
(251, 8, 'shibnn1405586353', 'WNF-1069', ''),
(252, 8, 'shibnn1405586353', 'WNF-1070', ''),
(253, 8, 'shibnn1405586353', 'WNF-1071', ''),
(254, 8, 'shibnn1405586353', 'WNF-1072', ''),
(255, 8, 'shibnn1405586353', 'WNF-1073', ''),
(256, 8, 'shibnn1405586353', 'WNF-1074', ''),
(257, 8, 'shibnn1405586353', 'WNF-1075', ''),
(258, 8, 'shibnn1405586353', 'WNF-1076', ''),
(259, 8, 'shibnn1405586353', 'WNF-1077', ''),
(260, 8, 'shibnn1405586353', 'WNF-1078', ''),
(261, 8, 'shibnn1405586353', 'WNF-1079', ''),
(262, 8, 'shibnn1405586353', 'WNF-1080', ''),
(263, 8, 'shibnn1405586353', 'WNF-1081', ''),
(264, 8, 'shibnn1405586353', 'WNF-1082', ''),
(265, 8, 'shibnn1405586353', 'WNF-1083', ''),
(266, 8, 'shibnn1405586353', 'WNF-1084', ''),
(267, 8, 'shibnn1405586353', 'WNF-1085', ''),
(268, 8, 'shibnn1405586353', 'WNF-1086', ''),
(269, 8, 'shibnn1405586353', 'WNF-1087', ''),
(270, 8, 'shibnn1405586353', 'WNF-1088', ''),
(271, 8, 'shibnn1405586353', 'WNF-1089', ''),
(272, 8, 'shibnn1405586353', 'WNF-1090', ''),
(273, 8, 'shibnn1405586353', 'WNF-1091', ''),
(274, 8, 'shibnn1405586353', 'WNF-1092', ''),
(275, 8, 'shibnn1405586353', 'WNF-1093', ''),
(276, 8, 'shibnn1405586353', 'WNF-1094', ''),
(277, 8, 'shibnn1405586353', 'WNF-1095', ''),
(278, 8, 'shibnn1405586353', 'WNF-1096', ''),
(279, 8, 'shibnn1405586353', 'WNF-1097', ''),
(280, 8, 'shibnn1405586353', 'WNF-1098', ''),
(281, 8, 'shibnn1405586353', 'WNF-1099', ''),
(282, 8, 'shibnn1405586353', 'WNF-1100', ''),
(283, 8, 'shibnn1405586353', 'WNF-1101', ''),
(284, 8, 'shibnn1405586353', 'WNF-1102', ''),
(285, 8, 'shibnn1405586353', 'WNF-1103', ''),
(286, 8, 'shibnn1405586353', 'WNF-1104', ''),
(287, 8, 'shibnn1405586353', 'WNF-1105', ''),
(288, 8, 'shibnn1405586353', 'WNF-1106', ''),
(289, 8, 'shibnn1405586353', 'WNF-1107', ''),
(290, 8, 'shibnn1405586353', 'WNF-1108', ''),
(291, 8, 'shibnn1405586353', 'WNF-1109', ''),
(292, 8, 'shibnn1405586353', 'WNF-1110', ''),
(293, 8, 'shibnn1405586353', 'WNF-1111', ''),
(294, 8, 'shibnn1405586353', 'WNF-1112', ''),
(295, 8, 'shibnn1405586353', 'WNF-1113', ''),
(296, 8, 'shibnn1405586353', 'WNF-1114', ''),
(297, 8, 'shibnn1405586353', 'WNF-1115', ''),
(298, 8, 'shibnn1405586353', 'WNF-1116', ''),
(299, 8, 'shibnn1405586353', 'WNF-1117', ''),
(300, 8, 'shibnn1405586353', 'WNF-1118', ''),
(301, 8, 'shibnn1405586353', 'WNF-1119', ''),
(302, 8, 'shibnn1405586353', 'WNF-1120', ''),
(303, 8, 'shibnn1405586353', 'WNF-1121', ''),
(304, 8, 'shibnn1405586353', 'WNF-1122', ''),
(305, 8, 'shibnn1405586353', 'WNF-1123', ''),
(306, 8, 'shibnn1405586353', 'WNF-1124', ''),
(307, 8, 'shibnn1405586353', 'WNF-1125', ''),
(308, 8, 'shibnn1405586353', 'WNF-1126', ''),
(309, 8, 'shibnn1405586353', 'WNF-1127', ''),
(310, 8, 'shibnn1405586353', 'WNF-1128', ''),
(311, 8, 'shibnn1405586353', 'WNF-1129', ''),
(312, 8, 'shibnn1405586353', 'WNF-1130', ''),
(313, 8, 'shibnn1405586353', 'WNF-1131', ''),
(314, 8, 'shibnn1405586353', 'WNF-1132', ''),
(315, 8, 'shibnn1405586353', 'WNF-1133', ''),
(316, 8, 'shibnn1405586353', 'WNF-1134', ''),
(317, 8, 'shibnn1405586353', 'WNF-1135', ''),
(318, 8, 'shibnn1405586353', 'WNF-1136', ''),
(319, 8, 'shibnn1405586353', 'WNF-1137', ''),
(320, 8, 'shibnn1405586353', 'WNF-1138', ''),
(321, 8, 'shibnn1405586353', 'WNF-1139', ''),
(322, 8, 'shibnn1405586353', 'WNF-1140', ''),
(323, 8, 'shibnn1405586353', 'WNF-1141', ''),
(324, 8, 'shibnn1405586353', 'WNF-1142', ''),
(325, 8, 'shibnn1405586353', 'WNF-1143', ''),
(326, 8, 'shibnn1405586353', 'WNF-1144', ''),
(327, 8, 'shibnn1405586353', 'WNF-1145', ''),
(328, 8, 'shibnn1405586353', 'WNF-1146', ''),
(329, 8, 'shibnn1405586353', 'WNF-1147', ''),
(330, 8, 'shibnn1405586353', 'WNF-1148', ''),
(331, 8, 'shibnn1405586353', 'WNF-1149', ''),
(332, 8, 'shibnn1405586353', 'WNF-1150', ''),
(333, 8, 'shibnn1405586353', 'WNF-1151', ''),
(334, 8, 'shibnn1405586353', 'WNF-1152', ''),
(335, 8, 'shibnn1405586353', 'WNF-1153', ''),
(336, 8, 'shibnn1405586353', 'WNF-1154', ''),
(337, 8, 'shibnn1405586353', 'WNF-1155', ''),
(338, 8, 'shibnn1405586353', 'WNF-1156', ''),
(339, 8, 'shibnn1405586353', 'WNF-1157', ''),
(340, 8, 'shibnn1405586353', 'WNF-1158', ''),
(341, 8, 'shibnn1405586353', 'WNF-1159', ''),
(342, 8, 'shibnn1405586353', 'WNF-1160', ''),
(343, 8, 'shibnn1405586353', 'WNF-1161', ''),
(344, 8, 'shibnn1405586353', 'WNF-1162', ''),
(345, 8, 'shibnn1405586353', 'WNF-1163', ''),
(346, 8, 'shibnn1405586353', 'WNF-1164', ''),
(347, 8, 'shibnn1405586353', 'WNF-1165', ''),
(348, 8, 'shibnn1405586353', 'WNF-1166', ''),
(349, 8, 'shibnn1405586353', 'WNF-1167', ''),
(350, 8, 'shibnn1405586353', 'WNF-1168', ''),
(351, 8, 'shibnn1405586353', 'WNF-1169', ''),
(352, 8, 'shibnn1405586353', 'WNF-1170', ''),
(353, 8, 'shibnn1405586353', 'WNF-1171', ''),
(354, 8, 'shibnn1405586353', 'WNF-1172', ''),
(355, 8, 'shibnn1405586353', 'WNF-1173', ''),
(356, 8, 'shibnn1405586353', 'WNF-1174', ''),
(357, 8, 'shibnn1405586353', 'WNF-1175', ''),
(358, 8, 'shibnn1405586353', 'WNF-1176', ''),
(359, 8, 'shibnn1405586353', 'WNF-1177', ''),
(360, 8, 'shibnn1405586353', 'WNF-1178', ''),
(361, 8, 'shibnn1405586353', 'WNF-1179', ''),
(362, 8, 'shibnn1405586353', 'WNF-1180', ''),
(363, 8, 'shibnn1405586353', 'WNF-1181', ''),
(364, 8, 'shibnn1405586353', 'WNF-1182', ''),
(365, 8, 'shibnn1405586353', 'WNF-1183', ''),
(366, 8, 'shibnn1405586353', 'WNF-1184', ''),
(367, 8, 'shibnn1405586353', 'WNF-1185', ''),
(368, 8, 'shibnn1405586353', 'WNF-1186', ''),
(369, 8, 'shibnn1405586353', 'WNF-1187', ''),
(370, 8, 'shibnn1405586353', 'WNF-1188', ''),
(371, 8, 'shibnn1405586353', 'WNF-1189', ''),
(372, 8, 'shibnn1405586353', 'WNF-1190', ''),
(373, 8, 'shibnn1405586353', 'WNF-1191', ''),
(374, 8, 'shibnn1405586353', 'WNF-1192', ''),
(375, 8, 'shibnn1405586353', 'WNF-1193', ''),
(376, 8, 'shibnn1405586353', 'WNF-1194', ''),
(377, 8, 'shibnn1405586353', 'WNF-1195', ''),
(378, 8, 'shibnn1405586353', 'WNF-1196', ''),
(379, 8, 'shibnn1405586353', 'WNF-1197', ''),
(380, 8, 'shibnn1405586353', 'WNF-1198', ''),
(381, 8, 'shibnn1405586353', 'WNF-1199', ''),
(382, 8, 'shibnn1405586353', 'WNF-1200', ''),
(383, 8, 'shibnn1405586353', 'WNF-1201', ''),
(384, 8, 'shibnn1405586353', 'WNF-1202', ''),
(385, 8, 'shibnn1405586353', 'WNF-1203', ''),
(386, 8, 'shibnn1405586353', 'WNF-1204', ''),
(387, 8, 'shibnn1405586353', 'WNF-1205', ''),
(388, 8, 'shibnn1405586353', 'WNF-1206', ''),
(389, 8, 'shibnn1405586353', 'WNF-1207', ''),
(390, 8, 'shibnn1405586353', 'WNF-1208', ''),
(391, 8, 'shibnn1405586353', 'WNF-1209', ''),
(392, 8, 'shibnn1405586353', 'WNF-1210', ''),
(393, 8, 'shibnn1405586353', 'WNF-1211', ''),
(394, 8, 'shibnn1405586353', 'WNF-1212', ''),
(395, 8, 'shibnn1405586353', 'WNF-1213', ''),
(396, 8, 'shibnn1405586353', 'WNF-1214', ''),
(397, 8, 'shibnn1405586353', 'WNF-1215', ''),
(398, 8, 'shibnn1405586353', 'WNF-1216', ''),
(399, 8, 'shibnn1405586353', 'WNF-1217', ''),
(400, 8, 'shibnn1405586353', 'WNF-1218', ''),
(401, 8, 'shibnn1405586353', 'WNF-1219', ''),
(402, 8, 'shibnn1405586353', 'WNF-1220', ''),
(403, 8, 'shibnn1405586353', 'WNF-1221', ''),
(404, 8, 'shibnn1405586353', 'WNF-1222', ''),
(405, 8, 'shibnn1405586353', 'WNF-1223', ''),
(406, 8, 'shibnn1405586353', 'WNF-1224', ''),
(407, 8, 'shibnn1405586353', 'WNF-1225', ''),
(408, 8, 'shibnn1405586353', 'WNF-1226', ''),
(409, 8, 'shibnn1405586353', 'WNF-1227', ''),
(410, 8, 'shibnn1405586353', 'WNF-1228', ''),
(411, 8, 'shibnn1405586353', 'WNF-1229', ''),
(412, 8, 'shibnn1405586353', 'WNF-1230', ''),
(413, 8, 'shibnn1405586353', 'WNF-1231', ''),
(414, 8, 'shibnn1405586353', 'WNF-1232', ''),
(415, 8, 'shibnn1405586353', 'WNF-1233', ''),
(416, 8, 'shibnn1405586353', 'WNF-1234', ''),
(417, 8, 'shibnn1405586353', 'WNF-1235', ''),
(418, 8, 'shibnn1405586353', 'WNF-1236', ''),
(419, 8, 'shibnn1405586353', 'WNF-1237', ''),
(420, 8, 'shibnn1405586353', 'WNF-1238', ''),
(421, 8, 'shibnn1405586353', 'WNF-1239', ''),
(422, 8, 'shibnn1405586353', 'WNF-1240', ''),
(423, 8, 'shibnn1405586353', 'WNF-1241', ''),
(424, 8, 'shibnn1405586353', 'WNF-1242', ''),
(425, 8, 'shibnn1405586353', 'WNF-1243', ''),
(426, 8, 'shibnn1405586353', 'WNF-1244', ''),
(427, 8, 'shibnn1405586353', 'WNF-1245', ''),
(428, 8, 'shibnn1405586353', 'WNF-1246', ''),
(429, 8, 'shibnn1405586353', 'WNF-1247', ''),
(430, 8, 'shibnn1405586353', 'WNF-1248', ''),
(431, 8, 'shibnn1405586353', 'WNF-1249', ''),
(432, 8, 'shibnn1405586353', 'WNF-1250', ''),
(433, 8, 'shibnn1405586353', 'WNF-1251', ''),
(434, 8, 'shibnn1405586353', 'WNF-1252', ''),
(435, 8, 'shibnn1405586353', 'WNF-1253', ''),
(436, 8, 'shibnn1405586353', 'WNF-1254', ''),
(437, 8, 'shibnn1405586353', 'WNF-1255', ''),
(438, 8, 'shibnn1405586353', 'WNF-1256', ''),
(439, 8, 'shibnn1405586353', 'WNF-1257', ''),
(440, 8, 'shibnn1405586353', 'WNF-1258', ''),
(441, 8, 'shibnn1405586353', 'WNF-1259', ''),
(442, 8, 'shibnn1405586353', 'WNF-1260', ''),
(443, 8, 'shibnn1405586353', 'WNF-1261', ''),
(444, 8, 'shibnn1405586353', 'WNF-1262', ''),
(445, 8, 'shibnn1405586353', 'WNF-1263', ''),
(446, 8, 'shibnn1405586353', 'WNF-1264', ''),
(447, 8, 'shibnn1405586353', 'WNF-1265', ''),
(448, 8, 'shibnn1405586353', 'WNF-1266', ''),
(449, 8, 'shibnn1405586353', 'WNF-1267', ''),
(450, 8, 'shibnn1405586353', 'WNF-1268', ''),
(451, 8, 'shibnn1405586353', 'WNF-1269', ''),
(452, 8, 'shibnn1405586353', 'WNF-1270', ''),
(453, 8, 'shibnn1405586353', 'WNF-1271', ''),
(454, 8, 'shibnn1405586353', 'WNF-1272', ''),
(455, 8, 'shibnn1405586353', 'WNF-1273', ''),
(456, 8, 'shibnn1405586353', 'WNF-1274', ''),
(457, 8, 'shibnn1405586353', 'WNF-1275', ''),
(458, 8, 'shibnn1405586353', 'WNF-1276', ''),
(459, 8, 'shibnn1405586353', 'WNF-1277', ''),
(460, 8, 'shibnn1405586353', 'WNF-1278', ''),
(461, 8, 'shibnn1405586353', 'WNF-1279', ''),
(462, 8, 'shibnn1405586353', 'WNF-1280', ''),
(463, 8, 'shibnn1405586353', 'WNF-1281', ''),
(464, 8, 'shibnn1405586353', 'WNF-1282', ''),
(465, 8, 'shibnn1405586353', 'WNF-1283', ''),
(466, 8, 'shibnn1405586353', 'WNF-1284', ''),
(467, 8, 'shibnn1405586353', 'WNF-1285', ''),
(468, 8, 'shibnn1405586353', 'WNF-1286', ''),
(469, 8, 'shibnn1405586353', 'WNF-1287', ''),
(470, 8, 'shibnn1405586353', 'WNF-1288', ''),
(471, 8, 'shibnn1405586353', 'WNF-1289', ''),
(472, 8, 'shibnn1405586353', 'WNF-1290', ''),
(473, 8, 'shibnn1405586353', 'WNF-1291', ''),
(474, 8, 'shibnn1405586353', 'WNF-1292', ''),
(475, 8, 'shibnn1405586353', 'WNF-1293', ''),
(476, 8, 'shibnn1405586353', 'WNF-1294', ''),
(477, 8, 'shibnn1405586353', 'WNF-1295', ''),
(478, 8, 'shibnn1405586353', 'WNF-1296', ''),
(479, 8, 'shibnn1405586353', 'WNF-1297', ''),
(480, 8, 'shibnn1405586353', 'WNF-1298', ''),
(481, 8, 'shibnn1405586353', 'WNF-1299', ''),
(482, 8, 'shibnn1405586353', 'WNF-1300', ''),
(483, 8, 'shibnn1405586353', 'WNF-1301', ''),
(484, 8, 'shibnn1405586353', 'WNF-1302', ''),
(485, 8, 'shibnn1405586353', 'WNF-1303', ''),
(486, 8, 'shibnn1405586353', 'WNF-1304', ''),
(487, 8, 'shibnn1405586353', 'WNF-1305', ''),
(488, 8, 'shibnn1405586353', 'WNF-1306', ''),
(489, 8, 'shibnn1405586353', 'WNF-1307', ''),
(490, 8, 'shibnn1405586353', 'WNF-1308', ''),
(491, 8, 'shibnn1405586353', 'WNF-1309', ''),
(492, 8, 'shibnn1405586353', 'WNF-1310', ''),
(493, 8, 'shibnn1405586353', 'WNF-1311', ''),
(494, 8, 'shibnn1405586353', 'WNF-1312', ''),
(495, 8, 'shibnn1405586353', 'WNF-1313', ''),
(496, 8, 'shibnn1405586353', 'WNF-1314', ''),
(497, 8, 'shibnn1405586353', 'WNF-1315', ''),
(498, 8, 'shibnn1405586353', 'WNF-1316', ''),
(499, 8, 'shibnn1405586353', 'WNF-1317', ''),
(500, 8, 'shibnn1405586353', 'WNF-1318', ''),
(501, 8, 'shibnn1405586353', 'WNF-1319', ''),
(502, 8, 'shibnn1405586353', 'WNF-1320', ''),
(503, 8, 'shibnn1405586353', 'WNF-1321', ''),
(504, 8, 'shibnn1405586353', 'WNF-1322', ''),
(505, 8, 'shibnn1405586353', 'WNF-1323', ''),
(506, 8, 'shibnn1405586353', 'WNF-1324', ''),
(507, 8, 'shibnn1405586353', 'WNF-1325', ''),
(508, 8, 'shibnn1405586353', 'WNF-1326', ''),
(509, 8, 'shibnn1405586353', 'WNF-1327', ''),
(510, 8, 'shibnn1405586353', 'WNF-1328', ''),
(511, 8, 'shibnn1405586353', 'WNF-1329', ''),
(512, 8, 'shibnn1405586353', 'WNF-1330', ''),
(513, 8, 'shibnn1405586353', 'WNF-1331', ''),
(514, 8, 'shibnn1405586353', 'WNF-1332', ''),
(515, 8, 'shibnn1405586353', 'WNF-1333', ''),
(516, 8, 'shibnn1405586353', 'WNF-1334', ''),
(517, 8, 'shibnn1405586353', 'WNF-1335', ''),
(518, 8, 'shibnn1405586353', 'WNF-1336', ''),
(519, 8, 'shibnn1405586353', 'WNF-1337', ''),
(520, 8, 'shibnn1405586353', 'WNF-1338', ''),
(521, 8, 'shibnn1405586353', 'WNF-1339', ''),
(522, 8, 'shibnn1405586353', 'WNF-1340', ''),
(523, 8, 'shibnn1405586353', 'WNF-1341', ''),
(524, 8, 'shibnn1405586353', 'WNF-1342', ''),
(525, 8, 'shibnn1405586353', 'WNF-1343', ''),
(526, 8, 'shibnn1405586353', 'WNF-1344', ''),
(527, 8, 'shibnn1405586353', 'WNF-1345', ''),
(528, 8, 'shibnn1405586353', 'WNF-1346', ''),
(529, 8, 'shibnn1405586353', 'WNF-1347', ''),
(530, 8, 'shibnn1405586353', 'WNF-1348', ''),
(531, 8, 'shibnn1405586353', 'WNF-1349', ''),
(532, 8, 'shibnn1405586353', 'WNF-1350', ''),
(533, 8, 'shibnn1405586353', 'WNF-1351', ''),
(534, 8, 'shibnn1405586353', 'WNF-1352', ''),
(535, 8, 'shibnn1405586353', 'WNF-1353', ''),
(536, 8, 'shibnn1405586353', 'WNF-1354', ''),
(537, 8, 'shibnn1405586353', 'WNF-1355', ''),
(538, 8, 'shibnn1405586353', 'WNF-1356', ''),
(539, 8, 'shibnn1405586353', 'WNF-1357', ''),
(540, 8, 'shibnn1405586353', 'WNF-1358', ''),
(541, 8, 'shibnn1405586353', 'WNF-1359', ''),
(542, 8, 'shibnn1405586353', 'WNF-1360', ''),
(543, 8, 'shibnn1405586353', 'WNF-1361', ''),
(544, 8, 'shibnn1405586353', 'WNF-1362', ''),
(545, 8, 'shibnn1405586353', 'WNF-1363', ''),
(546, 8, 'shibnn1405586353', 'WNF-1364', ''),
(547, 8, 'shibnn1405586353', 'WNF-1365', ''),
(548, 8, 'shibnn1405586353', 'WNF-1366', ''),
(549, 8, 'shibnn1405586353', 'WNF-1367', ''),
(550, 8, 'shibnn1405586353', 'WNF-1368', ''),
(551, 8, 'shibnn1405586353', 'WNF-1369', ''),
(552, 8, 'shibnn1405586353', 'WNF-1370', ''),
(553, 8, 'shibnn1405586353', 'WNF-1371', ''),
(554, 8, 'shibnn1405586353', 'WNF-1372', ''),
(555, 8, 'shibnn1405586353', 'WNF-1373', ''),
(556, 8, 'shibnn1405586353', 'WNF-1374', ''),
(557, 8, 'shibnn1405586353', 'WNF-1375', ''),
(558, 8, 'shibnn1405586353', 'WNF-1376', ''),
(559, 8, 'shibnn1405586353', 'WNF-1377', ''),
(560, 8, 'shibnn1405586353', 'WNF-1378', ''),
(561, 8, 'shibnn1405586353', 'WNF-1379', ''),
(562, 8, 'shibnn1405586353', 'WNF-1380', ''),
(563, 8, 'shibnn1405586353', 'WNF-1381', ''),
(564, 8, 'shibnn1405586353', 'WNF-1382', ''),
(565, 8, 'shibnn1405586353', 'WNF-1383', ''),
(566, 8, 'shibnn1405586353', 'WNF-1384', ''),
(567, 8, 'shibnn1405586353', 'WNF-1385', ''),
(568, 8, 'shibnn1405586353', 'WNF-1386', ''),
(569, 8, 'shibnn1405586353', 'WNF-1387', ''),
(570, 8, 'shibnn1405586353', 'WNF-1388', ''),
(571, 8, 'shibnn1405586353', 'WNF-1389', ''),
(572, 8, 'shibnn1405586353', 'WNF-1390', ''),
(573, 8, 'shibnn1405586353', 'WNF-1391', ''),
(574, 8, 'shibnn1405586353', 'WNF-1392', ''),
(575, 8, 'shibnn1405586353', 'WNF-1393', ''),
(576, 8, 'shibnn1405586353', 'WNF-1394', ''),
(577, 8, 'shibnn1405586353', 'WNF-1395', ''),
(578, 8, 'shibnn1405586353', 'WNF-1396', ''),
(579, 8, 'shibnn1405586353', 'WNF-1397', ''),
(580, 8, 'shibnn1405586353', 'WNF-1398', ''),
(581, 8, 'shibnn1405586353', 'WNF-1399', ''),
(582, 8, 'shibnn1405586353', 'WNF-1400', ''),
(583, 8, 'shibnn1405586353', 'WNF-1401', ''),
(584, 8, 'shibnn1405586353', 'WNF-1402', ''),
(585, 8, 'shibnn1405586353', 'WNF-1403', ''),
(586, 8, 'shibnn1405586353', 'WNF-1404', ''),
(587, 8, 'shibnn1405586353', 'WNF-1405', ''),
(588, 8, 'shibnn1405586353', 'WNF-1406', ''),
(589, 8, 'shibnn1405586353', 'WNF-1407', ''),
(590, 8, 'shibnn1405586353', 'WNF-1408', ''),
(591, 8, 'shibnn1405586353', 'WNF-1409', ''),
(592, 8, 'shibnn1405586353', 'WNF-1410', ''),
(593, 8, 'shibnn1405586353', 'WNF-1411', ''),
(594, 8, 'shibnn1405586353', 'WNF-1412', ''),
(595, 8, 'shibnn1405586353', 'WNF-1413', ''),
(596, 8, 'shibnn1405586353', 'WNF-1414', ''),
(597, 8, 'shibnn1405586353', 'WNF-1415', ''),
(598, 8, 'shibnn1405586353', 'WNF-1416', ''),
(599, 8, 'shibnn1405586353', 'WNF-1417', ''),
(600, 8, 'shibnn1405586353', 'WNF-1418', ''),
(601, 8, 'shibnn1405586353', 'WNF-1419', ''),
(602, 8, 'shibnn1405586353', 'WNF-1420', ''),
(603, 8, 'shibnn1405586353', 'WNF-1421', ''),
(604, 8, 'shibnn1405586353', 'WNF-1422', ''),
(605, 8, 'shibnn1405586353', 'WNF-1423', ''),
(606, 8, 'shibnn1405586353', 'WNF-1424', ''),
(607, 8, 'shibnn1405586353', 'WNF-1425', ''),
(608, 8, 'shibnn1405586353', 'WNF-1426', ''),
(609, 8, 'shibnn1405586353', 'WNF-1427', ''),
(610, 8, 'shibnn1405586353', 'WNF-1428', ''),
(611, 8, 'shibnn1405586353', 'WNF-1429', ''),
(612, 8, 'shibnn1405586353', 'WNF-1430', ''),
(613, 8, 'shibnn1405586353', 'WNF-1431', ''),
(614, 8, 'shibnn1405586353', 'WNF-1432', ''),
(615, 8, 'shibnn1405586353', 'WNF-1433', ''),
(616, 8, 'shibnn1405586353', 'WNF-1434', ''),
(617, 8, 'shibnn1405586353', 'WNF-1435', ''),
(618, 8, 'shibnn1405586353', 'WNF-1436', ''),
(619, 8, 'shibnn1405586353', 'WNF-1437', ''),
(620, 8, 'shibnn1405586353', 'WNF-1438', ''),
(621, 8, 'shibnn1405586353', 'WNF-1439', ''),
(622, 8, 'shibnn1405586353', 'WNF-1440', ''),
(623, 8, 'shibnn1405586353', 'WNF-1441', ''),
(624, 8, 'shibnn1405586353', 'WNF-1442', ''),
(625, 8, 'shibnn1405586353', 'WNF-1443', ''),
(626, 8, 'shibnn1405586353', 'WNF-1444', ''),
(627, 8, 'shibnn1405586353', 'WNF-1445', ''),
(628, 8, 'shibnn1405586353', 'WNF-1446', ''),
(629, 8, 'shibnn1405586353', 'WNF-1447', ''),
(630, 8, 'shibnn1405586353', 'WNF-1448', ''),
(631, 8, 'shibnn1405586353', 'WNF-1449', ''),
(632, 8, 'shibnn1405586353', 'WNF-1450', ''),
(633, 8, 'shibnn1405586353', 'WNF-1451', ''),
(634, 8, 'shibnn1405586353', 'WNF-1452', ''),
(635, 8, 'shibnn1405586353', 'WNF-1453', ''),
(636, 8, 'shibnn1405586353', 'WNF-1454', ''),
(637, 8, 'shibnn1405586353', 'WNF-1455', ''),
(638, 8, 'shibnn1405586353', 'WNF-1456', ''),
(639, 8, 'shibnn1405586353', 'WNF-1457', ''),
(640, 8, 'shibnn1405586353', 'WNF-1458', ''),
(641, 8, 'shibnn1405586353', 'WNF-1459', ''),
(642, 8, 'shibnn1405586353', 'WNF-1460', ''),
(643, 8, 'shibnn1405586353', 'WNF-1461', ''),
(644, 8, 'shibnn1405586353', 'WNF-1462', ''),
(645, 8, 'shibnn1405586353', 'WNF-1463', ''),
(646, 8, 'shibnn1405586353', 'WNF-1464', ''),
(647, 8, 'shibnn1405586353', 'WNF-1465', ''),
(648, 8, 'shibnn1405586353', 'WNF-1466', ''),
(649, 8, 'shibnn1405586353', 'WNF-1467', ''),
(650, 8, 'shibnn1405586353', 'WNF-1468', ''),
(651, 8, 'shibnn1405586353', 'WNF-1469', ''),
(652, 8, 'shibnn1405586353', 'WNF-1470', ''),
(653, 8, 'shibnn1405586353', 'WNF-1471', ''),
(654, 8, 'shibnn1405586353', 'WNF-1472', ''),
(655, 8, 'shibnn1405586353', 'WNF-1473', ''),
(656, 8, 'shibnn1405586353', 'WNF-1474', ''),
(657, 8, 'shibnn1405586353', 'WNF-1475', ''),
(658, 8, 'shibnn1405586353', 'WNF-1476', ''),
(659, 8, 'shibnn1405586353', 'WNF-1477', ''),
(660, 8, 'shibnn1405586353', 'WNF-1478', ''),
(661, 8, 'shibnn1405586353', 'WNF-1479', ''),
(662, 8, 'shibnn1405586353', 'WNF-1480', ''),
(663, 8, 'shibnn1405586353', 'WNF-1481', ''),
(664, 8, 'shibnn1405586353', 'WNF-1482', ''),
(665, 8, 'shibnn1405586353', 'WNF-1483', ''),
(666, 8, 'shibnn1405586353', 'WNF-1484', ''),
(667, 8, 'shibnn1405586353', 'WNF-1485', ''),
(668, 8, 'shibnn1405586353', 'WNF-1486', ''),
(669, 8, 'shibnn1405586353', 'WNF-1487', ''),
(670, 8, 'shibnn1405586353', 'WNF-1488', ''),
(671, 8, 'shibnn1405586353', 'WNF-1489', ''),
(672, 8, 'shibnn1405586353', 'WNF-1490', ''),
(673, 8, 'shibnn1405586353', 'WNF-1491', ''),
(674, 8, 'shibnn1405586353', 'WNF-1492', ''),
(675, 8, 'shibnn1405586353', 'WNF-1493', ''),
(676, 8, 'shibnn1405586353', 'WNF-1494', ''),
(677, 8, 'shibnn1405586353', 'WNF-1495', ''),
(678, 8, 'shibnn1405586353', 'WNF-1496', ''),
(679, 8, 'shibnn1405586353', 'WNF-1497', ''),
(680, 8, 'shibnn1405586353', 'WNF-1498', ''),
(681, 8, 'shibnn1405586353', 'WNF-1499', ''),
(682, 8, 'shibnn1405586353', 'WNF-1500', ''),
(683, 10, 'vzohcb1406947236', 'wx1002', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U'),
(684, 10, 'vzohcb1406947236', 'wx1003', ''),
(685, 10, 'vzohcb1406947236', 'wx1004', ''),
(686, 10, 'vzohcb1406947236', 'wx1005', ''),
(687, 10, 'vzohcb1406947236', 'wx1006', ''),
(688, 10, 'vzohcb1406947236', 'wx1007', ''),
(689, 10, 'vzohcb1406947236', 'wx1008', ''),
(690, 10, 'vzohcb1406947236', 'wx1009', '');

-- --------------------------------------------------------

--
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_member_card_custom`
--

INSERT INTO `tp_member_card_custom` (`id`, `token`, `wechaname`, `tel`, `truename`, `qq`, `paypass`, `portrait`, `sex`, `bornyear`, `bornmonth`, `bornday`) VALUES
(1, 'shibnn1405586353', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'vzohcb1406947236', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(3, 'xbgzcp1407232534', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_exchange`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_member_card_exchange`
--

INSERT INTO `tp_member_card_exchange` (`id`, `cardid`, `token`, `everyday`, `continuation`, `reward`, `cardinfo`, `cardinfo2`, `create_time`) VALUES
(1, 1, 'ekfdng1401977502', 1, 0, 10, '1234565', '123456', 1402034342),
(2, 8, 'shibnn1405586353', 1, 0, 1, '1', '1', 1406449325);

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_member_card_focus`
--

INSERT INTO `tp_member_card_focus` (`id`, `info`, `img`, `url`, `token`) VALUES
(1, '11', 'http://weixin.jihuodi.com/tpl/static/attachment/focus/default/2.jpg', '', 'vzohcb1406947236'),
(2, '', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', '', 'xbgzcp1407232534');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_info`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_integral`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_notice`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_member_card_pay_record`
--

INSERT INTO `tp_member_card_pay_record` (`id`, `orderid`, `ordername`, `transactionid`, `paytype`, `createtime`, `paytime`, `paid`, `price`, `token`, `wecha_id`, `module`, `type`) VALUES
(4, '201408050912362614', 'wx1002 充值', NULL, NULL, 1407201156, NULL, 0, 1000.00, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', 'Card', 1),
(5, '201408050914253130', 'wx1002 充值', NULL, NULL, 1407201265, NULL, 0, 188.00, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', 'Card', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_set`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `recharge` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/recharge.jpg',
  `payrecord` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/payrecord.jpg',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `tp_member_card_set`
--

INSERT INTO `tp_member_card_set` (`id`, `token`, `cardname`, `miniscore`, `logo`, `bg`, `diybg`, `msg`, `numbercolor`, `vipnamecolor`, `Lastmsg`, `vip`, `qiandao`, `shopping`, `memberinfo`, `membermsg`, `contact`, `create_time`, `recharge`, `payrecord`) VALUES
(1, 'ekfdng1401977502', '金卡', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/umbrella.png', './tpl/User/default/common/images/card/card_bg01.png', 'http://www.466777.com/tpl/static/attachment/background/view/2.jpg', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1402034240, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(2, 'ficefo1403523346', '微南丰会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1403523657, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(3, 'pwearo1404791557', '微南丰会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1404791588, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(4, 'hgfgmt1404896579', '微南丰会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1405176494, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(5, 'xjclzx1405958021', '微南丰会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1405958106, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(6, 'zrkepg1406003661', '微南丰会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406003754, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(7, 'oalaxv1406127433', '微南丰会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406127520, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(8, 'shibnn1405586353', '微南丰会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406355085, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(9, 'ksmbyh1406371219', '微南丰TM会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406729906, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(10, 'vzohcb1406947236', '微南丰TM会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406947304, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(11, 'vzohcb1406947236', '集货地源码会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1407232566, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(12, 'xbgzcp1407232534', '集货地源码会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1407240529, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_sign`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_member_card_sign`
--

INSERT INTO `tp_member_card_sign` (`id`, `token`, `wecha_id`, `sign_time`, `is_sign`, `score_type`, `expense`, `sell_expense`) VALUES
(0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 0, 0, 1, 0, 0),
(0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 1402034905, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_use_record`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_member_card_use_record`
--

INSERT INTO `tp_member_card_use_record` (`id`, `itemid`, `token`, `wecha_id`, `staffid`, `cat`, `expense`, `score`, `usecount`, `time`) VALUES
(2, 0, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 0, 0, 0, 0, 0, 1406448630),
(3, 0, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 0, 99, 80, 0, 1, 1406773069),
(13, 0, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', 0, 0, 10, 0, 0, 1407227447),
(12, 0, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', 0, 0, 1000, 0, 0, 1407207565),
(11, 0, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', 0, 0, 0, 0, 0, 1407207558),
(10, 0, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', 0, 0, 0, 0, 0, 1407207508);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_vip`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_article`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_id_2` (`channel_id`,`thumb`),
  KEY `time` (`time`),
  KEY `taxis` (`taxis`),
  KEY `ex` (`ex`),
  KEY `geoid` (`geoid`),
  KEY `uid` (`uid`),
  KEY `keywords` (`keywords`),
  KEY `sourcetype` (`sourcetype`),
  KEY `pubed` (`pubed`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_moopha_article`
--

INSERT INTO `tp_moopha_article` (`id`, `channel_id`, `token`, `site`, `title`, `titles`, `subtitle`, `link`, `externallink`, `thumb`, `content`, `intro`, `author`, `source`, `keywords`, `uid`, `time`, `last_update`, `viewcount`, `template`, `pagecount`, `disagree`, `cancomment`, `commentcount`, `agree`, `taxis`, `lastcreate`, `sourcetype`, `ex`, `pubed`, `geoid`) VALUES
(1, 56, '', 8, '1', '', '1', '?m=site&c=home&a=content&contentid=1', 0, 'http://www.466777.com/cms/upload/images/2014/07/28/1406488054HUgu.jpg', '<p>\r\n	&nbsp;1</p>\r\n', '1', '', '', ',', '', 1406488020, 1406488020, 0, NULL, 1, 0, 1, 0, 0, 1, 1400000000, 1, 0, 1, 0),
(2, 98, 'ekfdng1401977502', 14, '', '', NULL, '', 0, 'http://www.466777.com/tpl/static/attachment/background/view/2.jpg', '', '', NULL, NULL, NULL, '0', 1407034777, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 1400000000, 0, 0, 1, 0),
(3, 98, 'ekfdng1401977502', 14, '11', '', NULL, '', 0, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '11', '', NULL, NULL, NULL, '0', 1407034777, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 1400000000, 0, 0, 1, 0),
(4, 98, 'ekfdng1401977502', 14, '22', '', NULL, '', 0, 'http://www.466777.com/tpl/static/attachment/focus/default/3.jpg', '22', '', NULL, NULL, NULL, '0', 1407034777, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 1400000000, 0, 0, 1, 0),
(5, 84, '', 12, 'ffffffffffffffffffffffffffffffff', '', 'ffffffffffffffffffffffffffffffff', '?m=site&c=home&a=content&contentid=5', 0, '', '<p>\r\n	ddddddddddddddddddddddddddddddddd</p>\r\n', 'ddddddddddddddddddddddddddddddddd', '', '', ',', '', 1407039179, 1407039179, 0, NULL, 1, 0, 1, 0, 0, 5, 1400000000, 1, 0, 1, 0),
(6, 79, '', 12, 'dddddddddddddddddddd', '', 'dddddddddddddddddddd', '/', 0, '', '<p>\r\n	输入&quot;会员卡 刮刮卡 团购 商城 大转盘 优惠券 订餐 商家订单&quot;，就可以链</p>\r\n', '输入&quot;会员卡刮刮卡团购商城大转盘优惠券订餐商家订单&quot;，就可以链', '', '', ',', '', 1407039200, 1407039200, 0, NULL, 1, 0, 1, 0, 0, 6, 1400000000, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_attachement`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  KEY `cat` (`cat`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_channel`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`),
  KEY `specialid` (`specialid`),
  KEY `token` (`token`),
  KEY `isnav` (`isnav`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `tp_moopha_channel`
--

INSERT INTO `tp_moopha_channel` (`id`, `name`, `shortname`, `isnav`, `channeltype`, `cindex`, `token`, `link`, `externallink`, `des`, `thumb`, `metatitle`, `metakeyword`, `metades`, `thumbwidth`, `thumbheight`, `thumb2width`, `thumb2height`, `thumb3width`, `thumb3height`, `thumb4width`, `thumb4height`, `parentid`, `channeltemplate`, `contenttemplate`, `autotype`, `ex`, `iscity`, `site`, `taxis`, `lastcreate`, `pagesize`, `specialid`, `homepicturechannel`, `hometextchannel`, `time`) VALUES
(1, '首页', '首页', 0, 1, 'homepage', 'psuyri1404444703', '', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1404461581),
(2, '关于我们', '简介', 1, 1, 'aboutus', 'psuyri1404444703', '?m=site&c=home&a=channel&channelid=2', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1404461581),
(3, '最新动态', '动态', 1, 1, 'news', 'psuyri1404444703', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1404461581),
(4, '产品展示', '产品', 1, 1, 'products', 'psuyri1404444703', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1404461581),
(5, '精彩案例', '案例', 1, 1, 'case', 'psuyri1404444703', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1404461581),
(6, '联系我们', '联系', 1, 1, 'contact', 'psuyri1404444703', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1404461581),
(7, '幻灯片', '幻灯片', 0, 1, 'focus', 'psuyri1404444703', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1404461581),
(8, '首页', '首页', 0, 1, 'homepage', 'hpwshv1404715458', '?m=site&c=home&a=channel&channelid=8', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1404715503),
(9, '关于我们', '简介', 1, 1, 'aboutus', 'hpwshv1404715458', '?m=site&c=home&a=channel&channelid=9', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1404715503),
(10, '最新动态', '动态', 1, 1, 'news', 'hpwshv1404715458', '?m=site&c=home&a=channel&channelid=10', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1404715503),
(11, '产品展示', '产品', 1, 1, 'products', 'hpwshv1404715458', '?m=site&c=home&a=content&contentid={contentID}', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 5, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1404715503),
(12, '精彩案例', '案例', 1, 1, 'case', 'hpwshv1404715458', '?m=site&c=home&a=channel&channelid=12', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1404715503),
(13, '联系我们', '联系', 1, 1, 'contact', 'hpwshv1404715458', '?m=site&c=home&a=channel&channelid=13', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1404715503),
(14, '幻灯片', '幻灯片', 0, 1, 'focus', 'hpwshv1404715458', '?m=site&c=home&a=channel&channelid=14', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1404715503),
(15, '首页', '首页', 0, 1, 'homepage', 'vtdscs1404740044', '', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1404897360),
(16, '关于我们', '简介', 1, 1, 'aboutus', 'vtdscs1404740044', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1404897360),
(17, '最新动态', '动态', 1, 1, 'news', 'vtdscs1404740044', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1404897360),
(18, '产品展示', '产品', 1, 1, 'products', 'vtdscs1404740044', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1404897360),
(19, '精彩案例', '案例', 1, 1, 'case', 'vtdscs1404740044', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1404897360),
(20, '联系我们', '联系', 1, 1, 'contact', 'vtdscs1404740044', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1404897360),
(21, '幻灯片', '幻灯片', 0, 1, 'focus', 'vtdscs1404740044', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1404897360),
(22, '首页', '首页', 0, 1, 'homepage', 'ooeiuv1402737849', '', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 4, 0, 1400000000, 30, 0, 0, 0, 1404897442),
(23, '关于我们', '简介', 1, 1, 'aboutus', 'ooeiuv1402737849', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 1, '', 0, 0, 4, 0, 1400000000, 30, 0, 0, 0, 1404897442),
(24, '最新动态', '动态', 1, 1, 'news', 'ooeiuv1402737849', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 1, '', 0, 0, 4, 0, 1400000000, 30, 0, 0, 0, 1404897442),
(25, '产品展示', '产品', 1, 1, 'products', 'ooeiuv1402737849', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 1, '', 0, 0, 4, 0, 1400000000, 30, 0, 0, 0, 1404897442),
(26, '精彩案例', '案例', 1, 1, 'case', 'ooeiuv1402737849', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 1, '', 0, 0, 4, 0, 1400000000, 30, 0, 0, 0, 1404897442),
(27, '联系我们', '联系', 1, 1, 'contact', 'ooeiuv1402737849', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 1, '', 0, 0, 4, 0, 1400000000, 30, 0, 0, 0, 1404897442),
(28, '幻灯片', '幻灯片', 0, 1, 'focus', 'ooeiuv1402737849', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 22, 1, 1, '', 0, 0, 4, 0, 1400000000, 30, 0, 0, 0, 1404897442),
(29, '首页', '首页', 0, 1, 'homepage', 'hgfgmt1404896579', '?m=site&c=home&a=channel&channelid=29', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 25, '', 0, 0, 5, 0, 1400000000, 30, 0, 0, 0, 1405395726),
(30, '关于我们', '简介', 1, 1, 'aboutus', 'hgfgmt1404896579', '?m=site&c=home&a=channel&channelid=30', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 25, '', 0, 0, 5, 0, 1400000000, 30, 0, 0, 0, 1405395726),
(31, '最新动态', '动态', 1, 1, 'news', 'hgfgmt1404896579', '?m=site&c=home&a=channel&channelid=31', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 25, '', 0, 0, 5, 0, 1400000000, 30, 0, 0, 0, 1405395726),
(32, '产品展示', '产品', 1, 1, 'products', 'hgfgmt1404896579', '?m=site&c=home&a=channel&channelid=32', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 29, 24, 25, '', 0, 0, 5, 0, 1400000000, 30, 0, 0, 0, 1405395726),
(33, '精彩案例', '案例', 1, 1, 'case', 'hgfgmt1404896579', '?m=site&c=home&a=channel&channelid=33', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 25, '', 0, 0, 5, 0, 1400000000, 30, 0, 0, 0, 1405395726),
(34, '联系我们', '联系', 1, 1, 'contact', 'hgfgmt1404896579', '?m=site&c=home&a=channel&channelid=34', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 25, '', 0, 0, 5, 0, 1400000000, 30, 0, 0, 0, 1405395726),
(35, '幻灯片', '幻灯片', 0, 1, 'focus', 'hgfgmt1404896579', '?m=site&c=home&a=channel&channelid=35', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 25, '', 0, 0, 5, 0, 1400000000, 30, 0, 0, 0, 1405395726),
(36, '首页', '首页', 0, 1, 'homepage', 'thvusk1405647851', '?m=site&c=home&a=channel&channelid=36', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 18, '', 0, 0, 6, 0, 1400000000, 30, 0, 0, 0, 1405647897),
(37, '关于我们', '简介', 1, 1, 'aboutus', 'thvusk1405647851', '?m=site&c=home&a=channel&channelid=37', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 36, 16, 18, '', 0, 0, 6, 0, 1400000000, 30, 0, 0, 0, 1405647897),
(38, '最新动态', '动态', 1, 1, 'news', 'thvusk1405647851', '?m=site&c=home&a=channel&channelid=38', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 36, 16, 18, '', 0, 0, 6, 0, 1400000000, 30, 0, 0, 0, 1405647897),
(39, '产品展示', '产品', 1, 1, 'products', 'thvusk1405647851', '?m=site&c=home&a=channel&channelid=39', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 36, 17, 18, '', 0, 0, 6, 0, 1400000000, 30, 0, 0, 0, 1405647897),
(40, '精彩案例', '案例', 1, 1, 'case', 'thvusk1405647851', '?m=site&c=home&a=channel&channelid=40', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 36, 16, 18, '', 0, 0, 6, 0, 1400000000, 30, 0, 0, 0, 1405647897),
(41, '联系我们', '联系', 1, 1, 'contact', 'thvusk1405647851', '?m=site&c=home&a=channel&channelid=41', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 36, 16, 18, '', 0, 0, 6, 0, 1400000000, 30, 0, 0, 0, 1405647897),
(42, '幻灯片', '幻灯片', 0, 1, 'focus', 'thvusk1405647851', '?m=site&c=home&a=channel&channelid=42', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 36, 16, 18, '', 0, 0, 6, 0, 1400000000, 30, 0, 0, 0, 1405647897),
(43, '首页', '首页', 0, 1, 'homepage', 'shibnn1405586353', '', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 7, 0, 1400000000, 30, 0, 0, 0, 1406376247),
(44, '关于我们', '简介', 1, 1, 'aboutus', 'shibnn1405586353', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 43, 1, 1, '', 0, 0, 7, 0, 1400000000, 30, 0, 0, 0, 1406376247),
(45, '最新动态', '动态', 1, 1, 'news', 'shibnn1405586353', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 43, 1, 1, '', 0, 0, 7, 0, 1400000000, 30, 0, 0, 0, 1406376247),
(46, '产品展示', '产品', 1, 1, 'products', 'shibnn1405586353', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 43, 1, 1, '', 0, 0, 7, 0, 1400000000, 30, 0, 0, 0, 1406376247),
(47, '精彩案例', '案例', 1, 1, 'case', 'shibnn1405586353', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 43, 1, 1, '', 0, 0, 7, 0, 1400000000, 30, 0, 0, 0, 1406376247),
(48, '联系我们', '联系', 1, 1, 'contact', 'shibnn1405586353', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 43, 1, 1, '', 0, 0, 7, 0, 1400000000, 30, 0, 0, 0, 1406376247),
(49, '幻灯片', '幻灯片', 0, 1, 'focus', 'shibnn1405586353', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 43, 1, 1, '', 0, 0, 7, 0, 1400000000, 30, 0, 0, 0, 1406376247),
(50, '首页', '首页', 0, 1, 'homepage', 'ksmbyh1406371219', '?m=site&c=home&a=channel&channelid=50', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 32, '', 0, 0, 8, 0, 1400000000, 30, 0, 0, 0, 1406487919),
(51, '关于我们', '简介', 1, 1, 'aboutus', 'ksmbyh1406371219', '?m=site&c=home&a=channel&channelid=51', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 50, 30, 32, '', 0, 0, 8, 0, 1400000000, 30, 0, 0, 0, 1406487919),
(52, '最新动态', '动态', 1, 1, 'news', 'ksmbyh1406371219', '?m=site&c=home&a=channel&channelid=52', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 50, 30, 32, '', 0, 0, 8, 0, 1400000000, 30, 0, 0, 0, 1406487919),
(53, '产品展示', '产品', 1, 1, 'products', 'ksmbyh1406371219', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 50, 31, 32, '', 0, 0, 8, 0, 1400000000, 30, 0, 0, 0, 1406487919),
(54, '精彩案例', '案例', 1, 1, 'case', 'ksmbyh1406371219', '?m=site&c=home&a=channel&channelid=54', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 50, 30, 32, '', 0, 0, 8, 0, 1400000000, 30, 0, 0, 0, 1406487919),
(55, '联系我们', '联系', 1, 1, 'contact', 'ksmbyh1406371219', '?m=site&c=home&a=channel&channelid=55', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 50, 30, 32, '', 0, 0, 8, 0, 1400000000, 30, 0, 0, 0, 1406487919),
(56, '幻灯片', '幻灯片', 0, 1, 'focus', 'ksmbyh1406371219', '?m=site&c=home&a=channel&channelid=56', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 50, 30, 32, '', 0, 0, 8, 0, 1400000000, 30, 0, 0, 0, 1406487919),
(57, '首页', '首页', 0, 1, 'homepage', 'yorbbr1406463012', '?m=site&c=home&a=channel&channelid=57', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 46, '', 0, 0, 9, 0, 1400000000, 30, 0, 0, 0, 1406621580),
(58, '关于我们', '简介', 1, 1, 'aboutus', 'yorbbr1406463012', '?m=site&c=home&a=channel&channelid=58', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 57, 44, 46, '', 0, 0, 9, 0, 1400000000, 30, 0, 0, 0, 1406621580),
(59, '最新动态', '动态', 1, 1, 'news', 'yorbbr1406463012', '?m=site&c=home&a=channel&channelid=59', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 57, 44, 46, '', 0, 0, 9, 0, 1400000000, 30, 0, 0, 0, 1406621580),
(60, '产品展示', '产品', 1, 1, 'products', 'yorbbr1406463012', '?m=site&c=home&a=channel&channelid=60', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 57, 45, 46, '', 0, 0, 9, 0, 1400000000, 30, 0, 0, 0, 1406621580),
(61, '精彩案例', '案例', 1, 1, 'case', 'yorbbr1406463012', '?m=site&c=home&a=channel&channelid=61', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 57, 44, 46, '', 0, 0, 9, 0, 1400000000, 30, 0, 0, 0, 1406621580),
(62, '联系我们', '联系', 1, 1, 'contact', 'yorbbr1406463012', '?m=site&c=home&a=channel&channelid=62', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 57, 44, 46, '', 0, 0, 9, 0, 1400000000, 30, 0, 0, 0, 1406621580),
(63, '幻灯片', '幻灯片', 0, 1, 'focus', 'yorbbr1406463012', '?m=site&c=home&a=channel&channelid=63', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 57, 44, 46, '', 0, 0, 9, 0, 1400000000, 30, 0, 0, 0, 1406621580),
(64, '首页', '首页', 0, 1, 'homepage', 'glgzhr1406775560', '', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 10, 0, 1400000000, 30, 0, 0, 0, 1406775581),
(65, '关于我们', '简介', 1, 1, 'aboutus', 'glgzhr1406775560', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 64, 1, 1, '', 0, 0, 10, 0, 1400000000, 30, 0, 0, 0, 1406775581),
(66, '最新动态', '动态', 1, 1, 'news', 'glgzhr1406775560', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 64, 1, 1, '', 0, 0, 10, 0, 1400000000, 30, 0, 0, 0, 1406775581),
(67, '产品展示', '产品', 1, 1, 'products', 'glgzhr1406775560', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 64, 1, 1, '', 0, 0, 10, 0, 1400000000, 30, 0, 0, 0, 1406775581),
(68, '精彩案例', '案例', 1, 1, 'case', 'glgzhr1406775560', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 64, 1, 1, '', 0, 0, 10, 0, 1400000000, 30, 0, 0, 0, 1406775581),
(69, '联系我们', '联系', 1, 1, 'contact', 'glgzhr1406775560', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 64, 1, 1, '', 0, 0, 10, 0, 1400000000, 30, 0, 0, 0, 1406775581),
(70, '幻灯片', '幻灯片', 0, 1, 'focus', 'glgzhr1406775560', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 64, 1, 1, '', 0, 0, 10, 0, 1400000000, 30, 0, 0, 0, 1406775581),
(71, '首页', '首页', 0, 1, 'homepage', 'eaclnz1406783725', '?m=site&c=home&a=channel&channelid=71', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 60, '', 0, 0, 11, 0, 1400000000, 30, 0, 0, 0, 1406783742),
(72, '关于我们', '简介', 1, 1, 'aboutus', 'eaclnz1406783725', '?m=site&c=home&a=channel&channelid=72', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 71, 58, 60, '', 0, 0, 11, 0, 1400000000, 30, 0, 0, 0, 1406783742),
(73, '最新动态', '动态', 1, 1, 'news', 'eaclnz1406783725', '?m=site&c=home&a=channel&channelid=73', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 71, 58, 60, '', 0, 0, 11, 0, 1400000000, 30, 0, 0, 0, 1406783742),
(74, '产品展示', '产品', 1, 1, 'products', 'eaclnz1406783725', '?m=site&c=home&a=channel&channelid=74', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 71, 59, 60, '', 0, 0, 11, 0, 1400000000, 30, 0, 0, 0, 1406783742),
(75, '精彩案例', '案例', 1, 1, 'case', 'eaclnz1406783725', '?m=site&c=home&a=channel&channelid=75', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 71, 58, 60, '', 0, 0, 11, 0, 1400000000, 30, 0, 0, 0, 1406783742),
(76, '联系我们', '联系', 1, 1, 'contact', 'eaclnz1406783725', '?m=site&c=home&a=channel&channelid=76', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 71, 58, 60, '', 0, 0, 11, 0, 1400000000, 30, 0, 0, 0, 1406783742),
(77, '幻灯片', '幻灯片', 0, 1, 'focus', 'eaclnz1406783725', '?m=site&c=home&a=channel&channelid=77', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 71, 58, 60, '', 0, 0, 11, 0, 1400000000, 30, 0, 0, 0, 1406783742),
(78, '首页', '首页', 0, 1, 'homepage', 'vzohcb1406947236', '?m=site&c=home&a=channel&channelid=78', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 102, '', 0, 0, 12, 0, 1400000000, 30, 0, 0, 0, 1406949350),
(79, '关于我们', '简介', 1, 1, 'aboutus', 'vzohcb1406947236', '?m=site&c=home&a=channel&channelid=79', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 78, 100, 102, '', 0, 0, 12, 0, 1400000000, 30, 0, 0, 0, 1406949350),
(80, '最新动态', '动态', 1, 1, 'news', 'vzohcb1406947236', '?m=site&c=home&a=channel&channelid=80', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 78, 100, 102, '', 0, 0, 12, 0, 1400000000, 30, 0, 0, 0, 1406949350),
(81, '产品展示', '产品', 1, 1, 'products', 'vzohcb1406947236', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 78, 101, 102, '', 0, 0, 12, 0, 1400000000, 30, 0, 0, 0, 1406949350),
(82, '精彩案例', '案例', 1, 1, 'case', 'vzohcb1406947236', '?m=site&c=home&a=channel&channelid=82', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 78, 100, 102, '', 0, 0, 12, 0, 1400000000, 30, 0, 0, 0, 1406949350),
(83, '联系我们', '联系', 1, 1, 'contact', 'vzohcb1406947236', '?m=site&c=home&a=channel&channelid=83', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 78, 100, 102, '', 0, 0, 12, 0, 1400000000, 30, 0, 0, 0, 1406949350),
(84, '幻灯片', '幻灯片', 0, 1, 'focus', 'vzohcb1406947236', '?m=site&c=home&a=channel&channelid=84', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 78, 100, 102, '', 0, 0, 12, 0, 1400000000, 30, 0, 0, 0, 1406949350),
(85, '首页', '首页', 0, 1, 'homepage', 'b3c1b32187fe389', '?m=site&c=home&a=channel&channelid=85', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65, 67, '', 0, 0, 13, 0, 1400000000, 30, 0, 0, 0, 1407034522),
(86, '关于我们', '简介', 1, 1, 'aboutus', 'b3c1b32187fe389', '?m=site&c=home&a=channel&channelid=86', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 85, 65, 67, '', 0, 0, 13, 0, 1400000000, 30, 0, 0, 0, 1407034522),
(87, '最新动态', '动态', 1, 1, 'news', 'b3c1b32187fe389', '?m=site&c=home&a=channel&channelid=87', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 85, 65, 67, '', 0, 0, 13, 0, 1400000000, 30, 0, 0, 0, 1407034522),
(88, '产品展示', '产品', 1, 1, 'products', 'b3c1b32187fe389', '?m=site&c=home&a=channel&channelid=88', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 85, 66, 67, '', 0, 0, 13, 0, 1400000000, 30, 0, 0, 0, 1407034522),
(89, '精彩案例', '案例', 1, 1, 'case', 'b3c1b32187fe389', '?m=site&c=home&a=channel&channelid=89', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 85, 65, 67, '', 0, 0, 13, 0, 1400000000, 30, 0, 0, 0, 1407034522),
(90, '联系我们', '联系', 1, 1, 'contact', 'b3c1b32187fe389', '?m=site&c=home&a=channel&channelid=90', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 85, 65, 67, '', 0, 0, 13, 0, 1400000000, 30, 0, 0, 0, 1407034522),
(91, '幻灯片', '幻灯片', 0, 1, 'focus', 'b3c1b32187fe389', '?m=site&c=home&a=channel&channelid=91', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 85, 65, 67, '', 0, 0, 13, 0, 1400000000, 30, 0, 0, 0, 1407034522),
(92, '首页', '首页', 0, 1, 'homepage', 'ekfdng1401977502', '?m=site&c=home&a=channel&channelid=92', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 74, '', 0, 0, 14, 0, 1400000000, 30, 0, 0, 0, 1407034777),
(93, '关于我们', '简介', 1, 1, 'aboutus', 'ekfdng1401977502', '?m=site&c=home&a=channel&channelid=93', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 92, 72, 74, '', 0, 0, 14, 0, 1400000000, 30, 0, 0, 0, 1407034777),
(94, '最新动态', '动态', 1, 1, 'news', 'ekfdng1401977502', '?m=site&c=home&a=channel&channelid=94', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 92, 72, 74, '', 0, 0, 14, 0, 1400000000, 30, 0, 0, 0, 1407034777),
(95, '产品展示', '产品', 1, 1, 'products', 'ekfdng1401977502', '?m=site&c=home&a=channel&channelid=95', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 92, 73, 74, '', 0, 0, 14, 0, 1400000000, 30, 0, 0, 0, 1407034777),
(96, '精彩案例', '案例', 1, 1, 'case', 'ekfdng1401977502', '?m=site&c=home&a=channel&channelid=96', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 92, 72, 74, '', 0, 0, 14, 0, 1400000000, 30, 0, 0, 0, 1407034777),
(97, '联系我们', '联系', 1, 1, 'contact', 'ekfdng1401977502', '?m=site&c=home&a=channel&channelid=97', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 92, 72, 74, '', 0, 0, 14, 0, 1400000000, 30, 0, 0, 0, 1407034777),
(98, '幻灯片', '幻灯片', 0, 1, 'focus', 'ekfdng1401977502', '?m=site&c=home&a=channel&channelid=98', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 92, 72, 74, '', 0, 0, 14, 0, 1400000000, 30, 0, 0, 0, 1407034777),
(99, '首页', '首页', 0, 1, 'homepage', 'xbgzcp1407232534', '', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 15, 0, 1400000000, 30, 0, 0, 0, 1407233012),
(100, '关于我们', '简介', 1, 1, 'aboutus', 'xbgzcp1407232534', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 99, 1, 1, '', 0, 0, 15, 0, 1400000000, 30, 0, 0, 0, 1407233012),
(101, '最新动态', '动态', 1, 1, 'news', 'xbgzcp1407232534', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 99, 1, 1, '', 0, 0, 15, 0, 1400000000, 30, 0, 0, 0, 1407233012),
(102, '产品展示', '产品', 1, 1, 'products', 'xbgzcp1407232534', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 99, 1, 1, '', 0, 0, 15, 0, 1400000000, 30, 0, 0, 0, 1407233012),
(103, '精彩案例', '案例', 1, 1, 'case', 'xbgzcp1407232534', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 99, 1, 1, '', 0, 0, 15, 0, 1400000000, 30, 0, 0, 0, 1407233012),
(104, '联系我们', '联系', 1, 1, 'contact', 'xbgzcp1407232534', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 99, 1, 1, '', 0, 0, 15, 0, 1400000000, 30, 0, 0, 0, 1407233012),
(105, '幻灯片', '幻灯片', 0, 1, 'focus', 'xbgzcp1407232534', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 99, 1, 1, '', 0, 0, 15, 0, 1400000000, 30, 0, 0, 0, 1407233012);

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_channel_contentattribute`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0',
  KEY `channelid` (`channelid`),
  KEY `taxis` (`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_keywords`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_keywords` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_picture`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_site`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_site` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteindex` (`siteindex`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `tp_moopha_site`
--

INSERT INTO `tp_moopha_site` (`id`, `name`, `intro`, `picurl`, `token`, `template`, `logourl`, `siteindex`, `taxis`, `main`, `abspath`, `url`, `statisticcode`, `time`) VALUES
(1, '', '', '', 'psuyri1404444703', '', 'http://www.466777.com/cms/upload/images/2014/07/04/1404461578Cqen.png', '', 0, 0, 0, NULL, '', 0),
(2, '', '', '', 'hpwshv1404715458', 'zongse', '2', '', 0, 0, 0, NULL, 'Mg==', 0),
(3, '', '', '', 'vtdscs1404740044', '', 'http://www.iwxcms.com/cms/upload/images/2014/06/15/1402831582GDGz.png', '', 0, 0, 0, NULL, 'MzTojaPlqIE=', 0),
(4, '', '', '', 'ooeiuv1402737849', '', 'http://www.466777.com/tpl/Home/new1/common/images/speed_01.png', '', 0, 0, 0, NULL, 'MTEx', 0),
(5, '', '', '', 'hgfgmt1404896579', 'danhui', 'saa', '', 0, 0, 0, NULL, 'YXM=', 0),
(6, '', '', '', 'thvusk1405647851', 'v_24', '', '', 0, 0, 0, NULL, '', 0),
(7, '', '', '', 'shibnn1405586353', '', '', '', 0, 0, 0, NULL, '', 0),
(8, '', '', '', 'ksmbyh1406371219', 'v20', 'http://www.466777.com/cms/upload/images/2014/07/28/1406487915RXhA.png', '', 0, 0, 0, NULL, '', 0),
(9, '', '', '', 'yorbbr1406463012', 'tianlan', 'http://weixin.jihuodi.com/cms/upload/images/2014/07/29/1406621572WUXx.jpg', '', 0, 0, 0, NULL, 'MjEyMTIxMg==', 0),
(10, '', '', '', 'glgzhr1406775560', '', 'Zsfc', '', 0, 0, 0, NULL, '6aG25pu/', 0),
(11, '', '', '', 'eaclnz1406783725', 'zongse', '霜', '', 0, 0, 0, NULL, '5aS6', 0),
(12, '', '', '', 'vzohcb1406947236', 'tianlan', 'http://weixin.jihuodi.com/cms/upload/images/2014/08/02/1406949348RJhX.png', '', 0, 0, 0, NULL, '', 0),
(13, '', '', '', 'b3c1b32187fe389', 'zongse', 'http://weixin.jihuodi.com/cms/upload/images/2014/08/03/1407034519pAcZ.png', '', 0, 0, 0, NULL, '', 0),
(14, '微网站测试', '111', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', 'ekfdng1401977502', 'zongse', 'http://weixin.jihuodi.com/cms/upload/images/2014/08/03/1407034775Urfp.png', '', 0, 0, 0, NULL, '', 0),
(15, '', '', '', 'xbgzcp1407232534', '', '', '', 0, 0, 0, NULL, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_template`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isdefault` (`isdefault`),
  KEY `site` (`site`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `tp_moopha_template`
--

INSERT INTO `tp_moopha_template` (`id`, `name`, `path`, `generate_path`, `type`, `isdefault`, `createhtml`, `site`, `time`) VALUES
(2, '首页', '@/smarty/templates/2/hpwshv1404715458/index.html', '', 1, 0, 0, 2, 1404715517),
(3, '文字列表', '@/smarty/templates/2/hpwshv1404715458/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 2, 1404715517),
(4, '图片列表', '@/smarty/templates/2/hpwshv1404715458/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 2, 1404715517),
(5, '内容', '@/smarty/templates/2/hpwshv1404715458/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 2, 1404715517),
(6, '样式css', '@/smarty/templates/2/hpwshv1404715458/style.css', '', 4, 0, 0, 2, 1404715517),
(7, '顶部', '@/smarty/templates/2/hpwshv1404715458/header.html', '', 4, 0, 0, 2, 1404715517),
(8, '底部', '@/smarty/templates/2/hpwshv1404715458/footer.html', '', 4, 0, 0, 2, 1404715517),
(82, '样式css', '@/smarty/templates/0//style.css', '', 4, 0, 0, 0, 1407036101),
(83, '顶部', '@/smarty/templates/0//header.html', '', 4, 0, 0, 0, 1407036101),
(80, '图片列表', '@/smarty/templates/0//channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 0, 1407036101),
(81, '内容', '@/smarty/templates/0//content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 0, 1407036101),
(15, '首页', '@/smarty/templates/6/thvusk1405647851/index.html', '', 1, 0, 0, 6, 1405647908),
(16, '文字列表', '@/smarty/templates/6/thvusk1405647851/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 6, 1405647908),
(17, '图片列表', '@/smarty/templates/6/thvusk1405647851/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 6, 1405647908),
(18, '内容', '@/smarty/templates/6/thvusk1405647851/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 6, 1405647908),
(19, '样式css', '@/smarty/templates/6/thvusk1405647851/style.css', '', 4, 0, 0, 6, 1405647908),
(20, '顶部', '@/smarty/templates/6/thvusk1405647851/header.html', '', 4, 0, 0, 6, 1405647908),
(21, '底部', '@/smarty/templates/6/thvusk1405647851/footer.html', '', 4, 0, 0, 6, 1405647908),
(22, '首页', '@/smarty/templates/5/hgfgmt1404896579/index.html', '', 1, 0, 0, 5, 1405739503),
(23, '文字列表', '@/smarty/templates/5/hgfgmt1404896579/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 5, 1405739503),
(24, '图片列表', '@/smarty/templates/5/hgfgmt1404896579/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 5, 1405739503),
(25, '内容', '@/smarty/templates/5/hgfgmt1404896579/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 5, 1405739503),
(26, '样式css', '@/smarty/templates/5/hgfgmt1404896579/style.css', '', 4, 0, 0, 5, 1405739503),
(27, '顶部', '@/smarty/templates/5/hgfgmt1404896579/header.html', '', 4, 0, 0, 5, 1405739503),
(28, '底部', '@/smarty/templates/5/hgfgmt1404896579/footer.html', '', 4, 0, 0, 5, 1405739503),
(29, '首页', '@/smarty/templates/8/ksmbyh1406371219/index.html', '', 1, 0, 0, 8, 1406487972),
(30, '文字列表', '@/smarty/templates/8/ksmbyh1406371219/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 8, 1406487972),
(31, '图片列表', '@/smarty/templates/8/ksmbyh1406371219/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 8, 1406487972),
(32, '内容', '@/smarty/templates/8/ksmbyh1406371219/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 8, 1406487972),
(33, '样式css', '@/smarty/templates/8/ksmbyh1406371219/style.css', '', 4, 0, 0, 8, 1406487972),
(34, '顶部', '@/smarty/templates/8/ksmbyh1406371219/header.html', '', 4, 0, 0, 8, 1406487972),
(35, '底部', '@/smarty/templates/8/ksmbyh1406371219/footer.html', '', 4, 0, 0, 8, 1406487972),
(48, '顶部', '@/smarty/templates/9/yorbbr1406463012/header.html', '', 4, 0, 0, 9, 1406622561),
(47, '样式css', '@/smarty/templates/9/yorbbr1406463012/style.css', '', 4, 0, 0, 9, 1406622561),
(46, '内容', '@/smarty/templates/9/yorbbr1406463012/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 9, 1406622561),
(45, '图片列表', '@/smarty/templates/9/yorbbr1406463012/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 9, 1406622561),
(44, '文字列表', '@/smarty/templates/9/yorbbr1406463012/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 9, 1406622561),
(43, '首页', '@/smarty/templates/9/yorbbr1406463012/index.html', '', 1, 0, 0, 9, 1406622561),
(49, '底部', '@/smarty/templates/9/yorbbr1406463012/footer.html', '', 4, 0, 0, 9, 1406622561),
(79, '文字列表', '@/smarty/templates/0//channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 0, 1407036101),
(78, '首页', '@/smarty/templates/0//index.html', '', 1, 1, 0, 0, 1407036101),
(57, '首页', '@/smarty/templates/1/eaclnz1406783725/index.html', '', 1, 0, 0, 11, 1406783859),
(58, '文字列表', '@/smarty/templates/1/eaclnz1406783725/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 11, 1406783859),
(59, '图片列表', '@/smarty/templates/1/eaclnz1406783725/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 11, 1406783859),
(60, '内容', '@/smarty/templates/1/eaclnz1406783725/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 11, 1406783859),
(61, '样式css', '@/smarty/templates/1/eaclnz1406783725/style.css', '', 4, 0, 0, 11, 1406783859),
(62, '顶部', '@/smarty/templates/1/eaclnz1406783725/header.html', '', 4, 0, 0, 11, 1406783859),
(63, '底部', '@/smarty/templates/1/eaclnz1406783725/footer.html', '', 4, 0, 0, 11, 1406783859),
(64, '首页', '@/smarty/templates/3/b3c1b32187fe389/index.html', '', 1, 1, 0, 13, 1407034532),
(65, '文字列表', '@/smarty/templates/3/b3c1b32187fe389/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 13, 1407034532),
(66, '图片列表', '@/smarty/templates/3/b3c1b32187fe389/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 13, 1407034532),
(67, '内容', '@/smarty/templates/3/b3c1b32187fe389/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 13, 1407034532),
(68, '样式css', '@/smarty/templates/3/b3c1b32187fe389/style.css', '', 4, 0, 0, 13, 1407034532),
(69, '顶部', '@/smarty/templates/3/b3c1b32187fe389/header.html', '', 4, 0, 0, 13, 1407034532),
(70, '底部', '@/smarty/templates/3/b3c1b32187fe389/footer.html', '', 4, 0, 0, 13, 1407034532),
(71, '首页', '@/smarty/templates/4/ekfdng1401977502/index.html', '', 1, 1, 0, 14, 1407034782),
(72, '文字列表', '@/smarty/templates/4/ekfdng1401977502/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 14, 1407034782),
(73, '图片列表', '@/smarty/templates/4/ekfdng1401977502/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 14, 1407034782),
(74, '内容', '@/smarty/templates/4/ekfdng1401977502/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 14, 1407034782),
(75, '样式css', '@/smarty/templates/4/ekfdng1401977502/style.css', '', 4, 0, 0, 14, 1407034782),
(76, '顶部', '@/smarty/templates/4/ekfdng1401977502/header.html', '', 4, 0, 0, 14, 1407034782),
(77, '底部', '@/smarty/templates/4/ekfdng1401977502/footer.html', '', 4, 0, 0, 14, 1407034782),
(84, '底部', '@/smarty/templates/0//footer.html', '', 4, 0, 0, 0, 1407036101),
(103, '样式css', '@/smarty/templates/2/vzohcb1406947236/style.css', '', 4, 0, 0, 12, 1407241952),
(104, '顶部', '@/smarty/templates/2/vzohcb1406947236/header.html', '', 4, 0, 0, 12, 1407241952),
(102, '内容', '@/smarty/templates/2/vzohcb1406947236/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 12, 1407241952),
(101, '图片列表', '@/smarty/templates/2/vzohcb1406947236/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 12, 1407241952),
(100, '文字列表', '@/smarty/templates/2/vzohcb1406947236/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 12, 1407241952),
(99, '首页', '@/smarty/templates/2/vzohcb1406947236/index.html', '', 1, 1, 0, 12, 1407241952),
(105, '底部', '@/smarty/templates/2/vzohcb1406947236/footer.html', '', 4, 0, 0, 12, 1407241952);

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_user`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_msg`
--

CREATE TABLE IF NOT EXISTS `tp_msg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_nearby_user`
--

CREATE TABLE IF NOT EXISTS `tp_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_nearby_user`
--

INSERT INTO `tp_nearby_user` (`id`, `token`, `uid`, `keyword`, `time`) VALUES
(1, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', ' 电脑', 1406464156),
(2, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '酒店', 1407231176);

-- --------------------------------------------------------

--
-- 表的结构 `tp_node`
--

CREATE TABLE IF NOT EXISTS `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- 转存表中的数据 `tp_node`
--

INSERT INTO `tp_node` (`id`, `name`, `title`, `status`, `remark`, `pid`, `level`, `data`, `sort`, `display`) VALUES
(1, 'cms', '根节点', 1, '', 0, 1, NULL, 0, 0),
(2, 'Site', '站点管理', 1, '', 1, 0, NULL, 0, 1),
(3, 'User', '用户管理', 1, '', 1, 0, NULL, 0, 1),
(4, 'extent', '扩展管理', 1, '', 1, 0, NULL, 10, 1),
(5, 'article', '内容管理', 1, '', 1, 0, NULL, 0, 1),
(6, 'Site', '站点设置', 1, '', 2, 2, NULL, 0, 2),
(7, 'index', '基本信息设置', 1, '', 6, 3, NULL, 0, 2),
(8, 'safe', '安全设置', 1, '', 6, 3, NULL, 0, 2),
(9, 'email', '邮箱设置', 1, '', 6, 3, NULL, 0, 2),
(10, 'upfile', '附件设置', 1, '', 6, 3, NULL, 0, 2),
(11, 'Node', '节点管理', 1, NULL, 2, 2, NULL, 0, 2),
(12, 'add', '添加节点', 1, '', 11, 3, NULL, 0, 2),
(13, 'index', '节点列表', 1, '', 11, 3, NULL, 0, 2),
(14, 'insert', '写入', 1, '0', 11, 3, NULL, 0, 0),
(15, 'edit', '编辑节点', 1, '0', 11, 3, NULL, 0, 0),
(16, 'update', '更新节点', 1, '0', 11, 3, NULL, 0, 0),
(17, 'del', '删除节点', 1, '0', 11, 3, NULL, 0, 0),
(18, 'User', '用户中心', 1, '0', 3, 2, NULL, 0, 2),
(19, 'add', '添加用户', 1, '0', 18, 3, NULL, 0, 2),
(20, 'index', '用户列表', 1, '0', 18, 3, NULL, 0, 2),
(21, 'edit', '编辑用户', 1, '0', 18, 3, NULL, 0, 0),
(22, 'insert', '写入数据库', 1, '0', 18, 3, NULL, 0, 0),
(23, 'update', '更新用户', 1, '0', 18, 3, NULL, 0, 0),
(24, 'del', '删除用户', 1, '0', 18, 3, NULL, 0, 0),
(25, 'Group', '管理组', 1, '0', 3, 2, NULL, 0, 2),
(26, 'add', '创建用户组', 1, '0', 25, 3, NULL, 0, 2),
(27, 'index', '用户组列表', 1, '0', 25, 3, NULL, 0, 2),
(28, 'edit', '编辑用户组', 1, '0', 25, 3, NULL, 0, 0),
(29, 'del', '删除用户组', 1, '0', 25, 3, NULL, 0, 0),
(30, 'insert', '写入数据库', 1, '0', 25, 3, NULL, 0, 0),
(31, 'update', '更新用户组', 1, '0', 25, 3, NULL, 0, 0),
(32, 'insert', '保存测试', 1, '0', 6, 3, NULL, 0, 0),
(36, 'menu', '左侧栏', 1, '0', 35, 3, NULL, 0, 0),
(35, 'System', '首页', 1, '0', 2, 2, NULL, 0, 0),
(37, 'main', '右侧栏目', 1, '0', 35, 3, NULL, 0, 0),
(38, 'Article', '微信图文', 1, '0', 5, 2, NULL, 0, 2),
(39, 'index', '图文列表', 1, '0', 38, 3, NULL, 0, 2),
(40, 'add', '图文添加', 1, '0', 38, 3, NULL, 0, 2),
(41, 'edit', '微信图文编辑', 1, '0', 38, 3, NULL, 0, 0),
(42, 'del', '微信图文删除', 1, '0', 38, 3, NULL, 0, 0),
(80, 'token', '公众号管理', 1, '0', 1, 2, NULL, 0, 1),
(45, 'Function', '功能模块', 1, '0', 1, 0, NULL, 0, 1),
(46, 'Function', '功能模块', 1, '0', 45, 2, NULL, 0, 2),
(47, 'add', '添加模块', 1, '0', 46, 3, NULL, 0, 2),
(48, 'User_group', '会员组', 1, '0', 3, 2, NULL, 0, 2),
(49, 'add', '添加会员组', 1, '0', 48, 3, NULL, 0, 2),
(50, 'Users', '前台用户', 1, '0', 3, 2, NULL, 0, 2),
(51, 'index', '用户列表', 1, '0', 50, 3, NULL, 0, 0),
(52, 'add', '添加用户', 1, '0', 50, 3, NULL, 0, 2),
(53, 'edit', '编辑用户', 1, '0', 50, 3, NULL, 0, 0),
(54, 'del', '删除用户', 1, '0', 50, 3, NULL, 0, 0),
(55, 'insert', '写入数据库', 1, '0', 50, 3, NULL, 0, 0),
(56, 'upsave', '更新用户', 1, '0', 50, 3, NULL, 0, 0),
(57, 'Text', '微信文本', 1, '0', 5, 2, NULL, 0, 2),
(58, 'index', '文本列表', 1, '0', 57, 3, NULL, 0, 2),
(59, 'del', '删除', 1, '0', 57, 3, NULL, 0, 0),
(60, 'Custom', '自定义页面', 1, '0', 5, 2, NULL, 0, 2),
(61, 'index', '列表', 1, '0', 60, 3, NULL, 0, 2),
(62, 'edit', '编辑', 1, '0', 60, 3, NULL, 0, 2),
(63, 'del', '删除', 1, '0', 60, 3, NULL, 0, 0),
(64, 'Records', '充值记录', 1, '0', 4, 2, NULL, 0, 2),
(65, 'index', '充值列表', 1, '0', 64, 3, NULL, 0, 2),
(66, 'Case', '用户案例', 1, '0', 4, 2, NULL, 0, 2),
(67, 'index', '案例列表', 1, '0', 66, 3, NULL, 0, 2),
(68, 'add', '添加案例', 1, '0', 66, 3, NULL, 0, 2),
(69, 'edit', '编辑案例', 1, '0', 66, 3, NULL, 0, 0),
(70, 'del', '删除案例', 1, '0', 66, 3, NULL, 0, 0),
(71, 'insert', '写入数据库', 1, '0', 66, 3, NULL, 0, 0),
(72, 'upsave', '更新数据库', 1, '0', 66, 3, NULL, 0, 0),
(73, 'Links', '友情链接', 1, '0', 4, 2, NULL, 0, 2),
(74, 'index', '友情链接', 1, '0', 73, 3, NULL, 0, 2),
(75, 'add', '添加链接', 1, '0', 73, 3, NULL, 0, 2),
(76, 'edit', '编辑链接', 1, '0', 73, 3, NULL, 0, 0),
(77, 'insert', '插入数据库', 1, '0', 73, 3, NULL, 0, 0),
(78, 'upsave', '更新数据库', 1, '0', 73, 3, NULL, 0, 0),
(79, 'del', '删除友情链接', 1, '0', 73, 3, NULL, 0, 0),
(81, 'Token', '公众号管理', 1, '0', 80, 2, NULL, 0, 2),
(83, 'alipay', '在线支付接口', 1, '0', 6, 3, NULL, 0, 2),
(84, 'qianmoban', '模板设置', 1, '0', 6, 3, NULL, 0, 2),
(85, 'sms', '短信管理', 1, '0', 6, 3, NULL, 0, 2),
(89, 'Agent', '代理商管理', 1, '0', 1, 2, NULL, 0, 1),
(90, 'Agent', '代理商管理', 1, '0', 89, 2, NULL, 0, 2),
(92, 'add', '添加', 1, '0', 90, 3, NULL, 0, 2),
(93, 'AgentPrice', '优惠套餐包', 1, '0', 89, 2, NULL, 0, 2),
(94, 'add', '添加', 1, '0', 93, 3, NULL, 0, 2),
(95, 'AgentBuyRecords', '消费记录', 1, '0', 89, 2, NULL, 0, 2),
(96, 'rippleos_key', '微WIFI', 1, '0', 6, 3, NULL, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tp_norms`
--

CREATE TABLE IF NOT EXISTS `tp_norms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '产品参数分类',
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `value` varchar(150) NOT NULL COMMENT '规格值',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类规格相信值' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `tp_norms`
--

INSERT INTO `tp_norms` (`id`, `type`, `catid`, `value`) VALUES
(1, 0, 11, 'L'),
(2, 0, 11, 'S'),
(3, 1, 11, '红色'),
(4, 1, 11, '黑色'),
(5, 0, 12, 'S'),
(6, 0, 12, 'L'),
(7, 0, 12, 'XL'),
(8, 1, 12, '红色'),
(9, 1, 12, '蓝色 '),
(10, 1, 12, '灰色');

-- --------------------------------------------------------

--
-- 表的结构 `tp_ordering_class`
--

CREATE TABLE IF NOT EXISTS `tp_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_ordering_set`
--

CREATE TABLE IF NOT EXISTS `tp_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_other`
--

CREATE TABLE IF NOT EXISTS `tp_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_other`
--

INSERT INTO `tp_other` (`id`, `token`, `keyword`, `info`) VALUES
(1, 'xbgzcp1407232534', '', '不懂不懂么么哒');

-- --------------------------------------------------------

--
-- 表的结构 `tp_panorama`
--

CREATE TABLE IF NOT EXISTS `tp_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_panorama`
--

INSERT INTO `tp_panorama` (`id`, `token`, `name`, `intro`, `music`, `frontpic`, `rightpic`, `backpic`, `leftpic`, `toppic`, `bottompic`, `keyword`, `time`, `taxis`) VALUES
(1, 'xjclzx1405958021', '一教', '', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '一教', 0, 0),
(2, 'vzohcb1406947236', '', '', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '', 0, 0),
(3, 'xbgzcp1407232534', '1', '1', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '11', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_photo`
--

CREATE TABLE IF NOT EXISTS `tp_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tp_photo`
--

INSERT INTO `tp_photo` (`id`, `token`, `title`, `picurl`, `isshoinfo`, `num`, `status`, `create_time`, `info`) VALUES
(1, 'hzddpv1405521492', '相册1', 'http://www.466777.com/uploads/h/hzddpv1405521492/4/e/6/3/thumb_53c69ddf27fa6.jpg', 0, 3, 1, 0, '相册内容123'),
(2, 'bqtxnv1406167321', '首页幻灯片', 'http://www.466777.com/uploads/b/bqtxnv1406167321/a/8/6/f/thumb_53d0adb9a5dcf.jpg', 0, 5, 1, 0, '相册的介绍'),
(3, 'bqtxnv1406167321', '幻灯片', 'http://www.466777.com/uploads/b/bqtxnv1406167321/7/4/2/4/thumb_53d0b52501d4c.jpg', 0, 4, 1, 0, 'XIANCE JIEHSOA '),
(4, 'shibnn1405586353', '乐橙', 'http://www.466777.com/tpl/static/attachment/background/view/../wedding/1.jpg', 0, 1, 1, 0, '1'),
(5, 'vzohcb1406947236', '相册', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/1/a/9/b/thumb_53ddf1ada037a.jpg', 0, 4, 1, 0, '相册'),
(6, 'xbgzcp1407232534', '想册', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/c/6/f/9/thumb_53e0bb6ba7d8c.jpg', 0, 3, 1, 0, '11'),
(7, 'owikav1406947345', '旅游公司', 'http://weixin.jihuodi.com/tpl/static/attachment/background/view/../canyin/3.jpg', 0, 0, 1, 0, '水电费水电费水电费');

-- --------------------------------------------------------

--
-- 表的结构 `tp_photo_list`
--

CREATE TABLE IF NOT EXISTS `tp_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `tp_photo_list`
--

INSERT INTO `tp_photo_list` (`id`, `token`, `pid`, `title`, `sort`, `picurl`, `create_time`, `status`, `info`) VALUES
(1, 'hzddpv1405521492', 1, '11', 0, 'http://www.466777.com/uploads/h/hzddpv1405521492/2/f/7/5/thumb_53c69e11f2283.jpg', 0, 1, '111'),
(2, 'hzddpv1405521492', 1, '12', 0, 'http://www.466777.com/uploads/h/hzddpv1405521492/9/4/f/c/thumb_53c69e2a2f9b8.jpg', 0, 1, '122'),
(3, 'hzddpv1405521492', 1, '13', 0, 'http://www.466777.com/uploads/h/hzddpv1405521492/9/4/1/d/thumb_53c69e43df156.jpg', 0, 1, '113'),
(4, 'bqtxnv1406167321', 2, '1', 0, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', 0, 1, ''),
(5, 'bqtxnv1406167321', 2, '2', 0, 'http://www.466777.com/uploads/b/bqtxnv1406167321/5/f/c/b/thumb_53d0ae6cd3a3b.jpg', 0, 1, ''),
(6, 'bqtxnv1406167321', 2, '3', 0, 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/a/3/7/thumb_53d0ae872429d.jpg', 0, 1, ''),
(7, 'bqtxnv1406167321', 2, '4', 0, 'http://www.466777.com/uploads/b/bqtxnv1406167321/0/d/a/6/thumb_53d0aea8a20c6.jpg', 0, 1, ''),
(8, 'bqtxnv1406167321', 3, '1', 0, 'http://www.466777.com/uploads/b/bqtxnv1406167321/4/1/f/6/thumb_53d0b5443eddc.jpg', 0, 1, ''),
(9, 'bqtxnv1406167321', 3, '2', 0, 'http://www.466777.com/uploads/b/bqtxnv1406167321/6/5/f/6/thumb_53d0b553bcc05.jpg', 0, 1, ''),
(10, 'bqtxnv1406167321', 3, '3', 0, 'http://www.466777.com/uploads/b/bqtxnv1406167321/f/c/2/d/thumb_53d0b57e11170.jpg', 0, 1, ''),
(11, 'shibnn1405586353', 4, '12345', 0, 'http://www.466777.com/uploads/s/shibnn1405586353/a/f/0/d/53d3576d60969.jpg', 1406359407, 1, ''),
(12, 'vzohcb1406947236', 5, '阿1', 0, '/tpl/static/swfupload/images/error.gif', 1407054300, 1, ''),
(13, 'vzohcb1406947236', 5, '2', 0, '/tpl/static/swfupload/images/error.gif', 1407054300, 1, ''),
(14, 'vzohcb1406947236', 5, '4', 0, '/tpl/static/swfupload/images/error.gif', 1407054300, 1, ''),
(15, 'vzohcb1406947236', 5, '40', 0, '/tpl/static/swfupload/images/error.gif', 1407054300, 1, ''),
(16, 'xbgzcp1407232534', 6, '11', 0, '/tpl/static/swfupload/images/error.gif', 1407237107, 1, ''),
(17, 'xbgzcp1407232534', 6, '1', 0, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/3/6/6/e/53e0bc064c4b4.jpg', 1407237131, 1, ''),
(18, 'xbgzcp1407232534', 6, '111', 0, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/d/9/a/8/53e0bc03bebc2.jpg', 1407237131, 1, '');

-- --------------------------------------------------------

--
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

-- --------------------------------------------------------

--
-- 表的结构 `tp_pic_wall`
--

CREATE TABLE IF NOT EXISTS `tp_pic_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL COMMENT '点击次数',
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL COMMENT '活动结束图片网址',
  `endinfo` varchar(60) NOT NULL COMMENT '活动结束说明',
  `status` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `ischeck` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_pic_wall`
--

INSERT INTO `tp_pic_wall` (`id`, `joinnum`, `click`, `token`, `keyword`, `starpicurl`, `title`, `sttxt`, `statdate`, `enddate`, `info`, `endtite`, `endpicurl`, `endinfo`, `status`, `createtime`, `ischeck`) VALUES
(2, 0, 0, 'ekfdng1401977502', '照片墙', 'http://www.466777.com/tpl/User/default/common/images/img/activity-zhaopianwall-start.jpg', '照片墙活动开始了', '请在公众账号聊天界面 切换到文字模式点击+选取照片，点击发送', 1401984000, 1402243200, '亲，请点击进入照片墙页面，晒晒更健康哦！', '照片墙活动已经结束了', 'http://www.466777.com/tpl/User/default/common/images/img/activity-zhaopianwall-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 1, 0, 0),
(3, 0, 0, 'ooeiuv1402737849', '照片墙', 'http://www.466777.com/tpl/User/default/common/images/img/activity-zhaopianwall-start.jpg', '照片墙活动开始了', '请在公众账号聊天界面 切换到文字模式点击+选取照片，点击发送', 1402675200, 1402934400, '亲，请点击进入照片墙页面，晒晒更健康哦！', '照片墙活动已经结束了', 'http://www.466777.com/tpl/User/default/common/images/img/activity-zhaopianwall-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 1, 0, 0),
(4, 0, 0, 'hpwshv1404715458', '照片墙', 'http://www.466777.com/tpl/User/default/common/images/img/activity-zhaopianwall-start.jpg', '照片墙活动开始了', '请在公众账号聊天界面 切换到文字模式点击+选取照片，点击发送', 1404662400, 1404921600, '亲，请点击进入照片墙页面，晒晒更健康哦！', '照片墙活动已经结束了', 'http://www.466777.com/tpl/User/default/common/images/img/activity-zhaopianwall-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_pic_walllog`
--

CREATE TABLE IF NOT EXISTS `tp_pic_walllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '活动id',
  `token` varchar(60) NOT NULL COMMENT '公众账号token',
  `picurl` varchar(100) NOT NULL COMMENT '照片链接',
  `wecha_id` varchar(30) NOT NULL COMMENT '微信用户id',
  `username` varchar(30) NOT NULL COMMENT '微信用户名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `state` int(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_pic_walllog`
--

INSERT INTO `tp_pic_walllog` (`id`, `uid`, `token`, `picurl`, `wecha_id`, `username`, `create_time`, `state`) VALUES
(2, 2, 'ekfdng1401977502', 'http://www.466777.com/uploads/picwall/20140606/20140606132034_97008.jpg', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '看', 1402032034, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_product`
--

CREATE TABLE IF NOT EXISTS `tp_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `oprice` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  `vprice` float NOT NULL,
  `mailprice` float DEFAULT '0',
  `num` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `tp_product`
--

INSERT INTO `tp_product` (`id`, `catid`, `storeid`, `name`, `price`, `oprice`, `discount`, `intro`, `token`, `keyword`, `salecount`, `logourl`, `dining`, `groupon`, `endtime`, `fakemembercount`, `time`, `sort`, `vprice`, `mailprice`, `num`) VALUES
(1, 1, 0, '测试一', 100, 150, 10, '1http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', 'ekfdng1401977502', '1', 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', 0, 0, 0, 0, 1405152452, 100, 88, 0, 149),
(2, 3, 1, '9.9包邮', 9.9, 19.9, 20.1, '&lt;span style=&quot;background-color:#ffffff;color:#444444;&quot;&gt;7月5日重新更新小猪6.4版，优化内部代码 全功能版+微路由&lt;/span&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;span style=&quot;background-color:#ffffff;color:#444444;&quot;&gt;在原版的6.4的基础上，重新对代码进行了相关的优化，加入了后台与&lt;/span&gt;&lt;a class=&quot;relatedlink&quot; href=&quot;http://www.jihuodi.com/&quot; target=&quot;_blank&quot;&gt;论坛&lt;/a&gt;&lt;span style=&quot;background-color:#ffffff;color:#444444;&quot;&gt;更新的对接，&lt;/span&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;span style=&quot;background-color:#ffffff;color:#444444;&quot;&gt;友情提示：原6.4版的如果有客户就不要去折腾了啊，呵呵。以后会发更新包的。&lt;/span&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;span style=&quot;background-color:#ffffff;color:#444444;&quot;&gt;这个只对刚购买的用户有效。&lt;/span&gt;&lt;br /&gt;\n&lt;br /&gt;\n&lt;span style=&quot;background-color:#ffffff;color:#444444;&quot;&gt;再次提示：99元的客户才有资格下载的，就也是永久 VIP&lt;/span&gt;', 'vmwylz1404883194', '9.9', 3, 'http://www.466777.com/uploads/v/vmwylz1404883194/7/d/1/5/thumb_53bcd21c5b3a2.jpg', 0, 0, 0, 0, 1404884002, 100, 9.9, 0, 7),
(3, 1, 0, '测试二', 200, 500, 10, '11111', 'ekfdng1401977502', '测2', 1, '', 0, 0, 0, 0, 1405152800, 100, 180, 5, 9),
(4, 4, 0, '商品1', 10, 12, 10, '我我我我vv', 'azleau1404838233', '鞋子', 0, '', 0, 0, 0, 0, 1405439379, 100, 9, 0, 100),
(5, 5, 0, 'test', 11, 11, 10, '', 'kyhwga1405500137', '111111', 0, 'http://www.466777.com/tpl/static/attachment/background/view/3.jpg', 0, 0, 0, 0, 1405500388, 100, 11, 0, 0),
(6, 6, 0, '草鞋', 100, 120, 10, '草鞋1234', 'hzddpv1405521492', '草鞋', 2, 'http://www.466777.com/tpl/static/attachment/icon/lovely/hand.png', 0, 0, 0, 0, 1405526922, 100, 80, 100, 28),
(7, 7, 0, '衣服', 100, 120, 10, '衣服衣服', 'hzddpv1405521492', '1222', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/mcfly.png', 0, 0, 0, 0, 1405527001, 100, 80, 0, 0),
(8, 8, 0, '雨伞 ', 12, 13, 10, '雨伞&amp;nbsp;', 'hzddpv1405521492', '雨伞 ', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/eye.png', 0, 0, 0, 0, 1405527065, 100, 10, 10, 20),
(9, 9, 0, '袜子', 12, 15, 10, '袜子袜子袜子', 'hzddpv1405521492', '袜子', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/chalkboard.png', 0, 0, 0, 0, 1405527133, 100, 7, 0, 0),
(10, 10, 0, '1212', 1212, 212, 10, '212', 'tjmmox1405563308', '', 0, '', 0, 0, 0, 0, 1405570755, 100, 212, 0, 0),
(11, 11, 0, '测试衣服1', 100, 200, 5, '111', 'shibnn1405586353', '测试一下一', 1, '', 0, 0, 0, 0, 1406350678, 0, 80, 0, 9),
(12, 12, 0, '金太福衣服', 100, 100, 10, '金太福', 'ksmbyh1406371219', '金太福', 0, '', 0, 0, 0, 0, 1406372546, 0, 100, 0, 9),
(13, 8388607, 1, '测试一下团购系统', 100, 200, 5, '111111', 'shibnn1405586353', '测试一下', 0, 'http://www.466777.com/tpl/static/attachment/icon/canyin/canyin_red/2.png', 0, 1, 1407340799, 210, 1406448883, 0, 0, 0, 0),
(14, 11, 0, '123123', 123, 123, 10, '', 'shibnn1405586353', '衣服', 0, '', 0, 0, 0, 0, 1406618632, 0, 123, 1, 2),
(15, 13, 0, '11', 1, 1, 10, '1111', 'vzohcb1406947236', '11', 0, 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/3.png', 0, 0, 0, 0, 1407219811, 1, 1, 11, 11),
(16, 8388607, 1, '111', 222, 33, 67.3, '111', 'xbgzcp1407232534', '2234', 1, '', 0, 1, 1408118399, 1111, 1407239499, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_attribute`
--

CREATE TABLE IF NOT EXISTS `tp_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL COMMENT '属性ID',
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品属性表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_product_attribute`
--

INSERT INTO `tp_product_attribute` (`id`, `aid`, `pid`, `name`, `value`) VALUES
(1, 1, 14, '服务', 'SEVER');

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_cart`
--

CREATE TABLE IF NOT EXISTS `tp_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `transactionid` varchar(100) DEFAULT '0',
  `paytype` varchar(30) DEFAULT '0',
  `mailprice` float DEFAULT '0',
  `ordertype` mediumint(2) DEFAULT '0',
  `score` int(10) NOT NULL,
  `paymode` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_product_cart`
--

INSERT INTO `tp_product_cart` (`id`, `productid`, `code`, `token`, `wecha_id`, `info`, `total`, `price`, `truename`, `tel`, `address`, `diningtype`, `tableid`, `time`, `buytime`, `groupon`, `dining`, `year`, `month`, `day`, `hour`, `paid`, `orderid`, `sent`, `logistics`, `logisticsid`, `printed`, `handled`, `handledtime`, `handleduid`, `transactionid`, `paytype`, `mailprice`, `ordertype`, `score`, `paymode`) VALUES
(3, 0, '', 'vmwylz1404883194', 'opqOLt7q_fAdeC85ySnSWQdGDfUM', 'a:1:{i:2;i:0;}', 0, 0, '纪铭瀚', '15153392233', '淄博', 0, 0, 1404884051, '', 0, 0, 0, 0, 0, 0, 0, 'M20140709133411', 0, '', '', 0, 0, 0, 0, '0', '0', 0, 0, 0, 1),
(4, 0, '', 'vmwylz1404883194', 'opqOLt7q_fAdeC85ySnSWQdGDfUM', 'a:1:{i:2;i:3;}', 3, 29.7, '纪铭瀚', '15153392233', '淄博', 0, 0, 1404884095, '', 0, 0, 0, 0, 0, 0, 0, 'M20140709133455', 0, '', '', 0, 0, 0, 0, '0', '0', 0, 0, 0, 1),
(5, 0, '', 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'a:1:{i:1;i:1;}', 1, 88, '衷国强', '13511350189', '哈哈还123给你', 0, 0, 1405152304, '', 0, 0, 0, 0, 0, 0, 0, '020140712160504', 0, '', '', 0, 0, 0, 0, '0', '0', 0, 0, 0, 1),
(6, 0, '', 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'a:1:{i:3;i:1;}', 1, 185, '衷国强', '13511350189', '哈哈还123给你', 0, 0, 1405152865, '', 0, 0, 0, 0, 0, 0, 0, '020140712161425', 0, '', '', 0, 0, 0, 0, '0', '0', 0, 0, 0, 1),
(7, 0, '', 'hzddpv1405521492', 'obxQHt6xC2WZBCp6mqWqD_sB-s64', 'a:1:{i:6;i:1;}', 1, 200, '13444', '13715368034', '11111111', 0, 0, 1405527715, '', 0, 0, 0, 0, 0, 0, 0, '420140717002155', 0, '', '', 0, 0, 0, 0, '0', '0', 0, 0, 0, 1),
(8, 0, '', 'hzddpv1405521492', 'obxQHt6xC2WZBCp6mqWqD_sB-s64', 'a:1:{i:6;i:1;}', 1, 200, '13444', '13715368034', '11111111', 0, 0, 1405528039, '', 0, 0, 0, 0, 0, 0, 0, '420140717002719', 0, '', '', 0, 0, 0, 0, '0', '0', 0, 0, 0, 1),
(13, 0, '', 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'a:1:{i:11;i:1;}', 1, 80, '衷国强', '13511350189', '哈哈大笑123', 0, 0, 1406449418, '', 0, 0, 0, 0, 0, 0, 1, '020140727162338', 1, '', '', 0, 1, 0, 0, '0', '0', 0, 0, 0, 4),
(14, 16, 'o9MMwt1407239629', 'xbgzcp1407232534', 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 'a:1:{i:16;a:2:{s:5:"count";i:1;s:5:"price";i:222;}}', 1, 222, '11', '18227757061', 'hhhh', 0, 0, 1407239629, '', 1, 0, 0, 0, 0, 0, 0, 'fvek1407239629', 0, '', '', 0, 0, 0, 0, '0', '0', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_cart_list`
--

CREATE TABLE IF NOT EXISTS `tp_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_product_cart_list`
--

INSERT INTO `tp_product_cart_list` (`id`, `cartid`, `productid`, `price`, `total`, `wecha_id`, `token`, `time`) VALUES
(3, 3, 2, 0, 0, 'opqOLt7q_fAdeC85ySnSWQdGDfUM', 'vmwylz1404883194', 1404884051),
(4, 4, 2, 29.7, 3, 'opqOLt7q_fAdeC85ySnSWQdGDfUM', 'vmwylz1404883194', 1404884095),
(5, 5, 1, 88, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 1405152304),
(6, 6, 3, 180, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', 1405152865),
(7, 7, 6, 100, 1, 'obxQHt6xC2WZBCp6mqWqD_sB-s64', 'hzddpv1405521492', 1405527715),
(8, 8, 6, 100, 1, 'obxQHt6xC2WZBCp6mqWqD_sB-s64', 'hzddpv1405521492', 1405528039),
(13, 13, 11, 80, 1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'shibnn1405586353', 1406449418);

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_cat`
--

CREATE TABLE IF NOT EXISTS `tp_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_product_cat`
--

INSERT INTO `tp_product_cat` (`id`, `token`, `name`, `des`, `parentid`, `logourl`, `dining`, `time`, `norms`, `color`) VALUES
(1, 'ekfdng1401977502', '衣服', '', 0, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', 0, 1401977913, '', ''),
(2, 'ekfdng1401977502', '汽车', '', 0, 'http://www.466777.com/tpl/static/attachment/focus/default/4.jpg', 0, 1401978670, '', ''),
(3, 'vmwylz1404883194', '9.9', '9.9', 0, 'http://www.466777.com/uploads/v/vmwylz1404883194/7/d/1/5/thumb_53bcd21c5b3a2.jpg', 0, 1404883492, '', ''),
(4, 'azleau1404838233', '商品分类1', '1111', 0, '', 0, 1405438509, '鞋码', '酒水'),
(5, 'kyhwga1405500137', 'test', '', 0, 'http://www.466777.com/tpl/static/attachment/focus/default/2.jpg', 0, 1405500313, '', ''),
(6, 'hzddpv1405521492', '鞋子', '鞋子', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/cloud-check.png', 0, 1405526708, '品牌', '12'),
(7, 'hzddpv1405521492', '衣服', '衣服', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/mcfly.png', 0, 1405526745, '衣服', '衣服'),
(8, 'hzddpv1405521492', '雨伞', '雨伞1234', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/umbrella.png', 0, 1405526793, '雨伞', '雨伞'),
(9, 'hzddpv1405521492', '袜子', '袜子袜子袜子', 0, 'http://www.466777.com/tpl/static/attachment/icon/lovely/flag.png', 0, 1405526835, '袜子', ''),
(10, 'tjmmox1405563308', '1212123213', '12', 0, 'http://www.466777.com/tpl/static/attachment/background/view/1.jpg', 0, 1405570743, '21', '12'),
(11, 'shibnn1405586353', '衣服', '', 0, 'http://www.466777.com/tpl/static/attachment/icon/colorful/11.png', 0, 1406350643, '尺码', '颜色'),
(12, 'ksmbyh1406371219', '衣服', '', 0, '', 0, 1406372392, '尺码', '颜色'),
(13, 'vzohcb1406947236', '过放电', '', 0, '该罚的罚', 0, 1407207866, '', ''),
(14, 'xbgzcp1407232534', '111', '1', 0, 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/b/4/thumb_53e0bc4b9c671.jpg', 0, 1407239822, '1', '1');

-- --------------------------------------------------------

--
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

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_detail`
--

CREATE TABLE IF NOT EXISTS `tp_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `format` varchar(100) NOT NULL COMMENT '商品的规格（大小）',
  `color` varchar(100) NOT NULL COMMENT '颜色',
  `num` int(10) unsigned NOT NULL COMMENT '数量',
  `price` float NOT NULL COMMENT '价格',
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品的数量(详细)表' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `tp_product_detail`
--

INSERT INTO `tp_product_detail` (`id`, `pid`, `format`, `color`, `num`, `price`, `vprice`, `logo`) VALUES
(1, 12, '5', '8', 1, 100, 100, ''),
(2, 12, '6', '8', 1, 100, 100, ''),
(3, 12, '7', '8', 1, 100, 100, ''),
(4, 12, '5', '9', 1, 100, 100, ''),
(5, 12, '6', '9', 1, 100, 100, ''),
(6, 12, '7', '9', 1, 100, 100, ''),
(7, 12, '5', '10', 1, 100, 100, ''),
(8, 12, '6', '10', 1, 100, 100, ''),
(9, 12, '7', '10', 1, 100, 100, ''),
(10, 14, '1', '3', 1, 123, 123, ''),
(11, 14, '2', '3', 1, 123, 123, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_diningtable`
--

CREATE TABLE IF NOT EXISTS `tp_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_image`
--

CREATE TABLE IF NOT EXISTS `tp_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `image` varchar(200) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品配图' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_product_image`
--

INSERT INTO `tp_product_image` (`id`, `pid`, `image`) VALUES
(1, 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg'),
(2, 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg'),
(3, 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg'),
(4, 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg'),
(5, 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg'),
(6, 1, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg'),
(7, 6, 'http://www.466777.com/tpl/static/attachment/icon/lovely/clock.png'),
(8, 7, 'http://www.466777.com/tpl/static/attachment/icon/lovely/packman.png'),
(9, 7, 'http://www.466777.com/tpl/static/attachment/icon/lovely/glasses.png'),
(10, 8, 'http://www.466777.com/tpl/static/attachment/icon/lovely/muffin.png'),
(11, 8, 'http://www.466777.com/tpl/static/attachment/icon/lovely/r2d2.png'),
(12, 9, 'http://www.466777.com/tpl/static/attachment/icon/lovely/hotdog.png'),
(13, 9, 'http://www.466777.com/tpl/static/attachment/icon/lovely/map2.png'),
(14, 10, '21');

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_mail_price`
--

CREATE TABLE IF NOT EXISTS `tp_product_mail_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL COMMENT '满多少元免邮费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置商城免邮' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_setting`
--

CREATE TABLE IF NOT EXISTS `tp_product_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_product_setting`
--

INSERT INTO `tp_product_setting` (`id`, `token`, `price`, `score`, `paymode`) VALUES
(1, 'azleau1404838233', 100, 10, 1),
(2, 'oalaxv1406127433', 0, 0, 0),
(3, 'ksmbyh1406371219', 200, 1, 0),
(4, 'xbgzcp1407232534', 12, 1, 0);

-- --------------------------------------------------------

--
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

-- --------------------------------------------------------

--
-- 表的结构 `tp_recipe`
--

CREATE TABLE IF NOT EXISTS `tp_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_recipe`
--

INSERT INTO `tp_recipe` (`id`, `token`, `keyword`, `title`, `begintime`, `endtime`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `ishow`, `sort`, `type`, `headpic`, `infos`) VALUES
(1, 'ekfdng1401977502', '食谱', '一周食谱', 1402761600, 1403280000, 'a:10:{s:6:"mon_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:6:"zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"mon_zjc";s:6:"牛奶";s:11:"mon_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"mon_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"mon_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"mon_wjc";s:6:"苹果";s:11:"mon_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"mon_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"mon_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"tus_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"tus_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"tus_zjc";s:6:"牛奶";s:11:"tus_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"tus_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"tus_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"tus_wjc";s:6:"香蕉";s:11:"tus_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"tus_wwc";s:22:"小笼包子,小米粥";s:11:"tus_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"wed_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"wed_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"wed_zjc";s:6:"牛奶";s:11:"wed_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"wed_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"wed_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"wed_wjc";s:6:"苹果";s:11:"wed_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"wed_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"wed_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"thu_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"thu_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"thu_zjc";s:6:"牛奶";s:11:"thu_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"thu_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"thu_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"thu_wjc";s:6:"香蕉";s:11:"thu_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"thu_wwc";s:22:"小笼包子,小米粥";s:11:"thu_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"fri_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"fri_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"fri_zjc";s:6:"牛奶";s:11:"fri_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"fri_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"fri_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"fri_wjc";s:6:"苹果";s:11:"fri_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"fri_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"fri_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"sat_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"sat_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"sat_zjc";s:6:"牛奶";s:11:"sat_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"sat_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"sat_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"sat_wjc";s:6:"香蕉";s:11:"sat_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"sat_wwc";s:22:"小笼包子,小米粥";s:11:"sat_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"sun_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"sun_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"sun_zjc";s:6:"牛奶";s:11:"sun_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"sun_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"sun_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"sun_wjc";s:6:"苹果";s:11:"sun_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"sun_wwc";s:46:"发糕,,肉炒三丁,熏干芹菜,玉米面粥";s:11:"sun_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 1, 1, 'school', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '20140515'),
(2, 'bqtxnv1406167321', '食谱', '一周食谱', 1406131200, 1406736000, 'a:10:{s:6:"mon_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:6:"zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"mon_zjc";s:6:"牛奶";s:11:"mon_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"mon_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"mon_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"mon_wjc";s:6:"苹果";s:11:"mon_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"mon_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"mon_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"tus_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"tus_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"tus_zjc";s:6:"牛奶";s:11:"tus_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"tus_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"tus_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"tus_wjc";s:6:"香蕉";s:11:"tus_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"tus_wwc";s:22:"小笼包子,小米粥";s:11:"tus_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"wed_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"wed_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"wed_zjc";s:6:"牛奶";s:11:"wed_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"wed_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"wed_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"wed_wjc";s:6:"苹果";s:11:"wed_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"wed_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"wed_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"thu_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"thu_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"thu_zjc";s:6:"牛奶";s:11:"thu_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"thu_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"thu_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"thu_wjc";s:6:"香蕉";s:11:"thu_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"thu_wwc";s:22:"小笼包子,小米粥";s:11:"thu_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"fri_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"fri_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"fri_zjc";s:6:"牛奶";s:11:"fri_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"fri_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"fri_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"fri_wjc";s:6:"苹果";s:11:"fri_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"fri_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"fri_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"sat_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"sat_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"sat_zjc";s:6:"牛奶";s:11:"sat_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"sat_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"sat_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"sat_wjc";s:6:"香蕉";s:11:"sat_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"sat_wwc";s:22:"小笼包子,小米粥";s:11:"sat_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"sun_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"sun_zc_pic";s:46:"http://www.466777.com/tpl/static/recipe/zc.jpg";s:7:"sun_zjc";s:6:"牛奶";s:11:"sun_zjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/zjc.jpg";s:6:"sun_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"sun_wc_pic";s:46:"http://www.466777.com/tpl/static/recipe/wc.jpg";s:7:"sun_wjc";s:6:"苹果";s:11:"sun_wjc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wjc.jpg";s:7:"sun_wwc";s:46:"发糕,,肉炒三丁,熏干芹菜,玉米面粥";s:11:"sun_wwc_pic";s:47:"http://www.466777.com/tpl/static/recipe/wwc.jpg";}', 1, 1, 'school', 'http://www.466777.com/uploads/b/bqtxnv1406167321/a/d/9/3/thumb_53d0aede8b290.jpg', '一周食谱');

-- --------------------------------------------------------

--
-- 表的结构 `tp_recognition`
--

CREATE TABLE IF NOT EXISTS `tp_recognition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_reply`
--

CREATE TABLE IF NOT EXISTS `tp_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_reply_info`
--

CREATE TABLE IF NOT EXISTS `tp_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL,
  `picurls2` varchar(120) NOT NULL,
  `picurls3` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `apiurl` varchar(200) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL,
  `copyright` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `tp_reply_info`
--

INSERT INTO `tp_reply_info` (`id`, `token`, `title`, `picurl`, `picurls1`, `picurls2`, `picurls3`, `info`, `infotype`, `diningyuding`, `diningwaimai`, `config`, `apiurl`, `keyword`, `copyright`) VALUES
(1, 'ekfdng1401977502', '欢迎进入商城', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '', '', '', '欢迎进入商城', 'Shop', 1, 1, '', '', '商城', ''),
(2, 'ekfdng1401977502', '会员卡,省钱，打折,促销，优先知道,有奖励哦', 'http://www.466777.com/tpl/static/images/member.jpg', '', '', '', '尊贵vip，是您消费身份的体现,会员卡,省钱，打折,促销，优先知道,有奖励哦', 'membercard', 1, 1, '', '', '', ''),
(3, 'ekfdng1401977502', '申请成为会员', 'http://www.466777.com/tpl/static/images/vip.jpg', '', '', '', '申请成为会员，享受更多优惠', 'membercard_nouse', 1, 1, '', '', '', ''),
(4, 'ekfdng1401977502', '您好，订餐系统为您服务', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '', '', '', '点击进入订餐系统，方便，快捷', 'Dining', 1, 1, 'a:3:{s:11:"waimaiclose";i:1;s:11:"yudingclose";i:1;s:10:"yudingdays";i:0;}', '', '订餐', ''),
(5, 'bwvmro1404199686', '微餐饮', 'http://img1.imgtn.bdimg.com/it/u=3846552793,1062132844&amp;fm=21&amp;gp=0.jpg', '', '', '', '微餐饮微餐饮微餐饮微餐饮微餐饮微餐饮微餐饮微餐饮微餐饮微餐饮微餐饮微餐饮', 'Dining', 1, 1, '', '', '订餐', ''),
(6, 'vmwylz1404883194', '微商城', 'http://www.466777.com/uploads/v/vmwylz1404883194/a/a/0/6/thumb_53bcd2884456c.jpg', 'http://www.466777.com/uploads/v/vmwylz1404883194/a/a/0/6/thumb_53bcd2884456c.jpg', 'http://www.466777.com/uploads/v/vmwylz1404883194/7/d/1/5/thumb_53bcd21c5b3a2.jpg', 'http://www.466777.com/uploads/v/vmwylz1404883194/a/a/0/6/thumb_53bcd2884456c.jpg', '微商城微商城微商城', 'Shop', 1, 1, '', '', '商城', '爱微CMS版权所有'),
(7, 'azleau1404838233', '欢迎', '', '', '', '', '欢迎1', 'Dining', 1, 1, '', '', '订餐', ''),
(8, 'azleau1404838233', '谢谢关注', '', '', '', '', '谢谢关注', 'Shop', 1, 1, '', '', '商城', ''),
(9, 'hzddpv1405521492', '商城商城', 'http://www.466777.com/uploads/h/hzddpv1405521492/f/4/3/a/thumb_53c6a484b8efc.jpg', 'http://www.466777.com/uploads/h/hzddpv1405521492/9/4/1/d/thumb_53c69e43df156.jpg', 'http://www.466777.com/uploads/h/hzddpv1405521492/4/e/6/3/thumb_53c69ddf27fa6.jpg', 'http://www.466777.com/uploads/h/hzddpv1405521492/9/4/f/c/thumb_53c69e2a2f9b8.jpg', '商城商城商城', 'Shop', 1, 1, '', '', '商城', '123333'),
(10, 'shibnn1405586353', '欢迎进入商城系统', 'http://www.466777.com/tpl/static/attachment/focus/default/../tour/7.jpg', '', '', '', '快来这里淘便宜吧', 'Shop', 1, 1, '', '', '商城', ''),
(11, 'shibnn1405586353', '欢迎您进入订餐系统', 'http://www.466777.com/tpl/static/attachment/focus/default/../canyin/2.jpg', '', '', '', '好多美味等您来点哦', 'Dining', 1, 1, '', '', '订餐', ''),
(12, 'shibnn1405586353', '会员卡,省钱，打折,促销，优先知道,有奖励哦', 'http://www.466777.com/tpl/static/images/member.jpg', '', '', '', '尊贵vip，是您消费身份的体现,会员卡,省钱，打折,促销，优先知道,有奖励哦', 'membercard', 1, 1, '', '', '', ''),
(13, 'shibnn1405586353', '申请成为会员', 'http://www.466777.com/tpl/static/images/vip.jpg', '', '', '', '申请成为会员，享受更多优惠', 'membercard_nouse', 1, 1, '', '', '', ''),
(14, 'ksmbyh1406371219', '欢迎进入金太福商城', '', '', '', '', '欢迎进入金太福商城', 'Shop', 1, 1, '', '', '商城', ''),
(15, 'shibnn1405586353', '欢迎光临团购系统', 'http://www.466777.com/tpl/static/attachment/focus/default/2.jpg', '', '', '', '欢迎光临团购系统', 'Groupon', 1, 1, 'a:1:{s:5:"tplid";i:1;}', '', '', ''),
(16, 'ksmbyh1406371219', '在线留言', '', '', '', '', '', 'message', 1, 1, 'a:1:{s:9:"needcheck";i:0;}', '', '', ''),
(17, 'xbgzcp1407232534', '留言板', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/c/6/4/7/thumb_53e0af828583b.jpg', '', '', '', '111', 'message', 1, 1, 'a:1:{s:9:"needcheck";i:0;}', '', '', ''),
(18, 'xbgzcp1407232534', '11', '', '', '', '', '11', 'Hotels', 1, 1, '', '', '酒店', ''),
(19, 'xbgzcp1407232534', '11', '', '', '', '', '111', 'Groupon', 1, 1, 'a:1:{s:5:"tplid";i:0;}', '', '', ''),
(20, 'xbgzcp1407232534', '11', '', '', '', '', '11', 'Shop', 1, 1, '', '', '商城', ''),
(21, 'xbgzcp1407232534', '会员卡,省钱，打折,促销，优先知道,有奖励哦', 'http://weixin.jihuodi.com/tpl/static/images/member.jpg', '', '', '', '尊贵vip，是您消费身份的体现,会员卡,省钱，打折,促销，优先知道,有奖励哦', 'membercard', 1, 1, '', '', '', ''),
(22, 'xbgzcp1407232534', '申请成为会员', 'http://weixin.jihuodi.com/tpl/static/images/vip.jpg', '', '', '', '申请成为会员，享受更多优惠', 'membercard_nouse', 1, 1, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_requestdata`
--

CREATE TABLE IF NOT EXISTS `tp_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `tp_requestdata`
--

INSERT INTO `tp_requestdata` (`id`, `token`, `year`, `month`, `day`, `time`, `textnum`, `imgnum`, `videonum`, `other`, `follownum`, `unfollownum`, `3g`) VALUES
(1, 'ekfdng1401977502', 2014, 6, 6, 1402015716, 6, 0, 0, 3, 1, 0, 0),
(2, 'ekfdng1401977502', 2014, 6, 8, 1402218065, 1, 0, 0, 0, 1, 0, 0),
(3, 'ekfdng1401977502', 2014, 6, 11, 1402466422, 1, 0, 0, 2, 0, 0, 0),
(4, 'bwvmro1404199686', 2014, 7, 1, 1404200350, 2, 0, 0, 0, 1, 0, 0),
(5, 'bwvmro1404199686', 2014, 7, 3, 1404399257, 1, 0, 0, 0, 0, 1, 0),
(6, 'tlpqmn1404450757', 2014, 7, 4, 1404461688, 0, 0, 0, 0, 1, 1, 0),
(7, 'bwvmro1404199686', 2014, 7, 4, 1404467895, 1, 0, 0, 0, 0, 1, 0),
(8, 'vmwylz1404883194', 2014, 7, 10, 1404954087, 0, 0, 0, 0, 2, 0, 0),
(9, 'vmwylz1404883194', 2014, 7, 14, 1405301750, 0, 0, 0, 0, 2, 0, 0),
(10, 'hgfgmt1404896579', 2014, 7, 17, 1405559026, 12, 0, 0, 0, 0, 0, 0),
(11, 'tjmmox1405563308', 2014, 7, 17, 1405570697, 4, 0, 0, 0, 0, 0, 0),
(12, 'shibnn1405586353', 2014, 7, 17, 1405586853, 1, 0, 0, 0, 1, 1, 0),
(13, 'hzddpv1405521492', 2014, 7, 18, 1405613834, 2, 0, 0, 0, 0, 0, 0),
(14, 'xjclzx1405958021', 2014, 7, 22, 1405958525, 8, 0, 0, 1, 0, 0, 0),
(15, 'zrkepg1406003661', 2014, 7, 22, 1406003870, 1, 0, 0, 0, 0, 0, 0),
(16, 'iihybk1406007981', 2014, 7, 22, 1406008266, 2, 0, 0, 0, 1, 1, 0),
(17, 'punypv1406120801', 2014, 7, 23, 1406121936, 2, 0, 0, 0, 0, 0, 0),
(18, 'wwvwfz1406130726', 2014, 7, 23, 1406130907, 10, 0, 0, 0, 0, 0, 0),
(19, 'wwvwfz1406130726', 2014, 7, 24, 1406133146, 2, 0, 0, 0, 0, 0, 0),
(20, 'bqtxnv1406167321', 2014, 7, 24, 1406172914, 3, 0, 0, 0, 0, 0, 0),
(21, 'kogqns1406184632', 2014, 7, 24, 1406185499, 11, 1, 0, 2, 1, 0, 0),
(22, 'shibnn1405586353', 2014, 7, 26, 1406355105, 1, 0, 7, 0, 1, 0, 0),
(23, 'ksmbyh1406371219', 2014, 7, 26, 1406371649, 31, 0, 0, 2, 3, 3, 0),
(24, 'ksmbyh1406371219', 2014, 7, 27, 1406425589, 9, 0, 0, 0, 1, 0, 0),
(25, 'shibnn1405586353', 2014, 7, 27, 1406447737, 1, 0, 0, 2, 0, 0, 0),
(26, 'yorbbr1406463012', 2014, 7, 27, 1406463610, 25, 0, 0, 0, 0, 0, 0),
(27, 'ksmbyh1406371219', 2014, 7, 28, 1406480616, 7, 0, 0, 1, 1, 1, 0),
(28, 'pzbwyi1406724637', 2014, 7, 30, 1406727883, 2, 0, 0, 0, 0, 0, 0),
(29, 'xctvth1406867781', 2014, 8, 1, 1406868098, 8, 0, 0, 0, 0, 0, 0),
(30, 'xctvth1406867781', 2014, 8, 2, 1406910533, 1, 0, 0, 0, 1, 0, 0),
(31, 'owikav1406947345', 2014, 8, 2, 1406947480, 1, 0, 0, 0, 0, 0, 0),
(32, 'ekfdng1401977502', 2014, 8, 2, 1406953114, 6, 0, 0, 2, 0, 0, 0),
(33, 'owikav1406947345', 2014, 8, 4, 1407124199, 0, 0, 0, 0, 1, 0, 0),
(34, 'vzohcb1406947236', 2014, 8, 5, 1407201104, 2, 0, 0, 0, 0, 0, 0),
(35, 'ekfdng1401977502', 2014, 8, 5, 1407206396, 3, 0, 0, 0, 0, 0, 0),
(36, 'qzembv1407229744', 2014, 8, 5, 1407230710, 34, 1, 0, 0, 1, 0, 0),
(37, 'xbgzcp1407232534', 2014, 8, 5, 1407234722, 6, 0, 0, 17, 0, 0, 0),
(38, 'owikav1406947345', 2014, 8, 6, 1407258094, 1, 0, 0, 1, 1, 0, 0);

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_research`
--

INSERT INTO `tp_research` (`id`, `lid`, `nums`, `token`, `title`, `keyword`, `logourl`, `description`, `dateline`, `endtime`, `starttime`) VALUES
(1, 0, 1, 'xbgzcp1407232534', '111', '2222', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/b/4/thumb_53e0bc4b9c671.jpg', '11', 1407237516, 1407842246, 1407237446);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_research_answer`
--

INSERT INTO `tp_research_answer` (`id`, `qid`, `name`, `image`, `nums`) VALUES
(1, 1, '11', '', 1),
(2, 1, '111', '', 0),
(3, 1, '111', '', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_research_question`
--

INSERT INTO `tp_research_question` (`id`, `rid`, `name`, `type`) VALUES
(1, 1, '11', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_research_result`
--

INSERT INTO `tp_research_result` (`id`, `rid`, `wecha_id`, `qid`, `aids`) VALUES
(1, 1, 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `tp_reservation`
--

CREATE TABLE IF NOT EXISTS `tp_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_reservation`
--

INSERT INTO `tp_reservation` (`id`, `token`, `keyword`, `title`, `picurl`, `addtype`, `address`, `place`, `lng`, `lat`, `tel`, `headpic`, `info`, `typename`, `typename2`, `typename3`, `type`, `date`, `allnums`, `name_show`, `time_show`, `txt1`, `value1`, `txt2`, `value2`, `txt3`, `value3`, `txt4`, `value4`, `txt5`, `value5`, `select1`, `svalue1`, `select2`, `svalue2`, `select3`, `svalue3`, `select4`, `svalue4`, `select5`, `svalue5`, `datename`, `take`, `email`, `open_email`, `sms`, `open_sms`, `price`) VALUES
(1, 'ficefo1403523346', '', '2222', 'http://www.baidu.com/images/demo.png', 'medical', '222http://www.baidu.com/images/demo.png', '', '2', '2', '0551-65371998', 'http://www.baidu.com/images/demo.png', '22http://www.baidu.com/images/demo.png', '我的挂号订单', '订单说明', '订单电话', 1, '', '', 1, 1, '', '1', '', '', '2', '2', '', '', '', '', '预约科室', '', '预约专家', '', '预约病种', '', '2', '', '', '', '留言信息', 1, '', 0, '', 0, '0.00'),
(2, 'xbgzcp1407232534', '1134', '111', 'tpl/User/default/common/car/yuyue.jpg', 'drive', '肥市政务区南二环路3818号万达广场', '', '', '', '11111111', 'tpl/User/default/common/car/yuyue.jpg', '111', '', '', '', 1, '', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', 0, '', 0, '0.00'),
(3, 'xbgzcp1407232534', '111', '111', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', 'house_book', '肥市政务区南二环路3818号万达广场', '', '', '', '1111111', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', '·111', '1', '2014-08-05', '2014-08-05', 1, '', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', 0, '', 0, '0.00'),
(4, 'xbgzcp1407232534', '', '111', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', 'medical', '11111111111', '', '', '', '0551-65371998', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', '11111111111111', '我的挂号订单', '订单说明', '订单电话', 1, '', '', 1, 1, '', '1', '', '', '111', '', '', '', '', '', '预约科室', '', '预约专家', '', '预约病种', '', '', '', '', '', '留言信息', 1, '', 0, '', 0, '1111.00');

-- --------------------------------------------------------

--
-- 表的结构 `tp_reservebook`
--

CREATE TABLE IF NOT EXISTS `tp_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) DEFAULT '0',
  `address` varchar(50) NOT NULL,
  `choose` varchar(50) NOT NULL,
  `number` int(11) DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL,
  `payprice` decimal(10,2) NOT NULL,
  `shiporder` char(32) NOT NULL,
  `productName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_rippleos_node`
--

CREATE TABLE IF NOT EXISTS `tp_rippleos_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `node` int(20) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `code_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_role`
--

CREATE TABLE IF NOT EXISTS `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_role_user`
--

CREATE TABLE IF NOT EXISTS `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_router`
--

CREATE TABLE IF NOT EXISTS `tp_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_router`
--

INSERT INTO `tp_router` (`id`, `name`, `bywechat`, `wechat`, `qrcode`, `time`, `token`, `gw_id`) VALUES
(1, '111111', 1, '1231', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/c/0/0/c/thumb_53dc5a23c31b0.png', 1406949953, 'vzohcb1406947236', '32131231223312'),
(2, 'jwy888', 1, '1231', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/c/0/0/c/thumb_53dc5a23c31b0.png', 1407034753, 'vzohcb1406947236', 'jwy888');

-- --------------------------------------------------------

--
-- 表的结构 `tp_router_config`
--

CREATE TABLE IF NOT EXISTS `tp_router_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tp_router_config`
--

INSERT INTO `tp_router_config` (`id`, `keyword`, `title`, `password`, `picurl`, `info`, `contact_qq`, `welcome_img`, `other_img`, `token`) VALUES
(2, 'wifi', '123', '', 'http://www.466777.com/tpl/static/attachment/background/view/3.jpg', 'wifiwifiwifiwifiwifiwifiwifi', '123123', 'http://www.466777.com/tpl/static/attachment/background/view/4.jpg', 'http://www.466777.com/tpl/static/attachment/background/view/9.jpg', 'gcccbf1405935616'),
(3, 'wewqe', 'wqeqw', '', '', 'eqwewqeqw', '21312321', '', '', 'gwtuam1406201970'),
(4, 'sfffff', '公益活动', '', 'http://weixin.sx0350.com/tpl/User/default/common/images/photo/plugmenu2.png', '111', '45454545', 'http://bjxit.com/tpl/static/attachment/focus/default/2.jpg', 'http://bjxit.com/tpl/static/attachment/focus/default/4.jpg', 'wpirvf1406216732'),
(5, '1', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', '', 'yorbbr1406463012'),
(6, '我要上网', '我要上网', 'e10adc3949ba59abbe56e057f20f883e', '', '我要上网', '', '', '', 'ksmbyh1406371219'),
(7, '我要上网', '我要上网', 'e10adc3949ba59abbe56e057f20f883e', '', '我要上网', '', '', '', 'xctvth1406867781'),
(8, '我要上网', '来吧', 'e10adc3949ba59abbe56e057f20f883e', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/1/f/5/thumb_53dc59454dd2a.png', '234242', '333333', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/6/f/4/f/thumb_53dc59db11acb.jpg', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/3/1/9/thumb_53dc59e76bb10.jpg', 'vzohcb1406947236'),
(9, '我要上网', '欢迎您来上风', 'e10adc3949ba59abbe56e057f20f883e', 'http://weixin.jihuodi.com/uploads/e/ekfdng1401977502/3/e/d/3/thumb_53ddf1fd4c4b4.png', '1111', '309433903', 'http://weixin.jihuodi.com/uploads/e/ekfdng1401977502/1/6/e/b/thumb_53ddc5ab16e36.jpg', 'http://weixin.jihuodi.com/tpl/static/attachment/background/view/2.jpg', 'ekfdng1401977502');

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_classify`
--

CREATE TABLE IF NOT EXISTS `tp_school_classify` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `type` (`type`),
  FULLTEXT KEY `type_2` (`type`),
  FULLTEXT KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_school_classify`
--

INSERT INTO `tp_school_classify` (`sid`, `sname`, `ssort`, `token`, `type`) VALUES
(1, '2014第一学期', 1, 'ekfdng1401977502', 'semester'),
(2, '中二班', 1, 'ekfdng1401977502', 'theclass'),
(3, '数理化', 1, 'tlpqmn1404450757', 'semester'),
(4, '真爱教育', 1, 'hgfgmt1404896579', 'semester'),
(5, '2011班', 1, 'hgfgmt1404896579', 'theclass'),
(6, '1123', 1, 'xbgzcp1407232534', 'semester');

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_score`
--

CREATE TABLE IF NOT EXISTS `tp_school_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_set_index`
--

CREATE TABLE IF NOT EXISTS `tp_school_set_index` (
  `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu9` varchar(50) NOT NULL DEFAULT '',
  `menu10` varchar(50) NOT NULL DEFAULT '',
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL,
  `path` varchar(3000) NOT NULL DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  `picurl1` varchar(200) NOT NULL DEFAULT '',
  `picurl2` varchar(200) NOT NULL DEFAULT '',
  `picurl3` varchar(200) NOT NULL DEFAULT '',
  `picurl4` varchar(200) NOT NULL DEFAULT '',
  `picurl5` varchar(200) NOT NULL DEFAULT '',
  `picurl6` varchar(200) NOT NULL DEFAULT '',
  `picurl7` varchar(200) NOT NULL DEFAULT '',
  `picurl8` varchar(200) NOT NULL DEFAULT '',
  `picurl9` varchar(200) NOT NULL DEFAULT '',
  `picurl10` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_school_set_index`
--

INSERT INTO `tp_school_set_index` (`setid`, `token`, `keyword`, `title`, `head_url`, `info`, `album_id`, `musicurl`, `menu1`, `menu1_id`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu2_id`, `menu3_id`, `menu4_id`, `menu5_id`, `menu6_id`, `path`, `tpid`, `conttpid`, `picurl1`, `picurl2`, `picurl3`, `picurl4`, `picurl5`, `picurl6`, `picurl7`, `picurl8`, `picurl9`, `picurl10`) VALUES
(1, 'bqtxnv1406167321', '微教育', '微教育的图文标题介绍', 'http://www.466777.com/uploads/b/bqtxnv1406167321/3/8/9/4/thumb_53d0af2387587.jpg', '图文介绍！图文介绍！图文介绍！图文介绍！图文介绍！图文介绍！', 3, 'http://www.466777.com/tpl/static/attachment/music/default/1.mp3 ', '学校环境', 12, '教师风采', '同学天地', '课程介绍', '食谱安排', '校内新闻', '成绩查询', '家长建议', '', '', 0, 10, 12, 0, 11, '0', NULL, NULL, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_students`
--

CREATE TABLE IF NOT EXISTS `tp_school_students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_tcourse`
--

CREATE TABLE IF NOT EXISTS `tp_school_tcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_teachers`
--

CREATE TABLE IF NOT EXISTS `tp_school_teachers` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_school_teachers`
--

INSERT INTO `tp_school_teachers` (`tid`, `tname`, `birthdate`, `createtime`, `homephone`, `mobile`, `email`, `sex`, `token`, `jiontime`, `info`, `faceimg`, `headinfo`, `sort`) VALUES
(1, '陈老师', '1987-06-11', 1402466901, '3370161', '13511351135', '123@qq.com', 2, 'ekfdng1401977502', '2014-01-02', 'ES', 'http://www.466777.com/tpl/static/attachment/icon/lovely/glasses.png', 'TEST', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_selfform`
--

CREATE TABLE IF NOT EXISTS `tp_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `logourl` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_selfform`
--

INSERT INTO `tp_selfform` (`id`, `token`, `name`, `keyword`, `intro`, `content`, `time`, `successtip`, `failtip`, `endtime`, `logourl`) VALUES
(1, 'xshtyn1403100790', '美容预约', '美容预约', '美容预约', '', 1403101672, '', '', 1403971199, 'http://www.jihuodi.com/thread-418-1-1.html');

-- --------------------------------------------------------

--
-- 表的结构 `tp_selfform_input`
--

CREATE TABLE IF NOT EXISTS `tp_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_selfform_input`
--

INSERT INTO `tp_selfform_input` (`id`, `formid`, `displayname`, `fieldname`, `inputtype`, `options`, `require`, `regex`, `taxis`, `errortip`) VALUES
(1, 1, 'http://www.jihuodi.com/thread-', 'http://www.jihuodi.com/thread-', 'select', '1|2|3|4|5|6', 0, '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_selfform_value`
--

CREATE TABLE IF NOT EXISTS `tp_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_send_message`
--

CREATE TABLE IF NOT EXISTS `tp_send_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_service_logs`
--

CREATE TABLE IF NOT EXISTS `tp_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_service_user`
--

CREATE TABLE IF NOT EXISTS `tp_service_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_setinfo`
--

CREATE TABLE IF NOT EXISTS `tp_setinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_setinfo`
--

INSERT INTO `tp_setinfo` (`id`, `pid`, `token`, `name`, `value`, `kind`, `type`) VALUES
(9, 2, 'thvusk1405647851', 'person', '1', '1', 'Yuyue'),
(10, 2, 'thvusk1405647851', 'phone', '1', '1', 'Yuyue'),
(11, 2, 'thvusk1405647851', 'date', '1', '2', 'Yuyue'),
(12, 2, 'thvusk1405647851', 'time', '1', '2', 'Yuyue'),
(13, 2, 'thvusk1405647851', '留言', NULL, '5', 'Yuyue');

-- --------------------------------------------------------

--
-- 表的结构 `tp_shake`
--

CREATE TABLE IF NOT EXISTS `tp_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_shake`
--

INSERT INTO `tp_shake` (`id`, `isact`, `title`, `keyword`, `intro`, `thumb`, `shownum`, `joinnum`, `shaketype`, `token`, `createtime`, `isopen`, `clienttime`, `showtime`, `endtime`, `background`, `backgroundmusic`, `music`, `usetime`, `rule`, `info`, `starttime`, `endshake`, `qrcode`, `time`) VALUES
(1, 1, '测试一下摇一摇活动', '摇一摇', '110110110', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', 10, NULL, 1, 'ekfdng1401977502', '', 1, 3, 3, NULL, '', '', '', 100, '111111', '', 3, 133, '', 1402015638),
(2, 1, 'fas', 'sdf', 'sfsdf', 'sdf', 10, NULL, 1, 'hpwshv1404715458', '', 1, 3, 3, NULL, '1sdf', 'asdf', 'asdf', 1, 'asdf', 'asdf', 3, 600, 'asdf', 1404715694),
(4, 1, '摇一摇', '摇一摇', '摇一摇的活动', 'http://www.466777.com/uploads/a/achbur1406208229/c/5/1/c/thumb_53d109a1c4617.jpg', 10, NULL, 1, 'achbur1406208229', '', 1, 3, 3, NULL, 'http://www.466777.com/tpl/static/attachment/background/view/5.jpg', '', '', 60, '摇一摇的规则说明', '摇一摇的活动介绍', 3, 40, 'http://www.466777.com/uploads/a/achbur1406208229/a/3/1/5/thumb_53d10abcdf156.png', 1406208714),
(5, 1, '11', 'yao', '11', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', 10, NULL, 1, 'xbgzcp1407232534', '', 1, 3, 3, NULL, '', '', '', 0, '', '', 3, 600, '', 1407239290);

-- --------------------------------------------------------

--
-- 表的结构 `tp_shakelog`
--

CREATE TABLE IF NOT EXISTS `tp_shakelog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_shake_rt`
--

CREATE TABLE IF NOT EXISTS `tp_shake_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shakeid` (`shakeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_shake_rt`
--

INSERT INTO `tp_shake_rt` (`id`, `wecha_id`, `token`, `phone`, `count`, `shakeid`, `is_scene`) VALUES
(1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'ekfdng1401977502', '13511350189', 134, 1, '0'),
(2, 'oCS7gjkP2ktVR92v_GMrvS3ZPyJM', 'achbur1406208229', '13555555556', 45, 4, '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_share`
--

CREATE TABLE IF NOT EXISTS `tp_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`moduleid`,`token`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_share`
--

INSERT INTO `tp_share` (`id`, `module`, `moduleid`, `token`, `wecha_id`, `to`, `time`, `url`) VALUES
(1, 'Forum', 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'friend', 1402034161, 'http://www.466777.com/index.php?g=Wap&amp;amp;m=Forum&amp;amp;a=index&amp;amp;token=ekfdng1401977502'),
(2, 'AppleGame', 6, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'frineds', 1406953520, 'http://weixin.jihuodi.com/index.php?g=Wap&amp;amp;m=AppleGame&amp;amp;a=index&amp;amp;token=ekfdng1401977502&amp;amp;id=6'),
(3, 'AppleGame', 6, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'friend', 1406953524, 'http://weixin.jihuodi.com/index.php?g=Wap&amp;amp;m=AppleGame&amp;amp;a=index&amp;amp;token=ekfdng1401977502&amp;amp;id=6'),
(4, 'Lovers', 7, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'frineds', 1406953583, 'http://weixin.jihuodi.com/index.php?g=Wap&amp;amp;m=Lovers&amp;amp;a=index&amp;amp;token=ekfdng1401977502&amp;amp;id=7'),
(5, 'Repast', 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'frineds', 1406957909, 'http://weixin.jihuodi.com/index.php?g=Wap&amp;amp;m=Repast&amp;amp;a=mymenu&amp;amp;token=ekfdng1401977502&amp;amp;cid=1'),
(6, 'Repast', 0, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'frineds', 1406957919, 'http://weixin.jihuodi.com/index.php?g=Wap&amp;amp;m=Repast&amp;amp;a=dish&amp;amp;token=ekfdng1401977502&amp;amp;cid=1');

-- --------------------------------------------------------

--
-- 表的结构 `tp_share_set`
--

CREATE TABLE IF NOT EXISTS `tp_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_sign_in`
--

INSERT INTO `tp_sign_in` (`sign_id`, `token`, `wecha_id`, `user_name`, `integral`, `time`, `continue`, `phone`, `set_id`) VALUES
(1, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '小衷', 5, '1406447704', 0, '13511350189', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_sign_set`
--

INSERT INTO `tp_sign_set` (`id`, `keywords`, `title`, `content`, `token`, `reply_img`, `top_pic`) VALUES
(2, '签到', '欢迎您使用签到系统', '来签个到吧', 'shibnn1405586353', 'http://www.466777.com/tpl/static/sign/r.jpg', 'http://www.466777.com/tpl/static/sign/top.jpg'),
(3, '', '', '', 'ekfdng1401977502', 'http://weixin.jihuodi.com/tpl/static/sign/r.jpg', 'http://weixin.jihuodi.com/tpl/static/sign/top.jpg'),
(4, '签到', '签到', '可以签到啦！', 'xbgzcp1407232534', 'http://weixin.jihuodi.com/tpl/static/sign/r.jpg', 'http://weixin.jihuodi.com/tpl/static/sign/top.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_site_plugmenu`
--

CREATE TABLE IF NOT EXISTS `tp_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_site_plugmenu`
--

INSERT INTO `tp_site_plugmenu` (`token`, `name`, `url`, `taxis`, `display`) VALUES
('xbgzcp1407232534', 'tel', '', 0, 0),
('xbgzcp1407232534', 'memberinfo', '', 0, 0),
('xbgzcp1407232534', 'nav', '', 0, 0),
('xbgzcp1407232534', 'message', '', 0, 0),
('xbgzcp1407232534', 'share', '', 0, 0),
('xbgzcp1407232534', 'home', '', 0, 0),
('xbgzcp1407232534', 'album', '', 0, 0),
('xbgzcp1407232534', 'email', '', 0, 0),
('xbgzcp1407232534', 'shopping', '', 0, 0),
('xbgzcp1407232534', 'membercard', '', 0, 0),
('xbgzcp1407232534', 'activity', '', 0, 0),
('xbgzcp1407232534', 'weibo', '', 0, 0),
('xbgzcp1407232534', 'tencentweibo', '', 0, 0),
('xbgzcp1407232534', 'qqzone', '', 0, 0),
('xbgzcp1407232534', 'wechat', '', 0, 0),
('xbgzcp1407232534', 'music', '', 0, 0),
('xbgzcp1407232534', 'video', '', 0, 0),
('xbgzcp1407232534', 'recommend', '', 0, 0),
('xbgzcp1407232534', 'other', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sms_expendrecord`
--

CREATE TABLE IF NOT EXISTS `tp_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_sms_expendrecord`
--

INSERT INTO `tp_sms_expendrecord` (`id`, `uid`, `price`, `count`, `time`) VALUES
(NULL, 4, 0, 100, 1404461609),
(NULL, 4, 0, 100, 1404462293),
(NULL, 80, 0, 100, 1406875545),
(NULL, 4, 8, 100, 1407054663),
(NULL, 4, 8, 100, 1407054677);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sms_record`
--

CREATE TABLE IF NOT EXISTS `tp_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_sms_record`
--

INSERT INTO `tp_sms_record` (`id`, `uid`, `token`, `time`, `mp`, `text`, `status`, `price`) VALUES
(1, 4, 'ekfdng1401977502', 1405152307, '13257941868', '您的顾客衷国强刚刚下了一个订单，订单号：020140712160504，请您注意查看并处理', 0, 0),
(2, 4, 'ekfdng1401977502', 1405152865, '13257941868', '您的顾客衷国强刚刚下了一个订单，订单号：020140712161425，请您注意查看并处理', 0, 0),
(3, 4, 'ekfdng1401977502', 1406958848, '13257941868', '同创科技欢迎您，本店对您的订单号为：020140802133757的订单状态进行了修改，如有任何疑意，请您及时联系本店！', 0, 10);

-- --------------------------------------------------------

--
-- 表的结构 `tp_snccode`
--

CREATE TABLE IF NOT EXISTS `tp_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_styleset`
--

CREATE TABLE IF NOT EXISTS `tp_styleset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_system_info`
--

CREATE TABLE IF NOT EXISTS `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_system_info`
--

INSERT INTO `tp_system_info` (`lastsqlupdate`, `version`) VALUES
(1395032640, '1395069120');

-- --------------------------------------------------------

--
-- 表的结构 `tp_taobao`
--

CREATE TABLE IF NOT EXISTS `tp_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_text`
--

CREATE TABLE IF NOT EXISTS `tp_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_text`
--

INSERT INTO `tp_text` (`id`, `uid`, `uname`, `keyword`, `type`, `text`, `createtime`, `updatetime`, `click`, `token`) VALUES
(1, 52, '', '147', '1', '369', '1406008244', '1406008244', 0, 'iihybk1406007981'),
(2, 23, '', '111', '1', '111', '1406947431', '1406947431', 0, 'owikav1406947345'),
(3, 86, '', '11', '1', '111', '1407235661', '1407235661', 0, 'xbgzcp1407232534');

-- --------------------------------------------------------

--
-- 表的结构 `tp_token_open`
--

CREATE TABLE IF NOT EXISTS `tp_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- 转存表中的数据 `tp_token_open`
--

INSERT INTO `tp_token_open` (`id`, `uid`, `token`, `queryname`) VALUES
(3, 4, 'ekfdng1401977502', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,advanceTpl,Zhaopianwall,Vcard,Dati,Yuyue,rippleos'),
(4, 7, 'ooeiuv1402737849', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl'),
(5, 8, 'pteilr1402833110', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Yuyue,rippleos'),
(6, 9, 'nszorb1402857075', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(7, 4, 'b3c1b32187fe389', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(8, 10, 'xshtyn1403100790', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(9, 12, 'ficefo1403523346', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(10, 13, 'bwvmro1404199686', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(11, 14, 'psuyri1404444703', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(12, 15, 'tlpqmn1404450757', 'qiushi,langdu,jiankang,xiaohua,changtoushi,peiliao,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,tianqi'),
(13, 15, 'dxgyrd1404462982', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(14, 15, 'vzukui1404545578', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(15, 16, 'qzwpqe1404546345', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(16, 17, 'hpwshv1404715458', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(17, 18, 'vtdscs1404740044', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(18, 19, 'pwearo1404791557', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati'),
(19, 22, 'azleau1404838233', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(20, 24, 'vmwylz1404883194', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(21, 23, 'knekzj1404896275', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(22, 23, 'hgfgmt1404896579', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(23, 25, 'gmrqhe1405059770', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(24, 26, 'ofrbtc1405169766', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(25, 27, 'smdqgn1405176606', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(26, 23, 'qzqmzz1405433484', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,fujin'),
(27, 23, 'ldaulo1405482578', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(28, 31, 'kyhwga1405500137', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(29, 30, 'hzddpv1405521492', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(30, 32, 'tjmmox1405563308', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(31, 23, 'shibnn1405586353', 'tianqi,qiushi,jishuan,kuaidi,xiaohua,changtoushi,peiliao,liaotian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,fujin,fanyi,suanming,caipiao,shouye,adma,geci,,dx,shop,etuan,Dati'),
(32, 33, 'sdsrvl1405589701', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(33, 34, 'cahcww1405590711', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(34, 36, 'thvusk1405647851', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(35, 35, 'rqnkyd1405672139', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(36, 37, 'ubtrwc1405702514', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(37, 38, 'dzucxy1405741000', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(38, 39, 'ylzodr1405747302', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(39, 29, 'tiqlly1405761617', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(40, 40, 'spzzkp1405790344', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(41, 42, 'vfrcfa1405826496', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(42, 44, 'negttb1405850678', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(43, 45, 'mxnkmq1405914043', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(44, 23, 'gcccbf1405935616', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(45, 46, 'iqdbrg1405937896', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(46, 47, 'xjclzx1405958021', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(47, 48, 'xyhsmo1405967053', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(48, 49, 'qajxvf1405996113', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,choujiang'),
(49, 50, 'zrkepg1406003661', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(50, 52, 'iihybk1406007981', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(51, 53, 'mnzqdb1406009469', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(52, 54, 'jguphy1406010039', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(53, 55, 'tccwvw1406014990', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(54, 56, 'xcmcbn1406020997', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(55, 57, 'xtqgxk1406024082', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(56, 23, 'punypv1406120801', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(57, 59, 'oalaxv1406127433', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(58, 60, 'wwvwfz1406130726', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(59, 61, 'bqtxnv1406167321', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(60, 62, 'lrjngf1406171501', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(61, 63, 'glpuql1406183745', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(62, 23, 'kogqns1406184632', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(63, 64, 'ueotip1406188853', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(64, 66, 'gwtuam1406201970', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(65, 67, 'achbur1406208229', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(66, 68, 'wpirvf1406216732', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(67, 69, 'prqrpe1406264162', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(68, 70, 'msflwi1406266826', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(69, 72, 'zqrmsx1406336165', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(70, 73, 'lutuse1406361038', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(71, 23, 'ksmbyh1406371219', 'tianqi,qiushi,jishuan,kuaidi,xiaohua,changtoushi,peiliao,liaotian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,fujin,fanyi,suanming,caipiao,shouye,adma,geci,,dx,shop,etuan,Dati'),
(75, 76, 'pzbwyi1406724637', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(72, 23, 'yorbbr1406463012', 'langdu,jiankang,changtoushi,peiliao,liaotian,mengjian,yuyin,huoche,gongjiao,shenfenzheng,shouji,yinle,lottery,taobao,userinfo,api,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,tianqi'),
(73, 74, 'bnvweb1406514635', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(74, 75, 'svmfnd1406520959', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(76, 77, 'glgzhr1406775560', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(77, 78, 'eaclnz1406783725', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(78, 79, 'xctvth1406867781', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(79, 80, 'xmsxhg1406875274', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(80, 81, 'kmnwkp1406885165', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(81, 82, 'igslhu1406887106', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,advanceTpl,Dati,Yuyue,Vcard'),
(82, 23, 'inwwwf1406943327', 'tianqi,qiushi,jishuan,kuaidi,xiaohua,changtoushi,peiliao,liaotian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,fujin,fanyi,suanming,caipiao,shouye,adma,geci,,dx,shop,etuan,Dati'),
(83, 23, 'vzohcb1406947236', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,gua2,panorama,wedding,vote,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,diymen_set,estate,rippleos'),
(84, 23, 'owikav1406947345', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue'),
(85, 84, 'pgedyf1407030714', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,rippleos'),
(86, 85, 'qzembv1407229744', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,rippleos'),
(87, 86, 'xbgzcp1407232534', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,rippleos'),
(88, 87, 'oblian1407245051', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,rippleos'),
(89, 88, 'wnncyu1407245884', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,Zhaopianwall,Vcard,advanceTpl,Dati,Yuyue,rippleos');

-- --------------------------------------------------------

--
-- 表的结构 `tp_update_record`
--

CREATE TABLE IF NOT EXISTS `tp_update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_upyun_attachement`
--

CREATE TABLE IF NOT EXISTS `tp_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_user`
--

CREATE TABLE IF NOT EXISTS `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(1, 'admin', '6f5227a5fc3d58424d8e74a7d8ef723e', 5, 1, '', 1407254318, '173.255.254.133', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_userinfo`
--

CREATE TABLE IF NOT EXISTS `tp_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `getcardtime` int(10) NOT NULL DEFAULT '0',
  `info` varchar(200) NOT NULL,
  `total_score` int(11) NOT NULL,
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `portrait` varchar(200) NOT NULL,
  `wallopen` tinyint(1) DEFAULT '0',
  `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `paypass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_userinfo`
--

INSERT INTO `tp_userinfo` (`id`, `token`, `wecha_id`, `wechaname`, `truename`, `tel`, `bornyear`, `bornmonth`, `bornday`, `qq`, `sex`, `age`, `birthday`, `address`, `getcardtime`, `info`, `total_score`, `expensetotal`, `sign_score`, `expend_score`, `continuous`, `add_expend`, `add_expend_time`, `live_time`, `portrait`, `wallopen`, `balance`, `paypass`) VALUES
(1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '小衷', '衷国强', '13511350189', '1985', '07', '05', '271356340', 1, '', '', '哈哈还123给你', 1402034575, '', 2, 0, 1, 0, 1, 0, 0, 0, 'http://www.466777.com/tpl/static/portrait/2.jpg', 0, 0.00, NULL),
(2, 'ekfdng1401977502', 'o48e9t3VtUFW-RKH9GwtNjevL1jY', '衷丽芬', '', '13097042062', '1985', '5', '17', '', 2, '', '', '', 1402218433, '', 0, 0, 0, 0, 0, 0, 0, 0, 'http://www.466777.com/tpl/static/portrait/7.jpg', 0, 0.00, NULL),
(3, 'vmwylz1404883194', 'opqOLt7q_fAdeC85ySnSWQdGDfUM', '', '纪铭瀚', '15153392233', '', '', '', '0', -1, '0', '', '淄博', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0.00, NULL),
(4, 'hzddpv1405521492', 'obxQHt6xC2WZBCp6mqWqD_sB-s64', '', '13444', '13715368034', '', '', '', '0', -1, '0', '', '11111111', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0.00, NULL),
(5, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '三石磊', '', '13264490168', '1993', '04', '11', '', 1, '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'http://www.466777.com/tpl/static/portrait/1.jpg', 0, 0.00, NULL),
(6, 'xjclzx1405958021', 'oWkrajoQfdtqBXKTUm94pwJeHPbY', '不？', '', '15974206868', '1991', '7', '1', '', 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'http://www.466777.com/tpl/static/portrait/1.jpg', 1, 0.00, NULL),
(7, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', '什么', '', '15974206868', '1991', '4', '1', '', 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'http://www.466777.com/tpl/static/portrait/1.jpg', 1, 0.00, NULL),
(8, 'zrkepg1406003661', 'o4kZ4s7XAi0ahnUtU36aUTYsXMiE', '呵呵', '446', '13794646471', '2011', '8', '1', '', 1, '', '', '', 1406003925, '', 0, 0, 0, 0, 0, 0, 0, 0, 'http://www.466777.com/tpl/static/portrait/1.jpg', 0, 0.00, NULL),
(9, 'shibnn1405586353', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '小衷', '衷国强', '13511350189', '1982', '08', '02', '271356340', 1, '', '', '哈哈大笑123', 1406355257, '', 0, 80, 0, 0, 0, 0, 0, 0, 'http://www.466777.com/tpl/static/portrait/8.jpg', 0, 400.00, NULL),
(10, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0.00, NULL),
(13, 'vzohcb1406947236', 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', '', 'Liu168668', '18170607227', '', '', '', '', 0, '', '', '', 1407207495, '', 0, 1010, 0, 0, 0, 0, 0, 0, '', 0, 21110.00, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_users`
--

CREATE TABLE IF NOT EXISTS `tp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `wechat_card_num` tinyint(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(10) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `invitecode` varchar(6) NOT NULL DEFAULT '',
  `smscount` int(10) DEFAULT '0',
  `openid` varchar(80) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- 转存表中的数据 `tp_users`
--

INSERT INTO `tp_users` (`id`, `inviter`, `gid`, `username`, `mp`, `password`, `email`, `createtime`, `lasttime`, `status`, `createip`, `lastip`, `diynum`, `activitynum`, `card_num`, `card_create_status`, `wechat_card_num`, `serviceUserNum`, `money`, `moneybalance`, `spend`, `viptime`, `connectnum`, `lastloginmonth`, `attachmentsize`, `invitecode`, `smscount`, `openid`, `remark`, `agentid`) VALUES
(3, 0, 0, 'party2007', '13511351135', '492be47ff4ba4316ceb36bca752069fb', '1351135@qq.com', '1401977140', '1401977140', '0', '60.55.43.209', '60.55.43.209', 0, 10, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 'zpcsqc', 0, '', '', 0),
(4, 0, 4, 'party2008', '13511351135', '492be47ff4ba4316ceb36bca752069fb', '135@qq.com', '1401977454', '1407206838', '1', '60.55.43.112', '125.124.53.208', 9, 5, 50, 0, 1, 0, 0, 484, 0, '1561737600', 27, 8, 476738, 'rnvtwq', 400, '', '', 0),
(5, 0, 4, 'hanqiquan', '', '96e79218965eb72c92a549dd5a330112', 'hanqiquan@126.com', '1402238392', '1402238392', '1', '111.204.254.39', '111.204.254.39', 0, 10, 0, 0, 0, 0, 0, 0, 0, '1402843192', 0, 0, 0, 'vunxzh', 0, '', '', 0),
(6, 0, 4, 'coolring', '', 'e10adc3949ba59abbe56e057f20f883e', 'coolring@126.com', '1402305435', '1402305435', '1', '116.26.28.38', '116.26.28.38', 0, 10, 0, 0, 0, 0, 0, 0, 0, '1402910235', 0, 0, 0, 'ufwvpj', 0, '', '', 0),
(8, 0, 4, 'test', '', '098f6bcd4621d373cade4e832627b4f6', 'test@test.com', '1402833100', '1407270059', '1', '101.36.95.197', '222.205.127.11', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1434729600', 0, 8, 0, 'wesxfp', 0, '', '', 0),
(7, 0, 4, '123456', '', 'e10adc3949ba59abbe56e057f20f883e', '456456@qq.qq', '1402737846', '1406083999', '1', '220.179.36.215', '222.89.229.67', 0, 10, 0, 0, 1, 0, 0, 0, 0, '1433347200', 0, 7, 0, 'ytuaqc', 0, '', '', 0),
(9, 0, 4, '111111', '', '96e79218965eb72c92a549dd5a330112', '111@s.com', '1402857066', '1404530450', '1', '117.132.13.29', '122.232.76.6', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1433520000', 0, 7, 0, 'zxnrya', 0, '', '', 0),
(10, 0, 4, '998998', '', 'd4a936d3c1f8a3407e7bcaa15c51f839', '998998@sdaf.com', '1403100780', '1405169735', '1', '27.41.187.170', '125.91.56.159', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1403705580', 0, 7, 0, 'vadhae', 0, '', '', 0),
(11, 0, 4, 'dsisoo7', '', '2630d77f18e1221e7289ad71c7b215db', '2966399066@qq.com', '1403451396', '1403451396', '1', '1.195.54.98', '1.195.54.98', 0, 9, 0, 0, 0, 0, 0, 0, 0, '1404056196', 0, 0, 0, 'wzhqbn', 0, '', '', 0),
(12, 0, 4, '2222222222', '', '3a08fe7b8c4da6ed09f21c3ef97efce2', '2222222222@qq.com', '1403523336', '1403523336', '1', '116.1.222.7', '116.1.222.7', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1404128136', 0, 0, 0, 'wmyqez', 0, '', '', 0),
(13, 0, 4, 'sixteen', '', 'bd2c775d9eaf5f71da52b55ade9989a4', '392979022@qq.com', '1404199676', '1404199676', '1', '112.227.77.85', '112.227.77.85', 4, 9, 0, 0, 1, 0, 0, 0, 0, '1404804476', 8, 0, 0, 'vpdwqu', 0, '', '', 0),
(14, 0, 4, 'ldf3000', '', 'd5862d8856aa71311fb81bcab1690e8c', 'jiksdjfi@skdj.cc', '1404444699', '1404533975', '1', '58.54.134.83', '27.20.40.53', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405049499', 0, 7, 0, 'efwjcd', 0, '', '', 0),
(15, 0, 4, 'ahyfeng', '', '5a84b6430ed957bb8a115f515fe1c67f', 'yfskl@qq.com', '1404450068', '1404545570', '1', '117.64.153.4', '117.64.153.4', 2, 9, 0, 0, 3, 0, 0, 0, 0, '1405054868', 3, 7, 30263, 'qjrujt', 0, '', '', 0),
(16, 0, 4, '55555555', '', 'f638f4354ff089323d1a5f78fd8f63ca', '55555555@qq.com', '1404546341', '1404546341', '1', '124.202.191.6', '124.202.191.6', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405151141', 0, 0, 0, 'ythmgq', 0, '', '', 0),
(17, 0, 4, 'aaaaaa', '', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '34@qq.com', '1404715447', '1404715447', '1', '115.60.58.29', '115.60.58.29', 0, 10, 0, 0, 1, 0, 0, 0, 0, '1405320248', 0, 0, 0, 'cudzhu', 0, '', '', 0),
(19, 0, 4, 'huang', '', '21e7f4ea9b773045b4a0fef86fe3b4d2', 'ddd@12.com', '1404791548', '1404791548', '1', '183.16.146.62', '183.16.146.62', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405396348', 0, 0, 0, 'jbpnsy', 0, '', '', 0),
(18, 0, 4, 'johnman', '', '422961e31a9a43a7369572d0948c4443', '4283905@qq.com', '1404739994', '1404897211', '1', '101.20.136.182', '119.251.63.25', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405344794', 0, 7, 0, 'zpzvue', 0, '', '', 0),
(20, 0, 4, 'djxiaobei', '', '57d45cc9c6bb54872796e503bf6e3423', '16345561@qq.com', '1404802037', '1404802037', '1', '115.201.7.149', '115.201.7.149', 0, 9, 0, 0, 0, 0, 0, 0, 0, '1405406837', 0, 0, 0, 'vwhfud', 0, '', '', 0),
(21, 0, 4, '我是天才', '13912345236', 'e10adc3949ba59abbe56e057f20f883e', '1231212@qq.com', '1404807686', '1404875871', '1', '119.144.58.178', '119.144.58.178', 0, 9, 0, 0, 0, 0, 0, 0, 0, '1405412486', 0, 7, 0, 'eacnkm', 0, '', '', 0),
(22, 0, 4, '254519866', '', '57811bcc42e5ec25a1277a849c12842a', '254519866@qq.com', '1404838160', '1407056657', '1', '163.125.244.91', '163.125.213.107', 0, 3, 0, 0, 1, 0, 0, 0, 0, '1405442960', 0, 8, 10238, 'crjyhn', 0, '', '', 0),
(23, 0, 4, '123', '', 'e10adc3949ba59abbe56e057f20f883e', 'kkkk@dd.com', '1404867190', '1407296394', '1', '183.47.113.154', '60.213.83.234', 1, 6, 8, 0, 3, 0, 0, 0, 0, '1409241600', 10, 8, 2635330, 'zcubpc', 0, '', '', 0),
(24, 0, 4, 'ruike', '', 'f0fe6727a75095ed400d6c39fae1df02', '345069862@qq.com', '1404883174', '1404883174', '1', '119.181.185.67', '119.181.185.67', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405487974', 2, 0, 162304, 'hgcwps', 0, '', '', 0),
(25, 0, 4, 'ceshi2014', '', '76280d073ff8998b3ace993e7825b798', 'ceshi2014@qq.com', '1405059747', '1405059747', '1', '119.163.151.56', '119.163.151.56', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405664547', 0, 0, 0, 'wxdfwz', 0, '', '', 0),
(26, 0, 4, '123321', '', 'c8837b23ff8aaa8a2dde915473ce0991', 'asdfasf@asf.com', '1405169758', '1405169758', '1', '125.91.56.159', '125.91.56.159', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405774558', 0, 0, 0, 'pkfcdn', 0, '', '', 0),
(27, 0, 4, 'mychen', '', '9e27a28fe7f85a118e8c2569148c9f4c', '916609986@qq.com', '1405176576', '1405176576', '1', '116.249.225.201', '116.249.225.201', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405781376', 0, 0, 0, 'ejjggy', 0, '', '', 0),
(28, 0, 4, 'tes123', '', 'b93939873fd4923043b9dec975811f66', '3432432@11.com', '1405260868', '1405260868', '1', '117.29.131.148', '117.29.131.148', 0, 9, 0, 0, 0, 0, 0, 0, 0, '1405865668', 0, 0, 0, 'chtazp', 0, '', '', 0),
(29, 0, 4, 'admin', '', '21232f297a57a5a743894a0e4a801fc3', '271356340@qq.com', '1405261015', '1405929581', '1', '60.163.137.131', '211.91.177.69', 0, 9, 0, 0, 1, 0, 0, 0, 0, '1405865815', 0, 7, 0, 'shkfvz', 0, '', '', 0),
(30, 0, 4, '254519867', '', '57811bcc42e5ec25a1277a849c12842a', '254519867@qq.com', '1405488003', '1405786415', '1', '183.63.48.161', '163.125.212.29', 3, 8, 0, 0, 1, 0, 0, 0, 0, '1406092803', 6, 7, 177893, 'jguajw', 0, '', '', 0),
(31, 0, 4, 'test123', '', '202cb962ac59075b964b07152d234b70', '123@123.com', '1405500130', '1405500130', '1', '119.32.126.121', '119.32.126.121', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406104930', 1, 0, 0, 'fqhjvu', 0, '', '', 0),
(32, 0, 4, 'seasky8866', '', 'cc77846539d5ef765cb1241874d42348', 'sdfkls@qq.com', '1405563303', '1405884391', '1', '61.164.214.252', '122.224.152.137', 4, 8, 0, 0, 1, 0, 0, 0, 0, '1406168103', 12, 7, 0, 'qbqupj', 0, '', '', 0),
(33, 0, 4, 'whc123', '', 'e10adc3949ba59abbe56e057f20f883e', '46464646@qq.com', '1405589695', '1405589695', '1', '221.237.149.149', '221.237.149.149', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406194495', 0, 0, 0, 'hhkbzj', 0, '', '', 0),
(34, 0, 4, 'dddd', '', '980ac217c6b51e7dc41040bec1edfec8', 'ert45t45@qq.com', '1405590708', '1405590708', '1', '36.47.255.5', '36.47.255.5', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406195508', 0, 0, 0, 'usjbwr', 0, '', '', 0),
(35, 0, 4, 'weryxf', '', '6b7d1083f01a25997707bc6d6b8ab032', 'weryxf@vip.qq.com', '1405590808', '1405763807', '1', '58.250.215.110', '58.251.191.28', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406195608', 0, 7, 0, 'jhwzza', 0, '', '', 0),
(36, 0, 4, '123123123', '', 'f5bb0c8de146c67b44babbf4e6584cc0', '12321@qq.com', '1405647844', '1405656129', '1', '42.236.206.23', '42.236.206.23', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406252644', 0, 7, 0, 'hgbvme', 0, '', '', 0),
(37, 0, 4, '26511754', '', '7f0dc8d986f704ea59574b3645677d29', '52577565@qq.com', '1405702502', '1405702502', '1', '221.198.190.6', '221.198.190.6', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406307302', 0, 0, 0, 'gdmpkw', 0, '', '', 0),
(38, 0, 4, '1234', '', '81dc9bdb52d04dc20036dbd8313ed055', '12312312@123123123.casd', '1405740994', '1405740994', '1', '113.249.39.234', '113.249.39.234', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406345794', 0, 0, 0, 'rjswnm', 0, '', '', 0),
(39, 0, 4, 'www', '', 'd785c99d298a4e9e6e13fe99e602ef42', 'h_ang_he@sina.cn', '1405747287', '1405747287', '1', '222.30.77.25', '222.30.77.25', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406352087', 0, 0, 0, 'tcfbgv', 0, '', '', 0),
(40, 0, 4, '123123', '13111112221', '4297f44b13955235245b2497399d7a93', 'ewrwer@sina.com', '1405790331', '1406086786', '1', '113.200.159.70', '61.164.211.202', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406395131', 0, 7, 0, 'ecjmaj', 0, '', '', 0),
(41, 0, 4, 'googoo', '13555555555', 'eed8cdc400dfd4ec85dff70a170066b7', 'hh@dd.com', '1405794202', '1405794202', '1', '27.25.124.211', '27.25.124.211', 0, 8, 0, 0, 0, 0, 0, 0, 0, '1406399002', 0, 0, 0, 'xscypw', 0, '', '', 0),
(42, 0, 4, 'admin111', '15222222222', 'd7d1faaf3d424efd932a1201c14ec8ca', '654321@qq.com', '1405826487', '1405826487', '1', '182.33.35.220', '182.33.35.220', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406431287', 0, 0, 0, 'zxznsd', 0, '', '', 0),
(43, 0, 4, 'z', '', '21c2e59531c8710156d34a3c30ac81d5', '56@QQ.COM', '1405840739', '1405840739', '1', '119.120.253.132', '119.120.253.132', 0, 8, 0, 0, 0, 0, 0, 0, 0, '1406445539', 0, 0, 0, 'ywejqd', 0, '', '', 0),
(44, 0, 4, '465456', '', 'b51e8dbebd4ba8a8f342190a4b9f08d7', '465@QQ.COM', '1405850673', '1405850673', '1', '106.120.188.79', '106.120.188.79', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406455473', 0, 0, 0, 'wefszy', 0, '', '', 0),
(45, 0, 4, 'cndent', '', '96e79218965eb72c92a549dd5a330112', '111@qq.com', '1405914016', '1405914016', '1', '27.212.129.156', '27.212.129.156', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406518816', 0, 0, 0, 'wcgfns', 0, '', '', 0),
(46, 0, 4, 'xiaowei8686', '', '7875408668ec2a5e6a3fbbe5c69f3917', '1283749302@qq.com', '1405937882', '1405937882', '1', '115.238.153.226', '115.238.153.226', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406542682', 0, 0, 0, 'sxgvbg', 0, '', '', 0),
(47, 0, 4, 'cepczkd', '', '9f30685ed2ccd72fd07aa156925a6d6f', 'zeng@imkd.net', '1405958009', '1405958009', '1', '210.22.62.132', '210.22.62.132', 13, 8, 0, 0, 1, 0, 0, 0, 0, '1406562810', 21, 0, 0, 'qrdzxd', 0, '', '', 0),
(48, 0, 4, 'zhoufei', '', 'f72a27150848d9ccda0dadb64ff09a8a', 'sadfasfd@163.com', '1405967049', '1405967049', '1', '114.254.122.179', '114.254.122.179', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406571849', 0, 0, 0, 'yxccch', 0, '', '', 0),
(49, 0, 4, 'bgg', '', '4297f44b13955235245b2497399d7a93', '549625775@163.com', '1405996091', '1405996091', '1', '183.8.113.94', '183.8.113.94', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406600891', 0, 0, 0, 'xhdjps', 0, '', '', 0),
(50, 0, 4, 'guandon', '', '811bd992031531c4dd1a4fd2d12c0c11', '234234@qq.com', '1406003633', '1406003633', '1', '117.67.211.141', '117.67.211.141', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406608433', 1, 0, 0, 'mavcje', 0, '', '', 0),
(51, 0, 4, 'verybeyond', '', '69664085a4aa77c3fe750bef0b471c38', 'werwer@qq.com', '1406006350', '1406006350', '1', '27.46.128.69', '27.46.128.69', 0, 8, 0, 0, 0, 0, 0, 0, 0, '1406611150', 0, 0, 0, 'rqprnj', 0, '', '', 0),
(52, 0, 4, 'gdcool', '', 'e10adc3949ba59abbe56e057f20f883e', 'sffyy@163.com', '1406007966', '1406007966', '1', '113.105.96.10', '113.105.96.10', 2, 8, 0, 0, 1, 0, 0, 0, 0, '1406612766', 1, 0, 0, 'azexux', 0, '', '', 0),
(53, 0, 4, '987', '', 'df6d2338b2b8fce1ec2f6dda0a630eb0', '987987865465@qq.com', '1406009465', '1406009465', '1', '106.120.188.78', '106.120.188.78', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406614265', 0, 0, 0, 'ymztaf', 0, '', '', 0),
(54, 0, 4, '12345678', '', '25d55ad283aa400af464c76d713c07ad', '12345678@qq.com', '1406010031', '1406010031', '1', '180.173.13.205', '180.173.13.205', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406614831', 0, 0, 0, 'zjtjxq', 0, '', '', 0),
(55, 0, 4, 'guang123123', '', '4297f44b13955235245b2497399d7a93', '123123@qq.com', '1406014985', '1406014985', '1', '58.20.96.11', '58.20.96.11', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406619785', 0, 0, 0, 'fudnrk', 0, '', '', 0),
(56, 0, 4, 'chaoshuhai', '', '2da20646ae198ed45c5369ade3264e94', '673833799@qq.com', '1406020992', '1406020992', '1', '124.235.189.23', '124.235.189.23', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406625792', 0, 0, 0, 'fmudfg', 0, '', '', 0),
(57, 0, 4, '369', '', '0c74b7f78409a4022a2c4c5a5ca3ee19', '369369@qq.com', '1406024079', '1406024079', '1', '106.120.188.78', '106.120.188.78', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406628879', 0, 0, 0, 'xwqwxa', 0, '', '', 0),
(58, 0, 4, 'guoshanbin', '', 'e10adc3949ba59abbe56e057f20f883e', '1992500@qq.com', '1406038056', '1406038056', '1', '106.116.141.202', '106.116.141.202', 0, 8, 0, 0, 0, 0, 0, 0, 0, '1406642856', 0, 0, 0, 'qfafcd', 0, '', '', 0),
(59, 0, 4, 'PAN123', '', 'e10adc3949ba59abbe56e057f20f883e', '2312@qq.com', '1406127421', '1406257644', '1', '124.205.129.98', '123.117.94.234', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406732221', 0, 7, 0, 'txksfy', 0, '', '', 0),
(60, 0, 4, 'haonan', '', 'c8837b23ff8aaa8a2dde915473ce0991', '98098@qq.com', '1406130721', '1406130721', '1', '1.182.68.202', '1.182.68.202', 8, 8, 0, 0, 1, 0, 0, 0, 0, '1406735521', 20, 0, 0, 'dwzftg', 0, '', '', 0),
(61, 0, 4, '7777777', '', '30e535568de1f9231e7d9df0f4a5a44d', '461118717@qq.com', '1406167298', '1406258544', '1', '59.174.207.91', '59.174.207.91', 6, 8, 0, 0, 1, 0, 0, 0, 0, '1406772098', 14, 7, 1192090, 'gzwevb', 0, '', '', 0),
(62, 0, 4, 'kfdwwxf', '', '66c870ef9b87f1e6a0c5d5c082c67bf2', '258515212@qq.com', '1406171469', '1406171469', '1', '182.96.245.244', '182.96.245.244', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406776269', 0, 0, 0, 'qrsbbj', 0, '', '', 0),
(63, 0, 4, 'ceshi123', '', '202cb962ac59075b964b07152d234b70', '15789@qq.com', '1406183716', '1406186861', '1', '1.196.114.157', '1.196.114.157', 0, 8, 0, 0, 1, 0, 0, 0, 0, '1406788516', 0, 7, 327843, 'fpwunx', 0, '', '', 0),
(64, 0, 4, 'xykj', '', '936b18881b17dd7711d4b6fe4cc96957', 'wanshixw@163.com', '1406188846', '1406188846', '1', '223.246.237.27', '223.246.237.27', 0, 7, 0, 0, 1, 0, 0, 0, 0, '1406793646', 0, 0, 0, 'egstzg', 0, '', '', 0),
(65, 0, 4, 'wolf', '', '96e79218965eb72c92a549dd5a330112', '1212@123l.com', '1406195859', '1406195859', '1', '59.49.19.109', '59.49.19.109', 0, 6, 0, 0, 0, 0, 0, 0, 0, '1406800659', 0, 0, 0, 'pdrexv', 0, '', '', 0),
(66, 0, 4, '1111111111', '', '96e79218965eb72c92a549dd5a330112', 'rfds@ff.dd', '1406201963', '1406201963', '1', '110.183.249.182', '110.183.249.182', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1406806763', 0, 0, 0, 'yqezge', 0, '', '', 0),
(67, 0, 4, 'chijince', '', '61a237ddcb45cc0a2f67ebc8c17511fe', 'abidu@qq.com', '1406208222', '1406208222', '1', '58.210.168.138', '58.210.168.138', 1, 6, 0, 0, 1, 0, 0, 0, 0, '1406813022', 1, 0, 60092, 'jnefxe', 0, '', '', 0),
(68, 0, 4, 'qqqqqq', '', '343b1c4a3ea721b2d640fc8700db0f36', 'dfsd@ff.gg', '1406216725', '1406216725', '1', '110.183.249.182', '110.183.249.182', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1406821525', 0, 0, 0, 'nurynu', 0, '', '', 0),
(69, 0, 4, 'a888888', '', '21218cca77804d2ba1922c33e0151105', '888@gfg.fg', '1406264154', '1406264154', '1', '42.227.166.79', '42.227.166.79', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1406868954', 0, 0, 0, 'qwmcwh', 0, '', '', 0),
(70, 0, 4, 'qusong0627', '', 'd3ec4e11aba8d689e4f2167e3886c635', '897459835@qq.com', '1406266821', '1406266821', '1', '61.184.90.77', '61.184.90.77', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1406871621', 0, 0, 0, 'ugffpf', 0, '', '', 0),
(71, 0, 4, 'isisjl', '', 'efec94f628fc147e8c97bcaf847bdc19', '74857485@qq.com', '1406310538', '1406310538', '1', '222.242.74.24', '222.242.74.24', 0, 6, 0, 0, 0, 0, 0, 0, 0, '1406915338', 0, 0, 0, 'nfqgjd', 0, '', '', 0),
(72, 0, 4, 'hz366', '', '96e79218965eb72c92a549dd5a330112', '1111111d@126.com', '1406336147', '1406336334', '1', '110.84.247.10', '110.84.247.10', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1406940947', 0, 7, 0, 'xcfvyj', 0, '', '', 0),
(73, 0, 4, '123123321', '', 'f5bb0c8de146c67b44babbf4e6584cc0', '111@11.11111', '1406361017', '1406361017', '1', '122.96.61.154', '122.96.61.154', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1406965817', 0, 0, 0, 'yrgseb', 0, '', '', 0),
(74, 0, 4, '77777777', '', '30e535568de1f9231e7d9df0f4a5a44d', '77777777@qq.com', '1406514628', '1406514628', '1', '121.23.118.60', '121.23.118.60', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1407119428', 0, 0, 0, 'rjkfga', 0, '', '', 0),
(75, 0, 4, 'ruanguofeng', '', '540f431eb3cf20e4ac5e3a39fba34750', 'ruanguofeng@163.com', '1406520946', '1406520946', '1', '106.36.75.204', '106.36.75.204', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1407125746', 0, 0, 0, 'bfscma', 0, '', '', 0),
(76, 0, 4, 'xrm003', '', 'b207ca6277230cbd5101c75eed125d63', 'admin@31ren.com', '1406724476', '1406791209', '1', '115.148.151.147', '115.148.151.147', 1, 6, 0, 0, 1, 0, 0, 0, 0, '1407329276', 12, 7, 0, 'nmvdwr', 0, '', '', 0),
(77, 0, 4, 'adfasdf', '', 'b4206b74b7563ec684336f054582605b', 'asf@qq.com', '1406775556', '1406775556', '1', '183.154.40.135', '183.154.40.135', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1407380356', 0, 0, 0, 'czgsyc', 0, '', '', 0),
(78, 0, 4, 'adsads', '', 'ba044acc38a5ff7df703fa20584a1d91', 'asdfaf@qq.com', '1406783723', '1406783723', '1', '183.154.40.135', '183.154.40.135', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1407388523', 0, 0, 0, 'vhvquu', 0, '', '', 0),
(79, 0, 4, 'sanbaosixi', '', '8a12ebd90443f96044284ed74c05cfb0', '6065697@qq.com', '1406867683', '1406871201', '1', '171.221.157.80', '171.221.157.80', 10, 6, 0, 0, 1, 0, 0, 0, 0, '1407472483', 20, 8, 31499, 'fzksaj', 0, '', '', 0),
(80, 0, 4, 'test2', '', 'ad0234829205b9033196ba818f7a872b', 'test2@qq.cc', '1406875270', '1406875270', '1', '119.179.52.18', '119.179.52.18', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1407480070', 0, 0, 0, 'qpdbpe', 100, '', '', 0),
(81, 0, 4, 'test121', '', 'f0cb60e4dfbba5674340ba95d21c3f04', 'test121@qq.com', '1406885161', '1406885586', '1', '119.179.52.18', '111.206.162.245', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1407489961', 0, 8, 0, 'dfytdq', 0, '', '', 0),
(82, 0, 4, 'wanhunet', '', 'e10adc3949ba59abbe56e057f20f883e', '459391625@qq.com', '1406887101', '1406887101', '1', '121.19.180.21', '121.19.180.21', 0, 6, 0, 0, 1, 0, 0, 0, 0, '1407491901', 0, 0, 0, 'tswgeh', 0, '', '', 0),
(83, 0, 4, 'kevenljx', '', 'a0d4a07b32b3ef560d9268570a476f00', '1370@163.com', '1406957666', '1406957666', '1', '112.90.239.147', '112.90.239.147', 0, 3, 0, 0, 0, 0, 0, 0, 0, '1407562466', 0, 0, 0, 'umyebs', 0, '', '', 0),
(84, 0, 4, 'test1231', '', '47666960d60479342eaaf6c0bd3f75ff', 'test1231@qq.cc', '1407030710', '1407030710', '1', '119.179.52.18', '119.179.52.18', 0, 3, 0, 0, 1, 0, 0, 0, 0, '1407635511', 0, 0, 0, 'xwfhud', 0, '', '', 0),
(85, 0, 4, 'test_wx', '', '09988fb29ee55a513d071d7c35530880', 'shenhong@zealdream.com', '1407229424', '1407296767', '1', '60.209.130.140', '58.96.170.208', 4, 3, 0, 0, 1, 0, 0, 0, 0, '1407402224', 50, 8, 104431, 'tacabr', 0, '', '', 0),
(86, 0, 4, 'chenyan', '', '6afd10c161e95e5ddc770b322e6f8c80', '838218491@qq.com', '1407232508', '1407232508', '1', '171.94.171.199', '171.94.171.199', 28, 3, 0, 0, 1, 0, 0, 0, 0, '1407405308', 47, 0, 910058, 'nscztz', 0, '', '', 0),
(87, 0, 4, 'text_wx1', '', 'e10adc3949ba59abbe56e057f20f883e', 'test@ttest.com', '1407245015', '1407245015', '1', '60.209.130.140', '60.209.130.140', 0, 0, 0, 0, 1, 0, 0, 0, 0, '1407417815', 0, 0, 62491, 'zmstjm', 0, '', '', 0),
(88, 0, 4, 'test_wx1', '', '09988fb29ee55a513d071d7c35530880', 'sfsd@jlj.cn', '1407245852', '1407245852', '1', '60.209.130.140', '60.209.130.140', 0, 0, 0, 0, 1, 0, 0, 0, 0, '1407418652', 0, 0, 104691, 'weuunm', 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_user_group`
--

CREATE TABLE IF NOT EXISTS `tp_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_user_group`
--

INSERT INTO `tp_user_group` (`id`, `taxisid`, `name`, `diynum`, `connectnum`, `iscopyright`, `activitynum`, `price`, `statistics_user`, `create_card_num`, `wechat_card_num`, `status`, `agentid`) VALUES
(1, 1, 'VIP0', 2000, 2000, 1, 0, 0, 0, 0, 1, 1, 0),
(2, 2, 'VIP1', 3000, 3000, 1, 1, 100, 0, 0, 1, 1, 0),
(3, 3, 'VIP2', 40000, 40000, 1, 2, 200, 0, 0, 1, 1, 0),
(4, 4, 'VIP3', 500000, 500000, 1, 3, 300, 0, 10000, 10, 1, 0),
(5, 5, '测试组', 10000, 10000, 0, 10000, 10, 0, 100, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_user_request`
--

CREATE TABLE IF NOT EXISTS `tp_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_user_request`
--

INSERT INTO `tp_user_request` (`id`, `token`, `uid`, `keyword`, `msgtype`, `time`) VALUES
(1, 'yorbbr1406463012', 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', '附近 电脑', 'text', 1406464156),
(2, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '附近酒店', 'text', 1407231176),
(3, 'qzembv1407229744', 'oM40BuImzFG46rasnGQt_rjK7f1Y', '120.383621,36.119431', 'location', 1407231185);

-- --------------------------------------------------------

--
-- 表的结构 `tp_vcard`
--

CREATE TABLE IF NOT EXISTS `tp_vcard` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_tel` varchar(100) DEFAULT NULL,
  `baiduapi` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `fax` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_vcard`
--

INSERT INTO `tp_vcard` (`id`, `token`, `company`, `company_tel`, `baiduapi`, `address`, `info`, `fax`) VALUES
(1, 'hgfgmt1404896579', '菲菲', '1313565', '', '大师的撒大', '份 份份', '1251515'),
(2, 'xtqgxk1406024082', '微软', '5637', '', '453543', '水电费', '53753');

-- --------------------------------------------------------

--
-- 表的结构 `tp_vcard_list`
--

CREATE TABLE IF NOT EXISTS `tp_vcard_list` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_vcard_list`
--

INSERT INTO `tp_vcard_list` (`id`, `token`, `name`, `image`, `tel`, `mobile`, `work`, `email`, `qq`, `sort`) VALUES
(1, 'hgfgmt1404896579', '反倒是飞', 'http://www.466777.com/tpl/static/attachment/icon/lovely/clock.png', '1313131232', '13566669999', '到店', '', '515151', 0),
(2, 'xtqgxk1406024082', '6', '', '', '', '', '', '', 0),
(3, 'vzohcb1406947236', 'liu', 'http://weixin.jihuodi.com/uploads/v/vzohcb1406947236/0/2/e/6/', '14788788774', '', '', '', '', 0),
(4, 'xbgzcp1407232534', 'cy', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/b/0/9/4/thumb_53e0b8602625a.jpg', '111111', '', '1111', '', '11111111', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_voiceresponse`
--

CREATE TABLE IF NOT EXISTS `tp_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_vote`
--

CREATE TABLE IF NOT EXISTS `tp_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL,
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL,
  `info` varchar(500) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `cknums` tinyint(3) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_vote`
--

INSERT INTO `tp_vote` (`id`, `title`, `keyword`, `token`, `type`, `picurl`, `showpic`, `info`, `statdate`, `enddate`, `display`, `cknums`, `status`, `count`) VALUES
(1, '投票', '投票', 'xshtyn1403100790', 'text', '', 1, '投票', 1403020800, 1403193600, 0, 2, 1, 0),
(2, '哪种菜好吃', '投票', 'xbgzcp1407232534', 'text', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/f/5/b/4/thumb_53e0bc4b9c671.jpg', 1, '111', 1407081600, 1407945600, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_vote_item`
--

CREATE TABLE IF NOT EXISTS `tp_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_vote_item`
--

INSERT INTO `tp_vote_item` (`id`, `vid`, `item`, `vcount`, `startpicurl`, `tourl`, `rank`) VALUES
(1, 1, '喜欢', 5, '', '', 1),
(2, 1, '不喜欢', 5, '', '', 2),
(3, 2, '1', 1, '', '', 1),
(4, 2, '2', 0, '', '', 1),
(5, 2, '3', 0, '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_vote_record`
--

CREATE TABLE IF NOT EXISTS `tp_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_vote_record`
--

INSERT INTO `tp_vote_record` (`id`, `item_id`, `vid`, `wecha_id`, `touched`, `touch_time`, `token`) VALUES
(1, '3', 2, 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 1, 1407237403, 'xbgzcp1407232534');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall`
--

CREATE TABLE IF NOT EXISTS `tp_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) NOT NULL DEFAULT '',
  `background` varchar(100) NOT NULL DEFAULT '',
  `endbackground` varchar(100) NOT NULL DEFAULT '',
  `isopen` tinyint(1) NOT NULL DEFAULT '1',
  `firstprizename` varchar(50) NOT NULL DEFAULT '',
  `firstprizepic` varchar(100) NOT NULL DEFAULT '',
  `firstprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `secondprizename` varchar(50) NOT NULL DEFAULT '',
  `secondprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `secondprizepic` varchar(100) DEFAULT NULL,
  `thirdprizename` varchar(50) NOT NULL DEFAULT '',
  `thirdprizepic` varchar(100) NOT NULL DEFAULT '',
  `thirdprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizename` varchar(50) NOT NULL DEFAULT '',
  `fourthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizepic` varchar(100) NOT NULL DEFAULT '',
  `fifthprizename` varchar(50) NOT NULL DEFAULT '',
  `fifthprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `fifthprizepic` varchar(100) NOT NULL DEFAULT '',
  `sixthprizename` varchar(50) NOT NULL DEFAULT '',
  `sixthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `sixthprizepic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_wall`
--

INSERT INTO `tp_wall` (`id`, `token`, `time`, `logo`, `title`, `startbackground`, `background`, `endbackground`, `isopen`, `firstprizename`, `firstprizepic`, `firstprizecount`, `secondprizename`, `secondprizecount`, `secondprizepic`, `thirdprizename`, `thirdprizepic`, `thirdprizecount`, `fourthprizename`, `fourthprizecount`, `fourthprizepic`, `fifthprizename`, `fifthprizecount`, `fifthprizepic`, `sixthprizename`, `sixthprizecount`, `sixthprizepic`, `keyword`, `qrcode`) VALUES
(1, 'ekfdng1401977502', 1402032394, 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '我在微现场', '', 'http://www.466777.com/tpl/static/attachment/focus/default/6.jpg', '', 1, '', '', 1, '', 1, '', '', '', 1, '', 0, '', '', 0, '', '', 0, '', '微现场', ''),
(2, 'ooeiuv1402737849', 1402737925, 'DSA', 'DSA', 'DS', 'SA', 'DSA', 1, 'DSAD', 'DS', 0, 'DSAD', 0, 'DSA', 'AD', 'DSA', 0, '', 0, '', '', 0, '', '', 0, '', 'DSA', 'DSA'),
(3, 'hgfgmt1404896579', 1405559413, '', '微信墙', '', '', '', 1, '123', '', 123, '123123', 1231, '', '123213123', '', 123, '', 0, '', '', 0, '', '', 0, '', '上墙', ''),
(4, 'xjclzx1405958021', 1405958184, '', '晚会', '', '', '', 1, '', '', 0, '', 0, '', '', '', 0, '', 0, '', '', 0, '', '', 0, '', '111', ''),
(5, 'xctvth1406867781', 1406868429, '', '四喜庆典', '', '', '', 1, '', '', 0, '', 0, '', '', '', 0, '', 0, '', '', 0, '', '', 0, '', '庆典', ''),
(6, 'xbgzcp1407232534', 1407239384, 'http://weixin.jihuodi.com/tpl/static/attachment/background/view/4.jpg', 'weixin', 'http://weixin.jihuodi.com/tpl/static/attachment/background/view/4.jpg', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/6/9/0/d/thumb_53e0c12fe8b25.jpg', 'http://weixin.jihuodi.com/tpl/static/attachment/background/view/../canyin/1.jpg', 1, '1', '', 1, '1', 1, '', '1', '', 1, '', 0, '', '', 0, '', '', 0, '', 'wxq', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_member`
--

CREATE TABLE IF NOT EXISTS `tp_wall_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `act_id` int(11) NOT NULL,
  `act_type` enum('1','2','3') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`wallid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_wall_member`
--

INSERT INTO `tp_wall_member` (`id`, `token`, `wecha_id`, `portrait`, `nickname`, `mp`, `time`, `wallid`, `status`, `sex`, `act_id`, `act_type`) VALUES
(1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', 'http://www.466777.com/tpl/static/portrait/2.jpg', '衷国强', '13511350189', 1402033372, 1, 1, 0, 0, '1'),
(2, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', 'http://www.466777.com/tpl/static/portrait/1.jpg', '', '13264490168', 1405559824, 3, 1, 0, 0, '1'),
(3, 'xjclzx1405958021', 'oWkrajoQfdtqBXKTUm94pwJeHPbY', 'http://www.466777.com/tpl/static/portrait/1.jpg', '', '15974206868', 1405958637, 4, 1, 0, 0, '1'),
(4, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', 'http://www.466777.com/tpl/static/portrait/1.jpg', '', '15974206868', 1405958755, 4, 1, 0, 0, '1'),
(5, 'xctvth1406867781', 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', '', '', '', 1406868491, 5, 1, 0, 0, '1');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_message`
--

CREATE TABLE IF NOT EXISTS `tp_wall_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_wall_message`
--

INSERT INTO `tp_wall_message` (`id`, `uid`, `wallid`, `token`, `wecha_id`, `content`, `picture`, `time`, `is_scene`) VALUES
(1, 1, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '你好啊', '', 1402033420, '0'),
(2, 1, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '这是什么情况啊', '', 1402033452, '0'),
(3, 1, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '上来了噢', '', 1402033470, '0'),
(4, 1, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '你好', '', 1402033480, '0'),
(5, 1, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '哈哈', '', 1402033492, '0'),
(6, 1, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '何俊伶，跟你对话', '', 1402033547, '0'),
(7, 1, 1, 'ekfdng1401977502', 'o48e9t55kSHy8cNLYPkhzCxtriG0', '你好电脑', '', 1402060937, '0'),
(8, 2, 3, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '大家好', '', 1405559863, '0'),
(9, 2, 3, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '我上电视了', '', 1405559876, '0'),
(10, 2, 3, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '呵呵', '', 1405559885, '0'),
(11, 2, 3, 'hgfgmt1404896579', 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', '2048加强版', '', 1405560125, '0'),
(12, 4, 4, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', '十二', '', 1405958782, '0'),
(13, 4, 4, 'xjclzx1405958021', 'oWkrajoZhCK259lLKSwHDjkaPrqY', '什么？', '', 1405958794, '0');

-- --------------------------------------------------------

--
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

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_prize_record`
--

CREATE TABLE IF NOT EXISTS `tp_wall_prize_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`prize`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_wall_prize_record`
--

INSERT INTO `tp_wall_prize_record` (`id`, `uid`, `wallid`, `prize`, `time`, `sceneid`) VALUES
(1, 1, 1, 3, 1402033646, 0);

-- --------------------------------------------------------

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

-- --------------------------------------------------------

--
-- 表的结构 `tp_weather`
--

CREATE TABLE IF NOT EXISTS `tp_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2502 ;

--
-- 转存表中的数据 `tp_weather`
--

INSERT INTO `tp_weather` (`id`, `code`, `name`) VALUES
(1, '101010100', '北京'),
(2, '101010200', '海淀'),
(3, '101010400', '顺义'),
(4, '101010500', '怀柔'),
(5, '101010600', '通州'),
(6, '101010700', '昌平'),
(7, '101010800', '延庆'),
(8, '101010900', '丰台'),
(9, '101011000', '石景山'),
(10, '101011100', '大兴'),
(11, '101011200', '房山'),
(12, '101011300', '密云'),
(13, '101011400', '门头沟'),
(14, '101011500', '平谷'),
(15, '101020100', '上海'),
(16, '101020200', '闵行'),
(17, '101020300', '宝山'),
(18, '101020500', '嘉定'),
(19, '101020600', '浦东南汇'),
(20, '101020700', '金山'),
(21, '101020800', '青浦'),
(22, '101020900', '松江'),
(23, '101021000', '奉贤'),
(24, '101021100', '崇明'),
(25, '101021300', '浦东'),
(26, '101030200', '武清'),
(27, '101030300', '宝坻'),
(28, '101030400', '东丽'),
(29, '101030500', '西青'),
(30, '101030600', '北辰'),
(31, '101030700', '宁河'),
(32, '101030800', '汉沽'),
(33, '101030900', '静海'),
(34, '101031000', '津南'),
(35, '101031100', '塘沽'),
(36, '101031200', '大港'),
(37, '101031400', '蓟县'),
(38, '101040100', '重庆'),
(39, '101040200', '永川'),
(40, '101040300', '合川'),
(41, '101040400', '南川'),
(42, '101040500', '江津'),
(43, '101040600', '万盛'),
(44, '101040700', '渝北'),
(45, '101040800', '北碚'),
(46, '101041000', '长寿'),
(47, '101041100', '黔江'),
(48, '101041300', '万州'),
(49, '101041400', '涪陵'),
(50, '101041500', '开县'),
(51, '101041600', '城口'),
(52, '101041700', '云阳'),
(53, '101041800', '巫溪'),
(54, '101041900', '奉节'),
(55, '101042000', '巫山'),
(56, '101042100', '潼南'),
(57, '101042200', '垫江'),
(58, '101042300', '梁平'),
(59, '101042400', '忠县'),
(60, '101042500', '石柱'),
(61, '101042600', '大足'),
(62, '101042700', '荣昌'),
(63, '101042800', '铜梁'),
(64, '101042900', '璧山'),
(65, '101043000', '丰都'),
(66, '101043100', '武隆'),
(67, '101043200', '彭水'),
(68, '101043300', '綦江'),
(69, '101043400', '酉阳'),
(70, '101043600', '秀山'),
(71, '101050101', '哈尔滨'),
(72, '101050102', '双城'),
(73, '101050103', '呼兰'),
(74, '101050104', '阿城'),
(75, '101050105', '宾县'),
(76, '101050106', '依兰'),
(77, '101050107', '巴彦'),
(78, '101050108', '通河'),
(79, '101050109', '方正'),
(80, '101050110', '延寿'),
(81, '101050111', '尚志'),
(82, '101050112', '五常'),
(83, '101050113', '木兰'),
(84, '101050201', '齐齐哈尔'),
(85, '101050202', '讷河'),
(86, '101050203', '龙江'),
(87, '101050204', '甘南'),
(88, '101050205', '富裕'),
(89, '101050206', '依安'),
(90, '101050207', '拜泉'),
(91, '101050208', '克山'),
(92, '101050209', '克东'),
(93, '101050210', '泰来'),
(94, '101050301', '牡丹江'),
(95, '101050302', '海林'),
(96, '101050303', '穆棱'),
(97, '101050304', '林口'),
(98, '101050305', '绥芬河'),
(99, '101050306', '宁安'),
(100, '101050307', '东宁'),
(101, '101050401', '佳木斯'),
(102, '101050402', '汤原'),
(103, '101050403', '抚远'),
(104, '101050404', '桦川'),
(105, '101050405', '桦南'),
(106, '101050406', '同江'),
(107, '101050407', '富锦'),
(108, '101050501', '绥化'),
(109, '101050502', '肇东'),
(110, '101050503', '安达'),
(111, '101050504', '海伦'),
(112, '101050505', '明水'),
(113, '101050506', '望奎'),
(114, '101050507', '兰西'),
(115, '101050508', '青冈'),
(116, '101050509', '庆安'),
(117, '101050510', '绥棱'),
(118, '101050601', '黑河'),
(119, '101050602', '嫩江'),
(120, '101050603', '孙吴'),
(121, '101050604', '逊克'),
(122, '101050605', '五大连池'),
(123, '101050606', '北安'),
(124, '101050701', '大兴安岭'),
(125, '101050702', '塔河'),
(126, '101050703', '漠河'),
(127, '101050704', '呼玛'),
(128, '101050801', '伊春'),
(129, '101050804', '铁力'),
(130, '101050805', '嘉荫'),
(131, '101050901', '大庆'),
(132, '101050902', '林甸'),
(133, '101050903', '肇州'),
(134, '101050904', '肇源'),
(135, '101050905', '杜蒙'),
(136, '101051002', '七台河'),
(137, '101051003', '勃利'),
(138, '101051101', '鸡西'),
(139, '101051102', '虎林'),
(140, '101051103', '密山'),
(141, '101051104', '鸡东'),
(142, '101051201', '鹤岗'),
(143, '101051202', '绥滨'),
(144, '101051203', '萝北'),
(145, '101051301', '双鸭山'),
(146, '101051302', '集贤'),
(147, '101051303', '宝清'),
(148, '101051304', '饶河'),
(149, '101051305', '友谊'),
(150, '101060101', '长春'),
(151, '101060102', '农安'),
(152, '101060103', '德惠'),
(153, '101060104', '九台'),
(154, '101060105', '榆树'),
(155, '101060201', '吉林'),
(156, '101060202', '舒兰'),
(157, '101060203', '永吉'),
(158, '101060204', '蛟河'),
(159, '101060205', '磐石'),
(160, '101060206', '桦甸'),
(161, '101060302', '敦化'),
(162, '101060303', '安图'),
(163, '101060304', '汪清'),
(164, '101060305', '和龙'),
(165, '101060307', '龙井'),
(166, '101060308', '珲春'),
(167, '101060309', '图们'),
(168, '101060312', '延吉'),
(169, '101060401', '四平'),
(170, '101060402', '双辽'),
(171, '101060403', '梨树'),
(172, '101060404', '公主岭'),
(173, '101060405', '伊通'),
(174, '101060501', '通化'),
(175, '101060502', '梅河口'),
(176, '101060503', '柳河'),
(177, '101060504', '辉南'),
(178, '101060505', '集安'),
(179, '101060601', '白城'),
(180, '101060602', '洮南'),
(181, '101060603', '大安'),
(182, '101060604', '镇赉'),
(183, '101060605', '通榆'),
(184, '101060701', '辽源'),
(185, '101060702', '东丰'),
(186, '101060703', '东辽'),
(187, '101060801', '松原'),
(188, '101060802', '乾安'),
(189, '101060803', '前郭'),
(190, '101060804', '长岭'),
(191, '101060805', '扶余'),
(192, '101060901', '白山'),
(193, '101060902', '靖宇'),
(194, '101060903', '临江'),
(195, '101060905', '长白'),
(196, '101060906', '抚松'),
(197, '101060907', '江源'),
(198, '101070101', '沈阳'),
(199, '101070103', '辽中'),
(200, '101070104', '康平'),
(201, '101070105', '法库'),
(202, '101070106', '新民'),
(203, '101070201', '大连'),
(204, '101070202', '瓦房店'),
(205, '101070204', '普兰店'),
(206, '101070206', '长海'),
(207, '101070207', '庄河'),
(208, '101070301', '鞍山'),
(209, '101070302', '台安'),
(210, '101070303', '岫岩'),
(211, '101070304', '海城'),
(212, '101070401', '抚顺'),
(213, '101070402', '新宾'),
(214, '101070403', '清原'),
(215, '101070501', '本溪'),
(216, '101070504', '桓仁'),
(217, '101070601', '丹东'),
(218, '101070602', '凤城'),
(219, '101070603', '宽甸'),
(220, '101070604', '东港'),
(221, '101070701', '锦州'),
(222, '101070702', '凌海'),
(223, '101070704', '义县'),
(224, '101070705', '黑山'),
(225, '101070706', '北镇'),
(226, '101070801', '营口'),
(227, '101070802', '大石桥'),
(228, '101070803', '盖州'),
(229, '101070901', '阜新'),
(230, '101070902', '彰武'),
(231, '101071001', '辽阳'),
(232, '101071003', '灯塔'),
(233, '101071004', '弓长岭'),
(234, '101071101', '铁岭'),
(235, '101071102', '开原'),
(236, '101071103', '昌图'),
(237, '101071104', '西丰'),
(238, '101071105', '调兵山'),
(239, '101071201', '朝阳'),
(240, '101071203', '凌源'),
(241, '101071204', '喀左'),
(242, '101071205', '北票'),
(243, '101071207', '建平'),
(244, '101071301', '盘锦'),
(245, '101071302', '大洼'),
(246, '101071303', '盘山'),
(247, '101071401', '葫芦岛'),
(248, '101071402', '建昌'),
(249, '101071403', '绥中'),
(250, '101071404', '兴城'),
(251, '101080101', '呼和浩特'),
(252, '101080102', '土左'),
(253, '101080103', '托克托'),
(254, '101080104', '和林格尔'),
(255, '101080105', '清水河'),
(256, '101080107', '武川'),
(257, '101080201', '包头'),
(258, '101080202', '白云鄂博'),
(259, '101080204', '土右'),
(260, '101080205', '固阳'),
(261, '101080206', '达茂'),
(262, '101080301', '乌海'),
(263, '101080401', '乌兰察布'),
(264, '101080402', '卓资'),
(265, '101080403', '化德'),
(266, '101080404', '商都'),
(267, '101080406', '兴和'),
(268, '101080407', '凉城'),
(269, '101080408', '察右前'),
(270, '101080409', '察右中'),
(271, '101080410', '察右后'),
(272, '101080411', '四子王'),
(273, '101080412', '丰镇'),
(274, '101080501', '通辽'),
(275, '101080503', '科左中'),
(276, '101080504', '科左后'),
(277, '101080506', '开鲁'),
(278, '101080507', '库伦'),
(279, '101080508', '奈曼'),
(280, '101080509', '扎鲁特'),
(281, '101080601', '赤峰'),
(282, '101080603', '阿鲁'),
(283, '101080605', '巴林左'),
(284, '101080606', '巴林右'),
(285, '101080607', '林西'),
(286, '101080608', '克什'),
(287, '101080609', '翁牛特'),
(288, '101080611', '喀喇沁'),
(289, '101080613', '宁城'),
(290, '101080614', '敖汉'),
(291, '101080701', '鄂尔多斯'),
(292, '101080703', '达拉特'),
(293, '101080704', '准格尔'),
(294, '101080706', '河南'),
(295, '101080708', '鄂托克'),
(296, '101080709', '杭锦'),
(297, '101080710', '乌审'),
(298, '101080711', '伊金霍洛'),
(299, '101080801', '巴彦淖尔'),
(300, '101080802', '五原'),
(301, '101080803', '磴口'),
(302, '101080804', '乌前'),
(303, '101080806', '乌中'),
(304, '101080807', '乌后'),
(305, '101080810', '杭锦后'),
(306, '101080901', '锡林浩特'),
(307, '101080903', '二连浩特'),
(308, '101080904', '阿巴嘎'),
(309, '101080906', '苏左'),
(310, '101080907', '苏右'),
(311, '101080909', '东乌'),
(312, '101080910', '西乌'),
(313, '101080911', '太仆寺'),
(314, '101080912', '镶黄'),
(315, '101080913', '正镶白'),
(316, '101080914', '正蓝'),
(317, '101080915', '多伦'),
(318, '101081000', '呼伦贝尔'),
(319, '101081001', '海拉尔'),
(320, '101081003', '阿荣'),
(321, '101081004', '莫力达瓦'),
(322, '101081005', '鄂伦春'),
(323, '101081006', '鄂温克'),
(324, '101081007', '陈巴尔虎'),
(325, '101081008', '新左'),
(326, '101081009', '新右'),
(327, '101081010', '满洲里'),
(328, '101081011', '牙克石'),
(329, '101081012', '扎兰屯'),
(330, '101081014', '额尔古纳'),
(331, '101081015', '根河'),
(332, '101081101', '乌兰浩特'),
(333, '101081102', '阿尔山'),
(334, '101081103', '科右中'),
(335, '101081105', '扎赉特'),
(336, '101081107', '突泉'),
(337, '101081108', '霍林郭勒'),
(338, '101081109', '科右前'),
(339, '101081201', '阿拉善'),
(340, '101081202', '阿右'),
(341, '101081203', '额济纳'),
(342, '101090101', '石家庄'),
(343, '101090102', '井陉'),
(344, '101090103', '正定'),
(345, '101090104', '栾城'),
(346, '101090105', '行唐'),
(347, '101090106', '灵寿'),
(348, '101090107', '高邑'),
(349, '101090108', '深泽'),
(350, '101090109', '赞皇'),
(351, '101090110', '无极'),
(352, '101090111', '平山'),
(353, '101090112', '元氏'),
(354, '101090113', '赵县'),
(355, '101090114', '辛集'),
(356, '101090115', '藁城'),
(357, '101090116', '晋州'),
(358, '101090117', '新乐'),
(359, '101090118', '鹿泉'),
(360, '101090201', '保定'),
(361, '101090202', '满城'),
(362, '101090203', '阜平'),
(363, '101090204', '徐水'),
(364, '101090205', '唐县'),
(365, '101090206', '高阳'),
(366, '101090207', '容城'),
(367, '101090209', '涞源'),
(368, '101090210', '望都'),
(369, '101090211', '安新'),
(370, '101090212', '易县'),
(371, '101090214', '曲阳'),
(372, '101090215', '蠡县'),
(373, '101090216', '顺平'),
(374, '101090217', '雄县'),
(375, '101090218', '涿州'),
(376, '101090219', '定州'),
(377, '101090220', '安国'),
(378, '101090221', '高碑店'),
(379, '101090222', '涞水'),
(380, '101090223', '定兴'),
(381, '101090224', '清苑'),
(382, '101090225', '博野'),
(383, '101090301', '张家口'),
(384, '101090302', '宣化'),
(385, '101090303', '张北'),
(386, '101090304', '康保'),
(387, '101090305', '沽源'),
(388, '101090306', '尚义'),
(389, '101090307', '蔚县'),
(390, '101090308', '阳原'),
(391, '101090309', '怀安'),
(392, '101090310', '万全'),
(393, '101090311', '怀来'),
(394, '101090312', '涿鹿'),
(395, '101090313', '赤城'),
(396, '101090314', '崇礼'),
(397, '101090402', '承德'),
(398, '101090404', '兴隆'),
(399, '101090405', '平泉'),
(400, '101090406', '滦平'),
(401, '101090407', '隆化'),
(402, '101090408', '丰宁'),
(403, '101090409', '宽城'),
(404, '101090410', '围场'),
(405, '101090501', '唐山'),
(406, '101090502', '丰南'),
(407, '101090503', '丰润'),
(408, '101090504', '滦县'),
(409, '101090505', '滦南'),
(410, '101090506', '乐亭'),
(411, '101090507', '迁西'),
(412, '101090508', '玉田'),
(413, '101090509', '唐海'),
(414, '101090510', '遵化'),
(415, '101090511', '迁安'),
(416, '101090512', '曹妃甸'),
(417, '101090601', '廊坊'),
(418, '101090602', '固安'),
(419, '101090603', '永清'),
(420, '101090604', '香河'),
(421, '101090605', '大城'),
(422, '101090606', '文安'),
(423, '101090607', '大厂'),
(424, '101090608', '霸州'),
(425, '101090609', '三河'),
(426, '101090701', '沧州'),
(427, '101090702', '青县'),
(428, '101090703', '东光'),
(429, '101090704', '海兴'),
(430, '101090705', '盐山'),
(431, '101090706', '肃宁'),
(432, '101090707', '南皮'),
(433, '101090708', '吴桥'),
(434, '101090709', '献县'),
(435, '101090710', '孟村'),
(436, '101090711', '泊头'),
(437, '101090712', '任丘'),
(438, '101090713', '黄骅'),
(439, '101090714', '河间'),
(440, '101090716', '沧县'),
(441, '101090801', '衡水'),
(442, '101090802', '枣强'),
(443, '101090803', '武邑'),
(444, '101090804', '武强'),
(445, '101090805', '饶阳'),
(446, '101090806', '安平'),
(447, '101090807', '故城'),
(448, '101090808', '景县'),
(449, '101090809', '阜城'),
(450, '101090810', '冀州'),
(451, '101090811', '深州'),
(452, '101090901', '邢台'),
(453, '101090902', '临城'),
(454, '101090905', '柏乡'),
(455, '101090906', '隆尧'),
(456, '101090907', '南和'),
(457, '101090908', '宁晋'),
(458, '101090909', '巨鹿'),
(459, '101090910', '新河'),
(460, '101090911', '广宗'),
(461, '101090912', '平乡'),
(462, '101090913', '威县'),
(463, '101090914', '清河'),
(464, '101090915', '临西'),
(465, '101090916', '南宫'),
(466, '101090917', '沙河'),
(467, '101090918', '任县'),
(468, '101090919', '内丘'),
(469, '101091001', '邯郸'),
(470, '101091002', '峰峰矿'),
(471, '101091003', '临漳'),
(472, '101091004', '成安'),
(473, '101091005', '大名'),
(474, '101091006', '涉县'),
(475, '101091007', '磁县'),
(476, '101091008', '肥乡'),
(477, '101091009', '永年'),
(478, '101091010', '邱县'),
(479, '101091011', '鸡泽'),
(480, '101091012', '广平'),
(481, '101091013', '馆陶'),
(482, '101091014', '魏县'),
(483, '101091015', '曲周'),
(484, '101091016', '武安'),
(485, '101091101', '秦皇岛'),
(486, '101091102', '青龙'),
(487, '101091103', '昌黎'),
(488, '101091104', '抚宁'),
(489, '101091105', '卢龙'),
(490, '101100101', '太原'),
(491, '101100102', '清徐'),
(492, '101100103', '阳曲'),
(493, '101100104', '娄烦'),
(494, '101100105', '古交'),
(495, '101100201', '大同'),
(496, '101100202', '阳高'),
(497, '101100204', '天镇'),
(498, '101100205', '广灵'),
(499, '101100206', '灵丘'),
(500, '101100207', '浑源'),
(501, '101100208', '左云'),
(502, '101100301', '阳泉'),
(503, '101100302', '盂县'),
(504, '101100303', '平定'),
(505, '101100401', '晋中'),
(506, '101100403', '榆社'),
(507, '101100404', '左权'),
(508, '101100405', '和顺'),
(509, '101100406', '昔阳'),
(510, '101100407', '寿阳'),
(511, '101100408', '太谷'),
(512, '101100409', '祁县'),
(513, '101100410', '平遥'),
(514, '101100411', '灵石'),
(515, '101100412', '介休'),
(516, '101100501', '长治'),
(517, '101100502', '黎城'),
(518, '101100503', '屯留'),
(519, '101100504', '潞城'),
(520, '101100505', '襄垣'),
(521, '101100506', '平顺'),
(522, '101100507', '武乡'),
(523, '101100508', '沁县'),
(524, '101100509', '长子'),
(525, '101100510', '沁源'),
(526, '101100511', '壶关'),
(527, '101100601', '晋城'),
(528, '101100602', '沁水'),
(529, '101100603', '阳城'),
(530, '101100604', '陵川'),
(531, '101100605', '高平'),
(532, '101100606', '泽州'),
(533, '101100701', '临汾'),
(534, '101100702', '曲沃'),
(535, '101100703', '永和'),
(536, '101100704', '隰县'),
(537, '101100705', '大宁'),
(538, '101100706', '吉县'),
(539, '101100707', '襄汾'),
(540, '101100708', '蒲县'),
(541, '101100709', '汾西'),
(542, '101100710', '洪洞'),
(543, '101100711', '霍州'),
(544, '101100712', '乡宁'),
(545, '101100713', '翼城'),
(546, '101100714', '侯马'),
(547, '101100715', '浮山'),
(548, '101100716', '安泽'),
(549, '101100717', '古县'),
(550, '101100801', '运城'),
(551, '101100802', '临猗'),
(552, '101100803', '稷山'),
(553, '101100804', '万荣'),
(554, '101100805', '河津'),
(555, '101100806', '新绛'),
(556, '101100807', '绛县'),
(557, '101100808', '闻喜'),
(558, '101100809', '垣曲'),
(559, '101100810', '永济'),
(560, '101100811', '芮城'),
(561, '101100812', '夏县'),
(562, '101100813', '平陆'),
(563, '101100901', '朔州'),
(564, '101100903', '山阴'),
(565, '101100904', '右玉'),
(566, '101100905', '应县'),
(567, '101100906', '怀仁'),
(568, '101101001', '忻州'),
(569, '101101002', '定襄'),
(570, '101101003', '五台'),
(571, '101101004', '河曲'),
(572, '101101005', '偏关'),
(573, '101101006', '神池'),
(574, '101101007', '宁武'),
(575, '101101008', '代县'),
(576, '101101009', '繁峙'),
(577, '101101011', '保德'),
(578, '101101012', '静乐'),
(579, '101101013', '岢岚'),
(580, '101101014', '五寨'),
(581, '101101015', '原平'),
(582, '101101100', '吕梁'),
(583, '101101101', '离石'),
(584, '101101102', '临县'),
(585, '101101103', '兴县'),
(586, '101101104', '岚县'),
(587, '101101105', '柳林'),
(588, '101101106', '石楼'),
(589, '101101107', '方山'),
(590, '101101108', '交口'),
(591, '101101109', '中阳'),
(592, '101101110', '孝义'),
(593, '101101111', '汾阳'),
(594, '101101112', '文水'),
(595, '101101113', '交城'),
(596, '101110101', '西安'),
(597, '101110102', '长安'),
(598, '101110104', '蓝田'),
(599, '101110105', '周至'),
(600, '101110106', '户县'),
(601, '101110107', '高陵'),
(602, '101110200', '咸阳'),
(603, '101110201', '三原'),
(604, '101110202', '礼泉'),
(605, '101110203', '永寿'),
(606, '101110204', '淳化'),
(607, '101110205', '泾阳'),
(608, '101110206', '武功'),
(609, '101110207', '乾县'),
(610, '101110208', '彬县'),
(611, '101110209', '长武'),
(612, '101110210', '旬邑'),
(613, '101110211', '兴平'),
(614, '101110300', '延安'),
(615, '101110401', '榆林'),
(616, '101110402', '府谷'),
(617, '101110403', '神木'),
(618, '101110404', '佳县'),
(619, '101110405', '定边'),
(620, '101110406', '靖边'),
(621, '101110407', '横山'),
(622, '101110408', '米脂'),
(623, '101110409', '子洲'),
(624, '101110410', '绥德'),
(625, '101110411', '吴堡'),
(626, '101110412', '清涧'),
(627, '101110501', '渭南'),
(628, '101110502', '华县'),
(629, '101110503', '潼关'),
(630, '101110504', '大荔'),
(631, '101110505', '白水'),
(632, '101110506', '富平'),
(633, '101110507', '蒲城'),
(634, '101110508', '澄城'),
(635, '101110509', '合阳'),
(636, '101110510', '韩城'),
(637, '101110511', '华阴'),
(638, '101110601', '商洛'),
(639, '101110602', '洛南'),
(640, '101110603', '柞水'),
(641, '101110604', '商州'),
(642, '101110605', '镇安'),
(643, '101110606', '丹凤'),
(644, '101110607', '商南'),
(645, '101110608', '山阳'),
(646, '101110701', '安康'),
(647, '101110702', '紫阳'),
(648, '101110703', '石泉'),
(649, '101110704', '汉阴'),
(650, '101110705', '旬阳'),
(651, '101110706', '岚皋'),
(652, '101110707', '平利'),
(653, '101110708', '白河'),
(654, '101110709', '镇坪'),
(655, '101110710', '宁陕'),
(656, '101110801', '汉中'),
(657, '101110802', '略阳'),
(658, '101110803', '勉县'),
(659, '101110804', '留坝'),
(660, '101110805', '洋县'),
(661, '101110806', '城固'),
(662, '101110807', '西乡'),
(663, '101110808', '佛坪'),
(664, '101110809', '宁强'),
(665, '101110810', '南郑'),
(666, '101110811', '镇巴'),
(667, '101110901', '宝鸡'),
(668, '101110903', '千阳'),
(669, '101110904', '麟游'),
(670, '101110905', '岐山'),
(671, '101110906', '凤翔'),
(672, '101110907', '扶风'),
(673, '101110908', '眉县'),
(674, '101110909', '太白'),
(675, '101110910', '凤县'),
(676, '101110911', '陇县'),
(677, '101111001', '铜川'),
(678, '101111003', '宜君'),
(679, '101111101', '杨凌'),
(680, '101120101', '济南'),
(681, '101120103', '商河'),
(682, '101120104', '章丘'),
(683, '101120105', '平阴'),
(684, '101120106', '济阳'),
(685, '101120201', '青岛'),
(686, '101120204', '即墨'),
(687, '101120205', '胶州'),
(688, '101120206', '胶南'),
(689, '101120207', '莱西'),
(690, '101120208', '平度'),
(691, '101120301', '淄博'),
(692, '101120304', '高青'),
(693, '101120306', '沂源'),
(694, '101120307', '桓台'),
(695, '101120401', '德州'),
(696, '101120402', '武城'),
(697, '101120403', '临邑'),
(698, '101120404', '陵县'),
(699, '101120405', '齐河'),
(700, '101120406', '乐陵'),
(701, '101120407', '庆云'),
(702, '101120408', '平原'),
(703, '101120409', '宁津'),
(704, '101120410', '夏津'),
(705, '101120411', '禹城'),
(706, '101120501', '烟台'),
(707, '101120502', '莱州'),
(708, '101120503', '长岛'),
(709, '101120504', '蓬莱'),
(710, '101120505', '龙口'),
(711, '101120506', '招远'),
(712, '101120507', '栖霞'),
(713, '101120510', '莱阳'),
(714, '101120511', '海阳'),
(715, '101120601', '潍坊'),
(716, '101120602', '青州'),
(717, '101120603', '寿光'),
(718, '101120604', '临朐'),
(719, '101120605', '昌乐'),
(720, '101120606', '昌邑'),
(721, '101120607', '安丘'),
(722, '101120608', '高密'),
(723, '101120609', '诸城'),
(724, '101120701', '济宁'),
(725, '101120702', '嘉祥'),
(726, '101120703', '微山'),
(727, '101120704', '鱼台'),
(728, '101120705', '兖州'),
(729, '101120706', '金乡'),
(730, '101120707', '汶上'),
(731, '101120708', '泗水'),
(732, '101120709', '梁山'),
(733, '101120710', '曲阜'),
(734, '101120711', '邹城'),
(735, '101120801', '泰安'),
(736, '101120802', '新泰'),
(737, '101120804', '肥城'),
(738, '101120805', '东平'),
(739, '101120806', '宁阳'),
(740, '101120901', '临沂'),
(741, '101120902', '莒南'),
(742, '101120903', '沂南'),
(743, '101120904', '苍山'),
(744, '101120905', '临沭'),
(745, '101120906', '郯城'),
(746, '101120907', '蒙阴'),
(747, '101120908', '平邑'),
(748, '101120909', '费县'),
(749, '101120910', '沂水'),
(750, '101121001', '菏泽'),
(751, '101121002', '鄄城'),
(752, '101121003', '郓城'),
(753, '101121004', '东明'),
(754, '101121005', '定陶'),
(755, '101121006', '巨野'),
(756, '101121007', '曹县'),
(757, '101121008', '成武'),
(758, '101121009', '单县'),
(759, '101121101', '滨州'),
(760, '101121102', '博兴'),
(761, '101121103', '无棣'),
(762, '101121104', '阳信'),
(763, '101121105', '惠民'),
(764, '101121106', '沾化'),
(765, '101121107', '邹平'),
(766, '101121201', '东营'),
(767, '101121203', '垦利'),
(768, '101121204', '利津'),
(769, '101121205', '广饶'),
(770, '101121301', '威海'),
(771, '101121302', '文登'),
(772, '101121303', '荣成'),
(773, '101121304', '乳山'),
(774, '101121401', '枣庄'),
(775, '101121405', '滕州'),
(776, '101121501', '日照'),
(777, '101121502', '五莲'),
(778, '101121503', '莒县'),
(779, '101121601', '莱芜'),
(780, '101121701', '聊城'),
(781, '101121702', '冠县'),
(782, '101121703', '阳谷'),
(783, '101121704', '高唐'),
(784, '101121705', '茌平'),
(785, '101121706', '东阿'),
(786, '101121707', '临清'),
(787, '101121709', '莘县'),
(788, '101130101', '乌鲁木齐'),
(789, '101130105', '达坂城'),
(790, '101130201', '克拉玛依'),
(791, '101130202', '乌尔禾'),
(792, '101130203', '白碱滩'),
(793, '101130301', '石河子'),
(794, '101130401', '昌吉'),
(795, '101130402', '呼图壁'),
(796, '101130403', '米泉'),
(797, '101130404', '阜康'),
(798, '101130405', '吉木萨尔'),
(799, '101130406', '奇台'),
(800, '101130407', '玛纳斯'),
(801, '101130408', '木垒'),
(802, '101130501', '吐鲁番'),
(803, '101130503', '克州'),
(804, '101130504', '鄯善'),
(805, '101130601', '库尔勒'),
(806, '101130602', '轮台'),
(807, '101130603', '尉犁'),
(808, '101130604', '若羌'),
(809, '101130605', '且末'),
(810, '101130606', '和静'),
(811, '101130607', '焉耆'),
(812, '101130608', '和硕'),
(813, '101130612', '博湖'),
(814, '101130701', '阿拉尔'),
(815, '101130801', '阿克苏'),
(816, '101130802', '乌什'),
(817, '101130803', '温宿'),
(818, '101130804', '拜城'),
(819, '101130805', '新和'),
(820, '101130806', '沙雅'),
(821, '101130807', '库车'),
(822, '101130808', '柯坪'),
(823, '101130809', '阿瓦提'),
(824, '101130901', '喀什'),
(825, '101130902', '英吉沙'),
(826, '101130903', '塔什库尔干'),
(827, '101130904', '麦盖提'),
(828, '101130905', '莎车'),
(829, '101130906', '叶城'),
(830, '101130907', '泽普'),
(831, '101130908', '巴楚'),
(832, '101130909', '岳普湖'),
(833, '101130910', '伽师'),
(834, '101130911', '疏附'),
(835, '101130912', '疏勒'),
(836, '101131001', '伊宁'),
(837, '101131002', '察布查尔'),
(838, '101131003', '尼勒克'),
(839, '101131005', '巩留'),
(840, '101131006', '新源'),
(841, '101131007', '昭苏'),
(842, '101131008', '特克斯'),
(843, '101131009', '霍城'),
(844, '101131011', '奎屯'),
(845, '101131101', '塔城'),
(846, '101131102', '裕民'),
(847, '101131103', '额敏'),
(848, '101131104', '和布克赛尔'),
(849, '101131105', '托里'),
(850, '101131106', '乌苏'),
(851, '101131107', '沙湾'),
(852, '101131201', '哈密'),
(853, '101131203', '巴里坤'),
(854, '101131204', '伊吾'),
(855, '101131301', '和田'),
(856, '101131302', '皮山'),
(857, '101131303', '策勒'),
(858, '101131304', '墨玉'),
(859, '101131305', '洛浦'),
(860, '101131306', '民丰'),
(861, '101131307', '于田'),
(862, '101131401', '阿勒泰'),
(863, '101131402', '哈巴河'),
(864, '101131405', '吉木乃'),
(865, '101131406', '布尔津'),
(866, '101131407', '福海'),
(867, '101131408', '富蕴'),
(868, '101131409', '青河'),
(869, '101131501', '阿图什'),
(870, '101131502', '乌恰'),
(871, '101131503', '阿克陶'),
(872, '101131504', '阿合奇'),
(873, '101131601', '博乐'),
(874, '101131602', '温泉'),
(875, '101131603', '精河'),
(876, '101140101', '拉萨'),
(877, '101140102', '当雄'),
(878, '101140103', '尼木'),
(879, '101140104', '林周'),
(880, '101140105', '堆龙德庆'),
(881, '101140106', '曲水'),
(882, '101140107', '达孜'),
(883, '101140108', '墨竹工卡'),
(884, '101140201', '日喀则'),
(885, '101140202', '拉孜'),
(886, '101140204', '聂拉木'),
(887, '101140205', '定日'),
(888, '101140206', '江孜'),
(889, '101140208', '仲巴'),
(890, '101140209', '萨嘎'),
(891, '101140210', '吉隆'),
(892, '101140211', '昂仁'),
(893, '101140212', '定结'),
(894, '101140213', '萨迦'),
(895, '101140214', '谢通门'),
(896, '101140215', '楠木林'),
(897, '101140216', '岗巴'),
(898, '101140217', '白朗'),
(899, '101140218', '亚东'),
(900, '101140219', '康马'),
(901, '101140220', '仁布'),
(902, '101140301', '山南'),
(903, '101140302', '贡嘎'),
(904, '101140303', '札囊'),
(905, '101140304', '加查'),
(906, '101140305', '浪卡子'),
(907, '101140306', '错那'),
(908, '101140307', '隆子'),
(909, '101140309', '乃东'),
(910, '101140310', '桑日'),
(911, '101140311', '洛扎'),
(912, '101140312', '措美'),
(913, '101140313', '琼结'),
(914, '101140314', '曲松'),
(915, '101140401', '林芝'),
(916, '101140402', '波密'),
(917, '101140403', '米林'),
(918, '101140404', '察隅'),
(919, '101140405', '工布江达'),
(920, '101140406', '朗县'),
(921, '101140407', '墨脱'),
(922, '101140501', '昌都'),
(923, '101140502', '丁青'),
(924, '101140503', '边坝'),
(925, '101140504', '洛隆'),
(926, '101140505', '左贡'),
(927, '101140506', '芒康'),
(928, '101140507', '类乌齐'),
(929, '101140508', '八宿'),
(930, '101140509', '江达'),
(931, '101140510', '察雅'),
(932, '101140511', '贡觉'),
(933, '101140601', '那曲'),
(934, '101140602', '尼玛'),
(935, '101140603', '嘉黎'),
(936, '101140604', '班戈'),
(937, '101140605', '安多'),
(938, '101140606', '索县'),
(939, '101140607', '聂荣'),
(940, '101140608', '巴青'),
(941, '101140609', '比如'),
(942, '101140610', '双湖'),
(943, '101140701', '阿里'),
(944, '101140702', '改则'),
(945, '101140703', '申扎'),
(946, '101140705', '普兰'),
(947, '101140706', '札达'),
(948, '101140707', '噶尔'),
(949, '101140708', '日土'),
(950, '101140709', '革吉'),
(951, '101140710', '措勤'),
(952, '101150101', '西宁'),
(953, '101150102', '大通'),
(954, '101150103', '湟源'),
(955, '101150104', '湟中'),
(956, '101150201', '海东'),
(957, '101150202', '乐都'),
(958, '101150203', '民和'),
(959, '101150204', '互助'),
(960, '101150205', '化隆'),
(961, '101150206', '循化'),
(962, '101150208', '平安'),
(963, '101150301', '黄南'),
(964, '101150302', '尖扎'),
(965, '101150303', '泽库'),
(966, '101150305', '同仁'),
(967, '101150401', '海南'),
(968, '101150404', '贵德'),
(969, '101150406', '兴海'),
(970, '101150407', '贵南'),
(971, '101150408', '同德'),
(972, '101150409', '共和'),
(973, '101150501', '果洛'),
(974, '101150502', '班玛'),
(975, '101150503', '甘德'),
(976, '101150504', '达日'),
(977, '101150505', '久治'),
(978, '101150506', '玛多'),
(979, '101150508', '玛沁'),
(980, '101150601', '玉树'),
(981, '101150602', '称多'),
(982, '101150603', '治多'),
(983, '101150604', '杂多'),
(984, '101150605', '囊谦'),
(985, '101150606', '曲麻莱'),
(986, '101150701', '海西'),
(987, '101150708', '天峻'),
(988, '101150709', '乌兰'),
(989, '101150716', '德令哈'),
(990, '101150801', '海北'),
(991, '101150802', '门源'),
(992, '101150803', '祁连'),
(993, '101150804', '海晏'),
(994, '101150806', '刚察'),
(995, '101150901', '格尔木'),
(996, '101150902', '都兰'),
(997, '101160101', '兰州'),
(998, '101160102', '皋兰'),
(999, '101160103', '永登'),
(1000, '101160104', '榆中'),
(1001, '101160201', '定西'),
(1002, '101160202', '通渭'),
(1003, '101160203', '陇西'),
(1004, '101160204', '渭源'),
(1005, '101160205', '临洮'),
(1006, '101160206', '漳县'),
(1007, '101160207', '岷县'),
(1008, '101160301', '平凉'),
(1009, '101160302', '泾川'),
(1010, '101160303', '灵台'),
(1011, '101160304', '崇信'),
(1012, '101160305', '华亭'),
(1013, '101160306', '庄浪'),
(1014, '101160307', '静宁'),
(1015, '101160401', '庆阳'),
(1016, '101160402', '西峰'),
(1017, '101160403', '环县'),
(1018, '101160404', '华池'),
(1019, '101160405', '合水'),
(1020, '101160406', '正宁'),
(1021, '101160407', '宁县'),
(1022, '101160408', '镇原'),
(1023, '101160409', '庆城'),
(1024, '101160501', '武威'),
(1025, '101160502', '民勤'),
(1026, '101160503', '古浪'),
(1027, '101160505', '天祝'),
(1028, '101160601', '金昌'),
(1029, '101160602', '永昌'),
(1030, '101160701', '张掖'),
(1031, '101160702', '肃南'),
(1032, '101160703', '民乐'),
(1033, '101160704', '临泽'),
(1034, '101160705', '高台'),
(1035, '101160706', '山丹'),
(1036, '101160801', '酒泉'),
(1037, '101160803', '金塔'),
(1038, '101160804', '阿克塞'),
(1039, '101160805', '瓜州'),
(1040, '101160806', '肃北'),
(1041, '101160807', '玉门'),
(1042, '101160808', '敦煌'),
(1043, '101160901', '天水'),
(1044, '101160903', '清水'),
(1045, '101160904', '秦安'),
(1046, '101160905', '甘谷'),
(1047, '101160906', '武山'),
(1048, '101160907', '张家川'),
(1049, '101161001', '陇南'),
(1050, '101161002', '成县'),
(1051, '101161003', '文县'),
(1052, '101161004', '宕昌'),
(1053, '101161005', '康县'),
(1054, '101161006', '西和'),
(1055, '101161007', '礼县'),
(1056, '101161008', '徽县'),
(1057, '101161009', '两当'),
(1058, '101161101', '临夏'),
(1059, '101161102', '康乐'),
(1060, '101161103', '永靖'),
(1061, '101161104', '广河'),
(1062, '101161105', '和政'),
(1063, '101161107', '积石山'),
(1064, '101161201', '合作'),
(1065, '101161202', '临潭'),
(1066, '101161203', '卓尼'),
(1067, '101161204', '舟曲'),
(1068, '101161205', '迭部'),
(1069, '101161206', '玛曲'),
(1070, '101161207', '碌曲'),
(1071, '101161208', '夏河'),
(1072, '101161301', '白银'),
(1073, '101161302', '靖远'),
(1074, '101161303', '会宁'),
(1075, '101161304', '平川'),
(1076, '101161305', '景泰'),
(1077, '101161401', '嘉峪关'),
(1078, '101170101', '银川'),
(1079, '101170102', '永宁'),
(1080, '101170103', '灵武'),
(1081, '101170104', '贺兰'),
(1082, '101170201', '石嘴山'),
(1083, '101170203', '平罗'),
(1084, '101170301', '吴忠'),
(1085, '101170302', '同心'),
(1086, '101170303', '盐池'),
(1087, '101170306', '青铜峡'),
(1088, '101170401', '固原'),
(1089, '101170402', '西吉'),
(1090, '101170403', '隆德'),
(1091, '101170404', '泾源'),
(1092, '101170406', '彭阳'),
(1093, '101170501', '中卫'),
(1094, '101170502', '中宁'),
(1095, '101170504', '海原'),
(1096, '101180101', '郑州'),
(1097, '101180102', '巩义'),
(1098, '101180103', '荥阳'),
(1099, '101180104', '登封'),
(1100, '101180105', '新密'),
(1101, '101180106', '新郑'),
(1102, '101180107', '中牟'),
(1103, '101180108', '上街'),
(1104, '101180201', '安阳'),
(1105, '101180202', '汤阴'),
(1106, '101180203', '滑县'),
(1107, '101180204', '内黄'),
(1108, '101180205', '林州'),
(1109, '101180301', '新乡'),
(1110, '101180302', '获嘉'),
(1111, '101180303', '原阳'),
(1112, '101180304', '辉县'),
(1113, '101180305', '卫辉'),
(1114, '101180306', '延津'),
(1115, '101180307', '封丘'),
(1116, '101180308', '长垣'),
(1117, '101180401', '许昌'),
(1118, '101180402', '鄢陵'),
(1119, '101180403', '襄城'),
(1120, '101180404', '长葛'),
(1121, '101180405', '禹州'),
(1122, '101180501', '平顶山'),
(1123, '101180502', '郏县'),
(1124, '101180503', '宝丰'),
(1125, '101180504', '汝州'),
(1126, '101180505', '叶县'),
(1127, '101180506', '舞钢'),
(1128, '101180507', '鲁山'),
(1129, '101180508', '石龙'),
(1130, '101180601', '信阳'),
(1131, '101180602', '息县'),
(1132, '101180603', '罗山'),
(1133, '101180604', '光山'),
(1134, '101180605', '新县'),
(1135, '101180606', '淮滨'),
(1136, '101180607', '潢川'),
(1137, '101180608', '固始'),
(1138, '101180609', '商城'),
(1139, '101180701', '南阳'),
(1140, '101180702', '南召'),
(1141, '101180703', '方城'),
(1142, '101180704', '社旗'),
(1143, '101180705', '西峡'),
(1144, '101180706', '内乡'),
(1145, '101180707', '镇平'),
(1146, '101180708', '淅川'),
(1147, '101180709', '新野'),
(1148, '101180710', '唐河'),
(1149, '101180711', '邓州'),
(1150, '101180712', '桐柏'),
(1151, '101180801', '开封'),
(1152, '101180802', '杞县'),
(1153, '101180803', '尉氏'),
(1154, '101180804', '通许'),
(1155, '101180805', '兰考'),
(1156, '101180901', '洛阳'),
(1157, '101180902', '新安'),
(1158, '101180903', '孟津'),
(1159, '101180904', '宜阳'),
(1160, '101180905', '洛宁'),
(1161, '101180906', '伊川'),
(1162, '101180907', '嵩县'),
(1163, '101180908', '偃师'),
(1164, '101180909', '栾川'),
(1165, '101180910', '汝阳'),
(1166, '101180911', '吉利'),
(1167, '101181001', '商丘'),
(1168, '101181003', '睢县'),
(1169, '101181004', '民权'),
(1170, '101181005', '虞城'),
(1171, '101181006', '柘城'),
(1172, '101181007', '宁陵'),
(1173, '101181008', '夏邑'),
(1174, '101181009', '永城'),
(1175, '101181101', '焦作'),
(1176, '101181102', '修武'),
(1177, '101181103', '武陟'),
(1178, '101181104', '沁阳'),
(1179, '101181106', '博爱'),
(1180, '101181107', '温县'),
(1181, '101181108', '孟州'),
(1182, '101181201', '鹤壁'),
(1183, '101181202', '浚县'),
(1184, '101181203', '淇县'),
(1185, '101181301', '濮阳'),
(1186, '101181302', '台前'),
(1187, '101181303', '南乐'),
(1188, '101181304', '清丰'),
(1189, '101181305', '范县'),
(1190, '101181401', '周口'),
(1191, '101181402', '扶沟'),
(1192, '101181403', '太康'),
(1193, '101181404', '淮阳'),
(1194, '101181405', '西华'),
(1195, '101181406', '商水'),
(1196, '101181407', '项城'),
(1197, '101181408', '郸城'),
(1198, '101181409', '鹿邑'),
(1199, '101181410', '沈丘'),
(1200, '101181501', '漯河'),
(1201, '101181502', '临颍'),
(1202, '101181503', '舞阳'),
(1203, '101181504', '临颖'),
(1204, '101181601', '驻马店'),
(1205, '101181602', '西平'),
(1206, '101181603', '遂平'),
(1207, '101181604', '上蔡'),
(1208, '101181605', '汝南'),
(1209, '101181606', '泌阳'),
(1210, '101181607', '平舆'),
(1211, '101181608', '新蔡'),
(1212, '101181609', '确山'),
(1213, '101181610', '正阳'),
(1214, '101181701', '三门峡'),
(1215, '101181702', '灵宝'),
(1216, '101181703', '渑池'),
(1217, '101181704', '卢氏'),
(1218, '101181705', '义马'),
(1219, '101181706', '陕县'),
(1220, '101181801', '济源'),
(1221, '101190101', '南京'),
(1222, '101190102', '溧水'),
(1223, '101190103', '高淳'),
(1224, '101190104', '江宁'),
(1225, '101190105', '六合'),
(1226, '101190107', '浦口'),
(1227, '101190201', '无锡'),
(1228, '101190202', '江阴'),
(1229, '101190203', '宜兴'),
(1230, '101190204', '锡山'),
(1231, '101190301', '镇江'),
(1232, '101190302', '丹阳'),
(1233, '101190303', '扬中'),
(1234, '101190304', '句容'),
(1235, '101190305', '丹徒'),
(1236, '101190401', '苏州'),
(1237, '101190402', '常熟'),
(1238, '101190403', '张家港'),
(1239, '101190404', '昆山'),
(1240, '101190405', '吴中'),
(1241, '101190407', '吴江'),
(1242, '101190408', '太仓'),
(1243, '101190501', '南通'),
(1244, '101190502', '海安'),
(1245, '101190503', '如皋'),
(1246, '101190504', '如东'),
(1247, '101190507', '启东'),
(1248, '101190508', '海门'),
(1249, '101190601', '扬州'),
(1250, '101190602', '宝应'),
(1251, '101190603', '仪征'),
(1252, '101190604', '高邮'),
(1253, '101190605', '江都'),
(1254, '101190606', '邗江'),
(1255, '101190701', '盐城'),
(1256, '101190702', '响水'),
(1257, '101190703', '滨海'),
(1258, '101190704', '阜宁'),
(1259, '101190705', '射阳'),
(1260, '101190706', '建湖'),
(1261, '101190707', '东台'),
(1262, '101190708', '大丰'),
(1263, '101190709', '盐都'),
(1264, '101190801', '徐州'),
(1265, '101190802', '铜山'),
(1266, '101190803', '丰县'),
(1267, '101190804', '沛县'),
(1268, '101190805', '邳州'),
(1269, '101190806', '睢宁'),
(1270, '101190807', '新沂'),
(1271, '101190901', '淮安'),
(1272, '101190902', '金湖'),
(1273, '101190903', '盱眙'),
(1274, '101190904', '洪泽'),
(1275, '101190905', '涟水'),
(1276, '101191001', '连云港'),
(1277, '101191002', '东海'),
(1278, '101191003', '赣榆'),
(1279, '101191004', '灌云'),
(1280, '101191005', '灌南'),
(1281, '101191101', '常州'),
(1282, '101191102', '溧阳'),
(1283, '101191103', '金坛'),
(1284, '101191104', '武进'),
(1285, '101191201', '泰州'),
(1286, '101191202', '兴化'),
(1287, '101191203', '泰兴'),
(1288, '101191204', '姜堰'),
(1289, '101191205', '靖江'),
(1290, '101191301', '宿迁'),
(1291, '101191302', '沭阳'),
(1292, '101191303', '泗阳'),
(1293, '101191304', '泗洪'),
(1294, '101191305', '宿豫'),
(1295, '101200101', '武汉'),
(1296, '101200102', '蔡甸'),
(1297, '101200103', '黄陂'),
(1298, '101200104', '新洲'),
(1299, '101200105', '江夏'),
(1300, '101200106', '东西湖'),
(1301, '101200201', '襄阳'),
(1302, '101200202', '襄州'),
(1303, '101200203', '保康'),
(1304, '101200204', '南漳'),
(1305, '101200205', '宜城'),
(1306, '101200206', '老河口'),
(1307, '101200207', '谷城'),
(1308, '101200208', '枣阳'),
(1309, '101200301', '鄂州'),
(1310, '101200302', '梁子湖'),
(1311, '101200401', '孝感'),
(1312, '101200402', '安陆'),
(1313, '101200403', '云梦'),
(1314, '101200404', '大悟'),
(1315, '101200405', '应城'),
(1316, '101200406', '汉川'),
(1317, '101200407', '孝昌'),
(1318, '101200501', '黄冈'),
(1319, '101200502', '红安'),
(1320, '101200503', '麻城'),
(1321, '101200504', '罗田'),
(1322, '101200505', '英山'),
(1323, '101200506', '浠水'),
(1324, '101200507', '蕲春'),
(1325, '101200508', '黄梅'),
(1326, '101200509', '武穴'),
(1327, '101200510', '团风'),
(1328, '101200601', '黄石'),
(1329, '101200602', '大冶'),
(1330, '101200603', '阳新'),
(1331, '101200604', '铁山'),
(1332, '101200605', '下陆'),
(1333, '101200606', '西塞山'),
(1334, '101200701', '咸宁'),
(1335, '101200702', '赤壁'),
(1336, '101200703', '嘉鱼'),
(1337, '101200704', '崇阳'),
(1338, '101200705', '通城'),
(1339, '101200706', '通山'),
(1340, '101200801', '荆州'),
(1341, '101200802', '江陵'),
(1342, '101200803', '公安'),
(1343, '101200804', '石首'),
(1344, '101200805', '监利'),
(1345, '101200806', '洪湖'),
(1346, '101200807', '松滋'),
(1347, '101200901', '宜昌'),
(1348, '101200902', '远安'),
(1349, '101200903', '秭归'),
(1350, '101200904', '兴山'),
(1351, '101200906', '五峰'),
(1352, '101200907', '当阳'),
(1353, '101200908', '长阳'),
(1354, '101200909', '宜都'),
(1355, '101200910', '枝江'),
(1356, '101201001', '恩施'),
(1357, '101201002', '利川'),
(1358, '101201003', '建始'),
(1359, '101201004', '咸丰'),
(1360, '101201005', '宣恩'),
(1361, '101201006', '鹤峰'),
(1362, '101201007', '来凤'),
(1363, '101201008', '巴东'),
(1364, '101201101', '十堰'),
(1365, '101201102', '竹溪'),
(1366, '101201103', '郧西'),
(1367, '101201104', '郧县'),
(1368, '101201105', '竹山'),
(1369, '101201106', '房县'),
(1370, '101201107', '丹江口'),
(1371, '101201108', '茅箭'),
(1372, '101201109', '张湾'),
(1373, '101201201', '神农架'),
(1374, '101201301', '随州'),
(1375, '101201302', '广水'),
(1376, '101201401', '荆门'),
(1377, '101201402', '钟祥'),
(1378, '101201403', '京山'),
(1379, '101201404', '掇刀'),
(1380, '101201405', '沙洋'),
(1381, '101201406', '沙市'),
(1382, '101201501', '天门'),
(1383, '101201601', '仙桃'),
(1384, '101201701', '潜江'),
(1385, '101210101', '杭州'),
(1386, '101210102', '萧山'),
(1387, '101210103', '桐庐'),
(1388, '101210104', '淳安'),
(1389, '101210105', '建德'),
(1390, '101210106', '余杭'),
(1391, '101210107', '临安'),
(1392, '101210108', '富阳'),
(1393, '101210201', '湖州'),
(1394, '101210202', '长兴'),
(1395, '101210203', '安吉'),
(1396, '101210204', '德清'),
(1397, '101210301', '嘉兴'),
(1398, '101210302', '嘉善'),
(1399, '101210303', '海宁'),
(1400, '101210304', '桐乡'),
(1401, '101210305', '平湖'),
(1402, '101210306', '海盐'),
(1403, '101210401', '宁波'),
(1404, '101210403', '慈溪'),
(1405, '101210404', '余姚'),
(1406, '101210405', '奉化'),
(1407, '101210406', '象山'),
(1408, '101210408', '宁海'),
(1409, '101210410', '北仑'),
(1410, '101210411', '鄞州'),
(1411, '101210501', '绍兴'),
(1412, '101210502', '诸暨'),
(1413, '101210503', '上虞'),
(1414, '101210504', '新昌'),
(1415, '101210505', '嵊州'),
(1416, '101210601', '台州'),
(1417, '101210603', '玉环'),
(1418, '101210604', '三门'),
(1419, '101210605', '天台'),
(1420, '101210606', '仙居'),
(1421, '101210607', '温岭'),
(1422, '101210610', '临海'),
(1423, '101210701', '温州'),
(1424, '101210702', '泰顺'),
(1425, '101210703', '文成'),
(1426, '101210704', '平阳'),
(1427, '101210705', '瑞安'),
(1428, '101210706', '洞头'),
(1429, '101210707', '乐清'),
(1430, '101210708', '永嘉'),
(1431, '101210709', '苍南'),
(1432, '101210801', '丽水'),
(1433, '101210802', '遂昌'),
(1434, '101210803', '龙泉'),
(1435, '101210804', '缙云'),
(1436, '101210805', '青田'),
(1437, '101210806', '云和'),
(1438, '101210807', '庆元'),
(1439, '101210808', '松阳'),
(1440, '101210809', '景宁'),
(1441, '101210901', '金华'),
(1442, '101210902', '浦江'),
(1443, '101210903', '兰溪'),
(1444, '101210904', '义乌'),
(1445, '101210905', '东阳'),
(1446, '101210906', '武义'),
(1447, '101210907', '永康'),
(1448, '101210908', '磐安'),
(1449, '101211001', '衢州'),
(1450, '101211002', '常山'),
(1451, '101211003', '开化'),
(1452, '101211004', '龙游'),
(1453, '101211005', '江山'),
(1454, '101211101', '舟山'),
(1455, '101211102', '嵊泗'),
(1456, '101211104', '岱山'),
(1457, '101220101', '合肥'),
(1458, '101220102', '长丰'),
(1459, '101220103', '肥东'),
(1460, '101220104', '肥西'),
(1461, '101220201', '蚌埠'),
(1462, '101220202', '怀远'),
(1463, '101220203', '固镇'),
(1464, '101220204', '五河'),
(1465, '101220301', '芜湖'),
(1466, '101220302', '繁昌'),
(1467, '101220304', '南陵'),
(1468, '101220401', '淮南'),
(1469, '101220402', '凤台'),
(1470, '101220403', '潘集'),
(1471, '101220501', '马鞍山'),
(1472, '101220502', '当涂'),
(1473, '101220601', '安庆'),
(1474, '101220602', '枞阳'),
(1475, '101220603', '太湖'),
(1476, '101220604', '潜山'),
(1477, '101220605', '怀宁'),
(1478, '101220606', '宿松'),
(1479, '101220607', '望江'),
(1480, '101220608', '岳西'),
(1481, '101220609', '桐城'),
(1482, '101220701', '宿州'),
(1483, '101220702', '砀山'),
(1484, '101220703', '灵璧'),
(1485, '101220704', '泗县'),
(1486, '101220705', '萧县'),
(1487, '101220801', '阜阳'),
(1488, '101220802', '阜南'),
(1489, '101220803', '颍上'),
(1490, '101220804', '临泉'),
(1491, '101220805', '界首'),
(1492, '101220806', '太和'),
(1493, '101220901', '亳州'),
(1494, '101220902', '涡阳'),
(1495, '101220903', '利辛'),
(1496, '101220904', '蒙城'),
(1497, '101221001', '黄山'),
(1498, '101221004', '祁门'),
(1499, '101221005', '黟县'),
(1500, '101221006', '歙县'),
(1501, '101221007', '休宁'),
(1502, '101221101', '滁州'),
(1503, '101221102', '凤阳'),
(1504, '101221103', '明光'),
(1505, '101221104', '定远'),
(1506, '101221105', '全椒'),
(1507, '101221106', '来安'),
(1508, '101221107', '天长'),
(1509, '101221201', '淮北'),
(1510, '101221202', '濉溪'),
(1511, '101221301', '铜陵'),
(1512, '101221401', '宣城'),
(1513, '101221402', '泾县'),
(1514, '101221403', '旌德'),
(1515, '101221404', '宁国'),
(1516, '101221405', '绩溪'),
(1517, '101221406', '广德'),
(1518, '101221407', '郎溪'),
(1519, '101221501', '六安'),
(1520, '101221502', '霍邱'),
(1521, '101221503', '寿县'),
(1522, '101221505', '金寨'),
(1523, '101221506', '霍山'),
(1524, '101221507', '舒城'),
(1525, '101221601', '巢湖'),
(1526, '101221602', '庐江'),
(1527, '101221603', '无为'),
(1528, '101221604', '含山'),
(1529, '101221605', '和县'),
(1530, '101221701', '池州'),
(1531, '101221702', '东至'),
(1532, '101221703', '青阳'),
(1533, '101221705', '石台'),
(1534, '101230101', '福州'),
(1535, '101230102', '闽清'),
(1536, '101230103', '闽侯'),
(1537, '101230104', '罗源'),
(1538, '101230105', '连江'),
(1539, '101230107', '永泰'),
(1540, '101230108', '平潭'),
(1541, '101230110', '长乐'),
(1542, '101230111', '福清'),
(1543, '101230201', '厦门'),
(1544, '101230301', '宁德'),
(1545, '101230302', '古田'),
(1546, '101230303', '霞浦'),
(1547, '101230304', '寿宁'),
(1548, '101230305', '周宁'),
(1549, '101230306', '福安'),
(1550, '101230307', '柘荣'),
(1551, '101230308', '福鼎'),
(1552, '101230309', '屏南'),
(1553, '101230401', '莆田'),
(1554, '101230402', '仙游'),
(1555, '101230404', '涵江'),
(1556, '101230405', '秀屿'),
(1557, '101230406', '荔城'),
(1558, '101230407', '城厢'),
(1559, '101230501', '泉州'),
(1560, '101230502', '安溪'),
(1561, '101230504', '永春'),
(1562, '101230505', '德化'),
(1563, '101230506', '南安'),
(1564, '101230508', '惠安'),
(1565, '101230509', '晋江'),
(1566, '101230510', '石狮'),
(1567, '101230601', '漳州'),
(1568, '101230602', '长泰'),
(1569, '101230603', '南靖'),
(1570, '101230604', '平和'),
(1571, '101230605', '龙海'),
(1572, '101230606', '漳浦'),
(1573, '101230607', '诏安'),
(1574, '101230609', '云霄'),
(1575, '101230610', '华安'),
(1576, '101230701', '龙岩'),
(1577, '101230702', '长汀'),
(1578, '101230703', '连城'),
(1579, '101230704', '武平'),
(1580, '101230705', '上杭'),
(1581, '101230706', '永定'),
(1582, '101230707', '漳平'),
(1583, '101230801', '三明'),
(1584, '101230802', '宁化'),
(1585, '101230803', '清流'),
(1586, '101230804', '泰宁'),
(1587, '101230805', '将乐'),
(1588, '101230806', '建宁'),
(1589, '101230807', '明溪'),
(1590, '101230808', '沙县'),
(1591, '101230809', '尤溪'),
(1592, '101230810', '永安'),
(1593, '101230811', '大田'),
(1594, '101230901', '南平'),
(1595, '101230902', '顺昌'),
(1596, '101230903', '光泽'),
(1597, '101230904', '邵武'),
(1598, '101230905', '武夷山'),
(1599, '101230906', '浦城'),
(1600, '101230907', '建阳'),
(1601, '101230908', '松溪'),
(1602, '101230909', '政和'),
(1603, '101230910', '建瓯'),
(1604, '101231001', '钓鱼岛'),
(1605, '101240101', '南昌'),
(1606, '101240102', '新建'),
(1607, '101240104', '安义'),
(1608, '101240105', '进贤'),
(1609, '101240201', '九江'),
(1610, '101240202', '瑞昌'),
(1611, '101240204', '武宁'),
(1612, '101240205', '德安'),
(1613, '101240206', '永修'),
(1614, '101240207', '湖口'),
(1615, '101240208', '彭泽'),
(1616, '101240209', '星子'),
(1617, '101240210', '都昌'),
(1618, '101240212', '修水'),
(1619, '101240301', '上饶'),
(1620, '101240302', '鄱阳'),
(1621, '101240303', '婺源'),
(1622, '101240305', '余干'),
(1623, '101240306', '万年'),
(1624, '101240307', '德兴'),
(1625, '101240309', '弋阳'),
(1626, '101240310', '横峰'),
(1627, '101240311', '铅山'),
(1628, '101240312', '玉山'),
(1629, '101240313', '广丰'),
(1630, '101240401', '抚州'),
(1631, '101240402', '广昌'),
(1632, '101240403', '乐安'),
(1633, '101240404', '崇仁'),
(1634, '101240405', '金溪'),
(1635, '101240406', '资溪'),
(1636, '101240407', '宜黄'),
(1637, '101240408', '南城'),
(1638, '101240409', '南丰'),
(1639, '101240410', '黎川'),
(1640, '101240411', '东乡'),
(1641, '101240501', '宜春'),
(1642, '101240502', '铜鼓'),
(1643, '101240503', '宜丰'),
(1644, '101240504', '万载'),
(1645, '101240505', '上高'),
(1646, '101240506', '靖安'),
(1647, '101240507', '奉新'),
(1648, '101240508', '高安'),
(1649, '101240509', '樟树'),
(1650, '101240510', '丰城'),
(1651, '101240601', '吉安'),
(1652, '101240603', '吉水'),
(1653, '101240604', '新干'),
(1654, '101240605', '峡江'),
(1655, '101240606', '永丰'),
(1656, '101240607', '永新'),
(1657, '101240608', '井冈山'),
(1658, '101240609', '万安'),
(1659, '101240610', '遂川'),
(1660, '101240611', '泰和'),
(1661, '101240612', '安福'),
(1662, '101240701', '赣州'),
(1663, '101240702', '崇义'),
(1664, '101240703', '上犹'),
(1665, '101240704', '南康'),
(1666, '101240705', '大余'),
(1667, '101240706', '信丰'),
(1668, '101240707', '宁都'),
(1669, '101240708', '石城'),
(1670, '101240709', '瑞金'),
(1671, '101240710', '于都'),
(1672, '101240711', '会昌'),
(1673, '101240712', '安远'),
(1674, '101240713', '全南'),
(1675, '101240714', '龙南'),
(1676, '101240715', '定南'),
(1677, '101240716', '寻乌'),
(1678, '101240717', '兴国'),
(1679, '101240718', '赣县'),
(1680, '101240801', '景德镇'),
(1681, '101240802', '乐平'),
(1682, '101240803', '浮梁'),
(1683, '101240901', '萍乡'),
(1684, '101240902', '莲花'),
(1685, '101240903', '上栗'),
(1686, '101240905', '芦溪'),
(1687, '101240906', '湘东'),
(1688, '101241001', '新余'),
(1689, '101241002', '分宜'),
(1690, '101241101', '鹰潭'),
(1691, '101241102', '余江'),
(1692, '101241103', '贵溪'),
(1693, '101250101', '长沙'),
(1694, '101250102', '宁乡'),
(1695, '101250103', '浏阳'),
(1696, '101250105', '望城'),
(1697, '101250201', '湘潭'),
(1698, '101250202', '韶山'),
(1699, '101250203', '湘乡'),
(1700, '101250301', '株洲'),
(1701, '101250302', '攸县'),
(1702, '101250303', '醴陵'),
(1703, '101250305', '茶陵'),
(1704, '101250306', '炎陵'),
(1705, '101250401', '衡阳'),
(1706, '101250402', '衡山'),
(1707, '101250403', '衡东'),
(1708, '101250404', '祁东'),
(1709, '101250406', '常宁'),
(1710, '101250407', '衡南'),
(1711, '101250408', '耒阳'),
(1712, '101250501', '郴州'),
(1713, '101250502', '桂阳'),
(1714, '101250503', '嘉禾'),
(1715, '101250504', '宜章'),
(1716, '101250505', '临武'),
(1717, '101250507', '资兴'),
(1718, '101250508', '汝城'),
(1719, '101250509', '安仁'),
(1720, '101250510', '永兴'),
(1721, '101250511', '桂东'),
(1722, '101250512', '苏仙'),
(1723, '101250601', '常德'),
(1724, '101250602', '安乡'),
(1725, '101250603', '桃源'),
(1726, '101250604', '汉寿'),
(1727, '101250605', '澧县'),
(1728, '101250606', '临澧'),
(1729, '101250607', '石门'),
(1730, '101250608', '津市'),
(1731, '101250700', '益阳'),
(1732, '101250702', '南县'),
(1733, '101250703', '桃江'),
(1734, '101250704', '安化'),
(1735, '101250705', '沅江'),
(1736, '101250801', '娄底'),
(1737, '101250802', '双峰'),
(1738, '101250803', '冷水江'),
(1739, '101250805', '新化'),
(1740, '101250806', '涟源'),
(1741, '101250901', '邵阳'),
(1742, '101250902', '隆回'),
(1743, '101250903', '洞口');
INSERT INTO `tp_weather` (`id`, `code`, `name`) VALUES
(1744, '101250904', '新邵'),
(1745, '101250905', '邵东'),
(1746, '101250906', '绥宁'),
(1747, '101250907', '新宁'),
(1748, '101250908', '武冈'),
(1749, '101250909', '城步'),
(1750, '101251001', '岳阳'),
(1751, '101251002', '华容'),
(1752, '101251003', '湘阴'),
(1753, '101251004', '汨罗'),
(1754, '101251005', '平江'),
(1755, '101251006', '临湘'),
(1756, '101251101', '张家界'),
(1757, '101251102', '桑植'),
(1758, '101251103', '慈利'),
(1759, '101251104', '武陵源'),
(1760, '101251201', '怀化'),
(1761, '101251203', '沅陵'),
(1762, '101251204', '辰溪'),
(1763, '101251205', '靖州'),
(1764, '101251206', '会同'),
(1765, '101251207', '通道'),
(1766, '101251208', '麻阳'),
(1767, '101251209', '新晃'),
(1768, '101251210', '芷江'),
(1769, '101251211', '溆浦'),
(1770, '101251212', '中方'),
(1771, '101251213', '洪江'),
(1772, '101251401', '永州'),
(1773, '101251402', '祁阳'),
(1774, '101251403', '东安'),
(1775, '101251404', '双牌'),
(1776, '101251405', '道县'),
(1777, '101251406', '宁远'),
(1778, '101251407', '江永'),
(1779, '101251408', '蓝山'),
(1780, '101251409', '新田'),
(1781, '101251410', '江华'),
(1782, '101251501', '吉首'),
(1783, '101251502', '保靖'),
(1784, '101251503', '永顺'),
(1785, '101251504', '古丈'),
(1786, '101251505', '凤凰'),
(1787, '101251506', '泸溪'),
(1788, '101251507', '龙山'),
(1789, '101251508', '花垣'),
(1790, '101260101', '贵阳'),
(1791, '101260102', '白云'),
(1792, '101260103', '花溪'),
(1793, '101260104', '乌当'),
(1794, '101260105', '息烽'),
(1795, '101260106', '开阳'),
(1796, '101260107', '修文'),
(1797, '101260108', '清镇'),
(1798, '101260109', '小河'),
(1799, '101260110', '云岩'),
(1800, '101260111', '南明'),
(1801, '101260201', '遵义'),
(1802, '101260203', '仁怀'),
(1803, '101260204', '绥阳'),
(1804, '101260205', '湄潭'),
(1805, '101260206', '凤冈'),
(1806, '101260207', '桐梓'),
(1807, '101260208', '赤水'),
(1808, '101260209', '习水'),
(1809, '101260210', '道真'),
(1810, '101260211', '正安'),
(1811, '101260212', '务川'),
(1812, '101260213', '余庆'),
(1813, '101260214', '汇川'),
(1814, '101260215', '红花岗'),
(1815, '101260301', '安顺'),
(1816, '101260302', '普定'),
(1817, '101260303', '镇宁'),
(1818, '101260304', '平坝'),
(1819, '101260305', '紫云'),
(1820, '101260306', '关岭'),
(1821, '101260401', '都匀'),
(1822, '101260402', '贵定'),
(1823, '101260403', '瓮安'),
(1824, '101260404', '长顺'),
(1825, '101260405', '福泉'),
(1826, '101260406', '惠水'),
(1827, '101260407', '龙里'),
(1828, '101260408', '罗甸'),
(1829, '101260409', '平塘'),
(1830, '101260410', '独山'),
(1831, '101260411', '三都'),
(1832, '101260412', '荔波'),
(1833, '101260501', '凯里'),
(1834, '101260502', '岑巩'),
(1835, '101260503', '施秉'),
(1836, '101260504', '镇远'),
(1837, '101260505', '黄平'),
(1838, '101260507', '麻江'),
(1839, '101260508', '丹寨'),
(1840, '101260509', '三穗'),
(1841, '101260510', '台江'),
(1842, '101260511', '剑河'),
(1843, '101260512', '雷山'),
(1844, '101260513', '黎平'),
(1845, '101260514', '天柱'),
(1846, '101260515', '锦屏'),
(1847, '101260516', '榕江'),
(1848, '101260517', '从江'),
(1849, '101260601', '铜仁'),
(1850, '101260602', '江口'),
(1851, '101260603', '玉屏'),
(1852, '101260604', '万山特'),
(1853, '101260605', '思南'),
(1854, '101260607', '印江'),
(1855, '101260608', '石阡'),
(1856, '101260609', '沿河'),
(1857, '101260610', '德江'),
(1858, '101260611', '松桃'),
(1859, '101260701', '毕节'),
(1860, '101260702', '赫章'),
(1861, '101260703', '金沙'),
(1862, '101260704', '威宁'),
(1863, '101260705', '大方'),
(1864, '101260706', '纳雍'),
(1865, '101260707', '织金'),
(1866, '101260708', '黔西'),
(1867, '101260801', '水城'),
(1868, '101260802', '六枝特'),
(1869, '101260804', '盘县'),
(1870, '101260901', '兴义'),
(1871, '101260902', '晴隆'),
(1872, '101260903', '兴仁'),
(1873, '101260904', '贞丰'),
(1874, '101260905', '望谟'),
(1875, '101260907', '安龙'),
(1876, '101260908', '册亨'),
(1877, '101260909', '普安'),
(1878, '101270101', '成都'),
(1879, '101270103', '新都'),
(1880, '101270104', '温江'),
(1881, '101270105', '金堂'),
(1882, '101270106', '双流'),
(1883, '101270107', '郫县'),
(1884, '101270108', '大邑'),
(1885, '101270109', '蒲江'),
(1886, '101270110', '新津'),
(1887, '101270111', '都江堰'),
(1888, '101270112', '彭州'),
(1889, '101270113', '邛崃'),
(1890, '101270114', '崇州'),
(1891, '101270201', '攀枝花'),
(1892, '101270203', '米易'),
(1893, '101270204', '盐边'),
(1894, '101270301', '自贡'),
(1895, '101270302', '富顺'),
(1896, '101270303', '荣县'),
(1897, '101270401', '绵阳'),
(1898, '101270402', '三台'),
(1899, '101270403', '盐亭'),
(1900, '101270404', '安县'),
(1901, '101270405', '梓潼'),
(1902, '101270406', '北川'),
(1903, '101270407', '平武'),
(1904, '101270408', '江油'),
(1905, '101270501', '南充'),
(1906, '101270502', '南部'),
(1907, '101270503', '营山'),
(1908, '101270504', '蓬安'),
(1909, '101270505', '仪陇'),
(1910, '101270506', '西充'),
(1911, '101270507', '阆中'),
(1912, '101270601', '达州'),
(1913, '101270602', '宣汉'),
(1914, '101270603', '开江'),
(1915, '101270604', '大竹'),
(1916, '101270605', '渠县'),
(1917, '101270606', '万源'),
(1918, '101270608', '达县'),
(1919, '101270701', '遂宁'),
(1920, '101270702', '蓬溪'),
(1921, '101270703', '射洪'),
(1922, '101270801', '广安'),
(1923, '101270802', '岳池'),
(1924, '101270803', '武胜'),
(1925, '101270804', '邻水'),
(1926, '101270805', '华蓥'),
(1927, '101270901', '巴中'),
(1928, '101270902', '通江'),
(1929, '101270903', '南江'),
(1930, '101270904', '平昌'),
(1931, '101271001', '泸州'),
(1932, '101271003', '泸县'),
(1933, '101271004', '合江'),
(1934, '101271005', '叙永'),
(1935, '101271006', '古蔺'),
(1936, '101271101', '宜宾'),
(1937, '101271104', '南溪'),
(1938, '101271105', '江安'),
(1939, '101271106', '长宁'),
(1940, '101271107', '高县'),
(1941, '101271108', '珙县'),
(1942, '101271109', '筠连'),
(1943, '101271110', '兴文'),
(1944, '101271111', '屏山'),
(1945, '101271201', '内江'),
(1946, '101271203', '威远'),
(1947, '101271204', '资中'),
(1948, '101271205', '隆昌'),
(1949, '101271301', '资阳'),
(1950, '101271302', '安岳'),
(1951, '101271303', '乐至'),
(1952, '101271304', '简阳'),
(1953, '101271401', '乐山'),
(1954, '101271402', '犍为'),
(1955, '101271403', '井研'),
(1956, '101271404', '夹江'),
(1957, '101271405', '沐川'),
(1958, '101271406', '峨边'),
(1959, '101271407', '马边'),
(1960, '101271409', '峨眉山'),
(1961, '101271501', '眉山'),
(1962, '101271502', '仁寿'),
(1963, '101271503', '彭山'),
(1964, '101271504', '洪雅'),
(1965, '101271505', '丹棱'),
(1966, '101271506', '青神'),
(1967, '101271601', '凉山'),
(1968, '101271603', '木里'),
(1969, '101271604', '盐源'),
(1970, '101271605', '德昌'),
(1971, '101271606', '会理'),
(1972, '101271607', '会东'),
(1973, '101271608', '宁南'),
(1974, '101271609', '普格'),
(1975, '101271610', '西昌'),
(1976, '101271611', '金阳'),
(1977, '101271612', '昭觉'),
(1978, '101271613', '喜德'),
(1979, '101271614', '冕宁'),
(1980, '101271615', '越西'),
(1981, '101271616', '甘洛'),
(1982, '101271617', '雷波'),
(1983, '101271618', '美姑'),
(1984, '101271619', '布拖'),
(1985, '101271701', '雅安'),
(1986, '101271702', '名山'),
(1987, '101271703', '荥经'),
(1988, '101271704', '汉源'),
(1989, '101271705', '石棉'),
(1990, '101271706', '天全'),
(1991, '101271707', '芦山'),
(1992, '101271708', '宝兴'),
(1993, '101271801', '甘孜'),
(1994, '101271802', '康定'),
(1995, '101271803', '泸定'),
(1996, '101271804', '丹巴'),
(1997, '101271805', '九龙'),
(1998, '101271806', '雅江'),
(1999, '101271807', '道孚'),
(2000, '101271808', '炉霍'),
(2001, '101271809', '新龙'),
(2002, '101271810', '德格'),
(2003, '101271811', '白玉'),
(2004, '101271812', '石渠'),
(2005, '101271813', '色达'),
(2006, '101271814', '理塘'),
(2007, '101271815', '巴塘'),
(2008, '101271816', '乡城'),
(2009, '101271817', '稻城'),
(2010, '101271818', '得荣'),
(2011, '101271901', '阿坝'),
(2012, '101271902', '汶川'),
(2013, '101271903', '理县'),
(2014, '101271904', '茂县'),
(2015, '101271905', '松潘'),
(2016, '101271906', '九寨沟'),
(2017, '101271907', '金川'),
(2018, '101271908', '小金'),
(2019, '101271909', '黑水'),
(2020, '101271910', '马尔康'),
(2021, '101271911', '壤塘'),
(2022, '101271912', '若尔盖'),
(2023, '101271913', '红原'),
(2024, '101272001', '德阳'),
(2025, '101272002', '中江'),
(2026, '101272003', '广汉'),
(2027, '101272004', '什邡'),
(2028, '101272005', '绵竹'),
(2029, '101272006', '罗江'),
(2030, '101272101', '广元'),
(2031, '101272102', '旺苍'),
(2032, '101272103', '青川'),
(2033, '101272104', '剑阁'),
(2034, '101272105', '苍溪'),
(2035, '101280101', '广州'),
(2036, '101280102', '番禺'),
(2037, '101280103', '从化'),
(2038, '101280104', '增城'),
(2039, '101280105', '花都'),
(2040, '101280201', '韶关'),
(2041, '101280202', '乳源'),
(2042, '101280203', '始兴'),
(2043, '101280204', '翁源'),
(2044, '101280205', '乐昌'),
(2045, '101280206', '仁化'),
(2046, '101280207', '南雄'),
(2047, '101280208', '新丰'),
(2048, '101280209', '曲江'),
(2049, '101280210', '浈江'),
(2050, '101280211', '武江'),
(2051, '101280301', '惠州'),
(2052, '101280302', '博罗'),
(2053, '101280303', '惠阳'),
(2054, '101280304', '惠东'),
(2055, '101280305', '龙门'),
(2056, '101280401', '梅州'),
(2057, '101280402', '兴宁'),
(2058, '101280403', '蕉岭'),
(2059, '101280404', '大埔'),
(2060, '101280406', '丰顺'),
(2061, '101280407', '平远'),
(2062, '101280408', '五华'),
(2063, '101280409', '梅县'),
(2064, '101280501', '汕头'),
(2065, '101280502', '潮阳'),
(2066, '101280503', '澄海'),
(2067, '101280504', '南澳'),
(2068, '101280601', '深圳'),
(2069, '101280701', '珠海'),
(2070, '101280702', '斗门'),
(2071, '101280703', '金湾'),
(2072, '101280800', '佛山'),
(2073, '101280801', '顺德'),
(2074, '101280802', '三水'),
(2075, '101280803', '南海'),
(2076, '101280804', '高明'),
(2077, '101280901', '肇庆'),
(2078, '101280902', '广宁'),
(2079, '101280903', '四会'),
(2080, '101280905', '德庆'),
(2081, '101280906', '怀集'),
(2082, '101280907', '封开'),
(2083, '101280908', '高要'),
(2084, '101281001', '湛江'),
(2085, '101281002', '吴川'),
(2086, '101281003', '雷州'),
(2087, '101281004', '徐闻'),
(2088, '101281005', '廉江'),
(2089, '101281006', '赤坎'),
(2090, '101281007', '遂溪'),
(2091, '101281008', '坡头'),
(2092, '101281009', '霞山'),
(2093, '101281010', '麻章'),
(2094, '101281101', '江门'),
(2095, '101281103', '开平'),
(2096, '101281104', '新会'),
(2097, '101281105', '恩平'),
(2098, '101281106', '台山'),
(2099, '101281108', '鹤山'),
(2100, '101281109', '江海'),
(2101, '101281201', '河源'),
(2102, '101281202', '紫金'),
(2103, '101281203', '连平'),
(2104, '101281204', '和平'),
(2105, '101281205', '龙川'),
(2106, '101281206', '东源'),
(2107, '101281301', '清远'),
(2108, '101281302', '连南'),
(2109, '101281303', '连州'),
(2110, '101281304', '连山'),
(2111, '101281305', '阳山'),
(2112, '101281306', '佛冈'),
(2113, '101281307', '英德'),
(2114, '101281308', '清新'),
(2115, '101281401', '云浮'),
(2116, '101281402', '罗定'),
(2117, '101281403', '新兴'),
(2118, '101281404', '郁南'),
(2119, '101281406', '云安'),
(2120, '101281501', '潮州'),
(2121, '101281502', '饶平'),
(2122, '101281503', '潮安'),
(2123, '101281601', '东莞'),
(2124, '101281701', '中山'),
(2125, '101281801', '阳江'),
(2126, '101281802', '阳春'),
(2127, '101281803', '阳东'),
(2128, '101281804', '阳西'),
(2129, '101281901', '揭阳'),
(2130, '101281902', '揭西'),
(2131, '101281903', '普宁'),
(2132, '101281904', '惠来'),
(2133, '101281905', '揭东'),
(2134, '101282001', '茂名'),
(2135, '101282002', '高州'),
(2136, '101282003', '化州'),
(2137, '101282004', '电白'),
(2138, '101282005', '信宜'),
(2139, '101282006', '茂港'),
(2140, '101282101', '汕尾'),
(2141, '101282102', '海丰'),
(2142, '101282103', '陆丰'),
(2143, '101282104', '陆河'),
(2144, '101290101', '昆明'),
(2145, '101290103', '东川'),
(2146, '101290104', '寻甸'),
(2147, '101290105', '晋宁'),
(2148, '101290106', '宜良'),
(2149, '101290107', '石林'),
(2150, '101290108', '呈贡'),
(2151, '101290109', '富民'),
(2152, '101290110', '嵩明'),
(2153, '101290111', '禄劝'),
(2154, '101290112', '安宁'),
(2155, '101290201', '大理'),
(2156, '101290202', '云龙'),
(2157, '101290203', '漾濞'),
(2158, '101290204', '永平'),
(2159, '101290205', '宾川'),
(2160, '101290206', '弥渡'),
(2161, '101290207', '祥云'),
(2162, '101290208', '巍山'),
(2163, '101290209', '剑川'),
(2164, '101290210', '洱源'),
(2165, '101290211', '鹤庆'),
(2166, '101290212', '南涧'),
(2167, '101290301', '红河'),
(2168, '101290302', '石屏'),
(2169, '101290303', '建水'),
(2170, '101290304', '弥勒'),
(2171, '101290305', '元阳'),
(2172, '101290306', '绿春'),
(2173, '101290307', '开远'),
(2174, '101290308', '个旧'),
(2175, '101290309', '蒙自'),
(2176, '101290310', '屏边'),
(2177, '101290311', '泸西'),
(2178, '101290312', '金平'),
(2179, '101290313', '河口'),
(2180, '101290401', '曲靖'),
(2181, '101290402', '沾益'),
(2182, '101290403', '陆良'),
(2183, '101290404', '富源'),
(2184, '101290405', '马龙'),
(2185, '101290406', '师宗'),
(2186, '101290407', '罗平'),
(2187, '101290408', '会泽'),
(2188, '101290409', '宣威'),
(2189, '101290501', '保山'),
(2190, '101290503', '龙陵'),
(2191, '101290504', '施甸'),
(2192, '101290505', '昌宁'),
(2193, '101290506', '腾冲'),
(2194, '101290601', '文山'),
(2195, '101290602', '西畴'),
(2196, '101290603', '马关'),
(2197, '101290604', '麻栗坡'),
(2198, '101290605', '砚山'),
(2199, '101290606', '丘北'),
(2200, '101290607', '广南'),
(2201, '101290608', '富宁'),
(2202, '101290701', '玉溪'),
(2203, '101290702', '澄江'),
(2204, '101290703', '江川'),
(2205, '101290704', '通海'),
(2206, '101290705', '华宁'),
(2207, '101290706', '新平'),
(2208, '101290707', '易门'),
(2209, '101290708', '峨山'),
(2210, '101290709', '元江'),
(2211, '101290801', '楚雄'),
(2212, '101290802', '大姚'),
(2213, '101290803', '元谋'),
(2214, '101290804', '姚安'),
(2215, '101290805', '牟定'),
(2216, '101290806', '南华'),
(2217, '101290807', '武定'),
(2218, '101290808', '禄丰'),
(2219, '101290809', '双柏'),
(2220, '101290810', '永仁'),
(2221, '101290901', '普洱'),
(2222, '101290902', '景谷'),
(2223, '101290903', '景东'),
(2224, '101290904', '澜沧'),
(2225, '101290906', '墨江'),
(2226, '101290907', '江城'),
(2227, '101290908', '孟连'),
(2228, '101290909', '西盟'),
(2229, '101290911', '镇沅'),
(2230, '101290912', '宁洱'),
(2231, '101291001', '昭通'),
(2232, '101291002', '鲁甸'),
(2233, '101291003', '彝良'),
(2234, '101291004', '镇雄'),
(2235, '101291005', '威信'),
(2236, '101291006', '巧家'),
(2237, '101291007', '绥江'),
(2238, '101291008', '永善'),
(2239, '101291009', '盐津'),
(2240, '101291010', '大关'),
(2241, '101291011', '水富'),
(2242, '101291101', '临沧'),
(2243, '101291102', '沧源'),
(2244, '101291103', '耿马'),
(2245, '101291104', '双江'),
(2246, '101291105', '凤庆'),
(2247, '101291106', '永德'),
(2248, '101291107', '云县'),
(2249, '101291108', '镇康'),
(2250, '101291201', '怒江'),
(2251, '101291203', '福贡'),
(2252, '101291204', '兰坪'),
(2253, '101291205', '泸水'),
(2254, '101291207', '贡山'),
(2255, '101291301', '迪庆'),
(2256, '101291302', '德钦'),
(2257, '101291303', '维西'),
(2258, '101291401', '丽江'),
(2259, '101291402', '永胜'),
(2260, '101291403', '华坪'),
(2261, '101291404', '宁蒗'),
(2262, '101291501', '德宏'),
(2263, '101291503', '陇川'),
(2264, '101291504', '盈江'),
(2265, '101291506', '瑞丽'),
(2266, '101291507', '梁河'),
(2267, '101291508', '潞西'),
(2268, '101291601', '西双版纳'),
(2269, '101291603', '勐海'),
(2270, '101291605', '勐腊'),
(2271, '101300101', '南宁'),
(2272, '101300103', '邕宁'),
(2273, '101300104', '横县'),
(2274, '101300105', '隆安'),
(2275, '101300106', '马山'),
(2276, '101300107', '上林'),
(2277, '101300108', '武鸣'),
(2278, '101300109', '宾阳'),
(2279, '101300201', '崇左'),
(2280, '101300202', '天等'),
(2281, '101300203', '龙州'),
(2282, '101300204', '凭祥'),
(2283, '101300205', '大新'),
(2284, '101300206', '扶绥'),
(2285, '101300207', '宁明'),
(2286, '101300301', '柳州'),
(2287, '101300302', '柳城'),
(2288, '101300304', '鹿寨'),
(2289, '101300305', '柳江'),
(2290, '101300306', '融安'),
(2291, '101300307', '融水'),
(2292, '101300308', '三江'),
(2293, '101300401', '来宾'),
(2294, '101300402', '忻城'),
(2295, '101300403', '金秀'),
(2296, '101300404', '象州'),
(2297, '101300405', '武宣'),
(2298, '101300406', '合山'),
(2299, '101300501', '桂林'),
(2300, '101300503', '龙胜'),
(2301, '101300504', '永福'),
(2302, '101300505', '临桂'),
(2303, '101300506', '兴安'),
(2304, '101300507', '灵川'),
(2305, '101300508', '全州'),
(2306, '101300509', '灌阳'),
(2307, '101300510', '阳朔'),
(2308, '101300511', '恭城'),
(2309, '101300512', '平乐'),
(2310, '101300513', '荔浦'),
(2311, '101300514', '资源'),
(2312, '101300601', '梧州'),
(2313, '101300602', '藤县'),
(2314, '101300604', '苍梧'),
(2315, '101300605', '蒙山'),
(2316, '101300606', '岑溪'),
(2317, '101300701', '贺州'),
(2318, '101300702', '昭平'),
(2319, '101300703', '富川'),
(2320, '101300704', '钟山'),
(2321, '101300801', '贵港'),
(2322, '101300802', '桂平'),
(2323, '101300803', '平南'),
(2324, '101300901', '玉林'),
(2325, '101300902', '博白'),
(2326, '101300903', '北流'),
(2327, '101300904', '容县'),
(2328, '101300905', '陆川'),
(2329, '101300906', '兴业'),
(2330, '101301001', '百色'),
(2331, '101301002', '那坡'),
(2332, '101301003', '田阳'),
(2333, '101301004', '德保'),
(2334, '101301005', '靖西'),
(2335, '101301006', '田东'),
(2336, '101301007', '平果'),
(2337, '101301008', '隆林'),
(2338, '101301009', '西林'),
(2339, '101301010', '乐业'),
(2340, '101301011', '凌云'),
(2341, '101301012', '田林'),
(2342, '101301101', '钦州'),
(2343, '101301102', '浦北'),
(2344, '101301103', '灵山'),
(2345, '101301201', '河池'),
(2346, '101301202', '天峨'),
(2347, '101301203', '东兰'),
(2348, '101301204', '巴马'),
(2349, '101301205', '环江'),
(2350, '101301206', '罗城'),
(2351, '101301207', '宜州'),
(2352, '101301208', '凤山'),
(2353, '101301209', '南丹'),
(2354, '101301210', '都安'),
(2355, '101301211', '大化'),
(2356, '101301301', '北海'),
(2357, '101301302', '合浦'),
(2358, '101301303', '涠洲岛'),
(2359, '101301401', '防城港'),
(2360, '101301402', '上思'),
(2361, '101301403', '东兴'),
(2362, '101301405', '防城'),
(2363, '101310101', '海口'),
(2364, '101310201', '三亚'),
(2365, '101310202', '东方'),
(2366, '101310203', '临高'),
(2367, '101310204', '澄迈'),
(2368, '101310205', '儋州'),
(2369, '101310206', '昌江'),
(2370, '101310207', '白沙'),
(2371, '101310208', '琼中'),
(2372, '101310209', '定安'),
(2373, '101310210', '屯昌'),
(2374, '101310211', '琼海'),
(2375, '101310212', '文昌'),
(2376, '101310214', '保亭'),
(2377, '101310215', '万宁'),
(2378, '101310216', '陵水'),
(2379, '101310221', '乐东'),
(2380, '101310222', '五指山'),
(2381, '101320101', '香港'),
(2382, '101330101', '澳门'),
(2383, '101340101', '台北'),
(2384, '101340102', '桃园'),
(2385, '101340103', '新竹'),
(2386, '101340104', '宜兰'),
(2387, '101340201', '高雄'),
(2388, '101340202', '嘉义'),
(2389, '101340203', '台南'),
(2390, '101340204', '台东'),
(2391, '101340205', '屏东'),
(2392, '101340401', '台中'),
(2393, '101340402', '苗栗'),
(2394, '101340403', '彰化'),
(2395, '101340404', '南投'),
(2396, '101340405', '花莲'),
(2397, '101340406', '云林'),
(2398, '102010100', '首尔'),
(2399, '103010100', '东京'),
(2400, '103020100', '大阪'),
(2401, '103040100', '札幌'),
(2402, '103050100', '福冈'),
(2403, '103090100', '京都'),
(2404, '104010100', '新加坡'),
(2405, '105010100', '吉隆坡'),
(2406, '106010100', '曼谷'),
(2407, '107010100', '河内'),
(2408, '107020100', '胡志明市'),
(2409, '108010100', '仰光'),
(2410, '109010100', '万象'),
(2411, '111010100', '雅加达'),
(2412, '111080100', '登巴萨'),
(2413, '112010100', '德黑兰'),
(2414, '113010100', '新德里'),
(2415, '113030100', '孟买'),
(2416, '113090100', '斯利那加'),
(2417, '114010100', '伊斯兰堡'),
(2418, '114030100', '卡拉奇'),
(2419, '114040100', '白沙瓦'),
(2420, '115010100', '塔什干'),
(2421, '117010100', '科伦坡'),
(2422, '118010100', '喀布尔'),
(2423, '118030100', '坎大哈'),
(2424, '120010100', '斯里巴加湾'),
(2425, '121010100', '巴林'),
(2426, '124010100', '阿布扎比'),
(2427, '124020100', '迪拜'),
(2428, '127010100', '平壤'),
(2429, '130010100', '阿斯塔纳'),
(2430, '132010100', '乌兰巴托'),
(2431, '136010100', '马尼拉'),
(2432, '138010100', '利雅得'),
(2433, '139010100', '大马士革'),
(2434, '201010100', '伦敦'),
(2435, '201050100', '曼彻斯特'),
(2436, '202010100', '巴黎'),
(2437, '202100100', '马赛'),
(2438, '203010100', '柏林'),
(2439, '203020100', '法兰克福'),
(2440, '203050100', '汉堡'),
(2441, '204010100', '罗马'),
(2442, '204040100', '米兰'),
(2443, '205010100', '阿姆斯特丹'),
(2444, '206010100', '马德里'),
(2445, '206020100', '巴塞罗那'),
(2446, '207010100', '哥本哈根'),
(2447, '208010100', '莫斯科'),
(2448, '210020100', '日内瓦'),
(2449, '210030100', '苏黎世'),
(2450, '211010100', '斯德哥尔摩'),
(2451, '214010100', '里斯本'),
(2452, '215020100', '伊斯坦布尔'),
(2453, '216010100', '布鲁塞尔'),
(2454, '217010100', '维也纳'),
(2455, '218010100', '雅典'),
(2456, '222010100', '赫尔辛基'),
(2457, '301010100', '开罗'),
(2458, '302010100', '开普敦'),
(2459, '302020100', '约翰内斯堡'),
(2460, '303010100', '突尼斯'),
(2461, '304020100', '拉各斯'),
(2462, '305010100', '阿尔及尔'),
(2463, '311010100', '亚的斯亚贝巴'),
(2464, '317010100', '内罗毕'),
(2465, '321020100', '卡萨布兰卡'),
(2466, '327010100', '达喀尔'),
(2467, '332010100', '达累斯萨拉姆'),
(2468, '334010100', '卢萨卡'),
(2469, '401010100', '华盛顿'),
(2470, '401020101', '迈阿密'),
(2471, '401020104', '奥兰多'),
(2472, '401030101', '亚特兰大'),
(2473, '401040101', '洛杉矶'),
(2474, '401040102', '圣弗朗西斯科'),
(2475, '401060100', '波士顿'),
(2476, '401070101', '芝加哥'),
(2477, '401100101', '西雅图'),
(2478, '401110101', '纽约'),
(2479, '401120108', '休斯敦'),
(2480, '401370100', '拉斯维加斯'),
(2481, '401480100', '火奴鲁鲁'),
(2482, '404010100', '渥太华'),
(2483, '404030100', '温哥华'),
(2484, '404040100', '多伦多'),
(2485, '404130100', '埃德蒙顿'),
(2486, '404140100', '卡尔加里'),
(2487, '404220100', '温尼伯'),
(2488, '404230100', '魁北克'),
(2489, '404240100', '蒙特利尔'),
(2490, '406010100', '哈瓦那'),
(2491, '411010100', '墨西哥城'),
(2492, '416010100', '加拉加斯'),
(2493, '601020101', '悉尼'),
(2494, '601030101', '布里斯班'),
(2495, '601040101', '阿德来德'),
(2496, '601060101', '墨尔本'),
(2497, '601070101', '珀斯'),
(2498, '606010100', '惠灵顿'),
(2499, '606020100', '奥克兰'),
(2500, '606030100', '克莱斯特彻奇'),
(2501, '101030100', '天津');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wechat_group`
--

CREATE TABLE IF NOT EXISTS `tp_wechat_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wechatgroupid` (`wechatgroupid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wechat_group_list`
--

CREATE TABLE IF NOT EXISTS `tp_wechat_group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `g_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
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

-- --------------------------------------------------------

--
-- 表的结构 `tp_wecha_user`
--

CREATE TABLE IF NOT EXISTS `tp_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wecht_grout`
--

CREATE TABLE IF NOT EXISTS `tp_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户组表，非本站用户级表';

-- --------------------------------------------------------

--
-- 表的结构 `tp_wedding`
--

CREATE TABLE IF NOT EXISTS `tp_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_wedding`
--

INSERT INTO `tp_wedding` (`id`, `pid`, `token`, `keyword`, `title`, `picurl`, `openpic`, `coverurl`, `woman`, `man`, `who_first`, `phone`, `time`, `place`, `lng`, `lat`, `video`, `mp3url`, `passowrd`, `word`, `qr_code`, `copyrite`, `create_time`) VALUES
(1, 0, 'ekfdng1401977502', '衷', '幸福的见证', 'http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg', 'http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg', 'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png', '何俊玲', '衷国强', 1, '0573-8729929', 1405008000, '江西南丰', '0', '0', '', '', 123, '亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福.', '', '123', 1402031389),
(2, 0, 'xbgzcp1407232534', '喜帖', '喜帖', 'http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg', 'http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg', 'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png', '信息你', '信心', 1, '11111111', 1407168000, '四川理工学院', '0', '0', '', '', 123, '亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福.', 'http://weixin.jihuodi.com/uploads/x/xbgzcp1407232534/a/5/2/0/thumb_53e0be8f7270e.jpg', '理工', 1407237783);

-- --------------------------------------------------------

--
-- 表的结构 `tp_wedding_info`
--

CREATE TABLE IF NOT EXISTS `tp_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_wedding_info`
--

INSERT INTO `tp_wedding_info` (`id`, `fid`, `name`, `phone`, `num`, `info`, `type`, `time`) VALUES
(1, 1, '衷国强', '13511350189', 1, '', 1, 1402037322),
(2, 1, '衷国强', '13511351135', 0, '你好，谢谢', 2, 1402037578),
(3, 1, '哈哈', '13211321132', 0, '哈哈', 2, 1402037598);

-- --------------------------------------------------------

--
-- 表的结构 `tp_wehcat_member_enddate`
--

CREATE TABLE IF NOT EXISTS `tp_wehcat_member_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `tp_wehcat_member_enddate`
--

INSERT INTO `tp_wehcat_member_enddate` (`id`, `openid`, `enddate`, `joinUpDate`, `uid`, `token`) VALUES
(1, 'o48e9t55kSHy8cNLYPkhzCxtriG0', 1407209901, 0, 0, 'ekfdng1401977502'),
(2, 'o48e9txwnnJNBIoLGdkCTGketQDA', 1402038919, 0, 0, 'ekfdng1401977502'),
(3, 'o48e9t3VtUFW-RKH9GwtNjevL1jY', 1402218171, 0, 0, 'ekfdng1401977502'),
(4, 'opqOLt5SpEspMCjP6PGsMewSJq5A', 1404954087, 0, 0, 'vmwylz1404883194'),
(5, 'oWPYdt-Qj1fxjMIlgKAK_1uz1KAY', 1404461744, 0, 0, 'tlpqmn1404450757'),
(6, 'opqOLt6WXOG-HKsPEWcMIGNyMzjg', 1404467895, 0, 0, 'bwvmro1404199686'),
(7, 'opqOLt_JzmX6rFjN-EhknBAE8YFc', 1404957303, 0, 0, 'vmwylz1404883194'),
(8, 'opqOLtyGJG0vDR60fnhS2UJA4eD0', 1405301750, 0, 0, 'vmwylz1404883194'),
(9, 'opqOLtyl_y7XfXAhNZ9jN_BZ6vUk', 1405348920, 0, 0, 'vmwylz1404883194'),
(10, 'obxQHt6xC2WZBCp6mqWqD_sB-s64', 1405614134, 0, 0, 'hzddpv1405521492'),
(11, 'o_br1jo3ox9ZFeiZWdlkGyKsd_lM', 1405561178, 0, 0, 'hgfgmt1404896579'),
(12, 'oVxJktyr88Tfoqzl48_SMYjsrg-4', 1405570949, 0, 0, 'tjmmox1405563308'),
(13, 'oOn2Xjg9oVxzbwNTTQBi3OjzO8qU', 1405935907, 0, 0, 'gcccbf1405935616'),
(14, 'oWkrajoZhCK259lLKSwHDjkaPrqY', 1405958772, 0, 0, 'xjclzx1405958021'),
(15, 'oWkrajoQfdtqBXKTUm94pwJeHPbY', 1405959147, 0, 0, 'xjclzx1405958021'),
(16, 'o4kZ4s7XAi0ahnUtU36aUTYsXMiE', 1406003870, 0, 0, 'zrkepg1406003661'),
(17, 'o8FL_jjMy_G-Bsapv_M_vclhqkKU', 1406008297, 0, 0, 'iihybk1406007981'),
(18, 'oKzsIj6FRYxG_t-TBGjq4ljYGS88', 1406122565, 0, 0, 'punypv1406120801'),
(19, 'oxyM1uEsR17ZaBkULTBsJOSWzyR0', 1406133155, 0, 0, 'wwvwfz1406130726'),
(20, 'oZtdUuODeSeDg5gLixUjE6NfY_FQ', 1406262657, 0, 0, 'bqtxnv1406167321'),
(21, 'oCSt5uCNn1rnJ2ZWBFZXCUlRR9_4', 1406189512, 0, 0, 'kogqns1406184632'),
(22, 'oCSt5uEEzEmGvxkTdUNE9jQ7C8YI', 1406187479, 0, 0, 'kogqns1406184632'),
(23, 'oCSt5uM4eVjg1VtVdV6-MhhUZS9c', 1406189403, 0, 0, 'kogqns1406184632'),
(24, 'oZtdUuEHiw1tU4skZKDMlXvdUTE8', 1406262612, 0, 0, 'bqtxnv1406167321'),
(25, 'oCS7gjkP2ktVR92v_GMrvS3ZPyJM', 1406208737, 0, 0, 'achbur1406208229'),
(26, 'oZtdUuM6E9oA3N3OvlG878JCbRcM', 1406252771, 0, 0, 'bqtxnv1406167321'),
(27, 'o48e9t0pf5ZWzogSaR3X_rvvz5_I', 1406368964, 0, 0, 'shibnn1405586353'),
(28, 'oWoL6juwYeNSs_gei_xj-h3vhO-k', 1406371724, 0, 0, 'ksmbyh1406371219'),
(29, 'oWoL6jvAl3B8XCMbQpgO-H-8EKy8', 1406390312, 0, 0, 'ksmbyh1406371219'),
(30, 'oWoL6joPLI5V2gSi5at_trfYZ7Jk', 1406374598, 0, 0, 'ksmbyh1406371219'),
(31, 'oWoL6jsBk4KGQCbmh6oLQ5sDlC18', 1406376960, 0, 0, 'ksmbyh1406371219'),
(32, 'oWoL6juZUpup-ehopbrWhIUblDP8', 1406377504, 0, 0, 'ksmbyh1406371219'),
(33, 'oWoL6jtYEWqqZOm9DZRfNO1YG7fI', 1406514376, 0, 0, 'ksmbyh1406371219'),
(34, 'oWoL6jpZ2xOI7V_5fCk63TZIdYSc', 1406385636, 0, 0, 'ksmbyh1406371219'),
(35, 'oWoL6jimpPhoxgWhozDRA95b6xoE', 1406425589, 0, 0, 'ksmbyh1406371219'),
(36, 'oWoL6jqlwbH8H7T96CWUUwK4_8Eg', 1406444503, 0, 0, 'ksmbyh1406371219'),
(37, 'oWoL6jn7LEjWphDLxJ9NNskm8Em0', 1406459690, 0, 0, 'ksmbyh1406371219'),
(38, 'ovpePt5TiEHvi8w6T1g8u7U-xwh0', 1406464636, 0, 0, 'yorbbr1406463012'),
(39, 'oWoL6jr4zphQMJYKUwyNfDhYOHeE', 1406480625, 0, 0, 'ksmbyh1406371219'),
(40, 'oWoL6jp0nqh5FiyrRGulc-GwOYAE', 1406518969, 0, 0, 'ksmbyh1406371219'),
(41, 'oWoL6joBvjebJdfil8SiDTWgIq4c', 1406538566, 0, 0, 'ksmbyh1406371219'),
(42, 'oOXI2uGLRX0T2Xst3iiARqTXubD4', 1406792363, 0, 0, 'pzbwyi1406724637'),
(43, 'ojmeHuC9JC1SEwdKyaDEn-kkxwvU', 1406937310, 0, 0, 'xctvth1406867781'),
(44, 'ojmeHuB-ho-NE7D0wPkUWFxa2_gQ', 1406910533, 0, 0, 'xctvth1406867781'),
(45, 'oq5sJtyP86zYugIpvS5RXa00nh7w', 1406947480, 0, 0, 'owikav1406947345'),
(46, 'oq5sJt4scMW5RvI3t-UNxHkyzt7E', 1407124199, 0, 0, 'owikav1406947345'),
(47, 'oQy8Ajxsncz1qFljwRRK0zC6Bq8U', 1407207358, 0, 0, 'vzohcb1406947236'),
(48, 'oM40BuImzFG46rasnGQt_rjK7f1Y', 1407244085, 0, 0, 'qzembv1407229744'),
(49, 'o9MMwtxSL4-wutscE4K6mgcE9ox4', 1407240557, 0, 0, 'xbgzcp1407232534'),
(50, 'oq5sJt1vfvyH-sZOw0E3mWwxeWlU', 1407258577, 0, 0, 'owikav1406947345');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wxuser`
--

CREATE TABLE IF NOT EXISTS `tp_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `pigsecret` varchar(150) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL COMMENT '省',
  `color_id` mediumint(4) NOT NULL DEFAULT '0',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(2) NOT NULL DEFAULT '1' COMMENT '默认首页模版ID',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `shoptpltypeid` varchar(2) NOT NULL COMMENT '商城模板ID',
  `shoptpltypename` varchar(20) NOT NULL COMMENT '商城模板',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `routerid` varchar(50) NOT NULL,
  `transfer_customer_service` tinyint(1) DEFAULT '0',
  `openphotoprint` tinyint(1) NOT NULL DEFAULT '0',
  `freephotocount` mediumint(4) NOT NULL DEFAULT '3',
  `oauth` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- 转存表中的数据 `tp_wxuser`
--

INSERT INTO `tp_wxuser` (`id`, `uid`, `wxname`, `winxintype`, `appid`, `appsecret`, `wxid`, `weixin`, `headerpic`, `token`, `pigsecret`, `province`, `color_id`, `city`, `qq`, `wxfans`, `typeid`, `typename`, `tongji`, `allcardnum`, `cardisok`, `yetcardnum`, `totalcardnum`, `createtime`, `tpltypeid`, `updatetime`, `tpltypename`, `tpllistid`, `tpllistname`, `shoptpltypeid`, `shoptpltypename`, `tplcontentid`, `tplcontentname`, `routerid`, `transfer_customer_service`, `openphotoprint`, `freephotocount`, `oauth`) VALUES
(3, 4, '同创科技', 2, 'wxa89444fdf275a856', 'a3d80dd6e74a1771773bb5eaba6b74e9', 'gh_5ef80305aa3d', 'nanfengtckj', 'http://weixin.jihuodi.com/tpl/static/attachment/icon/canyin/canyin_red/2.png', 'ekfdng1401977502', '', 'p', 6, 'c', '1401977502@yourdomain.com', 0, 8, '服务', '', 10000, 1, 50, 50, '1401977589', '14', '1407218824', '1142_index', '1', 'yl_list', '', '', '1', 'ktv_content', 'router_cfg_9', 0, 0, 3, 0),
(4, 7, '额外企鹅完全', 1, '', '', '而我却', '546545', './tpl/User/default/common/images/portrait.jpg', 'ooeiuv1402737849', '', 'p', 1, 'c', '1402737849@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1402737855', '12', '1402737855', '1125_index_xcvy', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(5, 8, 'asdf', 1, '', '', 'asdf', 'asdf', './tpl/User/default/common/images/portrait.jpg', 'pteilr1402833110', '', 'p', 0, 'c', '1402833110@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1402833115', '1', '1402833115', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 1, 0, 3, 0),
(6, 9, 'sdds', 1, '', '', 'dsds', 'ds', './tpl/User/default/common/images/portrait.jpg', 'nszorb1402857075', '', 'p', 0, 'c', '1402857075@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1402857081', '11', '1402857081', '111_index_78yus', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(7, 4, '海宁乐橙婚庆', 1, '', '', 'gh_78776f34d8cc', 'lechengwed', '', 'b3c1b32187fe389', '', '', 0, '', '', 0, 0, '0', '', 0, 0, 0, 0, '', '14', '', '1142_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(8, 10, '998998', 3, '998998', '998998', '998998', '998998', './tpl/User/default/common/images/portrait.jpg', 'xshtyn1403100790', '', 'p', 0, 'c', '1403100790@yourdomain.com', 0, 8, '服务', '', 10000, 0, 0, 0, '1403100798', '1', '1403100798', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(10, 13, '微百信商城', 1, '', '', 'gh_eebe7f6e2c6f', 'wbx117', './tpl/User/default/common/images/portrait.jpg', 'bwvmro1404199686', '', 'p', 0, 'c', '1404199686@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1404199782', '1', '1404199782', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(11, 14, '23232', 1, '', '', '323232', '3232', './tpl/User/default/common/images/portrait.jpg', 'psuyri1404444703', '', 'p', 0, 'c', '1404444703@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1404444708', '1', '1404444708', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(14, 15, '沃龙信息', 1, '', '', 'gh_117fec6e241f ', 'wolongxx', './tpl/User/default/common/images/portrait.jpg', 'vzukui1404545578', '', 'p', 0, 'c', '1404545578@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1404545597', '1', '1404545597', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(15, 16, '55555555', 1, '', '', '55555555', '55555555', './tpl/User/default/common/images/portrait.jpg', 'qzwpqe1404546345', '', 'p', 0, 'c', '1404546345@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1404546349', '1', '1404546349', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(16, 17, 's', 1, '3', '3', 'aadf', 'asdf', './tpl/User/default/common/images/portrait.jpg', 'hpwshv1404715458', '', 'p', 0, 'c', '1404715458@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1404715466', '1', '1404715640', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(17, 18, '燕郊微商城', 1, '', '', 'gh_e3a26c9bc200', 'v_shpo', './tpl/User/default/common/images/portrait.jpg', 'vtdscs1404740044', '', 'p', 0, 'c', '1404740044@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1404740052', '1', '1404740052', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(18, 19, '333', 1, '', '', '33', '33434', './tpl/User/default/common/images/portrait.jpg', 'pwearo1404791557', '', 'p', 0, 'c', '1404791557@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1404791562', '11', '1404791562', '1117_index_35y5', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(20, 24, '微百信商城', 1, '', '', 'gh_eebe7f6e2c6f', 'wbx117', './tpl/User/default/common/images/portrait.jpg', 'vmwylz1404883194', '', 'p', 0, 'c', '1404883194@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1404883272', '1', '1404883272', 'ty_index', '1', 'yl_list', '1', '101_index_wis2a', '1', 'ktv_content', '', 0, 0, 3, 0),
(23, 25, 'ceshi2014', 1, '', '', 'gh_631rwjhrwe1', 'gh_631rwjhrwe1', './tpl/User/default/common/images/portrait.jpg', 'gmrqhe1405059770', '', 'p', 0, 'c', '1405059770@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1405059781', '1', '1405059781', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(24, 26, '123321', 3, '123321', '123321', '123321', '123321', './tpl/User/default/common/images/portrait.jpg', 'ofrbtc1405169766', '', 'p', 0, 'c', '1405169766@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405169776', '1', '1405169776', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(25, 27, '111111111111', 2, '', '', 'gh_631rwjhrwe1', '11111111111111111', './tpl/User/default/common/images/portrait.jpg', 'smdqgn1405176606', '', 'p', 0, 'c', '1405176606@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405176615', '1', '1405176633', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(28, 31, 'yiyougz', 1, '', '', 'gh_de38a6763d68', 'penglong', './tpl/User/default/common/images/portrait.jpg', 'kyhwga1405500137', '', 'p', 0, 'c', '1405500137@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405500242', '1', '1405500242', 'ty_index', '1', 'yl_list', '2', '102_index_wis4a', '1', 'ktv_content', '', 0, 0, 3, 0),
(29, 30, 'wz', 2, 'wxa4385c65962ef0f3', 'f8a5bb5b8a5725b2999c1c54cda45e07', 'gh_269b3c91c1d4', '254519866', './tpl/User/default/common/images/portrait.jpg', 'hzddpv1405521492', '', '深圳', 3, '龙华', '1405521492@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405521861', '13', '1405786445', '1136_index_n4fb', '1', 'yl_list', '2', '102_index_wis4a', '1', 'ktv_content', '', 0, 0, 3, 0),
(30, 32, '122', 2, 'wx67df04561a1c0bb3', 'eb4163a1224d6856e12db114ba2a9cc8', 'gh_dd324798e0c8', 'dsf', './tpl/User/default/common/images/portrait.jpg', 'tjmmox1405563308', '', 'p', 0, 'c', '1405563308@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405563317', '1', '1405570536', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(32, 33, 'rqeeq', 1, '', '', 'req', 'req', './tpl/User/default/common/images/portrait.jpg', 'sdsrvl1405589701', '', 'p', 0, 'c', '1405589701@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405589705', '1', '1405589705', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(33, 34, '房产网', 1, '', '', 'gh_423dwj', 'weis666', './tpl/User/default/common/images/portrait.jpg', 'cahcww1405590711', '', 'p', 0, 'c', '1405590711@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405590738', '1', '1405590738', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(34, 36, '12321', 1, '3213123', '213213213', '321321', '321312', './tpl/User/default/common/images/portrait.jpg', 'thvusk1405647851', '', 'p', 1, 'c', '1405647851@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1405647855', '10', '1405647855', '1101_index_sd3h', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(35, 35, '新睿启', 1, '', '', 'gh_6e314d906ab2', 'newruiqi001', './tpl/User/default/common/images/portrait.jpg', 'rqnkyd1405672139', '', 'p', 0, 'c', '1405672139@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405672170', '1', '1405672170', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(36, 37, '1341234', 2, '', '', '12341234', '21341234', './tpl/User/default/common/images/portrait.jpg', 'ubtrwc1405702514', '', 'p', 0, 'c', '1405702514@yourdomain.com', 0, 8, '服务', '', 10000, 0, 0, 0, '1405702518', '13', '1405702518', '1135_index_xcev', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(37, 38, '123123', 1, '', '', '123123', '123123', './tpl/User/default/common/images/portrait.jpg', 'dzucxy1405741000', '', 'p', 0, 'c', '1405741000@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405741003', '1', '1405741003', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(39, 29, '11', 1, '', '', '111', '11', './tpl/User/default/common/images/portrait.jpg', 'tiqlly1405761617', '', 'p', 0, 'c', '1405761617@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405761622', '1', '1405761622', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(40, 40, 'fddf', 1, '', '', 'df', 'df', './tpl/User/default/common/images/portrait.jpg', 'spzzkp1405790344', '', 'p', 0, 'c', '1405790344@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405790349', '1', '1405790349', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(41, 42, '子润商贸', 1, '', '', 'gh_c0c6ce6d846e', 'jiajias123', './tpl/User/default/common/images/portrait.jpg', 'vfrcfa1405826496', '', 'p', 0, 'c', '1405826496@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405826505', '1', '1405826505', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(42, 44, 'DF', 1, '', '', 'DSF', 'DSF', './tpl/User/default/common/images/portrait.jpg', 'negttb1405850678', '', 'p', 0, 'c', '1405850678@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405850681', '1', '1405850681', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(43, 45, '康美口腔', 1, '', '', 'gh_631rwjhrwe1 ', 'kmkq02', './tpl/User/default/common/images/portrait.jpg', 'mxnkmq1405914043', '', 'p', 0, 'c', '1405914043@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405914094', '1', '1405914094', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(45, 46, '321', 1, '', '', '321', '123', './tpl/User/default/common/images/portrait.jpg', 'iqdbrg1405937896', '', 'p', 0, 'c', '1405937896@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405937904', '1', '1405937904', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(46, 47, '枫桥助手', 2, '', '', 'gh_f58e46a0edc0', 'hnuc123', './tpl/User/default/common/images/portrait.jpg', 'xjclzx1405958021', '', '湖南', 0, '长沙', '1405958021@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1405958045', '1', '1405958316', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(47, 48, 'asdfsdaf', 1, '', '', 'sadfasdf33', 'sadf', './tpl/User/default/common/images/portrait.jpg', 'xyhsmo1405967053', '', 'p', 0, 'c', '1405967053@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405967057', '1', '1405967057', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(48, 49, 'bgg', 1, '', '', 'gh_423dwjkeww3', 'pigcms', './tpl/User/default/common/images/portrait.jpg', 'qajxvf1405996113', '', 'p', 0, 'c', '1405996113@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1405996125', '1', '1405996125', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(49, 50, '掌上合肥', 3, 'wx04fda9731b0766fa', '6ca6d8326dacc202c769d4ae87196db8', 'gh_c334629ed826', 'zshf2014', './tpl/User/default/common/images/portrait.jpg', 'zrkepg1406003661', '', 'p', 0, 'c', '1406003661@yourdomain.com', 0, 8, '服务', '', 10000, 1, 9, 9, '1406003718', '1', '1406003718', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(50, 52, '果冻空间ITRD', 1, '', '', 'gh_2ddfc4bcfdad', 'w52091199', './tpl/User/default/common/images/portrait.jpg', 'iihybk1406007981', '', 'p', 0, 'c', '1406007981@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406008099', '1', '1406008099', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(51, 53, '3', 1, '', '', '2', '1', './tpl/User/default/common/images/portrait.jpg', 'mnzqdb1406009469', '', 'p', 0, 'c', '1406009469@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406009482', '1', '1406009482', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(52, 54, '12345678', 1, '', '', 'gh_1893368d5bda', '12345678', './tpl/User/default/common/images/portrait.jpg', 'jguphy1406010039', '', 'p', 0, 'c', '1406010039@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406010046', '1', '1406010046', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(53, 55, '123123', 1, '', '', '123123', '123123', './tpl/User/default/common/images/portrait.jpg', 'tccwvw1406014990', '', 'p', 6, 'c', '1406014990@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406014994', '1', '1406014994', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(54, 56, '晁树海', 1, '', '', 'gh_d750abdd48b5', 'csh18604462963', './tpl/User/default/common/images/portrait.jpg', 'xcmcbn1406020997', '', 'p', 0, 'c', '1406020997@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406021007', '1', '1406021007', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(55, 57, '213', 1, '', '', '213', '123', './tpl/User/default/common/images/portrait.jpg', 'xtqgxk1406024082', '', 'p', 0, 'c', '1406024082@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406024085', '1', '1406024085', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(80, 81, 'test121', 1, '', '', 'test121', 'test121', './tpl/User/default/common/images/portrait.jpg', 'kmnwkp1406885165', 'EBFhhTs4PJhK1NvcrBlC', 'p', 0, 'c', '1406885165@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406885168', '1', '1406885168', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(57, 59, '大大', 1, '', '', 'gh_631rwjhrwe1', 'www', './tpl/User/default/common/images/portrait.jpg', 'oalaxv1406127433', '', 'p', 0, 'c', '1406127433@yourdomain.com', 0, 8, '服务', '', 10000, 1, 113, 113, '1406127452', '1', '1406127452', 'ty_index', '1', 'yl_list', '1', '101_index_wis2a', '1', 'ktv_content', '', 0, 0, 3, 0),
(58, 60, 'dajiaowg', 1, '8', '890', '89080', '890809', './tpl/User/default/common/images/portrait.jpg', 'wwvwfz1406130726', '', 'p', 0, 'c', '1406130726@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406130736', '1', '1406130736', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(59, 61, '船长9号', 1, '', '', 'gh_7e5d3aaae9eb', 'Captain_nine', './tpl/User/default/common/images/portrait.jpg', 'bqtxnv1406167321', '', 'p', 0, 'c', '1406167321@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406167703', '11', '1406167703', '1111_index_cveg', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(60, 62, '11111111111', 1, '', '', '11111111111111111111', '111111111111', './tpl/User/default/common/images/portrait.jpg', 'lrjngf1406171501', '', 'p', 0, 'c', '1406171501@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406171513', '1', '1406171513', 'ty_index', '1', 'yl_list', '2', '102_index_wis4a', '1', 'ktv_content', '', 0, 0, 3, 0),
(64, 66, '1', 1, '', '', '1', '1', './tpl/User/default/common/images/portrait.jpg', 'gwtuam1406201970', '', 'p', 0, 'c', '1406201970@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406201974', '1', '1406201974', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(63, 64, 'ee', 1, '', '', '11', 'xykj', './tpl/User/default/common/images/portrait.jpg', 'ueotip1406188853', '', 'p', 0, 'c', '1406188853@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406188873', '1', '1406188873', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(70, 73, '12', 1, '', '', 'gh_423dwjkeww3', 'gh_423dwjkeww3', './tpl/User/default/common/images/portrait.jpg', 'lutuse1406361038', 'Pt7DJqoQT69mEgnlnfmQ', 'p', 0, 'c', '1406361038@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406361052', '1', '1406361052', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(65, 67, '战斗鸡', 1, '', '', 'gh_f11921be4629', 'zhandoujibot', './tpl/User/default/common/images/portrait.jpg', 'achbur1406208229', '', 'p', 0, 'c', '1406208229@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406208244', '1', '1406208244', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(66, 68, 'q', 1, '', '', 'q', 'q', './tpl/User/default/common/images/portrait.jpg', 'wpirvf1406216732', '', 'p', 0, 'c', '1406216732@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406216736', '1', '1406216736', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(67, 69, '南阳微销第一品牌', 1, 'wx62ed6af390cd76cb', '205b9d1d118099e380a6cfc15629a77b', 'gh_0cbb71b26190', 'nywxdypp', './tpl/User/default/common/images/portrait.jpg', 'prqrpe1406264162', '', 'p', 0, 'c', '1406264162@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406264171', '1', '1406264466', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(68, 70, '微商互联', 1, '', '', 'gh_631rwjhrw58', 'yunjunet', './tpl/User/default/common/images/portrait.jpg', 'msflwi1406266826', '', 'p', 0, 'c', '1406266826@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406266853', '1', '1406266853', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(69, 72, 'hz366', 1, 'cqipnetcqipnet', 'cqipnetcqipnetcqipnetcqipnetcqipnet', 'gh_631rwjhrwe1', 'cqipnet', './tpl/User/default/common/images/portrait.jpg', 'zqrmsx1406336165', '', 'p', 0, 'c', '1406336165@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1406336187', '13', '1406336187', '1135_index_xcev', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(77, 78, 'asdf', 1, '', '', 'asdfas', 'asdf', './tpl/User/default/common/images/portrait.jpg', 'eaclnz1406783725', 'wwKQDDk1sxkukk8yDctc', 'p', 0, 'c', '1406783725@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406783730', '1', '1406783730', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(76, 77, 'asdf', 1, 'adf', '', 'asdf', 'asdf', './tpl/User/default/common/images/portrait.jpg', 'glgzhr1406775560', 'E6SGuL7KmB29uQM4Tkms', 'p', 0, 'c', '1406775560@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406775563', '1', '1406775563', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(79, 80, '23dwjkew', 1, '', '', '23dwjkew', '23dwjkew', './tpl/User/default/common/images/portrait.jpg', 'xmsxhg1406875274', 'wLTNxzd3aPm9AQQkKlzb', 'p', 0, 'c', '1406875274@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406875281', '1', '1406875281', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(78, 79, '四川成都庆典', 2, '', '', 'gh_e35cda4f758d', 'siciqingdian', './tpl/User/default/common/images/portrait.jpg', 'xctvth1406867781', 'gc7gd88rmiosd3DPt3Lh', 'p', 0, 'c', '1406867781@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406867930', '1', '1406867930', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', 'router_cfg_7', 0, 0, 3, 0),
(74, 75, '4545', 1, '', '', '354353535', '4353453453', './tpl/User/default/common/images/portrait.jpg', 'svmfnd1406520959', 'oDLpkKgxlen6uNpB1Txw', 'p', 0, 'c', '1406520959@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406520963', '1', '1406520963', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(75, 76, '网商宝', 1, '', '', 'gh_6ab98181fb12', 'wx_ws_bao', './tpl/User/default/common/images/portrait.jpg', 'pzbwyi1406724637', 'cxTEBi1k3wc3zesP9BmE', 'p', 0, 'c', '1406724637@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406724668', '11', '1406724668', '1115_index_v3yh', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(81, 82, '2222', 1, '', '', '222', '22222', './tpl/User/default/common/images/portrait.jpg', 'igslhu1406887106', 'yQtqLeEMbSqPbo895EFt', 'p', 0, 'c', '1406887106@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406887111', '1', '1406887111', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(83, 23, '123', 1, '', '', '123', '1231', './tpl/User/default/common/images/portrait.jpg', 'vzohcb1406947236', 'wnjld3jaP96wrdHNh35p', 'p', 4, 'c', '1406947236@yourdomain.com', 0, 8, '服务', '', 10000, 1, 8, 8, '1406947242', '11', '1407065979', '1113_index_cxve', '1', 'yl_list', '', '', '1', 'ktv_content', 'router_cfg_8', 1, 1, 3, 0),
(84, 23, '估客电商', 1, 'safsdaf', 'sdfsfd', 'gh_e495b13ced60', '估客电商', './tpl/User/default/common/images/portrait.jpg', 'owikav1406947345', 'wiE63dEeqGtGkzo83dGM', 'p', 0, 'c', '1406947345@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1406947363', '10', '1406952395', '1100_index_btj5', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(85, 84, 'test1231', 1, '', '', 'test1231', 'test1231', './tpl/User/default/common/images/portrait.jpg', 'pgedyf1407030714', 'KJpKE7ctTEAiKDnMA1Hq', 'p', 0, 'c', '1407030714@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1407030717', '1', '1407030717', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(86, 85, 'htools', 2, 'wx956fea45065d6b22', '776be52b1ef1115a7e57184e5b25e93b', 'gh_cf023b86eb4e', 'htools', './tpl/User/default/common/images/portrait.jpg', 'qzembv1407229744', 'kCFsyq1EqQibdnAJ5orJ', '山东', 0, '青岛', '1407229744@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1407229804', '1', '1407229925', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(87, 86, '四川理工零校网', 1, '', '', 'gh_4dc1d8176ddf', 'suse0xiaowang', './tpl/User/default/common/images/portrait.jpg', 'xbgzcp1407232534', 'Lxi3vM4rJuGuokwKEErQ', 'p', 0, 'c', '1407232534@yourdomain.com', 0, 8, '服务', '', 10000, 1, 0, 0, '1407232652', '11', '1407236345', '1115_index_v3yh', '1', 'yl_list', '', '', '1', 'ktv_content', '', 1, 0, 3, 1),
(88, 87, '分支1', 2, '', '', 'gh_423dwjkeww3 ', 'pigcms', './tpl/User/default/common/images/portrait.jpg', 'oblian1407245051', 'DEjeL6JJyy4s84g7GPfP', 'p', 0, 'c', '1407245051@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1407245078', '1', '1407245078', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0),
(89, 88, 'ces ', 2, '', '', 'sdsdfsd', 'fsdfsdf', './tpl/User/default/common/images/portrait.jpg', 'wnncyu1407245884', 'zk3216FgE2kF4cg2E4yT', 'p', 0, 'c', '1407245884@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1407245898', '1', '1407245898', 'ty_index', '1', 'yl_list', '', '', '1', 'ktv_content', '', 0, 0, 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_yuyue`
--

CREATE TABLE IF NOT EXISTS `tp_yuyue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `statdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `copyright` varchar(30) DEFAULT NULL,
  `yuyue_type` tinyint(1) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_yuyue`
--

INSERT INTO `tp_yuyue` (`id`, `token`, `keyword`, `title`, `address`, `longitude`, `latitude`, `phone`, `topic`, `info`, `description`, `statdate`, `enddate`, `type`, `copyright`, `yuyue_type`, `photo`) VALUES
(2, 'thvusk1405647851', '23123', '213123', '13312213', '113.640103', '34.791499', '21312', '', '', '', '2014-07-18', '2014-07-21', 'Yuyue', '·123132', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_yuyue_order`
--

CREATE TABLE IF NOT EXISTS `tp_yuyue_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `or_date` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `nums` varchar(20) DEFAULT NULL,
  `fieldsigle` varchar(100) DEFAULT NULL,
  `fielddownload` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yuyue_setcin`
--

CREATE TABLE IF NOT EXISTS `tp_yuyue_setcin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `yuanjia` varchar(10) DEFAULT NULL,
  `youhui` varchar(10) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `messages` text,
  `type` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `pic3` varchar(100) DEFAULT NULL,
  `pic4` varchar(100) DEFAULT NULL,
  `pic5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wy_product_detail`
--

CREATE TABLE IF NOT EXISTS `wy_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `format` varchar(100) NOT NULL COMMENT '商品的规格（大小）',
  `color` varchar(100) NOT NULL COMMENT '颜色',
  `num` int(10) unsigned NOT NULL COMMENT '数量',
  `price` float NOT NULL COMMENT '价格',
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品的数量(详细)表' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `wy_product_detail`
--

INSERT INTO `wy_product_detail` (`id`, `pid`, `format`, `color`, `num`, `price`, `vprice`, `logo`) VALUES
(1, 3, '1', '2', 11, 0, 9, ''),
(2, 3, '1', '3', 10, 0, 9, ''),
(3, 4, '4', '6', 80, 100, 90, ''),
(4, 4, '5', '6', 58, 100, 90, ''),
(5, 4, '4', '7', 69, 100, 90, ''),
(6, 4, '5', '7', 60, 100, 90, ''),
(7, 5, '8', '10', 9, 480, 432, ''),
(8, 5, '9', '10', 20, 480, 432, ''),
(9, 5, '8', '11', 30, 480, 432, ''),
(10, 5, '9', '11', 10, 480, 432, ''),
(11, 6, '6', '7', 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
