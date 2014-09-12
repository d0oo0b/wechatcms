<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title><?php echo ($metaTitle); ?></title>
<link rel="stylesheet" type="text/css" href="../tpl/static/research/css/survey.css" media="all">
</head>
<style>
.wrapper{
text-align: center;
}
.content-w1{
background-color: #e4e4e4;
border: 1px solid #939393;
box-shadow: 0 3px 10px rgba(0, 0, 0, 0.4);
}
.content-w2,.content{
border-bottom: 1px solid #939393;
box-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
}
.content-w1,.content-w2{
display: inline-block;
padding: 0px 0px 3px;
border-radius: 6px;
}
.content{
width: 266px;
margin: 0px auto;
padding: 0px 0px 20px;
border-radius: 6px;
}
.title{
font-size: 20px;
padding: 10px 18px 0px;
}
.connect{
width: 100%;
display: block;
margin: 10px 0px;
}
.desc-cont{
text-align: left;
padding: 0 18px;
}
.next-btn{
color: #FFF;
width: 120px;
display: block;
padding: 8px 22px;
font-size: 16px;
margin: 20px auto 0px;
}
.page-url{
margin-top: 30px;
}
</style>
<body>
	<div class="wrapper">
	<img class="bg" src="../tpl/static/research/images/bg.jpg">
	<div style="height: 25px;"></div>
	<div class="content-w1">
		<div class="content-w2">
			<div class="content">
				<div class="title"><?php echo ($research['title']); ?></div>
				<img class="connect" src="../tpl/static/research/images/connect.png">
				<div class="desc-cont"><?php echo ($research['description']); ?></div>
				<?php if($status == 1): ?><a class="next-btn" href="javascript:;" style="text-decoration:none;">活动未开始</a>
				<?php elseif($status == 2): ?>
				<a class="next-btn" href="javascript:;" style="text-decoration:none;">活动已结束</a>
				<?php elseif($status == 3): ?>
				<a class="next-btn" href="<?php echo U('Research/detail', array('reid' => $rid, 'token' => $token, 'wecha_id' => $wecha_id));?>" style="text-decoration:none;">查看我的答案</a>
				<a class="next-btn" href="<?php echo U('Research/lotter', array('reid' => $rid, 'token' => $token, 'wecha_id' => $wecha_id));?>" style="text-decoration:none;">查看获奖情况</a>
				<?php else: ?>
				<a class="next-btn" href="<?php echo U('Research/answer', array('reid' => $rid, 'token' => $token, 'wecha_id' => $wecha_id));?>" style="text-decoration:none;">马上开始</a><?php endif; ?>
			</div>
		</div>
	</div>
	</div>
</body>
</html>