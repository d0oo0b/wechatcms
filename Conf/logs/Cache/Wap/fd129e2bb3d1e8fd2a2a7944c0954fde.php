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
<div class="nav-bar">
    <ul class="nav" id="orderNav">
        <li class="dropdown-toggle activedesc" data-nav="category" order="time">
            <span style="padding-left:12px;">按时间</span>
            <b class="caret"></b>
        </li>
        <li class="dropdown-toggle" data-nav="category" order="salecount">
            <span style="padding-left:12px;">按人数</span>
            <b class="caret"></b>
        </li>
        <li class="dropdown-toggle" data-nav="biz" order="price">
            <span style="padding-left:12px;">按价格</span>
            <b class="caret"></b>
        </li>
        <li class="dropdown-toggle" data-nav="sort" order="discount">
            <span style="padding-left:12px;">按折扣</span>
            <b class="caret"></b>
        </li>
    </ul>
</div>
<div id="deals" class="deals-list">
<?php if(is_array($products)): $i = 0; $__LIST__ = $products;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$hostlist): $mod = ($i % 2 );++$i;?><div><a href="<?php echo U('Groupon/product',array('token'=>$token,'id'=>$hostlist['id'],'wecha_id'=>$wecha_id));?>" class="dl">
<?php if($hostlist['new'] == 1): ?><span class="dl-new"><span class="dl-mark">新单</span><i></i></span><?php endif; ?>
<img src="<?php echo ($hostlist["logourl"]); ?>" data-src="<?php echo ($hostlist["logourl"]); ?>" width="122" height="74" alt=""><ul><li class="dl-brand break-word"><?php echo ($hostlist["name"]); ?></li><li class="dl-title dl-indent break-word">&nbsp;&nbsp;截止<?php echo (date("Y-m-d",$hostlist["endtime"])); ?></li><li class="dl-price">&nbsp;<strong><?php echo ($hostlist["price"]); ?></strong>元<del><?php echo ($hostlist["oprice"]); ?>元</del><span>已售<?php echo ($hostlist['salecount']+$hostlist['fakemembercount']); ?></span></li></ul></a></div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
<div class="submit-box m-t10">
<button id="show_more" class="btn-large mj-submit mj-submit" page="2" <?php if($count > $pageSize): else: ?>style="display:none"<?php endif; ?>>加载更多</button>
</div>

<div class="shade hide"></div>
<input type="hidden" value="1" id="pageid" />
<input type="hidden" id="canScroll" value="1" />
<script type="text/javascript">
$(function() {
	$('#search_form').submit(function() {
		var search_name = $('#search_name').val();
		if (search_name == '') {
			return false;
		}
	});

	//点击排序
	var base_url = '<?php echo U('Groupon/grouponIndex',array('token'=>$token,'wecha_id'=>$wecha_id));?>';
	var b_url = '<?php if($isSearch != 1): echo U('Groupon/ajaxGrouponProducts',array('token'=>$token,'wecha_id'=>$wecha_id)); else: echo U('Groupon/ajaxGrouponProducts',array('token'=>$token,'keyword'=>$_GET['keyword'],'wecha_id'=>$wecha_id)); endif; ?>'
		method = 'DESC',
		_get_method = '<?php echo ($method); ?>',
		order = '<?php echo ($order); ?>',
		_get_order  = '';
	if (_get_order != '') {
		order = _get_order;
	}
	$('#orderNav li').removeClass('activedesc');
	$('#orderNav li').removeClass('activeasc');
	

	if (_get_method == 'DESC')  {
		method = 'ASC';
		$('#orderNav li[order="' + order + '"]').addClass('activedesc');
	}else{
		$('#orderNav li[order="' + order + '"]').addClass('activeasc');
	}
	
	
	$('#orderNav li').click(function() {
		var order = $(this).attr('order');
		var url = base_url + '&order=' + order+'&method='+method;
		location.href = url;
	});

	/*---------------------加载更多--------------------*/
	var total = <?php echo ($count); ?>,
		pagesize = <?php echo ($pageSize); ?>,
		pages = Math.ceil(total / pagesize);

	var com_link = '<?php echo U('Groupon/product',array('token'=>$token,'wecha_id'=>$wecha_id));?>';



	if (pages > 1) {
		var _page = $('#show_more').attr('page');
		$(window).bind("scroll",function() {
			if ($(document).scrollTop() + $(window).height() >= $(document).height()) {
				if (_page > pages) {
					$('#show_more').show().html('没有更多了').delay(1500).slideUp(1000);
					return;
				}
				$('#show_more').show().html('加载中...');
				
				if($('#canScroll').val()==0){//不要重复加载
					return;
				}
				$('#canScroll').attr('value',0);
				$.ajax({
					type : "GET",
					data : {'page' : _page, 'inajax' : 1},
					url :  b_url + '&order=' + order + '&method=' + method + '&pagesize='+pagesize,
					dataType : "json",
					success : function(RES) {
						$('#canScroll').attr('value',1);
						$('#show_more').hide().html('加载更多');
						
						data = RES.products;
						
						//alert(b_url + 'order=' + order + '&method=' + method + '&pagesize='+pagesize)
						if(data.length){
						$('#show_more').attr('page',parseInt(_page)+1);
						}
						_page = $('#show_more').attr('page');
						var _tmp_html = '';
						$.each(data, function(x, y) {
							_tmp_html +='<div><a href="' + com_link + '&id=' + y.id + '" class="dl"><img src="' +y.logourl + '" data-src="' +y.logourl + '" width="122" height="74" alt=""><ul><li class="dl-brand break-word">' + y.name + '</li><li class="dl-title dl-indent break-word">&nbsp;&nbsp;截止' + y.enddate + '</li><li class="dl-price">&nbsp;<strong>' + y.price + '</strong>元<del>' + y.oprice + '元</del><span>已售' + y.membercount + '</span></li></ul></a></div>';
						});
						$('#deals').append(_tmp_html);
						
					}
				});
			}
		});

		
	}
});
</script>
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