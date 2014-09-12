<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> <?php echo ($f_siteTitle); ?> <?php echo ($f_siteName); ?></title>
<meta name="keywords" content="<?php echo ($f_metaKeyword); ?>" />
<meta name="description" content="<?php echo ($f_metaDes); ?>" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<script>var SITEURL='';</script>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
</head>
<body id="nv_member" class="pg_CURMODULE">
<div class="topbg">
<div class="top">
<div class="toplink">
<style>
.topbg{BACKGROUND-IMAGE: url(<?php echo RES;?>/images/top.png);BACKGROUND-REPEAT: repeat-x; height:124px; box-shadow:0 0 10px #000;-moz-box-shadow:0 0 10px #000;-webkit-box-shadow:0 0 10px #000;}
.top {
	MARGIN: 0px auto; WIDTH: 988px; HEIGHT: 124px;
}
.top .toplink{ height:27px; line-height:27px; color:#999; font-size:12px;}
.top .toplink .welcome{ float:left;}
.top .toplink .memberinfo{ float:right;}
.top .toplink .memberinfo a{ color:#999;}
.top .toplink .memberinfo a:hover{ color:#F90}
.top .toplink .memberinfo a.green{ background:none; color:#0C0}

.top .logo {WIDTH: 990px;COLOR: #333; height:70px;  FONT-SIZE:16px; PADDING-TOP:25px}
.top h1{ font-size:25px; margin-top:20px; float:left; width:230px; margin:0; padding:0;}
.top .navr {WIDTH:750px; float:right; overflow:hidden; margin-top:10px;}
.top .navr ul{ width:850px;}
.navr LI {TEXT-ALIGN:center;FLOAT: left;HEIGHT:32px;FONT-SIZE:1em;width:103px; margin-right:5px;}
.navr LI A {width:103px;TEXT-ALIGN:center; LINE-HEIGHT:30px; FLOAT: left;HEIGHT:32px;COLOR: #333; FONT-SIZE: 1em;TEXT-DECORATION: none
}
.navr LI A:hover {BACKGROUND: url(<?php echo RES;?>/images/navhover.gif) center no-repeat;color:#009900;}
.navr LI.menuon {BACKGROUND: url(<?php echo RES;?>/images/navon.gif) center no-repeat; display:block;width:103px;HEIGHT:32px;}
.navr LI.menuon a{color:#FFF;}
.navr LI.menuon a:hover{BACKGROUND: url(img/navon.gif) center no-repeat;}
.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(img/h2003070126.jpg) center no-repeat #B4B4B4;}
.gbanner{ background: url(img/h2003070127.jpg) center no-repeat #264C79;}
.jbanner{ background: url(img/h2003070128.jpg) center no-repeat #E2EAD5;}
.dbanner{ background: url(img/h2003070129.jpg) center no-repeat #009ADA;}
.nbanner{ background: url(img/h2003070130.jpg) center no-repeat #ffca22;}
a.a_upload,a.a_choose{border:1px solid #3d810c;box-shadow:0 1px #CCCCCC;-moz-box-shadow:0 1px #CCCCCC;-webkit-box-shadow:0 1px #CCCCCC;cursor:pointer;display:inline-block;text-align:center;vertical-align:bottom;overflow:visible;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;vertical-align:middle;background-color:#f1f1f1;background-image: -webkit-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); background-image: -moz-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); background-image: -ms-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); color:#000;border:1px solid #AAA;padding:2px 8px 2px 8px;text-shadow: 0 1px #FFFFFF;font-size: 14px;line-height: 1.5;
}
</style>
<div class="welcome">欢迎使用多用户微信营销服务平台!</div>
    <div class="memberinfo"  id="destoon_member">	
		<?php if($_SESSION[uid]==false): ?><a href="<?php echo U('Index/login');?>">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<?php echo U('Index/login');?>">注册</a>
			<?php else: ?>
			你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php echo (session('uname')); ?></span></a>（uid:<?php echo (session('uid')); ?>）
			<a href="/#" onclick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a><?php endif; ?>	
	</div>
</div>
    <div class="logo">
        <div style="float:left"></div>
            <h1><a href="/" title="多用户微信营销服务平台"><img src="<?php echo ($f_logo); ?>" /></a></h1>
            <div class="navr">
        <ul id="topMenu">         
            <li <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?> ><a href="/" >首页</a></li>
                <li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/fc');?>">功能介绍</a></li>
                <li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/about');?>">关于我们</a></li>
                <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?>><a href="/index.php?g=Home&m=Index&a=price">资费说明</a></li>
                <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/common');?>">微信导航</a></li>
                <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('User/Index/index');?>">管理中心</a></li>
                <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/help');?>">帮助中心</a></li>
            
            </ul>
        </div>
        </div>
    </div>
</div>
<div id="aaa"></div>

<div id="wp" class="wp"><link href="<?php echo RES;?>/css/style.css?id=100" rel="stylesheet" type="text/css" />
  <!--中间内容-->
  <script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
  
  <div class="contentmanage">
    <div class="developer">
       <div class="appTitle normalTitle2">
        <div class="vipuser">


<div class="logo">
<img src="<?php echo ($wecha["headerpic"]); ?>" width="100" height="100">
</div>

<div id="nickname">
<strong><?php echo ($wecha["wxname"]); ?></strong><a href="#" target="_blank" class="vipimg vip-icon<?php echo $userinfo['taxisid']-1; ?>" title=""></a></div>
<div id="weixinid">微信号:<?php echo ($wecha["weixin"]); ?></div>
</div>

        <div class="accountInfo">
<table class="vipInfo" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td><strong>VIP有效期：</strong><?php echo (date("Y-m-d",$thisUser["viptime"])); ?></td>
<td><strong>图文自定义：</strong><?php echo ($thisUser["diynum"]); ?>/<?php echo ($userinfo["diynum"]); ?></td>
<td><strong>活动创建数：</strong><?php echo ($thisUser["activitynum"]); ?>/<?php echo ($userinfo["activitynum"]); ?></td>
<td><strong>请求数：</strong><?php echo ($thisUser["connectnum"]); ?>/<?php echo ($userinfo["connectnum"]); ?></td>
</tr>
<tr>
<td><strong>请求数剩余：</strong><?php echo ($userinfo['connectnum']-$_SESSION['connectnum']); ?></td>
<td><strong>已使用：</strong><?php echo $_SESSION['diynum']; ?></td>
<td><strong>当月赠送请求数：</strong><?php echo ($userinfo["connectnum"]); ?></td>
<td><strong>当月剩余请求数：</strong><?php echo $userinfo['connectnum']-$_SESSION['connectnum']; ?></td>
</tr>

</table>
    </div>
        <div class="clr"></div>
      </div>
      <!--左侧功能菜单-->

 
<style type="text/css">
#sideBar{
border-right: 0px solid #D3D3D3 !important;
float: left;
padding: 0 0 10px 0;
width: 170px;
}
.tableContent {
background: none repeat scroll 0 0 #f5f6f7;
padding: 0;
}
.tableContent .content {
border-left: 1px solid #D7DDE6 !important;
}
ul#menu, ul#menu ul {
  list-style-type:none;
  margin: 0;
  padding: 0;
}

ul#menu a {
  display: block;
  text-decoration: none;	
}

ul#menu li {
  margin: 1px;
}
ul#menu li ul li{
  margin: 1px 0;
}
ul#menu li a {
  background: #EBEEF1;
  color: #464D6A;	
  padding: 0.5em;
}
ul#menu li .nav-header{
font-size:14px;
border-bottom: 1px solid #D7DDE6;
}
ul#menu li .nav-header:hover {
  background: #DDE4EB;
}

ul#menu li ul li a {
  background: #FCFCFC;
  color: #8288A4;
  padding-left: 20px;
}
ul#menu li ul li:last-child {
    border-bottom: 1px solid #D7DDE6;
}
ul#menu li ul li a:hover {
  background: #fff;
  border-left: 5px #4A98E0 solid;
 
}
ul#menu li.selected a{
  background: #fff;
  border-left: 5px #4A98E0 solid;
  padding-left: 15px;
  color: #4A98E0;
}
.code { border: 1px solid #ccc; list-style-type: decimal-leading-zero; padding: 5px; margin: 0; }
.code code { display: block; padding: 3px; margin-bottom: 0; }
.code li { background: #ddd; border: 1px solid #ccc; margin: 0 0 2px 2.2em; }
.indent1 { padding-left: 1em; }
.indent2 { padding-left: 2em; }
.tableContent .content{min-height: 1328px;}

a.nav-header{background:url(/tpl/static/images/arrow_click.png) center right no-repeat;cursor:pointer}
a.nav-header-current{background:url(/tpl/static/images/arrow_unclick.png) center right no-repeat;}
</style>  
      <div class="tableContent">
        
        <!--左侧功能菜单-->
 <div  class="sideBar" id="sideBar">
<div class="catalogList">
<ul id="menu">
<?php
$menus=array( array( 'name'=>'基础设置', 'display'=>0, 'subs'=>array( array('name'=>'功能管理','link'=>U('Function/index',array('token'=>$token,'id'=>session('wxid'))),'new'=>0,'selectedCondition'=>array('m'=>'Function')), array('name'=>'关注时回复与帮助','link'=>U('Areply/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Areply')), array('name'=>'微信－文本回复','link'=>U('Text/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Text')), array('name'=>'微信－图文回复','link'=>U('Img/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Img','a'=>'index')), array('name'=>'微信－多图文回复','link'=>U('Img/multi',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Img','a'=>'multi')), array('name'=>'微信－语音回复','link'=>U('Voiceresponse/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Voiceresponse')), array('name'=>'微信－群发消息','link'=>U('Message/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Message')), array('name'=>'自定义LBS回复','link'=>U('Company/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Company')), array('name'=>'自定义菜单','link'=>U('Diymen/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Diymen')), array('name'=>'微信用户信息授权','link'=>U('Auth/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Auth')), array('name'=>'回答不上来的配置','link'=>U('Other/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Other')), )), array( 'name'=>'微网站', 'display'=>0, 'subs'=>array( array('name'=>'首页回复配置','link'=>U('Home/set',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Home','g'=>'User','a'=>'set')), array('name'=>'分类管理','link'=>U('Classify/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Classify')), array('name'=>'模板管理','link'=>U('Tmpls/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Tmpls')), array('name'=>'首页幻灯片','link'=>U('Flash/index',array('token'=>$token,'tip'=>1)),'new'=>0,'selectedCondition'=>array('m'=>'Flash','tip'=>1)), array('name'=>'轮播背景图','link'=>U('Flash/index',array('token'=>$token,'tip'=>2)),'new'=>1,'selectedCondition'=>array('m'=>'Flash','tip'=>2)), array('name'=>'底部导航菜单','link'=>U('Catemenu/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Catemenu')), array('name'=>'微名片','link'=>U('Vcard/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Vcard')), array('name'=>'一键导航','link'=>U('Daohang/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Daohang')), array('name'=>'在线预览','link'=>U('Yulan/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Yulan')), )), array( 'name'=>'微互动', 'display'=>0, 'subs'=>array( array('name'=>'留言板','link'=>U('Reply/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Reply')), array('name'=>'微论坛','link'=>U('Forum/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Forum')), array('name'=>'3G图集(相册)','link'=>U('Photo/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Photo')), array('name'=>'3G微投票','link'=>U('Vote/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Vote')), array('name'=>'微预约(万能表单,报名)','link'=>U('Custom/record',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Custom')), array('name'=>'微调研','link'=>U('Research/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Research')), array('name'=>'祝福贺卡','link'=>U('Greeting_card/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Greeting_card')), array('name'=>'微邀请','link'=>U('Invites/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Invites')), array('name'=>'分享管理','link'=>U('Share/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Share')), )), array( 'name'=>'微信游戏', 'display'=>0, 'subs'=>array( array('name'=>'一站到底答题比赛','link'=>U('Dati/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Dati')), array('name'=>'2048正常版','link'=>U('Game/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Game')), array('name'=>'2048虐心版','link'=>U('Gamet/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Gamet')), array('name'=>'Flappy 2048','link'=>U('Gamett/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Gamett')), array('name'=>'吃粽子大赛','link'=>U('Czz/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Czz')), array('name'=>'走鹊桥','link'=>U('AppleGame/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'AppleGame')), array('name'=>'摁死小情侣','link'=>U('Lovers/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Lovers')), )), array( 'name'=>'行业应用', 'display'=>0, 'subs'=>array( array('name'=>'微餐饮（无线打印）','link'=>U('Repast/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Repast')), array('name'=>'360°全景','link'=>U('Panorama/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Panorama')), array('name'=>'微婚庆（喜帖）','link'=>U('Wedding/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wedding')), array('name'=>'微汽车','link'=>U('Car/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Car')), array('name'=>'楼盘房产','link'=>U('Estate/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Estate')), array('name'=>'微教育','link'=>U('School/index',array('token'=>$token,'type'=>'semester')),'new'=>1,'selectedCondition'=>array('m'=>'School')), array('name'=>'微医疗','link'=>U('Medical/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Medical'),'test'=>0), array('name'=>'酒店宾馆','link'=>U('Hotels/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hotels')), array('name'=>'通用订单(酒吧KTV)','link'=>U('Host/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Host')), array('name'=>'微美容','link'=>U('Business/index',array('token'=>$token,'type'=>'beauty')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'beauty'),'test'=>0), array('name'=>'微健身','link'=>U('Business/index',array('token'=>$token,'type'=>'fitness')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'fitness'),'test'=>0,'show'=>1), array('name'=>'微政务','link'=>U('Business/index',array('token'=>$token,'type'=>'gover')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'gover'),'test'=>0,'show'=>1), array('name'=>'微食品','link'=>U('Business/index',array('token'=>$token,'type'=>'food')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'food'),'test'=>0), array('name'=>'微旅游','link'=>U('Business/index',array('token'=>$token,'type'=>'travel')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'travel'),'test'=>0), array('name'=>'微花店','link'=>U('Business/index',array('token'=>$token,'type'=>'flower')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'flower'),'test'=>0), array('name'=>'微物业','link'=>U('Business/index',array('token'=>$token,'type'=>'property')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'property'),'test'=>0), array('name'=>'微KTV','link'=>U('Business/index',array('token'=>$token,'type'=>'ktv')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'ktv'),'test'=>0), array('name'=>'微酒吧','link'=>U('Business/index',array('token'=>$token,'type'=>'bar')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'bar'),'test'=>0), array('name'=>'微装修','link'=>U('Business/index',array('token'=>$token,'type'=>'fitment')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'fitment'),'test'=>0), array('name'=>'微婚庆','link'=>U('Business/index',array('token'=>$token,'type'=>'wedding')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'wedding'),'test'=>0), array('name'=>'微宠物','link'=>U('Business/index',array('token'=>$token,'type'=>'affections')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'affections'),'test'=>0), array('name'=>'微家政','link'=>U('Business/index',array('token'=>$token,'type'=>'housekeeper')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'housekeeper'),'test'=>0), array('name'=>'微租赁','link'=>U('Business/index',array('token'=>$token,'type'=>'lease')),'new'=>1,'selectedCondition'=>array('m'=>'Business','type'=>'lease'),'test'=>0), )), array( 'name'=>'微现场', 'display'=>0, 'subs'=>array( array('name'=>'微信签到','link'=>U('Signin/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Signin')), array('name'=>'摇一摇','link'=>U('Shake/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Shake')), array('name'=>'微信墙','link'=>U('Wall/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Wall')), )), array( 'name'=>'电商系统', 'display'=>0, 'subs'=>array( array('name'=>'在线支付设置','link'=>U('Alipay_config/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Alipay_config')), array('name'=>'微信团购系统','link'=>U('Groupon/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Groupon')), array('name'=>'微信商城系统','link'=>U('Store/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Store')), array('name'=>'微商圈','link'=>U('Market/index',array('token'=>$token)),'test'=>0,'selectedCondition'=>array('m'=>'Market')), )), array( 'name'=>'微粉丝管理CRM', 'display'=>0, 'subs'=>array( array('name'=>'粉丝管理','link'=>U('Wechat_group/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_group','a'=>'index')), array('name'=>'分组管理','link'=>U('Wechat_group/groups',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_group','a'=>'groups')), array('name'=>'粉丝行为分析','link'=>U('Wechat_behavior/statistics',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_behavior')), )), array( 'name'=>'微硬件', 'display'=>0, 'subs'=>array( array('name'=>'微信wifi设置','link'=>U('Router/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Router')), array('name'=>'无线打印机','link'=>U('Hardware/orderprint',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hardware','a'=>'orderprint')), array('name'=>'照片打印机','link'=>U('Hardware/photoprint',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hardware','a'=>'photoprint')), array('name'=>'RippleOS','link'=>U('RippleOS/set',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'RippleOS','a'=>'set')), )), array( 'name'=>'微渠道', 'display'=>0, 'subs'=>array( array('name'=>'渠道二维码','link'=>U('Recognition/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Recognition')), array('name'=>'DIY宣传页','link'=>U('Adma/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Adma')), )), array( 'name'=>'微客服', 'display'=>0, 'subs'=>array( array('name'=>'人工客服','link'=>U('ServiceUser/wechatService',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'ServiceUser')), )), array( 'name'=>'微活动', 'display'=>0, 'subs'=>array( array('name'=>'幸运大转盘','link'=>U('Lottery/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Lottery')), array('name'=>'优惠券','link'=>U('Coupon/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Coupon')), array('name'=>'刮刮卡','link'=>U('Guajiang/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Guajiang')), array('name'=>'幸运水果机','link'=>U('LuckyFruit/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'LuckyFruit')), array('name'=>'砸金蛋','link'=>U('GoldenEgg/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'GoldenEgg')), )), array( 'name'=>'会员卡', 'display'=>0, 'subs'=>array( array('name'=>'会员卡','link'=>U('Member_card/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card'),'exceptCondition'=>array('a'=>'replyInfoSet,focus,custom')), array('name'=>'回复设置','link'=>U('Member_card/replyInfoSet',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'replyInfoSet')), array('name'=>'幻灯片广告','link'=>U('Member_card/focus',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'focus')), array('name'=>'自定义输入项','link'=>U('Member_card/custom',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'custom')), )), array( 'name'=>'数据魔方', 'display'=>0, 'subs'=>array( array('name'=>'请求数详情','link'=>U('Requerydata/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Requerydata')), array('name'=>'粉丝行为分析','link'=>U('Wechat_behavior/statistics',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_behavior','a'=>'statistics')), )), array( 'name'=>'二次开发', 'display'=>0, 'subs'=>array( array('name'=>'融合第三方','link'=>U('Api/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Api')), )), ); ?>
<?php
$i=0; $parms=$_SERVER['QUERY_STRING']; $parms1=explode('&',$parms); $parmsArr=array(); if ($parms1){ foreach ($parms1 as $p){ $parms2=explode('=',$p); $parmsArr[$parms2[0]]=$parms2[1]; } } $subMenus=array(); $t=0; $currentMenuID=0; $currentParentMenuID=0; foreach ($menus as $m){ $loopContinue=1; if ($m['subs']){ $st=0; foreach ($m['subs'] as $s){ $includeArr=1; if ($s['selectedCondition']){ foreach ($s['selectedCondition'] as $condition){ if (!in_array($condition,$parmsArr)){ $includeArr=0; break; } } } if ($includeArr){ if ($s['exceptCondition']){ foreach ($s['exceptCondition'] as $eptCondition){ if (in_array($eptCondition,$parmsArr)){ $includeArr=0; break; } } } } if ($includeArr){ $currentMenuID=$st; $currentParentMenuID=$t; $loopContinue=0; break; } $st++; } if ($loopContinue==0){ break; } } $t++; } foreach ($menus as $m){ $displayStr=''; if ($currentParentMenuID!=0||0!=$currentMenuID){ $m['display']=0; } if (!$m['display']){ $displayStr=' style="display:none"'; } if ($currentParentMenuID==$i){ $displayStr=''; } $aClassStr=''; if ($displayStr){ $aClassStr=' nav-header-current'; } echo '<a class="nav-header'.$aClassStr.'">'.$m['name'].'</a><ul class="ckit"'.$displayStr.'>'; if ($m['subs']){ $j=0; foreach ($m['subs'] as $s){ $selectedClassStr='subCatalogList'; if ($currentParentMenuID==$i&&$j==$currentMenuID){ $selectedClassStr='selected'; } $newStr=''; if ($s['test']){ $newStr.='<span class="test"></span>'; }else { if ($s['new']){ $newStr.='<span class="new"></span>'; } } echo '<li class="'.$selectedClassStr.'"> <a href="'.$s['link'].'">'.$s['name'].'</a>'.$newStr.'</li>'; if ($s['name']=='模板管理'&&is_dir($_SERVER['DOCUMENT_ROOT'].'/cms')&&!strpos($_SERVER['HTTP_HOST'],'pigcms')){ echo '<li class="subCatalogList"> <a href="/index.php?g=User&m=AdvanceTpl&a=index">高级模板</a><span class="new"></span></li>'; } $j++; } } echo '</ul>'; $i++; } ?>


</ul>
</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$(".nav-header").mouseover(function(){
		$(this).css('background-color','#126CA9');
	}).mouseout(function(){
		$(this).css('background-color','#2f8bc9');
	}).click(function(){
		$(this).toggleClass('nav-header-current');
		$(this).next('.ckit').slideToggle();
	})
});
</script>
<link rel="stylesheet" href="<?php echo STATICS;?>/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="<?php echo STATICS;?>/kindeditor/plugins/code/prettify.css" />
<script src="<?php echo STATICS;?>/kindeditor/kindeditor.js" type="text/javascript"></script>
<script src="<?php echo STATICS;?>/kindeditor/lang/zh_CN.js" type="text/javascript"></script>
<script src="<?php echo STATICS;?>/kindeditor/plugins/code/prettify.js" type="text/javascript"></script>
<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
<script>
var editor;
KindEditor.ready(function(K) {
editor = K.create('#intro', {
resizeType : 1,
allowPreviewEmoticons : false,
allowImageUpload : true,
uploadJson : '/index.php?g=User&m=Upyun&a=kindedtiropic',
items : [
'source','undo','clearhtml','hr',
'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
'insertunorderedlist', '|', 'emoticons', 'image','link', 'unlink','baidumap','lineheight','table','anchor','preview','print','template','code','cut', 'music', 'video'],
afterBlur: function(){this.sync();}
});
});
</script>
  <div class="content"> 
   <div class="cLineB"> 
    <h4>商品设置</h4> 
    <a href="<?php echo U('Store/product',array('token'=>$token,'catid'=>$catid));?>" class="right  btnGreen" style="margin-top:-27px">返回</a> 
   </div> 
<?php if($isUpdate == 1): ?><input type="hidden" name="id" value="<?php echo ($set["id"]); ?>" /><?php endif; ?>
<form method="post" action="" id="formID">
<input type="hidden" name="discount" id="discount" value="<?php echo ($set["discount"]); ?>" />
    <div class="msgWrap bgfc"> 
     <table class="userinfoArea" style=" margin:0;" border="0" cellspacing="0" cellpadding="0" width="100%"> 
      <tbody> 
       <tr> 
        <th><span class="red">*</span>名称：</th> 
        <td>
        <input type="hidden" name="pid" id="pid" value="<?php echo ($set["id"]); ?>"/>
        <input type="text" name="name" id="name" value="<?php echo ($set["name"]); ?>" class="px" style="width:400px;" />
        </td> 
       </tr> 
       <tr> 
        <th>类别：</th> 
        <td><span class="red"><?php echo ($productCatData["name"]); ?></span></td> 
       </tr>
       <?php if(empty($productCatData['color']) != true): ?><tr>
	       <th><?php echo ($productCatData["color"]); ?>：</th>
	       <td>
	       		<table>
	       		<tr>
	       		<?php if(is_array($colorData)): $i = 0; $__LIST__ = $colorData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$norms): $mod = ($i % 2 );++$i;?><td width="130">
				<?php if((in_array($norms['id'], $colorList))): ?><input type="checkbox" name="color[]" value="<?php echo ($norms["id"]); ?>" class="color" id="norms_<?php echo ($norms["id"]); ?>" atr="<?php echo ($norms["value"]); ?>" checked/>&nbsp;&nbsp;<label for="norms_<?php echo ($norms["id"]); ?>"><?php echo ($norms["value"]); ?></label>
				<?php else: ?>
				<input type="checkbox" name="color[]" value="<?php echo ($norms["id"]); ?>" class="color" id="norms_<?php echo ($norms["id"]); ?>" atr="<?php echo ($norms["value"]); ?>"/>&nbsp;&nbsp;<label for="norms_<?php echo ($norms["id"]); ?>"><?php echo ($norms["value"]); ?></label><?php endif; ?>
				</td>
				<?php if(($i%5 == 0)): ?></tr><tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>
				</tr>
				</table>
	       </td>
       </tr><?php endif; ?>
       <!-- 规格 -->
       <?php if(empty($productCatData['norms']) != true): ?><tr>
	       <th><?php echo ($productCatData["norms"]); ?>：</th>
	       <td>
	       		<table>
	       		<tr>
	       		<?php if(is_array($formatData)): $i = 0; $__LIST__ = $formatData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$norms): $mod = ($i % 2 );++$i;?><td width="130">
				<?php if((in_array($norms['id'], $formatList))): ?><input type="checkbox" name="norms[]" value="<?php echo ($norms["id"]); ?>" class="norms" id="norms_<?php echo ($norms["id"]); ?>" atr="<?php echo ($norms["value"]); ?>" checked/>&nbsp;&nbsp;<label for="norms_<?php echo ($norms["id"]); ?>"><?php echo ($norms["value"]); ?></label>
				<?php else: ?>
				<input type="checkbox" name="norms[]" value="<?php echo ($norms["id"]); ?>" class="norms" id="norms_<?php echo ($norms["id"]); ?>" atr="<?php echo ($norms["value"]); ?>"/>&nbsp;&nbsp;<label for="norms_<?php echo ($norms["id"]); ?>"><?php echo ($norms["value"]); ?></label><?php endif; ?>
				</td>
				<?php if(($i%5 == 0)): ?></tr><tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>
				</tr>
				</table>
	       </td>
       </tr><?php endif; ?>
       <tr>
			<td colspan="2">
				<table id="priceList">
					<?php if(($productDetailData != null) ): ?><tr><th width="130">产品外观</th><th width="130">产品规格</th><th width="130">价格</th><th width="130">会员价</th><th width="130">数量</th></tr>
			        <?php if(is_array($productDetailData)): $i = 0; $__LIST__ = $productDetailData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$detail): $mod = ($i % 2 );++$i;?><input type="hidden" class="editselect" value="<?php echo ($detail["id"]); ?>,<?php echo ($detail["color"]); ?>,<?php echo ($detail["colorName"]); ?>,<?php echo ($detail["format"]); ?>,<?php echo ($detail["formatName"]); ?>,<?php echo ($detail["price"]); ?>,<?php echo ($detail["vprice"]); ?>,<?php echo ($detail["num"]); ?>"/>
				       <tr class="tnorms">
					       <td width="130"><?php echo ($detail["colorName"]); ?><input type="hidden" value="<?php echo ($detail["color"]); ?>"/></td>
					       <td width="130"><?php echo ($detail["formatName"]); ?><input type="hidden" value="<?php echo ($detail["format"]); ?>"/></td>
					       <td width="130"><input type="text" class="px" style="width:60px;" value="<?php echo ($detail["price"]); ?>"/></td>
					       <td width="130"><input type="text" class="px" style="width:60px;" value="<?php echo ($detail["vprice"]); ?>"/></td>
					       <td width="130"><input type="text" class="px" style="width:60px;" value="<?php echo ($detail["num"]); ?>"/></td>
					       <td width="130"><input type="hidden" value="<?php echo ($detail["id"]); ?>"/></td>
				       </tr><?php endforeach; endif; else: echo "" ;endif; endif; ?>
				</table>
			</td>
       </tr>
       <?php if(is_array($attributeData)): $i = 0; $__LIST__ = $attributeData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$attribute): $mod = ($i % 2 );++$i;?><tr>
		       <th><?php echo ($attribute["name"]); ?>：</th>
		       <td>
					<input type="text" value="<?php echo ($attribute["value"]); ?>" class="attribute px" style="width:400px;" atr="<?php echo ($attribute["name"]); ?>" id="<?php echo ($attribute["id"]); ?>" aid="<?php echo ($attribute["aid"]); ?>"/>
		       </td>
	       </tr><?php endforeach; endif; else: echo "" ;endif; ?>
       <tr> 
        <th><span class="red">*</span>价格：</th>
        <td><input type="text" id="price" name="price" value="<?php echo ($set["price"]); ?>" class="validate[required, length[0,20]] px" style="width:100px;" /> 元</td> 
       </tr>
       <tr> 
        <th><span class="red">*</span>会员价：</th> 
        <td><input type="text" id="vprice" name="vprice" value="<?php echo ($set["vprice"]); ?>" class="px" style="width:100px;" /> 元</td> 
       </tr>
       <tr> 
        <th><span class="red">*</span>原价：</th> 
        <td><input type="text" id="oprice" name="oprice" value="<?php echo ($set["oprice"]); ?>" class="px" style="width:100px;" /> 元</td> 
       </tr>
       <tr> 
        <th>库存：</th> 
        <td><input type="text" id="num" name="num" value="<?php echo ($set["num"]); ?>" class="px" style="width:100px;" /></td> 
       </tr>
       <tr> 
        <th>邮费：</th> 
        <td><input type="text" id="mailprice" name="mailprice" value="<?php echo ($set["mailprice"]); ?>" class="px" style="width:100px;" /> 元</td> 
       </tr>
        <tr> 
        <th><span class="red">*</span>关键词：</th>
        <td><input type="text" name="keyword" id="keyword" value="<?php echo ($set["keyword"]); ?>" class="px" style="width:400px;" /></td> 
       </tr>
       <tr> 
        <th>Logo地址：</th>
        <td><input type="text" name="logourl" value="<?php echo ($set["logourl"]); ?>" class="px" id="pic" style="width:400px;" />  <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('pic',700,700,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('pic')">预览</a></td> 
       </tr>
       <tr> 
        <th>展示图片一：</th>
        <td><input type="text" name="image1" value="<?php echo ($imageList[0]["image"]); ?>" imageid="<?php echo ($imageList[0]["id"]); ?>" class="px" id="image1" style="width:400px;" />  <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('image1',700,700,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('image1')">预览</a></td> 
       </tr>
       <tr> 
        <th>展示图片二：</th>
        <td><input type="text" name="image2" value="<?php echo ($imageList[1]["image"]); ?>" imageid="<?php echo ($imageList[1]["id"]); ?>" class="px" id="image2" style="width:400px;" />  <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('image2',700,700,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('image2')">预览</a></td> 
       </tr>
       <tr> 
        <th>展示图片三：</th>
        <td><input type="text" name="image3" value="<?php echo ($imageList[2]["image"]); ?>" imageid="<?php echo ($imageList[2]["id"]); ?>" class="px" id="image3" style="width:400px;" />  <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('image3',700,700,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('image3')">预览</a></td> 
       </tr>
       <tr> 
        <th>展示图片四：</th>
        <td><input type="text" name="image4" value="<?php echo ($imageList[3]["image"]); ?>" imageid="<?php echo ($imageList[3]["id"]); ?>" class="px" id="image4" style="width:400px;" />  <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('image4',700,700,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('image4')">预览</a></td> 
       </tr>
       <tr> 
        <th>展示图片五：</th>
        <td><input type="text" name="image5" value="<?php echo ($imageList[4]["image"]); ?>" imageid="<?php echo ($imageList[4]["id"]); ?>" class="px" id="image5" style="width:400px;" />  <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('image5',700,700,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('image5')">预览</a></td> 
       </tr>
       <tr> 
        <th>展示图片六：</th>
        <td><input type="text" name="image6" value="<?php echo ($imageList[5]["image"]); ?>" imageid="<?php echo ($imageList[5]["id"]); ?>" class="px" id="image6" style="width:400px;" />  <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('image6',700,700,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('image6')">预览</a></td> 
       </tr>
       <tr> 
        <th>排序：</th> 
        <td><input type="text" id="sort" name="sort" value="<?php echo ($set["sort"]); ?>" class="px" style="width:50px;" />  数字越小排再越前（大于等于0的整数）</td> 
       </tr>
       <TR>
          <TH valign="top"><label for="info">图文详细页内容：</label></TH>
          <TD><textarea name="intro" id="intro"  rows="5" style="width:590px;height:360px"><?php echo ($set["intro"]); ?></textarea></TD>
       </TR>  
       <tr>         
       <th>&nbsp;</th>
       <td>
       <button type="button" name="button" class="btnGreen" id="save">保存</button> &nbsp; <a href="<?php echo U('Store/index',array('token'=>$token, 'catid' => $catid));?>" class="btnGray vm">取消</a></td> 
       </tr> 
      </tbody> 
     </table> 
     </div>
</form>
  </div> 
<script type="text/javascript">
$(document).ready(function(){
	var oldselect = [];
	$(".editselect").each(function(){
		var t = $(this).val().split(",");
		//alert(t[0]+'---'+ parseInt(t[1])+'---'+  t[2]+'---'+  t[3]+'---'+  t[4]+'---'+  t[5]+'---'+  t[6]);
		oldselect[t[1] + '_' + t[3]] = new Array(t[0], t[1], t[2], t[3], t[4], t[5], t[6], t[7]);
	});
	$(".color").click(function(){
		var selectValue = [];
		var html = '';
		var header = '<tr><th width="130">产品外观</th><th width="130">产品规格</th><th width="130">价格</th><th width="130">会员价</th><th width="130">数量</th></tr>';
		if ($(".norms").html() == null) {
			$(".color").each(function(){
				if ($(this).attr('checked')) {
					var color = $(this).attr('atr');
					var colorid = $(this).val();
					selectValue[colorid + '_' + 0] = new Array(0, colorid, color, 0, '', 0, 0, 0);
				}
			});
		} else {
			$(".color").each(function(){
				if ($(this).attr('checked')) {
					var color = $(this).attr('atr');
					var colorid = $(this).val();
					$(".norms").each(function(){
						if ($(this).attr('checked')) {
							var norms = $(this).attr('atr');
							var normsid = $(this).val();
							selectValue[colorid + '_' + normsid] = new Array(0, colorid, color, normsid, norms, 0, 0, 0);
							//selectValue[colorid + '_' + normsid] = '<tr class="tnorms"><td width="130">' + color + '<input type="hidden" value="' + colorid + '"/></td><td width="130">' + norms + '<input type="hidden" value="' + normsid + '"/></td><td width="130"><input type="text" class="px" style="width:60px;"/></td><td width="130"><input type="text" class="px" style="width:60px;"/></td><td><input type="hidden" value="0"/></td></tr>';
						}
					});
				}
			});
		}
		for (var index in selectValue) {
			if (oldselect[index] != null && oldselect[index] != '') {
				html += '<tr class="tnorms"><td width="130">' + oldselect[index][2] + '<input type="hidden" value="' + oldselect[index][1] + '"/></td>';
				html += '<td width="130">' + oldselect[index][4] + '<input type="hidden" value="' + oldselect[index][3] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + oldselect[index][5] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + oldselect[index][6] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + oldselect[index][7] + '"/></td>';
				html += '<td><input type="hidden" value="' + oldselect[index][0] + '"/></td></tr>';
			} else {
				html += '<tr class="tnorms"><td width="130">' + selectValue[index][2] + '<input type="hidden" value="' + selectValue[index][1] + '"/></td>';
				html += '<td width="130">' + selectValue[index][4] + '<input type="hidden" value="' + selectValue[index][3] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + selectValue[index][5] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + selectValue[index][6] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + selectValue[index][7] + '"/></td>';
				html += '<td><input type="hidden" value="' + selectValue[index][0] + '"/></td></tr>';
			}
			//html += selectValue[index];
		}
		if (html != '') {
			$("#priceList").html(header + html);
		} else {
			$("#priceList").html('');
		}
	});
	$(".norms").click(function(){
		var selectValue = [];
		var html = '';
		var header = '<tr><th width="130">产品外观</th><th width="130">产品规格</th><th width="130">价格</th><th width="130">会员价</th><th width="130">数量</th></tr>';
		if ($(".color").html() == null) {
			$(".norms").each(function(){
				if ($(this).attr('checked')) {
					var norms = $(this).attr('atr');
					var normsid = $(this).val();
					selectValue[0 + '_' + normsid] = new Array(0, 0, '', normsid, norms, 0, 0, 0);
					//selectValue[colorid + '_' + normsid] = '<tr class="tnorms"><td width="130">' + color + '<input type="hidden" value="' + colorid + '"/></td><td width="130">' + norms + '<input type="hidden" value="' + normsid + '"/></td><td width="130"><input type="text" class="px" style="width:60px;"/></td><td width="130"><input type="text" class="px" style="width:60px;"/></td><td><input type="hidden" value="0"/></td></tr>';
				}
			});
		} else {
			$(".color").each(function(){
				if ($(this).attr('checked')) {
					var color = $(this).attr('atr');
					var colorid = $(this).val();
					$(".norms").each(function(){
						if ($(this).attr('checked')) {
							var norms = $(this).attr('atr');
							var normsid = $(this).val();
							selectValue[colorid + '_' + normsid] = new Array(0, colorid, color, normsid, norms, 0, 0, 0);
							//selectValue[colorid + '_' + normsid] = '<tr class="tnorms"><td width="130">' + color + '<input type="hidden" value="' + colorid + '"/></td><td width="130">' + norms + '<input type="hidden" value="' + normsid + '"/></td><td width="130"><input type="text" class="px" style="width:60px;"/></td><td width="130"><input type="text" class="px" style="width:60px;"/></td><td><input type="hidden" value="0"/></td></tr>';
						}
					});
				}
			});
		}
		for (var index in selectValue) {
			if (oldselect[index] != null && oldselect[index] != '') {
				html += '<tr class="tnorms"><td width="130">' + oldselect[index][2] + '<input type="hidden" value="' + oldselect[index][1] + '"/></td>';
				html += '<td width="130">' + oldselect[index][4] + '<input type="hidden" value="' + oldselect[index][3] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + oldselect[index][5] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + oldselect[index][6] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + oldselect[index][7] + '"/></td>';
				html += '<td><input type="hidden" value="' + oldselect[index][0] + '"/></td></tr>';
			} else {
				html += '<tr class="tnorms"><td width="130">' + selectValue[index][2] + '<input type="hidden" value="' + selectValue[index][1] + '"/></td>';
				html += '<td width="130">' + selectValue[index][4] + '<input type="hidden" value="' + selectValue[index][3] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + selectValue[index][5] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + selectValue[index][6] + '"/></td>';
				html += '<td width="130"><input type="text" class="px" style="width:60px;" value="' + selectValue[index][7] + '"/></td>';
				html += '<td><input type="hidden" value="' + selectValue[index][0] + '"/></td></tr>';
			}
			//html += selectValue[index];
		}
		if (html != '') {
			$("#priceList").html(header + html);
		} else {
			$("#priceList").html('');
		}
	});
	$("#save").click(function(){
		var name = $("#name").val();
		if (name.length < 1) {
			art.dialog({title:'消息提示', ok:true, width:300, height:200, content:'名称不能为空'});
			return false;
		}
		var num = $("#num").val();
		if (isNaN(num)) {
			art.dialog({title:'消息提示', ok:true, width:300, height:200, content:'库存应该是为正整数'});
			return false;
		}
		var price = $("#price").val();
		var vprice = $("#vprice").val();
		var oprice = $("#oprice").val();
		var mailprice = $("#mailprice").val();
		var keyword = $("#keyword").val();
		var pic = $("#pic").val();
		var intro = $("#intro").val();
		var attribute = [];
		var i = 0;
		var str = '';
		$(".attribute").each(function(){
			attribute[i]= {'name':$(this).attr('atr'), 'value':$(this).val(), 'aid':$(this).attr('aid'), 'id':$(this).attr('id')};//new Array($(this).attr('atr'), $(this).val());
			i ++;
		});
		var norms = [];
		var i = 0;
		var tnum = 0;
		$(".tnorms").each(function(){
			tnum += parseInt($(this).children('td').eq(4).children('input').val());
			norms[i]= {'color':$(this).children('td').eq(0).children('input').val(), 'format':$(this).children('td').eq(1).children('input').val(), 'price':$(this).children('td').eq(2).children('input').val(), 'vprice':$(this).children('td').eq(3).children('input').val(), 'num':$(this).children('td').eq(4).children('input').val(), 'id':$(this).children('td').eq(5).children('input').val()};
			i ++;
		});
		if (tnum > 0) {
			num = tnum;
		}
		//num = num > tnum ? num : tnum;
		var image1 = $("#image1").val();
		var image2 = $("#image2").val();
		var image3 = $("#image3").val();
		var image4 = $("#image4").val();
		var image5 = $("#image5").val();
		var image6 = $("#image6").val();
		var imageid1 = parseInt($("#image1").attr('imageid'));
		var imageid2 = parseInt($("#image2").attr('imageid'));
		var imageid3 = parseInt($("#image3").attr('imageid'));
		var imageid4 = parseInt($("#image4").attr('imageid'));
		var imageid5 = parseInt($("#image5").attr('imageid'));
		var imageid6 = parseInt($("#image6").attr('imageid'));
		var images = [];
		images[0] = {'id':imageid1, 'image':image1};
		images[1] = {'id':imageid2, 'image':image2};
		images[2] = {'id':imageid3, 'image':image3};
		images[3] = {'id':imageid4, 'image':image4};
		images[4] = {'id':imageid5, 'image':image5};
		images[5] = {'id':imageid6, 'image':image6};
		var data = {pid:$("#pid").val(),
					name:name,
					num:num,
					price:price,
					vprice:vprice,
					oprice:oprice,
					mailprice:mailprice,
					keyword:keyword,
					pic:pic,
					intro:intro,
					attribute:JSON.stringify(attribute),
					norms:JSON.stringify(norms),
					images:JSON.stringify(images),
					token:'<?php echo ($token); ?>',
					catid:'<?php echo ($catid); ?>',
					sort:$("#sort").val()
					};
		$.post('index.php?g=User&m=Store&a=productSave', data, function(response){
			if (response.error_code == false) {
				art.dialog({
					title:'消息提示', 
				    content: response.msg, 
				    width:300, 
				    height:200,
				    lock: true,
				    ok: function () {
				    	this.time(3);
				    	location.href='index.php?g=User&m=Store&a=product&token=<?php echo ($token); ?>&catid=<?php echo ($catid); ?>'
				        return false;
				    },
				    cancelVal: '关闭'
				});
			} else {
				art.dialog({title:'消息提示', time:2, width:300, height:200, content:response.msg});
			}
			
		}, 'json');
	});
});
</script>
</div>
</div>
</div>

<style>
.IndexFoot {
	BACKGROUND-COLOR: #333; WIDTH: 100%; HEIGHT: 39px
}
.foot{ width:988px; margin:0px auto; font-size:12px; line-height:39px;}
.foot .foot_page{ float:left; width:600px;color:white;}
.foot .foot_page a{ color:white; text-decoration:none;}
#copyright{ float:right; width:380px; text-align:right; font-size:12px; color:#FFF;}
</style>
<div class="IndexFoot" style="height:120px;clear:both">
<div class="foot" style="padding-top:20px;">
<div class="foot_page" >
<a href="<?php echo ($f_siteUrl); ?>"><?php echo ($f_siteName); ?>,微信公众平台营销</a><br/>
帮助您快速搭建属于自己的营销平台,构建自己的客户群体。
</div>
<div id="copyright" style="color:white;">
	<?php echo ($f_siteName); ?>(c)版权所有 <a href="http://www.miibeian.gov.cn" target="_blank" style="color:white"><?php echo C('ipc');?></a><br/>
	技术支持：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($f_qq); ?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo ($f_qq); ?>:51" alt="联系我吧" title="联系我吧"/></a>

</div>
    </div>
</div>

<div style="display:none">
<?php echo ($alert); ?>
<?php echo base64_decode(C('countsz'));?>
<script src="http://s15.cnzz.com/stat.php?id=5524076&web_id=5524076" language="JavaScript"></script>
</div>
</body>
</html>