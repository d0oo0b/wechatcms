<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo ($tpl["wxname"]); ?></title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="./tpl/static/tpl/170/css/cate.css" rel="stylesheet" type="text/css" />
 <link href="./tpl/static/tpl/com/css/iscroll.css" rel="stylesheet" type="text/css" />

<style>
  
</style>
<script src="./tpl/static/tpl/com/js/iscroll.js" type="text/javascript"></script>
<script type="text/javascript">
var myScroll;

function loaded() {
myScroll = new iScroll('wrapper', {
snap: true,
momentum: false,
hScrollbar: false,
onScrollEnd: function () {
document.querySelector('#indicator > li.active').className = '';
document.querySelector('#indicator > li:nth-child(' + (this.currPageX+1) + ')').className = 'active';
}
 });
 
 
}

document.addEventListener('DOMContentLoaded', loaded, false);
</script>
 
</head>

<body>
		<!--music-->
		<?php if($homeInfo['musicurl'] != false): ?><style>
.btn_music {
display: inline-block;
width: 35px;
height: 35px;
background: url('<?php echo RES;?>/images/play.png') no-repeat center center;
background-size: 100% auto;
position: absolute;
z-index: 100;
left: 15px;
top: 20px;
}
.btn_music.on {
    background-image: url("<?php echo RES;?>/images/stop.png");
}

</style>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<script>

var playbox = (function(){
	//author:eric_wu
	var _playbox = function(){
		var that = this;
		that.box = null;
		that.player = null;
		that.src = null;
		that.on = false;
		//
		that.autoPlayFix = {
			on: true,
			//evtName: ("ontouchstart" in window)?"touchend":"click"
			evtName: ("ontouchstart" in window)?"touchstart":"mouseover"
			
		}

	}
	_playbox.prototype = {
		init: function(box_ele){
			this.box = "string" === typeof(box_ele)?document.getElementById(box_ele):box_ele;
			this.player = this.box.querySelectorAll("audio")[0];
			this.src = this.player.src;
			this.init = function(){return this;}
			this.autoPlayEvt(true);
			return this;
		},
		play: function(){
			if(this.autoPlayFix.on){
				this.autoPlayFix.on = false;
				this.autoPlayEvt(false);
			}
			this.on = !this.on;
			if(true == this.on){
				this.player.src = this.src;
				this.player.play();
			}else{
				this.player.pause();
				this.player.src = null;
			}
			if("function" == typeof(this.play_fn)){
				this.play_fn.call(this);
			}
		},
		handleEvent: function(evt){
			this.play();
		},
		autoPlayEvt: function(important){
			if(important || this.autoPlayFix.on){
				document.body.addEventListener(this.autoPlayFix.evtName, this, false);
			}else{
				document.body.removeEventListener(this.autoPlayFix.evtName, this, false);
			}
		}
	}
	//
	return new _playbox();
})();

playbox.play_fn = function(){
	this.box.className = this.on?"btn_music on":"btn_music";
}
</script>

<script type="text/javascript">
$(document).ready(function(){
	playbox.init("playbox");
	/*
	setTimeout(function() {
		// IE
		if(document.all) {
			document.getElementById("playbox").click();
		}
		// 其它浏览器
		else {
			var e = document.createEvent("MouseEvents");
			e.initEvent("click", true, true);
			document.getElementById("playbox").dispatchEvent(e);
		}
	}, 2000);
	*/
});

</script>
<span id="playbox" class="btn_music" onclick="playbox.init(this).play();"><audio id="audio" loop src="<?php echo ($homeInfo["musicurl"]); ?>"></audio></span><?php endif; ?>
<div class="banner">
<div id="wrapper">
<div id="scroller">
<ul id="thelist">
				<?php if(is_array($flash)): $i = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li><p><?php echo ($so["info"]); ?></p><a href="<?php echo ($so["url"]); ?>"><img src="<?php echo ($so["img"]); ?>" /></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
</div>
</div>
      <div id="nav">

<ul id="indicator">
				<?php if(is_array($flash)): $i = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li <?php if($i == 1): ?>class="active"<?php endif; ?> ></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>

</div>
<div class="clr"></div>
</div>

<div class="mainmenu">


		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,0,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%3 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%3 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,3,2,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%2 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%2 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
 
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,5,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%3 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%3 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,8,2,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%2 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%2 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,10,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%3 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%3 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,13,2,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%2 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%2 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
 
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,15,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%3 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%3 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,18,2,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%2 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%2 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>
    
 
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,20,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%3 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%3 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,23,2,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%2 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%2 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>
    
 
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,25,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%3 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%3 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    
		<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,28,2,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%2 == 1): ?><ul><?php endif; ?>
				<li>
					<a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>">
						<p class="menutitle"><?php echo ($vo["name"]); ?></p>
						<p class="menuimg"><img src="<?php echo ($vo["img"]); ?>" /></p>
					</a>
				</li>	
			<?php if($i%2 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>

    


</div>
<script>
var count = document.getElementById("thelist").getElementsByTagName("img").length;	

var count2 = document.getElementsByClassName("menuimg").length;
for(i=0;i<count;i++){
 document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:"+document.body.clientWidth+"px";

}
document.getElementById("scroller").style.cssText = " width:"+document.body.clientWidth*count+"px";

 setInterval(function(){
myScroll.scrollToPage('next', 0,400,count);
},3500 );
window.onresize = function(){ 
for(i=0;i<count;i++){
document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:"+document.body.clientWidth+"px";

}
 document.getElementById("scroller").style.cssText = " width:"+document.body.clientWidth*count+"px";
} 


</script>
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