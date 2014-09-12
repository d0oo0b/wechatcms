<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><?php echo ($tpl["wxname"]); ?></title>
        <base href="." />
        <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <meta name="format-detection" content="telephone=no" />
<script src="<?php echo RES;?>/css/guajiang/js/jquery.js" type="text/javascript"></script> 
<link href="/tpl/Wap/default/common/css/yl/news.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/tpl/Wap/default/common/css/flash/css/plugmenu.css">
    </head>
    <body onselectstart="return true;" ondragstart="return false;">
<div class="Listpage">
    <div id="todayList">
<ul  class="todayList">
   <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$so): $mod = ($i % 2 );++$i;?><li>
<if condition="$so['url']">
<a href="<?php echo U('Panorama/item',array('id'=>$so['id'],'token'=>$so['token']));?>">
<div class="img"><img src="<?php echo ($so["frontpic"]); ?>"></div>
<h2><?php echo ($so["name"]); ?></h2>
<p class="onlyheight"><?php echo ($so["intro"]); ?></p>
<div class="commentNum"></div>
</a>
</li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
</div>

<script type="text/javascript">
window.shareData = {  
            "moduleName":"Panorama",
            "moduleID":"0",
            "imgUrl": "", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Panorama/index',array('token'=>$token));?>",
            "tTitle": "全景",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>