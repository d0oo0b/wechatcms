<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo C('site_name');?> | <?php echo C('site_title');?></title>
<meta name="baidu-site-verification" content="zJKQkNBQwT" />
﻿<meta content="<?php echo C('keyword');?>" name="Keywords">
<meta content="<?php echo C('content');?>" name="Description">
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/index.css" media="all">
<script src="<?php echo RES;?>/html5.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/jQuery.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/carouFredSel.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/weimob-index.js"></script>
<body>
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<iframe style="display: none; "></iframe>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--[begin]>
<script>
var $do_submit = false;

// 绑定回车键
$('#loginBox').keydown(function(e){
	if(13 == event.keyCode){
		login();
	}
});

function login()
{
	if (true == $do_submit)
	{
		return false;
	}

	var $pre_submit = '登录', $do_submit = '登录中...';
	var $username = $('#username').val(), $password = $('#password').val(), $keepalive = $('#rememberPwdIcon').val();
	$('#login_button').text($do_submit);
	$do_submit = true;

	// check
	if ('' == $username || '' == $password)
	{
		$('#err_tips').text('您输入的<?php echo C('site_name');?>号或密码错误，请重新输入！');
		$('#err_area').show();
		$('#login_button').text($pre_submit);
		$do_submit = false;
		return false;
	}

	var $login_data = {
		username:$username,
		password:$password,
		keepalive:$keepalive
	};
	$.post('/index.php?m=Users&amp;a=checklogin', $login_data, function(rs){
		if(rs.errno == 200)
		{
			location.href = rs.url_route;
		}
		else
		{
			$('#err_tips').text(rs.error);
			$('#err_area').show();
		}
		$('#login_button').text($pre_submit);
		$do_submit = false;
	}, 'json');
}
</script>
<![end]-->
<div class="nav clearfix">
	<div class="nav-content">
		<h1 class="left"><?php echo C('site_name');?>·微信营销，如此简单！</h1>
		<div class="right line-li">
			<ul>
				<li>
					<a href="/" class="hover">首页</a>
				</li>
				<li>
					<a href="<?php echo U('Home/Index/common');?>">经典案例</a>
				</li>
				<li>
					<a href="<?php echo U('Home/Index/gongneng');?>">功能介绍</a>
				</li>
				<li>
					<a href="<?php echo U('Home/Index/daili');?>">合作代理</a>
				</li>
				<li>
					<a href="#" target="_blank">更多服务</a>
				</li>
			<?php if($_SESSION[uid]==false): ?><li><a href="<?php echo U('Index/login');?>" class="hover">登录</a></li>
				<li><a href="<?php echo U('Index/reg');?>">注册</a></li>
			<?php else: ?><li>
			<a href="<?php echo U('User/Index/index');?>" hidefocus="true"  ><span style="color:red">管理中心</span></a>
			<a href="javascript:void(0)" onClick="Javascript:window.open('<?php echo U('Admin/Admin/logout');?>','_self')" >退出</a></li><?php endif; ?>		
			</ul>
		</div>
	</div>
</div>
<div id="ie9-tips" class="clearfix">
	<div id="tipsPanel">
		<div id="tipsDesc">公众微信开发、微信营销、微店铺、微信点餐、微汽车、KTV酒店预定、微信营销企业营销全面解决方案、微商家加盟热线:18730699599</div>
		<a id="stopSuggestA" href="javascript:;">×</a>
	</div>
</div>
<!-- banner -->
<div class="header clearfix" style="margin-top:-12px;">
	<div class="hd-c">
		<div class="banner">
			<ul>
									<li class="pic-intro" style="display: none; ">
						<div class="text">
							<h4>
								已有<font>120</font>商家入驻<?php echo C('site_name');?>，微信营销 如此简单
							</h4>
							<a id="start_btn" class="start" href="<?php echo U('Index/reg');?>" title="入驻<?php echo C('site_name');?>"></a>
						</div>
						<div class="pic">
							<img src="<?php echo RES;?>/banner-a.png" class="png-24" alt="banner">
						</div>
					</li>
									<li class="pic-intro" style="display: none; ">
						<div class="text">
							<h4>
								已有<font>120</font>商家入驻<?php echo C('site_name');?>，微信营销 如此简单
							</h4>
							<a id="start_btn" class="start" href="<?php echo U('Index/reg');?>" title="入驻<?php echo C('site_name');?>"></a>
						</div>
						<div class="pic">
							<img src="<?php echo RES;?>/banner-b.png" class="png-24" alt="banner">
						</div>
					</li>
									<li class="pic-intro" style="display: none; ">
						<div class="text">
							<h4>
								已有<font>120</font>商家入驻<?php echo C('site_name');?>，微信营销 如此简单
							</h4>
							<a id="start_btn" class="start" href="<?php echo U('Index/reg');?>" title="入驻<?php echo C('site_name');?>"></a>
						</div>
						<div class="pic">
							<img src="<?php echo RES;?>/banner-c.png" class="png-24" alt="banner">
						</div>
					</li>
									<li class="pic-intro" style="display: none; ">
						<div class="text">
							<h4>
								已有<font>120</font>商家入驻<?php echo C('site_name');?>，微信营销 如此简单
							</h4>
							<a id="start_btn" class="start" href="<?php echo U('Index/reg');?>" title="入驻<?php echo C('site_name');?>"></a>
						</div>
						<div class="pic">
							<img src="<?php echo RES;?>/banner-d.png" class="png-24" alt="banner">
						</div>
					</li>
									<li class="pic-intro" style="display: list-item; ">
						<div class="text">
							<h4>
								已有<font>120</font>商家入驻<?php echo C('site_name');?>，微信营销 如此简单
							</h4>
							<a id="start_btn" class="start" href="<?php echo U('Index/reg');?>" title="入驻<?php echo C('site_name');?>"></a>
						</div>
						<div class="pic">
							<img src="<?php echo RES;?>/banner-e.png" class="png-24" alt="banner">
						</div>
					</li>
									<li class="pic-intro" style="display: none; ">
						<div class="text">
							<h4>
								已有<font>120</font>商家入驻<?php echo C('site_name');?>，微信营销 如此简单
							</h4>
							<a id="start_btn" class="start" href="<?php echo U('Index/reg');?>" title="入驻<?php echo C('site_name');?>"></a>
						</div>
						<div class="pic">
							<img src="<?php echo RES;?>/banner-f.png" class="png-24" alt="banner">
						</div>
					</li>
							</ul>
			<div class="frame">
				<span class="changing-over">
																	<a href="http://demo.11wu.cn/#" class=""></a>
																	<a href="http://demo.11wu.cn/#" class=""></a>
																	<a href="http://demo.11wu.cn/#" class=""></a>
																	<a href="http://demo.11wu.cn/#" class=""></a>
																	<a href="http://demo.11wu.cn/#" class="now"></a>
																	<a href="http://demo.11wu.cn/#" class="last"></a>
									</span>
			</div>
		</div>
	</div>
</div>

<!-- trade -->
<div class="content clearfix">
	
	<div class="feature-content">
		<script>
			$(document).ready(function(){
				$(".feature-content dd").hover(
					function(){
						$(this).addClass("active")
					},
					function(){
						$(this).removeClass("active");
					}
				);
			});
		</script>
		<dl class="clearfix">
			<dd class="vborder">
				<a>
					<div class="fimg icon website"></div>
					<h3>微官网</h3>
				</a>
				<p>轻松智能建站<br>
			  打造酷炫微官网</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon member"></div>
					<h3>微会员</h3>
				</a>
				<p>方便携带&nbsp;&nbsp;永不挂失<br>消费积分&nbsp;&nbsp;一卡配备</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon activities"></div>
					<h3>微活动</h3>
				</a>
				<p>吸引用户参与<br>增强用户沉淀</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon Push"></div>
					<h3>微推送</h3>
				</a>
				<p>无线周边推广<br>提高品牌知名度</p>
			</dd>
			<dd>
				<a>
					<div class="fimg icon service"></div>
					<h3>微服务</h3>
				</a>
				<p>提供生活服务<br>增加用户粘性</p>
			</dd>
		</dl>
		<div class="line"></div>
		<dl class="clearfix">
			<dd class="vborder">
				<a>
					<div class="fimg icon message"></div>
					<h3>微留言</h3>
				</a>
				<p>意见？需求？疑问？<br>一键留言&nbsp;&nbsp;一键回复</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon albums"></div>
					<h3>微相册</h3>
				</a>
				<p>各行各业<br>照片展现轻松搞定</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon menu"></div>
					<h3>自定义菜单</h3>
				</a>
				<p>无需定制就可个性化设置</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon research"></div>
					<h3>微调研</h3>
				</a>
				<p>无需人力&nbsp;电子调研<br>为市场调研加一份有力数据</p>
			</dd>
			<dd>
				<a>
					<div class="fimg icon mtatistics"></div>
					<h3>微统计</h3>
				</a>
				<p>折线图清晰查询数据<br>助力企业营销</p>
			</dd>
		</dl>
		<div class="line"></div>
		<dl class="clearfix">
			<dd class="vborder">
				<a>
					<div class="fimg icon mstate"></div>
					<h3>微房产</h3>
				</a>
				<p>房产行业有力的解决方案<br>360度看房更给力</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon car"></div>
					<h3>微汽车</h3>
				</a>
				<p>预约试驾或保养 车主关怀<br>360度看车应有尽有</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon card"></div>
					<h3>微喜帖</h3>
				</a>
				<p>电子喜帖&nbsp;微信来袭<br>提供用户特别服务</p>
			</dd>
			<dd class="vborder">
				<a>
					<div class="fimg icon medical"></div>
					<h3>微医疗</h3>
				</a>
				<p>在线挂号或咨询<br>了解病情 微信都可以</p>
			</dd>
			<dd>
				<a>
					<div class="fimg icon hotel"></div>
					<h3>微酒店</h3>
				</a>
				<p>在线订房融入微信<br>酒店营销多一条有力途径</p>
			</dd>
		</dl>
	</div>
</div>

<!-- case -->
<div>
	<div class="list_carousel">
		<div class="caroufredsel_wrapper" style="display: block; text-align: start; float: none; position: relative; top: auto; right: auto; bottom: auto; left: auto; z-index: auto; width: 960px; height: 280px; margin: 0px; overflow: hidden; "><ul id="foo2" style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 10560px; height: 280px; z-index: auto; ">
					<li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case5.jpg" alt="case5.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case6.jpg" alt="case6.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case7.jpg" alt="case7.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case8.jpg" alt="case8.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case9.jpg" alt="case9.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case10.jpg" alt="case10.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case11.jpg" alt="case11.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case12.jpg" alt="case12.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case13.jpg" alt="case13.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case14.jpg" alt="case14.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case15.jpg" alt="case15.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case16.jpg" alt="case16.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case17.jpg" alt="case17.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case18.jpg" alt="case18.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case19.jpg" alt="case19.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case20.jpg" alt="case20.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case1.jpg" alt="case1.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case2.jpg" alt="case2.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case3.jpg" alt="case3.jpg">
					</a>
				</li><li>
					<a href="javascript:void(0);">
						<img src="<?php echo RES;?>/case4.jpg" alt="case4.jpg">
					</a>
				</li></ul></div>
		<div class="clearfix"></div>
		<a id="prev2" class="prev" href="#" style="display: block; "></a>
		<a id="next2" class="next" href="#" style="display: block; "></a>
		<script type="text/javascript">
			$(document).ready(function(){
				$('#foo2').carouFredSel({
					//auto: true,
					prev: '#prev2',
					next: '#next2',
					pagination: "#pager2",
					mousewheel: true,
					swipe: {
						onMouse: true,
						onTouch: true
					}
				});
			});
		</script>
	</div>
</div>
﻿<div class="erwei" title="微信扫一扫">
	<span class="hudongzhushou">官方微信</span>
	<div class="erwei_big" style="display:none;">
		<p>扫一扫，关注微香河官方微信</p>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		var erwei_time = null;
		$(".erwei").hover(function(){
			$(".erwei_big").show();
		}).mouseleave(function(){
				erwei_time = setTimeout(function(){
					$(".erwei_big").hide();
				},1000);
			});
		$(".erwei_big").mouseenter(function(){
			if(erwei_time){
				clearTimeout(erwei_time);
			}
		}).mouseleave(function(){
				erwei_time = setTimeout(function(){
					$(".erwei_big").hide();
				},1000);
			});
	});
</script>
<div class="footer">
	<div class="footer-content clearfix">
		<div class="foot-menu" style="padding-top:5px;">
			<p>手机：188888888 &nbsp;&nbsp; QQ：<?php echo C('site_qq');?> &nbsp;&nbsp; 邮箱：<?php echo C('site_email');?></p>
		  <p>地址：中国·香河&nbsp; 免费热线：18888888889</p>
		  <p><?php echo C('copyright');?>  &nbsp;&nbsp; <?php echo C('ipc');?></p>
	  </div>
  </div>
</div>
<!--公告信息-->
<script src="/images/css/qqserver.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/images/css/qqserver.css"/>
<div id="onlinebox" class="onlinebox onlinebox_1 onlinebox_1_2" style="position: fixed; top: 80px; right:35px; ">
	<div class="onlinebox-showbox" id="onlinebox-showbox" onMouseMove="qq(0)"><span>在<br>线<br>客<br>服<br></span></div>
	<div class="onlinebox-conbox" id="onlinebox-conbox" style="position: absolute; left: -94px; width: 118px; display:none;">
		<div class="onlinebox-top" id="onlinebox-top" title="点击可隐藏" onClick="qq(1)"><span>在线客服</span></div>
		<div class="onlinebox-center">
			<div class="onlinebox-center-box">
				<dl>
					<dt>使用帮助</dt>
						<dd><a href="tencent://message/?uin=<?php echo C('site_qq');?>&amp;Site=&amp;Menu=yes" title="QQ咨询服务">
						<img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('site_qq');?>:41"></a>
						</dd>
					</dl>
				<div class="clear"></div>
				<dl>
					<dt>技术询问</dt>
					<dd>
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('site_qq');?>&site=qq&menu=yes">
							<img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('site_qq');?>:41" alt="在线咨询服务"/>
						</a>
					</dd>
				</dl>
				<div class="clear"></div>
				<dl><dt>合作加盟</dt>
				<dd>
					<a href="tencent://message/?uin=<?php echo C('site_qq');?>&amp;Site=&amp;Menu=yes" title="QQ合作加盟">
						<img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('site_qq');?>:41">
					</a>
				</dd>
				</dl>
				<div class="clear"></div>
			</div>
		</div>
		<div class="onlinebox-bottom">
			<div class="onlinebox-bottom-box">
				<div class="online-tbox">
					<div style="text-align: center; "><strong>在线时间</strong><br>	08:30-17:30<br>
						<span style="color:#999;">—————————</span><br>
						<span style="font-weight: bold; ">服务热线<br>1888888888
							<span style="font-weight: normal; "><br></span>
						</span>
					</div>
				</div>
			</div>
		</div>
		<div class="onlinebox-bottom-bg"></div>
	</div>
</div>
<div style="display:none">
<?php echo C('counts');?>
</div>
<!--公告信息
<script type="text/javascript" src="./themes/Home/default/common/js/index.js"></script>
<script type="text/javascript">
/*250*200，创建于2014-1-1*/
var cpro_id = "u952545";
</script>
-->

</body></html>