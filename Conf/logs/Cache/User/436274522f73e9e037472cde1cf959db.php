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
<link rel="stylesheet" type="text/css" href="./tpl/User/default/common/css/cymain.css" />
<div class="tab">
<ul>
<li class="<?php if(ACTION_NAME == 'index'): ?>current<?php endif; ?> tabli" id="tab0"><a href="<?php echo U('Estate/index',array('token'=>$token));?>">楼盘简介</a></li>
<li class="<?php if(ACTION_NAME == 'son'): ?>current<?php endif; ?> tabli" id="tab2"><a href="<?php echo U('Estate/son',array('token'=>$token));?>">子楼盘</a></li>
<li class="<?php if(ACTION_NAME == 'housetype'): ?>current<?php endif; ?> tabli" id="tab2"><a href="<?php echo U('Estate/housetype',array('token'=>$token));?>">楼盘户型</a></li>
<li class="<?php if(ACTION_NAME == 'album'): ?>current<?php endif; ?> tabli" id="tab5"><a href="<?php echo U('Estate/album',array('token'=>$token));?>">楼盘相册</a></li>
<li class="<?php if(ACTION_NAME == 'impress'): ?>current<?php endif; ?> tabli" id="tab5" ><a href="<?php echo U('Estate/impress',array('token'=>$token));?>" >房友印象</a></li>
<li class="<?php if(ACTION_NAME == 'expert'): ?>current<?php endif; ?> tabli" id="tab6"><a href="<?php echo U('Estate/expert',array('token'=>$token));?>">专家点评</a></li>
<li class="<?php if((ACTION_NAME == 'reservation') OR (ACTION_NAME == 'reservation_manage') OR (ACTION_NAME == 'reservation_add')): ?>current<?php endif; ?> tabli" id="tab7"><a href="<?php echo U('Estate/reservation',array('token'=>$token,'type'=>'house_book'));?>">预约管理</a></li>

<li class="<?php if(ACTION_NAME == 'aboutus'): ?>current<?php endif; ?> tabli" id="tab7"><a href="<?php echo U('Estate/aboutus',array('token'=>$token));?>">关于我们</a></li>
</ul>
</div>


<script src="./tpl/User/default/common/js/date/WdatePicker.js"></script>
<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>

<link rel="stylesheet" href="<?php echo STATICS;?>/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="<?php echo STATICS;?>/kindeditor/plugins/code/prettify.css" />
<script src="<?php echo STATICS;?>/kindeditor/kindeditor.js" type="text/javascript"></script>
<script src="<?php echo STATICS;?>/kindeditor/lang/zh_CN.js" type="text/javascript"></script>
<script src="<?php echo STATICS;?>/kindeditor/plugins/code/prettify.js" type="text/javascript"></script>

<link rel="stylesheet" href="<?php echo STATICS;?>/jQValidationEngine/css/validationEngine.jquery.css" type="text/css"/>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script src="<?php echo STATICS;?>/jQValidationEngine/js/languages/jquery.validationEngine-zh_CN.js" type="text/javascript" charset="utf-8"></script>
<script src="<?php echo STATICS;?>/jQValidationEngine/js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>

<script src="/tpl/static/upyun.js?2013"></script>
<script>

var editor;
KindEditor.ready(function(K) {
editor = K.create('#estate_desc', {
resizeType : 1,
allowPreviewEmoticons : false,
allowImageUpload : true,
uploadJson : '/index.php?g=User&m=Upyun&a=kindedtiropic',
items : [
'source','undo','plainpaste','wordpaste','clearhtml','quickformat','selectall','fullscreen','fontname', 'fontsize','subscript','superscript','indent','outdent','|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline','hr']
});
editor = K.create('#project_brief', {
resizeType : 1,
allowPreviewEmoticons : false,
allowImageUpload : true,
uploadJson : '/index.php?g=User&m=Upyun&a=kindedtiropic',
items : [
'source','undo','plainpaste','wordpaste','clearhtml','quickformat','selectall','fullscreen','fontname', 'fontsize','subscript','superscript','indent','outdent','|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline','hr']
});
editor = K.create('#traffic_desc', {
resizeType : 1,
allowPreviewEmoticons : false,
allowImageUpload : true,
uploadJson : '/index.php?g=User&m=Upyun&a=kindedtiropic',
items : [
'source','undo','plainpaste','wordpaste','clearhtml','quickformat','selectall','fullscreen','fontname', 'fontsize','subscript','superscript','indent','outdent','|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline','hr']
});
});
</script>

<script>
    jQuery(document).ready(function(){
      jQuery("#formID").validationEngine();
    });
    </script>
<div class="content">

<link rel="stylesheet" type="text/css" href="<?php echo Common;?>/default_user_com.css" media="all">
<div class="cLineB">

 </div>
  <div class="msgWrap bgfc">
  <form action="" method="post" id="formID" class="form-horizontal form-validate" novalidate="novalidate">
  <input type="hidden" name="token" value="<?php echo ($token); ?>" />
<?php if($es_data['id'] != ''): ?><input type="hidden" name="id" value="<?php echo ($es_data['id']); ?>" /><?php endif; ?>
  <div class="control-group">
    <label for="title" class="control-label">图文消息标题：</label>
    <div class="controls">
      <input type="text" name="title" id="title" maxlength="10" class="span4" value="<?php echo ($es_data['title']); ?>" schoolSet><span class="maroon">*</span><span class="help-inline">触发关键词后返回图文消息标题</span>
    </div>
  </div>
  <div class="control-group">
    <label for="keyword" class="control-label">触发关键词：</label>
    <div class="controls">
      <input type="text" name="keyword" id="keyword" class="span4" schoolSet value="<?php echo ($es_data['keyword']); ?>"><span class="maroon">*</span><span class="help-inline">只能设置一个关键字</span>
    </div>
  </div>

    <div class="control-group">
    <label for="keyword" class="control-label">首页模板：</label>
    <div class="controls">
      <TR>

  <TD>
    <input type="text" id="selecttpl" class="px" value="已选择模板 <?php echo (($es_data['tpid'])?($es_data['tpid']):36); ?>" disabled size="40"  />
    <a class="a_upload" onclick="chooseTpl('tpid','selecttpl',1)">选择模板</a>
    <a class="a_upload" onclick="viewTpl()">预览</a> <font color="red">[请注意,并不是所有模板都支持,如果发现所选模板显示不正确,请另换一个]</font>
    <script>
        function viewTpl(){
            var tid = $('#tpid').val();
            chooseTpl(tid,'',2);
        }
    </script>
    <input type="hidden" class="px" id="tpid" value="<?php echo (($es_data['tpid'])?($es_data['tpid']):36); ?>" name="tpid" style="width:250px">
  </TD>

</TR>
    </div>
  </div>

  <div class="control-group">
    <label for="keyword" class="control-label">菜单列表：</label>
    <div class="controls">
      <tr>
                    <td>
                     <input type="text" name="menu1" id="menu1" class="px" value="<?php echo (($es_data['menu1'])?($es_data['menu1']):'楼盘首页'); ?>" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;

 <input type="input" class="px"  value="<?php echo ($es_data['picurl1']); ?>" name="picurl1" id="img" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须选择(上传)图片!!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png"> <a href="###" onclick="chooseFile('img','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>

                     <input type="text" name="menu2" id="menu2" value="<?php echo (($es_data['menu2'])?($es_data['menu2']):'楼盘介绍'); ?>" class="px" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;
<input type="input" class="px"  value="<?php echo ($es_data['picurl2']); ?>" name="picurl2" id="img2" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须选择(上传)图片!!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png">  <a href="###" onclick="chooseFile('img2','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img2',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img2')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img2\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>
                    <br>
                     <input type="text" name="menu3" id="menu3" value="<?php echo (($es_data['menu3'])?($es_data['menu3']):'户型全景'); ?>"class="px" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;
<input type="input" class="px"  value="<?php echo ($es_data['picurl3']); ?>" name="picurl3" id="img3" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须选择(上传)图片!!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png">  <a href="###" onclick="chooseFile('img3','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img3',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img3')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img3\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>
                     <input type="text" name="menu4" id="menu4" value="<?php echo (($es_data['menu4'])?($es_data['menu4']):'楼盘相册'); ?>" class="px" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;
<input type="input" class="px"  value="<?php echo ($es_data['picurl4']); ?>" name="picurl4" id="img4" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须选择(上传)图片!!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png">  <a href="###" onclick="chooseFile('img4','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img4',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img4')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img4\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>
                    <br>
                     <input type="text" name="menu5" id="menu5" value="<?php echo (($es_data['menu5'])?($es_data['menu5']):'楼盘信息'); ?>" class="px" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;
<input type="input" class="px"  value="<?php echo ($es_data['picurl5']); ?>" name="picurl5" id="img5" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须上传图片!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png">  <a href="###" onclick="chooseFile('img5','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img5',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img5')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img5\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>

                     <input type="text" name="menu6" id="menu6" value="<?php echo (($es_data['menu6'])?($es_data['menu6']):'点评印象'); ?>" class="px" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;
<input type="input" class="px"  value="<?php echo ($es_data['picurl6']); ?>" name="picurl6" id="img6" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须选择(上传)图片!!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png">  <a href="###" onclick="chooseFile('img6','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img6',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img6')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img6\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>
                     <br>
                     <input type="text" name="menu7" id="menu7" value="<?php echo (($es_data['menu7'])?($es_data['menu7']):'预约看房'); ?>" class="px" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;
<input type="input" class="px"  value="<?php echo ($es_data['picurl7']); ?>" name="picurl7" id="img7" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须选择(上传)图片!!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png">  <a href="###" onclick="chooseFile('img7','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img7',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img7')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img7\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>
                    <input type="text" name="menu8" id="menu8" value="<?php echo (($es_data['menu8'])?($es_data['menu8']):'关于我们'); ?>" class="px" data-validation-engine="validate[required,minSize[2],maxSize[4]]"> &nbsp;
<input type="input" class="px"  value="<?php echo ($es_data['picurl8']); ?>" name="picurl8" id="img8" style="width:400px" data-validation-engine="validate[required,custom[url]]" data-errormessage-value-missing="必须选择(上传)图片!"  data-errormessage-custom-error="如果是手动填写,正确的网址,如: http://www.yourdomain.com/images/demo.png">  <a href="###" onclick="chooseFile('img8','icon')" class="a_upload">选择</a> <a href="###" onclick="upyunPicUpload('img8',236,236,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('img8')">预览</a>
  <br/>
  <div style="margin:10px 0">您可以点击下面这些图片作为图标（直接点击即可）236 × 236</div>
  <div style="background:#eee;width:570px;margin:10px 0;text-align:center">
  <?php
 for ($i=1;$i<20;$i++){ echo '<img onclick="document.getElementById(\'img8\').value=this.src" style="width:30px;cursor:pointer;" src="tpl/User/default/common/images/photo/plugmenu'.$i.'.png" />'; } ?>
  </div>

                    </td>
                </tr>
    </div>
  </div>



  <div class="control-group">
    <label for="coverurl" class="control-label">图文消息封面：</label>
    <div class="controls">
<?php if($es_data['cover'] != ''): ?><img class="thumb_img" id="cover_src" src="<?php echo (($es_data['cover'])?($es_data['cover']):''); ?>" style="max-height:100px;"><?php endif; ?>
      <input type="input" class="px" id="cover" value="<?php echo (($es_data['cover'])?($es_data['cover']):''); ?>" name="cover" >

          <span class="help-inline">
               <!--script src="<?php echo STATICS;?>/upyun.js"></script--><a href="###" onclick="upyunPicUpload('cover',720,400,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('cover')">预览</a>
              <span class="help-inline">建议尺寸：宽720像素，高400像素</span>
          </span>
       </div>
  </div>
  <div class="control-group">
         <label class="control-label">楼盘头部图片：</label>
                                    <div class="controls">
                                    <?php if($es_data['banner'] != ''): ?><img class="thumb_img" id="banner_src" src="<?php echo (($es_data['banner'])?($es_data['banner']):''); ?>" style="max-height:100px;"><?php endif; ?>
                                            <input type="text" id="banner" name="banner" class="px" value="<?php echo (($es_data['banner'])?($es_data['banner']):''); ?>">
                                            <span class="help-inline">
                                            <a href="###" onclick="upyunPicUpload('banner',720,400,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('banner')">预览</a>
                                            <span class="help-inline">建议尺寸：宽720像素，高350像素</span>
                                        </span>
                                    </div>
                                </div>
  <div class="control-group">
    <div class="control-group">
                                    <label class="control-label">户型头部图片：</label>
                                    <div class="controls">
<?php if($es_data['house_banner']): ?><img class="thumb_img" id="house_banner_src" src="<?php echo (($es_data['house_banner'])?($es_data['house_banner']):''); ?>" style="max-height:100px;"><?php endif; ?>

                                        <input type="text" name="house_banner" id="house_banner" class="px" value="<?php echo (($es_data['house_banner'])?($es_data['house_banner']):''); ?>">
                                        <span class="help-inline">
                                             <script src="<?php echo STATICS;?>/upyun.js"></script><a href="###" onclick="upyunPicUpload('house_banner',720,400,'<?php echo ($token); ?>')" class="a_upload">上传</a> <a href="###" onclick="viewImg('house_banner')">预览</a>
                                            <span class="help-inline">建议尺寸：宽720像素，高350像素</span>
                                        </span>
                                    </div>
                                </div>
  </div>

  <div class="control-group">
                                    <label for="album_title" class="control-label">全景相册名称：</label>
                                    <div class="controls">
                                    <select id="panorama_id" name="panorama_id" class="input-medium" schoolSet>
                                          <option value="0">请选择360全景相册</option>
                                            <?php if(is_array($panorama)): $i = 0; $__LIST__ = $panorama;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo['pid']); ?>" <?php if($vo['pid'] == $es_data['panorama_id']): ?>selected="selected"<?php endif; ?>><?php echo ($vo['name']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                        <span class="maroon">*</span>
                                        <span class="help-inline">如果没有，请先到 <a href="<?php echo U('Panorama/add',array('token'=>$token));?>" class="btn"><strong><font color='red'>360°全景</strong></font></a>添加</span>

                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">楼盘新闻：</label>
                                    <div class="controls">
                                     <select id="classify_id" name="classify_id" class="input-medium" schoolSet>
                                          <option value="0">请选择3G楼盘新闻</option>
                                            <?php if(is_array($classify)): $i = 0; $__LIST__ = $classify;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo['cid']); ?>" <?php if($vo['cid'] == $es_data['classify_id']): ?>selected="selected"<?php endif; ?>><?php echo ($vo['name']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                        <span class="maroon">*</span>
                                        <span class="help-inline">如果没有，请先到<a href="<?php echo U('Classify/add',array('token'=>$token));?>" class="btn"> <strong><font color='red'>文章分类管理</strong></font></a>添加</span> <span class="maroon">注意：只能添加［图文回复］的［新增图文自定义回复］！</span>
                                    </div>
                                </div>

  <div class="control-group">
    <label for="video" class="control-label">楼盘视频：</label>
    <div class="controls">
       <input type="text" name="video" id="video" class="span4" style="width:480px" value="<?php echo ($es_data['video']); ?>"><p>
       支持优酷视频地址如：http://v.youku.com/v_show/id_XNDA1ODEyNjE2.html <br>
       腾讯fash视频地址：如http://static.video.qq.com/TPout.swf?vid=v0119s27wd5&amp;auto=0 <br>
       也支持mp4和ogg 格式地址 http://www.w3school.com.cn/example/html5/mov_bbb.mp4 </p>
    </div>
  </div>

<script>
function setlatlng(longitude,latitude){
  art.dialog.data('longitude', longitude);
  art.dialog.data('latitude', latitude);
  // 此时 iframeA.html 页面可以使用 art.dialog.data('test') 获取到数据，如：
  // document.getElementById('aInput').value = art.dialog.data('test');
  art.dialog.open('<?php echo U('Map/setLatLng',array('token'=>$token,'id'=>$id));?>',{lock:false,title:'设置经纬度',width:600,height:400,yesText:'关闭',background: '#000',opacity: 0.87});
}
</script>
<div class="control-group">
    <label for="place" class="control-label">楼盘地址地址：</label>
    <div class="controls">
      <div class="input-prepend">
         <input type="text" id="suggestId" class="span4 px"  name="place" value="<?php echo ($es_data['place']); ?>" class="input-xlarge" schoolSet> <span class="maroon">*</span>
      </div>
    </div>
  </div>
    <div class="control-group">
    <label for="suggestId" class="control-label">地图标识：</label>
         <div class="controls">
         经度 <input type="text" id="longitude"  name="lng" size="14" class="px" value="<?php echo ($es_data['lng']); ?>" /> 纬度 <input type="text"  name="lat" size="14" id="latitude" class="px" value="<?php echo ($es_data['lat']); ?>" /> <a href="###" onclick="setlatlng($('#longitude').val(),$('#latitude').val())">在地图中查看/设置</a>
         </div>
    </div>
<div class="control-group">
         <label for="estate_desc" class="control-label">楼盘简介：</label>
         <div class="controls">
             <textarea class="px" id="estate_desc" name="estate_desc" style="width: 605px; height: 150px;"><?php echo ($es_data['estate_desc']); ?></textarea>

         </div>
     </div>
     <div class="control-group">
         <label for="project_brief" class="control-label">项目简介：</label>
         <div class="controls">
             <textarea class="px" id="project_brief" name="project_brief" style="width: 605px; height: 150px; "><?php echo ($es_data['project_brief']); ?></textarea>
         </div>
     </div>
     <div class="control-group">
        <label for="traffic_desc" class="control-label">交通配套：</label>
        <div class="controls">
            <textarea class="px" id="traffic_desc" name="traffic_desc" style="width: 605px; height: 150px; "><?php echo ($es_data['traffic_desc']); ?></textarea>
        </div>
    </div>
 <?php if($es_data['id'] != ''): ?><input type="hidden" name="id" value="<?php echo ($es_data['id']); ?>" /><?php endif; ?>
   <div class="form-actions">
      <button id="bsubmit" type="submit" data-loading-text="提交中..." class="btnGreen">保存</button>　<button type="button" class="btnGray vm">取消</button>
    </div>
</form>
  </div>


        </div>

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