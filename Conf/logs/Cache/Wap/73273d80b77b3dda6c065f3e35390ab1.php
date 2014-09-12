<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" /><meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="format-detection" content="telephone=no"/>
<title><?php echo ($metaTitle); ?></title>
<link rel="stylesheet" type="text/css" href="../tpl/static/repast/css/wei_dialog.css" media="all" />
<link rel="stylesheet" type="text/css" href="../tpl/static/repast/css/wei_canyin.css" media="all" />
<link rel="stylesheet" type="text/css" href="../tpl/static/repast/css/home.css" media="all">
<script type="text/javascript" src="../tpl/static/repast/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../tpl/static/repast/js/wei_webapp_v2_common.js"></script>
</head>
<link rel="stylesheet" type="text/css" href="../tpl/static/repast/css/style.css" media="all">
<body id="cardunion" class="mode_webapp2">
<div style="float:none;width:100%;" class="headselect">
	<a class="link_tel icon-phone">请选择订餐门店</a>
</div>

<?php if(is_array($company)): $i = 0; $__LIST__ = $company;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$com): $mod = ($i % 2 );++$i;?><div class="box box-list">
  <a href="<?php echo U('Repast/select', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$com['id']));?>" class="bd fw">
    <b><?php echo ($com['name']); ?></b>
    <p><?php echo ($com['address']); ?></p>
  </a><!-- 详情 -->
  <div class="ft table">
      <a class="td" href="<?php echo U('Repast/select', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$com['id']));?>">
        <img src="../tpl/static/repast/css/img/ico-wine.png">订餐
      </a>
      <a class="td order" href="tel:<?php echo ($com['tel']); ?>"><img src="../tpl/static/repast/css/img/ico-call.png">电话</a>
      <a class="td" href="<?php echo U('Card/companyMap', array('token'=>$token, 'wecha_id'=>$wecha_id, 'companyid'=>$com['id']));?>">
        <img src="../tpl/static/repast/css/img/ico-location.png">导航
      </a>
  </div>
</div><?php endforeach; endif; else: echo "" ;endif; ?>
<div class="box" style="background:#d2d1cd"></div>
<div class="box" style="background:#d2d1cd"></div>
 <style type="text/css">
ul, li { list-style:none; margin:0; padding:0 }
<?php if(ACTION_NAME == 'selectTable' OR ACTION_NAME == 'myOrder'): ?>.top_bar {position: static; z-index: 9; bottom: 0; left: 0; right: 0; margin: auto; font-family: Helvetica, Tahoma, Arial, Microsoft YaHei, sans-serif; }
<?php else: ?>
.top_bar {position: fixed; z-index: 9; bottom: 0; left: 0; right: 0; margin: auto; font-family: Helvetica, Tahoma, Arial, Microsoft YaHei, sans-serif; }<?php endif; ?>
.top_menu { display:-webkit-box; border-top: 1px solid #3D3D46; display: block; width: 100%; background: rgba(255, 255, 255, 0.7); height: 48px; display: -webkit-box; display: box; margin:0; padding:0; -webkit-box-orient: horizontal; background: -webkit-gradient(linear, 0 0, 0 100%, from(#524945), to(#48403c), color-stop(60%, #524945)); box-shadow: 0 1px 0 0 rgba(255, 255, 255, 0.1) inset; }
.top_bar .top_menu>li { -webkit-box-flex:1; position:relative; text-align:center; }
.top_menu li:first-child { background:none; }
.top_bar .top_menu>li>a { height:48px; margin-right: 1px; display:block; text-align:center; color:#FFF; text-decoration:none; text-shadow: 0 1px rgba(0, 0, 0, 0.3); -webkit-box-flex:1; }
.top_bar .top_menu>li.home { max-width:70px }
.top_bar .top_menu>li.home a { height: 66px; width: 66px; margin: auto; border-radius: 60px; position: relative; top: -22px; left: 2px; background: url('tpl/Wap/default/common/images/home.png') no-repeat center center; background-size: 100% 100%; }
.top_bar .top_menu>li>a label { overflow:hidden; margin: 0 0 0 0; font-size: 12px; display: block !important; line-height: 18px; text-align: center; }
.top_bar .top_menu>li>a img { padding: 3px 0 0 0; height: 24px; width: 24px; color: #fff; line-height: 48px; vertical-align:middle; }
.top_bar li:first-child a { display: block; }
.menu_font { text-align:left; position:absolute; right:10px; z-index:5; background: -webkit-gradient(linear, 0 0, 0 100%, from(#524945), to(#48403c), color-stop(60%, #524945)); border-radius: 5px; width: 120px; margin-top: 10px; padding: 0; box-shadow: 0 1px 5px rgba(0, 0, 0, 0.3); }
.menu_font.hidden { display:none; }
.menu_font { top:inherit !important; bottom:60px; }
.menu_font li a { height:40px; margin-right: 1px; display:block; text-align:center; color:#FFF; text-decoration:none; text-shadow: 0 1px rgba(0, 0, 0, 0.3); -webkit-box-flex:1; }
.menu_font li a { text-align: left !important; }
.top_menu li:last-of-type a { background: none; overflow:hidden; }
.menu_font:after { top: inherit!important; bottom: -6px; border-color: #48403c rgba(0, 0, 0, 0) rgba(0, 0, 0, 0); border-width: 6px 6px 0; position: absolute; content: ""; display: inline-block; width: 0; height: 0; border-style: solid; left: 80%; }
.menu_font li { border-top: 1px solid rgba(255, 255, 255, 0.1); border-bottom: 1px solid rgba(0, 0, 0, 0.2); }
.menu_font li:first-of-type { border-top: 0; }
.menu_font li:last-of-type { border-bottom: 0; }
.menu_font li a { height: 40px; line-height: 40px !important; position: relative; color: #fff; display: block; width: 100%; text-indent: 10px; white-space: nowrap; text-overflow: ellipsis; overflow: hidden; }
.menu_font li a img { width: 20px; height:20px; display: inline-block; margin-top:-2px; color: #fff; line-height: 40px; vertical-align:middle; }
.menu_font>li>a label { padding:3px 0 0 3px; font-size:14px; overflow:hidden; margin: 0; }
#menu_list0 { right:0; left:10px; }
#menu_list0:after { left: 20%; }
.top_bar .top_menu>li>a:hover, .top_bar .top_menu>li>a:active { background-color:#333; }
.menu_font li a:hover, .menu_font li a:active { background-color:#333; }
.menu_font li:first-of-type a { border-radius:5px 5px 0 0; }
.menu_font li:last-of-type a { border-radius:0 0 5px 5px; }
#plug-wrap { position: static; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0); z-index:8; }
</style>
<div class="top_bar" id="footer_menu">
	<ul id="top_menu" class="top_menu">
		<li><a href="<?php echo U('Index/index', array('token'=>$token, 'wecha_id'=>$wecha_id));?>"><img src="/tpl/User/default/common/images/photo/plugmenu6.png"><label>首页</label></a></li>
		<li><a href="<?php echo U('Repast/index', array('token'=>$token, 'wecha_id'=>$wecha_id));?>"><img src="/tpl/User/default/common/images/photo/plugmenu5.png"><label>选择</label></a></li>    
		<li><a onclick="t(1, '<?php echo U('Repast/dish', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$cid));?>');"><img src="/tpl/User/default/common/images/photo/plugmenu11.png"><label>点菜</label></a></li>
		<li><a onclick="javascript:displayit(3)" id="childmenu"><img src="/tpl/User/default/common/images/photo/plugmenu2.png"><label>我的</label></a>
			<ul id="menu_list3" class="menu_font" style=" display:none">
				<li><a onclick="t(3, '<?php echo U('Repast/myOrder', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$cid));?>');"><img src="/tpl/User/default/common/images/photo/plugmenu4.png"><label>我的订单</label></a></li>
				<li><a onclick="t(4, '<?php echo U('Repast/like', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$cid));?>');"><img src="/tpl/User/default/common/images/photo/plugmenu18.png"><label>我的喜欢</label></a></li>
			</ul>
		</li>
		<li class="footer_menu"><a onclick="t(5, '<?php echo U('Repast/mymenu', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$cid));?>');" id="my_menu"><span class="icons icons_5"><label id="num" class="num"><?php echo ($totalDishCount); ?></label></span></a></li>
	</ul>
</div>
<div id="plug-wrap" onclick="closeall()" style="display: none;"></div>
 
 <script>

var cid = '<?php echo ($cid); ?>';
$(document).ready(function() {
	var tt = 0;
	$("#childmenu").click(function(){
		clearTimeout(tt);
		$("#menu_list3").show();
	}).mouseleave(function(){
		tt = setTimeout("$('#menu_list3').hide();", 1000);
	});
	$("#menu_list3").mouseenter(function(){
		clearTimeout(tt);
		$(this).show();
	}).mouseleave(function(){
		tt = setTimeout("$('#menu_list3').hide();", 1000);
	});
});

function t(index, url) {
	if (cid > 0) {
		if (index == 3 || index == 4 || index == 5) {
			$.ajax({
	            'url': "<?php echo U('Repast/getInfo', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>",
	            'dataType': "json",
	            'success': function(db) {
	            	if (db.success == 1) {
	            		location.href = url;
	            	} else {
	            		MDialog.confirm('', db.msg, null,
	            	            '确定', function() {
	            	    					isCancle = false;
	            	    					location.href = "<?php echo U('Repast/index', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid' => $cid));?>";
	            	            }, null, null, null, null, null, true, true);
	            	}
	            }
	        });
		} else {
			location.href = url;
		}
	} else {
	    MDialog.confirm('', '请您先选择餐厅？', null,
	            '确定', function() {
	    					isCancle = false;
	    					location.href = "<?php echo U('Repast/index', array('token'=>$token, 'wecha_id'=>$wecha_id));?>";
	            }, null, null, null, null, null, true, true);
	}
}
</script>
<style>
.menu_font li a img {
margin-top: -30px;
}
</style>
<script type="text/javascript">
_onPageLoaded(function(){
    (function() {
        // ios下系统默认弹窗
        if (_isIOS) {
            return null;
        }
        var orderBtns = _qAll('.order');

        for(var i=0;i<orderBtns.length;i++) {
            orderBtns[i].onclick = function(e) {
                var self = this;
                var phone = self.getAttribute('href').match(/\d*-?\d+/);
                if (!phone[0]) {phone[0]='';}
                MDialog.confirm(
                    '', '<span style="text-align:center !important;display:inline-block;width:205px;">是否拨打预订电话<br/>'+phone[0]+'？</span>', null,
                    '确定', function(){
                        isCancle = false;

                        location.href = self.getAttribute('href');
                    }, null,
                    '取消', null, null,
                    null, true, true
                );

                return false;
            }
        }
    })();
});

window.shareData = {  
            "moduleName":"Repast",
            "moduleID":"<?php echo ($company[0]['id']); ?>",
            "imgUrl": "<?php echo ($company[0]['logourl']); ?>", 
            "timeLineLink": "<?php echo C('site_url') . U('Repast/index',array('token' => $_GET['token']));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Repast/index',array('token' => $_GET['token']));?>",
            "weiboLink": "<?php echo C('site_url') . U('Repast/index',array('token' => $_GET['token']));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
</body>

<?php echo ($shareScript); ?>
</html>