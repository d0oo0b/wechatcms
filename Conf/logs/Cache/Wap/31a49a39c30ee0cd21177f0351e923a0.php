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
<body id="page_allMenu">
<div class="center">
    <nav id="navBar" style="height: 729px;">
    </nav>
    <section id="infoSection" style="height: 729px;">
        <article>
            <!--div class="h2">推荐菜</div-->
            <div id="pInfo">
			</div>
        </article>
    </section>
</div>
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
<script type="text/javascript">
window.selected = {
    total:0,
    dishes:{}
};

function setHeight(){
    var  cHeight;
    cHeight = document.documentElement.clientHeight;
    cHeight = cHeight +"px"
    document.getElementById("navBar").style.height =  cHeight;
    document.getElementById("infoSection").style.height =  cHeight;
}


function getAllList(){
    var params = {
    }
    MLoading.show('加载中');
     _doAjax("<?php echo U('Repast/GetDishList', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>", 'GET', params, function(res) {
        MLoading.hide();
        window.res = res;
        if(res && res.length){
            switchList();
            var navBar = document.getElementById("navBar");
            var TPL = '<dd categoryid="{id}" class="{selectedClass}" onclick="switchList({id});">{name}</dd>';
            (function(){
               var dds_HTML = iTemplate.makeList(TPL, res, function(k,v){
                    return {
                        selectedClass: 0 ==k?"active":""
                    }
               });
               navBar.innerHTML = "<dl>" + dds_HTML + "</dl>";
            })();
        }
    });
}
//
var index = 0;
function switchList(id){
    var ai = {};
    if(id){
        var dds = _qAll('#navBar dd');
        for(var i = 0;ci=window.res[i]; i++){
            dds[i].className = null;
            if(id == ci.id){
            	index = i;
                ai = ci;
                dds[i].className = "active";
            }
        }
    }else{
        ai = window.res[0];
    }
    var checkHtml = '';
    var TPL = '<dl dunitname="{unit}" dsubcount="1" dishid="{id}" dname="{name}" dtaste="" ddescribe="{note}" dprice="{price}" dishot="{tag_name}" dspecialprice="{discount_price}" disspecial="1" onclick="selectOne(this, {id}, {price});">\
            <dt><h3>{name}{html_name}</h3></dt>\
            <dd>\
                <a href="javascript:void(0)" class="dataIn" onclick="showImgDetail(this);event.stopPropagation();">\
                    <img src="{pic}" alt="" title="">';

			TPL += '<span style="font-size:10px;">{tag_name}</span>';
                                
                                
         TPL +='</a>\
            </dd>\
            <dd>\
                <em>{price}元/{unit}</em>\
            </dd>\
            <!--dd class="dpNum">961人点过</dd-->\
            <input type="checkbox" class="favourite" style="border:0;" value="{id}" {check} onclick="favourite(this, event);">\
            <button shopinfo="" class="{curState}"></button>\
        </dl>';
    document.getElementById("pInfo").innerHTML = iTemplate.makeList(TPL, ai.dishes, function(k,v){
		if(v.discount_price){
			v.price = v.discount_price;
		}
        return {
            curState: (v.select == '1')? "selectBtn choose choosen":"selectBtn choose  unchoose",
            check : (v.check == '1') ? "checked" : ''
        }
    });
}
//show img detail
function showImgDetail(thi){
    var parentDl = thi.parentNode.parentNode;
    var childImg = thi.childNodes[0]
    if(childImg.nodeType == 3){
        childImg = thi.childNodes[1];
    }

    popPic(childImg.src,
            parentDl.getAttribute('dname'),
            parentDl.getAttribute('dprice') + '元/' + parentDl.getAttribute('dunitName'),
            parentDl.getAttribute('dIsSpecial'),
            parentDl.getAttribute('dSpecialPrice') + '元/' + parentDl.getAttribute('dunitName'),
            parentDl.getAttribute('dsubCount'),
            parentDl.getAttribute('dtaste'),
            parentDl.getAttribute('ddescribe'),
            parentDl.getAttribute('dishot')
        );
}
//

function selectOne(container, dishid, price) {
    var btn = container.querySelectorAll("button")[0];
    if (btn.className.indexOf("choosen")>-1) {
        _removeClass(btn, 'choosen');
        _addClass(btn, 'unchoose');
        //unselected
        delete window.selected.dishes[dishid];
        window.selected.total -=1;
        editOrder(dishid, -1);
    } else {
        _removeClass(btn, 'unchoose');
        _addClass(btn, 'choosen');
        //selected
        window.selected.dishes[dishid] = {
            price:price,
            num:1
        }
        window.selected.total +=1;
        editOrder(dishid, 1);
    }
    if(!("origTotal" in window.selected)){
        window.selected.origTotal = parseInt(_q(".footer_menu .num").innerHTML);
    }
    _q(".footer_menu .num").innerHTML = window.selected.origTotal + window.selected.total;
    //console.log(window.selected);
}

//后台可自行扩展参数
//调用自定义弹层
function popPic(imgUrl,title,price, isSpecial, specialPrice, people,teast,assess,isHot){
    var _title = title,
        _price = price,
        _people = null;//people,
        _teast = teast,
        _assess = assess;

        var hotHtml = '';
        if (isHot != '' && isHot != null) {
        	hotHtml += '<b>'+isHot+'</b>';
        }
        _tmpHtml = "<div class='content'>"+hotHtml+"<img src='"+imgUrl+"' alt='' title=''><h2>"+_title;

        _tmpHtml += "<i>"+_price+"</i>";

        if (_people) {
            _tmpHtml += "<span>"+_people+"人点过</span>";
        }
        _tmpHtml += "</h2>";

        if (_teast) {
            _tmpHtml += "<h3>口味："+_teast+"</h3>";
        }

        if (_assess) {
            _tmpHtml += "<p>"+_assess+"</p>";
        }

        _tmpHtml += '</div>';
    MDialog.popupCustom(_tmpHtml,true,true);
}

window.addEventListener("DOMContentLoaded", function(){
    getAllList();
    setHeight();
}, false);
window.onresize = function(){setHeight();}
function favourite(obj, evt){
    evt.stopPropagation();
    var id = $(obj).val();
    var check = '';
    if($(obj).is(':checked')){
        check = '1';
    }else{
        check = '0';
    }
    $.ajax({
        url:"<?php echo U('Repast/dolike', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>",
        data:{'id':id,'check':check},
        type:'POST',
        dataType:'json',
        cache:false,
        beforeSend:function(){
            MLoading.show('加载中');
        },
        success:function(msgObj){
            MLoading.hide();
            if(msgObj.status == '0'){
                return false;
            }
        }
    });

    var td = window.res[index].dishes;
    for(var ii= 0; s = td[ii]; ii++) {
    	if (s.id == id) {
    		if (check == 1) {
    			window.res[index].dishes[ii].check = 1;
    		} else {
    			window.res[index].dishes[ii].check = 0;
    		}
    	}
    }
}

function editOrder(id, num){
    $.ajax({
        'url':"<?php echo U('Repast/editOrder', array('token'=>$token, 'wecha_id' => $wecha_id, 'cid' => $cid));?>",
        'data':{'id':id, 'num':num, 'des':''},
        'type':'POST',
        'async':'false',
        'success':function(db){}
    });
    
    var td = window.res[index].dishes;
    for(var ii= 0; s = td[ii]; ii++) {
    	if (s.id == id) {
    		if (num == 1) {
    			window.res[index].dishes[ii].select = 1;
    		} else {
    			window.res[index].dishes[ii].select = 0;
    		}
    	}
    }
}
</script>
</body>
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Repast",
            "moduleID":"0",
            "imgUrl": "", 
            "timeLineLink": "<?php echo C('site_url') . U('Repast/dish',array('token' => $token, 'cid' => $cid));?>",
            "sendFriendLink": "<?php echo C('site_url') . U('Repast/dish',array('token' => $token, 'cid' => $cid));?>",
            "weiboLink": "<?php echo C('site_url') . U('Repast/dish',array('token' => $token, 'cid' => $cid));?>",
            "tTitle": "<?php echo ($metaTitle); ?>",
            "tContent": "<?php echo ($metaTitle); ?>"
        };
</script>
<?php echo ($shareScript); ?>
</html>