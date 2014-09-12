<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($thisCard["cardname"]); ?>说明</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/card/js/accordian.pack.js" type="text/javascript"></script>
</head>

<body id="cardnews" onLoad="new Accordian(&#39;basic-accordian&#39;,5,&#39;header_highlight&#39;);" class="mode_webapp">

<div class="qiandaobanner">  <a   href="javascript:history.go(-1);"><img src="<?php echo ($thisCard["membermsg"]); ?>" > </a></div>

<div id="basic-accordian">
<div id="test-header" class="accordion_headings header_highlight">
<div class="tab cardinfo">
<span class="title">会员卡使用说明</span>
</div>
<div id="test-content" style="display: block; overflow: hidden; opacity: 1;">
<div class="accordion_child">
<?php echo html_entity_decode($data['cardinfo']);?>
</div>
</div>
</div>
<div id="test1-header" class="accordion_headings">
<div class="tab integral_info">
<span class="title">会员积分说明</span>
</div>
<div id="test1-content" style="display: none; overflow: hidden;">
<div class="accordion_child">
<?php echo html_entity_decode($data['cardinfo2']);?>
</div>
</div>
</div>
<div id="test2-header" class="accordion_headings">
<div class="tab businesses_info">
<span class="title">商家介绍</span>
</div>
<div id="test2-content" style="display: none; overflow: hidden;">
<div class="accordion_child">
<p class="xiangqing"><?php echo html_entity_decode($thisCompany['intro']);?></p>
</div>
</div>
</div>
</div>
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