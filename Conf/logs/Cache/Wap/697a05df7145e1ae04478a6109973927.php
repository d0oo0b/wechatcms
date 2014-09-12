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
<?php if(empty($products) != true ): ?><ul class="m-cart-list">
<?php if(is_array($products)): $i = 0; $__LIST__ = $products;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$p): $mod = ($i % 2 );++$i; if(empty($p['detail']) != true): if(is_array($p['detail'])): $i = 0; $__LIST__ = $p['detail'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): $mod = ($i % 2 );++$i;?><li number="1">
				<span class="pic"><a href="<?php echo U('Store/product',array('token'=>$_GET['token'],'id'=>$p['id'],'wecha_id'=>$_GET['wecha_id']));?>"><img src="<?php echo ($p["logourl"]); ?>" width="75" height="75"></a></span>
				<span class="con">
					<a href="<?php echo U('Store/product',array('token'=>$_GET['token'],'id'=>$p['id'],'wecha_id'=>$_GET['wecha_id']));?>" class="t"><?php echo ($p["name"]); ?></a>
					<i class="d"><?php if(empty($p['formatTitle']) != true): echo ($p["formatTitle"]); ?>：<?php echo ($row["formatName"]); endif; ?> <?php if(empty($p['colorTitle']) != true): ?>，<?php echo ($p["colorTitle"]); ?>：<?php echo ($row["colorName"]); endif; ?></i>
					<p>
					<label>数量：</label>
					<span>
					<i style="cursor: pointer;" onclick="plus_minus(<?php echo ($p["id"]); ?>, -1, <?php echo ($row["id"]); ?>)" class="dec"></i>
					<input type="text" value="<?php echo ($row["count"]); ?>" onchange="change_minus(<?php echo ($p["id"]); ?>, <?php echo ($row["id"]); ?>)" id="num_<?php echo ($p["id"]); ?>_<?php echo ($row["id"]); ?>">
					<i style="cursor: pointer;" onclick="plus_minus(<?php echo ($p["id"]); ?>, 1, <?php echo ($row["id"]); ?>)" class="add"></i>
					</span>
					</p>
					<p>
					<label>库存：</label>
					<span id="stock"><?php echo ($row["num"]); ?></span>
					</p>
					<p>	
					<label>价格：</label><span class="price">￥<?php echo ($row["price"]); ?></span>
					<!-- <label style="cursor:pointer" onclick="location.href='<?php echo U('Store/deleteCart',array('token'=>$_GET['token'],'id'=>$p['id'],'did'=>$row['id'],'wecha_id'=>$_GET['wecha_id']));?>'" class="del">删除</label> -->
					<label style="cursor:pointer" onclick="location.href='<?php echo U('Store/deleteCart',array('token'=>$_GET['token'],'id'=>$p['id'],'did'=>$row['id'],'wecha_id'=>$_GET['wecha_id']));?>'" class="del">删除</label>
					</p>
				</span>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
	<?php else: ?>
		<li number="<?php echo ($p["count"]); ?>">
			<span class="pic"><a href="<?php echo U('Store/product',array('token'=>$_GET['token'],'id'=>$p['id'],'wecha_id'=>$_GET['wecha_id']));?>"><img src="<?php echo ($p["logourl"]); ?>" width="75" height="75"></a></span>
			<span class="con">
				<a href="<?php echo U('Store/product',array('token'=>$_GET['token'],'id'=>$p['id'],'wecha_id'=>$_GET['wecha_id']));?>" class="t"><?php echo ($p["name"]); ?></a>
				<p>
					<label>数量：</label>
					<span>
						<i style="cursor: pointer;" onclick="plus_minus(<?php echo ($p["id"]); ?>, -1, 0)" class="dec"></i>
						<input type="text" value="<?php echo ($p["count"]); ?>" onchange="change_minus(<?php echo ($p["id"]); ?>, 0)" id="num_<?php echo ($p["id"]); ?>_0">
						<i style="cursor: pointer;" onclick="plus_minus(<?php echo ($p["id"]); ?>, 1, 0)" class="add"></i>
					</span>
				</p>
				<p>
				<label>库存：</label>
				<span id="stock"><?php echo ($p["num"]); ?></span>
				</p>
				<p>	
				<label>销售价：</label><span class="price">￥<?php echo ($p["price"]); ?></span>
				<label style="cursor:pointer" onclick="location.href='<?php echo U('Store/deleteCart',array('token'=>$_GET['token'],'id'=>$p['id'],'did'=>0,'wecha_id'=>$_GET['wecha_id']));?>'" class="del">删除</label>
				</p>
			</span>
		</li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
</ul>
<div class="m-cart-toal">
<!-- <p style="color:#E58B4C;text-align:left;padding:0 10px 1rem;border-bottom:1px dotted #ccc;margin:0 -10px 1rem;font-size:1.2rem;line-height:1.4rem">享受的优惠: 注册名鞋库会员，满百包邮！（货到付款除外）</p> -->
<p class="check" style="font-size:1.4rem">商品总数:<b id="total_count"><?php echo ($totalCount); ?></b>　商品总额:<b id="total_price">￥<?php echo ($totalFee); ?></b></p>
<p class="act">
	<a href="<?php echo U('Store/index',array('token'=>$_GET['token'], 'wecha_id'=>$_GET['wecha_id']));?>" class="back">继续购物<i></i></a>
	<a href="<?php echo U('Store/orderCart',array('token'=>$_GET['token'], 'wecha_id'=>$_GET['wecha_id']));?>" class="checkout">下单结算</a>
</p>
</div>
<?php else: ?>
<div class="m-cart-e">
<div class="icon"></div>
<div class="txt">您还没有挑选商品哦</div>
<a href="<?php echo U('Store/cats',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>" class="gobuy">去挑选商品</a>
</div><?php endif; ?>
<script type="text/javascript">
function full_update(rowid,price) {
    var _this = $('#qty'+rowid);
    var this_val = parseInt($(_this).val());
    if (this_val < 1 || isNaN(this_val)) {
        alert('购买数量不能小于0！');
        $(_this).focus();
        return false;
    }
    update_cart(rowid, this_val,price);
}
//加减
function plus_minus(rowid, number, did) {
    var num = parseInt($('#num_'+rowid + '_' + did).val());
    num = num + number;
    if (num < 1) {
        return false;
    }
     $('#num_'+rowid + '_' + did).attr('value',num);
    update_cart(rowid, num, did);     
}
function change_minus(rowid, did) {
	var num = parseInt($('#num_'+rowid + '_' + did).val());
    if (num < 1) {
        return false;
    }
     $('#num_'+rowid + '_' + did).attr('value',num);
    update_cart(rowid, num, did);
}
//更新购物车
function update_cart(rowid, num, did) {
	if (num > parseInt($("#stock").text())) {
		num = parseInt($("#stock").text());
		$('#num_'+rowid + '_' + did).val(num);
		floatNotify.simple('抱歉，您的购买量超过了库存了');
	}
	$.ajax({
		url: '<?php echo U('Store/ajaxUpdateCart',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id']));?>&id='+rowid+'&count='+num+'&did='+ did,
		success: function( data ) {
			if(data){
				var datas=data.split('|');
				//$('#p_buy #all_price').html('￥'+datas[1]);
				$('#total_count').html(datas[0]);
				$('#total_price').html('￥'+datas[1]);
			}
		}
	});
}
</script>
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Store",
            "moduleID":"0",
            "imgUrl": "", 
            "timeLineLink": "<?php echo C('site_url') . U('Store/cart',array('token' => $_GET['token']));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Store/cart',array('token' => $_GET['token']));?>",
            "weiboLink": "<?php echo C('site_url') . U('Store/cart',array('token' => $_GET['token']));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>