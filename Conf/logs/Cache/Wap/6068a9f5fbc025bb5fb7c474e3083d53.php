<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" /><meta charset="utf-8" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="format-detection" content="telephone=no"/>
<title><?php echo ($metaTitle); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />
<meta name="format-detection" content="telephone=no" />
<script src="<?php echo $staticFilePath;?>/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/jquery.lazyload.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/notification.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/swiper.min.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/main.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="<?php echo $staticFilePath;?>/css/touch_index.css">
<link type="text/css" rel="stylesheet" href="<?php echo $staticFilePath;?>/css/style.css" />
</head>
<body>
<div id="top"></div>
<div id="scnhtm5" class="m-body">
<div class="menu">
<a href="<?php echo U('Store/index',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>"><i></i>所有商品</a>
<a href="<?php echo U('Store/cart',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>"><i></i>购物车</a>
<a href="<?php echo U('Store/my',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>"><i></i>查物流</a>
<a href="<?php echo U('Store/my',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>"><i></i>用户中心</a>
</div>  
<!--主体-->
<?php if(is_array($cats)): $i = 0; $__LIST__ = $cats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hostlist): $mod = ($i % 2 );++$i; if ($i > 6) {$k = $i % 6 + 1;} else {$k = $i;} ?>
	<div class="m-floor">
	<ul>
	<li class="tit bgf<?php echo ($k); ?>">
	<i><?php echo ($i); ?>F</i><?php echo ($hostlist["name"]); ?>
	</li>
	<li class="img"><a href="<?php echo U('Store/products',array('token' => $_GET['token'], 'catid' => $hostlist['id'], 'wecha_id' => $wecha_id));?>"><img src="<?php echo ($hostlist["logourl"]); ?>"/></a></li>
	<!-- <li class="ad"><a href="/index.php/touch/goods/goodslist/keyword/NEO%09"><img src="style/images/f1-2.jpg"/></a></li> -->
	</ul>
	</div><?php endforeach; endif; else: echo "" ;endif; ?> 
</div>
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Store",
            "moduleID":"<?php echo ($cats[0]['id']); ?>",
            "imgUrl": "<?php echo ($cats[0]['logourl']); ?>", 
            "timeLineLink": "<?php echo C('site_url') . U('Store/index',array('token' => $_GET['token']));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Store/index',array('token' => $_GET['token']));?>",
            "weiboLink": "<?php echo C('site_url') . U('Store/index',array('token' => $_GET['token']));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>