<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>       
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="../../wm-xin-a/font-awesome.css?v=2013121900" media="all" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/template/reset.css" media="all" />
<title><?php echo ($tpl['wxname']); ?></title>
<base href=".">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta charset="utf-8">
<link rel="stylesheet" href="<?php echo RES;?>/css/1211/idangerous.swiper.css">
<link href="<?php echo RES;?>/css/1211/iscroll.css" rel="stylesheet" type="text/css">
<link href="<?php echo RES;?>/css/1211/cate18_.css" rel="stylesheet" type="text/css">
<style>
body {
	background:url(SfMNsgKp5b.jpg) no-repeat;
}
 #cate15 .mainmenu li:nth-child(10n+1) a {
 background-color:rgba(255, 152, 0, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+2) a {
 background-color:rgba(255, 51, 0, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+3) a {
 background-color:rgba(255, 254, 0, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+4) a {
 background-color:rgba(121, 255, 0, 0.46);/*rgb??????????0.46?????????��???*/
}
#cate15 .mainmenu li:nth-child(10n+5) a {
 background-color: rgba(0, 192, 255, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+6) a {
 background-color: rgba(206, 0, 255, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+7) a {
 background-color: rgba(113, 0, 255, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+8) a {
 background-color: rgba(255, 0, 211, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+9) a {
 background-color: rgba(255, 101, 0, 0.46);
}
#cate15 .mainmenu li:nth-child(10n+10) a {
 background-color: rgba(255, 152, 0, 0.46);
}
#cate15 .mainmenu {
	bottom: 60px;  /*60px?????????60??????????????��???*/
}
</style>
<script src="<?php echo RES;?>/css/1211/iscroll.js" type="text/javascript"></script>
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
<body id="cate18" style="">
<div id="insert1" style="z-index:10000; position:fixed; top:20px;"></div>


</if>
<div class="banner">
  <div id="wrapper" style="overflow: hidden; ">
    <div id="scroller" style="width: 3360px; -webkit-transition: -webkit-transform 0ms; -webkit-transform-origin: 0px 0px; -webkit-transform: translate3d(-1680px, 0px, 0px) scale(1); ">
      <ul id="thelist">
        <li>
          <p>1</p>
          <?php if(is_array($flashbg)): $i = 0; $__LIST__ = $flashbg;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li>
          <p><?php echo ($so["info"]); ?></p>
          <a href="<?php echo ($so["url"]); ?>"><img src="<?php echo ($so["img"]); ?>" /></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
        </li>
      </ul>
    </div>
  </div>
  <div id="nav">
    <div id="prev" onclick="myScroll.scrollToPage(&#39;prev&#39;, 0,400,2);return false">?? prev</div>
    <ul id="indicator">
      <?php if(is_array($flashbg)): $i = 0; $__LIST__ = $flashbg;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li   
        <?php if($i == 1): ?>class="active"<?php endif; ?>
        ><?php echo ($i); ?>
        </li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
    <div id="next" onclick="myScroll.scrollToPage(&#39;next&#39;, 0,400,2);return false">next ??</div>
  </div>
  <div class="clr"></div>
</div>
<div class="device">
  <div class="swiper-container" style="cursor: -webkit-grab; ">
    <div class="swiper-wrapper" style="width: 6720px; height: 185px; -webkit-transform: translate3d(-1680px, 0px, 0px); -webkit-transition: 0s; ">
      <div class="swiper-slide" style="width: 1680px; height: 185px; ">
        <div class="content-slide">
          <?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token']));?>
            <?php else: ?>
            <?php echo ($vo["url"]); endif; ?>
            ">
            <p class="ico"><img src="<?php echo ($vo["img"]); ?>" /></p>
            <p class="title"><?php echo ($vo["name"]); ?></p>
            </a><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
      </div>
    </div>
    <div class="pagination"><span class="swiper-pagination-switch swiper-visible-switch swiper-active-switch"></span><span class="swiper-pagination-switch"></span></div>
  </div>
</div>
<script src="<?php echo RES;?>/css/1211/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/css/1211/idangerous.swiper-2.1.min.js" type="text/javascript"></script>
<script>
  var mySwiper = new Swiper('.swiper-container',{
    pagination: '.pagination',
    loop:true,
    grabCursor: true,
    paginationClickable: true
  })
  $('.arrow-left').on('click', function(e){
    e.preventDefault()
    mySwiper.swipePrev()
  })
  $('.arrow-right').on('click', function(e){
    e.preventDefault()
    mySwiper.swipeNext()
  })
  </script>
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
</div>
<div style="display:none"></div>
<style>
 #leafContainer 
{
    position:fixed;
    z-index:2;
width:100%;
    height: 690px;
top:0;
overflow:hidden;
}
 #leafContainer > div 
{
    position: absolute;
    max-width: 100px;
    max-height: 100px;
    -webkit-animation-iteration-count: infinite, infinite;
    -webkit-animation-direction: normal, normal;
    -webkit-animation-timing-function: linear, ease-in;
}

#leafContainer > div > img {
     position: absolute;
     width: 100%;
     -webkit-animation-iteration-count: infinite;
     -webkit-animation-direction: alternate;
     -webkit-animation-timing-function: ease-in-out;
     -webkit-transform-origin: 50% -100%;
}

 @-webkit-keyframes fade
{
   
    0%   { opacity: 1; }
    95%  { opacity: 1; }
    100% { opacity: 0; }
}

 @-webkit-keyframes drop
{
       0%   { -webkit-transform: translate(0px, -50px); }
    100% { -webkit-transform: translate(0px, 650px); }
}
 @-webkit-keyframes clockwiseSpin
{
    0%   { -webkit-transform: rotate(-50deg); }
    100% { -webkit-transform: rotate(50deg); }
}
 @-webkit-keyframes counterclockwiseSpinAndFlip 
{
    
    0%   { -webkit-transform: scale(-1, 1) rotate(50deg); }
   
    100% { -webkit-transform: scale(-1, 1) rotate(-50deg); }
}
 			</style>
	 <script src="<?php echo RES;?>/css/flash/js/zepto.min.js" type="text/javascript"></script>   
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