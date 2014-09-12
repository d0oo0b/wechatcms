<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<title>帮助中心－如何为微信公众号配置接口？ 微信帮手 微信公众账号-<?php echo C('site_name');?></title>
<meta name="keywords" content="<?php echo C('site_name');?>,微信帮手,微信公众账号,微信公众平台,微信公众账号开发,微信二次开发,微信接口开发,微信托管服务,微信营销,微信公众平台接口开发"/>
<meta name="description" content="<?php echo C('content');?>"/>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/help.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/index.css" media="all" />
<script type="text/javascript" src="<?php echo RES;?>/js/jquery.js"></script>
﻿<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/index.css" media="all" />
<script type="text/javascript" charset="utf-8" async="" src="<?php echo RES;?>/crmqq.php"></script>
<script type="text/javascript" charset="utf-8" async="" src="<?php echo RES;?>/js/contains.js"></script>
<script type="text/javascript" charset="utf-8" async="" src="<?php echo RES;?>/js/localStorage.js"></script>
<script type="text/javascript" charset="utf-8" async="" src="<?php echo RES;?>/js/taskMgr.js"></script>
<script type="text/javascript" charset="utf-8" async="" src="<?php echo RES;?>/js/views.js"></script>
 <link href="<?php echo RES;?>/css/base.css" type="text/css" rel="stylesheet">
 <script type="text/javascript" src="<?php echo RES;?>/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="<?php echo RES;?>/js/jquery.cityselect.js"></script>
    <script type="text/javascript" src="<?php echo RES;?>/js/HeaderMenu.js"></script>
    <link href="<?php echo RES;?>/css/HaedMenu.css" type="text/css" rel="stylesheet">
    <link href="<?php echo RES;?>/css/notification.css" rel="stylesheet" type="text/css">
    <script src="<?php echo RES;?>/js/notification.js" type="text/javascript"></script>
    <script src="<?php echo RES;?>/js/jquery.cookie.js" type="text/javascript"></script>
    

	<script type="text/javascript" src="<?php echo RES;?>/js/jfade.js"></script>
     <script type="text/javascript" src="<?php echo RES;?>/js/images.js"></script> 
 

<script src="<?php echo RES;?>/js/html5.js"></script>







<script type="text/javascript" src="<?php echo RES;?>/js/jQuery.js"></script>







<script type="text/javascript" src="<?php echo RES;?>/js/carouFredSel.js"></script>







<body>



 <div class="w-top">
            <div class="w-head">
                
                <div class="w-wrap">
                    <a class="w-left" href="#"><img src="<?php echo ($f_logo); ?>" /></a>
                    <div class="w-head-line w-left">
                    </div>
                    <div class="w-left w-margin10">
                        <div class="w-city-select">
                           
                        </div>
                            <div class="w-head-login">
                                <a href="<?php echo U('Index/login');?>" class="">登录</a>&nbsp;｜&nbsp;<a href="<?php echo U('Index/reg');?>" class="">注册</a></div>
                    </div>
                    <ul class="w-menu Menu">
                          <li><a href="/" class="hover">首页</a></li>







                    <li><a href="<?php echo U('Home/Index/fc');?>">功能介绍</a></li>







                    <li><a href="<?php echo U('Home/Index/about');?>">关于我们</a></li>







                    <li><a href="<?php echo U('Home/Index/price');?>">资费说明</a></li>







  

  					





               	<?php if($_SESSION[uid]==false): ?><li><a href="<?php echo U('Index/login');?>">登录后台</a></li>
				<li><a href="<?php echo U('Index/reg');?>" class="hover">申请试用</a></li>
					<?php else: ?>
                <li><a href="<?php echo U('User/Index/index');?>">管理中心</a></li>
				<li><a href="/#" onClick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a></li><?php endif; ?>	

                    </ul>
                </div>
            </div>
        </div>

<!--

    <div class="nav clearfix">







        <div class="nav-content">   







		







		<img src="<?php echo C('logo');?>"   >







            <div class="right line-li">







                <ul>







                    <li><a href="/" class="hover">首页</a></li>







                    <li><a href="<?php echo U('Home/Index/fc');?>">功能介绍</a></li>







                    <li><a href="<?php echo U('Home/Index/about');?>">关于我们</a></li>







                    <li><a href="<?php echo U('Home/Index/price');?>">资费说明</a></li>







                    <li><a href="<?php echo U('Home/Index/guide');?>">案例展示</a></li>

  					





               	<?php if($_SESSION[uid]==false): ?><li><a href="<?php echo U('Index/login');?>">登录后台</a></li>
				<li><a href="<?php echo U('Index/reg');?>" class="hover">申请试用</a></li>
					<?php else: ?>
                <li><a href="<?php echo U('User/Index/index');?>">管理中心</a></li>
				<li><a href="/#" onClick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a></li><?php endif; ?>	

                </ul>







            </div>







      </div>







    </div>-->
		<div id="header">
        </div>
        <div class="banner nbanner"></div>
<div class="main">
   <div class="pos"> 当前位置&raquo;<a href="<?php echo C('site_url');?> "><?php echo C('site_name');?></a> &raquo; <a href="">帮助中心</a></div>
<style type="text/css">
.normalTitle {
    border-bottom: 1px solid #D7DDE6;
    border-radius: 10px 10px 0 0;
    padding: 20px;
    text-shadow: 0 1px 1px #FFFFFF;
}
.normalTitle h2, .panelTitle h2, .processTitle h2 {
    font-size: 20px;
    font-weight: bold;
}
.content {
 margin: 0 auto;
    text-align: left;
    width: 707px;
}
.article, .intro, .download, .document, .developer {
margin:40px 0px;

background:#f5f6f7;
box-shadow:0px 1px 3px #ccc;
}
.section {
padding:0 0 20px 0;
margin:0 0 20px 0;
border-bottom:1px solid #eee;
overflow: hidden;
}
.lastSection {
border:none;
margin-bottom:0px;
}
.normalTitle {
border-bottom:1px solid #d7dde6;
border-radius:10px 10px 0 0;
padding:20px 40px;
text-shadow:0 1px 1px #fff;
}
.normalContent {
background:#fff;/*border-radius:0 0 10px 10px;*/
padding:40px;
}
.normalTitle h2, .panelTitle h2, .processTitle h2 {
font-size:20px;
font-weight:bold;
}
.green{ color:#090}
.red{ color: #F00}
.collapsible {
    background: none repeat scroll 0 0 #FFFFFF;
    padding: 20px;
}
.CollapsiblePanel {
    margin-bottom: 10px;
    width: 870px;
}
.CollapsiblePanelTab {
    background: url(style/images/img/arrow_unclick.png) no-repeat scroll 820px 20px #FFFFFF;
    border: 1px solid #DEDEDE;
    border-radius: 3px 3px 3px 3px;
    color: #626B8A;
    cursor: pointer;
    font-size: 18px;
    padding: 20px 40px 20px 20px;
    text-shadow: 0 1px 0 white;
}
.CollapsiblePanelTab.hover {
    background: url(style/images/img/arrow_unclick.png) no-repeat scroll 820px 20px #D7DDE6;
border: 1px solid #C1C9D4;
}
.CollapsiblePanelTab.clicked {
    background: url(style/images/img/arrow_click.png) no-repeat scroll 820px 20px #D7DDE6;
border: 1px solid #C1C9D4;
}
.CollapsiblePanelContent {
    display: none;
    overflow: hidden;
}
.CollapsiblePanelContent .normalContent {
    padding: 20px 20px 0;
}
</style>
<div class="content" style="width:985px;">
<div class="document" style="margin-top:0px;">
            <div class="normalTitle"><h2>如何为微信公众号配置接口？</h2></div>
                <div class="collapsible">
<div class="section lastSection">
<p>请务必认真阅读以下2步内容，才能更有效的完成配置工作，有疑问的请联系QQ：<?php echo ($f_qq); ?>提问。<br/><?php if($_GET['token'] != ''): ?>你的接口URL是：<font color="red"><?php echo ($f_siteUrl); ?>/index.php/api/<?php echo $_GET['token']; ?></font><br>您的token是：<font color="red"><?php if($wxuser['pigsecret']){echo $wxuser['pigsecret'];}else{echo $_GET['token'];} ?></font><?php endif; ?></p>
</div>
                <div id="CollapsiblePanel2" class="CollapsiblePanel">
                    <div class="CollapsiblePanelTab clicked">第一步、在<?php echo C('site_name');?>绑定你的微信公众号。<span></span></div>
                    <div style="" class="">
                        <div class="articleContent catalogHome normalContent">
                            <div class="section lastSection">
                                <p>1、注册并登录<a href="<?php echo U('Index/login');?>"><?php echo C('site_name');?>接口平台</a></p>
                                <p>2、添加公众号 → 功能管理 → 勾选要开启的功能</p>									
								<p><img src="<?php echo STATICS;?>/help/help01.jpg" width="790px"></p>
								<p><img src="<?php echo STATICS;?>/help/help0.jpg" width="790px"></p>
                            </div>
                        </div>
                    </div>                        
                </div>
<div id="CollapsiblePanel3" class="CollapsiblePanel">
                        <div class="CollapsiblePanelTab clicked">第二步、到微信公众平台设置接口。<span></span></div>
                        <div style="" class="">
                            <div class="articleContent catalogHome normalContent">
                                <div class="section lastSection">
                                   <div class="section lastSection">
                                    <p>1、登录 <a href="http://mp.weixin.qq.com/">微信公众平台</a>（<a href="http://mp.weixin.qq.com/">http://mp.weixin.qq.com/</a>），进行身份认证，填写信息，提交身份证。</p>
                                    <p>认证后，点击高级功能 → 进入开发模式</p><br>
                                    <p><img src="<?php echo STATICS;?>/help/help002.jpg" width="790px"></p><br>
									<p>2、点击"成为开发者"按钮</p>
									<p><img src="<?php echo STATICS;?>/help/help003.jpg" width="790px"></p><br>
									<p>3、填写接口配置信息</p>
									<?php if($_GET['token'] == ''): ?><p>比如你<?php echo C('site_name');?>平台上的地址是<?php echo C('site_url');?>/index.php/api/demo</p>
									<p>那么URL就是<?php echo C('site_url');?>/INDEX.PHP/api/demo</p>
									<?php else: ?>
									<p>你的URL是 <font color="red"><?php echo C('site_url');?>/index.php/api/<?php echo $_GET['token']; ?></font></p><?php endif; ?>
									<p>Token填写 <font color="red"><?php echo $_GET['token']; ?></font></p>
									<p><img src="<?php echo STATICS;?>/help/help004.jpg" width="790px"></p><br>
									<p>4、确认开启</p>
									<p>5、在手机上用微信给你的公众号输入"帮助"，测试你的接口是否配置正常！</p><br>									
                                </div>
                              
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
    </div>
    </div>
<!--结束-->
</div>
<script type="text/javascript">try{Dd('webpage_7').className='left_menu_on';}catch(e){}</script>

<!--QQ咨询-->

<div class="footer">
	<div class="footer-content clearfix">
		<div class="foot-menu">
			<p>
				<a href="<?php echo C('site_url');?>"><?php echo C('site_name');?>首页</a>&nbsp;|&nbsp;
				<a href="<?php echo U('Index/reg');?>" target="_blank">申请入驻</a>&nbsp;|&nbsp;
				<a href="<?php echo U('Home/Index/about');?>" target="_blank">渠道代理</a>&nbsp;|&nbsp;
				<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('site_qq');?>&site=qq&menu=yes" target="_blank">接口定制</a>&nbsp;|&nbsp;
				<a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('site_qq');?>&site=qq&menu=yes" target="_blank">微信托管</a>&nbsp;|&nbsp;
				<a href="<?php echo U('Home/Index/about');?>" target="_blank">关于<?php echo C('site_name');?></a>&nbsp;|&nbsp;
				
			</p>
			<p>客服QQ：<?php echo C('site_qq');?>&nbsp;&nbsp;&nbsp;邮箱：<?php echo C('site_email');?></p>
		</div>
		<div class="copyright">
			Copyright (c) 2013-2014 <?php echo C('site_url');?>. All Rights Reserved <?php echo C('site_name');?>版权所有 <?php echo C('ipc');?>
		</div>
	</div>
</div>
</body>
</html>