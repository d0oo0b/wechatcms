<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($thisForm["title"]); ?></title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/css/style/css/hotels.css" rel="stylesheet" type="text/css">
<script src="<?php echo RES;?>/css/style/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo $staticFilePath;?>/js/main.js"></script>

</head>

<body id="wrap">
<style>
.deploy_ctype_tip{z-index:1001;width:100%;text-align:center;position:fixed;top:50%;margin-top:-23px;left:0;}.deploy_ctype_tip p{display:inline-block;padding:13px 24px;border:solid #d6d482 1px;background:#f5f4c5;font-size:16px;color:#8f772f;line-height:18px;border-radius:3px;}


.content {
    background-color: rgba(255, 255, 255, 0.9);
    border: 1px solid #C6C6C6;
    border-radius: 5px;
    box-shadow: 0 1px 1px #F6F6F6;
    display: block;
    font-size: 14px;
    line-height: 24px;
    text-align: left;
    padding:0 10px;
}
.content h2{font-weight: bold;text-align: center;height: 30px;line-height: 30px;font-size:16px;}
.content .text img{max-width: 99%;}
</style>
<div class="banner">
<div id="wrapper">
<div id="scroller">
<ul id="thelist">
               
<li><p><?php echo ($thisForm["title"]); ?></p>

<?php if($thisForm['top_pic'] != ''): ?><a href="<?php echo U('Custom/detail',array('token'=>$token,'id'=>$thisForm['id'],'wecha_id'=>$wecha_id));?>">
<img src="<?php echo ($thisForm["top_pic"]); ?>" alt="<?php echo ($thisForm["title"]); ?>" style="width:100%"/></a><?php endif; ?>

</li>
 

</ul>
</div>
</div>

<div class="clr"></div>
</div>


<div class="cardexplain">

<!--intro-->
<ul class="round">
<li>
	<a href="<?php echo U('Custom/index',array('token'=>$token,'id'=>$thisForm['set_id'],'wecha_id'=>$wecha_id));?>"><span style="color:#666">返回</span></a>
</li>
</ul>
<div class="content">
	
<h2>详细介绍</h2>
<div class="text">
<?php echo (htmlspecialchars_decode($thisForm['detail'])); ?>
</div>

</div>

</div>

<script type="text/javascript">
window.shareData = {  
            "moduleName":"Custom",
            "moduleID":"<?php echo ($thisForm["set_id"]); ?>",
            "imgUrl": "<?php echo ($thisForm["logourl"]); ?>", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Custom/detail',array('token'=>$token,'id'=>$thisForm['set_id']));?>",
            "tTitle": "<?php echo ($thisForm["title"]); ?>",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>