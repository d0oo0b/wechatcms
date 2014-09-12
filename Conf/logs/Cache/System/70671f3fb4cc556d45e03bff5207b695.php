<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台首页</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
</head>
<body style="background:none">
<div class="content">
<div class="box">
	<h3>微南丰系统新消息</h3>
    <div class="con dcon">
    <div class="update">
    
    <p>服务器IP：<?php echo $_SERVER['SERVER_ADDR'].":".$_SERVER['SERVER_PORT']; ?></p>
    
    <p>技术支持：<a href="http://www.jihuodi.com" class="blue">集货地源码论坛</a></p>
    <p>系统版本：2014-07-26版7.0[NEW]</p>
    <p>服务器环境：<?php echo $_SERVER[SERVER_SOFTWARE];?> MySql:<?php echo mysql_get_server_info(); ?> php:<?php echo PHP_VERSION; ?></p>
<p>当前网站语言：<?php echo getenv("HTTP_ACCEPT_LANGUAGE"); ?></p>
    <p>被屏蔽的函数：<?php echo get_cfg_var("disable_functions")?get_cfg_var("disable_functions"):"无" ; ?></p>
    </div>
    <ul class="myinfo">
   <li><p class="red">您的程序版本为：微南丰多用户微信营销系统 V7.0</p><span>[ 授权版本：商业版 (终身使用权) ]</span></li>
   <li style="display:none"><p class="red" style="display:none">您的程序版本为：微南丰多用户微信营销系统v7.0</p><span style="display:none">[ 授权版本：商业版 (终身免费) ]</span></li>
  
	</ul>
    </div>
</div>
<!--/box-->
<div class="box">
	<h3>微南丰论坛更新提示</h3>
    <div class="con dcon">
    <div class="kjnav" style="display:none">
    
    </div>
    <ul class="myinfo kjinfo">
   <li class="title">最近推荐更新</li>
<!--<li>程序第一次安装指导,或第一次协助安装</li>
<li>服务时间：早9:00 晚10:00 如有疑问请在这个时间段联系我们，周未双休</li>
<li>您的擅自修改出现的任何问题,将不在售后内('可指导')</li> -->
<script type="text/javascript" src="http://www.jihuodi.com/api.php?mod=js&bid=18"></script>
	</ul>
    </div>
</div>

<!--/box-->
</div>
<script>
function systemupdatecheck(){
	$.ajax({
		type: "GET",
		url: "Services/EFService.svc/Members",
		data: "{}",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function (data) {
			if (data.success == true) {
				setTimeout("window.location.href = location.href",2000);
			} else {
				alert(data.msg);
			}
		},
		error: function (msg) {
			alert(msg);
		}
	});
}
</script>
</body>
</html>