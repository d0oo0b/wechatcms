<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html class=" clickberry-extension clickberry-extension-standalone"><head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
            <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
            <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
            <meta content="no-cache" http-equiv="pragma">
            <meta content="0" http-equiv="expires">
            <meta content="telephone=no, address=no" name="format-detection">
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <meta name="apple-mobile-web-app-capable" content="yes">
            <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

<meta content="clickberry-extension-here">
        <link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/wap/estate/style.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/wap/estate/back.css" media="all">
<script type="text/javascript" src="<?php echo STATICS;?>/wap/estate/share.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/wap/estate/common.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/wap/estate/house.js"></script>

<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/reset.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/wap/estate/home.css" media="all" />
<script type="text/javascript" src="<?php echo STATICS;?>/wap/estate/maivl.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/wap/estate/jQuery.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/wap/estate/swipe.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/wap/estate/zepto.js"></script>

<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/Tabs/css/easy-responsive-tabs.css" media="all">
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/Tabs/js/easyResponsiveTabs.js"></script>

<title>楼盘户型</title>

    </head>
    <body onselectstart="return true;" ondragstart="return false;">

  <div class="act_top" id="actTop">
            <div class="act_top_show">
                <img src="<?php echo ($es_data['house_banner']); ?>" width="720" height="130" id="bannerPic">
            </div>
    </div>

    <span class="gradient_h_wbw"></span>
    <div class="header">
        <div class="logohead">
            <h1 style="margin:5px;text-align: center;padding-top: 5px;"><?php echo ($es_data['title']); ?></h1>
        </div>
        <div style="clear: both;"></div>
    </div>
        <div class="main" style="padding-top: 10px;">

             <div id="horizontalTab">
            <ul class="resp-tabs-list">
            <?php if(is_array($housetype)): $i = 0; $__LIST__ = $housetype;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><img src="<?php echo ($vo['logo']); ?>" width="140" height="29" alt="" style="width:auto!important;max-width:180px;"><?php echo ($vo['name']); ?> <?php echo ($vo['title']); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <div class="resp-tabs-container">
             <?php if(is_array($housetype)): $i = 0; $__LIST__ = $housetype;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div>
                    <a href="javascript:void(0);" onclick="List.toggleList(<?php echo ($vo['id']); ?>,0);">
                  <strong><?php echo ($vo['title']); ?></strong> <br/>

                 <?php echo (trim(html_entity_decode($vo['desc_son']))); ?>
                <br />

                <strong><?php echo ($vo['name']); ?></strong> <br/> <em style="color:#2c2c2c"><?php echo ($vo['fang']); ?>房<?php echo ($vo['ting']); ?>厅  <?php echo ($vo['area']); ?> 平方米</em><br/>
                <?php echo (trim(html_entity_decode($vo['description']))); ?>
                <br />
                 </a>
                 <div class="house_photo house_arrow" style="display: -webkit-box;">
                 <a href="<?php echo U('Estate/show_album',array('token'=>$token,'id'=>$vo['id'],'wecha_id'=>$wecha_id));?>"  class="ico_type">户型图</a>
                 <?php if($vo['panorama_id'] != 0): ?>&nbsp;
                 <a href="<?php echo U('Panorama/item',array('token'=>$token,'id'=>$vo['panorama_id'],'wecha_id'=>$wecha_id,'sgssz'=>'mp.weixin.qq.com'));?>"  class="ico_360">全景图</a><?php endif; ?>
                 </div>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </div>

        </div>

<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true,   // 100% fit in a container
            //closed: 'accordion', // Start closed if in accordion view
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#tabInfo');
                var $name = $('span', $info);

                $name.text($tab.text());

                $info.show();
            }
        });
    });
</script>
<!-- end -->
<br> <br> <br>

<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/black/font-awesome.css?v=2013122318" media="all" />
<p><br/><br/><br/><br/></p>
<section>
            <div style="visibility: visible;" id="navList_box" class="box_swipe">
                <ul style="list-style: none; width: 1280px; transition: 0ms; -webkit-transition: 0ms; -webkit-transform: translate3d(0px, 0, 0);">
                <li style="width: 640px; display: table-cell; vertical-align: top;">
                <a href="<?php echo U('Estate/index',array('token'=>$token,'wecha_id'=>$wecha_id));?>">
                    <span class="icon-home"></span>
                        <img src="<?php echo RES;?>/black/arrow 4.png" alt="楼盘简介">
                        <div>楼盘简介</div>
                </a>
                <a href="<?php echo U('Estate/album',array('token'=>$token,'wecha_id'=>$wecha_id));?>" class="pigcms-list-item">
                    <span class="icon-picture"></span>
                    <img src="" alt="楼盘画册">
                    <div>楼盘画册</div>
                            </a>
                <a href="<?php echo U('Estate/housetype',array('token'=>$token,'wecha_id'=>$wecha_id));?>" class="pigcms-list-item">
                        <span class="icon-building"></span>
                        <img src="" alt="户型全景">
                        <div>户型全景</div>
                </a>
                <a href="<?php echo U('Estate/impress',array('token'=>$token,'wecha_id'=>$wecha_id));?>" class="pigcms-list-item">
                    <span class="icon-check"></span>
                        <img src="" alt="专家点评">
                        <div>点评•印象</div>
                </a>
                </li>
                    <li style="width: 640px; display: table-cell; vertical-align: top;">
                    <a href="<?php echo U('Estate/news',array('token'=>$token,'wecha_id'=>$wecha_id));?>" class="pigcms-list-item">
                        <span class="icon-rss-sign"></span>
                        <img src="" alt="新闻动态">
                        <div>新闻动态</div>
                    </a>
                    <a href="<?php echo U('Reservation/index',array('token'=>$token,'wecha_id'=>$wecha_id,'rid'=>$rid));?>" class="pigcms-list-item">
                    <span class="icon-edit"></span>
                        <img src="" alt="预约看房">
                        <div>预约看房</div>
                    </a>
                    <a href="<?php echo U('Card/index',array('token'=>$token,'wecha_id'=>$wecha_id));?>" class="pigcms-list-item">
                    <span class="icon-credit-card"></span>
                    <img src="" alt="会员尊享">
                    <div>会员尊享</div>
                    </a>
                    <a href="<?php echo U('Estate/aboutus',array('token'=>$token,'wecha_id'=>$wecha_id));?>" class="pigcms-list-item">
                    <span class="icon-phone"></span>
                    <img src="" alt="关于我们">
                    <div>关于我们</div>
                    </a>
                        </li>
                </ul>
                <ol>
                    <a href="javascript:navList_box.prev();">&nbsp;</a>
                    <a href="javascript:navList_box.next();">&nbsp;</a>
                </ol>
            </div>
        </section>
        <script>
            $(document).ready(function(){
                window.navList_box = new Swipe(document.getElementById('navList_box'), {auto:0});
            });
        </script>
</body></html>