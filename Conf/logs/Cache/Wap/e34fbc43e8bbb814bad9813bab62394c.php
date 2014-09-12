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

<style>
#content{display:none;width:100%;overflow:hidden;position:absolute;top:0}#imgs{-webkit-transition-property:-webkit-transform;-webkit-transition-duration:0.5s;-webkit-transition-timing-function:ease-out;-webkit-transform:translate3d(0px,0px,0px);height:100%}#imgs li{float:left;text-align:center;height:100%;padding-top:65px}#imgs img{width:94%;-webkit-transform:translate3d(0px,0px,0px)}.bg{width:100%;top:0;left:0;background:#000;opacity:0.8;position:absolute;display:none}.close{display:none;position:absolute;z-index:10;right:3%;top:20px;color:#fff;cursor:pointer;background:#999;border-radius:3px;padding:5px 8px}.s_count{display:none;position:absolute;z-index:10;right:3%;top:25px;color:#fff;margin-right:60px}
.infodetail img{
    max-width: 100%;
}
</style>
<!--轮播--->
<div class="focusPic">
	<div class="views">
		<?php if(empty($imageList) != true): ?><ul class="warp" id="fd">
				<?php if(is_array($imageList)): $i = 0; $__LIST__ = $imageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$img): $mod = ($i % 2 );++$i;?><li class="li"><img src="<?php echo ($img["image"]); ?>"></li><?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
		<?php else: ?>
			<ul class="warp" id="fd">
				<li class="li"><img src="<?php echo ($product["logourl"]); ?>"></li>
			</ul><?php endif; ?>
	</div>
	<?php if(empty($imageList) != true): ?><ul class="tabs">
			<?php if(is_array($imageList)): $i = 0; $__LIST__ = $imageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$img): $mod = ($i % 2 );++$i;?><li class="li"><?php echo ($i); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	<?php else: ?>
		<ul class="tabs"><li>0</li></ul><?php endif; ?>
</div>
<script>
var focusPic = new Swiper('.focusPic .views',{pagination: '.focusPic .tabs',autoplay:3000})
</script>
<!--轮播结束--->
<div class="d-info">
<form id="product_buy_form" name="product_buy_form" action="#" method="POST">
<h1><?php echo ($product["name"]); ?></h1>
<div class="price">
<span class="okp">销售价：<em id="xsprice">￥<?php echo ($product["price"]); ?></em></span>
<span class="okp">会员价：<em id="vprice">￥<?php echo ($product["vprice"]); ?></em></span>
<span>市场价：<i>￥<?php echo ($product["oprice"]); ?></i></span>
</div>
<div style="display:none;" class="price">促销：<font color="red">新春热卖~~~</font></div>
<?php if(empty($catData['color']) != true): ?><div class="i-row">
<div class="t"><?php echo ($catData["color"]); ?>：</div>
<div class="c">
	<ul class="ys cm">
		<?php if(is_array($colorData)): $colorId = 0; $__LIST__ = $colorData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$detail): $mod = ($colorId % 2 );++$colorId;?><li style="cursor:pointer" class="color" id="color_<?php echo ($detail['color']); ?>">
				<?php if($detail['logo'] != ''): ?><img src="<?php echo ($detail['logo']); ?>"><?php else: echo ($detail['colorName']); endif; ?>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
	</ul>
</div>
</div><?php endif; ?>
<?php if(empty($catData['norms']) != true): ?><div class="i-row">
<div class="t"><?php echo ($catData["norms"]); ?>：</div>
<div class="c">
<ul id="shoe_size_list" class="ys cm">
	<?php if(is_array($formatData)): $formatId = 0; $__LIST__ = $formatData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$detail): $mod = ($formatId % 2 );++$formatId;?><li style="cursor:pointer" class="norms" id="norms_<?php echo ($detail['format']); ?>"><?php echo ($detail['formatName']); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
</div>
</div><?php endif; ?>
<?php if(empty($catData['norms']) != true OR empty($catData['color']) != true): if(is_array($productDetail)): $i = 0; $__LIST__ = $productDetail;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$pro): $mod = ($i % 2 );++$i;?><input type="hidden" id="color_<?php echo ($pro["color"]); ?>_norms_<?php echo ($pro["format"]); ?>" value="<?php echo ($pro["num"]); ?>" did="<?php echo ($pro["id"]); ?>" price="<?php echo ($pro["price"]); ?>" vprice="<?php echo ($pro["vprice"]); ?>" class="hidden"/><?php endforeach; endif; else: echo "" ;endif; endif; ?>
<div class="i-row">
<div class="t">数量：</div>
<div class="c buynum">
<i style="cursor: pointer;" class="numadjust dec" onclick="plus_minus(<?php echo ($product["id"]); ?>, -1,<?php echo ($product["price"]); ?>)"></i>
<input id="buy_num" name="goods[num]" type="text" value="1">
<i style="cursor: pointer;" class="numadjust add" onclick="plus_minus(<?php echo ($product["id"]); ?>,1,<?php echo ($product["price"]); ?>)"></i>
<span class="stock">(库存<span id="stock"><?php echo ($product["num"]); ?></span>)</span>
</div>
</div>
<div class="i-row">
<div class="t">邮费：</div>
<div class="c buynum">
<span class="stock">￥<?php echo ($product["mailprice"]); ?></span>
</div>
</div>
<div id="show_msg" style="display:none;" class="error"></div>
<div class="i-row act">
<a href="javascript:;" onClick="QuickBuy()" class="buynow">立即购买</a>
<a href="javascript:;" id="btn_add_cart" class="addcart" onclick="add_cart();">加入购物车</a>
</div>
</form>
</div>
<div class="d-info">
<div class="detailinfo">
<ul class="tabs"><li>详情</li><li>评论<i>(<?php echo ($num); ?>)</i></li></ul>
<div class="views">
<div class="warp">
<div class="li">
<ul class="detail-list">
<!-- <li><?php echo ($product["name"]); ?></li> -->
<?php if(is_array($attributeData)): $i = 0; $__LIST__ = $attributeData;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$attribute): $mod = ($i % 2 );++$i;?><li><label><?php echo ($attribute["name"]); ?>：</label><span><?php echo ($attribute["value"]); ?></span></li><?php endforeach; endif; else: echo "" ;endif; ?>
<div class="infodetail"><?php echo ($product["intro"]); ?></div>
</ul>
<div class="m-page more_detailinfo" style="display:none;" >
<div class="pg-num"><a href="javascript:void(0);">查看图文详情</a></div>
</div>
<div style="display:none;" class="m-page hide_detailinfo">
<div class="pg-num"><a href="javascript:void(0);">收起图文详情</a></div>
</div>
<div class="goods_intro"></div>
</div>
<div class="li">
<div class="com-dec"><span class="star"><span class="st-box" style="width:<?php echo ($percent); ?>"><i></i></span></span>评价<b><?php echo ($score); ?></b>分，共<b><?php echo ($num); ?></b>位参与</div>
<ul class="com-list">
<?php if(is_array($comment)): $i = 0; $__LIST__ = $comment;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$com): $mod = ($i % 2 );++$i;?><li>
<p><?php echo ($com['wecha_id']); ?>：<?php echo ($com['score']); ?>分　<?php echo ($com['productinfo']); ?>
</p>
<p><?php echo ($com['content']); ?><i>&nbsp;&nbsp;<?php echo (date("Y-m-d H:i",$com["dateline"])); ?></i></p>
</li><?php endforeach; endif; else: echo "" ;endif; ?>

</ul>
<?php if($page > 0): ?><div class="m-page more_comment_list">
<div class="com_pg-num pg-num" id="<?php echo ($page); ?>"><a href="javascript:void(0);">查看更多评论</a></div>
</div><?php endif; ?>
</div>
</div>
</div>
</div>
</div>

<script type="text/javascript"> 
var detailinfo = new Swiper('.detailinfo .views',{pagination: '.detailinfo .tabs',autoplay:false});
var SysSecond; 
var InterValObj; 
var buyDetailId = '';
$(document).ready(function() {
	$(".com_pg-num").click(function(){
		var page = parseInt($(this).attr('id'));
		$.get("<?php echo U('Store/getcomment',array('token'=>$token,'pid'=>$product['id'],'wecha_id'=>$_GET['wecha_id']));?>" + '&page='+page, function(response){
			if (response.error_code == false) {
				var html = '';
				$.each(response.data, function(i, data){
					html += '<li><p>' + data.wecha_id + '：' + data.score + '分　' + data.productinfo + '</p>';
					html += '<p>' + data.content + '<i>&nbsp;&nbsp;' + data.dateline + '</i></p></li>';
				});
				if (html != '') {
					$(".com-list").append(html);
				}
				if (response.page > 0) {
					$(".com_pg-num").attr('id', response.page);
				} else {
					$(".m-page").hide();
				}
			}
		}, 'json');
	});
	
	
	SysSecond = parseInt($("#remainSeconds").html()); //这里获取倒计时的起始时间 
	InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
	$(".color").click(function(){
		if ($(this).attr('class') != 'color on') {
			$(this).addClass('on').siblings().removeClass('on');
			var id = $(this).attr('id');
			var nextid = 'norms_0';
			$('.norms').each(function(){
				if ($(this).attr('class') == 'norms on') {
					nextid = $(this).attr('id');
				}
			});
			if ($("#" + id + "_" + nextid).val() != null && $("#" + id + "_" + nextid).val() != '') {
				buyDetailId = id + "_" + nextid;
				$("#stock").text($("#" + id + "_" + nextid).val());
				$("#xsprice").text('￥' + $("#" + id + "_" + nextid).attr('price'));
				$("#vprice").text('￥' + $("#" + id + "_" + nextid).attr('vprice'));
			} else {
				$("#stock").text(0);
			}
		} else {
			$(this).removeClass('on');
		}
	});
	$(".norms").click(function(){
		if ($(this).attr('class') != 'norms on') {
			$(this).addClass('on').siblings().removeClass('on');
			var id = $(this).attr('id');
			var nextid = 'color_0';
			$('.color').each(function(){
				if ($(this).attr('class') == 'color on') {
					nextid = $(this).attr('id');
				}
			});
			if ($("#" + nextid + "_" + id).val() != '' && $("#" + nextid + "_" + id).val() != null) {
				buyDetailId = nextid + "_" + id;
				$("#stock").text($("#" + nextid + "_" + id).val());
				$("#xsprice").text('￥' + $("#" + nextid + "_" + id).attr('price'));
				$("#vprice").text('￥' + $("#" + nextid + "_" + id).attr('vprice'));
			} else {
				$("#stock").text(0);
			}
		} else {
			$(this).removeClass('on');
		}
	});
}); 

//将时间减去1秒，计算天、时、分、秒 
function SetRemainTime() {
	if (SysSecond > 0) { 
		SysSecond = SysSecond - 1; 
		var second = Math.floor(SysSecond % 60);             // 计算秒     
		var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
		var hour = Math.floor((SysSecond / 3600) % 24);      //计算小时 
		var day = Math.floor((SysSecond / 3600) / 24);        //计算天 
		$("#remainTime").html('&nbsp;&nbsp;还剩'+day + "天" + hour + "小时" + minite + "分" + second + "秒"); 
	} else {//剩余时间小于或等于0的时候，就停止间隔函数 
		window.clearInterval(InterValObj); 
		//这里可以添加倒计时时间为0后需要执行的事件 
	} 
}
//加减
function plus_minus(rowid, number,price) {
    var num = parseInt($('#buy_num').val());
    num = num + parseInt(number);
    if (num > parseInt($('#stock').text())) {
    	num = parseInt($('#stock').text());
    }
    if (num < 0) {
        return false;
    }
     $('#buy_num').attr('value',num);
}
function add_cart() {
	$("#btn_add_cart").attr("disable", false);
	var count = parseInt($('#buy_num').val());
	var did = parseInt($("#" + buyDetailId).attr('did'));
	if ($('.hidden').eq(0).val() != null && $('.hidden').eq(0).val() != '' && $('.hidden').eq(0).val() != 'undefined') {
		if (isNaN(did)) {
	        return floatNotify.simple('请选择相应属性的产品');
		}
	} else {
		did = 0;
	}
	if (count > parseInt($("#stock").text())) {
		return floatNotify.simple('抱歉，您的购买量超过了库存了');
	}
	$.ajax({
		url: "<?php echo U('Store/addProductToCart',array('token'=>$token,'id'=>$product['id'],'wecha_id'=>$_GET['wecha_id']));?>" + '&count='+count + '&did=' + did,
		success: function(data) {
			if(data){
				var datas=data.split('|');
                $('.cart_com').text(datas[0]); 
                $("#btn_add_cart").attr("disable", true);
                return floatNotify.simple('加入购物车成功');
			} else {
				return floatNotify.simple('抱歉，您的请求不正确');
			}
		}
	});
}
function QuickBuy() {
	var count = parseInt($('#buy_num').val());
	var did = parseInt($("#" + buyDetailId).attr('did'));
	if ($('.hidden').eq(0).val() != null && $('.hidden').eq(0).val() != '' && $('.hidden').eq(0).val() != 'undefined') {
		if (isNaN(did)) {
			return floatNotify.simple('请选择相应属性的产品');
			return false;
		}
	} else {
		did = 0;
	}
	if (count > parseInt($("#stock").text())) {
		return floatNotify.simple('抱歉，您的购买量超过了库存了');
	}
	$.ajax({
		url: "<?php echo U('Store/addProductToCart',array('token'=>$token,'id'=>$product['id'],'wecha_id'=>$_GET['wecha_id']));?>" + '&count='+count + '&did=' + did,
		success: function(data) {
			if(data){
				location.href = "<?php echo U('Store/cart',array('token' => $token,'wecha_id' => $_GET['wecha_id']));?>";;
			} else {
				return floatNotify.simple('抱歉，您的请求不正确');
			}
		}
	});
}
</script>
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Store",
            "moduleID":"<?php echo ($product['id']); ?>",
            "imgUrl": "<?php echo ($product['logourl']); ?>", 
            "timeLineLink": "<?php echo C('site_url') . U('Store/product',array('token' => $_GET['token'],'id'=>$product['id']));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Store/product',array('token' => $_GET['token'],'id'=>$product['id']));?>",
            "weiboLink": "<?php echo C('site_url') . U('Store/product',array('token' => $_GET['token'],'id'=>$product['id']));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>