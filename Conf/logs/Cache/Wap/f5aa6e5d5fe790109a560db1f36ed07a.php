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
<link rel="stylesheet" type="text/css" href="../tpl/static/repast/css/jquery-ui.css" media="all" />
<script type="text/javascript" src="../tpl/static/repast/js/jquery-ui.js"></script>
<script type="text/javascript" src="../tpl/static/repast/js/jquery-ui-timepicker-addon.js"></script>
<script src="../tpl/static/repast/js/jquery-ui-timepicker-zh-CN.js" type="text/javascript"></script>
<body id="page_intelOrder" class="myOrderCon">
<div style="float:none;width:100%;" class="headselect">
	<a class="link_tel icon-phone">请填写您的用餐信息</a>
</div>
<section id="container">
    <article>
        <form id="form_dish" action="<?php echo U('Repast/saveUser', array('token' => $token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>" method="post" target="hide">
            <table class="table_book">
                <tbody>
                <input type="hidden" name="takeaway" value="<?php echo ($takeaway); ?>"/>
                <input type="hidden" name="tel_auth_code_ajax" id="tel_auth_code_ajax" value="" />
                <input type="hidden" name="phone_authorize" id="phone_authorize" value="<?php echo $phone_authorize;?>" />
                <?php if($takeaway != 2): ?><tr>
                    <td width="80px" style="width:80px;">手机号码：</td>
                    <td colspan="2"><input type="tel" id="tel" name="tel" value="<?php echo ($fans['tel']); ?>" maxlength="11" placeholder="(必填*)请输入您的手机号码" style="width:200px;">
                    
                    
                    </td> 
                </tr>
<?php if ($phone_authorize == 1) {?>                
                <tr>
                    <td width="80px" style="width:80px;">手机验证码：</td>
                    <td colspan="2"><input type="text" size="6" id="tel_auth_code" name="tel_auth_code" value="" maxlength="6" placeholder="(必填*)请输入您的手机验证码" style="width:50px;">
                    <input type="button" value="取验证码" name="bt_tel_code" id="bt_tel_code" onClick="get_tel_auth_code()" />&nbsp;&nbsp;<span style="color:#F00" id="bt_tel_code_msg"></span>
                    </td>
                </tr>  
<?php }?>                              
                <tr>
                    <td style="width:80px;">用户姓名：</td>
                    <td style="width:50%;">
                        <input type="text" name="guest_name" id="guest_name" value="<?php echo ($fans['truename']); ?>" placeholder="(必填*)请输入您的真是姓名" maxlength="10" style="width:100px;">
                    </td>
                    <td>
                        <!-- <div class="group_checkbox" style="width:70px;display:inline;">
                            <input type="checkbox" value="1" name="sex" checked="checked">
                        </div> -->
                    </td>
                </tr>
                <tr>
                    <td style="width:80px;">就餐时间：</td>
                    <td colspan="2">
                    	<select name="redate" id="redate">
                    		<?php if(is_array($dates)): $i = 0; $__LIST__ = $dates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$d): $mod = ($i % 2 );++$i;?><option value="<?php echo ($d['k']); ?>"><?php echo ($d['v']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                    	</select>
                    	<select  name="rehour" id="rehour">
                    		<?php if(is_array($hours)): $i = 0; $__LIST__ = $hours;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$h): $mod = ($i % 2 );++$i;?><option value="<?php echo ($h['k']); ?>"><?php echo ($h['v']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                    	</select>
                    	<select  name="resecond" id="resecond">
                    		<?php if(is_array($seconds)): $i = 0; $__LIST__ = $seconds;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$s): $mod = ($i % 2 );++$i;?><option value="<?php echo ($s['k']); ?>"><?php echo ($s['v']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                    	</select>
                        
                    </td>
                </tr><?php endif; ?>
                <?php if($takeaway == 1): ?><tr id="dishaddress">
                    <td style="width:80px;">送餐地址：</td>
                    <td>
                        <input type="text" name="address" id="address" value="<?php echo ($fans['address']); ?>" placeholder="(必填*)送餐地址" style="width:200px;">
                    </td>
                </tr>
                <?php else: ?>
                <tr>
                    <td style="width:80px;">就餐桌号：</td>
                    <td colspan="2">
                    <select name="table" id="selecttable">
                    <?php if(is_array($tables)): $i = 0; $__LIST__ = $tables;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$table): $mod = ($i % 2 );++$i; if($table['isbox'] == 1): ?><option value="<?php echo ($table['id']); ?>">包厢：<?php echo ($table['name']); ?> (<?php echo ($table['num']); ?>座)</option>
                    	<?php else: ?>
                    	<option value="<?php echo ($table['id']); ?>">大厅：<?php echo ($table['name']); ?> (<?php echo ($table['num']); ?>座)</option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
                    </td>
                </tr><?php endif; ?>
                <?php if($takeaway != 2): ?><tr>
                    <td style="width:80px;">预定人数：</td>
                    <td colspan="2">
                        <input type="number" name="nums" id="nums" value="1" min="1" maxlength="3" style="width:100px;">
                    </td>
                </tr>
                <tr>
                    <td style="width:80px;vertical-align:top;line-height:25px;">备注说明：</td>
                    <td colspan="2">
                        <textarea name="remark" style="height:60px;" maxlength="100"></textarea>
                    </td>
                </tr><?php endif; ?>
            </tbody></table>
            <footer>
                <input type="button" value="确定点菜" class="btn_2" id="submit_form">
            </footer>
        </form>
    </article>
</section>
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
<script>
$(document).ready(function(){
    var min_height = $(window).height() - $("#footer_menu").height() - $(".headselect").height() - 60;
    $("#container").css({"min-height":min_height});
    
	$("#redate, #rehour, #resecond").change(function(){
		$.ajax({
            'url': "<?php echo U('Repast/getTable', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>",
            'data': {'redate':$('#redate').val(), 'rehour':$('#rehour').val(), 'resecond':$('#resecond').val()},
            'type': 'post',
            dataType:'JSON',
            'success': function(msgObj) {
            	var html = '';
            	$.each(msgObj, function(index, obj){
            		if (obj.isbox == 1) {
            			html += '<option value="' + obj.id + '">包厢：' + obj.name + '(' + obj.num + '座)</option>';
            		} else {
            			html += '<option value="' + obj.id + '">大厅：' + obj.name + '(' + obj.num + '座)</option>';
            		}
            	});
            	$('#selecttable').html(html);
            }
        });
    });
});
//$("#time_day").datetimepicker({format: 'yyyy-mm-dd hh:ii'});
var takeaway = '<?php echo ($takeaway); ?>';
$(function() {		   
	$('#bt_tel_code').click(function() {
		//tel_auth_code  get_tel_auth_code
		if (null == $('#tel').val().match(/^1\d{10,13}$/g)) {
			alert("请输入正确的手机号");return false;
		}	
		$('#bt_tel_code').attr("disabled","disabled");
		$('#bt_tel_code_msg').html('发送中...');
        $.ajax({
            'url': "<?php echo U('Repast/get_sms_auth_code', array('token' => $token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>",
            'data': $('#form_dish').serialize(),
            'type': 'post',
            dataType:'JSON',
            'success': function(msgObj) {
                if(msgObj.success == '1'){
					$("#tel_auth_code_ajax").val(msgObj.msg);
                }else{
                    alert(msgObj.msg);return false;
                }
            }
        });						
	});
    $('#submit_form').click(function() {
    	if (takeaway != 2) {
	        if (null == $('#tel').val().match(/^1\d{10,13}$/g)) {
	            alert("请输入正确的手机号");return false;
	        }
<?php if ($phone_authorize == 1) {?> 
	        if($("#tel_auth_code").val() == ''){
	            alert("请输入短信验证码");return false;
	        }
<?php }?>
	        if($("#guest_name").val() == ''){
	            alert("请输入用户姓名");return false;
	        }
	       
	        if (null == $('#nums').val().match(/^[0-9]*[1-9][0-9]*$/)) {
	            alert("请输入正确的预定人数");return false;
	        }
    	}
        $.ajax({
            'url': $('#form_dish').attr('action'),
            'data': $('#form_dish').serialize(),
            'type': 'post',
            dataType:'JSON',
            'success': function(msgObj) {
                if(msgObj.success == '1'){
                    window.location = "<?php echo U('Repast/dish', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>";
                }else{
                    alert(msgObj.msg);return false;
                }

            }
        });
    });
});
</script>
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Repast",
            "moduleID":"0",
            "imgUrl": "", 
            "timeLineLink": "<?php echo C('site_url') . U('Repast/selectTable',array('token' => $token, 'cid' => $cid));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Repast/selectTable',array('token' => $token, 'cid' => $cid));?>",
            "weiboLink": "<?php echo C('site_url') . U('Repast/selectTable',array('token' => $token, 'cid' => $cid));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>