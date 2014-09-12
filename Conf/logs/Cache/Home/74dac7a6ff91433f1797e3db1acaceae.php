<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
<link rel="shortcut icon" href="favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<title><?php echo ($f_siteTitle); ?>欢迎你使用专业的微信营销系统</title>
<link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
<script src="<?php echo RES;?>/js/jquery-1.9.1.min.js"></script>
<script src="<?php echo RES;?>/js/parallax.js"></script>
<!--[if IE 6]><script type="text/javascript" src="js/dd_belatedpng.js"></script><![endif]-->
<!--[if IE 6]>
<script type="text/javascript">
 DD_belatedPNG.fix("img");
</script>
<![endif]-->

</head>
<!--[if lte IE 6]>
<style>
/*ie6提示*/
#ie6-warning{width:100%;background:#ffffe1;padding:5px 0;font-size:12px}
#ie6-warning p{width:1100px;margin:0 auto;}
</style>
<div id="ie6-warning" class="cl wp"><p>您正在使用 Internet Explorer 6，您的IE浏览器版本过低，在本页面的显示效果可能有差异。建议您升级到 <a href="http://www.microsoft.com/china/windows/internet-explorer/" target="_blank">Internet Explorer 8</a> 或以下浏览器：
<a href="http://www.mozillaonline.com/">Firefox</a> / <a href="http://www.google.com/chrome/?hl=zh-CN">Chrome</a> / <a href="http://www.apple.com.cn/safari/">Safari</a> / <a href="http://www.operachina.com/">Opera</a></p></div>
<![endif]-->
<body>
<!-- <div class="load" id="load">
	<div id="loadInside" style="display:none;">
		<p><img src="" data-src="images/load_2.png" alt="博采互动" /></p>
		<p id="loadImg" style="width: 0;"><img src="" data-src="images/load.png" alt="博采互动" /></p>
		<p class="loadTxt"><span id="loadTxt">0</span>%</p>
	</div>
	<p><img src="images/loading.gif" alt=""></p>
	<div class="load_bg"></div>
</div> -->
<div class="wrapHeader">
	<div class="header">
		<h1 class="logo"><a href="index.php"><img src="<?php echo C('site_logo');?>" alt="" title="" width="143" height="60" /></a></h1>
		<ul class="nav">
			<li><a href="javascript:void(0)" class="cur">首页</a></li>
			<li><a href="javascript:void(0)">营销手段</a></li>
			<li><a href="javascript:void(0)">六大优势</a></li>
			<li><a href="javascript:void(0)">特色功能</a></li>
			<li><a href="javascript:void(0)">技术特点</a></li>
		<?php if($_SESSION[uid]==false): ?><li><a href="<?php echo U('User/Index/index');?>">登录</a></li>
			<li><a href="<?php echo U('Index/reg');?>">注册</a></li>
			<?php else: ?>
			<li><a href="<?php echo U('User/Index/index');?>" hidefocus="true"  ><span style="color:red"><?php echo (session('uname')); ?></span></a>
			<a href="/#" onClick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a></li><?php endif; ?>

			
		</ul>
	</div>
</div>
<ul class="fixedNav">
	<li class="cur">
		<em class="icon"></em>
		<span class="txt">首&nbsp;&nbsp;&nbsp;&nbsp;页</span>
	</li>
	<li>
		<em class="icon"></em>
		<span class="txt">营销手段</span>
	</li>
	<li>
		<em class="icon"></em>
		<span class="txt">六大优势</span>
	</li>
	<li>
		<em class="icon"></em>
		<span class="txt">特色功能</span>
	</li>
	<li>
		<em class="icon"></em>
		<span class="txt">技术特点</span>
	</li>
	<li>
		<em class="icon"></em>
		<span class="txt">联系我们</span>
	</li>
</ul>
<div class="wrapBox" id="wrapBox">
	<div class="box b1_bg">
		<div class="load">
			<p><img src="<?php echo RES;?>/images/loading.gif" alt=""></p>
			<div class="load_bg"></div>
		</div>
		<div class="box_bg box1_bg zIndex40"><img src="" data-src="<?php echo RES;?>/images/b1_bg.jpg" alt=""></div>
		<div class="box_fixed b1_fixed">
			<div class="b1_01 zIndex50"><img src="" data-src="<?php echo RES;?>/images/b1_01.png" alt="" /></div>
			<div class="b1_02"><img src="" data-src="<?php echo RES;?>/images/b1_02.png" alt="" /></div>
			<div class="b1_03">
				<img src="" data-src="<?php echo RES;?>/images/b1_03.png" alt="" />
				<a href="javascript:void(0)" title="开始体验" class="b1_03_btn"><img src="" data-src="<?php echo RES;?>/images/b1_03_btn.png" alt="" /></a>
			</div>
		</div>
		<div class="b1_04 zIndex40"><img src="" data-src="<?php echo RES;?>/images/b1_04.png" alt="" /></div>
	</div>
	<div class="box b2_bg">
		<div class="load">
			<p><img src="<?php echo RES;?>/images/loading.gif" alt=""></p>
			<div class="load_bg"></div>
		</div>
		<div class="box_bg box2_bg"><img src="" data-src="<?php echo RES;?>/images/b2_bg.jpg" alt=""></div>
		<div class="box_fixed b2_fixed">
			<div class="b2_01"><img src="" data-src="<?php echo RES;?>/images/b2_01.png" alt="" /></div>
			<h2 class="b2_02">4亿人都在用手机浏览网页，<br />您的网站准备好了吗?</h2>
			<p class="b2_07">中国11.46亿网民中，78%在使用手机上网<br />
				现有的网站在手机上打开字太小、速度慢、导航复杂<br />
				糟糕的手机浏览体验可能导致79%的用户流失<br />
				抓住11亿手机用户，博采互动马上创建您的手机网站
			</p>
			<div class="b2_03 zIndex40"><img src="" data-src="<?php echo RES;?>/images/b2_03.png" alt="" /></div>
			<div class="b2_04 zIndex40"><img src="" data-src="<?php echo RES;?>/images/b2_04.png" alt="" /></div>
			<div class="b2_05 zIndex40"><img src="" data-src="<?php echo RES;?>/images/b2_05.png" alt="" /></div>
			<div class="b2_06 zIndex50"><img src="" data-src="<?php echo RES;?>/images/b2_06.png" alt="" /></div>
		</div>
	</div>
	<div class="box b3_bg">
		<div class="load">
			<p><img src="<?php echo RES;?>/images/loading.gif" alt=""></p>
			<div class="load_bg"></div>
		</div>
		<div class="box_bg box3_bg"><img src="" data-src="<?php echo RES;?>/images/b3_bg.jpg" alt=""></div>
		<div class="box_fixed b3_fixed">
			<div class="b3_tl box_tl">
				<h2>六大移动<span class="clfea005">营销手段</span>，未来触手可及！</h2>
				<p>Six mobile marketing tools, the future at your fingertips!</p>
			</div>
			<div class="b3_img"><img src="" data-src="<?php echo RES;?>/images/b3_01.png" alt="" /></div>
			<div class="b3_01 b3_txt">
				<strong>二维码名片</strong>
				<p>扫描二维码即可自动登陆网站，方便快捷。可自动生成<br />独立产品的二维码，在样本册上印上产品二维码，极速<br />查询更为详细的内容。</p>
			</div>
			<div class="b3_02 b3_txt">
				<strong>短信群发</strong>
				<p>在短信中插入网址，突破短信数字限制将丰富的内<br />容完全呈现在客户眼前。</p>
			</div>
			<div class="b3_03 b3_txt">
				<strong>一键呼叫</strong>
				<p>您的网站访客只需一个按键便可轻松拨打您<br />的联系电话，手机网站最佳移动营销功能让<br />您的电话响不停。</p>
			</div>
			<div class="b3_04 b3_txt">
				<strong>移动地图导航</strong>
				<p>不只显示地址文字，更插入移动地图，并且可以<br />路线导航，帮您的客户更方便找到您。</p>
			</div>
			<div class="b3_05 b3_txt">
				<strong>一键分享</strong>
				<p>当您的访客看到喜欢的内容时，只需一键便可将内容分<br />享到各大社交媒体或通过微信/短信分享给朋友。</p>
			</div>
			<div class="b3_06 b3_txt">
				<strong>微博、微信传播</strong>
				<p>巧妙运用微博微信进行移动营销，<br />抢占用户的手机终端。</p>
			</div>
		</div>
	</div>
	<div class="box b4_bg">
		<div class="load">
			<p><img src="<?php echo RES;?>/images/loading.gif" alt=""></p>
			<div class="load_bg"></div>
		</div>
		<div class="box_bg box4_bg"><img src="" data-src="<?php echo RES;?>/images/b4_bg.jpg" alt=""></div>
		<div class="box_fixed b4_fixed">
			<div class="b4_txt_box">
				<h2 class="b4_tl">手机网站六大优势，<br /><span>APP应用无法替代</span></h2>
				<div class="b4_txt b4_txt01">
					<strong>跨平台，节省开发成本</strong>
					<p>一次开发，所有平台都能使用。</p>
				</div>
				<div class="b4_txt b4_txt02">
					<strong>无需下载，即刻浏览</strong>
					<p>瞬间打开手机网站，无需下载，降低使用门槛。</p>
				</div>
				<div class="b4_txt b4_txt03">
					<strong>有效利用搜索引擎推广</strong>
					<p>手机网站可被搜索引擎检索。APP则无法被检索，不理推广。</p>
				</div>
				<div class="b4_txt b4_txt04">
					<strong>便于网络营销推广</strong>
					<p>网页链接可在多种渠道推广，APP则不支持超链接。</p>
				</div>
				<div class="b4_txt b4_txt05">
					<strong>易于维护</strong>
					<p>APP升级需要再次下载；而手机网站会自动更新。</p>
				</div>
				<div class="b4_txt b4_txt06">
					<strong>域名自动跳转，节省宣传成本</strong>
					<p>使用同一域名，能识别判断不同终端实现自动跳转。</p>
				</div>
			</div>
			<div class="b4_01">
				<img src="" data-src="<?php echo RES;?>/images/b4_01.png" alt="" />
				<p class="tl">智能手机版网站</p>
			</div>
			<div class="b4_02">
				<img src="" data-src="<?php echo RES;?>/images/b4_02.png" alt="" />
				<p class="tl">APP应用</p>
			</div>
		</div>
	</div>
	<div class="box b5_bg">
		<div class="load">
			<p><img src="<?php echo RES;?>/images/loading.gif" alt=""></p>
			<div class="load_bg"></div>
		</div>
		<div class="box_bg box5_bg"><img src="" data-src="<?php echo RES;?>/images/b5_bg.jpg" alt=""></div>
		<div class="box_fixed b5_fixed">
			<div class="b5_tl box_tl">
				<h2><span class="clfea005">特色</span>功能模块</h2>
				<!-- <p>生成APP，可免输入网址直接浏览，支持Android与iOS，更多功能联系我们！</p> -->
			</div>
			<p class="b5_txt">生成APP，可免输入网址直接浏览，支持Android与iOS，更多功能联系我们！</p>
			<div class="b5_01"><img src="" data-src="<?php echo RES;?>/images/b5_01.png" alt="" /></div>
			<div class="b5_ico">
				<p class="b5_ico01">二维码名片</p>
				<p class="b5_ico02">企业动态</p>
				<p class="b5_ico03">地图导航</p>
				<p class="b5_ico04">一键分享</p>
				<p class="b5_ico05">企业产品库</p>
				<p class="b5_ico06">生成APP</p>
			</div>
		</div>
	</div>
	<div class="box b6_bg">
		<div class="load">
			<p><img src="<?php echo RES;?>/images/loading.gif" alt=""></p>
			<div class="load_bg"></div>
		</div>
		<div class="box_bg box6_bg"><img src="" data-src="<?php echo RES;?>/images/b6_bg.jpg" alt=""></div>
		<div class="box_fixed b6_fixed">
			<h2 class="b6_tl">技术特点<br /><span>Technical Characteristics</span></h2>
			<div class="b6_cont">
				<div class="b6_img"><img src="" data-src="<?php echo RES;?>/images/b6_img.png" alt="" /></div>
				<div class="b6_arrow">
					<em class="b6_arrow01"></em>
					<em class="b6_arrow02"></em>
				</div>
				<div class="b6_txt b6_txt01"><i></i>网页优化加速<br />节省更多流量</div>
				<div class="b6_txt b6_txt02"><i></i>实时同步更新</div>
				<div class="b6_txt b6_txt03"><i></i>云同步，与PC版<br />共享数据库</div>
				<div class="b6_txt b6_txt04"><i></i>前沿的HTML5技术</div>
				<div class="b6_txt b6_txt05"><i></i>PHP+MYSQL安全高效</div>
				<div class="b6_txt b6_txt06"><i></i>移动地图及导航</div>
				<div class="b6_txt b6_txt07"><i></i>超强兼容，高端定制<br />安全监护，扩展升级</div>
			</div>
			<div class="b6_01"><img src="" data-src="<?php echo RES;?>/images/b6_01.png" alt="" /></div>
		</div>
	</div>
	<div class="box b7_bg">
		<div class="load">
			<p><img src="<?php echo RES;?>/images/loading.gif" alt=""></p>
			<div class="load_bg"></div>
		</div>
		<div class="box_bg box7_bg"><img src="" data-src="<?php echo RES;?>/images/b7_bg.jpg" alt=""></div>
		<div class="box_fixed b7_fixed">
			<div class="b7_tl box_tl">
				<h2><span class="clfea005">联系</span>我们</h2>
				<!-- <p>为您全力打造新移动互联时代的手机官网，帮助您充分利用移动网络渠道资源，随时随地向客户展示您的企业产品 ，深度挖掘网络渠道意向客户。<br />如果您对我们的新产品感兴趣，可以联系我们，老客户还有神秘礼品赠送哦~</p> -->
			</div>
			<div class="b7_contact">
				<strong class="clfea005 tel">13511351135</strong>
				<p class="service">
					<strong>在线客服</strong>
					<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=309433903&amp;site=qq&amp;menu=yes" target="_blank" class="qq qq01"></a>
					<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=309433903&amp;site=qq&amp;menu=yes" target="_blank" class="qq qq02"></a>
					<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=309433903&amp;site=qq&amp;menu=yes" target="_blank" class="qq qq03"></a>
				</p>
				<!-- <a href="javascript:void(0)" class="bocService" title="BOC官方客服"></a> -->
			</div>
			<div class="b7_bottom">
				<div class="b7_map">
					<p class="txt">地址：浙江省杭州市</p>
					<style type="text/css">
						html,body{margin:0;padding:0;}
						.iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
						.iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
					</style>
					<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
					 <!--百度地图容器-->
					<div class="img" style="width:413px;height:300px;border:#ccc solid 1px;" id="dituContent"></div>
				</div>
				<div class="b7_msg">
				<script>
				function ajax_sub(){
					var name=$('#username').val();
					var tel=$('#tel').val();
					var company=$('#company').val();
					var content=$('#content').val();
					if(name==""){
						$('#username').attr("placeholder", "请输入联系人");
						$('#username').focus();
						$('#username').select();
						return false;
					}
					if(tel==""){
						$('#tel').attr("placeholder", "请输入手机号码");
						$('#tel').focus();
						$('#tel').select();
						return false;
					}	
					if(tel){
						var tel=$("input[name=tel]").val();
						var me = false;
						var reg0 = /^13\d{9}$/;
						var reg1 = /^153\d{8}$/;
						var reg2 = /^159\d{8}$/;
						var reg3 = /^15\d{9}$/;
						var reg4 = /^18\d{9}$/;
						var my = false;
						if (reg0.test(tel))my=true;
						if (reg1.test(tel))my=true;
						if (reg2.test(tel))my=true;
						if (reg3.test(tel))my=true;
						if (reg4.test(tel))my=true;
						if (!my){
							$('#tel').val('');
							$('#tel').attr("placeholder", "手机号码输入有误，请重新输入");
							$('#tel').focus();
							$('#tel').select();
							return false;
						}
					}

					if(company==""){
						$('#company').attr("placeholder", "请输入公司名称");
						$('#company').focus();
						$('#company').select();
						return false;
					}
					if(content==""){
						$('#content').attr("placeholder", "请输入详细内容");
						$('#content').focus();
						$('#content').select();
						return false;
					}
					$("#msg").show().html('<img src="images/loading.gif">');
					
					$.post('welcome.php?post',{username:name,tel:tel,company:company,content:content},function(json){
						if(json.state==0){
							$('#username').val('');
							$('#tel').val('');
							$('#company').val('');
							$('#content').val('');
							$("#msg").show().html("<font color='#FF0000'>对不起，每天只能提交3次！</font>").fadeOut(2500);
						}else if(json.state==1){
							$("#msg").show().html("<font color='#FF0000'>请正确输入信息！</font>").fadeOut(2500);
						}else if(json.state==2){
							$('#username').val('');
							$('#tel').val('');
							$('#company').val('');
							$('#content').val('');
							$("#msg").show().html("<font color='#FF0000'>提交成功，我们会尽快电话联系您！</font>").fadeOut(2500);
						}else{
							$('#username').val('');
							$('#tel').val('');
							$('#company').val('');
							$('#content').val('');
							$("#msg").show().html("<font color='#FF0000'>提交失败，请重试！</font>").fadeOut(2500);
						}

					},'json');
					
				}
				</script>
					<h4>留言<span> / Message</span></h4>
					<div class="row">
						<input type="text" name="username" id="username" class="name" maxlength="20" placeholder="联系人"/>
						<input type="text" name="tel" id="tel" maxlength="15" placeholder="手机"/>
					</div>
					<div class="row">
						<input type="text" name="company" id="company" class="companyName" maxlength="20" placeholder="公司名称"/>
					</div>
					<div class="row">
						<textarea name="content" id="content" cols="30" rows="10" placeholder="详细内容"></textarea>
					</div>
					<div>
					<a href="javascript:void(0)" class="btn" onclick="ajax_sub()" style="float:left">提交</a>
					<span id="msg" style="float:left;margin-left:5px"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
//document.body.style.overflow = 'hidden';
var ie6 = !-[1,]&&!window.XMLHttpRequest;
ie6 || loadImg.init();
</script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(120.131853,30.30894);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
                //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"博采网络",content:"地址：杭州市莫干山路841弄23号中博文化创意园E座6层",point:"120.131143|30.307786",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
</body>
</html>