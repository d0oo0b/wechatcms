<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="tpl/static/goldenEgg/wap/style/css/reset.css" media="all" />
<link rel="stylesheet" type="text/css" href="tpl/static/goldenEgg/wap/style/css/main.css" media="all" />
<link rel="stylesheet" type="text/css" href="tpl/static/goldenEgg/wap/style/css/dialog.css" media="all" />
<script type="text/javascript" src="tpl/static/goldenEgg/wap/style/js/zepto.js"></script>
<script type="text/javascript" src="tpl/static/goldenEgg/wap/style/js/dialog_min.js"></script>
<script type="text/javascript" src="tpl/static/goldenEgg/wap/style/js/player_min.js"></script>
<script type="text/javascript" src="tpl/static/goldenEgg/wap/style/js/main.js"></script>
<title><?php echo ($lottery["title"]); ?></title>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
        <meta name="Keywords" content="" />
        <meta name="Description" content="" />
        <!-- Mobile Devices Support @begin -->
            <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
            <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
            <meta content="no-cache" http-equiv="pragma">
            <meta content="0" http-equiv="expires">
            <meta content="telephone=no, address=no" name="format-detection">
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
            <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <!-- Mobile Devices Support @end -->
    </head>
    <body onselectstart="return true;" ondragstart="return false;">
        <script>
document.addEventListener("DOMContentLoaded", function(){
	playbox.init("playbox");
	//
	
	var shape = document.getElementById("shape");
	var hitObj = {
		<?php if($wecha_id != ''): ?>handleEvent: function(evt){
						if("SPAN" == evt.target.tagName){
				var audio = new Audio();
				audio.src = "tpl/static/goldenEgg/wap/smashegg.mp3";
				audio.play();
				setTimeout(function(){
					evt.target.classList.toggle("on");
					$.ajax({
						url: "?g=Wap&m=GoldenEgg&a=getajax",
						type: "POST",
						dataType: "json",
						async:true,
						data:{id:<?php echo ($lottery["id"]); ?>,rid:<?php echo ($lottery["rid"]); ?>,wechat_id:'<?php echo ($lottery["wecha_id"]); ?>',token:'<?php echo ($lottery["token"]); ?>'},
						success: function(res){
							if(1 == res.success){
								evt.target.classList.toggle("luck");
							}
							setTimeout(function(){
								if(1 == res.success){
									var urls = ["tpl/static/goldenEgg/wap/coin.png"];
									getCoin(urls);
									jg(res.data);
								}else{
									if(1 == res.error){
										alert(res.msg);
										return;
									}
									lqsb();
								}
							}, 2000);
						}
					});
					
				}, 100);
				$("#hit").addClass("on").css({left: evt.pageX+"px", top:evt.pageY +"px"});
			}
			shape.removeEventListener("click", hitObj, false);

					}
					<?php else: ?>
					alert('您不能参加此活动');<?php endif; ?>
	}
	shape.addEventListener("click", hitObj, false);
}, false);
</script>

<div class="body pb_10">
		<div style="position:absolute;left:10px;top:10px;z-index:350;">
		<a href="javascript:;" id="playbox" class="btn_music" onclick="playbox.init(this).play();" ontouchstart="event.stopPropagation();"></a><audio id="audio" loop src="tpl/static/goldenEgg/wap/default.mp3" style="pointer-events:none;display:none;width:0!important;height:0!important;"></audio>
	</div>
	<section class="stage">
		<img src="tpl/static/goldenEgg/wap/style/images/stage.jpg" />
		 <div id="shape" class="cube on">
	        <div class="plane one"><span><figure>&nbsp;</figure></span></div>
	        <div class="plane two"><span><figure>&nbsp;</figure></span></div>
	        <div class="plane three"><span><figure>&nbsp;</figure></span></div>
	      </div>
	      <div id="hit" class="hit"><img src="tpl/static/goldenEgg/wap/style/images/1.png" /></div>
	</section>
		<section>
		<div class="instro_wall">
		
		<?php if($wecha_id == ''): ?><article>
			<h6>参与次数</h6>
			<div style="line-height:200%">
				<p style="color:#f00;line-height:160%">您可能是从朋友圈等分享过的页面打开的链接，无法直接参与此活动，如需参与此活动请按照以下步骤操作：<br>1、关注微信名称“<?php echo ($wxuser["wxname"]); ?>”或者微信号“<?php echo ($wxuser["weixin"]); ?>”<br>2、输入关键词：“<?php echo ($lottery["keyword"]); ?>”</p>            
                </div>
			</article><?php endif; ?>
			
			<article>
				<h6>参与次数</h6>
				<div style="line-height:200%">
					<p>每人最多允许抽奖次数:<?php echo ($lottery["canrqnums"]); ?> <?php if($lottery["daynums"] != 0): ?>，每天只能抽<?php echo ($lottery["daynums"]); ?>次<?php endif; ?> <?php if($lottery["usenums"] > 0): ?>- 已抽取 <span class="red" id="usenums"><?php echo ($lottery["usenums"]); ?></span> 次<?php endif; ?></p>
				</div>
			</article>
						<article>
				<h6>活动说明</h6>
				<div style="line-height:200%">
					<p><?php echo ($lottery["info"]); ?></p>
        <p>活动时间:<?php echo (date("Y-m-d",$lottery["statdate"])); ?>至<?php echo (date("Y-m-d",$lottery["enddate"])); ?></p>		
        <p><strong><?php echo ($lottery["txt"]); ?></strong></p>     
				</div>
			</article>
			<?php if($lottery['end'] == 1): ?><article class="a3">
				<h6>结束说明</h6>
				<div style="line-height:200%">
				<?php echo ($lottery["endinfo"]); ?>
				</div>
			</article><?php endif; ?>
						<article class="a3">
				<h6>活动奖项</h6>
				<div style="line-height:200%">
					 <?php if ($lottery['statdate']>time()){echo '<p style="color:red">活动还没有开始 :(</p>';}?>
		 
            <p>一等奖: <?php echo ($lottery["fist"]); ?>  <?php if($lottery['displayjpnums']){ ?>奖品数量: <?php echo ($lottery["fistnums"]); } ?></p>
              <?php if($lottery['second'] != ''): ?><p>二等奖: <?php echo ($lottery["second"]); ?> <?php if($lottery['displayjpnums']){ ?>奖品数量: <?php echo ($lottery["secondnums"]); } ?></p><?php endif; ?>             
            <?php if($lottery['third'] != ''): ?><p>三等奖: <?php echo ($lottery["third"]); ?> <?php if($lottery['displayjpnums']){ ?>奖品数量: <?php echo ($lottery["thirdnums"]); } ?></p><?php endif; ?>
            <?php if($lottery['four'] != ''): ?><p>四等奖: <?php echo ($lottery["four"]); ?>  <?php if($lottery['displayjpnums']){ ?>奖品数量: <?php echo ($lottery["fournums"]); } ?></p><?php endif; ?>
            <?php if($lottery['five'] != ''): ?><p>五等奖: <?php echo ($lottery["five"]); ?>  <?php if($lottery['displayjpnums']){ ?>奖品数量: <?php echo ($lottery["fivenums"]); } ?></p><?php endif; ?>
            <?php if($lottery['six'] != ''): ?><p>六等奖: <?php echo ($lottery["six"]); ?>   <?php if($lottery['displayjpnums']){ ?>奖品数量: <?php echo ($lottery["sixnums"]); } ?></p><?php endif; ?>       
				</div>
			</article>


					</div>
	</section>

</div>
<script>
<?php if($isLotteryButNotInputTel == 1): ?>lq({sn:'<?php echo ($record["sn"]); ?>',prize_type:'<?php echo ($record["prize"]); ?>'});<?php endif; ?>
<?php if($isLotteryButNotSend == 1): ?>sqdh({sn:'<?php echo ($record["sn"]); ?>',prize_type:'<?php echo ($record["prize"]); ?>'});<?php endif; ?>
	function sqdh(arg){
		var d1 = new iDialog();
		d1.open({
			classList: "apply",
			title:"",
			close:"",
			content:'<div class="header"><h6 style="color:#fff;">已中'+arg.prize_type+'等奖,进行兑奖</h6></div>\
				<table>\
					<tr><td><input type="text" id="d1_1" placeholder="" maxlength="30" readonly="readonly" value="<?php echo ($lottery["renamesn"]); ?>：'+arg.sn+'" /></td></tr>\
					<tr><td><input type="text" id="d1_2" placeholder="请输入商家兑奖密码" maxlength="30" /></td></tr>\
				</table>',
			btns:[
				{id:"", name:"确定", onclick:"fn.call();", fn: function(self){
					var obj = {
						parssword: $.trim($("#d1_2").val()),
						id:<?php echo ($lottery["id"]); ?>,
						rid:<?php echo ($record["id"]); ?>,
					}
					$.post('?g=Wap&m=Lottery&a=exchange', obj,
					function(data) {
						if (data.success == true) {
							alert('兑奖状态已经记录');
							setTimeout(function(){
								location.href = location.href + "&r="+Math.random();
							},2000);
							
							self.die();
						} else {
							alert(data.msg);
						}
					}
					,'json')
				}},
				{id:"", name:"关闭", onclick:"fn.call();", fn: function(self){
					self.die();
				},}
			]
		});
	}

	//领取
	function lq(arg){
		var d2 = new iDialog();
		d2.open({
			classList: "get",
			title:"",
			close:"",
			content:'<div class="header"><h6><?php echo ($lottery["renamesn"]); ?>：'+arg.sn+'，'+arg.prize_type+'等奖</h6></div>\
				<table>\
					<tr><td><input type="text" id="d2_1" placeholder="请输入联系人" maxlength="30" /></td></tr>\
					<tr><td><input type="text" id="d2_2" placeholder="请输入<?php echo ($lottery["renametel"]); ?>，以便领取奖品" maxlength="30" /></td></tr>\
				</table>',
			btns:[
				{id:"", name:"领取", onclick:"fn.call();", fn: function(self){
					var obj = {
						wxname: $.trim($("#d2_1").val()),
						tel: $.trim($("#d2_2").val()),
						lid:<?php echo ($lottery["id"]); ?>,
						rid:0,
						wechaid:'<?php echo ($lottery["wecha_id"]); ?>',
						action:'add',
						sncode:arg.sn
					}
					$.ajax({
						url:"?g=Wap&m=Lottery&a=add",
						type:"POST",
						data:obj,
						dataType: "json",
						success: function(res){
							if (res.success == true) {
								self.die();
								lqcg();
							}else{
								console.log( );
							}
						}
					});
				}},
				{id:"", name:"关闭", onclick:"fn.call();", fn: function(self){
					if('no' != arg.loca){
						location.href = location.href + "&r="+Math.random();
					}
					self.die();
				},}
			]
		});
	}

	//结果
	function jg(arg){
		var d3 = new iDialog();
		d3.open({
			classList: "result",
			title:"",
			close:"",
			content:'<div class="header"><h5 style="color:#2f8ae5;font-size:16px;"><?php echo ($lottery["sttxt"]); ?></h6></div>\
				<table style="margin-top:60px;"><tr>\
					<td style="text-align:center"><label>'+arg.prize+'</label></td>\
				</tr></table>',
			btns:[
				{id:"", name:"领取奖品", onclick:"fn.call();", fn: function(self){
					self.die();
					lq(arg);
				}},
				{id:"", name:"关闭", onclick:"fn.call();", fn: function(self){
					location.href = location.href + "&r="+Math.random();
					self.die();
				},}
			]
		});
	}
	
	//领取结果-成功
	function lqcg(){
		var d5 = new iDialog();
		d5.open({
			classList: "success",
			title:"",
			close:"",
			content:'<div class="header"><h6>成功领取</h6></div>\
				<table><tr>\
					<td><img src="tpl/static/goldenEgg/wap/style/images/7.png" /></td>\
					<td style="width:170px;"><label>线下兑换请到指定地点，出示此<?php echo ($lottery["renamesn"]); ?>给我们的工作人确认兑换！</label></td>\
				</tr></table>',
			btns:[
				{id:"", name:"知道了", onclick:"fn.call();", fn: function(self){
					location.href = location.href + "&r="+Math.random();
					self.die();
				}},
			]
		});
	}

	//失败
	function lqsb(){
		var d6 = new iDialog();
		d6.open({
			classList: "failed",
			title:"",
			close:"",
			content:'<div class="header"><?php echo ($lottery["aginfo"]); ?></div>\
				<table><tr>\
					<td><img src="tpl/static/goldenEgg/wap/style/images/8.png" /></td>\
				</tr></table>',
			btns:[
				{id:"", name:"再砸一次", onclick:"fn.call();", fn: function(self){
					location.href = location.href + "&r="+Math.random();
				}},
			]
		});
	}
	
	window.alert = function(str){
		var d7 = new iDialog();
		d7.open({
			classList: "alert",
			title:"",
			close:"",
			content:str,
			btns:[
				{id:"", name:"确定", onclick:"fn.call();", fn: function(self){
					self.die();
				}},
			]
		});
	}
</script>
        		<div mark="stat_code" style="width:0px; height:0px; display:none;">
					</div>
					<script type="text/javascript">
window.shareData = {  
            "moduleName":"GoldenEgg",
            "moduleID":"<?php echo ($lottery["id"]); ?>",
            "imgUrl": "<?php echo ($lottery["starpicurl"]); ?>", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('GoldenEgg/index',array('token'=>$token,'id'=>$lottery['id']));?>",
            "tTitle": "<?php echo ($lottery["title"]); ?>",
            "tContent": "<?php echo ($lottery["info"]); ?>"
};
</script>
<?php echo ($shareScript); ?>
	</body>
</html>