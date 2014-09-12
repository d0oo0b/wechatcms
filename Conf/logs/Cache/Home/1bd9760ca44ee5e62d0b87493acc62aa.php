<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title><?php echo C('site_name');?>——<?php echo C('site_title');?></title>
<meta name="keywords" content="<?php echo C('keyword');?>"/>
<meta name="description" content="<?php echo C('content');?>"/>
<script src="<?php echo RES;?>/js/html5.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/index.css" media="all" />
<script type="text/javascript" src="<?php echo RES;?>/js/jQuery.js"></script>
<link rel="stylesheet" href="<?php echo RES;?>/css/reg.css?v=20140604" />
<link rel="stylesheet" href="<?php echo RES;?>/css/bootstrap.min.css" />
<script type="text/javascript" src="<?php echo RES;?>/js/weimob-index.js"></script>
<link rel="shortcut icon" href="<?php echo RES;?>/images/favicon.ico" />
</head>
<style>

#location_p,#location_c{

	width: 150px;

}

#location_p{

	margin-right: 5px;

}

.other-reg{

	display: block;

	margin: 0 auto;

	line-height: 30px;

	color: #FFF;

	margin-bottom: 5px;

	margin-top: 5px;

	width: 175px;

}

.other-reg:hover{

	color: #FFF;

	text-decoration: none;

}

.sina-reg{

	background: -moz-linear-gradient(top, #e96d52 0%, #d54e35 100%);

	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#e96d52), color-stop(100%,#d54e35));

	background: -webkit-linear-gradient(top, #e96d52 0%,#d54e35 100%);

	background: -o-linear-gradient(top, #e96d52 0%,#d54e35 100%);

	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e96d52', endColorstr='#d54e35', GradientType=0 );

}

.qq-reg{

	background: -moz-linear-gradient(top, #379bbd 0%, #3178a2 100%);

	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#379bbd), color-stop(100%,#3178a2));

	background: -webkit-linear-gradient(top, #379bbd 0%,#3178a2 100%);

	background: -o-linear-gradient(top, #379bbd 0%,#3178a2 100%);

	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#379bbd', endColorstr='#3178a2', GradientType=0 );

}

</style>
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
<!-- banner -->
<div class="banner gbanner">
</div>
<!-- <div class="overlay"></div>
	<div id="reg-select">

		<div class="overlay-cont">

			<div id="type1" class="reg-type">

				<h1>演示微信号</h1>

				<IMG alt="" src="<?php echo C('erwei');?>" width=150 height=150>

				<p></p>

			</div>

			<div class="sep"></div>

			<div id="type2" class="reg-type">

				<h1 style="margin-bottom: 0px;">扫一扫左边二维码</h1>

				<a id="reg-now1" href="javascript:;" class="sel-btn">

					我已经关注

				</a>
				</br>
				<a id="reg-now2" href="javascript:;" class="sel-btn">

					测试自己的公众号

				</a>

				<!--	<a href="https://api.weibo.com/oauth2/authorize?client_id=143433709&redirect_uri=http://www.weijuju.com/woauth&response_type=code" class="other-reg sina-reg">使用新浪微博登录注册</a>

				<a href="https://open.t.qq.com/cgi-bin/oauth2/authorize?client_id=801396341&response_type=code&redirect_uri=http%3A%2F%2Fwww.weijuju.com%2Fqoauth" class="other-reg qq-reg">使用腾讯QQ登录注册</a> -->
				</br>
				<p style="margin-top: 0px;">说明：登录后进入第一个进行测试哦！</p>

			</div>

		</div>

</div> -->
<div class="Public-content clearfix">
	<div class="Public" style="height:500px">
		<h2 class="Public-h2">
			登陆
		</h2>
		<div class="Public-box clearfix">
			<div class="main">
				<div class="abody">
					<div class="contaier wp cf">
						<div class="think-login">
							<div class="head">
							</div>
							<DIV class="body think-form ">
								<FORM class=login method=post action=index.php?m=Users&amp;a=checklogin>
									<TABLE width="970" height=320 align="center" cellspacing="15">
										<TBODY>
											<TR>
												<TD width=115 rowspan="6">&nbsp;
													
												</TD>
												<TD width=413 height="21">&nbsp;
													
												</TD>
												<TD rowSpan=6 width=258>
													<IMG alt="" src="<?php echo C('erwei');?>" width=200 height=200>
												</TD>
												<TD rowSpan=6 width=99>&nbsp;
													
												</TD>
											</TR>
											<TR>
												<TD height="56">
													用户名&nbsp;&nbsp;
													<input class="text" type="text" name="username" />
												</TD>
											</TR>
											<TR>
												<TD height="56">
													密　码&nbsp;&nbsp;
													<input class="text" type="password" name="password" />
												</TD>
											</TR>
											<TR>
												<TD height="36">
													<P>
														<input name="submit" type="submit" class="submit" value="登录" />
												</TD>
											</TR>
											<TR>
												<TD height="100">
													<p>
														测试账号：test； 密码：test；
													</p>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<INPUT value=3e9fde7441cc55bf46afe7f8361af205_c700381a595ea906f05ae5636574d102
									type=hidden name=__hash__>
									<input type="hidden" name="__hash__" value="3e9fde7441cc55bf46afe7f8361af205_fdaa3abcec1d9c172fb1560e9236a331"
									/>
									</p>
								</FORM>
							</DIV>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

	$(function(){

		$("#reg-now1").click(function(){

			$('.overlay').hide();

			$('#reg-select').hide();

			$('#username').focus();

		});
		
		$("#reg-now2").click(function(){

			$('.overlay').hide();

			$('#reg-select').hide();

			$('#username').focus();

		});

		$(".other-reg").click(function(){

			$.cookie("weijuju_weibologin_from","reg",{expires:365});

		});

		var p = "广东";

		var c = "深圳";

		$("#location_p option").each(function(index,o){

			var pValue = $(o).attr("value");

			if(pValue == p || pValue.indexOf(p) == 0){

				p = pValue;

				return -1;

			}

		});

		$("select[name='location_p']").val(p).change();

		$("#location_c option").each(function(index,o){

			var cValue = $(o).attr("value");

			if(cValue == c || cValue.indexOf(c) == 0){

				c = cValue;

				return -1;

			}

		});

		$("select[name='location_c']").val(c);

	});

</script>
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