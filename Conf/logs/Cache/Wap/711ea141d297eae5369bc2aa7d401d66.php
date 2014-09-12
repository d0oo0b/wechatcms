<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<title>我的祝福</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="description" content="微喜帖信">
<link rel="stylesheet" type="text/css" href="tpl/Wap/default/common/css/wedding/css/info.css" media="all">
<style type="text/css">
.reload {
position: absolute;
right: 0;
}
header>div>ul li {
display: inline-block;
}
</style>
</head>
<body>
 



<div class="container">
<header>
<div>
<ul class="box">
<li class="relative"><span class="pic"><img src="<?php if($pic['picurl'] != false): echo ($pic['picurl']); else: ?>http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg<?php endif; ?>"></span></li>
<li>
<div class="name">
我的祝福
<div>
</div></div></li>
<li>
<a href="javascript:location.reload();" class="reload">刷新</a>
</li>
</ul>
</div>
</header>
            <div style=" height:80px"></div>
            <div class="regards">
                <ul>
                    <?php if(is_array($wedding)): $i = 0; $__LIST__ = $wedding;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$wedding): $mod = ($i % 2 );++$i;?><li>
                        <h2><span><?php echo ($wedding["name"]); ?></span><?php echo ($wedding["phone"]); ?> </h2>
                        <p class="regardsmore"><?php echo ($wedding["info"]); ?> </p>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                            
                   
                                    </ul>
            </div>
            </div>
           
<footer></footer>




</body></html>