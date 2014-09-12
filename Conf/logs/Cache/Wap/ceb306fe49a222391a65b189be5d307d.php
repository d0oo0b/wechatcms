<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($thisCard["cardname"]); ?></title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
</head>
<?php if($error < 0): ?><body id="cardunion" class="mode_webapp2">
<?php else: ?>
<body id="card" class="mode_webapp"><?php endif; ?>
<?php if($error < 0): ?><div class="error" style="margin:50px auto 20px auto;text-align:center"><img src="<?php echo RES;?>/card/images/error.jpg" /></div>
<div style="font-size:14px;text-align:center"><?php if($error==-1){ ?>会员卡暂时缺货<?php }elseif($error==-2){ ?>您的积分不够<?php }elseif($error==-3){ ?>领取此会员卡需要<?php echo ($thisCard["miniscore"]); ?>积分，而您只有<?php echo ($userScore); ?>积分<?php }elseif($error==-4){ ?>还没领取会员卡，现正在跳转<?php } ?></div>
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
<?php else: ?>
<div id="overlay"></div>
<div class="cardcenter">
<div class="card"><img src="<?php if($thisCard['diybg']!=''){ echo ($thisCard["diybg"]); }else{ echo ($thisCard["bg"]); }?>" class="cardbg" />
<?php if($card.logo): ?><img id="cardlogo" class="logo" src="<?php echo ($thisCard["logo"]); ?>"><?php endif; ?>
<h1 style="color:<?php echo ($card["vipnamecolor"]); ?>"><?php echo ($thisCard["cardname"]); ?></h1>
<strong class="pdo verify" style="color:<?php echo ($card["numbercolor"]); ?>"><span id="cdnb" ><em>会员卡号</em><?php echo ($thisMember["number"]); ?></span></strong> </div>
<p class="explain"><span><?php echo ($thisCard["msg"]); ?></span></p>
<div class="window" id="windowcenter">
<div id="title" class="wtitle">领卡信息<span class="close" id="alertclose"></span></div>
<div class="content">
<div id="txt"></div>
<p>
<input name="truename" value=""  class="px" id="truename"  type="text" placeholder="请输入您的姓名">
</p>
<p>
<input name="tel"  class="px" id="tel"  value=""  type="number"  placeholder="请输入您的电话">
</p>
<input type="button" value="确 定" name="确 定" class="txtbtn" id="windowclosebutton">
</div>
</div>
</div>


<div class="cardexplain" >


    <div class="jifen-box">
<ul class="zongjifen">
<li><a href="/index.php?g=Wap&m=Card&a=expense&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>">
<div class="fengexian">
<p>消费记录</p>
<span><?php echo ($userInfo['expensetotal']); ?>元</span></div>
</a></li>
<li><a href="/index.php?g=Wap&m=Card&a=signscore&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>">
<div class="fengexian">
<p>剩余积分</p>
<span><?php echo ($userScore); ?>分</span></div>
</a></li>
<li><a href="/index.php?g=Wap&m=Card&a=payRecord&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>&month=<?php echo date('n');?>">
<p>我的余额</p>
<span><?php echo ($userInfo['balance']); ?>元</span></a></li>
</ul>
<div class="clr"></div>
</div>
  
<ul class="round" id="notice">
<li><a href="/index.php?g=Wap&m=Card&a=notice&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>"><span>最新通知<?php if ($noticeCount>0){echo '<em class="ok">'.$noticeCount.'</em>';}else{echo '<em class="error">0</em>';}?></span></a></li>
<li><a href="/index.php?g=Wap&m=Card&a=previlege&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>"><span>会员卡特权<?php if ($previlegeCount>0){echo '<em class="ok">'.$previlegeCount.'</em>';}else{echo '<em class="error">0</em>';}?></span></a></li>          	<li><a href="/index.php?g=Wap&m=Card&a=integral&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>"><span>积分换礼品<?php if ($integralCount>0){echo '<em class="ok">'.$integralCount.'</em>';}else{echo '<em class="error">0</em>';}?></span></a></li>
<li><a href="/index.php?g=Wap&m=Card&a=coupon&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>"><span>会员优惠券<?php if ($couponCount>0){echo '<em class="ok">'.$couponCount.'</em>';}else{echo '<em class="error">0</em>';}?></span></a></li>
</ul>

<ul class="round">
	<li><a href="/index.php?g=Wap&m=Card&a=topay&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>"><span>我要充值<em class="error">点击充值</em></span></a></li>
	<li><a href="/index.php?g=Wap&m=Card&a=payRecord&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>&month=<?php echo date('n');?>"><span>交易记录</span></a></li>
</ul>


<ul class="round"  id="powerandgift"  >
<li><a href="/index.php?g=Wap&m=Card&a=signscore&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>"><span>签到赚积分<?php if ($todaySigned){echo '<em class="ok">今日已签到</em>';}else{echo '<em class="error">今日未签到</em>';}?></span></a></li>
<li><a href="<?php echo U('Userinfo/index',array('token'=>$_GET['token'],'cardid'=>(int)$_GET['cardid'],'wecha_id'=>$_GET['wecha_id'],'redirect'=>'Card/card|cardid:'.(int)$_GET['cardid']));?>"><span>个人资料</span></a></li>
</ul>
    
<ul class="round">
<li><a href="/index.php?g=Wap&m=Card&a=cardIntro&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($card["id"]); ?>"><span>会员卡说明</span></a></li>
<li><a href="/index.php?g=Wap&m=Card&a=companyDetail&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>"><span>商家电话及地址</span></a></li>
</ul>

      </div>

<div style="height:40px;"></div>
<div class="footermenu">
    <ul>
    	<li>
            <a <?php if($infoType=='memberCardHome'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=index&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>">
           <img src="<?php echo RES;?>/card/images/home.png">
            <p>会员卡</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='card'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=card&token=<?php echo ($token); ?>&cardid=<?php echo ($thisCard["id"]); ?>&wecha_id=<?php echo ($wecha_id); ?>">
           <img src="<?php echo RES;?>/card/images/c.png">
            <p>此卡首页</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='privelege'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=previlege&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($thisCard["id"]); ?>">
           <img src="<?php echo RES;?>/card/images/prev.png">
            <p>特权</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='coupon'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=coupon&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($thisCard["id"]); ?>">
           <img src="<?php echo RES;?>/card/images/coupon.png">
            <p>优惠券</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='integral'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=integral&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&cardid=<?php echo ($thisCard["id"]); ?>">
           <img src="<?php echo RES;?>/card/images/intergral.png">
            <p>兑换</p>
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
<?php echo ($shareScript); endif; ?>

</body>
</html>