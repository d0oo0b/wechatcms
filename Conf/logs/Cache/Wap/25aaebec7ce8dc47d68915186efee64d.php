<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($thisCard["cardname"]); ?>优惠券</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/card/js/accordian.pack.js" type="text/javascript"></script>
</head>
<body id="cardnews" onLoad="new Accordian(&#39;basic-accordian&#39;,5,&#39;header_highlight&#39;);" class="mode_webapp">
<div class="qiandaobanner"><a href="javascript:history.go(-1);"><img src="<?php echo ($thisCard["vip"]); ?>" ></a> </div>

<div id="basic-accordian">
<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><div id="test<?php echo ($item["id"]); ?>-header" class="accordion_headings  <?php if ($item['id']==$firstItemID){?>header_highlight<?php } ?>">
<div class="tab  coupon">
<span class="title"><?php echo ($item["title"]); ?>(<?php echo ($item["nouseCount"]); ?>张)<p>有效期至<?php echo (date('Y年m月d日',$item["enddate"])); ?></p></span>
</div>
<div id="test<?php echo ($item["id"]); ?>-content">
<div class="accordion_child">
<div id="queren<?php echo ($item["id"]); ?>" style="display:none;">
						<form action="/index.php?g=Wap&m=Card&a=action_useCoupon&wecha_id=<?php echo ($wecha_id); ?>&token=<?php echo ($token); ?>" method="post" id="payform<?php echo ($item["id"]); ?>">
								<p style=" margin:10px 0;text-align:center">
									<input type="radio" name="paytype" onchange="radiochange(this,<?php echo ($item["id"]); ?>)" id="paytype<?php echo ($item["id"]); ?>" value="0" /><label for="paytype<?php echo ($item["id"]); ?>" style="font-size:12px;">线下支付</label> &nbsp; &nbsp; &nbsp; &nbsp;
									<input type="radio" name="paytype" onchange="radiochange(this,<?php echo ($item["id"]); ?>)" id="paytype2<?php echo ($item["id"]); ?>" value="1" /><label for="paytype2<?php echo ($item["id"]); ?>" style="font-size:12px;">会员卡支付</label>
								
								</p>
								<p style=" margin:10px 0">
									<input name="money" type="text" class="px" id="money<?php echo ($item["id"]); ?>" value="" placeholder="请输入实际消费金额">
								</p>
								<p style=" margin:10px 0" id="usetime_p<?php echo ($item["id"]); ?>">
									<input name="s_money" type="text" class="px" id="s_money<?php echo ($item["id"]); ?>" value="" placeholder="请再输入消费金额">
								</p>
								<p style=" margin:10px 0 0 0" id="usetime_p">
									<input name="usetime" class="px" id="usetime<?php echo ($item["id"]); ?>" value="" type="text" placeholder="请输入使用张数">
								</p>
								<p style=" margin:10px 0 0 0">
									<input name="username" class="px" id="username<?php echo ($item["id"]); ?>" value="" type="text" placeholder="请输入商家用户名">
								</p>
								<p style=" margin:10px 0 0 0">
									<input name="password" class="px" id="password<?php echo ($item["id"]); ?>" value="" type="password" placeholder="请输入商家密码">
								</p>
								
								<p style=" margin:10px 0">
									<input type="hidden" name="itemid" value="<?php echo ($item["id"]); ?>" />
									<input type="hidden" name="wecha_id" value="<?php echo ($_GET['wecha_id']); ?>" />
									<a id="showcard0" class="submit" href="javascript:void(0)" onclick="payformsubmit(<?php echo ($item["id"]); ?>)">确定使用</a>
								</p>
						</form>		
</div>
						
							<p class="explain_sn" id="shiyong<?php echo ($item["id"]); ?>" style="width: 70%;margin: 0px auto;color: #fff;">
			           			<a style="height: 25px;line-height: 25px;" class="submit" href="###" onclick="this.style.display='none';document.getElementById('queren<?php echo ($item["id"]); ?>').style.display='block'">点击立即使用</a>
			           		</p>
<b>详情说明</b>
<ul style="min-height:230px;">
<li><?php if($item["type"] == 1): ?>打折优惠券<?php else: ?>现金抵用券(每张抵用<?php echo ($item["price"]); ?>元)<?php endif; ?></li>
<li>每人最多领取<?php echo ($item["people"]); ?>张，您已经领取了<?php echo intval($item['useCount']);?>张</li>
<p><?php echo ($item["info"]); ?></p></ul>
<div style="clear:both;height:20px;"></div>
</div> 
<div style="clear:both;height:20px;"></div>
</div>
</div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<script>
function radiochange(e,tid){


	var unameEle = '<p style=" margin:10px 0 0 0"><input name="username" class="px" id="username'+tid+'" value="" type="text" placeholder="请输入商家用户名"></p>';
	var upassEle = '<p style=" margin:10px 0 0 0"><input name="password" class="px" id="password'+tid+'" value="" type="password" placeholder="请输入商家密码"></p>';
			

 
	var ptype = e.value;

			if(ptype == 1){
				var uname = document.getElementById('username'+tid);
				var upass = document.getElementById('password'+tid);
				
				uname.parentNode.removeChild(uname);
				upass.parentNode.removeChild(upass);

				
			}else{
				jQuery(function($) {
					var usetime_p = document.getElementById('usetime_p'+tid);
					var obj = document.getElementById('username'+tid);
					if(!obj) {
						
						$('#usetime_p'+tid).after(upassEle);
						$('#usetime_p'+tid).after(unameEle);
					}

				});			

			}
}

function payformsubmit(itemid){

  var o=document.getElementsByName('paytype');
 var len=o.length;   
    for (var j=0;j<len ;j++ )
    { if(o[j].checked==true)
     {
      var radioValue = o[j].value;
	  
     }
    }
	

	if(radioValue == 1){
		document.getElementById('payform'+itemid).submit();
	}else{
		use(itemid);
	}

}


var jQ = jQuery.noConflict();
function use(i){
	var o=document.getElementsByName('paytype');
	var len=o.length;   
    for (var j=0;j<len ;j++ )
    { if( o[j].checked==true )
     {
      var ptype = o[j].value;
     }
    }
	
	var password =  document.getElementById('password'+i).value;
	var money =  document.getElementById('money'+i).value;
	var s_money =  document.getElementById('s_money'+i).value;
	var usetime =  document.getElementById('usetime'+i).value;

	if(!money){
		alert('请输入金额');
		return false;
	}
	if(!usetime){
		alert('请输入使用张数');
		return false;
	}
	if(money!=s_money){
		alert('两次输入的金额不一致');
		return false;
	}
	var username =  document.getElementById('username'+i).value;
	
	var itemid=i;
	var submitData = {
		password:password,
		username:username,
		itemid:itemid,
		money: money,
		ptype: ptype,
		usetime: usetime,
		wecha_id:'<?php echo ($wecha_id); ?>',
		cat:3,
	};

	jQ.post('/index.php?g=Wap&m=Card&a=action_useCoupon&wecha_id=<?php echo ($wecha_id); ?>&token=<?php echo ($token); ?>', submitData,
	function(data) {

		if (data.success == 1) {
			document.getElementById('queren'+i).style.display='none';
			document.getElementById('password'+i).value = '';
			document.getElementById('money'+i).value='';
			alert(data.msg);
		}else{
			alert(data.msg);
		}
	}, "json");
}



</script>
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
<?php echo ($shareScript); ?>
</body>
</html>