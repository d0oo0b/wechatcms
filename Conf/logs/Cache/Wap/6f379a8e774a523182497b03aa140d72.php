<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<!-- saved from url=(0126)http://demo.pigcms.cn/index.php?g=Wap&m=Store&a=index&token=yicms&wecha_id=oLA6VjnKvmtV-cUWWjUcraOzePd0&sgssz=mp.weixin.qq.com -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta name="format-detection" content="telephone=no">
<title><?php echo ($metaTitle); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<meta name="format-detection" content="telephone=no">
<script src="<?php echo ($staticFilePath); ?>/2js/jquery-1.9.1.min.js" type="text/javascript">
</script><script src="<?php echo ($staticFilePath); ?>/2js/jquery.lazyload.js" type="text/javascript">
</script><script src="<?php echo ($staticFilePath); ?>/2js/notification.js" type="text/javascript"></script>
<script src="<?php echo ($staticFilePath); ?>/2js/swiper.min.js" type="text/javascript"></script>
<script src="<?php echo ($staticFilePath); ?>/2js/main.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="<?php echo ($staticFilePath); ?>/2css/touch_index.css">
<link type="text/css" rel="stylesheet" href="<?php echo ($staticFilePath); ?>/2css/style.css">
</head>
<body>
<div id="top"></div>
<div id="scnhtm5" class="m-body">
  <div class="menu"><a href="<?php echo U('Store/cats',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'dining'=>$isDining));?>"><i></i>所有商品</a><a href="<?php echo U('Store/cart',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'dining'=>$isDining));?>"><i></i>购物车</a><a href="<?php echo U('Store/my',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'dining'=>$isDining));?>"><i></i>查物流</a><a href="<?php echo U('Store/my',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'dining'=>$isDining));?>"><i></i>用户中心</a></div>
  <!--主体-->
  <?php if(is_array($cats)): $i = 0; $__LIST__ = $cats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hostlist): $mod = ($i % 2 );++$i;?><div class="m-floor">
  
    <ul>
      <li class="tit bgf<?php echo $t+1;$t++?>"><i><?php echo $k+1;$k++?>F</i><?php echo ($hostlist["name"]); ?></li>
      <li class="img"><a href="<?php if($hostlist['parentid'] == 0): echo U('Store/products',array('token'=>$_GET['token'],'catid'=>$hostlist['id'],'wecha_id'=>$wecha_id,'dining'=>$isDining)); else: echo U('Store/products',array('token'=>$_GET['token'],'catid'=>$hostlist['id'],'wecha_id'=>$wecha_id)); endif; ?>" class="tbox"><img src="<?php echo ($hostlist["logourl"]); ?>"></a></li>
      
      <!-- <li class="ad"><a href="/index.php/touch/goods/goodslist/keyword/NEO%09"><img src="style/images/f1-2.jpg"/></a></li> -->
    </ul>
  </div><?php endforeach; endif; else: echo "" ;endif; ?>
  
  
 
</div>
<script type="text/javascript">

document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {

	WeixinJSBridge.call('hideToolbar');

});
        </script>
        <script type="text/javascript" src="/tpl/Wap/default/common/js/ChatFloat.js"></script>
<?php if($kefu['sc'] == '1'): ?><a href="<?php echo ($kefu["info2"]); ?>" id="CustomerChatFloat" style="position: fixed; right: 0px; top: 150px; z-index: 99999; height: 70px; width: 65px; min-width: 65px; background-image: url(/tpl/Wap/default/common/css/img/MobileChatFloat.png); background-size: 65px; background-position: 0px 0px; background-repeat: no-repeat no-repeat;"></a><?php endif; ?> 
</body>
</html>