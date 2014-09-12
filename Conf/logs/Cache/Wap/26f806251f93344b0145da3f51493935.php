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
<style>
.btn_common{
    font-size:12px;
    padding: 5px 8px;
    border: 0;
    border-radius: 2px;
    cursor: pointer;
    background-color: #2ec366;
    color: #fff;
}
.dish_item textarea{
    padding: 8px;
    background: #eaeaea;
    border-radius: 12px;
    border: 1px solid #dedede;
    outline: none;
    resize: none;
    width: 100%;
    -webkit-box-sizing: border-box;
    box-shadow: none;
    display:none;
}
.dish_item{
    height:45px!important;
}
.dish_item.on{
    height:97px!important;
} 
.dish_item.on textarea{
    margin-top:3px;
    display:block;
}
</style>
<body id="page_intelOrder" class="myOrderCon">
<div class="container">
<header style="padding-top:20px;">
    <span class="pCount" style="">已点<l style="color:red" id="countnums" nums="<?php echo ($totalNum); ?>"><?php echo ($totalNum); ?></l>个菜</span>
    <?php if($userInfo['price'] > 0): ?><label><i>送餐费：</i><b class="duiqi"><?php echo ($userInfo['price']); ?></b><b class="duiqi">元</b></label><?php endif; ?>
    <label><i>共计：</i><b class="duiqi" id="total" price="<?php echo ($totalPrice); ?>"><?php echo ($totalPrice); ?></b><b class="duiqi">元</b>&nbsp;&nbsp;</label>   
</header>
<section style="margin-bottom:10px;">
    <article>
        <h2>我的菜单
            <button class="btn_add emptyIt" id="clearBtn" onclick="clearAll();">清空</button>
            <button class="btn_add" onclick="location.href = '<?php echo U('Repast/dish', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$cid));?>'">+加菜</button>
        </h2>
        <ul id="myorder" class="myorder">
	        <?php if(is_array($my_dish)): $i = 0; $__LIST__ = $my_dish;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$dish): $mod = ($i % 2 );++$i;?><li class="dish_item">                    
		        <span class="dishName"><?php echo ($dish['name']); ?></span>                    
		        <i><?php echo ($dish['price']); ?>元/份</i>                    
		        <!-- <span class="btn_common" onclick="slideOn(this, event);">添加备注</span>    -->                 
		        <div><textarea name="description" class="des" did="<?php echo ($dish['id']); ?>" id="des_<?php echo ($dish['id']); ?>"><?php echo ($dish['des']); ?></textarea></div>                    
		        <section class="bbox" dishname="<?php echo ($dish['name']); ?>" onclick="changeCount(this, event, '<?php echo ($dish['price']); ?>', '<?php echo ($dish['id']); ?>');">                        
		        <input class="btn-reduce" type="button" value="-">                        
		        <input class="numBox" name="numBox" type="text" value="<?php echo ($dish['nums']); ?>" price="<?php echo ($dish['price']); ?>" did="<?php echo ($dish['id']); ?>" readonly="readonly">                        
		        <input type="button" class="btn-plus" value="+">              
		        </section>                    
	        </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </article>
</section>
<section style="margin-bottom:80px;">
    <article>
        <form id="form_dish" action="<?php echo U('Repast/saveMyOrder', array('token'=>$token, 'wecha_id'=>$wecha_id, 'cid'=>$cid));?>" method="post">

            <table class="table_book">
                <tbody>
                <?php if($userInfo['takeaway'] != 2): ?><tr>
                    <td width="80px" style="width:80px;">手机号码：</td>
                    <td colspan="2"><?php echo ($userInfo['tel']); ?></td>
                </tr>
                <tr>
                    <td style="width:80px;">用户姓名：</td>
                    <td style="width:50%;"><?php echo ($userInfo['name']); ?>
                    </td>
                    <td>
                        <div class="group_checkbox" style="width:70px;display:none;">
                            <input type="checkbox" value="1" name="sex" checked="checked">
                        </div>
                    </td>
                </tr><?php endif; ?>
                <?php if($userInfo['takeaway'] == 1): ?><tr id="dishaddress">
                    <td style="width:80px;">送餐地址：</td>
                    <td><?php echo ($userInfo['address']); ?></td>
                </tr>
                <?php else: ?>
                <tr>
                    <td style="width:80px;">就餐桌号：</td>
                    <td colspan="2"><?php echo ($tableName); ?></td>
                </tr><?php endif; ?>
                <?php if($userInfo['takeaway'] != 2): ?><tr>
                    <td style="width:80px;">就餐时间：</td>
                    <td colspan="2"><?php echo (date("Y-m-d H:i:s",$userInfo["reservetime"])); ?>
                    </td>
                </tr>
                <tr>
                    <td style="width:80px;">预定人数：</td>
                    <td colspan="2"><?php echo ($userInfo["nums"]); ?>
                    </td>
                </tr>
                <tr>
                    <td style="width:80px;vertical-align:top;line-height:25px;">备注说明：</td>
                    <td colspan="2"><?php echo ($userInfo["des"]); ?>
                    </td>
                </tr><?php endif; ?>
				<tr>
				
                    
                               <label for="online"><input type="radio" name="paytype" checked="checked" id="online" value="0" /> 在线支付</label> &nbsp; &nbsp; &nbsp; 
                               <label for="cardpay"><input type="radio" name="paytype" id="cardpay" value="1" /> 会员卡支付</label>
                                
                            
                </tr>
            </tbody></table>
            <footer>
                <input type="button" value="确认预定" class="btn_2" id="submit_form">
            </footer>
        </form>
    </article>
</section>
</div>
<script>
function changeCount(thi, evt, price, id) {
    if ("button" == evt.target.type) {
        var counter = thi.querySelectorAll("input[name='numBox']")[0];
        var val = parseInt(counter.value);
        var countnums = parseInt($("#countnums").attr("nums"));
        var totalPrice = $("#total").attr("price");
        if ("btn-reduce" == evt.target.className) {
            val--;
        } else {
            val++;
        }
        counter.value = Math.max(0, val);
        if(val >= 0){
            if ("btn-reduce" == evt.target.className) {
                var num = countnums - 1;
                var tnum = -1;
                var pr =  parseFloat(totalPrice) - parseInt(price);
            } else {
                var tnum = 1;
                var num = countnums + 1;
                var pr = parseFloat(totalPrice) + parseInt(price);
            }
            $("#countnums").html(num);
            $("#countnums").attr("nums",num);
            $("#total").html(pr);
            $("#total").attr("price", pr);
        }
        editOrder(id, tnum, $('#des_' + id).val());
    }
}

function editOrder(id, num, des){
    $.ajax({
        'url':"<?php echo U('Repast/editOrder', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>",
        'data':{'id':id, 'num':num, 'des':des},
        'type':'POST',
        'async':'false',
        'success':function(db){}
    });
}

$(document).ready(function(){
    var min_height = $(document).height() - 80;
    $(".container").css("height", min_height + 'px');
    $('.des').blur(function(){
		var id = parseInt($(this).attr('did'));
		var des = $(this).val();
		editOrder(id, 0, des);
    });
    $('#submit_form').click(function() {
		$("#form_dish").submit();
		return false;
		
		
        $.ajax({
            'url': $('#form_dish').attr('action'),
            'type': 'post',
            dataType:'JSON',
            'success': function(response) {
                if (response.success == '1') {
        			if (response.isopen == 1) {
        				location.href = "<?php echo U('Alipay/pay',array('token'=>$token,'wecha_id'=>$wecha_id,'success'=>1,'from'=> 'Repast'));?>" + '&orderName=' + response.orderName + '&single_orderid=' + response.orderid + '&price=' + response.price;
                	} else {
                		window.location = "<?php echo U('Repast/myOrder', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>";
                	}
                } else {
                	 MDialog.alert(response.msg, '', null, '确定');
                    return false;
                }

            }
        });
    });
});
function clearAll() {
    MDialog.confirm('', '是否清空菜单？', null,
            '确定', function() {
                $.ajax({
                    'url': "<?php echo U('Repast/clearMyMenu', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>",
                    'success': function(db) {
                        $('#myorder').empty();
                        $('#total').text('0');
                    }
                });
            }, null, '取消', null, null, null, true, true);
}

function slideOn(thi, evt) {
    var li = $(thi).closest("li");
    li["toggleClass"]("on");
}
</script>
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
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Repast",
            "moduleID":"0",
            "imgUrl": "", 
            "timeLineLink": "<?php echo C('site_url') . U('Repast/mymenu',array('token' => $token, 'cid' => $cid));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Repast/mymenu',array('token' => $token, 'cid' => $cid));?>",
            "weiboLink": "<?php echo C('site_url') . U('Repast/mymenu',array('token' => $token, 'cid' => $cid));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>