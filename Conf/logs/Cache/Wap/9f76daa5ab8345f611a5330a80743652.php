<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($thisCard["cardname"]); ?>积分兑换</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/card/js/accordian.pack.js" type="text/javascript"></script>
</head>
<body id="cardnews" onLoad="new Accordian(&#39;basic-accordian&#39;,5,&#39;header_highlight&#39;);" class="mode_webapp">
<div class="qiandaobanner"><a href="javascript:history.go(-1);"><img src="<?php echo ($thisCard["vip"]); ?>" ></a> </div>

<div id="basic-accordian">
<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><div id="test<?php echo ($item["id"]); ?>-header" class="accordion_headings  <?php if ($item['id']==$firstItemID){?>header_highlight<?php } ?>">
<div class="tab gift">
<span class="title"><?php echo ($item["title"]); ?><p>有效期至<?php echo (date('Y年m月d日',$item["enddate"])); ?></p></span>
</div>
<div id="test<?php echo ($item["id"]); ?>-content" style=" display: block; overflow: hidden; opacity: 1;">
<div class="accordion_child">
<div id="queren<?php echo ($item["id"]); ?>" style="display:none;">
								<p style=" margin:10px 0 0 0">
									<input name="" class="px" id="username<?php echo ($item["id"]); ?>" value="" type="text" placeholder="请输入商家用户名">
								</p>
								<p style=" margin:10px 0 0 0">
									<input name="" class="px" id="password<?php echo ($item["id"]); ?>" value="" type="password" placeholder="请输入商家密码">
								</p>
								
								<p style=" margin:10px 0">
									<a id="showcard0" class="submit" href="javascript:void(0)" onclick="use(<?php echo ($item["id"]); ?>)">确定兑换</a>
								</p>
							</div>
							<p class="explain_sn" id="shiyong<?php echo ($item["id"]); ?>" style="width: 70%;margin: 0px auto;color: #fff;">
			           			<a style="height: 25px;line-height: 25px;" class="submit" href="###" onclick="this.style.display='none';document.getElementById('queren<?php echo ($item["id"]); ?>').style.display=''">点击立即兑换</a>
			           		</p>
<b>详情说明</b>
<ul style="min-height:110px;"><?php echo ($item["info"]); ?></ul>
</div> 
</div>
</div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<script>
var jQ = jQuery.noConflict();
function use(i){
	var password =  document.getElementById('password'+i).value;
	if(!password){
		alert('请输入密码');
		return false;
	}
	var username =  document.getElementById('username'+i).value;
	var itemid=i;
	var submitData = {
		password:password,
		username:username,
		itemid:itemid,
		wecha_id:'<?php echo ($wecha_id); ?>',
		cat:2,
	};
	jQ.post('/index.php?g=Wap&m=Card&a=action_useIntergral&wecha_id=<?php echo ($wecha_id); ?>&token=<?php echo ($token); ?>', submitData,
	function(data) {
		if (data.success == 1) {
			document.getElementById('queren'+i).style.display='none';
			document.getElementById('password'+i).value = '';
			alert(data.msg);
		}else{
			alert(data.msg);
		}
	}, "json");
}
</script>
<div style="height:40px;"></div>
<div class="footermenu">
    <ul>
    	<li>
            <a <?php if($infoType=='memberCardHome'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=index&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>">
           <img src="<?php echo RES;?>/card/images/home.png">
            <p>会员卡</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='card'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=card&token=<?php echo ($token); ?>&cardid=<?php echo ($thisCard["id"]); ?>&wecha_id=<?php echo ($wecha_id); ?>">
           <img src="<?php echo RES;?>/card/images/c.png">
            <p>此卡首页</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='privelege'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=previlege&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($thisCard["id"]); ?>">
           <img src="<?php echo RES;?>/card/images/prev.png">
            <p>特权</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='coupon'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=coupon&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($thisCard["id"]); ?>">
           <img src="<?php echo RES;?>/card/images/coupon.png">
            <p>优惠券</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='integral'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=integral&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($thisCard["id"]); ?>">
           <img src="<?php echo RES;?>/card/images/intergral.png">
            <p>兑换</p>
            </a>
        </li>
      
    </ul>
</div>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Card",
            "moduleID":"0",
            "imgUrl": "", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Card/index',array('token'=>$token));?>",
            "tTitle": "会员卡",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>