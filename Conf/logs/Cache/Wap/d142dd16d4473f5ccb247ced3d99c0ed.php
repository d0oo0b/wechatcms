<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<title><?php echo ($set['title']); ?>|在线订购</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/css/style/css/hotels.css" rel="stylesheet" type="text/css">
</head>

<body id="" >
<div class="qiandaobanner"> 
  <?php if($set['ppicurl'] != false): ?><img src="<?php echo ($set['ppicurl']); ?>"  />  
  <?php else: ?>
    <img src="<?php echo RES;?>/css/style/images/default.jpg"  /><?php endif; ?>
 </div>
<div class="cardexplain"> 

  <!--普通用户登录时显示-->
     

<!--商家房价及类型-->
<ul class="round">
<li class="title"><span class="none"><?php echo ($set['title']); ?></span></li>
            
 <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="dandanb"> <!--订房-->
<a href="index.php?g=Wap&m=Host&a=lists&token=<?php echo ($vo["token"]); ?>&id=<?php echo ($vo["id"]); ?>&wecha_id=<?php echo ($_GET['wecha_id']); ?>&hid=<?php echo ($set['id']); ?>"><span>
<table class="jiagebiao" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><div><?php echo ($vo["type"]); ?></div>
<div><img src="<?php echo ($vo["picurl"]); ?>" class="showimg">
<p><?php echo ($vo["typeinfo"]); ?></p>
<p>原价：<a class="yuanjia">￥<?php echo ($vo["price"]); ?></a></p>
<p>优惠价：<a class="youhuijia">￥<?php echo ($vo["yhprice"]); ?></a></p></td>
</tr>
</table>
</span></a>
</li><?php endforeach; endif; else: echo "" ;endif; ?>  
</ul>

<!--后台可控制是否显示-->
<ul class="round">
<li class="title"><span class="none">订单说明</span></li>
<li>
<div class="text">
<?php echo ($set['info2']); ?>
</div>
</li>
</ul>

<!--后台可控制是否显示-->
<ul class="round">
<li class="addr"><a href="?g=Wap&m=Company&a=map&token=<?php echo ($_GET['token']); ?>&wecha_id=<?php echo ($_GET['wecha_id']); ?>"><span><?php echo ($set['address']); ?></span></a></li>
<li class="tel"><a href="tel://<?php echo ($set['tel2']); ?>"><span><?php echo ($set['tel2']); ?> 电话预订</span></a></li>
<?php if($set['tel'] != false): ?><li class="tel"><a href="tel://<?php echo ($set['tel']); ?>"><span><?php echo ($set['tel']); ?> 电话预订</span></a></li><?php endif; ?>
<li class="detail"><a href="index.php?g=Wap&m=Host&a=companyDetail&token=<?php echo ($_GET['token']); ?>&wecha_id=<?php echo ($_GET['wecha_id']); ?>&hid=<?php echo ($_GET['hid']); ?>"><span>查看商家详情</span></a></li>
</ul>
</div>


<script type="text/javascript">
window.shareData = {  
            "moduleName":"Host",
            "moduleID":"0",
            "imgUrl": "", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Host/index',array('token'=>$token));?>",
            "tTitle": "<?php echo ($set['title']); ?>",
            "tContent": "<?php echo ($set['title']); ?>"
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>