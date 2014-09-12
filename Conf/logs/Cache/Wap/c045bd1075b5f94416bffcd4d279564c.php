<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>团购</title>
    <meta name="description" content="">
    <meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no"  />
    <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 568px)" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name='apple-touch-fullscreen' content='yes'>
    <meta name="full-screen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="address=no"/>
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="tpl/static/groupon/wap/css.css" />
<script src="/tpl/Wap/default/common/css/product/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/tpl/Wap/default/common/css/product/js/main.js"></script>
</head>
<body id='index'>
<a name="top"></a>
    <header  class="clearfix">
        <h1 class="hd-logo">
            <a class="hd-logo-text" gaevent="imt/hd/logo" href="<?php echo U('Groupon/grouponIndex',array('token'=>$token,'wecha_id'=>$wecha_id));?>" style="font-family:Microsoft Yahei">团购</a>
        </h1>
        
        <div class="hd-nav">
            <a class="icon icon-account account"  gaevent="imt/hd/account" href="<?php echo U('Groupon/my',array('token'=>$token,'wecha_id'=>$wecha_id));?>">我的订单</a>
            <a class="icon icon-wsearch" gaevent="imt/hd/search" href="<?php echo U('Groupon/search',array('token'=>$token,'wecha_id'=>$wecha_id));?>">搜索</a>
        </div>
    </header>
<div class="msg-ok" id="okMsg" style="display: none;"></div>
<div class="msg-err" id="errMsg" style="display: none;"></div>
<div id="deal" class="deal" xmlns="http://www.w3.org/1999/html">
    <div class="deal-intro">
        <div class="deal-album" id="album" style="overflow: hidden;">
            <div id="iscroll" class="scroll" style="width: 1488px; -webkit-transition: -webkit-transform 0ms; transition: -webkit-transform 0ms; -webkit-transform-origin: 0px 0px; -webkit-transform: translate3d(0px, 0px, 0);">
                <ul>
                        <li><img class="bigImg" src="<?php echo ($product["logourl"]); ?>"></li>
                </ul>
            </div>
            <span class="left"></span>
            <span class="right"></span>
        </div>
        <div class="m-t15 deal-pricetag">
            <div>
                <strong class="discount-price"><?php echo ($product["price"]); ?><span>元</span></strong>
                <span class="dt-price"><?php echo ($product["oprice"]); ?>元</span>
            </div>
            <a class="btn-large btn-tip" onclick="add_cart();" href="###">立即购买</a>
        </div>
       
        <div class="deal-title">
            <h1><?php echo ($product["name"]); ?></h1>

            <p class="explain"><?php echo ($intro); ?>...<a href="<?php echo U('Groupon/detail',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'id'=>$product['id']));?>">详细信息</a></p>

        </div>
        <ul class="deal-tips">
            <li><span class="icon-fonts">C</span>已售<?php echo ($product['salecount']+$product['fakemembercount']); ?></li>
            <li><span class="icon-fonts">D</span><?php echo (date("Y-m-d",$product["endtime"])); ?>结束</li>
        </ul>
    </div>
<!--daojishi--> 
<script type="text/javascript"> 
 var SysSecond; 
 var InterValObj; 
  
 $(document).ready(function() { 
  SysSecond = parseInt($("#remainSeconds").html()); //这里获取倒计时的起始时间 
  InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
 }); 
 
 //将时间减去1秒，计算天、时、分、秒 
 function SetRemainTime() { 
  if (SysSecond > 0) { 
   SysSecond = SysSecond - 1; 
   var second = Math.floor(SysSecond % 60);             // 计算秒     
   var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
   var hour = Math.floor((SysSecond / 3600) % 24);      //计算小时 
   var day = Math.floor((SysSecond / 3600) / 24);        //计算天 
 
   $("#remainTime").html('&nbsp;&nbsp;还剩'+day + "天" + hour + "小时" + minite + "分" + second + "秒"); 
  } else {//剩余时间小于或等于0的时候，就停止间隔函数 
   window.clearInterval(InterValObj); 
   //这里可以添加倒计时时间为0后需要执行的事件 
  } 
 } 
</script> 
<div id="remainSeconds" style="display:none"><?php echo ($leftSeconds); ?></div> 
<!--daojishi end-->
    <div class="box-style deal-comment">
             <span id="remainTime" style="font-size:16px;font-weight:800;color:#FF9900"></span>
    </div>
    <div id="deal-bizinfo" class="box-style deal-bizinfo">
        <h2><span class="icon-fonts">H</span>商家信息</h2>

            <div class="biz-info">
                <a href="<?php echo U('Groupon/company',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'id'=>$product['id']));?>">
                    <div class="biz-detail">
                        <p class="title ell"> <?php echo ($thisCompany["name"]); ?></p>

                        <p class="address ell"><?php echo ($thisCompany["address"]); ?></p>
                    </div>
                </a>

                <div class="icon-fonts call">
                    <a href="tel:<?php echo ($thisCompany["tel"]); ?>">E</a>
                </div>
            </div>
            <a class="more" href="<?php echo U('Groupon/company',array('token'=>$_GET['token'],'wecha_id'=>$_GET['wecha_id'],'id'=>$product['id']));?>">查看全部<?php echo ($branchStoreCount); ?>家分店</a>
    </div>


<script type="text/javascript">
    //点击加入购物车
    function add_cart() {
    	location.href="<?php echo U('Groupon/orderCart',array('token'=>$token,'id'=>$product['id'],'price'=>$product['price'],'count'=>1,'wecha_id'=>$_GET['wecha_id']));?>";
    }
</script>
    
    <div style="margin:0 10px 10px 10px">
            <a class="btn-large btn-tip" onclick="add_cart();" href="###">立即购买</a>
    </div>
<div class="box-style deal-advice"><h2><span class="icon-fonts">K</span>相关团购推荐</h2>
<ul gaevent="imt/deal/relate">
<?php if(is_array($products)): $i = 0; $__LIST__ = $products;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hostlist): $mod = ($i % 2 );++$i;?><li><a class="advice-buy ell" href="<?php echo U('Groupon/product',array('token'=>$_GET['token'],'id'=>$hostlist['id'],'wecha_id'=>$_GET['wecha_id']));?>"><?php echo ($hostlist["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul></div></div>
<div id="mask" class="shadow" style="display: none"></div>

<div id="pop-wrapper" class="pop-layer" style="display: none;">
    <h4>弹窗</h4>

    <div id="content" class="content">

    </div>
</div>

<div id="img_pop" class="img-pop" style="display: none;">

</div>
<nav class="pageinator clearfix">
    <div id="nav-page" class="pg-next">
    </div>
    <?php if($hideTopButton != 1): ?><div id="nav-top" class="pg-top">
        <span class="btn btn-top"><span class="icon icon-top"><a href="#top" style="color:#666">回到顶部</a></span></span>
    </div><?php endif; ?>
</nav>
<footer>
<div class="ft-copyright"><span class="ft-copyright-text"> &copy;<?php echo date('Y',time());?> </span></div>
</footer>

<script type="text/javascript">
window.shareData = {  
            "moduleName":"Groupon",
            "moduleID":"0",
            "imgUrl": "", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Groupon/grouponIndex',array('token'=>$token));?>",
            "tTitle": "团购",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>