<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/wap/style.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/wap/back.css" media="all">
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/wap/share.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/wap/common.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/wap/index.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/waphome.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/reset.css" media="all">
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/jQuery.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/swipe.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/zepto.js"></script>

<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/Tabs/css/easy-responsive-tabs.css" media="all">
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/Tabs/js/easyResponsiveTabs.js"></script>

<title><?php echo ($es_data['title']); ?></title>
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta name="Keywords" content="pigcms专业微营销系统、微信营销、微信代运营、微信定制开发、微信托管、微网站、微商城、微营销">
<meta name="Description" content="小猪cms、pigcms专业微营销系统，国内最大的微信公众智能服务平台，小猪cms、pigcms专业微营销系统八大微体系：微菜单、微官网、微会员、微活动、微商城、微推送、微服务、微统计，企业微营销必备。">
<!-- Mobile Devices Support @begin -->
<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<!-- Mobile Devices Support @end -->
<script src="<?php echo STATICS;?>/vhouse/wap/sharedata.js"></script>

</head>

<body onselectstart="return true;" ondragstart="return false;">

<div class="wrapper" id="container">
<!-- start -->
<div class="act_top" id="actTop" style="">
  <div class="act_top_show">
  <img src="<?php echo ($es_data['banner']); ?>" width="720" height="175" id="bannerPic">
  </div>
  </div>
<style>
    img{width: 100%;max-height: 245px;}
</style>
 <div id="verticalTab">
            <ul class="resp-tabs-list">
                <li>楼盘简介</li>
                <li>楼盘地图</li>
                <li>视频欣赏</li>
                <li>项目简介</li>
                <li>交通配套</li>
            </ul>
            <div class="resp-tabs-container">
                <div style="padding: 10px;">
                    <div style="word-wrap: break-word;word-break: normal;">

                       <?php echo (trim(html_entity_decode($es_data['estate_desc']))); ?>
                    </div>

                </div>
                 <div>
                    <p>
        <a  href="http://chabus.duapp.com/mapapi.php?lng=<?php echo ($es_data['lng']); ?>&lat=<?php echo ($es_data['lat']); ?>&title=预约&info=温馨提示：楼盘大概位置">

    <span>地址： <?php echo ($es_data['place']); ?></span>
   <img alt="" src="http://api.map.baidu.com/staticimage?width=600&height=235&center=<?php echo ($es_data['address']); ?>&markers=<?php echo ($es_data['address']); ?>|<?php echo ($es_data['lng']); ?>,<?php echo ($es_data['lat']); ?>&zoom=10&markerStyles=s,A,0xff0000"  height="175" style="max-height: 240px;max-width: 390px;"/>
      </a></p>
                </div>
                <div>
                    <?php if($es_data['video'] == ''): ?>暂时没有楼盘视频欣赏。
                    <?php else: ?>
<div class="video-box tpl-video"   id="content" style="display:block;"><?php echo ($es_data['video']); ?></div>
<script src="tpl/Wap/default/common/wedding/js/play.js" type="text/javascript"></script><?php endif; ?>


                </div>
                <div>
                     <?php echo (trim(html_entity_decode($es_data['project_brief']))); ?>
                </div>
                <div>
                     <?php echo (trim(html_entity_decode($es_data['traffic_desc']))); ?>
                </div>
            </div>
        </div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#verticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true,   // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
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
</div>

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
<div mark="stat_code" style="width:0px; height:0px; display:none;"></div>

</body></html>