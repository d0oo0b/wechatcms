<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html xmlns="http://www.w3.org/1999/html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
    <meta content="telephone=no" name="format-detection">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title><?php echo ($res["title"]); ?>-<?php echo ($tpl["wxname"]); ?></title>

    <link type="text/css" rel="stylesheet" href="./tpl/static/tpl/cont/com/css/comstyle.css"/>
    <link type="text/css" rel="stylesheet" href="./tpl/static/tpl/cont/com/css/font-awesome.css"/>
   <link href="./tpl/static/tpl/cont/3/css/article4.css" media="screen" rel="stylesheet" type="text/css" />

    <script src="./tpl/static/tpl/cont/com/js/comjs.js" type="text/javascript"></script>
  </head>

  <body>
    

    <div class="html">
      <div class="stage" id="stage">
        <section id="sec-index">
          
          <div class="body">
            


<div class="article ckeditor_content" id="article">

  <div class="hd">
    <h1><?php echo ($res["title"]); ?></h1>
    <small><?php echo (date("Y-m-d",$res["createtime"])); ?>
</small>
  </div>

  <div class="bd">
<?php if(($res["showpic"]) == "1"): ?><div class="showpic"><img src="<?php echo ($res["pic"]); ?>" /></div><?php endif; ?>
    
<div class="text" id="content">
<?php echo (htmlspecialchars_decode($res["info"])); ?>
</div>
  </div>


</div>

<script>
$(function(){
  $(".ckeditor_content img").css({"height":"auto","width":"auto","max-width":"100%"});
});
</script>

          </div>
        </section>


            <section class="mod-share share-1">
        <a class="share-btn" onclick="showPop('#pop-share')"><span class="ico-share">发送给朋友</span></a>
        <a class="share-btn" onclick="showPop('#pop-share')"><span class="ico-pyq">分享到朋友圈</span></a>
    </section>

      </div><!--.stage end-->
    </div><!--.html end-->


    <div class="mod-pop" id="pop-share" onclick="hidePop('#pop-share')"><span class="text-share"></span></div>
 <div style="display:none"><?php echo (htmlspecialchars_decode($res["tongji"])); ?></div>

  <div class="copyright">
<?php if($iscopyright == 1): echo ($homeInfo["copyright"]); ?>
<?php else: ?>
<?php echo ($siteCopyright); endif; ?>
</div> 
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<?php if($radiogroup > 8): ?><br>
<br><?php endif; ?>
<script>
function displayit(n){
	for(i=0;i<4;i++){
		if(i==n){
			var id='menu_list'+n;
			if(document.getElementById(id).style.display=='none'){
				document.getElementById(id).style.display='';
				document.getElementById("plug-wrap").style.display='';
			}else{
				document.getElementById(id).style.display='none';
				document.getElementById("plug-wrap").style.display='none';
			}
		}else{
			if($('#menu_list'+i)){
				$('#menu_list'+i).css('display','none');
			}
		}
	}
}
function closeall(){
	var count = document.getElementById("top_menu").getElementsByTagName("ul").length;
	for(i=0;i<count;i++){
		document.getElementById("top_menu").getElementsByTagName("ul").item(i).style.display='none';
	}
	document.getElementById("plug-wrap").style.display='none';
}

document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
	WeixinJSBridge.call('hideToolbar');
});
</script> 

<!-- share -->

		<script type="text/javascript">

			window.shareData = {  
				"moduleName":"Index",
				"moduleID": '3',
				"imgUrl": "<?php echo ($res["pic"]); ?>", 
				"timeLineLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid'],'id'=>intval($_GET['id'])));?>",
				"sendFriendLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid'],'id'=>intval($_GET['id'])));?>",
				"weiboLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid'],'id'=>intval($_GET['id'])));?>",
				"tTitle": "<?php echo ($res["title"]); ?>-<?php echo ($tpl["wxname"]); ?>",
				"tContent": "<?php echo (str_replace('"','',str_replace("\r\n",' ',mb_substr(trim(strip_tags(htmlspecialchars_decode($res["text"]))),0,30,'utf-8')))); ?>"
			};
		</script>	

<?php echo ($shareScript); ?>
  </body>
</html>