<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限管理</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script type="text/javascript">
	$(function(){
		$('#submit').click(function(){
			var forms=$('#form').serialize();
			$.ajax({
				type:'POST',
				url:'<?php echo U("Node/edit");?>',
				data:forms,
				success:function(msg){
					msg=eval('('+msg+')');
					alert(msg.info);
				}
			});
		})
	});
</script>
</head>
<body class="warp">
<div id="artlist" class="addn">
<form id="form">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="addn">
  <tr>
    <th colspan="4">编辑节点</th>
    </tr>
    <tr> 
      <td height="48" align="right"><strong>归属节点：</strong></td>
      <td>
		<select name="pid" style="width:136px">
			<?php echo ($select_categorys); ?>
		</select>
	  </td>
    </tr>
	<tr> 
      <td  height="48" align="right"><strong>节点名称：</strong></td>
      <td><input type="text" name="title" value="<?php echo ($info["title"]); ?>" class="ipt" size="45" /></td>
    </tr>
    <tr> 
      <td height="48" align="right"><strong>节点名字：</strong></td>
      <td height="48"><input type="text" name="name" value="<?php echo ($info["name"]); ?>" class="ipt" />　<strong>注释：</strong>填写控制器名或方法名。</td>
    </tr>
	<tr> 
      <td height="48" align="right"><strong>节点类型：</strong></td>
      <td height="48">
		<input type="radio" name="level" value="0" class="ipt" <?php if(($info["level"]) == "0"): ?>checked<?php endif; ?> />应用
		<input type="radio" name="level" value="2" class="ipt" <?php if(($info["level"]) == "2"): ?>checked<?php endif; ?> />模块
		<input type="radio" name="level" value="3" class="ipt" <?php if(($info["level"]) == "3"): ?>checked<?php endif; ?> />方法
	  </td>
    </tr>
	<tr> 
      <td height="48" align="right"><strong>显示类型：</strong></td>
      <td height="48">
		<input type="radio" name="display" value="0" class="ipt" <?php if(($info["display"]) == "0"): ?>checked<?php endif; ?> />隐藏
		<input type="radio" name="display" value="1" class="ipt" <?php if(($info["display"]) == "1"): ?>checked<?php endif; ?> />导航显示
		<input type="radio" name="display" value="2" class="ipt" <?php if(($info["display"]) == "2"): ?>checked<?php endif; ?> />菜单显示
	  </td>
	  <input type="hidden" name="dosubmit" />
	  <input type="hidden" name="id" value="<?php echo ($info["id"]); ?>" />
    </tr>
	<tr> 
      <td height="48" align="right"><strong>备注：</strong></td>
      <td height="48"><input type="text" name="remark" size="45" value="<?php echo ($info["remark"]); ?>" class="ipt" /></td>
    </tr>
	<tr> 
      <td height="48" align="right"><strong>排序：</strong></td>
      <td height="48"><input type="text" name="sort" size="45" value="0" class="ipt" /><span>注释：按照升序，值越大越往后。</span></td>
    </tr>
    <tr> 
      <td height="48" colspan="2"><div id="addkey"></div><div class="fabu"><img src="<?php echo RES;?>/images/main/addwz.gif" id="submit" /> <img src="<?php echo RES;?>/images/main/addqx.gif" /></div></td>
    </tr>
</table>
</form>
<br />
<br />
<br />

</div>
</body>
</html>