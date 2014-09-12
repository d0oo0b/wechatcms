<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跳转提示</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}
body {
	background: #fff;
	font-family: '微软雅黑';
	color: #333;
	font-size: 14px;
	background: #ebedf0 url(/tpl/User/default/common/images/img/bg_home.png) repeat;
}
a{ color:#666; text-decoration:none;}
.main {
	padding: 0 0 10px;
	margin: 150px auto;
	width: 420px;
}
.message_box {
	width: 400px;
	min-height: 120px;
	border: 1px solid #c8c8c8;
	background: #fff;
	box-shadow: 0 1px #CCCCCC;
-moz-box-shadow: 0 1px #CCCCCC;
-webkit-box-shadow: 0 1px #CCCCCC;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
	
}
.message {
	margin-top: 13px;
	height: 40px;
	width: 350px;
	margin-left: -1px;
	padding: 0 15px 0 50px;
	line-height: 40px;
}
.success .message{
	border: 1px solid #98c601;
	background: #effeb9 url(/Conf/images/success.png) no-repeat;
	color: #98c601;
}
.error .message{
	border: 1px solid #eb5439;
	background: #fccac1 url(/Conf/images/error.png) no-repeat;
	color: #eb5439;
}
.type {
	font-size: 16px;
	font-weight: bold;
	margin-right: 10px;
}
.text_r {
	width: 0px;
	height: 0px;
	overflow: hidden;
	background: #759800;
	border-top:15px solid #759800;
	border-right:15px solid #fff;
	margin-left:400px;
}
.success .text_r{background: #759800;
	border-top:15px solid #759800;
	border-right:15px solid #e4e6eb;}
.error .text_r{background: #a53623;
	border-top:15px solid #a53623;
	border-right:15px solid #e4e6eb;}
.text_info{ padding:0 15px 5px 15px; line-height:28px;}
.success .text_info{ color:#759800;}
.error .text_info{ color:#a53623;}
</style>
</head>
<body>
<div class="main">
<present name="message">	
  <div class="message_box success">
    <div class="message "> <span class="type">{pigcms:$f_siteName}友情提醒</span></div>
    <div class="text_r"></div>
     <div class="text_info"><?php echo($message); ?>，等待时间 <b id="wait"><?php echo($waitSecond); ?></b> 秒后，页面将自动跳转，<a id="href" href="<?php echo($jumpUrl); ?>">（点击手动跳转）</a> </div> 
  </div>
<else/>	
  <div class="message_box error">
    <div class="message "> <span class="type">{pigcms:$f_siteName}友情提醒</span> </div>
    
    <div class="text_r"></div>
    <div class="text_info"><?php echo($error); ?>，等待时间 <b id="wait"><?php echo($waitSecond); ?></b> 秒后，页面将自动跳转，<a id="href" href="<?php echo($jumpUrl); ?>">（点击手动跳转）</a> </div> 
  </div>
</present>
</div>
<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
	var time = --wait.innerHTML;
	if(time == 0) {
		location.href = href;
		clearInterval(interval);
	};
}, 1000);
})();
</script>
</body>
</html>