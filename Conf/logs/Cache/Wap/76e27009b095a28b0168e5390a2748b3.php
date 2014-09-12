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
<script src="<?php echo RES;?>/js/date/WdatePicker.js"></script>

</head>

<body id="wrap">
<style>
.round li.address {
    background: url("<?php echo RES;?>/card/images/addr.png") no-repeat scroll 11px center / 22px 22px rgba(0, 0, 0, 0);
    line-height: 22px;
    padding-left: 40px;
}
.deploy_ctype_tip{z-index:1001;width:100%;text-align:center;position:fixed;top:50%;margin-top:-23px;left:0;}.deploy_ctype_tip p{display:inline-block;padding:13px 24px;border:solid #d6d482 1px;background:#f5f4c5;font-size:16px;color:#8f772f;line-height:18px;border-radius:3px;}
textarea{
    border: 1px solid #E8E8E8;
}
</style>
<div class="banner">
<div id="wrapper">
<div id="scroller" style="float:none">
<ul id="thelist">
               
<li style="float:none"><p><?php echo ($thisForm["title"]); ?></p>

<?php if($thisForm["top_pic"] != ''): ?><a href="<?php echo U('Custom/detail',array('token'=>$token,'id'=>$thisForm['set_id']));?>">
	<img src="<?php echo ($thisForm["top_pic"]); ?>" alt="<?php echo ($thisForm["title"]); ?>" style="width:100%"/></a><?php endif; ?>

</li>
</ul>
</div>
</div>
<div class="clr"></div>
</div>
<div class="cardexplain">
<?php if($_GET['success'] == 1): ?><ul class="round roundyellow" id="success">
<li style="height:40px;line-height:40px; font-size:16px; text-align:center"><?php echo ($thisForm["successtip"]); ?></li>
</ul>
<script type="text/javascript">
$(function() {
	$('#success').show().delay(1600).slideUp(1600);
	return;
});
</script><?php endif; ?>

<ul class="round">

<li class="tel">
<a href="tel:<?php echo ($thisForm["tel"]); ?>">
<span><?php echo ($thisForm["tel"]); ?></span>
</a>
</li>
<li class="address">
<a href="<?php echo U('Custom/maps',array('token'=>$token,'id'=>$thisForm['set_id'],'id'=>$thisForm['set_id']));?>">
<span><?php echo ($thisForm["address"]); ?></span>
</a>
</li>
<li class="detail">
<a href="<?php echo U('Custom/detail',array('token'=>$token,'id'=>$thisForm['set_id'],'id'=>$thisForm['set_id']));?>">
<span>查看详情</span>
</a>
</li>

</ul>
<?php if(($spoor != 0) and ($wecha_id != 'null')): ?><ul>
	<li class="nob">
		<a href="<?php echo U('Custom/spoor',array('token'=>$token,'id'=>$thisForm['set_id'],'wecha_id'=>$wecha_id,'id'=>$thisForm['set_id']));?>">
			<div class="beizhu">查看提交记录(<?php echo ($spoor); ?>)</div>
		</a>
	</li>
</ul><?php endif; ?>
<?php if($submitted != 1): ?><form method="post" action="" id="form" onSubmit="return tgSubmit()">   
<ul class="round">
<li class="title mb"><span class="none">请填写以下信息</span></li>
<li class="nob">
<?php echo ($formData); ?>
</li>                                                  
</ul>
<div class="footReturn" style="text-align:center">
<?php if($submitted != 1): ?><input type="submit" style="margin:0 auto 20px auto;width:90%"  class="submit" value="提交信息" /><?php endif; ?>
</div>
</form>
<?php else: endif; ?>
<script>

function showTip(tipTxt) {
	var div = document.createElement('div');
	div.innerHTML = '<div class="deploy_ctype_tip"><p>' + tipTxt + '</p></div>';
	var tipNode = div.firstChild;
	$("#wrap").after(tipNode);
	setTimeout(function () {
		$(tipNode).remove();
	}, 1500);
}
function tgSubmit(){
 	<?php if(is_array($verify)): $i = 0; $__LIST__ = $verify;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i; if($item['type'] == 'checkbox'): ?>var ck =  $("#<?php echo ($item['id']); ?>:checked").length; 
 			 	<?php if($item['is_empty'] == 1): ?>if(ck == 0){
						showTip("<?php echo ($item['name']); ?>不能为空")
						return false;
					}<?php endif; ?>			
 		<?php elseif($item['type'] == 'radio'): ?>
 			/*
 			<?php if($item['is_empty'] == 1): ?>if($("#<?php echo ($item['id']); ?>:checked").val() == undif){
						showTip("<?php echo ($item['name']); ?>不能为空")
						return false;
					}<?php endif; ?>
			*/
 		<?php elseif($item['type'] == 'textarea'): ?>	
 			<?php if($item['is_empty'] == 1): ?>if($.trim($("#<?php echo ($item['id']); ?>").val()) == ""){
						showTip("<?php echo ($item['name']); ?>不能为空")
						return false;
					}<?php endif; ?>
 		<?php else: ?>
 			var values = $("#<?php echo ($item['id']); ?>").val();	
 				<?php if($item['is_empty'] == 1): ?>if($.trim(values) == ""){
						showTip("<?php echo ($item['name']); ?>不能为空")
						return false;
					}<?php endif; ?>
				<?php if($item['match'] != ''): ?>var regu = "<?php echo ($item['match']); ?>"; 
					var re = new RegExp(regu); 
					if (!re.test($.trim(values))) {
						showTip("<?php echo ($item['err_info']); ?>")
						return false;
					}<?php endif; endif; endforeach; endif; else: echo "" ;endif; ?>
}
	</script>
</div>

<script type="text/javascript">
window.shareData = {  
            "moduleName":"Custom",
            "moduleID":"<?php echo ($thisForm["set_id"]); ?>",
            "imgUrl": "<?php echo ($thisForm["top_pic"]); ?>", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Custom/index',array('token'=>$token,'id'=>$thisForm['set_id']));?>",
            "tTitle": "<?php echo ($thisForm["title"]); ?>",
            "tContent": "<?php echo ($thisForm["intro"]); ?>"
        };
</script>
</body>
<?php echo ($shareScript); ?>
</html>