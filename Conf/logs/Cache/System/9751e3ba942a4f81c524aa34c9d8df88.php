<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限管理</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>
</head>
<body class="warp">
<div id="artlist" class="addn">
<?php if(($info["id"]) > "0"): ?><form action="<?php echo U('Case/upsave');?>" method="post" name="form" enctype="multipart/form-data" id="myform">
			<input type="hidden" name="id" value="<?php echo ($info["id"]); ?>">
		<?php else: ?>
			<form action="<?php echo U('Case/insert');?>" method="post" name="form" enctype="multipart/form-data" id="myform"><?php endif; ?>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" id="addn">

				 <tr>
					<th colspan="4"><?php echo ($title); ?></th>
				</tr>
				<tr>
					<td height="48" align="right"><strong>名称：</strong></td>
					<td colspan="3" class="lt">
						<input type="text" name="name" class="ipt" size="45" value="<?php echo ($info["name"]); ?>" />
					</td>
				</tr>
				<tr>
					<td height="48" align="right"><strong>图片：</strong></td>
					<td colspan="3" class="lt">
						<input type="text" class="ipt" id="pic" name="img" value="<?php echo ($info["img"]); ?>" /> <script src="/tpl/static/upyun.js"></script><a href="###" onclick="upyunPicUpload('pic',700,420,'<?php echo ($token); ?>')">上传</a> <a href="###" onclick="viewImg('pic')">预览</a>
					</td>
				</tr>
				<tr>
					<td height="48" align="right"><strong>url地址：</strong></td>
					<td colspan="3" class="lt">
						<input type="url" name="url" class="ipt" value="<?php echo ($info["url"]); ?>" size="45"/>
					</td>
				</tr>
				<tr>
					<td height="48" align="right"><strong>状态：</strong></td>
					<td colspan="3" class="lt">
						<input type="radio" class="radio" class="ipt" value="1" name="status" id="status1" <?php if(($info["status"] == 1) OR ($info['status'] == '') ): ?>checked=""<?php endif; ?> >
							启用
							<input type="radio" class="radio" class="ipt"  value="0" name="status" id="status2" <?php if(($info["status"]) == "0"): ?>checked=""<?php endif; ?> >
							关闭
					</td>
				</tr>
	<tr>
		<td colspan="4">
			<?php if(($info["id"]) > "0"): ?><input class="bginput" type="submit" name="dosubmit" value="修 改" >
				<?php else: ?>
				<input class="bginput" type="submit" name="dosubmit" value="添 加"><?php endif; ?>
			&nbsp;
			<input class="bginput" type="button" onclick="javascript:history.back(-1);" value="返 回" ></td>
	</tr>
</table>
</form>
<br />
<br />
<br />

</div>
</body>
</html>