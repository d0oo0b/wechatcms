<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html><head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="./tpl/static/applegame/wap/res/index.css" media="all">
		<title><?php echo ($title); ?></title>
		<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
            <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
            <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
            <meta content="no-cache" http-equiv="pragma">
            <meta content="0" http-equiv="expires">
            <meta content="telephone=no, address=no" name="format-detection">
            <meta name="apple-mobile-web-app-capable" content="yes" /> <!-- apple devices fullscreen -->
            <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
        <style>
            img{max-width:100%!important;}
        </style>
    </head>
    <body onselectstart="return true;" ondragstart="return false;">
    <style type="text/css">
        #start-page-main {background:url(./tpl/static/applegame/wap/images/qixibg.jpg) no-repeat center 0 #031448;background-size:100%}
    </style>
	
    <script src="./tpl/static/applegame/wap/res/lxb.js" charset="utf-8" type="text/javascript"></script>

	<script type="text/javascript">
        (function () {
							
			window.start_page_config = {
				NEEDREGISTER : false,
				RANKTOTALPAGE:273,
				NUMLIMIT:false,
				TOTALRESTTIMES:10000,
				URL:{
                RANKDATA:"#"
                },
                PATH:{
                    GAME:"<?php echo U('AppleGame/game',array('token'=>$_GET['token'],'id'=>intval($_GET['id']),'wecha_id'=>$_GET['wecha_id']));?>"
                }
            }
			
        })();
    </script>
	<script type="text/javascript" src="./tpl/static/applegame/wap/res/zepto_min.js"></script>
	<script type="text/javascript" src="./tpl/static/applegame/wap/res/LocalResizeIMG_min.js"></script>
	<script type="text/javascript" src="./tpl/static/applegame/wap/res/mobileBUGFix_min.js"></script>
	<script type="text/javascript" src="./tpl/static/applegame/wap/res/iscroll_min.js"></script>
	<script type="text/javascript" src="./tpl/static/applegame/wap/res/index.js"></script>
<div id="start-page">
	<div id="start-page-main">
		<div id="btn-start" class="anim"></div>
		<!-- <a id="btn-prize" class="anim" href="#"></a> -->
		<div class="panel-container">
			
			<ul style="width:100%;" class="container-title">
				<li style="width:50%;float:left"><a class="btn-rank"></a></li>
				<li style="width:50%;"><a class="btn-activity"></a></li>
			</ul>
			
			<div class="container-body">
				<div class="container-content container-rank">
					<table class="table-title">
						<colgroup><col width="20%">
						<col width="20%">
						<col width="40%">
						<col width="20%">
						</colgroup><tbody><tr>
							<th></th>
							<th><span class="icon icon-head"></span></th>
							<th><span class="icon icon-nick"></span></th>
							<th><span class="icon icon-time"></span></th>
						</tr>
					</tbody></table>
					<div style="overflow: hidden;" class="table-scroll">
						<table style="transition-property: transform; transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);" class="table-body">
							<colgroup><col width="20%">
							<col width="20%">
							<col width="40%">
							<col width="20%">
							</colgroup>
							<tbody>
							<?php if(is_array($record)): $i = 0; $__LIST__ = $record;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$record): $mod = ($i % 2 );++$i;?><tr height="60px;">
									<td>
										<span class="<?php if($i < 4): ?>icon_rank rank<?php echo ($i); endif; ?>"><?php if($i > 3): echo ($i); endif; ?></span>
									</td>
									<td>
										<span class="icon-img-bg">
											<img class="icon-img" src="<?php echo ($record["portrait"]); ?>">
										</span>
									</td>
									<td><?php echo ($record["wecha_name"]); ?></td>
									<td><?php echo ($record["time"]); ?></td>
								</tr><?php endforeach; endif; else: echo "" ;endif; ?>

						</tbody>
					</table>
					
					<div style="position: absolute; z-index: 100; width: 7px; bottom: 2px; top: 2px; right: 1px; pointer-events: none; transition-property: opacity; overflow: hidden; opacity: 1;"><div style="position: absolute; z-index: 100; background: none repeat scroll 0% 0% padding-box rgba(0, 0, 0, 0.5); border: 1px solid rgba(255, 255, 255, 0.9); box-sizing: border-box; width: 100%; border-radius: 3px; pointer-events: none; transition-property: transform; transition-timing-function: cubic-bezier(0.33, 0.66, 0.66, 1); transform: translate(0px, 0px) translateZ(0px); height: 215px;"></div></div></div>
					<table class="table-bottom">
						<colgroup><col width="20%">
						<col width="80%">
						</colgroup><tbody><tr>
							
							<td>
								<?php if($myinfo == NULL): ?><br /><?php else: ?><span class="icon-img-bg">
									<img src="<?php echo ($myinfo["portrait"]); ?>" class="icon-img">
								</span><?php endif; ?>
							</td>
							<td>
								<?php if($myinfo == NULL): ?><br /><?php else: ?>我的排名：<b><?php echo ($myinfo["rank"]); ?></b>   最佳：<b><?php echo ($myinfo["time"]); ?></b><?php endif; ?>
							</td>
							
						</tr>
					</tbody></table>
				</div>
				<div class="container-content container-acitivity">
						<div class="container-activity-box">
							<div style="overflow: hidden;" class="container-activity-content">
								<div style="transition-property: transform; transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);" class="text">
									<span class="icon2 icon-time"></span><br>
									<?php echo (date('Y年m月d日',$linfo["statdate"])); ?>——<?php echo (date('Y年m月d日',$linfo["enddate"])); ?>  <br><br>
									<span class="icon2 icon-rule"></span>
									<p>
										<?php echo ($linfo["title"]); ?><br/>
										每人最多有<?php echo ($linfo["canrqnums"]); ?>次机会
									</p>
								
									<br />
									<p>
										本活动奖项：<?php echo $prizeStr;?>
									</p>
								
									<br />
									<p>
										<?php echo ($linfo["info"]); ?>
									</p>

<br><br>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="company-rights">©小猪CMS版权所有</div>	-->

	</div>
</div>


        		<div mark="stat_code" style="width:0px; height:0px; display:none;">
					</div>
	
<script type="text/javascript">
window.shareData = {
            "moduleName":"AppleGame",
            "moduleID":"<?php echo (intval($_GET['id'])); ?>",
            "imgUrl": "<?php echo ($linfo["starpicurl"]); ?>", 
            "timeLineLink": "<?php echo C('site_url'); echo U('AppleGame/index',array('token'=>$_GET['token'],'id'=>intval($_GET['id'])));?>",
            "sendFriendLink": "<?php echo C('site_url'); echo U('AppleGame/index',array('token'=>$_GET['token'],'id'=>intval($_GET['id'])));?>",
            "weiboLink": "<?php echo C('site_url'); echo U('AppleGame/index',array('token'=>$_GET['token'],'id'=>intval($_GET['id'])));?>",
            "tTitle": "<?php echo ($linfo["title"]); ?>",
            "tContent": "<?php echo ($linfo["info"]); ?>"
        };
</script>
<?php echo ($shareScript); ?>

<!--5bCP54yqY21z54mI5p2D5omA5pyJ77yM55uX54mI55qE5Y675q27-->

</body></html>