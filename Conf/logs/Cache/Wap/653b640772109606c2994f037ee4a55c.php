<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($thisMarket["title"]); ?></title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/card/js/accordian.pack.js" type="text/javascript"></script>
<style>
	.accordion_child{padding:10px;height:130px;}
	.accordion_child  ul li{height:25px;line-height: 25px; font-size: 14px;}
</style>
</head>

<body id="cardnews" onLoad="new Accordian(&#39;basic-accordian&#39;,5,&#39;header_highlight&#39;);" class="mode_webapp">
<div id="basic-accordian">
<ul class="round">
	<li class="">
		<span>		
			<a href="<?php echo U('Market/index',array('token'=>$token,wecha_id=>$wecha_id,'id'=>$thisMarket['market_id']));?>" style="float:right;color:#666666;">
				返回
			</a>
			停车区域
		</span>
	</li>
</ul>

<?php if(is_array($park_list)): $key = 0; $__LIST__ = $park_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($key % 2 );++$key;?><div id="test<?php echo ($item["park_id"]); ?>-header" class="accordion_headings  <?php if($key == 1): ?>header_highlight<?php endif; ?>">
<div class="tab">
<span class="title">
	<?php echo ($item["park_name"]); ?>
	<p></p>
</span>
</div>
<div id="test<?php echo ($item["park_id"]); ?>-content">
	<div class="accordion_child">
		<div id="queren<?php echo ($item["park_id"]); ?>">
			<ul>
				<li>
					使用情况：
					<?php if($item['is_use'] == '1'): ?>使用中
					<?php else: ?>
						已停用<?php endif; ?>
				</li>
				<li>车位数量：<?php echo ($item["park_num"]); ?></li>

				<li>	
					区域介绍：
				</li>
				<li style="background-image:none;border:1px solid #f8f8f8;background:#f8f8f8;height:55px;">
					<?php echo (htmlspecialchars_decode($item["park_intro"])); ?>
				</li>
			</ul>
		</div> 
	</div>
</div>
</div><?php endforeach; endif; else: echo "" ;endif; ?>

</div>
</body>

</html>