<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" /><meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="format-detection" content="telephone=no"/>
<title><?php echo ($metaTitle); ?></title>
<script src="<?php echo $staticFilePath;?>/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/jquery.lazyload.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/notification.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/swiper.min.js" type="text/javascript"></script>
<script src="<?php echo $staticFilePath;?>/js/main.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="<?php echo $staticFilePath;?>/css/style_touch.css">
</head>
<script>
$(document).ready(function(){
$(".m-hd .cat").parent('div').click( function() {
    var docH=$(document).height();
  	$('.sub-menu-list').toggle();
    $(".m-right-pop-bg2").addClass("on").css('min-height',docH);
});
$(".m-right-pop-bg2").click( function() {
    $('.sub-menu-list').hide();
   $(".m-right-pop-bg2").removeClass("on").removeAttr("style");
});
});
</script>
<body>
<div id="top"></div>
<div id="scnhtm5" class="m-body">
<div class="m-detail-mainout">
<div class="m-hd">
<div><a href="javascript:history.go(-1);" class="back">返回</a></div>
<div><a href="javascript:void(0);" class="cat">商品分类</a></div>
<div class="tit"><?php echo ($metaTitle); ?></div>
<div><a href="<?php echo U('Store/my',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>" class="uc">用户中心</a></div>
<div><a href="<?php echo U('Store/cart',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>" class="cart">购物车<i class="cart_com"><?php if($totalProductCount != 0): echo ($totalProductCount); endif; ?></i></a></div>
</div>
<ul class="sub-menu-list">
<li><a href="<?php echo U('Store/cats',array('token' => $_GET['token'], 'catid' => $hostlist['id'], 'wecha_id' => $wecha_id));?>">首页</a></li>
<?php if(is_array($cats)): $i = 0; $__LIST__ = $cats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hostlist): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Store/products',array('token' => $_GET['token'], 'catid' => $hostlist['id'], 'wecha_id' => $wecha_id));?>"><?php echo ($hostlist["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
<script type="text/javascript" src="/tpl/Wap/default/common/js/ChatFloat.js"></script>
<?php if($kefu['sc'] == '1'): ?><a href="<?php echo ($kefu["info2"]); ?>" id="CustomerChatFloat" style="position: fixed; right: 0px; top: 150px; z-index: 99999; height: 70px; width: 65px; min-width: 65px; background-image: url(/tpl/Wap/default/common/css/img/MobileChatFloat.png); background-size: 65px; background-position: 0px 0px; background-repeat: no-repeat no-repeat;"></a><?php endif; ?> 
<?php if($ordersCount != 0): if(is_array($orders)): $i = 0; $__LIST__ = $orders;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$o): $mod = ($i % 2 );++$i;?><ul class="m-uc-order-li">
			<span info_link="<?php echo U('Store/myDetail',array('token'=>$token,'cartid'=>$o['id'],'wecha_id'=>$wecha_id));?>" onclick="order_jump($(this))">
				<li class="p-li">
					<?php if(is_array($o['productInfo'])): $i = 0; $__LIST__ = $o['productInfo'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): $mod = ($i % 2 );++$i;?><a href="<?php echo U('Store/product',array('token'=>$token,'id'=>$row['id'],'wecha_id'=>$wecha_id));?>">
						<img title="<?php echo ($row["name"]); ?>" src="<?php echo ($row["logourl"]); ?>" width="45" height="45">
						</a><?php endforeach; endif; else: echo "" ;endif; ?>
				</li>
				<!-- <li>订单编号：<a href="<?php echo U('Store/product',array('token'=>$token,'id'=>$row['id'],'wecha_id'=>$wecha_id));?>"><?php echo ($o["orderid"]); ?></a></li> -->
				<?php if($alipayConfig['open'] == 1): ?><li>支付状态：<?php if($o['paid']){echo '<span style="color:green">已付款</span>';}else{echo '<span style="color:red">未付款</span>';} ?><i class="t"><?php echo (date("Y-m-d H:i:s",$o["time"])); ?></i></li><?php endif; ?>
				<li>订单状态：<?php if($o['sent']){echo '<span style="color:green">已发货</span>';}else{echo '<span style="color:red">未发货</span>';} ?><i class="t"><?php echo (date("Y-m-d H:i:s",$o["time"])); ?></i></li>
				<li>订单总额：￥<?php echo ($o["price"]); ?>
					<?php if(($o['paid'] == 0) AND ($alipayConfig['open'] == 1)): ?><a href="<?php echo U('Alipay/pay', array('token' => $token, 'wecha_id' => $wecha_id,'success'=>1,'from'=>'Store', 'price' => $o['price'], 'orderName' => $o['orderid'], 'orderid' => $o['orderid']));?>" class="pay-btn">立即付款</a><?php endif; ?>
				</li>
			</span>
		</ul><?php endforeach; endif; else: echo "" ;endif; ?>
	<?php if($totalpage > 1) { ?>
		<div class="m-page uc-orderlist">
			<?php if($page == 1): ?><div class="pg-pre pg-grey"><a href="javascript:void(0);">上一页<i><em></em></i></a></div>
			<?php else: ?>
				<div class="pg-pre"><a href="<?php echo U('Store/my',array('token'=>$token,'page'=>intval($page - 1),'wecha_id'=>$wecha_id));?>">上一页<i><em></em></i></a></div><?php endif; ?>
			<div class="pg-num"><?php echo ($page); ?>/<?php echo ($totalpage); ?></div>
			<?php if($page == $totalpage): ?><div class="pg-next pg-grey"><a href="javascript:void(0);">下一页<i><em></em></i></a></div>
			<?php else: ?>
				<div class="pg-next"><a href="<?php echo U('Store/my',array('token'=>$token,'page'=>intval($page + 1),'wecha_id'=>$wecha_id));?>">上一页<i><em></em></i></a></div><?php endif; ?>
		</div>
	<?php }else{} ?>
<?php else: ?>
	<ul style="margin: 15px 10px;border-radius: 4px;line-height: 1.4em;font-size: 16px;border: 1px solid #ddd;background: #f5f5f5;padding: 10px 10px 6px;">
		<span><li class="p-li" style="padding:10px; text-align:center;">没有订单</li></span>
	</ul><?php endif; ?>
<script type="text/javascript">
function order_jump(obj) {
	location.href = $(obj).attr('info_link');
}
</script>
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Store",
            "moduleID":"",
            "imgUrl": "", 
            "timeLineLink": "<?php echo C('site_url') . U('Store/my',array('token' => $_GET['token']));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Store/my',array('token' => $_GET['token']));?>",
            "weiboLink": "<?php echo C('site_url') . U('Store/my',array('token' => $_GET['token']));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>