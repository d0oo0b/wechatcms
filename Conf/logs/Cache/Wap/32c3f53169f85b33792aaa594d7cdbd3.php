<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/template/snower.css" media="all" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/template/common.css" media="all" />
<link rel="stylesheet" type="text/css" href="../../wm-xin-a/font-awesome.css?v=2013121900" media="all" />
	<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/template/reset.css" media="all" />
	<title><?php echo ($tpl["wxname"]); ?></title>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/template/home-17.css" media="all" />
<script type="text/javascript" src="<?php echo RES;?>/src/template/maivl.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/src/jQuery.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/src/template/swipe.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/src/template/zepto.js"></script>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
       
        <!-- Mobile Devices Support @begin -->
            <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
            <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
            <meta content="no-cache" http-equiv="pragma">
            <meta content="0" http-equiv="expires">
            <meta content="telephone=no, address=no" name="format-detection">
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
            <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <!-- Mobile Devices Support @end -->
        <link rel="shortcut icon" href="<?php echo RES;?>/img/favicon.ico" />
    </head>
<body onselectstart="return true;" ondragstart="return false;">
        
<div class="body" style="padding-bottom:52px;">					<!--
	幻灯片管理
	-->	<div style="-webkit-transform:translate3d(0,0,0);">
		<div id="banner_box" class="box_swipe">
			<ul>
			<?php if(is_array($flash)): $i = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li>
													<a href="<?php echo ($so["url"]); ?>">
																	<img src="<?php echo ($so["img"]); ?>" alt="<?php echo ($so["info"]); ?>" style="width:100%;" />
								</a>
					</li><?php endforeach; endif; else: echo "" ;endif; ?>
							</ul>
			<ol>
									<?php if(is_array($flash)): $i = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li   <?php if($i == 1): ?>class="active"<?php endif; ?>  ></li><?php endforeach; endif; else: echo "" ;endif; ?>
							</ol>
		</div>
	</div>
		<script>
		$(function(){
			new Swipe(document.getElementById('banner_box'), {
				speed:500,
				auto:3000,
				callback: function(){
					var lis = $(this.element).next("ol").children();
					lis.removeClass("on").eq(this.index).addClass("on");
				}
			});
		});
	</script>
	<header>
        <div class="snower">
            <script type="text/javascript"></script>
            <script type="text/javascript" src="<?php echo RES;?>/src/template/snower.js"></script>
        </div>
    </header>             <section>			
						<a href="tel:<?php echo ($homeInfo["dianhua"]); ?>" class="link_tel icon-phone"><?php if($homeInfo["dianhua"] != false): echo ($homeInfo["dianhua"]); else: ?>没有留电话<?php endif; ?></a>
							</section>
        			
		<section>
            <ul class="list_font">
            <?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li style="background-color:<?php echo ($vo["yanse"]); ?>;">
													<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						                            <div><span class="<?php echo ($vo["icon"]); ?>"></span></div>
                            <div>
                                <p style="color:<?php echo ($vo["nameyanse"]); ?>"><?php echo ($vo["name"]); ?></p>
                            </div>
                        </a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
					                            </ul>
        </section>
	

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
	<?php if(ACTION_NAME == 'index'): ?><script type="text/javascript">
			window.shareData = {  
					"moduleName":"Index",
					"moduleID": '0',
					"imgUrl": "<?php echo ($homeInfo["picurl"]); ?>", 
					"timeLineLink": "<?php echo C('site_url'); echo U(Index/ACTION_NAME,array('token'=>$_GET['token']));?>",
					"sendFriendLink": "<?php echo C('site_url'); echo U(Index/ACTION_NAME,array('token'=>$_GET['token']));?>",
					"weiboLink": "<?php echo C('site_url'); echo U(Index/ACTION_NAME,array('token'=>$_GET['token']));?>",
					"tTitle": "<?php echo ($homeInfo["title"]); ?>",
					"tContent": "<?php echo ($homeInfo["info"]); ?>"
				};
		</script>
	<?php else: ?>
		<script type="text/javascript">
			window.shareData = {  
				"moduleName":"Index",
				"moduleID": '1',
				"imgUrl": "<?php echo ($homeInfo["picurl"]); ?>", 
				"timeLineLink": "<?php echo C('site_url'); echo U(Index/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid']));?>",
				"sendFriendLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid']));?>",
				"weiboLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid']));?>",
				"tTitle": "<?php echo ($homeInfo["title"]); ?>",
				"tContent": "<?php echo ($homeInfo["info"]); ?>"
			};
		</script><?php endif; ?>
<?php echo ($shareScript); ?>
</body>

<script type="text/javascript">
window.onload = function(){
	$(".wz08menu img").each(function(){
		$(this).height($(this).width());
	  });
};
</script>
</html>