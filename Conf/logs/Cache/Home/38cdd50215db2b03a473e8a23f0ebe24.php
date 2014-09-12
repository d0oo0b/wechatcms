<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="<?php echo C('keyword');?>"/>
    <meta name="description" content="<?php echo C('content');?>"/>
    <link rel="shortcut icon" href="favicon.ico">

<style>

.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(<?php echo RES;?>/css/img/h2003070126.jpg) center no-repeat #B4B4B4;}
</style>
    <title>功能介绍－<?php echo C('site_title');?></title></head>
    <link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/index.css" media="all" />
<script src="<?php echo RES;?>/js/html5.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/jQuery.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/carouFredSel.js"></script>
<body>
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
    </div>
<div class="Public-content clearfix">
  <div class="banner hbanner"></div>
    <div class="Public">
	<img style="float:center;margin:15px;" alt="<?php echo U('site_name');?>" src="<?php echo C('erwei');?>">
          <div>
	<p> <SPAN style="TEXT-ALIGN: justify; LINE-HEIGHT: 25px"> <?php echo C('about');?></p>
      </div>
    
    </div>
</div>

<div class="erwei" title="微信扫一扫">
	<span class="hudongzhushou">官方微信</span>
	<div class="erwei_big" style="display:none;"><img src="<?php echo C('erwei');?>" >
		<p>扫一扫，关注<?php echo C('site_name');?>官方微信，体验<?php echo C('site_name');?>智能服务<br>
		<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('site_qq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('site_qq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></p>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		var erwei_time = null;
		$(".erwei").hover(function(){
			$(".erwei_big").show();
		}).mouseleave(function(){
				erwei_time = setTimeout(function(){
					$(".erwei_big").hide();
				},1000);
			});
		$(".erwei_big").mouseenter(function(){
			if(erwei_time){
				clearTimeout(erwei_time);
			}
		}).mouseleave(function(){
				erwei_time = setTimeout(function(){
					$(".erwei_big").hide();
				},1000);
			});
	});
</script>
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
			Copyright © 2013-2014 <?php echo C('site_url');?>. All Rights Reserved <?php echo C('site_name');?>版权所有 </br> <a href="http://www.miitbeian.gov.cn" target="_blank" ><?php echo C('ipc');?>首页</a>
		</div>
	</div>
</div>
</body>
</html>
<div style="display:none">
<?php echo C('counts');?>
</div>
</body></html>