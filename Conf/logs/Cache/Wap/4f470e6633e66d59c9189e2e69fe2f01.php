<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html><head>
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/wap/review.css" media="all">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/wap/common.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/wap/review.js"></script>
<title>专家点评•房友印象</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
<meta content="no-cache" http-equiv="pragma">
<meta content="0" http-equiv="expires">
<meta content="telephone=no, address=no" name="format-detection">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<script>


    function iswitch_panel(obj){
        var ipm = $('#impress');
        var pro = $('#professional');

        if(obj==0){
            ipm.show();
            pro.hide();
        }else{
            ipm.hide();
            pro.show();
        }
    }
</script>

</head>
    <body onselectstart="return true;" ondragstart="return false;">
        <style type="text/css">
    .review_man h3{font-size:18px;}
    #impress a{
        overflow:hidden;
    }
    .review_man h3{font-size:18px;}
    .is_1 a[style*='flex:0'], .is_2 a[style*='flex:0']{
        display:none;
    }
</style>

<div class="wrapper">
    <!-- start -->
        <ul class="nav_top" id="navTop" style="display: -webkit-box;">
            <li><a href="javascript:void(0);" onclick="iswitch_panel(0);return false;" class="current">房友印象</a></li>
            <li><a href="javascript:void(0);" onclick="iswitch_panel(1);return false;">专家点评</a></li>
        </ul>
    <!-- end -->
    <div id="impress" class="impress" style="display: block;">
    <h3>选择您的楼盘印象，喜欢就赞我吧</h3>

 <?php if(is_array($impress)): $k = 0; $__LIST__ = $impress;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($k%2): ?><div class="is_2">
 <a href="javascript:void(0);"  id="<?php echo ($vo['id']); ?>" onclick="getMyId(this,<?php echo ($vo['id']); ?>);return false;" class="is_22" style="-webkit-box-flex:<?php echo ($vo['comment']); ?>;">  <?php echo ($vo['title']); ?> <?php echo ($vo['comment']); ?> 人(赞)  </a>

     </div>
<?php else: ?>
     <div class="is_2">
     <a href="javascript:void(0);"  id="<?php echo ($vo['id']); ?>" onclick="getMyId(this,<?php echo ($vo['id']); ?>);return false;" class="is_23" style="-webkit-box-flex:<?php echo ($vo['comment']); ?>;">  <?php echo ($vo['title']); ?> <?php echo ($vo['comment']); ?> 人(赞)  </a>

     </div><?php endif; endforeach; endif; else: echo "" ;endif; ?>
<p><br></p>
<?php echo ($page2); ?>
    <p><br><br><br></p>

     </div>

    <div id="professional" style="display: none;" jqmoldstyle="block">
 <?php if(is_array($expert)): $i = 0; $__LIST__ = $expert;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$exp): $mod = ($i % 2 );++$i;?><div class="review_box">
    <div class="review_man"> <img src="<?php echo ($exp['face']); ?>" width="70" height="70" style="width:70px!important; height:70px!important; " alt="">  <h3><?php echo ($exp['name']); ?><em><br><?php echo ($exp['position']); ?></em></h3><p><?php echo ($exp['description']); ?></p></div>
    <div class="review_word"> <h2><?php echo ($exp['title']); ?></h2> <p><?php echo ($exp['comment']); ?></p>    </div>
   </div><?php endforeach; endif; else: echo "" ;endif; ?>

    <p><?php echo ($page); ?><br><br><br></p>

  </div>
</div>

<script>
function getMyId(obj,id){
    var imp_id   = id;
    var token    ="<?php echo ($token); ?>";
    var wecha_id ="<?php echo ($wecha_id); ?>";
    if (wecha_id == '') {
        alert("请关注后再重新点赞哦。");
        return
    }
   
    var submitData ={
        imp_id  : imp_id,
        token   : token,
        wecha_id:wecha_id,
    };

    var myurl="<?php echo U('Estate/impress_add',array('token'=>$token,'wecha_id'=>$wecha_id));?>"; 
    $.post(myurl,submitData,function(retuandata){
        var xobj=eval('('+retuandata+')');
         if(xobj.errno == 1){
            alert(xobj.msg);
            window.location.reload();
         }else if(xobj.errno == 2){
             alert(xobj.msg);

         }else if(xobj.errno == 0){
            alert(xobj.msg);
         }
    });
     
}
</script>


</body></html>