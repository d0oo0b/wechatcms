<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title><?php echo ($tpl["wxname"]); ?></title>

<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link href="./tpl/static/tpl/1115/css/cate.css" rel="stylesheet" type="text/css" />
 <link href="./tpl/static/tpl/com/css/iscroll.css" rel="stylesheet" type="text/css" />
<script src="./tpl/static/tpl/com/js/jquery.min.js" type="text/javascript"></script>
<script src="./tpl/static/tpl/com/js/swipe.js" type="text/javascript"></script>
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
<script>
    $(function(){
        window.swiper_2 = new Swipe(document.getElementById('list_uls'), {
            speed:500,
           // auto:3000,
            callback: function(){
               var lis = $(".nav_for_list_ul ul:first-of-type li");
               lis.removeClass("on").eq(this.index).addClass("on");
               var las = $(".nav_for_list_ul ul:nth-of-type(2) a");
               las.removeClass("on").eq(this.index).addClass("on");

               var minIndex = 0;
               var maxIndex = Math.max(0, nav_uls.length - 3);
               var range = [this.index-1, minIndex, maxIndex];
               //

               range = range.sort(function(a, b){
                       	return a>b?1:-1;
                       });
               window.nav_uls.slide(range[1]);
            }
        });
    });
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
    <div id="prev" onclick="myScroll.scrollToPage('prev', 0,400,2);return false">&larr; prev</div>
    <ul id="indicator">
				<?php if(is_array($flash)): $i = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li <?php if($i == 1): ?>class="active"<?php endif; ?> ></li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
    <div id="next" onclick="myScroll.scrollToPage('next', 0,400,2);return false">next &rarr;</div>
  </div>
    <div class="clr"></div>
</div>
 

<div id="insert1" ></div>
 
                 


<div class="imgmenu">
<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,0,4,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($i%4 == 1): ?><ul><?php endif; ?>
<li><a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($vo["url"])); endif; ?>"><img src="<?php echo ($vo["img"]); ?>" /><p><?php echo ($vo["name"]); ?></p></a></li>


	<?php if($i%4 == 0): ?></ul><?php endif; endforeach; endif; else: echo "" ;endif; ?>
</div>

 


<section>
  <nav class="nav_for_list_ul">
    <div class="ofh">
      <ul>
			<?php $__FOR_START_22783__=4;$__FOR_END_22783__=count($info);for($i=$__FOR_START_22783__;$i < $__FOR_END_22783__;$i+=1){ ?><li <?php if($i == 4): ?>class="on"<?php endif; ?>></li><?php } ?>
        </ul>
      <ul>
        <div id="nav_uls" style="width:33.3%;">
			<ol>
				<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,4,null,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="javascript:swiper_2.slide(<?php echo ($i-1); ?>);" <?php if($i == 1): ?>class="on"<?php endif; ?>><img src="<?php echo ($vo["img"]); ?>" /><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
			</ol>
        </div>
      </ul>
      <script>
window.nav_uls = new Swipe(document.getElementById('nav_uls'), {
speed:500,
callback: function(){
if(this.index>(this.length-3)){
this.slide(this.length-3);
}
}
});
</script> 
    </div>
  </nav>
  <div id="list_uls" class="list_uls box_swipe">
    <ul >
	<?php if(is_array($info)): $i = 0; $__LIST__ = array_slice($info,4,null,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
        <dl>
	<?php if(is_array($vo['sub'])): $i = 0; $__LIST__ = $vo['sub'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$res): $mod = ($i % 2 );++$i;?><dd>

				<a href="<?php if($res['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$res['id'],'token'=>$vo['token'])); else: echo (htmlspecialchars_decode($res["url"])); endif; ?>">
            <figure>
              <div><img src="<?php echo ($res["img"]); ?>" /></div>
              <figcaption>
                <label style="cursor:pointer;"><?php echo ($res["name"]); ?></label>
              </figcaption>
            </figure>
				</a> 
			
			</dd><?php endforeach; endif; else: echo "" ;endif; ?>
	</dl>
      </li><?php endforeach; endif; else: echo "" ;endif; ?>
             
      
    </ul>
  </div>
</section>
<script>


var count = document.getElementById("thelist").getElementsByTagName("img").length;	


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