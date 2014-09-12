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

    <title><?php echo ($tpl["wxname"]); ?></title>

    <link type="text/css" rel="stylesheet" href="./tpl/static/tpl/com/css/comstyle.css"/>
    <link type="text/css" rel="stylesheet" href="./tpl/static/tpl/com/css/font-awesome.css"/>
    <link href="./tpl/static/tpl/1119/css/list10.css" media="screen" rel="stylesheet" type="text/css" />

    <script src="./tpl/static/tpl/com/js/comjs.js" type="text/javascript"></script>

  </head>

  <body>	
    <div class="html">
      <div class="stage" id="stage">
        <section id="sec-index">
          
          <div class="body">

  <div class="list">
    <ul>
		<?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
			  <a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
				<div class="list-img">
				  <b>
					  <img src="<?php echo ($vo["img"]); ?>" />
				  </b>
				</div>

				<div class="list-text">
				  <h1><?php echo ($vo["name"]); ?></h1>
				  <h2><?php echo ($vo["info"]); ?></h2>
				</div>
				</a>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
  </div>

          </div>
        </section>


      </div><!--.stage end-->
    </div><!--.html end-->

<div class="copyright">
<?php if($iscopyright == 1): echo ($homeInfo["copyright"]); ?>
<?php else: ?>
<?php echo ($siteCopyright); endif; ?>
</div>  <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
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
</script> <style type="text/css">
body{ margin-bottom:60px !important;}
a,button,input{-webkit-tap-highlight-color:rgba(255,0,0,0);}
ul,li{ list-style:none; margin:0;padding:0}
#plug-wrap {
    position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background: rgba(0, 0, 0, 0);
    z-index:800;
}
.top_bar {
    position:fixed;
    bottom:0;
    left:0px;
    z-index:900;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    font-family: Helvetica, Tahoma, Arial, Microsoft YaHei, sans-serif;
}
.plug-menu {
    -webkit-appearance:button;
    display:inline-block;
    width:36px;
    height:36px;
    border-radius:36px;
    position: absolute;
    bottom:17px;
    left: 17px;
    z-index:999;
    box-shadow: 0 0 0 4px #FFFFFF, 0 2px 5px 4px rgba(0, 0, 0, 0.25);
    background-color: #B70000;
    -webkit-transition: -webkit-transform 200ms;
    -webkit-transform:rotate(1deg);
    color:#fff;
    background-image:url('tpl/Wap/default/common/images/plug.png');
    background-repeat: no-repeat;
    -webkit-background-size: 80% auto;
    background-size: 80% auto;
    background-position: center center;
}
.plug-menu:before {
    font-size:20px;
    margin:9px 0 0 9px;
}
.plug-menu:checked {
    -webkit-transform:rotate(135deg);
}
.top_menu>li {
    width: 32px;
    height:32px;
    border-radius:32px;
    box-shadow: 0 0 0 3px #FFFFFF, 0 2px 5px 3px rgba(0, 0, 0, 0.25);
    background:#B70000;
    position:absolute;
    bottom:0;
    left:0;
    margin-bottom: 20px;
    margin-left: 20px;
    z-index:900;
    -webkit-transition: -webkit-transform 200ms;
}
.top_menu>li a {
    color:#fff;
    font-size:20px;
    display: block;
    height: 100%;
    line-height: 33px;
    text-align: center;
}
.top_menu>li>a label{
display:none;
}
.top_menu>li a img {
display: block;
width: 22px;
height: 22px;
text-indent: -999px;
position: absolute;
top: 50%;
left: 50%;
margin-top: -11px;
margin-left: -11px;
}
.top_menu>li.on:nth-of-type(1) {
-webkit-transform: translate(0, -100px) rotate(720deg);
}
.top_menu>li.on:nth-of-type(2) {
-webkit-transform: translate(47px, -81px) rotate(720deg);
}
.top_menu>li.on:nth-of-type(3) {
-webkit-transform: translate(81px, -45px) rotate(720deg);
}
.top_menu>li.on:nth-of-type(4) {
-webkit-transform: translate(100px, 0) rotate(720deg);
}
 
#sharemcover {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background: rgba(0, 0, 0, 0.7);
display: none;
z-index: 20000;
}
#sharemcover img {
position: fixed;
right: 18px;
top: 5px;
width: 260px;
height: 180px;
z-index: 20001;
border:0;
}
</style>

<div class="top_bar" style="-webkit-transform:translate3d(0,0,0)">
<nav>
    <ul id="top_menu" class="top_menu">
      <input type="checkbox" id="plug-btn" class="plug-menu themeStyle" style="background-color:<?php echo ($homeInfo["plugmenucolor"]); ?>;background-image:url('tpl/Wap/default/common/images/plug.png');border:0px;">
        <?php if(is_array($catemenu)): $i = 0; $__LIST__ = $catemenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="themeStyle out" style="background:<?php echo ($homeInfo["plugmenucolor"]); ?>"> <a href="<?php echo ($vo["url"]); ?>"><img src="<?php echo ($vo["picurl"]); ?>"><label><?php echo ($vo["name"]); ?></label></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
          
</ul>
  </nav>
</div>

<div id="plug-wrap" style="display: none;" ></div>
<script>
$(function(){
        $(".plug-menu").click(function(){
        var li = $(this).parents('ul').find('li');
        if(li.attr("class") == "themeStyle on"){
                li.removeClass("themeStyle on");
                li.addClass("themeStyle out");
        }else{
                li.removeClass("themeStyle out");
                li.addClass("themeStyle on");
        }
        });
});
</script> 
<!-- share -->

	<?php if(ACTION_NAME == 'index'): ?><script type="text/javascript">
			window.shareData = {  
					"moduleName":"Index",
					"moduleID": "0",
					"imgUrl": "<?php echo ($homeInfo["picurl"]); ?>", 
					"timeLineLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token']));?>",
					"sendFriendLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token']));?>",
					"weiboLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token']));?>",
					"tTitle": "<?php echo ($homeInfo["title"]); ?>",
					"tContent": "<?php echo ($homeInfo["info"]); ?>"
				};
		</script>
	<?php else: ?>
		<script type="text/javascript">
			window.shareData = {  
				"moduleName":"NewsList",
				"moduleID": "<?php echo (intval($_GET['classid'])); ?>",
				"imgUrl": "<?php echo ($thisClassInfo["img"]); ?>", 
				"timeLineLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid']));?>",
				"sendFriendLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid']));?>",
				"weiboLink": "<?php echo C('site_url'); echo U(MODULE_NAME/ACTION_NAME,array('token'=>$_GET['token'],'classid'=>$_GET['classid']));?>",
				"tTitle": "<?php echo ($thisClassInfo["name"]); ?>",
				"tContent": "<?php echo ($thisClassInfo["info"]); ?>"
			};
		</script><?php endif; ?>
	
<?php echo ($shareScript); ?>
  </body>
</html>