<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="utf-8" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<title><?php echo ($metaTitle); ?></title>
	<meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="format-detection" content="telephone=no" />
    <meta http-equiv="cleartype" content="on">
	<link type="text/css" rel="stylesheet" href="<?php echo ($staticFilePath); ?>/css1/style.css" />
	<link rel="stylesheet" href="<?php echo ($staticFilePath); ?>/css1/base.css?v=20131207">	
	<link rel="stylesheet" href="<?php echo ($staticFilePath); ?>/css1/common.css?v=20131207">
	<link rel="stylesheet" href="<?php echo ($staticFilePath); ?>/css1/index.css?v=20131207">
    <link rel="stylesheet" href="<?php echo ($staticFilePath); ?>/css1/cats.css">
	<link rel="stylesheet" type="text/css" href="<?php echo ($staticFilePath); ?>/css1/idangerous.swiper.css?v=20131207">
	<link rel="stylesheet" type="text/css" href="<?php echo ($staticFilePath); ?>/css1/dynamic-slides.css?v=20131207">
	<script type="text/javascript" src="/tpl/Wap/default/common/css/store/hd/jQuery.js"></script>
	<script type="text/javascript" src="<?php echo ($staticFilePath); ?>/js1/mjquery.js?v=20131206"></script>
	<script type="text/javascript" src="<?php echo ($staticFilePath); ?>/js1/swipe.js"></script>
	
	<script type="text/javascript" src="<?php echo ($staticFilePath); ?>/js1/common.js?v=20131206"></script>
    
	
    <script type="text/javascript" src="<?php echo ($staticFilePath); ?>/hd/jquery-ui.js"></script>
   
   <style>
   img {
width: 100%!important;
}
   </style>

</head>

<body >
	<!--头部-->
	<header>
		<div>
			<a onClick="javascript:;" class="Storecats" style="margin-top:5px"><span></span></a>
			<a href="<?php echo U('Store/cats',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'dining'=>$isDining));?>" class="home"><span></span></a>
			<a href="<?php echo U('Store/my',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'dining'=>$isDining));?>" class="kf"><span></span></a>
			<a href="<?php echo U('Store/cart',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'dining'=>$isDining));?>" class="car"><span></span></a>
		</div>
	</header><!--主体-->
   <div id="imgs_box" class="box_swipe">



			<ul>



			<?php if(is_array($info[picurls])): foreach($info[picurls] as $key=>$i): ?><li style="width: 100%; display: table-cell; vertical-align: top;"><img src="<?php echo ($i); ?>"></li><?php endforeach; endif; ?>



			</ul>



			<ol>



			<?php if(is_array($info[picurls])): foreach($info[picurls] as $key=>$i): ?><li class="on"></li><?php endforeach; endif; ?>







			</ol>



	</div>



	<?php if($info['picurls'] == ''): ?><div class="qiandaobanner"> 



		<img src="<?php echo RES;?>/images/yuyue/head_pic.jpg">



	</div><?php endif; ?>


    <!--幻灯-->
    
    
   <script type="text/javascript">
    



function dothis(nums){

}

$(document).ready(function () {



	new Swipe(document.getElementById('imgs_box'), {



				speed:1000,



				auto:5000,



				callback: function(){



					var lis = $(this.element).next("ol").children();



					lis.removeClass("on").eq(this.index).addClass("on");



				}



			}); 

}); 


</script>
   
<!--end-->
    
    
    
    
    
    
	<div id="win" style="display: none;">
		<ul class="dropdown"> 
			<?php if(is_array($headercats)): $i = 0; $__LIST__ = $headercats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cat): $mod = ($i % 2 );++$i;?><li><a href="<?php if($cat['parentid'] == 0): echo U('Store/Stores',array('token'=>$_GET['token'],'catid'=>$cat['id'],'wecha_id'=>$wecha_id,'dining'=>$isDining)); else: ?>{:U('Store/Stores',array('token'=>$_GET['token'],'catid'=>$cat['id'],'wecha_id'=>$wecha_id))}<?php endif; ?>"><span><?php echo ($cat["name"]); ?></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
			
		<div class="clr"></div>
		</ul>
	</div>

<!--主体-->

<section>
<ul class="v12_ul">


	<?php if(is_array($cats)): $i = 0; $__LIST__ = $cats;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hostlist): $mod = ($i % 2 );++$i;?><li class="card_lol"  <?php if($i%2 == 1): ?>style="direction:rtl;"<?php endif; ?>>

		

			<a href="<?php if($hostlist['parentid'] == 0): echo U('Store/products',array('token'=>$_GET['token'],'catid'=>$hostlist['id'],'wecha_id'=>$wecha_id,'dining'=>$isDining)); else: echo U('Store/Stores',array('token'=>$_GET['token'],'catid'=>$hostlist['id'],'wecha_id'=>$wecha_id)); endif; ?>" class="tbox">

					<div style="font-size:18px; text-align:center;font-family: Helvetica, Arial, sans-serif;line-height: 1.231;"><?php echo ($hostlist["name"]); ?><span><?php echo ($hostlist["des"]); ?></span></div>
                    <div style="background-image: url(<?php echo ($hostlist["logourl"]); ?>)">

					

                        

					</div>

				</a>


	</li><?php endforeach; endif; else: echo "" ;endif; ?> 
</ul>
		</section>

<script type="text/javascript" src="/tpl/Wap/default/common/js/ChatFloat.js"></script>
<?php if($kefu['sc'] == '1'): ?><a href="<?php echo ($kefu["info2"]); ?>" id="CustomerChatFloat" style="position: fixed; right: 0px; top: 150px; z-index: 99999; height: 70px; width: 65px; min-width: 65px; background-image: url(/tpl/Wap/default/common/css/img/MobileChatFloat.png); background-size: 65px; background-position: 0px 0px; background-repeat: no-repeat no-repeat;"></a><?php endif; ?> 
</body>

</html>