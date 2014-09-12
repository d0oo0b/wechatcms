<?php if (!defined('THINK_PATH')) exit();?>﻿<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta name="format-detection" content="telephone=no">
    <meta content="telephone=no" name="format-detection">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title><?php echo ($tpl["wxname"]); ?></title>
    <link type="text/css" rel="stylesheet" href="./tpl/static/tpl/com/css/comstyle.css"/>
    <link type="text/css" rel="stylesheet" href="./tpl/static/tpl/com/css/font-awesome.css"/>
    <link href="./tpl/static/tpl/1117/css/index36.css" media="screen" rel="stylesheet" type="text/css" />
    <script src="./tpl/static/tpl/com/js/comjs.js" type="text/javascript"></script>
    <meta content="authenticity_token" name="csrf-param" />
	<style>
		html,body {
			height:90%;
		}
	</style>
  </head>

  <body>

    <div class="html">
      <div class="stage" id="stage">
        <section id="sec-index">
          
          <div class="body">
            

  <div class="mod-slider slider-ver" id="index">
    <ul class="slider-list">
	<?php if(is_array($flashbg)): $i = 0; $__LIST__ = $flashbg;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li>
			<img alt="" src="<?php echo ($so["img"]); ?>">
		</li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
    </div>
		
          </div>
        </section>

        
    <section class="mod-navLine navLine14">
      <div class="navLine-menu" id="navLine-menu">
        <ul class="p1">
          <li class="s1"><a>菜单</a>
            <ul class="p2">
				<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,0,6,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="s2">

                    <a><span><?php echo ($vo["name"]); ?></span></a>
                    <ul class="p3 a3">
						<?php if(is_array($vo['sub'])): $i = 0; $__LIST__ = array_slice($vo['sub'],0,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$res): $mod = ($i % 2 );++$i;?><li>
								  <a href="<?php if($res['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$res['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($res["url"])); endif; ?>"><?php echo ($res["name"]); ?></a>

							</li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>

            </ul>
          </li>
        </ul>
      </div>
    </section>


      </div><!--.stage end-->
	  
    </div><!--.html end-->
    <footer style="z-index:100;">
       
 <?php if($iscopyright == 1): echo ($homeInfo["copyright"]); ?>
<?php else: ?>
<?php echo ($siteCopyright); endif; ?>

    </footer>
    <script type="text/javascript">
      $(document).ready(function(){

                indexSwipe("index", ["", "", ""]);      
  navLineSwipe=divSwipe("navLine-menu");


        showBtnUp(100);

      });
	  
    </script>
 <div id="insert2"></div>


 <div style="display:none"> </div>


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
</html>