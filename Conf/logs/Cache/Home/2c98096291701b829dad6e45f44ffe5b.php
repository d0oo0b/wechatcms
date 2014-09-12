<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<title>用户登录 - <?php echo C('site_title');?></title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="zh-cn" />
<meta name="keywords" content="<?php echo C('keyword');?>" />
<meta name="description" content="<?php echo C('content');?>" />
<link href="<?php echo RES;?>/css/login.css" rel="stylesheet" type="text/css" />
<link href="<?php echo RES;?>/css/module.css" rel="stylesheet" type="text/css" />
<link href="<?php echo RES;?>/css/basic.css?v=201401281600" rel="stylesheet" type="text/css" />
</head>
<body>
<!--module_header-->
<div class="module_header">
    <div class="logonav_bg w">
        <div class="logonav main">
            <a href="/" class="fl d_b login_logo"></a>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!--end-->
<!--login_main-->
    <div class="login_main_bg">
        <div class="main login_main pr">
            <div class="div1_opac bopac pa"></div>
            <div class="div1 pa">
			<form action="<?php echo U('Users/checklogin');?>" method="post" class="login">
			       <ul class="ul1 ml20 mt10">
                    <li class="li1 tr"><span class="span1 pa f18 fb fyahei fc666">登录系统</span><a class="a1 f14 fb" href="<?php echo U('Index/reg');?>">免费注册</a></li>

                    <li class="mt10">
                        <label class="fc666" for="Phone">用户名:</label>
                    </li>
                    <li>
                        <span class="icon_png img-png0 pa img-png1 png_tm"></span>
                        <input class="inp1 no_ol pl30 farial fc666" type="text" name="username">
                    </li>
                    <li>
                        <label class="fc666" for="Phone">密码:</label>
                    </li>
                    <li>
                        <span class="icon_png img-png0 pa img-png2 png_tm"></span>
                       <input class="inp1 no_ol pl30 farial fc666" type="password" name="password">
                    </li>


                    <li>
                        <input name="button" type="submit" value="" class="button_png btn1 pa cur bnone" />
                    </li>
                </ul>
				</form>
			</div>
            <div class="div2 pa">
                <p class="p1 fyahei"><?php echo C('site_name');?>-您身边微信营销专家</p>
                <p class="p2 pr mt50 fyahei f16 tc">
                    "扫描有惊喜"<br />
                    留下您的痕迹吧
                    <!--二维码--><img src="<?php echo RES;?>/images/weixin_erweima_big.png" class="img-ewm" /><!--end-->
                </p>
            </div>
        </div>
    </div>
<!--end-->



    
<!--module_footer3-->
<div class="module_footer3_bg w mt15">
    <div class="module_footer3 main tc">
        <ul class="ul1 mt15">
            <li><a href="<?php echo U('Home/Index/an');?>" >案例展示</a><span class="span1"></span></li>

                <li><a href="<?php echo U('Home/Index/help');?>" >帮助中心</a><span class="span1"></span></li>
<li><a href="http://www.xianghebbs.com" >香河门户网</a><span class="span1"></span></li>
                <li><a href="<?php echo U('User/Index/index');?>" >管理中心</a><span class="span1 vhidden"></span></li>
                <li class="liclear"></li>
        </ul>
        <p class="pr mt10">

Copyright Reserved 2013-2014 © <?php echo C('site_name');?> | <?php echo C('copyright');?> 版权所有 | <?php echo C('ipc');?>
<span class="span2 pa" style="width:54px;height:20px;margin-right:-28px;background:none;text-align:right;">    
<!--统计代码3-->
</span>



</p>
</div>
</div>
<!--end-->


</body>
</html>