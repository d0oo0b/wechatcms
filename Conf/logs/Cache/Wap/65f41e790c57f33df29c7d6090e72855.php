<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员卡</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
</head>

<body id="cardunion" class="mode_webapp2" >
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=<?php echo $apikey;?>"></script>
<div class="main">
	<div class="p_map">
    <div id="container" style="width:100%;height:100%"></div>
        <script type="text/javascript">
        $(function(){
        	var wh = $(window).height();
        	var bh = $('body').height();
        	var mh = $('#container').css('height');
        	mh = mh.replace('px', '');
        	oh = bh - wh;
        	nmh = mh - oh;
        	$('#container').css('height', nmh+'px');
        
        	var sContent = function(id, name, imgsrc, address, tel){
        		return "<h2 style='margin:0 0 7px 0;padding:0 0'>"+name+"</h2>" + 
        		"<img style='float:right;margin:0px 0px 0px 4px' id='imgDemo' src='"+imgsrc+"' width='120' height='80' />" + 
        		"<p style='padding-right:10px'>地址："+address+"</p>" +
        		"<p style=''>电话：<a href='tel:<?php echo ($thisCompany["tel"]); ?>'>"+tel+"</a></p>" +
        		"" +
        		"</div>";
        	}
        	var storeList = [{"id":"<?php echo $thisCompany['id'];?>","name":"<?php echo $thisCompany['name'];?>","logourl":"<?php echo $thisCompany['logourl'];?>","address":"<?php echo $thisCompany['address'];?>","tel":"<?php echo $thisCompany['tel'];?>","longitude":"<?php echo $thisCompany['longitude'];?>","latitude":"<?php echo $thisCompany['latitude'];?>"}<?php if(is_array($branchStores)): $i = 0; $__LIST__ = $branchStores;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$c): $mod = ($i % 2 );++$i;?>,{"id":"<?php echo $c['id'];?>","name":"<?php echo $c['name'];?>","logourl":"<?php echo $c['logourl'];?>","address":"<?php echo $c['address'];?>","tel":"<?php echo $c['tel'];?>","longitude":"<?php echo $c['longitude'];?>","latitude":"<?php echo $c['latitude'];?>"}<?php endforeach; endif; else: echo "" ;endif; ?>];
        	// 编写自定义函数,创建标注
        	function addMarker(point, content){
        	  var marker = new BMap.Marker(point);  // 创建标注
        	  map.addOverlay(marker);
        	  var infoWindow = new BMap.InfoWindow(content);
        	  map.openInfoWindow(infoWindow,point); //开启信息窗口
        	  marker.addEventListener("click", function(){          
        		   this.openInfoWindow(infoWindow);
        		   //图片加载完毕重绘infowindow
        		   document.getElementById('imgDemo').onload = function (){
        		       infoWindow.redraw();
        		   }
        		});
        	}
        	var map = new BMap.Map("container");
        	var point = new BMap.Point(<?php echo $thisCompany['longitude'];?>, <?php echo $thisCompany['latitude'];?>);
        	map.centerAndZoom(point, 13);
        	var user_marker = new BMap.Marker(point);  // 创建标注
        	map.addOverlay(user_marker);
            	   
        	for (var i = 0, l=storeList.length; i < l; i ++) {
        	  var point = new BMap.Point(storeList[i].longitude, storeList[i].latitude);
        	  var content = sContent(storeList[i].id,storeList[i].name,storeList[i].logourl,storeList[i].address,storeList[i].tel);
        	  addMarker(point, content);
        	}

        });
        </script>
	</div>
</div>

<div class="footermenu">
    <ul>
    <li>
            <a href="javascript:history.go(-1);">
            <img src="<?php echo RES;?>/card/images/return.png">
            <p>返回</p>
            </a>
        </li>
    <li>
            <a <?php if($infoType=='memberCardHome'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=index&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>">
            <img src="<?php echo RES;?>/card/images/home.png">
            <p>会员卡首页</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='companyDetail'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=companyDetail&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&companyid=<?php echo ($thisCompany["id"]); ?>">
            <img src="<?php echo RES;?>/card/images/detaila.png">
            <p>商家详情</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='myCard'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=index&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&mycard=1">
            <span class="num2" ><?php echo ($cardsCount); ?></span><img src="<?php echo RES;?>/card/images/my.png">
            <p>我的会员卡</p>
            </a>
        </li>
    </ul>
</div>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Card",
            "moduleID":"0",
            "imgUrl": "", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Card/index',array('token'=>$token));?>",
            "tTitle": "会员卡",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>