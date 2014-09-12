<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><?php echo ($info['title']); ?></title>
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="Keywords" content="<?php echo ($readinfo['title']); ?>,<?php echo ($readinfo['keyword']); ?>" />
    <meta name="Description" content="<?php echo ($readinfo['title']); ?> <?php echo ($readinfo['text']); ?>" />
    <meta charset="utf-8">
    <link rel="stylesheet" href="<?php echo STATICS;?>/schools/css/plugmenu.css">
    <link href="<?php echo STATICS;?>/schools/css/news3_3.css" rel="stylesheet" type="text/css" />

</head>
<script type="text/javascript">
    window.onload = function () {
        var oWin = document.getElementById("win");
        var oLay = document.getElementById("overlay");
        var oBtn = document.getElementById("popmenu");
        var oClose = document.getElementById("close");
        oBtn.onclick = function () {
            oLay.style.display = "block";
            oWin.style.display = "block";
            //oWin.style.zIndex = 99999;
        };
        oLay.onclick = function () {
            oLay.style.display = "none";
            oWin.style.display = "none";
        }
    };
</script>
<style>

</style>
<body id="news3">
<!--分享-->
    <div id="mcover" onclick="document.getElementById('mcover').style.display='';" style="display: none;">
        <img src="<?php echo STATICS;?>/schools/images/guide.png"></div>

   <script type="text/javascript">
window.shareData = {
            "moduleName":"School",
            "moduleID":"0",
            "imgUrl": "<?php echo ($info['head_url']); ?>",
            "sendFriendLink": "<?php echo C('site_url'); echo U('School/index',array('token'=>$token));?>",
            "tTitle": "<?php echo ($info['title']); ?>",
            "tContent": "<?php echo (mb_substr(strip_tags(html_entity_decode($info['info'])),0,89,'utf-8')); ?>..."
        };
</script>
<?php echo ($shareScript); ?>

    <div id="ui-header" >
        <div class="fixed">
            <a class="ui-title" id="popmenu">选择分类</a> <a class="ui-btn-left_pre" href="<?php echo U('School/index',array('token'=>$token,'wecha_id'=>$wecha_id));?>">
            </a><a class="ui-btn-right" href=""></a>
        </div>
    </div>
    <div id="overlay"></div>
<div id="win" >
<ul class="dropdown">
<li><a href="<?php echo U('School/public_list',array('token'=>$token,'wecha_id'=>$wecha_id,'cid'=>$info['menu1_id']));?>"><span><?php echo (($info['menu1'])?($info['menu1']):'学校简介'); ?></span></a></li>
<li><a href="<?php echo U('School/public_list',array('token'=>$token,'wecha_id'=>$wecha_id,'cid'=>$info['menu2_id'],'type'=>'assess'));?>"><span><?php echo (($info['menu2'])?($info['menu2']):'教师风采'); ?></span></a></li>
<li><a href="<?php echo U('School/public_list',array('token'=>$token,'wecha_id'=>$wecha_id,'cid'=>$info['menu3_id']));?>"><span><?php echo (($info['menu3'])?($info['menu3']):'同学天地'); ?></span></a></li>
<li><a href="<?php echo U('School/public_list',array('token'=>$token,'wecha_id'=>$wecha_id,'cid'=>$info['menu4_id'],'type'=>'yyclass'));?>"><span><?php echo (($info['menu4'])?($info['menu4']):'课程介绍'); ?></span></a></li>
<li><a href="<?php echo U('School/public_list',array('token'=>$token,'wecha_id'=>$wecha_id,'type'=>'school'));?>"><span><?php echo (($info['menu5'])?($info['menu5']):'食谱安排'); ?></span></a></li>
<li><a href="<?php echo U('School/public_list',array('token'=>$token,'wecha_id'=>$wecha_id,'cid'=>$info['menu6_id']));?>"><span><?php echo (($info['menu6'])?($info['menu6']):'校园公告'); ?></span></a></li>
<li><a href="<?php echo U('School/qresults',array('token'=>$token,'wecha_id'=>$wecha_id));?>"><span><?php echo (($info['menu7'])?($info['menu7']):'成绩查询'); ?></span></a></li>
<li><a href="<?php echo U('Reply/index',array('token'=>$token,'wecha_id'=>$wecha_id));?>"><span><?php echo (($info['menu8'])?($info['menu8']):'家长建议'); ?></span></a></li>
<li><a href="<?php echo U('School/public_list',array('token'=>$token,'wecha_id'=>$wecha_id,'type'=>'course'));?>"><span>课程预约</span></a></li>
<div class="clr"></div>
 </ul>
</div>

    <div class="Listpage" >
    <div class="top46" ></div>
    <div class="page-bizinfo" >
    <link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/tabCj/reset-min.css">
<link href='<?php echo STATICS;?>/tabCj/css.css' rel='stylesheet' type='text/css'>
<link href='<?php echo STATICS;?>/tabCj/tabulous.css' rel='stylesheet' type='text/css'>
<style>
  #tabs_container{
background-color: transparent;
  }
  h2{ font-size:18px; height:21px; line-height:21px;}
.imgcss{width:100%!important;border: 1px rgb(226, 226, 226) dashed;}
dl{ height: 148px; max-height: 160px;  border-bottom:1px dashed rgb(151, 145, 99);}
dt{ width: 150px; height:150px; float:left;}
dd{ width:230px;height:150px; float:left; text-align:left;padding:3px;}
</style>
      <?php $monarr = @unserialize($recipe['monday']);?>
      <?php $tuearr = @unserialize($recipe['tuesday']);?>
      <?php $wedarr = @unserialize($recipe['wednesday']);?>
      <?php $thuarr = @unserialize($recipe['thursday']);?>
      <?php $friarr = @unserialize($recipe['friday']);?>
      <?php $satarr = @unserialize($recipe['saturday']);?>
      <?php $sunarr = @unserialize($recipe['sunday']);?>
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1" title="">星期一</a></li>
            <li><a href="#tabs-2" title="">星期二</a></li>
            <li><a href="#tabs-3" title="">星期三</a></li>
            <li><a href="#tabs-4" title="">星期四</a></li>
            <li><a href="#tabs-5" title="">星期五</a></li>
<?php if($satarr['sat_zc'] != ''): ?><li><a href="#tabs-6" title="">星期六</a></li><?php endif; ?>
<?php if($sunarr['sun_zc'] != ''): ?><li><a href="#tabs-7" title="">星期日</a></li><?php endif; ?>
        </ul>

        <div id="tabs_container">
        <div id="tabs-1">
            <dl>
                <dt><img class="imgcss" src="<?php echo ($monarr['zc_pic']); ?>"></dt>
                <dd>
                  <h2>早餐</h2>
                  <span><?php echo ($monarr['mon_zc']); ?></span><br />
                 </dd>
            </dl>
<?php if($monarr['mon_zjc'] != ''): ?><dl>
                <dt><img class="imgcss"  src="<?php echo ($monarr['mon_zjc_pic']); ?>"></dt>
                <dd>
                  <h2>早加餐</h2>
                  <span><?php echo ($monarr['mon_zjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss"  src="<?php echo ($monarr['mon_wc_pic']); ?>"></dt>
                <dd>
                  <h2>午餐</h2>
                  <span><?php echo ($monarr['mon_wc']); ?></span><br />
                 </dd>
            </dl>
<?php if($monarr['mon_wjc'] != ''): ?><dl>
                <dt><img class="imgcss"  src="<?php echo ($monarr['mon_wjc_pic']); ?>"></dt>
                <dd>
                  <h2>午加餐</h2>
                  <span><?php echo ($monarr['mon_wjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($monarr['mon_wwc_pic']); ?>"></dt>
                <dd>
                  <h2>晚餐</h2>
                  <span><?php echo ($monarr['mon_wwc']); ?></span><br />
                 </dd>
            </dl>
<br>
<br>
<br>
<br>
<br>
        </div>

        <div id="tabs-2">
            <dl>
                <dt><img class="imgcss" src="<?php echo ($tuearr['tus_zc_pic']); ?>"></dt>
                <dd>
                  <h2>早餐</h2>
                  <span><?php echo ($tuearr['tus_zc']); ?></span><br />
                 </dd>
            </dl>
<?php if($tuearr['tus_zjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($tuearr['tus_zjc_pic']); ?>"></dt>
                <dd>
                  <h2>早加餐</h2>
                  <span><?php echo ($tuearr['tus_zjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($tuearr['tus_wc_pic']); ?>"></dt>
                <dd>
                  <h2>午餐</h2>
                  <span><?php echo ($monarr['tus_wc']); ?></span><br />
                 </dd>
            </dl>
<?php if($tuearr['tus_zjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($tuearr['tus_wjc_pic']); ?>"></dt>
                <dd>
                  <h2>午加餐</h2>
                  <span><?php echo ($tuearr['tus_wjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($tuearr['tus_wwc_pic']); ?>"></dt>
                <dd>
                  <h2>晚餐</h2>
                  <span><?php echo ($tuearr['tus_wwc']); ?></span><br />
                 </dd>
            </dl>
<br>
<br>
<br>
<br>
<br>
        </div>

        <div id="tabs-3">
            <dl>
                <dt><img class="imgcss" src="<?php echo ($wedarr['wed_zc_pic']); ?>"></dt>
                <dd>
                  <h2>早餐</h2>
                  <span><?php echo ($wedarr['wed_zc']); ?></span><br />
                 </dd>
            </dl>
<?php if($wedarr['wed_zjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($wedarr['wed_zjc_pic']); ?>"></dt>
                <dd>
                  <h2>早加餐</h2>
                  <span><?php echo ($wedarr['wed_zjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($wedarr['wed_wc_pic']); ?>"></dt>
                <dd>
                  <h2>午餐</h2>
                  <span><?php echo ($wedarr['wed_wc']); ?></span><br />
                 </dd>
            </dl>
<?php if($wedarr['wed_wjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($wedarr['wed_wjc_pic']); ?>"></dt>
                <dd>
                  <h2>午加餐</h2>
                  <span><?php echo ($wedarr['wed_wjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($wedarr['wed_wwc_pic']); ?>"></dt>
                <dd>
                  <h2>晚餐</h2>
                  <span><?php echo ($wedarr['wed_wwc']); ?></span><br />
                 </dd>
            </dl>
<br>
<br>
<br>
<br>
<br>
        </div>
        <div id="tabs-4">
            <dl>
                <dt><img class="imgcss" src="<?php echo ($thuarr['thu_zc_pic']); ?>"></dt>
                <dd>
                  <h2>早餐</h2>
                  <span><?php echo ($thuarr['thu_zc']); ?></span><br />
                 </dd>
            </dl>
<?php if($thuarr['thu_zjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($thuarr['thu_zjc_pic']); ?>"></dt>
                <dd>
                  <h2>早加餐</h2>
                  <span><?php echo ($thuarr['thu_zjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($thuarr['thu_wc_pic']); ?>"></dt>
                <dd>
                  <h2>午餐</h2>
                  <span><?php echo ($thuarr['thu_wc']); ?></span><br />
                 </dd>
            </dl>
<?php if($thuarr['thu_wjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($thuarr['thu_wjc_pic']); ?>"></dt>
                <dd>
                  <h2>午加餐</h2>
                  <span><?php echo ($thuarr['thu_wjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($thuarr['thu_wwc_pic']); ?>"></dt>
                <dd>
                  <h2>晚餐</h2>
                  <span><?php echo ($thuarr['thu_wwc']); ?></span><br />
                 </dd>
            </dl>
<br>
<br>
<br>
<br>
<br>
        </div>

        <div id="tabs-5">
           <dl>
                <dt><img class="imgcss" src="<?php echo ($friarr['fri_zc_pic']); ?>"></dt>
                <dd>
                  <h2>早餐</h2>
                  <span><?php echo ($friarr['fri_zc']); ?></span><br />
                 </dd>
            </dl>
            <?php if($friarr['fri_zjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($friarr['fri_zjc_pic']); ?>"></dt>
                <dd>
                  <h2>早加餐</h2>
                  <span><?php echo ($friarr['fri_zjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($friarr['fri_wc_pic']); ?>"></dt>
                <dd>
                  <h2>午餐</h2>
                  <span><?php echo ($friarr['fri_wc']); ?></span><br />
                 </dd>
            </dl>
            <?php if($friarr['fri_wjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($friarr['fri_wjc_pic']); ?>"></dt>
                <dd>
                  <h2>午加餐</h2>
                  <span><?php echo ($friarr['fri_wjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($friarr['fri_wwc_pic']); ?>"></dt>
                <dd>
                  <h2>晚餐</h2>
                  <span><?php echo ($friarr['fri_wwc']); ?></span><br />
                 </dd>
            </dl>
<br>
<br>
<br>
<br>
<br>
        </div>

        <div id="tabs-6" <?php if($satarr['sat_zc'] == ''): ?>style="display:none;"<?php endif; ?>>
           <dl>
                <dt><img class="imgcss" src="<?php echo ($satarr['sat_zc_pic']); ?>"></dt>
                <dd>
                  <h2>早餐</h2>
                  <span><?php echo ($satarr['sat_zc']); ?></span><br />
                 </dd>
            </dl>
             <?php if($satarr['sat_zjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($satarr['sat_zjc_pic']); ?>"></dt>
                <dd>
                  <h2>早加餐</h2>
                  <span><?php echo ($satarr['sat_zjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($satarr['sat_wc_pic']); ?>"></dt>
                <dd>
                  <h2>午餐</h2>
                  <span><?php echo ($satarr['sat_wc']); ?></span><br />
                 </dd>
            </dl>
            <?php if($satarr['sat_wjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($satarr['sat_wjc_pic']); ?>"></dt>
                <dd>
                  <h2>午加餐</h2>
                  <span><?php echo ($satarr['sat_wjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($satarr['sat_wwc_pic']); ?>"></dt>
                <dd>
                  <h2>晚餐</h2>
                  <span><?php echo ($satarr['sat_wwc']); ?></span><br />
                 </dd>
            </dl>
<br>
<br>
<br>
<br>
<br>
        </div>

        <div id="tabs-7" <?php if($sunarr['sun_zc'] == ''): ?>style="display:none;"<?php endif; ?>>
           <dl>
                <dt><img class="imgcss" src="<?php echo ($sunarr['sun_zc_pic']); ?>"></dt>
                <dd>
                  <h2>早餐</h2>
                  <span><?php echo ($sunarr['sun_zc']); ?></span><br />
                 </dd>
            </dl>
            <?php if($sunarr['sun_zjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($sunarr['sun_zjc_pic']); ?>"></dt>
                <dd>
                  <h2>早加餐</h2>
                  <span><?php echo ($sunarr['sun_zjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($sunarr['sun_wc_pic']); ?>"></dt>
                <dd>
                  <h2>午餐</h2>
                  <span><?php echo ($sunarr['sun_wc']); ?></span><br />
                 </dd>
            </dl>
            <?php if($sunarr['sun_wjc'] != ''): ?><dl>
                <dt><img class="imgcss" src="<?php echo ($sunarr['sun_wjc_pic']); ?>"></dt>
                <dd>
                  <h2>午加餐</h2>
                  <span><?php echo ($sunarr['sun_wjc']); ?></span><br />
                 </dd>
            </dl><?php endif; ?>
            <dl>
                <dt><img class="imgcss" src="<?php echo ($sunarr['sun_wwc_pic']); ?>"></dt>
                <dd>
                  <h2>晚餐</h2>
                  <span><?php echo ($sunarr['sun_wwc']); ?></span><br />
                 </dd>
            </dl>
<br>
<br>
<br>
<br>
<br>
        </div>


        </div><!--End tabs container-->

    <!-- </div> --><!--End tabs-->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/tabCj/tabulous.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/tabCj/js.js"></script>

        <div class="page-content"></div>
    </div>
<script>
   $('#plug-wrap').removeClass();
</script>
<style>
    #plug-wrap{z-index: -1}
</style>
<div id="mess_share" >
    <div id="share_1">
        <button class="button2" onclick="document.getElementById('mcover').style.display='block';">
            <img src="<?php echo STATICS;?>/schools/images/icon_msg.png">&nbsp;发送给朋友</button>
    </div>
    <div id="share_2">
        <button class="button2" onclick="document.getElementById('mcover').style.display='block';">
            <img src="<?php echo STATICS;?>/schools/images/icon_timeline.png">&nbsp;分享到朋友圈</button>
    </div>
    <div class="clr"></div>
    <a target="_self" href="#news3" class="footer"><span class="top">返回顶部</span></a>
</div>

    <div class="copyright">
      <span class="copyright">
    <?php if($iscopyright == 1): echo ($homeInfo["copyright"]); ?>
    <?php else: ?>
    <?php echo ($siteCopyright); endif; ?>
    </span></div>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<?php if($radiogroup > 8): ?><br>
<br><?php endif; ?>
<script>
function displayit(n){
	for(i=0;i<4;i++){
		if(i==n){
			var id='menu_list'+n;
			if(document.getElementById(id).style.display=='none'){
				document.getElementById(id).style.display='';
				document.getElementById("plug-wrap").style.display='';
			}else{
				document.getElementById(id).style.display='none';
				document.getElementById("plug-wrap").style.display='none';
			}
		}else{
			if($('#menu_list'+i)){
				$('#menu_list'+i).css('display','none');
			}
		}
	}
}
function closeall(){
	var count = document.getElementById("top_menu").getElementsByTagName("ul").length;
	for(i=0;i<count;i++){
		document.getElementById("top_menu").getElementsByTagName("ul").item(i).style.display='none';
	}
	document.getElementById("plug-wrap").style.display='none';
}

document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
	WeixinJSBridge.call('hideToolbar');
});
</script> 
</div>
<script>
   $('#plug-wrap').removeClass();
</script>
<style>
    #plug-wrap{z-index: -1}
</style>

    <script type="text/javascript">
        // function dourl(url) {
        //     location.href = url;
        // }
    </script>

   <!-- <script src="<?php echo STATICS;?>/schools/js/zepto.min.js" type="text/javascript"></script>
    <script src="<?php echo STATICS;?>/schools/js/plugmenu.js" type="text/javascript"></script> -->


</body>
</html>