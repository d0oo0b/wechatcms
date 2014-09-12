<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/19999/xhtml">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <title><?php echo ($tpl['wxname']); ?></title>

    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;" />

    <meta name="apple-mobile-web-app-capable" content="yes" />

    <meta name="apple-mobile-web-app-status-bar-style" content="black" />

    <meta name="format-detection" content="telephone=no" />

    <meta charset="utf-8" />

	<link rel="stylesheet" type="text/css" href="../../wm-xin-a/font-awesome.css?v=2013121900" media="all" />
	
	<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/template/reset.css" media="all" />	
	
    <link rel="stylesheet" href="<?php echo RES;?>/css/1999/idangerous.swiper.css" />

    <link href="<?php echo RES;?>/css/1999/iscroll.css" rel="stylesheet" type="text/css" />
	
    <link rel="stylesheet" href="<?php echo RES;?>/css/1999/plugmenu.css" />

    <link rel="Stylesheet" href="<?php echo RES;?>/css/1999/moban.css" type="text/css" />
        <link href="<?php echo RES;?>/css/1999/cate14_2.css" rel="stylesheet" type="text/css" />

    <style type="text/css">

     .btn_music

        {

            display: inline-block;

            width: 35px;

            height: 35px;

            background: url('<?php echo RES;?>/css/1999/images/play.png') no-repeat center center;

            background-size: 100% auto;

            position: absolute;

            z-index: 100;

left: 15px;            top: 20px;

        }

        .btn_music.on

        {

            background-image: url("<?php echo RES;?>/css/1999/images/stop.png");

        }

       

     #cate14 .mainmenu li:last-of-type {

margin-bottom: 0;

}

#cate14 .mainmenu {

margin: 0 0 0 5%;

position: absolute;

bottom: auto;

top:0;

width:120px;/*可修改菜单宽度*/

}

#cate14 .mainmenu ul {

margin:50px 0 0 0;/*可修改距离顶部的距离*/

}

#cate14 .mainmenu ul li {

float:none; width:100%;

}

#cate14 .mainmenu li a {

background-color: 00a1fc(255, 255, 255, 0.7);/*可修改菜单背景颜色及透明度*/

color:#ffffff;/*可修改文字颜色*/

}

    </style>

    <script src="<?php echo RES;?>/css/1999/js/iscroll.js" type="text/javascript"></script>
    <script type="text/javascript">

        var myScroll;
        function loaded() {

            myScroll = new iScroll('wrapper', {

                snap: true,

                momentum: false,

                hScrollbar: false,

                onScrollEnd: function () {

                    document.querySelector('#indicator > li.active').className = '';

                    document.querySelector('#indicator > li:nth-child(' + (this.currPageX + 1) + ')').className = 'active';

                }

            });

        }

        document.addEventListener('DOMContentLoaded', loaded, false);

        window.addEventListener("DOMContentLoaded", function () {

            playbox.init("playbox");

        }, false);    </script>

    <script src="<?php echo RES;?>/css/1999/js/zepto.min.js" type="text/javascript"></script>

    <script src="<?php echo RES;?>/css/1999/js/plugmenu.js" type="text/javascript"></script>

</head>

<body id="cate14"  >
    <script src="<?php echo RES;?>/css/1999/js/audio.js" type="text/javascript"></script>

    <script>

        window.addEventListener("DOMContentLoaded", function () {

            playbox.init("playbox");

        }, false);

    </script>

    <!----------------------------------------------------->

    <div class="banner">

        <div id="wrapper">

            <div id="scroller">

                <ul id="thelist">

					  <?php if(is_array($flashbg)): $i = 0; $__LIST__ = $flashbg;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li>
						  <p><?php echo ($so["info"]); ?></p>
						  <a href="<?php echo ($so["url"]); ?>"><img src="<?php echo ($so["img"]); ?>" /></a></li><?php endforeach; endif; else: echo "" ;endif; ?>

                </ul>

            </div>

        </div>

        <div id="nav">

            <div id="prev" onclick="myScroll.scrollToPage('prev', 0,400,5);return false">

                &larr; prev</div>

            <ul id="indicator">
			  <?php if(is_array($flashbg)): $i = 0; $__LIST__ = $flashbg;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li   
				<?php if($i == 1): ?>class="active"<?php endif; ?>
				><?php echo ($i); ?>
				</li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>

            <div id="next" onclick="myScroll.scrollToPage('next', 0,400,5);return false">

                next &rarr;</div>

        </div>

        <div class="clr">

        </div>

    </div>

    <!----------------------------------------------------->
<div class="mainmenu">

<ul>
		<?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>

        <div class="menubtn">

            <a href="<?php if($vo['url'] == ''): echo U('Wap/Index/lists',array('classid'=>$vo['id'],'token'=>$vo['token']));?>
            <?php else: ?>
            <?php echo ($vo["url"]); endif; ?>
            "><?php echo ($vo["name"]); ?></a>

            </div>

        </li><?php endforeach; endif; else: echo "" ;endif; ?>

</ul>

</div>

 

<div style="display:none"> </div>

<script>

    var count = document.getElementById("thelist").getElementsByTagName("img").length;
    var count2 = document.getElementsByClassName("menuimg").length;

    for (i = 0; i < count; i++) {

        document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:" + document.body.clientWidth + "px";
    }

    document.getElementById("scroller").style.cssText = " width:" + document.body.clientWidth * count + "px";
    setInterval(function () {

        myScroll.scrollToPage('next', 0, 400, count);

    }, 3500);

    window.onresize = function () {

        for (i = 0; i < count; i++) {

            document.getElementById("thelist").getElementsByTagName("img").item(i).style.cssText = " width:" + document.body.clientWidth + "px";
        }

        document.getElementById("scroller").style.cssText = " width:" + document.body.clientWidth * count + "px";

    } </script>

     

     

    <div id="leafContainer">

    </div>

    <style type="text/css">

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

    <script type="text/javascript">

        var animationArr = { "1": "fengye", "2": "snow", "4": "rose" };

        var animationindex = "0";

        if (animationArr[animationindex] != undefined) {

        }

    </script>

    <style type="text/css">

body { margin-bottom:60px !important; }

a, button, input { -webkit-tap-highlight-color:rgba(255, 0, 0, 0); }

ul, li { list-style:none; margin:0; padding:0 }

.menu_font { padding: 0; position: absolute; z-index: 500; bottom: 60px; right: 10px; width: 120px; background: #e4e3e2; border: 1px solid #afaeaf; border-radius: 5px; box-shadow: 0 1px 5px rgba(0, 0, 0, 0.2); }

.menu_font.hidden { display:none; }

.top_menu li:last-of-type a { background: none; }

.top_menu>li:last-of-type>a label { padding: 0 0 0 3px; }

.menu_font li:last-of-type { background: none; }

.menu_font li a { text-align: left !important; }

.top_menu li:last-of-type a { background: none; }

.menu_font:before, .menu_font:after { content:""; display:inline-block; position:absolute; z-index:240; bottom:0; left: 85%; margin-left:-8px; margin-bottom:-16px; width:0; height:0; border:8px solid red; border-color:#afaeaf transparent transparent transparent; }

.menu_font:after { z-index:501; border-color:#e4e3e2 transparent transparent transparent; margin-bottom:-15px; margin-left:-8px; }

.menu_font li { background:-webkit-gradient(linear, 0 0, 100% 0, from(#e4e3e2), to(#e4e3e2), color-stop(50%, #f3f3f2)), -webkit-gradient(linear, 0 0, 100% 0, from(#e4e3e2), to(#e4e3e2), color-stop(50%, #c6c5c5)); background-size:100% 1px, 100% 2px; background-repeat:no-repeat; background-position: center bottom; }

.menu_font li:first-of-type { border-top: 0; }

.menu_font li:last-of-type { border-bottom: 0; }

.menu_font li a { height: 40px; line-height: 40px !important; position: relative; color: #fff; display: block; width: 100%; text-indent: 10px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; text-decoration:none; color:#4f4d4f; text-shadow: 0 1px rgba(255, 255, 255, 0.3); }

.menu_font li a img { width: 20px; height:20px; display: inline-block; margin-top:-2px; color: #fff; line-height: 40px; vertical-align:middle; }

.menu_font>li>a label { padding:3px 0 0 3px; font-size:14px; overflow:hidden; margin: 0; }

#menu_list0 { right:0; left:10px; }

#menu_list0:before, #menu_list0:after { left: 15%; }

#menu_list0:after { margin-bottom:-15px; margin-left:-8px; }

#sharemcover { position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.7); display: none; z-index: 20000; }

#sharemcover img { position: fixed; right: 18px; top: 5px; width: 260px; height: 180px; z-index: 20001; border:0; }

.top_bar .top_menu>li>a:hover, .top_bar .top_menu>li>a:active { background-color:#CCCCCC; }

.menu_font li a:hover, .menu_font li a:active { background-color:#CCCCCC; }

.menu_font li:first-of-type a { border-radius:5px 5px 0 0; }

.menu_font li:last-of-type a { border-radius:0 0 5px 5px; }

#plug-wrap { position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0); z-index:800; }

#cate18 .device {bottom: 49px;}

#cate18 #indicator {bottom: 240px;}

#cate19 .device {bottom: 49px;}

#cate19 #indicator {bottom: 330px;}

#cate19 .pagination {bottom: 60px;}

</style>

<div id="sharemcover" style=" display:none" onclick="document.getElementById('sharemcover').style.display='';">

<img src="<?php echo RES;?>/css/1999/images/MgnnofmleM.png">

</div>

<div id="plug-wrap" style="display: none;" onclick="closeall()"></div>

<script>

    function displayit(n) {

        var count = document.getElementById("top_menu").getElementsByTagName("ul").length;

        for (i = 0; i < count; i++) {

            if (i == n) {

                if (document.getElementById("top_menu").getElementsByTagName("ul").item(n).style.display == 'none') {

                    document.getElementById("top_menu").getElementsByTagName("ul").item(n).style.display = '';

                    document.getElementById("plug-wrap").style.display = '';

                } else {

                    document.getElementById("top_menu").getElementsByTagName("ul").item(n).style.display = 'none';

                    document.getElementById("plug-wrap").style.display = 'none';

                }

            } else {

                document.getElementById("top_menu").getElementsByTagName("ul").item(i).style.display = 'none';

            }

        }

    }

    function closeall() {

        var count = document.getElementById("top_menu").getElementsByTagName("ul").length;

        for (i = 0; i < count; i++) {

            document.getElementById("top_menu").getElementsByTagName("ul").item(i).style.display = 'none';

        }

        document.getElementById("plug-wrap").style.display = 'none';

    }

    document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {

        WeixinJSBridge.call('hideToolbar');

    });

</script>           <style>

.themeStyle {

background-color: #0EAFFF !important;

}

.top_menu>li a label {

border-radius: 32px;

}

</style>
    <script src='<?php echo RES;?>/css/1999/js/bjdh.js' type='text/javascript'></script>

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