<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" /><meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="format-detection" content="telephone=no"/>
<title><?php echo ($metaTitle); ?></title>
<script src="../tpl/static/hotels/js/piwik.js"></script>
<script src="../tpl/static/hotels/js/zepto.min.js"></script>
<script src="../tpl/static/hotels/js/underscore-min.js"></script>
<script src="../tpl/static/hotels/js/backbone-min.js"></script>
<script src="../tpl/static/hotels/js/jquery.hammer.min.js"></script>
<script src="../tpl/static/hotels/js/common.js"></script>
<script src="../tpl/static/hotels/js/hotel.js"></script>
<link rel="stylesheet" type="text/css" href="../tpl/static/hotels/css/common.css" media="all" />
</head>
<body>
	<div class="html">
		<div class="main">
			<header>
				<a href="<?php echo U('Hotels/index',array('token' => $_GET['token'], 'wecha_id' => $wecha_id));?>" class="ico-hd arr-hd"></a>
				<h1>在线预订客房</h1>
				<a href="<?php echo U('Hotels/my',array('token' => $_GET['token'], 'wecha_id' => $wecha_id));?>" class="ico-hd ico-order">我的订单</a>
			</header>
<div class="contxt cont-index">
	<div class="box-cont box-half index-time">
		<div class="hd">
			<span class="ico ico-date">入住时间</span>
			<p class="table">
				<select id="select-s" name="hotel_room_order[check_in_date]">
				<?php if(is_array($dates)): $i = 0; $__LIST__ = $dates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$d): $mod = ($i % 2 );++$i; if($i == 1): ?><option value="<?php echo ($d['k']); ?>" selected><?php echo ($d['v']); ?></option>
					<?php else: ?>
					<option value="<?php echo ($d['k']); ?>"><?php echo ($d['v']); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
				</select>
				<span class="td"><b id="time-s"><?php echo ($dates[0]['v']); ?></b></span>
				<span class="arrow arr-big"></span>
			</p>
		</div>
		<div class="bd">
			<span class="ico ico-date">离店时间</span>
			<p class="table">
				<select class="" id="select-e" name="hotel_room_order[check_in_date]">
				<?php if(is_array($dates)): $i = 0; $__LIST__ = $dates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$d): $mod = ($i % 2 );++$i; if($i == 2): ?><option value="<?php echo ($d['k']); ?>" selected><?php echo ($d['v']); ?></option>
					<?php else: ?>
					<option value="<?php echo ($d['k']); ?>"><?php echo ($d['v']); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
				</select>
				<span class="td"><b id="time-e"><?php echo ($dates[1]['v']); ?></b></span>
				<span class="arrow arr-big"></span>
			</p>
		</div>
	</div>
	<br><br><br>
	<div class="tcenter"><a class="btn btn-big to_book" onclick="javascript:toBook();">开始预订</a></div>
</div>
<script>
function toBook(){
	var check_in_date = $('#select-s').val(), check_out_date = $('#select-e').val();
	if(check_in_date >= check_out_date){
		alert('离店时间必须大于入住时间!');
	}else{
		window.location.href = "<?php echo U('Hotels/hotel',array('token' => $_GET['token'], 'wecha_id' => $wecha_id));?>&check_in_date="+check_in_date+"&check_out_date="+check_out_date;
	}
}

</script>
		</div>
	</div>
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Hotels",
            "moduleID":"<?php echo ($company[0]['id']); ?>",
            "imgUrl": "<?php echo ($company[0]['logourl']); ?>", 
            "timeLineLink": "<?php echo C('site_url') . U('Hotels/index',array('token' => $_GET['token']));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Hotels/index',array('token' => $_GET['token']));?>",
            "weiboLink": "<?php echo C('site_url') . U('Hotels/index',array('token' => $_GET['token']));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>